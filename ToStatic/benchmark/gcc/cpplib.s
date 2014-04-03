	.file	"cpplib.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cpplib.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
.LC0:
	.string	"define"
.LC1:
	.string	"include"
.LC2:
	.string	"endif"
.LC3:
	.string	"ifdef"
.LC4:
	.string	"if"
.LC5:
	.string	"else"
.LC6:
	.string	"ifndef"
.LC7:
	.string	"undef"
.LC8:
	.string	"line"
.LC9:
	.string	"elif"
.LC10:
	.string	"error"
.LC11:
	.string	"pragma"
.LC12:
	.string	"warning"
.LC13:
	.string	"include_next"
.LC14:
	.string	"ident"
.LC15:
	.string	"import"
.LC16:
	.string	"assert"
.LC17:
	.string	"unassert"
.LC18:
	.string	"sccs"
	.align 32
	.type	dtable, @object
	.size	dtable, 456
dtable:
# handler:
	.quad	do_define
# name:
	.quad	.LC0
# length:
	.value	6
# origin:
	.byte	0
# flags:
	.byte	8
	.zero	4
# handler:
	.quad	do_include
# name:
	.quad	.LC1
# length:
	.value	7
# origin:
	.byte	0
# flags:
	.byte	4
	.zero	4
# handler:
	.quad	do_endif
# name:
	.quad	.LC2
# length:
	.value	5
# origin:
	.byte	0
# flags:
	.byte	1
	.zero	4
# handler:
	.quad	do_ifdef
# name:
	.quad	.LC3
# length:
	.value	5
# origin:
	.byte	0
# flags:
	.byte	3
	.zero	4
# handler:
	.quad	do_if
# name:
	.quad	.LC4
# length:
	.value	2
# origin:
	.byte	0
# flags:
	.byte	3
	.zero	4
# handler:
	.quad	do_else
# name:
	.quad	.LC5
# length:
	.value	4
# origin:
	.byte	0
# flags:
	.byte	1
	.zero	4
# handler:
	.quad	do_ifndef
# name:
	.quad	.LC6
# length:
	.value	6
# origin:
	.byte	0
# flags:
	.byte	3
	.zero	4
# handler:
	.quad	do_undef
# name:
	.quad	.LC7
# length:
	.value	5
# origin:
	.byte	0
# flags:
	.byte	8
	.zero	4
# handler:
	.quad	do_line
# name:
	.quad	.LC8
# length:
	.value	4
# origin:
	.byte	0
# flags:
	.byte	0
	.zero	4
# handler:
	.quad	do_elif
# name:
	.quad	.LC9
# length:
	.value	4
# origin:
	.byte	1
# flags:
	.byte	1
	.zero	4
# handler:
	.quad	do_error
# name:
	.quad	.LC10
# length:
	.value	5
# origin:
	.byte	1
# flags:
	.byte	0
	.zero	4
# handler:
	.quad	do_pragma
# name:
	.quad	.LC11
# length:
	.value	6
# origin:
	.byte	1
# flags:
	.byte	8
	.zero	4
# handler:
	.quad	do_warning
# name:
	.quad	.LC12
# length:
	.value	7
# origin:
	.byte	2
# flags:
	.byte	0
	.zero	4
# handler:
	.quad	do_include_next
# name:
	.quad	.LC13
# length:
	.value	12
# origin:
	.byte	2
# flags:
	.byte	4
	.zero	4
# handler:
	.quad	do_ident
# name:
	.quad	.LC14
# length:
	.value	5
# origin:
	.byte	2
# flags:
	.byte	8
	.zero	4
# handler:
	.quad	do_import
# name:
	.quad	.LC15
# length:
	.value	6
# origin:
	.byte	2
# flags:
	.byte	4
	.zero	4
# handler:
	.quad	do_assert
# name:
	.quad	.LC16
# length:
	.value	6
# origin:
	.byte	2
# flags:
	.byte	0
	.zero	4
# handler:
	.quad	do_unassert
# name:
	.quad	.LC17
# length:
	.value	8
# origin:
	.byte	2
# flags:
	.byte	0
	.zero	4
# handler:
	.quad	do_sccs
# name:
	.quad	.LC18
# length:
	.value	4
# origin:
	.byte	2
# flags:
	.byte	0
	.zero	4
.LC19:
	.string	"#"
	.align 16
	.type	linemarker_dir, @object
	.size	linemarker_dir, 24
linemarker_dir:
# handler:
	.quad	do_linemarker
# name:
	.quad	.LC19
# length:
	.value	1
# origin:
	.byte	0
# flags:
	.byte	8
	.zero	4
	.text
	.type	skip_rest_of_line, @function
skip_rest_of_line:
.LFB8:
	.file 1 "cpplib.c"
	.loc 1 211 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 213 0
	jmp	.L2	#
.L3:
	.loc 1 214 0
	movq	-8(%rbp), %rax	# pfile, tmp66
	movq	%rax, %rdi	# tmp66,
	call	_cpp_pop_context	#
.L2:
	.loc 1 213 0 discriminator 1
	movq	-8(%rbp), %rax	# pfile, tmp67
	movq	152(%rax), %rax	# pfile_1(D)->context, D.9176
	movq	-8(%rbp), %rdx	# pfile, tmp68
	addq	$96, %rdx	#, D.9176
	cmpq	%rdx, %rax	# D.9176, D.9176
	jne	.L3	#,
	.loc 1 217 0
	movq	-8(%rbp), %rax	# pfile, tmp69
	movq	192(%rax), %rax	# pfile_1(D)->cur_token, D.9177
	subq	$24, %rax	#, D.9177
	movzbl	6(%rax), %eax	# _5->type, D.9178
	cmpb	$67, %al	#, D.9178
	je	.L1	#,
	.loc 1 218 0
	nop
.L5:
	.loc 1 218 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pfile, tmp70
	movq	%rax, %rdi	# tmp70,
	call	_cpp_lex_token	#
	movzbl	6(%rax), %eax	# _7->type, D.9178
	cmpb	$67, %al	#, D.9178
	jne	.L5	#,
.L1:
	.loc 1 220 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	skip_rest_of_line, .-skip_rest_of_line
	.section	.rodata
	.align 8
.LC20:
	.string	"extra tokens at end of #%s directive"
	.text
	.type	check_eol, @function
check_eol:
.LFB9:
	.loc 1 226 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 227 0
	movq	-8(%rbp), %rax	# pfile, tmp66
	movq	192(%rax), %rax	# pfile_1(D)->cur_token, D.9180
	subq	$24, %rax	#, D.9180
	movzbl	6(%rax), %eax	# _3->type, D.9181
	cmpb	$67, %al	#, D.9181
	je	.L6	#,
	.loc 1 227 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	_cpp_lex_token	#
	movzbl	6(%rax), %eax	# _5->type, D.9181
	cmpb	$67, %al	#, D.9181
	je	.L6	#,
	.loc 1 229 0 is_stmt 1
	movq	-8(%rbp), %rax	# pfile, tmp68
	movq	160(%rax), %rax	# pfile_1(D)->directive, D.9183
	.loc 1 228 0
	movq	8(%rax), %rdx	# _7->name, D.9184
	movq	-8(%rbp), %rax	# pfile, tmp69
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp69,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L6:
	.loc 1 230 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	check_eol, .-check_eol
	.type	start_directive, @function
start_directive:
.LFB10:
	.loc 1 236 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 238 0
	movq	-8(%rbp), %rax	# pfile, tmp60
	movb	$1, 8(%rax)	#, pfile_1(D)->state.in_directive
	.loc 1 239 0
	movq	-8(%rbp), %rax	# pfile, tmp61
	movb	$0, 11(%rax)	#, pfile_1(D)->state.save_comments
	.loc 1 242 0
	movq	-8(%rbp), %rax	# pfile, tmp62
	movl	64(%rax), %edx	# pfile_1(D)->line, D.9186
	movq	-8(%rbp), %rax	# pfile, tmp63
	movl	%edx, 68(%rax)	# D.9186, pfile_1(D)->directive_line
	.loc 1 243 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	start_directive, .-start_directive
	.type	end_directive, @function
end_directive:
.LFB11:
	.loc 1 250 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movl	%esi, -12(%rbp)	# skip_line, skip_line
	.loc 1 252 0
	cmpl	$0, -12(%rbp)	#, skip_line
	je	.L10	#,
	.loc 1 254 0
	movq	-8(%rbp), %rax	# pfile, tmp65
	movq	%rax, %rdi	# tmp65,
	call	skip_rest_of_line	#
	.loc 1 255 0
	movq	-8(%rbp), %rax	# pfile, tmp66
	movl	244(%rax), %eax	# pfile_2(D)->keep_tokens, D.9187
	testl	%eax, %eax	# D.9187
	jne	.L10	#,
	.loc 1 257 0
	movq	-8(%rbp), %rax	# pfile, tmp67
	leaq	200(%rax), %rdx	#, D.9188
	movq	-8(%rbp), %rax	# pfile, tmp68
	movq	%rdx, 232(%rax)	# D.9188, pfile_2(D)->cur_run
	.loc 1 258 0
	movq	-8(%rbp), %rax	# pfile, tmp69
	movq	216(%rax), %rdx	# pfile_2(D)->base_run.base, D.9189
	movq	-8(%rbp), %rax	# pfile, tmp70
	movq	%rdx, 192(%rax)	# D.9189, pfile_2(D)->cur_token
.L10:
	.loc 1 263 0
	movq	-8(%rbp), %rax	# pfile, tmp71
	movzbl	745(%rax), %eax	# pfile_2(D)->opts.discard_comments, D.9190
	testb	%al, %al	# D.9190
	sete	%al	#, D.9191
	movl	%eax, %edx	# D.9191, D.9190
	movq	-8(%rbp), %rax	# pfile, tmp72
	movb	%dl, 11(%rax)	# D.9190, pfile_2(D)->state.save_comments
	.loc 1 264 0
	movq	-8(%rbp), %rax	# pfile, tmp73
	movb	$0, 8(%rax)	#, pfile_2(D)->state.in_directive
	.loc 1 265 0
	movq	-8(%rbp), %rax	# pfile, tmp74
	movb	$0, 10(%rax)	#, pfile_2(D)->state.angled_headers
	.loc 1 266 0
	movq	-8(%rbp), %rax	# pfile, tmp75
	movq	$0, 160(%rax)	#, pfile_2(D)->directive
	.loc 1 267 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	end_directive, .-end_directive
	.section	.rodata
.LC21:
	.string	"#%s is a GCC extension"
	.align 8
.LC22:
	.string	"suggest not using #elif in traditional C"
	.align 8
.LC23:
	.string	"traditional C ignores #%s with the # indented"
	.align 8
.LC24:
	.string	"suggest hiding #%s from traditional C with an indented #"
	.text
	.type	directive_diagnostics, @function
directive_diagnostics:
.LFB12:
	.loc 1 276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# dir, dir
	movl	%edx, -20(%rbp)	# indented, indented
	.loc 1 278 0
	movq	-8(%rbp), %rax	# pfile, tmp68
	movzbl	770(%rax), %eax	# pfile_1(D)->opts.pedantic, D.9192
	testb	%al, %al	# D.9192
	je	.L12	#,
	.loc 1 279 0
	movq	-8(%rbp), %rax	# pfile, tmp69
	movzbl	9(%rax), %eax	# pfile_1(D)->state.skipping, D.9192
	testb	%al, %al	# D.9192
	jne	.L12	#,
	.loc 1 280 0
	movq	-16(%rbp), %rax	# dir, tmp70
	movzbl	18(%rax), %eax	# dir_4(D)->origin, D.9192
	cmpb	$2, %al	#, D.9192
	jne	.L12	#,
	.loc 1 281 0
	movq	-16(%rbp), %rax	# dir, tmp71
	movq	8(%rax), %rdx	# dir_4(D)->name, D.9193
	movq	-8(%rbp), %rax	# pfile, tmp72
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp72,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L12:
	.loc 1 289 0
	movq	-8(%rbp), %rax	# pfile, tmp73
	movzbl	761(%rax), %eax	# pfile_1(D)->opts.warn_traditional, D.9192
	testb	%al, %al	# D.9192
	je	.L11	#,
	.loc 1 291 0
	cmpq	$dtable+216, -16(%rbp)	#, dir
	jne	.L14	#,
	.loc 1 292 0
	movq	-8(%rbp), %rax	# pfile, tmp74
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	cpp_warning	#
	jmp	.L11	#
.L14:
	.loc 1 293 0
	cmpl	$0, -20(%rbp)	#, indented
	je	.L15	#,
	.loc 1 293 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# dir, tmp75
	movzbl	18(%rax), %eax	# dir_4(D)->origin, D.9192
	testb	%al, %al	# D.9192
	jne	.L15	#,
	.loc 1 294 0 is_stmt 1
	movq	-16(%rbp), %rax	# dir, tmp76
	movq	8(%rax), %rdx	# dir_4(D)->name, D.9193
	movq	-8(%rbp), %rax	# pfile, tmp77
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp77,
	movl	$0, %eax	#,
	call	cpp_warning	#
	jmp	.L11	#
.L15:
	.loc 1 297 0
	cmpl	$0, -20(%rbp)	#, indented
	jne	.L11	#,
	.loc 1 297 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# dir, tmp78
	movzbl	18(%rax), %eax	# dir_4(D)->origin, D.9192
	testb	%al, %al	# D.9192
	je	.L11	#,
	.loc 1 298 0 is_stmt 1
	movq	-16(%rbp), %rax	# dir, tmp79
	movq	8(%rax), %rdx	# dir_4(D)->name, D.9193
	movq	-8(%rbp), %rax	# pfile, tmp80
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp80,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L11:
	.loc 1 302 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	directive_diagnostics, .-directive_diagnostics
	.section	.rodata
	.align 8
.LC25:
	.string	"style of line directive is a GCC extension"
	.align 8
.LC26:
	.string	"invalid preprocessing directive #%s"
	.text
	.globl	_cpp_handle_directive
	.type	_cpp_handle_directive, @function
_cpp_handle_directive:
.LFB13:
	.loc 1 313 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movl	%esi, -44(%rbp)	# indented, indented
	.loc 1 314 0
	movq	$0, -16(%rbp)	#, dir
	.loc 1 316 0
	movl	$1, -20(%rbp)	#, skip
	.loc 1 318 0
	movq	-40(%rbp), %rax	# pfile, tmp93
	movq	%rax, %rdi	# tmp93,
	call	start_directive	#
	.loc 1 319 0
	movq	-40(%rbp), %rax	# pfile, tmp94
	movq	%rax, %rdi	# tmp94,
	call	_cpp_lex_token	#
	movq	%rax, -8(%rbp)	# tmp95, dname
	.loc 1 321 0
	movq	-8(%rbp), %rax	# dname, tmp96
	movzbl	6(%rax), %eax	# dname_10->type, D.9198
	cmpb	$56, %al	#, D.9198
	jne	.L17	#,
	.loc 1 323 0
	movq	-8(%rbp), %rax	# dname, tmp97
	movq	8(%rax), %rax	# dname_10->val.node, D.9199
	movzbl	18(%rax), %eax	# _12->directive_index, D.9198
	testb	%al, %al	# D.9198
	je	.L19	#,
	.loc 1 324 0
	movq	-8(%rbp), %rax	# dname, tmp98
	movq	8(%rax), %rax	# dname_10->val.node, D.9199
	movzbl	18(%rax), %eax	# _14->directive_index, D.9198
	movzbl	%al, %eax	# D.9198, D.9200
	subl	$1, %eax	#, D.9200
	movslq	%eax, %rdx	# D.9200, tmp99
	movq	%rdx, %rax	# tmp99, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp99, tmp100
	salq	$3, %rax	#, tmp101
	addq	$dtable, %rax	#, tmp102
	movq	%rax, -16(%rbp)	# tmp102, dir
	jmp	.L19	#
.L17:
	.loc 1 328 0
	movq	-8(%rbp), %rax	# dname, tmp103
	movzbl	6(%rax), %eax	# dname_10->type, D.9198
	cmpb	$57, %al	#, D.9198
	jne	.L19	#,
	.loc 1 328 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp104
	movl	736(%rax), %eax	# pfile_9(D)->opts.lang, D.9201
	cmpl	$9, %eax	#, D.9201
	je	.L19	#,
	.loc 1 330 0 is_stmt 1
	movq	$linemarker_dir, -16(%rbp)	#, dir
	.loc 1 331 0
	movq	-40(%rbp), %rax	# pfile, tmp105
	movzbl	770(%rax), %eax	# pfile_9(D)->opts.pedantic, D.9198
	testb	%al, %al	# D.9198
	je	.L19	#,
	.loc 1 331 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp106
	movzbl	771(%rax), %eax	# pfile_9(D)->opts.preprocessed, D.9198
	testb	%al, %al	# D.9198
	jne	.L19	#,
	.loc 1 332 0 is_stmt 1
	movq	-40(%rbp), %rax	# pfile, tmp107
	movzbl	9(%rax), %eax	# pfile_9(D)->state.skipping, D.9198
	testb	%al, %al	# D.9198
	jne	.L19	#,
	.loc 1 333 0
	movq	-40(%rbp), %rax	# pfile, tmp108
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L19:
	.loc 1 336 0
	cmpq	$0, -16(%rbp)	#, dir
	je	.L20	#,
	.loc 1 340 0
	movq	-16(%rbp), %rax	# dir, tmp109
	movzbl	19(%rax), %eax	# dir_2->flags, D.9198
	movzbl	%al, %eax	# D.9198, D.9200
	andl	$2, %eax	#, D.9200
	testl	%eax, %eax	# D.9200
	jne	.L21	#,
	.loc 1 341 0
	movq	-40(%rbp), %rax	# pfile, tmp110
	movb	$0, 184(%rax)	#, pfile_9(D)->mi_valid
.L21:
	.loc 1 352 0
	movq	-40(%rbp), %rax	# pfile, tmp111
	movzbl	771(%rax), %eax	# pfile_9(D)->opts.preprocessed, D.9198
	testb	%al, %al	# D.9198
	je	.L22	#,
	.loc 1 353 0
	cmpl	$0, -44(%rbp)	#, indented
	jne	.L23	#,
	.loc 1 353 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# dir, tmp112
	movzbl	19(%rax), %eax	# dir_2->flags, D.9198
	movzbl	%al, %eax	# D.9198, D.9200
	andl	$8, %eax	#, D.9200
	testl	%eax, %eax	# D.9200
	jne	.L22	#,
.L23:
	.loc 1 355 0 is_stmt 1
	movl	$0, -20(%rbp)	#, skip
	.loc 1 356 0
	movq	$0, -16(%rbp)	#, dir
	jmp	.L26	#
.L22:
	.loc 1 364 0
	movq	-16(%rbp), %rax	# dir, tmp113
	movzbl	19(%rax), %eax	# dir_2->flags, D.9198
	andl	$4, %eax	#, D.9198
	movl	%eax, %edx	# D.9198, D.9198
	movq	-40(%rbp), %rax	# pfile, tmp114
	movb	%dl, 10(%rax)	# D.9198, pfile_9(D)->state.angled_headers
	.loc 1 365 0
	movq	-40(%rbp), %rax	# pfile, tmp115
	movzbl	771(%rax), %eax	# pfile_9(D)->opts.preprocessed, D.9198
	testb	%al, %al	# D.9198
	jne	.L25	#,
	.loc 1 366 0
	movl	-44(%rbp), %edx	# indented, tmp116
	movq	-16(%rbp), %rcx	# dir, tmp117
	movq	-40(%rbp), %rax	# pfile, tmp118
	movq	%rcx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	directive_diagnostics	#
.L25:
	.loc 1 367 0
	movq	-40(%rbp), %rax	# pfile, tmp119
	movzbl	9(%rax), %eax	# pfile_9(D)->state.skipping, D.9198
	testb	%al, %al	# D.9198
	je	.L26	#,
	.loc 1 367 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# dir, tmp120
	movzbl	19(%rax), %eax	# dir_2->flags, D.9198
	movzbl	%al, %eax	# D.9198, D.9200
	andl	$1, %eax	#, D.9200
	testl	%eax, %eax	# D.9200
	jne	.L26	#,
	.loc 1 368 0 is_stmt 1
	movq	$0, -16(%rbp)	#, dir
	jmp	.L26	#
.L20:
	.loc 1 371 0
	movq	-8(%rbp), %rax	# dname, tmp121
	movzbl	6(%rax), %eax	# dname_10->type, D.9198
	cmpb	$67, %al	#, D.9198
	je	.L26	#,
	.loc 1 379 0
	movq	-40(%rbp), %rax	# pfile, tmp122
	movl	736(%rax), %eax	# pfile_9(D)->opts.lang, D.9201
	cmpl	$9, %eax	#, D.9201
	jne	.L27	#,
	.loc 1 380 0
	movl	$0, -20(%rbp)	#, skip
	jmp	.L26	#
.L27:
	.loc 1 381 0
	movq	-40(%rbp), %rax	# pfile, tmp123
	movzbl	9(%rax), %eax	# pfile_9(D)->state.skipping, D.9198
	testb	%al, %al	# D.9198
	jne	.L26	#,
	.loc 1 382 0
	movq	-8(%rbp), %rdx	# dname, tmp124
	movq	-40(%rbp), %rax	# pfile, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9202
	movq	-40(%rbp), %rax	# pfile, tmp126
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp126,
	movl	$0, %eax	#,
	call	cpp_error	#
.L26:
	.loc 1 386 0
	cmpq	$0, -16(%rbp)	#, dir
	je	.L28	#,
	.loc 1 388 0
	movq	-40(%rbp), %rax	# pfile, tmp127
	movq	-16(%rbp), %rdx	# dir, tmp128
	movq	%rdx, 160(%rax)	# tmp128, pfile_9(D)->directive
	.loc 1 389 0
	movq	-40(%rbp), %rax	# pfile, tmp129
	movq	160(%rax), %rax	# pfile_9(D)->directive, D.9203
	movq	(%rax), %rax	# _48->handler, D.9204
	movq	-40(%rbp), %rdx	# pfile, tmp130
	movq	%rdx, %rdi	# tmp130,
	call	*%rax	# D.9204
	jmp	.L29	#
.L28:
	.loc 1 391 0
	cmpl	$0, -20(%rbp)	#, skip
	jne	.L29	#,
	.loc 1 392 0
	movq	-40(%rbp), %rax	# pfile, tmp131
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	_cpp_backup_tokens	#
.L29:
	.loc 1 394 0
	movl	-20(%rbp), %edx	# skip, tmp132
	movq	-40(%rbp), %rax	# pfile, tmp133
	movl	%edx, %esi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	end_directive	#
	.loc 1 395 0
	movl	-20(%rbp), %eax	# skip, D.9200
	.loc 1 396 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_cpp_handle_directive, .-_cpp_handle_directive
	.type	run_directive, @function
run_directive:
.LFB14:
	.loc 1 406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movl	%esi, -12(%rbp)	# dir_no, dir_no
	movq	%rdx, -24(%rbp)	# buf, buf
	movq	%rcx, -32(%rbp)	# count, count
	.loc 1 407 0
	movq	-32(%rbp), %rdx	# count, tmp63
	movq	-24(%rbp), %rsi	# buf, tmp64
	movq	-8(%rbp), %rax	# pfile, tmp65
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp65,
	call	cpp_push_buffer	#
	.loc 1 409 0
	movq	-8(%rbp), %rax	# pfile, tmp66
	movq	%rax, %rdi	# tmp66,
	call	start_directive	#
	.loc 1 411 0
	movq	-8(%rbp), %rax	# pfile, tmp67
	movq	(%rax), %rax	# pfile_1(D)->buffer, D.9207
	movb	$0, 68(%rax)	#, _4->saved_flags
	.loc 1 412 0
	movl	-12(%rbp), %eax	# dir_no, tmp69
	movslq	%eax, %rdx	# tmp69, tmp68
	movq	%rdx, %rax	# tmp68, tmp70
	addq	%rax, %rax	# tmp70
	addq	%rdx, %rax	# tmp68, tmp70
	salq	$3, %rax	#, tmp71
	leaq	dtable(%rax), %rdx	#, D.9208
	movq	-8(%rbp), %rax	# pfile, tmp72
	movq	%rdx, 160(%rax)	# D.9208, pfile_1(D)->directive
	.loc 1 413 0
	movq	-8(%rbp), %rax	# pfile, tmp73
	movq	160(%rax), %rax	# pfile_1(D)->directive, D.9209
	movq	(%rax), %rax	# _7->handler, D.9210
	movq	-8(%rbp), %rdx	# pfile, tmp74
	movq	%rdx, %rdi	# tmp74,
	call	*%rax	# D.9210
	.loc 1 414 0
	movq	-8(%rbp), %rax	# pfile, tmp75
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	end_directive	#
	.loc 1 415 0
	movq	-8(%rbp), %rax	# pfile, tmp76
	movq	%rax, %rdi	# tmp76,
	call	_cpp_pop_buffer	#
	.loc 1 416 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	run_directive, .-run_directive
	.section	.rodata
	.align 8
.LC27:
	.string	"no macro name given in #%s directive"
	.align 8
.LC28:
	.string	"\"%s\" cannot be used as a macro name as it is an operator in C++"
	.align 8
.LC29:
	.string	"macro names must be identifiers"
	.align 8
.LC30:
	.string	"\"%s\" cannot be used as a macro name"
	.text
	.type	lex_macro_node, @function
lex_macro_node:
.LFB15:
	.loc 1 423 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 425 0
	movq	-24(%rbp), %rax	# pfile, tmp75
	movq	%rax, %rdi	# tmp75,
	call	_cpp_lex_token	#
	movq	%rax, -16(%rbp)	# tmp76, token
	.loc 1 434 0
	movq	-16(%rbp), %rax	# token, tmp77
	movzbl	6(%rax), %eax	# token_3->type, D.9212
	cmpb	$56, %al	#, D.9212
	je	.L33	#,
	.loc 1 436 0
	movq	-16(%rbp), %rax	# token, tmp78
	movzbl	6(%rax), %eax	# token_3->type, D.9212
	cmpb	$67, %al	#, D.9212
	jne	.L34	#,
	.loc 1 438 0
	movq	-24(%rbp), %rax	# pfile, tmp79
	movq	160(%rax), %rax	# pfile_2(D)->directive, D.9213
	.loc 1 437 0
	movq	8(%rax), %rdx	# _6->name, D.9214
	movq	-24(%rbp), %rax	# pfile, tmp80
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp80,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L35	#
.L34:
	.loc 1 439 0
	movq	-16(%rbp), %rax	# token, tmp81
	movzbl	7(%rax), %eax	# token_3->flags, D.9212
	movzbl	%al, %eax	# D.9212, D.9215
	andl	$16, %eax	#, D.9215
	testl	%eax, %eax	# D.9215
	je	.L36	#,
	.loc 1 442 0
	movq	-16(%rbp), %rax	# token, tmp82
	movq	8(%rax), %rax	# token_3->val.node, D.9211
	.loc 1 440 0
	movq	8(%rax), %rdx	# _11->ident.str, D.9216
	movq	-24(%rbp), %rax	# pfile, tmp83
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp83,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L35	#
.L36:
	.loc 1 444 0
	movq	-24(%rbp), %rax	# pfile, tmp84
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp84,
	movl	$0, %eax	#,
	call	cpp_error	#
.L35:
	.loc 1 446 0
	movl	$0, %eax	#, D.9211
	jmp	.L37	#
.L33:
	.loc 1 449 0
	movq	-16(%rbp), %rax	# token, tmp85
	movq	8(%rax), %rax	# token_3->val.node, tmp86
	movq	%rax, -8(%rbp)	# tmp86, node
	.loc 1 450 0
	movq	-8(%rbp), %rax	# node, tmp87
	movzbl	21(%rax), %eax	# node_14->flags, D.9212
	movzbl	%al, %eax	# D.9212, D.9215
	andl	$2, %eax	#, D.9215
	testl	%eax, %eax	# D.9215
	je	.L38	#,
	.loc 1 451 0
	movl	$0, %eax	#, D.9211
	jmp	.L37	#
.L38:
	.loc 1 453 0
	movq	-24(%rbp), %rax	# pfile, tmp88
	movq	784(%rax), %rax	# pfile_2(D)->spec_nodes.n_defined, D.9211
	cmpq	-8(%rbp), %rax	# node, D.9211
	jne	.L39	#,
	.loc 1 455 0
	movq	-8(%rbp), %rax	# node, tmp89
	movq	8(%rax), %rdx	# node_14->ident.str, D.9216
	movq	-24(%rbp), %rax	# pfile, tmp90
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 457 0
	movl	$0, %eax	#, D.9211
	jmp	.L37	#
.L39:
	.loc 1 460 0
	movq	-8(%rbp), %rax	# node, D.9211
.L37:
	.loc 1 461 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	lex_macro_node, .-lex_macro_node
	.type	do_define, @function
do_define:
.LFB16:
	.loc 1 467 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 468 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movq	%rax, %rdi	# tmp63,
	call	lex_macro_node	#
	movq	%rax, -8(%rbp)	# tmp64, node
	.loc 1 470 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L40	#,
	.loc 1 472 0
	movq	-8(%rbp), %rdx	# node, tmp65
	movq	-24(%rbp), %rax	# pfile, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	_cpp_create_definition	#
	testl	%eax, %eax	# D.9221
	je	.L40	#,
	.loc 1 473 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	608(%rax), %rax	# pfile_1(D)->cb.define, D.9222
	testq	%rax, %rax	# D.9222
	je	.L40	#,
	.loc 1 474 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movq	608(%rax), %rax	# pfile_1(D)->cb.define, D.9222
	movq	-24(%rbp), %rdx	# pfile, tmp69
	movl	68(%rdx), %esi	# pfile_1(D)->directive_line, D.9223
	movq	-8(%rbp), %rdx	# node, tmp70
	movq	-24(%rbp), %rcx	# pfile, tmp71
	movq	%rcx, %rdi	# tmp71,
	call	*%rax	# D.9222
.L40:
	.loc 1 476 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	do_define, .-do_define
	.section	.rodata
.LC31:
	.string	"undefining \"%s\""
	.text
	.type	do_undef, @function
do_undef:
.LFB17:
	.loc 1 482 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 483 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	lex_macro_node	#
	movq	%rax, -8(%rbp)	# tmp68, node
	.loc 1 487 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L43	#,
	.loc 1 487 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# node, tmp69
	movzbl	20(%rax), %eax	# node_2->type, D.9224
	cmpb	$1, %al	#, D.9224
	jne	.L43	#,
	.loc 1 489 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp70
	movq	616(%rax), %rax	# pfile_1(D)->cb.undef, D.9225
	testq	%rax, %rax	# D.9225
	je	.L44	#,
	.loc 1 490 0
	movq	-24(%rbp), %rax	# pfile, tmp71
	movq	616(%rax), %rax	# pfile_1(D)->cb.undef, D.9225
	movq	-24(%rbp), %rdx	# pfile, tmp72
	movl	68(%rdx), %esi	# pfile_1(D)->directive_line, D.9226
	movq	-8(%rbp), %rdx	# node, tmp73
	movq	-24(%rbp), %rcx	# pfile, tmp74
	movq	%rcx, %rdi	# tmp74,
	call	*%rax	# D.9225
.L44:
	.loc 1 492 0
	movq	-8(%rbp), %rax	# node, tmp75
	movzbl	21(%rax), %eax	# node_2->flags, D.9224
	movzbl	%al, %eax	# D.9224, D.9227
	andl	$16, %eax	#, D.9227
	testl	%eax, %eax	# D.9227
	je	.L45	#,
	.loc 1 493 0
	movq	-8(%rbp), %rax	# node, tmp76
	movq	8(%rax), %rdx	# node_2->ident.str, D.9228
	movq	-24(%rbp), %rax	# pfile, tmp77
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp77,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L45:
	.loc 1 495 0
	movq	-8(%rbp), %rax	# node, tmp78
	movq	%rax, %rdi	# tmp78,
	call	_cpp_free_definition	#
.L43:
	.loc 1 497 0
	movq	-24(%rbp), %rax	# pfile, tmp79
	movq	%rax, %rdi	# tmp79,
	call	check_eol	#
	.loc 1 498 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	do_undef, .-do_undef
	.section	.rodata
	.align 8
.LC32:
	.string	"missing terminating > character"
	.text
	.type	glue_header_name, @function
glue_header_name:
.LFB18:
	.loc 1 506 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# pfile, pfile
	.loc 1 507 0
	movq	$0, -56(%rbp)	#, header
	.loc 1 510 0
	movq	$0, -40(%rbp)	#, total_len
	movq	$1024, -32(%rbp)	#, capacity
	.loc 1 514 0
	movq	-32(%rbp), %rax	# capacity, tmp80
	movq	%rax, %rdi	# tmp80,
	call	xmalloc	#
	movq	%rax, -48(%rbp)	# tmp81, buffer
.L50:
	.loc 1 517 0
	movq	-72(%rbp), %rax	# pfile, tmp82
	movq	%rax, %rdi	# tmp82,
	call	cpp_get_token	#
	movq	%rax, -24(%rbp)	# tmp83, token
	.loc 1 519 0
	movq	-24(%rbp), %rax	# token, tmp84
	movzbl	6(%rax), %eax	# token_13->type, D.9230
	cmpb	$2, %al	#, D.9230
	je	.L47	#,
	.loc 1 519 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# token, tmp85
	movzbl	6(%rax), %eax	# token_13->type, D.9230
	cmpb	$67, %al	#, D.9230
	je	.L47	#,
	.loc 1 522 0 is_stmt 1
	movq	-24(%rbp), %rax	# token, tmp86
	movq	%rax, %rdi	# tmp86,
	call	cpp_token_len	#
	movl	%eax, %eax	# D.9231, tmp122
	movq	%rax, -16(%rbp)	# tmp122, len
	.loc 1 523 0
	movq	-16(%rbp), %rax	# len, tmp87
	movq	-40(%rbp), %rdx	# total_len, tmp88
	addq	%rdx, %rax	# tmp88, D.9232
	cmpq	-32(%rbp), %rax	# capacity, D.9232
	jbe	.L48	#,
	.loc 1 525 0
	movq	-16(%rbp), %rax	# len, tmp89
	movq	-32(%rbp), %rdx	# capacity, tmp90
	addq	%rdx, %rax	# tmp90, D.9232
	addq	%rax, %rax	# tmp91
	movq	%rax, -32(%rbp)	# tmp91, capacity
	.loc 1 526 0
	movq	-32(%rbp), %rdx	# capacity, tmp92
	movq	-48(%rbp), %rax	# buffer, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	xrealloc	#
	movq	%rax, -48(%rbp)	# tmp94, buffer
