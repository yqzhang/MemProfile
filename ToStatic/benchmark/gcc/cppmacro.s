	.file	"cppmacro.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cppmacro.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.type	ustrncmp, @function
ustrncmp:
.LFB3:
	.file 1 "cpphash.h"
	.loc 1 451 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# s1, s1
	movq	%rsi, -16(%rbp)	# s2, s2
	movq	%rdx, -24(%rbp)	# n, n
	.loc 1 452 0
	movq	-24(%rbp), %rdx	# n, tmp61
	movq	-16(%rbp), %rcx	# s2, tmp62
	movq	-8(%rbp), %rax	# s1, tmp63
	movq	%rcx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	strncmp	#
	.loc 1 453 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ustrncmp, .-ustrncmp
	.type	ustrlen, @function
ustrlen:
.LFB4:
	.loc 1 458 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s1, s1
	.loc 1 459 0
	movq	-8(%rbp), %rax	# s1, tmp61
	movq	%rax, %rdi	# tmp61,
	call	strlen	#
	.loc 1 460 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ustrlen, .-ustrlen
	.type	new_string_token, @function
new_string_token:
.LFB8:
	.file 2 "cppmacro.c"
	.loc 2 96 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# text, text
	movl	%edx, -36(%rbp)	# len, len
	.loc 2 97 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movq	%rax, %rdi	# tmp63,
	call	_cpp_temp_token	#
	movq	%rax, -8(%rbp)	# tmp64, token
	.loc 2 99 0
	movl	-36(%rbp), %edx	# len, D.9247
	movq	-32(%rbp), %rax	# text, tmp65
	addq	%rdx, %rax	# D.9247, D.9248
	movb	$0, (%rax)	#, *_6
	.loc 2 100 0
	movq	-8(%rbp), %rax	# token, tmp66
	movb	$61, 6(%rax)	#, token_2->type
	.loc 2 101 0
	movq	-8(%rbp), %rax	# token, tmp67
	movl	-36(%rbp), %edx	# len, tmp68
	movl	%edx, 8(%rax)	# tmp68, token_2->val.str.len
	.loc 2 102 0
	movq	-8(%rbp), %rax	# token, tmp69
	movq	-32(%rbp), %rdx	# text, tmp70
	movq	%rdx, 16(%rax)	# tmp70, token_2->val.str.text
	.loc 2 103 0
	movq	-8(%rbp), %rax	# token, tmp71
	movb	$0, 7(%rax)	#, token_2->flags
	.loc 2 104 0
	movq	-8(%rbp), %rax	# token, D.9249
	.loc 2 105 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	new_string_token, .-new_string_token
	.section	.rodata
.LC0:
	.string	"%u"
	.text
	.type	new_number_token, @function
new_number_token:
.LFB9:
	.loc 2 112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movl	%esi, -28(%rbp)	# number, number
	.loc 2 113 0
	movq	-24(%rbp), %rax	# pfile, tmp63
	movq	%rax, %rdi	# tmp63,
	call	_cpp_temp_token	#
	movq	%rax, -16(%rbp)	# tmp64, token
	.loc 2 115 0
	movq	-24(%rbp), %rax	# pfile, tmp65
	movl	$21, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	_cpp_unaligned_alloc	#
	movq	%rax, -8(%rbp)	# tmp66, buf
	.loc 2 117 0
	movl	-28(%rbp), %edx	# number, tmp67
	movq	-8(%rbp), %rax	# buf, tmp68
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp68,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 2 118 0
	movq	-16(%rbp), %rax	# token, tmp69
	movb	$57, 6(%rax)	#, token_2->type
	.loc 2 119 0
	movq	-16(%rbp), %rax	# token, tmp70
	movq	-8(%rbp), %rdx	# buf, tmp71
	movq	%rdx, 16(%rax)	# tmp71, token_2->val.str.text
	.loc 2 120 0
	movq	-8(%rbp), %rax	# buf, tmp72
	movq	%rax, %rdi	# tmp72,
	call	ustrlen	#
	movl	%eax, %edx	# D.9250, D.9251
	movq	-16(%rbp), %rax	# token, tmp73
	movl	%edx, 8(%rax)	# D.9251, token_2->val.str.len
	.loc 2 121 0
	movq	-16(%rbp), %rax	# token, tmp74
	movb	$0, 7(%rax)	#, token_2->flags
	.loc 2 122 0
	movq	-16(%rbp), %rax	# token, D.9252
	.loc 2 123 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	new_number_token, .-new_number_token
	.section	.rodata
.LC1:
	.string	"Jan"
.LC2:
	.string	"Feb"
.LC3:
	.string	"Mar"
.LC4:
	.string	"Apr"
.LC5:
	.string	"May"
.LC6:
	.string	"Jun"
.LC7:
	.string	"Jul"
.LC8:
	.string	"Aug"
.LC9:
	.string	"Sep"
.LC10:
	.string	"Oct"
.LC11:
	.string	"Nov"
.LC12:
	.string	"Dec"
	.align 32
	.type	monthnames, @object
	.size	monthnames, 96
monthnames:
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
.LC13:
	.string	"invalid built-in macro \"%s\""
.LC14:
	.string	"%s %2d %4d"
.LC15:
	.string	"%02d:%02d:%02d"
	.text
	.type	builtin_macro, @function
builtin_macro:
.LFB10:
	.loc 2 139 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# pfile, pfile
	movq	%rsi, -80(%rbp)	# node, node
	.loc 2 142 0
	movq	-80(%rbp), %rax	# node, tmp111
	movl	24(%rax), %eax	# node_7(D)->value.builtin, D.9267
	cmpl	$7, %eax	#, D.9267
	ja	.L10	#,
	movl	%eax, %eax	# D.9267, tmp112
	movq	.L12(,%rax,8), %rax	#, tmp113
	jmp	*%rax	# tmp113
	.section	.rodata
	.align 8
	.align 4
.L12:
	.quad	.L11
	.quad	.L13
	.quad	.L14
	.quad	.L14
	.quad	.L15
	.quad	.L13
	.quad	.L16
	.quad	.L17
	.text
.L10:
	.loc 2 145 0
	movq	-80(%rbp), %rax	# node, tmp114
	movq	8(%rax), %rdx	# node_7(D)->ident.str, D.9268
	movq	-72(%rbp), %rax	# pfile, tmp115
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp115,
	movl	$0, %eax	#,
	call	cpp_ice	#
	.loc 2 146 0
	movl	$0, %eax	#, D.9266
	jmp	.L18	#
.L14:
.LBB2:
	.loc 2 154 0
	movq	-72(%rbp), %rax	# pfile, tmp116
	movq	56(%rax), %rax	# pfile_10(D)->map, tmp117
	movq	%rax, -32(%rbp)	# tmp117, map
	.loc 2 156 0
	movq	-80(%rbp), %rax	# node, tmp118
	movl	24(%rax), %eax	# node_7(D)->value.builtin, D.9267
	cmpl	$3, %eax	#, D.9267
	jne	.L19	#,
	.loc 2 157 0
	jmp	.L20	#
.L21:
	.loc 2 158 0
	movq	-72(%rbp), %rax	# pfile, tmp119
	movq	24(%rax), %rcx	# pfile_10(D)->line_maps.maps, D.9269
	movq	-32(%rbp), %rax	# map, tmp120
	movl	16(%rax), %eax	# map_3->included_from, D.9266
	movslq	%eax, %rdx	# D.9266, D.9270
	movq	%rdx, %rax	# D.9270, tmp121
	addq	%rax, %rax	# tmp121
	addq	%rdx, %rax	# D.9270, tmp121
	salq	$3, %rax	#, tmp122
	addq	%rcx, %rax	# D.9269, tmp123
	movq	%rax, -32(%rbp)	# tmp123, map
.L20:
	.loc 2 157 0 discriminator 1
	movq	-32(%rbp), %rax	# map, tmp124
	movl	16(%rax), %eax	# map_3->included_from, D.9266
	testl	%eax, %eax	# D.9266
	jns	.L21	#,
.L19:
	.loc 2 160 0
	movq	-32(%rbp), %rax	# map, tmp125
	movq	(%rax), %rax	# map_4->to_file, tmp126
	movq	%rax, -24(%rbp)	# tmp126, name
	.loc 2 161 0
	movq	-24(%rbp), %rax	# name, tmp127
	movq	%rax, %rdi	# tmp127,
	call	strlen	#
	movl	%eax, -56(%rbp)	# D.9270, len
	.loc 2 162 0
	movl	-56(%rbp), %eax	# len, tmp128
	sall	$2, %eax	#, D.9271
	addl	$1, %eax	#, D.9271
	movl	%eax, %edx	# D.9271, D.9270
	movq	-72(%rbp), %rax	# pfile, tmp129
	movq	%rdx, %rsi	# D.9270,
	movq	%rax, %rdi	# tmp129,
	call	_cpp_unaligned_alloc	#
	movq	%rax, -16(%rbp)	# tmp130, buf
	.loc 2 163 0
	movl	-56(%rbp), %edx	# len, tmp131
	movq	-24(%rbp), %rcx	# name, tmp132
	movq	-16(%rbp), %rax	# buf, tmp133
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	cpp_quote_string	#
	movq	%rax, %rdx	# D.9272, D.9273
	movq	-16(%rbp), %rax	# buf, buf.0
	subq	%rax, %rdx	# buf.0, D.9273
	movq	%rdx, %rax	# D.9273, D.9273
	movl	%eax, -56(%rbp)	# D.9273, len
	.loc 2 165 0
	movl	-56(%rbp), %edx	# len, tmp134
	movq	-16(%rbp), %rcx	# buf, tmp135
	movq	-72(%rbp), %rax	# pfile, tmp136
	movq	%rcx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	new_string_token	#
	movq	%rax, -40(%rbp)	# tmp137, result
.LBE2:
	.loc 2 167 0
	jmp	.L22	#
.L15:
	.loc 2 173 0
	movq	-72(%rbp), %rax	# pfile, tmp138
	movl	44(%rax), %eax	# pfile_10(D)->line_maps.depth, D.9271
	leal	-1(%rax), %edx	#, D.9271
	movq	-72(%rbp), %rax	# pfile, tmp139
	movl	%edx, %esi	# D.9271,
	movq	%rax, %rdi	# tmp139,
	call	new_number_token	#
	movq	%rax, -40(%rbp)	# tmp140, result
	.loc 2 174 0
	jmp	.L22	#
.L11:
	.loc 2 181 0
	movq	-72(%rbp), %rax	# pfile, tmp141
	movq	192(%rax), %rax	# pfile_10(D)->cur_token, D.9274
	subq	$24, %rax	#, D.9274
	movl	(%rax), %edx	# _37->line, D.9271
	movq	-72(%rbp), %rax	# pfile, tmp142
	movq	56(%rax), %rax	# pfile_10(D)->map, D.9275
	movl	8(%rax), %eax	# _39->to_line, D.9271
	addl	%eax, %edx	# D.9271, D.9271
	movq	-72(%rbp), %rax	# pfile, tmp143
	movq	56(%rax), %rax	# pfile_10(D)->map, D.9275
	movl	12(%rax), %eax	# _42->from_line, D.9271
	.loc 2 180 0
	subl	%eax, %edx	# D.9271, D.9271
	movq	-72(%rbp), %rax	# pfile, tmp144
	movl	%edx, %esi	# D.9271,
	movq	%rax, %rdi	# tmp144,
	call	new_number_token	#
	movq	%rax, -40(%rbp)	# tmp145, result
	.loc 2 183 0
	jmp	.L22	#
.L16:
.LBB3:
	.loc 2 187 0
	movq	-72(%rbp), %rax	# pfile, tmp146
	movq	56(%rax), %rax	# pfile_10(D)->map, D.9275
	.loc 2 188 0
	testq	%rax, %rax	# D.9275
	je	.L23	#,
	.loc 2 187 0
	movq	-72(%rbp), %rax	# pfile, tmp147
	movq	56(%rax), %rax	# pfile_10(D)->map, D.9275
	movzbl	21(%rax), %eax	# _47->sysp, D.9276
	testb	%al, %al	# D.9276
	je	.L23	#,
	.loc 2 188 0
	movq	-72(%rbp), %rax	# pfile, tmp148
	movq	808(%rax), %rax	# pfile_10(D)->spec_nodes.n__STRICT_ANSI__, D.9277
	movzbl	20(%rax), %eax	# _49->type, D.9276
	testb	%al, %al	# D.9276
	je	.L24	#,
.L23:
	.loc 2 188 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.1
	jmp	.L25	#
.L24:
	.loc 2 188 0 discriminator 2
	movl	$0, %eax	#, iftmp.1
.L25:
	.loc 2 187 0 is_stmt 1
	movl	%eax, -52(%rbp)	# iftmp.1, stdc
	.loc 2 189 0
	movl	-52(%rbp), %edx	# stdc, stdc.2
	movq	-72(%rbp), %rax	# pfile, tmp149
	movl	%edx, %esi	# stdc.2,
	movq	%rax, %rdi	# tmp149,
	call	new_number_token	#
	movq	%rax, -40(%rbp)	# tmp150, result
.LBE3:
	.loc 2 191 0
	jmp	.L22	#
.L13:
	.loc 2 195 0
	movq	-72(%rbp), %rax	# pfile, tmp151
	movzbl	302(%rax), %eax	# pfile_10(D)->date.type, D.9276
	cmpb	$67, %al	#, D.9276
	jne	.L26	#,
.LBB4:
	.loc 2 201 0
	movl	$0, %edi	#,
	call	time	#
	movq	%rax, -48(%rbp)	# tt.3, tt
	.loc 2 202 0
	leaq	-48(%rbp), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	localtime	#
	movq	%rax, -8(%rbp)	# tmp153, tb
	.loc 2 205 0
	movq	-72(%rbp), %rax	# pfile, tmp154
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	_cpp_unaligned_alloc	#
	.loc 2 204 0
	movq	-72(%rbp), %rdx	# pfile, tmp155
	movq	%rax, 312(%rdx)	# D.9272, pfile_10(D)->date.val.str.text
	.loc 2 206 0
	movq	-72(%rbp), %rax	# pfile, tmp156
	movl	$11, 304(%rax)	#, pfile_10(D)->date.val.str.len
	.loc 2 207 0
	movq	-72(%rbp), %rax	# pfile, tmp157
	movb	$61, 302(%rax)	#, pfile_10(D)->date.type
	.loc 2 208 0
	movq	-72(%rbp), %rax	# pfile, tmp158
	movb	$0, 303(%rax)	#, pfile_10(D)->date.flags
	.loc 2 210 0
	movq	-8(%rbp), %rax	# tb, tmp159
	movl	20(%rax), %eax	# tb_58->tm_year, D.9266
	.loc 2 209 0
	leal	1900(%rax), %esi	#, D.9266
	movq	-8(%rbp), %rax	# tb, tmp160
	movl	12(%rax), %ecx	# tb_58->tm_mday, D.9266
	.loc 2 210 0
	movq	-8(%rbp), %rax	# tb, tmp161
	movl	16(%rax), %eax	# tb_58->tm_mon, D.9266
	.loc 2 209 0
	cltq
	movq	monthnames(,%rax,8), %rdx	# monthnames, D.9278
	movq	-72(%rbp), %rax	# pfile, tmp163
	movq	312(%rax), %rax	# pfile_10(D)->date.val.str.text, D.9268
	movl	%esi, %r8d	# D.9266,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# D.9268,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 2 213 0
	movq	-72(%rbp), %rax	# pfile, tmp164
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	_cpp_unaligned_alloc	#
	.loc 2 212 0
	movq	-72(%rbp), %rdx	# pfile, tmp165
	movq	%rax, 336(%rdx)	# D.9272, pfile_10(D)->time.val.str.text
	.loc 2 214 0
	movq	-72(%rbp), %rax	# pfile, tmp166
	movl	$8, 328(%rax)	#, pfile_10(D)->time.val.str.len
	.loc 2 215 0
	movq	-72(%rbp), %rax	# pfile, tmp167
	movb	$61, 326(%rax)	#, pfile_10(D)->time.type
	.loc 2 216 0
	movq	-72(%rbp), %rax	# pfile, tmp168
	movb	$0, 327(%rax)	#, pfile_10(D)->time.flags
	.loc 2 217 0
	movq	-8(%rbp), %rax	# tb, tmp169
	movl	(%rax), %esi	# tb_58->tm_sec, D.9266
	movq	-8(%rbp), %rax	# tb, tmp170
	movl	4(%rax), %ecx	# tb_58->tm_min, D.9266
	movq	-8(%rbp), %rax	# tb, tmp171
	movl	8(%rax), %edx	# tb_58->tm_hour, D.9266
	movq	-72(%rbp), %rax	# pfile, tmp172
	movq	336(%rax), %rax	# pfile_10(D)->time.val.str.text, D.9268
	movl	%esi, %r8d	# D.9266,
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# D.9268,
	movl	$0, %eax	#,
	call	sprintf	#
.L26:
.LBE4:
	.loc 2 221 0
	movq	-80(%rbp), %rax	# node, tmp173
	movl	24(%rax), %eax	# node_7(D)->value.builtin, D.9267
	cmpl	$1, %eax	#, D.9267
	jne	.L27	#,
	.loc 2 222 0
	movq	-72(%rbp), %rax	# pfile, tmp177
	addq	$296, %rax	#, tmp176
	movq	%rax, -40(%rbp)	# tmp176, result
	.loc 2 225 0
	jmp	.L22	#
.L27:
	.loc 2 224 0
	movq	-72(%rbp), %rax	# pfile, tmp181
	addq	$320, %rax	#, tmp180
	movq	%rax, -40(%rbp)	# tmp180, result
	.loc 2 225 0
	jmp	.L22	#
.L17:
	.loc 2 230 0
	movq	-72(%rbp), %rax	# pfile, tmp182
	movzbl	8(%rax), %eax	# pfile_10(D)->state.in_directive, D.9276
	testb	%al, %al	# D.9276
	je	.L29	#,
	.loc 2 231 0
	movl	$0, %eax	#, D.9266
	jmp	.L18	#
.L29:
	.loc 2 233 0
	movq	-72(%rbp), %rax	# pfile, tmp183
	movq	%rax, %rdi	# tmp183,
	call	_cpp_do__Pragma	#
	.loc 2 234 0
	movl	$1, %eax	#, D.9266
	jmp	.L18	#
.L22:
	.loc 2 237 0
	movq	-40(%rbp), %rdx	# result, tmp184
	movq	-72(%rbp), %rax	# pfile, tmp185
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	push_token_context	#
	.loc 2 238 0
	movl	$1, %eax	#, D.9266
.L18:
	.loc 2 239 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	builtin_macro, .-builtin_macro
	.section	.rodata
.LC16:
	.string	"\\%03o"
	.text
	.globl	cpp_quote_string
	.type	cpp_quote_string, @function
cpp_quote_string:
.LFB11:
	.loc 2 250 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# dest, dest
	movq	%rsi, -32(%rbp)	# src, src
	movl	%edx, -36(%rbp)	# len, len
	.loc 2 251 0
	jmp	.L31	#
.L35:
.LBB5:
	.loc 2 253 0
	movq	-32(%rbp), %rax	# src, src.4
	leaq	1(%rax), %rdx	#, tmp71
	movq	%rdx, -32(%rbp)	# tmp71, src
	movzbl	(%rax), %eax	# *src.4_9, tmp72
	movb	%al, -1(%rbp)	# tmp72, c
	.loc 2 255 0
	cmpb	$92, -1(%rbp)	#, c
	je	.L32	#,
	.loc 2 255 0 is_stmt 0 discriminator 1
	cmpb	$34, -1(%rbp)	#, c
	jne	.L33	#,
.L32:
	.loc 2 257 0 is_stmt 1
	movq	-24(%rbp), %rax	# dest, dest.5
	leaq	1(%rax), %rdx	#, tmp73
	movq	%rdx, -24(%rbp)	# tmp73, dest
	movb	$92, (%rax)	#, *dest.5_20
	.loc 2 258 0
	movq	-24(%rbp), %rax	# dest, dest.6
	leaq	1(%rax), %rdx	#, tmp74
	movq	%rdx, -24(%rbp)	# tmp74, dest
	movzbl	-1(%rbp), %edx	# c, tmp75
	movb	%dl, (%rax)	# tmp75, *dest.6_22
	jmp	.L31	#
.L33:
	.loc 2 262 0
	movzbl	-1(%rbp), %eax	# c, D.9282
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9283
	movzwl	%ax, %eax	# D.9283, D.9282
	andl	$16, %eax	#, D.9282
	testl	%eax, %eax	# D.9282
	je	.L34	#,
	.loc 2 263 0
	movq	-24(%rbp), %rax	# dest, dest.7
	leaq	1(%rax), %rdx	#, tmp77
	movq	%rdx, -24(%rbp)	# tmp77, dest
	movzbl	-1(%rbp), %edx	# c, tmp78
	movb	%dl, (%rax)	# tmp78, *dest.7_16
	jmp	.L31	#
.L34:
	.loc 2 266 0
	movzbl	-1(%rbp), %edx	# c, D.9282
	movq	-24(%rbp), %rax	# dest, tmp79
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp79,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 2 267 0
	addq	$4, -24(%rbp)	#, dest
.L31:
.LBE5:
	.loc 2 251 0 discriminator 1
	movl	-36(%rbp), %eax	# len, len.8
	leal	-1(%rax), %edx	#, tmp80
	movl	%edx, -36(%rbp)	# tmp80, len
	testl	%eax, %eax	# len.8
	jne	.L35	#,
	.loc 2 272 0
	movq	-24(%rbp), %rax	# dest, D.9284
	.loc 2 273 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	cpp_quote_string, .-cpp_quote_string
	.section	.rodata
	.align 8
.LC17:
	.string	"invalid string literal, ignoring final '\\'"
	.text
	.type	stringify_arg, @function
stringify_arg:
.LFB12:
	.loc 2 281 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# pfile, pfile
	movq	%rsi, -96(%rbp)	# arg, arg
	.loc 2 282 0
	movq	-88(%rbp), %rax	# pfile, tmp112
	movq	80(%rax), %rax	# pfile_16(D)->u_buff, D.9286
	movq	16(%rax), %rax	# _17->cur, tmp113
	movq	%rax, -56(%rbp)	# tmp113, dest
	.loc 2 283 0
	movl	$0, -64(%rbp)	#, backslash_count
	.loc 2 284 0
	movq	$0, -48(%rbp)	#, source
	.loc 2 288 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L38	#
.L52:
.LBB6:
	.loc 2 290 0
	movq	-96(%rbp), %rax	# arg, tmp114
	movq	(%rax), %rax	# arg_22(D)->first, D.9288
	movl	-68(%rbp), %edx	# i, D.9289
	salq	$3, %rdx	#, D.9289
	addq	%rdx, %rax	# D.9289, D.9288
	movq	(%rax), %rax	# *_27, tmp115
	movq	%rax, -32(%rbp)	# tmp115, token
	.loc 2 292 0
	movq	-32(%rbp), %rax	# token, tmp116
	movzbl	6(%rax), %eax	# token_28->type, D.9290
	cmpb	$66, %al	#, D.9290
	jne	.L39	#,
	.loc 2 294 0
	cmpq	$0, -48(%rbp)	#, source
	jne	.L40	#,
	.loc 2 295 0
	movq	-32(%rbp), %rax	# token, tmp117
	movq	8(%rax), %rax	# token_28->val.source, tmp118
	movq	%rax, -48(%rbp)	# tmp118, source
	.loc 2 296 0
	jmp	.L41	#
.L40:
	jmp	.L41	#
.L39:
	.loc 2 299 0
	movq	-32(%rbp), %rax	# token, tmp119
	movzbl	6(%rax), %eax	# token_28->type, D.9290
	.loc 2 300 0
	cmpb	$61, %al	#, D.9290
	je	.L42	#,
	.loc 2 299 0
	movq	-32(%rbp), %rax	# token, tmp120
	movzbl	6(%rax), %eax	# token_28->type, D.9290
	cmpb	$62, %al	#, D.9290
	je	.L42	#,
	.loc 2 300 0
	movq	-32(%rbp), %rax	# token, tmp121
	movzbl	6(%rax), %eax	# token_28->type, D.9290
	cmpb	$58, %al	#, D.9290
	je	.L42	#,
	.loc 2 300 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# token, tmp122
	movzbl	6(%rax), %eax	# token_28->type, D.9290
	cmpb	$59, %al	#, D.9290
	jne	.L43	#,
.L42:
	movl	$1, %eax	#, iftmp.9
	jmp	.L44	#
.L43:
	.loc 2 300 0 discriminator 2
	movl	$0, %eax	#, iftmp.9
.L44:
	.loc 2 299 0 is_stmt 1
	movl	%eax, -60(%rbp)	# iftmp.9, escape_it
	.loc 2 304 0
	movq	-32(%rbp), %rax	# token, tmp123
	movq	%rax, %rdi	# tmp123,
	call	cpp_token_len	#
	movl	%eax, %eax	# D.9287, tmp169
	movq	%rax, -40(%rbp)	# tmp169, len
	.loc 2 305 0
	cmpl	$0, -60(%rbp)	#, escape_it
	je	.L45	#,
	.loc 2 306 0
	salq	$2, -40(%rbp)	#, len
.L45:
	.loc 2 307 0
	addq	$2, -40(%rbp)	#, len
	.loc 2 309 0
	movq	-88(%rbp), %rax	# pfile, tmp124
	movq	80(%rax), %rax	# pfile_16(D)->u_buff, D.9286
	movq	24(%rax), %rax	# _42->limit, D.9291
	movq	%rax, %rdx	# D.9291, D.9292
	movq	-56(%rbp), %rax	# dest, dest.10
	subq	%rax, %rdx	# dest.10, D.9292
	movq	%rdx, %rax	# D.9292, D.9292
	cmpq	-40(%rbp), %rax	# len, D.9289
	jae	.L46	#,
.LBB7:
	.loc 2 311 0
	movq	-56(%rbp), %rdx	# dest, dest.11
	movq	-88(%rbp), %rax	# pfile, tmp125
	movq	80(%rax), %rax	# pfile_16(D)->u_buff, D.9286
	movq	16(%rax), %rax	# _49->cur, D.9291
	subq	%rax, %rdx	# D.9292, D.9292
	movq	%rdx, %rax	# D.9292, D.9292
	movq	%rax, -24(%rbp)	# D.9292, len_so_far
	.loc 2 312 0
	movq	-88(%rbp), %rax	# pfile, tmp126
	leaq	80(%rax), %rcx	#, D.9293
	movq	-40(%rbp), %rdx	# len, tmp127
	movq	-88(%rbp), %rax	# pfile, tmp128
	movq	%rcx, %rsi	# D.9293,
	movq	%rax, %rdi	# tmp128,
	call	_cpp_extend_buff	#
	.loc 2 313 0
	movq	-88(%rbp), %rax	# pfile, tmp129
	movq	80(%rax), %rax	# pfile_16(D)->u_buff, D.9286
	movq	16(%rax), %rdx	# _55->cur, D.9291
	movq	-24(%rbp), %rax	# len_so_far, tmp133
	addq	%rdx, %rax	# D.9291, tmp132
	movq	%rax, -56(%rbp)	# tmp132, dest
.L46:
.LBE7:
	.loc 2 317 0
	movq	-88(%rbp), %rax	# pfile, tmp134
	movq	80(%rax), %rax	# pfile_16(D)->u_buff, D.9286
	movq	16(%rax), %rax	# _58->cur, D.9291
	cmpq	-56(%rbp), %rax	# dest, D.9291
	je	.L47	#,
	.loc 2 319 0
	cmpq	$0, -48(%rbp)	#, source
	jne	.L48	#,
	.loc 2 320 0
	movq	-32(%rbp), %rax	# token, tmp135
	movq	%rax, -48(%rbp)	# tmp135, source
.L48:
	.loc 2 321 0
	movq	-48(%rbp), %rax	# source, tmp136
	movzbl	7(%rax), %eax	# source_11->flags, D.9290
	movzbl	%al, %eax	# D.9290, D.9294
	andl	$1, %eax	#, D.9294
	testl	%eax, %eax	# D.9294
	je	.L47	#,
	.loc 2 322 0
	movq	-56(%rbp), %rax	# dest, dest.12
	leaq	1(%rax), %rdx	#, tmp137
	movq	%rdx, -56(%rbp)	# tmp137, dest
	movb	$32, (%rax)	#, *dest.12_64
.L47:
	.loc 2 324 0
	movq	$0, -48(%rbp)	#, source
	.loc 2 326 0
	cmpl	$0, -60(%rbp)	#, escape_it
	je	.L49	#,
.LBB8:
	.loc 2 328 0
	movq	-40(%rbp), %rdx	# len, tmp138
	movq	-88(%rbp), %rax	# pfile, tmp139
	movq	%rdx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	_cpp_get_buff	#
	movq	%rax, -16(%rbp)	# tmp140, buff
	.loc 2 329 0
	movq	-16(%rbp), %rax	# buff, tmp141
	movq	16(%rax), %rax	# buff_67->cur, tmp142
	movq	%rax, -8(%rbp)	# tmp142, buf
	.loc 2 330 0
	movq	-8(%rbp), %rdx	# buf, tmp143
	movq	-32(%rbp), %rcx	# token, tmp144
	movq	-88(%rbp), %rax	# pfile, tmp145
	movq	%rcx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	cpp_spell_token	#
	movq	%rax, %rdx	# D.9291, D.9292
	movq	-8(%rbp), %rax	# buf, buf.13
	subq	%rax, %rdx	# buf.13, D.9292
	movq	%rdx, %rax	# D.9292, D.9292
	movq	%rax, -40(%rbp)	# D.9292, len
	.loc 2 331 0
	movq	-40(%rbp), %rax	# len, tmp146
	movl	%eax, %edx	# tmp146, D.9287
	movq	-8(%rbp), %rcx	# buf, tmp147
	movq	-56(%rbp), %rax	# dest, tmp148
	movq	%rcx, %rsi	# tmp147,
	movq	%rax, %rdi	# tmp148,
	call	cpp_quote_string	#
	movq	%rax, -56(%rbp)	# tmp149, dest
	.loc 2 332 0
	movq	-16(%rbp), %rdx	# buff, tmp150
	movq	-88(%rbp), %rax	# pfile, tmp151
	movq	%rdx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	_cpp_release_buff	#
.LBE8:
	jmp	.L50	#
.L49:
	.loc 2 335 0
	movq	-56(%rbp), %rdx	# dest, tmp152
	movq	-32(%rbp), %rcx	# token, tmp153
	movq	-88(%rbp), %rax	# pfile, tmp154
	movq	%rcx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp154,
	call	cpp_spell_token	#
	movq	%rax, -56(%rbp)	# tmp155, dest
.L50:
	.loc 2 337 0
	movq	-32(%rbp), %rax	# token, tmp156
	movzbl	6(%rax), %eax	# token_28->type, D.9290
	cmpb	$60, %al	#, D.9290
	jne	.L51	#,
	.loc 2 337 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# token, tmp157
	movzbl	8(%rax), %eax	# token_28->val.c, D.9290
	cmpb	$92, %al	#, D.9290
	jne	.L51	#,
	.loc 2 338 0 is_stmt 1
	addl	$1, -64(%rbp)	#, backslash_count
	jmp	.L41	#
.L51:
	.loc 2 340 0
	movl	$0, -64(%rbp)	#, backslash_count
.L41:
.LBE6:
	.loc 2 288 0
	addl	$1, -68(%rbp)	#, i
.L38:
	.loc 2 288 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# arg, tmp158
	movl	24(%rax), %eax	# arg_22(D)->count, D.9287
	cmpl	-68(%rbp), %eax	# i, D.9287
	ja	.L52	#,
	.loc 2 344 0 is_stmt 1
	movl	-64(%rbp), %eax	# backslash_count, tmp159
	andl	$1, %eax	#, D.9287
	testl	%eax, %eax	# D.9287
	je	.L53	#,
	.loc 2 346 0
	movq	-88(%rbp), %rax	# pfile, tmp160
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp160,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 2 347 0
	subq	$1, -56(%rbp)	#, dest
.L53:
	.loc 2 351 0
	movq	-56(%rbp), %rdx	# dest, dest.14
	movq	-88(%rbp), %rax	# pfile, tmp161
	movq	80(%rax), %rax	# pfile_16(D)->u_buff, D.9286
	movq	16(%rax), %rax	# _85->cur, D.9291
	subq	%rax, %rdx	# D.9292, D.9292
	movq	%rdx, %rax	# D.9292, D.9292
	movq	%rax, -40(%rbp)	# D.9292, len
	.loc 2 352 0
	movq	-88(%rbp), %rax	# pfile, tmp162
	movq	80(%rax), %rax	# pfile_16(D)->u_buff, D.9286
	movq	-56(%rbp), %rdx	# dest, tmp163
	addq	$1, %rdx	#, D.9291
	movq	%rdx, 16(%rax)	# D.9291, _90->cur
	.loc 2 353 0
	movq	-40(%rbp), %rax	# len, tmp164
	movl	%eax, %edx	# tmp164, D.9287
	movq	-40(%rbp), %rax	# len, tmp165
	negq	%rax	# D.9295
	movq	%rax, %rcx	# D.9295, D.9295
	movq	-56(%rbp), %rax	# dest, tmp166
	addq	%rax, %rcx	# tmp166, D.9291
	movq	-88(%rbp), %rax	# pfile, tmp167
	movq	%rcx, %rsi	# D.9291,
	movq	%rax, %rdi	# tmp167,
	call	new_string_token	#
	.loc 2 354 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	stringify_arg, .-stringify_arg
	.type	paste_tokens, @function
