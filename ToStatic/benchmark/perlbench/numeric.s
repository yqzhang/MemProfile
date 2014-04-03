	.file	"numeric.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 numeric.c
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
	.globl	Perl_cast_ulong
	.type	Perl_cast_ulong, @function
Perl_cast_ulong:
.LFB2:
	.file 1 "numeric.c"
	.loc 1 32 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)	# f, f
	.loc 1 33 0
	xorpd	%xmm0, %xmm0	# tmp64
	ucomisd	-8(%rbp), %xmm0	# f, tmp64
	jbe	.L17	#,
	.loc 1 34 0
	movsd	.LC1(%rip), %xmm0	#, tmp65
	ucomisd	-8(%rbp), %xmm0	# f, tmp65
	jbe	.L18	#,
	.loc 1 34 0 is_stmt 0 discriminator 1
	movl	$-2147483648, %eax	#, iftmp.0
	jmp	.L6	#
.L18:
	.loc 1 34 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# f, tmp66
	cvttsd2si	%xmm0, %eax	# tmp66, D.11671
.L6:
	.loc 1 34 0 discriminator 3
	jmp	.L7	#
.L17:
	.loc 1 35 0 is_stmt 1
	movsd	.LC2(%rip), %xmm0	#, tmp67
	ucomisd	-8(%rbp), %xmm0	# f, tmp67
	jbe	.L19	#,
	.loc 1 42 0
	movsd	-8(%rbp), %xmm0	# f, tmp69
	cvttsd2siq	%xmm0, %rax	# tmp69, tmp68
	jmp	.L7	#
.L19:
	.loc 1 45 0
	movsd	-8(%rbp), %xmm0	# f, tmp70
	xorpd	%xmm1, %xmm1	# tmp71
	ucomisd	%xmm1, %xmm0	# tmp71, tmp70
	jbe	.L20	#,
	.loc 1 45 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.1
	jmp	.L12	#
.L20:
	.loc 1 45 0 discriminator 2
	movl	$0, %eax	#, iftmp.1
.L12:
.L7:
	.loc 1 46 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_cast_ulong, .-Perl_cast_ulong
	.globl	Perl_cast_i32
	.type	Perl_cast_i32, @function
Perl_cast_i32:
.LFB3:
	.loc 1 50 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)	# f, f
	.loc 1 51 0
	movsd	.LC3(%rip), %xmm0	#, tmp64
	ucomisd	-8(%rbp), %xmm0	# f, tmp64
	jbe	.L37	#,
	.loc 1 52 0
	movsd	.LC1(%rip), %xmm0	#, tmp65
	ucomisd	-8(%rbp), %xmm0	# f, tmp65
	jbe	.L38	#,
	.loc 1 52 0 is_stmt 0 discriminator 1
	movl	$-2147483648, %eax	#, iftmp.2
	jmp	.L26	#
.L38:
	.loc 1 52 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# f, tmp66
	cvttsd2si	%xmm0, %eax	# tmp66, iftmp.2
.L26:
	.loc 1 52 0 discriminator 3
	jmp	.L27	#
.L37:
	.loc 1 53 0 is_stmt 1
	movsd	.LC2(%rip), %xmm0	#, tmp67
	ucomisd	-8(%rbp), %xmm0	# f, tmp67
	jbe	.L39	#,
	.loc 1 60 0
	movsd	-8(%rbp), %xmm0	# f, tmp69
	cvttsd2siq	%xmm0, %rax	# tmp69, tmp68
	jmp	.L27	#
.L39:
	.loc 1 63 0
	movsd	-8(%rbp), %xmm0	# f, tmp70
	xorpd	%xmm1, %xmm1	# tmp71
	ucomisd	%xmm1, %xmm0	# tmp71, tmp70
	jbe	.L40	#,
	.loc 1 63 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.3
	jmp	.L32	#
.L40:
	.loc 1 63 0 discriminator 2
	movl	$0, %eax	#, iftmp.3
.L32:
.L27:
	.loc 1 64 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_cast_i32, .-Perl_cast_i32
	.globl	Perl_cast_iv
	.type	Perl_cast_iv, @function
Perl_cast_iv:
.LFB4:
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)	# f, f
	.loc 1 69 0
	movsd	.LC4(%rip), %xmm0	#, tmp64
	ucomisd	-8(%rbp), %xmm0	# f, tmp64
	jbe	.L59	#,
	.loc 1 70 0
	movsd	.LC5(%rip), %xmm0	#, tmp65
	ucomisd	-8(%rbp), %xmm0	# f, tmp65
	jbe	.L60	#,
	.loc 1 70 0 is_stmt 0 discriminator 1
	movabsq	$-9223372036854775808, %rax	#, iftmp.4
	jmp	.L46	#
.L60:
	.loc 1 70 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# f, tmp66
	cvttsd2siq	%xmm0, %rax	# tmp66, iftmp.4
.L46:
	.loc 1 70 0 discriminator 3
	jmp	.L47	#
.L59:
	.loc 1 71 0 is_stmt 1
	movsd	.LC6(%rip), %xmm0	#, tmp67
	ucomisd	-8(%rbp), %xmm0	# f, tmp67
	jbe	.L61	#,
	.loc 1 79 0
	movsd	-8(%rbp), %xmm0	# f, tmp68
	ucomisd	.LC4(%rip), %xmm0	#, tmp68
	jae	.L50	#,
	movsd	-8(%rbp), %xmm0	# f, tmp69
	cvttsd2siq	%xmm0, %rax	# tmp69, D.11675
	jmp	.L47	#
.L50:
	movsd	-8(%rbp), %xmm0	# f, tmp71
	movsd	.LC4(%rip), %xmm1	#, tmp72
	subsd	%xmm1, %xmm0	# tmp72, tmp70
	cvttsd2siq	%xmm0, %rax	# tmp70, D.11675
	movabsq	$-9223372036854775808, %rdx	#, tmp73
	xorq	%rdx, %rax	# tmp73, D.11675
	jmp	.L47	#
.L61:
	.loc 1 82 0
	movsd	-8(%rbp), %xmm0	# f, tmp74
	xorpd	%xmm1, %xmm1	# tmp75
	ucomisd	%xmm1, %xmm0	# tmp75, tmp74
	jbe	.L62	#,
	.loc 1 82 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.5
	jmp	.L54	#
.L62:
	.loc 1 82 0 discriminator 2
	movl	$0, %eax	#, iftmp.5
.L54:
.L47:
	.loc 1 83 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_cast_iv, .-Perl_cast_iv
	.globl	Perl_cast_uv
	.type	Perl_cast_uv, @function
Perl_cast_uv:
.LFB5:
	.loc 1 87 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)	# f, f
	.loc 1 88 0
	xorpd	%xmm0, %xmm0	# tmp64
	ucomisd	-8(%rbp), %xmm0	# f, tmp64
	jbe	.L81	#,
	.loc 1 89 0
	movsd	.LC5(%rip), %xmm0	#, tmp65
	ucomisd	-8(%rbp), %xmm0	# f, tmp65
	jbe	.L82	#,
	.loc 1 89 0 is_stmt 0 discriminator 1
	movabsq	$-9223372036854775808, %rax	#, iftmp.6
	jmp	.L68	#
.L82:
	.loc 1 89 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# f, tmp66
	cvttsd2siq	%xmm0, %rax	# tmp66, D.11677
.L68:
	.loc 1 89 0 discriminator 3
	jmp	.L69	#
.L81:
	.loc 1 90 0 is_stmt 1
	movsd	.LC6(%rip), %xmm0	#, tmp67
	ucomisd	-8(%rbp), %xmm0	# f, tmp67
	jbe	.L83	#,
	.loc 1 97 0
	movsd	-8(%rbp), %xmm0	# f, tmp68
	ucomisd	.LC4(%rip), %xmm0	#, tmp68
	jae	.L72	#,
	movsd	-8(%rbp), %xmm0	# f, tmp69
	cvttsd2siq	%xmm0, %rax	# tmp69, D.11676
	jmp	.L69	#
.L72:
	movsd	-8(%rbp), %xmm0	# f, tmp71
	movsd	.LC4(%rip), %xmm1	#, tmp72
	subsd	%xmm1, %xmm0	# tmp72, tmp70
	cvttsd2siq	%xmm0, %rax	# tmp70, D.11676
	movabsq	$-9223372036854775808, %rdx	#, tmp73
	xorq	%rdx, %rax	# tmp73, D.11676
	jmp	.L69	#
.L83:
	.loc 1 100 0
	movsd	-8(%rbp), %xmm0	# f, tmp74
	xorpd	%xmm1, %xmm1	# tmp75
	ucomisd	%xmm1, %xmm0	# tmp75, tmp74
	jbe	.L84	#,
	.loc 1 100 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.7
	jmp	.L76	#
.L84:
	.loc 1 100 0 discriminator 2
	movl	$0, %eax	#, iftmp.7
.L76:
.L69:
	.loc 1 101 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_cast_uv, .-Perl_cast_uv
	.globl	Perl_huge
	.type	Perl_huge, @function
