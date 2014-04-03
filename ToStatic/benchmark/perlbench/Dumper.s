	.file	"Dumper.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 Dumper.c
# -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
	.type	needs_quote, @function
needs_quote:
.LFB2:
	.file 1 "Dumper.c"
	.loc 1 62 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, %rax	# s, s
.L2:
	.loc 1 64 0
	movzbl	(%rax), %edx	# *s_1, D.12319
	cmpb	$58, %dl	#, D.12319
	jne	.L3	#,
	.loc 1 65 0
	addq	$1, %rax	#, s
	movzbl	(%rax), %edx	# *s_7, D.12319
	testb	%dl, %dl	# D.12319
	je	.L4	#,
	.loc 1 66 0
	movq	%rax, %rdx	# s, s.0
	leaq	1(%rdx), %rax	#, s
	movzbl	(%rdx), %edx	# *s.0_9, D.12319
	cmpb	$58, %dl	#, D.12319
	je	.L3	#,
	.loc 1 67 0
	movl	$1, %eax	#, D.12318
	jmp	.L5	#
.L4:
	.loc 1 70 0
	movl	$1, %eax	#, D.12318
	jmp	.L5	#
.L3:
	.loc 1 72 0
	movzbl	(%rax), %edx	# *s_2, D.12319
	cmpb	$64, %dl	#, D.12319
	jle	.L6	#,
	.loc 1 72 0 is_stmt 0 discriminator 1
	movzbl	(%rax), %edx	# *s_2, D.12319
	cmpb	$90, %dl	#, D.12319
	jle	.L7	#,
.L6:
	.loc 1 72 0 discriminator 2
	movzbl	(%rax), %edx	# *s_2, D.12319
	cmpb	$96, %dl	#, D.12319
	jle	.L8	#,
	.loc 1 72 0 discriminator 1
	movzbl	(%rax), %edx	# *s_2, D.12319
	cmpb	$122, %dl	#, D.12319
	jle	.L7	#,
.L8:
	.loc 1 72 0 discriminator 2
	movzbl	(%rax), %edx	# *s_2, D.12319
	cmpb	$95, %dl	#, D.12319
	jne	.L9	#,
.L7:
	.loc 1 73 0 is_stmt 1
	jmp	.L10	#
.L15:
	.loc 1 74 0
	movzbl	(%rax), %edx	# *s_20, D.12319
	cmpb	$64, %dl	#, D.12319
	jle	.L11	#,
	.loc 1 74 0 is_stmt 0 discriminator 2
	movzbl	(%rax), %edx	# *s_20, D.12319
	cmpb	$90, %dl	#, D.12319
	jle	.L10	#,
.L11:
	.loc 1 74 0 discriminator 1
	movzbl	(%rax), %edx	# *s_20, D.12319
	cmpb	$96, %dl	#, D.12319
	jle	.L12	#,
	.loc 1 74 0 discriminator 2
	movzbl	(%rax), %edx	# *s_20, D.12319
	cmpb	$122, %dl	#, D.12319
	jle	.L10	#,
.L12:
	.loc 1 74 0 discriminator 1
	movzbl	(%rax), %edx	# *s_20, D.12319
	cmpb	$47, %dl	#, D.12319
	jle	.L13	#,
	.loc 1 74 0 discriminator 2
	movzbl	(%rax), %edx	# *s_20, D.12319
	cmpb	$57, %dl	#, D.12319
	jle	.L10	#,
.L13:
	.loc 1 74 0 discriminator 1
	movzbl	(%rax), %edx	# *s_20, D.12319
	cmpb	$95, %dl	#, D.12319
	je	.L10	#,
	.loc 1 75 0 is_stmt 1
	movzbl	(%rax), %edx	# *s_20, D.12319
	cmpb	$58, %dl	#, D.12319
	jne	.L14	#,
	.loc 1 76 0
	jmp	.L2	#
.L14:
	.loc 1 78 0
	movl	$1, %eax	#, D.12318
	jmp	.L5	#
.L10:
	.loc 1 73 0 discriminator 1
	addq	$1, %rax	#, s
	movzbl	(%rax), %edx	# *s_20, D.12319
	testb	%dl, %dl	# D.12319
	jne	.L15	#,
	.loc 1 72 0
	nop
	.loc 1 83 0
	movl	$0, %eax	#, D.12318
	jmp	.L5	#
.L9:
	.loc 1 82 0
	movl	$1, %eax	#, D.12318
.L5:
	.loc 1 84 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	needs_quote, .-needs_quote
	.type	num_q, @function
num_q:
.LFB3:
	.loc 1 89 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, %rax	# s, s
	movq	%rsi, %rdx	# slen, slen
	.loc 1 90 0
	movl	$0, %ebx	#, ret
	.loc 1 92 0
	jmp	.L18	#
.L21:
	.loc 1 93 0
	movzbl	(%rax), %ecx	# *s_1, D.12320
	cmpb	$39, %cl	#, D.12320
	je	.L19	#,
	.loc 1 93 0 is_stmt 0 discriminator 1
	movzbl	(%rax), %ecx	# *s_1, D.12320
	cmpb	$92, %cl	#, D.12320
	jne	.L20	#,
.L19:
	.loc 1 94 0 is_stmt 1
	addl	$1, %ebx	#, ret
.L20:
	.loc 1 95 0
	addq	$1, %rax	#, s
	.loc 1 96 0
	subq	$1, %rdx	#, slen
.L18:
	.loc 1 92 0 discriminator 1
	testq	%rdx, %rdx	# slen
	jne	.L21	#,
	.loc 1 98 0
	movl	%ebx, %eax	# ret, D.12321
	.loc 1 99 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	num_q, .-num_q
	.type	esc_q, @function
esc_q:
.LFB4:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, %rax	# d, d
	movq	%rsi, %rcx	# s, s
	.loc 1 108 0
	movl	$0, %ebx	#, ret
	.loc 1 110 0
	jmp	.L24	#
.L27:
	.loc 1 111 0
	movzbl	(%rcx), %esi	# *s_3, D.12322
	movsbl	%sil, %esi	# D.12322, D.12323
	cmpl	$39, %esi	#, D.12323
	je	.L26	#,
	cmpl	$92, %esi	#, D.12323
	jne	.L25	#,
.L26:
	.loc 1 114 0
	movb	$92, (%rax)	#, *d_2
	.loc 1 115 0
	addq	$1, %rax	#, d
	addl	$1, %ebx	#, ret
.L25:
	.loc 1 117 0
	movzbl	(%rcx), %esi	# *s_3, D.12322
	movb	%sil, (%rax)	# D.12322, *d_1
	.loc 1 118 0
	addq	$1, %rax	#, d
	addq	$1, %rcx	#, s
	subq	$1, %rdx	#, slen
	.loc 1 119 0
	nop
.L24:
	.loc 1 110 0 discriminator 1
	testq	%rdx, %rdx	# slen
	jne	.L27	#,
	.loc 1 122 0
	movl	%ebx, %eax	# ret, D.12324
	.loc 1 123 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	esc_q, .-esc_q
	.section	.rodata
.LC0:
	.string	"\\x{%lx}"
	.text
	.type	esc_q_utf8, @function
esc_q_utf8:
.LFB5:
	.loc 1 127 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# sv, sv
	movq	%rsi, %rbx	# src, src
	movq	%rdx, %rax	# slen, slen
	.loc 1 129 0
	movq	-136(%rbp), %rdx	# sv, tmp112
	movq	(%rdx), %rdx	# sv_24(D)->sv_any, D.12325
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_25].xpv_cur, tmp113
	movq	%rdx, -56(%rbp)	# tmp113, cur
	.loc 1 132 0
	movq	$0, -96(%rbp)	#, grow
	.loc 1 134 0
	movq	$0, -88(%rbp)	#, backslashes
	.loc 1 135 0
	movq	$0, -80(%rbp)	#, single_quotes
	.loc 1 136 0
	movq	$0, -72(%rbp)	#, qq_escapables
	.loc 1 137 0
	movq	$0, -64(%rbp)	#, normal
	.loc 1 140 0
	movq	%rbx, -120(%rbp)	# src, s
	addq	%rbx, %rax	# src, tmp114
	movq	%rax, -48(%rbp)	# tmp114, send
	jmp	.L30	#
.L45:
.LBB2:
	.loc 1 141 0
	movq	-120(%rbp), %rax	# s, tmp115
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, -40(%rbp)	# tmp116, k
	.loc 1 143 0
	cmpq	$127, -40(%rbp)	#, k
	jbe	.L31	#,
	.loc 1 145 0
	cmpq	$255, -40(%rbp)	#, k
	jbe	.L32	#,
	.loc 1 145 0 is_stmt 0 discriminator 1
	cmpq	$4095, -40(%rbp)	#, k
	jbe	.L33	#,
	.loc 1 145 0 discriminator 3
	cmpq	$65535, -40(%rbp)	#, k
	jbe	.L34	#,
	.loc 1 145 0 discriminator 5
	movl	$4294967295, %eax	#, tmp117
	cmpq	%rax, -40(%rbp)	# tmp117, k
	ja	.L35	#,
	.loc 1 145 0 discriminator 7
	movl	$12, %eax	#, iftmp.4
	jmp	.L39	#
.L35:
	.loc 1 145 0 discriminator 8
	movl	$36, %eax	#, iftmp.4
	jmp	.L39	#
.L34:
	.loc 1 145 0 discriminator 6
	movl	$8, %eax	#, iftmp.3
	jmp	.L39	#
.L33:
	.loc 1 145 0 discriminator 4
	movl	$7, %eax	#, iftmp.2
	jmp	.L39	#
.L32:
	.loc 1 145 0 discriminator 2
	movl	$6, %eax	#, iftmp.1
.L39:
	.loc 1 145 0 discriminator 4
	addq	%rax, -96(%rbp)	# iftmp.1, grow
	jmp	.L40	#
.L31:
	.loc 1 152 0 is_stmt 1
	cmpq	$92, -40(%rbp)	#, k
	jne	.L41	#,
	.loc 1 153 0
	addq	$1, -88(%rbp)	#, backslashes
	jmp	.L40	#
.L41:
	.loc 1 154 0
	cmpq	$39, -40(%rbp)	#, k
	jne	.L42	#,
	.loc 1 155 0
	addq	$1, -80(%rbp)	#, single_quotes
	jmp	.L40	#
.L42:
	.loc 1 156 0
	cmpq	$34, -40(%rbp)	#, k
	je	.L43	#,
	.loc 1 156 0 is_stmt 0 discriminator 1
	cmpq	$36, -40(%rbp)	#, k
	je	.L43	#,
	cmpq	$64, -40(%rbp)	#, k
	jne	.L44	#,
.L43:
	.loc 1 157 0 is_stmt 1
	addq	$1, -72(%rbp)	#, qq_escapables
	jmp	.L40	#
.L44:
	.loc 1 159 0
	addq	$1, -64(%rbp)	#, normal
.L40:
.LBE2:
	.loc 1 140 0
	movq	-120(%rbp), %rax	# s, tmp118
	movzbl	(%rax), %eax	# MEM[(U8 *)s_1], D.12326
	movzbl	%al, %eax	# D.12326, D.12327
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.12326
	movzbl	%al, %eax	# D.12326, D.12328
	addq	%rax, -120(%rbp)	# D.12328, s
.L30:
	.loc 1 140 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, tmp120
	cmpq	-48(%rbp), %rax	# send, tmp120
	jb	.L45	#,
	.loc 1 162 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, grow
	je	.L46	#,
	.loc 1 164 0
	movq	-96(%rbp), %rax	# grow, tmp121
	movq	-56(%rbp), %rdx	# cur, tmp122
	addq	%rax, %rdx	# tmp121, D.12329
	movq	-88(%rbp), %rax	# backslashes, tmp123
	addq	%rax, %rax	# D.12329
	addq	%rax, %rdx	# D.12329, D.12329
	movq	-80(%rbp), %rax	# single_quotes, tmp124
	addq	%rax, %rdx	# tmp124, D.12329
	.loc 1 165 0
	movq	-72(%rbp), %rax	# qq_escapables, tmp125
	addq	%rax, %rax	# D.12329
	addq	%rax, %rdx	# D.12329, D.12329
	movq	-64(%rbp), %rax	# normal, tmp126
	addq	%rdx, %rax	# D.12329, D.12329
	.loc 1 164 0
	leaq	3(%rax), %rdx	#, D.12329
	movq	-136(%rbp), %rax	# sv, tmp127
	movq	%rdx, %rsi	# D.12329,
	movq	%rax, %rdi	# tmp127,
	call	Perl_sv_grow	#
	.loc 1 166 0
	movq	-136(%rbp), %rax	# sv, tmp128
	movq	(%rax), %rax	# sv_24(D)->sv_any, D.12325
	movq	(%rax), %rdx	# MEM[(struct XPV *)_63].xpv_pv, D.12330
	movq	-56(%rbp), %rax	# cur, tmp132
	addq	%rdx, %rax	# D.12330, tmp131
	movq	%rax, -112(%rbp)	# tmp131, r
	movq	-112(%rbp), %rax	# r, tmp133
	movq	%rax, -104(%rbp)	# tmp133, rstart
	.loc 1 168 0
	movq	-112(%rbp), %rax	# r, r.5
	leaq	1(%rax), %rdx	#, tmp134
	movq	%rdx, -112(%rbp)	# tmp134, r
	movb	$34, (%rax)	#, *r.5_67
	.loc 1 170 0
	movq	%rbx, -120(%rbp)	# src, s
	jmp	.L47	#
.L52:
.LBB3:
	.loc 1 171 0
	movq	-120(%rbp), %rax	# s, tmp135
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, -32(%rbp)	# tmp136, k
	.loc 1 173 0
	cmpq	$34, -32(%rbp)	#, k
	je	.L48	#,
	.loc 1 173 0 is_stmt 0 discriminator 1
	cmpq	$92, -32(%rbp)	#, k
	je	.L48	#,
	cmpq	$36, -32(%rbp)	#, k
	je	.L48	#,
	cmpq	$64, -32(%rbp)	#, k
	jne	.L49	#,
.L48:
	.loc 1 174 0 is_stmt 1
	movq	-112(%rbp), %rax	# r, r.6
	leaq	1(%rax), %rdx	#, tmp137
	movq	%rdx, -112(%rbp)	# tmp137, r
	movb	$92, (%rax)	#, *r.6_76
	.loc 1 175 0
	movq	-112(%rbp), %rax	# r, r.7
	leaq	1(%rax), %rdx	#, tmp138
	movq	%rdx, -112(%rbp)	# tmp138, r
	movq	-32(%rbp), %rdx	# k, tmp139
	movb	%dl, (%rax)	# D.12331, *r.7_78
	jmp	.L50	#
.L49:
	.loc 1 177 0
	cmpq	$127, -32(%rbp)	#, k
	ja	.L51	#,
	.loc 1 178 0
	movq	-112(%rbp), %rax	# r, r.8
	leaq	1(%rax), %rdx	#, tmp140
	movq	%rdx, -112(%rbp)	# tmp140, r
	movq	-32(%rbp), %rdx	# k, tmp141
	movb	%dl, (%rax)	# D.12331, *r.8_71
	jmp	.L50	#
.L51:
	.loc 1 188 0
	movq	-32(%rbp), %rdx	# k, tmp142
	movq	-112(%rbp), %rax	# r, tmp143
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp143,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 189 0
	movq	-112(%rbp), %rax	# r, tmp144
	movq	%rax, %rdi	# tmp144,
	call	strlen	#
	addq	%rax, -112(%rbp)	# D.12329, r
.L50:
.LBE3:
	.loc 1 170 0
	movq	-120(%rbp), %rax	# s, tmp145
	movzbl	(%rax), %eax	# MEM[(U8 *)s_2], D.12326
	movzbl	%al, %eax	# D.12326, D.12327
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.12326
	movzbl	%al, %eax	# D.12326, D.12328
	addq	%rax, -120(%rbp)	# D.12328, s
.L47:
	.loc 1 170 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, tmp147
	cmpq	-48(%rbp), %rax	# send, tmp147
	jb	.L52	#,
	.loc 1 192 0 is_stmt 1
	movq	-112(%rbp), %rax	# r, r.9
	leaq	1(%rax), %rdx	#, tmp148
	movq	%rdx, -112(%rbp)	# tmp148, r
	movb	$34, (%rax)	#, *r.9_86
	jmp	.L53	#
.L46:
	.loc 1 195 0
	movq	-88(%rbp), %rax	# backslashes, tmp149
	leaq	(%rax,%rax), %rdx	#, D.12329
	movq	-56(%rbp), %rax	# cur, tmp150
	addq	%rax, %rdx	# tmp150, D.12329
	movq	-80(%rbp), %rax	# single_quotes, tmp151
	addq	%rax, %rax	# D.12329
	addq	%rax, %rdx	# D.12329, D.12329
	.loc 1 196 0
	movq	-72(%rbp), %rax	# qq_escapables, tmp152
	addq	%rax, %rdx	# tmp152, D.12329
	movq	-64(%rbp), %rax	# normal, tmp153
	addq	%rdx, %rax	# D.12329, D.12329
	.loc 1 195 0
	leaq	3(%rax), %rdx	#, D.12329
	movq	-136(%rbp), %rax	# sv, tmp154
	movq	%rdx, %rsi	# D.12329,
	movq	%rax, %rdi	# tmp154,
	call	Perl_sv_grow	#
	.loc 1 197 0
	movq	-136(%rbp), %rax	# sv, tmp155
	movq	(%rax), %rax	# sv_24(D)->sv_any, D.12325
	movq	(%rax), %rdx	# MEM[(struct XPV *)_95].xpv_pv, D.12330
	movq	-56(%rbp), %rax	# cur, tmp159
	addq	%rdx, %rax	# D.12330, tmp158
	movq	%rax, -112(%rbp)	# tmp158, r
	movq	-112(%rbp), %rax	# r, tmp160
	movq	%rax, -104(%rbp)	# tmp160, rstart
	.loc 1 198 0
	movq	-112(%rbp), %rax	# r, r.10
	leaq	1(%rax), %rdx	#, tmp161
	movq	%rdx, -112(%rbp)	# tmp161, r
	movb	$39, (%rax)	#, *r.10_99
	.loc 1 199 0
	movq	%rbx, -120(%rbp)	# src, s
	jmp	.L54	#
.L57:
.LBB4:
	.loc 1 200 0
	movq	-120(%rbp), %rax	# s, tmp162
	movzbl	(%rax), %eax	# *s_3, tmp163
	movb	%al, -121(%rbp)	# tmp163, k
	.loc 1 201 0
	cmpb	$39, -121(%rbp)	#, k
	je	.L55	#,
	.loc 1 201 0 is_stmt 0 discriminator 1
	cmpb	$92, -121(%rbp)	#, k
	jne	.L56	#,
.L55:
	.loc 1 202 0 is_stmt 1
	movq	-112(%rbp), %rax	# r, r.11
	leaq	1(%rax), %rdx	#, tmp164
	movq	%rdx, -112(%rbp)	# tmp164, r
	movb	$92, (%rax)	#, *r.11_103
.L56:
	.loc 1 203 0
	movq	-112(%rbp), %rax	# r, r.12
	leaq	1(%rax), %rdx	#, tmp165
	movq	%rdx, -112(%rbp)	# tmp165, r
	movzbl	-121(%rbp), %edx	# k, tmp166
	movb	%dl, (%rax)	# tmp166, *r.12_105
.LBE4:
	.loc 1 199 0
	addq	$1, -120(%rbp)	#, s
.L54:
	.loc 1 199 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# s, tmp167
	cmpq	-48(%rbp), %rax	# send, tmp167
	jb	.L57	#,
	.loc 1 205 0 is_stmt 1
	movq	-112(%rbp), %rax	# r, r.13
	leaq	1(%rax), %rdx	#, tmp168
	movq	%rdx, -112(%rbp)	# tmp168, r
	movb	$39, (%rax)	#, *r.13_108
.L53:
	.loc 1 207 0
	movq	-112(%rbp), %rax	# r, tmp169
	movb	$0, (%rax)	#, *r_8
	.loc 1 208 0
	movq	-112(%rbp), %rdx	# r, r.14
	movq	-104(%rbp), %rax	# rstart, rstart.15
	subq	%rax, %rdx	# rstart.15, D.12332
	movq	%rdx, %rax	# D.12332, D.12332
	movq	%rax, -24(%rbp)	# D.12332, j
	.loc 1 209 0
	movq	-136(%rbp), %rax	# sv, tmp170
	movq	(%rax), %rax	# sv_24(D)->sv_any, D.12325
	movq	-24(%rbp), %rdx	# j, tmp171
	movq	-56(%rbp), %rcx	# cur, tmp172
	addq	%rcx, %rdx	# tmp172, D.12329
	movq	%rdx, 8(%rax)	# D.12329, MEM[(struct XPV *)_114].xpv_cur
	.loc 1 211 0
	movq	-24(%rbp), %rax	# j, tmp173
	.loc 1 212 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	esc_q_utf8, .-esc_q_utf8
	.section	.rodata
.LC1:
	.string	""
	.text
	.type	sv_x, @function
sv_x:
.LFB6:
	.loc 1 217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# sv, sv
	movq	%rsi, %rbx	# str, str
	movq	%rdx, -48(%rbp)	# len, len
	movl	%ecx, -52(%rbp)	# n, n
	.loc 1 218 0
	cmpq	$0, -40(%rbp)	#, sv
	jne	.L60	#,
	.loc 1 219 0
	movl	$0, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -40(%rbp)	# tmp93, sv
.L60:
	.loc 1 223 0
	cmpl	$0, -52(%rbp)	#, n
	jle	.L61	#,
	.loc 1 224 0
	movq	-40(%rbp), %rax	# sv, tmp94
	movq	(%rax), %rax	# sv_1->sv_any, D.12335
	movq	16(%rax), %rdx	# MEM[(struct XPV *)_7].xpv_len, D.12336
	movl	-52(%rbp), %eax	# n, tmp95
	cltq
	imulq	-48(%rbp), %rax	# len, D.12336
	movq	%rax, %rcx	# D.12336, D.12336
	movq	-40(%rbp), %rax	# sv, tmp96
	movq	(%rax), %rax	# sv_1->sv_any, D.12335
	movq	8(%rax), %rax	# MEM[(struct XPV *)_12].xpv_cur, D.12336
	addq	%rcx, %rax	# D.12336, D.12336
	addq	$1, %rax	#, D.12336
	cmpq	%rax, %rdx	# D.12336, D.12336
	jae	.L63	#,
	.loc 1 224 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# n, tmp97
	cltq
	imulq	-48(%rbp), %rax	# len, D.12336
	movq	%rax, %rdx	# D.12336, D.12336
	movq	-40(%rbp), %rax	# sv, tmp98
	movq	(%rax), %rax	# sv_1->sv_any, D.12335
	movq	8(%rax), %rax	# MEM[(struct XPV *)_18].xpv_cur, D.12336
	addq	%rdx, %rax	# D.12336, D.12336
	leaq	1(%rax), %rdx	#, D.12336
	movq	-40(%rbp), %rax	# sv, tmp99
	movq	%rdx, %rsi	# D.12336,
	movq	%rax, %rdi	# tmp99,
	call	Perl_sv_grow	#
.L63:
	.loc 1 225 0 is_stmt 1
	cmpq	$1, -48(%rbp)	#, len
	jne	.L64	#,
.LBB5:
	.loc 1 226 0
	movq	-40(%rbp), %rax	# sv, tmp101
	movq	(%rax), %rax	# sv_1->sv_any, D.12335
	movq	(%rax), %rdx	# MEM[(struct XPV *)_25].xpv_pv, D.12337
	movq	-40(%rbp), %rax	# sv, tmp102
	movq	(%rax), %rax	# sv_1->sv_any, D.12335
	movq	8(%rax), %rax	# MEM[(struct XPV *)_27].xpv_cur, D.12336
	addq	%rdx, %rax	# D.12337, tmp103
	movq	%rax, -24(%rbp)	# tmp103, start
	.loc 1 227 0
	movq	-40(%rbp), %rax	# sv, tmp104
	movq	(%rax), %rax	# sv_1->sv_any, D.12335
	movq	-40(%rbp), %rdx	# sv, tmp105
	movq	(%rdx), %rdx	# sv_1->sv_any, D.12335
	movq	8(%rdx), %rcx	# MEM[(struct XPV *)_31].xpv_cur, D.12336
	movl	-52(%rbp), %edx	# n, tmp106
	movslq	%edx, %rdx	# tmp106, D.12336
	addq	%rcx, %rdx	# D.12336, D.12336
	movq	%rdx, 8(%rax)	# D.12336, MEM[(struct XPV *)_30].xpv_cur
	.loc 1 228 0
	movl	-52(%rbp), %eax	# n, tmp107
	movslq	%eax, %rdx	# tmp107, D.12338
	movq	-24(%rbp), %rax	# start, tmp108
	addq	%rdx, %rax	# D.12338, D.12337
	movb	$0, (%rax)	#, *_36
	.loc 1 229 0
	jmp	.L65	#
.L66:
	.loc 1 230 0
	subl	$1, -52(%rbp)	#, n
	movl	-52(%rbp), %eax	# n, tmp109
	movslq	%eax, %rdx	# tmp109, D.12338
	movq	-24(%rbp), %rax	# start, tmp110
	addq	%rax, %rdx	# tmp110, D.12337
	movzbl	(%rbx), %eax	# *str_40(D), D.12339
	movb	%al, (%rdx)	# D.12339, *_39
.L65:
	.loc 1 229 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, n
	jg	.L66	#,
.LBE5:
	jmp	.L61	#
.L64:
	.loc 1 233 0
	jmp	.L67	#
.L68:
	.loc 1 234 0
	movq	-48(%rbp), %rdx	# len, tmp111
	movq	-40(%rbp), %rax	# sv, tmp112
	movl	$2, %ecx	#,
	movq	%rbx, %rsi	# str,
	movq	%rax, %rdi	# tmp112,
	call	Perl_sv_catpvn_flags	#
	.loc 1 235 0
	subl	$1, -52(%rbp)	#, n
.L67:
	.loc 1 233 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, n
	jg	.L68	#,
.L61:
	.loc 1 238 0
	movq	-40(%rbp), %rax	# sv, D.12340
	.loc 1 239 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sv_x, .-sv_x
	.section	.rodata
	.align 8
.LC3:
	.string	"WARNING(Freezer method call failed): %_"
.LC4:
	.string	"0x%lx"
.LC5:
	.string	"{}"
.LC6:
	.string	"[]"
.LC7:
	.string	"do{my $o}"
.LC8:
	.string	" = "
.LC9:
	.string	"{"
.LC10:
	.string	"}"
.LC11:
	.string	"ref name not found for %s"
.LC12:
	.string	"\\"
.LC13:
	.string	"Regexp"
.LC14:
	.string	"qr/"
.LC15:
	.string	"\\/"
.LC16:
	.string	"/"
.LC17:
	.string	"'"
.LC18:
	.string	"( "
.LC19:
	.string	" "
.LC20:
	.string	"${"
.LC21:
	.string	"do{\\(my $o = "
.LC22:
	.string	")}"
.LC23:
	.string	"*{"
.LC24:
	.string	"("
.LC25:
	.string	"["
.LC26:
	.string	"{SCALAR}"
.LC27:
	.string	"{ARRAY}"
.LC28:
	.string	"{HASH}"
.LC29:
	.string	"%ld"
.LC30:
	.string	"#"
.LC31:
	.string	","
.LC32:
	.string	")"
.LC33:
	.string	"]"
.LC34:
	.string	"->"
	.align 8
.LC35:
	.string	"Sortkeys subroutine did not return ARRAYREF\n"
.LC36:
	.string	"sub { \"DUMMY\" }"
	.align 8
.LC37:
	.string	"Encountered CODE ref, using dummy placeholder"
.LC38:
	.string	"cannot handle ref type %ld"
.LC39:
	.string	", '"
.LC40:
	.string	"' )"
.LC41:
	.string	"()"
.LC42:
	.string	"%lu"
.LC43:
	.string	"'%s'"
.LC44:
	.string	"main::"
.LC45:
	.string	"undef"
	.text
	.type	DD_dump, @function
DD_dump:
.LFB7:
	.loc 1 251 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1000, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -760(%rbp)	# val, val
	movq	%rsi, -768(%rbp)	# name, name
	movq	%rdx, -776(%rbp)	# namelen, namelen
	movq	%rcx, -784(%rbp)	# retval, retval
	movq	%r8, -792(%rbp)	# seenhv, seenhv
	movq	%r9, -800(%rbp)	# postav, postav
	movq	16(%rbp), %rax	# levelp, tmp652
	movq	%rax, -808(%rbp)	# tmp652, levelp
	movq	32(%rbp), %rax	# pad, tmp653
	movq	%rax, -816(%rbp)	# tmp653, pad
	movq	40(%rbp), %rax	# xpad, tmp654
	movq	%rax, -824(%rbp)	# tmp654, xpad
	movq	48(%rbp), %rax	# apad, tmp655
	movq	%rax, -832(%rbp)	# tmp655, apad
	movq	56(%rbp), %rax	# sep, tmp656
	movq	%rax, -840(%rbp)	# tmp656, sep
	movq	64(%rbp), %rax	# pair, tmp657
	movq	%rax, -848(%rbp)	# tmp657, pair
	movq	72(%rbp), %rax	# freezer, tmp658
	movq	%rax, -856(%rbp)	# tmp658, freezer
	movq	80(%rbp), %rax	# toaster, tmp659
	movq	%rax, -864(%rbp)	# tmp659, toaster
	movq	112(%rbp), %rax	# bless, tmp660
	movq	%rax, -872(%rbp)	# tmp660, bless
	movq	128(%rbp), %rax	# sortkeys, tmp661
	movq	%rax, -880(%rbp)	# tmp661, sortkeys
	.loc 1 251 0
	movq	%fs:40, %rax	#, tmp1377
	movq	%rax, -24(%rbp)	# tmp1377, D.12365
	xorl	%eax, %eax	# tmp1377
	.loc 1 257 0
	movq	$0, -672(%rbp)	#, blesspad
	.loc 1 258 0
	movq	$0, -664(%rbp)	#, seenentry
	.loc 1 260 0
	movq	$0, -648(%rbp)	#, idlen
	.loc 1 263 0
	cmpq	$0, -760(%rbp)	#, val
	jne	.L71	#,
	.loc 1 264 0
	movl	$0, %eax	#, D.12342
	jmp	.L248	#
.L71:
	.loc 1 266 0
	movq	-760(%rbp), %rax	# val, tmp662
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$255, %eax	#, tmp663
	movl	%eax, -716(%rbp)	# tmp663, realtype
	.loc 1 268 0
	movq	-760(%rbp), %rax	# val, tmp664
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$8192, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L73	#,
	.loc 1 269 0
	movq	-760(%rbp), %rax	# val, tmp665
	movq	%rax, %rdi	# tmp665,
	call	Perl_mg_get	#
.L73:
	.loc 1 270 0
	movq	-760(%rbp), %rax	# val, tmp666
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$524288, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L74	#,
	.loc 1 274 0
	movq	-760(%rbp), %rax	# val, tmp667
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XRV *)_77].xrv_rv, D.12345
	movl	12(%rax), %eax	# _78->sv_flags, D.12343
	andl	$4096, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L75	#,
	.loc 1 274 0 is_stmt 0 discriminator 1
	cmpq	$0, -856(%rbp)	#, freezer
	je	.L75	#,
	.loc 1 275 0 is_stmt 1 discriminator 1
	movq	-856(%rbp), %rax	# freezer, tmp668
	movl	12(%rax), %eax	# freezer_81(D)->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	.loc 1 274 0 discriminator 1
	testl	%eax, %eax	# D.12343
	je	.L75	#,
	.loc 1 275 0
	movq	-856(%rbp), %rax	# freezer, tmp669
	movq	(%rax), %rax	# freezer_81(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_84].xpv_cur, D.12346
	testq	%rax, %rax	# D.12346
	je	.L75	#,
	.loc 1 277 0 discriminator 1
	movq	-856(%rbp), %rax	# freezer, tmp670
	movq	(%rax), %rax	# freezer_81(D)->sv_any, D.12344
	.loc 1 276 0 discriminator 1
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_86].xpv_cur, D.12346
	movq	-856(%rbp), %rax	# freezer, tmp671
	movq	(%rax), %rax	# freezer_81(D)->sv_any, D.12344
	movq	(%rax), %rsi	# MEM[(struct XPV *)_88].xpv_pv, D.12347
	movq	-760(%rbp), %rax	# val, tmp672
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XRV *)_90].xrv_rv, D.12345
	movq	(%rax), %rax	# _91->sv_any, D.12344
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_92].xmg_stash, D.12348
	movl	$-1, %ecx	#,
	movq	%rax, %rdi	# D.12348,
	call	Perl_gv_fetchmeth	#
	.loc 1 275 0 discriminator 1
	testq	%rax, %rax	# D.12349
	je	.L75	#,
.LBB6:
	.loc 1 279 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	call	Perl_push_scope	#
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.17
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.17, PL_tmps_floor
.LBB7:
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.18
	addq	$4, %rax	#, PL_markstack_ptr.19
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.19, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.20
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.21
	cmpq	%rax, %rdx	# PL_markstack_max.21, PL_markstack_ptr.20
	jne	.L76	#,
	.loc 1 279 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L76:
	.loc 1 279 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.22
	movq	%rbx, %rcx	# sp, sp.23
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.24
	subq	%rdx, %rcx	# PL_stack_base.25, D.12350
	movq	%rcx, %rdx	# D.12350, D.12350
	sarq	$3, %rdx	#, tmp673
	movl	%edx, (%rax)	# D.12351, *PL_markstack_ptr.22_101
.LBE7:
.LBB8:
	.loc 1 280 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.26
	movq	%rax, %rdx	# PL_stack_max.26, PL_stack_max.27
	movq	%rbx, %rax	# sp, sp.28
	subq	%rax, %rdx	# sp.28, D.12350
	movq	%rdx, %rax	# D.12350, D.12350
	cmpq	$7, %rax	#, D.12350
	jg	.L77	#,
	.loc 1 280 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L77:
	.loc 1 280 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-760(%rbp), %rax	# val, tmp674
	movq	%rax, (%rbx)	# tmp674, *sp_114
.LBE8:
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 281 0 is_stmt 1 discriminator 2
	movq	-856(%rbp), %rax	# freezer, tmp675
	movq	(%rax), %rax	# freezer_81(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_116].xpv_pv, D.12347
	movl	$132, %esi	#,
	movq	%rax, %rdi	# D.12347,
	call	Perl_call_method	#
	movl	%eax, -740(%rbp)	# D.12351, i
	.loc 1 282 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 283 0 discriminator 2
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.30
	movq	(%rax), %rax	# PL_errgv.30_121->sv_any, D.12352
	movq	56(%rax), %rax	# _122->xgv_gp, D.12353
	movq	(%rax), %rax	# _123->gp_sv, D.12345
	testq	%rax, %rax	# D.12345
	je	.L78	#,
	.loc 1 283 0 is_stmt 0 discriminator 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.32
	movq	(%rax), %rax	# PL_errgv.32_125->sv_any, D.12352
	movq	56(%rax), %rax	# _126->xgv_gp, D.12353
	movq	(%rax), %rax	# _127->gp_sv, D.12345
	movl	12(%rax), %eax	# _128->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L79	#,
	.loc 1 283 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.34
	movq	(%rax), %rax	# PL_errgv.34_131->sv_any, D.12352
	movq	56(%rax), %rax	# _132->xgv_gp, D.12353
	movq	(%rax), %rax	# _133->gp_sv, D.12345
	movq	(%rax), %rax	# _134->sv_any, PL_Xpv.35
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.35, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.36
	testq	%rax, %rax	# PL_Xpv.36
	je	.L80	#,
	.loc 1 283 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.37
	movq	8(%rax), %rax	# PL_Xpv.37_137->xpv_cur, D.12346
	cmpq	$1, %rax	#, D.12346
	ja	.L81	#,
	.loc 1 283 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.38
	movq	8(%rax), %rax	# PL_Xpv.38_139->xpv_cur, D.12346
	testq	%rax, %rax	# D.12346
	je	.L80	#,
	.loc 1 283 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.39
	movq	(%rax), %rax	# PL_Xpv.39_141->xpv_pv, D.12347
	movzbl	(%rax), %eax	# *_142, D.12354
	cmpb	$48, %al	#, D.12354
	je	.L80	#,