.L48:
	.loc 1 529 0
	movq	-24(%rbp), %rax	# token, tmp95
	movzbl	7(%rax), %eax	# token_13->flags, D.9230
	movzbl	%al, %eax	# D.9230, D.9233
	andl	$1, %eax	#, D.9233
	testl	%eax, %eax	# D.9233
	je	.L49	#,
	.loc 1 530 0
	movq	-40(%rbp), %rax	# total_len, total_len.0
	leaq	1(%rax), %rdx	#, tmp96
	movq	%rdx, -40(%rbp)	# tmp96, total_len
	movq	-48(%rbp), %rdx	# buffer, tmp97
	addq	%rdx, %rax	# tmp97, D.9234
	movb	$32, (%rax)	#, *_27
.L49:
	.loc 1 532 0
	movq	-40(%rbp), %rax	# total_len, tmp98
	movq	-48(%rbp), %rdx	# buffer, tmp99
	addq	%rax, %rdx	# tmp98, D.9234
	movq	-24(%rbp), %rcx	# token, tmp100
	movq	-72(%rbp), %rax	# pfile, tmp101
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	cpp_spell_token	#
	movq	%rax, %rdx	# D.9234, D.9235
	movq	-48(%rbp), %rax	# buffer, buffer.1
	subq	%rax, %rdx	# buffer.1, D.9235
	movq	%rdx, %rax	# D.9235, D.9235
	movq	%rax, -40(%rbp)	# D.9235, total_len
	.loc 1 533 0
	jmp	.L50	#
.L47:
	.loc 1 535 0
	movq	-24(%rbp), %rax	# token, tmp102
	movzbl	6(%rax), %eax	# token_13->type, D.9230
	cmpb	$67, %al	#, D.9230
	jne	.L51	#,
	.loc 1 536 0
	movq	-72(%rbp), %rax	# pfile, tmp103
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L52	#
.L51:
.LBB2:
	.loc 1 539 0
	movq	-40(%rbp), %rax	# total_len, tmp104
	leaq	1(%rax), %rdx	#, D.9232
	movq	-72(%rbp), %rax	# pfile, tmp105
	movq	%rdx, %rsi	# D.9232,
	movq	%rax, %rdi	# tmp105,
	call	_cpp_unaligned_alloc	#
	movq	%rax, -8(%rbp)	# tmp106, token_mem
	.loc 1 540 0
	movq	-40(%rbp), %rdx	# total_len, tmp107
	movq	-48(%rbp), %rcx	# buffer, tmp108
	movq	-8(%rbp), %rax	# token_mem, tmp109
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	memcpy	#
	.loc 1 541 0
	movq	-40(%rbp), %rax	# total_len, tmp110
	movq	-8(%rbp), %rdx	# token_mem, tmp111
	addq	%rdx, %rax	# tmp111, D.9234
	movb	$0, (%rax)	#, *_37
	.loc 1 543 0
	movq	-72(%rbp), %rax	# pfile, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_cpp_temp_token	#
	movq	%rax, -56(%rbp)	# tmp113, header
	.loc 1 544 0
	movq	-56(%rbp), %rax	# header, tmp114
	movb	$63, 6(%rax)	#, header_38->type
	.loc 1 545 0
	movq	-56(%rbp), %rax	# header, tmp115
	movb	$0, 7(%rax)	#, header_38->flags
	.loc 1 546 0
	movq	-40(%rbp), %rax	# total_len, tmp116
	movl	%eax, %edx	# tmp116, D.9231
	movq	-56(%rbp), %rax	# header, tmp117
	movl	%edx, 8(%rax)	# D.9231, header_38->val.str.len
	.loc 1 547 0
	movq	-56(%rbp), %rax	# header, tmp118
	movq	-8(%rbp), %rdx	# token_mem, tmp119
	movq	%rdx, 16(%rax)	# tmp119, header_38->val.str.text
.L52:
.LBE2:
	.loc 1 550 0
	movq	-48(%rbp), %rax	# buffer, tmp120
	movq	%rax, %rdi	# tmp120,
	call	free	#
	.loc 1 551 0
	movq	-56(%rbp), %rax	# header, D.9236
	.loc 1 552 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	glue_header_name, .-glue_header_name
	.section	.rodata
.LC33:
	.string	"pragma dependency"
	.align 8
.LC34:
	.string	"#%s expects \"FILENAME\" or <FILENAME>"
.LC35:
	.string	"empty file name in #%s"
	.text
	.type	parse_include, @function
parse_include:
.LFB19:
	.loc 1 559 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 563 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	160(%rax), %rax	# pfile_4(D)->directive, D.9239
	cmpq	$dtable+264, %rax	#, D.9239
	jne	.L55	#,
	.loc 1 564 0
	movq	$.LC33, -16(%rbp)	#, dir
	jmp	.L56	#
.L55:
	.loc 1 566 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movq	160(%rax), %rax	# pfile_4(D)->directive, D.9239
	movq	8(%rax), %rax	# _7->name, tmp69
	movq	%rax, -16(%rbp)	# tmp69, dir
.L56:
	.loc 1 569 0
	movq	-24(%rbp), %rax	# pfile, tmp70
	movq	%rax, %rdi	# tmp70,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp71, header
	.loc 1 570 0
	movq	-8(%rbp), %rax	# header, tmp72
	movzbl	6(%rax), %eax	# header_9->type, D.9240
	cmpb	$61, %al	#, D.9240
	je	.L57	#,
	.loc 1 570 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# header, tmp73
	movzbl	6(%rax), %eax	# header_9->type, D.9240
	cmpb	$63, %al	#, D.9240
	je	.L57	#,
	.loc 1 572 0 is_stmt 1
	movq	-8(%rbp), %rax	# header, tmp74
	movzbl	6(%rax), %eax	# header_9->type, D.9240
	cmpb	$3, %al	#, D.9240
	je	.L58	#,
	.loc 1 574 0
	movq	-16(%rbp), %rdx	# dir, tmp75
	movq	-24(%rbp), %rax	# pfile, tmp76
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp76,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 575 0
	movl	$0, %eax	#, D.9238
	jmp	.L59	#
.L58:
	.loc 1 578 0
	movq	-24(%rbp), %rax	# pfile, tmp77
	movq	%rax, %rdi	# tmp77,
	call	glue_header_name	#
	movq	%rax, -8(%rbp)	# tmp78, header
	.loc 1 579 0
	cmpq	$0, -8(%rbp)	#, header
	jne	.L57	#,
	.loc 1 580 0
	movq	-8(%rbp), %rax	# header, D.9238
	jmp	.L59	#
.L57:
	.loc 1 583 0
	movq	-8(%rbp), %rax	# header, tmp79
	movl	8(%rax), %eax	# header_2->val.str.len, D.9241
	testl	%eax, %eax	# D.9241
	jne	.L60	#,
	.loc 1 585 0
	movq	-16(%rbp), %rdx	# dir, tmp80
	movq	-24(%rbp), %rax	# pfile, tmp81
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp81,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 586 0
	movl	$0, %eax	#, D.9238
	jmp	.L59	#
.L60:
	.loc 1 589 0
	movq	-8(%rbp), %rax	# header, D.9238
.L59:
	.loc 1 590 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	parse_include, .-parse_include
	.section	.rodata
	.align 8
.LC36:
	.string	"#include_next in primary source file"
	.align 8
.LC37:
	.string	"#import is obsolete, use an #ifndef wrapper in the header file"
.LC38:
	.string	"#include nested too deeply"
	.text
	.type	do_include_common, @function
do_include_common:
.LFB20:
	.loc 1 597 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movl	%esi, -28(%rbp)	# type, type
	.loc 1 602 0
	cmpl	$1, -28(%rbp)	#, type
	jne	.L62	#,
	.loc 1 602 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pfile, tmp68
	movq	(%rax), %rax	# pfile_3(D)->buffer, D.9245
	movq	32(%rax), %rax	# _4->prev, D.9246
	testq	%rax, %rax	# D.9246
	jne	.L62	#,
	.loc 1 604 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp69
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp69,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 1 605 0
	movl	$0, -28(%rbp)	#, type
	jmp	.L63	#
.L62:
	.loc 1 607 0
	cmpl	$2, -28(%rbp)	#, type
	jne	.L63	#,
	.loc 1 607 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pfile, tmp70
	movzbl	760(%rax), %eax	# pfile_3(D)->opts.warn_import, D.9247
	testb	%al, %al	# D.9247
	je	.L63	#,
	.loc 1 609 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp71
	movb	$0, 760(%rax)	#, pfile_3(D)->opts.warn_import
	.loc 1 610 0
	movq	-24(%rbp), %rax	# pfile, tmp72
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# tmp72,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L63:
	.loc 1 614 0
	movq	-24(%rbp), %rax	# pfile, tmp73
	movq	%rax, %rdi	# tmp73,
	call	parse_include	#
	movq	%rax, -8(%rbp)	# tmp74, header
	.loc 1 615 0
	cmpq	$0, -8(%rbp)	#, header
	je	.L61	#,
	.loc 1 618 0
	movq	-24(%rbp), %rax	# pfile, tmp75
	movl	44(%rax), %eax	# pfile_3(D)->line_maps.depth, D.9248
	cmpl	$199, %eax	#, D.9248
	jbe	.L65	#,
	.loc 1 619 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp76,
	movl	$0, %eax	#,
	call	cpp_fatal	#
	jmp	.L61	#
.L65:
	.loc 1 622 0
	movq	-24(%rbp), %rax	# pfile, tmp77
	movq	%rax, %rdi	# tmp77,
	call	check_eol	#
	.loc 1 624 0
	movq	-24(%rbp), %rax	# pfile, tmp78
	movq	%rax, %rdi	# tmp78,
	call	skip_rest_of_line	#
	.loc 1 625 0
	movq	-24(%rbp), %rax	# pfile, tmp79
	movq	600(%rax), %rax	# pfile_3(D)->cb.include, D.9249
	testq	%rax, %rax	# D.9249
	je	.L66	#,
	.loc 1 626 0
	movq	-24(%rbp), %rax	# pfile, tmp80
	movq	600(%rax), %rax	# pfile_3(D)->cb.include, D.9249
	.loc 1 627 0
	movq	-24(%rbp), %rdx	# pfile, tmp81
	movq	160(%rdx), %rdx	# pfile_3(D)->directive, D.9250
	movq	8(%rdx), %rdx	# _12->name, D.9251
	.loc 1 626 0
	movq	-24(%rbp), %rcx	# pfile, tmp82
	movl	68(%rcx), %esi	# pfile_3(D)->directive_line, D.9248
	movq	-8(%rbp), %rcx	# header, tmp83
	movq	-24(%rbp), %rdi	# pfile, tmp84
	call	*%rax	# D.9249
.L66:
	.loc 1 629 0
	movl	-28(%rbp), %edx	# type, tmp85
	movq	-8(%rbp), %rcx	# header, tmp86
	movq	-24(%rbp), %rax	# pfile, tmp87
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	_cpp_execute_include	#
.L61:
	.loc 1 632 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	do_include_common, .-do_include_common
	.type	do_include, @function
do_include:
.LFB21:
	.loc 1 637 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 638 0
	movq	-8(%rbp), %rax	# pfile, tmp59
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	do_include_common	#
	.loc 1 639 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	do_include, .-do_include
	.type	do_import, @function
do_import:
.LFB22:
	.loc 1 644 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 645 0
	movq	-8(%rbp), %rax	# pfile, tmp59
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	do_include_common	#
	.loc 1 646 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	do_import, .-do_import
	.type	do_include_next, @function
do_include_next:
.LFB23:
	.loc 1 651 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 652 0
	movq	-8(%rbp), %rax	# pfile, tmp59
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	do_include_common	#
	.loc 1 653 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	do_include_next, .-do_include_next
	.section	.rodata
	.align 8
.LC39:
	.string	"invalid flag \"%s\" in line directive"
	.text
	.type	read_flag, @function
read_flag:
.LFB24:
	.loc 1 663 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movl	%esi, -28(%rbp)	# last, last
	.loc 1 664 0
	movq	-24(%rbp), %rax	# pfile, tmp69
	movq	%rax, %rdi	# tmp69,
	call	_cpp_lex_token	#
	movq	%rax, -8(%rbp)	# tmp70, token
	.loc 1 666 0
	movq	-8(%rbp), %rax	# token, tmp71
	movzbl	6(%rax), %eax	# token_3->type, D.9256
	cmpb	$57, %al	#, D.9256
	jne	.L71	#,
	.loc 1 666 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# token, tmp72
	movl	8(%rax), %eax	# token_3->val.str.len, D.9255
	cmpl	$1, %eax	#, D.9255
	jne	.L71	#,
.LBB3:
	.loc 1 668 0 is_stmt 1
	movq	-8(%rbp), %rax	# token, tmp73
	movq	16(%rax), %rax	# token_3->val.str.text, D.9257
	movzbl	(%rax), %eax	# *_6, D.9256
	movzbl	%al, %eax	# D.9256, D.9258
	subl	$48, %eax	#, D.9258
	movl	%eax, -12(%rbp)	# D.9258, flag
	.loc 1 670 0
	movl	-12(%rbp), %eax	# flag, tmp74
	cmpl	-28(%rbp), %eax	# last, tmp74
	jbe	.L71	#,
	.loc 1 670 0 is_stmt 0 discriminator 1
	cmpl	$4, -12(%rbp)	#, flag
	ja	.L71	#,
	.loc 1 671 0 is_stmt 1
	cmpl	$4, -12(%rbp)	#, flag
	jne	.L72	#,
	.loc 1 671 0 is_stmt 0 discriminator 1
	cmpl	$3, -28(%rbp)	#, last
	jne	.L71	#,
.L72:
	.loc 1 672 0 is_stmt 1
	cmpl	$2, -12(%rbp)	#, flag
	jne	.L73	#,
	.loc 1 672 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, last
	jne	.L71	#,
.L73:
	.loc 1 673 0 is_stmt 1
	movl	-12(%rbp), %eax	# flag, D.9255
	jmp	.L74	#
.L71:
.LBE3:
	.loc 1 676 0
	movq	-8(%rbp), %rax	# token, tmp75
	movzbl	6(%rax), %eax	# token_3->type, D.9256
	cmpb	$67, %al	#, D.9256
	je	.L75	#,
	.loc 1 677 0
	movq	-8(%rbp), %rdx	# token, tmp76
	movq	-24(%rbp), %rax	# pfile, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9259
	movq	-24(%rbp), %rax	# pfile, tmp78
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp78,
	movl	$0, %eax	#,
	call	cpp_error	#
.L75:
	.loc 1 679 0
	movl	$0, %eax	#, D.9255
.L74:
	.loc 1 680 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	read_flag, .-read_flag
	.type	dequote_string, @function
dequote_string:
.LFB25:
	.loc 1 690 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# pfile, pfile
	movq	%rsi, -80(%rbp)	# str, str
	movl	%edx, -84(%rbp)	# len, len
	.loc 1 691 0
	movl	-84(%rbp), %eax	# len, tmp76
	addl	$1, %eax	#, D.9261
	movl	%eax, %edx	# D.9261, D.9262
	movq	-72(%rbp), %rax	# pfile, tmp77
	movq	%rdx, %rsi	# D.9262,
	movq	%rax, %rdi	# tmp77,
	call	_cpp_unaligned_alloc	#
	movq	%rax, -40(%rbp)	# tmp78, result
	.loc 1 692 0
	movq	-40(%rbp), %rax	# result, tmp79
	movq	%rax, -48(%rbp)	# tmp79, dst
	.loc 1 693 0
	movq	-80(%rbp), %rdx	# str, str.2
	movl	-84(%rbp), %eax	# len, D.9263
	addq	%rdx, %rax	# str.2, tmp80
	movq	%rax, -32(%rbp)	# tmp80, limit
	.loc 1 700 0
	movq	$255, -24(%rbp)	#, mask
	.loc 1 704 0
	jmp	.L77	#
.L79:
	.loc 1 706 0
	movq	-80(%rbp), %rax	# str, str.3
	leaq	1(%rax), %rdx	#, str.5
	movq	%rdx, -80(%rbp)	# str.5, str
	movzbl	(%rax), %eax	# *str.4_14, D.9264
	movzbl	%al, %eax	# D.9264, tmp81
	movl	%eax, -52(%rbp)	# tmp81, c
	.loc 1 707 0
	cmpl	$92, -52(%rbp)	#, c
	je	.L78	#,
	.loc 1 708 0
	movq	-48(%rbp), %rax	# dst, dst.6
	leaq	1(%rax), %rdx	#, tmp82
	movq	%rdx, -48(%rbp)	# tmp82, dst
	movl	-52(%rbp), %edx	# c, tmp83
	movb	%dl, (%rax)	# D.9264, *dst.6_18
	jmp	.L77	#
.L78:
	.loc 1 710 0
	movq	-48(%rbp), %rbx	# dst, dst.7
	leaq	1(%rbx), %rax	#, tmp84
	movq	%rax, -48(%rbp)	# tmp84, dst
	movq	-24(%rbp), %rcx	# mask, tmp85
	movq	-32(%rbp), %rdx	# limit, tmp86
	leaq	-80(%rbp), %rsi	#, tmp87
	movq	-72(%rbp), %rax	# pfile, tmp88
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp88,
	call	cpp_parse_escape	#
	movb	%al, (%rbx)	# D.9264, *dst.7_21
.L77:
	.loc 1 704 0 discriminator 1
	movq	-80(%rbp), %rax	# str, str.8
	cmpq	-32(%rbp), %rax	# limit, str.8
	jb	.L79	#,
	.loc 1 712 0
	movq	-48(%rbp), %rax	# dst, dst.9
	leaq	1(%rax), %rdx	#, tmp89
	movq	%rdx, -48(%rbp)	# tmp89, dst
	movb	$0, (%rax)	#, *dst.9_25
	.loc 1 713 0
	movq	-40(%rbp), %rax	# result, D.9265
	.loc 1 714 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	dequote_string, .-dequote_string
	.type	strtoul_for_line, @function
strtoul_for_line:
.LFB26:
	.loc 1 724 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# str, str
	movl	%esi, -28(%rbp)	# len, len
	movq	%rdx, -40(%rbp)	# nump, nump
	.loc 1 725 0
	movq	$0, -8(%rbp)	#, reg
	.loc 1 727 0
	jmp	.L82	#
.L85:
	.loc 1 729 0
	movq	-24(%rbp), %rax	# str, str.10
	leaq	1(%rax), %rdx	#, tmp70
	movq	%rdx, -24(%rbp)	# tmp70, str
	movzbl	(%rax), %eax	# *str.10_10, tmp71
	movb	%al, -9(%rbp)	# tmp71, c
	.loc 1 730 0
	movzbl	-9(%rbp), %eax	# c, D.9266
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9267
	movzwl	%ax, %eax	# D.9267, D.9266
	andl	$4, %eax	#, D.9266
	testl	%eax, %eax	# D.9266
	jne	.L83	#,
	.loc 1 731 0
	movl	$1, %eax	#, D.9266
	jmp	.L84	#
.L83:
	.loc 1 732 0
	movq	-8(%rbp), %rdx	# reg, tmp73
	movq	%rdx, %rax	# tmp73, tmp74
	salq	$2, %rax	#, tmp74
	addq	%rdx, %rax	# tmp73, tmp74
	addq	%rax, %rax	# tmp75
	movq	%rax, -8(%rbp)	# tmp74, reg
	.loc 1 733 0
	movzbl	-9(%rbp), %eax	# c, D.9266
	subl	$48, %eax	#, D.9266
	cltq
	addq	%rax, -8(%rbp)	# D.9268, reg
.L82:
	.loc 1 727 0 discriminator 1
	movl	-28(%rbp), %eax	# len, len.11
	leal	-1(%rax), %edx	#, tmp76
	movl	%edx, -28(%rbp)	# tmp76, len
	testl	%eax, %eax	# len.11
	jne	.L85	#,
	.loc 1 735 0
	movq	-40(%rbp), %rax	# nump, tmp77
	movq	-8(%rbp), %rdx	# reg, tmp78
	movq	%rdx, (%rax)	# tmp78, *nump_23(D)
	.loc 1 736 0
	movl	$0, %eax	#, D.9266
.L84:
	.loc 1 737 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	strtoul_for_line, .-strtoul_for_line
	.section	.rodata
	.align 8
.LC40:
	.string	"\"%s\" after #line is not a positive integer"
.LC41:
	.string	"line number out of range"
.LC42:
	.string	"\"%s\" is not a valid filename"
	.text
	.type	do_line, @function
do_line:
.LFB27:
	.loc 1 745 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	.loc 1 747 0
	movq	-40(%rbp), %rax	# pfile, tmp81
	movq	56(%rax), %rax	# pfile_3(D)->map, D.9269
	movq	(%rax), %rax	# _4->to_file, tmp82
	movq	%rax, -16(%rbp)	# tmp82, new_file
	.loc 1 751 0
	movq	-40(%rbp), %rax	# pfile, tmp83
	movzbl	769(%rax), %eax	# pfile_3(D)->opts.c99, D.9270
	testb	%al, %al	# D.9270
	je	.L87	#,
	.loc 1 751 0 is_stmt 0 discriminator 1
	movl	$2147483647, %eax	#, iftmp.12
	jmp	.L88	#
.L87:
	.loc 1 751 0 discriminator 2
	movl	$32767, %eax	#, iftmp.12
.L88:
	.loc 1 751 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.12, cap
	.loc 1 754 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# pfile, tmp84
	movq	%rax, %rdi	# tmp84,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp85, token
	.loc 1 755 0 discriminator 3
	movq	-8(%rbp), %rax	# token, tmp86
	movzbl	6(%rax), %eax	# token_10->type, D.9270
	cmpb	$57, %al	#, D.9270
	jne	.L89	#,
	.loc 1 756 0
	movq	-8(%rbp), %rax	# token, tmp87
	movl	8(%rax), %ecx	# token_10->val.str.len, D.9271
	movq	-8(%rbp), %rax	# token, tmp88
	movq	16(%rax), %rax	# token_10->val.str.text, D.9272
	leaq	-24(%rbp), %rdx	#, tmp89
	movl	%ecx, %esi	# D.9271,
	movq	%rax, %rdi	# D.9272,
	call	strtoul_for_line	#
	testl	%eax, %eax	# D.9273
	je	.L90	#,
.L89:
	.loc 1 759 0
	movq	-8(%rbp), %rdx	# token, tmp90
	movq	-40(%rbp), %rax	# pfile, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9275
	movq	-40(%rbp), %rax	# pfile, tmp92
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 761 0
	jmp	.L86	#
.L90:
	.loc 1 764 0
	movq	-40(%rbp), %rax	# pfile, tmp93
	movzbl	770(%rax), %eax	# pfile_3(D)->opts.pedantic, D.9270
	testb	%al, %al	# D.9270
	je	.L92	#,
	.loc 1 764 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# new_lineno, new_lineno.13
	testq	%rax, %rax	# new_lineno.13
	je	.L93	#,
	movl	-28(%rbp), %edx	# cap, D.9274
	movq	-24(%rbp), %rax	# new_lineno, new_lineno.14
	cmpq	%rax, %rdx	# new_lineno.14, D.9274
	jae	.L92	#,
.L93:
	.loc 1 765 0 is_stmt 1
	movq	-40(%rbp), %rax	# pfile, tmp94
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp94,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L92:
	.loc 1 767 0
	movq	-40(%rbp), %rax	# pfile, tmp95
	movq	%rax, %rdi	# tmp95,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp96, token
	.loc 1 768 0
	movq	-8(%rbp), %rax	# token, tmp97
	movzbl	6(%rax), %eax	# token_19->type, D.9270
	cmpb	$61, %al	#, D.9270
	jne	.L94	#,
	.loc 1 770 0
	movq	-8(%rbp), %rax	# token, tmp98
	movl	8(%rax), %edx	# token_19->val.str.len, D.9271
	movq	-8(%rbp), %rax	# token, tmp99
	movq	16(%rax), %rcx	# token_19->val.str.text, D.9272
	movq	-40(%rbp), %rax	# pfile, tmp100
	movq	%rcx, %rsi	# D.9272,
	movq	%rax, %rdi	# tmp100,
	call	dequote_string	#
	movq	%rax, -16(%rbp)	# tmp101, new_file
	.loc 1 772 0
	movq	-40(%rbp), %rax	# pfile, tmp102
	movq	%rax, %rdi	# tmp102,
	call	check_eol	#
	jmp	.L95	#
.L94:
	.loc 1 774 0
	movq	-8(%rbp), %rax	# token, tmp103
	movzbl	6(%rax), %eax	# token_19->type, D.9270
	cmpb	$67, %al	#, D.9270
	je	.L95	#,
	.loc 1 776 0
	movq	-8(%rbp), %rdx	# token, tmp104
	movq	-40(%rbp), %rax	# pfile, tmp105
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9275
	movq	-40(%rbp), %rax	# pfile, tmp106
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 778 0
	jmp	.L86	#
.L95:
	.loc 1 781 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp107
	movq	%rax, %rdi	# tmp107,
	call	skip_rest_of_line	#
	.loc 1 783 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp108
	movq	56(%rax), %rax	# pfile_3(D)->map, D.9269
	movzbl	21(%rax), %eax	# _26->sysp, D.9270
	.loc 1 782 0 discriminator 1
	movzbl	%al, %esi	# D.9270, D.9271
	movq	-24(%rbp), %rax	# new_lineno, new_lineno.15
	movl	%eax, %ecx	# new_lineno.15, D.9271
	movq	-16(%rbp), %rdx	# new_file, tmp109
	movq	-40(%rbp), %rax	# pfile, tmp110
	movl	%esi, %r8d	# D.9271,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	_cpp_do_file_change	#
.L86:
	.loc 1 784 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	do_line, .-do_line
	.section	.rodata
	.align 8
.LC43:
	.string	"\"%s\" after # is not a positive integer"
	.text
	.type	do_linemarker, @function
do_linemarker:
.LFB28:
	.loc 1 792 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# pfile, pfile
	.loc 1 794 0
	movq	-56(%rbp), %rax	# pfile, tmp81
	movq	56(%rax), %rax	# pfile_7(D)->map, D.9279
	movq	(%rax), %rax	# _8->to_file, tmp82
	movq	%rax, -16(%rbp)	# tmp82, new_file
	.loc 1 796 0
	movq	-56(%rbp), %rax	# pfile, tmp83
	movq	56(%rax), %rax	# pfile_7(D)->map, D.9279
	movzbl	21(%rax), %eax	# _10->sysp, D.9280
	movzbl	%al, %eax	# D.9280, tmp84
	movl	%eax, -36(%rbp)	# tmp84, new_sysp
	.loc 1 797 0
	movl	$2, -32(%rbp)	#, reason
	.loc 1 803 0
	movq	-56(%rbp), %rax	# pfile, tmp85
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	_cpp_backup_tokens	#
	.loc 1 806 0
	movq	-56(%rbp), %rax	# pfile, tmp86
	movq	%rax, %rdi	# tmp86,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp87, token
	.loc 1 807 0
	movq	-8(%rbp), %rax	# token, tmp88
	movzbl	6(%rax), %eax	# token_14->type, D.9280
	cmpb	$57, %al	#, D.9280
	jne	.L98	#,
	.loc 1 808 0
	movq	-8(%rbp), %rax	# token, tmp89
	movl	8(%rax), %ecx	# token_14->val.str.len, D.9281
	movq	-8(%rbp), %rax	# token, tmp90
	movq	16(%rax), %rax	# token_14->val.str.text, D.9282
	leaq	-24(%rbp), %rdx	#, tmp91
	movl	%ecx, %esi	# D.9281,
	movq	%rax, %rdi	# D.9282,
	call	strtoul_for_line	#
	testl	%eax, %eax	# D.9283
	je	.L99	#,
.L98:
	.loc 1 811 0
	movq	-8(%rbp), %rdx	# token, tmp92
	movq	-56(%rbp), %rax	# pfile, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9284
	movq	-56(%rbp), %rax	# pfile, tmp94
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp94,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 813 0
	jmp	.L97	#
.L99:
	.loc 1 816 0
	movq	-56(%rbp), %rax	# pfile, tmp95
	movq	%rax, %rdi	# tmp95,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp96, token
	.loc 1 817 0
	movq	-8(%rbp), %rax	# token, tmp97
	movzbl	6(%rax), %eax	# token_19->type, D.9280
	cmpb	$61, %al	#, D.9280
	jne	.L101	#,
	.loc 1 819 0
	movq	-8(%rbp), %rax	# token, tmp98
	movl	8(%rax), %edx	# token_19->val.str.len, D.9281
	movq	-8(%rbp), %rax	# token, tmp99
	movq	16(%rax), %rcx	# token_19->val.str.text, D.9282
	movq	-56(%rbp), %rax	# pfile, tmp100
	movq	%rcx, %rsi	# D.9282,
	movq	%rax, %rdi	# tmp100,
	call	dequote_string	#
	movq	%rax, -16(%rbp)	# tmp101, new_file
	.loc 1 821 0
	movl	$0, -36(%rbp)	#, new_sysp
	.loc 1 822 0
	movq	-56(%rbp), %rax	# pfile, tmp102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	read_flag	#
	movl	%eax, -28(%rbp)	# D.9281, flag
	.loc 1 823 0
	cmpl	$1, -28(%rbp)	#, flag
	jne	.L102	#,
	.loc 1 825 0
	movl	$0, -32(%rbp)	#, reason
	.loc 1 827 0
	movq	-16(%rbp), %rdx	# new_file, tmp103
	movq	-56(%rbp), %rax	# pfile, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	_cpp_fake_include	#
	.loc 1 828 0
	movl	-28(%rbp), %edx	# flag, flag.16
	movq	-56(%rbp), %rax	# pfile, tmp105
	movl	%edx, %esi	# flag.16,
	movq	%rax, %rdi	# tmp105,
	call	read_flag	#
	movl	%eax, -28(%rbp)	# D.9281, flag
	jmp	.L103	#
.L102:
	.loc 1 830 0
	cmpl	$2, -28(%rbp)	#, flag
	jne	.L103	#,
	.loc 1 832 0
	movl	$1, -32(%rbp)	#, reason
	.loc 1 833 0
	movl	-28(%rbp), %edx	# flag, flag.17
	movq	-56(%rbp), %rax	# pfile, tmp106
	movl	%edx, %esi	# flag.17,
	movq	%rax, %rdi	# tmp106,
	call	read_flag	#
	movl	%eax, -28(%rbp)	# D.9281, flag
.L103:
	.loc 1 835 0
	cmpl	$3, -28(%rbp)	#, flag
	jne	.L104	#,
	.loc 1 837 0
	movl	$1, -36(%rbp)	#, new_sysp
	.loc 1 838 0
	movl	-28(%rbp), %edx	# flag, flag.18
	movq	-56(%rbp), %rax	# pfile, tmp107
	movl	%edx, %esi	# flag.18,
	movq	%rax, %rdi	# tmp107,
	call	read_flag	#
	movl	%eax, -28(%rbp)	# D.9281, flag
	.loc 1 839 0
	cmpl	$4, -28(%rbp)	#, flag
	jne	.L104	#,
	.loc 1 840 0
	movl	$2, -36(%rbp)	#, new_sysp
.L104:
	.loc 1 843 0
	movq	-56(%rbp), %rax	# pfile, tmp108
	movq	%rax, %rdi	# tmp108,
	call	check_eol	#
	jmp	.L105	#
.L101:
	.loc 1 845 0
	movq	-8(%rbp), %rax	# token, tmp109
	movzbl	6(%rax), %eax	# token_19->type, D.9280
	cmpb	$67, %al	#, D.9280
	je	.L105	#,
	.loc 1 847 0
	movq	-8(%rbp), %rdx	# token, tmp110
	movq	-56(%rbp), %rax	# pfile, tmp111
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9284
	movq	-56(%rbp), %rax	# pfile, tmp112
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 849 0
	jmp	.L97	#
.L105:
	.loc 1 852 0 discriminator 1
	movq	-56(%rbp), %rax	# pfile, tmp113
	movq	%rax, %rdi	# tmp113,
	call	skip_rest_of_line	#
	.loc 1 853 0 discriminator 1
	movq	-24(%rbp), %rax	# new_lineno, new_lineno.19
	movl	%eax, %ecx	# new_lineno.19, D.9281
	movl	-36(%rbp), %edi	# new_sysp, tmp114
	movq	-16(%rbp), %rdx	# new_file, tmp115
	movl	-32(%rbp), %esi	# reason, tmp116
	movq	-56(%rbp), %rax	# pfile, tmp117
	movl	%edi, %r8d	# tmp114,
	movq	%rax, %rdi	# tmp117,
	call	_cpp_do_file_change	#
.L97:
	.loc 1 854 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	do_linemarker, .-do_linemarker
	.globl	_cpp_do_file_change
	.type	_cpp_do_file_change, @function
_cpp_do_file_change:
.LFB29:
	.loc 1 867 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movl	%esi, -12(%rbp)	# reason, reason
	movq	%rdx, -24(%rbp)	# to_file, to_file
	movl	%ecx, -16(%rbp)	# file_line, file_line
	movl	%r8d, -28(%rbp)	# sysp, sysp
	.loc 1 868 0
	movq	-8(%rbp), %rax	# pfile, tmp65
	movl	64(%rax), %ecx	# pfile_1(D)->line, D.9286
	movq	-8(%rbp), %rax	# pfile, tmp66
	leaq	24(%rax), %rdi	#, D.9287
	movl	-16(%rbp), %r8d	# file_line, tmp67
	movq	-24(%rbp), %rsi	# to_file, tmp68
	movl	-28(%rbp), %edx	# sysp, tmp69
	movl	-12(%rbp), %eax	# reason, tmp70
	movl	%r8d, %r9d	# tmp67,
	movq	%rsi, %r8	# tmp68,
	movl	%eax, %esi	# tmp70,
	call	add_line_map	#
	movq	-8(%rbp), %rdx	# pfile, tmp71
	movq	%rax, 56(%rdx)	# D.9288, pfile_1(D)->map
	.loc 1 871 0
	movq	-8(%rbp), %rax	# pfile, tmp72
	movq	592(%rax), %rax	# pfile_1(D)->cb.file_change, D.9289
	testq	%rax, %rax	# D.9289
	je	.L107	#,
	.loc 1 872 0
	movq	-8(%rbp), %rax	# pfile, tmp73
	movq	592(%rax), %rax	# pfile_1(D)->cb.file_change, D.9289
	movq	-8(%rbp), %rdx	# pfile, tmp74
	movq	56(%rdx), %rcx	# pfile_1(D)->map, D.9288
	movq	-8(%rbp), %rdx	# pfile, tmp75
	movq	%rcx, %rsi	# D.9288,
	movq	%rdx, %rdi	# tmp75,
	call	*%rax	# D.9289