Perl_huge:
.LFB6:
	.loc 1 111 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 115 0
	movabsq	$9218868437227405312, %rax	#, D.11678
	.loc 1 116 0
	movq	%rax, -8(%rbp)	# <retval>, %sfp
	movsd	-8(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_huge, .-Perl_huge
	.section	.rodata
	.align 8
.LC8:
	.string	"Integer overflow in binary number"
	.align 8
.LC9:
	.string	"Illegal binary digit '%c' ignored"
	.align 8
.LC11:
	.string	"Binary number > 0b11111111111111111111111111111111 non-portable"
	.text
	.globl	Perl_grok_bin
	.type	Perl_grok_bin, @function
Perl_grok_bin:
.LFB7:
	.loc 1 147 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# start, start
	movq	%rsi, -64(%rbp)	# len_p, len_p
	movq	%rdx, -72(%rbp)	# flags, flags
	movq	%rcx, -80(%rbp)	# result, result
	.loc 1 148 0
	movq	-56(%rbp), %rax	# start, tmp138
	movq	%rax, -40(%rbp)	# tmp138, s
	.loc 1 149 0
	movq	-64(%rbp), %rax	# len_p, tmp139
	movq	(%rax), %rax	# *len_p_19(D), tmp140
	movq	%rax, -32(%rbp)	# tmp140, len
	.loc 1 150 0
	movq	$0, -24(%rbp)	#, value
	.loc 1 151 0
	movl	$0, %eax	#, tmp141
	movq	%rax, -16(%rbp)	# tmp141, value_nv
	.loc 1 153 0
	movabsq	$9223372036854775807, %rax	#, tmp176
	movq	%rax, -8(%rbp)	# tmp176, max_div_2
	.loc 1 154 0
	movq	-72(%rbp), %rax	# flags, tmp142
	movl	(%rax), %eax	# *flags_24(D), D.11681
	andl	$1, %eax	#, tmp143
	movb	%al, -41(%rbp)	# tmp143, allow_underscores
	.loc 1 155 0
	movb	$0, -43(%rbp)	#, overflowed
	.loc 1 157 0
	movq	-72(%rbp), %rax	# flags, tmp144
	movl	(%rax), %eax	# *flags_24(D), D.11681
	andl	$2, %eax	#, D.11681
	testl	%eax, %eax	# D.11681
	jne	.L88	#,
	.loc 1 161 0
	cmpq	$0, -32(%rbp)	#, len
	je	.L88	#,
	.loc 1 162 0
	movq	-40(%rbp), %rax	# s, tmp145
	movzbl	(%rax), %eax	# *s_18, D.11682
	cmpb	$98, %al	#, D.11682
	jne	.L89	#,
	.loc 1 163 0
	addq	$1, -40(%rbp)	#, s
	.loc 1 164 0
	subq	$1, -32(%rbp)	#, len
	jmp	.L88	#
.L89:
	.loc 1 166 0
	cmpq	$1, -32(%rbp)	#, len
	jbe	.L88	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp146
	movzbl	(%rax), %eax	# *s_18, D.11682
	cmpb	$48, %al	#, D.11682
	jne	.L88	#,
	movq	-40(%rbp), %rax	# s, tmp147
	addq	$1, %rax	#, D.11683
	movzbl	(%rax), %eax	# *_35, D.11682
	cmpb	$98, %al	#, D.11682
	jne	.L88	#,
	.loc 1 167 0 is_stmt 1
	addq	$2, -40(%rbp)	#, s
	.loc 1 168 0
	subq	$2, -32(%rbp)	#, len
	.loc 1 173 0
	jmp	.L90	#
.L88:
	jmp	.L90	#
.L106:
.LBB2:
	.loc 1 174 0
	movq	-40(%rbp), %rax	# s, tmp148
	movzbl	(%rax), %eax	# *s_3, tmp149
	movb	%al, -42(%rbp)	# tmp149, bit
	.loc 1 175 0
	cmpb	$48, -42(%rbp)	#, bit
	je	.L91	#,
	.loc 1 175 0 is_stmt 0 discriminator 1
	cmpb	$49, -42(%rbp)	#, bit
	jne	.L92	#,
.L91:
	.loc 1 180 0 is_stmt 1
	cmpb	$0, -43(%rbp)	#, overflowed
	jne	.L93	#,
	.loc 1 181 0
	movq	-24(%rbp), %rax	# value, tmp150
	cmpq	-8(%rbp), %rax	# max_div_2, tmp150
	ja	.L94	#,
	.loc 1 182 0
	movq	-24(%rbp), %rax	# value, tmp151
	leaq	(%rax,%rax), %rdx	#, D.11687
	movsbl	-42(%rbp), %eax	# bit, D.11681
	subl	$48, %eax	#, D.11681
	cltq
	orq	%rdx, %rax	# D.11687, tmp152
	movq	%rax, -24(%rbp)	# tmp152, value
	.loc 1 183 0
	jmp	.L95	#
.L94:
	.loc 1 186 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.8
	movq	80(%rax), %rax	# PL_curcop.8_74->cop_warnings, D.11684
	testq	%rax, %rax	# D.11684
	je	.L96	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.9
	movq	80(%rax), %rax	# PL_curcop.9_76->cop_warnings, D.11684
	cmpq	$16, %rax	#, D.11684
	je	.L96	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.10
	movq	80(%rax), %rax	# PL_curcop.10_78->cop_warnings, D.11684
	cmpq	$32, %rax	#, D.11684
	je	.L97	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.11
	movq	80(%rax), %rax	# PL_curcop.11_80->cop_warnings, D.11684
	movq	(%rax), %rax	# _81->sv_any, D.11685
	movq	(%rax), %rax	# MEM[(struct XPV *)_82].xpv_pv, D.11686
	addq	$3, %rax	#, D.11686
	movzbl	(%rax), %eax	# *_84, D.11682
	movsbl	%al, %eax	# D.11682, D.11681
	andl	$64, %eax	#, D.11681
	testl	%eax, %eax	# D.11681
	je	.L97	#,
.L96:
	.loc 1 187 0 is_stmt 1
	movl	$.LC8, %esi	#,
	movl	$15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L97:
	.loc 1 189 0
	movb	$1, -43(%rbp)	#, overflowed
	.loc 1 190 0
	movq	-24(%rbp), %rax	# value, tmp154
	testq	%rax, %rax	# tmp154
	js	.L98	#,
	cvtsi2sdq	%rax, %xmm0	# tmp154, tmp153
	jmp	.L99	#
.L98:
	movq	%rax, %rdx	# tmp154, tmp156
	shrq	%rdx	# tmp156
	andl	$1, %eax	#, tmp157
	orq	%rax, %rdx	# tmp157, tmp156
	cvtsi2sdq	%rdx, %xmm0	# tmp156, tmp155
	addsd	%xmm0, %xmm0	# tmp155, tmp153
.L99:
	movsd	%xmm0, -16(%rbp)	# tmp153, value_nv
.L93:
	.loc 1 192 0
	movsd	-16(%rbp), %xmm0	# value_nv, tmp158
	addsd	%xmm0, %xmm0	# tmp158, tmp159
	movsd	%xmm0, -16(%rbp)	# tmp159, value_nv
	.loc 1 199 0
	movsbl	-42(%rbp), %eax	# bit, D.11681
	subl	$48, %eax	#, D.11681
	cvtsi2sd	%eax, %xmm0	# D.11681, D.11688
	movsd	-16(%rbp), %xmm1	# value_nv, tmp161
	addsd	%xmm1, %xmm0	# tmp161, tmp160
	movsd	%xmm0, -16(%rbp)	# tmp160, value_nv
	.loc 1 200 0
	jmp	.L95	#
.L92:
	.loc 1 202 0
	cmpb	$95, -42(%rbp)	#, bit
	jne	.L100	#,
	.loc 1 202 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, len
	je	.L100	#,
	cmpb	$0, -41(%rbp)	#, allow_underscores
	je	.L100	#,
	movq	-40(%rbp), %rax	# s, tmp162
	movzbl	1(%rax), %eax	# MEM[(const char *)s_3 + 1B], tmp163
	movb	%al, -42(%rbp)	# tmp163, bit
	cmpb	$0, -42(%rbp)	#, bit
	je	.L100	#,
	.loc 1 203 0 is_stmt 1
	cmpb	$48, -42(%rbp)	#, bit
	je	.L101	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	cmpb	$49, -42(%rbp)	#, bit
	jne	.L100	#,
.L101:
	.loc 1 205 0 is_stmt 1
	subq	$1, -32(%rbp)	#, len
	.loc 1 206 0
	addq	$1, -40(%rbp)	#, s
	.loc 1 207 0
	jmp	.L91	#
.L100:
	.loc 1 209 0
	movq	-72(%rbp), %rax	# flags, tmp164
	movl	(%rax), %eax	# *flags_24(D), D.11681
	andl	$4, %eax	#, D.11681
	testl	%eax, %eax	# D.11681
	jne	.L102	#,
	.loc 1 209 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.12
	movq	80(%rax), %rax	# PL_curcop.12_48->cop_warnings, D.11684
	testq	%rax, %rax	# D.11684
	je	.L103	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.13
	movq	80(%rax), %rax	# PL_curcop.13_50->cop_warnings, D.11684
	cmpq	$32, %rax	#, D.11684
	je	.L103	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.14
	movq	80(%rax), %rax	# PL_curcop.14_52->cop_warnings, D.11684
	cmpq	$16, %rax	#, D.11684
	je	.L104	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.15
	movq	80(%rax), %rax	# PL_curcop.15_54->cop_warnings, D.11684
	movq	(%rax), %rax	# _55->sv_any, D.11685
	movq	(%rax), %rax	# MEM[(struct XPV *)_56].xpv_pv, D.11686
	addq	$7, %rax	#, D.11686
	movzbl	(%rax), %eax	# *_58, D.11682
	movsbl	%al, %eax	# D.11682, D.11681
	andl	$64, %eax	#, D.11681
	testl	%eax, %eax	# D.11681
	jne	.L104	#,
.L103:
	.loc 1 209 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.16
	movq	80(%rax), %rax	# PL_curcop.16_62->cop_warnings, D.11684
	testq	%rax, %rax	# D.11684
	jne	.L102	#,
	.loc 1 209 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.17
	movzbl	%al, %eax	# PL_dowarn.17, D.11681
	andl	$1, %eax	#, D.11681
	testl	%eax, %eax	# D.11681
	je	.L102	#,
.L104:
	.loc 1 211 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp165
	movzbl	(%rax), %eax	# *s_3, D.11682
	.loc 1 210 0
	movsbl	%al, %eax	# D.11682, D.11681
	movl	%eax, %edx	# D.11681,
	movl	$.LC9, %esi	#,
	movl	$31, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 212 0
	jmp	.L105	#
.L102:
	jmp	.L105	#
.L95:
.LBE2:
	.loc 1 173 0
	addq	$1, -40(%rbp)	#, s
.L90:
	.loc 1 173 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# len, len.18
	leaq	-1(%rax), %rdx	#, tmp166
	movq	%rdx, -32(%rbp)	# tmp166, len
	testq	%rax, %rax	# len.18
	je	.L105	#,
	.loc 1 173 0 discriminator 2
	movq	-40(%rbp), %rax	# s, tmp167
	movzbl	(%rax), %eax	# *s_3, D.11682
	testb	%al, %al	# D.11682
	jne	.L106	#,
.L105:
	.loc 1 215 0 is_stmt 1
	cmpb	$0, -43(%rbp)	#, overflowed
	je	.L107	#,
	.loc 1 215 0 is_stmt 0 discriminator 1
	movsd	-16(%rbp), %xmm0	# value_nv, tmp168
	ucomisd	.LC10(%rip), %xmm0	#, tmp168
	ja	.L108	#,
.L107:
	.loc 1 217 0 is_stmt 1
	cmpb	$0, -43(%rbp)	#, overflowed
	jne	.L109	#,
	.loc 1 217 0 is_stmt 0 discriminator 1
	movl	$4294967295, %eax	#, tmp169
	cmpq	%rax, -24(%rbp)	# tmp169, value
	jbe	.L109	#,
.L108:
	.loc 1 220 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.19
	movq	80(%rax), %rax	# PL_curcop.19_96->cop_warnings, D.11684
	testq	%rax, %rax	# D.11684
	je	.L110	#,
	.loc 1 220 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.20
	movq	80(%rax), %rax	# PL_curcop.20_98->cop_warnings, D.11684
	cmpq	$32, %rax	#, D.11684
	je	.L110	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.21
	movq	80(%rax), %rax	# PL_curcop.21_100->cop_warnings, D.11684
	cmpq	$16, %rax	#, D.11684
	je	.L111	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.22
	movq	80(%rax), %rax	# PL_curcop.22_102->cop_warnings, D.11684
	movq	(%rax), %rax	# _103->sv_any, D.11685
	movq	(%rax), %rax	# MEM[(struct XPV *)_104].xpv_pv, D.11686
	addq	$4, %rax	#, D.11686
	movzbl	(%rax), %eax	# *_106, D.11682
	movsbl	%al, %eax	# D.11682, D.11681
	andl	$4, %eax	#, D.11681
	testl	%eax, %eax	# D.11681
	jne	.L111	#,
.L110:
	.loc 1 220 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.23
	movq	80(%rax), %rax	# PL_curcop.23_110->cop_warnings, D.11684
	testq	%rax, %rax	# D.11684
	jne	.L109	#,
	.loc 1 220 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.24
	movzbl	%al, %eax	# PL_dowarn.24, D.11681
	andl	$1, %eax	#, D.11681
	testl	%eax, %eax	# D.11681
	je	.L109	#,
.L111:
	.loc 1 221 0 is_stmt 1
	movl	$.LC11, %esi	#,
	movl	$17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L109:
	.loc 1 224 0
	movq	-40(%rbp), %rdx	# s, s.25
	movq	-56(%rbp), %rax	# start, start.26
	subq	%rax, %rdx	# start.26, D.11689
	movq	%rdx, %rax	# D.11689, D.11689
	movq	%rax, %rdx	# D.11689, D.11687
	movq	-64(%rbp), %rax	# len_p, tmp170
	movq	%rdx, (%rax)	# D.11687, *len_p_19(D)
	.loc 1 225 0
	cmpb	$0, -43(%rbp)	#, overflowed
	jne	.L112	#,
	.loc 1 226 0
	movq	-72(%rbp), %rax	# flags, tmp171
	movl	$0, (%rax)	#, *flags_24(D)
	.loc 1 227 0
	movq	-24(%rbp), %rax	# value, D.11680
	jmp	.L113	#
.L112:
	.loc 1 229 0
	movq	-72(%rbp), %rax	# flags, tmp172
	movl	$2, (%rax)	#, *flags_24(D)
	.loc 1 230 0
	cmpq	$0, -80(%rbp)	#, result
	je	.L114	#,
	.loc 1 231 0
	movq	-80(%rbp), %rdx	# result, tmp173
	movq	-16(%rbp), %rax	# value_nv, tmp174
	movq	%rax, (%rdx)	# tmp174, *result_120(D)
.L114:
	.loc 1 232 0
	movq	$-1, %rax	#, D.11680
.L113:
	.loc 1 233 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_grok_bin, .-Perl_grok_bin
	.section	.rodata
	.align 8
.LC12:
	.string	"Integer overflow in hexadecimal number"
	.align 8
.LC14:
	.string	"Illegal hexadecimal digit '%c' ignored"
	.align 8
.LC15:
	.string	"Hexadecimal number > 0xffffffff non-portable"
	.text
	.globl	Perl_grok_hex
	.type	Perl_grok_hex, @function
Perl_grok_hex:
.LFB8:
	.loc 1 263 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# start, start
	movq	%rsi, -80(%rbp)	# len_p, len_p
	movq	%rdx, -88(%rbp)	# flags, flags
	movq	%rcx, -96(%rbp)	# result, result
	.loc 1 264 0
	movq	-72(%rbp), %rax	# start, tmp154
	movq	%rax, -48(%rbp)	# tmp154, s
	.loc 1 265 0
	movq	-80(%rbp), %rax	# len_p, tmp155
	movq	(%rax), %rax	# *len_p_19(D), tmp156
	movq	%rax, -40(%rbp)	# tmp156, len
	.loc 1 266 0
	movq	$0, -32(%rbp)	#, value
	.loc 1 267 0
	movl	$0, %eax	#, tmp157
	movq	%rax, -24(%rbp)	# tmp157, value_nv
	.loc 1 269 0
	movabsq	$1152921504606846975, %rax	#, tmp195
	movq	%rax, -8(%rbp)	# tmp195, max_div_16
	.loc 1 270 0
	movq	-88(%rbp), %rax	# flags, tmp158
	movl	(%rax), %eax	# *flags_24(D), D.11694
	andl	$1, %eax	#, tmp159
	movb	%al, -49(%rbp)	# tmp159, allow_underscores
	.loc 1 271 0
	movb	$0, -50(%rbp)	#, overflowed
	.loc 1 274 0
	movq	-88(%rbp), %rax	# flags, tmp160
	movl	(%rax), %eax	# *flags_24(D), D.11694
	andl	$2, %eax	#, D.11694
	testl	%eax, %eax	# D.11694
	jne	.L116	#,
	.loc 1 278 0
	cmpq	$0, -40(%rbp)	#, len
	je	.L116	#,
	.loc 1 279 0
	movq	-48(%rbp), %rax	# s, tmp161
	movzbl	(%rax), %eax	# *s_18, D.11695
	cmpb	$120, %al	#, D.11695
	jne	.L117	#,
	.loc 1 280 0
	addq	$1, -48(%rbp)	#, s
	.loc 1 281 0
	subq	$1, -40(%rbp)	#, len
	jmp	.L116	#
.L117:
	.loc 1 283 0
	cmpq	$1, -40(%rbp)	#, len
	jbe	.L116	#,
	.loc 1 283 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# s, tmp162
	movzbl	(%rax), %eax	# *s_18, D.11695
	cmpb	$48, %al	#, D.11695
	jne	.L116	#,
	movq	-48(%rbp), %rax	# s, tmp163
	addq	$1, %rax	#, D.11696
	movzbl	(%rax), %eax	# *_35, D.11695
	cmpb	$120, %al	#, D.11695
	jne	.L116	#,
	.loc 1 284 0 is_stmt 1
	addq	$2, -48(%rbp)	#, s
	.loc 1 285 0
	subq	$2, -40(%rbp)	#, len
	.loc 1 290 0
	jmp	.L118	#
.L116:
	jmp	.L118	#
.L133:
	.loc 1 291 0
	movq	-48(%rbp), %rax	# s, tmp164
	movzbl	(%rax), %eax	# *s_3, D.11695
	movsbl	%al, %edx	# D.11695, D.11694
	movq	PL_hexdigit(%rip), %rax	# PL_hexdigit, PL_hexdigit.27
	movl	%edx, %esi	# D.11694,
	movq	%rax, %rdi	# PL_hexdigit.27,
	call	strchr	#
	movq	%rax, -16(%rbp)	# tmp165, hexdigit
	.loc 1 292 0
	cmpq	$0, -16(%rbp)	#, hexdigit
	je	.L119	#,
.L120:
	.loc 1 297 0
	cmpb	$0, -50(%rbp)	#, overflowed
	jne	.L121	#,
	.loc 1 298 0
	movq	-32(%rbp), %rax	# value, tmp166
	cmpq	-8(%rbp), %rax	# max_div_16, tmp166
	ja	.L122	#,
	.loc 1 299 0
	movq	-32(%rbp), %rax	# value, tmp167
	salq	$4, %rax	#, D.11700
	movq	%rax, %rcx	# D.11700, D.11700
	movq	-16(%rbp), %rdx	# hexdigit, hexdigit.28
	movq	PL_hexdigit(%rip), %rax	# PL_hexdigit, PL_hexdigit.29
	subq	%rax, %rdx	# PL_hexdigit.30, D.11701
	movq	%rdx, %rax	# D.11701, D.11701
	andl	$15, %eax	#, D.11700
	orq	%rcx, %rax	# D.11700, tmp168
	movq	%rax, -32(%rbp)	# tmp168, value
	.loc 1 300 0
	jmp	.L123	#
.L122:
	.loc 1 303 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.31
	movq	80(%rax), %rax	# PL_curcop.31_87->cop_warnings, D.11697
	testq	%rax, %rax	# D.11697
	je	.L124	#,
	.loc 1 303 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.32
	movq	80(%rax), %rax	# PL_curcop.32_89->cop_warnings, D.11697
	cmpq	$16, %rax	#, D.11697
	je	.L124	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.33
	movq	80(%rax), %rax	# PL_curcop.33_91->cop_warnings, D.11697
	cmpq	$32, %rax	#, D.11697
	je	.L125	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.34
	movq	80(%rax), %rax	# PL_curcop.34_93->cop_warnings, D.11697
	movq	(%rax), %rax	# _94->sv_any, D.11698
	movq	(%rax), %rax	# MEM[(struct XPV *)_95].xpv_pv, D.11699
	addq	$3, %rax	#, D.11699
	movzbl	(%rax), %eax	# *_97, D.11695
	movsbl	%al, %eax	# D.11695, D.11694
	andl	$64, %eax	#, D.11694
	testl	%eax, %eax	# D.11694
	je	.L125	#,
.L124:
	.loc 1 304 0 is_stmt 1
	movl	$.LC12, %esi	#,
	movl	$15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L125:
	.loc 1 306 0
	movb	$1, -50(%rbp)	#, overflowed
	.loc 1 307 0
	movq	-32(%rbp), %rax	# value, tmp170
	testq	%rax, %rax	# tmp170
	js	.L126	#,
	cvtsi2sdq	%rax, %xmm0	# tmp170, tmp169
	jmp	.L127	#
.L126:
	movq	%rax, %rdx	# tmp170, tmp172
	shrq	%rdx	# tmp172
	andl	$1, %eax	#, tmp173
	orq	%rax, %rdx	# tmp173, tmp172
	cvtsi2sdq	%rdx, %xmm0	# tmp172, tmp171
	addsd	%xmm0, %xmm0	# tmp171, tmp169
.L127:
	movsd	%xmm0, -24(%rbp)	# tmp169, value_nv
.L121:
	.loc 1 309 0
	movsd	-24(%rbp), %xmm1	# value_nv, tmp175
	movsd	.LC13(%rip), %xmm0	#, tmp176
	mulsd	%xmm1, %xmm0	# tmp175, tmp174
	movsd	%xmm0, -24(%rbp)	# tmp174, value_nv
	.loc 1 316 0
	movq	-16(%rbp), %rdx	# hexdigit, hexdigit.35
	movq	PL_hexdigit(%rip), %rax	# PL_hexdigit, PL_hexdigit.36
	subq	%rax, %rdx	# PL_hexdigit.37, D.11701
	movq	%rdx, %rax	# D.11701, D.11701
	andl	$15, %eax	#, D.11701
	cvtsi2sdq	%rax, %xmm0	# D.11701, D.11702
	movsd	-24(%rbp), %xmm1	# value_nv, tmp178
	addsd	%xmm1, %xmm0	# tmp178, tmp177
	movsd	%xmm0, -24(%rbp)	# tmp177, value_nv
	.loc 1 317 0
	jmp	.L123	#
.L119:
	.loc 1 319 0
	movq	-48(%rbp), %rax	# s, tmp179
	movzbl	(%rax), %eax	# *s_3, D.11695
	cmpb	$95, %al	#, D.11695
	jne	.L128	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, len
	je	.L128	#,
	cmpb	$0, -49(%rbp)	#, allow_underscores
	je	.L128	#,
	movq	-48(%rbp), %rax	# s, tmp180
	addq	$1, %rax	#, D.11696
	movzbl	(%rax), %eax	# *_47, D.11695
	testb	%al, %al	# D.11695
	je	.L128	#,
	.loc 1 320 0 is_stmt 1
	movq	-48(%rbp), %rax	# s, tmp181
	addq	$1, %rax	#, D.11696
	movzbl	(%rax), %eax	# *_49, D.11695
	movsbl	%al, %edx	# D.11695, D.11694
	movq	PL_hexdigit(%rip), %rax	# PL_hexdigit, PL_hexdigit.38
	movl	%edx, %esi	# D.11694,
	movq	%rax, %rdi	# PL_hexdigit.38,
	call	strchr	#
	movq	%rax, -16(%rbp)	# tmp182, hexdigit
	cmpq	$0, -16(%rbp)	#, hexdigit
	je	.L128	#,
	.loc 1 322 0
	subq	$1, -40(%rbp)	#, len
	.loc 1 323 0
	addq	$1, -48(%rbp)	#, s
	.loc 1 324 0
	jmp	.L120	#
.L128:
	.loc 1 326 0
	movq	-88(%rbp), %rax	# flags, tmp183
	movl	(%rax), %eax	# *flags_24(D), D.11694
	andl	$4, %eax	#, D.11694
	testl	%eax, %eax	# D.11694
	jne	.L129	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.39
	movq	80(%rax), %rax	# PL_curcop.39_58->cop_warnings, D.11697
	testq	%rax, %rax	# D.11697
	je	.L130	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.40
	movq	80(%rax), %rax	# PL_curcop.40_60->cop_warnings, D.11697
	cmpq	$32, %rax	#, D.11697
	je	.L130	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.41
	movq	80(%rax), %rax	# PL_curcop.41_62->cop_warnings, D.11697
	cmpq	$16, %rax	#, D.11697
	je	.L131	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.42
	movq	80(%rax), %rax	# PL_curcop.42_64->cop_warnings, D.11697
	movq	(%rax), %rax	# _65->sv_any, D.11698
	movq	(%rax), %rax	# MEM[(struct XPV *)_66].xpv_pv, D.11699
	addq	$7, %rax	#, D.11699
	movzbl	(%rax), %eax	# *_68, D.11695
	movsbl	%al, %eax	# D.11695, D.11694
	andl	$64, %eax	#, D.11694
	testl	%eax, %eax	# D.11694
	jne	.L131	#,
.L130:
	.loc 1 326 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.43
	movq	80(%rax), %rax	# PL_curcop.43_72->cop_warnings, D.11697
	testq	%rax, %rax	# D.11697
	jne	.L129	#,
	.loc 1 326 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.44
	movzbl	%al, %eax	# PL_dowarn.44, D.11694
	andl	$1, %eax	#, D.11694
	testl	%eax, %eax	# D.11694
	je	.L129	#,
.L131:
	.loc 1 328 0 is_stmt 1
	movq	-48(%rbp), %rax	# s, tmp184
	movzbl	(%rax), %eax	# *s_3, D.11695
	.loc 1 327 0
	movsbl	%al, %eax	# D.11695, D.11694
	movl	%eax, %edx	# D.11694,
	movl	$.LC14, %esi	#,
	movl	$31, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 329 0
	jmp	.L132	#
.L129:
	jmp	.L132	#
.L123:
	.loc 1 290 0
	addq	$1, -48(%rbp)	#, s
.L118:
	.loc 1 290 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# len, len.45
	leaq	-1(%rax), %rdx	#, tmp185
	movq	%rdx, -40(%rbp)	# tmp185, len
	testq	%rax, %rax	# len.45
	je	.L132	#,
	.loc 1 290 0 discriminator 2
	movq	-48(%rbp), %rax	# s, tmp186
	movzbl	(%rax), %eax	# *s_3, D.11695
	testb	%al, %al	# D.11695
	jne	.L133	#,
.L132:
	.loc 1 332 0 is_stmt 1
	cmpb	$0, -50(%rbp)	#, overflowed
	je	.L134	#,
	.loc 1 332 0 is_stmt 0 discriminator 1
	movsd	-24(%rbp), %xmm0	# value_nv, tmp187
	ucomisd	.LC10(%rip), %xmm0	#, tmp187
	ja	.L135	#,
.L134:
	.loc 1 334 0 is_stmt 1
	cmpb	$0, -50(%rbp)	#, overflowed
	jne	.L136	#,
	.loc 1 334 0 is_stmt 0 discriminator 1
	movl	$4294967295, %eax	#, tmp188
	cmpq	%rax, -32(%rbp)	# tmp188, value
	jbe	.L136	#,
.L135:
	.loc 1 337 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.46
	movq	80(%rax), %rax	# PL_curcop.46_112->cop_warnings, D.11697
	testq	%rax, %rax	# D.11697
	je	.L137	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.47
	movq	80(%rax), %rax	# PL_curcop.47_114->cop_warnings, D.11697
	cmpq	$32, %rax	#, D.11697
	je	.L137	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.48
	movq	80(%rax), %rax	# PL_curcop.48_116->cop_warnings, D.11697
	cmpq	$16, %rax	#, D.11697
	je	.L138	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.49
	movq	80(%rax), %rax	# PL_curcop.49_118->cop_warnings, D.11697
	movq	(%rax), %rax	# _119->sv_any, D.11698
	movq	(%rax), %rax	# MEM[(struct XPV *)_120].xpv_pv, D.11699
	addq	$4, %rax	#, D.11699
	movzbl	(%rax), %eax	# *_122, D.11695
	movsbl	%al, %eax	# D.11695, D.11694
	andl	$4, %eax	#, D.11694
	testl	%eax, %eax	# D.11694
	jne	.L138	#,
.L137:
	.loc 1 337 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.50
	movq	80(%rax), %rax	# PL_curcop.50_126->cop_warnings, D.11697
	testq	%rax, %rax	# D.11697
	jne	.L136	#,
	.loc 1 337 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.51
	movzbl	%al, %eax	# PL_dowarn.51, D.11694
	andl	$1, %eax	#, D.11694
	testl	%eax, %eax	# D.11694
	je	.L136	#,
.L138:
	.loc 1 338 0 is_stmt 1
	movl	$.LC15, %esi	#,
	movl	$17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L136:
	.loc 1 341 0
	movq	-48(%rbp), %rdx	# s, s.52
	movq	-72(%rbp), %rax	# start, start.53
	subq	%rax, %rdx	# start.53, D.11701
	movq	%rdx, %rax	# D.11701, D.11701
	movq	%rax, %rdx	# D.11701, D.11700
	movq	-80(%rbp), %rax	# len_p, tmp189
	movq	%rdx, (%rax)	# D.11700, *len_p_19(D)
	.loc 1 342 0
	cmpb	$0, -50(%rbp)	#, overflowed
	jne	.L139	#,
	.loc 1 343 0
	movq	-88(%rbp), %rax	# flags, tmp190
	movl	$0, (%rax)	#, *flags_24(D)
	.loc 1 344 0
	movq	-32(%rbp), %rax	# value, D.11693
	jmp	.L140	#
.L139:
	.loc 1 346 0
	movq	-88(%rbp), %rax	# flags, tmp191
	movl	$2, (%rax)	#, *flags_24(D)
	.loc 1 347 0
	cmpq	$0, -96(%rbp)	#, result
	je	.L141	#,
	.loc 1 348 0
	movq	-96(%rbp), %rdx	# result, tmp192
	movq	-24(%rbp), %rax	# value_nv, tmp193
	movq	%rax, (%rdx)	# tmp193, *result_136(D)
.L141:
	.loc 1 349 0
	movq	$-1, %rax	#, D.11693
.L140:
	.loc 1 350 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_grok_hex, .-Perl_grok_hex
	.section	.rodata
	.align 8
.LC16:
	.string	"Integer overflow in octal number"
	.align 8
.LC18:
	.string	"Illegal octal digit '%c' ignored"
	.align 8
.LC19:
	.string	"Octal number > 037777777777 non-portable"
	.text
	.globl	Perl_grok_oct
	.type	Perl_grok_oct, @function
Perl_grok_oct:
.LFB9:
	.loc 1 378 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# start, start
	movq	%rsi, -64(%rbp)	# len_p, len_p
	movq	%rdx, -72(%rbp)	# flags, flags
	movq	%rcx, -80(%rbp)	# result, result
	.loc 1 379 0
	movq	-56(%rbp), %rax	# start, tmp133
	movq	%rax, -40(%rbp)	# tmp133, s
	.loc 1 380 0
	movq	-64(%rbp), %rax	# len_p, tmp134
	movq	(%rax), %rax	# *len_p_18(D), tmp135
	movq	%rax, -32(%rbp)	# tmp135, len
	.loc 1 381 0
	movq	$0, -24(%rbp)	#, value
	.loc 1 382 0
	movl	$0, %eax	#, tmp136
	movq	%rax, -16(%rbp)	# tmp136, value_nv
	.loc 1 384 0
	movabsq	$2305843009213693951, %rax	#, tmp169
	movq	%rax, -8(%rbp)	# tmp169, max_div_8
	.loc 1 385 0
	movq	-72(%rbp), %rax	# flags, tmp137
	movl	(%rax), %eax	# *flags_23(D), D.11707
	andl	$1, %eax	#, tmp138
	movb	%al, -45(%rbp)	# tmp138, allow_underscores
	.loc 1 386 0
	movb	$0, -46(%rbp)	#, overflowed
	.loc 1 388 0
	jmp	.L143	#
.L159:
.LBB3:
	.loc 1 391 0
	movq	-40(%rbp), %rax	# s, tmp139
	movzbl	(%rax), %eax	# *s_2, D.11708
	movsbl	%al, %eax	# D.11708, D.11707
	subl	$48, %eax	#, tmp140
	movl	%eax, -44(%rbp)	# tmp140, digit
	.loc 1 392 0
	cmpl	$0, -44(%rbp)	#, digit
	js	.L144	#,
	.loc 1 392 0 is_stmt 0 discriminator 1
	cmpl	$7, -44(%rbp)	#, digit
	jg	.L144	#,
.L145:
	.loc 1 397 0 is_stmt 1
	cmpb	$0, -46(%rbp)	#, overflowed
	jne	.L146	#,
	.loc 1 398 0
	movq	-24(%rbp), %rax	# value, tmp141
	cmpq	-8(%rbp), %rax	# max_div_8, tmp141
	ja	.L147	#,
	.loc 1 399 0
	movq	-24(%rbp), %rax	# value, tmp142
	leaq	0(,%rax,8), %rdx	#, D.11713
	movl	-44(%rbp), %eax	# digit, tmp143
	cltq
	orq	%rdx, %rax	# D.11713, tmp144
	movq	%rax, -24(%rbp)	# tmp144, value
	.loc 1 400 0
	jmp	.L148	#
.L147:
	.loc 1 403 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.54
	movq	80(%rax), %rax	# PL_curcop.54_66->cop_warnings, D.11710
	testq	%rax, %rax	# D.11710
	je	.L149	#,
	.loc 1 403 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.55
	movq	80(%rax), %rax	# PL_curcop.55_68->cop_warnings, D.11710
	cmpq	$16, %rax	#, D.11710
	je	.L149	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.56
	movq	80(%rax), %rax	# PL_curcop.56_70->cop_warnings, D.11710
	cmpq	$32, %rax	#, D.11710
	je	.L150	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.57
	movq	80(%rax), %rax	# PL_curcop.57_72->cop_warnings, D.11710
	movq	(%rax), %rax	# _73->sv_any, D.11711
	movq	(%rax), %rax	# MEM[(struct XPV *)_74].xpv_pv, D.11712
	addq	$3, %rax	#, D.11712
	movzbl	(%rax), %eax	# *_76, D.11708
	movsbl	%al, %eax	# D.11708, D.11707
	andl	$64, %eax	#, D.11707
	testl	%eax, %eax	# D.11707
	je	.L150	#,
.L149:
	.loc 1 404 0 is_stmt 1
	movl	$.LC16, %esi	#,
	movl	$15, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L150:
	.loc 1 406 0
	movb	$1, -46(%rbp)	#, overflowed
	.loc 1 407 0
	movq	-24(%rbp), %rax	# value, tmp146
	testq	%rax, %rax	# tmp146
	js	.L151	#,
	cvtsi2sdq	%rax, %xmm0	# tmp146, tmp145
	jmp	.L152	#
.L151:
	movq	%rax, %rdx	# tmp146, tmp148
	shrq	%rdx	# tmp148
	andl	$1, %eax	#, tmp149
	orq	%rax, %rdx	# tmp149, tmp148
	cvtsi2sdq	%rdx, %xmm0	# tmp148, tmp147
	addsd	%xmm0, %xmm0	# tmp147, tmp145
.L152:
	movsd	%xmm0, -16(%rbp)	# tmp145, value_nv
.L146:
	.loc 1 409 0
	movsd	-16(%rbp), %xmm1	# value_nv, tmp151
	movsd	.LC17(%rip), %xmm0	#, tmp152
	mulsd	%xmm1, %xmm0	# tmp151, tmp150
	movsd	%xmm0, -16(%rbp)	# tmp150, value_nv
	.loc 1 416 0
	cvtsi2sd	-44(%rbp), %xmm0	# digit, D.11714
	movsd	-16(%rbp), %xmm1	# value_nv, tmp154
	addsd	%xmm1, %xmm0	# tmp154, tmp153
	movsd	%xmm0, -16(%rbp)	# tmp153, value_nv
	.loc 1 417 0
	jmp	.L148	#
.L144:
	.loc 1 419 0
	cmpl	$47, -44(%rbp)	#, digit
	jne	.L153	#,
	.loc 1 419 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, len
	je	.L153	#,
	cmpb	$0, -45(%rbp)	#, allow_underscores
	je	.L153	#,
	.loc 1 420 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp155
	addq	$1, %rax	#, D.11709
	movzbl	(%rax), %eax	# *_34, D.11708
	movsbl	%al, %eax	# D.11708, D.11707
	subl	$48, %eax	#, tmp156
	movl	%eax, -44(%rbp)	# tmp156, digit
	cmpl	$0, -44(%rbp)	#, digit
	je	.L153	#,
	.loc 1 420 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, digit
	js	.L153	#,
	cmpl	$7, -44(%rbp)	#, digit
	jg	.L153	#,
	.loc 1 422 0 is_stmt 1
	subq	$1, -32(%rbp)	#, len
	.loc 1 423 0
	addq	$1, -40(%rbp)	#, s
	.loc 1 424 0
	jmp	.L145	#
.L153:
	.loc 1 429 0
	cmpl	$8, -44(%rbp)	#, digit
	je	.L154	#,
	.loc 1 429 0 is_stmt 0 discriminator 1
	cmpl	$9, -44(%rbp)	#, digit
	jne	.L155	#,
.L154:
	.loc 1 430 0 is_stmt 1
	movq	-72(%rbp), %rax	# flags, tmp157
	movl	(%rax), %eax	# *flags_23(D), D.11707
	andl	$4, %eax	#, D.11707
	testl	%eax, %eax	# D.11707
	jne	.L155	#,
	.loc 1 430 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.58
	movq	80(%rax), %rax	# PL_curcop.58_42->cop_warnings, D.11710
	testq	%rax, %rax	# D.11710
	je	.L156	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.59
	movq	80(%rax), %rax	# PL_curcop.59_44->cop_warnings, D.11710
	cmpq	$32, %rax	#, D.11710
	je	.L156	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.60
	movq	80(%rax), %rax	# PL_curcop.60_46->cop_warnings, D.11710
	cmpq	$16, %rax	#, D.11710
	je	.L157	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.61
	movq	80(%rax), %rax	# PL_curcop.61_48->cop_warnings, D.11710
	movq	(%rax), %rax	# _49->sv_any, D.11711
	movq	(%rax), %rax	# MEM[(struct XPV *)_50].xpv_pv, D.11712
	addq	$7, %rax	#, D.11712
	movzbl	(%rax), %eax	# *_52, D.11708
	movsbl	%al, %eax	# D.11708, D.11707
	andl	$64, %eax	#, D.11707
	testl	%eax, %eax	# D.11707
	jne	.L157	#,
.L156:
	.loc 1 430 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.62
	movq	80(%rax), %rax	# PL_curcop.62_56->cop_warnings, D.11710
	testq	%rax, %rax	# D.11710
	jne	.L155	#,
	.loc 1 430 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.63
	movzbl	%al, %eax	# PL_dowarn.63, D.11707
	andl	$1, %eax	#, D.11707
	testl	%eax, %eax	# D.11707
	je	.L155	#,
.L157:
	.loc 1 432 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp158
	movzbl	(%rax), %eax	# *s_2, D.11708
	.loc 1 431 0
	movsbl	%al, %eax	# D.11708, D.11707
	movl	%eax, %edx	# D.11707,
	movl	$.LC18, %esi	#,
	movl	$31, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	.loc 1 434 0
	jmp	.L158	#
.L155:
	jmp	.L158	#
.L148:
.LBE3:
	.loc 1 388 0
	addq	$1, -40(%rbp)	#, s
.L143:
	.loc 1 388 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# len, len.64
	leaq	-1(%rax), %rdx	#, tmp159
	movq	%rdx, -32(%rbp)	# tmp159, len
	testq	%rax, %rax	# len.64
	je	.L158	#,
	.loc 1 388 0 discriminator 2
	movq	-40(%rbp), %rax	# s, tmp160
	movzbl	(%rax), %eax	# *s_2, D.11708
	testb	%al, %al	# D.11708
	jne	.L159	#,
.L158:
	.loc 1 437 0 is_stmt 1
	cmpb	$0, -46(%rbp)	#, overflowed
	je	.L160	#,
	.loc 1 437 0 is_stmt 0 discriminator 1
	movsd	-16(%rbp), %xmm0	# value_nv, tmp161
	ucomisd	.LC10(%rip), %xmm0	#, tmp161
	ja	.L161	#,
.L160:
	.loc 1 439 0 is_stmt 1
	cmpb	$0, -46(%rbp)	#, overflowed
	jne	.L162	#,
	.loc 1 439 0 is_stmt 0 discriminator 1
	movl	$4294967295, %eax	#, tmp162
	cmpq	%rax, -24(%rbp)	# tmp162, value
	jbe	.L162	#,
.L161:
	.loc 1 442 0 is_stmt 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.65
	movq	80(%rax), %rax	# PL_curcop.65_86->cop_warnings, D.11710
	testq	%rax, %rax	# D.11710
	je	.L163	#,
	.loc 1 442 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.66
	movq	80(%rax), %rax	# PL_curcop.66_88->cop_warnings, D.11710
	cmpq	$32, %rax	#, D.11710
	je	.L163	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.67
	movq	80(%rax), %rax	# PL_curcop.67_90->cop_warnings, D.11710
	cmpq	$16, %rax	#, D.11710
	je	.L164	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.68
	movq	80(%rax), %rax	# PL_curcop.68_92->cop_warnings, D.11710
	movq	(%rax), %rax	# _93->sv_any, D.11711
	movq	(%rax), %rax	# MEM[(struct XPV *)_94].xpv_pv, D.11712
	addq	$4, %rax	#, D.11712
	movzbl	(%rax), %eax	# *_96, D.11708
	movsbl	%al, %eax	# D.11708, D.11707
	andl	$4, %eax	#, D.11707
	testl	%eax, %eax	# D.11707
	jne	.L164	#,
.L163:
	.loc 1 442 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.69
	movq	80(%rax), %rax	# PL_curcop.69_100->cop_warnings, D.11710
	testq	%rax, %rax	# D.11710
	jne	.L162	#,
	.loc 1 442 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.70
	movzbl	%al, %eax	# PL_dowarn.70, D.11707
	andl	$1, %eax	#, D.11707
	testl	%eax, %eax	# D.11707
	je	.L162	#,
.L164:
	.loc 1 443 0 is_stmt 1
	movl	$.LC19, %esi	#,
	movl	$17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L162:
	.loc 1 446 0
	movq	-40(%rbp), %rdx	# s, s.71
	movq	-56(%rbp), %rax	# start, start.72
	subq	%rax, %rdx	# start.72, D.11715
	movq	%rdx, %rax	# D.11715, D.11715
	movq	%rax, %rdx	# D.11715, D.11713
	movq	-64(%rbp), %rax	# len_p, tmp163
	movq	%rdx, (%rax)	# D.11713, *len_p_18(D)
	.loc 1 447 0
	cmpb	$0, -46(%rbp)	#, overflowed
	jne	.L165	#,
	.loc 1 448 0
	movq	-72(%rbp), %rax	# flags, tmp164
	movl	$0, (%rax)	#, *flags_23(D)
	.loc 1 449 0
	movq	-24(%rbp), %rax	# value, D.11706
	jmp	.L166	#
.L165:
	.loc 1 451 0
	movq	-72(%rbp), %rax	# flags, tmp165
	movl	$2, (%rax)	#, *flags_23(D)
	.loc 1 452 0
	cmpq	$0, -80(%rbp)	#, result
	je	.L167	#,
	.loc 1 453 0
	movq	-80(%rbp), %rdx	# result, tmp166
	movq	-16(%rbp), %rax	# value_nv, tmp167
	movq	%rax, (%rdx)	# tmp167, *result_110(D)
.L167:
	.loc 1 454 0
	movq	$-1, %rax	#, D.11706
.L166:
	.loc 1 455 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_grok_oct, .-Perl_grok_oct
	.globl	Perl_scan_bin
	.type	Perl_scan_bin, @function
Perl_scan_bin:
.LFB10:
	.loc 1 475 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# start, start
	movq	%rsi, -48(%rbp)	# len, len
	movq	%rdx, -56(%rbp)	# retlen, retlen
	.loc 1 477 0
	movq	-56(%rbp), %rax	# retlen, tmp68
	movq	(%rax), %rax	# *retlen_2(D), D.11719
	testq	%rax, %rax	# D.11719
	setne	%al	#, D.11720
	movzbl	%al, %eax	# D.11720, flags.73
	movl	%eax, -20(%rbp)	# flags.73, flags
	.loc 1 478 0
	leaq	-16(%rbp), %rcx	#, tmp69
	leaq	-20(%rbp), %rdx	#, tmp70
	leaq	-48(%rbp), %rsi	#, tmp71
	movq	-40(%rbp), %rax	# start, tmp72
	movq	%rax, %rdi	# tmp72,
	call	Perl_grok_bin	#
	movq	%rax, -8(%rbp)	# tmp73, ruv
	.loc 1 480 0
	movq	-48(%rbp), %rdx	# len, len.74
	movq	-56(%rbp), %rax	# retlen, tmp74
	movq	%rdx, (%rax)	# len.74, *retlen_2(D)
	.loc 1 481 0
	movl	-20(%rbp), %eax	# flags, flags.76
	andl	$2, %eax	#, D.11721
	testl	%eax, %eax	# D.11721
	jne	.L169	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ruv, tmp75
	testq	%rax, %rax	# tmp75
	js	.L170	#,
	cvtsi2sdq	%rax, %xmm0	# tmp75, iftmp.75
	jmp	.L172	#
.L170:
	movq	%rax, %rdx	# tmp75, tmp77
	shrq	%rdx	# tmp77
	andl	$1, %eax	#, tmp78
	orq	%rax, %rdx	# tmp78, tmp77
	cvtsi2sdq	%rdx, %xmm0	# tmp77, tmp76
	addsd	%xmm0, %xmm0	# tmp76, iftmp.75
	jmp	.L172	#
.L169:
	.loc 1 481 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# rnv, iftmp.75
.L172:
	.loc 1 481 0 discriminator 3
	movsd	%xmm0, -64(%rbp)	# iftmp.75, %sfp
	movq	-64(%rbp), %rax	# %sfp, D.11722
	.loc 1 482 0 is_stmt 1 discriminator 3
	movq	%rax, -64(%rbp)	# <retval>, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_scan_bin, .-Perl_scan_bin
	.globl	Perl_scan_oct
	.type	Perl_scan_oct, @function
Perl_scan_oct:
.LFB11:
	.loc 1 486 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# start, start
	movq	%rsi, -48(%rbp)	# len, len
	movq	%rdx, -56(%rbp)	# retlen, retlen
	.loc 1 488 0
	movq	-56(%rbp), %rax	# retlen, tmp68
	movq	(%rax), %rax	# *retlen_2(D), D.11723
	testq	%rax, %rax	# D.11723
	setne	%al	#, D.11724
	movzbl	%al, %eax	# D.11724, flags.77
	movl	%eax, -20(%rbp)	# flags.77, flags
	.loc 1 489 0
	leaq	-16(%rbp), %rcx	#, tmp69
	leaq	-20(%rbp), %rdx	#, tmp70
	leaq	-48(%rbp), %rsi	#, tmp71
	movq	-40(%rbp), %rax	# start, tmp72
	movq	%rax, %rdi	# tmp72,
	call	Perl_grok_oct	#
	movq	%rax, -8(%rbp)	# tmp73, ruv
	.loc 1 491 0
	movq	-48(%rbp), %rdx	# len, len.78
	movq	-56(%rbp), %rax	# retlen, tmp74
	movq	%rdx, (%rax)	# len.78, *retlen_2(D)
	.loc 1 492 0
	movl	-20(%rbp), %eax	# flags, flags.80
	andl	$2, %eax	#, D.11725
	testl	%eax, %eax	# D.11725
	jne	.L175	#,
	.loc 1 492 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ruv, tmp75
	testq	%rax, %rax	# tmp75
	js	.L176	#,
	cvtsi2sdq	%rax, %xmm0	# tmp75, iftmp.79
	jmp	.L178	#
.L176:
	movq	%rax, %rdx	# tmp75, tmp77
	shrq	%rdx	# tmp77
	andl	$1, %eax	#, tmp78
	orq	%rax, %rdx	# tmp78, tmp77
	cvtsi2sdq	%rdx, %xmm0	# tmp77, tmp76
	addsd	%xmm0, %xmm0	# tmp76, iftmp.79
	jmp	.L178	#
.L175:
	.loc 1 492 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# rnv, iftmp.79
.L178:
	.loc 1 492 0 discriminator 3
	movsd	%xmm0, -64(%rbp)	# iftmp.79, %sfp
	movq	-64(%rbp), %rax	# %sfp, D.11726
	.loc 1 493 0 is_stmt 1 discriminator 3
	movq	%rax, -64(%rbp)	# <retval>, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_scan_oct, .-Perl_scan_oct
	.globl	Perl_scan_hex
	.type	Perl_scan_hex, @function
Perl_scan_hex:
.LFB12:
	.loc 1 497 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# start, start
	movq	%rsi, -48(%rbp)	# len, len
	movq	%rdx, -56(%rbp)	# retlen, retlen
	.loc 1 499 0
	movq	-56(%rbp), %rax	# retlen, tmp68
	movq	(%rax), %rax	# *retlen_2(D), D.11727
	testq	%rax, %rax	# D.11727
	setne	%al	#, D.11728
	movzbl	%al, %eax	# D.11728, flags.81
	movl	%eax, -20(%rbp)	# flags.81, flags
	.loc 1 500 0
	leaq	-16(%rbp), %rcx	#, tmp69
	leaq	-20(%rbp), %rdx	#, tmp70
	leaq	-48(%rbp), %rsi	#, tmp71
	movq	-40(%rbp), %rax	# start, tmp72
	movq	%rax, %rdi	# tmp72,
	call	Perl_grok_hex	#
	movq	%rax, -8(%rbp)	# tmp73, ruv
	.loc 1 502 0
	movq	-48(%rbp), %rdx	# len, len.82
	movq	-56(%rbp), %rax	# retlen, tmp74
	movq	%rdx, (%rax)	# len.82, *retlen_2(D)
	.loc 1 503 0
	movl	-20(%rbp), %eax	# flags, flags.84
	andl	$2, %eax	#, D.11729
	testl	%eax, %eax	# D.11729
	jne	.L181	#,
	.loc 1 503 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ruv, tmp75
	testq	%rax, %rax	# tmp75
	js	.L182	#,
	cvtsi2sdq	%rax, %xmm0	# tmp75, iftmp.83
	jmp	.L184	#
.L182:
	movq	%rax, %rdx	# tmp75, tmp77
	shrq	%rdx	# tmp77
	andl	$1, %eax	#, tmp78
	orq	%rax, %rdx	# tmp78, tmp77
	cvtsi2sdq	%rdx, %xmm0	# tmp77, tmp76
	addsd	%xmm0, %xmm0	# tmp76, iftmp.83
	jmp	.L184	#
.L181:
	.loc 1 503 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# rnv, iftmp.83
.L184:
	.loc 1 503 0 discriminator 3
	movsd	%xmm0, -64(%rbp)	# iftmp.83, %sfp
	movq	-64(%rbp), %rax	# %sfp, D.11730
	.loc 1 504 0 is_stmt 1 discriminator 3
	movq	%rax, -64(%rbp)	# <retval>, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_scan_hex, .-Perl_scan_hex
	.globl	Perl_grok_numeric_radix
	.type	Perl_grok_numeric_radix, @function
Perl_grok_numeric_radix:
.LFB13:
	.loc 1 515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sp, sp
	movq	%rsi, -16(%rbp)	# send, send
	.loc 1 528 0
	movq	-8(%rbp), %rax	# sp, tmp66
	movq	(%rax), %rax	# *sp_2(D), D.11732
	cmpq	-16(%rbp), %rax	# send, D.11732
	jae	.L187	#,
	.loc 1 528 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sp, tmp67
	movq	(%rax), %rax	# *sp_2(D), D.11732
	movzbl	(%rax), %eax	# *_5, D.11731
	cmpb	$46, %al	#, D.11731
	jne	.L187	#,
	.loc 1 529 0 is_stmt 1
	movq	-8(%rbp), %rax	# sp, tmp68
	movq	(%rax), %rax	# *sp_2(D), D.11732
	leaq	1(%rax), %rdx	#, D.11732
	movq	-8(%rbp), %rax	# sp, tmp69
	movq	%rdx, (%rax)	# D.11732, *sp_2(D)
	.loc 1 530 0
	movl	$1, %eax	#, D.11731
	jmp	.L188	#
.L187:
	.loc 1 532 0
	movl	$0, %eax	#, D.11731
.L188:
	.loc 1 533 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_grok_numeric_radix, .-Perl_grok_numeric_radix
	.section	.rodata
.LC20:
	.string	"0 but true"
	.text
	.globl	Perl_grok_number
	.type	Perl_grok_number, @function
Perl_grok_number:
.LFB14:
	.loc 1 560 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# pv, pv
	movq	%rsi, -80(%rbp)	# len, len
	movq	%rdx, -88(%rbp)	# valuep, valuep
	.loc 1 561 0
	movq	-72(%rbp), %rax	# pv, tmp316
	movq	%rax, -32(%rbp)	# tmp316, s
	.loc 1 562 0
	movq	-80(%rbp), %rax	# len, tmp321
	movq	-72(%rbp), %rdx	# pv, tmp322
	addq	%rdx, %rax	# tmp322, tmp320
	movq	%rax, -16(%rbp)	# tmp320, send
	.loc 1 563 0
	movabsq	$1844674407370955161, %rax	#, tmp391
	movq	%rax, -8(%rbp)	# tmp391, max_div_10
	.loc 1 564 0
	movb	$5, -49(%rbp)	#, max_mod_10
	.loc 1 565 0
	movl	$0, -48(%rbp)	#, numtype
	.loc 1 566 0
	movl	$0, -44(%rbp)	#, sawinf
	.loc 1 567 0
	movl	$0, -40(%rbp)	#, sawnan
	.loc 1 569 0
	jmp	.L190	#
.L192:
	.loc 1 570 0
	movq	-32(%rbp), %rax	# s, s.85
	addq	$1, %rax	#, s.86
	movq	%rax, -32(%rbp)	# s.86, s
.L190:
	.loc 1 569 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.87
	cmpq	-16(%rbp), %rax	# send, s.87
	jae	.L191	#,
	.loc 1 569 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.88
	movzbl	(%rax), %eax	# *s.88_22, D.11734
	cmpb	$32, %al	#, D.11734
	je	.L192	#,
	.loc 1 569 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.89
	movzbl	(%rax), %eax	# *s.89_24, D.11734
	cmpb	$9, %al	#, D.11734
	je	.L192	#,
	movq	-32(%rbp), %rax	# s, s.90
	movzbl	(%rax), %eax	# *s.90_26, D.11734
	cmpb	$10, %al	#, D.11734
	je	.L192	#,
	movq	-32(%rbp), %rax	# s, s.91
	movzbl	(%rax), %eax	# *s.91_28, D.11734
	cmpb	$13, %al	#, D.11734
	je	.L192	#,
	movq	-32(%rbp), %rax	# s, s.92
	movzbl	(%rax), %eax	# *s.92_30, D.11734
	cmpb	$12, %al	#, D.11734
	je	.L192	#,
.L191:
	.loc 1 571 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.93
	cmpq	-16(%rbp), %rax	# send, s.93
	jne	.L193	#,
	.loc 1 572 0
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L193:
	.loc 1 573 0
	movq	-32(%rbp), %rax	# s, s.94
	movzbl	(%rax), %eax	# *s.94_36, D.11734
	cmpb	$45, %al	#, D.11734
	jne	.L195	#,
	.loc 1 574 0
	movq	-32(%rbp), %rax	# s, s.95
	addq	$1, %rax	#, s.96
	movq	%rax, -32(%rbp)	# s.96, s
	.loc 1 575 0
	movl	$8, -48(%rbp)	#, numtype
	jmp	.L196	#
.L195:
	.loc 1 577 0
	movq	-32(%rbp), %rax	# s, s.97
	movzbl	(%rax), %eax	# *s.97_41, D.11734
	cmpb	$43, %al	#, D.11734
	jne	.L196	#,
	.loc 1 578 0
	movq	-32(%rbp), %rax	# s, s.98
	addq	$1, %rax	#, s.99
	movq	%rax, -32(%rbp)	# s.99, s
.L196:
	.loc 1 580 0
	movq	-32(%rbp), %rax	# s, s.100
	cmpq	-16(%rbp), %rax	# send, s.100
	jne	.L197	#,
	.loc 1 581 0
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L197:
	.loc 1 584 0
	movq	-32(%rbp), %rax	# s, s.101
	movzbl	(%rax), %eax	# *s.101_47, D.11734
	cmpb	$47, %al	#, D.11734
	jle	.L198	#,
	.loc 1 584 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.102
	movzbl	(%rax), %eax	# *s.102_49, D.11734
	cmpb	$57, %al	#, D.11734
	jg	.L198	#,
.LBB4:
	.loc 1 587 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.103
	movzbl	(%rax), %eax	# *s.103_51, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, D.11733
	cltq
	movq	%rax, -24(%rbp)	# tmp323, value
	.loc 1 593 0
	movq	-32(%rbp), %rax	# s, s.104
	addq	$1, %rax	#, s.105
	movq	%rax, -32(%rbp)	# s.105, s
	movq	-32(%rbp), %rax	# s, s.106
	cmpq	-16(%rbp), %rax	# send, s.106
	jae	.L199	#,
.LBB5:
	.loc 1 594 0
	movq	-32(%rbp), %rax	# s, s.107
	movzbl	(%rax), %eax	# *s.107_59, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp324
	movl	%eax, -36(%rbp)	# tmp324, digit
	.loc 1 595 0
	cmpl	$0, -36(%rbp)	#, digit
	js	.L199	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L199	#,
	.loc 1 596 0 is_stmt 1
	movq	-24(%rbp), %rdx	# value, tmp325
	movq	%rdx, %rax	# tmp325, tmp326
	salq	$2, %rax	#, tmp326
	addq	%rdx, %rax	# tmp325, tmp326
	addq	%rax, %rax	# tmp327
	movq	%rax, %rdx	# tmp326, D.11735
	movl	-36(%rbp), %eax	# digit, tmp328
	cltq
	addq	%rdx, %rax	# D.11735, tmp329
	movq	%rax, -24(%rbp)	# tmp329, value
	.loc 1 597 0
	movq	-32(%rbp), %rax	# s, s.108
	addq	$1, %rax	#, s.109
	movq	%rax, -32(%rbp)	# s.109, s
	movq	-32(%rbp), %rax	# s, s.110
	cmpq	-16(%rbp), %rax	# send, s.110
	jae	.L199	#,
	.loc 1 598 0
	movq	-32(%rbp), %rax	# s, s.111
	movzbl	(%rax), %eax	# *s.111_69, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp330
	movl	%eax, -36(%rbp)	# tmp330, digit
	.loc 1 599 0
	cmpl	$0, -36(%rbp)	#, digit
	js	.L199	#,
	.loc 1 599 0 is_stmt 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L199	#,
	.loc 1 600 0 is_stmt 1
	movq	-24(%rbp), %rdx	# value, tmp331
	movq	%rdx, %rax	# tmp331, tmp332
	salq	$2, %rax	#, tmp332
	addq	%rdx, %rax	# tmp331, tmp332
	addq	%rax, %rax	# tmp333
	movq	%rax, %rdx	# tmp332, D.11735
	movl	-36(%rbp), %eax	# digit, tmp334
	cltq
	addq	%rdx, %rax	# D.11735, tmp335
	movq	%rax, -24(%rbp)	# tmp335, value
	.loc 1 601 0
	movq	-32(%rbp), %rax	# s, s.112
	addq	$1, %rax	#, s.113
	movq	%rax, -32(%rbp)	# s.113, s
	movq	-32(%rbp), %rax	# s, s.114
	cmpq	-16(%rbp), %rax	# send, s.114
	jae	.L199	#,
	.loc 1 602 0
	movq	-32(%rbp), %rax	# s, s.115
	movzbl	(%rax), %eax	# *s.115_79, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp336
	movl	%eax, -36(%rbp)	# tmp336, digit
	.loc 1 603 0
	cmpl	$0, -36(%rbp)	#, digit
	js	.L199	#,
	.loc 1 603 0 is_stmt 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L199	#,
	.loc 1 604 0 is_stmt 1
	movq	-24(%rbp), %rdx	# value, tmp337
	movq	%rdx, %rax	# tmp337, tmp338
	salq	$2, %rax	#, tmp338
	addq	%rdx, %rax	# tmp337, tmp338
	addq	%rax, %rax	# tmp339
	movq	%rax, %rdx	# tmp338, D.11735
	movl	-36(%rbp), %eax	# digit, tmp340
	cltq
	addq	%rdx, %rax	# D.11735, tmp341
	movq	%rax, -24(%rbp)	# tmp341, value
	.loc 1 605 0
	movq	-32(%rbp), %rax	# s, s.116
	addq	$1, %rax	#, s.117
	movq	%rax, -32(%rbp)	# s.117, s
	movq	-32(%rbp), %rax	# s, s.118
	cmpq	-16(%rbp), %rax	# send, s.118
	jae	.L199	#,
	.loc 1 606 0
	movq	-32(%rbp), %rax	# s, s.119
	movzbl	(%rax), %eax	# *s.119_89, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp342
	movl	%eax, -36(%rbp)	# tmp342, digit
	.loc 1 607 0
	cmpl	$0, -36(%rbp)	#, digit
	js	.L199	#,
	.loc 1 607 0 is_stmt 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L199	#,
	.loc 1 608 0 is_stmt 1
	movq	-24(%rbp), %rdx	# value, tmp343
	movq	%rdx, %rax	# tmp343, tmp344
	salq	$2, %rax	#, tmp344
	addq	%rdx, %rax	# tmp343, tmp344
	addq	%rax, %rax	# tmp345
	movq	%rax, %rdx	# tmp344, D.11735
	movl	-36(%rbp), %eax	# digit, tmp346
	cltq
	addq	%rdx, %rax	# D.11735, tmp347
	movq	%rax, -24(%rbp)	# tmp347, value
	.loc 1 609 0
	movq	-32(%rbp), %rax	# s, s.120
	addq	$1, %rax	#, s.121
	movq	%rax, -32(%rbp)	# s.121, s
	movq	-32(%rbp), %rax	# s, s.122
	cmpq	-16(%rbp), %rax	# send, s.122
	jae	.L199	#,
	.loc 1 610 0
	movq	-32(%rbp), %rax	# s, s.123
	movzbl	(%rax), %eax	# *s.123_99, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp348
	movl	%eax, -36(%rbp)	# tmp348, digit
	.loc 1 611 0
	cmpl	$0, -36(%rbp)	#, digit
	js	.L199	#,
	.loc 1 611 0 is_stmt 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L199	#,
	.loc 1 612 0 is_stmt 1
	movq	-24(%rbp), %rdx	# value, tmp349
	movq	%rdx, %rax	# tmp349, tmp350
	salq	$2, %rax	#, tmp350
	addq	%rdx, %rax	# tmp349, tmp350
	addq	%rax, %rax	# tmp351
	movq	%rax, %rdx	# tmp350, D.11735
	movl	-36(%rbp), %eax	# digit, tmp352
	cltq
	addq	%rdx, %rax	# D.11735, tmp353
	movq	%rax, -24(%rbp)	# tmp353, value
	.loc 1 613 0
	movq	-32(%rbp), %rax	# s, s.124
	addq	$1, %rax	#, s.125
	movq	%rax, -32(%rbp)	# s.125, s
	movq	-32(%rbp), %rax	# s, s.126
	cmpq	-16(%rbp), %rax	# send, s.126
	jae	.L199	#,
	.loc 1 614 0
	movq	-32(%rbp), %rax	# s, s.127
	movzbl	(%rax), %eax	# *s.127_109, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp354
	movl	%eax, -36(%rbp)	# tmp354, digit
	.loc 1 615 0
	cmpl	$0, -36(%rbp)	#, digit
	js	.L199	#,
	.loc 1 615 0 is_stmt 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L199	#,
	.loc 1 616 0 is_stmt 1
	movq	-24(%rbp), %rdx	# value, tmp355
	movq	%rdx, %rax	# tmp355, tmp356
	salq	$2, %rax	#, tmp356
	addq	%rdx, %rax	# tmp355, tmp356
	addq	%rax, %rax	# tmp357
	movq	%rax, %rdx	# tmp356, D.11735
	movl	-36(%rbp), %eax	# digit, tmp358
	cltq
	addq	%rdx, %rax	# D.11735, tmp359
	movq	%rax, -24(%rbp)	# tmp359, value
	.loc 1 617 0
	movq	-32(%rbp), %rax	# s, s.128
	addq	$1, %rax	#, s.129
	movq	%rax, -32(%rbp)	# s.129, s
	movq	-32(%rbp), %rax	# s, s.130
	cmpq	-16(%rbp), %rax	# send, s.130
	jae	.L199	#,
	.loc 1 618 0
	movq	-32(%rbp), %rax	# s, s.131
	movzbl	(%rax), %eax	# *s.131_119, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp360
	movl	%eax, -36(%rbp)	# tmp360, digit
	.loc 1 619 0
	cmpl	$0, -36(%rbp)	#, digit
	js	.L199	#,
	.loc 1 619 0 is_stmt 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L199	#,
	.loc 1 620 0 is_stmt 1
	movq	-24(%rbp), %rdx	# value, tmp361
	movq	%rdx, %rax	# tmp361, tmp362
	salq	$2, %rax	#, tmp362
	addq	%rdx, %rax	# tmp361, tmp362
	addq	%rax, %rax	# tmp363
	movq	%rax, %rdx	# tmp362, D.11735
	movl	-36(%rbp), %eax	# digit, tmp364
	cltq
	addq	%rdx, %rax	# D.11735, tmp365
	movq	%rax, -24(%rbp)	# tmp365, value
	.loc 1 621 0
	movq	-32(%rbp), %rax	# s, s.132
	addq	$1, %rax	#, s.133
	movq	%rax, -32(%rbp)	# s.133, s
	movq	-32(%rbp), %rax	# s, s.134
	cmpq	-16(%rbp), %rax	# send, s.134
	jae	.L199	#,
	.loc 1 622 0
	movq	-32(%rbp), %rax	# s, s.135
	movzbl	(%rax), %eax	# *s.135_129, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp366
	movl	%eax, -36(%rbp)	# tmp366, digit
	.loc 1 623 0
	cmpl	$0, -36(%rbp)	#, digit
	js	.L199	#,
	.loc 1 623 0 is_stmt 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L199	#,
	.loc 1 624 0 is_stmt 1
	movq	-24(%rbp), %rdx	# value, tmp367
	movq	%rdx, %rax	# tmp367, tmp368
	salq	$2, %rax	#, tmp368
	addq	%rdx, %rax	# tmp367, tmp368
	addq	%rax, %rax	# tmp369
	movq	%rax, %rdx	# tmp368, D.11735
	movl	-36(%rbp), %eax	# digit, tmp370
	cltq
	addq	%rdx, %rax	# D.11735, tmp371
	movq	%rax, -24(%rbp)	# tmp371, value
	.loc 1 625 0
	movq	-32(%rbp), %rax	# s, s.136
	addq	$1, %rax	#, s.137
	movq	%rax, -32(%rbp)	# s.137, s
	movq	-32(%rbp), %rax	# s, s.138
	cmpq	-16(%rbp), %rax	# send, s.138
	jae	.L199	#,
	.loc 1 628 0
	movq	-32(%rbp), %rax	# s, s.139
	movzbl	(%rax), %eax	# *s.139_139, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp372
	movl	%eax, -36(%rbp)	# tmp372, digit
	.loc 1 629 0
	jmp	.L200	#
.L203:
	.loc 1 633 0
	movq	-24(%rbp), %rdx	# value, tmp373
	movq	%rdx, %rax	# tmp373, tmp374
	salq	$2, %rax	#, tmp374
	addq	%rdx, %rax	# tmp373, tmp374
	addq	%rax, %rax	# tmp375
	movq	%rax, %rdx	# tmp374, D.11735
	movl	-36(%rbp), %eax	# digit, tmp376
	cltq
	addq	%rdx, %rax	# D.11735, tmp377
	movq	%rax, -24(%rbp)	# tmp377, value
	.loc 1 634 0
	movq	-32(%rbp), %rax	# s, s.140
	addq	$1, %rax	#, s.141
	movq	%rax, -32(%rbp)	# s.141, s
	movq	-32(%rbp), %rax	# s, s.142
	cmpq	-16(%rbp), %rax	# send, s.142
	jae	.L201	#,
	.loc 1 635 0
	movq	-32(%rbp), %rax	# s, s.143
	movzbl	(%rax), %eax	# *s.143_150, D.11734
	movsbl	%al, %eax	# D.11734, D.11733
	subl	$48, %eax	#, tmp378
	movl	%eax, -36(%rbp)	# tmp378, digit
	jmp	.L200	#
.L201:
	.loc 1 637 0
	jmp	.L202	#
.L200:
	.loc 1 629 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, digit
	js	.L202	#,
	.loc 1 629 0 is_stmt 0 discriminator 2
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L202	#,
	.loc 1 630 0 is_stmt 1
	movq	-24(%rbp), %rax	# value, tmp379
	cmpq	-8(%rbp), %rax	# max_div_10, tmp379
	jb	.L203	#,
	.loc 1 631 0
	movq	-24(%rbp), %rax	# value, tmp380
	cmpq	-8(%rbp), %rax	# max_div_10, tmp380
	jne	.L202	#,
	.loc 1 632 0
	movsbl	-49(%rbp), %eax	# max_mod_10, D.11733
	cmpl	-36(%rbp), %eax	# digit, D.11733
	jge	.L203	#,
.L202:
	.loc 1 639 0
	cmpl	$0, -36(%rbp)	#, digit
	js	.L199	#,
	.loc 1 639 0 is_stmt 0 discriminator 1
	cmpl	$9, -36(%rbp)	#, digit
	jg	.L199	#,
	.loc 1 640 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.144
	cmpq	-16(%rbp), %rax	# send, s.144
	jae	.L199	#,
.L205:
	.loc 1 645 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.145
	addq	$1, %rax	#, s.146
	movq	%rax, -32(%rbp)	# s.146, s
	.loc 1 646 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.147
	cmpq	-16(%rbp), %rax	# send, s.147
	jae	.L204	#,
	movq	-32(%rbp), %rax	# s, s.148
	movzbl	(%rax), %eax	# *s.148_158, D.11734
	cmpb	$47, %al	#, D.11734
	jle	.L204	#,
	movq	-32(%rbp), %rax	# s, s.149
	movzbl	(%rax), %eax	# *s.149_160, D.11734
	cmpb	$57, %al	#, D.11734
	jle	.L205	#,
.L204:
	.loc 1 647 0
	orl	$2, -48(%rbp)	#, numtype
	.loc 1 649 0
	jmp	.L206	#
.L199:
.LBE5:
	.loc 1 668 0
	orl	$1, -48(%rbp)	#, numtype
	.loc 1 669 0
	cmpq	$0, -88(%rbp)	#, valuep
	je	.L206	#,
	.loc 1 670 0
	movq	-88(%rbp), %rax	# valuep, tmp381
	movq	-24(%rbp), %rdx	# value, tmp382
	movq	%rdx, (%rax)	# tmp382, *valuep_164(D)
.L206:
	.loc 1 673 0
	movq	-16(%rbp), %rdx	# send, tmp383
	leaq	-32(%rbp), %rax	#, tmp384
	movq	%rdx, %rsi	# tmp383,
	movq	%rax, %rdi	# tmp384,
	call	Perl_grok_numeric_radix	#
	testb	%al, %al	# D.11734
	je	.L207	#,
	.loc 1 674 0
	orl	$4, -48(%rbp)	#, numtype
	.loc 1 675 0
	jmp	.L208	#
.L209:
	.loc 1 676 0
	movq	-32(%rbp), %rax	# s, s.150
	addq	$1, %rax	#, s.151
	movq	%rax, -32(%rbp)	# s.151, s
.L208:
	.loc 1 675 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.152
	cmpq	-16(%rbp), %rax	# send, s.152
	jae	.L207	#,
	.loc 1 675 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.153
	movzbl	(%rax), %eax	# *s.153_168, D.11734
	cmpb	$47, %al	#, D.11734
	jle	.L207	#,
	.loc 1 675 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.154
	movzbl	(%rax), %eax	# *s.154_170, D.11734
	cmpb	$57, %al	#, D.11734
	jle	.L209	#,
.L207:
.LBE4:
	.loc 1 584 0 is_stmt 1
	jmp	.L210	#
.L198:
	.loc 1 679 0
	movq	-16(%rbp), %rdx	# send, tmp385
	leaq	-32(%rbp), %rax	#, tmp386
	movq	%rdx, %rsi	# tmp385,
	movq	%rax, %rdi	# tmp386,
	call	Perl_grok_numeric_radix	#
	testb	%al, %al	# D.11734
	je	.L211	#,
	.loc 1 680 0
	orl	$5, -48(%rbp)	#, numtype
	.loc 1 682 0
	movq	-32(%rbp), %rax	# s, s.155
	cmpq	-16(%rbp), %rax	# send, s.155
	jae	.L212	#,
	.loc 1 682 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.156
	movzbl	(%rax), %eax	# *s.156_177, D.11734
	cmpb	$47, %al	#, D.11734
	jle	.L212	#,
	movq	-32(%rbp), %rax	# s, s.157
	movzbl	(%rax), %eax	# *s.157_179, D.11734
	cmpb	$57, %al	#, D.11734
	jg	.L212	#,
.L214:
	.loc 1 684 0 is_stmt 1 discriminator 1
	movq	-32(%rbp), %rax	# s, s.158
	addq	$1, %rax	#, s.159
	movq	%rax, -32(%rbp)	# s.159, s
	.loc 1 685 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.160
	cmpq	-16(%rbp), %rax	# send, s.160
	jae	.L213	#,
	movq	-32(%rbp), %rax	# s, s.161
	movzbl	(%rax), %eax	# *s.161_184, D.11734
	cmpb	$47, %al	#, D.11734
	jle	.L213	#,
	movq	-32(%rbp), %rax	# s, s.162
	movzbl	(%rax), %eax	# *s.162_186, D.11734
	cmpb	$57, %al	#, D.11734
	jle	.L214	#,
.L213:
	.loc 1 686 0
	cmpq	$0, -88(%rbp)	#, valuep
	je	.L215	#,
	.loc 1 688 0
	movq	-88(%rbp), %rax	# valuep, tmp387
	movq	$0, (%rax)	#, *valuep_164(D)
	.loc 1 686 0
	jmp	.L216	#
.L215:
	.loc 1 686 0 is_stmt 0 discriminator 1
	jmp	.L216	#
.L212:
	.loc 1 692 0 is_stmt 1
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L216:
	jmp	.L210	#
.L211:
	.loc 1 693 0
	movq	-32(%rbp), %rax	# s, s.163
	movzbl	(%rax), %eax	# *s.163_189, D.11734
	cmpb	$73, %al	#, D.11734
	je	.L217	#,
	.loc 1 693 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.164
	movzbl	(%rax), %eax	# *s.164_191, D.11734
	cmpb	$105, %al	#, D.11734
	jne	.L218	#,
.L217:
	.loc 1 694 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.165
	addq	$1, %rax	#, s.166
	movq	%rax, -32(%rbp)	# s.166, s
	movq	-32(%rbp), %rax	# s, s.167
	cmpq	-16(%rbp), %rax	# send, s.167
	je	.L219	#,
	.loc 1 694 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.168
	movzbl	(%rax), %eax	# *s.168_220, D.11734
	cmpb	$78, %al	#, D.11734
	je	.L220	#,
	.loc 1 694 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.169
	movzbl	(%rax), %eax	# *s.169_222, D.11734
	cmpb	$110, %al	#, D.11734
	je	.L220	#,
.L219:
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L220:
	.loc 1 695 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.170
	addq	$1, %rax	#, s.171
	movq	%rax, -32(%rbp)	# s.171, s
	movq	-32(%rbp), %rax	# s, s.172
	cmpq	-16(%rbp), %rax	# send, s.172
	je	.L221	#,
	.loc 1 695 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.173
	movzbl	(%rax), %eax	# *s.173_227, D.11734
	cmpb	$70, %al	#, D.11734
	je	.L222	#,
	.loc 1 695 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.174
	movzbl	(%rax), %eax	# *s.174_229, D.11734
	cmpb	$102, %al	#, D.11734
	je	.L222	#,
.L221:
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L222:
	.loc 1 696 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.175
	addq	$1, %rax	#, s.176
	movq	%rax, -32(%rbp)	# s.176, s
	movq	-32(%rbp), %rax	# s, s.177
	cmpq	-16(%rbp), %rax	# send, s.177
	jae	.L223	#,
	.loc 1 696 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.178
	movzbl	(%rax), %eax	# *s.178_234, D.11734
	cmpb	$73, %al	#, D.11734
	je	.L224	#,
	movq	-32(%rbp), %rax	# s, s.179
	movzbl	(%rax), %eax	# *s.179_236, D.11734
	cmpb	$105, %al	#, D.11734
	jne	.L223	#,
.L224:
	.loc 1 697 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.180
	addq	$1, %rax	#, s.181
	movq	%rax, -32(%rbp)	# s.181, s
	movq	-32(%rbp), %rax	# s, s.182
	cmpq	-16(%rbp), %rax	# send, s.182
	je	.L225	#,
	.loc 1 697 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.183
	movzbl	(%rax), %eax	# *s.183_241, D.11734
	cmpb	$78, %al	#, D.11734
	je	.L226	#,
	.loc 1 697 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.184
	movzbl	(%rax), %eax	# *s.184_243, D.11734
	cmpb	$110, %al	#, D.11734
	je	.L226	#,
.L225:
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L226:
	.loc 1 698 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.185
	addq	$1, %rax	#, s.186
	movq	%rax, -32(%rbp)	# s.186, s
	movq	-32(%rbp), %rax	# s, s.187
	cmpq	-16(%rbp), %rax	# send, s.187
	je	.L227	#,
	.loc 1 698 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.188
	movzbl	(%rax), %eax	# *s.188_248, D.11734
	cmpb	$73, %al	#, D.11734
	je	.L228	#,
	.loc 1 698 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.189
	movzbl	(%rax), %eax	# *s.189_250, D.11734
	cmpb	$105, %al	#, D.11734
	je	.L228	#,
.L227:
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L228:
	.loc 1 699 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.190
	addq	$1, %rax	#, s.191
	movq	%rax, -32(%rbp)	# s.191, s
	movq	-32(%rbp), %rax	# s, s.192
	cmpq	-16(%rbp), %rax	# send, s.192
	je	.L229	#,
	.loc 1 699 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.193
	movzbl	(%rax), %eax	# *s.193_255, D.11734
	cmpb	$84, %al	#, D.11734
	je	.L230	#,
	.loc 1 699 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.194
	movzbl	(%rax), %eax	# *s.194_257, D.11734
	cmpb	$116, %al	#, D.11734
	je	.L230	#,
.L229:
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L230:
	.loc 1 700 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.195
	addq	$1, %rax	#, s.196
	movq	%rax, -32(%rbp)	# s.196, s
	movq	-32(%rbp), %rax	# s, s.197
	cmpq	-16(%rbp), %rax	# send, s.197
	je	.L231	#,
	.loc 1 700 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.198
	movzbl	(%rax), %eax	# *s.198_262, D.11734
	cmpb	$89, %al	#, D.11734
	je	.L232	#,
	.loc 1 700 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.199
	movzbl	(%rax), %eax	# *s.199_264, D.11734
	cmpb	$121, %al	#, D.11734
	je	.L232	#,
.L231:
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L232:
	.loc 1 701 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.200
	addq	$1, %rax	#, s.201
	movq	%rax, -32(%rbp)	# s.201, s
.L223:
	.loc 1 703 0
	movl	$1, -44(%rbp)	#, sawinf
	jmp	.L210	#
.L218:
	.loc 1 704 0
	movq	-32(%rbp), %rax	# s, s.202
	movzbl	(%rax), %eax	# *s.202_193, D.11734
	cmpb	$78, %al	#, D.11734
	je	.L233	#,
	.loc 1 704 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.203
	movzbl	(%rax), %eax	# *s.203_195, D.11734
	cmpb	$110, %al	#, D.11734
	jne	.L234	#,
.L233:
	.loc 1 706 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.204
	addq	$1, %rax	#, s.205
	movq	%rax, -32(%rbp)	# s.205, s
	movq	-32(%rbp), %rax	# s, s.206
	cmpq	-16(%rbp), %rax	# send, s.206
	je	.L235	#,
	.loc 1 706 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.207
	movzbl	(%rax), %eax	# *s.207_201, D.11734
	cmpb	$65, %al	#, D.11734
	je	.L236	#,
	.loc 1 706 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.208
	movzbl	(%rax), %eax	# *s.208_203, D.11734
	cmpb	$97, %al	#, D.11734
	je	.L236	#,
.L235:
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L236:
	.loc 1 707 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.209
	addq	$1, %rax	#, s.210
	movq	%rax, -32(%rbp)	# s.210, s
	movq	-32(%rbp), %rax	# s, s.211
	cmpq	-16(%rbp), %rax	# send, s.211
	je	.L237	#,
	.loc 1 707 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.212
	movzbl	(%rax), %eax	# *s.212_208, D.11734
	cmpb	$78, %al	#, D.11734
	je	.L238	#,
	.loc 1 707 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.213
	movzbl	(%rax), %eax	# *s.213_210, D.11734
	cmpb	$110, %al	#, D.11734
	je	.L238	#,
.L237:
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L238:
	.loc 1 708 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.214
	addq	$1, %rax	#, s.215
	movq	%rax, -32(%rbp)	# s.215, s
	.loc 1 709 0
	movl	$1, -40(%rbp)	#, sawnan
	jmp	.L210	#
.L234:
	.loc 1 711 0
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L210:
	.loc 1 713 0
	cmpl	$0, -44(%rbp)	#, sawinf
	je	.L239	#,
	.loc 1 714 0
	andl	$8, -48(%rbp)	#, numtype
	.loc 1 715 0
	orl	$20, -48(%rbp)	#, numtype
	jmp	.L240	#
.L239:
	.loc 1 716 0
	cmpl	$0, -40(%rbp)	#, sawnan
	je	.L241	#,
	.loc 1 717 0
	andl	$8, -48(%rbp)	#, numtype
	.loc 1 718 0
	orl	$36, -48(%rbp)	#, numtype
	jmp	.L240	#
.L241:
	.loc 1 719 0
	movq	-32(%rbp), %rax	# s, s.216
	cmpq	-16(%rbp), %rax	# send, s.216
	jae	.L240	#,
	.loc 1 721 0
	movq	-32(%rbp), %rax	# s, s.217
	movzbl	(%rax), %eax	# *s.217_280, D.11734
	cmpb	$101, %al	#, D.11734
	je	.L242	#,
	.loc 1 721 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.218
	movzbl	(%rax), %eax	# *s.218_282, D.11734
	cmpb	$69, %al	#, D.11734
	jne	.L240	#,
.L242:
	.loc 1 723 0 is_stmt 1
	andl	$8, -48(%rbp)	#, numtype
	.loc 1 724 0
	orl	$4, -48(%rbp)	#, numtype
	.loc 1 725 0
	movq	-32(%rbp), %rax	# s, s.219
	addq	$1, %rax	#, s.220
	movq	%rax, -32(%rbp)	# s.220, s
	.loc 1 726 0
	movq	-32(%rbp), %rax	# s, s.221
	cmpq	-16(%rbp), %rax	# send, s.221
	jae	.L243	#,
	.loc 1 726 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.222
	movzbl	(%rax), %eax	# *s.222_289, D.11734
	cmpb	$45, %al	#, D.11734
	je	.L244	#,
	movq	-32(%rbp), %rax	# s, s.223
	movzbl	(%rax), %eax	# *s.223_291, D.11734
	cmpb	$43, %al	#, D.11734
	jne	.L243	#,
.L244:
	.loc 1 727 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.224
	addq	$1, %rax	#, s.225
	movq	%rax, -32(%rbp)	# s.225, s
.L243:
	.loc 1 728 0
	movq	-32(%rbp), %rax	# s, s.226
	cmpq	-16(%rbp), %rax	# send, s.226
	jae	.L245	#,
	.loc 1 728 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.227
	movzbl	(%rax), %eax	# *s.227_296, D.11734
	cmpb	$47, %al	#, D.11734
	jle	.L245	#,
	movq	-32(%rbp), %rax	# s, s.228
	movzbl	(%rax), %eax	# *s.228_298, D.11734
	cmpb	$57, %al	#, D.11734
	jg	.L245	#,
.L247:
	.loc 1 730 0 is_stmt 1 discriminator 1
	movq	-32(%rbp), %rax	# s, s.229
	addq	$1, %rax	#, s.230
	movq	%rax, -32(%rbp)	# s.230, s
	.loc 1 731 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.231
	cmpq	-16(%rbp), %rax	# send, s.231
	jae	.L246	#,
	movq	-32(%rbp), %rax	# s, s.232
	movzbl	(%rax), %eax	# *s.232_303, D.11734
	cmpb	$47, %al	#, D.11734
	jle	.L246	#,
	movq	-32(%rbp), %rax	# s, s.233
	movzbl	(%rax), %eax	# *s.233_305, D.11734
	cmpb	$57, %al	#, D.11734
	jle	.L247	#,
.L246:
	.loc 1 728 0
	jmp	.L240	#
.L245:
	.loc 1 734 0
	movl	$0, %eax	#, D.11733
	jmp	.L254	#
.L240:
	.loc 1 737 0
	jmp	.L248	#
.L250:
	.loc 1 738 0
	movq	-32(%rbp), %rax	# s, s.234
	addq	$1, %rax	#, s.235
	movq	%rax, -32(%rbp)	# s.235, s
.L248:
	.loc 1 737 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.236
	cmpq	-16(%rbp), %rax	# send, s.236
	jae	.L249	#,
	.loc 1 737 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s, s.237
	movzbl	(%rax), %eax	# *s.237_309, D.11734
	cmpb	$32, %al	#, D.11734
	je	.L250	#,
	.loc 1 737 0 discriminator 1
	movq	-32(%rbp), %rax	# s, s.238
	movzbl	(%rax), %eax	# *s.238_311, D.11734
	cmpb	$9, %al	#, D.11734
	je	.L250	#,
	movq	-32(%rbp), %rax	# s, s.239
	movzbl	(%rax), %eax	# *s.239_313, D.11734
	cmpb	$10, %al	#, D.11734
	je	.L250	#,
	movq	-32(%rbp), %rax	# s, s.240
	movzbl	(%rax), %eax	# *s.240_315, D.11734
	cmpb	$13, %al	#, D.11734
	je	.L250	#,
	movq	-32(%rbp), %rax	# s, s.241
	movzbl	(%rax), %eax	# *s.241_317, D.11734
	cmpb	$12, %al	#, D.11734
	je	.L250	#,
.L249:
	.loc 1 739 0 is_stmt 1
	movq	-32(%rbp), %rax	# s, s.242
	cmpq	-16(%rbp), %rax	# send, s.242
	jb	.L251	#,
	.loc 1 740 0
	movl	-48(%rbp), %eax	# numtype, D.11733
	jmp	.L254	#
.L251:
	.loc 1 741 0
	cmpq	$10, -80(%rbp)	#, len
	jne	.L252	#,
	.loc 1 741 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pv, tmp388
	movl	$10, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp388,
	call	memcmp	#
	testl	%eax, %eax	# D.11733
	jne	.L252	#,
	.loc 1 742 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, valuep
	je	.L253	#,
	.loc 1 743 0
	movq	-88(%rbp), %rax	# valuep, tmp389
	movq	$0, (%rax)	#, *valuep_164(D)
.L253:
	.loc 1 744 0
	movl	$1, %eax	#, D.11733
	jmp	.L254	#
.L252:
	.loc 1 746 0
	movl	$0, %eax	#, D.11733
.L254:
	.loc 1 747 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_grok_number, .-Perl_grok_number
	.type	S_mulexp10, @function
S_mulexp10:
.LFB15:
	.loc 1 751 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movsd	%xmm0, -40(%rbp)	# value, value
	movl	%edi, -44(%rbp)	# exponent, exponent
	.loc 1 752 0
	movabsq	$4607182418800017408, %rax	#, tmp63
	movq	%rax, -16(%rbp)	# tmp63, result
	.loc 1 753 0
	movabsq	$4621819117588971520, %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, power
	.loc 1 754 0
	movb	$0, -21(%rbp)	#, negative
	.loc 1 757 0
	cmpl	$0, -44(%rbp)	#, exponent
	jne	.L256	#,
	.loc 1 758 0
	movq	-40(%rbp), %rax	# value, D.11737
	jmp	.L257	#
.L256:
	.loc 1 759 0
	xorpd	%xmm0, %xmm0	# tmp65
	ucomisd	-40(%rbp), %xmm0	# value, tmp65
	jp	.L258	#,
	xorpd	%xmm0, %xmm0	# tmp66
	ucomisd	-40(%rbp), %xmm0	# value, tmp66
	jne	.L258	#,
	.loc 1 760 0
	movl	$0, %eax	#, D.11737
	jmp	.L257	#
.L258:
	.loc 1 799 0
	cmpl	$0, -44(%rbp)	#, exponent
	jns	.L260	#,
	.loc 1 800 0
	movb	$1, -21(%rbp)	#, negative
	.loc 1 801 0
	negl	-44(%rbp)	# exponent
.L260:
	.loc 1 803 0
	movl	$1, -20(%rbp)	#, bit
	jmp	.L261	#
.L264:
	.loc 1 804 0
	movl	-20(%rbp), %eax	# bit, tmp67
	movl	-44(%rbp), %edx	# exponent, tmp68
	andl	%edx, %eax	# tmp68, D.11738
	testl	%eax, %eax	# D.11738
	je	.L262	#,
	.loc 1 805 0
	movl	-20(%rbp), %eax	# bit, tmp69
	xorl	%eax, -44(%rbp)	# tmp69, exponent
	.loc 1 806 0
	movsd	-16(%rbp), %xmm0	# result, tmp71
	mulsd	-8(%rbp), %xmm0	# power, tmp70
	movsd	%xmm0, -16(%rbp)	# tmp70, result
	.loc 1 810 0
	cmpl	$0, -44(%rbp)	#, exponent
	jne	.L262	#,
	.loc 1 810 0 is_stmt 0 discriminator 1
	jmp	.L263	#
.L262:
	.loc 1 812 0 is_stmt 1
	movsd	-8(%rbp), %xmm0	# power, tmp73
	mulsd	-8(%rbp), %xmm0	# power, tmp72
	movsd	%xmm0, -8(%rbp)	# tmp72, power
	.loc 1 803 0
	sall	-20(%rbp)	# bit
.L261:
	.loc 1 803 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, exponent
	jne	.L264	#,
.L263:
	.loc 1 814 0 is_stmt 1
	cmpb	$0, -21(%rbp)	#, negative
	je	.L265	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movsd	-40(%rbp), %xmm0	# value, tmp74
	divsd	-16(%rbp), %xmm0	# result, iftmp.243
	jmp	.L266	#
.L265:
	.loc 1 814 0 discriminator 2
	movsd	-40(%rbp), %xmm0	# value, tmp75
	mulsd	-16(%rbp), %xmm0	# result, iftmp.243
.L266:
	.loc 1 814 0 discriminator 3
	movsd	%xmm0, -56(%rbp)	# iftmp.243, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.11737
.L257:
	.loc 1 815 0 is_stmt 1
	movq	%rax, -56(%rbp)	# <retval>, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	S_mulexp10, .-S_mulexp10
	.globl	Perl_my_atof
	.type	Perl_my_atof, @function
Perl_my_atof:
.LFB16:
	.loc 1 819 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 820 0
	movl	$0, %eax	#, tmp61
	movq	%rax, -8(%rbp)	# tmp61, x
	.loc 1 837 0
	leaq	-8(%rbp), %rdx	#, tmp62
	movq	-24(%rbp), %rax	# s, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	Perl_my_atof2	#
	.loc 1 839 0
	movq	-8(%rbp), %rax	# x, D.11739
	.loc 1 840 0
	movq	%rax, -32(%rbp)	# <retval>, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_my_atof, .-Perl_my_atof
	.globl	Perl_my_atof2
	.type	Perl_my_atof2, @function
Perl_my_atof2:
.LFB17:
	.loc 1 844 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)	# orig, orig
	movq	%rsi, -160(%rbp)	# value, value
	.loc 1 845 0
	movl	$0, %eax	#, tmp182
	movq	%rax, -48(%rbp)	# tmp182, result
	movl	$0, %eax	#, tmp183
	movq	%rax, -40(%rbp)	# tmp183, result
	movl	$0, %eax	#, tmp184
	movq	%rax, -32(%rbp)	# tmp184, result
	.loc 1 846 0
	movq	-152(%rbp), %rax	# orig, tmp185
	movq	%rax, -80(%rbp)	# tmp185, s
	.loc 1 848 0
	movq	$0, -64(%rbp)	#, accumulator
	movq	$0, -56(%rbp)	#, accumulator
	.loc 1 849 0
	movb	$0, -135(%rbp)	#, negative
	.loc 1 850 0
	movq	-80(%rbp), %rbx	# s, s.244
	movq	-152(%rbp), %rax	# orig, tmp186
	movq	%rax, %rdi	# tmp186,
	call	strlen	#
	subq	$1, %rax	#, D.11741
	addq	%rbx, %rax	# s.244, tmp187
	movq	%rax, -72(%rbp)	# tmp187, send
	.loc 1 851 0
	movb	$0, -134(%rbp)	#, seen_digit
	.loc 1 852 0
	movl	$0, -112(%rbp)	#, exp_adjust
	movl	$0, -108(%rbp)	#, exp_adjust
	.loc 1 853 0
	movl	$-1, -96(%rbp)	#, exp_acc
	movl	$-1, -92(%rbp)	#, exp_acc
	.loc 1 855 0
	movl	$0, -132(%rbp)	#, exponent
	.loc 1 856 0
	movl	$0, -128(%rbp)	#, seen_dp
	.loc 1 857 0
	movl	$0, -124(%rbp)	#, digit
	.loc 1 858 0
	movl	$0, -116(%rbp)	#, old_digit
	.loc 1 859 0
	movl	$0, -120(%rbp)	#, sig_digits
	.loc 1 884 0
	jmp	.L271	#