.L81:
	.loc 1 283 0 discriminator 7
	movl	$1, %eax	#, iftmp.33
	jmp	.L82	#
.L80:
	.loc 1 283 0 discriminator 6
	movl	$0, %eax	#, iftmp.33
.L82:
	.loc 1 283 0 discriminator 9
	andl	$1, %eax	#, iftmp.31
	jmp	.L88	#
.L79:
	.loc 1 283 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.41
	movq	(%rax), %rax	# PL_errgv.41_147->sv_any, D.12352
	movq	56(%rax), %rax	# _148->xgv_gp, D.12353
	movq	(%rax), %rax	# _149->gp_sv, D.12345
	movl	12(%rax), %eax	# _150->sv_flags, D.12343
	andl	$65536, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L84	#,
	.loc 1 283 0 discriminator 10
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.42
	movq	(%rax), %rax	# PL_errgv.42_153->sv_any, D.12352
	movq	56(%rax), %rax	# _154->xgv_gp, D.12353
	movq	(%rax), %rax	# _155->gp_sv, D.12345
	movq	(%rax), %rax	# _156->sv_any, D.12344
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_157].xiv_iv, D.12350
	testq	%rax, %rax	# D.12350
	setne	%al	#, iftmp.40
	jmp	.L88	#
.L84:
	.loc 1 283 0 discriminator 11
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.44
	movq	(%rax), %rax	# PL_errgv.44_160->sv_any, D.12352
	movq	56(%rax), %rax	# _161->xgv_gp, D.12353
	movq	(%rax), %rax	# _162->gp_sv, D.12345
	movl	12(%rax), %eax	# _163->sv_flags, D.12343
	andl	$131072, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L86	#,
	.loc 1 283 0 discriminator 12
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.45
	movq	(%rax), %rax	# PL_errgv.45_166->sv_any, D.12352
	movq	56(%rax), %rax	# _167->xgv_gp, D.12353
	movq	(%rax), %rax	# _168->gp_sv, D.12345
	movq	(%rax), %rax	# _169->sv_any, D.12344
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_170].xnv_nv, D.12355
	xorpd	%xmm1, %xmm1	# tmp677
	ucomisd	%xmm1, %xmm0	# tmp677, D.12355
	setp	%dl	#, tmp676
	movl	$1, %eax	#, tmp679
	xorpd	%xmm1, %xmm1	# tmp678
	ucomisd	%xmm1, %xmm0	# tmp678, D.12355
	cmove	%edx, %eax	# tmp676,, iftmp.43
	jmp	.L88	#
.L86:
	.loc 1 283 0 discriminator 13
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.46
	movq	(%rax), %rax	# PL_errgv.46_173->sv_any, D.12352
	movq	56(%rax), %rax	# _174->xgv_gp, D.12353
	movq	(%rax), %rax	# _175->gp_sv, D.12345
	movq	%rax, %rdi	# D.12345,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.12354
	setne	%al	#, iftmp.43
	jmp	.L88	#
.L78:
	.loc 1 283 0 discriminator 2
	movl	$0, %eax	#, iftmp.29
.L88:
	.loc 1 283 0 discriminator 16
	testb	%al, %al	# iftmp.29
	je	.L89	#,
	.loc 1 284 0 is_stmt 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.47
	movq	(%rax), %rax	# PL_errgv.47_183->sv_any, D.12352
	movq	56(%rax), %rax	# _184->xgv_gp, D.12353
	movq	(%rax), %rax	# _185->gp_sv, D.12345
	movq	%rax, %rsi	# D.12345,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L89:
	.loc 1 285 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.48
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.49
	cmpl	%eax, %edx	# PL_tmps_floor.49, PL_tmps_ix.48
	jle	.L90	#,
	.loc 1 285 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L90:
	.loc 1 285 0 discriminator 2
	call	Perl_pop_scope	#
.L75:
.LBE6:
	.loc 1 288 0 is_stmt 1
	movq	-760(%rbp), %rax	# val, tmp680
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XRV *)_189].xrv_rv, tmp681
	movq	%rax, -560(%rbp)	# tmp681, ival
	.loc 1 289 0
	movq	-560(%rbp), %rax	# ival, tmp682
	movl	12(%rax), %eax	# ival_190->sv_flags, D.12343
	andl	$255, %eax	#, tmp683
	movl	%eax, -716(%rbp)	# tmp683, realtype
	.loc 1 290 0
	movq	-560(%rbp), %rdx	# ival, ival.50
	leaq	-160(%rbp), %rax	#, tmp684
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp684,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 291 0
	leaq	-160(%rbp), %rax	#, tmp685
	movq	%rax, %rdi	# tmp685,
	call	strlen	#
	movq	%rax, -648(%rbp)	# tmp686, idlen
	.loc 1 292 0
	movq	-560(%rbp), %rax	# ival, tmp687
	movl	12(%rax), %eax	# ival_190->sv_flags, D.12343
	andl	$4096, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L91	#,
	.loc 1 293 0
	movq	-560(%rbp), %rax	# ival, tmp688
	movq	(%rax), %rax	# ival_190->sv_any, D.12344
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_197].xmg_stash, D.12348
	movq	(%rax), %rax	# _198->sv_any, D.12356
	movq	80(%rax), %rax	# _199->xhv_name, tmp689
	movq	%rax, -680(%rbp)	# tmp689, realpack
	jmp	.L92	#
.L91:
	.loc 1 295 0
	movq	$0, -680(%rbp)	#, realpack
.L92:
	.loc 1 300 0
	cmpq	$0, -776(%rbp)	#, namelen
	je	.L93	#,
	.loc 1 301 0
	movq	-648(%rbp), %rax	# idlen, tmp690
	movl	%eax, %edx	# tmp690, D.12351
	leaq	-160(%rbp), %rsi	#, tmp691
	movq	-792(%rbp), %rax	# seenhv, tmp692
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp692,
	call	Perl_hv_fetch	#
	movq	%rax, -552(%rbp)	# tmp693, svp
	cmpq	$0, -552(%rbp)	#, svp
	je	.L94	#,
	.loc 1 302 0
	movq	-552(%rbp), %rax	# svp, tmp694
	movq	(%rax), %rax	# *svp_205, tmp695
	movq	%rax, -544(%rbp)	# tmp695, sv
	cmpq	$0, -544(%rbp)	#, sv
	je	.L94	#,
	.loc 1 302 0 is_stmt 0 discriminator 1
	movq	-544(%rbp), %rax	# sv, tmp696
	movl	12(%rax), %eax	# sv_206->sv_flags, D.12343
	andl	$524288, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L94	#,
	movq	-544(%rbp), %rax	# sv, tmp697
	movq	(%rax), %rax	# sv_206->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XRV *)_209].xrv_rv, tmp698
	movq	%rax, -664(%rbp)	# tmp698, seenentry
	cmpq	$0, -664(%rbp)	#, seenentry
	je	.L94	#,
.LBB9:
	.loc 1 305 0 is_stmt 1
	movq	-664(%rbp), %rax	# seenentry, tmp699
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp699,
	call	Perl_av_fetch	#
	movq	%rax, -552(%rbp)	# tmp700, svp
	cmpq	$0, -552(%rbp)	#, svp
	je	.L95	#,
	.loc 1 306 0
	movq	-552(%rbp), %rax	# svp, tmp701
	movq	(%rax), %rax	# *svp_211, tmp702
	movq	%rax, -536(%rbp)	# tmp702, othername
	cmpq	$0, -536(%rbp)	#, othername
	je	.L95	#,
	.loc 1 308 0
	cmpl	$0, 88(%rbp)	#, purity
	je	.L96	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movq	-808(%rbp), %rax	# levelp, tmp703
	movl	(%rax), %eax	# *levelp_214(D), D.12351
	testl	%eax, %eax	# D.12351
	jle	.L96	#,
.LBB10:
	.loc 1 311 0 is_stmt 1
	cmpl	$11, -716(%rbp)	#, realtype
	jne	.L97	#,
	.loc 1 312 0
	movq	-784(%rbp), %rax	# retval, tmp704
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp704,
	call	Perl_sv_catpvn_flags	#
	jmp	.L98	#
.L97:
	.loc 1 313 0
	cmpl	$10, -716(%rbp)	#, realtype
	jne	.L99	#,
	.loc 1 314 0
	movq	-784(%rbp), %rax	# retval, tmp705
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp705,
	call	Perl_sv_catpvn_flags	#
	jmp	.L98	#
.L99:
	.loc 1 316 0
	movq	-784(%rbp), %rax	# retval, tmp706
	movl	$2, %ecx	#,
	movl	$9, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp706,
	call	Perl_sv_catpvn_flags	#
.L98:
	.loc 1 317 0
	movq	-776(%rbp), %rdx	# namelen, tmp707
	movq	-768(%rbp), %rax	# name, tmp708
	movq	%rdx, %rsi	# tmp707,
	movq	%rax, %rdi	# tmp708,
	call	Perl_newSVpvn	#
	movq	%rax, -528(%rbp)	# tmp709, postentry
	.loc 1 318 0
	movq	-528(%rbp), %rax	# postentry, tmp710
	movl	$2, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp710,
	call	Perl_sv_catpvn_flags	#
	.loc 1 319 0
	movq	-536(%rbp), %rcx	# othername, tmp711
	movq	-528(%rbp), %rax	# postentry, tmp712
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp711,
	movq	%rax, %rdi	# tmp712,
	call	Perl_sv_catsv_flags	#
	.loc 1 320 0
	movq	-528(%rbp), %rdx	# postentry, tmp713
	movq	-800(%rbp), %rax	# postav, tmp714
	movq	%rdx, %rsi	# tmp713,
	movq	%rax, %rdi	# tmp714,
	call	Perl_av_push	#
.LBE10:
	.loc 1 308 0
	jmp	.L100	#
.L96:
	.loc 1 323 0
	movq	-768(%rbp), %rax	# name, tmp715
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$64, %al	#, D.12354
	je	.L101	#,
	.loc 1 323 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# name, tmp716
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$37, %al	#, D.12354
	jne	.L102	#,
.L101:
	.loc 1 324 0 is_stmt 1
	movq	-536(%rbp), %rax	# othername, tmp717
	movq	(%rax), %rax	# othername_212->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_222].xpv_pv, D.12347
	movzbl	(%rax), %eax	# *_223, D.12354
	cmpb	$92, %al	#, D.12354
	jne	.L103	#,
	.loc 1 325 0 discriminator 1
	movq	-536(%rbp), %rax	# othername, tmp718
	movq	(%rax), %rax	# othername_212->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_225].xpv_pv, D.12347
	addq	$1, %rax	#, D.12347
	movzbl	(%rax), %edx	# *_227, D.12354
	movq	-768(%rbp), %rax	# name, tmp719
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	.loc 1 324 0 discriminator 1
	cmpb	%al, %dl	# D.12354, D.12354
	jne	.L103	#,
	.loc 1 326 0
	movq	-536(%rbp), %rax	# othername, tmp720
	movq	(%rax), %rax	# othername_212->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_230].xpv_cur, D.12346
	leaq	-1(%rax), %rdx	#, D.12346
	movq	-536(%rbp), %rax	# othername, tmp721
	movq	(%rax), %rax	# othername_212->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_233].xpv_pv, D.12347
	leaq	1(%rax), %rsi	#, D.12357
	movq	-784(%rbp), %rax	# retval, tmp722
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp722,
	call	Perl_sv_catpvn_flags	#
	.loc 1 324 0
	jmp	.L100	#
.L103:
	.loc 1 330 0
	movq	-768(%rbp), %rsi	# name, tmp723
	movq	-784(%rbp), %rax	# retval, tmp724
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp724,
	call	Perl_sv_catpvn_flags	#
	.loc 1 331 0
	movq	-784(%rbp), %rax	# retval, tmp725
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp725,
	call	Perl_sv_catpvn_flags	#
	.loc 1 332 0
	movq	-536(%rbp), %rcx	# othername, tmp726
	movq	-784(%rbp), %rax	# retval, tmp727
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp726,
	movq	%rax, %rdi	# tmp727,
	call	Perl_sv_catsv_flags	#
	.loc 1 333 0
	movq	-784(%rbp), %rax	# retval, tmp728
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp728,
	call	Perl_sv_catpvn_flags	#
	.loc 1 324 0
	jmp	.L100	#
.L102:
	.loc 1 337 0
	movq	-536(%rbp), %rcx	# othername, tmp729
	movq	-784(%rbp), %rax	# retval, tmp730
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp729,
	movq	%rax, %rdi	# tmp730,
	call	Perl_sv_catsv_flags	#
.L100:
	.loc 1 339 0
	movl	$1, %eax	#, D.12342
	jmp	.L248	#
.L95:
	.loc 1 342 0
	leaq	-160(%rbp), %rax	#, tmp731
	movq	%rax, %rsi	# tmp731,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
	.loc 1 343 0
	movl	$0, %eax	#, D.12342
	jmp	.L248	#
.L94:
.LBE9:
.LBB11:
	.loc 1 348 0
	movq	-768(%rbp), %rax	# name, tmp732
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$64, %al	#, D.12354
	je	.L105	#,
	.loc 1 348 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# name, tmp733
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$37, %al	#, D.12354
	jne	.L106	#,
.L105:
	.loc 1 349 0 is_stmt 1
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -640(%rbp)	# tmp734, namesv
	.loc 1 350 0
	movq	-776(%rbp), %rdx	# namelen, tmp735
	movq	-768(%rbp), %rsi	# name, tmp736
	movq	-640(%rbp), %rax	# namesv, tmp737
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp737,
	call	Perl_sv_catpvn_flags	#
	jmp	.L107	#
.L106:
	.loc 1 352 0
	cmpl	$12, -716(%rbp)	#, realtype
	jne	.L108	#,
	.loc 1 352 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# name, tmp738
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$42, %al	#, D.12354
	jne	.L108	#,
	.loc 1 353 0 is_stmt 1
	movl	$2, %esi	#,
	movl	$.LC12, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -640(%rbp)	# tmp739, namesv
	.loc 1 354 0
	movq	-776(%rbp), %rdx	# namelen, tmp740
	movq	-768(%rbp), %rsi	# name, tmp741
	movq	-640(%rbp), %rax	# namesv, tmp742
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp742,
	call	Perl_sv_catpvn_flags	#
	.loc 1 355 0
	movq	-640(%rbp), %rax	# namesv, tmp743
	movq	(%rax), %rax	# namesv_241->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_242].xpv_pv, D.12347
	addq	$1, %rax	#, D.12347
	movb	$38, (%rax)	#, *_244
	jmp	.L107	#
.L108:
	.loc 1 358 0
	movq	-776(%rbp), %rdx	# namelen, tmp744
	movq	-768(%rbp), %rax	# name, tmp745
	movq	%rdx, %rsi	# tmp744,
	movq	%rax, %rdi	# tmp745,
	call	Perl_newSVpvn	#
	movq	%rax, -640(%rbp)	# tmp746, namesv
.L107:
	.loc 1 359 0
	call	Perl_newAV	#
	movq	%rax, -664(%rbp)	# tmp747, seenentry
	.loc 1 360 0
	movq	-640(%rbp), %rdx	# namesv, tmp748
	movq	-664(%rbp), %rax	# seenentry, tmp749
	movq	%rdx, %rsi	# tmp748,
	movq	%rax, %rdi	# tmp749,
	call	Perl_av_push	#
	.loc 1 361 0
	movq	-760(%rbp), %rax	# val, tmp750
	movq	%rax, PL_Sv(%rip)	# tmp750, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.52
	testq	%rax, %rax	# PL_Sv.52
	je	.L110	#,
	.loc 1 361 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.53
	movl	8(%rax), %edx	# PL_Sv.53_249->sv_refcnt, D.12343
	addl	$1, %edx	#, D.12343
	movl	%edx, 8(%rax)	# D.12343, PL_Sv.53_249->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.53_249->sv_refcnt, D.12343
	testl	%eax, %eax	# D.12343
	je	.L110	#,
	.loc 1 361 0
	nop
.L110:
	.loc 1 362 0 is_stmt 1
	movq	-760(%rbp), %rdx	# val, tmp751
	movq	-664(%rbp), %rax	# seenentry, tmp752
	movq	%rdx, %rsi	# tmp751,
	movq	%rax, %rdi	# tmp752,
	call	Perl_av_push	#
	.loc 1 363 0
	movq	-664(%rbp), %rax	# seenentry, tmp753
	movq	%rax, %rdi	# tmp753,
	call	Perl_newRV	#
	movq	%rax, %rbx	#, D.12345
	leaq	-160(%rbp), %rax	#, tmp754
	movq	%rax, %rdi	# tmp754,
	call	strlen	#
	movl	%eax, %edx	# D.12346, D.12351
	leaq	-160(%rbp), %rsi	#, tmp755
	movq	-792(%rbp), %rax	# seenhv, tmp756
	movl	$0, %r8d	#,
	movq	%rbx, %rcx	# D.12345,
	movq	%rax, %rdi	# tmp756,
	call	Perl_hv_store	#
	.loc 1 365 0
	movq	-664(%rbp), %rax	# seenentry, tmp757
	movq	%rax, %rdi	# tmp757,
	call	Perl_sv_free	#
.L93:
.LBE11:
	.loc 1 369 0
	cmpq	$0, -680(%rbp)	#, realpack
	je	.L111	#,
	.loc 1 369 0 is_stmt 0 discriminator 1
	movq	-680(%rbp), %rax	# realpack, tmp758
	movzbl	(%rax), %eax	# *realpack_6, D.12354
	cmpb	$82, %al	#, D.12354
	jne	.L111	#,
	movq	-680(%rbp), %rax	# realpack, tmp759
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp759,
	call	strcmp	#
	testl	%eax, %eax	# D.12351
	jne	.L111	#,
.LBB12:
	.loc 1 371 0 is_stmt 1
	movq	-760(%rbp), %rax	# val, tmp760
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L112	#,
	.loc 1 371 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# val, tmp761
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_262].xpv_cur, rlen.55
	movq	%rax, -704(%rbp)	# rlen.55, rlen
	movq	-760(%rbp), %rax	# val, tmp762
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_264].xpv_pv, iftmp.54
	jmp	.L113	#
.L112:
	.loc 1 371 0 discriminator 2
	leaq	-704(%rbp), %rcx	#, tmp763
	movq	-760(%rbp), %rax	# val, tmp764
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp763,
	movq	%rax, %rdi	# tmp764,
	call	Perl_sv_2pv_flags	#
.L113:
	.loc 1 371 0 discriminator 3
	movq	%rax, -632(%rbp)	# iftmp.54, rval
	.loc 1 372 0 is_stmt 1 discriminator 3
	movq	-632(%rbp), %rax	# rval, tmp765
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp765,
	call	strchr	#
	movq	%rax, -624(%rbp)	# tmp766, slash
	.loc 1 373 0 discriminator 3
	movq	-784(%rbp), %rax	# retval, tmp767
	movl	$2, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp767,
	call	Perl_sv_catpvn_flags	#
	.loc 1 374 0 discriminator 3
	jmp	.L114	#
.L115:
	.loc 1 375 0
	movq	-624(%rbp), %rdx	# slash, slash.56
	movq	-632(%rbp), %rax	# rval, rval.57
	subq	%rax, %rdx	# rval.57, D.12350
	movq	%rdx, %rax	# D.12350, D.12350
	movq	%rax, %rdx	# D.12350, D.12346
	movq	-632(%rbp), %rsi	# rval, tmp768
	movq	-784(%rbp), %rax	# retval, tmp769
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp769,
	call	Perl_sv_catpvn_flags	#
	.loc 1 376 0
	movq	-784(%rbp), %rax	# retval, tmp770
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp770,
	call	Perl_sv_catpvn_flags	#
	.loc 1 377 0
	movq	-632(%rbp), %rdx	# rval, rval.58
	movq	-624(%rbp), %rax	# slash, slash.59
	subq	%rax, %rdx	# slash.59, D.12350
	movq	%rdx, %rax	# D.12350, D.12350
	movq	%rax, %rdx	# D.12350, D.12346
	movq	-704(%rbp), %rax	# rlen, rlen.60
	addq	%rdx, %rax	# D.12346, D.12346
	subq	$1, %rax	#, rlen.61
	movq	%rax, -704(%rbp)	# rlen.61, rlen
	.loc 1 378 0
	movq	-624(%rbp), %rax	# slash, tmp774
	addq	$1, %rax	#, tmp773
	movq	%rax, -632(%rbp)	# tmp773, rval
	.loc 1 379 0
	movq	-632(%rbp), %rax	# rval, tmp775
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp775,
	call	strchr	#
	movq	%rax, -624(%rbp)	# tmp776, slash
.L114:
	.loc 1 374 0 discriminator 1
	cmpq	$0, -624(%rbp)	#, slash
	jne	.L115	#,
	.loc 1 381 0
	movq	-704(%rbp), %rdx	# rlen, rlen.62
	movq	-632(%rbp), %rsi	# rval, tmp777
	movq	-784(%rbp), %rax	# retval, tmp778
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp778,
	call	Perl_sv_catpvn_flags	#
	.loc 1 382 0
	movq	-784(%rbp), %rax	# retval, tmp779
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp779,
	call	Perl_sv_catpvn_flags	#
	.loc 1 383 0
	movl	$1, %eax	#, D.12342
	jmp	.L248	#
.L111:
.LBE12:
	.loc 1 391 0
	cmpl	$0, 88(%rbp)	#, purity
	jne	.L116	#,
	.loc 1 391 0 is_stmt 0 discriminator 1
	cmpl	$0, 120(%rbp)	#, maxdepth
	jle	.L116	#,
	movq	-808(%rbp), %rax	# levelp, tmp780
	movl	(%rax), %eax	# *levelp_214(D), D.12351
	cmpl	120(%rbp), %eax	# maxdepth, D.12351
	jl	.L116	#,
.LBB13:
	.loc 1 393 0 is_stmt 1
	movq	-760(%rbp), %rax	# val, tmp781
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L117	#,
	.loc 1 393 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# val, tmp782
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_288].xpv_cur, vallen.64
	movq	%rax, -704(%rbp)	# vallen.64, vallen
	movq	-760(%rbp), %rax	# val, tmp783
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_290].xpv_pv, iftmp.63
	jmp	.L118	#
.L117:
	.loc 1 393 0 discriminator 2
	leaq	-704(%rbp), %rcx	#, tmp784
	movq	-760(%rbp), %rax	# val, tmp785
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp784,
	movq	%rax, %rdi	# tmp785,
	call	Perl_sv_2pv_flags	#
.L118:
	.loc 1 393 0 discriminator 3
	movq	%rax, -520(%rbp)	# iftmp.63, valstr
	.loc 1 394 0 is_stmt 1 discriminator 3
	movq	-784(%rbp), %rax	# retval, tmp786
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp786,
	call	Perl_sv_catpvn_flags	#
	.loc 1 395 0 discriminator 3
	movq	-704(%rbp), %rdx	# vallen, vallen.65
	movq	-520(%rbp), %rsi	# valstr, tmp787
	movq	-784(%rbp), %rax	# retval, tmp788
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp788,
	call	Perl_sv_catpvn_flags	#
	.loc 1 396 0 discriminator 3
	movq	-784(%rbp), %rax	# retval, tmp789
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp789,
	call	Perl_sv_catpvn_flags	#
	.loc 1 397 0 discriminator 3
	movl	$1, %eax	#, D.12342
	jmp	.L248	#
.L116:
.LBE13:
	.loc 1 400 0
	cmpq	$0, -680(%rbp)	#, realpack
	je	.L119	#,
.LBB14:
	.loc 1 402 0
	movq	-872(%rbp), %rax	# bless, tmp790
	movl	12(%rax), %eax	# bless_297(D)->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L120	#,
	.loc 1 402 0 is_stmt 0 discriminator 1
	movq	-872(%rbp), %rax	# bless, tmp791
	movq	(%rax), %rax	# bless_297(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_300].xpv_cur, blesslen.67
	movq	%rax, -704(%rbp)	# blesslen.67, blesslen
	movq	-872(%rbp), %rax	# bless, tmp792
	movq	(%rax), %rax	# bless_297(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_302].xpv_pv, iftmp.66
	jmp	.L121	#
.L120:
	.loc 1 402 0 discriminator 2
	leaq	-704(%rbp), %rcx	#, tmp793
	movq	-872(%rbp), %rax	# bless, tmp794
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp793,
	movq	%rax, %rdi	# tmp794,
	call	Perl_sv_2pv_flags	#
.L121:
	.loc 1 402 0 discriminator 3
	movq	%rax, -512(%rbp)	# iftmp.66, blessstr
	.loc 1 403 0 is_stmt 1 discriminator 3
	movq	-704(%rbp), %rdx	# blesslen, blesslen.68
	movq	-512(%rbp), %rsi	# blessstr, tmp795
	movq	-784(%rbp), %rax	# retval, tmp796
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp796,
	call	Perl_sv_catpvn_flags	#
	.loc 1 404 0 discriminator 3
	movq	-784(%rbp), %rax	# retval, tmp797
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp797,
	call	Perl_sv_catpvn_flags	#
	.loc 1 405 0 discriminator 3
	cmpl	$1, 24(%rbp)	#, indent
	jle	.L119	#,
	.loc 1 406 0
	movq	-832(%rbp), %rax	# apad, tmp798
	movq	%rax, -672(%rbp)	# tmp798, blesspad
	.loc 1 407 0
	movq	-832(%rbp), %rax	# apad, tmp799
	movq	%rax, %rdi	# tmp799,
	call	Perl_newSVsv	#
	movq	%rax, -832(%rbp)	# tmp800, apad
	.loc 1 408 0
	movq	-704(%rbp), %rax	# blesslen, blesslen.69
	addl	$2, %eax	#, D.12358
	movl	%eax, %edx	# D.12358, D.12351
	movq	-832(%rbp), %rax	# apad, tmp801
	movl	%edx, %ecx	# D.12351,
	movl	$1, %edx	#,
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp801,
	call	sv_x	#
.L119:
.LBE14:
	.loc 1 412 0
	movq	-808(%rbp), %rax	# levelp, tmp802
	movl	(%rax), %eax	# *levelp_214(D), D.12351
	leal	1(%rax), %edx	#, D.12351
	movq	-808(%rbp), %rax	# levelp, tmp803
	movl	%edx, (%rax)	# D.12351, *levelp_214(D)
	.loc 1 413 0
	movq	-808(%rbp), %rax	# levelp, tmp804
	movl	(%rax), %ecx	# *levelp_214(D), D.12351
	movq	-824(%rbp), %rax	# xpad, tmp805
	movq	(%rax), %rax	# xpad_317(D)->sv_any, D.12344
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_318].xpv_cur, D.12346
	movq	-824(%rbp), %rax	# xpad, tmp806
	movq	(%rax), %rax	# xpad_317(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_320].xpv_pv, D.12347
	movq	%rax, %rsi	# D.12347,
	movl	$0, %edi	#,
	call	sv_x	#
	movq	%rax, -504(%rbp)	# tmp807, ipad
	.loc 1 415 0
	cmpl	$8, -716(%rbp)	#, realtype
	ja	.L123	#,
.LBB15:
	.loc 1 416 0
	movl	$2, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -496(%rbp)	# tmp808, namesv
	.loc 1 417 0
	movq	-776(%rbp), %rdx	# namelen, tmp809
	movq	-768(%rbp), %rsi	# name, tmp810
	movq	-496(%rbp), %rax	# namesv, tmp811
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp811,
	call	Perl_sv_catpvn_flags	#
	.loc 1 418 0
	movq	-496(%rbp), %rax	# namesv, tmp812
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp812,
	call	Perl_sv_catpvn_flags	#
	.loc 1 419 0
	cmpq	$0, -680(%rbp)	#, realpack
	je	.L124	#,
	.loc 1 420 0
	movq	-784(%rbp), %rax	# retval, tmp813
	movl	$2, %ecx	#,
	movl	$13, %edx	#,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp813,
	call	Perl_sv_catpvn_flags	#
	.loc 1 421 0
	movq	-496(%rbp), %rax	# namesv, tmp814
	movq	(%rax), %rax	# namesv_323->sv_any, D.12344
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_324].xpv_cur, D.12346
	movq	-496(%rbp), %rax	# namesv, tmp815
	movq	(%rax), %rax	# namesv_323->sv_any, D.12344
	movq	(%rax), %rsi	# MEM[(struct XPV *)_326].xpv_pv, D.12347
	movq	-800(%rbp), %r9	# postav, tmp816
	movq	-792(%rbp), %r8	# seenhv, tmp817
	movq	-784(%rbp), %rcx	# retval, tmp818
	movq	-560(%rbp), %rax	# ival, tmp819
	movq	-880(%rbp), %rdi	# sortkeys, tmp820
	movq	%rdi, 112(%rsp)	# tmp820,
	movl	120(%rbp), %edi	# maxdepth, tmp821
	movl	%edi, 104(%rsp)	# tmp821,
	movq	-872(%rbp), %rdi	# bless, tmp822
	movq	%rdi, 96(%rsp)	# tmp822,
	movl	104(%rbp), %edi	# quotekeys, tmp823
	movl	%edi, 88(%rsp)	# tmp823,
	movl	96(%rbp), %edi	# deepcopy, tmp824
	movl	%edi, 80(%rsp)	# tmp824,
	movl	88(%rbp), %edi	# purity, tmp825
	movl	%edi, 72(%rsp)	# tmp825,
	movq	-864(%rbp), %rdi	# toaster, tmp826
	movq	%rdi, 64(%rsp)	# tmp826,
	movq	-856(%rbp), %rdi	# freezer, tmp827
	movq	%rdi, 56(%rsp)	# tmp827,
	movq	-848(%rbp), %rdi	# pair, tmp828
	movq	%rdi, 48(%rsp)	# tmp828,
	movq	-840(%rbp), %rdi	# sep, tmp829
	movq	%rdi, 40(%rsp)	# tmp829,
	movq	-832(%rbp), %rdi	# apad, tmp830
	movq	%rdi, 32(%rsp)	# tmp830,
	movq	-824(%rbp), %rdi	# xpad, tmp831
	movq	%rdi, 24(%rsp)	# tmp831,
	movq	-816(%rbp), %rdi	# pad, tmp832
	movq	%rdi, 16(%rsp)	# tmp832,
	movl	24(%rbp), %edi	# indent, tmp833
	movl	%edi, 8(%rsp)	# tmp833,
	movq	-808(%rbp), %rdi	# levelp, tmp834
	movq	%rdi, (%rsp)	# tmp834,
	movq	%rax, %rdi	# tmp819,
	call	DD_dump	#
	.loc 1 425 0
	movq	-784(%rbp), %rax	# retval, tmp835
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp835,
	call	Perl_sv_catpvn_flags	#
	jmp	.L125	#
.L124:
	.loc 1 428 0
	movq	-784(%rbp), %rax	# retval, tmp836
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp836,
	call	Perl_sv_catpvn_flags	#
	.loc 1 429 0
	movq	-496(%rbp), %rax	# namesv, tmp837
	movq	(%rax), %rax	# namesv_323->sv_any, D.12344
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_335].xpv_cur, D.12346
	movq	-496(%rbp), %rax	# namesv, tmp838
	movq	(%rax), %rax	# namesv_323->sv_any, D.12344
	movq	(%rax), %rsi	# MEM[(struct XPV *)_337].xpv_pv, D.12347
	movq	-800(%rbp), %r9	# postav, tmp839
	movq	-792(%rbp), %r8	# seenhv, tmp840
	movq	-784(%rbp), %rcx	# retval, tmp841
	movq	-560(%rbp), %rax	# ival, tmp842
	movq	-880(%rbp), %rdi	# sortkeys, tmp843
	movq	%rdi, 112(%rsp)	# tmp843,
	movl	120(%rbp), %edi	# maxdepth, tmp844
	movl	%edi, 104(%rsp)	# tmp844,
	movq	-872(%rbp), %rdi	# bless, tmp845
	movq	%rdi, 96(%rsp)	# tmp845,
	movl	104(%rbp), %edi	# quotekeys, tmp846
	movl	%edi, 88(%rsp)	# tmp846,
	movl	96(%rbp), %edi	# deepcopy, tmp847
	movl	%edi, 80(%rsp)	# tmp847,
	movl	88(%rbp), %edi	# purity, tmp848
	movl	%edi, 72(%rsp)	# tmp848,
	movq	-864(%rbp), %rdi	# toaster, tmp849
	movq	%rdi, 64(%rsp)	# tmp849,
	movq	-856(%rbp), %rdi	# freezer, tmp850
	movq	%rdi, 56(%rsp)	# tmp850,
	movq	-848(%rbp), %rdi	# pair, tmp851
	movq	%rdi, 48(%rsp)	# tmp851,
	movq	-840(%rbp), %rdi	# sep, tmp852
	movq	%rdi, 40(%rsp)	# tmp852,
	movq	-832(%rbp), %rdi	# apad, tmp853
	movq	%rdi, 32(%rsp)	# tmp853,
	movq	-824(%rbp), %rdi	# xpad, tmp854
	movq	%rdi, 24(%rsp)	# tmp854,
	movq	-816(%rbp), %rdi	# pad, tmp855
	movq	%rdi, 16(%rsp)	# tmp855,
	movl	24(%rbp), %edi	# indent, tmp856
	movl	%edi, 8(%rsp)	# tmp856,
	movq	-808(%rbp), %rdi	# levelp, tmp857
	movq	%rdi, (%rsp)	# tmp857,
	movq	%rax, %rdi	# tmp842,
	call	DD_dump	#
.L125:
	.loc 1 434 0 discriminator 1
	movq	-496(%rbp), %rax	# namesv, tmp858
	movq	%rax, %rdi	# tmp858,
	call	Perl_sv_free	#
.LBE15:
	jmp	.L126	#
.L123:
	.loc 1 436 0
	cmpl	$13, -716(%rbp)	#, realtype
	jne	.L127	#,
