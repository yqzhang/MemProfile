	.file	"cppexp.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cppexp.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.align 16
	.type	vsuf_1, @object
	.size	vsuf_1, 24
vsuf_1:
# s:
	.string	"u"
	.zero	2
# u:
	.byte	1
# l:
	.byte	0
# s:
	.string	"U"
	.zero	2
# u:
	.byte	1
# l:
	.byte	0
# s:
	.string	"l"
	.zero	2
# u:
	.byte	0
# l:
	.byte	1
# s:
	.string	"L"
	.zero	2
# u:
	.byte	0
# l:
	.byte	1
	.align 32
	.type	vsuf_2, @object
	.size	vsuf_2, 60
vsuf_2:
# s:
	.string	"ul"
	.zero	1
# u:
	.byte	1
# l:
	.byte	1
# s:
	.string	"UL"
	.zero	1
# u:
	.byte	1
# l:
	.byte	1
# s:
	.string	"uL"
	.zero	1
# u:
	.byte	1
# l:
	.byte	1
# s:
	.string	"Ul"
	.zero	1
# u:
	.byte	1
# l:
	.byte	1
# s:
	.string	"lu"
	.zero	1
# u:
	.byte	1
# l:
	.byte	1
# s:
	.string	"LU"
	.zero	1
# u:
	.byte	1
# l:
	.byte	1
# s:
	.string	"Lu"
	.zero	1
# u:
	.byte	1
# l:
	.byte	1
# s:
	.string	"lU"
	.zero	1
# u:
	.byte	1
# l:
	.byte	1
# s:
	.string	"ll"
	.zero	1
# u:
	.byte	0
# l:
	.byte	2
# s:
	.string	"LL"
	.zero	1
# u:
	.byte	0
# l:
	.byte	2
	.align 32
	.type	vsuf_3, @object
	.size	vsuf_3, 48
vsuf_3:
# s:
	.string	"ull"
# u:
	.byte	1
# l:
	.byte	2
# s:
	.string	"ULL"
# u:
	.byte	1
# l:
	.byte	2
# s:
	.string	"uLL"
# u:
	.byte	1
# l:
	.byte	2
# s:
	.string	"Ull"
# u:
	.byte	1
# l:
	.byte	2
# s:
	.string	"llu"
# u:
	.byte	1
# l:
	.byte	2
# s:
	.string	"LLU"
# u:
	.byte	1
# l:
	.byte	2
# s:
	.string	"LLu"
# u:
	.byte	1
# l:
	.byte	2
# s:
	.string	"llU"
# u:
	.byte	1
# l:
	.byte	2
	.align 8
.LC0:
	.string	"floating point numbers are not valid in #if"
	.align 8
.LC1:
	.string	"traditional C rejects the `U' suffix"
	.align 8
.LC2:
	.string	"too many 'l' suffixes in integer constant"
	.align 8
.LC3:
	.string	"integer constant contains digits beyond the radix"
.LC4:
	.string	"integer constant out of range"
	.align 8
.LC5:
	.string	"integer constant is so large that it is unsigned"
	.align 8
.LC6:
	.string	"invalid suffix '%.*s' on integer constant"
	.text
	.type	parse_number, @function
parse_number:
.LFB8:
	.file 1 "cppexp.c"
	.loc 1 95 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# pfile, pfile
	movq	%rsi, -144(%rbp)	# tok, tok
	.loc 1 97 0
	movq	-144(%rbp), %rax	# tok, tmp133
	movq	16(%rax), %rax	# tok_14(D)->val.str.text, tmp134
	movq	%rax, -64(%rbp)	# tmp134, start
	.loc 1 98 0
	movq	-144(%rbp), %rax	# tok, tmp135
	movl	8(%rax), %eax	# tok_14(D)->val.str.len, D.8373
	movl	%eax, %edx	# D.8373, D.8374
	movq	-64(%rbp), %rax	# start, tmp139
	addq	%rdx, %rax	# D.8374, tmp138
	movq	%rax, -56(%rbp)	# tmp138, end
	.loc 1 99 0
	movq	-64(%rbp), %rax	# start, tmp140
	movq	%rax, -88(%rbp)	# tmp140, p
	.loc 1 100 0
	movl	$0, -116(%rbp)	#, c
	.loc 1 101 0
	movq	$0, -80(%rbp)	#, n
	.loc 1 102 0
	movl	$10, -104(%rbp)	#, base
	.loc 1 103 0
	movl	$0, -100(%rbp)	#, overflow
	.loc 1 104 0
	movl	$0, -96(%rbp)	#, largest_digit
	.loc 1 107 0
	movb	$0, -26(%rbp)	#, op.unsignedp
	.loc 1 109 0
	movq	-88(%rbp), %rax	# p, tmp141
	movzbl	(%rax), %eax	# *p_19, D.8375
	cmpb	$48, %al	#, D.8375
	jne	.L2	#,
	.loc 1 111 0
	movq	-56(%rbp), %rdx	# end, end.0
	movq	-64(%rbp), %rax	# start, start.1
	subq	%rax, %rdx	# start.1, D.8376
	movq	%rdx, %rax	# D.8376, D.8376
	cmpq	$2, %rax	#, D.8376
	jle	.L3	#,
	.loc 1 111 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# p, tmp142
	addq	$1, %rax	#, D.8377
	movzbl	(%rax), %eax	# *_29, D.8375
	cmpb	$120, %al	#, D.8375
	je	.L4	#,
	movq	-88(%rbp), %rax	# p, tmp143
	addq	$1, %rax	#, D.8377
	movzbl	(%rax), %eax	# *_31, D.8375
	cmpb	$88, %al	#, D.8375
	jne	.L3	#,
.L4:
	.loc 1 113 0 is_stmt 1
	addq	$2, -88(%rbp)	#, p
	.loc 1 114 0
	movl	$16, -104(%rbp)	#, base
	jmp	.L2	#
.L3:
	.loc 1 118 0
	addq	$1, -88(%rbp)	#, p
	.loc 1 119 0
	movl	$8, -104(%rbp)	#, base
.L2:
	.loc 1 125 0
	movl	-104(%rbp), %eax	# base, tmp144
	movslq	%eax, %rbx	# tmp144, D.8378
	.loc 1 124 0
	movq	$-1, %rax	#, tmp147
	movl	$0, %edx	#, tmp146
	divq	%rbx	# D.8378
	movq	%rax, -48(%rbp)	# tmp145, MAX_over_base
	.loc 1 127 0
	jmp	.L5	#
.L12:
	.loc 1 129 0
	movq	-88(%rbp), %rax	# p, tmp148
	movzbl	(%rax), %eax	# *p_2, D.8375
	movzbl	%al, %eax	# D.8375, tmp149
	movl	%eax, -116(%rbp)	# tmp149, c
	.loc 1 131 0
	movl	-116(%rbp), %eax	# c, tmp150
	movzbl	%al, %eax	# tmp150, D.8379
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.8380
	movzwl	%ax, %eax	# D.8380, D.8379
	andl	$4, %eax	#, D.8379
	testl	%eax, %eax	# D.8379
	jne	.L6	#,
	.loc 1 132 0
	cmpl	$16, -104(%rbp)	#, base
	jne	.L7	#,
	.loc 1 132 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# c, tmp152
	movzbl	%al, %eax	# tmp152, D.8379
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.8380
	movzwl	%ax, %eax	# D.8380, D.8379
	andl	$256, %eax	#, D.8379
	testl	%eax, %eax	# D.8379
	je	.L7	#,
.L6:
	.loc 1 133 0 is_stmt 1
	movl	-116(%rbp), %eax	# c, tmp154
	movzbl	%al, %eax	# D.8375, D.8379
	cltq
	movzbl	_hex_value(%rax), %eax	# _hex_value, D.8381
	movsbl	%al, %eax	# D.8381, tmp156
	movl	%eax, -92(%rbp)	# tmp156, digit
	.loc 1 137 0
	movl	-96(%rbp), %eax	# largest_digit, tmp157
	cmpl	-92(%rbp), %eax	# digit, tmp157
	jge	.L8	#,
	.loc 1 138 0
	movl	-92(%rbp), %eax	# digit, tmp158
	movl	%eax, -96(%rbp)	# tmp158, largest_digit
.L8:
	.loc 1 139 0
	movl	-104(%rbp), %eax	# base, tmp159
	cltq
	imulq	-80(%rbp), %rax	# n, D.8378
	movq	%rax, %rdx	# D.8378, D.8378
	movl	-92(%rbp), %eax	# digit, tmp160
	cltq
	addq	%rdx, %rax	# D.8378, tmp161
	movq	%rax, -40(%rbp)	# tmp161, nd
	.loc 1 140 0
	movq	-48(%rbp), %rax	# MAX_over_base, tmp162
	cmpq	-80(%rbp), %rax	# n, tmp162
	jb	.L9	#,
	.loc 1 140 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# nd, tmp163
	cmpq	-80(%rbp), %rax	# n, tmp163
	jae	.L10	#,
.L9:
	.loc 1 140 0 discriminator 1
	movl	$1, %eax	#, iftmp.2
	jmp	.L11	#
.L10:
	.loc 1 140 0 discriminator 3
	movl	$0, %eax	#, iftmp.2
.L11:
	.loc 1 140 0 discriminator 4
	orl	%eax, -100(%rbp)	# iftmp.2, overflow
	.loc 1 141 0 is_stmt 1 discriminator 4
	movq	-40(%rbp), %rax	# nd, tmp164
	movq	%rax, -80(%rbp)	# tmp164, n
	.loc 1 127 0 discriminator 4
	addq	$1, -88(%rbp)	#, p
.L5:
	.loc 1 127 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# p, tmp165
	cmpq	-56(%rbp), %rax	# end, tmp165
	jb	.L12	#,
.L7:
	.loc 1 144 0 is_stmt 1
	movq	-88(%rbp), %rax	# p, tmp166
	cmpq	-56(%rbp), %rax	# end, tmp166
	jae	.L13	#,
	.loc 1 149 0
	cmpl	$46, -116(%rbp)	#, c
	je	.L14	#,
	.loc 1 149 0 is_stmt 0 discriminator 1
	cmpl	$70, -116(%rbp)	#, c
	je	.L14	#,
	cmpl	$102, -116(%rbp)	#, c
	je	.L14	#,
	.loc 1 150 0 is_stmt 1
	cmpl	$10, -104(%rbp)	#, base
	jne	.L15	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	cmpl	$69, -116(%rbp)	#, c
	je	.L16	#,
	cmpl	$101, -116(%rbp)	#, c
	jne	.L15	#,
.L16:
	.loc 1 151 0 is_stmt 1
	movq	-88(%rbp), %rax	# p, tmp167
	addq	$1, %rax	#, D.8377
	cmpq	-56(%rbp), %rax	# end, D.8377
	jae	.L15	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# p, tmp168
	addq	$1, %rax	#, D.8377
	movzbl	(%rax), %eax	# *_64, D.8375
	cmpb	$43, %al	#, D.8375
	je	.L14	#,
	movq	-88(%rbp), %rax	# p, tmp169
	addq	$1, %rax	#, D.8377
	movzbl	(%rax), %eax	# *_66, D.8375
	cmpb	$45, %al	#, D.8375
	je	.L14	#,
.L15:
	.loc 1 152 0 is_stmt 1
	cmpl	$16, -104(%rbp)	#, base
	jne	.L17	#,
	.loc 1 152 0 is_stmt 0 discriminator 1
	cmpl	$80, -116(%rbp)	#, c
	je	.L18	#,
	cmpl	$112, -116(%rbp)	#, c
	jne	.L17	#,
.L18:
	.loc 1 153 0 is_stmt 1
	movq	-88(%rbp), %rax	# p, tmp170
	addq	$1, %rax	#, D.8377
	cmpq	-56(%rbp), %rax	# end, D.8377
	jae	.L17	#,
	.loc 1 153 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# p, tmp171
	addq	$1, %rax	#, D.8377
	movzbl	(%rax), %eax	# *_69, D.8375
	cmpb	$43, %al	#, D.8375
	je	.L14	#,
	movq	-88(%rbp), %rax	# p, tmp172
	addq	$1, %rax	#, D.8377
	movzbl	(%rax), %eax	# *_71, D.8375
	cmpb	$45, %al	#, D.8375
	jne	.L17	#,
.L14:
	.loc 1 154 0 is_stmt 1
	movq	-136(%rbp), %rax	# pfile, tmp173
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp173,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L19	#
.L17:
	.loc 1 158 0
	movq	-56(%rbp), %rdx	# end, end.3
	movq	-88(%rbp), %rax	# p, p.4
	subq	%rax, %rdx	# p.4, D.8376
	movq	%rdx, %rax	# D.8376, D.8376
	cmpq	$2, %rax	#, D.8376
	je	.L21	#,
	cmpq	$3, %rax	#, D.8376
	je	.L22	#,
	cmpq	$1, %rax	#, D.8376
	je	.L23	#,
	.loc 1 163 0
	jmp	.L25	#
.L23:
	.loc 1 160 0
	movq	$vsuf_1, -72(%rbp)	#, sufftab
	movl	$4, -108(%rbp)	#, nsuff
	jmp	.L24	#
.L21:
	.loc 1 161 0
	movq	$vsuf_2, -72(%rbp)	#, sufftab
	movl	$10, -108(%rbp)	#, nsuff
	jmp	.L24	#
.L22:
	.loc 1 162 0
	movq	$vsuf_3, -72(%rbp)	#, sufftab
	movl	$8, -108(%rbp)	#, nsuff
	nop
.L24:
	.loc 1 166 0
	movl	$0, -112(%rbp)	#, i
	jmp	.L26	#
.L29:
	.loc 1 167 0
	movq	-56(%rbp), %rdx	# end, end.5
	movq	-88(%rbp), %rax	# p, p.6
	subq	%rax, %rdx	# p.6, D.8376
	movq	%rdx, %rax	# D.8376, D.8376
	movq	%rax, %rsi	# D.8376, D.8378
	movl	-112(%rbp), %eax	# i, tmp174
	movslq	%eax, %rdx	# tmp174, D.8378
	movq	%rdx, %rax	# D.8378, tmp175
	addq	%rax, %rax	# tmp175
	addq	%rdx, %rax	# D.8378, tmp175
	addq	%rax, %rax	# tmp176
	movq	%rax, %rdx	# tmp175, D.8378
	movq	-72(%rbp), %rax	# sufftab, tmp177
	addq	%rdx, %rax	# D.8378, D.8382
	movq	%rax, %rcx	# D.8382, D.8383
	movq	-88(%rbp), %rax	# p, tmp178
	movq	%rsi, %rdx	# D.8378,
	movq	%rcx, %rsi	# D.8383,
	movq	%rax, %rdi	# tmp178,
	call	memcmp	#
	testl	%eax, %eax	# D.8379
	jne	.L27	#,
	.loc 1 168 0
	jmp	.L28	#
.L27:
	.loc 1 166 0
	addl	$1, -112(%rbp)	#, i
.L26:
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	-112(%rbp), %eax	# i, tmp179
	cmpl	-108(%rbp), %eax	# nsuff, tmp179
	jl	.L29	#,
.L28:
	.loc 1 169 0 is_stmt 1
	movl	-112(%rbp), %eax	# i, tmp180
	cmpl	-108(%rbp), %eax	# nsuff, tmp180
	jne	.L30	#,
	.loc 1 170 0
	jmp	.L25	#
.L30:
	.loc 1 171 0
	movl	-112(%rbp), %eax	# i, tmp181
	movslq	%eax, %rdx	# tmp181, D.8378
	movq	%rdx, %rax	# D.8378, tmp182
	addq	%rax, %rax	# tmp182
	addq	%rdx, %rax	# D.8378, tmp182
	addq	%rax, %rax	# tmp183
	movq	%rax, %rdx	# tmp182, D.8378
	movq	-72(%rbp), %rax	# sufftab, tmp184
	addq	%rdx, %rax	# D.8378, D.8382
	movzbl	4(%rax), %eax	# _95->u, D.8375
	movb	%al, -26(%rbp)	# D.8375, op.unsignedp
	.loc 1 173 0
	movq	-136(%rbp), %rax	# pfile, tmp185
	movzbl	761(%rax), %eax	# pfile_97(D)->opts.warn_traditional, D.8375
	testb	%al, %al	# D.8375
	je	.L31	#,
	.loc 1 174 0
	movl	-112(%rbp), %eax	# i, tmp186
	movslq	%eax, %rdx	# tmp186, D.8378
	movq	%rdx, %rax	# D.8378, tmp187
	addq	%rax, %rax	# tmp187
	addq	%rdx, %rax	# D.8378, tmp187
	addq	%rax, %rax	# tmp188
	movq	%rax, %rdx	# tmp187, D.8378
	movq	-72(%rbp), %rax	# sufftab, tmp189
	addq	%rdx, %rax	# D.8378, D.8382
	movzbl	4(%rax), %eax	# _101->u, D.8375
	testb	%al, %al	# D.8375
	je	.L31	#,
	.loc 1 175 0
	movq	-136(%rbp), %rax	# pfile, tmp190
	movq	%rax, %rdi	# tmp190,
	call	cpp_sys_macro_p	#
	testl	%eax, %eax	# D.8379
	jne	.L31	#,
	.loc 1 176 0
	movq	-136(%rbp), %rax	# pfile, tmp191
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp191,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L31:
	.loc 1 177 0
	movl	-112(%rbp), %eax	# i, tmp192
	movslq	%eax, %rdx	# tmp192, D.8378
	movq	%rdx, %rax	# D.8378, tmp193
	addq	%rax, %rax	# tmp193
	addq	%rdx, %rax	# D.8378, tmp193
	addq	%rax, %rax	# tmp194
	movq	%rax, %rdx	# tmp193, D.8378
	movq	-72(%rbp), %rax	# sufftab, tmp195
	addq	%rdx, %rax	# D.8378, D.8382
	movzbl	5(%rax), %eax	# _106->l, D.8375
	cmpb	$2, %al	#, D.8375
	jne	.L13	#,
	.loc 1 177 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# pfile, tmp196
	movzbl	770(%rax), %eax	# pfile_97(D)->opts.pedantic, D.8375
	testb	%al, %al	# D.8375
	je	.L13	#,
	.loc 1 178 0 is_stmt 1
	movq	-136(%rbp), %rax	# pfile, tmp197
	movzbl	769(%rax), %eax	# pfile_97(D)->opts.c99, D.8375
	testb	%al, %al	# D.8375
	jne	.L13	#,
	.loc 1 179 0
	movq	-136(%rbp), %rax	# pfile, tmp198
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp198,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L13:
	.loc 1 182 0
	movl	-104(%rbp), %eax	# base, tmp199
	cmpl	-96(%rbp), %eax	# largest_digit, tmp199
	jg	.L32	#,
	.loc 1 183 0
	movq	-136(%rbp), %rax	# pfile, tmp200
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp200,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L32:
	.loc 1 185 0
	cmpl	$0, -100(%rbp)	#, overflow
	je	.L33	#,
	.loc 1 186 0
	movq	-136(%rbp), %rax	# pfile, tmp201
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp201,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
	jmp	.L34	#
.L33:
	.loc 1 189 0
	movq	-80(%rbp), %rax	# n, n.7
	testq	%rax, %rax	# n.7
	jns	.L34	#,
	.loc 1 189 0 is_stmt 0 discriminator 1
	movzbl	-26(%rbp), %eax	# op.unsignedp, D.8375
	testb	%al, %al	# D.8375
	jne	.L34	#,
	.loc 1 191 0 is_stmt 1
	cmpl	$10, -104(%rbp)	#, base
	jne	.L35	#,
	.loc 1 192 0
	movq	-136(%rbp), %rax	# pfile, tmp202
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp202,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L35:
	.loc 1 193 0
	movb	$1, -26(%rbp)	#, op.unsignedp
.L34:
	.loc 1 196 0
	movq	-80(%rbp), %rax	# n, n.8
	movq	%rax, -24(%rbp)	# n.8, op.value
	.loc 1 197 0
	movl	$57, -32(%rbp)	#, op.op
	.loc 1 198 0
	movq	-32(%rbp), %rax	# op, D.7829
	movq	-24(%rbp), %rdx	# op, D.7829
	jmp	.L37	#
.L25:
	.loc 1 202 0
	movq	-56(%rbp), %rdx	# end, end.9
	movq	-88(%rbp), %rax	# p, p.10
	subq	%rax, %rdx	# p.10, D.8376
	movq	%rdx, %rax	# D.8376, D.8376
	.loc 1 201 0
	movl	%eax, %edx	# D.8376, D.8379
	movq	-88(%rbp), %rcx	# p, tmp203
	movq	-136(%rbp), %rax	# pfile, tmp204
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp204,
	movl	$0, %eax	#,
	call	cpp_error	#
.L19:
	.loc 1 204 0
	movl	$64, -32(%rbp)	#, op.op
	.loc 1 205 0
	movq	-32(%rbp), %rax	# op, D.7829
	movq	-24(%rbp), %rdx	# op, D.7829
.L37:
	.loc 1 206 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	parse_number, .-parse_number
	.section	.rodata
.LC7:
	.string	"missing ')' after \"defined\""
	.align 8
.LC8:
	.string	"operator \"defined\" requires an identifier"
	.align 8
.LC9:
	.string	"(\"%s\" is an alternative token for \"%s\" in C++)"
	.align 8
.LC10:
	.string	"this use of \"defined\" may not be portable"
	.text
	.type	parse_defined, @function