.L272:
	.loc 1 885 0
	movq	-80(%rbp), %rax	# s, s.245
	addq	$1, %rax	#, s.246
	movq	%rax, -80(%rbp)	# s.246, s
.L271:
	.loc 1 884 0 discriminator 1
	movq	-80(%rbp), %rax	# s, s.247
	movzbl	(%rax), %eax	# *s.247_28, D.11742
	cmpb	$32, %al	#, D.11742
	je	.L272	#,
	.loc 1 884 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# s, s.248
	movzbl	(%rax), %eax	# *s.248_30, D.11742
	cmpb	$9, %al	#, D.11742
	je	.L272	#,
	.loc 1 884 0 discriminator 1
	movq	-80(%rbp), %rax	# s, s.249
	movzbl	(%rax), %eax	# *s.249_32, D.11742
	cmpb	$10, %al	#, D.11742
	je	.L272	#,
	movq	-80(%rbp), %rax	# s, s.250
	movzbl	(%rax), %eax	# *s.250_34, D.11742
	cmpb	$13, %al	#, D.11742
	je	.L272	#,
	movq	-80(%rbp), %rax	# s, s.251
	movzbl	(%rax), %eax	# *s.251_36, D.11742
	cmpb	$12, %al	#, D.11742
	je	.L272	#,
	.loc 1 888 0 is_stmt 1
	movq	-80(%rbp), %rax	# s, s.252
	movzbl	(%rax), %eax	# *s.252_38, D.11742
	movsbl	%al, %eax	# D.11742, D.11743
	cmpl	$43, %eax	#, D.11743
	je	.L274	#,
	cmpl	$45, %eax	#, D.11743
	jne	.L273	#,
	.loc 1 890 0
	movb	$1, -135(%rbp)	#, negative