paste_tokens:
.LFB13:
	.loc 2 363 0
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
	movq	%rsi, -64(%rbp)	# plhs, plhs
	movq	%rdx, -72(%rbp)	# rhs, rhs
	.loc 2 369 0
	movq	-64(%rbp), %rax	# plhs, tmp87
	movq	(%rax), %rax	# *plhs_2(D), tmp88
	movq	%rax, -32(%rbp)	# tmp88, lhs
	.loc 2 370 0
	movq	-32(%rbp), %rax	# lhs, tmp89
	movq	%rax, %rdi	# tmp89,
	call	cpp_token_len	#
	movl	%eax, %ebx	#, D.9298
	movq	-72(%rbp), %rax	# rhs, tmp90
	movq	%rax, %rdi	# tmp90,
	call	cpp_token_len	#
	addl	%ebx, %eax	# D.9298, D.9298
	addl	$1, %eax	#, tmp91
	movl	%eax, -44(%rbp)	# tmp91, len
	.loc 2 371 0
	movl	-44(%rbp), %eax	# len, D.9299
	leaq	15(%rax), %rdx	#, tmp92
	movl	$16, %eax	#, tmp130
	subq	$1, %rax	#, tmp93
	addq	%rdx, %rax	# tmp92, tmp94
	movl	$16, %ebx	#, tmp131
	movl	$0, %edx	#, tmp97
	divq	%rbx	# tmp131
	imulq	$16, %rax, %rax	#, tmp96, tmp98
	subq	%rax, %rsp	# tmp98,
	movq	%rsp, %rax	#, tmp99
	addq	$15, %rax	#, tmp100
	shrq	$4, %rax	#, tmp101
	salq	$4, %rax	#, tmp102
	movq	%rax, -24(%rbp)	# tmp102, buf
	.loc 2 372 0
	movq	-24(%rbp), %rdx	# buf, tmp103
	movq	-32(%rbp), %rcx	# lhs, tmp104
	movq	-56(%rbp), %rax	# pfile, tmp105
	movq	%rcx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	cpp_spell_token	#
	movq	%rax, -40(%rbp)	# tmp106, end
	.loc 2 378 0
	movq	-32(%rbp), %rax	# lhs, tmp107
	movzbl	6(%rax), %eax	# lhs_3->type, D.9300
	cmpb	$7, %al	#, D.9300
	jne	.L56	#,
	.loc 2 379 0
	movq	-72(%rbp), %rax	# rhs, tmp108
	movzbl	6(%rax), %eax	# rhs_5(D)->type, D.9300
	cmpb	$6, %al	#, D.9300
	je	.L57	#,
	.loc 2 379 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# rhs, tmp109
	movzbl	6(%rax), %eax	# rhs_5(D)->type, D.9300
	cmpb	$7, %al	#, D.9300
	jne	.L56	#,
.L57:
	.loc 2 380 0 is_stmt 1
	movq	-40(%rbp), %rax	# end, end.15
	leaq	1(%rax), %rdx	#, tmp110
	movq	%rdx, -40(%rbp)	# tmp110, end
	movb	$32, (%rax)	#, *end.15_16
.L56:
	.loc 2 381 0
	movq	-40(%rbp), %rdx	# end, tmp111
	movq	-72(%rbp), %rcx	# rhs, tmp112
	movq	-56(%rbp), %rax	# pfile, tmp113
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	cpp_spell_token	#
	movq	%rax, -40(%rbp)	# tmp114, end
	.loc 2 382 0
	movq	-40(%rbp), %rax	# end, tmp115
	movb	$0, (%rax)	#, *end_18
	.loc 2 384 0
	movq	-40(%rbp), %rdx	# end, end.16
	movq	-24(%rbp), %rax	# buf, buf.17
	subq	%rax, %rdx	# buf.17, D.9301
	movq	%rdx, %rax	# D.9301, D.9301
	movq	%rax, %rdx	# D.9301, D.9299
	movq	-24(%rbp), %rsi	# buf, tmp116
	movq	-56(%rbp), %rax	# pfile, tmp117
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp117,
	call	cpp_push_buffer	#
	.loc 2 387 0
	movq	-56(%rbp), %rax	# pfile, tmp118
	movq	(%rax), %rax	# pfile_11(D)->buffer, D.9302
	movq	-56(%rbp), %rdx	# pfile, tmp119
	movq	192(%rdx), %rdx	# pfile_11(D)->cur_token, D.9303
	subq	$24, %rdx	#, D.9303
	movzwl	4(%rdx), %edx	# _25->col, D.9304
	movzwl	%dx, %edx	# D.9304, D.9305
	subl	$1, %edx	#, D.9305
	movl	%edx, 64(%rax)	# D.9298, _23->col_adjust
	.loc 2 390 0
	movq	-56(%rbp), %rax	# pfile, tmp120
	movq	(%rax), %rax	# pfile_11(D)->buffer, D.9302
	movb	$0, 68(%rax)	#, _30->saved_flags
	.loc 2 393 0
	movq	-56(%rbp), %rax	# pfile, tmp121
	movq	%rax, %rdi	# tmp121,
	call	_cpp_temp_token	#
	movq	-56(%rbp), %rdx	# pfile, tmp122
	movq	%rax, 192(%rdx)	# D.9303, pfile_11(D)->cur_token
	.loc 2 394 0
	movq	-56(%rbp), %rax	# pfile, tmp123
	movq	%rax, %rdi	# tmp123,
	call	_cpp_lex_direct	#
	movq	-64(%rbp), %rdx	# plhs, tmp124
	movq	%rax, (%rdx)	# D.9303, *plhs_2(D)
	.loc 2 395 0
	movq	-56(%rbp), %rax	# pfile, tmp125
	movq	(%rax), %rax	# pfile_11(D)->buffer, D.9302
	movq	(%rax), %rdx	# _33->cur, D.9306
	movq	-56(%rbp), %rax	# pfile, tmp126
	movq	(%rax), %rax	# pfile_11(D)->buffer, D.9302
	movq	16(%rax), %rax	# _35->rlimit, D.9306
	cmpq	%rax, %rdx	# D.9306, D.9306
	sete	%al	#, tmp127
	movb	%al, -45(%rbp)	# tmp127, valid
	.loc 2 396 0
	movq	-56(%rbp), %rax	# pfile, tmp128
	movq	%rax, %rdi	# tmp128,
	call	_cpp_pop_buffer	#
	.loc 2 398 0
	movzbl	-45(%rbp), %eax	# valid, D.9307
	.loc 2 399 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	paste_tokens, .-paste_tokens
	.section	.rodata
	.align 8
.LC18:
	.string	"pasting \"%s\" and \"%s\" does not give a valid preprocessing token"
	.text
	.type	paste_all_tokens, @function
paste_all_tokens:
.LFB14:
	.loc 2 412 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# lhs, lhs
	.loc 2 414 0
	movq	-40(%rbp), %rax	# pfile, tmp76
	movq	152(%rax), %rax	# pfile_2(D)->context, tmp77
	movq	%rax, -24(%rbp)	# tmp77, context
.L66:
	.loc 2 423 0
	movq	-24(%rbp), %rax	# context, tmp78
	movzbl	48(%rax), %eax	# context_3->direct_p, D.9309
	testb	%al, %al	# D.9309
	je	.L60	#,
	.loc 2 424 0
	movq	-24(%rbp), %rax	# context, tmp79
	movq	16(%rax), %rax	# context_3->first.token, D.9310
	leaq	24(%rax), %rcx	#, D.9310
	movq	-24(%rbp), %rdx	# context, tmp80
	movq	%rcx, 16(%rdx)	# D.9310, context_3->first.token
	movq	%rax, -32(%rbp)	# rhs.18, rhs
	jmp	.L61	#
.L60:
	.loc 2 426 0
	movq	-24(%rbp), %rax	# context, tmp81
	movq	16(%rax), %rax	# context_3->first.ptoken, D.9311
	leaq	8(%rax), %rcx	#, D.9311
	movq	-24(%rbp), %rdx	# context, tmp82
	movq	%rcx, 16(%rdx)	# D.9311, context_3->first.ptoken
	movq	(%rax), %rax	# *_10, tmp83
	movq	%rax, -32(%rbp)	# tmp83, rhs
.L61:
	.loc 2 428 0
	movq	-32(%rbp), %rax	# rhs, tmp84
	movzbl	6(%rax), %eax	# rhs_1->type, D.9312
	cmpb	$66, %al	#, D.9312
	jne	.L62	#,
	.loc 2 429 0
	call	abort	#
.L62:
	.loc 2 431 0
	movq	-32(%rbp), %rdx	# rhs, tmp85
	leaq	-48(%rbp), %rcx	#, tmp86
	movq	-40(%rbp), %rax	# pfile, tmp87
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	paste_tokens	#
	xorl	$1, %eax	#, D.9309
	testb	%al, %al	# D.9309
	je	.L63	#,
	.loc 2 433 0
	movq	-40(%rbp), %rax	# pfile, tmp88
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	_cpp_backup_tokens	#
	.loc 2 436 0
	movq	-40(%rbp), %rax	# pfile, tmp89
	movl	736(%rax), %eax	# pfile_2(D)->opts.lang, D.9313
	cmpl	$9, %eax	#, D.9313
	je	.L64	#,
	.loc 2 437 0
	movq	-32(%rbp), %rdx	# rhs, tmp90
	movq	-40(%rbp), %rax	# pfile, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	cpp_token_as_text	#
	movq	%rax, %rbx	#, D.9314
	movq	-48(%rbp), %rdx	# lhs, lhs.19
	movq	-40(%rbp), %rax	# pfile, tmp92
	movq	%rdx, %rsi	# lhs.19,
	movq	%rax, %rdi	# tmp92,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9314
	movq	-40(%rbp), %rax	# pfile, tmp93
	movq	%rbx, %rcx	# D.9314,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 2 441 0
	jmp	.L65	#
.L64:
	jmp	.L65	#
.L63:
	.loc 2 444 0
	movq	-32(%rbp), %rax	# rhs, tmp94
	movzbl	7(%rax), %eax	# rhs_1->flags, D.9312
	movzbl	%al, %eax	# D.9312, D.9315
	andl	$8, %eax	#, D.9315
	testl	%eax, %eax	# D.9315
	jne	.L66	#,
.L65:
	.loc 2 447 0
	movq	-48(%rbp), %rdx	# lhs, lhs.20
	movq	-40(%rbp), %rax	# pfile, tmp95
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	push_token_context	#
	.loc 2 448 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	paste_all_tokens, .-paste_all_tokens
	.section	.rodata
	.align 8
.LC19:
	.string	"directives may not be used inside a macro argument"
	.align 8
.LC20:
	.string	"unterminated argument list invoking macro \"%s\""
	.align 8
.LC21:
	.string	"ISO C99 requires rest arguments to be used"
	.align 8
.LC22:
	.string	"macro \"%s\" requires %u arguments, but only %u given"
	.align 8
.LC23:
	.string	"macro \"%s\" passed %u arguments, but takes just %u"
	.text
	.type	collect_args, @function
collect_args:
.LFB15:
	.loc 2 459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# pfile, pfile
	movq	%rsi, -80(%rbp)	# node, node
	.loc 2 465 0
	movb	$0, -62(%rbp)	#, error
	.loc 2 467 0
	movq	-80(%rbp), %rax	# node, tmp149
	movq	24(%rax), %rax	# node_20(D)->value.macro, tmp150
	movq	%rax, -32(%rbp)	# tmp150, macro
	.loc 2 468 0
	movq	-32(%rbp), %rax	# macro, tmp151
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	testw	%ax, %ax	# D.9318
	je	.L68	#,
	.loc 2 469 0
	movq	-32(%rbp), %rax	# macro, tmp152
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	movzwl	%ax, %eax	# D.9318, tmp153
	movl	%eax, -60(%rbp)	# tmp153, argc
	jmp	.L69	#
.L68:
	.loc 2 471 0
	movl	$1, -60(%rbp)	#, argc
.L69:
	.loc 2 472 0
	movl	-60(%rbp), %edx	# argc, D.9319
	movq	%rdx, %rax	# D.9319, tmp154
	addq	%rax, %rax	# tmp154
	addq	%rdx, %rax	# D.9319, tmp154
	leaq	0(,%rax,8), %rdx	#, tmp155
	addq	%rdx, %rax	# tmp155, tmp154
	salq	$4, %rax	#, tmp156
	movq	%rax, %rdx	# tmp154, D.9319
	movq	-72(%rbp), %rax	# pfile, tmp157
	movq	%rdx, %rsi	# D.9319,
	movq	%rax, %rdi	# tmp157,
	call	_cpp_get_buff	#
	movq	%rax, -48(%rbp)	# tmp158, buff
	.loc 2 474 0
	movq	-48(%rbp), %rax	# buff, tmp159
	movq	%rax, -24(%rbp)	# tmp159, base_buff
	.loc 2 475 0
	movq	-48(%rbp), %rax	# buff, tmp160
	movq	8(%rax), %rax	# buff_29->base, tmp161
	movq	%rax, -16(%rbp)	# tmp161, args
	.loc 2 476 0
	movl	-60(%rbp), %eax	# argc, D.9319
	salq	$5, %rax	#, D.9319
	movq	%rax, %rdx	# D.9319, D.9319
	movq	-16(%rbp), %rax	# args, tmp162
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	memset	#
	.loc 2 477 0
	movl	-60(%rbp), %eax	# argc, D.9319
	salq	$5, %rax	#, D.9319
	movq	%rax, %rdx	# D.9319, D.9319
	movq	-16(%rbp), %rax	# args, tmp163
	addq	%rax, %rdx	# tmp163, D.9320
	movq	-48(%rbp), %rax	# buff, tmp164
	movq	%rdx, 16(%rax)	# D.9320, buff_29->cur
	.loc 2 478 0
	movq	-16(%rbp), %rax	# args, tmp165
	movq	%rax, -40(%rbp)	# tmp165, arg
	movl	$0, -60(%rbp)	#, argc
.L84:
.LBB9:
	.loc 2 485 0
	movl	$0, -56(%rbp)	#, paren_depth
	.loc 2 486 0
	movl	$0, -52(%rbp)	#, ntokens
	.loc 2 488 0
	addl	$1, -60(%rbp)	#, argc
	.loc 2 489 0
	movq	-48(%rbp), %rax	# buff, tmp166
	movq	16(%rax), %rdx	# buff_1->cur, D.9320
	movq	-40(%rbp), %rax	# arg, tmp167
	movq	%rdx, (%rax)	# D.9320, arg_4->first
.L78:
	.loc 2 494 0
	movq	-40(%rbp), %rax	# arg, tmp168
	movq	(%rax), %rax	# arg_4->first, D.9321
	movl	-52(%rbp), %edx	# ntokens, tmp169
	addl	$2, %edx	#, D.9322
	movl	%edx, %edx	# D.9322, D.9319
	salq	$3, %rdx	#, D.9319
	addq	%rax, %rdx	# D.9321, D.9320
	movq	-48(%rbp), %rax	# buff, tmp170
	movq	24(%rax), %rax	# buff_2->limit, D.9320
	cmpq	%rax, %rdx	# D.9320, D.9320
	jbe	.L70	#,
	.loc 2 496 0
	movq	-48(%rbp), %rcx	# buff, tmp171
	movq	-72(%rbp), %rax	# pfile, tmp172
	movl	$8000, %edx	#,
	movq	%rcx, %rsi	# tmp171,
	movq	%rax, %rdi	# tmp172,
	call	_cpp_append_extend_buff	#
	movq	%rax, -48(%rbp)	# tmp173, buff
	.loc 2 498 0
	movq	-48(%rbp), %rax	# buff, tmp174
	movq	16(%rax), %rdx	# buff_49->cur, D.9320
	movq	-40(%rbp), %rax	# arg, tmp175
	movq	%rdx, (%rax)	# D.9320, arg_4->first
.L70:
	.loc 2 501 0
	movq	-72(%rbp), %rax	# pfile, tmp176
	movq	%rax, %rdi	# tmp176,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp177, token
	.loc 2 503 0
	movq	-8(%rbp), %rax	# token, tmp178
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$66, %al	#, D.9323
	jne	.L71	#,
	.loc 2 506 0
	cmpl	$0, -52(%rbp)	#, ntokens
	jne	.L72	#,
	.loc 2 507 0
	nop
	.loc 2 529 0
	jmp	.L78	#
.L71:
	.loc 2 509 0
	movq	-8(%rbp), %rax	# token, tmp179
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$22, %al	#, D.9323
	jne	.L74	#,
	.loc 2 510 0
	addl	$1, -56(%rbp)	#, paren_depth
	jmp	.L72	#
.L74:
	.loc 2 511 0
	movq	-8(%rbp), %rax	# token, tmp180
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$23, %al	#, D.9323
	jne	.L75	#,
	.loc 2 513 0
	movl	-56(%rbp), %eax	# paren_depth, paren_depth.21
	leal	-1(%rax), %edx	#, tmp181
	movl	%edx, -56(%rbp)	# tmp181, paren_depth
	testl	%eax, %eax	# paren_depth.21
	jne	.L72	#,
	.loc 2 514 0
	jmp	.L76	#
.L75:
	.loc 2 516 0
	movq	-8(%rbp), %rax	# token, tmp182
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$21, %al	#, D.9323
	jne	.L77	#,
	.loc 2 520 0
	cmpl	$0, -56(%rbp)	#, paren_depth
	jne	.L72	#,
	.loc 2 521 0
	movq	-32(%rbp), %rax	# macro, tmp183
	movzbl	26(%rax), %eax	# *macro_21, D.9323
	andl	$2, %eax	#, D.9323
	testb	%al, %al	# D.9323
	je	.L76	#,
	.loc 2 521 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# macro, tmp184
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	movzwl	%ax, %eax	# D.9318, D.9322
	cmpl	-60(%rbp), %eax	# argc, D.9322
	jne	.L76	#,
	jmp	.L72	#
.L77:
	.loc 2 524 0 is_stmt 1
	movq	-8(%rbp), %rax	# token, tmp185
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$67, %al	#, D.9323
	je	.L76	#,
	.loc 2 525 0
	movq	-8(%rbp), %rax	# token, tmp186
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$40, %al	#, D.9323
	jne	.L72	#,
	.loc 2 525 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# token, tmp187
	movzbl	7(%rax), %eax	# token_51->flags, D.9323
	movzbl	%al, %eax	# D.9323, D.9324
	andl	$64, %eax	#, D.9324
	testl	%eax, %eax	# D.9324
	jne	.L76	#,
.L72:
	.loc 2 528 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg, tmp188
	movq	(%rax), %rcx	# arg_4->first, D.9321
	movl	-52(%rbp), %eax	# ntokens, ntokens.22
	leal	1(%rax), %edx	#, tmp189
	movl	%edx, -52(%rbp)	# tmp189, ntokens
	movl	%eax, %eax	# ntokens.22, D.9319
	salq	$3, %rax	#, D.9319
	leaq	(%rcx,%rax), %rdx	#, D.9321
	movq	-8(%rbp), %rax	# token, tmp190
	movq	%rax, (%rdx)	# tmp190, *_136
	.loc 2 529 0
	jmp	.L78	#
.L76:
	.loc 2 532 0
	jmp	.L79	#
.L81:
	.loc 2 533 0
	subl	$1, -52(%rbp)	#, ntokens
.L79:
	.loc 2 532 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, ntokens
	je	.L80	#,
	.loc 2 532 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# arg, tmp191
	movq	(%rax), %rax	# arg_4->first, D.9321
	movl	-52(%rbp), %edx	# ntokens, tmp192
	subl	$1, %edx	#, D.9322
	movl	%edx, %edx	# D.9322, D.9319
	salq	$3, %rdx	#, D.9319
	addq	%rdx, %rax	# D.9319, D.9321
	movq	(%rax), %rax	# *_72, D.9325
	movzbl	6(%rax), %eax	# _73->type, D.9323
	cmpb	$66, %al	#, D.9323
	je	.L81	#,
.L80:
	.loc 2 535 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg, tmp193
	movl	-52(%rbp), %edx	# ntokens, tmp194
	movl	%edx, 24(%rax)	# tmp194, arg_4->count
	.loc 2 536 0
	movq	-40(%rbp), %rax	# arg, tmp195
	movq	(%rax), %rax	# arg_4->first, D.9321
	movl	-52(%rbp), %edx	# ntokens, D.9319
	salq	$3, %rdx	#, D.9319
	addq	%rdx, %rax	# D.9319, D.9321
	movq	-72(%rbp), %rdx	# pfile, tmp196
	addq	$368, %rdx	#, D.9326
	movq	%rdx, (%rax)	# D.9326, *_79
	.loc 2 540 0
	movq	-32(%rbp), %rax	# macro, tmp197
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	movzwl	%ax, %eax	# D.9318, D.9322
	cmpl	-60(%rbp), %eax	# argc, D.9322
	jb	.L82	#,
	.loc 2 542 0
	movq	-40(%rbp), %rax	# arg, tmp198
	movq	(%rax), %rax	# arg_4->first, D.9321
	movl	-52(%rbp), %edx	# ntokens, tmp199
	addl	$1, %edx	#, D.9322
	movl	%edx, %edx	# D.9322, D.9319
	salq	$3, %rdx	#, D.9319
	addq	%rax, %rdx	# D.9321, D.9320
	movq	-48(%rbp), %rax	# buff, tmp200
	movq	%rdx, 16(%rax)	# D.9320, buff_3->cur
	.loc 2 543 0
	movq	-32(%rbp), %rax	# macro, tmp201
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	movzwl	%ax, %eax	# D.9318, D.9322
	cmpl	-60(%rbp), %eax	# argc, D.9322
	je	.L82	#,
	.loc 2 544 0
	addq	$32, -40(%rbp)	#, arg
.L82:
.LBE9:
	.loc 2 547 0
	movq	-8(%rbp), %rax	# token, tmp202
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	.loc 2 549 0
	cmpb	$23, %al	#, D.9323
	je	.L83	#,
	.loc 2 548 0
	movq	-8(%rbp), %rax	# token, tmp203
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$67, %al	#, D.9323
	je	.L83	#,
	.loc 2 549 0
	movq	-8(%rbp), %rax	# token, tmp204
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$40, %al	#, D.9323
	jne	.L84	#,
.L83:
	.loc 2 551 0
	movq	-8(%rbp), %rax	# token, tmp205
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$67, %al	#, D.9323
	je	.L85	#,
	.loc 2 551 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# token, tmp206
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$40, %al	#, D.9323
	jne	.L86	#,
.L85:
.LBB10:
	.loc 2 553 0 is_stmt 1
	movb	$0, -61(%rbp)	#, step_back
	.loc 2 561 0
	movq	-8(%rbp), %rax	# token, tmp207
	movzbl	6(%rax), %eax	# token_51->type, D.9323
	cmpb	$40, %al	#, D.9323
	jne	.L87	#,
	.loc 2 563 0
	movq	-72(%rbp), %rax	# pfile, tmp208
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp208,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 565 0
	movb	$1, -61(%rbp)	#, step_back
	jmp	.L88	#
.L87:
	.loc 2 568 0
	movq	-72(%rbp), %rax	# pfile, tmp209
	movq	152(%rax), %rax	# pfile_28(D)->context, D.9328
	movq	8(%rax), %rax	# _120->prev, D.9329
	testq	%rax, %rax	# D.9329
	jne	.L89	#,
	.loc 2 568 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# pfile, tmp210
	movzbl	8(%rax), %eax	# pfile_28(D)->state.in_directive, D.9323
	testb	%al, %al	# D.9323
	je	.L90	#,
.L89:
	.loc 2 568 0 discriminator 1
	movl	$1, %eax	#, iftmp.23
	jmp	.L91	#
.L90:
	.loc 2 568 0 discriminator 3
	movl	$0, %eax	#, iftmp.23
.L91:
	.loc 2 568 0 discriminator 4
	movb	%al, -61(%rbp)	# iftmp.23, step_back
	andb	$1, -61(%rbp)	#, step_back
.L88:
	.loc 2 574 0 is_stmt 1
	cmpb	$0, -61(%rbp)	#, step_back
	je	.L92	#,
	.loc 2 575 0
	movq	-72(%rbp), %rax	# pfile, tmp211
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp211,
	call	_cpp_backup_tokens	#
.L92:
	.loc 2 576 0
	movq	-80(%rbp), %rax	# node, tmp212
	movq	8(%rax), %rdx	# node_20(D)->ident.str, D.9327
	movq	-72(%rbp), %rax	# pfile, tmp213
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp213,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 578 0
	movb	$1, -62(%rbp)	#, error
.LBE10:
	.loc 2 552 0
	jmp	.L93	#
.L86:
	.loc 2 580 0
	movq	-32(%rbp), %rax	# macro, tmp214
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	movzwl	%ax, %eax	# D.9318, D.9322
	cmpl	-60(%rbp), %eax	# argc, D.9322
	jbe	.L94	#,
	.loc 2 590 0
	movl	-60(%rbp), %eax	# argc, tmp215
	leal	1(%rax), %edx	#, D.9322
	movq	-32(%rbp), %rax	# macro, tmp216
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	movzwl	%ax, %eax	# D.9318, D.9322
	cmpl	%eax, %edx	# D.9322, D.9322
	jne	.L95	#,
	.loc 2 590 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# macro, tmp217
	movzbl	26(%rax), %eax	# *macro_21, D.9323
	andl	$2, %eax	#, D.9323
	testb	%al, %al	# D.9323
	je	.L95	#,
	.loc 2 592 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp218
	movzbl	770(%rax), %eax	# pfile_28(D)->opts.pedantic, D.9323
	testb	%al, %al	# D.9323
	je	.L96	#,
	.loc 2 592 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# macro, tmp219
	movzbl	26(%rax), %eax	# *macro_21, D.9323
	andl	$4, %eax	#, D.9323
	testb	%al, %al	# D.9323
	jne	.L96	#,
	.loc 2 593 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp220
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp220,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
	.loc 2 592 0
	jmp	.L97	#
.L96:
	.loc 2 592 0 is_stmt 0 discriminator 2
	jmp	.L97	#
.L95:
	.loc 2 599 0 is_stmt 1
	movq	-32(%rbp), %rax	# macro, tmp221
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	.loc 2 597 0
	movzwl	%ax, %ecx	# D.9318, D.9324
	movq	-80(%rbp), %rax	# node, tmp222
	movq	8(%rax), %rdx	# node_20(D)->ident.str, D.9327
	movl	-60(%rbp), %esi	# argc, tmp223
	movq	-72(%rbp), %rax	# pfile, tmp224
	movl	%esi, %r8d	# tmp223,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp224,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 600 0
	movb	$1, -62(%rbp)	#, error
	jmp	.L93	#
.L97:
	jmp	.L93	#
.L94:
	.loc 2 603 0
	movq	-32(%rbp), %rax	# macro, tmp225
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	movzwl	%ax, %eax	# D.9318, D.9322
	cmpl	-60(%rbp), %eax	# argc, D.9322
	jae	.L93	#,
	.loc 2 606 0
	cmpl	$1, -60(%rbp)	#, argc
	jne	.L98	#,
	.loc 2 606 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp226
	movl	24(%rax), %eax	# arg_5->count, D.9322
	testl	%eax, %eax	# D.9322
	je	.L93	#,
.L98:
	.loc 2 610 0 is_stmt 1
	movq	-32(%rbp), %rax	# macro, tmp227
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9318
	.loc 2 608 0
	movzwl	%ax, %esi	# D.9318, D.9324
	movq	-80(%rbp), %rax	# node, tmp228
	movq	8(%rax), %rdx	# node_20(D)->ident.str, D.9327
	movl	-60(%rbp), %ecx	# argc, tmp229
	movq	-72(%rbp), %rax	# pfile, tmp230
	movl	%esi, %r8d	# D.9324,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp230,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 611 0
	movb	$1, -62(%rbp)	#, error
.L93:
	.loc 2 615 0
	movzbl	-62(%rbp), %eax	# error, tmp231
	xorl	$1, %eax	#, D.9330
	testb	%al, %al	# D.9330
	je	.L99	#,
	.loc 2 616 0
	movq	-24(%rbp), %rax	# base_buff, D.9317
	jmp	.L100	#
.L99:
	.loc 2 618 0
	movq	-24(%rbp), %rdx	# base_buff, tmp232
	movq	-72(%rbp), %rax	# pfile, tmp233
	movq	%rdx, %rsi	# tmp232,
	movq	%rax, %rdi	# tmp233,
	call	_cpp_release_buff	#
	.loc 2 619 0
	movl	$0, %eax	#, D.9317
.L100:
	.loc 2 620 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	collect_args, .-collect_args
	.type	funlike_invocation_p, @function
funlike_invocation_p:
.LFB16:
	.loc 2 630 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# node, node
	.loc 2 631 0
	movq	$0, -16(%rbp)	#, padding
.L106:
	.loc 2 635 0
	movq	-24(%rbp), %rax	# pfile, tmp69
	movq	%rax, %rdi	# tmp69,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp70, token
	.loc 2 636 0
	movq	-8(%rbp), %rax	# token, tmp71
	movzbl	6(%rax), %eax	# token_6->type, D.9337
	cmpb	$66, %al	#, D.9337
	je	.L102	#,
	.loc 2 637 0
	nop
	.loc 2 643 0
	movq	-8(%rbp), %rax	# token, tmp75
	movzbl	6(%rax), %eax	# token_6->type, D.9337
	cmpb	$22, %al	#, D.9337
	jne	.L107	#,
	jmp	.L111	#
.L102:
	.loc 2 638 0
	cmpq	$0, -16(%rbp)	#, padding
	je	.L104	#,
	.loc 2 639 0
	movq	-16(%rbp), %rax	# padding, tmp72
	movzbl	7(%rax), %eax	# padding_1->flags, D.9337
	movzbl	%al, %eax	# D.9337, D.9339
	andl	$1, %eax	#, D.9339
	testl	%eax, %eax	# D.9339
	jne	.L105	#,
	.loc 2 639 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# token, tmp73
	movq	8(%rax), %rax	# token_6->val.source, D.9340
	testq	%rax, %rax	# D.9340
	jne	.L105	#,
.L104:
	.loc 2 640 0 is_stmt 1
	movq	-8(%rbp), %rax	# token, tmp74
	movq	%rax, -16(%rbp)	# tmp74, padding
	.loc 2 641 0
	jmp	.L106	#
.L105:
	jmp	.L106	#
.L111:
	.loc 2 645 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movb	$2, 16(%rax)	#, pfile_5(D)->state.parsing_args
	.loc 2 646 0
	movq	-32(%rbp), %rdx	# node, tmp77
	movq	-24(%rbp), %rax	# pfile, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	collect_args	#
	jmp	.L108	#
.L107:
	.loc 2 651 0
	movq	-8(%rbp), %rax	# token, tmp79
	movzbl	6(%rax), %eax	# token_6->type, D.9337
	cmpb	$67, %al	#, D.9337
	jne	.L109	#,
	.loc 2 651 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pfile, tmp80
	addq	$368, %rax	#, D.9338
	cmpq	-8(%rbp), %rax	# token, D.9338
	jne	.L110	#,
.L109:
	.loc 2 656 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp81
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	_cpp_backup_tokens	#
	.loc 2 657 0
	cmpq	$0, -16(%rbp)	#, padding
	je	.L110	#,
	.loc 2 658 0
	movq	-16(%rbp), %rdx	# padding, tmp82
	movq	-24(%rbp), %rax	# pfile, tmp83
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	push_token_context	#
.L110:
	.loc 2 661 0
	movl	$0, %eax	#, D.9336
.L108:
	.loc 2 662 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	funlike_invocation_p, .-funlike_invocation_p
	.section	.rodata
	.align 8
.LC24:
	.string	"function-like macro \"%s\" must be used with arguments in traditional C"
	.text
	.type	enter_macro_context, @function
enter_macro_context:
.LFB17:
	.loc 2 672 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# node, node
	.loc 2 674 0
	movq	-24(%rbp), %rax	# pfile, tmp87
	movb	$0, 184(%rax)	#, pfile_2(D)->mi_valid
	.loc 2 676 0
	movq	-24(%rbp), %rax	# pfile, tmp88
	movb	$0, 10(%rax)	#, pfile_2(D)->state.angled_headers
	.loc 2 679 0
	movq	-32(%rbp), %rax	# node, tmp89
	movzbl	21(%rax), %eax	# node_3(D)->flags, D.9342
	movzbl	%al, %eax	# D.9342, D.9341
	andl	$4, %eax	#, D.9341
	testl	%eax, %eax	# D.9341
	jne	.L113	#,
.LBB11:
	.loc 2 681 0
	movq	-32(%rbp), %rax	# node, tmp90
	movq	24(%rax), %rax	# node_3(D)->value.macro, tmp91
	movq	%rax, -16(%rbp)	# tmp91, macro
	.loc 2 683 0
	movq	-16(%rbp), %rax	# macro, tmp92
	movzbl	26(%rax), %eax	# *macro_7, D.9342
	andl	$1, %eax	#, D.9342
	testb	%al, %al	# D.9342
	je	.L114	#,
.LBB12:
	.loc 2 687 0
	movq	-24(%rbp), %rax	# pfile, tmp93
	movzbl	15(%rax), %eax	# pfile_2(D)->state.prevent_expansion, D.9342
	leal	1(%rax), %edx	#, D.9342
	movq	-24(%rbp), %rax	# pfile, tmp94
	movb	%dl, 15(%rax)	# D.9342, pfile_2(D)->state.prevent_expansion
	.loc 2 688 0
	movq	-24(%rbp), %rax	# pfile, tmp95
	movl	244(%rax), %eax	# pfile_2(D)->keep_tokens, D.9343
	leal	1(%rax), %edx	#, D.9343
	movq	-24(%rbp), %rax	# pfile, tmp96
	movl	%edx, 244(%rax)	# D.9343, pfile_2(D)->keep_tokens
	.loc 2 689 0
	movq	-24(%rbp), %rax	# pfile, tmp97
	movb	$1, 16(%rax)	#, pfile_2(D)->state.parsing_args
	.loc 2 690 0
	movq	-32(%rbp), %rdx	# node, tmp98
	movq	-24(%rbp), %rax	# pfile, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	funlike_invocation_p	#
	movq	%rax, -8(%rbp)	# tmp100, buff
	.loc 2 691 0
	movq	-24(%rbp), %rax	# pfile, tmp101
	movb	$0, 16(%rax)	#, pfile_2(D)->state.parsing_args
	.loc 2 692 0
	movq	-24(%rbp), %rax	# pfile, tmp102
	movl	244(%rax), %eax	# pfile_2(D)->keep_tokens, D.9343
	leal	-1(%rax), %edx	#, D.9343
	movq	-24(%rbp), %rax	# pfile, tmp103
	movl	%edx, 244(%rax)	# D.9343, pfile_2(D)->keep_tokens
	.loc 2 693 0
	movq	-24(%rbp), %rax	# pfile, tmp104
	movzbl	15(%rax), %eax	# pfile_2(D)->state.prevent_expansion, D.9342
	leal	-1(%rax), %edx	#, D.9342
	movq	-24(%rbp), %rax	# pfile, tmp105
	movb	%dl, 15(%rax)	# D.9342, pfile_2(D)->state.prevent_expansion
	.loc 2 695 0
	cmpq	$0, -8(%rbp)	#, buff
	jne	.L115	#,
	.loc 2 697 0
	movq	-24(%rbp), %rax	# pfile, tmp106
	movzbl	761(%rax), %eax	# pfile_2(D)->opts.warn_traditional, D.9342
	testb	%al, %al	# D.9342
	je	.L116	#,
	.loc 2 697 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# node, tmp107
	movq	24(%rax), %rax	# node_3(D)->value.macro, D.9344
	movzbl	26(%rax), %eax	# *_22, D.9342
	andl	$4, %eax	#, D.9342
	testb	%al, %al	# D.9342
	jne	.L116	#,
	.loc 2 698 0 is_stmt 1
	movq	-32(%rbp), %rax	# node, tmp108
	movq	8(%rax), %rdx	# node_3(D)->ident.str, D.9345
	movq	-24(%rbp), %rax	# pfile, tmp109
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp109,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L116:
	.loc 2 702 0
	movl	$0, %eax	#, D.9341
	jmp	.L117	#