.L107:
	.loc 1 873 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	_cpp_do_file_change, .-_cpp_do_file_change
	.section	.rodata
.LC44:
	.string	"#%s "
	.text
	.type	do_diagnostic, @function
do_diagnostic:
.LFB30:
	.loc 1 882 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movl	%esi, -12(%rbp)	# code, code
	movl	%edx, -16(%rbp)	# print_dir, print_dir
	.loc 1 883 0
	movl	-12(%rbp), %esi	# code, tmp68
	movq	-8(%rbp), %rax	# pfile, tmp69
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp69,
	call	_cpp_begin_message	#
	testl	%eax, %eax	# D.9290
	je	.L109	#,
	.loc 1 885 0
	cmpl	$0, -16(%rbp)	#, print_dir
	je	.L111	#,
	.loc 1 886 0
	movq	-8(%rbp), %rax	# pfile, tmp70
	movq	160(%rax), %rax	# pfile_1(D)->directive, D.9291
	movq	8(%rax), %rdx	# _5->name, D.9292
	movq	stderr(%rip), %rax	# stderr, stderr.20
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# stderr.20,
	movl	$0, %eax	#,
	call	fprintf	#
.L111:
	.loc 1 887 0
	movq	-8(%rbp), %rax	# pfile, tmp71
	movzbl	15(%rax), %eax	# pfile_1(D)->state.prevent_expansion, D.9293
	leal	1(%rax), %edx	#, D.9293
	movq	-8(%rbp), %rax	# pfile, tmp72
	movb	%dl, 15(%rax)	# D.9293, pfile_1(D)->state.prevent_expansion
	.loc 1 888 0
	movq	stderr(%rip), %rdx	# stderr, stderr.21
	movq	-8(%rbp), %rax	# pfile, tmp73
	movq	%rdx, %rsi	# stderr.21,
	movq	%rax, %rdi	# tmp73,
	call	cpp_output_line	#
	.loc 1 889 0
	movq	-8(%rbp), %rax	# pfile, tmp74
	movzbl	15(%rax), %eax	# pfile_1(D)->state.prevent_expansion, D.9293
	leal	-1(%rax), %edx	#, D.9293
	movq	-8(%rbp), %rax	# pfile, tmp75
	movb	%dl, 15(%rax)	# D.9293, pfile_1(D)->state.prevent_expansion
.L109:
	.loc 1 891 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	do_diagnostic, .-do_diagnostic
	.type	do_error, @function
do_error:
.LFB31:
	.loc 1 896 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 897 0
	movq	-8(%rbp), %rax	# pfile, tmp59
	movl	$1, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	do_diagnostic	#
	.loc 1 898 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	do_error, .-do_error
	.type	do_warning, @function
do_warning:
.LFB32:
	.loc 1 903 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 905 0
	movq	-8(%rbp), %rax	# pfile, tmp59
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	do_diagnostic	#
	.loc 1 906 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	do_warning, .-do_warning
	.section	.rodata
.LC45:
	.string	"invalid #ident directive"
	.text
	.type	do_ident, @function
do_ident:
.LFB33:
	.loc 1 912 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 913 0
	movq	-24(%rbp), %rax	# pfile, tmp64
	movq	%rax, %rdi	# tmp64,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp65, str
	.loc 1 915 0
	movq	-8(%rbp), %rax	# str, tmp66
	movzbl	6(%rax), %eax	# str_2->type, D.9295
	cmpb	$61, %al	#, D.9295
	je	.L115	#,
	.loc 1 916 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp67,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L116	#
.L115:
	.loc 1 917 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movq	624(%rax), %rax	# pfile_1(D)->cb.ident, D.9296
	testq	%rax, %rax	# D.9296
	je	.L116	#,
	.loc 1 918 0
	movq	-24(%rbp), %rax	# pfile, tmp69
	movq	624(%rax), %rax	# pfile_1(D)->cb.ident, D.9296
	movq	-8(%rbp), %rdx	# str, tmp70
	leaq	8(%rdx), %rdi	#, D.9297
	movq	-24(%rbp), %rdx	# pfile, tmp71
	movl	68(%rdx), %esi	# pfile_1(D)->directive_line, D.9298
	movq	-24(%rbp), %rcx	# pfile, tmp72
	movq	%rdi, %rdx	# D.9297,
	movq	%rcx, %rdi	# tmp72,
	call	*%rax	# D.9296
.L116:
	.loc 1 920 0
	movq	-24(%rbp), %rax	# pfile, tmp73
	movq	%rax, %rdi	# tmp73,
	call	check_eol	#
	.loc 1 921 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	do_ident, .-do_ident
	.type	lookup_pragma_entry, @function
lookup_pragma_entry:
.LFB34:
	.loc 1 930 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# chain, chain
	movq	%rsi, -16(%rbp)	# pragma, pragma
	.loc 1 931 0
	jmp	.L118	#
.L120:
	.loc 1 932 0
	movq	-8(%rbp), %rax	# chain, tmp62
	movq	(%rax), %rax	# chain_1->next, tmp63
	movq	%rax, -8(%rbp)	# tmp63, chain
.L118:
	.loc 1 931 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, chain
	je	.L119	#,
	.loc 1 931 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# chain, tmp64
	movq	8(%rax), %rax	# chain_1->pragma, D.9300
	cmpq	-16(%rbp), %rax	# pragma, D.9300
	jne	.L120	#,
.L119:
	.loc 1 934 0 is_stmt 1
	movq	-8(%rbp), %rax	# chain, D.9301
	.loc 1 935 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	lookup_pragma_entry, .-lookup_pragma_entry
	.type	insert_pragma_entry, @function
insert_pragma_entry:
.LFB35:
	.loc 1 946 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# chain, chain
	movq	%rdx, -40(%rbp)	# pragma, pragma
	movq	%rcx, -48(%rbp)	# handler, handler
	.loc 1 949 0
	movq	-24(%rbp), %rax	# pfile, tmp62
	movl	$32, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	_cpp_aligned_alloc	#
	movq	%rax, -8(%rbp)	# tmp63, new
	.loc 1 951 0
	movq	-8(%rbp), %rax	# new, tmp64
	movq	-40(%rbp), %rdx	# pragma, tmp65
	movq	%rdx, 8(%rax)	# tmp65, new_2->pragma
	.loc 1 952 0
	cmpq	$0, -48(%rbp)	#, handler
	je	.L123	#,
	.loc 1 954 0
	movq	-8(%rbp), %rax	# new, tmp66
	movl	$0, 16(%rax)	#, new_2->is_nspace
	.loc 1 955 0
	movq	-8(%rbp), %rax	# new, tmp67
	movq	-48(%rbp), %rdx	# handler, tmp68
	movq	%rdx, 24(%rax)	# tmp68, new_2->u.handler
	jmp	.L124	#
.L123:
	.loc 1 959 0
	movq	-8(%rbp), %rax	# new, tmp69
	movl	$1, 16(%rax)	#, new_2->is_nspace
	.loc 1 960 0
	movq	-8(%rbp), %rax	# new, tmp70
	movq	$0, 24(%rax)	#, new_2->u.space
.L124:
	.loc 1 963 0
	movq	-32(%rbp), %rax	# chain, tmp71
	movq	(%rax), %rdx	# *chain_5(D), D.9302
	movq	-8(%rbp), %rax	# new, tmp72
	movq	%rdx, (%rax)	# D.9302, new_2->next
	.loc 1 964 0
	movq	-32(%rbp), %rax	# chain, tmp73
	movq	-8(%rbp), %rdx	# new, tmp74
	movq	%rdx, (%rax)	# tmp74, *chain_5(D)
	.loc 1 965 0
	movq	-8(%rbp), %rax	# new, D.9302
	.loc 1 966 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	insert_pragma_entry, .-insert_pragma_entry
	.section	.rodata
	.align 8
.LC46:
	.string	"registering \"%s\" as both a pragma and a pragma namespace"
	.align 8
.LC47:
	.string	"#pragma %s %s is already registered"
	.align 8
.LC48:
	.string	"#pragma %s is already registered"
	.text
	.globl	cpp_register_pragma
	.type	cpp_register_pragma, @function
cpp_register_pragma:
.LFB36:
	.loc 1 977 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# space, space
	movq	%rdx, -56(%rbp)	# name, name
	movq	%rcx, -64(%rbp)	# handler, handler
	.loc 1 978 0
	movq	-40(%rbp), %rax	# pfile, tmp71
	addq	$576, %rax	#, tmp70
	movq	%rax, -24(%rbp)	# tmp70, chain
	.loc 1 982 0
	cmpq	$0, -64(%rbp)	#, handler
	jne	.L127	#,
	.loc 1 983 0
	call	abort	#
.L127:
	.loc 1 985 0
	cmpq	$0, -48(%rbp)	#, space
	je	.L128	#,
	.loc 1 987 0
	movq	-48(%rbp), %rax	# space, tmp72
	movq	%rax, %rdi	# tmp72,
	call	strlen	#
	movl	%eax, %edx	# D.9303, D.9304
	movq	-48(%rbp), %rcx	# space, tmp73
	movq	-40(%rbp), %rax	# pfile, tmp74
	movq	%rcx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	cpp_lookup	#
	movq	%rax, -8(%rbp)	# tmp75, node
	.loc 1 988 0
	movq	-24(%rbp), %rax	# chain, tmp76
	movq	(%rax), %rax	# *chain_5, D.9305
	movq	-8(%rbp), %rdx	# node, tmp77
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# D.9305,
	call	lookup_pragma_entry	#
	movq	%rax, -16(%rbp)	# tmp78, entry
	.loc 1 989 0
	cmpq	$0, -16(%rbp)	#, entry
	jne	.L129	#,
	.loc 1 990 0
	movq	-8(%rbp), %rdx	# node, tmp79
	movq	-24(%rbp), %rsi	# chain, tmp80
	movq	-40(%rbp), %rax	# pfile, tmp81
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp81,
	call	insert_pragma_entry	#
	movq	%rax, -16(%rbp)	# tmp82, entry
	jmp	.L130	#
.L129:
	.loc 1 991 0
	movq	-16(%rbp), %rax	# entry, tmp83
	movl	16(%rax), %eax	# entry_12->is_nspace, D.9306
	testl	%eax, %eax	# D.9306
	jne	.L130	#,
	.loc 1 992 0
	jmp	.L131	#
.L130:
	.loc 1 993 0
	movq	-16(%rbp), %rax	# entry, tmp87
	addq	$24, %rax	#, tmp86
	movq	%rax, -24(%rbp)	# tmp86, chain
.L128:
	.loc 1 997 0
	movq	-56(%rbp), %rax	# name, tmp88
	movq	%rax, %rdi	# tmp88,
	call	strlen	#
	movl	%eax, %edx	# D.9303, D.9304
	movq	-56(%rbp), %rcx	# name, tmp89
	movq	-40(%rbp), %rax	# pfile, tmp90
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	cpp_lookup	#
	movq	%rax, -8(%rbp)	# tmp91, node
	.loc 1 998 0
	movq	-24(%rbp), %rax	# chain, tmp92
	movq	(%rax), %rax	# *chain_1, D.9305
	movq	-8(%rbp), %rdx	# node, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.9305,
	call	lookup_pragma_entry	#
	movq	%rax, -16(%rbp)	# tmp94, entry
	.loc 1 999 0
	cmpq	$0, -16(%rbp)	#, entry
	je	.L132	#,
	.loc 1 1001 0
	movq	-16(%rbp), %rax	# entry, tmp95
	movl	16(%rax), %eax	# entry_21->is_nspace, D.9306
	testl	%eax, %eax	# D.9306
	je	.L133	#,
.L131:
	.loc 1 1003 0
	movq	-8(%rbp), %rax	# node, tmp96
	movq	8(%rax), %rdx	# node_3->ident.str, D.9307
	movq	-40(%rbp), %rax	# pfile, tmp97
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp97,
	movl	$0, %eax	#,
	call	cpp_ice	#
	jmp	.L126	#
.L133:
	.loc 1 1006 0
	cmpq	$0, -48(%rbp)	#, space
	je	.L135	#,
	.loc 1 1007 0
	movq	-56(%rbp), %rcx	# name, tmp98
	movq	-48(%rbp), %rdx	# space, tmp99
	movq	-40(%rbp), %rax	# pfile, tmp100
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	cpp_ice	#
	jmp	.L126	#
.L135:
	.loc 1 1009 0
	movq	-56(%rbp), %rdx	# name, tmp101
	movq	-40(%rbp), %rax	# pfile, tmp102
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp102,
	movl	$0, %eax	#,
	call	cpp_ice	#
	jmp	.L126	#
.L132:
	.loc 1 1012 0
	movq	-64(%rbp), %rcx	# handler, tmp103
	movq	-8(%rbp), %rdx	# node, tmp104
	movq	-24(%rbp), %rsi	# chain, tmp105
	movq	-40(%rbp), %rax	# pfile, tmp106
	movq	%rax, %rdi	# tmp106,
	call	insert_pragma_entry	#
.L126:
	.loc 1 1013 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	cpp_register_pragma, .-cpp_register_pragma
	.section	.rodata
.LC49:
	.string	"poison"
.LC50:
	.string	"once"
.LC51:
	.string	"GCC"
.LC52:
	.string	"system_header"
.LC53:
	.string	"dependency"
	.text
	.globl	_cpp_init_internal_pragmas
	.type	_cpp_init_internal_pragmas, @function
_cpp_init_internal_pragmas:
.LFB37:
	.loc 1 1019 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 1021 0
	movq	-8(%rbp), %rax	# pfile, tmp59
	movl	$do_pragma_poison, %ecx	#,
	movl	$.LC49, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	cpp_register_pragma	#
	.loc 1 1022 0
	movq	-8(%rbp), %rax	# pfile, tmp60
	movl	$do_pragma_once, %ecx	#,
	movl	$.LC50, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp60,
	call	cpp_register_pragma	#
	.loc 1 1025 0
	movq	-8(%rbp), %rax	# pfile, tmp61
	movl	$do_pragma_poison, %ecx	#,
	movl	$.LC49, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	cpp_register_pragma	#
	.loc 1 1026 0
	movq	-8(%rbp), %rax	# pfile, tmp62
	movl	$do_pragma_system_header, %ecx	#,
	movl	$.LC52, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	cpp_register_pragma	#
	.loc 1 1027 0
	movq	-8(%rbp), %rax	# pfile, tmp63
	movl	$do_pragma_dependency, %ecx	#,
	movl	$.LC53, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	cpp_register_pragma	#
	.loc 1 1028 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	_cpp_init_internal_pragmas, .-_cpp_init_internal_pragmas
	.type	do_pragma, @function
do_pragma:
.LFB38:
	.loc 1 1038 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	.loc 1 1039 0
	movq	$0, -16(%rbp)	#, p
	.loc 1 1041 0
	movl	$1, -20(%rbp)	#, count
	.loc 1 1043 0
	movq	-40(%rbp), %rax	# pfile, tmp76
	movzbl	15(%rax), %eax	# pfile_6(D)->state.prevent_expansion, D.9316
	leal	1(%rax), %edx	#, D.9316
	movq	-40(%rbp), %rax	# pfile, tmp77
	movb	%dl, 15(%rax)	# D.9316, pfile_6(D)->state.prevent_expansion
	.loc 1 1045 0
	movq	-40(%rbp), %rax	# pfile, tmp78
	movq	%rax, %rdi	# tmp78,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp79, token
	.loc 1 1046 0
	movq	-8(%rbp), %rax	# token, tmp80
	movzbl	6(%rax), %eax	# token_10->type, D.9316
	cmpb	$56, %al	#, D.9316
	jne	.L139	#,
	.loc 1 1048 0
	movq	-8(%rbp), %rax	# token, tmp81
	movq	8(%rax), %rdx	# token_10->val.node, D.9317
	movq	-40(%rbp), %rax	# pfile, tmp82
	movq	576(%rax), %rax	# pfile_6(D)->pragmas, D.9318
	movq	%rdx, %rsi	# D.9317,
	movq	%rax, %rdi	# D.9318,
	call	lookup_pragma_entry	#
	movq	%rax, -16(%rbp)	# tmp83, p
	.loc 1 1049 0
	cmpq	$0, -16(%rbp)	#, p
	je	.L139	#,
	.loc 1 1049 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp84
	movl	16(%rax), %eax	# p_14->is_nspace, D.9319
	testl	%eax, %eax	# D.9319
	je	.L139	#,
	.loc 1 1051 0 is_stmt 1
	movl	$2, -20(%rbp)	#, count
	.loc 1 1052 0
	movq	-40(%rbp), %rax	# pfile, tmp85
	movq	%rax, %rdi	# tmp85,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp86, token
	.loc 1 1053 0
	movq	-8(%rbp), %rax	# token, tmp87
	movzbl	6(%rax), %eax	# token_17->type, D.9316
	cmpb	$56, %al	#, D.9316
	jne	.L140	#,
	.loc 1 1054 0
	movq	-8(%rbp), %rax	# token, tmp88
	movq	8(%rax), %rdx	# token_17->val.node, D.9317
	movq	-16(%rbp), %rax	# p, tmp89
	movq	24(%rax), %rax	# p_14->u.space, D.9318
	movq	%rdx, %rsi	# D.9317,
	movq	%rax, %rdi	# D.9318,
	call	lookup_pragma_entry	#
	movq	%rax, -16(%rbp)	# tmp90, p
	jmp	.L139	#
.L140:
	.loc 1 1056 0
	movq	$0, -16(%rbp)	#, p
.L139:
	.loc 1 1065 0
	movq	-40(%rbp), %rax	# pfile, tmp91
	movq	584(%rax), %rax	# pfile_6(D)->cb.line_change, D.9320
	testq	%rax, %rax	# D.9320
	je	.L141	#,
	.loc 1 1066 0
	movq	-40(%rbp), %rax	# pfile, tmp92
	movq	584(%rax), %rax	# pfile_6(D)->cb.line_change, D.9320
	movq	-8(%rbp), %rsi	# token, tmp93
	movq	-40(%rbp), %rcx	# pfile, tmp94
	movl	$1, %edx	#,
	movq	%rcx, %rdi	# tmp94,
	call	*%rax	# D.9320
.L141:
	.loc 1 1068 0
	cmpq	$0, -16(%rbp)	#, p
	je	.L142	#,
	.loc 1 1069 0
	movq	-16(%rbp), %rax	# p, tmp95
	movq	24(%rax), %rax	# p_1->u.handler, D.9321
	movq	-40(%rbp), %rdx	# pfile, tmp96
	movq	%rdx, %rdi	# tmp96,
	call	*%rax	# D.9321
	jmp	.L143	#
.L142:
	.loc 1 1070 0
	movq	-40(%rbp), %rax	# pfile, tmp97
	movq	632(%rax), %rax	# pfile_6(D)->cb.def_pragma, D.9322
	testq	%rax, %rax	# D.9322
	je	.L143	#,
	.loc 1 1072 0
	movl	-20(%rbp), %edx	# count, tmp98
	movq	-40(%rbp), %rax	# pfile, tmp99
	movl	%edx, %esi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	_cpp_backup_tokens	#
	.loc 1 1073 0
	movq	-40(%rbp), %rax	# pfile, tmp100
	movq	632(%rax), %rax	# pfile_6(D)->cb.def_pragma, D.9322
	movq	-40(%rbp), %rdx	# pfile, tmp101
	movl	68(%rdx), %ecx	# pfile_6(D)->directive_line, D.9323
	movq	-40(%rbp), %rdx	# pfile, tmp102
	movl	%ecx, %esi	# D.9323,
	movq	%rdx, %rdi	# tmp102,
	call	*%rax	# D.9322
.L143:
	.loc 1 1076 0
	movq	-40(%rbp), %rax	# pfile, tmp103
	movzbl	15(%rax), %eax	# pfile_6(D)->state.prevent_expansion, D.9316
	leal	-1(%rax), %edx	#, D.9316
	movq	-40(%rbp), %rax	# pfile, tmp104
	movb	%dl, 15(%rax)	# D.9316, pfile_6(D)->state.prevent_expansion
	.loc 1 1077 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	do_pragma, .-do_pragma
	.section	.rodata
.LC54:
	.string	"#pragma once is obsolete"
.LC55:
	.string	"#pragma once in main file"
	.text
	.type	do_pragma_once, @function
do_pragma_once:
.LFB39:
	.loc 1 1083 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 1084 0
	movq	-8(%rbp), %rax	# pfile, tmp63
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp63,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 1 1086 0
	movq	-8(%rbp), %rax	# pfile, tmp64
	movq	(%rax), %rax	# pfile_1(D)->buffer, D.9324
	movq	32(%rax), %rax	# _2->prev, D.9325
	testq	%rax, %rax	# D.9325
	jne	.L145	#,
	.loc 1 1087 0
	movq	-8(%rbp), %rax	# pfile, tmp65
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp65,
	movl	$0, %eax	#,
	call	cpp_warning	#
	jmp	.L146	#
.L145:
	.loc 1 1089 0
	movq	-8(%rbp), %rax	# pfile, tmp66
	movq	(%rax), %rax	# pfile_1(D)->buffer, D.9324
	movq	48(%rax), %rax	# _4->inc, D.9326
	movq	%rax, %rdi	# D.9326,
	call	_cpp_never_reread	#
