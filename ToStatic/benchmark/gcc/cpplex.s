	.file	"cpplex.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cpplex.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.type	ustrcmp, @function
ustrcmp:
.LFB2:
	.file 1 "cpphash.h"
	.loc 1 443 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s1, s1
	movq	%rsi, -16(%rbp)	# s2, s2
	.loc 1 444 0
	movq	-16(%rbp), %rdx	# s2, tmp61
	movq	-8(%rbp), %rax	# s1, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	strcmp	#
	.loc 1 445 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ustrcmp, .-ustrcmp
	.section	.rodata
.LC0:
	.string	"%:"
.LC1:
	.string	"%:%:"
.LC2:
	.string	"<:"
.LC3:
	.string	":>"
.LC4:
	.string	"<%"
.LC5:
	.string	"%>"
	.align 32
	.type	digraph_spellings, @object
	.size	digraph_spellings, 48
digraph_spellings:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
.LC6:
	.string	"="
.LC7:
	.string	"!"
.LC8:
	.string	">"
.LC9:
	.string	"<"
.LC10:
	.string	"+"
.LC11:
	.string	"-"
.LC12:
	.string	"*"
.LC13:
	.string	"/"
.LC14:
	.string	"%"
.LC15:
	.string	"&"
.LC16:
	.string	"|"
.LC17:
	.string	"^"
.LC18:
	.string	">>"
.LC19:
	.string	"<<"
.LC20:
	.string	"<?"
.LC21:
	.string	">?"
.LC22:
	.string	"~"
.LC23:
	.string	"&&"
.LC24:
	.string	"||"
.LC25:
	.string	"?"
.LC26:
	.string	":"
.LC27:
	.string	","
.LC28:
	.string	"("
.LC29:
	.string	")"
.LC30:
	.string	"=="
.LC31:
	.string	"!="
.LC32:
	.string	">="
.LC33:
	.string	"<="
.LC34:
	.string	"+="
.LC35:
	.string	"-="
.LC36:
	.string	"*="
.LC37:
	.string	"/="
.LC38:
	.string	"%="
.LC39:
	.string	"&="
.LC40:
	.string	"|="
.LC41:
	.string	"^="
.LC42:
	.string	">>="
.LC43:
	.string	"<<="
.LC44:
	.string	"<?="
.LC45:
	.string	">?="
.LC46:
	.string	"#"
.LC47:
	.string	"##"
.LC48:
	.string	"["
.LC49:
	.string	"]"
.LC50:
	.string	"{"
.LC51:
	.string	"}"
.LC52:
	.string	";"
.LC53:
	.string	"..."
.LC54:
	.string	"++"
.LC55:
	.string	"--"
.LC56:
	.string	"->"
.LC57:
	.string	"."
.LC58:
	.string	"::"
.LC59:
	.string	"->*"
.LC60:
	.string	".*"
.LC61:
	.string	"@"
.LC62:
	.string	"CPP_NAME"
.LC63:
	.string	"CPP_NUMBER"
.LC64:
	.string	"CPP_CHAR"
.LC65:
	.string	"CPP_WCHAR"
.LC66:
	.string	"CPP_OTHER"
.LC67:
	.string	"CPP_STRING"
.LC68:
	.string	"CPP_WSTRING"
.LC69:
	.string	"CPP_HEADER_NAME"
.LC70:
	.string	"CPP_COMMENT"
.LC71:
	.string	"CPP_MACRO_ARG"
.LC72:
	.string	"CPP_PADDING"
.LC73:
	.string	"CPP_EOF"
	.align 32
	.type	token_spellings, @object
	.size	token_spellings, 1088
token_spellings:
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC6
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC7
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC8
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC9
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC10
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC11
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC12
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC13
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC14
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC15
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC16
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC17
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC18
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC19
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC20
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC21
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC22
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC23
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC24
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC25
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC26
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC27
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC28
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC29
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC30
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC31
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC32
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC33
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC34
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC35
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC36
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC37
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC38
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC39
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC40
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC41
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC42
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC43
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC44
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC45
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC46
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC47
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC48
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC49
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC50
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC51
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC52
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC53
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC54
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC55
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC56
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC57
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC58
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC59
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC60
# category:
	.long	0
# name:
	.zero	4
	.quad	.LC61
# category:
	.long	2
# name:
	.zero	4
	.quad	.LC62
# category:
	.long	3
# name:
	.zero	4
	.quad	.LC63
# category:
	.long	4
# name:
	.zero	4
	.quad	.LC64
# category:
	.long	4
# name:
	.zero	4
	.quad	.LC65
# category:
	.long	1
# name:
	.zero	4
	.quad	.LC66
# category:
	.long	4
# name:
	.zero	4
	.quad	.LC67
# category:
	.long	4
# name:
	.zero	4
	.quad	.LC68
# category:
	.long	4
# name:
	.zero	4
	.quad	.LC69
# category:
	.long	3
# name:
	.zero	4
	.quad	.LC70
# category:
	.long	5
# name:
	.zero	4
	.quad	.LC71
# category:
	.long	5
# name:
	.zero	4
	.quad	.LC72
# category:
	.long	5
# name:
	.zero	4
	.quad	.LC73
	.text
	.globl	cpp_ideq
	.type	cpp_ideq, @function
cpp_ideq:
.LFB8:
	.file 2 "cpplex.c"
	.loc 2 104 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# token, token
	movq	%rsi, -16(%rbp)	# string, string
	.loc 2 105 0
	movq	-8(%rbp), %rax	# token, tmp66
	movzbl	6(%rax), %eax	# token_2(D)->type, D.9916
	cmpb	$56, %al	#, D.9916
	je	.L4	#,
	.loc 2 106 0
	movl	$0, %eax	#, D.9915
	jmp	.L5	#
.L4:
	.loc 2 108 0
	movq	-8(%rbp), %rax	# token, tmp67
	movq	8(%rax), %rax	# token_2(D)->val.node, D.9917
	movq	8(%rax), %rax	# _5->ident.str, D.9918
	movq	-16(%rbp), %rdx	# string, tmp68
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# D.9918,
	call	ustrcmp	#
	testl	%eax, %eax	# D.9915
	sete	%al	#, D.9919
	movzbl	%al, %eax	# D.9919, D.9915
.L5:
	.loc 2 109 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	cpp_ideq, .-cpp_ideq
	.type	handle_newline, @function
handle_newline:
.LFB9:
	.loc 2 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 118 0
	movq	-24(%rbp), %rax	# pfile, tmp72
	movq	(%rax), %rax	# pfile_1(D)->buffer, tmp73
	movq	%rax, -8(%rbp)	# tmp73, buffer
	.loc 2 122 0
	movq	-8(%rbp), %rax	# buffer, tmp74
	movq	(%rax), %rax	# buffer_2->cur, D.9920
	subq	$1, %rax	#, D.9920
	movzbl	(%rax), %eax	# *_4, D.9921
	movzbl	%al, %edx	# D.9921, D.9922
	movq	-8(%rbp), %rax	# buffer, tmp75
	movq	(%rax), %rax	# buffer_2->cur, D.9920
	movzbl	(%rax), %eax	# *_7, D.9921
	movzbl	%al, %eax	# D.9921, D.9922
	addl	%edx, %eax	# D.9922, D.9922
	cmpl	$23, %eax	#, D.9922
	jne	.L7	#,
	.loc 2 123 0
	movq	-8(%rbp), %rax	# buffer, tmp76
	movq	(%rax), %rax	# buffer_2->cur, D.9920
	leaq	1(%rax), %rdx	#, D.9920
	movq	-8(%rbp), %rax	# buffer, tmp77
	movq	%rdx, (%rax)	# D.9920, buffer_2->cur
.L7:
	.loc 2 125 0
	movq	-8(%rbp), %rax	# buffer, tmp78
	movq	(%rax), %rdx	# buffer_2->cur, D.9920
	movq	-8(%rbp), %rax	# buffer, tmp79
	movq	%rdx, 24(%rax)	# D.9920, buffer_2->line_base
	.loc 2 126 0
	movq	-8(%rbp), %rax	# buffer, tmp80
	movl	$0, 64(%rax)	#, buffer_2->col_adjust
	.loc 2 127 0
	movq	-24(%rbp), %rax	# pfile, tmp81
	movl	64(%rax), %eax	# pfile_1(D)->line, D.9923
	leal	1(%rax), %edx	#, D.9923
	movq	-24(%rbp), %rax	# pfile, tmp82
	movl	%edx, 64(%rax)	# D.9923, pfile_1(D)->line
	.loc 2 128 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	handle_newline, .-handle_newline
	.section	.rodata
.LC74:
	.string	"trigraph ??%c converted to %c"
.LC75:
	.string	"trigraph ??%c ignored"
	.text
	.type	trigraph_p, @function
trigraph_p:
.LFB10:
	.loc 2 139 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 140 0
	movq	-24(%rbp), %rax	# pfile, tmp97
	movq	(%rax), %rax	# pfile_2(D)->buffer, tmp98
	movq	%rax, -8(%rbp)	# tmp98, buffer
	.loc 2 141 0
	movq	-8(%rbp), %rax	# buffer, tmp99
	movq	(%rax), %rax	# buffer_3->cur, D.9925
	addq	$1, %rax	#, D.9925
	movzbl	(%rax), %eax	# *_5, D.9926
	movzbl	%al, %eax	# D.9926, tmp100
	movl	%eax, -12(%rbp)	# tmp100, from_char
	.loc 2 144 0
	movl	-12(%rbp), %eax	# from_char, tmp102
	cltq
	movzbl	_cpp_trigraph_map(%rax), %eax	# _cpp_trigraph_map, D.9926
	testb	%al, %al	# D.9926
	jne	.L9	#,
	.loc 2 145 0
	movl	$0, %eax	#, D.9924
	jmp	.L10	#
.L9:
	.loc 2 147 0
	movq	-24(%rbp), %rax	# pfile, tmp103
	movzbl	746(%rax), %eax	# pfile_2(D)->opts.trigraphs, D.9926
	testb	%al, %al	# D.9926
	setne	%al	#, tmp104
	movb	%al, -13(%rbp)	# tmp104, accept
	.loc 2 150 0
	movq	-24(%rbp), %rax	# pfile, tmp105
	movzbl	759(%rax), %eax	# pfile_2(D)->opts.warn_trigraphs, D.9926
	testb	%al, %al	# D.9926
	je	.L11	#,
	.loc 2 150 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pfile, tmp106
	movzbl	12(%rax), %eax	# pfile_2(D)->state.lexing_comment, D.9926
	testb	%al, %al	# D.9926
	jne	.L11	#,
	.loc 2 152 0 is_stmt 1
	cmpb	$0, -13(%rbp)	#, accept
	je	.L12	#,
	.loc 2 156 0
	movl	-12(%rbp), %eax	# from_char, tmp108
	cltq
	movzbl	_cpp_trigraph_map(%rax), %eax	# _cpp_trigraph_map, D.9926
	.loc 2 153 0
	movzbl	%al, %edi	# D.9926, D.9927
	movq	-8(%rbp), %rax	# buffer, tmp109
	movq	(%rax), %rax	# buffer_3->cur, D.9925
	movq	%rax, %rdx	# D.9925, D.9928
	movq	-8(%rbp), %rax	# buffer, tmp110
	movq	24(%rax), %rax	# buffer_3->line_base, D.9925
	subq	%rax, %rdx	# D.9928, D.9928
	movq	%rdx, %rax	# D.9928, D.9928
	movl	%eax, %edx	# D.9928, D.9929
	movq	-8(%rbp), %rax	# buffer, tmp111
	movl	64(%rax), %eax	# buffer_3->col_adjust, D.9930
	addl	%edx, %eax	# D.9929, D.9929
	subl	$1, %eax	#, D.9929
	movl	%eax, %edx	# D.9929, D.9927
	movq	-24(%rbp), %rax	# pfile, tmp112
	movl	64(%rax), %eax	# pfile_2(D)->line, D.9930
	movl	%eax, %esi	# D.9930, D.9927
	movl	-12(%rbp), %ecx	# from_char, tmp113
	movq	-24(%rbp), %rax	# pfile, tmp114
	movl	%edi, %r9d	# D.9927,
	movl	%ecx, %r8d	# tmp113,
	movl	$.LC74, %ecx	#,
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	cpp_warning_with_line	#
	jmp	.L11	#
.L12:
	.loc 2 157 0
	movq	-8(%rbp), %rax	# buffer, tmp115
	movq	(%rax), %rdx	# buffer_3->cur, D.9925
	movq	-8(%rbp), %rax	# buffer, tmp116
	movq	72(%rax), %rax	# buffer_3->last_Wtrigraphs, D.9925
	cmpq	%rax, %rdx	# D.9925, D.9925
	je	.L11	#,
	.loc 2 159 0
	movq	-8(%rbp), %rax	# buffer, tmp117
	movq	(%rax), %rdx	# buffer_3->cur, D.9925
	movq	-8(%rbp), %rax	# buffer, tmp118
	movq	%rdx, 72(%rax)	# D.9925, buffer_3->last_Wtrigraphs
	.loc 2 161 0
	movq	-8(%rbp), %rax	# buffer, tmp119
	movq	(%rax), %rax	# buffer_3->cur, D.9925
	movq	%rax, %rdx	# D.9925, D.9928
	movq	-8(%rbp), %rax	# buffer, tmp120
	movq	24(%rax), %rax	# buffer_3->line_base, D.9925
	subq	%rax, %rdx	# D.9928, D.9928
	movq	%rdx, %rax	# D.9928, D.9928
	.loc 2 160 0
	movl	%eax, %edx	# D.9928, D.9929
	.loc 2 161 0
	movq	-8(%rbp), %rax	# buffer, tmp121
	movl	64(%rax), %eax	# buffer_3->col_adjust, D.9930
	.loc 2 160 0
	addl	%edx, %eax	# D.9929, D.9929
	subl	$1, %eax	#, D.9929
	movl	%eax, %edx	# D.9929, D.9927
	movq	-24(%rbp), %rax	# pfile, tmp122
	movl	64(%rax), %eax	# pfile_2(D)->line, D.9930
	movl	%eax, %esi	# D.9930, D.9927
	movl	-12(%rbp), %ecx	# from_char, tmp123
	movq	-24(%rbp), %rax	# pfile, tmp124
	movl	%ecx, %r8d	# tmp123,
	movl	$.LC75, %ecx	#,
	movq	%rax, %rdi	# tmp124,
	movl	$0, %eax	#,
	call	cpp_warning_with_line	#
.L11:
	.loc 2 166 0
	movzbl	-13(%rbp), %eax	# accept, D.9924
.L10:
	.loc 2 167 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	trigraph_p, .-trigraph_p
	.section	.rodata
	.align 8
.LC76:
	.string	"backslash and newline separated by space"
	.align 8
.LC77:
	.string	"backslash-newline at end of file"
	.text
	.type	skip_escaped_newlines, @function
skip_escaped_newlines:
.LFB11:
	.loc 2 176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	.loc 2 177 0
	movq	-40(%rbp), %rax	# pfile, tmp100
	movq	(%rax), %rax	# pfile_5(D)->buffer, tmp101
	movq	%rax, -16(%rbp)	# tmp101, buffer
	.loc 2 178 0
	movq	-16(%rbp), %rax	# buffer, tmp102
	movq	(%rax), %rax	# buffer_6->cur, D.9933
	subq	$1, %rax	#, D.9933
	movzbl	(%rax), %eax	# *_8, D.9934
	movzbl	%al, %eax	# D.9934, tmp103
	movl	%eax, -24(%rbp)	# tmp103, next
	.loc 2 181 0
	movq	-16(%rbp), %rax	# buffer, tmp104
	movzbl	81(%rax), %eax	# buffer_6->from_stage3, D.9934
	testb	%al, %al	# D.9934
	jne	.L14	#,
.L23:
.LBB2:
	.loc 2 188 0
	cmpl	$63, -24(%rbp)	#, next
	jne	.L15	#,
	.loc 2 190 0
	movq	-16(%rbp), %rax	# buffer, tmp105
	movq	(%rax), %rax	# buffer_6->cur, D.9933
	movzbl	(%rax), %eax	# *_12, D.9934
	cmpb	$63, %al	#, D.9934
	jne	.L14	#,
	.loc 2 190 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp106
	movq	%rax, %rdi	# tmp106,
	call	trigraph_p	#
	xorl	$1, %eax	#, D.9935
	testb	%al, %al	# D.9935
	jne	.L14	#,
	.loc 2 194 0 is_stmt 1
	movq	-16(%rbp), %rax	# buffer, tmp107
	movq	(%rax), %rax	# buffer_6->cur, D.9933
	addq	$1, %rax	#, D.9933
	movzbl	(%rax), %eax	# *_17, D.9934
	movzbl	%al, %eax	# D.9934, D.9936
	cltq
	movzbl	_cpp_trigraph_map(%rax), %eax	# _cpp_trigraph_map, D.9934
	movzbl	%al, %eax	# D.9934, tmp109
	movl	%eax, -24(%rbp)	# tmp109, next
	.loc 2 195 0
	movq	-16(%rbp), %rax	# buffer, tmp110
	movq	(%rax), %rax	# buffer_6->cur, D.9933
	leaq	2(%rax), %rdx	#, D.9933
	movq	-16(%rbp), %rax	# buffer, tmp111
	movq	%rdx, (%rax)	# D.9933, buffer_6->cur
	.loc 2 196 0
	cmpl	$92, -24(%rbp)	#, next
	je	.L15	#,
	.loc 2 197 0
	jmp	.L14	#
.L15:
	.loc 2 200 0
	movq	-16(%rbp), %rax	# buffer, tmp112
	movq	(%rax), %rdx	# buffer_6->cur, D.9933
	movq	-16(%rbp), %rax	# buffer, tmp113
	movq	16(%rax), %rax	# buffer_6->rlimit, D.9933
	cmpq	%rax, %rdx	# D.9933, D.9933
	jne	.L16	#,
	.loc 2 201 0
	jmp	.L14	#
.L16:
	.loc 2 205 0
	movq	-16(%rbp), %rax	# buffer, tmp114
	movq	(%rax), %rax	# buffer_6->cur, tmp115
	movq	%rax, -8(%rbp)	# tmp115, saved_cur
.L18:
	.loc 2 207 0 discriminator 1
	movq	-16(%rbp), %rax	# buffer, tmp116
	movq	(%rax), %rax	# buffer_6->cur, D.9933
	leaq	1(%rax), %rcx	#, D.9933
	movq	-16(%rbp), %rdx	# buffer, tmp117
	movq	%rcx, (%rdx)	# D.9933, buffer_6->cur
	movzbl	(%rax), %eax	# *_28, D.9934
	movzbl	%al, %eax	# D.9934, tmp118
	movl	%eax, -20(%rbp)	# tmp118, next1
	.loc 2 208 0 discriminator 1
	movl	-20(%rbp), %eax	# next1, tmp119
	movzbl	%al, %eax	# tmp119, D.9936
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9937
	movzwl	%ax, %eax	# D.9937, D.9936
	andl	$2048, %eax	#, D.9936
	testl	%eax, %eax	# D.9936
	je	.L17	#,
	movq	-16(%rbp), %rax	# buffer, tmp121
	movq	(%rax), %rdx	# buffer_6->cur, D.9933
	movq	-16(%rbp), %rax	# buffer, tmp122
	movq	16(%rax), %rax	# buffer_6->rlimit, D.9933
	cmpq	%rax, %rdx	# D.9933, D.9933
	jb	.L18	#,
.L17:
	.loc 2 210 0
	movl	-20(%rbp), %eax	# next1, tmp123
	movzbl	%al, %eax	# tmp123, D.9936
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9937
	movzwl	%ax, %eax	# D.9937, D.9936
	andl	$1024, %eax	#, D.9936
	testl	%eax, %eax	# D.9936
	jne	.L19	#,
	.loc 2 212 0
	movq	-16(%rbp), %rax	# buffer, tmp125
	movq	-8(%rbp), %rdx	# saved_cur, tmp126
	movq	%rdx, (%rax)	# tmp126, buffer_6->cur
	.loc 2 213 0
	jmp	.L14	#
.L19:
	.loc 2 216 0
	movq	-16(%rbp), %rax	# buffer, tmp127
	movq	(%rax), %rax	# buffer_6->cur, D.9933
	subq	$1, %rax	#, D.9933
	cmpq	-8(%rbp), %rax	# saved_cur, D.9933
	je	.L20	#,
	.loc 2 217 0
	movq	-40(%rbp), %rax	# pfile, tmp128
	movzbl	12(%rax), %eax	# pfile_5(D)->state.lexing_comment, D.9934
	testb	%al, %al	# D.9934
	jne	.L20	#,
	.loc 2 218 0
	movq	-40(%rbp), %rax	# pfile, tmp129
	movl	$.LC76, %esi	#,
	movq	%rax, %rdi	# tmp129,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L20:
	.loc 2 220 0
	movq	-40(%rbp), %rax	# pfile, tmp130
	movq	%rax, %rdi	# tmp130,
	call	handle_newline	#
	.loc 2 221 0
	movq	-16(%rbp), %rax	# buffer, tmp131
	movq	(%rax), %rdx	# buffer_6->cur, D.9933
	movq	-16(%rbp), %rax	# buffer, tmp132
	movq	%rdx, 8(%rax)	# D.9933, buffer_6->backup_to
	.loc 2 222 0
	movq	-16(%rbp), %rax	# buffer, tmp133
	movq	(%rax), %rdx	# buffer_6->cur, D.9933
	movq	-16(%rbp), %rax	# buffer, tmp134
	movq	16(%rax), %rax	# buffer_6->rlimit, D.9933
	cmpq	%rax, %rdx	# D.9933, D.9933
	jne	.L21	#,
	.loc 2 224 0
	movq	-40(%rbp), %rax	# pfile, tmp135
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# tmp135,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
	.loc 2 225 0
	movl	$-1, -24(%rbp)	#, next
	jmp	.L22	#
.L21:
	.loc 2 228 0
	movq	-16(%rbp), %rax	# buffer, tmp136
	movq	(%rax), %rax	# buffer_6->cur, D.9933
	leaq	1(%rax), %rcx	#, D.9933
	movq	-16(%rbp), %rdx	# buffer, tmp137
	movq	%rcx, (%rdx)	# D.9933, buffer_6->cur
	movzbl	(%rax), %eax	# *_50, D.9934
	movzbl	%al, %eax	# D.9934, tmp138
	movl	%eax, -24(%rbp)	# tmp138, next
.L22:
	.loc 2 230 0
	cmpl	$92, -24(%rbp)	#, next
	je	.L23	#,
	.loc 2 230 0 is_stmt 0 discriminator 1
	cmpl	$63, -24(%rbp)	#, next
	je	.L23	#,
.L14:
.LBE2:
	.loc 2 233 0 is_stmt 1
	movl	-24(%rbp), %eax	# next, D.9938
	.loc 2 234 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	skip_escaped_newlines, .-skip_escaped_newlines
	.type	get_effective_char, @function
get_effective_char:
.LFB12:
	.loc 2 244 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 246 0
	movq	-24(%rbp), %rax	# pfile, tmp71
	movq	(%rax), %rax	# pfile_2(D)->buffer, tmp72
	movq	%rax, -8(%rbp)	# tmp72, buffer
	.loc 2 248 0
	movq	-8(%rbp), %rax	# buffer, tmp73
	movq	(%rax), %rdx	# buffer_3->cur, D.9941
	movq	-8(%rbp), %rax	# buffer, tmp74
	movq	%rdx, 8(%rax)	# D.9941, buffer_3->backup_to
	.loc 2 249 0
	movq	-8(%rbp), %rax	# buffer, tmp75
	movq	(%rax), %rax	# buffer_3->cur, D.9941
	leaq	1(%rax), %rcx	#, D.9941
	movq	-8(%rbp), %rdx	# buffer, tmp76
	movq	%rcx, (%rdx)	# D.9941, buffer_3->cur
	movzbl	(%rax), %eax	# *_6, D.9942
	movzbl	%al, %eax	# D.9942, tmp77
	movl	%eax, -12(%rbp)	# tmp77, next
	.loc 2 250 0
	cmpl	$63, -12(%rbp)	#, next
	sete	%al	#, D.9943
	movzbl	%al, %eax	# D.9943, D.9944
	testq	%rax, %rax	# D.9944
	jne	.L26	#,
	.loc 2 250 0 is_stmt 0 discriminator 1
	cmpl	$92, -12(%rbp)	#, next
	sete	%al	#, D.9943
	movzbl	%al, %eax	# D.9943, D.9944
	testq	%rax, %rax	# D.9944
	je	.L27	#,
.L26:
	.loc 2 251 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp78
	movq	%rax, %rdi	# tmp78,
	call	skip_escaped_newlines	#
	movl	%eax, -12(%rbp)	# tmp79, next
.L27:
	.loc 2 253 0
	movl	-12(%rbp), %eax	# next, D.9945
	.loc 2 254 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	get_effective_char, .-get_effective_char
	.section	.rodata
.LC78:
	.string	"\"/*\" within comment"
	.text
	.type	skip_block_comment, @function
skip_block_comment:
.LFB13:
	.loc 2 262 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 263 0
	movq	-24(%rbp), %rax	# pfile, tmp88
	movq	(%rax), %rax	# pfile_7(D)->buffer, tmp89
	movq	%rax, -8(%rbp)	# tmp89, buffer
	.loc 2 264 0
	movl	$-1, -16(%rbp)	#, c
	movl	$-1, -12(%rbp)	#, prevc
	.loc 2 266 0
	movq	-24(%rbp), %rax	# pfile, tmp90
	movb	$1, 12(%rax)	#, pfile_7(D)->state.lexing_comment
	.loc 2 267 0
	jmp	.L30	#
.L38:
	.loc 2 269 0
	movl	-16(%rbp), %eax	# c, tmp91
	movl	%eax, -12(%rbp)	# tmp91, prevc
	movq	-8(%rbp), %rax	# buffer, tmp92
	movq	(%rax), %rax	# buffer_8->cur, D.9946
	leaq	1(%rax), %rcx	#, D.9946
	movq	-8(%rbp), %rdx	# buffer, tmp93
	movq	%rcx, (%rdx)	# D.9946, buffer_8->cur
	movzbl	(%rax), %eax	# *_15, D.9947
	movzbl	%al, %eax	# D.9947, tmp94
	movl	%eax, -16(%rbp)	# tmp94, c
	.loc 2 273 0
	cmpl	$63, -16(%rbp)	#, c
	je	.L31	#,
	.loc 2 273 0 is_stmt 0 discriminator 1
	cmpl	$92, -16(%rbp)	#, c
	jne	.L32	#,
.L31:
	.loc 2 274 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp95
	movq	%rax, %rdi	# tmp95,
	call	skip_escaped_newlines	#
	movl	%eax, -16(%rbp)	# tmp96, c
.L32:
	.loc 2 278 0
	cmpl	$47, -16(%rbp)	#, c
	jne	.L33	#,
	.loc 2 280 0
	cmpl	$42, -12(%rbp)	#, prevc
	jne	.L34	#,
	.loc 2 281 0
	jmp	.L35	#
.L34:
	.loc 2 286 0
	movq	-24(%rbp), %rax	# pfile, tmp97
	movzbl	758(%rax), %eax	# pfile_7(D)->opts.warn_comments, D.9947
	testb	%al, %al	# D.9947
	je	.L30	#,
	.loc 2 287 0
	movq	-8(%rbp), %rax	# buffer, tmp98
	movq	(%rax), %rax	# buffer_8->cur, D.9946
	movzbl	(%rax), %eax	# *_21, D.9947
	cmpb	$42, %al	#, D.9947
	jne	.L30	#,
	.loc 2 287 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# buffer, tmp99
	movq	(%rax), %rax	# buffer_8->cur, D.9946
	addq	$1, %rax	#, D.9946
	movzbl	(%rax), %eax	# *_24, D.9947
	cmpb	$47, %al	#, D.9947
	je	.L30	#,
	.loc 2 289 0 is_stmt 1
	movq	-8(%rbp), %rax	# buffer, tmp100
	movq	(%rax), %rax	# buffer_8->cur, D.9946
	movq	%rax, %rdx	# D.9946, D.9948
	movq	-8(%rbp), %rax	# buffer, tmp101
	movq	24(%rax), %rax	# buffer_8->line_base, D.9946
	subq	%rax, %rdx	# D.9948, D.9948
	movq	%rdx, %rax	# D.9948, D.9948
	.loc 2 288 0
	movl	%eax, %edx	# D.9948, D.9949
	.loc 2 289 0
	movq	-8(%rbp), %rax	# buffer, tmp102
	movl	64(%rax), %eax	# buffer_8->col_adjust, D.9950
	.loc 2 288 0
	addl	%edx, %eax	# D.9949, D.9949
	movl	%eax, %edx	# D.9949, D.9951
	.loc 2 289 0
	movq	-24(%rbp), %rax	# pfile, tmp103
	movl	64(%rax), %eax	# pfile_7(D)->line, D.9950
	.loc 2 288 0
	movl	%eax, %esi	# D.9950, D.9951
	movq	-24(%rbp), %rax	# pfile, tmp104
	movl	$.LC78, %ecx	#,
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	cpp_warning_with_line	#
	jmp	.L30	#
.L33:
	.loc 2 292 0
	movl	-16(%rbp), %eax	# c, tmp105
	movzbl	%al, %eax	# tmp105, D.9951
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9952
	movzwl	%ax, %eax	# D.9952, D.9951
	andl	$1024, %eax	#, D.9951
	testl	%eax, %eax	# D.9951
	je	.L37	#,
	.loc 2 293 0
	movq	-24(%rbp), %rax	# pfile, tmp107
	movq	%rax, %rdi	# tmp107,
	call	handle_newline	#
	jmp	.L30	#
.L37:
	.loc 2 294 0
	cmpl	$9, -16(%rbp)	#, c
	jne	.L30	#,
	.loc 2 295 0
	movq	-24(%rbp), %rax	# pfile, tmp108
	movq	%rax, %rdi	# tmp108,
	call	adjust_column	#
.L30:
	.loc 2 267 0 discriminator 1
	movq	-8(%rbp), %rax	# buffer, tmp109
	movq	(%rax), %rdx	# buffer_8->cur, D.9946
	movq	-8(%rbp), %rax	# buffer, tmp110
	movq	16(%rax), %rax	# buffer_8->rlimit, D.9946
	cmpq	%rax, %rdx	# D.9946, D.9946
	jne	.L38	#,
.L35:
	.loc 2 298 0
	movq	-24(%rbp), %rax	# pfile, tmp111
	movb	$0, 12(%rax)	#, pfile_7(D)->state.lexing_comment
	.loc 2 299 0
	cmpl	$47, -16(%rbp)	#, c
	jne	.L39	#,
	.loc 2 299 0 is_stmt 0 discriminator 2
	cmpl	$42, -12(%rbp)	#, prevc
	je	.L40	#,
.L39:
	.loc 2 299 0 discriminator 1
	movl	$1, %eax	#, iftmp.0
	jmp	.L41	#
.L40:
	.loc 2 299 0 discriminator 3
	movl	$0, %eax	#, iftmp.0
.L41:
	.loc 2 300 0 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	skip_block_comment, .-skip_block_comment
	.type	skip_line_comment, @function
skip_line_comment:
.LFB14:
	.loc 2 308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 309 0
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	(%rax), %rax	# pfile_2(D)->buffer, tmp75
	movq	%rax, -8(%rbp)	# tmp75, buffer
	.loc 2 310 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movl	64(%rax), %eax	# pfile_2(D)->line, tmp77
	movl	%eax, -12(%rbp)	# tmp77, orig_line
	.loc 2 313 0
	movq	-24(%rbp), %rax	# pfile, tmp78
	movb	$1, 12(%rax)	#, pfile_2(D)->state.lexing_comment
.L48:
	.loc 2 316 0
	movq	-8(%rbp), %rax	# buffer, tmp79
	movq	(%rax), %rdx	# buffer_3->cur, D.9954
	movq	-8(%rbp), %rax	# buffer, tmp80
	movq	16(%rax), %rax	# buffer_3->rlimit, D.9954
	cmpq	%rax, %rdx	# D.9954, D.9954
	jne	.L44	#,
	.loc 2 317 0
	jmp	.L45	#
.L44:
	.loc 2 319 0
	movq	-8(%rbp), %rax	# buffer, tmp81
	movq	(%rax), %rax	# buffer_3->cur, D.9954
	leaq	1(%rax), %rcx	#, D.9954
	movq	-8(%rbp), %rdx	# buffer, tmp82
	movq	%rcx, (%rdx)	# D.9954, buffer_3->cur
	movzbl	(%rax), %eax	# *_8, D.9955
	movzbl	%al, %eax	# D.9955, tmp83
	movl	%eax, -16(%rbp)	# tmp83, c
	.loc 2 320 0
	cmpl	$63, -16(%rbp)	#, c
	je	.L46	#,
	.loc 2 320 0 is_stmt 0 discriminator 1
	cmpl	$92, -16(%rbp)	#, c
	jne	.L47	#,
.L46:
	.loc 2 321 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp84
	movq	%rax, %rdi	# tmp84,
	call	skip_escaped_newlines	#
	movl	%eax, -16(%rbp)	# tmp85, c
.L47:
	.loc 2 323 0
	movl	-16(%rbp), %eax	# c, tmp86
	movzbl	%al, %eax	# tmp86, D.9956
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9957
	movzwl	%ax, %eax	# D.9957, D.9956
	andl	$1024, %eax	#, D.9956
	testl	%eax, %eax	# D.9956
	je	.L48	#,
	.loc 2 326 0
	movq	-8(%rbp), %rax	# buffer, tmp88
	movq	(%rax), %rax	# buffer_3->cur, D.9954
	leaq	-1(%rax), %rdx	#, D.9954
	movq	-8(%rbp), %rax	# buffer, tmp89
	movq	%rdx, (%rax)	# D.9954, buffer_3->cur
.L45:
	.loc 2 329 0
	movq	-24(%rbp), %rax	# pfile, tmp90
	movb	$0, 12(%rax)	#, pfile_2(D)->state.lexing_comment
	.loc 2 330 0
	movq	-24(%rbp), %rax	# pfile, tmp91
	movl	64(%rax), %eax	# pfile_2(D)->line, D.9958
	cmpl	-12(%rbp), %eax	# orig_line, D.9958
	setne	%al	#, D.9959
	movzbl	%al, %eax	# D.9959, D.9956
	.loc 2 331 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	skip_line_comment, .-skip_line_comment
	.type	adjust_column, @function
adjust_column:
.LFB15:
	.loc 2 338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 339 0
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	(%rax), %rax	# pfile_1(D)->buffer, tmp75
	movq	%rax, -8(%rbp)	# tmp75, buffer
	.loc 2 340 0
	movq	-8(%rbp), %rax	# buffer, tmp76
	movq	(%rax), %rax	# buffer_2->cur, D.9960
	movq	%rax, %rdx	# D.9960, D.9961
	movq	-8(%rbp), %rax	# buffer, tmp77
	movq	24(%rax), %rax	# buffer_2->line_base, D.9960
	subq	%rax, %rdx	# D.9961, D.9961
	movq	%rdx, %rax	# D.9961, D.9961
	movl	%eax, %edx	# D.9961, D.9962
	movq	-8(%rbp), %rax	# buffer, tmp78
	movl	64(%rax), %eax	# buffer_2->col_adjust, D.9962
	addl	%edx, %eax	# D.9962, D.9962
	subl	$1, %eax	#, tmp79
	movl	%eax, -12(%rbp)	# tmp79, col
	.loc 2 344 0
	movq	-8(%rbp), %rax	# buffer, tmp80
	movl	64(%rax), %ecx	# buffer_2->col_adjust, D.9962
	movq	-24(%rbp), %rax	# pfile, tmp81
	movl	664(%rax), %esi	# pfile_1(D)->opts.tabstop, D.9962
	.loc 2 345 0
	movq	-24(%rbp), %rax	# pfile, tmp82
	movl	664(%rax), %edi	# pfile_1(D)->opts.tabstop, D.9962
	movl	-12(%rbp), %eax	# col, tmp83
	movl	$0, %edx	#, tmp84
	divl	%edi	# D.9962
	movl	%edx, %eax	# tmp84, D.9962
	subl	%eax, %esi	# D.9962, D.9962
	movl	%esi, %eax	# D.9962, D.9962
	.loc 2 344 0
	addl	%ecx, %eax	# D.9962, D.9962
	leal	-1(%rax), %edx	#, D.9962
	movq	-8(%rbp), %rax	# buffer, tmp86
	movl	%edx, 64(%rax)	# D.9962, buffer_2->col_adjust
	.loc 2 346 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	adjust_column, .-adjust_column
	.section	.rodata
.LC79:
	.string	"null character(s) ignored"
.LC80:
	.string	"form feed"
.LC81:
	.string	"vertical tab"
.LC82:
	.string	"%s in preprocessing directive"
	.text
	.type	skip_whitespace, @function
skip_whitespace:
.LFB16:
	.loc 2 355 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movl	%esi, -28(%rbp)	# c, c
	.loc 2 356 0
	movq	-24(%rbp), %rax	# pfile, tmp87
	movq	(%rax), %rax	# pfile_7(D)->buffer, tmp88
	movq	%rax, -8(%rbp)	# tmp88, buffer
	.loc 2 357 0
	movl	$0, -12(%rbp)	#, warned
.L60:
	.loc 2 362 0
	cmpl	$32, -28(%rbp)	#, c
	je	.L52	#,
	.loc 2 364 0
	cmpl	$9, -28(%rbp)	#, c
	jne	.L53	#,
	.loc 2 365 0
	movq	-24(%rbp), %rax	# pfile, tmp89
	movq	%rax, %rdi	# tmp89,
	call	adjust_column	#
	jmp	.L52	#
.L53:
	.loc 2 367 0
	cmpl	$0, -28(%rbp)	#, c
	jne	.L54	#,
	.loc 2 369 0
	movq	-8(%rbp), %rax	# buffer, tmp90
	movq	(%rax), %rax	# buffer_8->cur, D.9964
	leaq	-1(%rax), %rdx	#, D.9964
	movq	-8(%rbp), %rax	# buffer, tmp91
	movq	16(%rax), %rax	# buffer_8->rlimit, D.9964
	cmpq	%rax, %rdx	# D.9964, D.9964
	jne	.L55	#,
	.loc 2 370 0
	movl	$0, %eax	#, D.9963
	jmp	.L56	#
.L55:
	.loc 2 371 0
	cmpl	$0, -12(%rbp)	#, warned
	jne	.L52	#,
	.loc 2 373 0
	movq	-24(%rbp), %rax	# pfile, tmp92
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 2 374 0
	movl	$1, -12(%rbp)	#, warned
	jmp	.L52	#
.L54:
	.loc 2 377 0
	movq	-24(%rbp), %rax	# pfile, tmp93
	movzbl	8(%rax), %eax	# pfile_7(D)->state.in_directive, D.9965
	testb	%al, %al	# D.9965
	je	.L52	#,
	.loc 2 377 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pfile, tmp94
	movzbl	770(%rax), %eax	# pfile_7(D)->opts.pedantic, D.9965
	testb	%al, %al	# D.9965
	je	.L52	#,
	.loc 2 378 0 is_stmt 1
	cmpl	$12, -28(%rbp)	#, c
	jne	.L58	#,
	.loc 2 378 0 is_stmt 0 discriminator 1
	movl	$.LC80, %eax	#, iftmp.1
	jmp	.L59	#
.L58:
	.loc 2 378 0 discriminator 2
	movl	$.LC81, %eax	#, iftmp.1
.L59:
	.loc 2 379 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rdx	# buffer, tmp95
	movq	(%rdx), %rdx	# buffer_8->cur, D.9964
	movq	%rdx, %rcx	# D.9964, D.9966
	movq	-8(%rbp), %rdx	# buffer, tmp96
	movq	24(%rdx), %rdx	# buffer_8->line_base, D.9964
	subq	%rdx, %rcx	# D.9966, D.9966
	movq	%rcx, %rdx	# D.9966, D.9966
	.loc 2 378 0 discriminator 3
	movl	%edx, %ecx	# D.9966, D.9967
	.loc 2 379 0 discriminator 3
	movq	-8(%rbp), %rdx	# buffer, tmp97
	movl	64(%rdx), %edx	# buffer_8->col_adjust, D.9968
	.loc 2 378 0 discriminator 3
	addl	%ecx, %edx	# D.9967, D.9967
	movq	-24(%rbp), %rcx	# pfile, tmp98
	movl	64(%rcx), %ecx	# pfile_7(D)->line, D.9968
	movl	%ecx, %esi	# D.9968, D.9963
	movq	-24(%rbp), %rdi	# pfile, tmp99
	movq	%rax, %r8	# iftmp.1,
	movl	$.LC82, %ecx	#,
	movl	$0, %eax	#,
	call	cpp_pedwarn_with_line	#
.L52:
	.loc 2 383 0
	movq	-8(%rbp), %rax	# buffer, tmp100
	movq	(%rax), %rax	# buffer_8->cur, D.9964
	leaq	1(%rax), %rcx	#, D.9964
	movq	-8(%rbp), %rdx	# buffer, tmp101
	movq	%rcx, (%rdx)	# D.9964, buffer_8->cur
	movzbl	(%rax), %eax	# *_32, D.9965
	movzbl	%al, %eax	# D.9965, tmp102
	movl	%eax, -28(%rbp)	# tmp102, c
	.loc 2 386 0
	movl	-28(%rbp), %eax	# c, tmp103
	movzbl	%al, %eax	# tmp103, D.9963
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9969
	movzwl	%ax, %eax	# D.9969, D.9963
	andl	$2048, %eax	#, D.9963
	testl	%eax, %eax	# D.9963
	jne	.L60	#,
	.loc 2 388 0
	movq	-8(%rbp), %rax	# buffer, tmp105
	movq	(%rax), %rax	# buffer_8->cur, D.9964
	leaq	-1(%rax), %rdx	#, D.9964
	movq	-8(%rbp), %rax	# buffer, tmp106
	movq	%rdx, (%rax)	# D.9964, buffer_8->cur
	.loc 2 389 0
	movl	$1, %eax	#, D.9963
.L56:
	.loc 2 390 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	skip_whitespace, .-skip_whitespace
	.type	name_p, @function
name_p:
.LFB17:
	.loc 2 398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# string, string
	.loc 2 401 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L62	#
.L66:
	.loc 2 402 0
	movq	-32(%rbp), %rax	# string, tmp75
	movq	8(%rax), %rdx	# string_4(D)->text, D.9976
	movl	-4(%rbp), %eax	# i, D.9977
	addq	%rdx, %rax	# D.9976, D.9976
	movzbl	(%rax), %eax	# *_8, D.9978
	movzbl	%al, %eax	# D.9978, D.9974
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9979
	movzwl	%ax, %eax	# D.9979, D.9974
	andl	$516, %eax	#, D.9974
	testl	%eax, %eax	# D.9974
	jne	.L63	#,
	.loc 2 402 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# string, tmp77
	movq	8(%rax), %rdx	# string_4(D)->text, D.9976
	movl	-4(%rbp), %eax	# i, D.9977
	addq	%rdx, %rax	# D.9976, D.9976
	movzbl	(%rax), %eax	# *_16, D.9978
	cmpb	$36, %al	#, D.9978
	jne	.L64	#,
	movq	-24(%rbp), %rax	# pfile, tmp78
	movzbl	767(%rax), %eax	# pfile_18(D)->opts.dollars_in_ident, D.9978
	testb	%al, %al	# D.9978
	jne	.L63	#,
.L64:
	.loc 2 403 0 is_stmt 1
	movl	$0, %eax	#, D.9974
	jmp	.L65	#
.L63:
	.loc 2 401 0
	addl	$1, -4(%rbp)	#, i
.L62:
	.loc 2 401 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# string, tmp79
	movl	(%rax), %eax	# string_4(D)->len, D.9975
	cmpl	-4(%rbp), %eax	# i, D.9975
	ja	.L66	#,
	.loc 2 405 0 is_stmt 1
	movl	$1, %eax	#, D.9974
.L65:
	.loc 2 406 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	name_p, .-name_p
	.section	.rodata
.LC83:
	.string	"attempt to use poisoned \"%s\""
	.align 8
.LC84:
	.string	"__VA_ARGS__ can only appear in the expansion of a C99 variadic macro"
	.text
	.type	parse_identifier, @function
parse_identifier:
.LFB18:
	.loc 2 419 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	.loc 2 425 0
	movq	-40(%rbp), %rax	# pfile, tmp95
	movq	(%rax), %rax	# pfile_3(D)->buffer, D.9980
	movq	(%rax), %rax	# _4->cur, tmp96
	movq	%rax, -16(%rbp)	# tmp96, cur
	.loc 2 426 0
	jmp	.L68	#
.L69:
	.loc 2 427 0
	addq	$1, -16(%rbp)	#, cur
.L68:
	.loc 2 426 0 discriminator 1
	movq	-16(%rbp), %rax	# cur, tmp97
	movzbl	(%rax), %eax	# *cur_2, D.9981
	movzbl	%al, %eax	# D.9981, D.9982
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9983
	movzwl	%ax, %eax	# D.9983, D.9982
	andl	$516, %eax	#, D.9982
	testl	%eax, %eax	# D.9982
	jne	.L69	#,
	.loc 2 430 0
	movq	-16(%rbp), %rax	# cur, tmp99
	movzbl	(%rax), %eax	# *cur_2, D.9981
	cmpb	$63, %al	#, D.9981
	je	.L70	#,
	.loc 2 430 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# cur, tmp100
	movzbl	(%rax), %eax	# *cur_2, D.9981
	cmpb	$92, %al	#, D.9981
	je	.L70	#,
	movq	-16(%rbp), %rax	# cur, tmp101
	movzbl	(%rax), %eax	# *cur_2, D.9981
	cmpb	$36, %al	#, D.9981
	jne	.L71	#,
.L70:
	.loc 2 431 0 is_stmt 1
	movq	-16(%rbp), %rdx	# cur, tmp102
	movq	-40(%rbp), %rax	# pfile, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	parse_identifier_slow	#
	movq	%rax, -24(%rbp)	# tmp104, result
	jmp	.L72	#
.L71:
.LBB3:
	.loc 2 434 0
	movq	-40(%rbp), %rax	# pfile, tmp105
	movq	(%rax), %rax	# pfile_3(D)->buffer, D.9980
	movq	(%rax), %rax	# _15->cur, D.9984
	subq	$1, %rax	#, tmp106
	movq	%rax, -8(%rbp)	# tmp106, base
	.loc 2 436 0
	movq	-16(%rbp), %rdx	# cur, cur.2
	movq	-8(%rbp), %rax	# base, base.3
	subq	%rax, %rdx	# base.3, D.9985
	movq	%rdx, %rax	# D.9985, D.9985
	movl	%eax, %edx	# D.9985, D.9986
	movq	-40(%rbp), %rax	# pfile, tmp107
	movq	640(%rax), %rax	# pfile_3(D)->hash_table, D.9987
	.loc 2 435 0
	movq	-8(%rbp), %rsi	# base, tmp108
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.9987,
	call	ht_lookup	#
	movq	%rax, -24(%rbp)	# tmp109, result
	.loc 2 437 0
	movq	-40(%rbp), %rax	# pfile, tmp110
	movq	(%rax), %rax	# pfile_3(D)->buffer, D.9980
	movq	-16(%rbp), %rdx	# cur, tmp111
	movq	%rdx, (%rax)	# tmp111, _24->cur
.L72:
.LBE3:
	.loc 2 442 0
	movq	-24(%rbp), %rax	# result, tmp112
	movzbl	21(%rax), %eax	# result_1->flags, D.9981
	movzbl	%al, %eax	# D.9981, D.9982
	andl	$8, %eax	#, D.9982
	testl	%eax, %eax	# D.9982
	setne	%al	#, D.9988
	movzbl	%al, %eax	# D.9988, D.9985
	testq	%rax, %rax	# D.9985
	je	.L73	#,
	.loc 2 443 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp113
	movzbl	9(%rax), %eax	# pfile_3(D)->state.skipping, D.9981
	testb	%al, %al	# D.9981
	sete	%al	#, D.9988
	.loc 2 442 0 discriminator 1
	movzbl	%al, %eax	# D.9988, D.9985
	testq	%rax, %rax	# D.9985
	je	.L73	#,
	.loc 2 446 0
	movq	-24(%rbp), %rax	# result, tmp114
	movzbl	21(%rax), %eax	# result_1->flags, D.9981
	movzbl	%al, %eax	# D.9981, D.9982
	andl	$2, %eax	#, D.9982
	testl	%eax, %eax	# D.9982
	je	.L74	#,
	.loc 2 446 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp115
	movzbl	14(%rax), %eax	# pfile_3(D)->state.poisoned_ok, D.9981
	testb	%al, %al	# D.9981
	jne	.L74	#,
	.loc 2 447 0 is_stmt 1
	movq	-24(%rbp), %rax	# result, tmp116
	movq	8(%rax), %rdx	# result_1->ident.str, D.9984
	movq	-40(%rbp), %rax	# pfile, tmp117
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp117,
	movl	$0, %eax	#,
	call	cpp_error	#
.L74:
	.loc 2 452 0
	movq	-40(%rbp), %rax	# pfile, tmp118
	movq	816(%rax), %rax	# pfile_3(D)->spec_nodes.n__VA_ARGS__, D.9989
	cmpq	-24(%rbp), %rax	# result, D.9989
	jne	.L73	#,
	.loc 2 453 0
	movq	-40(%rbp), %rax	# pfile, tmp119
	movzbl	13(%rax), %eax	# pfile_3(D)->state.va_args_ok, D.9981
	testb	%al, %al	# D.9981
	jne	.L73	#,
	.loc 2 454 0
	movq	-40(%rbp), %rax	# pfile, tmp120
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# tmp120,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L73:
	.loc 2 458 0
	movq	-24(%rbp), %rax	# result, D.9989
	.loc 2 459 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	parse_identifier, .-parse_identifier
	.section	.rodata
	.align 8
.LC85:
	.string	"'$' character(s) in identifier"
	.text
	.type	parse_identifier_slow, @function
parse_identifier_slow:
.LFB19:
	.loc 2 468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# pfile, pfile
	movq	%rsi, -112(%rbp)	# cur, cur
	.loc 2 469 0
	movq	-104(%rbp), %rax	# pfile, tmp138
	movq	(%rax), %rax	# pfile_6(D)->buffer, tmp139
	movq	%rax, -72(%rbp)	# tmp139, buffer
	.loc 2 470 0
	movq	-72(%rbp), %rax	# buffer, tmp140
	movq	(%rax), %rax	# buffer_7->cur, D.9992
	subq	$1, %rax	#, tmp141
	movq	%rax, -64(%rbp)	# tmp141, base
	.loc 2 471 0
	movq	-104(%rbp), %rax	# pfile, tmp142
	movq	640(%rax), %rax	# pfile_6(D)->hash_table, D.9993
	movq	%rax, -56(%rbp)	# D.9993, stack
	.loc 2 472 0
	movl	$0, -84(%rbp)	#, saw_dollar
.LBB4:
	.loc 2 475 0
	movq	-56(%rbp), %rax	# stack, tmp143
	movq	%rax, -48(%rbp)	# tmp143, __o
	movq	-112(%rbp), %rdx	# cur, cur.4
	movq	-64(%rbp), %rax	# base, base.5
	subq	%rax, %rdx	# base.5, D.9994
	movq	%rdx, %rax	# D.9994, D.9994
	movl	%eax, -80(%rbp)	# D.9994, __len
	movq	-48(%rbp), %rax	# __o, tmp144
	movq	24(%rax), %rdx	# __o_13->next_free, D.9995
	movl	-80(%rbp), %eax	# __len, tmp145
	cltq
	addq	%rax, %rdx	# D.9996, D.9995
	movq	-48(%rbp), %rax	# __o, tmp146
	movq	32(%rax), %rax	# __o_13->chunk_limit, D.9995
	cmpq	%rax, %rdx	# D.9995, D.9995
	jbe	.L77	#,
	.loc 2 475 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %edx	# __len, tmp147
	movq	-48(%rbp), %rax	# __o, tmp148
	movl	%edx, %esi	# tmp147,
	movq	%rax, %rdi	# tmp148,
	call	_obstack_newchunk	#
.L77:
	.loc 2 475 0 discriminator 2
	movl	-80(%rbp), %eax	# __len, tmp149
	movslq	%eax, %rdx	# tmp149, D.9997
	movq	-48(%rbp), %rax	# __o, tmp150
	movq	24(%rax), %rax	# __o_13->next_free, D.9995
	movq	-64(%rbp), %rcx	# base, tmp151
	movq	%rcx, %rsi	# tmp151,
	movq	%rax, %rdi	# D.9995,
	call	memcpy	#
	movq	-48(%rbp), %rax	# __o, tmp152
	movq	24(%rax), %rdx	# __o_13->next_free, D.9995
	movl	-80(%rbp), %eax	# __len, tmp153
	cltq
	addq	%rax, %rdx	# D.9996, D.9995
	movq	-48(%rbp), %rax	# __o, tmp154
	movq	%rdx, 24(%rax)	# D.9995, __o_13->next_free
.LBE4:
	.loc 2 479 0 is_stmt 1 discriminator 2
	movq	-112(%rbp), %rax	# cur, cur.6
	leaq	1(%rax), %rdx	#, tmp155
	movq	%rdx, -112(%rbp)	# tmp155, cur
	movzbl	(%rax), %eax	# *cur.6_28, D.9998
	movzbl	%al, %eax	# D.9998, tmp156
	movl	%eax, -88(%rbp)	# tmp156, c
	.loc 2 480 0 discriminator 2
	movq	-72(%rbp), %rax	# buffer, tmp157
	movq	-112(%rbp), %rdx	# cur, tmp158
	movq	%rdx, (%rax)	# tmp158, buffer_7->cur
	.loc 2 483 0 discriminator 2
	jmp	.L78	#
.L85:
	.loc 2 483 0 is_stmt 0
	jmp	.L78	#
.L81:
.LBB5:
	.loc 2 485 0 is_stmt 1
	movq	-56(%rbp), %rax	# stack, tmp159
	movq	%rax, -8(%rbp)	# tmp159, __o
	movq	-8(%rbp), %rax	# __o, tmp160
	movq	24(%rax), %rax	# __o_92->next_free, D.9995
	leaq	1(%rax), %rdx	#, D.9995
	movq	-8(%rbp), %rax	# __o, tmp161
	movq	32(%rax), %rax	# __o_92->chunk_limit, D.9995
	cmpq	%rax, %rdx	# D.9995, D.9995
	jbe	.L79	#,
	.loc 2 485 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# __o, tmp162
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	_obstack_newchunk	#
.L79:
	.loc 2 485 0 discriminator 2
	movq	-8(%rbp), %rax	# __o, tmp163
	movq	24(%rax), %rax	# __o_92->next_free, D.9995
	leaq	1(%rax), %rcx	#, D.9995
	movq	-8(%rbp), %rdx	# __o, tmp164
	movq	%rcx, 24(%rdx)	# D.9995, __o_92->next_free
	movl	-88(%rbp), %edx	# c, tmp165
	movb	%dl, (%rax)	# D.10005, *_97
.LBE5:
	.loc 2 487 0 is_stmt 1 discriminator 2
	cmpl	$36, -88(%rbp)	#, c
	jne	.L80	#,
	.loc 2 488 0
	addl	$1, -84(%rbp)	#, saw_dollar
.L80:
	.loc 2 490 0
	movq	-72(%rbp), %rax	# buffer, tmp166
	movq	(%rax), %rax	# buffer_7->cur, D.9992
	leaq	1(%rax), %rcx	#, D.9992
	movq	-72(%rbp), %rdx	# buffer, tmp167
	movq	%rcx, (%rdx)	# D.9992, buffer_7->cur
	movzbl	(%rax), %eax	# *_102, D.9998
	movzbl	%al, %eax	# D.9998, tmp168
	movl	%eax, -88(%rbp)	# tmp168, c
.L78:
	.loc 2 483 0 discriminator 1
	movl	-88(%rbp), %eax	# c, tmp169
	movzbl	%al, %eax	# tmp169, D.9999
	movl	%eax, %eax	# D.9999, tmp170
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10000
	movzwl	%ax, %eax	# D.10000, D.10001
	andl	$516, %eax	#, D.10001
	testl	%eax, %eax	# D.10001
	jne	.L81	#,
	.loc 2 483 0 is_stmt 0 discriminator 2
	cmpl	$36, -88(%rbp)	#, c
	jne	.L82	#,
	.loc 2 483 0 discriminator 1
	movq	-104(%rbp), %rax	# pfile, tmp171
	movzbl	767(%rax), %eax	# pfile_6(D)->opts.dollars_in_ident, D.9998
	testb	%al, %al	# D.9998
	jne	.L81	#,
.L82:
	.loc 2 494 0 is_stmt 1
	movq	-72(%rbp), %rax	# buffer, tmp172
	movq	(%rax), %rax	# buffer_7->cur, D.9992
	leaq	-1(%rax), %rdx	#, D.9992
	movq	-72(%rbp), %rax	# buffer, tmp173
	movq	%rdx, 8(%rax)	# D.9992, buffer_7->backup_to
	.loc 2 495 0
	cmpl	$63, -88(%rbp)	#, c
	je	.L83	#,
	.loc 2 495 0 is_stmt 0 discriminator 1
	cmpl	$92, -88(%rbp)	#, c
	je	.L83	#,
	.loc 2 496 0 is_stmt 1
	jmp	.L84	#
.L83:
	.loc 2 497 0
	movq	-104(%rbp), %rax	# pfile, tmp174
	movq	%rax, %rdi	# tmp174,
	call	skip_escaped_newlines	#
	movl	%eax, -88(%rbp)	# D.10001, c
	.loc 2 499 0
	movl	-88(%rbp), %eax	# c, tmp175
	movzbl	%al, %eax	# tmp175, D.9999
	movl	%eax, %eax	# D.9999, tmp176
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10000
	movzwl	%ax, %eax	# D.10000, D.10001
	andl	$516, %eax	#, D.10001
	testl	%eax, %eax	# D.10001
	jne	.L85	#,
	.loc 2 499 0 is_stmt 0 discriminator 1
	cmpl	$36, -88(%rbp)	#, c
	jne	.L84	#,
	movq	-104(%rbp), %rax	# pfile, tmp177
	movzbl	767(%rax), %eax	# pfile_6(D)->opts.dollars_in_ident, D.9998
	testb	%al, %al	# D.9998
	jne	.L85	#,
.L84:
	.loc 2 502 0 is_stmt 1
	movq	-72(%rbp), %rax	# buffer, tmp178
	movq	8(%rax), %rdx	# buffer_7->backup_to, D.9992
	movq	-72(%rbp), %rax	# buffer, tmp179
	movq	%rdx, (%rax)	# D.9992, buffer_7->cur
	.loc 2 507 0
	cmpl	$0, -84(%rbp)	#, saw_dollar
	je	.L86	#,
	.loc 2 507 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# pfile, tmp180
	movzbl	770(%rax), %eax	# pfile_6(D)->opts.pedantic, D.9998
	testb	%al, %al	# D.9998
	je	.L86	#,
	movq	-104(%rbp), %rax	# pfile, tmp181
	movzbl	9(%rax), %eax	# pfile_6(D)->state.skipping, D.9998
	testb	%al, %al	# D.9998
	jne	.L86	#,
	.loc 2 508 0 is_stmt 1
	movq	-104(%rbp), %rax	# pfile, tmp182
	movl	$.LC85, %esi	#,
	movq	%rax, %rdi	# tmp182,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L86:
.LBB6:
	.loc 2 511 0
	movq	-56(%rbp), %rax	# stack, tmp183
	movq	%rax, -40(%rbp)	# tmp183, __o
	movq	-40(%rbp), %rax	# __o, tmp184
	movq	24(%rax), %rax	# __o_49->next_free, D.9995
	movq	%rax, %rdx	# D.9995, D.9994
	movq	-40(%rbp), %rax	# __o, tmp185
	movq	16(%rax), %rax	# __o_49->object_base, D.9995
	subq	%rax, %rdx	# D.9994, D.9994
	movq	%rdx, %rax	# D.9994, D.9994
.LBE6:
	movl	%eax, -76(%rbp)	# len.7, len
.LBB7:
	.loc 2 512 0
	movq	-56(%rbp), %rax	# stack, tmp186
	movq	%rax, -32(%rbp)	# tmp186, __o
	movq	-32(%rbp), %rax	# __o, tmp187
	movq	24(%rax), %rax	# __o_57->next_free, D.9995
	leaq	1(%rax), %rdx	#, D.9995
	movq	-32(%rbp), %rax	# __o, tmp188
	movq	32(%rax), %rax	# __o_57->chunk_limit, D.9995
	cmpq	%rax, %rdx	# D.9995, D.9995
	jbe	.L87	#,
	.loc 2 512 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# __o, tmp189
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp189,
	call	_obstack_newchunk	#
.L87:
	.loc 2 512 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp190
	movq	24(%rax), %rax	# __o_57->next_free, D.9995
	leaq	1(%rax), %rcx	#, D.9995
	movq	-32(%rbp), %rdx	# __o, tmp191
	movq	%rcx, 24(%rdx)	# D.9995, __o_57->next_free
	movb	$0, (%rax)	#, *_62
.LBE7:
.LBB8:
	.loc 2 515 0 is_stmt 1 discriminator 2
	movq	-56(%rbp), %rax	# stack, tmp192
	movq	%rax, -24(%rbp)	# tmp192, __o1
	movq	-24(%rbp), %rax	# __o1, tmp193
	movq	16(%rax), %rax	# __o1_64->object_base, tmp194
	movq	%rax, -16(%rbp)	# tmp194, value
	movq	-24(%rbp), %rax	# __o1, tmp195
	movq	24(%rax), %rax	# __o1_64->next_free, D.9995
	cmpq	-16(%rbp), %rax	# value, D.9995
	jne	.L88	#,
	.loc 2 515 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp196
	movzbl	80(%rax), %edx	# __o1_64->maybe_empty_object, tmp199
	orl	$2, %edx	#, tmp200
	movb	%dl, 80(%rax)	# tmp200, __o1_64->maybe_empty_object
.L88:
	.loc 2 515 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp201
	movq	24(%rax), %rax	# __o1_64->next_free, D.9995
	movq	%rax, %rdx	# D.9995, D.9994
	movq	-24(%rbp), %rax	# __o1, tmp202
	movl	48(%rax), %eax	# __o1_64->alignment_mask, D.10001
	cltq
	addq	%rax, %rdx	# D.9994, D.9994
	movq	-24(%rbp), %rax	# __o1, tmp203
	movl	48(%rax), %eax	# __o1_64->alignment_mask, D.10001
	notl	%eax	# D.10001
	cltq
	andq	%rdx, %rax	# D.9994, D.9994
	movq	%rax, %rdx	# D.9994, D.9995
	movq	-24(%rbp), %rax	# __o1, tmp204
	movq	%rdx, 24(%rax)	# D.9995, __o1_64->next_free
	movq	-24(%rbp), %rax	# __o1, tmp205
	movq	24(%rax), %rax	# __o1_64->next_free, D.9995
	movq	%rax, %rdx	# D.9995, D.9994
	movq	-24(%rbp), %rax	# __o1, tmp206
	movq	8(%rax), %rax	# __o1_64->chunk, D.10002
	movq	%rdx, %rcx	# D.9994, D.9994
	subq	%rax, %rcx	# D.9994, D.9994
	movq	-24(%rbp), %rax	# __o1, tmp207
	movq	32(%rax), %rax	# __o1_64->chunk_limit, D.9995
	movq	%rax, %rdx	# D.9995, D.9994
	movq	-24(%rbp), %rax	# __o1, tmp208
	movq	8(%rax), %rax	# __o1_64->chunk, D.10002
	subq	%rax, %rdx	# D.9994, D.9994
	movq	%rdx, %rax	# D.9994, D.9994
	cmpq	%rax, %rcx	# D.9994, D.9994
	jle	.L89	#,
	.loc 2 515 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp209
	movq	32(%rax), %rdx	# __o1_64->chunk_limit, D.9995
	movq	-24(%rbp), %rax	# __o1, tmp210
	movq	%rdx, 24(%rax)	# D.9995, __o1_64->next_free
.L89:
	.loc 2 515 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp211
	movq	24(%rax), %rdx	# __o1_64->next_free, D.9995
	movq	-24(%rbp), %rax	# __o1, tmp212
	movq	%rdx, 16(%rax)	# D.9995, __o1_64->object_base
	movq	-16(%rbp), %rsi	# value, D.10003
.LBE8:
	movq	-104(%rbp), %rax	# pfile, tmp213
	movq	640(%rax), %rax	# pfile_6(D)->hash_table, D.9993
	.loc 2 514 0 is_stmt 1 discriminator 2
	movl	-76(%rbp), %edx	# len, tmp214
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.9993,
	call	ht_lookup	#
	.loc 2 516 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	parse_identifier_slow, .-parse_identifier_slow
	.type	parse_number, @function
parse_number:
.LFB20:
	.loc 2 527 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# number, number
	movl	%edx, -52(%rbp)	# c, c
	movl	%ecx, -56(%rbp)	# leading_period, leading_period
	.loc 2 528 0
	movq	-40(%rbp), %rax	# pfile, tmp121
	movq	(%rax), %rax	# pfile_8(D)->buffer, tmp122
	movq	%rax, -16(%rbp)	# tmp122, buffer
	.loc 2 531 0
	movq	-40(%rbp), %rax	# pfile, tmp123
	movq	80(%rax), %rax	# pfile_8(D)->u_buff, D.10007
	movq	16(%rax), %rax	# _10->cur, tmp124
	movq	%rax, -32(%rbp)	# tmp124, dest
	.loc 2 532 0
	movq	-40(%rbp), %rax	# pfile, tmp125
	movq	80(%rax), %rax	# pfile_8(D)->u_buff, D.10007
	movq	24(%rax), %rax	# _12->limit, tmp126
	movq	%rax, -24(%rbp)	# tmp126, limit
	.loc 2 535 0
	cmpl	$0, -56(%rbp)	#, leading_period
	je	.L92	#,
	.loc 2 537 0
	movq	-32(%rbp), %rax	# dest, tmp127
	cmpq	-24(%rbp), %rax	# limit, tmp127
	jne	.L93	#,
	.loc 2 539 0
	movq	-40(%rbp), %rax	# pfile, tmp128
	leaq	80(%rax), %rcx	#, D.10008
	movq	-40(%rbp), %rax	# pfile, tmp129
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.10008,
	movq	%rax, %rdi	# tmp129,
	call	_cpp_extend_buff	#
	.loc 2 540 0
	movq	-40(%rbp), %rax	# pfile, tmp130
	movq	80(%rax), %rax	# pfile_8(D)->u_buff, D.10007
	movq	16(%rax), %rax	# _17->cur, tmp131
	movq	%rax, -32(%rbp)	# tmp131, dest
	.loc 2 541 0
	movq	-40(%rbp), %rax	# pfile, tmp132
	movq	80(%rax), %rax	# pfile_8(D)->u_buff, D.10007
	movq	24(%rax), %rax	# _19->limit, tmp133
	movq	%rax, -24(%rbp)	# tmp133, limit
.L93:
	.loc 2 543 0
	movq	-32(%rbp), %rax	# dest, dest.8
	leaq	1(%rax), %rdx	#, tmp134
	movq	%rdx, -32(%rbp)	# tmp134, dest
	movb	$46, (%rax)	#, *dest.8_21
.L92:
	.loc 2 551 0
	movq	-24(%rbp), %rdx	# limit, limit.9
	movq	-32(%rbp), %rax	# dest, dest.10
	subq	%rax, %rdx	# dest.10, D.10009
	movq	%rdx, %rax	# D.10009, D.10009
	cmpq	$1, %rax	#, D.10010
	ja	.L94	#,
.LBB9:
	.loc 2 553 0
	movq	-32(%rbp), %rdx	# dest, dest.11
	movq	-40(%rbp), %rax	# pfile, tmp135
	movq	80(%rax), %rax	# pfile_8(D)->u_buff, D.10007
	movq	16(%rax), %rax	# _28->cur, D.10011
	subq	%rax, %rdx	# D.10009, D.10009
	movq	%rdx, %rax	# D.10009, D.10009
	movq	%rax, -8(%rbp)	# D.10009, len_so_far
	.loc 2 554 0
	movq	-40(%rbp), %rax	# pfile, tmp136
	leaq	80(%rax), %rcx	#, D.10008
	movq	-40(%rbp), %rax	# pfile, tmp137
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.10008,
	movq	%rax, %rdi	# tmp137,
	call	_cpp_extend_buff	#
	.loc 2 555 0
	movq	-40(%rbp), %rax	# pfile, tmp138
	movq	80(%rax), %rax	# pfile_8(D)->u_buff, D.10007
	movq	16(%rax), %rdx	# _34->cur, D.10011
	movq	-8(%rbp), %rax	# len_so_far, tmp142
	addq	%rdx, %rax	# D.10011, tmp141
	movq	%rax, -32(%rbp)	# tmp141, dest
	.loc 2 556 0
	movq	-40(%rbp), %rax	# pfile, tmp143
	movq	80(%rax), %rax	# pfile_8(D)->u_buff, D.10007
	movq	24(%rax), %rax	# _37->limit, tmp144
	movq	%rax, -24(%rbp)	# tmp144, limit
.L94:
.LBE9:
	.loc 2 558 0
	movq	-32(%rbp), %rax	# dest, dest.12
	leaq	1(%rax), %rdx	#, tmp145
	movq	%rdx, -32(%rbp)	# tmp145, dest
	movl	-52(%rbp), %edx	# c, tmp146
	movb	%dl, (%rax)	# D.10012, *dest.12_39
	.loc 2 560 0
	movq	-16(%rbp), %rax	# buffer, tmp147
	movq	(%rax), %rax	# buffer_9->cur, D.10013
	leaq	1(%rax), %rcx	#, D.10013
	movq	-16(%rbp), %rdx	# buffer, tmp148
	movq	%rcx, (%rdx)	# D.10013, buffer_9->cur
	movzbl	(%rax), %eax	# *_43, D.10012
	movzbl	%al, %eax	# D.10012, tmp149
	movl	%eax, -52(%rbp)	# tmp149, c
	.loc 2 562 0
	movl	-52(%rbp), %eax	# c, tmp150
	movzbl	%al, %eax	# tmp150, D.10014
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10015
	movzwl	%ax, %eax	# D.10015, D.10014
	andl	$516, %eax	#, D.10014
	testl	%eax, %eax	# D.10014
	jne	.L92	#,
	.loc 2 562 0 is_stmt 0 discriminator 1
	cmpl	$46, -52(%rbp)	#, c
	je	.L92	#,
	cmpl	$43, -52(%rbp)	#, c
	je	.L95	#,
	.loc 2 562 0 discriminator 2
	cmpl	$45, -52(%rbp)	#, c
	jne	.L96	#,
.L95:
	.loc 2 562 0 discriminator 1
	movq	-32(%rbp), %rax	# dest, tmp152
	subq	$1, %rax	#, D.10011
	movzbl	(%rax), %eax	# *_51, D.10012
	cmpb	$101, %al	#, D.10012
	je	.L92	#,
	movq	-32(%rbp), %rax	# dest, tmp153
	subq	$1, %rax	#, D.10011
	movzbl	(%rax), %eax	# *_53, D.10012
	cmpb	$69, %al	#, D.10012
	je	.L92	#,
	movq	-32(%rbp), %rax	# dest, tmp154
	subq	$1, %rax	#, D.10011
	movzbl	(%rax), %eax	# *_55, D.10012
	cmpb	$112, %al	#, D.10012
	je	.L97	#,
	.loc 2 562 0 discriminator 2
	movq	-32(%rbp), %rax	# dest, tmp155
	subq	$1, %rax	#, D.10011
	movzbl	(%rax), %eax	# *_57, D.10012
	cmpb	$80, %al	#, D.10012
	jne	.L96	#,
.L97:
	.loc 2 562 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp156
	movzbl	748(%rax), %eax	# pfile_8(D)->opts.extended_numbers, D.10012
	testb	%al, %al	# D.10012
	jne	.L92	#,
.L96:
	.loc 2 565 0 is_stmt 1
	movq	-16(%rbp), %rax	# buffer, tmp157
	movq	(%rax), %rax	# buffer_9->cur, D.10013
	leaq	-1(%rax), %rdx	#, D.10013
	movq	-16(%rbp), %rax	# buffer, tmp158
	movq	%rdx, 8(%rax)	# D.10013, buffer_9->backup_to
	.loc 2 566 0
	cmpl	$63, -52(%rbp)	#, c
	je	.L98	#,
	.loc 2 566 0 is_stmt 0 discriminator 1
	cmpl	$92, -52(%rbp)	#, c
	je	.L98	#,
	.loc 2 567 0 is_stmt 1
	jmp	.L99	#
.L98:
	.loc 2 568 0
	movq	-40(%rbp), %rax	# pfile, tmp159
	movq	%rax, %rdi	# tmp159,
	call	skip_escaped_newlines	#
	movl	%eax, -52(%rbp)	# tmp160, c
	.loc 2 570 0
	movl	-52(%rbp), %eax	# c, tmp161
	movzbl	%al, %eax	# tmp161, D.10014
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10015
	movzwl	%ax, %eax	# D.10015, D.10014
	andl	$516, %eax	#, D.10014
	testl	%eax, %eax	# D.10014
	jne	.L92	#,
	.loc 2 570 0 is_stmt 0 discriminator 1
	cmpl	$46, -52(%rbp)	#, c
	je	.L92	#,
	cmpl	$43, -52(%rbp)	#, c
	je	.L100	#,
	.loc 2 570 0 discriminator 2
	cmpl	$45, -52(%rbp)	#, c
	jne	.L99	#,
.L100:
	.loc 2 570 0 discriminator 1
	movq	-32(%rbp), %rax	# dest, tmp163
	subq	$1, %rax	#, D.10011
	movzbl	(%rax), %eax	# *_67, D.10012
	cmpb	$101, %al	#, D.10012
	je	.L92	#,
	movq	-32(%rbp), %rax	# dest, tmp164
	subq	$1, %rax	#, D.10011
	movzbl	(%rax), %eax	# *_69, D.10012
	cmpb	$69, %al	#, D.10012
	je	.L92	#,
	movq	-32(%rbp), %rax	# dest, tmp165
	subq	$1, %rax	#, D.10011
	movzbl	(%rax), %eax	# *_71, D.10012
	cmpb	$112, %al	#, D.10012
	je	.L101	#,
	.loc 2 570 0 discriminator 2
	movq	-32(%rbp), %rax	# dest, tmp166
	subq	$1, %rax	#, D.10011
	movzbl	(%rax), %eax	# *_73, D.10012
	cmpb	$80, %al	#, D.10012
	jne	.L99	#,
.L101:
	.loc 2 570 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp167
	movzbl	748(%rax), %eax	# pfile_8(D)->opts.extended_numbers, D.10012
	testb	%al, %al	# D.10012
	jne	.L92	#,
.L99:
	.loc 2 573 0 is_stmt 1
	movq	-16(%rbp), %rax	# buffer, tmp168
	movq	8(%rax), %rdx	# buffer_9->backup_to, D.10013
	movq	-16(%rbp), %rax	# buffer, tmp169
	movq	%rdx, (%rax)	# D.10013, buffer_9->cur
	.loc 2 576 0
	movq	-32(%rbp), %rax	# dest, tmp170
	movb	$0, (%rax)	#, *dest_40
	.loc 2 578 0
	movq	-40(%rbp), %rax	# pfile, tmp171
	movq	80(%rax), %rax	# pfile_8(D)->u_buff, D.10007
	movq	16(%rax), %rdx	# _77->cur, D.10011
	movq	-48(%rbp), %rax	# number, tmp172
	movq	%rdx, 8(%rax)	# D.10011, number_79(D)->text
	.loc 2 579 0
	movq	-32(%rbp), %rdx	# dest, dest.13
	movq	-48(%rbp), %rax	# number, tmp173
	movq	8(%rax), %rax	# number_79(D)->text, D.10013
	subq	%rax, %rdx	# D.10009, D.10009
	movq	%rdx, %rax	# D.10009, D.10009
	movl	%eax, %edx	# D.10009, D.10016
	movq	-48(%rbp), %rax	# number, tmp174
	movl	%edx, (%rax)	# D.10016, number_79(D)->len
	.loc 2 580 0
	movq	-40(%rbp), %rax	# pfile, tmp175
	movq	80(%rax), %rax	# pfile_8(D)->u_buff, D.10007
	movq	-32(%rbp), %rdx	# dest, tmp176
	addq	$1, %rdx	#, D.10011
	movq	%rdx, 16(%rax)	# D.10011, _85->cur
	.loc 2 581 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	parse_number, .-parse_number
	.section	.rodata
	.align 8
.LC86:
	.string	"missing terminating %c character"
	.align 8
.LC87:
	.string	"possible start of unterminated string literal"
	.text
	.type	unterminated, @function
unterminated:
.LFB21:
	.loc 2 588 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movl	%esi, -12(%rbp)	# term, term
	.loc 2 589 0
	movl	-12(%rbp), %edx	# term, tmp66
	movq	-8(%rbp), %rax	# pfile, tmp67
	movl	$.LC86, %esi	#,
	movq	%rax, %rdi	# tmp67,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 591 0
	cmpl	$34, -12(%rbp)	#, term
	jne	.L102	#,
	.loc 2 591 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pfile, tmp68
	movl	252(%rax), %eax	# pfile_1(D)->mls_line, D.10017
	testl	%eax, %eax	# D.10017
	je	.L102	#,
	movq	-8(%rbp), %rax	# pfile, tmp69
	movl	252(%rax), %edx	# pfile_1(D)->mls_line, D.10017
	movq	-8(%rbp), %rax	# pfile, tmp70
	movl	64(%rax), %eax	# pfile_1(D)->line, D.10017
	cmpl	%eax, %edx	# D.10017, D.10017
	je	.L102	#,
	.loc 2 593 0 is_stmt 1
	movq	-8(%rbp), %rax	# pfile, tmp71
	movl	256(%rax), %eax	# pfile_1(D)->mls_col, D.10017
	movl	%eax, %edx	# D.10017, D.10018
	movq	-8(%rbp), %rax	# pfile, tmp72
	movl	252(%rax), %eax	# pfile_1(D)->mls_line, D.10017
	movl	%eax, %esi	# D.10017, D.10018
	movq	-8(%rbp), %rax	# pfile, tmp73
	movl	$.LC87, %ecx	#,
	movq	%rax, %rdi	# tmp73,
	movl	$0, %eax	#,
	call	cpp_error_with_line	#
	.loc 2 595 0
	movq	-8(%rbp), %rax	# pfile, tmp74
	movl	$0, 252(%rax)	#, pfile_1(D)->mls_line
.L102:
	.loc 2 597 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	unterminated, .-unterminated
	.type	unescaped_terminator_p, @function
unescaped_terminator_p:
.LFB22:
	.loc 2 604 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# dest, dest
	.loc 2 608 0
	movq	-24(%rbp), %rax	# pfile, tmp70
	movzbl	10(%rax), %eax	# pfile_3(D)->state.angled_headers, D.10022
	testb	%al, %al	# D.10022
	je	.L105	#,
	.loc 2 609 0
	movl	$1, %eax	#, D.10021
	jmp	.L106	#
.L105:
	.loc 2 611 0
	movq	-24(%rbp), %rax	# pfile, tmp71
	movq	80(%rax), %rax	# pfile_3(D)->u_buff, D.10023
	movq	16(%rax), %rax	# _6->cur, tmp72
	movq	%rax, -8(%rbp)	# tmp72, start
	.loc 2 615 0
	movq	-32(%rbp), %rax	# dest, tmp73
	movq	%rax, -16(%rbp)	# tmp73, temp
	jmp	.L107	#
.L109:
	.loc 2 615 0 is_stmt 0 discriminator 1
	subq	$1, -16(%rbp)	#, temp
.L107:
	movq	-16(%rbp), %rax	# temp, tmp74
	cmpq	-8(%rbp), %rax	# start, tmp74
	jbe	.L108	#,
	.loc 2 615 0 discriminator 2
	movq	-16(%rbp), %rax	# temp, tmp75
	subq	$1, %rax	#, D.10024
	movzbl	(%rax), %eax	# *_10, D.10022
	cmpb	$92, %al	#, D.10022
	je	.L109	#,
.L108:
	.loc 2 618 0 is_stmt 1
	movq	-32(%rbp), %rdx	# dest, dest.14
	movq	-16(%rbp), %rax	# temp, temp.15
	subq	%rax, %rdx	# temp.15, D.10025
	movq	%rdx, %rax	# D.10025, D.10025
	andl	$1, %eax	#, D.10025
	testq	%rax, %rax	# D.10025
	sete	%al	#, D.10026
	movzbl	%al, %eax	# D.10026, D.10021
.L106:
	.loc 2 619 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	unescaped_terminator_p, .-unescaped_terminator_p
	.section	.rodata
	.align 8
.LC88:
	.string	"multi-line string literals are deprecated"
	.align 8
.LC89:
	.string	"null character(s) preserved in literal"
	.text
	.type	parse_string, @function
parse_string:
.LFB23:
	.loc 2 634 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# token, token
	movl	%edx, -68(%rbp)	# terminator, terminator
	.loc 2 635 0
	movq	-56(%rbp), %rax	# pfile, tmp109
	movq	(%rax), %rax	# pfile_12(D)->buffer, tmp110
	movq	%rax, -16(%rbp)	# tmp110, buffer
	.loc 2 638 0
	movb	$0, -38(%rbp)	#, warned_nulls
	movb	$0, -37(%rbp)	#, warned_multi
	.loc 2 640 0
	movq	-56(%rbp), %rax	# pfile, tmp111
	movq	80(%rax), %rax	# pfile_12(D)->u_buff, D.10027
	movq	16(%rax), %rax	# _16->cur, tmp112
	movq	%rax, -32(%rbp)	# tmp112, dest
	.loc 2 641 0
	movq	-56(%rbp), %rax	# pfile, tmp113
	movq	80(%rax), %rax	# pfile_12(D)->u_buff, D.10027
	movq	24(%rax), %rax	# _18->limit, tmp114
	movq	%rax, -24(%rbp)	# tmp114, limit
.L124:
	.loc 2 646 0
	movq	-24(%rbp), %rdx	# limit, limit.16
	movq	-32(%rbp), %rax	# dest, dest.17
	cmpq	%rax, %rdx	# dest.17, limit.16
	jne	.L111	#,
.LBB10:
	.loc 2 648 0
	movq	-32(%rbp), %rdx	# dest, dest.18
	movq	-56(%rbp), %rax	# pfile, tmp115
	movq	80(%rax), %rax	# pfile_12(D)->u_buff, D.10027
	movq	16(%rax), %rax	# _23->cur, D.10028
	subq	%rax, %rdx	# D.10029, D.10029
	movq	%rdx, %rax	# D.10029, D.10029
	movq	%rax, -8(%rbp)	# D.10029, len_so_far
	.loc 2 649 0
	movq	-56(%rbp), %rax	# pfile, tmp116
	leaq	80(%rax), %rcx	#, D.10030
	movq	-56(%rbp), %rax	# pfile, tmp117
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.10030,
	movq	%rax, %rdi	# tmp117,
	call	_cpp_extend_buff	#
	.loc 2 650 0
	movq	-56(%rbp), %rax	# pfile, tmp118
	movq	80(%rax), %rax	# pfile_12(D)->u_buff, D.10027
	movq	16(%rax), %rdx	# _29->cur, D.10028
	movq	-8(%rbp), %rax	# len_so_far, tmp122
	addq	%rdx, %rax	# D.10028, tmp121
	movq	%rax, -32(%rbp)	# tmp121, dest
	.loc 2 651 0
	movq	-56(%rbp), %rax	# pfile, tmp123
	movq	80(%rax), %rax	# pfile_12(D)->u_buff, D.10027
	movq	24(%rax), %rax	# _32->limit, tmp124
	movq	%rax, -24(%rbp)	# tmp124, limit
.L111:
.LBE10:
	.loc 2 655 0
	movq	-16(%rbp), %rax	# buffer, tmp125
	movq	(%rax), %rax	# buffer_13->cur, D.10031
	leaq	1(%rax), %rcx	#, D.10031
	movq	-16(%rbp), %rdx	# buffer, tmp126
	movq	%rcx, (%rdx)	# D.10031, buffer_13->cur
	movzbl	(%rax), %eax	# *_35, D.10032
	movzbl	%al, %eax	# D.10032, tmp127
	movl	%eax, -36(%rbp)	# tmp127, c
	.loc 2 656 0
	cmpl	$63, -36(%rbp)	#, c
	je	.L112	#,
	.loc 2 656 0 is_stmt 0 discriminator 1
	cmpl	$92, -36(%rbp)	#, c
	jne	.L113	#,
.L112:
	.loc 2 657 0 is_stmt 1
	movq	-56(%rbp), %rax	# pfile, tmp128
	movq	%rax, %rdi	# tmp128,
	call	skip_escaped_newlines	#
	movl	%eax, -36(%rbp)	# tmp129, c
.L113:
	.loc 2 659 0
	movl	-36(%rbp), %eax	# c, tmp130
	cmpl	-68(%rbp), %eax	# terminator, tmp130
	jne	.L114	#,
	.loc 2 661 0
	movq	-32(%rbp), %rdx	# dest, tmp131
	movq	-56(%rbp), %rax	# pfile, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	unescaped_terminator_p	#
	testl	%eax, %eax	# D.10033
	je	.L115	#,
	.loc 2 662 0
	jmp	.L116	#
.L114:
	.loc 2 664 0
	movl	-36(%rbp), %eax	# c, tmp133
	movzbl	%al, %eax	# tmp133, D.10033
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10034
	movzwl	%ax, %eax	# D.10034, D.10033
	andl	$1024, %eax	#, D.10033
	testl	%eax, %eax	# D.10033
	je	.L117	#,
	.loc 2 669 0
	movq	-56(%rbp), %rax	# pfile, tmp135
	movl	736(%rax), %eax	# pfile_12(D)->opts.lang, D.10035
	cmpl	$9, %eax	#, D.10035
	jne	.L118	#,
	.loc 2 669 0 is_stmt 0 discriminator 1
	cmpl	$62, -68(%rbp)	#, terminator
	je	.L118	#,
	.loc 2 671 0 is_stmt 1
	movq	-16(%rbp), %rax	# buffer, tmp136
	movq	(%rax), %rax	# buffer_13->cur, D.10031
	leaq	-1(%rax), %rdx	#, D.10031
	movq	-16(%rbp), %rax	# buffer, tmp137
	movq	%rdx, (%rax)	# D.10031, buffer_13->cur
	.loc 2 672 0
	jmp	.L116	#
.L118:
	.loc 2 679 0
	cmpl	$34, -68(%rbp)	#, terminator
	jne	.L119	#,
	.loc 2 679 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# pfile, tmp138
	movzbl	10(%rax), %eax	# pfile_12(D)->state.angled_headers, D.10032
	testb	%al, %al	# D.10032
	je	.L120	#,
.L119:
	.loc 2 681 0 is_stmt 1
	movl	-68(%rbp), %edx	# terminator, tmp139
	movq	-56(%rbp), %rax	# pfile, tmp140
	movl	%edx, %esi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	unterminated	#
	.loc 2 682 0
	movq	-16(%rbp), %rax	# buffer, tmp141
	movq	(%rax), %rax	# buffer_13->cur, D.10031
	leaq	-1(%rax), %rdx	#, D.10031
	movq	-16(%rbp), %rax	# buffer, tmp142
	movq	%rdx, (%rax)	# D.10031, buffer_13->cur
	.loc 2 683 0
	jmp	.L116	#
.L120:
	.loc 2 686 0
	movzbl	-37(%rbp), %eax	# warned_multi, tmp143
	xorl	$1, %eax	#, D.10036
	testb	%al, %al	# D.10036
	je	.L121	#,
	.loc 2 688 0
	movb	$1, -37(%rbp)	#, warned_multi
	.loc 2 689 0
	movq	-56(%rbp), %rax	# pfile, tmp144
	movl	$.LC88, %esi	#,
	movq	%rax, %rdi	# tmp144,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L121:
	.loc 2 692 0
	movq	-56(%rbp), %rax	# pfile, tmp145
	movl	252(%rax), %eax	# pfile_12(D)->mls_line, D.10037
	testl	%eax, %eax	# D.10037
	jne	.L122	#,
	.loc 2 694 0
	movq	-64(%rbp), %rax	# token, tmp146
	movl	(%rax), %edx	# token_53(D)->line, D.10037
	movq	-56(%rbp), %rax	# pfile, tmp147
	movl	%edx, 252(%rax)	# D.10037, pfile_12(D)->mls_line
	.loc 2 695 0
	movq	-64(%rbp), %rax	# token, tmp148
	movzwl	4(%rax), %eax	# token_53(D)->col, D.10034
	movzwl	%ax, %edx	# D.10034, D.10037
	movq	-56(%rbp), %rax	# pfile, tmp149
	movl	%edx, 256(%rax)	# D.10037, pfile_12(D)->mls_col
.L122:
	.loc 2 698 0
	movq	-56(%rbp), %rax	# pfile, tmp150
	movq	%rax, %rdi	# tmp150,
	call	handle_newline	#
	.loc 2 699 0
	movl	$10, -36(%rbp)	#, c
	jmp	.L115	#
.L117:
	.loc 2 701 0
	cmpl	$0, -36(%rbp)	#, c
	jne	.L115	#,
	.loc 2 703 0
	movq	-16(%rbp), %rax	# buffer, tmp151
	movq	(%rax), %rax	# buffer_13->cur, D.10031
	leaq	-1(%rax), %rdx	#, D.10031
	movq	-16(%rbp), %rax	# buffer, tmp152
	movq	16(%rax), %rax	# buffer_13->rlimit, D.10031
	cmpq	%rax, %rdx	# D.10031, D.10031
	jne	.L123	#,
	.loc 2 705 0
	movl	-68(%rbp), %edx	# terminator, tmp153
	movq	-56(%rbp), %rax	# pfile, tmp154
	movl	%edx, %esi	# tmp153,
	movq	%rax, %rdi	# tmp154,
	call	unterminated	#
	.loc 2 706 0
	movq	-16(%rbp), %rax	# buffer, tmp155
	movq	(%rax), %rax	# buffer_13->cur, D.10031
	leaq	-1(%rax), %rdx	#, D.10031
	movq	-16(%rbp), %rax	# buffer, tmp156
	movq	%rdx, (%rax)	# D.10031, buffer_13->cur
	.loc 2 707 0
	jmp	.L116	#
.L123:
	.loc 2 709 0
	movzbl	-38(%rbp), %eax	# warned_nulls, tmp157
	xorl	$1, %eax	#, D.10036
	testb	%al, %al	# D.10036
	je	.L115	#,
	.loc 2 711 0
	movb	$1, -38(%rbp)	#, warned_nulls
	.loc 2 712 0
	movq	-56(%rbp), %rax	# pfile, tmp158
	movl	$.LC89, %esi	#,
	movq	%rax, %rdi	# tmp158,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L115:
	.loc 2 716 0
	movq	-32(%rbp), %rax	# dest, dest.19
	leaq	1(%rax), %rdx	#, tmp159
	movq	%rdx, -32(%rbp)	# tmp159, dest
	movl	-36(%rbp), %edx	# c, tmp160
	movb	%dl, (%rax)	# D.10032, *dest.19_67
	.loc 2 717 0
	jmp	.L124	#
.L116:
	.loc 2 719 0
	movq	-32(%rbp), %rax	# dest, tmp161
	movb	$0, (%rax)	#, *dest_2
	.loc 2 721 0
	movq	-56(%rbp), %rax	# pfile, tmp162
	movq	80(%rax), %rax	# pfile_12(D)->u_buff, D.10027
	movq	16(%rax), %rdx	# _70->cur, D.10028
	movq	-64(%rbp), %rax	# token, tmp163
	movq	%rdx, 16(%rax)	# D.10028, token_53(D)->val.str.text
	.loc 2 722 0
	movq	-32(%rbp), %rdx	# dest, dest.20
	movq	-56(%rbp), %rax	# pfile, tmp164
	movq	80(%rax), %rax	# pfile_12(D)->u_buff, D.10027
	movq	16(%rax), %rax	# _73->cur, D.10028
	subq	%rax, %rdx	# D.10029, D.10029
	movq	%rdx, %rax	# D.10029, D.10029
	movl	%eax, %edx	# D.10029, D.10037
	movq	-64(%rbp), %rax	# token, tmp165
	movl	%edx, 8(%rax)	# D.10037, token_53(D)->val.str.len
	.loc 2 723 0
	movq	-56(%rbp), %rax	# pfile, tmp166
	movq	80(%rax), %rax	# pfile_12(D)->u_buff, D.10027
	movq	-32(%rbp), %rdx	# dest, tmp167
	addq	$1, %rdx	#, D.10028
	movq	%rdx, 16(%rax)	# D.10028, _78->cur
	.loc 2 724 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	parse_string, .-parse_string
	.type	save_comment, @function
save_comment:
.LFB24:
	.loc 2 732 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# token, token
	movq	%rdx, -40(%rbp)	# from, from
	.loc 2 736 0
	movq	-24(%rbp), %rax	# pfile, tmp77
	movq	(%rax), %rax	# pfile_2(D)->buffer, D.10040
	movq	(%rax), %rax	# _3->cur, D.10041
	movq	%rax, %rdx	# D.10041, D.10042
	movq	-40(%rbp), %rax	# from, from.21
	subq	%rax, %rdx	# from.21, D.10042
	movq	%rdx, %rax	# D.10042, D.10042
	addl	$1, %eax	#, tmp78
	movl	%eax, -12(%rbp)	# tmp78, len
	.loc 2 740 0
	movq	-24(%rbp), %rax	# pfile, tmp79
	movq	(%rax), %rax	# pfile_2(D)->buffer, D.10040
	movq	(%rax), %rax	# _11->cur, D.10041
	subq	$1, %rax	#, D.10041
	movzbl	(%rax), %eax	# *_13, D.10044
	movzbl	%al, %eax	# D.10044, D.10045
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10046
	movzwl	%ax, %eax	# D.10046, D.10045
	andl	$1024, %eax	#, D.10045
	testl	%eax, %eax	# D.10045
	je	.L126	#,
	.loc 2 741 0
	subl	$1, -12(%rbp)	#, len
.L126:
	.loc 2 742 0
	movl	-12(%rbp), %edx	# len, D.10047
	movq	-24(%rbp), %rax	# pfile, tmp81
	movq	%rdx, %rsi	# D.10047,
	movq	%rax, %rdi	# tmp81,
	call	_cpp_unaligned_alloc	#
	movq	%rax, -8(%rbp)	# tmp82, buffer
	.loc 2 744 0
	movq	-32(%rbp), %rax	# token, tmp83
	movb	$64, 6(%rax)	#, token_22(D)->type
	.loc 2 745 0
	movq	-32(%rbp), %rax	# token, tmp84
	movl	-12(%rbp), %edx	# len, tmp85
	movl	%edx, 8(%rax)	# tmp85, token_22(D)->val.str.len
	.loc 2 746 0
	movq	-32(%rbp), %rax	# token, tmp86
	movq	-8(%rbp), %rdx	# buffer, tmp87
	movq	%rdx, 16(%rax)	# tmp87, token_22(D)->val.str.text
	.loc 2 748 0
	movq	-8(%rbp), %rax	# buffer, tmp88
	movb	$47, (%rax)	#, *buffer_21
	.loc 2 749 0
	movl	-12(%rbp), %eax	# len, tmp89
	subl	$1, %eax	#, D.10043
	movl	%eax, %edx	# D.10043, D.10047
	movq	-8(%rbp), %rax	# buffer, tmp90
	leaq	1(%rax), %rcx	#, D.10048
	movq	-40(%rbp), %rax	# from, tmp91
	movq	%rax, %rsi	# tmp91,
	movq	%rcx, %rdi	# D.10048,
	call	memcpy	#
	.loc 2 750 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	save_comment, .-save_comment
	.globl	_cpp_init_tokenrun
	.type	_cpp_init_tokenrun, @function
_cpp_init_tokenrun:
.LFB25:
	.loc 2 757 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# run, run
	movl	%esi, -12(%rbp)	# count, count
	.loc 2 758 0
	movl	-12(%rbp), %edx	# count, D.10049
	movq	%rdx, %rax	# D.10049, tmp66
	addq	%rax, %rax	# tmp66
	addq	%rdx, %rax	# D.10049, tmp66
	salq	$3, %rax	#, tmp67
	movq	%rax, %rdi	# D.10049,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp68, D.10050
	movq	-8(%rbp), %rax	# run, tmp69
	movq	%rdx, 16(%rax)	# D.10050, run_5(D)->base
	.loc 2 759 0
	movq	-8(%rbp), %rax	# run, tmp70
	movq	16(%rax), %rcx	# run_5(D)->base, D.10051
	movl	-12(%rbp), %edx	# count, D.10049
	movq	%rdx, %rax	# D.10049, tmp71
	addq	%rax, %rax	# tmp71
	addq	%rdx, %rax	# D.10049, tmp71
	salq	$3, %rax	#, tmp72
	leaq	(%rcx,%rax), %rdx	#, D.10051
	movq	-8(%rbp), %rax	# run, tmp73
	movq	%rdx, 24(%rax)	# D.10051, run_5(D)->limit
	.loc 2 760 0
	movq	-8(%rbp), %rax	# run, tmp74
	movq	$0, (%rax)	#, run_5(D)->next
	.loc 2 761 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_cpp_init_tokenrun, .-_cpp_init_tokenrun
	.type	next_tokenrun, @function
next_tokenrun:
.LFB26:
	.loc 2 767 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# run, run
	.loc 2 768 0
	movq	-8(%rbp), %rax	# run, tmp65
	movq	(%rax), %rax	# run_1(D)->next, D.10052
	testq	%rax, %rax	# D.10052
	jne	.L129	#,
	.loc 2 770 0
	movl	$32, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp66, D.10053
	movq	-8(%rbp), %rax	# run, tmp67
	movq	%rdx, (%rax)	# D.10053, run_1(D)->next
	.loc 2 771 0
	movq	-8(%rbp), %rax	# run, tmp68
	movq	(%rax), %rax	# run_1(D)->next, D.10052
	movq	-8(%rbp), %rdx	# run, tmp69
	movq	%rdx, 8(%rax)	# tmp69, _4->prev
	.loc 2 772 0
	movq	-8(%rbp), %rax	# run, tmp70
	movq	(%rax), %rax	# run_1(D)->next, D.10052
	movl	$250, %esi	#,
	movq	%rax, %rdi	# D.10052,
	call	_cpp_init_tokenrun	#
.L129:
	.loc 2 775 0
	movq	-8(%rbp), %rax	# run, tmp71
	movq	(%rax), %rax	# run_1(D)->next, D.10052
	.loc 2 776 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	next_tokenrun, .-next_tokenrun
	.globl	_cpp_temp_token
	.type	_cpp_temp_token, @function
_cpp_temp_token:
.LFB27:
	.loc 2 785 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 788 0
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	192(%rax), %rax	# pfile_1(D)->cur_token, D.10054
	subq	$24, %rax	#, tmp75
	movq	%rax, -16(%rbp)	# tmp75, old
	.loc 2 789 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movq	192(%rax), %rdx	# pfile_1(D)->cur_token, D.10054
	movq	-24(%rbp), %rax	# pfile, tmp77
	movq	232(%rax), %rax	# pfile_1(D)->cur_run, D.10055
	movq	24(%rax), %rax	# _5->limit, D.10054
	cmpq	%rax, %rdx	# D.10054, D.10054
	jne	.L132	#,
	.loc 2 791 0
	movq	-24(%rbp), %rax	# pfile, tmp78
	movq	232(%rax), %rax	# pfile_1(D)->cur_run, D.10055
	movq	%rax, %rdi	# D.10055,
	call	next_tokenrun	#
	movq	-24(%rbp), %rdx	# pfile, tmp79
	movq	%rax, 232(%rdx)	# D.10055, pfile_1(D)->cur_run
	.loc 2 792 0
	movq	-24(%rbp), %rax	# pfile, tmp80
	movq	232(%rax), %rax	# pfile_1(D)->cur_run, D.10055
	movq	16(%rax), %rdx	# _9->base, D.10054
	movq	-24(%rbp), %rax	# pfile, tmp81
	movq	%rdx, 192(%rax)	# D.10054, pfile_1(D)->cur_token
.L132:
	.loc 2 795 0
	movq	-24(%rbp), %rax	# pfile, tmp82
	movq	192(%rax), %rax	# pfile_1(D)->cur_token, D.10054
	leaq	24(%rax), %rcx	#, D.10054
	movq	-24(%rbp), %rdx	# pfile, tmp83
	movq	%rcx, 192(%rdx)	# D.10054, pfile_1(D)->cur_token
	movq	%rax, -8(%rbp)	# result.22, result
	.loc 2 796 0
	movq	-16(%rbp), %rax	# old, tmp84
	movl	(%rax), %edx	# old_3->line, D.10056
	movq	-8(%rbp), %rax	# result, tmp85
	movl	%edx, (%rax)	# D.10056, result_14->line
	.loc 2 797 0
	movq	-16(%rbp), %rax	# old, tmp86
	movzwl	4(%rax), %edx	# old_3->col, D.10057
	movq	-8(%rbp), %rax	# result, tmp87
	movw	%dx, 4(%rax)	# D.10057, result_14->col
	.loc 2 798 0
	movq	-8(%rbp), %rax	# result, D.10054
	.loc 2 799 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	_cpp_temp_token, .-_cpp_temp_token
	.globl	_cpp_lex_token
	.type	_cpp_lex_token, @function
_cpp_lex_token:
.LFB28:
	.loc 2 807 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
.L143:
	.loc 2 812 0
	movq	-24(%rbp), %rax	# pfile, tmp91
	movq	192(%rax), %rdx	# pfile_2(D)->cur_token, D.10058
	movq	-24(%rbp), %rax	# pfile, tmp92
	movq	232(%rax), %rax	# pfile_2(D)->cur_run, D.10059
	movq	24(%rax), %rax	# _4->limit, D.10058
	cmpq	%rax, %rdx	# D.10058, D.10058
	jne	.L135	#,
	.loc 2 814 0
	movq	-24(%rbp), %rax	# pfile, tmp93
	movq	232(%rax), %rax	# pfile_2(D)->cur_run, D.10059
	movq	%rax, %rdi	# D.10059,
	call	next_tokenrun	#
	movq	-24(%rbp), %rdx	# pfile, tmp94
	movq	%rax, 232(%rdx)	# D.10059, pfile_2(D)->cur_run
	.loc 2 815 0
	movq	-24(%rbp), %rax	# pfile, tmp95
	movq	232(%rax), %rax	# pfile_2(D)->cur_run, D.10059
	movq	16(%rax), %rdx	# _8->base, D.10058
	movq	-24(%rbp), %rax	# pfile, tmp96
	movq	%rdx, 192(%rax)	# D.10058, pfile_2(D)->cur_token
.L135:
	.loc 2 818 0
	movq	-24(%rbp), %rax	# pfile, tmp97
	movl	240(%rax), %eax	# pfile_2(D)->lookaheads, D.10060
	testl	%eax, %eax	# D.10060
	je	.L136	#,
	.loc 2 820 0
	movq	-24(%rbp), %rax	# pfile, tmp98
	movl	240(%rax), %eax	# pfile_2(D)->lookaheads, D.10060
	leal	-1(%rax), %edx	#, D.10060
	movq	-24(%rbp), %rax	# pfile, tmp99
	movl	%edx, 240(%rax)	# D.10060, pfile_2(D)->lookaheads
	.loc 2 821 0
	movq	-24(%rbp), %rax	# pfile, tmp100
	movq	192(%rax), %rax	# pfile_2(D)->cur_token, D.10058
	leaq	24(%rax), %rcx	#, D.10058
	movq	-24(%rbp), %rdx	# pfile, tmp101
	movq	%rcx, 192(%rdx)	# D.10058, pfile_2(D)->cur_token
	movq	%rax, -8(%rbp)	# result.23, result
	jmp	.L137	#
.L136:
	.loc 2 824 0
	movq	-24(%rbp), %rax	# pfile, tmp102
	movq	%rax, %rdi	# tmp102,
	call	_cpp_lex_direct	#
	movq	%rax, -8(%rbp)	# tmp103, result
.L137:
	.loc 2 826 0
	movq	-8(%rbp), %rax	# result, tmp104
	movzbl	7(%rax), %eax	# result_1->flags, D.10061
	movzbl	%al, %eax	# D.10061, D.10062
	andl	$64, %eax	#, D.10062
	testl	%eax, %eax	# D.10062
	je	.L138	#,
	.loc 2 830 0
	movq	-8(%rbp), %rax	# result, tmp105
	movzbl	6(%rax), %eax	# result_1->type, D.10061
	cmpb	$40, %al	#, D.10061
	jne	.L139	#,
	.loc 2 831 0
	movq	-24(%rbp), %rax	# pfile, tmp106
	movzbl	16(%rax), %eax	# pfile_2(D)->state.parsing_args, D.10061
	testb	%al, %al	# D.10061
	jne	.L139	#,
	.loc 2 832 0
	movq	-8(%rbp), %rax	# result, tmp107
	movzbl	7(%rax), %eax	# result_1->flags, D.10061
	movzbl	%al, %eax	# D.10061, D.10062
	andl	$1, %eax	#, D.10062
	movl	%eax, %edx	# D.10062, D.10062
	movq	-24(%rbp), %rax	# pfile, tmp108
	movl	%edx, %esi	# D.10062,
	movq	%rax, %rdi	# tmp108,
	call	_cpp_handle_directive	#
	testl	%eax, %eax	# D.10062
	je	.L139	#,
	.loc 2 833 0
	jmp	.L140	#
.L139:
	.loc 2 834 0
	movq	-24(%rbp), %rax	# pfile, tmp109
	movq	584(%rax), %rax	# pfile_2(D)->cb.line_change, D.10063
	testq	%rax, %rax	# D.10063
	je	.L138	#,
	.loc 2 834 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pfile, tmp110
	movzbl	9(%rax), %eax	# pfile_2(D)->state.skipping, D.10061
	testb	%al, %al	# D.10061
	jne	.L138	#,
	.loc 2 835 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp111
	movq	584(%rax), %rax	# pfile_2(D)->cb.line_change, D.10063
	movq	-24(%rbp), %rdx	# pfile, tmp112
	movzbl	16(%rdx), %edx	# pfile_2(D)->state.parsing_args, D.10061
	movzbl	%dl, %edx	# D.10061, D.10062
	movq	-8(%rbp), %rsi	# result, tmp113
	movq	-24(%rbp), %rcx	# pfile, tmp114
	movq	%rcx, %rdi	# tmp114,
	call	*%rax	# D.10063
.L138:
	.loc 2 839 0
	movq	-24(%rbp), %rax	# pfile, tmp115
	movzbl	8(%rax), %eax	# pfile_2(D)->state.in_directive, D.10061
	testb	%al, %al	# D.10061
	je	.L141	#,
	.loc 2 840 0
	jmp	.L142	#
.L141:
	.loc 2 845 0
	movq	-24(%rbp), %rax	# pfile, tmp116
	movb	$0, 184(%rax)	#, pfile_2(D)->mi_valid
	.loc 2 847 0
	movq	-24(%rbp), %rax	# pfile, tmp117
	movzbl	9(%rax), %eax	# pfile_2(D)->state.skipping, D.10061
	testb	%al, %al	# D.10061
	je	.L142	#,
	.loc 2 847 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# result, tmp118
	movzbl	6(%rax), %eax	# result_1->type, D.10061
	cmpb	$67, %al	#, D.10061
	je	.L142	#,
.L140:
	.loc 2 849 0 is_stmt 1
	jmp	.L143	#
.L142:
	.loc 2 851 0
	movq	-8(%rbp), %rax	# result, D.10064
	.loc 2 852 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_cpp_lex_token, .-_cpp_lex_token
	.section	.rodata
.LC90:
	.string	"no newline at end of file"
.LC91:
	.string	"unterminated comment"
	.align 8
.LC92:
	.string	"C++ style comments are not allowed in ISO C89"
	.align 8
.LC93:
	.string	"(this will be reported only once per input file)"
.LC94:
	.string	"multi-line comment"
	.text
	.globl	_cpp_lex_direct
	.type	_cpp_lex_direct, @function
_cpp_lex_direct:
.LFB29:
	.loc 2 879 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# pfile, pfile
	.loc 2 883 0
	movq	-72(%rbp), %rax	# pfile, tmp190
	movq	192(%rax), %rax	# pfile_7(D)->cur_token, D.10065
	leaq	24(%rax), %rcx	#, D.10065
	movq	-72(%rbp), %rdx	# pfile, tmp191
	movq	%rcx, 192(%rdx)	# D.10065, pfile_7(D)->cur_token
	movq	%rax, -48(%rbp)	# result.24, result
.L146:
	.loc 2 886 0
	movq	-72(%rbp), %rax	# pfile, tmp192
	movq	(%rax), %rax	# pfile_7(D)->buffer, tmp193
	movq	%rax, -40(%rbp)	# tmp193, buffer
	.loc 2 887 0
	movq	-40(%rbp), %rax	# buffer, tmp194
	movzbl	68(%rax), %edx	# buffer_12->saved_flags, D.10066
	movq	-48(%rbp), %rax	# result, tmp195
	movb	%dl, 7(%rax)	# D.10066, result_3->flags
	.loc 2 888 0
	movq	-40(%rbp), %rax	# buffer, tmp196
	movb	$0, 68(%rax)	#, buffer_12->saved_flags
.L147:
	.loc 2 890 0
	movq	-72(%rbp), %rax	# pfile, tmp197
	movl	64(%rax), %edx	# pfile_7(D)->line, D.10067
	movq	-48(%rbp), %rax	# result, tmp198
	movl	%edx, (%rax)	# D.10067, result_3->line
.L148:
	.loc 2 893 0
	movq	-40(%rbp), %rax	# buffer, tmp199
	movq	(%rax), %rax	# buffer_12->cur, D.10068
	leaq	1(%rax), %rcx	#, D.10068
	movq	-40(%rbp), %rdx	# buffer, tmp200
	movq	%rcx, (%rdx)	# D.10068, buffer_12->cur
	movzbl	(%rax), %eax	# *_16, D.10066
	movzbl	%al, %eax	# D.10066, tmp201
	movl	%eax, -56(%rbp)	# tmp201, c
	.loc 2 894 0
	movq	-40(%rbp), %rax	# buffer, tmp202
	movq	(%rax), %rax	# buffer_12->cur, D.10068
	movq	%rax, %rdx	# D.10068, D.10069
	movq	-40(%rbp), %rax	# buffer, tmp203
	movq	24(%rax), %rax	# buffer_12->line_base, D.10068
	subq	%rax, %rdx	# D.10069, D.10069
	movq	%rdx, %rax	# D.10069, D.10069
	movl	%eax, %edx	# D.10069, D.10070
	movq	-40(%rbp), %rax	# buffer, tmp204
	movl	64(%rax), %eax	# buffer_12->col_adjust, D.10067
	addl	%eax, %edx	# D.10070, D.10070
	movq	-48(%rbp), %rax	# result, tmp205
	movw	%dx, 4(%rax)	# D.10070, result_3->col
.L149:
	.loc 2 897 0
	cmpl	$126, -56(%rbp)	#, c
	ja	.L150	#,
	movl	-56(%rbp), %eax	# c, tmp206
	movq	.L152(,%rax,8), %rax	#, tmp207
	jmp	*%rax	# tmp207
	.section	.rodata
	.align 8
	.align 4
.L152:
	.quad	.L151
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L151
	.quad	.L153
	.quad	.L151
	.quad	.L151
	.quad	.L153
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L150
	.quad	.L151
	.quad	.L154
	.quad	.L155
	.quad	.L156
	.quad	.L157
	.quad	.L158
	.quad	.L159
	.quad	.L155
	.quad	.L160
	.quad	.L161
	.quad	.L162
	.quad	.L163
	.quad	.L164
	.quad	.L165
	.quad	.L166
	.quad	.L167
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L169
	.quad	.L170
	.quad	.L171
	.quad	.L172
	.quad	.L173
	.quad	.L174
	.quad	.L175
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L177
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L178
	.quad	.L174
	.quad	.L179
	.quad	.L180
	.quad	.L176
	.quad	.L150
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L176
	.quad	.L181
	.quad	.L182
	.quad	.L183
	.quad	.L184
	.text
.L151:
	.loc 2 900 0
	movq	-48(%rbp), %rax	# result, tmp208
	movzbl	7(%rax), %eax	# result_3->flags, D.10066
	orl	$1, %eax	#, D.10066
	movl	%eax, %edx	# D.10066, D.10066
	movq	-48(%rbp), %rax	# result, tmp209
	movb	%dl, 7(%rax)	# D.10066, result_3->flags
	.loc 2 901 0
	movl	-56(%rbp), %edx	# c, tmp210
	movq	-72(%rbp), %rax	# pfile, tmp211
	movl	%edx, %esi	# tmp210,
	movq	%rax, %rdi	# tmp211,
	call	skip_whitespace	#
	testl	%eax, %eax	# D.10071
	je	.L185	#,
	.loc 2 902 0
	jmp	.L148	#
.L185:
	.loc 2 905 0
	movq	-40(%rbp), %rax	# buffer, tmp212
	movq	(%rax), %rax	# buffer_12->cur, D.10068
	leaq	-1(%rax), %rdx	#, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp213
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 906 0
	movq	-40(%rbp), %rax	# buffer, tmp214
	movb	$64, 68(%rax)	#, buffer_12->saved_flags
	.loc 2 907 0
	movq	-72(%rbp), %rax	# pfile, tmp215
	movzbl	16(%rax), %eax	# pfile_7(D)->state.parsing_args, D.10066
	testb	%al, %al	# D.10066
	jne	.L186	#,
	.loc 2 907 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp216
	movzbl	8(%rax), %eax	# pfile_7(D)->state.in_directive, D.10066
	testb	%al, %al	# D.10066
	jne	.L186	#,
	.loc 2 909 0 is_stmt 1
	movq	-40(%rbp), %rax	# buffer, tmp217
	movq	(%rax), %rdx	# buffer_12->cur, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp218
	movq	24(%rax), %rax	# buffer_12->line_base, D.10068
	cmpq	%rax, %rdx	# D.10068, D.10068
	je	.L187	#,
	.loc 2 913 0
	movq	-40(%rbp), %rax	# buffer, tmp219
	movzbl	81(%rax), %eax	# buffer_12->from_stage3, D.10066
	testb	%al, %al	# D.10066
	jne	.L188	#,
	.loc 2 914 0
	movq	-72(%rbp), %rax	# pfile, tmp220
	movl	$.LC90, %esi	#,
	movq	%rax, %rdi	# tmp220,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L188:
	.loc 2 915 0
	movq	-72(%rbp), %rax	# pfile, tmp221
	movq	%rax, %rdi	# tmp221,
	call	handle_newline	#
.L187:
	.loc 2 919 0
	movq	-40(%rbp), %rax	# buffer, tmp222
	movq	32(%rax), %rax	# buffer_12->prev, D.10072
	testq	%rax, %rax	# D.10072
	je	.L186	#,
.LBB11:
	.loc 2 921 0
	movq	-40(%rbp), %rax	# buffer, tmp223
	movzbl	83(%rax), %eax	# buffer_12->return_at_eof, D.10073
	movb	%al, -57(%rbp)	# D.10073, stop
	.loc 2 923 0
	movq	-72(%rbp), %rax	# pfile, tmp224
	movq	%rax, %rdi	# tmp224,
	call	_cpp_pop_buffer	#
	.loc 2 924 0
	cmpb	$0, -57(%rbp)	#, stop
	jne	.L186	#,
	.loc 2 925 0
	jmp	.L146	#
.L186:
.LBE11:
	.loc 2 928 0
	movq	-48(%rbp), %rax	# result, tmp225
	movb	$67, 6(%rax)	#, result_3->type
	.loc 2 929 0
	jmp	.L189	#
.L153:
	.loc 2 932 0
	movq	-72(%rbp), %rax	# pfile, tmp226
	movq	%rax, %rdi	# tmp226,
	call	handle_newline	#
	.loc 2 933 0
	movq	-40(%rbp), %rax	# buffer, tmp227
	movb	$64, 68(%rax)	#, buffer_12->saved_flags
	.loc 2 934 0
	movq	-72(%rbp), %rax	# pfile, tmp228
	movzbl	8(%rax), %eax	# pfile_7(D)->state.in_directive, D.10066
	testb	%al, %al	# D.10066
	jne	.L190	#,
	.loc 2 936 0
	movq	-72(%rbp), %rax	# pfile, tmp229
	movzbl	16(%rax), %eax	# pfile_7(D)->state.parsing_args, D.10066
	cmpb	$2, %al	#, D.10066
	jne	.L191	#,
	.loc 2 937 0
	movq	-40(%rbp), %rax	# buffer, tmp230
	movzbl	68(%rax), %eax	# buffer_12->saved_flags, D.10066
	orl	$1, %eax	#, D.10066
	movl	%eax, %edx	# D.10066, D.10066
	movq	-40(%rbp), %rax	# buffer, tmp231
	movb	%dl, 68(%rax)	# D.10066, buffer_12->saved_flags
.L191:
	.loc 2 938 0
	movq	-72(%rbp), %rax	# pfile, tmp232
	movl	244(%rax), %eax	# pfile_7(D)->keep_tokens, D.10067
	testl	%eax, %eax	# D.10067
	jne	.L192	#,
	.loc 2 940 0
	movq	-72(%rbp), %rax	# pfile, tmp233
	leaq	200(%rax), %rdx	#, D.10074
	movq	-72(%rbp), %rax	# pfile, tmp234
	movq	%rdx, 232(%rax)	# D.10074, pfile_7(D)->cur_run
	.loc 2 941 0
	movq	-72(%rbp), %rax	# pfile, tmp235
	movq	216(%rax), %rax	# pfile_7(D)->base_run.base, tmp236
	movq	%rax, -48(%rbp)	# tmp236, result
	.loc 2 942 0
	movq	-48(%rbp), %rax	# result, tmp237
	leaq	24(%rax), %rdx	#, D.10065
	movq	-72(%rbp), %rax	# pfile, tmp238
	movq	%rdx, 192(%rax)	# D.10065, pfile_7(D)->cur_token
	.loc 2 944 0
	jmp	.L146	#
.L192:
	jmp	.L146	#
.L190:
	.loc 2 946 0
	movq	-48(%rbp), %rax	# result, tmp239
	movb	$67, 6(%rax)	#, result_3->type
	.loc 2 947 0
	jmp	.L189	#
.L174:
.LBB12:
	.loc 2 954 0
	movq	-72(%rbp), %rax	# pfile, tmp240
	movl	64(%rax), %eax	# pfile_7(D)->line, tmp241
	movl	%eax, -52(%rbp)	# tmp241, line
	.loc 2 956 0
	movq	-72(%rbp), %rax	# pfile, tmp242
	movq	%rax, %rdi	# tmp242,
	call	skip_escaped_newlines	#
	movl	%eax, -56(%rbp)	# tmp243, c
	.loc 2 957 0
	movq	-72(%rbp), %rax	# pfile, tmp244
	movl	64(%rax), %eax	# pfile_7(D)->line, D.10067
	cmpl	-52(%rbp), %eax	# line, D.10067
	je	.L193	#,
	.loc 2 959 0
	movq	-40(%rbp), %rax	# buffer, tmp245
	movq	(%rax), %rax	# buffer_12->cur, D.10068
	leaq	-1(%rax), %rdx	#, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp246
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 962 0
	jmp	.L147	#
.L193:
.LBE12:
	.loc 2 967 0
	cmpl	$63, -56(%rbp)	#, c
	jne	.L194	#,
	.loc 2 968 0
	movq	-48(%rbp), %rax	# result, tmp247
	movb	$19, 6(%rax)	#, result_3->type
	.loc 2 973 0
	jmp	.L189	#
.L194:
	.loc 2 969 0
	cmpl	$92, -56(%rbp)	#, c
	jne	.L196	#,
	.loc 2 970 0
	jmp	.L150	#
.L196:
	.loc 2 972 0
	jmp	.L149	#
.L168:
	.loc 2 977 0
	movq	-48(%rbp), %rax	# result, tmp248
	movb	$57, 6(%rax)	#, result_3->type
	.loc 2 978 0
	movq	-48(%rbp), %rax	# result, tmp249
	leaq	8(%rax), %rsi	#, D.10075
	movl	-56(%rbp), %edx	# c, tmp250
	movq	-72(%rbp), %rax	# pfile, tmp251
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp251,
	call	parse_number	#
	.loc 2 979 0
	jmp	.L189	#
.L177:
.LBB13:
	.loc 2 984 0
	movq	-40(%rbp), %rax	# buffer, tmp252
	movq	(%rax), %rax	# buffer_12->cur, tmp253
	movq	%rax, -32(%rbp)	# tmp253, pos
	.loc 2 986 0
	movq	-72(%rbp), %rax	# pfile, tmp254
	movq	%rax, %rdi	# tmp254,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp255, c
	.loc 2 987 0
	cmpl	$39, -56(%rbp)	#, c
	je	.L197	#,
	.loc 2 987 0 is_stmt 0 discriminator 1
	cmpl	$34, -56(%rbp)	#, c
	jne	.L198	#,
.L197:
	.loc 2 989 0 is_stmt 1
	cmpl	$34, -56(%rbp)	#, c
	jne	.L199	#,
	.loc 2 989 0 is_stmt 0 discriminator 1
	movl	$62, %eax	#, iftmp.25
	jmp	.L200	#
.L199:
	.loc 2 989 0 discriminator 2
	movl	$59, %eax	#, iftmp.25
.L200:
	.loc 2 989 0 discriminator 3
	movq	-48(%rbp), %rdx	# result, tmp256
	movb	%al, 6(%rdx)	# iftmp.25, result_3->type
	.loc 2 990 0 is_stmt 1 discriminator 3
	movl	-56(%rbp), %edx	# c, tmp257
	movq	-48(%rbp), %rcx	# result, tmp258
	movq	-72(%rbp), %rax	# pfile, tmp259
	movq	%rcx, %rsi	# tmp258,
	movq	%rax, %rdi	# tmp259,
	call	parse_string	#
	.loc 2 991 0 discriminator 3
	jmp	.L189	#
.L198:
	.loc 2 993 0
	movq	-40(%rbp), %rax	# buffer, tmp260
	movq	-32(%rbp), %rdx	# pos, tmp261
	movq	%rdx, (%rax)	# tmp261, buffer_12->cur
.L176:
.LBE13:
	.loc 2 1009 0
	movq	-48(%rbp), %rax	# result, tmp262
	movb	$56, 6(%rax)	#, result_3->type
	.loc 2 1010 0
	movq	-72(%rbp), %rax	# pfile, tmp263
	movq	%rax, %rdi	# tmp263,
	call	parse_identifier	#
	movq	-48(%rbp), %rdx	# result, tmp264
	movq	%rax, 8(%rdx)	# D.10078, result_3->val.node
	.loc 2 1013 0
	movq	-48(%rbp), %rax	# result, tmp265
	movq	8(%rax), %rax	# result_3->val.node, D.10078
	movzbl	21(%rax), %eax	# _152->flags, D.10066
	movzbl	%al, %eax	# D.10066, D.10071
	andl	$1, %eax	#, D.10071
	testl	%eax, %eax	# D.10071
	je	.L201	#,
	.loc 2 1015 0
	movq	-48(%rbp), %rax	# result, tmp266
	movzbl	7(%rax), %eax	# result_3->flags, D.10066
	orl	$16, %eax	#, D.10066
	movl	%eax, %edx	# D.10066, D.10066
	movq	-48(%rbp), %rax	# result, tmp267
	movb	%dl, 7(%rax)	# D.10066, result_3->flags
	.loc 2 1016 0
	movq	-48(%rbp), %rax	# result, tmp268
	movq	8(%rax), %rax	# result_3->val.node, D.10078
	movl	24(%rax), %eax	# _158->value.operator, D.10079
	movl	%eax, %edx	# D.10079, D.10066
	movq	-48(%rbp), %rax	# result, tmp269
	movb	%dl, 6(%rax)	# D.10066, result_3->type
	.loc 2 1018 0
	jmp	.L189	#
.L201:
	jmp	.L189	#
.L155:
	.loc 2 1022 0
	cmpl	$34, -56(%rbp)	#, c
	jne	.L202	#,
	.loc 2 1022 0 is_stmt 0 discriminator 1
	movl	$61, %eax	#, iftmp.26
	jmp	.L203	#
.L202:
	.loc 2 1022 0 discriminator 2
	movl	$58, %eax	#, iftmp.26
.L203:
	.loc 2 1022 0 discriminator 3
	movq	-48(%rbp), %rdx	# result, tmp270
	movb	%al, 6(%rdx)	# iftmp.26, result_3->type
	.loc 2 1023 0 is_stmt 1 discriminator 3
	movl	-56(%rbp), %edx	# c, tmp271
	movq	-48(%rbp), %rcx	# result, tmp272
	movq	-72(%rbp), %rax	# pfile, tmp273
	movq	%rcx, %rsi	# tmp272,
	movq	%rax, %rdi	# tmp273,
	call	parse_string	#
	.loc 2 1024 0 discriminator 3
	jmp	.L189	#
.L167:
	.loc 2 1028 0
	movq	-40(%rbp), %rax	# buffer, tmp274
	movq	(%rax), %rax	# buffer_12->cur, tmp275
	movq	%rax, -24(%rbp)	# tmp275, comment_start
	.loc 2 1029 0
	movq	-72(%rbp), %rax	# pfile, tmp276
	movq	%rax, %rdi	# tmp276,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp277, c
	.loc 2 1031 0
	cmpl	$42, -56(%rbp)	#, c
	jne	.L204	#,
	.loc 2 1033 0
	movq	-72(%rbp), %rax	# pfile, tmp278
	movq	%rax, %rdi	# tmp278,
	call	skip_block_comment	#
	testl	%eax, %eax	# D.10071
	je	.L206	#,
	.loc 2 1034 0
	movq	-72(%rbp), %rax	# pfile, tmp279
	movl	$.LC91, %esi	#,
	movq	%rax, %rdi	# tmp279,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L206	#
.L204:
	.loc 2 1036 0
	cmpl	$47, -56(%rbp)	#, c
	jne	.L207	#,
	.loc 2 1036 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp280
	movzbl	743(%rax), %eax	# pfile_7(D)->opts.cplusplus_comments, D.10066
	testb	%al, %al	# D.10066
	jne	.L208	#,
	.loc 2 1037 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp281
	movq	56(%rax), %rax	# pfile_7(D)->map, D.10076
	testq	%rax, %rax	# D.10076
	je	.L207	#,
	.loc 2 1037 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp282
	movq	56(%rax), %rax	# pfile_7(D)->map, D.10076
	movzbl	21(%rax), %eax	# _67->sysp, D.10066
	testb	%al, %al	# D.10066
	je	.L207	#,
.L208:
	.loc 2 1041 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp283
	movl	736(%rax), %eax	# pfile_7(D)->opts.lang, D.10077
	testl	%eax, %eax	# D.10077
	jne	.L209	#,
	.loc 2 1041 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp284
	movzbl	770(%rax), %eax	# pfile_7(D)->opts.pedantic, D.10066
	testb	%al, %al	# D.10066
	je	.L209	#,
	.loc 2 1042 0 is_stmt 1
	movq	-40(%rbp), %rax	# buffer, tmp285
	movzbl	80(%rax), %eax	# buffer_12->warned_cplusplus_comments, D.10066
	testb	%al, %al	# D.10066
	jne	.L209	#,
	.loc 2 1044 0
	movq	-72(%rbp), %rax	# pfile, tmp286
	movl	$.LC92, %esi	#,
	movq	%rax, %rdi	# tmp286,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
	.loc 2 1046 0
	movq	-72(%rbp), %rax	# pfile, tmp287
	movl	$.LC93, %esi	#,
	movq	%rax, %rdi	# tmp287,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
	.loc 2 1048 0
	movq	-40(%rbp), %rax	# buffer, tmp288
	movb	$1, 80(%rax)	#, buffer_12->warned_cplusplus_comments
.L209:
	.loc 2 1051 0
	movq	-72(%rbp), %rax	# pfile, tmp289
	movq	%rax, %rdi	# tmp289,
	call	skip_line_comment	#
	testl	%eax, %eax	# D.10071
	je	.L210	#,
	.loc 2 1051 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp290
	movzbl	758(%rax), %eax	# pfile_7(D)->opts.warn_comments, D.10066
	testb	%al, %al	# D.10066
	je	.L210	#,
	.loc 2 1052 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp291
	movl	$.LC94, %esi	#,
	movq	%rax, %rdi	# tmp291,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 2 1051 0
	jmp	.L206	#
.L210:
	.loc 2 1051 0 is_stmt 0 discriminator 2
	jmp	.L206	#
.L207:
	.loc 2 1054 0 is_stmt 1
	cmpl	$61, -56(%rbp)	#, c
	jne	.L211	#,
	.loc 2 1056 0
	movq	-48(%rbp), %rax	# result, tmp292
	movb	$31, 6(%rax)	#, result_3->type
	.loc 2 1057 0
	jmp	.L189	#
.L211:
	.loc 2 1061 0
	movq	-40(%rbp), %rax	# buffer, tmp293
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp294
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1062 0
	movq	-48(%rbp), %rax	# result, tmp295
	movb	$7, 6(%rax)	#, result_3->type
	.loc 2 1063 0
	jmp	.L189	#
.L206:
	.loc 2 1066 0
	movq	-72(%rbp), %rax	# pfile, tmp296
	movzbl	11(%rax), %eax	# pfile_7(D)->state.save_comments, D.10066
	testb	%al, %al	# D.10066
	jne	.L212	#,
	.loc 2 1068 0
	movq	-48(%rbp), %rax	# result, tmp297
	movzbl	7(%rax), %eax	# result_3->flags, D.10066
	orl	$1, %eax	#, D.10066
	movl	%eax, %edx	# D.10066, D.10066
	movq	-48(%rbp), %rax	# result, tmp298
	movb	%dl, 7(%rax)	# D.10066, result_3->flags
	.loc 2 1069 0
	jmp	.L147	#
.L212:
	.loc 2 1073 0
	movq	-24(%rbp), %rdx	# comment_start, tmp299
	movq	-48(%rbp), %rcx	# result, tmp300
	movq	-72(%rbp), %rax	# pfile, tmp301
	movq	%rcx, %rsi	# tmp300,
	movq	%rax, %rdi	# tmp301,
	call	save_comment	#
	.loc 2 1074 0
	jmp	.L189	#
.L171:
	.loc 2 1077 0
	movq	-72(%rbp), %rax	# pfile, tmp302
	movzbl	10(%rax), %eax	# pfile_7(D)->state.angled_headers, D.10066
	testb	%al, %al	# D.10066
	je	.L213	#,
	.loc 2 1079 0
	movq	-48(%rbp), %rax	# result, tmp303
	movb	$63, 6(%rax)	#, result_3->type
	.loc 2 1080 0
	movq	-48(%rbp), %rcx	# result, tmp304
	movq	-72(%rbp), %rax	# pfile, tmp305
	movl	$62, %edx	#,
	movq	%rcx, %rsi	# tmp304,
	movq	%rax, %rdi	# tmp305,
	call	parse_string	#
	.loc 2 1081 0
	jmp	.L189	#
.L213:
	.loc 2 1084 0
	movq	-72(%rbp), %rax	# pfile, tmp306
	movq	%rax, %rdi	# tmp306,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp307, c
	.loc 2 1085 0
	cmpl	$61, -56(%rbp)	#, c
	jne	.L214	#,
	.loc 2 1086 0
	movq	-48(%rbp), %rax	# result, tmp308
	movb	$27, 6(%rax)	#, result_3->type
	jmp	.L215	#
.L214:
	.loc 2 1087 0
	cmpl	$60, -56(%rbp)	#, c
	jne	.L216	#,
	.loc 2 1088 0
	movq	-72(%rbp), %rax	# pfile, tmp309
	movq	%rax, %rdi	# tmp309,
	call	get_effective_char	#
	cmpl	$61, %eax	#, D.10071
	jne	.L217	#,
	.loc 2 1088 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result, tmp310
	movb	$37, 6(%rax)	#, result_3->type
	jmp	.L215	#
.L217:
	.loc 2 1088 0 discriminator 2
	movq	-40(%rbp), %rax	# buffer, tmp311
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp312
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	movq	-48(%rbp), %rax	# result, tmp313
	movb	$13, 6(%rax)	#, result_3->type
	.loc 2 1106 0 is_stmt 1 discriminator 2
	jmp	.L189	#
.L216:
	.loc 2 1089 0
	cmpl	$63, -56(%rbp)	#, c
	jne	.L219	#,
	.loc 2 1089 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp314
	movzbl	742(%rax), %eax	# pfile_7(D)->opts.cplusplus, D.10066
	testb	%al, %al	# D.10066
	je	.L219	#,
	.loc 2 1090 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp315
	movq	%rax, %rdi	# tmp315,
	call	get_effective_char	#
	cmpl	$61, %eax	#, D.10071
	jne	.L220	#,
	.loc 2 1090 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result, tmp316
	movb	$38, 6(%rax)	#, result_3->type
	jmp	.L215	#
.L220:
	.loc 2 1090 0 discriminator 2
	movq	-40(%rbp), %rax	# buffer, tmp317
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp318
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	movq	-48(%rbp), %rax	# result, tmp319
	movb	$14, 6(%rax)	#, result_3->type
	jmp	.L215	#
.L219:
	.loc 2 1091 0 is_stmt 1
	cmpl	$58, -56(%rbp)	#, c
	jne	.L222	#,
	.loc 2 1091 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp320
	movzbl	747(%rax), %eax	# pfile_7(D)->opts.digraphs, D.10066
	testb	%al, %al	# D.10066
	je	.L222	#,
	.loc 2 1093 0 is_stmt 1
	movq	-48(%rbp), %rax	# result, tmp321
	movb	$42, 6(%rax)	#, result_3->type
	.loc 2 1094 0
	movq	-48(%rbp), %rax	# result, tmp322
	movzbl	7(%rax), %eax	# result_3->flags, D.10066
	orl	$2, %eax	#, D.10066
	movl	%eax, %edx	# D.10066, D.10066
	movq	-48(%rbp), %rax	# result, tmp323
	movb	%dl, 7(%rax)	# D.10066, result_3->flags
	jmp	.L215	#
.L222:
	.loc 2 1096 0
	cmpl	$37, -56(%rbp)	#, c
	jne	.L223	#,
	.loc 2 1096 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp324
	movzbl	747(%rax), %eax	# pfile_7(D)->opts.digraphs, D.10066
	testb	%al, %al	# D.10066
	je	.L223	#,
	.loc 2 1098 0 is_stmt 1
	movq	-48(%rbp), %rax	# result, tmp325
	movb	$44, 6(%rax)	#, result_3->type
	.loc 2 1099 0
	movq	-48(%rbp), %rax	# result, tmp326
	movzbl	7(%rax), %eax	# result_3->flags, D.10066
	orl	$2, %eax	#, D.10066
	movl	%eax, %edx	# D.10066, D.10066
	movq	-48(%rbp), %rax	# result, tmp327
	movb	%dl, 7(%rax)	# D.10066, result_3->flags
	jmp	.L215	#
.L223:
	.loc 2 1103 0
	movq	-40(%rbp), %rax	# buffer, tmp328
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp329
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1104 0
	movq	-48(%rbp), %rax	# result, tmp330
	movb	$3, 6(%rax)	#, result_3->type
	.loc 2 1106 0
	jmp	.L189	#
.L215:
	jmp	.L189	#
.L173:
	.loc 2 1109 0
	movq	-72(%rbp), %rax	# pfile, tmp331
	movq	%rax, %rdi	# tmp331,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp332, c
	.loc 2 1110 0
	cmpl	$61, -56(%rbp)	#, c
	jne	.L224	#,
	.loc 2 1111 0
	movq	-48(%rbp), %rax	# result, tmp333
	movb	$26, 6(%rax)	#, result_3->type
	jmp	.L225	#
.L224:
	.loc 2 1112 0
	cmpl	$62, -56(%rbp)	#, c
	jne	.L226	#,
	.loc 2 1113 0
	movq	-72(%rbp), %rax	# pfile, tmp334
	movq	%rax, %rdi	# tmp334,
	call	get_effective_char	#
	cmpl	$61, %eax	#, D.10071
	jne	.L227	#,
	.loc 2 1113 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result, tmp335
	movb	$36, 6(%rax)	#, result_3->type
	jmp	.L225	#
.L227:
	.loc 2 1113 0 discriminator 2
	movq	-40(%rbp), %rax	# buffer, tmp336
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp337
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	movq	-48(%rbp), %rax	# result, tmp338
	movb	$12, 6(%rax)	#, result_3->type
	.loc 2 1121 0 is_stmt 1 discriminator 2
	jmp	.L189	#
.L226:
	.loc 2 1114 0
	cmpl	$63, -56(%rbp)	#, c
	jne	.L229	#,
	.loc 2 1114 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp339
	movzbl	742(%rax), %eax	# pfile_7(D)->opts.cplusplus, D.10066
	testb	%al, %al	# D.10066
	je	.L229	#,
	.loc 2 1115 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp340
	movq	%rax, %rdi	# tmp340,
	call	get_effective_char	#
	cmpl	$61, %eax	#, D.10071
	jne	.L230	#,
	.loc 2 1115 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result, tmp341
	movb	$39, 6(%rax)	#, result_3->type
	jmp	.L225	#
.L230:
	.loc 2 1115 0 discriminator 2
	movq	-40(%rbp), %rax	# buffer, tmp342
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp343
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	movq	-48(%rbp), %rax	# result, tmp344
	movb	$15, 6(%rax)	#, result_3->type
	jmp	.L225	#
.L229:
	.loc 2 1118 0 is_stmt 1
	movq	-40(%rbp), %rax	# buffer, tmp345
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp346
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1119 0
	movq	-48(%rbp), %rax	# result, tmp347
	movb	$2, 6(%rax)	#, result_3->type
	.loc 2 1121 0
	jmp	.L189	#
.L225:
	jmp	.L189	#
.L158:
	.loc 2 1124 0
	movq	-72(%rbp), %rax	# pfile, tmp348
	movq	%rax, %rdi	# tmp348,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp349, c
	.loc 2 1125 0
	cmpl	$61, -56(%rbp)	#, c
	jne	.L232	#,
	.loc 2 1126 0
	movq	-48(%rbp), %rax	# result, tmp350
	movb	$32, 6(%rax)	#, result_3->type
	jmp	.L233	#
.L232:
	.loc 2 1127 0
	movq	-72(%rbp), %rax	# pfile, tmp351
	movzbl	747(%rax), %eax	# pfile_7(D)->opts.digraphs, D.10066
	testb	%al, %al	# D.10066
	je	.L234	#,
	.loc 2 1127 0 is_stmt 0 discriminator 1
	cmpl	$58, -56(%rbp)	#, c
	jne	.L234	#,
	.loc 2 1129 0 is_stmt 1
	movq	-48(%rbp), %rax	# result, tmp352
	movzbl	7(%rax), %eax	# result_3->flags, D.10066
	orl	$2, %eax	#, D.10066
	movl	%eax, %edx	# D.10066, D.10066
	movq	-48(%rbp), %rax	# result, tmp353
	movb	%dl, 7(%rax)	# D.10066, result_3->flags
	.loc 2 1130 0
	movq	-48(%rbp), %rax	# result, tmp354
	movb	$40, 6(%rax)	#, result_3->type
	.loc 2 1131 0
	movq	-72(%rbp), %rax	# pfile, tmp355
	movq	%rax, %rdi	# tmp355,
	call	get_effective_char	#
	cmpl	$37, %eax	#, D.10071
	jne	.L235	#,
.LBB14:
	.loc 2 1133 0
	movq	-40(%rbp), %rax	# buffer, tmp356
	movq	(%rax), %rax	# buffer_12->cur, tmp357
	movq	%rax, -16(%rbp)	# tmp357, pos
	.loc 2 1135 0
	movq	-72(%rbp), %rax	# pfile, tmp358
	movq	%rax, %rdi	# tmp358,
	call	get_effective_char	#
	cmpl	$58, %eax	#, D.10071
	jne	.L236	#,
	.loc 2 1136 0
	movq	-48(%rbp), %rax	# result, tmp359
	movb	$41, 6(%rax)	#, result_3->type
	jmp	.L238	#
.L236:
	.loc 2 1138 0
	movq	-16(%rbp), %rax	# pos, tmp360
	leaq	-1(%rax), %rdx	#, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp361
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
.LBE14:
	jmp	.L238	#
.L235:
	.loc 2 1141 0
	movq	-40(%rbp), %rax	# buffer, tmp362
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp363
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1131 0
	jmp	.L233	#
.L238:
	jmp	.L233	#
.L234:
	.loc 2 1143 0
	movq	-72(%rbp), %rax	# pfile, tmp364
	movzbl	747(%rax), %eax	# pfile_7(D)->opts.digraphs, D.10066
	testb	%al, %al	# D.10066
	je	.L239	#,
	.loc 2 1143 0 is_stmt 0 discriminator 1
	cmpl	$62, -56(%rbp)	#, c
	jne	.L239	#,
	.loc 2 1145 0 is_stmt 1
	movq	-48(%rbp), %rax	# result, tmp365
	movzbl	7(%rax), %eax	# result_3->flags, D.10066
	orl	$2, %eax	#, D.10066
	movl	%eax, %edx	# D.10066, D.10066
	movq	-48(%rbp), %rax	# result, tmp366
	movb	%dl, 7(%rax)	# D.10066, result_3->flags
	.loc 2 1146 0
	movq	-48(%rbp), %rax	# result, tmp367
	movb	$45, 6(%rax)	#, result_3->type
	jmp	.L233	#
.L239:
	.loc 2 1150 0
	movq	-40(%rbp), %rax	# buffer, tmp368
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp369
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1151 0
	movq	-48(%rbp), %rax	# result, tmp370
	movb	$8, 6(%rax)	#, result_3->type
	.loc 2 1153 0
	jmp	.L189	#
.L233:
	jmp	.L189	#
.L166:
	.loc 2 1156 0
	movq	-48(%rbp), %rax	# result, tmp371
	movb	$51, 6(%rax)	#, result_3->type
	.loc 2 1157 0
	movq	-72(%rbp), %rax	# pfile, tmp372
	movq	%rax, %rdi	# tmp372,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp373, c
	.loc 2 1158 0
	cmpl	$46, -56(%rbp)	#, c
	jne	.L240	#,
.LBB15:
	.loc 2 1160 0
	movq	-40(%rbp), %rax	# buffer, tmp374
	movq	(%rax), %rax	# buffer_12->cur, tmp375
	movq	%rax, -8(%rbp)	# tmp375, pos
	.loc 2 1162 0
	movq	-72(%rbp), %rax	# pfile, tmp376
	movq	%rax, %rdi	# tmp376,
	call	get_effective_char	#
	cmpl	$46, %eax	#, D.10071
	jne	.L241	#,
	.loc 2 1163 0
	movq	-48(%rbp), %rax	# result, tmp377
	movb	$47, 6(%rax)	#, result_3->type
	jmp	.L243	#
.L241:
	.loc 2 1165 0
	movq	-8(%rbp), %rax	# pos, tmp378
	leaq	-1(%rax), %rdx	#, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp379
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
.LBE15:
	jmp	.L243	#
.L240:
	.loc 2 1168 0
	movl	-56(%rbp), %eax	# c, tmp380
	movzbl	%al, %eax	# tmp380, D.10071
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10070
	movzwl	%ax, %eax	# D.10070, D.10071
	andl	$4, %eax	#, D.10071
	testl	%eax, %eax	# D.10071
	je	.L244	#,
	.loc 2 1170 0
	movq	-48(%rbp), %rax	# result, tmp382
	movb	$57, 6(%rax)	#, result_3->type
	.loc 2 1171 0
	movq	-48(%rbp), %rax	# result, tmp383
	leaq	8(%rax), %rsi	#, D.10075
	movl	-56(%rbp), %edx	# c, tmp384
	movq	-72(%rbp), %rax	# pfile, tmp385
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp385,
	call	parse_number	#
	jmp	.L243	#
.L244:
	.loc 2 1173 0
	cmpl	$42, -56(%rbp)	#, c
	jne	.L245	#,
	.loc 2 1173 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp386
	movzbl	742(%rax), %eax	# pfile_7(D)->opts.cplusplus, D.10066
	testb	%al, %al	# D.10066
	je	.L245	#,
	.loc 2 1174 0 is_stmt 1
	movq	-48(%rbp), %rax	# result, tmp387
	movb	$54, 6(%rax)	#, result_3->type
	jmp	.L243	#
.L245:
	.loc 2 1176 0
	movq	-40(%rbp), %rax	# buffer, tmp388
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp389
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1177 0
	jmp	.L189	#
.L243:
	jmp	.L189	#
.L163:
	.loc 2 1180 0
	movq	-72(%rbp), %rax	# pfile, tmp390
	movq	%rax, %rdi	# tmp390,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp391, c
	.loc 2 1181 0
	cmpl	$43, -56(%rbp)	#, c
	jne	.L246	#,
	.loc 2 1182 0
	movq	-48(%rbp), %rax	# result, tmp392
	movb	$48, 6(%rax)	#, result_3->type
	jmp	.L247	#
.L246:
	.loc 2 1183 0
	cmpl	$61, -56(%rbp)	#, c
	jne	.L248	#,
	.loc 2 1184 0
	movq	-48(%rbp), %rax	# result, tmp393
	movb	$28, 6(%rax)	#, result_3->type
	jmp	.L247	#
.L248:
	.loc 2 1187 0
	movq	-40(%rbp), %rax	# buffer, tmp394
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp395
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1188 0
	movq	-48(%rbp), %rax	# result, tmp396
	movb	$4, 6(%rax)	#, result_3->type
	.loc 2 1190 0
	jmp	.L189	#
.L247:
	jmp	.L189	#
.L165:
	.loc 2 1193 0
	movq	-72(%rbp), %rax	# pfile, tmp397
	movq	%rax, %rdi	# tmp397,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp398, c
	.loc 2 1194 0
	cmpl	$62, -56(%rbp)	#, c
	jne	.L249	#,
	.loc 2 1196 0
	movq	-48(%rbp), %rax	# result, tmp399
	movb	$50, 6(%rax)	#, result_3->type
	.loc 2 1197 0
	movq	-72(%rbp), %rax	# pfile, tmp400
	movzbl	742(%rax), %eax	# pfile_7(D)->opts.cplusplus, D.10066
	testb	%al, %al	# D.10066
	je	.L252	#,
	.loc 2 1199 0
	movq	-72(%rbp), %rax	# pfile, tmp401
	movq	%rax, %rdi	# tmp401,
	call	get_effective_char	#
	cmpl	$42, %eax	#, D.10071
	jne	.L251	#,
	.loc 2 1200 0
	movq	-48(%rbp), %rax	# result, tmp402
	movb	$53, 6(%rax)	#, result_3->type
	jmp	.L252	#
.L251:
	.loc 2 1202 0
	movq	-40(%rbp), %rax	# buffer, tmp403
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp404
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1214 0
	jmp	.L189	#
.L249:
	.loc 2 1205 0
	cmpl	$45, -56(%rbp)	#, c
	jne	.L253	#,
	.loc 2 1206 0
	movq	-48(%rbp), %rax	# result, tmp405
	movb	$49, 6(%rax)	#, result_3->type
	jmp	.L252	#
.L253:
	.loc 2 1207 0
	cmpl	$61, -56(%rbp)	#, c
	jne	.L254	#,
	.loc 2 1208 0
	movq	-48(%rbp), %rax	# result, tmp406
	movb	$29, 6(%rax)	#, result_3->type
	jmp	.L252	#
.L254:
	.loc 2 1211 0
	movq	-40(%rbp), %rax	# buffer, tmp407
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp408
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1212 0
	movq	-48(%rbp), %rax	# result, tmp409
	movb	$5, 6(%rax)	#, result_3->type
	.loc 2 1214 0
	jmp	.L189	#
.L252:
	jmp	.L189	#
.L159:
	.loc 2 1217 0
	movq	-72(%rbp), %rax	# pfile, tmp410
	movq	%rax, %rdi	# tmp410,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp411, c
	.loc 2 1218 0
	cmpl	$38, -56(%rbp)	#, c
	jne	.L255	#,
	.loc 2 1219 0
	movq	-48(%rbp), %rax	# result, tmp412
	movb	$17, 6(%rax)	#, result_3->type
	jmp	.L256	#
.L255:
	.loc 2 1220 0
	cmpl	$61, -56(%rbp)	#, c
	jne	.L257	#,
	.loc 2 1221 0
	movq	-48(%rbp), %rax	# result, tmp413
	movb	$33, 6(%rax)	#, result_3->type
	jmp	.L256	#
.L257:
	.loc 2 1224 0
	movq	-40(%rbp), %rax	# buffer, tmp414
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp415
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1225 0
	movq	-48(%rbp), %rax	# result, tmp416
	movb	$9, 6(%rax)	#, result_3->type
	.loc 2 1227 0
	jmp	.L189	#
.L256:
	jmp	.L189	#
.L182:
	.loc 2 1230 0
	movq	-72(%rbp), %rax	# pfile, tmp417
	movq	%rax, %rdi	# tmp417,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp418, c
	.loc 2 1231 0
	cmpl	$124, -56(%rbp)	#, c
	jne	.L258	#,
	.loc 2 1232 0
	movq	-48(%rbp), %rax	# result, tmp419
	movb	$18, 6(%rax)	#, result_3->type
	jmp	.L259	#
.L258:
	.loc 2 1233 0
	cmpl	$61, -56(%rbp)	#, c
	jne	.L260	#,
	.loc 2 1234 0
	movq	-48(%rbp), %rax	# result, tmp420
	movb	$34, 6(%rax)	#, result_3->type
	jmp	.L259	#
.L260:
	.loc 2 1237 0
	movq	-40(%rbp), %rax	# buffer, tmp421
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp422
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1238 0
	movq	-48(%rbp), %rax	# result, tmp423
	movb	$10, 6(%rax)	#, result_3->type
	.loc 2 1240 0
	jmp	.L189	#
.L259:
	jmp	.L189	#
.L169:
	.loc 2 1243 0
	movq	-72(%rbp), %rax	# pfile, tmp424
	movq	%rax, %rdi	# tmp424,
	call	get_effective_char	#
	movl	%eax, -56(%rbp)	# tmp425, c
	.loc 2 1244 0
	cmpl	$58, -56(%rbp)	#, c
	jne	.L261	#,
	.loc 2 1244 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp426
	movzbl	742(%rax), %eax	# pfile_7(D)->opts.cplusplus, D.10066
	testb	%al, %al	# D.10066
	je	.L261	#,
	.loc 2 1245 0 is_stmt 1
	movq	-48(%rbp), %rax	# result, tmp427
	movb	$52, 6(%rax)	#, result_3->type
	jmp	.L262	#
.L261:
	.loc 2 1246 0
	cmpl	$62, -56(%rbp)	#, c
	jne	.L263	#,
	.loc 2 1246 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp428
	movzbl	747(%rax), %eax	# pfile_7(D)->opts.digraphs, D.10066
	testb	%al, %al	# D.10066
	je	.L263	#,
	.loc 2 1248 0 is_stmt 1
	movq	-48(%rbp), %rax	# result, tmp429
	movzbl	7(%rax), %eax	# result_3->flags, D.10066
	orl	$2, %eax	#, D.10066
	movl	%eax, %edx	# D.10066, D.10066
	movq	-48(%rbp), %rax	# result, tmp430
	movb	%dl, 7(%rax)	# D.10066, result_3->flags
	.loc 2 1249 0
	movq	-48(%rbp), %rax	# result, tmp431
	movb	$43, 6(%rax)	#, result_3->type
	jmp	.L262	#
.L263:
	.loc 2 1253 0
	movq	-40(%rbp), %rax	# buffer, tmp432
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp433
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	.loc 2 1254 0
	movq	-48(%rbp), %rax	# result, tmp434
	movb	$20, 6(%rax)	#, result_3->type
	.loc 2 1256 0
	jmp	.L189	#
.L262:
	jmp	.L189	#
.L162:
	.loc 2 1258 0
	movq	-72(%rbp), %rax	# pfile, tmp435
	movq	%rax, %rdi	# tmp435,
	call	get_effective_char	#
	cmpl	$61, %eax	#, D.10071
	jne	.L264	#,
	.loc 2 1258 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result, tmp436
	movb	$30, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L264:
	.loc 2 1258 0 discriminator 2
	movq	-40(%rbp), %rax	# buffer, tmp437
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp438
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	movq	-48(%rbp), %rax	# result, tmp439
	movb	$6, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L172:
	.loc 2 1259 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp440
	movq	%rax, %rdi	# tmp440,
	call	get_effective_char	#
	cmpl	$61, %eax	#, D.10071
	jne	.L266	#,
	.loc 2 1259 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result, tmp441
	movb	$24, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L266:
	.loc 2 1259 0 discriminator 2
	movq	-40(%rbp), %rax	# buffer, tmp442
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp443
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	movq	-48(%rbp), %rax	# result, tmp444
	movb	$0, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L154:
	.loc 2 1260 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp445
	movq	%rax, %rdi	# tmp445,
	call	get_effective_char	#
	cmpl	$61, %eax	#, D.10071
	jne	.L268	#,
	.loc 2 1260 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result, tmp446
	movb	$25, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L268:
	.loc 2 1260 0 discriminator 2
	movq	-40(%rbp), %rax	# buffer, tmp447
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp448
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	movq	-48(%rbp), %rax	# result, tmp449
	movb	$1, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L180:
	.loc 2 1261 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp450
	movq	%rax, %rdi	# tmp450,
	call	get_effective_char	#
	cmpl	$61, %eax	#, D.10071
	jne	.L270	#,
	.loc 2 1261 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result, tmp451
	movb	$35, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L270:
	.loc 2 1261 0 discriminator 2
	movq	-40(%rbp), %rax	# buffer, tmp452
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp453
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	movq	-48(%rbp), %rax	# result, tmp454
	movb	$11, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L156:
	.loc 2 1262 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp455
	movq	%rax, %rdi	# tmp455,
	call	get_effective_char	#
	cmpl	$35, %eax	#, D.10071
	jne	.L272	#,
	.loc 2 1262 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# result, tmp456
	movb	$41, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L272:
	.loc 2 1262 0 discriminator 2
	movq	-40(%rbp), %rax	# buffer, tmp457
	movq	8(%rax), %rdx	# buffer_12->backup_to, D.10068
	movq	-40(%rbp), %rax	# buffer, tmp458
	movq	%rdx, (%rax)	# D.10068, buffer_12->cur
	movq	-48(%rbp), %rax	# result, tmp459
	movb	$40, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L184:
	.loc 2 1264 0 is_stmt 1
	movq	-48(%rbp), %rax	# result, tmp460
	movb	$16, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L164:
	.loc 2 1265 0
	movq	-48(%rbp), %rax	# result, tmp461
	movb	$21, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L160:
	.loc 2 1266 0
	movq	-48(%rbp), %rax	# result, tmp462
	movb	$22, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L161:
	.loc 2 1267 0
	movq	-48(%rbp), %rax	# result, tmp463
	movb	$23, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L178:
	.loc 2 1268 0
	movq	-48(%rbp), %rax	# result, tmp464
	movb	$42, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L179:
	.loc 2 1269 0
	movq	-48(%rbp), %rax	# result, tmp465
	movb	$43, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L181:
	.loc 2 1270 0
	movq	-48(%rbp), %rax	# result, tmp466
	movb	$44, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L183:
	.loc 2 1271 0
	movq	-48(%rbp), %rax	# result, tmp467
	movb	$45, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L170:
	.loc 2 1272 0
	movq	-48(%rbp), %rax	# result, tmp468
	movb	$46, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L175:
	.loc 2 1275 0
	movq	-48(%rbp), %rax	# result, tmp469
	movb	$55, 6(%rax)	#, result_3->type
	jmp	.L189	#
.L157:
	.loc 2 1278 0
	movq	-72(%rbp), %rax	# pfile, tmp470
	movzbl	767(%rax), %eax	# pfile_7(D)->opts.dollars_in_ident, D.10066
	testb	%al, %al	# D.10066
	je	.L150	#,
	.loc 2 1279 0
	jmp	.L176	#
.L150:
	.loc 2 1284 0
	movq	-48(%rbp), %rax	# result, tmp471
	movb	$60, 6(%rax)	#, result_3->type
	.loc 2 1285 0
	movl	-56(%rbp), %eax	# c, tmp472
	movl	%eax, %edx	# tmp472, D.10066
	movq	-48(%rbp), %rax	# result, tmp473
	movb	%dl, 8(%rax)	# D.10066, result_3->val.c
	.loc 2 1286 0
	nop
.L189:
	.loc 2 1289 0
	movq	-48(%rbp), %rax	# result, D.10065
	.loc 2 1290 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	_cpp_lex_direct, .-_cpp_lex_direct
	.globl	cpp_token_len
	.type	cpp_token_len, @function
cpp_token_len:
.LFB30:
	.loc 2 1297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# token, token
	.loc 2 1300 0
	movq	-24(%rbp), %rax	# token, tmp65
	movzbl	6(%rax), %eax	# token_2(D)->type, D.10085
	movzbl	%al, %eax	# D.10085, D.10086
	cltq
	salq	$4, %rax	#, tmp67
	addq	$token_spellings, %rax	#, tmp68
	movl	(%rax), %eax	# token_spellings[_4].category, D.10087
	cmpl	$2, %eax	#, D.10087
	je	.L277	#,
	cmpl	$2, %eax	#, D.10087
	jb	.L276	#,
	cmpl	$4, %eax	#, D.10087
	jbe	.L281	#,
.L276:
	.loc 2 1302 0
	movl	$0, -4(%rbp)	#, len
	jmp	.L279	#
.L281:
	.loc 2 1304 0
	movq	-24(%rbp), %rax	# token, tmp69
	movl	8(%rax), %eax	# token_2(D)->val.str.len, tmp70
	movl	%eax, -4(%rbp)	# tmp70, len
	jmp	.L279	#
.L277:
	.loc 2 1305 0
	movq	-24(%rbp), %rax	# token, tmp71
	movq	8(%rax), %rax	# token_2(D)->val.node, D.10088
	movl	(%rax), %eax	# _8->ident.len, tmp72
	movl	%eax, -4(%rbp)	# tmp72, len
	nop
.L279:
	.loc 2 1308 0
	movl	-4(%rbp), %eax	# len, tmp73
	addl	$5, %eax	#, D.10089
	.loc 2 1309 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	cpp_token_len, .-cpp_token_len
	.section	.rodata
.LC95:
	.string	"unknown string token %s\n"
.LC96:
	.string	"unspellable token %s"
	.text
	.globl	cpp_spell_token
	.type	cpp_spell_token, @function
cpp_spell_token:
.LFB31:
	.loc 2 1320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# token, token
	movq	%rdx, -56(%rbp)	# buffer, buffer
	.loc 2 1321 0
	movq	-48(%rbp), %rax	# token, tmp111
	movzbl	6(%rax), %eax	# token_10(D)->type, D.10091
	movzbl	%al, %eax	# D.10091, D.10092
	cltq
	salq	$4, %rax	#, tmp113
	addq	$token_spellings, %rax	#, tmp114
	movl	(%rax), %eax	# token_spellings[_12].category, D.10093
	cmpl	$5, %eax	#, D.10093
	ja	.L283	#,
	movl	%eax, %eax	# D.10093, tmp115
	movq	.L285(,%rax,8), %rax	#, tmp116
	jmp	*%rax	# tmp116
	.section	.rodata
	.align 8
	.align 4
.L285:
	.quad	.L284
	.quad	.L286
	.quad	.L287
	.quad	.L288
	.quad	.L289
	.quad	.L290
	.text
.L284:
.LBB16:
	.loc 2 1328 0
	movq	-48(%rbp), %rax	# token, tmp117
	movzbl	7(%rax), %eax	# token_10(D)->flags, D.10091
	movzbl	%al, %eax	# D.10091, D.10092
	andl	$2, %eax	#, D.10092
	testl	%eax, %eax	# D.10092
	je	.L291	#,
	.loc 2 1330 0
	movq	-48(%rbp), %rax	# token, tmp118
	movzbl	6(%rax), %eax	# token_10(D)->type, D.10091
	movzbl	%al, %eax	# D.10091, D.10092
	subl	$40, %eax	#, D.10092
	cltq
	movq	digraph_spellings(,%rax,8), %rax	# digraph_spellings, tmp120
	movq	%rax, -8(%rbp)	# tmp120, spelling
	.loc 2 1336 0
	jmp	.L294	#
.L291:
	.loc 2 1331 0
	movq	-48(%rbp), %rax	# token, tmp121
	movzbl	7(%rax), %eax	# token_10(D)->flags, D.10091
	movzbl	%al, %eax	# D.10091, D.10092
	andl	$16, %eax	#, D.10092
	testl	%eax, %eax	# D.10092
	je	.L293	#,
	.loc 2 1332 0
	jmp	.L287	#
.L293:
	.loc 2 1334 0
	movq	-48(%rbp), %rax	# token, tmp122
	movzbl	6(%rax), %eax	# token_10(D)->type, D.10091
	movzbl	%al, %eax	# D.10091, D.10092
	cltq
	salq	$4, %rax	#, tmp124
	addq	$token_spellings, %rax	#, tmp125
	movq	8(%rax), %rax	# token_spellings[_26].name, tmp126
	movq	%rax, -8(%rbp)	# tmp126, spelling
	.loc 2 1336 0
	jmp	.L294	#
.L295:
	.loc 2 1337 0
	movq	-56(%rbp), %rax	# buffer, buffer.27
	leaq	1(%rax), %rdx	#, tmp127
	movq	%rdx, -56(%rbp)	# tmp127, buffer
	movzbl	-21(%rbp), %edx	# c, tmp128
	movb	%dl, (%rax)	# tmp128, *buffer.27_31
.L294:
	.loc 2 1336 0 discriminator 1
	movq	-8(%rbp), %rax	# spelling, spelling.28
	leaq	1(%rax), %rdx	#, tmp129
	movq	%rdx, -8(%rbp)	# tmp129, spelling
	movzbl	(%rax), %eax	# *spelling.28_28, tmp130
	movb	%al, -21(%rbp)	# tmp130, c
	cmpb	$0, -21(%rbp)	#, c
	jne	.L295	#,
.LBE16:
	.loc 2 1339 0
	jmp	.L283	#
.L286:
	.loc 2 1342 0
	movq	-56(%rbp), %rax	# buffer, buffer.29
	leaq	1(%rax), %rdx	#, tmp131
	movq	%rdx, -56(%rbp)	# tmp131, buffer
	movq	-48(%rbp), %rdx	# token, tmp132
	movzbl	8(%rdx), %edx	# token_10(D)->val.c, D.10091
	movb	%dl, (%rax)	# D.10091, *buffer.29_33
	.loc 2 1343 0
	jmp	.L283	#
.L287:
	.loc 2 1347 0
	movq	-48(%rbp), %rax	# token, tmp133
	movq	8(%rax), %rax	# token_10(D)->val.node, D.10094
	movl	(%rax), %eax	# _36->ident.len, D.10095
	movl	%eax, %edx	# D.10095, D.10096
	movq	-48(%rbp), %rax	# token, tmp134
	movq	8(%rax), %rax	# token_10(D)->val.node, D.10094
	movq	8(%rax), %rcx	# _39->ident.str, D.10097
	movq	-56(%rbp), %rax	# buffer, tmp135
	movq	%rcx, %rsi	# D.10097,
	movq	%rax, %rdi	# tmp135,
	call	memcpy	#
	.loc 2 1348 0
	movq	-48(%rbp), %rax	# token, tmp136
	movq	8(%rax), %rax	# token_10(D)->val.node, D.10094
	movl	(%rax), %eax	# _41->ident.len, D.10095
	movl	%eax, %eax	# D.10095, D.10098
	addq	%rax, -56(%rbp)	# D.10098, buffer
	.loc 2 1349 0
	jmp	.L283	#
.L288:
	.loc 2 1352 0
	movq	-48(%rbp), %rax	# token, tmp137
	movl	8(%rax), %eax	# token_10(D)->val.str.len, D.10095
	movl	%eax, %edx	# D.10095, D.10096
	movq	-48(%rbp), %rax	# token, tmp138
	movq	16(%rax), %rcx	# token_10(D)->val.str.text, D.10097
	movq	-56(%rbp), %rax	# buffer, tmp139
	movq	%rcx, %rsi	# D.10097,
	movq	%rax, %rdi	# tmp139,
	call	memcpy	#
	.loc 2 1353 0
	movq	-48(%rbp), %rax	# token, tmp140
	movl	8(%rax), %eax	# token_10(D)->val.str.len, D.10095
	movl	%eax, %eax	# D.10095, D.10098
	addq	%rax, -56(%rbp)	# D.10098, buffer
	.loc 2 1354 0
	jmp	.L283	#
.L289:
.LBB17:
	.loc 2 1359 0
	movq	-48(%rbp), %rax	# token, tmp141
	movzbl	6(%rax), %eax	# token_10(D)->type, D.10091
	movzbl	%al, %eax	# D.10091, D.10092
	subl	$58, %eax	#, tmp142
	cmpl	$5, %eax	#, tmp142
	ja	.L296	#,
	movl	%eax, %eax	# tmp142, tmp143
	movq	.L298(,%rax,8), %rax	#, tmp144
	jmp	*%rax	# tmp144
	.section	.rodata
	.align 8
	.align 4
.L298:
	.quad	.L297
	.quad	.L299
	.quad	.L296
	.quad	.L300
	.quad	.L301
	.quad	.L302
	.text
.L300:
	.loc 2 1361 0
	movl	$34, -20(%rbp)	#, left
	movl	$34, -16(%rbp)	#, right
	movl	$0, -12(%rbp)	#, tag
	jmp	.L303	#
.L301:
	.loc 2 1362 0
	movl	$34, -20(%rbp)	#, left
	movl	$34, -16(%rbp)	#, right
	movl	$76, -12(%rbp)	#, tag
	jmp	.L303	#
.L297:
	.loc 2 1363 0
	movl	$39, -20(%rbp)	#, left
	movl	$39, -16(%rbp)	#, right
	movl	$0, -12(%rbp)	#, tag
	jmp	.L303	#
.L299:
	.loc 2 1364 0
	movl	$39, -20(%rbp)	#, left
	movl	$39, -16(%rbp)	#, right
	movl	$76, -12(%rbp)	#, tag
	jmp	.L303	#
.L302:
	.loc 2 1365 0
	movl	$60, -20(%rbp)	#, left
	movl	$62, -16(%rbp)	#, right
	movl	$0, -12(%rbp)	#, tag
	jmp	.L303	#
.L296:
	.loc 2 1367 0
	movq	-48(%rbp), %rax	# token, tmp145
	movzbl	6(%rax), %eax	# token_10(D)->type, D.10091
	movzbl	%al, %eax	# D.10091, D.10092
	cltq
	salq	$4, %rax	#, tmp147
	addq	$token_spellings, %rax	#, tmp148
	movq	8(%rax), %rdx	# token_spellings[_69].name, D.10097
	movq	-40(%rbp), %rax	# pfile, tmp149
	movl	$.LC95, %esi	#,
	movq	%rax, %rdi	# tmp149,
	movl	$0, %eax	#,
	call	cpp_ice	#
	.loc 2 1368 0
	movq	-56(%rbp), %rax	# buffer, D.10090
	jmp	.L304	#
.L303:
	.loc 2 1370 0
	cmpl	$0, -12(%rbp)	#, tag
	je	.L305	#,
	.loc 2 1370 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# buffer, buffer.30
	leaq	1(%rax), %rdx	#, tmp150
	movq	%rdx, -56(%rbp)	# tmp150, buffer
	movl	-12(%rbp), %edx	# tag, tmp151
	movb	%dl, (%rax)	# D.10091, *buffer.30_73
.L305:
	.loc 2 1371 0 is_stmt 1
	movq	-56(%rbp), %rax	# buffer, buffer.31
	leaq	1(%rax), %rdx	#, tmp152
	movq	%rdx, -56(%rbp)	# tmp152, buffer
	movl	-20(%rbp), %edx	# left, tmp153
	movb	%dl, (%rax)	# D.10091, *buffer.31_76
	.loc 2 1372 0
	movq	-48(%rbp), %rax	# token, tmp154
	movl	8(%rax), %eax	# token_10(D)->val.str.len, D.10095
	movl	%eax, %edx	# D.10095, D.10096
	movq	-48(%rbp), %rax	# token, tmp155
	movq	16(%rax), %rcx	# token_10(D)->val.str.text, D.10097
	movq	-56(%rbp), %rax	# buffer, tmp156
	movq	%rcx, %rsi	# D.10097,
	movq	%rax, %rdi	# tmp156,
	call	memcpy	#
	.loc 2 1373 0
	movq	-48(%rbp), %rax	# token, tmp157
	movl	8(%rax), %eax	# token_10(D)->val.str.len, D.10095
	movl	%eax, %eax	# D.10095, D.10098
	addq	%rax, -56(%rbp)	# D.10098, buffer
	.loc 2 1374 0
	movq	-56(%rbp), %rax	# buffer, buffer.32
	leaq	1(%rax), %rdx	#, tmp158
	movq	%rdx, -56(%rbp)	# tmp158, buffer
	movl	-16(%rbp), %edx	# right, tmp159
	movb	%dl, (%rax)	# D.10091, *buffer.32_85
.LBE17:
	.loc 2 1376 0
	jmp	.L283	#
.L290:
	.loc 2 1379 0
	movq	-48(%rbp), %rax	# token, tmp160
	movzbl	6(%rax), %eax	# token_10(D)->type, D.10091
	movzbl	%al, %eax	# D.10091, D.10092
	cltq
	salq	$4, %rax	#, tmp162
	addq	$token_spellings, %rax	#, tmp163
	movq	8(%rax), %rdx	# token_spellings[_89].name, D.10097
	movq	-40(%rbp), %rax	# pfile, tmp164
	movl	$.LC96, %esi	#,
	movq	%rax, %rdi	# tmp164,
	movl	$0, %eax	#,
	call	cpp_ice	#
	.loc 2 1380 0
	nop
.L283:
	.loc 2 1383 0
	movq	-56(%rbp), %rax	# buffer, D.10090
.L304:
	.loc 2 1384 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	cpp_spell_token, .-cpp_spell_token
	.globl	cpp_token_as_text
	.type	cpp_token_as_text, @function
cpp_token_as_text:
.LFB32:
	.loc 2 1392 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# token, token
	.loc 2 1393 0
	movq	-48(%rbp), %rax	# token, tmp62
	movq	%rax, %rdi	# tmp62,
	call	cpp_token_len	#
	movl	%eax, -20(%rbp)	# tmp63, len
	.loc 2 1394 0
	movl	-20(%rbp), %edx	# len, D.10101
	movq	-40(%rbp), %rax	# pfile, tmp64
	movq	%rdx, %rsi	# D.10101,
	movq	%rax, %rdi	# tmp64,
	call	_cpp_unaligned_alloc	#
	movq	%rax, -16(%rbp)	# tmp65, start
	.loc 2 1396 0
	movq	-16(%rbp), %rdx	# start, tmp66
	movq	-48(%rbp), %rcx	# token, tmp67
	movq	-40(%rbp), %rax	# pfile, tmp68
	movq	%rcx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	cpp_spell_token	#
	movq	%rax, -8(%rbp)	# tmp69, end
	.loc 2 1397 0
	movq	-8(%rbp), %rax	# end, tmp70
	movb	$0, (%rax)	#, *end_6
	.loc 2 1399 0
	movq	-16(%rbp), %rax	# start, D.10102
	.loc 2 1400 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	cpp_token_as_text, .-cpp_token_as_text
	.globl	cpp_type2name
	.type	cpp_type2name, @function
cpp_type2name:
.LFB33:
	.loc 2 1407 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# type, type
	.loc 2 1408 0
	movl	-4(%rbp), %eax	# type, tmp61
	salq	$4, %rax	#, tmp62
	addq	$token_spellings, %rax	#, tmp63
	movq	8(%rax), %rax	# token_spellings[type_1(D)].name, D.10103
	.loc 2 1409 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	cpp_type2name, .-cpp_type2name
	.section	.rodata
.LC97:
	.string	"impossible STRING token %s\n"
	.text
	.globl	cpp_output_token
	.type	cpp_output_token, @function
cpp_output_token:
.LFB34:
	.loc 2 1418 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# token, token
	movq	%rsi, -48(%rbp)	# fp, fp
	.loc 2 1419 0
	movq	-40(%rbp), %rax	# token, tmp94
	movzbl	6(%rax), %eax	# token_7(D)->type, D.10104
	movzbl	%al, %eax	# D.10104, D.10105
	cltq
	salq	$4, %rax	#, tmp96
	addq	$token_spellings, %rax	#, tmp97
	movl	(%rax), %eax	# token_spellings[_9].category, D.10106
	cmpl	$5, %eax	#, D.10106
	ja	.L310	#,
	movl	%eax, %eax	# D.10106, tmp98
	movq	.L313(,%rax,8), %rax	#, tmp99
	jmp	*%rax	# tmp99
	.section	.rodata
	.align 8
	.align 4
.L313:
	.quad	.L312
	.quad	.L314
	.quad	.L315
	.quad	.L316
	.quad	.L317
	.quad	.L332
	.text
.L312:
.LBB18:
	.loc 2 1426 0
	movq	-40(%rbp), %rax	# token, tmp100
	movzbl	7(%rax), %eax	# token_7(D)->flags, D.10104
	movzbl	%al, %eax	# D.10104, D.10105
	andl	$2, %eax	#, D.10105
	testl	%eax, %eax	# D.10105
	je	.L319	#,
	.loc 2 1428 0
	movq	-40(%rbp), %rax	# token, tmp101
	movzbl	6(%rax), %eax	# token_7(D)->type, D.10104
	movzbl	%al, %eax	# D.10104, D.10105
	subl	$40, %eax	#, D.10105
	cltq
	movq	digraph_spellings(,%rax,8), %rax	# digraph_spellings, tmp103
	movq	%rax, -8(%rbp)	# tmp103, spelling
	jmp	.L320	#
.L319:
	.loc 2 1429 0
	movq	-40(%rbp), %rax	# token, tmp104
	movzbl	7(%rax), %eax	# token_7(D)->flags, D.10104
	movzbl	%al, %eax	# D.10104, D.10105
	andl	$16, %eax	#, D.10105
	testl	%eax, %eax	# D.10105
	je	.L321	#,
	.loc 2 1430 0
	jmp	.L315	#
.L321:
	.loc 2 1432 0
	movq	-40(%rbp), %rax	# token, tmp105
	movzbl	6(%rax), %eax	# token_7(D)->type, D.10104
	movzbl	%al, %eax	# D.10104, D.10105
	cltq
	salq	$4, %rax	#, tmp107
	addq	$token_spellings, %rax	#, tmp108
	movq	8(%rax), %rax	# token_spellings[_22].name, tmp109
	movq	%rax, -8(%rbp)	# tmp109, spelling
.L320:
	.loc 2 1434 0
	movq	-8(%rbp), %rax	# spelling, tmp110
	movzbl	(%rax), %eax	# *spelling_1, D.10104
	movzbl	%al, %eax	# D.10104, tmp111
	movl	%eax, -24(%rbp)	# tmp111, c
.L322:
	.loc 2 1436 0 discriminator 1
	movq	-48(%rbp), %rdx	# fp, tmp112
	movl	-24(%rbp), %eax	# c, tmp113
	movq	%rdx, %rsi	# tmp112,
	movl	%eax, %edi	# tmp113,
	call	_IO_putc	#
	.loc 2 1437 0 discriminator 1
	addq	$1, -8(%rbp)	#, spelling
	movq	-8(%rbp), %rax	# spelling, tmp114
	movzbl	(%rax), %eax	# *spelling_27, D.10104
	movzbl	%al, %eax	# D.10104, tmp115
	movl	%eax, -24(%rbp)	# tmp115, c
	cmpl	$0, -24(%rbp)	#, c
	jne	.L322	#,
.LBE18:
	.loc 2 1439 0
	jmp	.L310	#
.L314:
	.loc 2 1442 0
	movq	-40(%rbp), %rax	# token, tmp116
	movzbl	8(%rax), %eax	# token_7(D)->val.c, D.10104
	movzbl	%al, %eax	# D.10104, D.10105
	movq	-48(%rbp), %rdx	# fp, tmp117
	movq	%rdx, %rsi	# tmp117,
	movl	%eax, %edi	# D.10105,
	call	_IO_putc	#
	.loc 2 1443 0
	jmp	.L310	#
.L315:
	.loc 2 1447 0
	movq	-40(%rbp), %rax	# token, tmp118
	movq	8(%rax), %rax	# token_7(D)->val.node, D.10107
	movl	(%rax), %eax	# _32->ident.len, D.10108
	movl	%eax, %edx	# D.10108, D.10109
	movq	-40(%rbp), %rax	# token, tmp119
	movq	8(%rax), %rax	# token_7(D)->val.node, D.10107
	movq	8(%rax), %rax	# _35->ident.str, D.10110
	movq	-48(%rbp), %rcx	# fp, tmp120
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.10110,
	call	fwrite	#
	.loc 2 1448 0
	jmp	.L310	#
.L316:
	.loc 2 1451 0
	movq	-40(%rbp), %rax	# token, tmp121
	movl	8(%rax), %eax	# token_7(D)->val.str.len, D.10108
	movl	%eax, %edx	# D.10108, D.10109
	movq	-40(%rbp), %rax	# token, tmp122
	movq	16(%rax), %rax	# token_7(D)->val.str.text, D.10110
	movq	-48(%rbp), %rcx	# fp, tmp123
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.10110,
	call	fwrite	#
	.loc 2 1452 0
	jmp	.L310	#
.L317:
.LBB19:
	.loc 2 1457 0
	movq	-40(%rbp), %rax	# token, tmp124
	movzbl	6(%rax), %eax	# token_7(D)->type, D.10104
	movzbl	%al, %eax	# D.10104, D.10105
	subl	$58, %eax	#, tmp125
	cmpl	$5, %eax	#, tmp125
	ja	.L323	#,
	movl	%eax, %eax	# tmp125, tmp126
	movq	.L325(,%rax,8), %rax	#, tmp127
	jmp	*%rax	# tmp127
	.section	.rodata
	.align 8
	.align 4
.L325:
	.quad	.L324
	.quad	.L326
	.quad	.L323
	.quad	.L327
	.quad	.L328
	.quad	.L329
	.text
.L327:
	.loc 2 1459 0
	movl	$34, -20(%rbp)	#, left
	movl	$34, -16(%rbp)	#, right
	movl	$0, -12(%rbp)	#, tag
	jmp	.L330	#
.L328:
	.loc 2 1460 0
	movl	$34, -20(%rbp)	#, left
	movl	$34, -16(%rbp)	#, right
	movl	$76, -12(%rbp)	#, tag
	jmp	.L330	#
.L324:
	.loc 2 1461 0
	movl	$39, -20(%rbp)	#, left
	movl	$39, -16(%rbp)	#, right
	movl	$0, -12(%rbp)	#, tag
	jmp	.L330	#
.L326:
	.loc 2 1462 0
	movl	$39, -20(%rbp)	#, left
	movl	$39, -16(%rbp)	#, right
	movl	$76, -12(%rbp)	#, tag
	jmp	.L330	#
.L329:
	.loc 2 1463 0
	movl	$60, -20(%rbp)	#, left
	movl	$62, -16(%rbp)	#, right
	movl	$0, -12(%rbp)	#, tag
	jmp	.L330	#
.L323:
	.loc 2 1465 0
	movq	-40(%rbp), %rax	# token, tmp128
	movzbl	6(%rax), %eax	# token_7(D)->type, D.10104
	movzbl	%al, %eax	# D.10104, D.10105
	cltq
	salq	$4, %rax	#, tmp130
	addq	$token_spellings, %rax	#, tmp131
	movq	8(%rax), %rdx	# token_spellings[_58].name, D.10110
	movq	stderr(%rip), %rax	# stderr, stderr.33
	movl	$.LC97, %esi	#,
	movq	%rax, %rdi	# stderr.33,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 2 1466 0
	jmp	.L310	#
.L330:
	.loc 2 1468 0
	cmpl	$0, -12(%rbp)	#, tag
	je	.L331	#,
	.loc 2 1468 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx	# fp, tmp132
	movl	-12(%rbp), %eax	# tag, tmp133
	movq	%rdx, %rsi	# tmp132,
	movl	%eax, %edi	# tmp133,
	call	_IO_putc	#
.L331:
	.loc 2 1469 0 is_stmt 1
	movq	-48(%rbp), %rdx	# fp, tmp134
	movl	-20(%rbp), %eax	# left, tmp135
	movq	%rdx, %rsi	# tmp134,
	movl	%eax, %edi	# tmp135,
	call	_IO_putc	#
	.loc 2 1470 0
	movq	-40(%rbp), %rax	# token, tmp136
	movl	8(%rax), %eax	# token_7(D)->val.str.len, D.10108
	movl	%eax, %edx	# D.10108, D.10109
	movq	-40(%rbp), %rax	# token, tmp137
	movq	16(%rax), %rax	# token_7(D)->val.str.text, D.10110
	movq	-48(%rbp), %rcx	# fp, tmp138
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.10110,
	call	fwrite	#
	.loc 2 1471 0
	movq	-48(%rbp), %rdx	# fp, tmp139
	movl	-16(%rbp), %eax	# right, tmp140
	movq	%rdx, %rsi	# tmp139,
	movl	%eax, %edi	# tmp140,
	call	_IO_putc	#
.LBE19:
	.loc 2 1473 0
	jmp	.L310	#
.L332:
	.loc 2 1477 0
	nop
.L310:
	.loc 2 1479 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	cpp_output_token, .-cpp_output_token
	.globl	_cpp_equiv_tokens
	.type	_cpp_equiv_tokens, @function
_cpp_equiv_tokens:
.LFB35:
	.loc 2 1485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
	.loc 2 1486 0
	movq	-8(%rbp), %rax	# a, tmp86
	movzbl	6(%rax), %edx	# a_4(D)->type, D.10113
	movq	-16(%rbp), %rax	# b, tmp87
	movzbl	6(%rax), %eax	# b_6(D)->type, D.10113
	cmpb	%al, %dl	# D.10113, D.10113
	jne	.L334	#,
	.loc 2 1486 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# a, tmp88
	movzbl	7(%rax), %edx	# a_4(D)->flags, D.10113
	movq	-16(%rbp), %rax	# b, tmp89
	movzbl	7(%rax), %eax	# b_6(D)->flags, D.10113
	cmpb	%al, %dl	# D.10113, D.10113
	jne	.L334	#,
	.loc 2 1487 0 is_stmt 1
	movq	-8(%rbp), %rax	# a, tmp90
	movzbl	6(%rax), %eax	# a_4(D)->type, D.10113
	movzbl	%al, %eax	# D.10113, D.10112
	cltq
	salq	$4, %rax	#, tmp92
	addq	$token_spellings, %rax	#, tmp93
	movl	(%rax), %eax	# token_spellings[_11].category, D.10114
	cmpl	$5, %eax	#, D.10114
	ja	.L335	#,
	movl	%eax, %eax	# D.10114, tmp94
	movq	.L337(,%rax,8), %rax	#, tmp95
	jmp	*%rax	# tmp95
	.section	.rodata
	.align 8
	.align 4
.L337:
	.quad	.L335
	.quad	.L336
	.quad	.L338
	.quad	.L339
	.quad	.L339
	.quad	.L340
	.text
.L335:
	.loc 2 1491 0
	movl	$1, %eax	#, D.10112
	jmp	.L341	#
.L336:
	.loc 2 1493 0
	movq	-8(%rbp), %rax	# a, tmp96
	movzbl	8(%rax), %edx	# a_4(D)->val.c, D.10113
	movq	-16(%rbp), %rax	# b, tmp97
	movzbl	8(%rax), %eax	# b_6(D)->val.c, D.10113
	cmpb	%al, %dl	# D.10113, D.10113
	sete	%al	#, D.10115
	movzbl	%al, %eax	# D.10115, D.10112
	jmp	.L341	#
.L340:
	.loc 2 1495 0
	movq	-8(%rbp), %rax	# a, tmp98
	movzbl	6(%rax), %eax	# a_4(D)->type, D.10113
	cmpb	$65, %al	#, D.10113
	jne	.L342	#,
	.loc 2 1495 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# a, tmp99
	movl	8(%rax), %edx	# a_4(D)->val.arg_no, D.10116
	movq	-16(%rbp), %rax	# b, tmp100
	movl	8(%rax), %eax	# b_6(D)->val.arg_no, D.10116
	cmpl	%eax, %edx	# D.10116, D.10116
	jne	.L343	#,
.L342:
	.loc 2 1495 0 discriminator 1
	movl	$1, %eax	#, iftmp.34
	jmp	.L344	#
.L343:
	.loc 2 1495 0 discriminator 3
	movl	$0, %eax	#, iftmp.34
.L344:
	.loc 2 1495 0 discriminator 4
	jmp	.L341	#
.L338:
	.loc 2 1497 0 is_stmt 1
	movq	-8(%rbp), %rax	# a, tmp101
	movq	8(%rax), %rdx	# a_4(D)->val.node, D.10117
	movq	-16(%rbp), %rax	# b, tmp102
	movq	8(%rax), %rax	# b_6(D)->val.node, D.10117
	cmpq	%rax, %rdx	# D.10117, D.10117
	sete	%al	#, D.10115
	movzbl	%al, %eax	# D.10115, D.10112
	jmp	.L341	#
.L339:
	.loc 2 1500 0
	movq	-8(%rbp), %rax	# a, tmp103
	movl	8(%rax), %edx	# a_4(D)->val.str.len, D.10116
	movq	-16(%rbp), %rax	# b, tmp104
	movl	8(%rax), %eax	# b_6(D)->val.str.len, D.10116
	.loc 2 1501 0
	cmpl	%eax, %edx	# D.10116, D.10116
	jne	.L345	#,
	.loc 2 1502 0 discriminator 1
	movq	-8(%rbp), %rax	# a, tmp105
	movl	8(%rax), %eax	# a_4(D)->val.str.len, D.10116
	.loc 2 1501 0 discriminator 1
	movl	%eax, %edx	# D.10116, D.10118
	movq	-16(%rbp), %rax	# b, tmp106
	movq	16(%rax), %rcx	# b_6(D)->val.str.text, D.10119
	movq	-8(%rbp), %rax	# a, tmp107
	movq	16(%rax), %rax	# a_4(D)->val.str.text, D.10119
	movq	%rcx, %rsi	# D.10119,
	movq	%rax, %rdi	# D.10119,
	call	memcmp	#
	testl	%eax, %eax	# D.10112
	jne	.L345	#,
	.loc 2 1501 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.35
	jmp	.L346	#
.L345:
	.loc 2 1501 0 discriminator 2
	movl	$0, %eax	#, iftmp.35
.L346:
	.loc 2 1500 0 is_stmt 1
	jmp	.L341	#
.L334:
	.loc 2 1505 0
	movl	$0, %eax	#, D.10112
.L341:
	.loc 2 1506 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	_cpp_equiv_tokens, .-_cpp_equiv_tokens
	.globl	cpp_avoid_paste
	.type	cpp_avoid_paste, @function
cpp_avoid_paste:
.LFB36:
	.loc 2 1516 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# token1, token1
	movq	%rdx, -40(%rbp)	# token2, token2
	.loc 2 1517 0
	movq	-32(%rbp), %rax	# token1, tmp99
	movzbl	6(%rax), %eax	# token1_16(D)->type, D.10121
	movzbl	%al, %eax	# D.10121, tmp100
	movl	%eax, -12(%rbp)	# tmp100, a
	movq	-40(%rbp), %rax	# token2, tmp101
	movzbl	6(%rax), %eax	# token2_19(D)->type, D.10121
	movzbl	%al, %eax	# D.10121, tmp102
	movl	%eax, -8(%rbp)	# tmp102, b
	.loc 2 1520 0
	movq	-32(%rbp), %rax	# token1, tmp103
	movzbl	7(%rax), %eax	# token1_16(D)->flags, D.10121
	movzbl	%al, %eax	# D.10121, D.10120
	andl	$16, %eax	#, D.10120
	testl	%eax, %eax	# D.10120
	je	.L348	#,
	.loc 2 1521 0
	movl	$56, -12(%rbp)	#, a
.L348:
	.loc 2 1522 0
	movq	-40(%rbp), %rax	# token2, tmp104
	movzbl	7(%rax), %eax	# token2_19(D)->flags, D.10121
	movzbl	%al, %eax	# D.10121, D.10120
	andl	$16, %eax	#, D.10120
	testl	%eax, %eax	# D.10120
	je	.L349	#,
	.loc 2 1523 0
	movl	$56, -8(%rbp)	#, b
.L349:
	.loc 2 1525 0
	movl	$-1, -4(%rbp)	#, c
	.loc 2 1526 0
	movq	-40(%rbp), %rax	# token2, tmp105
	movzbl	7(%rax), %eax	# token2_19(D)->flags, D.10121
	movzbl	%al, %eax	# D.10121, D.10120
	andl	$2, %eax	#, D.10120
	testl	%eax, %eax	# D.10120
	je	.L350	#,
	.loc 2 1527 0
	movl	-8(%rbp), %eax	# b, b.36
	subl	$40, %eax	#, D.10120
	cltq
	movq	digraph_spellings(,%rax,8), %rax	# digraph_spellings, D.10122
	movzbl	(%rax), %eax	# *_36, D.10121
	movzbl	%al, %eax	# D.10121, tmp107
	movl	%eax, -4(%rbp)	# tmp107, c
	jmp	.L351	#
.L350:
	.loc 2 1528 0
	movl	-8(%rbp), %eax	# b, tmp108
	salq	$4, %rax	#, tmp109
	addq	$token_spellings, %rax	#, tmp110
	movl	(%rax), %eax	# token_spellings[b_2].category, D.10123
	testl	%eax, %eax	# D.10123
	jne	.L351	#,
	.loc 2 1529 0
	movl	-8(%rbp), %eax	# b, tmp111
	salq	$4, %rax	#, tmp112
	addq	$token_spellings, %rax	#, tmp113
	movq	8(%rax), %rax	# token_spellings[b_2].name, D.10122
	movzbl	(%rax), %eax	# *_40, D.10121
	movzbl	%al, %eax	# D.10121, tmp114
	movl	%eax, -4(%rbp)	# tmp114, c
.L351:
	.loc 2 1532 0
	movl	-12(%rbp), %eax	# a, a.37
	cmpl	$15, %eax	#, a.37
	jg	.L352	#,
	.loc 2 1532 0 is_stmt 0 discriminator 1
	cmpl	$61, -4(%rbp)	#, c
	jne	.L352	#,
	.loc 2 1533 0 is_stmt 1
	movl	$1, %eax	#, D.10120
	jmp	.L353	#
.L352:
	.loc 2 1535 0
	cmpl	$60, -12(%rbp)	#, a
	ja	.L406	#,
	movl	-12(%rbp), %eax	# a, tmp115
	movq	.L356(,%rax,8), %rax	#, tmp116
	jmp	*%rax	# tmp116
	.section	.rodata
	.align 8
	.align 4
.L356:
	.quad	.L406
	.quad	.L406
	.quad	.L355
	.quad	.L357
	.quad	.L358
	.quad	.L359
	.quad	.L406
	.quad	.L360
	.quad	.L361
	.quad	.L362
	.quad	.L363
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L364
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L365
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L366
	.quad	.L367
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L406
	.quad	.L368
	.quad	.L369
	.quad	.L406
	.quad	.L406
	.quad	.L370
	.text
.L355:
	.loc 2 1537 0
	cmpl	$62, -4(%rbp)	#, c
	je	.L371	#,
	.loc 2 1537 0 is_stmt 0 discriminator 2
	cmpl	$63, -4(%rbp)	#, c
	jne	.L372	#,
.L371:
	.loc 2 1537 0 discriminator 1
	movl	$1, %eax	#, iftmp.38
	jmp	.L373	#
.L372:
	.loc 2 1537 0 discriminator 3
	movl	$0, %eax	#, iftmp.38
.L373:
	.loc 2 1537 0 discriminator 4
	jmp	.L353	#
.L357:
	.loc 2 1538 0 is_stmt 1
	cmpl	$60, -4(%rbp)	#, c
	je	.L374	#,
	.loc 2 1538 0 is_stmt 0 discriminator 2
	cmpl	$63, -4(%rbp)	#, c
	je	.L374	#,
	.loc 2 1538 0 discriminator 1
	cmpl	$37, -4(%rbp)	#, c
	je	.L374	#,
	cmpl	$58, -4(%rbp)	#, c
	jne	.L375	#,
.L374:
	movl	$1, %eax	#, iftmp.39
	jmp	.L376	#
.L375:
	.loc 2 1538 0 discriminator 3
	movl	$0, %eax	#, iftmp.39
.L376:
	.loc 2 1538 0 discriminator 4
	jmp	.L353	#
.L358:
	.loc 2 1539 0 is_stmt 1
	cmpl	$43, -4(%rbp)	#, c
	sete	%al	#, D.10124
	movzbl	%al, %eax	# D.10124, D.10120
	jmp	.L353	#
.L359:
	.loc 2 1540 0
	cmpl	$45, -4(%rbp)	#, c
	je	.L377	#,
	.loc 2 1540 0 is_stmt 0 discriminator 2
	cmpl	$62, -4(%rbp)	#, c
	jne	.L378	#,
.L377:
	.loc 2 1540 0 discriminator 1
	movl	$1, %eax	#, iftmp.40
	jmp	.L379	#
.L378:
	.loc 2 1540 0 discriminator 3
	movl	$0, %eax	#, iftmp.40
.L379:
	.loc 2 1540 0 discriminator 4
	jmp	.L353	#
.L360:
	.loc 2 1541 0 is_stmt 1
	cmpl	$47, -4(%rbp)	#, c
	je	.L380	#,
	.loc 2 1541 0 is_stmt 0 discriminator 2
	cmpl	$42, -4(%rbp)	#, c
	jne	.L381	#,
.L380:
	.loc 2 1541 0 discriminator 1
	movl	$1, %eax	#, iftmp.41
	jmp	.L382	#
.L381:
	.loc 2 1541 0 discriminator 3
	movl	$0, %eax	#, iftmp.41
.L382:
	.loc 2 1541 0 discriminator 4
	jmp	.L353	#
.L361:
	.loc 2 1542 0 is_stmt 1
	cmpl	$58, -4(%rbp)	#, c
	je	.L383	#,
	.loc 2 1542 0 is_stmt 0 discriminator 2
	cmpl	$62, -4(%rbp)	#, c
	jne	.L384	#,
.L383:
	.loc 2 1542 0 discriminator 1
	movl	$1, %eax	#, iftmp.42
	jmp	.L385	#
.L384:
	.loc 2 1542 0 discriminator 3
	movl	$0, %eax	#, iftmp.42
.L385:
	.loc 2 1542 0 discriminator 4
	jmp	.L353	#
.L362:
	.loc 2 1543 0 is_stmt 1
	cmpl	$38, -4(%rbp)	#, c
	sete	%al	#, D.10124
	movzbl	%al, %eax	# D.10124, D.10120
	jmp	.L353	#
.L363:
	.loc 2 1544 0
	cmpl	$124, -4(%rbp)	#, c
	sete	%al	#, D.10124
	movzbl	%al, %eax	# D.10124, D.10120
	jmp	.L353	#
.L364:
	.loc 2 1545 0
	cmpl	$58, -4(%rbp)	#, c
	je	.L386	#,
	.loc 2 1545 0 is_stmt 0 discriminator 2
	cmpl	$62, -4(%rbp)	#, c
	jne	.L387	#,
.L386:
	.loc 2 1545 0 discriminator 1
	movl	$1, %eax	#, iftmp.43
	jmp	.L388	#
.L387:
	.loc 2 1545 0 discriminator 3
	movl	$0, %eax	#, iftmp.43
.L388:
	.loc 2 1545 0 discriminator 4
	jmp	.L353	#
.L366:
	.loc 2 1546 0 is_stmt 1
	cmpl	$42, -4(%rbp)	#, c
	sete	%al	#, D.10124
	movzbl	%al, %eax	# D.10124, D.10120
	jmp	.L353	#
.L367:
	.loc 2 1547 0
	cmpl	$46, -4(%rbp)	#, c
	je	.L389	#,
	.loc 2 1547 0 is_stmt 0 discriminator 2
	cmpl	$37, -4(%rbp)	#, c
	je	.L389	#,
	.loc 2 1547 0 discriminator 1
	cmpl	$57, -8(%rbp)	#, b
	jne	.L390	#,
.L389:
	movl	$1, %eax	#, iftmp.44
	jmp	.L391	#
.L390:
	.loc 2 1547 0 discriminator 3
	movl	$0, %eax	#, iftmp.44
.L391:
	.loc 2 1547 0 discriminator 4
	jmp	.L353	#
.L365:
	.loc 2 1548 0 is_stmt 1
	cmpl	$35, -4(%rbp)	#, c
	je	.L392	#,
	.loc 2 1548 0 is_stmt 0 discriminator 2
	cmpl	$37, -4(%rbp)	#, c
	jne	.L393	#,
.L392:
	.loc 2 1548 0 discriminator 1
	movl	$1, %eax	#, iftmp.45
	jmp	.L394	#
.L393:
	.loc 2 1548 0 discriminator 3
	movl	$0, %eax	#, iftmp.45
.L394:
	.loc 2 1548 0 discriminator 4
	jmp	.L353	#
.L368:
	.loc 2 1552 0 is_stmt 1
	cmpl	$57, -8(%rbp)	#, b
	jne	.L395	#,
	.loc 2 1550 0
	movq	-40(%rbp), %rax	# token2, tmp117
	leaq	8(%rax), %rdx	#, D.10125
	movq	-24(%rbp), %rax	# pfile, tmp118
	movq	%rdx, %rsi	# D.10125,
	movq	%rax, %rdi	# tmp118,
	call	name_p	#
	testl	%eax, %eax	# D.10120
	jne	.L396	#,
.L395:
	.loc 2 1551 0
	cmpl	$56, -8(%rbp)	#, b
	je	.L396	#,
	.loc 2 1552 0
	cmpl	$58, -8(%rbp)	#, b
	je	.L396	#,
	.loc 2 1552 0 is_stmt 0 discriminator 2
	cmpl	$61, -8(%rbp)	#, b
	jne	.L397	#,
.L396:
	.loc 2 1552 0 discriminator 1
	movl	$1, %eax	#, iftmp.46
	jmp	.L398	#
.L397:
	movl	$0, %eax	#, iftmp.46
.L398:
	.loc 2 1549 0 is_stmt 1
	jmp	.L353	#
.L369:
	.loc 2 1554 0
	cmpl	$57, -8(%rbp)	#, b
	je	.L399	#,
	.loc 2 1553 0
	cmpl	$56, -8(%rbp)	#, b
	je	.L399	#,
	.loc 2 1554 0
	cmpl	$46, -4(%rbp)	#, c
	je	.L399	#,
	.loc 2 1554 0 is_stmt 0 discriminator 1
	cmpl	$43, -4(%rbp)	#, c
	je	.L399	#,
	cmpl	$45, -4(%rbp)	#, c
	jne	.L400	#,
.L399:
	movl	$1, %eax	#, iftmp.47
	jmp	.L401	#
.L400:
	.loc 2 1554 0 discriminator 2
	movl	$0, %eax	#, iftmp.47
.L401:
	.loc 2 1553 0 is_stmt 1
	jmp	.L353	#
.L370:
	.loc 2 1555 0
	movq	-24(%rbp), %rax	# pfile, tmp119
	movzbl	744(%rax), %eax	# pfile_78(D)->opts.objc, D.10121
	.loc 2 1557 0
	testb	%al, %al	# D.10121
	je	.L402	#,
	.loc 2 1556 0
	movq	-32(%rbp), %rax	# token1, tmp120
	movzbl	8(%rax), %eax	# token1_16(D)->val.c, D.10121
	cmpb	$64, %al	#, D.10121
	jne	.L402	#,
	.loc 2 1557 0
	cmpl	$56, -8(%rbp)	#, b
	je	.L403	#,
	.loc 2 1557 0 is_stmt 0 discriminator 3
	cmpl	$61, -8(%rbp)	#, b
	jne	.L402	#,
.L403:
	.loc 2 1557 0 discriminator 2
	movl	$1, %eax	#, iftmp.48
	jmp	.L404	#
.L402:
	.loc 2 1557 0 discriminator 1
	movl	$0, %eax	#, iftmp.48
.L404:
	.loc 2 1555 0 is_stmt 1
	jmp	.L353	#
.L406:
	.loc 2 1558 0
	nop
	.loc 2 1561 0
	movl	$0, %eax	#, D.10120
.L353:
	.loc 2 1562 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	cpp_avoid_paste, .-cpp_avoid_paste
	.globl	cpp_output_line
	.type	cpp_output_line, @function
cpp_output_line:
.LFB37:
	.loc 2 1571 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# fp, fp
	.loc 2 1574 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movq	%rax, %rdi	# tmp63,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp64, token
	.loc 2 1575 0
	jmp	.L408	#
.L409:
	.loc 2 1577 0
	movq	-32(%rbp), %rdx	# fp, tmp65
	movq	-8(%rbp), %rax	# token, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	cpp_output_token	#
	.loc 2 1578 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp68, token
	.loc 2 1579 0
	movq	-8(%rbp), %rax	# token, tmp69
	movzbl	7(%rax), %eax	# token_6->flags, D.10126
	movzbl	%al, %eax	# D.10126, D.10127
	andl	$1, %eax	#, D.10127
	testl	%eax, %eax	# D.10127
	je	.L408	#,
	.loc 2 1580 0
	movq	-32(%rbp), %rax	# fp, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$32, %edi	#,
	call	_IO_putc	#
.L408:
	.loc 2 1575 0 discriminator 1
	movq	-8(%rbp), %rax	# token, tmp71
	movzbl	6(%rax), %eax	# token_1->type, D.10126
	cmpb	$67, %al	#, D.10126
	jne	.L409	#,
	.loc 2 1583 0
	movq	-32(%rbp), %rax	# fp, tmp72
	movq	%rax, %rsi	# tmp72,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 2 1584 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	cpp_output_line, .-cpp_output_line
	.type	hex_digit_value, @function
hex_digit_value:
.LFB38:
	.loc 2 1590 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# c, c
	.loc 2 1591 0
	movl	-4(%rbp), %eax	# c, tmp67
	movzbl	%al, %eax	# D.10128, D.10129
	cltq
	movzbl	_hex_value(%rax), %eax	# _hex_value, D.10130
	cmpb	$99, %al	#, D.10130
	je	.L411	#,
	.loc 2 1592 0
	movl	-4(%rbp), %eax	# c, tmp69
	movzbl	%al, %eax	# D.10128, D.10129
	cltq
	movzbl	_hex_value(%rax), %eax	# _hex_value, D.10130
	movsbl	%al, %eax	# D.10130, D.10131
	jmp	.L413	#
.L411:
	.loc 2 1594 0
	call	abort	#
.L413:
	.loc 2 1595 0 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	hex_digit_value, .-hex_digit_value
	.section	.rodata
	.align 8
.LC98:
	.string	"the meaning of '\\%c' varies with -traditional"
	.align 8
.LC99:
	.string	"incomplete universal-character-name"
	.align 8
.LC100:
	.string	"non-hex digit '%c' in universal-character-name"
	.align 8
.LC101:
	.string	"universal-character-name out of range"
	.text
	.type	maybe_read_ucs, @function
maybe_read_ucs:
.LFB39:
	.loc 2 1625 0
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
	movq	%rsi, -64(%rbp)	# pstr, pstr
	movq	%rdx, -72(%rbp)	# limit, limit
	movq	%rcx, -80(%rbp)	# pc, pc
	.loc 2 1626 0
	movq	-64(%rbp), %rax	# pstr, tmp78
	movq	(%rax), %rax	# *pstr_9(D), tmp79
	movq	%rax, -24(%rbp)	# tmp79, p
	.loc 2 1627 0
	movl	$0, -36(%rbp)	#, code
	.loc 2 1628 0
	movq	-80(%rbp), %rax	# pc, tmp80
	movl	(%rax), %eax	# *pc_12(D), tmp81
	movl	%eax, -28(%rbp)	# tmp81, c
	.loc 2 1631 0
	movq	-56(%rbp), %rax	# pfile, tmp82
	movzbl	742(%rax), %eax	# pfile_14(D)->opts.cplusplus, D.10133
	testb	%al, %al	# D.10133
	jne	.L415	#,
	.loc 2 1631 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# pfile, tmp83
	movzbl	769(%rax), %eax	# pfile_14(D)->opts.c99, D.10133
	testb	%al, %al	# D.10133
	jne	.L415	#,
	.loc 2 1632 0 is_stmt 1
	movl	$1, %eax	#, D.10132
	jmp	.L416	#
.L415:
	.loc 2 1634 0
	movq	-56(%rbp), %rax	# pfile, tmp84
	movzbl	761(%rax), %eax	# pfile_14(D)->opts.warn_traditional, D.10133
	testb	%al, %al	# D.10133
	je	.L417	#,
	.loc 2 1635 0
	movl	-28(%rbp), %edx	# c, tmp85
	movq	-56(%rbp), %rax	# pfile, tmp86
	movl	$.LC98, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L417:
	.loc 2 1637 0
	cmpl	$117, -28(%rbp)	#, c
	jne	.L418	#,
	.loc 2 1637 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.49
	jmp	.L419	#
.L418:
	.loc 2 1637 0 discriminator 2
	movl	$8, %eax	#, iftmp.49
.L419:
	.loc 2 1637 0 discriminator 3
	movl	%eax, -32(%rbp)	# iftmp.49, length
	.loc 2 1639 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rdx	# limit, limit.50
	movq	-24(%rbp), %rax	# p, p.51
	subq	%rax, %rdx	# p.51, D.10134
	movq	%rdx, %rax	# D.10134, D.10134
	movq	%rax, %rdx	# D.10134, D.10135
	movl	-32(%rbp), %eax	# length, D.10135
	cmpq	%rax, %rdx	# D.10135, D.10135
	jae	.L420	#,
	.loc 2 1641 0
	movq	-56(%rbp), %rax	# pfile, tmp87
	movl	$.LC99, %esi	#,
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 1643 0
	movq	-72(%rbp), %rax	# limit, tmp88
	movq	%rax, -24(%rbp)	# tmp88, p
	jmp	.L421	#
.L420:
	.loc 2 1647 0
	jmp	.L422	#
.L425:
	.loc 2 1649 0
	movq	-24(%rbp), %rax	# p, tmp89
	movzbl	(%rax), %eax	# *p_1, D.10133
	movzbl	%al, %eax	# D.10133, tmp90
	movl	%eax, -28(%rbp)	# tmp90, c
	.loc 2 1650 0
	movl	-28(%rbp), %eax	# c, tmp91
	movzbl	%al, %eax	# tmp91, D.10136
	movl	%eax, %eax	# D.10136, tmp92
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10137
	movzwl	%ax, %eax	# D.10137, D.10132
	andl	$256, %eax	#, D.10132
	testl	%eax, %eax	# D.10132
	je	.L423	#,
	.loc 2 1651 0
	movl	-36(%rbp), %eax	# code, tmp93
	sall	$4, %eax	#, D.10136
	movl	%eax, %ebx	# D.10136, D.10136
	movl	-28(%rbp), %eax	# c, tmp94
	movl	%eax, %edi	# tmp94,
	call	hex_digit_value	#
	addl	%ebx, %eax	# D.10136, tmp95
	movl	%eax, -36(%rbp)	# tmp95, code
	.loc 2 1647 0
	subl	$1, -32(%rbp)	#, length
	addq	$1, -24(%rbp)	#, p
	jmp	.L422	#
.L423:
	.loc 2 1654 0
	movl	-28(%rbp), %edx	# c, tmp96
	movq	-56(%rbp), %rax	# pfile, tmp97
	movl	$.LC100, %esi	#,
	movq	%rax, %rdi	# tmp97,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 1657 0
	jmp	.L421	#
.L422:
	.loc 2 1647 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, length
	jne	.L425	#,
.L421:
	.loc 2 1667 0
	cmpl	$159, -36(%rbp)	#, code
	jbe	.L426	#,
	.loc 2 1668 0
	movl	-36(%rbp), %eax	# code, code.52
	testl	%eax, %eax	# code.52
	js	.L426	#,
	.loc 2 1669 0
	cmpl	$55295, -36(%rbp)	#, code
	jbe	.L427	#,
	.loc 2 1669 0 is_stmt 0 discriminator 1
	cmpl	$57343, -36(%rbp)	#, code
	jbe	.L426	#,
.L427:
	.loc 2 1667 0 is_stmt 1
	jmp	.L428	#
.L426:
	.loc 2 1673 0
	cmpl	$36, -36(%rbp)	#, code
	je	.L428	#,
	.loc 2 1673 0 is_stmt 0 discriminator 1
	cmpl	$64, -36(%rbp)	#, code
	je	.L428	#,
	cmpl	$96, -36(%rbp)	#, code
	je	.L428	#,
	.loc 2 1676 0 is_stmt 1
	cmpl	$0, -32(%rbp)	#, length
	jne	.L428	#,
	.loc 2 1677 0
	movq	-56(%rbp), %rax	# pfile, tmp98
	movl	$.LC101, %esi	#,
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	cpp_error	#
.L428:
	.loc 2 1680 0
	movq	-64(%rbp), %rax	# pstr, tmp99
	movq	-24(%rbp), %rdx	# p, tmp100
	movq	%rdx, (%rax)	# tmp100, *pstr_9(D)
	.loc 2 1681 0
	movq	-80(%rbp), %rax	# pc, tmp101
	movl	-36(%rbp), %edx	# code, tmp102
	movl	%edx, (%rax)	# tmp102, *pc_12(D)
	.loc 2 1682 0
	movl	$0, %eax	#, D.10132
.L416:
	.loc 2 1683 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	maybe_read_ucs, .-maybe_read_ucs
	.section	.rodata
	.align 8
.LC102:
	.string	"the meaning of '\\a' varies with -traditional"
	.align 8
.LC103:
	.string	"non-ISO-standard escape sequence, '\\%c'"
	.align 8
.LC104:
	.string	"the meaning of '\\x' varies with -traditional"
	.align 8
.LC105:
	.string	"\\x used with no following hex digits"
	.align 8
.LC106:
	.string	"hex escape sequence out of range"
	.align 8
.LC107:
	.string	"octal escape sequence out of range"
.LC108:
	.string	"unknown escape sequence '\\%c'"
	.align 8
.LC109:
	.string	"unknown escape sequence: '\\%03o'"
	.align 8
.LC110:
	.string	"escape sequence out of range for character"
	.text
	.globl	cpp_parse_escape
	.type	cpp_parse_escape, @function
cpp_parse_escape:
.LFB40:
	.loc 2 1699 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# pfile, pfile
	movq	%rsi, -80(%rbp)	# pstr, pstr
	movq	%rdx, -88(%rbp)	# limit, limit
	movq	%rcx, -96(%rbp)	# mask, mask
	movl	%r8d, -100(%rbp)	# traditional, traditional
	.loc 2 1700 0
	movl	$0, -48(%rbp)	#, unknown
	.loc 2 1701 0
	movq	-80(%rbp), %rax	# pstr, tmp121
	movq	(%rax), %rax	# *pstr_10(D), str.53
	movq	%rax, -24(%rbp)	# str.53, str
	.loc 2 1702 0
	movq	-24(%rbp), %rax	# str, str.54
	leaq	1(%rax), %rdx	#, str.56
	movq	%rdx, -24(%rbp)	# str.56, str
	movzbl	(%rax), %eax	# *str.55_13, D.10142
	movzbl	%al, %eax	# D.10142, c.57
	movl	%eax, -52(%rbp)	# c.57, c
	.loc 2 1704 0
	movl	-52(%rbp), %eax	# c, c.58
	subl	$34, %eax	#, tmp122
	cmpl	$89, %eax	#, tmp122
	ja	.L430	#,
	movl	%eax, %eax	# tmp122, tmp123
	movq	.L432(,%rax,8), %rax	#, tmp124
	jmp	*%rax	# tmp124
	.section	.rodata
	.align 8
	.align 4
.L432:
	.quad	.L465
	.quad	.L430
	.quad	.L430
	.quad	.L433
	.quad	.L430
	.quad	.L465
	.quad	.L433
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L434
	.quad	.L434
	.quad	.L434
	.quad	.L434
	.quad	.L434
	.quad	.L434
	.quad	.L434
	.quad	.L434
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L465
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L435
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L436
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L433
	.quad	.L465
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L437
	.quad	.L438
	.quad	.L430
	.quad	.L430
	.quad	.L435
	.quad	.L439
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L440
	.quad	.L430
	.quad	.L430
	.quad	.L430
	.quad	.L441
	.quad	.L430
	.quad	.L442
	.quad	.L436
	.quad	.L443
	.quad	.L430
	.quad	.L444
	.quad	.L430
	.quad	.L430
	.quad	.L433
	.text
.L438:
	.loc 2 1707 0
	movl	$8, -52(%rbp)	#, c
	jmp	.L445	#
.L439:
	.loc 2 1708 0
	movl	$12, -52(%rbp)	#, c
	jmp	.L445	#
.L440:
	.loc 2 1709 0
	movl	$10, -52(%rbp)	#, c
	jmp	.L445	#
.L441:
	.loc 2 1710 0
	movl	$13, -52(%rbp)	#, c
	jmp	.L445	#
.L442:
	.loc 2 1711 0
	movl	$9, -52(%rbp)	#, c
	jmp	.L445	#
.L443:
	.loc 2 1712 0
	movl	$11, -52(%rbp)	#, c
	jmp	.L445	#
.L433:
	.loc 2 1717 0
	movq	-72(%rbp), %rax	# pfile, tmp125
	movzbl	770(%rax), %eax	# pfile_18(D)->opts.pedantic, D.10142
	movzbl	%al, %eax	# D.10142, tmp126
	movl	%eax, -48(%rbp)	# tmp126, unknown
	.loc 2 1718 0
	jmp	.L445	#
.L437:
	.loc 2 1721 0
	movq	-72(%rbp), %rax	# pfile, tmp127
	movzbl	761(%rax), %eax	# pfile_18(D)->opts.warn_traditional, D.10142
	testb	%al, %al	# D.10142
	je	.L446	#,
	.loc 2 1722 0
	movq	-72(%rbp), %rax	# pfile, tmp128
	movl	$.LC102, %esi	#,
	movq	%rax, %rdi	# tmp128,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L446:
	.loc 2 1723 0
	cmpl	$0, -100(%rbp)	#, traditional
	jne	.L447	#,
	.loc 2 1724 0
	movl	$7, -52(%rbp)	#, c
	.loc 2 1725 0
	jmp	.L445	#
.L447:
	jmp	.L445	#
.L435:
	.loc 2 1728 0
	movq	-72(%rbp), %rax	# pfile, tmp129
	movzbl	770(%rax), %eax	# pfile_18(D)->opts.pedantic, D.10142
	testb	%al, %al	# D.10142
	je	.L448	#,
	.loc 2 1729 0
	movl	-52(%rbp), %edx	# c, c.59
	movq	-72(%rbp), %rax	# pfile, tmp130
	movl	$.LC103, %esi	#,
	movq	%rax, %rdi	# tmp130,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L448:
	.loc 2 1730 0
	movl	$27, -52(%rbp)	#, c
	.loc 2 1731 0
	jmp	.L445	#
.L436:
	.loc 2 1734 0
	leaq	-52(%rbp), %rcx	#, tmp131
	movq	-88(%rbp), %rdx	# limit, tmp132
	leaq	-24(%rbp), %rsi	#, tmp133
	movq	-72(%rbp), %rax	# pfile, tmp134
	movq	%rax, %rdi	# tmp134,
	call	maybe_read_ucs	#
	movl	%eax, -48(%rbp)	# tmp135, unknown
	.loc 2 1735 0
	jmp	.L445	#
.L444:
	.loc 2 1738 0
	movq	-72(%rbp), %rax	# pfile, tmp136
	movzbl	761(%rax), %eax	# pfile_18(D)->opts.warn_traditional, D.10142
	testb	%al, %al	# D.10142
	je	.L449	#,
	.loc 2 1739 0
	movq	-72(%rbp), %rax	# pfile, tmp137
	movl	$.LC104, %esi	#,
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L449:
	.loc 2 1741 0
	cmpl	$0, -100(%rbp)	#, traditional
	jne	.L450	#,
.LBB20:
	.loc 2 1743 0
	movl	$0, -44(%rbp)	#, i
	movl	$0, -40(%rbp)	#, overflow
	.loc 2 1744 0
	movl	$0, -36(%rbp)	#, digits_found
	.loc 2 1746 0
	jmp	.L451	#
.L454:
	.loc 2 1748 0
	movq	-24(%rbp), %rax	# str, str.60
	movzbl	(%rax), %eax	# *str.60_32, D.10142
	movzbl	%al, %eax	# D.10142, c.61
	movl	%eax, -52(%rbp)	# c.61, c
	.loc 2 1749 0
	movl	-52(%rbp), %eax	# c, c.62
	movzbl	%al, %eax	# c.62, D.10143
	movl	%eax, %eax	# D.10143, tmp138
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10144
	movzwl	%ax, %eax	# D.10144, D.10145
	andl	$256, %eax	#, D.10145
	testl	%eax, %eax	# D.10145
	jne	.L452	#,
	.loc 2 1750 0
	jmp	.L453	#
.L452:
	.loc 2 1751 0
	movq	-24(%rbp), %rax	# str, str.63
	addq	$1, %rax	#, str.64
	movq	%rax, -24(%rbp)	# str.64, str
	.loc 2 1752 0
	movl	-44(%rbp), %eax	# i, tmp139
	andl	$-268435456, %eax	#, D.10143
	orl	%eax, -40(%rbp)	# D.10143, overflow
	.loc 2 1753 0
	movl	-44(%rbp), %eax	# i, tmp140
	sall	$4, %eax	#, D.10143
	movl	%eax, %ebx	# D.10143, D.10143
	movl	-52(%rbp), %eax	# c, c.65
	movl	%eax, %edi	# c.65,
	call	hex_digit_value	#
	addl	%ebx, %eax	# D.10143, tmp141
	movl	%eax, -44(%rbp)	# tmp141, i
	.loc 2 1754 0
	movl	$1, -36(%rbp)	#, digits_found
.L451:
	.loc 2 1746 0 discriminator 1
	movq	-24(%rbp), %rax	# str, str.66
	cmpq	-88(%rbp), %rax	# limit, str.66
	jb	.L454	#,
.L453:
	.loc 2 1757 0
	cmpl	$0, -36(%rbp)	#, digits_found
	jne	.L455	#,
	.loc 2 1758 0
	movq	-72(%rbp), %rax	# pfile, tmp142
	movl	$.LC105, %esi	#,
	movq	%rax, %rdi	# tmp142,
	movl	$0, %eax	#,
	call	cpp_error	#
.L455:
	.loc 2 1760 0
	movl	-44(%rbp), %edx	# i, D.10146
	movl	-44(%rbp), %eax	# i, D.10146
	andq	-96(%rbp), %rax	# mask, D.10146
	cmpq	%rax, %rdx	# D.10146, D.10146
	setne	%al	#, D.10147
	movzbl	%al, %eax	# D.10147, D.10143
	orl	-40(%rbp), %eax	# overflow, D.10143
	testl	%eax, %eax	# D.10143
	je	.L456	#,
	.loc 2 1762 0
	movq	-72(%rbp), %rax	# pfile, tmp143
	movl	$.LC106, %esi	#,
	movq	%rax, %rdi	# tmp143,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
	.loc 2 1763 0
	movq	-96(%rbp), %rax	# mask, tmp144
	andl	%eax, -44(%rbp)	# D.10143, i
.L456:
	.loc 2 1765 0
	movl	-44(%rbp), %eax	# i, tmp145
	movl	%eax, -52(%rbp)	# tmp145, c
.LBE20:
	.loc 2 1767 0
	jmp	.L445	#
.L450:
	jmp	.L445	#
.L434:
.LBB21:
	.loc 2 1772 0
	movl	-52(%rbp), %eax	# c, c.67
	subl	$48, %eax	#, tmp146
	movl	%eax, -32(%rbp)	# tmp146, i
	.loc 2 1773 0
	movl	$0, -28(%rbp)	#, count
	.loc 2 1775 0
	jmp	.L457	#
.L459:
	.loc 2 1777 0
	movq	-24(%rbp), %rax	# str, str.68
	movzbl	(%rax), %eax	# *str.68_63, D.10142
	movzbl	%al, %eax	# D.10142, c.69
	movl	%eax, -52(%rbp)	# c.69, c
	.loc 2 1778 0
	movl	-52(%rbp), %eax	# c, c.70
	cmpl	$47, %eax	#, c.70
	jbe	.L458	#,
	.loc 2 1778 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# c, c.71
	cmpl	$55, %eax	#, c.71
	ja	.L458	#,
	.loc 2 1780 0 is_stmt 1
	movq	-24(%rbp), %rax	# str, str.72
	addq	$1, %rax	#, str.73
	movq	%rax, -24(%rbp)	# str.73, str
	.loc 2 1781 0
	movl	-32(%rbp), %eax	# i, tmp147
	leal	0(,%rax,8), %edx	#, D.10143
	movl	-52(%rbp), %eax	# c, c.74
	addl	%edx, %eax	# D.10143, D.10143
	subl	$48, %eax	#, tmp148
	movl	%eax, -32(%rbp)	# tmp148, i
.L457:
	.loc 2 1775 0 discriminator 1
	movq	-24(%rbp), %rax	# str, str.75
	cmpq	-88(%rbp), %rax	# limit, str.75
	jae	.L458	#,
	.loc 2 1775 0 is_stmt 0 discriminator 2
	addl	$1, -28(%rbp)	#, count
	cmpl	$2, -28(%rbp)	#, count
	jle	.L459	#,
.L458:
	.loc 2 1784 0 is_stmt 1
	movl	-32(%rbp), %edx	# i, D.10146
	movl	-32(%rbp), %eax	# i, D.10146
	andq	-96(%rbp), %rax	# mask, D.10146
	cmpq	%rax, %rdx	# D.10146, D.10146
	je	.L460	#,
	.loc 2 1786 0
	movq	-72(%rbp), %rax	# pfile, tmp149
	movl	$.LC107, %esi	#,
	movq	%rax, %rdi	# tmp149,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
	.loc 2 1787 0
	movq	-96(%rbp), %rax	# mask, tmp150
	andl	%eax, -32(%rbp)	# D.10143, i
.L460:
	.loc 2 1789 0
	movl	-32(%rbp), %eax	# i, tmp151
	movl	%eax, -52(%rbp)	# tmp151, c
.LBE21:
	.loc 2 1791 0
	jmp	.L445	#
.L430:
	.loc 2 1794 0
	movl	$1, -48(%rbp)	#, unknown
	.loc 2 1795 0
	jmp	.L445	#
.L465:
	.loc 2 1706 0
	nop
.L445:
	.loc 2 1798 0
	cmpl	$0, -48(%rbp)	#, unknown
	je	.L461	#,
	.loc 2 1800 0
	movl	-52(%rbp), %eax	# c, c.76
	movzbl	%al, %eax	# c.76, D.10143
	movl	%eax, %eax	# D.10143, tmp152
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.10144
	movzwl	%ax, %eax	# D.10144, D.10145
	andl	$172, %eax	#, D.10145
	testl	%eax, %eax	# D.10145
	je	.L462	#,
	.loc 2 1801 0
	movl	-52(%rbp), %edx	# c, c.77
	movq	-72(%rbp), %rax	# pfile, tmp153
	movl	$.LC108, %esi	#,
	movq	%rax, %rdi	# tmp153,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
	jmp	.L461	#
.L462:
	.loc 2 1803 0
	movl	-52(%rbp), %edx	# c, c.78
	movq	-72(%rbp), %rax	# pfile, tmp154
	movl	$.LC109, %esi	#,
	movq	%rax, %rdi	# tmp154,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L461:
	.loc 2 1806 0
	movl	-52(%rbp), %eax	# c, c.79
	movl	%eax, %eax	# c.79, D.10146
	cmpq	-96(%rbp), %rax	# mask, D.10146
	jbe	.L463	#,
	.loc 2 1807 0
	movq	-72(%rbp), %rax	# pfile, tmp155
	movl	$.LC110, %esi	#,
	movq	%rax, %rdi	# tmp155,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L463:
	.loc 2 1809 0
	movq	-24(%rbp), %rdx	# str, str.80
	movq	-80(%rbp), %rax	# pstr, tmp156
	movq	%rdx, (%rax)	# str.80, *pstr_10(D)
	.loc 2 1810 0
	movl	-52(%rbp), %eax	# c, D.10143
	.loc 2 1811 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	cpp_parse_escape, .-cpp_parse_escape
	.section	.rodata
.LC111:
	.string	"empty character constant"
.LC112:
	.string	"character constant too long"
	.align 8
.LC113:
	.string	"multi-character character constant"
	.text
	.globl	cpp_interpret_charconst
	.type	cpp_interpret_charconst, @function
cpp_interpret_charconst:
.LFB41:
	.loc 2 1833 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# pfile, pfile
	movq	%rsi, -80(%rbp)	# token, token
	movl	%edx, -84(%rbp)	# warn_multi, warn_multi
	movl	%ecx, -88(%rbp)	# traditional, traditional
	movq	%r8, -96(%rbp)	# pchars_seen, pchars_seen
	.loc 2 1834 0
	movq	-80(%rbp), %rax	# token, tmp91
	movq	16(%rax), %rax	# token_9(D)->val.str.text, str.81
	movq	%rax, -32(%rbp)	# str.81, str
	.loc 2 1835 0
	movq	-32(%rbp), %rdx	# str, str.82
	movq	-80(%rbp), %rax	# token, tmp92
	movl	8(%rax), %eax	# token_9(D)->val.str.len, D.10157
	movl	%eax, %eax	# D.10157, D.10158
	addq	%rdx, %rax	# str.82, tmp93
	movq	%rax, -8(%rbp)	# tmp93, limit
	.loc 2 1836 0
	movl	$0, -52(%rbp)	#, chars_seen
	.loc 2 1839 0
	movq	$0, -16(%rbp)	#, result
	.loc 2 1847 0
	movq	-80(%rbp), %rax	# token, tmp94
	movzbl	6(%rax), %eax	# token_9(D)->type, D.10159
	cmpb	$58, %al	#, D.10159
	jne	.L467	#,
	.loc 2 1849 0
	movl	$8, -48(%rbp)	#, width
	.loc 2 1850 0
	movq	-72(%rbp), %rax	# pfile, tmp95
	movzbl	741(%rax), %eax	# pfile_19(D)->opts.signed_char, D.10159
	testb	%al, %al	# D.10159
	sete	%al	#, tmp96
	movb	%al, -53(%rbp)	# tmp96, unsigned_p
	jmp	.L468	#
.L467:
	.loc 2 1854 0
	movl	$32, -48(%rbp)	#, width
	.loc 2 1855 0
	movb	$0, -53(%rbp)	#, unsigned_p
.L468:
	.loc 2 1858 0
	cmpl	$63, -48(%rbp)	#, width
	ja	.L469	#,
	.loc 2 1859 0
	movl	-48(%rbp), %eax	# width, width.83
	movl	$1, %edx	#, tmp97
	movl	%eax, %ecx	# width.83, tmp129
	salq	%cl, %rdx	# tmp129, D.10160
	movq	%rdx, %rax	# D.10160, D.10160
	subq	$1, %rax	#, tmp98
	movq	%rax, -24(%rbp)	# tmp98, mask
	jmp	.L470	#
.L469:
	.loc 2 1861 0
	movq	$-1, -24(%rbp)	#, mask
.L470:
	.loc 2 1862 0
	movl	$64, %eax	#, tmp102
	movl	$0, %edx	#, tmp101
	divl	-48(%rbp)	# width
	movl	%eax, -40(%rbp)	# tmp100, max_chars
	.loc 2 1864 0
	jmp	.L471	#
.L474:
	.loc 2 1882 0
	movq	-32(%rbp), %rax	# str, str.84
	leaq	1(%rax), %rdx	#, str.86
	movq	%rdx, -32(%rbp)	# str.86, str
	movzbl	(%rax), %eax	# *str.85_31, D.10159
	movzbl	%al, %eax	# D.10159, tmp103
	movl	%eax, -44(%rbp)	# tmp103, c
	.loc 2 1885 0
	cmpl	$92, -44(%rbp)	#, c
	jne	.L472	#,
	.loc 2 1886 0
	movl	-88(%rbp), %edi	# traditional, tmp104
	movq	-24(%rbp), %rcx	# mask, tmp105
	movq	-8(%rbp), %rdx	# limit, tmp106
	leaq	-32(%rbp), %rsi	#, tmp107
	movq	-72(%rbp), %rax	# pfile, tmp108
	movl	%edi, %r8d	# tmp104,
	movq	%rax, %rdi	# tmp108,
	call	cpp_parse_escape	#
	movl	%eax, -44(%rbp)	# tmp109, c
.L472:
	.loc 2 1894 0
	addl	$1, -52(%rbp)	#, chars_seen
	movl	-52(%rbp), %eax	# chars_seen, tmp110
	cmpl	-40(%rbp), %eax	# max_chars, tmp110
	ja	.L471	#,
	.loc 2 1896 0
	cmpl	$63, -48(%rbp)	#, width
	ja	.L473	#,
	.loc 2 1897 0
	movl	-48(%rbp), %eax	# width, width.87
	movq	-16(%rbp), %rdx	# result, tmp111
	movl	%eax, %ecx	# width.87, tmp131
	salq	%cl, %rdx	# tmp131, D.10161
	movq	%rdx, %rax	# D.10161, D.10161
	movq	%rax, %rdx	# D.10161, D.10160
	movl	-44(%rbp), %eax	# c, D.10160
	andq	-24(%rbp), %rax	# mask, D.10160
	orq	%rdx, %rax	# D.10160, D.10160
	movq	%rax, -16(%rbp)	# D.10160, result
	jmp	.L471	#
.L473:
	.loc 2 1899 0
	movl	-44(%rbp), %eax	# c, tmp132
	movq	%rax, -16(%rbp)	# tmp132, result
.L471:
	.loc 2 1864 0 discriminator 1
	movq	-32(%rbp), %rax	# str, str.88
	cmpq	-8(%rbp), %rax	# limit, str.88
	jb	.L474	#,
	.loc 2 1903 0
	cmpl	$0, -52(%rbp)	#, chars_seen
	jne	.L475	#,
	.loc 2 1904 0
	movq	-72(%rbp), %rax	# pfile, tmp112
	movl	$.LC111, %esi	#,
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L476	#
.L475:
	.loc 2 1905 0
	movl	-52(%rbp), %eax	# chars_seen, tmp113
	cmpl	-40(%rbp), %eax	# max_chars, tmp113
	jbe	.L477	#,
	.loc 2 1907 0
	movl	-40(%rbp), %eax	# max_chars, tmp114
	movl	%eax, -52(%rbp)	# tmp114, chars_seen
	.loc 2 1908 0
	movq	-72(%rbp), %rax	# pfile, tmp115
	movl	$.LC112, %esi	#,
	movq	%rax, %rdi	# tmp115,
	movl	$0, %eax	#,
	call	cpp_warning	#
	jmp	.L476	#
.L477:
	.loc 2 1910 0
	cmpl	$1, -52(%rbp)	#, chars_seen
	jbe	.L476	#,
	.loc 2 1910 0 is_stmt 0 discriminator 1
	cmpl	$0, -88(%rbp)	#, traditional
	jne	.L476	#,
	cmpl	$0, -84(%rbp)	#, warn_multi
	je	.L476	#,
	.loc 2 1911 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp116
	movl	$.LC113, %esi	#,
	movq	%rax, %rdi	# tmp116,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L476:
	.loc 2 1914 0
	cmpl	$0, -52(%rbp)	#, chars_seen
	je	.L478	#,
.LBB22:
	.loc 2 1916 0
	movl	-52(%rbp), %eax	# chars_seen, tmp118
	imull	-48(%rbp), %eax	# width, tmp117
	movl	%eax, -36(%rbp)	# tmp117, nbits
	.loc 2 1918 0
	movl	$64, %eax	#, tmp119
	subl	-36(%rbp), %eax	# nbits, D.10157
	movq	$-1, %rdx	#, tmp120
	movl	%eax, %ecx	# D.10162, tmp134
	shrq	%cl, %rdx	# tmp134, tmp121
	movq	%rdx, %rax	# tmp121, tmp121
	movq	%rax, -24(%rbp)	# tmp121, mask
	.loc 2 1919 0
	cmpb	$0, -53(%rbp)	#, unsigned_p
	jne	.L479	#,
	.loc 2 1919 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# nbits, tmp122
	subl	$1, %eax	#, D.10157
	movq	-16(%rbp), %rdx	# result, tmp123
	movl	%eax, %ecx	# D.10162, tmp136
	sarq	%cl, %rdx	# tmp136, D.10161
	movq	%rdx, %rax	# D.10161, D.10161
	andl	$1, %eax	#, D.10161
	testq	%rax, %rax	# D.10161
	jne	.L480	#,
.L479:
	.loc 2 1920 0 is_stmt 1
	movq	-16(%rbp), %rax	# result, result.89
	andq	-24(%rbp), %rax	# mask, D.10160
	movq	%rax, -16(%rbp)	# D.10160, result
	jmp	.L478	#
.L480:
	.loc 2 1922 0
	movq	-24(%rbp), %rax	# mask, tmp124
	notq	%rax	# D.10160
	movq	%rax, %rdx	# D.10160, D.10160
	movq	-16(%rbp), %rax	# result, result.90
	orq	%rdx, %rax	# D.10160, D.10160
	movq	%rax, -16(%rbp)	# D.10160, result
.L478:
.LBE22:
	.loc 2 1925 0
	movq	-96(%rbp), %rax	# pchars_seen, tmp125
	movl	-52(%rbp), %edx	# chars_seen, tmp126
	movl	%edx, (%rax)	# tmp126, *pchars_seen_63(D)
	.loc 2 1926 0
	movq	-16(%rbp), %rax	# result, D.10161
	.loc 2 1927 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	cpp_interpret_charconst, .-cpp_interpret_charconst
	.type	new_buff, @function
new_buff:
.LFB42:
	.loc 2 1962 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# len, len
	.loc 2 1966 0
	cmpq	$7999, -24(%rbp)	#, len
	ja	.L483	#,
	.loc 2 1967 0
	movq	$8000, -24(%rbp)	#, len
.L483:
	.loc 2 1968 0
	movq	-24(%rbp), %rax	# len, tmp64
	addq	$7, %rax	#, D.10166
	andq	$-8, %rax	#, tmp65
	movq	%rax, -24(%rbp)	# tmp65, len
	.loc 2 1970 0
	movq	-24(%rbp), %rax	# len, tmp66
	addq	$32, %rax	#, D.10166
	movq	%rax, %rdi	# D.10166,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp67, base
	.loc 2 1971 0
	movq	-24(%rbp), %rax	# len, tmp72
	movq	-16(%rbp), %rdx	# base, tmp73
	addq	%rdx, %rax	# tmp73, tmp71
	movq	%rax, -8(%rbp)	# tmp71, result
	.loc 2 1972 0
	movq	-8(%rbp), %rax	# result, tmp74
	movq	-16(%rbp), %rdx	# base, tmp75
	movq	%rdx, 8(%rax)	# tmp75, result_8->base
	.loc 2 1973 0
	movq	-8(%rbp), %rax	# result, tmp76
	movq	-16(%rbp), %rdx	# base, tmp77
	movq	%rdx, 16(%rax)	# tmp77, result_8->cur
	.loc 2 1974 0
	movq	-24(%rbp), %rax	# len, tmp78
	movq	-16(%rbp), %rdx	# base, tmp79
	addq	%rax, %rdx	# tmp78, D.10167
	movq	-8(%rbp), %rax	# result, tmp80
	movq	%rdx, 24(%rax)	# D.10167, result_8->limit
	.loc 2 1975 0
	movq	-8(%rbp), %rax	# result, tmp81
	movq	$0, (%rax)	#, result_8->next
	.loc 2 1976 0
	movq	-8(%rbp), %rax	# result, D.10168
	.loc 2 1977 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	new_buff, .-new_buff
	.globl	_cpp_release_buff
	.type	_cpp_release_buff, @function
_cpp_release_buff:
.LFB43:
	.loc 2 1984 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# buff, buff
	.loc 2 1985 0
	movq	-32(%rbp), %rax	# buff, tmp61
	movq	%rax, -8(%rbp)	# tmp61, end
	.loc 2 1987 0
	jmp	.L486	#
.L487:
	.loc 2 1988 0
	movq	-8(%rbp), %rax	# end, tmp62
	movq	(%rax), %rax	# end_1->next, tmp63
	movq	%rax, -8(%rbp)	# tmp63, end
.L486:
	.loc 2 1987 0 discriminator 1
	movq	-8(%rbp), %rax	# end, tmp64
	movq	(%rax), %rax	# end_1->next, D.10169
	testq	%rax, %rax	# D.10169
	jne	.L487	#,
	.loc 2 1989 0
	movq	-24(%rbp), %rax	# pfile, tmp65
	movq	88(%rax), %rdx	# pfile_6(D)->free_buffs, D.10170
	movq	-8(%rbp), %rax	# end, tmp66
	movq	%rdx, (%rax)	# D.10170, end_1->next
	.loc 2 1990 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	-32(%rbp), %rdx	# buff, tmp68
	movq	%rdx, 88(%rax)	# tmp68, pfile_6(D)->free_buffs
	.loc 2 1991 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	_cpp_release_buff, .-_cpp_release_buff
	.globl	_cpp_get_buff
	.type	_cpp_get_buff, @function
_cpp_get_buff:
.LFB44:
	.loc 2 1998 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# min_size, min_size
	.loc 2 2001 0
	movq	-40(%rbp), %rax	# pfile, tmp76
	addq	$88, %rax	#, tmp75
	movq	%rax, -24(%rbp)	# tmp75, p
.L493:
.LBB23:
	.loc 2 2005 0
	movq	-24(%rbp), %rax	# p, tmp77
	movq	(%rax), %rax	# *p_1, D.10171
	testq	%rax, %rax	# D.10171
	jne	.L489	#,
	.loc 2 2006 0
	movq	-48(%rbp), %rax	# min_size, tmp78
	movq	%rax, %rdi	# tmp78,
	call	new_buff	#
	jmp	.L490	#
.L489:
	.loc 2 2007 0
	movq	-24(%rbp), %rax	# p, tmp79
	movq	(%rax), %rax	# *p_1, tmp80
	movq	%rax, -16(%rbp)	# tmp80, result
	.loc 2 2008 0
	movq	-16(%rbp), %rax	# result, tmp81
	movq	24(%rax), %rax	# result_8->limit, D.10172
	movq	%rax, %rdx	# D.10172, D.10173
	movq	-16(%rbp), %rax	# result, tmp82
	movq	8(%rax), %rax	# result_8->base, D.10172
	subq	%rax, %rdx	# D.10173, D.10173
	movq	%rdx, %rax	# D.10173, D.10173
	movq	%rax, -8(%rbp)	# D.10173, size
	.loc 2 2011 0
	movq	-8(%rbp), %rax	# size, tmp83
	cmpq	-48(%rbp), %rax	# min_size, tmp83
	jb	.L491	#,
	.loc 2 2011 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx	# min_size, tmp84
	movq	%rdx, %rax	# tmp84, tmp85
	addq	%rax, %rax	# tmp85
	addq	%rdx, %rax	# tmp84, D.10174
	shrq	%rax	# D.10174
	addq	$8000, %rax	#, D.10174
	cmpq	-8(%rbp), %rax	# size, D.10174
	jb	.L491	#,
	.loc 2 2012 0 is_stmt 1
	nop
.LBE23:
	.loc 2 2015 0
	movq	-16(%rbp), %rax	# result, tmp87
	movq	(%rax), %rdx	# result_8->next, D.10175
	movq	-24(%rbp), %rax	# p, tmp88
	movq	%rdx, (%rax)	# D.10175, *p_1
	.loc 2 2016 0
	movq	-16(%rbp), %rax	# result, tmp89
	movq	$0, (%rax)	#, result_8->next
	.loc 2 2017 0
	movq	-16(%rbp), %rax	# result, tmp90
	movq	8(%rax), %rdx	# result_8->base, D.10172
	movq	-16(%rbp), %rax	# result, tmp91
	movq	%rdx, 16(%rax)	# D.10172, result_8->cur
	.loc 2 2018 0
	movq	-16(%rbp), %rax	# result, D.10171
	jmp	.L490	#
.L491:
	.loc 2 2001 0
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rax	# *p_1, D.10171
	movq	%rax, -24(%rbp)	# D.10171, p
	.loc 2 2013 0
	jmp	.L493	#
.L490:
	.loc 2 2019 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	_cpp_get_buff, .-_cpp_get_buff
	.globl	_cpp_append_extend_buff
	.type	_cpp_append_extend_buff, @function
_cpp_append_extend_buff:
.LFB45:
	.loc 2 2030 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# buff, buff
	movq	%rdx, -40(%rbp)	# min_extra, min_extra
	.loc 2 2031 0
	movq	-32(%rbp), %rax	# buff, tmp76
	movq	24(%rax), %rax	# buff_1(D)->limit, D.10176
	movq	%rax, %rdx	# D.10176, D.10177
	movq	-32(%rbp), %rax	# buff, tmp77
	movq	16(%rax), %rax	# buff_1(D)->cur, D.10176
	subq	%rax, %rdx	# D.10177, D.10177
	movq	%rdx, %rax	# D.10177, D.10177
	addq	%rax, %rax	# D.10177
	movq	%rax, %rdx	# D.10177, D.10178
	movq	-40(%rbp), %rax	# min_extra, tmp81
	addq	%rdx, %rax	# D.10178, tmp80
	movq	%rax, -16(%rbp)	# tmp80, size
	.loc 2 2032 0
	movq	-16(%rbp), %rdx	# size, tmp82
	movq	-24(%rbp), %rax	# pfile, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	_cpp_get_buff	#
	movq	%rax, -8(%rbp)	# tmp84, new_buff
	.loc 2 2034 0
	movq	-32(%rbp), %rax	# buff, tmp85
	movq	-8(%rbp), %rdx	# new_buff, tmp86
	movq	%rdx, (%rax)	# tmp86, buff_1(D)->next
	.loc 2 2035 0
	movq	-32(%rbp), %rax	# buff, tmp87
	movq	24(%rax), %rax	# buff_1(D)->limit, D.10176
	movq	%rax, %rdx	# D.10176, D.10177
	movq	-32(%rbp), %rax	# buff, tmp88
	movq	16(%rax), %rax	# buff_1(D)->cur, D.10176
	subq	%rax, %rdx	# D.10177, D.10177
	movq	%rdx, %rax	# D.10177, D.10177
	movq	%rax, %rdx	# D.10177, D.10178
	movq	-32(%rbp), %rax	# buff, tmp89
	movq	16(%rax), %rcx	# buff_1(D)->cur, D.10176
	movq	-8(%rbp), %rax	# new_buff, tmp90
	movq	8(%rax), %rax	# new_buff_12->base, D.10176
	movq	%rcx, %rsi	# D.10176,
	movq	%rax, %rdi	# D.10176,
	call	memcpy	#
	.loc 2 2036 0
	movq	-8(%rbp), %rax	# new_buff, D.10179
	.loc 2 2037 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	_cpp_append_extend_buff, .-_cpp_append_extend_buff
	.globl	_cpp_extend_buff
	.type	_cpp_extend_buff, @function
_cpp_extend_buff:
.LFB46:
	.loc 2 2049 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# pbuff, pbuff
	movq	%rdx, -56(%rbp)	# min_extra, min_extra
	.loc 2 2050 0
	movq	-48(%rbp), %rax	# pbuff, tmp74
	movq	(%rax), %rax	# *pbuff_1(D), tmp75
	movq	%rax, -24(%rbp)	# tmp75, old_buff
	.loc 2 2051 0
	movq	-24(%rbp), %rax	# old_buff, tmp76
	movq	24(%rax), %rax	# old_buff_2->limit, D.10180
	movq	%rax, %rdx	# D.10180, D.10181
	movq	-24(%rbp), %rax	# old_buff, tmp77
	movq	16(%rax), %rax	# old_buff_2->cur, D.10180
	subq	%rax, %rdx	# D.10181, D.10181
	movq	%rdx, %rax	# D.10181, D.10181
	addq	%rax, %rax	# D.10181
	movq	%rax, %rdx	# D.10181, D.10182
	movq	-56(%rbp), %rax	# min_extra, tmp81
	addq	%rdx, %rax	# D.10182, tmp80
	movq	%rax, -16(%rbp)	# tmp80, size
	.loc 2 2053 0
	movq	-16(%rbp), %rdx	# size, tmp82
	movq	-40(%rbp), %rax	# pfile, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	_cpp_get_buff	#
	movq	%rax, -8(%rbp)	# tmp84, new_buff
	.loc 2 2054 0
	movq	-24(%rbp), %rax	# old_buff, tmp85
	movq	24(%rax), %rax	# old_buff_2->limit, D.10180
	movq	%rax, %rdx	# D.10180, D.10181
	movq	-24(%rbp), %rax	# old_buff, tmp86
	movq	16(%rax), %rax	# old_buff_2->cur, D.10180
	subq	%rax, %rdx	# D.10181, D.10181
	movq	%rdx, %rax	# D.10181, D.10181
	movq	%rax, %rdx	# D.10181, D.10182
	movq	-24(%rbp), %rax	# old_buff, tmp87
	movq	16(%rax), %rcx	# old_buff_2->cur, D.10180
	movq	-8(%rbp), %rax	# new_buff, tmp88
	movq	8(%rax), %rax	# new_buff_13->base, D.10180
	movq	%rcx, %rsi	# D.10180,
	movq	%rax, %rdi	# D.10180,
	call	memcpy	#
	.loc 2 2055 0
	movq	-8(%rbp), %rax	# new_buff, tmp89
	movq	-24(%rbp), %rdx	# old_buff, tmp90
	movq	%rdx, (%rax)	# tmp90, new_buff_13->next
	.loc 2 2056 0
	movq	-48(%rbp), %rax	# pbuff, tmp91
	movq	-8(%rbp), %rdx	# new_buff, tmp92
	movq	%rdx, (%rax)	# tmp92, *pbuff_1(D)
	.loc 2 2057 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	_cpp_extend_buff, .-_cpp_extend_buff
	.globl	_cpp_free_buff
	.type	_cpp_free_buff, @function
_cpp_free_buff:
.LFB47:
	.loc 2 2063 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# buff, buff
	.loc 2 2066 0
	jmp	.L498	#
.L499:
	.loc 2 2068 0 discriminator 2
	movq	-24(%rbp), %rax	# buff, tmp60
	movq	(%rax), %rax	# buff_1->next, tmp61
	movq	%rax, -8(%rbp)	# tmp61, next
	.loc 2 2069 0 discriminator 2
	movq	-24(%rbp), %rax	# buff, tmp62
	movq	8(%rax), %rax	# buff_1->base, D.10183
	movq	%rax, %rdi	# D.10183,
	call	free	#
	.loc 2 2066 0 discriminator 2
	movq	-8(%rbp), %rax	# next, tmp63
	movq	%rax, -24(%rbp)	# tmp63, buff
.L498:
	.loc 2 2066 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, buff
	jne	.L499	#,
	.loc 2 2071 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	_cpp_free_buff, .-_cpp_free_buff
	.globl	_cpp_unaligned_alloc
	.type	_cpp_unaligned_alloc, @function
_cpp_unaligned_alloc:
.LFB48:
	.loc 2 2078 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# len, len
	.loc 2 2079 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movq	80(%rax), %rax	# pfile_3(D)->u_buff, tmp69
	movq	%rax, -16(%rbp)	# tmp69, buff
	.loc 2 2080 0
	movq	-16(%rbp), %rax	# buff, tmp70
	movq	16(%rax), %rax	# buff_4->cur, tmp71
	movq	%rax, -8(%rbp)	# tmp71, result
	.loc 2 2082 0
	movq	-16(%rbp), %rax	# buff, tmp72
	movq	24(%rax), %rax	# buff_4->limit, D.10184
	movq	%rax, %rdx	# D.10184, D.10185
	movq	-8(%rbp), %rax	# result, result.91
	subq	%rax, %rdx	# result.91, D.10185
	movq	%rdx, %rax	# D.10185, D.10185
	cmpq	-32(%rbp), %rax	# len, D.10186
	jae	.L501	#,
	.loc 2 2084 0
	movq	-32(%rbp), %rdx	# len, tmp73
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	_cpp_get_buff	#
	movq	%rax, -16(%rbp)	# tmp75, buff
	.loc 2 2085 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movq	80(%rax), %rdx	# pfile_3(D)->u_buff, D.10187
	movq	-16(%rbp), %rax	# buff, tmp77
	movq	%rdx, (%rax)	# D.10187, buff_12->next
	.loc 2 2086 0
	movq	-24(%rbp), %rax	# pfile, tmp78
	movq	-16(%rbp), %rdx	# buff, tmp79
	movq	%rdx, 80(%rax)	# tmp79, pfile_3(D)->u_buff
	.loc 2 2087 0
	movq	-16(%rbp), %rax	# buff, tmp80
	movq	16(%rax), %rax	# buff_12->cur, tmp81
	movq	%rax, -8(%rbp)	# tmp81, result
.L501:
	.loc 2 2090 0
	movq	-32(%rbp), %rax	# len, tmp82
	movq	-8(%rbp), %rdx	# result, tmp83
	addq	%rax, %rdx	# tmp82, D.10184
	movq	-16(%rbp), %rax	# buff, tmp84
	movq	%rdx, 16(%rax)	# D.10184, buff_1->cur
	.loc 2 2091 0
	movq	-8(%rbp), %rax	# result, D.10184
	.loc 2 2092 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	_cpp_unaligned_alloc, .-_cpp_unaligned_alloc
	.globl	_cpp_aligned_alloc
	.type	_cpp_aligned_alloc, @function
_cpp_aligned_alloc:
.LFB49:
	.loc 2 2108 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# len, len
	.loc 2 2109 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movq	72(%rax), %rax	# pfile_3(D)->a_buff, tmp69
	movq	%rax, -16(%rbp)	# tmp69, buff
	.loc 2 2110 0
	movq	-16(%rbp), %rax	# buff, tmp70
	movq	16(%rax), %rax	# buff_4->cur, tmp71
	movq	%rax, -8(%rbp)	# tmp71, result
	.loc 2 2112 0
	movq	-16(%rbp), %rax	# buff, tmp72
	movq	24(%rax), %rax	# buff_4->limit, D.10188
	movq	%rax, %rdx	# D.10188, D.10189
	movq	-8(%rbp), %rax	# result, result.92
	subq	%rax, %rdx	# result.92, D.10189
	movq	%rdx, %rax	# D.10189, D.10189
	cmpq	-32(%rbp), %rax	# len, D.10190
	jae	.L504	#,
	.loc 2 2114 0
	movq	-32(%rbp), %rdx	# len, tmp73
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	_cpp_get_buff	#
	movq	%rax, -16(%rbp)	# tmp75, buff
	.loc 2 2115 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movq	72(%rax), %rdx	# pfile_3(D)->a_buff, D.10191
	movq	-16(%rbp), %rax	# buff, tmp77
	movq	%rdx, (%rax)	# D.10191, buff_12->next
	.loc 2 2116 0
	movq	-24(%rbp), %rax	# pfile, tmp78
	movq	-16(%rbp), %rdx	# buff, tmp79
	movq	%rdx, 72(%rax)	# tmp79, pfile_3(D)->a_buff
	.loc 2 2117 0
	movq	-16(%rbp), %rax	# buff, tmp80
	movq	16(%rax), %rax	# buff_12->cur, tmp81
	movq	%rax, -8(%rbp)	# tmp81, result
.L504:
	.loc 2 2120 0
	movq	-32(%rbp), %rax	# len, tmp82
	movq	-8(%rbp), %rdx	# result, tmp83
	addq	%rax, %rdx	# tmp82, D.10188
	movq	-16(%rbp), %rax	# buff, tmp84
	movq	%rdx, 16(%rax)	# D.10188, buff_1->cur
	.loc 2 2121 0
	movq	-8(%rbp), %rax	# result, D.10188
	.loc 2 2122 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	_cpp_aligned_alloc, .-_cpp_aligned_alloc
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 8 "obstack.h"
	.file 9 "hashtable.h"
	.file 10 "line-map.h"
	.file 11 "cpplib.h"
	.file 12 "./safe-ctype.h"
	.file 13 "libiberty.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x290d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF490
	.byte	0x1
	.long	.LASF491
	.long	.LASF492
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x85
	.long	0x56
	.uleb128 0x5
	.long	.LASF10
	.byte	0x4
	.byte	0x88
	.long	0x56
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0x8c
	.long	0x44
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0x8d
	.long	0x44
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x5
	.long	.LASF14
	.byte	0x5
	.byte	0x30
	.long	0xbd
	.uleb128 0x7
	.long	.LASF44
	.byte	0xd8
	.byte	0x6
	.byte	0xf6
	.long	0x23e
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.byte	0xf7
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0xfc
	.long	0xa5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0xfd
	.long	0xa5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.byte	0xfe
	.long	0xa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.byte	0xff
	.long	0xa5
	.byte	0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x100
	.long	0xa5
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x101
	.long	0xa5
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x102
	.long	0xa5
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x103
	.long	0xa5
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x105
	.long	0xa5
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x106
	.long	0xa5
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x107
	.long	0xa5
	.byte	0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x109
	.long	0x286
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x10b
	.long	0x28c
	.byte	0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x10d
	.long	0x2d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x113
	.long	0x8f
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x117
	.long	0x64
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x118
	.long	0x6b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x119
	.long	0x292
	.byte	0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x11d
	.long	0x2a2
	.byte	0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x126
	.long	0x9a
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x12f
	.long	0x42
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x130
	.long	0x42
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x131
	.long	0x42
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x132
	.long	0x42
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x133
	.long	0x4b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x6
	.value	0x137
	.long	0x2a8
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	0xab
	.long	0x24e
	.uleb128 0xb
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF493
	.byte	0x6
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF45
	.byte	0x18
	.byte	0x6
	.byte	0xa1
	.long	0x286
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0xa2
	.long	0x286
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0xa3
	.long	0x28c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF48
	.byte	0x6
	.byte	0xa7
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x255
	.uleb128 0x6
	.byte	0x8
	.long	0xbd
	.uleb128 0xa
	.long	0xab
	.long	0x2a2
	.uleb128 0xb
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x24e
	.uleb128 0xa
	.long	0xab
	.long	0x2b8
	.uleb128 0xb
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2be
	.uleb128 0xd
	.long	0xab
	.uleb128 0xe
	.byte	0x4
	.byte	0xc
	.byte	0x2c
	.long	0x344
	.uleb128 0xf
	.long	.LASF49
	.sleb128 1
	.uleb128 0xf
	.long	.LASF50
	.sleb128 2
	.uleb128 0xf
	.long	.LASF51
	.sleb128 4
	.uleb128 0xf
	.long	.LASF52
	.sleb128 8
	.uleb128 0xf
	.long	.LASF53
	.sleb128 16
	.uleb128 0xf
	.long	.LASF54
	.sleb128 32
	.uleb128 0xf
	.long	.LASF55
	.sleb128 64
	.uleb128 0xf
	.long	.LASF56
	.sleb128 128
	.uleb128 0xf
	.long	.LASF57
	.sleb128 256
	.uleb128 0xf
	.long	.LASF58
	.sleb128 512
	.uleb128 0xf
	.long	.LASF59
	.sleb128 1024
	.uleb128 0xf
	.long	.LASF60
	.sleb128 2048
	.uleb128 0xf
	.long	.LASF61
	.sleb128 136
	.uleb128 0xf
	.long	.LASF62
	.sleb128 140
	.uleb128 0xf
	.long	.LASF63
	.sleb128 516
	.uleb128 0xf
	.long	.LASF64
	.sleb128 172
	.uleb128 0xf
	.long	.LASF65
	.sleb128 3072
	.uleb128 0xf
	.long	.LASF66
	.sleb128 3088
	.byte	0
	.uleb128 0x5
	.long	.LASF67
	.byte	0x7
	.byte	0x30
	.long	0x84
	.uleb128 0x5
	.long	.LASF68
	.byte	0x7
	.byte	0x3c
	.long	0x79
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF69
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF70
	.uleb128 0x7
	.long	.LASF71
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x399
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0xa3
	.long	0xa5
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0xa4
	.long	0x399
	.byte	0x8
	.uleb128 0x8
	.long	.LASF74
	.byte	0x8
	.byte	0xa5
	.long	0x23e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x368
	.uleb128 0x7
	.long	.LASF75
	.byte	0x58
	.byte	0x8
	.byte	0xa8
	.long	0x451
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0xaa
	.long	0x44
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0xab
	.long	0x399
	.byte	0x8
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0xac
	.long	0xa5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0xad
	.long	0xa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.byte	0xae
	.long	0xa5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.byte	0xaf
	.long	0x44
	.byte	0x28
	.uleb128 0x8
	.long	.LASF82
	.byte	0x8
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF83
	.byte	0x8
	.byte	0xb5
	.long	0x465
	.byte	0x38
	.uleb128 0x8
	.long	.LASF84
	.byte	0x8
	.byte	0xb6
	.long	0x47b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.byte	0xb7
	.long	0x42
	.byte	0x48
	.uleb128 0x10
	.long	.LASF86
	.byte	0x8
	.byte	0xbd
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x10
	.long	.LASF87
	.byte	0x8
	.byte	0xbe
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x10
	.long	.LASF88
	.byte	0x8
	.byte	0xc2
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.long	0x399
	.long	0x465
	.uleb128 0x12
	.long	0x42
	.uleb128 0x12
	.long	0x44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x451
	.uleb128 0x13
	.long	0x47b
	.uleb128 0x12
	.long	0x42
	.uleb128 0x12
	.long	0x399
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x46b
	.uleb128 0x7
	.long	.LASF89
	.byte	0x10
	.byte	0x9
	.byte	0x1a
	.long	0x4a6
	.uleb128 0x14
	.string	"len"
	.byte	0x9
	.byte	0x1c
	.long	0x3b
	.byte	0
	.uleb128 0x14
	.string	"str"
	.byte	0x9
	.byte	0x1d
	.long	0x4a6
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ac
	.uleb128 0xd
	.long	0x5d
	.uleb128 0x5
	.long	.LASF90
	.byte	0x9
	.byte	0x28
	.long	0x4bc
	.uleb128 0x15
	.string	"ht"
	.byte	0x80
	.byte	0x9
	.byte	0x2e
	.long	0x528
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x31
	.long	0x39f
	.byte	0
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x33
	.long	0x558
	.byte	0x58
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0x35
	.long	0x573
	.byte	0x60
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0x37
	.long	0x3b
	.byte	0x68
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x38
	.long	0x3b
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x3b
	.long	0x7a0
	.byte	0x70
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x3e
	.long	0x3b
	.byte	0x78
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x3f
	.long	0x3b
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.long	.LASF99
	.byte	0x9
	.byte	0x29
	.long	0x533
	.uleb128 0x6
	.byte	0x8
	.long	0x481
	.uleb128 0x16
	.long	.LASF237
	.byte	0x4
	.byte	0x9
	.byte	0x2b
	.long	0x558
	.uleb128 0xf
	.long	.LASF100
	.sleb128 0
	.uleb128 0xf
	.long	.LASF101
	.sleb128 1
	.uleb128 0xf
	.long	.LASF102
	.sleb128 2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x528
	.uleb128 0x11
	.long	0x528
	.long	0x56d
	.uleb128 0x12
	.long	0x56d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b1
	.uleb128 0x6
	.byte	0x8
	.long	0x55e
	.uleb128 0x17
	.long	.LASF103
	.value	0x340
	.byte	0x1
	.byte	0xe1
	.long	0x7a0
	.uleb128 0x8
	.long	.LASF104
	.byte	0x1
	.byte	0xe4
	.long	0x1391
	.byte	0
	.uleb128 0x8
	.long	.LASF105
	.byte	0x1
	.byte	0xe7
	.long	0x12b3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF106
	.byte	0x1
	.byte	0xea
	.long	0x7fe
	.byte	0x18
	.uleb128 0x14
	.string	"map"
	.byte	0x1
	.byte	0xeb
	.long	0x104e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF107
	.byte	0x1
	.byte	0xec
	.long	0x3b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF108
	.byte	0x1
	.byte	0xef
	.long	0x3b
	.byte	0x44
	.uleb128 0x8
	.long	.LASF109
	.byte	0x1
	.byte	0xf2
	.long	0x12ad
	.byte	0x48
	.uleb128 0x8
	.long	.LASF110
	.byte	0x1
	.byte	0xf3
	.long	0x12ad
	.byte	0x50
	.uleb128 0x8
	.long	.LASF111
	.byte	0x1
	.byte	0xf4
	.long	0x12ad
	.byte	0x58
	.uleb128 0x8
	.long	.LASF112
	.byte	0x1
	.byte	0xf7
	.long	0x1246
	.byte	0x60
	.uleb128 0x8
	.long	.LASF113
	.byte	0x1
	.byte	0xf8
	.long	0x1397
	.byte	0x98
	.uleb128 0x8
	.long	.LASF114
	.byte	0x1
	.byte	0xfb
	.long	0x13a2
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF115
	.byte	0x1
	.byte	0xfe
	.long	0x13ad
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF116
	.byte	0x1
	.byte	0xff
	.long	0x13ad
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF117
	.byte	0x1
	.value	0x100
	.long	0x859
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF118
	.byte	0x1
	.value	0x103
	.long	0x1235
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF119
	.byte	0x1
	.value	0x104
	.long	0x11e7
	.byte	0xc8
	.uleb128 0x9
	.long	.LASF120
	.byte	0x1
	.value	0x104
	.long	0x122f
	.byte	0xe8
	.uleb128 0x9
	.long	.LASF121
	.byte	0x1
	.value	0x105
	.long	0x3b
	.byte	0xf0
	.uleb128 0x9
	.long	.LASF122
	.byte	0x1
	.value	0x108
	.long	0x3b
	.byte	0xf4
	.uleb128 0x9
	.long	.LASF123
	.byte	0x1
	.value	0x10b
	.long	0x3b
	.byte	0xf8
	.uleb128 0x9
	.long	.LASF124
	.byte	0x1
	.value	0x10f
	.long	0x3b
	.byte	0xfc
	.uleb128 0x18
	.long	.LASF125
	.byte	0x1
	.value	0x110
	.long	0x3b
	.value	0x100
	.uleb128 0x18
	.long	.LASF126
	.byte	0x1
	.value	0x113
	.long	0x11ad
	.value	0x108
	.uleb128 0x18
	.long	.LASF127
	.byte	0x1
	.value	0x114
	.long	0x3b
	.value	0x110
	.uleb128 0x18
	.long	.LASF128
	.byte	0x1
	.value	0x117
	.long	0x13bd
	.value	0x118
	.uleb128 0x18
	.long	.LASF129
	.byte	0x1
	.value	0x11b
	.long	0x3b
	.value	0x120
	.uleb128 0x18
	.long	.LASF130
	.byte	0x1
	.value	0x11e
	.long	0xbd6
	.value	0x128
	.uleb128 0x18
	.long	.LASF131
	.byte	0x1
	.value	0x11f
	.long	0xbd6
	.value	0x140
	.uleb128 0x18
	.long	.LASF132
	.byte	0x1
	.value	0x122
	.long	0xbd6
	.value	0x158
	.uleb128 0x19
	.string	"eof"
	.byte	0x1
	.value	0x123
	.long	0xbd6
	.value	0x170
	.uleb128 0x18
	.long	.LASF133
	.byte	0x1
	.value	0x126
	.long	0x13c8
	.value	0x188
	.uleb128 0x18
	.long	.LASF134
	.byte	0x1
	.value	0x12a
	.long	0x39f
	.value	0x190
	.uleb128 0x18
	.long	.LASF135
	.byte	0x1
	.value	0x12e
	.long	0x39f
	.value	0x1e8
	.uleb128 0x18
	.long	.LASF136
	.byte	0x1
	.value	0x132
	.long	0x13d3
	.value	0x240
	.uleb128 0x19
	.string	"cb"
	.byte	0x1
	.value	0x135
	.long	0xce4
	.value	0x248
	.uleb128 0x18
	.long	.LASF90
	.byte	0x1
	.value	0x138
	.long	0x13d9
	.value	0x280
	.uleb128 0x18
	.long	.LASF137
	.byte	0x1
	.value	0x13b
	.long	0x943
	.value	0x288
	.uleb128 0x18
	.long	.LASF138
	.byte	0x1
	.value	0x13f
	.long	0x132c
	.value	0x310
	.uleb128 0x18
	.long	.LASF139
	.byte	0x1
	.value	0x143
	.long	0x5d
	.value	0x338
	.uleb128 0x18
	.long	.LASF140
	.byte	0x1
	.value	0x146
	.long	0x5d
	.value	0x339
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x579
	.uleb128 0x7
	.long	.LASF141
	.byte	0x18
	.byte	0xa
	.byte	0x29
	.long	0x7fe
	.uleb128 0x8
	.long	.LASF142
	.byte	0xa
	.byte	0x2b
	.long	0x2b8
	.byte	0
	.uleb128 0x8
	.long	.LASF143
	.byte	0xa
	.byte	0x2c
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF144
	.byte	0xa
	.byte	0x2d
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF145
	.byte	0xa
	.byte	0x2e
	.long	0x2d
	.byte	0x10
	.uleb128 0x10
	.long	.LASF146
	.byte	0xa
	.byte	0x2f
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x8
	.long	.LASF147
	.byte	0xa
	.byte	0x30
	.long	0x5d
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.long	.LASF106
	.byte	0x20
	.byte	0xa
	.byte	0x34
	.long	0x853
	.uleb128 0x8
	.long	.LASF148
	.byte	0xa
	.byte	0x36
	.long	0x853
	.byte	0
	.uleb128 0x8
	.long	.LASF149
	.byte	0xa
	.byte	0x37
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF150
	.byte	0xa
	.byte	0x38
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF151
	.byte	0xa
	.byte	0x3d
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF152
	.byte	0xa
	.byte	0x40
	.long	0x3b
	.byte	0x14
	.uleb128 0x8
	.long	.LASF153
	.byte	0xa
	.byte	0x43
	.long	0x859
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7a6
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF154
	.uleb128 0x5
	.long	.LASF103
	.byte	0xb
	.byte	0x24
	.long	0x579
	.uleb128 0x5
	.long	.LASF155
	.byte	0xb
	.byte	0x26
	.long	0x876
	.uleb128 0x7
	.long	.LASF155
	.byte	0x90
	.byte	0x1
	.byte	0xa8
	.long	0x943
	.uleb128 0x14
	.string	"cur"
	.byte	0x1
	.byte	0xaa
	.long	0x4a6
	.byte	0
	.uleb128 0x8
	.long	.LASF156
	.byte	0x1
	.byte	0xab
	.long	0x4a6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF157
	.byte	0x1
	.byte	0xac
	.long	0x4a6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF158
	.byte	0x1
	.byte	0xad
	.long	0x4a6
	.byte	0x18
	.uleb128 0x8
	.long	.LASF73
	.byte	0x1
	.byte	0xaf
	.long	0x1375
	.byte	0x20
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xb1
	.long	0x4a6
	.byte	0x28
	.uleb128 0x14
	.string	"inc"
	.byte	0x1
	.byte	0xb5
	.long	0x1380
	.byte	0x30
	.uleb128 0x8
	.long	.LASF159
	.byte	0x1
	.byte	0xb9
	.long	0x138b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF160
	.byte	0x1
	.byte	0xbc
	.long	0x3b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF161
	.byte	0x1
	.byte	0xbf
	.long	0x5d
	.byte	0x44
	.uleb128 0x8
	.long	.LASF162
	.byte	0x1
	.byte	0xc3
	.long	0x4a6
	.byte	0x48
	.uleb128 0x8
	.long	.LASF163
	.byte	0x1
	.byte	0xc9
	.long	0x5d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF164
	.byte	0x1
	.byte	0xce
	.long	0x5d
	.byte	0x51
	.uleb128 0x8
	.long	.LASF165
	.byte	0x1
	.byte	0xd2
	.long	0x5d
	.byte	0x52
	.uleb128 0x8
	.long	.LASF166
	.byte	0x1
	.byte	0xd7
	.long	0x859
	.byte	0x53
	.uleb128 0x14
	.string	"dir"
	.byte	0x1
	.byte	0xdb
	.long	0xfab
	.byte	0x58
	.byte	0
	.uleb128 0x7
	.long	.LASF167
	.byte	0x88
	.byte	0xb
	.byte	0xcd
	.long	0xbd6
	.uleb128 0x8
	.long	.LASF168
	.byte	0xb
	.byte	0xd0
	.long	0x2b8
	.byte	0
	.uleb128 0x8
	.long	.LASF169
	.byte	0xb
	.byte	0xd1
	.long	0x2b8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF170
	.byte	0xb
	.byte	0xd4
	.long	0x3b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF171
	.byte	0xb
	.byte	0xd7
	.long	0xfa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF172
	.byte	0xb
	.byte	0xdb
	.long	0x2b8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF173
	.byte	0xb
	.byte	0xde
	.long	0x100c
	.byte	0x28
	.uleb128 0x8
	.long	.LASF174
	.byte	0xb
	.byte	0xdf
	.long	0x100c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF175
	.byte	0xb
	.byte	0xe3
	.long	0x1017
	.byte	0x38
	.uleb128 0x8
	.long	.LASF176
	.byte	0xb
	.byte	0xe7
	.long	0x2b8
	.byte	0x40
	.uleb128 0x8
	.long	.LASF177
	.byte	0xb
	.byte	0xe8
	.long	0x3b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF178
	.byte	0xb
	.byte	0xeb
	.long	0x2b8
	.byte	0x50
	.uleb128 0x8
	.long	.LASF179
	.byte	0xb
	.byte	0xee
	.long	0xefd
	.byte	0x58
	.uleb128 0x8
	.long	.LASF180
	.byte	0xb
	.byte	0xf1
	.long	0x5d
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF181
	.byte	0xb
	.byte	0xf4
	.long	0x5d
	.byte	0x5d
	.uleb128 0x8
	.long	.LASF182
	.byte	0xb
	.byte	0xf7
	.long	0x5d
	.byte	0x5e
	.uleb128 0x8
	.long	.LASF183
	.byte	0xb
	.byte	0xfa
	.long	0x5d
	.byte	0x5f
	.uleb128 0x8
	.long	.LASF184
	.byte	0xb
	.byte	0xfd
	.long	0x5d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF185
	.byte	0xb
	.value	0x100
	.long	0x5d
	.byte	0x61
	.uleb128 0x9
	.long	.LASF186
	.byte	0xb
	.value	0x103
	.long	0x5d
	.byte	0x62
	.uleb128 0x9
	.long	.LASF187
	.byte	0xb
	.value	0x106
	.long	0x5d
	.byte	0x63
	.uleb128 0x9
	.long	.LASF188
	.byte	0xb
	.value	0x109
	.long	0x5d
	.byte	0x64
	.uleb128 0x9
	.long	.LASF189
	.byte	0xb
	.value	0x10e
	.long	0x5d
	.byte	0x65
	.uleb128 0x9
	.long	.LASF190
	.byte	0xb
	.value	0x111
	.long	0x5d
	.byte	0x66
	.uleb128 0x9
	.long	.LASF191
	.byte	0xb
	.value	0x115
	.long	0x5d
	.byte	0x67
	.uleb128 0x9
	.long	.LASF192
	.byte	0xb
	.value	0x118
	.long	0x5d
	.byte	0x68
	.uleb128 0x9
	.long	.LASF193
	.byte	0xb
	.value	0x11b
	.long	0x5d
	.byte	0x69
	.uleb128 0x9
	.long	.LASF194
	.byte	0xb
	.value	0x11e
	.long	0x5d
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF195
	.byte	0xb
	.value	0x121
	.long	0x5d
	.byte	0x6b
	.uleb128 0x9
	.long	.LASF196
	.byte	0xb
	.value	0x124
	.long	0x5d
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF197
	.byte	0xb
	.value	0x128
	.long	0x5d
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF198
	.byte	0xb
	.value	0x12b
	.long	0x5d
	.byte	0x6e
	.uleb128 0x9
	.long	.LASF199
	.byte	0xb
	.value	0x12e
	.long	0x5d
	.byte	0x6f
	.uleb128 0x9
	.long	.LASF200
	.byte	0xb
	.value	0x131
	.long	0x5d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF201
	.byte	0xb
	.value	0x135
	.long	0x5d
	.byte	0x71
	.uleb128 0x9
	.long	.LASF202
	.byte	0xb
	.value	0x138
	.long	0x5d
	.byte	0x72
	.uleb128 0x9
	.long	.LASF203
	.byte	0xb
	.value	0x13c
	.long	0x5d
	.byte	0x73
	.uleb128 0x9
	.long	.LASF204
	.byte	0xb
	.value	0x140
	.long	0x5d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF205
	.byte	0xb
	.value	0x143
	.long	0x5d
	.byte	0x75
	.uleb128 0x9
	.long	.LASF206
	.byte	0xb
	.value	0x147
	.long	0x5d
	.byte	0x76
	.uleb128 0x9
	.long	.LASF207
	.byte	0xb
	.value	0x14a
	.long	0x5d
	.byte	0x77
	.uleb128 0x9
	.long	.LASF208
	.byte	0xb
	.value	0x14d
	.long	0x5d
	.byte	0x78
	.uleb128 0x1a
	.string	"c99"
	.byte	0xb
	.value	0x150
	.long	0x5d
	.byte	0x79
	.uleb128 0x9
	.long	.LASF209
	.byte	0xb
	.value	0x153
	.long	0x5d
	.byte	0x7a
	.uleb128 0x9
	.long	.LASF210
	.byte	0xb
	.value	0x157
	.long	0x5d
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF211
	.byte	0xb
	.value	0x15a
	.long	0x5d
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF212
	.byte	0xb
	.value	0x15d
	.long	0x5d
	.byte	0x7d
	.uleb128 0x9
	.long	.LASF213
	.byte	0xb
	.value	0x160
	.long	0x5d
	.byte	0x7e
	.uleb128 0x9
	.long	.LASF214
	.byte	0xb
	.value	0x163
	.long	0x5d
	.byte	0x7f
	.uleb128 0x9
	.long	.LASF215
	.byte	0xb
	.value	0x166
	.long	0x5d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF216
	.byte	0xb
	.value	0x169
	.long	0x5d
	.byte	0x81
	.uleb128 0x9
	.long	.LASF217
	.byte	0xb
	.value	0x16e
	.long	0x5d
	.byte	0x82
	.byte	0
	.uleb128 0x5
	.long	.LASF218
	.byte	0xb
	.byte	0x28
	.long	0xbe1
	.uleb128 0x7
	.long	.LASF218
	.byte	0x18
	.byte	0xb
	.byte	0xad
	.long	0xc2d
	.uleb128 0x8
	.long	.LASF107
	.byte	0xb
	.byte	0xaf
	.long	0x3b
	.byte	0
	.uleb128 0x14
	.string	"col"
	.byte	0xb
	.byte	0xb0
	.long	0x64
	.byte	0x4
	.uleb128 0x10
	.long	.LASF219
	.byte	0xb
	.byte	0xb1
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x4
	.uleb128 0x8
	.long	.LASF220
	.byte	0xb
	.byte	0xb2
	.long	0x5d
	.byte	0x7
	.uleb128 0x14
	.string	"val"
	.byte	0xb
	.byte	0xbb
	.long	0xf46
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF221
	.byte	0xb
	.byte	0x29
	.long	0xc38
	.uleb128 0x7
	.long	.LASF221
	.byte	0x10
	.byte	0xb
	.byte	0x9c
	.long	0xc5d
	.uleb128 0x14
	.string	"len"
	.byte	0xb
	.byte	0x9e
	.long	0x3b
	.byte	0
	.uleb128 0x8
	.long	.LASF222
	.byte	0xb
	.byte	0x9f
	.long	0x4a6
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF223
	.byte	0xb
	.byte	0x2a
	.long	0xc68
	.uleb128 0x1b
	.long	.LASF223
	.byte	0x20
	.byte	0xb
	.value	0x1b7
	.long	0xcd4
	.uleb128 0x9
	.long	.LASF224
	.byte	0xb
	.value	0x1b9
	.long	0x481
	.byte	0
	.uleb128 0x9
	.long	.LASF225
	.byte	0xb
	.value	0x1ba
	.long	0x64
	.byte	0x10
	.uleb128 0x9
	.long	.LASF226
	.byte	0xb
	.value	0x1bb
	.long	0x5d
	.byte	0x12
	.uleb128 0x9
	.long	.LASF227
	.byte	0xb
	.value	0x1bc
	.long	0x5d
	.byte	0x13
	.uleb128 0x1c
	.long	.LASF219
	.byte	0xb
	.value	0x1bd
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x9
	.long	.LASF220
	.byte	0xb
	.value	0x1be
	.long	0x5d
	.byte	0x15
	.uleb128 0x9
	.long	.LASF228
	.byte	0xb
	.value	0x1c6
	.long	0x1114
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF229
	.byte	0xb
	.byte	0x2b
	.long	0xcdf
	.uleb128 0x1d
	.long	.LASF229
	.uleb128 0x1b
	.long	.LASF230
	.byte	0x38
	.byte	0xb
	.value	0x172
	.long	0xd4d
	.uleb128 0x9
	.long	.LASF231
	.byte	0xb
	.value	0x175
	.long	0x1038
	.byte	0
	.uleb128 0x9
	.long	.LASF232
	.byte	0xb
	.value	0x176
	.long	0x1059
	.byte	0x8
	.uleb128 0x9
	.long	.LASF233
	.byte	0xb
	.value	0x177
	.long	0x1079
	.byte	0x10
	.uleb128 0x9
	.long	.LASF234
	.byte	0xb
	.value	0x179
	.long	0x1094
	.byte	0x18
	.uleb128 0x9
	.long	.LASF235
	.byte	0xb
	.value	0x17a
	.long	0x1094
	.byte	0x20
	.uleb128 0x9
	.long	.LASF224
	.byte	0xb
	.value	0x17b
	.long	0x10ba
	.byte	0x28
	.uleb128 0x9
	.long	.LASF236
	.byte	0xb
	.value	0x17c
	.long	0x10d0
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF238
	.byte	0x4
	.byte	0xb
	.byte	0x8f
	.long	0xefd
	.uleb128 0xf
	.long	.LASF239
	.sleb128 0
	.uleb128 0xf
	.long	.LASF240
	.sleb128 1
	.uleb128 0xf
	.long	.LASF241
	.sleb128 2
	.uleb128 0xf
	.long	.LASF242
	.sleb128 3
	.uleb128 0xf
	.long	.LASF243
	.sleb128 4
	.uleb128 0xf
	.long	.LASF244
	.sleb128 5
	.uleb128 0xf
	.long	.LASF245
	.sleb128 6
	.uleb128 0xf
	.long	.LASF246
	.sleb128 7
	.uleb128 0xf
	.long	.LASF247
	.sleb128 8
	.uleb128 0xf
	.long	.LASF248
	.sleb128 9
	.uleb128 0xf
	.long	.LASF249
	.sleb128 10
	.uleb128 0xf
	.long	.LASF250
	.sleb128 11
	.uleb128 0xf
	.long	.LASF251
	.sleb128 12
	.uleb128 0xf
	.long	.LASF252
	.sleb128 13
	.uleb128 0xf
	.long	.LASF253
	.sleb128 14
	.uleb128 0xf
	.long	.LASF254
	.sleb128 15
	.uleb128 0xf
	.long	.LASF255
	.sleb128 16
	.uleb128 0xf
	.long	.LASF256
	.sleb128 17
	.uleb128 0xf
	.long	.LASF257
	.sleb128 18
	.uleb128 0xf
	.long	.LASF258
	.sleb128 19
	.uleb128 0xf
	.long	.LASF259
	.sleb128 20
	.uleb128 0xf
	.long	.LASF260
	.sleb128 21
	.uleb128 0xf
	.long	.LASF261
	.sleb128 22
	.uleb128 0xf
	.long	.LASF262
	.sleb128 23
	.uleb128 0xf
	.long	.LASF263
	.sleb128 24
	.uleb128 0xf
	.long	.LASF264
	.sleb128 25
	.uleb128 0xf
	.long	.LASF265
	.sleb128 26
	.uleb128 0xf
	.long	.LASF266
	.sleb128 27
	.uleb128 0xf
	.long	.LASF267
	.sleb128 28
	.uleb128 0xf
	.long	.LASF268
	.sleb128 29
	.uleb128 0xf
	.long	.LASF269
	.sleb128 30
	.uleb128 0xf
	.long	.LASF270
	.sleb128 31
	.uleb128 0xf
	.long	.LASF271
	.sleb128 32
	.uleb128 0xf
	.long	.LASF272
	.sleb128 33
	.uleb128 0xf
	.long	.LASF273
	.sleb128 34
	.uleb128 0xf
	.long	.LASF274
	.sleb128 35
	.uleb128 0xf
	.long	.LASF275
	.sleb128 36
	.uleb128 0xf
	.long	.LASF276
	.sleb128 37
	.uleb128 0xf
	.long	.LASF277
	.sleb128 38
	.uleb128 0xf
	.long	.LASF278
	.sleb128 39
	.uleb128 0xf
	.long	.LASF279
	.sleb128 40
	.uleb128 0xf
	.long	.LASF280
	.sleb128 41
	.uleb128 0xf
	.long	.LASF281
	.sleb128 42
	.uleb128 0xf
	.long	.LASF282
	.sleb128 43
	.uleb128 0xf
	.long	.LASF283
	.sleb128 44
	.uleb128 0xf
	.long	.LASF284
	.sleb128 45
	.uleb128 0xf
	.long	.LASF285
	.sleb128 46
	.uleb128 0xf
	.long	.LASF286
	.sleb128 47
	.uleb128 0xf
	.long	.LASF287
	.sleb128 48
	.uleb128 0xf
	.long	.LASF288
	.sleb128 49
	.uleb128 0xf
	.long	.LASF289
	.sleb128 50
	.uleb128 0xf
	.long	.LASF290
	.sleb128 51
	.uleb128 0xf
	.long	.LASF291
	.sleb128 52
	.uleb128 0xf
	.long	.LASF292
	.sleb128 53
	.uleb128 0xf
	.long	.LASF293
	.sleb128 54
	.uleb128 0xf
	.long	.LASF294
	.sleb128 55
	.uleb128 0xf
	.long	.LASF295
	.sleb128 56
	.uleb128 0xf
	.long	.LASF296
	.sleb128 57
	.uleb128 0xf
	.long	.LASF297
	.sleb128 58
	.uleb128 0xf
	.long	.LASF298
	.sleb128 59
	.uleb128 0xf
	.long	.LASF299
	.sleb128 60
	.uleb128 0xf
	.long	.LASF300
	.sleb128 61
	.uleb128 0xf
	.long	.LASF301
	.sleb128 62
	.uleb128 0xf
	.long	.LASF302
	.sleb128 63
	.uleb128 0xf
	.long	.LASF303
	.sleb128 64
	.uleb128 0xf
	.long	.LASF304
	.sleb128 65
	.uleb128 0xf
	.long	.LASF305
	.sleb128 66
	.uleb128 0xf
	.long	.LASF306
	.sleb128 67
	.uleb128 0xf
	.long	.LASF307
	.sleb128 68
	.byte	0
	.uleb128 0x16
	.long	.LASF308
	.byte	0x4
	.byte	0xb
	.byte	0x98
	.long	0xf46
	.uleb128 0xf
	.long	.LASF309
	.sleb128 0
	.uleb128 0xf
	.long	.LASF310
	.sleb128 1
	.uleb128 0xf
	.long	.LASF311
	.sleb128 2
	.uleb128 0xf
	.long	.LASF312
	.sleb128 3
	.uleb128 0xf
	.long	.LASF313
	.sleb128 4
	.uleb128 0xf
	.long	.LASF314
	.sleb128 5
	.uleb128 0xf
	.long	.LASF315
	.sleb128 6
	.uleb128 0xf
	.long	.LASF316
	.sleb128 7
	.uleb128 0xf
	.long	.LASF317
	.sleb128 8
	.uleb128 0xf
	.long	.LASF318
	.sleb128 9
	.byte	0
	.uleb128 0x1e
	.byte	0x10
	.byte	0xb
	.byte	0xb4
	.long	0xf84
	.uleb128 0x1f
	.long	.LASF319
	.byte	0xb
	.byte	0xb6
	.long	0xf84
	.uleb128 0x1f
	.long	.LASF320
	.byte	0xb
	.byte	0xb7
	.long	0xf8a
	.uleb128 0x20
	.string	"str"
	.byte	0xb
	.byte	0xb8
	.long	0xc38
	.uleb128 0x1f
	.long	.LASF321
	.byte	0xb
	.byte	0xb9
	.long	0x3b
	.uleb128 0x20
	.string	"c"
	.byte	0xb
	.byte	0xba
	.long	0x5d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc5d
	.uleb128 0x6
	.byte	0x8
	.long	0xf90
	.uleb128 0xd
	.long	0xbd6
	.uleb128 0x5
	.long	.LASF322
	.byte	0xb
	.byte	0xc0
	.long	0x2d
	.uleb128 0x1d
	.long	.LASF323
	.uleb128 0x6
	.byte	0x8
	.long	0xfa0
	.uleb128 0x7
	.long	.LASF324
	.byte	0x38
	.byte	0x1
	.byte	0x44
	.long	0x100c
	.uleb128 0x8
	.long	.LASF325
	.byte	0x1
	.byte	0x46
	.long	0x100c
	.byte	0
	.uleb128 0x8
	.long	.LASF326
	.byte	0x1
	.byte	0x4a
	.long	0x2b8
	.byte	0x8
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x4b
	.long	0x3b
	.byte	0x10
	.uleb128 0x14
	.string	"ino"
	.byte	0x1
	.byte	0x4e
	.long	0x344
	.byte	0x18
	.uleb128 0x14
	.string	"dev"
	.byte	0x1
	.byte	0x4f
	.long	0x34f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF147
	.byte	0x1
	.byte	0x51
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF327
	.byte	0x1
	.byte	0x54
	.long	0x11b8
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfab
	.uleb128 0x1d
	.long	.LASF328
	.uleb128 0x6
	.byte	0x8
	.long	0x1012
	.uleb128 0x13
	.long	0x1032
	.uleb128 0x12
	.long	0x1032
	.uleb128 0x12
	.long	0xf8a
	.uleb128 0x12
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x860
	.uleb128 0x6
	.byte	0x8
	.long	0x101d
	.uleb128 0x13
	.long	0x104e
	.uleb128 0x12
	.long	0x1032
	.uleb128 0x12
	.long	0x104e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1054
	.uleb128 0xd
	.long	0x7a6
	.uleb128 0x6
	.byte	0x8
	.long	0x103e
	.uleb128 0x13
	.long	0x1079
	.uleb128 0x12
	.long	0x1032
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x12
	.long	0x4a6
	.uleb128 0x12
	.long	0xf8a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x105f
	.uleb128 0x13
	.long	0x1094
	.uleb128 0x12
	.long	0x1032
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x12
	.long	0xf84
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x107f
	.uleb128 0x13
	.long	0x10af
	.uleb128 0x12
	.long	0x1032
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x12
	.long	0x10af
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10b5
	.uleb128 0xd
	.long	0xc2d
	.uleb128 0x6
	.byte	0x8
	.long	0x109a
	.uleb128 0x13
	.long	0x10d0
	.uleb128 0x12
	.long	0x1032
	.uleb128 0x12
	.long	0x3b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10c0
	.uleb128 0x21
	.long	.LASF329
	.byte	0x4
	.byte	0xb
	.value	0x1a3
	.long	0x1114
	.uleb128 0xf
	.long	.LASF330
	.sleb128 0
	.uleb128 0xf
	.long	.LASF331
	.sleb128 1
	.uleb128 0xf
	.long	.LASF332
	.sleb128 2
	.uleb128 0xf
	.long	.LASF333
	.sleb128 3
	.uleb128 0xf
	.long	.LASF334
	.sleb128 4
	.uleb128 0xf
	.long	.LASF335
	.sleb128 5
	.uleb128 0xf
	.long	.LASF336
	.sleb128 6
	.uleb128 0xf
	.long	.LASF337
	.sleb128 7
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0xb
	.value	0x1c0
	.long	0x114e
	.uleb128 0x23
	.long	.LASF338
	.byte	0xb
	.value	0x1c2
	.long	0x114e
	.uleb128 0x23
	.long	.LASF339
	.byte	0xb
	.value	0x1c3
	.long	0x1159
	.uleb128 0x23
	.long	.LASF340
	.byte	0xb
	.value	0x1c4
	.long	0xd4d
	.uleb128 0x23
	.long	.LASF341
	.byte	0xb
	.value	0x1c5
	.long	0x10d6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcd4
	.uleb128 0x1d
	.long	.LASF342
	.uleb128 0x6
	.byte	0x8
	.long	0x1154
	.uleb128 0x5
	.long	.LASF343
	.byte	0x1
	.byte	0x2f
	.long	0x116a
	.uleb128 0x7
	.long	.LASF343
	.byte	0x20
	.byte	0x1
	.byte	0x30
	.long	0x11a7
	.uleb128 0x8
	.long	.LASF325
	.byte	0x1
	.byte	0x32
	.long	0x11a7
	.byte	0
	.uleb128 0x8
	.long	.LASF344
	.byte	0x1
	.byte	0x33
	.long	0x11ad
	.byte	0x8
	.uleb128 0x14
	.string	"cur"
	.byte	0x1
	.byte	0x33
	.long	0x11ad
	.byte	0x10
	.uleb128 0x8
	.long	.LASF72
	.byte	0x1
	.byte	0x33
	.long	0x11ad
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x116a
	.uleb128 0x6
	.byte	0x8
	.long	0x5d
	.uleb128 0x1d
	.long	.LASF345
	.uleb128 0x6
	.byte	0x8
	.long	0x11b3
	.uleb128 0x24
	.long	.LASF494
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.long	0x11e1
	.uleb128 0x1f
	.long	.LASF346
	.byte	0x1
	.byte	0x5c
	.long	0xf8a
	.uleb128 0x1f
	.long	.LASF347
	.byte	0x1
	.byte	0x5d
	.long	0x11e1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf8a
	.uleb128 0x5
	.long	.LASF348
	.byte	0x1
	.byte	0x61
	.long	0x11f2
	.uleb128 0x7
	.long	.LASF348
	.byte	0x20
	.byte	0x1
	.byte	0x62
	.long	0x122f
	.uleb128 0x8
	.long	.LASF325
	.byte	0x1
	.byte	0x64
	.long	0x122f
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0x1
	.byte	0x64
	.long	0x122f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF344
	.byte	0x1
	.byte	0x65
	.long	0x1235
	.byte	0x10
	.uleb128 0x8
	.long	.LASF72
	.byte	0x1
	.byte	0x65
	.long	0x1235
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11e7
	.uleb128 0x6
	.byte	0x8
	.long	0xbd6
	.uleb128 0x5
	.long	.LASF349
	.byte	0x1
	.byte	0x68
	.long	0x1246
	.uleb128 0x7
	.long	.LASF349
	.byte	0x38
	.byte	0x1
	.byte	0x69
	.long	0x12a7
	.uleb128 0x8
	.long	.LASF325
	.byte	0x1
	.byte	0x6c
	.long	0x12a7
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0x1
	.byte	0x6c
	.long	0x12a7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF350
	.byte	0x1
	.byte	0x70
	.long	0x11be
	.byte	0x10
	.uleb128 0x8
	.long	.LASF351
	.byte	0x1
	.byte	0x71
	.long	0x11be
	.byte	0x18
	.uleb128 0x8
	.long	.LASF352
	.byte	0x1
	.byte	0x75
	.long	0x12ad
	.byte	0x20
	.uleb128 0x8
	.long	.LASF338
	.byte	0x1
	.byte	0x78
	.long	0xf84
	.byte	0x28
	.uleb128 0x8
	.long	.LASF353
	.byte	0x1
	.byte	0x7b
	.long	0x859
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x123b
	.uleb128 0x6
	.byte	0x8
	.long	0x115f
	.uleb128 0x7
	.long	.LASF354
	.byte	0x9
	.byte	0x1
	.byte	0x7e
	.long	0x132c
	.uleb128 0x8
	.long	.LASF355
	.byte	0x1
	.byte	0x81
	.long	0x5d
	.byte	0
	.uleb128 0x8
	.long	.LASF356
	.byte	0x1
	.byte	0x84
	.long	0x5d
	.byte	0x1
	.uleb128 0x8
	.long	.LASF357
	.byte	0x1
	.byte	0x87
	.long	0x5d
	.byte	0x2
	.uleb128 0x8
	.long	.LASF358
	.byte	0x1
	.byte	0x8b
	.long	0x5d
	.byte	0x3
	.uleb128 0x8
	.long	.LASF359
	.byte	0x1
	.byte	0x8e
	.long	0x5d
	.byte	0x4
	.uleb128 0x8
	.long	.LASF360
	.byte	0x1
	.byte	0x91
	.long	0x5d
	.byte	0x5
	.uleb128 0x8
	.long	.LASF361
	.byte	0x1
	.byte	0x94
	.long	0x5d
	.byte	0x6
	.uleb128 0x8
	.long	.LASF362
	.byte	0x1
	.byte	0x97
	.long	0x5d
	.byte	0x7
	.uleb128 0x8
	.long	.LASF363
	.byte	0x1
	.byte	0x9a
	.long	0x5d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF138
	.byte	0x28
	.byte	0x1
	.byte	0x9e
	.long	0x1375
	.uleb128 0x8
	.long	.LASF364
	.byte	0x1
	.byte	0xa0
	.long	0xf84
	.byte	0
	.uleb128 0x8
	.long	.LASF365
	.byte	0x1
	.byte	0xa1
	.long	0xf84
	.byte	0x8
	.uleb128 0x8
	.long	.LASF366
	.byte	0x1
	.byte	0xa2
	.long	0xf84
	.byte	0x10
	.uleb128 0x8
	.long	.LASF367
	.byte	0x1
	.byte	0xa3
	.long	0xf84
	.byte	0x18
	.uleb128 0x8
	.long	.LASF368
	.byte	0x1
	.byte	0xa4
	.long	0xf84
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x876
	.uleb128 0x1d
	.long	.LASF369
	.uleb128 0x6
	.byte	0x8
	.long	0x137b
	.uleb128 0x1d
	.long	.LASF159
	.uleb128 0x6
	.byte	0x8
	.long	0x1386
	.uleb128 0x6
	.byte	0x8
	.long	0x86b
	.uleb128 0x6
	.byte	0x8
	.long	0x1246
	.uleb128 0x1d
	.long	.LASF114
	.uleb128 0x6
	.byte	0x8
	.long	0x13a8
	.uleb128 0xd
	.long	0x139d
	.uleb128 0x6
	.byte	0x8
	.long	0x13b3
	.uleb128 0xd
	.long	0xc5d
	.uleb128 0x1d
	.long	.LASF370
	.uleb128 0x6
	.byte	0x8
	.long	0x13b8
	.uleb128 0x1d
	.long	.LASF133
	.uleb128 0x6
	.byte	0x8
	.long	0x13c3
	.uleb128 0x1d
	.long	.LASF371
	.uleb128 0x6
	.byte	0x8
	.long	0x13ce
	.uleb128 0x6
	.byte	0x8
	.long	0x4bc
	.uleb128 0x25
	.long	.LASF372
	.byte	0x1
	.value	0x1ad
	.long	0x5d
	.uleb128 0x16
	.long	.LASF373
	.byte	0x4
	.byte	0x2
	.byte	0x2a
	.long	0x141c
	.uleb128 0xf
	.long	.LASF374
	.sleb128 0
	.uleb128 0xf
	.long	.LASF375
	.sleb128 1
	.uleb128 0xf
	.long	.LASF376
	.sleb128 2
	.uleb128 0xf
	.long	.LASF377
	.sleb128 3
	.uleb128 0xf
	.long	.LASF378
	.sleb128 4
	.uleb128 0xf
	.long	.LASF379
	.sleb128 5
	.byte	0
	.uleb128 0x7
	.long	.LASF380
	.byte	0x10
	.byte	0x2
	.byte	0x34
	.long	0x1441
	.uleb128 0x8
	.long	.LASF381
	.byte	0x2
	.byte	0x36
	.long	0x13eb
	.byte	0
	.uleb128 0x8
	.long	.LASF326
	.byte	0x2
	.byte	0x37
	.long	0x4a6
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF382
	.uleb128 0x26
	.long	.LASF384
	.byte	0x1
	.value	0x1b9
	.long	0x2d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1487
	.uleb128 0x27
	.string	"s1"
	.byte	0x1
	.value	0x1ba
	.long	0x1487
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"s2"
	.byte	0x1
	.value	0x1ba
	.long	0x1487
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x148d
	.uleb128 0xd
	.long	0x13df
	.uleb128 0x28
	.long	.LASF424
	.byte	0x2
	.byte	0x65
	.long	0x2d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x14d0
	.uleb128 0x29
	.long	.LASF346
	.byte	0x2
	.byte	0x66
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF383
	.byte	0x2
	.byte	0x67
	.long	0x2b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF396
	.byte	0x2
	.byte	0x73
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x150a
	.uleb128 0x29
	.long	.LASF96
	.byte	0x2
	.byte	0x74
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF104
	.byte	0x2
	.byte	0x76
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF385
	.byte	0x2
	.byte	0x89
	.long	0x859
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1564
	.uleb128 0x29
	.long	.LASF96
	.byte	0x2
	.byte	0x8a
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF104
	.byte	0x2
	.byte	0x8c
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF386
	.byte	0x2
	.byte	0x8d
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF387
	.byte	0x2
	.byte	0x8e
	.long	0x859
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x2c
	.long	.LASF388
	.byte	0x2
	.byte	0xae
	.long	0xf95
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x15de
	.uleb128 0x29
	.long	.LASF96
	.byte	0x2
	.byte	0xaf
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF104
	.byte	0x2
	.byte	0xb1
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF325
	.byte	0x2
	.byte	0xb2
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2b
	.long	.LASF389
	.byte	0x2
	.byte	0xb7
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF390
	.byte	0x2
	.byte	0xb8
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF391
	.byte	0x2
	.byte	0xf2
	.long	0xf95
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x162a
	.uleb128 0x29
	.long	.LASF96
	.byte	0x2
	.byte	0xf3
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF325
	.byte	0x2
	.byte	0xf5
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.long	.LASF104
	.byte	0x2
	.byte	0xf6
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF392
	.byte	0x2
	.value	0x104
	.long	0x2d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1687
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x105
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x2
	.value	0x107
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x108
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF393
	.byte	0x2
	.value	0x108
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF394
	.byte	0x2
	.value	0x132
	.long	0x2d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x16f4
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x133
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x2
	.value	0x135
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF395
	.byte	0x2
	.value	0x136
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x137
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF429
	.byte	0x2
	.value	0x147
	.quad	.L45
	.byte	0
	.uleb128 0x32
	.long	.LASF397
	.byte	0x2
	.value	0x150
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1740
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x151
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x2
	.value	0x153
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"col"
	.byte	0x2
	.value	0x154
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF398
	.byte	0x2
	.value	0x160
	.long	0x2d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x179d
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x161
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"c"
	.byte	0x2
	.value	0x162
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x2
	.value	0x164
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF399
	.byte	0x2
	.value	0x165
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x33
	.long	.LASF400
	.byte	0x2
	.value	0x18b
	.long	0x2d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x17eb
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x18c
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF383
	.byte	0x2
	.value	0x18d
	.long	0x10af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x18f
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF401
	.byte	0x2
	.value	0x1a1
	.long	0xf84
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x185c
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x1a2
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF402
	.byte	0x2
	.value	0x1a4
	.long	0xf84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"cur"
	.byte	0x2
	.value	0x1a5
	.long	0x1487
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.long	.LASF344
	.byte	0x2
	.value	0x1b2
	.long	0x1487
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF403
	.byte	0x2
	.value	0x1d1
	.long	0xf84
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x19d1
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x1d2
	.long	0x1032
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.string	"cur"
	.byte	0x2
	.value	0x1d3
	.long	0x1487
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x2
	.value	0x1d5
	.long	0x1391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF344
	.byte	0x2
	.value	0x1d6
	.long	0x1487
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF91
	.byte	0x2
	.value	0x1d7
	.long	0x19d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x1d8
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF404
	.byte	0x2
	.value	0x1d8
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.string	"len"
	.byte	0x2
	.value	0x1d8
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x34
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1931
	.uleb128 0x30
	.string	"__o"
	.byte	0x2
	.value	0x1db
	.long	0x19d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF405
	.byte	0x2
	.value	0x1db
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x34
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1956
	.uleb128 0x30
	.string	"__o"
	.byte	0x2
	.value	0x1e5
	.long	0x19d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x197b
	.uleb128 0x30
	.string	"__o"
	.byte	0x2
	.value	0x1ff
	.long	0x19d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x34
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x19a0
	.uleb128 0x30
	.string	"__o"
	.byte	0x2
	.value	0x200
	.long	0x19d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2d
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2f
	.long	.LASF406
	.byte	0x2
	.value	0x203
	.long	0x19d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF228
	.byte	0x2
	.value	0x203
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x39f
	.uleb128 0x35
	.long	.LASF407
	.byte	0x2
	.value	0x20a
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a80
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x20b
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF408
	.byte	0x2
	.value	0x20c
	.long	0x1a80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"c"
	.byte	0x2
	.value	0x20d
	.long	0xf95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.long	.LASF409
	.byte	0x2
	.value	0x20e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x2
	.value	0x210
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF410
	.byte	0x2
	.value	0x211
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x211
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2f
	.long	.LASF411
	.byte	0x2
	.value	0x229
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc2d
	.uleb128 0x35
	.long	.LASF412
	.byte	0x2
	.value	0x249
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac3
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x24a
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF413
	.byte	0x2
	.value	0x24b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x33
	.long	.LASF414
	.byte	0x2
	.value	0x259
	.long	0x2d
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b22
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x25a
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF410
	.byte	0x2
	.value	0x25b
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF415
	.byte	0x2
	.value	0x25d
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF81
	.byte	0x2
	.value	0x25d
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF416
	.byte	0x2
	.value	0x276
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bea
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x277
	.long	0x1032
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF346
	.byte	0x2
	.value	0x278
	.long	0x1235
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF417
	.byte	0x2
	.value	0x279
	.long	0xf95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x2
	.value	0x27b
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF410
	.byte	0x2
	.value	0x27c
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x27c
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x27d
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF418
	.byte	0x2
	.value	0x27e
	.long	0x859
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x2f
	.long	.LASF419
	.byte	0x2
	.value	0x27e
	.long	0x859
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x2d
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2f
	.long	.LASF411
	.byte	0x2
	.value	0x288
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF420
	.byte	0x2
	.value	0x2d8
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c54
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x2d9
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF346
	.byte	0x2
	.value	0x2da
	.long	0x1235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF421
	.byte	0x2
	.value	0x2db
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x2
	.value	0x2dd
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"len"
	.byte	0x2
	.value	0x2de
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x36
	.long	.LASF445
	.byte	0x2
	.value	0x2f2
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c91
	.uleb128 0x27
	.string	"run"
	.byte	0x2
	.value	0x2f3
	.long	0x122f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF422
	.byte	0x2
	.value	0x2f4
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF423
	.byte	0x2
	.value	0x2fd
	.long	0x122f
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cc3
	.uleb128 0x27
	.string	"run"
	.byte	0x2
	.value	0x2fe
	.long	0x122f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF425
	.byte	0x2
	.value	0x30f
	.long	0x1235
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d13
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x310
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"old"
	.byte	0x2
	.value	0x312
	.long	0x1235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF402
	.byte	0x2
	.value	0x312
	.long	0x1235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF426
	.byte	0x2
	.value	0x325
	.long	0xf8a
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d54
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x326
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF402
	.byte	0x2
	.value	0x328
	.long	0x1235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF427
	.byte	0x2
	.value	0x36d
	.long	0x1235
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ed9
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x36e
	.long	0x1032
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x370
	.long	0xf95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF104
	.byte	0x2
	.value	0x371
	.long	0x1391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF428
	.byte	0x2
	.value	0x372
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF402
	.byte	0x2
	.value	0x373
	.long	0x1235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF430
	.byte	0x2
	.value	0x375
	.quad	.L146
	.uleb128 0x31
	.long	.LASF431
	.byte	0x2
	.value	0x379
	.quad	.L147
	.uleb128 0x31
	.long	.LASF432
	.byte	0x2
	.value	0x37c
	.quad	.L148
	.uleb128 0x31
	.long	.LASF433
	.byte	0x2
	.value	0x380
	.quad	.L149
	.uleb128 0x31
	.long	.LASF434
	.byte	0x2
	.value	0x502
	.quad	.L150
	.uleb128 0x31
	.long	.LASF435
	.byte	0x2
	.value	0x3e5
	.quad	.L176
	.uleb128 0x34
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1e47
	.uleb128 0x2f
	.long	.LASF436
	.byte	0x2
	.value	0x399
	.long	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.byte	0
	.uleb128 0x34
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1e6d
	.uleb128 0x2f
	.long	.LASF107
	.byte	0x2
	.value	0x3ba
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x34
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1e92
	.uleb128 0x30
	.string	"pos"
	.byte	0x2
	.value	0x3d8
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1eb7
	.uleb128 0x30
	.string	"pos"
	.byte	0x2
	.value	0x46d
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x30
	.string	"pos"
	.byte	0x2
	.value	0x488
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF437
	.byte	0x2
	.value	0x50f
	.long	0x3b
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f1a
	.uleb128 0x2e
	.long	.LASF346
	.byte	0x2
	.value	0x510
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"len"
	.byte	0x2
	.value	0x512
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF438
	.byte	0x2
	.value	0x524
	.long	0x11ad
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fec
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x525
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF346
	.byte	0x2
	.value	0x526
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF104
	.byte	0x2
	.value	0x527
	.long	0x11ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF439
	.byte	0x2
	.value	0x541
	.quad	.L287
	.uleb128 0x34
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1fac
	.uleb128 0x2f
	.long	.LASF440
	.byte	0x2
	.value	0x52d
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x52e
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0x2d
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2f
	.long	.LASF441
	.byte	0x2
	.value	0x54e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF442
	.byte	0x2
	.value	0x54e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"tag"
	.byte	0x2
	.value	0x54e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF443
	.byte	0x2
	.value	0x56d
	.long	0x11ad
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x205a
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x56e
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF346
	.byte	0x2
	.value	0x56f
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"len"
	.byte	0x2
	.value	0x571
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF415
	.byte	0x2
	.value	0x572
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"end"
	.byte	0x2
	.value	0x572
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF444
	.byte	0x2
	.value	0x57d
	.long	0x2b8
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x208c
	.uleb128 0x2e
	.long	.LASF219
	.byte	0x2
	.value	0x57e
	.long	0xd4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.long	.LASF446
	.byte	0x2
	.value	0x587
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x2149
	.uleb128 0x2e
	.long	.LASF346
	.byte	0x2
	.value	0x588
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"fp"
	.byte	0x2
	.value	0x589
	.long	0x2149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF439
	.byte	0x2
	.value	0x5a5
	.quad	.L315
	.uleb128 0x34
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x2109
	.uleb128 0x2f
	.long	.LASF440
	.byte	0x2
	.value	0x58f
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x590
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2f
	.long	.LASF441
	.byte	0x2
	.value	0x5b0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF442
	.byte	0x2
	.value	0x5b0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"tag"
	.byte	0x2
	.value	0x5b0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0x37
	.long	.LASF447
	.byte	0x2
	.value	0x5cb
	.long	0x2d
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x218c
	.uleb128 0x27
	.string	"a"
	.byte	0x2
	.value	0x5cc
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"b"
	.byte	0x2
	.value	0x5cc
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF448
	.byte	0x2
	.value	0x5e9
	.long	0x2d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x2203
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x5ea
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF449
	.byte	0x2
	.value	0x5eb
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF450
	.byte	0x2
	.value	0x5eb
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"a"
	.byte	0x2
	.value	0x5ed
	.long	0xd4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.string	"b"
	.byte	0x2
	.value	0x5ed
	.long	0xd4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x5ee
	.long	0xf95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.long	.LASF451
	.byte	0x2
	.value	0x620
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x224e
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x621
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"fp"
	.byte	0x2
	.value	0x622
	.long	0x2149
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF346
	.byte	0x2
	.value	0x624
	.long	0xf8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF452
	.byte	0x2
	.value	0x634
	.long	0x3b
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x227e
	.uleb128 0x27
	.string	"c"
	.byte	0x2
	.value	0x635
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF453
	.byte	0x2
	.value	0x654
	.long	0x2d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x2318
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x655
	.long	0x1032
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF454
	.byte	0x2
	.value	0x656
	.long	0x2318
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x2
	.value	0x657
	.long	0x4a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"pc"
	.byte	0x2
	.value	0x658
	.long	0x231e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"p"
	.byte	0x2
	.value	0x65a
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF455
	.byte	0x2
	.value	0x65b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x65c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF456
	.byte	0x2
	.value	0x65c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a6
	.uleb128 0x6
	.byte	0x8
	.long	0x3b
	.uleb128 0x37
	.long	.LASF457
	.byte	0x2
	.value	0x69d
	.long	0x3b
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2432
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x69e
	.long	0x1032
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF454
	.byte	0x2
	.value	0x69f
	.long	0x2318
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x2
	.value	0x6a0
	.long	0x4a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF458
	.byte	0x2
	.value	0x6a1
	.long	0x56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF459
	.byte	0x2
	.value	0x6a2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF460
	.byte	0x2
	.value	0x6a4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"str"
	.byte	0x2
	.value	0x6a5
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x6a6
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x2403
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x6cf
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF461
	.byte	0x2
	.value	0x6cf
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF462
	.byte	0x2
	.value	0x6d0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2d
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x30
	.string	"i"
	.byte	0x2
	.value	0x6ec
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF422
	.byte	0x2
	.value	0x6ed
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF463
	.byte	0x2
	.value	0x723
	.long	0x44
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x254d
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x724
	.long	0x1032
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF346
	.byte	0x2
	.value	0x725
	.long	0xf8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.long	.LASF464
	.byte	0x2
	.value	0x726
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.long	.LASF459
	.byte	0x2
	.value	0x727
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF465
	.byte	0x2
	.value	0x728
	.long	0x231e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.string	"str"
	.byte	0x2
	.value	0x72a
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x72b
	.long	0x4a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF466
	.byte	0x2
	.value	0x72c
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF467
	.byte	0x2
	.value	0x72d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF468
	.byte	0x2
	.value	0x72d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"c"
	.byte	0x2
	.value	0x72d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF458
	.byte	0x2
	.value	0x72e
	.long	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF402
	.byte	0x2
	.value	0x72f
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF469
	.byte	0x2
	.value	0x730
	.long	0x859
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x2d
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2f
	.long	.LASF470
	.byte	0x2
	.value	0x77c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF471
	.byte	0x2
	.value	0x7a8
	.long	0x12ad
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x259d
	.uleb128 0x27
	.string	"len"
	.byte	0x2
	.value	0x7a9
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF402
	.byte	0x2
	.value	0x7ab
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF344
	.byte	0x2
	.value	0x7ac
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x39
	.long	.LASF472
	.byte	0x2
	.value	0x7bd
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x25e9
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x7be
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF352
	.byte	0x2
	.value	0x7bf
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.string	"end"
	.byte	0x2
	.value	0x7c1
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF473
	.byte	0x2
	.value	0x7cb
	.long	0x12ad
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x2667
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x7cc
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF474
	.byte	0x2
	.value	0x7cd
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF402
	.byte	0x2
	.value	0x7cf
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.string	"p"
	.byte	0x2
	.value	0x7cf
	.long	0x2667
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2f
	.long	.LASF475
	.byte	0x2
	.value	0x7d3
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12ad
	.uleb128 0x37
	.long	.LASF476
	.byte	0x2
	.value	0x7ea
	.long	0x12ad
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x26db
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x7eb
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF352
	.byte	0x2
	.value	0x7ec
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF477
	.byte	0x2
	.value	0x7ed
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF475
	.byte	0x2
	.value	0x7ef
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF471
	.byte	0x2
	.value	0x7f0
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF478
	.byte	0x2
	.value	0x7fd
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2755
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x7fe
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF479
	.byte	0x2
	.value	0x7ff
	.long	0x2667
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF477
	.byte	0x2
	.value	0x800
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF471
	.byte	0x2
	.value	0x802
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF480
	.byte	0x2
	.value	0x802
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF475
	.byte	0x2
	.value	0x803
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.long	.LASF481
	.byte	0x2
	.value	0x80d
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2792
	.uleb128 0x2e
	.long	.LASF352
	.byte	0x2
	.value	0x80e
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF325
	.byte	0x2
	.value	0x810
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF482
	.byte	0x2
	.value	0x81b
	.long	0x11ad
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f1
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x81c
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"len"
	.byte	0x2
	.value	0x81d
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF352
	.byte	0x2
	.value	0x81f
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF402
	.byte	0x2
	.value	0x820
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF483
	.byte	0x2
	.value	0x839
	.long	0x11ad
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2850
	.uleb128 0x2e
	.long	.LASF96
	.byte	0x2
	.value	0x83a
	.long	0x1032
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"len"
	.byte	0x2
	.value	0x83b
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF352
	.byte	0x2
	.value	0x83d
	.long	0x12ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF402
	.byte	0x2
	.value	0x83e
	.long	0x11ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	0x4a6
	.long	0x2860
	.uleb128 0xb
	.long	0x34
	.byte	0x5
	.byte	0
	.uleb128 0x2b
	.long	.LASF484
	.byte	0x2
	.byte	0x3a
	.long	0x2875
	.uleb128 0x9
	.byte	0x3
	.quad	digraph_spellings
	.uleb128 0xd
	.long	0x2850
	.uleb128 0xa
	.long	0x141c
	.long	0x288a
	.uleb128 0xb
	.long	0x34
	.byte	0x43
	.byte	0
	.uleb128 0x2b
	.long	.LASF485
	.byte	0x2
	.byte	0x3f
	.long	0x289f
	.uleb128 0x9
	.byte	0x3
	.quad	token_spellings
	.uleb128 0xd
	.long	0x287a
	.uleb128 0x3a
	.long	.LASF486
	.byte	0x5
	.byte	0xaa
	.long	0x28c
	.uleb128 0xa
	.long	0x64
	.long	0x28bf
	.uleb128 0xb
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x3a
	.long	.LASF487
	.byte	0xc
	.byte	0x48
	.long	0x28ca
	.uleb128 0xd
	.long	0x28af
	.uleb128 0xa
	.long	0xab
	.long	0x28df
	.uleb128 0xb
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x3a
	.long	.LASF488
	.byte	0xd
	.byte	0xfb
	.long	0x28ea
	.uleb128 0xd
	.long	0x28cf
	.uleb128 0xa
	.long	0x5d
	.long	0x28ff
	.uleb128 0xb
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x3b
	.long	.LASF489
	.byte	0x1
	.value	0x15f
	.long	0x290b
	.uleb128 0xd
	.long	0x28ef
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
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0x27
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x31
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
.LASF269:
	.string	"CPP_MULT_EQ"
.LASF331:
	.string	"BT_DATE"
.LASF77:
	.string	"chunk"
.LASF8:
	.string	"size_t"
.LASF356:
	.string	"skipping"
.LASF369:
	.string	"include_file"
.LASF423:
	.string	"next_tokenrun"
.LASF0:
	.string	"sizetype"
.LASF415:
	.string	"start"
.LASF53:
	.string	"_sch_isprint"
.LASF119:
	.string	"base_run"
.LASF93:
	.string	"alloc_node"
.LASF359:
	.string	"lexing_comment"
.LASF150:
	.string	"used"
.LASF248:
	.string	"CPP_AND"
.LASF304:
	.string	"CPP_MACRO_ARG"
.LASF254:
	.string	"CPP_MAX"
.LASF438:
	.string	"cpp_spell_token"
.LASF141:
	.string	"line_map"
.LASF474:
	.string	"min_size"
.LASF373:
	.string	"spell_type"
.LASF26:
	.string	"_IO_save_end"
.LASF339:
	.string	"answers"
.LASF468:
	.string	"max_chars"
.LASF142:
	.string	"to_file"
.LASF60:
	.string	"_sch_isnvsp"
.LASF57:
	.string	"_sch_isxdigit"
.LASF68:
	.string	"dev_t"
.LASF139:
	.string	"print_version"
.LASF470:
	.string	"nbits"
.LASF196:
	.string	"warn_system_headers"
.LASF169:
	.string	"out_fname"
.LASF71:
	.string	"_obstack_chunk"
.LASF411:
	.string	"len_so_far"
.LASF280:
	.string	"CPP_PASTE"
.LASF122:
	.string	"keep_tokens"
.LASF437:
	.string	"cpp_token_len"
.LASF257:
	.string	"CPP_OR_OR"
.LASF349:
	.string	"cpp_context"
.LASF19:
	.string	"_IO_write_base"
.LASF379:
	.string	"SPELL_NONE"
.LASF105:
	.string	"state"
.LASF333:
	.string	"BT_BASE_FILE"
.LASF412:
	.string	"unterminated"
.LASF35:
	.string	"_lock"
.LASF393:
	.string	"prevc"
.LASF85:
	.string	"extra_arg"
.LASF367:
	.string	"n__STRICT_ANSI__"
.LASF261:
	.string	"CPP_OPEN_PAREN"
.LASF100:
	.string	"HT_NO_INSERT"
.LASF201:
	.string	"warn_traditional"
.LASF219:
	.string	"type"
.LASF197:
	.string	"inhibit_errors"
.LASF116:
	.string	"mi_ind_cmacro"
.LASF24:
	.string	"_IO_save_base"
.LASF353:
	.string	"direct_p"
.LASF420:
	.string	"save_comment"
.LASF309:
	.string	"CLK_GNUC89"
.LASF99:
	.string	"hashnode"
.LASF363:
	.string	"parsing_args"
.LASF342:
	.string	"answer"
.LASF28:
	.string	"_chain"
.LASF299:
	.string	"CPP_OTHER"
.LASF457:
	.string	"cpp_parse_escape"
.LASF218:
	.string	"cpp_token"
.LASF175:
	.string	"map_list"
.LASF195:
	.string	"inhibit_warnings"
.LASF276:
	.string	"CPP_LSHIFT_EQ"
.LASF203:
	.string	"no_output"
.LASF422:
	.string	"count"
.LASF32:
	.string	"_cur_column"
.LASF427:
	.string	"_cpp_lex_direct"
.LASF209:
	.string	"pedantic"
.LASF9:
	.string	"__dev_t"
.LASF155:
	.string	"cpp_buffer"
.LASF343:
	.string	"_cpp_buff"
.LASF83:
	.string	"chunkfun"
.LASF402:
	.string	"result"
.LASF258:
	.string	"CPP_QUERY"
.LASF199:
	.string	"warn_trigraphs"
.LASF310:
	.string	"CLK_GNUC99"
.LASF384:
	.string	"ustrcmp"
.LASF236:
	.string	"def_pragma"
.LASF111:
	.string	"free_buffs"
.LASF365:
	.string	"n_true"
.LASF74:
	.string	"contents"
.LASF90:
	.string	"hash_table"
.LASF348:
	.string	"tokenrun"
.LASF284:
	.string	"CPP_CLOSE_BRACE"
.LASF441:
	.string	"left"
.LASF140:
	.string	"our_hashtable"
.LASF2:
	.string	"long int"
.LASF484:
	.string	"digraph_spellings"
.LASF194:
	.string	"pedantic_errors"
.LASF298:
	.string	"CPP_WCHAR"
.LASF277:
	.string	"CPP_MIN_EQ"
.LASF106:
	.string	"line_maps"
.LASF429:
	.string	"at_eof"
.LASF256:
	.string	"CPP_AND_AND"
.LASF292:
	.string	"CPP_DEREF_STAR"
.LASF45:
	.string	"_IO_marker"
.LASF265:
	.string	"CPP_GREATER_EQ"
.LASF92:
	.string	"entries"
.LASF418:
	.string	"warned_nulls"
.LASF242:
	.string	"CPP_LESS"
.LASF459:
	.string	"traditional"
.LASF271:
	.string	"CPP_MOD_EQ"
.LASF95:
	.string	"nelements"
.LASF82:
	.string	"alignment_mask"
.LASF239:
	.string	"CPP_EQ"
.LASF54:
	.string	"_sch_ispunct"
.LASF302:
	.string	"CPP_HEADER_NAME"
.LASF193:
	.string	"print_include_names"
.LASF237:
	.string	"ht_lookup_option"
.LASF439:
	.string	"spell_ident"
.LASF318:
	.string	"CLK_ASM"
.LASF424:
	.string	"cpp_ideq"
.LASF413:
	.string	"term"
.LASF134:
	.string	"hash_ob"
.LASF6:
	.string	"signed char"
.LASF303:
	.string	"CPP_COMMENT"
.LASF488:
	.string	"_hex_value"
.LASF159:
	.string	"if_stack"
.LASF44:
	.string	"_IO_FILE"
.LASF396:
	.string	"handle_newline"
.LASF108:
	.string	"directive_line"
.LASF113:
	.string	"context"
.LASF368:
	.string	"n__VA_ARGS__"
.LASF406:
	.string	"__o1"
.LASF330:
	.string	"BT_SPECLINE"
.LASF4:
	.string	"unsigned char"
.LASF469:
	.string	"unsigned_p"
.LASF268:
	.string	"CPP_MINUS_EQ"
.LASF460:
	.string	"unknown"
.LASF431:
	.string	"update_tokens_line"
.LASF168:
	.string	"in_fname"
.LASF364:
	.string	"n_defined"
.LASF223:
	.string	"cpp_hashnode"
.LASF464:
	.string	"warn_multi"
.LASF289:
	.string	"CPP_DEREF"
.LASF285:
	.string	"CPP_SEMICOLON"
.LASF154:
	.string	"_Bool"
.LASF143:
	.string	"to_line"
.LASF421:
	.string	"from"
.LASF492:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF228:
	.string	"value"
.LASF63:
	.string	"_sch_isidnum"
.LASF386:
	.string	"from_char"
.LASF426:
	.string	"_cpp_lex_token"
.LASF13:
	.string	"char"
.LASF153:
	.string	"trace_includes"
.LASF311:
	.string	"CLK_STDC89"
.LASF206:
	.string	"ignore_srcdir"
.LASF321:
	.string	"arg_no"
.LASF135:
	.string	"buffer_ob"
.LASF312:
	.string	"CLK_STDC94"
.LASF178:
	.string	"user_label_prefix"
.LASF157:
	.string	"rlimit"
.LASF282:
	.string	"CPP_CLOSE_SQUARE"
.LASF224:
	.string	"ident"
.LASF462:
	.string	"digits_found"
.LASF493:
	.string	"_IO_lock_t"
.LASF329:
	.string	"builtin_type"
.LASF214:
	.string	"dump_includes"
.LASF327:
	.string	"name_map"
.LASF452:
	.string	"hex_digit_value"
.LASF103:
	.string	"cpp_reader"
.LASF466:
	.string	"chars_seen"
.LASF123:
	.string	"errors"
.LASF112:
	.string	"base_context"
.LASF320:
	.string	"source"
.LASF432:
	.string	"skipped_white"
.LASF313:
	.string	"CLK_STDC99"
.LASF220:
	.string	"flags"
.LASF232:
	.string	"file_change"
.LASF59:
	.string	"_sch_isvsp"
.LASF210:
	.string	"preprocessed"
.LASF16:
	.string	"_IO_read_ptr"
.LASF114:
	.string	"directive"
.LASF176:
	.string	"include_prefix"
.LASF281:
	.string	"CPP_OPEN_SQUARE"
.LASF465:
	.string	"pchars_seen"
.LASF48:
	.string	"_pos"
.LASF487:
	.string	"_sch_istable"
.LASF221:
	.string	"cpp_string"
.LASF101:
	.string	"HT_ALLOC"
.LASF222:
	.string	"text"
.LASF374:
	.string	"SPELL_OPERATOR"
.LASF128:
	.string	"all_include_files"
.LASF27:
	.string	"_markers"
.LASF279:
	.string	"CPP_HASH"
.LASF481:
	.string	"_cpp_free_buff"
.LASF283:
	.string	"CPP_OPEN_BRACE"
.LASF72:
	.string	"limit"
.LASF56:
	.string	"_sch_isupper"
.LASF129:
	.string	"max_include_len"
.LASF295:
	.string	"CPP_NAME"
.LASF451:
	.string	"cpp_output_line"
.LASF50:
	.string	"_sch_iscntrl"
.LASF104:
	.string	"buffer"
.LASF233:
	.string	"include"
.LASF332:
	.string	"BT_FILE"
.LASF319:
	.string	"node"
.LASF208:
	.string	"warn_undef"
.LASF198:
	.string	"warn_comments"
.LASF317:
	.string	"CLK_OBJCXX"
.LASF491:
	.string	"cpplex.c"
.LASF314:
	.string	"CLK_GNUCXX"
.LASF328:
	.string	"file_name_map_list"
.LASF202:
	.string	"warnings_are_errors"
.LASF192:
	.string	"print_deps_append"
.LASF307:
	.string	"N_TTYPES"
.LASF36:
	.string	"_offset"
.LASF388:
	.string	"skip_escaped_newlines"
.LASF483:
	.string	"_cpp_aligned_alloc"
.LASF76:
	.string	"chunk_size"
.LASF345:
	.string	"file_name_map"
.LASF118:
	.string	"cur_token"
.LASF407:
	.string	"parse_number"
.LASF148:
	.string	"maps"
.LASF184:
	.string	"objc"
.LASF401:
	.string	"parse_identifier"
.LASF67:
	.string	"ino_t"
.LASF389:
	.string	"saved_cur"
.LASF3:
	.string	"long unsigned int"
.LASF200:
	.string	"warn_import"
.LASF87:
	.string	"maybe_empty_object"
.LASF30:
	.string	"_flags2"
.LASF417:
	.string	"terminator"
.LASF338:
	.string	"macro"
.LASF18:
	.string	"_IO_read_base"
.LASF472:
	.string	"_cpp_release_buff"
.LASF78:
	.string	"object_base"
.LASF390:
	.string	"next1"
.LASF107:
	.string	"line"
.LASF110:
	.string	"u_buff"
.LASF275:
	.string	"CPP_RSHIFT_EQ"
.LASF43:
	.string	"_unused2"
.LASF149:
	.string	"allocated"
.LASF287:
	.string	"CPP_PLUS_PLUS"
.LASF278:
	.string	"CPP_MAX_EQ"
.LASF97:
	.string	"searches"
.LASF171:
	.string	"pending"
.LASF204:
	.string	"remap"
.LASF84:
	.string	"freefun"
.LASF189:
	.string	"print_deps"
.LASF414:
	.string	"unescaped_terminator_p"
.LASF31:
	.string	"_old_offset"
.LASF335:
	.string	"BT_TIME"
.LASF286:
	.string	"CPP_ELLIPSIS"
.LASF380:
	.string	"token_spelling"
.LASF211:
	.string	"no_standard_includes"
.LASF241:
	.string	"CPP_GREATER"
.LASF246:
	.string	"CPP_DIV"
.LASF253:
	.string	"CPP_MIN"
.LASF88:
	.string	"alloc_failed"
.LASF247:
	.string	"CPP_MOD"
.LASF381:
	.string	"category"
.LASF10:
	.string	"__ino_t"
.LASF324:
	.string	"search_path"
.LASF180:
	.string	"verbose"
.LASF442:
	.string	"right"
.LASF96:
	.string	"pfile"
.LASF70:
	.string	"long long int"
.LASF227:
	.string	"rid_code"
.LASF187:
	.string	"digraphs"
.LASF185:
	.string	"discard_comments"
.LASF366:
	.string	"n_false"
.LASF467:
	.string	"width"
.LASF478:
	.string	"_cpp_extend_buff"
.LASF249:
	.string	"CPP_OR"
.LASF480:
	.string	"old_buff"
.LASF231:
	.string	"line_change"
.LASF461:
	.string	"overflow"
.LASF61:
	.string	"_sch_isalpha"
.LASF163:
	.string	"warned_cplusplus_comments"
.LASF382:
	.string	"double"
.LASF91:
	.string	"stack"
.LASF190:
	.string	"deps_phony_targets"
.LASF21:
	.string	"_IO_write_end"
.LASF132:
	.string	"avoid_paste"
.LASF152:
	.string	"depth"
.LASF458:
	.string	"mask"
.LASF138:
	.string	"spec_nodes"
.LASF49:
	.string	"_sch_isblank"
.LASF352:
	.string	"buff"
.LASF144:
	.string	"from_line"
.LASF372:
	.string	"U_CHAR"
.LASF127:
	.string	"macro_buffer_len"
.LASF62:
	.string	"_sch_isalnum"
.LASF205:
	.string	"no_line_commands"
.LASF398:
	.string	"skip_whitespace"
.LASF436:
	.string	"stop"
.LASF477:
	.string	"min_extra"
.LASF170:
	.string	"tabstop"
.LASF217:
	.string	"help_only"
.LASF22:
	.string	"_IO_buf_base"
.LASF358:
	.string	"save_comments"
.LASF252:
	.string	"CPP_LSHIFT"
.LASF1:
	.string	"unsigned int"
.LASF55:
	.string	"_sch_isspace"
.LASF296:
	.string	"CPP_NUMBER"
.LASF160:
	.string	"col_adjust"
.LASF75:
	.string	"obstack"
.LASF494:
	.string	"utoken"
.LASF137:
	.string	"opts"
.LASF485:
	.string	"token_spellings"
.LASF443:
	.string	"cpp_token_as_text"
.LASF117:
	.string	"mi_valid"
.LASF391:
	.string	"get_effective_char"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF449:
	.string	"token1"
.LASF450:
	.string	"token2"
.LASF47:
	.string	"_sbuf"
.LASF419:
	.string	"warned_multi"
.LASF65:
	.string	"_sch_iscppsp"
.LASF383:
	.string	"string"
.LASF244:
	.string	"CPP_MINUS"
.LASF482:
	.string	"_cpp_unaligned_alloc"
.LASF453:
	.string	"maybe_read_ucs"
.LASF15:
	.string	"_flags"
.LASF370:
	.string	"splay_tree_s"
.LASF215:
	.string	"show_column"
.LASF79:
	.string	"next_free"
.LASF350:
	.string	"first"
.LASF42:
	.string	"_mode"
.LASF161:
	.string	"saved_flags"
.LASF490:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF489:
	.string	"_cpp_trigraph_map"
.LASF385:
	.string	"trigraph_p"
.LASF354:
	.string	"lexer_state"
.LASF297:
	.string	"CPP_CHAR"
.LASF102:
	.string	"HT_ALLOCED"
.LASF325:
	.string	"next"
.LASF376:
	.string	"SPELL_IDENT"
.LASF337:
	.string	"BT_PRAGMA"
.LASF272:
	.string	"CPP_AND_EQ"
.LASF52:
	.string	"_sch_islower"
.LASF404:
	.string	"saw_dollar"
.LASF403:
	.string	"parse_identifier_slow"
.LASF440:
	.string	"spelling"
.LASF14:
	.string	"FILE"
.LASF133:
	.string	"deps"
.LASF124:
	.string	"mls_line"
.LASF136:
	.string	"pragmas"
.LASF243:
	.string	"CPP_PLUS"
.LASF300:
	.string	"CPP_STRING"
.LASF291:
	.string	"CPP_SCOPE"
.LASF245:
	.string	"CPP_MULT"
.LASF166:
	.string	"return_at_eof"
.LASF454:
	.string	"pstr"
.LASF290:
	.string	"CPP_DOT"
.LASF375:
	.string	"SPELL_CHAR"
.LASF270:
	.string	"CPP_DIV_EQ"
.LASF475:
	.string	"size"
.LASF147:
	.string	"sysp"
.LASF69:
	.string	"long long unsigned int"
.LASF315:
	.string	"CLK_CXX98"
.LASF240:
	.string	"CPP_NOT"
.LASF158:
	.string	"line_base"
.LASF479:
	.string	"pbuff"
.LASF456:
	.string	"length"
.LASF308:
	.string	"c_lang"
.LASF11:
	.string	"__off_t"
.LASF260:
	.string	"CPP_COMMA"
.LASF250:
	.string	"CPP_XOR"
.LASF230:
	.string	"cpp_callbacks"
.LASF186:
	.string	"trigraphs"
.LASF145:
	.string	"included_from"
.LASF428:
	.string	"comment_start"
.LASF146:
	.string	"reason"
.LASF357:
	.string	"angled_headers"
.LASF362:
	.string	"prevent_expansion"
.LASF273:
	.string	"CPP_OR_EQ"
.LASF165:
	.string	"search_cached"
.LASF267:
	.string	"CPP_PLUS_EQ"
.LASF25:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_shortbuf"
.LASF410:
	.string	"dest"
.LASF181:
	.string	"signed_char"
.LASF51:
	.string	"_sch_isdigit"
.LASF183:
	.string	"cplusplus_comments"
.LASF46:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF430:
	.string	"fresh_line"
.LASF341:
	.string	"builtin"
.LASF455:
	.string	"code"
.LASF408:
	.string	"number"
.LASF121:
	.string	"lookaheads"
.LASF188:
	.string	"extended_numbers"
.LASF263:
	.string	"CPP_EQ_EQ"
.LASF86:
	.string	"use_extra_arg"
.LASF125:
	.string	"mls_col"
.LASF164:
	.string	"from_stage3"
.LASF23:
	.string	"_IO_buf_end"
.LASF182:
	.string	"cplusplus"
.LASF409:
	.string	"leading_period"
.LASF172:
	.string	"deps_file"
.LASF435:
	.string	"start_ident"
.LASF326:
	.string	"name"
.LASF167:
	.string	"cpp_options"
.LASF355:
	.string	"in_directive"
.LASF445:
	.string	"_cpp_init_tokenrun"
.LASF255:
	.string	"CPP_COMPL"
.LASF322:
	.string	"cppchar_t"
.LASF486:
	.string	"stderr"
.LASF288:
	.string	"CPP_MINUS_MINUS"
.LASF7:
	.string	"short int"
.LASF238:
	.string	"cpp_ttype"
.LASF212:
	.string	"no_standard_cplusplus_includes"
.LASF179:
	.string	"lang"
.LASF207:
	.string	"dollars_in_ident"
.LASF476:
	.string	"_cpp_append_extend_buff"
.LASF156:
	.string	"backup_to"
.LASF94:
	.string	"nslots"
.LASF371:
	.string	"pragma_entry"
.LASF33:
	.string	"_vtable_offset"
.LASF471:
	.string	"new_buff"
.LASF235:
	.string	"undef"
.LASF151:
	.string	"last_listed"
.LASF425:
	.string	"_cpp_temp_token"
.LASF397:
	.string	"adjust_column"
.LASF120:
	.string	"cur_run"
.LASF463:
	.string	"cpp_interpret_charconst"
.LASF316:
	.string	"CLK_OBJC"
.LASF387:
	.string	"accept"
.LASF433:
	.string	"trigraph"
.LASF64:
	.string	"_sch_isgraph"
.LASF109:
	.string	"a_buff"
.LASF377:
	.string	"SPELL_NUMBER"
.LASF447:
	.string	"_cpp_equiv_tokens"
.LASF306:
	.string	"CPP_EOF"
.LASF264:
	.string	"CPP_NOT_EQ"
.LASF301:
	.string	"CPP_WSTRING"
.LASF336:
	.string	"BT_STDC"
.LASF262:
	.string	"CPP_CLOSE_PAREN"
.LASF17:
	.string	"_IO_read_end"
.LASF361:
	.string	"poisoned_ok"
.LASF395:
	.string	"orig_line"
.LASF266:
	.string	"CPP_LESS_EQ"
.LASF66:
	.string	"_sch_isbasic"
.LASF58:
	.string	"_sch_isidst"
.LASF251:
	.string	"CPP_RSHIFT"
.LASF226:
	.string	"directive_index"
.LASF177:
	.string	"include_prefix_len"
.LASF98:
	.string	"collisions"
.LASF29:
	.string	"_fileno"
.LASF305:
	.string	"CPP_PADDING"
.LASF416:
	.string	"parse_string"
.LASF126:
	.string	"macro_buffer"
.LASF444:
	.string	"cpp_type2name"
.LASF346:
	.string	"token"
.LASF293:
	.string	"CPP_DOT_STAR"
.LASF294:
	.string	"CPP_ATSIGN"
.LASF5:
	.string	"short unsigned int"
.LASF80:
	.string	"chunk_limit"
.LASF259:
	.string	"CPP_COLON"
.LASF174:
	.string	"bracket_include"
.LASF446:
	.string	"cpp_output_token"
.LASF448:
	.string	"cpp_avoid_paste"
.LASF344:
	.string	"base"
.LASF229:
	.string	"cpp_macro"
.LASF213:
	.string	"dump_macros"
.LASF20:
	.string	"_IO_write_ptr"
.LASF392:
	.string	"skip_block_comment"
.LASF131:
	.string	"time"
.LASF173:
	.string	"quote_include"
.LASF473:
	.string	"_cpp_get_buff"
.LASF360:
	.string	"va_args_ok"
.LASF400:
	.string	"name_p"
.LASF162:
	.string	"last_Wtrigraphs"
.LASF81:
	.string	"temp"
.LASF225:
	.string	"arg_index"
.LASF234:
	.string	"define"
.LASF378:
	.string	"SPELL_STRING"
.LASF89:
	.string	"ht_identifier"
.LASF405:
	.string	"__len"
.LASF340:
	.string	"operator"
.LASF323:
	.string	"cpp_pending"
.LASF216:
	.string	"operator_names"
.LASF191:
	.string	"print_deps_missing_files"
.LASF130:
	.string	"date"
.LASF347:
	.string	"ptoken"
.LASF73:
	.string	"prev"
.LASF115:
	.string	"mi_cmacro"
.LASF274:
	.string	"CPP_XOR_EQ"
.LASF394:
	.string	"skip_line_comment"
.LASF334:
	.string	"BT_INCLUDE_LEVEL"
.LASF351:
	.string	"last"
.LASF434:
	.string	"random_char"
.LASF399:
	.string	"warned"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