parse_defined:
.LFB9:
	.loc 1 212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# pfile, pfile
	.loc 1 213 0
	movl	$0, -76(%rbp)	#, paren
	.loc 1 214 0
	movq	$0, -72(%rbp)	#, node
	.loc 1 217 0
	movq	-88(%rbp), %rax	# pfile, tmp79
	movq	152(%rax), %rax	# pfile_7(D)->context, tmp80
	movq	%rax, -56(%rbp)	# tmp80, initial_context
	.loc 1 220 0
	movq	-88(%rbp), %rax	# pfile, tmp81
	movzbl	15(%rax), %eax	# pfile_7(D)->state.prevent_expansion, D.8392
	leal	1(%rax), %edx	#, D.8392
	movq	-88(%rbp), %rax	# pfile, tmp82
	movb	%dl, 15(%rax)	# D.8392, pfile_7(D)->state.prevent_expansion
	.loc 1 222 0
	movq	-88(%rbp), %rax	# pfile, tmp83
	movq	%rax, %rdi	# tmp83,
	call	cpp_get_token	#
	movq	%rax, -64(%rbp)	# tmp84, token
	.loc 1 223 0
	movq	-64(%rbp), %rax	# token, tmp85
	movzbl	6(%rax), %eax	# token_12->type, D.8392
	cmpb	$22, %al	#, D.8392
	jne	.L39	#,
	.loc 1 225 0
	movl	$1, -76(%rbp)	#, paren
	.loc 1 226 0
	movq	-88(%rbp), %rax	# pfile, tmp86
	movq	%rax, %rdi	# tmp86,
	call	cpp_get_token	#
	movq	%rax, -64(%rbp)	# tmp87, token
.L39:
	.loc 1 229 0
	movq	-64(%rbp), %rax	# token, tmp88
	movzbl	6(%rax), %eax	# token_4->type, D.8392
	cmpb	$56, %al	#, D.8392
	jne	.L40	#,
	.loc 1 231 0
	movq	-64(%rbp), %rax	# token, tmp89
	movq	8(%rax), %rax	# token_4->val.node, tmp90
	movq	%rax, -72(%rbp)	# tmp90, node
	.loc 1 232 0
	cmpl	$0, -76(%rbp)	#, paren
	je	.L42	#,
	.loc 1 232 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# pfile, tmp91
	movq	%rax, %rdi	# tmp91,
	call	cpp_get_token	#
	movzbl	6(%rax), %eax	# _18->type, D.8392
	cmpb	$23, %al	#, D.8392
	je	.L42	#,
	.loc 1 234 0 is_stmt 1
	movq	-88(%rbp), %rax	# pfile, tmp92
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 235 0
	movq	$0, -72(%rbp)	#, node
	jmp	.L42	#
.L40:
	.loc 1 240 0
	movq	-88(%rbp), %rax	# pfile, tmp93
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 241 0
	movq	-64(%rbp), %rax	# token, tmp94
	movzbl	7(%rax), %eax	# token_4->flags, D.8392
	movzbl	%al, %eax	# D.8392, D.8394
	andl	$16, %eax	#, D.8394
	testl	%eax, %eax	# D.8394
	je	.L42	#,
.LBB2:
	.loc 1 245 0
	movb	$0, -41(%rbp)	#, op.flags
	.loc 1 246 0
	movq	-64(%rbp), %rax	# token, tmp95
	movzbl	6(%rax), %eax	# token_4->type, D.8392
	movb	%al, -42(%rbp)	# D.8392, op.type
	.loc 1 247 0
	leaq	-48(%rbp), %rdx	#, tmp96
	movq	-88(%rbp), %rax	# pfile, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	cpp_token_as_text	#
	movq	%rax, %rbx	#, D.8395
	movq	-64(%rbp), %rdx	# token, tmp98
	movq	-88(%rbp), %rax	# pfile, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.8395
	movq	-88(%rbp), %rax	# pfile, tmp100
	movq	%rbx, %rcx	# D.8395,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	cpp_error	#
.L42:
.LBE2:
	.loc 1 254 0
	cmpq	$0, -72(%rbp)	#, node
	jne	.L43	#,
	.loc 1 255 0
	movl	$64, -48(%rbp)	#, op.op
	jmp	.L44	#
.L43:
	.loc 1 258 0
	movq	-88(%rbp), %rax	# pfile, tmp101
	movq	152(%rax), %rax	# pfile_7(D)->context, D.8396
	cmpq	-56(%rbp), %rax	# initial_context, D.8396
	je	.L45	#,
	.loc 1 259 0
	movq	-88(%rbp), %rax	# pfile, tmp102
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp102,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L45:
	.loc 1 261 0
	movq	-72(%rbp), %rax	# node, tmp103
	movzbl	20(%rax), %eax	# node_3->type, D.8392
	cmpb	$1, %al	#, D.8392
	sete	%al	#, D.8397
	movzbl	%al, %eax	# D.8397, D.8398
	movq	%rax, -40(%rbp)	# D.8398, op.value
	.loc 1 262 0
	movb	$0, -42(%rbp)	#, op.unsignedp
	.loc 1 263 0
	movl	$57, -48(%rbp)	#, op.op
	.loc 1 267 0
	movq	-88(%rbp), %rax	# pfile, tmp104
	movq	-72(%rbp), %rdx	# node, tmp105
	movq	%rdx, 176(%rax)	# tmp105, pfile_7(D)->mi_ind_cmacro
.L44:
	.loc 1 270 0
	movq	-88(%rbp), %rax	# pfile, tmp106
	movzbl	15(%rax), %eax	# pfile_7(D)->state.prevent_expansion, D.8392
	leal	-1(%rax), %edx	#, D.8392
	movq	-88(%rbp), %rax	# pfile, tmp107
	movb	%dl, 15(%rax)	# D.8392, pfile_7(D)->state.prevent_expansion
	.loc 1 271 0
	movq	-48(%rbp), %rax	# op, D.7872
	movq	-40(%rbp), %rdx	# op, D.7872
	.loc 1 272 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	parse_defined, .-parse_defined
	.section	.rodata
	.align 8
.LC11:
	.string	"string constants are not valid in #if"
.LC12:
	.string	"invalid character '%c' in #if"
	.align 8
.LC13:
	.string	"invalid character '\\%03o' in #if"
.LC14:
	.string	"__bool_true_false_are_defined"
	.align 8
.LC15:
	.string	"ISO C++ does not permit \"%s\" in #if"
.LC16:
	.string	"\"%s\" is not defined"
	.align 8
.LC17:
	.string	"\"%s\" is not valid in #if expressions"
	.text
	.type	lex, @function
lex:
.LFB10:
	.loc 1 282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movl	%esi, -44(%rbp)	# skip_evaluation, skip_evaluation
	.loc 1 284 0
	movq	-40(%rbp), %rax	# pfile, tmp101
	movq	%rax, %rdi	# tmp101,
	call	cpp_get_token	#
	movq	%rax, -24(%rbp)	# tmp102, token
	.loc 1 286 0
	movq	-24(%rbp), %rax	# token, tmp103
	movzbl	6(%rax), %eax	# token_2->type, D.8404
	movzbl	%al, %eax	# D.8404, D.8405
	subl	$40, %eax	#, tmp104
	cmpl	$22, %eax	#, tmp104
	ja	.L48	#,
	movl	%eax, %eax	# tmp104, tmp105
	movq	.L50(,%rax,8), %rax	#, tmp106
	jmp	*%rax	# tmp106
	.section	.rodata
	.align 8
	.align 4
.L50:
	.quad	.L49
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L48
	.quad	.L51
	.quad	.L52
	.quad	.L53
	.quad	.L53
	.quad	.L54
	.quad	.L55
	.quad	.L55
	.text
.L52:
	.loc 1 289 0
	movq	-24(%rbp), %rdx	# token, tmp107
	movq	-40(%rbp), %rax	# pfile, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	parse_number	#
	jmp	.L70	#
.L53:
.LBB3:
	.loc 1 296 0
	movq	-24(%rbp), %rax	# token, tmp109
	movzbl	6(%rax), %eax	# token_2->type, D.8404
	cmpb	$58, %al	#, D.8404
	jne	.L57	#,
	.loc 1 297 0
	movb	$0, -10(%rbp)	#, op.unsignedp
	jmp	.L58	#
.L57:
	.loc 1 299 0
	movb	$0, -10(%rbp)	#, op.unsignedp
.L58:
	.loc 1 300 0
	movl	$57, -16(%rbp)	#, op.op
	.loc 1 301 0
	leaq	-28(%rbp), %rdx	#, tmp110
	movq	-24(%rbp), %rsi	# token, tmp111
	movq	-40(%rbp), %rax	# pfile, tmp112
	movq	%rdx, %r8	# tmp110,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp112,
	call	cpp_interpret_charconst	#
	movq	%rax, -8(%rbp)	# D.8406, op.value
	.loc 1 302 0
	movq	-16(%rbp), %rax	# op, D.7877
	movq	-8(%rbp), %rdx	# op, D.7877
	jmp	.L70	#
.L55:
.LBE3:
	.loc 1 307 0
	movq	-40(%rbp), %rax	# pfile, tmp113
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp113,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L59	#
.L54:
	.loc 1 310 0
	movq	-24(%rbp), %rax	# token, tmp114
	movzbl	8(%rax), %eax	# token_2->val.c, D.8404
	movzbl	%al, %eax	# D.8404, D.8405
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.8407
	movzwl	%ax, %eax	# D.8407, D.8405
	andl	$172, %eax	#, D.8405
	testl	%eax, %eax	# D.8405
	je	.L60	#,
	.loc 1 311 0
	movq	-24(%rbp), %rax	# token, tmp116
	movzbl	8(%rax), %eax	# token_2->val.c, D.8404
	movzbl	%al, %edx	# D.8404, D.8405
	movq	-40(%rbp), %rax	# pfile, tmp117
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp117,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L59	#
.L60:
	.loc 1 313 0
	movq	-24(%rbp), %rax	# token, tmp118
	movzbl	8(%rax), %eax	# token_2->val.c, D.8404
	movzbl	%al, %edx	# D.8404, D.8405
	movq	-40(%rbp), %rax	# pfile, tmp119
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp119,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L59	#
.L51:
	.loc 1 316 0
	movq	-24(%rbp), %rax	# token, tmp120
	movq	8(%rax), %rdx	# token_2->val.node, D.8408
	movq	-40(%rbp), %rax	# pfile, tmp121
	movq	784(%rax), %rax	# pfile_1(D)->spec_nodes.n_defined, D.8408
	cmpq	%rax, %rdx	# D.8408, D.8408
	jne	.L61	#,
	.loc 1 317 0
	movq	-40(%rbp), %rax	# pfile, tmp122
	movq	%rax, %rdi	# tmp122,
	call	parse_defined	#
	jmp	.L70	#
.L61:
	.loc 1 318 0
	movq	-40(%rbp), %rax	# pfile, tmp123
	movzbl	742(%rax), %eax	# pfile_1(D)->opts.cplusplus, D.8404
	testb	%al, %al	# D.8404
	je	.L62	#,
	.loc 1 319 0
	movq	-24(%rbp), %rax	# token, tmp124
	movq	8(%rax), %rdx	# token_2->val.node, D.8408
	movq	-40(%rbp), %rax	# pfile, tmp125
	movq	792(%rax), %rax	# pfile_1(D)->spec_nodes.n_true, D.8408
	cmpq	%rax, %rdx	# D.8408, D.8408
	je	.L63	#,
	.loc 1 320 0
	movq	-24(%rbp), %rax	# token, tmp126
	movq	8(%rax), %rdx	# token_2->val.node, D.8408
	movq	-40(%rbp), %rax	# pfile, tmp127
	movq	800(%rax), %rax	# pfile_1(D)->spec_nodes.n_false, D.8408
	cmpq	%rax, %rdx	# D.8408, D.8408
	jne	.L62	#,
.L63:
	.loc 1 322 0
	movl	$57, -16(%rbp)	#, op.op
	.loc 1 323 0
	movb	$0, -10(%rbp)	#, op.unsignedp
	.loc 1 324 0
	movq	-24(%rbp), %rax	# token, tmp128
	movq	8(%rax), %rdx	# token_2->val.node, D.8408
	movq	-40(%rbp), %rax	# pfile, tmp129
	movq	792(%rax), %rax	# pfile_1(D)->spec_nodes.n_true, D.8408
	cmpq	%rax, %rdx	# D.8408, D.8408
	sete	%al	#, D.8409
	movzbl	%al, %eax	# D.8409, D.8406
	movq	%rax, -8(%rbp)	# D.8406, op.value
	.loc 1 328 0
	movq	-40(%rbp), %rax	# pfile, tmp130
	movzbl	770(%rax), %eax	# pfile_1(D)->opts.pedantic, D.8404
	testb	%al, %al	# D.8404
	je	.L64	#,
	.loc 1 329 0
	movq	-40(%rbp), %rax	# pfile, tmp131
	movl	$29, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	cpp_defined	#
	testl	%eax, %eax	# D.8405
	jne	.L64	#,
	.loc 1 331 0
	movq	-24(%rbp), %rax	# token, tmp132
	movq	8(%rax), %rax	# token_2->val.node, D.8408
	.loc 1 330 0
	movq	8(%rax), %rdx	# _29->ident.str, D.8410
	movq	-40(%rbp), %rax	# pfile, tmp133
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp133,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L64:
	.loc 1 332 0
	movq	-16(%rbp), %rax	# op, D.7877
	movq	-8(%rbp), %rdx	# op, D.7877
	jmp	.L70	#
.L62:
	.loc 1 336 0
	movl	$57, -16(%rbp)	#, op.op
	.loc 1 337 0
	movb	$0, -10(%rbp)	#, op.unsignedp
	.loc 1 338 0
	movq	$0, -8(%rbp)	#, op.value
	.loc 1 340 0
	movq	-40(%rbp), %rax	# pfile, tmp134
	movzbl	768(%rax), %eax	# pfile_1(D)->opts.warn_undef, D.8404
	testb	%al, %al	# D.8404
	je	.L65	#,
	.loc 1 340 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, skip_evaluation
	jne	.L65	#,
	.loc 1 342 0 is_stmt 1
	movq	-24(%rbp), %rax	# token, tmp135
	movq	8(%rax), %rax	# token_2->val.node, D.8408
	.loc 1 341 0
	movq	8(%rax), %rdx	# _33->ident.str, D.8410
	movq	-40(%rbp), %rax	# pfile, tmp136
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp136,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L65:
	.loc 1 343 0
	movq	-16(%rbp), %rax	# op, D.7877
	movq	-8(%rbp), %rdx	# op, D.7877
	jmp	.L70	#
.L49:
.LBB4:
	.loc 1 350 0
	movl	$57, -16(%rbp)	#, op.op
	.loc 1 351 0
	leaq	-28(%rbp), %rdx	#, tmp137
	movq	-40(%rbp), %rax	# pfile, tmp138
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	_cpp_test_assertion	#
	testl	%eax, %eax	# D.8405
	je	.L66	#,
	.loc 1 352 0
	movl	$64, -16(%rbp)	#, op.op
.L66:
	.loc 1 353 0
	movb	$0, -10(%rbp)	#, op.unsignedp
	.loc 1 354 0
	movl	-28(%rbp), %eax	# temp, temp.11
	cltq
	movq	%rax, -8(%rbp)	# D.8406, op.value
	.loc 1 355 0
	movq	-16(%rbp), %rax	# op, D.7877
	movq	-8(%rbp), %rdx	# op, D.7877
	jmp	.L70	#
.L48:
.LBE4:
	.loc 1 359 0
	movq	-24(%rbp), %rax	# token, tmp139
	movzbl	6(%rax), %eax	# token_2->type, D.8404
	testb	%al, %al	# D.8404
	je	.L67	#,
	.loc 1 360 0
	movq	-24(%rbp), %rax	# token, tmp140
	movzbl	6(%rax), %eax	# token_2->type, D.8404
	cmpb	$27, %al	#, D.8404
	jbe	.L68	#,
.L67:
	.loc 1 361 0
	movq	-24(%rbp), %rax	# token, tmp141
	movzbl	6(%rax), %eax	# token_2->type, D.8404
	cmpb	$67, %al	#, D.8404
	jne	.L69	#,
.L68:
	.loc 1 363 0
	movq	-24(%rbp), %rax	# token, tmp142
	movzbl	6(%rax), %eax	# token_2->type, D.8404
	movzbl	%al, %eax	# D.8404, D.8412
	movl	%eax, -16(%rbp)	# D.8412, op.op
	.loc 1 364 0
	movq	-16(%rbp), %rax	# op, D.7877
	movq	-8(%rbp), %rdx	# op, D.7877
	jmp	.L70	#
.L69:
	.loc 1 367 0
	movq	-24(%rbp), %rdx	# token, tmp143
	movq	-40(%rbp), %rax	# pfile, tmp144
	movq	%rdx, %rsi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	cpp_token_as_text	#
	movq	%rax, %rdx	#, D.8411
	movq	-40(%rbp), %rax	# pfile, tmp145
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp145,
	movl	$0, %eax	#,
	call	cpp_error	#
	nop
.L59:
	.loc 1 372 0
	movl	$64, -16(%rbp)	#, op.op
	.loc 1 373 0
	movq	-16(%rbp), %rax	# op, D.7877
	movq	-8(%rbp), %rdx	# op, D.7877
.L70:
	.loc 1 374 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	lex, .-lex
	.section	.rodata
	.align 8
.LC18:
	.string	"integer overflow in preprocessor expression"
	.text
	.type	integer_overflow, @function
integer_overflow:
.LFB11:
	.loc 1 380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 381 0
	movq	-8(%rbp), %rax	# pfile, tmp60
	movzbl	770(%rax), %eax	# pfile_1(D)->opts.pedantic, D.8421
	testb	%al, %al	# D.8421
	je	.L71	#,
	.loc 1 382 0
	movq	-8(%rbp), %rax	# pfile, tmp61
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp61,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L71:
	.loc 1 383 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	integer_overflow, .-integer_overflow
	.type	left_shift, @function
left_shift:
.LFB12:
	.loc 1 393 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# a, a
	movl	%edx, -36(%rbp)	# unsignedp, unsignedp
	movq	%rcx, -48(%rbp)	# b, b
	.loc 1 394 0
	cmpq	$63, -48(%rbp)	#, b
	jbe	.L74	#,
	.loc 1 396 0
	cmpl	$0, -36(%rbp)	#, unsignedp
	jne	.L75	#,
	.loc 1 396 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, a
	je	.L75	#,
	.loc 1 397 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	integer_overflow	#
.L75:
	.loc 1 398 0
	movl	$0, %eax	#, D.8423
	jmp	.L76	#
.L74:
	.loc 1 400 0
	cmpl	$0, -36(%rbp)	#, unsignedp
	je	.L77	#,
	.loc 1 401 0
	movq	-32(%rbp), %rdx	# a, a.12
	movq	-48(%rbp), %rax	# b, tmp68
	movl	%eax, %ecx	# D.8424, tmp79
	salq	%cl, %rdx	# tmp79, D.8425
	movq	%rdx, %rax	# D.8425, D.8425
	jmp	.L76	#
.L77:
.LBB5:
	.loc 1 404 0
	movq	-48(%rbp), %rax	# b, tmp69
	movq	-32(%rbp), %rdx	# a, tmp73
	movl	%eax, %ecx	# D.8424, tmp81
	salq	%cl, %rdx	# tmp81, tmp72
	movq	%rdx, %rax	# tmp72, tmp72
	movq	%rax, -8(%rbp)	# tmp72, l
	.loc 1 405 0
	movq	-48(%rbp), %rax	# b, tmp74
	movq	-8(%rbp), %rdx	# l, tmp75
	movl	%eax, %ecx	# D.8424, tmp83
	sarq	%cl, %rdx	# tmp83, D.8423
	movq	%rdx, %rax	# D.8423, D.8423
	cmpq	-32(%rbp), %rax	# a, D.8423
	je	.L78	#,
	.loc 1 406 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movq	%rax, %rdi	# tmp76,
	call	integer_overflow	#
.L78:
	.loc 1 407 0
	movq	-8(%rbp), %rax	# l, D.8423
.L76:
.LBE5:
	.loc 1 409 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	left_shift, .-left_shift
	.type	right_shift, @function
right_shift:
.LFB13:
	.loc 1 419 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# a, a
	movl	%edx, -20(%rbp)	# unsignedp, unsignedp
	movq	%rcx, -32(%rbp)	# b, b
	.loc 1 420 0
	cmpq	$63, -32(%rbp)	#, b
	jbe	.L80	#,
	.loc 1 421 0
	cmpl	$0, -20(%rbp)	#, unsignedp
	jne	.L81	#,
	.loc 1 421 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# a, tmp66
	sarq	$63, %rax	#, iftmp.13
	jmp	.L82	#
.L81:
	.loc 1 421 0 discriminator 2
	movl	$0, %eax	#, iftmp.13
.L82:
	.loc 1 421 0 discriminator 3
	jmp	.L83	#
.L80:
	.loc 1 422 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, unsignedp
	je	.L84	#,
	.loc 1 423 0
	movq	-16(%rbp), %rdx	# a, a.14
	movq	-32(%rbp), %rax	# b, tmp67
	movl	%eax, %ecx	# D.8427, tmp72
	shrq	%cl, %rdx	# tmp72, D.8428
	movq	%rdx, %rax	# D.8428, D.8428
	jmp	.L83	#