.L146:
	.loc 1 1091 0
	movq	-8(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	check_eol	#
	.loc 1 1092 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	do_pragma_once, .-do_pragma_once
	.section	.rodata
	.align 8
.LC56:
	.string	"invalid #pragma GCC poison directive"
.LC57:
	.string	"poisoning existing macro \"%s\""
	.text
	.type	do_pragma_poison, @function
do_pragma_poison:
.LFB40:
	.loc 1 1099 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1103 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movb	$1, 14(%rax)	#, pfile_1(D)->state.poisoned_ok
.L154:
	.loc 1 1106 0
	movq	-24(%rbp), %rax	# pfile, tmp69
	movq	%rax, %rdi	# tmp69,
	call	_cpp_lex_token	#
	movq	%rax, -16(%rbp)	# tmp70, tok
	.loc 1 1107 0
	movq	-16(%rbp), %rax	# tok, tmp71
	movzbl	6(%rax), %eax	# tok_2->type, D.9329
	cmpb	$67, %al	#, D.9329
	jne	.L148	#,
	.loc 1 1108 0
	jmp	.L149	#
.L148:
	.loc 1 1109 0
	movq	-16(%rbp), %rax	# tok, tmp72
	movzbl	6(%rax), %eax	# tok_2->type, D.9329
	cmpb	$56, %al	#, D.9329
	je	.L150	#,
	.loc 1 1111 0
	movq	-24(%rbp), %rax	# pfile, tmp73
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp73,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 1112 0
	jmp	.L149	#
.L150:
	.loc 1 1115 0
	movq	-16(%rbp), %rax	# tok, tmp74
	movq	8(%rax), %rax	# tok_2->val.node, tmp75
	movq	%rax, -8(%rbp)	# tmp75, hp
	.loc 1 1116 0
	movq	-8(%rbp), %rax	# hp, tmp76
	movzbl	21(%rax), %eax	# hp_5->flags, D.9329
	movzbl	%al, %eax	# D.9329, D.9330
	andl	$2, %eax	#, D.9330
	testl	%eax, %eax	# D.9330
	je	.L151	#,
	.loc 1 1117 0
	nop
	.loc 1 1123 0
	jmp	.L154	#
.L151:
	.loc 1 1119 0
	movq	-8(%rbp), %rax	# hp, tmp77
	movzbl	20(%rax), %eax	# hp_5->type, D.9329
	cmpb	$1, %al	#, D.9329
	jne	.L153	#,
	.loc 1 1120 0
	movq	-8(%rbp), %rax	# hp, tmp78
	movq	8(%rax), %rdx	# hp_5->ident.str, D.9331
	movq	-24(%rbp), %rax	# pfile, tmp79
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp79,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L153:
	.loc 1 1121 0
	movq	-8(%rbp), %rax	# hp, tmp80
	movq	%rax, %rdi	# tmp80,
	call	_cpp_free_definition	#
	.loc 1 1122 0
	movq	-8(%rbp), %rax	# hp, tmp81
	movzbl	21(%rax), %eax	# hp_5->flags, D.9329
	orl	$10, %eax	#, D.9329
	movl	%eax, %edx	# D.9329, D.9329
	movq	-8(%rbp), %rax	# hp, tmp82
	movb	%dl, 21(%rax)	# D.9329, hp_5->flags
	.loc 1 1123 0
	jmp	.L154	#
.L149:
	.loc 1 1124 0
	movq	-24(%rbp), %rax	# pfile, tmp83
	movb	$0, 14(%rax)	#, pfile_1(D)->state.poisoned_ok
	.loc 1 1125 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	do_pragma_poison, .-do_pragma_poison
	.section	.rodata
	.align 8
.LC58:
	.string	"#pragma system_header ignored outside include file"
	.text
	.type	do_pragma_system_header, @function
do_pragma_system_header:
.LFB41:
	.loc 1 1136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1137 0
	movq	-24(%rbp), %rax	# pfile, tmp60
	movq	(%rax), %rax	# pfile_1(D)->buffer, tmp61
	movq	%rax, -8(%rbp)	# tmp61, buffer
	.loc 1 1139 0
	movq	-8(%rbp), %rax	# buffer, tmp62
	movq	32(%rax), %rax	# buffer_2->prev, D.9334
	testq	%rax, %rax	# D.9334
	jne	.L156	#,
	.loc 1 1140 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# tmp63,
	movl	$0, %eax	#,
	call	cpp_warning	#
	jmp	.L155	#
.L156:
	.loc 1 1143 0
	movq	-24(%rbp), %rax	# pfile, tmp64
	movq	%rax, %rdi	# tmp64,
	call	check_eol	#
	.loc 1 1144 0
	movq	-24(%rbp), %rax	# pfile, tmp65
	movq	%rax, %rdi	# tmp65,
	call	skip_rest_of_line	#
	.loc 1 1145 0
	movq	-24(%rbp), %rax	# pfile, tmp66
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	cpp_make_system_header	#
.L155:
	.loc 1 1147 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	do_pragma_system_header, .-do_pragma_system_header
	.section	.rodata
.LC59:
	.string	"cannot find source %s"
.LC60:
	.string	"current file is older than %s"
	.text
	.type	do_pragma_dependency, @function
do_pragma_dependency:
.LFB42:
	.loc 1 1155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1159 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movq	%rax, %rdi	# tmp63,
	call	parse_include	#
	movq	%rax, -8(%rbp)	# tmp64, header
	.loc 1 1160 0
	cmpq	$0, -8(%rbp)	#, header
	jne	.L159	#,
	.loc 1 1161 0
	jmp	.L158	#
.L159:
	.loc 1 1163 0
	movq	-8(%rbp), %rdx	# header, tmp65
	movq	-24(%rbp), %rax	# pfile, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	_cpp_compare_file_date	#
	movl	%eax, -12(%rbp)	# tmp67, ordering
	.loc 1 1164 0
	cmpl	$0, -12(%rbp)	#, ordering
	jns	.L161	#,
	.loc 1 1165 0
	movq	-8(%rbp), %rdx	# header, tmp68
	movq	-24(%rbp), %rax	# pfile, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9336
	movq	-24(%rbp), %rax	# pfile, tmp70
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp70,
	movl	$0, %eax	#,
	call	cpp_warning	#
	jmp	.L158	#
.L161:
	.loc 1 1167 0
	cmpl	$0, -12(%rbp)	#, ordering
	jle	.L158	#,
	.loc 1 1169 0
	movq	-8(%rbp), %rdx	# header, tmp71
	movq	-24(%rbp), %rax	# pfile, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9336
	movq	-24(%rbp), %rax	# pfile, tmp73
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# tmp73,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 1 1171 0
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	%rax, %rdi	# tmp74,
	call	cpp_get_token	#
	movzbl	6(%rax), %eax	# _6->type, D.9338
	cmpb	$67, %al	#, D.9338
	je	.L158	#,
	.loc 1 1173 0
	movq	-24(%rbp), %rax	# pfile, tmp75
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	_cpp_backup_tokens	#
	.loc 1 1174 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	do_diagnostic	#
.L158:
	.loc 1 1177 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	do_pragma_dependency, .-do_pragma_dependency
	.type	get_token_no_padding, @function
get_token_no_padding:
.LFB43:
	.loc 1 1183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
.L165:
.LBB4:
	.loc 1 1186 0
	movq	-24(%rbp), %rax	# pfile, tmp62
	movq	%rax, %rdi	# tmp62,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp63, result
	.loc 1 1187 0
	movq	-8(%rbp), %rax	# result, tmp64
	movzbl	6(%rax), %eax	# result_2->type, D.9341
	cmpb	$66, %al	#, D.9341
	je	.L163	#,
	.loc 1 1188 0
	movq	-8(%rbp), %rax	# result, D.9342
	jmp	.L166	#
.L163:
.LBE4:
	.loc 1 1189 0
	jmp	.L165	#
.L166:
	.loc 1 1190 0 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	get_token_no_padding, .-get_token_no_padding
	.type	get__Pragma_string, @function
get__Pragma_string:
.LFB44:
	.loc 1 1197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1200 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	get_token_no_padding	#
	movzbl	6(%rax), %eax	# _3->type, D.9344
	cmpb	$22, %al	#, D.9344
	je	.L168	#,
	.loc 1 1201 0
	movl	$0, %eax	#, D.9343
	jmp	.L169	#
.L168:
	.loc 1 1203 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movq	%rax, %rdi	# tmp68,
	call	get_token_no_padding	#
	movq	%rax, -8(%rbp)	# tmp69, string
	.loc 1 1204 0
	movq	-8(%rbp), %rax	# string, tmp70
	movzbl	6(%rax), %eax	# string_6->type, D.9344
	cmpb	$61, %al	#, D.9344
	je	.L170	#,
	.loc 1 1204 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# string, tmp71
	movzbl	6(%rax), %eax	# string_6->type, D.9344
	cmpb	$62, %al	#, D.9344
	je	.L170	#,
	.loc 1 1205 0 is_stmt 1
	movl	$0, %eax	#, D.9343
	jmp	.L169	#
.L170:
	.loc 1 1207 0
	movq	-24(%rbp), %rax	# pfile, tmp72
	movq	%rax, %rdi	# tmp72,
	call	get_token_no_padding	#
	movzbl	6(%rax), %eax	# _10->type, D.9344
	cmpb	$23, %al	#, D.9344
	je	.L171	#,
	.loc 1 1208 0
	movl	$0, %eax	#, D.9343
	jmp	.L169	#
.L171:
	.loc 1 1210 0
	movq	-8(%rbp), %rax	# string, D.9343
.L169:
	.loc 1 1211 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	get__Pragma_string, .-get__Pragma_string
	.type	destringize_and_run, @function
destringize_and_run:
.LFB45:
	.loc 1 1219 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# in, in
	.loc 1 1223 0
	movq	-64(%rbp), %rax	# in, tmp77
	movl	(%rax), %eax	# in_4(D)->len, D.9345
	addl	$1, %eax	#, D.9345
	movl	%eax, %eax	# D.9345, D.9346
	leaq	15(%rax), %rdx	#, tmp78
	movl	$16, %eax	#, tmp106
	subq	$1, %rax	#, tmp79
	addq	%rdx, %rax	# tmp78, tmp80
	movl	$16, %ebx	#, tmp107
	movl	$0, %edx	#, tmp83
	divq	%rbx	# tmp107
	imulq	$16, %rax, %rax	#, tmp82, tmp84
	subq	%rax, %rsp	# tmp84,
	movq	%rsp, %rax	#, tmp85
	addq	$15, %rax	#, tmp86
	shrq	$4, %rax	#, tmp87
	salq	$4, %rax	#, tmp88
	movq	%rax, -32(%rbp)	# tmp88, result
	movq	-32(%rbp), %rax	# result, tmp89
	movq	%rax, -40(%rbp)	# tmp89, dest
	.loc 1 1224 0
	movq	-64(%rbp), %rax	# in, tmp90
	movq	8(%rax), %rax	# in_4(D)->text, tmp91
	movq	%rax, -48(%rbp)	# tmp91, src
	movq	-64(%rbp), %rax	# in, tmp92
	movl	(%rax), %eax	# in_4(D)->len, D.9345
	movl	%eax, %edx	# D.9345, D.9347
	movq	-48(%rbp), %rax	# src, tmp96
	addq	%rdx, %rax	# D.9347, tmp95
	movq	%rax, -24(%rbp)	# tmp95, limit
	jmp	.L173	#
.L176:
	.loc 1 1227 0
	movq	-48(%rbp), %rax	# src, tmp97
	movzbl	(%rax), %eax	# *src_2, D.9348
	cmpb	$92, %al	#, D.9348
	jne	.L174	#,
	.loc 1 1227 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# src, tmp98
	addq	$1, %rax	#, D.9349
	movzbl	(%rax), %eax	# *_15, D.9348
	cmpb	$92, %al	#, D.9348
	je	.L175	#,
	movq	-48(%rbp), %rax	# src, tmp99
	addq	$1, %rax	#, D.9349
	movzbl	(%rax), %eax	# *_17, D.9348
	cmpb	$34, %al	#, D.9348
	jne	.L174	#,
.L175:
	.loc 1 1228 0 is_stmt 1
	addq	$1, -48(%rbp)	#, src
.L174:
	.loc 1 1229 0
	movq	-40(%rbp), %rax	# dest, dest.22
	leaq	1(%rax), %rdx	#, tmp100
	movq	%rdx, -40(%rbp)	# tmp100, dest
	movq	-48(%rbp), %rdx	# src, src.23
	leaq	1(%rdx), %rcx	#, tmp101
	movq	%rcx, -48(%rbp)	# tmp101, src
	movzbl	(%rdx), %edx	# *src.23_22, D.9348
	movb	%dl, (%rax)	# D.9350, *dest.22_20
.L173:
	.loc 1 1224 0 discriminator 1
	movq	-48(%rbp), %rax	# src, tmp102
	cmpq	-24(%rbp), %rax	# limit, tmp102
	jb	.L176	#,
	.loc 1 1231 0
	movq	-40(%rbp), %rax	# dest, tmp103
	movb	$0, (%rax)	#, *dest_3
	.loc 1 1233 0
	movq	-40(%rbp), %rdx	# dest, dest.24
	movq	-32(%rbp), %rax	# result, result.25
	subq	%rax, %rdx	# result.25, D.9351
	movq	%rdx, %rax	# D.9351, D.9351
	movq	%rax, %rcx	# D.9351, D.9346
	movq	-32(%rbp), %rdx	# result, tmp104
	movq	-56(%rbp), %rax	# pfile, tmp105
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	run_directive	#
	.loc 1 1234 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	destringize_and_run, .-destringize_and_run
	.section	.rodata
	.align 8
.LC61:
	.string	"_Pragma takes a parenthesized string literal"
	.text
	.globl	_cpp_do__Pragma
	.type	_cpp_do__Pragma, @function
_cpp_do__Pragma:
.LFB46:
	.loc 1 1240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1241 0
	movq	-24(%rbp), %rax	# pfile, tmp61
	movq	%rax, %rdi	# tmp61,
	call	get__Pragma_string	#
	movq	%rax, -8(%rbp)	# tmp62, string
	.loc 1 1243 0
	cmpq	$0, -8(%rbp)	#, string
	jne	.L178	#,
	.loc 1 1244 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movl	$.LC61, %esi	#,
	movq	%rax, %rdi	# tmp63,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L177	#
.L178:
.LBB5:
	.loc 1 1257 0
	movq	-24(%rbp), %rax	# pfile, tmp64
	movl	64(%rax), %eax	# pfile_1(D)->line, tmp65
	movl	%eax, -12(%rbp)	# tmp65, orig_line
	.loc 1 1258 0
	movq	-8(%rbp), %rax	# string, tmp66
	leaq	8(%rax), %rdx	#, D.9353
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rdx, %rsi	# D.9353,
	movq	%rax, %rdi	# tmp67,
	call	destringize_and_run	#
	.loc 1 1259 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movl	-12(%rbp), %edx	# orig_line, tmp69
	movl	%edx, 64(%rax)	# tmp69, pfile_1(D)->line
	.loc 1 1260 0
	movq	-24(%rbp), %rax	# pfile, tmp70
	movq	(%rax), %rax	# pfile_1(D)->buffer, D.9354
	movb	$64, 68(%rax)	#, _5->saved_flags
.L177:
.LBE5:
	.loc 1 1262 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	_cpp_do__Pragma, .-_cpp_do__Pragma
	.type	do_sccs, @function
do_sccs:
.LFB47:
	.loc 1 1269 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 1270 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	do_sccs, .-do_sccs
	.type	do_ifdef, @function
do_ifdef:
.LFB48:
	.loc 1 1277 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1278 0
	movl	$1, -12(%rbp)	#, skip
	.loc 1 1280 0
	movq	-24(%rbp), %rax	# pfile, tmp62
	movzbl	9(%rax), %eax	# pfile_4(D)->state.skipping, D.9356
	testb	%al, %al	# D.9356
	jne	.L182	#,
.LBB6:
	.loc 1 1282 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movq	%rax, %rdi	# tmp63,
	call	lex_macro_node	#
	movq	%rax, -8(%rbp)	# tmp64, node
	.loc 1 1284 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L183	#,
	.loc 1 1285 0
	movq	-8(%rbp), %rax	# node, tmp65
	movzbl	20(%rax), %eax	# node_6->type, D.9356
	cmpb	$1, %al	#, D.9356
	setne	%al	#, D.9357
	movzbl	%al, %eax	# D.9357, tmp66
	movl	%eax, -12(%rbp)	# tmp66, skip
.L183:
	.loc 1 1287 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L182	#,
	.loc 1 1288 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	check_eol	#
.L182:
.LBE6:
	.loc 1 1291 0
	movl	-12(%rbp), %esi	# skip, tmp68
	movq	-24(%rbp), %rax	# pfile, tmp69
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movq	%rax, %rdi	# tmp69,
	call	push_conditional	#
	.loc 1 1292 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	do_ifdef, .-do_ifdef
	.type	do_ifndef, @function
do_ifndef:
.LFB49:
	.loc 1 1298 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1299 0
	movl	$1, -12(%rbp)	#, skip
	.loc 1 1300 0
	movq	$0, -8(%rbp)	#, node
	.loc 1 1302 0
	movq	-24(%rbp), %rax	# pfile, tmp62
	movzbl	9(%rax), %eax	# pfile_6(D)->state.skipping, D.9358
	testb	%al, %al	# D.9358
	jne	.L185	#,
	.loc 1 1304 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movq	%rax, %rdi	# tmp63,
	call	lex_macro_node	#
	movq	%rax, -8(%rbp)	# tmp64, node
	.loc 1 1305 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L186	#,
	.loc 1 1306 0
	movq	-8(%rbp), %rax	# node, tmp65
	movzbl	20(%rax), %eax	# node_8->type, D.9358
	cmpb	$1, %al	#, D.9358
	sete	%al	#, D.9359
	movzbl	%al, %eax	# D.9359, tmp66
	movl	%eax, -12(%rbp)	# tmp66, skip
.L186:
	.loc 1 1308 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L185	#,
	.loc 1 1309 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	check_eol	#
.L185:
	.loc 1 1312 0
	movq	-8(%rbp), %rdx	# node, tmp68
	movl	-12(%rbp), %esi	# skip, tmp69
	movq	-24(%rbp), %rax	# pfile, tmp70
	movq	%rdx, %rcx	# tmp68,
	movl	$6, %edx	#,
	movq	%rax, %rdi	# tmp70,
	call	push_conditional	#
	.loc 1 1313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	do_ifndef, .-do_ifndef
	.type	do_if, @function
do_if:
.LFB50:
	.loc 1 1323 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1324 0
	movl	$1, -4(%rbp)	#, skip
	.loc 1 1326 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movzbl	9(%rax), %eax	# pfile_3(D)->state.skipping, D.9360
	testb	%al, %al	# D.9360
	jne	.L188	#,
	.loc 1 1327 0
	movq	-24(%rbp), %rax	# pfile, tmp64
	movq	%rax, %rdi	# tmp64,
	call	_cpp_parse_expr	#
	testl	%eax, %eax	# D.9361
	sete	%al	#, D.9362
	movzbl	%al, %eax	# D.9362, tmp65
	movl	%eax, -4(%rbp)	# tmp65, skip
.L188:
	.loc 1 1329 0
	movq	-24(%rbp), %rax	# pfile, tmp66
	movq	176(%rax), %rdx	# pfile_3(D)->mi_ind_cmacro, D.9363
	movl	-4(%rbp), %esi	# skip, tmp67
	movq	-24(%rbp), %rax	# pfile, tmp68
	movq	%rdx, %rcx	# D.9363,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp68,
	call	push_conditional	#
	.loc 1 1330 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	do_if, .-do_if
	.section	.rodata
.LC62:
	.string	"#else without #if"
.LC63:
	.string	"#else after #else"
.LC64:
	.string	"the conditional began here"
	.text
	.type	do_else, @function
do_else:
.LFB51:
	.loc 1 1338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1339 0
	movq	-24(%rbp), %rax	# pfile, tmp66
	movq	(%rax), %rax	# pfile_1(D)->buffer, tmp67
	movq	%rax, -16(%rbp)	# tmp67, buffer
	.loc 1 1340 0
	movq	-16(%rbp), %rax	# buffer, tmp68
	movq	56(%rax), %rax	# buffer_2->if_stack, tmp69
	movq	%rax, -8(%rbp)	# tmp69, ifs
	.loc 1 1342 0
	cmpq	$0, -8(%rbp)	#, ifs
	jne	.L190	#,
	.loc 1 1343 0
	movq	-24(%rbp), %rax	# pfile, tmp70
	movl	$.LC62, %esi	#,
	movq	%rax, %rdi	# tmp70,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L190:
	.loc 1 1346 0
	movq	-8(%rbp), %rax	# ifs, tmp71
	movl	28(%rax), %eax	# ifs_3->type, D.9364
	cmpl	$5, %eax	#, D.9364
	jne	.L192	#,
	.loc 1 1348 0
	movq	-24(%rbp), %rax	# pfile, tmp72
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp72,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 1349 0
	movq	-8(%rbp), %rax	# ifs, tmp73
	movl	8(%rax), %eax	# ifs_3->line, D.9365
	movl	%eax, %esi	# D.9365, D.9364
	movq	-24(%rbp), %rax	# pfile, tmp74
	movl	$.LC64, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	cpp_error_with_line	#
.L192:
	.loc 1 1352 0
	movq	-8(%rbp), %rax	# ifs, tmp75
	movl	$5, 28(%rax)	#, ifs_3->type
	.loc 1 1355 0
	movq	-8(%rbp), %rax	# ifs, tmp76
	movzbl	24(%rax), %eax	# ifs_3->skip_elses, D.9366
	movl	%eax, %edx	# D.9366, D.9367
	movq	-24(%rbp), %rax	# pfile, tmp77
	movb	%dl, 9(%rax)	# D.9367, pfile_1(D)->state.skipping
	.loc 1 1356 0
	movq	-8(%rbp), %rax	# ifs, tmp78
	movb	$1, 24(%rax)	#, ifs_3->skip_elses
	.loc 1 1359 0
	movq	-8(%rbp), %rax	# ifs, tmp79
	movq	$0, 16(%rax)	#, ifs_3->mi_cmacro
	.loc 1 1362 0
	movq	-8(%rbp), %rax	# ifs, tmp80
	movzbl	25(%rax), %eax	# ifs_3->was_skipping, D.9366
	xorl	$1, %eax	#, D.9366
	testb	%al, %al	# D.9366
	je	.L189	#,
	.loc 1 1363 0
	movq	-24(%rbp), %rax	# pfile, tmp81
	movq	%rax, %rdi	# tmp81,
	call	check_eol	#
.L189:
	.loc 1 1365 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	do_else, .-do_else
	.section	.rodata
.LC65:
	.string	"#elif without #if"
.LC66:
	.string	"#elif after #else"
	.text
	.type	do_elif, @function
do_elif:
.LFB52:
	.loc 1 1372 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1373 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movq	(%rax), %rax	# pfile_1(D)->buffer, tmp69
	movq	%rax, -16(%rbp)	# tmp69, buffer
	.loc 1 1374 0
	movq	-16(%rbp), %rax	# buffer, tmp70
	movq	56(%rax), %rax	# buffer_2->if_stack, tmp71
	movq	%rax, -8(%rbp)	# tmp71, ifs
	.loc 1 1376 0
	cmpq	$0, -8(%rbp)	#, ifs
	jne	.L194	#,
	.loc 1 1377 0
	movq	-24(%rbp), %rax	# pfile, tmp72
	movl	$.LC65, %esi	#,
	movq	%rax, %rdi	# tmp72,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L193	#
.L194:
	.loc 1 1380 0
	movq	-8(%rbp), %rax	# ifs, tmp73
	movl	28(%rax), %eax	# ifs_3->type, D.9371
	cmpl	$5, %eax	#, D.9371
	jne	.L196	#,
	.loc 1 1382 0
	movq	-24(%rbp), %rax	# pfile, tmp74
	movl	$.LC66, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 1383 0
	movq	-8(%rbp), %rax	# ifs, tmp75
	movl	8(%rax), %eax	# ifs_3->line, D.9372
	movl	%eax, %esi	# D.9372, D.9371
	movq	-24(%rbp), %rax	# pfile, tmp76
	movl	$.LC64, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp76,
	movl	$0, %eax	#,
	call	cpp_error_with_line	#
.L196:
	.loc 1 1386 0
	movq	-8(%rbp), %rax	# ifs, tmp77
	movl	$9, 28(%rax)	#, ifs_3->type
	.loc 1 1390 0
	movq	-8(%rbp), %rax	# ifs, tmp78
	movzbl	24(%rax), %eax	# ifs_3->skip_elses, D.9373
	testb	%al, %al	# D.9373
	je	.L197	#,
	.loc 1 1391 0
	movq	-24(%rbp), %rax	# pfile, tmp79
	movb	$1, 9(%rax)	#, pfile_1(D)->state.skipping
	jmp	.L198	#
.L197:
	.loc 1 1394 0
	movq	-24(%rbp), %rax	# pfile, tmp80
	movb	$0, 9(%rax)	#, pfile_1(D)->state.skipping
	.loc 1 1395 0
	movq	-24(%rbp), %rax	# pfile, tmp81
	movq	%rax, %rdi	# tmp81,
	call	_cpp_parse_expr	#
	testl	%eax, %eax	# D.9371
	sete	%al	#, D.9373
	movl	%eax, %edx	# D.9373, D.9374
	movq	-24(%rbp), %rax	# pfile, tmp82
	movb	%dl, 9(%rax)	# D.9374, pfile_1(D)->state.skipping
	.loc 1 1396 0
	movq	-24(%rbp), %rax	# pfile, tmp83
	movzbl	9(%rax), %eax	# pfile_1(D)->state.skipping, D.9374
	testb	%al, %al	# D.9374
	sete	%dl	#, D.9373
	movq	-8(%rbp), %rax	# ifs, tmp84
	movb	%dl, 24(%rax)	# D.9373, ifs_3->skip_elses
.L198:
	.loc 1 1400 0
	movq	-8(%rbp), %rax	# ifs, tmp85
	movq	$0, 16(%rax)	#, ifs_3->mi_cmacro
.L193:
	.loc 1 1402 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	do_elif, .-do_elif
	.section	.rodata
.LC67:
	.string	"#endif without #if"
	.text
	.type	do_endif, @function
do_endif:
.LFB53:
	.loc 1 1408 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	.loc 1 1409 0
	movq	-40(%rbp), %rax	# pfile, tmp70
	movq	(%rax), %rax	# pfile_1(D)->buffer, tmp71
	movq	%rax, -32(%rbp)	# tmp71, buffer
	.loc 1 1410 0
	movq	-32(%rbp), %rax	# buffer, tmp72
	movq	56(%rax), %rax	# buffer_2->if_stack, tmp73
	movq	%rax, -24(%rbp)	# tmp73, ifs
	.loc 1 1412 0
	cmpq	$0, -24(%rbp)	#, ifs
	jne	.L200	#,
	.loc 1 1413 0
	movq	-40(%rbp), %rax	# pfile, tmp74
	movl	$.LC67, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L199	#
.L200:
	.loc 1 1417 0
	movq	-24(%rbp), %rax	# ifs, tmp75
	movzbl	25(%rax), %eax	# ifs_3->was_skipping, D.9377
	xorl	$1, %eax	#, D.9377
	testb	%al, %al	# D.9377
	je	.L202	#,
	.loc 1 1418 0
	movq	-40(%rbp), %rax	# pfile, tmp76
	movq	%rax, %rdi	# tmp76,
	call	check_eol	#
.L202:
	.loc 1 1421 0
	movq	-24(%rbp), %rax	# ifs, tmp77
	movq	(%rax), %rax	# ifs_3->next, D.9378
	testq	%rax, %rax	# D.9378
	jne	.L203	#,
	.loc 1 1421 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ifs, tmp78
	movq	16(%rax), %rax	# ifs_3->mi_cmacro, D.9379
	testq	%rax, %rax	# D.9379
	je	.L203	#,
	.loc 1 1423 0 is_stmt 1
	movq	-40(%rbp), %rax	# pfile, tmp79
	movb	$1, 184(%rax)	#, pfile_1(D)->mi_valid
	.loc 1 1424 0
	movq	-24(%rbp), %rax	# ifs, tmp80
	movq	16(%rax), %rdx	# ifs_3->mi_cmacro, D.9379
	movq	-40(%rbp), %rax	# pfile, tmp81
	movq	%rdx, 168(%rax)	# D.9379, pfile_1(D)->mi_cmacro
.L203:
	.loc 1 1427 0
	movq	-24(%rbp), %rax	# ifs, tmp82
	movq	(%rax), %rdx	# ifs_3->next, D.9378
	movq	-32(%rbp), %rax	# buffer, tmp83
	movq	%rdx, 56(%rax)	# D.9378, buffer_2->if_stack
	.loc 1 1428 0
	movq	-24(%rbp), %rax	# ifs, tmp84
	movzbl	25(%rax), %eax	# ifs_3->was_skipping, D.9377
	movl	%eax, %edx	# D.9377, D.9380
	movq	-40(%rbp), %rax	# pfile, tmp85
	movb	%dl, 9(%rax)	# D.9380, pfile_1(D)->state.skipping
.LBB7:
	.loc 1 1429 0
	movq	-40(%rbp), %rax	# pfile, tmp89
	addq	$488, %rax	#, tmp88
	movq	%rax, -16(%rbp)	# tmp88, __o
	movq	-24(%rbp), %rax	# ifs, tmp90
	movq	%rax, -8(%rbp)	# tmp90, __obj
	movq	-16(%rbp), %rax	# __o, tmp91
	movq	8(%rax), %rax	# __o_12->chunk, D.9381
	cmpq	-8(%rbp), %rax	# __obj, D.9381
	jae	.L204	#,
	.loc 1 1429 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp92
	movq	32(%rax), %rax	# __o_12->chunk_limit, D.9382
	cmpq	-8(%rbp), %rax	# __obj, D.9382
	jbe	.L204	#,
	movq	-16(%rbp), %rax	# __o, tmp93
	movq	-8(%rbp), %rdx	# __obj, tmp94
	movq	%rdx, 16(%rax)	# tmp94, __o_12->object_base
	movq	-16(%rbp), %rax	# __o, tmp95
	movq	16(%rax), %rdx	# __o_12->object_base, D.9382
	movq	-16(%rbp), %rax	# __o, tmp96
	movq	%rdx, 24(%rax)	# D.9382, __o_12->next_free
	jmp	.L199	#
.L204:
	.loc 1 1429 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp97
	movq	-16(%rbp), %rax	# __o, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	obstack_free	#
.L199:
.LBE7:
	.loc 1 1431 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	do_endif, .-do_endif
	.type	push_conditional, @function
push_conditional:
.LFB54:
	.loc 1 1443 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# pfile, pfile
	movl	%esi, -76(%rbp)	# skip, skip
	movl	%edx, -80(%rbp)	# type, type
	movq	%rcx, -88(%rbp)	# cmacro, cmacro
	.loc 1 1445 0
	movq	-72(%rbp), %rax	# pfile, tmp103
	movq	(%rax), %rax	# pfile_2(D)->buffer, tmp104
	movq	%rax, -48(%rbp)	# tmp104, buffer
.LBB8:
	.loc 1 1447 0
	movq	-72(%rbp), %rax	# pfile, tmp108
	addq	$488, %rax	#, tmp107
	movq	%rax, -40(%rbp)	# tmp107, __h
.LBB9:
	movq	-40(%rbp), %rax	# __h, tmp109
	movq	%rax, -32(%rbp)	# tmp109, __o
	movl	$32, -52(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp110
	movq	32(%rax), %rax	# __o_5->chunk_limit, D.9384
	movq	%rax, %rdx	# D.9384, D.9385
	movq	-32(%rbp), %rax	# __o, tmp111
	movq	24(%rax), %rax	# __o_5->next_free, D.9384
	subq	%rax, %rdx	# D.9385, D.9385
	movl	-52(%rbp), %eax	# __len, tmp112
	cltq
	cmpq	%rax, %rdx	# D.9385, D.9385
	jge	.L206	#,
	.loc 1 1447 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %edx	# __len, tmp113
	movq	-32(%rbp), %rax	# __o, tmp114
	movl	%edx, %esi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	_obstack_newchunk	#
.L206:
	.loc 1 1447 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp115
	movq	24(%rax), %rdx	# __o_5->next_free, D.9384
	movl	-52(%rbp), %eax	# __len, tmp116
	cltq
	addq	%rax, %rdx	# D.9386, D.9384
	movq	-32(%rbp), %rax	# __o, tmp117
	movq	%rdx, 24(%rax)	# D.9384, __o_5->next_free
.LBE9:
.LBB10:
	movq	-40(%rbp), %rax	# __h, tmp118
	movq	%rax, -24(%rbp)	# tmp118, __o1
	movq	-24(%rbp), %rax	# __o1, tmp119
	movq	16(%rax), %rax	# __o1_16->object_base, tmp120
	movq	%rax, -16(%rbp)	# tmp120, value
	movq	-24(%rbp), %rax	# __o1, tmp121
	movq	24(%rax), %rax	# __o1_16->next_free, D.9384
	cmpq	-16(%rbp), %rax	# value, D.9384
	jne	.L207	#,
	.loc 1 1447 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp122
	movzbl	80(%rax), %edx	# __o1_16->maybe_empty_object, tmp125
	orl	$2, %edx	#, tmp126
	movb	%dl, 80(%rax)	# tmp126, __o1_16->maybe_empty_object
.L207:
	.loc 1 1447 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp127
	movq	24(%rax), %rax	# __o1_16->next_free, D.9384
	movq	%rax, %rdx	# D.9384, D.9385
	movq	-24(%rbp), %rax	# __o1, tmp128
	movl	48(%rax), %eax	# __o1_16->alignment_mask, D.9387
	cltq
	addq	%rax, %rdx	# D.9385, D.9385
	movq	-24(%rbp), %rax	# __o1, tmp129
	movl	48(%rax), %eax	# __o1_16->alignment_mask, D.9387
	notl	%eax	# D.9387
	cltq
	andq	%rdx, %rax	# D.9385, D.9385
	movq	%rax, %rdx	# D.9385, D.9384
	movq	-24(%rbp), %rax	# __o1, tmp130
	movq	%rdx, 24(%rax)	# D.9384, __o1_16->next_free
	movq	-24(%rbp), %rax	# __o1, tmp131
	movq	24(%rax), %rax	# __o1_16->next_free, D.9384
	movq	%rax, %rdx	# D.9384, D.9385
	movq	-24(%rbp), %rax	# __o1, tmp132
	movq	8(%rax), %rax	# __o1_16->chunk, D.9388
	movq	%rdx, %rcx	# D.9385, D.9385
	subq	%rax, %rcx	# D.9385, D.9385
	movq	-24(%rbp), %rax	# __o1, tmp133
	movq	32(%rax), %rax	# __o1_16->chunk_limit, D.9384
	movq	%rax, %rdx	# D.9384, D.9385
	movq	-24(%rbp), %rax	# __o1, tmp134
	movq	8(%rax), %rax	# __o1_16->chunk, D.9388
	subq	%rax, %rdx	# D.9385, D.9385
	movq	%rdx, %rax	# D.9385, D.9385
	cmpq	%rax, %rcx	# D.9385, D.9385
	jle	.L208	#,
	.loc 1 1447 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp135
	movq	32(%rax), %rdx	# __o1_16->chunk_limit, D.9384
	movq	-24(%rbp), %rax	# __o1, tmp136
	movq	%rdx, 24(%rax)	# D.9384, __o1_16->next_free
.L208:
	.loc 1 1447 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp137
	movq	24(%rax), %rdx	# __o1_16->next_free, D.9384
	movq	-24(%rbp), %rax	# __o1, tmp138
	movq	%rdx, 16(%rax)	# D.9384, __o1_16->object_base
	movq	-16(%rbp), %rax	# value, D.9389
.LBE10:
.LBE8:
	movq	%rax, -8(%rbp)	# ifs.26, ifs
	.loc 1 1448 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# pfile, tmp139
	movl	68(%rax), %edx	# pfile_2(D)->directive_line, D.9390
	movq	-8(%rbp), %rax	# ifs, tmp140
	movl	%edx, 8(%rax)	# D.9390, ifs_43->line
	.loc 1 1449 0 discriminator 2
	movq	-48(%rbp), %rax	# buffer, tmp141
	movq	56(%rax), %rdx	# buffer_3->if_stack, D.9391
	movq	-8(%rbp), %rax	# ifs, tmp142
	movq	%rdx, (%rax)	# D.9391, ifs_43->next
	.loc 1 1450 0 discriminator 2
	movq	-72(%rbp), %rax	# pfile, tmp143
	movzbl	9(%rax), %eax	# pfile_2(D)->state.skipping, D.9392
	testb	%al, %al	# D.9392
	jne	.L209	#,
	cmpl	$0, -76(%rbp)	#, skip
	jne	.L210	#,
.L209:
	.loc 1 1450 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.27
	jmp	.L211	#
.L210:
	.loc 1 1450 0 discriminator 3
	movl	$0, %eax	#, iftmp.27
.L211:
	.loc 1 1450 0 discriminator 4
	andl	$1, %eax	#, D.9393
	movq	-8(%rbp), %rdx	# ifs, tmp144
	movb	%al, 24(%rdx)	# D.9393, ifs_43->skip_elses
	.loc 1 1451 0 is_stmt 1 discriminator 4
	movq	-72(%rbp), %rax	# pfile, tmp145
	movzbl	9(%rax), %eax	# pfile_2(D)->state.skipping, D.9392
	testb	%al, %al	# D.9392
	setne	%dl	#, D.9393
	movq	-8(%rbp), %rax	# ifs, tmp146
	movb	%dl, 25(%rax)	# D.9393, ifs_43->was_skipping
	.loc 1 1452 0 discriminator 4
	movq	-8(%rbp), %rax	# ifs, tmp147
	movl	-80(%rbp), %edx	# type, tmp148
	movl	%edx, 28(%rax)	# tmp148, ifs_43->type
	.loc 1 1454 0 discriminator 4
	movq	-72(%rbp), %rax	# pfile, tmp149
	movzbl	184(%rax), %eax	# pfile_2(D)->mi_valid, D.9393
	testb	%al, %al	# D.9393
	je	.L212	#,
	.loc 1 1454 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp150
	movq	168(%rax), %rax	# pfile_2(D)->mi_cmacro, D.9394
	testq	%rax, %rax	# D.9394
	jne	.L212	#,
	.loc 1 1455 0 is_stmt 1
	movq	-8(%rbp), %rax	# ifs, tmp151
	movq	-88(%rbp), %rdx	# cmacro, tmp152
	movq	%rdx, 16(%rax)	# tmp152, ifs_43->mi_cmacro
	jmp	.L213	#
.L212:
	.loc 1 1457 0
	movq	-8(%rbp), %rax	# ifs, tmp153
	movq	$0, 16(%rax)	#, ifs_43->mi_cmacro
.L213:
	.loc 1 1459 0
	movl	-76(%rbp), %eax	# skip, tmp154
	movl	%eax, %edx	# tmp154, D.9392
	movq	-72(%rbp), %rax	# pfile, tmp155
	movb	%dl, 9(%rax)	# D.9392, pfile_2(D)->state.skipping
	.loc 1 1460 0
	movq	-48(%rbp), %rax	# buffer, tmp156
	movq	-8(%rbp), %rdx	# ifs, tmp157
	movq	%rdx, 56(%rax)	# tmp157, buffer_3->if_stack
	.loc 1 1461 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	push_conditional, .-push_conditional
	.section	.rodata
.LC68:
	.string	"missing '(' after predicate"
	.align 8
.LC69:
	.string	"missing ')' to complete answer"
.LC70:
	.string	"predicate's answer is empty"
	.text
	.type	parse_answer, @function
parse_answer:
.LFB55:
	.loc 1 1472 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# answerp, answerp
	movl	%edx, -68(%rbp)	# type, type
	.loc 1 1479 0
	movq	-56(%rbp), %rax	# pfile, tmp81
	movq	%rax, %rdi	# tmp81,
	call	cpp_get_token	#
	movq	%rax, -40(%rbp)	# tmp82, paren
	.loc 1 1482 0
	movq	-40(%rbp), %rax	# paren, tmp83
	movzbl	6(%rax), %eax	# paren_4->type, D.9396
	cmpb	$22, %al	#, D.9396
	je	.L215	#,
	.loc 1 1486 0
	cmpl	$4, -68(%rbp)	#, type
	jne	.L216	#,
	.loc 1 1488 0
	movq	-56(%rbp), %rax	# pfile, tmp84
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	_cpp_backup_tokens	#
	.loc 1 1489 0
	movl	$0, %eax	#, D.9395
	jmp	.L217	#
.L216:
	.loc 1 1493 0
	cmpl	$17, -68(%rbp)	#, type
	jne	.L218	#,
	.loc 1 1493 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# paren, tmp85
	movzbl	6(%rax), %eax	# paren_4->type, D.9396
	cmpb	$67, %al	#, D.9396
	jne	.L218	#,
	.loc 1 1494 0 is_stmt 1
	movl	$0, %eax	#, D.9395
	jmp	.L217	#
.L218:
	.loc 1 1496 0
	movq	-56(%rbp), %rax	# pfile, tmp86
	movl	$.LC68, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 1497 0
	movl	$1, %eax	#, D.9395
	jmp	.L217	#
.L215:
	.loc 1 1500 0
	movl	$0, -44(%rbp)	#, acount
.L224:
.LBB11:
	.loc 1 1503 0
	movq	-56(%rbp), %rax	# pfile, tmp87
	movq	%rax, %rdi	# tmp87,
	call	cpp_get_token	#
	movq	%rax, -32(%rbp)	# tmp88, token
	.loc 1 1506 0
	movq	-32(%rbp), %rax	# token, tmp89
	movzbl	6(%rax), %eax	# token_12->type, D.9396
	cmpb	$23, %al	#, D.9396
	jne	.L219	#,
	.loc 1 1507 0
	nop
.LBE11:
	.loc 1 1529 0
	cmpl	$0, -44(%rbp)	#, acount
	jne	.L225	#,
	jmp	.L226	#
.L219:
.LBB12:
	.loc 1 1509 0
	movq	-32(%rbp), %rax	# token, tmp90
	movzbl	6(%rax), %eax	# token_12->type, D.9396
	cmpb	$67, %al	#, D.9396
	jne	.L221	#,
	.loc 1 1511 0
	movq	-56(%rbp), %rax	# pfile, tmp91
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 1512 0
	movl	$1, %eax	#, D.9395
	jmp	.L217	#
.L221:
	.loc 1 1516 0
	movl	-44(%rbp), %edx	# acount, D.9398
	movq	%rdx, %rax	# D.9398, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# D.9398, tmp92
	salq	$3, %rax	#, tmp93
	addq	$40, %rax	#, tmp94
	movq	%rax, -16(%rbp)	# tmp94, room_needed
	.loc 1 1518 0
	movq	-56(%rbp), %rax	# pfile, tmp95
	movq	72(%rax), %rax	# pfile_3(D)->a_buff, D.9397
	movq	24(%rax), %rax	# _24->limit, D.9399
	movq	%rax, %rdx	# D.9399, D.9400
	movq	-56(%rbp), %rax	# pfile, tmp96
	movq	72(%rax), %rax	# pfile_3(D)->a_buff, D.9397
	movq	16(%rax), %rax	# _27->cur, D.9399
	subq	%rax, %rdx	# D.9400, D.9400
	movq	%rdx, %rax	# D.9400, D.9400
	cmpq	-16(%rbp), %rax	# room_needed, D.9398
	jae	.L222	#,
	.loc 1 1519 0
	movq	-56(%rbp), %rax	# pfile, tmp97
	leaq	72(%rax), %rcx	#, D.9401
	movq	-56(%rbp), %rax	# pfile, tmp98
	movl	$40, %edx	#,
	movq	%rcx, %rsi	# D.9401,
	movq	%rax, %rdi	# tmp98,
	call	_cpp_extend_buff	#
.L222:
	.loc 1 1521 0
	movq	-56(%rbp), %rax	# pfile, tmp99
	movq	72(%rax), %rax	# pfile_3(D)->a_buff, D.9397
	movq	16(%rax), %rcx	# _33->cur, D.9399
	movl	-44(%rbp), %edx	# acount, tmp100
	movq	%rdx, %rax	# tmp100, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# tmp100, tmp101
	salq	$3, %rax	#, tmp102
	addq	$16, %rax	#, tmp103
	addq	%rcx, %rax	# D.9399, tmp104
	movq	%rax, -8(%rbp)	# tmp104, dest
	.loc 1 1522 0
	movq	-8(%rbp), %rax	# dest, tmp105
	movq	-32(%rbp), %rdx	# token, tmp106
	movq	(%rdx), %rcx	# *token_12, tmp107
	movq	%rcx, (%rax)	# tmp107, *dest_35
	movq	8(%rdx), %rcx	# *token_12, tmp108
	movq	%rcx, 8(%rax)	# tmp108, *dest_35
	movq	16(%rdx), %rdx	# *token_12, tmp109
	movq	%rdx, 16(%rax)	# tmp109, *dest_35
	.loc 1 1525 0
	cmpl	$0, -44(%rbp)	#, acount
	jne	.L223	#,
	.loc 1 1526 0
	movq	-8(%rbp), %rax	# dest, tmp110
	movzbl	7(%rax), %eax	# dest_35->flags, D.9396
	andl	$-2, %eax	#, D.9396
	movl	%eax, %edx	# D.9396, D.9396
	movq	-8(%rbp), %rax	# dest, tmp111
	movb	%dl, 7(%rax)	# D.9396, dest_35->flags
.L223:
.LBE12:
	.loc 1 1500 0
	addl	$1, -44(%rbp)	#, acount
	.loc 1 1527 0
	jmp	.L224	#
.L226:
	.loc 1 1531 0
	movq	-56(%rbp), %rax	# pfile, tmp112
	movl	$.LC70, %esi	#,
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 1532 0
	movl	$1, %eax	#, D.9395
	jmp	.L217	#
.L225:
	.loc 1 1535 0
	movq	-56(%rbp), %rax	# pfile, tmp113
	movq	72(%rax), %rax	# pfile_3(D)->a_buff, D.9397
	movq	16(%rax), %rax	# _15->cur, tmp114
	movq	%rax, -24(%rbp)	# tmp114, answer
	.loc 1 1536 0
	movq	-24(%rbp), %rax	# answer, tmp115
	movl	-44(%rbp), %edx	# acount, tmp116
	movl	%edx, 8(%rax)	# tmp116, answer_16->count
	.loc 1 1537 0
	movq	-24(%rbp), %rax	# answer, tmp117
	movq	$0, (%rax)	#, answer_16->next
	.loc 1 1538 0
	movq	-64(%rbp), %rax	# answerp, tmp118
	movq	-24(%rbp), %rdx	# answer, tmp119
	movq	%rdx, (%rax)	# tmp119, *answerp_17(D)
	.loc 1 1540 0
	movl	$0, %eax	#, D.9395
.L217:
	.loc 1 1541 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	parse_answer, .-parse_answer
	.section	.rodata
.LC71:
	.string	"assertion without predicate"
	.align 8
.LC72:
	.string	"predicate must be an identifier"
	.text
	.type	parse_assertion, @function
parse_assertion:
.LFB56:
	.loc 1 1551 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# answerp, answerp
	movl	%edx, -68(%rbp)	# type, type
	.loc 1 1552 0
	movq	$0, -40(%rbp)	#, result
	.loc 1 1556 0
	movq	-56(%rbp), %rax	# pfile, tmp76
	movzbl	15(%rax), %eax	# pfile_3(D)->state.prevent_expansion, D.9405
	leal	1(%rax), %edx	#, D.9405
	movq	-56(%rbp), %rax	# pfile, tmp77
	movb	%dl, 15(%rax)	# D.9405, pfile_3(D)->state.prevent_expansion
	.loc 1 1558 0
	movq	-64(%rbp), %rax	# answerp, tmp78
	movq	$0, (%rax)	#, *answerp_7(D)
	.loc 1 1559 0
	movq	-56(%rbp), %rax	# pfile, tmp79
	movq	%rax, %rdi	# tmp79,
	call	cpp_get_token	#
	movq	%rax, -32(%rbp)	# tmp80, predicate
	.loc 1 1560 0
	movq	-32(%rbp), %rax	# predicate, tmp81
	movzbl	6(%rax), %eax	# predicate_8->type, D.9405
	cmpb	$67, %al	#, D.9405
	jne	.L228	#,
	.loc 1 1561 0
	movq	-56(%rbp), %rax	# pfile, tmp82
	movl	$.LC71, %esi	#,
	movq	%rax, %rdi	# tmp82,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L229	#
.L228:
	.loc 1 1562 0
	movq	-32(%rbp), %rax	# predicate, tmp83
	movzbl	6(%rax), %eax	# predicate_8->type, D.9405
	cmpb	$56, %al	#, D.9405
	je	.L230	#,
	.loc 1 1563 0
	movq	-56(%rbp), %rax	# pfile, tmp84
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp84,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L229	#
.L230:
	.loc 1 1564 0
	movl	-68(%rbp), %edx	# type, tmp85
	movq	-64(%rbp), %rcx	# answerp, tmp86
	movq	-56(%rbp), %rax	# pfile, tmp87
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	parse_answer	#
	testl	%eax, %eax	# D.9406
	jne	.L229	#,
.LBB13:
	.loc 1 1566 0
	movq	-32(%rbp), %rax	# predicate, tmp88
	movq	8(%rax), %rax	# predicate_8->val.node, D.9407
	movl	(%rax), %eax	# _13->ident.len, tmp89
	movl	%eax, -44(%rbp)	# tmp89, len
	.loc 1 1567 0
	movl	-44(%rbp), %eax	# len, tmp90
	addl	$1, %eax	#, D.9408
	movl	%eax, %eax	# D.9408, D.9409
	leaq	15(%rax), %rdx	#, tmp91
	movl	$16, %eax	#, tmp112
	subq	$1, %rax	#, tmp92
	addq	%rdx, %rax	# tmp91, tmp93
	movl	$16, %ebx	#, tmp113
	movl	$0, %edx	#, tmp96
	divq	%rbx	# tmp113
	imulq	$16, %rax, %rax	#, tmp95, tmp97
	subq	%rax, %rsp	# tmp97,
	movq	%rsp, %rax	#, tmp98
	addq	$15, %rax	#, tmp99
	shrq	$4, %rax	#, tmp100
	salq	$4, %rax	#, tmp101
	movq	%rax, -24(%rbp)	# tmp101, sym
	.loc 1 1570 0
	movq	-24(%rbp), %rax	# sym, tmp102
	movb	$35, (%rax)	#, *sym_17
	.loc 1 1571 0
	movl	-44(%rbp), %edx	# len, D.9409
	movq	-32(%rbp), %rax	# predicate, tmp103
	movq	8(%rax), %rax	# predicate_8->val.node, D.9407
	movq	8(%rax), %rax	# _19->ident.str, D.9410
	movq	-24(%rbp), %rcx	# sym, tmp104
	addq	$1, %rcx	#, D.9411
	movq	%rax, %rsi	# D.9410,
	movq	%rcx, %rdi	# D.9411,
	call	memcpy	#
	.loc 1 1572 0
	movl	-44(%rbp), %eax	# len, tmp105
	leal	1(%rax), %edx	#, D.9408
	movq	-24(%rbp), %rcx	# sym, tmp106
	movq	-56(%rbp), %rax	# pfile, tmp107
	movq	%rcx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	cpp_lookup	#
	movq	%rax, -40(%rbp)	# tmp108, result
.L229:
.LBE13:
	.loc 1 1575 0
	movq	-56(%rbp), %rax	# pfile, tmp109
	movzbl	15(%rax), %eax	# pfile_3(D)->state.prevent_expansion, D.9405
	leal	-1(%rax), %edx	#, D.9405
	movq	-56(%rbp), %rax	# pfile, tmp110
	movb	%dl, 15(%rax)	# D.9405, pfile_3(D)->state.prevent_expansion
	.loc 1 1576 0
	movq	-40(%rbp), %rax	# result, D.9407
	.loc 1 1577 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	parse_assertion, .-parse_assertion
	.type	find_answer, @function
find_answer:
.LFB57:
	.loc 1 1585 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# node, node
	movq	%rsi, -48(%rbp)	# candidate, candidate
	.loc 1 1589 0
	movq	-40(%rbp), %rax	# node, tmp73
	addq	$24, %rax	#, tmp72
	movq	%rax, -16(%rbp)	# tmp72, result
	jmp	.L233	#
.L240:
.LBB14:
	.loc 1 1591 0
	movq	-16(%rbp), %rax	# result, tmp74
	movq	(%rax), %rax	# *result_2, tmp75
	movq	%rax, -8(%rbp)	# tmp75, answer
	.loc 1 1593 0
	movq	-8(%rbp), %rax	# answer, tmp76
	movl	8(%rax), %edx	# answer_6->count, D.9415
	movq	-48(%rbp), %rax	# candidate, tmp77
	movl	8(%rax), %eax	# candidate_8(D)->count, D.9415
	cmpl	%eax, %edx	# D.9415, D.9415
	jne	.L234	#,
	.loc 1 1595 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L235	#
.L238:
	.loc 1 1596 0
	movl	-20(%rbp), %edx	# i, tmp78
	movq	%rdx, %rax	# tmp78, tmp79
	addq	%rax, %rax	# tmp79
	addq	%rdx, %rax	# tmp78, tmp79
	salq	$3, %rax	#, tmp80
	leaq	16(%rax), %rdx	#, tmp81
	movq	-48(%rbp), %rax	# candidate, tmp82
	leaq	(%rdx,%rax), %rcx	#, D.9416
	movl	-20(%rbp), %edx	# i, tmp83
	movq	%rdx, %rax	# tmp83, tmp84
	addq	%rax, %rax	# tmp84
	addq	%rdx, %rax	# tmp83, tmp84
	salq	$3, %rax	#, tmp85
	leaq	16(%rax), %rdx	#, tmp86
	movq	-8(%rbp), %rax	# answer, tmp87
	addq	%rdx, %rax	# tmp86, D.9417
	movq	%rcx, %rsi	# D.9416,
	movq	%rax, %rdi	# D.9417,
	call	_cpp_equiv_tokens	#
	testl	%eax, %eax	# D.9418
	jne	.L236	#,
	.loc 1 1597 0
	jmp	.L237	#
.L236:
	.loc 1 1595 0
	addl	$1, -20(%rbp)	#, i
.L235:
	.loc 1 1595 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# answer, tmp88
	movl	8(%rax), %eax	# answer_6->count, D.9415
	cmpl	-20(%rbp), %eax	# i, D.9415
	ja	.L238	#,
.L237:
	.loc 1 1599 0 is_stmt 1
	movq	-8(%rbp), %rax	# answer, tmp89
	movl	8(%rax), %eax	# answer_6->count, D.9415
	cmpl	-20(%rbp), %eax	# i, D.9415
	jne	.L234	#,
	.loc 1 1600 0
	jmp	.L239	#
.L234:
.LBE14:
	.loc 1 1589 0
	movq	-16(%rbp), %rax	# result, tmp90
	movq	(%rax), %rax	# *result_2, D.9414
	movq	%rax, -16(%rbp)	# D.9414, result
.L233:
	.loc 1 1589 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# result, tmp91
	movq	(%rax), %rax	# *result_2, D.9414
	testq	%rax, %rax	# D.9414
	jne	.L240	#,
.L239:
	.loc 1 1604 0 is_stmt 1
	movq	-16(%rbp), %rax	# result, D.9419
	.loc 1 1605 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	find_answer, .-find_answer
	.globl	_cpp_test_assertion
	.type	_cpp_test_assertion, @function
_cpp_test_assertion:
.LFB58:
	.loc 1 1614 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# value, value
	.loc 1 1618 0
	leaq	-16(%rbp), %rcx	#, tmp68
	movq	-24(%rbp), %rax	# pfile, tmp69
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	parse_assertion	#
	movq	%rax, -8(%rbp)	# tmp70, node
	.loc 1 1619 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L243	#,
	.loc 1 1620 0
	movq	-8(%rbp), %rax	# node, tmp71
	movzbl	20(%rax), %eax	# node_3->type, D.9420
	cmpb	$2, %al	#, D.9420
	jne	.L244	#,
	.loc 1 1621 0 discriminator 1
	movq	-16(%rbp), %rax	# answer, answer.29
	.loc 1 1620 0 discriminator 1
	testq	%rax, %rax	# answer.29
	je	.L245	#,
	.loc 1 1621 0
	movq	-16(%rbp), %rdx	# answer, answer.30
	movq	-8(%rbp), %rax	# node, tmp72
	movq	%rdx, %rsi	# answer.30,
	movq	%rax, %rdi	# tmp72,
	call	find_answer	#
	movq	(%rax), %rax	# *_7, D.9422
	testq	%rax, %rax	# D.9422
	je	.L244	#,
.L245:
	.loc 1 1620 0 discriminator 3
	movl	$1, %eax	#, iftmp.28
	jmp	.L246	#
.L244:
	.loc 1 1620 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.28
.L246:
	.loc 1 1620 0 discriminator 4
	movq	-32(%rbp), %rdx	# value, tmp73
	movl	%eax, (%rdx)	# iftmp.28, *value_11(D)
.L243:
	.loc 1 1624 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, node
	sete	%al	#, D.9423
	movzbl	%al, %eax	# D.9423, D.9424
	.loc 1 1625 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	_cpp_test_assertion, .-_cpp_test_assertion
	.section	.rodata
.LC73:
	.string	"\"%s\" re-asserted"
	.text
	.type	do_assert, @function
do_assert:
.LFB59:
	.loc 1 1631 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1635 0
	leaq	-16(%rbp), %rcx	#, tmp79
	movq	-24(%rbp), %rax	# pfile, tmp80
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	parse_assertion	#
	movq	%rax, -8(%rbp)	# tmp81, node
	.loc 1 1636 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L248	#,
	.loc 1 1640 0
	movq	-16(%rbp), %rax	# new_answer, new_answer.31
	movq	$0, (%rax)	#, new_answer.31_3->next
	.loc 1 1641 0
	movq	-8(%rbp), %rax	# node, tmp82
	movzbl	20(%rax), %eax	# node_2->type, D.9425
	cmpb	$2, %al	#, D.9425
	jne	.L250	#,
	.loc 1 1643 0
	movq	-16(%rbp), %rdx	# new_answer, new_answer.32
	movq	-8(%rbp), %rax	# node, tmp83
	movq	%rdx, %rsi	# new_answer.32,
	movq	%rax, %rdi	# tmp83,
	call	find_answer	#
	movq	(%rax), %rax	# *_6, D.9427
	testq	%rax, %rax	# D.9427
	je	.L251	#,
	.loc 1 1645 0
	movq	-8(%rbp), %rax	# node, tmp84
	movq	8(%rax), %rax	# node_2->ident.str, D.9428
	leaq	1(%rax), %rdx	#, D.9428
	movq	-24(%rbp), %rax	# pfile, tmp85
	movl	$.LC73, %esi	#,
	movq	%rax, %rdi	# tmp85,
	movl	$0, %eax	#,
	call	cpp_warning	#
	jmp	.L248	#
.L251:
	.loc 1 1648 0
	movq	-16(%rbp), %rax	# new_answer, new_answer.33
	movq	-8(%rbp), %rdx	# node, tmp86
	movq	24(%rdx), %rdx	# node_2->value.answers, D.9427
	movq	%rdx, (%rax)	# D.9427, new_answer.33_10->next
.L250:
	.loc 1 1651 0
	movq	-8(%rbp), %rax	# node, tmp87
	movb	$2, 20(%rax)	#, node_2->type
	.loc 1 1652 0
	movq	-16(%rbp), %rdx	# new_answer, new_answer.34
	movq	-8(%rbp), %rax	# node, tmp88
	movq	%rdx, 24(%rax)	# new_answer.34, node_2->value.answers
	.loc 1 1653 0
	movq	-24(%rbp), %rax	# pfile, tmp89
	movq	72(%rax), %rcx	# pfile_1(D)->a_buff, D.9429
	movq	-24(%rbp), %rax	# pfile, tmp90
	movq	72(%rax), %rax	# pfile_1(D)->a_buff, D.9429
	movq	16(%rax), %rsi	# _14->cur, D.9430
	.loc 1 1654 0
	movq	-16(%rbp), %rax	# new_answer, new_answer.35
	movl	8(%rax), %eax	# new_answer.35_16->count, D.9431
	subl	$1, %eax	#, D.9431
	.loc 1 1655 0
	movl	%eax, %edx	# D.9431, D.9432
	movq	%rdx, %rax	# D.9432, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# D.9432, tmp91
	salq	$3, %rax	#, tmp92
	.loc 1 1653 0
	addq	$40, %rax	#, D.9432
	addq	%rsi, %rax	# D.9430, D.9430
	movq	%rax, 16(%rcx)	# D.9430, _13->cur
	.loc 1 1656 0
	movq	-24(%rbp), %rax	# pfile, tmp93
	movq	%rax, %rdi	# tmp93,
	call	check_eol	#
.L248:
	.loc 1 1658 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	do_assert, .-do_assert
	.type	do_unassert, @function
do_unassert:
.LFB60:
	.loc 1 1664 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	.loc 1 1668 0
	leaq	-32(%rbp), %rcx	#, tmp64
	movq	-40(%rbp), %rax	# pfile, tmp65
	movl	$17, %edx	#,
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	parse_assertion	#
	movq	%rax, -24(%rbp)	# tmp66, node
	.loc 1 1670 0
	cmpq	$0, -24(%rbp)	#, node
	je	.L253	#,
	.loc 1 1670 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# node, tmp67
	movzbl	20(%rax), %eax	# node_2->type, D.9434
	cmpb	$2, %al	#, D.9434
	jne	.L253	#,
	.loc 1 1672 0 is_stmt 1
	movq	-32(%rbp), %rax	# answer, answer.36
	testq	%rax, %rax	# answer.36
	je	.L255	#,
.LBB15:
	.loc 1 1674 0
	movq	-32(%rbp), %rdx	# answer, answer.37
	movq	-24(%rbp), %rax	# node, tmp68
	movq	%rdx, %rsi	# answer.37,
	movq	%rax, %rdi	# tmp68,
	call	find_answer	#
	movq	%rax, -16(%rbp)	# tmp69, p
	.loc 1 1677 0
	movq	-16(%rbp), %rax	# p, tmp70
	movq	(%rax), %rax	# *p_6, tmp71
	movq	%rax, -8(%rbp)	# tmp71, temp
	.loc 1 1678 0
	cmpq	$0, -8(%rbp)	#, temp
	je	.L256	#,
	.loc 1 1679 0
	movq	-8(%rbp), %rax	# temp, tmp72
	movq	(%rax), %rdx	# temp_7->next, D.9435
	movq	-16(%rbp), %rax	# p, tmp73
	movq	%rdx, (%rax)	# D.9435, *p_6
.L256:
	.loc 1 1682 0
	movq	-24(%rbp), %rax	# node, tmp74
	movq	24(%rax), %rax	# node_2->value.answers, D.9435
	testq	%rax, %rax	# D.9435
	jne	.L257	#,
	.loc 1 1683 0
	movq	-24(%rbp), %rax	# node, tmp75
	movb	$0, 20(%rax)	#, node_2->type
.L257:
	.loc 1 1685 0
	movq	-40(%rbp), %rax	# pfile, tmp76
	movq	%rax, %rdi	# tmp76,
	call	check_eol	#
.LBE15:
	jmp	.L253	#
.L255:
	.loc 1 1688 0
	movq	-24(%rbp), %rax	# node, tmp77
	movq	%rax, %rdi	# tmp77,
	call	_cpp_free_definition	#
.L253:
	.loc 1 1692 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	do_unassert, .-do_unassert
	.globl	cpp_define
	.type	cpp_define, @function
cpp_define:
.LFB61:
	.loc 1 1704 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# str, str
	.loc 1 1712 0
	movq	-64(%rbp), %rax	# str, tmp70
	movq	%rax, %rdi	# tmp70,
	call	strlen	#
	movq	%rax, -40(%rbp)	# tmp71, count
	.loc 1 1713 0
	movq	-40(%rbp), %rax	# count, tmp72
	addq	$3, %rax	#, D.9436
	leaq	15(%rax), %rdx	#, tmp73
	movl	$16, %eax	#, tmp99
	subq	$1, %rax	#, tmp74
	addq	%rdx, %rax	# tmp73, tmp75
	movl	$16, %ebx	#, tmp100
	movl	$0, %edx	#, tmp78
	divq	%rbx	# tmp100
	imulq	$16, %rax, %rax	#, tmp77, tmp79
	subq	%rax, %rsp	# tmp79,
	movq	%rsp, %rax	#, tmp80
	addq	$15, %rax	#, tmp81
	shrq	$4, %rax	#, tmp82
	salq	$4, %rax	#, tmp83
	movq	%rax, -32(%rbp)	# tmp83, buf
	.loc 1 1714 0
	movq	-40(%rbp), %rdx	# count, tmp84
	movq	-64(%rbp), %rcx	# str, tmp85
	movq	-32(%rbp), %rax	# buf, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	memcpy	#
	.loc 1 1716 0
	movq	-64(%rbp), %rax	# str, tmp87
	movl	$61, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	strchr	#
	movq	%rax, -24(%rbp)	# tmp88, p
	.loc 1 1717 0
	cmpq	$0, -24(%rbp)	#, p
	je	.L259	#,
	.loc 1 1718 0
	movq	-24(%rbp), %rdx	# p, p.38
	movq	-64(%rbp), %rax	# str, str.39
	subq	%rax, %rdx	# str.39, D.9437
	movq	%rdx, %rax	# D.9437, D.9437
	movq	%rax, %rdx	# D.9437, D.9438
	movq	-32(%rbp), %rax	# buf, tmp89
	addq	%rdx, %rax	# D.9438, D.9439
	movb	$32, (%rax)	#, *_11
	jmp	.L260	#
.L259:
	.loc 1 1721 0
	movq	-40(%rbp), %rax	# count, count.40
	leaq	1(%rax), %rdx	#, tmp90
	movq	%rdx, -40(%rbp)	# tmp90, count
	movq	-32(%rbp), %rdx	# buf, tmp91
	addq	%rdx, %rax	# tmp91, D.9439
	movb	$32, (%rax)	#, *_14
	.loc 1 1722 0
	movq	-40(%rbp), %rax	# count, count.41
	leaq	1(%rax), %rdx	#, tmp92
	movq	%rdx, -40(%rbp)	# tmp92, count
	movq	-32(%rbp), %rdx	# buf, tmp93
	addq	%rdx, %rax	# tmp93, D.9439
	movb	$49, (%rax)	#, *_17
.L260:
	.loc 1 1724 0
	movq	-40(%rbp), %rax	# count, tmp94
	movq	-32(%rbp), %rdx	# buf, tmp95
	addq	%rdx, %rax	# tmp95, D.9439
	movb	$0, (%rax)	#, *_18
	.loc 1 1726 0
	movq	-40(%rbp), %rcx	# count, tmp96
	movq	-32(%rbp), %rdx	# buf, tmp97
	movq	-56(%rbp), %rax	# pfile, tmp98
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	run_directive	#
	.loc 1 1727 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	cpp_define, .-cpp_define
	.globl	_cpp_define_builtin
	.type	_cpp_define_builtin, @function
_cpp_define_builtin:
.LFB62:
	.loc 1 1734 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# str, str
	.loc 1 1735 0
	movq	-16(%rbp), %rax	# str, tmp60
	movq	%rax, %rdi	# tmp60,
	call	strlen	#
	movq	%rax, %rcx	#, D.9440
	movq	-16(%rbp), %rdx	# str, tmp61
	movq	-8(%rbp), %rax	# pfile, tmp62
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	run_directive	#
	.loc 1 1736 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	_cpp_define_builtin, .-_cpp_define_builtin
	.globl	cpp_undef
	.type	cpp_undef, @function
cpp_undef:
.LFB63:
	.loc 1 1743 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# macro, macro
	.loc 1 1744 0
	movq	-16(%rbp), %rax	# macro, tmp60
	movq	%rax, %rdi	# tmp60,
	call	strlen	#
	movq	%rax, %rcx	#, D.9441
	movq	-16(%rbp), %rdx	# macro, tmp61
	movq	-8(%rbp), %rax	# pfile, tmp62
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	run_directive	#
	.loc 1 1745 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	cpp_undef, .-cpp_undef
	.globl	cpp_assert
	.type	cpp_assert, @function
cpp_assert:
.LFB64:
	.loc 1 1752 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# str, str
	.loc 1 1753 0
	movq	-16(%rbp), %rcx	# str, tmp59
	movq	-8(%rbp), %rax	# pfile, tmp60
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# tmp59,
	movq	%rax, %rdi	# tmp60,
	call	handle_assertion	#
	.loc 1 1754 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	cpp_assert, .-cpp_assert
	.globl	cpp_unassert
	.type	cpp_unassert, @function
cpp_unassert:
.LFB65:
	.loc 1 1761 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# str, str
	.loc 1 1762 0
	movq	-16(%rbp), %rcx	# str, tmp59
	movq	-8(%rbp), %rax	# pfile, tmp60
	movl	$17, %edx	#,
	movq	%rcx, %rsi	# tmp59,
	movq	%rax, %rdi	# tmp60,
	call	handle_assertion	#
	.loc 1 1763 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	cpp_unassert, .-cpp_unassert
	.type	handle_assertion, @function
handle_assertion:
.LFB66:
	.loc 1 1771 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# str, str
	movl	%edx, -68(%rbp)	# type, type
	.loc 1 1772 0
	movq	-64(%rbp), %rax	# str, tmp68
	movq	%rax, %rdi	# tmp68,
	call	strlen	#
	movq	%rax, -40(%rbp)	# tmp69, count
	.loc 1 1773 0
	movq	-64(%rbp), %rax	# str, tmp70
	movl	$61, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	strchr	#
	movq	%rax, -32(%rbp)	# tmp71, p
	.loc 1 1775 0
	cmpq	$0, -32(%rbp)	#, p
	je	.L266	#,
.LBB16:
	.loc 1 1779 0
	movq	-40(%rbp), %rax	# count, tmp72
	addq	$2, %rax	#, D.9442
	leaq	15(%rax), %rdx	#, tmp73
	movl	$16, %eax	#, tmp97
	subq	$1, %rax	#, tmp74
	addq	%rdx, %rax	# tmp73, tmp75
	movl	$16, %ebx	#, tmp98
	movl	$0, %edx	#, tmp78
	divq	%rbx	# tmp98
	imulq	$16, %rax, %rax	#, tmp77, tmp79
	subq	%rax, %rsp	# tmp79,
	movq	%rsp, %rax	#, tmp80
	addq	$15, %rax	#, tmp81
	shrq	$4, %rax	#, tmp82
	salq	$4, %rax	#, tmp83
	movq	%rax, -24(%rbp)	# tmp83, buf
	.loc 1 1781 0
	movq	-40(%rbp), %rdx	# count, tmp84
	movq	-64(%rbp), %rcx	# str, tmp85
	movq	-24(%rbp), %rax	# buf, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	memcpy	#
	.loc 1 1782 0
	movq	-32(%rbp), %rdx	# p, p.42
	movq	-64(%rbp), %rax	# str, str.43
	subq	%rax, %rdx	# str.43, D.9443
	movq	%rdx, %rax	# D.9443, D.9443
	movq	%rax, %rdx	# D.9443, D.9444
	movq	-24(%rbp), %rax	# buf, tmp87
	addq	%rdx, %rax	# D.9444, D.9445
	movb	$40, (%rax)	#, *_12
	.loc 1 1783 0
	movq	-40(%rbp), %rax	# count, count.44
	leaq	1(%rax), %rdx	#, tmp88
	movq	%rdx, -40(%rbp)	# tmp88, count
	movq	-24(%rbp), %rdx	# buf, tmp89
	addq	%rdx, %rax	# tmp89, D.9445
	movb	$41, (%rax)	#, *_15
	.loc 1 1784 0
	movq	-40(%rbp), %rax	# count, tmp90
	movq	-24(%rbp), %rdx	# buf, tmp91
	addq	%rdx, %rax	# tmp91, D.9445
	movb	$0, (%rax)	#, *_16
	.loc 1 1785 0
	movq	-24(%rbp), %rax	# buf, tmp92
	movq	%rax, -64(%rbp)	# tmp92, str
.L266:
.LBE16:
	.loc 1 1788 0
	movq	-40(%rbp), %rcx	# count, tmp93
	movq	-64(%rbp), %rdx	# str, tmp94
	movl	-68(%rbp), %esi	# type, tmp95
	movq	-56(%rbp), %rax	# pfile, tmp96
	movq	%rax, %rdi	# tmp96,
	call	run_directive	#
	.loc 1 1789 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	handle_assertion, .-handle_assertion
	.globl	cpp_errors
	.type	cpp_errors, @function
cpp_errors:
.LFB67:
	.loc 1 1795 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 1796 0
	movq	-8(%rbp), %rax	# pfile, tmp61
	movl	248(%rax), %eax	# pfile_1(D)->errors, D.9446
	.loc 1 1797 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	cpp_errors, .-cpp_errors
	.globl	cpp_get_options
	.type	cpp_get_options, @function
cpp_get_options:
.LFB68:
	.loc 1 1803 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 1804 0
	movq	-8(%rbp), %rax	# pfile, tmp61
	addq	$648, %rax	#, D.9447
	.loc 1 1805 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	cpp_get_options, .-cpp_get_options
	.globl	cpp_get_callbacks
	.type	cpp_get_callbacks, @function
cpp_get_callbacks:
.LFB69:
	.loc 1 1811 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 1812 0
	movq	-8(%rbp), %rax	# pfile, tmp61
	addq	$584, %rax	#, D.9448
	.loc 1 1813 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	cpp_get_callbacks, .-cpp_get_callbacks
	.globl	cpp_get_line_maps
	.type	cpp_get_line_maps, @function
cpp_get_line_maps:
.LFB70:
	.loc 1 1819 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 1820 0
	movq	-8(%rbp), %rax	# pfile, tmp61
	addq	$24, %rax	#, D.9449
	.loc 1 1821 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	cpp_get_line_maps, .-cpp_get_line_maps
	.globl	cpp_set_callbacks
	.type	cpp_set_callbacks, @function
cpp_set_callbacks:
.LFB71:
	.loc 1 1828 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# cb, cb
	.loc 1 1829 0
	movq	-8(%rbp), %rax	# pfile, tmp59
	movq	-16(%rbp), %rdx	# cb, tmp60
	movq	(%rdx), %rcx	# *cb_2(D), tmp61
	movq	%rcx, 584(%rax)	# tmp61, pfile_1(D)->cb
	movq	8(%rdx), %rcx	# *cb_2(D), tmp62
	movq	%rcx, 592(%rax)	# tmp62, pfile_1(D)->cb
	movq	16(%rdx), %rcx	# *cb_2(D), tmp63
	movq	%rcx, 600(%rax)	# tmp63, pfile_1(D)->cb
	movq	24(%rdx), %rcx	# *cb_2(D), tmp64
	movq	%rcx, 608(%rax)	# tmp64, pfile_1(D)->cb
	movq	32(%rdx), %rcx	# *cb_2(D), tmp65
	movq	%rcx, 616(%rax)	# tmp65, pfile_1(D)->cb
	movq	40(%rdx), %rcx	# *cb_2(D), tmp66
	movq	%rcx, 624(%rax)	# tmp66, pfile_1(D)->cb
	movq	48(%rdx), %rdx	# *cb_2(D), tmp67
	movq	%rdx, 632(%rax)	# tmp67, pfile_1(D)->cb
	.loc 1 1830 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	cpp_set_callbacks, .-cpp_set_callbacks
	.globl	cpp_push_buffer
	.type	cpp_push_buffer, @function
cpp_push_buffer:
.LFB72:
	.loc 1 1842 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# buffer, buffer
	movq	%rdx, -72(%rbp)	# len, len
	movl	%ecx, -76(%rbp)	# from_stage3, from_stage3
	movl	%r8d, -80(%rbp)	# return_at_eof, return_at_eof
.LBB17:
	.loc 1 1843 0
	movq	-56(%rbp), %rax	# pfile, tmp104
	addq	$488, %rax	#, tmp103
	movq	%rax, -40(%rbp)	# tmp103, __h
.LBB18:
	movq	-40(%rbp), %rax	# __h, tmp105
	movq	%rax, -32(%rbp)	# tmp105, __o
	movl	$144, -44(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp106
	movq	32(%rax), %rax	# __o_3->chunk_limit, D.9450
	movq	%rax, %rdx	# D.9450, D.9451
	movq	-32(%rbp), %rax	# __o, tmp107
	movq	24(%rax), %rax	# __o_3->next_free, D.9450
	subq	%rax, %rdx	# D.9451, D.9451
	movl	-44(%rbp), %eax	# __len, tmp108
	cltq
	cmpq	%rax, %rdx	# D.9451, D.9451
	jge	.L277	#,
	.loc 1 1843 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp109
	movq	-32(%rbp), %rax	# __o, tmp110
	movl	%edx, %esi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	_obstack_newchunk	#
.L277:
	.loc 1 1843 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp111
	movq	24(%rax), %rdx	# __o_3->next_free, D.9450
	movl	-44(%rbp), %eax	# __len, tmp112
	cltq
	addq	%rax, %rdx	# D.9452, D.9450
	movq	-32(%rbp), %rax	# __o, tmp113
	movq	%rdx, 24(%rax)	# D.9450, __o_3->next_free
.LBE18:
.LBB19:
	movq	-40(%rbp), %rax	# __h, tmp114
	movq	%rax, -24(%rbp)	# tmp114, __o1
	movq	-24(%rbp), %rax	# __o1, tmp115
	movq	16(%rax), %rax	# __o1_14->object_base, tmp116
	movq	%rax, -16(%rbp)	# tmp116, value
	movq	-24(%rbp), %rax	# __o1, tmp117
	movq	24(%rax), %rax	# __o1_14->next_free, D.9450
	cmpq	-16(%rbp), %rax	# value, D.9450
	jne	.L278	#,
	.loc 1 1843 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp118
	movzbl	80(%rax), %edx	# __o1_14->maybe_empty_object, tmp121
	orl	$2, %edx	#, tmp122
	movb	%dl, 80(%rax)	# tmp122, __o1_14->maybe_empty_object
.L278:
	.loc 1 1843 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp123
	movq	24(%rax), %rax	# __o1_14->next_free, D.9450
	movq	%rax, %rdx	# D.9450, D.9451
	movq	-24(%rbp), %rax	# __o1, tmp124
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.9453
	cltq
	addq	%rax, %rdx	# D.9451, D.9451
	movq	-24(%rbp), %rax	# __o1, tmp125
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.9453
	notl	%eax	# D.9453
	cltq
	andq	%rdx, %rax	# D.9451, D.9451
	movq	%rax, %rdx	# D.9451, D.9450
	movq	-24(%rbp), %rax	# __o1, tmp126
	movq	%rdx, 24(%rax)	# D.9450, __o1_14->next_free
	movq	-24(%rbp), %rax	# __o1, tmp127
	movq	24(%rax), %rax	# __o1_14->next_free, D.9450
	movq	%rax, %rdx	# D.9450, D.9451
	movq	-24(%rbp), %rax	# __o1, tmp128
	movq	8(%rax), %rax	# __o1_14->chunk, D.9454
	movq	%rdx, %rcx	# D.9451, D.9451
	subq	%rax, %rcx	# D.9451, D.9451
	movq	-24(%rbp), %rax	# __o1, tmp129
	movq	32(%rax), %rax	# __o1_14->chunk_limit, D.9450
	movq	%rax, %rdx	# D.9450, D.9451
	movq	-24(%rbp), %rax	# __o1, tmp130
	movq	8(%rax), %rax	# __o1_14->chunk, D.9454
	subq	%rax, %rdx	# D.9451, D.9451
	movq	%rdx, %rax	# D.9451, D.9451
	cmpq	%rax, %rcx	# D.9451, D.9451
	jle	.L279	#,
	.loc 1 1843 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp131
	movq	32(%rax), %rdx	# __o1_14->chunk_limit, D.9450
	movq	-24(%rbp), %rax	# __o1, tmp132
	movq	%rdx, 24(%rax)	# D.9450, __o1_14->next_free
.L279:
	.loc 1 1843 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp133
	movq	24(%rax), %rdx	# __o1_14->next_free, D.9450
	movq	-24(%rbp), %rax	# __o1, tmp134
	movq	%rdx, 16(%rax)	# D.9450, __o1_14->object_base
	movq	-16(%rbp), %rax	# value, D.9455
.LBE19:
.LBE17:
	movq	%rax, -8(%rbp)	# new.45, new
	.loc 1 1846 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax	# new, tmp135
	movl	$144, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	memset	#
	.loc 1 1848 0 discriminator 2
	movq	-8(%rbp), %rax	# new, tmp136
	movq	-64(%rbp), %rdx	# buffer, tmp137
	movq	%rdx, (%rax)	# tmp137, new_41->cur
	movq	-8(%rbp), %rax	# new, tmp138
	movq	(%rax), %rdx	# new_41->cur, D.9456
	movq	-8(%rbp), %rax	# new, tmp139
	movq	%rdx, 40(%rax)	# D.9456, new_41->buf
	movq	-8(%rbp), %rax	# new, tmp140
	movq	40(%rax), %rdx	# new_41->buf, D.9456
	movq	-8(%rbp), %rax	# new, tmp141
	movq	%rdx, 24(%rax)	# D.9456, new_41->line_base
	.loc 1 1849 0 discriminator 2
	movq	-72(%rbp), %rax	# len, tmp142
	movq	-64(%rbp), %rdx	# buffer, tmp143
	addq	%rax, %rdx	# tmp142, D.9456
	movq	-8(%rbp), %rax	# new, tmp144
	movq	%rdx, 16(%rax)	# D.9456, new_41->rlimit
	.loc 1 1850 0 discriminator 2
	movl	-76(%rbp), %eax	# from_stage3, tmp145
	movl	%eax, %edx	# tmp145, D.9457
	movq	-8(%rbp), %rax	# new, tmp146
	movb	%dl, 81(%rax)	# D.9457, new_41->from_stage3
	.loc 1 1851 0 discriminator 2
	movq	-56(%rbp), %rax	# pfile, tmp147
	movq	(%rax), %rdx	# pfile_1(D)->buffer, D.9458
	movq	-8(%rbp), %rax	# new, tmp148
	movq	%rdx, 32(%rax)	# D.9458, new_41->prev
	.loc 1 1852 0 discriminator 2
	cmpl	$0, -80(%rbp)	#, return_at_eof
	setne	%dl	#, D.9459
	movq	-8(%rbp), %rax	# new, tmp149
	movb	%dl, 83(%rax)	# D.9459, new_41->return_at_eof
	.loc 1 1853 0 discriminator 2
	movq	-8(%rbp), %rax	# new, tmp150
	movb	$64, 68(%rax)	#, new_41->saved_flags
	.loc 1 1855 0 discriminator 2
	movq	-56(%rbp), %rax	# pfile, tmp151
	movq	-8(%rbp), %rdx	# new, tmp152
	movq	%rdx, (%rax)	# tmp152, pfile_1(D)->buffer
	.loc 1 1857 0 discriminator 2
	movq	-8(%rbp), %rax	# new, D.9458
	.loc 1 1858 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	cpp_push_buffer, .-cpp_push_buffer
	.section	.rodata
.LC74:
	.string	"unterminated #%s"
	.text
	.globl	_cpp_pop_buffer
	.type	_cpp_pop_buffer, @function
_cpp_pop_buffer:
.LFB73:
	.loc 1 1866 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# pfile, pfile
	.loc 1 1867 0
	movq	-56(%rbp), %rax	# pfile, tmp70
	movq	(%rax), %rax	# pfile_3(D)->buffer, tmp71
	movq	%rax, -24(%rbp)	# tmp71, buffer
	.loc 1 1869 0
	movb	$0, -33(%rbp)	#, pushed
	.loc 1 1873 0
	movq	-24(%rbp), %rax	# buffer, tmp72
	movq	56(%rax), %rax	# buffer_4->if_stack, tmp73
	movq	%rax, -32(%rbp)	# tmp73, ifs
	jmp	.L282	#
.L283:
	.loc 1 1875 0 discriminator 2
	movq	-32(%rbp), %rax	# ifs, tmp74
	movl	28(%rax), %eax	# ifs_1->type, D.9460
	.loc 1 1874 0 discriminator 2
	movslq	%eax, %rdx	# D.9460, tmp75
	movq	%rdx, %rax	# tmp75, tmp76
	addq	%rax, %rax	# tmp76
	addq	%rdx, %rax	# tmp75, tmp76
	salq	$3, %rax	#, tmp77
	addq	$dtable, %rax	#, tmp78
	movq	8(%rax), %rdx	# dtable[_7].name, D.9461
	movq	-32(%rbp), %rax	# ifs, tmp79
	movl	8(%rax), %eax	# ifs_1->line, D.9462
	movl	%eax, %esi	# D.9462, D.9460
	movq	-56(%rbp), %rax	# pfile, tmp80
	movq	%rdx, %r8	# D.9461,
	movl	$.LC74, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp80,
	movl	$0, %eax	#,
	call	cpp_error_with_line	#
	.loc 1 1873 0 discriminator 2
	movq	-32(%rbp), %rax	# ifs, tmp81
	movq	(%rax), %rax	# ifs_1->next, tmp82
	movq	%rax, -32(%rbp)	# tmp82, ifs
.L282:
	.loc 1 1873 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, ifs
	jne	.L283	#,
	.loc 1 1878 0 is_stmt 1
	movq	-56(%rbp), %rax	# pfile, tmp83
	movb	$0, 9(%rax)	#, pfile_3(D)->state.skipping
	.loc 1 1881 0
	movq	-24(%rbp), %rax	# buffer, tmp84
	movq	32(%rax), %rdx	# buffer_4->prev, D.9463
	movq	-56(%rbp), %rax	# pfile, tmp85
	movq	%rdx, (%rax)	# D.9463, pfile_3(D)->buffer
	.loc 1 1883 0
	movq	-24(%rbp), %rax	# buffer, tmp86
	movq	48(%rax), %rax	# buffer_4->inc, D.9464
	testq	%rax, %rax	# D.9464
	je	.L284	#,
	.loc 1 1884 0
	movq	-24(%rbp), %rax	# buffer, tmp87
	movq	48(%rax), %rdx	# buffer_4->inc, D.9464
	movq	-56(%rbp), %rax	# pfile, tmp88
	movq	%rdx, %rsi	# D.9464,
	movq	%rax, %rdi	# tmp88,
	call	_cpp_pop_file_buffer	#
	movb	%al, -33(%rbp)	# tmp89, pushed
.L284:
	.loc 1 1886 0
	movzbl	-33(%rbp), %eax	# pushed, tmp90
	xorl	$1, %eax	#, D.9465
	testb	%al, %al	# D.9465
	je	.L281	#,
.LBB20:
	.loc 1 1887 0
	movq	-56(%rbp), %rax	# pfile, tmp94
	addq	$488, %rax	#, tmp93
	movq	%rax, -16(%rbp)	# tmp93, __o
	movq	-24(%rbp), %rax	# buffer, tmp95
	movq	%rax, -8(%rbp)	# tmp95, __obj
	movq	-16(%rbp), %rax	# __o, tmp96
	movq	8(%rax), %rax	# __o_17->chunk, D.9466
	cmpq	-8(%rbp), %rax	# __obj, D.9466
	jae	.L286	#,
	.loc 1 1887 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp97
	movq	32(%rax), %rax	# __o_17->chunk_limit, D.9467
	cmpq	-8(%rbp), %rax	# __obj, D.9467
	jbe	.L286	#,
	movq	-16(%rbp), %rax	# __o, tmp98
	movq	-8(%rbp), %rdx	# __obj, tmp99
	movq	%rdx, 16(%rax)	# tmp99, __o_17->object_base
	movq	-16(%rbp), %rax	# __o, tmp100
	movq	16(%rax), %rdx	# __o_17->object_base, D.9467
	movq	-16(%rbp), %rax	# __o, tmp101
	movq	%rdx, 24(%rax)	# D.9467, __o_17->next_free
	jmp	.L281	#
.L286:
	.loc 1 1887 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp102
	movq	-16(%rbp), %rax	# __o, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	obstack_free	#
.L281:
.LBE20:
	.loc 1 1888 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	_cpp_pop_buffer, .-_cpp_pop_buffer
	.globl	_cpp_init_directives
	.type	_cpp_init_directives, @function
_cpp_init_directives:
.LFB74:
	.loc 1 1894 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1898 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L288	#
.L289:
	.loc 1 1900 0 discriminator 2
	movl	-12(%rbp), %edx	# i, tmp64
	movq	%rdx, %rax	# tmp64, tmp65
	addq	%rax, %rax	# tmp65
	addq	%rdx, %rax	# tmp64, tmp65
	salq	$3, %rax	#, tmp66
	addq	$dtable+16, %rax	#, tmp67
	movzwl	(%rax), %eax	# dtable[i_1].length, D.9469
	movzwl	%ax, %esi	# D.9469, D.9470
	movl	-12(%rbp), %edx	# i, tmp68
	movq	%rdx, %rax	# tmp68, tmp69
	addq	%rax, %rax	# tmp69
	addq	%rdx, %rax	# tmp68, tmp69
	salq	$3, %rax	#, tmp70
	addq	$dtable, %rax	#, tmp71
	movq	8(%rax), %rcx	# dtable[i_1].name, D.9471
	movq	-24(%rbp), %rax	# pfile, tmp72
	movl	%esi, %edx	# D.9470,
	movq	%rcx, %rsi	# D.9471,
	movq	%rax, %rdi	# tmp72,
	call	cpp_lookup	#
	movq	%rax, -8(%rbp)	# tmp73, node
	.loc 1 1901 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp74
	leal	1(%rax), %edx	#, D.9472
	movq	-8(%rbp), %rax	# node, tmp75
	movb	%dl, 18(%rax)	# D.9472, node_7->directive_index
	.loc 1 1898 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L288:
	.loc 1 1898 0 is_stmt 0 discriminator 1
	cmpl	$18, -12(%rbp)	#, i
	jbe	.L289	#,
	.loc 1 1903 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	_cpp_init_directives, .-_cpp_init_directives
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 6 "obstack.h"
	.file 7 "hashtable.h"
	.file 8 "cpphash.h"
	.file 9 "line-map.h"
	.file 10 "cpplib.h"
	.file 11 "./safe-ctype.h"
	.file 12 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2e62
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF525
	.byte	0x1
	.long	.LASF526
	.long	.LASF527
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x56
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x85
	.long	0x56
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x88
	.long	0x56
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x8c
	.long	0x44
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x8d
	.long	0x44
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x233
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xf7
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfc
	.long	0xa5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfd
	.long	0xa5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xfe
	.long	0xa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xff
	.long	0xa5
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x100
	.long	0xa5
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x101
	.long	0xa5
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x102
	.long	0xa5
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x103
	.long	0xa5
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x105
	.long	0xa5
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x106
	.long	0xa5
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x107
	.long	0xa5
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x109
	.long	0x27b
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10b
	.long	0x281
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x10d
	.long	0x2d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x113
	.long	0x8f
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x117
	.long	0x64
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x118
	.long	0x6b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x119
	.long	0x287
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x11d
	.long	0x297
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x126
	.long	0x9a
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x12f
	.long	0x42
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x130
	.long	0x42
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x131
	.long	0x42
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x132
	.long	0x42
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x133
	.long	0x4b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.value	0x137
	.long	0x29d
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	0xab
	.long	0x243
	.uleb128 0xb
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF528
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x27b
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x27b
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
	.byte	0xa3
	.long	0x281
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x4
	.byte	0xa7
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x24a
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0xa
	.long	0xab
	.long	0x297
	.uleb128 0xb
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x243
	.uleb128 0xa
	.long	0xab
	.long	0x2ad
	.uleb128 0xb
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b3
	.uleb128 0xd
	.long	0xab
	.uleb128 0xe
	.byte	0x4
	.byte	0xb
	.byte	0x2c
	.long	0x339
	.uleb128 0xf
	.long	.LASF48
	.sleb128 1
	.uleb128 0xf
	.long	.LASF49
	.sleb128 2
	.uleb128 0xf
	.long	.LASF50
	.sleb128 4
	.uleb128 0xf
	.long	.LASF51
	.sleb128 8
	.uleb128 0xf
	.long	.LASF52
	.sleb128 16
	.uleb128 0xf
	.long	.LASF53
	.sleb128 32
	.uleb128 0xf
	.long	.LASF54
	.sleb128 64
	.uleb128 0xf
	.long	.LASF55
	.sleb128 128
	.uleb128 0xf
	.long	.LASF56
	.sleb128 256
	.uleb128 0xf
	.long	.LASF57
	.sleb128 512
	.uleb128 0xf
	.long	.LASF58
	.sleb128 1024
	.uleb128 0xf
	.long	.LASF59
	.sleb128 2048
	.uleb128 0xf
	.long	.LASF60
	.sleb128 136
	.uleb128 0xf
	.long	.LASF61
	.sleb128 140
	.uleb128 0xf
	.long	.LASF62
	.sleb128 516
	.uleb128 0xf
	.long	.LASF63
	.sleb128 172
	.uleb128 0xf
	.long	.LASF64
	.sleb128 3072
	.uleb128 0xf
	.long	.LASF65
	.sleb128 3088
	.byte	0
	.uleb128 0x5
	.long	.LASF66
	.byte	0x5
	.byte	0x30
	.long	0x84
	.uleb128 0x5
	.long	.LASF67
	.byte	0x5
	.byte	0x3c
	.long	0x79
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF68
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF69
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x7
	.long	.LASF70
	.byte	0x18
	.byte	0x6
	.byte	0xa1
	.long	0x394
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0xa3
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0xa4
	.long	0x394
	.byte	0x8
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0xa5
	.long	0x233
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x363
	.uleb128 0x7
	.long	.LASF74
	.byte	0x58
	.byte	0x6
	.byte	0xa8
	.long	0x44c
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0xaa
	.long	0x44
	.byte	0
	.uleb128 0x8
	.long	.LASF76
	.byte	0x6
	.byte	0xab
	.long	0x394
	.byte	0x8
	.uleb128 0x8
	.long	.LASF77
	.byte	0x6
	.byte	0xac
	.long	0xa5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF78
	.byte	0x6
	.byte	0xad
	.long	0xa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF79
	.byte	0x6
	.byte	0xae
	.long	0xa5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF80
	.byte	0x6
	.byte	0xaf
	.long	0x44
	.byte	0x28
	.uleb128 0x8
	.long	.LASF81
	.byte	0x6
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF82
	.byte	0x6
	.byte	0xb5
	.long	0x460
	.byte	0x38
	.uleb128 0x8
	.long	.LASF83
	.byte	0x6
	.byte	0xb6
	.long	0x476
	.byte	0x40
	.uleb128 0x8
	.long	.LASF84
	.byte	0x6
	.byte	0xb7
	.long	0x42
	.byte	0x48
	.uleb128 0x10
	.long	.LASF85
	.byte	0x6
	.byte	0xbd
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x10
	.long	.LASF86
	.byte	0x6
	.byte	0xbe
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x10
	.long	.LASF87
	.byte	0x6
	.byte	0xc2
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.long	0x394
	.long	0x460
	.uleb128 0x12
	.long	0x42
	.uleb128 0x12
	.long	0x44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x44c
	.uleb128 0x13
	.long	0x476
	.uleb128 0x12
	.long	0x42
	.uleb128 0x12
	.long	0x394
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x466
	.uleb128 0x7
	.long	.LASF88
	.byte	0x10
	.byte	0x7
	.byte	0x1a
	.long	0x4a1
	.uleb128 0x14
	.string	"len"
	.byte	0x7
	.byte	0x1c
	.long	0x3b
	.byte	0
	.uleb128 0x14
	.string	"str"
	.byte	0x7
	.byte	0x1d
	.long	0x4a1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a7
	.uleb128 0xd
	.long	0x5d
	.uleb128 0x5
	.long	.LASF89
	.byte	0x7
	.byte	0x28
	.long	0x4b7
	.uleb128 0x15
	.string	"ht"
	.byte	0x80
	.byte	0x7
	.byte	0x2e
	.long	0x523
	.uleb128 0x8
	.long	.LASF90
	.byte	0x7
	.byte	0x31
	.long	0x39a
	.byte	0
	.uleb128 0x8
	.long	.LASF91
	.byte	0x7
	.byte	0x33
	.long	0x534
	.byte	0x58
	.uleb128 0x8
	.long	.LASF92
	.byte	0x7
	.byte	0x35
	.long	0x54f
	.byte	0x60
	.uleb128 0x8
	.long	.LASF93
	.byte	0x7
	.byte	0x37
	.long	0x3b
	.byte	0x68
	.uleb128 0x8
	.long	.LASF94
	.byte	0x7
	.byte	0x38
	.long	0x3b
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF95
	.byte	0x7
	.byte	0x3b
	.long	0x77c
	.byte	0x70
	.uleb128 0x8
	.long	.LASF96
	.byte	0x7
	.byte	0x3e
	.long	0x3b
	.byte	0x78
	.uleb128 0x8
	.long	.LASF97
	.byte	0x7
	.byte	0x3f
	.long	0x3b
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.long	.LASF98
	.byte	0x7
	.byte	0x29
	.long	0x52e
	.uleb128 0x6
	.byte	0x8
	.long	0x47c
	.uleb128 0x6
	.byte	0x8
	.long	0x523
	.uleb128 0x11
	.long	0x523
	.long	0x549
	.uleb128 0x12
	.long	0x549
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ac
	.uleb128 0x6
	.byte	0x8
	.long	0x53a
	.uleb128 0x16
	.long	.LASF99
	.value	0x340
	.byte	0x8
	.byte	0xe1
	.long	0x77c
	.uleb128 0x8
	.long	.LASF100
	.byte	0x8
	.byte	0xe4
	.long	0x1458
	.byte	0
	.uleb128 0x8
	.long	.LASF101
	.byte	0x8
	.byte	0xe7
	.long	0x132a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF102
	.byte	0x8
	.byte	0xea
	.long	0x7f9
	.byte	0x18
	.uleb128 0x14
	.string	"map"
	.byte	0x8
	.byte	0xeb
	.long	0x1054
	.byte	0x38
	.uleb128 0x8
	.long	.LASF103
	.byte	0x8
	.byte	0xec
	.long	0x3b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF104
	.byte	0x8
	.byte	0xef
	.long	0x3b
	.byte	0x44
	.uleb128 0x8
	.long	.LASF105
	.byte	0x8
	.byte	0xf2
	.long	0x1324
	.byte	0x48
	.uleb128 0x8
	.long	.LASF106
	.byte	0x8
	.byte	0xf3
	.long	0x1324
	.byte	0x50
	.uleb128 0x8
	.long	.LASF107
	.byte	0x8
	.byte	0xf4
	.long	0x1324
	.byte	0x58
	.uleb128 0x8
	.long	.LASF108
	.byte	0x8
	.byte	0xf7
	.long	0x12bd
	.byte	0x60
	.uleb128 0x8
	.long	.LASF109
	.byte	0x8
	.byte	0xf8
	.long	0x145e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF110
	.byte	0x8
	.byte	0xfb
	.long	0x14ad
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF111
	.byte	0x8
	.byte	0xfe
	.long	0x14b8
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF112
	.byte	0x8
	.byte	0xff
	.long	0x14b8
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF113
	.byte	0x8
	.value	0x100
	.long	0x854
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF114
	.byte	0x8
	.value	0x103
	.long	0x12ac
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF115
	.byte	0x8
	.value	0x104
	.long	0x125e
	.byte	0xc8
	.uleb128 0x9
	.long	.LASF116
	.byte	0x8
	.value	0x104
	.long	0x12a6
	.byte	0xe8
	.uleb128 0x9
	.long	.LASF117
	.byte	0x8
	.value	0x105
	.long	0x3b
	.byte	0xf0
	.uleb128 0x9
	.long	.LASF118
	.byte	0x8
	.value	0x108
	.long	0x3b
	.byte	0xf4
	.uleb128 0x9
	.long	.LASF119
	.byte	0x8
	.value	0x10b
	.long	0x3b
	.byte	0xf8
	.uleb128 0x9
	.long	.LASF120
	.byte	0x8
	.value	0x10f
	.long	0x3b
	.byte	0xfc
	.uleb128 0x17
	.long	.LASF121
	.byte	0x8
	.value	0x110
	.long	0x3b
	.value	0x100
	.uleb128 0x17
	.long	.LASF122
	.byte	0x8
	.value	0x113
	.long	0x11ff
	.value	0x108
	.uleb128 0x17
	.long	.LASF123
	.byte	0x8
	.value	0x114
	.long	0x3b
	.value	0x110
	.uleb128 0x17
	.long	.LASF124
	.byte	0x8
	.value	0x117
	.long	0x14c8
	.value	0x118
	.uleb128 0x17
	.long	.LASF125
	.byte	0x8
	.value	0x11b
	.long	0x3b
	.value	0x120
	.uleb128 0x17
	.long	.LASF126
	.byte	0x8
	.value	0x11e
	.long	0xbdc
	.value	0x128
	.uleb128 0x17
	.long	.LASF127
	.byte	0x8
	.value	0x11f
	.long	0xbdc
	.value	0x140
	.uleb128 0x17
	.long	.LASF128
	.byte	0x8
	.value	0x122
	.long	0xbdc
	.value	0x158
	.uleb128 0x18
	.string	"eof"
	.byte	0x8
	.value	0x123
	.long	0xbdc
	.value	0x170
	.uleb128 0x17
	.long	.LASF129
	.byte	0x8
	.value	0x126
	.long	0x14d3
	.value	0x188
	.uleb128 0x17
	.long	.LASF130
	.byte	0x8
	.value	0x12a
	.long	0x39a
	.value	0x190
	.uleb128 0x17
	.long	.LASF131
	.byte	0x8
	.value	0x12e
	.long	0x39a
	.value	0x1e8
	.uleb128 0x17
	.long	.LASF132
	.byte	0x8
	.value	0x132
	.long	0x1514
	.value	0x240
	.uleb128 0x18
	.string	"cb"
	.byte	0x8
	.value	0x135
	.long	0xcf5
	.value	0x248
	.uleb128 0x17
	.long	.LASF89
	.byte	0x8
	.value	0x138
	.long	0x151a
	.value	0x280
	.uleb128 0x17
	.long	.LASF133
	.byte	0x8
	.value	0x13b
	.long	0x949
	.value	0x288
	.uleb128 0x17
	.long	.LASF134
	.byte	0x8
	.value	0x13f
	.long	0x13a3
	.value	0x310
	.uleb128 0x17
	.long	.LASF135
	.byte	0x8
	.value	0x143
	.long	0x5d
	.value	0x338
	.uleb128 0x17
	.long	.LASF136
	.byte	0x8
	.value	0x146
	.long	0x5d
	.value	0x339
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x555
	.uleb128 0x19
	.long	.LASF236
	.byte	0x4
	.byte	0x9
	.byte	0x1f
	.long	0x7a1
	.uleb128 0xf
	.long	.LASF137
	.sleb128 0
	.uleb128 0xf
	.long	.LASF138
	.sleb128 1
	.uleb128 0xf
	.long	.LASF139
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF140
	.byte	0x18
	.byte	0x9
	.byte	0x29
	.long	0x7f9
	.uleb128 0x8
	.long	.LASF141
	.byte	0x9
	.byte	0x2b
	.long	0x2ad
	.byte	0
	.uleb128 0x8
	.long	.LASF142
	.byte	0x9
	.byte	0x2c
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF143
	.byte	0x9
	.byte	0x2d
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF144
	.byte	0x9
	.byte	0x2e
	.long	0x2d
	.byte	0x10
	.uleb128 0x10
	.long	.LASF145
	.byte	0x9
	.byte	0x2f
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x8
	.long	.LASF146
	.byte	0x9
	.byte	0x30
	.long	0x5d
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.long	.LASF102
	.byte	0x20
	.byte	0x9
	.byte	0x34
	.long	0x84e
	.uleb128 0x8
	.long	.LASF147
	.byte	0x9
	.byte	0x36
	.long	0x84e
	.byte	0
	.uleb128 0x8
	.long	.LASF148
	.byte	0x9
	.byte	0x37
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF149
	.byte	0x9
	.byte	0x38
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF150
	.byte	0x9
	.byte	0x3d
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF151
	.byte	0x9
	.byte	0x40
	.long	0x3b
	.byte	0x14
	.uleb128 0x8
	.long	.LASF152
	.byte	0x9
	.byte	0x43
	.long	0x854
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7a1
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF153
	.uleb128 0x5
	.long	.LASF99
	.byte	0xa
	.byte	0x24
	.long	0x555
	.uleb128 0x5
	.long	.LASF154
	.byte	0xa
	.byte	0x26
	.long	0x871
	.uleb128 0x7
	.long	.LASF154
	.byte	0x90
	.byte	0x8
	.byte	0xa8
	.long	0x93e
	.uleb128 0x14
	.string	"cur"
	.byte	0x8
	.byte	0xaa
	.long	0x4a1
	.byte	0
	.uleb128 0x8
	.long	.LASF155
	.byte	0x8
	.byte	0xab
	.long	0x4a1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF156
	.byte	0x8
	.byte	0xac
	.long	0x4a1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF157
	.byte	0x8
	.byte	0xad
	.long	0x4a1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0xaf
	.long	0x13ec
	.byte	0x20
	.uleb128 0x14
	.string	"buf"
	.byte	0x8
	.byte	0xb1
	.long	0x4a1
	.byte	0x28
	.uleb128 0x14
	.string	"inc"
	.byte	0x8
	.byte	0xb5
	.long	0x13f7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF158
	.byte	0x8
	.byte	0xb9
	.long	0x1452
	.byte	0x38
	.uleb128 0x8
	.long	.LASF159
	.byte	0x8
	.byte	0xbc
	.long	0x3b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF160
	.byte	0x8
	.byte	0xbf
	.long	0x5d
	.byte	0x44
	.uleb128 0x8
	.long	.LASF161
	.byte	0x8
	.byte	0xc3
	.long	0x4a1
	.byte	0x48
	.uleb128 0x8
	.long	.LASF162
	.byte	0x8
	.byte	0xc9
	.long	0x5d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF163
	.byte	0x8
	.byte	0xce
	.long	0x5d
	.byte	0x51
	.uleb128 0x8
	.long	.LASF164
	.byte	0x8
	.byte	0xd2
	.long	0x5d
	.byte	0x52
	.uleb128 0x8
	.long	.LASF165
	.byte	0x8
	.byte	0xd7
	.long	0x854
	.byte	0x53
	.uleb128 0x14
	.string	"dir"
	.byte	0x8
	.byte	0xdb
	.long	0xfb1
	.byte	0x58
	.byte	0
	.uleb128 0x5
	.long	.LASF166
	.byte	0xa
	.byte	0x27
	.long	0x949
	.uleb128 0x7
	.long	.LASF166
	.byte	0x88
	.byte	0xa
	.byte	0xcd
	.long	0xbdc
	.uleb128 0x8
	.long	.LASF167
	.byte	0xa
	.byte	0xd0
	.long	0x2ad
	.byte	0
	.uleb128 0x8
	.long	.LASF168
	.byte	0xa
	.byte	0xd1
	.long	0x2ad
	.byte	0x8
	.uleb128 0x8
	.long	.LASF169
	.byte	0xa
	.byte	0xd4
	.long	0x3b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF170
	.byte	0xa
	.byte	0xd7
	.long	0xfab
	.byte	0x18
	.uleb128 0x8
	.long	.LASF171
	.byte	0xa
	.byte	0xdb
	.long	0x2ad
	.byte	0x20
	.uleb128 0x8
	.long	.LASF172
	.byte	0xa
	.byte	0xde
	.long	0x1012
	.byte	0x28
	.uleb128 0x8
	.long	.LASF173
	.byte	0xa
	.byte	0xdf
	.long	0x1012
	.byte	0x30
	.uleb128 0x8
	.long	.LASF174
	.byte	0xa
	.byte	0xe3
	.long	0x101d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF175
	.byte	0xa
	.byte	0xe7
	.long	0x2ad
	.byte	0x40
	.uleb128 0x8
	.long	.LASF176
	.byte	0xa
	.byte	0xe8
	.long	0x3b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF177
	.byte	0xa
	.byte	0xeb
	.long	0x2ad
	.byte	0x50
	.uleb128 0x8
	.long	.LASF178
	.byte	0xa
	.byte	0xee
	.long	0xf0e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF179
	.byte	0xa
	.byte	0xf1
	.long	0x5d
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF180
	.byte	0xa
	.byte	0xf4
	.long	0x5d
	.byte	0x5d
	.uleb128 0x8
	.long	.LASF181
	.byte	0xa
	.byte	0xf7
	.long	0x5d
	.byte	0x5e
	.uleb128 0x8
	.long	.LASF182
	.byte	0xa
	.byte	0xfa
	.long	0x5d
	.byte	0x5f
	.uleb128 0x8
	.long	.LASF183
	.byte	0xa
	.byte	0xfd
	.long	0x5d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF184
	.byte	0xa
	.value	0x100
	.long	0x5d
	.byte	0x61
	.uleb128 0x9
	.long	.LASF185
	.byte	0xa
	.value	0x103
	.long	0x5d
	.byte	0x62
	.uleb128 0x9
	.long	.LASF186
	.byte	0xa
	.value	0x106
	.long	0x5d
	.byte	0x63
	.uleb128 0x9
	.long	.LASF187
	.byte	0xa
	.value	0x109
	.long	0x5d
	.byte	0x64
	.uleb128 0x9
	.long	.LASF188
	.byte	0xa
	.value	0x10e
	.long	0x5d
	.byte	0x65
	.uleb128 0x9
	.long	.LASF189
	.byte	0xa
	.value	0x111
	.long	0x5d
	.byte	0x66
	.uleb128 0x9
	.long	.LASF190
	.byte	0xa
	.value	0x115
	.long	0x5d
	.byte	0x67
	.uleb128 0x9
	.long	.LASF191
	.byte	0xa
	.value	0x118
	.long	0x5d
	.byte	0x68
	.uleb128 0x9
	.long	.LASF192
	.byte	0xa
	.value	0x11b
	.long	0x5d
	.byte	0x69
	.uleb128 0x9
	.long	.LASF193
	.byte	0xa
	.value	0x11e
	.long	0x5d
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF194
	.byte	0xa
	.value	0x121
	.long	0x5d
	.byte	0x6b
	.uleb128 0x9
	.long	.LASF195
	.byte	0xa
	.value	0x124
	.long	0x5d
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF196
	.byte	0xa
	.value	0x128
	.long	0x5d
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF197
	.byte	0xa
	.value	0x12b
	.long	0x5d
	.byte	0x6e
	.uleb128 0x9
	.long	.LASF198
	.byte	0xa
	.value	0x12e
	.long	0x5d
	.byte	0x6f
	.uleb128 0x9
	.long	.LASF199
	.byte	0xa
	.value	0x131
	.long	0x5d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF200
	.byte	0xa
	.value	0x135
	.long	0x5d
	.byte	0x71
	.uleb128 0x9
	.long	.LASF201
	.byte	0xa
	.value	0x138
	.long	0x5d
	.byte	0x72
	.uleb128 0x9
	.long	.LASF202
	.byte	0xa
	.value	0x13c
	.long	0x5d
	.byte	0x73
	.uleb128 0x9
	.long	.LASF203
	.byte	0xa
	.value	0x140
	.long	0x5d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF204
	.byte	0xa
	.value	0x143
	.long	0x5d
	.byte	0x75
	.uleb128 0x9
	.long	.LASF205
	.byte	0xa
	.value	0x147
	.long	0x5d
	.byte	0x76
	.uleb128 0x9
	.long	.LASF206
	.byte	0xa
	.value	0x14a
	.long	0x5d
	.byte	0x77
	.uleb128 0x9
	.long	.LASF207
	.byte	0xa
	.value	0x14d
	.long	0x5d
	.byte	0x78
	.uleb128 0x1a
	.string	"c99"
	.byte	0xa
	.value	0x150
	.long	0x5d
	.byte	0x79
	.uleb128 0x9
	.long	.LASF208
	.byte	0xa
	.value	0x153
	.long	0x5d
	.byte	0x7a
	.uleb128 0x9
	.long	.LASF209
	.byte	0xa
	.value	0x157
	.long	0x5d
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF210
	.byte	0xa
	.value	0x15a
	.long	0x5d
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF211
	.byte	0xa
	.value	0x15d
	.long	0x5d
	.byte	0x7d
	.uleb128 0x9
	.long	.LASF212
	.byte	0xa
	.value	0x160
	.long	0x5d
	.byte	0x7e
	.uleb128 0x9
	.long	.LASF213
	.byte	0xa
	.value	0x163
	.long	0x5d
	.byte	0x7f
	.uleb128 0x9
	.long	.LASF214
	.byte	0xa
	.value	0x166
	.long	0x5d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF215
	.byte	0xa
	.value	0x169
	.long	0x5d
	.byte	0x81
	.uleb128 0x9
	.long	.LASF216
	.byte	0xa
	.value	0x16e
	.long	0x5d
	.byte	0x82
	.byte	0
	.uleb128 0x5
	.long	.LASF217
	.byte	0xa
	.byte	0x28
	.long	0xbe7
	.uleb128 0x7
	.long	.LASF217
	.byte	0x18
	.byte	0xa
	.byte	0xad
	.long	0xc33
	.uleb128 0x8
	.long	.LASF103
	.byte	0xa
	.byte	0xaf
	.long	0x3b
	.byte	0
	.uleb128 0x14
	.string	"col"
	.byte	0xa
	.byte	0xb0
	.long	0x64
	.byte	0x4
	.uleb128 0x10
	.long	.LASF218
	.byte	0xa
	.byte	0xb1
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x4
	.uleb128 0x8
	.long	.LASF219
	.byte	0xa
	.byte	0xb2
	.long	0x5d
	.byte	0x7
	.uleb128 0x14
	.string	"val"
	.byte	0xa
	.byte	0xbb
	.long	0xf57
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF220
	.byte	0xa
	.byte	0x29
	.long	0xc3e
	.uleb128 0x7
	.long	.LASF220
	.byte	0x10
	.byte	0xa
	.byte	0x9c
	.long	0xc63
	.uleb128 0x14
	.string	"len"
	.byte	0xa
	.byte	0x9e
	.long	0x3b
	.byte	0
	.uleb128 0x8
	.long	.LASF221
	.byte	0xa
	.byte	0x9f
	.long	0x4a1
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF222
	.byte	0xa
	.byte	0x2a
	.long	0xc6e
	.uleb128 0x1b
	.long	.LASF222
	.byte	0x20
	.byte	0xa
	.value	0x1b7
	.long	0xcda
	.uleb128 0x9
	.long	.LASF223
	.byte	0xa
	.value	0x1b9
	.long	0x47c
	.byte	0
	.uleb128 0x9
	.long	.LASF224
	.byte	0xa
	.value	0x1ba
	.long	0x64
	.byte	0x10
	.uleb128 0x9
	.long	.LASF225
	.byte	0xa
	.value	0x1bb
	.long	0x5d
	.byte	0x12
	.uleb128 0x9
	.long	.LASF226
	.byte	0xa
	.value	0x1bc
	.long	0x5d
	.byte	0x13
	.uleb128 0x1c
	.long	.LASF218
	.byte	0xa
	.value	0x1bd
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x9
	.long	.LASF219
	.byte	0xa
	.value	0x1be
	.long	0x5d
	.byte	0x15
	.uleb128 0x9
	.long	.LASF227
	.byte	0xa
	.value	0x1c6
	.long	0x113a
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF228
	.byte	0xa
	.byte	0x2b
	.long	0xce5
	.uleb128 0x1d
	.long	.LASF228
	.uleb128 0x5
	.long	.LASF229
	.byte	0xa
	.byte	0x2c
	.long	0xcf5
	.uleb128 0x1b
	.long	.LASF229
	.byte	0x38
	.byte	0xa
	.value	0x172
	.long	0xd5e
	.uleb128 0x9
	.long	.LASF230
	.byte	0xa
	.value	0x175
	.long	0x103e
	.byte	0
	.uleb128 0x9
	.long	.LASF231
	.byte	0xa
	.value	0x176
	.long	0x105f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF232
	.byte	0xa
	.value	0x177
	.long	0x107f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF233
	.byte	0xa
	.value	0x179
	.long	0x109a
	.byte	0x18
	.uleb128 0x9
	.long	.LASF234
	.byte	0xa
	.value	0x17a
	.long	0x109a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF223
	.byte	0xa
	.value	0x17b
	.long	0x10c0
	.byte	0x28
	.uleb128 0x9
	.long	.LASF235
	.byte	0xa
	.value	0x17c
	.long	0x10d6
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.long	.LASF237
	.byte	0x4
	.byte	0xa
	.byte	0x8f
	.long	0xf0e
	.uleb128 0xf
	.long	.LASF238
	.sleb128 0
	.uleb128 0xf
	.long	.LASF239
	.sleb128 1
	.uleb128 0xf
	.long	.LASF240
	.sleb128 2
	.uleb128 0xf
	.long	.LASF241
	.sleb128 3
	.uleb128 0xf
	.long	.LASF242
	.sleb128 4
	.uleb128 0xf
	.long	.LASF243
	.sleb128 5
	.uleb128 0xf
	.long	.LASF244
	.sleb128 6
	.uleb128 0xf
	.long	.LASF245
	.sleb128 7
	.uleb128 0xf
	.long	.LASF246
	.sleb128 8
	.uleb128 0xf
	.long	.LASF247
	.sleb128 9
	.uleb128 0xf
	.long	.LASF248
	.sleb128 10
	.uleb128 0xf
	.long	.LASF249
	.sleb128 11
	.uleb128 0xf
	.long	.LASF250
	.sleb128 12
	.uleb128 0xf
	.long	.LASF251
	.sleb128 13
	.uleb128 0xf
	.long	.LASF252
	.sleb128 14
	.uleb128 0xf
	.long	.LASF253
	.sleb128 15
	.uleb128 0xf
	.long	.LASF254
	.sleb128 16
	.uleb128 0xf
	.long	.LASF255
	.sleb128 17
	.uleb128 0xf
	.long	.LASF256
	.sleb128 18
	.uleb128 0xf
	.long	.LASF257
	.sleb128 19
	.uleb128 0xf
	.long	.LASF258
	.sleb128 20
	.uleb128 0xf
	.long	.LASF259
	.sleb128 21
	.uleb128 0xf
	.long	.LASF260
	.sleb128 22
	.uleb128 0xf
	.long	.LASF261
	.sleb128 23
	.uleb128 0xf
	.long	.LASF262
	.sleb128 24
	.uleb128 0xf
	.long	.LASF263
	.sleb128 25
	.uleb128 0xf
	.long	.LASF264
	.sleb128 26
	.uleb128 0xf
	.long	.LASF265
	.sleb128 27
	.uleb128 0xf
	.long	.LASF266
	.sleb128 28
	.uleb128 0xf
	.long	.LASF267
	.sleb128 29
	.uleb128 0xf
	.long	.LASF268
	.sleb128 30
	.uleb128 0xf
	.long	.LASF269
	.sleb128 31
	.uleb128 0xf
	.long	.LASF270
	.sleb128 32
	.uleb128 0xf
	.long	.LASF271
	.sleb128 33
	.uleb128 0xf
	.long	.LASF272
	.sleb128 34
	.uleb128 0xf
	.long	.LASF273
	.sleb128 35
	.uleb128 0xf
	.long	.LASF274
	.sleb128 36
	.uleb128 0xf
	.long	.LASF275
	.sleb128 37
	.uleb128 0xf
	.long	.LASF276
	.sleb128 38
	.uleb128 0xf
	.long	.LASF277
	.sleb128 39
	.uleb128 0xf
	.long	.LASF278
	.sleb128 40
	.uleb128 0xf
	.long	.LASF279
	.sleb128 41
	.uleb128 0xf
	.long	.LASF280
	.sleb128 42
	.uleb128 0xf
	.long	.LASF281
	.sleb128 43
	.uleb128 0xf
	.long	.LASF282
	.sleb128 44
	.uleb128 0xf
	.long	.LASF283
	.sleb128 45
	.uleb128 0xf
	.long	.LASF284
	.sleb128 46
	.uleb128 0xf
	.long	.LASF285
	.sleb128 47
	.uleb128 0xf
	.long	.LASF286
	.sleb128 48
	.uleb128 0xf
	.long	.LASF287
	.sleb128 49
	.uleb128 0xf
	.long	.LASF288
	.sleb128 50
	.uleb128 0xf
	.long	.LASF289
	.sleb128 51
	.uleb128 0xf
	.long	.LASF290
	.sleb128 52
	.uleb128 0xf
	.long	.LASF291
	.sleb128 53
	.uleb128 0xf
	.long	.LASF292
	.sleb128 54
	.uleb128 0xf
	.long	.LASF293
	.sleb128 55
	.uleb128 0xf
	.long	.LASF294
	.sleb128 56
	.uleb128 0xf
	.long	.LASF295
	.sleb128 57
	.uleb128 0xf
	.long	.LASF296
	.sleb128 58
	.uleb128 0xf
	.long	.LASF297
	.sleb128 59
	.uleb128 0xf
	.long	.LASF298
	.sleb128 60
	.uleb128 0xf
	.long	.LASF299
	.sleb128 61
	.uleb128 0xf
	.long	.LASF300
	.sleb128 62
	.uleb128 0xf
	.long	.LASF301
	.sleb128 63
	.uleb128 0xf
	.long	.LASF302
	.sleb128 64
	.uleb128 0xf
	.long	.LASF303
	.sleb128 65
	.uleb128 0xf
	.long	.LASF304
	.sleb128 66
	.uleb128 0xf
	.long	.LASF305
	.sleb128 67
	.uleb128 0xf
	.long	.LASF306
	.sleb128 68
	.byte	0
	.uleb128 0x19
	.long	.LASF307
	.byte	0x4
	.byte	0xa
	.byte	0x98
	.long	0xf57
	.uleb128 0xf
	.long	.LASF308
	.sleb128 0
	.uleb128 0xf
	.long	.LASF309
	.sleb128 1
	.uleb128 0xf
	.long	.LASF310
	.sleb128 2
	.uleb128 0xf
	.long	.LASF311
	.sleb128 3
	.uleb128 0xf
	.long	.LASF312
	.sleb128 4
	.uleb128 0xf
	.long	.LASF313
	.sleb128 5
	.uleb128 0xf
	.long	.LASF314
	.sleb128 6
	.uleb128 0xf
	.long	.LASF315
	.sleb128 7
	.uleb128 0xf
	.long	.LASF316
	.sleb128 8
	.uleb128 0xf
	.long	.LASF317
	.sleb128 9
	.byte	0
	.uleb128 0x1e
	.byte	0x10
	.byte	0xa
	.byte	0xb4
	.long	0xf95
	.uleb128 0x1f
	.long	.LASF318
	.byte	0xa
	.byte	0xb6
	.long	0xf95
	.uleb128 0x1f
	.long	.LASF319
	.byte	0xa
	.byte	0xb7
	.long	0xf9b
	.uleb128 0x20
	.string	"str"
	.byte	0xa
	.byte	0xb8
	.long	0xc3e
	.uleb128 0x1f
	.long	.LASF320
	.byte	0xa
	.byte	0xb9
	.long	0x3b
	.uleb128 0x20
	.string	"c"
	.byte	0xa
	.byte	0xba
	.long	0x5d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc63
	.uleb128 0x6
	.byte	0x8
	.long	0xfa1
	.uleb128 0xd
	.long	0xbdc
	.uleb128 0x1d
	.long	.LASF321
	.uleb128 0x6
	.byte	0x8
	.long	0xfa6
	.uleb128 0x7
	.long	.LASF322
	.byte	0x38
	.byte	0x8
	.byte	0x44
	.long	0x1012
	.uleb128 0x8
	.long	.LASF323
	.byte	0x8
	.byte	0x46
	.long	0x1012
	.byte	0
	.uleb128 0x8
	.long	.LASF324
	.byte	0x8
	.byte	0x4a
	.long	0x2ad
	.byte	0x8
	.uleb128 0x14
	.string	"len"
	.byte	0x8
	.byte	0x4b
	.long	0x3b
	.byte	0x10
	.uleb128 0x14
	.string	"ino"
	.byte	0x8
	.byte	0x4e
	.long	0x339
	.byte	0x18
	.uleb128 0x14
	.string	"dev"
	.byte	0x8
	.byte	0x4f
	.long	0x344
	.byte	0x20
	.uleb128 0x8
	.long	.LASF146
	.byte	0x8
	.byte	0x51
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF325
	.byte	0x8
	.byte	0x54
	.long	0x120a
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfb1
	.uleb128 0x1d
	.long	.LASF326
	.uleb128 0x6
	.byte	0x8
	.long	0x1018
	.uleb128 0x13
	.long	0x1038
	.uleb128 0x12
	.long	0x1038
	.uleb128 0x12
	.long	0xf9b
	.uleb128 0x12
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x85b
	.uleb128 0x6
	.byte	0x8
	.long	0x1023
	.uleb128 0x13
	.long	0x1054
	.uleb128 0x12
	.long	0x1038
	.uleb128 0x12
	.long	0x1054
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x105a
	.uleb128 0xd
	.long	0x7a1
	.uleb128 0x6
	.byte	0x8
	.long	0x1044
	.uleb128 0x13
	.long	0x107f
	.uleb128 0x12
	.long	0x1038
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x12
	.long	0x4a1
	.uleb128 0x12
	.long	0xf9b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1065
	.uleb128 0x13
	.long	0x109a
	.uleb128 0x12
	.long	0x1038
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x12
	.long	0xf95
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1085
	.uleb128 0x13
	.long	0x10b5
	.uleb128 0x12
	.long	0x1038
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x12
	.long	0x10b5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10bb
	.uleb128 0xd
	.long	0xc33
	.uleb128 0x6
	.byte	0x8
	.long	0x10a0
	.uleb128 0x13
	.long	0x10d6
	.uleb128 0x12
	.long	0x1038
	.uleb128 0x12
	.long	0x3b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10c6
	.uleb128 0x21
	.long	.LASF327
	.byte	0x4
	.byte	0xa
	.value	0x19a
	.long	0x10fc
	.uleb128 0xf
	.long	.LASF328
	.sleb128 0
	.uleb128 0xf
	.long	.LASF329
	.sleb128 1
	.uleb128 0xf
	.long	.LASF330
	.sleb128 2
	.byte	0
	.uleb128 0x21
	.long	.LASF331
	.byte	0x4
	.byte	0xa
	.value	0x1a3
	.long	0x113a
	.uleb128 0xf
	.long	.LASF332
	.sleb128 0
	.uleb128 0xf
	.long	.LASF333
	.sleb128 1
	.uleb128 0xf
	.long	.LASF334
	.sleb128 2
	.uleb128 0xf
	.long	.LASF335
	.sleb128 3
	.uleb128 0xf
	.long	.LASF336
	.sleb128 4
	.uleb128 0xf
	.long	.LASF337
	.sleb128 5
	.uleb128 0xf
	.long	.LASF338
	.sleb128 6
	.uleb128 0xf
	.long	.LASF339
	.sleb128 7
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0xa
	.value	0x1c0
	.long	0x1174
	.uleb128 0x23
	.long	.LASF340
	.byte	0xa
	.value	0x1c2
	.long	0x1174
	.uleb128 0x23
	.long	.LASF341
	.byte	0xa
	.value	0x1c3
	.long	0x11ab
	.uleb128 0x23
	.long	.LASF342
	.byte	0xa
	.value	0x1c4
	.long	0xd5e
	.uleb128 0x23
	.long	.LASF343
	.byte	0xa
	.value	0x1c5
	.long	0x10fc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcda
	.uleb128 0x7
	.long	.LASF344
	.byte	0x28
	.byte	0x1
	.byte	0x1e
	.long	0x11ab
	.uleb128 0x8
	.long	.LASF323
	.byte	0x1
	.byte	0x20
	.long	0x11ab
	.byte	0
	.uleb128 0x8
	.long	.LASF345
	.byte	0x1
	.byte	0x21
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF346
	.byte	0x1
	.byte	0x22
	.long	0x155e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x117a
	.uleb128 0x5
	.long	.LASF347
	.byte	0x8
	.byte	0x2f
	.long	0x11bc
	.uleb128 0x7
	.long	.LASF347
	.byte	0x20
	.byte	0x8
	.byte	0x30
	.long	0x11f9
	.uleb128 0x8
	.long	.LASF323
	.byte	0x8
	.byte	0x32
	.long	0x11f9
	.byte	0
	.uleb128 0x8
	.long	.LASF348
	.byte	0x8
	.byte	0x33
	.long	0x11ff
	.byte	0x8
	.uleb128 0x14
	.string	"cur"
	.byte	0x8
	.byte	0x33
	.long	0x11ff
	.byte	0x10
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x33
	.long	0x11ff
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11bc
	.uleb128 0x6
	.byte	0x8
	.long	0x5d
	.uleb128 0x1d
	.long	.LASF349
	.uleb128 0x6
	.byte	0x8
	.long	0x1205
	.uleb128 0x19
	.long	.LASF350
	.byte	0x4
	.byte	0x8
	.byte	0x58
	.long	0x1235
	.uleb128 0xf
	.long	.LASF351
	.sleb128 0
	.uleb128 0xf
	.long	.LASF352
	.sleb128 1
	.uleb128 0xf
	.long	.LASF353
	.sleb128 2
	.uleb128 0xf
	.long	.LASF354
	.sleb128 3
	.byte	0
	.uleb128 0x24
	.long	.LASF529
	.byte	0x8
	.byte	0x8
	.byte	0x5a
	.long	0x1258
	.uleb128 0x1f
	.long	.LASF355
	.byte	0x8
	.byte	0x5c
	.long	0xf9b
	.uleb128 0x1f
	.long	.LASF356
	.byte	0x8
	.byte	0x5d
	.long	0x1258
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf9b
	.uleb128 0x5
	.long	.LASF357
	.byte	0x8
	.byte	0x61
	.long	0x1269
	.uleb128 0x7
	.long	.LASF357
	.byte	0x20
	.byte	0x8
	.byte	0x62
	.long	0x12a6
	.uleb128 0x8
	.long	.LASF323
	.byte	0x8
	.byte	0x64
	.long	0x12a6
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x64
	.long	0x12a6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF348
	.byte	0x8
	.byte	0x65
	.long	0x12ac
	.byte	0x10
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x65
	.long	0x12ac
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x125e
	.uleb128 0x6
	.byte	0x8
	.long	0xbdc
	.uleb128 0x5
	.long	.LASF358
	.byte	0x8
	.byte	0x68
	.long	0x12bd
	.uleb128 0x7
	.long	.LASF358
	.byte	0x38
	.byte	0x8
	.byte	0x69
	.long	0x131e
	.uleb128 0x8
	.long	.LASF323
	.byte	0x8
	.byte	0x6c
	.long	0x131e
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x6c
	.long	0x131e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF346
	.byte	0x8
	.byte	0x70
	.long	0x1235
	.byte	0x10
	.uleb128 0x8
	.long	.LASF359
	.byte	0x8
	.byte	0x71
	.long	0x1235
	.byte	0x18
	.uleb128 0x8
	.long	.LASF360
	.byte	0x8
	.byte	0x75
	.long	0x1324
	.byte	0x20
	.uleb128 0x8
	.long	.LASF340
	.byte	0x8
	.byte	0x78
	.long	0xf95
	.byte	0x28
	.uleb128 0x8
	.long	.LASF361
	.byte	0x8
	.byte	0x7b
	.long	0x854
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12b2
	.uleb128 0x6
	.byte	0x8
	.long	0x11b1
	.uleb128 0x7
	.long	.LASF362
	.byte	0x9
	.byte	0x8
	.byte	0x7e
	.long	0x13a3
	.uleb128 0x8
	.long	.LASF363
	.byte	0x8
	.byte	0x81
	.long	0x5d
	.byte	0
	.uleb128 0x8
	.long	.LASF364
	.byte	0x8
	.byte	0x84
	.long	0x5d
	.byte	0x1
	.uleb128 0x8
	.long	.LASF365
	.byte	0x8
	.byte	0x87
	.long	0x5d
	.byte	0x2
	.uleb128 0x8
	.long	.LASF366
	.byte	0x8
	.byte	0x8b
	.long	0x5d
	.byte	0x3
	.uleb128 0x8
	.long	.LASF367
	.byte	0x8
	.byte	0x8e
	.long	0x5d
	.byte	0x4
	.uleb128 0x8
	.long	.LASF368
	.byte	0x8
	.byte	0x91
	.long	0x5d
	.byte	0x5
	.uleb128 0x8
	.long	.LASF369
	.byte	0x8
	.byte	0x94
	.long	0x5d
	.byte	0x6
	.uleb128 0x8
	.long	.LASF370
	.byte	0x8
	.byte	0x97
	.long	0x5d
	.byte	0x7
	.uleb128 0x8
	.long	.LASF371
	.byte	0x8
	.byte	0x9a
	.long	0x5d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF134
	.byte	0x28
	.byte	0x8
	.byte	0x9e
	.long	0x13ec
	.uleb128 0x8
	.long	.LASF372
	.byte	0x8
	.byte	0xa0
	.long	0xf95
	.byte	0
	.uleb128 0x8
	.long	.LASF373
	.byte	0x8
	.byte	0xa1
	.long	0xf95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF374
	.byte	0x8
	.byte	0xa2
	.long	0xf95
	.byte	0x10
	.uleb128 0x8
	.long	.LASF375
	.byte	0x8
	.byte	0xa3
	.long	0xf95
	.byte	0x18
	.uleb128 0x8
	.long	.LASF376
	.byte	0x8
	.byte	0xa4
	.long	0xf95
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x871
	.uleb128 0x1d
	.long	.LASF377
	.uleb128 0x6
	.byte	0x8
	.long	0x13f2
	.uleb128 0x7
	.long	.LASF158
	.byte	0x20
	.byte	0x1
	.byte	0x27
	.long	0x1452
	.uleb128 0x8
	.long	.LASF323
	.byte	0x1
	.byte	0x29
	.long	0x1452
	.byte	0
	.uleb128 0x8
	.long	.LASF103
	.byte	0x1
	.byte	0x2a
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF111
	.byte	0x1
	.byte	0x2b
	.long	0x14b8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF378
	.byte	0x1
	.byte	0x2c
	.long	0x854
	.byte	0x18
	.uleb128 0x8
	.long	.LASF379
	.byte	0x1
	.byte	0x2d
	.long	0x854
	.byte	0x19
	.uleb128 0x8
	.long	.LASF218
	.byte	0x1
	.byte	0x2e
	.long	0x2d
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13fd
	.uleb128 0x6
	.byte	0x8
	.long	0x866
	.uleb128 0x6
	.byte	0x8
	.long	0x12bd
	.uleb128 0x7
	.long	.LASF110
	.byte	0x18
	.byte	0x1
	.byte	0x52
	.long	0x14ad
	.uleb128 0x8
	.long	.LASF380
	.byte	0x1
	.byte	0x54
	.long	0x15a9
	.byte	0
	.uleb128 0x8
	.long	.LASF324
	.byte	0x1
	.byte	0x55
	.long	0x15bf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF381
	.byte	0x1
	.byte	0x56
	.long	0x64
	.byte	0x10
	.uleb128 0x8
	.long	.LASF382
	.byte	0x1
	.byte	0x57
	.long	0x5d
	.byte	0x12
	.uleb128 0x8
	.long	.LASF219
	.byte	0x1
	.byte	0x58
	.long	0x5d
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14b3
	.uleb128 0xd
	.long	0x1464
	.uleb128 0x6
	.byte	0x8
	.long	0x14be
	.uleb128 0xd
	.long	0xc63
	.uleb128 0x1d
	.long	.LASF383
	.uleb128 0x6
	.byte	0x8
	.long	0x14c3
	.uleb128 0x1d
	.long	.LASF129
	.uleb128 0x6
	.byte	0x8
	.long	0x14ce
	.uleb128 0x7
	.long	.LASF384
	.byte	0x20
	.byte	0x1
	.byte	0x33
	.long	0x1514
	.uleb128 0x8
	.long	.LASF323
	.byte	0x1
	.byte	0x35
	.long	0x1514
	.byte	0
	.uleb128 0x8
	.long	.LASF385
	.byte	0x1
	.byte	0x36
	.long	0x14b8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF386
	.byte	0x1
	.byte	0x37
	.long	0x2d
	.byte	0x10
	.uleb128 0x14
	.string	"u"
	.byte	0x1
	.byte	0x3b
	.long	0x158a
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14d9
	.uleb128 0x6
	.byte	0x8
	.long	0x4b7
	.uleb128 0x21
	.long	.LASF387
	.byte	0x4
	.byte	0x8
	.value	0x16c
	.long	0x1552
	.uleb128 0xf
	.long	.LASF388
	.sleb128 0
	.uleb128 0xf
	.long	.LASF389
	.sleb128 1
	.uleb128 0xf
	.long	.LASF390
	.sleb128 2
	.uleb128 0xf
	.long	.LASF391
	.sleb128 3
	.uleb128 0xf
	.long	.LASF392
	.sleb128 4
	.uleb128 0x25
	.string	"ICE"
	.sleb128 5
	.byte	0
	.uleb128 0x26
	.long	.LASF393
	.byte	0x8
	.value	0x1ad
	.long	0x5d
	.uleb128 0xa
	.long	0xbdc
	.long	0x156e
	.uleb128 0xb
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF394
	.byte	0x1
	.byte	0x32
	.long	0x1579
	.uleb128 0x6
	.byte	0x8
	.long	0x157f
	.uleb128 0x13
	.long	0x158a
	.uleb128 0x12
	.long	0x1038
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.long	0x15a9
	.uleb128 0x1f
	.long	.LASF380
	.byte	0x1
	.byte	0x39
	.long	0x156e
	.uleb128 0x1f
	.long	.LASF395
	.byte	0x1
	.byte	0x3a
	.long	0x1514
	.byte	0
	.uleb128 0x5
	.long	.LASF396
	.byte	0x1
	.byte	0x50
	.long	0x1579
	.uleb128 0x5
	.long	.LASF110
	.byte	0x1
	.byte	0x51
	.long	0x1464
	.uleb128 0x6
	.byte	0x8
	.long	0x15c5
	.uleb128 0xd
	.long	0x1552
	.uleb128 0xe
	.byte	0x4
	.byte	0x1
	.byte	0xb4
	.long	0x164b
	.uleb128 0xf
	.long	.LASF397
	.sleb128 0
	.uleb128 0xf
	.long	.LASF398
	.sleb128 1
	.uleb128 0xf
	.long	.LASF399
	.sleb128 2
	.uleb128 0xf
	.long	.LASF400
	.sleb128 3
	.uleb128 0xf
	.long	.LASF401
	.sleb128 4
	.uleb128 0xf
	.long	.LASF402
	.sleb128 5
	.uleb128 0xf
	.long	.LASF403
	.sleb128 6
	.uleb128 0xf
	.long	.LASF404
	.sleb128 7
	.uleb128 0xf
	.long	.LASF405
	.sleb128 8
	.uleb128 0xf
	.long	.LASF406
	.sleb128 9
	.uleb128 0xf
	.long	.LASF407
	.sleb128 10
	.uleb128 0xf
	.long	.LASF408
	.sleb128 11
	.uleb128 0xf
	.long	.LASF409
	.sleb128 12
	.uleb128 0xf
	.long	.LASF410
	.sleb128 13
	.uleb128 0xf
	.long	.LASF411
	.sleb128 14
	.uleb128 0xf
	.long	.LASF412
	.sleb128 15
	.uleb128 0xf
	.long	.LASF413
	.sleb128 16
	.uleb128 0xf
	.long	.LASF414
	.sleb128 17
	.uleb128 0xf
	.long	.LASF415
	.sleb128 18
	.uleb128 0xf
	.long	.LASF416
	.sleb128 19
	.byte	0
	.uleb128 0x27
	.long	.LASF417
	.byte	0x1
	.byte	0xd1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1677
	.uleb128 0x28
	.long	.LASF95
	.byte	0x1
	.byte	0xd2
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF418
	.byte	0x1
	.byte	0xe0
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x16a3
	.uleb128 0x28
	.long	.LASF95
	.byte	0x1
	.byte	0xe1
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF419
	.byte	0x1
	.byte	0xea
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x16cf
	.uleb128 0x28
	.long	.LASF95
	.byte	0x1
	.byte	0xeb
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF420
	.byte	0x1
	.byte	0xf7
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1709
	.uleb128 0x28
	.long	.LASF95
	.byte	0x1
	.byte	0xf8
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF421
	.byte	0x1
	.byte	0xf9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x110
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1755
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x111
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"dir"
	.byte	0x1
	.value	0x112
	.long	0x1755
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF423
	.byte	0x1
	.value	0x113
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x175b
	.uleb128 0xd
	.long	0x15b4
	.uleb128 0x2d
	.long	.LASF501
	.byte	0x1
	.value	0x136
	.long	0x2d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x17ce
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x137
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF423
	.byte	0x1
	.value	0x138
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.string	"dir"
	.byte	0x1
	.value	0x13a
	.long	0x1755
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF424
	.byte	0x1
	.value	0x13b
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF425
	.byte	0x1
	.value	0x13c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF426
	.byte	0x1
	.value	0x191
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1829
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x192
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF427
	.byte	0x1
	.value	0x193
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.string	"buf"
	.byte	0x1
	.value	0x194
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF345
	.byte	0x1
	.value	0x195
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x30
	.long	.LASF430
	.byte	0x1
	.value	0x1a5
	.long	0xf95
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1879
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x1a6
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x1a8
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x1
	.value	0x1a9
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF428
	.byte	0x1
	.value	0x1d1
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x18b6
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x1d2
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x1d4
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF429
	.byte	0x1
	.value	0x1e0
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x18f3
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x1e1
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x1e3
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF431
	.byte	0x1
	.value	0x1f8
	.long	0xf9b
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x19a2
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x1f9
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF432
	.byte	0x1
	.value	0x1fb
	.long	0x12ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x1
	.value	0x1fc
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF100
	.byte	0x1
	.value	0x1fd
	.long	0x11ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x1fe
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF433
	.byte	0x1
	.value	0x1fe
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF434
	.byte	0x1
	.value	0x1fe
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2f
	.long	.LASF435
	.byte	0x1
	.value	0x21b
	.long	0x11ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF436
	.byte	0x1
	.value	0x22d
	.long	0xf9b
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x19f2
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x22e
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"dir"
	.byte	0x1
	.value	0x230
	.long	0x4a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF432
	.byte	0x1
	.value	0x231
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF437
	.byte	0x1
	.value	0x252
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a3e
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x253
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF218
	.byte	0x1
	.value	0x254
	.long	0x1210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF432
	.byte	0x1
	.value	0x256
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF438
	.byte	0x1
	.value	0x27b
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a6c
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x27c
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF439
	.byte	0x1
	.value	0x282
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a9a
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x283
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF440
	.byte	0x1
	.value	0x289
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac8
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x28a
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF441
	.byte	0x1
	.value	0x294
	.long	0x3b
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b39
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x295
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF359
	.byte	0x1
	.value	0x296
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x1
	.value	0x298
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.long	.LASF442
	.byte	0x1
	.value	0x29c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF443
	.byte	0x1
	.value	0x2ae
	.long	0x1bd6
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd6
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x2af
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"str"
	.byte	0x1
	.value	0x2b0
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x2b1
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF444
	.byte	0x1
	.value	0x2b3
	.long	0x1bd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"dst"
	.byte	0x1
	.value	0x2b4
	.long	0x1bd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF71
	.byte	0x1
	.value	0x2b5
	.long	0x15bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x2b6
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF445
	.byte	0x1
	.value	0x2b7
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1552
	.uleb128 0x32
	.long	.LASF446
	.byte	0x1
	.value	0x2d0
	.long	0x2d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c48
	.uleb128 0x2c
	.string	"str"
	.byte	0x1
	.value	0x2d1
	.long	0x15bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x2d2
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LASF447
	.byte	0x1
	.value	0x2d3
	.long	0x1c48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"reg"
	.byte	0x1
	.value	0x2d5
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x2d6
	.long	0x1552
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56
	.uleb128 0x2a
	.long	.LASF448
	.byte	0x1
	.value	0x2e7
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cb8
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x2e8
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x1
	.value	0x2ea
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF449
	.byte	0x1
	.value	0x2eb
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF450
	.byte	0x1
	.value	0x2ec
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"cap"
	.byte	0x1
	.value	0x2ef
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2a
	.long	.LASF451
	.byte	0x1
	.value	0x316
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d41
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x317
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x1
	.value	0x319
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF449
	.byte	0x1
	.value	0x31a
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF450
	.byte	0x1
	.value	0x31b
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF452
	.byte	0x1
	.value	0x31c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF145
	.byte	0x1
	.value	0x31d
	.long	0x782
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF442
	.byte	0x1
	.value	0x31e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x33
	.long	.LASF463
	.byte	0x1
	.value	0x35d
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dab
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x35e
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF145
	.byte	0x1
	.value	0x35f
	.long	0x782
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF141
	.byte	0x1
	.value	0x360
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF453
	.byte	0x1
	.value	0x361
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF146
	.byte	0x1
	.value	0x362
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2a
	.long	.LASF454
	.byte	0x1
	.value	0x36e
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1df7
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x36f
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF455
	.byte	0x1
	.value	0x370
	.long	0x1520
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF456
	.byte	0x1
	.value	0x371
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF457
	.byte	0x1
	.value	0x37e
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e25
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x37f
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF458
	.byte	0x1
	.value	0x385
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e53
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x386
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF459
	.byte	0x1
	.value	0x38e
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e90
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x38f
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"str"
	.byte	0x1
	.value	0x391
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF460
	.byte	0x1
	.value	0x39f
	.long	0x1514
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ed1
	.uleb128 0x2b
	.long	.LASF461
	.byte	0x1
	.value	0x3a0
	.long	0x1514
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF385
	.byte	0x1
	.value	0x3a1
	.long	0x14b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF462
	.byte	0x1
	.value	0x3ad
	.long	0x1514
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f3f
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x3ae
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF461
	.byte	0x1
	.value	0x3af
	.long	0x1f3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF385
	.byte	0x1
	.value	0x3b0
	.long	0x14b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF380
	.byte	0x1
	.value	0x3b1
	.long	0x156e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"new"
	.byte	0x1
	.value	0x3b3
	.long	0x1514
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1514
	.uleb128 0x33
	.long	.LASF464
	.byte	0x1
	.value	0x3cc
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fdf
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x3cd
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF395
	.byte	0x1
	.value	0x3ce
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF324
	.byte	0x1
	.value	0x3cf
	.long	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF380
	.byte	0x1
	.value	0x3d0
	.long	0x156e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF461
	.byte	0x1
	.value	0x3d2
	.long	0x1f3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF465
	.byte	0x1
	.value	0x3d3
	.long	0x1514
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x3d4
	.long	0x14b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF530
	.byte	0x1
	.value	0x3ea
	.quad	.L131
	.byte	0
	.uleb128 0x33
	.long	.LASF466
	.byte	0x1
	.value	0x3f9
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x200d
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x3fa
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF467
	.byte	0x1
	.value	0x40c
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x2066
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x40d
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x40f
	.long	0x2066
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x1
	.value	0x410
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF345
	.byte	0x1
	.value	0x411
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x206c
	.uleb128 0xd
	.long	0x14d9
	.uleb128 0x2a
	.long	.LASF468
	.byte	0x1
	.value	0x439
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x209f
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x43a
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF469
	.byte	0x1
	.value	0x449
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x20ea
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x44a
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"tok"
	.byte	0x1
	.value	0x44c
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"hp"
	.byte	0x1
	.value	0x44d
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF470
	.byte	0x1
	.value	0x46e
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x2127
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x46f
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF100
	.byte	0x1
	.value	0x471
	.long	0x1458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF471
	.byte	0x1
	.value	0x481
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x2173
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x482
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF432
	.byte	0x1
	.value	0x484
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF472
	.byte	0x1
	.value	0x485
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x30
	.long	.LASF473
	.byte	0x1
	.value	0x49d
	.long	0xf9b
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x21c6
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x49e
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2f
	.long	.LASF444
	.byte	0x1
	.value	0x4a2
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF474
	.byte	0x1
	.value	0x4ab
	.long	0xf9b
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x2207
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x4ac
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF475
	.byte	0x1
	.value	0x4ae
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF476
	.byte	0x1
	.value	0x4c0
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2281
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x4c1
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"in"
	.byte	0x1
	.value	0x4c2
	.long	0x10b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"src"
	.byte	0x1
	.value	0x4c4
	.long	0x4a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF71
	.byte	0x1
	.value	0x4c4
	.long	0x4a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF477
	.byte	0x1
	.value	0x4c5
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF444
	.byte	0x1
	.value	0x4c5
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.long	.LASF478
	.byte	0x1
	.value	0x4d6
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x22df
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x4d7
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF475
	.byte	0x1
	.value	0x4d9
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2f
	.long	.LASF479
	.byte	0x1
	.value	0x4e9
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF480
	.byte	0x1
	.value	0x4f3
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x230d
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x4f4
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x4fb
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x236b
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x4fc
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF425
	.byte	0x1
	.value	0x4fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x31
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x502
	.long	0x14b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x510
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x23b7
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x511
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF425
	.byte	0x1
	.value	0x513
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x514
	.long	0x14b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF483
	.byte	0x1
	.value	0x529
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f4
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x52a
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF425
	.byte	0x1
	.value	0x52c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF484
	.byte	0x1
	.value	0x538
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x2440
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x539
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF100
	.byte	0x1
	.value	0x53b
	.long	0x1458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x53c
	.long	0x1452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF485
	.byte	0x1
	.value	0x55a
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x248c
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x55b
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF100
	.byte	0x1
	.value	0x55d
	.long	0x1458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x55e
	.long	0x1452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF486
	.byte	0x1
	.value	0x57e
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x2508
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x57f
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF100
	.byte	0x1
	.value	0x581
	.long	0x1458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x582
	.long	0x1452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.value	0x595
	.long	0x2508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x1
	.value	0x595
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x39a
	.uleb128 0x2a
	.long	.LASF488
	.byte	0x1
	.value	0x59e
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x2611
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x59f
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF425
	.byte	0x1
	.value	0x5a0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.long	.LASF218
	.byte	0x1
	.value	0x5a1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF489
	.byte	0x1
	.value	0x5a2
	.long	0x14b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x5a4
	.long	0x1452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF100
	.byte	0x1
	.value	0x5a5
	.long	0x1458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2e
	.string	"__h"
	.byte	0x1
	.value	0x5a7
	.long	0x2508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x25df
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.value	0x5a7
	.long	0x2508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF490
	.byte	0x1
	.value	0x5a7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x31
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2f
	.long	.LASF491
	.byte	0x1
	.value	0x5a7
	.long	0x2508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF227
	.byte	0x1
	.value	0x5a7
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF492
	.byte	0x1
	.value	0x5bc
	.long	0x2d
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x26c4
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x5bd
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x5be
	.long	0x26c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF218
	.byte	0x1
	.value	0x5bf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF494
	.byte	0x1
	.value	0x5c1
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF344
	.byte	0x1
	.value	0x5c2
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF495
	.byte	0x1
	.value	0x5c3
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x37
	.long	.Ldebug_ranges0+0
	.uleb128 0x2f
	.long	.LASF496
	.byte	0x1
	.value	0x5de
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x1
	.value	0x5df
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF477
	.byte	0x1
	.value	0x5e0
	.long	0x12ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11ab
	.uleb128 0x30
	.long	.LASF497
	.byte	0x1
	.value	0x60b
	.long	0xf95
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x276b
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x60c
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF493
	.byte	0x1
	.value	0x60d
	.long	0x26c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF218
	.byte	0x1
	.value	0x60e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF444
	.byte	0x1
	.value	0x610
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF498
	.byte	0x1
	.value	0x611
	.long	0xf9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x61e
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.string	"sym"
	.byte	0x1
	.value	0x61f
	.long	0x11ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF499
	.byte	0x1
	.value	0x62e
	.long	0x26c4
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x27e9
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x1
	.value	0x62f
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF500
	.byte	0x1
	.value	0x630
	.long	0x27e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x632
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF444
	.byte	0x1
	.value	0x633
	.long	0x26c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2f
	.long	.LASF344
	.byte	0x1
	.value	0x637
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x27ef
	.uleb128 0xd
	.long	0x117a
	.uleb128 0x2d
	.long	.LASF502
	.byte	0x1
	.value	0x64b
	.long	0x2d
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x2853
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x64c
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x64d
	.long	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF344
	.byte	0x1
	.value	0x64f
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x650
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF503
	.byte	0x1
	.value	0x65d
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x289f
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x65e
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF504
	.byte	0x1
	.value	0x660
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x661
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF505
	.byte	0x1
	.value	0x67e
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x2919
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x67f
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x681
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF344
	.byte	0x1
	.value	0x682
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x68a
	.long	0x26c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF80
	.byte	0x1
	.value	0x68a
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF506
	.byte	0x1
	.value	0x6a5
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x2983
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x6a6
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"str"
	.byte	0x1
	.value	0x6a7
	.long	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.value	0x6a9
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x6a9
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF345
	.byte	0x1
	.value	0x6aa
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x33
	.long	.LASF507
	.byte	0x1
	.value	0x6c3
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x29c0
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x6c4
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"str"
	.byte	0x1
	.value	0x6c5
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF508
	.byte	0x1
	.value	0x6cc
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x29fd
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x6cd
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF340
	.byte	0x1
	.value	0x6ce
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF509
	.byte	0x1
	.value	0x6d5
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a3a
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x6d6
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"str"
	.byte	0x1
	.value	0x6d7
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF510
	.byte	0x1
	.value	0x6de
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a77
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x6df
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"str"
	.byte	0x1
	.value	0x6e0
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF511
	.byte	0x1
	.value	0x6e7
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b03
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x6e8
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"str"
	.byte	0x1
	.value	0x6e9
	.long	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF218
	.byte	0x1
	.value	0x6ea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF345
	.byte	0x1
	.value	0x6ec
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x6ed
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.value	0x6f3
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF512
	.byte	0x1
	.value	0x701
	.long	0x3b
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b35
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x702
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF513
	.byte	0x1
	.value	0x709
	.long	0x2b67
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b67
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x70a
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x93e
	.uleb128 0x38
	.long	.LASF514
	.byte	0x1
	.value	0x711
	.long	0x2b9f
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b9f
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x712
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcea
	.uleb128 0x38
	.long	.LASF515
	.byte	0x1
	.value	0x719
	.long	0x2bd7
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bd7
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x71a
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2bdd
	.uleb128 0xd
	.long	0x7f9
	.uleb128 0x39
	.long	.LASF516
	.byte	0x1
	.value	0x721
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c1e
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x722
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"cb"
	.byte	0x1
	.value	0x723
	.long	0x2b9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF517
	.byte	0x1
	.value	0x72c
	.long	0x1458
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d25
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x72d
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF100
	.byte	0x1
	.value	0x72e
	.long	0x15bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0x72f
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF163
	.byte	0x1
	.value	0x730
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.long	.LASF165
	.byte	0x1
	.value	0x731
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"new"
	.byte	0x1
	.value	0x733
	.long	0x1458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2e
	.string	"__h"
	.byte	0x1
	.value	0x733
	.long	0x2508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x2cf3
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.value	0x733
	.long	0x2508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF490
	.byte	0x1
	.value	0x733
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x31
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2f
	.long	.LASF491
	.byte	0x1
	.value	0x733
	.long	0x2508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF227
	.byte	0x1
	.value	0x733
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF518
	.byte	0x1
	.value	0x748
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x2db1
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x749
	.long	0x1038
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF100
	.byte	0x1
	.value	0x74b
	.long	0x1458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"ifs"
	.byte	0x1
	.value	0x74c
	.long	0x1452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF519
	.byte	0x1
	.value	0x74d
	.long	0x854
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x31
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2e
	.string	"__o"
	.byte	0x1
	.value	0x75f
	.long	0x2508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF487
	.byte	0x1
	.value	0x75f
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF520
	.byte	0x1
	.value	0x764
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dfb
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.value	0x765
	.long	0x1038
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x767
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF318
	.byte	0x1
	.value	0x768
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	0x15b4
	.long	0x2e0b
	.uleb128 0xb
	.long	0x34
	.byte	0x12
	.byte	0
	.uleb128 0x3a
	.long	.LASF521
	.byte	0x1
	.byte	0xbe
	.long	0x2e20
	.uleb128 0x9
	.byte	0x3
	.quad	dtable
	.uleb128 0xd
	.long	0x2dfb
	.uleb128 0x3a
	.long	.LASF522
	.byte	0x1
	.byte	0xc8
	.long	0x175b
	.uleb128 0x9
	.byte	0x3
	.quad	linemarker_dir
	.uleb128 0x3b
	.long	.LASF523
	.byte	0xc
	.byte	0xaa
	.long	0x281
	.uleb128 0xa
	.long	0x64
	.long	0x2e55
	.uleb128 0xb
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x3b
	.long	.LASF524
	.byte	0xb
	.byte	0x48
	.long	0x2e60
	.uleb128 0xd
	.long	0x2e45
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x5
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	.LBB12-.Ltext0
	.quad	.LBE12-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF268:
	.string	"CPP_MULT_EQ"
.LASF333:
	.string	"BT_DATE"
.LASF404:
	.string	"T_UNDEF"
.LASF76:
	.string	"chunk"
.LASF402:
	.string	"T_ELSE"
.LASF8:
	.string	"size_t"
.LASF364:
	.string	"skipping"
.LASF377:
	.string	"include_file"
.LASF0:
	.string	"sizetype"
.LASF52:
	.string	"_sch_isprint"
.LASF115:
	.string	"base_run"
.LASF92:
	.string	"alloc_node"
.LASF367:
	.string	"lexing_comment"
.LASF149:
	.string	"used"
.LASF433:
	.string	"total_len"
.LASF247:
	.string	"CPP_AND"
.LASF303:
	.string	"CPP_MACRO_ARG"
.LASF253:
	.string	"CPP_MAX"
.LASF508:
	.string	"cpp_undef"
.LASF140:
	.string	"line_map"
.LASF408:
	.string	"T_PRAGMA"
.LASF25:
	.string	"_IO_save_end"
.LASF341:
	.string	"answers"
.LASF418:
	.string	"check_eol"
.LASF141:
	.string	"to_file"
.LASF59:
	.string	"_sch_isnvsp"
.LASF56:
	.string	"_sch_isxdigit"
.LASF67:
	.string	"dev_t"
.LASF135:
	.string	"print_version"
.LASF195:
	.string	"warn_system_headers"
.LASF168:
	.string	"out_fname"
.LASF70:
	.string	"_obstack_chunk"
.LASF279:
	.string	"CPP_PASTE"
.LASF118:
	.string	"keep_tokens"
.LASF471:
	.string	"do_pragma_dependency"
.LASF256:
	.string	"CPP_OR_OR"
.LASF358:
	.string	"cpp_context"
.LASF401:
	.string	"T_IF"
.LASF18:
	.string	"_IO_write_base"
.LASF512:
	.string	"cpp_errors"
.LASF101:
	.string	"state"
.LASF335:
	.string	"BT_BASE_FILE"
.LASF34:
	.string	"_lock"
.LASF495:
	.string	"acount"
.LASF378:
	.string	"skip_elses"
.LASF84:
	.string	"extra_arg"
.LASF375:
	.string	"n__STRICT_ANSI__"
.LASF260:
	.string	"CPP_OPEN_PAREN"
.LASF200:
	.string	"warn_traditional"
.LASF218:
	.string	"type"
.LASF196:
	.string	"inhibit_errors"
.LASF112:
	.string	"mi_ind_cmacro"
.LASF23:
	.string	"_IO_save_base"
.LASF361:
	.string	"direct_p"
.LASF520:
	.string	"_cpp_init_directives"
.LASF308:
	.string	"CLK_GNUC89"
.LASF98:
	.string	"hashnode"
.LASF371:
	.string	"parsing_args"
.LASF344:
	.string	"answer"
.LASF27:
	.string	"_chain"
.LASF298:
	.string	"CPP_OTHER"
.LASF217:
	.string	"cpp_token"
.LASF174:
	.string	"map_list"
.LASF194:
	.string	"inhibit_warnings"
.LASF275:
	.string	"CPP_LSHIFT_EQ"
.LASF202:
	.string	"no_output"
.LASF345:
	.string	"count"
.LASF31:
	.string	"_cur_column"
.LASF208:
	.string	"pedantic"
.LASF9:
	.string	"__dev_t"
.LASF154:
	.string	"cpp_buffer"
.LASF347:
	.string	"_cpp_buff"
.LASF452:
	.string	"new_sysp"
.LASF82:
	.string	"chunkfun"
.LASF444:
	.string	"result"
.LASF257:
	.string	"CPP_QUERY"
.LASF198:
	.string	"warn_trigraphs"
.LASF309:
	.string	"CLK_GNUC99"
.LASF235:
	.string	"def_pragma"
.LASF107:
	.string	"free_buffs"
.LASF373:
	.string	"n_true"
.LASF73:
	.string	"contents"
.LASF89:
	.string	"hash_table"
.LASF357:
	.string	"tokenrun"
.LASF283:
	.string	"CPP_CLOSE_BRACE"
.LASF136:
	.string	"our_hashtable"
.LASF2:
	.string	"long int"
.LASF193:
	.string	"pedantic_errors"
.LASF297:
	.string	"CPP_WCHAR"
.LASF503:
	.string	"do_assert"
.LASF276:
	.string	"CPP_MIN_EQ"
.LASF530:
	.string	"clash"
.LASF102:
	.string	"line_maps"
.LASF255:
	.string	"CPP_AND_AND"
.LASF291:
	.string	"CPP_DEREF_STAR"
.LASF44:
	.string	"_IO_marker"
.LASF264:
	.string	"CPP_GREATER_EQ"
.LASF91:
	.string	"entries"
.LASF241:
	.string	"CPP_LESS"
.LASF270:
	.string	"CPP_MOD_EQ"
.LASF94:
	.string	"nelements"
.LASF81:
	.string	"alignment_mask"
.LASF238:
	.string	"CPP_EQ"
.LASF53:
	.string	"_sch_ispunct"
.LASF301:
	.string	"CPP_HEADER_NAME"
.LASF192:
	.string	"print_include_names"
.LASF317:
	.string	"CLK_ASM"
.LASF502:
	.string	"_cpp_test_assertion"
.LASF130:
	.string	"hash_ob"
.LASF6:
	.string	"signed char"
.LASF302:
	.string	"CPP_COMMENT"
.LASF158:
	.string	"if_stack"
.LASF43:
	.string	"_IO_FILE"
.LASF441:
	.string	"read_flag"
.LASF513:
	.string	"cpp_get_options"
.LASF104:
	.string	"directive_line"
.LASF413:
	.string	"T_ASSERT"
.LASF109:
	.string	"context"
.LASF376:
	.string	"n__VA_ARGS__"
.LASF412:
	.string	"T_IMPORT"
.LASF491:
	.string	"__o1"
.LASF332:
	.string	"BT_SPECLINE"
.LASF4:
	.string	"unsigned char"
.LASF267:
	.string	"CPP_MINUS_EQ"
.LASF498:
	.string	"predicate"
.LASF519:
	.string	"pushed"
.LASF407:
	.string	"T_ERROR"
.LASF167:
	.string	"in_fname"
.LASF372:
	.string	"n_defined"
.LASF517:
	.string	"cpp_push_buffer"
.LASF494:
	.string	"paren"
.LASF222:
	.string	"cpp_hashnode"
.LASF288:
	.string	"CPP_DEREF"
.LASF507:
	.string	"_cpp_define_builtin"
.LASF284:
	.string	"CPP_SEMICOLON"
.LASF432:
	.string	"header"
.LASF484:
	.string	"do_else"
.LASF153:
	.string	"_Bool"
.LASF142:
	.string	"to_line"
.LASF435:
	.string	"token_mem"
.LASF527:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF227:
	.string	"value"
.LASF62:
	.string	"_sch_isidnum"
.LASF13:
	.string	"char"
.LASF152:
	.string	"trace_includes"
.LASF310:
	.string	"CLK_STDC89"
.LASF205:
	.string	"ignore_srcdir"
.LASF474:
	.string	"get__Pragma_string"
.LASF320:
	.string	"arg_no"
.LASF131:
	.string	"buffer_ob"
.LASF380:
	.string	"handler"
.LASF311:
	.string	"CLK_STDC94"
.LASF177:
	.string	"user_label_prefix"
.LASF156:
	.string	"rlimit"
.LASF281:
	.string	"CPP_CLOSE_SQUARE"
.LASF223:
	.string	"ident"
.LASF528:
	.string	"_IO_lock_t"
.LASF394:
	.string	"pragma_cb"
.LASF450:
	.string	"new_lineno"
.LASF327:
	.string	"node_type"
.LASF331:
	.string	"builtin_type"
.LASF213:
	.string	"dump_includes"
.LASF509:
	.string	"cpp_assert"
.LASF325:
	.string	"name_map"
.LASF99:
	.string	"cpp_reader"
.LASF119:
	.string	"errors"
.LASF108:
	.string	"base_context"
.LASF319:
	.string	"source"
.LASF467:
	.string	"do_pragma"
.LASF312:
	.string	"CLK_STDC99"
.LASF468:
	.string	"do_pragma_once"
.LASF219:
	.string	"flags"
.LASF231:
	.string	"file_change"
.LASF504:
	.string	"new_answer"
.LASF58:
	.string	"_sch_isvsp"
.LASF209:
	.string	"preprocessed"
.LASF15:
	.string	"_IO_read_ptr"
.LASF110:
	.string	"directive"
.LASF175:
	.string	"include_prefix"
.LASF280:
	.string	"CPP_OPEN_SQUARE"
.LASF411:
	.string	"T_IDENT"
.LASF47:
	.string	"_pos"
.LASF524:
	.string	"_sch_istable"
.LASF220:
	.string	"cpp_string"
.LASF318:
	.string	"node"
.LASF221:
	.string	"text"
.LASF462:
	.string	"insert_pragma_entry"
.LASF464:
	.string	"cpp_register_pragma"
.LASF124:
	.string	"all_include_files"
.LASF26:
	.string	"_markers"
.LASF278:
	.string	"CPP_HASH"
.LASF329:
	.string	"NT_MACRO"
.LASF282:
	.string	"CPP_OPEN_BRACE"
.LASF71:
	.string	"limit"
.LASF55:
	.string	"_sch_isupper"
.LASF125:
	.string	"max_include_len"
.LASF294:
	.string	"CPP_NAME"
.LASF488:
	.string	"push_conditional"
.LASF49:
	.string	"_sch_iscntrl"
.LASF100:
	.string	"buffer"
.LASF232:
	.string	"include"
.LASF334:
	.string	"BT_FILE"
.LASF207:
	.string	"warn_undef"
.LASF197:
	.string	"warn_comments"
.LASF316:
	.string	"CLK_OBJCXX"
.LASF353:
	.string	"IT_IMPORT"
.LASF476:
	.string	"destringize_and_run"
.LASF313:
	.string	"CLK_GNUCXX"
.LASF326:
	.string	"file_name_map_list"
.LASF201:
	.string	"warnings_are_errors"
.LASF191:
	.string	"print_deps_append"
.LASF306:
	.string	"N_TTYPES"
.LASF35:
	.string	"_offset"
.LASF137:
	.string	"LC_ENTER"
.LASF497:
	.string	"parse_assertion"
.LASF75:
	.string	"chunk_size"
.LASF349:
	.string	"file_name_map"
.LASF114:
	.string	"cur_token"
.LASF427:
	.string	"dir_no"
.LASF147:
	.string	"maps"
.LASF354:
	.string	"IT_CMDLINE"
.LASF511:
	.string	"handle_assertion"
.LASF183:
	.string	"objc"
.LASF410:
	.string	"T_INCLUDE_NEXT"
.LASF66:
	.string	"ino_t"
.LASF515:
	.string	"cpp_get_line_maps"
.LASF486:
	.string	"do_endif"
.LASF3:
	.string	"long unsigned int"
.LASF496:
	.string	"room_needed"
.LASF199:
	.string	"warn_import"
.LASF482:
	.string	"do_ifndef"
.LASF86:
	.string	"maybe_empty_object"
.LASF29:
	.string	"_flags2"
.LASF473:
	.string	"get_token_no_padding"
.LASF340:
	.string	"macro"
.LASF17:
	.string	"_IO_read_base"
.LASF77:
	.string	"object_base"
.LASF437:
	.string	"do_include_common"
.LASF103:
	.string	"line"
.LASF106:
	.string	"u_buff"
.LASF350:
	.string	"include_type"
.LASF274:
	.string	"CPP_RSHIFT_EQ"
.LASF42:
	.string	"_unused2"
.LASF423:
	.string	"indented"
.LASF148:
	.string	"allocated"
.LASF286:
	.string	"CPP_PLUS_PLUS"
.LASF453:
	.string	"file_line"
.LASF277:
	.string	"CPP_MAX_EQ"
.LASF96:
	.string	"searches"
.LASF446:
	.string	"strtoul_for_line"
.LASF170:
	.string	"pending"
.LASF203:
	.string	"remap"
.LASF396:
	.string	"directive_handler"
.LASF83:
	.string	"freefun"
.LASF391:
	.string	"ERROR"
.LASF188:
	.string	"print_deps"
.LASF30:
	.string	"_old_offset"
.LASF337:
	.string	"BT_TIME"
.LASF285:
	.string	"CPP_ELLIPSIS"
.LASF210:
	.string	"no_standard_includes"
.LASF416:
	.string	"N_DIRECTIVES"
.LASF138:
	.string	"LC_LEAVE"
.LASF487:
	.string	"__obj"
.LASF328:
	.string	"NT_VOID"
.LASF440:
	.string	"do_include_next"
.LASF439:
	.string	"do_import"
.LASF240:
	.string	"CPP_GREATER"
.LASF245:
	.string	"CPP_DIV"
.LASF252:
	.string	"CPP_MIN"
.LASF87:
	.string	"alloc_failed"
.LASF246:
	.string	"CPP_MOD"
.LASF10:
	.string	"__ino_t"
.LASF322:
	.string	"search_path"
.LASF179:
	.string	"verbose"
.LASF395:
	.string	"space"
.LASF95:
	.string	"pfile"
.LASF69:
	.string	"long long int"
.LASF226:
	.string	"rid_code"
.LASF186:
	.string	"digraphs"
.LASF184:
	.string	"discard_comments"
.LASF374:
	.string	"n_false"
.LASF248:
	.string	"CPP_OR"
.LASF421:
	.string	"skip_line"
.LASF230:
	.string	"line_change"
.LASF60:
	.string	"_sch_isalpha"
.LASF162:
	.string	"warned_cplusplus_comments"
.LASF90:
	.string	"stack"
.LASF189:
	.string	"deps_phony_targets"
.LASF20:
	.string	"_IO_write_end"
.LASF128:
	.string	"avoid_paste"
.LASF151:
	.string	"depth"
.LASF457:
	.string	"do_error"
.LASF445:
	.string	"mask"
.LASF134:
	.string	"spec_nodes"
.LASF425:
	.string	"skip"
.LASF388:
	.string	"WARNING"
.LASF48:
	.string	"_sch_isblank"
.LASF360:
	.string	"buff"
.LASF143:
	.string	"from_line"
.LASF393:
	.string	"U_CHAR"
.LASF123:
	.string	"macro_buffer_len"
.LASF61:
	.string	"_sch_isalnum"
.LASF204:
	.string	"no_line_commands"
.LASF169:
	.string	"tabstop"
.LASF216:
	.string	"help_only"
.LASF21:
	.string	"_IO_buf_base"
.LASF366:
	.string	"save_comments"
.LASF251:
	.string	"CPP_LSHIFT"
.LASF1:
	.string	"unsigned int"
.LASF54:
	.string	"_sch_isspace"
.LASF295:
	.string	"CPP_NUMBER"
.LASF159:
	.string	"col_adjust"
.LASF74:
	.string	"obstack"
.LASF420:
	.string	"end_directive"
.LASF529:
	.string	"utoken"
.LASF454:
	.string	"do_diagnostic"
.LASF133:
	.string	"opts"
.LASF458:
	.string	"do_warning"
.LASF113:
	.string	"mi_valid"
.LASF414:
	.string	"T_UNASSERT"
.LASF434:
	.string	"capacity"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF46:
	.string	"_sbuf"
.LASF442:
	.string	"flag"
.LASF505:
	.string	"do_unassert"
.LASF459:
	.string	"do_ident"
.LASF64:
	.string	"_sch_iscppsp"
.LASF428:
	.string	"do_define"
.LASF475:
	.string	"string"
.LASF243:
	.string	"CPP_MINUS"
.LASF14:
	.string	"_flags"
.LASF383:
	.string	"splay_tree_s"
.LASF214:
	.string	"show_column"
.LASF386:
	.string	"is_nspace"
.LASF523:
	.string	"stderr"
.LASF78:
	.string	"next_free"
.LASF346:
	.string	"first"
.LASF41:
	.string	"_mode"
.LASF160:
	.string	"saved_flags"
.LASF399:
	.string	"T_ENDIF"
.LASF525:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF481:
	.string	"do_ifdef"
.LASF436:
	.string	"parse_include"
.LASF426:
	.string	"run_directive"
.LASF362:
	.string	"lexer_state"
.LASF296:
	.string	"CPP_CHAR"
.LASF521:
	.string	"dtable"
.LASF449:
	.string	"new_file"
.LASF323:
	.string	"next"
.LASF403:
	.string	"T_IFNDEF"
.LASF339:
	.string	"BT_PRAGMA"
.LASF379:
	.string	"was_skipping"
.LASF271:
	.string	"CPP_AND_EQ"
.LASF51:
	.string	"_sch_islower"
.LASF409:
	.string	"T_WARNING"
.LASF448:
	.string	"do_line"
.LASF392:
	.string	"FATAL"
.LASF397:
	.string	"T_DEFINE"
.LASF352:
	.string	"IT_INCLUDE_NEXT"
.LASF129:
	.string	"deps"
.LASF120:
	.string	"mls_line"
.LASF132:
	.string	"pragmas"
.LASF465:
	.string	"entry"
.LASF242:
	.string	"CPP_PLUS"
.LASF299:
	.string	"CPP_STRING"
.LASF290:
	.string	"CPP_SCOPE"
.LASF385:
	.string	"pragma"
.LASF244:
	.string	"CPP_MULT"
.LASF165:
	.string	"return_at_eof"
.LASF289:
	.string	"CPP_DOT"
.LASF406:
	.string	"T_ELIF"
.LASF269:
	.string	"CPP_DIV_EQ"
.LASF146:
	.string	"sysp"
.LASF68:
	.string	"long long unsigned int"
.LASF469:
	.string	"do_pragma_poison"
.LASF314:
	.string	"CLK_CXX98"
.LASF239:
	.string	"CPP_NOT"
.LASF157:
	.string	"line_base"
.LASF478:
	.string	"_cpp_do__Pragma"
.LASF381:
	.string	"length"
.LASF307:
	.string	"c_lang"
.LASF11:
	.string	"__off_t"
.LASF398:
	.string	"T_INCLUDE"
.LASF259:
	.string	"CPP_COMMA"
.LASF249:
	.string	"CPP_XOR"
.LASF229:
	.string	"cpp_callbacks"
.LASF499:
	.string	"find_answer"
.LASF185:
	.string	"trigraphs"
.LASF144:
	.string	"included_from"
.LASF451:
	.string	"do_linemarker"
.LASF466:
	.string	"_cpp_init_internal_pragmas"
.LASF145:
	.string	"reason"
.LASF365:
	.string	"angled_headers"
.LASF370:
	.string	"prevent_expansion"
.LASF506:
	.string	"cpp_define"
.LASF272:
	.string	"CPP_OR_EQ"
.LASF164:
	.string	"search_cached"
.LASF387:
	.string	"error_type"
.LASF266:
	.string	"CPP_PLUS_EQ"
.LASF415:
	.string	"T_SCCS"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF431:
	.string	"glue_header_name"
.LASF493:
	.string	"answerp"
.LASF477:
	.string	"dest"
.LASF180:
	.string	"signed_char"
.LASF50:
	.string	"_sch_isdigit"
.LASF182:
	.string	"cplusplus_comments"
.LASF45:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF343:
	.string	"builtin"
.LASF455:
	.string	"code"
.LASF470:
	.string	"do_pragma_system_header"
.LASF405:
	.string	"T_LINE"
.LASF117:
	.string	"lookaheads"
.LASF187:
	.string	"extended_numbers"
.LASF262:
	.string	"CPP_EQ_EQ"
.LASF85:
	.string	"use_extra_arg"
.LASF121:
	.string	"mls_col"
.LASF516:
	.string	"cpp_set_callbacks"
.LASF163:
	.string	"from_stage3"
.LASF483:
	.string	"do_if"
.LASF22:
	.string	"_IO_buf_end"
.LASF463:
	.string	"_cpp_do_file_change"
.LASF181:
	.string	"cplusplus"
.LASF171:
	.string	"deps_file"
.LASF139:
	.string	"LC_RENAME"
.LASF324:
	.string	"name"
.LASF429:
	.string	"do_undef"
.LASF166:
	.string	"cpp_options"
.LASF472:
	.string	"ordering"
.LASF363:
	.string	"in_directive"
.LASF254:
	.string	"CPP_COMPL"
.LASF461:
	.string	"chain"
.LASF424:
	.string	"dname"
.LASF287:
	.string	"CPP_MINUS_MINUS"
.LASF7:
	.string	"short int"
.LASF237:
	.string	"cpp_ttype"
.LASF211:
	.string	"no_standard_cplusplus_includes"
.LASF400:
	.string	"T_IFDEF"
.LASF178:
	.string	"lang"
.LASF206:
	.string	"dollars_in_ident"
.LASF522:
	.string	"linemarker_dir"
.LASF155:
	.string	"backup_to"
.LASF93:
	.string	"nslots"
.LASF447:
	.string	"nump"
.LASF456:
	.string	"print_dir"
.LASF384:
	.string	"pragma_entry"
.LASF32:
	.string	"_vtable_offset"
.LASF430:
	.string	"lex_macro_node"
.LASF500:
	.string	"candidate"
.LASF234:
	.string	"undef"
.LASF150:
	.string	"last_listed"
.LASF236:
	.string	"lc_reason"
.LASF116:
	.string	"cur_run"
.LASF315:
	.string	"CLK_OBJC"
.LASF492:
	.string	"parse_answer"
.LASF63:
	.string	"_sch_isgraph"
.LASF105:
	.string	"a_buff"
.LASF438:
	.string	"do_include"
.LASF305:
	.string	"CPP_EOF"
.LASF263:
	.string	"CPP_NOT_EQ"
.LASF489:
	.string	"cmacro"
.LASF300:
	.string	"CPP_WSTRING"
.LASF338:
	.string	"BT_STDC"
.LASF261:
	.string	"CPP_CLOSE_PAREN"
.LASF351:
	.string	"IT_INCLUDE"
.LASF16:
	.string	"_IO_read_end"
.LASF369:
	.string	"poisoned_ok"
.LASF479:
	.string	"orig_line"
.LASF510:
	.string	"cpp_unassert"
.LASF390:
	.string	"PEDWARN"
.LASF265:
	.string	"CPP_LESS_EQ"
.LASF65:
	.string	"_sch_isbasic"
.LASF57:
	.string	"_sch_isidst"
.LASF250:
	.string	"CPP_RSHIFT"
.LASF225:
	.string	"directive_index"
.LASF176:
	.string	"include_prefix_len"
.LASF97:
	.string	"collisions"
.LASF330:
	.string	"NT_ASSERTION"
.LASF28:
	.string	"_fileno"
.LASF304:
	.string	"CPP_PADDING"
.LASF122:
	.string	"macro_buffer"
.LASF355:
	.string	"token"
.LASF292:
	.string	"CPP_DOT_STAR"
.LASF293:
	.string	"CPP_ATSIGN"
.LASF485:
	.string	"do_elif"
.LASF5:
	.string	"short unsigned int"
.LASF79:
	.string	"chunk_limit"
.LASF258:
	.string	"CPP_COLON"
.LASF173:
	.string	"bracket_include"
.LASF348:
	.string	"base"
.LASF501:
	.string	"_cpp_handle_directive"
.LASF514:
	.string	"cpp_get_callbacks"
.LASF228:
	.string	"cpp_macro"
.LASF212:
	.string	"dump_macros"
.LASF19:
	.string	"_IO_write_ptr"
.LASF460:
	.string	"lookup_pragma_entry"
.LASF443:
	.string	"dequote_string"
.LASF127:
	.string	"time"
.LASF172:
	.string	"quote_include"
.LASF368:
	.string	"va_args_ok"
.LASF161:
	.string	"last_Wtrigraphs"
.LASF526:
	.string	"cpplib.c"
.LASF419:
	.string	"start_directive"
.LASF422:
	.string	"directive_diagnostics"
.LASF80:
	.string	"temp"
.LASF224:
	.string	"arg_index"
.LASF233:
	.string	"define"
.LASF382:
	.string	"origin"
.LASF88:
	.string	"ht_identifier"
.LASF490:
	.string	"__len"
.LASF342:
	.string	"operator"
.LASF321:
	.string	"cpp_pending"
.LASF215:
	.string	"operator_names"
.LASF190:
	.string	"print_deps_missing_files"
.LASF126:
	.string	"date"
.LASF356:
	.string	"ptoken"
.LASF518:
	.string	"_cpp_pop_buffer"
.LASF389:
	.string	"WARNING_SYSHDR"
.LASF72:
	.string	"prev"
.LASF417:
	.string	"skip_rest_of_line"
.LASF111:
	.string	"mi_cmacro"
.LASF273:
	.string	"CPP_XOR_EQ"
.LASF480:
	.string	"do_sccs"
.LASF336:
	.string	"BT_INCLUDE_LEVEL"
.LASF359:
	.string	"last"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