.L115:
	.loc 2 705 0
	movq	-32(%rbp), %rax	# node, tmp110
	movq	24(%rax), %rax	# node_3(D)->value.macro, D.9344
	movzwl	24(%rax), %eax	# _27->paramc, D.9346
	testw	%ax, %ax	# D.9346
	je	.L118	#,
	.loc 2 706 0
	movq	-8(%rbp), %rax	# buff, tmp111
	movq	8(%rax), %rdx	# buff_15->base, D.9347
	movq	-32(%rbp), %rcx	# node, tmp112
	movq	-24(%rbp), %rax	# pfile, tmp113
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	replace_args	#
.L118:
	.loc 2 707 0
	movq	-8(%rbp), %rdx	# buff, tmp114
	movq	-24(%rbp), %rax	# pfile, tmp115
	movq	%rdx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	_cpp_release_buff	#
.L114:
.LBE12:
	.loc 2 711 0
	movq	-32(%rbp), %rax	# node, tmp116
	movzbl	21(%rax), %eax	# node_3(D)->flags, D.9342
	orl	$32, %eax	#, D.9342
	movl	%eax, %edx	# D.9342, D.9342
	movq	-32(%rbp), %rax	# node, tmp117
	movb	%dl, 21(%rax)	# D.9342, node_3(D)->flags
	.loc 2 713 0
	movq	-16(%rbp), %rax	# macro, tmp118
	movzwl	24(%rax), %eax	# macro_7->paramc, D.9346
	testw	%ax, %ax	# D.9346
	jne	.L119	#,
	.loc 2 714 0
	movq	-16(%rbp), %rax	# macro, tmp119
	movl	20(%rax), %ecx	# macro_7->count, D.9343
	movq	-16(%rbp), %rax	# macro, tmp120
	movq	8(%rax), %rdx	# macro_7->expansion, D.9348
	movq	-32(%rbp), %rsi	# node, tmp121
	movq	-24(%rbp), %rax	# pfile, tmp122
	movq	%rax, %rdi	# tmp122,
	call	push_token_context	#
.L119:
	.loc 2 716 0
	movl	$1, %eax	#, D.9341
	jmp	.L117	#
.L113:
.LBE11:
	.loc 2 720 0
	movq	-32(%rbp), %rdx	# node, tmp123
	movq	-24(%rbp), %rax	# pfile, tmp124
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp124,
	call	builtin_macro	#
.L117:
	.loc 2 721 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	enter_macro_context, .-enter_macro_context
	.type	replace_args, @function
replace_args:
.LFB18:
	.loc 2 732 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# pfile, pfile
	movq	%rsi, -128(%rbp)	# node, node
	movq	%rdx, -136(%rbp)	# args, args
	.loc 2 744 0
	movq	-128(%rbp), %rax	# node, tmp161
	movq	24(%rax), %rax	# node_20(D)->value.macro, tmp162
	movq	%rax, -64(%rbp)	# tmp162, macro
	.loc 2 745 0
	movq	-64(%rbp), %rax	# macro, tmp163
	movl	20(%rax), %eax	# macro_21->count, tmp164
	movl	%eax, -104(%rbp)	# tmp164, total
	.loc 2 746 0
	movq	-64(%rbp), %rax	# macro, tmp165
	movq	8(%rax), %rcx	# macro_21->expansion, D.9350
	movq	-64(%rbp), %rax	# macro, tmp166
	movl	20(%rax), %eax	# macro_21->count, D.9351
	movl	%eax, %edx	# D.9351, D.9352
	movq	%rdx, %rax	# D.9352, tmp167
	addq	%rax, %rax	# tmp167
	addq	%rdx, %rax	# D.9352, tmp167
	salq	$3, %rax	#, tmp168
	addq	%rcx, %rax	# D.9350, tmp169
	movq	%rax, -56(%rbp)	# tmp169, limit
	.loc 2 748 0
	movq	-64(%rbp), %rax	# macro, tmp170
	movq	8(%rax), %rax	# macro_21->expansion, tmp171
	movq	%rax, -96(%rbp)	# tmp171, src
	jmp	.L121	#
.L128:
	.loc 2 749 0
	movq	-96(%rbp), %rax	# src, tmp172
	movzbl	6(%rax), %eax	# src_4->type, D.9353
	cmpb	$65, %al	#, D.9353
	jne	.L122	#,
	.loc 2 752 0
	addl	$2, -104(%rbp)	#, total
	.loc 2 756 0
	movq	-96(%rbp), %rax	# src, tmp173
	movl	8(%rax), %eax	# src_4->val.arg_no, D.9351
	subl	$1, %eax	#, D.9351
	movl	%eax, %eax	# D.9351, D.9352
	salq	$5, %rax	#, D.9352
	movq	%rax, %rdx	# D.9352, D.9352
	movq	-136(%rbp), %rax	# args, tmp177
	addq	%rdx, %rax	# D.9352, tmp176
	movq	%rax, -48(%rbp)	# tmp176, arg
	.loc 2 758 0
	movq	-96(%rbp), %rax	# src, tmp178
	movzbl	7(%rax), %eax	# src_4->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$4, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	je	.L123	#,
	.loc 2 760 0
	movq	-48(%rbp), %rax	# arg, tmp179
	movq	16(%rax), %rax	# arg_36->stringified, D.9355
	testq	%rax, %rax	# D.9355
	jne	.L122	#,
	.loc 2 761 0
	movq	-48(%rbp), %rdx	# arg, tmp180
	movq	-120(%rbp), %rax	# pfile, tmp181
	movq	%rdx, %rsi	# tmp180,
	movq	%rax, %rdi	# tmp181,
	call	stringify_arg	#
	movq	-48(%rbp), %rdx	# arg, tmp182
	movq	%rax, 16(%rdx)	# D.9355, arg_36->stringified
	jmp	.L122	#
.L123:
	.loc 2 763 0
	movq	-96(%rbp), %rax	# src, tmp183
	movzbl	7(%rax), %eax	# src_4->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$8, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	jne	.L125	#,
	.loc 2 764 0
	movq	-64(%rbp), %rax	# macro, tmp184
	movq	8(%rax), %rax	# macro_21->expansion, D.9350
	cmpq	-96(%rbp), %rax	# src, D.9350
	jae	.L126	#,
	.loc 2 764 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# src, tmp185
	subq	$24, %rax	#, D.9355
	movzbl	7(%rax), %eax	# _47->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$8, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	je	.L126	#,
.L125:
	.loc 2 765 0 is_stmt 1
	movq	-48(%rbp), %rax	# arg, tmp186
	movl	24(%rax), %edx	# arg_36->count, D.9351
	movl	-104(%rbp), %eax	# total, tmp187
	addl	%edx, %eax	# D.9351, D.9351
	subl	$1, %eax	#, tmp188
	movl	%eax, -104(%rbp)	# tmp188, total
	jmp	.L122	#
.L126:
	.loc 2 768 0
	movq	-48(%rbp), %rax	# arg, tmp189
	movq	8(%rax), %rax	# arg_36->expanded, D.9356
	testq	%rax, %rax	# D.9356
	jne	.L127	#,
	.loc 2 769 0
	movq	-48(%rbp), %rdx	# arg, tmp190
	movq	-120(%rbp), %rax	# pfile, tmp191
	movq	%rdx, %rsi	# tmp190,
	movq	%rax, %rdi	# tmp191,
	call	expand_arg	#
.L127:
	.loc 2 770 0
	movq	-48(%rbp), %rax	# arg, tmp192
	movl	28(%rax), %edx	# arg_36->expanded_count, D.9351
	movl	-104(%rbp), %eax	# total, tmp193
	addl	%edx, %eax	# D.9351, D.9351
	subl	$1, %eax	#, tmp194
	movl	%eax, -104(%rbp)	# tmp194, total
.L122:
	.loc 2 748 0
	addq	$24, -96(%rbp)	#, src
.L121:
	.loc 2 748 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# src, tmp195
	cmpq	-56(%rbp), %rax	# limit, tmp195
	jb	.L128	#,
	.loc 2 776 0 is_stmt 1
	movl	-104(%rbp), %eax	# total, D.9352
	leaq	0(,%rax,8), %rdx	#, D.9352
	movq	-120(%rbp), %rax	# pfile, tmp196
	movq	%rdx, %rsi	# D.9352,
	movq	%rax, %rdi	# tmp196,
	call	_cpp_get_buff	#
	movq	%rax, -40(%rbp)	# tmp197, buff
	.loc 2 777 0
	movq	-40(%rbp), %rax	# buff, tmp198
	movq	8(%rax), %rax	# buff_61->base, tmp199
	movq	%rax, -32(%rbp)	# tmp199, first
	.loc 2 778 0
	movq	-32(%rbp), %rax	# first, tmp200
	movq	%rax, -88(%rbp)	# tmp200, dest
	.loc 2 780 0
	movq	-64(%rbp), %rax	# macro, tmp201
	movq	8(%rax), %rax	# macro_21->expansion, tmp202
	movq	%rax, -96(%rbp)	# tmp202, src
	jmp	.L129	#
.L145:
.LBB13:
	.loc 2 785 0
	movq	-96(%rbp), %rax	# src, tmp203
	movzbl	6(%rax), %eax	# src_5->type, D.9353
	cmpb	$65, %al	#, D.9353
	je	.L130	#,
	.loc 2 787 0
	movq	-88(%rbp), %rax	# dest, dest.24
	leaq	8(%rax), %rdx	#, tmp204
	movq	%rdx, -88(%rbp)	# tmp204, dest
	movq	-96(%rbp), %rdx	# src, tmp205
	movq	%rdx, (%rax)	# tmp205, *dest.24_66
	.loc 2 788 0
	jmp	.L131	#
.L130:
	.loc 2 791 0
	movq	$0, -72(%rbp)	#, paste_flag
	.loc 2 792 0
	movq	-96(%rbp), %rax	# src, tmp206
	movl	8(%rax), %eax	# src_5->val.arg_no, D.9351
	subl	$1, %eax	#, D.9351
	movl	%eax, %eax	# D.9351, D.9352
	salq	$5, %rax	#, D.9352
	movq	%rax, %rdx	# D.9352, D.9352
	movq	-136(%rbp), %rax	# args, tmp210
	addq	%rdx, %rax	# D.9352, tmp209
	movq	%rax, -48(%rbp)	# tmp209, arg
	.loc 2 793 0
	movq	-96(%rbp), %rax	# src, tmp211
	movzbl	7(%rax), %eax	# src_5->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$4, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	je	.L132	#,
	.loc 2 794 0
	movl	$1, -100(%rbp)	#, count
	movq	-48(%rbp), %rax	# arg, tmp215
	addq	$16, %rax	#, tmp214
	movq	%rax, -80(%rbp)	# tmp214, from
	jmp	.L133	#
.L132:
	.loc 2 795 0
	movq	-96(%rbp), %rax	# src, tmp216
	movzbl	7(%rax), %eax	# src_5->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$8, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	je	.L134	#,
	.loc 2 796 0
	movq	-48(%rbp), %rax	# arg, tmp217
	movl	24(%rax), %eax	# arg_73->count, tmp218
	movl	%eax, -100(%rbp)	# tmp218, count
	movq	-48(%rbp), %rax	# arg, tmp219
	movq	(%rax), %rax	# arg_73->first, tmp220
	movq	%rax, -80(%rbp)	# tmp220, from
	jmp	.L133	#
.L134:
	.loc 2 797 0
	movq	-64(%rbp), %rax	# macro, tmp221
	movq	8(%rax), %rax	# macro_21->expansion, D.9350
	cmpq	-96(%rbp), %rax	# src, D.9350
	je	.L135	#,
	.loc 2 797 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# src, tmp222
	subq	$24, %rax	#, D.9355
	movzbl	7(%rax), %eax	# _85->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$8, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	je	.L135	#,
	.loc 2 799 0 is_stmt 1
	movq	-48(%rbp), %rax	# arg, tmp223
	movl	24(%rax), %eax	# arg_73->count, tmp224
	movl	%eax, -100(%rbp)	# tmp224, count
	movq	-48(%rbp), %rax	# arg, tmp225
	movq	(%rax), %rax	# arg_73->first, tmp226
	movq	%rax, -80(%rbp)	# tmp226, from
	.loc 2 800 0
	movq	-88(%rbp), %rax	# dest, tmp227
	cmpq	-32(%rbp), %rax	# first, tmp227
	je	.L136	#,
	.loc 2 806 0
	movq	-88(%rbp), %rax	# dest, tmp228
	subq	$8, %rax	#, D.9356
	movq	(%rax), %rax	# *_91, D.9355
	movzbl	6(%rax), %eax	# _92->type, D.9353
	cmpb	$21, %al	#, D.9353
	jne	.L137	#,
	.loc 2 807 0
	movq	-64(%rbp), %rax	# macro, tmp229
	movzbl	26(%rax), %eax	# *macro_21, D.9353
	andl	$2, %eax	#, D.9353
	testb	%al, %al	# D.9353
	je	.L137	#,
	.loc 2 808 0
	movq	-96(%rbp), %rax	# src, tmp230
	movl	8(%rax), %edx	# src_5->val.arg_no, D.9351
	movq	-64(%rbp), %rax	# macro, tmp231
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9357
	movzwl	%ax, %eax	# D.9357, D.9351
	cmpl	%eax, %edx	# D.9351, D.9351
	jne	.L137	#,
	.loc 2 810 0
	cmpl	$0, -100(%rbp)	#, count
	jne	.L138	#,
	.loc 2 811 0
	subq	$8, -88(%rbp)	#, dest
	.loc 2 810 0
	jmp	.L136	#
.L138:
	.loc 2 813 0
	movq	-88(%rbp), %rax	# dest, tmp235
	subq	$8, %rax	#, tmp234
	movq	%rax, -72(%rbp)	# tmp234, paste_flag
	.loc 2 810 0
	jmp	.L136	#
.L137:
	.loc 2 816 0
	cmpl	$0, -100(%rbp)	#, count
	jne	.L136	#,
	.loc 2 817 0
	movq	-88(%rbp), %rax	# dest, tmp239
	subq	$8, %rax	#, tmp238
	movq	%rax, -72(%rbp)	# tmp238, paste_flag
	.loc 2 800 0
	jmp	.L133	#
.L136:
	.loc 2 800 0 is_stmt 0 discriminator 1
	jmp	.L133	#
.L135:
	.loc 2 821 0 is_stmt 1
	movq	-48(%rbp), %rax	# arg, tmp240
	movl	28(%rax), %eax	# arg_73->expanded_count, tmp241
	movl	%eax, -100(%rbp)	# tmp241, count
	movq	-48(%rbp), %rax	# arg, tmp242
	movq	8(%rax), %rax	# arg_73->expanded, tmp243
	movq	%rax, -80(%rbp)	# tmp243, from
.L133:
	.loc 2 824 0
	movq	-120(%rbp), %rax	# pfile, tmp244
	movzbl	8(%rax), %eax	# pfile_41(D)->state.in_directive, D.9353
	testb	%al, %al	# D.9353
	jne	.L140	#,
	.loc 2 825 0
	movq	-64(%rbp), %rax	# macro, tmp245
	movq	8(%rax), %rax	# macro_21->expansion, D.9350
	cmpq	-96(%rbp), %rax	# src, D.9350
	je	.L140	#,
	.loc 2 825 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# src, tmp246
	subq	$24, %rax	#, D.9355
	movzbl	7(%rax), %eax	# _106->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$8, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	jne	.L140	#,
	.loc 2 826 0 is_stmt 1
	movq	-88(%rbp), %rbx	# dest, dest.25
	leaq	8(%rbx), %rax	#, tmp247
	movq	%rax, -88(%rbp)	# tmp247, dest
	movq	-96(%rbp), %rdx	# src, tmp248
	movq	-120(%rbp), %rax	# pfile, tmp249
	movq	%rdx, %rsi	# tmp248,
	movq	%rax, %rdi	# tmp249,
	call	padding_token	#
	movq	%rax, (%rbx)	# D.9355, *dest.25_110
.L140:
	.loc 2 828 0
	cmpl	$0, -100(%rbp)	#, count
	je	.L141	#,
	.loc 2 830 0
	movl	-100(%rbp), %eax	# count, D.9352
	leaq	0(,%rax,8), %rdx	#, D.9352
	movq	-80(%rbp), %rcx	# from, tmp250
	movq	-88(%rbp), %rax	# dest, tmp251
	movq	%rcx, %rsi	# tmp250,
	movq	%rax, %rdi	# tmp251,
	call	memcpy	#
	.loc 2 831 0
	movl	-100(%rbp), %eax	# count, D.9352
	salq	$3, %rax	#, D.9352
	addq	%rax, -88(%rbp)	# D.9352, dest
	.loc 2 835 0
	movq	-96(%rbp), %rax	# src, tmp252
	movzbl	7(%rax), %eax	# src_5->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$8, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	je	.L141	#,
	.loc 2 836 0
	movq	-88(%rbp), %rax	# dest, tmp256
	subq	$8, %rax	#, tmp255
	movq	%rax, -72(%rbp)	# tmp255, paste_flag
.L141:
	.loc 2 840 0
	movq	-120(%rbp), %rax	# pfile, tmp257
	movzbl	8(%rax), %eax	# pfile_41(D)->state.in_directive, D.9353
	testb	%al, %al	# D.9353
	jne	.L142	#,
	.loc 2 840 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# src, tmp258
	movzbl	7(%rax), %eax	# src_5->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$8, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	jne	.L142	#,
	.loc 2 841 0 is_stmt 1
	movq	-88(%rbp), %rax	# dest, dest.26
	leaq	8(%rax), %rdx	#, tmp259
	movq	%rdx, -88(%rbp)	# tmp259, dest
	movq	-120(%rbp), %rdx	# pfile, tmp260
	addq	$344, %rdx	#, D.9350
	movq	%rdx, (%rax)	# D.9350, *dest.26_126
.L142:
	.loc 2 844 0
	cmpq	$0, -72(%rbp)	#, paste_flag
	je	.L131	#,
.LBB14:
	.loc 2 846 0
	movq	-120(%rbp), %rax	# pfile, tmp261
	movq	%rax, %rdi	# tmp261,
	call	_cpp_temp_token	#
	movq	%rax, -24(%rbp)	# tmp262, token
	.loc 2 847 0
	movq	-72(%rbp), %rax	# paste_flag, tmp263
	movq	(%rax), %rax	# *paste_flag_19, D.9355
	movzbl	6(%rax), %edx	# _130->type, D.9353
	movq	-24(%rbp), %rax	# token, tmp264
	movb	%dl, 6(%rax)	# D.9353, token_129->type
	.loc 2 848 0
	movq	-72(%rbp), %rax	# paste_flag, tmp265
	movq	(%rax), %rax	# *paste_flag_19, D.9355
	movq	-24(%rbp), %rcx	# token, tmp266
	movq	16(%rax), %rdx	# _132->val.str,
	movq	8(%rax), %rax	# _132->val.str, tmp267
	movq	%rax, 8(%rcx)	# tmp267, token_129->val.str
	movq	%rdx, 16(%rcx)	#, token_129->val.str
	.loc 2 849 0
	movq	-96(%rbp), %rax	# src, tmp268
	movzbl	7(%rax), %eax	# src_5->flags, D.9353
	movzbl	%al, %eax	# D.9353, D.9354
	andl	$8, %eax	#, D.9354
	testl	%eax, %eax	# D.9354
	je	.L143	#,
	.loc 2 850 0
	movq	-72(%rbp), %rax	# paste_flag, tmp269
	movq	(%rax), %rax	# *paste_flag_19, D.9355
	movzbl	7(%rax), %eax	# _136->flags, D.9353
	orl	$8, %eax	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-24(%rbp), %rax	# token, tmp270
	movb	%dl, 7(%rax)	# D.9353, token_129->flags
	jmp	.L144	#
.L143:
	.loc 2 852 0
	movq	-72(%rbp), %rax	# paste_flag, tmp271
	movq	(%rax), %rax	# *paste_flag_19, D.9355
	movzbl	7(%rax), %eax	# _139->flags, D.9353
	andl	$-9, %eax	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-24(%rbp), %rax	# token, tmp272
	movb	%dl, 7(%rax)	# D.9353, token_129->flags
.L144:
	.loc 2 853 0
	movq	-72(%rbp), %rax	# paste_flag, tmp273
	movq	-24(%rbp), %rdx	# token, tmp274
	movq	%rdx, (%rax)	# tmp274, *paste_flag_19
.L131:
.LBE14:
.LBE13:
	.loc 2 780 0
	addq	$24, -96(%rbp)	#, src
.L129:
	.loc 2 780 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# src, tmp275
	cmpq	-56(%rbp), %rax	# limit, tmp275
	jb	.L145	#,
	.loc 2 858 0 is_stmt 1
	movl	$0, -108(%rbp)	#, i
	jmp	.L146	#
.L148:
	.loc 2 859 0
	movl	-108(%rbp), %eax	# i, D.9352
	salq	$5, %rax	#, D.9352
	movq	%rax, %rdx	# D.9352, D.9352
	movq	-136(%rbp), %rax	# args, tmp276
	addq	%rdx, %rax	# D.9352, D.9358
	movq	8(%rax), %rax	# _148->expanded, D.9356
	testq	%rax, %rax	# D.9356
	je	.L147	#,
	.loc 2 860 0
	movl	-108(%rbp), %eax	# i, D.9352
	salq	$5, %rax	#, D.9352
	movq	%rax, %rdx	# D.9352, D.9352
	movq	-136(%rbp), %rax	# args, tmp277
	addq	%rdx, %rax	# D.9352, D.9358
	movq	8(%rax), %rax	# _152->expanded, D.9356
	movq	%rax, %rdi	# D.9356,
	call	free	#
.L147:
	.loc 2 858 0
	addl	$1, -108(%rbp)	#, i
.L146:
	.loc 2 858 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# macro, tmp278
	movzwl	24(%rax), %eax	# macro_21->paramc, D.9357
	movzwl	%ax, %eax	# D.9357, D.9351
	cmpl	-108(%rbp), %eax	# i, D.9351
	ja	.L148	#,
	.loc 2 862 0 is_stmt 1
	movq	-88(%rbp), %rdx	# dest, dest.27
	movq	-32(%rbp), %rax	# first, first.28
	subq	%rax, %rdx	# first.28, D.9359
	movq	%rdx, %rax	# D.9359, D.9359
	sarq	$3, %rax	#, tmp279
	movl	%eax, %edi	# D.9359, D.9351
	movq	-32(%rbp), %rcx	# first, tmp280
	movq	-40(%rbp), %rdx	# buff, tmp281
	movq	-128(%rbp), %rsi	# node, tmp282
	movq	-120(%rbp), %rax	# pfile, tmp283
	movl	%edi, %r8d	# D.9351,
	movq	%rax, %rdi	# tmp283,
	call	push_ptoken_context	#
	.loc 2 863 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	replace_args, .-replace_args
	.type	padding_token, @function
padding_token:
.LFB19:
	.loc 2 870 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# source, source
	.loc 2 871 0
	movq	-24(%rbp), %rax	# pfile, tmp61
	movq	%rax, %rdi	# tmp61,
	call	_cpp_temp_token	#
	movq	%rax, -8(%rbp)	# tmp62, result
	.loc 2 873 0
	movq	-8(%rbp), %rax	# result, tmp63
	movb	$66, 6(%rax)	#, result_2->type
	.loc 2 874 0
	movq	-8(%rbp), %rax	# result, tmp64
	movq	-32(%rbp), %rdx	# source, tmp65
	movq	%rdx, 8(%rax)	# tmp65, result_2->val.source
	.loc 2 875 0
	movq	-8(%rbp), %rax	# result, tmp66
	movb	$0, 7(%rax)	#, result_2->flags
	.loc 2 876 0
	movq	-8(%rbp), %rax	# result, D.9360
	.loc 2 877 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	padding_token, .-padding_token
	.type	next_context, @function
next_context:
.LFB20:
	.loc 2 884 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 885 0
	movq	-24(%rbp), %rax	# pfile, tmp64
	movq	152(%rax), %rax	# pfile_2(D)->context, D.9361
	movq	(%rax), %rax	# _3->next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, result
	.loc 2 887 0
	cmpq	$0, -8(%rbp)	#, result
	jne	.L152	#,
	.loc 2 889 0
	movl	$56, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp66, result
	.loc 2 890 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	152(%rax), %rdx	# pfile_2(D)->context, D.9361
	movq	-8(%rbp), %rax	# result, tmp68
	movq	%rdx, 8(%rax)	# D.9361, result_5->prev
	.loc 2 891 0
	movq	-8(%rbp), %rax	# result, tmp69
	movq	$0, (%rax)	#, result_5->next
	.loc 2 892 0
	movq	-24(%rbp), %rax	# pfile, tmp70
	movq	152(%rax), %rax	# pfile_2(D)->context, D.9361
	movq	-8(%rbp), %rdx	# result, tmp71
	movq	%rdx, (%rax)	# tmp71, _7->next
.L152:
	.loc 2 895 0
	movq	-24(%rbp), %rax	# pfile, tmp72
	movq	-8(%rbp), %rdx	# result, tmp73
	movq	%rdx, 152(%rax)	# tmp73, pfile_2(D)->context
	.loc 2 896 0
	movq	-8(%rbp), %rax	# result, D.9362
	.loc 2 897 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	next_context, .-next_context
	.type	push_ptoken_context, @function
push_ptoken_context:
.LFB21:
	.loc 2 907 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# macro, macro
	movq	%rdx, -40(%rbp)	# buff, buff
	movq	%rcx, -48(%rbp)	# first, first
	movl	%r8d, -52(%rbp)	# count, count
	.loc 2 908 0
	movq	-24(%rbp), %rax	# pfile, tmp62
	movq	%rax, %rdi	# tmp62,
	call	next_context	#
	movq	%rax, -8(%rbp)	# tmp63, context
	.loc 2 910 0
	movq	-8(%rbp), %rax	# context, tmp64
	movb	$0, 48(%rax)	#, context_2->direct_p
	.loc 2 911 0
	movq	-8(%rbp), %rax	# context, tmp65
	movq	-32(%rbp), %rdx	# macro, tmp66
	movq	%rdx, 40(%rax)	# tmp66, context_2->macro
	.loc 2 912 0
	movq	-8(%rbp), %rax	# context, tmp67
	movq	-40(%rbp), %rdx	# buff, tmp68
	movq	%rdx, 32(%rax)	# tmp68, context_2->buff
	.loc 2 913 0
	movq	-8(%rbp), %rax	# context, tmp69
	movq	-48(%rbp), %rdx	# first, tmp70
	movq	%rdx, 16(%rax)	# tmp70, context_2->first.ptoken
	.loc 2 914 0
	movl	-52(%rbp), %eax	# count, D.9363
	leaq	0(,%rax,8), %rdx	#, D.9363
	movq	-48(%rbp), %rax	# first, tmp71
	addq	%rax, %rdx	# tmp71, D.9364
	movq	-8(%rbp), %rax	# context, tmp72
	movq	%rdx, 24(%rax)	# D.9364, context_2->last.ptoken
	.loc 2 915 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	push_ptoken_context, .-push_ptoken_context
	.type	push_token_context, @function
push_token_context:
.LFB22:
	.loc 2 924 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# macro, macro
	movq	%rdx, -40(%rbp)	# first, first
	movl	%ecx, -44(%rbp)	# count, count
	.loc 2 925 0
	movq	-24(%rbp), %rax	# pfile, tmp62
	movq	%rax, %rdi	# tmp62,
	call	next_context	#
	movq	%rax, -8(%rbp)	# tmp63, context
	.loc 2 927 0
	movq	-8(%rbp), %rax	# context, tmp64
	movb	$1, 48(%rax)	#, context_2->direct_p
	.loc 2 928 0
	movq	-8(%rbp), %rax	# context, tmp65
	movq	-32(%rbp), %rdx	# macro, tmp66
	movq	%rdx, 40(%rax)	# tmp66, context_2->macro
	.loc 2 929 0
	movq	-8(%rbp), %rax	# context, tmp67
	movq	$0, 32(%rax)	#, context_2->buff
	.loc 2 930 0
	movq	-8(%rbp), %rax	# context, tmp68
	movq	-40(%rbp), %rdx	# first, tmp69
	movq	%rdx, 16(%rax)	# tmp69, context_2->first.token
	.loc 2 931 0
	movl	-44(%rbp), %edx	# count, D.9365
	movq	%rdx, %rax	# D.9365, tmp70
	addq	%rax, %rax	# tmp70
	addq	%rdx, %rax	# D.9365, tmp70
	salq	$3, %rax	#, tmp71
	movq	%rax, %rdx	# tmp70, D.9365
	movq	-40(%rbp), %rax	# first, tmp72
	addq	%rax, %rdx	# tmp72, D.9366
	movq	-8(%rbp), %rax	# context, tmp73
	movq	%rdx, 24(%rax)	# D.9366, context_2->last.token
	.loc 2 932 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	push_token_context, .-push_token_context
	.type	expand_arg, @function
expand_arg:
.LFB23:
	.loc 2 944 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# arg, arg
	.loc 2 947 0
	movq	-32(%rbp), %rax	# arg, tmp79
	movl	24(%rax), %eax	# arg_3(D)->count, D.9367
	testl	%eax, %eax	# D.9367
	jne	.L157	#,
	.loc 2 948 0
	jmp	.L156	#
.L157:
	.loc 2 951 0
	movl	$256, -12(%rbp)	#, capacity
	.loc 2 953 0
	movl	-12(%rbp), %eax	# capacity, D.9368
	salq	$3, %rax	#, D.9368
	movq	%rax, %rdi	# D.9368,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp80, D.9369
	.loc 2 952 0
	movq	-32(%rbp), %rax	# arg, tmp81
	movq	%rdx, 8(%rax)	# D.9369, arg_3(D)->expanded
	.loc 2 955 0
	movq	-32(%rbp), %rax	# arg, tmp82
	movl	24(%rax), %eax	# arg_3(D)->count, D.9367
	leal	1(%rax), %ecx	#, D.9367
	movq	-32(%rbp), %rax	# arg, tmp83
	movq	(%rax), %rdx	# arg_3(D)->first, D.9370
	movq	-24(%rbp), %rax	# pfile, tmp84
	movl	%ecx, %r8d	# D.9367,
	movq	%rdx, %rcx	# D.9370,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	push_ptoken_context	#
.L162:
.LBB15:
	.loc 2 960 0
	movq	-32(%rbp), %rax	# arg, tmp85
	movl	28(%rax), %eax	# arg_3(D)->expanded_count, D.9367
	addl	$1, %eax	#, D.9367
	cmpl	-12(%rbp), %eax	# capacity, D.9367
	jb	.L159	#,
	.loc 2 962 0
	sall	-12(%rbp)	# capacity
	.loc 2 964 0
	movl	-12(%rbp), %eax	# capacity, D.9368
	leaq	0(,%rax,8), %rdx	#, D.9368
	movq	-32(%rbp), %rax	# arg, tmp86
	movq	8(%rax), %rax	# arg_3(D)->expanded, D.9370
	movq	%rdx, %rsi	# D.9368,
	movq	%rax, %rdi	# D.9370,
	call	xrealloc	#
	.loc 2 963 0
	movq	-32(%rbp), %rdx	# arg, tmp87
	movq	%rax, 8(%rdx)	# D.9369, arg_3(D)->expanded
.L159:
	.loc 2 967 0
	movq	-24(%rbp), %rax	# pfile, tmp88
	movq	%rax, %rdi	# tmp88,
	call	cpp_get_token	#
	movq	%rax, -8(%rbp)	# tmp89, token
	.loc 2 969 0
	movq	-8(%rbp), %rax	# token, tmp90
	movzbl	6(%rax), %eax	# token_20->type, D.9371
	cmpb	$67, %al	#, D.9371
	jne	.L160	#,
	.loc 2 970 0
	nop
.LBE15:
	.loc 2 975 0
	movq	-24(%rbp), %rax	# pfile, tmp95
	movq	%rax, %rdi	# tmp95,
	call	_cpp_pop_context	#
	jmp	.L156	#
.L160:
.LBB16:
	.loc 2 972 0
	movq	-32(%rbp), %rax	# arg, tmp91
	movq	8(%rax), %rsi	# arg_3(D)->expanded, D.9370
	movq	-32(%rbp), %rax	# arg, tmp92
	movl	28(%rax), %eax	# arg_3(D)->expanded_count, D.9367
	leal	1(%rax), %ecx	#, D.9367
	movq	-32(%rbp), %rdx	# arg, tmp93
	movl	%ecx, 28(%rdx)	# D.9367, arg_3(D)->expanded_count
	movl	%eax, %eax	# D.9367, D.9368
	salq	$3, %rax	#, D.9368
	leaq	(%rsi,%rax), %rdx	#, D.9370
	movq	-8(%rbp), %rax	# token, tmp94
	movq	%rax, (%rdx)	# tmp94, *_28
.LBE16:
	.loc 2 973 0
	jmp	.L162	#
.L156:
	.loc 2 976 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	expand_arg, .-expand_arg
	.globl	_cpp_pop_context
	.type	_cpp_pop_context, @function