.LBB16:
	.loc 1 437 0
	movl	$2, %esi	#,
	movl	$.LC23, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -488(%rbp)	# tmp859, namesv
	.loc 1 438 0
	movq	-776(%rbp), %rdx	# namelen, tmp860
	movq	-768(%rbp), %rsi	# name, tmp861
	movq	-488(%rbp), %rax	# namesv, tmp862
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp862,
	call	Perl_sv_catpvn_flags	#
	.loc 1 439 0
	movq	-488(%rbp), %rax	# namesv, tmp863
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp863,
	call	Perl_sv_catpvn_flags	#
	.loc 1 440 0
	movq	-784(%rbp), %rax	# retval, tmp864
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp864,
	call	Perl_sv_catpvn_flags	#
	.loc 1 441 0
	movq	-488(%rbp), %rax	# namesv, tmp865
	movq	(%rax), %rax	# namesv_339->sv_any, D.12344
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_340].xpv_cur, D.12346
	movq	-488(%rbp), %rax	# namesv, tmp866
	movq	(%rax), %rax	# namesv_339->sv_any, D.12344
	movq	(%rax), %rsi	# MEM[(struct XPV *)_342].xpv_pv, D.12347
	movq	-800(%rbp), %r9	# postav, tmp867
	movq	-792(%rbp), %r8	# seenhv, tmp868
	movq	-784(%rbp), %rcx	# retval, tmp869
	movq	-560(%rbp), %rax	# ival, tmp870
	movq	-880(%rbp), %rdi	# sortkeys, tmp871
	movq	%rdi, 112(%rsp)	# tmp871,
	movl	120(%rbp), %edi	# maxdepth, tmp872
	movl	%edi, 104(%rsp)	# tmp872,
	movq	-872(%rbp), %rdi	# bless, tmp873
	movq	%rdi, 96(%rsp)	# tmp873,
	movl	104(%rbp), %edi	# quotekeys, tmp874
	movl	%edi, 88(%rsp)	# tmp874,
	movl	96(%rbp), %edi	# deepcopy, tmp875
	movl	%edi, 80(%rsp)	# tmp875,
	movl	88(%rbp), %edi	# purity, tmp876
	movl	%edi, 72(%rsp)	# tmp876,
	movq	-864(%rbp), %rdi	# toaster, tmp877
	movq	%rdi, 64(%rsp)	# tmp877,
	movq	-856(%rbp), %rdi	# freezer, tmp878
	movq	%rdi, 56(%rsp)	# tmp878,
	movq	-848(%rbp), %rdi	# pair, tmp879
	movq	%rdi, 48(%rsp)	# tmp879,
	movq	-840(%rbp), %rdi	# sep, tmp880
	movq	%rdi, 40(%rsp)	# tmp880,
	movq	-832(%rbp), %rdi	# apad, tmp881
	movq	%rdi, 32(%rsp)	# tmp881,
	movq	-824(%rbp), %rdi	# xpad, tmp882
	movq	%rdi, 24(%rsp)	# tmp882,
	movq	-816(%rbp), %rdi	# pad, tmp883
	movq	%rdi, 16(%rsp)	# tmp883,
	movl	24(%rbp), %edi	# indent, tmp884
	movl	%edi, 8(%rsp)	# tmp884,
	movq	-808(%rbp), %rdi	# levelp, tmp885
	movq	%rdi, (%rsp)	# tmp885,
	movq	%rax, %rdi	# tmp870,
	call	DD_dump	#
	.loc 1 445 0
	movq	-488(%rbp), %rax	# namesv, tmp886
	movq	%rax, %rdi	# tmp886,
	call	Perl_sv_free	#
.LBE16:
	jmp	.L126	#
.L127:
	.loc 1 447 0
	cmpl	$10, -716(%rbp)	#, realtype
	jne	.L128	#,
.LBB17:
	.loc 1 449 0
	movl	$0, -736(%rbp)	#, ix
	.loc 1 450 0
	movq	-560(%rbp), %rax	# ival, tmp887
	movq	%rax, %rdi	# tmp887,
	call	Perl_av_len	#
	movl	%eax, -712(%rbp)	# tmp888, ixmax
	.loc 1 452 0
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, -480(%rbp)	# tmp889, ixsv
	.loc 1 454 0
	movq	-776(%rbp), %rax	# namelen, tmp890
	addq	$28, %rax	#, D.12346
	movq	%rax, %rdi	# D.12346,
	call	Perl_safesysmalloc	#
	movq	%rax, -472(%rbp)	# tmp891, iname
	.loc 1 455 0
	movq	-768(%rbp), %rdx	# name, tmp892
	movq	-472(%rbp), %rax	# iname, tmp893
	movq	%rdx, %rsi	# tmp892,
	movq	%rax, %rdi	# tmp893,
	call	strcpy	#
	.loc 1 456 0
	movq	-776(%rbp), %rax	# namelen, tmp894
	movq	%rax, -656(%rbp)	# tmp894, inamelen
	.loc 1 457 0
	movq	-768(%rbp), %rax	# name, tmp895
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$64, %al	#, D.12354
	jne	.L129	#,
	.loc 1 458 0
	movq	-784(%rbp), %rax	# retval, tmp896
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp896,
	call	Perl_sv_catpvn_flags	#
	.loc 1 459 0
	movq	-472(%rbp), %rax	# iname, tmp897
	movb	$36, (%rax)	#, *iname_348
	jmp	.L130	#
.L129:
	.loc 1 462 0
	movq	-784(%rbp), %rax	# retval, tmp898
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp898,
	call	Perl_sv_catpvn_flags	#
	.loc 1 467 0
	cmpq	$0, -776(%rbp)	#, namelen
	je	.L131	#,
	.loc 1 468 0
	movq	-776(%rbp), %rax	# namelen, tmp899
	leaq	-1(%rax), %rdx	#, D.12359
	movq	-768(%rbp), %rax	# name, tmp900
	addq	%rdx, %rax	# D.12359, D.12347
	movzbl	(%rax), %eax	# *_352, D.12354
	cmpb	$93, %al	#, D.12354
	je	.L131	#,
	.loc 1 468 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# namelen, tmp901
	leaq	-1(%rax), %rdx	#, D.12359
	movq	-768(%rbp), %rax	# name, tmp902
	addq	%rdx, %rax	# D.12359, D.12347
	movzbl	(%rax), %eax	# *_355, D.12354
	cmpb	$125, %al	#, D.12354
	jne	.L132	#,
.L131:
	.loc 1 469 0 is_stmt 1
	cmpq	$4, -776(%rbp)	#, namelen
	jbe	.L130	#,
	.loc 1 470 0
	movq	-768(%rbp), %rax	# name, tmp903
	addq	$1, %rax	#, D.12347
	movzbl	(%rax), %eax	# *_357, D.12354
	cmpb	$123, %al	#, D.12354
	je	.L132	#,
	.loc 1 471 0
	movq	-768(%rbp), %rax	# name, tmp904
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$92, %al	#, D.12354
	jne	.L130	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# name, tmp905
	addq	$2, %rax	#, D.12347
	movzbl	(%rax), %eax	# *_360, D.12354
	cmpb	$123, %al	#, D.12354
	jne	.L130	#,
.L132:
	.loc 1 473 0 is_stmt 1
	movq	-656(%rbp), %rax	# inamelen, inamelen.70
	leaq	1(%rax), %rdx	#, tmp906
	movq	%rdx, -656(%rbp)	# tmp906, inamelen
	movq	-472(%rbp), %rdx	# iname, tmp907
	addq	%rdx, %rax	# tmp907, D.12347
	movb	$45, (%rax)	#, *_364
	movq	-656(%rbp), %rax	# inamelen, inamelen.71
	leaq	1(%rax), %rdx	#, tmp908
	movq	%rdx, -656(%rbp)	# tmp908, inamelen
	movq	-472(%rbp), %rdx	# iname, tmp909
	addq	%rdx, %rax	# tmp909, D.12347
	movb	$62, (%rax)	#, *_367
	.loc 1 474 0
	movq	-656(%rbp), %rax	# inamelen, tmp910
	movq	-472(%rbp), %rdx	# iname, tmp911
	addq	%rdx, %rax	# tmp911, D.12347
	movb	$0, (%rax)	#, *_368
.L130:
	.loc 1 477 0
	movq	-472(%rbp), %rax	# iname, tmp912
	movzbl	(%rax), %eax	# *iname_348, D.12354
	cmpb	$42, %al	#, D.12354
	jne	.L133	#,
	.loc 1 477 0 is_stmt 0 discriminator 1
	movq	-656(%rbp), %rax	# inamelen, tmp913
	leaq	-1(%rax), %rdx	#, D.12359
	movq	-472(%rbp), %rax	# iname, tmp914
	addq	%rdx, %rax	# D.12359, D.12347
	movzbl	(%rax), %eax	# *_371, D.12354
	cmpb	$125, %al	#, D.12354
	jne	.L133	#,
	cmpq	$7, -656(%rbp)	#, inamelen
	jbe	.L133	#,
	.loc 1 478 0 is_stmt 1 discriminator 1
	movq	-656(%rbp), %rax	# inamelen, tmp915
	leaq	-8(%rax), %rdx	#, D.12359
	movq	-472(%rbp), %rax	# iname, tmp916
	addq	%rdx, %rax	# D.12359, D.12347
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# D.12347,
	call	Perl_instr	#
	.loc 1 477 0 discriminator 1
	testq	%rax, %rax	# D.12347
	jne	.L134	#,
	.loc 1 479 0
	movq	-656(%rbp), %rax	# inamelen, tmp917
	leaq	-7(%rax), %rdx	#, D.12359
	movq	-472(%rbp), %rax	# iname, tmp918
	addq	%rdx, %rax	# D.12359, D.12347
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# D.12347,
	call	Perl_instr	#
	.loc 1 478 0
	testq	%rax, %rax	# D.12347
	jne	.L134	#,
	.loc 1 480 0
	movq	-656(%rbp), %rax	# inamelen, tmp919
	leaq	-6(%rax), %rdx	#, D.12359
	movq	-472(%rbp), %rax	# iname, tmp920
	addq	%rdx, %rax	# D.12359, D.12347
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# D.12347,
	call	Perl_instr	#
	.loc 1 479 0
	testq	%rax, %rax	# D.12347
	je	.L133	#,
.L134:
	.loc 1 481 0
	movq	-656(%rbp), %rax	# inamelen, inamelen.72
	leaq	1(%rax), %rdx	#, tmp921
	movq	%rdx, -656(%rbp)	# tmp921, inamelen
	movq	-472(%rbp), %rdx	# iname, tmp922
	addq	%rdx, %rax	# tmp922, D.12347
	movb	$45, (%rax)	#, *_384
	movq	-656(%rbp), %rax	# inamelen, inamelen.73
	leaq	1(%rax), %rdx	#, tmp923
	movq	%rdx, -656(%rbp)	# tmp923, inamelen
	movq	-472(%rbp), %rdx	# iname, tmp924
	addq	%rdx, %rax	# tmp924, D.12347
	movb	$62, (%rax)	#, *_387
.L133:
	.loc 1 483 0
	movq	-656(%rbp), %rax	# inamelen, inamelen.74
	leaq	1(%rax), %rdx	#, tmp925
	movq	%rdx, -656(%rbp)	# tmp925, inamelen
	movq	-472(%rbp), %rdx	# iname, tmp926
	addq	%rdx, %rax	# tmp926, D.12347
	movb	$91, (%rax)	#, *_390
	movq	-656(%rbp), %rax	# inamelen, tmp927
	movq	-472(%rbp), %rdx	# iname, tmp928
	addq	%rdx, %rax	# tmp928, D.12347
	movb	$0, (%rax)	#, *_391
	.loc 1 484 0
	movq	-840(%rbp), %rax	# sep, tmp929
	movq	%rax, %rdi	# tmp929,
	call	Perl_newSVsv	#
	movq	%rax, -464(%rbp)	# tmp930, totpad
	.loc 1 485 0
	movq	-816(%rbp), %rcx	# pad, tmp931
	movq	-464(%rbp), %rax	# totpad, tmp932
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp931,
	movq	%rax, %rdi	# tmp932,
	call	Perl_sv_catsv_flags	#
	.loc 1 486 0
	movq	-832(%rbp), %rcx	# apad, tmp933
	movq	-464(%rbp), %rax	# totpad, tmp934
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp933,
	movq	%rax, %rdi	# tmp934,
	call	Perl_sv_catsv_flags	#
	.loc 1 488 0
	movl	$0, -736(%rbp)	#, ix
	jmp	.L135	#
.L140:
.LBB18:
	.loc 1 491 0
	movl	-736(%rbp), %ecx	# ix, tmp935
	movq	-560(%rbp), %rax	# ival, tmp936
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp935,
	movq	%rax, %rdi	# tmp936,
	call	Perl_av_fetch	#
	movq	%rax, -552(%rbp)	# tmp937, svp
	.loc 1 492 0
	cmpq	$0, -552(%rbp)	#, svp
	je	.L136	#,
	.loc 1 493 0
	movq	-552(%rbp), %rax	# svp, tmp938
	movq	(%rax), %rax	# *svp_394, tmp939
	movq	%rax, -616(%rbp)	# tmp939, elem
	jmp	.L137	#
.L136:
	.loc 1 495 0
	movq	$PL_sv_undef, -616(%rbp)	#, elem
.L137:
	.loc 1 497 0
	movq	-656(%rbp), %rax	# inamelen, tmp940
	movq	%rax, -456(%rbp)	# tmp940, ilen
	.loc 1 498 0
	movl	-736(%rbp), %eax	# ix, tmp941
	movslq	%eax, %rdx	# tmp941, D.12350
	movq	-480(%rbp), %rax	# ixsv, tmp942
	movq	%rdx, %rsi	# D.12350,
	movq	%rax, %rdi	# tmp942,
	call	Perl_sv_setiv	#
	.loc 1 499 0
	movl	-736(%rbp), %eax	# ix, tmp943
	cltq
	movq	-456(%rbp), %rdx	# ilen, tmp944
	movq	-472(%rbp), %rcx	# iname, tmp945
	addq	%rdx, %rcx	# tmp944, D.12347
	movq	%rax, %rdx	# D.12350,
	movl	$.LC29, %esi	#,
	movq	%rcx, %rdi	# D.12347,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 500 0
	movq	-472(%rbp), %rax	# iname, tmp946
	movq	%rax, %rdi	# tmp946,
	call	strlen	#
	movq	%rax, -456(%rbp)	# tmp947, ilen
	.loc 1 501 0
	movq	-456(%rbp), %rax	# ilen, ilen.75
	leaq	1(%rax), %rdx	#, tmp948
	movq	%rdx, -456(%rbp)	# tmp948, ilen
	movq	-472(%rbp), %rdx	# iname, tmp949
	addq	%rdx, %rax	# tmp949, D.12347
	movb	$93, (%rax)	#, *_404
	movq	-456(%rbp), %rax	# ilen, tmp950
	movq	-472(%rbp), %rdx	# iname, tmp951
	addq	%rdx, %rax	# tmp951, D.12347
	movb	$0, (%rax)	#, *_405
	.loc 1 502 0
	cmpl	$2, 24(%rbp)	#, indent
	jle	.L138	#,
	.loc 1 503 0
	movq	-464(%rbp), %rcx	# totpad, tmp952
	movq	-784(%rbp), %rax	# retval, tmp953
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp952,
	movq	%rax, %rdi	# tmp953,
	call	Perl_sv_catsv_flags	#
	.loc 1 504 0
	movq	-504(%rbp), %rcx	# ipad, tmp954
	movq	-784(%rbp), %rax	# retval, tmp955
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp954,
	movq	%rax, %rdi	# tmp955,
	call	Perl_sv_catsv_flags	#
	.loc 1 505 0
	movq	-784(%rbp), %rax	# retval, tmp956
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp956,
	call	Perl_sv_catpvn_flags	#
	.loc 1 506 0
	movq	-480(%rbp), %rcx	# ixsv, tmp957
	movq	-784(%rbp), %rax	# retval, tmp958
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp957,
	movq	%rax, %rdi	# tmp958,
	call	Perl_sv_catsv_flags	#
.L138:
	.loc 1 508 0
	movq	-464(%rbp), %rcx	# totpad, tmp959
	movq	-784(%rbp), %rax	# retval, tmp960
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp959,
	movq	%rax, %rdi	# tmp960,
	call	Perl_sv_catsv_flags	#
	.loc 1 509 0
	movq	-504(%rbp), %rcx	# ipad, tmp961
	movq	-784(%rbp), %rax	# retval, tmp962
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp961,
	movq	%rax, %rdi	# tmp962,
	call	Perl_sv_catsv_flags	#
	.loc 1 510 0
	movq	-800(%rbp), %r9	# postav, tmp963
	movq	-792(%rbp), %r8	# seenhv, tmp964
	movq	-784(%rbp), %rcx	# retval, tmp965
	movq	-456(%rbp), %rdx	# ilen, tmp966
	movq	-472(%rbp), %rsi	# iname, tmp967
	movq	-616(%rbp), %rax	# elem, tmp968
	movq	-880(%rbp), %rdi	# sortkeys, tmp969
	movq	%rdi, 112(%rsp)	# tmp969,
	movl	120(%rbp), %edi	# maxdepth, tmp970
	movl	%edi, 104(%rsp)	# tmp970,
	movq	-872(%rbp), %rdi	# bless, tmp971
	movq	%rdi, 96(%rsp)	# tmp971,
	movl	104(%rbp), %edi	# quotekeys, tmp972
	movl	%edi, 88(%rsp)	# tmp972,
	movl	96(%rbp), %edi	# deepcopy, tmp973
	movl	%edi, 80(%rsp)	# tmp973,
	movl	88(%rbp), %edi	# purity, tmp974
	movl	%edi, 72(%rsp)	# tmp974,
	movq	-864(%rbp), %rdi	# toaster, tmp975
	movq	%rdi, 64(%rsp)	# tmp975,
	movq	-856(%rbp), %rdi	# freezer, tmp976
	movq	%rdi, 56(%rsp)	# tmp976,
	movq	-848(%rbp), %rdi	# pair, tmp977
	movq	%rdi, 48(%rsp)	# tmp977,
	movq	-840(%rbp), %rdi	# sep, tmp978
	movq	%rdi, 40(%rsp)	# tmp978,
	movq	-832(%rbp), %rdi	# apad, tmp979
	movq	%rdi, 32(%rsp)	# tmp979,
	movq	-824(%rbp), %rdi	# xpad, tmp980
	movq	%rdi, 24(%rsp)	# tmp980,
	movq	-816(%rbp), %rdi	# pad, tmp981
	movq	%rdi, 16(%rsp)	# tmp981,
	movl	24(%rbp), %edi	# indent, tmp982
	movl	%edi, 8(%rsp)	# tmp982,
	movq	-808(%rbp), %rdi	# levelp, tmp983
	movq	%rdi, (%rsp)	# tmp983,
	movq	%rax, %rdi	# tmp968,
	call	DD_dump	#
	.loc 1 514 0
	movl	-736(%rbp), %eax	# ix, tmp984
	cmpl	-712(%rbp), %eax	# ixmax, tmp984
	jge	.L139	#,
	.loc 1 515 0
	movq	-784(%rbp), %rax	# retval, tmp985
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp985,
	call	Perl_sv_catpvn_flags	#
.L139:
.LBE18:
	.loc 1 488 0
	addl	$1, -736(%rbp)	#, ix
.L135:
	.loc 1 488 0 is_stmt 0 discriminator 1
	movl	-736(%rbp), %eax	# ix, tmp986
	cmpl	-712(%rbp), %eax	# ixmax, tmp986
	jle	.L140	#,
	.loc 1 517 0 is_stmt 1
	cmpl	$0, -712(%rbp)	#, ixmax
	js	.L141	#,
.LBB19:
	.loc 1 518 0
	movq	-808(%rbp), %rax	# levelp, tmp987
	movl	(%rax), %eax	# *levelp_214(D), D.12351
	leal	-1(%rax), %ecx	#, D.12351
	movq	-824(%rbp), %rax	# xpad, tmp988
	movq	(%rax), %rax	# xpad_317(D)->sv_any, D.12344
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_409].xpv_cur, D.12346
	movq	-824(%rbp), %rax	# xpad, tmp989
	movq	(%rax), %rax	# xpad_317(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_411].xpv_pv, D.12347
	movq	%rax, %rsi	# D.12347,
	movl	$0, %edi	#,
	call	sv_x	#
	movq	%rax, -448(%rbp)	# tmp990, opad
	.loc 1 519 0
	movq	-464(%rbp), %rcx	# totpad, tmp991
	movq	-784(%rbp), %rax	# retval, tmp992
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp991,
	movq	%rax, %rdi	# tmp992,
	call	Perl_sv_catsv_flags	#
	.loc 1 520 0
	movq	-448(%rbp), %rcx	# opad, tmp993
	movq	-784(%rbp), %rax	# retval, tmp994
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp993,
	movq	%rax, %rdi	# tmp994,
	call	Perl_sv_catsv_flags	#
	.loc 1 521 0
	movq	-448(%rbp), %rax	# opad, tmp995
	movq	%rax, %rdi	# tmp995,
	call	Perl_sv_free	#
.L141:
.LBE19:
	.loc 1 523 0
	movq	-768(%rbp), %rax	# name, tmp996
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$64, %al	#, D.12354
	jne	.L142	#,
	.loc 1 524 0
	movq	-784(%rbp), %rax	# retval, tmp997
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp997,
	call	Perl_sv_catpvn_flags	#
	jmp	.L143	#
.L142:
	.loc 1 526 0
	movq	-784(%rbp), %rax	# retval, tmp998
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp998,
	call	Perl_sv_catpvn_flags	#
.L143:
	.loc 1 527 0 discriminator 1
	movq	-480(%rbp), %rax	# ixsv, tmp999
	movq	%rax, %rdi	# tmp999,
	call	Perl_sv_free	#
	.loc 1 528 0 discriminator 1
	movq	-464(%rbp), %rax	# totpad, tmp1000
	movq	%rax, %rdi	# tmp1000,
	call	Perl_sv_free	#
	.loc 1 529 0 discriminator 1
	movq	-472(%rbp), %rax	# iname, tmp1001
	movq	%rax, %rdi	# tmp1001,
	call	Perl_safesysfree	#
.LBE17:
	jmp	.L126	#
.L128:
	.loc 1 531 0
	cmpl	$11, -716(%rbp)	#, realtype
	jne	.L144	#,
.LBB20:
	.loc 1 538 0
	movq	$0, -592(%rbp)	#, keys
	.loc 1 540 0
	movq	-776(%rbp), %rdx	# namelen, tmp1002
	movq	-768(%rbp), %rax	# name, tmp1003
	movq	%rdx, %rsi	# tmp1002,
	movq	%rax, %rdi	# tmp1003,
	call	Perl_newSVpvn	#
	movq	%rax, -440(%rbp)	# tmp1004, iname
	.loc 1 541 0
	movq	-768(%rbp), %rax	# name, tmp1005
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$37, %al	#, D.12354
	jne	.L145	#,
	.loc 1 542 0
	movq	-784(%rbp), %rax	# retval, tmp1006
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp1006,
	call	Perl_sv_catpvn_flags	#
	.loc 1 543 0
	movq	-440(%rbp), %rax	# iname, tmp1007
	movq	(%rax), %rax	# iname_416->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_418].xpv_pv, D.12347
	movb	$36, (%rax)	#, *_419
	jmp	.L146	#
.L145:
	.loc 1 546 0
	movq	-784(%rbp), %rax	# retval, tmp1008
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp1008,
	call	Perl_sv_catpvn_flags	#
	.loc 1 548 0
	cmpq	$0, -776(%rbp)	#, namelen
	je	.L147	#,
	.loc 1 549 0
	movq	-776(%rbp), %rax	# namelen, tmp1009
	leaq	-1(%rax), %rdx	#, D.12359
	movq	-768(%rbp), %rax	# name, tmp1010
	addq	%rdx, %rax	# D.12359, D.12347
	movzbl	(%rax), %eax	# *_421, D.12354
	cmpb	$93, %al	#, D.12354
	je	.L147	#,
	.loc 1 549 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# namelen, tmp1011
	leaq	-1(%rax), %rdx	#, D.12359
	movq	-768(%rbp), %rax	# name, tmp1012
	addq	%rdx, %rax	# D.12359, D.12347
	movzbl	(%rax), %eax	# *_424, D.12354
	cmpb	$125, %al	#, D.12354
	jne	.L148	#,
.L147:
	.loc 1 550 0 is_stmt 1
	cmpq	$4, -776(%rbp)	#, namelen
	jbe	.L146	#,
	.loc 1 551 0
	movq	-768(%rbp), %rax	# name, tmp1013
	addq	$1, %rax	#, D.12347
	movzbl	(%rax), %eax	# *_426, D.12354
	cmpb	$123, %al	#, D.12354
	je	.L148	#,
	.loc 1 552 0
	movq	-768(%rbp), %rax	# name, tmp1014
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$92, %al	#, D.12354
	jne	.L146	#,
	.loc 1 552 0 is_stmt 0 discriminator 1
	movq	-768(%rbp), %rax	# name, tmp1015
	addq	$2, %rax	#, D.12347
	movzbl	(%rax), %eax	# *_429, D.12354
	cmpb	$123, %al	#, D.12354
	jne	.L146	#,
.L148:
	.loc 1 554 0 is_stmt 1
	movq	-440(%rbp), %rax	# iname, tmp1016
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp1016,
	call	Perl_sv_catpvn_flags	#
.L146:
	.loc 1 557 0
	movq	-768(%rbp), %rax	# name, tmp1017
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$42, %al	#, D.12354
	jne	.L149	#,
	.loc 1 557 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# namelen, tmp1018
	leaq	-1(%rax), %rdx	#, D.12359
	movq	-768(%rbp), %rax	# name, tmp1019
	addq	%rdx, %rax	# D.12359, D.12347
	movzbl	(%rax), %eax	# *_433, D.12354
	cmpb	$125, %al	#, D.12354
	jne	.L149	#,
	cmpq	$7, -776(%rbp)	#, namelen
	jbe	.L149	#,
	.loc 1 558 0 is_stmt 1 discriminator 1
	movq	-776(%rbp), %rax	# namelen, tmp1020
	leaq	-8(%rax), %rdx	#, D.12359
	movq	-768(%rbp), %rax	# name, tmp1021
	addq	%rdx, %rax	# D.12359, D.12347
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# D.12347,
	call	Perl_instr	#
	.loc 1 557 0 discriminator 1
	testq	%rax, %rax	# D.12347
	jne	.L150	#,
	.loc 1 559 0
	movq	-776(%rbp), %rax	# namelen, tmp1022
	leaq	-7(%rax), %rdx	#, D.12359
	movq	-768(%rbp), %rax	# name, tmp1023
	addq	%rdx, %rax	# D.12359, D.12347
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# D.12347,
	call	Perl_instr	#
	.loc 1 558 0
	testq	%rax, %rax	# D.12347
	jne	.L150	#,
	.loc 1 560 0
	movq	-776(%rbp), %rax	# namelen, tmp1024
	leaq	-6(%rax), %rdx	#, D.12359
	movq	-768(%rbp), %rax	# name, tmp1025
	addq	%rdx, %rax	# D.12359, D.12347
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# D.12347,
	call	Perl_instr	#
	.loc 1 559 0
	testq	%rax, %rax	# D.12347
	je	.L149	#,
.L150:
	.loc 1 561 0
	movq	-440(%rbp), %rax	# iname, tmp1026
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp1026,
	call	Perl_sv_catpvn_flags	#
.L149:
	.loc 1 563 0
	movq	-440(%rbp), %rax	# iname, tmp1027
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp1027,
	call	Perl_sv_catpvn_flags	#
	.loc 1 564 0
	movq	-840(%rbp), %rax	# sep, tmp1028
	movq	%rax, %rdi	# tmp1028,
	call	Perl_newSVsv	#
	movq	%rax, -432(%rbp)	# tmp1029, totpad
	.loc 1 565 0
	movq	-816(%rbp), %rcx	# pad, tmp1030
	movq	-432(%rbp), %rax	# totpad, tmp1031
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1030,
	movq	%rax, %rdi	# tmp1031,
	call	Perl_sv_catsv_flags	#
	.loc 1 566 0
	movq	-832(%rbp), %rcx	# apad, tmp1032
	movq	-432(%rbp), %rax	# totpad, tmp1033
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1032,
	movq	%rax, %rdi	# tmp1033,
	call	Perl_sv_catsv_flags	#
	.loc 1 569 0
	cmpq	$0, -880(%rbp)	#, sortkeys
	je	.L151	#,
	.loc 1 570 0
	cmpq	$PL_sv_yes, -880(%rbp)	#, sortkeys
	jne	.L152	#,
	.loc 1 574 0
	call	Perl_newAV	#
	movq	%rax, -592(%rbp)	# tmp1034, keys
	.loc 1 575 0
	movq	-560(%rbp), %rax	# ival, tmp1035
	movq	%rax, %rdi	# tmp1035,
	call	Perl_hv_iterinit	#
	.loc 1 576 0
	jmp	.L153	#
.L156:
	.loc 1 577 0
	movq	-424(%rbp), %rax	# entry, tmp1036
	movq	%rax, %rdi	# tmp1036,
	call	Perl_hv_iterkeysv	#
	movq	%rax, -544(%rbp)	# tmp1037, sv
	.loc 1 578 0
	movq	-544(%rbp), %rax	# sv, tmp1038
	movq	%rax, PL_Sv(%rip)	# tmp1038, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.77
	testq	%rax, %rax	# PL_Sv.77
	je	.L155	#,
	.loc 1 578 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.78
	movl	8(%rax), %edx	# PL_Sv.78_449->sv_refcnt, D.12343
	addl	$1, %edx	#, D.12343
	movl	%edx, 8(%rax)	# D.12343, PL_Sv.78_449->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.78_449->sv_refcnt, D.12343
	testl	%eax, %eax	# D.12343
	je	.L155	#,
	.loc 1 578 0
	nop
.L155:
	.loc 1 579 0 is_stmt 1
	movq	-544(%rbp), %rdx	# sv, tmp1039
	movq	-592(%rbp), %rax	# keys, tmp1040
	movq	%rdx, %rsi	# tmp1039,
	movq	%rax, %rdi	# tmp1040,
	call	Perl_av_push	#
.L153:
	.loc 1 576 0 discriminator 1
	movq	-560(%rbp), %rax	# ival, tmp1041
	movq	%rax, %rdi	# tmp1041,
	call	Perl_hv_iternext	#
	movq	%rax, -424(%rbp)	# tmp1042, entry
	cmpq	$0, -424(%rbp)	#, entry
	jne	.L156	#,
	.loc 1 587 0
	movq	-592(%rbp), %rax	# keys, tmp1043
	movq	%rax, %rdi	# tmp1043,
	call	Perl_av_len	#
	addl	$1, %eax	#, D.12351
	.loc 1 586 0
	movslq	%eax, %rcx	# D.12351, D.12346
	movq	-592(%rbp), %rax	# keys, tmp1044
	movq	(%rax), %rax	# keys_445->sv_any, D.12360
	movq	(%rax), %rax	# _458->xav_array, D.12347
	movl	$Perl_sv_cmp, %edx	#,
	movq	%rcx, %rsi	# D.12346,
	movq	%rax, %rdi	# D.12347,
	call	Perl_sortsv	#
.L152:
	.loc 1 592 0
	cmpq	$PL_sv_yes, -880(%rbp)	#, sortkeys
	je	.L157	#,
.LBB21:
	.loc 1 593 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	call	Perl_push_scope	#
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.79
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.79, PL_tmps_floor
.LBB22:
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.80
	addq	$4, %rax	#, PL_markstack_ptr.81
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.81, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.82
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.83
	cmpq	%rax, %rdx	# PL_markstack_max.83, PL_markstack_ptr.82
	jne	.L158	#,
	.loc 1 593 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L158:
	.loc 1 593 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.84
	movq	%rbx, %rcx	# sp, sp.85
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.86
	subq	%rdx, %rcx	# PL_stack_base.87, D.12350
	movq	%rcx, %rdx	# D.12350, D.12350
	sarq	$3, %rdx	#, tmp1045
	movl	%edx, (%rax)	# D.12351, *PL_markstack_ptr.84_466
.LBE22:
.LBB23:
	.loc 1 594 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.88
	movq	%rax, %rdx	# PL_stack_max.88, PL_stack_max.89
	movq	%rbx, %rax	# sp, sp.90
	subq	%rax, %rdx	# sp.90, D.12350
	movq	%rdx, %rax	# D.12350, D.12350
	cmpq	$7, %rax	#, D.12350
	jg	.L159	#,
	.loc 1 594 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L159:
	.loc 1 594 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-560(%rbp), %rax	# ival, tmp1046
	movq	%rax, %rdi	# tmp1046,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.12345,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12345, *sp_479
.LBE23:
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 595 0 is_stmt 1 discriminator 2
	movq	-880(%rbp), %rax	# sortkeys, tmp1047
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp1047,
	call	Perl_call_sv	#
	movl	%eax, -740(%rbp)	# D.12351, i
	.loc 1 596 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 597 0 discriminator 2
	cmpl	$0, -740(%rbp)	#, i
	je	.L160	#,
	.loc 1 598 0
	movq	%rbx, %rax	# sp, sp.91
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.91_486, tmp1048
	movq	%rax, -544(%rbp)	# tmp1048, sv
	.loc 1 599 0
	movq	-544(%rbp), %rax	# sv, tmp1049
	movl	12(%rax), %eax	# sv_488->sv_flags, D.12343
	andl	$524288, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L160	#,
	.loc 1 599 0 is_stmt 0 discriminator 1
	movq	-544(%rbp), %rax	# sv, tmp1050
	movq	(%rax), %rax	# sv_488->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XRV *)_491].xrv_rv, D.12345
	movl	12(%rax), %eax	# _492->sv_flags, D.12343
	movzbl	%al, %eax	# D.12343, D.12343
	cmpl	$10, %eax	#, D.12343
	jne	.L160	#,
	.loc 1 600 0 is_stmt 1
	movq	-544(%rbp), %rax	# sv, tmp1051
	movq	(%rax), %rax	# sv_488->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XRV *)_495].xrv_rv, PL_Sv.92
	movq	%rax, PL_Sv(%rip)	# PL_Sv.92, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.94
	testq	%rax, %rax	# PL_Sv.94
	je	.L162	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.95
	movl	8(%rax), %edx	# PL_Sv.95_498->sv_refcnt, D.12343
	addl	$1, %edx	#, D.12343
	movl	%edx, 8(%rax)	# D.12343, PL_Sv.95_498->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.95_498->sv_refcnt, D.12343
	testl	%eax, %eax	# D.12343
	je	.L162	#,
	.loc 1 600 0
	nop
.L162:
	.loc 1 600 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp1052
	movq	%rax, -592(%rbp)	# tmp1052, keys
.L160:
	.loc 1 602 0 is_stmt 1
	cmpq	$0, -592(%rbp)	#, keys
	jne	.L163	#,
	.loc 1 603 0
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L163:
	.loc 1 604 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.96
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.97
	cmpl	%eax, %edx	# PL_tmps_floor.97, PL_tmps_ix.96
	jle	.L164	#,
	.loc 1 604 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L164:
	.loc 1 604 0 discriminator 2
	call	Perl_pop_scope	#
.L157:
.LBE21:
	.loc 1 606 0 is_stmt 1
	cmpq	$0, -592(%rbp)	#, keys
	je	.L166	#,
	.loc 1 607 0
	movq	-592(%rbp), %rax	# keys, tmp1053
	movq	%rax, %rdi	# tmp1053,
	call	Perl_sv_2mortal	#
	jmp	.L166	#
.L151:
	.loc 1 610 0
	movq	-560(%rbp), %rax	# ival, tmp1054
	movq	%rax, %rdi	# tmp1054,
	call	Perl_hv_iterinit	#
.L166:
	.loc 1 613 0
	movl	$0, -740(%rbp)	#, i
.L196:
.LBB24:
	.loc 1 615 0
	movq	$0, -576(%rbp)	#, nkey_buffer
	.loc 1 616 0
	movl	$0, -708(%rbp)	#, nticks
	.loc 1 620 0
	movb	$0, -745(%rbp)	#, do_utf8
	.loc 1 622 0
	cmpq	$0, -880(%rbp)	#, sortkeys
	je	.L167	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	cmpq	$0, -592(%rbp)	#, keys
	je	.L168	#,
	movl	-740(%rbp), %ebx	# i, i.98
	movq	-592(%rbp), %rax	# keys, tmp1055
	movq	%rax, %rdi	# tmp1055,
	call	Perl_av_len	#
	cmpl	%eax, %ebx	# D.12351, i.98
	jg	.L168	#,