.L84:
	.loc 1 425 0
	movq	-32(%rbp), %rax	# b, tmp68
	movq	-16(%rbp), %rdx	# a, tmp69
	movl	%eax, %ecx	# D.8427, tmp74
	sarq	%cl, %rdx	# tmp74, D.8426
	movq	%rdx, %rax	# D.8426, D.8426
.L83:
	.loc 1 426 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	right_shift, .-right_shift
	.section	.rodata
	.align 32
	.type	op_to_prio, @object
	.size	op_to_prio, 56
op_to_prio:
	.value	0
	.value	8962
	.value	6656
	.value	6656
	.value	8962
	.value	8962
	.value	8192
	.value	8192
	.value	8192
	.value	5120
	.value	4096
	.value	4608
	.value	7168
	.value	7168
	.value	5632
	.value	5632
	.value	8962
	.value	3592
	.value	3080
	.value	2312
	.value	2568
	.value	1536
	.value	1026
	.value	512
	.value	6144
	.value	6144
	.value	6656
	.value	6656
.LC19:
	.string	"missing binary operator"
	.align 8
.LC20:
	.string	"void expression between '(' and ')'"
	.align 8
.LC21:
	.string	"operator '%s' has no right operand"
.LC22:
	.string	"impossible operator '%s'"
	.align 8
.LC23:
	.string	"traditional C rejects the unary plus operator"
.LC24:
	.string	"division by zero in #if"
	.align 8
.LC25:
	.string	"comma operator in operand of #if"
	.align 8
.LC26:
	.string	"syntax error '?' without following ':'"
	.align 8
.LC27:
	.string	"syntax error ':' without preceding '?'"
.LC28:
	.string	"missing ')' in expression"
.LC29:
	.string	"missing '(' in expression"
	.align 8
.LC30:
	.string	"missing binary operator before '%s'"
	.align 8
.LC31:
	.string	"operator '%s' has no left operand"
.LC32:
	.string	"unbalanced stack in #if"
.LC33:
	.string	"#if with no expression"
	.text
	.globl	_cpp_parse_expr
	.type	_cpp_parse_expr, @function
_cpp_parse_expr:
.LFB14:
	.loc 1 559 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$456, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -456(%rbp)	# pfile, pfile
	.loc 1 572 0
	leaq	-336(%rbp), %rax	#, tmp293
	movq	%rax, -400(%rbp)	# tmp293, stack
	.loc 1 573 0
	movq	-400(%rbp), %rax	# stack, tmp297
	addq	$320, %rax	#, tmp296
	movq	%rax, -392(%rbp)	# tmp296, limit
	.loc 1 574 0
	movq	-400(%rbp), %rax	# stack, tmp301
	addq	$16, %rax	#, tmp300
	movq	%rax, -384(%rbp)	# tmp300, top
	.loc 1 575 0
	movl	$0, -440(%rbp)	#, skip_evaluation
	.loc 1 580 0
	movq	-456(%rbp), %rax	# pfile, tmp302
	movq	$0, 176(%rax)	#, pfile_43(D)->mi_ind_cmacro
	.loc 1 581 0
	movl	$0, -428(%rbp)	#, saw_leading_not
	.loc 1 582 0
	movl	$0, -432(%rbp)	#, lex_count
	.loc 1 585 0
	movq	-384(%rbp), %rax	# top, tmp303
	movl	$67, (%rax)	#, top_41->op
	.loc 1 587 0
	movq	-384(%rbp), %rax	# top, tmp304
	movb	$2, 4(%rax)	#, top_41->prio
	.loc 1 589 0
	movq	-384(%rbp), %rax	# top, tmp305
	movb	$4, 5(%rax)	#, top_41->flags
.L191:
.LBB6:
	.loc 1 598 0
	movl	-440(%rbp), %edx	# skip_evaluation, tmp306
	movq	-456(%rbp), %rax	# pfile, tmp307
	movl	%edx, %esi	# tmp306,
	movq	%rax, %rdi	# tmp307,
	call	lex	#
	movq	%rax, -352(%rbp)	# tmp309, op
	movq	%rdx, -344(%rbp)	#, op
	.loc 1 599 0
	addl	$1, -432(%rbp)	#, lex_count
	.loc 1 604 0
	movl	-352(%rbp), %eax	# op.op, D.8429
	cmpl	$5, %eax	#, D.8429
	ja	.L87	#,
	cmpl	$4, %eax	#, D.8429
	jae	.L88	#,
	cmpl	$1, %eax	#, D.8429
	je	.L89	#,
	jmp	.L86	#
.L87:
	cmpl	$64, %eax	#, D.8429
	je	.L199	#,
	cmpl	$67, %eax	#, D.8429
	je	.L91	#,
	cmpl	$57, %eax	#, D.8429
	jne	.L86	#,
.L92:
	.loc 1 611 0
	movq	-384(%rbp), %rax	# top, tmp310
	movzbl	5(%rax), %eax	# top_8->flags, D.8432
	movzbl	%al, %eax	# D.8432, D.8433
	andl	$1, %eax	#, D.8433
	testl	%eax, %eax	# D.8433
	je	.L94	#,
	.loc 1 612 0
	movq	-456(%rbp), %rax	# pfile, tmp311
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp311,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L94:
	.loc 1 613 0
	movq	-344(%rbp), %rdx	# op.value, D.8437
	movq	-384(%rbp), %rax	# top, tmp312
	movq	%rdx, 8(%rax)	# D.8437, top_8->value
	.loc 1 614 0
	movzbl	-346(%rbp), %edx	# op.unsignedp, D.8432
	movq	-384(%rbp), %rax	# top, tmp313
	movb	%dl, 6(%rax)	# D.8432, top_8->unsignedp
	.loc 1 615 0
	movq	-384(%rbp), %rax	# top, tmp314
	movzbl	5(%rax), %eax	# top_8->flags, D.8432
	orl	$1, %eax	#, D.8432
	movl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp315
	movb	%dl, 5(%rax)	# D.8432, top_8->flags
.LBE6:
	.loc 1 852 0
	jmp	.L191	#
.L91:
.LBB9:
	.loc 1 618 0
	movl	$0, -424(%rbp)	#, prio
	jmp	.L96	#
.L89:
	.loc 1 621 0
	cmpl	$1, -432(%rbp)	#, lex_count
	sete	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, tmp316
	movl	%eax, -428(%rbp)	# tmp316, saw_leading_not
	.loc 1 622 0
	movl	-352(%rbp), %eax	# op.op, D.8429
	movl	%eax, %eax	# D.8429, tmp317
	movzwl	op_to_prio(%rax,%rax), %eax	# op_to_prio, D.8431
	cwtl
	movl	%eax, -424(%rbp)	# tmp318, prio
	.loc 1 623 0
	jmp	.L96	#
.L88:
	.loc 1 625 0
	movl	$7680, -424(%rbp)	#, prio
	movq	-384(%rbp), %rax	# top, tmp319
	movzbl	5(%rax), %eax	# top_7->flags, D.8432
	movzbl	%al, %eax	# D.8432, D.8433
	andl	$1, %eax	#, D.8433
	testl	%eax, %eax	# D.8433
	je	.L86	#,
	.loc 1 625 0 is_stmt 0 discriminator 1
	jmp	.L96	#
.L86:
	.loc 1 627 0 is_stmt 1
	movl	-352(%rbp), %eax	# op.op, D.8429
	movl	%eax, %eax	# D.8429, tmp320
	movzwl	op_to_prio(%rax,%rax), %eax	# op_to_prio, D.8431
	cwtl
	movl	%eax, -424(%rbp)	# tmp321, prio
	nop
.L96:
	.loc 1 631 0
	movl	-424(%rbp), %eax	# prio, tmp325
	movzbl	%al, %eax	# tmp325, tmp324
	movl	%eax, -420(%rbp)	# tmp324, flags
	.loc 1 632 0
	shrl	$8, -424(%rbp)	#, prio
	.loc 1 633 0
	cmpl	$4, -424(%rbp)	#, prio
	jne	.L97	#,
	.loc 1 634 0
	jmp	.L98	#
.L97:
	.loc 1 637 0
	jmp	.L99	#
.L175:
.LBB7:
	.loc 1 644 0
	movq	-384(%rbp), %rax	# top, tmp326
	movzbl	5(%rax), %eax	# top_9->flags, D.8432
	movzbl	%al, %eax	# D.8432, D.8433
	andl	$5, %eax	#, D.8433
	testl	%eax, %eax	# D.8433
	jne	.L100	#,
	.loc 1 646 0
	movq	-384(%rbp), %rax	# top, tmp327
	movl	(%rax), %eax	# top_9->op, D.8429
	cmpl	$22, %eax	#, D.8429
	jne	.L101	#,
	.loc 1 647 0
	movq	-456(%rbp), %rax	# pfile, tmp328
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp328,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L101:
	.loc 1 649 0
	movq	-384(%rbp), %rax	# top, tmp329
	movl	(%rax), %edx	# top_9->op, D.8429
	movq	-456(%rbp), %rax	# pfile, tmp330
	movl	%edx, %esi	# D.8429,
	movq	%rax, %rdi	# tmp330,
	call	op_as_text	#
	movq	%rax, %rdx	#, D.8435
	movq	-456(%rbp), %rax	# pfile, tmp331
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp331,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L100:
	.loc 1 653 0
	movq	-384(%rbp), %rax	# top, tmp332
	movzbl	6(%rax), %eax	# top_9->unsignedp, D.8432
	movzbl	%al, %eax	# D.8432, tmp333
	movl	%eax, -416(%rbp)	# tmp333, unsigned2
	movq	-384(%rbp), %rax	# top, tmp334
	movq	8(%rax), %rax	# top_9->value, tmp335
	movq	%rax, -368(%rbp)	# tmp335, v2
	.loc 1 654 0
	subq	$16, -384(%rbp)	#, top
	.loc 1 655 0
	movq	-384(%rbp), %rax	# top, tmp336
	movzbl	6(%rax), %eax	# top_74->unsignedp, D.8432
	movzbl	%al, %eax	# D.8432, tmp337
	movl	%eax, -412(%rbp)	# tmp337, unsigned1
	movq	-384(%rbp), %rax	# top, tmp338
	movq	8(%rax), %rax	# top_74->value, tmp339
	movq	%rax, -360(%rbp)	# tmp339, v1
	.loc 1 658 0
	movq	-384(%rbp), %rax	# top, tmp340
	addq	$16, %rax	#, D.8436
	movl	(%rax), %eax	# _78->op, D.8429
	cmpl	$67, %eax	#, D.8429
	ja	.L102	#,
	movl	%eax, %eax	# D.8429, tmp341
	movq	.L104(,%rax,8), %rax	#, tmp342
	jmp	*%rax	# tmp342
	.section	.rodata
	.align 8
	.align 4
.L104:
	.quad	.L102
	.quad	.L103
	.quad	.L105
	.quad	.L106
	.quad	.L107
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.quad	.L110
	.quad	.L111
	.quad	.L112
	.quad	.L113
	.quad	.L114
	.quad	.L115
	.quad	.L116
	.quad	.L117
	.quad	.L118
	.quad	.L119
	.quad	.L120
	.quad	.L121
	.quad	.L122
	.quad	.L123
	.quad	.L124
	.quad	.L102
	.quad	.L125
	.quad	.L126
	.quad	.L127
	.quad	.L128
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L102
	.quad	.L129
	.text
.L102:
	.loc 1 662 0
	movq	-384(%rbp), %rax	# top, tmp343
	addq	$16, %rax	#, D.8436
	.loc 1 661 0
	movl	(%rax), %edx	# _80->op, D.8429
	movq	-456(%rbp), %rax	# pfile, tmp344
	movl	%edx, %esi	# D.8429,
	movq	%rax, %rdi	# tmp344,
	call	op_as_text	#
	movq	%rax, %rdx	#, D.8435
	movq	-456(%rbp), %rax	# pfile, tmp345
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp345,
	movl	$0, %eax	#,
	call	cpp_ice	#
	.loc 1 663 0
	jmp	.L189	#
.L103:
	.loc 1 665 0
	cmpq	$0, -368(%rbp)	#, v2
	sete	%al	#, D.8430
	movzbl	%al, %edx	# D.8430, D.8437
	movq	-384(%rbp), %rax	# top, tmp346
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movl	-416(%rbp), %eax	# unsigned2, tmp347
	movl	%eax, %edx	# tmp347, D.8432
	movq	-384(%rbp), %rax	# top, tmp348
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	movq	-384(%rbp), %rax	# top, tmp349
	movzbl	5(%rax), %eax	# top_74->flags, D.8432
	orl	$1, %eax	#, D.8432
	movl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp350
	movb	%dl, 5(%rax)	# D.8432, top_74->flags
	jmp	.L99	#
.L118:
	.loc 1 666 0
	movq	-368(%rbp), %rax	# v2, tmp351
	notq	%rax	# D.8437
	movq	%rax, %rdx	# D.8437, D.8437
	movq	-384(%rbp), %rax	# top, tmp352
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movl	-416(%rbp), %eax	# unsigned2, tmp353
	movl	%eax, %edx	# tmp353, D.8432
	movq	-384(%rbp), %rax	# top, tmp354
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	movq	-384(%rbp), %rax	# top, tmp355
	movzbl	5(%rax), %eax	# top_74->flags, D.8432
	orl	$1, %eax	#, D.8432
	movl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp356
	movb	%dl, 5(%rax)	# D.8432, top_74->flags
	jmp	.L99	#
.L106:
	.loc 1 667 0
	movq	-384(%rbp), %rax	# top, tmp357
	movb	$0, 6(%rax)	#, top_74->unsignedp
	movl	-416(%rbp), %eax	# unsigned2, tmp358
	movl	-412(%rbp), %edx	# unsigned1, tmp359
	orl	%edx, %eax	# tmp359, D.8434
	testl	%eax, %eax	# D.8434
	je	.L130	#,
	.loc 1 667 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rdx	# v1, v1.16
	movq	-368(%rbp), %rax	# v2, v2.17
	cmpq	%rax, %rdx	# v2.17, v1.16
	setb	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, D.8433
	cltq
	jmp	.L131	#
.L130:
	.loc 1 667 0 discriminator 2
	movq	-360(%rbp), %rax	# v1, tmp360
	cmpq	-368(%rbp), %rax	# v2, tmp360
	setl	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, D.8433
	cltq
.L131:
	.loc 1 667 0 discriminator 3
	movq	-384(%rbp), %rdx	# top, tmp361
	movq	%rax, 8(%rdx)	# iftmp.15, top_74->value
	jmp	.L99	#
.L105:
	.loc 1 668 0 is_stmt 1
	movq	-384(%rbp), %rax	# top, tmp362
	movb	$0, 6(%rax)	#, top_74->unsignedp
	movl	-416(%rbp), %eax	# unsigned2, tmp363
	movl	-412(%rbp), %edx	# unsigned1, tmp364
	orl	%edx, %eax	# tmp364, D.8434
	testl	%eax, %eax	# D.8434
	je	.L132	#,
	.loc 1 668 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rdx	# v1, v1.19
	movq	-368(%rbp), %rax	# v2, v2.20
	cmpq	%rax, %rdx	# v2.20, v1.19
	seta	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, D.8433
	cltq
	jmp	.L133	#
.L132:
	.loc 1 668 0 discriminator 2
	movq	-360(%rbp), %rax	# v1, tmp365
	cmpq	-368(%rbp), %rax	# v2, tmp365
	setg	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, D.8433
	cltq
.L133:
	.loc 1 668 0 discriminator 3
	movq	-384(%rbp), %rdx	# top, tmp366
	movq	%rax, 8(%rdx)	# iftmp.18, top_74->value
	jmp	.L99	#
.L128:
	.loc 1 669 0 is_stmt 1
	movq	-384(%rbp), %rax	# top, tmp367
	movb	$0, 6(%rax)	#, top_74->unsignedp
	movl	-416(%rbp), %eax	# unsigned2, tmp368
	movl	-412(%rbp), %edx	# unsigned1, tmp369
	orl	%edx, %eax	# tmp369, D.8434
	testl	%eax, %eax	# D.8434
	je	.L134	#,
	.loc 1 669 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rdx	# v1, v1.22
	movq	-368(%rbp), %rax	# v2, v2.23
	cmpq	%rax, %rdx	# v2.23, v1.22
	setbe	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, D.8433
	cltq
	jmp	.L135	#
.L134:
	.loc 1 669 0 discriminator 2
	movq	-360(%rbp), %rax	# v1, tmp370
	cmpq	-368(%rbp), %rax	# v2, tmp370
	setle	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, D.8433
	cltq
.L135:
	.loc 1 669 0 discriminator 3
	movq	-384(%rbp), %rdx	# top, tmp371
	movq	%rax, 8(%rdx)	# iftmp.21, top_74->value
	jmp	.L99	#
.L127:
	.loc 1 670 0 is_stmt 1
	movq	-384(%rbp), %rax	# top, tmp372
	movb	$0, 6(%rax)	#, top_74->unsignedp
	movl	-416(%rbp), %eax	# unsigned2, tmp373
	movl	-412(%rbp), %edx	# unsigned1, tmp374
	orl	%edx, %eax	# tmp374, D.8434
	testl	%eax, %eax	# D.8434
	je	.L136	#,
	.loc 1 670 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rdx	# v1, v1.25
	movq	-368(%rbp), %rax	# v2, v2.26
	cmpq	%rax, %rdx	# v2.26, v1.25
	setae	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, D.8433
	cltq
	jmp	.L137	#
.L136:
	.loc 1 670 0 discriminator 2
	movq	-360(%rbp), %rax	# v1, tmp375
	cmpq	-368(%rbp), %rax	# v2, tmp375
	setge	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, D.8433
	cltq
.L137:
	.loc 1 670 0 discriminator 3
	movq	-384(%rbp), %rdx	# top, tmp376
	movq	%rax, 8(%rdx)	# iftmp.24, top_74->value
	jmp	.L99	#
.L125:
	.loc 1 671 0 is_stmt 1
	movq	-360(%rbp), %rax	# v1, tmp377
	cmpq	-368(%rbp), %rax	# v2, tmp377
	sete	%al	#, D.8430
	movzbl	%al, %edx	# D.8430, D.8437
	movq	-384(%rbp), %rax	# top, tmp378
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movq	-384(%rbp), %rax	# top, tmp379
	movb	$0, 6(%rax)	#, top_74->unsignedp
	jmp	.L99	#
.L126:
	.loc 1 672 0
	movq	-360(%rbp), %rax	# v1, tmp380
	cmpq	-368(%rbp), %rax	# v2, tmp380
	setne	%al	#, D.8430
	movzbl	%al, %edx	# D.8430, D.8437
	movq	-384(%rbp), %rax	# top, tmp381
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movq	-384(%rbp), %rax	# top, tmp382
	movb	$0, 6(%rax)	#, top_74->unsignedp
	jmp	.L99	#
.L111:
	.loc 1 673 0
	movq	-368(%rbp), %rax	# v2, tmp383
	movq	-360(%rbp), %rdx	# v1, tmp384
	andq	%rax, %rdx	# tmp383, D.8437
	movq	-384(%rbp), %rax	# top, tmp385
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movl	-412(%rbp), %eax	# unsigned1, tmp386
	movl	%eax, %edx	# tmp386, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp387
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp388
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	jmp	.L99	#
.L113:
	.loc 1 674 0
	movq	-368(%rbp), %rax	# v2, tmp389
	movq	-360(%rbp), %rdx	# v1, tmp390
	xorq	%rax, %rdx	# tmp389, D.8437
	movq	-384(%rbp), %rax	# top, tmp391
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movl	-412(%rbp), %eax	# unsigned1, tmp392
	movl	%eax, %edx	# tmp392, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp393
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp394
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	jmp	.L99	#
.L112:
	.loc 1 675 0
	movq	-368(%rbp), %rax	# v2, tmp395
	movq	-360(%rbp), %rdx	# v1, tmp396
	orq	%rax, %rdx	# tmp395, D.8437
	movq	-384(%rbp), %rax	# top, tmp397
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movl	-412(%rbp), %eax	# unsigned1, tmp398
	movl	%eax, %edx	# tmp398, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp399
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp400
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	jmp	.L99	#
.L115:
	.loc 1 676 0
	cmpl	$0, -440(%rbp)	#, skip_evaluation
	je	.L138	#,
	.loc 1 676 0 is_stmt 0 discriminator 1
	jmp	.L99	#
.L138:
	.loc 1 676 0 discriminator 2
	movl	-412(%rbp), %eax	# unsigned1, tmp401
	movl	%eax, %edx	# tmp401, D.8432
	movq	-384(%rbp), %rax	# top, tmp402
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	cmpq	$0, -368(%rbp)	#, v2
	jns	.L139	#,
	.loc 1 676 0 discriminator 1
	cmpl	$0, -416(%rbp)	#, unsigned2
	jne	.L139	#,
	movq	-368(%rbp), %rax	# v2, tmp403
	negq	%rax	# D.8437
	movq	%rax, %rcx	# D.8437, D.8438
	movl	-412(%rbp), %edx	# unsigned1, tmp404
	movq	-360(%rbp), %rsi	# v1, tmp405
	movq	-456(%rbp), %rax	# pfile, tmp406
	movq	%rax, %rdi	# tmp406,
	call	right_shift	#
	movq	-384(%rbp), %rdx	# top, tmp407
	movq	%rax, 8(%rdx)	# D.8437, top_74->value
	jmp	.L99	#