_cpp_pop_context:
.LFB24:
	.loc 2 984 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 985 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	152(%rax), %rax	# pfile_1(D)->context, tmp68
	movq	%rax, -8(%rbp)	# tmp68, context
	.loc 2 987 0
	movq	-8(%rbp), %rax	# context, tmp69
	movq	40(%rax), %rax	# context_2->macro, D.9372
	testq	%rax, %rax	# D.9372
	je	.L164	#,
	.loc 2 988 0
	movq	-8(%rbp), %rax	# context, tmp70
	movq	40(%rax), %rax	# context_2->macro, D.9372
	movq	-8(%rbp), %rdx	# context, tmp71
	movq	40(%rdx), %rdx	# context_2->macro, D.9372
	movzbl	21(%rdx), %edx	# _5->flags, D.9373
	andl	$-33, %edx	#, D.9373
	movb	%dl, 21(%rax)	# D.9373, _4->flags
.L164:
	.loc 2 990 0
	movq	-8(%rbp), %rax	# context, tmp72
	movq	32(%rax), %rax	# context_2->buff, D.9374
	testq	%rax, %rax	# D.9374
	je	.L165	#,
	.loc 2 991 0
	movq	-8(%rbp), %rax	# context, tmp73
	movq	32(%rax), %rdx	# context_2->buff, D.9374
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	%rdx, %rsi	# D.9374,
	movq	%rax, %rdi	# tmp74,
	call	_cpp_release_buff	#
.L165:
	.loc 2 993 0
	movq	-8(%rbp), %rax	# context, tmp75
	movq	8(%rax), %rdx	# context_2->prev, D.9375
	movq	-24(%rbp), %rax	# pfile, tmp76
	movq	%rdx, 152(%rax)	# D.9375, pfile_1(D)->context
	.loc 2 994 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	_cpp_pop_context, .-_cpp_pop_context
	.globl	cpp_get_token
	.type	cpp_get_token, @function
cpp_get_token:
.LFB25:
	.loc 2 1010 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
.L181:
.LBB17:
	.loc 2 1016 0
	movq	-40(%rbp), %rax	# pfile, tmp89
	movq	152(%rax), %rax	# pfile_6(D)->context, tmp90
	movq	%rax, -24(%rbp)	# tmp90, context
	.loc 2 1019 0
	movq	-24(%rbp), %rax	# context, tmp91
	movq	8(%rax), %rax	# context_7->prev, D.9377
	testq	%rax, %rax	# D.9377
	jne	.L167	#,
	.loc 2 1020 0
	movq	-40(%rbp), %rax	# pfile, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_cpp_lex_token	#
	movq	%rax, -32(%rbp)	# tmp93, result
	jmp	.L168	#
.L167:
	.loc 2 1021 0
	movq	-24(%rbp), %rax	# context, tmp94
	movq	16(%rax), %rdx	# context_7->first.token, D.9376
	movq	-24(%rbp), %rax	# context, tmp95
	movq	24(%rax), %rax	# context_7->last.token, D.9376
	cmpq	%rax, %rdx	# D.9376, D.9376
	je	.L169	#,
	.loc 2 1023 0
	movq	-24(%rbp), %rax	# context, tmp96
	movzbl	48(%rax), %eax	# context_7->direct_p, D.9378
	testb	%al, %al	# D.9378
	je	.L170	#,
	.loc 2 1024 0
	movq	-24(%rbp), %rax	# context, tmp97
	movq	16(%rax), %rax	# context_7->first.token, D.9376
	leaq	24(%rax), %rcx	#, D.9376
	movq	-24(%rbp), %rdx	# context, tmp98
	movq	%rcx, 16(%rdx)	# D.9376, context_7->first.token
	movq	%rax, -32(%rbp)	# result.29, result
	jmp	.L171	#
.L170:
	.loc 2 1026 0
	movq	-24(%rbp), %rax	# context, tmp99
	movq	16(%rax), %rax	# context_7->first.ptoken, D.9379
	leaq	8(%rax), %rcx	#, D.9379
	movq	-24(%rbp), %rdx	# context, tmp100
	movq	%rcx, 16(%rdx)	# D.9379, context_7->first.ptoken
	movq	(%rax), %rax	# *_18, tmp101
	movq	%rax, -32(%rbp)	# tmp101, result
.L171:
	.loc 2 1028 0
	movq	-32(%rbp), %rax	# result, tmp102
	movzbl	7(%rax), %eax	# result_1->flags, D.9380
	movzbl	%al, %eax	# D.9380, D.9381
	andl	$8, %eax	#, D.9381
	testl	%eax, %eax	# D.9381
	je	.L168	#,
	.loc 2 1030 0
	movq	-32(%rbp), %rdx	# result, tmp103
	movq	-40(%rbp), %rax	# pfile, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	paste_all_tokens	#
	.loc 2 1031 0
	movq	-40(%rbp), %rax	# pfile, tmp105
	movzbl	8(%rax), %eax	# pfile_6(D)->state.in_directive, D.9380
	testb	%al, %al	# D.9380
	je	.L172	#,
	.loc 2 1032 0
	jmp	.L173	#
.L172:
	.loc 2 1033 0
	movq	-32(%rbp), %rdx	# result, tmp106
	movq	-40(%rbp), %rax	# pfile, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	padding_token	#
	jmp	.L174	#
.L169:
	.loc 2 1038 0
	movq	-40(%rbp), %rax	# pfile, tmp108
	movq	%rax, %rdi	# tmp108,
	call	_cpp_pop_context	#
	.loc 2 1039 0
	movq	-40(%rbp), %rax	# pfile, tmp109
	movzbl	8(%rax), %eax	# pfile_6(D)->state.in_directive, D.9380
	testb	%al, %al	# D.9380
	je	.L175	#,
	.loc 2 1040 0
	jmp	.L173	#
.L175:
	.loc 2 1041 0
	movq	-40(%rbp), %rax	# pfile, tmp110
	addq	$344, %rax	#, D.9376
	jmp	.L174	#
.L168:
	.loc 2 1044 0
	movq	-32(%rbp), %rax	# result, tmp111
	movzbl	6(%rax), %eax	# result_2->type, D.9380
	cmpb	$56, %al	#, D.9380
	je	.L176	#,
	.loc 2 1045 0
	jmp	.L177	#
.L176:
	.loc 2 1047 0
	movq	-32(%rbp), %rax	# result, tmp112
	movq	8(%rax), %rax	# result_2->val.node, tmp113
	movq	%rax, -16(%rbp)	# tmp113, node
	.loc 2 1049 0
	movq	-16(%rbp), %rax	# node, tmp114
	movzbl	20(%rax), %eax	# node_29->type, D.9380
	cmpb	$1, %al	#, D.9380
	jne	.L177	#,
	.loc 2 1049 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# result, tmp115
	movzbl	7(%rax), %eax	# result_2->flags, D.9380
	movzbl	%al, %eax	# D.9380, D.9381
	andl	$32, %eax	#, D.9381
	testl	%eax, %eax	# D.9381
	jne	.L177	#,
	.loc 2 1052 0 is_stmt 1
	movq	-16(%rbp), %rax	# node, tmp116
	movzbl	21(%rax), %eax	# node_29->flags, D.9380
	movzbl	%al, %eax	# D.9380, D.9381
	andl	$32, %eax	#, D.9381
	testl	%eax, %eax	# D.9381
	jne	.L178	#,
	.loc 2 1054 0
	movq	-40(%rbp), %rax	# pfile, tmp117
	movzbl	15(%rax), %eax	# pfile_6(D)->state.prevent_expansion, D.9380
	testb	%al, %al	# D.9380
	jne	.L179	#,
	.loc 2 1055 0
	movq	-16(%rbp), %rdx	# node, tmp118
	movq	-40(%rbp), %rax	# pfile, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	enter_macro_context	#
	testl	%eax, %eax	# D.9381
	je	.L179	#,
	.loc 2 1057 0
	movq	-40(%rbp), %rax	# pfile, tmp120
	movzbl	8(%rax), %eax	# pfile_6(D)->state.in_directive, D.9380
	testb	%al, %al	# D.9380
	je	.L180	#,
	.loc 2 1058 0
	jmp	.L173	#
.L180:
	.loc 2 1059 0
	movq	-32(%rbp), %rdx	# result, tmp121
	movq	-40(%rbp), %rax	# pfile, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	padding_token	#
	jmp	.L174	#
.L178:
.LBB18:
	.loc 2 1066 0
	movq	-40(%rbp), %rax	# pfile, tmp123
	movq	%rax, %rdi	# tmp123,
	call	_cpp_temp_token	#
	movq	%rax, -8(%rbp)	# tmp124, t
	.loc 2 1067 0
	movq	-32(%rbp), %rax	# result, tmp125
	movzbl	6(%rax), %edx	# result_2->type, D.9380
	movq	-8(%rbp), %rax	# t, tmp126
	movb	%dl, 6(%rax)	# D.9380, t_41->type
	.loc 2 1068 0
	movq	-32(%rbp), %rax	# result, tmp127
	movzbl	7(%rax), %eax	# result_2->flags, D.9380
	orl	$32, %eax	#, D.9380
	movl	%eax, %edx	# D.9380, D.9380
	movq	-8(%rbp), %rax	# t, tmp128
	movb	%dl, 7(%rax)	# D.9380, t_41->flags
	.loc 2 1069 0
	movq	-8(%rbp), %rcx	# t, tmp129
	movq	-32(%rbp), %rax	# result, tmp130
	movq	16(%rax), %rdx	# result_2->val.str,
	movq	8(%rax), %rax	# result_2->val.str, tmp131
	movq	%rax, 8(%rcx)	# tmp131, t_41->val.str
	movq	%rdx, 16(%rcx)	#, t_41->val.str
	.loc 2 1070 0
	movq	-8(%rbp), %rax	# t, tmp132
	movq	%rax, -32(%rbp)	# tmp132, result
.LBE18:
	.loc 2 1073 0
	jmp	.L177	#
.L179:
	jmp	.L177	#
.L173:
.LBE17:
	.loc 2 1074 0
	jmp	.L181	#
.L177:
	.loc 2 1076 0
	movq	-32(%rbp), %rax	# result, D.9376
.L174:
	.loc 2 1077 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	cpp_get_token, .-cpp_get_token
	.globl	cpp_sys_macro_p
	.type	cpp_sys_macro_p, @function
cpp_sys_macro_p:
.LFB26:
	.loc 2 1085 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 2 1086 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	152(%rax), %rax	# pfile_2(D)->context, D.9382
	movq	40(%rax), %rax	# _3->macro, tmp68
	movq	%rax, -8(%rbp)	# tmp68, node
	.loc 2 1088 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L183	#,
	.loc 2 1088 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# node, tmp69
	movq	24(%rax), %rax	# node_4->value.macro, D.9383
	testq	%rax, %rax	# D.9383
	je	.L183	#,
	movq	-8(%rbp), %rax	# node, tmp70
	movq	24(%rax), %rax	# node_4->value.macro, D.9383
	movzbl	26(%rax), %eax	# *_6, D.9384
	andl	$4, %eax	#, D.9384
	testb	%al, %al	# D.9384
	je	.L183	#,
	.loc 2 1088 0 discriminator 3
	movl	$1, %eax	#, iftmp.30
	jmp	.L184	#
.L183:
	.loc 2 1088 0 discriminator 2
	movl	$0, %eax	#, iftmp.30
.L184:
	.loc 2 1089 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	cpp_sys_macro_p, .-cpp_sys_macro_p
	.globl	cpp_scan_nooutput
	.type	cpp_scan_nooutput, @function
cpp_scan_nooutput:
.LFB27:
	.loc 2 1096 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 2 1097 0
	nop
.L187:
	.loc 2 1097 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pfile, tmp61
	movq	%rax, %rdi	# tmp61,
	call	cpp_get_token	#
	movzbl	6(%rax), %eax	# _2->type, D.9387
	cmpb	$67, %al	#, D.9387
	jne	.L187	#,
	.loc 2 1099 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	cpp_scan_nooutput, .-cpp_scan_nooutput
	.globl	_cpp_backup_tokens
	.type	_cpp_backup_tokens, @function
_cpp_backup_tokens:
.LFB28:
	.loc 2 1107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movl	%esi, -12(%rbp)	# count, count
	.loc 2 1108 0
	movq	-8(%rbp), %rax	# pfile, tmp83
	movq	152(%rax), %rax	# pfile_2(D)->context, D.9388
	movq	8(%rax), %rax	# _3->prev, D.9389
	testq	%rax, %rax	# D.9389
	jne	.L189	#,
	.loc 2 1110 0
	movq	-8(%rbp), %rax	# pfile, tmp84
	movl	240(%rax), %edx	# pfile_2(D)->lookaheads, D.9390
	movl	-12(%rbp), %eax	# count, tmp85
	addl	%eax, %edx	# tmp85, D.9390
	movq	-8(%rbp), %rax	# pfile, tmp86
	movl	%edx, 240(%rax)	# D.9390, pfile_2(D)->lookaheads
	.loc 2 1111 0
	jmp	.L190	#
.L191:
	.loc 2 1113 0
	movq	-8(%rbp), %rax	# pfile, tmp87
	movq	192(%rax), %rax	# pfile_2(D)->cur_token, D.9391
	leaq	-24(%rax), %rdx	#, D.9391
	movq	-8(%rbp), %rax	# pfile, tmp88
	movq	%rdx, 192(%rax)	# D.9391, pfile_2(D)->cur_token
	.loc 2 1114 0
	movq	-8(%rbp), %rax	# pfile, tmp89
	movq	192(%rax), %rdx	# pfile_2(D)->cur_token, D.9391
	movq	-8(%rbp), %rax	# pfile, tmp90
	movq	232(%rax), %rax	# pfile_2(D)->cur_run, D.9392
	movq	16(%rax), %rax	# _13->base, D.9391
	cmpq	%rax, %rdx	# D.9391, D.9391
	jne	.L190	#,
	.loc 2 1116 0
	movq	-8(%rbp), %rax	# pfile, tmp91
	movq	232(%rax), %rax	# pfile_2(D)->cur_run, D.9392
	movq	8(%rax), %rax	# _15->prev, D.9392
	testq	%rax, %rax	# D.9392
	je	.L190	#,
	.loc 2 1118 0
	movq	-8(%rbp), %rax	# pfile, tmp92
	movq	232(%rax), %rax	# pfile_2(D)->cur_run, D.9392
	movq	8(%rax), %rdx	# _17->prev, D.9392
	movq	-8(%rbp), %rax	# pfile, tmp93
	movq	%rdx, 232(%rax)	# D.9392, pfile_2(D)->cur_run
	.loc 2 1119 0
	movq	-8(%rbp), %rax	# pfile, tmp94
	movq	232(%rax), %rax	# pfile_2(D)->cur_run, D.9392
	movq	24(%rax), %rdx	# _19->limit, D.9391
	movq	-8(%rbp), %rax	# pfile, tmp95
	movq	%rdx, 192(%rax)	# D.9391, pfile_2(D)->cur_token
.L190:
	.loc 2 1111 0 discriminator 1
	movl	-12(%rbp), %eax	# count, count.31
	leal	-1(%rax), %edx	#, tmp96
	movl	%edx, -12(%rbp)	# tmp96, count
	testl	%eax, %eax	# count.31
	jne	.L191	#,
	jmp	.L188	#
.L189:
	.loc 2 1125 0
	cmpl	$1, -12(%rbp)	#, count
	je	.L193	#,
	.loc 2 1126 0
	call	abort	#
.L193:
	.loc 2 1127 0
	movq	-8(%rbp), %rax	# pfile, tmp97
	movq	152(%rax), %rax	# pfile_2(D)->context, D.9388
	movzbl	48(%rax), %eax	# _21->direct_p, D.9393
	testb	%al, %al	# D.9393
	je	.L194	#,
	.loc 2 1128 0
	movq	-8(%rbp), %rax	# pfile, tmp98
	movq	152(%rax), %rax	# pfile_2(D)->context, D.9388
	movq	16(%rax), %rdx	# _23->first.token, D.9394
	subq	$24, %rdx	#, D.9394
	movq	%rdx, 16(%rax)	# D.9394, _23->first.token
	jmp	.L188	#
.L194:
	.loc 2 1130 0
	movq	-8(%rbp), %rax	# pfile, tmp99
	movq	152(%rax), %rax	# pfile_2(D)->context, D.9388
	movq	16(%rax), %rdx	# _26->first.ptoken, D.9395
	subq	$8, %rdx	#, D.9395
	movq	%rdx, 16(%rax)	# D.9395, _26->first.ptoken
.L188:
	.loc 2 1132 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_cpp_backup_tokens, .-_cpp_backup_tokens
	.type	warn_of_redefinition, @function
warn_of_redefinition:
.LFB29:
	.loc 2 1141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# node, node
	movq	%rsi, -32(%rbp)	# macro2, macro2
	.loc 2 1146 0
	movq	-24(%rbp), %rax	# node, tmp94
	movzbl	21(%rax), %eax	# node_4(D)->flags, D.9397
	movzbl	%al, %eax	# D.9397, D.9396
	andl	$16, %eax	#, D.9396
	testl	%eax, %eax	# D.9396
	je	.L196	#,
	.loc 2 1147 0
	movl	$1, %eax	#, D.9396
	jmp	.L197	#
.L196:
	.loc 2 1151 0
	movq	-24(%rbp), %rax	# node, tmp95
	movq	24(%rax), %rax	# node_4(D)->value.macro, tmp96
	movq	%rax, -8(%rbp)	# tmp96, macro1
	.loc 2 1154 0
	movq	-8(%rbp), %rax	# macro1, tmp97
	movl	20(%rax), %edx	# macro1_9->count, D.9398
	movq	-32(%rbp), %rax	# macro2, tmp98
	movl	20(%rax), %eax	# macro2_11(D)->count, D.9398
	cmpl	%eax, %edx	# D.9398, D.9398
	jne	.L198	#,
	.loc 2 1155 0
	movq	-8(%rbp), %rax	# macro1, tmp99
	movzwl	24(%rax), %edx	# macro1_9->paramc, D.9399
	movq	-32(%rbp), %rax	# macro2, tmp100
	movzwl	24(%rax), %eax	# macro2_11(D)->paramc, D.9399
	cmpw	%ax, %dx	# D.9399, D.9399
	jne	.L198	#,
	.loc 2 1156 0
	movq	-8(%rbp), %rax	# macro1, tmp101
	movzbl	26(%rax), %eax	# *macro1_9, tmp104
	andl	$1, %eax	#, D.9400
	movl	%eax, %edx	# D.9400, D.9400
	movq	-32(%rbp), %rax	# macro2, tmp105
	movzbl	26(%rax), %eax	# *macro2_11(D), tmp108
	andl	$1, %eax	#, D.9400
	cmpb	%al, %dl	# D.9400, D.9400
	jne	.L198	#,
	.loc 2 1157 0
	movq	-8(%rbp), %rax	# macro1, tmp109
	movzbl	26(%rax), %eax	# *macro1_9, tmp112
	shrb	%al	# D.9400
	movl	%eax, %edx	# D.9400, D.9400
	andl	$1, %edx	#, D.9400
	movq	-32(%rbp), %rax	# macro2, tmp113
	movzbl	26(%rax), %eax	# *macro2_11(D), tmp116
	shrb	%al	# D.9400
	andl	$1, %eax	#, D.9400
	cmpb	%al, %dl	# D.9400, D.9400
	je	.L199	#,
.L198:
	.loc 2 1158 0
	movl	$1, %eax	#, D.9396
	jmp	.L197	#
.L199:
	.loc 2 1161 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L200	#
.L202:
	.loc 2 1162 0
	movq	-32(%rbp), %rax	# macro2, tmp117
	movq	8(%rax), %rcx	# macro2_11(D)->expansion, D.9401
	movl	-12(%rbp), %edx	# i, D.9402
	movq	%rdx, %rax	# D.9402, tmp118
	addq	%rax, %rax	# tmp118
	addq	%rdx, %rax	# D.9402, tmp118
	salq	$3, %rax	#, tmp119
	addq	%rax, %rcx	# D.9402, D.9403
	movq	-8(%rbp), %rax	# macro1, tmp120
	movq	8(%rax), %rsi	# macro1_9->expansion, D.9401
	movl	-12(%rbp), %edx	# i, D.9402
	movq	%rdx, %rax	# D.9402, tmp121
	addq	%rax, %rax	# tmp121
	addq	%rdx, %rax	# D.9402, tmp121
	salq	$3, %rax	#, tmp122
	addq	%rsi, %rax	# D.9401, D.9403
	movq	%rcx, %rsi	# D.9403,
	movq	%rax, %rdi	# D.9403,
	call	_cpp_equiv_tokens	#
	testl	%eax, %eax	# D.9396
	jne	.L201	#,
	.loc 2 1163 0
	movl	$1, %eax	#, D.9396
	jmp	.L197	#
.L201:
	.loc 2 1161 0
	addl	$1, -12(%rbp)	#, i
.L200:
	.loc 2 1161 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# macro1, tmp123
	movl	20(%rax), %eax	# macro1_9->count, D.9398
	cmpl	-12(%rbp), %eax	# i, D.9398
	ja	.L202	#,
	.loc 2 1166 0 is_stmt 1
	movl	$0, -12(%rbp)	#, i
	jmp	.L203	#
.L205:
	.loc 2 1167 0
	movq	-8(%rbp), %rax	# macro1, tmp124
	movq	(%rax), %rax	# macro1_9->params, D.9404
	movl	-12(%rbp), %edx	# i, D.9402
	salq	$3, %rdx	#, D.9402
	addq	%rdx, %rax	# D.9402, D.9404
	movq	(%rax), %rdx	# *_38, D.9405
	movq	-32(%rbp), %rax	# macro2, tmp125
	movq	(%rax), %rax	# macro2_11(D)->params, D.9404
	movl	-12(%rbp), %ecx	# i, D.9402
	salq	$3, %rcx	#, D.9402
	addq	%rcx, %rax	# D.9402, D.9404
	movq	(%rax), %rax	# *_43, D.9405
	cmpq	%rax, %rdx	# D.9405, D.9405
	je	.L204	#,
	.loc 2 1168 0
	movl	$1, %eax	#, D.9396
	jmp	.L197	#
.L204:
	.loc 2 1166 0
	addl	$1, -12(%rbp)	#, i
.L203:
	.loc 2 1166 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# macro1, tmp126
	movzwl	24(%rax), %eax	# macro1_9->paramc, D.9399
	movzwl	%ax, %eax	# D.9399, D.9398
	cmpl	-12(%rbp), %eax	# i, D.9398
	ja	.L205	#,
	.loc 2 1170 0 is_stmt 1
	movl	$0, %eax	#, D.9396
.L197:
	.loc 2 1171 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	warn_of_redefinition, .-warn_of_redefinition
	.globl	_cpp_free_definition
	.type	_cpp_free_definition, @function
_cpp_free_definition:
.LFB30:
	.loc 2 1177 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# h, h
	.loc 2 1179 0
	movq	-8(%rbp), %rax	# h, tmp61
	movb	$0, 20(%rax)	#, h_1(D)->type
	.loc 2 1181 0
	movq	-8(%rbp), %rax	# h, tmp62
	movzbl	21(%rax), %eax	# h_1(D)->flags, D.9406
	andl	$-37, %eax	#, D.9406
	movl	%eax, %edx	# D.9406, D.9406
	movq	-8(%rbp), %rax	# h, tmp63
	movb	%dl, 21(%rax)	# D.9406, h_1(D)->flags
	.loc 2 1182 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	_cpp_free_definition, .-_cpp_free_definition
	.section	.rodata
	.align 8
.LC25:
	.string	"duplicate macro parameter \"%s\""
	.text
	.type	save_parameter, @function
save_parameter:
.LFB31:
	.loc 2 1191 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# macro, macro
	movq	%rdx, -24(%rbp)	# node, node
	.loc 2 1193 0
	movq	-24(%rbp), %rax	# node, tmp85
	movzwl	16(%rax), %eax	# node_2(D)->arg_index, D.9408
	testw	%ax, %ax	# D.9408
	je	.L208	#,
	.loc 2 1195 0
	movq	-24(%rbp), %rax	# node, tmp86
	movq	8(%rax), %rdx	# node_2(D)->ident.str, D.9409
	movq	-8(%rbp), %rax	# pfile, tmp87
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 1196 0
	movl	$1, %eax	#, D.9407
	jmp	.L209	#
.L208:
	.loc 2 1199 0
	movq	-8(%rbp), %rax	# pfile, tmp88
	movq	72(%rax), %rax	# pfile_5(D)->a_buff, D.9410
	movq	24(%rax), %rax	# _7->limit, D.9411
	movq	%rax, %rdx	# D.9411, D.9412
	movq	-8(%rbp), %rax	# pfile, tmp89
	movq	72(%rax), %rax	# pfile_5(D)->a_buff, D.9410
	movq	16(%rax), %rax	# _10->cur, D.9411
	subq	%rax, %rdx	# D.9412, D.9412
	movq	%rdx, %rax	# D.9412, D.9412
	movq	%rax, %rdx	# D.9412, D.9413
	.loc 2 1200 0
	movq	-16(%rbp), %rax	# macro, tmp90
	movzwl	24(%rax), %eax	# macro_15(D)->paramc, D.9408
	movzwl	%ax, %eax	# D.9408, D.9407
	addl	$1, %eax	#, D.9407
	cltq
	salq	$3, %rax	#, D.9413
	.loc 2 1199 0
	cmpq	%rax, %rdx	# D.9413, D.9413
	jae	.L210	#,
	.loc 2 1201 0
	movq	-8(%rbp), %rax	# pfile, tmp91
	leaq	72(%rax), %rcx	#, D.9414
	movq	-8(%rbp), %rax	# pfile, tmp92
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# D.9414,
	movq	%rax, %rdi	# tmp92,
	call	_cpp_extend_buff	#
.L210:
	.loc 2 1203 0
	movq	-8(%rbp), %rax	# pfile, tmp93
	movq	72(%rax), %rax	# pfile_5(D)->a_buff, D.9410
	movq	16(%rax), %rsi	# _22->cur, D.9411
	movq	-16(%rbp), %rax	# macro, tmp94
	movzwl	24(%rax), %eax	# macro_15(D)->paramc, D.9408
	leal	1(%rax), %ecx	#, D.9408
	movq	-16(%rbp), %rdx	# macro, tmp95
	movw	%cx, 24(%rdx)	# D.9408, macro_15(D)->paramc
	movzwl	%ax, %eax	# D.9408, D.9413
	salq	$3, %rax	#, D.9413
	leaq	(%rsi,%rax), %rdx	#, D.9415
	movq	-24(%rbp), %rax	# node, tmp96
	movq	%rax, (%rdx)	# tmp96, *_29
	.loc 2 1204 0
	movq	-16(%rbp), %rax	# macro, tmp97
	movzwl	24(%rax), %edx	# macro_15(D)->paramc, D.9408
	movq	-24(%rbp), %rax	# node, tmp98
	movw	%dx, 16(%rax)	# D.9408, node_2(D)->arg_index
	.loc 2 1205 0
	movl	$0, %eax	#, D.9407
.L209:
	.loc 2 1206 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	save_parameter, .-save_parameter
	.section	.rodata
	.align 8
.LC26:
	.string	"\"%s\" may not appear in macro parameter list"
	.align 8
.LC27:
	.string	"macro parameters must be comma-separated"
.LC28:
	.string	"parameter name missing"
	.align 8
.LC29:
	.string	"anonymous variadic macros were introduced in C99"
	.align 8
.LC30:
	.string	"ISO C does not permit named variadic macros"
	.align 8
.LC31:
	.string	"missing ')' in macro parameter list"
	.text
	.type	parse_params, @function
parse_params:
.LFB32:
	.loc 2 1213 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# macro, macro
	.loc 2 1214 0
	movl	$0, -12(%rbp)	#, prev_ident
.L228:
.LBB19:
	.loc 2 1218 0
	movq	-24(%rbp), %rax	# pfile, tmp72
	movq	%rax, %rdi	# tmp72,
	call	_cpp_lex_token	#
	movq	%rax, -8(%rbp)	# tmp73, token
	.loc 2 1220 0
	movq	-8(%rbp), %rax	# token, tmp74
	movzbl	6(%rax), %eax	# token_6->type, D.9418
	movzbl	%al, %eax	# D.9418, D.9417
	subl	$21, %eax	#, tmp75
	cmpl	$46, %eax	#, tmp75
	ja	.L212	#,
	movl	%eax, %eax	# tmp75, tmp76
	movq	.L214(,%rax,8), %rax	#, tmp77
	jmp	*%rax	# tmp77
	.section	.rodata
	.align 8
	.align 4
.L214:
	.quad	.L213
	.quad	.L212
	.quad	.L215
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L216
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L217
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L218
	.text
.L212:
	.loc 2 1223 0
	movq	-8(%rbp), %rdx	# token, tmp78
	movq	-24(%rbp), %rax	# pfile, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.9419
	movq	-24(%rbp), %rax	# pfile, tmp80
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp80,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 1225 0
	movl	$0, %eax	#, D.9417
	jmp	.L219	#
.L217:
	.loc 2 1228 0
	cmpl	$0, -12(%rbp)	#, prev_ident
	je	.L220	#,
	.loc 2 1230 0
	movq	-24(%rbp), %rax	# pfile, tmp81
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp81,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 1231 0
	movl	$0, %eax	#, D.9417
	jmp	.L219	#
.L220:
	.loc 2 1233 0
	movl	$1, -12(%rbp)	#, prev_ident
	.loc 2 1235 0
	movq	-8(%rbp), %rax	# token, tmp82
	movq	8(%rax), %rdx	# token_6->val.node, D.9420
	movq	-32(%rbp), %rcx	# macro, tmp83
	movq	-24(%rbp), %rax	# pfile, tmp84
	movq	%rcx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	save_parameter	#
	testl	%eax, %eax	# D.9417
	je	.L221	#,
	.loc 2 1236 0
	movl	$0, %eax	#, D.9417
	jmp	.L219	#
.L221:
	.loc 2 1237 0
	jmp	.L222	#
.L215:
	.loc 2 1240 0
	cmpl	$0, -12(%rbp)	#, prev_ident
	jne	.L223	#,
	.loc 2 1240 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# macro, tmp85
	movzwl	24(%rax), %eax	# macro_14(D)->paramc, D.9421
	testw	%ax, %ax	# D.9421
	jne	.L213	#,
.L223:
	.loc 2 1241 0 is_stmt 1
	movl	$1, %eax	#, D.9417
	jmp	.L219	#
.L213:
	.loc 2 1245 0
	cmpl	$0, -12(%rbp)	#, prev_ident
	jne	.L224	#,
	.loc 2 1247 0
	movq	-24(%rbp), %rax	# pfile, tmp86
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 1248 0
	movl	$0, %eax	#, D.9417
	jmp	.L219	#
.L224:
	.loc 2 1250 0
	movl	$0, -12(%rbp)	#, prev_ident
	.loc 2 1251 0
	jmp	.L222	#
.L216:
	.loc 2 1254 0
	movq	-32(%rbp), %rax	# macro, tmp87
	movzbl	26(%rax), %edx	# macro_14(D)->variadic, tmp90
	orl	$2, %edx	#, tmp91
	movb	%dl, 26(%rax)	# tmp91, macro_14(D)->variadic
	.loc 2 1255 0
	cmpl	$0, -12(%rbp)	#, prev_ident
	jne	.L225	#,
	.loc 2 1257 0
	movq	-24(%rbp), %rax	# pfile, tmp92
	movq	816(%rax), %rdx	# pfile_5(D)->spec_nodes.n__VA_ARGS__, D.9420
	movq	-32(%rbp), %rcx	# macro, tmp93
	movq	-24(%rbp), %rax	# pfile, tmp94
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	save_parameter	#
	.loc 2 1258 0
	movq	-24(%rbp), %rax	# pfile, tmp95
	movb	$1, 13(%rax)	#, pfile_5(D)->state.va_args_ok
	.loc 2 1259 0
	movq	-24(%rbp), %rax	# pfile, tmp96
	movzbl	769(%rax), %eax	# pfile_5(D)->opts.c99, D.9418
	testb	%al, %al	# D.9418
	jne	.L227	#,
	.loc 2 1259 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pfile, tmp97
	movzbl	770(%rax), %eax	# pfile_5(D)->opts.pedantic, D.9418
	testb	%al, %al	# D.9418
	je	.L227	#,
	.loc 2 1260 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp98
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
	jmp	.L227	#
.L225:
	.loc 2 1263 0
	movq	-24(%rbp), %rax	# pfile, tmp99
	movzbl	770(%rax), %eax	# pfile_5(D)->opts.pedantic, D.9418
	testb	%al, %al	# D.9418
	je	.L227	#,
	.loc 2 1264 0
	movq	-24(%rbp), %rax	# pfile, tmp100
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L227:
	.loc 2 1267 0
	movq	-24(%rbp), %rax	# pfile, tmp101
	movq	%rax, %rdi	# tmp101,
	call	_cpp_lex_token	#
	movq	%rax, -8(%rbp)	# tmp102, token
	.loc 2 1268 0
	movq	-8(%rbp), %rax	# token, tmp103
	movzbl	6(%rax), %eax	# token_25->type, D.9418
	cmpb	$23, %al	#, D.9418
	jne	.L218	#,
	.loc 2 1269 0
	movl	$1, %eax	#, D.9417
	jmp	.L219	#
.L218:
	.loc 2 1273 0
	movq	-24(%rbp), %rax	# pfile, tmp104
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 1274 0
	movl	$0, %eax	#, D.9417
	jmp	.L219	#
.L222:
.LBE19:
	.loc 2 1276 0
	jmp	.L228	#
.L219:
	.loc 2 1277 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	parse_params, .-parse_params
	.type	alloc_expansion_token, @function
