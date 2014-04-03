	.file	"simplify-rtx.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 simplify-rtx.c -mtune=generic -march=x86-64 -g
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
	.type	neg_const_int, @function
neg_const_int:
.LFB2:
	.file 1 "simplify-rtx.c"
	.loc 1 118 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movq	%rsi, -16(%rbp)	# i, i
	.loc 1 119 0
	movq	-16(%rbp), %rax	# i, tmp64
	movq	8(%rax), %rax	# i_1(D)->fld[0].rtwint, D.14080
	negq	%rax	# D.14080
	movq	%rax, %rdx	# D.14080, D.14080
	movl	-4(%rbp), %eax	# mode, tmp65
	movl	%eax, %esi	# tmp65,
	movq	%rdx, %rdi	# D.14080,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.14080,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	.loc 1 120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	neg_const_int, .-neg_const_int
	.globl	simplify_gen_binary
	.type	simplify_gen_binary, @function
simplify_gen_binary:
.LFB3:
	.loc 1 131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	movl	%esi, -24(%rbp)	# mode, mode
	movq	%rdx, -32(%rbp)	# op0, op0
	movq	%rcx, -40(%rbp)	# op1, op1
	.loc 1 135 0
	movl	-20(%rbp), %eax	# code, code.0
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14083
	cmpb	$99, %al	#, D.14083
	jne	.L4	#,
	.loc 1 136 0
	movq	-40(%rbp), %rdx	# op1, tmp65
	movq	-32(%rbp), %rax	# op0, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.14084
	je	.L4	#,
	.loc 1 137 0
	movq	-32(%rbp), %rax	# op0, tmp67
	movq	%rax, -8(%rbp)	# tmp67, tem
	movq	-40(%rbp), %rax	# op1, tmp68
	movq	%rax, -32(%rbp)	# tmp68, op0
	movq	-8(%rbp), %rax	# tem, tmp69
	movq	%rax, -40(%rbp)	# tmp69, op1
.L4:
	.loc 1 140 0
	movq	-40(%rbp), %rcx	# op1, tmp70
	movq	-32(%rbp), %rdx	# op0, tmp71
	movl	-24(%rbp), %esi	# mode, tmp72
	movl	-20(%rbp), %eax	# code, tmp73
	movl	%eax, %edi	# tmp73,
	call	simplify_binary_operation	#
	movq	%rax, -8(%rbp)	# tmp74, tem
	.loc 1 141 0
	cmpq	$0, -8(%rbp)	#, tem
	je	.L5	#,
	.loc 1 142 0
	movq	-8(%rbp), %rax	# tem, D.14082
	jmp	.L6	#
.L5:
	.loc 1 147 0
	cmpl	$75, -20(%rbp)	#, code
	je	.L7	#,
	.loc 1 147 0 is_stmt 0 discriminator 1
	cmpl	$76, -20(%rbp)	#, code
	jne	.L8	#,
.L7:
	.loc 1 149 0 is_stmt 1
	movq	-40(%rbp), %rcx	# op1, tmp75
	movq	-32(%rbp), %rdx	# op0, tmp76
	movl	-24(%rbp), %esi	# mode, tmp77
	movl	-20(%rbp), %eax	# code, tmp78
	movl	$1, %r8d	#,
	movl	%eax, %edi	# tmp78,
	call	simplify_plus_minus	#
	movq	%rax, -8(%rbp)	# tmp79, tem
	.loc 1 150 0
	cmpq	$0, -8(%rbp)	#, tem
	je	.L8	#,
	.loc 1 151 0
	movq	-8(%rbp), %rax	# tem, D.14082
	jmp	.L6	#
.L8:
	.loc 1 154 0
	movq	-40(%rbp), %rcx	# op1, tmp80
	movq	-32(%rbp), %rdx	# op0, tmp81
	movl	-24(%rbp), %esi	# mode, tmp82
	movl	-20(%rbp), %eax	# code, tmp83
	movl	%eax, %edi	# tmp83,
	call	gen_rtx_fmt_ee	#
.L6:
	.loc 1 155 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	simplify_gen_binary, .-simplify_gen_binary
	.globl	avoid_constant_pool_reference
	.type	avoid_constant_pool_reference, @function
avoid_constant_pool_reference:
.LFB4:
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	.loc 1 166 0
	movq	-40(%rbp), %rax	# x, tmp70
	movzwl	(%rax), %eax	# x_3(D)->code, D.14086
	cmpw	$66, %ax	#, D.14086
	je	.L10	#,
	.loc 1 167 0
	movq	-40(%rbp), %rax	# x, D.14085
	jmp	.L11	#
.L10:
	.loc 1 168 0
	movq	-40(%rbp), %rax	# x, tmp71
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, tmp72
	movq	%rax, -16(%rbp)	# tmp72, addr
	.loc 1 170 0
	movq	-16(%rbp), %rax	# addr, tmp73
	movzwl	(%rax), %eax	# addr_6->code, D.14086
	cmpw	$68, %ax	#, D.14086
	jne	.L12	#,
	.loc 1 171 0
	movq	-16(%rbp), %rax	# addr, tmp74
	movzbl	3(%rax), %eax	# *addr_6, D.14087
	andl	$4, %eax	#, D.14087
	testb	%al, %al	# D.14087
	jne	.L13	#,
.L12:
	.loc 1 172 0
	movq	-40(%rbp), %rax	# x, D.14085
	jmp	.L11	#
.L13:
	.loc 1 174 0
	movq	-16(%rbp), %rax	# addr, tmp75
	movq	%rax, %rdi	# tmp75,
	call	get_pool_constant	#
	movq	%rax, -8(%rbp)	# tmp76, c
	.loc 1 175 0
	movq	-16(%rbp), %rax	# addr, tmp77
	movq	%rax, %rdi	# tmp77,
	call	get_pool_mode	#
	movl	%eax, -20(%rbp)	# tmp78, cmode
	.loc 1 180 0
	movq	-40(%rbp), %rax	# x, tmp79
	movzbl	2(%rax), %eax	# x_3(D)->mode, D.14087
	movzbl	%al, %eax	# D.14087, D.14088
	cmpl	-20(%rbp), %eax	# cmode, D.14088
	je	.L14	#,
	.loc 1 182 0
	movq	-40(%rbp), %rax	# x, tmp80
	movzbl	2(%rax), %eax	# x_3(D)->mode, D.14087
	movzbl	%al, %eax	# D.14087, D.14089
	movl	-20(%rbp), %edx	# cmode, tmp81
	movq	-8(%rbp), %rsi	# c, tmp82
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.14089,
	call	simplify_subreg	#
	movq	%rax, -8(%rbp)	# tmp83, c
	.loc 1 183 0
	cmpq	$0, -8(%rbp)	#, c
	je	.L15	#,
	.loc 1 183 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# c, iftmp.1
	jmp	.L16	#
.L15:
	.loc 1 183 0 discriminator 2
	movq	-40(%rbp), %rax	# x, iftmp.1
.L16:
	.loc 1 183 0 discriminator 3
	jmp	.L11	#
.L14:
	.loc 1 186 0 is_stmt 1
	movq	-8(%rbp), %rax	# c, D.14085
.L11:
	.loc 1 187 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	avoid_constant_pool_reference, .-avoid_constant_pool_reference
	.globl	simplify_gen_unary
	.type	simplify_gen_unary, @function
simplify_gen_unary:
.LFB5:
	.loc 1 198 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	movl	%esi, -24(%rbp)	# mode, mode
	movq	%rdx, -32(%rbp)	# op, op
	movl	%ecx, -36(%rbp)	# op_mode, op_mode
	.loc 1 202 0
	movl	-36(%rbp), %ecx	# op_mode, tmp61
	movq	-32(%rbp), %rdx	# op, tmp62
	movl	-24(%rbp), %esi	# mode, tmp63
	movl	-20(%rbp), %eax	# code, tmp64
	movl	%eax, %edi	# tmp64,
	call	simplify_unary_operation	#
	movq	%rax, -8(%rbp)	# tmp65, tem
	cmpq	$0, -8(%rbp)	#, tem
	je	.L18	#,
	.loc 1 203 0
	movq	-8(%rbp), %rax	# tem, D.14090
	jmp	.L19	#
.L18:
	.loc 1 205 0
	movq	-32(%rbp), %rdx	# op, tmp66
	movl	-24(%rbp), %ecx	# mode, tmp67
	movl	-20(%rbp), %eax	# code, tmp68
	movl	%ecx, %esi	# tmp67,
	movl	%eax, %edi	# tmp68,
	call	gen_rtx_fmt_e	#
.L19:
	.loc 1 206 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	simplify_gen_unary, .-simplify_gen_unary
	.globl	simplify_gen_ternary
	.type	simplify_gen_ternary, @function
simplify_gen_ternary:
.LFB6:
	.loc 1 215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	movl	%esi, -24(%rbp)	# mode, mode
	movl	%edx, -28(%rbp)	# op0_mode, op0_mode
	movq	%rcx, -40(%rbp)	# op0, op0
	movq	%r8, -48(%rbp)	# op1, op1
	movq	%r9, -56(%rbp)	# op2, op2
	.loc 1 219 0
	movq	-56(%rbp), %r8	# op2, tmp61
	movq	-48(%rbp), %rdi	# op1, tmp62
	movq	-40(%rbp), %rcx	# op0, tmp63
	movl	-28(%rbp), %edx	# op0_mode, tmp64
	movl	-24(%rbp), %esi	# mode, tmp65
	movl	-20(%rbp), %eax	# code, tmp66
	movq	%r8, %r9	# tmp61,
	movq	%rdi, %r8	# tmp62,
	movl	%eax, %edi	# tmp66,
	call	simplify_ternary_operation	#
	movq	%rax, -8(%rbp)	# tmp67, tem
	cmpq	$0, -8(%rbp)	#, tem
	je	.L21	#,
	.loc 1 221 0
	movq	-8(%rbp), %rax	# tem, D.14091
	jmp	.L22	#
.L21:
	.loc 1 223 0
	movq	-56(%rbp), %rdi	# op2, tmp68
	movq	-48(%rbp), %rcx	# op1, tmp69
	movq	-40(%rbp), %rdx	# op0, tmp70
	movl	-24(%rbp), %esi	# mode, tmp71
	movl	-20(%rbp), %eax	# code, tmp72
	movq	%rdi, %r8	# tmp68,
	movl	%eax, %edi	# tmp72,
	call	gen_rtx_fmt_eee	#
.L22:
	.loc 1 224 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	simplify_gen_ternary, .-simplify_gen_ternary
	.globl	simplify_gen_relational
	.type	simplify_gen_relational, @function
simplify_gen_relational:
.LFB7:
	.loc 1 236 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	movl	%esi, -24(%rbp)	# mode, mode
	movl	%edx, -28(%rbp)	# cmp_mode, cmp_mode
	movq	%rcx, -40(%rbp)	# op0, op0
	movq	%r8, -48(%rbp)	# op1, op1
	.loc 1 239 0
	movq	-48(%rbp), %rcx	# op1, tmp62
	movq	-40(%rbp), %rdx	# op0, tmp63
	movl	-28(%rbp), %esi	# cmp_mode, tmp64
	movl	-20(%rbp), %eax	# code, tmp65
	movl	%eax, %edi	# tmp65,
	call	simplify_relational_operation	#
	movq	%rax, -8(%rbp)	# tmp66, tem
	cmpq	$0, -8(%rbp)	#, tem
	je	.L24	#,
	.loc 1 240 0
	movq	-8(%rbp), %rax	# tem, D.14092
	jmp	.L25	#
.L24:
	.loc 1 243 0
	movq	-48(%rbp), %rdx	# op1, tmp67
	movq	-40(%rbp), %rax	# op0, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.14093
	je	.L26	#,
	.loc 1 244 0
	movq	-40(%rbp), %rax	# op0, tmp69
	movq	%rax, -8(%rbp)	# tmp69, tem
	movq	-48(%rbp), %rax	# op1, tmp70
	movq	%rax, -40(%rbp)	# tmp70, op0
	movq	-8(%rbp), %rax	# tem, tmp71
	movq	%rax, -48(%rbp)	# tmp71, op1
	movl	-20(%rbp), %eax	# code, tmp72
	movl	%eax, %edi	# tmp72,
	call	swap_condition	#
	movl	%eax, -20(%rbp)	# tmp73, code
.L26:
	.loc 1 246 0
	movq	-48(%rbp), %rcx	# op1, tmp74
	movq	-40(%rbp), %rdx	# op0, tmp75
	movl	-24(%rbp), %esi	# mode, tmp76
	movl	-20(%rbp), %eax	# code, tmp77
	movl	%eax, %edi	# tmp77,
	call	gen_rtx_fmt_ee	#
.L25:
	.loc 1 247 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	simplify_gen_relational, .-simplify_gen_relational
	.globl	simplify_replace_rtx
	.type	simplify_replace_rtx, @function
simplify_replace_rtx:
.LFB8:
	.loc 1 257 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)	# x, x
	movq	%rsi, -96(%rbp)	# old, old
	movq	%rdx, -104(%rbp)	# new, new
	.loc 1 258 0
	movq	-88(%rbp), %rax	# x, tmp109
	movzwl	(%rax), %eax	# x_8(D)->code, D.14095
	movzwl	%ax, %eax	# D.14095, tmp110
	movl	%eax, -76(%rbp)	# tmp110, code
	.loc 1 259 0
	movq	-88(%rbp), %rax	# x, tmp111
	movzbl	2(%rax), %eax	# x_8(D)->mode, D.14096
	movzbl	%al, %eax	# D.14096, tmp112
	movl	%eax, -72(%rbp)	# tmp112, mode
	.loc 1 265 0
	movq	-88(%rbp), %rax	# x, tmp113
	cmpq	-96(%rbp), %rax	# old, tmp113
	jne	.L28	#,
	.loc 1 266 0
	movq	-104(%rbp), %rax	# new, D.14094
	jmp	.L29	#
.L28:
	.loc 1 268 0
	movl	-76(%rbp), %eax	# code, code.2
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14097
	movsbl	%al, %eax	# D.14097, D.14098
	cmpl	$60, %eax	#, D.14098
	je	.L31	#,
	cmpl	$60, %eax	#, D.14098
	jg	.L32	#,
	cmpl	$50, %eax	#, D.14098
	je	.L33	#,
	cmpl	$51, %eax	#, D.14098
	je	.L34	#,
	cmpl	$49, %eax	#, D.14098
	je	.L35	#,
	jmp	.L30	#
.L32:
	cmpl	$99, %eax	#, D.14098
	je	.L33	#,
	cmpl	$120, %eax	#, D.14098
	je	.L36	#,
	cmpl	$98, %eax	#, D.14098
	je	.L34	#,
	jmp	.L30	#
.L35:
.LBB2:
	.loc 1 272 0
	movq	-88(%rbp), %rax	# x, tmp115
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movzbl	2(%rax), %eax	# _19->mode, D.14096
	movzbl	%al, %eax	# D.14096, tmp116
	movl	%eax, -68(%rbp)	# tmp116, op_mode
	.loc 1 273 0
	movq	-88(%rbp), %rax	# x, tmp117
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	.loc 1 274 0
	cmpq	-96(%rbp), %rax	# old, D.14099
	je	.L37	#,
	.loc 1 274 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp118
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp119
	movq	-96(%rbp), %rcx	# old, tmp120
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	jmp	.L38	#
.L37:
	.loc 1 274 0 discriminator 2
	movq	-104(%rbp), %rax	# new, iftmp.3
.L38:
	.loc 1 273 0 is_stmt 1
	movq	%rax, -56(%rbp)	# iftmp.3, op
	.loc 1 276 0
	movl	-68(%rbp), %ecx	# op_mode, tmp121
	movq	-56(%rbp), %rdx	# op, tmp122
	movl	-72(%rbp), %esi	# mode, tmp123
	movl	-76(%rbp), %eax	# code, tmp124
	movl	%eax, %edi	# tmp124,
	call	simplify_gen_unary	#
	jmp	.L29	#
.L33:
.LBE2:
	.loc 1 282 0
	movq	-88(%rbp), %rax	# x, tmp125
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp126
	movq	-96(%rbp), %rcx	# old, tmp127
	movq	%rcx, %rsi	# tmp127,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	movq	%rax, %rbx	#, D.14099
	movq	-88(%rbp), %rax	# x, tmp128
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp129
	movq	-96(%rbp), %rcx	# old, tmp130
	movq	%rcx, %rsi	# tmp130,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	movq	%rax, %rdx	#, D.14099
	.loc 1 281 0
	movl	-72(%rbp), %esi	# mode, tmp131
	movl	-76(%rbp), %eax	# code, tmp132
	movq	%rbx, %rcx	# D.14099,
	movl	%eax, %edi	# tmp132,
	call	simplify_gen_binary	#
	jmp	.L29	#
.L31:
.LBB3:
	.loc 1 287 0
	movq	-88(%rbp), %rax	# x, tmp133
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movzbl	2(%rax), %eax	# _33->mode, D.14096
	.loc 1 289 0
	testb	%al, %al	# D.14096
	je	.L39	#,
	.loc 1 288 0
	movq	-88(%rbp), %rax	# x, tmp134
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movzbl	2(%rax), %eax	# _35->mode, D.14096
	.loc 1 289 0
	movzbl	%al, %eax	# D.14096, iftmp.4
	jmp	.L40	#
.L39:
	.loc 1 289 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp135
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtx, D.14099
	movzbl	2(%rax), %eax	# _38->mode, D.14096
	movzbl	%al, %eax	# D.14096, iftmp.4
.L40:
	.loc 1 287 0 is_stmt 1
	movl	%eax, -64(%rbp)	# iftmp.4, op_mode
	.loc 1 290 0
	movq	-88(%rbp), %rax	# x, tmp136
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp137
	movq	-96(%rbp), %rcx	# old, tmp138
	movq	%rcx, %rsi	# tmp138,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	movq	%rax, -48(%rbp)	# tmp139, op0
	.loc 1 291 0
	movq	-88(%rbp), %rax	# x, tmp140
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp141
	movq	-96(%rbp), %rcx	# old, tmp142
	movq	%rcx, %rsi	# tmp142,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	movq	%rax, -40(%rbp)	# tmp143, op1
	.loc 1 294 0
	cmpl	$0, -64(%rbp)	#, op_mode
	jne	.L41	#,
	.loc 1 297 0 discriminator 1
	movq	-48(%rbp), %rax	# op0, tmp144
	movzbl	2(%rax), %eax	# op0_43->mode, D.14096
	.loc 1 294 0 discriminator 1
	testb	%al, %al	# D.14096
	je	.L42	#,
	.loc 1 298 0
	movq	-48(%rbp), %rax	# op0, tmp145
	movzbl	2(%rax), %eax	# op0_43->mode, D.14096
	.loc 1 294 0
	movzbl	%al, %eax	# D.14096, iftmp.6
	jmp	.L44	#
.L42:
	.loc 1 299 0 discriminator 3
	movq	-40(%rbp), %rax	# op1, tmp146
	movzbl	2(%rax), %eax	# op1_45->mode, D.14096
	.loc 1 294 0 discriminator 3
	movzbl	%al, %eax	# D.14096, iftmp.6
	jmp	.L44	#
.L41:
	.loc 1 294 0 is_stmt 0 discriminator 2
	movl	-64(%rbp), %eax	# op_mode, iftmp.5
.L44:
	.loc 1 293 0 is_stmt 1
	movq	-40(%rbp), %rcx	# op1, tmp147
	movq	-48(%rbp), %rdx	# op0, tmp148
	movl	-72(%rbp), %esi	# mode, tmp149
	movl	-76(%rbp), %edi	# code, tmp150
	movq	%rcx, %r8	# tmp147,
	movq	%rdx, %rcx	# tmp148,
	movl	%eax, %edx	# iftmp.5,
	call	simplify_gen_relational	#
	jmp	.L29	#
.L34:
.LBE3:
.LBB4:
	.loc 1 306 0
	movq	-88(%rbp), %rax	# x, tmp151
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movzbl	2(%rax), %eax	# _54->mode, D.14096
	movzbl	%al, %eax	# D.14096, tmp152
	movl	%eax, -60(%rbp)	# tmp152, op_mode
	.loc 1 307 0
	movq	-88(%rbp), %rax	# x, tmp153
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp154
	movq	-96(%rbp), %rcx	# old, tmp155
	movq	%rcx, %rsi	# tmp155,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	movq	%rax, -32(%rbp)	# tmp156, op0
	.loc 1 310 0
	movq	-88(%rbp), %rax	# x, tmp157
	movq	24(%rax), %rax	# x_8(D)->fld[2].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp158
	movq	-96(%rbp), %rcx	# old, tmp159
	movq	%rcx, %rsi	# tmp159,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	movq	%rax, %rbx	#, D.14099
	movq	-88(%rbp), %rax	# x, tmp160
	movq	16(%rax), %rax	# x_8(D)->fld[1].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp161
	movq	-96(%rbp), %rcx	# old, tmp162
	movq	%rcx, %rsi	# tmp162,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	movq	%rax, %rcx	#, D.14099
	cmpl	$0, -60(%rbp)	#, op_mode
	jne	.L45	#,
	.loc 1 313 0
	movq	-32(%rbp), %rax	# op0, tmp163
	movzbl	2(%rax), %eax	# op0_58->mode, D.14096
	.loc 1 310 0
	movzbl	%al, %eax	# D.14096, iftmp.7
	jmp	.L46	#
.L45:
	.loc 1 310 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# op_mode, iftmp.7
.L46:
	.loc 1 309 0 is_stmt 1
	movq	-32(%rbp), %rdx	# op0, tmp164
	movl	-72(%rbp), %esi	# mode, tmp165
	movl	-76(%rbp), %edi	# code, tmp166
	movq	%rbx, %r9	# D.14099,
	movq	%rcx, %r8	# D.14099,
	movq	%rdx, %rcx	# tmp164,
	movl	%eax, %edx	# iftmp.7,
	call	simplify_gen_ternary	#
	jmp	.L29	#
.L36:
.LBE4:
	.loc 1 321 0
	cmpl	$63, -76(%rbp)	#, code
	jne	.L47	#,
.LBB5:
	.loc 1 324 0
	movq	-88(%rbp), %rax	# x, tmp167
	movl	16(%rax), %r12d	# x_8(D)->fld[1].rtuint, D.14100
	.loc 1 327 0
	movq	-88(%rbp), %rax	# x, tmp168
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movzbl	2(%rax), %eax	# _68->mode, D.14096
	.loc 1 324 0
	movzbl	%al, %ebx	# D.14096, D.14101
	movq	-88(%rbp), %rax	# x, tmp169
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp170
	movq	-96(%rbp), %rcx	# old, tmp171
	movq	%rcx, %rsi	# tmp171,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	movq	%rax, %rsi	#, D.14099
	movq	-88(%rbp), %rax	# x, tmp172
	movzbl	2(%rax), %eax	# x_8(D)->mode, D.14096
	movzbl	%al, %eax	# D.14096, D.14101
	movl	%r12d, %ecx	# D.14100,
	movl	%ebx, %edx	# D.14101,
	movl	%eax, %edi	# D.14101,
	call	simplify_gen_subreg	#
	movq	%rax, -24(%rbp)	# tmp173, exp
	.loc 1 329 0
	cmpq	$0, -24(%rbp)	#, exp
	je	.L47	#,
	.loc 1 330 0
	movq	-24(%rbp), %rax	# exp, tmp174
	movq	%rax, -88(%rbp)	# tmp174, x
.L47:
.LBE5:
	.loc 1 332 0
	movq	-88(%rbp), %rax	# x, D.14094
	jmp	.L29	#
.L30:
	.loc 1 335 0
	movq	-88(%rbp), %rax	# x, tmp175
	movzwl	(%rax), %eax	# x_8(D)->code, D.14095
	cmpw	$66, %ax	#, D.14095
	jne	.L48	#,
	.loc 1 337 0
	movq	-88(%rbp), %rax	# x, tmp176
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.14099
	movq	-104(%rbp), %rdx	# new, tmp177
	movq	-96(%rbp), %rcx	# old, tmp178
	movq	%rcx, %rsi	# tmp178,
	movq	%rax, %rdi	# D.14099,
	call	simplify_replace_rtx	#
	movq	%rax, %rdx	#, D.14099
	.loc 1 336 0
	movq	-88(%rbp), %rax	# x, tmp179
	movq	%rdx, %rsi	# D.14099,
	movq	%rax, %rdi	# tmp179,
	call	replace_equiv_address_nv	#
	jmp	.L29	#
.L48:
	.loc 1 341 0
	movq	-88(%rbp), %rax	# x, D.14094
.L29:
	.loc 1 344 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	simplify_replace_rtx, .-simplify_replace_rtx
	.section	.rodata
.LC0:
	.string	"simplify-rtx.c"
	.text
	.type	simplify_unary_real, @function
simplify_unary_real:
.LFB9:
	.loc 1 363 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -88(%rbp)	# p, p
	.loc 1 366 0
	movq	-88(%rbp), %rax	# p, tmp72
	movq	%rax, -72(%rbp)	# tmp72, args
.LBB6:
	.loc 1 369 0
	movq	-72(%rbp), %rax	# args, tmp73
	movq	(%rax), %rax	# args_3->operand, D.14103
	leaq	16(%rax), %rcx	#, D.14104
	leaq	-32(%rbp), %rax	#, tmp74
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.14104,
	movq	%rax, %rdi	# tmp74,
	call	memcpy	#
	movq	-32(%rbp), %rax	# u.d, tmp75
	movq	%rax, -64(%rbp)	# tmp75, d
	movq	-24(%rbp), %rax	# u.d, tmp76
	movq	%rax, -56(%rbp)	# tmp76, d
	movq	-16(%rbp), %rax	# u.d, tmp77
	movq	%rax, -48(%rbp)	# tmp77, d
.LBE6:
	.loc 1 371 0
	movq	-72(%rbp), %rax	# args, tmp78
	movzbl	24(%rax), %eax	# args_3->want_integer, D.14105
	testb	%al, %al	# D.14105
	je	.L50	#,
.LBB7:
	.loc 1 375 0
	movq	-72(%rbp), %rax	# args, tmp79
	movl	20(%rax), %eax	# args_3->code, D.14106
	cmpl	$126, %eax	#, D.14106
	je	.L52	#,
	cmpl	$128, %eax	#, D.14106
	je	.L53	#,
	jmp	.L69	#
.L52:
	.loc 1 377 0
	movq	-64(%rbp), %rax	# d, tmp80
	movq	%rax, (%rsp)	# tmp80,
	movq	-56(%rbp), %rax	# d, tmp81
	movq	%rax, 8(%rsp)	# tmp81,
	movq	-48(%rbp), %rax	# d, tmp82
	movq	%rax, 16(%rsp)	# tmp82,
	call	efixi	#
	movq	%rax, -80(%rbp)	# tmp83, i
	jmp	.L54	#
.L53:
	.loc 1 378 0
	movq	-64(%rbp), %rax	# d, tmp84
	movq	%rax, (%rsp)	# tmp84,
	movq	-56(%rbp), %rax	# d, tmp85
	movq	%rax, 8(%rsp)	# tmp85,
	movq	-48(%rbp), %rax	# d, tmp86
	movq	%rax, 16(%rsp)	# tmp86,
	call	efixui	#
	movq	%rax, -80(%rbp)	# D.14107, i
	jmp	.L54	#
.L69:
	.loc 1 380 0
	movl	$__FUNCTION__.10741, %edx	#,
	movl	$380, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L54:
	.loc 1 382 0
	movq	-72(%rbp), %rax	# args, tmp87
	movl	16(%rax), %edx	# args_3->mode, D.14108
	movq	-80(%rbp), %rax	# i, tmp88
	movl	%edx, %esi	# D.14108,
	movq	%rax, %rdi	# tmp88,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.14109,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-72(%rbp), %rdx	# args, tmp89
	movq	%rax, 8(%rdx)	# D.14103, args_3->result
.LBE7:
	jmp	.L49	#
.L50:
	.loc 1 386 0
	movq	-72(%rbp), %rax	# args, tmp90
	movl	20(%rax), %eax	# args_3->code, D.14106
	subl	$77, %eax	#, tmp91
	cmpl	$53, %eax	#, tmp91
	ja	.L56	#,
	movl	%eax, %eax	# tmp91, tmp92
	movq	.L58(,%rax,8), %rax	#, tmp93
	jmp	*%rax	# tmp93
	.section	.rodata
	.align 8
	.align 4
.L58:
	.quad	.L57
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L70
	.quad	.L60
	.quad	.L56
	.quad	.L61
	.quad	.L56
	.quad	.L62
	.quad	.L63
	.quad	.L64
	.text
.L64:
	.loc 1 390 0
	movq	-72(%rbp), %rax	# args, tmp94
	movq	$0, 8(%rax)	#, args_3->result
	jmp	.L49	#
.L63:
	.loc 1 393 0
	movq	-64(%rbp), %rax	# d, tmp95
	movq	%rax, (%rsp)	# tmp95,
	movq	-56(%rbp), %rax	# d, tmp96
	movq	%rax, 8(%rsp)	# tmp96,
	movq	-48(%rbp), %rax	# d, tmp97
	movq	%rax, 16(%rsp)	# tmp97,
	call	target_negative	#
	testl	%eax, %eax	# D.14110
	je	.L67	#,
	.loc 1 393 0 is_stmt 0 discriminator 1
	leaq	-64(%rbp), %rax	#, tmp98
	movq	-64(%rbp), %rdx	# d, tmp99
	movq	%rdx, (%rsp)	# tmp99,
	movq	-56(%rbp), %rdx	# d, tmp100
	movq	%rdx, 8(%rsp)	# tmp100,
	movq	-48(%rbp), %rdx	# d, tmp101
	movq	%rdx, 16(%rsp)	# tmp101,
	movq	%rax, %rdi	# tmp98,
	call	ereal_negate	#
.L67:
	.loc 1 393 0 discriminator 3
	jmp	.L68	#
.L57:
	.loc 1 394 0 is_stmt 1
	leaq	-128(%rbp), %rax	#, tmp102
	movq	-64(%rbp), %rdx	# d, tmp103
	movq	%rdx, (%rsp)	# tmp103,
	movq	-56(%rbp), %rdx	# d, tmp104
	movq	%rdx, 8(%rsp)	# tmp104,
	movq	-48(%rbp), %rdx	# d, tmp105
	movq	%rdx, 16(%rsp)	# tmp105,
	movq	%rax, %rdi	# tmp102,
	call	ereal_negate	#
	movq	-128(%rbp), %rax	#, tmp106
	movq	%rax, -64(%rbp)	# tmp106, d
	movq	-120(%rbp), %rax	#, tmp107
	movq	%rax, -56(%rbp)	# tmp107, d
	movq	-112(%rbp), %rax	#, tmp108
	movq	%rax, -48(%rbp)	# tmp108, d
	jmp	.L68	#
.L60:
	.loc 1 395 0
	movq	-72(%rbp), %rax	# args, tmp109
	movl	16(%rax), %edx	# args_3->mode, D.14108
	leaq	-128(%rbp), %rax	#, tmp110
	movq	-64(%rbp), %rcx	# d, tmp111
	movq	%rcx, (%rsp)	# tmp111,
	movq	-56(%rbp), %rcx	# d, tmp112
	movq	%rcx, 8(%rsp)	# tmp112,
	movq	-48(%rbp), %rcx	# d, tmp113
	movq	%rcx, 16(%rsp)	# tmp113,
	movl	%edx, %esi	# D.14108,
	movq	%rax, %rdi	# tmp110,
	call	real_value_truncate	#
	movq	-128(%rbp), %rax	#, tmp114
	movq	%rax, -64(%rbp)	# tmp114, d
	movq	-120(%rbp), %rax	#, tmp115
	movq	%rax, -56(%rbp)	# tmp115, d
	movq	-112(%rbp), %rax	#, tmp116
	movq	%rax, -48(%rbp)	# tmp116, d
	jmp	.L68	#
.L61:
	.loc 1 397 0
	leaq	-128(%rbp), %rax	#, tmp117
	movq	-64(%rbp), %rdx	# d, tmp118
	movq	%rdx, (%rsp)	# tmp118,
	movq	-56(%rbp), %rdx	# d, tmp119
	movq	%rdx, 8(%rsp)	# tmp119,
	movq	-48(%rbp), %rdx	# d, tmp120
	movq	%rdx, 16(%rsp)	# tmp120,
	movq	%rax, %rdi	# tmp117,
	call	etrunci	#
	movq	-128(%rbp), %rax	#, tmp121
	movq	%rax, -64(%rbp)	# tmp121, d
	movq	-120(%rbp), %rax	#, tmp122
	movq	%rax, -56(%rbp)	# tmp122, d
	movq	-112(%rbp), %rax	#, tmp123
	movq	%rax, -48(%rbp)	# tmp123, d
	jmp	.L68	#
.L62:
	.loc 1 398 0
	leaq	-128(%rbp), %rax	#, tmp124
	movq	-64(%rbp), %rdx	# d, tmp125
	movq	%rdx, (%rsp)	# tmp125,
	movq	-56(%rbp), %rdx	# d, tmp126
	movq	%rdx, 8(%rsp)	# tmp126,
	movq	-48(%rbp), %rdx	# d, tmp127
	movq	%rdx, 16(%rsp)	# tmp127,
	movq	%rax, %rdi	# tmp124,
	call	etruncui	#
	movq	-128(%rbp), %rax	#, tmp128
	movq	%rax, -64(%rbp)	# tmp128, d
	movq	-120(%rbp), %rax	#, tmp129
	movq	%rax, -56(%rbp)	# tmp129, d
	movq	-112(%rbp), %rax	#, tmp130
	movq	%rax, -48(%rbp)	# tmp130, d
	jmp	.L68	#
.L56:
	.loc 1 400 0
	movl	$__FUNCTION__.10741, %edx	#,
	movl	$400, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L70:
	.loc 1 396 0
	nop
.L68:
	.loc 1 402 0
	movq	-72(%rbp), %rax	# args, tmp131
	movl	16(%rax), %eax	# args_3->mode, D.14108
	movq	-64(%rbp), %rdx	# d, tmp132
	movq	%rdx, (%rsp)	# tmp132,
	movq	-56(%rbp), %rdx	# d, tmp133
	movq	%rdx, 8(%rsp)	# tmp133,
	movq	-48(%rbp), %rdx	# d, tmp134
	movq	%rdx, 16(%rsp)	# tmp134,
	movl	%eax, %edi	# D.14108,
	call	immed_real_const_1	#
	movq	-72(%rbp), %rdx	# args, tmp135
	movq	%rax, 8(%rdx)	# D.14103, args_3->result
.L49:
	.loc 1 404 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	simplify_unary_real, .-simplify_unary_real
	.globl	simplify_unary_operation
	.type	simplify_unary_operation, @function
simplify_unary_operation:
.LFB10:
	.loc 1 416 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movl	%edi, -132(%rbp)	# code, code
	movl	%esi, -136(%rbp)	# mode, mode
	movq	%rdx, -144(%rbp)	# op, op
	movl	%ecx, -148(%rbp)	# op_mode, op_mode
	.loc 1 417 0
	movl	-136(%rbp), %eax	# mode, mode.8
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	movzwl	%ax, %eax	# D.14119, tmp210
	movl	%eax, -120(%rbp)	# tmp210, width
	.loc 1 418 0
	movq	-144(%rbp), %rax	# op, tmp211
	movq	%rax, %rdi	# tmp211,
	call	avoid_constant_pool_reference	#
	movq	%rax, -48(%rbp)	# tmp212, trueop
	.loc 1 426 0
	cmpl	$125, -132(%rbp)	#, code
	jne	.L72	#,
	.loc 1 426 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# trueop, tmp213
	movzbl	2(%rax), %eax	# trueop_28->mode, D.14120
	testb	%al, %al	# D.14120
	jne	.L72	#,
	.loc 1 427 0 is_stmt 1
	movq	-48(%rbp), %rax	# trueop, tmp214
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$55, %ax	#, D.14119
	je	.L73	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# trueop, tmp215
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$54, %ax	#, D.14119
	jne	.L72	#,
.L73:
.LBB8:
	.loc 1 432 0 is_stmt 1
	movq	-48(%rbp), %rax	# trueop, tmp216
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$54, %ax	#, D.14119
	jne	.L74	#,
	.loc 1 433 0
	movq	-48(%rbp), %rax	# trueop, tmp217
	movq	8(%rax), %rax	# trueop_28->fld[0].rtwint, tmp218
	movq	%rax, -96(%rbp)	# tmp218, lv
	cmpq	$0, -96(%rbp)	#, lv
	jns	.L75	#,
	.loc 1 433 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.9
	jmp	.L76	#
.L75:
	.loc 1 433 0 discriminator 2
	movl	$0, %eax	#, iftmp.9
.L76:
	.loc 1 433 0 discriminator 1
	movq	%rax, -104(%rbp)	# iftmp.9, hv
	jmp	.L77	#
.L74:
	.loc 1 435 0 is_stmt 1
	movq	-48(%rbp), %rax	# trueop, tmp219
	movq	16(%rax), %rax	# trueop_28->fld[1].rtwint, tmp220
	movq	%rax, -96(%rbp)	# tmp220, lv
	movq	-48(%rbp), %rax	# trueop, tmp221
	movq	24(%rax), %rax	# trueop_28->fld[2].rtwint, tmp222
	movq	%rax, -104(%rbp)	# tmp222, hv
.L77:
	.loc 1 438 0
	movl	-136(%rbp), %ecx	# mode, tmp223
	movq	-104(%rbp), %rdx	# hv, tmp224
	movq	-96(%rbp), %rsi	# lv, tmp225
	leaq	-32(%rbp), %rax	#, tmp226
	movq	%rax, %rdi	# tmp226,
	call	ereal_from_int	#
	.loc 1 456 0
	leaq	-192(%rbp), %rax	#, tmp227
	movl	-136(%rbp), %edx	# mode, tmp228
	movq	-32(%rbp), %rcx	# d, tmp229
	movq	%rcx, (%rsp)	# tmp229,
	movq	-24(%rbp), %rcx	# d, tmp230
	movq	%rcx, 8(%rsp)	# tmp230,
	movq	-16(%rbp), %rcx	# d, tmp231
	movq	%rcx, 16(%rsp)	# tmp231,
	movl	%edx, %esi	# tmp228,
	movq	%rax, %rdi	# tmp227,
	call	real_value_truncate	#
	movq	-192(%rbp), %rax	#, tmp232
	movq	%rax, -32(%rbp)	# tmp232, d
	movq	-184(%rbp), %rax	#, tmp233
	movq	%rax, -24(%rbp)	# tmp233, d
	movq	-176(%rbp), %rax	#, tmp234
	movq	%rax, -16(%rbp)	# tmp234, d
	.loc 1 457 0
	movl	-136(%rbp), %eax	# mode, tmp235
	movq	-32(%rbp), %rdx	# d, tmp236
	movq	%rdx, (%rsp)	# tmp236,
	movq	-24(%rbp), %rdx	# d, tmp237
	movq	%rdx, 8(%rsp)	# tmp237,
	movq	-16(%rbp), %rdx	# d, tmp238
	movq	%rdx, 16(%rsp)	# tmp238,
	movl	%eax, %edi	# tmp235,
	call	immed_real_const_1	#
	jmp	.L78	#
.L72:
.LBE8:
	.loc 1 459 0
	cmpl	$127, -132(%rbp)	#, code
	jne	.L79	#,
	.loc 1 459 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# trueop, tmp239
	movzbl	2(%rax), %eax	# trueop_28->mode, D.14120
	testb	%al, %al	# D.14120
	jne	.L79	#,
	.loc 1 460 0 is_stmt 1
	movq	-48(%rbp), %rax	# trueop, tmp240
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$55, %ax	#, D.14119
	je	.L80	#,
	.loc 1 461 0
	movq	-48(%rbp), %rax	# trueop, tmp241
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$54, %ax	#, D.14119
	jne	.L79	#,
.L80:
.LBB9:
	.loc 1 466 0
	movq	-48(%rbp), %rax	# trueop, tmp242
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$54, %ax	#, D.14119
	jne	.L81	#,
	.loc 1 467 0
	movq	-48(%rbp), %rax	# trueop, tmp243
	movq	8(%rax), %rax	# trueop_28->fld[0].rtwint, tmp244
	movq	%rax, -80(%rbp)	# tmp244, lv
	cmpq	$0, -80(%rbp)	#, lv
	jns	.L82	#,
	.loc 1 467 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.10
	jmp	.L83	#
.L82:
	.loc 1 467 0 discriminator 2
	movl	$0, %eax	#, iftmp.10
.L83:
	.loc 1 467 0 discriminator 1
	movq	%rax, -88(%rbp)	# iftmp.10, hv
	jmp	.L84	#
.L81:
	.loc 1 469 0 is_stmt 1
	movq	-48(%rbp), %rax	# trueop, tmp245
	movq	16(%rax), %rax	# trueop_28->fld[1].rtwint, tmp246
	movq	%rax, -80(%rbp)	# tmp246, lv
	movq	-48(%rbp), %rax	# trueop, tmp247
	movq	24(%rax), %rax	# trueop_28->fld[2].rtwint, tmp248
	movq	%rax, -88(%rbp)	# tmp248, hv
.L84:
	.loc 1 471 0
	cmpl	$0, -148(%rbp)	#, op_mode
	jne	.L85	#,
	.loc 1 475 0
	cmpq	$0, -88(%rbp)	#, hv
	jns	.L86	#,
	.loc 1 476 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L85:
	.loc 1 478 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.11
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	cmpw	$127, %ax	#, D.14119
	ja	.L86	#,
	.loc 1 481 0
	movq	$0, -88(%rbp)	#, hv
	movl	-148(%rbp), %eax	# op_mode, op_mode.12
	cltq
	movq	mode_mask_array(,%rax,8), %rdx	# mode_mask_array, D.14121
	movq	-80(%rbp), %rax	# lv, lv.13
	andq	%rdx, %rax	# D.14121, D.14121
	movq	%rax, -80(%rbp)	# D.14121, lv
.L86:
	.loc 1 484 0
	movq	-88(%rbp), %rdx	# hv, hv.14
	movq	-80(%rbp), %rsi	# lv, lv.15
	movl	-136(%rbp), %ecx	# mode, tmp251
	leaq	-32(%rbp), %rax	#, tmp252
	movq	%rax, %rdi	# tmp252,
	call	ereal_from_uint	#
	.loc 1 492 0
	leaq	-192(%rbp), %rax	#, tmp253
	movl	-136(%rbp), %edx	# mode, tmp254
	movq	-32(%rbp), %rcx	# d, tmp255
	movq	%rcx, (%rsp)	# tmp255,
	movq	-24(%rbp), %rcx	# d, tmp256
	movq	%rcx, 8(%rsp)	# tmp256,
	movq	-16(%rbp), %rcx	# d, tmp257
	movq	%rcx, 16(%rsp)	# tmp257,
	movl	%edx, %esi	# tmp254,
	movq	%rax, %rdi	# tmp253,
	call	real_value_truncate	#
	movq	-192(%rbp), %rax	#, tmp258
	movq	%rax, -32(%rbp)	# tmp258, d
	movq	-184(%rbp), %rax	#, tmp259
	movq	%rax, -24(%rbp)	# tmp259, d
	movq	-176(%rbp), %rax	#, tmp260
	movq	%rax, -16(%rbp)	# tmp260, d
	.loc 1 493 0
	movl	-136(%rbp), %eax	# mode, tmp261
	movq	-32(%rbp), %rdx	# d, tmp262
	movq	%rdx, (%rsp)	# tmp262,
	movq	-24(%rbp), %rdx	# d, tmp263
	movq	%rdx, 8(%rsp)	# tmp263,
	movq	-16(%rbp), %rdx	# d, tmp264
	movq	%rdx, 16(%rsp)	# tmp264,
	movl	%eax, %edi	# tmp261,
	call	immed_real_const_1	#
	jmp	.L78	#
.L79:
.LBE9:
	.loc 1 497 0
	movq	-48(%rbp), %rax	# trueop, tmp265
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$54, %ax	#, D.14119
	jne	.L88	#,
	.loc 1 498 0
	cmpl	$64, -120(%rbp)	#, width
	ja	.L88	#,
	.loc 1 498 0 is_stmt 0 discriminator 1
	cmpl	$0, -120(%rbp)	#, width
	je	.L88	#,
.LBB10:
	.loc 1 500 0 is_stmt 1
	movq	-48(%rbp), %rax	# trueop, tmp266
	movq	8(%rax), %rax	# trueop_28->fld[0].rtwint, tmp267
	movq	%rax, -40(%rbp)	# tmp267, arg0
	.loc 1 503 0
	movl	-132(%rbp), %eax	# code, tmp269
	subl	$77, %eax	#, tmp268
	cmpl	$74, %eax	#, tmp268
	ja	.L89	#,
	movl	%eax, %eax	# tmp268, tmp270
	movq	.L91(,%rax,8), %rax	#, tmp271
	jmp	*%rax	# tmp271
	.section	.rodata
	.align 8
	.align 4
.L91:
	.quad	.L90
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L92
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L93
	.quad	.L94
	.quad	.L95
	.quad	.L96
	.quad	.L96
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L97
	.quad	.L96
	.quad	.L98
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L89
	.quad	.L96
	.quad	.L96
	.text
.L92:
	.loc 1 506 0
	movq	-40(%rbp), %rax	# arg0, tmp275
	notq	%rax	# tmp274
	movq	%rax, -72(%rbp)	# tmp274, val
	.loc 1 507 0
	jmp	.L99	#
.L90:
	.loc 1 510 0
	movq	-40(%rbp), %rax	# arg0, tmp279
	negq	%rax	# tmp278
	movq	%rax, -72(%rbp)	# tmp278, val
	.loc 1 511 0
	jmp	.L99	#
.L97:
	.loc 1 514 0
	movq	-40(%rbp), %rax	# arg0, tmp281
	sarq	$63, %rax	#, tmp280
	movq	%rax, %rdx	# tmp280, tmp283
	xorq	-40(%rbp), %rdx	# arg0, tmp283
	subq	%rax, %rdx	# tmp280, tmp284
	movq	%rdx, %rax	# tmp284, tmp284
	movq	%rax, -72(%rbp)	# tmp284, val
	.loc 1 515 0
	jmp	.L99	#
.L98:
	.loc 1 520 0
	movl	-136(%rbp), %eax	# mode, mode.16
	cltq
	movq	mode_mask_array(,%rax,8), %rdx	# mode_mask_array, D.14121
	movq	-40(%rbp), %rax	# arg0, arg0.17
	andq	%rdx, %rax	# D.14121, D.14121
	movq	%rax, -40(%rbp)	# D.14121, arg0
	.loc 1 521 0
	movq	-40(%rbp), %rax	# arg0, tmp286
	negq	%rax	# D.14122
	andq	-40(%rbp), %rax	# arg0, D.14122
	movq	%rax, %rdi	# D.14121,
	call	exact_log2_wide	#
	addl	$1, %eax	#, D.14123
	cltq
	movq	%rax, -72(%rbp)	# tmp287, val
	.loc 1 522 0
	jmp	.L99	#
.L95:
	.loc 1 525 0
	movq	-40(%rbp), %rax	# arg0, tmp288
	movq	%rax, -72(%rbp)	# tmp288, val
	.loc 1 526 0
	jmp	.L99	#
.L94:
	.loc 1 531 0
	cmpl	$0, -148(%rbp)	#, op_mode
	jne	.L100	#,
	.loc 1 532 0
	movl	$__FUNCTION__.10774, %edx	#,
	movl	$532, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L100:
	.loc 1 533 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.18
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	cmpw	$64, %ax	#, D.14119
	jne	.L101	#,
	.loc 1 538 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.19
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	movzwl	%ax, %eax	# D.14119, D.14124
	cmpl	-120(%rbp), %eax	# width, D.14124
	je	.L102	#,
	.loc 1 539 0
	movl	$__FUNCTION__.10774, %edx	#,
	movl	$539, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L102:
	.loc 1 540 0
	movq	-40(%rbp), %rax	# arg0, tmp291
	movq	%rax, -72(%rbp)	# tmp291, val
	jmp	.L103	#
.L101:
	.loc 1 542 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.20
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	cmpw	$63, %ax	#, D.14119
	ja	.L104	#,
	.loc 1 543 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.21
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	movzwl	%ax, %eax	# D.14119, D.14123
	movq	$-1, %rdx	#, tmp294
	movl	%eax, %ecx	# D.14123, tmp389
	salq	%cl, %rdx	# tmp389, D.14122
	movq	%rdx, %rax	# D.14122, D.14122
	notq	%rax	# D.14122
	andq	-40(%rbp), %rax	# arg0, tmp296
	movq	%rax, -72(%rbp)	# tmp296, val
	jmp	.L103	#
.L104:
	.loc 1 545 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L103:
	.loc 1 546 0
	jmp	.L99	#
.L93:
	.loc 1 549 0
	cmpl	$0, -148(%rbp)	#, op_mode
	jne	.L105	#,
	.loc 1 550 0
	movl	-136(%rbp), %eax	# mode, tmp297
	movl	%eax, -148(%rbp)	# tmp297, op_mode
.L105:
	.loc 1 551 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.22
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	cmpw	$64, %ax	#, D.14119
	jne	.L106	#,
	.loc 1 556 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.23
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	movzwl	%ax, %eax	# D.14119, D.14124
	cmpl	-120(%rbp), %eax	# width, D.14124
	je	.L107	#,
	.loc 1 557 0
	movl	$__FUNCTION__.10774, %edx	#,
	movl	$557, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L107:
	.loc 1 558 0
	movq	-40(%rbp), %rax	# arg0, tmp300
	movq	%rax, -72(%rbp)	# tmp300, val
	jmp	.L108	#
.L106:
	.loc 1 560 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.24
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	cmpw	$63, %ax	#, D.14119
	ja	.L109	#,
	.loc 1 563 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.25
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	movzwl	%ax, %eax	# D.14119, D.14123
	movq	$-1, %rdx	#, tmp303
	movl	%eax, %ecx	# D.14123, tmp391
	salq	%cl, %rdx	# tmp391, D.14122
	movq	%rdx, %rax	# D.14122, D.14122
	notq	%rax	# D.14122
	andq	-40(%rbp), %rax	# arg0, tmp305
	movq	%rax, -72(%rbp)	# tmp305, val
	.loc 1 565 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.26
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	movzwl	%ax, %eax	# D.14119, D.14123
	subl	$1, %eax	#, D.14123
	.loc 1 564 0
	movq	-72(%rbp), %rdx	# val, tmp307
	movl	%eax, %ecx	# D.14123, tmp393
	sarq	%cl, %rdx	# tmp393, D.14122
	movq	%rdx, %rax	# D.14122, D.14122
	andl	$1, %eax	#, D.14122
	testq	%rax, %rax	# D.14122
	je	.L108	#,
	.loc 1 566 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.27
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	movzwl	%ax, %eax	# D.14119, D.14123
	movl	$1, %edx	#, tmp309
	movl	%eax, %ecx	# D.14123, tmp395
	salq	%cl, %rdx	# tmp395, D.14122
	movq	%rdx, %rax	# D.14122, D.14122
	subq	%rax, -72(%rbp)	# D.14122, val
	.loc 1 570 0
	jmp	.L99	#
.L109:
	.loc 1 569 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L108:
	.loc 1 570 0
	jmp	.L99	#
.L96:
	.loc 1 577 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L89:
	.loc 1 580 0
	movl	$__FUNCTION__.10774, %edx	#,
	movl	$580, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L99:
	.loc 1 583 0
	movl	-136(%rbp), %edx	# mode, tmp310
	movq	-72(%rbp), %rax	# val, tmp311
	movl	%edx, %esi	# tmp310,
	movq	%rax, %rdi	# tmp311,
	call	trunc_int_for_mode	#
	movq	%rax, -72(%rbp)	# tmp312, val
	.loc 1 585 0
	movq	-72(%rbp), %rax	# val, tmp313
	movq	%rax, %rsi	# tmp313,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L78	#
.L88:
.LBE10:
	.loc 1 590 0
	movq	-48(%rbp), %rax	# trueop, tmp314
	movzbl	2(%rax), %eax	# trueop_28->mode, D.14120
	testb	%al, %al	# D.14120
	jne	.L111	#,
	.loc 1 591 0
	cmpl	$128, -120(%rbp)	#, width
	ja	.L111	#,
	.loc 1 592 0
	movq	-48(%rbp), %rax	# trueop, tmp315
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$55, %ax	#, D.14119
	je	.L112	#,
	.loc 1 593 0
	movq	-48(%rbp), %rax	# trueop, tmp316
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$54, %ax	#, D.14119
	jne	.L111	#,
.L112:
.LBB11:
	.loc 1 598 0
	movq	-48(%rbp), %rax	# trueop, tmp317
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$55, %ax	#, D.14119
	jne	.L113	#,
	.loc 1 599 0
	movq	-48(%rbp), %rax	# trueop, tmp318
	movq	16(%rax), %rax	# trueop_28->fld[1].rtwint, D.14122
	movq	%rax, -64(%rbp)	# D.14122, l1
	movq	-48(%rbp), %rax	# trueop, tmp319
	movq	24(%rax), %rax	# trueop_28->fld[2].rtwint, tmp320
	movq	%rax, -56(%rbp)	# tmp320, h1
	jmp	.L114	#
.L113:
	.loc 1 601 0
	movq	-48(%rbp), %rax	# trueop, tmp321
	movq	8(%rax), %rax	# trueop_28->fld[0].rtwint, D.14122
	movq	%rax, -64(%rbp)	# D.14122, l1
	movq	-64(%rbp), %rax	# l1, l1.29
	testq	%rax, %rax	# l1.29
	jns	.L115	#,
	.loc 1 601 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.28
	jmp	.L116	#
.L115:
	.loc 1 601 0 discriminator 2
	movl	$0, %eax	#, iftmp.28
.L116:
	.loc 1 601 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.28, h1
.L114:
	.loc 1 603 0 is_stmt 1
	movl	-132(%rbp), %eax	# code, tmp323
	subl	$77, %eax	#, tmp322
	cmpl	$54, %eax	#, tmp322
	ja	.L117	#,
	movl	%eax, %eax	# tmp322, tmp324
	movq	.L119(,%rax,8), %rax	#, tmp325
	jmp	*%rax	# tmp325
	.section	.rodata
	.align 8
	.align 4
.L119:
	.quad	.L118
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L120
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L121
	.quad	.L122
	.quad	.L123
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L117
	.quad	.L124
	.quad	.L125
	.quad	.L126
	.text
.L120:
	.loc 1 606 0
	movq	-64(%rbp), %rax	# l1, tmp326
	notq	%rax	# lv.30
	movq	%rax, -112(%rbp)	# lv.30, lv
	.loc 1 607 0
	movq	-56(%rbp), %rax	# h1, tmp327
	notq	%rax	# hv.31
	movq	%rax, -32(%rbp)	# hv.31, hv
	.loc 1 608 0
	jmp	.L127	#
.L118:
	.loc 1 611 0
	leaq	-32(%rbp), %rcx	#, tmp328
	leaq	-112(%rbp), %rdx	#, tmp329
	movq	-56(%rbp), %rsi	# h1, tmp330
	movq	-64(%rbp), %rax	# l1, tmp331
	movq	%rax, %rdi	# tmp331,
	call	neg_double	#
	.loc 1 612 0
	jmp	.L127	#
.L124:
	.loc 1 615 0
	cmpq	$0, -56(%rbp)	#, h1
	jns	.L128	#,
	.loc 1 616 0
	leaq	-32(%rbp), %rcx	#, tmp332
	leaq	-112(%rbp), %rdx	#, tmp333
	movq	-56(%rbp), %rsi	# h1, tmp334
	movq	-64(%rbp), %rax	# l1, tmp335
	movq	%rax, %rdi	# tmp335,
	call	neg_double	#
	.loc 1 619 0
	jmp	.L127	#
.L128:
	.loc 1 618 0
	movq	-64(%rbp), %rax	# l1, tmp336
	movq	%rax, -112(%rbp)	# tmp336, lv
	movq	-56(%rbp), %rax	# h1, tmp337
	movq	%rax, -32(%rbp)	# tmp337, hv
	.loc 1 619 0
	jmp	.L127	#
.L126:
	.loc 1 622 0
	movq	$0, -32(%rbp)	#, hv
	.loc 1 623 0
	cmpq	$0, -64(%rbp)	#, l1
	jne	.L130	#,
	.loc 1 624 0
	movq	-56(%rbp), %rax	# h1, tmp338
	negq	%rax	# D.14122
	andq	-56(%rbp), %rax	# h1, D.14122
	movq	%rax, %rdi	# D.14121,
	call	exact_log2_wide	#
	addl	$65, %eax	#, D.14123
	cltq
	movq	%rax, -112(%rbp)	# lv.32, lv
	.loc 1 627 0
	jmp	.L127	#
.L130:
	.loc 1 626 0
	movq	-64(%rbp), %rax	# l1, tmp339
	negq	%rax	# D.14121
	andq	-64(%rbp), %rax	# l1, D.14121
	movq	%rax, %rdi	# D.14121,
	call	exact_log2_wide	#
	addl	$1, %eax	#, D.14123
	cltq
	movq	%rax, -112(%rbp)	# lv.33, lv
	.loc 1 627 0
	jmp	.L127	#
.L123:
	.loc 1 631 0
	movq	-64(%rbp), %rax	# l1, tmp340
	movq	%rax, -112(%rbp)	# tmp340, lv
	movq	-56(%rbp), %rax	# h1, tmp341
	movq	%rax, -32(%rbp)	# tmp341, hv
	.loc 1 632 0
	jmp	.L127	#
.L122:
	.loc 1 635 0
	cmpl	$0, -148(%rbp)	#, op_mode
	jne	.L132	#,
	.loc 1 636 0
	movl	$__FUNCTION__.10774, %edx	#,
	movl	$636, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L132:
	.loc 1 638 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.34
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	cmpw	$64, %ax	#, D.14119
	jbe	.L133	#,
	.loc 1 639 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L133:
	.loc 1 641 0
	movq	$0, -32(%rbp)	#, hv
	.loc 1 642 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.35
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14121
	andq	-64(%rbp), %rax	# l1, lv.36
	movq	%rax, -112(%rbp)	# lv.36, lv
	.loc 1 643 0
	jmp	.L127	#
.L121:
	.loc 1 646 0
	cmpl	$0, -148(%rbp)	#, op_mode
	je	.L135	#,
	.loc 1 647 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.37
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	cmpw	$64, %ax	#, D.14119
	jbe	.L136	#,
.L135:
	.loc 1 648 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L136:
	.loc 1 651 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.38
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14121
	andq	-64(%rbp), %rax	# l1, lv.39
	movq	%rax, -112(%rbp)	# lv.39, lv
	.loc 1 652 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.40
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	cmpw	$63, %ax	#, D.14119
	ja	.L137	#,
	.loc 1 654 0
	movl	-148(%rbp), %eax	# op_mode, op_mode.41
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	movzwl	%ax, %eax	# D.14119, D.14123
	subl	$1, %eax	#, D.14123
	movl	$1, %edx	#, tmp348
	movl	%eax, %ecx	# D.14123, tmp397
	salq	%cl, %rdx	# tmp397, D.14122
	movq	%rdx, %rax	# D.14122, D.14122
	.loc 1 653 0
	movq	%rax, %rdx	# D.14122, D.14121
	movq	-112(%rbp), %rax	# lv, lv.42
	andq	%rdx, %rax	# D.14121, D.14121
	testq	%rax, %rax	# D.14121
	je	.L137	#,
	.loc 1 655 0
	movq	-112(%rbp), %rdx	# lv, lv.43
	movl	-148(%rbp), %eax	# op_mode, op_mode.44
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14119
	movzwl	%ax, %eax	# D.14119, D.14123
	movl	$1, %esi	#, tmp350
	movl	%eax, %ecx	# D.14123, tmp399
	salq	%cl, %rsi	# tmp399, D.14122
	movq	%rsi, %rax	# D.14122, D.14122
	subq	%rax, %rdx	# D.14121, lv.45
	movq	%rdx, %rax	# lv.45, lv.45
	movq	%rax, -112(%rbp)	# lv.45, lv
.L137:
	.loc 1 657 0
	movq	-112(%rbp), %rax	# lv, lv.47
	testq	%rax, %rax	# lv.48
	jns	.L138	#,
	.loc 1 657 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.46
	jmp	.L139	#
.L138:
	.loc 1 657 0 discriminator 2
	movl	$0, %eax	#, iftmp.46
.L139:
	.loc 1 657 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.46, hv
	.loc 1 659 0 is_stmt 1 discriminator 3
	jmp	.L127	#
.L125:
	.loc 1 662 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L117:
	.loc 1 665 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L127:
	.loc 1 668 0
	movq	-32(%rbp), %rcx	# hv, hv.49
	movq	-112(%rbp), %rax	# lv, lv.50
	movl	-136(%rbp), %edx	# mode, tmp351
	movq	%rcx, %rsi	# hv.49,
	movq	%rax, %rdi	# lv.51,
	call	immed_double_const	#
	jmp	.L78	#
.L111:
.LBE11:
	.loc 1 672 0
	movq	-48(%rbp), %rax	# trueop, tmp352
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$55, %ax	#, D.14119
	jne	.L140	#,
	.loc 1 673 0
	movl	-136(%rbp), %eax	# mode, mode.52
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14125
	cmpl	$2, %eax	#, D.14125
	jne	.L140	#,
.LBB12:
	.loc 1 676 0
	movq	-48(%rbp), %rax	# trueop, tmp354
	movq	%rax, -32(%rbp)	# tmp354, args.operand
	.loc 1 677 0
	movl	-136(%rbp), %eax	# mode, tmp355
	movl	%eax, -16(%rbp)	# tmp355, args.mode
	.loc 1 678 0
	movl	-132(%rbp), %eax	# code, tmp356
	movl	%eax, -12(%rbp)	# tmp356, args.code
	.loc 1 679 0
	movb	$0, -8(%rbp)	#, args.want_integer
	.loc 1 681 0
	leaq	-32(%rbp), %rax	#, tmp357
	movq	%rax, %rsi	# tmp357,
	movl	$simplify_unary_real, %edi	#,
	call	do_float_handler	#
	testl	%eax, %eax	# D.14123
	je	.L141	#,
	.loc 1 682 0
	movq	-24(%rbp), %rax	# args.result, D.14118
	jmp	.L78	#
.L141:
	.loc 1 684 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L140:
.LBE12:
	.loc 1 687 0
	movq	-48(%rbp), %rax	# trueop, tmp358
	movzwl	(%rax), %eax	# trueop_28->code, D.14119
	cmpw	$55, %ax	#, D.14119
	jne	.L143	#,
	.loc 1 688 0
	movq	-48(%rbp), %rax	# trueop, tmp359
	movzbl	2(%rax), %eax	# trueop_28->mode, D.14120
	movzbl	%al, %eax	# D.14120, D.14123
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14125
	cmpl	$2, %eax	#, D.14125
	jne	.L143	#,
	.loc 1 689 0
	movl	-136(%rbp), %eax	# mode, mode.53
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14125
	cmpl	$1, %eax	#, D.14125
	jne	.L143	#,
	.loc 1 690 0
	cmpl	$64, -120(%rbp)	#, width
	ja	.L143	#,
	.loc 1 690 0 is_stmt 0 discriminator 1
	cmpl	$0, -120(%rbp)	#, width
	je	.L143	#,
.LBB13:
	.loc 1 693 0 is_stmt 1
	movq	-48(%rbp), %rax	# trueop, tmp362
	movq	%rax, -32(%rbp)	# tmp362, args.operand
	.loc 1 694 0
	movl	-136(%rbp), %eax	# mode, tmp363
	movl	%eax, -16(%rbp)	# tmp363, args.mode
	.loc 1 695 0
	movl	-132(%rbp), %eax	# code, tmp364
	movl	%eax, -12(%rbp)	# tmp364, args.code
	.loc 1 696 0
	movb	$1, -8(%rbp)	#, args.want_integer
	.loc 1 698 0
	leaq	-32(%rbp), %rax	#, tmp365
	movq	%rax, %rsi	# tmp365,
	movl	$simplify_unary_real, %edi	#,
	call	do_float_handler	#
	testl	%eax, %eax	# D.14123
	je	.L144	#,
	.loc 1 699 0
	movq	-24(%rbp), %rax	# args.result, D.14118
	jmp	.L78	#
.L144:
	.loc 1 701 0
	movl	$0, %eax	#, D.14118
	jmp	.L78	#
.L143:
.LBE13:
.LBB14:
	.loc 1 711 0
	movl	-132(%rbp), %eax	# code, code
	cmpl	$86, %eax	#, code
	je	.L147	#,
	cmpl	$120, %eax	#, code
	je	.L148	#,
	cmpl	$77, %eax	#, code
	je	.L149	#,
	.loc 1 770 0
	jmp	.L152	#
.L147:
	.loc 1 715 0
	movq	-144(%rbp), %rax	# op, tmp367
	movzwl	(%rax), %eax	# op_27(D)->code, D.14119
	cmpw	$86, %ax	#, D.14119
	jne	.L150	#,
	.loc 1 716 0
	movq	-144(%rbp), %rax	# op, tmp368
	movq	8(%rax), %rax	# op_27(D)->fld[0].rtx, D.14118
	jmp	.L78	#
.L150:
	.loc 1 719 0
	cmpl	$1, -136(%rbp)	#, mode
	jne	.L151	#,
	.loc 1 719 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# op, tmp369
	movzwl	(%rax), %eax	# op_27(D)->code, D.14119
	movzwl	%ax, %eax	# D.14119, D.14123
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14126
	cmpb	$60, %al	#, D.14126
	jne	.L151	#,
	.loc 1 720 0 is_stmt 1
	movq	-144(%rbp), %rax	# op, tmp371
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp371,
	call	reversed_comparison_code	#
	movl	%eax, -116(%rbp)	# tmp372, reversed
	cmpl	$0, -116(%rbp)	#, reversed
	je	.L151	#,
	.loc 1 722 0
	movq	-144(%rbp), %rax	# op, tmp373
	movq	16(%rax), %rcx	# op_27(D)->fld[1].rtx, D.14127
	movq	-144(%rbp), %rax	# op, tmp374
	movq	8(%rax), %rdx	# op_27(D)->fld[0].rtx, D.14127
	movl	-148(%rbp), %esi	# op_mode, tmp375
	movl	-116(%rbp), %eax	# reversed, tmp376
	movl	%eax, %edi	# tmp376,
	call	gen_rtx_fmt_ee	#
	jmp	.L78	#
.L151:
	.loc 1 724 0
	jmp	.L152	#
.L149:
	.loc 1 728 0
	movq	-144(%rbp), %rax	# op, tmp377
	movzwl	(%rax), %eax	# op_27(D)->code, D.14119
	cmpw	$77, %ax	#, D.14119
	jne	.L153	#,
	.loc 1 729 0
	movq	-144(%rbp), %rax	# op, tmp378
	movq	8(%rax), %rax	# op_27(D)->fld[0].rtx, D.14118
	jmp	.L78	#
.L153:
	.loc 1 730 0
	jmp	.L152	#
.L148:
	.loc 1 737 0
	movq	-144(%rbp), %rax	# op, tmp379
	movzwl	(%rax), %eax	# op_27(D)->code, D.14119
	cmpw	$122, %ax	#, D.14119
	jne	.L154	#,
	.loc 1 738 0
	movq	-144(%rbp), %rax	# op, tmp380
	movq	8(%rax), %rax	# op_27(D)->fld[0].rtx, D.14127
	movzbl	2(%rax), %eax	# _218->mode, D.14120
	movzbl	%al, %eax	# D.14120, D.14124
	cmpl	-136(%rbp), %eax	# mode, D.14124
	jne	.L154	#,
	.loc 1 739 0
	movq	-144(%rbp), %rax	# op, tmp381
	movq	8(%rax), %rax	# op_27(D)->fld[0].rtx, D.14127
	movzwl	(%rax), %eax	# _221->code, D.14119
	cmpw	$76, %ax	#, D.14119
	jne	.L154	#,
	.loc 1 740 0
	movq	-144(%rbp), %rax	# op, tmp382
	movq	8(%rax), %rax	# op_27(D)->fld[0].rtx, D.14127
	movq	8(%rax), %rax	# _223->fld[0].rtx, D.14127
	movzwl	(%rax), %eax	# _224->code, D.14119
	cmpw	$67, %ax	#, D.14119
	jne	.L154	#,
	.loc 1 741 0
	movq	-144(%rbp), %rax	# op, tmp383
	movq	8(%rax), %rax	# op_27(D)->fld[0].rtx, D.14127
	movq	16(%rax), %rax	# _226->fld[1].rtx, D.14127
	movzwl	(%rax), %eax	# _227->code, D.14119
	cmpw	$67, %ax	#, D.14119
	jne	.L154	#,
	.loc 1 742 0
	movq	-144(%rbp), %rax	# op, tmp384
	movq	8(%rax), %rax	# op_27(D)->fld[0].rtx, D.14118
	jmp	.L78	#
.L154:
	.loc 1 754 0
	nop
.L152:
	.loc 1 773 0
	movl	$0, %eax	#, D.14118
.L78:
.LBE14:
	.loc 1 775 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	simplify_unary_operation, .-simplify_unary_operation
	.type	simplify_binary_real, @function
simplify_binary_real:
.LFB11:
	.loc 1 791 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -120(%rbp)	# p, p
	.loc 1 793 0
	movq	-120(%rbp), %rax	# p, tmp70
	movq	%rax, -104(%rbp)	# tmp70, args
.LBB15:
	.loc 1 796 0
	movq	-104(%rbp), %rax	# args, tmp71
	movq	(%rax), %rax	# args_2->trueop0, D.14131
	leaq	16(%rax), %rcx	#, D.14132
	leaq	-32(%rbp), %rax	#, tmp72
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.14132,
	movq	%rax, %rdi	# tmp72,
	call	memcpy	#
	movq	-32(%rbp), %rax	# u.d, tmp73
	movq	%rax, -96(%rbp)	# tmp73, f0
	movq	-24(%rbp), %rax	# u.d, tmp74
	movq	%rax, -88(%rbp)	# tmp74, f0
	movq	-16(%rbp), %rax	# u.d, tmp75
	movq	%rax, -80(%rbp)	# tmp75, f0
.LBE15:
.LBB16:
	.loc 1 797 0
	movq	-104(%rbp), %rax	# args, tmp76
	movq	8(%rax), %rax	# args_2->trueop1, D.14131
	leaq	16(%rax), %rcx	#, D.14132
	leaq	-32(%rbp), %rax	#, tmp77
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.14132,
	movq	%rax, %rdi	# tmp77,
	call	memcpy	#
	movq	-32(%rbp), %rax	# u.d, tmp78
	movq	%rax, -64(%rbp)	# tmp78, f1
	movq	-24(%rbp), %rax	# u.d, tmp79
	movq	%rax, -56(%rbp)	# tmp79, f1
	movq	-16(%rbp), %rax	# u.d, tmp80
	movq	%rax, -48(%rbp)	# tmp80, f1
.LBE16:
	.loc 1 798 0
	movq	-104(%rbp), %rax	# args, tmp81
	movl	28(%rax), %edx	# args_2->mode, D.14133
	leaq	-160(%rbp), %rax	#, tmp82
	movq	-96(%rbp), %rcx	# f0, tmp83
	movq	%rcx, (%rsp)	# tmp83,
	movq	-88(%rbp), %rcx	# f0, tmp84
	movq	%rcx, 8(%rsp)	# tmp84,
	movq	-80(%rbp), %rcx	# f0, tmp85
	movq	%rcx, 16(%rsp)	# tmp85,
	movl	%edx, %esi	# D.14133,
	movq	%rax, %rdi	# tmp82,
	call	real_value_truncate	#
	movq	-160(%rbp), %rax	#, tmp86
	movq	%rax, -96(%rbp)	# tmp86, f0
	movq	-152(%rbp), %rax	#, tmp87
	movq	%rax, -88(%rbp)	# tmp87, f0
	movq	-144(%rbp), %rax	#, tmp88
	movq	%rax, -80(%rbp)	# tmp88, f0
	.loc 1 799 0
	movq	-104(%rbp), %rax	# args, tmp89
	movl	28(%rax), %edx	# args_2->mode, D.14133
	leaq	-160(%rbp), %rax	#, tmp90
	movq	-64(%rbp), %rcx	# f1, tmp91
	movq	%rcx, (%rsp)	# tmp91,
	movq	-56(%rbp), %rcx	# f1, tmp92
	movq	%rcx, 8(%rsp)	# tmp92,
	movq	-48(%rbp), %rcx	# f1, tmp93
	movq	%rcx, 16(%rsp)	# tmp93,
	movl	%edx, %esi	# D.14133,
	movq	%rax, %rdi	# tmp90,
	call	real_value_truncate	#
	movq	-160(%rbp), %rax	#, tmp94
	movq	%rax, -64(%rbp)	# tmp94, f1
	movq	-152(%rbp), %rax	#, tmp95
	movq	%rax, -56(%rbp)	# tmp95, f1
	movq	-144(%rbp), %rax	#, tmp96
	movq	%rax, -48(%rbp)	# tmp96, f1
	.loc 1 809 0
	movq	-104(%rbp), %rax	# args, tmp97
	movl	24(%rax), %eax	# args_2->code, D.14134
	movl	%eax, %edi	# D.14134,
	call	rtx_to_tree_code	#
	movl	%eax, %esi	#, D.14135
	leaq	-64(%rbp), %rcx	#, tmp98
	leaq	-96(%rbp), %rdx	#, tmp99
	leaq	-32(%rbp), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	earith	#
	.loc 1 840 0
	movq	-104(%rbp), %rax	# args, tmp101
	movl	28(%rax), %edx	# args_2->mode, D.14133
	leaq	-160(%rbp), %rax	#, tmp102
	movq	-32(%rbp), %rcx	# value, tmp103
	movq	%rcx, (%rsp)	# tmp103,
	movq	-24(%rbp), %rcx	# value, tmp104
	movq	%rcx, 8(%rsp)	# tmp104,
	movq	-16(%rbp), %rcx	# value, tmp105
	movq	%rcx, 16(%rsp)	# tmp105,
	movl	%edx, %esi	# D.14133,
	movq	%rax, %rdi	# tmp102,
	call	real_value_truncate	#
	movq	-160(%rbp), %rax	#, tmp106
	movq	%rax, -32(%rbp)	# tmp106, value
	movq	-152(%rbp), %rax	#, tmp107
	movq	%rax, -24(%rbp)	# tmp107, value
	movq	-144(%rbp), %rax	#, tmp108
	movq	%rax, -16(%rbp)	# tmp108, value
	.loc 1 841 0
	movq	-104(%rbp), %rax	# args, tmp109
	movl	28(%rax), %eax	# args_2->mode, D.14133
	movq	-32(%rbp), %rdx	# value, tmp110
	movq	%rdx, (%rsp)	# tmp110,
	movq	-24(%rbp), %rdx	# value, tmp111
	movq	%rdx, 8(%rsp)	# tmp111,
	movq	-16(%rbp), %rdx	# value, tmp112
	movq	%rdx, 16(%rsp)	# tmp112,
	movl	%eax, %edi	# D.14133,
	call	immed_real_const_1	#
	movq	-104(%rbp), %rdx	# args, tmp113
	movq	%rax, 16(%rdx)	# D.14131, args_2->result
	.loc 1 842 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	simplify_binary_real, .-simplify_binary_real
	.type	simplify_binary_is2orm1, @function
simplify_binary_is2orm1:
.LFB12:
	.loc 1 857 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -88(%rbp)	# p, p
	.loc 1 859 0
	movq	-88(%rbp), %rax	# p, tmp65
	movq	%rax, -72(%rbp)	# tmp65, args
.LBB17:
	.loc 1 862 0
	movq	-72(%rbp), %rax	# args, tmp66
	movq	(%rax), %rax	# args_2->value, D.14140
	leaq	16(%rax), %rcx	#, D.14141
	leaq	-32(%rbp), %rax	#, tmp67
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.14141,
	movq	%rax, %rdi	# tmp67,
	call	memcpy	#
	movq	-32(%rbp), %rax	# u.d, tmp68
	movq	%rax, -64(%rbp)	# tmp68, d
	movq	-24(%rbp), %rax	# u.d, tmp69
	movq	%rax, -56(%rbp)	# tmp69, d
	movq	-16(%rbp), %rax	# u.d, tmp70
	movq	%rax, -48(%rbp)	# tmp70, d
.LBE17:
	.loc 1 863 0
	movq	dconst2(%rip), %rax	# dconst2, tmp72
	movq	%rax, 24(%rsp)	# tmp72,
	movq	dconst2+8(%rip), %rax	# dconst2, tmp73
	movq	%rax, 32(%rsp)	# tmp73,
	movq	dconst2+16(%rip), %rax	# dconst2, tmp74
	movq	%rax, 40(%rsp)	# tmp74,
	movq	-64(%rbp), %rax	# d, tmp75
	movq	%rax, (%rsp)	# tmp75,
	movq	-56(%rbp), %rax	# d, tmp76
	movq	%rax, 8(%rsp)	# tmp76,
	movq	-48(%rbp), %rax	# d, tmp77
	movq	%rax, 16(%rsp)	# tmp77,
	call	ereal_cmp	#
	testl	%eax, %eax	# D.14142
	sete	%dl	#, D.14143
	movq	-72(%rbp), %rax	# args, tmp78
	movb	%dl, 8(%rax)	# D.14143, args_2->is_2
	.loc 1 864 0
	movq	dconstm1(%rip), %rax	# dconstm1, tmp80
	movq	%rax, 24(%rsp)	# tmp80,
	movq	dconstm1+8(%rip), %rax	# dconstm1, tmp81
	movq	%rax, 32(%rsp)	# tmp81,
	movq	dconstm1+16(%rip), %rax	# dconstm1, tmp82
	movq	%rax, 40(%rsp)	# tmp82,
	movq	-64(%rbp), %rax	# d, tmp83
	movq	%rax, (%rsp)	# tmp83,
	movq	-56(%rbp), %rax	# d, tmp84
	movq	%rax, 8(%rsp)	# tmp84,
	movq	-48(%rbp), %rax	# d, tmp85
	movq	%rax, 16(%rsp)	# tmp85,
	call	ereal_cmp	#
	testl	%eax, %eax	# D.14142
	sete	%dl	#, D.14143
	movq	-72(%rbp), %rax	# args, tmp86
	movb	%dl, 9(%rax)	# D.14143, args_2->is_m1
	.loc 1 865 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	simplify_binary_is2orm1, .-simplify_binary_is2orm1
	.globl	simplify_binary_operation
	.type	simplify_binary_operation, @function
simplify_binary_operation:
.LFB13:
	.loc 1 877 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$360, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -292(%rbp)	# code, code
	movl	%esi, -296(%rbp)	# mode, mode
	movq	%rdx, -304(%rbp)	# op0, op0
	movq	%rcx, -312(%rbp)	# op1, op1
	.loc 1 880 0
	movl	-296(%rbp), %eax	# mode, mode.54
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14145
	movzwl	%ax, %eax	# D.14145, tmp573
	movl	%eax, -268(%rbp)	# tmp573, width
	.loc 1 882 0
	movq	-304(%rbp), %rax	# op0, tmp574
	movq	%rax, %rdi	# tmp574,
	call	avoid_constant_pool_reference	#
	movq	%rax, -224(%rbp)	# tmp575, trueop0
	.loc 1 883 0
	movq	-312(%rbp), %rax	# op1, tmp576
	movq	%rax, %rdi	# tmp576,
	call	avoid_constant_pool_reference	#
	movq	%rax, -216(%rbp)	# tmp577, trueop1
	.loc 1 890 0
	movl	-292(%rbp), %eax	# code, code.55
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14146
	cmpb	$60, %al	#, D.14146
	jne	.L158	#,
	.loc 1 891 0
	movl	$__FUNCTION__.10844, %edx	#,
	movl	$891, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L158:
	.loc 1 894 0
	movl	-292(%rbp), %eax	# code, code.56
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14146
	cmpb	$99, %al	#, D.14146
	jne	.L159	#,
	.loc 1 895 0
	movq	-216(%rbp), %rdx	# trueop1, tmp580
	movq	-224(%rbp), %rax	# trueop0, tmp581
	movq	%rdx, %rsi	# tmp580,
	movq	%rax, %rdi	# tmp581,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.14147
	je	.L159	#,
	.loc 1 897 0
	movq	-304(%rbp), %rax	# op0, tmp582
	movq	%rax, -112(%rbp)	# tmp582, tem
	movq	-312(%rbp), %rax	# op1, tmp583
	movq	%rax, -304(%rbp)	# tmp583, op0
	movq	-112(%rbp), %rax	# tem, tmp584
	movq	%rax, -312(%rbp)	# tmp584, op1
	.loc 1 898 0
	movq	-224(%rbp), %rax	# trueop0, tmp585
	movq	%rax, -112(%rbp)	# tmp585, tem
	movq	-216(%rbp), %rax	# trueop1, tmp586
	movq	%rax, -224(%rbp)	# tmp586, trueop0
	movq	-112(%rbp), %rax	# tem, tmp587
	movq	%rax, -216(%rbp)	# tmp587, trueop1
.L159:
	.loc 1 902 0
	movl	-296(%rbp), %eax	# mode, mode.57
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$2, %eax	#, D.14148
	jne	.L160	#,
	.loc 1 903 0
	movq	-224(%rbp), %rax	# trueop0, tmp589
	movzwl	(%rax), %eax	# trueop0_11->code, D.14145
	cmpw	$55, %ax	#, D.14145
	jne	.L160	#,
	.loc 1 904 0
	movq	-216(%rbp), %rax	# trueop1, tmp590
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$55, %ax	#, D.14145
	jne	.L160	#,
	.loc 1 905 0
	movq	-304(%rbp), %rax	# op0, tmp591
	movzbl	2(%rax), %eax	# op0_1->mode, D.14149
	movzbl	%al, %eax	# D.14149, D.14150
	cmpl	-296(%rbp), %eax	# mode, D.14150
	jne	.L160	#,
	.loc 1 905 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp592
	movzbl	2(%rax), %eax	# op1_2->mode, D.14149
	movzbl	%al, %eax	# D.14149, D.14150
	cmpl	-296(%rbp), %eax	# mode, D.14150
	jne	.L160	#,
.LBB18:
	.loc 1 908 0 is_stmt 1
	movq	-224(%rbp), %rax	# trueop0, tmp593
	movq	%rax, -48(%rbp)	# tmp593, args.trueop0
	.loc 1 909 0
	movq	-216(%rbp), %rax	# trueop1, tmp594
	movq	%rax, -40(%rbp)	# tmp594, args.trueop1
	.loc 1 910 0
	movl	-296(%rbp), %eax	# mode, tmp595
	movl	%eax, -20(%rbp)	# tmp595, args.mode
	.loc 1 911 0
	movl	-292(%rbp), %eax	# code, tmp596
	movl	%eax, -24(%rbp)	# tmp596, args.code
	.loc 1 913 0
	leaq	-48(%rbp), %rax	#, tmp597
	movq	%rax, %rsi	# tmp597,
	movl	$simplify_binary_real, %edi	#,
	call	do_float_handler	#
	testl	%eax, %eax	# D.14147
	je	.L161	#,
	.loc 1 914 0
	movq	-32(%rbp), %rax	# args.result, D.14144
	jmp	.L163	#
.L161:
	.loc 1 915 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L160:
.LBE18:
	.loc 1 920 0
	movl	-296(%rbp), %eax	# mode, mode.58
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$1, %eax	#, D.14148
	jne	.L164	#,
	.loc 1 921 0
	cmpl	$128, -268(%rbp)	#, width
	jne	.L164	#,
	.loc 1 922 0
	movq	-224(%rbp), %rax	# trueop0, tmp599
	movzwl	(%rax), %eax	# trueop0_11->code, D.14145
	cmpw	$55, %ax	#, D.14145
	je	.L165	#,
	.loc 1 923 0
	movq	-224(%rbp), %rax	# trueop0, tmp600
	movzwl	(%rax), %eax	# trueop0_11->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L164	#,
.L165:
	.loc 1 924 0
	movq	-216(%rbp), %rax	# trueop1, tmp601
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$55, %ax	#, D.14145
	je	.L166	#,
	.loc 1 925 0
	movq	-216(%rbp), %rax	# trueop1, tmp602
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L164	#,
.L166:
.LBB19:
	.loc 1 930 0
	movq	-224(%rbp), %rax	# trueop0, tmp603
	movzwl	(%rax), %eax	# trueop0_11->code, D.14145
	cmpw	$55, %ax	#, D.14145
	jne	.L167	#,
	.loc 1 931 0
	movq	-224(%rbp), %rax	# trueop0, tmp604
	movq	16(%rax), %rax	# trueop0_11->fld[1].rtwint, D.14151
	movq	%rax, -208(%rbp)	# D.14151, l1
	movq	-224(%rbp), %rax	# trueop0, tmp605
	movq	24(%rax), %rax	# trueop0_11->fld[2].rtwint, tmp606
	movq	%rax, -192(%rbp)	# tmp606, h1
	jmp	.L168	#
.L167:
	.loc 1 933 0
	movq	-224(%rbp), %rax	# trueop0, tmp607
	movq	8(%rax), %rax	# trueop0_11->fld[0].rtwint, D.14151
	movq	%rax, -208(%rbp)	# D.14151, l1
	movq	-208(%rbp), %rax	# l1, l1.60
	testq	%rax, %rax	# l1.60
	jns	.L169	#,
	.loc 1 933 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.59
	jmp	.L170	#
.L169:
	.loc 1 933 0 discriminator 2
	movl	$0, %eax	#, iftmp.59
.L170:
	.loc 1 933 0 discriminator 3
	movq	%rax, -192(%rbp)	# iftmp.59, h1
.L168:
	.loc 1 935 0 is_stmt 1
	movq	-216(%rbp), %rax	# trueop1, tmp608
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$55, %ax	#, D.14145
	jne	.L171	#,
	.loc 1 936 0
	movq	-216(%rbp), %rax	# trueop1, tmp609
	movq	16(%rax), %rax	# trueop1_12->fld[1].rtwint, D.14151
	movq	%rax, -200(%rbp)	# D.14151, l2
	movq	-216(%rbp), %rax	# trueop1, tmp610
	movq	24(%rax), %rax	# trueop1_12->fld[2].rtwint, tmp611
	movq	%rax, -184(%rbp)	# tmp611, h2
	jmp	.L172	#
.L171:
	.loc 1 938 0
	movq	-216(%rbp), %rax	# trueop1, tmp612
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14151
	movq	%rax, -200(%rbp)	# D.14151, l2
	movq	-200(%rbp), %rax	# l2, l2.62
	testq	%rax, %rax	# l2.62
	jns	.L173	#,
	.loc 1 938 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.61
	jmp	.L174	#
.L173:
	.loc 1 938 0 discriminator 2
	movl	$0, %eax	#, iftmp.61
.L174:
	.loc 1 938 0 discriminator 3
	movq	%rax, -184(%rbp)	# iftmp.61, h2
.L172:
	.loc 1 940 0 is_stmt 1
	movl	-292(%rbp), %eax	# code, tmp614
	subl	$75, %eax	#, tmp613
	cmpl	$20, %eax	#, tmp613
	ja	.L175	#,
	movl	%eax, %eax	# tmp613, tmp615
	movq	.L177(,%rax,8), %rax	#, tmp616
	jmp	*%rax	# tmp616
	.section	.rodata
	.align 8
	.align 4
.L177:
	.quad	.L176
	.quad	.L178
	.quad	.L175
	.quad	.L179
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L180
	.quad	.L181
	.quad	.L182
	.quad	.L183
	.quad	.L175
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L185
	.quad	.L186
	.quad	.L187
	.quad	.L188
	.text
.L178:
	.loc 1 944 0
	leaq	-48(%rbp), %rcx	#, tmp617
	leaq	-80(%rbp), %rdx	#, tmp618
	movq	-184(%rbp), %rsi	# h2, tmp619
	movq	-200(%rbp), %rax	# l2, tmp620
	movq	%rax, %rdi	# tmp620,
	call	neg_double	#
	.loc 1 945 0
	movq	-80(%rbp), %rax	# lv, tmp621
	movq	%rax, -200(%rbp)	# tmp621, l2
	movq	-48(%rbp), %rax	# hv, tmp622
	movq	%rax, -184(%rbp)	# tmp622, h2
.L176:
	.loc 1 950 0
	leaq	-48(%rbp), %r8	#, tmp623
	leaq	-80(%rbp), %rdi	#, tmp624
	movq	-184(%rbp), %rcx	# h2, tmp625
	movq	-200(%rbp), %rdx	# l2, tmp626
	movq	-192(%rbp), %rsi	# h1, tmp627
	movq	-208(%rbp), %rax	# l1, tmp628
	movq	%r8, %r9	# tmp623,
	movq	%rdi, %r8	# tmp624,
	movq	%rax, %rdi	# tmp628,
	call	add_double	#
	.loc 1 951 0
	jmp	.L189	#
.L179:
	.loc 1 954 0
	leaq	-48(%rbp), %r8	#, tmp629
	leaq	-80(%rbp), %rdi	#, tmp630
	movq	-184(%rbp), %rcx	# h2, tmp631
	movq	-200(%rbp), %rdx	# l2, tmp632
	movq	-192(%rbp), %rsi	# h1, tmp633
	movq	-208(%rbp), %rax	# l1, tmp634
	movq	%r8, %r9	# tmp629,
	movq	%rdi, %r8	# tmp630,
	movq	%rax, %rdi	# tmp634,
	call	mul_double	#
	.loc 1 955 0
	jmp	.L189	#
.L180:
	.loc 1 960 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L181:
	.loc 1 963 0
	movq	-200(%rbp), %rax	# l2, tmp635
	movq	-208(%rbp), %rdx	# l1, tmp636
	andq	%rdx, %rax	# tmp636, lv.63
	movq	%rax, -80(%rbp)	# lv.63, lv
	movq	-184(%rbp), %rax	# h2, tmp637
	movq	-192(%rbp), %rdx	# h1, tmp638
	andq	%rdx, %rax	# tmp638, hv.64
	movq	%rax, -48(%rbp)	# hv.64, hv
	.loc 1 964 0
	jmp	.L189	#
.L182:
	.loc 1 967 0
	movq	-200(%rbp), %rax	# l2, tmp639
	movq	-208(%rbp), %rdx	# l1, tmp640
	orq	%rdx, %rax	# tmp640, lv.65
	movq	%rax, -80(%rbp)	# lv.65, lv
	movq	-184(%rbp), %rax	# h2, tmp641
	movq	-192(%rbp), %rdx	# h1, tmp642
	orq	%rdx, %rax	# tmp642, hv.66
	movq	%rax, -48(%rbp)	# hv.66, hv
	.loc 1 968 0
	jmp	.L189	#
.L183:
	.loc 1 971 0
	movq	-200(%rbp), %rax	# l2, tmp643
	movq	-208(%rbp), %rdx	# l1, tmp644
	xorq	%rdx, %rax	# tmp644, lv.67
	movq	%rax, -80(%rbp)	# lv.67, lv
	movq	-184(%rbp), %rax	# h2, tmp645
	movq	-192(%rbp), %rdx	# h1, tmp646
	xorq	%rdx, %rax	# tmp646, hv.68
	movq	%rax, -48(%rbp)	# hv.68, hv
	.loc 1 972 0
	jmp	.L189	#
.L185:
	.loc 1 975 0
	movq	-192(%rbp), %rax	# h1, tmp647
	cmpq	-184(%rbp), %rax	# h2, tmp647
	jl	.L191	#,
	.loc 1 976 0
	movq	-192(%rbp), %rax	# h1, tmp648
	cmpq	-184(%rbp), %rax	# h2, tmp648
	jne	.L192	#,
	.loc 1 977 0
	movq	-208(%rbp), %rax	# l1, tmp649
	cmpq	-200(%rbp), %rax	# l2, tmp649
	jae	.L192	#,
.L191:
	.loc 1 979 0
	movq	-208(%rbp), %rax	# l1, tmp650
	movq	%rax, -80(%rbp)	# tmp650, lv
	movq	-192(%rbp), %rax	# h1, tmp651
	movq	%rax, -48(%rbp)	# tmp651, hv
	nop
	.loc 1 982 0
	jmp	.L189	#
.L192:
	.loc 1 981 0
	movq	-200(%rbp), %rax	# l2, tmp652
	movq	%rax, -80(%rbp)	# tmp652, lv
	movq	-184(%rbp), %rax	# h2, tmp653
	movq	%rax, -48(%rbp)	# tmp653, hv
	.loc 1 982 0
	jmp	.L189	#
.L186:
	.loc 1 985 0
	movq	-192(%rbp), %rax	# h1, tmp654
	cmpq	-184(%rbp), %rax	# h2, tmp654
	jg	.L194	#,
	.loc 1 986 0
	movq	-192(%rbp), %rax	# h1, tmp655
	cmpq	-184(%rbp), %rax	# h2, tmp655
	jne	.L195	#,
	.loc 1 987 0
	movq	-208(%rbp), %rax	# l1, tmp656
	cmpq	-200(%rbp), %rax	# l2, tmp656
	jbe	.L195	#,
.L194:
	.loc 1 989 0
	movq	-208(%rbp), %rax	# l1, tmp657
	movq	%rax, -80(%rbp)	# tmp657, lv
	movq	-192(%rbp), %rax	# h1, tmp658
	movq	%rax, -48(%rbp)	# tmp658, hv
	nop
	.loc 1 992 0
	jmp	.L189	#
.L195:
	.loc 1 991 0
	movq	-200(%rbp), %rax	# l2, tmp659
	movq	%rax, -80(%rbp)	# tmp659, lv
	movq	-184(%rbp), %rax	# h2, tmp660
	movq	%rax, -48(%rbp)	# tmp660, hv
	.loc 1 992 0
	jmp	.L189	#
.L187:
	.loc 1 995 0
	movq	-192(%rbp), %rdx	# h1, h1.69
	movq	-184(%rbp), %rax	# h2, h2.70
	cmpq	%rax, %rdx	# h2.70, h1.69
	jb	.L197	#,
	.loc 1 996 0
	movq	-192(%rbp), %rax	# h1, tmp661
	cmpq	-184(%rbp), %rax	# h2, tmp661
	jne	.L198	#,
	.loc 1 997 0
	movq	-208(%rbp), %rax	# l1, tmp662
	cmpq	-200(%rbp), %rax	# l2, tmp662
	jae	.L198	#,
.L197:
	.loc 1 999 0
	movq	-208(%rbp), %rax	# l1, tmp663
	movq	%rax, -80(%rbp)	# tmp663, lv
	movq	-192(%rbp), %rax	# h1, tmp664
	movq	%rax, -48(%rbp)	# tmp664, hv
	nop
	.loc 1 1002 0
	jmp	.L189	#
.L198:
	.loc 1 1001 0
	movq	-200(%rbp), %rax	# l2, tmp665
	movq	%rax, -80(%rbp)	# tmp665, lv
	movq	-184(%rbp), %rax	# h2, tmp666
	movq	%rax, -48(%rbp)	# tmp666, hv
	.loc 1 1002 0
	jmp	.L189	#
.L188:
	.loc 1 1005 0
	movq	-192(%rbp), %rdx	# h1, h1.71
	movq	-184(%rbp), %rax	# h2, h2.72
	cmpq	%rax, %rdx	# h2.72, h1.71
	ja	.L200	#,
	.loc 1 1006 0
	movq	-192(%rbp), %rax	# h1, tmp667
	cmpq	-184(%rbp), %rax	# h2, tmp667
	jne	.L201	#,
	.loc 1 1007 0
	movq	-208(%rbp), %rax	# l1, tmp668
	cmpq	-200(%rbp), %rax	# l2, tmp668
	jbe	.L201	#,
.L200:
	.loc 1 1009 0
	movq	-208(%rbp), %rax	# l1, tmp669
	movq	%rax, -80(%rbp)	# tmp669, lv
	movq	-192(%rbp), %rax	# h1, tmp670
	movq	%rax, -48(%rbp)	# tmp670, hv
	nop
	.loc 1 1012 0
	jmp	.L189	#
.L201:
	.loc 1 1011 0
	movq	-200(%rbp), %rax	# l2, tmp671
	movq	%rax, -80(%rbp)	# tmp671, lv
	movq	-184(%rbp), %rax	# h2, tmp672
	movq	%rax, -48(%rbp)	# tmp672, hv
	.loc 1 1012 0
	jmp	.L189	#
.L184:
	.loc 1 1022 0
	cmpq	$0, -184(%rbp)	#, h2
	jne	.L203	#,
	.loc 1 1022 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# mode, mode.73
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14145
	movzwl	%ax, %eax	# D.14145, D.14152
	cmpq	-200(%rbp), %rax	# l2, D.14152
	ja	.L204	#,
.L203:
	.loc 1 1023 0 is_stmt 1
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L204:
	.loc 1 1025 0
	cmpl	$90, -292(%rbp)	#, code
	je	.L205	#,
	.loc 1 1025 0 is_stmt 0 discriminator 1
	cmpl	$89, -292(%rbp)	#, code
	jne	.L206	#,
.L205:
	.loc 1 1026 0 is_stmt 1
	cmpl	$89, -292(%rbp)	#, code
	sete	%al	#, D.14153
	movzbl	%al, %edi	# D.14153, D.14147
	movl	-296(%rbp), %eax	# mode, mode.74
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14145
	movzwl	%ax, %ecx	# D.14145, D.14150
	movq	-200(%rbp), %rdx	# l2, l2.75
	leaq	-48(%rbp), %r9	#, tmp675
	leaq	-80(%rbp), %r8	#, tmp676
	movq	-192(%rbp), %rsi	# h1, tmp677
	movq	-208(%rbp), %rax	# l1, tmp678
	movl	%edi, (%rsp)	# D.14147,
	movq	%rax, %rdi	# tmp678,
	call	rshift_double	#
	jmp	.L207	#
.L206:
	.loc 1 1028 0
	cmpl	$87, -292(%rbp)	#, code
	jne	.L208	#,
	.loc 1 1029 0
	movl	-296(%rbp), %eax	# mode, mode.76
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14145
	movzwl	%ax, %ecx	# D.14145, D.14150
	movq	-200(%rbp), %rdx	# l2, l2.77
	leaq	-48(%rbp), %r8	#, tmp680
	leaq	-80(%rbp), %rdi	#, tmp681
	movq	-192(%rbp), %rsi	# h1, tmp682
	movq	-208(%rbp), %rax	# l1, tmp683
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp680,
	movq	%rdi, %r8	# tmp681,
	movq	%rax, %rdi	# tmp683,
	call	lshift_double	#
	jmp	.L207	#
.L208:
	.loc 1 1030 0
	cmpl	$88, -292(%rbp)	#, code
	jne	.L209	#,
	.loc 1 1031 0
	movl	-296(%rbp), %eax	# mode, mode.78
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14145
	movzwl	%ax, %ecx	# D.14145, D.14150
	movq	-200(%rbp), %rdx	# l2, l2.79
	leaq	-48(%rbp), %r8	#, tmp685
	leaq	-80(%rbp), %rdi	#, tmp686
	movq	-192(%rbp), %rsi	# h1, tmp687
	movq	-208(%rbp), %rax	# l1, tmp688
	movq	%r8, %r9	# tmp685,
	movq	%rdi, %r8	# tmp686,
	movq	%rax, %rdi	# tmp688,
	call	lrotate_double	#
	jmp	.L207	#
.L209:
	.loc 1 1033 0
	movl	-296(%rbp), %eax	# mode, mode.80
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14145
	movzwl	%ax, %ecx	# D.14145, D.14150
	movq	-200(%rbp), %rdx	# l2, l2.81
	leaq	-48(%rbp), %r8	#, tmp690
	leaq	-80(%rbp), %rdi	#, tmp691
	movq	-192(%rbp), %rsi	# h1, tmp692
	movq	-208(%rbp), %rax	# l1, tmp693
	movq	%r8, %r9	# tmp690,
	movq	%rdi, %r8	# tmp691,
	movq	%rax, %rdi	# tmp693,
	call	rrotate_double	#
	.loc 1 1034 0
	jmp	.L189	#
.L207:
	jmp	.L189	#
.L175:
	.loc 1 1037 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L189:
	.loc 1 1040 0
	movq	-48(%rbp), %rcx	# hv, hv.82
	movq	-80(%rbp), %rax	# lv, lv.83
	movl	-296(%rbp), %edx	# mode, tmp694
	movq	%rcx, %rsi	# hv.82,
	movq	%rax, %rdi	# lv.84,
	call	immed_double_const	#
	jmp	.L163	#
.L164:
.LBE19:
	.loc 1 1043 0
	movq	-304(%rbp), %rax	# op0, tmp695
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L210	#,
	.loc 1 1043 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp696
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L210	#,
	.loc 1 1044 0 is_stmt 1
	cmpl	$64, -268(%rbp)	#, width
	ja	.L210	#,
	.loc 1 1044 0 is_stmt 0 discriminator 1
	cmpl	$0, -268(%rbp)	#, width
	jne	.L211	#,
.L210:
	.loc 1 1049 0 is_stmt 1
	movl	-292(%rbp), %eax	# code, tmp698
	subl	$74, %eax	#, tmp697
	cmpl	$75, %eax	#, tmp697
	ja	.L212	#,
	movl	%eax, %eax	# tmp697, tmp699
	movq	.L214(,%rax,8), %rax	#, tmp700
	jmp	*%rax	# tmp700
	.section	.rodata
	.align 8
	.align 4
.L214:
	.quad	.L213
	.quad	.L215
	.quad	.L216
	.quad	.L212
	.quad	.L217
	.quad	.L218
	.quad	.L219
	.quad	.L220
	.quad	.L221
	.quad	.L222
	.quad	.L223
	.quad	.L224
	.quad	.L212
	.quad	.L225
	.quad	.L226
	.quad	.L225
	.quad	.L225
	.quad	.L226
	.quad	.L227
	.quad	.L228
	.quad	.L229
	.quad	.L230
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
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L212
	.quad	.L231
	.quad	.L231
	.quad	.L231
	.quad	.L231
	.text
.L215:
	.loc 1 1055 0
	movl	-296(%rbp), %eax	# mode, mode.85
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	.loc 1 1054 0
	cmpl	$2, %eax	#, D.14148
	je	.L232	#,
	.loc 1 1055 0
	movl	-296(%rbp), %eax	# mode, mode.86
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$6, %eax	#, D.14148
	je	.L232	#,
	.loc 1 1055 0 is_stmt 0 discriminator 2
	movl	-296(%rbp), %eax	# mode, mode.87
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$8, %eax	#, D.14148
	jne	.L233	#,
.L232:
	.loc 1 1055 0 discriminator 1
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.88
	testl	%eax, %eax	# flag_unsafe_math_optimizations.88
	jne	.L233	#,
	.loc 1 1056 0 is_stmt 1
	jmp	.L234	#
.L233:
	.loc 1 1058 0
	movl	-296(%rbp), %eax	# mode, mode.89
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L235	#,
	.loc 1 1059 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L235:
	.loc 1 1062 0
	movq	-304(%rbp), %rax	# op0, tmp705
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$77, %ax	#, D.14145
	jne	.L236	#,
	.loc 1 1063 0
	movq	-304(%rbp), %rax	# op0, tmp706
	movq	8(%rax), %rcx	# op0_1->fld[0].rtx, D.14155
	movq	-312(%rbp), %rdx	# op1, tmp707
	movl	-296(%rbp), %eax	# mode, tmp708
	movl	%eax, %esi	# tmp708,
	movl	$76, %edi	#,
	call	simplify_gen_binary	#
	jmp	.L163	#
.L236:
	.loc 1 1064 0
	movq	-312(%rbp), %rax	# op1, tmp709
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$77, %ax	#, D.14145
	jne	.L237	#,
	.loc 1 1065 0
	movq	-312(%rbp), %rax	# op1, tmp710
	movq	8(%rax), %rcx	# op1_2->fld[0].rtx, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp711
	movl	-296(%rbp), %eax	# mode, tmp712
	movl	%eax, %esi	# tmp712,
	movl	$76, %edi	#,
	call	simplify_gen_binary	#
	jmp	.L163	#
.L237:
	.loc 1 1068 0
	movl	-296(%rbp), %eax	# mode, mode.90
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$1, %eax	#, D.14148
	je	.L238	#,
	.loc 1 1068 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# mode, mode.91
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$3, %eax	#, D.14148
	je	.L238	#,
	movl	-296(%rbp), %eax	# mode, mode.92
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$5, %eax	#, D.14148
	je	.L238	#,
	movl	-296(%rbp), %eax	# mode, mode.93
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$7, %eax	#, D.14148
	jne	.L239	#,
.L238:
	.loc 1 1069 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp717
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$86, %ax	#, D.14145
	jne	.L239	#,
	.loc 1 1070 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L239	#,
	.loc 1 1071 0
	movq	-304(%rbp), %rax	# op0, tmp718
	movq	8(%rax), %rdx	# op0_1->fld[0].rtx, D.14155
	movl	-296(%rbp), %eax	# mode, tmp719
	movl	%eax, %esi	# tmp719,
	movl	$77, %edi	#,
	call	gen_rtx_fmt_e	#
	jmp	.L163	#
.L239:
	.loc 1 1079 0
	movq	-304(%rbp), %rax	# op0, tmp720
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$67, %ax	#, D.14145
	je	.L240	#,
	.loc 1 1079 0 is_stmt 0 discriminator 2
	movq	-304(%rbp), %rax	# op0, tmp721
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$68, %ax	#, D.14145
	je	.L240	#,
	.loc 1 1079 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp722
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$54, %ax	#, D.14145
	je	.L240	#,
	movq	-304(%rbp), %rax	# op0, tmp723
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$55, %ax	#, D.14145
	je	.L240	#,
	movq	-304(%rbp), %rax	# op0, tmp724
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$58, %ax	#, D.14145
	je	.L240	#,
	movq	-304(%rbp), %rax	# op0, tmp725
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$134, %ax	#, D.14145
	je	.L240	#,
	movq	-304(%rbp), %rax	# op0, tmp726
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$56, %ax	#, D.14145
	je	.L240	#,
	movq	-304(%rbp), %rax	# op0, tmp727
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$140, %ax	#, D.14145
	jne	.L241	#,
.L240:
	movq	-304(%rbp), %rax	# op0, tmp728
	movzbl	2(%rax), %eax	# op0_1->mode, D.14149
	testb	%al, %al	# D.14149
	je	.L241	#,
	.loc 1 1080 0 is_stmt 1
	movq	-312(%rbp), %rax	# op1, tmp729
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L241	#,
	.loc 1 1081 0
	movq	-312(%rbp), %rax	# op1, tmp730
	movq	8(%rax), %rdx	# op1_2->fld[0].rtwint, D.14151
	movq	-304(%rbp), %rax	# op0, tmp731
	movq	%rdx, %rsi	# D.14151,
	movq	%rax, %rdi	# tmp731,
	call	plus_constant_wide	#
	jmp	.L163	#
.L241:
	.loc 1 1082 0
	movq	-312(%rbp), %rax	# op1, tmp732
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$67, %ax	#, D.14145
	je	.L242	#,
	.loc 1 1082 0 is_stmt 0 discriminator 2
	movq	-312(%rbp), %rax	# op1, tmp733
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$68, %ax	#, D.14145
	je	.L242	#,
	.loc 1 1082 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp734
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$54, %ax	#, D.14145
	je	.L242	#,
	movq	-312(%rbp), %rax	# op1, tmp735
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$55, %ax	#, D.14145
	je	.L242	#,
	movq	-312(%rbp), %rax	# op1, tmp736
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$58, %ax	#, D.14145
	je	.L242	#,
	movq	-312(%rbp), %rax	# op1, tmp737
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$134, %ax	#, D.14145
	je	.L242	#,
	movq	-312(%rbp), %rax	# op1, tmp738
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$56, %ax	#, D.14145
	je	.L242	#,
	movq	-312(%rbp), %rax	# op1, tmp739
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$140, %ax	#, D.14145
	jne	.L243	#,
.L242:
	movq	-312(%rbp), %rax	# op1, tmp740
	movzbl	2(%rax), %eax	# op1_2->mode, D.14149
	testb	%al, %al	# D.14149
	je	.L243	#,
	.loc 1 1083 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp741
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L243	#,
	.loc 1 1084 0
	movq	-304(%rbp), %rax	# op0, tmp742
	movq	8(%rax), %rdx	# op0_1->fld[0].rtwint, D.14151
	movq	-312(%rbp), %rax	# op1, tmp743
	movq	%rdx, %rsi	# D.14151,
	movq	%rax, %rdi	# tmp743,
	call	plus_constant_wide	#
	jmp	.L163	#
.L243:
	.loc 1 1092 0
	movl	-296(%rbp), %eax	# mode, mode.94
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$2, %eax	#, D.14148
	je	.L244	#,
	.loc 1 1092 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# mode, mode.95
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$6, %eax	#, D.14148
	je	.L244	#,
	movl	-296(%rbp), %eax	# mode, mode.96
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$8, %eax	#, D.14148
	je	.L244	#,
.LBB20:
	.loc 1 1094 0 is_stmt 1
	movq	$1, -176(%rbp)	#, coeff0
	movq	$1, -168(%rbp)	#, coeff1
	.loc 1 1095 0
	movq	-304(%rbp), %rax	# op0, tmp747
	movq	%rax, -160(%rbp)	# tmp747, lhs
	movq	-312(%rbp), %rax	# op1, tmp748
	movq	%rax, -152(%rbp)	# tmp748, rhs
	.loc 1 1096 0
	movl	$0, -276(%rbp)	#, had_mult
	.loc 1 1098 0
	movq	-160(%rbp), %rax	# lhs, tmp749
	movzwl	(%rax), %eax	# lhs_304->code, D.14145
	cmpw	$77, %ax	#, D.14145
	jne	.L245	#,
	.loc 1 1099 0
	movq	$-1, -176(%rbp)	#, coeff0
	movq	-160(%rbp), %rax	# lhs, tmp750
	movq	8(%rax), %rax	# lhs_304->fld[0].rtx, tmp751
	movq	%rax, -160(%rbp)	# tmp751, lhs
	jmp	.L246	#
.L245:
	.loc 1 1100 0
	movq	-160(%rbp), %rax	# lhs, tmp752
	movzwl	(%rax), %eax	# lhs_304->code, D.14145
	cmpw	$78, %ax	#, D.14145
	jne	.L247	#,
	.loc 1 1101 0
	movq	-160(%rbp), %rax	# lhs, tmp753
	movq	16(%rax), %rax	# lhs_304->fld[1].rtx, D.14155
	movzwl	(%rax), %eax	# _311->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L247	#,
	.loc 1 1103 0
	movq	-160(%rbp), %rax	# lhs, tmp754
	movq	16(%rax), %rax	# lhs_304->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _313->fld[0].rtwint, tmp755
	movq	%rax, -176(%rbp)	# tmp755, coeff0
	movq	-160(%rbp), %rax	# lhs, tmp756
	movq	8(%rax), %rax	# lhs_304->fld[0].rtx, tmp757
	movq	%rax, -160(%rbp)	# tmp757, lhs
	.loc 1 1104 0
	movl	$1, -276(%rbp)	#, had_mult
	jmp	.L246	#
.L247:
	.loc 1 1106 0
	movq	-160(%rbp), %rax	# lhs, tmp758
	movzwl	(%rax), %eax	# lhs_304->code, D.14145
	cmpw	$87, %ax	#, D.14145
	jne	.L246	#,
	.loc 1 1107 0
	movq	-160(%rbp), %rax	# lhs, tmp759
	movq	16(%rax), %rax	# lhs_304->fld[1].rtx, D.14155
	movzwl	(%rax), %eax	# _318->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L246	#,
	.loc 1 1108 0
	movq	-160(%rbp), %rax	# lhs, tmp760
	movq	16(%rax), %rax	# lhs_304->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _320->fld[0].rtwint, D.14151
	testq	%rax, %rax	# D.14151
	js	.L246	#,
	.loc 1 1109 0
	movq	-160(%rbp), %rax	# lhs, tmp761
	movq	16(%rax), %rax	# lhs_304->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _322->fld[0].rtwint, D.14151
	cmpq	$63, %rax	#, D.14151
	jg	.L246	#,
	.loc 1 1111 0
	movq	-160(%rbp), %rax	# lhs, tmp762
	movq	16(%rax), %rax	# lhs_304->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _324->fld[0].rtwint, D.14151
	movl	$1, %edx	#, tmp763
	movl	%eax, %ecx	# D.14147, tmp1187
	salq	%cl, %rdx	# tmp1187, tmp764
	movq	%rdx, %rax	# tmp764, tmp764
	movq	%rax, -176(%rbp)	# tmp764, coeff0
	.loc 1 1112 0
	movq	-160(%rbp), %rax	# lhs, tmp765
	movq	8(%rax), %rax	# lhs_304->fld[0].rtx, tmp766
	movq	%rax, -160(%rbp)	# tmp766, lhs
.L246:
	.loc 1 1115 0
	movq	-152(%rbp), %rax	# rhs, tmp767
	movzwl	(%rax), %eax	# rhs_305->code, D.14145
	cmpw	$77, %ax	#, D.14145
	jne	.L248	#,
	.loc 1 1116 0
	movq	$-1, -168(%rbp)	#, coeff1
	movq	-152(%rbp), %rax	# rhs, tmp768
	movq	8(%rax), %rax	# rhs_305->fld[0].rtx, tmp769
	movq	%rax, -152(%rbp)	# tmp769, rhs
	jmp	.L249	#
.L248:
	.loc 1 1117 0
	movq	-152(%rbp), %rax	# rhs, tmp770
	movzwl	(%rax), %eax	# rhs_305->code, D.14145
	cmpw	$78, %ax	#, D.14145
	jne	.L250	#,
	.loc 1 1118 0
	movq	-152(%rbp), %rax	# rhs, tmp771
	movq	16(%rax), %rax	# rhs_305->fld[1].rtx, D.14155
	movzwl	(%rax), %eax	# _333->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L250	#,
	.loc 1 1120 0
	movq	-152(%rbp), %rax	# rhs, tmp772
	movq	16(%rax), %rax	# rhs_305->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _335->fld[0].rtwint, tmp773
	movq	%rax, -168(%rbp)	# tmp773, coeff1
	movq	-152(%rbp), %rax	# rhs, tmp774
	movq	8(%rax), %rax	# rhs_305->fld[0].rtx, tmp775
	movq	%rax, -152(%rbp)	# tmp775, rhs
	.loc 1 1121 0
	movl	$1, -276(%rbp)	#, had_mult
	jmp	.L249	#
.L250:
	.loc 1 1123 0
	movq	-152(%rbp), %rax	# rhs, tmp776
	movzwl	(%rax), %eax	# rhs_305->code, D.14145
	cmpw	$87, %ax	#, D.14145
	jne	.L249	#,
	.loc 1 1124 0
	movq	-152(%rbp), %rax	# rhs, tmp777
	movq	16(%rax), %rax	# rhs_305->fld[1].rtx, D.14155
	movzwl	(%rax), %eax	# _340->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L249	#,
	.loc 1 1125 0
	movq	-152(%rbp), %rax	# rhs, tmp778
	movq	16(%rax), %rax	# rhs_305->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _342->fld[0].rtwint, D.14151
	testq	%rax, %rax	# D.14151
	js	.L249	#,
	.loc 1 1126 0
	movq	-152(%rbp), %rax	# rhs, tmp779
	movq	16(%rax), %rax	# rhs_305->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _344->fld[0].rtwint, D.14151
	cmpq	$63, %rax	#, D.14151
	jg	.L249	#,
	.loc 1 1128 0
	movq	-152(%rbp), %rax	# rhs, tmp780
	movq	16(%rax), %rax	# rhs_305->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _346->fld[0].rtwint, D.14151
	movl	$1, %edx	#, tmp781
	movl	%eax, %ecx	# D.14147, tmp1189
	salq	%cl, %rdx	# tmp1189, tmp782
	movq	%rdx, %rax	# tmp782, tmp782
	movq	%rax, -168(%rbp)	# tmp782, coeff1
	.loc 1 1129 0
	movq	-152(%rbp), %rax	# rhs, tmp783
	movq	8(%rax), %rax	# rhs_305->fld[0].rtx, tmp784
	movq	%rax, -152(%rbp)	# tmp784, rhs
.L249:
	.loc 1 1132 0
	movq	-152(%rbp), %rdx	# rhs, tmp785
	movq	-160(%rbp), %rax	# lhs, tmp786
	movq	%rdx, %rsi	# tmp785,
	movq	%rax, %rdi	# tmp786,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L244	#,
	.loc 1 1134 0
	movq	-168(%rbp), %rax	# coeff1, tmp787
	movq	-176(%rbp), %rdx	# coeff0, tmp788
	addq	%rdx, %rax	# tmp788, D.14151
	movq	%rax, %rsi	# D.14151,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14155
	movq	-160(%rbp), %rdx	# lhs, tmp789
	movl	-296(%rbp), %eax	# mode, tmp790
	movl	%eax, %esi	# tmp790,
	movl	$78, %edi	#,
	call	simplify_gen_binary	#
	movq	%rax, -112(%rbp)	# tmp791, tem
	.loc 1 1136 0
	movq	-112(%rbp), %rax	# tem, tmp792
	movzwl	(%rax), %eax	# tem_354->code, D.14145
	cmpw	$78, %ax	#, D.14145
	jne	.L251	#,
	.loc 1 1136 0 is_stmt 0 discriminator 2
	cmpl	$0, -276(%rbp)	#, had_mult
	je	.L252	#,
.L251:
	.loc 1 1136 0 discriminator 1
	movq	-112(%rbp), %rax	# tem, iftmp.97
	jmp	.L253	#
.L252:
	movl	$0, %eax	#, iftmp.97
.L253:
	.loc 1 1136 0 discriminator 3
	jmp	.L163	#
.L244:
.LBE20:
	.loc 1 1146 0 is_stmt 1
	movl	-296(%rbp), %eax	# mode, mode.98
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$1, %eax	#, D.14148
	je	.L254	#,
	.loc 1 1146 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# mode, mode.99
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$3, %eax	#, D.14148
	je	.L254	#,
	movl	-296(%rbp), %eax	# mode, mode.100
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$5, %eax	#, D.14148
	je	.L254	#,
	movl	-296(%rbp), %eax	# mode, mode.101
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$7, %eax	#, D.14148
	jne	.L255	#,
.L254:
	.loc 1 1147 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp797
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$75, %ax	#, D.14145
	je	.L256	#,
	.loc 1 1147 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp798
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$76, %ax	#, D.14145
	je	.L256	#,
	.loc 1 1148 0 is_stmt 1
	movq	-312(%rbp), %rax	# op1, tmp799
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$75, %ax	#, D.14145
	je	.L256	#,
	.loc 1 1148 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp800
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$76, %ax	#, D.14145
	je	.L256	#,
	.loc 1 1149 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp801
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$58, %ax	#, D.14145
	jne	.L257	#,
	.loc 1 1150 0
	movq	-304(%rbp), %rax	# op0, tmp802
	movq	8(%rax), %rax	# op0_1->fld[0].rtx, D.14155
	movzwl	(%rax), %eax	# _372->code, D.14145
	cmpw	$75, %ax	#, D.14145
	je	.L256	#,
.L257:
	.loc 1 1151 0
	movq	-312(%rbp), %rax	# op1, tmp803
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$58, %ax	#, D.14145
	jne	.L255	#,
	.loc 1 1152 0
	movq	-312(%rbp), %rax	# op1, tmp804
	movq	8(%rax), %rax	# op1_2->fld[0].rtx, D.14155
	movzwl	(%rax), %eax	# _375->code, D.14145
	cmpw	$75, %ax	#, D.14145
	jne	.L255	#,
.L256:
	.loc 1 1153 0
	movq	-312(%rbp), %rcx	# op1, tmp805
	movq	-304(%rbp), %rdx	# op0, tmp806
	movl	-296(%rbp), %esi	# mode, tmp807
	movl	-292(%rbp), %eax	# code, tmp808
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp808,
	call	simplify_plus_minus	#
	movq	%rax, -112(%rbp)	# tmp809, tem
	cmpq	$0, -112(%rbp)	#, tem
	je	.L255	#,
	.loc 1 1154 0
	movq	-112(%rbp), %rax	# tem, D.14144
	jmp	.L163	#
.L255:
	.loc 1 1155 0
	jmp	.L234	#
.L213:
	.loc 1 1172 0
	movq	-304(%rbp), %rax	# op0, tmp810
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$105, %ax	#, D.14145
	jne	.L258	#,
	.loc 1 1172 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp811
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$107, %ax	#, D.14145
	je	.L259	#,
.L258:
	.loc 1 1173 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp812
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$109, %ax	#, D.14145
	jne	.L260	#,
	.loc 1 1173 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp813
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$111, %ax	#, D.14145
	jne	.L260	#,
.L259:
	.loc 1 1174 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp814
	movq	16(%rax), %rdx	# op0_1->fld[1].rtx, D.14155
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14155
	cmpq	%rax, %rdx	# D.14155, D.14155
	jne	.L260	#,
	.loc 1 1174 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp815
	movq	16(%rax), %rdx	# op1_2->fld[1].rtx, D.14155
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14155
	cmpq	%rax, %rdx	# D.14155, D.14155
	jne	.L260	#,
.LBB21:
	.loc 1 1176 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp816
	movq	8(%rax), %rax	# op0_1->fld[0].rtx, tmp817
	movq	%rax, -104(%rbp)	# tmp817, xop00
	.loc 1 1177 0
	movq	-312(%rbp), %rax	# op1, tmp818
	movq	8(%rax), %rax	# op1_2->fld[0].rtx, tmp819
	movq	%rax, -96(%rbp)	# tmp819, xop10
	.loc 1 1182 0
	movq	-104(%rbp), %rax	# xop00, tmp820
	movzwl	(%rax), %eax	# xop00_387->code, D.14145
	cmpw	$61, %ax	#, D.14145
	jne	.L260	#,
	.loc 1 1182 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# xop10, tmp821
	movzwl	(%rax), %eax	# xop10_388->code, D.14145
	cmpw	$61, %ax	#, D.14145
	jne	.L260	#,
	.loc 1 1183 0 is_stmt 1
	movq	-104(%rbp), %rax	# xop00, tmp822
	movzbl	2(%rax), %edx	# xop00_387->mode, D.14149
	movq	-96(%rbp), %rax	# xop10, tmp823
	movzbl	2(%rax), %eax	# xop10_388->mode, D.14149
	cmpb	%al, %dl	# D.14149, D.14149
	jne	.L260	#,
	.loc 1 1184 0
	movq	-104(%rbp), %rax	# xop00, tmp824
	movl	8(%rax), %edx	# xop00_387->fld[0].rtuint, D.14150
	movq	-96(%rbp), %rax	# xop10, tmp825
	movl	8(%rax), %eax	# xop10_388->fld[0].rtuint, D.14150
	cmpl	%eax, %edx	# D.14150, D.14150
	jne	.L260	#,
	.loc 1 1185 0
	movq	-104(%rbp), %rax	# xop00, tmp826
	movzbl	2(%rax), %eax	# xop00_387->mode, D.14149
	movzbl	%al, %eax	# D.14149, D.14147
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$4, %eax	#, D.14148
	jne	.L260	#,
	.loc 1 1186 0
	movq	-96(%rbp), %rax	# xop10, tmp828
	movzbl	2(%rax), %eax	# xop10_388->mode, D.14149
	movzbl	%al, %eax	# D.14149, D.14147
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$4, %eax	#, D.14148
	jne	.L260	#,
	.loc 1 1188 0
	movq	-104(%rbp), %rax	# xop00, D.14144
	jmp	.L163	#
.L260:
.LBE21:
	.loc 1 1190 0
	jmp	.L234	#
.L216:
	.loc 1 1196 0
	movl	-296(%rbp), %eax	# mode, mode.102
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	.loc 1 1195 0
	cmpl	$2, %eax	#, D.14148
	je	.L261	#,
	.loc 1 1196 0
	movl	-296(%rbp), %eax	# mode, mode.103
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$6, %eax	#, D.14148
	je	.L261	#,
	.loc 1 1196 0 is_stmt 0 discriminator 2
	movl	-296(%rbp), %eax	# mode, mode.104
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$8, %eax	#, D.14148
	jne	.L262	#,
.L261:
	.loc 1 1196 0 discriminator 1
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.105
	testl	%eax, %eax	# flag_unsafe_math_optimizations.105
	jne	.L262	#,
	.loc 1 1197 0 is_stmt 1
	jmp	.L234	#
.L262:
	.loc 1 1202 0
	movq	-216(%rbp), %rdx	# trueop1, tmp833
	movq	-224(%rbp), %rax	# trueop0, tmp834
	movq	%rdx, %rsi	# tmp833,
	movq	%rax, %rdi	# tmp834,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L263	#,
	.loc 1 1203 0
	movq	-304(%rbp), %rax	# op0, tmp835
	movq	%rax, %rdi	# tmp835,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L263	#,
	.loc 1 1204 0
	movl	-296(%rbp), %eax	# mode, mode.106
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$2, %eax	#, D.14148
	je	.L264	#,
	.loc 1 1204 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# mode, mode.107
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$6, %eax	#, D.14148
	je	.L264	#,
	movl	-296(%rbp), %eax	# mode, mode.108
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$8, %eax	#, D.14148
	jne	.L265	#,
.L264:
	.loc 1 1204 0 discriminator 2
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.109
	testl	%eax, %eax	# flag_unsafe_math_optimizations.109
	je	.L263	#,
.L265:
	.loc 1 1205 0 is_stmt 1
	movl	-296(%rbp), %eax	# mode, mode.110
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14144
	jmp	.L163	#
.L263:
	.loc 1 1208 0
	movl	-296(%rbp), %eax	# mode, mode.111
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14155
	cmpq	-224(%rbp), %rax	# trueop0, D.14155
	jne	.L266	#,
	.loc 1 1209 0
	movq	-312(%rbp), %rdx	# op1, tmp841
	movl	-296(%rbp), %eax	# mode, tmp842
	movl	%eax, %esi	# tmp842,
	movl	$77, %edi	#,
	call	gen_rtx_fmt_e	#
	jmp	.L163	#
.L266:
	.loc 1 1212 0
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-224(%rbp), %rax	# trueop0, D.14155
	jne	.L267	#,
	.loc 1 1213 0
	movq	-312(%rbp), %rdx	# op1, tmp843
	movl	-296(%rbp), %eax	# mode, tmp844
	movl	%eax, %esi	# tmp844,
	movl	$86, %edi	#,
	call	gen_rtx_fmt_e	#
	jmp	.L163	#
.L267:
	.loc 1 1216 0
	movl	-296(%rbp), %eax	# mode, mode.112
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L268	#,
	.loc 1 1217 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L268:
	.loc 1 1225 0
	movl	-296(%rbp), %eax	# mode, mode.113
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$2, %eax	#, D.14148
	je	.L269	#,
	.loc 1 1225 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# mode, mode.114
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$6, %eax	#, D.14148
	je	.L269	#,
	movl	-296(%rbp), %eax	# mode, mode.115
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$8, %eax	#, D.14148
	je	.L269	#,
.LBB22:
	.loc 1 1227 0 is_stmt 1
	movq	$1, -144(%rbp)	#, coeff0
	movq	$1, -136(%rbp)	#, coeff1
	.loc 1 1228 0
	movq	-304(%rbp), %rax	# op0, tmp849
	movq	%rax, -128(%rbp)	# tmp849, lhs
	movq	-312(%rbp), %rax	# op1, tmp850
	movq	%rax, -120(%rbp)	# tmp850, rhs
	.loc 1 1229 0
	movl	$0, -272(%rbp)	#, had_mult
	.loc 1 1231 0
	movq	-128(%rbp), %rax	# lhs, tmp851
	movzwl	(%rax), %eax	# lhs_436->code, D.14145
	cmpw	$77, %ax	#, D.14145
	jne	.L270	#,
	.loc 1 1232 0
	movq	$-1, -144(%rbp)	#, coeff0
	movq	-128(%rbp), %rax	# lhs, tmp852
	movq	8(%rax), %rax	# lhs_436->fld[0].rtx, tmp853
	movq	%rax, -128(%rbp)	# tmp853, lhs
	jmp	.L271	#
.L270:
	.loc 1 1233 0
	movq	-128(%rbp), %rax	# lhs, tmp854
	movzwl	(%rax), %eax	# lhs_436->code, D.14145
	cmpw	$78, %ax	#, D.14145
	jne	.L272	#,
	.loc 1 1234 0
	movq	-128(%rbp), %rax	# lhs, tmp855
	movq	16(%rax), %rax	# lhs_436->fld[1].rtx, D.14155
	movzwl	(%rax), %eax	# _443->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L272	#,
	.loc 1 1236 0
	movq	-128(%rbp), %rax	# lhs, tmp856
	movq	16(%rax), %rax	# lhs_436->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _445->fld[0].rtwint, tmp857
	movq	%rax, -144(%rbp)	# tmp857, coeff0
	movq	-128(%rbp), %rax	# lhs, tmp858
	movq	8(%rax), %rax	# lhs_436->fld[0].rtx, tmp859
	movq	%rax, -128(%rbp)	# tmp859, lhs
	.loc 1 1237 0
	movl	$1, -272(%rbp)	#, had_mult
	jmp	.L271	#
.L272:
	.loc 1 1239 0
	movq	-128(%rbp), %rax	# lhs, tmp860
	movzwl	(%rax), %eax	# lhs_436->code, D.14145
	cmpw	$87, %ax	#, D.14145
	jne	.L271	#,
	.loc 1 1240 0
	movq	-128(%rbp), %rax	# lhs, tmp861
	movq	16(%rax), %rax	# lhs_436->fld[1].rtx, D.14155
	movzwl	(%rax), %eax	# _450->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L271	#,
	.loc 1 1241 0
	movq	-128(%rbp), %rax	# lhs, tmp862
	movq	16(%rax), %rax	# lhs_436->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _452->fld[0].rtwint, D.14151
	testq	%rax, %rax	# D.14151
	js	.L271	#,
	.loc 1 1242 0
	movq	-128(%rbp), %rax	# lhs, tmp863
	movq	16(%rax), %rax	# lhs_436->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _454->fld[0].rtwint, D.14151
	cmpq	$63, %rax	#, D.14151
	jg	.L271	#,
	.loc 1 1244 0
	movq	-128(%rbp), %rax	# lhs, tmp864
	movq	16(%rax), %rax	# lhs_436->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _456->fld[0].rtwint, D.14151
	movl	$1, %edx	#, tmp865
	movl	%eax, %ecx	# D.14147, tmp1191
	salq	%cl, %rdx	# tmp1191, tmp866
	movq	%rdx, %rax	# tmp866, tmp866
	movq	%rax, -144(%rbp)	# tmp866, coeff0
	.loc 1 1245 0
	movq	-128(%rbp), %rax	# lhs, tmp867
	movq	8(%rax), %rax	# lhs_436->fld[0].rtx, tmp868
	movq	%rax, -128(%rbp)	# tmp868, lhs
.L271:
	.loc 1 1248 0
	movq	-120(%rbp), %rax	# rhs, tmp869
	movzwl	(%rax), %eax	# rhs_437->code, D.14145
	cmpw	$77, %ax	#, D.14145
	jne	.L273	#,
	.loc 1 1249 0
	movq	$-1, -136(%rbp)	#, coeff1
	movq	-120(%rbp), %rax	# rhs, tmp870
	movq	8(%rax), %rax	# rhs_437->fld[0].rtx, tmp871
	movq	%rax, -120(%rbp)	# tmp871, rhs
	jmp	.L274	#
.L273:
	.loc 1 1250 0
	movq	-120(%rbp), %rax	# rhs, tmp872
	movzwl	(%rax), %eax	# rhs_437->code, D.14145
	cmpw	$78, %ax	#, D.14145
	jne	.L275	#,
	.loc 1 1251 0
	movq	-120(%rbp), %rax	# rhs, tmp873
	movq	16(%rax), %rax	# rhs_437->fld[1].rtx, D.14155
	movzwl	(%rax), %eax	# _465->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L275	#,
	.loc 1 1253 0
	movq	-120(%rbp), %rax	# rhs, tmp874
	movq	16(%rax), %rax	# rhs_437->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _467->fld[0].rtwint, tmp875
	movq	%rax, -136(%rbp)	# tmp875, coeff1
	movq	-120(%rbp), %rax	# rhs, tmp876
	movq	8(%rax), %rax	# rhs_437->fld[0].rtx, tmp877
	movq	%rax, -120(%rbp)	# tmp877, rhs
	.loc 1 1254 0
	movl	$1, -272(%rbp)	#, had_mult
	jmp	.L274	#
.L275:
	.loc 1 1256 0
	movq	-120(%rbp), %rax	# rhs, tmp878
	movzwl	(%rax), %eax	# rhs_437->code, D.14145
	cmpw	$87, %ax	#, D.14145
	jne	.L274	#,
	.loc 1 1257 0
	movq	-120(%rbp), %rax	# rhs, tmp879
	movq	16(%rax), %rax	# rhs_437->fld[1].rtx, D.14155
	movzwl	(%rax), %eax	# _472->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L274	#,
	.loc 1 1258 0
	movq	-120(%rbp), %rax	# rhs, tmp880
	movq	16(%rax), %rax	# rhs_437->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _474->fld[0].rtwint, D.14151
	testq	%rax, %rax	# D.14151
	js	.L274	#,
	.loc 1 1259 0
	movq	-120(%rbp), %rax	# rhs, tmp881
	movq	16(%rax), %rax	# rhs_437->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _476->fld[0].rtwint, D.14151
	cmpq	$63, %rax	#, D.14151
	jg	.L274	#,
	.loc 1 1261 0
	movq	-120(%rbp), %rax	# rhs, tmp882
	movq	16(%rax), %rax	# rhs_437->fld[1].rtx, D.14155
	movq	8(%rax), %rax	# _478->fld[0].rtwint, D.14151
	movl	$1, %edx	#, tmp883
	movl	%eax, %ecx	# D.14147, tmp1193
	salq	%cl, %rdx	# tmp1193, tmp884
	movq	%rdx, %rax	# tmp884, tmp884
	movq	%rax, -136(%rbp)	# tmp884, coeff1
	.loc 1 1262 0
	movq	-120(%rbp), %rax	# rhs, tmp885
	movq	8(%rax), %rax	# rhs_437->fld[0].rtx, tmp886
	movq	%rax, -120(%rbp)	# tmp886, rhs
.L274:
	.loc 1 1265 0
	movq	-120(%rbp), %rdx	# rhs, tmp887
	movq	-128(%rbp), %rax	# lhs, tmp888
	movq	%rdx, %rsi	# tmp887,
	movq	%rax, %rdi	# tmp888,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L269	#,
	.loc 1 1267 0
	movq	-136(%rbp), %rax	# coeff1, tmp889
	movq	-144(%rbp), %rdx	# coeff0, tmp890
	subq	%rax, %rdx	# tmp889, D.14151
	movq	%rdx, %rax	# D.14151, D.14151
	movq	%rax, %rsi	# D.14151,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14155
	movq	-128(%rbp), %rdx	# lhs, tmp891
	movl	-296(%rbp), %eax	# mode, tmp892
	movl	%eax, %esi	# tmp892,
	movl	$78, %edi	#,
	call	simplify_gen_binary	#
	movq	%rax, -112(%rbp)	# tmp893, tem
	.loc 1 1269 0
	movq	-112(%rbp), %rax	# tem, tmp894
	movzwl	(%rax), %eax	# tem_486->code, D.14145
	cmpw	$78, %ax	#, D.14145
	jne	.L276	#,
	.loc 1 1269 0 is_stmt 0 discriminator 2
	cmpl	$0, -272(%rbp)	#, had_mult
	je	.L277	#,
.L276:
	.loc 1 1269 0 discriminator 1
	movq	-112(%rbp), %rax	# tem, iftmp.116
	jmp	.L278	#
.L277:
	movl	$0, %eax	#, iftmp.116
.L278:
	.loc 1 1269 0 discriminator 3
	jmp	.L163	#
.L269:
.LBE22:
	.loc 1 1274 0 is_stmt 1
	movq	-312(%rbp), %rax	# op1, tmp895
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$77, %ax	#, D.14145
	jne	.L279	#,
	.loc 1 1275 0
	movq	-312(%rbp), %rax	# op1, tmp896
	movq	8(%rax), %rcx	# op1_2->fld[0].rtx, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp897
	movl	-296(%rbp), %eax	# mode, tmp898
	movl	%eax, %esi	# tmp898,
	movl	$75, %edi	#,
	call	simplify_gen_binary	#
	jmp	.L163	#
.L279:
	.loc 1 1283 0
	movl	-296(%rbp), %eax	# mode, mode.117
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$1, %eax	#, D.14148
	je	.L280	#,
	.loc 1 1283 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# mode, mode.118
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$3, %eax	#, D.14148
	je	.L280	#,
	movl	-296(%rbp), %eax	# mode, mode.119
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$5, %eax	#, D.14148
	je	.L280	#,
	movl	-296(%rbp), %eax	# mode, mode.120
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$7, %eax	#, D.14148
	jne	.L281	#,
.L280:
	.loc 1 1284 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp903
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$75, %ax	#, D.14145
	je	.L282	#,
	.loc 1 1284 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp904
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$76, %ax	#, D.14145
	je	.L282	#,
	.loc 1 1285 0 is_stmt 1
	movq	-312(%rbp), %rax	# op1, tmp905
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$75, %ax	#, D.14145
	je	.L282	#,
	.loc 1 1285 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp906
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$76, %ax	#, D.14145
	je	.L282	#,
	.loc 1 1286 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp907
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$58, %ax	#, D.14145
	jne	.L283	#,
	.loc 1 1287 0
	movq	-304(%rbp), %rax	# op0, tmp908
	movq	8(%rax), %rax	# op0_1->fld[0].rtx, D.14155
	movzwl	(%rax), %eax	# _507->code, D.14145
	cmpw	$75, %ax	#, D.14145
	je	.L282	#,
.L283:
	.loc 1 1288 0
	movq	-312(%rbp), %rax	# op1, tmp909
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$58, %ax	#, D.14145
	jne	.L281	#,
	.loc 1 1289 0
	movq	-312(%rbp), %rax	# op1, tmp910
	movq	8(%rax), %rax	# op1_2->fld[0].rtx, D.14155
	movzwl	(%rax), %eax	# _510->code, D.14145
	cmpw	$75, %ax	#, D.14145
	jne	.L281	#,
.L282:
	.loc 1 1290 0
	movq	-312(%rbp), %rcx	# op1, tmp911
	movq	-304(%rbp), %rdx	# op0, tmp912
	movl	-296(%rbp), %esi	# mode, tmp913
	movl	-292(%rbp), %eax	# code, tmp914
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp914,
	call	simplify_plus_minus	#
	movq	%rax, -112(%rbp)	# tmp915, tem
	cmpq	$0, -112(%rbp)	#, tem
	je	.L281	#,
	.loc 1 1291 0
	movq	-112(%rbp), %rax	# tem, D.14144
	jmp	.L163	#
.L281:
	.loc 1 1294 0
	movq	-312(%rbp), %rax	# op1, tmp916
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L284	#,
	.loc 1 1294 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp917
	movzbl	2(%rax), %eax	# op0_1->mode, D.14149
	testb	%al, %al	# D.14149
	je	.L284	#,
	.loc 1 1295 0 is_stmt 1
	movq	-312(%rbp), %rdx	# op1, tmp918
	movl	-296(%rbp), %eax	# mode, tmp919
	movq	%rdx, %rsi	# tmp918,
	movl	%eax, %edi	# tmp919,
	call	neg_const_int	#
	movq	%rax, %rcx	#, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp920
	movl	-296(%rbp), %eax	# mode, tmp921
	movl	%eax, %esi	# tmp921,
	movl	$75, %edi	#,
	call	simplify_gen_binary	#
	jmp	.L163	#
.L284:
	.loc 1 1300 0
	movq	-312(%rbp), %rax	# op1, tmp922
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$83, %ax	#, D.14145
	jne	.L285	#,
	.loc 1 1302 0
	movq	-312(%rbp), %rax	# op1, tmp923
	movq	8(%rax), %rdx	# op1_2->fld[0].rtx, D.14155
	movq	-304(%rbp), %rax	# op0, tmp924
	movq	%rdx, %rsi	# D.14155,
	movq	%rax, %rdi	# tmp924,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L286	#,
	.loc 1 1303 0
	movq	-312(%rbp), %rax	# op1, tmp925
	movq	16(%rax), %rdx	# op1_2->fld[1].rtx, D.14155
	movl	-296(%rbp), %eax	# mode, tmp926
	movl	%eax, %esi	# tmp926,
	movl	$86, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rcx	#, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp927
	movl	-296(%rbp), %eax	# mode, tmp928
	movl	%eax, %esi	# tmp928,
	movl	$83, %edi	#,
	call	simplify_gen_binary	#
	jmp	.L163	#
.L286:
	.loc 1 1305 0
	movq	-312(%rbp), %rax	# op1, tmp929
	movq	16(%rax), %rdx	# op1_2->fld[1].rtx, D.14155
	movq	-304(%rbp), %rax	# op0, tmp930
	movq	%rdx, %rsi	# D.14155,
	movq	%rax, %rdi	# tmp930,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L285	#,
	.loc 1 1306 0
	movq	-312(%rbp), %rax	# op1, tmp931
	movq	8(%rax), %rdx	# op1_2->fld[0].rtx, D.14155
	movl	-296(%rbp), %eax	# mode, tmp932
	movl	%eax, %esi	# tmp932,
	movl	$86, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rcx	#, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp933
	movl	-296(%rbp), %eax	# mode, tmp934
	movl	%eax, %esi	# tmp934,
	movl	$83, %edi	#,
	call	simplify_gen_binary	#
	jmp	.L163	#
.L285:
	.loc 1 1309 0
	jmp	.L234	#
.L217:
	.loc 1 1312 0
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L287	#,
	.loc 1 1314 0
	movl	-296(%rbp), %ecx	# mode, tmp935
	movq	-304(%rbp), %rdx	# op0, tmp936
	movl	-296(%rbp), %eax	# mode, tmp937
	movl	%eax, %esi	# tmp937,
	movl	$77, %edi	#,
	call	simplify_unary_operation	#
	movq	%rax, -112(%rbp)	# tmp938, tem
	.loc 1 1316 0
	cmpq	$0, -112(%rbp)	#, tem
	jne	.L288	#,
	.loc 1 1316 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rdx	# op0, tmp939
	movl	-296(%rbp), %eax	# mode, tmp940
	movl	%eax, %esi	# tmp940,
	movl	$77, %edi	#,
	call	gen_rtx_fmt_e	#
	jmp	.L289	#
.L288:
	.loc 1 1316 0 discriminator 2
	movq	-112(%rbp), %rax	# tem, iftmp.121
.L289:
	.loc 1 1316 0 discriminator 3
	jmp	.L163	#
.L287:
	.loc 1 1321 0 is_stmt 1
	movl	-296(%rbp), %eax	# mode, mode.122
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	.loc 1 1320 0
	cmpl	$2, %eax	#, D.14148
	je	.L290	#,
	.loc 1 1321 0
	movl	-296(%rbp), %eax	# mode, mode.123
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$6, %eax	#, D.14148
	je	.L290	#,
	.loc 1 1321 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# mode, mode.124
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$8, %eax	#, D.14148
	jne	.L291	#,
.L290:
	.loc 1 1321 0 discriminator 2
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.125
	testl	%eax, %eax	# flag_unsafe_math_optimizations.125
	je	.L292	#,
.L291:
	.loc 1 1322 0 is_stmt 1
	movl	-296(%rbp), %eax	# mode, mode.126
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L292	#,
	.loc 1 1323 0
	movq	-304(%rbp), %rax	# op0, tmp945
	movq	%rax, %rdi	# tmp945,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L292	#,
	.loc 1 1324 0
	movq	-312(%rbp), %rax	# op1, D.14144
	jmp	.L163	#
.L292:
	.loc 1 1329 0
	movl	-296(%rbp), %eax	# mode, mode.127
	cltq
	addq	$59, %rax	#, tmp947
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L293	#,
	.loc 1 1330 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L293:
	.loc 1 1334 0
	movq	-216(%rbp), %rax	# trueop1, tmp948
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L294	#,
	.loc 1 1335 0
	movq	-216(%rbp), %rax	# trueop1, tmp949
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14151
	movq	%rax, %rdi	# D.14152,
	call	exact_log2_wide	#
	cltq
	movq	%rax, -232(%rbp)	# tmp950, val
	cmpq	$0, -232(%rbp)	#, val
	js	.L294	#,
	.loc 1 1339 0
	cmpl	$64, -268(%rbp)	#, width
	jbe	.L295	#,
	.loc 1 1340 0
	cmpq	$63, -232(%rbp)	#, val
	je	.L294	#,
.L295:
	.loc 1 1341 0
	movl	rtx_equal_function_value_matters(%rip), %eax	# rtx_equal_function_value_matters, rtx_equal_function_value_matters.128
	testl	%eax, %eax	# rtx_equal_function_value_matters.128
	jne	.L294	#,
	.loc 1 1342 0
	movq	-232(%rbp), %rax	# val, tmp951
	movq	%rax, %rsi	# tmp951,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp952
	movl	-296(%rbp), %eax	# mode, tmp953
	movl	%eax, %esi	# tmp953,
	movl	$87, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L163	#
.L294:
	.loc 1 1344 0
	movq	-216(%rbp), %rax	# trueop1, tmp954
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$55, %ax	#, D.14145
	jne	.L377	#,
	.loc 1 1345 0
	movq	-216(%rbp), %rax	# trueop1, tmp955
	movzbl	2(%rax), %eax	# trueop1_12->mode, D.14149
	movzbl	%al, %eax	# D.14149, D.14147
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$2, %eax	#, D.14148
	jne	.L377	#,
.LBB23:
	.loc 1 1349 0
	movq	-216(%rbp), %rax	# trueop1, tmp957
	movq	%rax, -48(%rbp)	# tmp957, args.value
	.loc 1 1350 0
	leaq	-48(%rbp), %rax	#, tmp958
	movq	%rax, %rsi	# tmp958,
	movl	$simplify_binary_is2orm1, %edi	#,
	call	do_float_handler	#
	testl	%eax, %eax	# D.14147
	jne	.L297	#,
	.loc 1 1351 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L297:
	.loc 1 1354 0
	movzbl	-40(%rbp), %eax	# args.is_2, D.14153
	testb	%al, %al	# D.14153
	je	.L299	#,
	.loc 1 1354 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp959
	movzbl	2(%rax), %eax	# op0_1->mode, D.14149
	movzbl	%al, %eax	# D.14149, D.14150
	cmpl	-296(%rbp), %eax	# mode, D.14150
	jne	.L299	#,
	.loc 1 1355 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp960
	movq	%rax, %rdi	# tmp960,
	call	copy_rtx	#
	movq	%rax, %rcx	#, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp961
	movl	-296(%rbp), %eax	# mode, tmp962
	movl	%eax, %esi	# tmp962,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L163	#
.L299:
	.loc 1 1357 0
	movzbl	-39(%rbp), %eax	# args.is_m1, D.14153
	testb	%al, %al	# D.14153
	je	.L296	#,
	.loc 1 1357 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp963
	movzbl	2(%rax), %eax	# op0_1->mode, D.14149
	movzbl	%al, %eax	# D.14149, D.14150
	cmpl	-296(%rbp), %eax	# mode, D.14150
	jne	.L296	#,
	.loc 1 1358 0 is_stmt 1
	movq	-304(%rbp), %rdx	# op0, tmp964
	movl	-296(%rbp), %eax	# mode, tmp965
	movl	%eax, %esi	# tmp965,
	movl	$77, %edi	#,
	call	gen_rtx_fmt_e	#
	jmp	.L163	#
.L296:
.LBE23:
	.loc 1 1360 0
	jmp	.L377	#
.L223:
	.loc 1 1363 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L301	#,
	.loc 1 1364 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L301:
	.loc 1 1365 0
	movq	-216(%rbp), %rax	# trueop1, tmp966
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L302	#,
	.loc 1 1366 0
	movq	-216(%rbp), %rax	# trueop1, tmp967
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14151
	movq	%rax, %rdx	# D.14151, D.14152
	movl	-296(%rbp), %eax	# mode, mode.129
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14152
	andq	%rax, %rdx	# D.14152, D.14152
	.loc 1 1367 0
	movl	-296(%rbp), %eax	# mode, mode.130
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14152
	.loc 1 1366 0
	cmpq	%rax, %rdx	# D.14152, D.14152
	jne	.L302	#,
	.loc 1 1368 0
	movq	-312(%rbp), %rax	# op1, D.14144
	jmp	.L163	#
.L302:
	.loc 1 1369 0
	movq	-216(%rbp), %rdx	# trueop1, tmp970
	movq	-224(%rbp), %rax	# trueop0, tmp971
	movq	%rdx, %rsi	# tmp970,
	movq	%rax, %rdi	# tmp971,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L303	#,
	.loc 1 1369 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp972
	movq	%rax, %rdi	# tmp972,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L303	#,
	.loc 1 1370 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L303:
	.loc 1 1372 0
	movq	-304(%rbp), %rax	# op0, tmp973
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$86, %ax	#, D.14145
	jne	.L304	#,
	.loc 1 1372 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp974
	movq	8(%rax), %rax	# op0_1->fld[0].rtx, D.14155
	movq	-312(%rbp), %rdx	# op1, tmp975
	movq	%rdx, %rsi	# tmp975,
	movq	%rax, %rdi	# D.14155,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	jne	.L305	#,
.L304:
	.loc 1 1373 0 is_stmt 1
	movq	-312(%rbp), %rax	# op1, tmp976
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$86, %ax	#, D.14145
	jne	.L306	#,
	.loc 1 1373 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp977
	movq	8(%rax), %rax	# op1_2->fld[0].rtx, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp978
	movq	%rdx, %rsi	# tmp978,
	movq	%rax, %rdi	# D.14155,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L306	#,
.L305:
	.loc 1 1374 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp979
	movq	%rax, %rdi	# tmp979,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L306	#,
	.loc 1 1375 0
	movl	-296(%rbp), %eax	# mode, mode.131
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$4, %eax	#, D.14148
	je	.L306	#,
	.loc 1 1376 0
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.14144
	jmp	.L163	#
.L306:
	.loc 1 1377 0
	jmp	.L234	#
.L224:
	.loc 1 1380 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L307	#,
	.loc 1 1381 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L307:
	.loc 1 1382 0
	movq	-216(%rbp), %rax	# trueop1, tmp981
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L308	#,
	.loc 1 1383 0
	movq	-216(%rbp), %rax	# trueop1, tmp982
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14151
	movq	%rax, %rdx	# D.14151, D.14152
	movl	-296(%rbp), %eax	# mode, mode.132
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14152
	andq	%rax, %rdx	# D.14152, D.14152
	.loc 1 1384 0
	movl	-296(%rbp), %eax	# mode, mode.133
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14152
	.loc 1 1383 0
	cmpq	%rax, %rdx	# D.14152, D.14152
	jne	.L308	#,
	.loc 1 1385 0
	movq	-304(%rbp), %rdx	# op0, tmp985
	movl	-296(%rbp), %eax	# mode, tmp986
	movl	%eax, %esi	# tmp986,
	movl	$86, %edi	#,
	call	gen_rtx_fmt_e	#
	jmp	.L163	#
.L308:
	.loc 1 1386 0
	movq	-224(%rbp), %rax	# trueop0, tmp987
	cmpq	-216(%rbp), %rax	# trueop1, tmp987
	jne	.L309	#,
	.loc 1 1386 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp988
	movq	%rax, %rdi	# tmp988,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L309	#,
	.loc 1 1387 0 is_stmt 1
	movl	-296(%rbp), %eax	# mode, mode.134
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$4, %eax	#, D.14148
	je	.L309	#,
	.loc 1 1388 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14144
	jmp	.L163	#
.L309:
	.loc 1 1389 0
	jmp	.L234	#
.L222:
	.loc 1 1392 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L310	#,
	.loc 1 1392 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp990
	movq	%rax, %rdi	# tmp990,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L310	#,
	.loc 1 1393 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14144
	jmp	.L163	#
.L310:
	.loc 1 1394 0
	movq	-216(%rbp), %rax	# trueop1, tmp991
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L311	#,
	.loc 1 1395 0
	movq	-216(%rbp), %rax	# trueop1, tmp992
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14151
	movq	%rax, %rdx	# D.14151, D.14152
	movl	-296(%rbp), %eax	# mode, mode.135
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14152
	andq	%rax, %rdx	# D.14152, D.14152
	.loc 1 1396 0
	movl	-296(%rbp), %eax	# mode, mode.136
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14152
	.loc 1 1395 0
	cmpq	%rax, %rdx	# D.14152, D.14152
	jne	.L311	#,
	.loc 1 1397 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L311:
	.loc 1 1398 0
	movq	-224(%rbp), %rax	# trueop0, tmp995
	cmpq	-216(%rbp), %rax	# trueop1, tmp995
	jne	.L312	#,
	.loc 1 1398 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp996
	movq	%rax, %rdi	# tmp996,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L312	#,
	.loc 1 1399 0 is_stmt 1
	movl	-296(%rbp), %eax	# mode, mode.137
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$4, %eax	#, D.14148
	je	.L312	#,
	.loc 1 1400 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L312:
	.loc 1 1402 0
	movq	-304(%rbp), %rax	# op0, tmp998
	movzwl	(%rax), %eax	# op0_1->code, D.14145
	cmpw	$86, %ax	#, D.14145
	jne	.L313	#,
	.loc 1 1402 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp999
	movq	8(%rax), %rax	# op0_1->fld[0].rtx, D.14155
	movq	-312(%rbp), %rdx	# op1, tmp1000
	movq	%rdx, %rsi	# tmp1000,
	movq	%rax, %rdi	# D.14155,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	jne	.L314	#,
.L313:
	.loc 1 1403 0 is_stmt 1
	movq	-312(%rbp), %rax	# op1, tmp1001
	movzwl	(%rax), %eax	# op1_2->code, D.14145
	cmpw	$86, %ax	#, D.14145
	jne	.L315	#,
	.loc 1 1403 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp1002
	movq	8(%rax), %rax	# op1_2->fld[0].rtx, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp1003
	movq	%rdx, %rsi	# tmp1003,
	movq	%rax, %rdi	# D.14155,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L315	#,
.L314:
	.loc 1 1404 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp1004
	movq	%rax, %rdi	# tmp1004,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L315	#,
	.loc 1 1405 0
	movl	-296(%rbp), %eax	# mode, mode.138
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$4, %eax	#, D.14148
	je	.L315	#,
	.loc 1 1406 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14144
	jmp	.L163	#
.L315:
	.loc 1 1407 0
	jmp	.L234	#
.L220:
	.loc 1 1412 0
	movq	-216(%rbp), %rax	# trueop1, tmp1006
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L218	#,
	.loc 1 1413 0
	movq	-216(%rbp), %rax	# trueop1, tmp1007
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14151
	movq	%rax, %rdi	# D.14152,
	call	exact_log2_wide	#
	cltq
	movq	%rax, -256(%rbp)	# tmp1008, arg1
	cmpq	$0, -256(%rbp)	#, arg1
	jle	.L218	#,
	.loc 1 1414 0
	movq	-256(%rbp), %rax	# arg1, tmp1009
	movq	%rax, %rsi	# tmp1009,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp1010
	movl	-296(%rbp), %eax	# mode, tmp1011
	movl	%eax, %esi	# tmp1011,
	movl	$90, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L163	#
.L218:
	.loc 1 1419 0
	movl	-296(%rbp), %eax	# mode, mode.139
	cltq
	addq	$59, %rax	#, tmp1013
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L316	#,
.LBB24:
	.loc 1 1423 0
	movq	-304(%rbp), %rdx	# op0, tmp1014
	movl	-296(%rbp), %eax	# mode, tmp1015
	movq	%rdx, %rsi	# tmp1014,
	movl	%eax, %edi	# tmp1015,
	call	gen_lowpart_common	#
	movq	%rax, -88(%rbp)	# tmp1016, x
	.loc 1 1424 0
	cmpq	$0, -88(%rbp)	#, x
	je	.L317	#,
	.loc 1 1425 0
	movq	-88(%rbp), %rax	# x, D.14144
	jmp	.L163	#
.L317:
	.loc 1 1426 0
	movq	-304(%rbp), %rax	# op0, tmp1017
	movzbl	2(%rax), %eax	# op0_1->mode, D.14149
	movzbl	%al, %eax	# D.14149, D.14150
	cmpl	-296(%rbp), %eax	# mode, D.14150
	je	.L318	#,
	.loc 1 1426 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp1018
	movzbl	2(%rax), %eax	# op0_1->mode, D.14149
	testb	%al, %al	# D.14149
	je	.L318	#,
	.loc 1 1427 0 is_stmt 1
	movq	-304(%rbp), %rdx	# op0, tmp1019
	movl	-296(%rbp), %eax	# mode, tmp1020
	movq	%rdx, %rsi	# tmp1019,
	movl	%eax, %edi	# tmp1020,
	call	gen_lowpart_SUBREG	#
	jmp	.L163	#
.L318:
	.loc 1 1429 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L316:
.LBE24:
	.loc 1 1434 0
	movl	-296(%rbp), %eax	# mode, mode.140
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	.loc 1 1433 0
	cmpl	$2, %eax	#, D.14148
	je	.L319	#,
	.loc 1 1434 0
	movl	-296(%rbp), %eax	# mode, mode.141
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$6, %eax	#, D.14148
	je	.L319	#,
	.loc 1 1434 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# mode, mode.142
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$8, %eax	#, D.14148
	jne	.L320	#,
.L319:
	.loc 1 1434 0 discriminator 2
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.143
	testl	%eax, %eax	# flag_unsafe_math_optimizations.143
	je	.L321	#,
.L320:
	.loc 1 1435 0 is_stmt 1
	movl	-296(%rbp), %eax	# mode, mode.144
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14155
	cmpq	-224(%rbp), %rax	# trueop0, D.14155
	jne	.L321	#,
	.loc 1 1436 0
	movq	-312(%rbp), %rax	# op1, tmp1025
	movq	%rax, %rdi	# tmp1025,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L321	#,
	.loc 1 1437 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L321:
	.loc 1 1442 0
	movq	-216(%rbp), %rax	# trueop1, tmp1026
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$55, %ax	#, D.14145
	jne	.L378	#,
	.loc 1 1443 0
	movq	-216(%rbp), %rax	# trueop1, tmp1027
	movzbl	2(%rax), %eax	# trueop1_12->mode, D.14149
	movzbl	%al, %eax	# D.14149, D.14147
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14148
	cmpl	$2, %eax	#, D.14148
	jne	.L378	#,
	.loc 1 1444 0
	movl	-296(%rbp), %eax	# mode, mode.145
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	je	.L378	#,
	.loc 1 1445 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.146
	testl	%eax, %eax	# flag_unsafe_math_optimizations.146
	je	.L378	#,
.LBB25:
.LBB26:
	.loc 1 1448 0
	movq	-216(%rbp), %rax	# trueop1, tmp1030
	leaq	16(%rax), %rcx	#, D.14156
	leaq	-48(%rbp), %rax	#, tmp1031
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.14156,
	movq	%rax, %rdi	# tmp1031,
	call	memcpy	#
	movq	-48(%rbp), %rax	# u.d, tmp1032
	movq	%rax, -80(%rbp)	# tmp1032, d
	movq	-40(%rbp), %rax	# u.d, tmp1033
	movq	%rax, -72(%rbp)	# tmp1033, d
	movq	-32(%rbp), %rax	# u.d, tmp1034
	movq	%rax, -64(%rbp)	# tmp1034, d
.LBE26:
	.loc 1 1450 0
	movq	dconst0(%rip), %rax	# dconst0, tmp1036
	movq	%rax, 24(%rsp)	# tmp1036,
	movq	dconst0+8(%rip), %rax	# dconst0, tmp1037
	movq	%rax, 32(%rsp)	# tmp1037,
	movq	dconst0+16(%rip), %rax	# dconst0, tmp1038
	movq	%rax, 40(%rsp)	# tmp1038,
	movq	-80(%rbp), %rax	# d, tmp1039
	movq	%rax, (%rsp)	# tmp1039,
	movq	-72(%rbp), %rax	# d, tmp1040
	movq	%rax, 8(%rsp)	# tmp1040,
	movq	-64(%rbp), %rax	# d, tmp1041
	movq	%rax, 16(%rsp)	# tmp1041,
	call	ereal_cmp	#
	testl	%eax, %eax	# D.14147
	je	.L322	#,
	.loc 1 1453 0
	movl	$79, %edi	#,
	call	rtx_to_tree_code	#
	movl	%eax, %esi	#, D.14147
	leaq	-80(%rbp), %rdx	#, tmp1042
	leaq	-80(%rbp), %rax	#, tmp1043
	movq	%rdx, %rcx	# tmp1042,
	movl	$dconst1, %edx	#,
	movq	%rax, %rdi	# tmp1043,
	call	earith	#
	.loc 1 1454 0
	movl	-296(%rbp), %eax	# mode, tmp1044
	movq	-80(%rbp), %rdx	# d, tmp1045
	movq	%rdx, (%rsp)	# tmp1045,
	movq	-72(%rbp), %rdx	# d, tmp1046
	movq	%rdx, 8(%rsp)	# tmp1046,
	movq	-64(%rbp), %rdx	# d, tmp1047
	movq	%rdx, 16(%rsp)	# tmp1047,
	movl	%eax, %edi	# tmp1044,
	call	immed_real_const_1	#
	movq	%rax, %rcx	#, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp1048
	movl	-296(%rbp), %eax	# mode, tmp1049
	movl	%eax, %esi	# tmp1049,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L163	#
.L322:
.LBE25:
	.loc 1 1464 0
	jmp	.L378	#
.L221:
	.loc 1 1468 0
	movq	-216(%rbp), %rax	# trueop1, tmp1050
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L219	#,
	.loc 1 1469 0
	movq	-216(%rbp), %rax	# trueop1, tmp1051
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14151
	movq	%rax, %rdi	# D.14152,
	call	exact_log2_wide	#
	testl	%eax, %eax	# D.14147
	jle	.L219	#,
	.loc 1 1470 0
	movq	-312(%rbp), %rax	# op1, tmp1052
	movq	8(%rax), %rax	# op1_2->fld[0].rtwint, D.14151
	subq	$1, %rax	#, D.14151
	movq	%rax, %rsi	# D.14151,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14155
	movq	-304(%rbp), %rdx	# op0, tmp1053
	movl	-296(%rbp), %eax	# mode, tmp1054
	movl	%eax, %esi	# tmp1054,
	movl	$83, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L163	#
.L219:
	.loc 1 1475 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-224(%rbp), %rax	# trueop0, D.14155
	je	.L324	#,
	.loc 1 1475 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L325	#,
.L324:
	.loc 1 1476 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, tmp1055
	movq	%rax, %rdi	# tmp1055,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L325	#,
	.loc 1 1476 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp1056
	movq	%rax, %rdi	# tmp1056,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L325	#,
	.loc 1 1477 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14144
	jmp	.L163	#
.L325:
	.loc 1 1478 0
	jmp	.L234	#
.L226:
	.loc 1 1483 0
	movq	-224(%rbp), %rax	# trueop0, tmp1057
	movzwl	(%rax), %eax	# trueop0_11->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L225	#,
	.loc 1 1483 0 is_stmt 0 discriminator 1
	cmpl	$64, -268(%rbp)	#, width
	ja	.L225	#,
	.loc 1 1484 0 is_stmt 1
	movq	-224(%rbp), %rax	# trueop0, tmp1058
	movq	8(%rax), %rax	# trueop0_11->fld[0].rtwint, D.14151
	movq	%rax, %rdx	# D.14151, D.14152
	movl	-296(%rbp), %eax	# mode, mode.147
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14152
	cmpq	%rax, %rdx	# D.14152, D.14152
	jne	.L225	#,
	.loc 1 1485 0
	movq	-312(%rbp), %rax	# op1, tmp1060
	movq	%rax, %rdi	# tmp1060,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L225	#,
	.loc 1 1486 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L225:
	.loc 1 1493 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L326	#,
	.loc 1 1494 0
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L326:
	.loc 1 1495 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-224(%rbp), %rax	# trueop0, D.14155
	jne	.L327	#,
	.loc 1 1495 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# op1, tmp1061
	movq	%rax, %rdi	# tmp1061,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L327	#,
	.loc 1 1496 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L327:
	.loc 1 1497 0
	jmp	.L234	#
.L227:
	.loc 1 1500 0
	cmpl	$64, -268(%rbp)	#, width
	ja	.L328	#,
	.loc 1 1500 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# trueop1, tmp1062
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L328	#,
	.loc 1 1501 0 is_stmt 1
	movq	-216(%rbp), %rax	# trueop1, tmp1063
	movq	8(%rax), %rdx	# trueop1_12->fld[0].rtwint, D.14151
	movl	-268(%rbp), %eax	# width, tmp1064
	subl	$1, %eax	#, D.14150
	movl	$1, %esi	#, tmp1065
	movl	%eax, %ecx	# D.14147, tmp1196
	salq	%cl, %rsi	# tmp1196, D.14151
	movq	%rsi, %rax	# D.14151, D.14151
	cmpq	%rax, %rdx	# D.14151, D.14151
	jne	.L328	#,
	.loc 1 1502 0
	movq	-304(%rbp), %rax	# op0, tmp1066
	movq	%rax, %rdi	# tmp1066,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L328	#,
	.loc 1 1503 0
	movq	-312(%rbp), %rax	# op1, D.14144
	jmp	.L163	#
.L328:
	.loc 1 1504 0
	movq	-216(%rbp), %rdx	# trueop1, tmp1067
	movq	-224(%rbp), %rax	# trueop0, tmp1068
	movq	%rdx, %rsi	# tmp1067,
	movq	%rax, %rdi	# tmp1068,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L329	#,
	.loc 1 1504 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp1069
	movq	%rax, %rdi	# tmp1069,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L329	#,
	.loc 1 1505 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L329:
	.loc 1 1506 0
	jmp	.L234	#
.L228:
	.loc 1 1509 0
	cmpl	$64, -268(%rbp)	#, width
	ja	.L330	#,
	.loc 1 1509 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# trueop1, tmp1070
	movzwl	(%rax), %eax	# trueop1_12->code, D.14145
	cmpw	$54, %ax	#, D.14145
	jne	.L330	#,
	.loc 1 1510 0 is_stmt 1
	movq	-216(%rbp), %rax	# trueop1, tmp1071
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14151
	movq	%rax, %rdx	# D.14151, D.14152
	.loc 1 1511 0
	movl	-296(%rbp), %eax	# mode, mode.148
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14152
	shrq	%rax	# D.14152
	.loc 1 1510 0
	cmpq	%rax, %rdx	# D.14152, D.14152
	jne	.L330	#,
	.loc 1 1512 0
	movq	-304(%rbp), %rax	# op0, tmp1073
	movq	%rax, %rdi	# tmp1073,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L330	#,
	.loc 1 1513 0
	movq	-312(%rbp), %rax	# op1, D.14144
	jmp	.L163	#
.L330:
	.loc 1 1514 0
	movq	-216(%rbp), %rdx	# trueop1, tmp1074
	movq	-224(%rbp), %rax	# trueop0, tmp1075
	movq	%rdx, %rsi	# tmp1074,
	movq	%rax, %rdi	# tmp1075,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L331	#,
	.loc 1 1514 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp1076
	movq	%rax, %rdi	# tmp1076,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L331	#,
	.loc 1 1515 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L331:
	.loc 1 1516 0
	jmp	.L234	#
.L229:
	.loc 1 1519 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L332	#,
	.loc 1 1519 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp1077
	movq	%rax, %rdi	# tmp1077,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L332	#,
	.loc 1 1520 0 is_stmt 1
	movq	-312(%rbp), %rax	# op1, D.14144
	jmp	.L163	#
.L332:
	.loc 1 1521 0
	movq	-216(%rbp), %rdx	# trueop1, tmp1078
	movq	-224(%rbp), %rax	# trueop0, tmp1079
	movq	%rdx, %rsi	# tmp1078,
	movq	%rax, %rdi	# tmp1079,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L333	#,
	.loc 1 1521 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp1080
	movq	%rax, %rdi	# tmp1080,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L333	#,
	.loc 1 1522 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L333:
	.loc 1 1523 0
	jmp	.L234	#
.L230:
	.loc 1 1526 0
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.14155
	cmpq	-216(%rbp), %rax	# trueop1, D.14155
	jne	.L334	#,
	.loc 1 1526 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp1081
	movq	%rax, %rdi	# tmp1081,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L334	#,
	.loc 1 1527 0 is_stmt 1
	movq	-312(%rbp), %rax	# op1, D.14144
	jmp	.L163	#
.L334:
	.loc 1 1528 0
	movq	-216(%rbp), %rdx	# trueop1, tmp1082
	movq	-224(%rbp), %rax	# trueop0, tmp1083
	movq	%rdx, %rsi	# tmp1082,
	movq	%rax, %rdi	# tmp1083,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14147
	je	.L335	#,
	.loc 1 1528 0 is_stmt 0 discriminator 1
	movq	-304(%rbp), %rax	# op0, tmp1084
	movq	%rax, %rdi	# tmp1084,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14147
	jne	.L335	#,
	.loc 1 1529 0 is_stmt 1
	movq	-304(%rbp), %rax	# op0, D.14144
	jmp	.L163	#
.L335:
	.loc 1 1530 0
	jmp	.L234	#
.L231:
	.loc 1 1537 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L212:
	.loc 1 1540 0
	movl	$__FUNCTION__.10844, %edx	#,
	movl	$1540, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L377:
	.loc 1 1360 0
	nop
	jmp	.L234	#
.L378:
	.loc 1 1464 0
	nop
.L234:
	.loc 1 1543 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L211:
	.loc 1 1549 0
	movq	-224(%rbp), %rax	# trueop0, tmp1085
	movq	8(%rax), %rax	# trueop0_11->fld[0].rtwint, tmp1086
	movq	%rax, -264(%rbp)	# tmp1086, arg0
	.loc 1 1550 0
	movq	-216(%rbp), %rax	# trueop1, tmp1087
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, tmp1088
	movq	%rax, -256(%rbp)	# tmp1088, arg1
	.loc 1 1552 0
	cmpl	$63, -268(%rbp)	#, width
	ja	.L336	#,
	.loc 1 1554 0
	movl	-268(%rbp), %eax	# width, width.149
	movl	$1, %edx	#, tmp1089
	movl	%eax, %ecx	# width.149, tmp1198
	salq	%cl, %rdx	# tmp1198, D.14151
	movq	%rdx, %rax	# D.14151, D.14151
	subq	$1, %rax	#, D.14151
	andq	%rax, -264(%rbp)	# D.14151, arg0
	.loc 1 1555 0
	movl	-268(%rbp), %eax	# width, width.150
	movl	$1, %edx	#, tmp1090
	movl	%eax, %ecx	# width.150, tmp1200
	salq	%cl, %rdx	# tmp1200, D.14151
	movq	%rdx, %rax	# D.14151, D.14151
	subq	$1, %rax	#, D.14151
	andq	%rax, -256(%rbp)	# D.14151, arg1
	.loc 1 1557 0
	movq	-264(%rbp), %rax	# arg0, tmp1091
	movq	%rax, -248(%rbp)	# tmp1091, arg0s
	.loc 1 1558 0
	movl	-268(%rbp), %eax	# width, tmp1092
	subl	$1, %eax	#, D.14150
	movq	-248(%rbp), %rdx	# arg0s, tmp1093
	movl	%eax, %ecx	# D.14147, tmp1202
	sarq	%cl, %rdx	# tmp1202, D.14151
	movq	%rdx, %rax	# D.14151, D.14151
	andl	$1, %eax	#, D.14151
	testq	%rax, %rax	# D.14151
	je	.L337	#,
	.loc 1 1559 0
	movl	-268(%rbp), %eax	# width, width.151
	movq	$-1, %rdx	#, tmp1094
	movl	%eax, %ecx	# width.151, tmp1204
	salq	%cl, %rdx	# tmp1204, D.14151
	movq	%rdx, %rax	# D.14151, D.14151
	orq	%rax, -248(%rbp)	# D.14151, arg0s
.L337:
	.loc 1 1561 0
	movq	-256(%rbp), %rax	# arg1, tmp1095
	movq	%rax, -240(%rbp)	# tmp1095, arg1s
	.loc 1 1562 0
	movl	-268(%rbp), %eax	# width, tmp1096
	subl	$1, %eax	#, D.14150
	movq	-240(%rbp), %rdx	# arg1s, tmp1097
	movl	%eax, %ecx	# D.14147, tmp1206
	sarq	%cl, %rdx	# tmp1206, D.14151
	movq	%rdx, %rax	# D.14151, D.14151
	andl	$1, %eax	#, D.14151
	testq	%rax, %rax	# D.14151
	je	.L339	#,
	.loc 1 1563 0
	movl	-268(%rbp), %eax	# width, width.152
	movq	$-1, %rdx	#, tmp1098
	movl	%eax, %ecx	# width.152, tmp1208
	salq	%cl, %rdx	# tmp1208, D.14151
	movq	%rdx, %rax	# D.14151, D.14151
	orq	%rax, -240(%rbp)	# D.14151, arg1s
	jmp	.L339	#
.L336:
	.loc 1 1567 0
	movq	-264(%rbp), %rax	# arg0, tmp1099
	movq	%rax, -248(%rbp)	# tmp1099, arg0s
	.loc 1 1568 0
	movq	-256(%rbp), %rax	# arg1, tmp1100
	movq	%rax, -240(%rbp)	# tmp1100, arg1s
.L339:
	.loc 1 1573 0
	movl	-292(%rbp), %eax	# code, tmp1102
	subl	$74, %eax	#, tmp1101
	cmpl	$21, %eax	#, tmp1101
	ja	.L340	#,
	movl	%eax, %eax	# tmp1101, tmp1103
	movq	.L342(,%rax,8), %rax	#, tmp1104
	jmp	*%rax	# tmp1104
	.section	.rodata
	.align 8
	.align 4
.L342:
	.quad	.L341
	.quad	.L343
	.quad	.L344
	.quad	.L340
	.quad	.L345
	.quad	.L346
	.quad	.L347
	.quad	.L348
	.quad	.L349
	.quad	.L350
	.quad	.L351
	.quad	.L352
	.quad	.L340
	.quad	.L353
	.quad	.L354
	.quad	.L355
	.quad	.L356
	.quad	.L357
	.quad	.L358
	.quad	.L359
	.quad	.L360
	.quad	.L361
	.text
.L343:
	.loc 1 1576 0
	movq	-240(%rbp), %rax	# arg1s, tmp1109
	movq	-248(%rbp), %rdx	# arg0s, tmp1110
	addq	%rdx, %rax	# tmp1110, tmp1108
	movq	%rax, -232(%rbp)	# tmp1108, val
	.loc 1 1577 0
	jmp	.L362	#
.L344:
	.loc 1 1580 0
	movq	-240(%rbp), %rax	# arg1s, tmp1115
	movq	-248(%rbp), %rdx	# arg0s, tmp1116
	subq	%rax, %rdx	# tmp1115, tmp1114
	movq	%rdx, %rax	# tmp1114, tmp1114
	movq	%rax, -232(%rbp)	# tmp1114, val
	.loc 1 1581 0
	jmp	.L362	#
.L345:
	.loc 1 1584 0
	movq	-248(%rbp), %rax	# arg0s, tmp1118
	imulq	-240(%rbp), %rax	# arg1s, tmp1117
	movq	%rax, -232(%rbp)	# tmp1117, val
	.loc 1 1585 0
	jmp	.L362	#
.L346:
	.loc 1 1588 0
	cmpq	$0, -240(%rbp)	#, arg1s
	je	.L363	#,
	.loc 1 1589 0
	movabsq	$-9223372036854775808, %rax	#, tmp1119
	cmpq	%rax, -248(%rbp)	# tmp1119, arg0s
	jne	.L364	#,
	.loc 1 1590 0
	cmpq	$-1, -240(%rbp)	#, arg1s
	jne	.L364	#,
.L363:
	.loc 1 1591 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L364:
	.loc 1 1592 0
	movq	-248(%rbp), %rax	# arg0s, tmp1123
	cqto
	idivq	-240(%rbp)	# arg1s
	movq	%rax, -232(%rbp)	# tmp1121, val
	.loc 1 1593 0
	jmp	.L362	#
.L347:
	.loc 1 1596 0
	cmpq	$0, -240(%rbp)	#, arg1s
	je	.L365	#,
	.loc 1 1597 0
	movabsq	$-9223372036854775808, %rax	#, tmp1124
	cmpq	%rax, -248(%rbp)	# tmp1124, arg0s
	jne	.L366	#,
	.loc 1 1598 0
	cmpq	$-1, -240(%rbp)	#, arg1s
	jne	.L366	#,
.L365:
	.loc 1 1599 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L366:
	.loc 1 1600 0
	movq	-248(%rbp), %rax	# arg0s, tmp1126
	cqto
	idivq	-240(%rbp)	# arg1s
	movq	%rdx, -232(%rbp)	# tmp1127, val
	.loc 1 1601 0
	jmp	.L362	#
.L348:
	.loc 1 1604 0
	cmpq	$0, -256(%rbp)	#, arg1
	je	.L367	#,
	.loc 1 1605 0
	movabsq	$-9223372036854775808, %rax	#, tmp1129
	cmpq	%rax, -248(%rbp)	# tmp1129, arg0s
	jne	.L368	#,
	.loc 1 1606 0
	cmpq	$-1, -240(%rbp)	#, arg1s
	jne	.L368	#,
.L367:
	.loc 1 1607 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L368:
	.loc 1 1608 0
	movq	-264(%rbp), %rax	# arg0, arg0.153
	movq	-256(%rbp), %rbx	# arg1, arg1.154
	movl	$0, %edx	#, tmp1131
	divq	%rbx	# arg1.154
	movq	%rax, -232(%rbp)	# D.14152, val
	.loc 1 1609 0
	jmp	.L362	#
.L349:
	.loc 1 1612 0
	cmpq	$0, -256(%rbp)	#, arg1
	je	.L369	#,
	.loc 1 1613 0
	movabsq	$-9223372036854775808, %rax	#, tmp1132
	cmpq	%rax, -248(%rbp)	# tmp1132, arg0s
	jne	.L370	#,
	.loc 1 1614 0
	cmpq	$-1, -240(%rbp)	#, arg1s
	jne	.L370	#,
.L369:
	.loc 1 1615 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L370:
	.loc 1 1616 0
	movq	-264(%rbp), %rax	# arg0, arg0.155
	movq	-256(%rbp), %rcx	# arg1, arg1.156
	movl	$0, %edx	#, tmp1133
	divq	%rcx	# arg1.156
	movq	%rdx, %rax	# tmp1133, D.14152
	movq	%rax, -232(%rbp)	# D.14152, val
	.loc 1 1617 0
	jmp	.L362	#
.L350:
	.loc 1 1620 0
	movq	-256(%rbp), %rax	# arg1, tmp1139
	movq	-264(%rbp), %rdx	# arg0, tmp1140
	andq	%rdx, %rax	# tmp1140, tmp1138
	movq	%rax, -232(%rbp)	# tmp1138, val
	.loc 1 1621 0
	jmp	.L362	#
.L351:
	.loc 1 1624 0
	movq	-256(%rbp), %rax	# arg1, tmp1145
	movq	-264(%rbp), %rdx	# arg0, tmp1146
	orq	%rdx, %rax	# tmp1146, tmp1144
	movq	%rax, -232(%rbp)	# tmp1144, val
	.loc 1 1625 0
	jmp	.L362	#
.L352:
	.loc 1 1628 0
	movq	-256(%rbp), %rax	# arg1, tmp1151
	movq	-264(%rbp), %rdx	# arg0, tmp1152
	xorq	%rdx, %rax	# tmp1152, tmp1150
	movq	%rax, -232(%rbp)	# tmp1150, val
	.loc 1 1629 0
	jmp	.L362	#
.L356:
	.loc 1 1634 0
	cmpq	$0, -256(%rbp)	#, arg1
	jns	.L371	#,
	.loc 1 1635 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L371:
	.loc 1 1642 0
	movq	-264(%rbp), %rdx	# arg0, arg0.157
	movq	-256(%rbp), %rax	# arg1, tmp1153
	movl	%eax, %ecx	# D.14147, tmp1212
	shrq	%cl, %rdx	# tmp1212, D.14152
	movq	%rdx, %rax	# D.14152, D.14152
	movq	%rax, -232(%rbp)	# D.14152, val
	.loc 1 1643 0
	jmp	.L362	#
.L353:
	.loc 1 1646 0
	cmpq	$0, -256(%rbp)	#, arg1
	jns	.L372	#,
	.loc 1 1647 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L372:
	.loc 1 1654 0
	movq	-264(%rbp), %rdx	# arg0, arg0.158
	movq	-256(%rbp), %rax	# arg1, tmp1154
	movl	%eax, %ecx	# D.14147, tmp1214
	salq	%cl, %rdx	# tmp1214, D.14152
	movq	%rdx, %rax	# D.14152, D.14152
	movq	%rax, -232(%rbp)	# D.14152, val
	.loc 1 1655 0
	jmp	.L362	#
.L355:
	.loc 1 1658 0
	cmpq	$0, -256(%rbp)	#, arg1
	jns	.L373	#,
	.loc 1 1659 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L373:
	.loc 1 1666 0
	movq	-256(%rbp), %rax	# arg1, tmp1155
	movq	-248(%rbp), %rdx	# arg0s, tmp1159
	movl	%eax, %ecx	# D.14147, tmp1216
	sarq	%cl, %rdx	# tmp1216, tmp1158
	movq	%rdx, %rax	# tmp1158, tmp1158
	movq	%rax, -232(%rbp)	# tmp1158, val
	.loc 1 1670 0
	cmpq	$0, -248(%rbp)	#, arg0s
	jns	.L374	#,
	.loc 1 1670 0 is_stmt 0 discriminator 1
	cmpq	$0, -256(%rbp)	#, arg1
	jle	.L374	#,
	.loc 1 1671 0 is_stmt 1
	movq	-256(%rbp), %rax	# arg1, tmp1160
	movl	$64, %edx	#, tmp1161
	subl	%eax, %edx	# D.14154, D.14154
	movl	%edx, %eax	# D.14154, D.14154
	movq	$-1, %rdx	#, tmp1162
	movl	%eax, %ecx	# D.14147, tmp1219
	salq	%cl, %rdx	# tmp1219, D.14151
	movq	%rdx, %rax	# D.14151, D.14151
	orq	%rax, -232(%rbp)	# D.14151, val
	.loc 1 1673 0
	jmp	.L362	#
.L374:
	jmp	.L362	#
.L357:
	.loc 1 1676 0
	cmpq	$0, -256(%rbp)	#, arg1
	jns	.L375	#,
	.loc 1 1677 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L375:
	.loc 1 1679 0
	movl	-268(%rbp), %ecx	# width, D.14151
	movq	-256(%rbp), %rax	# arg1, tmp1164
	cqto
	idivq	%rcx	# D.14151
	movq	%rdx, -256(%rbp)	# tmp1165, arg1
	.loc 1 1680 0
	movq	-264(%rbp), %rdx	# arg0, arg0.159
	movq	-256(%rbp), %rax	# arg1, tmp1167
	movl	-268(%rbp), %ecx	# width, tmp1168
	subl	%eax, %ecx	# D.14154, D.14154
	movl	%ecx, %eax	# D.14154, D.14154
	movq	%rdx, %rsi	# arg0.159, D.14152
	movl	%eax, %ecx	# D.14147, tmp1222
	salq	%cl, %rsi	# tmp1222, D.14152
	.loc 1 1681 0
	movq	-264(%rbp), %rdx	# arg0, arg0.160
	movq	-256(%rbp), %rax	# arg1, tmp1169
	movl	%eax, %ecx	# D.14147, tmp1224
	shrq	%cl, %rdx	# tmp1224, D.14152
	movq	%rdx, %rax	# D.14152, D.14152
	orq	%rsi, %rax	# D.14152, D.14152
	.loc 1 1680 0
	movq	%rax, -232(%rbp)	# D.14152, val
	.loc 1 1682 0
	jmp	.L362	#
.L354:
	.loc 1 1685 0
	cmpq	$0, -256(%rbp)	#, arg1
	jns	.L376	#,
	.loc 1 1686 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L376:
	.loc 1 1688 0
	movl	-268(%rbp), %ecx	# width, D.14151
	movq	-256(%rbp), %rax	# arg1, tmp1171
	cqto
	idivq	%rcx	# D.14151
	movq	%rdx, -256(%rbp)	# tmp1172, arg1
	.loc 1 1689 0
	movq	-264(%rbp), %rdx	# arg0, arg0.161
	movq	-256(%rbp), %rax	# arg1, tmp1174
	movq	%rdx, %rsi	# arg0.161, D.14152
	movl	%eax, %ecx	# D.14147, tmp1226
	salq	%cl, %rsi	# tmp1226, D.14152
	.loc 1 1690 0
	movq	-264(%rbp), %rdx	# arg0, arg0.162
	movq	-256(%rbp), %rax	# arg1, tmp1175
	movl	-268(%rbp), %ecx	# width, tmp1176
	subl	%eax, %ecx	# D.14154, D.14154
	movl	%ecx, %eax	# D.14154, D.14154
	movl	%eax, %ecx	# D.14147, tmp1229
	shrq	%cl, %rdx	# tmp1229, D.14152
	movq	%rdx, %rax	# D.14152, D.14152
	orq	%rsi, %rax	# D.14152, D.14152
	.loc 1 1689 0
	movq	%rax, -232(%rbp)	# D.14152, val
	.loc 1 1691 0
	jmp	.L362	#
.L341:
	.loc 1 1695 0
	movl	$0, %eax	#, D.14144
	jmp	.L163	#
.L358:
	.loc 1 1698 0
	movq	-240(%rbp), %rax	# arg1s, tmp1178
	cmpq	%rax, -248(%rbp)	# tmp1178, arg0s
	cmovle	-248(%rbp), %rax	# arg0s,, tmp1177
	movq	%rax, -232(%rbp)	# tmp1177, val
	.loc 1 1699 0
	jmp	.L362	#
.L360:
	.loc 1 1702 0
	movq	-264(%rbp), %rdx	# arg0, arg0.163
	.loc 1 1703 0
	movq	-256(%rbp), %rax	# arg1, arg1.164
	cmpq	%rax, %rdx	# arg1.164, arg0.163
	cmovbe	%rdx, %rax	# arg0.163,, D.14152
	.loc 1 1702 0
	movq	%rax, -232(%rbp)	# D.14152, val
	.loc 1 1704 0
	jmp	.L362	#
.L359:
	.loc 1 1707 0
	movq	-248(%rbp), %rax	# arg0s, tmp1180
	cmpq	%rax, -240(%rbp)	# tmp1180, arg1s
	cmovge	-240(%rbp), %rax	# arg1s,, tmp1179
	movq	%rax, -232(%rbp)	# tmp1179, val
	.loc 1 1708 0
	jmp	.L362	#
.L361:
	.loc 1 1712 0
	movq	-256(%rbp), %rdx	# arg1, arg1.165
	.loc 1 1711 0
	movq	-264(%rbp), %rax	# arg0, arg0.166
	.loc 1 1712 0
	cmpq	%rax, %rdx	# arg0.166, arg1.165
	cmovae	%rdx, %rax	# arg1.165,, D.14152
	.loc 1 1711 0
	movq	%rax, -232(%rbp)	# D.14152, val
	.loc 1 1713 0
	jmp	.L362	#
.L340:
	.loc 1 1716 0
	movl	$__FUNCTION__.10844, %edx	#,
	movl	$1716, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L362:
	.loc 1 1719 0
	movl	-296(%rbp), %edx	# mode, tmp1181
	movq	-232(%rbp), %rax	# val, tmp1182
	movl	%edx, %esi	# tmp1181,
	movq	%rax, %rdi	# tmp1182,
	call	trunc_int_for_mode	#
	movq	%rax, -232(%rbp)	# tmp1183, val
	.loc 1 1721 0
	movq	-232(%rbp), %rax	# val, tmp1184
	movq	%rax, %rsi	# tmp1184,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
.L163:
	.loc 1 1722 0
	addq	$360, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	simplify_binary_operation, .-simplify_binary_operation
	.section	.rodata
.LC1:
	.string	"CPU2006: incomparable RTLs:"
	.text
	.type	simplify_plus_minus_op_data_cmp, @function
simplify_plus_minus_op_data_cmp:
.LFB14:
	.loc 1 1746 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# p1, p1
	movq	%rsi, -80(%rbp)	# p2, p2
	.loc 1 1747 0
	movq	-72(%rbp), %rax	# p1, tmp101
	movq	%rax, -48(%rbp)	# tmp101, d1
	.loc 1 1748 0
	movq	-80(%rbp), %rax	# p2, tmp102
	movq	%rax, -40(%rbp)	# tmp102, d2
	.loc 1 1754 0
	movq	-40(%rbp), %rax	# d2, tmp103
	movq	(%rax), %rax	# d2_5->op, D.14167
	movq	%rax, %rdi	# D.14167,
	call	commutative_operand_precedence	#
	movl	%eax, %ebx	#, D.14166
	.loc 1 1755 0
	movq	-48(%rbp), %rax	# d1, tmp104
	movq	(%rax), %rax	# d1_3->op, D.14167
	movq	%rax, %rdi	# D.14167,
	call	commutative_operand_precedence	#
	.loc 1 1754 0
	subl	%eax, %ebx	# D.14166, tmp105
	movl	%ebx, %eax	# tmp105, tmp105
	movl	%eax, -52(%rbp)	# tmp105, val
	.loc 1 1756 0
	cmpl	$0, -52(%rbp)	#, val
	je	.L380	#,
	.loc 1 1757 0
	movl	-52(%rbp), %eax	# val, D.14166
	jmp	.L381	#
.L380:
	.loc 1 1762 0
	movq	-48(%rbp), %rax	# d1, tmp106
	movq	(%rax), %rax	# d1_3->op, D.14167
	movzwl	(%rax), %eax	# _12->code, D.14168
	cmpw	$61, %ax	#, D.14168
	jne	.L382	#,
	.loc 1 1762 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# d2, tmp107
	movq	(%rax), %rax	# d2_5->op, D.14167
	movzwl	(%rax), %eax	# _14->code, D.14168
	cmpw	$61, %ax	#, D.14168
	jne	.L382	#,
	.loc 1 1764 0 is_stmt 1
	movq	-48(%rbp), %rax	# d1, tmp108
	movq	(%rax), %rax	# d1_3->op, D.14167
	movl	8(%rax), %edx	# _16->fld[0].rtuint, D.14169
	movq	-40(%rbp), %rax	# d2, tmp109
	movq	(%rax), %rax	# d2_5->op, D.14167
	movl	8(%rax), %eax	# _18->fld[0].rtuint, D.14169
	subl	%eax, %edx	# D.14169, D.14169
	movl	%edx, %eax	# D.14169, D.14169
	movl	%eax, -52(%rbp)	# D.14169, val
	.loc 1 1765 0
	cmpl	$0, -52(%rbp)	#, val
	je	.L383	#,
	.loc 1 1766 0
	movl	-52(%rbp), %eax	# val, D.14166
	jmp	.L381	#
.L383:
	.loc 1 1765 0 discriminator 1
	jmp	.L384	#
.L382:
	.loc 1 1768 0
	movq	-48(%rbp), %rax	# d1, tmp110
	movq	(%rax), %rax	# d1_3->op, D.14167
	movzwl	(%rax), %eax	# _23->code, D.14168
	cmpw	$66, %ax	#, D.14168
	jne	.L385	#,
	.loc 1 1768 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# d2, tmp111
	movq	(%rax), %rax	# d2_5->op, D.14167
	movzwl	(%rax), %eax	# _25->code, D.14168
	cmpw	$66, %ax	#, D.14168
	jne	.L385	#,
.LBB27:
	.loc 1 1770 0 is_stmt 1
	movq	-48(%rbp), %rax	# d1, tmp112
	movq	(%rax), %rax	# d1_3->op, D.14167
	movq	8(%rax), %rax	# _27->fld[0].rtx, tmp113
	movq	%rax, -32(%rbp)	# tmp113, op1
	.loc 1 1771 0
	movq	-40(%rbp), %rax	# d2, tmp114
	movq	(%rax), %rax	# d2_5->op, D.14167
	movq	8(%rax), %rax	# _29->fld[0].rtx, tmp115
	movq	%rax, -24(%rbp)	# tmp115, op2
	.loc 1 1772 0
	movq	-32(%rbp), %rax	# op1, tmp116
	movzwl	(%rax), %eax	# op1_28->code, D.14168
	cmpw	$68, %ax	#, D.14168
	jne	.L386	#,
	.loc 1 1772 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op2, tmp117
	movzwl	(%rax), %eax	# op2_30->code, D.14168
	cmpw	$68, %ax	#, D.14168
	jne	.L386	#,
	.loc 1 1774 0 is_stmt 1
	movq	-32(%rbp), %rax	# op1, tmp118
	movq	8(%rax), %rax	# op1_28->fld[0].rtstr, D.14170
	movq	%rax, %rdx	# D.14170, D.14171
	movq	-24(%rbp), %rax	# op2, tmp119
	movq	8(%rax), %rax	# op2_30->fld[0].rtstr, D.14170
	subq	%rax, %rdx	# D.14171, D.14171
	movq	%rdx, %rax	# D.14171, D.14171
	movl	%eax, -52(%rbp)	# D.14171, val
	.loc 1 1775 0
	cmpl	$0, -52(%rbp)	#, val
	je	.L386	#,
	.loc 1 1776 0
	movl	-52(%rbp), %eax	# val, D.14166
	jmp	.L381	#
.L386:
	.loc 1 1778 0
	movq	-32(%rbp), %rax	# op1, tmp120
	movzwl	(%rax), %eax	# op1_28->code, D.14168
	movzwl	%ax, %edx	# D.14168, D.14169
	movq	-24(%rbp), %rax	# op2, tmp121
	movzwl	(%rax), %eax	# op2_30->code, D.14168
	movzwl	%ax, %eax	# D.14168, D.14169
	subl	%eax, %edx	# D.14169, D.14169
	movl	%edx, %eax	# D.14169, D.14169
	movl	%eax, -52(%rbp)	# D.14169, val
	.loc 1 1779 0
	cmpl	$0, -52(%rbp)	#, val
	je	.L387	#,
	.loc 1 1780 0
	movl	-52(%rbp), %eax	# val, D.14166
	jmp	.L381	#
.L387:
.LBE27:
	.loc 1 1769 0
	jmp	.L384	#
.L385:
	.loc 1 1784 0
	movq	-48(%rbp), %rax	# d1, tmp122
	movq	(%rax), %rax	# d1_3->op, D.14167
	movzwl	(%rax), %eax	# _47->code, D.14168
	movzwl	%ax, %edx	# D.14168, D.14169
	movq	-40(%rbp), %rax	# d2, tmp123
	movq	(%rax), %rax	# d2_5->op, D.14167
	movzwl	(%rax), %eax	# _50->code, D.14168
	movzwl	%ax, %eax	# D.14168, D.14169
	subl	%eax, %edx	# D.14169, D.14169
	movl	%edx, %eax	# D.14169, D.14169
	movl	%eax, -52(%rbp)	# D.14169, val
	.loc 1 1785 0
	cmpl	$0, -52(%rbp)	#, val
	je	.L384	#,
	.loc 1 1786 0
	movl	-52(%rbp), %eax	# val, D.14166
	jmp	.L381	#
.L384:
	.loc 1 1789 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 1790 0
	movq	-48(%rbp), %rax	# d1, tmp124
	movq	(%rax), %rax	# d1_3->op, D.14167
	movq	%rax, %rdi	# D.14167,
	call	debug_rtx	#
	.loc 1 1791 0
	movq	-40(%rbp), %rax	# d2, tmp125
	movq	(%rax), %rax	# d2_5->op, D.14167
	movq	%rax, %rdi	# D.14167,
	call	debug_rtx	#
	.loc 1 1793 0
	movl	$-1, %eax	#, D.14166
.L381:
	.loc 1 1795 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	simplify_plus_minus_op_data_cmp, .-simplify_plus_minus_op_data_cmp
	.type	simplify_plus_minus, @function
simplify_plus_minus:
.LFB15:
	.loc 1 1803 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$280, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -260(%rbp)	# code, code
	movl	%esi, -264(%rbp)	# mode, mode
	movq	%rdx, -272(%rbp)	# op0, op0
	movq	%rcx, -280(%rbp)	# op1, op1
	movl	%r8d, -284(%rbp)	# force, force
	.loc 1 1806 0
	movl	$2, -248(%rbp)	#, n_ops
	movl	$2, -244(%rbp)	#, input_ops
	movl	$0, -240(%rbp)	#, input_consts
	.loc 1 1810 0
	leaq	-144(%rbp), %rax	#, tmp213
	movl	$128, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp213,
	call	memset	#
	.loc 1 1816 0
	movq	-272(%rbp), %rax	# op0, tmp214
	movq	%rax, -144(%rbp)	# tmp214, ops[0].op
	.loc 1 1817 0
	movl	$0, -136(%rbp)	#, ops[0].neg
	.loc 1 1818 0
	movq	-280(%rbp), %rax	# op1, tmp215
	movq	%rax, -128(%rbp)	# tmp215, ops[1].op
	.loc 1 1819 0
	cmpl	$76, -260(%rbp)	#, code
	sete	%al	#, D.14174
	movzbl	%al, %eax	# D.14174, D.14175
	movl	%eax, -120(%rbp)	# D.14175, ops[1].neg
.L406:
	.loc 1 1823 0
	movl	$0, -224(%rbp)	#, changed
	.loc 1 1825 0
	movl	$0, -220(%rbp)	#, i
	jmp	.L389	#
.L405:
.LBB28:
	.loc 1 1827 0
	movl	-220(%rbp), %eax	# i, tmp217
	cltq
	salq	$4, %rax	#, tmp218
	leaq	-16(%rbp), %rbx	#, tmp586
	addq	%rbx, %rax	# tmp586, tmp219
	addq	$-128, %rax	#, tmp220
	movq	(%rax), %rax	# ops[i_31].op, tmp221
	movq	%rax, -152(%rbp)	# tmp221, this_op
	.loc 1 1828 0
	movl	-220(%rbp), %eax	# i, tmp223
	cltq
	salq	$4, %rax	#, tmp224
	leaq	-16(%rbp), %rbx	#, tmp587
	addq	%rbx, %rax	# tmp587, tmp225
	addq	$-128, %rax	#, tmp226
	movl	8(%rax), %eax	# ops[i_31].neg, tmp227
	movl	%eax, -204(%rbp)	# tmp227, this_neg
	.loc 1 1829 0
	movq	-152(%rbp), %rax	# this_op, tmp228
	movzwl	(%rax), %eax	# this_op_63->code, D.14176
	movzwl	%ax, %eax	# D.14176, tmp229
	movl	%eax, -200(%rbp)	# tmp229, this_code
	.loc 1 1831 0
	movl	-200(%rbp), %eax	# this_code, tmp231
	subl	$54, %eax	#, tmp230
	cmpl	$32, %eax	#, tmp230
	ja	.L451	#,
	movl	%eax, %eax	# tmp230, tmp232
	movq	.L392(,%rax,8), %rax	#, tmp233
	jmp	*%rax	# tmp233
	.section	.rodata
	.align 8
	.align 4
.L392:
	.quad	.L391
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L393
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L394
	.quad	.L394
	.quad	.L395
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L451
	.quad	.L396
	.text
.L394:
	.loc 1 1835 0
	cmpl	$7, -248(%rbp)	#, n_ops
	jne	.L397	#,
	.loc 1 1836 0
	movl	$0, %eax	#, D.14173
	jmp	.L450	#
.L397:
	.loc 1 1838 0
	movq	-152(%rbp), %rax	# this_op, tmp234
	movq	16(%rax), %rax	# this_op_63->fld[1].rtx, D.14177
	movl	-248(%rbp), %edx	# n_ops, tmp236
	movslq	%edx, %rdx	# tmp236, tmp235
	salq	$4, %rdx	#, tmp237
	leaq	-16(%rbp), %rbx	#, tmp588
	addq	%rbx, %rdx	# tmp588, tmp238
	addq	$-128, %rdx	#, tmp239
	movq	%rax, (%rdx)	# D.14177, ops[n_ops_8].op
	.loc 1 1839 0
	cmpl	$76, -200(%rbp)	#, this_code
	sete	%al	#, D.14174
	movzbl	%al, %eax	# D.14174, D.14175
	xorl	-204(%rbp), %eax	# this_neg, D.14175
	movl	-248(%rbp), %edx	# n_ops, tmp241
	movslq	%edx, %rdx	# tmp241, tmp240
	salq	$4, %rdx	#, tmp242
	leaq	-16(%rbp), %rbx	#, tmp589
	addq	%rbx, %rdx	# tmp589, tmp243
	addq	$-128, %rdx	#, tmp244
	movl	%eax, 8(%rdx)	# D.14175, ops[n_ops_8].neg
	.loc 1 1840 0
	addl	$1, -248(%rbp)	#, n_ops
	.loc 1 1842 0
	movq	-152(%rbp), %rax	# this_op, tmp245
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movl	-220(%rbp), %edx	# i, tmp247
	movslq	%edx, %rdx	# tmp247, tmp246
	salq	$4, %rdx	#, tmp248
	leaq	-16(%rbp), %rcx	#, tmp590
	addq	%rcx, %rdx	# tmp590, tmp249
	addq	$-128, %rdx	#, tmp250
	movq	%rax, (%rdx)	# D.14177, ops[i_31].op
	.loc 1 1843 0
	addl	$1, -244(%rbp)	#, input_ops
	.loc 1 1844 0
	movl	$1, -224(%rbp)	#, changed
	.loc 1 1845 0
	jmp	.L399	#
.L395:
	.loc 1 1848 0
	movq	-152(%rbp), %rax	# this_op, tmp251
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movl	-220(%rbp), %edx	# i, tmp253
	movslq	%edx, %rdx	# tmp253, tmp252
	salq	$4, %rdx	#, tmp254
	leaq	-16(%rbp), %rbx	#, tmp591
	addq	%rbx, %rdx	# tmp591, tmp255
	addq	$-128, %rdx	#, tmp256
	movq	%rax, (%rdx)	# D.14177, ops[i_31].op
	.loc 1 1849 0
	cmpl	$0, -204(%rbp)	#, this_neg
	sete	%al	#, D.14174
	movzbl	%al, %eax	# D.14174, D.14175
	movl	-220(%rbp), %edx	# i, tmp258
	movslq	%edx, %rdx	# tmp258, tmp257
	salq	$4, %rdx	#, tmp259
	leaq	-16(%rbp), %rdi	#, tmp592
	addq	%rdi, %rdx	# tmp592, tmp260
	addq	$-128, %rdx	#, tmp261
	movl	%eax, 8(%rdx)	# D.14175, ops[i_31].neg
	.loc 1 1850 0
	movl	$1, -224(%rbp)	#, changed
	.loc 1 1851 0
	jmp	.L399	#
.L393:
	.loc 1 1854 0
	cmpl	$6, -248(%rbp)	#, n_ops
	jg	.L400	#,
	.loc 1 1855 0
	movq	-152(%rbp), %rax	# this_op, tmp262
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _80->code, D.14176
	cmpw	$75, %ax	#, D.14176
	jne	.L400	#,
	.loc 1 1856 0
	movq	-152(%rbp), %rax	# this_op, tmp263
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _82->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _83->code, D.14176
	cmpw	$67, %ax	#, D.14176
	je	.L401	#,
	.loc 1 1856 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# this_op, tmp264
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _85->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _86->code, D.14176
	cmpw	$68, %ax	#, D.14176
	je	.L401	#,
	movq	-152(%rbp), %rax	# this_op, tmp265
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _88->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _89->code, D.14176
	cmpw	$54, %ax	#, D.14176
	je	.L401	#,
	movq	-152(%rbp), %rax	# this_op, tmp266
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _91->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _92->code, D.14176
	cmpw	$55, %ax	#, D.14176
	je	.L401	#,
	movq	-152(%rbp), %rax	# this_op, tmp267
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _94->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _95->code, D.14176
	cmpw	$58, %ax	#, D.14176
	je	.L401	#,
	movq	-152(%rbp), %rax	# this_op, tmp268
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _97->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _98->code, D.14176
	cmpw	$134, %ax	#, D.14176
	je	.L401	#,
	movq	-152(%rbp), %rax	# this_op, tmp269
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _100->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _101->code, D.14176
	cmpw	$56, %ax	#, D.14176
	je	.L401	#,
	movq	-152(%rbp), %rax	# this_op, tmp270
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _103->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _104->code, D.14176
	cmpw	$140, %ax	#, D.14176
	jne	.L400	#,
.L401:
	.loc 1 1857 0 is_stmt 1
	movq	-152(%rbp), %rax	# this_op, tmp271
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _106->fld[1].rtx, D.14177
	movzwl	(%rax), %eax	# _107->code, D.14176
	cmpw	$67, %ax	#, D.14176
	je	.L402	#,
	.loc 1 1857 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# this_op, tmp272
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _109->fld[1].rtx, D.14177
	movzwl	(%rax), %eax	# _110->code, D.14176
	cmpw	$68, %ax	#, D.14176
	je	.L402	#,
	movq	-152(%rbp), %rax	# this_op, tmp273
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _112->fld[1].rtx, D.14177
	movzwl	(%rax), %eax	# _113->code, D.14176
	cmpw	$54, %ax	#, D.14176
	je	.L402	#,
	movq	-152(%rbp), %rax	# this_op, tmp274
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _115->fld[1].rtx, D.14177
	movzwl	(%rax), %eax	# _116->code, D.14176
	cmpw	$55, %ax	#, D.14176
	je	.L402	#,
	movq	-152(%rbp), %rax	# this_op, tmp275
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _118->fld[1].rtx, D.14177
	movzwl	(%rax), %eax	# _119->code, D.14176
	cmpw	$58, %ax	#, D.14176
	je	.L402	#,
	movq	-152(%rbp), %rax	# this_op, tmp276
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _121->fld[1].rtx, D.14177
	movzwl	(%rax), %eax	# _122->code, D.14176
	cmpw	$134, %ax	#, D.14176
	je	.L402	#,
	movq	-152(%rbp), %rax	# this_op, tmp277
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _124->fld[1].rtx, D.14177
	movzwl	(%rax), %eax	# _125->code, D.14176
	cmpw	$56, %ax	#, D.14176
	je	.L402	#,
	movq	-152(%rbp), %rax	# this_op, tmp278
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _127->fld[1].rtx, D.14177
	movzwl	(%rax), %eax	# _128->code, D.14176
	cmpw	$140, %ax	#, D.14176
	jne	.L400	#,
.L402:
	.loc 1 1859 0 is_stmt 1
	movq	-152(%rbp), %rax	# this_op, tmp279
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _130->fld[0].rtx, D.14177
	movl	-220(%rbp), %edx	# i, tmp281
	movslq	%edx, %rdx	# tmp281, tmp280
	salq	$4, %rdx	#, tmp282
	leaq	-16(%rbp), %rcx	#, tmp593
	addq	%rcx, %rdx	# tmp593, tmp283
	addq	$-128, %rdx	#, tmp284
	movq	%rax, (%rdx)	# D.14177, ops[i_31].op
	.loc 1 1860 0
	movq	-152(%rbp), %rax	# this_op, tmp285
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _132->fld[1].rtx, D.14177
	movl	-248(%rbp), %edx	# n_ops, tmp287
	movslq	%edx, %rdx	# tmp287, tmp286
	salq	$4, %rdx	#, tmp288
	leaq	-16(%rbp), %rbx	#, tmp594
	addq	%rbx, %rdx	# tmp594, tmp289
	addq	$-128, %rdx	#, tmp290
	movq	%rax, (%rdx)	# D.14177, ops[n_ops_8].op
	.loc 1 1861 0
	movl	-248(%rbp), %eax	# n_ops, tmp292
	cltq
	salq	$4, %rax	#, tmp293
	leaq	-16(%rbp), %rdi	#, tmp595
	addq	%rdi, %rax	# tmp595, tmp294
	leaq	-128(%rax), %rdx	#, tmp295
	movl	-204(%rbp), %eax	# this_neg, tmp296
	movl	%eax, 8(%rdx)	# tmp296, ops[n_ops_8].neg
	.loc 1 1862 0
	addl	$1, -248(%rbp)	#, n_ops
	.loc 1 1863 0
	addl	$1, -240(%rbp)	#, input_consts
	.loc 1 1864 0
	movl	$1, -224(%rbp)	#, changed
	.loc 1 1866 0
	jmp	.L399	#
.L400:
	jmp	.L399	#
.L396:
	.loc 1 1870 0
	cmpl	$7, -248(%rbp)	#, n_ops
	je	.L403	#,
	.loc 1 1872 0
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.14177
	movl	-248(%rbp), %edx	# n_ops, tmp298
	movslq	%edx, %rdx	# tmp298, tmp297
	salq	$4, %rdx	#, tmp299
	leaq	-16(%rbp), %rcx	#, tmp596
	addq	%rcx, %rdx	# tmp596, tmp300
	addq	$-128, %rdx	#, tmp301
	movq	%rax, (%rdx)	# D.14177, ops[n_ops_8].op
	.loc 1 1873 0
	movl	-248(%rbp), %eax	# n_ops, n_ops.167
	leal	1(%rax), %edx	#, tmp302
	movl	%edx, -248(%rbp)	# tmp302, n_ops
	cltq
	salq	$4, %rax	#, tmp304
	leaq	-16(%rbp), %rbx	#, tmp597
	addq	%rbx, %rax	# tmp597, tmp305
	leaq	-128(%rax), %rdx	#, tmp306
	movl	-204(%rbp), %eax	# this_neg, tmp307
	movl	%eax, 8(%rdx)	# tmp307, ops[n_ops.167_138].neg
	.loc 1 1874 0
	movq	-152(%rbp), %rax	# this_op, tmp308
	movq	8(%rax), %rax	# this_op_63->fld[0].rtx, D.14177
	movl	-220(%rbp), %edx	# i, tmp310
	movslq	%edx, %rdx	# tmp310, tmp309
	salq	$4, %rdx	#, tmp311
	leaq	-16(%rbp), %rdi	#, tmp598
	addq	%rdi, %rdx	# tmp598, tmp312
	addq	$-128, %rdx	#, tmp313
	movq	%rax, (%rdx)	# D.14177, ops[i_31].op
	.loc 1 1875 0
	cmpl	$0, -204(%rbp)	#, this_neg
	sete	%al	#, D.14174
	movzbl	%al, %eax	# D.14174, D.14175
	movl	-220(%rbp), %edx	# i, tmp315
	movslq	%edx, %rdx	# tmp315, tmp314
	salq	$4, %rdx	#, tmp316
	leaq	-16(%rbp), %rcx	#, tmp599
	addq	%rcx, %rdx	# tmp599, tmp317
	addq	$-128, %rdx	#, tmp318
	movl	%eax, 8(%rdx)	# D.14175, ops[i_31].neg
	.loc 1 1876 0
	movl	$1, -224(%rbp)	#, changed
	.loc 1 1878 0
	jmp	.L399	#
.L403:
	jmp	.L399	#
.L391:
	.loc 1 1881 0
	cmpl	$0, -204(%rbp)	#, this_neg
	je	.L404	#,
	.loc 1 1883 0
	movq	-152(%rbp), %rdx	# this_op, tmp319
	movl	-264(%rbp), %eax	# mode, tmp320
	movq	%rdx, %rsi	# tmp319,
	movl	%eax, %edi	# tmp320,
	call	neg_const_int	#
	movl	-220(%rbp), %edx	# i, tmp322
	movslq	%edx, %rdx	# tmp322, tmp321
	salq	$4, %rdx	#, tmp323
	leaq	-16(%rbp), %rbx	#, tmp600
	addq	%rbx, %rdx	# tmp600, tmp324
	addq	$-128, %rdx	#, tmp325
	movq	%rax, (%rdx)	# D.14177, ops[i_31].op
	.loc 1 1884 0
	movl	-220(%rbp), %eax	# i, tmp327
	cltq
	salq	$4, %rax	#, tmp328
	leaq	-16(%rbp), %rsi	#, tmp601
	addq	%rsi, %rax	# tmp601, tmp329
	addq	$-128, %rax	#, tmp330
	movl	$0, 8(%rax)	#, ops[i_31].neg
	.loc 1 1885 0
	movl	$1, -224(%rbp)	#, changed
	.loc 1 1887 0
	jmp	.L399	#
.L404:
	jmp	.L399	#
.L451:
	.loc 1 1890 0
	nop
.L399:
.LBE28:
	.loc 1 1825 0
	addl	$1, -220(%rbp)	#, i
.L389:
	.loc 1 1825 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# i, tmp331
	cmpl	-248(%rbp), %eax	# n_ops, tmp331
	jl	.L405	#,
	.loc 1 1894 0 is_stmt 1
	cmpl	$0, -224(%rbp)	#, changed
	jne	.L406	#,
	.loc 1 1897 0
	cmpl	$2, -248(%rbp)	#, n_ops
	jg	.L407	#,
	.loc 1 1897 0 is_stmt 0 discriminator 1
	cmpl	$0, -284(%rbp)	#, force
	jne	.L407	#,
	.loc 1 1898 0 is_stmt 1
	movl	$0, %eax	#, D.14173
	jmp	.L450	#
.L407:
	.loc 1 1901 0
	movl	$0, -220(%rbp)	#, i
	jmp	.L408	#
.L410:
	.loc 1 1902 0
	movl	-220(%rbp), %eax	# i, tmp333
	cltq
	salq	$4, %rax	#, tmp334
	leaq	-16(%rbp), %rdi	#, tmp602
	addq	%rdi, %rax	# tmp602, tmp335
	addq	$-128, %rax	#, tmp336
	movq	(%rax), %rax	# ops[i_32].op, D.14177
	movzwl	(%rax), %eax	# _151->code, D.14176
	cmpw	$58, %ax	#, D.14176
	jne	.L409	#,
	.loc 1 1903 0
	addl	$1, -240(%rbp)	#, input_consts
.L409:
	.loc 1 1901 0
	addl	$1, -220(%rbp)	#, i
.L408:
	.loc 1 1901 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# i, tmp337
	cmpl	-248(%rbp), %eax	# n_ops, tmp337
	jl	.L410	#,
	.loc 1 1908 0 is_stmt 1
	movl	$1, -232(%rbp)	#, first
.L425:
	.loc 1 1911 0
	movl	-232(%rbp), %eax	# first, tmp338
	movl	%eax, -224(%rbp)	# tmp338, changed
	.loc 1 1913 0
	movl	$0, -220(%rbp)	#, i
	jmp	.L411	#
.L424:
	.loc 1 1914 0
	movl	-220(%rbp), %eax	# i, tmp342
	addl	$1, %eax	#, tmp341
	movl	%eax, -216(%rbp)	# tmp341, j
	jmp	.L412	#
.L423:
.LBB29:
	.loc 1 1916 0
	movl	-220(%rbp), %eax	# i, tmp344
	cltq
	salq	$4, %rax	#, tmp345
	leaq	-16(%rbp), %rcx	#, tmp603
	addq	%rcx, %rax	# tmp603, tmp346
	addq	$-128, %rax	#, tmp347
	movq	(%rax), %rax	# ops[i_33].op, tmp348
	movq	%rax, -176(%rbp)	# tmp348, lhs
	movl	-216(%rbp), %eax	# j, tmp350
	cltq
	salq	$4, %rax	#, tmp351
	leaq	-16(%rbp), %rbx	#, tmp604
	addq	%rbx, %rax	# tmp604, tmp352
	addq	$-128, %rax	#, tmp353
	movq	(%rax), %rax	# ops[j_40].op, tmp354
	movq	%rax, -168(%rbp)	# tmp354, rhs
	.loc 1 1917 0
	movl	-220(%rbp), %eax	# i, tmp356
	cltq
	salq	$4, %rax	#, tmp357
	leaq	-16(%rbp), %rsi	#, tmp605
	addq	%rsi, %rax	# tmp605, tmp358
	addq	$-128, %rax	#, tmp359
	movl	8(%rax), %eax	# ops[i_33].neg, tmp360
	movl	%eax, -212(%rbp)	# tmp360, lneg
	movl	-216(%rbp), %eax	# j, tmp362
	cltq
	salq	$4, %rax	#, tmp363
	leaq	-16(%rbp), %rdi	#, tmp606
	addq	%rdi, %rax	# tmp606, tmp364
	addq	$-128, %rax	#, tmp365
	movl	8(%rax), %eax	# ops[j_40].neg, tmp366
	movl	%eax, -196(%rbp)	# tmp366, rneg
	.loc 1 1919 0
	cmpq	$0, -176(%rbp)	#, lhs
	je	.L413	#,
	.loc 1 1919 0 is_stmt 0 discriminator 1
	cmpq	$0, -168(%rbp)	#, rhs
	je	.L413	#,
	.loc 1 1920 0 is_stmt 1
	cmpl	$0, -232(%rbp)	#, first
	je	.L414	#,
	.loc 1 1920 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# lhs, tmp367
	movzwl	(%rax), %eax	# lhs_160->code, D.14176
	cmpw	$67, %ax	#, D.14176
	je	.L415	#,
	.loc 1 1920 0 discriminator 2
	movq	-176(%rbp), %rax	# lhs, tmp368
	movzwl	(%rax), %eax	# lhs_160->code, D.14176
	cmpw	$68, %ax	#, D.14176
	je	.L415	#,
	.loc 1 1920 0 discriminator 1
	movq	-176(%rbp), %rax	# lhs, tmp369
	movzwl	(%rax), %eax	# lhs_160->code, D.14176
	cmpw	$54, %ax	#, D.14176
	je	.L415	#,
	movq	-176(%rbp), %rax	# lhs, tmp370
	movzwl	(%rax), %eax	# lhs_160->code, D.14176
	cmpw	$55, %ax	#, D.14176
	je	.L415	#,
	movq	-176(%rbp), %rax	# lhs, tmp371
	movzwl	(%rax), %eax	# lhs_160->code, D.14176
	cmpw	$58, %ax	#, D.14176
	je	.L415	#,
	movq	-176(%rbp), %rax	# lhs, tmp372
	movzwl	(%rax), %eax	# lhs_160->code, D.14176
	cmpw	$134, %ax	#, D.14176
	je	.L415	#,
	movq	-176(%rbp), %rax	# lhs, tmp373
	movzwl	(%rax), %eax	# lhs_160->code, D.14176
	cmpw	$56, %ax	#, D.14176
	je	.L415	#,
	movq	-176(%rbp), %rax	# lhs, tmp374
	movzwl	(%rax), %eax	# lhs_160->code, D.14176
	cmpw	$140, %ax	#, D.14176
	jne	.L413	#,
.L415:
	movq	-168(%rbp), %rax	# rhs, tmp375
	movzwl	(%rax), %eax	# rhs_161->code, D.14176
	cmpw	$67, %ax	#, D.14176
	je	.L414	#,
	movq	-168(%rbp), %rax	# rhs, tmp376
	movzwl	(%rax), %eax	# rhs_161->code, D.14176
	cmpw	$68, %ax	#, D.14176
	je	.L414	#,
	movq	-168(%rbp), %rax	# rhs, tmp377
	movzwl	(%rax), %eax	# rhs_161->code, D.14176
	cmpw	$54, %ax	#, D.14176
	je	.L414	#,
	movq	-168(%rbp), %rax	# rhs, tmp378
	movzwl	(%rax), %eax	# rhs_161->code, D.14176
	cmpw	$55, %ax	#, D.14176
	je	.L414	#,
	movq	-168(%rbp), %rax	# rhs, tmp379
	movzwl	(%rax), %eax	# rhs_161->code, D.14176
	cmpw	$58, %ax	#, D.14176
	je	.L414	#,
	movq	-168(%rbp), %rax	# rhs, tmp380
	movzwl	(%rax), %eax	# rhs_161->code, D.14176
	cmpw	$134, %ax	#, D.14176
	je	.L414	#,
	movq	-168(%rbp), %rax	# rhs, tmp381
	movzwl	(%rax), %eax	# rhs_161->code, D.14176
	cmpw	$56, %ax	#, D.14176
	je	.L414	#,
	movq	-168(%rbp), %rax	# rhs, tmp382
	movzwl	(%rax), %eax	# rhs_161->code, D.14176
	cmpw	$140, %ax	#, D.14176
	jne	.L413	#,
.L414:
.LBB30:
	.loc 1 1922 0 is_stmt 1
	movl	$75, -208(%rbp)	#, ncode
	.loc 1 1924 0
	movl	-212(%rbp), %eax	# lneg, tmp383
	cmpl	-196(%rbp), %eax	# rneg, tmp383
	je	.L416	#,
	.loc 1 1926 0
	movl	$76, -208(%rbp)	#, ncode
	.loc 1 1927 0
	cmpl	$0, -212(%rbp)	#, lneg
	je	.L418	#,
	.loc 1 1928 0
	movq	-176(%rbp), %rax	# lhs, tmp384
	movq	%rax, -184(%rbp)	# tmp384, tem
	movq	-168(%rbp), %rax	# rhs, tmp385
	movq	%rax, -176(%rbp)	# tmp385, lhs
	movq	-184(%rbp), %rax	# tem, tmp386
	movq	%rax, -168(%rbp)	# tmp386, rhs
	jmp	.L418	#
.L416:
	.loc 1 1930 0
	movq	-168(%rbp), %rdx	# rhs, tmp387
	movq	-176(%rbp), %rax	# lhs, tmp388
	movq	%rdx, %rsi	# tmp387,
	movq	%rax, %rdi	# tmp388,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.14175
	je	.L418	#,
	.loc 1 1931 0
	movq	-176(%rbp), %rax	# lhs, tmp389
	movq	%rax, -184(%rbp)	# tmp389, tem
	movq	-168(%rbp), %rax	# rhs, tmp390
	movq	%rax, -176(%rbp)	# tmp390, lhs
	movq	-184(%rbp), %rax	# tem, tmp391
	movq	%rax, -168(%rbp)	# tmp391, rhs
.L418:
	.loc 1 1933 0
	movq	-168(%rbp), %rcx	# rhs, tmp392
	movq	-176(%rbp), %rdx	# lhs, tmp393
	movl	-264(%rbp), %esi	# mode, tmp394
	movl	-208(%rbp), %eax	# ncode, tmp395
	movl	%eax, %edi	# tmp395,
	call	simplify_binary_operation	#
	movq	%rax, -184(%rbp)	# tmp396, tem
	.loc 1 1939 0
	cmpq	$0, -184(%rbp)	#, tem
	je	.L413	#,
	.loc 1 1940 0
	movq	-184(%rbp), %rax	# tem, tmp397
	movzwl	(%rax), %eax	# tem_189->code, D.14176
	cmpw	$58, %ax	#, D.14176
	jne	.L419	#,
	.loc 1 1941 0
	movq	-184(%rbp), %rax	# tem, tmp398
	movq	8(%rax), %rax	# tem_189->fld[0].rtx, D.14177
	movzwl	(%rax), %eax	# _191->code, D.14176
	movzwl	%ax, %eax	# D.14176, D.14178
	cmpl	-208(%rbp), %eax	# ncode, D.14178
	jne	.L419	#,
	.loc 1 1942 0
	movq	-184(%rbp), %rax	# tem, tmp399
	movq	8(%rax), %rax	# tem_189->fld[0].rtx, D.14177
	movq	8(%rax), %rax	# _194->fld[0].rtx, D.14177
	cmpq	-176(%rbp), %rax	# lhs, D.14177
	jne	.L419	#,
	.loc 1 1943 0
	movq	-184(%rbp), %rax	# tem, tmp400
	movq	8(%rax), %rax	# tem_189->fld[0].rtx, D.14177
	movq	16(%rax), %rax	# _196->fld[1].rtx, D.14177
	.loc 1 1940 0
	cmpq	-168(%rbp), %rax	# rhs, D.14177
	je	.L413	#,
.L419:
	.loc 1 1947 0
	cmpl	$0, -232(%rbp)	#, first
	je	.L420	#,
	.loc 1 1948 0
	movq	-184(%rbp), %rax	# tem, tmp401
	movzwl	(%rax), %eax	# tem_189->code, D.14176
	cmpw	$86, %ax	#, D.14176
	jne	.L420	#,
	.loc 1 1949 0
	movq	-184(%rbp), %rax	# tem, tmp402
	movq	8(%rax), %rax	# tem_189->fld[0].rtx, D.14177
	.loc 1 1947 0
	cmpq	-168(%rbp), %rax	# rhs, D.14177
	je	.L413	#,
.L420:
	.loc 1 1951 0
	movl	-196(%rbp), %eax	# rneg, tmp403
	andl	%eax, -212(%rbp)	# tmp403, lneg
	.loc 1 1952 0
	movq	-184(%rbp), %rax	# tem, tmp404
	movzwl	(%rax), %eax	# tem_189->code, D.14176
	cmpw	$77, %ax	#, D.14176
	jne	.L421	#,
	.loc 1 1953 0
	movq	-184(%rbp), %rax	# tem, tmp405
	movq	8(%rax), %rax	# tem_189->fld[0].rtx, tmp406
	movq	%rax, -184(%rbp)	# tmp406, tem
	cmpl	$0, -212(%rbp)	#, lneg
	sete	%al	#, D.14174
	movzbl	%al, %eax	# D.14174, tmp407
	movl	%eax, -212(%rbp)	# tmp407, lneg
.L421:
	.loc 1 1954 0
	movq	-184(%rbp), %rax	# tem, tmp408
	movzwl	(%rax), %eax	# tem_2->code, D.14176
	cmpw	$54, %ax	#, D.14176
	jne	.L422	#,
	.loc 1 1954 0 is_stmt 0 discriminator 1
	cmpl	$0, -212(%rbp)	#, lneg
	je	.L422	#,
	.loc 1 1955 0 is_stmt 1
	movq	-184(%rbp), %rdx	# tem, tmp409
	movl	-264(%rbp), %eax	# mode, tmp410
	movq	%rdx, %rsi	# tmp409,
	movl	%eax, %edi	# tmp410,
	call	neg_const_int	#
	movq	%rax, -184(%rbp)	# tmp411, tem
	movl	$0, -212(%rbp)	#, lneg
.L422:
	.loc 1 1957 0
	movl	-220(%rbp), %eax	# i, tmp413
	cltq
	salq	$4, %rax	#, tmp414
	leaq	-16(%rbp), %rcx	#, tmp607
	addq	%rcx, %rax	# tmp607, tmp415
	leaq	-128(%rax), %rdx	#, tmp416
	movq	-184(%rbp), %rax	# tem, tmp417
	movq	%rax, (%rdx)	# tmp417, ops[i_33].op
	.loc 1 1958 0
	movl	-220(%rbp), %eax	# i, tmp419
	cltq
	salq	$4, %rax	#, tmp420
	leaq	-16(%rbp), %rbx	#, tmp608
	addq	%rbx, %rax	# tmp608, tmp421
	leaq	-128(%rax), %rdx	#, tmp422
	movl	-212(%rbp), %eax	# lneg, tmp423
	movl	%eax, 8(%rdx)	# tmp423, ops[i_33].neg
	.loc 1 1959 0
	movl	-216(%rbp), %eax	# j, tmp425
	cltq
	salq	$4, %rax	#, tmp426
	leaq	-16(%rbp), %rsi	#, tmp609
	addq	%rsi, %rax	# tmp609, tmp427
	addq	$-128, %rax	#, tmp428
	movq	$0, (%rax)	#, ops[j_40].op
	.loc 1 1960 0
	movl	$1, -224(%rbp)	#, changed
.L413:
.LBE30:
.LBE29:
	.loc 1 1914 0
	addl	$1, -216(%rbp)	#, j
.L412:
	.loc 1 1914 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# j, tmp429
	cmpl	-248(%rbp), %eax	# n_ops, tmp429
	jl	.L423	#,
	.loc 1 1913 0 is_stmt 1
	addl	$1, -220(%rbp)	#, i
.L411:
	.loc 1 1913 0 is_stmt 0 discriminator 1
	movl	-248(%rbp), %eax	# n_ops, tmp430
	subl	$1, %eax	#, D.14175
	cmpl	-220(%rbp), %eax	# i, D.14175
	jg	.L424	#,
	.loc 1 1965 0 is_stmt 1
	movl	$0, -232(%rbp)	#, first
	.loc 1 1967 0
	cmpl	$0, -224(%rbp)	#, changed
	jne	.L425	#,
	.loc 1 1970 0
	movl	$0, -220(%rbp)	#, i
	movl	$0, -216(%rbp)	#, j
	jmp	.L426	#
.L428:
	.loc 1 1971 0
	movl	-216(%rbp), %eax	# j, tmp432
	cltq
	salq	$4, %rax	#, tmp433
	leaq	-16(%rbp), %rdi	#, tmp610
	addq	%rdi, %rax	# tmp610, tmp434
	addq	$-128, %rax	#, tmp435
	movq	(%rax), %rax	# ops[j_41].op, D.14177
	testq	%rax, %rax	# D.14177
	je	.L427	#,
	.loc 1 1972 0
	movl	-220(%rbp), %eax	# i, i.168
	leal	1(%rax), %edx	#, tmp436
	movl	%edx, -220(%rbp)	# tmp436, i
	cltq
	salq	$4, %rax	#, tmp438
	leaq	-16(%rbp), %rcx	#, tmp611
	addq	%rcx, %rax	# tmp611, tmp439
	leaq	-128(%rax), %rcx	#, tmp440
	movl	-216(%rbp), %eax	# j, tmp442
	cltq
	salq	$4, %rax	#, tmp443
	leaq	-16(%rbp), %rbx	#, tmp612
	addq	%rbx, %rax	# tmp612, tmp444
	addq	$-128, %rax	#, tmp445
	movq	8(%rax), %rdx	# ops,
	movq	(%rax), %rax	# ops, tmp446
	movq	%rax, (%rcx)	# tmp446, ops
	movq	%rdx, 8(%rcx)	#, ops
.L427:
	.loc 1 1970 0
	addl	$1, -216(%rbp)	#, j
.L426:
	.loc 1 1970 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# j, tmp447
	cmpl	-248(%rbp), %eax	# n_ops, tmp447
	jl	.L428	#,
	.loc 1 1973 0 is_stmt 1
	movl	-220(%rbp), %eax	# i, tmp448
	movl	%eax, -248(%rbp)	# tmp448, n_ops
	.loc 1 1976 0
	movl	-248(%rbp), %esi	# n_ops, tmp449
	leaq	-144(%rbp), %rax	#, tmp450
	movl	$simplify_plus_minus_op_data_cmp, %ecx	#,
	movl	$16, %edx	#,
	movq	%rax, %rdi	# tmp450,
	call	specqsort	#
	.loc 1 1985 0
	cmpl	$1, -248(%rbp)	#, n_ops
	jle	.L429	#,
	.loc 1 1986 0
	movl	-248(%rbp), %eax	# n_ops, tmp451
	subl	$1, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp453
	leaq	-16(%rbp), %rsi	#, tmp613
	addq	%rsi, %rax	# tmp613, tmp454
	addq	$-128, %rax	#, tmp455
	movq	(%rax), %rax	# ops[_219].op, D.14177
	movzwl	(%rax), %eax	# _220->code, D.14176
	cmpw	$54, %ax	#, D.14176
	jne	.L429	#,
	.loc 1 1987 0
	movl	-248(%rbp), %eax	# n_ops, tmp456
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp458
	leaq	-16(%rbp), %rdi	#, tmp614
	addq	%rdi, %rax	# tmp614, tmp459
	addq	$-128, %rax	#, tmp460
	movq	(%rax), %rax	# ops[_222].op, D.14177
	movzwl	(%rax), %eax	# _223->code, D.14176
	cmpw	$67, %ax	#, D.14176
	je	.L430	#,
	.loc 1 1987 0 is_stmt 0 discriminator 1
	movl	-248(%rbp), %eax	# n_ops, tmp461
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp463
	leaq	-16(%rbp), %rcx	#, tmp615
	addq	%rcx, %rax	# tmp615, tmp464
	addq	$-128, %rax	#, tmp465
	movq	(%rax), %rax	# ops[_225].op, D.14177
	movzwl	(%rax), %eax	# _226->code, D.14176
	cmpw	$68, %ax	#, D.14176
	je	.L430	#,
	movl	-248(%rbp), %eax	# n_ops, tmp466
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp468
	leaq	-16(%rbp), %rbx	#, tmp616
	addq	%rbx, %rax	# tmp616, tmp469
	addq	$-128, %rax	#, tmp470
	movq	(%rax), %rax	# ops[_228].op, D.14177
	movzwl	(%rax), %eax	# _229->code, D.14176
	cmpw	$54, %ax	#, D.14176
	je	.L430	#,
	movl	-248(%rbp), %eax	# n_ops, tmp471
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp473
	leaq	-16(%rbp), %rsi	#, tmp617
	addq	%rsi, %rax	# tmp617, tmp474
	addq	$-128, %rax	#, tmp475
	movq	(%rax), %rax	# ops[_231].op, D.14177
	movzwl	(%rax), %eax	# _232->code, D.14176
	cmpw	$55, %ax	#, D.14176
	je	.L430	#,
	movl	-248(%rbp), %eax	# n_ops, tmp476
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp478
	leaq	-16(%rbp), %rdi	#, tmp618
	addq	%rdi, %rax	# tmp618, tmp479
	addq	$-128, %rax	#, tmp480
	movq	(%rax), %rax	# ops[_234].op, D.14177
	movzwl	(%rax), %eax	# _235->code, D.14176
	cmpw	$58, %ax	#, D.14176
	je	.L430	#,
	movl	-248(%rbp), %eax	# n_ops, tmp481
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp483
	leaq	-16(%rbp), %rcx	#, tmp619
	addq	%rcx, %rax	# tmp619, tmp484
	addq	$-128, %rax	#, tmp485
	movq	(%rax), %rax	# ops[_237].op, D.14177
	movzwl	(%rax), %eax	# _238->code, D.14176
	cmpw	$134, %ax	#, D.14176
	je	.L430	#,
	movl	-248(%rbp), %eax	# n_ops, tmp486
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp488
	leaq	-16(%rbp), %rbx	#, tmp620
	addq	%rbx, %rax	# tmp620, tmp489
	addq	$-128, %rax	#, tmp490
	movq	(%rax), %rax	# ops[_240].op, D.14177
	movzwl	(%rax), %eax	# _241->code, D.14176
	cmpw	$56, %ax	#, D.14176
	je	.L430	#,
	movl	-248(%rbp), %eax	# n_ops, tmp491
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp493
	leaq	-16(%rbp), %rsi	#, tmp621
	addq	%rsi, %rax	# tmp621, tmp494
	addq	$-128, %rax	#, tmp495
	movq	(%rax), %rax	# ops[_243].op, D.14177
	movzwl	(%rax), %eax	# _244->code, D.14176
	cmpw	$140, %ax	#, D.14176
	jne	.L429	#,
.L430:
.LBB31:
	.loc 1 1989 0 is_stmt 1
	movl	-248(%rbp), %eax	# n_ops, tmp496
	subl	$1, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp498
	leaq	-16(%rbp), %rdi	#, tmp622
	addq	%rdi, %rax	# tmp622, tmp499
	addq	$-128, %rax	#, tmp500
	movq	(%rax), %rax	# ops[_246].op, tmp501
	movq	%rax, -160(%rbp)	# tmp501, value
	.loc 1 1990 0
	movl	-248(%rbp), %eax	# n_ops, tmp502
	subl	$1, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp504
	leaq	-16(%rbp), %rcx	#, tmp623
	addq	%rcx, %rax	# tmp623, tmp505
	addq	$-128, %rax	#, tmp506
	movl	8(%rax), %edx	# ops[_248].neg, D.14175
	movl	-248(%rbp), %eax	# n_ops, tmp507
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp509
	leaq	-16(%rbp), %rbx	#, tmp624
	addq	%rbx, %rax	# tmp624, tmp510
	addq	$-128, %rax	#, tmp511
	movl	8(%rax), %eax	# ops[_250].neg, D.14175
	cmpl	%eax, %edx	# D.14175, D.14175
	je	.L431	#,
	.loc 1 1991 0
	movq	-160(%rbp), %rdx	# value, tmp512
	movl	-264(%rbp), %eax	# mode, tmp513
	movq	%rdx, %rsi	# tmp512,
	movl	%eax, %edi	# tmp513,
	call	neg_const_int	#
	movq	%rax, -160(%rbp)	# tmp514, value
.L431:
	.loc 1 1992 0
	movl	-248(%rbp), %eax	# n_ops, tmp515
	leal	-2(%rax), %ebx	#, D.14175
	movq	-160(%rbp), %rax	# value, tmp516
	movq	8(%rax), %rdx	# value_49->fld[0].rtwint, D.14179
	movl	-248(%rbp), %eax	# n_ops, tmp517
	subl	$2, %eax	#, D.14175
	cltq
	salq	$4, %rax	#, tmp519
	leaq	-16(%rbp), %rsi	#, tmp625
	addq	%rsi, %rax	# tmp625, tmp520
	addq	$-128, %rax	#, tmp521
	movq	(%rax), %rax	# ops[_255].op, D.14177
	movq	%rdx, %rsi	# D.14179,
	movq	%rax, %rdi	# D.14177,
	call	plus_constant_wide	#
	movslq	%ebx, %rdx	# D.14175, tmp522
	salq	$4, %rdx	#, tmp523
	leaq	-16(%rbp), %rdi	#, tmp626
	addq	%rdi, %rdx	# tmp626, tmp524
	addq	$-128, %rdx	#, tmp525
	movq	%rax, (%rdx)	# D.14177, ops[_253].op
	.loc 1 1993 0
	subl	$1, -248(%rbp)	#, n_ops
.L429:
.LBE31:
	.loc 1 1997 0
	movl	$0, -236(%rbp)	#, n_consts
	.loc 1 1998 0
	movl	$0, -220(%rbp)	#, i
	jmp	.L432	#
.L434:
	.loc 1 1999 0
	movl	-220(%rbp), %eax	# i, tmp527
	cltq
	salq	$4, %rax	#, tmp528
	leaq	-16(%rbp), %rcx	#, tmp627
	addq	%rcx, %rax	# tmp627, tmp529
	addq	$-128, %rax	#, tmp530
	movq	(%rax), %rax	# ops[i_36].op, D.14177
	movzwl	(%rax), %eax	# _261->code, D.14176
	cmpw	$58, %ax	#, D.14176
	jne	.L433	#,
	.loc 1 2000 0
	addl	$1, -236(%rbp)	#, n_consts
.L433:
	.loc 1 1998 0
	addl	$1, -220(%rbp)	#, i
.L432:
	.loc 1 1998 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# i, tmp531
	cmpl	-248(%rbp), %eax	# n_ops, tmp531
	jl	.L434	#,
	.loc 1 2006 0 is_stmt 1
	cmpl	$0, -284(%rbp)	#, force
	jne	.L435	#,
	.loc 1 2007 0
	movl	-236(%rbp), %eax	# n_consts, tmp532
	movl	-248(%rbp), %edx	# n_ops, tmp533
	addl	%edx, %eax	# tmp533, D.14175
	cmpl	-244(%rbp), %eax	# input_ops, D.14175
	jg	.L436	#,
	.loc 1 2008 0
	movl	-236(%rbp), %eax	# n_consts, tmp534
	movl	-248(%rbp), %edx	# n_ops, tmp535
	addl	%edx, %eax	# tmp535, D.14175
	cmpl	-244(%rbp), %eax	# input_ops, D.14175
	jne	.L435	#,
	.loc 1 2008 0 is_stmt 0 discriminator 1
	movl	-236(%rbp), %eax	# n_consts, tmp536
	cmpl	-240(%rbp), %eax	# input_consts, tmp536
	jg	.L435	#,
.L436:
	.loc 1 2009 0 is_stmt 1
	movl	$0, %eax	#, D.14173
	jmp	.L450	#
.L435:
	.loc 1 2014 0
	movl	$0, -228(%rbp)	#, negate
	.loc 1 2015 0
	movl	$0, -220(%rbp)	#, i
	jmp	.L437	#
.L439:
	addl	$1, -220(%rbp)	#, i
.L437:
	.loc 1 2015 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# i, tmp537
	cmpl	-248(%rbp), %eax	# n_ops, tmp537
	jge	.L438	#,
	.loc 1 2015 0 discriminator 2
	movl	-220(%rbp), %eax	# i, tmp539
	cltq
	salq	$4, %rax	#, tmp540
	leaq	-16(%rbp), %rbx	#, tmp628
	addq	%rbx, %rax	# tmp628, tmp541
	addq	$-128, %rax	#, tmp542
	movl	8(%rax), %eax	# ops[i_37].neg, D.14175
	testl	%eax, %eax	# D.14175
	jne	.L439	#,
.L438:
	.loc 1 2017 0 is_stmt 1
	movl	-220(%rbp), %eax	# i, tmp543
	cmpl	-248(%rbp), %eax	# n_ops, tmp543
	jne	.L440	#,
	.loc 1 2019 0
	movl	$0, -220(%rbp)	#, i
	jmp	.L441	#
.L442:
	.loc 1 2020 0 discriminator 2
	movl	-220(%rbp), %eax	# i, tmp545
	cltq
	salq	$4, %rax	#, tmp546
	leaq	-16(%rbp), %rsi	#, tmp629
	addq	%rsi, %rax	# tmp629, tmp547
	addq	$-128, %rax	#, tmp548
	movl	$0, 8(%rax)	#, ops[i_38].neg
	.loc 1 2019 0 discriminator 2
	addl	$1, -220(%rbp)	#, i
.L441:
	.loc 1 2019 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# i, tmp549
	cmpl	-248(%rbp), %eax	# n_ops, tmp549
	jl	.L442	#,
	.loc 1 2021 0 is_stmt 1
	movl	$1, -228(%rbp)	#, negate
	jmp	.L443	#
.L440:
	.loc 1 2023 0
	cmpl	$0, -220(%rbp)	#, i
	je	.L443	#,
	.loc 1 2025 0
	movq	-144(%rbp), %rax	# ops[0].op, tmp550
	movq	%rax, -184(%rbp)	# tmp550, tem
	.loc 1 2026 0
	movl	-220(%rbp), %eax	# i, tmp552
	cltq
	salq	$4, %rax	#, tmp553
	leaq	-16(%rbp), %rdi	#, tmp630
	addq	%rdi, %rax	# tmp630, tmp554
	addq	$-128, %rax	#, tmp555
	movq	8(%rax), %rdx	# ops,
	movq	(%rax), %rax	# ops, tmp556
	movq	%rax, -144(%rbp)	# tmp556, ops
	movq	%rdx, -136(%rbp)	#, ops
	.loc 1 2027 0
	movl	-220(%rbp), %eax	# i, tmp558
	cltq
	salq	$4, %rax	#, tmp559
	leaq	-16(%rbp), %rcx	#, tmp631
	addq	%rcx, %rax	# tmp631, tmp560
	leaq	-128(%rax), %rdx	#, tmp561
	movq	-184(%rbp), %rax	# tem, tmp562
	movq	%rax, (%rdx)	# tmp562, ops[i_37].op
	.loc 1 2028 0
	movl	-220(%rbp), %eax	# i, tmp564
	cltq
	salq	$4, %rax	#, tmp565
	leaq	-16(%rbp), %rbx	#, tmp632
	addq	%rbx, %rax	# tmp632, tmp566
	addq	$-128, %rax	#, tmp567
	movl	$1, 8(%rax)	#, ops[i_37].neg
.L443:
	.loc 1 2032 0
	movq	-144(%rbp), %rax	# ops[0].op, tmp568
	movq	%rax, -192(%rbp)	# tmp568, result
	.loc 1 2033 0
	movl	$1, -220(%rbp)	#, i
	jmp	.L444	#
.L447:
	.loc 1 2034 0
	movl	-220(%rbp), %eax	# i, tmp570
	cltq
	salq	$4, %rax	#, tmp571
	leaq	-16(%rbp), %rsi	#, tmp633
	addq	%rsi, %rax	# tmp633, tmp572
	addq	$-128, %rax	#, tmp573
	movq	(%rax), %rcx	# ops[i_39].op, D.14177
	movl	-220(%rbp), %eax	# i, tmp575
	cltq
	salq	$4, %rax	#, tmp576
	leaq	-16(%rbp), %rdi	#, tmp634
	addq	%rdi, %rax	# tmp634, tmp577
	addq	$-128, %rax	#, tmp578
	movl	8(%rax), %eax	# ops[i_39].neg, D.14175
	testl	%eax, %eax	# D.14175
	je	.L445	#,
	.loc 1 2034 0 is_stmt 0 discriminator 1
	movl	$76, %eax	#, iftmp.169
	jmp	.L446	#
.L445:
	.loc 1 2034 0 discriminator 2
	movl	$75, %eax	#, iftmp.169
.L446:
	.loc 1 2034 0 discriminator 3
	movq	-192(%rbp), %rdx	# result, tmp579
	movl	-264(%rbp), %esi	# mode, tmp580
	movl	%eax, %edi	# iftmp.169,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -192(%rbp)	# tmp581, result
	.loc 1 2033 0 is_stmt 1 discriminator 3
	addl	$1, -220(%rbp)	#, i
.L444:
	.loc 1 2033 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# i, tmp582
	cmpl	-248(%rbp), %eax	# n_ops, tmp582
	jl	.L447	#,
	.loc 1 2037 0 is_stmt 1
	cmpl	$0, -228(%rbp)	#, negate
	je	.L448	#,
	.loc 1 2037 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rdx	# result, tmp583
	movl	-264(%rbp), %eax	# mode, tmp584
	movl	%eax, %esi	# tmp584,
	movl	$77, %edi	#,
	call	gen_rtx_fmt_e	#
	jmp	.L449	#
.L448:
	.loc 1 2037 0 discriminator 2
	movq	-192(%rbp), %rax	# result, iftmp.170
.L449:
.L450:
	.loc 1 2038 0 is_stmt 1
	addq	$280, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	simplify_plus_minus, .-simplify_plus_minus
	.type	check_fold_consts, @function
check_fold_consts:
.LFB16:
	.loc 1 2050 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -120(%rbp)	# data, data
	.loc 1 2051 0
	movq	-120(%rbp), %rax	# data, tmp74
	movq	%rax, -104(%rbp)	# tmp74, args
	.loc 1 2055 0
	movq	-104(%rbp), %rax	# args, tmp75
	movl	$1, 28(%rax)	#, args_2->unordered
.LBB32:
	.loc 1 2056 0
	movq	-104(%rbp), %rax	# args, tmp76
	movq	(%rax), %rax	# args_2->op0, D.14180
	leaq	16(%rax), %rcx	#, D.14181
	leaq	-32(%rbp), %rax	#, tmp77
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.14181,
	movq	%rax, %rdi	# tmp77,
	call	memcpy	#
	movq	-32(%rbp), %rax	# u.d, tmp78
	movq	%rax, -96(%rbp)	# tmp78, d0
	movq	-24(%rbp), %rax	# u.d, tmp79
	movq	%rax, -88(%rbp)	# tmp79, d0
	movq	-16(%rbp), %rax	# u.d, tmp80
	movq	%rax, -80(%rbp)	# tmp80, d0
.LBE32:
.LBB33:
	.loc 1 2057 0
	movq	-104(%rbp), %rax	# args, tmp81
	movq	8(%rax), %rax	# args_2->op1, D.14180
	leaq	16(%rax), %rcx	#, D.14181
	leaq	-32(%rbp), %rax	#, tmp82
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.14181,
	movq	%rax, %rdi	# tmp82,
	call	memcpy	#
	movq	-32(%rbp), %rax	# u.d, tmp83
	movq	%rax, -64(%rbp)	# tmp83, d1
	movq	-24(%rbp), %rax	# u.d, tmp84
	movq	%rax, -56(%rbp)	# tmp84, d1
	movq	-16(%rbp), %rax	# u.d, tmp85
	movq	%rax, -48(%rbp)	# tmp85, d1
.LBE33:
	.loc 1 2060 0
	movq	-96(%rbp), %rax	# d0, tmp86
	movq	%rax, (%rsp)	# tmp86,
	movq	-88(%rbp), %rax	# d0, tmp87
	movq	%rax, 8(%rsp)	# tmp87,
	movq	-80(%rbp), %rax	# d0, tmp88
	movq	%rax, 16(%rsp)	# tmp88,
	call	target_isnan	#
	testl	%eax, %eax	# D.14182
	jne	.L452	#,
	.loc 1 2061 0
	movq	-64(%rbp), %rax	# d1, tmp89
	movq	%rax, (%rsp)	# tmp89,
	movq	-56(%rbp), %rax	# d1, tmp90
	movq	%rax, 8(%rsp)	# tmp90,
	movq	-48(%rbp), %rax	# d1, tmp91
	movq	%rax, 16(%rsp)	# tmp91,
	call	target_isnan	#
	testl	%eax, %eax	# D.14182
	jne	.L452	#,
	.loc 1 2063 0
	movq	-64(%rbp), %rax	# d1, tmp92
	movq	%rax, 24(%rsp)	# tmp92,
	movq	-56(%rbp), %rax	# d1, tmp93
	movq	%rax, 32(%rsp)	# tmp93,
	movq	-48(%rbp), %rax	# d1, tmp94
	movq	%rax, 40(%rsp)	# tmp94,
	movq	-96(%rbp), %rax	# d0, tmp95
	movq	%rax, (%rsp)	# tmp95,
	movq	-88(%rbp), %rax	# d0, tmp96
	movq	%rax, 8(%rsp)	# tmp96,
	movq	-80(%rbp), %rax	# d0, tmp97
	movq	%rax, 16(%rsp)	# tmp97,
	call	ereal_cmp	#
	testl	%eax, %eax	# D.14182
	sete	%al	#, D.14183
	movzbl	%al, %edx	# D.14183, D.14182
	movq	-104(%rbp), %rax	# args, tmp98
	movl	%edx, 16(%rax)	# D.14182, args_2->equal
	.loc 1 2064 0
	movq	-64(%rbp), %rax	# d1, tmp99
	movq	%rax, 24(%rsp)	# tmp99,
	movq	-56(%rbp), %rax	# d1, tmp100
	movq	%rax, 32(%rsp)	# tmp100,
	movq	-48(%rbp), %rax	# d1, tmp101
	movq	%rax, 40(%rsp)	# tmp101,
	movq	-96(%rbp), %rax	# d0, tmp102
	movq	%rax, (%rsp)	# tmp102,
	movq	-88(%rbp), %rax	# d0, tmp103
	movq	%rax, 8(%rsp)	# tmp103,
	movq	-80(%rbp), %rax	# d0, tmp104
	movq	%rax, 16(%rsp)	# tmp104,
	call	ereal_cmp	#
	cmpl	$-1, %eax	#, D.14182
	sete	%al	#, D.14183
	movzbl	%al, %edx	# D.14183, D.14182
	movq	-104(%rbp), %rax	# args, tmp105
	movl	%edx, 20(%rax)	# D.14182, args_2->op0lt
	.loc 1 2065 0
	movq	-96(%rbp), %rax	# d0, tmp106
	movq	%rax, 24(%rsp)	# tmp106,
	movq	-88(%rbp), %rax	# d0, tmp107
	movq	%rax, 32(%rsp)	# tmp107,
	movq	-80(%rbp), %rax	# d0, tmp108
	movq	%rax, 40(%rsp)	# tmp108,
	movq	-64(%rbp), %rax	# d1, tmp109
	movq	%rax, (%rsp)	# tmp109,
	movq	-56(%rbp), %rax	# d1, tmp110
	movq	%rax, 8(%rsp)	# tmp110,
	movq	-48(%rbp), %rax	# d1, tmp111
	movq	%rax, 16(%rsp)	# tmp111,
	call	ereal_cmp	#
	cmpl	$-1, %eax	#, D.14182
	sete	%al	#, D.14183
	movzbl	%al, %edx	# D.14183, D.14182
	movq	-104(%rbp), %rax	# args, tmp112
	movl	%edx, 24(%rax)	# D.14182, args_2->op1lt
	.loc 1 2066 0
	movq	-104(%rbp), %rax	# args, tmp113
	movl	$0, 28(%rax)	#, args_2->unordered
.L452:
	.loc 1 2067 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	check_fold_consts, .-check_fold_consts
	.globl	simplify_relational_operation
	.type	simplify_relational_operation, @function
simplify_relational_operation:
.LFB17:
	.loc 1 2082 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)	# code, code
	movl	%esi, -168(%rbp)	# mode, mode
	movq	%rdx, -176(%rbp)	# op0, op0
	movq	%rcx, -184(%rbp)	# op1, op1
	.loc 1 2088 0
	cmpl	$0, -168(%rbp)	#, mode
	jne	.L457	#,
	.loc 1 2089 0
	movq	-176(%rbp), %rax	# op0, tmp241
	movzbl	2(%rax), %eax	# op0_52(D)->mode, D.14186
	testb	%al, %al	# D.14186
	jne	.L458	#,
	.loc 1 2090 0
	movq	-184(%rbp), %rax	# op1, tmp242
	movzbl	2(%rax), %eax	# op1_54(D)->mode, D.14186
	testb	%al, %al	# D.14186
	je	.L457	#,
.L458:
	.loc 1 2091 0
	movl	$__FUNCTION__.11046, %edx	#,
	movl	$2091, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L457:
	.loc 1 2094 0
	movq	-176(%rbp), %rax	# op0, tmp243
	movzwl	(%rax), %eax	# op0_52(D)->code, D.14187
	cmpw	$74, %ax	#, D.14187
	jne	.L459	#,
	.loc 1 2094 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14188
	cmpq	-184(%rbp), %rax	# op1, D.14188
	jne	.L459	#,
	.loc 1 2095 0 is_stmt 1
	movq	-176(%rbp), %rax	# op0, tmp244
	movq	16(%rax), %rax	# op0_52(D)->fld[1].rtx, tmp245
	movq	%rax, -184(%rbp)	# tmp245, op1
	movq	-176(%rbp), %rax	# op0, tmp246
	movq	8(%rax), %rax	# op0_52(D)->fld[0].rtx, tmp247
	movq	%rax, -176(%rbp)	# tmp247, op0
.L459:
	.loc 1 2097 0
	movq	-176(%rbp), %rax	# op0, tmp248
	movq	%rax, %rdi	# tmp248,
	call	avoid_constant_pool_reference	#
	movq	%rax, -136(%rbp)	# tmp249, trueop0
	.loc 1 2098 0
	movq	-184(%rbp), %rax	# op1, tmp250
	movq	%rax, %rdi	# tmp250,
	call	avoid_constant_pool_reference	#
	movq	%rax, -128(%rbp)	# tmp251, trueop1
	.loc 1 2102 0
	movq	-176(%rbp), %rax	# op0, tmp252
	movzbl	2(%rax), %eax	# op0_2->mode, D.14186
	movzbl	%al, %eax	# D.14186, D.14189
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$4, %eax	#, D.14190
	jne	.L460	#,
	.loc 1 2107 0
	movl	$0, %eax	#, D.14185
	jmp	.L461	#
.L460:
	.loc 1 2110 0
	movq	-128(%rbp), %rdx	# trueop1, tmp254
	movq	-136(%rbp), %rax	# trueop0, tmp255
	movq	%rdx, %rsi	# tmp254,
	movq	%rax, %rdi	# tmp255,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.14189
	je	.L462	#,
	.loc 1 2112 0
	movq	-176(%rbp), %rax	# op0, tmp256
	movq	%rax, -56(%rbp)	# tmp256, tem
	movq	-184(%rbp), %rax	# op1, tmp257
	movq	%rax, -176(%rbp)	# tmp257, op0
	movq	-56(%rbp), %rax	# tem, tmp258
	movq	%rax, -184(%rbp)	# tmp258, op1
	.loc 1 2113 0
	movq	-136(%rbp), %rax	# trueop0, tmp259
	movq	%rax, -56(%rbp)	# tmp259, tem
	movq	-128(%rbp), %rax	# trueop1, tmp260
	movq	%rax, -136(%rbp)	# tmp260, trueop0
	movq	-56(%rbp), %rax	# tem, tmp261
	movq	%rax, -128(%rbp)	# tmp261, trueop1
	.loc 1 2114 0
	movl	-164(%rbp), %eax	# code, tmp262
	movl	%eax, %edi	# tmp262,
	call	swap_condition	#
	movl	%eax, -164(%rbp)	# tmp263, code
.L462:
	.loc 1 2127 0
	movl	-168(%rbp), %eax	# mode, mode.171
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$1, %eax	#, D.14190
	je	.L463	#,
	.loc 1 2127 0 is_stmt 0 discriminator 2
	movl	-168(%rbp), %eax	# mode, mode.172
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$3, %eax	#, D.14190
	je	.L463	#,
	.loc 1 2127 0 discriminator 1
	movl	-168(%rbp), %eax	# mode, mode.173
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$5, %eax	#, D.14190
	je	.L463	#,
	movl	-168(%rbp), %eax	# mode, mode.174
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$7, %eax	#, D.14190
	jne	.L464	#,
.L463:
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14188
	cmpq	-128(%rbp), %rax	# trueop1, D.14188
	je	.L464	#,
	.loc 1 2128 0 is_stmt 1
	movq	-176(%rbp), %rax	# op0, tmp268
	movzwl	(%rax), %eax	# op0_3->code, D.14187
	cmpw	$61, %ax	#, D.14187
	je	.L465	#,
	.loc 1 2128 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# trueop0, tmp269
	movzwl	(%rax), %eax	# trueop0_11->code, D.14187
	cmpw	$54, %ax	#, D.14187
	jne	.L466	#,
.L465:
	.loc 1 2129 0 is_stmt 1 discriminator 2
	movq	-184(%rbp), %rax	# op1, tmp270
	movzwl	(%rax), %eax	# op1_5->code, D.14187
	.loc 1 2128 0 discriminator 2
	cmpw	$61, %ax	#, D.14187
	je	.L464	#,
	.loc 1 2129 0
	movq	-128(%rbp), %rax	# trueop1, tmp271
	movzwl	(%rax), %eax	# trueop1_12->code, D.14187
	cmpw	$54, %ax	#, D.14187
	je	.L464	#,
.L466:
	.loc 1 2130 0
	movq	-184(%rbp), %rcx	# op1, tmp272
	movq	-176(%rbp), %rdx	# op0, tmp273
	movl	-168(%rbp), %eax	# mode, tmp274
	movl	%eax, %esi	# tmp274,
	movl	$76, %edi	#,
	call	simplify_binary_operation	#
	movq	%rax, -56(%rbp)	# tmp275, tem
	cmpq	$0, -56(%rbp)	#, tem
	je	.L464	#,
	.loc 1 2131 0
	cmpl	$109, -164(%rbp)	#, code
	je	.L464	#,
	.loc 1 2131 0 is_stmt 0 discriminator 1
	cmpl	$108, -164(%rbp)	#, code
	je	.L464	#,
	cmpl	$111, -164(%rbp)	#, code
	je	.L464	#,
	cmpl	$110, -164(%rbp)	#, code
	je	.L464	#,
	.loc 1 2132 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rbx	# const_int_rtx, D.14188
	movl	-164(%rbp), %eax	# code, tmp276
	movl	%eax, %edi	# tmp276,
	call	signed_condition	#
	movq	-56(%rbp), %rdx	# tem, tmp277
	movl	-168(%rbp), %esi	# mode, tmp278
	movq	%rbx, %rcx	# D.14188,
	movl	%eax, %edi	# D.14191,
	call	simplify_relational_operation	#
	jmp	.L461	#
.L464:
	.loc 1 2135 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.175
	testl	%eax, %eax	# flag_unsafe_math_optimizations.175
	je	.L467	#,
	.loc 1 2135 0 is_stmt 0 discriminator 1
	cmpl	$113, -164(%rbp)	#, code
	jne	.L467	#,
	.loc 1 2136 0 is_stmt 1
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, D.14185
	jmp	.L461	#
.L467:
	.loc 1 2138 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.176
	testl	%eax, %eax	# flag_unsafe_math_optimizations.176
	je	.L468	#,
	.loc 1 2138 0 is_stmt 0 discriminator 1
	cmpl	$112, -164(%rbp)	#, code
	jne	.L468	#,
	.loc 1 2139 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14185
	jmp	.L461	#
.L468:
	.loc 1 2143 0
	movq	-128(%rbp), %rdx	# trueop1, tmp279
	movq	-136(%rbp), %rax	# trueop0, tmp280
	movq	%rdx, %rsi	# tmp279,
	movq	%rax, %rdi	# tmp280,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14189
	je	.L469	#,
	.loc 1 2145 0
	movq	-136(%rbp), %rax	# trueop0, tmp281
	movzbl	2(%rax), %eax	# trueop0_11->mode, D.14186
	movzbl	%al, %eax	# D.14186, D.14189
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	.loc 1 2144 0
	cmpl	$2, %eax	#, D.14190
	je	.L470	#,
	.loc 1 2145 0
	movq	-136(%rbp), %rax	# trueop0, tmp283
	movzbl	2(%rax), %eax	# trueop0_11->mode, D.14186
	movzbl	%al, %eax	# D.14186, D.14189
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$6, %eax	#, D.14190
	je	.L470	#,
	.loc 1 2145 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# trueop0, tmp285
	movzbl	2(%rax), %eax	# trueop0_11->mode, D.14186
	movzbl	%al, %eax	# D.14186, D.14189
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$8, %eax	#, D.14190
	jne	.L471	#,
.L470:
	.loc 1 2146 0 is_stmt 1
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.177
	testl	%eax, %eax	# flag_unsafe_math_optimizations.177
	je	.L469	#,
.L471:
	.loc 1 2147 0
	movl	$1, -160(%rbp)	#, equal
	movl	$0, -156(%rbp)	#, op0lt
	movl	$0, -152(%rbp)	#, op0ltu
	movl	$0, -148(%rbp)	#, op1lt
	movl	$0, -144(%rbp)	#, op1ltu
	jmp	.L472	#
.L469:
	.loc 1 2152 0
	movq	-136(%rbp), %rax	# trueop0, tmp287
	movzwl	(%rax), %eax	# trueop0_11->code, D.14187
	cmpw	$55, %ax	#, D.14187
	jne	.L473	#,
	.loc 1 2153 0
	movq	-128(%rbp), %rax	# trueop1, tmp288
	movzwl	(%rax), %eax	# trueop1_12->code, D.14187
	cmpw	$55, %ax	#, D.14187
	jne	.L473	#,
	.loc 1 2154 0
	movq	-136(%rbp), %rax	# trueop0, tmp289
	movzbl	2(%rax), %eax	# trueop0_11->mode, D.14186
	movzbl	%al, %eax	# D.14186, D.14189
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$2, %eax	#, D.14190
	jne	.L473	#,
.LBB34:
	.loc 1 2159 0
	movq	-136(%rbp), %rax	# trueop0, tmp291
	movq	%rax, -48(%rbp)	# tmp291, args.op0
	.loc 1 2160 0
	movq	-128(%rbp), %rax	# trueop1, tmp292
	movq	%rax, -40(%rbp)	# tmp292, args.op1
	.loc 1 2163 0
	leaq	-48(%rbp), %rax	#, tmp293
	movq	%rax, %rsi	# tmp293,
	movl	$check_fold_consts, %edi	#,
	call	do_float_handler	#
	testl	%eax, %eax	# D.14189
	jne	.L474	#,
	.loc 1 2164 0
	movl	$1, -20(%rbp)	#, args.unordered
.L474:
	.loc 1 2166 0
	movl	-20(%rbp), %eax	# args.unordered, D.14189
	testl	%eax, %eax	# D.14189
	je	.L475	#,
	.loc 1 2167 0
	movl	-164(%rbp), %eax	# code, tmp295
	subl	$102, %eax	#, tmp294
	cmpl	$17, %eax	#, tmp294
	ja	.L476	#,
	movl	%eax, %eax	# tmp294, tmp296
	movq	.L478(,%rax,8), %rax	#, tmp297
	jmp	*%rax	# tmp297
	.section	.rodata
	.align 8
	.align 4
.L478:
	.quad	.L477
	.quad	.L479
	.quad	.L479
	.quad	.L479
	.quad	.L479
	.quad	.L479
	.quad	.L476
	.quad	.L476
	.quad	.L476
	.quad	.L476
	.quad	.L477
	.quad	.L479
	.quad	.L477
	.quad	.L477
	.quad	.L477
	.quad	.L477
	.quad	.L477
	.quad	.L479
	.text
.L477:
	.loc 1 2176 0
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, D.14185
	jmp	.L461	#
.L479:
	.loc 1 2184 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14185
	jmp	.L461	#
.L476:
	.loc 1 2186 0
	movl	$0, %eax	#, D.14185
	jmp	.L461	#
.L475:
	.loc 1 2190 0
	movl	-32(%rbp), %eax	# args.equal, tmp298
	movl	%eax, -160(%rbp)	# tmp298, equal
	.loc 1 2191 0
	movl	-28(%rbp), %eax	# args.op0lt, tmp299
	movl	%eax, -152(%rbp)	# tmp299, op0ltu
	movl	-152(%rbp), %eax	# op0ltu, tmp300
	movl	%eax, -156(%rbp)	# tmp300, op0lt
	.loc 1 2192 0
	movl	-24(%rbp), %eax	# args.op1lt, tmp301
	movl	%eax, -144(%rbp)	# tmp301, op1ltu
	movl	-144(%rbp), %eax	# op1ltu, tmp302
	movl	%eax, -148(%rbp)	# tmp302, op1lt
.LBE34:
	.loc 1 2155 0
	jmp	.L472	#
.L473:
	.loc 1 2197 0
	movl	-168(%rbp), %eax	# mode, mode.178
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$1, %eax	#, D.14190
	je	.L481	#,
	.loc 1 2197 0 is_stmt 0 discriminator 1
	cmpl	$0, -168(%rbp)	#, mode
	jne	.L482	#,
.L481:
	.loc 1 2198 0 is_stmt 1
	movq	-136(%rbp), %rax	# trueop0, tmp304
	movzwl	(%rax), %eax	# trueop0_11->code, D.14187
	cmpw	$55, %ax	#, D.14187
	je	.L483	#,
	.loc 1 2199 0
	movq	-136(%rbp), %rax	# trueop0, tmp305
	movzwl	(%rax), %eax	# trueop0_11->code, D.14187
	cmpw	$54, %ax	#, D.14187
	jne	.L482	#,
.L483:
	.loc 1 2200 0
	movq	-128(%rbp), %rax	# trueop1, tmp306
	movzwl	(%rax), %eax	# trueop1_12->code, D.14187
	cmpw	$55, %ax	#, D.14187
	je	.L484	#,
	.loc 1 2201 0
	movq	-128(%rbp), %rax	# trueop1, tmp307
	movzwl	(%rax), %eax	# trueop1_12->code, D.14187
	cmpw	$54, %ax	#, D.14187
	jne	.L482	#,
.L484:
.LBB35:
	.loc 1 2203 0
	movl	-168(%rbp), %eax	# mode, mode.179
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14187
	movzwl	%ax, %eax	# D.14187, tmp309
	movl	%eax, -140(%rbp)	# tmp309, width
	.loc 1 2208 0
	movq	-136(%rbp), %rax	# trueop0, tmp310
	movzwl	(%rax), %eax	# trueop0_11->code, D.14187
	cmpw	$55, %ax	#, D.14187
	jne	.L485	#,
	.loc 1 2210 0
	movq	-136(%rbp), %rax	# trueop0, tmp311
	movq	16(%rax), %rax	# trueop0_11->fld[1].rtwint, tmp312
	movq	%rax, -120(%rbp)	# tmp312, l0s
	movq	-120(%rbp), %rax	# l0s, tmp313
	movq	%rax, -88(%rbp)	# tmp313, l0u
	.loc 1 2211 0
	movq	-136(%rbp), %rax	# trueop0, tmp314
	movq	24(%rax), %rax	# trueop0_11->fld[2].rtwint, tmp315
	movq	%rax, -112(%rbp)	# tmp315, h0s
	movq	-112(%rbp), %rax	# h0s, tmp316
	movq	%rax, -80(%rbp)	# tmp316, h0u
	jmp	.L486	#
.L485:
	.loc 1 2215 0
	movq	-136(%rbp), %rax	# trueop0, tmp317
	movq	8(%rax), %rax	# trueop0_11->fld[0].rtwint, tmp318
	movq	%rax, -120(%rbp)	# tmp318, l0s
	movq	-120(%rbp), %rax	# l0s, tmp319
	movq	%rax, -88(%rbp)	# tmp319, l0u
	.loc 1 2216 0
	cmpq	$0, -120(%rbp)	#, l0s
	jns	.L487	#,
	.loc 1 2216 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.180
	jmp	.L488	#
.L487:
	.loc 1 2216 0 discriminator 2
	movl	$0, %eax	#, iftmp.180
.L488:
	.loc 1 2216 0 discriminator 3
	movq	%rax, -112(%rbp)	# iftmp.180, h0s
	movq	-112(%rbp), %rax	# h0s, tmp320
	movq	%rax, -80(%rbp)	# tmp320, h0u
.L486:
	.loc 1 2219 0 is_stmt 1
	movq	-128(%rbp), %rax	# trueop1, tmp321
	movzwl	(%rax), %eax	# trueop1_12->code, D.14187
	cmpw	$55, %ax	#, D.14187
	jne	.L489	#,
	.loc 1 2221 0
	movq	-128(%rbp), %rax	# trueop1, tmp322
	movq	16(%rax), %rax	# trueop1_12->fld[1].rtwint, tmp323
	movq	%rax, -104(%rbp)	# tmp323, l1s
	movq	-104(%rbp), %rax	# l1s, tmp324
	movq	%rax, -72(%rbp)	# tmp324, l1u
	.loc 1 2222 0
	movq	-128(%rbp), %rax	# trueop1, tmp325
	movq	24(%rax), %rax	# trueop1_12->fld[2].rtwint, tmp326
	movq	%rax, -96(%rbp)	# tmp326, h1s
	movq	-96(%rbp), %rax	# h1s, tmp327
	movq	%rax, -64(%rbp)	# tmp327, h1u
	jmp	.L490	#
.L489:
	.loc 1 2226 0
	movq	-128(%rbp), %rax	# trueop1, tmp328
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, tmp329
	movq	%rax, -104(%rbp)	# tmp329, l1s
	movq	-104(%rbp), %rax	# l1s, tmp330
	movq	%rax, -72(%rbp)	# tmp330, l1u
	.loc 1 2227 0
	cmpq	$0, -104(%rbp)	#, l1s
	jns	.L491	#,
	.loc 1 2227 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.181
	jmp	.L492	#
.L491:
	.loc 1 2227 0 discriminator 2
	movl	$0, %eax	#, iftmp.181
.L492:
	.loc 1 2227 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.181, h1s
	movq	-96(%rbp), %rax	# h1s, tmp331
	movq	%rax, -64(%rbp)	# tmp331, h1u
.L490:
	.loc 1 2232 0 is_stmt 1
	cmpl	$0, -140(%rbp)	#, width
	je	.L493	#,
	.loc 1 2232 0 is_stmt 0 discriminator 1
	cmpl	$63, -140(%rbp)	#, width
	jg	.L493	#,
	.loc 1 2234 0 is_stmt 1
	movl	-140(%rbp), %eax	# width, tmp332
	movl	$1, %edx	#, tmp333
	movl	%eax, %ecx	# tmp332, tmp409
	salq	%cl, %rdx	# tmp409, D.14192
	movq	%rdx, %rax	# D.14192, D.14192
	subq	$1, %rax	#, D.14192
	andq	%rax, -88(%rbp)	# D.14193, l0u
	.loc 1 2235 0
	movl	-140(%rbp), %eax	# width, tmp334
	movl	$1, %edx	#, tmp335
	movl	%eax, %ecx	# tmp334, tmp411
	salq	%cl, %rdx	# tmp411, D.14192
	movq	%rdx, %rax	# D.14192, D.14192
	subq	$1, %rax	#, D.14192
	andq	%rax, -72(%rbp)	# D.14193, l1u
	.loc 1 2237 0
	movl	-140(%rbp), %eax	# width, tmp336
	subl	$1, %eax	#, D.14189
	movq	-120(%rbp), %rdx	# l0s, tmp337
	movl	%eax, %ecx	# D.14189, tmp413
	sarq	%cl, %rdx	# tmp413, D.14192
	movq	%rdx, %rax	# D.14192, D.14192
	andl	$1, %eax	#, D.14192
	testq	%rax, %rax	# D.14192
	je	.L494	#,
	.loc 1 2238 0
	movl	-140(%rbp), %eax	# width, tmp338
	movq	$-1, %rdx	#, tmp339
	movl	%eax, %ecx	# tmp338, tmp415
	salq	%cl, %rdx	# tmp415, D.14192
	movq	%rdx, %rax	# D.14192, D.14192
	orq	%rax, -120(%rbp)	# D.14192, l0s
.L494:
	.loc 1 2240 0
	movl	-140(%rbp), %eax	# width, tmp340
	subl	$1, %eax	#, D.14189
	movq	-104(%rbp), %rdx	# l1s, tmp341
	movl	%eax, %ecx	# D.14189, tmp417
	sarq	%cl, %rdx	# tmp417, D.14192
	movq	%rdx, %rax	# D.14192, D.14192
	andl	$1, %eax	#, D.14192
	testq	%rax, %rax	# D.14192
	je	.L493	#,
	.loc 1 2241 0
	movl	-140(%rbp), %eax	# width, tmp342
	movq	$-1, %rdx	#, tmp343
	movl	%eax, %ecx	# tmp342, tmp419
	salq	%cl, %rdx	# tmp419, D.14192
	movq	%rdx, %rax	# D.14192, D.14192
	orq	%rax, -104(%rbp)	# D.14192, l1s
.L493:
	.loc 1 2243 0
	cmpl	$0, -140(%rbp)	#, width
	je	.L495	#,
	.loc 1 2243 0 is_stmt 0 discriminator 1
	cmpl	$64, -140(%rbp)	#, width
	jg	.L495	#,
	.loc 1 2244 0 is_stmt 1
	movq	$0, -64(%rbp)	#, h1u
	movq	-64(%rbp), %rax	# h1u, tmp344
	movq	%rax, -80(%rbp)	# tmp344, h0u
	cmpq	$0, -120(%rbp)	#, l0s
	jns	.L496	#,
	.loc 1 2244 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.182
	jmp	.L497	#
.L496:
	.loc 1 2244 0 discriminator 2
	movl	$0, %eax	#, iftmp.182
.L497:
	.loc 1 2244 0 discriminator 3
	movq	%rax, -112(%rbp)	# iftmp.182, h0s
	cmpq	$0, -104(%rbp)	#, l1s
	jns	.L498	#,
	.loc 1 2244 0 discriminator 1
	movq	$-1, %rax	#, iftmp.183
	jmp	.L499	#
.L498:
	.loc 1 2244 0 discriminator 2
	movl	$0, %eax	#, iftmp.183
.L499:
	.loc 1 2244 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.183, h1s
.L495:
	.loc 1 2246 0 is_stmt 1
	movq	-80(%rbp), %rax	# h0u, tmp345
	cmpq	-64(%rbp), %rax	# h1u, tmp345
	jne	.L500	#,
	.loc 1 2246 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# l0u, tmp346
	cmpq	-72(%rbp), %rax	# l1u, tmp346
	jne	.L500	#,
	.loc 1 2246 0 discriminator 3
	movl	$1, %eax	#, iftmp.184
	jmp	.L501	#
.L500:
	.loc 1 2246 0 discriminator 2
	movl	$0, %eax	#, iftmp.184
.L501:
	.loc 1 2246 0 discriminator 4
	movl	%eax, -160(%rbp)	# iftmp.184, equal
	.loc 1 2247 0 is_stmt 1 discriminator 4
	movq	-112(%rbp), %rax	# h0s, tmp347
	cmpq	-96(%rbp), %rax	# h1s, tmp347
	jl	.L502	#,
	.loc 1 2247 0 is_stmt 0 discriminator 2
	movq	-112(%rbp), %rax	# h0s, tmp348
	cmpq	-96(%rbp), %rax	# h1s, tmp348
	jne	.L503	#,
	.loc 1 2247 0 discriminator 3
	movq	-88(%rbp), %rax	# l0u, tmp349
	cmpq	-72(%rbp), %rax	# l1u, tmp349
	jae	.L503	#,
.L502:
	.loc 1 2247 0 discriminator 1
	movl	$1, %eax	#, iftmp.185
	jmp	.L504	#
.L503:
	.loc 1 2247 0 discriminator 4
	movl	$0, %eax	#, iftmp.185
.L504:
	.loc 1 2247 0 discriminator 5
	movl	%eax, -156(%rbp)	# iftmp.185, op0lt
	.loc 1 2248 0 is_stmt 1 discriminator 5
	movq	-96(%rbp), %rax	# h1s, tmp350
	cmpq	-112(%rbp), %rax	# h0s, tmp350
	jl	.L505	#,
	.loc 1 2248 0 is_stmt 0 discriminator 2
	movq	-96(%rbp), %rax	# h1s, tmp351
	cmpq	-112(%rbp), %rax	# h0s, tmp351
	jne	.L506	#,
	.loc 1 2248 0 discriminator 3
	movq	-72(%rbp), %rax	# l1u, tmp352
	cmpq	-88(%rbp), %rax	# l0u, tmp352
	jae	.L506	#,
.L505:
	.loc 1 2248 0 discriminator 1
	movl	$1, %eax	#, iftmp.186
	jmp	.L507	#
.L506:
	.loc 1 2248 0 discriminator 4
	movl	$0, %eax	#, iftmp.186
.L507:
	.loc 1 2248 0 discriminator 5
	movl	%eax, -148(%rbp)	# iftmp.186, op1lt
	.loc 1 2249 0 is_stmt 1 discriminator 5
	movq	-80(%rbp), %rax	# h0u, tmp353
	cmpq	-64(%rbp), %rax	# h1u, tmp353
	jb	.L508	#,
	.loc 1 2249 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax	# h0u, tmp354
	cmpq	-64(%rbp), %rax	# h1u, tmp354
	jne	.L509	#,
	.loc 1 2249 0 discriminator 3
	movq	-88(%rbp), %rax	# l0u, tmp355
	cmpq	-72(%rbp), %rax	# l1u, tmp355
	jae	.L509	#,
.L508:
	.loc 1 2249 0 discriminator 1
	movl	$1, %eax	#, iftmp.187
	jmp	.L510	#
.L509:
	.loc 1 2249 0 discriminator 4
	movl	$0, %eax	#, iftmp.187
.L510:
	.loc 1 2249 0 discriminator 5
	movl	%eax, -152(%rbp)	# iftmp.187, op0ltu
	.loc 1 2250 0 is_stmt 1 discriminator 5
	movq	-64(%rbp), %rax	# h1u, tmp356
	cmpq	-80(%rbp), %rax	# h0u, tmp356
	jb	.L511	#,
	.loc 1 2250 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# h1u, tmp357
	cmpq	-80(%rbp), %rax	# h0u, tmp357
	jne	.L512	#,
	.loc 1 2250 0 discriminator 3
	movq	-72(%rbp), %rax	# l1u, tmp358
	cmpq	-88(%rbp), %rax	# l0u, tmp358
	jae	.L512	#,
.L511:
	.loc 1 2250 0 discriminator 1
	movl	$1, %eax	#, iftmp.188
	jmp	.L513	#
.L512:
	.loc 1 2250 0 discriminator 4
	movl	$0, %eax	#, iftmp.188
.L513:
	.loc 1 2250 0 discriminator 5
	movl	%eax, -144(%rbp)	# iftmp.188, op1ltu
.LBE35:
	.loc 1 2202 0 is_stmt 1 discriminator 5
	jmp	.L472	#
.L482:
	.loc 1 2256 0
	movl	-164(%rbp), %eax	# code, tmp360
	subl	$102, %eax	#, tmp359
	cmpl	$9, %eax	#, tmp359
	ja	.L577	#,
	movl	%eax, %eax	# tmp359, tmp361
	movq	.L516(,%rax,8), %rax	#, tmp362
	jmp	*%rax	# tmp362
	.section	.rodata
	.align 8
	.align 4
.L516:
	.quad	.L515
	.quad	.L517
	.quad	.L577
	.quad	.L577
	.quad	.L577
	.quad	.L577
	.quad	.L518
	.quad	.L519
	.quad	.L520
	.quad	.L521
	.text
.L517:
	.loc 1 2261 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L522	#,
	.loc 1 2261 0 is_stmt 0 discriminator 2
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L522	#,
	.loc 1 2261 0 discriminator 1
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L522	#,
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L522	#,
	movq	-176(%rbp), %rax	# op0, tmp363
	movzwl	(%rax), %eax	# op0_3->code, D.14187
	cmpw	$75, %ax	#, D.14187
	jne	.L523	#,
	movq	-176(%rbp), %rax	# op0, tmp364
	movq	16(%rax), %rax	# op0_3->fld[1].rtx, D.14188
	movzwl	(%rax), %eax	# _204->code, D.14187
	cmpw	$54, %ax	#, D.14187
	jne	.L523	#,
	movq	-176(%rbp), %rax	# op0, tmp365
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L522	#,
	movq	-176(%rbp), %rax	# op0, tmp366
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L522	#,
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	jne	.L524	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.14194
	testb	%al, %al	# D.14194
	jne	.L522	#,
.L524:
	.loc 1 2261 0 discriminator 2
	movq	-176(%rbp), %rax	# op0, tmp367
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L522	#,
	.loc 1 2261 0 discriminator 1
	movq	-176(%rbp), %rax	# op0, tmp368
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L522	#,
.L523:
	.loc 1 2261 0 discriminator 2
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L522	#,
	.loc 1 2261 0 discriminator 1
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L522	#,
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L522	#,
	movq	-176(%rbp), %rax	# op0, tmp369
	movzwl	(%rax), %eax	# op0_3->code, D.14187
	cmpw	$75, %ax	#, D.14187
	jne	.L525	#,
	movq	-176(%rbp), %rax	# op0, tmp370
	movq	16(%rax), %rax	# op0_3->fld[1].rtx, D.14188
	movzwl	(%rax), %eax	# _220->code, D.14187
	cmpw	$54, %ax	#, D.14187
	jne	.L525	#,
	movq	-176(%rbp), %rax	# op0, tmp371
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L522	#,
	movq	-176(%rbp), %rax	# op0, tmp372
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L522	#,
	movq	-176(%rbp), %rax	# op0, tmp373
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L522	#,
.L525:
	.loc 1 2261 0 discriminator 2
	movq	-176(%rbp), %rax	# op0, tmp374
	movzwl	(%rax), %eax	# op0_3->code, D.14187
	cmpw	$70, %ax	#, D.14187
	jne	.L526	#,
.L522:
	.loc 1 2261 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14188
	cmpq	-128(%rbp), %rax	# trueop1, D.14188
	je	.L527	#,
.L526:
	.loc 1 2262 0 is_stmt 1
	movq	-136(%rbp), %rax	# trueop0, tmp375
	movzwl	(%rax), %eax	# trueop0_11->code, D.14187
	cmpw	$67, %ax	#, D.14187
	jne	.L528	#,
.L527:
	.loc 1 2265 0
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L528	#,
	.loc 1 2268 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14185
	jmp	.L461	#
.L528:
	.loc 1 2269 0
	jmp	.L529	#
.L515:
	.loc 1 2272 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L530	#,
	.loc 1 2272 0 is_stmt 0 discriminator 2
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L530	#,
	.loc 1 2272 0 discriminator 1
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L530	#,
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L530	#,
	movq	-176(%rbp), %rax	# op0, tmp376
	movzwl	(%rax), %eax	# op0_3->code, D.14187
	cmpw	$75, %ax	#, D.14187
	jne	.L531	#,
	movq	-176(%rbp), %rax	# op0, tmp377
	movq	16(%rax), %rax	# op0_3->fld[1].rtx, D.14188
	movzwl	(%rax), %eax	# _238->code, D.14187
	cmpw	$54, %ax	#, D.14187
	jne	.L531	#,
	movq	-176(%rbp), %rax	# op0, tmp378
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L530	#,
	movq	-176(%rbp), %rax	# op0, tmp379
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L530	#,
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	jne	.L532	#,
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.14194
	testb	%al, %al	# D.14194
	jne	.L530	#,
.L532:
	.loc 1 2272 0 discriminator 2
	movq	-176(%rbp), %rax	# op0, tmp380
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L530	#,
	.loc 1 2272 0 discriminator 1
	movq	-176(%rbp), %rax	# op0, tmp381
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L530	#,
.L531:
	.loc 1 2272 0 discriminator 2
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L530	#,
	.loc 1 2272 0 discriminator 1
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L530	#,
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L530	#,
	movq	-176(%rbp), %rax	# op0, tmp382
	movzwl	(%rax), %eax	# op0_3->code, D.14187
	cmpw	$75, %ax	#, D.14187
	jne	.L533	#,
	movq	-176(%rbp), %rax	# op0, tmp383
	movq	16(%rax), %rax	# op0_3->fld[1].rtx, D.14188
	movzwl	(%rax), %eax	# _254->code, D.14187
	cmpw	$54, %ax	#, D.14187
	jne	.L533	#,
	movq	-176(%rbp), %rax	# op0, tmp384
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L530	#,
	movq	-176(%rbp), %rax	# op0, tmp385
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L530	#,
	movq	-176(%rbp), %rax	# op0, tmp386
	movq	8(%rax), %rdx	# op0_3->fld[0].rtx, D.14188
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.14188
	cmpq	%rax, %rdx	# D.14188, D.14188
	je	.L530	#,
.L533:
	.loc 1 2272 0 discriminator 2
	movq	-176(%rbp), %rax	# op0, tmp387
	movzwl	(%rax), %eax	# op0_3->code, D.14187
	cmpw	$70, %ax	#, D.14187
	jne	.L534	#,
.L530:
	.loc 1 2272 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14188
	cmpq	-128(%rbp), %rax	# trueop1, D.14188
	je	.L535	#,
.L534:
	.loc 1 2273 0 is_stmt 1
	movq	-136(%rbp), %rax	# trueop0, tmp388
	movzwl	(%rax), %eax	# trueop0_11->code, D.14187
	cmpw	$67, %ax	#, D.14187
	jne	.L536	#,
.L535:
	.loc 1 2275 0
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.14188
	cmpq	-176(%rbp), %rax	# op0, D.14188
	je	.L536	#,
	.loc 1 2278 0
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, D.14185
	jmp	.L461	#
.L536:
	.loc 1 2279 0
	jmp	.L529	#
.L518:
	.loc 1 2283 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14188
	cmpq	-128(%rbp), %rax	# trueop1, D.14188
	jne	.L537	#,
	.loc 1 2284 0
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, D.14185
	jmp	.L461	#
.L537:
	.loc 1 2285 0
	jmp	.L529	#
.L521:
	.loc 1 2288 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14188
	cmpq	-128(%rbp), %rax	# trueop1, D.14188
	jne	.L538	#,
	.loc 1 2289 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14185
	jmp	.L461	#
.L538:
	.loc 1 2290 0
	jmp	.L529	#
.L520:
	.loc 1 2295 0
	movq	-128(%rbp), %rax	# trueop1, tmp389
	movzwl	(%rax), %eax	# trueop1_12->code, D.14187
	cmpw	$54, %ax	#, D.14187
	jne	.L539	#,
	.loc 1 2296 0
	movq	-128(%rbp), %rax	# trueop1, tmp390
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14192
	movq	%rax, %rdx	# D.14192, D.14193
	movl	-168(%rbp), %eax	# mode, mode.189
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14193
	cmpq	%rax, %rdx	# D.14193, D.14193
	jne	.L539	#,
	.loc 1 2297 0
	movl	-168(%rbp), %eax	# mode, mode.190
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$1, %eax	#, D.14190
	je	.L540	#,
	.loc 1 2297 0 is_stmt 0 discriminator 1
	movl	-168(%rbp), %eax	# mode, mode.191
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$3, %eax	#, D.14190
	je	.L540	#,
	movl	-168(%rbp), %eax	# mode, mode.192
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$5, %eax	#, D.14190
	je	.L540	#,
	movl	-168(%rbp), %eax	# mode, mode.193
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$7, %eax	#, D.14190
	jne	.L539	#,
.L540:
	.loc 1 2298 0 is_stmt 1
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, D.14185
	jmp	.L461	#
.L539:
	.loc 1 2299 0
	jmp	.L529	#
.L519:
	.loc 1 2302 0
	movq	-128(%rbp), %rax	# trueop1, tmp396
	movzwl	(%rax), %eax	# trueop1_12->code, D.14187
	cmpw	$54, %ax	#, D.14187
	jne	.L541	#,
	.loc 1 2303 0
	movq	-128(%rbp), %rax	# trueop1, tmp397
	movq	8(%rax), %rax	# trueop1_12->fld[0].rtwint, D.14192
	movq	%rax, %rdx	# D.14192, D.14193
	movl	-168(%rbp), %eax	# mode, mode.194
	cltq
	movq	mode_mask_array(,%rax,8), %rax	# mode_mask_array, D.14193
	cmpq	%rax, %rdx	# D.14193, D.14193
	jne	.L541	#,
	.loc 1 2304 0
	movl	-168(%rbp), %eax	# mode, mode.195
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$1, %eax	#, D.14190
	je	.L542	#,
	.loc 1 2304 0 is_stmt 0 discriminator 1
	movl	-168(%rbp), %eax	# mode, mode.196
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$3, %eax	#, D.14190
	je	.L542	#,
	movl	-168(%rbp), %eax	# mode, mode.197
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$5, %eax	#, D.14190
	je	.L542	#,
	movl	-168(%rbp), %eax	# mode, mode.198
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14190
	cmpl	$7, %eax	#, D.14190
	jne	.L541	#,
.L542:
	.loc 1 2305 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14185
	jmp	.L461	#
.L541:
	.loc 1 2306 0
	jmp	.L529	#
.L577:
	.loc 1 2309 0
	nop
.L529:
	.loc 1 2312 0
	movl	$0, %eax	#, D.14185
	jmp	.L461	#
.L472:
	.loc 1 2317 0
	movl	-164(%rbp), %eax	# code, tmp404
	subl	$102, %eax	#, tmp403
	cmpl	$17, %eax	#, tmp403
	ja	.L543	#,
	movl	%eax, %eax	# tmp403, tmp405
	movq	.L545(,%rax,8), %rax	#, tmp406
	jmp	*%rax	# tmp406
	.section	.rodata
	.align 8
	.align 4
.L545:
	.quad	.L544
	.quad	.L546
	.quad	.L547
	.quad	.L548
	.quad	.L549
	.quad	.L550
	.quad	.L551
	.quad	.L552
	.quad	.L553
	.quad	.L554
	.quad	.L555
	.quad	.L556
	.quad	.L546
	.quad	.L547
	.quad	.L548
	.quad	.L549
	.quad	.L550
	.quad	.L544
	.text
.L546:
	.loc 1 2321 0
	cmpl	$0, -160(%rbp)	#, equal
	jne	.L557	#,
	.loc 1 2321 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.199
	jmp	.L558	#
.L557:
	.loc 1 2321 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.199
.L558:
	.loc 1 2321 0 discriminator 3
	jmp	.L461	#
.L544:
	.loc 1 2324 0 is_stmt 1
	cmpl	$0, -160(%rbp)	#, equal
	je	.L559	#,
	.loc 1 2324 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.200
	jmp	.L560	#
.L559:
	.loc 1 2324 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.200
.L560:
	.loc 1 2324 0 discriminator 3
	jmp	.L461	#
.L550:
	.loc 1 2327 0 is_stmt 1
	cmpl	$0, -156(%rbp)	#, op0lt
	jne	.L561	#,
	.loc 1 2327 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.201
	jmp	.L562	#
.L561:
	.loc 1 2327 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.201
.L562:
	.loc 1 2327 0 discriminator 3
	jmp	.L461	#
.L548:
	.loc 1 2330 0 is_stmt 1
	cmpl	$0, -148(%rbp)	#, op1lt
	jne	.L563	#,
	.loc 1 2330 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.202
	jmp	.L564	#
.L563:
	.loc 1 2330 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.202
.L564:
	.loc 1 2330 0 discriminator 3
	jmp	.L461	#
.L554:
	.loc 1 2332 0 is_stmt 1
	cmpl	$0, -152(%rbp)	#, op0ltu
	jne	.L565	#,
	.loc 1 2332 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.203
	jmp	.L566	#
.L565:
	.loc 1 2332 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.203
.L566:
	.loc 1 2332 0 discriminator 3
	jmp	.L461	#
.L552:
	.loc 1 2334 0 is_stmt 1
	cmpl	$0, -144(%rbp)	#, op1ltu
	jne	.L567	#,
	.loc 1 2334 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.204
	jmp	.L568	#
.L567:
	.loc 1 2334 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.204
.L568:
	.loc 1 2334 0 discriminator 3
	jmp	.L461	#
.L549:
	.loc 1 2337 0 is_stmt 1
	cmpl	$0, -160(%rbp)	#, equal
	jne	.L569	#,
	.loc 1 2337 0 is_stmt 0 discriminator 1
	cmpl	$0, -156(%rbp)	#, op0lt
	jne	.L569	#,
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.205
	jmp	.L570	#
.L569:
	.loc 1 2337 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.205
.L570:
	.loc 1 2337 0 discriminator 3
	jmp	.L461	#
.L547:
	.loc 1 2340 0 is_stmt 1
	cmpl	$0, -160(%rbp)	#, equal
	jne	.L571	#,
	.loc 1 2340 0 is_stmt 0 discriminator 1
	cmpl	$0, -148(%rbp)	#, op1lt
	jne	.L571	#,
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.206
	jmp	.L572	#
.L571:
	.loc 1 2340 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.206
.L572:
	.loc 1 2340 0 discriminator 3
	jmp	.L461	#
.L553:
	.loc 1 2342 0 is_stmt 1
	cmpl	$0, -160(%rbp)	#, equal
	jne	.L573	#,
	.loc 1 2342 0 is_stmt 0 discriminator 1
	cmpl	$0, -152(%rbp)	#, op0ltu
	jne	.L573	#,
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.207
	jmp	.L574	#
.L573:
	.loc 1 2342 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.207
.L574:
	.loc 1 2342 0 discriminator 3
	jmp	.L461	#
.L551:
	.loc 1 2344 0 is_stmt 1
	cmpl	$0, -160(%rbp)	#, equal
	jne	.L575	#,
	.loc 1 2344 0 is_stmt 0 discriminator 1
	cmpl	$0, -144(%rbp)	#, op1ltu
	jne	.L575	#,
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.208
	jmp	.L576	#
.L575:
	.loc 1 2344 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.208
.L576:
	.loc 1 2344 0 discriminator 3
	jmp	.L461	#
.L556:
	.loc 1 2346 0 is_stmt 1
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, D.14185
	jmp	.L461	#
.L555:
	.loc 1 2348 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14185
	jmp	.L461	#
.L543:
	.loc 1 2350 0
	movl	$__FUNCTION__.11046, %edx	#,
	movl	$2350, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L461:
	.loc 1 2352 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	simplify_relational_operation, .-simplify_relational_operation
	.globl	simplify_ternary_operation
	.type	simplify_ternary_operation, @function
simplify_ternary_operation:
.LFB18:
	.loc 1 2363 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -52(%rbp)	# code, code
	movl	%esi, -56(%rbp)	# mode, mode
	movl	%edx, -60(%rbp)	# op0_mode, op0_mode
	movq	%rcx, -72(%rbp)	# op0, op0
	movq	%r8, -80(%rbp)	# op1, op1
	movq	%r9, -88(%rbp)	# op2, op2
	.loc 1 2364 0
	movl	-56(%rbp), %eax	# mode, mode.209
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14196
	movzwl	%ax, %eax	# D.14196, tmp150
	movl	%eax, -44(%rbp)	# tmp150, width
	.loc 1 2367 0
	cmpl	$0, -44(%rbp)	#, width
	jne	.L579	#,
	.loc 1 2368 0
	movl	$64, -44(%rbp)	#, width
.L579:
	.loc 1 2370 0
	movl	-52(%rbp), %eax	# code, code
	cmpl	$72, %eax	#, code
	je	.L581	#,
	cmpl	$72, %eax	#, code
	jb	.L580	#,
	subl	$132, %eax	#, tmp152
	cmpl	$1, %eax	#, tmp152
	ja	.L580	#,
	.loc 1 2374 0
	movq	-72(%rbp), %rax	# op0, tmp153
	movzwl	(%rax), %eax	# op0_16(D)->code, D.14196
	cmpw	$54, %ax	#, D.14196
	jne	.L583	#,
	.loc 1 2375 0
	movq	-80(%rbp), %rax	# op1, tmp154
	movzwl	(%rax), %eax	# op1_18(D)->code, D.14196
	cmpw	$54, %ax	#, D.14196
	jne	.L583	#,
	.loc 1 2376 0
	movq	-88(%rbp), %rax	# op2, tmp155
	movzwl	(%rax), %eax	# op2_20(D)->code, D.14196
	cmpw	$54, %ax	#, D.14196
	jne	.L583	#,
	.loc 1 2377 0
	movq	-80(%rbp), %rax	# op1, tmp156
	movq	8(%rax), %rax	# op1_18(D)->fld[0].rtwint, D.14197
	movl	%eax, %edx	# D.14197, D.14198
	movq	-88(%rbp), %rax	# op2, tmp157
	movq	8(%rax), %rax	# op2_20(D)->fld[0].rtwint, D.14197
	addl	%edx, %eax	# D.14198, D.14198
	cmpl	-44(%rbp), %eax	# width, D.14198
	ja	.L583	#,
	.loc 1 2378 0
	cmpl	$64, -44(%rbp)	#, width
	ja	.L583	#,
.LBB36:
	.loc 1 2381 0
	movq	-72(%rbp), %rax	# op0, tmp158
	movq	8(%rax), %rax	# op0_16(D)->fld[0].rtwint, tmp159
	movq	%rax, -32(%rbp)	# tmp159, val
	.loc 1 2387 0
	movq	-88(%rbp), %rax	# op2, tmp160
	movq	8(%rax), %rax	# op2_20(D)->fld[0].rtwint, D.14197
	movl	%eax, %ecx	# D.14199, tmp222
	sarq	%cl, -32(%rbp)	# tmp222, val
	.loc 1 2389 0
	movq	-80(%rbp), %rax	# op1, tmp161
	movq	8(%rax), %rax	# op1_18(D)->fld[0].rtwint, D.14197
	cmpq	$64, %rax	#, D.14197
	je	.L584	#,
	.loc 1 2392 0
	movq	-80(%rbp), %rax	# op1, tmp162
	movq	8(%rax), %rax	# op1_18(D)->fld[0].rtwint, D.14197
	movl	$1, %edx	#, tmp163
	movl	%eax, %ecx	# D.14199, tmp224
	salq	%cl, %rdx	# tmp224, D.14197
	movq	%rdx, %rax	# D.14197, D.14197
	subq	$1, %rax	#, D.14197
	andq	%rax, -32(%rbp)	# D.14197, val
	.loc 1 2394 0
	cmpl	$132, -52(%rbp)	#, code
	jne	.L584	#,
	.loc 1 2395 0
	movq	-80(%rbp), %rax	# op1, tmp164
	movq	8(%rax), %rax	# op1_18(D)->fld[0].rtwint, D.14197
	subl	$1, %eax	#, D.14200
	movq	-32(%rbp), %rdx	# val, tmp165
	movl	%eax, %ecx	# D.14199, tmp226
	sarq	%cl, %rdx	# tmp226, D.14197
	movq	%rdx, %rax	# D.14197, D.14197
	andl	$1, %eax	#, D.14197
	testq	%rax, %rax	# D.14197
	je	.L584	#,
	.loc 1 2396 0
	movq	-80(%rbp), %rax	# op1, tmp166
	movq	8(%rax), %rax	# op1_18(D)->fld[0].rtwint, D.14197
	movl	$1, %edx	#, tmp167
	movl	%eax, %ecx	# D.14199, tmp228
	salq	%cl, %rdx	# tmp228, D.14197
	movq	%rdx, %rax	# D.14197, D.14197
	negq	%rax	# D.14197
	orq	%rax, -32(%rbp)	# D.14197, val
.L584:
	.loc 1 2403 0
	cmpl	$63, -44(%rbp)	#, width
	ja	.L585	#,
	.loc 1 2404 0
	movl	-44(%rbp), %eax	# width, tmp168
	subl	$1, %eax	#, D.14198
	movq	$-1, %rdx	#, tmp169
	movl	%eax, %ecx	# D.14199, tmp230
	salq	%cl, %rdx	# tmp230, D.14197
	movq	%rdx, %rax	# D.14197, D.14197
	andq	-32(%rbp), %rax	# val, D.14197
	movq	%rax, %rdx	# D.14197, D.14197
	.loc 1 2405 0
	movl	-44(%rbp), %eax	# width, tmp170
	subl	$1, %eax	#, D.14198
	movq	$-1, %rsi	#, tmp171
	movl	%eax, %ecx	# D.14199, tmp233
	salq	%cl, %rsi	# tmp233, D.14197
	movq	%rsi, %rax	# D.14197, D.14197
	.loc 1 2404 0
	cmpq	%rax, %rdx	# D.14197, D.14197
	je	.L585	#,
	.loc 1 2406 0
	movl	-44(%rbp), %eax	# width, width.211
	movl	$1, %edx	#, tmp172
	movl	%eax, %ecx	# width.211, tmp235
	salq	%cl, %rdx	# tmp235, D.14197
	movq	%rdx, %rax	# D.14197, D.14197
	subq	$1, %rax	#, D.14197
	andq	%rax, -32(%rbp)	# D.14197, val
.L585:
	.loc 1 2408 0
	movq	-32(%rbp), %rax	# val, tmp173
	movq	%rax, %rsi	# tmp173,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L586	#
.L583:
.LBE36:
	.loc 1 2410 0
	jmp	.L587	#
.L581:
	.loc 1 2413 0
	movq	-72(%rbp), %rax	# op0, tmp174
	movzwl	(%rax), %eax	# op0_16(D)->code, D.14196
	cmpw	$54, %ax	#, D.14196
	jne	.L588	#,
	.loc 1 2414 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14201
	cmpq	-72(%rbp), %rax	# op0, D.14201
	je	.L589	#,
	.loc 1 2414 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op1, iftmp.212
	jmp	.L590	#
.L589:
	.loc 1 2414 0 discriminator 2
	movq	-88(%rbp), %rax	# op2, iftmp.212
.L590:
	.loc 1 2414 0 discriminator 3
	jmp	.L586	#
.L588:
	.loc 1 2417 0 is_stmt 1
	movq	-72(%rbp), %rax	# op0, tmp175
	movzwl	(%rax), %eax	# op0_16(D)->code, D.14196
	cmpw	$102, %ax	#, D.14196
	jne	.L591	#,
	.loc 1 2417 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op0, tmp176
	movq	%rax, %rdi	# tmp176,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14199
	jne	.L591	#,
	.loc 1 2418 0 is_stmt 1
	movl	-56(%rbp), %eax	# mode, mode.213
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14202
	cmpl	$2, %eax	#, D.14202
	je	.L592	#,
	.loc 1 2418 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# mode, mode.214
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14202
	cmpl	$6, %eax	#, D.14202
	je	.L592	#,
	movl	-56(%rbp), %eax	# mode, mode.215
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14202
	cmpl	$8, %eax	#, D.14202
	jne	.L593	#,
.L592:
	.loc 1 2418 0 discriminator 2
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.216
	testl	%eax, %eax	# flag_unsafe_math_optimizations.216
	je	.L591	#,
.L593:
	.loc 1 2419 0 is_stmt 1
	movq	-72(%rbp), %rax	# op0, tmp180
	movq	8(%rax), %rax	# op0_16(D)->fld[0].rtx, D.14201
	movq	-80(%rbp), %rdx	# op1, tmp181
	movq	%rdx, %rsi	# tmp181,
	movq	%rax, %rdi	# D.14201,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14199
	je	.L591	#,
	.loc 1 2420 0
	movq	-72(%rbp), %rax	# op0, tmp182
	movq	16(%rax), %rax	# op0_16(D)->fld[1].rtx, D.14201
	movq	-88(%rbp), %rdx	# op2, tmp183
	movq	%rdx, %rsi	# tmp183,
	movq	%rax, %rdi	# D.14201,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14199
	je	.L591	#,
	.loc 1 2421 0
	movq	-80(%rbp), %rax	# op1, D.14195
	jmp	.L586	#
.L591:
	.loc 1 2422 0
	movq	-72(%rbp), %rax	# op0, tmp184
	movzwl	(%rax), %eax	# op0_16(D)->code, D.14196
	cmpw	$103, %ax	#, D.14196
	jne	.L594	#,
	.loc 1 2422 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op0, tmp185
	movq	%rax, %rdi	# tmp185,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14199
	jne	.L594	#,
	.loc 1 2423 0 is_stmt 1
	movl	-56(%rbp), %eax	# mode, mode.217
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14202
	cmpl	$2, %eax	#, D.14202
	je	.L595	#,
	.loc 1 2423 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# mode, mode.218
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14202
	cmpl	$6, %eax	#, D.14202
	je	.L595	#,
	movl	-56(%rbp), %eax	# mode, mode.219
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14202
	cmpl	$8, %eax	#, D.14202
	jne	.L596	#,
.L595:
	.loc 1 2423 0 discriminator 2
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.220
	testl	%eax, %eax	# flag_unsafe_math_optimizations.220
	je	.L594	#,
.L596:
	.loc 1 2424 0 is_stmt 1
	movq	-72(%rbp), %rax	# op0, tmp189
	movq	16(%rax), %rax	# op0_16(D)->fld[1].rtx, D.14201
	movq	-80(%rbp), %rdx	# op1, tmp190
	movq	%rdx, %rsi	# tmp190,
	movq	%rax, %rdi	# D.14201,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14199
	je	.L594	#,
	.loc 1 2425 0
	movq	-72(%rbp), %rax	# op0, tmp191
	movq	8(%rax), %rax	# op0_16(D)->fld[0].rtx, D.14201
	movq	-88(%rbp), %rdx	# op2, tmp192
	movq	%rdx, %rsi	# tmp192,
	movq	%rax, %rdi	# D.14201,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.14199
	je	.L594	#,
	.loc 1 2426 0
	movq	-88(%rbp), %rax	# op2, D.14195
	jmp	.L586	#
.L594:
	.loc 1 2427 0
	movq	-72(%rbp), %rax	# op0, tmp193
	movzwl	(%rax), %eax	# op0_16(D)->code, D.14196
	movzwl	%ax, %eax	# D.14196, D.14199
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14203
	cmpb	$60, %al	#, D.14203
	jne	.L597	#,
	.loc 1 2427 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op0, tmp195
	movq	%rax, %rdi	# tmp195,
	call	side_effects_p	#
	testl	%eax, %eax	# D.14199
	jne	.L597	#,
.LBB37:
	.loc 1 2429 0 is_stmt 1
	movq	-72(%rbp), %rax	# op0, tmp196
	movq	8(%rax), %rax	# op0_16(D)->fld[0].rtx, D.14201
	movzbl	2(%rax), %eax	# _97->mode, D.14204
	.loc 1 2431 0
	testb	%al, %al	# D.14204
	jne	.L598	#,
	.loc 1 2430 0
	movq	-72(%rbp), %rax	# op0, tmp197
	movq	16(%rax), %rax	# op0_16(D)->fld[1].rtx, D.14201
	movzbl	2(%rax), %eax	# _99->mode, D.14204
	.loc 1 2431 0
	movzbl	%al, %eax	# D.14204, iftmp.221
	jmp	.L599	#
.L598:
	.loc 1 2431 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op0, tmp198
	movq	8(%rax), %rax	# op0_16(D)->fld[0].rtx, D.14201
	movzbl	2(%rax), %eax	# _102->mode, D.14204
	movzbl	%al, %eax	# D.14204, iftmp.221
.L599:
	.loc 1 2429 0 is_stmt 1
	movl	%eax, -40(%rbp)	# iftmp.221, cmp_mode
	.loc 1 2433 0
	cmpl	$0, -40(%rbp)	#, cmp_mode
	jne	.L600	#,
	.loc 1 2434 0
	movl	-60(%rbp), %eax	# op0_mode, tmp199
	movl	%eax, -40(%rbp)	# tmp199, cmp_mode
.L600:
	.loc 1 2435 0
	movq	-72(%rbp), %rax	# op0, tmp200
	movq	16(%rax), %rcx	# op0_16(D)->fld[1].rtx, D.14201
	movq	-72(%rbp), %rax	# op0, tmp201
	movq	8(%rax), %rdx	# op0_16(D)->fld[0].rtx, D.14201
	movq	-72(%rbp), %rax	# op0, tmp202
	movzwl	(%rax), %eax	# op0_16(D)->code, D.14196
	movzwl	%ax, %eax	# D.14196, D.14205
	movl	-40(%rbp), %esi	# cmp_mode, tmp203
	movl	%eax, %edi	# D.14205,
	call	simplify_relational_operation	#
	movq	%rax, -24(%rbp)	# tmp204, temp
	.loc 1 2439 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14201
	cmpq	-24(%rbp), %rax	# temp, D.14201
	jne	.L601	#,
	.loc 1 2440 0
	movq	-88(%rbp), %rax	# op2, D.14195
	jmp	.L586	#
.L601:
	.loc 1 2441 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.14201
	cmpq	-24(%rbp), %rax	# temp, D.14201
	jne	.L602	#,
	.loc 1 2442 0
	movq	-80(%rbp), %rax	# op1, D.14195
	jmp	.L586	#
.L602:
	.loc 1 2443 0
	cmpq	$0, -24(%rbp)	#, temp
	je	.L603	#,
	.loc 1 2444 0
	movq	-24(%rbp), %rax	# temp, tmp205
	movq	%rax, -72(%rbp)	# tmp205, op0
.L603:
	.loc 1 2447 0
	movq	-80(%rbp), %rax	# op1, tmp206
	movzwl	(%rax), %eax	# op1_18(D)->code, D.14196
	cmpw	$54, %ax	#, D.14196
	jne	.L597	#,
	.loc 1 2447 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# op2, tmp207
	movzwl	(%rax), %eax	# op2_20(D)->code, D.14196
	cmpw	$54, %ax	#, D.14196
	jne	.L597	#,
.LBB38:
	.loc 1 2449 0 is_stmt 1
	movq	-80(%rbp), %rax	# op1, tmp208
	movq	8(%rax), %rax	# op1_18(D)->fld[0].rtwint, tmp209
	movq	%rax, -16(%rbp)	# tmp209, t
	.loc 1 2450 0
	movq	-88(%rbp), %rax	# op2, tmp210
	movq	8(%rax), %rax	# op2_20(D)->fld[0].rtwint, tmp211
	movq	%rax, -8(%rbp)	# tmp211, f
	.loc 1 2452 0
	cmpq	$1, -16(%rbp)	#, t
	jne	.L604	#,
	.loc 1 2452 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, f
	jne	.L604	#,
	.loc 1 2453 0 is_stmt 1
	movq	-72(%rbp), %rax	# op0, tmp212
	movzwl	(%rax), %eax	# op0_2->code, D.14196
	movzwl	%ax, %eax	# D.14196, tmp213
	movl	%eax, -52(%rbp)	# tmp213, code
	jmp	.L605	#
.L604:
	.loc 1 2454 0
	cmpq	$0, -16(%rbp)	#, t
	jne	.L587	#,
	.loc 1 2454 0 is_stmt 0 discriminator 1
	cmpq	$1, -8(%rbp)	#, f
	jne	.L587	#,
.LBB39:
	.loc 1 2457 0 is_stmt 1
	movq	-72(%rbp), %rax	# op0, tmp214
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	reversed_comparison_code	#
	movl	%eax, -36(%rbp)	# tmp215, tmp
	.loc 1 2458 0
	cmpl	$0, -36(%rbp)	#, tmp
	jne	.L606	#,
	.loc 1 2459 0
	jmp	.L587	#
.L606:
	.loc 1 2460 0
	movl	-36(%rbp), %eax	# tmp, tmp216
	movl	%eax, -52(%rbp)	# tmp216, code
.L605:
.LBE39:
	.loc 1 2465 0
	movq	-72(%rbp), %rax	# op0, tmp217
	movq	16(%rax), %rcx	# op0_2->fld[1].rtx, D.14201
	movq	-72(%rbp), %rax	# op0, tmp218
	movq	8(%rax), %rdx	# op0_2->fld[0].rtx, D.14201
	movl	-56(%rbp), %esi	# mode, tmp219
	movl	-52(%rbp), %eax	# code, tmp220
	movl	%eax, %edi	# tmp220,
	call	gen_rtx_fmt_ee	#
	jmp	.L586	#
.L597:
.LBE38:
.LBE37:
	.loc 1 2468 0
	jmp	.L587	#
.L580:
	.loc 1 2471 0
	movl	$__FUNCTION__.11119, %edx	#,
	movl	$2471, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L587:
	.loc 1 2474 0
	movl	$0, %eax	#, D.14195
.L586:
	.loc 1 2475 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	simplify_ternary_operation, .-simplify_ternary_operation
	.globl	simplify_subreg
	.type	simplify_subreg, @function
simplify_subreg:
.LFB19:
	.loc 1 2484 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -132(%rbp)	# outermode, outermode
	movq	%rsi, -144(%rbp)	# op, op
	movl	%edx, -136(%rbp)	# innermode, innermode
	movl	%ecx, -148(%rbp)	# byte, byte
	.loc 1 2486 0
	cmpl	$0, -136(%rbp)	#, innermode
	je	.L608	#,
	.loc 1 2486 0 is_stmt 0 discriminator 1
	cmpl	$0, -132(%rbp)	#, outermode
	je	.L608	#,
	.loc 1 2487 0 is_stmt 1
	cmpl	$51, -136(%rbp)	#, innermode
	je	.L608	#,
	.loc 1 2487 0 is_stmt 0 discriminator 1
	cmpl	$51, -132(%rbp)	#, outermode
	jne	.L609	#,
.L608:
	.loc 1 2488 0 is_stmt 1
	movl	$__FUNCTION__.11126, %edx	#,
	movl	$2488, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L609:
	.loc 1 2490 0
	movq	-144(%rbp), %rax	# op, tmp214
	movzbl	2(%rax), %eax	# op_15(D)->mode, D.14207
	movzbl	%al, %eax	# D.14207, D.14208
	cmpl	-136(%rbp), %eax	# innermode, D.14208
	je	.L610	#,
	.loc 1 2491 0
	movq	-144(%rbp), %rax	# op, tmp215
	movzbl	2(%rax), %eax	# op_15(D)->mode, D.14207
	testb	%al, %al	# D.14207
	je	.L610	#,
	.loc 1 2492 0
	movl	$__FUNCTION__.11126, %edx	#,
	movl	$2492, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L610:
	.loc 1 2494 0
	movl	-132(%rbp), %eax	# outermode, outermode.222
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %ecx	# D.14207, D.14208
	movl	-148(%rbp), %eax	# byte, tmp217
	movl	$0, %edx	#, tmp218
	divl	%ecx	# D.14208
	movl	%edx, %eax	# tmp218, D.14208
	testl	%eax, %eax	# D.14208
	jne	.L611	#,
	.loc 1 2495 0
	movl	-136(%rbp), %eax	# innermode, innermode.223
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %eax	# D.14207, D.14208
	cmpl	-148(%rbp), %eax	# byte, D.14208
	ja	.L612	#,
.L611:
	.loc 1 2496 0
	movl	$__FUNCTION__.11126, %edx	#,
	movl	$2496, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L612:
	.loc 1 2498 0
	movl	-132(%rbp), %eax	# outermode, tmp221
	cmpl	-136(%rbp), %eax	# innermode, tmp221
	jne	.L613	#,
	.loc 1 2498 0 is_stmt 0 discriminator 1
	cmpl	$0, -148(%rbp)	#, byte
	jne	.L613	#,
	.loc 1 2499 0 is_stmt 1
	movq	-144(%rbp), %rax	# op, D.14206
	jmp	.L614	#
.L613:
	.loc 1 2502 0
	movq	-144(%rbp), %rax	# op, tmp222
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$67, %ax	#, D.14209
	je	.L615	#,
	.loc 1 2502 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# op, tmp223
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$68, %ax	#, D.14209
	je	.L615	#,
	movq	-144(%rbp), %rax	# op, tmp224
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$54, %ax	#, D.14209
	je	.L615	#,
	movq	-144(%rbp), %rax	# op, tmp225
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$55, %ax	#, D.14209
	je	.L615	#,
	movq	-144(%rbp), %rax	# op, tmp226
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$58, %ax	#, D.14209
	je	.L615	#,
	movq	-144(%rbp), %rax	# op, tmp227
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$134, %ax	#, D.14209
	je	.L615	#,
	movq	-144(%rbp), %rax	# op, tmp228
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$56, %ax	#, D.14209
	je	.L615	#,
	movq	-144(%rbp), %rax	# op, tmp229
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$140, %ax	#, D.14209
	jne	.L616	#,
.L615:
.LBB40:
	.loc 1 2505 0 is_stmt 1
	movq	$0, -72(%rbp)	#, val
	.loc 1 2512 0
	movl	-136(%rbp), %edx	# innermode, tmp230
	movl	-132(%rbp), %eax	# outermode, tmp231
	movl	%edx, %esi	# tmp230,
	movl	%eax, %edi	# tmp231,
	call	subreg_lowpart_offset	#
	cmpl	-148(%rbp), %eax	# byte, D.14208
	jne	.L617	#,
.LBB41:
	.loc 1 2514 0
	movq	-144(%rbp), %rdx	# op, tmp232
	movl	-132(%rbp), %eax	# outermode, tmp233
	movq	%rdx, %rsi	# tmp232,
	movl	%eax, %edi	# tmp233,
	call	gen_lowpart_if_possible	#
	movq	%rax, -64(%rbp)	# tmp234, new
	.loc 1 2515 0
	cmpq	$0, -64(%rbp)	#, new
	je	.L617	#,
	.loc 1 2516 0
	movq	-64(%rbp), %rax	# new, D.14206
	jmp	.L614	#
.L617:
.LBE41:
	.loc 1 2520 0
	movl	-132(%rbp), %eax	# outermode, outermode.224
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %edx	# D.14207, D.14210
	movl	target_flags(%rip), %eax	# target_flags, target_flags.226
	andl	$33554432, %eax	#, D.14210
	testl	%eax, %eax	# D.14210
	je	.L618	#,
	.loc 1 2520 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.225
	jmp	.L619	#
.L618:
	.loc 1 2520 0 discriminator 2
	movl	$4, %eax	#, iftmp.225
.L619:
	.loc 1 2520 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.225, D.14210
	jne	.L620	#,
	.loc 1 2521 0 is_stmt 1
	movl	-136(%rbp), %eax	# innermode, innermode.227
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %edx	# D.14207, D.14210
	movl	target_flags(%rip), %eax	# target_flags, target_flags.229
	andl	$33554432, %eax	#, D.14210
	testl	%eax, %eax	# D.14210
	je	.L621	#,
	.loc 1 2521 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.228
	jmp	.L622	#
.L621:
	.loc 1 2521 0 discriminator 2
	movl	$4, %eax	#, iftmp.228
.L622:
	.loc 1 2521 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.228, D.14210
	jle	.L620	#,
	.loc 1 2522 0 is_stmt 1
	movl	-132(%rbp), %eax	# outermode, outermode.230
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14211
	cmpl	$1, %eax	#, D.14211
	jne	.L620	#,
.LBB42:
	.loc 1 2525 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.232
	andl	$33554432, %eax	#, D.14210
	testl	%eax, %eax	# D.14210
	je	.L623	#,
	.loc 1 2525 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.231
	jmp	.L624	#
.L623:
	.loc 1 2525 0 discriminator 2
	movl	$4, %ebx	#, iftmp.231
.L624:
	.loc 1 2525 0 discriminator 3
	movl	-148(%rbp), %eax	# byte, tmp240
	movl	$0, %edx	#, tmp239
	divl	%ebx	# iftmp.231
	.loc 1 2524 0 is_stmt 1 discriminator 3
	movl	%eax, %ecx	# D.14208, D.14210
	movl	-136(%rbp), %edx	# innermode, tmp241
	movq	-144(%rbp), %rax	# op, tmp242
	movl	%ecx, %esi	# D.14210,
	movq	%rax, %rdi	# tmp242,
	call	constant_subword	#
	movq	%rax, -56(%rbp)	# tmp243, new
	.loc 1 2527 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, new
	je	.L620	#,
	.loc 1 2528 0
	movq	-56(%rbp), %rax	# new, D.14206
	jmp	.L614	#
.L620:
.LBE42:
	.loc 1 2531 0
	movl	-148(%rbp), %eax	# byte, tmp244
	sall	$3, %eax	#, D.14208
	movl	%eax, -116(%rbp)	# D.14208, offset
	.loc 1 2532 0
	movq	-144(%rbp), %rax	# op, tmp245
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	movzwl	%ax, %eax	# D.14209, D.14208
	cmpl	$54, %eax	#, D.14208
	je	.L626	#,
	cmpl	$55, %eax	#, D.14208
	je	.L627	#,
	.loc 1 2585 0
	jmp	.L616	#
.L627:
	.loc 1 2535 0
	movq	-144(%rbp), %rax	# op, tmp246
	movzbl	2(%rax), %eax	# op_15(D)->mode, D.14207
	testb	%al, %al	# D.14207
	je	.L628	#,
	.loc 1 2536 0
	jmp	.L616	#
.L628:
	.loc 1 2539 0
	movl	-132(%rbp), %eax	# outermode, outermode.233
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14209
	cmpw	$63, %ax	#, D.14209
	jbe	.L629	#,
	.loc 1 2540 0
	movl	$0, %eax	#, D.14206
	jmp	.L614	#
.L629:
	.loc 1 2542 0
	cmpl	$63, -116(%rbp)	#, offset
	setg	%al	#, D.14212
	movzbl	%al, %eax	# D.14212, tmp248
	movl	%eax, -108(%rbp)	# tmp248, part
	.loc 1 2548 0
	cmpl	$0, -108(%rbp)	#, part
	je	.L630	#,
	.loc 1 2548 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# op, tmp249
	movq	24(%rax), %rax	# op_15(D)->fld[2].rtwint, D.14213
	jmp	.L631	#
.L630:
	.loc 1 2548 0 discriminator 2
	movq	-144(%rbp), %rax	# op, tmp250
	movq	16(%rax), %rax	# op_15(D)->fld[1].rtwint, D.14213
.L631:
	.loc 1 2548 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.234, val
	.loc 1 2549 0 is_stmt 1 discriminator 3
	movl	-116(%rbp), %eax	# offset, tmp252
	cltd
	shrl	$26, %edx	#, tmp254
	addl	%edx, %eax	# tmp254, tmp255
	andl	$63, %eax	#, tmp256
	subl	%edx, %eax	# tmp254, tmp257
	movl	%eax, -116(%rbp)	# tmp257, offset
	.loc 1 2553 0 discriminator 3
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	$64, %edi	#,
	call	mode_for_size	#
	movl	%eax, -136(%rbp)	# tmp258, innermode
.L626:
	.loc 1 2557 0
	movq	-144(%rbp), %rax	# op, tmp259
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$54, %ax	#, D.14209
	jne	.L632	#,
	.loc 1 2558 0
	movq	-144(%rbp), %rax	# op, tmp260
	movq	8(%rax), %rax	# op_15(D)->fld[0].rtwint, D.14213
	movq	%rax, -72(%rbp)	# D.14213, val
.L632:
	.loc 1 2561 0
	movl	-132(%rbp), %eax	# outermode, outermode.235
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14211
	cmpl	$1, %eax	#, D.14211
	je	.L633	#,
	.loc 1 2562 0
	movl	$0, %eax	#, D.14206
	jmp	.L614	#
.L633:
	.loc 1 2575 0
	cmpl	$63, -116(%rbp)	#, offset
	jle	.L634	#,
	.loc 1 2576 0
	movq	-72(%rbp), %rax	# val, val.244
	testq	%rax, %rax	# val.244
	jns	.L635	#,
	.loc 1 2576 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, iftmp.243
	jmp	.L636	#
.L635:
	.loc 1 2576 0 discriminator 2
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.243
.L636:
	.loc 1 2576 0 discriminator 3
	jmp	.L614	#
.L634:
	.loc 1 2579 0 is_stmt 1
	movl	-116(%rbp), %eax	# offset, tmp262
	movl	%eax, %ecx	# tmp262, tmp351
	shrq	%cl, -72(%rbp)	# tmp351, val
	.loc 1 2580 0
	movl	-132(%rbp), %eax	# outermode, outermode.245
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.14209
	cmpw	$63, %ax	#, D.14209
	ja	.L637	#,
	.loc 1 2581 0
	movq	-72(%rbp), %rax	# val, val.246
	movl	-132(%rbp), %edx	# outermode, tmp264
	movl	%edx, %esi	# tmp264,
	movq	%rax, %rdi	# val.246,
	call	trunc_int_for_mode	#
	movq	%rax, -72(%rbp)	# D.14213, val
.L637:
	.loc 1 2582 0
	movq	-72(%rbp), %rax	# val, val.247
	movq	%rax, %rsi	# val.247,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L614	#
.L616:
.LBE40:
	.loc 1 2591 0
	movq	-144(%rbp), %rax	# op, tmp265
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$63, %ax	#, D.14209
	jne	.L638	#,
.LBB43:
	.loc 1 2593 0
	movq	-144(%rbp), %rax	# op, tmp266
	movq	8(%rax), %rax	# op_15(D)->fld[0].rtx, D.14214
	movzbl	2(%rax), %eax	# _100->mode, D.14207
	movzbl	%al, %eax	# D.14207, tmp267
	movl	%eax, -104(%rbp)	# tmp267, innermostmode
	.loc 1 2594 0
	movq	-144(%rbp), %rax	# op, tmp268
	movl	16(%rax), %edx	# op_15(D)->fld[1].rtuint, D.14208
	movl	-148(%rbp), %eax	# byte, tmp269
	addl	%edx, %eax	# D.14208, D.14208
	movl	%eax, -112(%rbp)	# D.14208, final_offset
	.loc 1 2597 0
	movl	-132(%rbp), %eax	# outermode, tmp270
	cmpl	-104(%rbp), %eax	# innermostmode, tmp270
	jne	.L639	#,
	.loc 1 2598 0
	cmpl	$0, -148(%rbp)	#, byte
	jne	.L639	#,
	.loc 1 2598 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# op, tmp271
	movl	16(%rax), %eax	# op_15(D)->fld[1].rtuint, D.14208
	testl	%eax, %eax	# D.14208
	jne	.L639	#,
	.loc 1 2599 0 is_stmt 1
	movq	-144(%rbp), %rax	# op, tmp272
	movq	8(%rax), %rax	# op_15(D)->fld[0].rtx, D.14206
	jmp	.L614	#
.L639:
	.loc 1 2605 0
	cmpl	$0, -148(%rbp)	#, byte
	jne	.L640	#,
	.loc 1 2605 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# innermode, innermode.248
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.14207
	movl	-132(%rbp), %eax	# outermode, outermode.249
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	cmpb	%al, %dl	# D.14207, D.14207
	jae	.L640	#,
.LBB44:
	.loc 1 2607 0 is_stmt 1
	movl	-136(%rbp), %eax	# innermode, innermode.250
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %edx	# D.14207, D.14210
	movl	-132(%rbp), %eax	# outermode, outermode.251
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %eax	# D.14207, D.14210
	subl	%eax, %edx	# D.14210, tmp277
	movl	%edx, %eax	# tmp277, tmp277
	movl	%eax, -100(%rbp)	# tmp277, difference
.L640:
.LBE44:
	.loc 1 2613 0
	movq	-144(%rbp), %rax	# op, tmp278
	movl	16(%rax), %eax	# op_15(D)->fld[1].rtuint, D.14208
	testl	%eax, %eax	# D.14208
	jne	.L641	#,
	.loc 1 2614 0
	movl	-104(%rbp), %eax	# innermostmode, innermostmode.258
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.14207
	movl	-136(%rbp), %eax	# innermode, innermode.259
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	cmpb	%al, %dl	# D.14207, D.14207
	jae	.L641	#,
.LBB45:
	.loc 1 2616 0
	movl	-104(%rbp), %eax	# innermostmode, innermostmode.260
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %edx	# D.14207, D.14210
	movl	-136(%rbp), %eax	# innermode, innermode.261
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %eax	# D.14207, D.14210
	subl	%eax, %edx	# D.14210, tmp283
	movl	%edx, %eax	# tmp283, tmp283
	movl	%eax, -96(%rbp)	# tmp283, difference
.L641:
.LBE45:
	.loc 1 2624 0
	movl	-104(%rbp), %eax	# innermostmode, innermostmode.268
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.14207
	movl	-132(%rbp), %eax	# outermode, outermode.269
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	cmpb	%al, %dl	# D.14207, D.14207
	jbe	.L642	#,
	.loc 1 2627 0
	cmpl	$0, -112(%rbp)	#, final_offset
	jns	.L643	#,
	.loc 1 2628 0
	movl	$0, %eax	#, D.14206
	jmp	.L614	#
.L643:
	.loc 1 2630 0
	movl	-132(%rbp), %eax	# outermode, outermode.270
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %ecx	# D.14207, D.14210
	movl	-112(%rbp), %eax	# final_offset, tmp287
	cltd
	idivl	%ecx	# D.14210
	movl	%edx, %eax	# tmp288, D.14210
	testl	%eax, %eax	# D.14210
	jne	.L644	#,
	.loc 1 2631 0
	movl	-112(%rbp), %edx	# final_offset, final_offset.271
	movl	-104(%rbp), %eax	# innermostmode, innermostmode.272
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %eax	# D.14207, D.14208
	cmpl	%eax, %edx	# D.14208, final_offset.271
	jb	.L645	#,
.L644:
	.loc 1 2632 0
	movl	$0, %eax	#, D.14206
	jmp	.L614	#
.L642:
.LBB46:
	.loc 1 2636 0
	movl	$0, -92(%rbp)	#, offset
	.loc 1 2637 0
	movl	-104(%rbp), %eax	# innermostmode, innermostmode.273
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %edx	# D.14207, D.14210
	movl	-132(%rbp), %eax	# outermode, outermode.274
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	movzbl	%al, %eax	# D.14207, D.14210
	subl	%eax, %edx	# D.14210, tmp293
	movl	%edx, %eax	# tmp293, tmp293
	movl	%eax, -88(%rbp)	# tmp293, difference
	.loc 1 2645 0
	movl	-92(%rbp), %eax	# offset, tmp294
	cmpl	-112(%rbp), %eax	# final_offset, tmp294
	jne	.L646	#,
	.loc 1 2646 0
	movl	$0, -112(%rbp)	#, final_offset
	jmp	.L645	#
.L646:
	.loc 1 2648 0
	movl	$0, %eax	#, D.14206
	jmp	.L614	#
.L645:
.LBE46:
	.loc 1 2652 0
	movl	-112(%rbp), %ecx	# final_offset, final_offset.281
	.loc 1 2653 0
	movq	-144(%rbp), %rax	# op, tmp295
	movq	8(%rax), %rax	# op_15(D)->fld[0].rtx, D.14214
	movzbl	2(%rax), %eax	# _156->mode, D.14207
	.loc 1 2652 0
	movzbl	%al, %edx	# D.14207, D.14215
	movq	-144(%rbp), %rax	# op, tmp296
	movq	8(%rax), %rsi	# op_15(D)->fld[0].rtx, D.14214
	movl	-132(%rbp), %eax	# outermode, tmp297
	movl	%eax, %edi	# tmp297,
	call	simplify_subreg	#
	movq	%rax, -48(%rbp)	# tmp298, new
	.loc 1 2655 0
	cmpq	$0, -48(%rbp)	#, new
	je	.L647	#,
	.loc 1 2656 0
	movq	-48(%rbp), %rax	# new, D.14206
	jmp	.L614	#
.L647:
	.loc 1 2657 0
	movq	-144(%rbp), %rax	# op, tmp299
	movq	8(%rax), %rcx	# op_15(D)->fld[0].rtx, D.14214
	movl	-112(%rbp), %edx	# final_offset, tmp300
	movl	-132(%rbp), %eax	# outermode, tmp301
	movq	%rcx, %rsi	# D.14214,
	movl	%eax, %edi	# tmp301,
	call	gen_rtx_SUBREG	#
	jmp	.L614	#
.L638:
.LBE43:
	.loc 1 2665 0
	movq	-144(%rbp), %rax	# op, tmp302
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$61, %ax	#, D.14209
	jne	.L648	#,
	.loc 1 2666 0
	movq	-144(%rbp), %rax	# op, tmp303
	movzbl	3(%rax), %eax	# *op_15(D), D.14207
	andl	$64, %eax	#, D.14207
	testb	%al, %al	# D.14207
	je	.L649	#,
	.loc 1 2667 0
	movl	rtx_equal_function_value_matters(%rip), %eax	# rtx_equal_function_value_matters, rtx_equal_function_value_matters.282
	testl	%eax, %eax	# rtx_equal_function_value_matters.282
	jne	.L648	#,
.L649:
	.loc 1 2676 0
	movq	-144(%rbp), %rax	# op, tmp304
	movl	8(%rax), %eax	# op_15(D)->fld[0].rtuint, D.14208
	cmpl	$52, %eax	#, D.14208
	ja	.L648	#,
	.loc 1 2677 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.283
	testl	%eax, %eax	# reload_completed.283
	je	.L650	#,
	.loc 1 2677 0 is_stmt 0 discriminator 1
	movl	frame_pointer_needed(%rip), %eax	# frame_pointer_needed, frame_pointer_needed.284
	testl	%eax, %eax	# frame_pointer_needed.284
	je	.L651	#,
.L650:
	.loc 1 2678 0 is_stmt 1
	movq	-144(%rbp), %rax	# op, tmp305
	movl	8(%rax), %eax	# op_15(D)->fld[0].rtuint, D.14208
	cmpl	$20, %eax	#, D.14208
	je	.L648	#,
	.loc 1 2680 0
	movq	-144(%rbp), %rax	# op, tmp306
	movl	8(%rax), %eax	# op_15(D)->fld[0].rtuint, D.14208
	cmpl	$6, %eax	#, D.14208
	je	.L648	#,
.L651:
	.loc 1 2684 0
	movq	-144(%rbp), %rax	# op, tmp307
	movl	8(%rax), %eax	# op_15(D)->fld[0].rtuint, D.14208
	cmpl	$16, %eax	#, D.14208
	je	.L648	#,
	.loc 1 2686 0
	movq	-144(%rbp), %rax	# op, tmp308
	movl	8(%rax), %eax	# op_15(D)->fld[0].rtuint, D.14208
	cmpl	$7, %eax	#, D.14208
	je	.L648	#,
.LBB47:
	.loc 1 2688 0
	movl	-148(%rbp), %edx	# byte, byte.285
	movq	-144(%rbp), %rcx	# op, tmp309
	movl	-132(%rbp), %eax	# outermode, tmp310
	movq	%rcx, %rsi	# tmp309,
	movl	%eax, %edi	# tmp310,
	call	gen_rtx_SUBREG	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14214,
	call	subreg_hard_regno	#
	movl	%eax, -84(%rbp)	# tmp311, final_regno
	.loc 1 2694 0
	movl	-132(%rbp), %edx	# outermode, tmp312
	movl	-84(%rbp), %eax	# final_regno, tmp313
	movl	%edx, %esi	# tmp312,
	movl	%eax, %edi	# tmp313,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.14210
	jne	.L652	#,
	.loc 1 2695 0
	movq	-144(%rbp), %rax	# op, tmp314
	movl	8(%rax), %eax	# op_15(D)->fld[0].rtuint, D.14208
	movl	-136(%rbp), %edx	# innermode, tmp315
	movl	%edx, %esi	# tmp315,
	movl	%eax, %edi	# D.14210,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.14210
	jne	.L648	#,
.L652:
.LBB48:
	.loc 1 2697 0
	movl	-84(%rbp), %edx	# final_regno, tmp316
	movl	-132(%rbp), %eax	# outermode, tmp317
	movl	%edx, %esi	# tmp316,
	movl	%eax, %edi	# tmp317,
	call	gen_rtx_REG	#
	movq	%rax, -40(%rbp)	# tmp318, x
	.loc 1 2704 0
	movl	-136(%rbp), %edx	# innermode, tmp319
	movl	-132(%rbp), %eax	# outermode, tmp320
	movl	%edx, %esi	# tmp319,
	movl	%eax, %edi	# tmp320,
	call	subreg_lowpart_offset	#
	cmpl	-148(%rbp), %eax	# byte, D.14208
	jne	.L653	#,
	.loc 1 2705 0
	movq	-144(%rbp), %rax	# op, tmp321
	movl	16(%rax), %edx	# op_15(D)->fld[1].rtuint, D.14208
	movq	-40(%rbp), %rax	# x, tmp322
	movl	%edx, 16(%rax)	# D.14208, x_182->fld[1].rtuint
.L653:
	.loc 1 2706 0
	movq	-40(%rbp), %rax	# x, D.14206
	jmp	.L614	#
.L648:
.LBE48:
.LBE47:
	.loc 1 2715 0
	movq	-144(%rbp), %rax	# op, tmp323
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$66, %ax	#, D.14209
	jne	.L654	#,
	.loc 1 2716 0
	movq	-144(%rbp), %rax	# op, tmp324
	movq	8(%rax), %rax	# op_15(D)->fld[0].rtx, D.14214
	movq	%rax, %rdi	# D.14214,
	call	mode_dependent_address_p	#
	testl	%eax, %eax	# D.14210
	jne	.L654	#,
	.loc 1 2719 0
	movq	-144(%rbp), %rax	# op, tmp325
	movzbl	3(%rax), %eax	# *op_15(D), D.14207
	andl	$8, %eax	#, D.14207
	testb	%al, %al	# D.14207
	je	.L655	#,
	.loc 1 2720 0
	movl	-136(%rbp), %eax	# innermode, tmp326
	movl	%eax, %esi	# tmp326,
	movl	$47, %edi	#,
	call	have_insn_for	#
	testl	%eax, %eax	# D.14210
	jne	.L654	#,
.L655:
	.loc 1 2721 0
	movl	-132(%rbp), %eax	# outermode, outermode.286
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.14207
	movq	-144(%rbp), %rax	# op, tmp328
	movzbl	2(%rax), %eax	# op_15(D)->mode, D.14207
	movzbl	%al, %eax	# D.14207, D.14210
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14207
	cmpb	%al, %dl	# D.14207, D.14207
	ja	.L654	#,
	.loc 1 2722 0
	movl	-148(%rbp), %edx	# byte, D.14213
	movl	-132(%rbp), %esi	# outermode, tmp330
	movq	-144(%rbp), %rax	# op, tmp331
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp331,
	call	adjust_address_1	#
	jmp	.L614	#
.L654:
	.loc 1 2726 0
	movq	-144(%rbp), %rax	# op, tmp332
	movzwl	(%rax), %eax	# op_15(D)->code, D.14209
	cmpw	$65, %ax	#, D.14209
	jne	.L656	#,
.LBB49:
	.loc 1 2728 0
	movl	-136(%rbp), %eax	# innermode, innermode.287
	cltq
	movzbl	mode_unit_size(%rax), %eax	# mode_unit_size, D.14207
	movzbl	%al, %eax	# D.14207, D.14208
	cmpl	-148(%rbp), %eax	# byte, D.14208
	seta	%al	#, D.14212
	movzbl	%al, %eax	# D.14212, tmp334
	movl	%eax, -80(%rbp)	# tmp334, is_realpart
	.loc 1 2729 0
	cmpl	$0, -80(%rbp)	#, is_realpart
	je	.L657	#,
	.loc 1 2729 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# op, tmp335
	movq	8(%rax), %rax	# op_15(D)->fld[0].rtx, iftmp.288
	jmp	.L658	#
.L657:
	.loc 1 2729 0 discriminator 2
	movq	-144(%rbp), %rax	# op, tmp336
	movq	16(%rax), %rax	# op_15(D)->fld[1].rtx, iftmp.288
.L658:
	.loc 1 2729 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.288, part
	.loc 1 2733 0 is_stmt 1 discriminator 3
	movl	-136(%rbp), %eax	# innermode, innermode.289
	cltq
	movzbl	mode_unit_size(%rax), %eax	# mode_unit_size, D.14207
	movzbl	%al, %ecx	# D.14207, D.14208
	movl	-148(%rbp), %eax	# byte, tmp339
	movl	$0, %edx	#, tmp340
	divl	%ecx	# D.14208
	movl	%edx, -76(%rbp)	# tmp340, final_offset
	.loc 1 2734 0 discriminator 3
	movq	-32(%rbp), %rax	# part, tmp342
	movzbl	2(%rax), %eax	# part_207->mode, D.14207
	movzbl	%al, %edx	# D.14207, D.14215
	movl	-76(%rbp), %ecx	# final_offset, tmp343
	movq	-32(%rbp), %rsi	# part, tmp344
	movl	-132(%rbp), %eax	# outermode, tmp345
	movl	%eax, %edi	# tmp345,
	call	simplify_subreg	#
	movq	%rax, -24(%rbp)	# tmp346, res
	.loc 1 2735 0 discriminator 3
	cmpq	$0, -24(%rbp)	#, res
	je	.L659	#,
	.loc 1 2736 0
	movq	-24(%rbp), %rax	# res, D.14206
	jmp	.L614	#
.L659:
	.loc 1 2738 0
	movl	-76(%rbp), %edx	# final_offset, final_offset.290
	movq	-32(%rbp), %rcx	# part, tmp347
	movl	-132(%rbp), %eax	# outermode, tmp348
	movq	%rcx, %rsi	# tmp347,
	movl	%eax, %edi	# tmp348,
	call	gen_rtx_SUBREG	#
	jmp	.L614	#
.L656:
.LBE49:
	.loc 1 2741 0
	movl	$0, %eax	#, D.14206
.L614:
	.loc 1 2742 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	simplify_subreg, .-simplify_subreg
	.globl	simplify_gen_subreg
	.type	simplify_gen_subreg, @function
simplify_gen_subreg:
.LFB20:
	.loc 1 2750 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# outermode, outermode
	movq	%rsi, -32(%rbp)	# op, op
	movl	%edx, -24(%rbp)	# innermode, innermode
	movl	%ecx, -36(%rbp)	# byte, byte
	.loc 1 2753 0
	cmpl	$0, -24(%rbp)	#, innermode
	je	.L661	#,
	.loc 1 2753 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, outermode
	je	.L661	#,
	.loc 1 2754 0 is_stmt 1
	cmpl	$51, -24(%rbp)	#, innermode
	je	.L661	#,
	.loc 1 2754 0 is_stmt 0 discriminator 1
	cmpl	$51, -20(%rbp)	#, outermode
	jne	.L662	#,
.L661:
	.loc 1 2755 0 is_stmt 1
	movl	$__FUNCTION__.11156, %edx	#,
	movl	$2755, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L662:
	.loc 1 2757 0
	movq	-32(%rbp), %rax	# op, tmp75
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.14217
	movzbl	%al, %eax	# D.14217, D.14218
	cmpl	-24(%rbp), %eax	# innermode, D.14218
	je	.L663	#,
	.loc 1 2758 0
	movq	-32(%rbp), %rax	# op, tmp76
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.14217
	testb	%al, %al	# D.14217
	je	.L663	#,
	.loc 1 2759 0
	movl	$__FUNCTION__.11156, %edx	#,
	movl	$2759, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L663:
	.loc 1 2761 0
	movl	-20(%rbp), %eax	# outermode, outermode.291
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14217
	movzbl	%al, %ecx	# D.14217, D.14218
	movl	-36(%rbp), %eax	# byte, tmp78
	movl	$0, %edx	#, tmp79
	divl	%ecx	# D.14218
	movl	%edx, %eax	# tmp79, D.14218
	testl	%eax, %eax	# D.14218
	jne	.L664	#,
	.loc 1 2762 0
	movl	-24(%rbp), %eax	# innermode, innermode.292
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14217
	movzbl	%al, %eax	# D.14217, D.14218
	cmpl	-36(%rbp), %eax	# byte, D.14218
	ja	.L665	#,
.L664:
	.loc 1 2763 0
	movl	$__FUNCTION__.11156, %edx	#,
	movl	$2763, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L665:
	.loc 1 2765 0
	movq	-32(%rbp), %rax	# op, tmp82
	movzwl	(%rax), %eax	# op_4(D)->code, D.14219
	cmpw	$71, %ax	#, D.14219
	jne	.L666	#,
	.loc 1 2766 0
	movl	$0, %eax	#, D.14216
	jmp	.L667	#
.L666:
	.loc 1 2768 0
	movl	-36(%rbp), %ecx	# byte, tmp83
	movl	-24(%rbp), %edx	# innermode, tmp84
	movq	-32(%rbp), %rsi	# op, tmp85
	movl	-20(%rbp), %eax	# outermode, tmp86
	movl	%eax, %edi	# tmp86,
	call	simplify_subreg	#
	movq	%rax, -8(%rbp)	# tmp87, new
	.loc 1 2769 0
	cmpq	$0, -8(%rbp)	#, new
	je	.L668	#,
	.loc 1 2770 0
	movq	-8(%rbp), %rax	# new, D.14216
	jmp	.L667	#
.L668:
	.loc 1 2772 0
	movq	-32(%rbp), %rax	# op, tmp88
	movzwl	(%rax), %eax	# op_4(D)->code, D.14219
	cmpw	$63, %ax	#, D.14219
	je	.L669	#,
	.loc 1 2772 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# op, tmp89
	movzbl	2(%rax), %eax	# op_4(D)->mode, D.14217
	testb	%al, %al	# D.14217
	jne	.L670	#,
.L669:
	.loc 1 2773 0 is_stmt 1
	movl	$0, %eax	#, D.14216
	jmp	.L667	#
.L670:
	.loc 1 2775 0
	movl	-36(%rbp), %edx	# byte, byte.293
	movq	-32(%rbp), %rcx	# op, tmp90
	movl	-20(%rbp), %eax	# outermode, tmp91
	movq	%rcx, %rsi	# tmp90,
	movl	%eax, %edi	# tmp91,
	call	gen_rtx_SUBREG	#
.L667:
	.loc 1 2776 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	simplify_gen_subreg, .-simplify_gen_subreg
	.globl	simplify_rtx
	.type	simplify_rtx, @function
simplify_rtx:
.LFB21:
	.loc 1 2820 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2821 0
	movq	-24(%rbp), %rax	# x, tmp98
	movzwl	(%rax), %eax	# x_3(D)->code, D.14221
	movzwl	%ax, %eax	# D.14221, tmp99
	movl	%eax, -16(%rbp)	# tmp99, code
	.loc 1 2822 0
	movq	-24(%rbp), %rax	# x, tmp100
	movzbl	2(%rax), %eax	# x_3(D)->mode, D.14222
	movzbl	%al, %eax	# D.14222, tmp101
	movl	%eax, -12(%rbp)	# tmp101, mode
	.loc 1 2824 0
	movl	-16(%rbp), %eax	# code, code.294
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14223
	movsbl	%al, %eax	# D.14223, D.14224
	cmpl	$60, %eax	#, D.14224
	je	.L673	#,
	cmpl	$60, %eax	#, D.14224
	jg	.L674	#,
	cmpl	$50, %eax	#, D.14224
	je	.L675	#,
	cmpl	$51, %eax	#, D.14224
	je	.L676	#,
	cmpl	$49, %eax	#, D.14224
	je	.L677	#,
	jmp	.L672	#
.L674:
	cmpl	$99, %eax	#, D.14224
	je	.L678	#,
	cmpl	$120, %eax	#, D.14224
	je	.L679	#,
	cmpl	$98, %eax	#, D.14224
	je	.L676	#,
	jmp	.L672	#
.L677:
	.loc 1 2828 0
	movq	-24(%rbp), %rax	# x, tmp103
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.14225
	movzbl	2(%rax), %eax	# _11->mode, D.14222
	.loc 1 2827 0
	movzbl	%al, %ecx	# D.14222, D.14226
	movq	-24(%rbp), %rax	# x, tmp104
	movq	8(%rax), %rdx	# x_3(D)->fld[0].rtx, D.14225
	movl	-12(%rbp), %esi	# mode, tmp105
	movl	-16(%rbp), %eax	# code, tmp106
	movl	%eax, %edi	# tmp106,
	call	simplify_unary_operation	#
	jmp	.L680	#
.L678:
	.loc 1 2830 0
	movq	-24(%rbp), %rax	# x, tmp107
	movq	16(%rax), %rdx	# x_3(D)->fld[1].rtx, D.14225
	movq	-24(%rbp), %rax	# x, tmp108
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.14225
	movq	%rdx, %rsi	# D.14225,
	movq	%rax, %rdi	# D.14225,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.14224
	je	.L675	#,
.LBB50:
	.loc 1 2834 0
	movq	-24(%rbp), %rax	# x, tmp109
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, tmp110
	movq	%rax, -8(%rbp)	# tmp110, tem
	.loc 1 2835 0
	movq	-24(%rbp), %rax	# x, tmp111
	movq	16(%rax), %rdx	# x_3(D)->fld[1].rtx, D.14225
	movq	-24(%rbp), %rax	# x, tmp112
	movq	%rdx, 8(%rax)	# D.14225, x_3(D)->fld[0].rtx
	.loc 1 2836 0
	movq	-24(%rbp), %rax	# x, tmp113
	movq	-8(%rbp), %rdx	# tem, tmp114
	movq	%rdx, 16(%rax)	# tmp114, x_3(D)->fld[1].rtx
	.loc 1 2837 0
	movq	-24(%rbp), %rax	# x, tmp115
	movq	16(%rax), %rcx	# x_3(D)->fld[1].rtx, D.14225
	movq	-24(%rbp), %rax	# x, tmp116
	movq	8(%rax), %rdx	# x_3(D)->fld[0].rtx, D.14225
	movl	-12(%rbp), %esi	# mode, tmp117
	movl	-16(%rbp), %eax	# code, tmp118
	movl	%eax, %edi	# tmp118,
	call	simplify_binary_operation	#
	jmp	.L680	#
.L675:
.LBE50:
	.loc 1 2842 0
	movq	-24(%rbp), %rax	# x, tmp119
	movq	16(%rax), %rcx	# x_3(D)->fld[1].rtx, D.14225
	movq	-24(%rbp), %rax	# x, tmp120
	movq	8(%rax), %rdx	# x_3(D)->fld[0].rtx, D.14225
	movl	-12(%rbp), %esi	# mode, tmp121
	movl	-16(%rbp), %eax	# code, tmp122
	movl	%eax, %edi	# tmp122,
	call	simplify_binary_operation	#
	jmp	.L680	#
.L676:
	.loc 1 2846 0
	movq	-24(%rbp), %rax	# x, tmp123
	movq	24(%rax), %r8	# x_3(D)->fld[2].rtx, D.14225
	movq	-24(%rbp), %rax	# x, tmp124
	movq	16(%rax), %rdi	# x_3(D)->fld[1].rtx, D.14225
	movq	-24(%rbp), %rax	# x, tmp125
	movq	8(%rax), %rcx	# x_3(D)->fld[0].rtx, D.14225
	movq	-24(%rbp), %rax	# x, tmp126
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.14225
	movzbl	2(%rax), %eax	# _30->mode, D.14222
	movzbl	%al, %edx	# D.14222, D.14226
	movl	-12(%rbp), %esi	# mode, tmp127
	movl	-16(%rbp), %eax	# code, tmp128
	movq	%r8, %r9	# D.14225,
	movq	%rdi, %r8	# D.14225,
	movl	%eax, %edi	# tmp128,
	call	simplify_ternary_operation	#
	jmp	.L680	#
.L673:
	.loc 1 2851 0
	movq	-24(%rbp), %rax	# x, tmp129
	movq	16(%rax), %rcx	# x_3(D)->fld[1].rtx, D.14225
	movq	-24(%rbp), %rax	# x, tmp130
	movq	8(%rax), %rdx	# x_3(D)->fld[0].rtx, D.14225
	.loc 1 2852 0
	movq	-24(%rbp), %rax	# x, tmp131
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.14225
	movzbl	2(%rax), %eax	# _36->mode, D.14222
	.loc 1 2851 0
	testb	%al, %al	# D.14222
	je	.L681	#,
	.loc 1 2854 0
	movq	-24(%rbp), %rax	# x, tmp132
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.14225
	movzbl	2(%rax), %eax	# _38->mode, D.14222
	.loc 1 2851 0
	movzbl	%al, %eax	# D.14222, iftmp.295
	jmp	.L682	#
.L681:
	.loc 1 2855 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp133
	movq	16(%rax), %rax	# x_3(D)->fld[1].rtx, D.14225
	movzbl	2(%rax), %eax	# _41->mode, D.14222
	.loc 1 2851 0 discriminator 1
	movzbl	%al, %eax	# D.14222, iftmp.295
.L682:
	.loc 1 2851 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %edi	# code, tmp134
	movl	%eax, %esi	# iftmp.295,
	call	simplify_relational_operation	#
	jmp	.L680	#
.L679:
	.loc 1 2859 0 is_stmt 1
	cmpl	$63, -16(%rbp)	#, code
	jne	.L683	#,
	.loc 1 2860 0
	movq	-24(%rbp), %rax	# x, tmp135
	movl	16(%rax), %ecx	# x_3(D)->fld[1].rtuint, D.14227
	.loc 1 2861 0
	movq	-24(%rbp), %rax	# x, tmp136
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, D.14225
	movzbl	2(%rax), %eax	# _46->mode, D.14222
	.loc 1 2860 0
	movzbl	%al, %edx	# D.14222, D.14226
	movq	-24(%rbp), %rax	# x, tmp137
	movq	8(%rax), %rsi	# x_3(D)->fld[0].rtx, D.14225
	movl	-12(%rbp), %eax	# mode, tmp138
	movl	%eax, %edi	# tmp138,
	call	simplify_gen_subreg	#
	jmp	.L680	#
.L683:
	.loc 1 2863 0
	movl	$0, %eax	#, D.14220
	jmp	.L680	#
.L672:
	.loc 1 2865 0
	movl	$0, %eax	#, D.14220
.L680:
	.loc 1 2867 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	simplify_rtx, .-simplify_rtx
	.section	.rodata
	.align 16
	.type	__FUNCTION__.10741, @object
	.size	__FUNCTION__.10741, 20
__FUNCTION__.10741:
	.string	"simplify_unary_real"
	.align 16
	.type	__FUNCTION__.10774, @object
	.size	__FUNCTION__.10774, 25
__FUNCTION__.10774:
	.string	"simplify_unary_operation"
	.align 16
	.type	__FUNCTION__.10844, @object
	.size	__FUNCTION__.10844, 26
__FUNCTION__.10844:
	.string	"simplify_binary_operation"
	.align 16
	.type	__FUNCTION__.11046, @object
	.size	__FUNCTION__.11046, 30
__FUNCTION__.11046:
	.string	"simplify_relational_operation"
	.align 16
	.type	__FUNCTION__.11119, @object
	.size	__FUNCTION__.11119, 27
__FUNCTION__.11119:
	.string	"simplify_ternary_operation"
	.align 16
	.type	__FUNCTION__.11126, @object
	.size	__FUNCTION__.11126, 16
__FUNCTION__.11126:
	.string	"simplify_subreg"
	.align 16
	.type	__FUNCTION__.11156, @object
	.size	__FUNCTION__.11156, 20
__FUNCTION__.11156:
	.string	"simplify_gen_subreg"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "machmode.h"
	.file 5 "real.h"
	.file 6 "i386.h"
	.file 7 "hard-reg-set.h"
	.file 8 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x218c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF374
	.byte	0x1
	.long	.LASF375
	.long	.LASF376
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
	.long	0x147
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x914
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
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0x924
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
	.long	.LASF377
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF18
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF19
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF20
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF21
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF22
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF23
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF24
	.uleb128 0xd
	.long	0x17a
	.long	0x191
	.uleb128 0xe
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x197
	.uleb128 0xf
	.long	0x17a
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF25
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF26
	.uleb128 0x3
	.byte	0x8
	.long	0x1b0
	.uleb128 0x10
	.uleb128 0x11
	.long	.LASF87
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x326
	.uleb128 0x12
	.long	.LASF27
	.sleb128 0
	.uleb128 0x12
	.long	.LASF28
	.sleb128 1
	.uleb128 0x12
	.long	.LASF29
	.sleb128 2
	.uleb128 0x12
	.long	.LASF30
	.sleb128 3
	.uleb128 0x12
	.long	.LASF31
	.sleb128 4
	.uleb128 0x12
	.long	.LASF32
	.sleb128 5
	.uleb128 0x12
	.long	.LASF33
	.sleb128 6
	.uleb128 0x12
	.long	.LASF34
	.sleb128 7
	.uleb128 0x12
	.long	.LASF35
	.sleb128 8
	.uleb128 0x12
	.long	.LASF36
	.sleb128 9
	.uleb128 0x12
	.long	.LASF37
	.sleb128 10
	.uleb128 0x12
	.long	.LASF38
	.sleb128 11
	.uleb128 0x12
	.long	.LASF39
	.sleb128 12
	.uleb128 0x12
	.long	.LASF40
	.sleb128 13
	.uleb128 0x12
	.long	.LASF41
	.sleb128 14
	.uleb128 0x12
	.long	.LASF42
	.sleb128 15
	.uleb128 0x12
	.long	.LASF43
	.sleb128 16
	.uleb128 0x12
	.long	.LASF44
	.sleb128 17
	.uleb128 0x12
	.long	.LASF45
	.sleb128 18
	.uleb128 0x12
	.long	.LASF46
	.sleb128 19
	.uleb128 0x12
	.long	.LASF47
	.sleb128 20
	.uleb128 0x12
	.long	.LASF48
	.sleb128 21
	.uleb128 0x12
	.long	.LASF49
	.sleb128 22
	.uleb128 0x12
	.long	.LASF50
	.sleb128 23
	.uleb128 0x12
	.long	.LASF51
	.sleb128 24
	.uleb128 0x12
	.long	.LASF52
	.sleb128 25
	.uleb128 0x12
	.long	.LASF53
	.sleb128 26
	.uleb128 0x12
	.long	.LASF54
	.sleb128 27
	.uleb128 0x12
	.long	.LASF55
	.sleb128 28
	.uleb128 0x12
	.long	.LASF56
	.sleb128 29
	.uleb128 0x12
	.long	.LASF57
	.sleb128 30
	.uleb128 0x12
	.long	.LASF58
	.sleb128 31
	.uleb128 0x12
	.long	.LASF59
	.sleb128 32
	.uleb128 0x12
	.long	.LASF60
	.sleb128 33
	.uleb128 0x12
	.long	.LASF61
	.sleb128 34
	.uleb128 0x12
	.long	.LASF62
	.sleb128 35
	.uleb128 0x12
	.long	.LASF63
	.sleb128 36
	.uleb128 0x12
	.long	.LASF64
	.sleb128 37
	.uleb128 0x12
	.long	.LASF65
	.sleb128 38
	.uleb128 0x12
	.long	.LASF66
	.sleb128 39
	.uleb128 0x12
	.long	.LASF67
	.sleb128 40
	.uleb128 0x12
	.long	.LASF68
	.sleb128 41
	.uleb128 0x12
	.long	.LASF69
	.sleb128 42
	.uleb128 0x12
	.long	.LASF70
	.sleb128 43
	.uleb128 0x12
	.long	.LASF71
	.sleb128 44
	.uleb128 0x12
	.long	.LASF72
	.sleb128 45
	.uleb128 0x12
	.long	.LASF73
	.sleb128 46
	.uleb128 0x12
	.long	.LASF74
	.sleb128 47
	.uleb128 0x12
	.long	.LASF75
	.sleb128 48
	.uleb128 0x12
	.long	.LASF76
	.sleb128 49
	.uleb128 0x12
	.long	.LASF77
	.sleb128 50
	.uleb128 0x12
	.long	.LASF78
	.sleb128 51
	.uleb128 0x12
	.long	.LASF79
	.sleb128 52
	.uleb128 0x12
	.long	.LASF80
	.sleb128 53
	.uleb128 0x12
	.long	.LASF81
	.sleb128 54
	.uleb128 0x12
	.long	.LASF82
	.sleb128 55
	.uleb128 0x12
	.long	.LASF83
	.sleb128 56
	.uleb128 0x12
	.long	.LASF84
	.sleb128 57
	.uleb128 0x12
	.long	.LASF85
	.sleb128 58
	.uleb128 0x12
	.long	.LASF86
	.sleb128 59
	.byte	0
	.uleb128 0x11
	.long	.LASF88
	.byte	0x4
	.byte	0x4
	.byte	0x2c
	.long	0x36f
	.uleb128 0x12
	.long	.LASF89
	.sleb128 0
	.uleb128 0x12
	.long	.LASF90
	.sleb128 1
	.uleb128 0x12
	.long	.LASF91
	.sleb128 2
	.uleb128 0x12
	.long	.LASF92
	.sleb128 3
	.uleb128 0x12
	.long	.LASF93
	.sleb128 4
	.uleb128 0x12
	.long	.LASF94
	.sleb128 5
	.uleb128 0x12
	.long	.LASF95
	.sleb128 6
	.uleb128 0x12
	.long	.LASF96
	.sleb128 7
	.uleb128 0x12
	.long	.LASF97
	.sleb128 8
	.uleb128 0x12
	.long	.LASF98
	.sleb128 9
	.byte	0
	.uleb128 0x11
	.long	.LASF99
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x76b
	.uleb128 0x12
	.long	.LASF100
	.sleb128 0
	.uleb128 0x13
	.string	"NIL"
	.sleb128 1
	.uleb128 0x12
	.long	.LASF101
	.sleb128 2
	.uleb128 0x12
	.long	.LASF102
	.sleb128 3
	.uleb128 0x12
	.long	.LASF103
	.sleb128 4
	.uleb128 0x12
	.long	.LASF104
	.sleb128 5
	.uleb128 0x12
	.long	.LASF105
	.sleb128 6
	.uleb128 0x12
	.long	.LASF106
	.sleb128 7
	.uleb128 0x12
	.long	.LASF107
	.sleb128 8
	.uleb128 0x12
	.long	.LASF108
	.sleb128 9
	.uleb128 0x12
	.long	.LASF109
	.sleb128 10
	.uleb128 0x12
	.long	.LASF110
	.sleb128 11
	.uleb128 0x12
	.long	.LASF111
	.sleb128 12
	.uleb128 0x12
	.long	.LASF112
	.sleb128 13
	.uleb128 0x12
	.long	.LASF113
	.sleb128 14
	.uleb128 0x12
	.long	.LASF114
	.sleb128 15
	.uleb128 0x12
	.long	.LASF115
	.sleb128 16
	.uleb128 0x12
	.long	.LASF116
	.sleb128 17
	.uleb128 0x12
	.long	.LASF117
	.sleb128 18
	.uleb128 0x12
	.long	.LASF118
	.sleb128 19
	.uleb128 0x12
	.long	.LASF119
	.sleb128 20
	.uleb128 0x12
	.long	.LASF120
	.sleb128 21
	.uleb128 0x12
	.long	.LASF121
	.sleb128 22
	.uleb128 0x12
	.long	.LASF122
	.sleb128 23
	.uleb128 0x12
	.long	.LASF123
	.sleb128 24
	.uleb128 0x12
	.long	.LASF124
	.sleb128 25
	.uleb128 0x12
	.long	.LASF125
	.sleb128 26
	.uleb128 0x12
	.long	.LASF126
	.sleb128 27
	.uleb128 0x12
	.long	.LASF127
	.sleb128 28
	.uleb128 0x12
	.long	.LASF128
	.sleb128 29
	.uleb128 0x12
	.long	.LASF129
	.sleb128 30
	.uleb128 0x12
	.long	.LASF130
	.sleb128 31
	.uleb128 0x12
	.long	.LASF131
	.sleb128 32
	.uleb128 0x12
	.long	.LASF132
	.sleb128 33
	.uleb128 0x12
	.long	.LASF133
	.sleb128 34
	.uleb128 0x12
	.long	.LASF134
	.sleb128 35
	.uleb128 0x12
	.long	.LASF135
	.sleb128 36
	.uleb128 0x12
	.long	.LASF136
	.sleb128 37
	.uleb128 0x12
	.long	.LASF137
	.sleb128 38
	.uleb128 0x12
	.long	.LASF138
	.sleb128 39
	.uleb128 0x12
	.long	.LASF139
	.sleb128 40
	.uleb128 0x12
	.long	.LASF140
	.sleb128 41
	.uleb128 0x12
	.long	.LASF141
	.sleb128 42
	.uleb128 0x12
	.long	.LASF142
	.sleb128 43
	.uleb128 0x12
	.long	.LASF143
	.sleb128 44
	.uleb128 0x12
	.long	.LASF144
	.sleb128 45
	.uleb128 0x12
	.long	.LASF145
	.sleb128 46
	.uleb128 0x13
	.string	"SET"
	.sleb128 47
	.uleb128 0x13
	.string	"USE"
	.sleb128 48
	.uleb128 0x12
	.long	.LASF146
	.sleb128 49
	.uleb128 0x12
	.long	.LASF147
	.sleb128 50
	.uleb128 0x12
	.long	.LASF148
	.sleb128 51
	.uleb128 0x12
	.long	.LASF149
	.sleb128 52
	.uleb128 0x12
	.long	.LASF150
	.sleb128 53
	.uleb128 0x12
	.long	.LASF151
	.sleb128 54
	.uleb128 0x12
	.long	.LASF152
	.sleb128 55
	.uleb128 0x12
	.long	.LASF153
	.sleb128 56
	.uleb128 0x12
	.long	.LASF154
	.sleb128 57
	.uleb128 0x12
	.long	.LASF155
	.sleb128 58
	.uleb128 0x13
	.string	"PC"
	.sleb128 59
	.uleb128 0x12
	.long	.LASF156
	.sleb128 60
	.uleb128 0x13
	.string	"REG"
	.sleb128 61
	.uleb128 0x12
	.long	.LASF157
	.sleb128 62
	.uleb128 0x12
	.long	.LASF158
	.sleb128 63
	.uleb128 0x12
	.long	.LASF159
	.sleb128 64
	.uleb128 0x12
	.long	.LASF160
	.sleb128 65
	.uleb128 0x13
	.string	"MEM"
	.sleb128 66
	.uleb128 0x12
	.long	.LASF161
	.sleb128 67
	.uleb128 0x12
	.long	.LASF162
	.sleb128 68
	.uleb128 0x13
	.string	"CC0"
	.sleb128 69
	.uleb128 0x12
	.long	.LASF163
	.sleb128 70
	.uleb128 0x12
	.long	.LASF164
	.sleb128 71
	.uleb128 0x12
	.long	.LASF165
	.sleb128 72
	.uleb128 0x12
	.long	.LASF166
	.sleb128 73
	.uleb128 0x12
	.long	.LASF167
	.sleb128 74
	.uleb128 0x12
	.long	.LASF168
	.sleb128 75
	.uleb128 0x12
	.long	.LASF169
	.sleb128 76
	.uleb128 0x13
	.string	"NEG"
	.sleb128 77
	.uleb128 0x12
	.long	.LASF170
	.sleb128 78
	.uleb128 0x13
	.string	"DIV"
	.sleb128 79
	.uleb128 0x13
	.string	"MOD"
	.sleb128 80
	.uleb128 0x12
	.long	.LASF171
	.sleb128 81
	.uleb128 0x12
	.long	.LASF172
	.sleb128 82
	.uleb128 0x13
	.string	"AND"
	.sleb128 83
	.uleb128 0x13
	.string	"IOR"
	.sleb128 84
	.uleb128 0x13
	.string	"XOR"
	.sleb128 85
	.uleb128 0x13
	.string	"NOT"
	.sleb128 86
	.uleb128 0x12
	.long	.LASF173
	.sleb128 87
	.uleb128 0x12
	.long	.LASF174
	.sleb128 88
	.uleb128 0x12
	.long	.LASF175
	.sleb128 89
	.uleb128 0x12
	.long	.LASF176
	.sleb128 90
	.uleb128 0x12
	.long	.LASF177
	.sleb128 91
	.uleb128 0x12
	.long	.LASF178
	.sleb128 92
	.uleb128 0x12
	.long	.LASF179
	.sleb128 93
	.uleb128 0x12
	.long	.LASF180
	.sleb128 94
	.uleb128 0x12
	.long	.LASF181
	.sleb128 95
	.uleb128 0x12
	.long	.LASF182
	.sleb128 96
	.uleb128 0x12
	.long	.LASF183
	.sleb128 97
	.uleb128 0x12
	.long	.LASF184
	.sleb128 98
	.uleb128 0x12
	.long	.LASF185
	.sleb128 99
	.uleb128 0x12
	.long	.LASF186
	.sleb128 100
	.uleb128 0x12
	.long	.LASF187
	.sleb128 101
	.uleb128 0x13
	.string	"NE"
	.sleb128 102
	.uleb128 0x13
	.string	"EQ"
	.sleb128 103
	.uleb128 0x13
	.string	"GE"
	.sleb128 104
	.uleb128 0x13
	.string	"GT"
	.sleb128 105
	.uleb128 0x13
	.string	"LE"
	.sleb128 106
	.uleb128 0x13
	.string	"LT"
	.sleb128 107
	.uleb128 0x13
	.string	"GEU"
	.sleb128 108
	.uleb128 0x13
	.string	"GTU"
	.sleb128 109
	.uleb128 0x13
	.string	"LEU"
	.sleb128 110
	.uleb128 0x13
	.string	"LTU"
	.sleb128 111
	.uleb128 0x12
	.long	.LASF188
	.sleb128 112
	.uleb128 0x12
	.long	.LASF189
	.sleb128 113
	.uleb128 0x12
	.long	.LASF190
	.sleb128 114
	.uleb128 0x12
	.long	.LASF191
	.sleb128 115
	.uleb128 0x12
	.long	.LASF192
	.sleb128 116
	.uleb128 0x12
	.long	.LASF193
	.sleb128 117
	.uleb128 0x12
	.long	.LASF194
	.sleb128 118
	.uleb128 0x12
	.long	.LASF195
	.sleb128 119
	.uleb128 0x12
	.long	.LASF196
	.sleb128 120
	.uleb128 0x12
	.long	.LASF197
	.sleb128 121
	.uleb128 0x12
	.long	.LASF198
	.sleb128 122
	.uleb128 0x12
	.long	.LASF199
	.sleb128 123
	.uleb128 0x12
	.long	.LASF200
	.sleb128 124
	.uleb128 0x12
	.long	.LASF201
	.sleb128 125
	.uleb128 0x13
	.string	"FIX"
	.sleb128 126
	.uleb128 0x12
	.long	.LASF202
	.sleb128 127
	.uleb128 0x12
	.long	.LASF203
	.sleb128 128
	.uleb128 0x13
	.string	"ABS"
	.sleb128 129
	.uleb128 0x12
	.long	.LASF204
	.sleb128 130
	.uleb128 0x13
	.string	"FFS"
	.sleb128 131
	.uleb128 0x12
	.long	.LASF205
	.sleb128 132
	.uleb128 0x12
	.long	.LASF206
	.sleb128 133
	.uleb128 0x12
	.long	.LASF207
	.sleb128 134
	.uleb128 0x12
	.long	.LASF208
	.sleb128 135
	.uleb128 0x12
	.long	.LASF209
	.sleb128 136
	.uleb128 0x12
	.long	.LASF210
	.sleb128 137
	.uleb128 0x12
	.long	.LASF211
	.sleb128 138
	.uleb128 0x12
	.long	.LASF212
	.sleb128 139
	.uleb128 0x12
	.long	.LASF213
	.sleb128 140
	.uleb128 0x12
	.long	.LASF214
	.sleb128 141
	.uleb128 0x12
	.long	.LASF215
	.sleb128 142
	.uleb128 0x12
	.long	.LASF216
	.sleb128 143
	.uleb128 0x12
	.long	.LASF217
	.sleb128 144
	.uleb128 0x12
	.long	.LASF218
	.sleb128 145
	.uleb128 0x12
	.long	.LASF219
	.sleb128 146
	.uleb128 0x12
	.long	.LASF220
	.sleb128 147
	.uleb128 0x12
	.long	.LASF221
	.sleb128 148
	.uleb128 0x12
	.long	.LASF222
	.sleb128 149
	.uleb128 0x12
	.long	.LASF223
	.sleb128 150
	.uleb128 0x12
	.long	.LASF224
	.sleb128 151
	.uleb128 0x13
	.string	"PHI"
	.sleb128 152
	.uleb128 0x12
	.long	.LASF225
	.sleb128 153
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x7ec
	.uleb128 0x5
	.long	.LASF226
	.byte	0x2
	.byte	0x47
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF227
	.byte	0x2
	.byte	0x49
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF228
	.byte	0x2
	.byte	0x4a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF229
	.byte	0x2
	.byte	0x4c
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF230
	.byte	0x2
	.byte	0x4e
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF231
	.byte	0x2
	.byte	0x50
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF232
	.byte	0x2
	.byte	0x53
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF233
	.byte	0x2
	.byte	0x55
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF234
	.byte	0x2
	.byte	0x56
	.long	0x76b
	.uleb128 0x14
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x83c
	.uleb128 0x8
	.long	.LASF235
	.byte	0x2
	.byte	0x5e
	.long	0x150
	.byte	0
	.uleb128 0x8
	.long	.LASF236
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF237
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF238
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF239
	.byte	0x2
	.byte	0x62
	.long	0x147
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF240
	.byte	0x2
	.byte	0x63
	.long	0x7f7
	.uleb128 0x15
	.long	.LASF269
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x8e2
	.uleb128 0x16
	.long	.LASF241
	.byte	0x2
	.byte	0x69
	.long	0x150
	.uleb128 0x16
	.long	.LASF242
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x16
	.long	.LASF243
	.byte	0x2
	.byte	0x6b
	.long	0x147
	.uleb128 0x16
	.long	.LASF244
	.byte	0x2
	.byte	0x6c
	.long	0x191
	.uleb128 0x17
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x16
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x16
	.long	.LASF245
	.byte	0x2
	.byte	0x6f
	.long	0x1b1
	.uleb128 0x16
	.long	.LASF246
	.byte	0x2
	.byte	0x70
	.long	0x7ec
	.uleb128 0x16
	.long	.LASF247
	.byte	0x2
	.byte	0x71
	.long	0x8e7
	.uleb128 0x16
	.long	.LASF248
	.byte	0x2
	.byte	0x72
	.long	0x8f2
	.uleb128 0x16
	.long	.LASF249
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x17
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x8fd
	.uleb128 0x16
	.long	.LASF250
	.byte	0x2
	.byte	0x75
	.long	0x903
	.byte	0
	.uleb128 0x18
	.long	.LASF251
	.uleb128 0x3
	.byte	0x8
	.long	0x8e2
	.uleb128 0x18
	.long	.LASF252
	.uleb128 0x3
	.byte	0x8
	.long	0x8ed
	.uleb128 0x18
	.long	.LASF253
	.uleb128 0x3
	.byte	0x8
	.long	0x8f8
	.uleb128 0x3
	.byte	0x8
	.long	0x83c
	.uleb128 0x7
	.long	.LASF254
	.byte	0x2
	.byte	0x76
	.long	0x847
	.uleb128 0xd
	.long	0x909
	.long	0x924
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x2d
	.long	0x934
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF255
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x98a
	.uleb128 0x12
	.long	.LASF256
	.sleb128 0
	.uleb128 0x12
	.long	.LASF257
	.sleb128 1
	.uleb128 0x12
	.long	.LASF258
	.sleb128 2
	.uleb128 0x12
	.long	.LASF259
	.sleb128 3
	.uleb128 0x12
	.long	.LASF260
	.sleb128 4
	.uleb128 0x12
	.long	.LASF261
	.sleb128 5
	.uleb128 0x12
	.long	.LASF262
	.sleb128 6
	.uleb128 0x12
	.long	.LASF263
	.sleb128 7
	.uleb128 0x12
	.long	.LASF264
	.sleb128 8
	.uleb128 0x12
	.long	.LASF265
	.sleb128 9
	.uleb128 0x12
	.long	.LASF266
	.sleb128 10
	.uleb128 0x12
	.long	.LASF267
	.sleb128 11
	.byte	0
	.uleb128 0x14
	.byte	0x18
	.byte	0x5
	.byte	0x6b
	.long	0x99d
	.uleb128 0x6
	.string	"r"
	.byte	0x5
	.byte	0x6c
	.long	0x99d
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x150
	.long	0x9ad
	.uleb128 0xe
	.long	0x140
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF268
	.byte	0x5
	.byte	0x6d
	.long	0x98a
	.uleb128 0x1a
	.long	.LASF270
	.byte	0x18
	.byte	0x5
	.value	0x1bd
	.long	0x9da
	.uleb128 0x1b
	.string	"d"
	.byte	0x5
	.value	0x1bf
	.long	0x9ad
	.uleb128 0x1b
	.string	"i"
	.byte	0x5
	.value	0x1c0
	.long	0x99d
	.byte	0
	.uleb128 0x1c
	.long	.LASF271
	.byte	0x20
	.byte	0x1
	.value	0x15d
	.long	0xa29
	.uleb128 0x1d
	.long	.LASF272
	.byte	0x1
	.value	0x15f
	.long	0x2d
	.byte	0
	.uleb128 0x1d
	.long	.LASF273
	.byte	0x1
	.value	0x160
	.long	0x2d
	.byte	0x8
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x1
	.value	0x161
	.long	0x1b1
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x1
	.value	0x162
	.long	0x36f
	.byte	0x14
	.uleb128 0x1d
	.long	.LASF274
	.byte	0x1
	.value	0x163
	.long	0xa29
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF275
	.uleb128 0x1c
	.long	.LASF276
	.byte	0x20
	.byte	0x1
	.value	0x30c
	.long	0xa7f
	.uleb128 0x1d
	.long	.LASF277
	.byte	0x1
	.value	0x30e
	.long	0x2d
	.byte	0
	.uleb128 0x1d
	.long	.LASF278
	.byte	0x1
	.value	0x30e
	.long	0x2d
	.byte	0x8
	.uleb128 0x1d
	.long	.LASF273
	.byte	0x1
	.value	0x30f
	.long	0x2d
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF0
	.byte	0x1
	.value	0x310
	.long	0x36f
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x1
	.value	0x311
	.long	0x1b1
	.byte	0x1c
	.byte	0
	.uleb128 0x1c
	.long	.LASF279
	.byte	0x10
	.byte	0x1
	.value	0x34f
	.long	0xab4
	.uleb128 0x1d
	.long	.LASF280
	.byte	0x1
	.value	0x351
	.long	0x2d
	.byte	0
	.uleb128 0x1d
	.long	.LASF281
	.byte	0x1
	.value	0x352
	.long	0xa29
	.byte	0x8
	.uleb128 0x1d
	.long	.LASF282
	.byte	0x1
	.value	0x353
	.long	0xa29
	.byte	0x9
	.byte	0
	.uleb128 0x1c
	.long	.LASF283
	.byte	0x10
	.byte	0x1
	.value	0x6c8
	.long	0xadb
	.uleb128 0x1e
	.string	"op"
	.byte	0x1
	.value	0x6ca
	.long	0x2d
	.byte	0
	.uleb128 0x1e
	.string	"neg"
	.byte	0x1
	.value	0x6cb
	.long	0x139
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF284
	.byte	0x20
	.byte	0x1
	.value	0x7f8
	.long	0xb37
	.uleb128 0x1e
	.string	"op0"
	.byte	0x1
	.value	0x7fa
	.long	0x2d
	.byte	0
	.uleb128 0x1e
	.string	"op1"
	.byte	0x1
	.value	0x7fa
	.long	0x2d
	.byte	0x8
	.uleb128 0x1d
	.long	.LASF285
	.byte	0x1
	.value	0x7fb
	.long	0x139
	.byte	0x10
	.uleb128 0x1d
	.long	.LASF286
	.byte	0x1
	.value	0x7fb
	.long	0x139
	.byte	0x14
	.uleb128 0x1d
	.long	.LASF287
	.byte	0x1
	.value	0x7fb
	.long	0x139
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF288
	.byte	0x1
	.value	0x7fc
	.long	0x139
	.byte	0x1c
	.byte	0
	.uleb128 0x1f
	.long	.LASF319
	.byte	0x1
	.byte	0x73
	.long	0x2d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xb73
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.byte	0x74
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x75
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF289
	.byte	0x1
	.byte	0x7f
	.long	0x2d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdb
	.uleb128 0x20
	.long	.LASF0
	.byte	0x1
	.byte	0x80
	.long	0x36f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.byte	0x81
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"op0"
	.byte	0x1
	.byte	0x82
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"op1"
	.byte	0x1
	.byte	0x82
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"tem"
	.byte	0x1
	.byte	0x84
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF290
	.byte	0x1
	.byte	0xa0
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xc31
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.byte	0xa1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0xa3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF291
	.byte	0x1
	.byte	0xa3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF292
	.byte	0x1
	.byte	0xa4
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF293
	.byte	0x1
	.byte	0xc1
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xc98
	.uleb128 0x20
	.long	.LASF0
	.byte	0x1
	.byte	0xc2
	.long	0x36f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.byte	0xc3
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"op"
	.byte	0x1
	.byte	0xc4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF294
	.byte	0x1
	.byte	0xc5
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"tem"
	.byte	0x1
	.byte	0xc7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF295
	.byte	0x1
	.byte	0xd3
	.long	0x2d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1d
	.uleb128 0x20
	.long	.LASF0
	.byte	0x1
	.byte	0xd4
	.long	0x36f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.byte	0xd5
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF296
	.byte	0x1
	.byte	0xd5
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.string	"op0"
	.byte	0x1
	.byte	0xd6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"op1"
	.byte	0x1
	.byte	0xd6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"op2"
	.byte	0x1
	.byte	0xd6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"tem"
	.byte	0x1
	.byte	0xd8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF297
	.byte	0x1
	.byte	0xe7
	.long	0x2d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xd93
	.uleb128 0x20
	.long	.LASF0
	.byte	0x1
	.byte	0xe8
	.long	0x36f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.byte	0xe9
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF298
	.byte	0x1
	.byte	0xea
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.string	"op0"
	.byte	0x1
	.byte	0xeb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"op1"
	.byte	0x1
	.byte	0xeb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"tem"
	.byte	0x1
	.byte	0xed
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF299
	.byte	0x1
	.byte	0xfd
	.long	0x2d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xed0
	.uleb128 0x21
	.string	"x"
	.byte	0x1
	.byte	0xfe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.string	"old"
	.byte	0x1
	.byte	0xff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.string	"new"
	.byte	0x1
	.value	0x100
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x102
	.long	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF1
	.byte	0x1
	.value	0x103
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xe35
	.uleb128 0x26
	.long	.LASF294
	.byte	0x1
	.value	0x110
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"op"
	.byte	0x1
	.value	0x111
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x27
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xe79
	.uleb128 0x26
	.long	.LASF294
	.byte	0x1
	.value	0x11f
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.value	0x122
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.value	0x123
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x27
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xeae
	.uleb128 0x26
	.long	.LASF294
	.byte	0x1
	.value	0x132
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.string	"op0"
	.byte	0x1
	.value	0x133
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x28
	.string	"exp"
	.byte	0x1
	.value	0x143
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF307
	.byte	0x1
	.value	0x169
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xf71
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.value	0x16a
	.long	0x14e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x16c
	.long	0x9ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x16e
	.long	0xf71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF304
	.long	0xf77
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10741
	.uleb128 0x27
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xf50
	.uleb128 0x28
	.string	"u"
	.byte	0x1
	.value	0x171
	.long	0x9b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x175
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x9da
	.uleb128 0xf
	.long	0x181
	.uleb128 0x2c
	.long	.LASF301
	.byte	0x1
	.value	0x19b
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1184
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x19c
	.long	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x19d
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.string	"op"
	.byte	0x1
	.value	0x19e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF294
	.byte	0x1
	.value	0x19f
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x26
	.long	.LASF302
	.byte	0x1
	.value	0x1a1
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF303
	.byte	0x1
	.value	0x1a2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF304
	.long	0x1194
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10774
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1050
	.uleb128 0x28
	.string	"hv"
	.byte	0x1
	.value	0x1ad
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"lv"
	.byte	0x1
	.value	0x1ad
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x1ae
	.long	0x9ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1091
	.uleb128 0x28
	.string	"hv"
	.byte	0x1
	.value	0x1cf
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"lv"
	.byte	0x1
	.value	0x1cf
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x1d0
	.long	0x9ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x10c6
	.uleb128 0x26
	.long	.LASF305
	.byte	0x1
	.value	0x1f4
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x1f5
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x27
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1117
	.uleb128 0x28
	.string	"l1"
	.byte	0x1
	.value	0x253
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"lv"
	.byte	0x1
	.value	0x253
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"h1"
	.byte	0x1
	.value	0x254
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"hv"
	.byte	0x1
	.value	0x254
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x113c
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x2a3
	.long	0x9da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x1161
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x2b4
	.long	0x9da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x26
	.long	.LASF306
	.byte	0x1
	.value	0x2c4
	.long	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x17a
	.long	0x1194
	.uleb128 0xe
	.long	0x140
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	0x1184
	.uleb128 0x2a
	.long	.LASF308
	.byte	0x1
	.value	0x315
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1245
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.value	0x316
	.long	0x14e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"f0"
	.byte	0x1
	.value	0x318
	.long	0x9ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"f1"
	.byte	0x1
	.value	0x318
	.long	0x9ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF280
	.byte	0x1
	.value	0x318
	.long	0x9ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x319
	.long	0x1245
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x1225
	.uleb128 0x28
	.string	"u"
	.byte	0x1
	.value	0x31c
	.long	0x9b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x28
	.string	"u"
	.byte	0x1
	.value	0x31d
	.long	0x9b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa30
	.uleb128 0x2a
	.long	.LASF309
	.byte	0x1
	.value	0x357
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x12b5
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.value	0x358
	.long	0x14e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x35a
	.long	0x9ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x35b
	.long	0x12b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x28
	.string	"u"
	.byte	0x1
	.value	0x35e
	.long	0x9b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa7f
	.uleb128 0x2c
	.long	.LASF310
	.byte	0x1
	.value	0x369
	.long	0x2d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x15df
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x36a
	.long	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x36b
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x25
	.string	"op0"
	.byte	0x1
	.value	0x36c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x25
	.string	"op1"
	.byte	0x1
	.value	0x36c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x26
	.long	.LASF305
	.byte	0x1
	.value	0x36e
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x26
	.long	.LASF311
	.byte	0x1
	.value	0x36e
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x26
	.long	.LASF312
	.byte	0x1
	.value	0x36e
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x26
	.long	.LASF313
	.byte	0x1
	.value	0x36e
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x36f
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.long	.LASF302
	.byte	0x1
	.value	0x370
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x371
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.long	.LASF277
	.byte	0x1
	.value	0x372
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x26
	.long	.LASF278
	.byte	0x1
	.value	0x373
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2b
	.long	.LASF304
	.long	0x15ef
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10844
	.uleb128 0x27
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x13e5
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x38b
	.long	0xa30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x1454
	.uleb128 0x28
	.string	"l1"
	.byte	0x1
	.value	0x39f
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.string	"l2"
	.byte	0x1
	.value	0x39f
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x28
	.string	"lv"
	.byte	0x1
	.value	0x39f
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"h1"
	.byte	0x1
	.value	0x3a0
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x28
	.string	"h2"
	.byte	0x1
	.value	0x3a0
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.string	"hv"
	.byte	0x1
	.value	0x3a0
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x14ba
	.uleb128 0x26
	.long	.LASF314
	.byte	0x1
	.value	0x446
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.long	.LASF315
	.byte	0x1
	.value	0x446
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.string	"lhs"
	.byte	0x1
	.value	0x447
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.string	"rhs"
	.byte	0x1
	.value	0x447
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.long	.LASF316
	.byte	0x1
	.value	0x448
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.uleb128 0x27
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x14f0
	.uleb128 0x26
	.long	.LASF317
	.byte	0x1
	.value	0x498
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF318
	.byte	0x1
	.value	0x499
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x27
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x1556
	.uleb128 0x26
	.long	.LASF314
	.byte	0x1
	.value	0x4cb
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF315
	.byte	0x1
	.value	0x4cb
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.string	"lhs"
	.byte	0x1
	.value	0x4cc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"rhs"
	.byte	0x1
	.value	0x4cc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF316
	.byte	0x1
	.value	0x4cd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x27
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x157b
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x543
	.long	0xa7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x159f
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x58f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x29
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.value	0x5a7
	.long	0x9ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x28
	.string	"u"
	.byte	0x1
	.value	0x5a8
	.long	0x9b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x17a
	.long	0x15ef
	.uleb128 0xe
	.long	0x140
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.long	0x15df
	.uleb128 0x2e
	.long	.LASF320
	.byte	0x1
	.value	0x6cf
	.long	0x139
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1691
	.uleb128 0x25
	.string	"p1"
	.byte	0x1
	.value	0x6d0
	.long	0x1aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"p2"
	.byte	0x1
	.value	0x6d1
	.long	0x1aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"d1"
	.byte	0x1
	.value	0x6d3
	.long	0x1691
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"d2"
	.byte	0x1
	.value	0x6d4
	.long	0x1691
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x6da
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x28
	.string	"op1"
	.byte	0x1
	.value	0x6ea
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"op2"
	.byte	0x1
	.value	0x6eb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1697
	.uleb128 0xf
	.long	0xab4
	.uleb128 0x2e
	.long	.LASF321
	.byte	0x1
	.value	0x706
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x18ab
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x707
	.long	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x708
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x25
	.string	"op0"
	.byte	0x1
	.value	0x709
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x25
	.string	"op1"
	.byte	0x1
	.value	0x709
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2d
	.long	.LASF322
	.byte	0x1
	.value	0x70a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x28
	.string	"ops"
	.byte	0x1
	.value	0x70c
	.long	0x18ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF273
	.byte	0x1
	.value	0x70d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x70d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF323
	.byte	0x1
	.value	0x70e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x26
	.long	.LASF324
	.byte	0x1
	.value	0x70e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x26
	.long	.LASF325
	.byte	0x1
	.value	0x70e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.long	.LASF326
	.byte	0x1
	.value	0x70e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x26
	.long	.LASF327
	.byte	0x1
	.value	0x70f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.long	.LASF328
	.byte	0x1
	.value	0x70f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x26
	.long	.LASF329
	.byte	0x1
	.value	0x70f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x710
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x710
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x27
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x1810
	.uleb128 0x26
	.long	.LASF330
	.byte	0x1
	.value	0x723
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.long	.LASF331
	.byte	0x1
	.value	0x724
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x26
	.long	.LASF332
	.byte	0x1
	.value	0x725
	.long	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x27
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x1888
	.uleb128 0x28
	.string	"lhs"
	.byte	0x1
	.value	0x77c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x28
	.string	"rhs"
	.byte	0x1
	.value	0x77c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF333
	.byte	0x1
	.value	0x77d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x26
	.long	.LASF334
	.byte	0x1
	.value	0x77d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x29
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x26
	.long	.LASF335
	.byte	0x1
	.value	0x782
	.long	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x26
	.long	.LASF280
	.byte	0x1
	.value	0x7c5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xab4
	.long	0x18bb
	.uleb128 0xe
	.long	0x140
	.byte	0x7
	.byte	0
	.uleb128 0x2a
	.long	.LASF336
	.byte	0x1
	.value	0x800
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x195a
	.uleb128 0x2d
	.long	.LASF337
	.byte	0x1
	.value	0x801
	.long	0x14e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x803
	.long	0x195a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"d0"
	.byte	0x1
	.value	0x804
	.long	0x9ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"d1"
	.byte	0x1
	.value	0x804
	.long	0x9ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x193a
	.uleb128 0x28
	.string	"u"
	.byte	0x1
	.value	0x808
	.long	0x9b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x28
	.string	"u"
	.byte	0x1
	.value	0x809
	.long	0x9b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xadb
	.uleb128 0x2c
	.long	.LASF338
	.byte	0x1
	.value	0x81e
	.long	0x2d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b1d
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x81f
	.long	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x820
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x25
	.string	"op0"
	.byte	0x1
	.value	0x821
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.string	"op1"
	.byte	0x1
	.value	0x821
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF285
	.byte	0x1
	.value	0x823
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.long	.LASF286
	.byte	0x1
	.value	0x823
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x26
	.long	.LASF339
	.byte	0x1
	.value	0x823
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.long	.LASF287
	.byte	0x1
	.value	0x823
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x26
	.long	.LASF340
	.byte	0x1
	.value	0x823
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0x824
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF277
	.byte	0x1
	.value	0x825
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF278
	.byte	0x1
	.value	0x826
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.long	.LASF304
	.long	0x1b2d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11046
	.uleb128 0x27
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x1a7a
	.uleb128 0x26
	.long	.LASF300
	.byte	0x1
	.value	0x86c
	.long	0xadb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x29
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x26
	.long	.LASF302
	.byte	0x1
	.value	0x89b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x28
	.string	"l0s"
	.byte	0x1
	.value	0x89c
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"h0s"
	.byte	0x1
	.value	0x89c
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"l1s"
	.byte	0x1
	.value	0x89c
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"h1s"
	.byte	0x1
	.value	0x89c
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"l0u"
	.byte	0x1
	.value	0x89d
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.string	"h0u"
	.byte	0x1
	.value	0x89d
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"l1u"
	.byte	0x1
	.value	0x89d
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"h1u"
	.byte	0x1
	.value	0x89d
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x17a
	.long	0x1b2d
	.uleb128 0xe
	.long	0x140
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.long	0x1b1d
	.uleb128 0x2c
	.long	.LASF341
	.byte	0x1
	.value	0x937
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c79
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x938
	.long	0x36f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x939
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF296
	.byte	0x1
	.value	0x939
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.string	"op0"
	.byte	0x1
	.value	0x93a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"op1"
	.byte	0x1
	.value	0x93a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"op2"
	.byte	0x1
	.value	0x93a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF302
	.byte	0x1
	.value	0x93c
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.long	.LASF304
	.long	0x1c89
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11119
	.uleb128 0x27
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x1bfb
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x94d
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x26
	.long	.LASF298
	.byte	0x1
	.value	0x97d
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF342
	.byte	0x1
	.value	0x980
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.value	0x991
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.value	0x992
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x998
	.long	0x36f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x17a
	.long	0x1c89
	.uleb128 0xe
	.long	0x140
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.long	0x1c79
	.uleb128 0x2c
	.long	.LASF343
	.byte	0x1
	.value	0x9b0
	.long	0x2d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ee9
	.uleb128 0x2d
	.long	.LASF344
	.byte	0x1
	.value	0x9b3
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x25
	.string	"op"
	.byte	0x1
	.value	0x9b1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF345
	.byte	0x1
	.value	0x9b3
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF346
	.byte	0x1
	.value	0x9b2
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2b
	.long	.LASF304
	.long	0x1ef9
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11126
	.uleb128 0x27
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x1d90
	.uleb128 0x26
	.long	.LASF237
	.byte	0x1
	.value	0x9c8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.long	.LASF347
	.byte	0x1
	.value	0x9c8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x9c9
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x1d6d
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x9d2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x29
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0x9dc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x1e53
	.uleb128 0x26
	.long	.LASF348
	.byte	0x1
	.value	0xa21
	.long	0x1b1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF349
	.byte	0x1
	.value	0xa22
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xa23
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x1dfa
	.uleb128 0x26
	.long	.LASF350
	.byte	0x1
	.value	0xa2f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x27
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x1e20
	.uleb128 0x26
	.long	.LASF350
	.byte	0x1
	.value	0xa38
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x29
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x26
	.long	.LASF237
	.byte	0x1
	.value	0xa4c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.long	.LASF350
	.byte	0x1
	.value	0xa4d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x1e98
	.uleb128 0x26
	.long	.LASF351
	.byte	0x1
	.value	0xa80
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0xa89
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x26
	.long	.LASF352
	.byte	0x1
	.value	0xaa8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF347
	.byte	0x1
	.value	0xaa9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF349
	.byte	0x1
	.value	0xaaa
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x28
	.string	"res"
	.byte	0x1
	.value	0xaab
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x17a
	.long	0x1ef9
	.uleb128 0xe
	.long	0x140
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.long	0x1ee9
	.uleb128 0x2c
	.long	.LASF353
	.byte	0x1
	.value	0xaba
	.long	0x2d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f7e
	.uleb128 0x2d
	.long	.LASF344
	.byte	0x1
	.value	0xabd
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"op"
	.byte	0x1
	.value	0xabb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF345
	.byte	0x1
	.value	0xabd
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF346
	.byte	0x1
	.value	0xabc
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.value	0xabf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF304
	.long	0x1f7e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11156
	.byte	0
	.uleb128 0xf
	.long	0x181
	.uleb128 0x2c
	.long	.LASF354
	.byte	0x1
	.value	0xb02
	.long	0x2d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ff2
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xb03
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0xb05
	.long	0x36f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF1
	.byte	0x1
	.value	0xb06
	.long	0x1b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x28
	.string	"tem"
	.byte	0x1
	.value	0xb10
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF355
	.byte	0x6
	.byte	0x62
	.long	0x139
	.uleb128 0xd
	.long	0x326
	.long	0x200d
	.uleb128 0xe
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.long	.LASF88
	.byte	0x4
	.byte	0x34
	.long	0x2018
	.uleb128 0xf
	.long	0x1ffd
	.uleb128 0xd
	.long	0x15e
	.long	0x202d
	.uleb128 0xe
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.long	.LASF356
	.byte	0x4
	.byte	0x50
	.long	0x2038
	.uleb128 0xf
	.long	0x201d
	.uleb128 0x2f
	.long	.LASF357
	.byte	0x4
	.byte	0x55
	.long	0x2048
	.uleb128 0xf
	.long	0x201d
	.uleb128 0xd
	.long	0x165
	.long	0x205d
	.uleb128 0xe
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.long	.LASF358
	.byte	0x4
	.byte	0x60
	.long	0x2068
	.uleb128 0xf
	.long	0x204d
	.uleb128 0xd
	.long	0x157
	.long	0x207d
	.uleb128 0xe
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2f
	.long	.LASF359
	.byte	0x4
	.byte	0x6a
	.long	0x2088
	.uleb128 0xf
	.long	0x206d
	.uleb128 0xd
	.long	0x17a
	.long	0x209d
	.uleb128 0xe
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x2f
	.long	.LASF360
	.byte	0x2
	.byte	0x3f
	.long	0x20a8
	.uleb128 0xf
	.long	0x208d
	.uleb128 0x30
	.long	.LASF361
	.byte	0x2
	.value	0x4bb
	.long	0x139
	.uleb128 0xd
	.long	0x2d
	.long	0x20c9
	.uleb128 0xe
	.long	0x140
	.byte	0x80
	.byte	0
	.uleb128 0x30
	.long	.LASF362
	.byte	0x2
	.value	0x611
	.long	0x20b9
	.uleb128 0x30
	.long	.LASF363
	.byte	0x2
	.value	0x617
	.long	0x2d
	.uleb128 0xd
	.long	0x2d
	.long	0x20f7
	.uleb128 0xe
	.long	0x140
	.byte	0x2
	.uleb128 0xe
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x30
	.long	.LASF364
	.byte	0x2
	.value	0x619
	.long	0x20e1
	.uleb128 0xd
	.long	0x2d
	.long	0x2113
	.uleb128 0xe
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x30
	.long	.LASF365
	.byte	0x2
	.value	0x652
	.long	0x2103
	.uleb128 0x30
	.long	.LASF366
	.byte	0x2
	.value	0x6d2
	.long	0x139
	.uleb128 0xd
	.long	0x17a
	.long	0x213b
	.uleb128 0xe
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x30
	.long	.LASF367
	.byte	0x7
	.value	0x18b
	.long	0x212b
	.uleb128 0x30
	.long	.LASF368
	.byte	0x8
	.value	0x15a
	.long	0x139
	.uleb128 0x30
	.long	.LASF369
	.byte	0x8
	.value	0x244
	.long	0x139
	.uleb128 0x30
	.long	.LASF370
	.byte	0x5
	.value	0x1b5
	.long	0x9ad
	.uleb128 0x30
	.long	.LASF371
	.byte	0x5
	.value	0x1b6
	.long	0x9ad
	.uleb128 0x30
	.long	.LASF372
	.byte	0x5
	.value	0x1b7
	.long	0x9ad
	.uleb128 0x30
	.long	.LASF373
	.byte	0x5
	.value	0x1b8
	.long	0x9ad
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF332:
	.string	"this_code"
.LASF149:
	.string	"TRAP_IF"
.LASF120:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF6:
	.string	"in_struct"
.LASF220:
	.string	"US_PLUS"
.LASF91:
	.string	"MODE_FLOAT"
.LASF240:
	.string	"mem_attrs"
.LASF180:
	.string	"UMIN"
.LASF242:
	.string	"rtint"
.LASF85:
	.string	"CCFPUmode"
.LASF198:
	.string	"TRUNCATE"
.LASF339:
	.string	"op0ltu"
.LASF128:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF65:
	.string	"V4DImode"
.LASF312:
	.string	"arg0s"
.LASF168:
	.string	"PLUS"
.LASF163:
	.string	"ADDRESSOF"
.LASF295:
	.string	"simplify_gen_ternary"
.LASF281:
	.string	"is_2"
.LASF9:
	.string	"frame_related"
.LASF304:
	.string	"__FUNCTION__"
.LASF77:
	.string	"V16SFmode"
.LASF157:
	.string	"SCRATCH"
.LASF66:
	.string	"V8QImode"
.LASF301:
	.string	"simplify_unary_operation"
.LASF133:
	.string	"CALL_INSN"
.LASF147:
	.string	"CALL"
.LASF98:
	.string	"MAX_MODE_CLASS"
.LASF164:
	.string	"QUEUED"
.LASF222:
	.string	"US_MINUS"
.LASF169:
	.string	"MINUS"
.LASF74:
	.string	"V4DFmode"
.LASF64:
	.string	"V4SImode"
.LASF363:
	.string	"const_true_rtx"
.LASF143:
	.string	"ADDR_VEC"
.LASF201:
	.string	"FLOAT"
.LASF277:
	.string	"trueop0"
.LASF313:
	.string	"arg1s"
.LASF145:
	.string	"PREFETCH"
.LASF173:
	.string	"ASHIFT"
.LASF297:
	.string	"simplify_gen_relational"
.LASF369:
	.string	"frame_pointer_needed"
.LASF286:
	.string	"op0lt"
.LASF366:
	.string	"reload_completed"
.LASF73:
	.string	"V4SFmode"
.LASF153:
	.string	"CONST_VECTOR"
.LASF284:
	.string	"cfc_args"
.LASF352:
	.string	"is_realpart"
.LASF1:
	.string	"mode"
.LASF124:
	.string	"ADDRESS"
.LASF131:
	.string	"INSN"
.LASF111:
	.string	"MATCH_INSN"
.LASF361:
	.string	"rtx_equal_function_value_matters"
.LASF39:
	.string	"QFmode"
.LASF190:
	.string	"UNEQ"
.LASF101:
	.string	"INCLUDE"
.LASF211:
	.string	"RANGE_VAR"
.LASF309:
	.string	"simplify_binary_is2orm1"
.LASF118:
	.string	"DEFINE_EXPAND"
.LASF106:
	.string	"MATCH_DUP"
.LASF234:
	.string	"addr_diff_vec_flags"
.LASF360:
	.string	"rtx_class"
.LASF274:
	.string	"want_integer"
.LASF331:
	.string	"this_neg"
.LASF310:
	.string	"simplify_binary_operation"
.LASF268:
	.string	"realvaluetype"
.LASF55:
	.string	"CDImode"
.LASF376:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF84:
	.string	"CCFPmode"
.LASF265:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF206:
	.string	"ZERO_EXTRACT"
.LASF314:
	.string	"coeff0"
.LASF167:
	.string	"COMPARE"
.LASF377:
	.string	"tree_node"
.LASF81:
	.string	"CCGOCmode"
.LASF232:
	.string	"offset_unsigned"
.LASF329:
	.string	"changed"
.LASF325:
	.string	"input_consts"
.LASF333:
	.string	"lneg"
.LASF102:
	.string	"EXPR_LIST"
.LASF139:
	.string	"ASM_INPUT"
.LASF273:
	.string	"result"
.LASF121:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF115:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF25:
	.string	"long long unsigned int"
.LASF4:
	.string	"unchanging"
.LASF127:
	.string	"SET_ATTR"
.LASF54:
	.string	"CSImode"
.LASF347:
	.string	"part"
.LASF322:
	.string	"force"
.LASF371:
	.string	"dconst1"
.LASF372:
	.string	"dconst2"
.LASF86:
	.string	"MAX_MACHINE_MODE"
.LASF315:
	.string	"coeff1"
.LASF226:
	.string	"min_align"
.LASF224:
	.string	"US_TRUNCATE"
.LASF191:
	.string	"UNGE"
.LASF231:
	.string	"max_after_base"
.LASF208:
	.string	"LO_SUM"
.LASF30:
	.string	"HImode"
.LASF351:
	.string	"final_regno"
.LASF316:
	.string	"had_mult"
.LASF358:
	.string	"mode_bitsize"
.LASF108:
	.string	"MATCH_PARALLEL"
.LASF144:
	.string	"ADDR_DIFF_VEC"
.LASF135:
	.string	"CODE_LABEL"
.LASF223:
	.string	"SS_TRUNCATE"
.LASF236:
	.string	"expr"
.LASF229:
	.string	"max_after_vec"
.LASF7:
	.string	"used"
.LASF154:
	.string	"CONST_STRING"
.LASF35:
	.string	"PQImode"
.LASF225:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF258:
	.string	"GR_STACK_POINTER"
.LASF283:
	.string	"simplify_plus_minus_op_data"
.LASF18:
	.string	"long int"
.LASF221:
	.string	"SS_MINUS"
.LASF302:
	.string	"width"
.LASF21:
	.string	"short unsigned int"
.LASF40:
	.string	"HFmode"
.LASF237:
	.string	"offset"
.LASF15:
	.string	"tree"
.LASF255:
	.string	"global_rtl_index"
.LASF76:
	.string	"V8DFmode"
.LASF138:
	.string	"PARALLEL"
.LASF68:
	.string	"V8SImode"
.LASF275:
	.string	"_Bool"
.LASF343:
	.string	"simplify_subreg"
.LASF70:
	.string	"V16QImode"
.LASF179:
	.string	"SMAX"
.LASF199:
	.string	"FLOAT_EXTEND"
.LASF3:
	.string	"call"
.LASF59:
	.string	"V2HImode"
.LASF105:
	.string	"MATCH_SCRATCH"
.LASF246:
	.string	"rt_addr_diff_vec_flags"
.LASF13:
	.string	"num_elem"
.LASF151:
	.string	"CONST_INT"
.LASF0:
	.string	"code"
.LASF47:
	.string	"HCmode"
.LASF244:
	.string	"rtstr"
.LASF299:
	.string	"simplify_replace_rtx"
.LASF75:
	.string	"V8SFmode"
.LASF2:
	.string	"jump"
.LASF113:
	.string	"DEFINE_PEEPHOLE"
.LASF320:
	.string	"simplify_plus_minus_op_data_cmp"
.LASF172:
	.string	"UMOD"
.LASF174:
	.string	"ROTATE"
.LASF14:
	.string	"elem"
.LASF24:
	.string	"char"
.LASF212:
	.string	"RANGE_LIVE"
.LASF8:
	.string	"integrated"
.LASF335:
	.string	"ncode"
.LASF245:
	.string	"rttype"
.LASF326:
	.string	"n_consts"
.LASF38:
	.string	"PDImode"
.LASF34:
	.string	"OImode"
.LASF375:
	.string	"simplify-rtx.c"
.LASF373:
	.string	"dconstm1"
.LASF345:
	.string	"innermode"
.LASF337:
	.string	"data"
.LASF26:
	.string	"long long int"
.LASF250:
	.string	"rtmem"
.LASF365:
	.string	"global_rtl"
.LASF82:
	.string	"CCNOmode"
.LASF204:
	.string	"SQRT"
.LASF354:
	.string	"simplify_rtx"
.LASF171:
	.string	"UDIV"
.LASF192:
	.string	"UNGT"
.LASF80:
	.string	"CCGCmode"
.LASF227:
	.string	"base_after_vec"
.LASF278:
	.string	"trueop1"
.LASF356:
	.string	"mode_size"
.LASF195:
	.string	"LTGT"
.LASF340:
	.string	"op1ltu"
.LASF205:
	.string	"SIGN_EXTRACT"
.LASF37:
	.string	"PSImode"
.LASF189:
	.string	"ORDERED"
.LASF63:
	.string	"V4HImode"
.LASF298:
	.string	"cmp_mode"
.LASF136:
	.string	"NOTE"
.LASF122:
	.string	"DEFINE_COND_EXEC"
.LASF161:
	.string	"LABEL_REF"
.LASF257:
	.string	"GR_CC0"
.LASF44:
	.string	"XFmode"
.LASF185:
	.string	"POST_INC"
.LASF94:
	.string	"MODE_COMPLEX_INT"
.LASF104:
	.string	"MATCH_OPERAND"
.LASF287:
	.string	"op1lt"
.LASF256:
	.string	"GR_PC"
.LASF188:
	.string	"UNORDERED"
.LASF33:
	.string	"TImode"
.LASF117:
	.string	"DEFINE_COMBINE"
.LASF114:
	.string	"DEFINE_SPLIT"
.LASF132:
	.string	"JUMP_INSN"
.LASF292:
	.string	"cmode"
.LASF243:
	.string	"rtuint"
.LASF12:
	.string	"rtvec_def"
.LASF182:
	.string	"PRE_DEC"
.LASF233:
	.string	"scale"
.LASF53:
	.string	"CHImode"
.LASF214:
	.string	"CALL_PLACEHOLDER"
.LASF272:
	.string	"operand"
.LASF213:
	.string	"CONSTANT_P_RTX"
.LASF162:
	.string	"SYMBOL_REF"
.LASF328:
	.string	"negate"
.LASF306:
	.string	"reversed"
.LASF311:
	.string	"arg1"
.LASF28:
	.string	"BImode"
.LASF238:
	.string	"size"
.LASF93:
	.string	"MODE_CC"
.LASF10:
	.string	"rtvec"
.LASF90:
	.string	"MODE_INT"
.LASF45:
	.string	"TFmode"
.LASF158:
	.string	"SUBREG"
.LASF165:
	.string	"IF_THEN_ELSE"
.LASF89:
	.string	"MODE_RANDOM"
.LASF235:
	.string	"alias"
.LASF282:
	.string	"is_m1"
.LASF97:
	.string	"MODE_VECTOR_FLOAT"
.LASF270:
	.string	"real_extract"
.LASF210:
	.string	"RANGE_REG"
.LASF88:
	.string	"mode_class"
.LASF130:
	.string	"ATTR_FLAG"
.LASF11:
	.string	"rtx_def"
.LASF262:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF359:
	.string	"mode_mask_array"
.LASF193:
	.string	"UNLE"
.LASF183:
	.string	"PRE_INC"
.LASF41:
	.string	"TQFmode"
.LASF51:
	.string	"TCmode"
.LASF194:
	.string	"UNLT"
.LASF109:
	.string	"MATCH_OP_DUP"
.LASF300:
	.string	"args"
.LASF364:
	.string	"const_tiny_rtx"
.LASF367:
	.string	"fixed_regs"
.LASF355:
	.string	"target_flags"
.LASF338:
	.string	"simplify_relational_operation"
.LASF209:
	.string	"RANGE_INFO"
.LASF160:
	.string	"CONCAT"
.LASF67:
	.string	"V8HImode"
.LASF267:
	.string	"GR_MAX"
.LASF83:
	.string	"CCZmode"
.LASF368:
	.string	"flag_unsafe_math_optimizations"
.LASF119:
	.string	"DEFINE_DELAY"
.LASF110:
	.string	"MATCH_PAR_DUP"
.LASF216:
	.string	"VEC_SELECT"
.LASF294:
	.string	"op_mode"
.LASF196:
	.string	"SIGN_EXTEND"
.LASF218:
	.string	"VEC_DUPLICATE"
.LASF374:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF140:
	.string	"ASM_OPERANDS"
.LASF23:
	.string	"short int"
.LASF357:
	.string	"mode_unit_size"
.LASF317:
	.string	"xop00"
.LASF50:
	.string	"XCmode"
.LASF175:
	.string	"ASHIFTRT"
.LASF241:
	.string	"rtwint"
.LASF269:
	.string	"rtunion_def"
.LASF230:
	.string	"min_after_base"
.LASF125:
	.string	"DEFINE_ATTR"
.LASF148:
	.string	"RETURN"
.LASF217:
	.string	"VEC_CONCAT"
.LASF290:
	.string	"avoid_constant_pool_reference"
.LASF176:
	.string	"LSHIFTRT"
.LASF342:
	.string	"temp"
.LASF362:
	.string	"const_int_rtx"
.LASF29:
	.string	"QImode"
.LASF348:
	.string	"innermostmode"
.LASF336:
	.string	"check_fold_consts"
.LASF123:
	.string	"SEQUENCE"
.LASF308:
	.string	"simplify_binary_real"
.LASF186:
	.string	"PRE_MODIFY"
.LASF78:
	.string	"BLKmode"
.LASF334:
	.string	"rneg"
.LASF22:
	.string	"signed char"
.LASF187:
	.string	"POST_MODIFY"
.LASF307:
	.string	"simplify_unary_real"
.LASF166:
	.string	"COND"
.LASF349:
	.string	"final_offset"
.LASF318:
	.string	"xop10"
.LASF266:
	.string	"GR_VIRTUAL_CFA"
.LASF79:
	.string	"CCmode"
.LASF146:
	.string	"CLOBBER"
.LASF17:
	.string	"unsigned int"
.LASF52:
	.string	"CQImode"
.LASF253:
	.string	"basic_block_def"
.LASF129:
	.string	"EQ_ATTR"
.LASF293:
	.string	"simplify_gen_unary"
.LASF150:
	.string	"RESX"
.LASF178:
	.string	"SMIN"
.LASF58:
	.string	"V2QImode"
.LASF16:
	.string	"sizetype"
.LASF103:
	.string	"INSN_LIST"
.LASF19:
	.string	"long unsigned int"
.LASF260:
	.string	"GR_HARD_FRAME_POINTER"
.LASF207:
	.string	"HIGH"
.LASF57:
	.string	"COImode"
.LASF319:
	.string	"neg_const_int"
.LASF46:
	.string	"QCmode"
.LASF155:
	.string	"CONST"
.LASF247:
	.string	"rt_cselib"
.LASF27:
	.string	"VOIDmode"
.LASF346:
	.string	"byte"
.LASF202:
	.string	"UNSIGNED_FLOAT"
.LASF263:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF353:
	.string	"simplify_gen_subreg"
.LASF152:
	.string	"CONST_DOUBLE"
.LASF285:
	.string	"equal"
.LASF5:
	.string	"volatil"
.LASF289:
	.string	"simplify_gen_binary"
.LASF137:
	.string	"COND_EXEC"
.LASF20:
	.string	"unsigned char"
.LASF32:
	.string	"DImode"
.LASF344:
	.string	"outermode"
.LASF321:
	.string	"simplify_plus_minus"
.LASF288:
	.string	"unordered"
.LASF252:
	.string	"bitmap_head_def"
.LASF116:
	.string	"DEFINE_PEEPHOLE2"
.LASF370:
	.string	"dconst0"
.LASF177:
	.string	"ROTATERT"
.LASF215:
	.string	"VEC_MERGE"
.LASF327:
	.string	"first"
.LASF251:
	.string	"cselib_val_struct"
.LASF112:
	.string	"DEFINE_INSN"
.LASF142:
	.string	"UNSPEC_VOLATILE"
.LASF291:
	.string	"addr"
.LASF228:
	.string	"min_after_vec"
.LASF36:
	.string	"PHImode"
.LASF181:
	.string	"UMAX"
.LASF43:
	.string	"DFmode"
.LASF31:
	.string	"SImode"
.LASF219:
	.string	"SS_PLUS"
.LASF159:
	.string	"STRICT_LOW_PART"
.LASF56:
	.string	"CTImode"
.LASF100:
	.string	"UNKNOWN"
.LASF350:
	.string	"difference"
.LASF341:
	.string	"simplify_ternary_operation"
.LASF200:
	.string	"FLOAT_TRUNCATE"
.LASF61:
	.string	"V2DImode"
.LASF62:
	.string	"V4QImode"
.LASF248:
	.string	"rtbit"
.LASF323:
	.string	"n_ops"
.LASF271:
	.string	"simplify_unary_real_args"
.LASF184:
	.string	"POST_DEC"
.LASF249:
	.string	"rttree"
.LASF49:
	.string	"DCmode"
.LASF42:
	.string	"SFmode"
.LASF92:
	.string	"MODE_PARTIAL_INT"
.LASF330:
	.string	"this_op"
.LASF305:
	.string	"arg0"
.LASF254:
	.string	"rtunion"
.LASF99:
	.string	"rtx_code"
.LASF276:
	.string	"simplify_binary_real_args"
.LASF141:
	.string	"UNSPEC"
.LASF156:
	.string	"VALUE"
.LASF72:
	.string	"V2DFmode"
.LASF279:
	.string	"simplify_binary_is2orm1_args"
.LASF95:
	.string	"MODE_COMPLEX_FLOAT"
.LASF60:
	.string	"V2SImode"
.LASF259:
	.string	"GR_FRAME_POINTER"
.LASF107:
	.string	"MATCH_OPERATOR"
.LASF264:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF203:
	.string	"UNSIGNED_FIX"
.LASF239:
	.string	"align"
.LASF197:
	.string	"ZERO_EXTEND"
.LASF48:
	.string	"SCmode"
.LASF170:
	.string	"MULT"
.LASF69:
	.string	"V8DImode"
.LASF87:
	.string	"machine_mode"
.LASF126:
	.string	"ATTR"
.LASF280:
	.string	"value"
.LASF303:
	.string	"trueop"
.LASF134:
	.string	"BARRIER"
.LASF324:
	.string	"input_ops"
.LASF296:
	.string	"op0_mode"
.LASF96:
	.string	"MODE_VECTOR_INT"
.LASF261:
	.string	"GR_ARG_POINTER"
.LASF71:
	.string	"V2SFmode"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