.L139:
	.loc 1 676 0 discriminator 2
	movq	-368(%rbp), %rcx	# v2, v2.27
	movl	-412(%rbp), %edx	# unsigned1, tmp408
	movq	-360(%rbp), %rsi	# v1, tmp409
	movq	-456(%rbp), %rax	# pfile, tmp410
	movq	%rax, %rdi	# tmp410,
	call	left_shift	#
	movq	-384(%rbp), %rdx	# top, tmp411
	movq	%rax, 8(%rdx)	# D.8437, top_74->value
	jmp	.L99	#
.L114:
	.loc 1 677 0 is_stmt 1
	cmpl	$0, -440(%rbp)	#, skip_evaluation
	je	.L141	#,
	.loc 1 677 0 is_stmt 0 discriminator 1
	jmp	.L99	#
.L141:
	.loc 1 677 0 discriminator 2
	movl	-412(%rbp), %eax	# unsigned1, tmp412
	movl	%eax, %edx	# tmp412, D.8432
	movq	-384(%rbp), %rax	# top, tmp413
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	cmpq	$0, -368(%rbp)	#, v2
	jns	.L142	#,
	.loc 1 677 0 discriminator 1
	cmpl	$0, -416(%rbp)	#, unsigned2
	jne	.L142	#,
	movq	-368(%rbp), %rax	# v2, tmp414
	negq	%rax	# D.8437
	movq	%rax, %rcx	# D.8437, D.8438
	movl	-412(%rbp), %edx	# unsigned1, tmp415
	movq	-360(%rbp), %rsi	# v1, tmp416
	movq	-456(%rbp), %rax	# pfile, tmp417
	movq	%rax, %rdi	# tmp417,
	call	left_shift	#
	movq	-384(%rbp), %rdx	# top, tmp418
	movq	%rax, 8(%rdx)	# D.8437, top_74->value
	jmp	.L99	#
.L142:
	.loc 1 677 0 discriminator 2
	movq	-368(%rbp), %rcx	# v2, v2.28
	movl	-412(%rbp), %edx	# unsigned1, tmp419
	movq	-360(%rbp), %rsi	# v1, tmp420
	movq	-456(%rbp), %rax	# pfile, tmp421
	movq	%rax, %rdi	# tmp421,
	call	right_shift	#
	movq	-384(%rbp), %rdx	# top, tmp422
	movq	%rax, 8(%rdx)	# D.8437, top_74->value
	jmp	.L99	#
.L116:
	.loc 1 678 0 is_stmt 1
	movq	-360(%rbp), %rax	# v1, tmp423
	cmpq	%rax, -368(%rbp)	# tmp423, v2
	cmovle	-368(%rbp), %rax	# v2,, D.8437
	movq	%rax, %rdx	# D.8437, D.8437
	movq	-384(%rbp), %rax	# top, tmp424
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movl	-412(%rbp), %eax	# unsigned1, tmp425
	movl	%eax, %edx	# tmp425, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp426
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp427
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	jmp	.L99	#
.L117:
	.loc 1 679 0
	movq	-360(%rbp), %rax	# v1, tmp428
	cmpq	%rax, -368(%rbp)	# tmp428, v2
	cmovge	-368(%rbp), %rax	# v2,, D.8437
	movq	%rax, %rdx	# D.8437, D.8437
	movq	-384(%rbp), %rax	# top, tmp429
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movl	-412(%rbp), %eax	# unsigned1, tmp430
	movl	%eax, %edx	# tmp430, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp431
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp432
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	jmp	.L99	#
.L107:
	.loc 1 682 0
	movq	-384(%rbp), %rax	# top, tmp433
	movzbl	5(%rax), %eax	# top_74->flags, D.8432
	movzbl	%al, %eax	# D.8432, D.8433
	andl	$1, %eax	#, D.8433
	testl	%eax, %eax	# D.8433
	jne	.L144	#,
	.loc 1 687 0
	movq	-384(%rbp), %rax	# top, tmp434
	movq	-368(%rbp), %rdx	# v2, tmp435
	movq	%rdx, 8(%rax)	# tmp435, top_74->value
	.loc 1 688 0
	movl	-416(%rbp), %eax	# unsigned2, tmp436
	movl	%eax, %edx	# tmp436, D.8432
	movq	-384(%rbp), %rax	# top, tmp437
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	.loc 1 689 0
	movq	-384(%rbp), %rax	# top, tmp438
	movzbl	5(%rax), %eax	# top_74->flags, D.8432
	orl	$1, %eax	#, D.8432
	movl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp439
	movb	%dl, 5(%rax)	# D.8432, top_74->flags
	.loc 1 691 0
	movq	-456(%rbp), %rax	# pfile, tmp440
	movzbl	761(%rax), %eax	# pfile_43(D)->opts.warn_traditional, D.8432
	testb	%al, %al	# D.8432
	je	.L146	#,
	.loc 1 692 0
	movq	-456(%rbp), %rax	# pfile, tmp441
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp441,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 1 703 0
	jmp	.L99	#
.L144:
	.loc 1 697 0
	movq	-368(%rbp), %rax	# v2, tmp442
	movq	-360(%rbp), %rdx	# v1, tmp443
	addq	%rax, %rdx	# tmp442, D.8437
	movq	-384(%rbp), %rax	# top, tmp444
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	.loc 1 698 0
	movl	-412(%rbp), %eax	# unsigned1, tmp445
	movl	%eax, %edx	# tmp445, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp446
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp447
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	.loc 1 699 0
	movq	-384(%rbp), %rax	# top, tmp448
	movzbl	6(%rax), %eax	# top_74->unsignedp, D.8432
	testb	%al, %al	# D.8432
	jne	.L146	#,
	.loc 1 699 0 is_stmt 0 discriminator 1
	cmpl	$0, -440(%rbp)	#, skip_evaluation
	jne	.L146	#,
	.loc 1 700 0 is_stmt 1
	movq	-368(%rbp), %rax	# v2, tmp449
	movq	-360(%rbp), %rdx	# v1, tmp450
	xorq	%rax, %rdx	# tmp449, D.8437
	movq	-384(%rbp), %rax	# top, tmp451
	movq	8(%rax), %rax	# top_74->value, D.8437
	xorq	-360(%rbp), %rax	# v1, D.8437
	notq	%rax	# D.8437
	orq	%rdx, %rax	# D.8437, D.8437
	testq	%rax, %rax	# D.8437
	js	.L146	#,
	.loc 1 701 0
	movq	-456(%rbp), %rax	# pfile, tmp452
	movq	%rax, %rdi	# tmp452,
	call	integer_overflow	#
	.loc 1 703 0
	jmp	.L99	#
.L146:
	jmp	.L99	#
.L108:
	.loc 1 705 0
	movq	-384(%rbp), %rax	# top, tmp453
	movzbl	5(%rax), %eax	# top_74->flags, D.8432
	movzbl	%al, %eax	# D.8432, D.8433
	andl	$1, %eax	#, D.8433
	testl	%eax, %eax	# D.8433
	jne	.L147	#,
	.loc 1 707 0
	movq	-368(%rbp), %rax	# v2, tmp454
	negq	%rax	# D.8437
	movq	%rax, %rdx	# D.8437, D.8437
	movq	-384(%rbp), %rax	# top, tmp455
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	movl	-416(%rbp), %eax	# unsigned2, tmp456
	movl	%eax, %edx	# tmp456, D.8432
	movq	-384(%rbp), %rax	# top, tmp457
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	movq	-384(%rbp), %rax	# top, tmp458
	movzbl	5(%rax), %eax	# top_74->flags, D.8432
	orl	$1, %eax	#, D.8432
	movl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp459
	movb	%dl, 5(%rax)	# D.8432, top_74->flags
	.loc 1 708 0
	cmpl	$0, -440(%rbp)	#, skip_evaluation
	jne	.L149	#,
	.loc 1 708 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# top, tmp460
	movq	8(%rax), %rax	# top_74->value, D.8437
	andq	-368(%rbp), %rax	# v2, D.8437
	testq	%rax, %rax	# D.8437
	jns	.L149	#,
	cmpl	$0, -416(%rbp)	#, unsigned2
	jne	.L149	#,
	.loc 1 709 0 is_stmt 1
	movq	-456(%rbp), %rax	# pfile, tmp461
	movq	%rax, %rdi	# tmp461,
	call	integer_overflow	#
	.loc 1 719 0
	jmp	.L99	#
.L147:
	.loc 1 713 0
	movq	-368(%rbp), %rax	# v2, tmp462
	movq	-360(%rbp), %rdx	# v1, tmp463
	subq	%rax, %rdx	# tmp462, D.8437
	movq	-384(%rbp), %rax	# top, tmp464
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	.loc 1 714 0
	movl	-412(%rbp), %eax	# unsigned1, tmp465
	movl	%eax, %edx	# tmp465, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp466
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp467
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	.loc 1 715 0
	movq	-384(%rbp), %rax	# top, tmp468
	movzbl	6(%rax), %eax	# top_74->unsignedp, D.8432
	testb	%al, %al	# D.8432
	jne	.L149	#,
	.loc 1 715 0 is_stmt 0 discriminator 1
	cmpl	$0, -440(%rbp)	#, skip_evaluation
	jne	.L149	#,
	.loc 1 716 0 is_stmt 1
	movq	-384(%rbp), %rax	# top, tmp469
	movq	8(%rax), %rax	# top_74->value, D.8437
	xorq	-368(%rbp), %rax	# v2, D.8437
	movq	%rax, %rdx	# D.8437, D.8437
	movq	-384(%rbp), %rax	# top, tmp470
	movq	8(%rax), %rax	# top_74->value, D.8437
	xorq	-360(%rbp), %rax	# v1, D.8437
	notq	%rax	# D.8437
	orq	%rdx, %rax	# D.8437, D.8437
	testq	%rax, %rax	# D.8437
	js	.L149	#,
	.loc 1 717 0
	movq	-456(%rbp), %rax	# pfile, tmp471
	movq	%rax, %rdi	# tmp471,
	call	integer_overflow	#
	.loc 1 719 0
	jmp	.L99	#
.L149:
	jmp	.L99	#
.L109:
	.loc 1 721 0
	movl	-412(%rbp), %eax	# unsigned1, tmp472
	movl	%eax, %edx	# tmp472, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp473
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp474
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	.loc 1 722 0
	movq	-384(%rbp), %rax	# top, tmp475
	movzbl	6(%rax), %eax	# top_74->unsignedp, D.8432
	testb	%al, %al	# D.8432
	je	.L150	#,
	.loc 1 723 0
	movq	-360(%rbp), %rdx	# v1, v1.29
	movq	-368(%rbp), %rax	# v2, v2.30
	imulq	%rdx, %rax	# v1.29, D.8438
	movq	%rax, %rdx	# D.8438, D.8437
	movq	-384(%rbp), %rax	# top, tmp476
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	jmp	.L151	#
.L150:
	.loc 1 724 0
	cmpl	$0, -440(%rbp)	#, skip_evaluation
	jne	.L151	#,
	.loc 1 726 0
	movq	-360(%rbp), %rax	# v1, tmp477
	imulq	-368(%rbp), %rax	# v2, D.8437
	movq	%rax, %rdx	# D.8437, D.8437
	movq	-384(%rbp), %rax	# top, tmp478
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	.loc 1 727 0
	cmpq	$0, -360(%rbp)	#, v1
	je	.L151	#,
	.loc 1 727 0 is_stmt 0 discriminator 1
	movq	-384(%rbp), %rax	# top, tmp479
	movq	8(%rax), %rax	# top_74->value, D.8437
	cqto
	idivq	-360(%rbp)	# v1
	cmpq	-368(%rbp), %rax	# v2, D.8437
	jne	.L152	#,
	.loc 1 728 0 is_stmt 1
	movq	-384(%rbp), %rax	# top, tmp482
	movq	8(%rax), %rax	# top_74->value, D.8437
	andq	-360(%rbp), %rax	# v1, D.8437
	andq	-368(%rbp), %rax	# v2, D.8437
	testq	%rax, %rax	# D.8437
	jns	.L151	#,
.L152:
	.loc 1 729 0
	movq	-456(%rbp), %rax	# pfile, tmp483
	movq	%rax, %rdi	# tmp483,
	call	integer_overflow	#
	.loc 1 731 0
	jmp	.L99	#
.L151:
	jmp	.L99	#
.L110:
	.loc 1 734 0
	cmpl	$0, -440(%rbp)	#, skip_evaluation
	je	.L153	#,
	.loc 1 735 0
	jmp	.L99	#
.L153:
	.loc 1 736 0
	cmpq	$0, -368(%rbp)	#, v2
	jne	.L154	#,
	.loc 1 737 0
	movq	-456(%rbp), %rax	# pfile, tmp484
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp484,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L154:
	.loc 1 738 0
	movl	-412(%rbp), %eax	# unsigned1, tmp485
	movl	%eax, %edx	# tmp485, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp486
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp487
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	.loc 1 739 0
	movq	-384(%rbp), %rax	# top, tmp488
	addq	$16, %rax	#, D.8436
	movl	(%rax), %eax	# _218->op, D.8429
	cmpl	$7, %eax	#, D.8429
	jne	.L155	#,
	.loc 1 741 0
	movq	-384(%rbp), %rax	# top, tmp489
	movzbl	6(%rax), %eax	# top_74->unsignedp, D.8432
	testb	%al, %al	# D.8432
	je	.L156	#,
	.loc 1 742 0
	movq	-360(%rbp), %rax	# v1, v1.31
	movq	-368(%rbp), %rbx	# v2, v2.32
	movl	$0, %edx	#, tmp491
	divq	%rbx	# v2.32
	movq	%rax, %rdx	# D.8438, D.8437
	movq	-384(%rbp), %rax	# top, tmp492
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	jmp	.L158	#
.L156:
	.loc 1 745 0
	movq	-360(%rbp), %rax	# v1, tmp495
	cqto
	idivq	-368(%rbp)	# v2
	movq	%rax, %rdx	# tmp493, D.8437
	movq	-384(%rbp), %rax	# top, tmp496
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	.loc 1 746 0
	movq	-384(%rbp), %rax	# top, tmp497
	movq	8(%rax), %rax	# top_74->value, D.8437
	andq	-360(%rbp), %rax	# v1, D.8437
	andq	-368(%rbp), %rax	# v2, D.8437
	testq	%rax, %rax	# D.8437
	jns	.L158	#,
	.loc 1 747 0
	movq	-456(%rbp), %rax	# pfile, tmp498
	movq	%rax, %rdi	# tmp498,
	call	integer_overflow	#
	.loc 1 757 0
	jmp	.L99	#
.L155:
	.loc 1 752 0
	movq	-384(%rbp), %rax	# top, tmp499
	movzbl	6(%rax), %eax	# top_74->unsignedp, D.8432
	testb	%al, %al	# D.8432
	je	.L159	#,
	.loc 1 753 0
	movq	-360(%rbp), %rax	# v1, v1.33
	movq	-368(%rbp), %rcx	# v2, v2.34
	movl	$0, %edx	#, tmp500
	divq	%rcx	# v2.34
	movq	%rdx, %rax	# tmp500, D.8438
	movq	%rax, %rdx	# D.8438, D.8437
	movq	-384(%rbp), %rax	# top, tmp502
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	jmp	.L158	#
.L159:
	.loc 1 755 0
	movq	-360(%rbp), %rax	# v1, tmp503
	cqto
	idivq	-368(%rbp)	# v2
	movq	-384(%rbp), %rax	# top, tmp506
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	.loc 1 757 0
	jmp	.L99	#
.L158:
	jmp	.L99	#
.L120:
	.loc 1 760 0
	cmpq	$0, -360(%rbp)	#, v1
	jne	.L160	#,
	.loc 1 760 0 is_stmt 0 discriminator 2
	cmpq	$0, -368(%rbp)	#, v2
	je	.L161	#,
.L160:
	.loc 1 760 0 discriminator 1
	movl	$1, %eax	#, iftmp.35
	jmp	.L162	#
.L161:
	.loc 1 760 0 discriminator 3
	movl	$0, %eax	#, iftmp.35
.L162:
	.loc 1 760 0 discriminator 4
	movslq	%eax, %rdx	# iftmp.35, D.8437
	movq	-384(%rbp), %rax	# top, tmp507
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	.loc 1 761 0 is_stmt 1 discriminator 4
	movq	-384(%rbp), %rax	# top, tmp508
	movb	$0, 6(%rax)	#, top_74->unsignedp
	.loc 1 762 0 discriminator 4
	cmpq	$0, -360(%rbp)	#, v1
	je	.L163	#,
	.loc 1 762 0 is_stmt 0 discriminator 1
	subl	$1, -440(%rbp)	#, skip_evaluation
	.loc 1 763 0 is_stmt 1 discriminator 1
	jmp	.L99	#
.L163:
	.loc 1 763 0 is_stmt 0
	jmp	.L99	#
.L119:
	.loc 1 765 0 is_stmt 1
	cmpq	$0, -360(%rbp)	#, v1
	je	.L164	#,
	.loc 1 765 0 is_stmt 0 discriminator 1
	cmpq	$0, -368(%rbp)	#, v2
	je	.L164	#,
	.loc 1 765 0 discriminator 3
	movl	$1, %eax	#, iftmp.36
	jmp	.L165	#
.L164:
	.loc 1 765 0 discriminator 2
	movl	$0, %eax	#, iftmp.36
.L165:
	.loc 1 765 0 discriminator 4
	movslq	%eax, %rdx	# iftmp.36, D.8437
	movq	-384(%rbp), %rax	# top, tmp509
	movq	%rdx, 8(%rax)	# D.8437, top_74->value
	.loc 1 766 0 is_stmt 1 discriminator 4
	movq	-384(%rbp), %rax	# top, tmp510
	movb	$0, 6(%rax)	#, top_74->unsignedp
	.loc 1 767 0 discriminator 4
	cmpq	$0, -360(%rbp)	#, v1
	jne	.L166	#,
	.loc 1 767 0 is_stmt 0 discriminator 1
	subl	$1, -440(%rbp)	#, skip_evaluation
	.loc 1 768 0 is_stmt 1 discriminator 1
	jmp	.L99	#
.L166:
	.loc 1 768 0 is_stmt 0
	jmp	.L99	#
.L123:
	.loc 1 770 0 is_stmt 1
	movq	-456(%rbp), %rax	# pfile, tmp511
	movzbl	770(%rax), %eax	# pfile_43(D)->opts.pedantic, D.8432
	testb	%al, %al	# D.8432
	je	.L167	#,
	.loc 1 771 0
	movq	-456(%rbp), %rax	# pfile, tmp512
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp512,
	movl	$0, %eax	#,
	call	cpp_pedwarn	#
.L167:
	.loc 1 772 0
	movq	-384(%rbp), %rax	# top, tmp513
	movq	-368(%rbp), %rdx	# v2, tmp514
	movq	%rdx, 8(%rax)	# tmp514, top_74->value
	.loc 1 773 0
	movl	-416(%rbp), %eax	# unsigned2, tmp515
	movl	%eax, %edx	# tmp515, D.8432
	movq	-384(%rbp), %rax	# top, tmp516
	movb	%dl, 6(%rax)	# D.8432, top_74->unsignedp
	.loc 1 774 0
	jmp	.L99	#
.L121:
	.loc 1 776 0
	movq	-456(%rbp), %rax	# pfile, tmp517
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp517,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L122:
	.loc 1 778 0
	movq	-384(%rbp), %rax	# top, tmp518
	movl	(%rax), %eax	# top_74->op, D.8429
	cmpl	$19, %eax	#, D.8429
	je	.L168	#,
	.loc 1 779 0
	movq	-456(%rbp), %rax	# pfile, tmp519
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp519,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L168:
	.loc 1 780 0
	subq	$16, -384(%rbp)	#, top
	.loc 1 781 0
	movq	-384(%rbp), %rax	# top, tmp520
	movq	8(%rax), %rax	# top_246->value, D.8437
	testq	%rax, %rax	# D.8437
	je	.L169	#,
	.loc 1 781 0 is_stmt 0 discriminator 1
	subl	$1, -440(%rbp)	#, skip_evaluation
.L169:
	.loc 1 782 0 is_stmt 1
	movq	-384(%rbp), %rax	# top, tmp521
	movq	8(%rax), %rax	# top_246->value, D.8437
	testq	%rax, %rax	# D.8437
	je	.L170	#,
	.loc 1 782 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# v1, iftmp.37
	jmp	.L171	#
.L170:
	.loc 1 782 0 discriminator 2
	movq	-368(%rbp), %rax	# v2, iftmp.37
.L171:
	.loc 1 782 0 discriminator 3
	movq	-384(%rbp), %rdx	# top, tmp522
	movq	%rax, 8(%rdx)	# iftmp.37, top_246->value
	.loc 1 783 0 is_stmt 1 discriminator 3
	movl	-412(%rbp), %eax	# unsigned1, tmp523
	movl	%eax, %edx	# tmp523, D.8432
	movl	-416(%rbp), %eax	# unsigned2, tmp524
	orl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp525
	movb	%dl, 6(%rax)	# D.8432, top_246->unsignedp
	.loc 1 784 0 discriminator 3
	jmp	.L99	#