alloc_expansion_token:
.LFB33:
	.loc 2 1284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# macro, macro
	.loc 2 1285 0
	movq	-8(%rbp), %rax	# pfile, tmp80
	movq	72(%rax), %rax	# pfile_1(D)->a_buff, D.9428
	movq	24(%rax), %rax	# _2->limit, D.9429
	movq	%rax, %rdx	# D.9429, D.9430
	movq	-8(%rbp), %rax	# pfile, tmp81
	movq	72(%rax), %rax	# pfile_1(D)->a_buff, D.9428
	movq	16(%rax), %rax	# _5->cur, D.9429
	subq	%rax, %rdx	# D.9430, D.9430
	movq	%rdx, %rax	# D.9430, D.9430
	movq	%rax, %rcx	# D.9430, D.9431
	movq	-16(%rbp), %rax	# macro, tmp82
	movl	20(%rax), %eax	# macro_10(D)->count, D.9432
	addl	$1, %eax	#, D.9432
	movl	%eax, %edx	# D.9432, D.9431
	movq	%rdx, %rax	# D.9431, tmp83
	addq	%rax, %rax	# tmp83
	addq	%rdx, %rax	# D.9431, tmp83
	salq	$3, %rax	#, tmp84
	cmpq	%rax, %rcx	# D.9431, D.9431
	jae	.L230	#,
	.loc 2 1286 0
	movq	-8(%rbp), %rax	# pfile, tmp85
	leaq	72(%rax), %rcx	#, D.9433
	movq	-8(%rbp), %rax	# pfile, tmp86
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.9433,
	movq	%rax, %rdi	# tmp86,
	call	_cpp_extend_buff	#
.L230:
	.loc 2 1288 0
	movq	-8(%rbp), %rax	# pfile, tmp87
	movq	72(%rax), %rax	# pfile_1(D)->a_buff, D.9428
	movq	16(%rax), %rsi	# _16->cur, D.9429
	movq	-16(%rbp), %rax	# macro, tmp88
	movl	20(%rax), %eax	# macro_10(D)->count, D.9432
	leal	1(%rax), %ecx	#, D.9432
	movq	-16(%rbp), %rdx	# macro, tmp89
	movl	%ecx, 20(%rdx)	# D.9432, macro_10(D)->count
	movl	%eax, %edx	# D.9432, D.9431
	movq	%rdx, %rax	# D.9431, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# D.9431, tmp90
	salq	$3, %rax	#, tmp91
	addq	%rsi, %rax	# D.9429, D.9434
	.loc 2 1289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	alloc_expansion_token, .-alloc_expansion_token
	.type	lex_expansion_token, @function
lex_expansion_token:
.LFB34:
	.loc 2 1297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# macro, macro
	.loc 2 1300 0
	movq	-32(%rbp), %rdx	# macro, tmp73
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	alloc_expansion_token	#
	movq	-24(%rbp), %rdx	# pfile, tmp75
	movq	%rax, 192(%rdx)	# D.9435, pfile_1(D)->cur_token
	.loc 2 1301 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movq	%rax, %rdi	# tmp76,
	call	_cpp_lex_direct	#
	movq	%rax, -8(%rbp)	# tmp77, token
	.loc 2 1304 0
	movq	-8(%rbp), %rax	# token, tmp78
	movzbl	6(%rax), %eax	# token_4->type, D.9436
	cmpb	$56, %al	#, D.9436
	jne	.L233	#,
	.loc 2 1304 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# token, tmp79
	movq	8(%rax), %rax	# token_4->val.node, D.9437
	movzwl	16(%rax), %eax	# _6->arg_index, D.9438
	testw	%ax, %ax	# D.9438
	je	.L233	#,
	.loc 2 1306 0 is_stmt 1
	movq	-8(%rbp), %rax	# token, tmp80
	movb	$65, 6(%rax)	#, token_4->type
	.loc 2 1307 0
	movq	-8(%rbp), %rax	# token, tmp81
	movq	8(%rax), %rax	# token_4->val.node, D.9437
	movzwl	16(%rax), %eax	# _8->arg_index, D.9438
	movzwl	%ax, %edx	# D.9438, D.9439
	movq	-8(%rbp), %rax	# token, tmp82
	movl	%edx, 8(%rax)	# D.9439, token_4->val.arg_no
	jmp	.L234	#
.L233:
	.loc 2 1309 0
	movq	-24(%rbp), %rax	# pfile, tmp83
	movzbl	761(%rax), %eax	# pfile_1(D)->opts.warn_traditional, D.9436
	testb	%al, %al	# D.9436
	je	.L234	#,
	.loc 2 1309 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# macro, tmp84
	movzwl	24(%rax), %eax	# macro_2(D)->paramc, D.9438
	testw	%ax, %ax	# D.9438
	je	.L234	#,
	.loc 2 1310 0 is_stmt 1
	movq	-8(%rbp), %rax	# token, tmp85
	movzbl	6(%rax), %eax	# token_4->type, D.9436
	cmpb	$61, %al	#, D.9436
	je	.L235	#,
	.loc 2 1310 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# token, tmp86
	movzbl	6(%rax), %eax	# token_4->type, D.9436
	cmpb	$58, %al	#, D.9436
	jne	.L234	#,
.L235:
	.loc 2 1311 0 is_stmt 1
	movq	-8(%rbp), %rax	# token, tmp87
	leaq	8(%rax), %rdx	#, D.9440
	movq	-32(%rbp), %rcx	# macro, tmp88
	movq	-24(%rbp), %rax	# pfile, tmp89
	movq	%rcx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	check_trad_stringification	#
.L234:
	.loc 2 1313 0
	movq	-8(%rbp), %rax	# token, D.9435
	.loc 2 1314 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	lex_expansion_token, .-lex_expansion_token
	.section	.rodata
	.align 8
.LC32:
	.string	"ISO C requires whitespace after the macro name"
	.align 8
.LC33:
	.string	"'#' is not followed by a macro parameter"
	.align 8
.LC34:
	.string	"'##' cannot appear at either end of a macro expansion"
.LC35:
	.string	"\"%s\" redefined"
	.align 8
.LC36:
	.string	"this is the location of the previous definition"
.LC37:
	.string	"__STDC_"
	.text
	.globl	_cpp_create_definition
	.type	_cpp_create_definition, @function
_cpp_create_definition:
.LFB35:
	.loc 2 1321 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# node, node
	.loc 2 1325 0
	movl	$1, -36(%rbp)	#, ok
	.loc 2 1327 0
	movq	-56(%rbp), %rax	# pfile, tmp168
	movl	$32, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	_cpp_aligned_alloc	#
	movq	%rax, -24(%rbp)	# tmp169, macro
	.loc 2 1328 0
	movq	-56(%rbp), %rax	# pfile, tmp170
	movl	68(%rax), %edx	# pfile_8(D)->directive_line, D.9441
	movq	-24(%rbp), %rax	# macro, tmp171
	movl	%edx, 16(%rax)	# D.9441, macro_9->line
	.loc 2 1329 0
	movq	-24(%rbp), %rax	# macro, tmp172
	movq	$0, (%rax)	#, macro_9->params
	.loc 2 1330 0
	movq	-24(%rbp), %rax	# macro, tmp173
	movw	$0, 24(%rax)	#, macro_9->paramc
	.loc 2 1331 0
	movq	-24(%rbp), %rax	# macro, tmp174
	movzbl	26(%rax), %edx	# macro_9->variadic, tmp177
	andl	$-3, %edx	#, tmp178
	movb	%dl, 26(%rax)	# tmp178, macro_9->variadic
	.loc 2 1332 0
	movq	-24(%rbp), %rax	# macro, tmp179
	movl	$0, 20(%rax)	#, macro_9->count
	.loc 2 1333 0
	movq	-24(%rbp), %rax	# macro, tmp180
	movzbl	26(%rax), %edx	# macro_9->fun_like, tmp183
	andl	$-2, %edx	#, tmp184
	movb	%dl, 26(%rax)	# tmp184, macro_9->fun_like
	.loc 2 1337 0
	movq	-56(%rbp), %rax	# pfile, tmp185
	movq	%rax, %rdi	# tmp185,
	call	_cpp_lex_token	#
	movq	%rax, -16(%rbp)	# tmp186, ctoken
	.loc 2 1339 0
	movq	-16(%rbp), %rax	# ctoken, tmp187
	movzbl	6(%rax), %eax	# ctoken_11->type, D.9442
	cmpb	$22, %al	#, D.9442
	jne	.L238	#,
	.loc 2 1339 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctoken, tmp188
	movzbl	7(%rax), %eax	# ctoken_11->flags, D.9442
	movzbl	%al, %eax	# D.9442, D.9443
	andl	$1, %eax	#, D.9443
	testl	%eax, %eax	# D.9443
	jne	.L238	#,
	.loc 2 1341 0 is_stmt 1
	movq	-24(%rbp), %rdx	# macro, tmp189
	movq	-56(%rbp), %rax	# pfile, tmp190
	movq	%rdx, %rsi	# tmp189,
	movq	%rax, %rdi	# tmp190,
	call	parse_params	#
	movl	%eax, -36(%rbp)	# D.9443, ok
	.loc 2 1342 0
	movq	-56(%rbp), %rax	# pfile, tmp191
	movq	72(%rax), %rax	# pfile_8(D)->a_buff, D.9444
	movq	16(%rax), %rdx	# _18->cur, D.9445
	movq	-24(%rbp), %rax	# macro, tmp192
	movq	%rdx, (%rax)	# D.9445, macro_9->params
	.loc 2 1343 0
	cmpl	$0, -36(%rbp)	#, ok
	jne	.L239	#,
	.loc 2 1344 0
	jmp	.L240	#
.L239:
	.loc 2 1347 0
	movq	-56(%rbp), %rax	# pfile, tmp193
	movq	72(%rax), %rax	# pfile_8(D)->a_buff, D.9444
	movq	-24(%rbp), %rdx	# macro, tmp194
	movq	(%rdx), %rcx	# macro_9->params, D.9446
	movq	-24(%rbp), %rdx	# macro, tmp195
	movzwl	24(%rdx), %edx	# macro_9->paramc, D.9447
	movzwl	%dx, %edx	# D.9447, D.9448
	salq	$3, %rdx	#, D.9448
	addq	%rcx, %rdx	# D.9446, D.9445
	movq	%rdx, 16(%rax)	# D.9445, _20->cur
	.loc 2 1348 0
	movq	-24(%rbp), %rax	# macro, tmp196
	movzbl	26(%rax), %edx	# macro_9->fun_like, tmp199
	orl	$1, %edx	#, tmp200
	movb	%dl, 26(%rax)	# tmp200, macro_9->fun_like
	jmp	.L241	#
.L238:
	.loc 2 1350 0
	movq	-16(%rbp), %rax	# ctoken, tmp201
	movzbl	6(%rax), %eax	# ctoken_11->type, D.9442
	cmpb	$67, %al	#, D.9442
	je	.L241	#,
	.loc 2 1350 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctoken, tmp202
	movzbl	7(%rax), %eax	# ctoken_11->flags, D.9442
	movzbl	%al, %eax	# D.9442, D.9443
	andl	$1, %eax	#, D.9443
	testl	%eax, %eax	# D.9443
	jne	.L241	#,
	.loc 2 1351 0 is_stmt 1
	movq	-56(%rbp), %rax	# pfile, tmp203
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp203,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L241:
	.loc 2 1353 0
	movq	-56(%rbp), %rax	# pfile, tmp204
	movq	192(%rax), %rax	# pfile_8(D)->cur_token, tmp205
	movq	%rax, -8(%rbp)	# tmp205, saved_cur_token
	.loc 2 1355 0
	movq	-24(%rbp), %rax	# macro, tmp206
	movzbl	26(%rax), %eax	# *macro_9, D.9442
	andl	$1, %eax	#, D.9442
	testb	%al, %al	# D.9442
	je	.L242	#,
	.loc 2 1356 0
	movq	-24(%rbp), %rdx	# macro, tmp207
	movq	-56(%rbp), %rax	# pfile, tmp208
	movq	%rdx, %rsi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	lex_expansion_token	#
	movq	%rax, -32(%rbp)	# tmp209, token
	jmp	.L243	#
.L242:
	.loc 2 1359 0
	movq	-24(%rbp), %rdx	# macro, tmp210
	movq	-56(%rbp), %rax	# pfile, tmp211
	movq	%rdx, %rsi	# tmp210,
	movq	%rax, %rdi	# tmp211,
	call	alloc_expansion_token	#
	movq	%rax, -32(%rbp)	# tmp212, token
	.loc 2 1360 0
	movq	-32(%rbp), %rax	# token, tmp213
	movq	-16(%rbp), %rdx	# ctoken, tmp214
	movq	(%rdx), %rcx	# *ctoken_11, tmp215
	movq	%rcx, (%rax)	# tmp215, *token_34
	movq	8(%rdx), %rcx	# *ctoken_11, tmp216
	movq	%rcx, 8(%rax)	# tmp216, *token_34
	movq	16(%rdx), %rdx	# *ctoken_11, tmp217
	movq	%rdx, 16(%rax)	# tmp217, *token_34
.L243:
	.loc 2 1367 0
	movq	-24(%rbp), %rax	# macro, tmp218
	movl	20(%rax), %eax	# macro_9->count, D.9441
	cmpl	$1, %eax	#, D.9441
	jbe	.L244	#,
	.loc 2 1367 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# token, tmp219
	subq	$24, %rax	#, D.9449
	movzbl	6(%rax), %eax	# _36->type, D.9442
	cmpb	$40, %al	#, D.9442
	jne	.L244	#,
	movq	-24(%rbp), %rax	# macro, tmp220
	movzbl	26(%rax), %eax	# *macro_9, D.9442
	andl	$1, %eax	#, D.9442
	testb	%al, %al	# D.9442
	je	.L244	#,
	.loc 2 1369 0 is_stmt 1
	movq	-32(%rbp), %rax	# token, tmp221
	movzbl	6(%rax), %eax	# token_1->type, D.9442
	cmpb	$65, %al	#, D.9442
	jne	.L245	#,
	.loc 2 1371 0
	movq	-32(%rbp), %rax	# token, tmp222
	movzbl	7(%rax), %eax	# token_1->flags, D.9442
	andl	$-2, %eax	#, D.9442
	movl	%eax, %edx	# D.9442, D.9442
	movq	-32(%rbp), %rax	# token, tmp223
	movb	%dl, 7(%rax)	# D.9442, token_1->flags
	.loc 2 1372 0
	movq	-32(%rbp), %rax	# token, tmp224
	movzbl	7(%rax), %eax	# token_1->flags, D.9442
	orl	$4, %eax	#, D.9442
	movl	%eax, %edx	# D.9442, D.9442
	movq	-32(%rbp), %rax	# token, tmp225
	movb	%dl, 7(%rax)	# D.9442, token_1->flags
	.loc 2 1373 0
	movq	-32(%rbp), %rax	# token, tmp226
	movzbl	7(%rax), %eax	# token_1->flags, D.9442
	movq	-32(%rbp), %rdx	# token, tmp227
	subq	$24, %rdx	#, D.9449
	movzbl	7(%rdx), %edx	# _47->flags, D.9442
	andl	$1, %edx	#, D.9450
	orl	%edx, %eax	# D.9450, D.9450
	movl	%eax, %edx	# D.9450, D.9442
	movq	-32(%rbp), %rax	# token, tmp228
	movb	%dl, 7(%rax)	# D.9442, token_1->flags
	.loc 2 1374 0
	movq	-32(%rbp), %rax	# token, tmp229
	leaq	-24(%rax), %rdx	#, D.9449
	movq	-32(%rbp), %rax	# token, tmp230
	movq	(%rax), %rcx	# *token_1, tmp231
	movq	%rcx, (%rdx)	# tmp231, *_53
	movq	8(%rax), %rcx	# *token_1, tmp232
	movq	%rcx, 8(%rdx)	# tmp232, *_53
	movq	16(%rax), %rax	# *token_1, tmp233
	movq	%rax, 16(%rdx)	# tmp233, *_53
	.loc 2 1375 0
	movq	-24(%rbp), %rax	# macro, tmp234
	movl	20(%rax), %eax	# macro_9->count, D.9441
	leal	-1(%rax), %edx	#, D.9441
	movq	-24(%rbp), %rax	# macro, tmp235
	movl	%edx, 20(%rax)	# D.9441, macro_9->count
	jmp	.L244	#
.L245:
	.loc 2 1378 0
	movq	-56(%rbp), %rax	# pfile, tmp236
	movl	736(%rax), %eax	# pfile_8(D)->opts.lang, D.9451
	cmpl	$9, %eax	#, D.9451
	je	.L244	#,
	.loc 2 1380 0
	movl	$0, -36(%rbp)	#, ok
	.loc 2 1381 0
	movq	-56(%rbp), %rax	# pfile, tmp237
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp237,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 1382 0
	jmp	.L246	#
.L244:
	.loc 2 1386 0
	movq	-32(%rbp), %rax	# token, tmp238
	movzbl	6(%rax), %eax	# token_1->type, D.9442
	cmpb	$67, %al	#, D.9442
	jne	.L247	#,
	.loc 2 1387 0
	nop
	.loc 2 1411 0
	movq	-56(%rbp), %rax	# pfile, tmp254
	movq	72(%rax), %rax	# pfile_8(D)->a_buff, D.9444
	movq	16(%rax), %rdx	# _59->cur, D.9445
	movq	-24(%rbp), %rax	# macro, tmp255
	movq	%rdx, 8(%rax)	# D.9445, macro_9->expansion
	.loc 2 1414 0
	movq	-24(%rbp), %rax	# macro, tmp256
	movl	20(%rax), %eax	# macro_9->count, D.9441
	leal	-1(%rax), %edx	#, D.9441
	movq	-24(%rbp), %rax	# macro, tmp257
	movl	%edx, 20(%rax)	# D.9441, macro_9->count
	.loc 2 1417 0
	movq	-24(%rbp), %rax	# macro, tmp258
	movl	20(%rax), %eax	# macro_9->count, D.9441
	testl	%eax, %eax	# D.9441
	je	.L253	#,
	jmp	.L260	#
.L247:
	.loc 2 1390 0
	movq	-32(%rbp), %rax	# token, tmp239
	movzbl	6(%rax), %eax	# token_1->type, D.9442
	cmpb	$41, %al	#, D.9442
	jne	.L249	#,
	.loc 2 1394 0
	movq	-24(%rbp), %rax	# macro, tmp240
	movl	20(%rax), %eax	# macro_9->count, D.9441
	leal	-1(%rax), %edx	#, D.9441
	movq	-24(%rbp), %rax	# macro, tmp241
	movl	%edx, 20(%rax)	# D.9441, macro_9->count
	movq	-24(%rbp), %rax	# macro, tmp242
	movl	20(%rax), %eax	# macro_9->count, D.9441
	testl	%eax, %eax	# D.9441
	je	.L250	#,
	.loc 2 1395 0
	movq	-24(%rbp), %rdx	# macro, tmp243
	movq	-56(%rbp), %rax	# pfile, tmp244
	movq	%rdx, %rsi	# tmp243,
	movq	%rax, %rdi	# tmp244,
	call	lex_expansion_token	#
	movq	%rax, -32(%rbp)	# tmp245, token
.L250:
	.loc 2 1397 0
	movq	-24(%rbp), %rax	# macro, tmp246
	movl	20(%rax), %eax	# macro_9->count, D.9441
	testl	%eax, %eax	# D.9441
	je	.L251	#,
	.loc 2 1397 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# token, tmp247
	movzbl	6(%rax), %eax	# token_2->type, D.9442
	cmpb	$67, %al	#, D.9442
	jne	.L252	#,
.L251:
	.loc 2 1399 0 is_stmt 1
	movl	$0, -36(%rbp)	#, ok
	.loc 2 1400 0
	movq	-56(%rbp), %rax	# pfile, tmp248
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp248,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 2 1402 0
	jmp	.L246	#
.L252:
	.loc 2 1405 0
	movq	-32(%rbp), %rax	# token, tmp249
	leaq	-24(%rax), %rdx	#, D.9449
	movq	-32(%rbp), %rax	# token, tmp250
	subq	$24, %rax	#, D.9449
	movzbl	7(%rax), %eax	# _111->flags, D.9442
	orl	$8, %eax	#, D.9442
	movb	%al, 7(%rdx)	# D.9442, _110->flags
.L249:
	.loc 2 1408 0
	movq	-24(%rbp), %rdx	# macro, tmp251
	movq	-56(%rbp), %rax	# pfile, tmp252
	movq	%rdx, %rsi	# tmp251,
	movq	%rax, %rdi	# tmp252,
	call	lex_expansion_token	#
	movq	%rax, -32(%rbp)	# tmp253, token
	.loc 2 1409 0
	jmp	.L243	#
.L260:
	.loc 2 1418 0
	movq	-24(%rbp), %rax	# macro, tmp259
	movq	8(%rax), %rax	# macro_9->expansion, D.9449
	movq	-24(%rbp), %rdx	# macro, tmp260
	movq	8(%rdx), %rdx	# macro_9->expansion, D.9449
	movzbl	7(%rdx), %edx	# _65->flags, D.9442
	andl	$-2, %edx	#, D.9442
	movb	%dl, 7(%rax)	# D.9442, _64->flags
.L253:
	.loc 2 1421 0
	movq	-56(%rbp), %rax	# pfile, tmp261
	movq	72(%rax), %rcx	# pfile_8(D)->a_buff, D.9444
	movq	-24(%rbp), %rax	# macro, tmp262
	movq	8(%rax), %rsi	# macro_9->expansion, D.9449
	movq	-24(%rbp), %rax	# macro, tmp263
	movl	20(%rax), %eax	# macro_9->count, D.9441
	movl	%eax, %edx	# D.9441, D.9448
	movq	%rdx, %rax	# D.9448, tmp264
	addq	%rax, %rax	# tmp264
	addq	%rdx, %rax	# D.9448, tmp264
	salq	$3, %rax	#, tmp265
	addq	%rsi, %rax	# D.9449, D.9445
	movq	%rax, 16(%rcx)	# D.9445, _68->cur
	.loc 2 1424 0
	movq	-24(%rbp), %rax	# macro, tmp266
	movl	20(%rax), %eax	# macro_9->count, D.9441
	cmpl	$1, %eax	#, D.9441
	jne	.L254	#,
	.loc 2 1424 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# macro, tmp267
	movzbl	26(%rax), %eax	# *macro_9, D.9442
	andl	$1, %eax	#, D.9442
	testb	%al, %al	# D.9442
	jne	.L254	#,
	.loc 2 1425 0 is_stmt 1
	movq	-24(%rbp), %rax	# macro, tmp268
	movq	8(%rax), %rax	# macro_9->expansion, D.9449
	movzbl	6(%rax), %eax	# _77->type, D.9442
	cmpb	$56, %al	#, D.9442
	jne	.L254	#,
	.loc 2 1426 0
	movq	-24(%rbp), %rax	# macro, tmp269
	movq	8(%rax), %rax	# macro_9->expansion, D.9449
	movq	8(%rax), %rax	# _79->val.node, D.9452
	cmpq	-64(%rbp), %rax	# node, D.9452
	jne	.L254	#,
	.loc 2 1427 0
	movq	-64(%rbp), %rax	# node, tmp270
	movzbl	21(%rax), %eax	# node_81(D)->flags, D.9442
	orl	$32, %eax	#, D.9442
	movl	%eax, %edx	# D.9442, D.9442
	movq	-64(%rbp), %rax	# node, tmp271
	movb	%dl, 21(%rax)	# D.9442, node_81(D)->flags
.L254:
	.loc 2 1430 0
	movq	-56(%rbp), %rax	# pfile, tmp272
	movq	56(%rax), %rax	# pfile_8(D)->map, D.9453
	movzbl	21(%rax), %eax	# _84->sysp, D.9442
	testb	%al, %al	# D.9442
	setne	%dl	#, D.9454
	movq	-24(%rbp), %rax	# macro, tmp273
	andl	$1, %edx	#, tmp275
	leal	0(,%rdx,4), %ecx	#, tmp276
	movzbl	26(%rax), %edx	# macro_9->syshdr, tmp277
	andl	$-5, %edx	#, tmp278
	orl	%ecx, %edx	# tmp276, tmp279
	movb	%dl, 26(%rax)	# tmp279, macro_9->syshdr
	.loc 2 1432 0
	movq	-64(%rbp), %rax	# node, tmp280
	movzbl	20(%rax), %eax	# node_81(D)->type, D.9442
	testb	%al, %al	# D.9442
	je	.L255	#,
	.loc 2 1434 0
	movq	-24(%rbp), %rdx	# macro, tmp281
	movq	-64(%rbp), %rax	# node, tmp282
	movq	%rdx, %rsi	# tmp281,
	movq	%rax, %rdi	# tmp282,
	call	warn_of_redefinition	#
	testl	%eax, %eax	# D.9443
	je	.L256	#,
	.loc 2 1436 0
	movq	-64(%rbp), %rax	# node, tmp283
	movq	8(%rax), %rdx	# node_81(D)->ident.str, D.9455
	movq	-56(%rbp), %rax	# pfile, tmp284
	movl	68(%rax), %eax	# pfile_8(D)->directive_line, D.9441
	movl	%eax, %esi	# D.9441, D.9443
	movq	-56(%rbp), %rax	# pfile, tmp285
	movq	%rdx, %r8	# D.9455,
	movl	$.LC35, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp285,
	movl	$0, %eax	#,
	call	cpp_pedwarn_with_line	#
	.loc 2 1439 0
	movq	-64(%rbp), %rax	# node, tmp286
	movzbl	20(%rax), %eax	# node_81(D)->type, D.9442
	cmpb	$1, %al	#, D.9442
	jne	.L256	#,
	.loc 2 1439 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# node, tmp287
	movzbl	21(%rax), %eax	# node_81(D)->flags, D.9442
	movzbl	%al, %eax	# D.9442, D.9443
	andl	$4, %eax	#, D.9443
	testl	%eax, %eax	# D.9443
	jne	.L256	#,
	.loc 2 1440 0 is_stmt 1
	movq	-64(%rbp), %rax	# node, tmp288
	movq	24(%rax), %rax	# node_81(D)->value.macro, D.9456
	movl	16(%rax), %eax	# _96->line, D.9441
	movl	%eax, %esi	# D.9441, D.9443
	movq	-56(%rbp), %rax	# pfile, tmp289
	movl	$.LC36, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp289,
	movl	$0, %eax	#,
	call	cpp_pedwarn_with_line	#
.L256:
	.loc 2 1443 0
	movq	-64(%rbp), %rax	# node, tmp290
	movq	%rax, %rdi	# tmp290,
	call	_cpp_free_definition	#
.L255:
	.loc 2 1447 0
	movq	-64(%rbp), %rax	# node, tmp291
	movb	$1, 20(%rax)	#, node_81(D)->type
	.loc 2 1448 0
	movq	-64(%rbp), %rax	# node, tmp292
	movq	-24(%rbp), %rdx	# macro, tmp293
	movq	%rdx, 24(%rax)	# tmp293, node_81(D)->value.macro
	.loc 2 1449 0
	movq	-64(%rbp), %rax	# node, tmp294
	movq	8(%rax), %rax	# node_81(D)->ident.str, D.9455
	movl	$7, %edx	#,
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# D.9455,
	call	ustrncmp	#
	testl	%eax, %eax	# D.9443
	jne	.L246	#,
	.loc 2 1450 0
	movq	-64(%rbp), %rax	# node, tmp295
	movzbl	21(%rax), %eax	# node_81(D)->flags, D.9442
	orl	$16, %eax	#, D.9442
	movl	%eax, %edx	# D.9442, D.9442
	movq	-64(%rbp), %rax	# node, tmp296
	movb	%dl, 21(%rax)	# D.9442, node_81(D)->flags
.L246:
	.loc 2 1455 0
	movq	-8(%rbp), %rax	# saved_cur_token, tmp297
	leaq	-24(%rax), %rdx	#, D.9449
	movq	-56(%rbp), %rax	# pfile, tmp298
	movq	192(%rax), %rax	# pfile_8(D)->cur_token, D.9449
	subq	$24, %rax	#, D.9449
	movzbl	6(%rax), %eax	# _118->type, D.9442
	movb	%al, 6(%rdx)	# D.9442, _116->type
	.loc 2 1456 0
	movq	-56(%rbp), %rax	# pfile, tmp299
	movq	-8(%rbp), %rdx	# saved_cur_token, tmp300
	movq	%rdx, 192(%rax)	# tmp300, pfile_8(D)->cur_token
.L240:
	.loc 2 1461 0
	movq	-56(%rbp), %rax	# pfile, tmp301
	movb	$0, 13(%rax)	#, pfile_8(D)->state.va_args_ok
	.loc 2 1464 0
	movq	-24(%rbp), %rax	# macro, tmp302
	movzwl	24(%rax), %eax	# macro_9->paramc, D.9447
	movzwl	%ax, %eax	# D.9447, tmp303
	movl	%eax, -40(%rbp)	# tmp303, i
	jmp	.L257	#
.L258:
	.loc 2 1465 0
	movq	-24(%rbp), %rax	# macro, tmp304
	movq	(%rax), %rax	# macro_9->params, D.9446
	movl	-40(%rbp), %edx	# i, D.9448
	salq	$3, %rdx	#, D.9448
	addq	%rdx, %rax	# D.9448, D.9446
	movq	(%rax), %rax	# *_127, D.9452
	movw	$0, 16(%rax)	#, _128->arg_index
.L257:
	.loc 2 1464 0 discriminator 1
	movl	-40(%rbp), %eax	# i, i.32
	leal	-1(%rax), %edx	#, tmp305
	movl	%edx, -40(%rbp)	# tmp305, i
	testl	%eax, %eax	# i.32
	jne	.L258	#,
	.loc 2 1467 0
	movl	-36(%rbp), %eax	# ok, D.9443
	.loc 2 1468 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	_cpp_create_definition, .-_cpp_create_definition
	.section	.rodata
	.align 8
.LC38:
	.string	"macro argument \"%s\" would be stringified with -traditional"
	.text
	.type	check_trad_stringification, @function
check_trad_stringification:
.LFB36:
	.loc 2 1477 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# macro, macro
	movq	%rdx, -72(%rbp)	# string, string
	.loc 2 1479 0
	movq	-72(%rbp), %rax	# string, tmp90
	movq	8(%rax), %rdx	# string_5(D)->text, D.9463
	movq	-72(%rbp), %rax	# string, tmp91
	movl	(%rax), %eax	# string_5(D)->len, D.9464
	movl	%eax, %eax	# D.9464, D.9465
	addq	%rdx, %rax	# D.9463, tmp92
	movq	%rax, -16(%rbp)	# tmp92, limit
	.loc 2 1482 0
	movq	-72(%rbp), %rax	# string, tmp93
	movq	8(%rax), %rax	# string_5(D)->text, tmp94
	movq	%rax, -32(%rbp)	# tmp94, p
	jmp	.L262	#
.L273:
	.loc 2 1485 0
	jmp	.L263	#
.L265:
	.loc 2 1486 0
	addq	$1, -32(%rbp)	#, p
.L263:
	.loc 2 1485 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp95
	cmpq	-16(%rbp), %rax	# limit, tmp95
	jae	.L264	#,
	.loc 2 1485 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# p, tmp96
	movzbl	(%rax), %eax	# *p_2, D.9466
	movzbl	%al, %eax	# D.9466, D.9467
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9468
	movzwl	%ax, %eax	# D.9468, D.9467
	andl	$512, %eax	#, D.9467
	testl	%eax, %eax	# D.9467
	jne	.L264	#,
	.loc 2 1485 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp98
	movzbl	(%rax), %eax	# *p_2, D.9466
	cmpb	$36, %al	#, D.9466
	jne	.L265	#,
	movq	-56(%rbp), %rax	# pfile, tmp99
	movzbl	767(%rax), %eax	# pfile_17(D)->opts.dollars_in_ident, D.9466
	testb	%al, %al	# D.9466
	je	.L265	#,
.L264:
	.loc 2 1489 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp100
	movq	%rax, -24(%rbp)	# tmp100, q
	.loc 2 1490 0
	jmp	.L266	#
.L268:
	.loc 2 1491 0
	addq	$1, -24(%rbp)	#, q
.L266:
	.loc 2 1490 0 discriminator 1
	movq	-24(%rbp), %rax	# q, tmp101
	cmpq	-16(%rbp), %rax	# limit, tmp101
	jae	.L267	#,
	.loc 2 1490 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# q, tmp102
	movzbl	(%rax), %eax	# *q_4, D.9466
	movzbl	%al, %eax	# D.9466, D.9467
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.9468
	movzwl	%ax, %eax	# D.9468, D.9467
	andl	$516, %eax	#, D.9467
	testl	%eax, %eax	# D.9467
	jne	.L268	#,
	.loc 2 1490 0 discriminator 1
	movq	-24(%rbp), %rax	# q, tmp104
	movzbl	(%rax), %eax	# *q_4, D.9466
	cmpb	$36, %al	#, D.9466
	jne	.L267	#,
	movq	-56(%rbp), %rax	# pfile, tmp105
	movzbl	767(%rax), %eax	# pfile_17(D)->opts.dollars_in_ident, D.9466
	testb	%al, %al	# D.9466
	jne	.L268	#,
.L267:
	.loc 2 1493 0 is_stmt 1
	movq	-24(%rbp), %rdx	# q, q.33
	movq	-32(%rbp), %rax	# p, p.34
	subq	%rax, %rdx	# p.34, D.9469
	movq	%rdx, %rax	# D.9469, D.9469
	movl	%eax, -36(%rbp)	# D.9469, len
	.loc 2 1497 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L269	#
.L272:
.LBB20:
	.loc 2 1499 0
	movq	-64(%rbp), %rax	# macro, tmp106
	movq	(%rax), %rax	# macro_34(D)->params, D.9470
	movl	-40(%rbp), %edx	# i, D.9471
	salq	$3, %rdx	#, D.9471
	addq	%rdx, %rax	# D.9471, D.9470
	movq	(%rax), %rax	# *_40, tmp107
	movq	%rax, -8(%rbp)	# tmp107, node
	.loc 2 1501 0
	movq	-8(%rbp), %rax	# node, tmp108
	movl	(%rax), %eax	# node_41->ident.len, D.9464
	cmpl	-36(%rbp), %eax	# len, D.9464
	jne	.L270	#,
	.loc 2 1502 0
	movl	-36(%rbp), %edx	# len, D.9471
	movq	-8(%rbp), %rax	# node, tmp109
	movq	8(%rax), %rcx	# node_41->ident.str, D.9463
	movq	-32(%rbp), %rax	# p, tmp110
	movq	%rcx, %rsi	# D.9463,
	movq	%rax, %rdi	# tmp110,
	call	memcmp	#
	testl	%eax, %eax	# D.9467
	jne	.L270	#,
	.loc 2 1504 0
	movq	-8(%rbp), %rax	# node, tmp111
	movq	8(%rax), %rdx	# node_41->ident.str, D.9463
	movq	-56(%rbp), %rax	# pfile, tmp112
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 2 1507 0
	jmp	.L271	#