.L167:
	.loc 1 622 0 discriminator 2
	movq	-560(%rbp), %rax	# ival, tmp1056
	movq	%rax, %rdi	# tmp1056,
	call	Perl_hv_iternext	#
	movq	%rax, -424(%rbp)	# tmp1057, entry
	cmpq	$0, -424(%rbp)	#, entry
	je	.L168	#,
	.loc 1 626 0 is_stmt 1
	cmpl	$0, -740(%rbp)	#, i
	je	.L169	#,
	.loc 1 627 0
	movq	-784(%rbp), %rax	# retval, tmp1058
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp1058,
	call	Perl_sv_catpvn_flags	#
.L169:
	.loc 1 629 0
	cmpq	$0, -880(%rbp)	#, sortkeys
	je	.L170	#,
.LBB25:
	.loc 1 631 0
	movl	-740(%rbp), %ecx	# i, i.99
	movq	-592(%rbp), %rax	# keys, tmp1059
	movl	$0, %edx	#,
	movl	%ecx, %esi	# i.99,
	movq	%rax, %rdi	# tmp1059,
	call	Perl_av_fetch	#
	movq	%rax, -552(%rbp)	# tmp1060, svp
	.loc 1 632 0
	cmpq	$0, -552(%rbp)	#, svp
	je	.L171	#,
	.loc 1 632 0 is_stmt 0 discriminator 1
	movq	-552(%rbp), %rax	# svp, tmp1061
	movq	(%rax), %rax	# *svp_515, iftmp.100
	jmp	.L172	#
.L171:
	.loc 1 632 0 discriminator 2
	movl	$PL_sv_undef, %edi	#,
	call	Perl_sv_mortalcopy	#
.L172:
	.loc 1 632 0 discriminator 3
	movq	%rax, -568(%rbp)	# iftmp.100, keysv
	.loc 1 633 0 is_stmt 1 discriminator 3
	movq	-568(%rbp), %rax	# keysv, tmp1062
	movl	12(%rax), %eax	# keysv_518->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L173	#,
	.loc 1 633 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# keysv, tmp1063
	movq	(%rax), %rax	# keysv_518->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_521].xpv_cur, keylen.102
	movq	%rax, -704(%rbp)	# keylen.102, keylen
	movq	-568(%rbp), %rax	# keysv, tmp1064
	movq	(%rax), %rax	# keysv_518->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_523].xpv_pv, iftmp.101
	jmp	.L174	#
.L173:
	.loc 1 633 0 discriminator 2
	leaq	-704(%rbp), %rcx	#, tmp1065
	movq	-568(%rbp), %rax	# keysv, tmp1066
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1065,
	movq	%rax, %rdi	# tmp1066,
	call	Perl_sv_2pv_flags	#
.L174:
	.loc 1 633 0 discriminator 3
	movq	%rax, -416(%rbp)	# iftmp.101, key
	.loc 1 635 0 is_stmt 1 discriminator 3
	movq	-568(%rbp), %rax	# keysv, tmp1067
	movl	12(%rax), %eax	# keysv_518->sv_flags, D.12343
	andl	$536870912, %eax	#, D.12343
	.loc 1 634 0 discriminator 3
	testl	%eax, %eax	# D.12343
	je	.L175	#,
	.loc 1 635 0
	movq	-704(%rbp), %rax	# keylen, keylen.104
	.loc 1 634 0
	negl	%eax	# iftmp.103
	jmp	.L176	#
.L175:
	.loc 1 634 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# keylen, keylen.105
.L176:
	.loc 1 634 0 discriminator 2
	movq	-416(%rbp), %rsi	# key, tmp1068
	movq	-560(%rbp), %rdi	# ival, tmp1069
	movl	$0, %ecx	#,
	movl	%eax, %edx	# iftmp.103,
	call	Perl_hv_fetch	#
	movq	%rax, -552(%rbp)	# tmp1070, svp
	.loc 1 636 0 is_stmt 1 discriminator 2
	cmpq	$0, -552(%rbp)	#, svp
	je	.L177	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	movq	-552(%rbp), %rax	# svp, tmp1071
	movq	(%rax), %rax	# *svp_534, iftmp.106
	jmp	.L178	#
.L177:
	.loc 1 636 0 discriminator 2
	movl	$PL_sv_undef, %edi	#,
	call	Perl_sv_mortalcopy	#
.L178:
	.loc 1 636 0 discriminator 1
	movq	%rax, -600(%rbp)	# iftmp.106, hval
.LBE25:
	jmp	.L179	#
.L170:
	.loc 1 639 0 is_stmt 1
	movq	-424(%rbp), %rax	# entry, tmp1072
	movq	%rax, %rdi	# tmp1072,
	call	Perl_hv_iterkeysv	#
	movq	%rax, -568(%rbp)	# tmp1073, keysv
	.loc 1 640 0
	movq	-424(%rbp), %rdx	# entry, tmp1074
	movq	-560(%rbp), %rax	# ival, tmp1075
	movq	%rdx, %rsi	# tmp1074,
	movq	%rax, %rdi	# tmp1075,
	call	Perl_hv_iterval	#
	movq	%rax, -600(%rbp)	# tmp1076, hval
.L179:
	.loc 1 643 0
	movq	-568(%rbp), %rax	# keysv, tmp1077
	movl	12(%rax), %eax	# keysv_38->sv_flags, D.12343
	andl	$536870912, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L180	#,
	.loc 1 643 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.108
	movzbl	37(%rax), %eax	# PL_curcop.108_542->op_private, D.12361
	movzbl	%al, %eax	# D.12361, D.12351
	andl	$8, %eax	#, D.12351
	testl	%eax, %eax	# D.12351
	jne	.L180	#,
	.loc 1 643 0 discriminator 3
	movl	$1, %eax	#, iftmp.107
	jmp	.L181	#
.L180:
	.loc 1 643 0 discriminator 2
	movl	$0, %eax	#, iftmp.107
.L181:
	.loc 1 643 0 discriminator 4
	movb	%al, -745(%rbp)	# iftmp.107, do_utf8
	.loc 1 644 0 is_stmt 1 discriminator 4
	movq	-568(%rbp), %rax	# keysv, tmp1078
	movl	12(%rax), %eax	# keysv_38->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L182	#,
	.loc 1 644 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# keysv, tmp1079
	movq	(%rax), %rax	# keysv_38->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_551].xpv_cur, keylen.110
	movq	%rax, -704(%rbp)	# keylen.110, keylen
	movq	-568(%rbp), %rax	# keysv, tmp1080
	movq	(%rax), %rax	# keysv_38->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_553].xpv_pv, iftmp.109
	jmp	.L183	#
.L182:
	.loc 1 644 0 discriminator 2
	leaq	-704(%rbp), %rcx	#, tmp1081
	movq	-568(%rbp), %rax	# keysv, tmp1082
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1081,
	movq	%rax, %rdi	# tmp1082,
	call	Perl_sv_2pv_flags	#
.L183:
	.loc 1 644 0 discriminator 3
	movq	%rax, -408(%rbp)	# iftmp.109, key
	.loc 1 645 0 is_stmt 1 discriminator 3
	movq	-704(%rbp), %rax	# keylen, keylen.111
	movl	%eax, -732(%rbp)	# keylen.111, klen
	.loc 1 647 0 discriminator 3
	movq	-432(%rbp), %rcx	# totpad, tmp1083
	movq	-784(%rbp), %rax	# retval, tmp1084
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1083,
	movq	%rax, %rdi	# tmp1084,
	call	Perl_sv_catsv_flags	#
	.loc 1 648 0 discriminator 3
	movq	-504(%rbp), %rcx	# ipad, tmp1085
	movq	-784(%rbp), %rax	# retval, tmp1086
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1085,
	movq	%rax, %rdi	# tmp1086,
	call	Perl_sv_catsv_flags	#
	.loc 1 670 0 discriminator 3
	cmpl	$0, 104(%rbp)	#, quotekeys
	jne	.L184	#,
	.loc 1 670 0 is_stmt 0 discriminator 1
	movq	-408(%rbp), %rax	# key, tmp1087
	movq	%rax, %rdi	# tmp1087,
	call	needs_quote	#
	testl	%eax, %eax	# D.12351
	je	.L185	#,
.L184:
	.loc 1 671 0 is_stmt 1
	cmpb	$0, -745(%rbp)	#, do_utf8
	je	.L186	#,
.LBB26:
	.loc 1 672 0
	movq	-784(%rbp), %rax	# retval, tmp1088
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_563].xpv_cur, tmp1089
	movq	%rax, -400(%rbp)	# tmp1089, ocur
	.loc 1 673 0
	movl	-732(%rbp), %eax	# klen, tmp1090
	movslq	%eax, %rdx	# tmp1090, D.12346
	movq	-408(%rbp), %rcx	# key, tmp1091
	movq	-784(%rbp), %rax	# retval, tmp1092
	movq	%rcx, %rsi	# tmp1091,
	movq	%rax, %rdi	# tmp1092,
	call	esc_q_utf8	#
	movl	%eax, -728(%rbp)	# tmp1093, nlen
	.loc 1 674 0
	movq	-784(%rbp), %rax	# retval, tmp1094
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	(%rax), %rdx	# MEM[(struct XPV *)_567].xpv_pv, D.12347
	movq	-400(%rbp), %rax	# ocur, tmp1098
	addq	%rdx, %rax	# D.12347, tmp1097
	movq	%rax, -584(%rbp)	# tmp1097, nkey
.LBE26:
	.loc 1 671 0
	jmp	.L190	#
.L186:
	.loc 1 677 0
	movl	-732(%rbp), %eax	# klen, tmp1099
	movslq	%eax, %rdx	# tmp1099, D.12346
	movq	-408(%rbp), %rax	# key, tmp1100
	movq	%rdx, %rsi	# D.12346,
	movq	%rax, %rdi	# tmp1100,
	call	num_q	#
	movl	%eax, -708(%rbp)	# tmp1101, nticks
	.loc 1 678 0
	movl	-708(%rbp), %eax	# nticks, tmp1102
	movl	-732(%rbp), %edx	# klen, tmp1103
	addl	%edx, %eax	# tmp1103, D.12351
	addl	$3, %eax	#, D.12351
	cltq
	movq	%rax, %rdi	# D.12346,
	call	Perl_safesysmalloc	#
	movq	%rax, -576(%rbp)	# tmp1104, nkey_buffer
	.loc 1 679 0
	movq	-576(%rbp), %rax	# nkey_buffer, tmp1105
	movq	%rax, -584(%rbp)	# tmp1105, nkey
	.loc 1 680 0
	movq	-584(%rbp), %rax	# nkey, tmp1106
	movb	$39, (%rax)	#, *nkey_576
	.loc 1 681 0
	cmpl	$0, -708(%rbp)	#, nticks
	je	.L188	#,
	.loc 1 682 0
	movl	-732(%rbp), %eax	# klen, tmp1107
	movslq	%eax, %rdx	# tmp1107, D.12346
	movq	-584(%rbp), %rax	# nkey, tmp1108
	leaq	1(%rax), %rcx	#, D.12347
	movq	-408(%rbp), %rax	# key, tmp1109
	movq	%rax, %rsi	# tmp1109,
	movq	%rcx, %rdi	# D.12347,
	call	esc_q	#
	addl	%eax, -732(%rbp)	# D.12351, klen
	jmp	.L189	#
.L188:
	.loc 1 684 0
	movl	-732(%rbp), %eax	# klen, tmp1110
	movslq	%eax, %rdx	# tmp1110, D.12346
	movq	-584(%rbp), %rax	# nkey, tmp1111
	leaq	1(%rax), %rcx	#, D.12347
	movq	-408(%rbp), %rax	# key, tmp1112
	movq	%rax, %rsi	# tmp1112,
	movq	%rcx, %rdi	# D.12347,
	call	memcpy	#
.L189:
	.loc 1 685 0
	addl	$1, -732(%rbp)	#, klen
	movl	-732(%rbp), %eax	# klen, tmp1113
	movslq	%eax, %rdx	# tmp1113, D.12359
	movq	-584(%rbp), %rax	# nkey, tmp1114
	addq	%rdx, %rax	# D.12359, D.12347
	movb	$39, (%rax)	#, *_585
	.loc 1 686 0
	addl	$1, -732(%rbp)	#, klen
	movl	-732(%rbp), %eax	# klen, tmp1115
	movslq	%eax, %rdx	# tmp1115, D.12359
	movq	-584(%rbp), %rax	# nkey, tmp1116
	addq	%rdx, %rax	# D.12359, D.12347
	movb	$0, (%rax)	#, *_588
	.loc 1 687 0
	movl	-732(%rbp), %eax	# klen, tmp1117
	movl	%eax, -728(%rbp)	# tmp1117, nlen
	.loc 1 688 0
	movl	-732(%rbp), %eax	# klen, tmp1118
	movslq	%eax, %rdx	# tmp1118, D.12346
	movq	-584(%rbp), %rsi	# nkey, tmp1119
	movq	-784(%rbp), %rax	# retval, tmp1120
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1120,
	call	Perl_sv_catpvn_flags	#
	.loc 1 671 0
	jmp	.L190	#
.L185:
	.loc 1 692 0
	movq	-408(%rbp), %rax	# key, tmp1121
	movq	%rax, -584(%rbp)	# tmp1121, nkey
	.loc 1 693 0
	movl	-732(%rbp), %eax	# klen, tmp1122
	movl	%eax, -728(%rbp)	# tmp1122, nlen
	.loc 1 694 0
	movl	-732(%rbp), %eax	# klen, tmp1123
	movslq	%eax, %rdx	# tmp1123, D.12346
	movq	-584(%rbp), %rsi	# nkey, tmp1124
	movq	-784(%rbp), %rax	# retval, tmp1125
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1125,
	call	Perl_sv_catpvn_flags	#
.L190:
	.loc 1 696 0
	movq	-440(%rbp), %rax	# iname, tmp1126
	movq	%rax, %rdi	# tmp1126,
	call	Perl_newSVsv	#
	movq	%rax, -392(%rbp)	# tmp1127, sname
	.loc 1 697 0
	movl	-728(%rbp), %eax	# nlen, tmp1128
	movslq	%eax, %rdx	# tmp1128, D.12346
	movq	-584(%rbp), %rsi	# nkey, tmp1129
	movq	-392(%rbp), %rax	# sname, tmp1130
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1130,
	call	Perl_sv_catpvn_flags	#
	.loc 1 698 0
	movq	-392(%rbp), %rax	# sname, tmp1131
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp1131,
	call	Perl_sv_catpvn_flags	#
	.loc 1 700 0
	movq	-848(%rbp), %rcx	# pair, tmp1132
	movq	-784(%rbp), %rax	# retval, tmp1133
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1132,
	movq	%rax, %rdi	# tmp1133,
	call	Perl_sv_catsv_flags	#
	.loc 1 701 0
	cmpl	$1, 24(%rbp)	#, indent
	jle	.L191	#,
.LBB27:
	.loc 1 703 0
	movl	$0, -724(%rbp)	#, elen
	.loc 1 704 0
	movq	-832(%rbp), %rax	# apad, tmp1134
	movq	%rax, %rdi	# tmp1134,
	call	Perl_newSVsv	#
	movq	%rax, -608(%rbp)	# tmp1135, newapad
	.loc 1 705 0
	movl	-732(%rbp), %eax	# klen, tmp1136
	addl	$5, %eax	#, D.12351
	cltq
	movq	%rax, %rdi	# D.12346,
	call	Perl_safesysmalloc	#
	movq	%rax, -384(%rbp)	# tmp1137, extra
	.loc 1 706 0
	jmp	.L192	#
.L193:
	.loc 1 707 0
	movl	-724(%rbp), %eax	# elen, elen.112
	leal	1(%rax), %edx	#, tmp1138
	movl	%edx, -724(%rbp)	# tmp1138, elen
	movslq	%eax, %rdx	# elen.112, D.12359
	movq	-384(%rbp), %rax	# extra, tmp1139
	addq	%rdx, %rax	# D.12359, D.12347
	movb	$32, (%rax)	#, *_602
.L192:
	.loc 1 706 0 discriminator 1
	movl	-732(%rbp), %eax	# klen, tmp1140
	addl	$4, %eax	#, D.12351
	cmpl	-724(%rbp), %eax	# elen, D.12351
	jg	.L193	#,
	.loc 1 708 0
	movl	-724(%rbp), %eax	# elen, tmp1141
	movslq	%eax, %rdx	# tmp1141, D.12359
	movq	-384(%rbp), %rax	# extra, tmp1142
	addq	%rdx, %rax	# D.12359, D.12347
	movb	$0, (%rax)	#, *_604
	.loc 1 709 0
	movl	-724(%rbp), %eax	# elen, tmp1143
	movslq	%eax, %rdx	# tmp1143, D.12346
	movq	-384(%rbp), %rsi	# extra, tmp1144
	movq	-608(%rbp), %rax	# newapad, tmp1145
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1145,
	call	Perl_sv_catpvn_flags	#
	.loc 1 710 0
	movq	-384(%rbp), %rax	# extra, tmp1146
	movq	%rax, %rdi	# tmp1146,
	call	Perl_safesysfree	#
.LBE27:
	jmp	.L194	#
.L191:
	.loc 1 713 0
	movq	-832(%rbp), %rax	# apad, tmp1147
	movq	%rax, -608(%rbp)	# tmp1147, newapad
.L194:
	.loc 1 715 0
	movq	-392(%rbp), %rax	# sname, tmp1148
	movq	(%rax), %rax	# sname_591->sv_any, D.12344
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_607].xpv_cur, D.12346
	movq	-392(%rbp), %rax	# sname, tmp1149
	movq	(%rax), %rax	# sname_591->sv_any, D.12344
	movq	(%rax), %rsi	# MEM[(struct XPV *)_609].xpv_pv, D.12347
	movq	-800(%rbp), %r9	# postav, tmp1150
	movq	-792(%rbp), %r8	# seenhv, tmp1151
	movq	-784(%rbp), %rcx	# retval, tmp1152
	movq	-600(%rbp), %rax	# hval, tmp1153
	movq	-880(%rbp), %rdi	# sortkeys, tmp1154
	movq	%rdi, 112(%rsp)	# tmp1154,
	movl	120(%rbp), %edi	# maxdepth, tmp1155
	movl	%edi, 104(%rsp)	# tmp1155,
	movq	-872(%rbp), %rdi	# bless, tmp1156
	movq	%rdi, 96(%rsp)	# tmp1156,
	movl	104(%rbp), %edi	# quotekeys, tmp1157
	movl	%edi, 88(%rsp)	# tmp1157,
	movl	96(%rbp), %edi	# deepcopy, tmp1158
	movl	%edi, 80(%rsp)	# tmp1158,
	movl	88(%rbp), %edi	# purity, tmp1159
	movl	%edi, 72(%rsp)	# tmp1159,
	movq	-864(%rbp), %rdi	# toaster, tmp1160
	movq	%rdi, 64(%rsp)	# tmp1160,
	movq	-856(%rbp), %rdi	# freezer, tmp1161
	movq	%rdi, 56(%rsp)	# tmp1161,
	movq	-848(%rbp), %rdi	# pair, tmp1162
	movq	%rdi, 48(%rsp)	# tmp1162,
	movq	-840(%rbp), %rdi	# sep, tmp1163
	movq	%rdi, 40(%rsp)	# tmp1163,
	movq	-608(%rbp), %rdi	# newapad, tmp1164
	movq	%rdi, 32(%rsp)	# tmp1164,
	movq	-824(%rbp), %rdi	# xpad, tmp1165
	movq	%rdi, 24(%rsp)	# tmp1165,
	movq	-816(%rbp), %rdi	# pad, tmp1166
	movq	%rdi, 16(%rsp)	# tmp1166,
	movl	24(%rbp), %edi	# indent, tmp1167
	movl	%edi, 8(%rsp)	# tmp1167,
	movq	-808(%rbp), %rdi	# levelp, tmp1168
	movq	%rdi, (%rsp)	# tmp1168,
	movq	%rax, %rdi	# tmp1153,
	call	DD_dump	#
	.loc 1 719 0
	movq	-392(%rbp), %rax	# sname, tmp1169
	movq	%rax, %rdi	# tmp1169,
	call	Perl_sv_free	#
	.loc 1 720 0
	movq	-576(%rbp), %rax	# nkey_buffer, tmp1170
	movq	%rax, %rdi	# tmp1170,
	call	Perl_safesysfree	#
	.loc 1 721 0
	cmpl	$1, 24(%rbp)	#, indent
	jle	.L195	#,
	.loc 1 722 0
	movq	-608(%rbp), %rax	# newapad, tmp1171
	movq	%rax, %rdi	# tmp1171,
	call	Perl_sv_free	#
.L195:
.LBE24:
	.loc 1 613 0
	addl	$1, -740(%rbp)	#, i
	.loc 1 723 0
	jmp	.L196	#
.L168:
	.loc 1 724 0
	cmpl	$0, -740(%rbp)	#, i
	je	.L197	#,
.LBB28:
	.loc 1 725 0
	movq	-808(%rbp), %rax	# levelp, tmp1172
	movl	(%rax), %eax	# *levelp_214(D), D.12351
	leal	-1(%rax), %ecx	#, D.12351
	movq	-824(%rbp), %rax	# xpad, tmp1173
	movq	(%rax), %rax	# xpad_317(D)->sv_any, D.12344
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_614].xpv_cur, D.12346
	movq	-824(%rbp), %rax	# xpad, tmp1174
	movq	(%rax), %rax	# xpad_317(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_616].xpv_pv, D.12347
	movq	%rax, %rsi	# D.12347,
	movl	$0, %edi	#,
	call	sv_x	#
	movq	%rax, -376(%rbp)	# tmp1175, opad
	.loc 1 726 0
	movq	-432(%rbp), %rcx	# totpad, tmp1176
	movq	-784(%rbp), %rax	# retval, tmp1177
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1176,
	movq	%rax, %rdi	# tmp1177,
	call	Perl_sv_catsv_flags	#
	.loc 1 727 0
	movq	-376(%rbp), %rcx	# opad, tmp1178
	movq	-784(%rbp), %rax	# retval, tmp1179
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1178,
	movq	%rax, %rdi	# tmp1179,
	call	Perl_sv_catsv_flags	#
	.loc 1 728 0
	movq	-376(%rbp), %rax	# opad, tmp1180
	movq	%rax, %rdi	# tmp1180,
	call	Perl_sv_free	#
.L197:
.LBE28:
	.loc 1 730 0
	movq	-768(%rbp), %rax	# name, tmp1181
	movzbl	(%rax), %eax	# *name_217(D), D.12354
	cmpb	$37, %al	#, D.12354
	jne	.L198	#,
	.loc 1 731 0
	movq	-784(%rbp), %rax	# retval, tmp1182
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp1182,
	call	Perl_sv_catpvn_flags	#
	jmp	.L199	#
.L198:
	.loc 1 733 0
	movq	-784(%rbp), %rax	# retval, tmp1183
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp1183,
	call	Perl_sv_catpvn_flags	#
.L199:
	.loc 1 734 0 discriminator 1
	movq	-440(%rbp), %rax	# iname, tmp1184
	movq	%rax, %rdi	# tmp1184,
	call	Perl_sv_free	#
	.loc 1 735 0 discriminator 1
	movq	-432(%rbp), %rax	# totpad, tmp1185
	movq	%rax, %rdi	# tmp1185,
	call	Perl_sv_free	#
.LBE20:
	jmp	.L126	#
.L144:
	.loc 1 737 0
	cmpl	$12, -716(%rbp)	#, realtype
	jne	.L200	#,
	.loc 1 738 0
	movq	-784(%rbp), %rax	# retval, tmp1186
	movl	$2, %ecx	#,
	movl	$15, %edx	#,
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp1186,
	call	Perl_sv_catpvn_flags	#
	.loc 1 739 0
	cmpl	$0, 88(%rbp)	#, purity
	je	.L126	#,
	.loc 1 740 0
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
	jmp	.L126	#
.L200:
	.loc 1 743 0
	movl	-716(%rbp), %eax	# realtype, tmp1187
	movl	%eax, %esi	# tmp1187,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
.L126:
	.loc 1 746 0
	cmpq	$0, -680(%rbp)	#, realpack
	je	.L202	#,
	.loc 1 747 0
	cmpl	$1, 24(%rbp)	#, indent
	jle	.L203	#,
	.loc 1 748 0
	movq	-832(%rbp), %rax	# apad, tmp1188
	movq	%rax, %rdi	# tmp1188,
	call	Perl_sv_free	#
	.loc 1 749 0
	movq	-672(%rbp), %rax	# blesspad, tmp1189
	movq	%rax, -832(%rbp)	# tmp1189, apad
.L203:
	.loc 1 751 0
	movq	-784(%rbp), %rax	# retval, tmp1190
	movl	$2, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp1190,
	call	Perl_sv_catpvn_flags	#
	.loc 1 752 0
	movq	-680(%rbp), %rax	# realpack, tmp1191
	movq	%rax, %rdi	# tmp1191,
	call	strlen	#
	movq	%rax, %rdx	#, D.12346
	movq	-680(%rbp), %rsi	# realpack, tmp1192
	movq	-784(%rbp), %rax	# retval, tmp1193
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1193,
	call	Perl_sv_catpvn_flags	#
	.loc 1 753 0
	movq	-784(%rbp), %rax	# retval, tmp1194
	movl	$2, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp1194,
	call	Perl_sv_catpvn_flags	#
	.loc 1 754 0
	cmpq	$0, -864(%rbp)	#, toaster
	je	.L202	#,
	.loc 1 754 0 is_stmt 0 discriminator 1
	movq	-864(%rbp), %rax	# toaster, tmp1195
	movl	12(%rax), %eax	# toaster_331(D)->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L202	#,
	movq	-864(%rbp), %rax	# toaster, tmp1196
	movq	(%rax), %rax	# toaster_331(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_624].xpv_cur, D.12346
	testq	%rax, %rax	# D.12346
	je	.L202	#,
	.loc 1 755 0 is_stmt 1
	movq	-784(%rbp), %rax	# retval, tmp1197
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp1197,
	call	Perl_sv_catpvn_flags	#
	.loc 1 756 0
	movq	-864(%rbp), %rcx	# toaster, tmp1198
	movq	-784(%rbp), %rax	# retval, tmp1199
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1198,
	movq	%rax, %rdi	# tmp1199,
	call	Perl_sv_catsv_flags	#
	.loc 1 757 0
	movq	-784(%rbp), %rax	# retval, tmp1200
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp1200,
	call	Perl_sv_catpvn_flags	#
.L202:
	.loc 1 760 0
	movq	-504(%rbp), %rax	# ipad, tmp1201
	movq	%rax, %rdi	# tmp1201,
	call	Perl_sv_free	#
	.loc 1 761 0
	movq	-808(%rbp), %rax	# levelp, tmp1202
	movl	(%rax), %eax	# *levelp_214(D), D.12351
	leal	-1(%rax), %edx	#, D.12351
	movq	-808(%rbp), %rax	# levelp, tmp1203
	movl	%edx, (%rax)	# D.12351, *levelp_214(D)
	jmp	.L204	#
.L74:
.LBB29:
	.loc 1 766 0
	cmpq	$0, -776(%rbp)	#, namelen
	je	.L205	#,
	.loc 1 767 0
	movq	-760(%rbp), %rdx	# val, val.113
	leaq	-160(%rbp), %rax	#, tmp1204
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp1204,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 768 0
	leaq	-160(%rbp), %rax	#, tmp1205
	movq	%rax, %rdi	# tmp1205,
	call	strlen	#
	movq	%rax, -648(%rbp)	# tmp1206, idlen
	movq	-648(%rbp), %rax	# idlen, tmp1207
	movl	%eax, %edx	# tmp1207, D.12351
	leaq	-160(%rbp), %rsi	#, tmp1208
	movq	-792(%rbp), %rax	# seenhv, tmp1209
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp1209,
	call	Perl_hv_fetch	#
	movq	%rax, -552(%rbp)	# tmp1210, svp
	cmpq	$0, -552(%rbp)	#, svp
	je	.L206	#,
	.loc 1 769 0 discriminator 1
	movq	-552(%rbp), %rax	# svp, tmp1211
	movq	(%rax), %rax	# *svp_631, tmp1212
	movq	%rax, -544(%rbp)	# tmp1212, sv
	.loc 1 768 0 discriminator 1
	cmpq	$0, -544(%rbp)	#, sv
	je	.L206	#,
	.loc 1 769 0
	movq	-544(%rbp), %rax	# sv, tmp1213
	movl	12(%rax), %eax	# sv_632->sv_flags, D.12343
	andl	$524288, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L206	#,
	.loc 1 770 0 discriminator 1
	movq	-544(%rbp), %rax	# sv, tmp1214
	movq	(%rax), %rax	# sv_632->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XRV *)_635].xrv_rv, tmp1215
	movq	%rax, -664(%rbp)	# tmp1215, seenentry
	.loc 1 769 0 discriminator 1
	cmpq	$0, -664(%rbp)	#, seenentry
	je	.L206	#,
.LBB30:
	.loc 1 773 0
	movq	-664(%rbp), %rax	# seenentry, tmp1216
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1216,
	call	Perl_av_fetch	#
	movq	%rax, -552(%rbp)	# tmp1217, svp
	cmpq	$0, -552(%rbp)	#, svp
	je	.L207	#,
	.loc 1 773 0 is_stmt 0 discriminator 1
	movq	-552(%rbp), %rax	# svp, tmp1218
	movq	(%rax), %rax	# *svp_637, tmp1219
	movq	%rax, -368(%rbp)	# tmp1219, othername
	cmpq	$0, -368(%rbp)	#, othername
	je	.L207	#,
	.loc 1 774 0 is_stmt 1
	movq	-664(%rbp), %rax	# seenentry, tmp1220
	movl	$0, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp1220,
	call	Perl_av_fetch	#
	movq	%rax, -552(%rbp)	# tmp1221, svp
	cmpq	$0, -552(%rbp)	#, svp
	je	.L207	#,
	.loc 1 774 0 is_stmt 0 discriminator 1
	movq	-552(%rbp), %rax	# svp, tmp1222
	movq	(%rax), %rax	# *svp_639, D.12345
	testq	%rax, %rax	# D.12345
	je	.L207	#,
	movq	-552(%rbp), %rax	# svp, tmp1223
	movq	(%rax), %rax	# *svp_639, D.12345
	movl	12(%rax), %eax	# _641->sv_flags, D.12343
	andl	$65536, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L208	#,
	movq	-552(%rbp), %rax	# svp, tmp1224
	movq	(%rax), %rax	# *svp_639, D.12345
	movq	(%rax), %rax	# _644->sv_any, D.12344
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_645].xiv_iv, D.12350
	testq	%rax, %rax	# D.12350
	setg	%al	#, iftmp.114
	jmp	.L209	#
.L208:
	.loc 1 774 0 discriminator 2
	movq	-552(%rbp), %rax	# svp, tmp1225
	movq	(%rax), %rax	# *svp_639, D.12345
	movq	%rax, %rdi	# D.12345,
	call	Perl_sv_2iv	#
	testq	%rax, %rax	# D.12350
	setg	%al	#, iftmp.114
.L209:
	.loc 1 774 0 discriminator 3
	testb	%al, %al	# iftmp.114
	je	.L207	#,
	.loc 1 776 0 is_stmt 1
	movq	-784(%rbp), %rax	# retval, tmp1226
	movl	$2, %ecx	#,
	movl	$2, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp1226,
	call	Perl_sv_catpvn_flags	#
	.loc 1 777 0
	movq	-368(%rbp), %rcx	# othername, tmp1227
	movq	-784(%rbp), %rax	# retval, tmp1228
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1227,
	movq	%rax, %rdi	# tmp1228,
	call	Perl_sv_catsv_flags	#
	.loc 1 778 0
	movq	-784(%rbp), %rax	# retval, tmp1229
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp1229,
	call	Perl_sv_catpvn_flags	#
	.loc 1 779 0
	movl	$1, %eax	#, D.12342
	jmp	.L248	#
.L207:
.LBE30:
	.loc 1 771 0
	jmp	.L205	#
.L206:
	.loc 1 782 0
	cmpq	$PL_sv_undef, -760(%rbp)	#, val
	je	.L205	#,
.LBB31:
	.loc 1 784 0
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -360(%rbp)	# tmp1230, namesv
	.loc 1 785 0
	movq	-776(%rbp), %rdx	# namelen, tmp1231
	movq	-768(%rbp), %rsi	# name, tmp1232
	movq	-360(%rbp), %rax	# namesv, tmp1233
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1233,
	call	Perl_sv_catpvn_flags	#
	.loc 1 786 0
	call	Perl_newAV	#
	movq	%rax, -664(%rbp)	# tmp1234, seenentry
	.loc 1 787 0
	movq	-360(%rbp), %rdx	# namesv, tmp1235
	movq	-664(%rbp), %rax	# seenentry, tmp1236
	movq	%rdx, %rsi	# tmp1235,
	movq	%rax, %rdi	# tmp1236,
	call	Perl_av_push	#
	.loc 1 788 0
	movq	-760(%rbp), %rax	# val, tmp1237
	movq	%rax, %rdi	# tmp1237,
	call	Perl_newRV	#
	movq	%rax, %rdx	#, D.12345
	movq	-664(%rbp), %rax	# seenentry, tmp1238
	movq	%rdx, %rsi	# D.12345,
	movq	%rax, %rdi	# tmp1238,
	call	Perl_av_push	#
	.loc 1 789 0
	movq	-664(%rbp), %rax	# seenentry, tmp1239
	movq	%rax, %rdi	# tmp1239,
	call	Perl_newRV	#
	movq	%rax, %rbx	#, D.12345
	leaq	-160(%rbp), %rax	#, tmp1240
	movq	%rax, %rdi	# tmp1240,
	call	strlen	#
	movl	%eax, %edx	# D.12346, D.12351
	leaq	-160(%rbp), %rsi	#, tmp1241
	movq	-792(%rbp), %rax	# seenhv, tmp1242
	movl	$0, %r8d	#,
	movq	%rbx, %rcx	# D.12345,
	movq	%rax, %rdi	# tmp1242,
	call	Perl_hv_store	#
	.loc 1 790 0
	movq	-664(%rbp), %rax	# seenentry, tmp1243
	movq	%rax, %rdi	# tmp1243,
	call	Perl_sv_free	#
.L205:
.LBE31:
	.loc 1 794 0
	movq	-760(%rbp), %rax	# val, tmp1244
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$65536, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L210	#,
.LBB32:
	.loc 1 796 0
	movq	-760(%rbp), %rax	# val, tmp1245
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	testl	%eax, %eax	# D.12362
	jns	.L211	#,
	.loc 1 797 0
	movq	-760(%rbp), %rax	# val, tmp1246
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$65536, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L212	#,
	.loc 1 797 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# val, tmp1247
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_664].xuv_uv, iftmp.115
	jmp	.L213	#
.L212:
	.loc 1 797 0 discriminator 2
	movq	-760(%rbp), %rax	# val, tmp1248
	movq	%rax, %rdi	# tmp1248,
	call	Perl_sv_2uv	#
.L213:
	.loc 1 797 0 discriminator 1
	leaq	-288(%rbp), %rcx	#, tmp1249
	movq	%rax, %rdx	# iftmp.115,
	movl	$.LC42, %esi	#,
	movq	%rcx, %rdi	# tmp1249,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L214	#
.L211:
	.loc 1 799 0 is_stmt 1
	movq	-760(%rbp), %rax	# val, tmp1250
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$65536, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L215	#,
	.loc 1 799 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# val, tmp1251
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_669].xiv_iv, iftmp.116
	jmp	.L216	#
.L215:
	.loc 1 799 0 discriminator 2
	movq	-760(%rbp), %rax	# val, tmp1252
	movq	%rax, %rdi	# tmp1252,
	call	Perl_sv_2iv	#