.L274:
	.loc 1 893 0
	movq	-80(%rbp), %rax	# s, s.253
	addq	$1, %rax	#, s.254
	movq	%rax, -80(%rbp)	# s.254, s
.L273:
	.loc 1 900 0
	movq	-80(%rbp), %rax	# s, s.255
	movzbl	(%rax), %eax	# *s.255_44, D.11742
	cmpb	$47, %al	#, D.11742
	jle	.L276	#,
	.loc 1 900 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# s, s.256
	movzbl	(%rax), %eax	# *s.256_46, D.11742
	cmpb	$57, %al	#, D.11742
	jg	.L276	#,
	.loc 1 901 0 is_stmt 1
	movb	$1, -134(%rbp)	#, seen_digit
	.loc 1 902 0
	movl	-124(%rbp), %eax	# digit, tmp188
	movl	%eax, -116(%rbp)	# tmp188, old_digit
	.loc 1 903 0
	movq	-80(%rbp), %rax	# s, s.257
	leaq	1(%rax), %rdx	#, s.259
	movq	%rdx, -80(%rbp)	# s.259, s
	movzbl	(%rax), %eax	# *s.258_51, D.11742
	movsbl	%al, %eax	# D.11742, D.11743
	subl	$48, %eax	#, tmp189
	movl	%eax, -124(%rbp)	# tmp189, digit
	.loc 1 904 0
	cmpl	$0, -128(%rbp)	#, seen_dp
	je	.L277	#,
	.loc 1 905 0
	movl	-108(%rbp), %eax	# exp_adjust, D.11743
	addl	$1, %eax	#, D.11743
	movl	%eax, -108(%rbp)	# D.11743, exp_adjust