.L270:
.LBE20:
	.loc 2 1497 0
	addl	$1, -40(%rbp)	#, i
.L269:
	.loc 2 1497 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# macro, tmp113
	movzwl	24(%rax), %eax	# macro_34(D)->paramc, D.9468
	movzwl	%ax, %eax	# D.9468, D.9464
	cmpl	-40(%rbp), %eax	# i, D.9464
	ja	.L272	#,
.L271:
	.loc 2 1482 0 is_stmt 1
	movq	-24(%rbp), %rax	# q, tmp114
	movq	%rax, -32(%rbp)	# tmp114, p
.L262:
	.loc 2 1482 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp115
	cmpq	-16(%rbp), %rax	# limit, tmp115
	jb	.L273	#,
	.loc 2 1511 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	check_trad_stringification, .-check_trad_stringification
	.section	.rodata
	.align 8
.LC39:
	.string	"invalid hash type %d in cpp_macro_definition"
	.text
	.globl	cpp_macro_definition
	.type	cpp_macro_definition, @function
cpp_macro_definition:
.LFB37:
	.loc 2 1522 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# node, node
	.loc 2 1524 0
	movq	-64(%rbp), %rax	# node, tmp171
	movq	24(%rax), %rax	# node_22(D)->value.macro, tmp172
	movq	%rax, -32(%rbp)	# tmp172, macro
	.loc 2 1527 0
	movq	-64(%rbp), %rax	# node, tmp173
	movzbl	20(%rax), %eax	# node_22(D)->type, D.9474
	cmpb	$1, %al	#, D.9474
	jne	.L275	#,
	.loc 2 1527 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# node, tmp174
	movzbl	21(%rax), %eax	# node_22(D)->flags, D.9474
	movzbl	%al, %eax	# D.9474, D.9475
	andl	$4, %eax	#, D.9475
	testl	%eax, %eax	# D.9475
	je	.L276	#,
.L275:
	.loc 2 1529 0 is_stmt 1
	movq	-64(%rbp), %rax	# node, tmp175
	movzbl	20(%rax), %eax	# node_22(D)->type, D.9474
	movzbl	%al, %edx	# D.9474, D.9475
	movq	-56(%rbp), %rax	# pfile, tmp176
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp176,
	movl	$0, %eax	#,
	call	cpp_ice	#
	.loc 2 1530 0
	movl	$0, %eax	#, D.9473
	jmp	.L277	#
.L276:
	.loc 2 1534 0
	movq	-64(%rbp), %rax	# node, tmp177
	movl	(%rax), %eax	# node_22(D)->ident.len, D.9476
	addl	$2, %eax	#, tmp178
	movl	%eax, -44(%rbp)	# tmp178, len
	.loc 2 1535 0
	movq	-32(%rbp), %rax	# macro, tmp179
	movzbl	26(%rax), %eax	# *macro_23, D.9474
	andl	$1, %eax	#, D.9474
	testb	%al, %al	# D.9474
	je	.L278	#,
	.loc 2 1537 0
	addl	$4, -44(%rbp)	#, len
	.loc 2 1539 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L279	#
.L280:
	.loc 2 1540 0 discriminator 2
	movq	-32(%rbp), %rax	# macro, tmp180
	movq	(%rax), %rax	# macro_23->params, D.9478
	movl	-48(%rbp), %edx	# i, D.9479
	salq	$3, %rdx	#, D.9479
	addq	%rdx, %rax	# D.9479, D.9478
	movq	(%rax), %rax	# *_39, D.9480
	movl	(%rax), %edx	# _40->ident.len, D.9476
	movl	-44(%rbp), %eax	# len, tmp181
	addl	%edx, %eax	# D.9476, D.9476
	addl	$1, %eax	#, tmp182
	movl	%eax, -44(%rbp)	# tmp182, len
	.loc 2 1539 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L279:
	.loc 2 1539 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# macro, tmp183
	movzwl	24(%rax), %eax	# macro_23->paramc, D.9477
	movzwl	%ax, %eax	# D.9477, D.9476
	cmpl	-48(%rbp), %eax	# i, D.9476
	ja	.L280	#,
.L278:
	.loc 2 1543 0 is_stmt 1
	movl	$0, -48(%rbp)	#, i
	jmp	.L281	#
.L286:
.LBB21:
	.loc 2 1545 0
	movq	-32(%rbp), %rax	# macro, tmp184
	movq	8(%rax), %rcx	# macro_23->expansion, D.9481
	movl	-48(%rbp), %edx	# i, D.9479
	movq	%rdx, %rax	# D.9479, tmp185
	addq	%rax, %rax	# tmp185
	addq	%rdx, %rax	# D.9479, tmp185
	salq	$3, %rax	#, tmp186
	addq	%rcx, %rax	# D.9481, tmp187
	movq	%rax, -24(%rbp)	# tmp187, token
	.loc 2 1547 0
	movq	-24(%rbp), %rax	# token, tmp188
	movzbl	6(%rax), %eax	# token_50->type, D.9474
	cmpb	$65, %al	#, D.9474
	jne	.L282	#,
	.loc 2 1548 0
	movq	-32(%rbp), %rax	# macro, tmp189
	movq	(%rax), %rdx	# macro_23->params, D.9478
	movq	-24(%rbp), %rax	# token, tmp190
	movl	8(%rax), %eax	# token_50->val.arg_no, D.9476
	subl	$1, %eax	#, D.9476
	movl	%eax, %eax	# D.9476, D.9479
	salq	$3, %rax	#, D.9479
	addq	%rdx, %rax	# D.9478, D.9478
	movq	(%rax), %rax	# *_57, D.9480
	movl	(%rax), %eax	# _58->ident.len, D.9476
	addl	%eax, -44(%rbp)	# D.9476, len
	jmp	.L283	#
.L282:
	.loc 2 1550 0
	movq	-24(%rbp), %rax	# token, tmp191
	movq	%rax, %rdi	# tmp191,
	call	cpp_token_len	#
	addl	%eax, -44(%rbp)	# D.9476, len
.L283:
	.loc 2 1551 0
	movq	-24(%rbp), %rax	# token, tmp192
	movzbl	7(%rax), %eax	# token_50->flags, D.9474
	movzbl	%al, %eax	# D.9474, D.9475
	andl	$4, %eax	#, D.9475
	testl	%eax, %eax	# D.9475
	je	.L284	#,
	.loc 2 1552 0
	addl	$1, -44(%rbp)	#, len
.L284:
	.loc 2 1553 0
	movq	-24(%rbp), %rax	# token, tmp193
	movzbl	7(%rax), %eax	# token_50->flags, D.9474
	movzbl	%al, %eax	# D.9474, D.9475
	andl	$8, %eax	#, D.9475
	testl	%eax, %eax	# D.9475
	je	.L285	#,
	.loc 2 1554 0
	addl	$3, -44(%rbp)	#, len
.L285:
.LBE21:
	.loc 2 1543 0
	addl	$1, -48(%rbp)	#, i
.L281:
	.loc 2 1543 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# macro, tmp194
	movl	20(%rax), %eax	# macro_23->count, D.9476
	cmpl	-48(%rbp), %eax	# i, D.9476
	ja	.L286	#,
	.loc 2 1557 0 is_stmt 1
	movq	-56(%rbp), %rax	# pfile, tmp195
	movl	272(%rax), %eax	# pfile_72(D)->macro_buffer_len, D.9476
	cmpl	-44(%rbp), %eax	# len, D.9476
	jae	.L287	#,
	.loc 2 1559 0
	movl	-44(%rbp), %edx	# len, D.9479
	movq	-56(%rbp), %rax	# pfile, tmp196
	movq	264(%rax), %rax	# pfile_72(D)->macro_buffer, D.9482
	movq	%rdx, %rsi	# D.9479,
	movq	%rax, %rdi	# D.9482,
	call	xrealloc	#
	movq	-56(%rbp), %rdx	# pfile, tmp197
	movq	%rax, 264(%rdx)	# D.9483, pfile_72(D)->macro_buffer
	.loc 2 1560 0
	movq	-56(%rbp), %rax	# pfile, tmp198
	movl	-44(%rbp), %edx	# len, tmp199
	movl	%edx, 272(%rax)	# tmp199, pfile_72(D)->macro_buffer_len
.L287:
	.loc 2 1564 0
	movq	-56(%rbp), %rax	# pfile, tmp200
	movq	264(%rax), %rax	# pfile_72(D)->macro_buffer, tmp201
	movq	%rax, -40(%rbp)	# tmp201, buffer
	.loc 2 1565 0
	movq	-64(%rbp), %rax	# node, tmp202
	movl	(%rax), %eax	# node_22(D)->ident.len, D.9476
	movl	%eax, %edx	# D.9476, D.9479
	movq	-64(%rbp), %rax	# node, tmp203
	movq	8(%rax), %rcx	# node_22(D)->ident.str, D.9473
	movq	-40(%rbp), %rax	# buffer, tmp204
	movq	%rcx, %rsi	# D.9473,
	movq	%rax, %rdi	# tmp204,
	call	memcpy	#
	.loc 2 1566 0
	movq	-64(%rbp), %rax	# node, tmp205
	movl	(%rax), %eax	# node_22(D)->ident.len, D.9476
	movl	%eax, %eax	# D.9476, D.9484
	addq	%rax, -40(%rbp)	# D.9484, buffer
	.loc 2 1569 0
	movq	-32(%rbp), %rax	# macro, tmp206
	movzbl	26(%rax), %eax	# *macro_23, D.9474
	andl	$1, %eax	#, D.9474
	testb	%al, %al	# D.9474
	je	.L288	#,
	.loc 2 1571 0
	movq	-40(%rbp), %rax	# buffer, buffer.35
	leaq	1(%rax), %rdx	#, tmp207
	movq	%rdx, -40(%rbp)	# tmp207, buffer
	movb	$40, (%rax)	#, *buffer.35_86
	.loc 2 1572 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L289	#
.L293:
.LBB22:
	.loc 2 1574 0
	movq	-32(%rbp), %rax	# macro, tmp208
	movq	(%rax), %rax	# macro_23->params, D.9478
	movl	-48(%rbp), %edx	# i, D.9479
	salq	$3, %rdx	#, D.9479
	addq	%rdx, %rax	# D.9479, D.9478
	movq	(%rax), %rax	# *_94, tmp209
	movq	%rax, -16(%rbp)	# tmp209, param
	.loc 2 1576 0
	movq	-56(%rbp), %rax	# pfile, tmp210
	movq	816(%rax), %rax	# pfile_72(D)->spec_nodes.n__VA_ARGS__, D.9480
	cmpq	-16(%rbp), %rax	# param, D.9480
	je	.L290	#,
	.loc 2 1578 0
	movq	-16(%rbp), %rax	# param, tmp211
	movl	(%rax), %eax	# param_95->ident.len, D.9476
	movl	%eax, %edx	# D.9476, D.9479
	movq	-16(%rbp), %rax	# param, tmp212
	movq	8(%rax), %rcx	# param_95->ident.str, D.9473
	movq	-40(%rbp), %rax	# buffer, tmp213
	movq	%rcx, %rsi	# D.9473,
	movq	%rax, %rdi	# tmp213,
	call	memcpy	#
	.loc 2 1579 0
	movq	-16(%rbp), %rax	# param, tmp214
	movl	(%rax), %eax	# param_95->ident.len, D.9476
	movl	%eax, %eax	# D.9476, D.9484
	addq	%rax, -40(%rbp)	# D.9484, buffer
.L290:
	.loc 2 1582 0
	movl	-48(%rbp), %eax	# i, tmp215
	leal	1(%rax), %edx	#, D.9476
	movq	-32(%rbp), %rax	# macro, tmp216
	movzwl	24(%rax), %eax	# macro_23->paramc, D.9477
	movzwl	%ax, %eax	# D.9477, D.9476
	cmpl	%eax, %edx	# D.9476, D.9476
	jae	.L291	#,
	.loc 2 1586 0
	movq	-40(%rbp), %rax	# buffer, buffer.36
	leaq	1(%rax), %rdx	#, tmp217
	movq	%rdx, -40(%rbp)	# tmp217, buffer
	movb	$44, (%rax)	#, *buffer.36_106
	jmp	.L292	#
.L291:
	.loc 2 1587 0
	movq	-32(%rbp), %rax	# macro, tmp218
	movzbl	26(%rax), %eax	# *macro_23, D.9474
	andl	$2, %eax	#, D.9474
	testb	%al, %al	# D.9474
	je	.L292	#,
	.loc 2 1588 0
	movq	-40(%rbp), %rax	# buffer, buffer.37
	leaq	1(%rax), %rdx	#, tmp219
	movq	%rdx, -40(%rbp)	# tmp219, buffer
	movb	$46, (%rax)	#, *buffer.37_110
	movq	-40(%rbp), %rax	# buffer, buffer.38
	leaq	1(%rax), %rdx	#, tmp220
	movq	%rdx, -40(%rbp)	# tmp220, buffer
	movb	$46, (%rax)	#, *buffer.38_112
	movq	-40(%rbp), %rax	# buffer, buffer.39
	leaq	1(%rax), %rdx	#, tmp221
	movq	%rdx, -40(%rbp)	# tmp221, buffer
	movb	$46, (%rax)	#, *buffer.39_114
.L292:
.LBE22:
	.loc 2 1572 0
	addl	$1, -48(%rbp)	#, i
.L289:
	.loc 2 1572 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# macro, tmp222
	movzwl	24(%rax), %eax	# macro_23->paramc, D.9477
	movzwl	%ax, %eax	# D.9477, D.9476
	cmpl	-48(%rbp), %eax	# i, D.9476
	ja	.L293	#,
	.loc 2 1590 0 is_stmt 1
	movq	-40(%rbp), %rax	# buffer, buffer.40
	leaq	1(%rax), %rdx	#, tmp223
	movq	%rdx, -40(%rbp)	# tmp223, buffer
	movb	$41, (%rax)	#, *buffer.40_117
.L288:
	.loc 2 1595 0
	movq	-40(%rbp), %rax	# buffer, buffer.41
	leaq	1(%rax), %rdx	#, tmp224
	movq	%rdx, -40(%rbp)	# tmp224, buffer
	movb	$32, (%rax)	#, *buffer.41_119
	.loc 2 1598 0
	movq	-32(%rbp), %rax	# macro, tmp225
	movl	20(%rax), %eax	# macro_23->count, D.9476
	testl	%eax, %eax	# D.9476
	je	.L294	#,
	.loc 2 1600 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L295	#
.L301:
.LBB23:
	.loc 2 1602 0
	movq	-32(%rbp), %rax	# macro, tmp226
	movq	8(%rax), %rcx	# macro_23->expansion, D.9481
	movl	-48(%rbp), %edx	# i, D.9479
	movq	%rdx, %rax	# D.9479, tmp227
	addq	%rax, %rax	# tmp227
	addq	%rdx, %rax	# D.9479, tmp227
	salq	$3, %rax	#, tmp228
	addq	%rcx, %rax	# D.9481, tmp229
	movq	%rax, -8(%rbp)	# tmp229, token
	.loc 2 1604 0
	movq	-8(%rbp), %rax	# token, tmp230
	movzbl	7(%rax), %eax	# token_127->flags, D.9474
	movzbl	%al, %eax	# D.9474, D.9475
	andl	$1, %eax	#, D.9475
	testl	%eax, %eax	# D.9475
	je	.L296	#,
	.loc 2 1605 0
	movq	-40(%rbp), %rax	# buffer, buffer.42
	leaq	1(%rax), %rdx	#, tmp231
	movq	%rdx, -40(%rbp)	# tmp231, buffer
	movb	$32, (%rax)	#, *buffer.42_131
.L296:
	.loc 2 1606 0
	movq	-8(%rbp), %rax	# token, tmp232
	movzbl	7(%rax), %eax	# token_127->flags, D.9474
	movzbl	%al, %eax	# D.9474, D.9475
	andl	$4, %eax	#, D.9475
	testl	%eax, %eax	# D.9475
	je	.L297	#,
	.loc 2 1607 0
	movq	-40(%rbp), %rax	# buffer, buffer.43
	leaq	1(%rax), %rdx	#, tmp233
	movq	%rdx, -40(%rbp)	# tmp233, buffer
	movb	$35, (%rax)	#, *buffer.43_136
.L297:
	.loc 2 1609 0
	movq	-8(%rbp), %rax	# token, tmp234
	movzbl	6(%rax), %eax	# token_127->type, D.9474
	cmpb	$65, %al	#, D.9474
	jne	.L298	#,
	.loc 2 1611 0
	movq	-32(%rbp), %rax	# macro, tmp235
	movq	(%rax), %rdx	# macro_23->params, D.9478
	movq	-8(%rbp), %rax	# token, tmp236
	movl	8(%rax), %eax	# token_127->val.arg_no, D.9476
	subl	$1, %eax	#, D.9476
	movl	%eax, %eax	# D.9476, D.9479
	salq	$3, %rax	#, D.9479
	addq	%rdx, %rax	# D.9478, D.9478
	movq	(%rax), %rax	# *_144, D.9480
	movl	(%rax), %eax	# _145->ident.len, tmp237
	movl	%eax, -44(%rbp)	# tmp237, len
	.loc 2 1612 0
	movl	-44(%rbp), %edx	# len, D.9479
	.loc 2 1613 0
	movq	-32(%rbp), %rax	# macro, tmp238
	movq	(%rax), %rcx	# macro_23->params, D.9478
	movq	-8(%rbp), %rax	# token, tmp239
	movl	8(%rax), %eax	# token_127->val.arg_no, D.9476
	subl	$1, %eax	#, D.9476
	movl	%eax, %eax	# D.9476, D.9479
	salq	$3, %rax	#, D.9479
	addq	%rcx, %rax	# D.9478, D.9478
	movq	(%rax), %rax	# *_153, D.9480
	movq	8(%rax), %rcx	# _154->ident.str, D.9473
	.loc 2 1612 0
	movq	-40(%rbp), %rax	# buffer, tmp240
	movq	%rcx, %rsi	# D.9473,
	movq	%rax, %rdi	# tmp240,
	call	memcpy	#
	.loc 2 1614 0
	movl	-44(%rbp), %eax	# len, D.9484
	addq	%rax, -40(%rbp)	# D.9484, buffer
	jmp	.L299	#
.L298:
	.loc 2 1617 0
	movq	-40(%rbp), %rdx	# buffer, tmp241
	movq	-8(%rbp), %rcx	# token, tmp242
	movq	-56(%rbp), %rax	# pfile, tmp243
	movq	%rcx, %rsi	# tmp242,
	movq	%rax, %rdi	# tmp243,
	call	cpp_spell_token	#
	movq	%rax, -40(%rbp)	# tmp244, buffer
.L299:
	.loc 2 1619 0
	movq	-8(%rbp), %rax	# token, tmp245
	movzbl	7(%rax), %eax	# token_127->flags, D.9474
	movzbl	%al, %eax	# D.9474, D.9475
	andl	$8, %eax	#, D.9475
	testl	%eax, %eax	# D.9475
	je	.L300	#,
	.loc 2 1621 0
	movq	-40(%rbp), %rax	# buffer, buffer.44
	leaq	1(%rax), %rdx	#, tmp246
	movq	%rdx, -40(%rbp)	# tmp246, buffer
	movb	$32, (%rax)	#, *buffer.44_162
	.loc 2 1622 0
	movq	-40(%rbp), %rax	# buffer, buffer.45
	leaq	1(%rax), %rdx	#, tmp247
	movq	%rdx, -40(%rbp)	# tmp247, buffer
	movb	$35, (%rax)	#, *buffer.45_164
	.loc 2 1623 0
	movq	-40(%rbp), %rax	# buffer, buffer.46
	leaq	1(%rax), %rdx	#, tmp248
	movq	%rdx, -40(%rbp)	# tmp248, buffer
	movb	$35, (%rax)	#, *buffer.46_166
.L300:
.LBE23:
	.loc 2 1600 0
	addl	$1, -48(%rbp)	#, i
.L295:
	.loc 2 1600 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# macro, tmp249
	movl	20(%rax), %eax	# macro_23->count, D.9476
	cmpl	-48(%rbp), %eax	# i, D.9476
	ja	.L301	#,
.L294:
	.loc 2 1629 0 is_stmt 1
	movq	-40(%rbp), %rax	# buffer, tmp250
	movb	$0, (%rax)	#, *buffer_20
	.loc 2 1630 0
	movq	-56(%rbp), %rax	# pfile, tmp251
	movq	264(%rax), %rax	# pfile_72(D)->macro_buffer, D.9473