.L216:
	.loc 1 799 0 discriminator 3
	leaq	-288(%rbp), %rcx	#, tmp1253
	movq	%rax, %rdx	# iftmp.116,
	movl	$.LC29, %esi	#,
	movq	%rcx, %rdi	# tmp1253,
	movl	$0, %eax	#,
	call	sprintf	#
.L214:
	.loc 1 800 0 is_stmt 1
	leaq	-288(%rbp), %rax	#, tmp1254
	movq	%rax, %rdi	# tmp1254,
	call	strlen	#
	movq	%rax, -352(%rbp)	# tmp1255, len
	.loc 1 801 0
	movq	-760(%rbp), %rax	# val, tmp1256
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L217	#,
.LBB33:
	.loc 1 806 0
	movq	-760(%rbp), %rax	# val, tmp1257
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L218	#,
	.loc 1 806 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# val, tmp1258
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_677].xpv_cur, pvlen.118
	movq	%rax, -704(%rbp)	# pvlen.118, pvlen
	movq	-760(%rbp), %rax	# val, tmp1259
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_679].xpv_pv, iftmp.117
	jmp	.L219	#
.L218:
	.loc 1 806 0 discriminator 2
	leaq	-704(%rbp), %rcx	#, tmp1260
	movq	-760(%rbp), %rax	# val, tmp1261
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1260,
	movq	%rax, %rdi	# tmp1261,
	call	Perl_sv_2pv_flags	#
.L219:
	.loc 1 806 0 discriminator 3
	movq	%rax, -344(%rbp)	# iftmp.117, pv
	.loc 1 807 0 is_stmt 1 discriminator 3
	movq	-704(%rbp), %rax	# pvlen, pvlen.119
	cmpq	-352(%rbp), %rax	# len, pvlen.119
	jne	.L221	#,
	.loc 1 807 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rdx	# len, tmp1262
	leaq	-288(%rbp), %rcx	#, tmp1263
	movq	-344(%rbp), %rax	# pv, tmp1264
	movq	%rcx, %rsi	# tmp1263,
	movq	%rax, %rdi	# tmp1264,
	call	memcmp	#
	testl	%eax, %eax	# D.12351
	jne	.L221	#,
.L217:
.LBE33:
	.loc 1 810 0 is_stmt 1
	cmpq	$10, -352(%rbp)	#, len
	jbe	.L222	#,
	.loc 1 813 0
	leaq	-288(%rbp), %rdx	#, tmp1265
	movq	-784(%rbp), %rax	# retval, tmp1266
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp1266,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	jmp	.L204	#
.L222:
	.loc 1 815 0
	movq	-352(%rbp), %rdx	# len, tmp1267
	leaq	-288(%rbp), %rsi	#, tmp1268
	movq	-784(%rbp), %rax	# retval, tmp1269
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1269,
	call	Perl_sv_catpvn_flags	#
.LBE32:
	jmp	.L204	#
.L210:
	.loc 1 817 0
	cmpl	$13, -716(%rbp)	#, realtype
	jne	.L225	#,
	.loc 1 818 0
	movq	-760(%rbp), %rax	# val, tmp1270
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L226	#,
	.loc 1 818 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# val, tmp1271
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_687].xpv_cur, i.121
	movq	%rax, -704(%rbp)	# i.121, i
	movq	-760(%rbp), %rax	# val, tmp1272
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_689].xpv_pv, iftmp.120
	jmp	.L227	#
.L226:
	.loc 1 818 0 discriminator 2
	leaq	-704(%rbp), %rcx	#, tmp1273
	movq	-760(%rbp), %rax	# val, tmp1274
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1273,
	movq	%rax, %rdi	# tmp1274,
	call	Perl_sv_2pv_flags	#
.L227:
	.loc 1 818 0 discriminator 3
	movq	%rax, -696(%rbp)	# iftmp.120, c
	.loc 1 819 0 is_stmt 1 discriminator 3
	addq	$1, -696(%rbp)	#, c
	movq	-704(%rbp), %rax	# i, i.122
	subq	$1, %rax	#, i.123
	movq	%rax, -704(%rbp)	# i.123, i
	.loc 1 820 0 discriminator 3
	movq	-704(%rbp), %rax	# i, i.124
	cmpq	$5, %rax	#, i.124
	jbe	.L228	#,
	.loc 1 820 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# c, tmp1275
	movl	$6, %edx	#,
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp1275,
	call	strncmp	#
	testl	%eax, %eax	# D.12351
	jne	.L228	#,
	.loc 1 821 0 is_stmt 1
	addq	$4, -696(%rbp)	#, c
	.loc 1 822 0
	movq	-704(%rbp), %rax	# i, i.125
	subq	$4, %rax	#, i.126
	movq	%rax, -704(%rbp)	# i.126, i
.L228:
	.loc 1 824 0
	movq	-696(%rbp), %rax	# c, tmp1276
	movq	%rax, %rdi	# tmp1276,
	call	needs_quote	#
	testl	%eax, %eax	# D.12351
	je	.L229	#,
	.loc 1 825 0
	movq	-784(%rbp), %rax	# retval, tmp1277
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_702].xpv_cur, D.12346
	movq	-704(%rbp), %rdx	# i, i.127
	addq	%rdx, %rdx	# D.12346
	addq	%rdx, %rax	# D.12346, D.12346
	leaq	6(%rax), %rdx	#, D.12346
	movq	-784(%rbp), %rax	# retval, tmp1278
	movq	%rdx, %rsi	# D.12346,
	movq	%rax, %rdi	# tmp1278,
	call	Perl_sv_grow	#
	.loc 1 826 0
	movq	-784(%rbp), %rax	# retval, tmp1279
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	(%rax), %rdx	# MEM[(struct XPV *)_708].xpv_pv, D.12347
	movq	-784(%rbp), %rax	# retval, tmp1280
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_710].xpv_cur, D.12346
	addq	%rdx, %rax	# D.12347, tmp1281
	movq	%rax, -688(%rbp)	# tmp1281, r
	.loc 1 827 0
	movq	-688(%rbp), %rax	# r, tmp1282
	movb	$42, (%rax)	#, *r_712
	movq	-688(%rbp), %rax	# r, tmp1283
	addq	$1, %rax	#, D.12347
	movb	$123, (%rax)	#, *_713
	movq	-688(%rbp), %rax	# r, tmp1284
	addq	$2, %rax	#, D.12347
	movb	$39, (%rax)	#, *_714
	.loc 1 828 0
	movq	-704(%rbp), %rdx	# i, i.128
	movq	-688(%rbp), %rax	# r, tmp1285
	leaq	3(%rax), %rcx	#, D.12347
	movq	-696(%rbp), %rax	# c, tmp1286
	movq	%rax, %rsi	# tmp1286,
	movq	%rcx, %rdi	# D.12347,
	call	esc_q	#
	movslq	%eax, %rdx	# D.12351, D.12346
	movq	-704(%rbp), %rax	# i, i.129
	addq	%rdx, %rax	# D.12346, i.130
	movq	%rax, -704(%rbp)	# i.130, i
	.loc 1 829 0
	movq	-704(%rbp), %rax	# i, i.131
	addq	$3, %rax	#, i.132
	movq	%rax, -704(%rbp)	# i.132, i
	.loc 1 830 0
	movq	-704(%rbp), %rax	# i, i.133
	leaq	1(%rax), %rdx	#, i.135
	movq	%rdx, -704(%rbp)	# i.135, i
	movq	-688(%rbp), %rdx	# r, tmp1287
	addq	%rdx, %rax	# tmp1287, D.12347
	movb	$39, (%rax)	#, *_726
	movq	-704(%rbp), %rax	# i, i.136
	leaq	1(%rax), %rdx	#, i.138
	movq	%rdx, -704(%rbp)	# i.138, i
	movq	-688(%rbp), %rdx	# r, tmp1288
	addq	%rdx, %rax	# tmp1288, D.12347
	movb	$125, (%rax)	#, *_730
	.loc 1 831 0
	movq	-704(%rbp), %rdx	# i, i.139
	movq	-688(%rbp), %rax	# r, tmp1289
	addq	%rdx, %rax	# i.139, D.12347
	movb	$0, (%rax)	#, *_732
	jmp	.L230	#
.L229:
	.loc 1 834 0
	movq	-784(%rbp), %rax	# retval, tmp1290
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_733].xpv_cur, D.12346
	movq	-704(%rbp), %rax	# i, i.140
	addq	%rdx, %rax	# D.12346, D.12346
	leaq	2(%rax), %rdx	#, D.12346
	movq	-784(%rbp), %rax	# retval, tmp1291
	movq	%rdx, %rsi	# D.12346,
	movq	%rax, %rdi	# tmp1291,
	call	Perl_sv_grow	#
	.loc 1 835 0
	movq	-784(%rbp), %rax	# retval, tmp1292
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	(%rax), %rdx	# MEM[(struct XPV *)_738].xpv_pv, D.12347
	movq	-784(%rbp), %rax	# retval, tmp1293
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_740].xpv_cur, D.12346
	addq	%rdx, %rax	# D.12347, tmp1294
	movq	%rax, -688(%rbp)	# tmp1294, r
	.loc 1 836 0
	movq	-688(%rbp), %rax	# r, tmp1295
	movb	$42, (%rax)	#, *r_742
	movq	-688(%rbp), %rax	# r, tmp1296
	leaq	1(%rax), %rdx	#, D.12347
	movq	-696(%rbp), %rax	# c, tmp1297
	movq	%rax, %rsi	# tmp1297,
	movq	%rdx, %rdi	# D.12347,
	call	strcpy	#
	.loc 1 837 0
	movq	-704(%rbp), %rax	# i, i.141
	addq	$1, %rax	#, i.142
	movq	%rax, -704(%rbp)	# i.142, i
.L230:
	.loc 1 839 0
	movq	-784(%rbp), %rax	# retval, tmp1298
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	-784(%rbp), %rdx	# retval, tmp1299
	movq	(%rdx), %rdx	# retval_216(D)->sv_any, D.12344
	movq	8(%rdx), %rcx	# MEM[(struct XPV *)_747].xpv_cur, D.12346
	movq	-704(%rbp), %rdx	# i, i.143
	addq	%rcx, %rdx	# D.12346, D.12346
	movq	%rdx, 8(%rax)	# D.12346, MEM[(struct XPV *)_746].xpv_cur
	.loc 1 841 0
	cmpl	$0, 88(%rbp)	#, purity
	je	.L204	#,
.LBB34:
	.loc 1 845 0
	movl	$0, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -336(%rbp)	# tmp1300, nname
	.loc 1 846 0
	movl	$0, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -328(%rbp)	# tmp1301, newapad
	.loc 1 847 0
	movq	-760(%rbp), %rax	# val, tmp1302
	movq	%rax, -320(%rbp)	# tmp1302, gv
	.loc 1 850 0
	movl	$0, -720(%rbp)	#, j
	jmp	.L232	#
.L241:
	.loc 1 851 0
	cmpl	$0, -720(%rbp)	#, j
	jne	.L233	#,
	.loc 1 851 0 is_stmt 0 discriminator 1
	movq	-320(%rbp), %rax	# gv, tmp1303
	movq	(%rax), %rax	# gv_753->sv_any, D.12352
	movq	56(%rax), %rax	# _755->xgv_gp, D.12353
	movq	(%rax), %rax	# _756->gp_sv, iftmp.144
	jmp	.L234	#
.L233:
	.loc 1 851 0 discriminator 2
	cmpl	$1, -720(%rbp)	#, j
	jne	.L235	#,
	.loc 1 851 0 discriminator 1
	movq	-320(%rbp), %rax	# gv, tmp1304
	movq	(%rax), %rax	# gv_753->sv_any, D.12352
	movq	56(%rax), %rax	# _758->xgv_gp, D.12353
	movq	32(%rax), %rax	# _759->gp_av, iftmp.145
	jmp	.L234	#
.L235:
	.loc 1 851 0 discriminator 2
	movq	-320(%rbp), %rax	# gv, tmp1305
	movq	(%rax), %rax	# gv_753->sv_any, D.12352
	movq	56(%rax), %rax	# _761->xgv_gp, D.12353
	movq	40(%rax), %rax	# _762->gp_hv, iftmp.145
.L234:
	.loc 1 851 0 discriminator 3
	movq	%rax, -312(%rbp)	# iftmp.144, e
	.loc 1 852 0 is_stmt 1 discriminator 3
	cmpq	$0, -312(%rbp)	#, e
	jne	.L237	#,
	.loc 1 853 0
	jmp	.L238	#
.L237:
	.loc 1 854 0
	cmpl	$0, -720(%rbp)	#, j
	jne	.L239	#,
	.loc 1 854 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# e, tmp1306
	movl	12(%rax), %eax	# e_765->sv_flags, D.12343
	andl	$118423552, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	jne	.L239	#,
	.loc 1 855 0 is_stmt 1
	jmp	.L238	#
.L239:
.LBB35:
	.loc 1 858 0
	movl	$0, -744(%rbp)	#, nlevel
	.loc 1 859 0
	movq	-704(%rbp), %rdx	# i, i.146
	movq	-688(%rbp), %rax	# r, tmp1307
	movq	%rdx, %rsi	# i.146,
	movq	%rax, %rdi	# tmp1307,
	call	Perl_newSVpvn	#
	movq	%rax, -304(%rbp)	# tmp1308, postentry
	.loc 1 861 0
	movq	-304(%rbp), %rcx	# postentry, tmp1309
	movq	-336(%rbp), %rax	# nname, tmp1310
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1309,
	movq	%rax, %rdi	# tmp1310,
	call	Perl_sv_setsv_flags	#
	.loc 1 862 0
	movl	-720(%rbp), %eax	# j, tmp1312
	cltq
	movq	sizes.10505(,%rax,8), %rdx	# sizes, D.12346
	movl	-720(%rbp), %eax	# j, tmp1314
	cltq
	movq	entries.10504(,%rax,8), %rsi	# entries, D.12347
	movq	-336(%rbp), %rax	# nname, tmp1315
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1315,
	call	Perl_sv_catpvn_flags	#
	.loc 1 863 0
	movq	-304(%rbp), %rax	# postentry, tmp1316
	movl	$2, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp1316,
	call	Perl_sv_catpvn_flags	#
	.loc 1 864 0
	movq	-304(%rbp), %rdx	# postentry, tmp1317
	movq	-800(%rbp), %rax	# postav, tmp1318
	movq	%rdx, %rsi	# tmp1317,
	movq	%rax, %rdi	# tmp1318,
	call	Perl_av_push	#
	.loc 1 865 0
	movq	-312(%rbp), %rax	# e, tmp1319
	movq	%rax, %rdi	# tmp1319,
	call	Perl_newRV	#
	movq	%rax, -312(%rbp)	# tmp1320, e
	.loc 1 867 0
	movq	-328(%rbp), %rax	# newapad, tmp1321
	movq	(%rax), %rax	# newapad_752->sv_any, D.12344
	movq	$0, 8(%rax)	#, MEM[(struct XPV *)_773].xpv_cur
	.loc 1 868 0
	cmpl	$1, 24(%rbp)	#, indent
	jle	.L240	#,
	.loc 1 869 0
	movq	-304(%rbp), %rax	# postentry, tmp1322
	movq	(%rax), %rax	# postentry_769->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_774].xpv_cur, D.12346
	movl	%eax, %edx	# D.12346, D.12351
	movq	-328(%rbp), %rax	# newapad, tmp1323
	movl	%edx, %ecx	# D.12351,
	movl	$1, %edx	#,
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp1323,
	call	sv_x	#
.L240:
	.loc 1 871 0
	movq	-336(%rbp), %rax	# nname, tmp1324
	movq	(%rax), %rax	# nname_751->sv_any, D.12344
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_777].xpv_cur, D.12346
	movq	-336(%rbp), %rax	# nname, tmp1325
	movq	(%rax), %rax	# nname_751->sv_any, D.12344
	movq	(%rax), %rsi	# MEM[(struct XPV *)_779].xpv_pv, D.12347
	movq	-800(%rbp), %r9	# postav, tmp1326
	movq	-792(%rbp), %r8	# seenhv, tmp1327
	movq	-304(%rbp), %rcx	# postentry, tmp1328
	movq	-312(%rbp), %rax	# e, tmp1329
	movq	-880(%rbp), %rdi	# sortkeys, tmp1330
	movq	%rdi, 112(%rsp)	# tmp1330,
	movl	120(%rbp), %edi	# maxdepth, tmp1331
	movl	%edi, 104(%rsp)	# tmp1331,
	movq	-872(%rbp), %rdi	# bless, tmp1332
	movq	%rdi, 96(%rsp)	# tmp1332,
	movl	104(%rbp), %edi	# quotekeys, tmp1333
	movl	%edi, 88(%rsp)	# tmp1333,
	movl	96(%rbp), %edi	# deepcopy, tmp1334
	movl	%edi, 80(%rsp)	# tmp1334,
	movl	88(%rbp), %edi	# purity, tmp1335
	movl	%edi, 72(%rsp)	# tmp1335,
	movq	-864(%rbp), %rdi	# toaster, tmp1336
	movq	%rdi, 64(%rsp)	# tmp1336,
	movq	-856(%rbp), %rdi	# freezer, tmp1337
	movq	%rdi, 56(%rsp)	# tmp1337,
	movq	-848(%rbp), %rdi	# pair, tmp1338
	movq	%rdi, 48(%rsp)	# tmp1338,
	movq	-840(%rbp), %rdi	# sep, tmp1339
	movq	%rdi, 40(%rsp)	# tmp1339,
	movq	-328(%rbp), %rdi	# newapad, tmp1340
	movq	%rdi, 32(%rsp)	# tmp1340,
	movq	-824(%rbp), %rdi	# xpad, tmp1341
	movq	%rdi, 24(%rsp)	# tmp1341,
	movq	-816(%rbp), %rdi	# pad, tmp1342
	movq	%rdi, 16(%rsp)	# tmp1342,
	movl	24(%rbp), %edi	# indent, tmp1343
	movl	%edi, 8(%rsp)	# tmp1343,
	leaq	-744(%rbp), %rdi	#, tmp1344
	movq	%rdi, (%rsp)	# tmp1344,
	movq	%rax, %rdi	# tmp1329,
	call	DD_dump	#
	.loc 1 876 0
	movq	-312(%rbp), %rax	# e, tmp1345
	movq	%rax, %rdi	# tmp1345,
	call	Perl_sv_free	#
.L238:
.LBE35:
	.loc 1 850 0
	addl	$1, -720(%rbp)	#, j
.L232:
	.loc 1 850 0 is_stmt 0 discriminator 1
	cmpl	$2, -720(%rbp)	#, j
	jle	.L241	#,
	.loc 1 880 0 is_stmt 1
	movq	-328(%rbp), %rax	# newapad, tmp1346
	movq	%rax, %rdi	# tmp1346,
	call	Perl_sv_free	#
	.loc 1 881 0
	movq	-336(%rbp), %rax	# nname, tmp1347
	movq	%rax, %rdi	# tmp1347,
	call	Perl_sv_free	#
.LBE34:
	jmp	.L204	#
.L225:
	.loc 1 884 0
	cmpq	$PL_sv_undef, -760(%rbp)	#, val
	je	.L242	#,
	.loc 1 884 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# val, tmp1348
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$118423552, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	jne	.L221	#,
.L242:
	.loc 1 885 0 is_stmt 1
	movq	-784(%rbp), %rax	# retval, tmp1349
	movl	$2, %ecx	#,
	movl	$5, %edx	#,
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp1349,
	call	Perl_sv_catpvn_flags	#
	jmp	.L224	#
.L221:
	.loc 1 889 0
	movq	-760(%rbp), %rax	# val, tmp1350
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$262144, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L243	#,
	.loc 1 889 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# val, tmp1351
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_786].xpv_cur, i.148
	movq	%rax, -704(%rbp)	# i.148, i
	movq	-760(%rbp), %rax	# val, tmp1352
	movq	(%rax), %rax	# val_69(D)->sv_any, D.12344
	movq	(%rax), %rax	# MEM[(struct XPV *)_788].xpv_pv, iftmp.147
	jmp	.L244	#
.L243:
	.loc 1 889 0 discriminator 2
	leaq	-704(%rbp), %rcx	#, tmp1353
	movq	-760(%rbp), %rax	# val, tmp1354
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1353,
	movq	%rax, %rdi	# tmp1354,
	call	Perl_sv_2pv_flags	#
.L244:
	.loc 1 889 0 discriminator 3
	movq	%rax, -696(%rbp)	# iftmp.147, c
	.loc 1 890 0 is_stmt 1 discriminator 3
	movq	-760(%rbp), %rax	# val, tmp1355
	movl	12(%rax), %eax	# val_69(D)->sv_flags, D.12343
	andl	$536870912, %eax	#, D.12343
	testl	%eax, %eax	# D.12343
	je	.L245	#,
	.loc 1 890 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.149
	movzbl	37(%rax), %eax	# PL_curcop.149_794->op_private, D.12361
	movzbl	%al, %eax	# D.12361, D.12351
	andl	$8, %eax	#, D.12351
	testl	%eax, %eax	# D.12351
	jne	.L245	#,
	.loc 1 891 0 is_stmt 1
	movq	-704(%rbp), %rdx	# i, i.150
	movq	-696(%rbp), %rcx	# c, tmp1356
	movq	-784(%rbp), %rax	# retval, tmp1357
	movq	%rcx, %rsi	# tmp1356,
	movq	%rax, %rdi	# tmp1357,
	call	esc_q_utf8	#
	movslq	%eax, %rdx	# D.12351, D.12346
	movq	-704(%rbp), %rax	# i, i.151
	addq	%rdx, %rax	# D.12346, i.152
	movq	%rax, -704(%rbp)	# i.152, i
	jmp	.L224	#
.L245:
	.loc 1 893 0
	movq	-784(%rbp), %rax	# retval, tmp1358
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_803].xpv_cur, D.12346
	movq	-704(%rbp), %rdx	# i, i.153
	addq	%rdx, %rdx	# D.12346
	addq	%rdx, %rax	# D.12346, D.12346
	leaq	3(%rax), %rdx	#, D.12346
	movq	-784(%rbp), %rax	# retval, tmp1359
	movq	%rdx, %rsi	# D.12346,
	movq	%rax, %rdi	# tmp1359,
	call	Perl_sv_grow	#
	.loc 1 894 0
	movq	-784(%rbp), %rax	# retval, tmp1360
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	(%rax), %rdx	# MEM[(struct XPV *)_809].xpv_pv, D.12347
	movq	-784(%rbp), %rax	# retval, tmp1361
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	8(%rax), %rax	# MEM[(struct XPV *)_811].xpv_cur, D.12346
	addq	%rdx, %rax	# D.12347, tmp1362
	movq	%rax, -688(%rbp)	# tmp1362, r
	.loc 1 895 0
	movq	-688(%rbp), %rax	# r, tmp1363
	movb	$39, (%rax)	#, *r_813
	.loc 1 896 0
	movq	-704(%rbp), %rdx	# i, i.154
	movq	-688(%rbp), %rax	# r, tmp1364
	leaq	1(%rax), %rcx	#, D.12347
	movq	-696(%rbp), %rax	# c, tmp1365
	movq	%rax, %rsi	# tmp1365,
	movq	%rcx, %rdi	# D.12347,
	call	esc_q	#
	movslq	%eax, %rdx	# D.12351, D.12346
	movq	-704(%rbp), %rax	# i, i.155
	addq	%rdx, %rax	# D.12346, i.156
	movq	%rax, -704(%rbp)	# i.156, i
	.loc 1 897 0
	movq	-704(%rbp), %rax	# i, i.157
	addq	$1, %rax	#, i.158
	movq	%rax, -704(%rbp)	# i.158, i
	.loc 1 898 0
	movq	-704(%rbp), %rax	# i, i.159
	leaq	1(%rax), %rdx	#, i.161
	movq	%rdx, -704(%rbp)	# i.161, i
	movq	-688(%rbp), %rdx	# r, tmp1366
	addq	%rdx, %rax	# tmp1366, D.12347
	movb	$39, (%rax)	#, *_825
	.loc 1 899 0
	movq	-704(%rbp), %rdx	# i, i.162
	movq	-688(%rbp), %rax	# r, tmp1367
	addq	%rdx, %rax	# i.162, D.12347
	movb	$0, (%rax)	#, *_827
	.loc 1 900 0
	movq	-784(%rbp), %rax	# retval, tmp1368
	movq	(%rax), %rax	# retval_216(D)->sv_any, D.12344
	movq	-784(%rbp), %rdx	# retval, tmp1369
	movq	(%rdx), %rdx	# retval_216(D)->sv_any, D.12344
	movq	8(%rdx), %rcx	# MEM[(struct XPV *)_829].xpv_cur, D.12346
	movq	-704(%rbp), %rdx	# i, i.163
	addq	%rcx, %rdx	# D.12346, D.12346
	movq	%rdx, 8(%rax)	# D.12346, MEM[(struct XPV *)_828].xpv_cur
	jmp	.L204	#
.L224:
.L204:
.LBE29:
	.loc 1 905 0
	cmpq	$0, -648(%rbp)	#, idlen
	je	.L246	#,
	.loc 1 906 0
	cmpl	$0, 96(%rbp)	#, deepcopy
	je	.L247	#,
	.loc 1 907 0
	movq	-648(%rbp), %rax	# idlen, tmp1370
	movl	%eax, %edx	# tmp1370, D.12351
	leaq	-160(%rbp), %rsi	#, tmp1371
	movq	-792(%rbp), %rax	# seenhv, tmp1372
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp1372,
	call	Perl_hv_delete	#
	jmp	.L246	#
.L247:
	.loc 1 908 0
	cmpq	$0, -776(%rbp)	#, namelen
	je	.L246	#,
	.loc 1 908 0 is_stmt 0 discriminator 1
	cmpq	$0, -664(%rbp)	#, seenentry
	je	.L246	#,
.LBB36:
	.loc 1 909 0 is_stmt 1
	movq	-664(%rbp), %rax	# seenentry, tmp1373
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp1373,
	call	Perl_av_fetch	#
	movq	(%rax), %rax	# *_834, tmp1374
	movq	%rax, -296(%rbp)	# tmp1374, mark
	.loc 1 910 0
	movq	-296(%rbp), %rax	# mark, tmp1375
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp1375,
	call	Perl_sv_setiv	#
.L246:
.LBE36:
	.loc 1 913 0
	movl	$1, %eax	#, D.12342
.L248:
	.loc 1 914 0
	movq	-24(%rbp), %rbx	# D.12365, tmp1378
	xorq	%fs:40, %rbx	#, tmp1378
	je	.L249	#,
	call	__stack_chk_fail	#
.L249:
	addq	$1000, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	DD_dump, .-DD_dump
	.section	.rodata
	.align 8
.LC46:
	.string	"Usage: Data::Dumper::Dumpxs(href, ...)"
	.align 8
.LC47:
	.string	"Usage: Data::Dumper::Dumpxs(PACKAGE, VAL_ARY_REF, [NAME_ARY_REF])"
.LC48:
	.string	"new"
.LC49:
	.string	"seen"
.LC50:
	.string	"todump"
.LC51:
	.string	"names"
.LC52:
	.string	"indent"
.LC53:
	.string	"purity"
.LC54:
	.string	"terse"
.LC55:
	.string	"pad"
.LC56:
	.string	"xpad"
.LC57:
	.string	"apad"
.LC58:
	.string	"sep"
.LC59:
	.string	"pair"
.LC60:
	.string	"varname"
.LC61:
	.string	"freezer"
.LC62:
	.string	"toaster"
.LC63:
	.string	"deepcopy"
.LC64:
	.string	"quotekeys"
.LC65:
	.string	"bless"
.LC66:
	.string	"maxdepth"
.LC67:
	.string	"sortkeys"
.LC68:
	.string	"$"
.LC69:
	.string	";"
	.align 8
.LC70:
	.string	"Call to new() method failed to return HASH ref"
	.text
	.globl	XS_Data__Dumper_Dumpxs
	.type	XS_Data__Dumper_Dumpxs, @function
XS_Data__Dumper_Dumpxs:
.LFB8:
	.loc 1 920 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$1424, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -1320(%rbp)	# cv, cv
	.loc 1 920 0
	movq	%fs:40, %rax	#, tmp654
	movq	%rax, -24(%rbp)	# tmp654, D.12426
	xorl	%eax, %eax	# tmp654
	.loc 1 921 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.164
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.165
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.167
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.167, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.166_69, D.12411
	cltq
	salq	$3, %rax	#, D.12412
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.168
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.169
	subq	%rax, %rdx	# PL_stack_base.170, D.12413
	movq	%rdx, %rax	# D.12413, D.12413
	sarq	$3, %rax	#, tmp388
	addl	$1, %eax	#, D.12414
	movl	%eax, -1272(%rbp)	# D.12414, ax
	movq	%rbx, %rdx	# sp, sp.171
	movq	%r12, %rax	# mark, mark.172
	subq	%rax, %rdx	# mark.172, D.12413
	movq	%rdx, %rax	# D.12413, D.12413
	sarq	$3, %rax	#, tmp389
	movl	%eax, -1268(%rbp)	# D.12413, items
	.loc 1 922 0
	cmpl	$0, -1268(%rbp)	#, items
	jg	.L251	#,
	.loc 1 923 0
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L251:
	.loc 1 924 0
	movl	-1268(%rbp), %eax	# items, tmp390
	cltq
	salq	$3, %rax	#, D.12412
	negq	%rax	# D.12415
	addq	%rax, %rbx	# D.12415, sp
.LBB37:
	.loc 1 926 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.173
	movl	-1272(%rbp), %edx	# ax, tmp391
	movslq	%edx, %rdx	# tmp391, D.12412
	salq	$3, %rdx	#, D.12412
	addq	%rdx, %rax	# D.12412, D.12416
	movq	(%rax), %rax	# *_95, tmp392
	movq	%rax, -1256(%rbp)	# tmp392, href
.LBB38:
	.loc 1 931 0
	movq	$0, -1240(%rbp)	#, seenhv
	.loc 1 933 0
	movl	$0, -1312(%rbp)	#, level
	.loc 1 938 0
	movl	$0, -1280(%rbp)	#, maxdepth
	.loc 1 940 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.175
	movzbl	36(%rax), %eax	# PL_op.175_99->op_flags, D.12417
	movzbl	%al, %eax	# D.12417, D.12411
	andl	$3, %eax	#, D.12411
	testl	%eax, %eax	# D.12411
	je	.L252	#,
	.loc 1 940 0 is_stmt 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.176
	movzbl	36(%rax), %eax	# PL_op.176_103->op_flags, D.12417
	movzbl	%al, %eax	# D.12417, D.12411
	andl	$3, %eax	#, D.12411
	cmpl	$3, %eax	#, D.12411
	sete	%al	#, D.12418
	movzbl	%al, %eax	# D.12418, iftmp.174
	jmp	.L253	#
.L252:
	.loc 1 940 0 discriminator 2
	call	Perl_dowantarray	#
.L253:
	.loc 1 940 0 discriminator 3
	movl	%eax, -1264(%rbp)	# iftmp.174, gimme
	.loc 1 942 0 is_stmt 1 discriminator 3
	movq	-1256(%rbp), %rax	# href, tmp393
	movl	12(%rax), %eax	# href_96->sv_flags, D.12419
	andl	$524288, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	jne	.L254	#,
	.loc 1 943 0
	cmpl	$1, -1268(%rbp)	#, items
	jg	.L255	#,
	.loc 1 944 0
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L255:
	.loc 1 946 0
	call	Perl_push_scope	#
	.loc 1 947 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.177
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.177, PL_tmps_floor
.LBB39:
	.loc 1 949 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.178
	addq	$4, %rax	#, PL_markstack_ptr.179
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.179, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.180
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.181
	cmpq	%rax, %rdx	# PL_markstack_max.181, PL_markstack_ptr.180
	jne	.L256	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L256:
	.loc 1 949 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.182
	movq	%rbx, %rcx	# sp, sp.183
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.184
	subq	%rdx, %rcx	# PL_stack_base.185, D.12413
	movq	%rcx, %rdx	# D.12413, D.12413
	sarq	$3, %rdx	#, tmp394
	movl	%edx, (%rax)	# D.12411, *PL_markstack_ptr.182_118
.LBE39:
.LBB40:
	.loc 1 950 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.186
	movq	%rax, %rdx	# PL_stack_max.186, PL_stack_max.187
	movq	%rbx, %rax	# sp, sp.188
	subq	%rax, %rdx	# sp.188, D.12413
	movq	%rdx, %rax	# D.12413, D.12413
	cmpq	$7, %rax	#, D.12413
	jg	.L257	#,
	.loc 1 950 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L257:
	.loc 1 950 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-1256(%rbp), %rax	# href, tmp395
	movq	%rax, (%rbx)	# tmp395, *sp_131
.LBE40:
.LBB41:
	.loc 1 951 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.189
	movq	%rax, %rdx	# PL_stack_max.189, PL_stack_max.190
	movq	%rbx, %rax	# sp, sp.191
	subq	%rax, %rdx	# sp.191, D.12413
	movq	%rdx, %rax	# D.12413, D.12413
	cmpq	$7, %rax	#, D.12413
	jg	.L258	#,
	.loc 1 951 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L258:
	.loc 1 951 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.192
	movl	-1272(%rbp), %edx	# ax, tmp396
	movslq	%edx, %rdx	# tmp396, D.12415
	addq	$1, %rdx	#, D.12415
	salq	$3, %rdx	#, D.12415
	addq	%rdx, %rax	# D.12415, D.12416
	movq	(%rax), %rax	# *_143, D.12421
	movq	%rax, %rdi	# D.12421,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.12421,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12421, *sp_138
.LBE41:
	.loc 1 952 0 is_stmt 1 discriminator 2
	cmpl	$2, -1268(%rbp)	#, items
	jle	.L259	#,
.LBB42:
	.loc 1 953 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.193
	movq	%rax, %rdx	# PL_stack_max.193, PL_stack_max.194
	movq	%rbx, %rax	# sp, sp.195
	subq	%rax, %rdx	# sp.195, D.12413
	movq	%rdx, %rax	# D.12413, D.12413
	cmpq	$7, %rax	#, D.12413
	jg	.L260	#,
	.loc 1 953 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L260:
	.loc 1 953 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.196
	movl	-1272(%rbp), %edx	# ax, tmp397
	movslq	%edx, %rdx	# tmp397, D.12415
	addq	$2, %rdx	#, D.12415
	salq	$3, %rdx	#, D.12415
	addq	%rdx, %rax	# D.12415, D.12416
	movq	(%rax), %rax	# *_158, D.12421
	movq	%rax, %rdi	# D.12421,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.12421,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12421, *sp_153
.L259:
.LBE42:
	.loc 1 954 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 955 0
	movl	$0, %esi	#,
	movl	$.LC48, %edi	#,
	call	Perl_call_method	#
	movl	%eax, -1300(%rbp)	# tmp398, i
	.loc 1 956 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 957 0
	cmpl	$0, -1300(%rbp)	#, i
	je	.L261	#,
	.loc 1 958 0
	movq	%rbx, %rax	# sp, sp.197
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.197_165, D.12421
	movq	%rax, %rdi	# D.12421,
	call	Perl_newSVsv	#
	movq	%rax, -1256(%rbp)	# tmp399, href
.L261:
	.loc 1 960 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 961 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.198
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.199
	cmpl	%eax, %edx	# PL_tmps_floor.199, PL_tmps_ix.198
	jle	.L262	#,
	.loc 1 961 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L262:
	.loc 1 962 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 963 0
	cmpl	$0, -1300(%rbp)	#, i
	je	.L254	#,
	.loc 1 964 0
	movq	-1256(%rbp), %rax	# href, tmp400
	movq	%rax, %rdi	# tmp400,
	call	Perl_sv_2mortal	#