.L277:
	.loc 1 909 0
	cmpl	$0, -120(%rbp)	#, sig_digits
	jne	.L278	#,
	.loc 1 909 0 is_stmt 0 discriminator 1
	cmpl	$0, -124(%rbp)	#, digit
	jne	.L278	#,
	.loc 1 910 0 is_stmt 1
	jmp	.L279	#
.L278:
	.loc 1 912 0
	addl	$1, -120(%rbp)	#, sig_digits
	cmpl	$17, -120(%rbp)	#, sig_digits
	jle	.L280	#,
	.loc 1 914 0
	cmpl	$5, -124(%rbp)	#, digit
	jle	.L281	#,
	.loc 1 915 0
	movl	-128(%rbp), %eax	# seen_dp, tmp191
	cltq
	movq	-64(%rbp,%rax,8), %rax	# accumulator, D.11740
	leaq	1(%rax), %rdx	#, D.11740
	movl	-128(%rbp), %eax	# seen_dp, tmp193
	cltq
	movq	%rdx, -64(%rbp,%rax,8)	# D.11740, accumulator
	jmp	.L282	#
.L281:
	.loc 1 916 0
	cmpl	$5, -124(%rbp)	#, digit
	jne	.L282	#,
	.loc 1 917 0
	movl	-116(%rbp), %eax	# old_digit, old_digit.260
	andl	$1, %eax	#, D.11744
	testl	%eax, %eax	# D.11744
	je	.L282	#,
	.loc 1 918 0
	movl	-128(%rbp), %eax	# seen_dp, tmp195
	cltq
	movq	-64(%rbp,%rax,8), %rax	# accumulator, D.11740
	leaq	1(%rax), %rdx	#, D.11740
	movl	-128(%rbp), %eax	# seen_dp, tmp197
	cltq
	movq	%rdx, -64(%rbp,%rax,8)	# D.11740, accumulator