.L124:
	.loc 1 786 0
	movl	-352(%rbp), %eax	# op.op, D.8429
	cmpl	$23, %eax	#, D.8429
	je	.L172	#,
	.loc 1 787 0
	movq	-456(%rbp), %rax	# pfile, tmp526
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp526,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L172:
	.loc 1 788 0
	movq	-368(%rbp), %rax	# v2, tmp527
	movq	%rax, -344(%rbp)	# tmp527, op.value
	.loc 1 789 0
	movl	-416(%rbp), %eax	# unsigned2, tmp528
	movb	%al, -346(%rbp)	# D.8432, op.unsignedp
	.loc 1 790 0
	jmp	.L92	#
.L129:
	.loc 1 793 0
	movl	-352(%rbp), %eax	# op.op, D.8429
	cmpl	$23, %eax	#, D.8429
	jne	.L173	#,
	.loc 1 794 0
	movq	-456(%rbp), %rax	# pfile, tmp529
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp529,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L173:
	.loc 1 795 0
	nop
.L190:
.LBE7:
.LBE9:
	.loc 1 858 0
	movq	-456(%rbp), %rax	# pfile, tmp572
	movq	176(%rax), %rax	# pfile_43(D)->mi_ind_cmacro, D.8439
	testq	%rax, %rax	# D.8439
	je	.L192	#,
	jmp	.L198	#
.L99:
.LBB10:
	.loc 1 637 0 discriminator 1
	movq	-384(%rbp), %rax	# top, tmp530
	movzbl	4(%rax), %eax	# top_9->prio, D.8432
	movzbl	%al, %eax	# D.8432, D.8434
	cmpl	-424(%rbp), %eax	# prio, D.8434
	jae	.L175	#,
	.loc 1 800 0
	movl	-420(%rbp), %eax	# flags, tmp531
	andl	$8, %eax	#, D.8434
	testl	%eax, %eax	# D.8434
	je	.L98	#,
	.loc 1 801 0
	movl	-352(%rbp), %eax	# op.op, D.8429
	cmpl	$18, %eax	#, D.8429
	je	.L177	#,
	cmpl	$18, %eax	#, D.8429
	ja	.L178	#,
	cmpl	$17, %eax	#, D.8429
	je	.L179	#,
	.loc 1 812 0
	jmp	.L200	#
.L178:
	.loc 1 801 0
	cmpl	$19, %eax	#, D.8429
	je	.L179	#,
	cmpl	$20, %eax	#, D.8429
	je	.L180	#,
	.loc 1 812 0
	jmp	.L200	#
.L177:
	.loc 1 803 0
	movq	-384(%rbp), %rax	# top, tmp532
	movq	8(%rax), %rax	# top_9->value, D.8437
	testq	%rax, %rax	# D.8437
	je	.L181	#,
	.loc 1 803 0 is_stmt 0 discriminator 1
	addl	$1, -440(%rbp)	#, skip_evaluation
	jmp	.L98	#
.L181:
	.loc 1 803 0 discriminator 2
	jmp	.L98	#
.L179:
	.loc 1 805 0 is_stmt 1
	movq	-384(%rbp), %rax	# top, tmp533
	movq	8(%rax), %rax	# top_9->value, D.8437
	testq	%rax, %rax	# D.8437
	jne	.L182	#,
	.loc 1 805 0 is_stmt 0 discriminator 1
	addl	$1, -440(%rbp)	#, skip_evaluation
	jmp	.L98	#
.L182:
	.loc 1 805 0 discriminator 2
	jmp	.L98	#
.L180:
	.loc 1 807 0 is_stmt 1
	movq	-384(%rbp), %rax	# top, tmp534
	subq	$16, %rax	#, D.8436
	movq	8(%rax), %rax	# _273->value, D.8437
	testq	%rax, %rax	# D.8437
	je	.L183	#,
	.loc 1 808 0
	addl	$1, -440(%rbp)	#, skip_evaluation
	.loc 1 812 0
	jmp	.L200	#
.L183:
	.loc 1 810 0
	subl	$1, -440(%rbp)	#, skip_evaluation
.L200:
	.loc 1 812 0
	nop
.L98:
	.loc 1 817 0
	movl	-420(%rbp), %eax	# flags, tmp535
	andl	$2, %eax	#, D.8434
	testl	%eax, %eax	# D.8434
	je	.L184	#,
	.loc 1 819 0
	movq	-384(%rbp), %rax	# top, tmp536
	movzbl	5(%rax), %eax	# top_10->flags, D.8432
	movzbl	%al, %eax	# D.8432, D.8433
	andl	$1, %eax	#, D.8433
	testl	%eax, %eax	# D.8433
	je	.L185	#,
	.loc 1 820 0
	movl	-352(%rbp), %edx	# op.op, D.8429
	movq	-456(%rbp), %rax	# pfile, tmp537
	movl	%edx, %esi	# D.8429,
	movq	%rax, %rdi	# tmp537,
	call	op_as_text	#
	movq	%rax, %rdx	#, D.8435
	movq	-456(%rbp), %rax	# pfile, tmp538
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp538,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L184:
	.loc 1 825 0
	movq	-384(%rbp), %rax	# top, tmp539
	movzbl	5(%rax), %eax	# top_10->flags, D.8432
	movzbl	%al, %eax	# D.8432, D.8433
	andl	$1, %eax	#, D.8433
	testl	%eax, %eax	# D.8433
	jne	.L185	#,
	.loc 1 826 0
	movl	-352(%rbp), %edx	# op.op, D.8429
	movq	-456(%rbp), %rax	# pfile, tmp540
	movl	%edx, %esi	# D.8429,
	movq	%rax, %rdi	# tmp540,
	call	op_as_text	#
	movq	%rax, %rdx	#, D.8435
	movq	-456(%rbp), %rax	# pfile, tmp541
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp541,
	movl	$0, %eax	#,
	call	cpp_error	#
	nop
	jmp	.L189	#
.L185:
	.loc 1 831 0
	addq	$16, -384(%rbp)	#, top
	.loc 1 832 0
	movq	-384(%rbp), %rax	# top, tmp542
	cmpq	-392(%rbp), %rax	# limit, tmp542
	jne	.L186	#,
.LBB8:
	.loc 1 835 0
	movq	-392(%rbp), %rdx	# limit, limit.38
	movq	-400(%rbp), %rax	# stack, stack.39
	subq	%rax, %rdx	# stack.39, D.8437
	movq	%rdx, %rax	# D.8437, D.8437
	movl	%eax, -408(%rbp)	# D.8437, old_size
	.loc 1 836 0
	movl	-408(%rbp), %eax	# old_size, tmp546
	addl	%eax, %eax	# tmp545
	movl	%eax, -404(%rbp)	# tmp545, new_size
	.loc 1 837 0
	leaq	-336(%rbp), %rax	#, tmp547
	cmpq	%rax, -400(%rbp)	# tmp547, stack
	je	.L187	#,
	.loc 1 838 0
	movl	-404(%rbp), %eax	# new_size, tmp548
	movslq	%eax, %rdx	# tmp548, D.8438
	movq	-400(%rbp), %rax	# stack, tmp549
	movq	%rdx, %rsi	# D.8438,
	movq	%rax, %rdi	# tmp549,
	call	xrealloc	#
	movq	%rax, -376(%rbp)	# tmp550, new_stack
	jmp	.L188	#
.L187:
	.loc 1 841 0
	movl	-404(%rbp), %eax	# new_size, tmp551
	cltq
	movq	%rax, %rdi	# D.8438,
	call	xmalloc	#
	movq	%rax, -376(%rbp)	# tmp552, new_stack
	.loc 1 842 0
	movl	-408(%rbp), %eax	# old_size, tmp553
	movslq	%eax, %rdx	# tmp553, D.8438
	movq	-400(%rbp), %rcx	# stack, tmp554
	movq	-376(%rbp), %rax	# new_stack, tmp555
	movq	%rcx, %rsi	# tmp554,
	movq	%rax, %rdi	# tmp555,
	call	memcpy	#
.L188:
	.loc 1 844 0
	movq	-376(%rbp), %rax	# new_stack, tmp556
	movq	%rax, -400(%rbp)	# tmp556, stack
	.loc 1 845 0
	movl	-408(%rbp), %eax	# old_size, tmp557
	movslq	%eax, %rdx	# tmp557, D.8440
	movq	-376(%rbp), %rax	# new_stack, tmp561
	addq	%rdx, %rax	# D.8440, tmp560
	movq	%rax, -384(%rbp)	# tmp560, top
	.loc 1 846 0
	movl	-404(%rbp), %eax	# new_size, tmp562
	movslq	%eax, %rdx	# tmp562, D.8440
	movq	-376(%rbp), %rax	# new_stack, tmp566
	addq	%rdx, %rax	# D.8440, tmp565
	movq	%rax, -392(%rbp)	# tmp565, limit
.L186:
.LBE8:
	.loc 1 849 0
	movl	-420(%rbp), %eax	# flags, tmp567
	movl	%eax, %edx	# tmp567, D.8432
	movq	-384(%rbp), %rax	# top, tmp568
	movb	%dl, 5(%rax)	# D.8432, top_11->flags
	.loc 1 850 0
	movl	-424(%rbp), %eax	# prio, tmp569
	andl	$-2, %eax	#, D.8432
	movl	%eax, %edx	# D.8432, D.8432
	movq	-384(%rbp), %rax	# top, tmp570
	movb	%dl, 4(%rax)	# D.8432, top_11->prio
	.loc 1 851 0
	movl	-352(%rbp), %edx	# op.op, D.8429
	movq	-384(%rbp), %rax	# top, tmp571
	movl	%edx, (%rax)	# D.8429, top_11->op
.LBE10:
	.loc 1 852 0
	jmp	.L191	#
.L198:
	.loc 1 858 0 discriminator 1
	cmpl	$0, -428(%rbp)	#, saw_leading_not
	je	.L193	#,
	cmpl	$3, -432(%rbp)	#, lex_count
	je	.L192	#,
.L193:
	.loc 1 859 0
	movq	-456(%rbp), %rax	# pfile, tmp573
	movq	$0, 176(%rax)	#, pfile_43(D)->mi_ind_cmacro
.L192:
	.loc 1 861 0
	movq	-384(%rbp), %rax	# top, tmp574
	addq	$16, %rax	#, D.8436
	movq	8(%rax), %rax	# _259->value, D.8437
	testq	%rax, %rax	# D.8437
	setne	%al	#, D.8430
	movzbl	%al, %eax	# D.8430, tmp575
	movl	%eax, -436(%rbp)	# tmp575, result
	.loc 1 863 0
	movq	-384(%rbp), %rax	# top, tmp576
	cmpq	-400(%rbp), %rax	# stack, tmp576
	je	.L194	#,
	.loc 1 864 0
	movq	-456(%rbp), %rax	# pfile, tmp577
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp577,
	movl	$0, %eax	#,
	call	cpp_ice	#
	jmp	.L189	#
.L194:
	.loc 1 865 0
	movq	-384(%rbp), %rax	# top, tmp578
	addq	$16, %rax	#, D.8436
	movzbl	5(%rax), %eax	# _263->flags, D.8432
	movzbl	%al, %eax	# D.8432, D.8433
	andl	$1, %eax	#, D.8433
	testl	%eax, %eax	# D.8433
	jne	.L195	#,
	.loc 1 867 0
	movq	-456(%rbp), %rax	# pfile, tmp579
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp579,
	movl	$0, %eax	#,
	call	cpp_error	#
	jmp	.L189	#
.L199:
.LBB11:
	.loc 1 607 0
	nop
.L189:
.LBE11:
	.loc 1 869 0
	movl	$0, -436(%rbp)	#, result
.L195:
	.loc 1 873 0
	leaq	-336(%rbp), %rax	#, tmp580
	cmpq	%rax, -400(%rbp)	# tmp580, stack
	je	.L196	#,
	.loc 1 874 0
	movq	-400(%rbp), %rax	# stack, tmp581
	movq	%rax, %rdi	# tmp581,
	call	free	#
.L196:
	.loc 1 875 0
	movl	-436(%rbp), %eax	# result, D.8433
	.loc 1 876 0
	addq	$456, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	_cpp_parse_expr, .-_cpp_parse_expr
	.type	op_as_text, @function