.L254:
	.loc 1 967 0
	movq	$0, -1224(%rbp)	#, namesav
	movq	-1224(%rbp), %rax	# namesav, tmp401
	movq	%rax, -1232(%rbp)	# tmp401, todumpav
	.loc 1 968 0
	movq	$0, -1240(%rbp)	#, seenhv
	.loc 1 970 0
	movq	$PL_sv_undef, -1144(%rbp)	#, bless
	movq	-1144(%rbp), %rax	# bless, tmp402
	movq	%rax, -1152(%rbp)	# tmp402, toaster
	movq	-1152(%rbp), %rax	# toaster, tmp403
	movq	%rax, -1160(%rbp)	# tmp403, freezer
	movq	-1160(%rbp), %rax	# freezer, tmp404
	movq	%rax, -1168(%rbp)	# tmp404, varname
	.loc 1 969 0
	movq	-1168(%rbp), %rax	# varname, tmp405
	movq	%rax, -1176(%rbp)	# tmp405, pair
	movq	-1176(%rbp), %rax	# pair, tmp406
	movq	%rax, -1184(%rbp)	# tmp406, sep
	movq	-1184(%rbp), %rax	# sep, tmp407
	movq	%rax, -1192(%rbp)	# tmp407, apad
	movq	-1192(%rbp), %rax	# apad, tmp408
	movq	%rax, -1200(%rbp)	# tmp408, xpad
	movq	-1200(%rbp), %rax	# xpad, tmp409
	movq	%rax, -1208(%rbp)	# tmp409, pad
	movq	-1208(%rbp), %rax	# pad, tmp410
	movq	%rax, -1216(%rbp)	# tmp410, val
	.loc 1 971 0
	call	Perl_sv_newmortal	#
	movq	%rax, -1120(%rbp)	# tmp411, name
	.loc 1 972 0
	movl	$2, -1308(%rbp)	#, indent
	.loc 1 973 0
	movl	$0, -1288(%rbp)	#, deepcopy
	movl	-1288(%rbp), %eax	# deepcopy, tmp412
	movl	%eax, -1292(%rbp)	# tmp412, purity
	movl	-1292(%rbp), %eax	# purity, tmp413
	movl	%eax, -1304(%rbp)	# tmp413, terse
	.loc 1 974 0
	movl	$1, -1284(%rbp)	#, quotekeys
	.loc 1 976 0
	movl	$0, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -1248(%rbp)	# tmp414, retval
	.loc 1 977 0
	movq	-1256(%rbp), %rax	# href, tmp415
	movl	12(%rax), %eax	# href_14->sv_flags, D.12419
	andl	$524288, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L263	#,
	.loc 1 978 0
	movq	-1256(%rbp), %rax	# href, tmp416
	movq	(%rax), %rax	# href_14->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XRV *)_193].xrv_rv, tmp417
	movq	%rax, -1112(%rbp)	# tmp417, hv
	cmpq	$0, -1112(%rbp)	#, hv
	je	.L263	#,
	.loc 1 979 0
	movq	-1112(%rbp), %rax	# hv, tmp418
	movl	12(%rax), %eax	# hv_194->sv_flags, D.12419
	movzbl	%al, %eax	# D.12419, D.12419
	cmpl	$11, %eax	#, D.12419
	jne	.L263	#,
	.loc 1 981 0
	movq	-1112(%rbp), %rax	# hv, tmp419
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp419,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp420, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L264	#,
	.loc 1 981 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp421
	movq	(%rax), %rax	# *svp_197, D.12421
	movl	12(%rax), %eax	# _198->sv_flags, D.12419
	andl	$524288, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L264	#,
	.loc 1 982 0 is_stmt 1
	movq	-1104(%rbp), %rax	# svp, tmp422
	movq	(%rax), %rax	# *svp_197, D.12421
	movq	(%rax), %rax	# _201->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XRV *)_202].xrv_rv, tmp423
	movq	%rax, -1240(%rbp)	# tmp423, seenhv
.L264:
	.loc 1 983 0
	movq	-1112(%rbp), %rax	# hv, tmp424
	movl	$0, %ecx	#,
	movl	$6, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp424,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp425, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L265	#,
	.loc 1 983 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp426
	movq	(%rax), %rax	# *svp_204, D.12421
	movl	12(%rax), %eax	# _205->sv_flags, D.12419
	andl	$524288, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L265	#,
	.loc 1 984 0 is_stmt 1
	movq	-1104(%rbp), %rax	# svp, tmp427
	movq	(%rax), %rax	# *svp_204, D.12421
	movq	(%rax), %rax	# _208->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XRV *)_209].xrv_rv, tmp428
	movq	%rax, -1232(%rbp)	# tmp428, todumpav
.L265:
	.loc 1 985 0
	movq	-1112(%rbp), %rax	# hv, tmp429
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp429,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp430, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L266	#,
	.loc 1 985 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp431
	movq	(%rax), %rax	# *svp_211, D.12421
	movl	12(%rax), %eax	# _212->sv_flags, D.12419
	andl	$524288, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L266	#,
	.loc 1 986 0 is_stmt 1
	movq	-1104(%rbp), %rax	# svp, tmp432
	movq	(%rax), %rax	# *svp_211, D.12421
	movq	(%rax), %rax	# _215->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XRV *)_216].xrv_rv, tmp433
	movq	%rax, -1224(%rbp)	# tmp433, namesav
.L266:
	.loc 1 987 0
	movq	-1112(%rbp), %rax	# hv, tmp434
	movl	$0, %ecx	#,
	movl	$6, %edx	#,
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp434,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp435, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L267	#,
	.loc 1 988 0
	movq	-1104(%rbp), %rax	# svp, tmp436
	movq	(%rax), %rax	# *svp_218, D.12421
	movl	12(%rax), %eax	# _219->sv_flags, D.12419
	andl	$65536, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L268	#,
	.loc 1 988 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp437
	movq	(%rax), %rax	# *svp_218, D.12421
	movq	(%rax), %rax	# _222->sv_any, D.12422
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_223].xiv_iv, D.12413
	jmp	.L269	#
.L268:
	.loc 1 988 0 discriminator 2
	movq	-1104(%rbp), %rax	# svp, tmp438
	movq	(%rax), %rax	# *svp_218, D.12421
	movq	%rax, %rdi	# D.12421,
	call	Perl_sv_2iv	#
.L269:
	.loc 1 988 0 discriminator 3
	movl	%eax, -1308(%rbp)	# iftmp.200, indent
.L267:
	.loc 1 989 0 is_stmt 1
	movq	-1112(%rbp), %rax	# hv, tmp439
	movl	$0, %ecx	#,
	movl	$6, %edx	#,
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp439,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp440, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L270	#,
	.loc 1 990 0
	movq	-1104(%rbp), %rax	# svp, tmp441
	movq	(%rax), %rax	# *svp_230, D.12421
	movl	12(%rax), %eax	# _231->sv_flags, D.12419
	andl	$65536, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L271	#,
	.loc 1 990 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp442
	movq	(%rax), %rax	# *svp_230, D.12421
	movq	(%rax), %rax	# _234->sv_any, D.12422
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_235].xiv_iv, D.12413
	jmp	.L272	#
.L271:
	.loc 1 990 0 discriminator 2
	movq	-1104(%rbp), %rax	# svp, tmp443
	movq	(%rax), %rax	# *svp_230, D.12421
	movq	%rax, %rdi	# D.12421,
	call	Perl_sv_2iv	#
.L272:
	.loc 1 990 0 discriminator 3
	movl	%eax, -1292(%rbp)	# iftmp.201, purity
.L270:
	.loc 1 991 0 is_stmt 1
	movq	-1112(%rbp), %rax	# hv, tmp444
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp444,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp445, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L273	#,
	.loc 1 992 0
	movq	-1104(%rbp), %rax	# svp, tmp446
	movq	(%rax), %rax	# *svp_242, D.12421
	testq	%rax, %rax	# D.12421
	je	.L274	#,
	.loc 1 992 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp447
	movq	(%rax), %rax	# *svp_242, D.12421
	movl	12(%rax), %eax	# _244->sv_flags, D.12419
	andl	$262144, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L275	#,
	movq	-1104(%rbp), %rax	# svp, tmp448
	movq	(%rax), %rax	# *svp_242, D.12421
	movq	(%rax), %rax	# _247->sv_any, PL_Xpv.205
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.205, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.206
	testq	%rax, %rax	# PL_Xpv.206
	je	.L276	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.207
	movq	8(%rax), %rax	# PL_Xpv.207_250->xpv_cur, D.12412
	cmpq	$1, %rax	#, D.12412
	ja	.L277	#,
	.loc 1 992 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.208
	movq	8(%rax), %rax	# PL_Xpv.208_252->xpv_cur, D.12412
	testq	%rax, %rax	# D.12412
	je	.L276	#,
	.loc 1 992 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.209
	movq	(%rax), %rax	# PL_Xpv.209_254->xpv_pv, D.12423
	movzbl	(%rax), %eax	# *_255, D.12424
	cmpb	$48, %al	#, D.12424
	je	.L276	#,
.L277:
	.loc 1 992 0 discriminator 3
	movl	$1, %eax	#, iftmp.204
	jmp	.L278	#
.L276:
	.loc 1 992 0 discriminator 2
	movl	$0, %eax	#, iftmp.204
.L278:
	jmp	.L284	#
.L275:
	movq	-1104(%rbp), %rax	# svp, tmp449
	movq	(%rax), %rax	# *svp_242, D.12421
	movl	12(%rax), %eax	# _260->sv_flags, D.12419
	andl	$65536, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L280	#,
	.loc 1 992 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp450
	movq	(%rax), %rax	# *svp_242, D.12421
	movq	(%rax), %rax	# _263->sv_any, D.12422
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_264].xiv_iv, D.12413
	testq	%rax, %rax	# D.12413
	setne	%al	#, D.12418
	movzbl	%al, %eax	# D.12418, iftmp.210
	jmp	.L284	#
.L280:
	.loc 1 992 0 discriminator 2
	movq	-1104(%rbp), %rax	# svp, tmp451
	movq	(%rax), %rax	# *svp_242, D.12421
	movl	12(%rax), %eax	# _268->sv_flags, D.12419
	andl	$131072, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L282	#,
	.loc 1 992 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp452
	movq	(%rax), %rax	# *svp_242, D.12421
	movq	(%rax), %rax	# _271->sv_any, D.12422
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_272].xnv_nv, D.12425
	xorpd	%xmm1, %xmm1	# tmp454
	ucomisd	%xmm1, %xmm0	# tmp454, D.12425
	setp	%dl	#, tmp453
	movl	$1, %eax	#, tmp456
	xorpd	%xmm1, %xmm1	# tmp455
	ucomisd	%xmm1, %xmm0	# tmp455, D.12425
	cmove	%edx, %eax	# tmp453,, D.12418
	movzbl	%al, %eax	# D.12418, iftmp.211
	jmp	.L284	#
.L282:
	.loc 1 992 0 discriminator 2
	movq	-1104(%rbp), %rax	# svp, tmp457
	movq	(%rax), %rax	# *svp_242, D.12421
	movq	%rax, %rdi	# D.12421,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.12424, iftmp.211
	jmp	.L284	#
.L274:
	movl	$0, %eax	#, iftmp.202
.L284:
	.loc 1 992 0 discriminator 3
	movl	%eax, -1304(%rbp)	# iftmp.202, terse
.L273:
	.loc 1 997 0 is_stmt 1
	movq	-1112(%rbp), %rax	# hv, tmp458
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp458,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp459, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L285	#,
	.loc 1 998 0
	movq	-1104(%rbp), %rax	# svp, tmp460
	movq	(%rax), %rax	# *svp_284, tmp461
	movq	%rax, -1208(%rbp)	# tmp461, pad
.L285:
	.loc 1 999 0
	movq	-1112(%rbp), %rax	# hv, tmp462
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp462,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp463, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L286	#,
	.loc 1 1000 0
	movq	-1104(%rbp), %rax	# svp, tmp464
	movq	(%rax), %rax	# *svp_286, tmp465
	movq	%rax, -1200(%rbp)	# tmp465, xpad
.L286:
	.loc 1 1001 0
	movq	-1112(%rbp), %rax	# hv, tmp466
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp466,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp467, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L287	#,
	.loc 1 1002 0
	movq	-1104(%rbp), %rax	# svp, tmp468
	movq	(%rax), %rax	# *svp_288, tmp469
	movq	%rax, -1192(%rbp)	# tmp469, apad
.L287:
	.loc 1 1003 0
	movq	-1112(%rbp), %rax	# hv, tmp470
	movl	$0, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# tmp470,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp471, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L288	#,
	.loc 1 1004 0
	movq	-1104(%rbp), %rax	# svp, tmp472
	movq	(%rax), %rax	# *svp_290, tmp473
	movq	%rax, -1184(%rbp)	# tmp473, sep
.L288:
	.loc 1 1005 0
	movq	-1112(%rbp), %rax	# hv, tmp474
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp474,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp475, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L289	#,
	.loc 1 1006 0
	movq	-1104(%rbp), %rax	# svp, tmp476
	movq	(%rax), %rax	# *svp_292, tmp477
	movq	%rax, -1176(%rbp)	# tmp477, pair
.L289:
	.loc 1 1007 0
	movq	-1112(%rbp), %rax	# hv, tmp478
	movl	$0, %ecx	#,
	movl	$7, %edx	#,
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# tmp478,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp479, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L290	#,
	.loc 1 1008 0
	movq	-1104(%rbp), %rax	# svp, tmp480
	movq	(%rax), %rax	# *svp_294, tmp481
	movq	%rax, -1168(%rbp)	# tmp481, varname
.L290:
	.loc 1 1009 0
	movq	-1112(%rbp), %rax	# hv, tmp482
	movl	$0, %ecx	#,
	movl	$7, %edx	#,
	movl	$.LC61, %esi	#,
	movq	%rax, %rdi	# tmp482,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp483, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L291	#,
	.loc 1 1010 0
	movq	-1104(%rbp), %rax	# svp, tmp484
	movq	(%rax), %rax	# *svp_296, tmp485
	movq	%rax, -1160(%rbp)	# tmp485, freezer
.L291:
	.loc 1 1011 0
	movq	-1112(%rbp), %rax	# hv, tmp486
	movl	$0, %ecx	#,
	movl	$7, %edx	#,
	movl	$.LC62, %esi	#,
	movq	%rax, %rdi	# tmp486,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp487, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L292	#,
	.loc 1 1012 0
	movq	-1104(%rbp), %rax	# svp, tmp488
	movq	(%rax), %rax	# *svp_298, tmp489
	movq	%rax, -1152(%rbp)	# tmp489, toaster
.L292:
	.loc 1 1013 0
	movq	-1112(%rbp), %rax	# hv, tmp490
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp490,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp491, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L293	#,
	.loc 1 1014 0
	movq	-1104(%rbp), %rax	# svp, tmp492
	movq	(%rax), %rax	# *svp_300, D.12421
	testq	%rax, %rax	# D.12421
	je	.L294	#,
	.loc 1 1014 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp493
	movq	(%rax), %rax	# *svp_300, D.12421
	movl	12(%rax), %eax	# _302->sv_flags, D.12419
	andl	$262144, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L295	#,
	movq	-1104(%rbp), %rax	# svp, tmp494
	movq	(%rax), %rax	# *svp_300, D.12421
	movq	(%rax), %rax	# _305->sv_any, PL_Xpv.215
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.215, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.216
	testq	%rax, %rax	# PL_Xpv.216
	je	.L296	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.217
	movq	8(%rax), %rax	# PL_Xpv.217_308->xpv_cur, D.12412
	cmpq	$1, %rax	#, D.12412
	ja	.L297	#,
	.loc 1 1014 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.218
	movq	8(%rax), %rax	# PL_Xpv.218_310->xpv_cur, D.12412
	testq	%rax, %rax	# D.12412
	je	.L296	#,
	.loc 1 1014 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.219
	movq	(%rax), %rax	# PL_Xpv.219_312->xpv_pv, D.12423
	movzbl	(%rax), %eax	# *_313, D.12424
	cmpb	$48, %al	#, D.12424
	je	.L296	#,
.L297:
	.loc 1 1014 0 discriminator 3
	movl	$1, %eax	#, iftmp.214
	jmp	.L298	#
.L296:
	.loc 1 1014 0 discriminator 2
	movl	$0, %eax	#, iftmp.214
.L298:
	jmp	.L304	#
.L295:
	movq	-1104(%rbp), %rax	# svp, tmp495
	movq	(%rax), %rax	# *svp_300, D.12421
	movl	12(%rax), %eax	# _318->sv_flags, D.12419
	andl	$65536, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L300	#,
	.loc 1 1014 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp496
	movq	(%rax), %rax	# *svp_300, D.12421
	movq	(%rax), %rax	# _321->sv_any, D.12422
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_322].xiv_iv, D.12413
	testq	%rax, %rax	# D.12413
	setne	%al	#, D.12418
	movzbl	%al, %eax	# D.12418, iftmp.220
	jmp	.L304	#
.L300:
	.loc 1 1014 0 discriminator 2
	movq	-1104(%rbp), %rax	# svp, tmp497
	movq	(%rax), %rax	# *svp_300, D.12421
	movl	12(%rax), %eax	# _326->sv_flags, D.12419
	andl	$131072, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L302	#,
	.loc 1 1014 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp498
	movq	(%rax), %rax	# *svp_300, D.12421
	movq	(%rax), %rax	# _329->sv_any, D.12422
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_330].xnv_nv, D.12425
	xorpd	%xmm1, %xmm1	# tmp500
	ucomisd	%xmm1, %xmm0	# tmp500, D.12425
	setp	%dl	#, tmp499
	movl	$1, %eax	#, tmp502
	xorpd	%xmm1, %xmm1	# tmp501
	ucomisd	%xmm1, %xmm0	# tmp501, D.12425
	cmove	%edx, %eax	# tmp499,, D.12418
	movzbl	%al, %eax	# D.12418, iftmp.221
	jmp	.L304	#
.L302:
	.loc 1 1014 0 discriminator 2
	movq	-1104(%rbp), %rax	# svp, tmp503
	movq	(%rax), %rax	# *svp_300, D.12421
	movq	%rax, %rdi	# D.12421,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.12424, iftmp.221
	jmp	.L304	#
.L294:
	movl	$0, %eax	#, iftmp.212
.L304:
	.loc 1 1014 0 discriminator 3
	movl	%eax, -1288(%rbp)	# iftmp.212, deepcopy
.L293:
	.loc 1 1015 0 is_stmt 1
	movq	-1112(%rbp), %rax	# hv, tmp504
	movl	$0, %ecx	#,
	movl	$9, %edx	#,
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# tmp504,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp505, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L305	#,
	.loc 1 1016 0
	movq	-1104(%rbp), %rax	# svp, tmp506
	movq	(%rax), %rax	# *svp_342, D.12421
	testq	%rax, %rax	# D.12421
	je	.L306	#,
	.loc 1 1016 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp507
	movq	(%rax), %rax	# *svp_342, D.12421
	movl	12(%rax), %eax	# _344->sv_flags, D.12419
	andl	$262144, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L307	#,
	movq	-1104(%rbp), %rax	# svp, tmp508
	movq	(%rax), %rax	# *svp_342, D.12421
	movq	(%rax), %rax	# _347->sv_any, PL_Xpv.225
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.225, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.226
	testq	%rax, %rax	# PL_Xpv.226
	je	.L308	#,
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.227
	movq	8(%rax), %rax	# PL_Xpv.227_350->xpv_cur, D.12412
	cmpq	$1, %rax	#, D.12412
	ja	.L309	#,
	.loc 1 1016 0 discriminator 4
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.228
	movq	8(%rax), %rax	# PL_Xpv.228_352->xpv_cur, D.12412
	testq	%rax, %rax	# D.12412
	je	.L308	#,
	.loc 1 1016 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.229
	movq	(%rax), %rax	# PL_Xpv.229_354->xpv_pv, D.12423
	movzbl	(%rax), %eax	# *_355, D.12424
	cmpb	$48, %al	#, D.12424
	je	.L308	#,
.L309:
	.loc 1 1016 0 discriminator 3
	movl	$1, %eax	#, iftmp.224
	jmp	.L310	#
.L308:
	.loc 1 1016 0 discriminator 2
	movl	$0, %eax	#, iftmp.224
.L310:
	jmp	.L316	#
.L307:
	movq	-1104(%rbp), %rax	# svp, tmp509
	movq	(%rax), %rax	# *svp_342, D.12421
	movl	12(%rax), %eax	# _360->sv_flags, D.12419
	andl	$65536, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L312	#,
	.loc 1 1016 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp510
	movq	(%rax), %rax	# *svp_342, D.12421
	movq	(%rax), %rax	# _363->sv_any, D.12422
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_364].xiv_iv, D.12413
	testq	%rax, %rax	# D.12413
	setne	%al	#, D.12418
	movzbl	%al, %eax	# D.12418, iftmp.230
	jmp	.L316	#
.L312:
	.loc 1 1016 0 discriminator 2
	movq	-1104(%rbp), %rax	# svp, tmp511
	movq	(%rax), %rax	# *svp_342, D.12421
	movl	12(%rax), %eax	# _368->sv_flags, D.12419
	andl	$131072, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L314	#,
	.loc 1 1016 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp512
	movq	(%rax), %rax	# *svp_342, D.12421
	movq	(%rax), %rax	# _371->sv_any, D.12422
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_372].xnv_nv, D.12425
	xorpd	%xmm1, %xmm1	# tmp514
	ucomisd	%xmm1, %xmm0	# tmp514, D.12425
	setp	%dl	#, tmp513
	movl	$1, %eax	#, tmp516
	xorpd	%xmm1, %xmm1	# tmp515
	ucomisd	%xmm1, %xmm0	# tmp515, D.12425
	cmove	%edx, %eax	# tmp513,, D.12418
	movzbl	%al, %eax	# D.12418, iftmp.231
	jmp	.L316	#
.L314:
	.loc 1 1016 0 discriminator 2
	movq	-1104(%rbp), %rax	# svp, tmp517
	movq	(%rax), %rax	# *svp_342, D.12421
	movq	%rax, %rdi	# D.12421,
	call	Perl_sv_2bool	#
	movsbl	%al, %eax	# D.12424, iftmp.231
	jmp	.L316	#
.L306:
	movl	$0, %eax	#, iftmp.222
.L316:
	.loc 1 1016 0 discriminator 3
	movl	%eax, -1284(%rbp)	# iftmp.222, quotekeys
.L305:
	.loc 1 1017 0 is_stmt 1
	movq	-1112(%rbp), %rax	# hv, tmp518
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movl	$.LC65, %esi	#,
	movq	%rax, %rdi	# tmp518,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp519, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L317	#,
	.loc 1 1018 0
	movq	-1104(%rbp), %rax	# svp, tmp520
	movq	(%rax), %rax	# *svp_384, tmp521
	movq	%rax, -1144(%rbp)	# tmp521, bless
.L317:
	.loc 1 1019 0
	movq	-1112(%rbp), %rax	# hv, tmp522
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movl	$.LC66, %esi	#,
	movq	%rax, %rdi	# tmp522,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp523, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L318	#,
	.loc 1 1020 0
	movq	-1104(%rbp), %rax	# svp, tmp524
	movq	(%rax), %rax	# *svp_386, D.12421
	movl	12(%rax), %eax	# _387->sv_flags, D.12419
	andl	$65536, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L319	#,
	.loc 1 1020 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp525
	movq	(%rax), %rax	# *svp_386, D.12421
	movq	(%rax), %rax	# _390->sv_any, D.12422
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_391].xiv_iv, D.12413
	jmp	.L320	#
.L319:
	.loc 1 1020 0 discriminator 2
	movq	-1104(%rbp), %rax	# svp, tmp526
	movq	(%rax), %rax	# *svp_386, D.12421
	movq	%rax, %rdi	# D.12421,
	call	Perl_sv_2iv	#
.L320:
	.loc 1 1020 0 discriminator 3
	movl	%eax, -1280(%rbp)	# iftmp.232, maxdepth
.L318:
	.loc 1 1021 0 is_stmt 1
	movq	-1112(%rbp), %rax	# hv, tmp527
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movl	$.LC67, %esi	#,
	movq	%rax, %rdi	# tmp527,
	call	Perl_hv_fetch	#
	movq	%rax, -1104(%rbp)	# tmp528, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L321	#,
	.loc 1 1022 0
	movq	-1104(%rbp), %rax	# svp, tmp529
	movq	(%rax), %rax	# *svp_398, tmp530
	movq	%rax, -1136(%rbp)	# tmp530, sortkeys
	.loc 1 1023 0
	cmpq	$0, -1136(%rbp)	#, sortkeys
	je	.L322	#,
	.loc 1 1023 0 is_stmt 0 discriminator 1
	movq	-1136(%rbp), %rax	# sortkeys, tmp531
	movl	12(%rax), %eax	# sortkeys_400->sv_flags, D.12419
	andl	$262144, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L323	#,
	.loc 1 1023 0 discriminator 3
	movq	-1136(%rbp), %rax	# sortkeys, tmp532
	movq	(%rax), %rax	# sortkeys_400->sv_any, PL_Xpv.236
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.236, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.237
	testq	%rax, %rax	# PL_Xpv.237
	je	.L324	#,
	.loc 1 1023 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.238
	movq	8(%rax), %rax	# PL_Xpv.238_405->xpv_cur, D.12412
	cmpq	$1, %rax	#, D.12412
	ja	.L325	#,
	.loc 1 1023 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.239
	movq	8(%rax), %rax	# PL_Xpv.239_407->xpv_cur, D.12412
	testq	%rax, %rax	# D.12412
	je	.L324	#,
	.loc 1 1023 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.240
	movq	(%rax), %rax	# PL_Xpv.240_409->xpv_pv, D.12423
	movzbl	(%rax), %eax	# *_410, D.12424
	cmpb	$48, %al	#, D.12424
	jne	.L325	#,
.L324:
	.loc 1 1023 0 discriminator 5
	movl	$1, %eax	#, iftmp.235
	jmp	.L326	#
.L325:
	.loc 1 1023 0 discriminator 8
	movl	$0, %eax	#, iftmp.235
.L326:
	.loc 1 1023 0 discriminator 9
	andl	$1, %eax	#, iftmp.234
	jmp	.L332	#
.L323:
	.loc 1 1023 0 discriminator 4
	movq	-1136(%rbp), %rax	# sortkeys, tmp533
	movl	12(%rax), %eax	# sortkeys_400->sv_flags, D.12419
	andl	$65536, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L328	#,
	.loc 1 1023 0 discriminator 10
	movq	-1136(%rbp), %rax	# sortkeys, tmp534
	movq	(%rax), %rax	# sortkeys_400->sv_any, D.12422
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_417].xiv_iv, D.12413
	testq	%rax, %rax	# D.12413
	sete	%al	#, iftmp.241
	jmp	.L332	#
.L328:
	.loc 1 1023 0 discriminator 11
	movq	-1136(%rbp), %rax	# sortkeys, tmp535
	movl	12(%rax), %eax	# sortkeys_400->sv_flags, D.12419
	andl	$131072, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L330	#,
	.loc 1 1023 0 discriminator 12
	movq	-1136(%rbp), %rax	# sortkeys, tmp536
	movq	(%rax), %rax	# sortkeys_400->sv_any, D.12422
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_422].xnv_nv, D.12425
	xorpd	%xmm1, %xmm1	# tmp538
	ucomisd	%xmm1, %xmm0	# tmp538, D.12425
	setnp	%dl	#, tmp537
	movl	$0, %eax	#, tmp540
	xorpd	%xmm1, %xmm1	# tmp539
	ucomisd	%xmm1, %xmm0	# tmp539, D.12425
	cmove	%edx, %eax	# tmp537,, iftmp.242
	jmp	.L332	#
.L330:
	.loc 1 1023 0 discriminator 13
	movq	-1136(%rbp), %rax	# sortkeys, tmp541
	movq	%rax, %rdi	# tmp541,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.12424
	sete	%al	#, iftmp.242
	jmp	.L332	#
.L322:
	.loc 1 1023 0 discriminator 2
	movl	$1, %eax	#, iftmp.233
.L332:
	.loc 1 1023 0 discriminator 16
	testb	%al, %al	# iftmp.233
	je	.L333	#,
	.loc 1 1024 0 is_stmt 1
	movq	$0, -1136(%rbp)	#, sortkeys
	jmp	.L321	#
.L333:
	.loc 1 1025 0
	movq	-1136(%rbp), %rax	# sortkeys, tmp542
	movl	12(%rax), %eax	# sortkeys_400->sv_flags, D.12419
	andl	$524288, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L334	#,
	.loc 1 1026 0 discriminator 1
	movq	-1136(%rbp), %rax	# sortkeys, tmp543
	movq	(%rax), %rax	# sortkeys_400->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XRV *)_434].xrv_rv, D.12421
	movl	12(%rax), %eax	# _435->sv_flags, D.12419
	movzbl	%al, %eax	# D.12419, D.12419
	.loc 1 1025 0 discriminator 1
	cmpl	$12, %eax	#, D.12419
	je	.L321	#,
.L334:
	.loc 1 1029 0
	movq	$PL_sv_yes, -1136(%rbp)	#, sortkeys
.L321:
	.loc 1 1032 0
	call	Perl_newAV	#
	movq	%rax, -1096(%rbp)	# tmp544, postav
	.loc 1 1034 0
	cmpq	$0, -1232(%rbp)	#, todumpav
	je	.L335	#,
	.loc 1 1035 0
	movq	-1232(%rbp), %rax	# todumpav, tmp545
	movq	%rax, %rdi	# tmp545,
	call	Perl_av_len	#
	movl	%eax, -1296(%rbp)	# tmp546, imax
	jmp	.L336	#
.L335:
	.loc 1 1037 0
	movl	$-1, -1296(%rbp)	#, imax
.L336:
	.loc 1 1038 0
	movl	$0, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -1088(%rbp)	# tmp547, valstr
	.loc 1 1039 0
	movl	$0, -1300(%rbp)	#, i
	jmp	.L337	#
.L365:
.LBB43:
	.loc 1 1042 0
	movq	-1096(%rbp), %rax	# postav, tmp548
	movq	%rax, %rdi	# tmp548,
	call	Perl_av_clear	#
	.loc 1 1043 0
	movl	-1300(%rbp), %ecx	# i, tmp549
	movq	-1232(%rbp), %rax	# todumpav, tmp550
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp549,
	movq	%rax, %rdi	# tmp550,
	call	Perl_av_fetch	#
	movq	%rax, -1104(%rbp)	# tmp551, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L338	#,
	.loc 1 1044 0
	movq	-1104(%rbp), %rax	# svp, tmp552
	movq	(%rax), %rax	# *svp_444, tmp553
	movq	%rax, -1216(%rbp)	# tmp553, val
	jmp	.L339	#
.L338:
	.loc 1 1046 0
	movq	$PL_sv_undef, -1216(%rbp)	#, val
.L339:
	.loc 1 1047 0
	movl	-1300(%rbp), %ecx	# i, tmp554
	movq	-1224(%rbp), %rax	# namesav, tmp555
	movl	$1, %edx	#,
	movl	%ecx, %esi	# tmp554,
	movq	%rax, %rdi	# tmp555,
	call	Perl_av_fetch	#
	movq	%rax, -1104(%rbp)	# tmp556, svp
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L340	#,
	.loc 1 1048 0
	movq	-1104(%rbp), %rax	# svp, tmp557
	movq	(%rax), %rcx	# *svp_447, D.12421
	movq	-1120(%rbp), %rax	# name, tmp558
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.12421,
	movq	%rax, %rdi	# tmp558,
	call	Perl_sv_setsv_flags	#
	jmp	.L341	#
.L340:
	.loc 1 1050 0
	movq	-1120(%rbp), %rax	# name, tmp559
	movl	12(%rax), %eax	# name_184->sv_flags, D.12419
	andl	$1223753727, %eax	#, D.12419
	movl	%eax, %edx	# D.12419, D.12419
	movq	-1120(%rbp), %rax	# name, tmp560
	movl	%edx, 12(%rax)	# D.12419, name_184->sv_flags
	movq	-1120(%rbp), %rax	# name, tmp561
	movl	12(%rax), %eax	# name_184->sv_flags, D.12419
	andl	$2097152, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L341	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	movq	-1120(%rbp), %rax	# name, tmp562
	movq	%rax, %rdi	# tmp562,
	call	Perl_sv_backoff	#
	testl	%eax, %eax	# D.12411
	je	.L341	#,
	.loc 1 1050 0
	nop
.L341:
	.loc 1 1052 0 is_stmt 1
	movq	-1120(%rbp), %rax	# name, tmp563
	movl	12(%rax), %eax	# name_184->sv_flags, D.12419
	andl	$118423552, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L343	#,
	.loc 1 1053 0
	movq	-1120(%rbp), %rax	# name, tmp564
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XPV *)_458].xpv_pv, D.12423
	movzbl	(%rax), %eax	# *_459, D.12424
	cmpb	$42, %al	#, D.12424
	jne	.L344	#,
	.loc 1 1054 0
	movq	-1216(%rbp), %rax	# val, tmp565
	movl	12(%rax), %eax	# val_25->sv_flags, D.12419
	andl	$524288, %eax	#, D.12419
	testl	%eax, %eax	# D.12419
	je	.L345	#,
	.loc 1 1055 0
	movq	-1216(%rbp), %rax	# val, tmp566
	movq	(%rax), %rax	# val_25->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XRV *)_463].xrv_rv, D.12421
	movl	12(%rax), %eax	# _464->sv_flags, D.12419
	movzbl	%al, %eax	# D.12419, D.12419
	cmpl	$11, %eax	#, D.12419
	je	.L347	#,
	cmpl	$12, %eax	#, D.12419
	je	.L348	#,
	cmpl	$10, %eax	#, D.12419
	jne	.L371	#,
	.loc 1 1057 0
	movq	-1120(%rbp), %rax	# name, tmp567
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XPV *)_467].xpv_pv, D.12423
	movb	$64, (%rax)	#, *_468
	.loc 1 1058 0
	jmp	.L350	#
.L347:
	.loc 1 1060 0
	movq	-1120(%rbp), %rax	# name, tmp568
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XPV *)_469].xpv_pv, D.12423
	movb	$37, (%rax)	#, *_470
	.loc 1 1061 0
	jmp	.L350	#
.L348:
	.loc 1 1063 0
	movq	-1120(%rbp), %rax	# name, tmp569
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XPV *)_471].xpv_pv, D.12423
	movb	$42, (%rax)	#, *_472
	.loc 1 1064 0
	jmp	.L350	#
.L371:
	.loc 1 1066 0
	movq	-1120(%rbp), %rax	# name, tmp570
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XPV *)_473].xpv_pv, D.12423
	movb	$36, (%rax)	#, *_474
	.loc 1 1067 0
	nop
.L350:
	jmp	.L353	#
.L345:
	.loc 1 1071 0
	movq	-1120(%rbp), %rax	# name, tmp571
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XPV *)_475].xpv_pv, D.12423
	movb	$36, (%rax)	#, *_476
	jmp	.L353	#
.L344:
	.loc 1 1073 0
	movq	-1120(%rbp), %rax	# name, tmp572
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	(%rax), %rax	# MEM[(struct XPV *)_477].xpv_pv, D.12423
	movzbl	(%rax), %eax	# *_478, D.12424
	cmpb	$36, %al	#, D.12424
	je	.L353	#,
	.loc 1 1074 0
	movq	-1120(%rbp), %rax	# name, tmp573
	movl	$1, %r8d	#,
	movl	$.LC68, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp573,
	call	Perl_sv_insert	#
	jmp	.L353	#