.L277:
	.loc 2 1631 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	cpp_macro_definition, .-cpp_macro_definition
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 6 "/usr/include/time.h"
	.file 7 "obstack.h"
	.file 8 "hashtable.h"
	.file 9 "line-map.h"
	.file 10 "cpplib.h"
	.file 11 "./safe-ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2301
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF422
	.byte	0x1
	.long	.LASF423
	.long	.LASF424
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
	.byte	0x94
	.long	0x44
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0xa0
	.long	0xb7
	.uleb128 0x8
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbd
	.uleb128 0x9
	.long	0xa0
	.uleb128 0xa
	.byte	0x4
	.byte	0xb
	.byte	0x2c
	.long	0x143
	.uleb128 0xb
	.long	.LASF13
	.sleb128 1
	.uleb128 0xb
	.long	.LASF14
	.sleb128 2
	.uleb128 0xb
	.long	.LASF15
	.sleb128 4
	.uleb128 0xb
	.long	.LASF16
	.sleb128 8
	.uleb128 0xb
	.long	.LASF17
	.sleb128 16
	.uleb128 0xb
	.long	.LASF18
	.sleb128 32
	.uleb128 0xb
	.long	.LASF19
	.sleb128 64
	.uleb128 0xb
	.long	.LASF20
	.sleb128 128
	.uleb128 0xb
	.long	.LASF21
	.sleb128 256
	.uleb128 0xb
	.long	.LASF22
	.sleb128 512
	.uleb128 0xb
	.long	.LASF23
	.sleb128 1024
	.uleb128 0xb
	.long	.LASF24
	.sleb128 2048
	.uleb128 0xb
	.long	.LASF25
	.sleb128 136
	.uleb128 0xb
	.long	.LASF26
	.sleb128 140
	.uleb128 0xb
	.long	.LASF27
	.sleb128 516
	.uleb128 0xb
	.long	.LASF28
	.sleb128 172
	.uleb128 0xb
	.long	.LASF29
	.sleb128 3072
	.uleb128 0xb
	.long	.LASF30
	.sleb128 3088
	.byte	0
	.uleb128 0x5
	.long	.LASF31
	.byte	0x5
	.byte	0x30
	.long	0x84
	.uleb128 0x5
	.long	.LASF32
	.byte	0x5
	.byte	0x3c
	.long	0x79
	.uleb128 0x5
	.long	.LASF33
	.byte	0x6
	.byte	0x4b
	.long	0x8f
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF34
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF35
	.uleb128 0xc
	.string	"tm"
	.byte	0x38
	.byte	0x6
	.byte	0x85
	.long	0x202
	.uleb128 0xd
	.long	.LASF36
	.byte	0x6
	.byte	0x87
	.long	0x2d
	.byte	0
	.uleb128 0xd
	.long	.LASF37
	.byte	0x6
	.byte	0x88
	.long	0x2d
	.byte	0x4
	.uleb128 0xd
	.long	.LASF38
	.byte	0x6
	.byte	0x89
	.long	0x2d
	.byte	0x8
	.uleb128 0xd
	.long	.LASF39
	.byte	0x6
	.byte	0x8a
	.long	0x2d
	.byte	0xc
	.uleb128 0xd
	.long	.LASF40
	.byte	0x6
	.byte	0x8b
	.long	0x2d
	.byte	0x10
	.uleb128 0xd
	.long	.LASF41
	.byte	0x6
	.byte	0x8c
	.long	0x2d
	.byte	0x14
	.uleb128 0xd
	.long	.LASF42
	.byte	0x6
	.byte	0x8d
	.long	0x2d
	.byte	0x18
	.uleb128 0xd
	.long	.LASF43
	.byte	0x6
	.byte	0x8e
	.long	0x2d
	.byte	0x1c
	.uleb128 0xd
	.long	.LASF44
	.byte	0x6
	.byte	0x8f
	.long	0x2d
	.byte	0x20
	.uleb128 0xd
	.long	.LASF45
	.byte	0x6
	.byte	0x92
	.long	0x44
	.byte	0x28
	.uleb128 0xd
	.long	.LASF46
	.byte	0x6
	.byte	0x93
	.long	0xb7
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x233
	.uleb128 0xd
	.long	.LASF48
	.byte	0x7
	.byte	0xa3
	.long	0x9a
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x7
	.byte	0xa4
	.long	0x233
	.byte	0x8
	.uleb128 0xd
	.long	.LASF50
	.byte	0x7
	.byte	0xa5
	.long	0xa7
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x202
	.uleb128 0xe
	.long	.LASF51
	.byte	0x58
	.byte	0x7
	.byte	0xa8
	.long	0x2eb
	.uleb128 0xd
	.long	.LASF52
	.byte	0x7
	.byte	0xaa
	.long	0x44
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0x7
	.byte	0xab
	.long	0x233
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0x7
	.byte	0xac
	.long	0x9a
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0x7
	.byte	0xad
	.long	0x9a
	.byte	0x18
	.uleb128 0xd
	.long	.LASF56
	.byte	0x7
	.byte	0xae
	.long	0x9a
	.byte	0x20
	.uleb128 0xd
	.long	.LASF57
	.byte	0x7
	.byte	0xaf
	.long	0x44
	.byte	0x28
	.uleb128 0xd
	.long	.LASF58
	.byte	0x7
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0xd
	.long	.LASF59
	.byte	0x7
	.byte	0xb5
	.long	0x2ff
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0x7
	.byte	0xb6
	.long	0x315
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0x7
	.byte	0xb7
	.long	0x42
	.byte	0x48
	.uleb128 0xf
	.long	.LASF62
	.byte	0x7
	.byte	0xbd
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0xf
	.long	.LASF63
	.byte	0x7
	.byte	0xbe
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0xf
	.long	.LASF64
	.byte	0x7
	.byte	0xc2
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.long	0x233
	.long	0x2ff
	.uleb128 0x11
	.long	0x42
	.uleb128 0x11
	.long	0x44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2eb
	.uleb128 0x12
	.long	0x315
	.uleb128 0x11
	.long	0x42
	.uleb128 0x11
	.long	0x233
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x305
	.uleb128 0xe
	.long	.LASF65
	.byte	0x10
	.byte	0x8
	.byte	0x1a
	.long	0x340
	.uleb128 0x13
	.string	"len"
	.byte	0x8
	.byte	0x1c
	.long	0x3b
	.byte	0
	.uleb128 0x13
	.string	"str"
	.byte	0x8
	.byte	0x1d
	.long	0x340
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x346
	.uleb128 0x9
	.long	0x5d
	.uleb128 0x5
	.long	.LASF66
	.byte	0x8
	.byte	0x28
	.long	0x356
	.uleb128 0xc
	.string	"ht"
	.byte	0x80
	.byte	0x8
	.byte	0x2e
	.long	0x3c2
	.uleb128 0xd
	.long	.LASF67
	.byte	0x8
	.byte	0x31
	.long	0x239
	.byte	0
	.uleb128 0xd
	.long	.LASF68
	.byte	0x8
	.byte	0x33
	.long	0x3d3
	.byte	0x58
	.uleb128 0xd
	.long	.LASF69
	.byte	0x8
	.byte	0x35
	.long	0x3ee
	.byte	0x60
	.uleb128 0xd
	.long	.LASF70
	.byte	0x8
	.byte	0x37
	.long	0x3b
	.byte	0x68
	.uleb128 0xd
	.long	.LASF71
	.byte	0x8
	.byte	0x38
	.long	0x3b
	.byte	0x6c
	.uleb128 0xd
	.long	.LASF72
	.byte	0x8
	.byte	0x3b
	.long	0x61b
	.byte	0x70
	.uleb128 0xd
	.long	.LASF73
	.byte	0x8
	.byte	0x3e
	.long	0x3b
	.byte	0x78
	.uleb128 0xd
	.long	.LASF74
	.byte	0x8
	.byte	0x3f
	.long	0x3b
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.long	.LASF75
	.byte	0x8
	.byte	0x29
	.long	0x3cd
	.uleb128 0x6
	.byte	0x8
	.long	0x31b
	.uleb128 0x6
	.byte	0x8
	.long	0x3c2
	.uleb128 0x10
	.long	0x3c2
	.long	0x3e8
	.uleb128 0x11
	.long	0x3e8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34b
	.uleb128 0x6
	.byte	0x8
	.long	0x3d9
	.uleb128 0x14
	.long	.LASF76
	.value	0x340
	.byte	0x1
	.byte	0xe1
	.long	0x61b
	.uleb128 0xd
	.long	.LASF77
	.byte	0x1
	.byte	0xe4
	.long	0x1292
	.byte	0
	.uleb128 0xd
	.long	.LASF78
	.byte	0x1
	.byte	0xe7
	.long	0x11b4
	.byte	0x8
	.uleb128 0xd
	.long	.LASF79
	.byte	0x1
	.byte	0xea
	.long	0x679
	.byte	0x18
	.uleb128 0x13
	.string	"map"
	.byte	0x1
	.byte	0xeb
	.long	0xf2f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF80
	.byte	0x1
	.byte	0xec
	.long	0x3b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF81
	.byte	0x1
	.byte	0xef
	.long	0x3b
	.byte	0x44
	.uleb128 0xd
	.long	.LASF82
	.byte	0x1
	.byte	0xf2
	.long	0x11ae
	.byte	0x48
	.uleb128 0xd
	.long	.LASF83
	.byte	0x1
	.byte	0xf3
	.long	0x11ae
	.byte	0x50
	.uleb128 0xd
	.long	.LASF84
	.byte	0x1
	.byte	0xf4
	.long	0x11ae
	.byte	0x58
	.uleb128 0xd
	.long	.LASF85
	.byte	0x1
	.byte	0xf7
	.long	0x1147
	.byte	0x60
	.uleb128 0xd
	.long	.LASF86
	.byte	0x1
	.byte	0xf8
	.long	0x1298
	.byte	0x98
	.uleb128 0xd
	.long	.LASF87
	.byte	0x1
	.byte	0xfb
	.long	0x12a3
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF88
	.byte	0x1
	.byte	0xfe
	.long	0x12ae
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF89
	.byte	0x1
	.byte	0xff
	.long	0x12ae
	.byte	0xb0
	.uleb128 0x15
	.long	.LASF90
	.byte	0x1
	.value	0x100
	.long	0x6d4
	.byte	0xb8
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.value	0x103
	.long	0x1136
	.byte	0xc0
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.value	0x104
	.long	0x10e8
	.byte	0xc8
	.uleb128 0x15
	.long	.LASF93
	.byte	0x1
	.value	0x104
	.long	0x1130
	.byte	0xe8
	.uleb128 0x15
	.long	.LASF94
	.byte	0x1
	.value	0x105
	.long	0x3b
	.byte	0xf0
	.uleb128 0x15
	.long	.LASF95
	.byte	0x1
	.value	0x108
	.long	0x3b
	.byte	0xf4
	.uleb128 0x15
	.long	.LASF96
	.byte	0x1
	.value	0x10b
	.long	0x3b
	.byte	0xf8
	.uleb128 0x15
	.long	.LASF97
	.byte	0x1
	.value	0x10f
	.long	0x3b
	.byte	0xfc
	.uleb128 0x16
	.long	.LASF98
	.byte	0x1
	.value	0x110
	.long	0x3b
	.value	0x100
	.uleb128 0x16
	.long	.LASF99
	.byte	0x1
	.value	0x113
	.long	0x10ae
	.value	0x108
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.value	0x114
	.long	0x3b
	.value	0x110
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.value	0x117
	.long	0x12be
	.value	0x118
	.uleb128 0x16
	.long	.LASF102
	.byte	0x1
	.value	0x11b
	.long	0x3b
	.value	0x120
	.uleb128 0x16
	.long	.LASF103
	.byte	0x1
	.value	0x11e
	.long	0xa51
	.value	0x128
	.uleb128 0x16
	.long	.LASF104
	.byte	0x1
	.value	0x11f
	.long	0xa51
	.value	0x140
	.uleb128 0x16
	.long	.LASF105
	.byte	0x1
	.value	0x122
	.long	0xa51
	.value	0x158
	.uleb128 0x17
	.string	"eof"
	.byte	0x1
	.value	0x123
	.long	0xa51
	.value	0x170
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.value	0x126
	.long	0x12c9
	.value	0x188
	.uleb128 0x16
	.long	.LASF107
	.byte	0x1
	.value	0x12a
	.long	0x239
	.value	0x190
	.uleb128 0x16
	.long	.LASF108
	.byte	0x1
	.value	0x12e
	.long	0x239
	.value	0x1e8
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.value	0x132
	.long	0x12d4
	.value	0x240
	.uleb128 0x17
	.string	"cb"
	.byte	0x1
	.value	0x135
	.long	0xbd0
	.value	0x248
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.value	0x138
	.long	0x12da
	.value	0x280
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.value	0x13b
	.long	0x7be
	.value	0x288
	.uleb128 0x16
	.long	.LASF111
	.byte	0x1
	.value	0x13f
	.long	0x122d
	.value	0x310
	.uleb128 0x16
	.long	.LASF112
	.byte	0x1
	.value	0x143
	.long	0x5d
	.value	0x338
	.uleb128 0x16
	.long	.LASF113
	.byte	0x1
	.value	0x146
	.long	0x5d
	.value	0x339
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f4
	.uleb128 0xe
	.long	.LASF114
	.byte	0x18
	.byte	0x9
	.byte	0x29
	.long	0x679
	.uleb128 0xd
	.long	.LASF115
	.byte	0x9
	.byte	0x2b
	.long	0xb7
	.byte	0
	.uleb128 0xd
	.long	.LASF116
	.byte	0x9
	.byte	0x2c
	.long	0x3b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF117
	.byte	0x9
	.byte	0x2d
	.long	0x3b
	.byte	0xc
	.uleb128 0xd
	.long	.LASF118
	.byte	0x9
	.byte	0x2e
	.long	0x2d
	.byte	0x10
	.uleb128 0xf
	.long	.LASF119
	.byte	0x9
	.byte	0x2f
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0xd
	.long	.LASF120
	.byte	0x9
	.byte	0x30
	.long	0x5d
	.byte	0x15
	.byte	0
	.uleb128 0xe
	.long	.LASF79
	.byte	0x20
	.byte	0x9
	.byte	0x34
	.long	0x6ce
	.uleb128 0xd
	.long	.LASF121
	.byte	0x9
	.byte	0x36
	.long	0x6ce
	.byte	0
	.uleb128 0xd
	.long	.LASF122
	.byte	0x9
	.byte	0x37
	.long	0x3b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF123
	.byte	0x9
	.byte	0x38
	.long	0x3b
	.byte	0xc
	.uleb128 0xd
	.long	.LASF124
	.byte	0x9
	.byte	0x3d
	.long	0x2d
	.byte	0x10
	.uleb128 0xd
	.long	.LASF125
	.byte	0x9
	.byte	0x40
	.long	0x3b
	.byte	0x14
	.uleb128 0xd
	.long	.LASF126
	.byte	0x9
	.byte	0x43
	.long	0x6d4
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x621
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF127
	.uleb128 0x5
	.long	.LASF76
	.byte	0xa
	.byte	0x24
	.long	0x3f4
	.uleb128 0x5
	.long	.LASF128
	.byte	0xa
	.byte	0x26
	.long	0x6f1
	.uleb128 0xe
	.long	.LASF128
	.byte	0x90
	.byte	0x1
	.byte	0xa8
	.long	0x7be
	.uleb128 0x13
	.string	"cur"
	.byte	0x1
	.byte	0xaa
	.long	0x340
	.byte	0
	.uleb128 0xd
	.long	.LASF129
	.byte	0x1
	.byte	0xab
	.long	0x340
	.byte	0x8
	.uleb128 0xd
	.long	.LASF130
	.byte	0x1
	.byte	0xac
	.long	0x340
	.byte	0x10
	.uleb128 0xd
	.long	.LASF131
	.byte	0x1
	.byte	0xad
	.long	0x340
	.byte	0x18
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.byte	0xaf
	.long	0x1276
	.byte	0x20
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0xb1
	.long	0x340
	.byte	0x28
	.uleb128 0x13
	.string	"inc"
	.byte	0x1
	.byte	0xb5
	.long	0x1281
	.byte	0x30
	.uleb128 0xd
	.long	.LASF132
	.byte	0x1
	.byte	0xb9
	.long	0x128c
	.byte	0x38
	.uleb128 0xd
	.long	.LASF133
	.byte	0x1
	.byte	0xbc
	.long	0x3b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF134
	.byte	0x1
	.byte	0xbf
	.long	0x5d
	.byte	0x44
	.uleb128 0xd
	.long	.LASF135
	.byte	0x1
	.byte	0xc3
	.long	0x340
	.byte	0x48
	.uleb128 0xd
	.long	.LASF136
	.byte	0x1
	.byte	0xc9
	.long	0x5d
	.byte	0x50
	.uleb128 0xd
	.long	.LASF137
	.byte	0x1
	.byte	0xce
	.long	0x5d
	.byte	0x51
	.uleb128 0xd
	.long	.LASF138
	.byte	0x1
	.byte	0xd2
	.long	0x5d
	.byte	0x52
	.uleb128 0xd
	.long	.LASF139
	.byte	0x1
	.byte	0xd7
	.long	0x6d4
	.byte	0x53
	.uleb128 0x13
	.string	"dir"
	.byte	0x1
	.byte	0xdb
	.long	0xe8c
	.byte	0x58
	.byte	0
	.uleb128 0xe
	.long	.LASF140
	.byte	0x88
	.byte	0xa
	.byte	0xcd
	.long	0xa51
	.uleb128 0xd
	.long	.LASF141
	.byte	0xa
	.byte	0xd0
	.long	0xb7
	.byte	0
	.uleb128 0xd
	.long	.LASF142
	.byte	0xa
	.byte	0xd1
	.long	0xb7
	.byte	0x8
	.uleb128 0xd
	.long	.LASF143
	.byte	0xa
	.byte	0xd4
	.long	0x3b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF144
	.byte	0xa
	.byte	0xd7
	.long	0xe86
	.byte	0x18
	.uleb128 0xd
	.long	.LASF145
	.byte	0xa
	.byte	0xdb
	.long	0xb7
	.byte	0x20
	.uleb128 0xd
	.long	.LASF146
	.byte	0xa
	.byte	0xde
	.long	0xeed
	.byte	0x28
	.uleb128 0xd
	.long	.LASF147
	.byte	0xa
	.byte	0xdf
	.long	0xeed
	.byte	0x30
	.uleb128 0xd
	.long	.LASF148
	.byte	0xa
	.byte	0xe3
	.long	0xef8
	.byte	0x38
	.uleb128 0xd
	.long	.LASF149
	.byte	0xa
	.byte	0xe7
	.long	0xb7
	.byte	0x40
	.uleb128 0xd
	.long	.LASF150
	.byte	0xa
	.byte	0xe8
	.long	0x3b
	.byte	0x48
	.uleb128 0xd
	.long	.LASF151
	.byte	0xa
	.byte	0xeb
	.long	0xb7
	.byte	0x50
	.uleb128 0xd
	.long	.LASF152
	.byte	0xa
	.byte	0xee
	.long	0xde9
	.byte	0x58
	.uleb128 0xd
	.long	.LASF153
	.byte	0xa
	.byte	0xf1
	.long	0x5d
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF154
	.byte	0xa
	.byte	0xf4
	.long	0x5d
	.byte	0x5d
	.uleb128 0xd
	.long	.LASF155
	.byte	0xa
	.byte	0xf7
	.long	0x5d
	.byte	0x5e
	.uleb128 0xd
	.long	.LASF156
	.byte	0xa
	.byte	0xfa
	.long	0x5d
	.byte	0x5f
	.uleb128 0xd
	.long	.LASF157
	.byte	0xa
	.byte	0xfd
	.long	0x5d
	.byte	0x60
	.uleb128 0x15
	.long	.LASF158
	.byte	0xa
	.value	0x100
	.long	0x5d
	.byte	0x61
	.uleb128 0x15
	.long	.LASF159
	.byte	0xa
	.value	0x103
	.long	0x5d
	.byte	0x62
	.uleb128 0x15
	.long	.LASF160
	.byte	0xa
	.value	0x106
	.long	0x5d
	.byte	0x63
	.uleb128 0x15
	.long	.LASF161
	.byte	0xa
	.value	0x109
	.long	0x5d
	.byte	0x64
	.uleb128 0x15
	.long	.LASF162
	.byte	0xa
	.value	0x10e
	.long	0x5d
	.byte	0x65
	.uleb128 0x15
	.long	.LASF163
	.byte	0xa
	.value	0x111
	.long	0x5d
	.byte	0x66
	.uleb128 0x15
	.long	.LASF164
	.byte	0xa
	.value	0x115
	.long	0x5d
	.byte	0x67
	.uleb128 0x15
	.long	.LASF165
	.byte	0xa
	.value	0x118
	.long	0x5d
	.byte	0x68
	.uleb128 0x15
	.long	.LASF166
	.byte	0xa
	.value	0x11b
	.long	0x5d
	.byte	0x69
	.uleb128 0x15
	.long	.LASF167
	.byte	0xa
	.value	0x11e
	.long	0x5d
	.byte	0x6a
	.uleb128 0x15
	.long	.LASF168
	.byte	0xa
	.value	0x121
	.long	0x5d
	.byte	0x6b
	.uleb128 0x15
	.long	.LASF169
	.byte	0xa
	.value	0x124
	.long	0x5d
	.byte	0x6c
	.uleb128 0x15
	.long	.LASF170
	.byte	0xa
	.value	0x128
	.long	0x5d
	.byte	0x6d
	.uleb128 0x15
	.long	.LASF171
	.byte	0xa
	.value	0x12b
	.long	0x5d
	.byte	0x6e
	.uleb128 0x15
	.long	.LASF172
	.byte	0xa
	.value	0x12e
	.long	0x5d
	.byte	0x6f
	.uleb128 0x15
	.long	.LASF173
	.byte	0xa
	.value	0x131
	.long	0x5d
	.byte	0x70
	.uleb128 0x15
	.long	.LASF174
	.byte	0xa
	.value	0x135
	.long	0x5d
	.byte	0x71
	.uleb128 0x15
	.long	.LASF175
	.byte	0xa
	.value	0x138
	.long	0x5d
	.byte	0x72
	.uleb128 0x15
	.long	.LASF176
	.byte	0xa
	.value	0x13c
	.long	0x5d
	.byte	0x73
	.uleb128 0x15
	.long	.LASF177
	.byte	0xa
	.value	0x140
	.long	0x5d
	.byte	0x74
	.uleb128 0x15
	.long	.LASF178
	.byte	0xa
	.value	0x143
	.long	0x5d
	.byte	0x75
	.uleb128 0x15
	.long	.LASF179
	.byte	0xa
	.value	0x147
	.long	0x5d
	.byte	0x76
	.uleb128 0x15
	.long	.LASF180
	.byte	0xa
	.value	0x14a
	.long	0x5d
	.byte	0x77
	.uleb128 0x15
	.long	.LASF181
	.byte	0xa
	.value	0x14d
	.long	0x5d
	.byte	0x78
	.uleb128 0x18
	.string	"c99"
	.byte	0xa
	.value	0x150
	.long	0x5d
	.byte	0x79
	.uleb128 0x15
	.long	.LASF182
	.byte	0xa
	.value	0x153
	.long	0x5d
	.byte	0x7a
	.uleb128 0x15
	.long	.LASF183
	.byte	0xa
	.value	0x157
	.long	0x5d
	.byte	0x7b
	.uleb128 0x15
	.long	.LASF184
	.byte	0xa
	.value	0x15a
	.long	0x5d
	.byte	0x7c
	.uleb128 0x15
	.long	.LASF185
	.byte	0xa
	.value	0x15d
	.long	0x5d
	.byte	0x7d
	.uleb128 0x15
	.long	.LASF186
	.byte	0xa
	.value	0x160
	.long	0x5d
	.byte	0x7e
	.uleb128 0x15
	.long	.LASF187
	.byte	0xa
	.value	0x163
	.long	0x5d
	.byte	0x7f
	.uleb128 0x15
	.long	.LASF188
	.byte	0xa
	.value	0x166
	.long	0x5d
	.byte	0x80
	.uleb128 0x15
	.long	.LASF189
	.byte	0xa
	.value	0x169
	.long	0x5d
	.byte	0x81
	.uleb128 0x15
	.long	.LASF190
	.byte	0xa
	.value	0x16e
	.long	0x5d
	.byte	0x82
	.byte	0
	.uleb128 0x5
	.long	.LASF191
	.byte	0xa
	.byte	0x28
	.long	0xa5c
	.uleb128 0xe
	.long	.LASF191
	.byte	0x18
	.byte	0xa
	.byte	0xad
	.long	0xaa8
	.uleb128 0xd
	.long	.LASF80
	.byte	0xa
	.byte	0xaf
	.long	0x3b
	.byte	0
	.uleb128 0x13
	.string	"col"
	.byte	0xa
	.byte	0xb0
	.long	0x64
	.byte	0x4
	.uleb128 0xf
	.long	.LASF192
	.byte	0xa
	.byte	0xb1
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x4
	.uleb128 0xd
	.long	.LASF193
	.byte	0xa
	.byte	0xb2
	.long	0x5d
	.byte	0x7
	.uleb128 0x13
	.string	"val"
	.byte	0xa
	.byte	0xbb
	.long	0xe32
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF194
	.byte	0xa
	.byte	0x29
	.long	0xab3
	.uleb128 0xe
	.long	.LASF194
	.byte	0x10
	.byte	0xa
	.byte	0x9c
	.long	0xad8
	.uleb128 0x13
	.string	"len"
	.byte	0xa
	.byte	0x9e
	.long	0x3b
	.byte	0
	.uleb128 0xd
	.long	.LASF195
	.byte	0xa
	.byte	0x9f
	.long	0x340
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF196
	.byte	0xa
	.byte	0x2a
	.long	0xae3
	.uleb128 0x19
	.long	.LASF196
	.byte	0x20
	.byte	0xa
	.value	0x1b7
	.long	0xb4f
	.uleb128 0x15
	.long	.LASF197
	.byte	0xa
	.value	0x1b9
	.long	0x31b
	.byte	0
	.uleb128 0x15
	.long	.LASF198
	.byte	0xa
	.value	0x1ba
	.long	0x64
	.byte	0x10
	.uleb128 0x15
	.long	.LASF199
	.byte	0xa
	.value	0x1bb
	.long	0x5d
	.byte	0x12
	.uleb128 0x15
	.long	.LASF200
	.byte	0xa
	.value	0x1bc
	.long	0x5d
	.byte	0x13
	.uleb128 0x1a
	.long	.LASF192
	.byte	0xa
	.value	0x1bd
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x15
	.long	.LASF193
	.byte	0xa
	.value	0x1be
	.long	0x5d
	.byte	0x15
	.uleb128 0x15
	.long	.LASF201
	.byte	0xa
	.value	0x1c6
	.long	0x1015
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF202
	.byte	0xa
	.byte	0x2b
	.long	0xb5a
	.uleb128 0xe
	.long	.LASF202
	.byte	0x20
	.byte	0x2
	.byte	0x1f
	.long	0xbd0
	.uleb128 0xd
	.long	.LASF203
	.byte	0x2
	.byte	0x21
	.long	0x12ec
	.byte	0
	.uleb128 0xd
	.long	.LASF204
	.byte	0x2
	.byte	0x22
	.long	0x1136
	.byte	0x8
	.uleb128 0xd
	.long	.LASF80
	.byte	0x2
	.byte	0x23
	.long	0x3b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF205
	.byte	0x2
	.byte	0x24
	.long	0x3b
	.byte	0x14
	.uleb128 0xd
	.long	.LASF206
	.byte	0x2
	.byte	0x25
	.long	0x64
	.byte	0x18
	.uleb128 0xf
	.long	.LASF207
	.byte	0x2
	.byte	0x26
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x18
	.uleb128 0xf
	.long	.LASF208
	.byte	0x2
	.byte	0x27
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x18
	.uleb128 0xf
	.long	.LASF209
	.byte	0x2
	.byte	0x28
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.long	.LASF210
	.byte	0x38
	.byte	0xa
	.value	0x172
	.long	0xc39
	.uleb128 0x15
	.long	.LASF211
	.byte	0xa
	.value	0x175
	.long	0xf19
	.byte	0
	.uleb128 0x15
	.long	.LASF212
	.byte	0xa
	.value	0x176
	.long	0xf3a
	.byte	0x8
	.uleb128 0x15
	.long	.LASF213
	.byte	0xa
	.value	0x177
	.long	0xf5a
	.byte	0x10
	.uleb128 0x15
	.long	.LASF214
	.byte	0xa
	.value	0x179
	.long	0xf75
	.byte	0x18
	.uleb128 0x15
	.long	.LASF215
	.byte	0xa
	.value	0x17a
	.long	0xf75
	.byte	0x20
	.uleb128 0x15
	.long	.LASF197
	.byte	0xa
	.value	0x17b
	.long	0xf9b
	.byte	0x28
	.uleb128 0x15
	.long	.LASF216
	.byte	0xa
	.value	0x17c
	.long	0xfb1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LASF286
	.byte	0x4
	.byte	0xa
	.byte	0x8f
	.long	0xde9
	.uleb128 0xb
	.long	.LASF217
	.sleb128 0
	.uleb128 0xb
	.long	.LASF218
	.sleb128 1
	.uleb128 0xb
	.long	.LASF219
	.sleb128 2
	.uleb128 0xb
	.long	.LASF220
	.sleb128 3
	.uleb128 0xb
	.long	.LASF221
	.sleb128 4
	.uleb128 0xb
	.long	.LASF222
	.sleb128 5
	.uleb128 0xb
	.long	.LASF223
	.sleb128 6
	.uleb128 0xb
	.long	.LASF224
	.sleb128 7
	.uleb128 0xb
	.long	.LASF225
	.sleb128 8
	.uleb128 0xb
	.long	.LASF226
	.sleb128 9
	.uleb128 0xb
	.long	.LASF227
	.sleb128 10
	.uleb128 0xb
	.long	.LASF228
	.sleb128 11
	.uleb128 0xb
	.long	.LASF229
	.sleb128 12
	.uleb128 0xb
	.long	.LASF230
	.sleb128 13
	.uleb128 0xb
	.long	.LASF231
	.sleb128 14
	.uleb128 0xb
	.long	.LASF232
	.sleb128 15
	.uleb128 0xb
	.long	.LASF233
	.sleb128 16
	.uleb128 0xb
	.long	.LASF234
	.sleb128 17
	.uleb128 0xb
	.long	.LASF235
	.sleb128 18
	.uleb128 0xb
	.long	.LASF236
	.sleb128 19
	.uleb128 0xb
	.long	.LASF237
	.sleb128 20
	.uleb128 0xb
	.long	.LASF238
	.sleb128 21
	.uleb128 0xb
	.long	.LASF239
	.sleb128 22
	.uleb128 0xb
	.long	.LASF240
	.sleb128 23
	.uleb128 0xb
	.long	.LASF241
	.sleb128 24
	.uleb128 0xb
	.long	.LASF242
	.sleb128 25
	.uleb128 0xb
	.long	.LASF243
	.sleb128 26
	.uleb128 0xb
	.long	.LASF244
	.sleb128 27
	.uleb128 0xb
	.long	.LASF245
	.sleb128 28
	.uleb128 0xb
	.long	.LASF246
	.sleb128 29
	.uleb128 0xb
	.long	.LASF247
	.sleb128 30
	.uleb128 0xb
	.long	.LASF248
	.sleb128 31
	.uleb128 0xb
	.long	.LASF249
	.sleb128 32
	.uleb128 0xb
	.long	.LASF250
	.sleb128 33
	.uleb128 0xb
	.long	.LASF251
	.sleb128 34
	.uleb128 0xb
	.long	.LASF252
	.sleb128 35
	.uleb128 0xb
	.long	.LASF253
	.sleb128 36
	.uleb128 0xb
	.long	.LASF254
	.sleb128 37
	.uleb128 0xb
	.long	.LASF255
	.sleb128 38
	.uleb128 0xb
	.long	.LASF256
	.sleb128 39
	.uleb128 0xb
	.long	.LASF257
	.sleb128 40
	.uleb128 0xb
	.long	.LASF258
	.sleb128 41
	.uleb128 0xb
	.long	.LASF259
	.sleb128 42
	.uleb128 0xb
	.long	.LASF260
	.sleb128 43
	.uleb128 0xb
	.long	.LASF261
	.sleb128 44
	.uleb128 0xb
	.long	.LASF262
	.sleb128 45
	.uleb128 0xb
	.long	.LASF263
	.sleb128 46
	.uleb128 0xb
	.long	.LASF264
	.sleb128 47
	.uleb128 0xb
	.long	.LASF265
	.sleb128 48
	.uleb128 0xb
	.long	.LASF266
	.sleb128 49
	.uleb128 0xb
	.long	.LASF267
	.sleb128 50
	.uleb128 0xb
	.long	.LASF268
	.sleb128 51
	.uleb128 0xb
	.long	.LASF269
	.sleb128 52
	.uleb128 0xb
	.long	.LASF270
	.sleb128 53
	.uleb128 0xb
	.long	.LASF271
	.sleb128 54
	.uleb128 0xb
	.long	.LASF272
	.sleb128 55
	.uleb128 0xb
	.long	.LASF273
	.sleb128 56
	.uleb128 0xb
	.long	.LASF274
	.sleb128 57
	.uleb128 0xb
	.long	.LASF275
	.sleb128 58
	.uleb128 0xb
	.long	.LASF276
	.sleb128 59
	.uleb128 0xb
	.long	.LASF277
	.sleb128 60
	.uleb128 0xb
	.long	.LASF278
	.sleb128 61
	.uleb128 0xb
	.long	.LASF279
	.sleb128 62
	.uleb128 0xb
	.long	.LASF280
	.sleb128 63
	.uleb128 0xb
	.long	.LASF281
	.sleb128 64
	.uleb128 0xb
	.long	.LASF282
	.sleb128 65
	.uleb128 0xb
	.long	.LASF283
	.sleb128 66
	.uleb128 0xb
	.long	.LASF284
	.sleb128 67
	.uleb128 0xb
	.long	.LASF285
	.sleb128 68
	.byte	0
	.uleb128 0x1b
	.long	.LASF287
	.byte	0x4
	.byte	0xa
	.byte	0x98
	.long	0xe32
	.uleb128 0xb
	.long	.LASF288
	.sleb128 0
	.uleb128 0xb
	.long	.LASF289
	.sleb128 1
	.uleb128 0xb
	.long	.LASF290
	.sleb128 2
	.uleb128 0xb
	.long	.LASF291
	.sleb128 3
	.uleb128 0xb
	.long	.LASF292
	.sleb128 4
	.uleb128 0xb
	.long	.LASF293
	.sleb128 5
	.uleb128 0xb
	.long	.LASF294
	.sleb128 6
	.uleb128 0xb
	.long	.LASF295
	.sleb128 7
	.uleb128 0xb
	.long	.LASF296
	.sleb128 8
	.uleb128 0xb
	.long	.LASF297
	.sleb128 9
	.byte	0
	.uleb128 0x1c
	.byte	0x10
	.byte	0xa
	.byte	0xb4
	.long	0xe70
	.uleb128 0x1d
	.long	.LASF298
	.byte	0xa
	.byte	0xb6
	.long	0xe70
	.uleb128 0x1d
	.long	.LASF299
	.byte	0xa
	.byte	0xb7
	.long	0xe76
	.uleb128 0x1e
	.string	"str"
	.byte	0xa
	.byte	0xb8
	.long	0xab3
	.uleb128 0x1d
	.long	.LASF300
	.byte	0xa
	.byte	0xb9
	.long	0x3b
	.uleb128 0x1e
	.string	"c"
	.byte	0xa
	.byte	0xba
	.long	0x5d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xad8
	.uleb128 0x6
	.byte	0x8
	.long	0xe7c
	.uleb128 0x9
	.long	0xa51
	.uleb128 0x1f
	.long	.LASF305
	.uleb128 0x6
	.byte	0x8
	.long	0xe81
	.uleb128 0xe
	.long	.LASF301
	.byte	0x38
	.byte	0x1
	.byte	0x44
	.long	0xeed
	.uleb128 0xd
	.long	.LASF302
	.byte	0x1
	.byte	0x46
	.long	0xeed
	.byte	0
	.uleb128 0xd
	.long	.LASF303
	.byte	0x1
	.byte	0x4a
	.long	0xb7
	.byte	0x8
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0x4b
	.long	0x3b
	.byte	0x10
	.uleb128 0x13
	.string	"ino"
	.byte	0x1
	.byte	0x4e
	.long	0x143
	.byte	0x18
	.uleb128 0x13
	.string	"dev"
	.byte	0x1
	.byte	0x4f
	.long	0x14e
	.byte	0x20
	.uleb128 0xd
	.long	.LASF120
	.byte	0x1
	.byte	0x51
	.long	0x2d
	.byte	0x28
	.uleb128 0xd
	.long	.LASF304
	.byte	0x1
	.byte	0x54
	.long	0x10b9
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe8c
	.uleb128 0x1f
	.long	.LASF306
	.uleb128 0x6
	.byte	0x8
	.long	0xef3
	.uleb128 0x12
	.long	0xf13
	.uleb128 0x11
	.long	0xf13
	.uleb128 0x11
	.long	0xe76
	.uleb128 0x11
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6db
	.uleb128 0x6
	.byte	0x8
	.long	0xefe
	.uleb128 0x12
	.long	0xf2f
	.uleb128 0x11
	.long	0xf13
	.uleb128 0x11
	.long	0xf2f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf35
	.uleb128 0x9
	.long	0x621
	.uleb128 0x6
	.byte	0x8
	.long	0xf1f
	.uleb128 0x12
	.long	0xf5a
	.uleb128 0x11
	.long	0xf13
	.uleb128 0x11
	.long	0x3b
	.uleb128 0x11
	.long	0x340
	.uleb128 0x11
	.long	0xe76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf40
	.uleb128 0x12
	.long	0xf75
	.uleb128 0x11
	.long	0xf13
	.uleb128 0x11
	.long	0x3b
	.uleb128 0x11
	.long	0xe70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf60
	.uleb128 0x12
	.long	0xf90
	.uleb128 0x11
	.long	0xf13
	.uleb128 0x11
	.long	0x3b
	.uleb128 0x11
	.long	0xf90
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf96
	.uleb128 0x9
	.long	0xaa8
	.uleb128 0x6
	.byte	0x8
	.long	0xf7b
	.uleb128 0x12
	.long	0xfb1
	.uleb128 0x11
	.long	0xf13
	.uleb128 0x11
	.long	0x3b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfa1
	.uleb128 0x20
	.long	.LASF307
	.byte	0x4
	.byte	0xa
	.value	0x19a
	.long	0xfd7
	.uleb128 0xb
	.long	.LASF308
	.sleb128 0
	.uleb128 0xb
	.long	.LASF309
	.sleb128 1
	.uleb128 0xb
	.long	.LASF310
	.sleb128 2
	.byte	0
	.uleb128 0x20
	.long	.LASF311
	.byte	0x4
	.byte	0xa
	.value	0x1a3
	.long	0x1015
	.uleb128 0xb
	.long	.LASF312
	.sleb128 0
	.uleb128 0xb
	.long	.LASF313
	.sleb128 1
	.uleb128 0xb
	.long	.LASF314
	.sleb128 2
	.uleb128 0xb
	.long	.LASF315
	.sleb128 3
	.uleb128 0xb
	.long	.LASF316
	.sleb128 4
	.uleb128 0xb
	.long	.LASF317
	.sleb128 5
	.uleb128 0xb
	.long	.LASF318
	.sleb128 6
	.uleb128 0xb
	.long	.LASF319
	.sleb128 7
	.byte	0
	.uleb128 0x21
	.byte	0x8
	.byte	0xa
	.value	0x1c0
	.long	0x104f
	.uleb128 0x22
	.long	.LASF320
	.byte	0xa
	.value	0x1c2
	.long	0x104f
	.uleb128 0x22
	.long	.LASF321
	.byte	0xa
	.value	0x1c3
	.long	0x105a
	.uleb128 0x22
	.long	.LASF322
	.byte	0xa
	.value	0x1c4
	.long	0xc39
	.uleb128 0x22
	.long	.LASF323
	.byte	0xa
	.value	0x1c5
	.long	0xfd7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb4f
	.uleb128 0x1f
	.long	.LASF324
	.uleb128 0x6
	.byte	0x8
	.long	0x1055
	.uleb128 0x5
	.long	.LASF325
	.byte	0x1
	.byte	0x2f
	.long	0x106b
	.uleb128 0xe
	.long	.LASF325
	.byte	0x20
	.byte	0x1
	.byte	0x30
	.long	0x10a8
	.uleb128 0xd
	.long	.LASF302
	.byte	0x1
	.byte	0x32
	.long	0x10a8
	.byte	0
	.uleb128 0xd
	.long	.LASF326
	.byte	0x1
	.byte	0x33
	.long	0x10ae
	.byte	0x8
	.uleb128 0x13
	.string	"cur"
	.byte	0x1
	.byte	0x33
	.long	0x10ae
	.byte	0x10
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.byte	0x33
	.long	0x10ae
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x106b
	.uleb128 0x6
	.byte	0x8
	.long	0x5d
	.uleb128 0x1f
	.long	.LASF327
	.uleb128 0x6
	.byte	0x8
	.long	0x10b4
	.uleb128 0x23
	.long	.LASF425
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.long	0x10e2
	.uleb128 0x1d
	.long	.LASF328
	.byte	0x1
	.byte	0x5c
	.long	0xe76
	.uleb128 0x1d
	.long	.LASF329
	.byte	0x1
	.byte	0x5d
	.long	0x10e2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe76
	.uleb128 0x5
	.long	.LASF330
	.byte	0x1
	.byte	0x61
	.long	0x10f3
	.uleb128 0xe
	.long	.LASF330
	.byte	0x20
	.byte	0x1
	.byte	0x62
	.long	0x1130
	.uleb128 0xd
	.long	.LASF302
	.byte	0x1
	.byte	0x64
	.long	0x1130
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.byte	0x64
	.long	0x1130
	.byte	0x8
	.uleb128 0xd
	.long	.LASF326
	.byte	0x1
	.byte	0x65
	.long	0x1136
	.byte	0x10
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.byte	0x65
	.long	0x1136
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10e8
	.uleb128 0x6
	.byte	0x8
	.long	0xa51
	.uleb128 0x5
	.long	.LASF331
	.byte	0x1
	.byte	0x68
	.long	0x1147
	.uleb128 0xe
	.long	.LASF331
	.byte	0x38
	.byte	0x1
	.byte	0x69
	.long	0x11a8
	.uleb128 0xd
	.long	.LASF302
	.byte	0x1
	.byte	0x6c
	.long	0x11a8
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.byte	0x6c
	.long	0x11a8
	.byte	0x8
	.uleb128 0xd
	.long	.LASF332
	.byte	0x1
	.byte	0x70
	.long	0x10bf
	.byte	0x10
	.uleb128 0xd
	.long	.LASF333
	.byte	0x1
	.byte	0x71
	.long	0x10bf
	.byte	0x18
	.uleb128 0xd
	.long	.LASF334
	.byte	0x1
	.byte	0x75
	.long	0x11ae
	.byte	0x20
	.uleb128 0xd
	.long	.LASF320
	.byte	0x1
	.byte	0x78
	.long	0xe70
	.byte	0x28
	.uleb128 0xd
	.long	.LASF335
	.byte	0x1
	.byte	0x7b
	.long	0x6d4
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x113c
	.uleb128 0x6
	.byte	0x8
	.long	0x1060
	.uleb128 0xe
	.long	.LASF336
	.byte	0x9
	.byte	0x1
	.byte	0x7e
	.long	0x122d
	.uleb128 0xd
	.long	.LASF337
	.byte	0x1
	.byte	0x81
	.long	0x5d
	.byte	0
	.uleb128 0xd
	.long	.LASF338
	.byte	0x1
	.byte	0x84
	.long	0x5d
	.byte	0x1
	.uleb128 0xd
	.long	.LASF339
	.byte	0x1
	.byte	0x87
	.long	0x5d
	.byte	0x2
	.uleb128 0xd
	.long	.LASF340
	.byte	0x1
	.byte	0x8b
	.long	0x5d
	.byte	0x3
	.uleb128 0xd
	.long	.LASF341
	.byte	0x1
	.byte	0x8e
	.long	0x5d
	.byte	0x4
	.uleb128 0xd
	.long	.LASF342
	.byte	0x1
	.byte	0x91
	.long	0x5d
	.byte	0x5
	.uleb128 0xd
	.long	.LASF343
	.byte	0x1
	.byte	0x94
	.long	0x5d
	.byte	0x6
	.uleb128 0xd
	.long	.LASF344
	.byte	0x1
	.byte	0x97
	.long	0x5d
	.byte	0x7
	.uleb128 0xd
	.long	.LASF345
	.byte	0x1
	.byte	0x9a
	.long	0x5d
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF111
	.byte	0x28
	.byte	0x1
	.byte	0x9e
	.long	0x1276
	.uleb128 0xd
	.long	.LASF346
	.byte	0x1
	.byte	0xa0
	.long	0xe70
	.byte	0
	.uleb128 0xd
	.long	.LASF347
	.byte	0x1
	.byte	0xa1
	.long	0xe70
	.byte	0x8
	.uleb128 0xd
	.long	.LASF348
	.byte	0x1
	.byte	0xa2
	.long	0xe70
	.byte	0x10
	.uleb128 0xd
	.long	.LASF349
	.byte	0x1
	.byte	0xa3
	.long	0xe70
	.byte	0x18
	.uleb128 0xd
	.long	.LASF350
	.byte	0x1
	.byte	0xa4
	.long	0xe70
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6f1
	.uleb128 0x1f
	.long	.LASF351
	.uleb128 0x6
	.byte	0x8
	.long	0x127c
	.uleb128 0x1f
	.long	.LASF132
	.uleb128 0x6
	.byte	0x8
	.long	0x1287
	.uleb128 0x6
	.byte	0x8
	.long	0x6e6
	.uleb128 0x6
	.byte	0x8
	.long	0x1147
	.uleb128 0x1f
	.long	.LASF87
	.uleb128 0x6
	.byte	0x8
	.long	0x12a9
	.uleb128 0x9
	.long	0x129e
	.uleb128 0x6
	.byte	0x8
	.long	0x12b4
	.uleb128 0x9
	.long	0xad8
	.uleb128 0x1f
	.long	.LASF352
	.uleb128 0x6
	.byte	0x8
	.long	0x12b9
	.uleb128 0x1f
	.long	.LASF106
	.uleb128 0x6
	.byte	0x8
	.long	0x12c4
	.uleb128 0x1f
	.long	.LASF353
	.uleb128 0x6
	.byte	0x8
	.long	0x12cf
	.uleb128 0x6
	.byte	0x8
	.long	0x356
	.uleb128 0x24
	.long	.LASF354
	.byte	0x1
	.value	0x1ad
	.long	0x5d
	.uleb128 0x6
	.byte	0x8
	.long	0xe70
	.uleb128 0x5
	.long	.LASF355
	.byte	0x2
	.byte	0x2b
	.long	0x12fd
	.uleb128 0xe
	.long	.LASF355
	.byte	0x20
	.byte	0x2
	.byte	0x2c
	.long	0x1346
	.uleb128 0xd
	.long	.LASF332
	.byte	0x2
	.byte	0x2e
	.long	0x10e2
	.byte	0
	.uleb128 0xd
	.long	.LASF356
	.byte	0x2
	.byte	0x2f
	.long	0x10e2
	.byte	0x8
	.uleb128 0xd
	.long	.LASF357
	.byte	0x2
	.byte	0x30
	.long	0xe76
	.byte	0x10
	.uleb128 0xd
	.long	.LASF205
	.byte	0x2
	.byte	0x31
	.long	0x3b
	.byte	0x18
	.uleb128 0xd
	.long	.LASF358
	.byte	0x2
	.byte	0x32
	.long	0x3b
	.byte	0x1c
	.byte	0
	.uleb128 0x25
	.long	.LASF359
	.byte	0x1
	.value	0x1c0
	.long	0x2d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1392
	.uleb128 0x26
	.string	"s1"
	.byte	0x1
	.value	0x1c1
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"s2"
	.byte	0x1
	.value	0x1c1
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.value	0x1c2
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1398
	.uleb128 0x9
	.long	0x12e0
	.uleb128 0x25
	.long	.LASF360
	.byte	0x1
	.value	0x1c8
	.long	0x4b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x13ce
	.uleb128 0x26
	.string	"s1"
	.byte	0x1
	.value	0x1c9
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF361
	.byte	0x2
	.byte	0x5c
	.long	0xe76
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1428
	.uleb128 0x28
	.long	.LASF72
	.byte	0x2
	.byte	0x5d
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF195
	.byte	0x2
	.byte	0x5e
	.long	0x10ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"len"
	.byte	0x2
	.byte	0x5f
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF328
	.byte	0x2
	.byte	0x61
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF362
	.byte	0x2
	.byte	0x6d
	.long	0xe76
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1482
	.uleb128 0x28
	.long	.LASF72
	.byte	0x2
	.byte	0x6e
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF363
	.byte	0x2
	.byte	0x6f
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF328
	.byte	0x2
	.byte	0x71
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.byte	0x73
	.long	0x10ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF364
	.byte	0x2
	.byte	0x88
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1570
	.uleb128 0x28
	.long	.LASF72
	.byte	0x2
	.byte	0x89
	.long	0xf13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF298
	.byte	0x2
	.byte	0x8a
	.long	0xe70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF365
	.byte	0x2
	.byte	0x8c
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x151e
	.uleb128 0x2b
	.string	"len"
	.byte	0x2
	.byte	0x97
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF303
	.byte	0x2
	.byte	0x98
	.long	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"buf"
	.byte	0x2
	.byte	0x99
	.long	0x1570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"map"
	.byte	0x2
	.byte	0x9a
	.long	0xf2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1543
	.uleb128 0x2a
	.long	.LASF366
	.byte	0x2
	.byte	0xbb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2d
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2b
	.string	"tt"
	.byte	0x2
	.byte	0xc9
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"tb"
	.byte	0x2
	.byte	0xca
	.long	0x1576
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12e0
	.uleb128 0x6
	.byte	0x8
	.long	0x172
	.uleb128 0x2e
	.long	.LASF397
	.byte	0x2
	.byte	0xf6
	.long	0x10ae
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x15e6
	.uleb128 0x28
	.long	.LASF367
	.byte	0x2
	.byte	0xf7
	.long	0x1570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"src"
	.byte	0x2
	.byte	0xf8
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"len"
	.byte	0x2
	.byte	0xf9
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2b
	.string	"c"
	.byte	0x2
	.byte	0xfd
	.long	0x12e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF368
	.byte	0x2
	.value	0x116
	.long	0xe76
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x16fb
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x117
	.long	0xf13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.string	"arg"
	.byte	0x2
	.value	0x118
	.long	0x16fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF367
	.byte	0x2
	.value	0x11a
	.long	0x10ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"i"
	.byte	0x2
	.value	0x11b
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.long	.LASF369
	.byte	0x2
	.value	0x11b
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	.LASF370
	.byte	0x2
	.value	0x11b
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF299
	.byte	0x2
	.value	0x11c
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"len"
	.byte	0x2
	.value	0x11d
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x122
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x16c9
	.uleb128 0x30
	.long	.LASF371
	.byte	0x2
	.value	0x137
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x30
	.long	.LASF334
	.byte	0x2
	.value	0x148
	.long	0x11ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"buf"
	.byte	0x2
	.value	0x149
	.long	0x10ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12f2
	.uleb128 0x25
	.long	.LASF372
	.byte	0x2
	.value	0x168
	.long	0x6d4
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x179f
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x169
	.long	0xf13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF373
	.byte	0x2
	.value	0x16a
	.long	0x10e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.string	"rhs"
	.byte	0x2
	.value	0x16a
	.long	0xe76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"buf"
	.byte	0x2
	.value	0x16c
	.long	0x10ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"end"
	.byte	0x2
	.value	0x16c
	.long	0x10ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"lhs"
	.byte	0x2
	.value	0x16d
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"len"
	.byte	0x2
	.value	0x16e
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.long	.LASF374
	.byte	0x2
	.value	0x16f
	.long	0x6d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.byte	0
	.uleb128 0x32
	.long	.LASF386
	.byte	0x2
	.value	0x199
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x17fa
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x19a
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"lhs"
	.byte	0x2
	.value	0x19b
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"rhs"
	.byte	0x2
	.value	0x19d
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF86
	.byte	0x2
	.value	0x19e
	.long	0x11a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF375
	.byte	0x2
	.value	0x1c8
	.long	0x11ae
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x190f
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x1c9
	.long	0xf13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF298
	.byte	0x2
	.value	0x1ca
	.long	0x12ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF334
	.byte	0x2
	.value	0x1cc
	.long	0x11ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF376
	.byte	0x2
	.value	0x1cc
	.long	0x11ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF320
	.byte	0x2
	.value	0x1cd
	.long	0x104f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF377
	.byte	0x2
	.value	0x1ce
	.long	0x16fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"arg"
	.byte	0x2
	.value	0x1ce
	.long	0x16fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x1cf
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF378
	.byte	0x2
	.value	0x1d0
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	.LASF379
	.byte	0x2
	.value	0x1d1
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x2c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x18ec
	.uleb128 0x30
	.long	.LASF380
	.byte	0x2
	.value	0x1e5
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF381
	.byte	0x2
	.value	0x1e6
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2d
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x30
	.long	.LASF382
	.byte	0x2
	.value	0x229
	.long	0x6d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF383
	.byte	0x2
	.value	0x273
	.long	0x11ae
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x196e
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x274
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF298
	.byte	0x2
	.value	0x275
	.long	0xe70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x277
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF384
	.byte	0x2
	.value	0x277
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF385
	.byte	0x2
	.value	0x29d
	.long	0x2d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x19f1
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x29e
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF298
	.byte	0x2
	.value	0x29f
	.long	0xe70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x30
	.long	.LASF320
	.byte	0x2
	.value	0x2a9
	.long	0x104f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x30
	.long	.LASF334
	.byte	0x2
	.value	0x2ad
	.long	0x11ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF387
	.byte	0x2
	.value	0x2d8
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b2e
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x2d9
	.long	0xf13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF298
	.byte	0x2
	.value	0x2da
	.long	0xe70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF377
	.byte	0x2
	.value	0x2db
	.long	0x16fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.string	"i"
	.byte	0x2
	.value	0x2dd
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x30
	.long	.LASF388
	.byte	0x2
	.value	0x2dd
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.string	"src"
	.byte	0x2
	.value	0x2de
	.long	0xe76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF48
	.byte	0x2
	.value	0x2de
	.long	0xe76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF367
	.byte	0x2
	.value	0x2df
	.long	0x10e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF332
	.byte	0x2
	.value	0x2df
	.long	0x10e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"arg"
	.byte	0x2
	.value	0x2e0
	.long	0x16fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF334
	.byte	0x2
	.value	0x2e1
	.long	0x11ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF320
	.byte	0x2
	.value	0x2e2
	.long	0x104f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x30
	.long	.LASF205
	.byte	0x2
	.value	0x30e
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.long	.LASF389
	.byte	0x2
	.value	0x30f
	.long	0x10e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF390
	.byte	0x2
	.value	0x30f
	.long	0x10e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x34e
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF391
	.byte	0x2
	.value	0x363
	.long	0xe76
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b7e
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x364
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF299
	.byte	0x2
	.value	0x365
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF365
	.byte	0x2
	.value	0x367
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF392
	.byte	0x2
	.value	0x372
	.long	0x11a8
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bbf
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x373
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF365
	.byte	0x2
	.value	0x375
	.long	0x11a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF393
	.byte	0x2
	.value	0x385
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c39
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x386
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x2
	.value	0x387
	.long	0xe70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF334
	.byte	0x2
	.value	0x388
	.long	0x11ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF332
	.byte	0x2
	.value	0x389
	.long	0x10e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF205
	.byte	0x2
	.value	0x38a
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF86
	.byte	0x2
	.value	0x38c
	.long	0x11a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF394
	.byte	0x2
	.value	0x397
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ca3
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x398
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x2
	.value	0x399
	.long	0xe70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF332
	.byte	0x2
	.value	0x39a
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF205
	.byte	0x2
	.value	0x39b
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.long	.LASF86
	.byte	0x2
	.value	0x39d
	.long	0x11a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF395
	.byte	0x2
	.value	0x3ad
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d04
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x3ae
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"arg"
	.byte	0x2
	.value	0x3af
	.long	0x16fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF396
	.byte	0x2
	.value	0x3b1
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x3be
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF400
	.byte	0x2
	.value	0x3d6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d41
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x3d7
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF86
	.byte	0x2
	.value	0x3d9
	.long	0x11a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF398
	.byte	0x2
	.value	0x3f0
	.long	0xe76
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dd1
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x3f1
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF365
	.byte	0x2
	.value	0x3f3
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x30
	.long	.LASF298
	.byte	0x2
	.value	0x3f7
	.long	0xe70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF86
	.byte	0x2
	.value	0x3f8
	.long	0x11a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x31
	.string	"t"
	.byte	0x2
	.value	0x42a
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF399
	.byte	0x2
	.value	0x43b
	.long	0x2d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e12
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x43c
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF298
	.byte	0x2
	.value	0x43e
	.long	0xe70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF401
	.byte	0x2
	.value	0x446
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e40
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x447
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF402
	.byte	0x2
	.value	0x450
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e7d
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x451
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF205
	.byte	0x2
	.value	0x452
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x25
	.long	.LASF403
	.byte	0x2
	.value	0x472
	.long	0x2d
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eda
	.uleb128 0x2f
	.long	.LASF298
	.byte	0x2
	.value	0x473
	.long	0x12ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF404
	.byte	0x2
	.value	0x474
	.long	0x1eda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF405
	.byte	0x2
	.value	0x476
	.long	0x1eda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"i"
	.byte	0x2
	.value	0x477
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1ee0
	.uleb128 0x9
	.long	0xb4f
	.uleb128 0x37
	.long	.LASF406
	.byte	0x2
	.value	0x497
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f11
	.uleb128 0x26
	.string	"h"
	.byte	0x2
	.value	0x498
	.long	0xe70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF407
	.byte	0x2
	.value	0x4a3
	.long	0x2d
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f61
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x4a4
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x2
	.value	0x4a5
	.long	0x104f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF298
	.byte	0x2
	.value	0x4a6
	.long	0xe70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF408
	.byte	0x2
	.value	0x4ba
	.long	0x2d
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fd2
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x4bb
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x2
	.value	0x4bc
	.long	0x104f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF409
	.byte	0x2
	.value	0x4be
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x4c2
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF410
	.byte	0x2
	.value	0x501
	.long	0x1136
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2013
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x502
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x2
	.value	0x503
	.long	0x104f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF411
	.byte	0x2
	.value	0x50e
	.long	0x1136
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x2063
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x50f
	.long	0xf13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x2
	.value	0x510
	.long	0x104f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x512
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF412
	.byte	0x2
	.value	0x526
	.long	0x2d
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x211d
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x527
	.long	0xf13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF298
	.byte	0x2
	.value	0x528
	.long	0xe70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF320
	.byte	0x2
	.value	0x52a
	.long	0x104f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x52b
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF413
	.byte	0x2
	.value	0x52b
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF414
	.byte	0x2
	.value	0x52c
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"i"
	.byte	0x2
	.value	0x52d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"ok"
	.byte	0x2
	.value	0x52d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x38
	.long	.LASF415
	.byte	0x2
	.value	0x5b2
	.quad	.L240
	.uleb128 0x38
	.long	.LASF416
	.byte	0x2
	.value	0x5ac
	.quad	.L246
	.byte	0
	.uleb128 0x32
	.long	.LASF417
	.byte	0x2
	.value	0x5c1
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d2
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x5c2
	.long	0xf13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x2
	.value	0x5c3
	.long	0x1eda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF418
	.byte	0x2
	.value	0x5c4
	.long	0xf90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"i"
	.byte	0x2
	.value	0x5c6
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"len"
	.byte	0x2
	.value	0x5c6
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.string	"p"
	.byte	0x2
	.value	0x5c7
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"q"
	.byte	0x2
	.value	0x5c7
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF48
	.byte	0x2
	.value	0x5c7
	.long	0x1392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x30
	.long	.LASF298
	.byte	0x2
	.value	0x5db
	.long	0x12ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF419
	.byte	0x2
	.value	0x5ef
	.long	0x340
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x22ba
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x2
	.value	0x5f0
	.long	0xf13
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF298
	.byte	0x2
	.value	0x5f1
	.long	0x12ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"i"
	.byte	0x2
	.value	0x5f3
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"len"
	.byte	0x2
	.value	0x5f3
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.long	.LASF320
	.byte	0x2
	.value	0x5f4
	.long	0x1eda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF77
	.byte	0x2
	.value	0x5f5
	.long	0x10ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x2273
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x609
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2c
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x2298
	.uleb128 0x30
	.long	.LASF420
	.byte	0x2
	.value	0x626
	.long	0xe70
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x30
	.long	.LASF328
	.byte	0x2
	.value	0x642
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0xb7
	.long	0x22ca
	.uleb128 0x8
	.long	0x34
	.byte	0xb
	.byte	0
	.uleb128 0x2a
	.long	.LASF421
	.byte	0x2
	.byte	0x7d
	.long	0x22df
	.uleb128 0x9
	.byte	0x3
	.quad	monthnames
	.uleb128 0x9
	.long	0x22ba
	.uleb128 0x7
	.long	0x64
	.long	0x22f4
	.uleb128 0x8
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x39
	.long	.LASF426
	.byte	0xb
	.byte	0x48
	.long	0x22ff
	.uleb128 0x9
	.long	0x22e4
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF247:
	.string	"CPP_MULT_EQ"