.L282:
	.loc 1 921 0
	cmpl	$0, -128(%rbp)	#, seen_dp
	je	.L283	#,
	.loc 1 922 0
	movl	-108(%rbp), %eax	# exp_adjust, D.11743
	subl	$1, %eax	#, D.11743
	movl	%eax, -108(%rbp)	# D.11743, exp_adjust
	.loc 1 927 0
	jmp	.L285	#
.L283:
	.loc 1 924 0
	movl	-112(%rbp), %eax	# exp_adjust, D.11743
	addl	$1, %eax	#, D.11743
	movl	%eax, -112(%rbp)	# D.11743, exp_adjust
	.loc 1 927 0
	jmp	.L285	#
.L287:
	.loc 1 928 0
	movq	-80(%rbp), %rax	# s, s.261
	addq	$1, %rax	#, s.262
	movq	%rax, -80(%rbp)	# s.262, s
	.loc 1 929 0
	cmpl	$0, -128(%rbp)	#, seen_dp
	jne	.L285	#,
	.loc 1 930 0
	movl	-112(%rbp), %eax	# exp_adjust, D.11743
	addl	$1, %eax	#, D.11743
	movl	%eax, -112(%rbp)	# D.11743, exp_adjust
.L285:
	.loc 1 927 0 discriminator 1
	movq	-80(%rbp), %rax	# s, s.263
	movzbl	(%rax), %eax	# *s.263_69, D.11742
	cmpb	$47, %al	#, D.11742
	jle	.L286	#,
	.loc 1 927 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# s, s.264
	movzbl	(%rax), %eax	# *s.264_71, D.11742
	cmpb	$57, %al	#, D.11742
	jle	.L287	#,
	.loc 1 912 0 is_stmt 1
	jmp	.L279	#
.L280:
	.loc 1 936 0
	movl	-128(%rbp), %eax	# seen_dp, tmp199
	cltq
	movq	-64(%rbp,%rax,8), %rdx	# accumulator, D.11740
	movabsq	$1844674407370955160, %rax	#, tmp200
	cmpq	%rax, %rdx	# tmp200, D.11740
	jbe	.L288	#,
	.loc 1 938 0
	movl	-128(%rbp), %eax	# seen_dp, tmp202
	cltq
	movl	-96(%rbp,%rax,4), %edx	# exp_acc, D.11743
	movl	-128(%rbp), %eax	# seen_dp, tmp204
	cltq
	movq	-48(%rbp,%rax,8), %rax	# result, D.11745
	movl	%edx, %edi	# D.11743,
	movq	%rax, -168(%rbp)	# D.11745, %sfp
	movsd	-168(%rbp), %xmm0	# %sfp,
	call	S_mulexp10	#
	movapd	%xmm0, %xmm1	#, D.11745
	.loc 1 940 0
	movl	-128(%rbp), %eax	# seen_dp, tmp206
	cltq
	movq	-64(%rbp,%rax,8), %rax	# accumulator, D.11740
	testq	%rax, %rax	# D.11740
	js	.L289	#,
	cvtsi2sdq	%rax, %xmm0	# D.11740, D.11745
	jmp	.L290	#
.L289:
	movq	%rax, %rdx	# D.11740, tmp208
	shrq	%rdx	# tmp208
	andl	$1, %eax	#, tmp209
	orq	%rax, %rdx	# tmp209, tmp208
	cvtsi2sdq	%rdx, %xmm0	# tmp208, tmp207
	addsd	%xmm0, %xmm0	# tmp207, D.11745
.L290:
	addsd	%xmm1, %xmm0	# D.11745, D.11745
	.loc 1 938 0
	movl	-128(%rbp), %eax	# seen_dp, tmp211
	cltq
	movsd	%xmm0, -48(%rbp,%rax,8)	# D.11745, result
	.loc 1 941 0
	movl	-128(%rbp), %eax	# seen_dp, tmp213
	cltq
	movq	$0, -64(%rbp,%rax,8)	#, accumulator
	.loc 1 942 0
	movl	-128(%rbp), %eax	# seen_dp, tmp215
	cltq
	movl	$0, -96(%rbp,%rax,4)	#, exp_acc
.L288:
	.loc 1 944 0
	movl	-128(%rbp), %eax	# seen_dp, tmp217
	cltq
	movq	-64(%rbp,%rax,8), %rdx	# accumulator, D.11740
	movq	%rdx, %rax	# D.11740, tmp218
	salq	$2, %rax	#, tmp218
	addq	%rdx, %rax	# D.11740, tmp218
	addq	%rax, %rax	# tmp219
	movq	%rax, %rdx	# tmp218, D.11740
	movl	-124(%rbp), %eax	# digit, tmp220
	cltq
	addq	%rax, %rdx	# D.11740, D.11740
	movl	-128(%rbp), %eax	# seen_dp, tmp222
	cltq
	movq	%rdx, -64(%rbp,%rax,8)	# D.11740, accumulator
	.loc 1 945 0
	movl	-128(%rbp), %eax	# seen_dp, tmp224
	cltq
	movl	-96(%rbp,%rax,4), %eax	# exp_acc, D.11743
	leal	1(%rax), %edx	#, D.11743
	movl	-128(%rbp), %eax	# seen_dp, tmp226
	cltq
	movl	%edx, -96(%rbp,%rax,4)	# D.11743, exp_acc
	.loc 1 912 0
	jmp	.L279	#
.L286:
	jmp	.L279	#
.L276:
	.loc 1 948 0
	cmpl	$0, -128(%rbp)	#, seen_dp
	jne	.L291	#,
	.loc 1 948 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rdx	# send, tmp227
	leaq	-80(%rbp), %rax	#, tmp228
	movq	%rdx, %rsi	# tmp227,
	movq	%rax, %rdi	# tmp228,
	call	Perl_grok_numeric_radix	#
	testb	%al, %al	# D.11742
	je	.L291	#,
	.loc 1 949 0 is_stmt 1
	movl	$1, -128(%rbp)	#, seen_dp
	.loc 1 950 0
	cmpl	$17, -120(%rbp)	#, sig_digits
	jle	.L279	#,
	.loc 1 951 0
	movq	-80(%rbp), %rax	# s, s.265
	addq	$1, %rax	#, s.266
	movq	%rax, -80(%rbp)	# s.266, s
	.loc 1 952 0
	jmp	.L292	#
.L294:
	.loc 1 953 0
	movq	-80(%rbp), %rax	# s, s.267
	addq	$1, %rax	#, s.268
	movq	%rax, -80(%rbp)	# s.268, s
.L292:
	.loc 1 952 0 discriminator 1
	movq	-80(%rbp), %rax	# s, s.269
	movzbl	(%rax), %eax	# *s.269_94, D.11742
	cmpb	$47, %al	#, D.11742
	jle	.L293	#,
	.loc 1 952 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# s, s.270
	movzbl	(%rax), %eax	# *s.270_96, D.11742
	cmpb	$57, %al	#, D.11742
	jle	.L294	#,
.L293:
	.loc 1 955 0 is_stmt 1
	jmp	.L291	#
.L279:
	.loc 1 961 0
	jmp	.L273	#
.L291:
	.loc 1 963 0
	movl	-96(%rbp), %edx	# exp_acc, D.11743
	movq	-48(%rbp), %rax	# result, D.11745
	movl	%edx, %edi	# D.11743,
	movq	%rax, -168(%rbp)	# D.11745, %sfp
	movsd	-168(%rbp), %xmm0	# %sfp,
	call	S_mulexp10	#
	movapd	%xmm0, %xmm1	#, D.11745
	movq	-64(%rbp), %rax	# accumulator, D.11740
	testq	%rax, %rax	# D.11740
	js	.L295	#,
	cvtsi2sdq	%rax, %xmm0	# D.11740, D.11745
	jmp	.L296	#
.L295:
	movq	%rax, %rdx	# D.11740, tmp230
	shrq	%rdx	# tmp230
	andl	$1, %eax	#, tmp231
	orq	%rax, %rdx	# tmp231, tmp230
	cvtsi2sdq	%rdx, %xmm0	# tmp230, tmp229
	addsd	%xmm0, %xmm0	# tmp229, D.11745
.L296:
	addsd	%xmm1, %xmm0	# D.11745, D.11745
	movsd	%xmm0, -48(%rbp)	# D.11745, result
	.loc 1 964 0
	cmpl	$0, -128(%rbp)	#, seen_dp
	je	.L297	#,
	.loc 1 965 0
	movl	-92(%rbp), %edx	# exp_acc, D.11743
	movq	-40(%rbp), %rax	# result, D.11745
	movl	%edx, %edi	# D.11743,
	movq	%rax, -168(%rbp)	# D.11745, %sfp
	movsd	-168(%rbp), %xmm0	# %sfp,
	call	S_mulexp10	#
	movapd	%xmm0, %xmm1	#, D.11745
	movq	-56(%rbp), %rax	# accumulator, D.11740
	testq	%rax, %rax	# D.11740
	js	.L298	#,
	cvtsi2sdq	%rax, %xmm0	# D.11740, D.11745
	jmp	.L299	#
.L298:
	movq	%rax, %rdx	# D.11740, tmp233
	shrq	%rdx	# tmp233
	andl	$1, %eax	#, tmp234
	orq	%rax, %rdx	# tmp234, tmp233
	cvtsi2sdq	%rdx, %xmm0	# tmp233, tmp232
	addsd	%xmm0, %xmm0	# tmp232, D.11745
.L299:
	addsd	%xmm1, %xmm0	# D.11745, D.11745
	movsd	%xmm0, -40(%rbp)	# D.11745, result
.L297:
	.loc 1 968 0
	cmpb	$0, -134(%rbp)	#, seen_digit
	je	.L300	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# s, s.271
	movzbl	(%rax), %eax	# *s.271_112, D.11742
	cmpb	$101, %al	#, D.11742
	je	.L301	#,
	movq	-80(%rbp), %rax	# s, s.272
	movzbl	(%rax), %eax	# *s.272_114, D.11742
	cmpb	$69, %al	#, D.11742
	jne	.L300	#,
.L301:
.LBB6:
	.loc 1 969 0 is_stmt 1
	movb	$0, -133(%rbp)	#, expnegative
	.loc 1 971 0
	movq	-80(%rbp), %rax	# s, s.273
	addq	$1, %rax	#, s.274
	movq	%rax, -80(%rbp)	# s.274, s
	.loc 1 972 0
	movq	-80(%rbp), %rax	# s, s.275
	movzbl	(%rax), %eax	# *s.275_119, D.11742
	movsbl	%al, %eax	# D.11742, D.11743
	cmpl	$43, %eax	#, D.11743
	je	.L303	#,
	cmpl	$45, %eax	#, D.11743
	je	.L304	#,
	.loc 1 979 0
	jmp	.L305	#