.L343:
.LBB44:
	.loc 1 1077 0
	movq	$0, -1080(%rbp)	#, nchars
	.loc 1 1078 0
	movq	-1120(%rbp), %rax	# name, tmp574
	movl	$1, %edx	#,
	movl	$.LC68, %esi	#,
	movq	%rax, %rdi	# tmp574,
	call	Perl_sv_setpvn	#
	.loc 1 1079 0
	movq	-1168(%rbp), %rcx	# varname, tmp575
	movq	-1120(%rbp), %rax	# name, tmp576
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp575,
	movq	%rax, %rdi	# tmp576,
	call	Perl_sv_catsv_flags	#
	.loc 1 1080 0
	movl	-1300(%rbp), %eax	# i, tmp577
	addl	$1, %eax	#, D.12411
	movslq	%eax, %rdx	# D.12411, D.12413
	leaq	-1056(%rbp), %rax	#, tmp578
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp578,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 1081 0
	leaq	-1056(%rbp), %rax	#, tmp579
	movq	%rax, %rdi	# tmp579,
	call	strlen	#
	movq	%rax, -1080(%rbp)	# tmp580, nchars
	.loc 1 1082 0
	movq	-1080(%rbp), %rdx	# nchars, tmp581
	leaq	-1056(%rbp), %rsi	#, tmp582
	movq	-1120(%rbp), %rax	# name, tmp583
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp583,
	call	Perl_sv_catpvn_flags	#
.L353:
.LBE44:
	.loc 1 1085 0
	cmpl	$1, -1308(%rbp)	#, indent
	jle	.L354	#,
.LBB45:
	.loc 1 1086 0
	movq	-1120(%rbp), %rax	# name, tmp584
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	8(%rax), %rax	# MEM[(struct XPV *)_484].xpv_cur, D.12412
	addl	$3, %eax	#, D.12414
	movl	%eax, %ecx	# D.12411,
	movl	$1, %edx	#,
	movl	$.LC19, %esi	#,
	movl	$0, %edi	#,
	call	sv_x	#
	movq	%rax, -1072(%rbp)	# tmp585, tmpsv
	.loc 1 1087 0
	movq	-1192(%rbp), %rax	# apad, tmp586
	movq	%rax, %rdi	# tmp586,
	call	Perl_newSVsv	#
	movq	%rax, -1128(%rbp)	# tmp587, newapad
	.loc 1 1088 0
	movq	-1072(%rbp), %rcx	# tmpsv, tmp588
	movq	-1128(%rbp), %rax	# newapad, tmp589
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp588,
	movq	%rax, %rdi	# tmp589,
	call	Perl_sv_catsv_flags	#
	.loc 1 1089 0
	movq	-1072(%rbp), %rax	# tmpsv, tmp590
	movq	%rax, %rdi	# tmp590,
	call	Perl_sv_free	#
.LBE45:
	jmp	.L355	#
.L354:
	.loc 1 1092 0
	movq	-1192(%rbp), %rax	# apad, tmp591
	movq	%rax, -1128(%rbp)	# tmp591, newapad
.L355:
	.loc 1 1094 0
	movq	-1120(%rbp), %rax	# name, tmp592
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_492].xpv_cur, D.12412
	movq	-1120(%rbp), %rax	# name, tmp593
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	(%rax), %rsi	# MEM[(struct XPV *)_494].xpv_pv, D.12423
	movq	-1096(%rbp), %r9	# postav, tmp594
	movq	-1240(%rbp), %r8	# seenhv, tmp595
	movq	-1088(%rbp), %rcx	# valstr, tmp596
	movq	-1216(%rbp), %rax	# val, tmp597
	movq	-1136(%rbp), %rdi	# sortkeys, tmp598
	movq	%rdi, 112(%rsp)	# tmp598,
	movl	-1280(%rbp), %edi	# maxdepth, tmp599
	movl	%edi, 104(%rsp)	# tmp599,
	movq	-1144(%rbp), %rdi	# bless, tmp600
	movq	%rdi, 96(%rsp)	# tmp600,
	movl	-1284(%rbp), %edi	# quotekeys, tmp601
	movl	%edi, 88(%rsp)	# tmp601,
	movl	-1288(%rbp), %edi	# deepcopy, tmp602
	movl	%edi, 80(%rsp)	# tmp602,
	movl	-1292(%rbp), %edi	# purity, tmp603
	movl	%edi, 72(%rsp)	# tmp603,
	movq	-1152(%rbp), %rdi	# toaster, tmp604
	movq	%rdi, 64(%rsp)	# tmp604,
	movq	-1160(%rbp), %rdi	# freezer, tmp605
	movq	%rdi, 56(%rsp)	# tmp605,
	movq	-1176(%rbp), %rdi	# pair, tmp606
	movq	%rdi, 48(%rsp)	# tmp606,
	movq	-1184(%rbp), %rdi	# sep, tmp607
	movq	%rdi, 40(%rsp)	# tmp607,
	movq	-1128(%rbp), %rdi	# newapad, tmp608
	movq	%rdi, 32(%rsp)	# tmp608,
	movq	-1200(%rbp), %rdi	# xpad, tmp609
	movq	%rdi, 24(%rsp)	# tmp609,
	movq	-1208(%rbp), %rdi	# pad, tmp610
	movq	%rdi, 16(%rsp)	# tmp610,
	movl	-1308(%rbp), %edi	# indent, tmp611
	movl	%edi, 8(%rsp)	# tmp611,
	leaq	-1312(%rbp), %rdi	#, tmp612
	movq	%rdi, (%rsp)	# tmp612,
	movq	%rax, %rdi	# tmp597,
	call	DD_dump	#
	.loc 1 1099 0
	cmpl	$1, -1308(%rbp)	#, indent
	jle	.L356	#,
	.loc 1 1100 0
	movq	-1128(%rbp), %rax	# newapad, tmp613
	movq	%rax, %rdi	# tmp613,
	call	Perl_sv_free	#
.L356:
	.loc 1 1102 0
	movq	-1096(%rbp), %rax	# postav, tmp614
	movq	%rax, %rdi	# tmp614,
	call	Perl_av_len	#
	movl	%eax, -1260(%rbp)	# tmp615, postlen
	.loc 1 1103 0
	cmpl	$0, -1260(%rbp)	#, postlen
	jns	.L357	#,
	.loc 1 1103 0 is_stmt 0 discriminator 1
	cmpl	$0, -1304(%rbp)	#, terse
	jne	.L358	#,
.L357:
	.loc 1 1104 0 is_stmt 1
	movq	-1088(%rbp), %rax	# valstr, tmp616
	movl	$3, %r8d	#,
	movl	$.LC8, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp616,
	call	Perl_sv_insert	#
	.loc 1 1105 0
	movq	-1120(%rbp), %rax	# name, tmp617
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	8(%rax), %rcx	# MEM[(struct XPV *)_497].xpv_cur, D.12412
	movq	-1120(%rbp), %rax	# name, tmp618
	movq	(%rax), %rax	# name_184->sv_any, D.12422
	movq	(%rax), %rdx	# MEM[(struct XPV *)_499].xpv_pv, D.12423
	movq	-1088(%rbp), %rax	# valstr, tmp619
	movq	%rcx, %r8	# D.12412,
	movq	%rdx, %rcx	# D.12423,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp619,
	call	Perl_sv_insert	#
	.loc 1 1106 0
	movq	-1088(%rbp), %rax	# valstr, tmp620
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# tmp620,
	call	Perl_sv_catpvn_flags	#
.L358:
	.loc 1 1108 0
	movq	-1208(%rbp), %rcx	# pad, tmp621
	movq	-1248(%rbp), %rax	# retval, tmp622
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp621,
	movq	%rax, %rdi	# tmp622,
	call	Perl_sv_catsv_flags	#
	.loc 1 1109 0
	movq	-1088(%rbp), %rcx	# valstr, tmp623
	movq	-1248(%rbp), %rax	# retval, tmp624
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp623,
	movq	%rax, %rdi	# tmp624,
	call	Perl_sv_catsv_flags	#
	.loc 1 1110 0
	movq	-1184(%rbp), %rcx	# sep, tmp625
	movq	-1248(%rbp), %rax	# retval, tmp626
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp625,
	movq	%rax, %rdi	# tmp626,
	call	Perl_sv_catsv_flags	#
	.loc 1 1111 0
	cmpl	$0, -1260(%rbp)	#, postlen
	js	.L359	#,
.LBB46:
	.loc 1 1113 0
	movq	-1208(%rbp), %rcx	# pad, tmp627
	movq	-1248(%rbp), %rax	# retval, tmp628
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp627,
	movq	%rax, %rdi	# tmp628,
	call	Perl_sv_catsv_flags	#
	.loc 1 1114 0
	movl	$0, -1276(%rbp)	#, i
	jmp	.L360	#
.L362:
.LBB47:
	.loc 1 1116 0
	movl	-1276(%rbp), %ecx	# i, tmp629
	movq	-1096(%rbp), %rax	# postav, tmp630
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp629,
	movq	%rax, %rdi	# tmp630,
	call	Perl_av_fetch	#
	movq	%rax, -1104(%rbp)	# tmp631, svp
	.loc 1 1117 0
	cmpq	$0, -1104(%rbp)	#, svp
	je	.L361	#,
	.loc 1 1117 0 is_stmt 0 discriminator 1
	movq	-1104(%rbp), %rax	# svp, tmp632
	movq	(%rax), %rax	# *svp_502, tmp633
	movq	%rax, -1064(%rbp)	# tmp633, elem
	cmpq	$0, -1064(%rbp)	#, elem
	je	.L361	#,
	.loc 1 1118 0 is_stmt 1
	movq	-1064(%rbp), %rcx	# elem, tmp634
	movq	-1248(%rbp), %rax	# retval, tmp635
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp634,
	movq	%rax, %rdi	# tmp635,
	call	Perl_sv_catsv_flags	#
	.loc 1 1119 0
	movl	-1276(%rbp), %eax	# i, tmp636
	cmpl	-1260(%rbp), %eax	# postlen, tmp636
	jge	.L361	#,
	.loc 1 1120 0
	movq	-1248(%rbp), %rax	# retval, tmp637
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# tmp637,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1121 0
	movq	-1184(%rbp), %rcx	# sep, tmp638
	movq	-1248(%rbp), %rax	# retval, tmp639
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp638,
	movq	%rax, %rdi	# tmp639,
	call	Perl_sv_catsv_flags	#
	.loc 1 1122 0
	movq	-1208(%rbp), %rcx	# pad, tmp640
	movq	-1248(%rbp), %rax	# retval, tmp641
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp640,
	movq	%rax, %rdi	# tmp641,
	call	Perl_sv_catsv_flags	#
.L361:
.LBE47:
	.loc 1 1114 0
	addl	$1, -1276(%rbp)	#, i
.L360:
	.loc 1 1114 0 is_stmt 0 discriminator 1
	movl	-1276(%rbp), %eax	# i, tmp642
	cmpl	-1260(%rbp), %eax	# postlen, tmp642
	jle	.L362	#,
	.loc 1 1126 0 is_stmt 1
	movq	-1248(%rbp), %rax	# retval, tmp643
	movl	$2, %ecx	#,
	movl	$1, %edx	#,
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# tmp643,
	call	Perl_sv_catpvn_flags	#
	.loc 1 1127 0
	movq	-1184(%rbp), %rcx	# sep, tmp644
	movq	-1248(%rbp), %rax	# retval, tmp645
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp644,
	movq	%rax, %rdi	# tmp645,
	call	Perl_sv_catsv_flags	#
.L359:
.LBE46:
	.loc 1 1129 0
	movq	-1088(%rbp), %rax	# valstr, tmp646
	movl	$0, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp646,
	call	Perl_sv_setpvn	#
	.loc 1 1130 0
	cmpl	$1, -1264(%rbp)	#, gimme
	jne	.L363	#,
.LBB48:
	.loc 1 1131 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.244
	movq	%rax, %rdx	# PL_stack_max.244, PL_stack_max.245
	movq	%rbx, %rax	# sp, sp.246
	subq	%rax, %rdx	# sp.246, D.12413
	movq	%rdx, %rax	# D.12413, D.12413
	cmpq	$7, %rax	#, D.12413
	jg	.L364	#,
	.loc 1 1131 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L364:
	.loc 1 1131 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-1248(%rbp), %rax	# retval, tmp647
	movq	%rax, %rdi	# tmp647,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12421, *sp_510
.LBE48:
	.loc 1 1132 0 is_stmt 1 discriminator 2
	movl	-1300(%rbp), %eax	# i, tmp648
	cmpl	-1296(%rbp), %eax	# imax, tmp648
	jge	.L363	#,
	.loc 1 1133 0
	movl	$0, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -1248(%rbp)	# tmp649, retval
.L363:
.LBE43:
	.loc 1 1039 0
	addl	$1, -1300(%rbp)	#, i
.L337:
	.loc 1 1039 0 is_stmt 0 discriminator 1
	movl	-1300(%rbp), %eax	# i, tmp650
	cmpl	-1296(%rbp), %eax	# imax, tmp650
	jle	.L365	#,
	.loc 1 1136 0 is_stmt 1
	movq	-1096(%rbp), %rax	# postav, tmp651
	movq	%rax, %rdi	# tmp651,
	call	Perl_sv_free	#
	.loc 1 1137 0
	movq	-1088(%rbp), %rax	# valstr, tmp652
	movq	%rax, %rdi	# tmp652,
	call	Perl_sv_free	#
	jmp	.L366	#
.L263:
	.loc 1 1140 0
	movl	$.LC70, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L366:
	.loc 1 1141 0
	cmpl	$0, -1264(%rbp)	#, gimme
	jne	.L367	#,
.LBB49:
	.loc 1 1142 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.247
	movq	%rax, %rdx	# PL_stack_max.247, PL_stack_max.248
	movq	%rbx, %rax	# sp, sp.249
	subq	%rax, %rdx	# sp.249, D.12413
	movq	%rdx, %rax	# D.12413, D.12413
	cmpq	$7, %rax	#, D.12413
	jg	.L368	#,
	.loc 1 1142 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L368:
	.loc 1 1142 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-1248(%rbp), %rax	# retval, tmp653
	movq	%rax, %rdi	# tmp653,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.12421, *sp_520
.L367:
.LBE49:
.LBE38:
	.loc 1 1145 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1146 0
	nop
.LBE37:
	.loc 1 1148 0
	movq	-24(%rbp), %rax	# D.12426, tmp655
	xorq	%fs:40, %rax	#, tmp655
	je	.L370	#,
	call	__stack_chk_fail	#
.L370:
	addq	$1424, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	XS_Data__Dumper_Dumpxs, .-XS_Data__Dumper_Dumpxs
	.section	.rodata
.LC71:
	.string	"Dumper.c"
.LC72:
	.string	"Data::Dumper::Dumpxs"
.LC73:
	.string	"$;$$"
	.text
	.globl	boot_Data__Dumper
	.type	boot_Data__Dumper, @function
boot_Data__Dumper:
.LFB9:
	.loc 1 1155 0
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
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 1156 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.250
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.251
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.253
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.253, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.252_4, D.12452
	cltq
	salq	$3, %rax	#, D.12453
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.254
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.255
	subq	%rax, %rdx	# PL_stack_base.256, D.12454
	movq	%rdx, %rax	# D.12454, D.12454
	sarq	$3, %rax	#, tmp91
	addl	$1, %eax	#, D.12455
	movl	%eax, -40(%rbp)	# D.12455, ax
	movq	%r12, %rdx	# sp, sp.257
	movq	%rbx, %rax	# mark, mark.258
	subq	%rax, %rdx	# mark.258, D.12454
	movq	%rdx, %rax	# D.12454, D.12454
	sarq	$3, %rax	#, tmp92
	movl	%eax, -36(%rbp)	# D.12454, items
	.loc 1 1157 0
	movq	$.LC71, -32(%rbp)	#, file
	.loc 1 1161 0
	movq	-32(%rbp), %rax	# file, tmp93
	movq	%rax, %rdx	# tmp93,
	movl	$XS_Data__Dumper_Dumpxs, %esi	#,
	movl	$.LC72, %edi	#,
	call	Perl_newXS	#
	movl	$.LC73, %esi	#,
	movq	%rax, %rdi	# D.12456,
	call	Perl_sv_setpv	#
.LBB50:
	.loc 1 1162 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.259
	movl	-40(%rbp), %edx	# ax, tmp94
	movslq	%edx, %rdx	# tmp94, D.12453
	salq	$3, %rdx	#, D.12453
	addq	%rdx, %rax	# D.12453, D.12457
	movq	$PL_sv_yes, (%rax)	#, *_28
.LBB51:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.260
	movl	-40(%rbp), %edx	# ax, tmp95
	movslq	%edx, %rcx	# tmp95, D.12458
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.261
	addq	%rcx, %rdx	# D.12458, D.12458
	salq	$3, %rdx	#, D.12458
	subq	$8, %rdx	#, D.12458
	addq	%rdx, %rax	# D.12458, PL_stack_sp.262
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.262, PL_stack_sp
	nop
.LBE51:
.LBE50:
	.loc 1 1163 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	boot_Data__Dumper, .-boot_Data__Dumper
	.data
	.align 16
	.type	sizes.10505, @object
	.size	sizes.10505, 24
sizes.10505:
	.quad	8
	.quad	7
	.quad	6
	.align 16
	.type	entries.10504, @object
	.size	entries.10504, 24