op_as_text:
.LFB15:
	.loc 1 883 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movl	%esi, -44(%rbp)	# op, op
	.loc 1 886 0
	movl	-44(%rbp), %eax	# op, tmp62
	movb	%al, -26(%rbp)	# D.8463, token.type
	.loc 1 887 0
	movb	$0, -25(%rbp)	#, token.flags
	.loc 1 888 0
	leaq	-32(%rbp), %rdx	#, tmp63
	movq	-40(%rbp), %rax	# pfile, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	cpp_token_as_text	#
	.loc 1 889 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	op_as_text, .-op_as_text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "obstack.h"
	.file 5 "hashtable.h"
	.file 6 "cpphash.h"
	.file 7 "line-map.h"
	.file 8 "cpplib.h"
	.file 9 "./safe-ctype.h"
	.file 10 "libiberty.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x18f2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF373
	.byte	0x1
	.long	.LASF374
	.long	.LASF375
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
	.long	.LASF8
	.byte	0x2
	.byte	0x85
	.long	0x4b
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0x88
	.long	0x4b
	.uleb128 0x6
	.byte	0x8
	.long	0x8a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	0x8a
	.long	0xa1
	.uleb128 0x8
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0x9
	.long	0x8a
	.uleb128 0xa
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x12d
	.uleb128 0xb
	.long	.LASF11
	.sleb128 1
	.uleb128 0xb
	.long	.LASF12
	.sleb128 2
	.uleb128 0xb
	.long	.LASF13
	.sleb128 4
	.uleb128 0xb
	.long	.LASF14
	.sleb128 8
	.uleb128 0xb
	.long	.LASF15
	.sleb128 16
	.uleb128 0xb
	.long	.LASF16
	.sleb128 32
	.uleb128 0xb
	.long	.LASF17
	.sleb128 64
	.uleb128 0xb
	.long	.LASF18
	.sleb128 128
	.uleb128 0xb
	.long	.LASF19
	.sleb128 256
	.uleb128 0xb
	.long	.LASF20
	.sleb128 512
	.uleb128 0xb
	.long	.LASF21
	.sleb128 1024
	.uleb128 0xb
	.long	.LASF22
	.sleb128 2048
	.uleb128 0xb
	.long	.LASF23
	.sleb128 136
	.uleb128 0xb
	.long	.LASF24
	.sleb128 140
	.uleb128 0xb
	.long	.LASF25
	.sleb128 516
	.uleb128 0xb
	.long	.LASF26
	.sleb128 172
	.uleb128 0xb
	.long	.LASF27
	.sleb128 3072
	.uleb128 0xb
	.long	.LASF28
	.sleb128 3088
	.byte	0
	.uleb128 0x5
	.long	.LASF29
	.byte	0x3
	.byte	0x30
	.long	0x79
	.uleb128 0x5
	.long	.LASF30
	.byte	0x3
	.byte	0x3c
	.long	0x6e
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF31
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF32
	.uleb128 0xc
	.long	.LASF36
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x182
	.uleb128 0xd
	.long	.LASF33
	.byte	0x4
	.byte	0xa3
	.long	0x84
	.byte	0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x4
	.byte	0xa4
	.long	0x182
	.byte	0x8
	.uleb128 0xd
	.long	.LASF35
	.byte	0x4
	.byte	0xa5
	.long	0x91
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x151
	.uleb128 0xc
	.long	.LASF37
	.byte	0x58
	.byte	0x4
	.byte	0xa8
	.long	0x23a
	.uleb128 0xd
	.long	.LASF38
	.byte	0x4
	.byte	0xaa
	.long	0x44
	.byte	0
	.uleb128 0xd
	.long	.LASF39
	.byte	0x4
	.byte	0xab
	.long	0x182
	.byte	0x8
	.uleb128 0xd
	.long	.LASF40
	.byte	0x4
	.byte	0xac
	.long	0x84
	.byte	0x10
	.uleb128 0xd
	.long	.LASF41
	.byte	0x4
	.byte	0xad
	.long	0x84
	.byte	0x18
	.uleb128 0xd
	.long	.LASF42
	.byte	0x4
	.byte	0xae
	.long	0x84
	.byte	0x20
	.uleb128 0xd
	.long	.LASF43
	.byte	0x4
	.byte	0xaf
	.long	0x44
	.byte	0x28
	.uleb128 0xd
	.long	.LASF44
	.byte	0x4
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0xd
	.long	.LASF45
	.byte	0x4
	.byte	0xb5
	.long	0x24e
	.byte	0x38
	.uleb128 0xd
	.long	.LASF46
	.byte	0x4
	.byte	0xb6
	.long	0x264
	.byte	0x40
	.uleb128 0xd
	.long	.LASF47
	.byte	0x4
	.byte	0xb7
	.long	0x42
	.byte	0x48
	.uleb128 0xe
	.long	.LASF48
	.byte	0x4
	.byte	0xbd
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0xe
	.long	.LASF49
	.byte	0x4
	.byte	0xbe
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0xe
	.long	.LASF50
	.byte	0x4
	.byte	0xc2
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	0x182
	.long	0x24e
	.uleb128 0x10
	.long	0x42
	.uleb128 0x10
	.long	0x44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23a
	.uleb128 0x11
	.long	0x264
	.uleb128 0x10
	.long	0x42
	.uleb128 0x10
	.long	0x182
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x254
	.uleb128 0xc
	.long	.LASF51
	.byte	0x10
	.byte	0x5
	.byte	0x1a
	.long	0x28f
	.uleb128 0x12
	.string	"len"
	.byte	0x5
	.byte	0x1c
	.long	0x3b
	.byte	0
	.uleb128 0x12
	.string	"str"
	.byte	0x5
	.byte	0x1d
	.long	0x28f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x295
	.uleb128 0x9
	.long	0x52
	.uleb128 0x5
	.long	.LASF52
	.byte	0x5
	.byte	0x28
	.long	0x2a5
	.uleb128 0x13
	.string	"ht"
	.byte	0x80
	.byte	0x5
	.byte	0x2e
	.long	0x311
	.uleb128 0xd
	.long	.LASF53
	.byte	0x5
	.byte	0x31
	.long	0x188
	.byte	0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x5
	.byte	0x33
	.long	0x322
	.byte	0x58
	.uleb128 0xd
	.long	.LASF55
	.byte	0x5
	.byte	0x35
	.long	0x33d
	.byte	0x60
	.uleb128 0xd
	.long	.LASF56
	.byte	0x5
	.byte	0x37
	.long	0x3b
	.byte	0x68
	.uleb128 0xd
	.long	.LASF57
	.byte	0x5
	.byte	0x38
	.long	0x3b
	.byte	0x6c
	.uleb128 0xd
	.long	.LASF58
	.byte	0x5
	.byte	0x3b
	.long	0x56a
	.byte	0x70
	.uleb128 0xd
	.long	.LASF59
	.byte	0x5
	.byte	0x3e
	.long	0x3b
	.byte	0x78
	.uleb128 0xd
	.long	.LASF60
	.byte	0x5
	.byte	0x3f
	.long	0x3b
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.long	.LASF61
	.byte	0x5
	.byte	0x29
	.long	0x31c
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0x6
	.byte	0x8
	.long	0x311
	.uleb128 0xf
	.long	0x311
	.long	0x337
	.uleb128 0x10
	.long	0x337
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29a
	.uleb128 0x6
	.byte	0x8
	.long	0x328
	.uleb128 0x14
	.long	.LASF62
	.value	0x340
	.byte	0x6
	.byte	0xe1
	.long	0x56a
	.uleb128 0xd
	.long	.LASF63
	.byte	0x6
	.byte	0xe4
	.long	0x1170
	.byte	0
	.uleb128 0xd
	.long	.LASF64
	.byte	0x6
	.byte	0xe7
	.long	0x1092
	.byte	0x8
	.uleb128 0xd
	.long	.LASF65
	.byte	0x6
	.byte	0xea
	.long	0x5c8
	.byte	0x18
	.uleb128 0x12
	.string	"map"
	.byte	0x6
	.byte	0xeb
	.long	0xe0d
	.byte	0x38
	.uleb128 0xd
	.long	.LASF66
	.byte	0x6
	.byte	0xec
	.long	0x3b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF67
	.byte	0x6
	.byte	0xef
	.long	0x3b
	.byte	0x44
	.uleb128 0xd
	.long	.LASF68
	.byte	0x6
	.byte	0xf2
	.long	0x108c
	.byte	0x48
	.uleb128 0xd
	.long	.LASF69
	.byte	0x6
	.byte	0xf3
	.long	0x108c
	.byte	0x50
	.uleb128 0xd
	.long	.LASF70
	.byte	0x6
	.byte	0xf4
	.long	0x108c
	.byte	0x58
	.uleb128 0xd
	.long	.LASF71
	.byte	0x6
	.byte	0xf7
	.long	0x1025
	.byte	0x60
	.uleb128 0xd
	.long	.LASF72
	.byte	0x6
	.byte	0xf8
	.long	0x1176
	.byte	0x98
	.uleb128 0xd
	.long	.LASF73
	.byte	0x6
	.byte	0xfb
	.long	0x1181
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF74
	.byte	0x6
	.byte	0xfe
	.long	0x118c
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF75
	.byte	0x6
	.byte	0xff
	.long	0x118c
	.byte	0xb0
	.uleb128 0x15
	.long	.LASF76
	.byte	0x6
	.value	0x100
	.long	0x623
	.byte	0xb8
	.uleb128 0x15
	.long	.LASF77
	.byte	0x6
	.value	0x103
	.long	0x1014
	.byte	0xc0
	.uleb128 0x15
	.long	.LASF78
	.byte	0x6
	.value	0x104
	.long	0xfc6
	.byte	0xc8
	.uleb128 0x15
	.long	.LASF79
	.byte	0x6
	.value	0x104
	.long	0x100e
	.byte	0xe8
	.uleb128 0x15
	.long	.LASF80
	.byte	0x6
	.value	0x105
	.long	0x3b
	.byte	0xf0
	.uleb128 0x15
	.long	.LASF81
	.byte	0x6
	.value	0x108
	.long	0x3b
	.byte	0xf4
	.uleb128 0x15
	.long	.LASF82
	.byte	0x6
	.value	0x10b
	.long	0x3b
	.byte	0xf8
	.uleb128 0x15
	.long	.LASF83
	.byte	0x6
	.value	0x10f
	.long	0x3b
	.byte	0xfc
	.uleb128 0x16
	.long	.LASF84
	.byte	0x6
	.value	0x110
	.long	0x3b
	.value	0x100
	.uleb128 0x16
	.long	.LASF85
	.byte	0x6
	.value	0x113
	.long	0xf8c
	.value	0x108
	.uleb128 0x16
	.long	.LASF86
	.byte	0x6
	.value	0x114
	.long	0x3b
	.value	0x110
	.uleb128 0x16
	.long	.LASF87
	.byte	0x6
	.value	0x117
	.long	0x119c
	.value	0x118
	.uleb128 0x16
	.long	.LASF88
	.byte	0x6
	.value	0x11b
	.long	0x3b
	.value	0x120
	.uleb128 0x16
	.long	.LASF89
	.byte	0x6
	.value	0x11e
	.long	0x9a0
	.value	0x128
	.uleb128 0x16
	.long	.LASF90
	.byte	0x6
	.value	0x11f
	.long	0x9a0
	.value	0x140
	.uleb128 0x16
	.long	.LASF91
	.byte	0x6
	.value	0x122
	.long	0x9a0
	.value	0x158
	.uleb128 0x17
	.string	"eof"
	.byte	0x6
	.value	0x123
	.long	0x9a0
	.value	0x170
	.uleb128 0x16
	.long	.LASF92
	.byte	0x6
	.value	0x126
	.long	0x11a7
	.value	0x188
	.uleb128 0x16
	.long	.LASF93
	.byte	0x6
	.value	0x12a
	.long	0x188
	.value	0x190
	.uleb128 0x16
	.long	.LASF94
	.byte	0x6
	.value	0x12e
	.long	0x188
	.value	0x1e8
	.uleb128 0x16
	.long	.LASF95
	.byte	0x6
	.value	0x132
	.long	0x11b2
	.value	0x240
	.uleb128 0x17
	.string	"cb"
	.byte	0x6
	.value	0x135
	.long	0xaae
	.value	0x248
	.uleb128 0x16
	.long	.LASF52
	.byte	0x6
	.value	0x138
	.long	0x11b8
	.value	0x280
	.uleb128 0x16
	.long	.LASF96
	.byte	0x6
	.value	0x13b
	.long	0x70d
	.value	0x288
	.uleb128 0x16
	.long	.LASF97
	.byte	0x6
	.value	0x13f
	.long	0x110b
	.value	0x310
	.uleb128 0x16
	.long	.LASF98
	.byte	0x6
	.value	0x143
	.long	0x52
	.value	0x338
	.uleb128 0x16
	.long	.LASF99
	.byte	0x6
	.value	0x146
	.long	0x52
	.value	0x339
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x343
	.uleb128 0xc
	.long	.LASF100
	.byte	0x18
	.byte	0x7
	.byte	0x29
	.long	0x5c8
	.uleb128 0xd
	.long	.LASF101
	.byte	0x7
	.byte	0x2b
	.long	0xa1
	.byte	0
	.uleb128 0xd
	.long	.LASF102
	.byte	0x7
	.byte	0x2c
	.long	0x3b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF103
	.byte	0x7
	.byte	0x2d
	.long	0x3b
	.byte	0xc
	.uleb128 0xd
	.long	.LASF104
	.byte	0x7
	.byte	0x2e
	.long	0x2d
	.byte	0x10
	.uleb128 0xe
	.long	.LASF105
	.byte	0x7
	.byte	0x2f
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0xd
	.long	.LASF106
	.byte	0x7
	.byte	0x30
	.long	0x52
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.long	.LASF65
	.byte	0x20
	.byte	0x7
	.byte	0x34
	.long	0x61d
	.uleb128 0xd
	.long	.LASF107
	.byte	0x7
	.byte	0x36
	.long	0x61d
	.byte	0
	.uleb128 0xd
	.long	.LASF108
	.byte	0x7
	.byte	0x37
	.long	0x3b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF109
	.byte	0x7
	.byte	0x38
	.long	0x3b
	.byte	0xc
	.uleb128 0xd
	.long	.LASF110
	.byte	0x7
	.byte	0x3d
	.long	0x2d
	.byte	0x10
	.uleb128 0xd
	.long	.LASF111
	.byte	0x7
	.byte	0x40
	.long	0x3b
	.byte	0x14
	.uleb128 0xd
	.long	.LASF112
	.byte	0x7
	.byte	0x43
	.long	0x623
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x570
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF113
	.uleb128 0x5
	.long	.LASF62
	.byte	0x8
	.byte	0x24
	.long	0x343
	.uleb128 0x5
	.long	.LASF114
	.byte	0x8
	.byte	0x26
	.long	0x640
	.uleb128 0xc
	.long	.LASF114
	.byte	0x90
	.byte	0x6
	.byte	0xa8
	.long	0x70d
	.uleb128 0x12
	.string	"cur"
	.byte	0x6
	.byte	0xaa
	.long	0x28f
	.byte	0
	.uleb128 0xd
	.long	.LASF115
	.byte	0x6
	.byte	0xab
	.long	0x28f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF116
	.byte	0x6
	.byte	0xac
	.long	0x28f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF117
	.byte	0x6
	.byte	0xad
	.long	0x28f
	.byte	0x18
	.uleb128 0xd
	.long	.LASF34
	.byte	0x6
	.byte	0xaf
	.long	0x1154
	.byte	0x20
	.uleb128 0x12
	.string	"buf"
	.byte	0x6
	.byte	0xb1
	.long	0x28f
	.byte	0x28
	.uleb128 0x12
	.string	"inc"
	.byte	0x6
	.byte	0xb5
	.long	0x115f
	.byte	0x30
	.uleb128 0xd
	.long	.LASF118
	.byte	0x6
	.byte	0xb9
	.long	0x116a
	.byte	0x38
	.uleb128 0xd
	.long	.LASF119
	.byte	0x6
	.byte	0xbc
	.long	0x3b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF120
	.byte	0x6
	.byte	0xbf
	.long	0x52
	.byte	0x44
	.uleb128 0xd
	.long	.LASF121
	.byte	0x6
	.byte	0xc3
	.long	0x28f
	.byte	0x48
	.uleb128 0xd
	.long	.LASF122
	.byte	0x6
	.byte	0xc9
	.long	0x52
	.byte	0x50
	.uleb128 0xd
	.long	.LASF123
	.byte	0x6
	.byte	0xce
	.long	0x52
	.byte	0x51
	.uleb128 0xd
	.long	.LASF124
	.byte	0x6
	.byte	0xd2
	.long	0x52
	.byte	0x52
	.uleb128 0xd
	.long	.LASF125
	.byte	0x6
	.byte	0xd7
	.long	0x623
	.byte	0x53
	.uleb128 0x12
	.string	"dir"
	.byte	0x6
	.byte	0xdb
	.long	0xd6a
	.byte	0x58
	.byte	0
	.uleb128 0xc
	.long	.LASF126
	.byte	0x88
	.byte	0x8
	.byte	0xcd
	.long	0x9a0
	.uleb128 0xd
	.long	.LASF127
	.byte	0x8
	.byte	0xd0
	.long	0xa1
	.byte	0
	.uleb128 0xd
	.long	.LASF128
	.byte	0x8
	.byte	0xd1
	.long	0xa1
	.byte	0x8
	.uleb128 0xd
	.long	.LASF129
	.byte	0x8
	.byte	0xd4
	.long	0x3b
	.byte	0x10
	.uleb128 0xd
	.long	.LASF130
	.byte	0x8
	.byte	0xd7
	.long	0xd64
	.byte	0x18
	.uleb128 0xd
	.long	.LASF131
	.byte	0x8
	.byte	0xdb
	.long	0xa1
	.byte	0x20
	.uleb128 0xd
	.long	.LASF132
	.byte	0x8
	.byte	0xde
	.long	0xdcb
	.byte	0x28
	.uleb128 0xd
	.long	.LASF133
	.byte	0x8
	.byte	0xdf
	.long	0xdcb
	.byte	0x30
	.uleb128 0xd
	.long	.LASF134
	.byte	0x8
	.byte	0xe3
	.long	0xdd6
	.byte	0x38
	.uleb128 0xd
	.long	.LASF135
	.byte	0x8
	.byte	0xe7
	.long	0xa1
	.byte	0x40
	.uleb128 0xd
	.long	.LASF136
	.byte	0x8
	.byte	0xe8
	.long	0x3b
	.byte	0x48
	.uleb128 0xd
	.long	.LASF137
	.byte	0x8
	.byte	0xeb
	.long	0xa1
	.byte	0x50
	.uleb128 0xd
	.long	.LASF138
	.byte	0x8
	.byte	0xee
	.long	0xcc7
	.byte	0x58
	.uleb128 0xd
	.long	.LASF139
	.byte	0x8
	.byte	0xf1
	.long	0x52
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF140
	.byte	0x8
	.byte	0xf4
	.long	0x52
	.byte	0x5d
	.uleb128 0xd
	.long	.LASF141
	.byte	0x8
	.byte	0xf7
	.long	0x52
	.byte	0x5e
	.uleb128 0xd
	.long	.LASF142
	.byte	0x8
	.byte	0xfa
	.long	0x52
	.byte	0x5f
	.uleb128 0xd
	.long	.LASF143
	.byte	0x8
	.byte	0xfd
	.long	0x52
	.byte	0x60
	.uleb128 0x15
	.long	.LASF144
	.byte	0x8
	.value	0x100
	.long	0x52
	.byte	0x61
	.uleb128 0x15
	.long	.LASF145
	.byte	0x8
	.value	0x103
	.long	0x52
	.byte	0x62
	.uleb128 0x15
	.long	.LASF146
	.byte	0x8
	.value	0x106
	.long	0x52
	.byte	0x63
	.uleb128 0x15
	.long	.LASF147
	.byte	0x8
	.value	0x109
	.long	0x52
	.byte	0x64
	.uleb128 0x15
	.long	.LASF148
	.byte	0x8
	.value	0x10e
	.long	0x52
	.byte	0x65
	.uleb128 0x15
	.long	.LASF149
	.byte	0x8
	.value	0x111
	.long	0x52
	.byte	0x66
	.uleb128 0x15
	.long	.LASF150
	.byte	0x8
	.value	0x115
	.long	0x52
	.byte	0x67
	.uleb128 0x15
	.long	.LASF151
	.byte	0x8
	.value	0x118
	.long	0x52
	.byte	0x68
	.uleb128 0x15
	.long	.LASF152
	.byte	0x8
	.value	0x11b
	.long	0x52
	.byte	0x69
	.uleb128 0x15
	.long	.LASF153
	.byte	0x8
	.value	0x11e
	.long	0x52
	.byte	0x6a
	.uleb128 0x15
	.long	.LASF154
	.byte	0x8
	.value	0x121
	.long	0x52
	.byte	0x6b
	.uleb128 0x15
	.long	.LASF155
	.byte	0x8
	.value	0x124
	.long	0x52
	.byte	0x6c
	.uleb128 0x15
	.long	.LASF156
	.byte	0x8
	.value	0x128
	.long	0x52
	.byte	0x6d
	.uleb128 0x15
	.long	.LASF157
	.byte	0x8
	.value	0x12b
	.long	0x52
	.byte	0x6e
	.uleb128 0x15
	.long	.LASF158
	.byte	0x8
	.value	0x12e
	.long	0x52
	.byte	0x6f
	.uleb128 0x15
	.long	.LASF159
	.byte	0x8
	.value	0x131
	.long	0x52
	.byte	0x70
	.uleb128 0x15
	.long	.LASF160
	.byte	0x8
	.value	0x135
	.long	0x52
	.byte	0x71
	.uleb128 0x15
	.long	.LASF161
	.byte	0x8
	.value	0x138
	.long	0x52
	.byte	0x72
	.uleb128 0x15
	.long	.LASF162
	.byte	0x8
	.value	0x13c
	.long	0x52
	.byte	0x73
	.uleb128 0x15
	.long	.LASF163
	.byte	0x8
	.value	0x140
	.long	0x52
	.byte	0x74
	.uleb128 0x15
	.long	.LASF164
	.byte	0x8
	.value	0x143
	.long	0x52
	.byte	0x75
	.uleb128 0x15
	.long	.LASF165
	.byte	0x8
	.value	0x147
	.long	0x52
	.byte	0x76
	.uleb128 0x15
	.long	.LASF166
	.byte	0x8
	.value	0x14a
	.long	0x52
	.byte	0x77
	.uleb128 0x15
	.long	.LASF167
	.byte	0x8
	.value	0x14d
	.long	0x52
	.byte	0x78
	.uleb128 0x18
	.string	"c99"
	.byte	0x8
	.value	0x150
	.long	0x52
	.byte	0x79
	.uleb128 0x15
	.long	.LASF168
	.byte	0x8
	.value	0x153
	.long	0x52
	.byte	0x7a
	.uleb128 0x15
	.long	.LASF169
	.byte	0x8
	.value	0x157
	.long	0x52
	.byte	0x7b
	.uleb128 0x15
	.long	.LASF170
	.byte	0x8
	.value	0x15a
	.long	0x52
	.byte	0x7c
	.uleb128 0x15
	.long	.LASF171
	.byte	0x8
	.value	0x15d
	.long	0x52
	.byte	0x7d
	.uleb128 0x15
	.long	.LASF172
	.byte	0x8
	.value	0x160
	.long	0x52
	.byte	0x7e
	.uleb128 0x15
	.long	.LASF173
	.byte	0x8
	.value	0x163
	.long	0x52
	.byte	0x7f
	.uleb128 0x15
	.long	.LASF174
	.byte	0x8
	.value	0x166
	.long	0x52
	.byte	0x80
	.uleb128 0x15
	.long	.LASF175
	.byte	0x8
	.value	0x169
	.long	0x52
	.byte	0x81
	.uleb128 0x15
	.long	.LASF176
	.byte	0x8
	.value	0x16e
	.long	0x52
	.byte	0x82
	.byte	0
	.uleb128 0x5
	.long	.LASF177
	.byte	0x8
	.byte	0x28
	.long	0x9ab
	.uleb128 0xc
	.long	.LASF177
	.byte	0x18
	.byte	0x8
	.byte	0xad
	.long	0x9f7
	.uleb128 0xd
	.long	.LASF66
	.byte	0x8
	.byte	0xaf
	.long	0x3b
	.byte	0
	.uleb128 0x12
	.string	"col"
	.byte	0x8
	.byte	0xb0
	.long	0x59
	.byte	0x4
	.uleb128 0xe
	.long	.LASF178
	.byte	0x8
	.byte	0xb1
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x4
	.uleb128 0xd
	.long	.LASF179
	.byte	0x8
	.byte	0xb2
	.long	0x52
	.byte	0x7
	.uleb128 0x12
	.string	"val"
	.byte	0x8
	.byte	0xbb
	.long	0xd10
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF180
	.byte	0x8
	.byte	0x29
	.long	0xa02
	.uleb128 0xc
	.long	.LASF180
	.byte	0x10
	.byte	0x8
	.byte	0x9c
	.long	0xa27
	.uleb128 0x12
	.string	"len"
	.byte	0x8
	.byte	0x9e
	.long	0x3b
	.byte	0
	.uleb128 0xd
	.long	.LASF181
	.byte	0x8
	.byte	0x9f
	.long	0x28f
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF182
	.byte	0x8
	.byte	0x2a
	.long	0xa32
	.uleb128 0x19
	.long	.LASF182
	.byte	0x20
	.byte	0x8
	.value	0x1b7
	.long	0xa9e
	.uleb128 0x15
	.long	.LASF183
	.byte	0x8
	.value	0x1b9
	.long	0x26a
	.byte	0
	.uleb128 0x15
	.long	.LASF184
	.byte	0x8
	.value	0x1ba
	.long	0x59
	.byte	0x10
	.uleb128 0x15
	.long	.LASF185
	.byte	0x8
	.value	0x1bb
	.long	0x52
	.byte	0x12
	.uleb128 0x15
	.long	.LASF186
	.byte	0x8
	.value	0x1bc
	.long	0x52
	.byte	0x13
	.uleb128 0x1a
	.long	.LASF178
	.byte	0x8
	.value	0x1bd
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x15
	.long	.LASF179
	.byte	0x8
	.value	0x1be
	.long	0x52
	.byte	0x15
	.uleb128 0x15
	.long	.LASF187
	.byte	0x8
	.value	0x1c6
	.long	0xef3
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF188
	.byte	0x8
	.byte	0x2b
	.long	0xaa9
	.uleb128 0x1b
	.long	.LASF188
	.uleb128 0x19
	.long	.LASF189
	.byte	0x38
	.byte	0x8
	.value	0x172
	.long	0xb17
	.uleb128 0x15
	.long	.LASF190
	.byte	0x8
	.value	0x175
	.long	0xdf7
	.byte	0
	.uleb128 0x15
	.long	.LASF191
	.byte	0x8
	.value	0x176
	.long	0xe18
	.byte	0x8
	.uleb128 0x15
	.long	.LASF192
	.byte	0x8
	.value	0x177
	.long	0xe38
	.byte	0x10
	.uleb128 0x15
	.long	.LASF193
	.byte	0x8
	.value	0x179
	.long	0xe53
	.byte	0x18
	.uleb128 0x15
	.long	.LASF194
	.byte	0x8
	.value	0x17a
	.long	0xe53
	.byte	0x20
	.uleb128 0x15
	.long	.LASF183
	.byte	0x8
	.value	0x17b
	.long	0xe79
	.byte	0x28
	.uleb128 0x15
	.long	.LASF195
	.byte	0x8
	.value	0x17c
	.long	0xe8f
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.long	.LASF265
	.byte	0x4
	.byte	0x8
	.byte	0x8f
	.long	0xcc7
	.uleb128 0xb
	.long	.LASF196
	.sleb128 0
	.uleb128 0xb
	.long	.LASF197
	.sleb128 1
	.uleb128 0xb
	.long	.LASF198
	.sleb128 2
	.uleb128 0xb
	.long	.LASF199
	.sleb128 3
	.uleb128 0xb
	.long	.LASF200
	.sleb128 4
	.uleb128 0xb
	.long	.LASF201
	.sleb128 5
	.uleb128 0xb
	.long	.LASF202
	.sleb128 6
	.uleb128 0xb
	.long	.LASF203
	.sleb128 7
	.uleb128 0xb
	.long	.LASF204
	.sleb128 8
	.uleb128 0xb
	.long	.LASF205
	.sleb128 9
	.uleb128 0xb
	.long	.LASF206
	.sleb128 10
	.uleb128 0xb
	.long	.LASF207
	.sleb128 11
	.uleb128 0xb
	.long	.LASF208
	.sleb128 12
	.uleb128 0xb
	.long	.LASF209
	.sleb128 13
	.uleb128 0xb
	.long	.LASF210
	.sleb128 14
	.uleb128 0xb
	.long	.LASF211
	.sleb128 15
	.uleb128 0xb
	.long	.LASF212
	.sleb128 16
	.uleb128 0xb
	.long	.LASF213
	.sleb128 17
	.uleb128 0xb
	.long	.LASF214
	.sleb128 18
	.uleb128 0xb
	.long	.LASF215
	.sleb128 19
	.uleb128 0xb
	.long	.LASF216
	.sleb128 20
	.uleb128 0xb
	.long	.LASF217
	.sleb128 21
	.uleb128 0xb
	.long	.LASF218
	.sleb128 22
	.uleb128 0xb
	.long	.LASF219
	.sleb128 23
	.uleb128 0xb
	.long	.LASF220
	.sleb128 24
	.uleb128 0xb
	.long	.LASF221
	.sleb128 25
	.uleb128 0xb
	.long	.LASF222
	.sleb128 26
	.uleb128 0xb
	.long	.LASF223
	.sleb128 27
	.uleb128 0xb
	.long	.LASF224
	.sleb128 28
	.uleb128 0xb
	.long	.LASF225
	.sleb128 29
	.uleb128 0xb
	.long	.LASF226
	.sleb128 30
	.uleb128 0xb
	.long	.LASF227
	.sleb128 31
	.uleb128 0xb
	.long	.LASF228
	.sleb128 32
	.uleb128 0xb
	.long	.LASF229
	.sleb128 33
	.uleb128 0xb
	.long	.LASF230
	.sleb128 34
	.uleb128 0xb
	.long	.LASF231
	.sleb128 35
	.uleb128 0xb
	.long	.LASF232
	.sleb128 36
	.uleb128 0xb
	.long	.LASF233
	.sleb128 37
	.uleb128 0xb
	.long	.LASF234
	.sleb128 38
	.uleb128 0xb
	.long	.LASF235
	.sleb128 39
	.uleb128 0xb
	.long	.LASF236
	.sleb128 40
	.uleb128 0xb
	.long	.LASF237
	.sleb128 41
	.uleb128 0xb
	.long	.LASF238
	.sleb128 42
	.uleb128 0xb
	.long	.LASF239
	.sleb128 43
	.uleb128 0xb
	.long	.LASF240
	.sleb128 44
	.uleb128 0xb
	.long	.LASF241
	.sleb128 45
	.uleb128 0xb
	.long	.LASF242
	.sleb128 46
	.uleb128 0xb
	.long	.LASF243
	.sleb128 47
	.uleb128 0xb
	.long	.LASF244
	.sleb128 48
	.uleb128 0xb
	.long	.LASF245
	.sleb128 49
	.uleb128 0xb
	.long	.LASF246
	.sleb128 50
	.uleb128 0xb
	.long	.LASF247
	.sleb128 51
	.uleb128 0xb
	.long	.LASF248
	.sleb128 52
	.uleb128 0xb
	.long	.LASF249
	.sleb128 53
	.uleb128 0xb
	.long	.LASF250
	.sleb128 54
	.uleb128 0xb
	.long	.LASF251
	.sleb128 55
	.uleb128 0xb
	.long	.LASF252
	.sleb128 56
	.uleb128 0xb
	.long	.LASF253
	.sleb128 57
	.uleb128 0xb
	.long	.LASF254
	.sleb128 58
	.uleb128 0xb
	.long	.LASF255
	.sleb128 59
	.uleb128 0xb
	.long	.LASF256
	.sleb128 60
	.uleb128 0xb
	.long	.LASF257
	.sleb128 61
	.uleb128 0xb
	.long	.LASF258
	.sleb128 62
	.uleb128 0xb
	.long	.LASF259
	.sleb128 63
	.uleb128 0xb
	.long	.LASF260
	.sleb128 64
	.uleb128 0xb
	.long	.LASF261
	.sleb128 65
	.uleb128 0xb
	.long	.LASF262
	.sleb128 66
	.uleb128 0xb
	.long	.LASF263
	.sleb128 67
	.uleb128 0xb
	.long	.LASF264
	.sleb128 68
	.byte	0
	.uleb128 0x1c
	.long	.LASF266
	.byte	0x4
	.byte	0x8
	.byte	0x98
	.long	0xd10
	.uleb128 0xb
	.long	.LASF267
	.sleb128 0
	.uleb128 0xb
	.long	.LASF268
	.sleb128 1
	.uleb128 0xb
	.long	.LASF269
	.sleb128 2
	.uleb128 0xb
	.long	.LASF270
	.sleb128 3
	.uleb128 0xb
	.long	.LASF271
	.sleb128 4
	.uleb128 0xb
	.long	.LASF272
	.sleb128 5
	.uleb128 0xb
	.long	.LASF273
	.sleb128 6
	.uleb128 0xb
	.long	.LASF274
	.sleb128 7
	.uleb128 0xb
	.long	.LASF275
	.sleb128 8
	.uleb128 0xb
	.long	.LASF276
	.sleb128 9
	.byte	0
	.uleb128 0x1d
	.byte	0x10
	.byte	0x8
	.byte	0xb4
	.long	0xd4e
	.uleb128 0x1e
	.long	.LASF277
	.byte	0x8
	.byte	0xb6
	.long	0xd4e
	.uleb128 0x1e
	.long	.LASF278
	.byte	0x8
	.byte	0xb7
	.long	0xd54
	.uleb128 0x1f
	.string	"str"
	.byte	0x8
	.byte	0xb8
	.long	0xa02
	.uleb128 0x1e
	.long	.LASF279
	.byte	0x8
	.byte	0xb9
	.long	0x3b
	.uleb128 0x1f
	.string	"c"
	.byte	0x8
	.byte	0xba
	.long	0x52
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa27
	.uleb128 0x6
	.byte	0x8
	.long	0xd5a
	.uleb128 0x9
	.long	0x9a0
	.uleb128 0x1b
	.long	.LASF280
	.uleb128 0x6
	.byte	0x8
	.long	0xd5f
	.uleb128 0xc
	.long	.LASF281
	.byte	0x38
	.byte	0x6
	.byte	0x44
	.long	0xdcb
	.uleb128 0xd
	.long	.LASF282
	.byte	0x6
	.byte	0x46
	.long	0xdcb
	.byte	0
	.uleb128 0xd
	.long	.LASF283
	.byte	0x6
	.byte	0x4a
	.long	0xa1
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x6
	.byte	0x4b
	.long	0x3b
	.byte	0x10
	.uleb128 0x12
	.string	"ino"
	.byte	0x6
	.byte	0x4e
	.long	0x12d
	.byte	0x18
	.uleb128 0x12
	.string	"dev"
	.byte	0x6
	.byte	0x4f
	.long	0x138
	.byte	0x20
	.uleb128 0xd
	.long	.LASF106
	.byte	0x6
	.byte	0x51
	.long	0x2d
	.byte	0x28
	.uleb128 0xd
	.long	.LASF284
	.byte	0x6
	.byte	0x54
	.long	0xf97
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd6a
	.uleb128 0x1b
	.long	.LASF285
	.uleb128 0x6
	.byte	0x8
	.long	0xdd1
	.uleb128 0x11
	.long	0xdf1
	.uleb128 0x10
	.long	0xdf1
	.uleb128 0x10
	.long	0xd54
	.uleb128 0x10
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62a
	.uleb128 0x6
	.byte	0x8
	.long	0xddc
	.uleb128 0x11
	.long	0xe0d
	.uleb128 0x10
	.long	0xdf1
	.uleb128 0x10
	.long	0xe0d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe13
	.uleb128 0x9
	.long	0x570
	.uleb128 0x6
	.byte	0x8
	.long	0xdfd
	.uleb128 0x11
	.long	0xe38
	.uleb128 0x10
	.long	0xdf1
	.uleb128 0x10
	.long	0x3b
	.uleb128 0x10
	.long	0x28f
	.uleb128 0x10
	.long	0xd54
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe1e
	.uleb128 0x11
	.long	0xe53
	.uleb128 0x10
	.long	0xdf1
	.uleb128 0x10
	.long	0x3b
	.uleb128 0x10
	.long	0xd4e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe3e
	.uleb128 0x11
	.long	0xe6e
	.uleb128 0x10
	.long	0xdf1
	.uleb128 0x10
	.long	0x3b
	.uleb128 0x10
	.long	0xe6e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe74
	.uleb128 0x9
	.long	0x9f7
	.uleb128 0x6
	.byte	0x8
	.long	0xe59
	.uleb128 0x11
	.long	0xe8f
	.uleb128 0x10
	.long	0xdf1
	.uleb128 0x10
	.long	0x3b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe7f
	.uleb128 0x20
	.long	.LASF286
	.byte	0x4
	.byte	0x8
	.value	0x19a
	.long	0xeb5
	.uleb128 0xb
	.long	.LASF287
	.sleb128 0
	.uleb128 0xb
	.long	.LASF288
	.sleb128 1
	.uleb128 0xb
	.long	.LASF289
	.sleb128 2
	.byte	0
	.uleb128 0x20
	.long	.LASF290
	.byte	0x4
	.byte	0x8
	.value	0x1a3
	.long	0xef3
	.uleb128 0xb
	.long	.LASF291
	.sleb128 0
	.uleb128 0xb
	.long	.LASF292
	.sleb128 1
	.uleb128 0xb
	.long	.LASF293
	.sleb128 2
	.uleb128 0xb
	.long	.LASF294
	.sleb128 3
	.uleb128 0xb
	.long	.LASF295
	.sleb128 4
	.uleb128 0xb
	.long	.LASF296
	.sleb128 5
	.uleb128 0xb
	.long	.LASF297
	.sleb128 6
	.uleb128 0xb
	.long	.LASF298
	.sleb128 7
	.byte	0
	.uleb128 0x21
	.byte	0x8
	.byte	0x8
	.value	0x1c0
	.long	0xf2d
	.uleb128 0x22
	.long	.LASF299
	.byte	0x8
	.value	0x1c2
	.long	0xf2d
	.uleb128 0x22
	.long	.LASF300
	.byte	0x8
	.value	0x1c3
	.long	0xf38
	.uleb128 0x22
	.long	.LASF301
	.byte	0x8
	.value	0x1c4
	.long	0xb17
	.uleb128 0x22
	.long	.LASF302
	.byte	0x8
	.value	0x1c5
	.long	0xeb5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa9e
	.uleb128 0x1b
	.long	.LASF303
	.uleb128 0x6
	.byte	0x8
	.long	0xf33
	.uleb128 0x5
	.long	.LASF304
	.byte	0x6
	.byte	0x2f
	.long	0xf49
	.uleb128 0xc
	.long	.LASF304
	.byte	0x20
	.byte	0x6
	.byte	0x30
	.long	0xf86
	.uleb128 0xd
	.long	.LASF282
	.byte	0x6
	.byte	0x32
	.long	0xf86
	.byte	0
	.uleb128 0xd
	.long	.LASF305
	.byte	0x6
	.byte	0x33
	.long	0xf8c
	.byte	0x8
	.uleb128 0x12
	.string	"cur"
	.byte	0x6
	.byte	0x33
	.long	0xf8c
	.byte	0x10
	.uleb128 0xd
	.long	.LASF33
	.byte	0x6
	.byte	0x33
	.long	0xf8c
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf49
	.uleb128 0x6
	.byte	0x8
	.long	0x52
	.uleb128 0x1b
	.long	.LASF306
	.uleb128 0x6
	.byte	0x8
	.long	0xf92
	.uleb128 0x23
	.long	.LASF376
	.byte	0x8
	.byte	0x6
	.byte	0x5a
	.long	0xfc0
	.uleb128 0x1e
	.long	.LASF307
	.byte	0x6
	.byte	0x5c
	.long	0xd54
	.uleb128 0x1e
	.long	.LASF308
	.byte	0x6
	.byte	0x5d
	.long	0xfc0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd54
	.uleb128 0x5
	.long	.LASF309
	.byte	0x6
	.byte	0x61
	.long	0xfd1
	.uleb128 0xc
	.long	.LASF309
	.byte	0x20
	.byte	0x6
	.byte	0x62
	.long	0x100e
	.uleb128 0xd
	.long	.LASF282
	.byte	0x6
	.byte	0x64
	.long	0x100e
	.byte	0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x6
	.byte	0x64
	.long	0x100e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF305
	.byte	0x6
	.byte	0x65
	.long	0x1014
	.byte	0x10
	.uleb128 0xd
	.long	.LASF33
	.byte	0x6
	.byte	0x65
	.long	0x1014
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfc6
	.uleb128 0x6
	.byte	0x8
	.long	0x9a0
	.uleb128 0x5
	.long	.LASF310
	.byte	0x6
	.byte	0x68
	.long	0x1025
	.uleb128 0xc
	.long	.LASF310
	.byte	0x38
	.byte	0x6
	.byte	0x69
	.long	0x1086
	.uleb128 0xd
	.long	.LASF282
	.byte	0x6
	.byte	0x6c
	.long	0x1086
	.byte	0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x6
	.byte	0x6c
	.long	0x1086
	.byte	0x8
	.uleb128 0xd
	.long	.LASF311
	.byte	0x6
	.byte	0x70
	.long	0xf9d
	.byte	0x10
	.uleb128 0xd
	.long	.LASF312
	.byte	0x6
	.byte	0x71
	.long	0xf9d
	.byte	0x18
	.uleb128 0xd
	.long	.LASF313
	.byte	0x6
	.byte	0x75
	.long	0x108c
	.byte	0x20
	.uleb128 0xd
	.long	.LASF299
	.byte	0x6
	.byte	0x78
	.long	0xd4e
	.byte	0x28
	.uleb128 0xd
	.long	.LASF314
	.byte	0x6
	.byte	0x7b
	.long	0x623
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x101a
	.uleb128 0x6
	.byte	0x8
	.long	0xf3e
	.uleb128 0xc
	.long	.LASF315
	.byte	0x9
	.byte	0x6
	.byte	0x7e
	.long	0x110b
	.uleb128 0xd
	.long	.LASF316
	.byte	0x6
	.byte	0x81
	.long	0x52
	.byte	0
	.uleb128 0xd
	.long	.LASF317
	.byte	0x6
	.byte	0x84
	.long	0x52
	.byte	0x1
	.uleb128 0xd
	.long	.LASF318
	.byte	0x6
	.byte	0x87
	.long	0x52
	.byte	0x2
	.uleb128 0xd
	.long	.LASF319
	.byte	0x6
	.byte	0x8b
	.long	0x52
	.byte	0x3
	.uleb128 0xd
	.long	.LASF320
	.byte	0x6
	.byte	0x8e
	.long	0x52
	.byte	0x4
	.uleb128 0xd
	.long	.LASF321
	.byte	0x6
	.byte	0x91
	.long	0x52
	.byte	0x5
	.uleb128 0xd
	.long	.LASF322
	.byte	0x6
	.byte	0x94
	.long	0x52
	.byte	0x6
	.uleb128 0xd
	.long	.LASF323
	.byte	0x6
	.byte	0x97
	.long	0x52
	.byte	0x7
	.uleb128 0xd
	.long	.LASF324
	.byte	0x6
	.byte	0x9a
	.long	0x52
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF97
	.byte	0x28
	.byte	0x6
	.byte	0x9e
	.long	0x1154
	.uleb128 0xd
	.long	.LASF325
	.byte	0x6
	.byte	0xa0
	.long	0xd4e
	.byte	0
	.uleb128 0xd
	.long	.LASF326
	.byte	0x6
	.byte	0xa1
	.long	0xd4e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF327
	.byte	0x6
	.byte	0xa2
	.long	0xd4e
	.byte	0x10
	.uleb128 0xd
	.long	.LASF328
	.byte	0x6
	.byte	0xa3
	.long	0xd4e
	.byte	0x18
	.uleb128 0xd
	.long	.LASF329
	.byte	0x6
	.byte	0xa4
	.long	0xd4e
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x640
	.uleb128 0x1b
	.long	.LASF330
	.uleb128 0x6
	.byte	0x8
	.long	0x115a
	.uleb128 0x1b
	.long	.LASF118
	.uleb128 0x6
	.byte	0x8
	.long	0x1165
	.uleb128 0x6
	.byte	0x8
	.long	0x635
	.uleb128 0x6
	.byte	0x8
	.long	0x1025
	.uleb128 0x1b
	.long	.LASF73
	.uleb128 0x6
	.byte	0x8
	.long	0x1187
	.uleb128 0x9
	.long	0x117c
	.uleb128 0x6
	.byte	0x8
	.long	0x1192
	.uleb128 0x9
	.long	0xa27
	.uleb128 0x1b
	.long	.LASF331
	.uleb128 0x6
	.byte	0x8
	.long	0x1197
	.uleb128 0x1b
	.long	.LASF92
	.uleb128 0x6
	.byte	0x8
	.long	0x11a2
	.uleb128 0x1b
	.long	.LASF332
	.uleb128 0x6
	.byte	0x8
	.long	0x11ad
	.uleb128 0x6
	.byte	0x8
	.long	0x2a5
	.uleb128 0x24
	.long	.LASF333
	.byte	0x6
	.value	0x1ad
	.long	0x52
	.uleb128 0x13
	.string	"op"
	.byte	0x10
	.byte	0x1
	.byte	0x2a
	.long	0x1211
	.uleb128 0x12
	.string	"op"
	.byte	0x1
	.byte	0x2c
	.long	0xb17
	.byte	0
	.uleb128 0xd
	.long	.LASF334
	.byte	0x1
	.byte	0x2d
	.long	0x11be
	.byte	0x4
	.uleb128 0xd
	.long	.LASF179
	.byte	0x1
	.byte	0x2e
	.long	0x11be
	.byte	0x5
	.uleb128 0xd
	.long	.LASF335
	.byte	0x1
	.byte	0x2f
	.long	0x11be
	.byte	0x6
	.uleb128 0xd
	.long	.LASF187
	.byte	0x1
	.byte	0x30
	.long	0x44
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF336
	.byte	0x6
	.byte	0x1
	.byte	0x40
	.long	0x123c
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.byte	0x42
	.long	0x124c
	.byte	0
	.uleb128 0x12
	.string	"u"
	.byte	0x1
	.byte	0x43
	.long	0x295
	.byte	0x4
	.uleb128 0x12
	.string	"l"
	.byte	0x1
	.byte	0x44
	.long	0x295
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	0x52
	.long	0x124c
	.uleb128 0x8
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x123c
	.uleb128 0x25
	.long	.LASF346
	.byte	0x1
	.byte	0x5c
	.long	0x11ca
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1383
	.uleb128 0x26
	.long	.LASF58
	.byte	0x1
	.byte	0x5d
	.long	0xdf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.string	"tok"
	.byte	0x1
	.byte	0x5e
	.long	0xd54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.string	"op"
	.byte	0x1
	.byte	0x60
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF337
	.byte	0x1
	.byte	0x61
	.long	0x1383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"end"
	.byte	0x1
	.byte	0x62
	.long	0x1383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.byte	0x63
	.long	0x1383
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.byte	0x64
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0x64
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.long	.LASF338
	.byte	0x1
	.byte	0x64
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.byte	0x65
	.long	0x4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"nd"
	.byte	0x1
	.byte	0x65
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF339
	.byte	0x1
	.byte	0x65
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF305
	.byte	0x1
	.byte	0x66
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.long	.LASF340
	.byte	0x1
	.byte	0x67
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.long	.LASF341
	.byte	0x1
	.byte	0x68
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.long	.LASF342
	.byte	0x1
	.byte	0x68
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	.LASF343
	.byte	0x1
	.byte	0x69
	.long	0x138e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF344
	.byte	0x1
	.byte	0xcb
	.quad	.L19
	.uleb128 0x2a
	.long	.LASF345
	.byte	0x1
	.byte	0xc8
	.quad	.L25
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1389
	.uleb128 0x9
	.long	0x11be
	.uleb128 0x6
	.byte	0x8
	.long	0x1394
	.uleb128 0x9
	.long	0x1211
	.uleb128 0x25
	.long	.LASF347
	.byte	0x1
	.byte	0xd2
	.long	0x11ca
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1432
	.uleb128 0x26
	.long	.LASF58
	.byte	0x1
	.byte	0xd3
	.long	0xdf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF348
	.byte	0x1
	.byte	0xd5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.long	.LASF277
	.byte	0x1
	.byte	0xd6
	.long	0xd4e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF307
	.byte	0x1
	.byte	0xd7
	.long	0xd54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"op"
	.byte	0x1
	.byte	0xd8
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF349
	.byte	0x1
	.byte	0xd9
	.long	0x1086
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x28
	.string	"op"
	.byte	0x1
	.byte	0xf3
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2c
	.string	"lex"
	.byte	0x1
	.value	0x117
	.long	0x11ca
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e6
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x118
	.long	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF350
	.byte	0x1
	.value	0x119
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.string	"op"
	.byte	0x1
	.value	0x11b
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF307
	.byte	0x1
	.value	0x11c
	.long	0xd54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF344
	.byte	0x1
	.value	0x173
	.quad	.L59
	.uleb128 0x31
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x14c4
	.uleb128 0x2f
	.long	.LASF351
	.byte	0x1
	.value	0x126
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2f
	.long	.LASF43
	.byte	0x1
	.value	0x15c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF377
	.byte	0x1
	.value	0x17a
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1514
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x17b
	.long	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF352
	.byte	0x1
	.value	0x184
	.long	0x44
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x158e
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x185
	.long	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.string	"a"
	.byte	0x1
	.value	0x186
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF335
	.byte	0x1
	.value	0x187
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.string	"b"
	.byte	0x1
	.value	0x188
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2e
	.string	"l"
	.byte	0x1
	.value	0x194
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF353
	.byte	0x1
	.value	0x19e
	.long	0x44
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x15e9
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x19f
	.long	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.string	"a"
	.byte	0x1
	.value	0x1a0
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF335
	.byte	0x1
	.value	0x1a1
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.string	"b"
	.byte	0x1
	.value	0x1a2
	.long	0x4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x36
	.long	.LASF378
	.byte	0x1
	.value	0x22d
	.long	0x2d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x17a7
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x22e
	.long	0xdf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x2f
	.long	.LASF354
	.byte	0x1
	.value	0x23b
	.long	0x17a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF53
	.byte	0x1
	.value	0x23c
	.long	0x17b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2f
	.long	.LASF33
	.byte	0x1
	.value	0x23d
	.long	0x17b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x2e
	.string	"top"
	.byte	0x1
	.value	0x23e
	.long	0x17b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2f
	.long	.LASF350
	.byte	0x1
	.value	0x23f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x1
	.value	0x240
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x2f
	.long	.LASF356
	.byte	0x1
	.value	0x241
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2f
	.long	.LASF357
	.byte	0x1
	.value	0x241
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x30
	.long	.LASF344
	.byte	0x1
	.value	0x364
	.quad	.L189
	.uleb128 0x30
	.long	.LASF358
	.byte	0x1
	.value	0x260
	.quad	.L92
	.uleb128 0x30
	.long	.LASF359
	.byte	0x1
	.value	0x32f
	.quad	.L98
	.uleb128 0x30
	.long	.LASF360
	.byte	0x1
	.value	0x356
	.quad	.L190
	.uleb128 0x37
	.long	.Ldebug_ranges0+0
	.uleb128 0x2f
	.long	.LASF334
	.byte	0x1
	.value	0x251
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2f
	.long	.LASF179
	.byte	0x1
	.value	0x252
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x2e
	.string	"op"
	.byte	0x1
	.value	0x253
	.long	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x31
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x1763
	.uleb128 0x2e
	.string	"v1"
	.byte	0x1
	.value	0x27f
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2e
	.string	"v2"
	.byte	0x1
	.value	0x27f
	.long	0x44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2f
	.long	.LASF361
	.byte	0x1
	.value	0x280
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x2f
	.long	.LASF362
	.byte	0x1
	.value	0x280
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x2b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2f
	.long	.LASF363
	.byte	0x1
	.value	0x342
	.long	0x17b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2f
	.long	.LASF364
	.byte	0x1
	.value	0x343
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2f
	.long	.LASF365
	.byte	0x1
	.value	0x344
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x11ca
	.long	0x17b7
	.uleb128 0x8
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11ca
	.uleb128 0x33
	.long	.LASF366
	.byte	0x1
	.value	0x370
	.long	0x28f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x180c
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x371
	.long	0xdf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"op"
	.byte	0x1
	.value	0x372
	.long	0xb17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF307
	.byte	0x1
	.value	0x374
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x7
	.long	0x1211
	.long	0x181c
	.uleb128 0x8
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.long	.LASF367
	.byte	0x1
	.byte	0x47
	.long	0x1831
	.uleb128 0x9
	.byte	0x3
	.quad	vsuf_1
	.uleb128 0x9
	.long	0x180c
	.uleb128 0x7
	.long	0x1211
	.long	0x1846
	.uleb128 0x8
	.long	0x34
	.byte	0x9
	.byte	0
	.uleb128 0x29
	.long	.LASF368
	.byte	0x1
	.byte	0x4c
	.long	0x185b
	.uleb128 0x9
	.byte	0x3
	.quad	vsuf_2
	.uleb128 0x9
	.long	0x1836
	.uleb128 0x7
	.long	0x1211
	.long	0x1870
	.uleb128 0x8
	.long	0x34
	.byte	0x7
	.byte	0
	.uleb128 0x29
	.long	.LASF369
	.byte	0x1
	.byte	0x52
	.long	0x1885
	.uleb128 0x9
	.byte	0x3
	.quad	vsuf_3
	.uleb128 0x9
	.long	0x1860
	.uleb128 0x7
	.long	0x67
	.long	0x189a
	.uleb128 0x8
	.long	0x34
	.byte	0x1b
	.byte	0
	.uleb128 0x2f
	.long	.LASF370
	.byte	0x1
	.value	0x1ee
	.long	0x18b0
	.uleb128 0x9
	.byte	0x3
	.quad	op_to_prio
	.uleb128 0x9
	.long	0x188a
	.uleb128 0x7
	.long	0x59
	.long	0x18c5
	.uleb128 0x8
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x38
	.long	.LASF371
	.byte	0x9
	.byte	0x48
	.long	0x18d0
	.uleb128 0x9
	.long	0x18b5
	.uleb128 0x7
	.long	0x8a
	.long	0x18e5
	.uleb128 0x8
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x38
	.long	.LASF372
	.byte	0xa
	.byte	0xfb
	.long	0x18f0
	.uleb128 0x9
	.long	0x18d5
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.quad	.LBB6-.Ltext0
	.quad	.LBE6-.Ltext0
	.quad	.LBB9-.Ltext0
	.quad	.LBE9-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	.LBB11-.Ltext0
	.quad	.LBE11-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF226:
	.string	"CPP_MULT_EQ"