.L304:
	.loc 1 974 0
	movb	$1, -133(%rbp)	#, expnegative
.L303:
	.loc 1 977 0
	movq	-80(%rbp), %rax	# s, s.276
	addq	$1, %rax	#, s.277
	movq	%rax, -80(%rbp)	# s.277, s
	.loc 1 979 0
	jmp	.L305	#
.L307:
	.loc 1 980 0
	movl	-132(%rbp), %edx	# exponent, tmp235
	movl	%edx, %eax	# tmp235, tmp236
	sall	$2, %eax	#, tmp236
	addl	%edx, %eax	# tmp235, tmp236
	addl	%eax, %eax	# tmp237
	movl	%eax, %ecx	# tmp236, D.11743
	movq	-80(%rbp), %rax	# s, s.278
	leaq	1(%rax), %rdx	#, s.280
	movq	%rdx, -80(%rbp)	# s.280, s
	movzbl	(%rax), %eax	# *s.279_131, D.11742
	movsbl	%al, %eax	# D.11742, D.11743
	subl	$48, %eax	#, D.11743
	addl	%ecx, %eax	# D.11743, tmp238
	movl	%eax, -132(%rbp)	# tmp238, exponent
.L305:
	.loc 1 979 0 discriminator 1
	movq	-80(%rbp), %rax	# s, s.281
	movzbl	(%rax), %eax	# *s.281_125, D.11742
	cmpb	$47, %al	#, D.11742
	jle	.L306	#,
	.loc 1 979 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# s, s.282
	movzbl	(%rax), %eax	# *s.282_127, D.11742
	cmpb	$57, %al	#, D.11742
	jle	.L307	#,
.L306:
	.loc 1 981 0 is_stmt 1
	cmpb	$0, -133(%rbp)	#, expnegative
	je	.L300	#,
	.loc 1 982 0
	negl	-132(%rbp)	# exponent
.L300:
.LBE6:
	.loc 1 989 0
	cmpl	$0, -128(%rbp)	#, seen_dp
	je	.L308	#,
	.loc 1 990 0
	movl	-112(%rbp), %edx	# exp_adjust, D.11743
	movl	-132(%rbp), %eax	# exponent, tmp239
	addl	%eax, %edx	# tmp239, D.11743
	movq	-48(%rbp), %rax	# result, D.11745
	movl	%edx, %edi	# D.11743,
	movq	%rax, -168(%rbp)	# D.11745, %sfp
	movsd	-168(%rbp), %xmm0	# %sfp,
	call	S_mulexp10	#
	movsd	%xmm0, -168(%rbp)	#, %sfp
	.loc 1 991 0
	movl	-108(%rbp), %eax	# exp_adjust, D.11743
	movl	-132(%rbp), %edx	# exponent, tmp240
	subl	%eax, %edx	# D.11743, D.11743
	movq	-40(%rbp), %rax	# result, D.11745
	movl	%edx, %edi	# D.11743,
	movq	%rax, -176(%rbp)	# D.11745, %sfp
	movsd	-176(%rbp), %xmm0	# %sfp,
	call	S_mulexp10	#
	addsd	-168(%rbp), %xmm0	# %sfp, D.11745
	.loc 1 990 0
	movsd	%xmm0, -32(%rbp)	# D.11745, result
	jmp	.L309	#
.L308:
	.loc 1 993 0
	movl	-112(%rbp), %edx	# exp_adjust, D.11743
	movl	-132(%rbp), %eax	# exponent, tmp241
	addl	%eax, %edx	# tmp241, D.11743
	movq	-48(%rbp), %rax	# result, D.11745
	movl	%edx, %edi	# D.11743,
	movq	%rax, -168(%rbp)	# D.11745, %sfp
	movsd	-168(%rbp), %xmm0	# %sfp,
	call	S_mulexp10	#
	movsd	%xmm0, -168(%rbp)	#, %sfp
	movq	-168(%rbp), %rax	# %sfp, D.11745
	movq	%rax, -32(%rbp)	# D.11745, result
.L309:
	.loc 1 997 0
	cmpb	$0, -135(%rbp)	#, negative
	je	.L310	#,
	.loc 1 998 0
	movsd	-32(%rbp), %xmm1	# result, D.11745
	movsd	.LC23(%rip), %xmm0	#, tmp242
	xorpd	%xmm1, %xmm0	# D.11745, D.11745
	movsd	%xmm0, -32(%rbp)	# D.11745, result
.L310:
	.loc 1 1000 0
	movq	-32(%rbp), %rax	# result, D.11745
	movq	-160(%rbp), %rdx	# value, tmp243
	movq	%rax, (%rdx)	# D.11745, *value_154(D)
	.loc 1 1001 0
	movq	-80(%rbp), %rax	# s, D.11746
	.loc 1 1002 0
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_my_atof2, .-Perl_my_atof2
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	-1042284544
	.align 8
.LC2:
	.long	0
	.long	1106247680
	.align 8
.LC3:
	.long	0
	.long	1105199104
	.align 8
.LC4:
	.long	0
	.long	1138753536
	.align 8
.LC5:
	.long	0
	.long	-1008730112
	.align 8
.LC6:
	.long	0
	.long	1139802112
	.align 8
.LC10:
	.long	4292870144
	.long	1106247679
	.align 8
.LC13:
	.long	0
	.long	1076887552
	.align 8
.LC17:
	.long	0
	.long	1075838976
	.align 16
.LC23:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
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
	.file 19 "intrpvar.h"
	.file 20 "thrdvar.h"
	.file 21 "perlvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17ec
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF250
	.byte	0x1
	.long	.LASF251
	.long	.LASF252
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
	.long	.LASF179
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
	.long	0xd74
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xd74
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xdf8
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xde2
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xc4f
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xc4f
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xc45
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xc45
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
	.long	0xd74
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0xd74
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0xdf8
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0xde2
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xc4f
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xc4f
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xc45
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xc45
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
	.long	0xd5c
	.byte	0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0xd91
	.byte	0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xc65
	.byte	0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xc5a
	.byte	0x44
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xc70
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xc8d
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xc8d
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
	.long	0xd74
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xd74
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xdf8
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xde2
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xc4f
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xc4f
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xc45
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xc45
	.byte	0x25
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xd74
	.byte	0x28
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xd74
	.byte	0x30
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xd74
	.byte	0x38
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xd74
	.byte	0x40
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0xdfe
	.byte	0x48
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0xe04
	.byte	0x50
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xc65
	.byte	0x58
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xc65
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xc45
	.byte	0x60
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0xd5c
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
	.long	0xc65
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xc65
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
	.long	0xd44
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xc65
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xc65
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
	.long	0xd4a
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xc65
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xc65
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
	.long	0xd3e
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xc65
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xc65
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
	.long	0xd00
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xd00
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xd06
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xd11
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
	.long	0xd1c
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
	.long	0xd22
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xc5a
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xc5a
	.byte	0x44
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xc5a
	.byte	0x48
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xc5a
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xc65
	.byte	0x50
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xc65
	.byte	0x54
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xc65
	.byte	0x58
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xc65
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xd28
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
	.long	0xc8d
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xc65
	.byte	0x8
	.uleb128 0xd
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0xdd1
	.byte	0x10
	.uleb128 0xd
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0xd85
	.byte	0x18
	.uleb128 0xd
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0xd97
	.byte	0x20
	.uleb128 0xd
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0xd5c
	.byte	0x28
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0xd91
	.byte	0x30
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0xd85
	.byte	0x38
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xc65
	.byte	0x40
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xc65
	.byte	0x44
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xc70
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
	.long	0xd38
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xc65
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xc65
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
	.long	0xd50
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xc65
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xc65
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
	.long	0xd56
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0xc
	.byte	0x1c
	.long	0xf15
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0xc
	.byte	0x1d
	.long	0xc4f
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
	.long	0xc45
	.byte	0x13
	.uleb128 0xd
	.long	.LASF88
	.byte	0xc
	.byte	0x20
	.long	0xc8d
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
	.long	0xc5a
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x6d2
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x703
	.uleb128 0xd
	.long	.LASF91
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF92
	.byte	0x9
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF93
	.byte	0x9
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF94
	.byte	0x6
	.value	0x7fd
	.long	0x70f
	.uleb128 0xe
	.long	.LASF95
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x794
	.uleb128 0xd
	.long	.LASF96
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF97
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF98
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF99
	.byte	0xd
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF100
	.byte	0xd
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF101
	.byte	0xd
	.byte	0x11
	.long	0xd56
	.byte	0x28
	.uleb128 0xd
	.long	.LASF102
	.byte	0xd
	.byte	0x12
	.long	0xd5c
	.byte	0x30
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0x14
	.long	0xe0a
	.byte	0x38
	.uleb128 0xd
	.long	.LASF104
	.byte	0xd
	.byte	0x15
	.long	0xc8d
	.byte	0x40
	.uleb128 0xd
	.long	.LASF105
	.byte	0xd
	.byte	0x16
	.long	0xc45
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF106
	.byte	0x6
	.value	0x7fe
	.long	0x7a0
	.uleb128 0xe
	.long	.LASF107
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x831
	.uleb128 0xd
	.long	.LASF108
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF109
	.byte	0xe
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF110
	.byte	0xe
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF111
	.byte	0xe
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF100
	.byte	0xe
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF101
	.byte	0xe
	.byte	0x29
	.long	0xd56
	.byte	0x28
	.uleb128 0xd
	.long	.LASF102
	.byte	0xe
	.byte	0x2a
	.long	0xd5c
	.byte	0x30
	.uleb128 0xd
	.long	.LASF112
	.byte	0xe
	.byte	0x2c
	.long	0xc5a
	.byte	0x38
	.uleb128 0xd
	.long	.LASF113
	.byte	0xe
	.byte	0x2d
	.long	0xe8c
	.byte	0x40
	.uleb128 0xd
	.long	.LASF114
	.byte	0xe
	.byte	0x2e
	.long	0xdfe
	.byte	0x48
	.uleb128 0xd
	.long	.LASF115
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF116
	.byte	0x6
	.value	0x7ff
	.long	0x83d
	.uleb128 0x10
	.long	.LASF117
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0x8e7
	.uleb128 0xf
	.long	.LASF91
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF118
	.byte	0x9
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF100
	.byte	0x9
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF101
	.byte	0x9
	.value	0x136
	.long	0xd56
	.byte	0x28
	.uleb128 0xf
	.long	.LASF102
	.byte	0x9
	.value	0x137
	.long	0xd5c
	.byte	0x30
	.uleb128 0xf
	.long	.LASF119
	.byte	0x9
	.value	0x139
	.long	0xd62
	.byte	0x38
	.uleb128 0xf
	.long	.LASF120
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF121
	.byte	0x9
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF122
	.byte	0x9
	.value	0x13c
	.long	0xd5c
	.byte	0x50
	.uleb128 0xf
	.long	.LASF123
	.byte	0x9
	.value	0x13d
	.long	0xc45
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF124
	.byte	0x6
	.value	0x800
	.long	0x8f3
	.uleb128 0xe
	.long	.LASF125
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0x9e4
	.uleb128 0xd
	.long	.LASF91
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF92
	.byte	0xf
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF93
	.byte	0xf
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF99
	.byte	0xf
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF100
	.byte	0xf
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF101
	.byte	0xf
	.byte	0x14
	.long	0xd56
	.byte	0x28
	.uleb128 0xd
	.long	.LASF102
	.byte	0xf
	.byte	0x15
	.long	0xd5c
	.byte	0x30
	.uleb128 0xd
	.long	.LASF126
	.byte	0xf
	.byte	0x17
	.long	0xd5c
	.byte	0x38
	.uleb128 0xd
	.long	.LASF127
	.byte	0xf
	.byte	0x18
	.long	0xd74
	.byte	0x40
	.uleb128 0xd
	.long	.LASF128
	.byte	0xf
	.byte	0x19
	.long	0xd74
	.byte	0x48
	.uleb128 0xd
	.long	.LASF129
	.byte	0xf
	.byte	0x1a
	.long	0xd8b
	.byte	0x50
	.uleb128 0xd
	.long	.LASF130
	.byte	0xf
	.byte	0x1b
	.long	0xb96
	.byte	0x58
	.uleb128 0xd
	.long	.LASF131
	.byte	0xf
	.byte	0x1c
	.long	0xd91
	.byte	0x60
	.uleb128 0xd
	.long	.LASF132
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF133
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF134
	.byte	0xf
	.byte	0x1f
	.long	0xded
	.byte	0x78
	.uleb128 0xd
	.long	.LASF135
	.byte	0xf
	.byte	0x20
	.long	0xd85
	.byte	0x80
	.uleb128 0xd
	.long	.LASF136
	.byte	0xf
	.byte	0x25
	.long	0xd68
	.byte	0x88
	.uleb128 0xd
	.long	.LASF137
	.byte	0xf
	.byte	0x26
	.long	0xc65
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF138
	.byte	0x6
	.value	0x803
	.long	0x9f0
	.uleb128 0x10
	.long	.LASF139
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xb29
	.uleb128 0xf
	.long	.LASF91
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF118
	.byte	0x9
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF100
	.byte	0x9
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF101
	.byte	0x9
	.value	0x176
	.long	0xd56
	.byte	0x28
	.uleb128 0xf
	.long	.LASF102
	.byte	0x9
	.value	0x177
	.long	0xd5c
	.byte	0x30
	.uleb128 0xf
	.long	.LASF140
	.byte	0x9
	.value	0x179
	.long	0xdc5
	.byte	0x38
	.uleb128 0xf
	.long	.LASF141
	.byte	0x9
	.value	0x17a
	.long	0xdc5
	.byte	0x40
	.uleb128 0xf
	.long	.LASF142
	.byte	0x9
	.value	0x187
	.long	0xd9d
	.byte	0x48
	.uleb128 0xf
	.long	.LASF143
	.byte	0x9
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF144
	.byte	0x9
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF145
	.byte	0x9
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF146
	.byte	0x9
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF147
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF148
	.byte	0x9
	.value	0x18d
	.long	0xd91
	.byte	0x78
	.uleb128 0xf
	.long	.LASF149
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF150
	.byte	0x9
	.value	0x18f
	.long	0xd91
	.byte	0x88
	.uleb128 0xf
	.long	.LASF151
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF152
	.byte	0x9
	.value	0x191
	.long	0xd91
	.byte	0x98
	.uleb128 0xf
	.long	.LASF153
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF154
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF155
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF156
	.byte	0x6
	.value	0x804
	.long	0xb35
	.uleb128 0xe
	.long	.LASF157
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xb96
	.uleb128 0xd
	.long	.LASF158
	.byte	0xc
	.byte	0xf
	.long	0xeac
	.byte	0
	.uleb128 0xd
	.long	.LASF159
	.byte	0xc
	.byte	0x10
	.long	0xeac
	.byte	0x8
	.uleb128 0xd
	.long	.LASF160
	.byte	0xc
	.byte	0x11
	.long	0xec6
	.byte	0x10
	.uleb128 0xd
	.long	.LASF161
	.byte	0xc
	.byte	0x12
	.long	0xeac
	.byte	0x18
	.uleb128 0xd
	.long	.LASF162
	.byte	0xc
	.byte	0x13
	.long	0xeac
	.byte	0x20
	.uleb128 0xd
	.long	.LASF163
	.byte	0xc
	.byte	0x14
	.long	0xeef
	.byte	0x28
	.uleb128 0xd
	.long	.LASF164
	.byte	0xc
	.byte	0x16
	.long	0xf0f
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xba2
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xc04
	.uleb128 0x12
	.long	.LASF165
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF166
	.byte	0x6
	.value	0x9f3
	.long	0xc5a
	.uleb128 0x12
	.long	.LASF167
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF168
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF169
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF170
	.byte	0x6
	.value	0x9f7
	.long	0xc87
	.uleb128 0x12
	.long	.LASF171
	.byte	0x6
	.value	0x9f8
	.long	0xc87
	.byte	0
	.uleb128 0xb
	.long	.LASF172
	.byte	0x6
	.value	0x808
	.long	0xc10
	.uleb128 0x10
	.long	.LASF173
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xc45
	.uleb128 0xf
	.long	.LASF174
	.byte	0x9
	.value	0x4ee
	.long	0xd97
	.byte	0
	.uleb128 0xf
	.long	.LASF175
	.byte	0x9
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF176
	.byte	0x9
	.value	0x4f0
	.long	0xdcb
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
	.long	.LASF177
	.byte	0x10
	.value	0x209
	.long	0xc65
	.uleb128 0x13
	.long	0xc87
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc7c
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0x15
	.long	0x7f
	.long	0xca3
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF178
	.byte	0x11
	.byte	0x63
	.long	0xcae
	.uleb128 0x9
	.long	.LASF180
	.uleb128 0x5
	.long	.LASF181
	.byte	0x11
	.byte	0x65
	.long	0xcbe
	.uleb128 0x6
	.byte	0x8
	.long	0xca3
	.uleb128 0xe
	.long	.LASF182
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xcf5
	.uleb128 0xd
	.long	.LASF175
	.byte	0xa
	.byte	0x14
	.long	0xc45
	.byte	0
	.uleb128 0xd
	.long	.LASF183
	.byte	0xa
	.byte	0x15
	.long	0xc45
	.byte	0x1
	.uleb128 0xd
	.long	.LASF184
	.byte	0xa
	.byte	0x16
	.long	0xc4f
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF182
	.byte	0xa
	.byte	0x19
	.long	0xcc4
	.uleb128 0x6
	.byte	0x8
	.long	0xc5a
	.uleb128 0x6
	.byte	0x8
	.long	0xcf5
	.uleb128 0x9
	.long	.LASF185
	.uleb128 0x6
	.byte	0x8
	.long	0xd0c
	.uleb128 0x9
	.long	.LASF186
	.uleb128 0x6
	.byte	0x8
	.long	0xd17
	.uleb128 0x6
	.byte	0x8
	.long	0xc65
	.uleb128 0x15
	.long	0xcf5
	.long	0xd38
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x831
	.uleb128 0x6
	.byte	0x8
	.long	0x8e7
	.uleb128 0x6
	.byte	0x8
	.long	0x703
	.uleb128 0x6
	.byte	0x8
	.long	0x794
	.uleb128 0x6
	.byte	0x8
	.long	0x9e4
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
	.long	.LASF187
	.byte	0x9
	.value	0x150
	.long	0xc4f
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xd85
	.uleb128 0x14
	.long	0xd85
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41b
	.uleb128 0x6
	.byte	0x8
	.long	0xd7a
	.uleb128 0x6
	.byte	0x8
	.long	0x5e2
	.uleb128 0x6
	.byte	0x8
	.long	0x3a5
	.uleb128 0x17
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0xdbf
	.uleb128 0x12
	.long	.LASF188
	.byte	0x9
	.value	0x185
	.long	0xdbf
	.uleb128 0x12
	.long	.LASF189
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xcb3
	.uleb128 0x6
	.byte	0x8
	.long	0x343
	.uleb128 0x6
	.byte	0x8
	.long	0x61d
	.uleb128 0x5
	.long	.LASF190
	.byte	0x12
	.byte	0x13
	.long	0x3a5
	.uleb128 0x5
	.long	.LASF191
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xdd7
	.uleb128 0x18
	.long	0xd74
	.uleb128 0x6
	.byte	0x8
	.long	0xdf3
	.uleb128 0x6
	.byte	0x8
	.long	0x249
	.uleb128 0x6
	.byte	0x8
	.long	0x456
	.uleb128 0x6
	.byte	0x8
	.long	0xc8d
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x8
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0xe20
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0xe50
	.uleb128 0xd
	.long	.LASF192
	.byte	0xe
	.byte	0x11
	.long	0xe8c
	.byte	0
	.uleb128 0xd
	.long	.LASF193
	.byte	0xe
	.byte	0x12
	.long	0xe92
	.byte	0x8
	.uleb128 0xd
	.long	.LASF194
	.byte	0xe
	.byte	0x13
	.long	0xc8d
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0xe5b
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0xe8c
	.uleb128 0xd
	.long	.LASF195
	.byte	0xe
	.byte	0x18
	.long	0xc65
	.byte	0
	.uleb128 0xd
	.long	.LASF196
	.byte	0xe
	.byte	0x19
	.long	0xc5a
	.byte	0x4
	.uleb128 0xd
	.long	.LASF197
	.byte	0xe
	.byte	0x1a
	.long	0xc93
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe16
	.uleb128 0x6
	.byte	0x8
	.long	0xe50
	.uleb128 0x19
	.long	0x57
	.long	0xeac
	.uleb128 0x14
	.long	0xc8d
	.uleb128 0x14
	.long	0xd56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe98
	.uleb128 0x19
	.long	0xc65
	.long	0xec6
	.uleb128 0x14
	.long	0xc8d
	.uleb128 0x14
	.long	0xd56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xeb2
	.uleb128 0x19
	.long	0x57
	.long	0xeef
	.uleb128 0x14
	.long	0xc8d
	.uleb128 0x14
	.long	0xd56
	.uleb128 0x14
	.long	0xc8d
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xecc
	.uleb128 0x19
	.long	0x57
	.long	0xf09
	.uleb128 0x14
	.long	0xd56
	.uleb128 0x14
	.long	0xf09
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc04
	.uleb128 0x6
	.byte	0x8
	.long	0xef5
	.uleb128 0x6
	.byte	0x8
	.long	0xb29
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF198
	.uleb128 0x1a
	.long	.LASF199
	.byte	0x1
	.byte	0x1f
	.long	0xc65
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf50
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x1f
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF200
	.byte	0x1
	.byte	0x31
	.long	0xc5a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xf7e
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x31
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF201
	.byte	0x1
	.byte	0x43
	.long	0xc5
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xfac
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x43
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF202
	.byte	0x1
	.byte	0x56
	.long	0xd0
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xfda
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x56
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF253
	.byte	0x1
	.byte	0x6e
	.long	0xdb
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF203
	.byte	0x1
	.byte	0x93
	.long	0xd0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x10e4
	.uleb128 0x1e
	.long	.LASF204
	.byte	0x1
	.byte	0x93
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.byte	0x93
	.long	0x10e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x1
	.byte	0x93
	.long	0xd00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.byte	0x93
	.long	0x10ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.byte	0x94
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x95
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF207
	.byte	0x1
	.byte	0x96
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF208
	.byte	0x1
	.byte	0x97
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF209
	.byte	0x1
	.byte	0x99
	.long	0x10f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF210
	.byte	0x1
	.byte	0x9a
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x20
	.long	.LASF211
	.byte	0x1
	.byte	0x9b
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -59
	.uleb128 0x21
	.long	.LASF215
	.byte	0x1
	.byte	0xb3
	.quad	.L91
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1f
	.string	"bit"
	.byte	0x1
	.byte	0xae
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xed
	.uleb128 0x6
	.byte	0x8
	.long	0xdb
	.uleb128 0x7
	.long	0xd0
	.uleb128 0x23
	.long	.LASF212
	.byte	0x1
	.value	0x107
	.long	0xd0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e0
	.uleb128 0x24
	.long	.LASF204
	.byte	0x1
	.value	0x107
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x107
	.long	0x10e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF175
	.byte	0x1
	.value	0x107
	.long	0xd00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x107
	.long	0x10ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x108
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x109
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF207
	.byte	0x1
	.value	0x10a
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF208
	.byte	0x1
	.value	0x10b
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF213
	.byte	0x1
	.value	0x10d
	.long	0x10f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF210
	.byte	0x1
	.value	0x10e
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x26
	.long	.LASF211
	.byte	0x1
	.value	0x10f
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x26
	.long	.LASF214
	.byte	0x1
	.value	0x110
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF215
	.byte	0x1
	.value	0x128
	.quad	.L120
	.byte	0
	.uleb128 0x23
	.long	.LASF216
	.byte	0x1
	.value	0x17a
	.long	0xd0
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x12db
	.uleb128 0x24
	.long	.LASF204
	.byte	0x1
	.value	0x17a
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x17a
	.long	0x10e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF175
	.byte	0x1
	.value	0x17a
	.long	0xd00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x17a
	.long	0x10ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x17b
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x17c
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF207
	.byte	0x1
	.value	0x17d
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF208
	.byte	0x1
	.value	0x17e
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF217
	.byte	0x1
	.value	0x180
	.long	0x10f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF210
	.byte	0x1
	.value	0x181
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x26
	.long	.LASF211
	.byte	0x1
	.value	0x182
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x27
	.long	.LASF215
	.byte	0x1
	.value	0x18c
	.quad	.L145
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x26
	.long	.LASF218
	.byte	0x1
	.value	0x187
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF219
	.byte	0x1
	.value	0x1da
	.long	0xdb
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1359
	.uleb128 0x24
	.long	.LASF204
	.byte	0x1
	.value	0x1da
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x1da
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF220
	.byte	0x1
	.value	0x1da
	.long	0x10e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"rnv"
	.byte	0x1
	.value	0x1dc
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF175
	.byte	0x1
	.value	0x1dd
	.long	0xc5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"ruv"
	.byte	0x1
	.value	0x1de
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF221
	.byte	0x1
	.value	0x1e5
	.long	0xdb
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x13d7
	.uleb128 0x24
	.long	.LASF204
	.byte	0x1
	.value	0x1e5
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x1e5
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF220
	.byte	0x1
	.value	0x1e5
	.long	0x10e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"rnv"
	.byte	0x1
	.value	0x1e7
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF175
	.byte	0x1
	.value	0x1e8
	.long	0xc5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"ruv"
	.byte	0x1
	.value	0x1e9
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF222
	.byte	0x1
	.value	0x1f0
	.long	0xdb
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1455
	.uleb128 0x24
	.long	.LASF204
	.byte	0x1
	.value	0x1f0
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x1f0
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF220
	.byte	0x1
	.value	0x1f0
	.long	0x10e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"rnv"
	.byte	0x1
	.value	0x1f2
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF175
	.byte	0x1
	.value	0x1f3
	.long	0xc5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"ruv"
	.byte	0x1
	.value	0x1f4
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF223
	.byte	0x1
	.value	0x202
	.long	0x7f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1495
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x202
	.long	0x1495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF224
	.byte	0x1
	.value	0x202
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0x23
	.long	.LASF225
	.byte	0x1
	.value	0x22f
	.long	0x57
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x15a7
	.uleb128 0x28
	.string	"pv"
	.byte	0x1
	.value	0x22f
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x22f
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF226
	.byte	0x1
	.value	0x22f
	.long	0x15a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x231
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF224
	.byte	0x1
	.value	0x232
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF227
	.byte	0x1
	.value	0x233
	.long	0x10f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF228
	.byte	0x1
	.value	0x234
	.long	0xb0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x26
	.long	.LASF229
	.byte	0x1
	.value	0x235
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF230
	.byte	0x1
	.value	0x236
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF231
	.byte	0x1
	.value	0x237
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x2a0
	.quad	.L206
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x26
	.long	.LASF207
	.byte	0x1
	.value	0x24b
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x26
	.long	.LASF218
	.byte	0x1
	.value	0x252
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd0
	.uleb128 0x2a
	.long	.LASF254
	.byte	0x1
	.value	0x2ee
	.long	0xdb
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x162a
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x2ee
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF233
	.byte	0x1
	.value	0x2ee
	.long	0xc5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF206
	.byte	0x1
	.value	0x2f0
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF234
	.byte	0x1
	.value	0x2f1
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF235
	.byte	0x1
	.value	0x2f2
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x25
	.string	"bit"
	.byte	0x1
	.value	0x2f3
	.long	0xc5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.long	.LASF236
	.byte	0x1
	.value	0x332
	.long	0xdb
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1667
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x332
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x334
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF237
	.byte	0x1
	.value	0x34b
	.long	0x79
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1799
	.uleb128 0x24
	.long	.LASF238
	.byte	0x1
	.value	0x34b
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.long	.LASF207
	.byte	0x1
	.value	0x34b
	.long	0x10ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.long	.LASF206
	.byte	0x1
	.value	0x34d
	.long	0x1799
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x34e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF239
	.byte	0x1
	.value	0x350
	.long	0x17a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF235
	.byte	0x1
	.value	0x351
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -151
	.uleb128 0x26
	.long	.LASF224
	.byte	0x1
	.value	0x352
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF240
	.byte	0x1
	.value	0x353
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -150
	.uleb128 0x26
	.long	.LASF241
	.byte	0x1
	.value	0x354
	.long	0x17b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.long	.LASF242
	.byte	0x1
	.value	0x355
	.long	0x17b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF233
	.byte	0x1
	.value	0x357
	.long	0xc5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x26
	.long	.LASF243
	.byte	0x1
	.value	0x358
	.long	0xc5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF218
	.byte	0x1
	.value	0x359
	.long	0xc5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x26
	.long	.LASF244
	.byte	0x1
	.value	0x35a
	.long	0xc5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.long	.LASF245
	.byte	0x1
	.value	0x35b
	.long	0xc5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x26
	.long	.LASF246
	.byte	0x1
	.value	0x3c9
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -149
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xdb
	.long	0x17a9
	.uleb128 0x16
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.long	0xd0
	.long	0x17b9
	.uleb128 0x16
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	0xc5a
	.long	0x17c9
	.uleb128 0x16
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.long	.LASF247
	.byte	0x13
	.byte	0x34
	.long	0xc45
	.uleb128 0x2b
	.long	.LASF248
	.byte	0x14
	.byte	0x81
	.long	0x17df
	.uleb128 0x2c
	.long	0xe10
	.uleb128 0x2b
	.long	.LASF249
	.byte	0x15
	.byte	0x25
	.long	0xaa
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x29
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
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
.LASF145:
	.string	"xio_page_len"