entries.10504:
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "cop.h"
	.file 9 "sv.h"
	.file 10 "regexp.h"
	.file 11 "gv.h"
	.file 12 "mg.h"
	.file 13 "av.h"
	.file 14 "hv.h"
	.file 15 "cv.h"
	.file 16 "handy.h"
	.file 17 "perlio.h"
	.file 18 "pad.h"
	.file 19 "utf8.h"
	.file 20 "intrpvar.h"
	.file 21 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x20bc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF338
	.byte	0x1
	.long	.LASF339
	.long	.LASF340
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x6d
	.long	0x6e
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x7f
	.uleb128 0x8
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xc0
	.uleb128 0x9
	.long	.LASF189
	.uleb128 0xa
	.string	"IV"
	.byte	0x6
	.value	0x52b
	.long	0x5e
	.uleb128 0xa
	.string	"UV"
	.byte	0x6
	.value	0x52c
	.long	0x42
	.uleb128 0xa
	.string	"NV"
	.byte	0x6
	.value	0x5f3
	.long	0xe6
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0xb
	.long	.LASF15
	.byte	0x6
	.value	0x7d3
	.long	0x91
	.uleb128 0xa
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x104
	.uleb128 0xc
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x170
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xe3
	.long	0xf6d
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xf6d
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xff1
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xfdb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xddf
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xddf
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xdd5
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xdd5
	.byte	0x25
	.byte	0
	.uleb128 0xa
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x17c
	.uleb128 0xc
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x249
	.uleb128 0xd
	.long	.LASF16
	.byte	0x8
	.byte	0x11
	.long	0xf6d
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0xf6d
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0xff1
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0xfdb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xddf
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xddf
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xdd5
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xdd5
	.byte	0x25
	.uleb128 0xd
	.long	.LASF24
	.byte	0x8
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0xd
	.long	.LASF25
	.byte	0x8
	.byte	0x17
	.long	0xf55
	.byte	0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0xf8a
	.byte	0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xdf5
	.byte	0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xdea
	.byte	0x44
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xe00
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xe1d
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xe1d
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x7db
	.long	0x255
	.uleb128 0xe
	.long	.LASF33
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x343
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xf6d
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xf6d
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xff1
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xfdb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xddf
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xddf
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xdd5
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xdd5
	.byte	0x25
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xf6d
	.byte	0x28
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xf6d
	.byte	0x30
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xf6d
	.byte	0x38
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xf6d
	.byte	0x40
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0xff7
	.byte	0x48
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0xffd
	.byte	0x50
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xdf5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xdf5
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xdd5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0xf55
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.value	0x7e1
	.long	0x34f
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x36a
	.uleb128 0xf
	.long	.LASF46
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x375
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x3a5
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x45
	.long	0xdf5
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xdf5
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x3b0
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x3e0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x56
	.long	0xf3d
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xdf5
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xdf5
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x3eb
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x41b
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x5c
	.long	0xf43
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xdf5
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xdf5
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x426
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x456
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x50
	.long	0xf37
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xdf5
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xdf5
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.value	0x7ee
	.long	0x462
	.uleb128 0xe
	.long	.LASF51
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x53b
	.uleb128 0xd
	.long	.LASF52
	.byte	0xa
	.byte	0x20
	.long	0xe90
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xe90
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xe96
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xea1
	.byte	0x18
	.uleb128 0xd
	.long	.LASF56
	.byte	0xa
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF57
	.byte	0xa
	.byte	0x25
	.long	0xeac
	.byte	0x28
	.uleb128 0xd
	.long	.LASF58
	.byte	0xa
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF59
	.byte	0xa
	.byte	0x28
	.long	0xeb2
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xdea
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xdea
	.byte	0x44
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xdea
	.byte	0x48
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xdea
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xdf5
	.byte	0x50
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xdf5
	.byte	0x54
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xdf5
	.byte	0x58
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xdf5
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xeb8
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x546
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x5e2
	.uleb128 0xd
	.long	.LASF69
	.byte	0xb
	.byte	0xc
	.long	0xe1d
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xdf5
	.byte	0x8
	.uleb128 0xd
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0xfca
	.byte	0x10
	.uleb128 0xd
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0xf7e
	.byte	0x18
	.uleb128 0xd
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0xf90
	.byte	0x20
	.uleb128 0xd
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0xf55
	.byte	0x28
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0xf8a
	.byte	0x30
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0xf7e
	.byte	0x38
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xdf5
	.byte	0x40
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xdf5
	.byte	0x44
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xe00
	.byte	0x48
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x5ed
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x61d
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x4a
	.long	0xf31
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xdf5
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xdf5
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x64d
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x62
	.long	0xf49
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xdf5
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xdf5
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.value	0x7f5
	.long	0x659
	.uleb128 0xe
	.long	.LASF82
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x6c6
	.uleb128 0xd
	.long	.LASF83
	.byte	0xc
	.byte	0x1b
	.long	0xf4f
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0xc
	.byte	0x1c
	.long	0x110e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0xc
	.byte	0x1d
	.long	0xddf
	.byte	0x10
	.uleb128 0xd
	.long	.LASF86
	.byte	0xc
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF87
	.byte	0xc
	.byte	0x1f
	.long	0xdd5
	.byte	0x13
	.uleb128 0xd
	.long	.LASF88
	.byte	0xc
	.byte	0x20
	.long	0xe1d
	.byte	0x18
	.uleb128 0xd
	.long	.LASF89
	.byte	0xc
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF90
	.byte	0xc
	.byte	0x22
	.long	0xdea
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XRV"
	.byte	0x6
	.value	0x7f6
	.long	0x6d2
	.uleb128 0xc
	.string	"xrv"
	.byte	0x8
	.byte	0x9
	.byte	0xf5
	.long	0x6eb
	.uleb128 0xd
	.long	.LASF91
	.byte	0x9
	.byte	0xf6
	.long	0xe1d
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x6f7
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x728
	.uleb128 0xd
	.long	.LASF92
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF93
	.byte	0x9
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF94
	.byte	0x9
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF95
	.byte	0x6
	.value	0x7f8
	.long	0x734
	.uleb128 0xe
	.long	.LASF96
	.byte	0x20
	.byte	0x9
	.byte	0xff
	.long	0x775
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x101
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x102
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x103
	.long	0xc5
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF98
	.byte	0x6
	.value	0x7f9
	.long	0x781
	.uleb128 0x10
	.long	.LASF99
	.byte	0x20
	.byte	0x9
	.value	0x106
	.long	0x7c3
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x107
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x108
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x109
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF100
	.byte	0x9
	.value	0x10a
	.long	0xd0
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF101
	.byte	0x6
	.value	0x7fa
	.long	0x7cf
	.uleb128 0x10
	.long	.LASF102
	.byte	0x28
	.byte	0x9
	.value	0x10d
	.long	0x81e
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x10f
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x110
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x111
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x112
	.long	0xdb
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x6
	.value	0x7fb
	.long	0x82a
	.uleb128 0x10
	.long	.LASF105
	.byte	0x38
	.byte	0x9
	.value	0x116
	.long	0x893
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x117
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x118
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x119
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x11a
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x11b
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x11c
	.long	0xf4f
	.byte	0x28
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x11d
	.long	0xf55
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF108
	.byte	0x6
	.value	0x7fd
	.long	0x89f
	.uleb128 0xe
	.long	.LASF109
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x924
	.uleb128 0xd
	.long	.LASF110
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF111
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF112
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF113
	.byte	0xd
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF106
	.byte	0xd
	.byte	0x11
	.long	0xf4f
	.byte	0x28
	.uleb128 0xd
	.long	.LASF107
	.byte	0xd
	.byte	0x12
	.long	0xf55
	.byte	0x30
	.uleb128 0xd
	.long	.LASF114
	.byte	0xd
	.byte	0x14
	.long	0x1003
	.byte	0x38
	.uleb128 0xd
	.long	.LASF115
	.byte	0xd
	.byte	0x15
	.long	0xe1d
	.byte	0x40
	.uleb128 0xd
	.long	.LASF116
	.byte	0xd
	.byte	0x16
	.long	0xdd5
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF117
	.byte	0x6
	.value	0x7fe
	.long	0x930
	.uleb128 0xe
	.long	.LASF118
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x9c1
	.uleb128 0xd
	.long	.LASF119
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF120
	.byte	0xe
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF121
	.byte	0xe
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF122
	.byte	0xe
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF103
	.byte	0xe
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF106
	.byte	0xe
	.byte	0x29
	.long	0xf4f
	.byte	0x28
	.uleb128 0xd
	.long	.LASF107
	.byte	0xe
	.byte	0x2a
	.long	0xf55
	.byte	0x30
	.uleb128 0xd
	.long	.LASF123
	.byte	0xe
	.byte	0x2c
	.long	0xdea
	.byte	0x38
	.uleb128 0xd
	.long	.LASF124
	.byte	0xe
	.byte	0x2d
	.long	0x1085
	.byte	0x40
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.byte	0x2e
	.long	0xff7
	.byte	0x48
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF127
	.byte	0x6
	.value	0x7ff
	.long	0x9cd
	.uleb128 0x10
	.long	.LASF128
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0xa77
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x136
	.long	0xf4f
	.byte	0x28
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x137
	.long	0xf55
	.byte	0x30
	.uleb128 0xf
	.long	.LASF129
	.byte	0x9
	.value	0x139
	.long	0xf5b
	.byte	0x38
	.uleb128 0xf
	.long	.LASF130
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF131
	.byte	0x9
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF132
	.byte	0x9
	.value	0x13c
	.long	0xf55
	.byte	0x50
	.uleb128 0xf
	.long	.LASF133
	.byte	0x9
	.value	0x13d
	.long	0xdd5
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF134
	.byte	0x6
	.value	0x800
	.long	0xa83
	.uleb128 0xe
	.long	.LASF135
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xb74
	.uleb128 0xd
	.long	.LASF92
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF93
	.byte	0xf
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF94
	.byte	0xf
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF113
	.byte	0xf
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF103
	.byte	0xf
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF106
	.byte	0xf
	.byte	0x14
	.long	0xf4f
	.byte	0x28
	.uleb128 0xd
	.long	.LASF107
	.byte	0xf
	.byte	0x15
	.long	0xf55
	.byte	0x30
	.uleb128 0xd
	.long	.LASF136
	.byte	0xf
	.byte	0x17
	.long	0xf55
	.byte	0x38
	.uleb128 0xd
	.long	.LASF137
	.byte	0xf
	.byte	0x18
	.long	0xf6d
	.byte	0x40
	.uleb128 0xd
	.long	.LASF138
	.byte	0xf
	.byte	0x19
	.long	0xf6d
	.byte	0x48
	.uleb128 0xd
	.long	.LASF139
	.byte	0xf
	.byte	0x1a
	.long	0xf84
	.byte	0x50
	.uleb128 0xd
	.long	.LASF140
	.byte	0xf
	.byte	0x1b
	.long	0xd26
	.byte	0x58
	.uleb128 0xd
	.long	.LASF141
	.byte	0xf
	.byte	0x1c
	.long	0xf8a
	.byte	0x60
	.uleb128 0xd
	.long	.LASF142
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF143
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF144
	.byte	0xf
	.byte	0x1f
	.long	0xfe6
	.byte	0x78
	.uleb128 0xd
	.long	.LASF145
	.byte	0xf
	.byte	0x20
	.long	0xf7e
	.byte	0x80
	.uleb128 0xd
	.long	.LASF146
	.byte	0xf
	.byte	0x25
	.long	0xf61
	.byte	0x88
	.uleb128 0xd
	.long	.LASF147
	.byte	0xf
	.byte	0x26
	.long	0xdf5
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF148
	.byte	0x6
	.value	0x803
	.long	0xb80
	.uleb128 0x10
	.long	.LASF149
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xcb9
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x9
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF97
	.byte	0x9
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x176
	.long	0xf4f
	.byte	0x28
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x177
	.long	0xf55
	.byte	0x30
	.uleb128 0xf
	.long	.LASF150
	.byte	0x9
	.value	0x179
	.long	0xfbe
	.byte	0x38
	.uleb128 0xf
	.long	.LASF151
	.byte	0x9
	.value	0x17a
	.long	0xfbe
	.byte	0x40
	.uleb128 0xf
	.long	.LASF152
	.byte	0x9
	.value	0x187
	.long	0xf96
	.byte	0x48
	.uleb128 0xf
	.long	.LASF153
	.byte	0x9
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF154
	.byte	0x9
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF155
	.byte	0x9
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF156
	.byte	0x9
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF157
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF158
	.byte	0x9
	.value	0x18d
	.long	0xf8a
	.byte	0x78
	.uleb128 0xf
	.long	.LASF159
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF160
	.byte	0x9
	.value	0x18f
	.long	0xf8a
	.byte	0x88
	.uleb128 0xf
	.long	.LASF161
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF162
	.byte	0x9
	.value	0x191
	.long	0xf8a
	.byte	0x98
	.uleb128 0xf
	.long	.LASF163
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF164
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF165
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF166
	.byte	0x6
	.value	0x804
	.long	0xcc5
	.uleb128 0xe
	.long	.LASF167
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xd26
	.uleb128 0xd
	.long	.LASF168
	.byte	0xc
	.byte	0xf
	.long	0x10a5
	.byte	0
	.uleb128 0xd
	.long	.LASF169
	.byte	0xc
	.byte	0x10
	.long	0x10a5
	.byte	0x8
	.uleb128 0xd
	.long	.LASF170
	.byte	0xc
	.byte	0x11
	.long	0x10bf
	.byte	0x10
	.uleb128 0xd
	.long	.LASF171
	.byte	0xc
	.byte	0x12
	.long	0x10a5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF172
	.byte	0xc
	.byte	0x13
	.long	0x10a5
	.byte	0x20
	.uleb128 0xd
	.long	.LASF173
	.byte	0xc
	.byte	0x14
	.long	0x10e8
	.byte	0x28
	.uleb128 0xd
	.long	.LASF174
	.byte	0xc
	.byte	0x16
	.long	0x1108
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xd32
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xd94
	.uleb128 0x12
	.long	.LASF175
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF176
	.byte	0x6
	.value	0x9f3
	.long	0xdea
	.uleb128 0x12
	.long	.LASF177
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF178
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF179
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF180
	.byte	0x6
	.value	0x9f7
	.long	0xe17
	.uleb128 0x12
	.long	.LASF181
	.byte	0x6
	.value	0x9f8
	.long	0xe17
	.byte	0
	.uleb128 0xb
	.long	.LASF182
	.byte	0x6
	.value	0x808
	.long	0xda0
	.uleb128 0x10
	.long	.LASF183
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xdd5
	.uleb128 0xf
	.long	.LASF184
	.byte	0x9
	.value	0x4ee
	.long	0xf90
	.byte	0
	.uleb128 0xf
	.long	.LASF185
	.byte	0x9
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF186
	.byte	0x9
	.value	0x4f0
	.long	0xfc4
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0x10
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"U16"
	.byte	0x10
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.string	"I32"
	.byte	0x10
	.byte	0x88
	.long	0x57
	.uleb128 0x8
	.string	"U32"
	.byte	0x10
	.byte	0x89
	.long	0x3b
	.uleb128 0xb
	.long	.LASF187
	.byte	0x10
	.value	0x209
	.long	0xdf5
	.uleb128 0x13
	.long	0xe17
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe0c
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0x15
	.long	0x7f
	.long	0xe33
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF188
	.byte	0x11
	.byte	0x63
	.long	0xe3e
	.uleb128 0x9
	.long	.LASF190
	.uleb128 0x5
	.long	.LASF191
	.byte	0x11
	.byte	0x65
	.long	0xe4e
	.uleb128 0x6
	.byte	0x8
	.long	0xe33
	.uleb128 0xe
	.long	.LASF192
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xe85
	.uleb128 0xd
	.long	.LASF185
	.byte	0xa
	.byte	0x14
	.long	0xdd5
	.byte	0
	.uleb128 0xd
	.long	.LASF193
	.byte	0xa
	.byte	0x15
	.long	0xdd5
	.byte	0x1
	.uleb128 0xd
	.long	.LASF194
	.byte	0xa
	.byte	0x16
	.long	0xddf
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF192
	.byte	0xa
	.byte	0x19
	.long	0xe54
	.uleb128 0x6
	.byte	0x8
	.long	0xdea
	.uleb128 0x6
	.byte	0x8
	.long	0xe85
	.uleb128 0x9
	.long	.LASF195
	.uleb128 0x6
	.byte	0x8
	.long	0xe9c
	.uleb128 0x9
	.long	.LASF196
	.uleb128 0x6
	.byte	0x8
	.long	0xea7
	.uleb128 0x6
	.byte	0x8
	.long	0xdf5
	.uleb128 0x15
	.long	0xe85
	.long	0xec8
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0xf31
	.uleb128 0x18
	.long	.LASF197
	.sleb128 0
	.uleb128 0x18
	.long	.LASF198
	.sleb128 1
	.uleb128 0x18
	.long	.LASF199
	.sleb128 2
	.uleb128 0x18
	.long	.LASF200
	.sleb128 3
	.uleb128 0x18
	.long	.LASF201
	.sleb128 4
	.uleb128 0x18
	.long	.LASF202
	.sleb128 5
	.uleb128 0x18
	.long	.LASF203
	.sleb128 6
	.uleb128 0x18
	.long	.LASF204
	.sleb128 7
	.uleb128 0x18
	.long	.LASF205
	.sleb128 8
	.uleb128 0x18
	.long	.LASF206
	.sleb128 9
	.uleb128 0x18
	.long	.LASF207
	.sleb128 10
	.uleb128 0x18
	.long	.LASF208
	.sleb128 11
	.uleb128 0x18
	.long	.LASF209
	.sleb128 12
	.uleb128 0x18
	.long	.LASF210
	.sleb128 13
	.uleb128 0x18
	.long	.LASF211
	.sleb128 14
	.uleb128 0x18
	.long	.LASF212
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c1
	.uleb128 0x6
	.byte	0x8
	.long	0xa77
	.uleb128 0x6
	.byte	0x8
	.long	0x893
	.uleb128 0x6
	.byte	0x8
	.long	0x924
	.uleb128 0x6
	.byte	0x8
	.long	0xb74
	.uleb128 0x6
	.byte	0x8
	.long	0x64d
	.uleb128 0x6
	.byte	0x8
	.long	0x3e0
	.uleb128 0x6
	.byte	0x8
	.long	0x53b
	.uleb128 0xb
	.long	.LASF213
	.byte	0x9
	.value	0x150
	.long	0xddf
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xf7e
	.uleb128 0x14
	.long	0xf7e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41b
	.uleb128 0x6
	.byte	0x8
	.long	0xf73
	.uleb128 0x6
	.byte	0x8
	.long	0x5e2
	.uleb128 0x6
	.byte	0x8
	.long	0x3a5
	.uleb128 0x19
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0xfb8
	.uleb128 0x12
	.long	.LASF214
	.byte	0x9
	.value	0x185
	.long	0xfb8
	.uleb128 0x12
	.long	.LASF215
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xe43
	.uleb128 0x6
	.byte	0x8
	.long	0x343
	.uleb128 0x6
	.byte	0x8
	.long	0x61d
	.uleb128 0x5
	.long	.LASF216
	.byte	0x12
	.byte	0x13
	.long	0x3a5
	.uleb128 0x5
	.long	.LASF217
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xfd0
	.uleb128 0x1a
	.long	0xf6d
	.uleb128 0x6
	.byte	0x8
	.long	0xfec
	.uleb128 0x6
	.byte	0x8
	.long	0x249
	.uleb128 0x6
	.byte	0x8
	.long	0x456
	.uleb128 0x6
	.byte	0x8
	.long	0xe1d
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x8
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0x1019
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0x1049
	.uleb128 0xd
	.long	.LASF218
	.byte	0xe
	.byte	0x11
	.long	0x1085
	.byte	0
	.uleb128 0xd
	.long	.LASF219
	.byte	0xe
	.byte	0x12
	.long	0x108b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF220
	.byte	0xe
	.byte	0x13
	.long	0xe1d
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0x1054
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0x1085
	.uleb128 0xd
	.long	.LASF221
	.byte	0xe
	.byte	0x18
	.long	0xdf5
	.byte	0
	.uleb128 0xd
	.long	.LASF222
	.byte	0xe
	.byte	0x19
	.long	0xdea
	.byte	0x4
	.uleb128 0xd
	.long	.LASF223
	.byte	0xe
	.byte	0x1a
	.long	0xe23
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x100f
	.uleb128 0x6
	.byte	0x8
	.long	0x1049
	.uleb128 0x1b
	.long	0x57
	.long	0x10a5
	.uleb128 0x14
	.long	0xe1d
	.uleb128 0x14
	.long	0xf4f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1091
	.uleb128 0x1b
	.long	0xdf5
	.long	0x10bf
	.uleb128 0x14
	.long	0xe1d
	.uleb128 0x14
	.long	0xf4f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10ab
	.uleb128 0x1b
	.long	0x57
	.long	0x10e8
	.uleb128 0x14
	.long	0xe1d
	.uleb128 0x14
	.long	0xf4f
	.uleb128 0x14
	.long	0xe1d
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10c5
	.uleb128 0x1b
	.long	0x57
	.long	0x1102
	.uleb128 0x14
	.long	0xf4f
	.uleb128 0x14
	.long	0x1102
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd94
	.uleb128 0x6
	.byte	0x8
	.long	0x10ee
	.uleb128 0x6
	.byte	0x8
	.long	0xcb9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF224
	.uleb128 0x1c
	.long	.LASF225
	.byte	0x1
	.byte	0x3d
	.long	0xdea
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1157
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0x3d
	.long	0x79
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1e
	.string	"TOP"
	.byte	0x1
	.byte	0x3f
	.quad	.L2
	.byte	0
	.uleb128 0x1c
	.long	.LASF226
	.byte	0x1
	.byte	0x58
	.long	0xdea
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x119e
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0x58
	.long	0x79
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1f
	.long	.LASF227
	.byte	0x1
	.byte	0x58
	.long	0xed
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x5a
	.long	0xdea
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1c
	.long	.LASF228
	.byte	0x1
	.byte	0x6a
	.long	0xdea
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x11f0
	.uleb128 0x1d
	.string	"d"
	.byte	0x1
	.byte	0x6a
	.long	0x79
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.byte	0x6a
	.long	0x79
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.long	.LASF227
	.byte	0x1
	.byte	0x6a
	.long	0xed
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x20
	.string	"ret"
	.byte	0x1
	.byte	0x6c
	.long	0xdea
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.long	.LASF229
	.byte	0x1
	.byte	0x7e
	.long	0xdea
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x133a
	.uleb128 0x1d
	.string	"sv"
	.byte	0x1
	.byte	0x7e
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1d
	.string	"src"
	.byte	0x1
	.byte	0x7e
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.long	.LASF227
	.byte	0x1
	.byte	0x7e
	.long	0xed
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0x80
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.long	.LASF230
	.byte	0x1
	.byte	0x80
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.byte	0x80
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.long	.LASF231
	.byte	0x1
	.byte	0x80
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.byte	0x81
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"cur"
	.byte	0x1
	.byte	0x81
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF232
	.byte	0x1
	.byte	0x84
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.long	.LASF233
	.byte	0x1
	.byte	0x86
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF234
	.byte	0x1
	.byte	0x87
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF235
	.byte	0x1
	.byte	0x88
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF236
	.byte	0x1
	.byte	0x89
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x12f8
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0x8d
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x131a
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0xab
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x20
	.string	"k"
	.byte	0x1
	.byte	0xc8
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF237
	.byte	0x1
	.byte	0xd8
	.long	0xe1d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x13b1
	.uleb128 0x1d
	.string	"sv"
	.byte	0x1
	.byte	0xd8
	.long	0xe1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"str"
	.byte	0x1
	.byte	0xd8
	.long	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0xd8
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.byte	0xd8
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x22
	.long	.LASF238
	.byte	0x1
	.byte	0xe2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF239
	.byte	0x1
	.byte	0xf7
	.long	0xdea
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bdd
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.byte	0xf7
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x1f
	.long	.LASF240
	.byte	0x1
	.byte	0xf7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x1f
	.long	.LASF241
	.byte	0x1
	.byte	0xf7
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x1f
	.long	.LASF242
	.byte	0x1
	.byte	0xf7
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x1f
	.long	.LASF243
	.byte	0x1
	.byte	0xf7
	.long	0xf55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x1f
	.long	.LASF244
	.byte	0x1
	.byte	0xf8
	.long	0xf90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x1f
	.long	.LASF245
	.byte	0x1
	.byte	0xf8
	.long	0xe90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x1f
	.long	.LASF246
	.byte	0x1
	.byte	0xf8
	.long	0xdea
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"pad"
	.byte	0x1
	.byte	0xf8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x1f
	.long	.LASF247
	.byte	0x1
	.byte	0xf8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x1f
	.long	.LASF248
	.byte	0x1
	.byte	0xf9
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x1d
	.string	"sep"
	.byte	0x1
	.byte	0xf9
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x1f
	.long	.LASF249
	.byte	0x1
	.byte	0xf9
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x1f
	.long	.LASF250
	.byte	0x1
	.byte	0xf9
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x1f
	.long	.LASF251
	.byte	0x1
	.byte	0xf9
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x1f
	.long	.LASF252
	.byte	0x1
	.byte	0xf9
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x1f
	.long	.LASF253
	.byte	0x1
	.byte	0xfa
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x1f
	.long	.LASF254
	.byte	0x1
	.byte	0xfa
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x1f
	.long	.LASF255
	.byte	0x1
	.byte	0xfa
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x1f
	.long	.LASF256
	.byte	0x1
	.byte	0xfa
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 104
	.uleb128 0x1f
	.long	.LASF257
	.byte	0x1
	.byte	0xfa
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x22
	.long	.LASF258
	.byte	0x1
	.byte	0xfc
	.long	0x1bdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.long	0xdf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.byte	0xfe
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.byte	0xfe
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x22
	.long	.LASF259
	.byte	0x1
	.byte	0xfe
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x20
	.string	"id"
	.byte	0x1
	.byte	0xfe
	.long	0x1bdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x20
	.string	"svp"
	.byte	0x1
	.byte	0xff
	.long	0x1003
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x25
	.string	"sv"
	.byte	0x1
	.value	0x100
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x26
	.long	.LASF260
	.byte	0x1
	.value	0x100
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x26
	.long	.LASF261
	.byte	0x1
	.value	0x100
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x26
	.long	.LASF262
	.byte	0x1
	.value	0x101
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x26
	.long	.LASF263
	.byte	0x1
	.value	0x102
	.long	0xf90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x26
	.long	.LASF264
	.byte	0x1
	.value	0x103
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x26
	.long	.LASF265
	.byte	0x1
	.value	0x104
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x26
	.long	.LASF266
	.byte	0x1
	.value	0x104
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x26
	.long	.LASF267
	.byte	0x1
	.value	0x105
	.long	0xdf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -732
	.uleb128 0x27
	.long	.LASF268
	.byte	0x1
	.value	0x378
	.quad	.L221
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1630
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x117
	.long	0x1003
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x23
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1678
	.uleb128 0x26
	.long	.LASF269
	.byte	0x1
	.value	0x130
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x24
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x26
	.long	.LASF270
	.byte	0x1
	.value	0x135
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x169e
	.uleb128 0x26
	.long	.LASF271
	.byte	0x1
	.value	0x15b
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.byte	0
	.uleb128 0x23
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x16e4
	.uleb128 0x26
	.long	.LASF272
	.byte	0x1
	.value	0x172
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x26
	.long	.LASF273
	.byte	0x1
	.value	0x173
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x26
	.long	.LASF274
	.byte	0x1
	.value	0x174
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.byte	0
	.uleb128 0x23
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x171a
	.uleb128 0x26
	.long	.LASF275
	.byte	0x1
	.value	0x188
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x26
	.long	.LASF276
	.byte	0x1
	.value	0x189
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.byte	0
	.uleb128 0x23
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1750
	.uleb128 0x26
	.long	.LASF277
	.byte	0x1
	.value	0x191
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x26
	.long	.LASF278
	.byte	0x1
	.value	0x192
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.byte	0
	.uleb128 0x23
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x1776
	.uleb128 0x26
	.long	.LASF271
	.byte	0x1
	.value	0x1a0
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.byte	0
	.uleb128 0x23
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x179c
	.uleb128 0x26
	.long	.LASF271
	.byte	0x1
	.value	0x1b5
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.byte	0
	.uleb128 0x23
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x1849
	.uleb128 0x26
	.long	.LASF279
	.byte	0x1
	.value	0x1c0
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x25
	.string	"ix"
	.byte	0x1
	.value	0x1c1
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x26
	.long	.LASF280
	.byte	0x1
	.value	0x1c2
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x26
	.long	.LASF281
	.byte	0x1
	.value	0x1c4
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x23
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1826
	.uleb128 0x26
	.long	.LASF282
	.byte	0x1
	.value	0x1e9
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x26
	.long	.LASF283
	.byte	0x1
	.value	0x1ea
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.byte	0
	.uleb128 0x24
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x26
	.long	.LASF284
	.byte	0x1
	.value	0x206
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x1a38
	.uleb128 0x26
	.long	.LASF279
	.byte	0x1
	.value	0x214
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x26
	.long	.LASF285
	.byte	0x1
	.value	0x214
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x26
	.long	.LASF264
	.byte	0x1
	.value	0x215
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x26
	.long	.LASF286
	.byte	0x1
	.value	0x215
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x26
	.long	.LASF287
	.byte	0x1
	.value	0x216
	.long	0x1085
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x25
	.string	"key"
	.byte	0x1
	.value	0x217
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x26
	.long	.LASF288
	.byte	0x1
	.value	0x218
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -748
	.uleb128 0x26
	.long	.LASF289
	.byte	0x1
	.value	0x219
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x26
	.long	.LASF290
	.byte	0x1
	.value	0x21a
	.long	0xf90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x1911
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x251
	.long	0x1003
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x23
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x1a15
	.uleb128 0x26
	.long	.LASF291
	.byte	0x1
	.value	0x266
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x26
	.long	.LASF292
	.byte	0x1
	.value	0x267
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x26
	.long	.LASF293
	.byte	0x1
	.value	0x268
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.uleb128 0x26
	.long	.LASF294
	.byte	0x1
	.value	0x269
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x26
	.long	.LASF295
	.byte	0x1
	.value	0x26a
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x26
	.long	.LASF296
	.byte	0x1
	.value	0x26b
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x26
	.long	.LASF297
	.byte	0x1
	.value	0x26c
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -761
	.uleb128 0x23
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x19bc
	.uleb128 0x25
	.string	"key"
	.byte	0x1
	.value	0x276
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x23
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x19e2
	.uleb128 0x26
	.long	.LASF298
	.byte	0x1
	.value	0x2a0
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.byte	0
	.uleb128 0x24
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x26
	.long	.LASF299
	.byte	0x1
	.value	0x2be
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x2bf
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -740
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x26
	.long	.LASF284
	.byte	0x1
	.value	0x2d5
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x1bba
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x2fc
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x23
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x1a81
	.uleb128 0x26
	.long	.LASF269
	.byte	0x1
	.value	0x304
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0
	.uleb128 0x23
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x1aa7
	.uleb128 0x26
	.long	.LASF271
	.byte	0x1
	.value	0x30f
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.uleb128 0x23
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x1afe
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x31b
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x24
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x26
	.long	.LASF301
	.byte	0x1
	.value	0x325
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x25
	.string	"pv"
	.byte	0x1
	.value	0x326
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x26
	.long	.LASF302
	.byte	0x1
	.value	0x34a
	.long	0x1bed
	.uleb128 0x9
	.byte	0x3
	.quad	entries.10504
	.uleb128 0x26
	.long	.LASF303
	.byte	0x1
	.value	0x34b
	.long	0x1bfd
	.uleb128 0x9
	.byte	0x3
	.quad	sizes.10505
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x34c
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x26
	.long	.LASF304
	.byte	0x1
	.value	0x34d
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x26
	.long	.LASF285
	.byte	0x1
	.value	0x34e
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x25
	.string	"gv"
	.byte	0x1
	.value	0x34f
	.long	0xf8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x350
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x24
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x26
	.long	.LASF305
	.byte	0x1
	.value	0x35a
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x26
	.long	.LASF270
	.byte	0x1
	.value	0x35b
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x26
	.long	.LASF306
	.byte	0x1
	.value	0x38d
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x7f
	.long	0x1bed
	.uleb128 0x16
	.long	0x65
	.byte	0x7f
	.byte	0
	.uleb128 0x15
	.long	0x79
	.long	0x1bfd
	.uleb128 0x16
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.long	0xed
	.long	0x1c0d
	.uleb128 0x16
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x28
	.long	.LASF319
	.byte	0x1
	.value	0x397
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f56
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x397
	.long	0xf7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1336
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x399
	.long	0x1003
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.long	.LASF306
	.byte	0x1
	.value	0x399
	.long	0x1003
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x25
	.string	"ax"
	.byte	0x1
	.value	0x399
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1288
	.uleb128 0x26
	.long	.LASF307
	.byte	0x1
	.value	0x399
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1284
	.uleb128 0x24
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x26
	.long	.LASF308
	.byte	0x1
	.value	0x39e
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1272
	.uleb128 0x24
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x25
	.string	"hv"
	.byte	0x1
	.value	0x3a1
	.long	0xf55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x26
	.long	.LASF242
	.byte	0x1
	.value	0x3a2
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1264
	.uleb128 0x26
	.long	.LASF276
	.byte	0x1
	.value	0x3a2
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x26
	.long	.LASF243
	.byte	0x1
	.value	0x3a3
	.long	0xf55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1256
	.uleb128 0x26
	.long	.LASF244
	.byte	0x1
	.value	0x3a4
	.long	0xf90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x26
	.long	.LASF309
	.byte	0x1
	.value	0x3a4
	.long	0xf90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1248
	.uleb128 0x26
	.long	.LASF310
	.byte	0x1
	.value	0x3a4
	.long	0xf90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1240
	.uleb128 0x26
	.long	.LASF311
	.byte	0x1
	.value	0x3a5
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1328
	.uleb128 0x26
	.long	.LASF246
	.byte	0x1
	.value	0x3a6
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1324
	.uleb128 0x26
	.long	.LASF312
	.byte	0x1
	.value	0x3a6
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1320
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x3a6
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1316
	.uleb128 0x26
	.long	.LASF313
	.byte	0x1
	.value	0x3a6
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.uleb128 0x26
	.long	.LASF314
	.byte	0x1
	.value	0x3a6
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1276
	.uleb128 0x25
	.string	"svp"
	.byte	0x1
	.value	0x3a7
	.long	0x1003
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x25
	.string	"val"
	.byte	0x1
	.value	0x3a8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1232
	.uleb128 0x26
	.long	.LASF240
	.byte	0x1
	.value	0x3a8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x25
	.string	"pad"
	.byte	0x1
	.value	0x3a8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.uleb128 0x26
	.long	.LASF247
	.byte	0x1
	.value	0x3a8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x26
	.long	.LASF248
	.byte	0x1
	.value	0x3a8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1208
	.uleb128 0x25
	.string	"sep"
	.byte	0x1
	.value	0x3a8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.uleb128 0x26
	.long	.LASF249
	.byte	0x1
	.value	0x3a8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x26
	.long	.LASF315
	.byte	0x1
	.value	0x3a8
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x26
	.long	.LASF250
	.byte	0x1
	.value	0x3a9
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.uleb128 0x26
	.long	.LASF251
	.byte	0x1
	.value	0x3a9
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x26
	.long	.LASF255
	.byte	0x1
	.value	0x3a9
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x26
	.long	.LASF257
	.byte	0x1
	.value	0x3a9
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x26
	.long	.LASF252
	.byte	0x1
	.value	0x3aa
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1308
	.uleb128 0x26
	.long	.LASF253
	.byte	0x1
	.value	0x3aa
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1304
	.uleb128 0x26
	.long	.LASF254
	.byte	0x1
	.value	0x3aa
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1300
	.uleb128 0x26
	.long	.LASF256
	.byte	0x1
	.value	0x3aa
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.uleb128 0x26
	.long	.LASF258
	.byte	0x1
	.value	0x3ab
	.long	0x1f56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x26
	.long	.LASF316
	.byte	0x1
	.value	0x3ac
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1280
	.uleb128 0x24
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x26
	.long	.LASF285
	.byte	0x1
	.value	0x410
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x23
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x1eea
	.uleb128 0x26
	.long	.LASF317
	.byte	0x1
	.value	0x435
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.byte	0
	.uleb128 0x23
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x1f10
	.uleb128 0x26
	.long	.LASF318
	.byte	0x1
	.value	0x43e
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x24
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x458
	.long	0xdea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1292
	.uleb128 0x24
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x26
	.long	.LASF283
	.byte	0x1
	.value	0x45b
	.long	0xe1d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x7f
	.long	0x1f67
	.uleb128 0x2a
	.long	0x65
	.value	0x3ff
	.byte	0
	.uleb128 0x28
	.long	.LASF320
	.byte	0x1
	.value	0x482
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ffd
	.uleb128 0x29
	.string	"cv"
	.byte	0x1
	.value	0x482
	.long	0xf7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x484
	.long	0x1003
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x26
	.long	.LASF306
	.byte	0x1
	.value	0x484
	.long	0x1003
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.string	"ax"
	.byte	0x1
	.value	0x484
	.long	0xdea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF307
	.byte	0x1
	.value	0x484
	.long	0xdea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF321
	.byte	0x1
	.value	0x485
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x26
	.long	.LASF322
	.byte	0x1
	.value	0x48a
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2d
	.long	0x2008
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.long	.LASF323
	.byte	0x13
	.byte	0x29
	.long	0x2013
	.uleb128 0x7
	.long	0x1ffd
	.uleb128 0x2c
	.long	.LASF324
	.byte	0x14
	.byte	0x5d
	.long	0xf8a
	.uleb128 0x2d
	.long	.LASF325
	.byte	0x14
	.value	0x125
	.long	0x36a
	.uleb128 0x2d
	.long	.LASF326
	.byte	0x14
	.value	0x127
	.long	0x36a
	.uleb128 0x2c
	.long	.LASF327
	.byte	0x15
	.byte	0x22
	.long	0x1003
	.uleb128 0x2c
	.long	.LASF328
	.byte	0x15
	.byte	0x26
	.long	0xf6d
	.uleb128 0x2c
	.long	.LASF329
	.byte	0x15
	.byte	0x2a
	.long	0x1003
	.uleb128 0x2c
	.long	.LASF330
	.byte	0x15
	.byte	0x2b
	.long	0x1003
	.uleb128 0x2c
	.long	.LASF331
	.byte	0x15
	.byte	0x37
	.long	0xdea
	.uleb128 0x2c
	.long	.LASF332
	.byte	0x15
	.byte	0x38
	.long	0xdea
	.uleb128 0x2c
	.long	.LASF333
	.byte	0x15
	.byte	0x3c
	.long	0xe90
	.uleb128 0x2c
	.long	.LASF334
	.byte	0x15
	.byte	0x3d
	.long	0xe90
	.uleb128 0x2c
	.long	.LASF335
	.byte	0x15
	.byte	0x43
	.long	0xe1d
	.uleb128 0x2c
	.long	.LASF336
	.byte	0x15
	.byte	0x44
	.long	0x20a9
	.uleb128 0x6
	.byte	0x8
	.long	0x6eb
	.uleb128 0x2c
	.long	.LASF337
	.byte	0x15
	.byte	0x81
	.long	0x20ba
	.uleb128 0x2e
	.long	0x1009
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
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
.LASF155:
	.string	"xio_page_len"
.LASF27:
	.string	"cop_seq"
.LASF275:
	.string	"vallen"
.LASF161:
	.string	"xio_bottom_name"
.LASF69:
	.string	"gp_sv"
.LASF188:
	.string	"PerlIOl"
.LASF240:
	.string	"name"
.LASF340:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF324:
	.string	"PL_errgv"
.LASF134:
	.string	"XPVCV"
.LASF260:
	.string	"ipad"
.LASF206:
	.string	"SVt_PVLV"
.LASF168:
	.string	"svt_get"
.LASF258:
	.string	"tmpbuf"
.LASF235:
	.string	"qq_escapables"
.LASF31:
	.string	"cop_io"
.LASF164:
	.string	"xio_type"
.LASF135:
	.string	"xpvcv"
.LASF87:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF286:
	.string	"sname"
.LASF120:
	.string	"xhv_fill"
.LASF198:
	.string	"SVt_IV"
.LASF80:
	.string	"gp_file"
.LASF165:
	.string	"xio_flags"
.LASF204:
	.string	"SVt_PVMG"
.LASF302:
	.string	"entries"
.LASF214:
	.string	"xiou_dirp"
.LASF179:
	.string	"any_bool"
.LASF337:
	.string	"PL_curcop"
.LASF39:
	.string	"op_pmregexp"
.LASF316:
	.string	"gimme"
.LASF311:
	.string	"level"
.LASF56:
	.string	"precomp"
.LASF116:
	.string	"xav_flags"
.LASF132:
	.string	"xgv_stash"
.LASF53:
	.string	"endp"
.LASF101:
	.string	"XPVNV"
.LASF10:
	.string	"ssize_t"
.LASF233:
	.string	"backslashes"
.LASF190:
	.string	"_PerlIO"
.LASF335:
	.string	"PL_Sv"
.LASF203:
	.string	"SVt_PVNV"
.LASF139:
	.string	"xcv_xsub"
.LASF257:
	.string	"sortkeys"
.LASF124:
	.string	"xhv_eiter"
.LASF274:
	.string	"slash"
.LASF83:
	.string	"mg_moremagic"
.LASF76:
	.string	"gp_cv"
.LASF305:
	.string	"nlevel"
.LASF112:
	.string	"xav_max"
.LASF277:
	.string	"blesslen"
.LASF191:
	.string	"PerlIO"
.LASF98:
	.string	"XPVUV"
.LASF291:
	.string	"nkey"
.LASF224:
	.string	"float"
.LASF122:
	.string	"xhv_keys"
.LASF55:
	.string	"substrs"
.LASF331:
	.string	"PL_tmps_ix"
.LASF322:
	.string	"tmpXSoff"
.LASF167:
	.string	"mgvtbl"
.LASF142:
	.string	"xcv_file"
.LASF99:
	.string	"xpvuv"
.LASF12:
	.string	"long long unsigned int"
.LASF329:
	.string	"PL_stack_base"
.LASF321:
	.string	"file"
.LASF50:
	.string	"REGEXP"
.LASF196:
	.string	"reg_data"
.LASF339:
	.string	"Dumper.c"
.LASF183:
	.string	"clone_params"
.LASF195:
	.string	"reg_substr_data"
.LASF85:
	.string	"mg_private"
.LASF330:
	.string	"PL_stack_max"
.LASF97:
	.string	"xiv_iv"
.LASF133:
	.string	"xgv_flags"
.LASF153:
	.string	"xio_lines"
.LASF285:
	.string	"newapad"
.LASF45:
	.string	"interpreter"
.LASF74:
	.string	"gp_hv"
.LASF92:
	.string	"xpv_pv"
.LASF127:
	.string	"XPVGV"
.LASF156:
	.string	"xio_lines_left"
.LASF280:
	.string	"ixmax"
.LASF23:
	.string	"op_private"
.LASF221:
	.string	"hek_hash"
.LASF29:
	.string	"cop_line"
.LASF250:
	.string	"freezer"
.LASF207:
	.string	"SVt_PVAV"
.LASF128:
	.string	"xpvgv"
.LASF187:
	.string	"line_t"
.LASF11:
	.string	"size_t"
.LASF90:
	.string	"mg_len"
.LASF88:
	.string	"mg_obj"
.LASF143:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF160:
	.string	"xio_fmt_gv"
.LASF223:
	.string	"hek_key"
.LASF256:
	.string	"maxdepth"
.LASF68:
	.string	"program"
.LASF71:
	.string	"gp_io"
.LASF125:
	.string	"xhv_pmroot"
.LASF185:
	.string	"flags"
.LASF117:
	.string	"XPVHV"
.LASF171:
	.string	"svt_clear"
.LASF205:
	.string	"SVt_PVBM"
.LASF152:
	.string	"xio_dirpu"
.LASF118:
	.string	"xpvhv"
.LASF36:
	.string	"op_pmreplroot"
.LASF318:
	.string	"tmpsv"
.LASF332:
	.string	"PL_tmps_floor"
.LASF231:
	.string	"rstart"
.LASF42:
	.string	"op_pmdynflags"
.LASF173:
	.string	"svt_copy"
.LASF281:
	.string	"ixsv"
.LASF295:
	.string	"keylen"
.LASF238:
	.string	"start"
.LASF283:
	.string	"elem"
.LASF300:
	.string	"elen"
.LASF8:
	.string	"char"
.LASF290:
	.string	"keys"
.LASF248:
	.string	"apad"
.LASF148:
	.string	"XPVIO"
.LASF177:
	.string	"any_iv"
.LASF261:
	.string	"ival"
.LASF184:
	.string	"stashes"
.LASF63:
	.string	"prelen"
.LASF241:
	.string	"namelen"
.LASF95:
	.string	"XPVIV"
.LASF315:
	.string	"varname"
.LASF70:
	.string	"gp_refcnt"
.LASF65:
	.string	"lastparen"
.LASF149:
	.string	"xpvio"
.LASF57:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF320:
	.string	"boot_Data__Dumper"
.LASF96:
	.string	"xpviv"
.LASF234:
	.string	"single_quotes"
.LASF225:
	.string	"needs_quote"
.LASF325:
	.string	"PL_sv_undef"
.LASF60:
	.string	"sublen"
.LASF35:
	.string	"op_last"
.LASF219:
	.string	"hent_hek"
.LASF67:
	.string	"reganch"
.LASF192:
	.string	"regnode"
.LASF303:
	.string	"sizes"
.LASF197:
	.string	"SVt_NULL"
.LASF319:
	.string	"XS_Data__Dumper_Dumpxs"
.LASF58:
	.string	"subbeg"
.LASF17:
	.string	"op_sibling"
.LASF186:
	.string	"proto_perl"
.LASF82:
	.string	"magic"
.LASF284:
	.string	"opad"
.LASF13:
	.string	"long long int"
.LASF119:
	.string	"xhv_array"
.LASF216:
	.string	"PADLIST"
.LASF157:
	.string	"xio_top_name"
.LASF273:
	.string	"rval"
.LASF66:
	.string	"lastcloseparen"
.LASF306:
	.string	"mark"
.LASF308:
	.string	"href"
.LASF194:
	.string	"next_off"
.LASF84:
	.string	"mg_virtual"
.LASF30:
	.string	"cop_warnings"
.LASF262:
	.string	"blesspad"
.LASF314:
	.string	"postlen"
.LASF32:
	.string	"PMOP"
.LASF263:
	.string	"seenentry"
.LASF265:
	.string	"inamelen"
.LASF15:
	.string	"STRLEN"
.LASF334:
	.string	"PL_markstack_max"
.LASF269:
	.string	"othername"
.LASF323:
	.string	"PL_utf8skip"
.LASF264:
	.string	"iname"
.LASF312:
	.string	"terse"
.LASF126:
	.string	"xhv_name"
.LASF89:
	.string	"mg_ptr"
.LASF326:
	.string	"PL_sv_yes"
.LASF141:
	.string	"xcv_gv"
.LASF150:
	.string	"xio_ifp"
.LASF247:
	.string	"xpad"
.LASF218:
	.string	"hent_next"
.LASF46:
	.string	"broiled"
.LASF199:
	.string	"SVt_NV"
.LASF293:
	.string	"nticks"
.LASF294:
	.string	"keysv"
.LASF16:
	.string	"op_next"
.LASF75:
	.string	"gp_egv"
.LASF267:
	.string	"realtype"
.LASF52:
	.string	"startp"
.LASF297:
	.string	"do_utf8"
.LASF296:
	.string	"nlen"
.LASF307:
	.string	"items"
.LASF26:
	.string	"cop_filegv"
.LASF232:
	.string	"grow"
.LASF47:
	.string	"sv_any"
.LASF25:
	.string	"cop_stash"
.LASF244:
	.string	"postav"
.LASF43:
	.string	"op_pmstash"
.LASF266:
	.string	"idlen"
.LASF301:
	.string	"pvlen"
.LASF154:
	.string	"xio_page"
.LASF215:
	.string	"xiou_any"
.LASF292:
	.string	"nkey_buffer"
.LASF336:
	.string	"PL_Xpv"
.LASF211:
	.string	"SVt_PVFM"
.LASF181:
	.string	"any_dxptr"
.LASF81:
	.string	"MAGIC"
.LASF44:
	.string	"PerlInterpreter"
.LASF229:
	.string	"esc_q_utf8"
.LASF170:
	.string	"svt_len"
.LASF338:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF251:
	.string	"toaster"
.LASF249:
	.string	"pair"
.LASF49:
	.string	"sv_flags"
.LASF298:
	.string	"ocur"
.LASF114:
	.string	"xav_alloc"
.LASF254:
	.string	"quotekeys"
.LASF5:
	.string	"short int"
.LASF252:
	.string	"purity"
.LASF72:
	.string	"gp_form"
.LASF34:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF137:
	.string	"xcv_start"
.LASF147:
	.string	"xcv_outside_seq"
.LASF110:
	.string	"xav_array"
.LASF226:
	.string	"num_q"
.LASF105:
	.string	"xpvmg"
.LASF163:
	.string	"xio_subprocess"
.LASF59:
	.string	"offsets"
.LASF113:
	.string	"xof_off"
.LASF210:
	.string	"SVt_PVGV"
.LASF317:
	.string	"nchars"
.LASF228:
	.string	"esc_q"
.LASF201:
	.string	"SVt_PV"
.LASF282:
	.string	"ilen"
.LASF94:
	.string	"xpv_len"
.LASF222:
	.string	"hek_len"
.LASF270:
	.string	"postentry"
.LASF166:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF28:
	.string	"cop_arybase"
.LASF61:
	.string	"refcnt"
.LASF115:
	.string	"xav_arylen"
.LASF136:
	.string	"xcv_stash"
.LASF131:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF138:
	.string	"xcv_root"
.LASF299:
	.string	"extra"
.LASF51:
	.string	"regexp"
.LASF220:
	.string	"hent_val"
.LASF145:
	.string	"xcv_outside"
.LASF268:
	.string	"integer_came_from_string"
.LASF2:
	.string	"unsigned int"
.LASF40:
	.string	"op_pmflags"
.LASF121:
	.string	"xhv_max"
.LASF243:
	.string	"seenhv"
.LASF140:
	.string	"xcv_xsubany"
.LASF144:
	.string	"xcv_padlist"
.LASF208:
	.string	"SVt_PVHV"
.LASF106:
	.string	"xmg_magic"
.LASF276:
	.string	"valstr"
.LASF102:
	.string	"xpvnv"
.LASF239:
	.string	"DD_dump"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF176:
	.string	"any_i32"
.LASF169:
	.string	"svt_set"
.LASF182:
	.string	"CLONE_PARAMS"
.LASF159:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF304:
	.string	"nname"
.LASF246:
	.string	"indent"
.LASF272:
	.string	"rlen"
.LASF189:
	.string	"__dirstream"
.LASF178:
	.string	"any_long"
.LASF33:
	.string	"pmop"
.LASF111:
	.string	"xav_fill"
.LASF37:
	.string	"op_pmreplstart"
.LASF287:
	.string	"entry"
.LASF255:
	.string	"bless"
.LASF193:
	.string	"type"
.LASF212:
	.string	"SVt_PVIO"
.LASF0:
	.string	"unsigned char"
.LASF123:
	.string	"xhv_riter"
.LASF129:
	.string	"xgv_gp"
.LASF38:
	.string	"op_pmnext"
.LASF202:
	.string	"SVt_PVIV"
.LASF289:
	.string	"hval"
.LASF200:
	.string	"SVt_RV"
.LASF48:
	.string	"sv_refcnt"
.LASF253:
	.string	"deepcopy"
.LASF103:
	.string	"xnv_nv"
.LASF313:
	.string	"imax"
.LASF288:
	.string	"klen"
.LASF227:
	.string	"slen"
.LASF100:
	.string	"xuv_uv"
.LASF146:
	.string	"xcv_flags"
.LASF78:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF86:
	.string	"mg_type"
.LASF279:
	.string	"totpad"
.LASF174:
	.string	"svt_dup"
.LASF162:
	.string	"xio_bottom_gv"
.LASF24:
	.string	"cop_label"
.LASF93:
	.string	"xpv_cur"
.LASF230:
	.string	"send"
.LASF175:
	.string	"any_ptr"
.LASF108:
	.string	"XPVAV"
.LASF236:
	.string	"normal"
.LASF242:
	.string	"retval"
.LASF172:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF217:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF259:
	.string	"realpack"
.LASF41:
	.string	"op_pmpermflags"
.LASF109:
	.string	"xpvav"
.LASF107:
	.string	"xmg_stash"
.LASF73:
	.string	"gp_av"
.LASF77:
	.string	"gp_cvgen"
.LASF79:
	.string	"gp_line"
.LASF62:
	.string	"minlen"
.LASF271:
	.string	"namesv"
.LASF91:
	.string	"xrv_rv"
.LASF310:
	.string	"namesav"
.LASF213:
	.string	"cv_flags_t"
.LASF151:
	.string	"xio_ofp"
.LASF333:
	.string	"PL_markstack_ptr"
.LASF237:
	.string	"sv_x"
.LASF54:
	.string	"regstclass"
.LASF158:
	.string	"xio_top_gv"
.LASF278:
	.string	"blessstr"
.LASF309:
	.string	"todumpav"
.LASF64:
	.string	"nparens"
.LASF209:
	.string	"SVt_PVCV"
.LASF104:
	.string	"XPVMG"
.LASF327:
	.string	"PL_stack_sp"
.LASF180:
	.string	"any_dptr"
.LASF328:
	.string	"PL_op"
.LASF130:
	.string	"xgv_name"
.LASF245:
	.string	"levelp"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