.LASF292:
	.string	"BT_DATE"
.LASF39:
	.string	"chunk"
.LASF345:
	.string	"invalid_suffix"
.LASF317:
	.string	"skipping"
.LASF330:
	.string	"include_file"
.LASF0:
	.string	"sizetype"
.LASF337:
	.string	"start"
.LASF15:
	.string	"_sch_isprint"
.LASF78:
	.string	"base_run"
.LASF55:
	.string	"alloc_node"
.LASF320:
	.string	"lexing_comment"
.LASF109:
	.string	"used"
.LASF205:
	.string	"CPP_AND"
.LASF261:
	.string	"CPP_MACRO_ARG"
.LASF211:
	.string	"CPP_MAX"
.LASF100:
	.string	"line_map"
.LASF300:
	.string	"answers"
.LASF101:
	.string	"to_file"
.LASF22:
	.string	"_sch_isnvsp"
.LASF19:
	.string	"_sch_isxdigit"
.LASF30:
	.string	"dev_t"
.LASF98:
	.string	"print_version"
.LASF155:
	.string	"warn_system_headers"
.LASF128:
	.string	"out_fname"
.LASF36:
	.string	"_obstack_chunk"
.LASF237:
	.string	"CPP_PASTE"
.LASF81:
	.string	"keep_tokens"