.LASF313:
	.string	"BT_DATE"
.LASF53:
	.string	"chunk"
.LASF391:
	.string	"padding_token"
.LASF372:
	.string	"paste_tokens"
.LASF8:
	.string	"size_t"
.LASF338:
	.string	"skipping"
.LASF351:
	.string	"include_file"
.LASF0:
	.string	"sizetype"
.LASF38:
	.string	"tm_hour"
.LASF17:
	.string	"_sch_isprint"
.LASF92:
	.string	"base_run"
.LASF69:
	.string	"alloc_node"
.LASF341:
	.string	"lexing_comment"
.LASF123:
	.string	"used"
.LASF226:
	.string	"CPP_AND"
.LASF282:
	.string	"CPP_MACRO_ARG"
.LASF232:
	.string	"CPP_MAX"
.LASF114:
	.string	"line_map"
.LASF383:
	.string	"funlike_invocation_p"
.LASF321:
	.string	"answers"
.LASF115:
	.string	"to_file"
.LASF385:
	.string	"enter_macro_context"
.LASF397:
	.string	"cpp_quote_string"
.LASF408:
	.string	"parse_params"
.LASF24:
	.string	"_sch_isnvsp"
.LASF21:
	.string	"_sch_isxdigit"
.LASF32:
	.string	"dev_t"
.LASF112:
	.string	"print_version"
.LASF169:
	.string	"warn_system_headers"
.LASF142:
	.string	"out_fname"
.LASF47:
	.string	"_obstack_chunk"
.LASF33:
	.string	"time_t"
.LASF371:
	.string	"len_so_far"
.LASF258:
	.string	"CPP_PASTE"
.LASF95:
	.string	"keep_tokens"
.LASF423:
	.string	"cppmacro.c"
.LASF235:
	.string	"CPP_OR_OR"
.LASF331:
	.string	"cpp_context"
.LASF360:
	.string	"ustrlen"
.LASF78:
	.string	"state"
.LASF315:
	.string	"BT_BASE_FILE"
.LASF390:
	.string	"paste_flag"
.LASF204:
	.string	"expansion"
.LASF61:
	.string	"extra_arg"
.LASF349:
	.string	"n__STRICT_ANSI__"
.LASF239:
	.string	"CPP_OPEN_PAREN"
.LASF174:
	.string	"warn_traditional"
.LASF192:
	.string	"type"
.LASF170:
	.string	"inhibit_errors"
.LASF89:
	.string	"mi_ind_cmacro"
.LASF335:
	.string	"direct_p"
.LASF288:
	.string	"CLK_GNUC89"
.LASF75:
	.string	"hashnode"
.LASF345:
	.string	"parsing_args"
.LASF324:
	.string	"answer"
.LASF277:
	.string	"CPP_OTHER"
.LASF403:
	.string	"warn_of_redefinition"
.LASF191:
	.string	"cpp_token"
.LASF148:
	.string	"map_list"
.LASF168:
	.string	"inhibit_warnings"
.LASF254:
	.string	"CPP_LSHIFT_EQ"
.LASF176:
	.string	"no_output"
.LASF205:
	.string	"count"
.LASF263:
	.string	"CPP_SEMICOLON"
.LASF182:
	.string	"pedantic"
.LASF361:
	.string	"new_string_token"
.LASF9:
	.string	"__dev_t"
.LASF128:
	.string	"cpp_buffer"
.LASF325:
	.string	"_cpp_buff"
.LASF59:
	.string	"chunkfun"
.LASF365:
	.string	"result"
.LASF236:
	.string	"CPP_QUERY"
.LASF172:
	.string	"warn_trigraphs"
.LASF358:
	.string	"expanded_count"
.LASF289:
	.string	"CLK_GNUC99"
.LASF216:
	.string	"def_pragma"
.LASF84:
	.string	"free_buffs"
.LASF347:
	.string	"n_true"
.LASF50:
	.string	"contents"
.LASF66:
	.string	"hash_table"
.LASF330:
	.string	"tokenrun"
.LASF262:
	.string	"CPP_CLOSE_BRACE"
.LASF113:
	.string	"our_hashtable"
.LASF2:
	.string	"long int"
.LASF167:
	.string	"pedantic_errors"
.LASF276:
	.string	"CPP_WCHAR"
.LASF355:
	.string	"macro_arg"
.LASF255:
	.string	"CPP_MIN_EQ"
.LASF79:
	.string	"line_maps"
.LASF402:
	.string	"_cpp_backup_tokens"
.LASF234:
	.string	"CPP_AND_AND"
.LASF270:
	.string	"CPP_DEREF_STAR"
.LASF243:
	.string	"CPP_GREATER_EQ"
.LASF220:
	.string	"CPP_LESS"
.LASF392:
	.string	"next_context"
.LASF249:
	.string	"CPP_MOD_EQ"
.LASF71:
	.string	"nelements"
.LASF217:
	.string	"CPP_EQ"
.LASF18:
	.string	"_sch_ispunct"
.LASF280:
	.string	"CPP_HEADER_NAME"
.LASF379:
	.string	"error"
.LASF366:
	.string	"stdc"
.LASF166:
	.string	"print_include_names"
.LASF297:
	.string	"CLK_ASM"
.LASF421:
	.string	"monthnames"
.LASF359:
	.string	"ustrncmp"
.LASF107:
	.string	"hash_ob"
.LASF6:
	.string	"signed char"
.LASF281:
	.string	"CPP_COMMENT"
.LASF375:
	.string	"collect_args"
.LASF132:
	.string	"if_stack"
.LASF368:
	.string	"stringify_arg"
.LASF81:
	.string	"directive_line"
.LASF86:
	.string	"context"
.LASF416:
	.string	"cleanup1"
.LASF415:
	.string	"cleanup2"
.LASF350:
	.string	"n__VA_ARGS__"
.LASF312:
	.string	"BT_SPECLINE"
.LASF4:
	.string	"unsigned char"
.LASF246:
	.string	"CPP_MINUS_EQ"
.LASF141:
	.string	"in_fname"
.LASF346:
	.string	"n_defined"
.LASF196:
	.string	"cpp_hashnode"
.LASF267:
	.string	"CPP_DEREF"
.LASF411:
	.string	"lex_expansion_token"
.LASF127:
	.string	"_Bool"
.LASF116:
	.string	"to_line"
.LASF389:
	.string	"from"
.LASF424:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF201:
	.string	"value"
.LASF27:
	.string	"_sch_isidnum"
.LASF12:
	.string	"char"
.LASF126:
	.string	"trace_includes"
.LASF290:
	.string	"CLK_STDC89"
.LASF179:
	.string	"ignore_srcdir"
.LASF300:
	.string	"arg_no"
.LASF108:
	.string	"buffer_ob"
.LASF291:
	.string	"CLK_STDC94"
.LASF393:
	.string	"push_ptoken_context"
.LASF151:
	.string	"user_label_prefix"
.LASF399:
	.string	"cpp_sys_macro_p"
.LASF130:
	.string	"rlimit"
.LASF260:
	.string	"CPP_CLOSE_SQUARE"
.LASF197:
	.string	"ident"
.LASF307:
	.string	"node_type"
.LASF311:
	.string	"builtin_type"
.LASF187:
	.string	"dump_includes"
.LASF304:
	.string	"name_map"
.LASF76:
	.string	"cpp_reader"
.LASF96:
	.string	"errors"
.LASF85:
	.string	"base_context"
.LASF299:
	.string	"source"
.LASF292:
	.string	"CLK_STDC99"
.LASF193:
	.string	"flags"
.LASF212:
	.string	"file_change"
.LASF37:
	.string	"tm_min"
.LASF23:
	.string	"_sch_isvsp"
.LASF183:
	.string	"preprocessed"
.LASF58:
	.string	"alignment_mask"
.LASF87:
	.string	"directive"
.LASF149:
	.string	"include_prefix"
.LASF426:
	.string	"_sch_istable"
.LASF194:
	.string	"cpp_string"
.LASF298:
	.string	"node"
.LASF195:
	.string	"text"
.LASF369:
	.string	"escape_it"
.LASF101:
	.string	"all_include_files"
.LASF257:
	.string	"CPP_HASH"
.LASF382:
	.string	"step_back"
.LASF309:
	.string	"NT_MACRO"
.LASF261:
	.string	"CPP_OPEN_BRACE"
.LASF48:
	.string	"limit"
.LASF20:
	.string	"_sch_isupper"
.LASF102:
	.string	"max_include_len"
.LASF273:
	.string	"CPP_NAME"
.LASF14:
	.string	"_sch_iscntrl"
.LASF77:
	.string	"buffer"
.LASF213:
	.string	"include"
.LASF314:
	.string	"BT_FILE"
.LASF181:
	.string	"warn_undef"
.LASF171:
	.string	"warn_comments"
.LASF296:
	.string	"CLK_OBJCXX"
.LASF293:
	.string	"CLK_GNUCXX"
.LASF306:
	.string	"file_name_map_list"
.LASF175:
	.string	"warnings_are_errors"
.LASF165:
	.string	"print_deps_append"
.LASF36:
	.string	"tm_sec"
.LASF285:
	.string	"N_TTYPES"
.LASF44:
	.string	"tm_isdst"
.LASF52:
	.string	"chunk_size"
.LASF339:
	.string	"angled_headers"
.LASF327:
	.string	"file_name_map"
.LASF91:
	.string	"cur_token"
.LASF401:
	.string	"cpp_scan_nooutput"
.LASF121:
	.string	"maps"
.LASF405:
	.string	"macro1"
.LASF404:
	.string	"macro2"
.LASF157:
	.string	"objc"
.LASF31:
	.string	"ino_t"
.LASF370:
	.string	"backslash_count"
.LASF3:
	.string	"long unsigned int"
.LASF173:
	.string	"warn_import"
.LASF63:
	.string	"maybe_empty_object"
.LASF420:
	.string	"param"
.LASF320:
	.string	"macro"
.LASF54:
	.string	"object_base"
.LASF364:
	.string	"builtin_macro"
.LASF80:
	.string	"line"
.LASF83:
	.string	"u_buff"
.LASF253:
	.string	"CPP_RSHIFT_EQ"
.LASF30:
	.string	"_sch_isbasic"
.LASF122:
	.string	"allocated"
.LASF265:
	.string	"CPP_PLUS_PLUS"
.LASF256:
	.string	"CPP_MAX_EQ"
.LASF73:
	.string	"searches"
.LASF144:
	.string	"pending"
.LASF177:
	.string	"remap"
.LASF60:
	.string	"freefun"
.LASF162:
	.string	"print_deps"
.LASF381:
	.string	"ntokens"
.LASF378:
	.string	"argc"
.LASF317:
	.string	"BT_TIME"
.LASF264:
	.string	"CPP_ELLIPSIS"
.LASF377:
	.string	"args"
.LASF184:
	.string	"no_standard_includes"
.LASF308:
	.string	"NT_VOID"
.LASF219:
	.string	"CPP_GREATER"
.LASF224:
	.string	"CPP_DIV"
.LASF231:
	.string	"CPP_MIN"
.LASF64:
	.string	"alloc_failed"
.LASF225:
	.string	"CPP_MOD"
.LASF10:
	.string	"__ino_t"
.LASF301:
	.string	"search_path"
.LASF153:
	.string	"verbose"
.LASF72:
	.string	"pfile"
.LASF35:
	.string	"long long int"
.LASF356:
	.string	"expanded"
.LASF200:
	.string	"rid_code"
.LASF160:
	.string	"digraphs"
.LASF158:
	.string	"discard_comments"
.LASF348:
	.string	"n_false"
.LASF40:
	.string	"tm_mon"
.LASF387:
	.string	"replace_args"
.LASF227:
	.string	"CPP_OR"
.LASF400:
	.string	"_cpp_pop_context"
.LASF395:
	.string	"expand_arg"
.LASF211:
	.string	"line_change"
.LASF25:
	.string	"_sch_isalpha"
.LASF136:
	.string	"warned_cplusplus_comments"
.LASF67:
	.string	"stack"
.LASF163:
	.string	"deps_phony_targets"
.LASF105:
	.string	"avoid_paste"
.LASF125:
	.string	"depth"
.LASF111:
	.string	"spec_nodes"
.LASF406:
	.string	"_cpp_free_definition"
.LASF13:
	.string	"_sch_isblank"
.LASF334:
	.string	"buff"
.LASF117:
	.string	"from_line"
.LASF354:
	.string	"U_CHAR"
.LASF100:
	.string	"macro_buffer_len"
.LASF26:
	.string	"_sch_isalnum"
.LASF178:
	.string	"no_line_commands"
.LASF143:
	.string	"tabstop"
.LASF190:
	.string	"help_only"
.LASF340:
	.string	"save_comments"
.LASF230:
	.string	"CPP_LSHIFT"
.LASF1:
	.string	"unsigned int"
.LASF19:
	.string	"_sch_isspace"
.LASF274:
	.string	"CPP_NUMBER"
.LASF133:
	.string	"col_adjust"
.LASF51:
	.string	"obstack"
.LASF425:
	.string	"utoken"
.LASF110:
	.string	"opts"
.LASF407:
	.string	"save_parameter"
.LASF90:
	.string	"mi_valid"
.LASF396:
	.string	"capacity"
.LASF237:
	.string	"CPP_COLON"
.LASF394:
	.string	"push_token_context"
.LASF412:
	.string	"_cpp_create_definition"
.LASF29:
	.string	"_sch_iscppsp"
.LASF418:
	.string	"string"
.LASF222:
	.string	"CPP_MINUS"
.LASF388:
	.string	"total"
.LASF352:
	.string	"splay_tree_s"
.LASF188:
	.string	"show_column"
.LASF55:
	.string	"next_free"
.LASF332:
	.string	"first"
.LASF189:
	.string	"operator_names"
.LASF134:
	.string	"saved_flags"
.LASF422:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF357:
	.string	"stringified"
.LASF336:
	.string	"lexer_state"
.LASF275:
	.string	"CPP_CHAR"
.LASF302:
	.string	"next"
.LASF319:
	.string	"BT_PRAGMA"
.LASF250:
	.string	"CPP_AND_EQ"
.LASF16:
	.string	"_sch_islower"
.LASF106:
	.string	"deps"
.LASF97:
	.string	"mls_line"
.LASF109:
	.string	"pragmas"
.LASF221:
	.string	"CPP_PLUS"
.LASF209:
	.string	"syshdr"
.LASF39:
	.string	"tm_mday"
.LASF269:
	.string	"CPP_SCOPE"
.LASF223:
	.string	"CPP_MULT"
.LASF139:
	.string	"return_at_eof"
.LASF268:
	.string	"CPP_DOT"
.LASF414:
	.string	"ctoken"
.LASF206:
	.string	"paramc"
.LASF248:
	.string	"CPP_DIV_EQ"
.LASF120:
	.string	"sysp"
.LASF34:
	.string	"long long unsigned int"
.LASF294:
	.string	"CLK_CXX98"
.LASF203:
	.string	"params"
.LASF218:
	.string	"CPP_NOT"
.LASF131:
	.string	"line_base"
.LASF287:
	.string	"c_lang"
.LASF362:
	.string	"new_number_token"
.LASF259:
	.string	"CPP_OPEN_SQUARE"
.LASF238:
	.string	"CPP_COMMA"
.LASF228:
	.string	"CPP_XOR"
.LASF210:
	.string	"cpp_callbacks"
.LASF159:
	.string	"trigraphs"
.LASF118:
	.string	"included_from"
.LASF42:
	.string	"tm_wday"
.LASF119:
	.string	"reason"
.LASF43:
	.string	"tm_yday"
.LASF344:
	.string	"prevent_expansion"
.LASF251:
	.string	"CPP_OR_EQ"
.LASF138:
	.string	"search_cached"
.LASF11:
	.string	"__time_t"
.LASF398:
	.string	"cpp_get_token"
.LASF245:
	.string	"CPP_PLUS_EQ"
.LASF380:
	.string	"paren_depth"
.LASF367:
	.string	"dest"
.LASF154:
	.string	"signed_char"
.LASF15:
	.string	"_sch_isdigit"
.LASF156:
	.string	"cplusplus_comments"
.LASF104:
	.string	"time"
.LASF323:
	.string	"builtin"
.LASF363:
	.string	"number"
.LASF417:
	.string	"check_trad_stringification"
.LASF94:
	.string	"lookaheads"
.LASF413:
	.string	"saved_cur_token"
.LASF161:
	.string	"extended_numbers"
.LASF241:
	.string	"CPP_EQ_EQ"
.LASF62:
	.string	"use_extra_arg"
.LASF98:
	.string	"mls_col"
.LASF137:
	.string	"from_stage3"
.LASF155:
	.string	"cplusplus"
.LASF145:
	.string	"deps_file"
.LASF303:
	.string	"name"
.LASF140:
	.string	"cpp_options"
.LASF337:
	.string	"in_directive"
.LASF233:
	.string	"CPP_COMPL"
.LASF45:
	.string	"tm_gmtoff"
.LASF266:
	.string	"CPP_MINUS_MINUS"
.LASF7:
	.string	"short int"
.LASF286:
	.string	"cpp_ttype"
.LASF185:
	.string	"no_standard_cplusplus_includes"
.LASF152:
	.string	"lang"
.LASF180:
	.string	"dollars_in_ident"
.LASF207:
	.string	"fun_like"
.LASF129:
	.string	"backup_to"
.LASF70:
	.string	"nslots"
.LASF353:
	.string	"pragma_entry"
.LASF215:
	.string	"undef"
.LASF124:
	.string	"last_listed"
.LASF93:
	.string	"cur_run"
.LASF295:
	.string	"CLK_OBJC"
.LASF28:
	.string	"_sch_isgraph"
.LASF82:
	.string	"a_buff"
.LASF410:
	.string	"alloc_expansion_token"
.LASF374:
	.string	"valid"
.LASF46:
	.string	"tm_zone"
.LASF409:
	.string	"prev_ident"
.LASF373:
	.string	"plhs"
.LASF419:
	.string	"cpp_macro_definition"
.LASF284:
	.string	"CPP_EOF"
.LASF242:
	.string	"CPP_NOT_EQ"
.LASF279:
	.string	"CPP_WSTRING"
.LASF318:
	.string	"BT_STDC"
.LASF240:
	.string	"CPP_CLOSE_PAREN"
.LASF343:
	.string	"poisoned_ok"
.LASF384:
	.string	"padding"
.LASF244:
	.string	"CPP_LESS_EQ"
.LASF22:
	.string	"_sch_isidst"
.LASF229:
	.string	"CPP_RSHIFT"
.LASF199:
	.string	"directive_index"
.LASF150:
	.string	"include_prefix_len"
.LASF74:
	.string	"collisions"
.LASF310:
	.string	"NT_ASSERTION"
.LASF283:
	.string	"CPP_PADDING"
.LASF99:
	.string	"macro_buffer"
.LASF328:
	.string	"token"
.LASF271:
	.string	"CPP_DOT_STAR"
.LASF272:
	.string	"CPP_ATSIGN"
.LASF376:
	.string	"base_buff"
.LASF386:
	.string	"paste_all_tokens"
.LASF41:
	.string	"tm_year"
.LASF5:
	.string	"short unsigned int"
.LASF56:
	.string	"chunk_limit"
.LASF147:
	.string	"bracket_include"
.LASF326:
	.string	"base"
.LASF202:
	.string	"cpp_macro"
.LASF186:
	.string	"dump_macros"
.LASF68:
	.string	"entries"
.LASF278:
	.string	"CPP_STRING"
.LASF208:
	.string	"variadic"
.LASF146:
	.string	"quote_include"
.LASF342:
	.string	"va_args_ok"
.LASF135:
	.string	"last_Wtrigraphs"
.LASF57:
	.string	"temp"
.LASF198:
	.string	"arg_index"
.LASF214:
	.string	"define"
.LASF65:
	.string	"ht_identifier"
.LASF322:
	.string	"operator"
.LASF305:
	.string	"cpp_pending"
.LASF164:
	.string	"print_deps_missing_files"
.LASF103:
	.string	"date"
.LASF329:
	.string	"ptoken"
.LASF49:
	.string	"prev"
.LASF88:
	.string	"mi_cmacro"
.LASF252:
	.string	"CPP_XOR_EQ"
.LASF316:
	.string	"BT_INCLUDE_LEVEL"
.LASF333:
	.string	"last"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