.LASF151:
	.string	"xio_bottom_name"
.LASF69:
	.string	"gp_sv"
.LASF178:
	.string	"PerlIOl"
.LASF17:
	.string	"op_sibling"
.LASF252:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF124:
	.string	"XPVCV"
.LASF233:
	.string	"exponent"
.LASF158:
	.string	"svt_get"
.LASF27:
	.string	"cop_seq"
.LASF31:
	.string	"cop_io"
.LASF154:
	.string	"xio_type"
.LASF203:
	.string	"Perl_grok_bin"
.LASF87:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF175:
	.string	"flags"
.LASF109:
	.string	"xhv_fill"
.LASF80:
	.string	"gp_file"
.LASF231:
	.string	"sawnan"
.LASF155:
	.string	"xio_flags"
.LASF188:
	.string	"xiou_dirp"
.LASF182:
	.string	"regnode"
.LASF169:
	.string	"any_bool"
.LASF248:
	.string	"PL_curcop"
.LASF39:
	.string	"op_pmregexp"
.LASF190:
	.string	"PADLIST"
.LASF246:
	.string	"expnegative"
.LASF56:
	.string	"precomp"
.LASF247:
	.string	"PL_dowarn"
.LASF105:
	.string	"xav_flags"
.LASF122:
	.string	"xgv_stash"
.LASF53:
	.string	"endp"
.LASF254:
	.string	"S_mulexp10"
.LASF10:
	.string	"ssize_t"
.LASF180:
	.string	"_PerlIO"
.LASF28:
	.string	"cop_arybase"
.LASF129:
	.string	"xcv_xsub"
.LASF26:
	.string	"cop_filegv"
.LASF212:
	.string	"Perl_grok_hex"
.LASF224:
	.string	"send"
.LASF83:
	.string	"mg_moremagic"
.LASF76:
	.string	"gp_cv"
.LASF98:
	.string	"xav_max"
.LASF181:
	.string	"PerlIO"
.LASF251:
	.string	"numeric.c"
.LASF239:
	.string	"accumulator"
.LASF111:
	.string	"xhv_keys"
.LASF55:
	.string	"substrs"
.LASF157:
	.string	"mgvtbl"
.LASF132:
	.string	"xcv_file"
.LASF131:
	.string	"xcv_gv"
.LASF206:
	.string	"result"
.LASF12:
	.string	"long long unsigned int"
.LASF50:
	.string	"REGEXP"
.LASF186:
	.string	"reg_data"
.LASF173:
	.string	"clone_params"
.LASF185:
	.string	"reg_substr_data"
.LASF85:
	.string	"mg_private"
.LASF118:
	.string	"xiv_iv"
.LASF123:
	.string	"xgv_flags"
.LASF143:
	.string	"xio_lines"
.LASF242:
	.string	"exp_acc"
.LASF45:
	.string	"interpreter"
.LASF74:
	.string	"gp_hv"
.LASF91:
	.string	"xpv_pv"
.LASF116:
	.string	"XPVGV"
.LASF207:
	.string	"value"
.LASF221:
	.string	"Perl_scan_oct"
.LASF199:
	.string	"Perl_cast_ulong"
.LASF23:
	.string	"op_private"
.LASF195:
	.string	"hek_hash"
.LASF29:
	.string	"cop_line"
.LASF117:
	.string	"xpvgv"
.LASF177:
	.string	"line_t"
.LASF11:
	.string	"size_t"
.LASF88:
	.string	"mg_obj"
.LASF133:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF150:
	.string	"xio_fmt_gv"
.LASF197:
	.string	"hek_key"
.LASF68:
	.string	"program"
.LASF243:
	.string	"seen_dp"
.LASF71:
	.string	"gp_io"
.LASF114:
	.string	"xhv_pmroot"
.LASF106:
	.string	"XPVHV"
.LASF161:
	.string	"svt_clear"
.LASF142:
	.string	"xio_dirpu"
.LASF107:
	.string	"xpvhv"
.LASF241:
	.string	"exp_adjust"
.LASF208:
	.string	"value_nv"
.LASF42:
	.string	"op_pmdynflags"
.LASF163:
	.string	"svt_copy"
.LASF204:
	.string	"start"
.LASF93:
	.string	"xpv_len"
.LASF8:
	.string	"char"
.LASF138:
	.string	"XPVIO"
.LASF167:
	.string	"any_iv"
.LASF174:
	.string	"stashes"
.LASF228:
	.string	"max_mod_10"
.LASF210:
	.string	"allow_underscores"
.LASF70:
	.string	"gp_refcnt"
.LASF65:
	.string	"lastparen"
.LASF139:
	.string	"xpvio"
.LASF57:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF60:
	.string	"sublen"
.LASF35:
	.string	"op_last"
.LASF193:
	.string	"hent_hek"
.LASF67:
	.string	"reganch"
.LASF227:
	.string	"max_div_10"
.LASF213:
	.string	"max_div_16"
.LASF58:
	.string	"subbeg"
.LASF176:
	.string	"proto_perl"
.LASF82:
	.string	"magic"
.LASF192:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF108:
	.string	"xhv_array"
.LASF147:
	.string	"xio_top_name"
.LASF66:
	.string	"lastcloseparen"
.LASF184:
	.string	"next_off"
.LASF84:
	.string	"mg_virtual"
.LASF30:
	.string	"cop_warnings"
.LASF32:
	.string	"PMOP"
.LASF219:
	.string	"Perl_scan_bin"
.LASF15:
	.string	"STRLEN"
.LASF218:
	.string	"digit"
.LASF200:
	.string	"Perl_cast_i32"
.LASF202:
	.string	"Perl_cast_uv"
.LASF205:
	.string	"len_p"
.LASF115:
	.string	"xhv_name"
.LASF89:
	.string	"mg_ptr"
.LASF146:
	.string	"xio_lines_left"
.LASF140:
	.string	"xio_ifp"
.LASF24:
	.string	"cop_label"
.LASF226:
	.string	"valuep"
.LASF46:
	.string	"broiled"
.LASF63:
	.string	"prelen"
.LASF16:
	.string	"op_next"
.LASF75:
	.string	"gp_egv"
.LASF52:
	.string	"startp"
.LASF240:
	.string	"seen_digit"
.LASF236:
	.string	"Perl_my_atof"
.LASF47:
	.string	"sv_any"
.LASF25:
	.string	"cop_stash"
.LASF43:
	.string	"op_pmstash"
.LASF144:
	.string	"xio_page"
.LASF189:
	.string	"xiou_any"
.LASF201:
	.string	"Perl_cast_iv"
.LASF172:
	.string	"CLONE_PARAMS"
.LASF152:
	.string	"xio_bottom_gv"
.LASF171:
	.string	"any_dxptr"
.LASF81:
	.string	"MAGIC"
.LASF160:
	.string	"svt_len"
.LASF250:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF222:
	.string	"Perl_scan_hex"
.LASF49:
	.string	"sv_flags"
.LASF44:
	.string	"PerlInterpreter"
.LASF103:
	.string	"xav_alloc"
.LASF113:
	.string	"xhv_eiter"
.LASF5:
	.string	"short int"
.LASF72:
	.string	"gp_form"
.LASF34:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF127:
	.string	"xcv_start"
.LASF137:
	.string	"xcv_outside_seq"
.LASF96:
	.string	"xav_array"
.LASF153:
	.string	"xio_subprocess"
.LASF59:
	.string	"offsets"
.LASF235:
	.string	"negative"
.LASF99:
	.string	"xof_off"
.LASF232:
	.string	"skip_value"
.LASF211:
	.string	"overflowed"
.LASF253:
	.string	"Perl_huge"
.LASF196:
	.string	"hek_len"
.LASF156:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF125:
	.string	"xpvcv"
.LASF61:
	.string	"refcnt"
.LASF104:
	.string	"xav_arylen"
.LASF245:
	.string	"sig_digits"
.LASF126:
	.string	"xcv_stash"
.LASF121:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF128:
	.string	"xcv_root"
.LASF51:
	.string	"regexp"
.LASF214:
	.string	"hexdigit"
.LASF194:
	.string	"hent_val"
.LASF135:
	.string	"xcv_outside"
.LASF2:
	.string	"unsigned int"
.LASF40:
	.string	"op_pmflags"
.LASF110:
	.string	"xhv_max"
.LASF134:
	.string	"xcv_padlist"
.LASF101:
	.string	"xmg_magic"
.LASF220:
	.string	"retlen"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF166:
	.string	"any_i32"
.LASF159:
	.string	"svt_set"
.LASF249:
	.string	"PL_hexdigit"
.LASF198:
	.string	"float"
.LASF149:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF179:
	.string	"__dirstream"
.LASF168:
	.string	"any_long"
.LASF209:
	.string	"max_div_2"
.LASF33:
	.string	"pmop"
.LASF97:
	.string	"xav_fill"
.LASF37:
	.string	"op_pmreplstart"
.LASF238:
	.string	"orig"
.LASF217:
	.string	"max_div_8"
.LASF216:
	.string	"Perl_grok_oct"
.LASF183:
	.string	"type"
.LASF0:
	.string	"unsigned char"
.LASF112:
	.string	"xhv_riter"
.LASF119:
	.string	"xgv_gp"
.LASF38:
	.string	"op_pmnext"
.LASF48:
	.string	"sv_refcnt"
.LASF100:
	.string	"xnv_nv"
.LASF136:
	.string	"xcv_flags"
.LASF78:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF86:
	.string	"mg_type"
.LASF36:
	.string	"op_pmreplroot"
.LASF164:
	.string	"svt_dup"
.LASF225:
	.string	"Perl_grok_number"
.LASF92:
	.string	"xpv_cur"
.LASF234:
	.string	"power"
.LASF165:
	.string	"any_ptr"
.LASF94:
	.string	"XPVAV"
.LASF162:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF191:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"op_pmpermflags"
.LASF95:
	.string	"xpvav"
.LASF102:
	.string	"xmg_stash"
.LASF244:
	.string	"old_digit"
.LASF230:
	.string	"sawinf"
.LASF73:
	.string	"gp_av"
.LASF77:
	.string	"gp_cvgen"
.LASF79:
	.string	"gp_line"
.LASF62:
	.string	"minlen"
.LASF130:
	.string	"xcv_xsubany"
.LASF187:
	.string	"cv_flags_t"
.LASF223:
	.string	"Perl_grok_numeric_radix"
.LASF141:
	.string	"xio_ofp"
.LASF237:
	.string	"Perl_my_atof2"
.LASF215:
	.string	"redo"
.LASF54:
	.string	"regstclass"
.LASF148:
	.string	"xio_top_gv"
.LASF64:
	.string	"nparens"
.LASF229:
	.string	"numtype"
.LASF90:
	.string	"mg_len"
.LASF170:
	.string	"any_dptr"
.LASF120:
	.string	"xgv_name"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