.LASF214:
	.string	"CPP_OR_OR"
.LASF310:
	.string	"cpp_context"
.LASF366:
	.string	"op_as_text"
.LASF64:
	.string	"state"
.LASF294:
	.string	"BT_BASE_FILE"
.LASF47:
	.string	"extra_arg"
.LASF328:
	.string	"n__STRICT_ANSI__"
.LASF218:
	.string	"CPP_OPEN_PAREN"
.LASF160:
	.string	"warn_traditional"
.LASF178:
	.string	"type"
.LASF156:
	.string	"inhibit_errors"
.LASF75:
	.string	"mi_ind_cmacro"
.LASF314:
	.string	"direct_p"
.LASF267:
	.string	"CLK_GNUC89"
.LASF61:
	.string	"hashnode"
.LASF324:
	.string	"parsing_args"
.LASF303:
	.string	"answer"
.LASF343:
	.string	"sufftab"
.LASF256:
	.string	"CPP_OTHER"
.LASF334:
	.string	"prio"
.LASF177:
	.string	"cpp_token"
.LASF134:
	.string	"map_list"
.LASF154:
	.string	"inhibit_warnings"
.LASF233:
	.string	"CPP_LSHIFT_EQ"
.LASF162:
	.string	"no_output"
.LASF242:
	.string	"CPP_SEMICOLON"
.LASF168:
	.string	"pedantic"
.LASF8:
	.string	"__dev_t"
.LASF114:
	.string	"cpp_buffer"
.LASF304:
	.string	"_cpp_buff"
.LASF356:
	.string	"lex_count"
.LASF45:
	.string	"chunkfun"
.LASF355:
	.string	"result"
.LASF215:
	.string	"CPP_QUERY"
.LASF158:
	.string	"warn_trigraphs"
.LASF268:
	.string	"CLK_GNUC99"
.LASF195:
	.string	"def_pragma"
.LASF70:
	.string	"free_buffs"
.LASF326:
	.string	"n_true"
.LASF35:
	.string	"contents"
.LASF52:
	.string	"hash_table"
.LASF309:
	.string	"tokenrun"
.LASF241:
	.string	"CPP_CLOSE_BRACE"
.LASF99:
	.string	"our_hashtable"
.LASF2:
	.string	"long int"
.LASF153:
	.string	"pedantic_errors"
.LASF255:
	.string	"CPP_WCHAR"
.LASF234:
	.string	"CPP_MIN_EQ"
.LASF65:
	.string	"line_maps"
.LASF213:
	.string	"CPP_AND_AND"
.LASF249:
	.string	"CPP_DEREF_STAR"
.LASF222:
	.string	"CPP_GREATER_EQ"
.LASF199:
	.string	"CPP_LESS"
.LASF228:
	.string	"CPP_MOD_EQ"
.LASF57:
	.string	"nelements"
.LASF196:
	.string	"CPP_EQ"
.LASF16:
	.string	"_sch_ispunct"
.LASF259:
	.string	"CPP_HEADER_NAME"
.LASF152:
	.string	"print_include_names"
.LASF276:
	.string	"CLK_ASM"
.LASF342:
	.string	"largest_digit"
.LASF93:
	.string	"hash_ob"
.LASF6:
	.string	"signed char"
.LASF260:
	.string	"CPP_COMMENT"
.LASF372:
	.string	"_hex_value"
.LASF118:
	.string	"if_stack"
.LASF67:
	.string	"directive_line"
.LASF72:
	.string	"context"
.LASF329:
	.string	"n__VA_ARGS__"
.LASF352:
	.string	"left_shift"
.LASF291:
	.string	"BT_SPECLINE"
.LASF4:
	.string	"unsigned char"
.LASF225:
	.string	"CPP_MINUS_EQ"
.LASF127:
	.string	"in_fname"
.LASF325:
	.string	"n_defined"
.LASF348:
	.string	"paren"
.LASF182:
	.string	"cpp_hashnode"
.LASF246:
	.string	"CPP_DEREF"
.LASF113:
	.string	"_Bool"
.LASF102:
	.string	"to_line"
.LASF375:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF187:
	.string	"value"
.LASF25:
	.string	"_sch_isidnum"
.LASF10:
	.string	"char"
.LASF112:
	.string	"trace_includes"
.LASF269:
	.string	"CLK_STDC89"
.LASF165:
	.string	"ignore_srcdir"
.LASF367:
	.string	"vsuf_1"
.LASF279:
	.string	"arg_no"
.LASF94:
	.string	"buffer_ob"
.LASF270:
	.string	"CLK_STDC94"
.LASF137:
	.string	"user_label_prefix"
.LASF116:
	.string	"rlimit"
.LASF239:
	.string	"CPP_CLOSE_SQUARE"
.LASF183:
	.string	"ident"
.LASF286:
	.string	"node_type"
.LASF290:
	.string	"builtin_type"
.LASF173:
	.string	"dump_includes"
.LASF284:
	.string	"name_map"
.LASF62:
	.string	"cpp_reader"
.LASF351:
	.string	"chars_seen"
.LASF82:
	.string	"errors"
.LASF71:
	.string	"base_context"
.LASF278:
	.string	"source"
.LASF271:
	.string	"CLK_STDC99"
.LASF179:
	.string	"flags"
.LASF191:
	.string	"file_change"
.LASF21:
	.string	"_sch_isvsp"
.LASF169:
	.string	"preprocessed"
.LASF44:
	.string	"alignment_mask"
.LASF73:
	.string	"directive"
.LASF135:
	.string	"include_prefix"
.LASF371:
	.string	"_sch_istable"
.LASF180:
	.string	"cpp_string"
.LASF277:
	.string	"node"
.LASF181:
	.string	"text"
.LASF354:
	.string	"init_stack"
.LASF364:
	.string	"old_size"
.LASF87:
	.string	"all_include_files"
.LASF361:
	.string	"unsigned1"
.LASF362:
	.string	"unsigned2"
.LASF236:
	.string	"CPP_HASH"
.LASF288:
	.string	"NT_MACRO"
.LASF240:
	.string	"CPP_OPEN_BRACE"
.LASF33:
	.string	"limit"
.LASF18:
	.string	"_sch_isupper"
.LASF88:
	.string	"max_include_len"
.LASF252:
	.string	"CPP_NAME"
.LASF12:
	.string	"_sch_iscntrl"
.LASF63:
	.string	"buffer"
.LASF192:
	.string	"include"
.LASF293:
	.string	"BT_FILE"
.LASF167:
	.string	"warn_undef"
.LASF157:
	.string	"warn_comments"
.LASF335:
	.string	"unsignedp"
.LASF275:
	.string	"CLK_OBJCXX"
.LASF272:
	.string	"CLK_GNUCXX"
.LASF341:
	.string	"digit"
.LASF285:
	.string	"file_name_map_list"
.LASF161:
	.string	"warnings_are_errors"
.LASF151:
	.string	"print_deps_append"
.LASF264:
	.string	"N_TTYPES"
.LASF368:
	.string	"vsuf_2"
.LASF38:
	.string	"chunk_size"
.LASF306:
	.string	"file_name_map"
.LASF77:
	.string	"cur_token"
.LASF346:
	.string	"parse_number"
.LASF107:
	.string	"maps"
.LASF143:
	.string	"objc"
.LASF29:
	.string	"ino_t"
.LASF3:
	.string	"long unsigned int"
.LASF159:
	.string	"warn_import"
.LASF49:
	.string	"maybe_empty_object"
.LASF299:
	.string	"macro"
.LASF40:
	.string	"object_base"
.LASF66:
	.string	"line"
.LASF69:
	.string	"u_buff"
.LASF232:
	.string	"CPP_RSHIFT_EQ"
.LASF28:
	.string	"_sch_isbasic"
.LASF374:
	.string	"cppexp.c"
.LASF108:
	.string	"allocated"
.LASF244:
	.string	"CPP_PLUS_PLUS"
.LASF235:
	.string	"CPP_MAX_EQ"
.LASF59:
	.string	"searches"
.LASF130:
	.string	"pending"
.LASF163:
	.string	"remap"
.LASF46:
	.string	"freefun"
.LASF148:
	.string	"print_deps"
.LASF296:
	.string	"BT_TIME"
.LASF243:
	.string	"CPP_ELLIPSIS"
.LASF170:
	.string	"no_standard_includes"
.LASF287:
	.string	"NT_VOID"
.LASF198:
	.string	"CPP_GREATER"
.LASF203:
	.string	"CPP_DIV"
.LASF210:
	.string	"CPP_MIN"
.LASF50:
	.string	"alloc_failed"
.LASF204:
	.string	"CPP_MOD"
.LASF9:
	.string	"__ino_t"
.LASF281:
	.string	"search_path"
.LASF139:
	.string	"verbose"
.LASF58:
	.string	"pfile"
.LASF32:
	.string	"long long int"
.LASF186:
	.string	"rid_code"
.LASF146:
	.string	"digraphs"
.LASF144:
	.string	"discard_comments"
.LASF327:
	.string	"n_false"
.LASF206:
	.string	"CPP_OR"
.LASF347:
	.string	"parse_defined"
.LASF190:
	.string	"line_change"
.LASF340:
	.string	"overflow"
.LASF358:
	.string	"push_immediate"
.LASF23:
	.string	"_sch_isalpha"
.LASF122:
	.string	"warned_cplusplus_comments"
.LASF53:
	.string	"stack"
.LASF149:
	.string	"deps_phony_targets"
.LASF91:
	.string	"avoid_paste"
.LASF111:
	.string	"depth"
.LASF97:
	.string	"spec_nodes"
.LASF339:
	.string	"MAX_over_base"
.LASF11:
	.string	"_sch_isblank"
.LASF313:
	.string	"buff"
.LASF103:
	.string	"from_line"
.LASF333:
	.string	"U_CHAR"
.LASF86:
	.string	"macro_buffer_len"
.LASF24:
	.string	"_sch_isalnum"
.LASF164:
	.string	"no_line_commands"
.LASF129:
	.string	"tabstop"
.LASF176:
	.string	"help_only"
.LASF319:
	.string	"save_comments"
.LASF209:
	.string	"CPP_LSHIFT"
.LASF1:
	.string	"unsigned int"
.LASF17:
	.string	"_sch_isspace"
.LASF253:
	.string	"CPP_NUMBER"
.LASF119:
	.string	"col_adjust"
.LASF37:
	.string	"obstack"
.LASF376:
	.string	"utoken"
.LASF96:
	.string	"opts"
.LASF76:
	.string	"mi_valid"
.LASF216:
	.string	"CPP_COLON"
.LASF336:
	.string	"suffix"
.LASF338:
	.string	"nsuff"
.LASF27:
	.string	"_sch_iscppsp"
.LASF201:
	.string	"CPP_MINUS"
.LASF331:
	.string	"splay_tree_s"
.LASF174:
	.string	"show_column"
.LASF360:
	.string	"done"
.LASF41:
	.string	"next_free"
.LASF311:
	.string	"first"
.LASF175:
	.string	"operator_names"
.LASF120:
	.string	"saved_flags"
.LASF373:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF315:
	.string	"lexer_state"
.LASF254:
	.string	"CPP_CHAR"
.LASF282:
	.string	"next"
.LASF298:
	.string	"BT_PRAGMA"
.LASF229:
	.string	"CPP_AND_EQ"
.LASF14:
	.string	"_sch_islower"
.LASF92:
	.string	"deps"
.LASF83:
	.string	"mls_line"
.LASF95:
	.string	"pragmas"
.LASF365:
	.string	"new_size"
.LASF200:
	.string	"CPP_PLUS"
.LASF257:
	.string	"CPP_STRING"
.LASF248:
	.string	"CPP_SCOPE"
.LASF202:
	.string	"CPP_MULT"
.LASF125:
	.string	"return_at_eof"
.LASF247:
	.string	"CPP_DOT"
.LASF227:
	.string	"CPP_DIV_EQ"
.LASF106:
	.string	"sysp"
.LASF31:
	.string	"long long unsigned int"
.LASF273:
	.string	"CLK_CXX98"
.LASF350:
	.string	"skip_evaluation"
.LASF197:
	.string	"CPP_NOT"
.LASF117:
	.string	"line_base"
.LASF357:
	.string	"saw_leading_not"
.LASF266:
	.string	"c_lang"
.LASF238:
	.string	"CPP_OPEN_SQUARE"
.LASF217:
	.string	"CPP_COMMA"
.LASF207:
	.string	"CPP_XOR"
.LASF189:
	.string	"cpp_callbacks"
.LASF145:
	.string	"trigraphs"
.LASF104:
	.string	"included_from"
.LASF105:
	.string	"reason"
.LASF318:
	.string	"angled_headers"
.LASF323:
	.string	"prevent_expansion"
.LASF230:
	.string	"CPP_OR_EQ"
.LASF124:
	.string	"search_cached"
.LASF224:
	.string	"CPP_PLUS_EQ"
.LASF377:
	.string	"integer_overflow"
.LASF140:
	.string	"signed_char"
.LASF13:
	.string	"_sch_isdigit"
.LASF142:
	.string	"cplusplus_comments"
.LASF90:
	.string	"time"
.LASF302:
	.string	"builtin"
.LASF80:
	.string	"lookaheads"
.LASF147:
	.string	"extended_numbers"
.LASF220:
	.string	"CPP_EQ_EQ"
.LASF48:
	.string	"use_extra_arg"
.LASF84:
	.string	"mls_col"
.LASF123:
	.string	"from_stage3"
.LASF141:
	.string	"cplusplus"
.LASF131:
	.string	"deps_file"
.LASF283:
	.string	"name"
.LASF126:
	.string	"cpp_options"
.LASF316:
	.string	"in_directive"
.LASF353:
	.string	"right_shift"
.LASF212:
	.string	"CPP_COMPL"
.LASF245:
	.string	"CPP_MINUS_MINUS"
.LASF7:
	.string	"short int"
.LASF265:
	.string	"cpp_ttype"
.LASF171:
	.string	"no_standard_cplusplus_includes"
.LASF138:
	.string	"lang"
.LASF166:
	.string	"dollars_in_ident"
.LASF115:
	.string	"backup_to"
.LASF56:
	.string	"nslots"
.LASF332:
	.string	"pragma_entry"
.LASF194:
	.string	"undef"
.LASF110:
	.string	"last_listed"
.LASF79:
	.string	"cur_run"
.LASF274:
	.string	"CLK_OBJC"
.LASF370:
	.string	"op_to_prio"
.LASF26:
	.string	"_sch_isgraph"
.LASF68:
	.string	"a_buff"
.LASF378:
	.string	"_cpp_parse_expr"
.LASF263:
	.string	"CPP_EOF"
.LASF221:
	.string	"CPP_NOT_EQ"
.LASF344:
	.string	"syntax_error"
.LASF258:
	.string	"CPP_WSTRING"
.LASF297:
	.string	"BT_STDC"
.LASF219:
	.string	"CPP_CLOSE_PAREN"
.LASF322:
	.string	"poisoned_ok"
.LASF223:
	.string	"CPP_LESS_EQ"
.LASF20:
	.string	"_sch_isidst"
.LASF208:
	.string	"CPP_RSHIFT"
.LASF185:
	.string	"directive_index"
.LASF136:
	.string	"include_prefix_len"
.LASF60:
	.string	"collisions"
.LASF289:
	.string	"NT_ASSERTION"
.LASF262:
	.string	"CPP_PADDING"
.LASF349:
	.string	"initial_context"
.LASF85:
	.string	"macro_buffer"
.LASF363:
	.string	"new_stack"
.LASF307:
	.string	"token"
.LASF250:
	.string	"CPP_DOT_STAR"
.LASF251:
	.string	"CPP_ATSIGN"
.LASF359:
	.string	"skip_reduction"
.LASF5:
	.string	"short unsigned int"
.LASF42:
	.string	"chunk_limit"
.LASF133:
	.string	"bracket_include"
.LASF305:
	.string	"base"
.LASF188:
	.string	"cpp_macro"
.LASF172:
	.string	"dump_macros"
.LASF54:
	.string	"entries"
.LASF132:
	.string	"quote_include"
.LASF321:
	.string	"va_args_ok"
.LASF121:
	.string	"last_Wtrigraphs"
.LASF43:
	.string	"temp"
.LASF184:
	.string	"arg_index"
.LASF193:
	.string	"define"
.LASF51:
	.string	"ht_identifier"
.LASF301:
	.string	"operator"
.LASF280:
	.string	"cpp_pending"
.LASF150:
	.string	"print_deps_missing_files"
.LASF89:
	.string	"date"
.LASF369:
	.string	"vsuf_3"
.LASF308:
	.string	"ptoken"
.LASF34:
	.string	"prev"
.LASF74:
	.string	"mi_cmacro"
.LASF231:
	.string	"CPP_XOR_EQ"
.LASF295:
	.string	"BT_INCLUDE_LEVEL"
.LASF312:
	.string	"last"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
