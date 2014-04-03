	.file	"fold-const.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 fold-const.c -mtune=generic -march=x86-64 -g
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
	.type	encode, @function
encode:
.LFB2:
	.file 1 "fold-const.c"
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# words, words
	movq	%rsi, -16(%rbp)	# low, low
	movq	%rdx, -24(%rbp)	# hi, hi
	.loc 1 150 0
	movq	-16(%rbp), %rax	# low, low.0
	movl	%eax, %edx	# low.0, D.20766
	movq	-8(%rbp), %rax	# words, tmp70
	movq	%rdx, (%rax)	# D.20766, *words_4(D)
	.loc 1 151 0
	movq	-8(%rbp), %rax	# words, tmp71
	leaq	8(%rax), %rdx	#, D.20767
	movq	-16(%rbp), %rax	# low, tmp72
	shrq	$32, %rax	#, D.20768
	movq	%rax, (%rdx)	# D.20766, *_5
	.loc 1 152 0
	movq	-8(%rbp), %rax	# words, tmp73
	leaq	16(%rax), %rdx	#, D.20767
	movq	-24(%rbp), %rax	# hi, tmp74
	movl	%eax, %eax	# tmp74, D.20766
	movq	%rax, (%rdx)	# D.20766, *_8
	.loc 1 153 0
	movq	-8(%rbp), %rax	# words, tmp75
	leaq	24(%rax), %rdx	#, D.20767
	movq	-24(%rbp), %rax	# hi, hi.1
	shrq	$32, %rax	#, D.20768
	movq	%rax, (%rdx)	# D.20766, *_11
	.loc 1 154 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	encode, .-encode
	.type	decode, @function
decode:
.LFB3:
	.loc 1 165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# words, words
	movq	%rsi, -16(%rbp)	# low, low
	movq	%rdx, -24(%rbp)	# hi, hi
	.loc 1 166 0
	movq	-8(%rbp), %rax	# words, tmp75
	movq	(%rax), %rax	# *words_1(D), D.20769
	movq	-8(%rbp), %rdx	# words, tmp76
	addq	$8, %rdx	#, D.20771
	movq	(%rdx), %rdx	# *_4, D.20769
	salq	$32, %rdx	#, D.20770
	addq	%rax, %rdx	# D.20770, D.20770
	movq	-16(%rbp), %rax	# low, tmp77
	movq	%rdx, (%rax)	# D.20770, *low_9(D)
	.loc 1 167 0
	movq	-8(%rbp), %rax	# words, tmp78
	addq	$16, %rax	#, D.20771
	movq	(%rax), %rax	# *_10, D.20769
	movq	-8(%rbp), %rdx	# words, tmp79
	addq	$24, %rdx	#, D.20771
	movq	(%rdx), %rdx	# *_13, D.20769
	salq	$32, %rdx	#, D.20770
	addq	%rdx, %rax	# D.20770, D.20770
	movq	%rax, %rdx	# D.20770, D.20769
	movq	-24(%rbp), %rax	# hi, tmp80
	movq	%rdx, (%rax)	# D.20769, *hi_19(D)
	.loc 1 168 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	decode, .-decode
	.globl	force_fit_type
	.type	force_fit_type, @function
force_fit_type:
.LFB4:
	.loc 1 184 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# t, t
	movl	%esi, -44(%rbp)	# overflow, overflow
	.loc 1 189 0
	movq	-40(%rbp), %rax	# t, tmp120
	movzbl	16(%rax), %eax	# t_5(D)->common.code, D.20773
	cmpb	$26, %al	#, D.20773
	jne	.L4	#,
	.loc 1 195 0
	movl	-44(%rbp), %eax	# overflow, D.20772
	jmp	.L5	#
.L4:
	.loc 1 198 0
	movq	-40(%rbp), %rax	# t, tmp121
	movzbl	16(%rax), %eax	# t_5(D)->common.code, D.20773
	cmpb	$25, %al	#, D.20773
	je	.L6	#,
	.loc 1 199 0
	movl	-44(%rbp), %eax	# overflow, D.20772
	jmp	.L5	#
.L6:
	.loc 1 201 0
	movq	-40(%rbp), %rax	# t, tmp122
	movq	32(%rax), %rax	# t_5(D)->int_cst.int_cst.low, tmp123
	movq	%rax, -16(%rbp)	# tmp123, low
	.loc 1 202 0
	movq	-40(%rbp), %rax	# t, tmp124
	movq	40(%rax), %rax	# t_5(D)->int_cst.int_cst.high, tmp125
	movq	%rax, -8(%rbp)	# tmp125, high
	.loc 1 204 0
	movq	-40(%rbp), %rax	# t, tmp126
	movq	8(%rax), %rax	# t_5(D)->common.type, D.20774
	movzbl	16(%rax), %eax	# _13->common.code, D.20773
	cmpb	$13, %al	#, D.20773
	je	.L7	#,
	.loc 1 204 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# t, tmp127
	movq	8(%rax), %rax	# t_5(D)->common.type, D.20774
	movzbl	16(%rax), %eax	# _15->common.code, D.20773
	cmpb	$15, %al	#, D.20773
	jne	.L8	#,
.L7:
	.loc 1 205 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.3
	andl	$33554432, %eax	#, D.20772
	testl	%eax, %eax	# D.20772
	je	.L9	#,
	.loc 1 205 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.2
	jmp	.L10	#
.L9:
	.loc 1 205 0 discriminator 2
	movl	$32, %eax	#, iftmp.2
.L10:
	.loc 1 205 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.2, prec
	jmp	.L11	#
.L8:
	.loc 1 207 0 is_stmt 1
	movq	-40(%rbp), %rax	# t, tmp128
	movq	8(%rax), %rax	# t_5(D)->common.type, D.20774
	movzwl	60(%rax), %eax	# *_17, tmp131
	andw	$511, %ax	#, D.20775
	movzwl	%ax, %eax	# D.20775, tmp132
	movl	%eax, -20(%rbp)	# tmp132, prec
.L11:
	.loc 1 211 0
	cmpl	$128, -20(%rbp)	#, prec
	je	.L12	#,
	.loc 1 213 0
	cmpl	$64, -20(%rbp)	#, prec
	jbe	.L13	#,
	.loc 1 215 0
	movq	-40(%rbp), %rax	# t, tmp133
	movq	40(%rax), %rdx	# t_5(D)->int_cst.int_cst.high, D.20776
	movl	-20(%rbp), %eax	# prec, tmp134
	subl	$64, %eax	#, D.20777
	movq	$-1, %rsi	#, tmp135
	movl	%eax, %ecx	# D.20772, tmp161
	salq	%cl, %rsi	# tmp161, D.20776
	movq	%rsi, %rax	# D.20776, D.20776
	notq	%rax	# D.20776
	andq	%rax, %rdx	# D.20776, D.20776
	movq	-40(%rbp), %rax	# t, tmp136
	movq	%rdx, 40(%rax)	# D.20776, t_5(D)->int_cst.int_cst.high
	jmp	.L12	#
.L13:
	.loc 1 218 0
	movq	-40(%rbp), %rax	# t, tmp137
	movq	$0, 40(%rax)	#, t_5(D)->int_cst.int_cst.high
	.loc 1 219 0
	cmpl	$63, -20(%rbp)	#, prec
	ja	.L12	#,
	.loc 1 220 0
	movq	-40(%rbp), %rax	# t, tmp138
	movq	32(%rax), %rdx	# t_5(D)->int_cst.int_cst.low, D.20778
	movl	-20(%rbp), %eax	# prec, prec.4
	movq	$-1, %rsi	#, tmp139
	movl	%eax, %ecx	# prec.4, tmp163
	salq	%cl, %rsi	# tmp163, D.20778
	movq	%rsi, %rax	# D.20778, D.20778
	notq	%rax	# D.20778
	andq	%rax, %rdx	# D.20778, D.20778
	movq	-40(%rbp), %rax	# t, tmp140
	movq	%rdx, 32(%rax)	# D.20778, t_5(D)->int_cst.int_cst.low
.L12:
	.loc 1 225 0
	movq	-40(%rbp), %rax	# t, tmp141
	movq	8(%rax), %rax	# t_5(D)->common.type, D.20774
	movzbl	17(%rax), %eax	# *_36, D.20773
	andl	$32, %eax	#, D.20773
	testb	%al, %al	# D.20773
	je	.L14	#,
	.loc 1 226 0
	movq	-40(%rbp), %rax	# t, tmp142
	movq	8(%rax), %rax	# t_5(D)->common.type, D.20774
	movzbl	16(%rax), %eax	# _39->common.code, D.20773
	cmpb	$6, %al	#, D.20773
	jne	.L15	#,
	.loc 1 227 0 discriminator 1
	movq	-40(%rbp), %rax	# t, tmp143
	movq	8(%rax), %rax	# t_5(D)->common.type, D.20774
	movzbl	62(%rax), %eax	# *_41, D.20773
	andl	$2, %eax	#, D.20773
	.loc 1 226 0 discriminator 1
	testb	%al, %al	# D.20773
	jne	.L14	#,
.L15:
	.loc 1 228 0
	movl	-44(%rbp), %eax	# overflow, D.20772
	jmp	.L5	#
.L14:
	.loc 1 231 0
	cmpl	$128, -20(%rbp)	#, prec
	je	.L16	#,
	.loc 1 232 0
	cmpl	$64, -20(%rbp)	#, prec
	jbe	.L17	#,
	.loc 1 233 0
	movq	-40(%rbp), %rax	# t, tmp144
	movq	40(%rax), %rdx	# t_5(D)->int_cst.int_cst.high, D.20776
	.loc 1 235 0
	movl	-20(%rbp), %eax	# prec, tmp145
	subl	$65, %eax	#, D.20777
	.loc 1 233 0
	movl	%eax, %ecx	# D.20772, tmp165
	sarq	%cl, %rdx	# tmp165, D.20776
	movq	%rdx, %rax	# D.20776, D.20776
	andl	$1, %eax	#, D.20776
	.loc 1 232 0
	testq	%rax, %rax	# D.20776
	setne	%al	#, iftmp.5
	jmp	.L18	#
.L17:
	.loc 1 236 0 discriminator 1
	movq	-40(%rbp), %rax	# t, tmp146
	movq	32(%rax), %rdx	# t_5(D)->int_cst.int_cst.low, D.20778
	.loc 1 237 0 discriminator 1
	movl	-20(%rbp), %eax	# prec, tmp147
	subl	$1, %eax	#, D.20777
	.loc 1 236 0 discriminator 1
	movl	%eax, %ecx	# D.20772, tmp167
	shrq	%cl, %rdx	# tmp167, D.20778
	movq	%rdx, %rax	# D.20778, D.20778
	andl	$1, %eax	#, D.20778
	.loc 1 232 0 discriminator 1
	testq	%rax, %rax	# D.20778
	setne	%al	#, iftmp.5
.L18:
	.loc 1 232 0 is_stmt 0 discriminator 2
	testb	%al, %al	# iftmp.5
	je	.L16	#,
	.loc 1 241 0 is_stmt 1
	cmpl	$64, -20(%rbp)	#, prec
	jbe	.L19	#,
	.loc 1 243 0
	movq	-40(%rbp), %rax	# t, tmp148
	movq	40(%rax), %rdx	# t_5(D)->int_cst.int_cst.high, D.20776
	movl	-20(%rbp), %eax	# prec, tmp149
	subl	$64, %eax	#, D.20777
	movq	$-1, %rsi	#, tmp150
	movl	%eax, %ecx	# D.20772, tmp169
	salq	%cl, %rsi	# tmp169, D.20776
	movq	%rsi, %rax	# D.20776, D.20776
	orq	%rax, %rdx	# D.20776, D.20776
	movq	-40(%rbp), %rax	# t, tmp151
	movq	%rdx, 40(%rax)	# D.20776, t_5(D)->int_cst.int_cst.high
	jmp	.L16	#
.L19:
	.loc 1 246 0
	movq	-40(%rbp), %rax	# t, tmp152
	movq	$-1, 40(%rax)	#, t_5(D)->int_cst.int_cst.high
	.loc 1 247 0
	cmpl	$63, -20(%rbp)	#, prec
	ja	.L16	#,
	.loc 1 248 0
	movq	-40(%rbp), %rax	# t, tmp153
	movq	32(%rax), %rdx	# t_5(D)->int_cst.int_cst.low, D.20778
	movl	-20(%rbp), %eax	# prec, prec.6
	movq	$-1, %rsi	#, tmp154
	movl	%eax, %ecx	# prec.6, tmp171
	salq	%cl, %rsi	# tmp171, D.20778
	movq	%rsi, %rax	# D.20778, D.20778
	orq	%rax, %rdx	# D.20778, D.20778
	movq	-40(%rbp), %rax	# t, tmp155
	movq	%rdx, 32(%rax)	# D.20778, t_5(D)->int_cst.int_cst.low
.L16:
	.loc 1 254 0
	movl	-44(%rbp), %eax	# overflow, tmp156
	movslq	%eax, %rdx	# tmp156, D.20778
	movq	-40(%rbp), %rax	# t, tmp157
	movq	32(%rax), %rax	# t_5(D)->int_cst.int_cst.low, D.20778
	xorq	-16(%rbp), %rax	# low, D.20778
	orq	%rax, %rdx	# D.20778, D.20778
	movq	-40(%rbp), %rax	# t, tmp158
	movq	40(%rax), %rax	# t_5(D)->int_cst.int_cst.high, D.20776
	xorq	-8(%rbp), %rax	# high, D.20776
	orq	%rdx, %rax	# D.20778, D.20778
	.loc 1 255 0
	testq	%rax, %rax	# D.20778
	setne	%al	#, D.20779
	.loc 1 253 0
	movzbl	%al, %eax	# D.20779, D.20772
.L5:
	.loc 1 256 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	force_fit_type, .-force_fit_type
	.globl	add_double
	.type	add_double, @function
add_double:
.LFB5:
	.loc 1 269 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# l1, l1
	movq	%rsi, -32(%rbp)	# h1, h1
	movq	%rdx, -40(%rbp)	# l2, l2
	movq	%rcx, -48(%rbp)	# h2, h2
	movq	%r8, -56(%rbp)	# lv, lv
	movq	%r9, -64(%rbp)	# hv, hv
	.loc 1 273 0
	movq	-40(%rbp), %rax	# l2, tmp73
	movq	-24(%rbp), %rdx	# l1, tmp74
	addq	%rdx, %rax	# tmp74, tmp72
	movq	%rax, -16(%rbp)	# tmp72, l
	.loc 1 274 0
	movq	-48(%rbp), %rax	# h2, tmp75
	movq	-32(%rbp), %rdx	# h1, tmp76
	addq	%rax, %rdx	# tmp75, D.20780
	movq	-16(%rbp), %rax	# l, tmp77
	cmpq	-24(%rbp), %rax	# l1, tmp77
	setb	%al	#, D.20781
	movzbl	%al, %eax	# D.20781, D.20780
	addq	%rdx, %rax	# D.20780, tmp78
	movq	%rax, -8(%rbp)	# tmp78, h
	.loc 1 276 0
	movq	-56(%rbp), %rax	# lv, tmp79
	movq	-16(%rbp), %rdx	# l, tmp80
	movq	%rdx, (%rax)	# tmp80, *lv_10(D)
	.loc 1 277 0
	movq	-64(%rbp), %rax	# hv, tmp81
	movq	-8(%rbp), %rdx	# h, tmp82
	movq	%rdx, (%rax)	# tmp82, *hv_11(D)
	.loc 1 278 0
	movq	-48(%rbp), %rax	# h2, tmp83
	movq	-32(%rbp), %rdx	# h1, tmp84
	xorq	%rdx, %rax	# tmp84, D.20780
	notq	%rax	# D.20780
	movq	%rax, %rcx	# D.20780, D.20780
	movq	-8(%rbp), %rax	# h, tmp85
	movq	-32(%rbp), %rdx	# h1, tmp86
	xorq	%rdx, %rax	# tmp86, D.20780
	andq	%rcx, %rax	# D.20780, D.20780
	shrq	$63, %rax	#, tmp87
	movzbl	%al, %eax	# D.20781, D.20782
	.loc 1 279 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	add_double, .-add_double
	.globl	neg_double
	.type	neg_double, @function
neg_double:
.LFB6:
	.loc 1 292 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# l1, l1
	movq	%rsi, -16(%rbp)	# h1, h1
	movq	%rdx, -24(%rbp)	# lv, lv
	movq	%rcx, -32(%rbp)	# hv, hv
	.loc 1 293 0
	cmpq	$0, -8(%rbp)	#, l1
	jne	.L23	#,
	.loc 1 295 0
	movq	-24(%rbp), %rax	# lv, tmp67
	movq	$0, (%rax)	#, *lv_3(D)
	.loc 1 296 0
	movq	-16(%rbp), %rax	# h1, tmp68
	negq	%rax	# D.20784
	movq	%rax, %rdx	# D.20784, D.20784
	movq	-32(%rbp), %rax	# hv, tmp69
	movq	%rdx, (%rax)	# D.20784, *hv_6(D)
	.loc 1 297 0
	movq	-32(%rbp), %rax	# hv, tmp70
	movq	(%rax), %rax	# *hv_6(D), D.20784
	andq	-16(%rbp), %rax	# h1, D.20784
	shrq	$63, %rax	#, tmp71
	movzbl	%al, %eax	# D.20785, D.20783
	jmp	.L24	#
.L23:
	.loc 1 301 0
	movq	-8(%rbp), %rax	# l1, tmp72
	negq	%rax	# D.20786
	movq	%rax, %rdx	# D.20786, D.20786
	movq	-24(%rbp), %rax	# lv, tmp73
	movq	%rdx, (%rax)	# D.20786, *lv_3(D)
	.loc 1 302 0
	movq	-16(%rbp), %rax	# h1, tmp74
	notq	%rax	# D.20784
	movq	%rax, %rdx	# D.20784, D.20784
	movq	-32(%rbp), %rax	# hv, tmp75
	movq	%rdx, (%rax)	# D.20784, *hv_6(D)
	.loc 1 303 0
	movl	$0, %eax	#, D.20783
.L24:
	.loc 1 305 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	neg_double, .-neg_double
	.globl	mul_double
	.type	mul_double, @function
mul_double:
.LFB7:
	.loc 1 319 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
	movq	%rdi, -200(%rbp)	# l1, l1
	movq	%rsi, -208(%rbp)	# h1, h1
	movq	%rdx, -216(%rbp)	# l2, l2
	movq	%rcx, -224(%rbp)	# h2, h2
	movq	%r8, -232(%rbp)	# lv, lv
	movq	%r9, -240(%rbp)	# hv, hv
	.loc 1 328 0
	movq	-208(%rbp), %rdx	# h1, tmp91
	movq	-200(%rbp), %rcx	# l1, tmp92
	leaq	-128(%rbp), %rax	#, tmp93
	movq	%rcx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	encode	#
	.loc 1 329 0
	movq	-224(%rbp), %rdx	# h2, tmp94
	movq	-216(%rbp), %rcx	# l2, tmp95
	leaq	-96(%rbp), %rax	#, tmp96
	movq	%rcx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	encode	#
	.loc 1 331 0
	leaq	-64(%rbp), %rax	#, tmp97
	movl	$64, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	memset	#
	.loc 1 333 0
	movl	$0, -180(%rbp)	#, i
	jmp	.L26	#
.L29:
	.loc 1 335 0
	movq	$0, -136(%rbp)	#, carry
	.loc 1 336 0
	movl	$0, -176(%rbp)	#, j
	jmp	.L27	#
.L28:
	.loc 1 338 0 discriminator 2
	movl	-176(%rbp), %eax	# j, tmp102
	movl	-180(%rbp), %edx	# i, tmp103
	addl	%edx, %eax	# tmp103, tmp101
	movl	%eax, -172(%rbp)	# tmp101, k
	.loc 1 340 0 discriminator 2
	movl	-180(%rbp), %eax	# i, tmp105
	cltq
	movq	-128(%rbp,%rax,8), %rdx	# arg1, D.20787
	movl	-176(%rbp), %eax	# j, tmp107
	cltq
	movq	-96(%rbp,%rax,8), %rax	# arg2, D.20787
	imulq	%rdx, %rax	# D.20787, D.20787
	addq	%rax, -136(%rbp)	# D.20788, carry
	.loc 1 342 0 discriminator 2
	movl	-172(%rbp), %eax	# k, tmp109
	cltq
	movq	-64(%rbp,%rax,8), %rax	# prod, D.20787
	addq	%rax, -136(%rbp)	# D.20788, carry
	.loc 1 343 0 discriminator 2
	movq	-136(%rbp), %rax	# carry, carry.7
	movl	%eax, %edx	# carry.7, D.20787
	movl	-172(%rbp), %eax	# k, tmp111
	cltq
	movq	%rdx, -64(%rbp,%rax,8)	# D.20787, prod
	.loc 1 344 0 discriminator 2
	shrq	$32, -136(%rbp)	#, carry
	.loc 1 336 0 discriminator 2
	addl	$1, -176(%rbp)	#, j
.L27:
	.loc 1 336 0 is_stmt 0 discriminator 1
	cmpl	$3, -176(%rbp)	#, j
	jle	.L28	#,
	.loc 1 346 0 is_stmt 1
	movl	-180(%rbp), %eax	# i, tmp112
	addl	$4, %eax	#, D.20789
	movq	-136(%rbp), %rdx	# carry, carry.8
	cltq
	movq	%rdx, -64(%rbp,%rax,8)	# carry.8, prod
	.loc 1 333 0
	addl	$1, -180(%rbp)	#, i
.L26:
	.loc 1 333 0 is_stmt 0 discriminator 1
	cmpl	$3, -180(%rbp)	#, i
	jle	.L29	#,
	.loc 1 349 0 is_stmt 1
	movq	-240(%rbp), %rdx	# hv, tmp114
	movq	-232(%rbp), %rcx	# lv, tmp115
	leaq	-64(%rbp), %rax	#, tmp116
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	decode	#
	.loc 1 353 0
	leaq	-152(%rbp), %rdx	#, tmp117
	leaq	-168(%rbp), %rax	#, tmp118
	leaq	-64(%rbp), %rcx	#, tmp119
	addq	$32, %rcx	#, tmp120
	movq	%rax, %rsi	# tmp118,
	movq	%rcx, %rdi	# tmp120,
	call	decode	#
	.loc 1 354 0
	cmpq	$0, -208(%rbp)	#, h1
	jns	.L30	#,
	.loc 1 356 0
	leaq	-144(%rbp), %rcx	#, tmp121
	leaq	-160(%rbp), %rdx	#, tmp122
	movq	-224(%rbp), %rsi	# h2, tmp123
	movq	-216(%rbp), %rax	# l2, tmp124
	movq	%rax, %rdi	# tmp124,
	call	neg_double	#
	.loc 1 357 0
	movq	-152(%rbp), %rcx	# tophigh, tophigh.9
	movq	-168(%rbp), %rdx	# toplow, toplow.10
	movq	-144(%rbp), %rsi	# neghigh, neghigh.11
	movq	-160(%rbp), %rax	# neglow, neglow.12
	leaq	-152(%rbp), %r8	#, tmp125
	leaq	-168(%rbp), %rdi	#, tmp126
	movq	%r8, %r9	# tmp125,
	movq	%rdi, %r8	# tmp126,
	movq	%rax, %rdi	# neglow.12,
	call	add_double	#
.L30:
	.loc 1 359 0
	cmpq	$0, -224(%rbp)	#, h2
	jns	.L31	#,
	.loc 1 361 0
	leaq	-144(%rbp), %rcx	#, tmp127
	leaq	-160(%rbp), %rdx	#, tmp128
	movq	-208(%rbp), %rsi	# h1, tmp129
	movq	-200(%rbp), %rax	# l1, tmp130
	movq	%rax, %rdi	# tmp130,
	call	neg_double	#
	.loc 1 362 0
	movq	-152(%rbp), %rcx	# tophigh, tophigh.13
	movq	-168(%rbp), %rdx	# toplow, toplow.14
	movq	-144(%rbp), %rsi	# neghigh, neghigh.15
	movq	-160(%rbp), %rax	# neglow, neglow.16
	leaq	-152(%rbp), %r8	#, tmp131
	leaq	-168(%rbp), %rdi	#, tmp132
	movq	%r8, %r9	# tmp131,
	movq	%rdi, %r8	# tmp132,
	movq	%rax, %rdi	# neglow.16,
	call	add_double	#
.L31:
	.loc 1 364 0
	movq	-240(%rbp), %rax	# hv, tmp133
	movq	(%rax), %rax	# *hv_29(D), D.20787
	testq	%rax, %rax	# D.20787
	jns	.L32	#,
	.loc 1 364 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rdx	# toplow, toplow.18
	movq	-152(%rbp), %rax	# tophigh, tophigh.19
	andq	%rdx, %rax	# toplow.18, D.20788
	cmpq	$-1, %rax	#, D.20788
	setne	%al	#, D.20790
	movzbl	%al, %eax	# D.20790, iftmp.17
	jmp	.L33	#
.L32:
	.loc 1 364 0 discriminator 2
	movq	-168(%rbp), %rdx	# toplow, toplow.21
	movq	-152(%rbp), %rax	# tophigh, tophigh.22
	orq	%rdx, %rax	# toplow.21, D.20788
	testq	%rax, %rax	# D.20788
	setne	%al	#, D.20790
	movzbl	%al, %eax	# D.20790, iftmp.17
.L33:
	.loc 1 365 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mul_double, .-mul_double
	.globl	lshift_double
	.type	lshift_double, @function
lshift_double:
.LFB8:
	.loc 1 381 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -24(%rbp)	# l1, l1
	movq	%rsi, -32(%rbp)	# h1, h1
	movq	%rdx, -40(%rbp)	# count, count
	movl	%ecx, -44(%rbp)	# prec, prec
	movq	%r8, -56(%rbp)	# lv, lv
	movq	%r9, -64(%rbp)	# hv, hv
	.loc 1 384 0
	cmpq	$0, -40(%rbp)	#, count
	jns	.L36	#,
	.loc 1 386 0
	movq	-40(%rbp), %rax	# count, tmp112
	negq	%rax	# D.20791
	movq	%rax, %rdi	# D.20791, D.20791
	movq	-64(%rbp), %r9	# hv, tmp113
	movq	-56(%rbp), %r8	# lv, tmp114
	movl	-44(%rbp), %edx	# prec, tmp115
	movq	-32(%rbp), %rsi	# h1, tmp116
	movq	-24(%rbp), %rax	# l1, tmp117
	movl	16(%rbp), %ecx	# arith, tmp118
	movl	%ecx, (%rsp)	# tmp118,
	movl	%edx, %ecx	# tmp115,
	movq	%rdi, %rdx	# D.20791,
	movq	%rax, %rdi	# tmp117,
	call	rshift_double	#
	.loc 1 387 0
	jmp	.L35	#
.L36:
	.loc 1 395 0
	cmpq	$127, -40(%rbp)	#, count
	jle	.L38	#,
	.loc 1 399 0
	movq	-64(%rbp), %rax	# hv, tmp119
	movq	$0, (%rax)	#, *hv_8(D)
	.loc 1 400 0
	movq	-56(%rbp), %rax	# lv, tmp120
	movq	$0, (%rax)	#, *lv_7(D)
	jmp	.L39	#
.L38:
	.loc 1 402 0
	cmpq	$63, -40(%rbp)	#, count
	jle	.L40	#,
	.loc 1 404 0
	movq	-40(%rbp), %rax	# count, tmp121
	subl	$64, %eax	#, D.20792
	movq	-24(%rbp), %rdx	# l1, tmp122
	movl	%eax, %ecx	# D.20793, tmp154
	salq	%cl, %rdx	# tmp154, D.20794
	movq	%rdx, %rax	# D.20794, D.20794
	movq	%rax, %rdx	# D.20794, D.20791
	movq	-64(%rbp), %rax	# hv, tmp123
	movq	%rdx, (%rax)	# D.20791, *hv_8(D)
	.loc 1 405 0
	movq	-56(%rbp), %rax	# lv, tmp124
	movq	$0, (%rax)	#, *lv_7(D)
	jmp	.L39	#
.L40:
	.loc 1 409 0
	movq	-32(%rbp), %rdx	# h1, h1.24
	movq	-40(%rbp), %rax	# count, tmp125
	movq	%rdx, %rsi	# h1.24, D.20794
	movl	%eax, %ecx	# D.20793, tmp156
	salq	%cl, %rsi	# tmp156, D.20794
	.loc 1 410 0
	movq	-40(%rbp), %rax	# count, tmp126
	movl	$63, %edx	#, tmp127
	subl	%eax, %edx	# D.20792, D.20792
	movl	%edx, %eax	# D.20792, D.20792
	movq	-24(%rbp), %rdx	# l1, tmp128
	movl	%eax, %ecx	# D.20793, tmp159
	shrq	%cl, %rdx	# tmp159, D.20794
	movq	%rdx, %rax	# D.20794, D.20794
	shrq	%rax	# D.20794
	orq	%rsi, %rax	# D.20794, D.20794
	.loc 1 409 0
	movq	%rax, %rdx	# D.20794, D.20791
	movq	-64(%rbp), %rax	# hv, tmp129
	movq	%rdx, (%rax)	# D.20791, *hv_8(D)
	.loc 1 411 0
	movq	-40(%rbp), %rax	# count, tmp130
	movq	-24(%rbp), %rdx	# l1, tmp131
	movl	%eax, %ecx	# D.20793, tmp160
	salq	%cl, %rdx	# tmp160, D.20794
	movq	-56(%rbp), %rax	# lv, tmp132
	movq	%rdx, (%rax)	# D.20794, *lv_7(D)
.L39:
	.loc 1 416 0
	cmpl	$64, -44(%rbp)	#, prec
	jbe	.L41	#,
	.loc 1 417 0
	movq	-64(%rbp), %rax	# hv, tmp133
	movq	(%rax), %rdx	# *hv_8(D), D.20791
	movl	-44(%rbp), %eax	# prec, tmp134
	subl	$65, %eax	#, D.20795
	movl	%eax, %ecx	# D.20793, tmp162
	sarq	%cl, %rdx	# tmp162, D.20791
	movq	%rdx, %rax	# D.20791, D.20791
	.loc 1 418 0
	andl	$1, %eax	#, D.20794
	.loc 1 416 0
	negq	%rax	# iftmp.25
	jmp	.L42	#
.L41:
	.loc 1 418 0 discriminator 1
	movq	-56(%rbp), %rax	# lv, tmp135
	movq	(%rax), %rdx	# *lv_7(D), D.20794
	movl	-44(%rbp), %eax	# prec, tmp136
	subl	$1, %eax	#, D.20795
	movl	%eax, %ecx	# D.20793, tmp164
	shrq	%cl, %rdx	# tmp164, D.20794
	movq	%rdx, %rax	# D.20794, D.20794
	andl	$1, %eax	#, D.20794
	.loc 1 416 0 discriminator 1
	negq	%rax	# iftmp.25
.L42:
	.loc 1 416 0 is_stmt 0 discriminator 2
	movq	%rax, -8(%rbp)	# iftmp.25, signmask
	.loc 1 420 0 is_stmt 1 discriminator 2
	cmpl	$127, -44(%rbp)	#, prec
	ja	.L35	#,
	.loc 1 422 0
	cmpl	$63, -44(%rbp)	#, prec
	jbe	.L43	#,
	.loc 1 424 0
	movq	-64(%rbp), %rax	# hv, tmp137
	movq	(%rax), %rdx	# *hv_8(D), D.20791
	movl	-44(%rbp), %eax	# prec, tmp138
	subl	$64, %eax	#, D.20795
	movq	$-1, %rsi	#, tmp139
	movl	%eax, %ecx	# D.20793, tmp166
	salq	%cl, %rsi	# tmp166, D.20791
	movq	%rsi, %rax	# D.20791, D.20791
	notq	%rax	# D.20791
	andq	%rax, %rdx	# D.20791, D.20791
	movq	-64(%rbp), %rax	# hv, tmp140
	movq	%rdx, (%rax)	# D.20791, *hv_8(D)
	.loc 1 425 0
	movq	-64(%rbp), %rax	# hv, tmp141
	movq	(%rax), %rax	# *hv_8(D), D.20791
	movq	%rax, %rdx	# D.20791, D.20794
	movl	-44(%rbp), %eax	# prec, tmp142
	subl	$64, %eax	#, D.20795
	movq	-8(%rbp), %rsi	# signmask, tmp143
	movl	%eax, %ecx	# D.20793, tmp168
	salq	%cl, %rsi	# tmp168, D.20794
	movq	%rsi, %rax	# D.20794, D.20794
	orq	%rdx, %rax	# D.20794, D.20794
	movq	%rax, %rdx	# D.20794, D.20791
	movq	-64(%rbp), %rax	# hv, tmp144
	movq	%rdx, (%rax)	# D.20791, *hv_8(D)
	jmp	.L35	#
.L43:
	.loc 1 429 0
	movq	-8(%rbp), %rdx	# signmask, signmask.26
	movq	-64(%rbp), %rax	# hv, tmp145
	movq	%rdx, (%rax)	# signmask.26, *hv_8(D)
	.loc 1 430 0
	movq	-56(%rbp), %rax	# lv, tmp146
	movq	(%rax), %rdx	# *lv_7(D), D.20794
	movl	-44(%rbp), %eax	# prec, prec.27
	movq	$-1, %rsi	#, tmp147
	movl	%eax, %ecx	# prec.27, tmp170
	salq	%cl, %rsi	# tmp170, D.20794
	movq	%rsi, %rax	# D.20794, D.20794
	notq	%rax	# D.20794
	andq	%rax, %rdx	# D.20794, D.20794
	movq	-56(%rbp), %rax	# lv, tmp148
	movq	%rdx, (%rax)	# D.20794, *lv_7(D)
	.loc 1 431 0
	movq	-56(%rbp), %rax	# lv, tmp149
	movq	(%rax), %rdx	# *lv_7(D), D.20794
	movl	-44(%rbp), %eax	# prec, prec.28
	movq	-8(%rbp), %rsi	# signmask, tmp150
	movl	%eax, %ecx	# prec.28, tmp172
	salq	%cl, %rsi	# tmp172, D.20794
	movq	%rsi, %rax	# D.20794, D.20794
	orq	%rax, %rdx	# D.20794, D.20794
	movq	-56(%rbp), %rax	# lv, tmp151
	movq	%rdx, (%rax)	# D.20794, *lv_7(D)
.L35:
	.loc 1 433 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	lshift_double, .-lshift_double
	.globl	rshift_double
	.type	rshift_double, @function
rshift_double:
.LFB9:
	.loc 1 448 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# l1, l1
	movq	%rsi, -32(%rbp)	# h1, h1
	movq	%rdx, -40(%rbp)	# count, count
	movl	%ecx, -44(%rbp)	# prec, prec
	movq	%r8, -56(%rbp)	# lv, lv
	movq	%r9, -64(%rbp)	# hv, hv
	.loc 1 453 0
	cmpl	$0, 16(%rbp)	#, arith
	je	.L45	#,
	.loc 1 452 0
	movq	-32(%rbp), %rax	# h1, tmp116
	sarq	$63, %rax	#, D.20796
	jmp	.L46	#
.L45:
	.loc 1 453 0 discriminator 1
	movl	$0, %eax	#, iftmp.29
.L46:
	.loc 1 451 0
	movq	%rax, -8(%rbp)	# iftmp.29, signmask
	.loc 1 460 0
	cmpq	$127, -40(%rbp)	#, count
	jle	.L47	#,
	.loc 1 464 0
	movq	-64(%rbp), %rax	# hv, tmp117
	movq	$0, (%rax)	#, *hv_9(D)
	.loc 1 465 0
	movq	-56(%rbp), %rax	# lv, tmp118
	movq	$0, (%rax)	#, *lv_10(D)
	jmp	.L48	#
.L47:
	.loc 1 467 0
	cmpq	$63, -40(%rbp)	#, count
	jle	.L49	#,
	.loc 1 469 0
	movq	-64(%rbp), %rax	# hv, tmp119
	movq	$0, (%rax)	#, *hv_9(D)
	.loc 1 470 0
	movq	-32(%rbp), %rdx	# h1, h1.30
	movq	-40(%rbp), %rax	# count, tmp120
	subl	$64, %eax	#, D.20797
	movl	%eax, %ecx	# D.20798, tmp153
	shrq	%cl, %rdx	# tmp153, D.20799
	movq	-56(%rbp), %rax	# lv, tmp121
	movq	%rdx, (%rax)	# D.20799, *lv_10(D)
	jmp	.L48	#
.L49:
	.loc 1 474 0
	movq	-32(%rbp), %rdx	# h1, h1.31
	movq	-40(%rbp), %rax	# count, tmp122
	movl	%eax, %ecx	# D.20798, tmp155
	shrq	%cl, %rdx	# tmp155, D.20799
	movq	%rdx, %rax	# D.20799, D.20799
	movq	%rax, %rdx	# D.20799, D.20800
	movq	-64(%rbp), %rax	# hv, tmp123
	movq	%rdx, (%rax)	# D.20800, *hv_9(D)
	.loc 1 475 0
	movq	-40(%rbp), %rax	# count, tmp124
	movq	-24(%rbp), %rdx	# l1, tmp125
	movq	%rdx, %rsi	# tmp125, D.20799
	movl	%eax, %ecx	# D.20798, tmp157
	shrq	%cl, %rsi	# tmp157, D.20799
	.loc 1 476 0
	movq	-32(%rbp), %rdx	# h1, h1.32
	movq	-40(%rbp), %rax	# count, tmp126
	movl	$63, %ecx	#, tmp127
	subl	%eax, %ecx	# D.20797, D.20797
	movl	%ecx, %eax	# D.20797, D.20797
	movl	%eax, %ecx	# D.20798, tmp160
	salq	%cl, %rdx	# tmp160, D.20799
	movq	%rdx, %rax	# D.20799, D.20799
	addq	%rax, %rax	# D.20799
	orq	%rax, %rsi	# D.20799, D.20799
	movq	%rsi, %rdx	# D.20799, D.20799
	.loc 1 475 0
	movq	-56(%rbp), %rax	# lv, tmp128
	movq	%rdx, (%rax)	# D.20799, *lv_10(D)
.L48:
	.loc 1 481 0
	movl	-44(%rbp), %eax	# prec, D.20800
	cmpq	-40(%rbp), %rax	# count, D.20800
	jg	.L50	#,
	.loc 1 483 0
	movq	-8(%rbp), %rdx	# signmask, signmask.33
	movq	-64(%rbp), %rax	# hv, tmp129
	movq	%rdx, (%rax)	# signmask.33, *hv_9(D)
	.loc 1 484 0
	movq	-56(%rbp), %rax	# lv, tmp130
	movq	-8(%rbp), %rdx	# signmask, tmp131
	movq	%rdx, (%rax)	# tmp131, *lv_10(D)
	jmp	.L44	#
.L50:
	.loc 1 486 0
	movl	-44(%rbp), %eax	# prec, D.20800
	subq	-40(%rbp), %rax	# count, D.20800
	cmpq	$127, %rax	#, D.20800
	jg	.L44	#,
	.loc 1 488 0
	movl	-44(%rbp), %eax	# prec, D.20800
	subq	-40(%rbp), %rax	# count, D.20800
	cmpq	$63, %rax	#, D.20800
	jle	.L52	#,
	.loc 1 490 0
	movq	-64(%rbp), %rax	# hv, tmp132
	movq	(%rax), %rdx	# *hv_9(D), D.20800
	movq	-40(%rbp), %rax	# count, tmp133
	movl	-44(%rbp), %ecx	# prec, tmp134
	subl	%eax, %ecx	# D.20797, D.20797
	movl	%ecx, %eax	# D.20797, D.20797
	subl	$64, %eax	#, D.20797
	movq	$-1, %rsi	#, tmp135
	movl	%eax, %ecx	# D.20798, tmp164
	salq	%cl, %rsi	# tmp164, D.20800
	movq	%rsi, %rax	# D.20800, D.20800
	notq	%rax	# D.20800
	andq	%rax, %rdx	# D.20800, D.20800
	movq	-64(%rbp), %rax	# hv, tmp136
	movq	%rdx, (%rax)	# D.20800, *hv_9(D)
	.loc 1 491 0
	movq	-64(%rbp), %rax	# hv, tmp137
	movq	(%rax), %rax	# *hv_9(D), D.20800
	movq	%rax, %rdx	# D.20800, D.20799
	movq	-40(%rbp), %rax	# count, tmp138
	movl	-44(%rbp), %ecx	# prec, tmp139
	subl	%eax, %ecx	# D.20797, D.20797
	movl	%ecx, %eax	# D.20797, D.20797
	subl	$64, %eax	#, D.20797
	movq	-8(%rbp), %rsi	# signmask, tmp140
	movl	%eax, %ecx	# D.20798, tmp167
	salq	%cl, %rsi	# tmp167, D.20799
	movq	%rsi, %rax	# D.20799, D.20799
	orq	%rdx, %rax	# D.20799, D.20799
	movq	%rax, %rdx	# D.20799, D.20800
	movq	-64(%rbp), %rax	# hv, tmp141
	movq	%rdx, (%rax)	# D.20800, *hv_9(D)
	jmp	.L44	#
.L52:
	.loc 1 495 0
	movq	-8(%rbp), %rdx	# signmask, signmask.34
	movq	-64(%rbp), %rax	# hv, tmp142
	movq	%rdx, (%rax)	# signmask.34, *hv_9(D)
	.loc 1 496 0
	movq	-56(%rbp), %rax	# lv, tmp143
	movq	(%rax), %rdx	# *lv_10(D), D.20799
	movq	-40(%rbp), %rax	# count, tmp144
	movl	-44(%rbp), %ecx	# prec, tmp145
	subl	%eax, %ecx	# D.20797, D.20797
	movl	%ecx, %eax	# D.20797, D.20797
	movq	$-1, %rsi	#, tmp146
	movl	%eax, %ecx	# D.20798, tmp170
	salq	%cl, %rsi	# tmp170, D.20799
	movq	%rsi, %rax	# D.20799, D.20799
	notq	%rax	# D.20799
	andq	%rax, %rdx	# D.20799, D.20799
	movq	-56(%rbp), %rax	# lv, tmp147
	movq	%rdx, (%rax)	# D.20799, *lv_10(D)
	.loc 1 497 0
	movq	-56(%rbp), %rax	# lv, tmp148
	movq	(%rax), %rdx	# *lv_10(D), D.20799
	movq	-40(%rbp), %rax	# count, tmp149
	movl	-44(%rbp), %ecx	# prec, tmp150
	subl	%eax, %ecx	# D.20797, D.20797
	movl	%ecx, %eax	# D.20797, D.20797
	movq	-8(%rbp), %rsi	# signmask, tmp151
	movl	%eax, %ecx	# D.20798, tmp173
	salq	%cl, %rsi	# tmp173, D.20799
	movq	%rsi, %rax	# D.20799, D.20799
	orq	%rax, %rdx	# D.20799, D.20799
	movq	-56(%rbp), %rax	# lv, tmp152
	movq	%rdx, (%rax)	# D.20799, *lv_10(D)
.L44:
	.loc 1 499 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	rshift_double, .-rshift_double
	.globl	lrotate_double
	.type	lrotate_double, @function
lrotate_double:
.LFB10:
	.loc 1 513 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -40(%rbp)	# l1, l1
	movq	%rsi, -48(%rbp)	# h1, h1
	movq	%rdx, -56(%rbp)	# count, count
	movl	%ecx, -60(%rbp)	# prec, prec
	movq	%r8, -72(%rbp)	# lv, lv
	movq	%r9, -80(%rbp)	# hv, hv
	.loc 1 517 0
	movl	-60(%rbp), %ecx	# prec, D.20801
	movq	-56(%rbp), %rax	# count, tmp70
	cqto
	idivq	%rcx	# D.20801
	movq	%rdx, -56(%rbp)	# tmp71, count
	.loc 1 518 0
	cmpq	$0, -56(%rbp)	#, count
	jns	.L54	#,
	.loc 1 519 0
	movl	-60(%rbp), %eax	# prec, D.20801
	addq	%rax, -56(%rbp)	# D.20801, count
.L54:
	.loc 1 521 0
	leaq	-16(%rbp), %r8	#, tmp73
	leaq	-32(%rbp), %rdi	#, tmp74
	movl	-60(%rbp), %ecx	# prec, tmp75
	movq	-56(%rbp), %rdx	# count, tmp76
	movq	-48(%rbp), %rsi	# h1, tmp77
	movq	-40(%rbp), %rax	# l1, tmp78
	movl	$0, (%rsp)	#,
	movq	%r8, %r9	# tmp73,
	movq	%rdi, %r8	# tmp74,
	movq	%rax, %rdi	# tmp78,
	call	lshift_double	#
	.loc 1 522 0
	movl	-60(%rbp), %eax	# prec, D.20801
	subq	-56(%rbp), %rax	# count, D.20801
	movq	%rax, %rdx	# D.20801, D.20801
	leaq	-8(%rbp), %r8	#, tmp79
	leaq	-24(%rbp), %rdi	#, tmp80
	movl	-60(%rbp), %ecx	# prec, tmp81
	movq	-48(%rbp), %rsi	# h1, tmp82
	movq	-40(%rbp), %rax	# l1, tmp83
	movl	$0, (%rsp)	#,
	movq	%r8, %r9	# tmp79,
	movq	%rdi, %r8	# tmp80,
	movq	%rax, %rdi	# tmp83,
	call	rshift_double	#
	.loc 1 523 0
	movq	-32(%rbp), %rdx	# s1l, s1l.35
	movq	-24(%rbp), %rax	# s2l, s2l.36
	orq	%rax, %rdx	# s2l.36, D.20802
	movq	-72(%rbp), %rax	# lv, tmp84
	movq	%rdx, (%rax)	# D.20802, *lv_15(D)
	.loc 1 524 0
	movq	-16(%rbp), %rdx	# s1h, s1h.37
	movq	-8(%rbp), %rax	# s2h, s2h.38
	orq	%rax, %rdx	# s2h.38, D.20801
	movq	-80(%rbp), %rax	# hv, tmp85
	movq	%rdx, (%rax)	# D.20801, *hv_19(D)
	.loc 1 525 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	lrotate_double, .-lrotate_double
	.globl	rrotate_double
	.type	rrotate_double, @function
rrotate_double:
.LFB11:
	.loc 1 538 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -40(%rbp)	# l1, l1
	movq	%rsi, -48(%rbp)	# h1, h1
	movq	%rdx, -56(%rbp)	# count, count
	movl	%ecx, -60(%rbp)	# prec, prec
	movq	%r8, -72(%rbp)	# lv, lv
	movq	%r9, -80(%rbp)	# hv, hv
	.loc 1 542 0
	movl	-60(%rbp), %ecx	# prec, D.20804
	movq	-56(%rbp), %rax	# count, tmp70
	cqto
	idivq	%rcx	# D.20804
	movq	%rdx, -56(%rbp)	# tmp71, count
	.loc 1 543 0
	cmpq	$0, -56(%rbp)	#, count
	jns	.L56	#,
	.loc 1 544 0
	movl	-60(%rbp), %eax	# prec, D.20804
	addq	%rax, -56(%rbp)	# D.20804, count
.L56:
	.loc 1 546 0
	leaq	-16(%rbp), %r8	#, tmp73
	leaq	-32(%rbp), %rdi	#, tmp74
	movl	-60(%rbp), %ecx	# prec, tmp75
	movq	-56(%rbp), %rdx	# count, tmp76
	movq	-48(%rbp), %rsi	# h1, tmp77
	movq	-40(%rbp), %rax	# l1, tmp78
	movl	$0, (%rsp)	#,
	movq	%r8, %r9	# tmp73,
	movq	%rdi, %r8	# tmp74,
	movq	%rax, %rdi	# tmp78,
	call	rshift_double	#
	.loc 1 547 0
	movl	-60(%rbp), %eax	# prec, D.20804
	subq	-56(%rbp), %rax	# count, D.20804
	movq	%rax, %rdx	# D.20804, D.20804
	leaq	-8(%rbp), %r8	#, tmp79
	leaq	-24(%rbp), %rdi	#, tmp80
	movl	-60(%rbp), %ecx	# prec, tmp81
	movq	-48(%rbp), %rsi	# h1, tmp82
	movq	-40(%rbp), %rax	# l1, tmp83
	movl	$0, (%rsp)	#,
	movq	%r8, %r9	# tmp79,
	movq	%rdi, %r8	# tmp80,
	movq	%rax, %rdi	# tmp83,
	call	lshift_double	#
	.loc 1 548 0
	movq	-32(%rbp), %rdx	# s1l, s1l.39
	movq	-24(%rbp), %rax	# s2l, s2l.40
	orq	%rax, %rdx	# s2l.40, D.20805
	movq	-72(%rbp), %rax	# lv, tmp84
	movq	%rdx, (%rax)	# D.20805, *lv_15(D)
	.loc 1 549 0
	movq	-16(%rbp), %rdx	# s1h, s1h.41
	movq	-8(%rbp), %rax	# s2h, s2h.42
	orq	%rax, %rdx	# s2h.42, D.20804
	movq	-80(%rbp), %rax	# hv, tmp85
	movq	%rdx, (%rax)	# D.20804, *hv_19(D)
	.loc 1 550 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	rrotate_double, .-rrotate_double
	.section	.rodata
.LC0:
	.string	"fold-const.c"
	.text
	.globl	div_and_round_double
	.type	div_and_round_double, @function
div_and_round_double:
.LFB12:
	.loc 1 573 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$312, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -276(%rbp)	# code, code
	movl	%esi, -280(%rbp)	# uns, uns
	movq	%rdx, -288(%rbp)	# lnum_orig, lnum_orig
	movq	%rcx, -296(%rbp)	# hnum_orig, hnum_orig
	movq	%r8, -304(%rbp)	# lden_orig, lden_orig
	movq	%r9, -312(%rbp)	# hden_orig, hden_orig
	.loc 1 574 0
	movl	$0, -272(%rbp)	#, quo_neg
	.loc 1 579 0
	movq	$0, -168(%rbp)	#, carry
	.loc 1 580 0
	movq	-288(%rbp), %rax	# lnum_orig, tmp211
	movq	%rax, -248(%rbp)	# tmp211, lnum
	.loc 1 581 0
	movq	-296(%rbp), %rax	# hnum_orig, tmp212
	movq	%rax, -240(%rbp)	# tmp212, hnum
	.loc 1 582 0
	movq	-304(%rbp), %rax	# lden_orig, tmp213
	movq	%rax, -232(%rbp)	# tmp213, lden
	.loc 1 583 0
	movq	-312(%rbp), %rax	# hden_orig, tmp214
	movq	%rax, -224(%rbp)	# tmp214, hden
	.loc 1 584 0
	movl	$0, -260(%rbp)	#, overflow
	.loc 1 586 0
	movq	-224(%rbp), %rax	# hden, hden.43
	testq	%rax, %rax	# hden.43
	jne	.L58	#,
	.loc 1 586 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# lden, lden.44
	testq	%rax, %rax	# lden.44
	jne	.L58	#,
	.loc 1 587 0 is_stmt 1
	movl	$1, -260(%rbp)	#, overflow
	movq	$1, -232(%rbp)	#, lden
.L58:
	.loc 1 590 0
	cmpl	$0, -280(%rbp)	#, uns
	jne	.L59	#,
	.loc 1 592 0
	movq	-240(%rbp), %rax	# hnum, hnum.45
	testq	%rax, %rax	# hnum.45
	jns	.L60	#,
	.loc 1 594 0
	notl	-272(%rbp)	# quo_neg
	.loc 1 596 0
	movq	-240(%rbp), %rsi	# hnum, hnum.46
	movq	-248(%rbp), %rax	# lnum, lnum.47
	leaq	-240(%rbp), %rcx	#, tmp215
	leaq	-248(%rbp), %rdx	#, tmp216
	movq	%rax, %rdi	# lnum.47,
	call	neg_double	#
	testl	%eax, %eax	# D.20806
	je	.L60	#,
	.loc 1 597 0
	movq	-232(%rbp), %rax	# lden, lden.48
	movq	%rax, %rdx	# lden.48, lden.49
	movq	-224(%rbp), %rax	# hden, hden.50
	andq	%rdx, %rax	# lden.49, D.20807
	cmpq	$-1, %rax	#, D.20807
	jne	.L60	#,
	.loc 1 598 0
	movl	$1, -260(%rbp)	#, overflow
.L60:
	.loc 1 600 0
	movq	-224(%rbp), %rax	# hden, hden.51
	testq	%rax, %rax	# hden.51
	jns	.L59	#,
	.loc 1 602 0
	notl	-272(%rbp)	# quo_neg
	.loc 1 603 0
	movq	-224(%rbp), %rsi	# hden, hden.52
	movq	-232(%rbp), %rax	# lden, lden.53
	leaq	-224(%rbp), %rcx	#, tmp217
	leaq	-232(%rbp), %rdx	#, tmp218
	movq	%rax, %rdi	# lden.53,
	call	neg_double	#
.L59:
	.loc 1 607 0
	movq	-240(%rbp), %rax	# hnum, hnum.54
	testq	%rax, %rax	# hnum.54
	jne	.L61	#,
	.loc 1 607 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# hden, hden.55
	testq	%rax, %rax	# hden.55
	jne	.L61	#,
	.loc 1 609 0 is_stmt 1
	movq	40(%rbp), %rax	# hrem, tmp219
	movq	$0, (%rax)	#, *hrem_52(D)
	movq	40(%rbp), %rax	# hrem, tmp220
	movq	(%rax), %rdx	# *hrem_52(D), D.20807
	movq	24(%rbp), %rax	# hquo, tmp221
	movq	%rdx, (%rax)	# D.20807, *hquo_54(D)
	.loc 1 611 0
	movq	-248(%rbp), %rax	# lnum, lnum.56
	movq	-232(%rbp), %rbx	# lden, lden.57
	movl	$0, %edx	#, tmp223
	divq	%rbx	# lden.57
	movq	%rax, %rdx	# tmp222, D.20808
	movq	16(%rbp), %rax	# lquo, tmp224
	movq	%rdx, (%rax)	# D.20808, *lquo_58(D)
	.loc 1 612 0
	jmp	.L62	#
.L61:
	.loc 1 615 0
	movq	-240(%rbp), %rax	# hnum, hnum.58
	testq	%rax, %rax	# hnum.58
	jne	.L63	#,
	.loc 1 618 0
	movq	16(%rbp), %rax	# lquo, tmp225
	movq	$0, (%rax)	#, *lquo_58(D)
	movq	24(%rbp), %rax	# hquo, tmp226
	movq	$0, (%rax)	#, *hquo_54(D)
	.loc 1 619 0
	movq	-240(%rbp), %rdx	# hnum, hnum.59
	movq	40(%rbp), %rax	# hrem, tmp227
	movq	%rdx, (%rax)	# hnum.59, *hrem_52(D)
	.loc 1 620 0
	movq	-248(%rbp), %rdx	# lnum, lnum.60
	movq	32(%rbp), %rax	# lrem, tmp228
	movq	%rdx, (%rax)	# lnum.60, *lrem_62(D)
	.loc 1 621 0
	jmp	.L62	#
.L63:
	.loc 1 624 0
	leaq	-96(%rbp), %rax	#, tmp229
	movl	$32, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	memset	#
	.loc 1 626 0
	leaq	-64(%rbp), %rax	#, tmp230
	movl	$40, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	memset	#
	.loc 1 627 0
	leaq	-128(%rbp), %rax	#, tmp231
	movl	$32, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	memset	#
	.loc 1 629 0
	movq	-240(%rbp), %rdx	# hnum, hnum.61
	movq	-248(%rbp), %rcx	# lnum, lnum.62
	leaq	-64(%rbp), %rax	#, tmp232
	movq	%rcx, %rsi	# lnum.62,
	movq	%rax, %rdi	# tmp232,
	call	encode	#
	.loc 1 630 0
	movq	-224(%rbp), %rdx	# hden, hden.63
	movq	-232(%rbp), %rcx	# lden, lden.64
	leaq	-128(%rbp), %rax	#, tmp233
	movq	%rcx, %rsi	# lden.64,
	movq	%rax, %rdi	# tmp233,
	call	encode	#
	.loc 1 633 0
	movq	-224(%rbp), %rax	# hden, hden.65
	testq	%rax, %rax	# hden.65
	jne	.L64	#,
	.loc 1 633 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rdx	# lden, lden.66
	movl	$4294967295, %eax	#, tmp234
	cmpq	%rax, %rdx	# tmp234, lden.66
	ja	.L64	#,
	.loc 1 636 0 is_stmt 1
	movl	$3, -268(%rbp)	#, i
	jmp	.L65	#
.L66:
	.loc 1 638 0 discriminator 2
	movl	-268(%rbp), %eax	# i, tmp236
	cltq
	movq	-64(%rbp,%rax,8), %rax	# num, D.20807
	movq	-168(%rbp), %rdx	# carry, tmp237
	salq	$32, %rdx	#, D.20808
	addq	%rdx, %rax	# D.20808, tmp238
	movq	%rax, -152(%rbp)	# tmp238, work
	.loc 1 639 0 discriminator 2
	movq	-232(%rbp), %rbx	# lden, lden.67
	movq	-152(%rbp), %rax	# work, tmp241
	movl	$0, %edx	#, tmp240
	divq	%rbx	# lden.67
	movq	%rax, %rdx	# D.20808, D.20807
	movl	-268(%rbp), %eax	# i, tmp243
	cltq
	movq	%rdx, -96(%rbp,%rax,8)	# D.20807, quo
	.loc 1 640 0 discriminator 2
	movq	-232(%rbp), %rcx	# lden, lden.68
	movq	-152(%rbp), %rax	# work, tmp245
	movl	$0, %edx	#, tmp246
	divq	%rcx	# lden.68
	movq	%rdx, -168(%rbp)	# tmp246, carry
	.loc 1 636 0 discriminator 2
	subl	$1, -268(%rbp)	#, i
.L65:
	.loc 1 636 0 is_stmt 0 discriminator 1
	cmpl	$0, -268(%rbp)	#, i
	jns	.L66	#,
	.loc 1 633 0 is_stmt 1
	jmp	.L67	#
.L64:
.LBB2:
	.loc 1 651 0
	movl	$3, -268(%rbp)	#, i
.L70:
	.loc 1 652 0
	movl	-268(%rbp), %eax	# i, tmp249
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	testq	%rax, %rax	# D.20807
	je	.L68	#,
	.loc 1 654 0
	movl	-268(%rbp), %eax	# i, tmp250
	movl	%eax, -256(%rbp)	# tmp250, den_hi_sig
	.loc 1 655 0
	nop
	.loc 1 661 0
	movl	-256(%rbp), %eax	# den_hi_sig, tmp252
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	addq	$1, %rax	#, D.20807
	movq	%rax, %rbx	# D.20807, D.20808
	movabsq	$4294967296, %rax	#, tmp255
	movl	$0, %edx	#, tmp254
	divq	%rbx	# D.20808
	movq	%rax, -144(%rbp)	# tmp253, scale
	.loc 1 662 0
	cmpq	$1, -144(%rbp)	#, scale
	jbe	.L71	#,
	jmp	.L108	#
.L68:
	.loc 1 651 0
	subl	$1, -268(%rbp)	#, i
	.loc 1 661 0
	jmp	.L70	#
.L108:
	.loc 1 664 0
	movq	$0, -168(%rbp)	#, carry
	.loc 1 665 0
	movl	$0, -268(%rbp)	#, i
	jmp	.L72	#
.L73:
	.loc 1 667 0 discriminator 2
	movl	-268(%rbp), %eax	# i, tmp257
	cltq
	movq	-64(%rbp,%rax,8), %rax	# num, D.20807
	imulq	-144(%rbp), %rax	# scale, D.20808
	movq	%rax, %rdx	# D.20808, D.20808
	movq	-168(%rbp), %rax	# carry, tmp261
	addq	%rdx, %rax	# D.20808, tmp260
	movq	%rax, -152(%rbp)	# tmp260, work
	.loc 1 668 0 discriminator 2
	movq	-152(%rbp), %rax	# work, work.69
	movl	%eax, %edx	# work.69, D.20807
	movl	-268(%rbp), %eax	# i, tmp263
	cltq
	movq	%rdx, -64(%rbp,%rax,8)	# D.20807, num
	.loc 1 669 0 discriminator 2
	movq	-152(%rbp), %rax	# work, tmp267
	shrq	$32, %rax	#, tmp266
	movq	%rax, -168(%rbp)	# tmp266, carry
	.loc 1 665 0 discriminator 2
	addl	$1, -268(%rbp)	#, i
.L72:
	.loc 1 665 0 is_stmt 0 discriminator 1
	cmpl	$3, -268(%rbp)	#, i
	jle	.L73	#,
	.loc 1 672 0 is_stmt 1
	movq	-168(%rbp), %rax	# carry, carry.70
	movq	%rax, -32(%rbp)	# carry.70, num
	.loc 1 673 0
	movq	$0, -168(%rbp)	#, carry
	.loc 1 674 0
	movl	$0, -268(%rbp)	#, i
	jmp	.L74	#
.L76:
	.loc 1 676 0
	movl	-268(%rbp), %eax	# i, tmp269
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	imulq	-144(%rbp), %rax	# scale, D.20808
	movq	%rax, %rdx	# D.20808, D.20808
	movq	-168(%rbp), %rax	# carry, tmp273
	addq	%rdx, %rax	# D.20808, tmp272
	movq	%rax, -152(%rbp)	# tmp272, work
	.loc 1 677 0
	movq	-152(%rbp), %rax	# work, work.71
	movl	%eax, %edx	# work.71, D.20807
	movl	-268(%rbp), %eax	# i, tmp275
	cltq
	movq	%rdx, -128(%rbp,%rax,8)	# D.20807, den
	.loc 1 678 0
	movq	-152(%rbp), %rax	# work, tmp279
	shrq	$32, %rax	#, tmp278
	movq	%rax, -168(%rbp)	# tmp278, carry
	.loc 1 679 0
	movl	-268(%rbp), %eax	# i, tmp281
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	testq	%rax, %rax	# D.20807
	je	.L75	#,
	.loc 1 679 0 is_stmt 0 discriminator 1
	movl	-268(%rbp), %eax	# i, tmp282
	movl	%eax, -256(%rbp)	# tmp282, den_hi_sig
.L75:
	.loc 1 674 0 is_stmt 1
	addl	$1, -268(%rbp)	#, i
.L74:
	.loc 1 674 0 is_stmt 0 discriminator 1
	cmpl	$3, -268(%rbp)	#, i
	jle	.L76	#,
.L71:
	.loc 1 683 0 is_stmt 1
	movl	$4, -252(%rbp)	#, num_hi_sig
	.loc 1 686 0
	movl	-256(%rbp), %eax	# den_hi_sig, tmp283
	movl	-252(%rbp), %edx	# num_hi_sig, tmp284
	subl	%eax, %edx	# tmp283, D.20806
	movl	%edx, %eax	# D.20806, D.20806
	subl	$1, %eax	#, tmp285
	movl	%eax, -268(%rbp)	# tmp285, i
	jmp	.L77	#
.L86:
.LBB3:
	.loc 1 693 0
	movl	-256(%rbp), %eax	# den_hi_sig, tmp286
	movl	-268(%rbp), %edx	# i, tmp287
	addl	%edx, %eax	# tmp287, D.20806
	addl	$1, %eax	#, tmp288
	movl	%eax, -252(%rbp)	# tmp288, num_hi_sig
	.loc 1 694 0
	movl	-252(%rbp), %eax	# num_hi_sig, tmp290
	cltq
	movq	-64(%rbp,%rax,8), %rax	# num, D.20807
	salq	$32, %rax	#, D.20808
	movq	%rax, %rdx	# D.20808, D.20808
	movl	-252(%rbp), %eax	# num_hi_sig, tmp291
	subl	$1, %eax	#, D.20806
	cltq
	movq	-64(%rbp,%rax,8), %rax	# num, D.20807
	addq	%rdx, %rax	# D.20808, tmp293
	movq	%rax, -152(%rbp)	# tmp293, work
	.loc 1 695 0
	movl	-252(%rbp), %eax	# num_hi_sig, tmp295
	cltq
	movq	-64(%rbp,%rax,8), %rdx	# num, D.20807
	movl	-256(%rbp), %eax	# den_hi_sig, tmp297
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	cmpq	%rax, %rdx	# D.20807, D.20807
	je	.L78	#,
	.loc 1 696 0
	movl	-256(%rbp), %eax	# den_hi_sig, tmp299
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	movq	%rax, %rbx	# D.20807, D.20808
	movq	-152(%rbp), %rax	# work, tmp302
	movl	$0, %edx	#, tmp301
	divq	%rbx	# D.20808
	movq	%rax, -160(%rbp)	# tmp300, quo_est
	jmp	.L79	#
.L78:
	.loc 1 698 0
	movl	$4294967295, %eax	#, tmp439
	movq	%rax, -160(%rbp)	# tmp439, quo_est
.L79:
	.loc 1 701 0
	movl	-256(%rbp), %eax	# den_hi_sig, tmp304
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	imulq	-160(%rbp), %rax	# quo_est, D.20808
	movq	-152(%rbp), %rdx	# work, tmp308
	subq	%rax, %rdx	# D.20808, tmp307
	movq	%rdx, %rax	# tmp307, tmp307
	movq	%rax, -136(%rbp)	# tmp307, tmp
	.loc 1 702 0
	movl	$4294967295, %eax	#, tmp309
	cmpq	%rax, -136(%rbp)	# tmp309, tmp
	ja	.L80	#,
	.loc 1 703 0
	movl	-256(%rbp), %eax	# den_hi_sig, tmp310
	subl	$1, %eax	#, D.20806
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	imulq	-160(%rbp), %rax	# quo_est, D.20808
	movq	%rax, %rdx	# D.20808, D.20808
	.loc 1 704 0
	movq	-136(%rbp), %rax	# tmp, tmp312
	salq	$32, %rax	#, D.20808
	movq	%rax, %rcx	# D.20808, D.20808
	movl	-252(%rbp), %eax	# num_hi_sig, tmp313
	subl	$2, %eax	#, D.20806
	cltq
	movq	-64(%rbp,%rax,8), %rax	# num, D.20807
	addq	%rcx, %rax	# D.20808, D.20808
	.loc 1 703 0
	cmpq	%rax, %rdx	# D.20808, D.20808
	jbe	.L80	#,
	.loc 1 705 0
	subq	$1, -160(%rbp)	#, quo_est
.L80:
	.loc 1 711 0
	movq	$0, -168(%rbp)	#, carry
	.loc 1 712 0
	movl	$0, -264(%rbp)	#, j
	jmp	.L81	#
.L82:
	.loc 1 714 0 discriminator 2
	movl	-264(%rbp), %eax	# j, tmp316
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	imulq	-160(%rbp), %rax	# quo_est, D.20808
	movq	%rax, %rdx	# D.20808, D.20808
	movq	-168(%rbp), %rax	# carry, tmp320
	addq	%rdx, %rax	# D.20808, tmp319
	movq	%rax, -152(%rbp)	# tmp319, work
	.loc 1 715 0 discriminator 2
	movq	-152(%rbp), %rax	# work, tmp324
	shrq	$32, %rax	#, tmp323
	movq	%rax, -168(%rbp)	# tmp323, carry
	.loc 1 716 0 discriminator 2
	movl	-264(%rbp), %eax	# j, tmp325
	movl	-268(%rbp), %edx	# i, tmp326
	addl	%edx, %eax	# tmp326, D.20806
	cltq
	movq	-64(%rbp,%rax,8), %rax	# num, D.20807
	movq	%rax, %rdx	# D.20807, D.20808
	movq	-152(%rbp), %rax	# work, tmp328
	movl	%eax, %eax	# tmp328, D.20808
	subq	%rax, %rdx	# D.20808, tmp329
	movq	%rdx, %rax	# tmp329, tmp329
	movq	%rax, -152(%rbp)	# tmp329, work
	.loc 1 717 0 discriminator 2
	movl	-264(%rbp), %eax	# j, tmp330
	movl	-268(%rbp), %edx	# i, tmp331
	leal	(%rdx,%rax), %ecx	#, D.20806
	movq	-152(%rbp), %rax	# work, work.72
	movl	%eax, %edx	# work.72, D.20807
	movslq	%ecx, %rax	# D.20806, tmp332
	movq	%rdx, -64(%rbp,%rax,8)	# D.20807, num
	.loc 1 718 0 discriminator 2
	movq	-152(%rbp), %rax	# work, tmp333
	shrq	$32, %rax	#, D.20808
	testq	%rax, %rax	# D.20808
	setne	%al	#, D.20809
	movzbl	%al, %eax	# D.20809, D.20808
	addq	%rax, -168(%rbp)	# D.20808, carry
	.loc 1 712 0 discriminator 2
	addl	$1, -264(%rbp)	#, j
.L81:
	.loc 1 712 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# j, tmp334
	cmpl	-256(%rbp), %eax	# den_hi_sig, tmp334
	jle	.L82	#,
	.loc 1 723 0 is_stmt 1
	movl	-252(%rbp), %eax	# num_hi_sig, tmp336
	cltq
	movq	-64(%rbp,%rax,8), %rax	# num, D.20807
	cmpq	-168(%rbp), %rax	# carry, D.20808
	jae	.L83	#,
	.loc 1 725 0
	subq	$1, -160(%rbp)	#, quo_est
	.loc 1 726 0
	movq	$0, -168(%rbp)	#, carry
	.loc 1 727 0
	movl	$0, -264(%rbp)	#, j
	jmp	.L84	#
.L85:
	.loc 1 729 0 discriminator 2
	movl	-264(%rbp), %eax	# j, tmp337
	movl	-268(%rbp), %edx	# i, tmp338
	addl	%edx, %eax	# tmp338, D.20806
	cltq
	movq	-64(%rbp,%rax,8), %rdx	# num, D.20807
	movl	-264(%rbp), %eax	# j, tmp341
	cltq
	movq	-128(%rbp,%rax,8), %rax	# den, D.20807
	addq	%rdx, %rax	# D.20807, D.20807
	movq	%rax, %rdx	# D.20807, D.20808
	movq	-168(%rbp), %rax	# carry, tmp345
	addq	%rdx, %rax	# D.20808, tmp344
	movq	%rax, -152(%rbp)	# tmp344, work
	.loc 1 730 0 discriminator 2
	movq	-152(%rbp), %rax	# work, tmp349
	shrq	$32, %rax	#, tmp348
	movq	%rax, -168(%rbp)	# tmp348, carry
	.loc 1 731 0 discriminator 2
	movl	-264(%rbp), %eax	# j, tmp350
	movl	-268(%rbp), %edx	# i, tmp351
	leal	(%rdx,%rax), %ecx	#, D.20806
	movq	-152(%rbp), %rax	# work, work.73
	movl	%eax, %edx	# work.73, D.20807
	movslq	%ecx, %rax	# D.20806, tmp352
	movq	%rdx, -64(%rbp,%rax,8)	# D.20807, num
	.loc 1 727 0 discriminator 2
	addl	$1, -264(%rbp)	#, j
.L84:
	.loc 1 727 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# j, tmp353
	cmpl	-256(%rbp), %eax	# den_hi_sig, tmp353
	jle	.L85	#,
	.loc 1 734 0 is_stmt 1
	movl	-252(%rbp), %eax	# num_hi_sig, tmp355
	cltq
	movq	-64(%rbp,%rax,8), %rax	# num, D.20807
	movq	%rax, %rdx	# D.20807, D.20808
	movq	-168(%rbp), %rax	# carry, tmp356
	addq	%rdx, %rax	# D.20808, D.20808
	movq	%rax, %rdx	# D.20808, D.20807
	movl	-252(%rbp), %eax	# num_hi_sig, tmp358
	cltq
	movq	%rdx, -64(%rbp,%rax,8)	# D.20807, num
.L83:
	.loc 1 738 0
	movq	-160(%rbp), %rdx	# quo_est, quo_est.74
	movl	-268(%rbp), %eax	# i, tmp360
	cltq
	movq	%rdx, -96(%rbp,%rax,8)	# quo_est.74, quo
.LBE3:
	.loc 1 686 0
	subl	$1, -268(%rbp)	#, i
.L77:
	.loc 1 686 0 is_stmt 0 discriminator 1
	cmpl	$0, -268(%rbp)	#, i
	jns	.L86	#,
.L67:
.LBE2:
	.loc 1 742 0 is_stmt 1
	movq	24(%rbp), %rdx	# hquo, tmp361
	leaq	-96(%rbp), %rax	#, tmp362
	movq	16(%rbp), %rsi	# lquo,
	movq	%rax, %rdi	# tmp362,
	call	decode	#
.L62:
	.loc 1 746 0
	cmpl	$0, -272(%rbp)	#, quo_neg
	je	.L87	#,
	.loc 1 747 0
	movq	24(%rbp), %rax	# hquo, tmp363
	movq	(%rax), %rsi	# *hquo_54(D), D.20807
	movq	16(%rbp), %rax	# lquo, tmp364
	movq	(%rax), %rax	# *lquo_58(D), D.20808
	movq	24(%rbp), %rdx	# hquo, tmp365
	movq	%rdx, %rcx	# tmp365,
	movq	16(%rbp), %rdx	# lquo,
	movq	%rax, %rdi	# D.20808,
	call	neg_double	#
.L87:
	.loc 1 750 0
	movq	24(%rbp), %rax	# hquo, tmp366
	movq	(%rax), %rsi	# *hquo_54(D), D.20807
	movq	16(%rbp), %rax	# lquo, tmp367
	movq	(%rax), %rax	# *lquo_58(D), D.20808
	movq	40(%rbp), %r8	# hrem, tmp368
	movq	32(%rbp), %rdi	# lrem, tmp369
	movq	-312(%rbp), %rcx	# hden_orig, tmp370
	movq	-304(%rbp), %rdx	# lden_orig, tmp371
	movq	%r8, %r9	# tmp368,
	movq	%rdi, %r8	# tmp369,
	movq	%rax, %rdi	# D.20808,
	call	mul_double	#
	.loc 1 751 0
	movq	40(%rbp), %rax	# hrem, tmp372
	movq	(%rax), %rsi	# *hrem_52(D), D.20807
	movq	32(%rbp), %rax	# lrem, tmp373
	movq	(%rax), %rax	# *lrem_62(D), D.20808
	movq	40(%rbp), %rcx	# hrem, tmp374
	movq	32(%rbp), %rdx	# lrem, tmp375
	movq	%rax, %rdi	# D.20808,
	call	neg_double	#
	.loc 1 752 0
	movq	40(%rbp), %rax	# hrem, tmp376
	movq	(%rax), %rcx	# *hrem_52(D), D.20807
	movq	32(%rbp), %rax	# lrem, tmp377
	movq	(%rax), %rdx	# *lrem_62(D), D.20808
	movq	40(%rbp), %r8	# hrem, tmp378
	movq	32(%rbp), %rdi	# lrem, tmp379
	movq	-296(%rbp), %rsi	# hnum_orig, tmp380
	movq	-288(%rbp), %rax	# lnum_orig, tmp381
	movq	%r8, %r9	# tmp378,
	movq	%rdi, %r8	# tmp379,
	movq	%rax, %rdi	# tmp381,
	call	add_double	#
	.loc 1 754 0
	movl	-276(%rbp), %eax	# code, tmp383
	subl	$62, %eax	#, tmp382
	cmpl	$9, %eax	#, tmp382
	ja	.L88	#,
	movl	%eax, %eax	# tmp382, tmp384
	movq	.L90(,%rax,8), %rax	#, tmp385
	jmp	*%rax	# tmp385
	.section	.rodata
	.align 8
	.align 4
.L90:
	.quad	.L89
	.quad	.L91
	.quad	.L92
	.quad	.L93
	.quad	.L89
	.quad	.L91
	.quad	.L92
	.quad	.L93
	.quad	.L88
	.quad	.L89
	.text
.L89:
	.loc 1 759 0
	movl	-260(%rbp), %eax	# overflow, D.20806
	jmp	.L107	#
.L92:
	.loc 1 763 0
	cmpl	$0, -272(%rbp)	#, quo_neg
	je	.L95	#,
	.loc 1 763 0 is_stmt 0 discriminator 1
	movq	32(%rbp), %rax	# lrem, tmp386
	movq	(%rax), %rax	# *lrem_62(D), D.20808
	testq	%rax, %rax	# D.20808
	jne	.L96	#,
	movq	40(%rbp), %rax	# hrem, tmp387
	movq	(%rax), %rax	# *hrem_52(D), D.20807
	testq	%rax, %rax	# D.20807
	je	.L95	#,
.L96:
	.loc 1 766 0 is_stmt 1
	movq	24(%rbp), %rax	# hquo, tmp388
	movq	(%rax), %rsi	# *hquo_54(D), D.20807
	movq	16(%rbp), %rax	# lquo, tmp389
	movq	(%rax), %rax	# *lquo_58(D), D.20808
	movq	24(%rbp), %rdx	# hquo, tmp390
	movq	%rdx, %r9	# tmp390,
	movq	16(%rbp), %r8	# lquo,
	movq	$-1, %rcx	#,
	movq	$-1, %rdx	#,
	movq	%rax, %rdi	# D.20808,
	call	add_double	#
	.loc 1 771 0
	jmp	.L97	#
.L95:
	.loc 1 770 0
	movl	-260(%rbp), %eax	# overflow, D.20806
	jmp	.L107	#
.L91:
	.loc 1 775 0
	cmpl	$0, -272(%rbp)	#, quo_neg
	jne	.L98	#,
	.loc 1 775 0 is_stmt 0 discriminator 1
	movq	32(%rbp), %rax	# lrem, tmp391
	movq	(%rax), %rax	# *lrem_62(D), D.20808
	testq	%rax, %rax	# D.20808
	jne	.L99	#,
	movq	40(%rbp), %rax	# hrem, tmp392
	movq	(%rax), %rax	# *hrem_52(D), D.20807
	testq	%rax, %rax	# D.20807
	je	.L98	#,
.L99:
	.loc 1 777 0 is_stmt 1
	movq	24(%rbp), %rax	# hquo, tmp393
	movq	(%rax), %rsi	# *hquo_54(D), D.20807
	movq	16(%rbp), %rax	# lquo, tmp394
	movq	(%rax), %rax	# *lquo_58(D), D.20808
	movq	24(%rbp), %rdx	# hquo, tmp395
	movq	%rdx, %r9	# tmp395,
	movq	16(%rbp), %r8	# lquo,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.20808,
	call	add_double	#
	.loc 1 782 0
	jmp	.L97	#
.L98:
	.loc 1 781 0
	movl	-260(%rbp), %eax	# overflow, D.20806
	jmp	.L107	#
.L93:
.LBB4:
	.loc 1 787 0
	movq	32(%rbp), %rax	# lrem, tmp396
	movq	(%rax), %rax	# *lrem_62(D), labs_rem.75
	movq	%rax, -216(%rbp)	# labs_rem.75, labs_rem
	.loc 1 788 0
	movq	40(%rbp), %rax	# hrem, tmp397
	movq	(%rax), %rax	# *hrem_52(D), habs_rem.76
	movq	%rax, -208(%rbp)	# habs_rem.76, habs_rem
	.loc 1 789 0
	movq	-232(%rbp), %rax	# lden, lden.77
	movq	%rax, -200(%rbp)	# lden.77, labs_den
	.loc 1 790 0
	movq	-224(%rbp), %rax	# hden, hden.78
	movq	%rax, -184(%rbp)	# hden.78, habs_den
	.loc 1 793 0
	movq	40(%rbp), %rax	# hrem, tmp398
	movq	(%rax), %rax	# *hrem_52(D), D.20807
	testq	%rax, %rax	# D.20807
	jns	.L100	#,
	.loc 1 794 0
	movq	40(%rbp), %rax	# hrem, tmp399
	movq	(%rax), %rsi	# *hrem_52(D), D.20807
	movq	32(%rbp), %rax	# lrem, tmp400
	movq	(%rax), %rax	# *lrem_62(D), D.20808
	leaq	-208(%rbp), %rcx	#, tmp401
	leaq	-216(%rbp), %rdx	#, tmp402
	movq	%rax, %rdi	# D.20808,
	call	neg_double	#
.L100:
	.loc 1 795 0
	movq	-224(%rbp), %rax	# hden, hden.79
	testq	%rax, %rax	# hden.79
	jns	.L101	#,
	.loc 1 796 0
	movq	-224(%rbp), %rsi	# hden, hden.80
	movq	-232(%rbp), %rax	# lden, lden.81
	leaq	-184(%rbp), %rcx	#, tmp403
	leaq	-200(%rbp), %rdx	#, tmp404
	movq	%rax, %rdi	# lden.81,
	call	neg_double	#
.L101:
	.loc 1 799 0
	movq	-208(%rbp), %rdx	# habs_rem, habs_rem.82
	movq	-216(%rbp), %rax	# labs_rem, labs_rem.83
	leaq	-176(%rbp), %rsi	#, tmp405
	leaq	-192(%rbp), %rcx	#, tmp406
	movq	%rsi, %r9	# tmp405,
	movq	%rcx, %r8	# tmp406,
	movq	%rdx, %rcx	# habs_rem.82,
	movq	%rax, %rdx	# labs_rem.83,
	movl	$0, %esi	#,
	movl	$2, %edi	#,
	call	mul_double	#
	.loc 1 802 0
	movq	-184(%rbp), %rax	# habs_den, habs_den.84
	movq	%rax, %rdx	# habs_den.84, habs_den.85
	.loc 1 803 0
	movq	-176(%rbp), %rax	# htwice, htwice.86
	.loc 1 802 0
	cmpq	%rax, %rdx	# htwice.87, habs_den.85
	jb	.L102	#,
	.loc 1 805 0
	movq	-184(%rbp), %rdx	# habs_den, habs_den.88
	movq	-176(%rbp), %rax	# htwice, htwice.89
	.loc 1 804 0
	cmpq	%rax, %rdx	# htwice.89, habs_den.88
	jne	.L103	#,
	.loc 1 806 0
	movq	-200(%rbp), %rdx	# labs_den, labs_den.90
	movq	-192(%rbp), %rax	# ltwice, ltwice.91
	cmpq	%rax, %rdx	# ltwice.91, labs_den.90
	jae	.L103	#,
.L102:
	.loc 1 808 0
	movq	24(%rbp), %rax	# hquo, tmp407
	movq	(%rax), %rax	# *hquo_54(D), D.20807
	testq	%rax, %rax	# D.20807
	jns	.L104	#,
	.loc 1 810 0
	movq	24(%rbp), %rax	# hquo, tmp408
	movq	(%rax), %rsi	# *hquo_54(D), D.20807
	movq	16(%rbp), %rax	# lquo, tmp409
	movq	(%rax), %rax	# *lquo_58(D), D.20808
	movq	24(%rbp), %rdx	# hquo, tmp410
	movq	%rdx, %r9	# tmp410,
	movq	16(%rbp), %r8	# lquo,
	movq	$-1, %rcx	#,
	movq	$-1, %rdx	#,
	movq	%rax, %rdi	# D.20808,
	call	add_double	#
	.loc 1 808 0
	jmp	.L106	#
.L104:
	.loc 1 814 0
	movq	24(%rbp), %rax	# hquo, tmp411
	movq	(%rax), %rsi	# *hquo_54(D), D.20807
	movq	16(%rbp), %rax	# lquo, tmp412
	movq	(%rax), %rax	# *lquo_58(D), D.20808
	movq	24(%rbp), %rdx	# hquo, tmp413
	movq	%rdx, %r9	# tmp413,
	movq	16(%rbp), %r8	# lquo,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.20808,
	call	add_double	#
	.loc 1 808 0
	jmp	.L106	#
.L103:
	.loc 1 818 0
	movl	-260(%rbp), %eax	# overflow, D.20806
	jmp	.L107	#
.L106:
.LBE4:
	.loc 1 820 0
	jmp	.L97	#
.L88:
	.loc 1 823 0
	movl	$__FUNCTION__.12314, %edx	#,
	movl	$823, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L97:
	.loc 1 827 0
	movq	24(%rbp), %rax	# hquo, tmp414
	movq	(%rax), %rsi	# *hquo_54(D), D.20807
	movq	16(%rbp), %rax	# lquo, tmp415
	movq	(%rax), %rax	# *lquo_58(D), D.20808
	movq	40(%rbp), %r8	# hrem, tmp416
	movq	32(%rbp), %rdi	# lrem, tmp417
	movq	-312(%rbp), %rcx	# hden_orig, tmp418
	movq	-304(%rbp), %rdx	# lden_orig, tmp419
	movq	%r8, %r9	# tmp416,
	movq	%rdi, %r8	# tmp417,
	movq	%rax, %rdi	# D.20808,
	call	mul_double	#
	.loc 1 828 0
	movq	40(%rbp), %rax	# hrem, tmp420
	movq	(%rax), %rsi	# *hrem_52(D), D.20807
	movq	32(%rbp), %rax	# lrem, tmp421
	movq	(%rax), %rax	# *lrem_62(D), D.20808
	movq	40(%rbp), %rcx	# hrem, tmp422
	movq	32(%rbp), %rdx	# lrem, tmp423
	movq	%rax, %rdi	# D.20808,
	call	neg_double	#
	.loc 1 829 0
	movq	40(%rbp), %rax	# hrem, tmp424
	movq	(%rax), %rcx	# *hrem_52(D), D.20807
	movq	32(%rbp), %rax	# lrem, tmp425
	movq	(%rax), %rdx	# *lrem_62(D), D.20808
	movq	40(%rbp), %r8	# hrem, tmp426
	movq	32(%rbp), %rdi	# lrem, tmp427
	movq	-296(%rbp), %rsi	# hnum_orig, tmp428
	movq	-288(%rbp), %rax	# lnum_orig, tmp429
	movq	%r8, %r9	# tmp426,
	movq	%rdi, %r8	# tmp427,
	movq	%rax, %rdi	# tmp429,
	call	add_double	#
	.loc 1 830 0
	movl	-260(%rbp), %eax	# overflow, D.20806
.L107:
	.loc 1 831 0
	addq	$312, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	div_and_round_double, .-div_and_round_double
	.type	negate_expr, @function
negate_expr:
.LFB13:
	.loc 1 1345 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# t, t
	.loc 1 1349 0
	cmpq	$0, -24(%rbp)	#, t
	jne	.L110	#,
	.loc 1 1350 0
	movl	$0, %eax	#, D.20813
	jmp	.L111	#
.L110:
	.loc 1 1352 0
	movq	-24(%rbp), %rax	# t, tmp97
	movq	8(%rax), %rax	# t_3(D)->common.type, tmp98
	movq	%rax, -16(%rbp)	# tmp98, type
	.loc 1 1353 0
	jmp	.L112	#
.L115:
	.loc 1 1353 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t, tmp99
	movq	32(%rax), %rax	# t_1->exp.operands, tmp100
	movq	%rax, -24(%rbp)	# tmp100, t
.L112:
	movq	-24(%rbp), %rax	# t, tmp101
	movzbl	16(%rax), %eax	# t_1->common.code, D.20814
	cmpb	$115, %al	#, D.20814
	je	.L113	#,
	.loc 1 1353 0 discriminator 3
	movq	-24(%rbp), %rax	# t, tmp102
	movzbl	16(%rax), %eax	# t_1->common.code, D.20814
	cmpb	$114, %al	#, D.20814
	je	.L113	#,
	.loc 1 1353 0 discriminator 1
	movq	-24(%rbp), %rax	# t, tmp103
	movzbl	16(%rax), %eax	# t_1->common.code, D.20814
	cmpb	$116, %al	#, D.20814
	jne	.L114	#,
.L113:
	.loc 1 1353 0 discriminator 2
	movq	-24(%rbp), %rax	# t, tmp104
	movq	32(%rax), %rdx	# t_1->exp.operands, D.20815
	movq	global_trees(%rip), %rax	# global_trees, D.20815
	cmpq	%rax, %rdx	# D.20815, D.20815
	je	.L114	#,
	.loc 1 1353 0 discriminator 1
	movq	-24(%rbp), %rax	# t, tmp105
	movq	8(%rax), %rax	# t_1->common.type, D.20815
	movzbl	61(%rax), %eax	# *_11, tmp108
	shrb	%al	# D.20816
	movl	%eax, %edx	# D.20816, D.20816
	movq	-24(%rbp), %rax	# t, tmp109
	movq	32(%rax), %rax	# t_1->exp.operands, D.20815
	movq	8(%rax), %rax	# _13->common.type, D.20815
	movzbl	61(%rax), %eax	# *_14, tmp112
	shrb	%al	# D.20816
	cmpb	%al, %dl	# D.20816, D.20816
	jne	.L114	#,
	movq	-24(%rbp), %rax	# t, tmp113
	movq	8(%rax), %rax	# t_1->common.type, D.20815
	movzbl	17(%rax), %eax	# *_16, tmp116
	shrb	$5, %al	#, D.20817
	movl	%eax, %edx	# D.20817, D.20817
	andl	$1, %edx	#, D.20817
	movq	-24(%rbp), %rax	# t, tmp117
	movq	32(%rax), %rax	# t_1->exp.operands, D.20815
	movq	8(%rax), %rax	# _18->common.type, D.20815
	movzbl	17(%rax), %eax	# *_19, tmp120
	shrb	$5, %al	#, D.20817
	andl	$1, %eax	#, D.20817
	cmpb	%al, %dl	# D.20817, D.20817
	je	.L115	#,
.L114:
	.loc 1 1355 0 is_stmt 1
	movq	-24(%rbp), %rax	# t, tmp121
	movzbl	16(%rax), %eax	# t_1->common.code, D.20814
	movzbl	%al, %eax	# D.20814, D.20818
	cmpl	$60, %eax	#, D.20818
	je	.L117	#,
	cmpl	$60, %eax	#, D.20818
	ja	.L118	#,
	subl	$25, %eax	#, tmp122
	cmpl	$1, %eax	#, tmp122
	ja	.L127	#,
	jmp	.L126	#
.L118:
	cmpl	$77, %eax	#, D.20818
	je	.L120	#,
	.loc 1 1378 0
	jmp	.L127	#
.L126:
	.loc 1 1359 0
	movq	-16(%rbp), %rax	# type, tmp123
	movzbl	17(%rax), %eax	# *type_5, D.20814
	andl	$32, %eax	#, D.20814
	testb	%al, %al	# D.20814
	jne	.L121	#,
	.loc 1 1360 0
	movq	-24(%rbp), %rdx	# t, tmp124
	movq	-16(%rbp), %rax	# type, tmp125
	movq	%rax, %rsi	# tmp125,
	movl	$77, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.20815,
	call	fold	#
	movq	%rax, -8(%rbp)	# tmp126, tem
	cmpq	$0, -8(%rbp)	#, tem
	je	.L121	#,
	.loc 1 1361 0
	movq	-8(%rbp), %rax	# tem, tmp127
	movzbl	18(%rax), %eax	# *tem_27, D.20814
	andl	$8, %eax	#, D.20814
	testb	%al, %al	# D.20814
	jne	.L121	#,
	.loc 1 1362 0
	movq	-8(%rbp), %rax	# tem, D.20813
	jmp	.L111	#
.L121:
	.loc 1 1363 0
	jmp	.L122	#
.L120:
	.loc 1 1366 0
	movq	-24(%rbp), %rax	# t, tmp128
	movq	32(%rax), %rdx	# t_1->exp.operands, D.20815
	movq	-16(%rbp), %rax	# type, tmp129
	movq	%rdx, %rsi	# D.20815,
	movq	%rax, %rdi	# tmp129,
	call	convert	#
	jmp	.L111	#
.L117:
	.loc 1 1370 0
	movq	-16(%rbp), %rax	# type, tmp130
	movzbl	16(%rax), %eax	# type_5->common.code, D.20814
	cmpb	$7, %al	#, D.20814
	je	.L123	#,
	.loc 1 1370 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# type, tmp131
	movzbl	16(%rax), %eax	# type_5->common.code, D.20814
	cmpb	$8, %al	#, D.20814
	jne	.L124	#,
	movq	-16(%rbp), %rax	# type, tmp132
	movq	8(%rax), %rax	# type_5->common.type, D.20815
	movzbl	16(%rax), %eax	# _35->common.code, D.20814
	cmpb	$7, %al	#, D.20814
	jne	.L124	#,
.L123:
	.loc 1 1370 0 discriminator 2
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.92
	testl	%eax, %eax	# flag_unsafe_math_optimizations.92
	je	.L125	#,
.L124:
	.loc 1 1371 0 is_stmt 1
	movq	-24(%rbp), %rax	# t, tmp133
	movq	32(%rax), %rcx	# t_1->exp.operands, D.20815
	movq	-24(%rbp), %rax	# t, tmp134
	movq	40(%rax), %rdx	# t_1->exp.operands, D.20815
	movq	-24(%rbp), %rax	# t, tmp135
	movq	8(%rax), %rax	# t_1->common.type, D.20815
	movq	%rax, %rsi	# D.20815,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20815,
	call	fold	#
	movq	%rax, %rdx	#, D.20815
	movq	-16(%rbp), %rax	# type, tmp136
	movq	%rdx, %rsi	# D.20815,
	movq	%rax, %rdi	# tmp136,
	call	convert	#
	jmp	.L111	#
.L125:
	.loc 1 1375 0
	jmp	.L122	#
.L127:
	.loc 1 1378 0
	nop
.L122:
	.loc 1 1381 0
	movq	-24(%rbp), %rax	# t, tmp137
	movq	8(%rax), %rax	# t_1->common.type, D.20815
	movq	-24(%rbp), %rdx	# t, tmp138
	movq	%rax, %rsi	# D.20815,
	movl	$77, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.20815,
	call	fold	#
	movq	%rax, %rdx	#, D.20815
	movq	-16(%rbp), %rax	# type, tmp139
	movq	%rdx, %rsi	# D.20815,
	movq	%rax, %rdi	# tmp139,
	call	convert	#
.L111:
	.loc 1 1382 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	negate_expr, .-negate_expr
	.type	split_tree, @function
split_tree:
.LFB14:
	.loc 1 1410 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# in, in
	movl	%esi, -60(%rbp)	# code, code
	movq	%rdx, -72(%rbp)	# conp, conp
	movq	%rcx, -80(%rbp)	# litp, litp
	movq	%r8, -88(%rbp)	# minus_litp, minus_litp
	movl	%r9d, -64(%rbp)	# negate_p, negate_p
	.loc 1 1411 0
	movq	$0, -24(%rbp)	#, var
	.loc 1 1413 0
	movq	-72(%rbp), %rax	# conp, tmp110
	movq	$0, (%rax)	#, *conp_14(D)
	.loc 1 1414 0
	movq	-80(%rbp), %rax	# litp, tmp111
	movq	$0, (%rax)	#, *litp_15(D)
	.loc 1 1415 0
	movq	-88(%rbp), %rax	# minus_litp, tmp112
	movq	$0, (%rax)	#, *minus_litp_16(D)
	.loc 1 1418 0
	jmp	.L129	#
.L132:
	.loc 1 1418 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# in, tmp113
	movq	32(%rax), %rax	# in_1->exp.operands, tmp114
	movq	%rax, -56(%rbp)	# tmp114, in
.L129:
	movq	-56(%rbp), %rax	# in, tmp115
	movzbl	16(%rax), %eax	# in_1->common.code, D.20820
	cmpb	$115, %al	#, D.20820
	je	.L130	#,
	.loc 1 1418 0 discriminator 3
	movq	-56(%rbp), %rax	# in, tmp116
	movzbl	16(%rax), %eax	# in_1->common.code, D.20820
	cmpb	$114, %al	#, D.20820
	je	.L130	#,
	.loc 1 1418 0 discriminator 1
	movq	-56(%rbp), %rax	# in, tmp117
	movzbl	16(%rax), %eax	# in_1->common.code, D.20820
	cmpb	$116, %al	#, D.20820
	jne	.L131	#,
.L130:
	.loc 1 1418 0 discriminator 2
	movq	-56(%rbp), %rax	# in, tmp118
	movq	32(%rax), %rdx	# in_1->exp.operands, D.20821
	movq	global_trees(%rip), %rax	# global_trees, D.20821
	cmpq	%rax, %rdx	# D.20821, D.20821
	je	.L131	#,
	.loc 1 1418 0 discriminator 1
	movq	-56(%rbp), %rax	# in, tmp119
	movq	8(%rax), %rax	# in_1->common.type, D.20821
	movzbl	61(%rax), %eax	# *_23, tmp122
	shrb	%al	# D.20822
	movl	%eax, %edx	# D.20822, D.20822
	movq	-56(%rbp), %rax	# in, tmp123
	movq	32(%rax), %rax	# in_1->exp.operands, D.20821
	movq	8(%rax), %rax	# _25->common.type, D.20821
	movzbl	61(%rax), %eax	# *_26, tmp126
	shrb	%al	# D.20822
	cmpb	%al, %dl	# D.20822, D.20822
	jne	.L131	#,
	movq	-56(%rbp), %rax	# in, tmp127
	movq	8(%rax), %rax	# in_1->common.type, D.20821
	movzbl	17(%rax), %eax	# *_28, tmp130
	shrb	$5, %al	#, D.20823
	movl	%eax, %edx	# D.20823, D.20823
	andl	$1, %edx	#, D.20823
	movq	-56(%rbp), %rax	# in, tmp131
	movq	32(%rax), %rax	# in_1->exp.operands, D.20821
	movq	8(%rax), %rax	# _30->common.type, D.20821
	movzbl	17(%rax), %eax	# *_31, tmp134
	shrb	$5, %al	#, D.20823
	andl	$1, %eax	#, D.20823
	cmpb	%al, %dl	# D.20823, D.20823
	je	.L132	#,
.L131:
	.loc 1 1420 0 is_stmt 1
	movq	-56(%rbp), %rax	# in, tmp135
	movzbl	16(%rax), %eax	# in_1->common.code, D.20820
	cmpb	$25, %al	#, D.20820
	je	.L133	#,
	.loc 1 1420 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# in, tmp136
	movzbl	16(%rax), %eax	# in_1->common.code, D.20820
	cmpb	$26, %al	#, D.20820
	jne	.L134	#,
.L133:
	.loc 1 1421 0 is_stmt 1
	movq	-80(%rbp), %rax	# litp, tmp137
	movq	-56(%rbp), %rdx	# in, tmp138
	movq	%rdx, (%rax)	# tmp138, *litp_15(D)
	jmp	.L135	#
.L134:
	.loc 1 1422 0
	movq	-56(%rbp), %rax	# in, tmp139
	movzbl	16(%rax), %eax	# in_1->common.code, D.20820
	movzbl	%al, %eax	# D.20820, D.20824
	cmpl	-60(%rbp), %eax	# code, D.20824
	je	.L136	#,
	.loc 1 1423 0
	movq	-56(%rbp), %rax	# in, tmp140
	movq	8(%rax), %rax	# in_1->common.type, D.20821
	movzbl	16(%rax), %eax	# _39->common.code, D.20820
	cmpb	$7, %al	#, D.20820
	je	.L137	#,
	.loc 1 1423 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# in, tmp141
	movq	8(%rax), %rax	# in_1->common.type, D.20821
	movzbl	16(%rax), %eax	# _41->common.code, D.20820
	cmpb	$8, %al	#, D.20820
	jne	.L138	#,
	movq	-56(%rbp), %rax	# in, tmp142
	movq	8(%rax), %rax	# in_1->common.type, D.20821
	movq	8(%rax), %rax	# _43->common.type, D.20821
	movzbl	16(%rax), %eax	# _44->common.code, D.20820
	cmpb	$7, %al	#, D.20820
	je	.L137	#,
.L138:
	.loc 1 1428 0 is_stmt 1
	cmpl	$59, -60(%rbp)	#, code
	jne	.L139	#,
	.loc 1 1428 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# in, tmp143
	movzbl	16(%rax), %eax	# in_1->common.code, D.20820
	cmpb	$60, %al	#, D.20820
	je	.L136	#,
.L139:
	.loc 1 1429 0 is_stmt 1
	cmpl	$60, -60(%rbp)	#, code
	jne	.L137	#,
	.loc 1 1429 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# in, tmp144
	movzbl	16(%rax), %eax	# in_1->common.code, D.20820
	cmpb	$59, %al	#, D.20820
	jne	.L137	#,
.L136:
.LBB5:
	.loc 1 1431 0 is_stmt 1
	movq	-56(%rbp), %rax	# in, tmp145
	movq	32(%rax), %rax	# in_1->exp.operands, tmp146
	movq	%rax, -16(%rbp)	# tmp146, op0
	.loc 1 1432 0
	movq	-56(%rbp), %rax	# in, tmp147
	movq	40(%rax), %rax	# in_1->exp.operands, tmp148
	movq	%rax, -8(%rbp)	# tmp148, op1
	.loc 1 1433 0
	movq	-56(%rbp), %rax	# in, tmp149
	movzbl	16(%rax), %eax	# in_1->common.code, D.20820
	cmpb	$60, %al	#, D.20820
	sete	%al	#, D.20825
	movzbl	%al, %eax	# D.20825, tmp150
	movl	%eax, -28(%rbp)	# tmp150, neg1_p
	.loc 1 1434 0
	movl	$0, -40(%rbp)	#, neg_litp_p
	movl	$0, -36(%rbp)	#, neg_conp_p
	movl	$0, -32(%rbp)	#, neg_var_p
	.loc 1 1437 0
	movq	-16(%rbp), %rax	# op0, tmp151
	movzbl	16(%rax), %eax	# op0_51->common.code, D.20820
	cmpb	$25, %al	#, D.20820
	je	.L140	#,
	.loc 1 1437 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# op0, tmp152
	movzbl	16(%rax), %eax	# op0_51->common.code, D.20820
	cmpb	$26, %al	#, D.20820
	jne	.L141	#,
.L140:
	.loc 1 1438 0 is_stmt 1
	movq	-80(%rbp), %rax	# litp, tmp153
	movq	-16(%rbp), %rdx	# op0, tmp154
	movq	%rdx, (%rax)	# tmp154, *litp_15(D)
	movq	$0, -16(%rbp)	#, op0
	jmp	.L142	#
.L141:
	.loc 1 1439 0
	movq	-8(%rbp), %rax	# op1, tmp155
	movzbl	16(%rax), %eax	# op1_52->common.code, D.20820
	cmpb	$25, %al	#, D.20820
	je	.L143	#,
	.loc 1 1439 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op1, tmp156
	movzbl	16(%rax), %eax	# op1_52->common.code, D.20820
	cmpb	$26, %al	#, D.20820
	jne	.L142	#,
.L143:
	.loc 1 1440 0 is_stmt 1
	movq	-80(%rbp), %rax	# litp, tmp157
	movq	-8(%rbp), %rdx	# op1, tmp158
	movq	%rdx, (%rax)	# tmp158, *litp_15(D)
	movl	-28(%rbp), %eax	# neg1_p, tmp159
	movl	%eax, -40(%rbp)	# tmp159, neg_litp_p
	movq	$0, -8(%rbp)	#, op1
.L142:
	.loc 1 1442 0
	cmpq	$0, -16(%rbp)	#, op0
	je	.L144	#,
	.loc 1 1442 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# op0, tmp160
	movzbl	17(%rax), %eax	# *op0_6, D.20820
	andl	$2, %eax	#, D.20820
	testb	%al, %al	# D.20820
	je	.L144	#,
	.loc 1 1443 0 is_stmt 1
	movq	-72(%rbp), %rax	# conp, tmp161
	movq	-16(%rbp), %rdx	# op0, tmp162
	movq	%rdx, (%rax)	# tmp162, *conp_14(D)
	movq	$0, -16(%rbp)	#, op0
	jmp	.L145	#
.L144:
	.loc 1 1444 0
	cmpq	$0, -8(%rbp)	#, op1
	je	.L145	#,
	.loc 1 1444 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# op1, tmp163
	movzbl	17(%rax), %eax	# *op1_8, D.20820
	andl	$2, %eax	#, D.20820
	testb	%al, %al	# D.20820
	je	.L145	#,
	.loc 1 1445 0 is_stmt 1
	movq	-72(%rbp), %rax	# conp, tmp164
	movq	-8(%rbp), %rdx	# op1, tmp165
	movq	%rdx, (%rax)	# tmp165, *conp_14(D)
	movl	-28(%rbp), %eax	# neg1_p, tmp166
	movl	%eax, -36(%rbp)	# tmp166, neg_conp_p
	movq	$0, -8(%rbp)	#, op1
.L145:
	.loc 1 1449 0
	cmpq	$0, -16(%rbp)	#, op0
	je	.L146	#,
	.loc 1 1449 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, op1
	je	.L146	#,
	.loc 1 1450 0 is_stmt 1
	movq	-56(%rbp), %rax	# in, tmp167
	movq	%rax, -24(%rbp)	# tmp167, var
	jmp	.L147	#
.L146:
	.loc 1 1451 0
	cmpq	$0, -16(%rbp)	#, op0
	je	.L148	#,
	.loc 1 1452 0
	movq	-16(%rbp), %rax	# op0, tmp168
	movq	%rax, -24(%rbp)	# tmp168, var
	jmp	.L147	#
.L148:
	.loc 1 1454 0
	movq	-8(%rbp), %rax	# op1, tmp169
	movq	%rax, -24(%rbp)	# tmp169, var
	movl	-28(%rbp), %eax	# neg1_p, tmp170
	movl	%eax, -32(%rbp)	# tmp170, neg_var_p
.L147:
	.loc 1 1457 0
	cmpl	$0, -40(%rbp)	#, neg_litp_p
	je	.L149	#,
	.loc 1 1458 0
	movq	-80(%rbp), %rax	# litp, tmp171
	movq	(%rax), %rdx	# *litp_15(D), D.20821
	movq	-88(%rbp), %rax	# minus_litp, tmp172
	movq	%rdx, (%rax)	# D.20821, *minus_litp_16(D)
	movq	-80(%rbp), %rax	# litp, tmp173
	movq	$0, (%rax)	#, *litp_15(D)
.L149:
	.loc 1 1459 0
	cmpl	$0, -36(%rbp)	#, neg_conp_p
	je	.L150	#,
	.loc 1 1460 0
	movq	-72(%rbp), %rax	# conp, tmp174
	movq	(%rax), %rax	# *conp_14(D), D.20821
	movq	%rax, %rdi	# D.20821,
	call	negate_expr	#
	movq	-72(%rbp), %rdx	# conp, tmp175
	movq	%rax, (%rdx)	# D.20821, *conp_14(D)
.L150:
	.loc 1 1461 0
	cmpl	$0, -32(%rbp)	#, neg_var_p
	je	.L151	#,
	.loc 1 1462 0
	movq	-24(%rbp), %rax	# var, tmp176
	movq	%rax, %rdi	# tmp176,
	call	negate_expr	#
	movq	%rax, -24(%rbp)	# tmp177, var
.LBE5:
	.loc 1 1430 0
	jmp	.L135	#
.L151:
	jmp	.L135	#
.L137:
	.loc 1 1464 0
	movq	-56(%rbp), %rax	# in, tmp178
	movzbl	17(%rax), %eax	# *in_1, D.20820
	andl	$2, %eax	#, D.20820
	testb	%al, %al	# D.20820
	je	.L152	#,
	.loc 1 1465 0
	movq	-72(%rbp), %rax	# conp, tmp179
	movq	-56(%rbp), %rdx	# in, tmp180
	movq	%rdx, (%rax)	# tmp180, *conp_14(D)
	jmp	.L135	#
.L152:
	.loc 1 1467 0
	movq	-56(%rbp), %rax	# in, tmp181
	movq	%rax, -24(%rbp)	# tmp181, var
.L135:
	.loc 1 1469 0
	cmpl	$0, -64(%rbp)	#, negate_p
	je	.L153	#,
	.loc 1 1471 0
	movq	-80(%rbp), %rax	# litp, tmp182
	movq	(%rax), %rax	# *litp_15(D), D.20821
	testq	%rax, %rax	# D.20821
	je	.L154	#,
	.loc 1 1472 0
	movq	-80(%rbp), %rax	# litp, tmp183
	movq	(%rax), %rdx	# *litp_15(D), D.20821
	movq	-88(%rbp), %rax	# minus_litp, tmp184
	movq	%rdx, (%rax)	# D.20821, *minus_litp_16(D)
	movq	-80(%rbp), %rax	# litp, tmp185
	movq	$0, (%rax)	#, *litp_15(D)
	jmp	.L155	#
.L154:
	.loc 1 1473 0
	movq	-88(%rbp), %rax	# minus_litp, tmp186
	movq	(%rax), %rax	# *minus_litp_16(D), D.20821
	testq	%rax, %rax	# D.20821
	je	.L155	#,
	.loc 1 1474 0
	movq	-88(%rbp), %rax	# minus_litp, tmp187
	movq	(%rax), %rdx	# *minus_litp_16(D), D.20821
	movq	-80(%rbp), %rax	# litp, tmp188
	movq	%rdx, (%rax)	# D.20821, *litp_15(D)
	movq	-88(%rbp), %rax	# minus_litp, tmp189
	movq	$0, (%rax)	#, *minus_litp_16(D)
.L155:
	.loc 1 1475 0
	movq	-72(%rbp), %rax	# conp, tmp190
	movq	(%rax), %rax	# *conp_14(D), D.20821
	movq	%rax, %rdi	# D.20821,
	call	negate_expr	#
	movq	-72(%rbp), %rdx	# conp, tmp191
	movq	%rax, (%rdx)	# D.20821, *conp_14(D)
	.loc 1 1476 0
	movq	-24(%rbp), %rax	# var, tmp192
	movq	%rax, %rdi	# tmp192,
	call	negate_expr	#
	movq	%rax, -24(%rbp)	# tmp193, var
.L153:
	.loc 1 1479 0
	movq	-24(%rbp), %rax	# var, D.20826
	.loc 1 1480 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	split_tree, .-split_tree
	.type	associate_trees, @function
associate_trees:
.LFB15:
	.loc 1 1491 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# t1, t1
	movq	%rsi, -32(%rbp)	# t2, t2
	movl	%edx, -36(%rbp)	# code, code
	movq	%rcx, -48(%rbp)	# type, type
	.loc 1 1492 0
	cmpq	$0, -24(%rbp)	#, t1
	jne	.L158	#,
	.loc 1 1493 0
	movq	-32(%rbp), %rax	# t2, D.20827
	jmp	.L159	#
.L158:
	.loc 1 1494 0
	cmpq	$0, -32(%rbp)	#, t2
	jne	.L160	#,
	.loc 1 1495 0
	movq	-24(%rbp), %rax	# t1, D.20827
	jmp	.L159	#
.L160:
	.loc 1 1500 0
	movq	-24(%rbp), %rax	# t1, tmp80
	movzbl	16(%rax), %eax	# t1_2(D)->common.code, D.20828
	movzbl	%al, %eax	# D.20828, D.20829
	cmpl	-36(%rbp), %eax	# code, D.20829
	je	.L161	#,
	.loc 1 1500 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t2, tmp81
	movzbl	16(%rax), %eax	# t2_3(D)->common.code, D.20828
	movzbl	%al, %eax	# D.20828, D.20829
	cmpl	-36(%rbp), %eax	# code, D.20829
	je	.L161	#,
	.loc 1 1501 0 is_stmt 1
	movq	-24(%rbp), %rax	# t1, tmp82
	movzbl	16(%rax), %eax	# t1_2(D)->common.code, D.20828
	cmpb	$60, %al	#, D.20828
	je	.L161	#,
	.loc 1 1501 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t2, tmp83
	movzbl	16(%rax), %eax	# t2_3(D)->common.code, D.20828
	cmpb	$60, %al	#, D.20828
	jne	.L162	#,
.L161:
	.loc 1 1503 0 is_stmt 1
	movq	-24(%rbp), %rax	# t1, tmp84
	movzbl	16(%rax), %eax	# t1_2(D)->common.code, D.20828
	cmpb	$77, %al	#, D.20828
	jne	.L163	#,
	.loc 1 1504 0
	movq	-24(%rbp), %rax	# t1, tmp85
	movq	32(%rax), %rdx	# t1_2(D)->exp.operands, D.20830
	movq	-48(%rbp), %rax	# type, tmp86
	movq	%rdx, %rsi	# D.20830,
	movq	%rax, %rdi	# tmp86,
	call	convert	#
	movq	%rax, %rbx	#, D.20830
	movq	-32(%rbp), %rdx	# t2, tmp87
	movq	-48(%rbp), %rax	# type, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	convert	#
	movq	%rax, %rdx	#, D.20830
	movq	-48(%rbp), %rax	# type, tmp89
	movq	%rbx, %rcx	# D.20830,
	movq	%rax, %rsi	# tmp89,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L159	#
.L163:
	.loc 1 1506 0
	movq	-32(%rbp), %rax	# t2, tmp90
	movzbl	16(%rax), %eax	# t2_3(D)->common.code, D.20828
	cmpb	$77, %al	#, D.20828
	jne	.L164	#,
	.loc 1 1507 0
	movq	-32(%rbp), %rax	# t2, tmp91
	movq	32(%rax), %rdx	# t2_3(D)->exp.operands, D.20830
	movq	-48(%rbp), %rax	# type, tmp92
	movq	%rdx, %rsi	# D.20830,
	movq	%rax, %rdi	# tmp92,
	call	convert	#
	movq	%rax, %rbx	#, D.20830
	movq	-24(%rbp), %rdx	# t1, tmp93
	movq	-48(%rbp), %rax	# type, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	convert	#
	movq	%rax, %rdx	#, D.20830
	movq	-48(%rbp), %rax	# type, tmp95
	movq	%rbx, %rcx	# D.20830,
	movq	%rax, %rsi	# tmp95,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L159	#
.L164:
	.loc 1 1510 0
	movq	-32(%rbp), %rdx	# t2, tmp96
	movq	-48(%rbp), %rax	# type, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	convert	#
	movq	%rax, %rbx	#, D.20830
	movq	-24(%rbp), %rdx	# t1, tmp98
	movq	-48(%rbp), %rax	# type, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	convert	#
	movq	%rax, %rdx	#, D.20830
	movq	-48(%rbp), %rsi	# type, tmp100
	movl	-36(%rbp), %eax	# code, tmp101
	movq	%rbx, %rcx	# D.20830,
	movl	%eax, %edi	# tmp101,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L159	#
.L162:
	.loc 1 1513 0
	movq	-32(%rbp), %rdx	# t2, tmp102
	movq	-48(%rbp), %rax	# type, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	convert	#
	movq	%rax, %rbx	#, D.20830
	movq	-24(%rbp), %rdx	# t1, tmp104
	movq	-48(%rbp), %rax	# type, tmp105
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	convert	#
	movq	%rax, %rdx	#, D.20830
	movq	-48(%rbp), %rsi	# type, tmp106
	movl	-36(%rbp), %eax	# code, tmp107
	movq	%rbx, %rcx	# D.20830,
	movl	%eax, %edi	# tmp107,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20830,
	call	fold	#
.L159:
	.loc 1 1514 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	associate_trees, .-associate_trees
	.type	int_const_binop, @function
int_const_binop:
.LFB16:
	.loc 1 1526 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movl	%edi, -100(%rbp)	# code, code
	movq	%rsi, -112(%rbp)	# arg1, arg1
	movq	%rdx, -120(%rbp)	# arg2, arg2
	movl	%ecx, -104(%rbp)	# notrunc, notrunc
	.loc 1 1534 0
	movq	-112(%rbp), %rax	# arg1, tmp163
	movq	8(%rax), %rax	# arg1_15(D)->common.type, tmp164
	movq	%rax, -32(%rbp)	# tmp164, type
	.loc 1 1535 0
	movq	-32(%rbp), %rax	# type, tmp165
	movzbl	17(%rax), %eax	# *type_16, tmp168
	shrb	$5, %al	#, D.20832
	andl	$1, %eax	#, D.20832
	movzbl	%al, %eax	# D.20832, tmp169
	movl	%eax, -88(%rbp)	# tmp169, uns
	.loc 1 1537 0
	movq	-32(%rbp), %rax	# type, tmp170
	movzbl	16(%rax), %eax	# type_16->common.code, D.20833
	cmpb	$6, %al	#, D.20833
	jne	.L166	#,
	.loc 1 1537 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# type, tmp171
	movzbl	62(%rax), %eax	# *type_16, D.20833
	andl	$2, %eax	#, D.20833
	testb	%al, %al	# D.20833
	je	.L166	#,
	.loc 1 1537 0 discriminator 3
	movl	$1, %eax	#, iftmp.93
	jmp	.L167	#
.L166:
	.loc 1 1537 0 discriminator 2
	movl	$0, %eax	#, iftmp.93
.L167:
	.loc 1 1536 0 is_stmt 1
	movl	%eax, -84(%rbp)	# iftmp.93, is_sizetype
	.loc 1 1538 0
	movl	$0, -96(%rbp)	#, overflow
	.loc 1 1539 0
	movl	$0, -92(%rbp)	#, no_overflow
	.loc 1 1541 0
	movq	-112(%rbp), %rax	# arg1, tmp172
	movq	32(%rax), %rax	# arg1_15(D)->int_cst.int_cst.low, tmp173
	movq	%rax, -48(%rbp)	# tmp173, int1l
	.loc 1 1542 0
	movq	-112(%rbp), %rax	# arg1, tmp174
	movq	40(%rax), %rax	# arg1_15(D)->int_cst.int_cst.high, tmp175
	movq	%rax, -24(%rbp)	# tmp175, int1h
	.loc 1 1543 0
	movq	-120(%rbp), %rax	# arg2, tmp176
	movq	32(%rax), %rax	# arg2_29(D)->int_cst.int_cst.low, tmp177
	movq	%rax, -40(%rbp)	# tmp177, int2l
	.loc 1 1544 0
	movq	-120(%rbp), %rax	# arg2, tmp178
	movq	40(%rax), %rax	# arg2_29(D)->int_cst.int_cst.high, tmp179
	movq	%rax, -16(%rbp)	# tmp179, int2h
	.loc 1 1546 0
	movl	-100(%rbp), %eax	# code, tmp181
	subl	$59, %eax	#, tmp180
	cmpl	$30, %eax	#, tmp180
	ja	.L168	#,
	movl	%eax, %eax	# tmp180, tmp182
	movq	.L170(,%rax,8), %rax	#, tmp183
	jmp	*%rax	# tmp183
	.section	.rodata
	.align 8
	.align 4
.L170:
	.quad	.L169
	.quad	.L171
	.quad	.L172
	.quad	.L173
	.quad	.L173
	.quad	.L173
	.quad	.L174
	.quad	.L175
	.quad	.L175
	.quad	.L175
	.quad	.L176
	.quad	.L168
	.quad	.L173
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L168
	.quad	.L177
	.quad	.L177
	.quad	.L168
	.quad	.L168
	.quad	.L178
	.quad	.L179
	.quad	.L180
	.quad	.L181
	.quad	.L182
	.quad	.L183
	.quad	.L184
	.quad	.L185
	.text
.L182:
	.loc 1 1549 0
	movq	-40(%rbp), %rax	# int2l, tmp184
	movq	-48(%rbp), %rdx	# int1l, tmp185
	orq	%rdx, %rax	# tmp185, low.94
	movq	%rax, -80(%rbp)	# low.94, low
	movq	-16(%rbp), %rax	# int2h, tmp186
	movq	-24(%rbp), %rdx	# int1h, tmp187
	orq	%rdx, %rax	# tmp187, hi.95
	movq	%rax, -72(%rbp)	# hi.95, hi
	.loc 1 1550 0
	jmp	.L186	#
.L183:
	.loc 1 1553 0
	movq	-40(%rbp), %rax	# int2l, tmp188
	movq	-48(%rbp), %rdx	# int1l, tmp189
	xorq	%rdx, %rax	# tmp189, low.96
	movq	%rax, -80(%rbp)	# low.96, low
	movq	-16(%rbp), %rax	# int2h, tmp190
	movq	-24(%rbp), %rdx	# int1h, tmp191
	xorq	%rdx, %rax	# tmp191, hi.97
	movq	%rax, -72(%rbp)	# hi.97, hi
	.loc 1 1554 0
	jmp	.L186	#
.L184:
	.loc 1 1557 0
	movq	-40(%rbp), %rax	# int2l, tmp192
	movq	-48(%rbp), %rdx	# int1l, tmp193
	andq	%rdx, %rax	# tmp193, low.98
	movq	%rax, -80(%rbp)	# low.98, low
	movq	-16(%rbp), %rax	# int2h, tmp194
	movq	-24(%rbp), %rdx	# int1h, tmp195
	andq	%rdx, %rax	# tmp195, hi.99
	movq	%rax, -72(%rbp)	# hi.99, hi
	.loc 1 1558 0
	jmp	.L186	#
.L185:
	.loc 1 1561 0
	movq	-40(%rbp), %rax	# int2l, tmp196
	notq	%rax	# D.20834
	andq	-48(%rbp), %rax	# int1l, low.100
	movq	%rax, -80(%rbp)	# low.100, low
	movq	-16(%rbp), %rax	# int2h, tmp197
	notq	%rax	# D.20835
	andq	-24(%rbp), %rax	# int1h, hi.101
	movq	%rax, -72(%rbp)	# hi.101, hi
	.loc 1 1562 0
	jmp	.L186	#
.L179:
	.loc 1 1565 0
	negq	-40(%rbp)	# int2l
.L178:
	.loc 1 1570 0
	cmpl	$0, -88(%rbp)	#, uns
	sete	%al	#, D.20836
	movzbl	%al, %edi	# D.20836, D.20837
	movq	-32(%rbp), %rax	# type, tmp198
	movzwl	60(%rax), %eax	# *type_16, tmp201
	andw	$511, %ax	#, D.20838
	movzwl	%ax, %ecx	# D.20838, D.20839
	movq	-40(%rbp), %rdx	# int2l, int2l.102
	leaq	-72(%rbp), %r9	#, tmp202
	leaq	-80(%rbp), %r8	#, tmp203
	movq	-24(%rbp), %rsi	# int1h, tmp204
	movq	-48(%rbp), %rax	# int1l, tmp205
	movl	%edi, (%rsp)	# D.20837,
	movq	%rax, %rdi	# tmp205,
	call	lshift_double	#
	.loc 1 1572 0
	movl	$1, -92(%rbp)	#, no_overflow
	.loc 1 1573 0
	jmp	.L186	#
.L181:
	.loc 1 1576 0
	negq	-40(%rbp)	# int2l
.L180:
	.loc 1 1578 0
	movq	-32(%rbp), %rax	# type, tmp206
	movzwl	60(%rax), %eax	# *type_16, tmp209
	andw	$511, %ax	#, D.20838
	movzwl	%ax, %ecx	# D.20838, D.20839
	movq	-40(%rbp), %rdx	# int2l, int2l.103
	leaq	-72(%rbp), %r8	#, tmp210
	leaq	-80(%rbp), %rdi	#, tmp211
	movq	-24(%rbp), %rsi	# int1h, tmp212
	movq	-48(%rbp), %rax	# int1l, tmp213
	movq	%r8, %r9	# tmp210,
	movq	%rdi, %r8	# tmp211,
	movq	%rax, %rdi	# tmp213,
	call	lrotate_double	#
	.loc 1 1580 0
	jmp	.L186	#
.L169:
	.loc 1 1583 0
	leaq	-72(%rbp), %r8	#, tmp214
	leaq	-80(%rbp), %rdi	#, tmp215
	movq	-16(%rbp), %rcx	# int2h, tmp216
	movq	-40(%rbp), %rdx	# int2l, tmp217
	movq	-24(%rbp), %rsi	# int1h, tmp218
	movq	-48(%rbp), %rax	# int1l, tmp219
	movq	%r8, %r9	# tmp214,
	movq	%rdi, %r8	# tmp215,
	movq	%rax, %rdi	# tmp219,
	call	add_double	#
	movl	%eax, -96(%rbp)	# tmp220, overflow
	.loc 1 1584 0
	jmp	.L186	#
.L171:
	.loc 1 1587 0
	leaq	-72(%rbp), %rcx	#, tmp221
	leaq	-80(%rbp), %rdx	#, tmp222
	movq	-16(%rbp), %rsi	# int2h, tmp223
	movq	-40(%rbp), %rax	# int2l, tmp224
	movq	%rax, %rdi	# tmp224,
	call	neg_double	#
	.loc 1 1588 0
	movq	-72(%rbp), %rcx	# hi, hi.104
	movq	-80(%rbp), %rdx	# low, low.105
	leaq	-72(%rbp), %r8	#, tmp225
	leaq	-80(%rbp), %rdi	#, tmp226
	movq	-24(%rbp), %rsi	# int1h, tmp227
	movq	-48(%rbp), %rax	# int1l, tmp228
	movq	%r8, %r9	# tmp225,
	movq	%rdi, %r8	# tmp226,
	movq	%rax, %rdi	# tmp228,
	call	add_double	#
	.loc 1 1589 0
	movq	-72(%rbp), %rax	# hi, hi.106
	xorq	-16(%rbp), %rax	# int2h, D.20835
	notq	%rax	# D.20835
	movq	%rax, %rdx	# D.20835, D.20835
	movq	-72(%rbp), %rax	# hi, hi.107
	xorq	-24(%rbp), %rax	# int1h, D.20835
	andq	%rdx, %rax	# D.20835, D.20835
	shrq	$63, %rax	#, tmp229
	movzbl	%al, %eax	# D.20836, tmp230
	movl	%eax, -96(%rbp)	# tmp230, overflow
	.loc 1 1590 0
	jmp	.L186	#
.L172:
	.loc 1 1593 0
	leaq	-72(%rbp), %r8	#, tmp231
	leaq	-80(%rbp), %rdi	#, tmp232
	movq	-16(%rbp), %rcx	# int2h, tmp233
	movq	-40(%rbp), %rdx	# int2l, tmp234
	movq	-24(%rbp), %rsi	# int1h, tmp235
	movq	-48(%rbp), %rax	# int1l, tmp236
	movq	%r8, %r9	# tmp231,
	movq	%rdi, %r8	# tmp232,
	movq	%rax, %rdi	# tmp236,
	call	mul_double	#
	movl	%eax, -96(%rbp)	# tmp237, overflow
	.loc 1 1594 0
	jmp	.L186	#
.L173:
	.loc 1 1600 0
	cmpq	$0, -16(%rbp)	#, int2h
	jne	.L174	#,
	.loc 1 1600 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# int2l, int2l.108
	testq	%rax, %rax	# int2l.108
	jle	.L174	#,
	.loc 1 1601 0 is_stmt 1
	movq	-112(%rbp), %rax	# arg1, tmp238
	movzbl	18(%rax), %eax	# *arg1_15(D), D.20833
	andl	$4, %eax	#, D.20833
	testb	%al, %al	# D.20833
	jne	.L174	#,
	.loc 1 1602 0
	movq	-120(%rbp), %rax	# arg2, tmp239
	movzbl	18(%rax), %eax	# *arg2_29(D), D.20833
	andl	$4, %eax	#, D.20833
	testb	%al, %al	# D.20833
	jne	.L174	#,
	.loc 1 1603 0
	cmpq	$0, -24(%rbp)	#, int1h
	jne	.L174	#,
	.loc 1 1603 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# int1l, int1l.109
	testq	%rax, %rax	# int1l.109
	js	.L174	#,
	.loc 1 1605 0 is_stmt 1
	cmpl	$63, -100(%rbp)	#, code
	jne	.L187	#,
	.loc 1 1606 0
	movq	-48(%rbp), %rax	# int1l, tmp240
	movq	-40(%rbp), %rdx	# int2l, tmp241
	addq	%rdx, %rax	# tmp241, D.20834
	subq	$1, %rax	#, tmp242
	movq	%rax, -48(%rbp)	# tmp242, int1l
.L187:
	.loc 1 1608 0
	movq	-48(%rbp), %rax	# int1l, tmp245
	movl	$0, %edx	#, tmp244
	divq	-40(%rbp)	# int2l
	movq	%rax, -80(%rbp)	# low.110, low
	movq	$0, -72(%rbp)	#, hi
	.loc 1 1609 0
	jmp	.L186	#
.L174:
	.loc 1 1615 0
	cmpq	$0, -16(%rbp)	#, int2h
	jne	.L188	#,
	.loc 1 1615 0 is_stmt 0 discriminator 1
	cmpq	$1, -40(%rbp)	#, int2l
	jne	.L188	#,
	.loc 1 1617 0 is_stmt 1
	movq	-48(%rbp), %rax	# int1l, tmp246
	movq	%rax, -80(%rbp)	# tmp246, low
	movq	-24(%rbp), %rax	# int1h, tmp247
	movq	%rax, -72(%rbp)	# tmp247, hi
	.loc 1 1618 0
	jmp	.L186	#
.L188:
	.loc 1 1620 0
	movq	-48(%rbp), %rax	# int1l, tmp248
	cmpq	-40(%rbp), %rax	# int2l, tmp248
	jne	.L189	#,
	.loc 1 1620 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# int1h, tmp249
	cmpq	-16(%rbp), %rax	# int2h, tmp249
	jne	.L189	#,
	.loc 1 1621 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, int1l
	jne	.L190	#,
	.loc 1 1621 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, int1h
	je	.L189	#,
.L190:
	.loc 1 1623 0 is_stmt 1
	movq	$1, -80(%rbp)	#, low
	movq	$0, -72(%rbp)	#, hi
	.loc 1 1624 0
	jmp	.L186	#
.L189:
	.loc 1 1626 0
	movq	-16(%rbp), %r9	# int2h, tmp250
	movq	-40(%rbp), %r8	# int2l, tmp251
	movq	-24(%rbp), %rcx	# int1h, tmp252
	movq	-48(%rbp), %rdx	# int1l, tmp253
	movl	-88(%rbp), %esi	# uns, tmp254
	movl	-100(%rbp), %eax	# code, tmp255
	leaq	-56(%rbp), %rdi	#, tmp256
	movq	%rdi, 24(%rsp)	# tmp256,
	leaq	-64(%rbp), %rdi	#, tmp257
	movq	%rdi, 16(%rsp)	# tmp257,
	leaq	-72(%rbp), %rdi	#, tmp258
	movq	%rdi, 8(%rsp)	# tmp258,
	leaq	-80(%rbp), %rdi	#, tmp259
	movq	%rdi, (%rsp)	# tmp259,
	movl	%eax, %edi	# tmp255,
	call	div_and_round_double	#
	movl	%eax, -96(%rbp)	# tmp260, overflow
	.loc 1 1628 0
	jmp	.L186	#
.L175:
	.loc 1 1633 0
	cmpq	$0, -16(%rbp)	#, int2h
	jne	.L176	#,
	.loc 1 1633 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# int2l, int2l.111
	testq	%rax, %rax	# int2l.111
	jle	.L176	#,
	.loc 1 1634 0 is_stmt 1
	movq	-112(%rbp), %rax	# arg1, tmp261
	movzbl	18(%rax), %eax	# *arg1_15(D), D.20833
	andl	$4, %eax	#, D.20833
	testb	%al, %al	# D.20833
	jne	.L176	#,
	.loc 1 1635 0
	movq	-120(%rbp), %rax	# arg2, tmp262
	movzbl	18(%rax), %eax	# *arg2_29(D), D.20833
	andl	$4, %eax	#, D.20833
	testb	%al, %al	# D.20833
	jne	.L176	#,
	.loc 1 1636 0
	cmpq	$0, -24(%rbp)	#, int1h
	jne	.L176	#,
	.loc 1 1636 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# int1l, int1l.112
	testq	%rax, %rax	# int1l.112
	js	.L176	#,
	.loc 1 1638 0 is_stmt 1
	cmpl	$67, -100(%rbp)	#, code
	jne	.L191	#,
	.loc 1 1639 0
	movq	-48(%rbp), %rax	# int1l, tmp263
	movq	-40(%rbp), %rdx	# int2l, tmp264
	addq	%rdx, %rax	# tmp264, D.20834
	subq	$1, %rax	#, tmp265
	movq	%rax, -48(%rbp)	# tmp265, int1l
.L191:
	.loc 1 1640 0
	movq	-48(%rbp), %rax	# int1l, tmp266
	movl	$0, %edx	#, tmp267
	divq	-40(%rbp)	# int2l
	movq	%rdx, %rax	# tmp267, low.113
	movq	%rax, -80(%rbp)	# low.113, low
	movq	$0, -72(%rbp)	#, hi
	.loc 1 1641 0
	jmp	.L186	#
.L176:
	.loc 1 1647 0
	movq	-16(%rbp), %r9	# int2h, tmp269
	movq	-40(%rbp), %r8	# int2l, tmp270
	movq	-24(%rbp), %rcx	# int1h, tmp271
	movq	-48(%rbp), %rdx	# int1l, tmp272
	movl	-88(%rbp), %esi	# uns, tmp273
	movl	-100(%rbp), %eax	# code, tmp274
	leaq	-72(%rbp), %rdi	#, tmp275
	movq	%rdi, 24(%rsp)	# tmp275,
	leaq	-80(%rbp), %rdi	#, tmp276
	movq	%rdi, 16(%rsp)	# tmp276,
	leaq	-56(%rbp), %rdi	#, tmp277
	movq	%rdi, 8(%rsp)	# tmp277,
	leaq	-64(%rbp), %rdi	#, tmp278
	movq	%rdi, (%rsp)	# tmp278,
	movl	%eax, %edi	# tmp274,
	call	div_and_round_double	#
	movl	%eax, -96(%rbp)	# tmp279, overflow
	.loc 1 1650 0
	jmp	.L186	#
.L177:
	.loc 1 1654 0
	cmpl	$0, -88(%rbp)	#, uns
	je	.L192	#,
	.loc 1 1655 0
	movq	-24(%rbp), %rdx	# int1h, int1h.115
	.loc 1 1656 0
	movq	-16(%rbp), %rax	# int2h, int2h.116
	.loc 1 1657 0
	cmpq	%rax, %rdx	# int2h.116, int1h.115
	jb	.L193	#,
	.loc 1 1657 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# int1h, tmp280
	cmpq	-16(%rbp), %rax	# int2h, tmp280
	jne	.L194	#,
	.loc 1 1659 0 is_stmt 1
	movq	-48(%rbp), %rax	# int1l, tmp281
	cmpq	-40(%rbp), %rax	# int2l, tmp281
	jae	.L194	#,
.L193:
	.loc 1 1657 0 discriminator 1
	movl	$1, %eax	#, iftmp.114
	jmp	.L195	#
.L194:
	.loc 1 1657 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.114
.L195:
	.loc 1 1655 0 is_stmt 1
	cltq
	movq	%rax, -80(%rbp)	# low.117, low
	jmp	.L196	#
.L192:
	.loc 1 1662 0
	movq	-24(%rbp), %rax	# int1h, tmp282
	cmpq	-16(%rbp), %rax	# int2h, tmp282
	jl	.L197	#,
	.loc 1 1662 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# int1h, tmp283
	cmpq	-16(%rbp), %rax	# int2h, tmp283
	jne	.L198	#,
	.loc 1 1662 0 discriminator 3
	movq	-48(%rbp), %rax	# int1l, tmp284
	cmpq	-40(%rbp), %rax	# int2l, tmp284
	jae	.L198	#,
.L197:
	.loc 1 1662 0 discriminator 1
	movl	$1, %eax	#, iftmp.118
	jmp	.L199	#
.L198:
	.loc 1 1662 0 discriminator 4
	movl	$0, %eax	#, iftmp.118
.L199:
	.loc 1 1661 0 is_stmt 1
	cltq
	movq	%rax, -80(%rbp)	# low.119, low
.L196:
	.loc 1 1664 0
	cmpl	$78, -100(%rbp)	#, code
	sete	%al	#, D.20836
	movzbl	%al, %edx	# D.20836, D.20834
	movq	-80(%rbp), %rax	# low, low.120
	cmpq	%rax, %rdx	# low.120, D.20834
	jne	.L200	#,
	.loc 1 1665 0
	movq	-48(%rbp), %rax	# int1l, tmp285
	movq	%rax, -80(%rbp)	# tmp285, low
	movq	-24(%rbp), %rax	# int1h, tmp286
	movq	%rax, -72(%rbp)	# tmp286, hi
	.loc 1 1668 0
	jmp	.L186	#
.L200:
	.loc 1 1667 0
	movq	-40(%rbp), %rax	# int2l, tmp287
	movq	%rax, -80(%rbp)	# tmp287, low
	movq	-16(%rbp), %rax	# int2h, tmp288
	movq	%rax, -72(%rbp)	# tmp288, hi
	.loc 1 1668 0
	jmp	.L186	#
.L168:
	.loc 1 1671 0
	movl	$__FUNCTION__.12397, %edx	#,
	movl	$1671, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L186:
	.loc 1 1677 0
	cmpl	$0, -84(%rbp)	#, is_sizetype
	je	.L202	#,
	.loc 1 1678 0
	movq	-72(%rbp), %rax	# hi, hi.121
	testq	%rax, %rax	# hi.121
	jne	.L203	#,
	.loc 1 1678 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# low, low.122
	testq	%rax, %rax	# low.123
	jns	.L204	#,
.L203:
	.loc 1 1679 0 is_stmt 1
	movq	-72(%rbp), %rax	# hi, hi.124
	cmpq	$-1, %rax	#, hi.124
	jne	.L202	#,
	.loc 1 1679 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# low, low.125
	testq	%rax, %rax	# low.126
	jns	.L202	#,
.L204:
	.loc 1 1680 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, overflow
	jne	.L202	#,
	.loc 1 1680 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# arg1, tmp289
	movzbl	18(%rax), %eax	# *arg1_15(D), D.20833
	andl	$8, %eax	#, D.20833
	testb	%al, %al	# D.20833
	jne	.L202	#,
	movq	-120(%rbp), %rax	# arg2, tmp290
	movzbl	18(%rax), %eax	# *arg2_29(D), D.20833
	andl	$8, %eax	#, D.20833
	testb	%al, %al	# D.20833
	jne	.L202	#,
	.loc 1 1681 0 is_stmt 1
	movq	-80(%rbp), %rax	# low, low.127
	movq	-32(%rbp), %rdx	# type, tmp291
	movq	%rdx, %rsi	# tmp291,
	movq	%rax, %rdi	# low.128,
	call	size_int_type_wide	#
	jmp	.L218	#
.L202:
	.loc 1 1684 0
	movq	-72(%rbp), %rdx	# hi, hi.129
	movq	-80(%rbp), %rax	# low, low.130
	movq	%rdx, %rsi	# hi.129,
	movq	%rax, %rdi	# low.130,
	call	build_int_2_wide	#
	movq	%rax, -8(%rbp)	# tmp292, t
	.loc 1 1685 0
	movq	-112(%rbp), %rax	# arg1, tmp293
	movq	8(%rax), %rdx	# arg1_15(D)->common.type, D.20840
	movq	-8(%rbp), %rax	# t, tmp294
	movq	%rdx, 8(%rax)	# D.20840, t_112->common.type
	.loc 1 1689 0
	cmpl	$0, -104(%rbp)	#, notrunc
	je	.L206	#,
	.loc 1 1690 0
	cmpl	$0, -88(%rbp)	#, uns
	je	.L207	#,
	.loc 1 1690 0 is_stmt 0 discriminator 2
	cmpl	$0, -84(%rbp)	#, is_sizetype
	je	.L208	#,
.L207:
	.loc 1 1690 0 discriminator 1
	cmpl	$0, -96(%rbp)	#, overflow
	je	.L208	#,
	.loc 1 1690 0 discriminator 3
	movl	$1, %eax	#, iftmp.132
	jmp	.L209	#
.L208:
	.loc 1 1690 0 discriminator 1
	movl	$0, %eax	#, iftmp.132
.L209:
	.loc 1 1689 0 is_stmt 1
	movl	%eax, %edx	# iftmp.132, iftmp.131
	jmp	.L210	#
.L206:
	.loc 1 1691 0
	cmpl	$0, -88(%rbp)	#, uns
	je	.L211	#,
	.loc 1 1691 0 is_stmt 0 discriminator 2
	cmpl	$0, -84(%rbp)	#, is_sizetype
	je	.L212	#,
.L211:
	.loc 1 1691 0 discriminator 1
	cmpl	$0, -96(%rbp)	#, overflow
	je	.L212	#,
	.loc 1 1691 0 discriminator 3
	movl	$1, %eax	#, iftmp.134
	jmp	.L213	#
.L212:
	.loc 1 1691 0 discriminator 1
	movl	$0, %eax	#, iftmp.134
.L213:
	.loc 1 1691 0 discriminator 4
	movq	-8(%rbp), %rdx	# t, tmp295
	movl	%eax, %esi	# iftmp.134,
	movq	%rdx, %rdi	# tmp295,
	call	force_fit_type	#
	.loc 1 1692 0 is_stmt 1 discriminator 4
	testl	%eax, %eax	# D.20837
	je	.L214	#,
	.loc 1 1692 0 is_stmt 0 discriminator 1
	cmpl	$0, -92(%rbp)	#, no_overflow
	jne	.L214	#,
	.loc 1 1692 0 discriminator 3
	movl	$1, %eax	#, iftmp.133
	jmp	.L215	#
.L214:
	.loc 1 1692 0 discriminator 2
	movl	$0, %eax	#, iftmp.133
.L215:
	.loc 1 1689 0 is_stmt 1
	movl	%eax, %edx	# iftmp.133, iftmp.131
.L210:
	.loc 1 1693 0
	movq	-112(%rbp), %rax	# arg1, tmp296
	movzbl	18(%rax), %eax	# *arg1_15(D), tmp299
	shrb	$3, %al	#, D.20832
	andl	$1, %eax	#, D.20832
	.loc 1 1689 0
	orl	%eax, %edx	# D.20841, D.20841
	.loc 1 1694 0
	movq	-120(%rbp), %rax	# arg2, tmp300
	movzbl	18(%rax), %eax	# *arg2_29(D), tmp303
	shrb	$3, %al	#, D.20832
	andl	$1, %eax	#, D.20832
	.loc 1 1689 0
	orl	%edx, %eax	# D.20841, D.20841
	andl	$1, %eax	#, D.20832
	movl	%eax, %edx	# D.20832, D.20832
	movq	-8(%rbp), %rax	# t, tmp304
	andl	$1, %edx	#, tmp306
	leal	0(,%rdx,8), %ecx	#, tmp307
	movzbl	18(%rax), %edx	#, tmp308
	andl	$-9, %edx	#, tmp309
	orl	%ecx, %edx	# tmp307, tmp310
	movb	%dl, 18(%rax)	# tmp310,
	.loc 1 1698 0
	cmpl	$0, -84(%rbp)	#, is_sizetype
	je	.L216	#,
	.loc 1 1699 0
	movq	-8(%rbp), %rax	# t, tmp311
	movzbl	18(%rax), %eax	# *t_112, D.20833
	andl	$8, %eax	#, D.20833
	testb	%al, %al	# D.20833
	jne	.L216	#,
	.loc 1 1700 0
	movq	-8(%rbp), %rax	# t, tmp312
	movq	40(%rax), %rdx	# t_112->int_cst.int_cst.high, D.20835
	movq	-72(%rbp), %rax	# hi, hi.135
	cmpq	%rax, %rdx	# hi.135, D.20835
	jne	.L217	#,
	.loc 1 1701 0
	movq	-8(%rbp), %rax	# t, tmp313
	movq	32(%rax), %rdx	# t_112->int_cst.int_cst.low, D.20834
	movq	-80(%rbp), %rax	# low, low.136
	cmpq	%rax, %rdx	# low.136, D.20834
	je	.L216	#,
.L217:
	.loc 1 1702 0
	movq	-8(%rbp), %rax	# t, tmp314
	movzbl	18(%rax), %edx	#, tmp317
	orl	$8, %edx	#, tmp318
	movb	%dl, 18(%rax)	# tmp318,
.L216:
	.loc 1 1704 0
	movq	-8(%rbp), %rax	# t, tmp319
	movzbl	18(%rax), %eax	# *t_112, tmp322
	shrb	$3, %al	#, D.20832
	andl	$1, %eax	#, D.20832
	movl	%eax, %edx	# D.20832, D.20842
	.loc 1 1705 0
	movq	-112(%rbp), %rax	# arg1, tmp323
	movzbl	18(%rax), %eax	# *arg1_15(D), tmp326
	shrb	$2, %al	#, D.20832
	andl	$1, %eax	#, D.20832
	.loc 1 1704 0
	orl	%edx, %eax	# D.20842, D.20842
	movl	%eax, %edx	# D.20842, D.20841
	.loc 1 1706 0
	movq	-120(%rbp), %rax	# arg2, tmp327
	movzbl	18(%rax), %eax	# *arg2_29(D), tmp330
	shrb	$2, %al	#, D.20832
	andl	$1, %eax	#, D.20832
	.loc 1 1704 0
	orl	%edx, %eax	# D.20841, D.20841
	andl	$1, %eax	#, D.20832
	movl	%eax, %edx	# D.20832, D.20832
	movq	-8(%rbp), %rax	# t, tmp331
	andl	$1, %edx	#, tmp333
	leal	0(,%rdx,4), %ecx	#, tmp334
	movzbl	18(%rax), %edx	#, tmp335
	andl	$-5, %edx	#, tmp336
	orl	%ecx, %edx	# tmp334, tmp337
	movb	%dl, 18(%rax)	# tmp337,
	.loc 1 1707 0
	movq	-8(%rbp), %rax	# t, D.20831
.L218:
	.loc 1 1708 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	int_const_binop, .-int_const_binop
	.type	const_binop_1, @function
const_binop_1:
.LFB17:
	.loc 1 1725 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# data, data
	.loc 1 1726 0
	movq	-88(%rbp), %rax	# data, tmp68
	movq	%rax, -72(%rbp)	# tmp68, args
	.loc 1 1730 0
	movq	-72(%rbp), %rax	# args, tmp69
	leaq	40(%rax), %rcx	#, D.20843
	movq	-72(%rbp), %rax	# args, tmp70
	leaq	16(%rax), %rdx	#, D.20843
	movq	-72(%rbp), %rax	# args, tmp71
	movl	(%rax), %eax	# args_2->code, D.20844
	movl	%eax, %esi	# D.20844, D.20845
	leaq	-64(%rbp), %rax	#, tmp72
	movq	%rax, %rdi	# tmp72,
	call	earith	#
	.loc 1 1770 0
	movq	-72(%rbp), %rax	# args, tmp73
	movq	8(%rax), %rax	# args_2->type, D.20846
	movzbl	61(%rax), %eax	# *_7, tmp76
	shrb	%al	# D.20847
	.loc 1 1769 0
	movzbl	%al, %edx	# D.20847, D.20848
	leaq	-32(%rbp), %rax	#, tmp77
	movq	-64(%rbp), %rcx	# value, tmp78
	movq	%rcx, (%rsp)	# tmp78,
	movq	-56(%rbp), %rcx	# value, tmp79
	movq	%rcx, 8(%rsp)	# tmp79,
	movq	-48(%rbp), %rcx	# value, tmp80
	movq	%rcx, 16(%rsp)	# tmp80,
	movl	%edx, %esi	# D.20848,
	movq	%rax, %rdi	# tmp77,
	call	real_value_truncate	#
	movq	-72(%rbp), %rax	# args, tmp81
	movq	8(%rax), %rax	# args_2->type, D.20846
	movq	-32(%rbp), %rdx	# D.14364, tmp82
	movq	%rdx, (%rsp)	# tmp82,
	movq	-24(%rbp), %rdx	# D.14364, tmp83
	movq	%rdx, 8(%rsp)	# tmp83,
	movq	-16(%rbp), %rdx	# D.14364, tmp84
	movq	%rdx, 16(%rsp)	# tmp84,
	movq	%rax, %rdi	# D.20846,
	call	build_real	#
	movq	-72(%rbp), %rdx	# args, tmp85
	movq	%rax, 64(%rdx)	# D.20846, args_2->t
	.loc 1 1771 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	const_binop_1, .-const_binop_1
	.type	const_binop, @function
const_binop:
.LFB18:
	.loc 1 1784 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$272, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -244(%rbp)	# code, code
	movq	%rsi, -256(%rbp)	# arg1, arg1
	movq	%rdx, -264(%rbp)	# arg2, arg2
	movl	%ecx, -248(%rbp)	# notrunc, notrunc
	.loc 1 1785 0
	jmp	.L221	#
.L224:
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# arg1, tmp147
	movq	32(%rax), %rax	# arg1_1->exp.operands, tmp148
	movq	%rax, -256(%rbp)	# tmp148, arg1
.L221:
	movq	-256(%rbp), %rax	# arg1, tmp149
	movzbl	16(%rax), %eax	# arg1_1->common.code, D.20852
	cmpb	$115, %al	#, D.20852
	je	.L222	#,
	.loc 1 1785 0 discriminator 3
	movq	-256(%rbp), %rax	# arg1, tmp150
	movzbl	16(%rax), %eax	# arg1_1->common.code, D.20852
	cmpb	$114, %al	#, D.20852
	je	.L222	#,
	.loc 1 1785 0 discriminator 1
	movq	-256(%rbp), %rax	# arg1, tmp151
	movzbl	16(%rax), %eax	# arg1_1->common.code, D.20852
	cmpb	$116, %al	#, D.20852
	jne	.L223	#,
.L222:
	.loc 1 1785 0 discriminator 2
	movq	-256(%rbp), %rax	# arg1, tmp152
	movq	32(%rax), %rdx	# arg1_1->exp.operands, D.20853
	movq	global_trees(%rip), %rax	# global_trees, D.20853
	cmpq	%rax, %rdx	# D.20853, D.20853
	je	.L223	#,
	.loc 1 1785 0 discriminator 1
	movq	-256(%rbp), %rax	# arg1, tmp153
	movq	8(%rax), %rax	# arg1_1->common.type, D.20853
	movzbl	61(%rax), %eax	# *_16, tmp156
	shrb	%al	# D.20854
	movl	%eax, %edx	# D.20854, D.20854
	movq	-256(%rbp), %rax	# arg1, tmp157
	movq	32(%rax), %rax	# arg1_1->exp.operands, D.20853
	movq	8(%rax), %rax	# _18->common.type, D.20853
	movzbl	61(%rax), %eax	# *_19, tmp160
	shrb	%al	# D.20854
	cmpb	%al, %dl	# D.20854, D.20854
	je	.L224	#,
.L223:
	.loc 1 1786 0 is_stmt 1
	jmp	.L225	#
.L228:
	.loc 1 1786 0 is_stmt 0 discriminator 1
	movq	-264(%rbp), %rax	# arg2, tmp161
	movq	32(%rax), %rax	# arg2_2->exp.operands, tmp162
	movq	%rax, -264(%rbp)	# tmp162, arg2
.L225:
	movq	-264(%rbp), %rax	# arg2, tmp163
	movzbl	16(%rax), %eax	# arg2_2->common.code, D.20852
	cmpb	$115, %al	#, D.20852
	je	.L226	#,
	.loc 1 1786 0 discriminator 3
	movq	-264(%rbp), %rax	# arg2, tmp164
	movzbl	16(%rax), %eax	# arg2_2->common.code, D.20852
	cmpb	$114, %al	#, D.20852
	je	.L226	#,
	.loc 1 1786 0 discriminator 1
	movq	-264(%rbp), %rax	# arg2, tmp165
	movzbl	16(%rax), %eax	# arg2_2->common.code, D.20852
	cmpb	$116, %al	#, D.20852
	jne	.L227	#,
.L226:
	.loc 1 1786 0 discriminator 2
	movq	-264(%rbp), %rax	# arg2, tmp166
	movq	32(%rax), %rdx	# arg2_2->exp.operands, D.20853
	movq	global_trees(%rip), %rax	# global_trees, D.20853
	cmpq	%rax, %rdx	# D.20853, D.20853
	je	.L227	#,
	.loc 1 1786 0 discriminator 1
	movq	-264(%rbp), %rax	# arg2, tmp167
	movq	8(%rax), %rax	# arg2_2->common.type, D.20853
	movzbl	61(%rax), %eax	# *_28, tmp170
	shrb	%al	# D.20854
	movl	%eax, %edx	# D.20854, D.20854
	movq	-264(%rbp), %rax	# arg2, tmp171
	movq	32(%rax), %rax	# arg2_2->exp.operands, D.20853
	movq	8(%rax), %rax	# _30->common.type, D.20853
	movzbl	61(%rax), %eax	# *_31, tmp174
	shrb	%al	# D.20854
	cmpb	%al, %dl	# D.20854, D.20854
	je	.L228	#,
.L227:
	.loc 1 1788 0 is_stmt 1
	movq	-256(%rbp), %rax	# arg1, tmp175
	movzbl	16(%rax), %eax	# arg1_1->common.code, D.20852
	cmpb	$25, %al	#, D.20852
	jne	.L229	#,
	.loc 1 1789 0
	movl	-248(%rbp), %ecx	# notrunc, tmp176
	movq	-264(%rbp), %rdx	# arg2, tmp177
	movq	-256(%rbp), %rsi	# arg1, tmp178
	movl	-244(%rbp), %eax	# code, tmp179
	movl	%eax, %edi	# tmp179,
	call	int_const_binop	#
	jmp	.L230	#
.L229:
	.loc 1 1792 0
	movq	-256(%rbp), %rax	# arg1, tmp180
	movzbl	16(%rax), %eax	# arg1_1->common.code, D.20852
	cmpb	$26, %al	#, D.20852
	jne	.L231	#,
.LBB6:
	.loc 1 1796 0
	movl	$0, -228(%rbp)	#, overflow
	.loc 1 1800 0
	movq	-256(%rbp), %rax	# arg1, tmp181
	movq	32(%rax), %rdx	# arg1_1->real_cst.real_cst, tmp182
	movq	%rdx, -160(%rbp)	# tmp182, d1
	movq	40(%rax), %rdx	# arg1_1->real_cst.real_cst, tmp183
	movq	%rdx, -152(%rbp)	# tmp183, d1
	movq	48(%rax), %rax	# arg1_1->real_cst.real_cst, tmp184
	movq	%rax, -144(%rbp)	# tmp184, d1
	.loc 1 1801 0
	movq	-264(%rbp), %rax	# arg2, tmp185
	movq	32(%rax), %rdx	# arg2_2->real_cst.real_cst, tmp186
	movq	%rdx, -128(%rbp)	# tmp186, d2
	movq	40(%rax), %rdx	# arg2_2->real_cst.real_cst, tmp187
	movq	%rdx, -120(%rbp)	# tmp187, d2
	movq	48(%rax), %rax	# arg2_2->real_cst.real_cst, tmp188
	movq	%rax, -112(%rbp)	# tmp188, d2
	.loc 1 1805 0
	movq	-160(%rbp), %rax	# d1, tmp189
	movq	%rax, (%rsp)	# tmp189,
	movq	-152(%rbp), %rax	# d1, tmp190
	movq	%rax, 8(%rsp)	# tmp190,
	movq	-144(%rbp), %rax	# d1, tmp191
	movq	%rax, 16(%rsp)	# tmp191,
	call	target_isnan	#
	testl	%eax, %eax	# D.20855
	je	.L232	#,
	.loc 1 1806 0
	movq	-256(%rbp), %rax	# arg1, D.20851
	jmp	.L230	#
.L232:
	.loc 1 1807 0
	movq	-128(%rbp), %rax	# d2, tmp192
	movq	%rax, (%rsp)	# tmp192,
	movq	-120(%rbp), %rax	# d2, tmp193
	movq	%rax, 8(%rsp)	# tmp193,
	movq	-112(%rbp), %rax	# d2, tmp194
	movq	%rax, 16(%rsp)	# tmp194,
	call	target_isnan	#
	testl	%eax, %eax	# D.20855
	je	.L234	#,
	.loc 1 1808 0
	movq	-264(%rbp), %rax	# arg2, D.20851
	jmp	.L230	#
.L234:
	.loc 1 1811 0
	movq	-256(%rbp), %rax	# arg1, tmp195
	movq	8(%rax), %rax	# arg1_1->common.type, D.20853
	movq	%rax, -88(%rbp)	# D.20853, args.type
	.loc 1 1812 0
	movq	-160(%rbp), %rax	# d1, tmp196
	movq	%rax, -80(%rbp)	# tmp196, args.d1
	movq	-152(%rbp), %rax	# d1, tmp197
	movq	%rax, -72(%rbp)	# tmp197, args.d1
	movq	-144(%rbp), %rax	# d1, tmp198
	movq	%rax, -64(%rbp)	# tmp198, args.d1
	.loc 1 1813 0
	movq	-128(%rbp), %rax	# d2, tmp199
	movq	%rax, -56(%rbp)	# tmp199, args.d2
	movq	-120(%rbp), %rax	# d2, tmp200
	movq	%rax, -48(%rbp)	# tmp200, args.d2
	movq	-112(%rbp), %rax	# d2, tmp201
	movq	%rax, -40(%rbp)	# tmp201, args.d2
	.loc 1 1814 0
	movl	-244(%rbp), %eax	# code, tmp202
	movl	%eax, -96(%rbp)	# tmp202, args.code
	.loc 1 1816 0
	leaq	-96(%rbp), %rax	#, tmp203
	movq	%rax, %rsi	# tmp203,
	movl	$const_binop_1, %edi	#,
	call	do_float_handler	#
	testl	%eax, %eax	# D.20855
	je	.L235	#,
	.loc 1 1818 0
	movq	-32(%rbp), %rax	# args.t, tmp204
	movq	%rax, -224(%rbp)	# tmp204, t
	jmp	.L236	#
.L235:
	.loc 1 1822 0
	movq	-256(%rbp), %rax	# arg1, tmp205
	movq	%rax, %rdi	# tmp205,
	call	copy_node	#
	movq	%rax, -224(%rbp)	# tmp206, t
	.loc 1 1823 0
	movl	$1, -228(%rbp)	#, overflow
.L236:
	.loc 1 1827 0
	movl	-228(%rbp), %edx	# overflow, tmp207
	movq	-224(%rbp), %rax	# t, tmp208
	movl	%edx, %esi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	force_fit_type	#
	movl	%eax, %edx	# D.20855, D.20856
	.loc 1 1828 0
	movq	-256(%rbp), %rax	# arg1, tmp209
	movzbl	18(%rax), %eax	# *arg1_1, tmp212
	shrb	$3, %al	#, D.20857
	andl	$1, %eax	#, D.20857
	.loc 1 1827 0
	orl	%eax, %edx	# D.20856, D.20856
	.loc 1 1828 0
	movq	-264(%rbp), %rax	# arg2, tmp213
	movzbl	18(%rax), %eax	# *arg2_2, tmp216
	shrb	$3, %al	#, D.20857
	andl	$1, %eax	#, D.20857
	.loc 1 1827 0
	orl	%edx, %eax	# D.20856, D.20856
	andl	$1, %eax	#, D.20857
	movl	%eax, %edx	# D.20857, D.20857
	movq	-224(%rbp), %rax	# t, tmp217
	andl	$1, %edx	#, tmp219
	leal	0(,%rdx,8), %ecx	#, tmp220
	movzbl	18(%rax), %edx	#, tmp221
	andl	$-9, %edx	#, tmp222
	orl	%ecx, %edx	# tmp220, tmp223
	movb	%dl, 18(%rax)	# tmp223,
	.loc 1 1830 0
	movq	-224(%rbp), %rax	# t, tmp224
	movzbl	18(%rax), %eax	# *t_4, tmp227
	shrb	$3, %al	#, D.20857
	andl	$1, %eax	#, D.20857
	movl	%eax, %edx	# D.20857, D.20858
	.loc 1 1831 0
	movq	-256(%rbp), %rax	# arg1, tmp228
	movzbl	18(%rax), %eax	# *arg1_1, tmp231
	shrb	$2, %al	#, D.20857
	andl	$1, %eax	#, D.20857
	.loc 1 1830 0
	orl	%edx, %eax	# D.20858, D.20858
	movl	%eax, %edx	# D.20858, D.20856
	.loc 1 1832 0
	movq	-264(%rbp), %rax	# arg2, tmp232
	movzbl	18(%rax), %eax	# *arg2_2, tmp235
	shrb	$2, %al	#, D.20857
	andl	$1, %eax	#, D.20857
	.loc 1 1830 0
	orl	%edx, %eax	# D.20856, D.20856
	andl	$1, %eax	#, D.20857
	movl	%eax, %edx	# D.20857, D.20857
	movq	-224(%rbp), %rax	# t, tmp236
	andl	$1, %edx	#, tmp238
	leal	0(,%rdx,4), %ecx	#, tmp239
	movzbl	18(%rax), %edx	#, tmp240
	andl	$-5, %edx	#, tmp241
	orl	%ecx, %edx	# tmp239, tmp242
	movb	%dl, 18(%rax)	# tmp242,
	.loc 1 1833 0
	movq	-224(%rbp), %rax	# t, D.20851
	jmp	.L230	#
.L231:
.LBE6:
	.loc 1 1836 0
	movq	-256(%rbp), %rax	# arg1, tmp243
	movzbl	16(%rax), %eax	# arg1_1->common.code, D.20852
	cmpb	$27, %al	#, D.20852
	jne	.L237	#,
.LBB7:
	.loc 1 1838 0
	movq	-256(%rbp), %rax	# arg1, tmp244
	movq	8(%rax), %rax	# arg1_1->common.type, tmp245
	movq	%rax, -208(%rbp)	# tmp245, type
	.loc 1 1839 0
	movq	-256(%rbp), %rax	# arg1, tmp246
	movq	32(%rax), %rax	# arg1_1->complex.real, tmp247
	movq	%rax, -200(%rbp)	# tmp247, r1
	.loc 1 1840 0
	movq	-256(%rbp), %rax	# arg1, tmp248
	movq	40(%rax), %rax	# arg1_1->complex.imag, tmp249
	movq	%rax, -192(%rbp)	# tmp249, i1
	.loc 1 1841 0
	movq	-264(%rbp), %rax	# arg2, tmp250
	movq	32(%rax), %rax	# arg2_2->complex.real, tmp251
	movq	%rax, -184(%rbp)	# tmp251, r2
	.loc 1 1842 0
	movq	-264(%rbp), %rax	# arg2, tmp252
	movq	40(%rax), %rax	# arg2_2->complex.imag, tmp253
	movq	%rax, -176(%rbp)	# tmp253, i2
	.loc 1 1845 0
	movl	-244(%rbp), %eax	# code, code
	cmpl	$60, %eax	#, code
	je	.L239	#,
	cmpl	$60, %eax	#, code
	ja	.L240	#,
	cmpl	$59, %eax	#, code
	je	.L241	#,
	jmp	.L238	#
.L240:
	cmpl	$61, %eax	#, code
	je	.L242	#,
	cmpl	$70, %eax	#, code
	je	.L243	#,
	jmp	.L238	#
.L241:
	.loc 1 1848 0
	movl	-248(%rbp), %ecx	# notrunc, tmp255
	movq	-176(%rbp), %rdx	# i2, tmp256
	movq	-192(%rbp), %rax	# i1, tmp257
	movq	%rax, %rsi	# tmp257,
	movl	$59, %edi	#,
	call	const_binop	#
	movq	%rax, %rbx	#, D.20853
	movl	-248(%rbp), %ecx	# notrunc, tmp258
	movq	-184(%rbp), %rdx	# r2, tmp259
	movq	-200(%rbp), %rax	# r1, tmp260
	movq	%rax, %rsi	# tmp260,
	movl	$59, %edi	#,
	call	const_binop	#
	movq	%rax, %rcx	#, D.20853
	movq	-208(%rbp), %rax	# type, tmp261
	movq	%rbx, %rdx	# D.20853,
	movq	%rcx, %rsi	# D.20853,
	movq	%rax, %rdi	# tmp261,
	call	build_complex	#
	movq	%rax, -216(%rbp)	# tmp262, t
	.loc 1 1851 0
	jmp	.L244	#
.L239:
	.loc 1 1854 0
	movl	-248(%rbp), %ecx	# notrunc, tmp263
	movq	-176(%rbp), %rdx	# i2, tmp264
	movq	-192(%rbp), %rax	# i1, tmp265
	movq	%rax, %rsi	# tmp265,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, %rbx	#, D.20853
	movl	-248(%rbp), %ecx	# notrunc, tmp266
	movq	-184(%rbp), %rdx	# r2, tmp267
	movq	-200(%rbp), %rax	# r1, tmp268
	movq	%rax, %rsi	# tmp268,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, %rcx	#, D.20853
	movq	-208(%rbp), %rax	# type, tmp269
	movq	%rbx, %rdx	# D.20853,
	movq	%rcx, %rsi	# D.20853,
	movq	%rax, %rdi	# tmp269,
	call	build_complex	#
	movq	%rax, -216(%rbp)	# tmp270, t
	.loc 1 1857 0
	jmp	.L244	#
.L242:
	.loc 1 1860 0
	movl	-248(%rbp), %ecx	# notrunc, tmp271
	movq	-184(%rbp), %rdx	# r2, tmp272
	movq	-192(%rbp), %rax	# i1, tmp273
	movq	%rax, %rsi	# tmp273,
	movl	$61, %edi	#,
	call	const_binop	#
	movq	%rax, %rbx	#, D.20853
	movl	-248(%rbp), %ecx	# notrunc, tmp274
	movq	-176(%rbp), %rdx	# i2, tmp275
	movq	-200(%rbp), %rax	# r1, tmp276
	movq	%rax, %rsi	# tmp276,
	movl	$61, %edi	#,
	call	const_binop	#
	movl	-248(%rbp), %edx	# notrunc, tmp277
	movl	%edx, %ecx	# tmp277,
	movq	%rbx, %rdx	# D.20853,
	movq	%rax, %rsi	# D.20853,
	movl	$59, %edi	#,
	call	const_binop	#
	movq	%rax, %rbx	#, D.20853
	movl	-248(%rbp), %ecx	# notrunc, tmp278
	movq	-176(%rbp), %rdx	# i2, tmp279
	movq	-192(%rbp), %rax	# i1, tmp280
	movq	%rax, %rsi	# tmp280,
	movl	$61, %edi	#,
	call	const_binop	#
	movq	%rax, %r12	#, D.20853
	movl	-248(%rbp), %ecx	# notrunc, tmp281
	movq	-184(%rbp), %rdx	# r2, tmp282
	movq	-200(%rbp), %rax	# r1, tmp283
	movq	%rax, %rsi	# tmp283,
	movl	$61, %edi	#,
	call	const_binop	#
	movl	-248(%rbp), %edx	# notrunc, tmp284
	movl	%edx, %ecx	# tmp284,
	movq	%r12, %rdx	# D.20853,
	movq	%rax, %rsi	# D.20853,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, %rcx	#, D.20853
	movq	-208(%rbp), %rax	# type, tmp285
	movq	%rbx, %rdx	# D.20853,
	movq	%rcx, %rsi	# D.20853,
	movq	%rax, %rdi	# tmp285,
	call	build_complex	#
	movq	%rax, -216(%rbp)	# tmp286, t
	.loc 1 1873 0
	jmp	.L244	#
.L243:
.LBB8:
	.loc 1 1878 0
	movl	-248(%rbp), %ecx	# notrunc, tmp287
	movq	-176(%rbp), %rdx	# i2, tmp288
	movq	-176(%rbp), %rax	# i2, tmp289
	movq	%rax, %rsi	# tmp289,
	movl	$61, %edi	#,
	call	const_binop	#
	movq	%rax, %rbx	#, D.20853
	movl	-248(%rbp), %ecx	# notrunc, tmp290
	movq	-184(%rbp), %rdx	# r2, tmp291
	movq	-184(%rbp), %rax	# r2, tmp292
	movq	%rax, %rsi	# tmp292,
	movl	$61, %edi	#,
	call	const_binop	#
	.loc 1 1877 0
	movl	-248(%rbp), %edx	# notrunc, tmp293
	movl	%edx, %ecx	# tmp293,
	movq	%rbx, %rdx	# D.20853,
	movq	%rax, %rsi	# D.20853,
	movl	$59, %edi	#,
	call	const_binop	#
	movq	%rax, -168(%rbp)	# tmp294, magsquared
	.loc 1 1883 0
	movl	-248(%rbp), %ecx	# notrunc, tmp295
	movq	-176(%rbp), %rdx	# i2, tmp296
	movq	-200(%rbp), %rax	# r1, tmp297
	movq	%rax, %rsi	# tmp297,
	movl	$61, %edi	#,
	call	const_binop	#
	movq	%rax, %rbx	#, D.20853
	movl	-248(%rbp), %ecx	# notrunc, tmp298
	movq	-184(%rbp), %rdx	# r2, tmp299
	movq	-192(%rbp), %rax	# i1, tmp300
	movq	%rax, %rsi	# tmp300,
	movl	$61, %edi	#,
	call	const_binop	#
	movl	-248(%rbp), %edx	# notrunc, tmp301
	movl	%edx, %ecx	# tmp301,
	movq	%rbx, %rdx	# D.20853,
	movq	%rax, %rsi	# D.20853,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, %rsi	#, D.20853
	.loc 1 1895 0
	movq	-200(%rbp), %rax	# r1, tmp302
	movq	8(%rax), %rax	# r1_73->common.type, D.20853
	movzbl	16(%rax), %eax	# _96->common.code, D.20852
	.loc 1 1883 0
	cmpb	$6, %al	#, D.20852
	je	.L245	#,
	.loc 1 1895 0
	movq	-200(%rbp), %rax	# r1, tmp303
	movq	8(%rax), %rax	# r1_73->common.type, D.20853
	movzbl	16(%rax), %eax	# _98->common.code, D.20852
	cmpb	$10, %al	#, D.20852
	je	.L245	#,
	.loc 1 1895 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# r1, tmp304
	movq	8(%rax), %rax	# r1_73->common.type, D.20853
	movzbl	16(%rax), %eax	# _100->common.code, D.20852
	cmpb	$11, %al	#, D.20852
	je	.L245	#,
	movq	-200(%rbp), %rax	# r1, tmp305
	movq	8(%rax), %rax	# r1_73->common.type, D.20853
	movzbl	16(%rax), %eax	# _102->common.code, D.20852
	cmpb	$12, %al	#, D.20852
	jne	.L246	#,
.L245:
	.loc 1 1883 0 is_stmt 1 discriminator 1
	movl	$62, %eax	#, iftmp.137
	jmp	.L247	#
.L246:
	.loc 1 1883 0 is_stmt 0
	movl	$70, %eax	#, iftmp.137
.L247:
	.loc 1 1883 0 discriminator 2
	movl	-248(%rbp), %ecx	# notrunc, tmp306
	movq	-168(%rbp), %rdx	# magsquared, tmp307
	movl	%eax, %edi	# iftmp.137,
	call	const_binop	#
	movq	%rax, %rbx	#, D.20853
	movl	-248(%rbp), %ecx	# notrunc, tmp308
	movq	-176(%rbp), %rdx	# i2, tmp309
	movq	-192(%rbp), %rax	# i1, tmp310
	movq	%rax, %rsi	# tmp310,
	movl	$61, %edi	#,
	call	const_binop	#
	movq	%rax, %r12	#, D.20853
	movl	-248(%rbp), %ecx	# notrunc, tmp311
	movq	-184(%rbp), %rdx	# r2, tmp312
	movq	-200(%rbp), %rax	# r1, tmp313
	movq	%rax, %rsi	# tmp313,
	movl	$61, %edi	#,
	call	const_binop	#
	movl	-248(%rbp), %edx	# notrunc, tmp314
	movl	%edx, %ecx	# tmp314,
	movq	%r12, %rdx	# D.20853,
	movq	%rax, %rsi	# D.20853,
	movl	$59, %edi	#,
	call	const_binop	#
	movq	%rax, %rsi	#, D.20853
	.loc 1 1885 0 is_stmt 1 discriminator 2
	movq	-200(%rbp), %rax	# r1, tmp315
	movq	8(%rax), %rax	# r1_73->common.type, D.20853
	movzbl	16(%rax), %eax	# _110->common.code, D.20852
	.loc 1 1883 0 discriminator 2
	cmpb	$6, %al	#, D.20852
	je	.L248	#,
	.loc 1 1885 0
	movq	-200(%rbp), %rax	# r1, tmp316
	movq	8(%rax), %rax	# r1_73->common.type, D.20853
	movzbl	16(%rax), %eax	# _112->common.code, D.20852
	cmpb	$10, %al	#, D.20852
	je	.L248	#,
	.loc 1 1885 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# r1, tmp317
	movq	8(%rax), %rax	# r1_73->common.type, D.20853
	movzbl	16(%rax), %eax	# _114->common.code, D.20852
	cmpb	$11, %al	#, D.20852
	je	.L248	#,
	movq	-200(%rbp), %rax	# r1, tmp318
	movq	8(%rax), %rax	# r1_73->common.type, D.20853
	movzbl	16(%rax), %eax	# _116->common.code, D.20852
	cmpb	$12, %al	#, D.20852
	jne	.L249	#,
.L248:
	.loc 1 1883 0 is_stmt 1 discriminator 3
	movl	$62, %eax	#, iftmp.138
	jmp	.L250	#
.L249:
	.loc 1 1883 0 is_stmt 0
	movl	$70, %eax	#, iftmp.138
.L250:
	.loc 1 1883 0 discriminator 4
	movl	-248(%rbp), %ecx	# notrunc, tmp319
	movq	-168(%rbp), %rdx	# magsquared, tmp320
	movl	%eax, %edi	# iftmp.138,
	call	const_binop	#
	movq	%rax, %rcx	#, D.20853
	movq	-208(%rbp), %rax	# type, tmp321
	movq	%rbx, %rdx	# D.20853,
	movq	%rcx, %rsi	# D.20853,
	movq	%rax, %rdi	# tmp321,
	call	build_complex	#
	movq	%rax, -216(%rbp)	# tmp322, t
.LBE8:
	.loc 1 1905 0 is_stmt 1 discriminator 4
	jmp	.L244	#
.L238:
	.loc 1 1908 0
	movl	$__FUNCTION__.12439, %edx	#,
	movl	$1908, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L244:
	.loc 1 1910 0
	movq	-216(%rbp), %rax	# t, D.20851
	jmp	.L230	#
.L237:
.LBE7:
	.loc 1 1912 0
	movl	$0, %eax	#, D.20851
.L230:
	.loc 1 1913 0
	addq	$272, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	const_binop, .-const_binop
	.type	size_htab_hash, @function
size_htab_hash:
.LFB19:
	.loc 1 1923 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1924 0
	movq	-24(%rbp), %rax	# x, tmp75
	movq	%rax, -8(%rbp)	# tmp75, t
	.loc 1 1926 0
	movq	-8(%rbp), %rax	# t, tmp76
	movq	40(%rax), %rax	# t_2->int_cst.int_cst.high, D.20860
	movl	%eax, %edx	# D.20860, D.20861
	movq	-8(%rbp), %rax	# t, tmp77
	movq	32(%rax), %rax	# t_2->int_cst.int_cst.low, D.20862
	xorl	%eax, %edx	# D.20861, D.20861
	.loc 1 1927 0
	movq	-8(%rbp), %rax	# t, tmp78
	movq	8(%rax), %rax	# t_2->common.type, D.20863
	sarq	$3, %rax	#, D.20860
	.loc 1 1926 0
	xorl	%eax, %edx	# D.20861, D.20861
	.loc 1 1928 0
	movq	-8(%rbp), %rax	# t, tmp79
	movzbl	18(%rax), %eax	# *t_2, tmp82
	shrb	$3, %al	#, D.20864
	andl	$1, %eax	#, D.20864
	movzbl	%al, %eax	# D.20864, D.20865
	sall	$20, %eax	#, D.20865
	.loc 1 1926 0
	xorl	%edx, %eax	# D.20861, D.20866
	.loc 1 1929 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	size_htab_hash, .-size_htab_hash
	.type	size_htab_eq, @function
size_htab_eq:
.LFB20:
	.loc 1 1938 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# y, y
	.loc 1 1939 0
	movq	-24(%rbp), %rax	# x, tmp70
	movq	%rax, -16(%rbp)	# tmp70, xt
	.loc 1 1940 0
	movq	-32(%rbp), %rax	# y, tmp71
	movq	%rax, -8(%rbp)	# tmp71, yt
	.loc 1 1942 0
	movq	-16(%rbp), %rax	# xt, tmp72
	movq	40(%rax), %rdx	# xt_3->int_cst.int_cst.high, D.20867
	movq	-8(%rbp), %rax	# yt, tmp73
	movq	40(%rax), %rax	# yt_5->int_cst.int_cst.high, D.20867
	.loc 1 1945 0
	cmpq	%rax, %rdx	# D.20867, D.20867
	jne	.L254	#,
	.loc 1 1943 0
	movq	-16(%rbp), %rax	# xt, tmp74
	movq	32(%rax), %rdx	# xt_3->int_cst.int_cst.low, D.20868
	movq	-8(%rbp), %rax	# yt, tmp75
	movq	32(%rax), %rax	# yt_5->int_cst.int_cst.low, D.20868
	cmpq	%rax, %rdx	# D.20868, D.20868
	jne	.L254	#,
	.loc 1 1944 0
	movq	-16(%rbp), %rax	# xt, tmp76
	movq	8(%rax), %rdx	# xt_3->common.type, D.20869
	movq	-8(%rbp), %rax	# yt, tmp77
	movq	8(%rax), %rax	# yt_5->common.type, D.20869
	cmpq	%rax, %rdx	# D.20869, D.20869
	jne	.L254	#,
	.loc 1 1945 0
	movq	-16(%rbp), %rax	# xt, tmp78
	movzbl	18(%rax), %eax	# *xt_3, tmp81
	shrb	$3, %al	#, D.20870
	movl	%eax, %edx	# D.20870, D.20870
	andl	$1, %edx	#, D.20870
	movq	-8(%rbp), %rax	# yt, tmp82
	movzbl	18(%rax), %eax	# *yt_5, tmp85
	shrb	$3, %al	#, D.20870
	andl	$1, %eax	#, D.20870
	cmpb	%al, %dl	# D.20870, D.20870
	jne	.L254	#,
	.loc 1 1945 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.139
	jmp	.L255	#
.L254:
	.loc 1 1945 0 discriminator 1
	movl	$0, %eax	#, iftmp.139
.L255:
	.loc 1 1946 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	size_htab_eq, .-size_htab_eq
	.globl	size_int_wide
	.type	size_int_wide, @function
size_int_wide:
.LFB21:
	.loc 1 1955 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# number, number
	movl	%esi, -12(%rbp)	# kind, kind
	.loc 1 1956 0
	movl	-12(%rbp), %eax	# kind, kind.140
	cltq
	movq	sizetype_tab(,%rax,8), %rdx	# sizetype_tab, D.20872
	movq	-8(%rbp), %rax	# number, tmp64
	movq	%rdx, %rsi	# D.20872,
	movq	%rax, %rdi	# tmp64,
	call	size_int_type_wide	#
	.loc 1 1957 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	size_int_wide, .-size_int_wide
	.globl	size_int_type_wide
	.type	size_int_type_wide, @function
size_int_type_wide:
.LFB22:
	.loc 1 1965 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# number, number
	movq	%rsi, -48(%rbp)	# type, type
	.loc 1 1970 0
	movq	size_htab.12458(%rip), %rax	# size_htab, size_htab.141
	testq	%rax, %rax	# size_htab.141
	jne	.L260	#,
	.loc 1 1972 0
	movl	$0, %ecx	#,
	movl	$size_htab_eq, %edx	#,
	movl	$size_htab_hash, %esi	#,
	movl	$1024, %edi	#,
	call	htab_create	#
	movq	%rax, size_htab.12458(%rip)	# size_htab.142, size_htab
	.loc 1 1973 0
	movq	size_htab.12458(%rip), %rax	# size_htab, size_htab.143
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# size_htab.143,
	call	ggc_add_deletable_htab	#
	.loc 1 1974 0
	movl	$25, %edi	#,
	call	make_node	#
	movq	%rax, new_const.12459(%rip)	# new_const.144, new_const
	.loc 1 1975 0
	movl	$1, %esi	#,
	movl	$new_const.12459, %edi	#,
	call	ggc_add_tree_root	#
.L260:
	.loc 1 1981 0
	movq	new_const.12459(%rip), %rax	# new_const, new_const.145
	movq	-40(%rbp), %rdx	# number, number.146
	movq	%rdx, 32(%rax)	# number.146, new_const.145_7->int_cst.int_cst.low
	.loc 1 1982 0
	movq	new_const.12459(%rip), %rdx	# new_const, new_const.147
	cmpq	$0, -40(%rbp)	#, number
	jns	.L261	#,
	.loc 1 1982 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.148
	jmp	.L262	#
.L261:
	.loc 1 1982 0 discriminator 2
	movl	$0, %eax	#, iftmp.148
.L262:
	.loc 1 1982 0 discriminator 3
	movq	%rax, 40(%rdx)	# iftmp.148, new_const.147_10->int_cst.int_cst.high
	.loc 1 1983 0 is_stmt 1 discriminator 3
	movq	new_const.12459(%rip), %rax	# new_const, new_const.149
	movq	-48(%rbp), %rdx	# type, tmp82
	movq	%rdx, 8(%rax)	# tmp82, new_const.149_13->common.type
	.loc 1 1984 0 discriminator 3
	movq	new_const.12459(%rip), %r12	# new_const, new_const.150
	movq	new_const.12459(%rip), %rbx	# new_const, new_const.151
	.loc 1 1985 0 discriminator 3
	movq	new_const.12459(%rip), %rax	# new_const, new_const.152
	movl	$0, %esi	#,
	movq	%rax, %rdi	# new_const.152,
	call	force_fit_type	#
	andl	$1, %eax	#, D.20877
	andl	$1, %eax	#, tmp84
	leal	0(,%rax,4), %edx	#, tmp85
	movzbl	18(%rbx), %eax	#, tmp86
	andl	$-5, %eax	#, tmp87
	orl	%edx, %eax	# tmp85, tmp88
	movb	%al, 18(%rbx)	# tmp88,
	.loc 1 1984 0 discriminator 3
	movzbl	18(%rbx), %eax	# *new_const.151_16, tmp91
	shrb	$2, %al	#, D.20877
	andl	$1, %eax	#, D.20877
	andl	$1, %eax	#, tmp93
	leal	0(,%rax,8), %edx	#, tmp94
	movzbl	18(%r12), %eax	#, tmp95
	andl	$-9, %eax	#, tmp96
	orl	%edx, %eax	# tmp94, tmp97
	movb	%al, 18(%r12)	# tmp97,
	.loc 1 1987 0 discriminator 3
	movq	new_const.12459(%rip), %rcx	# new_const, new_const.153
	movq	size_htab.12458(%rip), %rax	# size_htab, size_htab.154
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# new_const.153,
	movq	%rax, %rdi	# size_htab.154,
	call	htab_find_slot	#
	movq	%rax, -32(%rbp)	# tmp98, slot
	.loc 1 1988 0 discriminator 3
	movq	-32(%rbp), %rax	# slot, tmp99
	movq	(%rax), %rax	# *slot_24, D.20878
	testq	%rax, %rax	# D.20878
	jne	.L263	#,
.LBB9:
	.loc 1 1990 0
	movq	new_const.12459(%rip), %rax	# new_const, tmp100
	movq	%rax, -24(%rbp)	# tmp100, t
	.loc 1 1992 0
	movq	new_const.12459(%rip), %rdx	# new_const, new_const.155
	movq	-32(%rbp), %rax	# slot, tmp101
	movq	%rdx, (%rax)	# new_const.155, *slot_24
	.loc 1 1993 0
	movl	$25, %edi	#,
	call	make_node	#
	movq	%rax, new_const.12459(%rip)	# new_const.156, new_const
	.loc 1 1994 0
	movq	-24(%rbp), %rax	# t, D.20874
	jmp	.L264	#
.L263:
.LBE9:
	.loc 1 1997 0
	movq	-32(%rbp), %rax	# slot, tmp102
	movq	(%rax), %rax	# *slot_24, D.20874
.L264:
	.loc 1 1998 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	size_int_type_wide, .-size_int_type_wide
	.globl	size_binop
	.type	size_binop, @function
size_binop:
.LFB23:
	.loc 1 2009 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	movq	%rsi, -32(%rbp)	# arg0, arg0
	movq	%rdx, -40(%rbp)	# arg1, arg1
	.loc 1 2010 0
	movq	-32(%rbp), %rax	# arg0, tmp73
	movq	8(%rax), %rax	# arg0_2(D)->common.type, tmp74
	movq	%rax, -8(%rbp)	# tmp74, type
	.loc 1 2012 0
	movq	-8(%rbp), %rax	# type, tmp75
	movzbl	16(%rax), %eax	# type_3->common.code, D.20880
	cmpb	$6, %al	#, D.20880
	jne	.L266	#,
	.loc 1 2012 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# type, tmp76
	movzbl	62(%rax), %eax	# *type_3, D.20880
	andl	$2, %eax	#, D.20880
	testb	%al, %al	# D.20880
	je	.L266	#,
	.loc 1 2013 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg1, tmp77
	movq	8(%rax), %rax	# arg1_7(D)->common.type, D.20881
	cmpq	-8(%rbp), %rax	# type, D.20881
	je	.L267	#,
.L266:
	.loc 1 2014 0
	movl	$__FUNCTION__.12468, %edx	#,
	movl	$2014, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L267:
	.loc 1 2017 0
	movq	-32(%rbp), %rax	# arg0, tmp78
	movzbl	16(%rax), %eax	# arg0_2(D)->common.code, D.20880
	cmpb	$25, %al	#, D.20880
	jne	.L268	#,
	.loc 1 2017 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg1, tmp79
	movzbl	16(%rax), %eax	# arg1_7(D)->common.code, D.20880
	cmpb	$25, %al	#, D.20880
	jne	.L268	#,
	.loc 1 2020 0 is_stmt 1
	cmpl	$59, -20(%rbp)	#, code
	jne	.L269	#,
	.loc 1 2020 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# arg0, tmp80
	movq	%rax, %rdi	# tmp80,
	call	integer_zerop	#
	testl	%eax, %eax	# D.20882
	je	.L269	#,
	.loc 1 2021 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg1, D.20879
	jmp	.L270	#
.L269:
	.loc 1 2022 0
	cmpl	$60, -20(%rbp)	#, code
	je	.L271	#,
	.loc 1 2022 0 is_stmt 0 discriminator 1
	cmpl	$59, -20(%rbp)	#, code
	jne	.L272	#,
.L271:
	.loc 1 2023 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg1, tmp81
	movq	%rax, %rdi	# tmp81,
	call	integer_zerop	#
	testl	%eax, %eax	# D.20882
	je	.L272	#,
	.loc 1 2024 0
	movq	-32(%rbp), %rax	# arg0, D.20879
	jmp	.L270	#
.L272:
	.loc 1 2025 0
	cmpl	$61, -20(%rbp)	#, code
	jne	.L273	#,
	.loc 1 2025 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# arg0, tmp82
	movq	%rax, %rdi	# tmp82,
	call	integer_onep	#
	testl	%eax, %eax	# D.20882
	je	.L273	#,
	.loc 1 2026 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg1, D.20879
	jmp	.L270	#
.L273:
	.loc 1 2029 0
	movq	-40(%rbp), %rdx	# arg1, tmp83
	movq	-32(%rbp), %rsi	# arg0, tmp84
	movl	-20(%rbp), %eax	# code, tmp85
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp85,
	call	int_const_binop	#
	jmp	.L270	#
.L268:
	.loc 1 2032 0
	movq	global_trees(%rip), %rax	# global_trees, D.20881
	cmpq	-32(%rbp), %rax	# arg0, D.20881
	je	.L274	#,
	.loc 1 2032 0 is_stmt 0 discriminator 1
	movq	global_trees(%rip), %rax	# global_trees, D.20881
	cmpq	-40(%rbp), %rax	# arg1, D.20881
	jne	.L275	#,
.L274:
	.loc 1 2033 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.20879
	jmp	.L270	#
.L275:
	.loc 1 2035 0
	movq	-40(%rbp), %rcx	# arg1, tmp86
	movq	-32(%rbp), %rdx	# arg0, tmp87
	movq	-8(%rbp), %rsi	# type, tmp88
	movl	-20(%rbp), %eax	# code, tmp89
	movl	%eax, %edi	# tmp89,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20881,
	call	fold	#
.L270:
	.loc 1 2036 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	size_binop, .-size_binop
	.globl	size_diffop
	.type	size_diffop, @function
size_diffop:
.LFB24:
	.loc 1 2045 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# arg0, arg0
	movq	%rsi, -48(%rbp)	# arg1, arg1
	.loc 1 2046 0
	movq	-40(%rbp), %rax	# arg0, tmp82
	movq	8(%rax), %rax	# arg0_3(D)->common.type, tmp83
	movq	%rax, -32(%rbp)	# tmp83, type
	.loc 1 2049 0
	movq	-32(%rbp), %rax	# type, tmp84
	movzbl	16(%rax), %eax	# type_4->common.code, D.20884
	cmpb	$6, %al	#, D.20884
	jne	.L277	#,
	.loc 1 2049 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# type, tmp85
	movzbl	62(%rax), %eax	# *type_4, D.20884
	andl	$2, %eax	#, D.20884
	testb	%al, %al	# D.20884
	je	.L277	#,
	.loc 1 2050 0 is_stmt 1
	movq	-48(%rbp), %rax	# arg1, tmp86
	movq	8(%rax), %rax	# arg1_8(D)->common.type, D.20885
	cmpq	-32(%rbp), %rax	# type, D.20885
	je	.L278	#,
.L277:
	.loc 1 2051 0
	movl	$__FUNCTION__.12475, %edx	#,
	movl	$2051, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L278:
	.loc 1 2054 0
	movq	-32(%rbp), %rax	# type, tmp87
	movzbl	17(%rax), %eax	# *type_4, D.20884
	andl	$32, %eax	#, D.20884
	testb	%al, %al	# D.20884
	jne	.L279	#,
	.loc 1 2055 0
	movq	-48(%rbp), %rdx	# arg1, tmp88
	movq	-40(%rbp), %rax	# arg0, tmp89
	movq	%rax, %rsi	# tmp89,
	movl	$60, %edi	#,
	call	size_binop	#
	jmp	.L280	#
.L279:
	.loc 1 2057 0
	movq	sizetype_tab+24(%rip), %rax	# sizetype_tab, D.20885
	.loc 1 2058 0
	cmpq	-32(%rbp), %rax	# type, D.20885
	je	.L281	#,
	.loc 1 2057 0
	movq	sizetype_tab+40(%rip), %rax	# sizetype_tab, D.20885
	cmpq	-32(%rbp), %rax	# type, D.20885
	jne	.L282	#,
.L281:
	.loc 1 2058 0 discriminator 1
	movq	sizetype_tab+32(%rip), %rax	# sizetype_tab, iftmp.157
	jmp	.L283	#
.L282:
	.loc 1 2058 0 is_stmt 0
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, iftmp.157
.L283:
	.loc 1 2057 0 is_stmt 1
	movq	%rax, -24(%rbp)	# iftmp.157, ctype
	.loc 1 2063 0
	movq	-40(%rbp), %rax	# arg0, tmp90
	movzbl	16(%rax), %eax	# arg0_3(D)->common.code, D.20884
	cmpb	$25, %al	#, D.20884
	jne	.L284	#,
	.loc 1 2063 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# arg1, tmp91
	movzbl	16(%rax), %eax	# arg1_8(D)->common.code, D.20884
	cmpb	$25, %al	#, D.20884
	je	.L285	#,
.L284:
	.loc 1 2064 0 is_stmt 1
	movq	-48(%rbp), %rdx	# arg1, tmp92
	movq	-24(%rbp), %rax	# ctype, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	convert	#
	movq	%rax, %rbx	#, D.20885
	movq	-40(%rbp), %rdx	# arg0, tmp94
	movq	-24(%rbp), %rax	# ctype, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	convert	#
	movq	%rbx, %rdx	# D.20885,
	movq	%rax, %rsi	# D.20885,
	movl	$60, %edi	#,
	call	size_binop	#
	jmp	.L280	#
.L285:
	.loc 1 2071 0
	movq	-48(%rbp), %rdx	# arg1, tmp96
	movq	-40(%rbp), %rax	# arg0, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.20886
	je	.L286	#,
	.loc 1 2072 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20885
	movq	-24(%rbp), %rax	# ctype, tmp98
	movq	%rdx, %rsi	# D.20885,
	movq	%rax, %rdi	# tmp98,
	call	convert	#
	jmp	.L280	#
.L286:
	.loc 1 2073 0
	movq	-40(%rbp), %rdx	# arg0, tmp99
	movq	-48(%rbp), %rax	# arg1, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.20886
	je	.L287	#,
	.loc 1 2074 0
	movq	-48(%rbp), %rdx	# arg1, tmp101
	movq	-40(%rbp), %rax	# arg0, tmp102
	movq	%rax, %rsi	# tmp102,
	movl	$60, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.20885
	movq	-24(%rbp), %rax	# ctype, tmp103
	movq	%rdx, %rsi	# D.20885,
	movq	%rax, %rdi	# tmp103,
	call	convert	#
	jmp	.L280	#
.L287:
	.loc 1 2076 0
	movq	-40(%rbp), %rdx	# arg0, tmp104
	movq	-48(%rbp), %rax	# arg1, tmp105
	movq	%rax, %rsi	# tmp105,
	movl	$60, %edi	#,
	call	size_binop	#
	movq	%rax, %rdx	#, D.20885
	movq	-24(%rbp), %rax	# ctype, tmp106
	movq	%rdx, %rsi	# D.20885,
	movq	%rax, %rdi	# tmp106,
	call	convert	#
	movq	%rax, %rbx	#, D.20885
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20885
	movq	-24(%rbp), %rax	# ctype, tmp107
	movq	%rdx, %rsi	# D.20885,
	movq	%rax, %rdi	# tmp107,
	call	convert	#
	movq	%rbx, %rdx	# D.20885,
	movq	%rax, %rsi	# D.20885,
	movl	$60, %edi	#,
	call	size_binop	#
.L280:
	.loc 1 2078 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	size_diffop, .-size_diffop
	.type	fold_convert_1, @function
fold_convert_1:
.LFB25:
	.loc 1 2094 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# data, data
	.loc 1 2095 0
	movq	-56(%rbp), %rax	# data, tmp65
	movq	%rax, -40(%rbp)	# tmp65, args
	.loc 1 2099 0
	movq	-40(%rbp), %rax	# args, tmp66
	movq	(%rax), %rax	# args_2->arg1, D.20887
	.loc 1 2098 0
	movq	-40(%rbp), %rdx	# args, tmp67
	movq	8(%rdx), %rdx	# args_2->type, D.20887
	movzbl	61(%rdx), %edx	# *_4, tmp70
	shrb	%dl	# D.20888
	.loc 1 2097 0
	movzbl	%dl, %ecx	# D.20888, D.20889
	leaq	-32(%rbp), %rdx	#, tmp71
	movq	32(%rax), %rsi	# _3->real_cst.real_cst, tmp72
	movq	%rsi, (%rsp)	# tmp72,
	movq	40(%rax), %rsi	# _3->real_cst.real_cst, tmp73
	movq	%rsi, 8(%rsp)	# tmp73,
	movq	48(%rax), %rax	# _3->real_cst.real_cst, tmp74
	movq	%rax, 16(%rsp)	# tmp74,
	movl	%ecx, %esi	# D.20889,
	movq	%rdx, %rdi	# tmp71,
	call	real_value_truncate	#
	movq	-40(%rbp), %rax	# args, tmp75
	movq	8(%rax), %rax	# args_2->type, D.20887
	movq	-32(%rbp), %rdx	# D.14636, tmp76
	movq	%rdx, (%rsp)	# tmp76,
	movq	-24(%rbp), %rdx	# D.14636, tmp77
	movq	%rdx, 8(%rsp)	# tmp77,
	movq	-16(%rbp), %rdx	# D.14636, tmp78
	movq	%rdx, 16(%rsp)	# tmp78,
	movq	%rax, %rdi	# D.20887,
	call	build_real	#
	movq	-40(%rbp), %rdx	# args, tmp79
	movq	%rax, 16(%rdx)	# D.20887, args_2->t
	.loc 1 2100 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	fold_convert_1, .-fold_convert_1
	.type	fold_convert, @function
fold_convert:
.LFB26:
	.loc 1 2109 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$248, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# t, t
	movq	%rsi, -176(%rbp)	# arg1, arg1
	.loc 1 2110 0
	movq	-168(%rbp), %rax	# t, tmp145
	movq	8(%rax), %rax	# t_10(D)->common.type, tmp146
	movq	%rax, -128(%rbp)	# tmp146, type
	.loc 1 2111 0
	movl	$0, -152(%rbp)	#, overflow
	.loc 1 2113 0
	movq	-128(%rbp), %rax	# type, tmp147
	movzbl	16(%rax), %eax	# type_11->common.code, D.20892
	cmpb	$13, %al	#, D.20892
	je	.L290	#,
	.loc 1 2113 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp148
	movzbl	16(%rax), %eax	# type_11->common.code, D.20892
	cmpb	$15, %al	#, D.20892
	je	.L290	#,
	movq	-128(%rbp), %rax	# type, tmp149
	movzbl	16(%rax), %eax	# type_11->common.code, D.20892
	cmpb	$6, %al	#, D.20892
	je	.L290	#,
	movq	-128(%rbp), %rax	# type, tmp150
	movzbl	16(%rax), %eax	# type_11->common.code, D.20892
	cmpb	$10, %al	#, D.20892
	je	.L290	#,
	movq	-128(%rbp), %rax	# type, tmp151
	movzbl	16(%rax), %eax	# type_11->common.code, D.20892
	cmpb	$11, %al	#, D.20892
	je	.L290	#,
	movq	-128(%rbp), %rax	# type, tmp152
	movzbl	16(%rax), %eax	# type_11->common.code, D.20892
	cmpb	$12, %al	#, D.20892
	jne	.L291	#,
.L290:
	.loc 1 2115 0 is_stmt 1
	movq	-176(%rbp), %rax	# arg1, tmp153
	movzbl	16(%rax), %eax	# arg1_20(D)->common.code, D.20892
	cmpb	$25, %al	#, D.20892
	jne	.L292	#,
	.loc 1 2119 0
	movq	-128(%rbp), %rax	# type, tmp154
	movzwl	60(%rax), %eax	# *type_11, tmp157
	andw	$511, %ax	#, D.20896
	movzwl	%ax, %eax	# D.20896, D.20893
	cmpl	$128, %eax	#, D.20893
	jle	.L293	#,
	.loc 1 2120 0
	movq	-168(%rbp), %rax	# t, D.20891
	jmp	.L294	#
.L293:
	.loc 1 2124 0
	movq	-128(%rbp), %rax	# type, tmp158
	movzbl	16(%rax), %eax	# type_11->common.code, D.20892
	cmpb	$6, %al	#, D.20892
	jne	.L295	#,
	.loc 1 2124 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp159
	movzbl	62(%rax), %eax	# *type_11, D.20892
	andl	$2, %eax	#, D.20892
	testb	%al, %al	# D.20892
	je	.L295	#,
	.loc 1 2125 0 is_stmt 1
	movq	-176(%rbp), %rax	# arg1, tmp160
	movzbl	18(%rax), %eax	# *arg1_20(D), D.20892
	andl	$4, %eax	#, D.20892
	testb	%al, %al	# D.20892
	jne	.L295	#,
	.loc 1 2126 0
	movq	-176(%rbp), %rax	# arg1, tmp161
	movl	$10000, %esi	#,
	movq	%rax, %rdi	# tmp161,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.20893
	jns	.L295	#,
	.loc 1 2127 0
	movq	-176(%rbp), %rax	# arg1, tmp162
	movq	32(%rax), %rax	# arg1_20(D)->int_cst.int_cst.low, D.20897
	movq	-128(%rbp), %rdx	# type, tmp163
	movq	%rdx, %rsi	# tmp163,
	movq	%rax, %rdi	# D.20898,
	call	size_int_type_wide	#
	jmp	.L294	#
.L295:
	.loc 1 2131 0
	movq	-176(%rbp), %rax	# arg1, tmp164
	movq	40(%rax), %rdx	# arg1_20(D)->int_cst.int_cst.high, D.20898
	movq	-176(%rbp), %rax	# arg1, tmp165
	movq	32(%rax), %rax	# arg1_20(D)->int_cst.int_cst.low, D.20897
	movq	%rdx, %rsi	# D.20898,
	movq	%rax, %rdi	# D.20897,
	call	build_int_2_wide	#
	movq	%rax, -168(%rbp)	# tmp166, t
	.loc 1 2133 0
	movq	-168(%rbp), %rax	# t, tmp167
	movq	-128(%rbp), %rdx	# type, tmp168
	movq	%rdx, 8(%rax)	# tmp168, t_60->common.type
	.loc 1 2141 0
	movq	-176(%rbp), %rax	# arg1, tmp169
	movq	40(%rax), %rax	# arg1_20(D)->int_cst.int_cst.high, D.20898
	.loc 1 2140 0
	testq	%rax, %rax	# D.20898
	jns	.L296	#,
	.loc 1 2142 0 discriminator 1
	movq	-128(%rbp), %rax	# type, tmp170
	movzbl	17(%rax), %eax	# *type_11, tmp173
	shrb	$5, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	.loc 1 2143 0 discriminator 1
	movzbl	%al, %edx	# D.20894, D.20893
	movq	-176(%rbp), %rax	# arg1, tmp174
	movq	8(%rax), %rax	# arg1_20(D)->common.type, D.20899
	movzbl	17(%rax), %eax	# *_64, tmp177
	shrb	$5, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	movzbl	%al, %eax	# D.20894, D.20893
	.loc 1 2140 0 discriminator 1
	cmpl	%eax, %edx	# D.20893, D.20893
	jge	.L296	#,
	.loc 1 2140 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.159
	jmp	.L297	#
.L296:
	.loc 1 2140 0 discriminator 2
	movl	$0, %eax	#, iftmp.159
.L297:
	.loc 1 2140 0 discriminator 4
	movq	-168(%rbp), %rdx	# t, tmp178
	movl	%eax, %esi	# iftmp.159,
	movq	%rdx, %rdi	# tmp178,
	call	force_fit_type	#
	.loc 1 2145 0 is_stmt 1 discriminator 4
	testl	%eax, %eax	# D.20893
	je	.L298	#,
	.loc 1 2144 0
	movq	-176(%rbp), %rax	# arg1, tmp179
	movq	8(%rax), %rax	# arg1_20(D)->common.type, D.20899
	movzbl	16(%rax), %eax	# _70->common.code, D.20892
	cmpb	$13, %al	#, D.20892
	je	.L298	#,
	.loc 1 2144 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# arg1, tmp180
	movq	8(%rax), %rax	# arg1_20(D)->common.type, D.20899
	movzbl	16(%rax), %eax	# _72->common.code, D.20892
	cmpb	$15, %al	#, D.20892
	jne	.L299	#,
.L298:
	.loc 1 2145 0 is_stmt 1 discriminator 1
	movq	-176(%rbp), %rax	# arg1, tmp181
	movzbl	18(%rax), %eax	# *arg1_20(D), D.20892
	andl	$8, %eax	#, D.20892
	testb	%al, %al	# D.20892
	je	.L300	#,
.L299:
	.loc 1 2145 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.158
	jmp	.L301	#
.L300:
	.loc 1 2145 0 discriminator 3
	movl	$0, %eax	#, iftmp.158
.L301:
	.loc 1 2140 0 is_stmt 1
	andl	$1, %eax	#, D.20894
	movl	%eax, %edx	# D.20894, D.20894
	movq	-168(%rbp), %rax	# t, tmp182
	andl	$1, %edx	#, tmp184
	leal	0(,%rdx,8), %ecx	#, tmp185
	movzbl	18(%rax), %edx	#, tmp186
	andl	$-9, %edx	#, tmp187
	orl	%ecx, %edx	# tmp185, tmp188
	movb	%dl, 18(%rax)	# tmp188,
	.loc 1 2147 0
	movq	-168(%rbp), %rax	# t, tmp189
	movzbl	18(%rax), %eax	# *t_60, tmp192
	shrb	$3, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	movl	%eax, %edx	# D.20894, D.20892
	movq	-176(%rbp), %rax	# arg1, tmp193
	movzbl	18(%rax), %eax	# *arg1_20(D), tmp196
	shrb	$2, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	orl	%edx, %eax	# D.20892, D.20892
	andl	$1, %eax	#, D.20894
	movl	%eax, %edx	# D.20894, D.20894
	movq	-168(%rbp), %rax	# t, tmp197
	andl	$1, %edx	#, tmp199
	leal	0(,%rdx,4), %ecx	#, tmp200
	movzbl	18(%rax), %edx	#, tmp201
	andl	$-5, %edx	#, tmp202
	orl	%ecx, %edx	# tmp200, tmp203
	movb	%dl, 18(%rax)	# tmp203,
	jmp	.L302	#
.L292:
	.loc 1 2150 0
	movq	-176(%rbp), %rax	# arg1, tmp204
	movzbl	16(%rax), %eax	# arg1_20(D)->common.code, D.20892
	cmpb	$26, %al	#, D.20892
	jne	.L302	#,
.LBB10:
	.loc 1 2157 0
	movq	-176(%rbp), %rax	# arg1, tmp205
	movq	8(%rax), %rax	# arg1_20(D)->common.type, tmp206
	movq	%rax, -120(%rbp)	# tmp206, type1
	.loc 1 2160 0
	movq	-176(%rbp), %rax	# arg1, tmp207
	movq	32(%rax), %rdx	# arg1_20(D)->real_cst.real_cst, tmp208
	movq	%rdx, -112(%rbp)	# tmp208, x
	movq	40(%rax), %rdx	# arg1_20(D)->real_cst.real_cst, tmp209
	movq	%rdx, -104(%rbp)	# tmp209, x
	movq	48(%rax), %rax	# arg1_20(D)->real_cst.real_cst, tmp210
	movq	%rax, -96(%rbp)	# tmp210, x
	.loc 1 2161 0
	movq	-128(%rbp), %rax	# type, tmp211
	movq	104(%rax), %rdx	# type_11->type.minval, D.20899
	leaq	-208(%rbp), %rax	#, tmp212
	movq	-120(%rbp), %rcx	# type1, tmp213
	movq	%rcx, %rsi	# tmp213,
	movq	%rax, %rdi	# tmp212,
	call	real_value_from_int_cst	#
	movq	-208(%rbp), %rax	#, tmp214
	movq	%rax, -80(%rbp)	# tmp214, l
	movq	-200(%rbp), %rax	#, tmp215
	movq	%rax, -72(%rbp)	# tmp215, l
	movq	-192(%rbp), %rax	#, tmp216
	movq	%rax, -64(%rbp)	# tmp216, l
	.loc 1 2163 0
	movq	-128(%rbp), %rax	# type, tmp217
	movq	112(%rax), %rax	# type_11->type.maxval, D.20899
	testq	%rax, %rax	# D.20899
	sete	%al	#, D.20900
	movzbl	%al, %eax	# D.20900, tmp218
	movl	%eax, -148(%rbp)	# tmp218, no_upper_bound
	.loc 1 2164 0
	cmpl	$0, -148(%rbp)	#, no_upper_bound
	jne	.L303	#,
	.loc 1 2165 0
	movq	-128(%rbp), %rax	# type, tmp219
	movq	112(%rax), %rdx	# type_11->type.maxval, D.20899
	leaq	-208(%rbp), %rax	#, tmp220
	movq	-120(%rbp), %rcx	# type1, tmp221
	movq	%rcx, %rsi	# tmp221,
	movq	%rax, %rdi	# tmp220,
	call	real_value_from_int_cst	#
	movq	-208(%rbp), %rax	#, tmp222
	movq	%rax, -48(%rbp)	# tmp222, u
	movq	-200(%rbp), %rax	#, tmp223
	movq	%rax, -40(%rbp)	# tmp223, u
	movq	-192(%rbp), %rax	#, tmp224
	movq	%rax, -32(%rbp)	# tmp224, u
.L303:
	.loc 1 2171 0
	leaq	-80(%rbp), %rdx	#, tmp225
	leaq	-80(%rbp), %rax	#, tmp226
	movl	$dconst1, %ecx	#,
	movl	$60, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	earith	#
	.loc 1 2172 0
	cmpl	$0, -148(%rbp)	#, no_upper_bound
	jne	.L304	#,
	.loc 1 2173 0
	leaq	-48(%rbp), %rdx	#, tmp227
	leaq	-48(%rbp), %rax	#, tmp228
	movl	$dconst1, %ecx	#,
	movl	$59, %esi	#,
	movq	%rax, %rdi	# tmp228,
	call	earith	#
.L304:
	.loc 1 2181 0
	movq	-112(%rbp), %rax	# x, tmp229
	movq	%rax, (%rsp)	# tmp229,
	movq	-104(%rbp), %rax	# x, tmp230
	movq	%rax, 8(%rsp)	# tmp230,
	movq	-96(%rbp), %rax	# x, tmp231
	movq	%rax, 16(%rsp)	# tmp231,
	call	target_isnan	#
	testl	%eax, %eax	# D.20893
	je	.L305	#,
	.loc 1 2182 0
	movl	$1, -152(%rbp)	#, overflow
	movq	dconst0(%rip), %rax	# dconst0, tmp233
	movq	%rax, -112(%rbp)	# tmp233, x
	movq	dconst0+8(%rip), %rax	# dconst0, tmp234
	movq	%rax, -104(%rbp)	# tmp234, x
	movq	dconst0+16(%rip), %rax	# dconst0, tmp235
	movq	%rax, -96(%rbp)	# tmp235, x
	jmp	.L306	#
.L305:
	.loc 1 2183 0
	movq	-112(%rbp), %rax	# x, tmp236
	movq	%rax, 24(%rsp)	# tmp236,
	movq	-104(%rbp), %rax	# x, tmp237
	movq	%rax, 32(%rsp)	# tmp237,
	movq	-96(%rbp), %rax	# x, tmp238
	movq	%rax, 40(%rsp)	# tmp238,
	movq	-80(%rbp), %rax	# l, tmp239
	movq	%rax, (%rsp)	# tmp239,
	movq	-72(%rbp), %rax	# l, tmp240
	movq	%rax, 8(%rsp)	# tmp240,
	movq	-64(%rbp), %rax	# l, tmp241
	movq	%rax, 16(%rsp)	# tmp241,
	call	ereal_cmp	#
	cmpl	$-1, %eax	#, D.20893
	jne	.L307	#,
	.loc 1 2184 0
	cmpl	$0, -148(%rbp)	#, no_upper_bound
	jne	.L307	#,
	.loc 1 2185 0
	movq	-48(%rbp), %rax	# u, tmp242
	movq	%rax, 24(%rsp)	# tmp242,
	movq	-40(%rbp), %rax	# u, tmp243
	movq	%rax, 32(%rsp)	# tmp243,
	movq	-32(%rbp), %rax	# u, tmp244
	movq	%rax, 40(%rsp)	# tmp244,
	movq	-112(%rbp), %rax	# x, tmp245
	movq	%rax, (%rsp)	# tmp245,
	movq	-104(%rbp), %rax	# x, tmp246
	movq	%rax, 8(%rsp)	# tmp246,
	movq	-96(%rbp), %rax	# x, tmp247
	movq	%rax, 16(%rsp)	# tmp247,
	call	ereal_cmp	#
	.loc 1 2183 0
	cmpl	$-1, %eax	#, D.20893
	je	.L306	#,
.L307:
	.loc 1 2186 0
	movl	$1, -152(%rbp)	#, overflow
.L306:
.LBB11:
	.loc 1 2213 0 discriminator 1
	leaq	-136(%rbp), %rdx	#, tmp248
	leaq	-144(%rbp), %rax	#, tmp249
	movq	-112(%rbp), %rcx	# x, tmp250
	movq	%rcx, (%rsp)	# tmp250,
	movq	-104(%rbp), %rcx	# x, tmp251
	movq	%rcx, 8(%rsp)	# tmp251,
	movq	-96(%rbp), %rcx	# x, tmp252
	movq	%rcx, 16(%rsp)	# tmp252,
	movq	%rdx, %rsi	# tmp248,
	movq	%rax, %rdi	# tmp249,
	call	ereal_to_int	#
	.loc 1 2214 0 discriminator 1
	movq	-136(%rbp), %rdx	# high, high.160
	movq	-144(%rbp), %rax	# low, low.161
	movq	%rdx, %rsi	# high.160,
	movq	%rax, %rdi	# low.162,
	call	build_int_2_wide	#
	movq	%rax, -168(%rbp)	# tmp253, t
.LBE11:
	.loc 1 2217 0 discriminator 1
	movq	-168(%rbp), %rax	# t, tmp254
	movq	-128(%rbp), %rdx	# type, tmp255
	movq	%rdx, 8(%rax)	# tmp255, t_101->common.type
	.loc 1 2219 0 discriminator 1
	movq	-176(%rbp), %rax	# arg1, tmp256
	movzbl	18(%rax), %eax	# *arg1_20(D), tmp259
	shrb	$3, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	movl	%eax, %ebx	# D.20894, D.20895
	movl	-152(%rbp), %edx	# overflow, tmp260
	movq	-168(%rbp), %rax	# t, tmp261
	movl	%edx, %esi	# tmp260,
	movq	%rax, %rdi	# tmp261,
	call	force_fit_type	#
	orl	%ebx, %eax	# D.20895, D.20895
	andl	$1, %eax	#, D.20894
	movl	%eax, %edx	# D.20894, D.20894
	movq	-168(%rbp), %rax	# t, tmp262
	andl	$1, %edx	#, tmp264
	leal	0(,%rdx,8), %ecx	#, tmp265
	movzbl	18(%rax), %edx	#, tmp266
	andl	$-9, %edx	#, tmp267
	orl	%ecx, %edx	# tmp265, tmp268
	movb	%dl, 18(%rax)	# tmp268,
	.loc 1 2221 0 discriminator 1
	movq	-168(%rbp), %rax	# t, tmp269
	movzbl	18(%rax), %eax	# *t_101, tmp272
	shrb	$3, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	movl	%eax, %edx	# D.20894, D.20892
	movq	-176(%rbp), %rax	# arg1, tmp273
	movzbl	18(%rax), %eax	# *arg1_20(D), tmp276
	shrb	$2, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	orl	%edx, %eax	# D.20892, D.20892
	andl	$1, %eax	#, D.20894
	movl	%eax, %edx	# D.20894, D.20894
	movq	-168(%rbp), %rax	# t, tmp277
	andl	$1, %edx	#, tmp279
	leal	0(,%rdx,4), %ecx	#, tmp280
	movzbl	18(%rax), %edx	#, tmp281
	andl	$-5, %edx	#, tmp282
	orl	%ecx, %edx	# tmp280, tmp283
	movb	%dl, 18(%rax)	# tmp283,
.L302:
.LBE10:
	.loc 1 2224 0
	movq	-168(%rbp), %rax	# t, tmp284
	movq	-128(%rbp), %rdx	# type, tmp285
	movq	%rdx, 8(%rax)	# tmp285, t_1->common.type
	jmp	.L308	#
.L291:
	.loc 1 2226 0
	movq	-128(%rbp), %rax	# type, tmp286
	movzbl	16(%rax), %eax	# type_11->common.code, D.20892
	cmpb	$7, %al	#, D.20892
	jne	.L308	#,
	.loc 1 2229 0
	movq	-176(%rbp), %rax	# arg1, tmp287
	movzbl	16(%rax), %eax	# arg1_20(D)->common.code, D.20892
	cmpb	$25, %al	#, D.20892
	jne	.L309	#,
	.loc 1 2230 0
	movq	-176(%rbp), %rdx	# arg1, tmp288
	movq	-128(%rbp), %rax	# type, tmp289
	movq	%rdx, %rsi	# tmp288,
	movq	%rax, %rdi	# tmp289,
	call	build_real_from_int_cst	#
	jmp	.L294	#
.L309:
	.loc 1 2232 0
	movq	-176(%rbp), %rax	# arg1, tmp290
	movzbl	16(%rax), %eax	# arg1_20(D)->common.code, D.20892
	cmpb	$26, %al	#, D.20892
	jne	.L308	#,
.LBB12:
	.loc 1 2236 0
	movq	-176(%rbp), %rax	# arg1, tmp291
	movq	32(%rax), %rdx	# arg1_20(D)->real_cst.real_cst, tmp292
	movq	%rdx, (%rsp)	# tmp292,
	movq	40(%rax), %rdx	# arg1_20(D)->real_cst.real_cst, tmp293
	movq	%rdx, 8(%rsp)	# tmp293,
	movq	48(%rax), %rax	# arg1_20(D)->real_cst.real_cst, tmp294
	movq	%rax, 16(%rsp)	# tmp294,
	call	target_isnan	#
	testl	%eax, %eax	# D.20893
	je	.L310	#,
	.loc 1 2238 0
	movq	-176(%rbp), %rax	# arg1, tmp295
	movq	%rax, -168(%rbp)	# tmp295, t
	.loc 1 2239 0
	movq	-176(%rbp), %rax	# arg1, tmp296
	movq	-128(%rbp), %rdx	# type, tmp297
	movq	%rdx, 8(%rax)	# tmp297, arg1_20(D)->common.type
	.loc 1 2240 0
	movq	-168(%rbp), %rax	# t, D.20891
	jmp	.L294	#
.L310:
	.loc 1 2244 0
	movq	-176(%rbp), %rax	# arg1, tmp298
	movq	%rax, -48(%rbp)	# tmp298, args.arg1
	.loc 1 2245 0
	movq	-128(%rbp), %rax	# type, tmp299
	movq	%rax, -40(%rbp)	# tmp299, args.type
	.loc 1 2247 0
	leaq	-48(%rbp), %rax	#, tmp300
	movq	%rax, %rsi	# tmp300,
	movl	$fold_convert_1, %edi	#,
	call	do_float_handler	#
	testl	%eax, %eax	# D.20893
	je	.L312	#,
	.loc 1 2250 0
	movq	-32(%rbp), %rax	# args.t, tmp301
	movq	%rax, -168(%rbp)	# tmp301, t
	jmp	.L313	#
.L312:
	.loc 1 2255 0
	movl	$1, -152(%rbp)	#, overflow
	.loc 1 2256 0
	movq	-176(%rbp), %rax	# arg1, tmp302
	movq	%rax, %rdi	# tmp302,
	call	copy_node	#
	movq	%rax, -168(%rbp)	# tmp303, t
.L313:
	.loc 1 2260 0
	movq	-176(%rbp), %rax	# arg1, tmp304
	movzbl	18(%rax), %eax	# *arg1_20(D), tmp307
	shrb	$3, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	movl	%eax, %ebx	# D.20894, D.20895
	movl	-152(%rbp), %edx	# overflow, tmp308
	movq	-168(%rbp), %rax	# t, tmp309
	movl	%edx, %esi	# tmp308,
	movq	%rax, %rdi	# tmp309,
	call	force_fit_type	#
	orl	%ebx, %eax	# D.20895, D.20895
	andl	$1, %eax	#, D.20894
	movl	%eax, %edx	# D.20894, D.20894
	movq	-168(%rbp), %rax	# t, tmp310
	andl	$1, %edx	#, tmp312
	leal	0(,%rdx,8), %ecx	#, tmp313
	movzbl	18(%rax), %edx	#, tmp314
	andl	$-9, %edx	#, tmp315
	orl	%ecx, %edx	# tmp313, tmp316
	movb	%dl, 18(%rax)	# tmp316,
	.loc 1 2262 0
	movq	-168(%rbp), %rax	# t, tmp317
	movzbl	18(%rax), %eax	# *t_2, tmp320
	shrb	$3, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	movl	%eax, %edx	# D.20894, D.20892
	movq	-176(%rbp), %rax	# arg1, tmp321
	movzbl	18(%rax), %eax	# *arg1_20(D), tmp324
	shrb	$2, %al	#, D.20894
	andl	$1, %eax	#, D.20894
	orl	%edx, %eax	# D.20892, D.20892
	andl	$1, %eax	#, D.20894
	movl	%eax, %edx	# D.20894, D.20894
	movq	-168(%rbp), %rax	# t, tmp325
	andl	$1, %edx	#, tmp327
	leal	0(,%rdx,4), %ecx	#, tmp328
	movzbl	18(%rax), %edx	#, tmp329
	andl	$-5, %edx	#, tmp330
	orl	%ecx, %edx	# tmp328, tmp331
	movb	%dl, 18(%rax)	# tmp331,
	.loc 1 2263 0
	movq	-168(%rbp), %rax	# t, D.20891
	jmp	.L294	#
.L308:
.LBE12:
	.loc 1 2266 0
	movq	-168(%rbp), %rax	# t, tmp332
	movzbl	17(%rax), %edx	#, tmp335
	orl	$2, %edx	#, tmp336
	movb	%dl, 17(%rax)	# tmp336,
	.loc 1 2267 0
	movq	-168(%rbp), %rax	# t, D.20891
.L294:
	.loc 1 2268 0
	addq	$248, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	fold_convert, .-fold_convert
	.globl	non_lvalue
	.type	non_lvalue, @function
non_lvalue:
.LFB27:
	.loc 1 2275 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2279 0
	movq	-24(%rbp), %rax	# x, tmp68
	movzbl	16(%rax), %eax	# x_2(D)->common.code, D.20905
	cmpb	$116, %al	#, D.20905
	je	.L315	#,
	.loc 1 2280 0
	movq	-24(%rbp), %rax	# x, tmp69
	movzbl	16(%rax), %eax	# x_2(D)->common.code, D.20905
	cmpb	$25, %al	#, D.20905
	je	.L315	#,
	.loc 1 2281 0
	movq	-24(%rbp), %rax	# x, tmp70
	movzbl	16(%rax), %eax	# x_2(D)->common.code, D.20905
	cmpb	$26, %al	#, D.20905
	je	.L315	#,
	.loc 1 2282 0
	movq	-24(%rbp), %rax	# x, tmp71
	movzbl	16(%rax), %eax	# x_2(D)->common.code, D.20905
	cmpb	$29, %al	#, D.20905
	je	.L315	#,
	.loc 1 2283 0
	movq	-24(%rbp), %rax	# x, tmp72
	movzbl	16(%rax), %eax	# x_2(D)->common.code, D.20905
	cmpb	$121, %al	#, D.20905
	jne	.L316	#,
.L315:
	.loc 1 2284 0
	movq	-24(%rbp), %rax	# x, D.20904
	jmp	.L317	#
.L316:
	.loc 1 2286 0
	movq	-24(%rbp), %rax	# x, tmp73
	movq	8(%rax), %rax	# x_2(D)->common.type, D.20906
	movq	-24(%rbp), %rdx	# x, tmp74
	movq	%rax, %rsi	# D.20906,
	movl	$116, %edi	#,
	call	build1	#
	movq	%rax, -8(%rbp)	# tmp75, result
	.loc 1 2287 0
	movq	-24(%rbp), %rax	# x, tmp76
	movzbl	17(%rax), %eax	# *x_2(D), tmp79
	shrb	%al	# D.20907
	andl	$1, %eax	#, D.20907
	movq	-8(%rbp), %rdx	# result, tmp80
	andl	$1, %eax	#, tmp82
	leal	(%rax,%rax), %ecx	#, tmp83
	movzbl	17(%rdx), %eax	#, tmp84
	andl	$-3, %eax	#, tmp85
	orl	%ecx, %eax	# tmp83, tmp86
	movb	%al, 17(%rdx)	# tmp86,
	.loc 1 2288 0
	movq	-8(%rbp), %rax	# result, D.20904
.L317:
	.loc 1 2289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	non_lvalue, .-non_lvalue
	.comm	pedantic_lvalues,4,4
	.globl	pedantic_non_lvalue
	.type	pedantic_non_lvalue, @function
pedantic_non_lvalue:
.LFB28:
	.loc 1 2302 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 2303 0
	movl	pedantic_lvalues(%rip), %eax	# pedantic_lvalues, pedantic_lvalues.163
	testl	%eax, %eax	# pedantic_lvalues.163
	je	.L319	#,
	.loc 1 2304 0
	movq	-8(%rbp), %rax	# x, tmp62
	movq	%rax, %rdi	# tmp62,
	call	non_lvalue	#
	jmp	.L320	#
.L319:
	.loc 1 2306 0
	movq	-8(%rbp), %rax	# x, D.20908
.L320:
	.loc 1 2307 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	pedantic_non_lvalue, .-pedantic_non_lvalue
	.type	invert_tree_comparison, @function
invert_tree_comparison:
.LFB29:
	.loc 1 2316 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 2317 0
	movl	-4(%rbp), %eax	# code, tmp62
	subl	$97, %eax	#, tmp61
	cmpl	$5, %eax	#, tmp61
	ja	.L322	#,
	movl	%eax, %eax	# tmp61, tmp63
	movq	.L324(,%rax,8), %rax	#, tmp64
	jmp	*%rax	# tmp64
	.section	.rodata
	.align 8
	.align 4
.L324:
	.quad	.L323
	.quad	.L325
	.quad	.L326
	.quad	.L327
	.quad	.L328
	.quad	.L329
	.text
.L328:
	.loc 1 2320 0
	movl	$102, %eax	#, D.20909
	jmp	.L330	#
.L329:
	.loc 1 2322 0
	movl	$101, %eax	#, D.20909
	jmp	.L330	#
.L326:
	.loc 1 2324 0
	movl	$98, %eax	#, D.20909
	jmp	.L330	#
.L327:
	.loc 1 2326 0
	movl	$97, %eax	#, D.20909
	jmp	.L330	#
.L323:
	.loc 1 2328 0
	movl	$100, %eax	#, D.20909
	jmp	.L330	#
.L325:
	.loc 1 2330 0
	movl	$99, %eax	#, D.20909
	jmp	.L330	#
.L322:
	.loc 1 2332 0
	movl	$__FUNCTION__.12516, %edx	#,
	movl	$2332, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L330:
	.loc 1 2334 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	invert_tree_comparison, .-invert_tree_comparison
	.type	swap_tree_comparison, @function
swap_tree_comparison:
.LFB30:
	.loc 1 2342 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 2343 0
	movl	-4(%rbp), %eax	# code, tmp62
	subl	$97, %eax	#, tmp61
	cmpl	$5, %eax	#, tmp61
	ja	.L332	#,
	movl	%eax, %eax	# tmp61, tmp63
	movq	.L334(,%rax,8), %rax	#, tmp64
	jmp	*%rax	# tmp64
	.section	.rodata
	.align 8
	.align 4
.L334:
	.quad	.L333
	.quad	.L335
	.quad	.L336
	.quad	.L337
	.quad	.L338
	.quad	.L338
	.text
.L338:
	.loc 1 2347 0
	movl	-4(%rbp), %eax	# code, D.20910
	jmp	.L339	#
.L336:
	.loc 1 2349 0
	movl	$97, %eax	#, D.20910
	jmp	.L339	#
.L337:
	.loc 1 2351 0
	movl	$98, %eax	#, D.20910
	jmp	.L339	#
.L333:
	.loc 1 2353 0
	movl	$99, %eax	#, D.20910
	jmp	.L339	#
.L335:
	.loc 1 2355 0
	movl	$100, %eax	#, D.20910
	jmp	.L339	#
.L332:
	.loc 1 2357 0
	movl	$__FUNCTION__.12527, %edx	#,
	movl	$2357, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L339:
	.loc 1 2359 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	swap_tree_comparison, .-swap_tree_comparison
	.type	truth_value_p, @function
truth_value_p:
.LFB31:
	.loc 1 2366 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 2367 0
	movl	-4(%rbp), %eax	# code, code.165
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20911
	.loc 1 2370 0
	cmpb	$60, %al	#, D.20911
	je	.L341	#,
	.loc 1 2368 0
	cmpl	$93, -4(%rbp)	#, code
	je	.L341	#,
	.loc 1 2368 0 is_stmt 0 discriminator 1
	cmpl	$91, -4(%rbp)	#, code
	je	.L341	#,
	.loc 1 2369 0 is_stmt 1
	cmpl	$94, -4(%rbp)	#, code
	je	.L341	#,
	.loc 1 2369 0 is_stmt 0 discriminator 1
	cmpl	$92, -4(%rbp)	#, code
	je	.L341	#,
	.loc 1 2370 0 is_stmt 1
	cmpl	$95, -4(%rbp)	#, code
	je	.L341	#,
	.loc 1 2370 0 is_stmt 0 discriminator 1
	cmpl	$96, -4(%rbp)	#, code
	jne	.L342	#,
.L341:
	movl	$1, %eax	#, iftmp.164
	jmp	.L343	#
.L342:
	.loc 1 2370 0 discriminator 2
	movl	$0, %eax	#, iftmp.164
.L343:
	.loc 1 2371 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	truth_value_p, .-truth_value_p
	.globl	operand_equal_p
	.type	operand_equal_p, @function
operand_equal_p:
.LFB32:
	.loc 1 2385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# arg0, arg0
	movq	%rsi, -32(%rbp)	# arg1, arg1
	movl	%edx, -36(%rbp)	# only_const, only_const
	.loc 1 2389 0
	movq	-24(%rbp), %rax	# arg0, tmp206
	movq	8(%rax), %rax	# arg0_13(D)->common.type, D.20914
	movzbl	17(%rax), %eax	# *_14, tmp209
	shrb	$5, %al	#, D.20915
	movl	%eax, %edx	# D.20915, D.20915
	andl	$1, %edx	#, D.20915
	movq	-32(%rbp), %rax	# arg1, tmp210
	movq	8(%rax), %rax	# arg1_16(D)->common.type, D.20914
	movzbl	17(%rax), %eax	# *_17, tmp213
	shrb	$5, %al	#, D.20915
	andl	$1, %eax	#, D.20915
	cmpb	%al, %dl	# D.20915, D.20915
	je	.L346	#,
	.loc 1 2390 0
	movl	$0, %eax	#, D.20913
	jmp	.L347	#
.L346:
	.loc 1 2392 0
	jmp	.L348	#
.L351:
	.loc 1 2392 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg0, tmp214
	movq	32(%rax), %rax	# arg0_1->exp.operands, tmp215
	movq	%rax, -24(%rbp)	# tmp215, arg0
.L348:
	movq	-24(%rbp), %rax	# arg0, tmp216
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$115, %al	#, D.20916
	je	.L349	#,
	.loc 1 2392 0 discriminator 3
	movq	-24(%rbp), %rax	# arg0, tmp217
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$114, %al	#, D.20916
	je	.L349	#,
	.loc 1 2392 0 discriminator 1
	movq	-24(%rbp), %rax	# arg0, tmp218
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$116, %al	#, D.20916
	jne	.L350	#,
.L349:
	.loc 1 2392 0 discriminator 2
	movq	-24(%rbp), %rax	# arg0, tmp219
	movq	32(%rax), %rdx	# arg0_1->exp.operands, D.20914
	movq	global_trees(%rip), %rax	# global_trees, D.20914
	cmpq	%rax, %rdx	# D.20914, D.20914
	je	.L350	#,
	.loc 1 2392 0 discriminator 1
	movq	-24(%rbp), %rax	# arg0, tmp220
	movq	8(%rax), %rax	# arg0_1->common.type, D.20914
	movzbl	61(%rax), %eax	# *_25, tmp223
	shrb	%al	# D.20917
	movl	%eax, %edx	# D.20917, D.20917
	movq	-24(%rbp), %rax	# arg0, tmp224
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.20914
	movq	8(%rax), %rax	# _27->common.type, D.20914
	movzbl	61(%rax), %eax	# *_28, tmp227
	shrb	%al	# D.20917
	cmpb	%al, %dl	# D.20917, D.20917
	je	.L351	#,
.L350:
	.loc 1 2393 0 is_stmt 1
	jmp	.L352	#
.L355:
	.loc 1 2393 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp228
	movq	32(%rax), %rax	# arg1_2->exp.operands, tmp229
	movq	%rax, -32(%rbp)	# tmp229, arg1
.L352:
	movq	-32(%rbp), %rax	# arg1, tmp230
	movzbl	16(%rax), %eax	# arg1_2->common.code, D.20916
	cmpb	$115, %al	#, D.20916
	je	.L353	#,
	.loc 1 2393 0 discriminator 3
	movq	-32(%rbp), %rax	# arg1, tmp231
	movzbl	16(%rax), %eax	# arg1_2->common.code, D.20916
	cmpb	$114, %al	#, D.20916
	je	.L353	#,
	.loc 1 2393 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp232
	movzbl	16(%rax), %eax	# arg1_2->common.code, D.20916
	cmpb	$116, %al	#, D.20916
	jne	.L354	#,
.L353:
	.loc 1 2393 0 discriminator 2
	movq	-32(%rbp), %rax	# arg1, tmp233
	movq	32(%rax), %rdx	# arg1_2->exp.operands, D.20914
	movq	global_trees(%rip), %rax	# global_trees, D.20914
	cmpq	%rax, %rdx	# D.20914, D.20914
	je	.L354	#,
	.loc 1 2393 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp234
	movq	8(%rax), %rax	# arg1_2->common.type, D.20914
	movzbl	61(%rax), %eax	# *_36, tmp237
	shrb	%al	# D.20917
	movl	%eax, %edx	# D.20917, D.20917
	movq	-32(%rbp), %rax	# arg1, tmp238
	movq	32(%rax), %rax	# arg1_2->exp.operands, D.20914
	movq	8(%rax), %rax	# _38->common.type, D.20914
	movzbl	61(%rax), %eax	# *_39, tmp241
	shrb	%al	# D.20917
	cmpb	%al, %dl	# D.20917, D.20917
	je	.L355	#,
.L354:
	.loc 1 2395 0 is_stmt 1
	movq	-24(%rbp), %rax	# arg0, tmp242
	movzbl	16(%rax), %edx	# arg0_1->common.code, D.20916
	movq	-32(%rbp), %rax	# arg1, tmp243
	movzbl	16(%rax), %eax	# arg1_2->common.code, D.20916
	cmpb	%al, %dl	# D.20916, D.20916
	jne	.L356	#,
	.loc 1 2398 0
	movq	-24(%rbp), %rax	# arg0, tmp244
	movq	8(%rax), %rax	# arg0_1->common.type, D.20914
	movzbl	16(%rax), %eax	# _44->common.code, D.20916
	testb	%al, %al	# D.20916
	je	.L356	#,
	.loc 1 2399 0
	movq	-32(%rbp), %rax	# arg1, tmp245
	movq	8(%rax), %rax	# arg1_2->common.type, D.20914
	movzbl	16(%rax), %eax	# _46->common.code, D.20916
	testb	%al, %al	# D.20916
	je	.L356	#,
	.loc 1 2400 0
	movq	-24(%rbp), %rax	# arg0, tmp246
	movq	8(%rax), %rax	# arg0_1->common.type, D.20914
	movzbl	61(%rax), %eax	# *_48, tmp249
	shrb	%al	# D.20917
	movl	%eax, %edx	# D.20917, D.20917
	movq	-32(%rbp), %rax	# arg1, tmp250
	movq	8(%rax), %rax	# arg1_2->common.type, D.20914
	movzbl	61(%rax), %eax	# *_50, tmp253
	shrb	%al	# D.20917
	cmpb	%al, %dl	# D.20917, D.20917
	je	.L357	#,
.L356:
	.loc 1 2401 0
	movl	$0, %eax	#, D.20913
	jmp	.L347	#
.L357:
	.loc 1 2410 0
	movq	-24(%rbp), %rax	# arg0, tmp254
	cmpq	-32(%rbp), %rax	# arg1, tmp254
	jne	.L358	#,
	.loc 1 2410 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, only_const
	jne	.L358	#,
	.loc 1 2411 0 is_stmt 1
	movq	-24(%rbp), %rax	# arg0, tmp255
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$118, %al	#, D.20916
	je	.L359	#,
	.loc 1 2412 0
	movq	-24(%rbp), %rax	# arg0, tmp256
	movzbl	17(%rax), %eax	# *arg0_1, D.20916
	andl	$1, %eax	#, D.20916
	testb	%al, %al	# D.20916
	jne	.L358	#,
	.loc 1 2412 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp257
	movzbl	17(%rax), %eax	# *arg1_2, D.20916
	andl	$1, %eax	#, D.20916
	testb	%al, %al	# D.20916
	jne	.L358	#,
.L359:
	.loc 1 2413 0 is_stmt 1
	movl	$1, %eax	#, D.20913
	jmp	.L347	#
.L358:
	.loc 1 2417 0
	movq	-24(%rbp), %rax	# arg0, tmp258
	movzbl	17(%rax), %eax	# *arg0_1, D.20916
	andl	$2, %eax	#, D.20916
	testb	%al, %al	# D.20916
	je	.L360	#,
	.loc 1 2417 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp259
	movzbl	17(%rax), %eax	# *arg1_2, D.20916
	andl	$2, %eax	#, D.20916
	testb	%al, %al	# D.20916
	je	.L360	#,
	.loc 1 2418 0 is_stmt 1
	movq	-24(%rbp), %rax	# arg0, tmp260
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	movzbl	%al, %eax	# D.20916, D.20918
	cmpl	$27, %eax	#, D.20918
	je	.L362	#,
	cmpl	$27, %eax	#, D.20918
	ja	.L363	#,
	cmpl	$25, %eax	#, D.20918
	je	.L364	#,
	cmpl	$26, %eax	#, D.20918
	je	.L365	#,
	.loc 1 2468 0
	jmp	.L360	#
.L363:
	.loc 1 2418 0
	cmpl	$29, %eax	#, D.20918
	je	.L366	#,
	cmpl	$29, %eax	#, D.20918
	jb	.L367	#,
	cmpl	$121, %eax	#, D.20918
	je	.L368	#,
	.loc 1 2468 0
	jmp	.L360	#
.L364:
	.loc 1 2421 0
	movq	-24(%rbp), %rax	# arg0, tmp261
	movzbl	18(%rax), %eax	# *arg0_1, D.20916
	andl	$4, %eax	#, D.20916
	.loc 1 2423 0
	testb	%al, %al	# D.20916
	jne	.L369	#,
	.loc 1 2422 0
	movq	-32(%rbp), %rax	# arg1, tmp262
	movzbl	18(%rax), %eax	# *arg1_2, D.20916
	andl	$4, %eax	#, D.20916
	testb	%al, %al	# D.20916
	jne	.L369	#,
	.loc 1 2423 0
	movq	-32(%rbp), %rdx	# arg1, tmp263
	movq	-24(%rbp), %rax	# arg0, tmp264
	movq	%rdx, %rsi	# tmp263,
	movq	%rax, %rdi	# tmp264,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.20913
	je	.L369	#,
	.loc 1 2423 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.166
	jmp	.L370	#
.L369:
	.loc 1 2423 0 discriminator 1
	movl	$0, %eax	#, iftmp.166
.L370:
	.loc 1 2421 0 is_stmt 1
	jmp	.L347	#
.L365:
	.loc 1 2426 0
	movq	-24(%rbp), %rax	# arg0, tmp265
	movzbl	18(%rax), %eax	# *arg0_1, D.20916
	andl	$4, %eax	#, D.20916
	.loc 1 2428 0
	testb	%al, %al	# D.20916
	jne	.L371	#,
	.loc 1 2427 0
	movq	-32(%rbp), %rax	# arg1, tmp266
	movzbl	18(%rax), %eax	# *arg1_2, D.20916
	andl	$4, %eax	#, D.20916
	testb	%al, %al	# D.20916
	jne	.L371	#,
	.loc 1 2428 0
	movq	-32(%rbp), %rax	# arg1, tmp267
	leaq	32(%rax), %rcx	#, D.20919
	movq	-24(%rbp), %rax	# arg0, tmp268
	addq	$32, %rax	#, D.20919
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.20919,
	movq	%rax, %rdi	# D.20919,
	call	memcmp	#
	testl	%eax, %eax	# D.20913
	jne	.L371	#,
	.loc 1 2428 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.167
	jmp	.L372	#
.L371:
	.loc 1 2428 0 discriminator 1
	movl	$0, %eax	#, iftmp.167
.L372:
	.loc 1 2426 0 is_stmt 1
	jmp	.L347	#
.L367:
.LBB13:
	.loc 1 2435 0
	movq	-24(%rbp), %rax	# arg0, tmp269
	movzbl	18(%rax), %eax	# *arg0_1, D.20916
	andl	$4, %eax	#, D.20916
	testb	%al, %al	# D.20916
	jne	.L373	#,
	.loc 1 2436 0
	movq	-32(%rbp), %rax	# arg1, tmp270
	movzbl	18(%rax), %eax	# *arg1_2, D.20916
	andl	$4, %eax	#, D.20916
	testb	%al, %al	# D.20916
	je	.L374	#,
.L373:
	.loc 1 2437 0
	movl	$0, %eax	#, D.20913
	jmp	.L347	#
.L374:
	.loc 1 2439 0
	movq	-24(%rbp), %rax	# arg0, tmp271
	movq	32(%rax), %rax	# arg0_1->vector.elements, tmp272
	movq	%rax, -16(%rbp)	# tmp272, v1
	.loc 1 2440 0
	movq	-32(%rbp), %rax	# arg1, tmp273
	movq	32(%rax), %rax	# arg1_2->vector.elements, tmp274
	movq	%rax, -8(%rbp)	# tmp274, v2
	.loc 1 2441 0
	jmp	.L375	#
.L378:
	.loc 1 2443 0
	movl	-36(%rbp), %edx	# only_const, tmp275
	movq	-8(%rbp), %rcx	# v2, tmp276
	movq	-16(%rbp), %rax	# v1, tmp277
	movq	%rcx, %rsi	# tmp276,
	movq	%rax, %rdi	# tmp277,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20913
	jne	.L376	#,
	.loc 1 2444 0
	movl	$0, %eax	#, D.20913
	jmp	.L347	#
.L376:
	.loc 1 2445 0
	movq	-16(%rbp), %rax	# v1, tmp278
	movq	(%rax), %rax	# v1_3->common.chain, tmp279
	movq	%rax, -16(%rbp)	# tmp279, v1
	.loc 1 2446 0
	movq	-8(%rbp), %rax	# v2, tmp280
	movq	(%rax), %rax	# v2_4->common.chain, tmp281
	movq	%rax, -8(%rbp)	# tmp281, v2
.L375:
	.loc 1 2441 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, v1
	je	.L377	#,
	.loc 1 2441 0 is_stmt 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, v2
	jne	.L378	#,
.L377:
	.loc 1 2449 0 is_stmt 1
	movl	$1, %eax	#, D.20913
	jmp	.L347	#
.L362:
.LBE13:
	.loc 1 2453 0
	movq	-32(%rbp), %rax	# arg1, tmp282
	movq	32(%rax), %rcx	# arg1_2->complex.real, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp283
	movq	32(%rax), %rax	# arg0_1->complex.real, D.20914
	movl	-36(%rbp), %edx	# only_const, tmp284
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	.loc 1 2455 0
	testl	%eax, %eax	# D.20913
	je	.L379	#,
	.loc 1 2455 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp285
	movq	40(%rax), %rcx	# arg1_2->complex.imag, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp286
	movq	40(%rax), %rax	# arg0_1->complex.imag, D.20914
	movl	-36(%rbp), %edx	# only_const, tmp287
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20913
	je	.L379	#,
	.loc 1 2455 0 discriminator 3
	movl	$1, %eax	#, iftmp.168
	jmp	.L380	#
.L379:
	.loc 1 2455 0 discriminator 2
	movl	$0, %eax	#, iftmp.168
.L380:
	.loc 1 2453 0 is_stmt 1
	jmp	.L347	#
.L366:
	.loc 1 2459 0
	movq	-24(%rbp), %rax	# arg0, tmp288
	movl	32(%rax), %edx	# arg0_1->string.length, D.20913
	movq	-32(%rbp), %rax	# arg1, tmp289
	movl	32(%rax), %eax	# arg1_2->string.length, D.20913
	.loc 1 2460 0
	cmpl	%eax, %edx	# D.20913, D.20913
	jne	.L381	#,
	.loc 1 2462 0 discriminator 1
	movq	-24(%rbp), %rax	# arg0, tmp290
	movl	32(%rax), %eax	# arg0_1->string.length, D.20913
	.loc 1 2460 0 discriminator 1
	movslq	%eax, %rdx	# D.20913, D.20920
	.loc 1 2461 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp291
	movq	40(%rax), %rcx	# arg1_2->string.pointer, D.20921
	.loc 1 2460 0 discriminator 1
	movq	-24(%rbp), %rax	# arg0, tmp292
	movq	40(%rax), %rax	# arg0_1->string.pointer, D.20921
	movq	%rcx, %rsi	# D.20921,
	movq	%rax, %rdi	# D.20921,
	call	memcmp	#
	testl	%eax, %eax	# D.20913
	jne	.L381	#,
	.loc 1 2460 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.169
	jmp	.L382	#
.L381:
	.loc 1 2460 0 discriminator 2
	movl	$0, %eax	#, iftmp.169
.L382:
	.loc 1 2459 0 is_stmt 1
	jmp	.L347	#
.L368:
	.loc 1 2465 0
	movq	-32(%rbp), %rax	# arg1, tmp293
	movq	32(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp294
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	jmp	.L347	#
.L360:
	.loc 1 2471 0
	cmpl	$0, -36(%rbp)	#, only_const
	je	.L383	#,
	.loc 1 2472 0
	movl	$0, %eax	#, D.20913
	jmp	.L347	#
.L383:
	.loc 1 2474 0
	movq	-24(%rbp), %rax	# arg0, tmp295
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	movzbl	%al, %eax	# D.20916, D.20913
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20922
	movsbl	%al, %eax	# D.20922, D.20913
	cmpl	$60, %eax	#, D.20913
	je	.L385	#,
	cmpl	$60, %eax	#, D.20913
	jg	.L386	#,
	cmpl	$49, %eax	#, D.20913
	je	.L387	#,
	cmpl	$50, %eax	#, D.20913
	je	.L385	#,
	jmp	.L384	#
.L386:
	cmpl	$101, %eax	#, D.20913
	je	.L388	#,
	cmpl	$114, %eax	#, D.20913
	je	.L389	#,
	jmp	.L384	#
.L387:
	.loc 1 2478 0
	movq	-24(%rbp), %rax	# arg0, tmp297
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$115, %al	#, D.20916
	je	.L390	#,
	.loc 1 2478 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg0, tmp298
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$114, %al	#, D.20916
	jne	.L391	#,
.L390:
	.loc 1 2479 0 is_stmt 1
	movq	-24(%rbp), %rax	# arg0, tmp299
	movq	8(%rax), %rax	# arg0_1->common.type, D.20914
	movzbl	17(%rax), %eax	# *_124, tmp302
	shrb	$5, %al	#, D.20915
	movl	%eax, %edx	# D.20915, D.20915
	andl	$1, %edx	#, D.20915
	.loc 1 2480 0
	movq	-32(%rbp), %rax	# arg1, tmp303
	movq	8(%rax), %rax	# arg1_2->common.type, D.20914
	movzbl	17(%rax), %eax	# *_126, tmp306
	shrb	$5, %al	#, D.20915
	andl	$1, %eax	#, D.20915
	.loc 1 2479 0
	cmpb	%al, %dl	# D.20915, D.20915
	je	.L391	#,
	.loc 1 2481 0
	movl	$0, %eax	#, D.20913
	jmp	.L347	#
.L391:
	.loc 1 2483 0
	movq	-32(%rbp), %rax	# arg1, tmp307
	movq	32(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp308
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	jmp	.L347	#
.L385:
	.loc 1 2488 0
	movq	-32(%rbp), %rax	# arg1, tmp309
	movq	32(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp310
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20913
	je	.L392	#,
	.loc 1 2489 0
	movq	-32(%rbp), %rax	# arg1, tmp311
	movq	40(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp312
	movq	40(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20913
	je	.L392	#,
	.loc 1 2491 0
	movl	$1, %eax	#, D.20913
	jmp	.L347	#
.L392:
	.loc 1 2494 0
	movq	-24(%rbp), %rax	# arg0, tmp313
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	.loc 1 2502 0
	cmpb	$59, %al	#, D.20916
	je	.L393	#,
	.loc 1 2494 0
	movq	-24(%rbp), %rax	# arg0, tmp314
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$61, %al	#, D.20916
	je	.L393	#,
	.loc 1 2495 0
	movq	-24(%rbp), %rax	# arg0, tmp315
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$78, %al	#, D.20916
	je	.L393	#,
	.loc 1 2495 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg0, tmp316
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$79, %al	#, D.20916
	je	.L393	#,
	.loc 1 2496 0 is_stmt 1
	movq	-24(%rbp), %rax	# arg0, tmp317
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$86, %al	#, D.20916
	je	.L393	#,
	.loc 1 2497 0
	movq	-24(%rbp), %rax	# arg0, tmp318
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$87, %al	#, D.20916
	je	.L393	#,
	.loc 1 2498 0
	movq	-24(%rbp), %rax	# arg0, tmp319
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$88, %al	#, D.20916
	je	.L393	#,
	.loc 1 2499 0
	movq	-24(%rbp), %rax	# arg0, tmp320
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$102, %al	#, D.20916
	je	.L393	#,
	.loc 1 2499 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg0, tmp321
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$101, %al	#, D.20916
	jne	.L394	#,
.L393:
	.loc 1 2500 0 is_stmt 1
	movq	-32(%rbp), %rax	# arg1, tmp322
	movq	40(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp323
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20913
	je	.L394	#,
	.loc 1 2502 0
	movq	-32(%rbp), %rax	# arg1, tmp324
	movq	32(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp325
	movq	40(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20913
	je	.L394	#,
	.loc 1 2502 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.170
	jmp	.L395	#
.L394:
	.loc 1 2502 0 discriminator 2
	movl	$0, %eax	#, iftmp.170
.L395:
	.loc 1 2494 0 is_stmt 1
	jmp	.L347	#
.L389:
	.loc 1 2508 0
	movq	-24(%rbp), %rax	# arg0, tmp326
	movzbl	17(%rax), %eax	# *arg0_1, D.20916
	andl	$1, %eax	#, D.20916
	testb	%al, %al	# D.20916
	jne	.L396	#,
	.loc 1 2509 0
	movq	-32(%rbp), %rax	# arg1, tmp327
	movzbl	17(%rax), %eax	# *arg1_2, D.20916
	andl	$1, %eax	#, D.20916
	testb	%al, %al	# D.20916
	je	.L397	#,
.L396:
	.loc 1 2510 0
	movl	$0, %eax	#, D.20913
	jmp	.L347	#
.L397:
	.loc 1 2512 0
	movq	-24(%rbp), %rax	# arg0, tmp328
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	movzbl	%al, %eax	# D.20916, D.20918
	subl	$39, %eax	#, tmp329
	cmpl	$5, %eax	#, tmp329
	ja	.L398	#,
	movl	%eax, %eax	# tmp329, tmp330
	movq	.L400(,%rax,8), %rax	#, tmp331
	jmp	*%rax	# tmp331
	.section	.rodata
	.align 8
	.align 4
.L400:
	.quad	.L399
	.quad	.L401
	.quad	.L402
	.quad	.L398
	.quad	.L399
	.quad	.L399
	.text
.L402:
	.loc 1 2515 0
	movq	-32(%rbp), %rax	# arg1, tmp332
	movq	32(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp333
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	jmp	.L347	#
.L399:
	.loc 1 2521 0
	movq	-32(%rbp), %rax	# arg1, tmp334
	movq	32(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp335
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	.loc 1 2523 0
	testl	%eax, %eax	# D.20913
	je	.L403	#,
	.loc 1 2523 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# arg1, tmp336
	movq	40(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp337
	movq	40(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20913
	je	.L403	#,
	.loc 1 2523 0 discriminator 3
	movl	$1, %eax	#, iftmp.171
	jmp	.L404	#
.L403:
	.loc 1 2523 0 discriminator 2
	movl	$0, %eax	#, iftmp.171
.L404:
	.loc 1 2521 0 is_stmt 1
	jmp	.L347	#
.L401:
	.loc 1 2527 0
	movq	-32(%rbp), %rax	# arg1, tmp338
	movq	32(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp339
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	.loc 1 2531 0
	testl	%eax, %eax	# D.20913
	je	.L405	#,
	.loc 1 2529 0
	movq	-32(%rbp), %rax	# arg1, tmp340
	movq	40(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp341
	movq	40(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20913
	je	.L405	#,
	.loc 1 2531 0
	movq	-32(%rbp), %rax	# arg1, tmp342
	movq	48(%rax), %rcx	# arg1_2->exp.operands, D.20914
	movq	-24(%rbp), %rax	# arg0, tmp343
	movq	48(%rax), %rax	# arg0_1->exp.operands, D.20914
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20914,
	movq	%rax, %rdi	# D.20914,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20913
	je	.L405	#,
	.loc 1 2531 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.172
	jmp	.L406	#
.L405:
	.loc 1 2531 0 discriminator 1
	movl	$0, %eax	#, iftmp.172
.L406:
	.loc 1 2527 0 is_stmt 1
	jmp	.L347	#
.L398:
	.loc 1 2534 0
	movl	$0, %eax	#, D.20913
	jmp	.L347	#
.L388:
	.loc 1 2538 0
	movq	-24(%rbp), %rax	# arg0, tmp344
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.20916
	cmpb	$120, %al	#, D.20916
	jne	.L407	#,
	.loc 1 2539 0
	movq	-32(%rbp), %rax	# arg1, tmp345
	addq	$40, %rax	#, D.20923
	movq	(%rax), %rdx	# MEM[(struct rtx_def * *)_190], D.20924
	movq	-24(%rbp), %rax	# arg0, tmp346
	addq	$40, %rax	#, D.20923
	movq	(%rax), %rax	# MEM[(struct rtx_def * *)_192], D.20924
	movq	%rdx, %rsi	# D.20924,
	movq	%rax, %rdi	# D.20924,
	call	rtx_equal_p	#
	jmp	.L347	#
.L407:
	.loc 1 2540 0
	movl	$0, %eax	#, D.20913
	jmp	.L347	#
.L384:
	.loc 1 2543 0
	movl	$0, %eax	#, D.20913
.L347:
	.loc 1 2545 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	operand_equal_p, .-operand_equal_p
	.type	operand_equal_for_comparison_p, @function
operand_equal_for_comparison_p:
.LFB33:
	.loc 1 2556 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# arg0, arg0
	movq	%rsi, -64(%rbp)	# arg1, arg1
	movq	%rdx, -72(%rbp)	# other, other
	.loc 1 2561 0
	movq	-64(%rbp), %rcx	# arg1, tmp114
	movq	-56(%rbp), %rax	# arg0, tmp115
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20927
	je	.L409	#,
	.loc 1 2562 0
	movl	$1, %eax	#, D.20927
	jmp	.L424	#
.L409:
	.loc 1 2564 0
	movq	-56(%rbp), %rax	# arg0, tmp116
	movq	8(%rax), %rax	# arg0_4(D)->common.type, D.20928
	movzbl	16(%rax), %eax	# _8->common.code, D.20929
	cmpb	$6, %al	#, D.20929
	je	.L411	#,
	.loc 1 2564 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# arg0, tmp117
	movq	8(%rax), %rax	# arg0_4(D)->common.type, D.20928
	movzbl	16(%rax), %eax	# _10->common.code, D.20929
	cmpb	$10, %al	#, D.20929
	je	.L411	#,
	movq	-56(%rbp), %rax	# arg0, tmp118
	movq	8(%rax), %rax	# arg0_4(D)->common.type, D.20928
	movzbl	16(%rax), %eax	# _12->common.code, D.20929
	cmpb	$11, %al	#, D.20929
	je	.L411	#,
	movq	-56(%rbp), %rax	# arg0, tmp119
	movq	8(%rax), %rax	# arg0_4(D)->common.type, D.20928
	movzbl	16(%rax), %eax	# _14->common.code, D.20929
	cmpb	$12, %al	#, D.20929
	jne	.L412	#,
.L411:
	.loc 1 2565 0 is_stmt 1
	movq	-64(%rbp), %rax	# arg1, tmp120
	movq	8(%rax), %rax	# arg1_5(D)->common.type, D.20928
	movzbl	16(%rax), %eax	# _16->common.code, D.20929
	cmpb	$6, %al	#, D.20929
	je	.L413	#,
	.loc 1 2565 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# arg1, tmp121
	movq	8(%rax), %rax	# arg1_5(D)->common.type, D.20928
	movzbl	16(%rax), %eax	# _18->common.code, D.20929
	cmpb	$10, %al	#, D.20929
	je	.L413	#,
	movq	-64(%rbp), %rax	# arg1, tmp122
	movq	8(%rax), %rax	# arg1_5(D)->common.type, D.20928
	movzbl	16(%rax), %eax	# _20->common.code, D.20929
	cmpb	$11, %al	#, D.20929
	je	.L413	#,
	movq	-64(%rbp), %rax	# arg1, tmp123
	movq	8(%rax), %rax	# arg1_5(D)->common.type, D.20928
	movzbl	16(%rax), %eax	# _22->common.code, D.20929
	cmpb	$12, %al	#, D.20929
	je	.L413	#,
.L412:
	.loc 1 2566 0 is_stmt 1
	movl	$0, %eax	#, D.20927
	jmp	.L424	#
.L413:
	.loc 1 2571 0
	movq	-56(%rbp), %rax	# arg0, tmp124
	movq	%rax, -32(%rbp)	# tmp124, primarg0
	movq	-64(%rbp), %rax	# arg1, tmp125
	movq	%rax, -24(%rbp)	# tmp125, primarg1
	.loc 1 2572 0
	jmp	.L414	#
.L417:
	.loc 1 2572 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# primarg0, tmp126
	movq	32(%rax), %rax	# primarg0_1->exp.operands, tmp127
	movq	%rax, -32(%rbp)	# tmp127, primarg0
.L414:
	movq	-32(%rbp), %rax	# primarg0, tmp128
	movzbl	16(%rax), %eax	# primarg0_1->common.code, D.20929
	cmpb	$115, %al	#, D.20929
	je	.L415	#,
	.loc 1 2572 0 discriminator 3
	movq	-32(%rbp), %rax	# primarg0, tmp129
	movzbl	16(%rax), %eax	# primarg0_1->common.code, D.20929
	cmpb	$114, %al	#, D.20929
	je	.L415	#,
	.loc 1 2572 0 discriminator 1
	movq	-32(%rbp), %rax	# primarg0, tmp130
	movzbl	16(%rax), %eax	# primarg0_1->common.code, D.20929
	cmpb	$116, %al	#, D.20929
	jne	.L416	#,
.L415:
	.loc 1 2572 0 discriminator 2
	movq	-32(%rbp), %rax	# primarg0, tmp131
	movq	32(%rax), %rdx	# primarg0_1->exp.operands, D.20928
	movq	global_trees(%rip), %rax	# global_trees, D.20928
	cmpq	%rax, %rdx	# D.20928, D.20928
	je	.L416	#,
	.loc 1 2572 0 discriminator 1
	movq	-32(%rbp), %rax	# primarg0, tmp132
	movq	8(%rax), %rax	# primarg0_1->common.type, D.20928
	movzbl	61(%rax), %eax	# *_31, tmp135
	shrb	%al	# D.20930
	movl	%eax, %edx	# D.20930, D.20930
	movq	-32(%rbp), %rax	# primarg0, tmp136
	movq	32(%rax), %rax	# primarg0_1->exp.operands, D.20928
	movq	8(%rax), %rax	# _33->common.type, D.20928
	movzbl	61(%rax), %eax	# *_34, tmp139
	shrb	%al	# D.20930
	cmpb	%al, %dl	# D.20930, D.20930
	je	.L417	#,
.L416:
	.loc 1 2573 0 is_stmt 1
	jmp	.L418	#
.L421:
	.loc 1 2573 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# primarg1, tmp140
	movq	32(%rax), %rax	# primarg1_2->exp.operands, tmp141
	movq	%rax, -24(%rbp)	# tmp141, primarg1
.L418:
	movq	-24(%rbp), %rax	# primarg1, tmp142
	movzbl	16(%rax), %eax	# primarg1_2->common.code, D.20929
	cmpb	$115, %al	#, D.20929
	je	.L419	#,
	.loc 1 2573 0 discriminator 3
	movq	-24(%rbp), %rax	# primarg1, tmp143
	movzbl	16(%rax), %eax	# primarg1_2->common.code, D.20929
	cmpb	$114, %al	#, D.20929
	je	.L419	#,
	.loc 1 2573 0 discriminator 1
	movq	-24(%rbp), %rax	# primarg1, tmp144
	movzbl	16(%rax), %eax	# primarg1_2->common.code, D.20929
	cmpb	$116, %al	#, D.20929
	jne	.L420	#,
.L419:
	.loc 1 2573 0 discriminator 2
	movq	-24(%rbp), %rax	# primarg1, tmp145
	movq	32(%rax), %rdx	# primarg1_2->exp.operands, D.20928
	movq	global_trees(%rip), %rax	# global_trees, D.20928
	cmpq	%rax, %rdx	# D.20928, D.20928
	je	.L420	#,
	.loc 1 2573 0 discriminator 1
	movq	-24(%rbp), %rax	# primarg1, tmp146
	movq	8(%rax), %rax	# primarg1_2->common.type, D.20928
	movzbl	61(%rax), %eax	# *_42, tmp149
	shrb	%al	# D.20930
	movl	%eax, %edx	# D.20930, D.20930
	movq	-24(%rbp), %rax	# primarg1, tmp150
	movq	32(%rax), %rax	# primarg1_2->exp.operands, D.20928
	movq	8(%rax), %rax	# _44->common.type, D.20928
	movzbl	61(%rax), %eax	# *_45, tmp153
	shrb	%al	# D.20930
	cmpb	%al, %dl	# D.20930, D.20930
	je	.L421	#,
.L420:
	.loc 1 2574 0 is_stmt 1
	movq	-24(%rbp), %rcx	# primarg1, tmp154
	movq	-32(%rbp), %rax	# primarg0, tmp155
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20927
	je	.L422	#,
	.loc 1 2575 0
	movl	$1, %eax	#, D.20927
	jmp	.L424	#
.L422:
	.loc 1 2583 0
	leaq	-44(%rbp), %rdx	#, tmp156
	movq	-64(%rbp), %rax	# arg1, tmp157
	movq	%rdx, %rsi	# tmp156,
	movq	%rax, %rdi	# tmp157,
	call	get_narrower	#
	movq	%rax, -24(%rbp)	# tmp158, primarg1
	.loc 1 2584 0
	leaq	-40(%rbp), %rdx	#, tmp159
	movq	-72(%rbp), %rax	# other, tmp160
	movq	%rdx, %rsi	# tmp159,
	movq	%rax, %rdi	# tmp160,
	call	get_narrower	#
	movq	%rax, -16(%rbp)	# tmp161, primother
	.loc 1 2586 0
	movq	-64(%rbp), %rax	# arg1, tmp162
	movq	8(%rax), %rax	# arg1_5(D)->common.type, D.20928
	movzwl	60(%rax), %eax	# *_53, tmp165
	andw	$511, %ax	#, D.20931
	movzwl	%ax, %eax	# D.20931, tmp166
	movl	%eax, -36(%rbp)	# tmp166, correct_width
	.loc 1 2587 0
	movl	-44(%rbp), %edx	# unsignedp1, unsignedp1.173
	movl	-40(%rbp), %eax	# unsignedpo, unsignedpo.174
	cmpl	%eax, %edx	# unsignedpo.174, unsignedp1.173
	jne	.L423	#,
	.loc 1 2588 0
	movq	-24(%rbp), %rax	# primarg1, tmp167
	movq	8(%rax), %rax	# primarg1_50->common.type, D.20928
	movzwl	60(%rax), %eax	# *_58, tmp170
	andw	$511, %ax	#, D.20931
	movzwl	%ax, %eax	# D.20931, D.20932
	cmpl	-36(%rbp), %eax	# correct_width, D.20932
	jae	.L423	#,
	.loc 1 2589 0
	movq	-16(%rbp), %rax	# primother, tmp171
	movq	8(%rax), %rax	# primother_52->common.type, D.20928
	movzwl	60(%rax), %eax	# *_61, tmp174
	andw	$511, %ax	#, D.20931
	movzwl	%ax, %eax	# D.20931, D.20932
	cmpl	-36(%rbp), %eax	# correct_width, D.20932
	jae	.L423	#,
.LBB14:
	.loc 1 2591 0
	movq	-56(%rbp), %rax	# arg0, tmp175
	movq	8(%rax), %rax	# arg0_4(D)->common.type, tmp176
	movq	%rax, -8(%rbp)	# tmp176, type
	.loc 1 2595 0
	movq	-24(%rbp), %rax	# primarg1, tmp177
	movq	8(%rax), %rdx	# primarg1_50->common.type, D.20928
	movl	-44(%rbp), %eax	# unsignedp1, unsignedp1.175
	movq	%rdx, %rsi	# D.20928,
	movl	%eax, %edi	# unsignedp1.175,
	call	signed_or_unsigned_type	#
	movq	-24(%rbp), %rdx	# primarg1, tmp178
	movq	%rdx, %rsi	# tmp178,
	movq	%rax, %rdi	# D.20928,
	call	convert	#
	movq	%rax, -24(%rbp)	# tmp179, primarg1
	.loc 1 2599 0
	movq	-24(%rbp), %rdx	# primarg1, tmp180
	movq	-8(%rbp), %rax	# type, tmp181
	movq	%rdx, %rsi	# tmp180,
	movq	%rax, %rdi	# tmp181,
	call	convert	#
	movq	%rax, %rcx	#, D.20928
	movq	-56(%rbp), %rax	# arg0, tmp182
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20928,
	movq	%rax, %rdi	# tmp182,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20927
	je	.L423	#,
	.loc 1 2600 0
	movl	$1, %eax	#, D.20927
	jmp	.L424	#
.L423:
.LBE14:
	.loc 1 2603 0
	movl	$0, %eax	#, D.20927
.L424:
	.loc 1 2604 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	operand_equal_for_comparison_p, .-operand_equal_for_comparison_p
	.type	twoval_comparison_p, @function
twoval_comparison_p:
.LFB34:
	.loc 1 2621 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# arg, arg
	movq	%rsi, -32(%rbp)	# cval1, cval1
	movq	%rdx, -40(%rbp)	# cval2, cval2
	movq	%rcx, -48(%rbp)	# save_p, save_p
	.loc 1 2622 0
	movq	-24(%rbp), %rax	# arg, tmp105
	movzbl	16(%rax), %eax	# arg_5(D)->common.code, D.20934
	movzbl	%al, %eax	# D.20934, tmp106
	movl	%eax, -4(%rbp)	# tmp106, code
	.loc 1 2623 0
	movl	-4(%rbp), %eax	# code, code.176
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, tmp108
	movb	%al, -5(%rbp)	# tmp108, class
	.loc 1 2626 0
	cmpb	$101, -5(%rbp)	#, class
	jne	.L426	#,
	.loc 1 2626 0 is_stmt 0 discriminator 1
	cmpl	$96, -4(%rbp)	#, code
	jne	.L426	#,
	.loc 1 2627 0 is_stmt 1
	movb	$49, -5(%rbp)	#, class
	jmp	.L427	#
.L426:
	.loc 1 2628 0
	cmpb	$101, -5(%rbp)	#, class
	jne	.L428	#,
	.loc 1 2629 0
	cmpl	$91, -4(%rbp)	#, code
	je	.L429	#,
	.loc 1 2629 0 is_stmt 0 discriminator 1
	cmpl	$92, -4(%rbp)	#, code
	je	.L429	#,
	.loc 1 2630 0 is_stmt 1
	cmpl	$47, -4(%rbp)	#, code
	jne	.L428	#,
.L429:
	.loc 1 2631 0
	movb	$50, -5(%rbp)	#, class
	jmp	.L427	#
.L428:
	.loc 1 2633 0
	cmpb	$101, -5(%rbp)	#, class
	jne	.L427	#,
	.loc 1 2633 0 is_stmt 0 discriminator 1
	cmpl	$118, -4(%rbp)	#, code
	jne	.L427	#,
	movq	-24(%rbp), %rax	# arg, tmp109
	addq	$48, %rax	#, D.20935
	movq	(%rax), %rax	# MEM[(struct rtx_def * *)_12], D.20936
	testq	%rax, %rax	# D.20936
	jne	.L427	#,
	.loc 1 2634 0 is_stmt 1
	movq	-24(%rbp), %rax	# arg, tmp110
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, D.20937
	movzbl	17(%rax), %eax	# *_14, D.20934
	andl	$1, %eax	#, D.20934
	testb	%al, %al	# D.20934
	jne	.L427	#,
	.loc 1 2638 0
	movq	-32(%rbp), %rax	# cval1, tmp111
	movq	(%rax), %rax	# *cval1_17(D), D.20937
	testq	%rax, %rax	# D.20937
	jne	.L430	#,
	.loc 1 2638 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cval2, tmp112
	movq	(%rax), %rax	# *cval2_19(D), D.20937
	testq	%rax, %rax	# D.20937
	je	.L431	#,
.L430:
	.loc 1 2639 0 is_stmt 1
	movl	$0, %eax	#, D.20933
	jmp	.L432	#
.L431:
	.loc 1 2641 0
	movb	$49, -5(%rbp)	#, class
	.loc 1 2642 0
	movq	-48(%rbp), %rax	# save_p, tmp113
	movl	$1, (%rax)	#, *save_p_22(D)
.L427:
	.loc 1 2645 0
	movsbl	-5(%rbp), %eax	# class, D.20933
	cmpl	$60, %eax	#, D.20933
	je	.L434	#,
	cmpl	$60, %eax	#, D.20933
	jg	.L435	#,
	cmpl	$49, %eax	#, D.20933
	je	.L436	#,
	cmpl	$50, %eax	#, D.20933
	je	.L437	#,
	jmp	.L433	#
.L435:
	cmpl	$99, %eax	#, D.20933
	je	.L438	#,
	cmpl	$101, %eax	#, D.20933
	je	.L439	#,
	jmp	.L433	#
.L436:
	.loc 1 2648 0
	movq	-24(%rbp), %rax	# arg, tmp114
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, D.20937
	movq	-48(%rbp), %rcx	# save_p, tmp115
	movq	-40(%rbp), %rdx	# cval2, tmp116
	movq	-32(%rbp), %rsi	# cval1, tmp117
	movq	%rax, %rdi	# D.20937,
	call	twoval_comparison_p	#
	jmp	.L432	#
.L437:
	.loc 1 2651 0
	movq	-24(%rbp), %rax	# arg, tmp118
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, D.20937
	movq	-48(%rbp), %rcx	# save_p, tmp119
	movq	-40(%rbp), %rdx	# cval2, tmp120
	movq	-32(%rbp), %rsi	# cval1, tmp121
	movq	%rax, %rdi	# D.20937,
	call	twoval_comparison_p	#
	.loc 1 2652 0
	testl	%eax, %eax	# D.20933
	je	.L440	#,
	.loc 1 2652 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg, tmp122
	movq	40(%rax), %rax	# arg_5(D)->exp.operands, D.20937
	movq	-48(%rbp), %rcx	# save_p, tmp123
	movq	-40(%rbp), %rdx	# cval2, tmp124
	movq	-32(%rbp), %rsi	# cval1, tmp125
	movq	%rax, %rdi	# D.20937,
	call	twoval_comparison_p	#
	testl	%eax, %eax	# D.20933
	je	.L440	#,
	.loc 1 2652 0 discriminator 3
	movl	$1, %eax	#, iftmp.177
	jmp	.L441	#
.L440:
	.loc 1 2652 0 discriminator 2
	movl	$0, %eax	#, iftmp.177
.L441:
	.loc 1 2651 0 is_stmt 1
	jmp	.L432	#
.L438:
	.loc 1 2656 0
	movl	$1, %eax	#, D.20933
	jmp	.L432	#
.L439:
	.loc 1 2659 0
	cmpl	$51, -4(%rbp)	#, code
	jne	.L442	#,
	.loc 1 2660 0
	movq	-24(%rbp), %rax	# arg, tmp126
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, D.20937
	movq	-48(%rbp), %rcx	# save_p, tmp127
	movq	-40(%rbp), %rdx	# cval2, tmp128
	movq	-32(%rbp), %rsi	# cval1, tmp129
	movq	%rax, %rdi	# D.20937,
	call	twoval_comparison_p	#
	.loc 1 2664 0
	testl	%eax, %eax	# D.20933
	je	.L443	#,
	.loc 1 2662 0
	movq	-24(%rbp), %rax	# arg, tmp130
	movq	40(%rax), %rax	# arg_5(D)->exp.operands, D.20937
	movq	-48(%rbp), %rcx	# save_p, tmp131
	movq	-40(%rbp), %rdx	# cval2, tmp132
	movq	-32(%rbp), %rsi	# cval1, tmp133
	movq	%rax, %rdi	# D.20937,
	call	twoval_comparison_p	#
	testl	%eax, %eax	# D.20933
	je	.L443	#,
	.loc 1 2664 0
	movq	-24(%rbp), %rax	# arg, tmp134
	movq	48(%rax), %rax	# arg_5(D)->exp.operands, D.20937
	movq	-48(%rbp), %rcx	# save_p, tmp135
	movq	-40(%rbp), %rdx	# cval2, tmp136
	movq	-32(%rbp), %rsi	# cval1, tmp137
	movq	%rax, %rdi	# D.20937,
	call	twoval_comparison_p	#
	testl	%eax, %eax	# D.20933
	je	.L443	#,
	.loc 1 2664 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.178
	jmp	.L444	#
.L443:
	.loc 1 2664 0 discriminator 1
	movl	$0, %eax	#, iftmp.178
.L444:
	.loc 1 2660 0 is_stmt 1
	jmp	.L432	#
.L442:
	.loc 1 2666 0
	movl	$0, %eax	#, D.20933
	jmp	.L432	#
.L434:
	.loc 1 2675 0
	movq	-24(%rbp), %rax	# arg, tmp138
	movq	40(%rax), %rcx	# arg_5(D)->exp.operands, D.20937
	movq	-24(%rbp), %rax	# arg, tmp139
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, D.20937
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20937,
	movq	%rax, %rdi	# D.20937,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20933
	je	.L445	#,
	.loc 1 2677 0
	movl	$0, %eax	#, D.20933
	jmp	.L432	#
.L445:
	.loc 1 2679 0
	movq	-32(%rbp), %rax	# cval1, tmp140
	movq	(%rax), %rax	# *cval1_17(D), D.20937
	testq	%rax, %rax	# D.20937
	jne	.L446	#,
	.loc 1 2680 0
	movq	-24(%rbp), %rax	# arg, tmp141
	movq	32(%rax), %rdx	# arg_5(D)->exp.operands, D.20937
	movq	-32(%rbp), %rax	# cval1, tmp142
	movq	%rdx, (%rax)	# D.20937, *cval1_17(D)
	jmp	.L447	#
.L446:
	.loc 1 2681 0
	movq	-24(%rbp), %rax	# arg, tmp143
	movq	32(%rax), %rcx	# arg_5(D)->exp.operands, D.20937
	movq	-32(%rbp), %rax	# cval1, tmp144
	movq	(%rax), %rax	# *cval1_17(D), D.20937
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20937,
	movq	%rax, %rdi	# D.20937,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20933
	jne	.L447	#,
	.loc 1 2683 0
	movq	-40(%rbp), %rax	# cval2, tmp145
	movq	(%rax), %rax	# *cval2_19(D), D.20937
	testq	%rax, %rax	# D.20937
	jne	.L448	#,
	.loc 1 2684 0
	movq	-24(%rbp), %rax	# arg, tmp146
	movq	32(%rax), %rdx	# arg_5(D)->exp.operands, D.20937
	movq	-40(%rbp), %rax	# cval2, tmp147
	movq	%rdx, (%rax)	# D.20937, *cval2_19(D)
	jmp	.L447	#
.L448:
	.loc 1 2685 0
	movq	-24(%rbp), %rax	# arg, tmp148
	movq	32(%rax), %rcx	# arg_5(D)->exp.operands, D.20937
	movq	-40(%rbp), %rax	# cval2, tmp149
	movq	(%rax), %rax	# *cval2_19(D), D.20937
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20937,
	movq	%rax, %rdi	# D.20937,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20933
	jne	.L447	#,
	.loc 1 2688 0
	movl	$0, %eax	#, D.20933
	jmp	.L432	#
.L447:
	.loc 1 2690 0
	movq	-24(%rbp), %rax	# arg, tmp150
	movq	40(%rax), %rcx	# arg_5(D)->exp.operands, D.20937
	movq	-32(%rbp), %rax	# cval1, tmp151
	movq	(%rax), %rax	# *cval1_17(D), D.20937
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20937,
	movq	%rax, %rdi	# D.20937,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20933
	jne	.L449	#,
	.loc 1 2692 0
	movq	-40(%rbp), %rax	# cval2, tmp152
	movq	(%rax), %rax	# *cval2_19(D), D.20937
	testq	%rax, %rax	# D.20937
	jne	.L450	#,
	.loc 1 2693 0
	movq	-24(%rbp), %rax	# arg, tmp153
	movq	40(%rax), %rdx	# arg_5(D)->exp.operands, D.20937
	movq	-40(%rbp), %rax	# cval2, tmp154
	movq	%rdx, (%rax)	# D.20937, *cval2_19(D)
	jmp	.L449	#
.L450:
	.loc 1 2694 0
	movq	-24(%rbp), %rax	# arg, tmp155
	movq	40(%rax), %rcx	# arg_5(D)->exp.operands, D.20937
	movq	-40(%rbp), %rax	# cval2, tmp156
	movq	(%rax), %rax	# *cval2_19(D), D.20937
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20937,
	movq	%rax, %rdi	# D.20937,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20933
	jne	.L449	#,
	.loc 1 2697 0
	movl	$0, %eax	#, D.20933
	jmp	.L432	#
.L449:
	.loc 1 2699 0
	movl	$1, %eax	#, D.20933
	jmp	.L432	#
.L433:
	.loc 1 2702 0
	movl	$0, %eax	#, D.20933
.L432:
	.loc 1 2704 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	twoval_comparison_p, .-twoval_comparison_p
	.type	eval_subst, @function
eval_subst:
.LFB35:
	.loc 1 2715 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# arg, arg
	movq	%rsi, -64(%rbp)	# old0, old0
	movq	%rdx, -72(%rbp)	# new0, new0
	movq	%rcx, -80(%rbp)	# old1, old1
	movq	%r8, -88(%rbp)	# new1, new1
	.loc 1 2716 0
	movq	-56(%rbp), %rax	# arg, tmp86
	movq	8(%rax), %rax	# arg_5(D)->common.type, tmp87
	movq	%rax, -24(%rbp)	# tmp87, type
	.loc 1 2717 0
	movq	-56(%rbp), %rax	# arg, tmp88
	movzbl	16(%rax), %eax	# arg_5(D)->common.code, D.20940
	movzbl	%al, %eax	# D.20940, tmp89
	movl	%eax, -44(%rbp)	# tmp89, code
	.loc 1 2718 0
	movl	-44(%rbp), %eax	# code, code.179
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, tmp91
	movb	%al, -45(%rbp)	# tmp91, class
	.loc 1 2721 0
	cmpb	$101, -45(%rbp)	#, class
	jne	.L452	#,
	.loc 1 2721 0 is_stmt 0 discriminator 1
	cmpl	$96, -44(%rbp)	#, code
	jne	.L452	#,
	.loc 1 2722 0 is_stmt 1
	movb	$49, -45(%rbp)	#, class
	jmp	.L453	#
.L452:
	.loc 1 2723 0
	cmpb	$101, -45(%rbp)	#, class
	jne	.L453	#,
	.loc 1 2724 0
	cmpl	$91, -44(%rbp)	#, code
	je	.L454	#,
	.loc 1 2724 0 is_stmt 0 discriminator 1
	cmpl	$92, -44(%rbp)	#, code
	jne	.L453	#,
.L454:
	.loc 1 2725 0 is_stmt 1
	movb	$50, -45(%rbp)	#, class
.L453:
	.loc 1 2727 0
	movsbl	-45(%rbp), %eax	# class, D.20941
	cmpl	$50, %eax	#, D.20941
	je	.L456	#,
	cmpl	$50, %eax	#, D.20941
	jg	.L457	#,
	cmpl	$49, %eax	#, D.20941
	je	.L458	#,
	jmp	.L455	#
.L457:
	cmpl	$60, %eax	#, D.20941
	je	.L459	#,
	cmpl	$101, %eax	#, D.20941
	je	.L460	#,
	jmp	.L455	#
.L458:
	.loc 1 2730 0
	movq	-56(%rbp), %rax	# arg, tmp92
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, D.20942
	movq	-88(%rbp), %rdi	# new1, tmp93
	movq	-80(%rbp), %rcx	# old1, tmp94
	movq	-72(%rbp), %rdx	# new0, tmp95
	movq	-64(%rbp), %rsi	# old0, tmp96
	movq	%rdi, %r8	# tmp93,
	movq	%rax, %rdi	# D.20942,
	call	eval_subst	#
	movq	%rax, %rdx	#, D.20942
	movq	-24(%rbp), %rcx	# type, tmp97
	movl	-44(%rbp), %eax	# code, tmp98
	movq	%rcx, %rsi	# tmp97,
	movl	%eax, %edi	# tmp98,
	call	build1	#
	movq	%rax, %rdi	# D.20942,
	call	fold	#
	jmp	.L461	#
.L456:
	.loc 1 2735 0
	movq	-56(%rbp), %rax	# arg, tmp99
	movq	40(%rax), %rax	# arg_5(D)->exp.operands, D.20942
	movq	-88(%rbp), %rdi	# new1, tmp100
	movq	-80(%rbp), %rcx	# old1, tmp101
	movq	-72(%rbp), %rdx	# new0, tmp102
	movq	-64(%rbp), %rsi	# old0, tmp103
	movq	%rdi, %r8	# tmp100,
	movq	%rax, %rdi	# D.20942,
	call	eval_subst	#
	movq	%rax, %rbx	#, D.20942
	movq	-56(%rbp), %rax	# arg, tmp104
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, D.20942
	movq	-88(%rbp), %rdi	# new1, tmp105
	movq	-80(%rbp), %rcx	# old1, tmp106
	movq	-72(%rbp), %rdx	# new0, tmp107
	movq	-64(%rbp), %rsi	# old0, tmp108
	movq	%rdi, %r8	# tmp105,
	movq	%rax, %rdi	# D.20942,
	call	eval_subst	#
	movq	%rax, %rdx	#, D.20942
	movq	-24(%rbp), %rsi	# type, tmp109
	movl	-44(%rbp), %eax	# code, tmp110
	movq	%rbx, %rcx	# D.20942,
	movl	%eax, %edi	# tmp110,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20942,
	call	fold	#
	jmp	.L461	#
.L460:
	.loc 1 2742 0
	movl	-44(%rbp), %eax	# code, code
	cmpl	$51, %eax	#, code
	je	.L463	#,
	cmpl	$118, %eax	#, code
	je	.L464	#,
	cmpl	$47, %eax	#, code
	je	.L465	#,
	.loc 1 2759 0
	jmp	.L459	#
.L464:
	.loc 1 2745 0
	movq	-56(%rbp), %rax	# arg, tmp112
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, D.20942
	movq	-88(%rbp), %rdi	# new1, tmp113
	movq	-80(%rbp), %rcx	# old1, tmp114
	movq	-72(%rbp), %rdx	# new0, tmp115
	movq	-64(%rbp), %rsi	# old0, tmp116
	movq	%rdi, %r8	# tmp113,
	movq	%rax, %rdi	# D.20942,
	call	eval_subst	#
	jmp	.L461	#
.L465:
	.loc 1 2748 0
	movq	-56(%rbp), %rax	# arg, tmp117
	movq	40(%rax), %rax	# arg_5(D)->exp.operands, D.20942
	movq	-88(%rbp), %rdi	# new1, tmp118
	movq	-80(%rbp), %rcx	# old1, tmp119
	movq	-72(%rbp), %rdx	# new0, tmp120
	movq	-64(%rbp), %rsi	# old0, tmp121
	movq	%rdi, %r8	# tmp118,
	movq	%rax, %rdi	# D.20942,
	call	eval_subst	#
	jmp	.L461	#
.L463:
	.loc 1 2751 0
	movq	-56(%rbp), %rax	# arg, tmp122
	movq	48(%rax), %rax	# arg_5(D)->exp.operands, D.20942
	movq	-88(%rbp), %rdi	# new1, tmp123
	movq	-80(%rbp), %rcx	# old1, tmp124
	movq	-72(%rbp), %rdx	# new0, tmp125
	movq	-64(%rbp), %rsi	# old0, tmp126
	movq	%rdi, %r8	# tmp123,
	movq	%rax, %rdi	# D.20942,
	call	eval_subst	#
	movq	%rax, %r12	#, D.20942
	movq	-56(%rbp), %rax	# arg, tmp127
	movq	40(%rax), %rax	# arg_5(D)->exp.operands, D.20942
	movq	-88(%rbp), %rdi	# new1, tmp128
	movq	-80(%rbp), %rcx	# old1, tmp129
	movq	-72(%rbp), %rdx	# new0, tmp130
	movq	-64(%rbp), %rsi	# old0, tmp131
	movq	%rdi, %r8	# tmp128,
	movq	%rax, %rdi	# D.20942,
	call	eval_subst	#
	movq	%rax, %rbx	#, D.20942
	movq	-56(%rbp), %rax	# arg, tmp132
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, D.20942
	movq	-88(%rbp), %rdi	# new1, tmp133
	movq	-80(%rbp), %rcx	# old1, tmp134
	movq	-72(%rbp), %rdx	# new0, tmp135
	movq	-64(%rbp), %rsi	# old0, tmp136
	movq	%rdi, %r8	# tmp133,
	movq	%rax, %rdi	# D.20942,
	call	eval_subst	#
	movq	%rax, %rdx	#, D.20942
	movq	-24(%rbp), %rsi	# type, tmp137
	movl	-44(%rbp), %eax	# code, tmp138
	movq	%r12, %r8	# D.20942,
	movq	%rbx, %rcx	# D.20942,
	movl	%eax, %edi	# tmp138,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20942,
	call	fold	#
	jmp	.L461	#
.L459:
.LBB15:
	.loc 1 2765 0
	movq	-56(%rbp), %rax	# arg, tmp139
	movq	32(%rax), %rax	# arg_5(D)->exp.operands, tmp140
	movq	%rax, -40(%rbp)	# tmp140, arg0
	.loc 1 2766 0
	movq	-56(%rbp), %rax	# arg, tmp141
	movq	40(%rax), %rax	# arg_5(D)->exp.operands, tmp142
	movq	%rax, -32(%rbp)	# tmp142, arg1
	.loc 1 2772 0
	movq	-40(%rbp), %rax	# arg0, tmp143
	cmpq	-64(%rbp), %rax	# old0, tmp143
	je	.L466	#,
	.loc 1 2772 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rcx	# old0, tmp144
	movq	-40(%rbp), %rax	# arg0, tmp145
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20941
	je	.L467	#,
.L466:
	.loc 1 2773 0 is_stmt 1
	movq	-72(%rbp), %rax	# new0, tmp146
	movq	%rax, -40(%rbp)	# tmp146, arg0
	jmp	.L468	#
.L467:
	.loc 1 2774 0
	movq	-40(%rbp), %rax	# arg0, tmp147
	cmpq	-80(%rbp), %rax	# old1, tmp147
	je	.L469	#,
	.loc 1 2774 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rcx	# old1, tmp148
	movq	-40(%rbp), %rax	# arg0, tmp149
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20941
	je	.L468	#,
.L469:
	.loc 1 2775 0 is_stmt 1
	movq	-88(%rbp), %rax	# new1, tmp150
	movq	%rax, -40(%rbp)	# tmp150, arg0
.L468:
	.loc 1 2777 0
	movq	-32(%rbp), %rax	# arg1, tmp151
	cmpq	-64(%rbp), %rax	# old0, tmp151
	je	.L470	#,
	.loc 1 2777 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rcx	# old0, tmp152
	movq	-32(%rbp), %rax	# arg1, tmp153
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp152,
	movq	%rax, %rdi	# tmp153,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20941
	je	.L471	#,
.L470:
	.loc 1 2778 0 is_stmt 1
	movq	-72(%rbp), %rax	# new0, tmp154
	movq	%rax, -32(%rbp)	# tmp154, arg1
	jmp	.L472	#
.L471:
	.loc 1 2779 0
	movq	-32(%rbp), %rax	# arg1, tmp155
	cmpq	-80(%rbp), %rax	# old1, tmp155
	je	.L473	#,
	.loc 1 2779 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rcx	# old1, tmp156
	movq	-32(%rbp), %rax	# arg1, tmp157
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp156,
	movq	%rax, %rdi	# tmp157,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20941
	je	.L472	#,
.L473:
	.loc 1 2780 0 is_stmt 1
	movq	-88(%rbp), %rax	# new1, tmp158
	movq	%rax, -32(%rbp)	# tmp158, arg1
.L472:
	.loc 1 2782 0
	movq	-32(%rbp), %rcx	# arg1, tmp159
	movq	-40(%rbp), %rdx	# arg0, tmp160
	movq	-24(%rbp), %rsi	# type, tmp161
	movl	-44(%rbp), %eax	# code, tmp162
	movl	%eax, %edi	# tmp162,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20942,
	call	fold	#
	jmp	.L461	#
.L455:
.LBE15:
	.loc 1 2786 0
	movq	-56(%rbp), %rax	# arg, D.20939
.L461:
	.loc 1 2788 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	eval_subst, .-eval_subst
	.type	omit_one_operand, @function
omit_one_operand:
.LFB36:
	.loc 1 2800 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	movq	%rsi, -32(%rbp)	# result, result
	movq	%rdx, -40(%rbp)	# omitted, omitted
	.loc 1 2801 0
	movq	-32(%rbp), %rdx	# result, tmp63
	movq	-24(%rbp), %rax	# type, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	convert	#
	movq	%rax, -8(%rbp)	# tmp65, t
	.loc 1 2803 0
	movq	-40(%rbp), %rax	# omitted, tmp66
	movzbl	17(%rax), %eax	# *omitted_5(D), D.20945
	andl	$1, %eax	#, D.20945
	testb	%al, %al	# D.20945
	je	.L475	#,
	.loc 1 2804 0
	movq	-8(%rbp), %rcx	# t, tmp67
	movq	-40(%rbp), %rdx	# omitted, tmp68
	movq	-24(%rbp), %rax	# type, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L476	#
.L475:
	.loc 1 2806 0
	movq	-8(%rbp), %rax	# t, tmp70
	movq	%rax, %rdi	# tmp70,
	call	non_lvalue	#
.L476:
	.loc 1 2807 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	omit_one_operand, .-omit_one_operand
	.type	pedantic_omit_one_operand, @function
pedantic_omit_one_operand:
.LFB37:
	.loc 1 2814 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	movq	%rsi, -32(%rbp)	# result, result
	movq	%rdx, -40(%rbp)	# omitted, omitted
	.loc 1 2815 0
	movq	-32(%rbp), %rdx	# result, tmp63
	movq	-24(%rbp), %rax	# type, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	convert	#
	movq	%rax, -8(%rbp)	# tmp65, t
	.loc 1 2817 0
	movq	-40(%rbp), %rax	# omitted, tmp66
	movzbl	17(%rax), %eax	# *omitted_5(D), D.20947
	andl	$1, %eax	#, D.20947
	testb	%al, %al	# D.20947
	je	.L478	#,
	.loc 1 2818 0
	movq	-8(%rbp), %rcx	# t, tmp67
	movq	-40(%rbp), %rdx	# omitted, tmp68
	movq	-24(%rbp), %rax	# type, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L479	#
.L478:
	.loc 1 2820 0
	movq	-8(%rbp), %rax	# t, tmp70
	movq	%rax, %rdi	# tmp70,
	call	pedantic_non_lvalue	#
.L479:
	.loc 1 2821 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	pedantic_omit_one_operand, .-pedantic_omit_one_operand
	.globl	invert_truthvalue
	.type	invert_truthvalue, @function
invert_truthvalue:
.LFB38:
	.loc 1 2830 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# arg, arg
	.loc 1 2831 0
	movq	-40(%rbp), %rax	# arg, tmp129
	movq	8(%rax), %rax	# arg_2(D)->common.type, tmp130
	movq	%rax, -24(%rbp)	# tmp130, type
	.loc 1 2832 0
	movq	-40(%rbp), %rax	# arg, tmp131
	movzbl	16(%rax), %eax	# arg_2(D)->common.code, D.20949
	movzbl	%al, %eax	# D.20949, tmp132
	movl	%eax, -28(%rbp)	# tmp132, code
	.loc 1 2834 0
	cmpl	$0, -28(%rbp)	#, code
	jne	.L481	#,
	.loc 1 2835 0
	movq	-40(%rbp), %rax	# arg, D.20948
	jmp	.L482	#
.L481:
	.loc 1 2841 0
	movl	-28(%rbp), %eax	# code, code.180
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20950
	cmpb	$60, %al	#, D.20950
	jne	.L483	#,
	.loc 1 2843 0
	movq	-40(%rbp), %rax	# arg, tmp134
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	8(%rax), %rax	# _9->common.type, D.20951
	movzbl	16(%rax), %eax	# _10->common.code, D.20949
	cmpb	$7, %al	#, D.20949
	je	.L484	#,
	.loc 1 2843 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp135
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	8(%rax), %rax	# _12->common.type, D.20951
	movzbl	16(%rax), %eax	# _13->common.code, D.20949
	cmpb	$8, %al	#, D.20949
	jne	.L485	#,
	movq	-40(%rbp), %rax	# arg, tmp136
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	8(%rax), %rax	# _15->common.type, D.20951
	movq	8(%rax), %rax	# _16->common.type, D.20951
	movzbl	16(%rax), %eax	# _17->common.code, D.20949
	cmpb	$7, %al	#, D.20949
	jne	.L485	#,
.L484:
	.loc 1 2844 0 is_stmt 1
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.181
	testl	%eax, %eax	# flag_unsafe_math_optimizations.181
	jne	.L485	#,
	.loc 1 2845 0
	cmpl	$102, -28(%rbp)	#, code
	je	.L485	#,
	.loc 1 2846 0
	cmpl	$101, -28(%rbp)	#, code
	je	.L485	#,
	.loc 1 2847 0
	movq	-40(%rbp), %rdx	# arg, tmp137
	movq	-24(%rbp), %rax	# type, tmp138
	movq	%rax, %rsi	# tmp138,
	movl	$96, %edi	#,
	call	build1	#
	jmp	.L482	#
.L485:
	.loc 1 2849 0
	movq	-40(%rbp), %rax	# arg, tmp139
	movq	40(%rax), %r12	# arg_2(D)->exp.operands, D.20951
	movq	-40(%rbp), %rax	# arg, tmp140
	movq	32(%rax), %rbx	# arg_2(D)->exp.operands, D.20951
	movl	-28(%rbp), %eax	# code, tmp141
	movl	%eax, %edi	# tmp141,
	call	invert_tree_comparison	#
	movq	-24(%rbp), %rsi	# type, tmp142
	movq	%r12, %rcx	# D.20951,
	movq	%rbx, %rdx	# D.20951,
	movl	%eax, %edi	# D.20952,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L483:
	.loc 1 2853 0
	movl	-28(%rbp), %eax	# code, tmp144
	subl	$25, %eax	#, tmp143
	cmpl	$93, %eax	#, tmp143
	ja	.L507	#,
	movl	%eax, %eax	# tmp143, tmp145
	movq	.L488(,%rax,8), %rax	#, tmp146
	jmp	*%rax	# tmp146
	.section	.rodata
	.align 8
	.align 4
.L488:
	.quad	.L487
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L489
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L490
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L491
	.quad	.L507
	.quad	.L492
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L493
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L494
	.quad	.L507
	.quad	.L507
	.quad	.L495
	.quad	.L496
	.quad	.L497
	.quad	.L498
	.quad	.L499
	.quad	.L500
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L507
	.quad	.L493
	.quad	.L493
	.quad	.L501
	.quad	.L507
	.quad	.L502
	.text
.L487:
	.loc 1 2856 0
	movq	-40(%rbp), %rax	# arg, tmp147
	movq	%rax, %rdi	# tmp147,
	call	integer_zerop	#
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20954,
	call	build_int_2_wide	#
	movq	%rax, %rdx	#, D.20951
	movq	-24(%rbp), %rax	# type, tmp148
	movq	%rdx, %rsi	# D.20951,
	movq	%rax, %rdi	# tmp148,
	call	convert	#
	jmp	.L482	#
.L497:
	.loc 1 2859 0
	movq	-40(%rbp), %rax	# arg, tmp149
	movq	40(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rbx	#, D.20951
	movq	-40(%rbp), %rax	# arg, tmp150
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.20951
	movq	-24(%rbp), %rax	# type, tmp151
	movq	%rbx, %rcx	# D.20951,
	movq	%rax, %rsi	# tmp151,
	movl	$94, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L498:
	.loc 1 2864 0
	movq	-40(%rbp), %rax	# arg, tmp152
	movq	40(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rbx	#, D.20951
	movq	-40(%rbp), %rax	# arg, tmp153
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.20951
	movq	-24(%rbp), %rax	# type, tmp154
	movq	%rbx, %rcx	# D.20951,
	movq	%rax, %rsi	# tmp154,
	movl	$93, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L499:
	.loc 1 2874 0
	movq	-40(%rbp), %rax	# arg, tmp155
	movq	40(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movzbl	16(%rax), %eax	# _39->common.code, D.20949
	cmpb	$96, %al	#, D.20949
	jne	.L503	#,
	.loc 1 2876 0
	movq	-40(%rbp), %rax	# arg, tmp156
	movq	40(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	.loc 1 2875 0
	movq	32(%rax), %rcx	# _41->exp.operands, D.20951
	movq	-40(%rbp), %rax	# arg, tmp157
	movq	32(%rax), %rdx	# arg_2(D)->exp.operands, D.20951
	movq	-24(%rbp), %rax	# type, tmp158
	movq	%rax, %rsi	# tmp158,
	movl	$95, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L503:
	.loc 1 2878 0
	movq	-40(%rbp), %rax	# arg, tmp159
	movq	40(%rax), %rbx	# arg_2(D)->exp.operands, D.20951
	movq	-40(%rbp), %rax	# arg, tmp160
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.20951
	movq	-24(%rbp), %rax	# type, tmp161
	movq	%rbx, %rcx	# D.20951,
	movq	%rax, %rsi	# tmp161,
	movl	$95, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L495:
	.loc 1 2883 0
	movq	-40(%rbp), %rax	# arg, tmp162
	movq	40(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rbx	#, D.20951
	movq	-40(%rbp), %rax	# arg, tmp163
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.20951
	movq	-24(%rbp), %rax	# type, tmp164
	movq	%rbx, %rcx	# D.20951,
	movq	%rax, %rsi	# tmp164,
	movl	$92, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L496:
	.loc 1 2888 0
	movq	-40(%rbp), %rax	# arg, tmp165
	movq	40(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rbx	#, D.20951
	movq	-40(%rbp), %rax	# arg, tmp166
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.20951
	movq	-24(%rbp), %rax	# type, tmp167
	movq	%rbx, %rcx	# D.20951,
	movq	%rax, %rsi	# tmp167,
	movl	$91, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L500:
	.loc 1 2893 0
	movq	-40(%rbp), %rax	# arg, tmp168
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20948
	jmp	.L482	#
.L490:
	.loc 1 2896 0
	movq	-40(%rbp), %rax	# arg, tmp169
	movq	48(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rbx	#, D.20951
	movq	-40(%rbp), %rax	# arg, tmp170
	movq	40(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rcx	#, D.20951
	movq	-40(%rbp), %rax	# arg, tmp171
	movq	32(%rax), %rdx	# arg_2(D)->exp.operands, D.20951
	movq	-24(%rbp), %rax	# type, tmp172
	movq	%rbx, %r8	# D.20951,
	movq	%rax, %rsi	# tmp172,
	movl	$51, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L489:
	.loc 1 2901 0
	movq	-40(%rbp), %rax	# arg, tmp173
	movq	40(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rcx	#, D.20951
	movq	-40(%rbp), %rax	# arg, tmp174
	movq	32(%rax), %rdx	# arg_2(D)->exp.operands, D.20951
	movq	-24(%rbp), %rax	# type, tmp175
	movq	%rax, %rsi	# tmp175,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L492:
	.loc 1 2905 0
	movq	-40(%rbp), %rax	# arg, tmp176
	movq	40(%rax), %rbx	# arg_2(D)->exp.operands, D.20951
	movq	-40(%rbp), %rax	# arg, tmp177
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.20951
	movq	-24(%rbp), %rax	# type, tmp178
	movq	%rbx, %rcx	# D.20951,
	movq	%rax, %rsi	# tmp178,
	movl	$58, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L501:
	.loc 1 2910 0
	movq	-40(%rbp), %rax	# arg, tmp179
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	jmp	.L482	#
.L493:
	.loc 1 2915 0
	movq	-40(%rbp), %rax	# arg, tmp180
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.20951
	movq	-40(%rbp), %rax	# arg, tmp181
	movzbl	16(%rax), %eax	# arg_2(D)->common.code, D.20949
	movzbl	%al, %eax	# D.20949, D.20952
	movq	-24(%rbp), %rcx	# type, tmp182
	movq	%rcx, %rsi	# tmp182,
	movl	%eax, %edi	# D.20952,
	call	build1	#
	jmp	.L482	#
.L494:
	.loc 1 2919 0
	movq	-40(%rbp), %rax	# arg, tmp183
	movq	40(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	integer_onep	#
	testl	%eax, %eax	# D.20953
	jne	.L504	#,
	.loc 1 2920 0
	jmp	.L505	#
.L504:
	.loc 1 2921 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20951
	movq	-24(%rbp), %rax	# type, tmp184
	movq	%rdx, %rsi	# D.20951,
	movq	%rax, %rdi	# tmp184,
	call	convert	#
	movq	%rax, %rcx	#, D.20951
	movq	-40(%rbp), %rdx	# arg, tmp185
	movq	-24(%rbp), %rax	# type, tmp186
	movq	%rax, %rsi	# tmp186,
	movl	$101, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L482	#
.L502:
	.loc 1 2924 0
	movq	-40(%rbp), %rdx	# arg, tmp187
	movq	-24(%rbp), %rax	# type, tmp188
	movq	%rax, %rsi	# tmp188,
	movl	$96, %edi	#,
	call	build1	#
	jmp	.L482	#
.L491:
	.loc 1 2927 0
	movq	-40(%rbp), %rax	# arg, tmp189
	movq	32(%rax), %rax	# arg_2(D)->exp.operands, D.20951
	movq	%rax, %rdi	# D.20951,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.20951
	movq	-24(%rbp), %rax	# type, tmp190
	movq	%rax, %rsi	# tmp190,
	movl	$56, %edi	#,
	call	build1	#
	jmp	.L482	#
.L507:
	.loc 1 2931 0
	nop
.L505:
	.loc 1 2933 0
	movq	-40(%rbp), %rax	# arg, tmp191
	movq	8(%rax), %rax	# arg_2(D)->common.type, D.20951
	movzbl	16(%rax), %eax	# _90->common.code, D.20949
	cmpb	$11, %al	#, D.20949
	je	.L506	#,
	.loc 1 2934 0
	movl	$__FUNCTION__.12657, %edx	#,
	movl	$2934, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L506:
	.loc 1 2935 0
	movq	-40(%rbp), %rdx	# arg, tmp192
	movq	-24(%rbp), %rax	# type, tmp193
	movq	%rax, %rsi	# tmp193,
	movl	$96, %edi	#,
	call	build1	#
.L482:
	.loc 1 2936 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	invert_truthvalue, .-invert_truthvalue
	.type	distribute_bit_expr, @function
distribute_bit_expr:
.LFB39:
	.loc 1 2952 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# code, code
	movq	%rsi, -48(%rbp)	# type, type
	movq	%rdx, -56(%rbp)	# arg0, arg0
	movq	%rcx, -64(%rbp)	# arg1, arg1
	.loc 1 2956 0
	movq	-56(%rbp), %rax	# arg0, tmp84
	movzbl	16(%rax), %edx	# arg0_5(D)->common.code, D.20956
	movq	-64(%rbp), %rax	# arg1, tmp85
	movzbl	16(%rax), %eax	# arg1_7(D)->common.code, D.20956
	cmpb	%al, %dl	# D.20956, D.20956
	jne	.L509	#,
	.loc 1 2957 0
	movq	-56(%rbp), %rax	# arg0, tmp86
	movzbl	16(%rax), %eax	# arg0_5(D)->common.code, D.20956
	movzbl	%al, %eax	# D.20956, D.20957
	cmpl	-36(%rbp), %eax	# code, D.20957
	je	.L509	#,
	.loc 1 2958 0
	movq	-56(%rbp), %rax	# arg0, tmp87
	movzbl	16(%rax), %eax	# arg0_5(D)->common.code, D.20956
	cmpb	$88, %al	#, D.20956
	je	.L510	#,
	.loc 1 2959 0
	movq	-56(%rbp), %rax	# arg0, tmp88
	movzbl	16(%rax), %eax	# arg0_5(D)->common.code, D.20956
	cmpb	$86, %al	#, D.20956
	je	.L510	#,
.L509:
	.loc 1 2960 0
	movl	$0, %eax	#, D.20955
	jmp	.L511	#
.L510:
	.loc 1 2962 0
	movq	-64(%rbp), %rax	# arg1, tmp89
	movq	32(%rax), %rcx	# arg1_7(D)->exp.operands, D.20958
	movq	-56(%rbp), %rax	# arg0, tmp90
	movq	32(%rax), %rax	# arg0_5(D)->exp.operands, D.20958
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20958,
	movq	%rax, %rdi	# D.20958,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20959
	je	.L512	#,
	.loc 1 2964 0
	movq	-56(%rbp), %rax	# arg0, tmp91
	movq	32(%rax), %rax	# arg0_5(D)->exp.operands, tmp92
	movq	%rax, -24(%rbp)	# tmp92, common
	.loc 1 2965 0
	movq	-56(%rbp), %rax	# arg0, tmp93
	movq	40(%rax), %rax	# arg0_5(D)->exp.operands, tmp94
	movq	%rax, -16(%rbp)	# tmp94, left
	.loc 1 2966 0
	movq	-64(%rbp), %rax	# arg1, tmp95
	movq	40(%rax), %rax	# arg1_7(D)->exp.operands, tmp96
	movq	%rax, -8(%rbp)	# tmp96, right
	jmp	.L513	#
.L512:
	.loc 1 2968 0
	movq	-64(%rbp), %rax	# arg1, tmp97
	movq	40(%rax), %rcx	# arg1_7(D)->exp.operands, D.20958
	movq	-56(%rbp), %rax	# arg0, tmp98
	movq	32(%rax), %rax	# arg0_5(D)->exp.operands, D.20958
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20958,
	movq	%rax, %rdi	# D.20958,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20959
	je	.L514	#,
	.loc 1 2970 0
	movq	-56(%rbp), %rax	# arg0, tmp99
	movq	32(%rax), %rax	# arg0_5(D)->exp.operands, tmp100
	movq	%rax, -24(%rbp)	# tmp100, common
	.loc 1 2971 0
	movq	-56(%rbp), %rax	# arg0, tmp101
	movq	40(%rax), %rax	# arg0_5(D)->exp.operands, tmp102
	movq	%rax, -16(%rbp)	# tmp102, left
	.loc 1 2972 0
	movq	-64(%rbp), %rax	# arg1, tmp103
	movq	32(%rax), %rax	# arg1_7(D)->exp.operands, tmp104
	movq	%rax, -8(%rbp)	# tmp104, right
	jmp	.L513	#
.L514:
	.loc 1 2974 0
	movq	-64(%rbp), %rax	# arg1, tmp105
	movq	32(%rax), %rcx	# arg1_7(D)->exp.operands, D.20958
	movq	-56(%rbp), %rax	# arg0, tmp106
	movq	40(%rax), %rax	# arg0_5(D)->exp.operands, D.20958
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20958,
	movq	%rax, %rdi	# D.20958,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20959
	je	.L515	#,
	.loc 1 2976 0
	movq	-56(%rbp), %rax	# arg0, tmp107
	movq	40(%rax), %rax	# arg0_5(D)->exp.operands, tmp108
	movq	%rax, -24(%rbp)	# tmp108, common
	.loc 1 2977 0
	movq	-56(%rbp), %rax	# arg0, tmp109
	movq	32(%rax), %rax	# arg0_5(D)->exp.operands, tmp110
	movq	%rax, -16(%rbp)	# tmp110, left
	.loc 1 2978 0
	movq	-64(%rbp), %rax	# arg1, tmp111
	movq	40(%rax), %rax	# arg1_7(D)->exp.operands, tmp112
	movq	%rax, -8(%rbp)	# tmp112, right
	jmp	.L513	#
.L515:
	.loc 1 2980 0
	movq	-64(%rbp), %rax	# arg1, tmp113
	movq	40(%rax), %rcx	# arg1_7(D)->exp.operands, D.20958
	movq	-56(%rbp), %rax	# arg0, tmp114
	movq	40(%rax), %rax	# arg0_5(D)->exp.operands, D.20958
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20958,
	movq	%rax, %rdi	# D.20958,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.20959
	je	.L516	#,
	.loc 1 2982 0
	movq	-56(%rbp), %rax	# arg0, tmp115
	movq	40(%rax), %rax	# arg0_5(D)->exp.operands, tmp116
	movq	%rax, -24(%rbp)	# tmp116, common
	.loc 1 2983 0
	movq	-56(%rbp), %rax	# arg0, tmp117
	movq	32(%rax), %rax	# arg0_5(D)->exp.operands, tmp118
	movq	%rax, -16(%rbp)	# tmp118, left
	.loc 1 2984 0
	movq	-64(%rbp), %rax	# arg1, tmp119
	movq	32(%rax), %rax	# arg1_7(D)->exp.operands, tmp120
	movq	%rax, -8(%rbp)	# tmp120, right
	jmp	.L513	#
.L516:
	.loc 1 2987 0
	movl	$0, %eax	#, D.20955
	jmp	.L511	#
.L513:
	.loc 1 2989 0
	movq	-8(%rbp), %rcx	# right, tmp121
	movq	-16(%rbp), %rdx	# left, tmp122
	movq	-48(%rbp), %rsi	# type, tmp123
	movl	-36(%rbp), %eax	# code, tmp124
	movl	%eax, %edi	# tmp124,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20958,
	call	fold	#
	movq	%rax, %rcx	#, D.20958
	movq	-56(%rbp), %rax	# arg0, tmp125
	movzbl	16(%rax), %eax	# arg0_5(D)->common.code, D.20956
	movzbl	%al, %eax	# D.20956, D.20960
	movq	-24(%rbp), %rdx	# common, tmp126
	movq	-48(%rbp), %rsi	# type, tmp127
	movl	%eax, %edi	# D.20960,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20958,
	call	fold	#
.L511:
	.loc 1 2991 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	distribute_bit_expr, .-distribute_bit_expr
	.type	make_bit_field_ref, @function
make_bit_field_ref:
.LFB40:
	.loc 1 3002 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# inner, inner
	movq	%rsi, -48(%rbp)	# type, type
	movl	%edx, -52(%rbp)	# bitsize, bitsize
	movl	%ecx, -56(%rbp)	# bitpos, bitpos
	movl	%r8d, -60(%rbp)	# unsignedp, unsignedp
	.loc 1 3003 0
	movl	-56(%rbp), %eax	# bitpos, tmp67
	cltq
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.20961,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.20962
	movl	-52(%rbp), %eax	# bitsize, tmp68
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20961,
	call	size_int_wide	#
	movq	%rax, %rcx	#, D.20962
	movq	-40(%rbp), %rdx	# inner, tmp69
	movq	-48(%rbp), %rax	# type, tmp70
	movq	%rbx, %r8	# D.20962,
	movq	%rax, %rsi	# tmp70,
	movl	$40, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -24(%rbp)	# tmp71, result
	.loc 1 3006 0
	movl	-60(%rbp), %eax	# unsignedp, tmp72
	andl	$1, %eax	#, D.20964
	movl	%eax, %edx	# D.20964, D.20964
	movq	-24(%rbp), %rax	# result, tmp73
	andl	$1, %edx	#, tmp75
	movl	%edx, %ecx	# tmp75, tmp76
	sall	$5, %ecx	#, tmp76
	movzbl	17(%rax), %edx	#, tmp77
	andl	$-33, %edx	#, tmp78
	orl	%ecx, %edx	# tmp76, tmp79
	movb	%dl, 17(%rax)	# tmp79,
	.loc 1 3008 0
	movq	-24(%rbp), %rax	# result, D.20965
	.loc 1 3009 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	make_bit_field_ref, .-make_bit_field_ref
	.section	.rodata
	.align 8
.LC1:
	.string	"comparison is always %d due to width of bit-field"
	.text
	.type	optimize_bit_field_compare, @function
optimize_bit_field_compare:
.LFB41:
	.loc 1 3036 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)	# code, code
	movq	%rsi, -176(%rbp)	# compare_type, compare_type
	movq	%rdx, -184(%rbp)	# lhs, lhs
	movq	%rcx, -192(%rbp)	# rhs, rhs
	.loc 1 3038 0
	movq	-184(%rbp), %rax	# lhs, tmp147
	movq	8(%rax), %rax	# lhs_10(D)->common.type, tmp148
	movq	%rax, -80(%rbp)	# tmp148, type
	.loc 1 3040 0
	movq	-192(%rbp), %rax	# rhs, tmp149
	movzbl	16(%rax), %eax	# rhs_12(D)->common.code, D.20967
	cmpb	$25, %al	#, D.20967
	sete	%al	#, D.20968
	movzbl	%al, %eax	# D.20968, tmp150
	movl	%eax, -136(%rbp)	# tmp150, const_p
	.loc 1 3043 0
	movl	$0, -144(%rbp)	#, lvolatilep
	movl	$0, -140(%rbp)	#, rvolatilep
	.loc 1 3044 0
	movq	$0, -88(%rbp)	#, rinner
	.loc 1 3053 0
	leaq	-152(%rbp), %r9	#, tmp151
	leaq	-160(%rbp), %r8	#, tmp152
	leaq	-96(%rbp), %rcx	#, tmp153
	leaq	-128(%rbp), %rdx	#, tmp154
	leaq	-120(%rbp), %rsi	#, tmp155
	movq	-184(%rbp), %rax	# lhs, tmp156
	leaq	-144(%rbp), %rdi	#, tmp157
	movq	%rdi, (%rsp)	# tmp157,
	movq	%rax, %rdi	# tmp156,
	call	get_inner_reference	#
	movq	%rax, -72(%rbp)	# tmp158, linner
	.loc 1 3055 0
	movq	-72(%rbp), %rax	# linner, tmp159
	cmpq	-184(%rbp), %rax	# lhs, tmp159
	je	.L520	#,
	.loc 1 3055 0 is_stmt 0 discriminator 1
	movl	-160(%rbp), %eax	# lmode, lmode.182
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.20969
	movzwl	%ax, %edx	# D.20969, D.20970
	movq	-120(%rbp), %rax	# lbitsize, lbitsize.184
	cmpq	%rax, %rdx	# lbitsize.184, D.20970
	je	.L520	#,
	movq	-120(%rbp), %rax	# lbitsize, lbitsize.185
	testq	%rax, %rax	# lbitsize.185
	js	.L520	#,
	.loc 1 3056 0 is_stmt 1
	movq	-96(%rbp), %rax	# offset, offset.186
	testq	%rax, %rax	# offset.186
	jne	.L520	#,
	.loc 1 3056 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# linner, tmp161
	movzbl	16(%rax), %eax	# linner_17->common.code, D.20967
	cmpb	$57, %al	#, D.20967
	jne	.L521	#,
.L520:
	.loc 1 3057 0 is_stmt 1
	movl	$0, %eax	#, D.20966
	jmp	.L543	#
.L521:
	.loc 1 3059 0
	cmpl	$0, -136(%rbp)	#, const_p
	jne	.L523	#,
	.loc 1 3063 0
	leaq	-148(%rbp), %r9	#, tmp162
	leaq	-156(%rbp), %r8	#, tmp163
	leaq	-96(%rbp), %rcx	#, tmp164
	leaq	-112(%rbp), %rdx	#, tmp165
	leaq	-104(%rbp), %rsi	#, tmp166
	movq	-192(%rbp), %rax	# rhs, tmp167
	leaq	-140(%rbp), %rdi	#, tmp168
	movq	%rdi, (%rsp)	# tmp168,
	movq	%rax, %rdi	# tmp167,
	call	get_inner_reference	#
	movq	%rax, -88(%rbp)	# tmp169, rinner
	.loc 1 3066 0
	movq	-88(%rbp), %rax	# rinner, tmp170
	cmpq	-192(%rbp), %rax	# rhs, tmp170
	je	.L524	#,
	.loc 1 3066 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rdx	# lbitpos, lbitpos.187
	movq	-112(%rbp), %rax	# rbitpos, rbitpos.188
	cmpq	%rax, %rdx	# rbitpos.188, lbitpos.187
	jne	.L524	#,
	movq	-120(%rbp), %rdx	# lbitsize, lbitsize.189
	movq	-104(%rbp), %rax	# rbitsize, rbitsize.190
	cmpq	%rax, %rdx	# rbitsize.190, lbitsize.189
	jne	.L524	#,
	.loc 1 3067 0 is_stmt 1
	movl	-152(%rbp), %edx	# lunsignedp, lunsignedp.191
	movl	-148(%rbp), %eax	# runsignedp, runsignedp.192
	cmpl	%eax, %edx	# runsignedp.192, lunsignedp.191
	jne	.L524	#,
	.loc 1 3067 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# offset, offset.193
	testq	%rax, %rax	# offset.193
	jne	.L524	#,
	.loc 1 3068 0 is_stmt 1
	movq	-88(%rbp), %rax	# rinner, tmp171
	movzbl	16(%rax), %eax	# rinner_26->common.code, D.20967
	cmpb	$57, %al	#, D.20967
	jne	.L523	#,
.L524:
	.loc 1 3069 0
	movl	$0, %eax	#, D.20966
	jmp	.L543	#
.L523:
	.loc 1 3078 0
	movl	-144(%rbp), %eax	# lvolatilep, lvolatilep.195
	.loc 1 3074 0
	testl	%eax, %eax	# lvolatilep.195
	jne	.L525	#,
	.loc 1 3078 0 discriminator 2
	movl	-140(%rbp), %eax	# rvolatilep, rvolatilep.196
	.loc 1 3074 0 discriminator 2
	testl	%eax, %eax	# rvolatilep.196
	je	.L526	#,
.L525:
	.loc 1 3074 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#, iftmp.194
	jmp	.L527	#
.L526:
	.loc 1 3074 0 discriminator 3
	movl	$0, %edx	#, iftmp.194
.L527:
	.loc 1 3074 0 discriminator 4
	movl	word_mode(%rip), %r9d	# word_mode, word_mode.197
	cmpl	$0, -136(%rbp)	#, const_p
	je	.L528	#,
	.loc 1 3075 0 is_stmt 1
	movq	-72(%rbp), %rax	# linner, tmp172
	movq	8(%rax), %rax	# linner_17->common.type, D.20971
	.loc 1 3074 0
	movl	64(%rax), %eax	# _41->type.align, iftmp.198
	jmp	.L529	#
.L528:
	.loc 1 3076 0 discriminator 5
	movq	-88(%rbp), %rax	# rinner, tmp173
	movq	8(%rax), %rax	# rinner_3->common.type, D.20971
	movl	64(%rax), %ecx	# _43->type.align, D.20972
	movq	-72(%rbp), %rax	# linner, tmp174
	movq	8(%rax), %rax	# linner_17->common.type, D.20971
	movl	64(%rax), %eax	# _45->type.align, D.20972
	.loc 1 3074 0 discriminator 5
	cmpl	%eax, %ecx	# D.20972, D.20972
	cmovbe	%ecx, %eax	# D.20972,, iftmp.198
.L529:
	.loc 1 3074 0 is_stmt 0 discriminator 6
	movq	-128(%rbp), %rcx	# lbitpos, lbitpos.199
	movl	%ecx, %esi	# lbitpos.199, D.20973
	movq	-120(%rbp), %rcx	# lbitsize, lbitsize.200
	movl	%ecx, %edi	# lbitsize.200, D.20973
	movl	%edx, %r8d	# iftmp.194,
	movl	%r9d, %ecx	# word_mode.197,
	movl	%eax, %edx	# iftmp.198,
	call	get_best_mode	#
	movl	%eax, -132(%rbp)	# tmp175, nmode
	.loc 1 3079 0 is_stmt 1 discriminator 6
	cmpl	$0, -132(%rbp)	#, nmode
	jne	.L530	#,
	.loc 1 3080 0
	movl	$0, %eax	#, D.20966
	jmp	.L543	#
.L530:
	.loc 1 3084 0
	movl	-132(%rbp), %eax	# nmode, tmp176
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp176,
	call	type_for_mode	#
	movq	%rax, -64(%rbp)	# tmp177, signed_type
	.loc 1 3085 0
	movl	-132(%rbp), %eax	# nmode, tmp178
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp178,
	call	type_for_mode	#
	movq	%rax, -56(%rbp)	# tmp179, unsigned_type
	.loc 1 3090 0
	movl	-132(%rbp), %eax	# nmode, nmode.201
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.20969
	movzwl	%ax, %eax	# D.20969, tmp181
	movq	%rax, -48(%rbp)	# tmp181, nbitsize
	.loc 1 3091 0
	movq	-48(%rbp), %rax	# nbitsize, tmp182
	negq	%rax	# D.20970
	movq	%rax, %rdx	# D.20970, D.20970
	movq	-128(%rbp), %rax	# lbitpos, lbitpos.202
	andq	%rdx, %rax	# D.20970, tmp183
	movq	%rax, -40(%rbp)	# tmp183, nbitpos
	.loc 1 3092 0
	movq	-128(%rbp), %rax	# lbitpos, lbitpos.203
	subq	-40(%rbp), %rax	# nbitpos, lbitpos.204
	movq	%rax, -128(%rbp)	# lbitpos.204, lbitpos
	.loc 1 3093 0
	movq	-120(%rbp), %rax	# lbitsize, lbitsize.205
	cmpq	%rax, -48(%rbp)	# lbitsize.205, nbitsize
	jne	.L531	#,
	.loc 1 3094 0
	movl	$0, %eax	#, D.20966
	jmp	.L543	#
.L531:
	.loc 1 3100 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, -32(%rbp)	# tmp184, mask
	.loc 1 3101 0
	movq	-32(%rbp), %rax	# mask, tmp185
	movq	-56(%rbp), %rdx	# unsigned_type, tmp186
	movq	%rdx, 8(%rax)	# tmp186, mask_66->common.type
	.loc 1 3102 0
	movq	-32(%rbp), %rax	# mask, tmp187
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp187,
	call	force_fit_type	#
	.loc 1 3103 0
	movq	-32(%rbp), %rdx	# mask, tmp188
	movq	-56(%rbp), %rax	# unsigned_type, tmp189
	movq	%rdx, %rsi	# tmp188,
	movq	%rax, %rdi	# tmp189,
	call	convert	#
	movq	%rax, -32(%rbp)	# tmp190, mask
	.loc 1 3104 0
	movq	-120(%rbp), %rax	# lbitsize, lbitsize.209
	movq	-48(%rbp), %rdx	# nbitsize, tmp191
	subq	%rax, %rdx	# lbitsize.209, D.20970
	movq	%rdx, %rax	# D.20970, D.20970
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20970,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.20971
	movq	-32(%rbp), %rax	# mask, tmp192
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp192,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, -32(%rbp)	# tmp193, mask
	.loc 1 3106 0
	movq	-120(%rbp), %rax	# lbitsize, lbitsize.210
	movq	-48(%rbp), %rdx	# nbitsize, tmp194
	subq	%rax, %rdx	# lbitsize.210, D.20970
	.loc 1 3105 0
	movq	-128(%rbp), %rax	# lbitpos, lbitpos.211
	subq	%rax, %rdx	# lbitpos.211, D.20970
	movq	%rdx, %rax	# D.20970, D.20970
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20970,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.20971
	movq	-32(%rbp), %rax	# mask, tmp195
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp195,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, -32(%rbp)	# tmp196, mask
	.loc 1 3108 0
	cmpl	$0, -136(%rbp)	#, const_p
	jne	.L532	#,
	.loc 1 3111 0
	movq	-40(%rbp), %rax	# nbitpos, tmp197
	movl	%eax, %ecx	# tmp197, D.20973
	movq	-48(%rbp), %rax	# nbitsize, tmp198
	movl	%eax, %edx	# tmp198, D.20973
	movq	-56(%rbp), %rsi	# unsigned_type, tmp199
	movq	-88(%rbp), %rax	# rinner, tmp200
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# tmp200,
	call	make_bit_field_ref	#
	movq	%rax, %rdx	#, D.20971
	movq	-32(%rbp), %rcx	# mask, tmp201
	movq	-56(%rbp), %rax	# unsigned_type, tmp202
	movq	%rax, %rsi	# tmp202,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rbx	#, D.20971
	movq	-40(%rbp), %rax	# nbitpos, tmp203
	movl	%eax, %ecx	# tmp203, D.20973
	movq	-48(%rbp), %rax	# nbitsize, tmp204
	movl	%eax, %edx	# tmp204, D.20973
	movq	-56(%rbp), %rsi	# unsigned_type, tmp205
	movq	-72(%rbp), %rax	# linner, tmp206
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# tmp206,
	call	make_bit_field_ref	#
	movq	%rax, %rdx	#, D.20971
	movq	-32(%rbp), %rcx	# mask, tmp207
	movq	-56(%rbp), %rax	# unsigned_type, tmp208
	movq	%rax, %rsi	# tmp208,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.20971
	movq	-176(%rbp), %rsi	# compare_type, tmp209
	movl	-164(%rbp), %eax	# code, tmp210
	movq	%rbx, %rcx	# D.20971,
	movl	%eax, %edi	# tmp210,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L543	#
.L532:
	.loc 1 3130 0
	movl	-152(%rbp), %eax	# lunsignedp, lunsignedp.212
	testl	%eax, %eax	# lunsignedp.212
	je	.L533	#,
	.loc 1 3132 0
	movq	-120(%rbp), %rax	# lbitsize, lbitsize.213
	movl	$0, %esi	#,
	movq	%rax, %rdi	# lbitsize.213,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.20971
	movq	-192(%rbp), %rdx	# rhs, tmp211
	movq	-56(%rbp), %rax	# unsigned_type, tmp212
	movq	%rdx, %rsi	# tmp211,
	movq	%rax, %rdi	# tmp212,
	call	convert	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.20971,
	movq	%rax, %rsi	# D.20971,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.20971,
	call	integer_zerop	#
	testl	%eax, %eax	# D.20973
	jne	.L534	#,
	.loc 1 3136 0
	cmpl	$102, -164(%rbp)	#, code
	sete	%al	#, D.20968
	movzbl	%al, %eax	# D.20968, D.20973
	movl	%eax, %esi	# D.20973,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 3138 0
	cmpl	$102, -164(%rbp)	#, code
	jne	.L535	#,
	.loc 1 3138 0 is_stmt 0 discriminator 1
	movq	global_trees+96(%rip), %rax	# global_trees, iftmp.214
	jmp	.L536	#
.L535:
	.loc 1 3138 0 discriminator 2
	movq	global_trees+88(%rip), %rax	# global_trees, iftmp.214
.L536:
	.loc 1 3138 0 discriminator 3
	movq	-176(%rbp), %rdx	# compare_type, tmp213
	movq	%rax, %rsi	# iftmp.214,
	movq	%rdx, %rdi	# tmp213,
	call	convert	#
	jmp	.L543	#
.L533:
.LBB16:
	.loc 1 3145 0 is_stmt 1
	movq	-120(%rbp), %rax	# lbitsize, lbitsize.215
	subq	$1, %rax	#, D.20970
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20970,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.20971
	movq	-192(%rbp), %rdx	# rhs, tmp214
	movq	-64(%rbp), %rax	# signed_type, tmp215
	movq	%rdx, %rsi	# tmp214,
	movq	%rax, %rdi	# tmp215,
	call	convert	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.20971,
	movq	%rax, %rsi	# D.20971,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, -24(%rbp)	# tmp216, tem
	.loc 1 3147 0
	movq	-24(%rbp), %rax	# tem, tmp217
	movq	%rax, %rdi	# tmp217,
	call	integer_zerop	#
	testl	%eax, %eax	# D.20973
	jne	.L534	#,
	.loc 1 3147 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tem, tmp218
	movq	%rax, %rdi	# tmp218,
	call	integer_all_onesp	#
	testl	%eax, %eax	# D.20973
	jne	.L534	#,
	.loc 1 3149 0 is_stmt 1
	cmpl	$102, -164(%rbp)	#, code
	sete	%al	#, D.20968
	movzbl	%al, %eax	# D.20968, D.20973
	movl	%eax, %esi	# D.20973,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 3151 0
	cmpl	$102, -164(%rbp)	#, code
	jne	.L537	#,
	.loc 1 3151 0 is_stmt 0 discriminator 1
	movq	global_trees+96(%rip), %rax	# global_trees, iftmp.216
	jmp	.L538	#
.L537:
	.loc 1 3151 0 discriminator 2
	movq	global_trees+88(%rip), %rax	# global_trees, iftmp.216
.L538:
	.loc 1 3151 0 discriminator 3
	movq	-176(%rbp), %rdx	# compare_type, tmp219
	movq	%rax, %rsi	# iftmp.216,
	movq	%rdx, %rdi	# tmp219,
	call	convert	#
	jmp	.L543	#
.L534:
.LBE16:
	.loc 1 3158 0 is_stmt 1
	movq	-120(%rbp), %rax	# lbitsize, lbitsize.217
	cmpq	$1, %rax	#, lbitsize.217
	jne	.L539	#,
	.loc 1 3158 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# rhs, tmp220
	movq	%rax, %rdi	# tmp220,
	call	integer_zerop	#
	testl	%eax, %eax	# D.20973
	jne	.L539	#,
	.loc 1 3160 0 is_stmt 1
	cmpl	$101, -164(%rbp)	#, code
	jne	.L540	#,
	.loc 1 3160 0 is_stmt 0 discriminator 1
	movl	$102, %eax	#, iftmp.218
	jmp	.L541	#
.L540:
	.loc 1 3160 0 discriminator 2
	movl	$101, %eax	#, iftmp.218
.L541:
	.loc 1 3160 0 discriminator 3
	movl	%eax, -164(%rbp)	# iftmp.218, code
	.loc 1 3161 0 is_stmt 1 discriminator 3
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20971
	movq	-80(%rbp), %rax	# type, tmp221
	movq	%rdx, %rsi	# D.20971,
	movq	%rax, %rdi	# tmp221,
	call	convert	#
	movq	%rax, -192(%rbp)	# tmp222, rhs
.L539:
	.loc 1 3167 0
	movq	-40(%rbp), %rax	# nbitpos, tmp223
	movl	%eax, %ecx	# tmp223, D.20973
	movq	-48(%rbp), %rax	# nbitsize, tmp224
	movl	%eax, %edx	# tmp224, D.20973
	movq	-56(%rbp), %rsi	# unsigned_type, tmp225
	movq	-72(%rbp), %rax	# linner, tmp226
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# tmp226,
	call	make_bit_field_ref	#
	movq	%rax, -184(%rbp)	# tmp227, lhs
	.loc 1 3168 0
	movl	-144(%rbp), %eax	# lvolatilep, lvolatilep.219
	testl	%eax, %eax	# lvolatilep.219
	je	.L542	#,
	.loc 1 3170 0
	movq	-184(%rbp), %rax	# lhs, tmp228
	movzbl	17(%rax), %edx	#, tmp231
	orl	$1, %edx	#, tmp232
	movb	%dl, 17(%rax)	# tmp232,
	.loc 1 3171 0
	movq	-184(%rbp), %rax	# lhs, tmp233
	movzbl	17(%rax), %edx	#, tmp236
	orl	$8, %edx	#, tmp237
	movb	%dl, 17(%rax)	# tmp237,
.L542:
	.loc 1 3174 0
	movq	-128(%rbp), %rax	# lbitpos, lbitpos.220
	movl	$0, %esi	#,
	movq	%rax, %rdi	# lbitpos.220,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.20971
	movq	-192(%rbp), %rdx	# rhs, tmp238
	movq	-56(%rbp), %rax	# unsigned_type, tmp239
	movq	%rdx, %rsi	# tmp238,
	movq	%rax, %rdi	# tmp239,
	call	convert	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.20971,
	movq	%rax, %rsi	# D.20971,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	-32(%rbp), %rdx	# mask, tmp240
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.20971,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.20971,
	call	fold	#
	movq	%rax, -192(%rbp)	# tmp241, rhs
	.loc 1 3180 0
	movq	-32(%rbp), %rcx	# mask, tmp242
	movq	-184(%rbp), %rdx	# lhs, tmp243
	movq	-56(%rbp), %rax	# unsigned_type, tmp244
	movq	%rax, %rsi	# tmp244,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.20971
	movq	-192(%rbp), %rcx	# rhs, tmp245
	movq	-176(%rbp), %rsi	# compare_type, tmp246
	movl	-164(%rbp), %eax	# code, tmp247
	movl	%eax, %edi	# tmp247,
	movl	$0, %eax	#,
	call	build	#
.L543:
	.loc 1 3183 0
	addq	$200, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	optimize_bit_field_compare, .-optimize_bit_field_compare
	.type	decode_field_reference, @function
decode_field_reference:
.LFB42:
	.loc 1 3217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -56(%rbp)	# exp, exp
	movq	%rsi, -64(%rbp)	# pbitsize, pbitsize
	movq	%rdx, -72(%rbp)	# pbitpos, pbitpos
	movq	%rcx, -80(%rbp)	# pmode, pmode
	movq	%r8, -88(%rbp)	# punsignedp, punsignedp
	movq	%r9, -96(%rbp)	# pvolatilep, pvolatilep
	.loc 1 3218 0
	movq	$0, -32(%rbp)	#, and_mask
	.loc 1 3226 0
	movq	-56(%rbp), %rax	# exp, tmp117
	movq	8(%rax), %rax	# exp_9(D)->common.type, D.20976
	movzbl	16(%rax), %eax	# _10->common.code, D.20977
	cmpb	$6, %al	#, D.20977
	je	.L545	#,
	.loc 1 3226 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp118
	movq	8(%rax), %rax	# exp_9(D)->common.type, D.20976
	movzbl	16(%rax), %eax	# _12->common.code, D.20977
	cmpb	$10, %al	#, D.20977
	je	.L545	#,
	movq	-56(%rbp), %rax	# exp, tmp119
	movq	8(%rax), %rax	# exp_9(D)->common.type, D.20976
	movzbl	16(%rax), %eax	# _14->common.code, D.20977
	cmpb	$11, %al	#, D.20977
	je	.L545	#,
	movq	-56(%rbp), %rax	# exp, tmp120
	movq	8(%rax), %rax	# exp_9(D)->common.type, D.20976
	movzbl	16(%rax), %eax	# _16->common.code, D.20977
	cmpb	$12, %al	#, D.20977
	je	.L545	#,
	.loc 1 3227 0 is_stmt 1
	movl	$0, %eax	#, D.20975
	jmp	.L564	#
.L545:
	.loc 1 3229 0
	jmp	.L547	#
.L550:
	.loc 1 3229 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp121
	movq	32(%rax), %rax	# exp_1->exp.operands, tmp122
	movq	%rax, -56(%rbp)	# tmp122, exp
.L547:
	movq	-56(%rbp), %rax	# exp, tmp123
	movzbl	16(%rax), %eax	# exp_1->common.code, D.20977
	cmpb	$115, %al	#, D.20977
	je	.L548	#,
	.loc 1 3229 0 discriminator 3
	movq	-56(%rbp), %rax	# exp, tmp124
	movzbl	16(%rax), %eax	# exp_1->common.code, D.20977
	cmpb	$114, %al	#, D.20977
	je	.L548	#,
	.loc 1 3229 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp125
	movzbl	16(%rax), %eax	# exp_1->common.code, D.20977
	cmpb	$116, %al	#, D.20977
	jne	.L549	#,
.L548:
	.loc 1 3229 0 discriminator 2
	movq	-56(%rbp), %rax	# exp, tmp126
	movq	32(%rax), %rdx	# exp_1->exp.operands, D.20976
	movq	global_trees(%rip), %rax	# global_trees, D.20976
	cmpq	%rax, %rdx	# D.20976, D.20976
	je	.L549	#,
	.loc 1 3229 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp127
	movq	8(%rax), %rax	# exp_1->common.type, D.20976
	movzbl	61(%rax), %eax	# *_24, tmp130
	shrb	%al	# D.20978
	movl	%eax, %edx	# D.20978, D.20978
	movq	-56(%rbp), %rax	# exp, tmp131
	movq	32(%rax), %rax	# exp_1->exp.operands, D.20976
	movq	8(%rax), %rax	# _26->common.type, D.20976
	movzbl	61(%rax), %eax	# *_27, tmp134
	shrb	%al	# D.20978
	cmpb	%al, %dl	# D.20978, D.20978
	je	.L550	#,
.L549:
	.loc 1 3231 0 is_stmt 1
	movq	-56(%rbp), %rax	# exp, tmp135
	movzbl	16(%rax), %eax	# exp_1->common.code, D.20977
	cmpb	$88, %al	#, D.20977
	jne	.L551	#,
	.loc 1 3233 0
	movq	-56(%rbp), %rax	# exp, tmp136
	movq	40(%rax), %rax	# exp_1->exp.operands, tmp137
	movq	%rax, -32(%rbp)	# tmp137, and_mask
	.loc 1 3234 0
	movq	-56(%rbp), %rax	# exp, tmp138
	movq	32(%rax), %rax	# exp_1->exp.operands, tmp139
	movq	%rax, -56(%rbp)	# tmp139, exp
	.loc 1 3235 0
	jmp	.L552	#
.L555:
	.loc 1 3235 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp140
	movq	32(%rax), %rax	# exp_2->exp.operands, tmp141
	movq	%rax, -56(%rbp)	# tmp141, exp
.L552:
	movq	-56(%rbp), %rax	# exp, tmp142
	movzbl	16(%rax), %eax	# exp_2->common.code, D.20977
	cmpb	$115, %al	#, D.20977
	je	.L553	#,
	.loc 1 3235 0 discriminator 3
	movq	-56(%rbp), %rax	# exp, tmp143
	movzbl	16(%rax), %eax	# exp_2->common.code, D.20977
	cmpb	$114, %al	#, D.20977
	je	.L553	#,
	.loc 1 3235 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp144
	movzbl	16(%rax), %eax	# exp_2->common.code, D.20977
	cmpb	$116, %al	#, D.20977
	jne	.L554	#,
.L553:
	.loc 1 3235 0 discriminator 2
	movq	-56(%rbp), %rax	# exp, tmp145
	movq	32(%rax), %rdx	# exp_2->exp.operands, D.20976
	movq	global_trees(%rip), %rax	# global_trees, D.20976
	cmpq	%rax, %rdx	# D.20976, D.20976
	je	.L554	#,
	.loc 1 3235 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp146
	movq	8(%rax), %rax	# exp_2->common.type, D.20976
	movzbl	61(%rax), %eax	# *_38, tmp149
	shrb	%al	# D.20978
	movl	%eax, %edx	# D.20978, D.20978
	movq	-56(%rbp), %rax	# exp, tmp150
	movq	32(%rax), %rax	# exp_2->exp.operands, D.20976
	movq	8(%rax), %rax	# _40->common.type, D.20976
	movzbl	61(%rax), %eax	# *_41, tmp153
	shrb	%al	# D.20978
	cmpb	%al, %dl	# D.20978, D.20978
	je	.L555	#,
.L554:
	jmp	.L556	#
.L559:
	movq	-32(%rbp), %rax	# and_mask, tmp154
	movq	32(%rax), %rax	# and_mask_4->exp.operands, tmp155
	movq	%rax, -32(%rbp)	# tmp155, and_mask
.L556:
	movq	-32(%rbp), %rax	# and_mask, tmp156
	movzbl	16(%rax), %eax	# and_mask_4->common.code, D.20977
	cmpb	$115, %al	#, D.20977
	je	.L557	#,
	.loc 1 3235 0 discriminator 3
	movq	-32(%rbp), %rax	# and_mask, tmp157
	movzbl	16(%rax), %eax	# and_mask_4->common.code, D.20977
	cmpb	$114, %al	#, D.20977
	je	.L557	#,
	.loc 1 3235 0 discriminator 1
	movq	-32(%rbp), %rax	# and_mask, tmp158
	movzbl	16(%rax), %eax	# and_mask_4->common.code, D.20977
	cmpb	$116, %al	#, D.20977
	jne	.L558	#,
.L557:
	.loc 1 3235 0 discriminator 2
	movq	-32(%rbp), %rax	# and_mask, tmp159
	movq	32(%rax), %rdx	# and_mask_4->exp.operands, D.20976
	movq	global_trees(%rip), %rax	# global_trees, D.20976
	cmpq	%rax, %rdx	# D.20976, D.20976
	je	.L558	#,
	.loc 1 3235 0 discriminator 1
	movq	-32(%rbp), %rax	# and_mask, tmp160
	movq	8(%rax), %rax	# and_mask_4->common.type, D.20976
	movzbl	61(%rax), %eax	# *_49, tmp163
	shrb	%al	# D.20978
	movl	%eax, %edx	# D.20978, D.20978
	movq	-32(%rbp), %rax	# and_mask, tmp164
	movq	32(%rax), %rax	# and_mask_4->exp.operands, D.20976
	movq	8(%rax), %rax	# _51->common.type, D.20976
	movzbl	61(%rax), %eax	# *_52, tmp167
	shrb	%al	# D.20978
	cmpb	%al, %dl	# D.20978, D.20978
	je	.L559	#,
.L558:
	.loc 1 3236 0 is_stmt 1
	movq	-32(%rbp), %rax	# and_mask, tmp168
	movzbl	16(%rax), %eax	# and_mask_4->common.code, D.20977
	cmpb	$25, %al	#, D.20977
	je	.L551	#,
	.loc 1 3237 0
	movl	$0, %eax	#, D.20975
	jmp	.L564	#
.L551:
	.loc 1 3240 0
	movq	-88(%rbp), %r9	# punsignedp, tmp169
	movq	-80(%rbp), %r8	# pmode, tmp170
	leaq	-40(%rbp), %rcx	#, tmp171
	movq	-72(%rbp), %rdx	# pbitpos, tmp172
	movq	-64(%rbp), %rsi	# pbitsize, tmp173
	movq	-56(%rbp), %rax	# exp, tmp174
	movq	-96(%rbp), %rdi	# pvolatilep, tmp175
	movq	%rdi, (%rsp)	# tmp175,
	movq	%rax, %rdi	# tmp174,
	call	get_inner_reference	#
	movq	%rax, -16(%rbp)	# tmp176, inner
	.loc 1 3242 0
	movq	-16(%rbp), %rax	# inner, tmp177
	cmpq	-56(%rbp), %rax	# exp, tmp177
	jne	.L560	#,
	.loc 1 3242 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, and_mask
	je	.L561	#,
.L560:
	.loc 1 3243 0 is_stmt 1
	movq	-64(%rbp), %rax	# pbitsize, tmp178
	movq	(%rax), %rax	# *pbitsize_57(D), D.20979
	testq	%rax, %rax	# D.20979
	js	.L561	#,
	.loc 1 3243 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# offset, offset.221
	testq	%rax, %rax	# offset.221
	jne	.L561	#,
	.loc 1 3244 0 is_stmt 1
	movq	-16(%rbp), %rax	# inner, tmp179
	movzbl	16(%rax), %eax	# inner_62->common.code, D.20977
	cmpb	$57, %al	#, D.20977
	jne	.L562	#,
.L561:
	.loc 1 3245 0
	movl	$0, %eax	#, D.20975
	jmp	.L564	#
.L562:
	.loc 1 3248 0
	movq	-64(%rbp), %rax	# pbitsize, tmp180
	movq	(%rax), %rax	# *pbitsize_57(D), D.20979
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.20980,
	call	type_for_size	#
	movq	%rax, -8(%rbp)	# tmp181, unsigned_type
	.loc 1 3249 0
	movq	-8(%rbp), %rax	# unsigned_type, tmp182
	movzwl	60(%rax), %eax	# *unsigned_type_68, tmp185
	andw	$511, %ax	#, D.20981
	movzwl	%ax, %eax	# D.20981, tmp186
	movl	%eax, -44(%rbp)	# tmp186, precision
	.loc 1 3251 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, -24(%rbp)	# tmp187, mask
	.loc 1 3252 0
	movq	-24(%rbp), %rax	# mask, tmp188
	movq	-8(%rbp), %rdx	# unsigned_type, tmp189
	movq	%rdx, 8(%rax)	# tmp189, mask_71->common.type
	.loc 1 3253 0
	movq	-24(%rbp), %rax	# mask, tmp190
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	force_fit_type	#
	.loc 1 3254 0
	movl	-44(%rbp), %edx	# precision, D.20979
	movq	-64(%rbp), %rax	# pbitsize, tmp191
	movq	(%rax), %rax	# *pbitsize_57(D), D.20979
	subq	%rax, %rdx	# D.20979, D.20979
	movq	%rdx, %rax	# D.20979, D.20979
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20979,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.20976
	movq	-24(%rbp), %rax	# mask, tmp192
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp192,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, -24(%rbp)	# tmp193, mask
	.loc 1 3255 0
	movl	-44(%rbp), %edx	# precision, D.20979
	movq	-64(%rbp), %rax	# pbitsize, tmp194
	movq	(%rax), %rax	# *pbitsize_57(D), D.20979
	subq	%rax, %rdx	# D.20979, D.20979
	movq	%rdx, %rax	# D.20979, D.20979
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20979,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.20976
	movq	-24(%rbp), %rax	# mask, tmp195
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp195,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, -24(%rbp)	# tmp196, mask
	.loc 1 3258 0
	cmpq	$0, -32(%rbp)	#, and_mask
	je	.L563	#,
	.loc 1 3259 0
	movq	-32(%rbp), %rdx	# and_mask, tmp197
	movq	-8(%rbp), %rax	# unsigned_type, tmp198
	movq	%rdx, %rsi	# tmp197,
	movq	%rax, %rdi	# tmp198,
	call	convert	#
	movq	%rax, %rdx	#, D.20976
	movq	-24(%rbp), %rcx	# mask, tmp199
	movq	-8(%rbp), %rax	# unsigned_type, tmp200
	movq	%rax, %rsi	# tmp200,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20976,
	call	fold	#
	movq	%rax, -24(%rbp)	# tmp201, mask
.L563:
	.loc 1 3262 0
	movq	16(%rbp), %rax	# pmask, tmp202
	movq	-24(%rbp), %rdx	# mask, tmp203
	movq	%rdx, (%rax)	# tmp203, *pmask_85(D)
	.loc 1 3263 0
	movq	24(%rbp), %rax	# pand_mask, tmp204
	movq	-32(%rbp), %rdx	# and_mask, tmp205
	movq	%rdx, (%rax)	# tmp205, *pand_mask_86(D)
	.loc 1 3264 0
	movq	-16(%rbp), %rax	# inner, D.20975
.L564:
	.loc 1 3265 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	decode_field_reference, .-decode_field_reference
	.type	all_ones_mask_p, @function
all_ones_mask_p:
.LFB43:
	.loc 1 3274 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# mask, mask
	movl	%esi, -60(%rbp)	# size, size
	.loc 1 3275 0
	movq	-56(%rbp), %rax	# mask, tmp73
	movq	8(%rax), %rax	# mask_1(D)->common.type, tmp74
	movq	%rax, -32(%rbp)	# tmp74, type
	.loc 1 3276 0
	movq	-32(%rbp), %rax	# type, tmp75
	movzwl	60(%rax), %eax	# *type_2, tmp78
	andw	$511, %ax	#, D.20982
	movzwl	%ax, %eax	# D.20982, tmp79
	movl	%eax, -36(%rbp)	# tmp79, precision
	.loc 1 3279 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, -24(%rbp)	# tmp80, tmask
	.loc 1 3280 0
	movq	-32(%rbp), %rax	# type, tmp81
	movq	%rax, %rdi	# tmp81,
	call	signed_type	#
	movq	-24(%rbp), %rdx	# tmask, tmp82
	movq	%rax, 8(%rdx)	# D.20983, tmask_5->common.type
	.loc 1 3281 0
	movq	-24(%rbp), %rax	# tmask, tmp83
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	force_fit_type	#
	.loc 1 3288 0
	movl	-60(%rbp), %eax	# size, size.222
	movl	-36(%rbp), %edx	# precision, tmp84
	subl	%eax, %edx	# size.222, D.20984
	movl	%edx, %eax	# D.20984, D.20984
	.loc 1 3283 0
	movl	%eax, %eax	# D.20984, D.20985
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20985,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.20983
	.loc 1 3286 0
	movl	-60(%rbp), %eax	# size, size.223
	movl	-36(%rbp), %edx	# precision, tmp85
	subl	%eax, %edx	# size.223, D.20984
	movl	%edx, %eax	# D.20984, D.20984
	.loc 1 3283 0
	movl	%eax, %eax	# D.20984, D.20985
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20985,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.20983
	movq	-24(%rbp), %rax	# tmask, tmp86
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp86,
	movl	$82, %edi	#,
	call	const_binop	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.20983,
	movq	%rax, %rsi	# D.20983,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, %rdx	#, D.20983
	.loc 1 3282 0
	movq	-56(%rbp), %rax	# mask, tmp87
	movq	%rdx, %rsi	# D.20983,
	movq	%rax, %rdi	# tmp87,
	call	tree_int_cst_equal	#
	.loc 1 3289 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	all_ones_mask_p, .-all_ones_mask_p
	.type	simple_operand_p, @function
simple_operand_p:
.LFB44:
	.loc 1 3297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# exp, exp
	.loc 1 3299 0
	jmp	.L568	#
.L571:
	.loc 1 3303 0
	movq	-8(%rbp), %rax	# exp, tmp89
	movq	32(%rax), %rax	# exp_1->exp.operands, tmp90
	movq	%rax, -8(%rbp)	# tmp90, exp
.L568:
	.loc 1 3299 0 discriminator 1
	movq	-8(%rbp), %rax	# exp, tmp91
	movzbl	16(%rax), %eax	# exp_1->common.code, D.20987
	cmpb	$115, %al	#, D.20987
	je	.L569	#,
	.loc 1 3300 0
	movq	-8(%rbp), %rax	# exp, tmp92
	movzbl	16(%rax), %eax	# exp_1->common.code, D.20987
	cmpb	$114, %al	#, D.20987
	jne	.L570	#,
.L569:
	.loc 1 3301 0
	movq	-8(%rbp), %rax	# exp, tmp93
	movq	8(%rax), %rax	# exp_1->common.type, D.20988
	movzbl	61(%rax), %eax	# *_6, tmp96
	shrb	%al	# D.20989
	movl	%eax, %edx	# D.20989, D.20989
	.loc 1 3302 0
	movq	-8(%rbp), %rax	# exp, tmp97
	movq	32(%rax), %rax	# exp_1->exp.operands, D.20988
	movq	8(%rax), %rax	# _8->common.type, D.20988
	movzbl	61(%rax), %eax	# *_9, tmp100
	shrb	%al	# D.20989
	.loc 1 3301 0
	cmpb	%al, %dl	# D.20989, D.20989
	je	.L571	#,
.L570:
	.loc 1 3305 0
	movq	-8(%rbp), %rax	# exp, tmp101
	movzbl	16(%rax), %eax	# exp_1->common.code, D.20987
	movzbl	%al, %eax	# D.20987, D.20990
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20991
	.loc 1 3306 0
	cmpb	$99, %al	#, D.20991
	je	.L572	#,
	.loc 1 3306 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# exp, tmp103
	movzbl	16(%rax), %eax	# exp_1->common.code, D.20987
	movzbl	%al, %eax	# D.20987, D.20990
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20991
	cmpb	$100, %al	#, D.20991
	jne	.L573	#,
	.loc 1 3307 0 is_stmt 1
	movq	-8(%rbp), %rax	# exp, tmp105
	movzbl	17(%rax), %eax	# *exp_1, D.20987
	andl	$4, %eax	#, D.20987
	testb	%al, %al	# D.20987
	jne	.L573	#,
	.loc 1 3308 0
	movq	-8(%rbp), %rax	# exp, tmp106
	movzbl	17(%rax), %eax	# *exp_1, D.20987
	andl	$8, %eax	#, D.20987
	testb	%al, %al	# D.20987
	jne	.L573	#,
	.loc 1 3309 0
	movq	-8(%rbp), %rax	# exp, tmp107
	movzbl	49(%rax), %eax	# *exp_1, D.20987
	andl	$2, %eax	#, D.20987
	testb	%al, %al	# D.20987
	jne	.L573	#,
	.loc 1 3313 0
	movq	-8(%rbp), %rax	# exp, tmp108
	movzbl	18(%rax), %eax	# *exp_1, D.20987
	andl	$8, %eax	#, D.20987
	testb	%al, %al	# D.20987
	jne	.L573	#,
	.loc 1 3314 0
	movq	-8(%rbp), %rax	# exp, tmp109
	movzbl	49(%rax), %eax	# *exp_1, D.20987
	andl	$1, %eax	#, D.20987
	testb	%al, %al	# D.20987
	jne	.L573	#,
	.loc 1 3317 0
	movq	-8(%rbp), %rax	# exp, tmp110
	movzbl	18(%rax), %eax	# *exp_1, D.20987
	andl	$4, %eax	#, D.20987
	testb	%al, %al	# D.20987
	je	.L572	#,
	.loc 1 3317 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# exp, tmp111
	movzbl	49(%rax), %eax	# *exp_1, D.20987
	andl	$4, %eax	#, D.20987
	testb	%al, %al	# D.20987
	je	.L573	#,
.L572:
	.loc 1 3306 0 is_stmt 1 discriminator 1
	movl	$1, %eax	#, iftmp.224
	jmp	.L574	#
.L573:
	.loc 1 3306 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.224
.L574:
	.loc 1 3318 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	simple_operand_p, .-simple_operand_p
	.type	range_binop, @function
range_binop:
.LFB45:
	.loc 1 3361 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -36(%rbp)	# code, code
	movq	%rsi, -48(%rbp)	# type, type
	movq	%rdx, -56(%rbp)	# arg0, arg0
	movl	%ecx, -40(%rbp)	# upper0_p, upper0_p
	movq	%r8, -64(%rbp)	# arg1, arg1
	movl	%r9d, -68(%rbp)	# upper1_p, upper1_p
	.loc 1 3371 0
	cmpq	$0, -56(%rbp)	#, arg0
	je	.L577	#,
	.loc 1 3371 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, arg1
	je	.L577	#,
	.loc 1 3373 0 is_stmt 1
	movq	-56(%rbp), %rax	# arg0, tmp90
	movq	8(%rax), %rax	# arg0_11(D)->common.type, D.20993
	movq	-64(%rbp), %rdx	# arg1, tmp91
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# D.20993,
	call	convert	#
	movq	%rax, %rcx	#, D.20993
	cmpq	$0, -48(%rbp)	#, type
	jne	.L578	#,
	.loc 1 3373 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# arg0, tmp92
	movq	8(%rax), %rax	# arg0_11(D)->common.type, iftmp.225
	jmp	.L579	#
.L578:
	.loc 1 3373 0 discriminator 2
	movq	-48(%rbp), %rax	# type, iftmp.225
.L579:
	.loc 1 3373 0 discriminator 3
	movq	-56(%rbp), %rdx	# arg0, tmp93
	movl	-36(%rbp), %edi	# code, tmp94
	movq	%rax, %rsi	# iftmp.225,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20993,
	call	fold	#
	movq	%rax, -8(%rbp)	# tmp95, tem
	.loc 1 3375 0 is_stmt 1 discriminator 3
	jmp	.L580	#
.L583:
	.loc 1 3375 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tem, tmp96
	movq	32(%rax), %rax	# tem_1->exp.operands, tmp97
	movq	%rax, -8(%rbp)	# tmp97, tem
.L580:
	movq	-8(%rbp), %rax	# tem, tmp98
	movzbl	16(%rax), %eax	# tem_1->common.code, D.20994
	cmpb	$115, %al	#, D.20994
	je	.L581	#,
	.loc 1 3375 0 discriminator 3
	movq	-8(%rbp), %rax	# tem, tmp99
	movzbl	16(%rax), %eax	# tem_1->common.code, D.20994
	cmpb	$114, %al	#, D.20994
	je	.L581	#,
	.loc 1 3375 0 discriminator 1
	movq	-8(%rbp), %rax	# tem, tmp100
	movzbl	16(%rax), %eax	# tem_1->common.code, D.20994
	cmpb	$116, %al	#, D.20994
	jne	.L582	#,
.L581:
	.loc 1 3375 0 discriminator 2
	movq	-8(%rbp), %rax	# tem, tmp101
	movq	32(%rax), %rdx	# tem_1->exp.operands, D.20993
	movq	global_trees(%rip), %rax	# global_trees, D.20993
	cmpq	%rax, %rdx	# D.20993, D.20993
	je	.L582	#,
	.loc 1 3375 0 discriminator 1
	movq	-8(%rbp), %rax	# tem, tmp102
	movq	8(%rax), %rax	# tem_1->common.type, D.20993
	movzbl	61(%rax), %eax	# *_26, tmp105
	shrb	%al	# D.20995
	movl	%eax, %edx	# D.20995, D.20995
	movq	-8(%rbp), %rax	# tem, tmp106
	movq	32(%rax), %rax	# tem_1->exp.operands, D.20993
	movq	8(%rax), %rax	# _28->common.type, D.20993
	movzbl	61(%rax), %eax	# *_29, tmp109
	shrb	%al	# D.20995
	cmpb	%al, %dl	# D.20995, D.20995
	je	.L583	#,
.L582:
	.loc 1 3376 0 is_stmt 1
	movq	-8(%rbp), %rax	# tem, tmp110
	movzbl	16(%rax), %eax	# tem_1->common.code, D.20994
	cmpb	$25, %al	#, D.20994
	jne	.L584	#,
	.loc 1 3376 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tem, iftmp.226
	jmp	.L585	#
.L584:
	.loc 1 3376 0 discriminator 2
	movl	$0, %eax	#, iftmp.226
.L585:
	.loc 1 3376 0 discriminator 3
	jmp	.L586	#
.L577:
	.loc 1 3379 0 is_stmt 1
	movl	-36(%rbp), %eax	# code, code.227
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20996
	cmpb	$60, %al	#, D.20996
	je	.L587	#,
	.loc 1 3380 0
	movl	$0, %eax	#, D.20992
	jmp	.L586	#
.L587:
	.loc 1 3388 0
	cmpq	$0, -56(%rbp)	#, arg0
	jne	.L588	#,
	.loc 1 3388 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, upper0_p
	je	.L589	#,
	movl	$1, %eax	#, iftmp.229
	jmp	.L591	#
.L589:
	.loc 1 3388 0 discriminator 2
	movl	$-1, %eax	#, iftmp.229
	jmp	.L591	#
.L588:
	movl	$0, %eax	#, iftmp.228
.L591:
	.loc 1 3388 0 discriminator 3
	movl	%eax, -16(%rbp)	# iftmp.228, sgn0
	.loc 1 3389 0 is_stmt 1 discriminator 3
	cmpq	$0, -64(%rbp)	#, arg1
	jne	.L592	#,
	.loc 1 3389 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, upper1_p
	je	.L593	#,
	movl	$1, %eax	#, iftmp.231
	jmp	.L595	#
.L593:
	.loc 1 3389 0 discriminator 2
	movl	$-1, %eax	#, iftmp.231
	jmp	.L595	#
.L592:
	movl	$0, %eax	#, iftmp.230
.L595:
	.loc 1 3389 0 discriminator 3
	movl	%eax, -12(%rbp)	# iftmp.230, sgn1
	.loc 1 3390 0 is_stmt 1 discriminator 3
	movl	-36(%rbp), %eax	# code, tmp113
	subl	$97, %eax	#, tmp112
	cmpl	$5, %eax	#, tmp112
	ja	.L596	#,
	movl	%eax, %eax	# tmp112, tmp114
	movq	.L598(,%rax,8), %rax	#, tmp115
	jmp	*%rax	# tmp115
	.section	.rodata
	.align 8
	.align 4
.L598:
	.quad	.L597
	.quad	.L599
	.quad	.L600
	.quad	.L601
	.quad	.L602
	.quad	.L603
	.text
.L602:
	.loc 1 3393 0
	movl	-16(%rbp), %eax	# sgn0, tmp116
	cmpl	-12(%rbp), %eax	# sgn1, tmp116
	sete	%al	#, D.20997
	movzbl	%al, %eax	# D.20997, tmp117
	movl	%eax, -20(%rbp)	# tmp117, result
	.loc 1 3394 0
	jmp	.L604	#
.L603:
	.loc 1 3396 0
	movl	-16(%rbp), %eax	# sgn0, tmp118
	cmpl	-12(%rbp), %eax	# sgn1, tmp118
	setne	%al	#, D.20997
	movzbl	%al, %eax	# D.20997, tmp119
	movl	%eax, -20(%rbp)	# tmp119, result
	.loc 1 3397 0
	jmp	.L604	#
.L597:
	.loc 1 3399 0
	movl	-16(%rbp), %eax	# sgn0, tmp120
	cmpl	-12(%rbp), %eax	# sgn1, tmp120
	setl	%al	#, D.20997
	movzbl	%al, %eax	# D.20997, tmp121
	movl	%eax, -20(%rbp)	# tmp121, result
	.loc 1 3400 0
	jmp	.L604	#
.L599:
	.loc 1 3402 0
	movl	-16(%rbp), %eax	# sgn0, tmp122
	cmpl	-12(%rbp), %eax	# sgn1, tmp122
	setle	%al	#, D.20997
	movzbl	%al, %eax	# D.20997, tmp123
	movl	%eax, -20(%rbp)	# tmp123, result
	.loc 1 3403 0
	jmp	.L604	#
.L600:
	.loc 1 3405 0
	movl	-16(%rbp), %eax	# sgn0, tmp124
	cmpl	-12(%rbp), %eax	# sgn1, tmp124
	setg	%al	#, D.20997
	movzbl	%al, %eax	# D.20997, tmp125
	movl	%eax, -20(%rbp)	# tmp125, result
	.loc 1 3406 0
	jmp	.L604	#
.L601:
	.loc 1 3408 0
	movl	-16(%rbp), %eax	# sgn0, tmp126
	cmpl	-12(%rbp), %eax	# sgn1, tmp126
	setge	%al	#, D.20997
	movzbl	%al, %eax	# D.20997, tmp127
	movl	%eax, -20(%rbp)	# tmp127, result
	.loc 1 3409 0
	jmp	.L604	#
.L596:
	.loc 1 3411 0
	movl	$__FUNCTION__.12764, %edx	#,
	movl	$3411, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L604:
	.loc 1 3414 0
	cmpl	$0, -20(%rbp)	#, result
	je	.L605	#,
	.loc 1 3414 0 is_stmt 0 discriminator 1
	movq	global_trees+96(%rip), %rax	# global_trees, iftmp.232
	jmp	.L606	#
.L605:
	.loc 1 3414 0 discriminator 2
	movq	global_trees+88(%rip), %rax	# global_trees, iftmp.232
.L606:
	.loc 1 3414 0 discriminator 3
	movq	-48(%rbp), %rdx	# type, tmp128
	movq	%rax, %rsi	# iftmp.232,
	movq	%rdx, %rdi	# tmp128,
	call	convert	#
.L586:
	.loc 1 3415 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	range_binop, .-range_binop
	.type	make_range, @function
make_range:
.LFB46:
	.loc 1 3428 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# exp, exp
	movq	%rsi, -128(%rbp)	# pin_p, pin_p
	movq	%rdx, -136(%rbp)	# plow, plow
	movq	%rcx, -144(%rbp)	# phigh, phigh
	.loc 1 3430 0
	movq	$0, -80(%rbp)	#, arg0
	movq	$0, -72(%rbp)	#, arg1
	movq	$0, -64(%rbp)	#, type
	.loc 1 3431 0
	movq	$0, -56(%rbp)	#, orig_type
	.loc 1 3441 0
	movl	$0, -104(%rbp)	#, in_p
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20998
	movq	-120(%rbp), %rax	# exp, tmp189
	movq	8(%rax), %rax	# exp_49(D)->common.type, D.20998
	movq	%rdx, %rsi	# D.20998,
	movq	%rax, %rdi	# D.20998,
	call	convert	#
	movq	%rax, -40(%rbp)	# tmp190, high
	movq	-40(%rbp), %rax	# high, tmp191
	movq	%rax, -48(%rbp)	# tmp191, low
.L660:
	.loc 1 3445 0
	movq	-120(%rbp), %rax	# exp, tmp192
	movzbl	16(%rax), %eax	# exp_1->common.code, D.20999
	movzbl	%al, %eax	# D.20999, tmp193
	movl	%eax, -100(%rbp)	# tmp193, code
	.loc 1 3447 0
	movl	-100(%rbp), %eax	# code, code.233
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$60, %al	#, D.21000
	je	.L608	#,
	.loc 1 3447 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %eax	# code, code.234
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$49, %al	#, D.21000
	je	.L608	#,
	movl	-100(%rbp), %eax	# code, code.235
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$50, %al	#, D.21000
	je	.L608	#,
	movl	-100(%rbp), %eax	# code, code.236
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$101, %al	#, D.21000
	jne	.L609	#,
.L608:
	.loc 1 3449 0 is_stmt 1
	movq	-120(%rbp), %rax	# exp, tmp198
	movq	32(%rax), %rax	# exp_1->exp.operands, tmp199
	movq	%rax, -80(%rbp)	# tmp199, arg0
	.loc 1 3450 0
	movl	-100(%rbp), %eax	# code, code.237
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$60, %al	#, D.21000
	je	.L610	#,
	.loc 1 3451 0
	movl	-100(%rbp), %eax	# code, code.238
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$49, %al	#, D.21000
	je	.L610	#,
	.loc 1 3452 0
	movl	-100(%rbp), %eax	# code, code.239
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$50, %al	#, D.21000
	jne	.L611	#,
.L610:
	.loc 1 3453 0
	movq	-80(%rbp), %rax	# arg0, tmp203
	movq	8(%rax), %rax	# arg0_63->common.type, tmp204
	movq	%rax, -64(%rbp)	# tmp204, type
.L611:
	.loc 1 3454 0
	movl	-100(%rbp), %eax	# code, code.240
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$50, %al	#, D.21000
	je	.L612	#,
	.loc 1 3455 0
	movl	-100(%rbp), %eax	# code, code.241
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$60, %al	#, D.21000
	je	.L612	#,
	.loc 1 3456 0
	movl	-100(%rbp), %eax	# code, code.242
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21000
	cmpb	$101, %al	#, D.21000
	jne	.L609	#,
	.loc 1 3457 0
	movl	-100(%rbp), %eax	# code, code.243
	cltq
	movl	tree_code_length(,%rax,4), %eax	# tree_code_length, D.21001
	cmpl	$1, %eax	#, D.21001
	jle	.L609	#,
.L612:
	.loc 1 3458 0
	movq	-120(%rbp), %rax	# exp, tmp209
	movq	40(%rax), %rax	# exp_1->exp.operands, tmp210
	movq	%rax, -72(%rbp)	# tmp210, arg1
.L609:
	.loc 1 3463 0
	cmpq	$0, -64(%rbp)	#, type
	je	.L613	#,
	.loc 1 3463 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, orig_type
	jne	.L613	#,
	.loc 1 3464 0 is_stmt 1
	movq	-64(%rbp), %rax	# type, tmp211
	movq	%rax, -56(%rbp)	# tmp211, orig_type
.L613:
	.loc 1 3466 0
	movl	-100(%rbp), %eax	# code, tmp213
	subl	$59, %eax	#, tmp212
	cmpl	$57, %eax	#, tmp212
	ja	.L666	#,
	movl	%eax, %eax	# tmp212, tmp214
	movq	.L616(,%rax,8), %rax	#, tmp215
	jmp	*%rax	# tmp215
	.section	.rodata
	.align 8
	.align 4
.L616:
	.quad	.L615
	.quad	.L615
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L617
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L618
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L619
	.quad	.L620
	.quad	.L620
	.quad	.L620
	.quad	.L620
	.quad	.L620
	.quad	.L620
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L666
	.quad	.L621
	.quad	.L621
	.quad	.L621
	.text
.L619:
	.loc 1 3469 0
	cmpl	$0, -104(%rbp)	#, in_p
	sete	%al	#, D.21002
	movzbl	%al, %eax	# D.21002, tmp216
	movl	%eax, -104(%rbp)	# tmp216, in_p
	movq	-80(%rbp), %rax	# arg0, tmp217
	movq	%rax, -120(%rbp)	# tmp217, exp
	.loc 1 3470 0
	jmp	.L622	#
.L620:
	.loc 1 3479 0
	cmpq	$0, -48(%rbp)	#, low
	je	.L623	#,
	.loc 1 3479 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, high
	je	.L623	#,
	.loc 1 3480 0 is_stmt 1
	movq	-48(%rbp), %rax	# low, tmp218
	movq	%rax, %rdi	# tmp218,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21001
	je	.L623	#,
	.loc 1 3480 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# high, tmp219
	movq	%rax, %rdi	# tmp219,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21001
	je	.L623	#,
	.loc 1 3481 0 is_stmt 1
	movq	-72(%rbp), %rax	# arg1, tmp220
	movzbl	16(%rax), %eax	# arg1_8->common.code, D.20999
	cmpb	$25, %al	#, D.20999
	jne	.L623	#,
	.loc 1 3484 0
	movl	-100(%rbp), %eax	# code, tmp222
	subl	$97, %eax	#, tmp221
	cmpl	$5, %eax	#, tmp221
	ja	.L624	#,
	movl	%eax, %eax	# tmp221, tmp223
	movq	.L626(,%rax,8), %rax	#, tmp224
	jmp	*%rax	# tmp224
	.section	.rodata
	.align 8
	.align 4
.L626:
	.quad	.L625
	.quad	.L627
	.quad	.L628
	.quad	.L629
	.quad	.L630
	.quad	.L631
	.text
.L631:
	.loc 1 3487 0
	movq	-72(%rbp), %rax	# arg1, tmp225
	movq	%rax, -40(%rbp)	# tmp225, high
	movq	-40(%rbp), %rax	# high, tmp226
	movq	%rax, -48(%rbp)	# tmp226, low
	.loc 1 3488 0
	jmp	.L632	#
.L630:
	.loc 1 3490 0
	cmpl	$0, -104(%rbp)	#, in_p
	sete	%al	#, D.21002
	movzbl	%al, %eax	# D.21002, tmp227
	movl	%eax, -104(%rbp)	# tmp227, in_p
	movq	-72(%rbp), %rax	# arg1, tmp228
	movq	%rax, -40(%rbp)	# tmp228, high
	movq	-40(%rbp), %rax	# high, tmp229
	movq	%rax, -48(%rbp)	# tmp229, low
	.loc 1 3491 0
	jmp	.L632	#
.L628:
	.loc 1 3493 0
	movq	$0, -48(%rbp)	#, low
	movq	-72(%rbp), %rax	# arg1, tmp230
	movq	%rax, -40(%rbp)	# tmp230, high
	.loc 1 3494 0
	jmp	.L632	#
.L629:
	.loc 1 3496 0
	cmpl	$0, -104(%rbp)	#, in_p
	sete	%al	#, D.21002
	movzbl	%al, %eax	# D.21002, tmp231
	movl	%eax, -104(%rbp)	# tmp231, in_p
	movq	-72(%rbp), %rax	# arg1, tmp232
	movq	%rax, -48(%rbp)	# tmp232, low
	movq	$0, -40(%rbp)	#, high
	.loc 1 3497 0
	jmp	.L632	#
.L625:
	.loc 1 3499 0
	movq	-72(%rbp), %rax	# arg1, tmp233
	movq	%rax, -48(%rbp)	# tmp233, low
	movq	$0, -40(%rbp)	#, high
	.loc 1 3500 0
	jmp	.L632	#
.L627:
	.loc 1 3502 0
	cmpl	$0, -104(%rbp)	#, in_p
	sete	%al	#, D.21002
	movzbl	%al, %eax	# D.21002, tmp234
	movl	%eax, -104(%rbp)	# tmp234, in_p
	movq	$0, -48(%rbp)	#, low
	movq	-72(%rbp), %rax	# arg1, tmp235
	movq	%rax, -40(%rbp)	# tmp235, high
	.loc 1 3503 0
	jmp	.L632	#
.L624:
	.loc 1 3505 0
	movl	$__FUNCTION__.12799, %edx	#,
	movl	$3505, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L632:
	.loc 1 3508 0
	movq	-80(%rbp), %rax	# arg0, tmp236
	movq	%rax, -120(%rbp)	# tmp236, exp
	.loc 1 3514 0
	movq	-64(%rbp), %rax	# type, tmp237
	movzbl	17(%rax), %eax	# *type_11, D.20999
	andl	$32, %eax	#, D.20999
	testb	%al, %al	# D.20999
	je	.L633	#,
	.loc 1 3514 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, low
	je	.L634	#,
	cmpq	$0, -40(%rbp)	#, high
	jne	.L633	#,
.L634:
	.loc 1 3516 0 is_stmt 1
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20998
	movq	-64(%rbp), %rax	# type, tmp238
	movq	%rdx, %rsi	# D.20998,
	movq	%rax, %rdi	# tmp238,
	call	convert	#
	movq	-40(%rbp), %r9	# high, tmp239
	movq	-48(%rbp), %r8	# low, tmp240
	movl	-104(%rbp), %ecx	# in_p, tmp241
	leaq	-88(%rbp), %rdx	#, tmp242
	leaq	-96(%rbp), %rsi	#, tmp243
	leaq	-108(%rbp), %rdi	#, tmp244
	movq	$0, 16(%rsp)	#,
	movq	%rax, 8(%rsp)	# D.20998,
	movl	$1, (%rsp)	#,
	call	merge_ranges	#
	testl	%eax, %eax	# D.21001
	jne	.L635	#,
	.loc 1 3519 0
	jmp	.L623	#
.L635:
	.loc 1 3521 0
	movl	-108(%rbp), %eax	# n_in_p, tmp245
	movl	%eax, -104(%rbp)	# tmp245, in_p
	movq	-96(%rbp), %rax	# n_low, tmp246
	movq	%rax, -48(%rbp)	# tmp246, low
	movq	-88(%rbp), %rax	# n_high, tmp247
	movq	%rax, -40(%rbp)	# tmp247, high
	.loc 1 3526 0
	cmpq	$0, -40(%rbp)	#, high
	jne	.L633	#,
	.loc 1 3526 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, low
	je	.L633	#,
	.loc 1 3528 0 is_stmt 1
	cmpl	$0, -104(%rbp)	#, in_p
	sete	%al	#, D.21002
	movzbl	%al, %eax	# D.21002, tmp248
	movl	%eax, -104(%rbp)	# tmp248, in_p
	.loc 1 3529 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.20998
	movq	-48(%rbp), %rax	# low, tmp249
	movl	$0, %r9d	#,
	movq	%rdx, %r8	# D.20998,
	movl	$0, %ecx	#,
	movq	%rax, %rdx	# tmp249,
	movl	$0, %esi	#,
	movl	$60, %edi	#,
	call	range_binop	#
	movq	%rax, -40(%rbp)	# tmp250, high
	.loc 1 3531 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20998
	movq	-64(%rbp), %rax	# type, tmp251
	movq	%rdx, %rsi	# D.20998,
	movq	%rax, %rdi	# tmp251,
	call	convert	#
	movq	%rax, -48(%rbp)	# tmp252, low
	.loc 1 3534 0
	jmp	.L622	#
.L633:
	jmp	.L622	#
.L617:
	.loc 1 3538 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20998
	movq	-64(%rbp), %rax	# type, tmp253
	movq	%rdx, %rsi	# D.20998,
	movq	%rax, %rdi	# tmp253,
	call	convert	#
	movq	%rax, %rdx	#, D.20998
	movq	-40(%rbp), %rcx	# high, tmp254
	movq	-64(%rbp), %rax	# type, tmp255
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp254,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp255,
	movl	$60, %edi	#,
	call	range_binop	#
	movq	%rax, -96(%rbp)	# n_low.244, n_low
	.loc 1 3540 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20998
	movq	-64(%rbp), %rax	# type, tmp256
	movq	%rdx, %rsi	# D.20998,
	movq	%rax, %rdi	# tmp256,
	call	convert	#
	movq	%rax, %rdx	#, D.20998
	movq	-48(%rbp), %rcx	# low, tmp257
	movq	-64(%rbp), %rax	# type, tmp258
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp257,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp258,
	movl	$60, %edi	#,
	call	range_binop	#
	movq	%rax, -88(%rbp)	# n_high.245, n_high
	.loc 1 3542 0
	movq	-96(%rbp), %rax	# n_low, tmp259
	movq	%rax, -48(%rbp)	# tmp259, low
	movq	-88(%rbp), %rax	# n_high, tmp260
	movq	%rax, -40(%rbp)	# tmp260, high
	.loc 1 3543 0
	movq	-80(%rbp), %rax	# arg0, tmp261
	movq	%rax, -120(%rbp)	# tmp261, exp
	.loc 1 3544 0
	jmp	.L622	#
.L618:
	.loc 1 3548 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.20998
	movq	-64(%rbp), %rax	# type, tmp262
	movq	%rdx, %rsi	# D.20998,
	movq	%rax, %rdi	# tmp262,
	call	convert	#
	movq	%rax, %rbx	#, D.20998
	movq	-80(%rbp), %rax	# arg0, tmp263
	movq	%rax, %rdi	# tmp263,
	call	negate_expr	#
	movq	%rax, %rdx	#, D.20998
	movq	-64(%rbp), %rax	# type, tmp264
	movq	%rbx, %rcx	# D.20998,
	movq	%rax, %rsi	# tmp264,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -120(%rbp)	# tmp265, exp
	.loc 1 3550 0
	jmp	.L622	#
.L615:
	.loc 1 3553 0
	movq	-72(%rbp), %rax	# arg1, tmp266
	movzbl	16(%rax), %eax	# arg1_8->common.code, D.20999
	cmpb	$25, %al	#, D.20999
	je	.L636	#,
	.loc 1 3554 0
	jmp	.L623	#
.L636:
	.loc 1 3560 0
	cmpl	$60, -100(%rbp)	#, code
	jne	.L637	#,
	.loc 1 3560 0 is_stmt 0 discriminator 1
	movl	$59, %eax	#, iftmp.246
	jmp	.L638	#
.L637:
	.loc 1 3560 0 discriminator 2
	movl	$60, %eax	#, iftmp.246
.L638:
	.loc 1 3560 0 discriminator 3
	movq	-72(%rbp), %rcx	# arg1, tmp267
	movq	-48(%rbp), %rdx	# low, tmp268
	movq	-64(%rbp), %rsi	# type, tmp269
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp267,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# iftmp.246,
	call	range_binop	#
	movq	%rax, -96(%rbp)	# n_low.247, n_low
	.loc 1 3562 0 is_stmt 1 discriminator 3
	cmpl	$60, -100(%rbp)	#, code
	jne	.L639	#,
	.loc 1 3562 0 is_stmt 0 discriminator 1
	movl	$59, %eax	#, iftmp.248
	jmp	.L640	#
.L639:
	.loc 1 3562 0 discriminator 2
	movl	$60, %eax	#, iftmp.248
.L640:
	.loc 1 3562 0 discriminator 3
	movq	-72(%rbp), %rcx	# arg1, tmp270
	movq	-40(%rbp), %rdx	# high, tmp271
	movq	-64(%rbp), %rsi	# type, tmp272
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp270,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# iftmp.248,
	call	range_binop	#
	movq	%rax, -88(%rbp)	# n_high.249, n_high
	.loc 1 3564 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# n_low, n_low.250
	testq	%rax, %rax	# n_low.250
	je	.L641	#,
	.loc 1 3564 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# n_low, n_low.251
	movzbl	18(%rax), %eax	# *n_low.251_141, D.20999
	andl	$8, %eax	#, D.20999
	testb	%al, %al	# D.20999
	jne	.L623	#,
.L641:
	.loc 1 3565 0 is_stmt 1
	movq	-88(%rbp), %rax	# n_high, n_high.252
	testq	%rax, %rax	# n_high.252
	je	.L642	#,
	.loc 1 3565 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# n_high, n_high.253
	movzbl	18(%rax), %eax	# *n_high.253_145, D.20999
	andl	$8, %eax	#, D.20999
	testb	%al, %al	# D.20999
	jne	.L623	#,
.L642:
	.loc 1 3570 0 is_stmt 1
	movq	-96(%rbp), %rax	# n_low, n_low.254
	testq	%rax, %rax	# n_low.254
	je	.L643	#,
	.loc 1 3570 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# n_high, n_high.255
	testq	%rax, %rax	# n_high.255
	je	.L643	#,
	movq	-96(%rbp), %rdx	# n_low, n_low.256
	movq	-88(%rbp), %rax	# n_high, n_high.257
	movq	%rdx, %rsi	# n_low.256,
	movq	%rax, %rdi	# n_high.257,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21001
	je	.L643	#,
	.loc 1 3572 0 is_stmt 1
	movq	global_trees+96(%rip), %rcx	# global_trees, D.20998
	movq	-88(%rbp), %rdx	# n_high, n_high.258
	movq	-64(%rbp), %rax	# type, tmp273
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# D.20998,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp273,
	movl	$59, %edi	#,
	call	range_binop	#
	movq	%rax, -48(%rbp)	# tmp274, low
	.loc 1 3574 0
	movq	global_trees+96(%rip), %rcx	# global_trees, D.20998
	movq	-96(%rbp), %rdx	# n_low, n_low.259
	movq	-64(%rbp), %rax	# type, tmp275
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# D.20998,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp275,
	movl	$60, %edi	#,
	call	range_binop	#
	movq	%rax, -40(%rbp)	# tmp276, high
	.loc 1 3581 0
	movq	-96(%rbp), %rax	# n_low, n_low.260
	movq	-48(%rbp), %rdx	# low, tmp277
	movq	%rdx, %rsi	# tmp277,
	movq	%rax, %rdi	# n_low.260,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21001
	je	.L644	#,
	.loc 1 3582 0
	movq	-88(%rbp), %rax	# n_high, n_high.261
	movq	-40(%rbp), %rdx	# high, tmp278
	movq	%rdx, %rsi	# tmp278,
	movq	%rax, %rdi	# n_high.261,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21001
	je	.L644	#,
	.loc 1 3583 0
	movq	$0, -40(%rbp)	#, high
	movq	-40(%rbp), %rax	# high, tmp279
	movq	%rax, -48(%rbp)	# tmp279, low
	.loc 1 3581 0
	jmp	.L646	#
.L644:
	.loc 1 3585 0
	cmpl	$0, -104(%rbp)	#, in_p
	sete	%al	#, D.21002
	movzbl	%al, %eax	# D.21002, tmp280
	movl	%eax, -104(%rbp)	# tmp280, in_p
	.loc 1 3581 0
	jmp	.L646	#
.L643:
	.loc 1 3588 0
	movq	-96(%rbp), %rax	# n_low, tmp281
	movq	%rax, -48(%rbp)	# tmp281, low
	movq	-88(%rbp), %rax	# n_high, tmp282
	movq	%rax, -40(%rbp)	# tmp282, high
.L646:
	.loc 1 3590 0
	movq	-80(%rbp), %rax	# arg0, tmp283
	movq	%rax, -120(%rbp)	# tmp283, exp
	.loc 1 3591 0
	jmp	.L622	#
.L621:
	.loc 1 3594 0
	movq	-64(%rbp), %rax	# type, tmp284
	movzwl	60(%rax), %eax	# *type_11, tmp287
	andw	$511, %ax	#, D.21003
	movzwl	%ax, %edx	# D.21003, D.21001
	movq	-56(%rbp), %rax	# orig_type, tmp288
	movzwl	60(%rax), %eax	# *orig_type_13, tmp291
	andw	$511, %ax	#, D.21003
	movzwl	%ax, %eax	# D.21003, D.21001
	cmpl	%eax, %edx	# D.21001, D.21001
	jle	.L647	#,
	.loc 1 3595 0
	jmp	.L623	#
.L647:
	.loc 1 3597 0
	movq	-64(%rbp), %rax	# type, tmp292
	movzbl	16(%rax), %eax	# type_11->common.code, D.20999
	cmpb	$6, %al	#, D.20999
	je	.L648	#,
	.loc 1 3597 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# type, tmp293
	movzbl	16(%rax), %eax	# type_11->common.code, D.20999
	cmpb	$10, %al	#, D.20999
	je	.L648	#,
	movq	-64(%rbp), %rax	# type, tmp294
	movzbl	16(%rax), %eax	# type_11->common.code, D.20999
	cmpb	$11, %al	#, D.20999
	je	.L648	#,
	movq	-64(%rbp), %rax	# type, tmp295
	movzbl	16(%rax), %eax	# type_11->common.code, D.20999
	cmpb	$12, %al	#, D.20999
	jne	.L623	#,
.L648:
	.loc 1 3598 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, low
	je	.L649	#,
	.loc 1 3598 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rdx	# type, tmp296
	movq	-48(%rbp), %rax	# low, tmp297
	movq	%rdx, %rsi	# tmp296,
	movq	%rax, %rdi	# tmp297,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21001
	je	.L623	#,
.L649:
	.loc 1 3599 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, high
	je	.L650	#,
	.loc 1 3599 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rdx	# type, tmp298
	movq	-40(%rbp), %rax	# high, tmp299
	movq	%rdx, %rsi	# tmp298,
	movq	%rax, %rdi	# tmp299,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21001
	je	.L623	#,
.L650:
	.loc 1 3602 0 is_stmt 1
	movq	-48(%rbp), %rax	# low, tmp300
	movq	%rax, -96(%rbp)	# tmp300, n_low
	movq	-40(%rbp), %rax	# high, tmp301
	movq	%rax, -88(%rbp)	# tmp301, n_high
	.loc 1 3604 0
	movq	-96(%rbp), %rax	# n_low, n_low.262
	testq	%rax, %rax	# n_low.262
	je	.L651	#,
	.loc 1 3605 0
	movq	-96(%rbp), %rdx	# n_low, n_low.263
	movq	-64(%rbp), %rax	# type, tmp302
	movq	%rdx, %rsi	# n_low.263,
	movq	%rax, %rdi	# tmp302,
	call	convert	#
	movq	%rax, -96(%rbp)	# n_low.264, n_low
.L651:
	.loc 1 3607 0
	movq	-88(%rbp), %rax	# n_high, n_high.265
	testq	%rax, %rax	# n_high.265
	je	.L652	#,
	.loc 1 3608 0
	movq	-88(%rbp), %rdx	# n_high, n_high.266
	movq	-64(%rbp), %rax	# type, tmp303
	movq	%rdx, %rsi	# n_high.266,
	movq	%rax, %rdi	# tmp303,
	call	convert	#
	movq	%rax, -88(%rbp)	# n_high.267, n_high
.L652:
	.loc 1 3616 0
	movq	-64(%rbp), %rax	# type, tmp304
	movzbl	17(%rax), %eax	# *type_11, D.20999
	andl	$32, %eax	#, D.20999
	testb	%al, %al	# D.20999
	je	.L653	#,
	.loc 1 3616 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# exp, tmp305
	movq	8(%rax), %rax	# exp_1->common.type, D.20998
	movzbl	17(%rax), %eax	# *_188, D.20999
	andl	$32, %eax	#, D.20999
	testb	%al, %al	# D.20999
	jne	.L653	#,
.LBB17:
	.loc 1 3618 0 is_stmt 1
	movq	-64(%rbp), %rax	# type, tmp306
	movzbl	61(%rax), %eax	# *type_11, tmp309
	shrb	%al	# D.21004
	movzbl	%al, %eax	# D.21004, D.21005
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.21005,
	call	type_for_mode	#
	movq	%rax, -32(%rbp)	# tmp310, equiv_type
	.loc 1 3625 0
	movq	-32(%rbp), %rax	# equiv_type, tmp311
	movq	112(%rax), %rax	# equiv_type_193->type.maxval, D.20998
	.loc 1 3626 0
	testq	%rax, %rax	# D.20998
	je	.L654	#,
	.loc 1 3626 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# equiv_type, tmp312
	movq	112(%rax), %rax	# equiv_type_193->type.maxval, iftmp.268
	jmp	.L655	#
.L654:
	.loc 1 3626 0 discriminator 2
	movq	-64(%rbp), %rax	# type, tmp313
	movq	112(%rax), %rax	# type_11->type.maxval, iftmp.268
.L655:
	.loc 1 3625 0 is_stmt 1
	movq	%rax, -24(%rbp)	# iftmp.268, high_positive
	.loc 1 3628 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.20998
	movq	-64(%rbp), %rax	# type, tmp314
	movq	%rdx, %rsi	# D.20998,
	movq	%rax, %rdi	# tmp314,
	call	convert	#
	movq	%rax, %rbx	#, D.20998
	movq	-24(%rbp), %rdx	# high_positive, tmp315
	movq	-64(%rbp), %rax	# type, tmp316
	movq	%rdx, %rsi	# tmp315,
	movq	%rax, %rdi	# tmp316,
	call	convert	#
	movq	%rax, %rdx	#, D.20998
	movq	-64(%rbp), %rax	# type, tmp317
	movq	%rbx, %rcx	# D.20998,
	movq	%rax, %rsi	# tmp317,
	movl	$83, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.20998,
	call	fold	#
	movq	%rax, -24(%rbp)	# tmp318, high_positive
	.loc 1 3635 0
	cmpq	$0, -48(%rbp)	#, low
	je	.L656	#,
	.loc 1 3637 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20998
	movq	-64(%rbp), %rax	# type, tmp319
	movq	%rdx, %rsi	# D.20998,
	movq	%rax, %rdi	# tmp319,
	call	convert	#
	movq	-88(%rbp), %r9	# n_high, n_high.269
	movq	-96(%rbp), %r8	# n_low, n_low.270
	leaq	-88(%rbp), %rdx	#, tmp320
	leaq	-96(%rbp), %rsi	#, tmp321
	leaq	-108(%rbp), %rdi	#, tmp322
	movq	-24(%rbp), %rcx	# high_positive, tmp323
	movq	%rcx, 16(%rsp)	# tmp323,
	movq	%rax, 8(%rsp)	# D.20998,
	movl	$1, (%rsp)	#,
	movl	$1, %ecx	#,
	call	merge_ranges	#
	testl	%eax, %eax	# D.21001
	jne	.L657	#,
	.loc 1 3641 0
	jmp	.L623	#
.L657:
	.loc 1 3643 0
	movl	-108(%rbp), %eax	# n_in_p, n_in_p.271
	cmpl	-104(%rbp), %eax	# in_p, n_in_p.271
	sete	%al	#, D.21002
	movzbl	%al, %eax	# D.21002, tmp324
	movl	%eax, -104(%rbp)	# tmp324, in_p
	jmp	.L653	#
.L656:
	.loc 1 3649 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.20998
	movq	-64(%rbp), %rax	# type, tmp325
	movq	%rdx, %rsi	# D.20998,
	movq	%rax, %rdi	# tmp325,
	call	convert	#
	movq	-88(%rbp), %r9	# n_high, n_high.272
	movq	-96(%rbp), %r8	# n_low, n_low.273
	leaq	-88(%rbp), %rdx	#, tmp326
	leaq	-96(%rbp), %rsi	#, tmp327
	leaq	-108(%rbp), %rdi	#, tmp328
	movq	-24(%rbp), %rcx	# high_positive, tmp329
	movq	%rcx, 16(%rsp)	# tmp329,
	movq	%rax, 8(%rsp)	# D.20998,
	movl	$1, (%rsp)	#,
	movl	$0, %ecx	#,
	call	merge_ranges	#
	testl	%eax, %eax	# D.21001
	jne	.L658	#,
	.loc 1 3653 0
	jmp	.L623	#
.L658:
	.loc 1 3655 0
	movl	-108(%rbp), %eax	# n_in_p, n_in_p.274
	cmpl	%eax, -104(%rbp)	# n_in_p.274, in_p
	setne	%al	#, D.21002
	movzbl	%al, %eax	# D.21002, tmp330
	movl	%eax, -104(%rbp)	# tmp330, in_p
.L653:
.LBE17:
	.loc 1 3659 0
	movq	-80(%rbp), %rax	# arg0, tmp331
	movq	%rax, -120(%rbp)	# tmp331, exp
	.loc 1 3660 0
	movq	-96(%rbp), %rax	# n_low, tmp332
	movq	%rax, -48(%rbp)	# tmp332, low
	movq	-88(%rbp), %rax	# n_high, tmp333
	movq	%rax, -40(%rbp)	# tmp333, high
	.loc 1 3661 0
	jmp	.L622	#
.L666:
	.loc 1 3664 0
	nop
.L623:
	.loc 1 3667 0
	nop
	.loc 1 3671 0
	movq	-120(%rbp), %rax	# exp, tmp334
	movzbl	16(%rax), %eax	# exp_2->common.code, D.20999
	cmpb	$25, %al	#, D.20999
	jne	.L661	#,
	jmp	.L665	#
.L622:
	.loc 1 3668 0
	jmp	.L660	#
.L665:
	.loc 1 3673 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.20998
	movq	-48(%rbp), %rcx	# low, tmp335
	movq	-120(%rbp), %rdx	# exp, tmp336
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp335,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.20998,
	movl	$100, %edi	#,
	call	range_binop	#
	movq	%rax, %rdi	# D.20998,
	call	integer_onep	#
	.loc 1 3675 0
	testl	%eax, %eax	# D.21001
	je	.L662	#,
	.loc 1 3675 0 is_stmt 0 discriminator 1
	movq	integer_types+40(%rip), %rax	# integer_types, D.20998
	movq	-40(%rbp), %rcx	# high, tmp337
	movq	-120(%rbp), %rdx	# exp, tmp338
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp337,
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# D.20998,
	movl	$98, %edi	#,
	call	range_binop	#
	movq	%rax, %rdi	# D.20998,
	call	integer_onep	#
	testl	%eax, %eax	# D.21001
	je	.L662	#,
	.loc 1 3675 0 discriminator 3
	movl	$1, %eax	#, iftmp.275
	jmp	.L663	#
.L662:
	.loc 1 3675 0 discriminator 2
	movl	$0, %eax	#, iftmp.275
.L663:
	.loc 1 3673 0 is_stmt 1
	cmpl	-104(%rbp), %eax	# in_p, iftmp.275
	sete	%al	#, D.21002
	movzbl	%al, %eax	# D.21002, tmp339
	movl	%eax, -104(%rbp)	# tmp339, in_p
	.loc 1 3677 0
	movq	$0, -40(%rbp)	#, high
	movq	-40(%rbp), %rax	# high, tmp340
	movq	%rax, -48(%rbp)	# tmp340, low
	.loc 1 3678 0
	movq	$0, -120(%rbp)	#, exp
.L661:
	.loc 1 3681 0
	movq	-128(%rbp), %rax	# pin_p, tmp341
	movl	-104(%rbp), %edx	# in_p, tmp342
	movl	%edx, (%rax)	# tmp342, *pin_p_236(D)
	movq	-136(%rbp), %rax	# plow, tmp343
	movq	-48(%rbp), %rdx	# low, tmp344
	movq	%rdx, (%rax)	# tmp344, *plow_237(D)
	movq	-144(%rbp), %rax	# phigh, tmp345
	movq	-40(%rbp), %rdx	# high, tmp346
	movq	%rdx, (%rax)	# tmp346, *phigh_238(D)
	.loc 1 3682 0
	movq	-120(%rbp), %rax	# exp, D.21006
	.loc 1 3683 0
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	make_range, .-make_range
	.type	build_range_check, @function
build_range_check:
.LFB47:
	.loc 1 3695 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# type, type
	movq	%rsi, -64(%rbp)	# exp, exp
	movl	%edx, -68(%rbp)	# in_p, in_p
	movq	%rcx, -80(%rbp)	# low, low
	movq	%r8, -88(%rbp)	# high, high
	.loc 1 3696 0
	movq	-64(%rbp), %rax	# exp, tmp78
	movq	8(%rax), %rax	# exp_2(D)->common.type, tmp79
	movq	%rax, -40(%rbp)	# tmp79, etype
	.loc 1 3699 0
	cmpl	$0, -68(%rbp)	#, in_p
	jne	.L668	#,
	.loc 1 3700 0
	movq	-88(%rbp), %rcx	# high, tmp80
	movq	-80(%rbp), %rdx	# low, tmp81
	movq	-64(%rbp), %rsi	# exp, tmp82
	movq	-56(%rbp), %rax	# type, tmp83
	movq	%rcx, %r8	# tmp80,
	movq	%rdx, %rcx	# tmp81,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp83,
	call	build_range_check	#
	movq	%rax, -32(%rbp)	# tmp84, value
	cmpq	$0, -32(%rbp)	#, value
	je	.L668	#,
	.loc 1 3701 0
	movq	-32(%rbp), %rax	# value, tmp85
	movq	%rax, %rdi	# tmp85,
	call	invert_truthvalue	#
	jmp	.L669	#
.L668:
	.loc 1 3703 0
	cmpq	$0, -80(%rbp)	#, low
	jne	.L670	#,
	.loc 1 3703 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, high
	jne	.L670	#,
	.loc 1 3704 0 is_stmt 1
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21008
	movq	-56(%rbp), %rax	# type, tmp86
	movq	%rdx, %rsi	# D.21008,
	movq	%rax, %rdi	# tmp86,
	call	convert	#
	jmp	.L669	#
.L670:
	.loc 1 3706 0
	cmpq	$0, -80(%rbp)	#, low
	jne	.L671	#,
	.loc 1 3707 0
	movq	-88(%rbp), %rcx	# high, tmp87
	movq	-64(%rbp), %rdx	# exp, tmp88
	movq	-56(%rbp), %rax	# type, tmp89
	movq	%rax, %rsi	# tmp89,
	movl	$98, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21008,
	call	fold	#
	jmp	.L669	#
.L671:
	.loc 1 3709 0
	cmpq	$0, -88(%rbp)	#, high
	jne	.L672	#,
	.loc 1 3710 0
	movq	-80(%rbp), %rcx	# low, tmp90
	movq	-64(%rbp), %rdx	# exp, tmp91
	movq	-56(%rbp), %rax	# type, tmp92
	movq	%rax, %rsi	# tmp92,
	movl	$100, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21008,
	call	fold	#
	jmp	.L669	#
.L672:
	.loc 1 3712 0
	movq	-88(%rbp), %rcx	# high, tmp93
	movq	-80(%rbp), %rax	# low, tmp94
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21009
	je	.L673	#,
	.loc 1 3713 0
	movq	-80(%rbp), %rcx	# low, tmp95
	movq	-64(%rbp), %rdx	# exp, tmp96
	movq	-56(%rbp), %rax	# type, tmp97
	movq	%rax, %rsi	# tmp97,
	movl	$101, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21008,
	call	fold	#
	jmp	.L669	#
.L673:
	.loc 1 3715 0
	movq	-40(%rbp), %rax	# etype, tmp98
	movzbl	17(%rax), %eax	# *etype_3, D.21010
	andl	$32, %eax	#, D.21010
	testb	%al, %al	# D.21010
	je	.L674	#,
	.loc 1 3715 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# low, tmp99
	movq	%rax, %rdi	# tmp99,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21009
	je	.L674	#,
	.loc 1 3716 0 is_stmt 1
	movq	-88(%rbp), %rdx	# high, tmp100
	movq	-64(%rbp), %rsi	# exp, tmp101
	movq	-56(%rbp), %rax	# type, tmp102
	movq	%rdx, %r8	# tmp100,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp102,
	call	build_range_check	#
	jmp	.L669	#
.L674:
	.loc 1 3718 0
	movq	-80(%rbp), %rax	# low, tmp103
	movq	%rax, %rdi	# tmp103,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21009
	je	.L675	#,
	.loc 1 3720 0
	movq	-40(%rbp), %rax	# etype, tmp104
	movq	%rax, %rdi	# tmp104,
	call	unsigned_type	#
	movq	%rax, -24(%rbp)	# tmp105, utype
	.loc 1 3721 0
	movq	-88(%rbp), %rdx	# high, tmp106
	movq	-24(%rbp), %rax	# utype, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	convert	#
	movq	%rax, %rbx	#, D.21008
	movq	-64(%rbp), %rdx	# exp, tmp108
	movq	-24(%rbp), %rax	# utype, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	convert	#
	movq	%rax, %rsi	#, D.21008
	movq	-56(%rbp), %rax	# type, tmp110
	movq	%rbx, %r8	# D.21008,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp110,
	call	build_range_check	#
	jmp	.L669	#
.L675:
	.loc 1 3725 0
	movq	-80(%rbp), %rdx	# low, tmp111
	movq	-88(%rbp), %rax	# high, tmp112
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp112,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, -32(%rbp)	# tmp113, value
	cmpq	$0, -32(%rbp)	#, value
	je	.L676	#,
	.loc 1 3726 0
	movq	-32(%rbp), %rax	# value, tmp114
	movzbl	18(%rax), %eax	# *value_28, D.21010
	andl	$8, %eax	#, D.21010
	testb	%al, %al	# D.21010
	jne	.L676	#,
	.loc 1 3727 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21008
	movq	-40(%rbp), %rax	# etype, tmp115
	movq	%rdx, %rsi	# D.21008,
	movq	%rax, %rdi	# tmp115,
	call	convert	#
	movq	%rax, %rbx	#, D.21008
	movq	-80(%rbp), %rcx	# low, tmp116
	movq	-64(%rbp), %rdx	# exp, tmp117
	movq	-40(%rbp), %rax	# etype, tmp118
	movq	%rax, %rsi	# tmp118,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21008,
	call	fold	#
	movq	%rax, %rsi	#, D.21008
	movq	-32(%rbp), %rdx	# value, tmp119
	movq	-56(%rbp), %rax	# type, tmp120
	movq	%rdx, %r8	# tmp119,
	movq	%rbx, %rcx	# D.21008,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp120,
	call	build_range_check	#
	jmp	.L669	#
.L676:
	.loc 1 3731 0
	movl	$0, %eax	#, D.21007
.L669:
	.loc 1 3732 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	build_range_check, .-build_range_check
	.type	merge_ranges, @function
merge_ranges:
.LFB48:
	.loc 1 3743 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# pin_p, pin_p
	movq	%rsi, -64(%rbp)	# plow, plow
	movq	%rdx, -72(%rbp)	# phigh, phigh
	movl	%ecx, -76(%rbp)	# in0_p, in0_p
	movq	%r8, -88(%rbp)	# low0, low0
	movq	%r9, -96(%rbp)	# high0, high0
	.loc 1 3751 0
	cmpq	$0, -88(%rbp)	#, low0
	jne	.L678	#,
	.loc 1 3750 0
	cmpq	$0, 24(%rbp)	#, low1
	je	.L679	#,
.L678:
	.loc 1 3751 0 discriminator 1
	movq	integer_types+40(%rip), %rax	# integer_types, D.21012
	movq	24(%rbp), %rcx	# low1, tmp87
	movq	-88(%rbp), %rdx	# low0, tmp88
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp87,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.21012,
	movl	$101, %edi	#,
	call	range_binop	#
	movq	%rax, %rdi	# D.21012,
	call	integer_onep	#
	testl	%eax, %eax	# D.21011
	je	.L680	#,
.L679:
	.loc 1 3751 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.276
	jmp	.L681	#
.L680:
	.loc 1 3751 0 discriminator 3
	movl	$0, %eax	#, iftmp.276
.L681:
	.loc 1 3750 0 is_stmt 1
	movl	%eax, -44(%rbp)	# iftmp.276, lowequal
	.loc 1 3754 0
	cmpq	$0, -96(%rbp)	#, high0
	jne	.L682	#,
	.loc 1 3753 0
	cmpq	$0, 32(%rbp)	#, high1
	je	.L683	#,
.L682:
	.loc 1 3754 0 discriminator 1
	movq	integer_types+40(%rip), %rax	# integer_types, D.21012
	movq	32(%rbp), %rcx	# high1, tmp89
	movq	-96(%rbp), %rdx	# high0, tmp90
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp89,
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# D.21012,
	movl	$101, %edi	#,
	call	range_binop	#
	movq	%rax, %rdi	# D.21012,
	call	integer_onep	#
	testl	%eax, %eax	# D.21011
	je	.L684	#,
.L683:
	.loc 1 3754 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.277
	jmp	.L685	#
.L684:
	.loc 1 3754 0 discriminator 3
	movl	$0, %eax	#, iftmp.277
.L685:
	.loc 1 3753 0 is_stmt 1
	movl	%eax, -40(%rbp)	# iftmp.277, highequal
	.loc 1 3759 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21012
	movq	24(%rbp), %rcx	# low1, tmp91
	movq	-88(%rbp), %rdx	# low0, tmp92
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp91,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.21012,
	movl	$99, %edi	#,
	call	range_binop	#
	movq	%rax, %rdi	# D.21012,
	call	integer_onep	#
	testl	%eax, %eax	# D.21011
	jne	.L686	#,
	.loc 1 3761 0
	cmpl	$0, -44(%rbp)	#, lowequal
	je	.L687	#,
	.loc 1 3762 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21012
	movq	-96(%rbp), %rcx	# high0, tmp93
	movq	32(%rbp), %rdx	# high1, tmp94
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp93,
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# D.21012,
	movl	$99, %edi	#,
	call	range_binop	#
	movq	%rax, %rdi	# D.21012,
	call	integer_onep	#
	testl	%eax, %eax	# D.21011
	je	.L687	#,
.L686:
	.loc 1 3765 0
	movl	-76(%rbp), %eax	# in0_p, tmp95
	movl	%eax, -36(%rbp)	# tmp95, temp
	movl	16(%rbp), %eax	# in1_p, tmp96
	movl	%eax, -76(%rbp)	# tmp96, in0_p
	movl	-36(%rbp), %eax	# temp, tmp97
	movl	%eax, 16(%rbp)	# tmp97, in1_p
	.loc 1 3766 0
	movq	-88(%rbp), %rax	# low0, tmp98
	movq	%rax, -8(%rbp)	# tmp98, tem
	movq	24(%rbp), %rax	# low1, tmp99
	movq	%rax, -88(%rbp)	# tmp99, low0
	movq	-8(%rbp), %rax	# tem, tmp100
	movq	%rax, 24(%rbp)	# tmp100, low1
	.loc 1 3767 0
	movq	-96(%rbp), %rax	# high0, tmp101
	movq	%rax, -8(%rbp)	# tmp101, tem
	movq	32(%rbp), %rax	# high1, tmp102
	movq	%rax, -96(%rbp)	# tmp102, high0
	movq	-8(%rbp), %rax	# tem, tmp103
	movq	%rax, 32(%rbp)	# tmp103, high1
.L687:
	.loc 1 3773 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21012
	movq	24(%rbp), %rcx	# low1, tmp104
	movq	-96(%rbp), %rdx	# high0, tmp105
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp104,
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# D.21012,
	movl	$97, %edi	#,
	call	range_binop	#
	movq	%rax, %rdi	# D.21012,
	call	integer_onep	#
	movl	%eax, -32(%rbp)	# tmp106, no_overlap
	.loc 1 3775 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21012
	movq	-96(%rbp), %rcx	# high0, tmp107
	movq	32(%rbp), %rdx	# high1, tmp108
	movl	$1, %r9d	#,
	movq	%rcx, %r8	# tmp107,
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# D.21012,
	movl	$98, %edi	#,
	call	range_binop	#
	movq	%rax, %rdi	# D.21012,
	call	integer_onep	#
	movl	%eax, -28(%rbp)	# tmp109, subset
	.loc 1 3780 0
	cmpl	$0, -76(%rbp)	#, in0_p
	je	.L688	#,
	.loc 1 3780 0 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, in1_p
	je	.L688	#,
	.loc 1 3785 0 is_stmt 1
	cmpl	$0, -32(%rbp)	#, no_overlap
	je	.L689	#,
	.loc 1 3786 0
	movl	$0, -48(%rbp)	#, in_p
	movq	$0, -16(%rbp)	#, high
	movq	-16(%rbp), %rax	# high, tmp110
	movq	%rax, -24(%rbp)	# tmp110, low
	jmp	.L690	#
.L689:
	.loc 1 3787 0
	cmpl	$0, -28(%rbp)	#, subset
	je	.L691	#,
	.loc 1 3788 0
	movl	$1, -48(%rbp)	#, in_p
	movq	24(%rbp), %rax	# low1, tmp111
	movq	%rax, -24(%rbp)	# tmp111, low
	movq	32(%rbp), %rax	# high1, tmp112
	movq	%rax, -16(%rbp)	# tmp112, high
	jmp	.L690	#
.L691:
	.loc 1 3790 0
	movl	$1, -48(%rbp)	#, in_p
	movq	24(%rbp), %rax	# low1, tmp113
	movq	%rax, -24(%rbp)	# tmp113, low
	movq	-96(%rbp), %rax	# high0, tmp114
	movq	%rax, -16(%rbp)	# tmp114, high
	.loc 1 3785 0
	jmp	.L692	#
.L690:
	jmp	.L692	#
.L688:
	.loc 1 3793 0
	cmpl	$0, -76(%rbp)	#, in0_p
	je	.L693	#,
	.loc 1 3793 0 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, in1_p
	jne	.L693	#,
	.loc 1 3803 0 is_stmt 1
	cmpl	$0, -32(%rbp)	#, no_overlap
	je	.L694	#,
	.loc 1 3804 0
	movl	$1, -48(%rbp)	#, in_p
	movq	-88(%rbp), %rax	# low0, tmp115
	movq	%rax, -24(%rbp)	# tmp115, low
	movq	-96(%rbp), %rax	# high0, tmp116
	movq	%rax, -16(%rbp)	# tmp116, high
	jmp	.L695	#
.L694:
	.loc 1 3805 0
	cmpl	$0, -44(%rbp)	#, lowequal
	je	.L696	#,
	.loc 1 3805 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, highequal
	je	.L696	#,
	.loc 1 3806 0 is_stmt 1
	movl	$0, -48(%rbp)	#, in_p
	movq	$0, -16(%rbp)	#, high
	movq	-16(%rbp), %rax	# high, tmp117
	movq	%rax, -24(%rbp)	# tmp117, low
	jmp	.L695	#
.L696:
	.loc 1 3807 0
	cmpl	$0, -28(%rbp)	#, subset
	je	.L697	#,
	.loc 1 3807 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, lowequal
	je	.L697	#,
	.loc 1 3809 0 is_stmt 1
	movl	$1, -48(%rbp)	#, in_p
	movq	-96(%rbp), %rax	# high0, tmp118
	movq	%rax, -16(%rbp)	# tmp118, high
	.loc 1 3810 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21012
	movq	32(%rbp), %rax	# high1, tmp119
	movl	$0, %r9d	#,
	movq	%rdx, %r8	# D.21012,
	movl	$0, %ecx	#,
	movq	%rax, %rdx	# tmp119,
	movl	$0, %esi	#,
	movl	$59, %edi	#,
	call	range_binop	#
	movq	%rax, -24(%rbp)	# tmp120, low
	jmp	.L695	#
.L697:
	.loc 1 3813 0
	cmpl	$0, -28(%rbp)	#, subset
	je	.L698	#,
	.loc 1 3813 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, highequal
	je	.L699	#,
.L698:
	.loc 1 3815 0 is_stmt 1
	movl	$1, -48(%rbp)	#, in_p
	movq	-88(%rbp), %rax	# low0, tmp121
	movq	%rax, -24(%rbp)	# tmp121, low
	.loc 1 3816 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21012
	movq	24(%rbp), %rax	# low1, tmp122
	movl	$0, %r9d	#,
	movq	%rdx, %r8	# D.21012,
	movl	$0, %ecx	#,
	movq	%rax, %rdx	# tmp122,
	movl	$0, %esi	#,
	movl	$60, %edi	#,
	call	range_binop	#
	movq	%rax, -16(%rbp)	# tmp123, high
	jmp	.L695	#
.L699:
	.loc 1 3820 0
	movl	$0, %eax	#, D.21011
	jmp	.L700	#
.L695:
	.loc 1 3803 0
	jmp	.L692	#
.L693:
	.loc 1 3823 0
	cmpl	$0, -76(%rbp)	#, in0_p
	jne	.L701	#,
	.loc 1 3823 0 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, in1_p
	je	.L701	#,
	.loc 1 3829 0 is_stmt 1
	cmpl	$0, -32(%rbp)	#, no_overlap
	je	.L702	#,
	.loc 1 3830 0
	movl	$1, -48(%rbp)	#, in_p
	movq	24(%rbp), %rax	# low1, tmp124
	movq	%rax, -24(%rbp)	# tmp124, low
	movq	32(%rbp), %rax	# high1, tmp125
	movq	%rax, -16(%rbp)	# tmp125, high
	jmp	.L703	#
.L702:
	.loc 1 3831 0
	cmpl	$0, -28(%rbp)	#, subset
	jne	.L704	#,
	.loc 1 3831 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, highequal
	je	.L705	#,
.L704:
	.loc 1 3832 0 is_stmt 1
	movl	$0, -48(%rbp)	#, in_p
	movq	$0, -16(%rbp)	#, high
	movq	-16(%rbp), %rax	# high, tmp126
	movq	%rax, -24(%rbp)	# tmp126, low
	jmp	.L703	#
.L705:
	.loc 1 3835 0
	movl	$1, -48(%rbp)	#, in_p
	movq	32(%rbp), %rax	# high1, tmp127
	movq	%rax, -16(%rbp)	# tmp127, high
	.loc 1 3836 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21012
	movq	-96(%rbp), %rax	# high0, tmp128
	movl	$0, %r9d	#,
	movq	%rdx, %r8	# D.21012,
	movl	$1, %ecx	#,
	movq	%rax, %rdx	# tmp128,
	movl	$0, %esi	#,
	movl	$59, %edi	#,
	call	range_binop	#
	movq	%rax, -24(%rbp)	# tmp129, low
	.loc 1 3829 0
	jmp	.L692	#
.L703:
	jmp	.L692	#
.L701:
	.loc 1 3849 0
	cmpl	$0, -32(%rbp)	#, no_overlap
	je	.L706	#,
	.loc 1 3851 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21012
	movq	-96(%rbp), %rax	# high0, tmp130
	movl	$1, %r9d	#,
	movq	%rdx, %r8	# D.21012,
	movl	$1, %ecx	#,
	movq	%rax, %rdx	# tmp130,
	movl	$0, %esi	#,
	movl	$59, %edi	#,
	call	range_binop	#
	movq	%rax, %rdx	#, D.21012
	movq	integer_types+40(%rip), %rax	# integer_types, D.21012
	movq	24(%rbp), %rcx	# low1, tmp131
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp131,
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# D.21012,
	movl	$101, %edi	#,
	call	range_binop	#
	movq	%rax, %rdi	# D.21012,
	call	integer_onep	#
	testl	%eax, %eax	# D.21011
	je	.L707	#,
	.loc 1 3856 0
	movl	$0, -48(%rbp)	#, in_p
	movq	-88(%rbp), %rax	# low0, tmp132
	movq	%rax, -24(%rbp)	# tmp132, low
	movq	32(%rbp), %rax	# high1, tmp133
	movq	%rax, -16(%rbp)	# tmp133, high
	jmp	.L692	#
.L707:
	.loc 1 3858 0
	movl	$0, %eax	#, D.21011
	jmp	.L700	#
.L706:
	.loc 1 3860 0
	cmpl	$0, -28(%rbp)	#, subset
	je	.L708	#,
	.loc 1 3861 0
	movl	$0, -48(%rbp)	#, in_p
	movq	-88(%rbp), %rax	# low0, tmp134
	movq	%rax, -24(%rbp)	# tmp134, low
	movq	-96(%rbp), %rax	# high0, tmp135
	movq	%rax, -16(%rbp)	# tmp135, high
	jmp	.L692	#
.L708:
	.loc 1 3863 0
	movl	$0, -48(%rbp)	#, in_p
	movq	-88(%rbp), %rax	# low0, tmp136
	movq	%rax, -24(%rbp)	# tmp136, low
	movq	32(%rbp), %rax	# high1, tmp137
	movq	%rax, -16(%rbp)	# tmp137, high
.L692:
	.loc 1 3866 0
	movq	-56(%rbp), %rax	# pin_p, tmp138
	movl	-48(%rbp), %edx	# in_p, tmp139
	movl	%edx, (%rax)	# tmp139, *pin_p_110(D)
	movq	-64(%rbp), %rax	# plow, tmp140
	movq	-24(%rbp), %rdx	# low, tmp141
	movq	%rdx, (%rax)	# tmp141, *plow_111(D)
	movq	-72(%rbp), %rax	# phigh, tmp142
	movq	-16(%rbp), %rdx	# high, tmp143
	movq	%rdx, (%rax)	# tmp143, *phigh_112(D)
	.loc 1 3867 0
	movl	$1, %eax	#, D.21011
.L700:
	.loc 1 3868 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	merge_ranges, .-merge_ranges
	.type	fold_range_test, @function
fold_range_test:
.LFB49:
	.loc 1 3876 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# exp, exp
	.loc 1 3877 0
	movq	-104(%rbp), %rax	# exp, tmp114
	movzbl	16(%rax), %eax	# exp_10(D)->common.code, D.21014
	.loc 1 3878 0
	cmpb	$92, %al	#, D.21014
	je	.L710	#,
	.loc 1 3878 0 is_stmt 0 discriminator 2
	movq	-104(%rbp), %rax	# exp, tmp115
	movzbl	16(%rax), %eax	# exp_10(D)->common.code, D.21014
	cmpb	$94, %al	#, D.21014
	jne	.L711	#,
.L710:
	.loc 1 3878 0 discriminator 1
	movl	$1, %eax	#, iftmp.278
	jmp	.L712	#
.L711:
	.loc 1 3878 0 discriminator 3
	movl	$0, %eax	#, iftmp.278
.L712:
	.loc 1 3877 0 is_stmt 1
	movl	%eax, -84(%rbp)	# iftmp.278, or_op
	.loc 1 3881 0
	movq	-104(%rbp), %rax	# exp, tmp116
	movq	32(%rax), %rax	# exp_10(D)->exp.operands, D.21015
	leaq	-56(%rbp), %rcx	#, tmp117
	leaq	-80(%rbp), %rdx	#, tmp118
	leaq	-96(%rbp), %rsi	#, tmp119
	movq	%rax, %rdi	# D.21015,
	call	make_range	#
	movq	%rax, -32(%rbp)	# tmp120, lhs
	.loc 1 3882 0
	movq	-104(%rbp), %rax	# exp, tmp121
	movq	40(%rax), %rax	# exp_10(D)->exp.operands, D.21015
	leaq	-48(%rbp), %rcx	#, tmp122
	leaq	-72(%rbp), %rdx	#, tmp123
	leaq	-92(%rbp), %rsi	#, tmp124
	movq	%rax, %rdi	# D.21015,
	call	make_range	#
	movq	%rax, -24(%rbp)	# tmp125, rhs
	.loc 1 3887 0
	cmpl	$0, -84(%rbp)	#, or_op
	je	.L713	#,
	.loc 1 3888 0
	movl	-96(%rbp), %eax	# in0_p, in0_p.279
	testl	%eax, %eax	# in0_p.279
	sete	%al	#, D.21016
	movzbl	%al, %eax	# D.21016, in0_p.280
	movl	%eax, -96(%rbp)	# in0_p.280, in0_p
	movl	-92(%rbp), %eax	# in1_p, in1_p.281
	testl	%eax, %eax	# in1_p.281
	sete	%al	#, D.21016
	movzbl	%al, %eax	# D.21016, in1_p.282
	movl	%eax, -92(%rbp)	# in1_p.282, in1_p
.L713:
	.loc 1 3894 0
	cmpq	$0, -32(%rbp)	#, lhs
	je	.L714	#,
	.loc 1 3894 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, rhs
	je	.L714	#,
	movq	-24(%rbp), %rcx	# rhs, tmp126
	movq	-32(%rbp), %rax	# lhs, tmp127
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21017
	je	.L715	#,
.L714:
	.loc 1 3895 0 is_stmt 1
	movq	-48(%rbp), %r9	# high1, high1.283
	movq	-72(%rbp), %r8	# low1, low1.284
	movl	-92(%rbp), %edi	# in1_p, in1_p.285
	movq	-56(%rbp), %r11	# high0, high0.286
	movq	-80(%rbp), %r10	# low0, low0.287
	movl	-96(%rbp), %ecx	# in0_p, in0_p.288
	leaq	-40(%rbp), %rdx	#, tmp128
	leaq	-64(%rbp), %rsi	#, tmp129
	leaq	-88(%rbp), %rax	#, tmp130
	movq	%r9, 16(%rsp)	# high1.283,
	movq	%r8, 8(%rsp)	# low1.284,
	movl	%edi, (%rsp)	# in1_p.285,
	movq	%r11, %r9	# high0.286,
	movq	%r10, %r8	# low0.287,
	movq	%rax, %rdi	# tmp130,
	call	merge_ranges	#
	testl	%eax, %eax	# D.21017
	je	.L715	#,
	.loc 1 3897 0
	movq	-40(%rbp), %r8	# high, high.289
	movq	-64(%rbp), %rcx	# low, low.290
	movl	-88(%rbp), %edx	# in_p, in_p.291
	cmpq	$0, -32(%rbp)	#, lhs
	jne	.L716	#,
	.loc 1 3899 0
	cmpq	$0, -24(%rbp)	#, rhs
	jne	.L717	#,
	.loc 1 3899 0 is_stmt 0 discriminator 1
	movq	global_trees+88(%rip), %rax	# global_trees, iftmp.293
	jmp	.L719	#
.L717:
	.loc 1 3899 0 discriminator 2
	movq	-24(%rbp), %rax	# rhs, iftmp.293
	jmp	.L719	#
.L716:
	.loc 1 3897 0 is_stmt 1 discriminator 1
	movq	-32(%rbp), %rax	# lhs, iftmp.292
.L719:
	.loc 1 3897 0 is_stmt 0 discriminator 2
	movq	-104(%rbp), %rsi	# exp, tmp131
	movq	8(%rsi), %rdi	# exp_10(D)->common.type, D.21015
	movq	%rax, %rsi	# iftmp.292,
	call	build_range_check	#
	movq	%rax, -16(%rbp)	# tmp132, tem
	cmpq	$0, -16(%rbp)	#, tem
	je	.L715	#,
	.loc 1 3901 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, or_op
	je	.L720	#,
	.loc 1 3901 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# tem, tmp133
	movq	%rax, %rdi	# tmp133,
	call	invert_truthvalue	#
	jmp	.L721	#
.L720:
	.loc 1 3901 0 discriminator 2
	movq	-16(%rbp), %rax	# tem, iftmp.294
.L721:
	.loc 1 3901 0 discriminator 3
	jmp	.L734	#
.L715:
	.loc 1 3906 0 is_stmt 1
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.295
	cmpl	$1, %eax	#, ix86_branch_cost.295
	jle	.L723	#,
	.loc 1 3907 0
	cmpq	$0, -32(%rbp)	#, lhs
	je	.L723	#,
	.loc 1 3907 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, rhs
	je	.L723	#,
	.loc 1 3908 0 is_stmt 1
	movq	-104(%rbp), %rax	# exp, tmp134
	movzbl	16(%rax), %eax	# exp_10(D)->common.code, D.21014
	cmpb	$91, %al	#, D.21014
	je	.L724	#,
	.loc 1 3909 0
	movq	-104(%rbp), %rax	# exp, tmp135
	movzbl	16(%rax), %eax	# exp_10(D)->common.code, D.21014
	cmpb	$92, %al	#, D.21014
	jne	.L723	#,
.L724:
	.loc 1 3910 0
	movq	-24(%rbp), %rcx	# rhs, tmp136
	movq	-32(%rbp), %rax	# lhs, tmp137
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21017
	je	.L723	#,
	.loc 1 3915 0
	movq	-32(%rbp), %rax	# lhs, tmp138
	movq	%rax, %rdi	# tmp138,
	call	simple_operand_p	#
	testl	%eax, %eax	# D.21017
	je	.L725	#,
	.loc 1 3916 0
	movq	-104(%rbp), %rax	# exp, tmp139
	movq	40(%rax), %rcx	# exp_10(D)->exp.operands, D.21015
	movq	-104(%rbp), %rax	# exp, tmp140
	movq	32(%rax), %rdx	# exp_10(D)->exp.operands, D.21015
	movq	-104(%rbp), %rax	# exp, tmp141
	movq	8(%rax), %rsi	# exp_10(D)->common.type, D.21015
	movq	-104(%rbp), %rax	# exp, tmp142
	movzbl	16(%rax), %eax	# exp_10(D)->common.code, D.21014
	cmpb	$91, %al	#, D.21014
	jne	.L726	#,
	.loc 1 3916 0 is_stmt 0 discriminator 1
	movl	$93, %eax	#, iftmp.296
	jmp	.L727	#
.L726:
	.loc 1 3916 0 discriminator 2
	movl	$94, %eax	#, iftmp.296
.L727:
	.loc 1 3916 0 discriminator 3
	movl	%eax, %edi	# iftmp.296,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L734	#
.L725:
	.loc 1 3921 0 is_stmt 1
	call	global_bindings_p	#
	testl	%eax, %eax	# D.21017
	jne	.L723	#,
	.loc 1 3922 0
	movq	-32(%rbp), %rax	# lhs, tmp143
	movq	%rax, %rdi	# tmp143,
	call	contains_placeholder_p	#
	testl	%eax, %eax	# D.21017
	jne	.L723	#,
.LBB18:
	.loc 1 3924 0
	movq	-32(%rbp), %rax	# lhs, tmp144
	movq	%rax, %rdi	# tmp144,
	call	save_expr	#
	movq	%rax, -8(%rbp)	# tmp145, common
	.loc 1 3926 0
	movq	-56(%rbp), %r8	# high0, high0.297
	movq	-80(%rbp), %rdx	# low0, low0.298
	cmpl	$0, -84(%rbp)	#, or_op
	je	.L728	#,
	.loc 1 3927 0
	movl	-96(%rbp), %eax	# in0_p, in0_p.300
	testl	%eax, %eax	# in0_p.300
	sete	%al	#, D.21016
	.loc 1 3926 0
	movzbl	%al, %eax	# D.21016, iftmp.299
	jmp	.L729	#
.L728:
	.loc 1 3926 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# in0_p, iftmp.299
.L729:
	.loc 1 3926 0 discriminator 2
	movq	-104(%rbp), %rcx	# exp, tmp146
	movq	8(%rcx), %rdi	# exp_10(D)->common.type, D.21015
	movq	-8(%rbp), %rsi	# common, tmp147
	movq	%rdx, %rcx	# low0.298,
	movl	%eax, %edx	# iftmp.299,
	call	build_range_check	#
	movq	%rax, -32(%rbp)	# tmp148, lhs
	cmpq	$0, -32(%rbp)	#, lhs
	je	.L723	#,
	.loc 1 3929 0 is_stmt 1
	movq	-48(%rbp), %r8	# high1, high1.301
	movq	-72(%rbp), %rdx	# low1, low1.302
	cmpl	$0, -84(%rbp)	#, or_op
	je	.L730	#,
	.loc 1 3930 0
	movl	-92(%rbp), %eax	# in1_p, in1_p.304
	testl	%eax, %eax	# in1_p.304
	sete	%al	#, D.21016
	.loc 1 3929 0
	movzbl	%al, %eax	# D.21016, iftmp.303
	jmp	.L731	#
.L730:
	.loc 1 3929 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# in1_p, iftmp.303
.L731:
	.loc 1 3929 0 discriminator 2
	movq	-104(%rbp), %rcx	# exp, tmp149
	movq	8(%rcx), %rdi	# exp_10(D)->common.type, D.21015
	movq	-8(%rbp), %rsi	# common, tmp150
	movq	%rdx, %rcx	# low1.302,
	movl	%eax, %edx	# iftmp.303,
	call	build_range_check	#
	movq	%rax, -24(%rbp)	# tmp151, rhs
	cmpq	$0, -24(%rbp)	#, rhs
	je	.L723	#,
	.loc 1 3932 0 is_stmt 1
	movq	-104(%rbp), %rax	# exp, tmp152
	movq	8(%rax), %rsi	# exp_10(D)->common.type, D.21015
	movq	-104(%rbp), %rax	# exp, tmp153
	movzbl	16(%rax), %eax	# exp_10(D)->common.code, D.21014
	cmpb	$91, %al	#, D.21014
	jne	.L732	#,
	.loc 1 3932 0 is_stmt 0 discriminator 1
	movl	$93, %eax	#, iftmp.305
	jmp	.L733	#
.L732:
	.loc 1 3932 0 discriminator 2
	movl	$94, %eax	#, iftmp.305
.L733:
	.loc 1 3932 0 discriminator 3
	movq	-24(%rbp), %rcx	# rhs, tmp154
	movq	-32(%rbp), %rdx	# lhs, tmp155
	movl	%eax, %edi	# iftmp.305,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L734	#
.L723:
.LBE18:
	.loc 1 3938 0 is_stmt 1
	movl	$0, %eax	#, D.21013
.L734:
	.loc 1 3939 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	fold_range_test, .-fold_range_test
	.type	unextend, @function
unextend:
.LFB50:
	.loc 1 3952 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	movl	%esi, -44(%rbp)	# p, p
	movl	%edx, -48(%rbp)	# unsignedp, unsignedp
	movq	%rcx, -56(%rbp)	# mask, mask
	.loc 1 3953 0
	movq	-40(%rbp), %rax	# c, tmp83
	movq	8(%rax), %rax	# c_5(D)->common.type, tmp84
	movq	%rax, -8(%rbp)	# tmp84, type
	.loc 1 3954 0
	movq	-8(%rbp), %rax	# type, tmp85
	movzbl	61(%rax), %eax	# *type_6, tmp88
	shrb	%al	# D.21019
	movzbl	%al, %eax	# D.21019, D.21020
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.21021
	movzwl	%ax, %eax	# D.21021, tmp90
	movl	%eax, -20(%rbp)	# tmp90, modesize
	.loc 1 3957 0
	movl	-44(%rbp), %eax	# p, tmp91
	cmpl	-20(%rbp), %eax	# modesize, tmp91
	je	.L736	#,
	.loc 1 3957 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, unsignedp
	je	.L737	#,
.L736:
	.loc 1 3958 0 is_stmt 1
	movq	-40(%rbp), %rax	# c, D.21018
	jmp	.L738	#
.L737:
	.loc 1 3963 0
	movl	-44(%rbp), %eax	# p, tmp92
	subl	$1, %eax	#, D.21020
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21022,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21023
	movq	-40(%rbp), %rax	# c, tmp93
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp93,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, -16(%rbp)	# tmp94, temp
	.loc 1 3964 0
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21023
	movq	-16(%rbp), %rax	# temp, tmp95
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp95,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rax, -16(%rbp)	# tmp96, temp
	.loc 1 3972 0
	movq	-8(%rbp), %rax	# type, tmp97
	movzbl	17(%rax), %eax	# *type_6, D.21024
	andl	$32, %eax	#, D.21024
	testb	%al, %al	# D.21024
	je	.L739	#,
	.loc 1 3973 0
	movq	-8(%rbp), %rax	# type, tmp98
	movq	%rax, %rdi	# tmp98,
	call	signed_type	#
	movq	-16(%rbp), %rdx	# temp, tmp99
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# D.21023,
	call	convert	#
	movq	%rax, -16(%rbp)	# tmp100, temp
.L739:
	.loc 1 3975 0
	movl	-20(%rbp), %eax	# modesize, tmp101
	subl	$1, %eax	#, D.21020
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21022,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21023
	movq	-16(%rbp), %rax	# temp, tmp102
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp102,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, -16(%rbp)	# tmp103, temp
	.loc 1 3976 0
	movl	-44(%rbp), %eax	# p, tmp104
	movl	-20(%rbp), %edx	# modesize, tmp105
	subl	%eax, %edx	# tmp104, D.21020
	movl	%edx, %eax	# D.21020, D.21020
	subl	$1, %eax	#, D.21020
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21022,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21023
	movq	-16(%rbp), %rax	# temp, tmp106
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp106,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, -16(%rbp)	# tmp107, temp
	.loc 1 3977 0
	cmpq	$0, -56(%rbp)	#, mask
	je	.L740	#,
	.loc 1 3978 0
	movq	-40(%rbp), %rax	# c, tmp108
	movq	8(%rax), %rax	# c_5(D)->common.type, D.21023
	movq	-56(%rbp), %rdx	# mask, tmp109
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# D.21023,
	call	convert	#
	movq	%rax, %rdx	#, D.21023
	movq	-16(%rbp), %rax	# temp, tmp110
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp110,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rax, -16(%rbp)	# tmp111, temp
.L740:
	.loc 1 3980 0
	movq	-8(%rbp), %rax	# type, tmp112
	movzbl	17(%rax), %eax	# *type_6, D.21024
	andl	$32, %eax	#, D.21024
	testb	%al, %al	# D.21024
	je	.L741	#,
	.loc 1 3981 0
	movq	-16(%rbp), %rdx	# temp, tmp113
	movq	-8(%rbp), %rax	# type, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	convert	#
	movq	%rax, -16(%rbp)	# tmp115, temp
.L741:
	.loc 1 3983 0
	movq	-16(%rbp), %rdx	# temp, tmp116
	movq	-40(%rbp), %rax	# c, tmp117
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp117,
	movl	$87, %edi	#,
	call	const_binop	#
	movq	%rax, %rdx	#, D.21023
	movq	-8(%rbp), %rax	# type, tmp118
	movq	%rdx, %rsi	# D.21023,
	movq	%rax, %rdi	# tmp118,
	call	convert	#
.L738:
	.loc 1 3984 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	unextend, .-unextend
	.section	.rodata
.LC2:
	.string	"comparison is always %d"
	.align 8
.LC3:
	.string	"`or' of unmatched not-equal tests is always 1"
	.align 8
.LC4:
	.string	"`and' of mutually exclusive equal-tests is always 0"
	.text
	.type	fold_truthop, @function
fold_truthop:
.LFB51:
	.loc 1 4014 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$424, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -388(%rbp)	# code, code
	movq	%rsi, -400(%rbp)	# truth_type, truth_type
	movq	%rdx, -408(%rbp)	# lhs, lhs
	movq	%rcx, -416(%rbp)	# rhs, rhs
	.loc 1 4046 0
	movq	-408(%rbp), %rax	# lhs, tmp313
	movzbl	17(%rax), %eax	# *lhs_27(D), D.21026
	andl	$1, %eax	#, D.21026
	testb	%al, %al	# D.21026
	jne	.L743	#,
	.loc 1 4046 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# rhs, tmp314
	movzbl	17(%rax), %eax	# *rhs_30(D), D.21026
	andl	$1, %eax	#, D.21026
	testb	%al, %al	# D.21026
	je	.L744	#,
.L743:
	.loc 1 4047 0 is_stmt 1
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L744:
	.loc 1 4049 0
	movq	-408(%rbp), %rax	# lhs, tmp315
	movzbl	16(%rax), %eax	# lhs_27(D)->common.code, D.21026
	movzbl	%al, %eax	# D.21026, tmp316
	movl	%eax, -348(%rbp)	# tmp316, lcode
	.loc 1 4050 0
	movq	-416(%rbp), %rax	# rhs, tmp317
	movzbl	16(%rax), %eax	# rhs_30(D)->common.code, D.21026
	movzbl	%al, %eax	# D.21026, tmp318
	movl	%eax, -344(%rbp)	# tmp318, rcode
	.loc 1 4052 0
	cmpl	$88, -348(%rbp)	#, lcode
	jne	.L746	#,
	.loc 1 4052 0 is_stmt 0 discriminator 1
	movq	-408(%rbp), %rax	# lhs, tmp319
	movq	40(%rax), %rax	# lhs_27(D)->exp.operands, D.21027
	movq	%rax, %rdi	# D.21027,
	call	integer_onep	#
	testl	%eax, %eax	# D.21028
	je	.L746	#,
	.loc 1 4053 0 is_stmt 1
	movl	$102, -348(%rbp)	#, lcode
	movq	global_trees+88(%rip), %rcx	# global_trees, D.21027
	movq	-408(%rbp), %rdx	# lhs, tmp320
	movq	-400(%rbp), %rax	# truth_type, tmp321
	movq	%rax, %rsi	# tmp321,
	movl	$102, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -408(%rbp)	# tmp322, lhs
.L746:
	.loc 1 4055 0
	cmpl	$88, -344(%rbp)	#, rcode
	jne	.L747	#,
	.loc 1 4055 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# rhs, tmp323
	movq	40(%rax), %rax	# rhs_30(D)->exp.operands, D.21027
	movq	%rax, %rdi	# D.21027,
	call	integer_onep	#
	testl	%eax, %eax	# D.21028
	je	.L747	#,
	.loc 1 4056 0 is_stmt 1
	movl	$102, -344(%rbp)	#, rcode
	movq	global_trees+88(%rip), %rcx	# global_trees, D.21027
	movq	-416(%rbp), %rdx	# rhs, tmp324
	movq	-400(%rbp), %rax	# truth_type, tmp325
	movq	%rax, %rsi	# tmp325,
	movl	$102, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -416(%rbp)	# tmp326, rhs
.L747:
	.loc 1 4058 0
	movl	-348(%rbp), %eax	# lcode, lcode.306
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21029
	cmpb	$60, %al	#, D.21029
	jne	.L748	#,
	.loc 1 4058 0 is_stmt 0 discriminator 1
	movl	-344(%rbp), %eax	# rcode, rcode.307
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21029
	cmpb	$60, %al	#, D.21029
	je	.L749	#,
.L748:
	.loc 1 4059 0 is_stmt 1
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L749:
	.loc 1 4061 0
	cmpl	$93, -388(%rbp)	#, code
	je	.L750	#,
	.loc 1 4061 0 is_stmt 0 discriminator 2
	cmpl	$91, -388(%rbp)	#, code
	jne	.L751	#,
.L750:
	.loc 1 4061 0 discriminator 1
	movl	$93, %eax	#, iftmp.308
	jmp	.L752	#
.L751:
	movl	$94, %eax	#, iftmp.308
.L752:
	.loc 1 4061 0 discriminator 3
	movl	%eax, -388(%rbp)	# iftmp.308, code
	.loc 1 4064 0 is_stmt 1 discriminator 3
	movq	-408(%rbp), %rax	# lhs, tmp329
	movq	32(%rax), %rax	# lhs_1->exp.operands, tmp330
	movq	%rax, -160(%rbp)	# tmp330, ll_arg
	.loc 1 4065 0 discriminator 3
	movq	-408(%rbp), %rax	# lhs, tmp331
	movq	40(%rax), %rax	# lhs_1->exp.operands, tmp332
	movq	%rax, -152(%rbp)	# tmp332, lr_arg
	.loc 1 4066 0 discriminator 3
	movq	-416(%rbp), %rax	# rhs, tmp333
	movq	32(%rax), %rax	# rhs_5->exp.operands, tmp334
	movq	%rax, -144(%rbp)	# tmp334, rl_arg
	.loc 1 4067 0 discriminator 3
	movq	-416(%rbp), %rax	# rhs, tmp335
	movq	40(%rax), %rax	# rhs_5->exp.operands, tmp336
	movq	%rax, -136(%rbp)	# tmp336, rr_arg
	.loc 1 4075 0 discriminator 3
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.309
	cmpl	$1, %eax	#, ix86_branch_cost.309
	jle	.L753	#,
	.loc 1 4076 0
	movq	-144(%rbp), %rax	# rl_arg, tmp337
	movq	8(%rax), %rax	# rl_arg_58->common.type, D.21027
	movzbl	16(%rax), %eax	# _61->common.code, D.21026
	cmpb	$7, %al	#, D.21026
	je	.L753	#,
	.loc 1 4076 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# rl_arg, tmp338
	movq	8(%rax), %rax	# rl_arg_58->common.type, D.21027
	movzbl	16(%rax), %eax	# _63->common.code, D.21026
	cmpb	$8, %al	#, D.21026
	jne	.L754	#,
	movq	-144(%rbp), %rax	# rl_arg, tmp339
	movq	8(%rax), %rax	# rl_arg_58->common.type, D.21027
	movq	8(%rax), %rax	# _65->common.type, D.21027
	movzbl	16(%rax), %eax	# _66->common.code, D.21026
	cmpb	$7, %al	#, D.21026
	je	.L753	#,
.L754:
	.loc 1 4077 0 is_stmt 1
	movq	-144(%rbp), %rax	# rl_arg, tmp340
	movq	%rax, %rdi	# tmp340,
	call	simple_operand_p	#
	testl	%eax, %eax	# D.21028
	je	.L753	#,
	.loc 1 4078 0
	movq	-136(%rbp), %rax	# rr_arg, tmp341
	movq	%rax, %rdi	# tmp341,
	call	simple_operand_p	#
	testl	%eax, %eax	# D.21028
	je	.L753	#,
	.loc 1 4079 0
	movq	-416(%rbp), %rcx	# rhs, tmp342
	movq	-408(%rbp), %rdx	# lhs, tmp343
	movq	-400(%rbp), %rsi	# truth_type, tmp344
	movl	-388(%rbp), %eax	# code, tmp345
	movl	%eax, %edi	# tmp345,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L803	#
.L753:
	.loc 1 4084 0
	cmpl	$101, -348(%rbp)	#, lcode
	je	.L755	#,
	.loc 1 4084 0 is_stmt 0 discriminator 1
	cmpl	$102, -348(%rbp)	#, lcode
	jne	.L756	#,
.L755:
	.loc 1 4085 0 is_stmt 1
	cmpl	$101, -344(%rbp)	#, rcode
	je	.L757	#,
	.loc 1 4085 0 is_stmt 0 discriminator 1
	cmpl	$102, -344(%rbp)	#, rcode
	je	.L757	#,
.L756:
	.loc 1 4086 0 is_stmt 1
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L757:
	.loc 1 4088 0
	movl	$0, -352(%rbp)	#, volatilep
	.loc 1 4089 0
	leaq	-352(%rbp), %r9	#, tmp346
	leaq	-384(%rbp), %r8	#, tmp347
	leaq	-368(%rbp), %rcx	#, tmp348
	leaq	-312(%rbp), %rdx	#, tmp349
	leaq	-320(%rbp), %rsi	#, tmp350
	movq	-160(%rbp), %rax	# ll_arg, tmp351
	leaq	-224(%rbp), %rdi	#, tmp352
	movq	%rdi, 8(%rsp)	# tmp352,
	leaq	-256(%rbp), %rdi	#, tmp353
	movq	%rdi, (%rsp)	# tmp353,
	movq	%rax, %rdi	# tmp351,
	call	decode_field_reference	#
	movq	%rax, -128(%rbp)	# tmp354, ll_inner
	.loc 1 4093 0
	leaq	-352(%rbp), %r9	#, tmp355
	leaq	-380(%rbp), %r8	#, tmp356
	leaq	-364(%rbp), %rcx	#, tmp357
	leaq	-296(%rbp), %rdx	#, tmp358
	leaq	-304(%rbp), %rsi	#, tmp359
	movq	-152(%rbp), %rax	# lr_arg, tmp360
	leaq	-216(%rbp), %rdi	#, tmp361
	movq	%rdi, 8(%rsp)	# tmp361,
	leaq	-248(%rbp), %rdi	#, tmp362
	movq	%rdi, (%rsp)	# tmp362,
	movq	%rax, %rdi	# tmp360,
	call	decode_field_reference	#
	movq	%rax, -120(%rbp)	# tmp363, lr_inner
	.loc 1 4097 0
	leaq	-352(%rbp), %r9	#, tmp364
	leaq	-376(%rbp), %r8	#, tmp365
	leaq	-360(%rbp), %rcx	#, tmp366
	leaq	-280(%rbp), %rdx	#, tmp367
	leaq	-288(%rbp), %rsi	#, tmp368
	movq	-144(%rbp), %rax	# rl_arg, tmp369
	leaq	-208(%rbp), %rdi	#, tmp370
	movq	%rdi, 8(%rsp)	# tmp370,
	leaq	-240(%rbp), %rdi	#, tmp371
	movq	%rdi, (%rsp)	# tmp371,
	movq	%rax, %rdi	# tmp369,
	call	decode_field_reference	#
	movq	%rax, -112(%rbp)	# tmp372, rl_inner
	.loc 1 4101 0
	leaq	-352(%rbp), %r9	#, tmp373
	leaq	-372(%rbp), %r8	#, tmp374
	leaq	-356(%rbp), %rcx	#, tmp375
	leaq	-264(%rbp), %rdx	#, tmp376
	leaq	-272(%rbp), %rsi	#, tmp377
	movq	-136(%rbp), %rax	# rr_arg, tmp378
	leaq	-200(%rbp), %rdi	#, tmp379
	movq	%rdi, 8(%rsp)	# tmp379,
	leaq	-232(%rbp), %rdi	#, tmp380
	movq	%rdi, (%rsp)	# tmp380,
	movq	%rax, %rdi	# tmp378,
	call	decode_field_reference	#
	movq	%rax, -104(%rbp)	# tmp381, rr_inner
	.loc 1 4110 0
	movl	-352(%rbp), %eax	# volatilep, volatilep.310
	testl	%eax, %eax	# volatilep.310
	jne	.L758	#,
	.loc 1 4110 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, ll_inner
	je	.L758	#,
	cmpq	$0, -112(%rbp)	#, rl_inner
	je	.L758	#,
	.loc 1 4111 0 is_stmt 1
	movq	-112(%rbp), %rcx	# rl_inner, tmp382
	movq	-128(%rbp), %rax	# ll_inner, tmp383
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp382,
	movq	%rax, %rdi	# tmp383,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21028
	jne	.L759	#,
.L758:
	.loc 1 4112 0
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L759:
	.loc 1 4114 0
	movq	-152(%rbp), %rax	# lr_arg, tmp384
	movzbl	16(%rax), %eax	# lr_arg_57->common.code, D.21026
	cmpb	$25, %al	#, D.21026
	jne	.L760	#,
	.loc 1 4115 0
	movq	-136(%rbp), %rax	# rr_arg, tmp385
	movzbl	16(%rax), %eax	# rr_arg_59->common.code, D.21026
	cmpb	$25, %al	#, D.21026
	jne	.L760	#,
	.loc 1 4116 0
	movq	-152(%rbp), %rax	# lr_arg, tmp386
	movq	%rax, -192(%rbp)	# tmp386, l_const
	movq	-136(%rbp), %rax	# rr_arg, tmp387
	movq	%rax, -184(%rbp)	# tmp387, r_const
	jmp	.L761	#
.L760:
	.loc 1 4117 0
	cmpq	$0, -120(%rbp)	#, lr_inner
	je	.L762	#,
	.loc 1 4117 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, rr_inner
	je	.L762	#,
	.loc 1 4118 0 is_stmt 1
	movq	-104(%rbp), %rcx	# rr_inner, tmp388
	movq	-120(%rbp), %rax	# lr_inner, tmp389
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp388,
	movq	%rax, %rdi	# tmp389,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21028
	jne	.L763	#,
.L762:
	.loc 1 4119 0
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L763:
	.loc 1 4121 0
	movq	$0, -184(%rbp)	#, r_const
	movq	-184(%rbp), %rax	# r_const, tmp390
	movq	%rax, -192(%rbp)	# tmp390, l_const
.L761:
	.loc 1 4127 0
	cmpl	$93, -388(%rbp)	#, code
	jne	.L764	#,
	.loc 1 4127 0 is_stmt 0 discriminator 1
	movl	$101, %eax	#, iftmp.311
	jmp	.L765	#
.L764:
	.loc 1 4127 0 discriminator 2
	movl	$102, %eax	#, iftmp.311
.L765:
	.loc 1 4127 0 discriminator 3
	movl	%eax, -340(%rbp)	# iftmp.311, wanted_code
	.loc 1 4128 0 is_stmt 1 discriminator 3
	movl	-348(%rbp), %eax	# lcode, tmp391
	cmpl	-340(%rbp), %eax	# wanted_code, tmp391
	je	.L766	#,
	.loc 1 4130 0
	cmpq	$0, -192(%rbp)	#, l_const
	je	.L767	#,
	.loc 1 4130 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# l_const, tmp392
	movq	%rax, %rdi	# tmp392,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21028
	je	.L767	#,
	movq	-256(%rbp), %rax	# ll_mask, ll_mask.312
	movq	%rax, %rdi	# ll_mask.312,
	call	integer_pow2p	#
	testl	%eax, %eax	# D.21028
	je	.L767	#,
	.loc 1 4135 0 is_stmt 1
	movl	$1, -384(%rbp)	#, ll_unsignedp
	.loc 1 4136 0
	movq	-256(%rbp), %rax	# ll_mask, tmp393
	movq	%rax, -192(%rbp)	# tmp393, l_const
	jmp	.L766	#
.L767:
	.loc 1 4139 0
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L766:
	.loc 1 4143 0
	movl	-344(%rbp), %eax	# rcode, tmp394
	cmpl	-340(%rbp), %eax	# wanted_code, tmp394
	je	.L768	#,
	.loc 1 4145 0
	cmpq	$0, -184(%rbp)	#, r_const
	je	.L769	#,
	.loc 1 4145 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# r_const, tmp395
	movq	%rax, %rdi	# tmp395,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21028
	je	.L769	#,
	movq	-240(%rbp), %rax	# rl_mask, rl_mask.313
	movq	%rax, %rdi	# rl_mask.313,
	call	integer_pow2p	#
	testl	%eax, %eax	# D.21028
	je	.L769	#,
	.loc 1 4147 0 is_stmt 1
	movl	$1, -376(%rbp)	#, rl_unsignedp
	.loc 1 4148 0
	movq	-240(%rbp), %rax	# rl_mask, tmp396
	movq	%rax, -184(%rbp)	# tmp396, r_const
	jmp	.L768	#
.L769:
	.loc 1 4151 0
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L768:
	.loc 1 4157 0
	movq	-280(%rbp), %rdx	# rl_bitpos, rl_bitpos.314
	movq	-312(%rbp), %rax	# ll_bitpos, ll_bitpos.315
	cmpq	%rax, %rdx	# ll_bitpos.315, rl_bitpos.314
	cmovle	%rdx, %rax	# rl_bitpos.314,, D.21030
	movl	%eax, -336(%rbp)	# D.21030, first_bit
	.loc 1 4158 0
	movq	-280(%rbp), %rdx	# rl_bitpos, rl_bitpos.316
	movq	-288(%rbp), %rax	# rl_bitsize, rl_bitsize.317
	addq	%rax, %rdx	# rl_bitsize.317, D.21030
	movq	-312(%rbp), %rcx	# ll_bitpos, ll_bitpos.318
	movq	-320(%rbp), %rax	# ll_bitsize, ll_bitsize.319
	addq	%rcx, %rax	# ll_bitpos.318, D.21030
	cmpq	%rax, %rdx	# D.21030, D.21030
	cmovge	%rdx, %rax	# D.21030,, D.21030
	movl	%eax, -332(%rbp)	# D.21030, end_bit
	.loc 1 4159 0
	movl	-352(%rbp), %esi	# volatilep, volatilep.320
	movl	word_mode(%rip), %ecx	# word_mode, word_mode.321
	.loc 1 4160 0
	movq	-128(%rbp), %rax	# ll_inner, tmp397
	movq	8(%rax), %rax	# ll_inner_71->common.type, D.21027
	.loc 1 4159 0
	movl	64(%rax), %edx	# _112->type.align, D.21031
	movl	-336(%rbp), %eax	# first_bit, tmp398
	movl	-332(%rbp), %edi	# end_bit, tmp399
	subl	%eax, %edi	# tmp398, D.21028
	movl	-336(%rbp), %eax	# first_bit, tmp400
	movl	%esi, %r8d	# volatilep.320,
	movl	%eax, %esi	# tmp400,
	call	get_best_mode	#
	movl	%eax, -328(%rbp)	# tmp401, lnmode
	.loc 1 4162 0
	cmpl	$0, -328(%rbp)	#, lnmode
	jne	.L770	#,
	.loc 1 4163 0
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L770:
	.loc 1 4165 0
	movl	-328(%rbp), %eax	# lnmode, lnmode.322
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.21032
	movzwl	%ax, %eax	# D.21032, tmp403
	movq	%rax, -96(%rbp)	# tmp403, lnbitsize
	.loc 1 4166 0
	movl	-336(%rbp), %eax	# first_bit, tmp404
	cltq
	movq	-96(%rbp), %rdx	# lnbitsize, tmp405
	negq	%rdx	# D.21030
	andq	%rdx, %rax	# D.21030, tmp406
	movq	%rax, -88(%rbp)	# tmp406, lnbitpos
	.loc 1 4167 0
	movq	-96(%rbp), %rax	# lnbitsize, tmp407
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.21031,
	call	type_for_size	#
	movq	%rax, -80(%rbp)	# tmp408, lntype
	.loc 1 4168 0
	movq	-312(%rbp), %rax	# ll_bitpos, ll_bitpos.323
	subq	-88(%rbp), %rax	# lnbitpos, tmp410
	movq	%rax, -72(%rbp)	# tmp410, xll_bitpos
	movq	-280(%rbp), %rax	# rl_bitpos, rl_bitpos.324
	subq	-88(%rbp), %rax	# lnbitpos, tmp412
	movq	%rax, -64(%rbp)	# tmp412, xrl_bitpos
	.loc 1 4176 0
	movq	-72(%rbp), %rax	# xll_bitpos, tmp413
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp413,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.21027
	movq	-256(%rbp), %rdx	# ll_mask, ll_mask.327
	movq	-80(%rbp), %rax	# lntype, tmp414
	movq	%rdx, %rsi	# ll_mask.327,
	movq	%rax, %rdi	# tmp414,
	call	convert	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.21027,
	movq	%rax, %rsi	# D.21027,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, -256(%rbp)	# ll_mask.328, ll_mask
	.loc 1 4178 0
	movq	-64(%rbp), %rax	# xrl_bitpos, tmp415
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp415,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.21027
	movq	-240(%rbp), %rdx	# rl_mask, rl_mask.329
	movq	-80(%rbp), %rax	# lntype, tmp416
	movq	%rdx, %rsi	# rl_mask.329,
	movq	%rax, %rdi	# tmp416,
	call	convert	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.21027,
	movq	%rax, %rsi	# D.21027,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, -240(%rbp)	# rl_mask.330, rl_mask
	.loc 1 4181 0
	cmpq	$0, -192(%rbp)	#, l_const
	je	.L771	#,
	.loc 1 4183 0
	movq	-192(%rbp), %rdx	# l_const, tmp417
	movq	-80(%rbp), %rax	# lntype, tmp418
	movq	%rdx, %rsi	# tmp417,
	movq	%rax, %rdi	# tmp418,
	call	convert	#
	movq	%rax, -192(%rbp)	# tmp419, l_const
	.loc 1 4184 0
	movq	-224(%rbp), %rcx	# ll_and_mask, ll_and_mask.331
	movl	-384(%rbp), %edx	# ll_unsignedp, ll_unsignedp.332
	movq	-320(%rbp), %rax	# ll_bitsize, ll_bitsize.333
	movl	%eax, %esi	# ll_bitsize.333, D.21028
	movq	-192(%rbp), %rax	# l_const, tmp420
	movq	%rax, %rdi	# tmp420,
	call	unextend	#
	movq	%rax, -192(%rbp)	# tmp421, l_const
	.loc 1 4185 0
	movq	-72(%rbp), %rax	# xll_bitpos, tmp422
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp422,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21027
	movq	-192(%rbp), %rax	# l_const, tmp423
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp423,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, -192(%rbp)	# tmp424, l_const
	.loc 1 4186 0
	movq	-256(%rbp), %rdx	# ll_mask, ll_mask.334
	movq	-80(%rbp), %rax	# lntype, tmp425
	movq	%rax, %rsi	# tmp425,
	movl	$90, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21027,
	call	fold	#
	movq	%rax, %rdx	#, D.21027
	movq	-192(%rbp), %rax	# l_const, tmp426
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp426,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21027,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21028
	jne	.L771	#,
	.loc 1 4191 0
	cmpl	$102, -340(%rbp)	#, wanted_code
	sete	%al	#, D.21033
	movzbl	%al, %eax	# D.21033, D.21028
	movl	%eax, %esi	# D.21028,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4193 0
	cmpl	$102, -340(%rbp)	#, wanted_code
	jne	.L772	#,
	.loc 1 4193 0 is_stmt 0 discriminator 1
	movq	global_trees+96(%rip), %rax	# global_trees, iftmp.335
	jmp	.L773	#
.L772:
	.loc 1 4193 0 discriminator 2
	movq	global_trees+88(%rip), %rax	# global_trees, iftmp.335
.L773:
	.loc 1 4193 0 discriminator 3
	movq	-400(%rbp), %rdx	# truth_type, tmp427
	movq	%rax, %rsi	# iftmp.335,
	movq	%rdx, %rdi	# tmp427,
	call	convert	#
	jmp	.L803	#
.L771:
	.loc 1 4198 0 is_stmt 1
	cmpq	$0, -184(%rbp)	#, r_const
	je	.L774	#,
	.loc 1 4200 0
	movq	-184(%rbp), %rdx	# r_const, tmp428
	movq	-80(%rbp), %rax	# lntype, tmp429
	movq	%rdx, %rsi	# tmp428,
	movq	%rax, %rdi	# tmp429,
	call	convert	#
	movq	%rax, -184(%rbp)	# tmp430, r_const
	.loc 1 4201 0
	movq	-208(%rbp), %rcx	# rl_and_mask, rl_and_mask.336
	movl	-376(%rbp), %edx	# rl_unsignedp, rl_unsignedp.337
	movq	-288(%rbp), %rax	# rl_bitsize, rl_bitsize.338
	movl	%eax, %esi	# rl_bitsize.338, D.21028
	movq	-184(%rbp), %rax	# r_const, tmp431
	movq	%rax, %rdi	# tmp431,
	call	unextend	#
	movq	%rax, -184(%rbp)	# tmp432, r_const
	.loc 1 4202 0
	movq	-64(%rbp), %rax	# xrl_bitpos, tmp433
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp433,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21027
	movq	-184(%rbp), %rax	# r_const, tmp434
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp434,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, -184(%rbp)	# tmp435, r_const
	.loc 1 4203 0
	movq	-240(%rbp), %rdx	# rl_mask, rl_mask.339
	movq	-80(%rbp), %rax	# lntype, tmp436
	movq	%rax, %rsi	# tmp436,
	movl	$90, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21027,
	call	fold	#
	movq	%rax, %rdx	#, D.21027
	movq	-184(%rbp), %rax	# r_const, tmp437
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp437,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21027,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21028
	jne	.L774	#,
	.loc 1 4208 0
	cmpl	$102, -340(%rbp)	#, wanted_code
	sete	%al	#, D.21033
	movzbl	%al, %eax	# D.21033, D.21028
	movl	%eax, %esi	# D.21028,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4210 0
	cmpl	$102, -340(%rbp)	#, wanted_code
	jne	.L775	#,
	.loc 1 4210 0 is_stmt 0 discriminator 1
	movq	global_trees+96(%rip), %rax	# global_trees, iftmp.340
	jmp	.L776	#
.L775:
	.loc 1 4210 0 discriminator 2
	movq	global_trees+88(%rip), %rax	# global_trees, iftmp.340
.L776:
	.loc 1 4210 0 discriminator 3
	movq	-400(%rbp), %rdx	# truth_type, tmp438
	movq	%rax, %rsi	# iftmp.340,
	movq	%rdx, %rdi	# tmp438,
	call	convert	#
	jmp	.L803	#
.L774:
	.loc 1 4219 0 is_stmt 1
	cmpq	$0, -192(%rbp)	#, l_const
	jne	.L777	#,
	.loc 1 4221 0
	movq	-320(%rbp), %rdx	# ll_bitsize, ll_bitsize.341
	movq	-304(%rbp), %rax	# lr_bitsize, lr_bitsize.342
	cmpq	%rax, %rdx	# lr_bitsize.342, ll_bitsize.341
	jne	.L778	#,
	.loc 1 4221 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rdx	# rl_bitsize, rl_bitsize.343
	movq	-272(%rbp), %rax	# rr_bitsize, rr_bitsize.344
	cmpq	%rax, %rdx	# rr_bitsize.344, rl_bitsize.343
	jne	.L778	#,
	.loc 1 4222 0 is_stmt 1
	movl	-384(%rbp), %edx	# ll_unsignedp, ll_unsignedp.345
	movl	-380(%rbp), %eax	# lr_unsignedp, lr_unsignedp.346
	cmpl	%eax, %edx	# lr_unsignedp.346, ll_unsignedp.345
	jne	.L778	#,
	.loc 1 4222 0 is_stmt 0 discriminator 1
	movl	-376(%rbp), %edx	# rl_unsignedp, rl_unsignedp.347
	movl	-372(%rbp), %eax	# rr_unsignedp, rr_unsignedp.348
	cmpl	%eax, %edx	# rr_unsignedp.348, rl_unsignedp.347
	jne	.L778	#,
	.loc 1 4225 0 is_stmt 1
	movq	-312(%rbp), %rdx	# ll_bitpos, ll_bitpos.349
	movq	-280(%rbp), %rax	# rl_bitpos, rl_bitpos.350
	movq	%rdx, %rcx	# ll_bitpos.349, D.21030
	subq	%rax, %rcx	# rl_bitpos.350, D.21030
	movq	-296(%rbp), %rdx	# lr_bitpos, lr_bitpos.351
	movq	-264(%rbp), %rax	# rr_bitpos, rr_bitpos.352
	subq	%rax, %rdx	# rr_bitpos.352, D.21030
	movq	%rdx, %rax	# D.21030, D.21030
	cmpq	%rax, %rcx	# D.21030, D.21030
	je	.L779	#,
.L778:
	.loc 1 4226 0
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L779:
	.loc 1 4228 0
	movq	-264(%rbp), %rdx	# rr_bitpos, rr_bitpos.353
	movq	-296(%rbp), %rax	# lr_bitpos, lr_bitpos.354
	cmpq	%rax, %rdx	# lr_bitpos.354, rr_bitpos.353
	cmovle	%rdx, %rax	# rr_bitpos.353,, D.21030
	movl	%eax, -336(%rbp)	# D.21030, first_bit
	.loc 1 4229 0
	movq	-264(%rbp), %rdx	# rr_bitpos, rr_bitpos.355
	movq	-272(%rbp), %rax	# rr_bitsize, rr_bitsize.356
	addq	%rax, %rdx	# rr_bitsize.356, D.21030
	movq	-296(%rbp), %rcx	# lr_bitpos, lr_bitpos.357
	movq	-304(%rbp), %rax	# lr_bitsize, lr_bitsize.358
	addq	%rcx, %rax	# lr_bitpos.357, D.21030
	cmpq	%rax, %rdx	# D.21030, D.21030
	cmovge	%rdx, %rax	# D.21030,, D.21030
	movl	%eax, -332(%rbp)	# D.21030, end_bit
	.loc 1 4230 0
	movl	-352(%rbp), %esi	# volatilep, volatilep.359
	movl	word_mode(%rip), %ecx	# word_mode, word_mode.360
	.loc 1 4231 0
	movq	-120(%rbp), %rax	# lr_inner, tmp439
	movq	8(%rax), %rax	# lr_inner_72->common.type, D.21027
	.loc 1 4230 0
	movl	64(%rax), %edx	# _201->type.align, D.21031
	movl	-336(%rbp), %eax	# first_bit, tmp440
	movl	-332(%rbp), %edi	# end_bit, tmp441
	subl	%eax, %edi	# tmp440, D.21028
	movl	-336(%rbp), %eax	# first_bit, tmp442
	movl	%esi, %r8d	# volatilep.359,
	movl	%eax, %esi	# tmp442,
	call	get_best_mode	#
	movl	%eax, -324(%rbp)	# tmp443, rnmode
	.loc 1 4233 0
	cmpl	$0, -324(%rbp)	#, rnmode
	jne	.L780	#,
	.loc 1 4234 0
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L780:
	.loc 1 4236 0
	movl	-324(%rbp), %eax	# rnmode, rnmode.361
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.21032
	movzwl	%ax, %eax	# D.21032, tmp445
	movq	%rax, -56(%rbp)	# tmp445, rnbitsize
	.loc 1 4237 0
	movl	-336(%rbp), %eax	# first_bit, tmp446
	cltq
	movq	-56(%rbp), %rdx	# rnbitsize, tmp447
	negq	%rdx	# D.21030
	andq	%rdx, %rax	# D.21030, tmp448
	movq	%rax, -48(%rbp)	# tmp448, rnbitpos
	.loc 1 4238 0
	movq	-56(%rbp), %rax	# rnbitsize, tmp449
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.21031,
	call	type_for_size	#
	movq	%rax, -40(%rbp)	# tmp450, rntype
	.loc 1 4239 0
	movq	-296(%rbp), %rax	# lr_bitpos, lr_bitpos.362
	subq	-48(%rbp), %rax	# rnbitpos, tmp452
	movq	%rax, -32(%rbp)	# tmp452, xlr_bitpos
	movq	-264(%rbp), %rax	# rr_bitpos, rr_bitpos.363
	subq	-48(%rbp), %rax	# rnbitpos, tmp454
	movq	%rax, -24(%rbp)	# tmp454, xrr_bitpos
	.loc 1 4247 0
	movq	-32(%rbp), %rax	# xlr_bitpos, tmp455
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp455,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.21027
	movq	-248(%rbp), %rdx	# lr_mask, lr_mask.366
	movq	-40(%rbp), %rax	# rntype, tmp456
	movq	%rdx, %rsi	# lr_mask.366,
	movq	%rax, %rdi	# tmp456,
	call	convert	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.21027,
	movq	%rax, %rsi	# D.21027,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, -248(%rbp)	# lr_mask.367, lr_mask
	.loc 1 4249 0
	movq	-24(%rbp), %rax	# xrr_bitpos, tmp457
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp457,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.21027
	movq	-232(%rbp), %rdx	# rr_mask, rr_mask.368
	movq	-40(%rbp), %rax	# rntype, tmp458
	movq	%rdx, %rsi	# rr_mask.368,
	movq	%rax, %rdi	# tmp458,
	call	convert	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.21027,
	movq	%rax, %rsi	# D.21027,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, -232(%rbp)	# rr_mask.369, rr_mask
	.loc 1 4257 0
	movq	-240(%rbp), %rdx	# rl_mask, rl_mask.370
	movq	-256(%rbp), %rax	# ll_mask, ll_mask.371
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# ll_mask.371,
	movl	$86, %edi	#,
	call	const_binop	#
	movq	%rax, -256(%rbp)	# ll_mask.372, ll_mask
	.loc 1 4258 0
	movq	-232(%rbp), %rdx	# rr_mask, rr_mask.373
	movq	-248(%rbp), %rax	# lr_mask, lr_mask.374
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# lr_mask.374,
	movl	$86, %edi	#,
	call	const_binop	#
	movq	%rax, -248(%rbp)	# lr_mask.375, lr_mask
	.loc 1 4259 0
	movq	-96(%rbp), %rax	# lnbitsize, tmp459
	cmpq	-56(%rbp), %rax	# rnbitsize, tmp459
	jne	.L781	#,
	.loc 1 4259 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# xll_bitpos, tmp460
	cmpq	-32(%rbp), %rax	# xlr_bitpos, tmp460
	jne	.L781	#,
	.loc 1 4262 0 is_stmt 1
	movl	-384(%rbp), %eax	# ll_unsignedp, ll_unsignedp.377
	.loc 1 4261 0
	testl	%eax, %eax	# ll_unsignedp.377
	jne	.L782	#,
	.loc 1 4262 0 discriminator 2
	movl	-376(%rbp), %eax	# rl_unsignedp, rl_unsignedp.378
	.loc 1 4261 0 discriminator 2
	testl	%eax, %eax	# rl_unsignedp.378
	je	.L783	#,
.L782:
	.loc 1 4261 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.376
	jmp	.L784	#
.L783:
	.loc 1 4261 0 discriminator 3
	movl	$0, %eax	#, iftmp.376
.L784:
	.loc 1 4261 0 discriminator 4
	movq	-88(%rbp), %rdx	# lnbitpos, tmp461
	movl	%edx, %ecx	# tmp461, D.21028
	movq	-96(%rbp), %rdx	# lnbitsize, tmp462
	movq	-80(%rbp), %rsi	# lntype, tmp463
	movq	-128(%rbp), %rdi	# ll_inner, tmp464
	movl	%eax, %r8d	# iftmp.376,
	call	make_bit_field_ref	#
	movq	%rax, -408(%rbp)	# tmp465, lhs
	.loc 1 4263 0 is_stmt 1 discriminator 4
	movq	-96(%rbp), %rax	# lnbitsize, tmp466
	movl	%eax, %edx	# tmp466, D.21028
	movq	-256(%rbp), %rax	# ll_mask, ll_mask.379
	movl	%edx, %esi	# D.21028,
	movq	%rax, %rdi	# ll_mask.379,
	call	all_ones_mask_p	#
	testl	%eax, %eax	# D.21028
	jne	.L785	#,
	.loc 1 4264 0
	movq	-256(%rbp), %rcx	# ll_mask, ll_mask.380
	movq	-408(%rbp), %rdx	# lhs, tmp467
	movq	-80(%rbp), %rax	# lntype, tmp468
	movq	%rax, %rsi	# tmp468,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -408(%rbp)	# tmp469, lhs
.L785:
	.loc 1 4267 0
	movl	-380(%rbp), %eax	# lr_unsignedp, lr_unsignedp.382
	.loc 1 4266 0
	testl	%eax, %eax	# lr_unsignedp.382
	jne	.L786	#,
	.loc 1 4267 0 discriminator 2
	movl	-372(%rbp), %eax	# rr_unsignedp, rr_unsignedp.383
	.loc 1 4266 0 discriminator 2
	testl	%eax, %eax	# rr_unsignedp.383
	je	.L787	#,
.L786:
	.loc 1 4266 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.381
	jmp	.L788	#
.L787:
	.loc 1 4266 0 discriminator 3
	movl	$0, %eax	#, iftmp.381
.L788:
	.loc 1 4266 0 discriminator 4
	movq	-48(%rbp), %rdx	# rnbitpos, tmp470
	movl	%edx, %ecx	# tmp470, D.21028
	movq	-56(%rbp), %rdx	# rnbitsize, tmp471
	movq	-40(%rbp), %rsi	# rntype, tmp472
	movq	-120(%rbp), %rdi	# lr_inner, tmp473
	movl	%eax, %r8d	# iftmp.381,
	call	make_bit_field_ref	#
	movq	%rax, -416(%rbp)	# tmp474, rhs
	.loc 1 4268 0 is_stmt 1 discriminator 4
	movq	-56(%rbp), %rax	# rnbitsize, tmp475
	movl	%eax, %edx	# tmp475, D.21028
	movq	-248(%rbp), %rax	# lr_mask, lr_mask.384
	movl	%edx, %esi	# D.21028,
	movq	%rax, %rdi	# lr_mask.384,
	call	all_ones_mask_p	#
	testl	%eax, %eax	# D.21028
	jne	.L789	#,
	.loc 1 4269 0
	movq	-248(%rbp), %rcx	# lr_mask, lr_mask.385
	movq	-416(%rbp), %rdx	# rhs, tmp476
	movq	-40(%rbp), %rax	# rntype, tmp477
	movq	%rax, %rsi	# tmp477,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -416(%rbp)	# tmp478, rhs
.L789:
	.loc 1 4271 0
	movq	-416(%rbp), %rcx	# rhs, tmp479
	movq	-408(%rbp), %rdx	# lhs, tmp480
	movq	-400(%rbp), %rsi	# truth_type, tmp481
	movl	-340(%rbp), %eax	# wanted_code, tmp482
	movl	%eax, %edi	# tmp482,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L803	#
.L781:
	.loc 1 4281 0
	movq	-320(%rbp), %rdx	# ll_bitsize, ll_bitsize.386
	movq	-312(%rbp), %rax	# ll_bitpos, ll_bitpos.387
	addq	%rax, %rdx	# ll_bitpos.387, D.21030
	movq	-280(%rbp), %rax	# rl_bitpos, rl_bitpos.388
	cmpq	%rax, %rdx	# rl_bitpos.388, D.21030
	jne	.L790	#,
	.loc 1 4282 0
	movq	-304(%rbp), %rdx	# lr_bitsize, lr_bitsize.389
	movq	-296(%rbp), %rax	# lr_bitpos, lr_bitpos.390
	addq	%rax, %rdx	# lr_bitpos.390, D.21030
	movq	-264(%rbp), %rax	# rr_bitpos, rr_bitpos.391
	cmpq	%rax, %rdx	# rr_bitpos.391, D.21030
	je	.L791	#,
.L790:
	.loc 1 4283 0
	movq	-280(%rbp), %rdx	# rl_bitpos, rl_bitpos.392
	movq	-288(%rbp), %rax	# rl_bitsize, rl_bitsize.393
	addq	%rax, %rdx	# rl_bitsize.393, D.21030
	movq	-312(%rbp), %rax	# ll_bitpos, ll_bitpos.394
	cmpq	%rax, %rdx	# ll_bitpos.394, D.21030
	jne	.L792	#,
	.loc 1 4284 0
	movq	-264(%rbp), %rdx	# rr_bitpos, rr_bitpos.395
	movq	-272(%rbp), %rax	# rr_bitsize, rr_bitsize.396
	addq	%rax, %rdx	# rr_bitsize.396, D.21030
	movq	-296(%rbp), %rax	# lr_bitpos, lr_bitpos.397
	cmpq	%rax, %rdx	# lr_bitpos.397, D.21030
	jne	.L792	#,
.L791:
.LBB19:
	.loc 1 4288 0
	movl	-384(%rbp), %edi	# ll_unsignedp, ll_unsignedp.398
	.loc 1 4289 0
	movq	-280(%rbp), %rdx	# rl_bitpos, rl_bitpos.399
	movq	-312(%rbp), %rax	# ll_bitpos, ll_bitpos.400
	cmpq	%rax, %rdx	# ll_bitpos.400, rl_bitpos.399
	cmovle	%rdx, %rax	# rl_bitpos.399,, D.21030
	.loc 1 4288 0
	movl	%eax, %ecx	# D.21030, D.21028
	movq	-320(%rbp), %rax	# ll_bitsize, ll_bitsize.401
	movl	%eax, %edx	# ll_bitsize.401, D.21034
	movq	-288(%rbp), %rax	# rl_bitsize, rl_bitsize.402
	addl	%edx, %eax	# D.21034, D.21034
	movl	%eax, %edx	# D.21034, D.21028
	movq	-80(%rbp), %rsi	# lntype, tmp483
	movq	-128(%rbp), %rax	# ll_inner, tmp484
	movl	%edi, %r8d	# ll_unsignedp.398,
	movq	%rax, %rdi	# tmp484,
	call	make_bit_field_ref	#
	movq	%rax, -408(%rbp)	# tmp485, lhs
	.loc 1 4290 0
	movl	-380(%rbp), %edi	# lr_unsignedp, lr_unsignedp.403
	.loc 1 4291 0
	movq	-264(%rbp), %rdx	# rr_bitpos, rr_bitpos.404
	movq	-296(%rbp), %rax	# lr_bitpos, lr_bitpos.405
	cmpq	%rax, %rdx	# lr_bitpos.405, rr_bitpos.404
	cmovle	%rdx, %rax	# rr_bitpos.404,, D.21030
	.loc 1 4290 0
	movl	%eax, %ecx	# D.21030, D.21028
	movq	-304(%rbp), %rax	# lr_bitsize, lr_bitsize.406
	movl	%eax, %edx	# lr_bitsize.406, D.21034
	movq	-272(%rbp), %rax	# rr_bitsize, rr_bitsize.407
	addl	%edx, %eax	# D.21034, D.21034
	movl	%eax, %edx	# D.21034, D.21028
	movq	-40(%rbp), %rsi	# rntype, tmp486
	movq	-120(%rbp), %rax	# lr_inner, tmp487
	movl	%edi, %r8d	# lr_unsignedp.403,
	movq	%rax, %rdi	# tmp487,
	call	make_bit_field_ref	#
	movq	%rax, -416(%rbp)	# tmp488, rhs
	.loc 1 4293 0
	movq	-72(%rbp), %rax	# xll_bitpos, tmp489
	cmpq	%rax, -64(%rbp)	# tmp489, xrl_bitpos
	cmovle	-64(%rbp), %rax	# xrl_bitpos,, D.21030
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21030,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21027
	movq	-256(%rbp), %rax	# ll_mask, ll_mask.408
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# ll_mask.408,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, -256(%rbp)	# ll_mask.409, ll_mask
	.loc 1 4295 0
	movq	-32(%rbp), %rax	# xlr_bitpos, tmp490
	cmpq	%rax, -24(%rbp)	# tmp490, xrr_bitpos
	cmovle	-24(%rbp), %rax	# xrr_bitpos,, D.21030
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21030,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21027
	movq	-248(%rbp), %rax	# lr_mask, lr_mask.410
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# lr_mask.410,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, -248(%rbp)	# lr_mask.411, lr_mask
	.loc 1 4299 0
	movq	-80(%rbp), %rax	# lntype, tmp491
	movq	%rax, -168(%rbp)	# tmp491, type
	.loc 1 4300 0
	movq	-80(%rbp), %rax	# lntype, tmp492
	cmpq	-40(%rbp), %rax	# rntype, tmp492
	je	.L793	#,
	.loc 1 4302 0
	movq	-96(%rbp), %rax	# lnbitsize, tmp493
	cmpq	-56(%rbp), %rax	# rnbitsize, tmp493
	jle	.L794	#,
	.loc 1 4304 0
	movq	-408(%rbp), %rdx	# lhs, tmp494
	movq	-40(%rbp), %rax	# rntype, tmp495
	movq	%rdx, %rsi	# tmp494,
	movq	%rax, %rdi	# tmp495,
	call	convert	#
	movq	%rax, -408(%rbp)	# tmp496, lhs
	.loc 1 4305 0
	movq	-256(%rbp), %rdx	# ll_mask, ll_mask.412
	movq	-40(%rbp), %rax	# rntype, tmp497
	movq	%rdx, %rsi	# ll_mask.412,
	movq	%rax, %rdi	# tmp497,
	call	convert	#
	movq	%rax, -256(%rbp)	# ll_mask.413, ll_mask
	.loc 1 4306 0
	movq	-40(%rbp), %rax	# rntype, tmp498
	movq	%rax, -168(%rbp)	# tmp498, type
	jmp	.L793	#
.L794:
	.loc 1 4308 0
	movq	-96(%rbp), %rax	# lnbitsize, tmp499
	cmpq	-56(%rbp), %rax	# rnbitsize, tmp499
	jge	.L793	#,
	.loc 1 4310 0
	movq	-416(%rbp), %rdx	# rhs, tmp500
	movq	-80(%rbp), %rax	# lntype, tmp501
	movq	%rdx, %rsi	# tmp500,
	movq	%rax, %rdi	# tmp501,
	call	convert	#
	movq	%rax, -416(%rbp)	# tmp502, rhs
	.loc 1 4311 0
	movq	-248(%rbp), %rdx	# lr_mask, lr_mask.414
	movq	-80(%rbp), %rax	# lntype, tmp503
	movq	%rdx, %rsi	# lr_mask.414,
	movq	%rax, %rdi	# tmp503,
	call	convert	#
	movq	%rax, -248(%rbp)	# lr_mask.415, lr_mask
	.loc 1 4312 0
	movq	-80(%rbp), %rax	# lntype, tmp504
	movq	%rax, -168(%rbp)	# tmp504, type
.L793:
	.loc 1 4316 0
	movq	-320(%rbp), %rax	# ll_bitsize, ll_bitsize.416
	movl	%eax, %edx	# ll_bitsize.416, D.21034
	movq	-288(%rbp), %rax	# rl_bitsize, rl_bitsize.417
	addl	%edx, %eax	# D.21034, D.21034
	movl	%eax, %edx	# D.21034, D.21028
	movq	-256(%rbp), %rax	# ll_mask, ll_mask.418
	movl	%edx, %esi	# D.21028,
	movq	%rax, %rdi	# ll_mask.418,
	call	all_ones_mask_p	#
	testl	%eax, %eax	# D.21028
	jne	.L795	#,
	.loc 1 4317 0
	movq	-256(%rbp), %rcx	# ll_mask, ll_mask.419
	movq	-408(%rbp), %rdx	# lhs, tmp505
	movq	-168(%rbp), %rax	# type, tmp506
	movq	%rax, %rsi	# tmp506,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -408(%rbp)	# tmp507, lhs
.L795:
	.loc 1 4319 0
	movq	-304(%rbp), %rax	# lr_bitsize, lr_bitsize.420
	movl	%eax, %edx	# lr_bitsize.420, D.21034
	movq	-272(%rbp), %rax	# rr_bitsize, rr_bitsize.421
	addl	%edx, %eax	# D.21034, D.21034
	movl	%eax, %edx	# D.21034, D.21028
	movq	-248(%rbp), %rax	# lr_mask, lr_mask.422
	movl	%edx, %esi	# D.21028,
	movq	%rax, %rdi	# lr_mask.422,
	call	all_ones_mask_p	#
	testl	%eax, %eax	# D.21028
	jne	.L796	#,
	.loc 1 4320 0
	movq	-248(%rbp), %rcx	# lr_mask, lr_mask.423
	movq	-416(%rbp), %rdx	# rhs, tmp508
	movq	-168(%rbp), %rax	# type, tmp509
	movq	%rax, %rsi	# tmp509,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -416(%rbp)	# tmp510, rhs
.L796:
	.loc 1 4322 0
	movq	-416(%rbp), %rcx	# rhs, tmp511
	movq	-408(%rbp), %rdx	# lhs, tmp512
	movq	-400(%rbp), %rsi	# truth_type, tmp513
	movl	-340(%rbp), %eax	# wanted_code, tmp514
	movl	%eax, %edi	# tmp514,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L803	#
.L792:
.LBE19:
	.loc 1 4325 0
	movl	$0, %eax	#, D.21025
	jmp	.L803	#
.L777:
	.loc 1 4332 0
	movq	-240(%rbp), %rdx	# rl_mask, rl_mask.424
	movq	-256(%rbp), %rax	# ll_mask, ll_mask.425
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# ll_mask.425,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rax, -176(%rbp)	# tmp515, result
	.loc 1 4333 0
	movq	-176(%rbp), %rax	# result, tmp516
	movq	%rax, %rdi	# tmp516,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21028
	jne	.L797	#,
	.loc 1 4334 0
	movq	-184(%rbp), %rdx	# r_const, tmp517
	movq	-176(%rbp), %rax	# result, tmp518
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp518,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rax, %rbx	#, D.21027
	movq	-192(%rbp), %rdx	# l_const, tmp519
	movq	-176(%rbp), %rax	# result, tmp520
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp520,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rbx, %rsi	# D.21027,
	movq	%rax, %rdi	# D.21027,
	call	simple_cst_equal	#
	cmpl	$1, %eax	#, D.21028
	je	.L797	#,
	.loc 1 4337 0
	cmpl	$102, -340(%rbp)	#, wanted_code
	jne	.L798	#,
	.loc 1 4339 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4340 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21027
	movq	-400(%rbp), %rax	# truth_type, tmp521
	movq	%rdx, %rsi	# D.21027,
	movq	%rax, %rdi	# tmp521,
	call	convert	#
	jmp	.L803	#
.L798:
	.loc 1 4344 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4345 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21027
	movq	-400(%rbp), %rax	# truth_type, tmp522
	movq	%rdx, %rsi	# D.21027,
	movq	%rax, %rdi	# tmp522,
	call	convert	#
	jmp	.L803	#
.L797:
	.loc 1 4354 0
	movl	-384(%rbp), %eax	# ll_unsignedp, ll_unsignedp.427
	.loc 1 4353 0
	testl	%eax, %eax	# ll_unsignedp.427
	jne	.L799	#,
	.loc 1 4354 0 discriminator 2
	movl	-376(%rbp), %eax	# rl_unsignedp, rl_unsignedp.428
	.loc 1 4353 0 discriminator 2
	testl	%eax, %eax	# rl_unsignedp.428
	je	.L800	#,
.L799:
	.loc 1 4353 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.426
	jmp	.L801	#
.L800:
	.loc 1 4353 0 discriminator 3
	movl	$0, %eax	#, iftmp.426
.L801:
	.loc 1 4353 0 discriminator 4
	movq	-88(%rbp), %rdx	# lnbitpos, tmp523
	movl	%edx, %ecx	# tmp523, D.21028
	movq	-96(%rbp), %rdx	# lnbitsize, tmp524
	movq	-80(%rbp), %rsi	# lntype, tmp525
	movq	-128(%rbp), %rdi	# ll_inner, tmp526
	movl	%eax, %r8d	# iftmp.426,
	call	make_bit_field_ref	#
	movq	%rax, -176(%rbp)	# tmp527, result
	.loc 1 4356 0 is_stmt 1 discriminator 4
	movq	-240(%rbp), %rdx	# rl_mask, rl_mask.429
	movq	-256(%rbp), %rax	# ll_mask, ll_mask.430
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# ll_mask.430,
	movl	$86, %edi	#,
	call	const_binop	#
	movq	%rax, -256(%rbp)	# ll_mask.431, ll_mask
	.loc 1 4357 0 discriminator 4
	movq	-96(%rbp), %rax	# lnbitsize, tmp528
	movl	%eax, %edx	# tmp528, D.21028
	movq	-256(%rbp), %rax	# ll_mask, ll_mask.432
	movl	%edx, %esi	# D.21028,
	movq	%rax, %rdi	# ll_mask.432,
	call	all_ones_mask_p	#
	testl	%eax, %eax	# D.21028
	jne	.L802	#,
	.loc 1 4358 0
	movq	-256(%rbp), %rcx	# ll_mask, ll_mask.433
	movq	-176(%rbp), %rdx	# result, tmp529
	movq	-80(%rbp), %rax	# lntype, tmp530
	movq	%rax, %rsi	# tmp530,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -176(%rbp)	# tmp531, result
.L802:
	.loc 1 4360 0
	movq	-184(%rbp), %rdx	# r_const, tmp532
	movq	-192(%rbp), %rax	# l_const, tmp533
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp533,
	movl	$86, %edi	#,
	call	const_binop	#
	movq	%rax, %rcx	#, D.21027
	movq	-176(%rbp), %rdx	# result, tmp534
	movq	-400(%rbp), %rsi	# truth_type, tmp535
	movl	-340(%rbp), %eax	# wanted_code, tmp536
	movl	%eax, %edi	# tmp536,
	movl	$0, %eax	#,
	call	build	#
.L803:
	.loc 1 4362 0
	addq	$424, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	fold_truthop, .-fold_truthop
	.type	optimize_minmax_comparison, @function
optimize_minmax_comparison:
.LFB52:
	.loc 1 4370 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# t, t
	.loc 1 4371 0
	movq	-88(%rbp), %rax	# t, tmp102
	movq	8(%rax), %rax	# t_3(D)->common.type, tmp103
	movq	%rax, -48(%rbp)	# tmp103, type
	.loc 1 4372 0
	movq	-88(%rbp), %rax	# t, tmp104
	movq	32(%rax), %rax	# t_3(D)->exp.operands, tmp105
	movq	%rax, -56(%rbp)	# tmp105, arg0
	.loc 1 4374 0
	movq	-88(%rbp), %rax	# t, tmp106
	movq	40(%rax), %rax	# t_3(D)->exp.operands, tmp107
	movq	%rax, -40(%rbp)	# tmp107, comp_const
	.loc 1 4379 0
	jmp	.L805	#
.L808:
	.loc 1 4379 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# arg0, tmp108
	movq	32(%rax), %rax	# arg0_1->exp.operands, tmp109
	movq	%rax, -56(%rbp)	# tmp109, arg0
.L805:
	movq	-56(%rbp), %rax	# arg0, tmp110
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.21041
	cmpb	$115, %al	#, D.21041
	je	.L806	#,
	.loc 1 4379 0 discriminator 3
	movq	-56(%rbp), %rax	# arg0, tmp111
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.21041
	cmpb	$114, %al	#, D.21041
	je	.L806	#,
	.loc 1 4379 0 discriminator 1
	movq	-56(%rbp), %rax	# arg0, tmp112
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.21041
	cmpb	$116, %al	#, D.21041
	jne	.L807	#,
.L806:
	.loc 1 4379 0 discriminator 2
	movq	-56(%rbp), %rax	# arg0, tmp113
	movq	32(%rax), %rdx	# arg0_1->exp.operands, D.21042
	movq	global_trees(%rip), %rax	# global_trees, D.21042
	cmpq	%rax, %rdx	# D.21042, D.21042
	je	.L807	#,
	.loc 1 4379 0 discriminator 1
	movq	-56(%rbp), %rax	# arg0, tmp114
	movq	8(%rax), %rax	# arg0_1->common.type, D.21042
	movzbl	61(%rax), %eax	# *_12, tmp117
	shrb	%al	# D.21043
	movl	%eax, %edx	# D.21043, D.21043
	movq	-56(%rbp), %rax	# arg0, tmp118
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.21042
	movq	8(%rax), %rax	# _14->common.type, D.21042
	movzbl	61(%rax), %eax	# *_15, tmp121
	shrb	%al	# D.21043
	cmpb	%al, %dl	# D.21043, D.21043
	jne	.L807	#,
	movq	-56(%rbp), %rax	# arg0, tmp122
	movq	8(%rax), %rax	# arg0_1->common.type, D.21042
	movzbl	17(%rax), %eax	# *_17, tmp125
	shrb	$5, %al	#, D.21044
	movl	%eax, %edx	# D.21044, D.21044
	andl	$1, %edx	#, D.21044
	movq	-56(%rbp), %rax	# arg0, tmp126
	movq	32(%rax), %rax	# arg0_1->exp.operands, D.21042
	movq	8(%rax), %rax	# _19->common.type, D.21042
	movzbl	17(%rax), %eax	# *_20, tmp129
	shrb	$5, %al	#, D.21044
	andl	$1, %eax	#, D.21044
	cmpb	%al, %dl	# D.21044, D.21044
	je	.L808	#,
.L807:
	.loc 1 4381 0 is_stmt 1
	movq	-56(%rbp), %rax	# arg0, tmp130
	movzbl	16(%rax), %eax	# arg0_1->common.code, D.21041
	movzbl	%al, %eax	# D.21041, tmp131
	movl	%eax, -68(%rbp)	# tmp131, op_code
	.loc 1 4382 0
	movq	-56(%rbp), %rax	# arg0, tmp132
	movq	40(%rax), %rax	# arg0_1->exp.operands, tmp133
	movq	%rax, -32(%rbp)	# tmp133, minmax_const
	.loc 1 4383 0
	movq	-40(%rbp), %rdx	# comp_const, tmp134
	movq	-32(%rbp), %rax	# minmax_const, tmp135
	movq	%rdx, %rsi	# tmp134,
	movq	%rax, %rdi	# tmp135,
	call	tree_int_cst_equal	#
	movl	%eax, -64(%rbp)	# tmp136, consts_equal
	.loc 1 4384 0
	movq	-40(%rbp), %rdx	# comp_const, tmp137
	movq	-32(%rbp), %rax	# minmax_const, tmp138
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	tree_int_cst_lt	#
	movl	%eax, -60(%rbp)	# tmp139, consts_lt
	.loc 1 4385 0
	movq	-56(%rbp), %rax	# arg0, tmp140
	movq	32(%rax), %rax	# arg0_1->exp.operands, tmp141
	movq	%rax, -24(%rbp)	# tmp141, inner
	.loc 1 4388 0
	cmpl	$78, -68(%rbp)	#, op_code
	je	.L809	#,
	.loc 1 4388 0 is_stmt 0 discriminator 1
	cmpl	$79, -68(%rbp)	#, op_code
	jne	.L810	#,
.L809:
	.loc 1 4389 0 is_stmt 1
	movq	-40(%rbp), %rax	# comp_const, tmp142
	movzbl	16(%rax), %eax	# comp_const_6->common.code, D.21041
	cmpb	$25, %al	#, D.21041
	jne	.L810	#,
	.loc 1 4390 0
	movq	-40(%rbp), %rax	# comp_const, tmp143
	movzbl	18(%rax), %eax	# *comp_const_6, D.21041
	andl	$4, %eax	#, D.21041
	testb	%al, %al	# D.21041
	jne	.L810	#,
	.loc 1 4391 0
	movq	-32(%rbp), %rax	# minmax_const, tmp144
	movzbl	16(%rax), %eax	# minmax_const_25->common.code, D.21041
	cmpb	$25, %al	#, D.21041
	jne	.L810	#,
	.loc 1 4392 0
	movq	-32(%rbp), %rax	# minmax_const, tmp145
	movzbl	18(%rax), %eax	# *minmax_const_25, D.21041
	andl	$4, %eax	#, D.21041
	testb	%al, %al	# D.21041
	je	.L811	#,
.L810:
	.loc 1 4393 0
	movq	-88(%rbp), %rax	# t, D.21040
	jmp	.L812	#
.L811:
	.loc 1 4398 0
	movq	-88(%rbp), %rax	# t, tmp146
	movzbl	16(%rax), %eax	# t_3(D)->common.code, D.21041
	movzbl	%al, %eax	# D.21041, D.21045
	subl	$97, %eax	#, tmp147
	cmpl	$5, %eax	#, tmp147
	ja	.L813	#,
	movl	%eax, %eax	# tmp147, tmp148
	movq	.L815(,%rax,8), %rax	#, tmp149
	jmp	*%rax	# tmp149
	.section	.rodata
	.align 8
	.align 4
.L815:
	.quad	.L814
	.quad	.L814
	.quad	.L816
	.quad	.L817
	.quad	.L818
	.quad	.L814
	.text
.L814:
	.loc 1 4402 0
	movq	-88(%rbp), %rax	# t, tmp150
	movq	%rax, %rdi	# tmp150,
	call	invert_truthvalue	#
	movq	%rax, %rdi	# D.21042,
	call	optimize_minmax_comparison	#
	.loc 1 4401 0
	movq	%rax, %rdi	# D.21042,
	call	invert_truthvalue	#
	jmp	.L812	#
.L817:
	.loc 1 4406 0
	movq	-40(%rbp), %rcx	# comp_const, tmp151
	movq	-56(%rbp), %rdx	# arg0, tmp152
	movq	-48(%rbp), %rax	# type, tmp153
	movq	%rax, %rsi	# tmp153,
	movl	$99, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21042,
	call	optimize_minmax_comparison	#
	movq	%rax, %rbx	#, D.21042
	movq	-40(%rbp), %rcx	# comp_const, tmp154
	movq	-56(%rbp), %rdx	# arg0, tmp155
	movq	-48(%rbp), %rax	# type, tmp156
	movq	%rax, %rsi	# tmp156,
	movl	$101, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21042,
	call	optimize_minmax_comparison	#
	movq	%rax, %rdx	#, D.21042
	movq	-48(%rbp), %rax	# type, tmp157
	movq	%rbx, %rcx	# D.21042,
	movq	%rax, %rsi	# tmp157,
	movl	$92, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 4405 0
	movq	%rax, %rdi	# D.21042,
	call	fold	#
	jmp	.L812	#
.L818:
	.loc 1 4413 0
	cmpl	$79, -68(%rbp)	#, op_code
	jne	.L819	#,
	.loc 1 4413 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, consts_equal
	je	.L819	#,
	.loc 1 4415 0 is_stmt 1
	movq	-40(%rbp), %rcx	# comp_const, tmp158
	movq	-24(%rbp), %rdx	# inner, tmp159
	movq	-48(%rbp), %rax	# type, tmp160
	movq	%rax, %rsi	# tmp160,
	movl	$98, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21042,
	call	fold	#
	jmp	.L812	#
.L819:
	.loc 1 4417 0
	cmpl	$79, -68(%rbp)	#, op_code
	jne	.L820	#,
	.loc 1 4417 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, consts_lt
	je	.L820	#,
	.loc 1 4419 0 is_stmt 1
	movq	-40(%rbp), %rcx	# comp_const, tmp161
	movq	-24(%rbp), %rdx	# inner, tmp162
	movq	-48(%rbp), %rax	# type, tmp163
	movq	%rax, %rsi	# tmp163,
	movl	$101, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21042,
	call	fold	#
	jmp	.L812	#
.L820:
	.loc 1 4421 0
	cmpl	$79, -68(%rbp)	#, op_code
	jne	.L821	#,
	.loc 1 4423 0
	movq	global_trees+88(%rip), %rcx	# global_trees, D.21042
	movq	-24(%rbp), %rdx	# inner, tmp164
	movq	-48(%rbp), %rax	# type, tmp165
	movq	%rcx, %rsi	# D.21042,
	movq	%rax, %rdi	# tmp165,
	call	omit_one_operand	#
	jmp	.L812	#
.L821:
	.loc 1 4425 0
	cmpl	$0, -64(%rbp)	#, consts_equal
	je	.L822	#,
	.loc 1 4427 0
	movq	-40(%rbp), %rcx	# comp_const, tmp166
	movq	-24(%rbp), %rdx	# inner, tmp167
	movq	-48(%rbp), %rax	# type, tmp168
	movq	%rax, %rsi	# tmp168,
	movl	$100, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21042,
	call	fold	#
	jmp	.L812	#
.L822:
	.loc 1 4429 0
	cmpl	$0, -60(%rbp)	#, consts_lt
	je	.L823	#,
	.loc 1 4431 0
	movq	global_trees+88(%rip), %rcx	# global_trees, D.21042
	movq	-24(%rbp), %rdx	# inner, tmp169
	movq	-48(%rbp), %rax	# type, tmp170
	movq	%rcx, %rsi	# D.21042,
	movq	%rax, %rdi	# tmp170,
	call	omit_one_operand	#
	jmp	.L812	#
.L823:
	.loc 1 4435 0
	movq	-40(%rbp), %rcx	# comp_const, tmp171
	movq	-24(%rbp), %rdx	# inner, tmp172
	movq	-48(%rbp), %rax	# type, tmp173
	movq	%rax, %rsi	# tmp173,
	movl	$101, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21042,
	call	fold	#
	jmp	.L812	#
.L816:
	.loc 1 4438 0
	cmpl	$79, -68(%rbp)	#, op_code
	jne	.L824	#,
	.loc 1 4438 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, consts_equal
	jne	.L825	#,
	cmpl	$0, -60(%rbp)	#, consts_lt
	je	.L824	#,
.L825:
	.loc 1 4441 0 is_stmt 1
	movq	-40(%rbp), %rcx	# comp_const, tmp174
	movq	-24(%rbp), %rdx	# inner, tmp175
	movq	-48(%rbp), %rax	# type, tmp176
	movq	%rax, %rsi	# tmp176,
	movl	$99, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21042,
	call	fold	#
	jmp	.L812	#
.L824:
	.loc 1 4443 0
	cmpl	$79, -68(%rbp)	#, op_code
	jne	.L826	#,
	.loc 1 4445 0
	movq	global_trees+96(%rip), %rcx	# global_trees, D.21042
	movq	-24(%rbp), %rdx	# inner, tmp177
	movq	-48(%rbp), %rax	# type, tmp178
	movq	%rcx, %rsi	# D.21042,
	movq	%rax, %rdi	# tmp178,
	call	omit_one_operand	#
	jmp	.L812	#
.L826:
	.loc 1 4447 0
	cmpl	$78, -68(%rbp)	#, op_code
	jne	.L827	#,
	.loc 1 4447 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, consts_equal
	jne	.L828	#,
	cmpl	$0, -60(%rbp)	#, consts_lt
	je	.L827	#,
.L828:
	.loc 1 4450 0 is_stmt 1
	movq	global_trees+88(%rip), %rcx	# global_trees, D.21042
	movq	-24(%rbp), %rdx	# inner, tmp179
	movq	-48(%rbp), %rax	# type, tmp180
	movq	%rcx, %rsi	# D.21042,
	movq	%rax, %rdi	# tmp180,
	call	omit_one_operand	#
	jmp	.L812	#
.L827:
	.loc 1 4454 0
	movq	-40(%rbp), %rcx	# comp_const, tmp181
	movq	-24(%rbp), %rdx	# inner, tmp182
	movq	-48(%rbp), %rax	# type, tmp183
	movq	%rax, %rsi	# tmp183,
	movl	$99, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21042,
	call	fold	#
	jmp	.L812	#
.L813:
	.loc 1 4457 0
	movq	-88(%rbp), %rax	# t, D.21040
.L812:
	.loc 1 4459 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	optimize_minmax_comparison, .-optimize_minmax_comparison
	.type	extract_muldiv, @function
extract_muldiv:
.LFB53:
	.loc 1 4485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# t, t
	movq	%rsi, -96(%rbp)	# c, c
	movl	%edx, -100(%rbp)	# code, code
	movq	%rcx, -112(%rbp)	# wide_type, wide_type
	.loc 1 4486 0
	movq	-88(%rbp), %rax	# t, tmp215
	movq	8(%rax), %rax	# t_13(D)->common.type, tmp216
	movq	%rax, -48(%rbp)	# tmp216, type
	.loc 1 4487 0
	movq	-88(%rbp), %rax	# t, tmp217
	movzbl	16(%rax), %eax	# t_13(D)->common.code, D.21047
	movzbl	%al, %eax	# D.21047, tmp218
	movl	%eax, -72(%rbp)	# tmp218, tcode
	.loc 1 4490 0
	cmpq	$0, -112(%rbp)	#, wide_type
	je	.L830	#,
	.loc 1 4488 0
	movq	-112(%rbp), %rax	# wide_type, tmp219
	movzbl	61(%rax), %eax	# *wide_type_17(D), tmp222
	shrb	%al	# D.21048
	movzbl	%al, %eax	# D.21048, D.21049
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.21047
	.loc 1 4489 0
	movq	-48(%rbp), %rax	# type, tmp224
	movzbl	61(%rax), %eax	# *type_14, tmp227
	shrb	%al	# D.21048
	movzbl	%al, %eax	# D.21048, D.21049
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.21047
	.loc 1 4488 0
	cmpb	%al, %dl	# D.21047, D.21047
	jbe	.L830	#,
	.loc 1 4490 0
	movq	-112(%rbp), %rax	# wide_type, iftmp.434
	jmp	.L831	#
.L830:
	.loc 1 4490 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# type, iftmp.434
.L831:
	.loc 1 4488 0 is_stmt 1
	movq	%rax, -40(%rbp)	# iftmp.434, ctype
	.loc 1 4492 0
	movl	-72(%rbp), %eax	# tcode, tmp229
	cmpl	-100(%rbp), %eax	# code, tmp229
	sete	%al	#, D.21050
	movzbl	%al, %eax	# D.21050, tmp230
	movl	%eax, -68(%rbp)	# tmp230, same_p
	.loc 1 4493 0
	movq	$0, -64(%rbp)	#, op0
	movq	$0, -56(%rbp)	#, op1
	.loc 1 4496 0
	movq	-96(%rbp), %rax	# c, tmp231
	movq	%rax, %rdi	# tmp231,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21049
	je	.L832	#,
	.loc 1 4497 0
	movl	$0, %eax	#, D.21046
	jmp	.L833	#
.L832:
	.loc 1 4499 0
	movl	-72(%rbp), %eax	# tcode, tcode.435
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21051
	cmpb	$49, %al	#, D.21051
	jne	.L834	#,
	.loc 1 4500 0
	movq	-88(%rbp), %rax	# t, tmp233
	movq	32(%rax), %rax	# t_13(D)->exp.operands, tmp234
	movq	%rax, -64(%rbp)	# tmp234, op0
.L834:
	.loc 1 4502 0
	movl	-72(%rbp), %eax	# tcode, tcode.436
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21051
	cmpb	$50, %al	#, D.21051
	jne	.L835	#,
	.loc 1 4503 0
	movq	-88(%rbp), %rax	# t, tmp236
	movq	32(%rax), %rax	# t_13(D)->exp.operands, tmp237
	movq	%rax, -64(%rbp)	# tmp237, op0
	movq	-88(%rbp), %rax	# t, tmp238
	movq	40(%rax), %rax	# t_13(D)->exp.operands, tmp239
	movq	%rax, -56(%rbp)	# tmp239, op1
.L835:
	.loc 1 4507 0
	movl	-72(%rbp), %eax	# tcode, tmp241
	subl	$25, %eax	#, tmp240
	cmpl	$93, %eax	#, tmp240
	ja	.L895	#,
	movl	%eax, %eax	# tmp240, tmp242
	movq	.L838(,%rax,8), %rax	#, tmp243
	jmp	*%rax	# tmp243
	.section	.rodata
	.align 8
	.align 4
.L838:
	.quad	.L837
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L839
	.quad	.L840
	.quad	.L840
	.quad	.L841
	.quad	.L842
	.quad	.L842
	.quad	.L842
	.quad	.L842
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L842
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L843
	.quad	.L844
	.quad	.L844
	.quad	.L843
	.quad	.L895
	.quad	.L845
	.quad	.L845
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L895
	.quad	.L846
	.quad	.L846
	.quad	.L846
	.quad	.L895
	.quad	.L847
	.text
.L837:
	.loc 1 4512 0
	cmpl	$61, -100(%rbp)	#, code
	je	.L848	#,
	.loc 1 4513 0
	movq	-96(%rbp), %rdx	# c, tmp244
	movq	-88(%rbp), %rax	# t, tmp245
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp245,
	movl	$66, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21052,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21049
	je	.L849	#,
.L848:
	.loc 1 4514 0
	movq	-96(%rbp), %rdx	# c, tmp246
	movq	-40(%rbp), %rax	# ctype, tmp247
	movq	%rdx, %rsi	# tmp246,
	movq	%rax, %rdi	# tmp247,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-88(%rbp), %rdx	# t, tmp248
	movq	-40(%rbp), %rax	# ctype, tmp249
	movq	%rdx, %rsi	# tmp248,
	movq	%rax, %rdi	# tmp249,
	call	convert	#
	movq	%rax, %rsi	#, D.21052
	movl	-100(%rbp), %eax	# code, tmp250
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.21052,
	movl	%eax, %edi	# tmp250,
	call	const_binop	#
	jmp	.L833	#
.L849:
	.loc 1 4515 0
	jmp	.L850	#
.L846:
	.loc 1 4519 0
	movq	-64(%rbp), %rax	# op0, tmp251
	movzbl	16(%rax), %eax	# op0_5->common.code, D.21047
	movzbl	%al, %eax	# D.21047, D.21049
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21051
	cmpb	$60, %al	#, D.21051
	je	.L851	#,
	.loc 1 4520 0
	movq	-64(%rbp), %rax	# op0, tmp253
	movzbl	16(%rax), %eax	# op0_5->common.code, D.21047
	movzbl	%al, %eax	# D.21047, D.21049
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21051
	cmpb	$49, %al	#, D.21051
	je	.L851	#,
	.loc 1 4521 0
	movq	-64(%rbp), %rax	# op0, tmp255
	movzbl	16(%rax), %eax	# op0_5->common.code, D.21047
	movzbl	%al, %eax	# D.21047, D.21049
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21051
	cmpb	$50, %al	#, D.21051
	je	.L851	#,
	.loc 1 4522 0
	movq	-64(%rbp), %rax	# op0, tmp257
	movzbl	16(%rax), %eax	# op0_5->common.code, D.21047
	movzbl	%al, %eax	# D.21047, D.21049
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21051
	cmpb	$101, %al	#, D.21051
	jne	.L852	#,
.L851:
	.loc 1 4525 0
	movq	-64(%rbp), %rax	# op0, tmp259
	movq	8(%rax), %rax	# op0_5->common.type, D.21052
	movzbl	17(%rax), %eax	# *_59, D.21047
	andl	$32, %eax	#, D.21047
	testb	%al, %al	# D.21047
	je	.L853	#,
	.loc 1 4526 0
	movq	-64(%rbp), %rax	# op0, tmp260
	movq	8(%rax), %rax	# op0_5->common.type, D.21052
	movzbl	16(%rax), %eax	# _62->common.code, D.21047
	cmpb	$6, %al	#, D.21047
	jne	.L854	#,
	.loc 1 4527 0 discriminator 1
	movq	-64(%rbp), %rax	# op0, tmp261
	movq	8(%rax), %rax	# op0_5->common.type, D.21052
	movzbl	62(%rax), %eax	# *_64, D.21047
	andl	$2, %eax	#, D.21047
	.loc 1 4526 0 discriminator 1
	testb	%al, %al	# D.21047
	jne	.L853	#,
.L854:
	.loc 1 4528 0
	movq	-40(%rbp), %rax	# ctype, tmp262
	movzbl	61(%rax), %eax	# *ctype_26, tmp265
	shrb	%al	# D.21048
	movzbl	%al, %eax	# D.21048, D.21049
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.21047
	.loc 1 4529 0
	movq	-64(%rbp), %rax	# op0, tmp267
	movq	8(%rax), %rax	# op0_5->common.type, D.21052
	movzbl	61(%rax), %eax	# *_70, tmp270
	shrb	%al	# D.21048
	movzbl	%al, %eax	# D.21048, D.21049
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.21047
	.loc 1 4528 0
	cmpb	%al, %dl	# D.21047, D.21047
	ja	.L850	#,
.L853:
	.loc 1 4532 0
	movq	-40(%rbp), %rax	# ctype, tmp272
	movzbl	61(%rax), %eax	# *ctype_26, tmp275
	shrb	%al	# D.21048
	movzbl	%al, %eax	# D.21048, D.21049
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.21047
	.loc 1 4533 0
	movq	-64(%rbp), %rax	# op0, tmp277
	movq	8(%rax), %rax	# op0_5->common.type, D.21052
	movzbl	61(%rax), %eax	# *_77, tmp280
	shrb	%al	# D.21048
	movzbl	%al, %eax	# D.21048, D.21049
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.21047
	.loc 1 4532 0
	cmpb	%al, %dl	# D.21047, D.21047
	jb	.L850	#,
.L852:
	.loc 1 4539 0
	cmpl	$61, -100(%rbp)	#, code
	jne	.L855	#,
	.loc 1 4539 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rbx	# ctype, iftmp.437
	jmp	.L856	#
.L855:
	.loc 1 4539 0 discriminator 2
	movl	$0, %ebx	#, iftmp.437
.L856:
	.loc 1 4539 0 discriminator 3
	movq	-64(%rbp), %rax	# op0, tmp282
	movq	8(%rax), %rax	# op0_5->common.type, D.21052
	movq	-96(%rbp), %rdx	# c, tmp283
	movq	%rdx, %rsi	# tmp283,
	movq	%rax, %rdi	# D.21052,
	call	convert	#
	movq	%rax, %rsi	#, D.21052
	movl	-100(%rbp), %edx	# code, tmp284
	movq	-64(%rbp), %rax	# op0, tmp285
	movq	%rbx, %rcx	# iftmp.437,
	movq	%rax, %rdi	# tmp285,
	call	extract_muldiv	#
	movq	%rax, -32(%rbp)	# tmp286, t1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L857	#,
	.loc 1 4541 0 is_stmt 1
	movq	-32(%rbp), %rax	# t1, D.21046
	jmp	.L833	#
.L857:
	.loc 1 4542 0
	jmp	.L850	#
.L843:
	.loc 1 4545 0
	movq	-112(%rbp), %rcx	# wide_type, tmp287
	movl	-100(%rbp), %edx	# code, tmp288
	movq	-96(%rbp), %rsi	# c, tmp289
	movq	-64(%rbp), %rax	# op0, tmp290
	movq	%rax, %rdi	# tmp290,
	call	extract_muldiv	#
	movq	%rax, -32(%rbp)	# tmp291, t1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L858	#,
	.loc 1 4546 0
	movq	-32(%rbp), %rdx	# t1, tmp292
	movq	-40(%rbp), %rax	# ctype, tmp293
	movq	%rdx, %rsi	# tmp292,
	movq	%rax, %rdi	# tmp293,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rcx	# ctype, tmp294
	movl	-72(%rbp), %eax	# tcode, tmp295
	movq	%rcx, %rsi	# tmp294,
	movl	%eax, %edi	# tmp295,
	call	build1	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L858:
	.loc 1 4547 0
	jmp	.L850	#
.L844:
	.loc 1 4552 0
	movq	-40(%rbp), %rax	# ctype, tmp296
	movzbl	17(%rax), %eax	# *ctype_26, tmp299
	shrb	$5, %al	#, D.21053
	movl	%eax, %edx	# D.21053, D.21053
	andl	$1, %edx	#, D.21053
	movq	-48(%rbp), %rax	# type, tmp300
	movzbl	17(%rax), %eax	# *type_14, tmp303
	shrb	$5, %al	#, D.21053
	andl	$1, %eax	#, D.21053
	cmpb	%al, %dl	# D.21053, D.21053
	je	.L859	#,
	.loc 1 4553 0
	jmp	.L850	#
.L859:
	.loc 1 4556 0
	movq	-112(%rbp), %rcx	# wide_type, tmp304
	movl	-100(%rbp), %edx	# code, tmp305
	movq	-96(%rbp), %rsi	# c, tmp306
	movq	-64(%rbp), %rax	# op0, tmp307
	movq	%rax, %rdi	# tmp307,
	call	extract_muldiv	#
	movq	%rax, -32(%rbp)	# tmp308, t1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L860	#,
	.loc 1 4557 0
	movq	-112(%rbp), %rcx	# wide_type, tmp309
	movl	-100(%rbp), %edx	# code, tmp310
	movq	-96(%rbp), %rsi	# c, tmp311
	movq	-56(%rbp), %rax	# op1, tmp312
	movq	%rax, %rdi	# tmp312,
	call	extract_muldiv	#
	movq	%rax, -24(%rbp)	# tmp313, t2
	cmpq	$0, -24(%rbp)	#, t2
	je	.L860	#,
	.loc 1 4559 0
	movq	-96(%rbp), %rax	# c, tmp314
	movq	%rax, %rdi	# tmp314,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21049
	jns	.L861	#,
	.loc 1 4560 0
	cmpl	$78, -72(%rbp)	#, tcode
	jne	.L862	#,
	.loc 1 4560 0 is_stmt 0 discriminator 1
	movl	$79, %eax	#, iftmp.438
	jmp	.L863	#
.L862:
	.loc 1 4560 0 discriminator 2
	movl	$78, %eax	#, iftmp.438
.L863:
	.loc 1 4560 0 discriminator 3
	movl	%eax, -72(%rbp)	# iftmp.438, tcode
.L861:
	.loc 1 4562 0 is_stmt 1
	movq	-24(%rbp), %rdx	# t2, tmp315
	movq	-40(%rbp), %rax	# ctype, tmp316
	movq	%rdx, %rsi	# tmp315,
	movq	%rax, %rdi	# tmp316,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-32(%rbp), %rdx	# t1, tmp317
	movq	-40(%rbp), %rax	# ctype, tmp318
	movq	%rdx, %rsi	# tmp317,
	movq	%rax, %rdi	# tmp318,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rsi	# ctype, tmp319
	movl	-72(%rbp), %eax	# tcode, tmp320
	movq	%rbx, %rcx	# D.21052,
	movl	%eax, %edi	# tmp320,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L860:
	.loc 1 4565 0
	jmp	.L850	#
.L839:
	.loc 1 4568 0
	movq	-88(%rbp), %rax	# t, tmp321
	movq	32(%rax), %rax	# t_13(D)->exp.operands, D.21052
	movq	-112(%rbp), %rcx	# wide_type, tmp322
	movl	-100(%rbp), %edx	# code, tmp323
	movq	-96(%rbp), %rsi	# c, tmp324
	movq	%rax, %rdi	# D.21052,
	call	extract_muldiv	#
	movq	%rax, -32(%rbp)	# tmp325, t1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L864	#,
	.loc 1 4569 0
	movq	-88(%rbp), %rax	# t, tmp326
	movq	40(%rax), %rcx	# t_13(D)->exp.operands, D.21052
	movq	-32(%rbp), %rax	# t1, tmp327
	movq	8(%rax), %rax	# t1_104->common.type, D.21052
	movq	-32(%rbp), %rdx	# t1, tmp328
	movq	%rax, %rsi	# D.21052,
	movl	$58, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L833	#
.L864:
	.loc 1 4571 0
	jmp	.L850	#
.L847:
	.loc 1 4579 0
	movq	-88(%rbp), %rax	# t, tmp329
	addq	$48, %rax	#, D.21054
	movq	(%rax), %rax	# MEM[(struct rtx_def * *)_108], D.21055
	testq	%rax, %rax	# D.21055
	jne	.L865	#,
	.loc 1 4579 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# t, tmp330
	movq	32(%rax), %rax	# t_13(D)->exp.operands, D.21052
	movzbl	17(%rax), %eax	# *_110, D.21047
	andl	$1, %eax	#, D.21047
	testb	%al, %al	# D.21047
	jne	.L865	#,
	.loc 1 4580 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, tmp331
	movq	32(%rax), %rax	# t_13(D)->exp.operands, D.21052
	movq	-112(%rbp), %rcx	# wide_type, tmp332
	movl	-100(%rbp), %edx	# code, tmp333
	movq	-96(%rbp), %rsi	# c, tmp334
	movq	%rax, %rdi	# D.21052,
	call	extract_muldiv	#
	movq	%rax, -32(%rbp)	# tmp335, t1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L865	#,
	.loc 1 4583 0
	movq	-32(%rbp), %rax	# t1, tmp336
	movq	%rax, %rdi	# tmp336,
	call	save_expr	#
	movq	%rax, -32(%rbp)	# tmp337, t1
	.loc 1 4584 0
	movq	-88(%rbp), %rax	# t, tmp338
	movzbl	17(%rax), %eax	# *t_13(D), D.21047
	andl	$64, %eax	#, D.21047
	testb	%al, %al	# D.21047
	je	.L866	#,
	.loc 1 4584 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t1, tmp339
	movzbl	16(%rax), %eax	# t1_115->common.code, D.21047
	cmpb	$118, %al	#, D.21047
	jne	.L866	#,
	.loc 1 4585 0 is_stmt 1
	movq	-32(%rbp), %rax	# t1, tmp340
	movzbl	17(%rax), %edx	#, tmp343
	orl	$64, %edx	#, tmp344
	movb	%dl, 17(%rax)	# tmp344,
.L866:
	.loc 1 4586 0
	movq	-88(%rbp), %rax	# t, tmp345
	movq	%rax, %rdi	# tmp345,
	call	is_pending_size	#
	testl	%eax, %eax	# D.21049
	je	.L867	#,
	.loc 1 4587 0
	movq	-32(%rbp), %rax	# t1, tmp346
	movq	%rax, %rdi	# tmp346,
	call	put_pending_size	#
.L867:
	.loc 1 4588 0
	movq	-32(%rbp), %rax	# t1, D.21046
	jmp	.L833	#
.L865:
	.loc 1 4590 0
	jmp	.L850	#
.L845:
	.loc 1 4596 0
	movq	-56(%rbp), %rax	# op1, tmp347
	movzbl	16(%rax), %eax	# op1_6->common.code, D.21047
	cmpb	$25, %al	#, D.21047
	jne	.L868	#,
	.loc 1 4599 0
	movq	global_trees+128(%rip), %rax	# global_trees, D.21052
	movq	8(%rax), %rax	# _122->common.type, D.21052
	movzwl	60(%rax), %eax	# *_123, tmp350
	andw	$511, %ax	#, D.21056
	movzwl	%ax, %edx	# D.21056, D.21057
	movq	-56(%rbp), %rax	# op1, tmp351
	movq	32(%rax), %rax	# op1_6->int_cst.int_cst.low, D.21057
	cmpq	%rax, %rdx	# D.21057, D.21057
	jbe	.L868	#,
	.loc 1 4600 0
	movq	-56(%rbp), %rax	# op1, tmp352
	movq	40(%rax), %rax	# op1_6->int_cst.int_cst.high, D.21058
	testq	%rax, %rax	# D.21058
	jne	.L868	#,
	.loc 1 4601 0
	movq	global_trees+128(%rip), %rax	# global_trees, D.21052
	movq	-56(%rbp), %rdx	# op1, tmp353
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.21052,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rax	# ctype, tmp354
	movq	%rdx, %rsi	# D.21052,
	movq	%rax, %rdi	# tmp354,
	call	convert	#
	movq	%rax, -32(%rbp)	# tmp355, t1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L868	#,
	.loc 1 4604 0
	movq	-32(%rbp), %rax	# t1, tmp356
	movzbl	18(%rax), %eax	# *t1_130, D.21047
	andl	$8, %eax	#, D.21047
	testb	%al, %al	# D.21047
	jne	.L868	#,
	.loc 1 4605 0
	movq	-64(%rbp), %rdx	# op0, tmp357
	movq	-40(%rbp), %rax	# ctype, tmp358
	movq	%rdx, %rsi	# tmp357,
	movq	%rax, %rdi	# tmp358,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	cmpl	$82, -72(%rbp)	#, tcode
	jne	.L869	#,
	.loc 1 4605 0 is_stmt 0 discriminator 1
	movl	$61, %eax	#, iftmp.439
	jmp	.L870	#
.L869:
	.loc 1 4605 0 discriminator 2
	movl	$64, %eax	#, iftmp.439
.L870:
	.loc 1 4605 0 discriminator 3
	movq	-32(%rbp), %rcx	# t1, tmp359
	movq	-40(%rbp), %rsi	# ctype, tmp360
	movl	%eax, %edi	# iftmp.439,
	movl	$0, %eax	#,
	call	build	#
	movq	-112(%rbp), %rcx	# wide_type, tmp361
	movl	-100(%rbp), %edx	# code, tmp362
	movq	-96(%rbp), %rsi	# c, tmp363
	movq	%rax, %rdi	# D.21052,
	call	extract_muldiv	#
	jmp	.L833	#
.L868:
	.loc 1 4609 0 is_stmt 1
	jmp	.L850	#
.L840:
	.loc 1 4616 0
	movq	-112(%rbp), %rcx	# wide_type, tmp364
	movl	-100(%rbp), %edx	# code, tmp365
	movq	-96(%rbp), %rsi	# c, tmp366
	movq	-64(%rbp), %rax	# op0, tmp367
	movq	%rax, %rdi	# tmp367,
	call	extract_muldiv	#
	movq	%rax, -32(%rbp)	# tmp368, t1
	.loc 1 4617 0
	movq	-112(%rbp), %rcx	# wide_type, tmp369
	movl	-100(%rbp), %edx	# code, tmp370
	movq	-96(%rbp), %rsi	# c, tmp371
	movq	-56(%rbp), %rax	# op1, tmp372
	movq	%rax, %rdi	# tmp372,
	call	extract_muldiv	#
	movq	%rax, -24(%rbp)	# tmp373, t2
	.loc 1 4618 0
	cmpq	$0, -32(%rbp)	#, t1
	je	.L871	#,
	.loc 1 4618 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, t2
	je	.L871	#,
	.loc 1 4619 0 is_stmt 1
	cmpl	$61, -100(%rbp)	#, code
	je	.L872	#,
	.loc 1 4622 0
	movq	-96(%rbp), %rdx	# c, tmp374
	movq	-64(%rbp), %rcx	# op0, tmp375
	movq	-40(%rbp), %rax	# ctype, tmp376
	movq	%rcx, %rsi	# tmp375,
	movq	%rax, %rdi	# tmp376,
	call	multiple_of_p	#
	testl	%eax, %eax	# D.21049
	jne	.L872	#,
	.loc 1 4623 0
	movq	-96(%rbp), %rdx	# c, tmp377
	movq	-56(%rbp), %rcx	# op1, tmp378
	movq	-40(%rbp), %rax	# ctype, tmp379
	movq	%rcx, %rsi	# tmp378,
	movq	%rax, %rdi	# tmp379,
	call	multiple_of_p	#
	testl	%eax, %eax	# D.21049
	je	.L871	#,
.L872:
	.loc 1 4624 0
	movq	-24(%rbp), %rdx	# t2, tmp380
	movq	-40(%rbp), %rax	# ctype, tmp381
	movq	%rdx, %rsi	# tmp380,
	movq	%rax, %rdi	# tmp381,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-32(%rbp), %rdx	# t1, tmp382
	movq	-40(%rbp), %rax	# ctype, tmp383
	movq	%rdx, %rsi	# tmp382,
	movq	%rax, %rdi	# tmp383,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rsi	# ctype, tmp384
	movl	-72(%rbp), %eax	# tcode, tmp385
	movq	%rbx, %rcx	# D.21052,
	movl	%eax, %edi	# tmp385,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L871:
	.loc 1 4629 0
	cmpl	$60, -72(%rbp)	#, tcode
	jne	.L873	#,
	.loc 1 4630 0
	movl	$59, -72(%rbp)	#, tcode
	movq	-56(%rbp), %rax	# op1, tmp386
	movq	%rax, %rdi	# tmp386,
	call	negate_expr	#
	movq	%rax, -56(%rbp)	# tmp387, op1
.L873:
	.loc 1 4632 0
	movq	-56(%rbp), %rax	# op1, tmp388
	movzbl	16(%rax), %eax	# op1_7->common.code, D.21047
	cmpb	$25, %al	#, D.21047
	je	.L874	#,
	.loc 1 4633 0
	jmp	.L850	#
.L874:
	.loc 1 4638 0
	movq	-56(%rbp), %rax	# op1, tmp389
	movq	%rax, %rdi	# tmp389,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21049
	js	.L875	#,
	.loc 1 4638 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# c, tmp390
	movq	%rax, %rdi	# tmp390,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21049
	jns	.L876	#,
.L875:
	.loc 1 4640 0 is_stmt 1
	cmpl	$63, -100(%rbp)	#, code
	jne	.L877	#,
	.loc 1 4641 0
	movl	$64, -100(%rbp)	#, code
	jmp	.L876	#
.L877:
	.loc 1 4642 0
	cmpl	$64, -100(%rbp)	#, code
	jne	.L878	#,
	.loc 1 4643 0
	movl	$63, -100(%rbp)	#, code
	jmp	.L876	#
.L878:
	.loc 1 4644 0
	cmpl	$61, -100(%rbp)	#, code
	je	.L876	#,
	.loc 1 4645 0
	cmpl	$67, -100(%rbp)	#, code
	je	.L876	#,
	.loc 1 4645 0 is_stmt 0 discriminator 1
	cmpl	$68, -100(%rbp)	#, code
	je	.L876	#,
	.loc 1 4646 0 is_stmt 1
	jmp	.L850	#
.L876:
	.loc 1 4651 0
	cmpl	$61, -100(%rbp)	#, code
	je	.L879	#,
	.loc 1 4652 0
	movq	-96(%rbp), %rdx	# c, tmp391
	movq	-56(%rbp), %rax	# op1, tmp392
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp392,
	movl	$66, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21052,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21049
	je	.L850	#,
.L879:
	.loc 1 4654 0
	movq	-96(%rbp), %rdx	# c, tmp393
	movq	-40(%rbp), %rax	# ctype, tmp394
	movq	%rdx, %rsi	# tmp393,
	movq	%rax, %rdi	# tmp394,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-56(%rbp), %rdx	# op1, tmp395
	movq	-40(%rbp), %rax	# ctype, tmp396
	movq	%rdx, %rsi	# tmp395,
	movq	%rax, %rdi	# tmp396,
	call	convert	#
	movq	%rax, %rsi	#, D.21052
	movl	-100(%rbp), %eax	# code, tmp397
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.21052,
	movl	%eax, %edi	# tmp397,
	call	const_binop	#
	movq	%rax, -56(%rbp)	# tmp398, op1
	.loc 1 4655 0
	cmpq	$0, -56(%rbp)	#, op1
	je	.L850	#,
	.loc 1 4655 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# op1, tmp399
	movzbl	18(%rax), %eax	# *op1_157, D.21047
	andl	$8, %eax	#, D.21047
	testb	%al, %al	# D.21047
	jne	.L850	#,
	.loc 1 4664 0 is_stmt 1
	movq	-40(%rbp), %rax	# ctype, tmp400
	movzbl	17(%rax), %eax	# *ctype_26, D.21047
	andl	$32, %eax	#, D.21047
	testb	%al, %al	# D.21047
	je	.L880	#,
	.loc 1 4665 0
	movq	-40(%rbp), %rax	# ctype, tmp401
	movzbl	16(%rax), %eax	# ctype_26->common.code, D.21047
	cmpb	$6, %al	#, D.21047
	jne	.L881	#,
	.loc 1 4665 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ctype, tmp402
	movzbl	62(%rax), %eax	# *ctype_26, D.21047
	andl	$2, %eax	#, D.21047
	testb	%al, %al	# D.21047
	jne	.L880	#,
.L881:
	.loc 1 4666 0 is_stmt 1
	movq	-40(%rbp), %rax	# ctype, tmp403
	cmpq	-48(%rbp), %rax	# type, tmp403
	je	.L880	#,
	.loc 1 4667 0
	jmp	.L850	#
.L880:
	.loc 1 4671 0
	cmpq	$0, -32(%rbp)	#, t1
	je	.L882	#,
	.loc 1 4671 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t1, tmp404
	movzbl	16(%rax), %eax	# t1_138->common.code, D.21047
	movzbl	%al, %eax	# D.21047, D.21059
	cmpl	-100(%rbp), %eax	# code, D.21059
	jne	.L883	#,
	cmpl	$61, -100(%rbp)	#, code
	jne	.L882	#,
.L883:
	.loc 1 4672 0 is_stmt 1
	movq	-32(%rbp), %rdx	# t1, tmp405
	movq	-40(%rbp), %rax	# ctype, tmp406
	movq	%rdx, %rsi	# tmp405,
	movq	%rax, %rdi	# tmp406,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-56(%rbp), %rcx	# op1, tmp407
	movq	-40(%rbp), %rsi	# ctype, tmp408
	movl	-72(%rbp), %eax	# tcode, tmp409
	movl	%eax, %edi	# tmp409,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L882:
	.loc 1 4677 0
	cmpl	$61, -100(%rbp)	#, code
	jne	.L884	#,
	.loc 1 4678 0
	movq	-96(%rbp), %rdx	# c, tmp410
	movq	-40(%rbp), %rax	# ctype, tmp411
	movq	%rdx, %rsi	# tmp410,
	movq	%rax, %rdi	# tmp411,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-64(%rbp), %rdx	# op0, tmp412
	movq	-40(%rbp), %rax	# ctype, tmp413
	movq	%rdx, %rsi	# tmp412,
	movq	%rax, %rdi	# tmp413,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rsi	# ctype, tmp414
	movl	-100(%rbp), %eax	# code, tmp415
	movq	%rbx, %rcx	# D.21052,
	movl	%eax, %edi	# tmp415,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	movq	%rax, %rdx	#, D.21052
	movq	-56(%rbp), %rcx	# op1, tmp416
	movq	-40(%rbp), %rsi	# ctype, tmp417
	movl	-72(%rbp), %eax	# tcode, tmp418
	movl	%eax, %edi	# tmp418,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L884:
	.loc 1 4683 0
	jmp	.L850	#
.L841:
	.loc 1 4688 0
	cmpl	$66, -100(%rbp)	#, code
	je	.L885	#,
	.loc 1 4688 0 is_stmt 0 discriminator 1
	cmpl	$67, -100(%rbp)	#, code
	je	.L885	#,
	.loc 1 4689 0 is_stmt 1
	cmpl	$68, -100(%rbp)	#, code
	je	.L885	#,
	.loc 1 4689 0 is_stmt 0 discriminator 1
	cmpl	$69, -100(%rbp)	#, code
	jne	.L842	#,
.L885:
	.loc 1 4690 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, tmp419
	movq	40(%rax), %rax	# t_13(D)->exp.operands, D.21052
	movzbl	16(%rax), %eax	# _176->common.code, D.21047
	cmpb	$25, %al	#, D.21047
	jne	.L842	#,
	.loc 1 4691 0
	movq	-96(%rbp), %rdx	# c, tmp420
	movq	-56(%rbp), %rax	# op1, tmp421
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp421,
	movl	$66, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21052,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21049
	je	.L842	#,
	.loc 1 4692 0
	movq	global_trees+88(%rip), %rcx	# global_trees, D.21052
	movq	-64(%rbp), %rdx	# op0, tmp422
	movq	-48(%rbp), %rax	# type, tmp423
	movq	%rcx, %rsi	# D.21052,
	movq	%rax, %rdi	# tmp423,
	call	omit_one_operand	#
	jmp	.L833	#
.L842:
	.loc 1 4701 0
	cmpl	$0, -68(%rbp)	#, same_p
	je	.L886	#,
	.loc 1 4702 0
	movq	-112(%rbp), %rcx	# wide_type, tmp424
	movl	-100(%rbp), %edx	# code, tmp425
	movq	-96(%rbp), %rsi	# c, tmp426
	movq	-64(%rbp), %rax	# op0, tmp427
	movq	%rax, %rdi	# tmp427,
	call	extract_muldiv	#
	movq	%rax, -32(%rbp)	# tmp428, t1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L886	#,
	.loc 1 4703 0
	movq	-56(%rbp), %rdx	# op1, tmp429
	movq	-40(%rbp), %rax	# ctype, tmp430
	movq	%rdx, %rsi	# tmp429,
	movq	%rax, %rdi	# tmp430,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-32(%rbp), %rdx	# t1, tmp431
	movq	-40(%rbp), %rax	# ctype, tmp432
	movq	%rdx, %rsi	# tmp431,
	movq	%rax, %rdi	# tmp432,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rsi	# ctype, tmp433
	movl	-72(%rbp), %eax	# tcode, tmp434
	movq	%rbx, %rcx	# D.21052,
	movl	%eax, %edi	# tmp434,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L886:
	.loc 1 4705 0
	cmpl	$61, -72(%rbp)	#, tcode
	jne	.L887	#,
	.loc 1 4705 0 is_stmt 0 discriminator 1
	cmpl	$61, -100(%rbp)	#, code
	jne	.L887	#,
	.loc 1 4706 0 is_stmt 1
	movq	-112(%rbp), %rcx	# wide_type, tmp435
	movl	-100(%rbp), %edx	# code, tmp436
	movq	-96(%rbp), %rsi	# c, tmp437
	movq	-56(%rbp), %rax	# op1, tmp438
	movq	%rax, %rdi	# tmp438,
	call	extract_muldiv	#
	movq	%rax, -32(%rbp)	# tmp439, t1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L887	#,
	.loc 1 4707 0
	movq	-32(%rbp), %rdx	# t1, tmp440
	movq	-40(%rbp), %rax	# ctype, tmp441
	movq	%rdx, %rsi	# tmp440,
	movq	%rax, %rdi	# tmp441,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-64(%rbp), %rdx	# op0, tmp442
	movq	-40(%rbp), %rax	# ctype, tmp443
	movq	%rdx, %rsi	# tmp442,
	movq	%rax, %rdi	# tmp443,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rsi	# ctype, tmp444
	movl	-72(%rbp), %eax	# tcode, tmp445
	movq	%rbx, %rcx	# D.21052,
	movl	%eax, %edi	# tmp445,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L887:
	.loc 1 4709 0
	movq	-56(%rbp), %rax	# op1, tmp446
	movzbl	16(%rax), %eax	# op1_6->common.code, D.21047
	cmpb	$25, %al	#, D.21047
	je	.L888	#,
	.loc 1 4710 0
	movl	$0, %eax	#, D.21046
	jmp	.L833	#
.L888:
	.loc 1 4714 0
	movl	-72(%rbp), %eax	# tcode, tmp447
	cmpl	-100(%rbp), %eax	# code, tmp447
	jne	.L889	#,
	.loc 1 4715 0
	movq	-96(%rbp), %rdx	# c, tmp448
	movq	-40(%rbp), %rax	# ctype, tmp449
	movq	%rdx, %rsi	# tmp448,
	movq	%rax, %rdi	# tmp449,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-56(%rbp), %rdx	# op1, tmp450
	movq	-40(%rbp), %rax	# ctype, tmp451
	movq	%rdx, %rsi	# tmp450,
	movq	%rax, %rdi	# tmp451,
	call	convert	#
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.21052,
	movq	%rax, %rsi	# D.21052,
	movl	$61, %edi	#,
	call	const_binop	#
	movq	%rax, -32(%rbp)	# tmp452, t1
	cmpq	$0, -32(%rbp)	#, t1
	je	.L889	#,
	.loc 1 4717 0
	movq	-32(%rbp), %rax	# t1, tmp453
	movzbl	18(%rax), %eax	# *t1_196, D.21047
	andl	$8, %eax	#, D.21047
	testb	%al, %al	# D.21047
	jne	.L889	#,
	.loc 1 4718 0
	movq	-64(%rbp), %rdx	# op0, tmp454
	movq	-40(%rbp), %rax	# ctype, tmp455
	movq	%rdx, %rsi	# tmp454,
	movq	%rax, %rdi	# tmp455,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-32(%rbp), %rcx	# t1, tmp456
	movq	-40(%rbp), %rsi	# ctype, tmp457
	movl	-72(%rbp), %eax	# tcode, tmp458
	movl	%eax, %edi	# tmp458,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L889:
	.loc 1 4728 0
	movq	-40(%rbp), %rax	# ctype, tmp459
	movzbl	17(%rax), %eax	# *ctype_26, D.21047
	andl	$32, %eax	#, D.21047
	testb	%al, %al	# D.21047
	je	.L890	#,
	.loc 1 4729 0
	movq	-40(%rbp), %rax	# ctype, tmp460
	movzbl	16(%rax), %eax	# ctype_26->common.code, D.21047
	cmpb	$6, %al	#, D.21047
	jne	.L891	#,
	.loc 1 4729 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ctype, tmp461
	movzbl	62(%rax), %eax	# *ctype_26, D.21047
	andl	$2, %eax	#, D.21047
	testb	%al, %al	# D.21047
	je	.L891	#,
.L890:
	.loc 1 4730 0 is_stmt 1
	cmpl	$61, -100(%rbp)	#, code
	jne	.L892	#,
	.loc 1 4730 0 is_stmt 0 discriminator 1
	cmpl	$71, -72(%rbp)	#, tcode
	je	.L893	#,
.L892:
	.loc 1 4731 0 is_stmt 1
	cmpl	$61, -72(%rbp)	#, tcode
	jne	.L891	#,
	.loc 1 4732 0
	cmpl	$66, -100(%rbp)	#, code
	je	.L891	#,
	.loc 1 4732 0 is_stmt 0 discriminator 1
	cmpl	$67, -100(%rbp)	#, code
	je	.L891	#,
	.loc 1 4733 0 is_stmt 1
	cmpl	$68, -100(%rbp)	#, code
	je	.L891	#,
	.loc 1 4733 0 is_stmt 0 discriminator 1
	cmpl	$69, -100(%rbp)	#, code
	je	.L891	#,
.L893:
	.loc 1 4735 0 is_stmt 1
	movq	-96(%rbp), %rdx	# c, tmp462
	movq	-56(%rbp), %rax	# op1, tmp463
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp463,
	movl	$66, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21052,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21049
	je	.L894	#,
	.loc 1 4736 0
	movq	-96(%rbp), %rdx	# c, tmp464
	movq	-56(%rbp), %rax	# op1, tmp465
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp465,
	movl	$62, %edi	#,
	call	const_binop	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rax	# ctype, tmp466
	movq	%rdx, %rsi	# D.21052,
	movq	%rax, %rdi	# tmp466,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-64(%rbp), %rdx	# op0, tmp467
	movq	-40(%rbp), %rax	# ctype, tmp468
	movq	%rdx, %rsi	# tmp467,
	movq	%rax, %rdi	# tmp468,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rsi	# ctype, tmp469
	movl	-72(%rbp), %eax	# tcode, tmp470
	movq	%rbx, %rcx	# D.21052,
	movl	%eax, %edi	# tmp470,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L894:
	.loc 1 4740 0
	movq	-56(%rbp), %rdx	# op1, tmp471
	movq	-96(%rbp), %rax	# c, tmp472
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp472,
	movl	$66, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21052,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21049
	je	.L891	#,
	.loc 1 4741 0
	movq	-56(%rbp), %rdx	# op1, tmp473
	movq	-96(%rbp), %rax	# c, tmp474
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp474,
	movl	$62, %edi	#,
	call	const_binop	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rax	# ctype, tmp475
	movq	%rdx, %rsi	# D.21052,
	movq	%rax, %rdi	# tmp475,
	call	convert	#
	movq	%rax, %rbx	#, D.21052
	movq	-64(%rbp), %rdx	# op0, tmp476
	movq	-40(%rbp), %rax	# ctype, tmp477
	movq	%rdx, %rsi	# tmp476,
	movq	%rax, %rdi	# tmp477,
	call	convert	#
	movq	%rax, %rdx	#, D.21052
	movq	-40(%rbp), %rsi	# ctype, tmp478
	movl	-100(%rbp), %eax	# code, tmp479
	movq	%rbx, %rcx	# D.21052,
	movl	%eax, %edi	# tmp479,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21052,
	call	fold	#
	jmp	.L833	#
.L891:
	.loc 1 4746 0
	jmp	.L850	#
.L895:
	.loc 1 4749 0
	nop
.L850:
	.loc 1 4752 0
	movl	$0, %eax	#, D.21046
.L833:
	.loc 1 4753 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	extract_muldiv, .-extract_muldiv
	.type	strip_compound_expr, @function
strip_compound_expr:
.LFB54:
	.loc 1 4763 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# t, t
	movq	%rsi, -32(%rbp)	# s, s
	.loc 1 4764 0
	movq	-24(%rbp), %rax	# t, tmp84
	movzbl	16(%rax), %eax	# t_2(D)->common.code, D.21061
	movzbl	%al, %eax	# D.21061, tmp85
	movl	%eax, -4(%rbp)	# tmp85, code
	.loc 1 4767 0
	cmpl	$47, -4(%rbp)	#, code
	jne	.L897	#,
	.loc 1 4767 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t, tmp86
	movq	32(%rax), %rax	# t_2(D)->exp.operands, D.21062
	movzbl	16(%rax), %eax	# _5->common.code, D.21061
	cmpb	$114, %al	#, D.21061
	jne	.L897	#,
	.loc 1 4768 0 is_stmt 1
	movq	-24(%rbp), %rax	# t, tmp87
	movq	32(%rax), %rax	# t_2(D)->exp.operands, D.21062
	movq	32(%rax), %rax	# _7->exp.operands, D.21062
	cmpq	-32(%rbp), %rax	# s, D.21062
	jne	.L897	#,
	.loc 1 4769 0
	movq	-24(%rbp), %rax	# t, tmp88
	movq	40(%rax), %rax	# t_2(D)->exp.operands, D.21060
	jmp	.L898	#
.L897:
	.loc 1 4773 0
	cmpl	$51, -4(%rbp)	#, code
	jne	.L899	#,
	.loc 1 4775 0
	movq	-24(%rbp), %rax	# t, tmp89
	movq	32(%rax), %rax	# t_2(D)->exp.operands, D.21062
	movq	-32(%rbp), %rdx	# s, tmp90
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# D.21062,
	call	strip_compound_expr	#
	movq	-24(%rbp), %rdx	# t, tmp91
	movq	%rax, 32(%rdx)	# D.21062, t_2(D)->exp.operands
	.loc 1 4776 0
	movq	-24(%rbp), %rax	# t, tmp92
	movq	40(%rax), %rax	# t_2(D)->exp.operands, D.21062
	movq	-32(%rbp), %rdx	# s, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.21062,
	call	strip_compound_expr	#
	movq	-24(%rbp), %rdx	# t, tmp94
	movq	%rax, 40(%rdx)	# D.21062, t_2(D)->exp.operands
	.loc 1 4777 0
	movq	-24(%rbp), %rax	# t, tmp95
	movq	48(%rax), %rax	# t_2(D)->exp.operands, D.21062
	movq	-32(%rbp), %rdx	# s, tmp96
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# D.21062,
	call	strip_compound_expr	#
	movq	-24(%rbp), %rdx	# t, tmp97
	movq	%rax, 48(%rdx)	# D.21062, t_2(D)->exp.operands
	jmp	.L900	#
.L899:
	.loc 1 4779 0
	movl	-4(%rbp), %eax	# code, code.440
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21063
	cmpb	$49, %al	#, D.21063
	jne	.L901	#,
	.loc 1 4780 0
	movq	-24(%rbp), %rax	# t, tmp99
	movq	32(%rax), %rax	# t_2(D)->exp.operands, D.21062
	movq	-32(%rbp), %rdx	# s, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# D.21062,
	call	strip_compound_expr	#
	movq	-24(%rbp), %rdx	# t, tmp101
	movq	%rax, 32(%rdx)	# D.21062, t_2(D)->exp.operands
	jmp	.L900	#
.L901:
	.loc 1 4781 0
	movl	-4(%rbp), %eax	# code, code.441
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21063
	cmpb	$60, %al	#, D.21063
	je	.L902	#,
	.loc 1 4782 0
	movl	-4(%rbp), %eax	# code, code.442
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21063
	cmpb	$50, %al	#, D.21063
	jne	.L900	#,
.L902:
	.loc 1 4784 0
	movq	-24(%rbp), %rax	# t, tmp104
	movq	32(%rax), %rax	# t_2(D)->exp.operands, D.21062
	movq	-32(%rbp), %rdx	# s, tmp105
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# D.21062,
	call	strip_compound_expr	#
	movq	-24(%rbp), %rdx	# t, tmp106
	movq	%rax, 32(%rdx)	# D.21062, t_2(D)->exp.operands
	.loc 1 4785 0
	movq	-24(%rbp), %rax	# t, tmp107
	movq	40(%rax), %rax	# t_2(D)->exp.operands, D.21062
	movq	-32(%rbp), %rdx	# s, tmp108
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# D.21062,
	call	strip_compound_expr	#
	movq	-24(%rbp), %rdx	# t, tmp109
	movq	%rax, 40(%rdx)	# D.21062, t_2(D)->exp.operands
.L900:
	.loc 1 4788 0
	movq	-24(%rbp), %rax	# t, D.21060
.L898:
	.loc 1 4789 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	strip_compound_expr, .-strip_compound_expr
	.type	constant_boolean_node, @function
constant_boolean_node:
.LFB55:
	.loc 1 4798 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# value, value
	movq	%rsi, -32(%rbp)	# type, type
	.loc 1 4799 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21065
	cmpq	-32(%rbp), %rax	# type, D.21065
	jne	.L904	#,
	.loc 1 4800 0
	cmpl	$0, -20(%rbp)	#, value
	je	.L905	#,
	.loc 1 4800 0 is_stmt 0 discriminator 1
	movq	global_trees+96(%rip), %rax	# global_trees, iftmp.443
	jmp	.L906	#
.L905:
	.loc 1 4800 0 discriminator 2
	movq	global_trees+88(%rip), %rax	# global_trees, iftmp.443
.L906:
	.loc 1 4800 0 discriminator 3
	jmp	.L907	#
.L904:
	.loc 1 4801 0 is_stmt 1
	movq	-32(%rbp), %rax	# type, tmp66
	movzbl	16(%rax), %eax	# type_5(D)->common.code, D.21066
	cmpb	$11, %al	#, D.21066
	jne	.L908	#,
	.loc 1 4802 0
	cmpl	$0, -20(%rbp)	#, value
	je	.L909	#,
	.loc 1 4802 0 is_stmt 0 discriminator 1
	movq	global_trees+96(%rip), %rax	# global_trees, iftmp.444
	jmp	.L910	#
.L909:
	.loc 1 4802 0 discriminator 2
	movq	global_trees+88(%rip), %rax	# global_trees, iftmp.444
.L910:
	.loc 1 4802 0 discriminator 3
	movq	%rax, %rdi	# iftmp.444,
	call	truthvalue_conversion	#
	jmp	.L907	#
.L908:
.LBB20:
	.loc 1 4806 0 is_stmt 1
	movl	-20(%rbp), %eax	# value, tmp67
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21067,
	call	build_int_2_wide	#
	movq	%rax, -8(%rbp)	# tmp68, t
	.loc 1 4808 0
	movq	-8(%rbp), %rax	# t, tmp69
	movq	-32(%rbp), %rdx	# type, tmp70
	movq	%rdx, 8(%rax)	# tmp70, t_15->common.type
	.loc 1 4809 0
	movq	-8(%rbp), %rax	# t, D.21064
.L907:
.LBE20:
	.loc 1 4811 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	constant_boolean_node, .-constant_boolean_node
	.type	count_cond, @function
count_cond:
.LFB56:
	.loc 1 4821 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# expr, expr
	movl	%esi, -28(%rbp)	# lim, lim
	.loc 1 4824 0
	movq	-24(%rbp), %rax	# expr, tmp69
	movzbl	16(%rax), %eax	# expr_2(D)->common.code, D.21069
	cmpb	$51, %al	#, D.21069
	je	.L912	#,
	.loc 1 4825 0
	movl	$0, %eax	#, D.21068
	jmp	.L913	#
.L912:
	.loc 1 4826 0
	cmpl	$0, -28(%rbp)	#, lim
	jg	.L914	#,
	.loc 1 4827 0
	movl	$0, %eax	#, D.21068
	jmp	.L913	#
.L914:
	.loc 1 4829 0
	movl	-28(%rbp), %eax	# lim, tmp70
	leal	-1(%rax), %edx	#, D.21068
	movq	-24(%rbp), %rax	# expr, tmp71
	movq	40(%rax), %rax	# expr_2(D)->exp.operands, D.21070
	movl	%edx, %esi	# D.21068,
	movq	%rax, %rdi	# D.21070,
	call	count_cond	#
	movl	%eax, -8(%rbp)	# tmp72, ctrue
	.loc 1 4830 0
	movl	-28(%rbp), %eax	# lim, tmp73
	subl	$1, %eax	#, D.21068
	subl	-8(%rbp), %eax	# ctrue, D.21068
	movl	%eax, %edx	# D.21068, D.21068
	movq	-24(%rbp), %rax	# expr, tmp74
	movq	48(%rax), %rax	# expr_2(D)->exp.operands, D.21070
	movl	%edx, %esi	# D.21068,
	movq	%rax, %rdi	# D.21070,
	call	count_cond	#
	movl	%eax, -4(%rbp)	# tmp75, cfalse
	.loc 1 4831 0
	movl	-8(%rbp), %eax	# ctrue, tmp76
	leal	1(%rax), %edx	#, D.21068
	movl	-4(%rbp), %eax	# cfalse, tmp77
	addl	%eax, %edx	# tmp77, D.21068
	movl	-28(%rbp), %eax	# lim, tmp78
	cmpl	%eax, %edx	# tmp78, D.21068
	cmovle	%edx, %eax	# D.21068,, D.21068
.L913:
	.loc 1 4832 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	count_cond, .-count_cond
	.type	fold_binary_op_with_conditional_arg, @function
fold_binary_op_with_conditional_arg:
.LFB57:
	.loc 1 4849 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -132(%rbp)	# code, code
	movq	%rsi, -144(%rbp)	# type, type
	movq	%rdx, -152(%rbp)	# cond, cond
	movq	%rcx, -160(%rbp)	# arg, arg
	movl	%r8d, -136(%rbp)	# cond_first_p, cond_first_p
	.loc 1 4851 0
	movq	$0, -88(%rbp)	#, lhs
	.loc 1 4852 0
	movq	$0, -80(%rbp)	#, rhs
	.loc 1 4867 0
	movl	-132(%rbp), %eax	# code, tmp117
	movl	%eax, -120(%rbp)	# tmp117, lhs_code
	.loc 1 4868 0
	movl	-132(%rbp), %eax	# code, tmp118
	movl	%eax, -116(%rbp)	# tmp118, rhs_code
	.loc 1 4870 0
	movq	-144(%rbp), %rax	# type, tmp119
	movq	%rax, -40(%rbp)	# tmp119, lhs_type
	.loc 1 4871 0
	movq	-144(%rbp), %rax	# type, tmp120
	movq	%rax, -32(%rbp)	# tmp120, rhs_type
	.loc 1 4873 0
	cmpl	$0, -136(%rbp)	#, cond_first_p
	je	.L916	#,
	.loc 1 4875 0
	leaq	-160(%rbp), %rax	#, tmp121
	movq	%rax, -48(%rbp)	# tmp121, false_rhs
	movq	-48(%rbp), %rax	# false_rhs, tmp122
	movq	%rax, -64(%rbp)	# tmp122, true_rhs
	.loc 1 4876 0
	leaq	-112(%rbp), %rax	#, tmp123
	movq	%rax, -72(%rbp)	# tmp123, true_lhs
	.loc 1 4877 0
	leaq	-104(%rbp), %rax	#, tmp124
	movq	%rax, -56(%rbp)	# tmp124, false_lhs
	jmp	.L917	#
.L916:
	.loc 1 4881 0
	leaq	-160(%rbp), %rax	#, tmp125
	movq	%rax, -56(%rbp)	# tmp125, false_lhs
	movq	-56(%rbp), %rax	# false_lhs, tmp126
	movq	%rax, -72(%rbp)	# tmp126, true_lhs
	.loc 1 4882 0
	leaq	-112(%rbp), %rax	#, tmp127
	movq	%rax, -64(%rbp)	# tmp127, true_rhs
	.loc 1 4883 0
	leaq	-104(%rbp), %rax	#, tmp128
	movq	%rax, -48(%rbp)	# tmp128, false_rhs
.L917:
	.loc 1 4886 0
	movq	-152(%rbp), %rax	# cond, tmp129
	movzbl	16(%rax), %eax	# cond_38(D)->common.code, D.21072
	cmpb	$51, %al	#, D.21072
	jne	.L918	#,
	.loc 1 4888 0
	movq	-152(%rbp), %rax	# cond, tmp130
	movq	32(%rax), %rax	# cond_38(D)->exp.operands, tmp131
	movq	%rax, -96(%rbp)	# tmp131, test
	.loc 1 4889 0
	movq	-152(%rbp), %rax	# cond, tmp132
	movq	40(%rax), %rax	# cond_38(D)->exp.operands, true_value.445
	movq	%rax, -112(%rbp)	# true_value.445, true_value
	.loc 1 4890 0
	movq	-152(%rbp), %rax	# cond, tmp133
	movq	48(%rax), %rax	# cond_38(D)->exp.operands, false_value.446
	movq	%rax, -104(%rbp)	# false_value.446, false_value
	.loc 1 4895 0
	movq	-112(%rbp), %rax	# true_value, true_value.447
	movq	8(%rax), %rax	# true_value.447_43->common.type, D.21073
	movzbl	16(%rax), %eax	# _44->common.code, D.21072
	cmpb	$5, %al	#, D.21072
	jne	.L919	#,
	.loc 1 4897 0
	movl	$47, -120(%rbp)	#, lhs_code
	.loc 1 4898 0
	cmpl	$0, -136(%rbp)	#, cond_first_p
	jne	.L919	#,
	.loc 1 4899 0
	movq	global_trees+216(%rip), %rax	# global_trees, tmp134
	movq	%rax, -40(%rbp)	# tmp134, lhs_type
.L919:
	.loc 1 4901 0
	movq	-104(%rbp), %rax	# false_value, false_value.448
	movq	8(%rax), %rax	# false_value.448_48->common.type, D.21073
	movzbl	16(%rax), %eax	# _49->common.code, D.21072
	cmpb	$5, %al	#, D.21072
	jne	.L921	#,
	.loc 1 4903 0
	movl	$47, -116(%rbp)	#, rhs_code
	.loc 1 4904 0
	cmpl	$0, -136(%rbp)	#, cond_first_p
	jne	.L921	#,
	.loc 1 4905 0
	movq	global_trees+216(%rip), %rax	# global_trees, tmp135
	movq	%rax, -32(%rbp)	# tmp135, rhs_type
	jmp	.L921	#
.L918:
.LBB21:
	.loc 1 4910 0
	movq	-152(%rbp), %rax	# cond, tmp136
	movq	8(%rax), %rax	# cond_38(D)->common.type, tmp137
	movq	%rax, -24(%rbp)	# tmp137, testtype
	.loc 1 4911 0
	movq	-152(%rbp), %rax	# cond, tmp138
	movq	%rax, -96(%rbp)	# tmp138, test
	.loc 1 4912 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21073
	movq	-24(%rbp), %rax	# testtype, tmp139
	movq	%rdx, %rsi	# D.21073,
	movq	%rax, %rdi	# tmp139,
	call	convert	#
	movq	%rax, -112(%rbp)	# true_value.449, true_value
	.loc 1 4913 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21073
	movq	-24(%rbp), %rax	# testtype, tmp140
	movq	%rdx, %rsi	# D.21073,
	movq	%rax, %rdi	# tmp140,
	call	convert	#
	movq	%rax, -104(%rbp)	# false_value.450, false_value
.L921:
.LBE21:
	.loc 1 4930 0
	movq	-160(%rbp), %rax	# arg, arg.451
	movzbl	16(%rax), %eax	# arg.451_59->common.code, D.21072
	cmpb	$118, %al	#, D.21072
	je	.L922	#,
	.loc 1 4930 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# arg, arg.452
	movzbl	17(%rax), %eax	# *arg.452_61, D.21072
	andl	$2, %eax	#, D.21072
	testb	%al, %al	# D.21072
	jne	.L922	#,
	.loc 1 4931 0 is_stmt 1
	call	global_bindings_p	#
	testl	%eax, %eax	# D.21074
	jne	.L922	#,
	.loc 1 4932 0
	movq	-160(%rbp), %rax	# arg, arg.453
	movzbl	16(%rax), %eax	# arg.453_65->common.code, D.21072
	cmpb	$34, %al	#, D.21072
	je	.L923	#,
	.loc 1 4933 0
	movq	-160(%rbp), %rax	# arg, arg.454
	movzbl	16(%rax), %eax	# arg.454_67->common.code, D.21072
	cmpb	$35, %al	#, D.21072
	jne	.L924	#,
.L923:
	.loc 1 4934 0
	movq	-160(%rbp), %rax	# arg, arg.455
	movzbl	17(%rax), %eax	# *arg.455_69, D.21072
	andl	$1, %eax	#, D.21072
	testb	%al, %al	# D.21072
	je	.L922	#,
.L924:
	.loc 1 4936 0
	movq	-112(%rbp), %rax	# true_value, true_value.456
	movzbl	16(%rax), %eax	# true_value.456_72->common.code, D.21072
	cmpb	$51, %al	#, D.21072
	je	.L925	#,
	.loc 1 4937 0
	movq	-64(%rbp), %rax	# true_rhs, tmp141
	movq	(%rax), %rcx	# *true_rhs_9, D.21073
	movq	-72(%rbp), %rax	# true_lhs, tmp142
	movq	(%rax), %rdx	# *true_lhs_8, D.21073
	movq	-40(%rbp), %rsi	# lhs_type, tmp143
	movl	-120(%rbp), %eax	# lhs_code, tmp144
	movl	%eax, %edi	# tmp144,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21073,
	call	fold	#
	movq	%rax, -88(%rbp)	# tmp145, lhs
.L925:
	.loc 1 4939 0
	movq	-104(%rbp), %rax	# false_value, false_value.457
	movzbl	16(%rax), %eax	# false_value.457_78->common.code, D.21072
	cmpb	$51, %al	#, D.21072
	je	.L926	#,
	.loc 1 4940 0
	movq	-48(%rbp), %rax	# false_rhs, tmp146
	movq	(%rax), %rcx	# *false_rhs_11, D.21073
	movq	-56(%rbp), %rax	# false_lhs, tmp147
	movq	(%rax), %rdx	# *false_lhs_10, D.21073
	movq	-32(%rbp), %rsi	# rhs_type, tmp148
	movl	-116(%rbp), %eax	# rhs_code, tmp149
	movl	%eax, %edi	# tmp149,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21073,
	call	fold	#
	movq	%rax, -80(%rbp)	# tmp150, rhs
.L926:
	.loc 1 4942 0
	cmpq	$0, -88(%rbp)	#, lhs
	je	.L927	#,
	.loc 1 4942 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# lhs, tmp151
	movzbl	17(%rax), %eax	# *lhs_2, D.21072
	andl	$2, %eax	#, D.21072
	testb	%al, %al	# D.21072
	jne	.L922	#,
.L927:
	.loc 1 4943 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, rhs
	je	.L928	#,
	.loc 1 4943 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# rhs, tmp152
	movzbl	17(%rax), %eax	# *rhs_5, D.21072
	andl	$2, %eax	#, D.21072
	testb	%al, %al	# D.21072
	jne	.L922	#,
.L928:
	.loc 1 4944 0 is_stmt 1
	movq	-160(%rbp), %rax	# arg, arg.458
	movq	%rax, %rdi	# arg.458,
	call	save_expr	#
	movq	%rax, -160(%rbp)	# arg.459, arg
	movq	$0, -80(%rbp)	#, rhs
	movq	-80(%rbp), %rax	# rhs, tmp153
	movq	%rax, -88(%rbp)	# tmp153, lhs
.L922:
	.loc 1 4947 0
	cmpq	$0, -88(%rbp)	#, lhs
	jne	.L929	#,
	.loc 1 4948 0
	movq	-64(%rbp), %rax	# true_rhs, tmp154
	movq	(%rax), %rcx	# *true_rhs_9, D.21073
	movq	-72(%rbp), %rax	# true_lhs, tmp155
	movq	(%rax), %rdx	# *true_lhs_8, D.21073
	movq	-40(%rbp), %rsi	# lhs_type, tmp156
	movl	-120(%rbp), %eax	# lhs_code, tmp157
	movl	%eax, %edi	# tmp157,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21073,
	call	fold	#
	movq	%rax, -88(%rbp)	# tmp158, lhs
.L929:
	.loc 1 4949 0
	cmpq	$0, -80(%rbp)	#, rhs
	jne	.L930	#,
	.loc 1 4950 0
	movq	-48(%rbp), %rax	# false_rhs, tmp159
	movq	(%rax), %rcx	# *false_rhs_11, D.21073
	movq	-56(%rbp), %rax	# false_lhs, tmp160
	movq	(%rax), %rdx	# *false_lhs_10, D.21073
	movq	-32(%rbp), %rsi	# rhs_type, tmp161
	movl	-116(%rbp), %eax	# rhs_code, tmp162
	movl	%eax, %edi	# tmp162,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21073,
	call	fold	#
	movq	%rax, -80(%rbp)	# tmp163, rhs
.L930:
	.loc 1 4952 0
	movq	-80(%rbp), %rsi	# rhs, tmp164
	movq	-88(%rbp), %rcx	# lhs, tmp165
	movq	-96(%rbp), %rdx	# test, tmp166
	movq	-144(%rbp), %rax	# type, tmp167
	movq	%rsi, %r8	# tmp164,
	movq	%rax, %rsi	# tmp167,
	movl	$51, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21073,
	call	fold	#
	movq	%rax, -96(%rbp)	# tmp168, test
	.loc 1 4954 0
	movq	-160(%rbp), %rax	# arg, arg.460
	movzbl	16(%rax), %eax	# arg.460_102->common.code, D.21072
	cmpb	$118, %al	#, D.21072
	jne	.L931	#,
	.loc 1 4955 0
	movq	-160(%rbp), %rdx	# arg, arg.461
	movq	-96(%rbp), %rax	# test, tmp169
	movq	%rdx, %rsi	# arg.461,
	movq	%rax, %rdi	# tmp169,
	call	strip_compound_expr	#
	movq	%rax, %rbx	#, D.21073
	movq	-160(%rbp), %rdx	# arg, arg.462
	movq	global_trees+216(%rip), %rax	# global_trees, D.21073
	movq	%rdx, %rsi	# arg.462,
	movq	%rax, %rdi	# D.21073,
	call	convert	#
	movq	%rax, %rdx	#, D.21073
	movq	-144(%rbp), %rax	# type, tmp170
	movq	%rbx, %rcx	# D.21073,
	movq	%rax, %rsi	# tmp170,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L933	#
.L931:
	.loc 1 4959 0
	movq	-96(%rbp), %rdx	# test, tmp171
	movq	-144(%rbp), %rax	# type, tmp172
	movq	%rdx, %rsi	# tmp171,
	movq	%rax, %rdi	# tmp172,
	call	convert	#
.L933:
	.loc 1 4960 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	fold_binary_op_with_conditional_arg, .-fold_binary_op_with_conditional_arg
	.globl	fold
	.type	fold, @function
fold:
.LFB58:
	.loc 1 4974 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$944, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -904(%rbp)	# expr, expr
	.loc 1 4975 0
	movq	-904(%rbp), %rax	# expr, tmp1918
	movq	%rax, -720(%rbp)	# tmp1918, t
	.loc 1 4976 0
	movq	$0, -712(%rbp)	#, t1
	.loc 1 4978 0
	movq	-904(%rbp), %rax	# expr, tmp1919
	movq	8(%rax), %rax	# expr_149(D)->common.type, tmp1920
	movq	%rax, -456(%rbp)	# tmp1920, type
	.loc 1 4979 0
	movq	$0, -704(%rbp)	#, arg0
	movq	$0, -696(%rbp)	#, arg1
	.loc 1 4980 0
	movq	-720(%rbp), %rax	# t, tmp1921
	movzbl	16(%rax), %eax	# t_150->common.code, D.21076
	movzbl	%al, %eax	# D.21076, tmp1922
	movl	%eax, -892(%rbp)	# tmp1922, code
	.loc 1 4981 0
	movl	-892(%rbp), %eax	# code, code.463
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	movsbl	%al, %eax	# D.21077, tmp1924
	movl	%eax, -872(%rbp)	# tmp1924, kind
	.loc 1 4985 0
	movl	$1, -884(%rbp)	#, wins
	.loc 1 4989 0
	cmpl	$120, -892(%rbp)	#, code
	je	.L935	#,
	.loc 1 4989 0 is_stmt 0 discriminator 1
	cmpl	$118, -892(%rbp)	#, code
	jne	.L936	#,
	movq	-720(%rbp), %rax	# t, tmp1925
	addq	$48, %rax	#, D.21078
	movq	(%rax), %rax	# MEM[(struct rtx_def * *)_161], D.21079
	testq	%rax, %rax	# D.21079
	je	.L936	#,
.L935:
	.loc 1 4990 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L936:
	.loc 1 4993 0
	cmpl	$99, -872(%rbp)	#, kind
	jne	.L938	#,
	.loc 1 4994 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L938:
	.loc 1 5000 0
	cmpl	$115, -892(%rbp)	#, code
	je	.L939	#,
	.loc 1 5000 0 is_stmt 0 discriminator 1
	cmpl	$76, -892(%rbp)	#, code
	je	.L939	#,
	cmpl	$114, -892(%rbp)	#, code
	jne	.L940	#,
.L939:
.LBB22:
	.loc 1 5005 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, tmp1926
	movq	32(%rax), %rax	# t_150->exp.operands, tmp1927
	movq	%rax, -704(%rbp)	# tmp1927, arg0
	.loc 1 5008 0
	cmpq	$0, -704(%rbp)	#, arg0
	je	.L941	#,
	.loc 1 5009 0
	jmp	.L942	#
.L944:
	.loc 1 5009 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp1928
	movq	32(%rax), %rax	# arg0_20->exp.operands, tmp1929
	movq	%rax, -704(%rbp)	# tmp1929, arg0
.L942:
	movq	-704(%rbp), %rax	# arg0, tmp1930
	movzbl	16(%rax), %eax	# arg0_20->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L943	#,
	.loc 1 5009 0 discriminator 3
	movq	-704(%rbp), %rax	# arg0, tmp1931
	movzbl	16(%rax), %eax	# arg0_20->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L943	#,
	.loc 1 5009 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp1932
	movzbl	16(%rax), %eax	# arg0_20->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L941	#,
.L943:
	.loc 1 5009 0 discriminator 2
	movq	-704(%rbp), %rax	# arg0, tmp1933
	movq	32(%rax), %rdx	# arg0_20->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L941	#,
	.loc 1 5009 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp1934
	movq	8(%rax), %rax	# arg0_20->common.type, D.21080
	movzbl	61(%rax), %eax	# *_209, tmp1937
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-704(%rbp), %rax	# arg0, tmp1938
	movq	32(%rax), %rax	# arg0_20->exp.operands, D.21080
	movq	8(%rax), %rax	# _211->common.type, D.21080
	movzbl	61(%rax), %eax	# *_212, tmp1941
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	jne	.L941	#,
	movq	-704(%rbp), %rax	# arg0, tmp1942
	movq	8(%rax), %rax	# arg0_20->common.type, D.21080
	movzbl	17(%rax), %eax	# *_214, tmp1945
	shrb	$5, %al	#, D.21082
	movl	%eax, %edx	# D.21082, D.21082
	andl	$1, %edx	#, D.21082
	movq	-704(%rbp), %rax	# arg0, tmp1946
	movq	32(%rax), %rax	# arg0_20->exp.operands, D.21080
	movq	8(%rax), %rax	# _216->common.type, D.21080
	movzbl	17(%rax), %eax	# *_217, tmp1949
	shrb	$5, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	cmpb	%al, %dl	# D.21082, D.21082
	je	.L944	#,
.L941:
	.loc 1 5011 0 is_stmt 1
	cmpq	$0, -704(%rbp)	#, arg0
	je	.L945	#,
	.loc 1 5011 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp1950
	movzbl	16(%rax), %eax	# arg0_21->common.code, D.21076
	cmpb	$27, %al	#, D.21076
	jne	.L945	#,
	.loc 1 5012 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp1951
	movq	32(%rax), %rax	# arg0_21->complex.real, tmp1952
	movq	%rax, -688(%rbp)	# tmp1952, subop
	jmp	.L946	#
.L945:
	.loc 1 5014 0
	movq	-704(%rbp), %rax	# arg0, tmp1953
	movq	%rax, -688(%rbp)	# tmp1953, subop
.L946:
	.loc 1 5016 0
	cmpq	$0, -688(%rbp)	#, subop
	je	.L947	#,
	.loc 1 5016 0 is_stmt 0 discriminator 1
	movq	-688(%rbp), %rax	# subop, tmp1954
	movzbl	16(%rax), %eax	# subop_68->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	je	.L947	#,
	.loc 1 5018 0 is_stmt 1
	movq	-688(%rbp), %rax	# subop, tmp1955
	movzbl	16(%rax), %eax	# subop_68->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	je	.L947	#,
	.loc 1 5024 0
	movl	$0, -884(%rbp)	#, wins
.LBE22:
	.loc 1 5001 0
	jmp	.L948	#
.L947:
	jmp	.L948	#
.L940:
	.loc 1 5026 0
	cmpl	$60, -872(%rbp)	#, kind
	je	.L949	#,
	.loc 1 5026 0 is_stmt 0 discriminator 1
	cmpl	$49, -872(%rbp)	#, kind
	je	.L949	#,
	cmpl	$50, -872(%rbp)	#, kind
	je	.L949	#,
	cmpl	$101, -872(%rbp)	#, kind
	je	.L949	#,
	cmpl	$114, -872(%rbp)	#, kind
	jne	.L948	#,
.L949:
.LBB23:
	.loc 1 5028 0 is_stmt 1
	movl	-892(%rbp), %eax	# code, tmp1956
	movl	%eax, %edi	# tmp1956,
	call	first_rtl_op	#
	movl	%eax, -868(%rbp)	# tmp1957, len
	.loc 1 5030 0
	movl	$0, -880(%rbp)	#, i
	jmp	.L950	#
.L967:
.LBB24:
	.loc 1 5032 0
	movq	-720(%rbp), %rax	# t, tmp1958
	movl	-880(%rbp), %edx	# i, tmp1960
	movslq	%edx, %rdx	# tmp1960, tmp1959
	addq	$4, %rdx	#, tmp1961
	movq	(%rax,%rdx,8), %rax	# t_150->exp.operands, tmp1962
	movq	%rax, -680(%rbp)	# tmp1962, op
	.loc 1 5035 0
	cmpq	$0, -680(%rbp)	#, op
	jne	.L951	#,
	.loc 1 5036 0
	jmp	.L952	#
.L951:
	.loc 1 5038 0
	cmpl	$60, -872(%rbp)	#, kind
	je	.L953	#,
	.loc 1 5038 0 is_stmt 0 discriminator 1
	cmpl	$83, -892(%rbp)	#, code
	jne	.L954	#,
.L953:
	.loc 1 5042 0 is_stmt 1
	jmp	.L955	#
.L958:
	.loc 1 5042 0 is_stmt 0 discriminator 1
	movq	-680(%rbp), %rax	# op, tmp1963
	movq	32(%rax), %rax	# op_70->exp.operands, tmp1964
	movq	%rax, -680(%rbp)	# tmp1964, op
.L955:
	movq	-680(%rbp), %rax	# op, tmp1965
	movzbl	16(%rax), %eax	# op_70->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L956	#,
	.loc 1 5042 0 discriminator 3
	movq	-680(%rbp), %rax	# op, tmp1966
	movzbl	16(%rax), %eax	# op_70->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L956	#,
	.loc 1 5042 0 discriminator 1
	movq	-680(%rbp), %rax	# op, tmp1967
	movzbl	16(%rax), %eax	# op_70->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L957	#,
.L956:
	.loc 1 5042 0 discriminator 2
	movq	-680(%rbp), %rax	# op, tmp1968
	movq	32(%rax), %rdx	# op_70->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L957	#,
	.loc 1 5042 0 discriminator 1
	movq	-680(%rbp), %rax	# op, tmp1969
	movq	8(%rax), %rax	# op_70->common.type, D.21080
	movzbl	61(%rax), %eax	# *_183, tmp1972
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-680(%rbp), %rax	# op, tmp1973
	movq	32(%rax), %rax	# op_70->exp.operands, D.21080
	movq	8(%rax), %rax	# _185->common.type, D.21080
	movzbl	61(%rax), %eax	# *_186, tmp1976
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	jne	.L957	#,
	movq	-680(%rbp), %rax	# op, tmp1977
	movq	8(%rax), %rax	# op_70->common.type, D.21080
	movzbl	17(%rax), %eax	# *_188, tmp1980
	shrb	$5, %al	#, D.21082
	movl	%eax, %edx	# D.21082, D.21082
	andl	$1, %edx	#, D.21082
	movq	-680(%rbp), %rax	# op, tmp1981
	movq	32(%rax), %rax	# op_70->exp.operands, D.21080
	movq	8(%rax), %rax	# _190->common.type, D.21080
	movzbl	17(%rax), %eax	# *_191, tmp1984
	shrb	$5, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	cmpb	%al, %dl	# D.21082, D.21082
	je	.L958	#,
.L957:
	.loc 1 5038 0 is_stmt 1
	jmp	.L959	#
.L954:
	.loc 1 5046 0
	jmp	.L960	#
.L962:
	.loc 1 5046 0 is_stmt 0 discriminator 1
	movq	-680(%rbp), %rax	# op, tmp1985
	movq	32(%rax), %rax	# op_71->exp.operands, tmp1986
	movq	%rax, -680(%rbp)	# tmp1986, op
.L960:
	movq	-680(%rbp), %rax	# op, tmp1987
	movzbl	16(%rax), %eax	# op_71->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L961	#,
	.loc 1 5046 0 discriminator 3
	movq	-680(%rbp), %rax	# op, tmp1988
	movzbl	16(%rax), %eax	# op_71->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L961	#,
	.loc 1 5046 0 discriminator 1
	movq	-680(%rbp), %rax	# op, tmp1989
	movzbl	16(%rax), %eax	# op_71->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L959	#,
.L961:
	.loc 1 5046 0 discriminator 2
	movq	-680(%rbp), %rax	# op, tmp1990
	movq	32(%rax), %rdx	# op_71->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L959	#,
	.loc 1 5046 0 discriminator 1
	movq	-680(%rbp), %rax	# op, tmp1991
	movq	8(%rax), %rax	# op_71->common.type, D.21080
	movzbl	61(%rax), %eax	# *_172, tmp1994
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-680(%rbp), %rax	# op, tmp1995
	movq	32(%rax), %rax	# op_71->exp.operands, D.21080
	movq	8(%rax), %rax	# _174->common.type, D.21080
	movzbl	61(%rax), %eax	# *_175, tmp1998
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L962	#,
.L959:
	.loc 1 5048 0 is_stmt 1
	movq	-680(%rbp), %rax	# op, tmp1999
	movzbl	16(%rax), %eax	# op_72->common.code, D.21076
	cmpb	$27, %al	#, D.21076
	jne	.L963	#,
	.loc 1 5049 0
	movq	-680(%rbp), %rax	# op, tmp2000
	movq	32(%rax), %rax	# op_72->complex.real, tmp2001
	movq	%rax, -672(%rbp)	# tmp2001, subop
	jmp	.L964	#
.L963:
	.loc 1 5051 0
	movq	-680(%rbp), %rax	# op, tmp2002
	movq	%rax, -672(%rbp)	# tmp2002, subop
.L964:
	.loc 1 5053 0
	movq	-672(%rbp), %rax	# subop, tmp2003
	movzbl	16(%rax), %eax	# subop_73->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	je	.L965	#,
	.loc 1 5055 0
	movq	-672(%rbp), %rax	# subop, tmp2004
	movzbl	16(%rax), %eax	# subop_73->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	je	.L965	#,
	.loc 1 5061 0
	movl	$0, -884(%rbp)	#, wins
.L965:
	.loc 1 5063 0
	cmpl	$0, -880(%rbp)	#, i
	jne	.L966	#,
	.loc 1 5064 0
	movq	-680(%rbp), %rax	# op, tmp2005
	movq	%rax, -704(%rbp)	# tmp2005, arg0
	jmp	.L952	#
.L966:
	.loc 1 5065 0
	cmpl	$1, -880(%rbp)	#, i
	jne	.L952	#,
	.loc 1 5066 0
	movq	-680(%rbp), %rax	# op, tmp2006
	movq	%rax, -696(%rbp)	# tmp2006, arg1
.L952:
.LBE24:
	.loc 1 5030 0
	addl	$1, -880(%rbp)	#, i
.L950:
	.loc 1 5030 0 is_stmt 0 discriminator 1
	movl	-880(%rbp), %eax	# i, tmp2007
	cmpl	-868(%rbp), %eax	# len, tmp2007
	jl	.L967	#,
.L948:
.LBE23:
	.loc 1 5072 0 is_stmt 1
	cmpl	$59, -892(%rbp)	#, code
	je	.L968	#,
	.loc 1 5072 0 is_stmt 0 discriminator 1
	cmpl	$61, -892(%rbp)	#, code
	je	.L968	#,
	cmpl	$78, -892(%rbp)	#, code
	je	.L968	#,
	.loc 1 5073 0 is_stmt 1
	cmpl	$79, -892(%rbp)	#, code
	je	.L968	#,
	.loc 1 5073 0 is_stmt 0 discriminator 1
	cmpl	$86, -892(%rbp)	#, code
	je	.L968	#,
	cmpl	$87, -892(%rbp)	#, code
	je	.L968	#,
	.loc 1 5074 0 is_stmt 1
	cmpl	$88, -892(%rbp)	#, code
	jne	.L969	#,
.L968:
	.loc 1 5075 0
	movq	-704(%rbp), %rax	# arg0, tmp2008
	movzbl	16(%rax), %eax	# arg0_24->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	je	.L970	#,
	.loc 1 5075 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp2009
	movzbl	16(%rax), %eax	# arg0_24->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L969	#,
.L970:
	.loc 1 5077 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp2010
	movq	%rax, -448(%rbp)	# tmp2010, tem
	movq	-696(%rbp), %rax	# arg1, tmp2011
	movq	%rax, -704(%rbp)	# tmp2011, arg0
	movq	-448(%rbp), %rax	# tem, tmp2012
	movq	%rax, -696(%rbp)	# tmp2012, arg1
	.loc 1 5079 0
	movq	-720(%rbp), %rax	# t, tmp2013
	movq	32(%rax), %rax	# t_150->exp.operands, tmp2014
	movq	%rax, -448(%rbp)	# tmp2014, tem
	movq	-720(%rbp), %rax	# t, tmp2015
	movq	40(%rax), %rdx	# t_150->exp.operands, D.21080
	movq	-720(%rbp), %rax	# t, tmp2016
	movq	%rdx, 32(%rax)	# D.21080, t_150->exp.operands
	.loc 1 5080 0
	movq	-720(%rbp), %rax	# t, tmp2017
	movq	-448(%rbp), %rdx	# tem, tmp2018
	movq	%rdx, 40(%rax)	# tmp2018, t_150->exp.operands
.L969:
	.loc 1 5101 0
	cmpl	$88, -892(%rbp)	#, code
	je	.L971	#,
	.loc 1 5101 0 is_stmt 0 discriminator 1
	cmpl	$86, -892(%rbp)	#, code
	je	.L971	#,
	.loc 1 5102 0 is_stmt 1
	cmpl	$101, -892(%rbp)	#, code
	je	.L971	#,
	.loc 1 5102 0 is_stmt 0 discriminator 1
	cmpl	$102, -892(%rbp)	#, code
	jne	.L972	#,
.L971:
	.loc 1 5103 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp2019
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movl	%eax, %edi	# D.21083,
	call	truth_value_p	#
	testl	%eax, %eax	# D.21084
	je	.L973	#,
	.loc 1 5104 0
	movq	-696(%rbp), %rax	# arg1, tmp2020
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movl	%eax, %edi	# D.21083,
	call	truth_value_p	#
	testl	%eax, %eax	# D.21084
	jne	.L974	#,
	.loc 1 5105 0
	movq	-696(%rbp), %rax	# arg1, tmp2021
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L973	#,
	.loc 1 5106 0
	movq	-696(%rbp), %rax	# arg1, tmp2022
	movq	40(%rax), %rax	# arg1_33->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	jne	.L974	#,
.L973:
	.loc 1 5107 0
	movq	-696(%rbp), %rax	# arg1, tmp2023
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movl	%eax, %edi	# D.21083,
	call	truth_value_p	#
	testl	%eax, %eax	# D.21084
	je	.L972	#,
	.loc 1 5108 0
	movq	-704(%rbp), %rax	# arg0, tmp2024
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movl	%eax, %edi	# D.21083,
	call	truth_value_p	#
	testl	%eax, %eax	# D.21084
	jne	.L974	#,
	.loc 1 5109 0
	movq	-704(%rbp), %rax	# arg0, tmp2025
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L972	#,
	.loc 1 5110 0
	movq	-704(%rbp), %rax	# arg0, tmp2026
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L972	#,
.L974:
	.loc 1 5112 0
	cmpl	$88, -892(%rbp)	#, code
	je	.L975	#,
	.loc 1 5112 0 is_stmt 0 discriminator 1
	cmpl	$86, -892(%rbp)	#, code
	jne	.L976	#,
	.loc 1 5112 0 discriminator 3
	movl	$94, %eax	#, iftmp.465
	jmp	.L978	#
.L976:
	.loc 1 5112 0 discriminator 4
	movl	$95, %eax	#, iftmp.465
	jmp	.L978	#
.L975:
	.loc 1 5112 0 discriminator 2
	movl	$93, %eax	#, iftmp.464
.L978:
	.loc 1 5112 0 discriminator 5
	movq	-696(%rbp), %rcx	# arg1, tmp2027
	movq	-704(%rbp), %rdx	# arg0, tmp2028
	movq	-456(%rbp), %rsi	# type, tmp2029
	movl	%eax, %edi	# iftmp.464,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -720(%rbp)	# tmp2030, t
	.loc 1 5117 0 is_stmt 1 discriminator 5
	cmpl	$101, -892(%rbp)	#, code
	jne	.L979	#,
	.loc 1 5118 0
	movq	-720(%rbp), %rax	# t, tmp2031
	movq	%rax, %rdi	# tmp2031,
	call	invert_truthvalue	#
	movq	%rax, -720(%rbp)	# tmp2032, t
.L979:
	.loc 1 5120 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L972:
	.loc 1 5123 0
	movl	-892(%rbp), %eax	# code, code.466
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$49, %al	#, D.21077
	jne	.L980	#,
	.loc 1 5125 0
	movq	-704(%rbp), %rax	# arg0, tmp2034
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$47, %al	#, D.21076
	jne	.L981	#,
	.loc 1 5126 0
	movq	-704(%rbp), %rax	# arg0, tmp2035
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rcx	# type, tmp2036
	movl	-892(%rbp), %eax	# code, tmp2037
	movq	%rcx, %rsi	# tmp2036,
	movl	%eax, %edi	# tmp2037,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2038
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2039
	movq	%rax, %rsi	# tmp2039,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L981:
	.loc 1 5128 0
	movq	-704(%rbp), %rax	# arg0, tmp2040
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$51, %al	#, D.21076
	jne	.L982	#,
	.loc 1 5130 0
	movq	-704(%rbp), %rax	# arg0, tmp2041
	movq	48(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rcx	# type, tmp2042
	movl	-892(%rbp), %eax	# code, tmp2043
	movq	%rcx, %rsi	# tmp2042,
	movl	%eax, %edi	# tmp2043,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rbx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2044
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rcx	# type, tmp2045
	movl	-892(%rbp), %eax	# code, tmp2046
	movq	%rcx, %rsi	# tmp2045,
	movl	%eax, %edi	# tmp2046,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2047
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2048
	movq	%rbx, %r8	# D.21080,
	movq	%rax, %rsi	# tmp2048,
	movl	$51, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -720(%rbp)	# tmp2049, t
	.loc 1 5143 0
	cmpl	$115, -892(%rbp)	#, code
	je	.L983	#,
	.loc 1 5143 0 is_stmt 0 discriminator 1
	cmpl	$114, -892(%rbp)	#, code
	je	.L983	#,
	.loc 1 5144 0 is_stmt 1
	cmpl	$116, -892(%rbp)	#, code
	jne	.L984	#,
.L983:
	.loc 1 5145 0
	movq	-720(%rbp), %rax	# t, tmp2050
	movzbl	16(%rax), %eax	# t_276->common.code, D.21076
	cmpb	$51, %al	#, D.21076
	jne	.L984	#,
	.loc 1 5146 0
	movq	-720(%rbp), %rax	# t, tmp2051
	movq	40(%rax), %rax	# t_276->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _278->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21085
	cmpl	-892(%rbp), %eax	# code, D.21085
	jne	.L984	#,
	.loc 1 5147 0
	movq	-720(%rbp), %rax	# t, tmp2052
	movq	48(%rax), %rax	# t_276->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _281->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21085
	cmpl	-892(%rbp), %eax	# code, D.21085
	jne	.L984	#,
	.loc 1 5148 0
	movq	-720(%rbp), %rax	# t, tmp2053
	movq	40(%rax), %rax	# t_276->exp.operands, D.21080
	movq	32(%rax), %rax	# _284->exp.operands, D.21080
	movq	8(%rax), %rdx	# _285->common.type, D.21080
	.loc 1 5149 0
	movq	-720(%rbp), %rax	# t, tmp2054
	movq	48(%rax), %rax	# t_276->exp.operands, D.21080
	movq	32(%rax), %rax	# _287->exp.operands, D.21080
	movq	8(%rax), %rax	# _288->common.type, D.21080
	.loc 1 5148 0
	cmpq	%rax, %rdx	# D.21080, D.21080
	jne	.L984	#,
	.loc 1 5150 0
	movq	-720(%rbp), %rax	# t, tmp2055
	movq	8(%rax), %rax	# t_276->common.type, D.21080
	movzbl	16(%rax), %eax	# _290->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L985	#,
	.loc 1 5150 0 is_stmt 0 discriminator 1
	movq	-720(%rbp), %rax	# t, tmp2056
	movq	8(%rax), %rax	# t_276->common.type, D.21080
	movzbl	16(%rax), %eax	# _292->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L985	#,
	movq	-720(%rbp), %rax	# t, tmp2057
	movq	8(%rax), %rax	# t_276->common.type, D.21080
	movzbl	16(%rax), %eax	# _294->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L985	#,
	movq	-720(%rbp), %rax	# t, tmp2058
	movq	8(%rax), %rax	# t_276->common.type, D.21080
	movzbl	16(%rax), %eax	# _296->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L986	#,
.L985:
	.loc 1 5151 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, tmp2059
	movq	40(%rax), %rax	# t_276->exp.operands, D.21080
	movq	32(%rax), %rax	# _298->exp.operands, D.21080
	movq	8(%rax), %rax	# _299->common.type, D.21080
	movzbl	16(%rax), %eax	# _300->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L987	#,
	.loc 1 5151 0 is_stmt 0 discriminator 1
	movq	-720(%rbp), %rax	# t, tmp2060
	movq	40(%rax), %rax	# t_276->exp.operands, D.21080
	movq	32(%rax), %rax	# _302->exp.operands, D.21080
	movq	8(%rax), %rax	# _303->common.type, D.21080
	movzbl	16(%rax), %eax	# _304->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L987	#,
	movq	-720(%rbp), %rax	# t, tmp2061
	movq	40(%rax), %rax	# t_276->exp.operands, D.21080
	movq	32(%rax), %rax	# _306->exp.operands, D.21080
	movq	8(%rax), %rax	# _307->common.type, D.21080
	movzbl	16(%rax), %eax	# _308->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L987	#,
	movq	-720(%rbp), %rax	# t, tmp2062
	movq	40(%rax), %rax	# t_276->exp.operands, D.21080
	movq	32(%rax), %rax	# _310->exp.operands, D.21080
	movq	8(%rax), %rax	# _311->common.type, D.21080
	movzbl	16(%rax), %eax	# _312->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L986	#,
.L987:
	.loc 1 5153 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, tmp2063
	movq	8(%rax), %rax	# t_276->common.type, D.21080
	movzwl	60(%rax), %eax	# *_314, tmp2066
	andw	$511, %ax	#, D.21086
	movzwl	%ax, %edx	# D.21086, D.21084
	movl	target_flags(%rip), %eax	# target_flags, target_flags.468
	andl	$33554432, %eax	#, D.21084
	testl	%eax, %eax	# D.21084
	je	.L988	#,
	.loc 1 5153 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.467
	jmp	.L989	#
.L988:
	.loc 1 5153 0 discriminator 2
	movl	$32, %eax	#, iftmp.467
.L989:
	.loc 1 5150 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.467, D.21084
	jle	.L984	#,
.L986:
	.loc 1 5160 0
	movq	-720(%rbp), %rax	# t, tmp2067
	movq	48(%rax), %rax	# t_276->exp.operands, D.21080
	.loc 1 5154 0
	movq	32(%rax), %rsi	# _321->exp.operands, D.21080
	.loc 1 5159 0
	movq	-720(%rbp), %rax	# t, tmp2068
	movq	40(%rax), %rax	# t_276->exp.operands, D.21080
	.loc 1 5154 0
	movq	32(%rax), %rcx	# _323->exp.operands, D.21080
	movq	-720(%rbp), %rax	# t, tmp2069
	movq	32(%rax), %rdx	# t_276->exp.operands, D.21080
	.loc 1 5156 0
	movq	-720(%rbp), %rax	# t, tmp2070
	movq	40(%rax), %rax	# t_276->exp.operands, D.21080
	movq	32(%rax), %rax	# _326->exp.operands, D.21080
	.loc 1 5154 0
	movq	8(%rax), %rax	# _327->common.type, D.21080
	movq	%rsi, %r8	# D.21080,
	movq	%rax, %rsi	# D.21080,
	movl	$51, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rcx	# type, tmp2071
	movl	-892(%rbp), %eax	# code, tmp2072
	movq	%rcx, %rsi	# tmp2071,
	movl	%eax, %edi	# tmp2072,
	call	build1	#
	movq	%rax, -720(%rbp)	# tmp2073, t
.L984:
	.loc 1 5161 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L982:
	.loc 1 5163 0
	movq	-704(%rbp), %rax	# arg0, tmp2074
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21084
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	jne	.L990	#,
	.loc 1 5164 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rcx	# type, tmp2076
	movl	-892(%rbp), %eax	# code, tmp2077
	movq	%rcx, %rsi	# tmp2076,
	movl	%eax, %edi	# tmp2077,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rbx	#, D.21080
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rcx	# type, tmp2078
	movl	-892(%rbp), %eax	# code, tmp2079
	movq	%rcx, %rsi	# tmp2078,
	movl	%eax, %edi	# tmp2079,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp2080
	movq	-456(%rbp), %rax	# type, tmp2081
	movq	%rbx, %r8	# D.21080,
	movq	%rax, %rsi	# tmp2081,
	movl	$51, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L980:
	.loc 1 5168 0
	movl	-892(%rbp), %eax	# code, code.469
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$50, %al	#, D.21077
	je	.L991	#,
	.loc 1 5169 0
	movl	-892(%rbp), %eax	# code, code.470
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	jne	.L992	#,
.L991:
	.loc 1 5171 0
	movq	-696(%rbp), %rax	# arg1, tmp2084
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$47, %al	#, D.21076
	jne	.L993	#,
	.loc 1 5172 0
	movq	-696(%rbp), %rax	# arg1, tmp2085
	movq	40(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp2086
	movq	-456(%rbp), %rsi	# type, tmp2087
	movl	-892(%rbp), %eax	# code, tmp2088
	movl	%eax, %edi	# tmp2088,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp2089
	movq	32(%rax), %rdx	# arg1_33->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2090
	movq	%rax, %rsi	# tmp2090,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L993:
	.loc 1 5175 0
	movq	-696(%rbp), %rax	# arg1, tmp2091
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$51, %al	#, D.21076
	je	.L994	#,
	.loc 1 5176 0
	movq	-696(%rbp), %rax	# arg1, tmp2092
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21084
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	jne	.L995	#,
	.loc 1 5177 0
	movl	-892(%rbp), %eax	# code, code.471
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	je	.L995	#,
.L994:
	.loc 1 5178 0
	movq	-704(%rbp), %rax	# arg0, tmp2095
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$51, %al	#, D.21076
	jne	.L996	#,
	.loc 1 5179 0
	movq	-704(%rbp), %rax	# arg0, tmp2096
	movl	$25, %esi	#,
	movq	%rax, %rdi	# tmp2096,
	call	count_cond	#
	movl	%eax, %ebx	#, D.21084
	movq	-696(%rbp), %rax	# arg1, tmp2097
	movl	$25, %esi	#,
	movq	%rax, %rdi	# tmp2097,
	call	count_cond	#
	addl	%ebx, %eax	# D.21084, D.21084
	cmpl	$25, %eax	#, D.21084
	jg	.L995	#,
.L996:
	.loc 1 5180 0
	movq	-704(%rbp), %rax	# arg0, tmp2098
	movzbl	17(%rax), %eax	# *arg0_25, D.21076
	andl	$1, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L997	#,
	.loc 1 5181 0
	call	global_bindings_p	#
	testl	%eax, %eax	# D.21084
	jne	.L995	#,
	.loc 1 5182 0
	movq	-704(%rbp), %rax	# arg0, tmp2099
	movq	%rax, %rdi	# tmp2099,
	call	contains_placeholder_p	#
	testl	%eax, %eax	# D.21084
	jne	.L995	#,
.L997:
	.loc 1 5183 0
	movq	-704(%rbp), %rcx	# arg0, tmp2100
	movq	-696(%rbp), %rdx	# arg1, tmp2101
	movq	-456(%rbp), %rsi	# type, tmp2102
	movl	-892(%rbp), %eax	# code, tmp2103
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp2103,
	call	fold_binary_op_with_conditional_arg	#
	jmp	.L937	#
.L995:
	.loc 1 5186 0
	movq	-704(%rbp), %rax	# arg0, tmp2104
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$47, %al	#, D.21076
	jne	.L998	#,
	.loc 1 5187 0
	movq	-704(%rbp), %rax	# arg0, tmp2105
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp2106
	movq	-456(%rbp), %rsi	# type, tmp2107
	movl	-892(%rbp), %eax	# code, tmp2108
	movl	%eax, %edi	# tmp2108,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2109
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2110
	movq	%rax, %rsi	# tmp2110,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L998:
	.loc 1 5189 0
	movq	-704(%rbp), %rax	# arg0, tmp2111
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$51, %al	#, D.21076
	je	.L999	#,
	.loc 1 5190 0
	movq	-704(%rbp), %rax	# arg0, tmp2112
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21084
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	jne	.L1000	#,
	.loc 1 5191 0
	movl	-892(%rbp), %eax	# code, code.472
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	je	.L1000	#,
.L999:
	.loc 1 5192 0
	movq	-696(%rbp), %rax	# arg1, tmp2115
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$51, %al	#, D.21076
	jne	.L1001	#,
	.loc 1 5193 0
	movq	-704(%rbp), %rax	# arg0, tmp2116
	movl	$25, %esi	#,
	movq	%rax, %rdi	# tmp2116,
	call	count_cond	#
	movl	%eax, %ebx	#, D.21084
	movq	-696(%rbp), %rax	# arg1, tmp2117
	movl	$25, %esi	#,
	movq	%rax, %rdi	# tmp2117,
	call	count_cond	#
	addl	%ebx, %eax	# D.21084, D.21084
	cmpl	$25, %eax	#, D.21084
	jg	.L1000	#,
.L1001:
	.loc 1 5194 0
	movq	-696(%rbp), %rax	# arg1, tmp2118
	movzbl	17(%rax), %eax	# *arg1_33, D.21076
	andl	$1, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1002	#,
	.loc 1 5195 0
	call	global_bindings_p	#
	testl	%eax, %eax	# D.21084
	jne	.L1000	#,
	.loc 1 5196 0
	movq	-696(%rbp), %rax	# arg1, tmp2119
	movq	%rax, %rdi	# tmp2119,
	call	contains_placeholder_p	#
	testl	%eax, %eax	# D.21084
	jne	.L1000	#,
.L1002:
	.loc 1 5197 0
	movq	-696(%rbp), %rcx	# arg1, tmp2120
	movq	-704(%rbp), %rdx	# arg0, tmp2121
	movq	-456(%rbp), %rsi	# type, tmp2122
	movl	-892(%rbp), %eax	# code, tmp2123
	movl	$1, %r8d	#,
	movl	%eax, %edi	# tmp2123,
	call	fold_binary_op_with_conditional_arg	#
	jmp	.L937	#
.L1000:
	.loc 1 5171 0
	jmp	.L990	#
.L992:
	.loc 1 5201 0
	movl	-892(%rbp), %eax	# code, code.473
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	jne	.L1003	#,
	.loc 1 5202 0
	movq	-704(%rbp), %rax	# arg0, tmp2125
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$47, %al	#, D.21076
	jne	.L1003	#,
	.loc 1 5203 0
	movq	-704(%rbp), %rax	# arg0, tmp2126
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp2127
	movq	-456(%rbp), %rsi	# type, tmp2128
	movl	-892(%rbp), %eax	# code, tmp2129
	movl	%eax, %edi	# tmp2129,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2130
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2131
	movq	%rax, %rsi	# tmp2131,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1003:
	.loc 1 5205 0
	movl	-892(%rbp), %eax	# code, code.474
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	jne	.L990	#,
	.loc 1 5206 0
	movq	-696(%rbp), %rax	# arg1, tmp2133
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$47, %al	#, D.21076
	jne	.L990	#,
	.loc 1 5207 0
	movq	-696(%rbp), %rax	# arg1, tmp2134
	movq	40(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp2135
	movq	-456(%rbp), %rsi	# type, tmp2136
	movl	-892(%rbp), %eax	# code, tmp2137
	movl	%eax, %edi	# tmp2137,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp2138
	movq	32(%rax), %rdx	# arg1_33->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2139
	movq	%rax, %rsi	# tmp2139,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L990:
	.loc 1 5210 0
	movl	-892(%rbp), %eax	# code, tmp2141
	subl	$25, %eax	#, tmp2140
	cmpl	$103, %eax	#, tmp2140
	ja	.L1004	#,
	movl	%eax, %eax	# tmp2140, tmp2142
	movq	.L1006(,%rax,8), %rax	#, tmp2143
	jmp	*%rax	# tmp2143
	.section	.rodata
	.align 8
	.align 4
.L1006:
	.quad	.L1005
	.quad	.L1005
	.quad	.L1005
	.quad	.L1005
	.quad	.L1005
	.quad	.L1004
	.quad	.L1004
	.quad	.L1007
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1008
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1005
	.quad	.L1009
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1010
	.quad	.L1004
	.quad	.L1011
	.quad	.L1004
	.quad	.L1004
	.quad	.L1012
	.quad	.L1004
	.quad	.L1004
	.quad	.L1013
	.quad	.L1014
	.quad	.L1015
	.quad	.L1016
	.quad	.L1016
	.quad	.L1016
	.quad	.L1016
	.quad	.L1017
	.quad	.L1017
	.quad	.L1017
	.quad	.L1017
	.quad	.L1018
	.quad	.L1016
	.quad	.L1019
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1019
	.quad	.L1020
	.quad	.L1021
	.quad	.L1022
	.quad	.L1023
	.quad	.L1004
	.quad	.L1024
	.quad	.L1024
	.quad	.L1024
	.quad	.L1024
	.quad	.L1025
	.quad	.L1026
	.quad	.L1027
	.quad	.L1028
	.quad	.L1029
	.quad	.L1030
	.quad	.L1031
	.quad	.L1032
	.quad	.L1033
	.quad	.L1034
	.quad	.L1035
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1036
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1037
	.quad	.L1019
	.quad	.L1019
	.quad	.L1004
	.quad	.L1038
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1004
	.quad	.L1039
	.quad	.L1040
	.quad	.L1041
	.quad	.L1042
	.text
.L1005:
	.loc 1 5218 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1007:
	.loc 1 5221 0
	movq	-720(%rbp), %rax	# t, tmp2144
	movq	104(%rax), %rax	# t_150->decl.initial, D.21080
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1019:
	.loc 1 5229 0
	movq	-720(%rbp), %rax	# t, tmp2145
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	8(%rax), %rdx	# _408->common.type, D.21080
	movq	-720(%rbp), %rax	# t, tmp2146
	movq	8(%rax), %rax	# t_150->common.type, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	jne	.L1043	#,
	.loc 1 5230 0
	movq	-720(%rbp), %rax	# t, tmp2147
	movq	32(%rax), %rax	# t_150->exp.operands, D.21075
	jmp	.L937	#
.L1043:
	.loc 1 5233 0
	movq	-720(%rbp), %rax	# t, tmp2148
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _412->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1044	#,
	.loc 1 5234 0
	movq	-720(%rbp), %rax	# t, tmp2149
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _414->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	jne	.L1045	#,
.L1044:
.LBB25:
	.loc 1 5236 0
	movq	-720(%rbp), %rax	# t, tmp2150
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	32(%rax), %rax	# _416->exp.operands, D.21080
	movq	8(%rax), %rax	# _417->common.type, tmp2151
	movq	%rax, -440(%rbp)	# tmp2151, inside_type
	.loc 1 5237 0
	movq	-720(%rbp), %rax	# t, tmp2152
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	8(%rax), %rax	# _419->common.type, tmp2153
	movq	%rax, -432(%rbp)	# tmp2153, inter_type
	.loc 1 5238 0
	movq	-720(%rbp), %rax	# t, tmp2154
	movq	8(%rax), %rax	# t_150->common.type, tmp2155
	movq	%rax, -424(%rbp)	# tmp2155, final_type
	.loc 1 5239 0
	movq	-440(%rbp), %rax	# inside_type, tmp2156
	movzbl	16(%rax), %eax	# inside_type_418->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1046	#,
	.loc 1 5239 0 is_stmt 0 discriminator 2
	movq	-440(%rbp), %rax	# inside_type, tmp2157
	movzbl	16(%rax), %eax	# inside_type_418->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1046	#,
	.loc 1 5239 0 discriminator 1
	movq	-440(%rbp), %rax	# inside_type, tmp2158
	movzbl	16(%rax), %eax	# inside_type_418->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1046	#,
	movq	-440(%rbp), %rax	# inside_type, tmp2159
	movzbl	16(%rax), %eax	# inside_type_418->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L1047	#,
.L1046:
	movl	$1, %eax	#, iftmp.475
	jmp	.L1048	#
.L1047:
	.loc 1 5239 0 discriminator 3
	movl	$0, %eax	#, iftmp.475
.L1048:
	.loc 1 5239 0 discriminator 4
	movl	%eax, -864(%rbp)	# iftmp.475, inside_int
	.loc 1 5240 0 is_stmt 1 discriminator 4
	movq	-440(%rbp), %rax	# inside_type, tmp2160
	movzbl	16(%rax), %eax	# inside_type_418->common.code, D.21076
	cmpb	$13, %al	#, D.21076
	je	.L1049	#,
	.loc 1 5240 0 is_stmt 0 discriminator 2
	movq	-440(%rbp), %rax	# inside_type, tmp2161
	movzbl	16(%rax), %eax	# inside_type_418->common.code, D.21076
	cmpb	$15, %al	#, D.21076
	jne	.L1050	#,
.L1049:
	.loc 1 5240 0 discriminator 1
	movl	$1, %eax	#, iftmp.476
	jmp	.L1051	#
.L1050:
	.loc 1 5240 0 discriminator 3
	movl	$0, %eax	#, iftmp.476
.L1051:
	.loc 1 5240 0 discriminator 4
	movl	%eax, -860(%rbp)	# iftmp.476, inside_ptr
	.loc 1 5241 0 is_stmt 1 discriminator 4
	movq	-440(%rbp), %rax	# inside_type, tmp2162
	movzbl	16(%rax), %eax	# inside_type_418->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1052	#,
	.loc 1 5241 0 is_stmt 0 discriminator 2
	movq	-440(%rbp), %rax	# inside_type, tmp2163
	movzbl	16(%rax), %eax	# inside_type_418->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1053	#,
	.loc 1 5241 0 discriminator 3
	movq	-440(%rbp), %rax	# inside_type, tmp2164
	movq	8(%rax), %rax	# inside_type_418->common.type, D.21080
	movzbl	16(%rax), %eax	# _436->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	jne	.L1053	#,
.L1052:
	.loc 1 5241 0 discriminator 1
	movl	$1, %eax	#, iftmp.477
	jmp	.L1054	#
.L1053:
	.loc 1 5241 0 discriminator 4
	movl	$0, %eax	#, iftmp.477
.L1054:
	.loc 1 5241 0 discriminator 5
	movl	%eax, -856(%rbp)	# iftmp.477, inside_float
	.loc 1 5242 0 is_stmt 1 discriminator 5
	movq	-440(%rbp), %rax	# inside_type, tmp2165
	movzwl	60(%rax), %eax	# *inside_type_418, tmp2168
	andw	$511, %ax	#, D.21086
	movzwl	%ax, %eax	# D.21086, tmp2169
	movl	%eax, -852(%rbp)	# tmp2169, inside_prec
	.loc 1 5243 0 discriminator 5
	movq	-440(%rbp), %rax	# inside_type, tmp2170
	movzbl	17(%rax), %eax	# *inside_type_418, tmp2173
	shrb	$5, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	movzbl	%al, %eax	# D.21082, tmp2174
	movl	%eax, -848(%rbp)	# tmp2174, inside_unsignedp
	.loc 1 5244 0 discriminator 5
	movq	-432(%rbp), %rax	# inter_type, tmp2175
	movzbl	16(%rax), %eax	# inter_type_420->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1055	#,
	.loc 1 5244 0 is_stmt 0 discriminator 2
	movq	-432(%rbp), %rax	# inter_type, tmp2176
	movzbl	16(%rax), %eax	# inter_type_420->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1055	#,
	.loc 1 5244 0 discriminator 1
	movq	-432(%rbp), %rax	# inter_type, tmp2177
	movzbl	16(%rax), %eax	# inter_type_420->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1055	#,
	movq	-432(%rbp), %rax	# inter_type, tmp2178
	movzbl	16(%rax), %eax	# inter_type_420->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L1056	#,
.L1055:
	movl	$1, %eax	#, iftmp.478
	jmp	.L1057	#
.L1056:
	.loc 1 5244 0 discriminator 3
	movl	$0, %eax	#, iftmp.478
.L1057:
	.loc 1 5244 0 discriminator 4
	movl	%eax, -844(%rbp)	# iftmp.478, inter_int
	.loc 1 5245 0 is_stmt 1 discriminator 4
	movq	-432(%rbp), %rax	# inter_type, tmp2179
	movzbl	16(%rax), %eax	# inter_type_420->common.code, D.21076
	cmpb	$13, %al	#, D.21076
	je	.L1058	#,
	.loc 1 5245 0 is_stmt 0 discriminator 2
	movq	-432(%rbp), %rax	# inter_type, tmp2180
	movzbl	16(%rax), %eax	# inter_type_420->common.code, D.21076
	cmpb	$15, %al	#, D.21076
	jne	.L1059	#,
.L1058:
	.loc 1 5245 0 discriminator 1
	movl	$1, %eax	#, iftmp.479
	jmp	.L1060	#
.L1059:
	.loc 1 5245 0 discriminator 3
	movl	$0, %eax	#, iftmp.479
.L1060:
	.loc 1 5245 0 discriminator 4
	movl	%eax, -840(%rbp)	# iftmp.479, inter_ptr
	.loc 1 5246 0 is_stmt 1 discriminator 4
	movq	-432(%rbp), %rax	# inter_type, tmp2181
	movzbl	16(%rax), %eax	# inter_type_420->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1061	#,
	.loc 1 5246 0 is_stmt 0 discriminator 2
	movq	-432(%rbp), %rax	# inter_type, tmp2182
	movzbl	16(%rax), %eax	# inter_type_420->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1062	#,
	.loc 1 5246 0 discriminator 3
	movq	-432(%rbp), %rax	# inter_type, tmp2183
	movq	8(%rax), %rax	# inter_type_420->common.type, D.21080
	movzbl	16(%rax), %eax	# _459->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	jne	.L1062	#,
.L1061:
	.loc 1 5246 0 discriminator 1
	movl	$1, %eax	#, iftmp.480
	jmp	.L1063	#
.L1062:
	.loc 1 5246 0 discriminator 4
	movl	$0, %eax	#, iftmp.480
.L1063:
	.loc 1 5246 0 discriminator 5
	movl	%eax, -836(%rbp)	# iftmp.480, inter_float
	.loc 1 5247 0 is_stmt 1 discriminator 5
	movq	-432(%rbp), %rax	# inter_type, tmp2184
	movzwl	60(%rax), %eax	# *inter_type_420, tmp2187
	andw	$511, %ax	#, D.21086
	movzwl	%ax, %eax	# D.21086, tmp2188
	movl	%eax, -832(%rbp)	# tmp2188, inter_prec
	.loc 1 5248 0 discriminator 5
	movq	-432(%rbp), %rax	# inter_type, tmp2189
	movzbl	17(%rax), %eax	# *inter_type_420, tmp2192
	shrb	$5, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	movzbl	%al, %eax	# D.21082, tmp2193
	movl	%eax, -828(%rbp)	# tmp2193, inter_unsignedp
	.loc 1 5249 0 discriminator 5
	movq	-424(%rbp), %rax	# final_type, tmp2194
	movzbl	16(%rax), %eax	# final_type_421->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1064	#,
	.loc 1 5249 0 is_stmt 0 discriminator 2
	movq	-424(%rbp), %rax	# final_type, tmp2195
	movzbl	16(%rax), %eax	# final_type_421->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1064	#,
	.loc 1 5249 0 discriminator 1
	movq	-424(%rbp), %rax	# final_type, tmp2196
	movzbl	16(%rax), %eax	# final_type_421->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1064	#,
	movq	-424(%rbp), %rax	# final_type, tmp2197
	movzbl	16(%rax), %eax	# final_type_421->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L1065	#,
.L1064:
	movl	$1, %eax	#, iftmp.481
	jmp	.L1066	#
.L1065:
	.loc 1 5249 0 discriminator 3
	movl	$0, %eax	#, iftmp.481
.L1066:
	.loc 1 5249 0 discriminator 4
	movl	%eax, -824(%rbp)	# iftmp.481, final_int
	.loc 1 5250 0 is_stmt 1 discriminator 4
	movq	-424(%rbp), %rax	# final_type, tmp2198
	movzbl	16(%rax), %eax	# final_type_421->common.code, D.21076
	cmpb	$13, %al	#, D.21076
	je	.L1067	#,
	.loc 1 5250 0 is_stmt 0 discriminator 2
	movq	-424(%rbp), %rax	# final_type, tmp2199
	movzbl	16(%rax), %eax	# final_type_421->common.code, D.21076
	cmpb	$15, %al	#, D.21076
	jne	.L1068	#,
.L1067:
	.loc 1 5250 0 discriminator 1
	movl	$1, %eax	#, iftmp.482
	jmp	.L1069	#
.L1068:
	.loc 1 5250 0 discriminator 3
	movl	$0, %eax	#, iftmp.482
.L1069:
	.loc 1 5250 0 discriminator 4
	movl	%eax, -820(%rbp)	# iftmp.482, final_ptr
	.loc 1 5251 0 is_stmt 1 discriminator 4
	movq	-424(%rbp), %rax	# final_type, tmp2200
	movzbl	16(%rax), %eax	# final_type_421->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1070	#,
	.loc 1 5251 0 is_stmt 0 discriminator 2
	movq	-424(%rbp), %rax	# final_type, tmp2201
	movzbl	16(%rax), %eax	# final_type_421->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1071	#,
	.loc 1 5251 0 discriminator 3
	movq	-424(%rbp), %rax	# final_type, tmp2202
	movq	8(%rax), %rax	# final_type_421->common.type, D.21080
	movzbl	16(%rax), %eax	# _482->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	jne	.L1071	#,
.L1070:
	.loc 1 5251 0 discriminator 1
	movl	$1, %eax	#, iftmp.483
	jmp	.L1072	#
.L1071:
	.loc 1 5251 0 discriminator 4
	movl	$0, %eax	#, iftmp.483
.L1072:
	.loc 1 5251 0 discriminator 5
	movl	%eax, -816(%rbp)	# iftmp.483, final_float
	.loc 1 5252 0 is_stmt 1 discriminator 5
	movq	-424(%rbp), %rax	# final_type, tmp2203
	movzwl	60(%rax), %eax	# *final_type_421, tmp2206
	andw	$511, %ax	#, D.21086
	movzwl	%ax, %eax	# D.21086, tmp2207
	movl	%eax, -812(%rbp)	# tmp2207, final_prec
	.loc 1 5253 0 discriminator 5
	movq	-424(%rbp), %rax	# final_type, tmp2208
	movzbl	17(%rax), %eax	# *final_type_421, tmp2211
	shrb	$5, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	movzbl	%al, %eax	# D.21082, tmp2212
	movl	%eax, -808(%rbp)	# tmp2212, final_unsignedp
	.loc 1 5259 0 discriminator 5
	movq	-440(%rbp), %rax	# inside_type, tmp2213
	movq	128(%rax), %rdx	# inside_type_418->type.main_variant, D.21080
	movq	-424(%rbp), %rax	# final_type, tmp2214
	movq	128(%rax), %rax	# final_type_421->type.main_variant, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	jne	.L1073	#,
	.loc 1 5260 0
	cmpl	$0, -844(%rbp)	#, inter_int
	je	.L1074	#,
	.loc 1 5260 0 is_stmt 0 discriminator 1
	cmpl	$0, -824(%rbp)	#, final_int
	jne	.L1075	#,
.L1074:
	.loc 1 5260 0 discriminator 2
	cmpl	$0, -836(%rbp)	#, inter_float
	je	.L1073	#,
	.loc 1 5260 0 discriminator 1
	cmpl	$0, -816(%rbp)	#, final_float
	je	.L1073	#,
.L1075:
	.loc 1 5261 0 is_stmt 1
	movl	-832(%rbp), %eax	# inter_prec, tmp2215
	cmpl	-812(%rbp), %eax	# final_prec, tmp2215
	jb	.L1073	#,
	.loc 1 5262 0
	movq	-720(%rbp), %rax	# t, tmp2216
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	32(%rax), %rdx	# _493->exp.operands, D.21080
	movq	-424(%rbp), %rax	# final_type, tmp2217
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2217,
	call	convert	#
	jmp	.L937	#
.L1073:
	.loc 1 5270 0
	cmpl	$0, -844(%rbp)	#, inter_int
	jne	.L1076	#,
	.loc 1 5270 0 is_stmt 0 discriminator 2
	cmpl	$0, -840(%rbp)	#, inter_ptr
	je	.L1077	#,
.L1076:
	.loc 1 5270 0 discriminator 1
	cmpl	$0, -864(%rbp)	#, inside_int
	jne	.L1078	#,
	cmpl	$0, -860(%rbp)	#, inside_ptr
	jne	.L1078	#,
.L1077:
	.loc 1 5271 0 is_stmt 1
	cmpl	$0, -836(%rbp)	#, inter_float
	je	.L1079	#,
	.loc 1 5271 0 is_stmt 0 discriminator 1
	cmpl	$0, -856(%rbp)	#, inside_float
	je	.L1079	#,
.L1078:
	.loc 1 5272 0 is_stmt 1
	movl	-832(%rbp), %eax	# inter_prec, tmp2218
	cmpl	-852(%rbp), %eax	# inside_prec, tmp2218
	jb	.L1079	#,
	.loc 1 5273 0
	cmpl	$0, -836(%rbp)	#, inter_float
	jne	.L1080	#,
	.loc 1 5273 0 is_stmt 0 discriminator 1
	movl	-828(%rbp), %eax	# inter_unsignedp, tmp2219
	cmpl	-848(%rbp), %eax	# inside_unsignedp, tmp2219
	jne	.L1079	#,
.L1080:
	.loc 1 5274 0 is_stmt 1
	movq	-424(%rbp), %rax	# final_type, tmp2220
	movzbl	61(%rax), %eax	# *final_type_421, tmp2223
	shrb	%al	# D.21081
	movzbl	%al, %eax	# D.21081, D.21084
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.21087
	movzwl	%ax, %eax	# D.21087, D.21085
	cmpl	-812(%rbp), %eax	# final_prec, D.21085
	je	.L1081	#,
	.loc 1 5275 0 discriminator 1
	movq	-424(%rbp), %rax	# final_type, tmp2225
	movzbl	61(%rax), %eax	# *final_type_421, tmp2228
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-432(%rbp), %rax	# inter_type, tmp2229
	movzbl	61(%rax), %eax	# *inter_type_420, tmp2232
	shrb	%al	# D.21081
	.loc 1 5274 0 discriminator 1
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1079	#,
.L1081:
	.loc 1 5276 0
	cmpl	$0, -820(%rbp)	#, final_ptr
	jne	.L1079	#,
	.loc 1 5277 0
	movq	-720(%rbp), %rax	# t, tmp2233
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	32(%rax), %rdx	# _502->exp.operands, D.21080
	movq	-424(%rbp), %rax	# final_type, tmp2234
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2234,
	call	convert	#
	jmp	.L937	#
.L1079:
	.loc 1 5281 0
	cmpl	$0, -864(%rbp)	#, inside_int
	je	.L1082	#,
	.loc 1 5281 0 is_stmt 0 discriminator 1
	cmpl	$0, -844(%rbp)	#, inter_int
	je	.L1082	#,
	cmpl	$0, -824(%rbp)	#, final_int
	je	.L1082	#,
	.loc 1 5282 0 is_stmt 1
	movl	-852(%rbp), %eax	# inside_prec, tmp2235
	cmpl	-832(%rbp), %eax	# inter_prec, tmp2235
	jae	.L1082	#,
	.loc 1 5282 0 is_stmt 0 discriminator 1
	movl	-832(%rbp), %eax	# inter_prec, tmp2236
	cmpl	-812(%rbp), %eax	# final_prec, tmp2236
	jae	.L1082	#,
	.loc 1 5283 0 is_stmt 1
	cmpl	$0, -848(%rbp)	#, inside_unsignedp
	je	.L1082	#,
	.loc 1 5283 0 is_stmt 0 discriminator 1
	cmpl	$0, -828(%rbp)	#, inter_unsignedp
	jne	.L1082	#,
	.loc 1 5284 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, tmp2237
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	32(%rax), %rdx	# _505->exp.operands, D.21080
	movq	-424(%rbp), %rax	# final_type, tmp2238
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2238,
	call	convert	#
	jmp	.L937	#
.L1082:
	.loc 1 5296 0
	cmpl	$0, -856(%rbp)	#, inside_float
	jne	.L1045	#,
	.loc 1 5296 0 is_stmt 0 discriminator 1
	cmpl	$0, -836(%rbp)	#, inter_float
	jne	.L1045	#,
	cmpl	$0, -816(%rbp)	#, final_float
	jne	.L1045	#,
	.loc 1 5297 0 is_stmt 1
	movl	-832(%rbp), %eax	# inter_prec, tmp2239
	cmpl	-852(%rbp), %eax	# inside_prec, tmp2239
	ja	.L1083	#,
	.loc 1 5297 0 is_stmt 0 discriminator 1
	movl	-832(%rbp), %eax	# inter_prec, tmp2240
	cmpl	-812(%rbp), %eax	# final_prec, tmp2240
	jbe	.L1045	#,
.L1083:
	.loc 1 5298 0 is_stmt 1
	cmpl	$0, -864(%rbp)	#, inside_int
	je	.L1084	#,
	.loc 1 5298 0 is_stmt 0 discriminator 1
	cmpl	$0, -844(%rbp)	#, inter_int
	je	.L1084	#,
	.loc 1 5299 0 is_stmt 1
	movl	-828(%rbp), %eax	# inter_unsignedp, tmp2241
	cmpl	-848(%rbp), %eax	# inside_unsignedp, tmp2241
	je	.L1084	#,
	.loc 1 5298 0
	movl	-832(%rbp), %eax	# inter_prec, tmp2242
	cmpl	-812(%rbp), %eax	# final_prec, tmp2242
	jb	.L1045	#,
.L1084:
	.loc 1 5301 0
	cmpl	$0, -828(%rbp)	#, inter_unsignedp
	je	.L1085	#,
	.loc 1 5301 0 is_stmt 0 discriminator 1
	movl	-832(%rbp), %eax	# inter_prec, tmp2243
	cmpl	-852(%rbp), %eax	# inside_prec, tmp2243
	jbe	.L1085	#,
	.loc 1 5301 0 discriminator 3
	movl	$1, %eax	#, iftmp.484
	jmp	.L1086	#
.L1085:
	.loc 1 5301 0 discriminator 2
	movl	$0, %eax	#, iftmp.484
.L1086:
	.loc 1 5302 0 is_stmt 1
	andl	$1, %eax	#, D.21088
	xorl	$1, %eax	#, D.21088
	movl	%eax, %edx	# D.21088, D.21088
	cmpl	$0, -808(%rbp)	#, final_unsignedp
	je	.L1087	#,
	.loc 1 5302 0 is_stmt 0 discriminator 1
	movl	-812(%rbp), %eax	# final_prec, tmp2244
	cmpl	-832(%rbp), %eax	# inter_prec, tmp2244
	jbe	.L1087	#,
	.loc 1 5302 0 discriminator 3
	movl	$1, %eax	#, iftmp.485
	jmp	.L1088	#
.L1087:
	.loc 1 5302 0 discriminator 2
	movl	$0, %eax	#, iftmp.485
.L1088:
	.loc 1 5302 0 discriminator 4
	andl	$1, %eax	#, D.21088
	xorl	%edx, %eax	# D.21088, D.21088
	.loc 1 5301 0 is_stmt 1 discriminator 4
	testb	%al, %al	# D.21088
	je	.L1045	#,
	.loc 1 5303 0
	cmpl	$0, -860(%rbp)	#, inside_ptr
	je	.L1089	#,
	.loc 1 5303 0 is_stmt 0 discriminator 1
	movl	-832(%rbp), %eax	# inter_prec, tmp2245
	cmpl	-812(%rbp), %eax	# final_prec, tmp2245
	jne	.L1045	#,
.L1089:
	.loc 1 5304 0 is_stmt 1
	cmpl	$0, -820(%rbp)	#, final_ptr
	je	.L1090	#,
	.loc 1 5304 0 is_stmt 0 discriminator 1
	movl	-852(%rbp), %eax	# inside_prec, tmp2246
	cmpl	-832(%rbp), %eax	# inter_prec, tmp2246
	jne	.L1045	#,
.L1090:
	.loc 1 5305 0 is_stmt 1
	movq	-424(%rbp), %rax	# final_type, tmp2247
	movzbl	61(%rax), %eax	# *final_type_421, tmp2250
	shrb	%al	# D.21081
	movzbl	%al, %eax	# D.21081, D.21084
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.21087
	movzwl	%ax, %eax	# D.21087, D.21085
	cmpl	-812(%rbp), %eax	# final_prec, D.21085
	je	.L1091	#,
	.loc 1 5306 0 discriminator 1
	movq	-424(%rbp), %rax	# final_type, tmp2252
	movzbl	61(%rax), %eax	# *final_type_421, tmp2255
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-432(%rbp), %rax	# inter_type, tmp2256
	movzbl	61(%rax), %eax	# *inter_type_420, tmp2259
	shrb	%al	# D.21081
	.loc 1 5305 0 discriminator 1
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1045	#,
.L1091:
	.loc 1 5307 0
	cmpl	$0, -820(%rbp)	#, final_ptr
	jne	.L1045	#,
	.loc 1 5308 0
	movq	-720(%rbp), %rax	# t, tmp2260
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	32(%rax), %rdx	# _522->exp.operands, D.21080
	movq	-424(%rbp), %rax	# final_type, tmp2261
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2261,
	call	convert	#
	jmp	.L937	#
.L1045:
.LBE25:
	.loc 1 5311 0
	movq	-720(%rbp), %rax	# t, tmp2262
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _525->common.code, D.21076
	cmpb	$48, %al	#, D.21076
	jne	.L1092	#,
	.loc 1 5312 0
	movq	-720(%rbp), %rax	# t, tmp2263
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	40(%rax), %rax	# _527->exp.operands, D.21080
	movzbl	17(%rax), %eax	# *_528, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1092	#,
	.loc 1 5314 0
	movq	-720(%rbp), %rax	# t, tmp2264
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	32(%rax), %rax	# _531->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _532->common.code, D.21076
	cmpb	$39, %al	#, D.21076
	jne	.L1093	#,
	.loc 1 5315 0 discriminator 1
	movq	-720(%rbp), %rax	# t, tmp2265
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movq	32(%rax), %rax	# _534->exp.operands, D.21080
	movq	40(%rax), %rax	# _535->exp.operands, D.21080
	movzbl	49(%rax), %eax	# *_536, D.21076
	andl	$16, %eax	#, D.21076
	.loc 1 5314 0 discriminator 1
	testb	%al, %al	# D.21076
	jne	.L1092	#,
.L1093:
.LBB26:
	.loc 1 5319 0
	movq	-720(%rbp), %rax	# t, tmp2266
	movq	32(%rax), %rax	# t_150->exp.operands, tmp2267
	movq	%rax, -416(%rbp)	# tmp2267, prev
	.loc 1 5320 0
	movq	-416(%rbp), %rax	# prev, tmp2268
	movq	40(%rax), %rdx	# prev_539->exp.operands, D.21080
	movq	-720(%rbp), %rax	# t, tmp2269
	movq	%rdx, 32(%rax)	# D.21080, t_150->exp.operands
	.loc 1 5322 0
	movq	-720(%rbp), %rax	# t, tmp2270
	movq	%rax, %rdi	# tmp2270,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-720(%rbp), %rax	# t, tmp2271
	movq	8(%rax), %rax	# t_150->common.type, D.21080
	movq	-416(%rbp), %rdx	# prev, tmp2272
	movq	%rax, %rsi	# D.21080,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -720(%rbp)	# tmp2273, t
	.loc 1 5323 0
	movq	-720(%rbp), %rax	# t, tmp2274
	movzbl	18(%rax), %edx	#, tmp2277
	orl	$1, %edx	#, tmp2278
	movb	%dl, 18(%rax)	# tmp2278,
	.loc 1 5324 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1092:
.LBE26:
	.loc 1 5326 0
	cmpl	$0, -884(%rbp)	#, wins
	jne	.L1094	#,
	.loc 1 5328 0
	movq	-704(%rbp), %rax	# arg0, tmp2279
	movzbl	17(%rax), %eax	# *arg0_25, tmp2282
	shrb	%al	# D.21082
	andl	$1, %eax	#, D.21082
	movq	-720(%rbp), %rdx	# t, tmp2283
	andl	$1, %eax	#, tmp2285
	leal	(%rax,%rax), %ecx	#, tmp2286
	movzbl	17(%rdx), %eax	#, tmp2287
	andl	$-3, %eax	#, tmp2288
	orl	%ecx, %eax	# tmp2286, tmp2289
	movb	%al, 17(%rdx)	# tmp2289,
	.loc 1 5329 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1094:
	.loc 1 5331 0
	movq	-704(%rbp), %rdx	# arg0, tmp2290
	movq	-720(%rbp), %rax	# t, tmp2291
	movq	%rdx, %rsi	# tmp2290,
	movq	%rax, %rdi	# tmp2291,
	call	fold_convert	#
	jmp	.L937	#
.L1038:
	.loc 1 5334 0
	movq	-720(%rbp), %rax	# t, tmp2292
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _548->common.code, D.21076
	cmpb	$117, %al	#, D.21076
	jne	.L1095	#,
	.loc 1 5336 0
	movq	-720(%rbp), %rax	# t, tmp2293
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	.loc 1 5335 0
	movq	32(%rax), %rdx	# _550->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2294
	movq	%rax, %rsi	# tmp2294,
	movl	$117, %edi	#,
	call	build1	#
	jmp	.L937	#
.L1095:
	.loc 1 5337 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1008:
	.loc 1 5358 0
	movq	-704(%rbp), %rax	# arg0, tmp2295
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$46, %al	#, D.21076
	jne	.L1096	#,
.LBB27:
	.loc 1 5360 0
	movq	-704(%rbp), %rax	# arg0, tmp2296
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp2297
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2297,
	call	purpose_member	#
	movq	%rax, -408(%rbp)	# tmp2298, m
	.loc 1 5361 0
	cmpq	$0, -408(%rbp)	#, m
	je	.L1096	#,
	.loc 1 5362 0
	movq	-408(%rbp), %rax	# m, tmp2299
	movq	32(%rax), %rax	# m_556->list.value, tmp2300
	movq	%rax, -720(%rbp)	# tmp2300, t
.L1096:
.LBE27:
	.loc 1 5364 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1037:
	.loc 1 5367 0
	movl	-884(%rbp), %eax	# wins, tmp2301
	andl	$1, %eax	#, D.21082
	movl	%eax, %edx	# D.21082, D.21082
	movq	-720(%rbp), %rax	# t, tmp2302
	andl	$1, %edx	#, tmp2304
	leal	(%rdx,%rdx), %ecx	#, tmp2305
	movzbl	17(%rax), %edx	#, tmp2306
	andl	$-3, %edx	#, tmp2307
	orl	%ecx, %edx	# tmp2305, tmp2308
	movb	%dl, 17(%rax)	# tmp2308,
	.loc 1 5368 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1020:
	.loc 1 5371 0
	cmpl	$0, -884(%rbp)	#, wins
	je	.L1097	#,
	.loc 1 5373 0
	movq	-704(%rbp), %rax	# arg0, tmp2309
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1098	#,
.LBB28:
	.loc 1 5377 0
	movq	-704(%rbp), %rax	# arg0, tmp2310
	movq	40(%rax), %rsi	# arg0_25->int_cst.int_cst.high, D.21089
	movq	-704(%rbp), %rax	# arg0, tmp2311
	movq	32(%rax), %rax	# arg0_25->int_cst.int_cst.low, D.21090
	leaq	-48(%rbp), %rcx	#, tmp2312
	leaq	-80(%rbp), %rdx	#, tmp2313
	movq	%rax, %rdi	# D.21090,
	call	neg_double	#
	movl	%eax, -804(%rbp)	# tmp2314, overflow
	.loc 1 5380 0
	movq	-48(%rbp), %rdx	# high, high.486
	movq	-80(%rbp), %rax	# low, low.487
	movq	%rdx, %rsi	# high.486,
	movq	%rax, %rdi	# low.487,
	call	build_int_2_wide	#
	movq	%rax, -720(%rbp)	# tmp2315, t
	.loc 1 5381 0
	movq	-720(%rbp), %rax	# t, tmp2316
	movq	-456(%rbp), %rdx	# type, tmp2317
	movq	%rdx, 8(%rax)	# tmp2317, t_568->common.type
	.loc 1 5383 0
	movq	-704(%rbp), %rax	# arg0, tmp2318
	movzbl	18(%rax), %eax	# *arg0_25, tmp2321
	shrb	$3, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	movl	%eax, %ebx	# D.21082, D.21091
	.loc 1 5384 0
	cmpl	$0, -804(%rbp)	#, overflow
	je	.L1099	#,
	.loc 1 5384 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp2322
	movzbl	17(%rax), %eax	# *type_152, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1099	#,
	.loc 1 5384 0 discriminator 3
	movl	$1, %eax	#, iftmp.488
	jmp	.L1100	#
.L1099:
	.loc 1 5384 0 discriminator 2
	movl	$0, %eax	#, iftmp.488
.L1100:
	.loc 1 5384 0 discriminator 4
	movq	-720(%rbp), %rdx	# t, tmp2323
	movl	%eax, %esi	# iftmp.488,
	movq	%rdx, %rdi	# tmp2323,
	call	force_fit_type	#
	.loc 1 5383 0 is_stmt 1 discriminator 4
	orl	%ebx, %eax	# D.21091, D.21091
	andl	$1, %eax	#, D.21082
	movl	%eax, %edx	# D.21082, D.21082
	movq	-720(%rbp), %rax	# t, tmp2324
	andl	$1, %edx	#, tmp2326
	leal	0(,%rdx,8), %ecx	#, tmp2327
	movzbl	18(%rax), %edx	#, tmp2328
	andl	$-9, %edx	#, tmp2329
	orl	%ecx, %edx	# tmp2327, tmp2330
	movb	%dl, 18(%rax)	# tmp2330,
	.loc 1 5386 0 discriminator 4
	movq	-720(%rbp), %rax	# t, tmp2331
	movzbl	18(%rax), %eax	# *t_568, tmp2334
	shrb	$3, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	movl	%eax, %edx	# D.21082, D.21076
	movq	-704(%rbp), %rax	# arg0, tmp2335
	movzbl	18(%rax), %eax	# *arg0_25, tmp2338
	shrb	$2, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	orl	%edx, %eax	# D.21076, D.21076
	andl	$1, %eax	#, D.21082
	movl	%eax, %edx	# D.21082, D.21082
	movq	-720(%rbp), %rax	# t, tmp2339
	andl	$1, %edx	#, tmp2341
	leal	0(,%rdx,4), %ecx	#, tmp2342
	movzbl	18(%rax), %edx	#, tmp2343
	andl	$-5, %edx	#, tmp2344
	orl	%ecx, %edx	# tmp2342, tmp2345
	movb	%dl, 18(%rax)	# tmp2345,
.LBE28:
	jmp	.L1102	#
.L1098:
	.loc 1 5388 0
	movq	-704(%rbp), %rax	# arg0, tmp2346
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L1102	#,
	.loc 1 5389 0
	leaq	-144(%rbp), %rdx	#, tmp2347
	movq	-704(%rbp), %rax	# arg0, tmp2348
	movq	32(%rax), %rcx	# arg0_25->real_cst.real_cst, tmp2349
	movq	%rcx, (%rsp)	# tmp2349,
	movq	40(%rax), %rcx	# arg0_25->real_cst.real_cst, tmp2350
	movq	%rcx, 8(%rsp)	# tmp2350,
	movq	48(%rax), %rax	# arg0_25->real_cst.real_cst, tmp2351
	movq	%rax, 16(%rsp)	# tmp2351,
	movq	%rdx, %rdi	# tmp2347,
	call	ereal_negate	#
	movq	-456(%rbp), %rax	# type, tmp2352
	movq	-144(%rbp), %rdx	# D.17890, tmp2353
	movq	%rdx, (%rsp)	# tmp2353,
	movq	-136(%rbp), %rdx	# D.17890, tmp2354
	movq	%rdx, 8(%rsp)	# tmp2354,
	movq	-128(%rbp), %rdx	# D.17890, tmp2355
	movq	%rdx, 16(%rsp)	# tmp2355,
	movq	%rax, %rdi	# tmp2352,
	call	build_real	#
	movq	%rax, -720(%rbp)	# tmp2356, t
	jmp	.L1102	#
.L1097:
	.loc 1 5391 0
	movq	-704(%rbp), %rax	# arg0, tmp2357
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1103	#,
	.loc 1 5392 0
	movq	-704(%rbp), %rax	# arg0, tmp2358
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21075
	jmp	.L937	#
.L1103:
	.loc 1 5395 0
	movq	-704(%rbp), %rax	# arg0, tmp2359
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$60, %al	#, D.21076
	jne	.L1102	#,
	.loc 1 5396 0
	movq	-456(%rbp), %rax	# type, tmp2360
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1104	#,
	.loc 1 5396 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp2361
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1105	#,
	movq	-456(%rbp), %rax	# type, tmp2362
	movq	8(%rax), %rax	# type_152->common.type, D.21080
	movzbl	16(%rax), %eax	# _593->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	jne	.L1105	#,
.L1104:
	.loc 1 5396 0 discriminator 2
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.489
	testl	%eax, %eax	# flag_unsafe_math_optimizations.489
	je	.L1102	#,
.L1105:
	.loc 1 5397 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp2363
	movq	32(%rax), %rcx	# arg0_25->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2364
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2365
	movq	%rax, %rsi	# tmp2365,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1102:
	.loc 1 5400 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1023:
	.loc 1 5403 0
	cmpl	$0, -884(%rbp)	#, wins
	je	.L1106	#,
	.loc 1 5405 0
	movq	-704(%rbp), %rax	# arg0, tmp2366
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1107	#,
	.loc 1 5409 0
	movq	-456(%rbp), %rax	# type, tmp2367
	movzbl	17(%rax), %eax	# *type_152, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1108	#,
	.loc 1 5410 0
	movq	-704(%rbp), %rax	# arg0, D.21075
	jmp	.L937	#
.L1108:
	.loc 1 5412 0
	movq	global_trees+104(%rip), %rax	# global_trees, D.21080
	movq	40(%rax), %rdx	# _604->int_cst.int_cst.high, D.21089
	movq	-704(%rbp), %rax	# arg0, tmp2368
	movq	40(%rax), %rax	# arg0_25->int_cst.int_cst.high, D.21089
	cmpq	%rax, %rdx	# D.21089, D.21089
	jl	.L1109	#,
	.loc 1 5412 0 is_stmt 0 discriminator 1
	movq	global_trees+104(%rip), %rax	# global_trees, D.21080
	movq	40(%rax), %rdx	# _607->int_cst.int_cst.high, D.21089
	movq	-704(%rbp), %rax	# arg0, tmp2369
	movq	40(%rax), %rax	# arg0_25->int_cst.int_cst.high, D.21089
	cmpq	%rax, %rdx	# D.21089, D.21089
	jne	.L1110	#,
	movq	global_trees+104(%rip), %rax	# global_trees, D.21080
	movq	32(%rax), %rdx	# _610->int_cst.int_cst.low, D.21090
	movq	-704(%rbp), %rax	# arg0, tmp2370
	movq	32(%rax), %rax	# arg0_25->int_cst.int_cst.low, D.21090
	cmpq	%rax, %rdx	# D.21090, D.21090
	jae	.L1110	#,
.L1109:
	.loc 1 5413 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, D.21075
	jmp	.L937	#
.L1110:
.LBB29:
	.loc 1 5420 0
	movq	-704(%rbp), %rax	# arg0, tmp2371
	movq	40(%rax), %rsi	# arg0_25->int_cst.int_cst.high, D.21089
	movq	-704(%rbp), %rax	# arg0, tmp2372
	movq	32(%rax), %rax	# arg0_25->int_cst.int_cst.low, D.21090
	leaq	-48(%rbp), %rcx	#, tmp2373
	leaq	-80(%rbp), %rdx	#, tmp2374
	movq	%rax, %rdi	# D.21090,
	call	neg_double	#
	movl	%eax, -800(%rbp)	# tmp2375, overflow
	.loc 1 5423 0
	movq	-48(%rbp), %rdx	# high, high.490
	movq	-80(%rbp), %rax	# low, low.491
	movq	%rdx, %rsi	# high.490,
	movq	%rax, %rdi	# low.491,
	call	build_int_2_wide	#
	movq	%rax, -720(%rbp)	# tmp2376, t
	.loc 1 5424 0
	movq	-720(%rbp), %rax	# t, tmp2377
	movq	-456(%rbp), %rdx	# type, tmp2378
	movq	%rdx, 8(%rax)	# tmp2378, t_618->common.type
	.loc 1 5426 0
	movq	-704(%rbp), %rax	# arg0, tmp2379
	movzbl	18(%rax), %eax	# *arg0_25, tmp2382
	shrb	$3, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	movl	%eax, %ebx	# D.21082, D.21091
	.loc 1 5427 0
	movl	-800(%rbp), %edx	# overflow, tmp2383
	movq	-720(%rbp), %rax	# t, tmp2384
	movl	%edx, %esi	# tmp2383,
	movq	%rax, %rdi	# tmp2384,
	call	force_fit_type	#
	.loc 1 5426 0
	orl	%ebx, %eax	# D.21091, D.21091
	andl	$1, %eax	#, D.21082
	movl	%eax, %edx	# D.21082, D.21082
	movq	-720(%rbp), %rax	# t, tmp2385
	andl	$1, %edx	#, tmp2387
	leal	0(,%rdx,8), %ecx	#, tmp2388
	movzbl	18(%rax), %edx	#, tmp2389
	andl	$-9, %edx	#, tmp2390
	orl	%ecx, %edx	# tmp2388, tmp2391
	movb	%dl, 18(%rax)	# tmp2391,
	.loc 1 5429 0
	movq	-720(%rbp), %rax	# t, tmp2392
	movzbl	18(%rax), %eax	# *t_618, tmp2395
	shrb	$3, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	movl	%eax, %edx	# D.21082, D.21076
	movq	-704(%rbp), %rax	# arg0, tmp2396
	movzbl	18(%rax), %eax	# *arg0_25, tmp2399
	shrb	$2, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	orl	%edx, %eax	# D.21076, D.21076
	andl	$1, %eax	#, D.21082
	movl	%eax, %edx	# D.21082, D.21082
	movq	-720(%rbp), %rax	# t, tmp2400
	andl	$1, %edx	#, tmp2402
	leal	0(,%rdx,4), %ecx	#, tmp2403
	movzbl	18(%rax), %edx	#, tmp2404
	andl	$-5, %edx	#, tmp2405
	orl	%ecx, %edx	# tmp2403, tmp2406
	movb	%dl, 18(%rax)	# tmp2406,
.LBE29:
	jmp	.L1112	#
.L1107:
	.loc 1 5432 0
	movq	-704(%rbp), %rax	# arg0, tmp2407
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L1112	#,
	.loc 1 5434 0
	movq	-704(%rbp), %rax	# arg0, tmp2408
	movq	32(%rax), %rdx	# arg0_25->real_cst.real_cst, tmp2409
	movq	%rdx, (%rsp)	# tmp2409,
	movq	40(%rax), %rdx	# arg0_25->real_cst.real_cst, tmp2410
	movq	%rdx, 8(%rsp)	# tmp2410,
	movq	48(%rax), %rax	# arg0_25->real_cst.real_cst, tmp2411
	movq	%rax, 16(%rsp)	# tmp2411,
	call	target_negative	#
	testl	%eax, %eax	# D.21084
	je	.L1112	#,
	.loc 1 5435 0
	leaq	-112(%rbp), %rdx	#, tmp2412
	movq	-704(%rbp), %rax	# arg0, tmp2413
	movq	32(%rax), %rcx	# arg0_25->real_cst.real_cst, tmp2414
	movq	%rcx, (%rsp)	# tmp2414,
	movq	40(%rax), %rcx	# arg0_25->real_cst.real_cst, tmp2415
	movq	%rcx, 8(%rsp)	# tmp2415,
	movq	48(%rax), %rax	# arg0_25->real_cst.real_cst, tmp2416
	movq	%rax, 16(%rsp)	# tmp2416,
	movq	%rdx, %rdi	# tmp2412,
	call	ereal_negate	#
	movq	-456(%rbp), %rax	# type, tmp2417
	movq	-112(%rbp), %rdx	# D.17956, tmp2418
	movq	%rdx, (%rsp)	# tmp2418,
	movq	-104(%rbp), %rdx	# D.17956, tmp2419
	movq	%rdx, 8(%rsp)	# tmp2419,
	movq	-96(%rbp), %rdx	# D.17956, tmp2420
	movq	%rdx, 16(%rsp)	# tmp2420,
	movq	%rax, %rdi	# tmp2417,
	call	build_real	#
	movq	%rax, -720(%rbp)	# tmp2421, t
	jmp	.L1112	#
.L1106:
	.loc 1 5439 0
	movq	-704(%rbp), %rax	# arg0, tmp2422
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$80, %al	#, D.21076
	je	.L1113	#,
	.loc 1 5439 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp2423
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1112	#,
.L1113:
	.loc 1 5440 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp2424
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2425
	movq	%rax, %rsi	# tmp2425,
	movl	$80, %edi	#,
	call	build1	#
	jmp	.L937	#
.L1112:
	.loc 1 5441 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1040:
	.loc 1 5444 0
	movq	-704(%rbp), %rax	# arg0, tmp2426
	movq	8(%rax), %rax	# arg0_25->common.type, D.21080
	movzbl	16(%rax), %eax	# _641->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	je	.L1114	#,
	.loc 1 5445 0
	movq	-704(%rbp), %rdx	# arg0, tmp2427
	movq	-456(%rbp), %rax	# type, tmp2428
	movq	%rdx, %rsi	# tmp2427,
	movq	%rax, %rdi	# tmp2428,
	call	convert	#
	jmp	.L937	#
.L1114:
	.loc 1 5446 0
	movq	-704(%rbp), %rax	# arg0, tmp2429
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$125, %al	#, D.21076
	jne	.L1115	#,
	.loc 1 5447 0
	movq	-704(%rbp), %rax	# arg0, tmp2430
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	negate_expr	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2431
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2432
	movq	%rax, %rsi	# tmp2432,
	movl	$125, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1115:
	.loc 1 5450 0
	movq	-704(%rbp), %rax	# arg0, tmp2433
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$27, %al	#, D.21076
	jne	.L1116	#,
	.loc 1 5451 0
	movq	-704(%rbp), %rax	# arg0, tmp2434
	movq	40(%rax), %rax	# arg0_25->complex.imag, D.21080
	movq	%rax, %rdi	# D.21080,
	call	negate_expr	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2435
	movq	32(%rax), %rcx	# arg0_25->complex.real, D.21080
	movq	-456(%rbp), %rax	# type, tmp2436
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2436,
	call	build_complex	#
	jmp	.L937	#
.L1116:
	.loc 1 5453 0
	movq	-704(%rbp), %rax	# arg0, tmp2437
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$59, %al	#, D.21076
	je	.L1117	#,
	.loc 1 5453 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp2438
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$60, %al	#, D.21076
	jne	.L1118	#,
.L1117:
	.loc 1 5454 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp2439
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2440
	movq	%rax, %rsi	# tmp2440,
	movl	$126, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rbx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2441
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2442
	movq	%rax, %rsi	# tmp2442,
	movl	$126, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2443
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movq	-456(%rbp), %rsi	# type, tmp2444
	movq	%rbx, %rcx	# D.21080,
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1118:
	.loc 1 5459 0
	movq	-704(%rbp), %rax	# arg0, tmp2445
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$126, %al	#, D.21076
	jne	.L1119	#,
	.loc 1 5460 0
	movq	-704(%rbp), %rax	# arg0, tmp2446
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21075
	jmp	.L937	#
.L1119:
	.loc 1 5461 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1029:
	.loc 1 5464 0
	cmpl	$0, -884(%rbp)	#, wins
	je	.L1120	#,
	.loc 1 5466 0
	movq	-704(%rbp), %rax	# arg0, tmp2447
	movq	40(%rax), %rax	# arg0_25->int_cst.int_cst.high, D.21089
	notq	%rax	# D.21089
	movq	%rax, %rdx	# D.21089, D.21089
	movq	-704(%rbp), %rax	# arg0, tmp2448
	movq	32(%rax), %rax	# arg0_25->int_cst.int_cst.low, D.21090
	notq	%rax	# D.21090
	movq	%rdx, %rsi	# D.21089,
	movq	%rax, %rdi	# D.21090,
	call	build_int_2_wide	#
	movq	%rax, -720(%rbp)	# tmp2449, t
	.loc 1 5468 0
	movq	-720(%rbp), %rax	# t, tmp2450
	movq	-456(%rbp), %rdx	# type, tmp2451
	movq	%rdx, 8(%rax)	# tmp2451, t_673->common.type
	.loc 1 5469 0
	movq	-720(%rbp), %rax	# t, tmp2452
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp2452,
	call	force_fit_type	#
	.loc 1 5470 0
	movq	-704(%rbp), %rax	# arg0, tmp2453
	movzbl	18(%rax), %eax	# *arg0_25, tmp2456
	shrb	$3, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	movq	-720(%rbp), %rdx	# t, tmp2457
	andl	$1, %eax	#, tmp2459
	leal	0(,%rax,8), %ecx	#, tmp2460
	movzbl	18(%rdx), %eax	#, tmp2461
	andl	$-9, %eax	#, tmp2462
	orl	%ecx, %eax	# tmp2460, tmp2463
	movb	%al, 18(%rdx)	# tmp2463,
	.loc 1 5471 0
	movq	-704(%rbp), %rax	# arg0, tmp2464
	movzbl	18(%rax), %eax	# *arg0_25, tmp2467
	shrb	$2, %al	#, D.21082
	andl	$1, %eax	#, D.21082
	movq	-720(%rbp), %rdx	# t, tmp2468
	andl	$1, %eax	#, tmp2470
	leal	0(,%rax,4), %ecx	#, tmp2471
	movzbl	18(%rdx), %eax	#, tmp2472
	andl	$-5, %eax	#, tmp2473
	orl	%ecx, %eax	# tmp2471, tmp2474
	movb	%al, 18(%rdx)	# tmp2474,
	jmp	.L1121	#
.L1120:
	.loc 1 5473 0
	movq	-704(%rbp), %rax	# arg0, tmp2475
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$90, %al	#, D.21076
	jne	.L1121	#,
	.loc 1 5474 0
	movq	-704(%rbp), %rax	# arg0, tmp2476
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21075
	jmp	.L937	#
.L1121:
	.loc 1 5475 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1013:
	.loc 1 5479 0
	movq	-696(%rbp), %rax	# arg1, tmp2477
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1122	#,
	.loc 1 5480 0
	movq	-696(%rbp), %rax	# arg1, tmp2478
	movq	32(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp2479
	movq	-456(%rbp), %rax	# type, tmp2480
	movq	%rax, %rsi	# tmp2480,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1122:
	.loc 1 5482 0
	movq	-704(%rbp), %rax	# arg0, tmp2481
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1123	#,
	.loc 1 5483 0
	movq	-704(%rbp), %rax	# arg0, tmp2482
	movq	32(%rax), %rcx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rdx	# arg1, tmp2483
	movq	-456(%rbp), %rax	# type, tmp2484
	movq	%rax, %rsi	# tmp2484,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1123:
	.loc 1 5484 0
	movq	-456(%rbp), %rax	# type, tmp2485
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1124	#,
	.loc 1 5484 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp2486
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1125	#,
	movq	-456(%rbp), %rax	# type, tmp2487
	movq	8(%rax), %rax	# type_152->common.type, D.21080
	movzbl	16(%rax), %eax	# _689->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1124	#,
.L1125:
	.loc 1 5486 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp2488
	movq	%rax, %rdi	# tmp2488,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1126	#,
	.loc 1 5487 0
	movq	-704(%rbp), %rdx	# arg0, tmp2489
	movq	-456(%rbp), %rax	# type, tmp2490
	movq	%rdx, %rsi	# tmp2489,
	movq	%rax, %rdi	# tmp2490,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1126:
	.loc 1 5493 0
	movq	-704(%rbp), %rax	# arg0, tmp2491
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L1127	#,
	.loc 1 5494 0
	movq	-696(%rbp), %rax	# arg1, tmp2492
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L1127	#,
	.loc 1 5495 0
	movq	-704(%rbp), %rax	# arg0, tmp2493
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _696->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1127	#,
	.loc 1 5496 0
	movq	-696(%rbp), %rax	# arg1, tmp2494
	movq	40(%rax), %rax	# arg1_33->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _698->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1127	#,
	.loc 1 5497 0
	movq	-696(%rbp), %rax	# arg1, tmp2495
	movq	40(%rax), %rdx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2496
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.21080,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21080,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1127	#,
	.loc 1 5501 0
	movl	$86, -892(%rbp)	#, code
	.loc 1 5502 0
	jmp	.L1025	#
.L1127:
	.loc 1 5508 0
	movq	-704(%rbp), %rax	# arg0, tmp2497
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$59, %al	#, D.21076
	jne	.L1128	#,
	.loc 1 5509 0
	movq	-696(%rbp), %rax	# arg1, tmp2498
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	je	.L1129	#,
.L1128:
	.loc 1 5510 0
	movq	-696(%rbp), %rax	# arg1, tmp2499
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$59, %al	#, D.21076
	jne	.L1130	#,
	.loc 1 5511 0
	movq	-704(%rbp), %rax	# arg0, tmp2500
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	jne	.L1130	#,
.L1129:
.LBB30:
	.loc 1 5515 0
	movq	-704(%rbp), %rax	# arg0, tmp2501
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$59, %al	#, D.21076
	jne	.L1131	#,
	.loc 1 5516 0
	movq	-704(%rbp), %rax	# arg0, tmp2502
	movq	%rax, -648(%rbp)	# tmp2502, parg
	movq	-696(%rbp), %rax	# arg1, tmp2503
	movq	%rax, -640(%rbp)	# tmp2503, marg
	jmp	.L1132	#
.L1131:
	.loc 1 5518 0
	movq	-696(%rbp), %rax	# arg1, tmp2504
	movq	%rax, -648(%rbp)	# tmp2504, parg
	movq	-704(%rbp), %rax	# arg0, tmp2505
	movq	%rax, -640(%rbp)	# tmp2505, marg
.L1132:
	.loc 1 5519 0
	movq	-648(%rbp), %rax	# parg, tmp2506
	movq	32(%rax), %rax	# parg_76->exp.operands, tmp2507
	movq	%rax, -664(%rbp)	# tmp2507, parg0
	.loc 1 5520 0
	movq	-648(%rbp), %rax	# parg, tmp2508
	movq	40(%rax), %rax	# parg_76->exp.operands, tmp2509
	movq	%rax, -656(%rbp)	# tmp2509, parg1
	.loc 1 5521 0
	jmp	.L1133	#
.L1136:
	.loc 1 5521 0 is_stmt 0 discriminator 1
	movq	-664(%rbp), %rax	# parg0, tmp2510
	movq	32(%rax), %rax	# parg0_74->exp.operands, tmp2511
	movq	%rax, -664(%rbp)	# tmp2511, parg0
.L1133:
	movq	-664(%rbp), %rax	# parg0, tmp2512
	movzbl	16(%rax), %eax	# parg0_74->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1134	#,
	.loc 1 5521 0 discriminator 3
	movq	-664(%rbp), %rax	# parg0, tmp2513
	movzbl	16(%rax), %eax	# parg0_74->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1134	#,
	.loc 1 5521 0 discriminator 1
	movq	-664(%rbp), %rax	# parg0, tmp2514
	movzbl	16(%rax), %eax	# parg0_74->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1135	#,
.L1134:
	.loc 1 5521 0 discriminator 2
	movq	-664(%rbp), %rax	# parg0, tmp2515
	movq	32(%rax), %rdx	# parg0_74->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1135	#,
	.loc 1 5521 0 discriminator 1
	movq	-664(%rbp), %rax	# parg0, tmp2516
	movq	8(%rax), %rax	# parg0_74->common.type, D.21080
	movzbl	61(%rax), %eax	# *_721, tmp2519
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-664(%rbp), %rax	# parg0, tmp2520
	movq	32(%rax), %rax	# parg0_74->exp.operands, D.21080
	movq	8(%rax), %rax	# _723->common.type, D.21080
	movzbl	61(%rax), %eax	# *_724, tmp2523
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1136	#,
.L1135:
	.loc 1 5522 0 is_stmt 1
	jmp	.L1137	#
.L1140:
	.loc 1 5522 0 is_stmt 0 discriminator 1
	movq	-656(%rbp), %rax	# parg1, tmp2524
	movq	32(%rax), %rax	# parg1_75->exp.operands, tmp2525
	movq	%rax, -656(%rbp)	# tmp2525, parg1
.L1137:
	movq	-656(%rbp), %rax	# parg1, tmp2526
	movzbl	16(%rax), %eax	# parg1_75->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1138	#,
	.loc 1 5522 0 discriminator 3
	movq	-656(%rbp), %rax	# parg1, tmp2527
	movzbl	16(%rax), %eax	# parg1_75->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1138	#,
	.loc 1 5522 0 discriminator 1
	movq	-656(%rbp), %rax	# parg1, tmp2528
	movzbl	16(%rax), %eax	# parg1_75->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1139	#,
.L1138:
	.loc 1 5522 0 discriminator 2
	movq	-656(%rbp), %rax	# parg1, tmp2529
	movq	32(%rax), %rdx	# parg1_75->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1139	#,
	.loc 1 5522 0 discriminator 1
	movq	-656(%rbp), %rax	# parg1, tmp2530
	movq	8(%rax), %rax	# parg1_75->common.type, D.21080
	movzbl	61(%rax), %eax	# *_732, tmp2533
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-656(%rbp), %rax	# parg1, tmp2534
	movq	32(%rax), %rax	# parg1_75->exp.operands, D.21080
	movq	8(%rax), %rax	# _734->common.type, D.21080
	movzbl	61(%rax), %eax	# *_735, tmp2537
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1140	#,
.L1139:
	.loc 1 5524 0 is_stmt 1
	movq	-664(%rbp), %rax	# parg0, tmp2538
	movzbl	16(%rax), %eax	# parg0_74->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	jne	.L1141	#,
	.loc 1 5525 0
	movq	-656(%rbp), %rax	# parg1, tmp2539
	movzbl	16(%rax), %eax	# parg1_75->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	je	.L1141	#,
	.loc 1 5526 0
	movq	-640(%rbp), %rcx	# marg, tmp2540
	movq	-664(%rbp), %rdx	# parg0, tmp2541
	movq	-456(%rbp), %rax	# type, tmp2542
	movq	%rax, %rsi	# tmp2542,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-656(%rbp), %rcx	# parg1, tmp2543
	movq	-456(%rbp), %rax	# type, tmp2544
	movq	%rax, %rsi	# tmp2544,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1141:
	.loc 1 5529 0
	movq	-664(%rbp), %rax	# parg0, tmp2545
	movzbl	16(%rax), %eax	# parg0_74->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	je	.L1130	#,
	.loc 1 5530 0
	movq	-656(%rbp), %rax	# parg1, tmp2546
	movzbl	16(%rax), %eax	# parg1_75->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	jne	.L1130	#,
	.loc 1 5531 0
	movq	-640(%rbp), %rcx	# marg, tmp2547
	movq	-656(%rbp), %rdx	# parg1, tmp2548
	movq	-456(%rbp), %rax	# type, tmp2549
	movq	%rax, %rsi	# tmp2549,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-664(%rbp), %rcx	# parg0, tmp2550
	movq	-456(%rbp), %rax	# type, tmp2551
	movq	%rax, %rsi	# tmp2551,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1130:
.LBE30:
	.loc 1 5536 0
	movq	-704(%rbp), %rax	# arg0, tmp2552
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	jne	.L1142	#,
	.loc 1 5536 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp2553
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	jne	.L1142	#,
.LBB31:
	.loc 1 5539 0 is_stmt 1
	movq	$0, -608(%rbp)	#, alt0
	movq	$0, -600(%rbp)	#, alt1
	.loc 1 5546 0
	movq	-704(%rbp), %rax	# arg0, tmp2554
	movq	32(%rax), %rax	# arg0_25->exp.operands, tmp2555
	movq	%rax, -632(%rbp)	# tmp2555, arg00
	.loc 1 5547 0
	movq	-704(%rbp), %rax	# arg0, tmp2556
	movq	40(%rax), %rax	# arg0_25->exp.operands, tmp2557
	movq	%rax, -400(%rbp)	# tmp2557, arg01
	.loc 1 5548 0
	movq	-696(%rbp), %rax	# arg1, tmp2558
	movq	32(%rax), %rax	# arg1_33->exp.operands, tmp2559
	movq	%rax, -624(%rbp)	# tmp2559, arg10
	.loc 1 5549 0
	movq	-696(%rbp), %rax	# arg1, tmp2560
	movq	40(%rax), %rax	# arg1_33->exp.operands, tmp2561
	movq	%rax, -616(%rbp)	# tmp2561, arg11
	.loc 1 5550 0
	movq	$0, -592(%rbp)	#, same
	.loc 1 5552 0
	movq	-616(%rbp), %rcx	# arg11, tmp2562
	movq	-400(%rbp), %rax	# arg01, tmp2563
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2562,
	movq	%rax, %rdi	# tmp2563,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1143	#,
	.loc 1 5553 0
	movq	-400(%rbp), %rax	# arg01, tmp2564
	movq	%rax, -592(%rbp)	# tmp2564, same
	movq	-632(%rbp), %rax	# arg00, tmp2565
	movq	%rax, -608(%rbp)	# tmp2565, alt0
	movq	-624(%rbp), %rax	# arg10, tmp2566
	movq	%rax, -600(%rbp)	# tmp2566, alt1
	jmp	.L1144	#
.L1143:
	.loc 1 5554 0
	movq	-624(%rbp), %rcx	# arg10, tmp2567
	movq	-632(%rbp), %rax	# arg00, tmp2568
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2567,
	movq	%rax, %rdi	# tmp2568,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1145	#,
	.loc 1 5555 0
	movq	-632(%rbp), %rax	# arg00, tmp2569
	movq	%rax, -592(%rbp)	# tmp2569, same
	movq	-400(%rbp), %rax	# arg01, tmp2570
	movq	%rax, -608(%rbp)	# tmp2570, alt0
	movq	-616(%rbp), %rax	# arg11, tmp2571
	movq	%rax, -600(%rbp)	# tmp2571, alt1
	jmp	.L1144	#
.L1145:
	.loc 1 5556 0
	movq	-616(%rbp), %rcx	# arg11, tmp2572
	movq	-632(%rbp), %rax	# arg00, tmp2573
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2572,
	movq	%rax, %rdi	# tmp2573,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1146	#,
	.loc 1 5557 0
	movq	-632(%rbp), %rax	# arg00, tmp2574
	movq	%rax, -592(%rbp)	# tmp2574, same
	movq	-400(%rbp), %rax	# arg01, tmp2575
	movq	%rax, -608(%rbp)	# tmp2575, alt0
	movq	-624(%rbp), %rax	# arg10, tmp2576
	movq	%rax, -600(%rbp)	# tmp2576, alt1
	jmp	.L1144	#
.L1146:
	.loc 1 5558 0
	movq	-624(%rbp), %rcx	# arg10, tmp2577
	movq	-400(%rbp), %rax	# arg01, tmp2578
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2577,
	movq	%rax, %rdi	# tmp2578,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1147	#,
	.loc 1 5559 0
	movq	-400(%rbp), %rax	# arg01, tmp2579
	movq	%rax, -592(%rbp)	# tmp2579, same
	movq	-632(%rbp), %rax	# arg00, tmp2580
	movq	%rax, -608(%rbp)	# tmp2580, alt0
	movq	-616(%rbp), %rax	# arg11, tmp2581
	movq	%rax, -600(%rbp)	# tmp2581, alt1
	jmp	.L1144	#
.L1147:
	.loc 1 5564 0
	movq	-400(%rbp), %rax	# arg01, tmp2582
	movzbl	16(%rax), %eax	# arg01_755->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1144	#,
	.loc 1 5565 0
	movq	-616(%rbp), %rax	# arg11, tmp2583
	movzbl	16(%rax), %eax	# arg11_757->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1144	#,
	.loc 1 5566 0
	movq	-400(%rbp), %rax	# arg01, tmp2584
	movq	40(%rax), %rax	# arg01_755->int_cst.int_cst.high, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1144	#,
	.loc 1 5567 0
	movq	-616(%rbp), %rax	# arg11, tmp2585
	movq	40(%rax), %rax	# arg11_757->int_cst.int_cst.high, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1144	#,
.LBB32:
	.loc 1 5570 0
	movq	-400(%rbp), %rax	# arg01, tmp2586
	movq	32(%rax), %rax	# arg01_755->int_cst.int_cst.low, D.21090
	movq	%rax, -584(%rbp)	# D.21090, int01
	.loc 1 5571 0
	movq	-616(%rbp), %rax	# arg11, tmp2587
	movq	32(%rax), %rax	# arg11_757->int_cst.int_cst.low, D.21090
	movq	%rax, -576(%rbp)	# D.21090, int11
	.loc 1 5574 0
	movq	-584(%rbp), %rax	# int01, tmp2589
	sarq	$63, %rax	#, tmp2588
	movq	%rax, %rdx	# tmp2588, D.21089
	xorq	-584(%rbp), %rdx	# int01, D.21089
	subq	%rax, %rdx	# tmp2588, D.21089
	.loc 1 5575 0
	movq	-576(%rbp), %rax	# int11, tmp2591
	sarq	$63, %rax	#, tmp2590
	movq	%rax, %rcx	# tmp2590, tmp2590
	movq	%rcx, %rax	# tmp2590, D.21089
	xorq	-576(%rbp), %rax	# int11, D.21089
	subq	%rcx, %rax	# tmp2590, D.21089
	.loc 1 5574 0
	cmpq	%rax, %rdx	# D.21089, D.21089
	jge	.L1148	#,
	.loc 1 5577 0
	movq	-584(%rbp), %rax	# int01, tmp2592
	movq	%rax, -392(%rbp)	# tmp2592, tmp
	movq	-576(%rbp), %rax	# int11, tmp2593
	movq	%rax, -584(%rbp)	# tmp2593, int01
	movq	-392(%rbp), %rax	# tmp, tmp2594
	movq	%rax, -576(%rbp)	# tmp2594, int11
	.loc 1 5578 0
	movq	-632(%rbp), %rax	# arg00, tmp2595
	movq	%rax, -608(%rbp)	# tmp2595, alt0
	movq	-624(%rbp), %rax	# arg10, tmp2596
	movq	%rax, -632(%rbp)	# tmp2596, arg00
	movq	-608(%rbp), %rax	# alt0, tmp2597
	movq	%rax, -624(%rbp)	# tmp2597, arg10
	.loc 1 5579 0
	movq	-400(%rbp), %rax	# arg01, tmp2598
	movq	%rax, -608(%rbp)	# tmp2598, alt0
	movq	-616(%rbp), %rax	# arg11, tmp2599
	movq	%rax, -400(%rbp)	# tmp2599, arg01
	movq	-608(%rbp), %rax	# alt0, tmp2600
	movq	%rax, -616(%rbp)	# tmp2600, arg11
.L1148:
	.loc 1 5582 0
	movq	-576(%rbp), %rax	# int11, int11.492
	movq	%rax, %rdi	# int11.492,
	call	exact_log2_wide	#
	testl	%eax, %eax	# D.21084
	jle	.L1144	#,
	.loc 1 5582 0 is_stmt 0 discriminator 1
	movq	-584(%rbp), %rax	# int01, tmp2601
	cqto
	idivq	-576(%rbp)	# int11
	movq	%rdx, %rax	# tmp2602, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1144	#,
	.loc 1 5585 0 is_stmt 1
	movq	-584(%rbp), %rax	# int01, tmp2606
	cqto
	idivq	-576(%rbp)	# int11
	.loc 1 5584 0
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21090,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.21080
	movq	-632(%rbp), %rdx	# arg00, tmp2607
	movq	-456(%rbp), %rax	# type, tmp2608
	movq	%rax, %rsi	# tmp2608,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -608(%rbp)	# tmp2609, alt0
	.loc 1 5586 0
	movq	-624(%rbp), %rax	# arg10, tmp2610
	movq	%rax, -600(%rbp)	# tmp2610, alt1
	.loc 1 5587 0
	movq	-616(%rbp), %rax	# arg11, tmp2611
	movq	%rax, -592(%rbp)	# tmp2611, same
.L1144:
.LBE32:
	.loc 1 5591 0
	cmpq	$0, -592(%rbp)	#, same
	je	.L1142	#,
	.loc 1 5592 0
	movq	-600(%rbp), %rcx	# alt1, tmp2612
	movq	-608(%rbp), %rdx	# alt0, tmp2613
	movq	-456(%rbp), %rax	# type, tmp2614
	movq	%rax, %rsi	# tmp2614,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-592(%rbp), %rcx	# same, tmp2615
	movq	-456(%rbp), %rax	# type, tmp2616
	movq	%rax, %rsi	# tmp2616,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1142:
.LBE31:
	.loc 1 5536 0 discriminator 2
	jmp	.L1149	#
.L1124:
	.loc 1 5599 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.493
	.loc 1 5598 0
	testl	%eax, %eax	# flag_unsafe_math_optimizations.493
	je	.L1150	#,
	.loc 1 5600 0
	movq	-696(%rbp), %rax	# arg1, tmp2617
	movq	%rax, %rdi	# tmp2617,
	call	real_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1150	#,
	.loc 1 5601 0
	movq	-704(%rbp), %rdx	# arg0, tmp2618
	movq	-456(%rbp), %rax	# type, tmp2619
	movq	%rdx, %rsi	# tmp2618,
	movq	%rax, %rdi	# tmp2619,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1150:
	.loc 1 5603 0
	movq	-696(%rbp), %rax	# arg1, tmp2620
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L1149	#,
	.loc 1 5604 0
	movq	dconst0(%rip), %rax	# dconst0, tmp2622
	movq	%rax, 24(%rsp)	# tmp2622,
	movq	dconst0+8(%rip), %rax	# dconst0, tmp2623
	movq	%rax, 32(%rsp)	# tmp2623,
	movq	dconst0+16(%rip), %rax	# dconst0, tmp2624
	movq	%rax, 40(%rsp)	# tmp2624,
	movq	-696(%rbp), %rax	# arg1, tmp2625
	movq	32(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp2626
	movq	%rdx, (%rsp)	# tmp2626,
	movq	40(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp2627
	movq	%rdx, 8(%rsp)	# tmp2627,
	movq	48(%rax), %rax	# arg1_33->real_cst.real_cst, tmp2628
	movq	%rax, 16(%rsp)	# tmp2628,
	call	ereal_cmp	#
	testl	%eax, %eax	# D.21084
	jne	.L1149	#,
	.loc 1 5604 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp2629
	movq	32(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp2630
	movq	%rdx, (%rsp)	# tmp2630,
	movq	40(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp2631
	movq	%rdx, 8(%rsp)	# tmp2631,
	movq	48(%rax), %rax	# arg1_33->real_cst.real_cst, tmp2632
	movq	%rax, 16(%rsp)	# tmp2632,
	call	ereal_isneg	#
	testl	%eax, %eax	# D.21084
	je	.L1149	#,
	.loc 1 5605 0 is_stmt 1
	movq	-704(%rbp), %rdx	# arg0, tmp2633
	movq	-456(%rbp), %rax	# type, tmp2634
	movq	%rdx, %rsi	# tmp2633,
	movq	%rax, %rdi	# tmp2634,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1149:
.LBB33:
	.loc 1 5614 0
	movq	-704(%rbp), %rax	# arg0, tmp2635
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, tmp2636
	movl	%eax, -796(%rbp)	# tmp2636, code0
	.loc 1 5615 0
	movq	-696(%rbp), %rax	# arg1, tmp2637
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	movzbl	%al, %eax	# D.21076, tmp2638
	movl	%eax, -792(%rbp)	# tmp2638, code1
	.loc 1 5616 0
	cmpl	$83, -796(%rbp)	#, code0
	jne	.L1151	#,
	.loc 1 5616 0 is_stmt 0 discriminator 1
	cmpl	$82, -792(%rbp)	#, code1
	je	.L1152	#,
.L1151:
	.loc 1 5617 0 is_stmt 1
	cmpl	$83, -792(%rbp)	#, code1
	jne	.L1153	#,
	.loc 1 5617 0 is_stmt 0 discriminator 1
	cmpl	$82, -796(%rbp)	#, code0
	jne	.L1153	#,
.L1152:
	.loc 1 5618 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp2639
	movq	32(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2640
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21080
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1153	#,
	.loc 1 5620 0
	movq	-704(%rbp), %rax	# arg0, tmp2641
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	8(%rax), %rax	# _945->common.type, D.21080
	movzbl	17(%rax), %eax	# *_946, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1153	#,
.LBB34:
	.loc 1 5625 0
	movq	-704(%rbp), %rax	# arg0, tmp2642
	movq	40(%rax), %rax	# arg0_25->exp.operands, tmp2643
	movq	%rax, -568(%rbp)	# tmp2643, tree01
	.loc 1 5626 0
	movq	-696(%rbp), %rax	# arg1, tmp2644
	movq	40(%rax), %rax	# arg1_33->exp.operands, tmp2645
	movq	%rax, -560(%rbp)	# tmp2645, tree11
	.loc 1 5627 0
	jmp	.L1154	#
.L1157:
	.loc 1 5627 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# tree01, tmp2646
	movq	32(%rax), %rax	# tree01_87->exp.operands, tmp2647
	movq	%rax, -568(%rbp)	# tmp2647, tree01
.L1154:
	movq	-568(%rbp), %rax	# tree01, tmp2648
	movzbl	16(%rax), %eax	# tree01_87->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1155	#,
	.loc 1 5627 0 discriminator 3
	movq	-568(%rbp), %rax	# tree01, tmp2649
	movzbl	16(%rax), %eax	# tree01_87->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1155	#,
	.loc 1 5627 0 discriminator 1
	movq	-568(%rbp), %rax	# tree01, tmp2650
	movzbl	16(%rax), %eax	# tree01_87->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1156	#,
.L1155:
	.loc 1 5627 0 discriminator 2
	movq	-568(%rbp), %rax	# tree01, tmp2651
	movq	32(%rax), %rdx	# tree01_87->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1156	#,
	.loc 1 5627 0 discriminator 1
	movq	-568(%rbp), %rax	# tree01, tmp2652
	movq	8(%rax), %rax	# tree01_87->common.type, D.21080
	movzbl	61(%rax), %eax	# *_956, tmp2655
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-568(%rbp), %rax	# tree01, tmp2656
	movq	32(%rax), %rax	# tree01_87->exp.operands, D.21080
	movq	8(%rax), %rax	# _958->common.type, D.21080
	movzbl	61(%rax), %eax	# *_959, tmp2659
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1157	#,
.L1156:
	.loc 1 5628 0 is_stmt 1
	jmp	.L1158	#
.L1161:
	.loc 1 5628 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# tree11, tmp2660
	movq	32(%rax), %rax	# tree11_88->exp.operands, tmp2661
	movq	%rax, -560(%rbp)	# tmp2661, tree11
.L1158:
	movq	-560(%rbp), %rax	# tree11, tmp2662
	movzbl	16(%rax), %eax	# tree11_88->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1159	#,
	.loc 1 5628 0 discriminator 3
	movq	-560(%rbp), %rax	# tree11, tmp2663
	movzbl	16(%rax), %eax	# tree11_88->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1159	#,
	.loc 1 5628 0 discriminator 1
	movq	-560(%rbp), %rax	# tree11, tmp2664
	movzbl	16(%rax), %eax	# tree11_88->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1160	#,
.L1159:
	.loc 1 5628 0 discriminator 2
	movq	-560(%rbp), %rax	# tree11, tmp2665
	movq	32(%rax), %rdx	# tree11_88->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1160	#,
	.loc 1 5628 0 discriminator 1
	movq	-560(%rbp), %rax	# tree11, tmp2666
	movq	8(%rax), %rax	# tree11_88->common.type, D.21080
	movzbl	61(%rax), %eax	# *_967, tmp2669
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-560(%rbp), %rax	# tree11, tmp2670
	movq	32(%rax), %rax	# tree11_88->exp.operands, D.21080
	movq	8(%rax), %rax	# _969->common.type, D.21080
	movzbl	61(%rax), %eax	# *_970, tmp2673
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1161	#,
.L1160:
	.loc 1 5629 0 is_stmt 1
	movq	-568(%rbp), %rax	# tree01, tmp2674
	movzbl	16(%rax), %eax	# tree01_87->common.code, D.21076
	movzbl	%al, %eax	# D.21076, tmp2675
	movl	%eax, -788(%rbp)	# tmp2675, code01
	.loc 1 5630 0
	movq	-560(%rbp), %rax	# tree11, tmp2676
	movzbl	16(%rax), %eax	# tree11_88->common.code, D.21076
	movzbl	%al, %eax	# D.21076, tmp2677
	movl	%eax, -784(%rbp)	# tmp2677, code11
	.loc 1 5631 0
	cmpl	$25, -788(%rbp)	#, code01
	jne	.L1162	#,
	.loc 1 5632 0
	cmpl	$25, -784(%rbp)	#, code11
	jne	.L1162	#,
	.loc 1 5633 0
	movq	-568(%rbp), %rax	# tree01, tmp2678
	movq	40(%rax), %rax	# tree01_87->int_cst.int_cst.high, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1162	#,
	.loc 1 5634 0
	movq	-560(%rbp), %rax	# tree11, tmp2679
	movq	40(%rax), %rax	# tree11_88->int_cst.int_cst.high, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1162	#,
	.loc 1 5635 0
	movq	-568(%rbp), %rax	# tree01, tmp2680
	movq	32(%rax), %rdx	# tree01_87->int_cst.int_cst.low, D.21090
	movq	-560(%rbp), %rax	# tree11, tmp2681
	movq	32(%rax), %rax	# tree11_88->int_cst.int_cst.low, D.21090
	addq	%rax, %rdx	# D.21090, D.21090
	.loc 1 5636 0
	movq	-704(%rbp), %rax	# arg0, tmp2682
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	8(%rax), %rax	# _982->common.type, D.21080
	movzwl	60(%rax), %eax	# *_983, tmp2685
	andw	$511, %ax	#, D.21086
	movzwl	%ax, %eax	# D.21086, D.21090
	.loc 1 5635 0
	cmpq	%rax, %rdx	# D.21090, D.21090
	jne	.L1162	#,
	.loc 1 5637 0
	cmpl	$82, -796(%rbp)	#, code0
	jne	.L1163	#,
	.loc 1 5637 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# tree01, iftmp.494
	jmp	.L1164	#
.L1163:
	.loc 1 5637 0 discriminator 2
	movq	-560(%rbp), %rax	# tree11, iftmp.494
.L1164:
	.loc 1 5637 0 discriminator 3
	movq	-704(%rbp), %rdx	# arg0, tmp2686
	movq	32(%rdx), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rsi	# type, tmp2687
	movq	%rax, %rcx	# iftmp.494,
	movl	$84, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1162:
	.loc 1 5639 0 is_stmt 1
	cmpl	$60, -784(%rbp)	#, code11
	jne	.L1165	#,
.LBB35:
	.loc 1 5642 0
	movq	-560(%rbp), %rax	# tree11, tmp2688
	movq	32(%rax), %rax	# tree11_88->exp.operands, tmp2689
	movq	%rax, -552(%rbp)	# tmp2689, tree110
	.loc 1 5643 0
	movq	-560(%rbp), %rax	# tree11, tmp2690
	movq	40(%rax), %rax	# tree11_88->exp.operands, tmp2691
	movq	%rax, -544(%rbp)	# tmp2691, tree111
	.loc 1 5644 0
	jmp	.L1166	#
.L1169:
	.loc 1 5644 0 is_stmt 0 discriminator 1
	movq	-552(%rbp), %rax	# tree110, tmp2692
	movq	32(%rax), %rax	# tree110_89->exp.operands, tmp2693
	movq	%rax, -552(%rbp)	# tmp2693, tree110
.L1166:
	movq	-552(%rbp), %rax	# tree110, tmp2694
	movzbl	16(%rax), %eax	# tree110_89->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1167	#,
	.loc 1 5644 0 discriminator 3
	movq	-552(%rbp), %rax	# tree110, tmp2695
	movzbl	16(%rax), %eax	# tree110_89->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1167	#,
	.loc 1 5644 0 discriminator 1
	movq	-552(%rbp), %rax	# tree110, tmp2696
	movzbl	16(%rax), %eax	# tree110_89->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1168	#,
.L1167:
	.loc 1 5644 0 discriminator 2
	movq	-552(%rbp), %rax	# tree110, tmp2697
	movq	32(%rax), %rdx	# tree110_89->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1168	#,
	.loc 1 5644 0 discriminator 1
	movq	-552(%rbp), %rax	# tree110, tmp2698
	movq	8(%rax), %rax	# tree110_89->common.type, D.21080
	movzbl	61(%rax), %eax	# *_997, tmp2701
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-552(%rbp), %rax	# tree110, tmp2702
	movq	32(%rax), %rax	# tree110_89->exp.operands, D.21080
	movq	8(%rax), %rax	# _999->common.type, D.21080
	movzbl	61(%rax), %eax	# *_1000, tmp2705
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1169	#,
.L1168:
	.loc 1 5645 0 is_stmt 1
	jmp	.L1170	#
.L1173:
	.loc 1 5645 0 is_stmt 0 discriminator 1
	movq	-544(%rbp), %rax	# tree111, tmp2706
	movq	32(%rax), %rax	# tree111_90->exp.operands, tmp2707
	movq	%rax, -544(%rbp)	# tmp2707, tree111
.L1170:
	movq	-544(%rbp), %rax	# tree111, tmp2708
	movzbl	16(%rax), %eax	# tree111_90->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1171	#,
	.loc 1 5645 0 discriminator 3
	movq	-544(%rbp), %rax	# tree111, tmp2709
	movzbl	16(%rax), %eax	# tree111_90->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1171	#,
	.loc 1 5645 0 discriminator 1
	movq	-544(%rbp), %rax	# tree111, tmp2710
	movzbl	16(%rax), %eax	# tree111_90->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1172	#,
.L1171:
	.loc 1 5645 0 discriminator 2
	movq	-544(%rbp), %rax	# tree111, tmp2711
	movq	32(%rax), %rdx	# tree111_90->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1172	#,
	.loc 1 5645 0 discriminator 1
	movq	-544(%rbp), %rax	# tree111, tmp2712
	movq	8(%rax), %rax	# tree111_90->common.type, D.21080
	movzbl	61(%rax), %eax	# *_1008, tmp2715
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-544(%rbp), %rax	# tree111, tmp2716
	movq	32(%rax), %rax	# tree111_90->exp.operands, D.21080
	movq	8(%rax), %rax	# _1010->common.type, D.21080
	movzbl	61(%rax), %eax	# *_1011, tmp2719
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1173	#,
.L1172:
	.loc 1 5646 0 is_stmt 1
	movq	-552(%rbp), %rax	# tree110, tmp2720
	movzbl	16(%rax), %eax	# tree110_89->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1174	#,
	.loc 1 5648 0
	movq	-704(%rbp), %rax	# arg0, tmp2721
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	8(%rax), %rax	# _1015->common.type, D.21080
	movzwl	60(%rax), %eax	# *_1016, tmp2724
	andw	$511, %ax	#, D.21086
	.loc 1 5647 0
	movzwl	%ax, %edx	# D.21086, D.21090
	movq	-552(%rbp), %rax	# tree110, tmp2725
	movq	%rdx, %rsi	# D.21090,
	movq	%rax, %rdi	# tmp2725,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21084
	jne	.L1174	#,
	.loc 1 5651 0
	movq	-544(%rbp), %rcx	# tree111, tmp2726
	movq	-568(%rbp), %rax	# tree01, tmp2727
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2726,
	movq	%rax, %rdi	# tmp2727,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1174	#,
	.loc 1 5652 0
	movq	-704(%rbp), %rax	# arg0, tmp2728
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	cmpl	$82, -796(%rbp)	#, code0
	jne	.L1175	#,
	.loc 1 5652 0 is_stmt 0 discriminator 1
	movl	$84, %eax	#, iftmp.495
	jmp	.L1176	#
.L1175:
	.loc 1 5652 0 discriminator 2
	movl	$85, %eax	#, iftmp.495
.L1176:
	.loc 1 5652 0 discriminator 3
	movq	-568(%rbp), %rcx	# tree01, tmp2729
	movq	-456(%rbp), %rsi	# type, tmp2730
	movl	%eax, %edi	# iftmp.495,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1174:
.LBE35:
	jmp	.L1153	#
.L1165:
	.loc 1 5657 0 is_stmt 1
	cmpl	$60, -788(%rbp)	#, code01
	jne	.L1153	#,
.LBB36:
	.loc 1 5660 0
	movq	-568(%rbp), %rax	# tree01, tmp2731
	movq	32(%rax), %rax	# tree01_87->exp.operands, tmp2732
	movq	%rax, -536(%rbp)	# tmp2732, tree010
	.loc 1 5661 0
	movq	-568(%rbp), %rax	# tree01, tmp2733
	movq	40(%rax), %rax	# tree01_87->exp.operands, tmp2734
	movq	%rax, -528(%rbp)	# tmp2734, tree011
	.loc 1 5662 0
	jmp	.L1177	#
.L1180:
	.loc 1 5662 0 is_stmt 0 discriminator 1
	movq	-536(%rbp), %rax	# tree010, tmp2735
	movq	32(%rax), %rax	# tree010_91->exp.operands, tmp2736
	movq	%rax, -536(%rbp)	# tmp2736, tree010
.L1177:
	movq	-536(%rbp), %rax	# tree010, tmp2737
	movzbl	16(%rax), %eax	# tree010_91->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1178	#,
	.loc 1 5662 0 discriminator 3
	movq	-536(%rbp), %rax	# tree010, tmp2738
	movzbl	16(%rax), %eax	# tree010_91->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1178	#,
	.loc 1 5662 0 discriminator 1
	movq	-536(%rbp), %rax	# tree010, tmp2739
	movzbl	16(%rax), %eax	# tree010_91->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1179	#,
.L1178:
	.loc 1 5662 0 discriminator 2
	movq	-536(%rbp), %rax	# tree010, tmp2740
	movq	32(%rax), %rdx	# tree010_91->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1179	#,
	.loc 1 5662 0 discriminator 1
	movq	-536(%rbp), %rax	# tree010, tmp2741
	movq	8(%rax), %rax	# tree010_91->common.type, D.21080
	movzbl	61(%rax), %eax	# *_1032, tmp2744
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-536(%rbp), %rax	# tree010, tmp2745
	movq	32(%rax), %rax	# tree010_91->exp.operands, D.21080
	movq	8(%rax), %rax	# _1034->common.type, D.21080
	movzbl	61(%rax), %eax	# *_1035, tmp2748
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1180	#,
.L1179:
	.loc 1 5663 0 is_stmt 1
	jmp	.L1181	#
.L1184:
	.loc 1 5663 0 is_stmt 0 discriminator 1
	movq	-528(%rbp), %rax	# tree011, tmp2749
	movq	32(%rax), %rax	# tree011_92->exp.operands, tmp2750
	movq	%rax, -528(%rbp)	# tmp2750, tree011
.L1181:
	movq	-528(%rbp), %rax	# tree011, tmp2751
	movzbl	16(%rax), %eax	# tree011_92->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1182	#,
	.loc 1 5663 0 discriminator 3
	movq	-528(%rbp), %rax	# tree011, tmp2752
	movzbl	16(%rax), %eax	# tree011_92->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1182	#,
	.loc 1 5663 0 discriminator 1
	movq	-528(%rbp), %rax	# tree011, tmp2753
	movzbl	16(%rax), %eax	# tree011_92->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1183	#,
.L1182:
	.loc 1 5663 0 discriminator 2
	movq	-528(%rbp), %rax	# tree011, tmp2754
	movq	32(%rax), %rdx	# tree011_92->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1183	#,
	.loc 1 5663 0 discriminator 1
	movq	-528(%rbp), %rax	# tree011, tmp2755
	movq	8(%rax), %rax	# tree011_92->common.type, D.21080
	movzbl	61(%rax), %eax	# *_1043, tmp2758
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-528(%rbp), %rax	# tree011, tmp2759
	movq	32(%rax), %rax	# tree011_92->exp.operands, D.21080
	movq	8(%rax), %rax	# _1045->common.type, D.21080
	movzbl	61(%rax), %eax	# *_1046, tmp2762
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1184	#,
.L1183:
	.loc 1 5664 0 is_stmt 1
	movq	-536(%rbp), %rax	# tree010, tmp2763
	movzbl	16(%rax), %eax	# tree010_91->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1153	#,
	.loc 1 5666 0
	movq	-704(%rbp), %rax	# arg0, tmp2764
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	8(%rax), %rax	# _1050->common.type, D.21080
	movzwl	60(%rax), %eax	# *_1051, tmp2767
	andw	$511, %ax	#, D.21086
	.loc 1 5665 0
	movzwl	%ax, %edx	# D.21086, D.21090
	movq	-536(%rbp), %rax	# tree010, tmp2768
	movq	%rdx, %rsi	# D.21090,
	movq	%rax, %rdi	# tmp2768,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21084
	jne	.L1153	#,
	.loc 1 5669 0
	movq	-528(%rbp), %rcx	# tree011, tmp2769
	movq	-560(%rbp), %rax	# tree11, tmp2770
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2769,
	movq	%rax, %rdi	# tmp2770,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1153	#,
	.loc 1 5670 0
	movq	-704(%rbp), %rax	# arg0, tmp2771
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	cmpl	$82, -796(%rbp)	#, code0
	je	.L1185	#,
	.loc 1 5670 0 is_stmt 0 discriminator 1
	movl	$84, %eax	#, iftmp.496
	jmp	.L1186	#
.L1185:
	.loc 1 5670 0 discriminator 2
	movl	$85, %eax	#, iftmp.496
.L1186:
	.loc 1 5670 0 discriminator 3
	movq	-560(%rbp), %rcx	# tree11, tmp2772
	movq	-456(%rbp), %rsi	# type, tmp2773
	movl	%eax, %edi	# iftmp.496,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1153:
.LBE36:
.LBE34:
.LBE33:
	.loc 1 5685 0 is_stmt 1
	cmpl	$0, -884(%rbp)	#, wins
	jne	.L1187	#,
	.loc 1 5686 0
	movq	-456(%rbp), %rax	# type, tmp2774
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1188	#,
	.loc 1 5686 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp2775
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1189	#,
	movq	-456(%rbp), %rax	# type, tmp2776
	movq	8(%rax), %rax	# type_152->common.type, D.21080
	movzbl	16(%rax), %eax	# _1259->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	jne	.L1189	#,
.L1188:
	.loc 1 5687 0 is_stmt 1
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.497
	testl	%eax, %eax	# flag_unsafe_math_optimizations.497
	je	.L1187	#,
	.loc 1 5687 0 is_stmt 0 discriminator 1
	cmpl	$61, -892(%rbp)	#, code
	jne	.L1187	#,
.L1189:
.LBB37:
	.loc 1 5697 0 is_stmt 1
	leaq	-144(%rbp), %rdi	#, tmp2777
	leaq	-728(%rbp), %rcx	#, tmp2778
	leaq	-736(%rbp), %rdx	#, tmp2779
	movl	-892(%rbp), %esi	# code, tmp2780
	movq	-704(%rbp), %rax	# arg0, tmp2781
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp2777,
	movq	%rax, %rdi	# tmp2781,
	call	split_tree	#
	movq	%rax, -376(%rbp)	# tmp2782, var0
	.loc 1 5698 0
	cmpl	$60, -892(%rbp)	#, code
	sete	%al	#, D.21088
	movzbl	%al, %r8d	# D.21088, D.21084
	leaq	-48(%rbp), %rdi	#, tmp2783
	leaq	-80(%rbp), %rcx	#, tmp2784
	leaq	-112(%rbp), %rdx	#, tmp2785
	movl	-892(%rbp), %esi	# code, tmp2786
	movq	-696(%rbp), %rax	# arg1, tmp2787
	movl	%r8d, %r9d	# D.21084,
	movq	%rdi, %r8	# tmp2783,
	movq	%rax, %rdi	# tmp2787,
	call	split_tree	#
	movq	%rax, -368(%rbp)	# tmp2788, var1
	.loc 1 5703 0
	cmpq	$0, -376(%rbp)	#, var0
	setne	%al	#, D.21088
	movzbl	%al, %edx	# D.21088, D.21084
	cmpq	$0, -368(%rbp)	#, var1
	setne	%al	#, D.21088
	movzbl	%al, %eax	# D.21088, D.21084
	addl	%eax, %edx	# D.21084, D.21084
	.loc 1 5704 0
	movq	-736(%rbp), %rax	# con0, con0.498
	testq	%rax, %rax	# con0.498
	setne	%al	#, D.21088
	movzbl	%al, %eax	# D.21088, D.21084
	addl	%eax, %edx	# D.21084, D.21084
	movq	-112(%rbp), %rax	# con1, con1.499
	testq	%rax, %rax	# con1.499
	setne	%al	#, D.21088
	movzbl	%al, %eax	# D.21088, D.21084
	addl	%eax, %edx	# D.21084, D.21084
	.loc 1 5705 0
	movq	-728(%rbp), %rax	# lit0, lit0.500
	testq	%rax, %rax	# lit0.500
	setne	%al	#, D.21088
	movzbl	%al, %eax	# D.21088, D.21084
	addl	%eax, %edx	# D.21084, D.21084
	movq	-80(%rbp), %rax	# lit1, lit1.501
	testq	%rax, %rax	# lit1.501
	setne	%al	#, D.21088
	movzbl	%al, %eax	# D.21088, D.21084
	addl	%eax, %edx	# D.21084, D.21084
	.loc 1 5706 0
	movq	-144(%rbp), %rax	# minus_lit0, minus_lit0.502
	testq	%rax, %rax	# minus_lit0.502
	setne	%al	#, D.21088
	movzbl	%al, %eax	# D.21088, D.21084
	addl	%eax, %edx	# D.21084, D.21084
	movq	-48(%rbp), %rax	# minus_lit1, minus_lit1.503
	testq	%rax, %rax	# minus_lit1.503
	setne	%al	#, D.21088
	movzbl	%al, %eax	# D.21088, D.21084
	addl	%edx, %eax	# D.21084, D.21084
	.loc 1 5703 0
	cmpl	$2, %eax	#, D.21084
	jle	.L1187	#,
	.loc 1 5709 0
	cmpl	$60, -892(%rbp)	#, code
	jne	.L1191	#,
	.loc 1 5710 0
	movl	$59, -892(%rbp)	#, code
.L1191:
	.loc 1 5712 0
	movq	-456(%rbp), %rcx	# type, tmp2789
	movl	-892(%rbp), %edx	# code, tmp2790
	movq	-368(%rbp), %rsi	# var1, tmp2791
	movq	-376(%rbp), %rax	# var0, tmp2792
	movq	%rax, %rdi	# tmp2792,
	call	associate_trees	#
	movq	%rax, -376(%rbp)	# tmp2793, var0
	.loc 1 5713 0
	movq	-112(%rbp), %rsi	# con1, con1.504
	movq	-736(%rbp), %rax	# con0, con0.505
	movq	-456(%rbp), %rcx	# type, tmp2794
	movl	-892(%rbp), %edx	# code, tmp2795
	movq	%rax, %rdi	# con0.505,
	call	associate_trees	#
	movq	%rax, -736(%rbp)	# con0.506, con0
	.loc 1 5714 0
	movq	-80(%rbp), %rsi	# lit1, lit1.507
	movq	-728(%rbp), %rax	# lit0, lit0.508
	movq	-456(%rbp), %rcx	# type, tmp2796
	movl	-892(%rbp), %edx	# code, tmp2797
	movq	%rax, %rdi	# lit0.508,
	call	associate_trees	#
	movq	%rax, -728(%rbp)	# lit0.509, lit0
	.loc 1 5715 0
	movq	-48(%rbp), %rsi	# minus_lit1, minus_lit1.510
	movq	-144(%rbp), %rax	# minus_lit0, minus_lit0.511
	movq	-456(%rbp), %rcx	# type, tmp2798
	movl	-892(%rbp), %edx	# code, tmp2799
	movq	%rax, %rdi	# minus_lit0.511,
	call	associate_trees	#
	movq	%rax, -144(%rbp)	# minus_lit0.512, minus_lit0
	.loc 1 5722 0
	movq	-144(%rbp), %rax	# minus_lit0, minus_lit0.513
	testq	%rax, %rax	# minus_lit0.513
	je	.L1192	#,
	.loc 1 5722 0 is_stmt 0 discriminator 1
	movq	-728(%rbp), %rax	# lit0, lit0.514
	testq	%rax, %rax	# lit0.514
	je	.L1192	#,
	.loc 1 5724 0 is_stmt 1
	movq	-144(%rbp), %rdx	# minus_lit0, minus_lit0.515
	movq	-728(%rbp), %rax	# lit0, lit0.516
	movq	%rdx, %rsi	# minus_lit0.515,
	movq	%rax, %rdi	# lit0.516,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21084
	je	.L1193	#,
	.loc 1 5726 0
	movq	-728(%rbp), %rsi	# lit0, lit0.517
	movq	-144(%rbp), %rax	# minus_lit0, minus_lit0.518
	movq	-456(%rbp), %rdx	# type, tmp2800
	movq	%rdx, %rcx	# tmp2800,
	movl	$60, %edx	#,
	movq	%rax, %rdi	# minus_lit0.518,
	call	associate_trees	#
	movq	%rax, -144(%rbp)	# minus_lit0.519, minus_lit0
	.loc 1 5728 0
	movq	$0, -728(%rbp)	#, lit0
	jmp	.L1192	#
.L1193:
	.loc 1 5732 0
	movq	-144(%rbp), %rsi	# minus_lit0, minus_lit0.520
	movq	-728(%rbp), %rax	# lit0, lit0.521
	movq	-456(%rbp), %rdx	# type, tmp2801
	movq	%rdx, %rcx	# tmp2801,
	movl	$60, %edx	#,
	movq	%rax, %rdi	# lit0.521,
	call	associate_trees	#
	movq	%rax, -728(%rbp)	# lit0.522, lit0
	.loc 1 5734 0
	movq	$0, -144(%rbp)	#, minus_lit0
.L1192:
	.loc 1 5737 0
	movq	-144(%rbp), %rax	# minus_lit0, minus_lit0.523
	testq	%rax, %rax	# minus_lit0.523
	je	.L1194	#,
	.loc 1 5739 0
	movq	-736(%rbp), %rax	# con0, con0.524
	testq	%rax, %rax	# con0.524
	jne	.L1195	#,
	.loc 1 5740 0
	movq	-144(%rbp), %rsi	# minus_lit0, minus_lit0.525
	movq	-456(%rbp), %rdx	# type, tmp2802
	movq	-376(%rbp), %rax	# var0, tmp2803
	movq	%rdx, %rcx	# tmp2802,
	movl	$60, %edx	#,
	movq	%rax, %rdi	# tmp2803,
	call	associate_trees	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp2804
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2804,
	call	convert	#
	jmp	.L937	#
.L1195:
	.loc 1 5744 0
	movq	-144(%rbp), %rsi	# minus_lit0, minus_lit0.526
	movq	-736(%rbp), %rax	# con0, con0.527
	movq	-456(%rbp), %rdx	# type, tmp2805
	movq	%rdx, %rcx	# tmp2805,
	movl	$60, %edx	#,
	movq	%rax, %rdi	# con0.527,
	call	associate_trees	#
	movq	%rax, -736(%rbp)	# con0.528, con0
	.loc 1 5746 0
	movq	-736(%rbp), %rsi	# con0, con0.529
	movq	-456(%rbp), %rdx	# type, tmp2806
	movq	-376(%rbp), %rax	# var0, tmp2807
	movq	%rdx, %rcx	# tmp2806,
	movl	$59, %edx	#,
	movq	%rax, %rdi	# tmp2807,
	call	associate_trees	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp2808
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2808,
	call	convert	#
	jmp	.L937	#
.L1194:
	.loc 1 5751 0
	movq	-728(%rbp), %rsi	# lit0, lit0.530
	movq	-736(%rbp), %rax	# con0, con0.531
	movq	-456(%rbp), %rcx	# type, tmp2809
	movl	-892(%rbp), %edx	# code, tmp2810
	movq	%rax, %rdi	# con0.531,
	call	associate_trees	#
	movq	%rax, -736(%rbp)	# con0.532, con0
	.loc 1 5752 0
	movq	-736(%rbp), %rsi	# con0, con0.533
	movq	-456(%rbp), %rcx	# type, tmp2811
	movl	-892(%rbp), %edx	# code, tmp2812
	movq	-376(%rbp), %rax	# var0, tmp2813
	movq	%rax, %rdi	# tmp2813,
	call	associate_trees	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp2814
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2814,
	call	convert	#
	jmp	.L937	#
.L1187:
.LBE37:
	.loc 1 5761 0
	cmpl	$0, -884(%rbp)	#, wins
	je	.L1197	#,
	.loc 1 5762 0
	movq	-696(%rbp), %rdx	# arg1, tmp2815
	movq	-704(%rbp), %rsi	# arg0, tmp2816
	movl	-892(%rbp), %eax	# code, tmp2817
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp2817,
	call	const_binop	#
	movq	%rax, -712(%rbp)	# tmp2818, t1
.L1197:
	.loc 1 5763 0
	cmpq	$0, -712(%rbp)	#, t1
	je	.L1198	#,
	.loc 1 5767 0
	movq	-712(%rbp), %rax	# t1, tmp2819
	movq	8(%rax), %rdx	# t1_16->common.type, D.21080
	movq	-720(%rbp), %rax	# t, tmp2820
	movq	8(%rax), %rax	# t_150->common.type, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1199	#,
	.loc 1 5768 0
	movq	-720(%rbp), %rax	# t, tmp2821
	movq	8(%rax), %rax	# t_150->common.type, D.21080
	movq	-712(%rbp), %rdx	# t1, tmp2822
	movq	%rdx, %rsi	# tmp2822,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, -712(%rbp)	# tmp2823, t1
.L1199:
	.loc 1 5770 0
	movq	-712(%rbp), %rax	# t1, D.21075
	jmp	.L937	#
.L1198:
	.loc 1 5772 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1014:
	.loc 1 5776 0
	movq	-696(%rbp), %rax	# arg1, tmp2824
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1200	#,
	.loc 1 5777 0
	movq	-696(%rbp), %rax	# arg1, tmp2825
	movq	32(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp2826
	movq	-456(%rbp), %rax	# type, tmp2827
	movq	%rax, %rsi	# tmp2827,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1200:
	.loc 1 5779 0
	movq	-704(%rbp), %rax	# arg0, tmp2828
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1201	#,
	.loc 1 5779 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp2829
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L1201	#,
	.loc 1 5781 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp2830
	movq	32(%rax), %rbx	# arg0_25->exp.operands, D.21080
	leaq	-80(%rbp), %rdx	#, tmp2831
	movq	-696(%rbp), %rax	# arg1, tmp2832
	movq	32(%rax), %rcx	# arg1_33->real_cst.real_cst, tmp2833
	movq	%rcx, (%rsp)	# tmp2833,
	movq	40(%rax), %rcx	# arg1_33->real_cst.real_cst, tmp2834
	movq	%rcx, 8(%rsp)	# tmp2834,
	movq	48(%rax), %rax	# arg1_33->real_cst.real_cst, tmp2835
	movq	%rax, 16(%rsp)	# tmp2835,
	movq	%rdx, %rdi	# tmp2831,
	call	ereal_negate	#
	movq	-696(%rbp), %rax	# arg1, tmp2836
	movq	8(%rax), %rax	# arg1_33->common.type, D.21080
	movq	-80(%rbp), %rdx	# D.18462, tmp2837
	movq	%rdx, (%rsp)	# tmp2837,
	movq	-72(%rbp), %rdx	# D.18462, tmp2838
	movq	%rdx, 8(%rsp)	# tmp2838,
	movq	-64(%rbp), %rdx	# D.18462, tmp2839
	movq	%rdx, 16(%rsp)	# tmp2839,
	movq	%rax, %rdi	# D.21080,
	call	build_real	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp2840
	movq	%rbx, %rcx	# D.21080,
	movq	%rax, %rsi	# tmp2840,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 5780 0
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1201:
	.loc 1 5786 0
	movq	-456(%rbp), %rax	# type, tmp2841
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1202	#,
	.loc 1 5786 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp2842
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1203	#,
	movq	-456(%rbp), %rax	# type, tmp2843
	movq	8(%rax), %rax	# type_152->common.type, D.21080
	movzbl	16(%rax), %eax	# _830->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1202	#,
.L1203:
	.loc 1 5788 0 is_stmt 1
	cmpl	$0, -884(%rbp)	#, wins
	jne	.L1204	#,
	.loc 1 5788 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp2844
	movq	%rax, %rdi	# tmp2844,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1204	#,
	.loc 1 5789 0 is_stmt 1
	movq	-696(%rbp), %rdx	# arg1, tmp2845
	movq	-456(%rbp), %rax	# type, tmp2846
	movq	%rdx, %rsi	# tmp2845,
	movq	%rax, %rdi	# tmp2846,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	negate_expr	#
	jmp	.L937	#
.L1204:
	.loc 1 5790 0
	movq	-696(%rbp), %rax	# arg1, tmp2847
	movq	%rax, %rdi	# tmp2847,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1205	#,
	.loc 1 5791 0
	movq	-704(%rbp), %rdx	# arg0, tmp2848
	movq	-456(%rbp), %rax	# type, tmp2849
	movq	%rdx, %rsi	# tmp2848,
	movq	%rax, %rdi	# tmp2849,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1205:
	.loc 1 5797 0
	movq	-704(%rbp), %rax	# arg0, tmp2850
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	jne	.L1206	#,
	.loc 1 5797 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp2851
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$61, %al	#, D.21076
	jne	.L1206	#,
	.loc 1 5798 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp2852
	movq	40(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2853
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1206	#,
	.loc 1 5800 0
	movq	-704(%rbp), %rax	# arg0, tmp2854
	movq	40(%rax), %rbx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp2855
	movq	32(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2856
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2857
	movq	%rax, %rsi	# tmp2857,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp2858
	movq	%rbx, %rcx	# D.21080,
	movq	%rax, %rsi	# tmp2858,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1206:
	.loc 1 5797 0 discriminator 2
	jmp	.L1207	#
.L1202:
	.loc 1 5808 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.534
	.loc 1 5807 0
	testl	%eax, %eax	# flag_unsafe_math_optimizations.534
	je	.L1207	#,
	.loc 1 5811 0
	cmpl	$0, -884(%rbp)	#, wins
	jne	.L1208	#,
	.loc 1 5811 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp2859
	movq	%rax, %rdi	# tmp2859,
	call	real_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1208	#,
	.loc 1 5812 0 is_stmt 1
	movq	-696(%rbp), %rdx	# arg1, tmp2860
	movq	-456(%rbp), %rax	# type, tmp2861
	movq	%rdx, %rsi	# tmp2860,
	movq	%rax, %rdi	# tmp2861,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	negate_expr	#
	jmp	.L937	#
.L1208:
	.loc 1 5814 0
	movq	-696(%rbp), %rax	# arg1, tmp2862
	movq	%rax, %rdi	# tmp2862,
	call	real_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1207	#,
	.loc 1 5815 0
	movq	-704(%rbp), %rdx	# arg0, tmp2863
	movq	-456(%rbp), %rax	# type, tmp2864
	movq	%rdx, %rsi	# tmp2863,
	movq	%rax, %rdi	# tmp2864,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1207:
	.loc 1 5824 0
	movq	-456(%rbp), %rax	# type, tmp2865
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1209	#,
	.loc 1 5824 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp2866
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1210	#,
	movq	-456(%rbp), %rax	# type, tmp2867
	movq	8(%rax), %rax	# type_152->common.type, D.21080
	movzbl	16(%rax), %eax	# _859->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	jne	.L1210	#,
.L1209:
	.loc 1 5824 0 discriminator 2
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.535
	testl	%eax, %eax	# flag_unsafe_math_optimizations.535
	je	.L1211	#,
.L1210:
	.loc 1 5825 0 is_stmt 1
	movq	-696(%rbp), %rcx	# arg1, tmp2868
	movq	-704(%rbp), %rax	# arg0, tmp2869
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp2868,
	movq	%rax, %rdi	# tmp2869,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1211	#,
	.loc 1 5826 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp2870
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp2870,
	call	convert	#
	jmp	.L937	#
.L1211:
	.loc 1 5828 0
	jmp	.L1153	#
.L1015:
	.loc 1 5832 0
	movq	-704(%rbp), %rax	# arg0, tmp2871
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1212	#,
	.loc 1 5832 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp2872
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1212	#,
	.loc 1 5833 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp2873
	movq	32(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2874
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2875
	movq	%rax, %rsi	# tmp2875,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1212:
	.loc 1 5836 0
	movq	-456(%rbp), %rax	# type, tmp2876
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1213	#,
	.loc 1 5836 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp2877
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1214	#,
	movq	-456(%rbp), %rax	# type, tmp2878
	movq	8(%rax), %rax	# type_152->common.type, D.21080
	movzbl	16(%rax), %eax	# _873->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1213	#,
.L1214:
	.loc 1 5838 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp2879
	movq	%rax, %rdi	# tmp2879,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1215	#,
	.loc 1 5839 0
	movq	-704(%rbp), %rdx	# arg0, tmp2880
	movq	-696(%rbp), %rcx	# arg1, tmp2881
	movq	-456(%rbp), %rax	# type, tmp2882
	movq	%rcx, %rsi	# tmp2881,
	movq	%rax, %rdi	# tmp2882,
	call	omit_one_operand	#
	jmp	.L937	#
.L1215:
	.loc 1 5840 0
	movq	-696(%rbp), %rax	# arg1, tmp2883
	movq	%rax, %rdi	# tmp2883,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1216	#,
	.loc 1 5841 0
	movq	-704(%rbp), %rdx	# arg0, tmp2884
	movq	-456(%rbp), %rax	# type, tmp2885
	movq	%rdx, %rsi	# tmp2884,
	movq	%rax, %rdi	# tmp2885,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1216:
	.loc 1 5844 0
	movq	-696(%rbp), %rax	# arg1, tmp2886
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$82, %al	#, D.21076
	jne	.L1217	#,
	.loc 1 5845 0
	movq	-696(%rbp), %rax	# arg1, tmp2887
	movq	32(%rax), %rax	# arg1_33->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1217	#,
	.loc 1 5846 0
	movq	-696(%rbp), %rax	# arg1, tmp2888
	movq	40(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp2889
	movq	-456(%rbp), %rax	# type, tmp2890
	movq	%rax, %rsi	# tmp2890,
	movl	$82, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1217:
	.loc 1 5848 0
	movq	-704(%rbp), %rax	# arg0, tmp2891
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$82, %al	#, D.21076
	jne	.L1218	#,
	.loc 1 5849 0
	movq	-704(%rbp), %rax	# arg0, tmp2892
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1218	#,
	.loc 1 5850 0
	movq	-704(%rbp), %rax	# arg0, tmp2893
	movq	40(%rax), %rcx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rdx	# arg1, tmp2894
	movq	-456(%rbp), %rax	# type, tmp2895
	movq	%rax, %rsi	# tmp2895,
	movl	$82, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1218:
	.loc 1 5853 0
	movq	-696(%rbp), %rax	# arg1, tmp2896
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1219	#,
	.loc 1 5854 0
	movq	-720(%rbp), %rax	# t, tmp2897
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movl	-892(%rbp), %edx	# code, tmp2898
	movq	-696(%rbp), %rsi	# arg1, tmp2899
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.21080,
	call	extract_muldiv	#
	movq	%rax, -448(%rbp)	# tmp2900, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1219	#,
	.loc 1 5856 0
	movq	-448(%rbp), %rdx	# tem, tmp2901
	movq	-456(%rbp), %rax	# type, tmp2902
	movq	%rdx, %rsi	# tmp2901,
	movq	%rax, %rdi	# tmp2902,
	call	convert	#
	jmp	.L937	#
.L1219:
	.loc 1 5853 0 discriminator 1
	jmp	.L1220	#
.L1213:
	.loc 1 5863 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.536
	.loc 1 5862 0
	testl	%eax, %eax	# flag_unsafe_math_optimizations.536
	je	.L1221	#,
	.loc 1 5864 0
	movq	-696(%rbp), %rax	# arg1, tmp2903
	movq	%rax, %rdi	# tmp2903,
	call	real_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1221	#,
	.loc 1 5865 0
	movq	-704(%rbp), %rdx	# arg0, tmp2904
	movq	-696(%rbp), %rcx	# arg1, tmp2905
	movq	-456(%rbp), %rax	# type, tmp2906
	movq	%rcx, %rsi	# tmp2905,
	movq	%rax, %rdi	# tmp2906,
	call	omit_one_operand	#
	jmp	.L937	#
.L1221:
	.loc 1 5869 0
	movq	-696(%rbp), %rax	# arg1, tmp2907
	movq	%rax, %rdi	# tmp2907,
	call	real_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1222	#,
	.loc 1 5870 0
	movq	-704(%rbp), %rdx	# arg0, tmp2908
	movq	-456(%rbp), %rax	# type, tmp2909
	movq	%rdx, %rsi	# tmp2908,
	movq	%rax, %rdi	# tmp2909,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1222:
	.loc 1 5872 0
	cmpl	$0, -884(%rbp)	#, wins
	jne	.L1220	#,
	.loc 1 5872 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp2910
	movq	%rax, %rdi	# tmp2910,
	call	real_twop	#
	testl	%eax, %eax	# D.21084
	je	.L1220	#,
	call	global_bindings_p	#
	testl	%eax, %eax	# D.21084
	jne	.L1220	#,
	.loc 1 5873 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp2911
	movq	%rax, %rdi	# tmp2911,
	call	contains_placeholder_p	#
	testl	%eax, %eax	# D.21084
	jne	.L1220	#,
.LBB38:
	.loc 1 5875 0
	movq	-704(%rbp), %rax	# arg0, tmp2912
	movq	%rax, %rdi	# tmp2912,
	call	save_expr	#
	movq	%rax, -384(%rbp)	# tmp2913, arg
	.loc 1 5876 0
	movq	-384(%rbp), %rcx	# arg, tmp2914
	movq	-384(%rbp), %rdx	# arg, tmp2915
	movq	-456(%rbp), %rax	# type, tmp2916
	movq	%rax, %rsi	# tmp2916,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1220:
.LBE38:
	.loc 1 5879 0
	jmp	.L1153	#
.L1025:
	.loc 1 5883 0
	movq	-696(%rbp), %rax	# arg1, tmp2917
	movq	%rax, %rdi	# tmp2917,
	call	integer_all_onesp	#
	testl	%eax, %eax	# D.21084
	je	.L1223	#,
	.loc 1 5884 0
	movq	-704(%rbp), %rdx	# arg0, tmp2918
	movq	-696(%rbp), %rcx	# arg1, tmp2919
	movq	-456(%rbp), %rax	# type, tmp2920
	movq	%rcx, %rsi	# tmp2919,
	movq	%rax, %rdi	# tmp2920,
	call	omit_one_operand	#
	jmp	.L937	#
.L1223:
	.loc 1 5885 0
	movq	-696(%rbp), %rax	# arg1, tmp2921
	movq	%rax, %rdi	# tmp2921,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1224	#,
	.loc 1 5886 0
	movq	-704(%rbp), %rdx	# arg0, tmp2922
	movq	-456(%rbp), %rax	# type, tmp2923
	movq	%rdx, %rsi	# tmp2922,
	movq	%rax, %rdi	# tmp2923,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1224:
	.loc 1 5887 0
	movq	-696(%rbp), %rcx	# arg1, tmp2924
	movq	-704(%rbp), %rdx	# arg0, tmp2925
	movq	-456(%rbp), %rsi	# type, tmp2926
	movl	-892(%rbp), %eax	# code, tmp2927
	movl	%eax, %edi	# tmp2927,
	call	distribute_bit_expr	#
	movq	%rax, -712(%rbp)	# tmp2928, t1
	.loc 1 5888 0
	cmpq	$0, -712(%rbp)	#, t1
	je	.L1225	#,
	.loc 1 5889 0
	movq	-712(%rbp), %rax	# t1, D.21075
	jmp	.L937	#
.L1225:
	.loc 1 5897 0
	movq	-704(%rbp), %rax	# arg0, tmp2929
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$90, %al	#, D.21076
	jne	.L1226	#,
	.loc 1 5898 0
	movq	-696(%rbp), %rax	# arg1, tmp2930
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$90, %al	#, D.21076
	jne	.L1226	#,
	.loc 1 5900 0
	movq	-696(%rbp), %rax	# arg1, tmp2931
	movq	32(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2932
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2933
	movq	%rax, %rsi	# tmp2933,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp2934
	movq	%rax, %rsi	# tmp2934,
	movl	$90, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1226:
	.loc 1 5908 0
	jmp	.L1149	#
.L1026:
	.loc 1 5911 0
	movq	-696(%rbp), %rax	# arg1, tmp2935
	movq	%rax, %rdi	# tmp2935,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1227	#,
	.loc 1 5912 0
	movq	-704(%rbp), %rdx	# arg0, tmp2936
	movq	-456(%rbp), %rax	# type, tmp2937
	movq	%rdx, %rsi	# tmp2936,
	movq	%rax, %rdi	# tmp2937,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1227:
	.loc 1 5913 0
	movq	-696(%rbp), %rax	# arg1, tmp2938
	movq	%rax, %rdi	# tmp2938,
	call	integer_all_onesp	#
	testl	%eax, %eax	# D.21084
	je	.L1228	#,
	.loc 1 5914 0
	movq	-704(%rbp), %rdx	# arg0, tmp2939
	movq	-456(%rbp), %rax	# type, tmp2940
	movq	%rax, %rsi	# tmp2940,
	movl	$90, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1228:
	.loc 1 5920 0
	movq	-704(%rbp), %rax	# arg0, tmp2941
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L1229	#,
	.loc 1 5921 0
	movq	-696(%rbp), %rax	# arg1, tmp2942
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L1229	#,
	.loc 1 5922 0
	movq	-704(%rbp), %rax	# arg0, tmp2943
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _915->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1229	#,
	.loc 1 5923 0
	movq	-696(%rbp), %rax	# arg1, tmp2944
	movq	40(%rax), %rax	# arg1_33->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _917->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1229	#,
	.loc 1 5924 0
	movq	-696(%rbp), %rax	# arg1, tmp2945
	movq	40(%rax), %rdx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2946
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.21080,
	movl	$88, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21080,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1229	#,
	.loc 1 5928 0
	movl	$86, -892(%rbp)	#, code
	.loc 1 5929 0
	jmp	.L1025	#
.L1229:
	.loc 1 5934 0
	jmp	.L1149	#
.L1027:
	.loc 1 5938 0
	movq	-696(%rbp), %rax	# arg1, tmp2947
	movq	%rax, %rdi	# tmp2947,
	call	integer_all_onesp	#
	testl	%eax, %eax	# D.21084
	je	.L1230	#,
	.loc 1 5939 0
	movq	-704(%rbp), %rdx	# arg0, tmp2948
	movq	-456(%rbp), %rax	# type, tmp2949
	movq	%rdx, %rsi	# tmp2948,
	movq	%rax, %rdi	# tmp2949,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1230:
	.loc 1 5940 0
	movq	-696(%rbp), %rax	# arg1, tmp2950
	movq	%rax, %rdi	# tmp2950,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1231	#,
	.loc 1 5941 0
	movq	-704(%rbp), %rdx	# arg0, tmp2951
	movq	-696(%rbp), %rcx	# arg1, tmp2952
	movq	-456(%rbp), %rax	# type, tmp2953
	movq	%rcx, %rsi	# tmp2952,
	movq	%rax, %rdi	# tmp2953,
	call	omit_one_operand	#
	jmp	.L937	#
.L1231:
	.loc 1 5942 0
	movq	-696(%rbp), %rcx	# arg1, tmp2954
	movq	-704(%rbp), %rdx	# arg0, tmp2955
	movq	-456(%rbp), %rsi	# type, tmp2956
	movl	-892(%rbp), %eax	# code, tmp2957
	movl	%eax, %edi	# tmp2957,
	call	distribute_bit_expr	#
	movq	%rax, -712(%rbp)	# tmp2958, t1
	.loc 1 5943 0
	cmpq	$0, -712(%rbp)	#, t1
	je	.L1232	#,
	.loc 1 5944 0
	movq	-712(%rbp), %rax	# t1, D.21075
	jmp	.L937	#
.L1232:
	.loc 1 5946 0
	movq	-704(%rbp), %rax	# arg0, tmp2959
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1233	#,
	.loc 1 5946 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp2960
	movzbl	16(%rax), %eax	# arg1_36->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	jne	.L1233	#,
	.loc 1 5947 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp2961
	movq	32(%rax), %rax	# arg1_36->exp.operands, D.21080
	movq	8(%rax), %rax	# _1078->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1079, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1233	#,
.LBB39:
	.loc 1 5950 0
	movq	-696(%rbp), %rax	# arg1, tmp2962
	movq	32(%rax), %rax	# arg1_36->exp.operands, D.21080
	movq	8(%rax), %rax	# _1082->common.type, D.21080
	movzwl	60(%rax), %eax	# *_1083, tmp2965
	andw	$511, %ax	#, D.21086
	.loc 1 5949 0
	movzwl	%ax, %eax	# D.21086, tmp2966
	movl	%eax, -780(%rbp)	# tmp2966, prec
	.loc 1 5952 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.538
	andl	$33554432, %eax	#, D.21084
	testl	%eax, %eax	# D.21084
	je	.L1234	#,
	.loc 1 5952 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.537
	jmp	.L1235	#
.L1234:
	.loc 1 5952 0 discriminator 2
	movl	$32, %eax	#, iftmp.537
.L1235:
	.loc 1 5952 0 discriminator 3
	cmpl	-780(%rbp), %eax	# prec, iftmp.537
	jbe	.L1233	#,
	.loc 1 5952 0 discriminator 1
	cmpl	$63, -780(%rbp)	#, prec
	ja	.L1233	#,
	.loc 1 5953 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp2967
	movq	32(%rax), %rax	# arg0_25->int_cst.int_cst.low, D.21090
	notq	%rax	# D.21090
	movq	%rax, %rsi	# D.21090, D.21090
	.loc 1 5954 0
	movl	-780(%rbp), %eax	# prec, prec.539
	movl	$1, %edx	#, tmp2968
	movl	%eax, %ecx	# prec.539, tmp4208
	salq	%cl, %rdx	# tmp4208, D.21089
	movq	%rdx, %rax	# D.21089, D.21089
	subq	$1, %rax	#, D.21089
	andq	%rsi, %rax	# D.21090, D.21090
	.loc 1 5953 0
	testq	%rax, %rax	# D.21090
	jne	.L1233	#,
	.loc 1 5955 0
	movq	-696(%rbp), %rax	# arg1, tmp2969
	movq	32(%rax), %rdx	# arg1_36->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2970
	movq	%rax, %rsi	# tmp2970,
	movl	$115, %edi	#,
	call	build1	#
	jmp	.L937	#
.L1233:
.LBE39:
	.loc 1 5957 0
	movq	-696(%rbp), %rax	# arg1, tmp2971
	movzbl	16(%rax), %eax	# arg1_36->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1236	#,
	.loc 1 5957 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp2972
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	jne	.L1236	#,
	.loc 1 5958 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp2973
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	8(%rax), %rax	# _1101->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1102, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1236	#,
.LBB40:
	.loc 1 5961 0
	movq	-704(%rbp), %rax	# arg0, tmp2974
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	8(%rax), %rax	# _1105->common.type, D.21080
	movzwl	60(%rax), %eax	# *_1106, tmp2977
	andw	$511, %ax	#, D.21086
	.loc 1 5960 0
	movzwl	%ax, %eax	# D.21086, tmp2978
	movl	%eax, -776(%rbp)	# tmp2978, prec
	.loc 1 5963 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.541
	andl	$33554432, %eax	#, D.21084
	testl	%eax, %eax	# D.21084
	je	.L1237	#,
	.loc 1 5963 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.540
	jmp	.L1238	#
.L1237:
	.loc 1 5963 0 discriminator 2
	movl	$32, %eax	#, iftmp.540
.L1238:
	.loc 1 5963 0 discriminator 3
	cmpl	-776(%rbp), %eax	# prec, iftmp.540
	jbe	.L1236	#,
	.loc 1 5963 0 discriminator 1
	cmpl	$63, -776(%rbp)	#, prec
	ja	.L1236	#,
	.loc 1 5964 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp2979
	movq	32(%rax), %rax	# arg1_36->int_cst.int_cst.low, D.21090
	notq	%rax	# D.21090
	movq	%rax, %rsi	# D.21090, D.21090
	.loc 1 5965 0
	movl	-776(%rbp), %eax	# prec, prec.542
	movl	$1, %edx	#, tmp2980
	movl	%eax, %ecx	# prec.542, tmp4211
	salq	%cl, %rdx	# tmp4211, D.21089
	movq	%rdx, %rax	# D.21089, D.21089
	subq	$1, %rax	#, D.21089
	andq	%rsi, %rax	# D.21090, D.21090
	.loc 1 5964 0
	testq	%rax, %rax	# D.21090
	jne	.L1236	#,
	.loc 1 5966 0
	movq	-704(%rbp), %rax	# arg0, tmp2981
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2982
	movq	%rax, %rsi	# tmp2982,
	movl	$115, %edi	#,
	call	build1	#
	jmp	.L937	#
.L1236:
.LBE40:
	.loc 1 5975 0
	movq	-704(%rbp), %rax	# arg0, tmp2983
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$90, %al	#, D.21076
	jne	.L1239	#,
	.loc 1 5976 0
	movq	-696(%rbp), %rax	# arg1, tmp2984
	movzbl	16(%rax), %eax	# arg1_36->common.code, D.21076
	cmpb	$90, %al	#, D.21076
	jne	.L1239	#,
	.loc 1 5978 0
	movq	-696(%rbp), %rax	# arg1, tmp2985
	movq	32(%rax), %rcx	# arg1_36->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp2986
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp2987
	movq	%rax, %rsi	# tmp2987,
	movl	$86, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp2988
	movq	%rax, %rsi	# tmp2988,
	movl	$90, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1239:
	.loc 1 5984 0
	jmp	.L1153	#
.L1028:
	.loc 1 5987 0
	movq	-704(%rbp), %rax	# arg0, tmp2989
	movq	%rax, %rdi	# tmp2989,
	call	integer_all_onesp	#
	testl	%eax, %eax	# D.21084
	je	.L1240	#,
	.loc 1 5988 0
	movq	-696(%rbp), %rdx	# arg1, tmp2990
	movq	-456(%rbp), %rax	# type, tmp2991
	movq	%rdx, %rsi	# tmp2990,
	movq	%rax, %rdi	# tmp2991,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1240:
	.loc 1 5989 0
	movq	-704(%rbp), %rax	# arg0, tmp2992
	movq	%rax, %rdi	# tmp2992,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1241	#,
	.loc 1 5990 0
	movq	-696(%rbp), %rdx	# arg1, tmp2993
	movq	-704(%rbp), %rcx	# arg0, tmp2994
	movq	-456(%rbp), %rax	# type, tmp2995
	movq	%rcx, %rsi	# tmp2994,
	movq	%rax, %rdi	# tmp2995,
	call	omit_one_operand	#
	jmp	.L937	#
.L1241:
	.loc 1 5991 0
	movq	-696(%rbp), %rax	# arg1, tmp2996
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1242	#,
	.loc 1 5993 0
	movq	-696(%rbp), %rdx	# arg1, tmp2997
	movq	-456(%rbp), %rax	# type, tmp2998
	movq	%rax, %rsi	# tmp2998,
	movl	$90, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -696(%rbp)	# tmp2999, arg1
	.loc 1 5994 0
	movl	$88, -892(%rbp)	#, code
	.loc 1 5995 0
	jmp	.L1027	#
.L1242:
	.loc 1 5997 0
	jmp	.L1187	#
.L1018:
	.loc 1 6009 0
	movq	-704(%rbp), %rax	# arg0, tmp3000
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1243	#,
	.loc 1 6009 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3001
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1243	#,
	.loc 1 6010 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3002
	movq	32(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3003
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp3004
	movq	%rax, %rsi	# tmp3004,
	movl	$70, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1243:
	.loc 1 6015 0
	movq	-696(%rbp), %rax	# arg1, tmp3005
	movq	%rax, %rdi	# tmp3005,
	call	real_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1244	#,
	.loc 1 6016 0
	movq	-704(%rbp), %rdx	# arg0, tmp3006
	movq	-456(%rbp), %rax	# type, tmp3007
	movq	%rdx, %rsi	# tmp3006,
	movq	%rax, %rdi	# tmp3007,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1244:
	.loc 1 6023 0
	movq	-696(%rbp), %rax	# arg1, tmp3008
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L1245	#,
	.loc 1 6025 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.543
	testl	%eax, %eax	# flag_unsafe_math_optimizations.543
	je	.L1246	#,
	.loc 1 6026 0
	movq	-456(%rbp), %rax	# type, tmp3009
	movq	dconst1(%rip), %rdx	# dconst1, tmp3011
	movq	%rdx, (%rsp)	# tmp3011,
	movq	dconst1+8(%rip), %rdx	# dconst1, tmp3012
	movq	%rdx, 8(%rsp)	# tmp3012,
	movq	dconst1+16(%rip), %rdx	# dconst1, tmp3013
	movq	%rdx, 16(%rsp)	# tmp3013,
	movq	%rax, %rdi	# tmp3009,
	call	build_real	#
	movq	%rax, %rsi	#, D.21080
	movq	-696(%rbp), %rdx	# arg1, tmp3014
	movl	-892(%rbp), %eax	# code, tmp3015
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp3015,
	call	const_binop	#
	movq	%rax, -448(%rbp)	# tmp3016, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1246	#,
	.loc 1 6028 0
	movq	-448(%rbp), %rcx	# tem, tmp3017
	movq	-704(%rbp), %rdx	# arg0, tmp3018
	movq	-456(%rbp), %rax	# type, tmp3019
	movq	%rax, %rsi	# tmp3019,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1246:
	.loc 1 6030 0
	movl	optimize(%rip), %eax	# optimize, optimize.544
	testl	%eax, %eax	# optimize.544
	je	.L1245	#,
.LBB41:
	.loc 1 6033 0
	movq	-696(%rbp), %rax	# arg1, tmp3020
	movq	32(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp3021
	movq	%rdx, -48(%rbp)	# tmp3021, r
	movq	40(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp3022
	movq	%rdx, -40(%rbp)	# tmp3022, r
	movq	48(%rax), %rax	# arg1_33->real_cst.real_cst, tmp3023
	movq	%rax, -32(%rbp)	# tmp3023, r
	.loc 1 6034 0
	movq	-704(%rbp), %rax	# arg0, tmp3024
	movq	8(%rax), %rax	# arg0_25->common.type, D.21080
	movzbl	61(%rax), %eax	# *_1145, tmp3027
	shrb	%al	# D.21081
	movzbl	%al, %eax	# D.21081, D.21092
	leaq	-48(%rbp), %rdx	#, tmp3028
	movq	%rdx, %rsi	# tmp3028,
	movl	%eax, %edi	# D.21092,
	call	exact_real_inverse	#
	testl	%eax, %eax	# D.21084
	je	.L1245	#,
	.loc 1 6036 0
	movq	-456(%rbp), %rax	# type, tmp3029
	movq	-48(%rbp), %rdx	# r, tmp3030
	movq	%rdx, (%rsp)	# tmp3030,
	movq	-40(%rbp), %rdx	# r, tmp3031
	movq	%rdx, 8(%rsp)	# tmp3031,
	movq	-32(%rbp), %rdx	# r, tmp3032
	movq	%rdx, 16(%rsp)	# tmp3032,
	movq	%rax, %rdi	# tmp3029,
	call	build_real	#
	movq	%rax, -448(%rbp)	# tmp3033, tem
	.loc 1 6037 0
	movq	-448(%rbp), %rcx	# tem, tmp3034
	movq	-704(%rbp), %rdx	# arg0, tmp3035
	movq	-456(%rbp), %rax	# type, tmp3036
	movq	%rax, %rsi	# tmp3036,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1245:
.LBE41:
	.loc 1 6042 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.545
	testl	%eax, %eax	# flag_unsafe_math_optimizations.545
	je	.L1248	#,
	.loc 1 6043 0
	movq	-704(%rbp), %rax	# arg0, tmp3037
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$70, %al	#, D.21076
	jne	.L1248	#,
	.loc 1 6045 0
	movq	-704(%rbp), %rax	# arg0, tmp3038
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3039
	movq	-456(%rbp), %rax	# type, tmp3040
	movq	%rax, %rsi	# tmp3040,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3041
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp3042
	movq	%rax, %rsi	# tmp3042,
	movl	$70, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1248:
	.loc 1 6050 0
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.546
	testl	%eax, %eax	# flag_unsafe_math_optimizations.546
	je	.L1249	#,
	.loc 1 6051 0
	movq	-696(%rbp), %rax	# arg1, tmp3043
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$70, %al	#, D.21076
	jne	.L1249	#,
	.loc 1 6053 0
	movq	-696(%rbp), %rax	# arg1, tmp3044
	movq	40(%rax), %rbx	# arg1_33->exp.operands, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3045
	movq	32(%rax), %rcx	# arg1_33->exp.operands, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3046
	movq	-456(%rbp), %rax	# type, tmp3047
	movq	%rax, %rsi	# tmp3047,
	movl	$70, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp3048
	movq	%rbx, %rcx	# D.21080,
	movq	%rax, %rsi	# tmp3048,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1249:
	.loc 1 6058 0
	jmp	.L1187	#
.L1016:
	.loc 1 6065 0
	movq	-696(%rbp), %rax	# arg1, tmp3049
	movq	%rax, %rdi	# tmp3049,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1250	#,
	.loc 1 6066 0
	movq	-704(%rbp), %rdx	# arg0, tmp3050
	movq	-456(%rbp), %rax	# type, tmp3051
	movq	%rdx, %rsi	# tmp3050,
	movq	%rax, %rdi	# tmp3051,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1250:
	.loc 1 6067 0
	movq	-696(%rbp), %rax	# arg1, tmp3052
	movq	%rax, %rdi	# tmp3052,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1251	#,
	.loc 1 6068 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1251:
	.loc 1 6076 0
	cmpl	$63, -892(%rbp)	#, code
	je	.L1252	#,
	.loc 1 6076 0 is_stmt 0 discriminator 1
	cmpl	$64, -892(%rbp)	#, code
	jne	.L1253	#,
.L1252:
	.loc 1 6077 0 is_stmt 1
	movq	-696(%rbp), %rdx	# arg1, tmp3053
	movq	-704(%rbp), %rcx	# arg0, tmp3054
	movq	-456(%rbp), %rax	# type, tmp3055
	movq	%rcx, %rsi	# tmp3054,
	movq	%rax, %rdi	# tmp3055,
	call	multiple_of_p	#
	testl	%eax, %eax	# D.21084
	je	.L1253	#,
	.loc 1 6078 0
	movq	-696(%rbp), %rcx	# arg1, tmp3056
	movq	-704(%rbp), %rdx	# arg0, tmp3057
	movq	-456(%rbp), %rax	# type, tmp3058
	movq	%rax, %rsi	# tmp3058,
	movl	$71, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1253:
	.loc 1 6080 0
	movq	-696(%rbp), %rax	# arg1, tmp3059
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1254	#,
	.loc 1 6081 0
	movq	-720(%rbp), %rax	# t, tmp3060
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movl	-892(%rbp), %edx	# code, tmp3061
	movq	-696(%rbp), %rsi	# arg1, tmp3062
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.21080,
	call	extract_muldiv	#
	movq	%rax, -448(%rbp)	# tmp3063, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1254	#,
	.loc 1 6083 0
	movq	-448(%rbp), %rdx	# tem, tmp3064
	movq	-456(%rbp), %rax	# type, tmp3065
	movq	%rdx, %rsi	# tmp3064,
	movq	%rax, %rdi	# tmp3065,
	call	convert	#
	jmp	.L937	#
.L1254:
	.loc 1 6085 0
	jmp	.L1187	#
.L1017:
	.loc 1 6091 0
	movq	-696(%rbp), %rax	# arg1, tmp3066
	movq	%rax, %rdi	# tmp3066,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1255	#,
	.loc 1 6092 0
	movq	global_trees+88(%rip), %rcx	# global_trees, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3067
	movq	-456(%rbp), %rax	# type, tmp3068
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3068,
	call	omit_one_operand	#
	jmp	.L937	#
.L1255:
	.loc 1 6093 0
	movq	-696(%rbp), %rax	# arg1, tmp3069
	movq	%rax, %rdi	# tmp3069,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1256	#,
	.loc 1 6094 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1256:
	.loc 1 6096 0
	movq	-696(%rbp), %rax	# arg1, tmp3070
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1257	#,
	.loc 1 6097 0
	movq	-720(%rbp), %rax	# t, tmp3071
	movq	32(%rax), %rax	# t_150->exp.operands, D.21080
	movl	-892(%rbp), %edx	# code, tmp3072
	movq	-696(%rbp), %rsi	# arg1, tmp3073
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.21080,
	call	extract_muldiv	#
	movq	%rax, -448(%rbp)	# tmp3074, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1257	#,
	.loc 1 6099 0
	movq	-448(%rbp), %rdx	# tem, tmp3075
	movq	-456(%rbp), %rax	# type, tmp3076
	movq	%rdx, %rsi	# tmp3075,
	movq	%rax, %rdi	# tmp3076,
	call	convert	#
	jmp	.L937	#
.L1257:
	.loc 1 6101 0
	jmp	.L1187	#
.L1024:
	.loc 1 6107 0
	movq	-696(%rbp), %rax	# arg1, tmp3077
	movq	%rax, %rdi	# tmp3077,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1258	#,
	.loc 1 6108 0
	movq	-704(%rbp), %rdx	# arg0, tmp3078
	movq	-456(%rbp), %rax	# type, tmp3079
	movq	%rdx, %rsi	# tmp3078,
	movq	%rax, %rdi	# tmp3079,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1258:
	.loc 1 6111 0
	movq	-696(%rbp), %rax	# arg1, tmp3080
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1259	#,
	.loc 1 6111 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3081
	movq	%rax, %rdi	# tmp3081,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21084
	jns	.L1259	#,
	.loc 1 6112 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1259:
	.loc 1 6115 0
	cmpl	$84, -892(%rbp)	#, code
	jne	.L1260	#,
	.loc 1 6115 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3082
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1260	#,
	.loc 1 6117 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, tmp3083
	movb	$85, 16(%rax)	#, t_150->common.code
	.loc 1 6118 0
	movl	$85, -892(%rbp)	#, code
	.loc 1 6123 0
	movq	-456(%rbp), %rax	# type, tmp3084
	movzbl	61(%rax), %eax	# *type_152, tmp3087
	shrb	%al	# D.21081
	movzbl	%al, %eax	# D.21081, D.21084
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.21087
	.loc 1 6121 0
	movzwl	%ax, %eax	# D.21087, D.21090
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21090,
	call	build_int_2_wide	#
	movq	%rax, %rdx	#, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3089
	movq	8(%rax), %rax	# arg1_33->common.type, D.21080
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	.loc 1 6119 0
	movq	-696(%rbp), %rdx	# arg1, tmp3090
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.21080,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, -696(%rbp)	# tmp3091, arg1
	movq	-720(%rbp), %rax	# t, tmp3092
	movq	-696(%rbp), %rdx	# arg1, tmp3093
	movq	%rdx, 40(%rax)	# tmp3093, t_150->exp.operands
	.loc 1 6125 0
	movq	-696(%rbp), %rax	# arg1, tmp3094
	movq	%rax, %rdi	# tmp3094,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21084
	jns	.L1260	#,
	.loc 1 6126 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1260:
	.loc 1 6132 0
	cmpl	$85, -892(%rbp)	#, code
	jne	.L1261	#,
	.loc 1 6132 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3095
	movzbl	16(%rax), %eax	# arg1_37->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1261	#,
	.loc 1 6133 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3096
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	je	.L1262	#,
	.loc 1 6134 0
	movq	-704(%rbp), %rax	# arg0, tmp3097
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$89, %al	#, D.21076
	je	.L1262	#,
	.loc 1 6135 0
	movq	-704(%rbp), %rax	# arg0, tmp3098
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$86, %al	#, D.21076
	je	.L1262	#,
	.loc 1 6136 0
	movq	-704(%rbp), %rax	# arg0, tmp3099
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$87, %al	#, D.21076
	jne	.L1261	#,
.L1262:
	.loc 1 6137 0
	movq	-704(%rbp), %rax	# arg0, tmp3100
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _1210->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1261	#,
	.loc 1 6138 0
	movq	-704(%rbp), %rax	# arg0, tmp3101
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3102
	movq	-456(%rbp), %rsi	# type, tmp3103
	movl	-892(%rbp), %eax	# code, tmp3104
	movl	%eax, %edi	# tmp3104,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rbx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3105
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3106
	movq	-456(%rbp), %rsi	# type, tmp3107
	movl	-892(%rbp), %eax	# code, tmp3108
	movl	%eax, %edi	# tmp3108,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3109
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movq	-456(%rbp), %rsi	# type, tmp3110
	movq	%rbx, %rcx	# D.21080,
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1261:
	.loc 1 6146 0
	cmpl	$85, -892(%rbp)	#, code
	jne	.L1263	#,
	.loc 1 6146 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3111
	movzbl	16(%rax), %eax	# arg1_37->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1263	#,
	.loc 1 6147 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3112
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$85, %al	#, D.21076
	jne	.L1263	#,
	.loc 1 6148 0
	movq	-704(%rbp), %rax	# arg0, tmp3113
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _1224->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1263	#,
	.loc 1 6149 0
	movq	-696(%rbp), %rax	# arg1, tmp3114
	movq	40(%rax), %rax	# arg1_37->int_cst.int_cst.high, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1263	#,
	.loc 1 6150 0
	movq	-704(%rbp), %rax	# arg0, tmp3115
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	40(%rax), %rax	# _1227->int_cst.int_cst.high, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1263	#,
	.loc 1 6151 0
	movq	-696(%rbp), %rax	# arg1, tmp3116
	movq	32(%rax), %rdx	# arg1_37->int_cst.int_cst.low, D.21090
	.loc 1 6152 0
	movq	-704(%rbp), %rax	# arg0, tmp3117
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	32(%rax), %rax	# _1230->int_cst.int_cst.low, D.21090
	addq	%rax, %rdx	# D.21090, D.21090
	.loc 1 6153 0
	movq	-456(%rbp), %rax	# type, tmp3118
	movzbl	61(%rax), %eax	# *type_152, tmp3121
	shrb	%al	# D.21081
	movzbl	%al, %eax	# D.21081, D.21084
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.21087
	movzwl	%ax, %eax	# D.21087, D.21090
	.loc 1 6151 0
	cmpq	%rax, %rdx	# D.21090, D.21090
	jne	.L1263	#,
	.loc 1 6154 0
	movq	-704(%rbp), %rax	# arg0, tmp3123
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21075
	jmp	.L937	#
.L1263:
	.loc 1 6156 0
	jmp	.L1187	#
.L1021:
	.loc 1 6159 0
	movq	-696(%rbp), %rcx	# arg1, tmp3124
	movq	-704(%rbp), %rax	# arg0, tmp3125
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp3124,
	movq	%rax, %rdi	# tmp3125,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1264	#,
	.loc 1 6160 0
	movq	-696(%rbp), %rdx	# arg1, tmp3126
	movq	-704(%rbp), %rcx	# arg0, tmp3127
	movq	-456(%rbp), %rax	# type, tmp3128
	movq	%rcx, %rsi	# tmp3127,
	movq	%rax, %rdi	# tmp3128,
	call	omit_one_operand	#
	jmp	.L937	#
.L1264:
	.loc 1 6161 0
	movq	-456(%rbp), %rax	# type, tmp3129
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1265	#,
	.loc 1 6161 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp3130
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1265	#,
	movq	-456(%rbp), %rax	# type, tmp3131
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1265	#,
	movq	-456(%rbp), %rax	# type, tmp3132
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L1266	#,
.L1265:
	.loc 1 6162 0 is_stmt 1
	movq	-456(%rbp), %rax	# type, tmp3133
	movq	104(%rax), %rcx	# type_152->type.minval, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3134
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3134,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1266	#,
	.loc 1 6163 0
	movq	-704(%rbp), %rdx	# arg0, tmp3135
	movq	-696(%rbp), %rcx	# arg1, tmp3136
	movq	-456(%rbp), %rax	# type, tmp3137
	movq	%rcx, %rsi	# tmp3136,
	movq	%rax, %rdi	# tmp3137,
	call	omit_one_operand	#
	jmp	.L937	#
.L1266:
	.loc 1 6164 0
	jmp	.L1153	#
.L1022:
	.loc 1 6167 0
	movq	-696(%rbp), %rcx	# arg1, tmp3138
	movq	-704(%rbp), %rax	# arg0, tmp3139
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp3138,
	movq	%rax, %rdi	# tmp3139,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1267	#,
	.loc 1 6168 0
	movq	-696(%rbp), %rdx	# arg1, tmp3140
	movq	-704(%rbp), %rcx	# arg0, tmp3141
	movq	-456(%rbp), %rax	# type, tmp3142
	movq	%rcx, %rsi	# tmp3141,
	movq	%rax, %rdi	# tmp3142,
	call	omit_one_operand	#
	jmp	.L937	#
.L1267:
	.loc 1 6169 0
	movq	-456(%rbp), %rax	# type, tmp3143
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1268	#,
	.loc 1 6169 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp3144
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1268	#,
	movq	-456(%rbp), %rax	# type, tmp3145
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1268	#,
	movq	-456(%rbp), %rax	# type, tmp3146
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L1269	#,
.L1268:
	.loc 1 6170 0 is_stmt 1
	movq	-456(%rbp), %rax	# type, tmp3147
	movq	112(%rax), %rax	# type_152->type.maxval, D.21080
	testq	%rax, %rax	# D.21080
	je	.L1269	#,
	.loc 1 6171 0
	movq	-456(%rbp), %rax	# type, tmp3148
	movq	112(%rax), %rcx	# type_152->type.maxval, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3149
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3149,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1269	#,
	.loc 1 6172 0
	movq	-704(%rbp), %rdx	# arg0, tmp3150
	movq	-696(%rbp), %rcx	# arg1, tmp3151
	movq	-456(%rbp), %rax	# type, tmp3152
	movq	%rcx, %rsi	# tmp3151,
	movq	%rax, %rdi	# tmp3152,
	call	omit_one_operand	#
	jmp	.L937	#
.L1269:
	.loc 1 6173 0
	jmp	.L1153	#
.L1035:
	.loc 1 6180 0
	movq	-704(%rbp), %rax	# arg0, tmp3153
	movq	%rax, %rdi	# tmp3153,
	call	invert_truthvalue	#
	movq	%rax, -448(%rbp)	# tmp3154, tem
	.loc 1 6182 0
	movq	-448(%rbp), %rax	# tem, tmp3155
	movzbl	16(%rax), %eax	# tem_1341->common.code, D.21076
	cmpb	$96, %al	#, D.21076
	jne	.L1270	#,
	.loc 1 6183 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1270:
	.loc 1 6184 0
	movq	-448(%rbp), %rdx	# tem, tmp3156
	movq	-456(%rbp), %rax	# type, tmp3157
	movq	%rdx, %rsi	# tmp3156,
	movq	%rax, %rdi	# tmp3157,
	call	convert	#
	jmp	.L937	#
.L1030:
	.loc 1 6191 0
	movq	-704(%rbp), %rax	# arg0, tmp3158
	movq	%rax, %rdi	# tmp3158,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1032	#,
	.loc 1 6192 0
	movq	-704(%rbp), %rdx	# arg0, tmp3159
	movq	-456(%rbp), %rax	# type, tmp3160
	movq	%rdx, %rsi	# tmp3159,
	movq	%rax, %rdi	# tmp3160,
	call	convert	#
	jmp	.L937	#
.L1032:
	.loc 1 6195 0
	movq	-704(%rbp), %rax	# arg0, tmp3161
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1271	#,
	.loc 1 6195 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3162
	movq	%rax, %rdi	# tmp3162,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1271	#,
	.loc 1 6196 0 is_stmt 1
	movq	-696(%rbp), %rdx	# arg1, tmp3163
	movq	-456(%rbp), %rax	# type, tmp3164
	movq	%rdx, %rsi	# tmp3163,
	movq	%rax, %rdi	# tmp3164,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1271:
	.loc 1 6197 0
	movq	-696(%rbp), %rax	# arg1, tmp3165
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1272	#,
	.loc 1 6197 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3166
	movq	%rax, %rdi	# tmp3166,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1272	#,
	.loc 1 6199 0 is_stmt 1
	cmpl	$91, -892(%rbp)	#, code
	jne	.L1273	#,
	.loc 1 6199 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3167
	movzbl	17(%rax), %eax	# *arg0_25, D.21076
	andl	$1, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1272	#,
.L1273:
	.loc 1 6200 0 is_stmt 1
	movq	-704(%rbp), %rdx	# arg0, tmp3168
	movq	-456(%rbp), %rax	# type, tmp3169
	movq	%rdx, %rsi	# tmp3168,
	movq	%rax, %rdi	# tmp3169,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1272:
	.loc 1 6203 0
	movq	-696(%rbp), %rax	# arg1, tmp3170
	movq	%rax, %rdi	# tmp3170,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1274	#,
	.loc 1 6204 0
	movq	-704(%rbp), %rdx	# arg0, tmp3171
	movq	-696(%rbp), %rcx	# arg1, tmp3172
	movq	-456(%rbp), %rax	# type, tmp3173
	movq	%rcx, %rsi	# tmp3172,
	movq	%rax, %rdi	# tmp3173,
	call	omit_one_operand	#
	jmp	.L937	#
.L1274:
	.loc 1 6207 0
	movq	-704(%rbp), %rax	# arg0, tmp3174
	movq	%rax, %rdi	# tmp3174,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1275	#,
	.loc 1 6208 0
	movq	-696(%rbp), %rdx	# arg1, tmp3175
	movq	-704(%rbp), %rcx	# arg0, tmp3176
	movq	-456(%rbp), %rax	# type, tmp3177
	movq	%rcx, %rsi	# tmp3176,
	movq	%rax, %rdi	# tmp3177,
	call	omit_one_operand	#
	jmp	.L937	#
.L1275:
	.loc 1 6212 0
	movl	optimize(%rip), %eax	# optimize, optimize.547
	testl	%eax, %eax	# optimize.547
	jne	.L1276	#,
	.loc 1 6213 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1276:
	.loc 1 6221 0
	movq	-704(%rbp), %rax	# arg0, tmp3178
	movzbl	16(%rax), %edx	# arg0_25->common.code, D.21076
	movq	-696(%rbp), %rax	# arg1, tmp3179
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	%al, %dl	# D.21076, D.21076
	jne	.L1277	#,
	.loc 1 6222 0
	movq	-704(%rbp), %rax	# arg0, tmp3180
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$91, %al	#, D.21076
	je	.L1278	#,
	.loc 1 6223 0
	movq	-704(%rbp), %rax	# arg0, tmp3181
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$92, %al	#, D.21076
	je	.L1278	#,
	.loc 1 6224 0
	movq	-704(%rbp), %rax	# arg0, tmp3182
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$93, %al	#, D.21076
	je	.L1278	#,
	.loc 1 6225 0
	movq	-704(%rbp), %rax	# arg0, tmp3183
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$94, %al	#, D.21076
	jne	.L1277	#,
.L1278:
	.loc 1 6226 0
	movq	-704(%rbp), %rax	# arg0, tmp3184
	movq	40(%rax), %rax	# arg0_25->exp.operands, D.21080
	movzbl	17(%rax), %eax	# *_1388, D.21076
	andl	$1, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1277	#,
.LBB42:
	.loc 1 6228 0
	movq	-704(%rbp), %rax	# arg0, tmp3185
	movq	32(%rax), %rax	# arg0_25->exp.operands, tmp3186
	movq	%rax, -360(%rbp)	# tmp3186, a00
	.loc 1 6229 0
	movq	-704(%rbp), %rax	# arg0, tmp3187
	movq	40(%rax), %rax	# arg0_25->exp.operands, tmp3188
	movq	%rax, -352(%rbp)	# tmp3188, a01
	.loc 1 6230 0
	movq	-696(%rbp), %rax	# arg1, tmp3189
	movq	32(%rax), %rax	# arg1_33->exp.operands, tmp3190
	movq	%rax, -344(%rbp)	# tmp3190, a10
	.loc 1 6231 0
	movq	-696(%rbp), %rax	# arg1, tmp3191
	movq	40(%rax), %rax	# arg1_33->exp.operands, tmp3192
	movq	%rax, -336(%rbp)	# tmp3192, a11
	.loc 1 6232 0
	movq	-704(%rbp), %rax	# arg0, tmp3193
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	.loc 1 6234 0
	cmpb	$94, %al	#, D.21076
	je	.L1279	#,
	.loc 1 6233 0
	movq	-704(%rbp), %rax	# arg0, tmp3194
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$93, %al	#, D.21076
	jne	.L1280	#,
.L1279:
	.loc 1 6234 0 discriminator 1
	cmpl	$93, -892(%rbp)	#, code
	je	.L1281	#,
	.loc 1 6235 0
	cmpl	$94, -892(%rbp)	#, code
	jne	.L1280	#,
.L1281:
	.loc 1 6234 0 discriminator 2
	movl	$1, %eax	#, iftmp.548
	jmp	.L1282	#
.L1280:
	.loc 1 6234 0 is_stmt 0
	movl	$0, %eax	#, iftmp.548
.L1282:
	.loc 1 6232 0 is_stmt 1
	movl	%eax, -772(%rbp)	# iftmp.548, commutative
	.loc 1 6237 0
	movq	-344(%rbp), %rcx	# a10, tmp3195
	movq	-360(%rbp), %rax	# a00, tmp3196
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp3195,
	movq	%rax, %rdi	# tmp3196,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1283	#,
	.loc 1 6238 0
	movq	-336(%rbp), %rcx	# a11, tmp3197
	movq	-352(%rbp), %rdx	# a01, tmp3198
	movq	-456(%rbp), %rsi	# type, tmp3199
	movl	-892(%rbp), %eax	# code, tmp3200
	movl	%eax, %edi	# tmp3200,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3201
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movq	-360(%rbp), %rdx	# a00, tmp3202
	movq	-456(%rbp), %rsi	# type, tmp3203
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1283:
	.loc 1 6240 0
	cmpl	$0, -772(%rbp)	#, commutative
	je	.L1284	#,
	.loc 1 6240 0 is_stmt 0 discriminator 1
	movq	-336(%rbp), %rcx	# a11, tmp3204
	movq	-360(%rbp), %rax	# a00, tmp3205
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp3204,
	movq	%rax, %rdi	# tmp3205,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1284	#,
	.loc 1 6241 0 is_stmt 1
	movq	-344(%rbp), %rcx	# a10, tmp3206
	movq	-352(%rbp), %rdx	# a01, tmp3207
	movq	-456(%rbp), %rsi	# type, tmp3208
	movl	-892(%rbp), %eax	# code, tmp3209
	movl	%eax, %edi	# tmp3209,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3210
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movq	-360(%rbp), %rdx	# a00, tmp3211
	movq	-456(%rbp), %rsi	# type, tmp3212
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1284:
	.loc 1 6243 0
	cmpl	$0, -772(%rbp)	#, commutative
	je	.L1285	#,
	.loc 1 6243 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rcx	# a10, tmp3213
	movq	-352(%rbp), %rax	# a01, tmp3214
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp3213,
	movq	%rax, %rdi	# tmp3214,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1285	#,
	.loc 1 6244 0 is_stmt 1
	movq	-336(%rbp), %rcx	# a11, tmp3215
	movq	-360(%rbp), %rdx	# a00, tmp3216
	movq	-456(%rbp), %rsi	# type, tmp3217
	movl	-892(%rbp), %eax	# code, tmp3218
	movl	%eax, %edi	# tmp3218,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3219
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movq	-352(%rbp), %rdx	# a01, tmp3220
	movq	-456(%rbp), %rsi	# type, tmp3221
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1285:
	.loc 1 6250 0
	cmpl	$0, -772(%rbp)	#, commutative
	jne	.L1286	#,
	.loc 1 6250 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# a10, tmp3222
	movzbl	17(%rax), %eax	# *a10_1393, D.21076
	andl	$1, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1277	#,
.L1286:
	.loc 1 6251 0 is_stmt 1
	movq	-336(%rbp), %rcx	# a11, tmp3223
	movq	-352(%rbp), %rax	# a01, tmp3224
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp3223,
	movq	%rax, %rdi	# tmp3224,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1277	#,
	.loc 1 6252 0
	movq	-344(%rbp), %rcx	# a10, tmp3225
	movq	-360(%rbp), %rdx	# a00, tmp3226
	movq	-456(%rbp), %rsi	# type, tmp3227
	movl	-892(%rbp), %eax	# code, tmp3228
	movl	%eax, %edi	# tmp3228,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3229
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movq	-352(%rbp), %rcx	# a01, tmp3230
	movq	-456(%rbp), %rsi	# type, tmp3231
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1277:
.LBE42:
	.loc 1 6258 0
	movq	-720(%rbp), %rax	# t, tmp3232
	movq	%rax, %rdi	# tmp3232,
	call	fold_range_test	#
	movq	%rax, -448(%rbp)	# tmp3233, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1287	#,
	.loc 1 6259 0
	movq	-448(%rbp), %rax	# tem, D.21075
	jmp	.L937	#
.L1287:
	.loc 1 6264 0
	movq	-704(%rbp), %rax	# arg0, tmp3234
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21085
	cmpl	-892(%rbp), %eax	# code, D.21085
	jne	.L1288	#,
	.loc 1 6265 0
	movq	-704(%rbp), %rax	# arg0, tmp3235
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3236
	movq	-456(%rbp), %rsi	# type, tmp3237
	movl	-892(%rbp), %eax	# code, tmp3238
	movl	%eax, %edi	# tmp3238,
	call	fold_truthop	#
	movq	%rax, -448(%rbp)	# tmp3239, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1288	#,
	.loc 1 6267 0
	movq	-704(%rbp), %rax	# arg0, tmp3240
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-448(%rbp), %rcx	# tem, tmp3241
	movq	-456(%rbp), %rsi	# type, tmp3242
	movl	-892(%rbp), %eax	# code, tmp3243
	movl	%eax, %edi	# tmp3243,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1288:
	.loc 1 6269 0
	movq	-696(%rbp), %rcx	# arg1, tmp3244
	movq	-704(%rbp), %rdx	# arg0, tmp3245
	movq	-456(%rbp), %rsi	# type, tmp3246
	movl	-892(%rbp), %eax	# code, tmp3247
	movl	%eax, %edi	# tmp3247,
	call	fold_truthop	#
	movq	%rax, -448(%rbp)	# tmp3248, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1289	#,
	.loc 1 6270 0
	movq	-448(%rbp), %rax	# tem, D.21075
	jmp	.L937	#
.L1289:
	.loc 1 6272 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1031:
	.loc 1 6279 0
	movq	-704(%rbp), %rax	# arg0, tmp3249
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1033	#,
	.loc 1 6279 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3250
	movq	%rax, %rdi	# tmp3250,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1033	#,
	.loc 1 6280 0 is_stmt 1
	movq	-704(%rbp), %rdx	# arg0, tmp3251
	movq	-456(%rbp), %rax	# type, tmp3252
	movq	%rdx, %rsi	# tmp3251,
	movq	%rax, %rdi	# tmp3252,
	call	convert	#
	jmp	.L937	#
.L1033:
	.loc 1 6283 0
	movq	-704(%rbp), %rax	# arg0, tmp3253
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1290	#,
	.loc 1 6283 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3254
	movq	%rax, %rdi	# tmp3254,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1290	#,
	.loc 1 6284 0 is_stmt 1
	movq	-696(%rbp), %rdx	# arg1, tmp3255
	movq	-456(%rbp), %rax	# type, tmp3256
	movq	%rdx, %rsi	# tmp3255,
	movq	%rax, %rdi	# tmp3256,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1290:
	.loc 1 6285 0
	movq	-696(%rbp), %rax	# arg1, tmp3257
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1291	#,
	.loc 1 6285 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3258
	movq	%rax, %rdi	# tmp3258,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1291	#,
	.loc 1 6287 0 is_stmt 1
	cmpl	$92, -892(%rbp)	#, code
	jne	.L1292	#,
	.loc 1 6287 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3259
	movzbl	17(%rax), %eax	# *arg0_25, D.21076
	andl	$1, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1291	#,
.L1292:
	.loc 1 6288 0 is_stmt 1
	movq	-704(%rbp), %rdx	# arg0, tmp3260
	movq	-456(%rbp), %rax	# type, tmp3261
	movq	%rdx, %rsi	# tmp3260,
	movq	%rax, %rdi	# tmp3261,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1291:
	.loc 1 6291 0
	movq	-696(%rbp), %rax	# arg1, tmp3262
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1293	#,
	.loc 1 6291 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3263
	movq	%rax, %rdi	# tmp3263,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1293	#,
	.loc 1 6292 0 is_stmt 1
	movq	-704(%rbp), %rdx	# arg0, tmp3264
	movq	-696(%rbp), %rcx	# arg1, tmp3265
	movq	-456(%rbp), %rax	# type, tmp3266
	movq	%rcx, %rsi	# tmp3265,
	movq	%rax, %rdi	# tmp3266,
	call	omit_one_operand	#
	jmp	.L937	#
.L1293:
	.loc 1 6295 0
	movq	-704(%rbp), %rax	# arg0, tmp3267
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1294	#,
	.loc 1 6295 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3268
	movq	%rax, %rdi	# tmp3268,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1294	#,
	.loc 1 6296 0 is_stmt 1
	movq	-696(%rbp), %rdx	# arg1, tmp3269
	movq	-704(%rbp), %rcx	# arg0, tmp3270
	movq	-456(%rbp), %rax	# type, tmp3271
	movq	%rcx, %rsi	# tmp3270,
	movq	%rax, %rdi	# tmp3271,
	call	omit_one_operand	#
	jmp	.L937	#
.L1294:
	.loc 1 6297 0
	jmp	.L1275	#
.L1034:
	.loc 1 6301 0
	movq	-704(%rbp), %rax	# arg0, tmp3272
	movq	%rax, %rdi	# tmp3272,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1295	#,
	.loc 1 6302 0
	movq	-696(%rbp), %rdx	# arg1, tmp3273
	movq	-456(%rbp), %rax	# type, tmp3274
	movq	%rdx, %rsi	# tmp3273,
	movq	%rax, %rdi	# tmp3274,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1295:
	.loc 1 6303 0
	movq	-696(%rbp), %rax	# arg1, tmp3275
	movq	%rax, %rdi	# tmp3275,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1296	#,
	.loc 1 6304 0
	movq	-704(%rbp), %rdx	# arg0, tmp3276
	movq	-456(%rbp), %rax	# type, tmp3277
	movq	%rdx, %rsi	# tmp3276,
	movq	%rax, %rdi	# tmp3277,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1296:
	.loc 1 6306 0
	movq	-704(%rbp), %rax	# arg0, tmp3278
	movq	%rax, %rdi	# tmp3278,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1297	#,
	.loc 1 6307 0
	movq	-696(%rbp), %rax	# arg1, tmp3279
	movq	%rax, %rdi	# tmp3279,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp3280
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3280,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1297:
	.loc 1 6308 0
	movq	-696(%rbp), %rax	# arg1, tmp3281
	movq	%rax, %rdi	# tmp3281,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1298	#,
	.loc 1 6309 0
	movq	-704(%rbp), %rax	# arg0, tmp3282
	movq	%rax, %rdi	# tmp3282,
	call	invert_truthvalue	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp3283
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3283,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	non_lvalue	#
	jmp	.L937	#
.L1298:
	.loc 1 6310 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1036:
	.loc 1 6318 0
	movq	-704(%rbp), %rax	# arg0, tmp3284
	movq	8(%rax), %rax	# arg0_25->common.type, D.21080
	movzbl	16(%rax), %eax	# _1457->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1299	#,
	.loc 1 6318 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3285
	movq	8(%rax), %rax	# arg0_25->common.type, D.21080
	movzbl	16(%rax), %eax	# _1459->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1300	#,
	movq	-704(%rbp), %rax	# arg0, tmp3286
	movq	8(%rax), %rax	# arg0_25->common.type, D.21080
	movq	8(%rax), %rax	# _1461->common.type, D.21080
	movzbl	16(%rax), %eax	# _1462->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	jne	.L1300	#,
.L1299:
	.loc 1 6321 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3287
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1301	#,
	.loc 1 6322 0
	movq	-696(%rbp), %rax	# arg1, tmp3288
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1301	#,
	.loc 1 6323 0
	movq	-704(%rbp), %rax	# arg0, tmp3289
	movq	32(%rax), %rcx	# arg0_25->exp.operands, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3290
	movq	32(%rax), %rdx	# arg1_33->exp.operands, D.21080
	movq	-456(%rbp), %rsi	# type, tmp3291
	movl	-892(%rbp), %eax	# code, tmp3292
	movl	%eax, %edi	# tmp3292,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1301:
	.loc 1 6326 0
	movq	-704(%rbp), %rax	# arg0, tmp3293
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1302	#,
	.loc 1 6326 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3294
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L1302	#,
	.loc 1 6328 0 is_stmt 1
	leaq	-48(%rbp), %rdx	#, tmp3295
	movq	-696(%rbp), %rax	# arg1, tmp3296
	movq	32(%rax), %rcx	# arg1_33->real_cst.real_cst, tmp3297
	movq	%rcx, (%rsp)	# tmp3297,
	movq	40(%rax), %rcx	# arg1_33->real_cst.real_cst, tmp3298
	movq	%rcx, 8(%rsp)	# tmp3298,
	movq	48(%rax), %rax	# arg1_33->real_cst.real_cst, tmp3299
	movq	%rax, 16(%rsp)	# tmp3299,
	movq	%rdx, %rdi	# tmp3295,
	call	ereal_negate	#
	movq	-696(%rbp), %rax	# arg1, tmp3300
	movq	8(%rax), %rax	# arg1_33->common.type, D.21080
	movq	-48(%rbp), %rdx	# D.19141, tmp3301
	movq	%rdx, (%rsp)	# tmp3301,
	movq	-40(%rbp), %rdx	# D.19141, tmp3302
	movq	%rdx, 8(%rsp)	# tmp3302,
	movq	-32(%rbp), %rdx	# D.19141, tmp3303
	movq	%rdx, 16(%rsp)	# tmp3303,
	movq	%rax, %rdi	# D.21080,
	call	build_real	#
	movq	%rax, %r12	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3304
	movq	32(%rax), %rbx	# arg0_25->exp.operands, D.21080
	movl	-892(%rbp), %eax	# code, tmp3305
	movl	%eax, %edi	# tmp3305,
	call	swap_tree_comparison	#
	movq	-456(%rbp), %rsi	# type, tmp3306
	movq	%r12, %rcx	# D.21080,
	movq	%rbx, %rdx	# D.21080,
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 6327 0
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1302:
	.loc 1 6335 0
	movq	-696(%rbp), %rax	# arg1, tmp3307
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L1300	#,
	.loc 1 6336 0
	movq	dconst0(%rip), %rax	# dconst0, tmp3309
	movq	%rax, 24(%rsp)	# tmp3309,
	movq	dconst0+8(%rip), %rax	# dconst0, tmp3310
	movq	%rax, 32(%rsp)	# tmp3310,
	movq	dconst0+16(%rip), %rax	# dconst0, tmp3311
	movq	%rax, 40(%rsp)	# tmp3311,
	movq	-696(%rbp), %rax	# arg1, tmp3312
	movq	32(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp3313
	movq	%rdx, (%rsp)	# tmp3313,
	movq	40(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp3314
	movq	%rdx, 8(%rsp)	# tmp3314,
	movq	48(%rax), %rax	# arg1_33->real_cst.real_cst, tmp3315
	movq	%rax, 16(%rsp)	# tmp3315,
	call	ereal_cmp	#
	testl	%eax, %eax	# D.21084
	jne	.L1300	#,
	.loc 1 6336 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3316
	movq	32(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp3317
	movq	%rdx, (%rsp)	# tmp3317,
	movq	40(%rax), %rdx	# arg1_33->real_cst.real_cst, tmp3318
	movq	%rdx, 8(%rsp)	# tmp3318,
	movq	48(%rax), %rax	# arg1_33->real_cst.real_cst, tmp3319
	movq	%rax, 16(%rsp)	# tmp3319,
	call	ereal_isneg	#
	testl	%eax, %eax	# D.21084
	je	.L1300	#,
	.loc 1 6337 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3320
	movq	8(%rax), %rax	# arg1_33->common.type, D.21080
	movq	dconst0(%rip), %rdx	# dconst0, tmp3322
	movq	%rdx, (%rsp)	# tmp3322,
	movq	dconst0+8(%rip), %rdx	# dconst0, tmp3323
	movq	%rdx, 8(%rsp)	# tmp3323,
	movq	dconst0+16(%rip), %rdx	# dconst0, tmp3324
	movq	%rdx, 16(%rsp)	# tmp3324,
	movq	%rax, %rdi	# D.21080,
	call	build_real	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3325
	movq	-456(%rbp), %rsi	# type, tmp3326
	movl	-892(%rbp), %eax	# code, tmp3327
	movl	%eax, %edi	# tmp3327,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1300:
	.loc 1 6342 0
	movq	-704(%rbp), %rax	# arg0, tmp3328
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1303	#,
	.loc 1 6343 0
	movq	-696(%rbp), %rax	# arg1, tmp3329
	movzbl	16(%rax), %eax	# arg1_33->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	je	.L1303	#,
	.loc 1 6345 0
	movq	-720(%rbp), %rax	# t, tmp3330
	movq	-696(%rbp), %rdx	# arg1, tmp3331
	movq	%rdx, 32(%rax)	# tmp3331, t_150->exp.operands
	.loc 1 6346 0
	movq	-720(%rbp), %rax	# t, tmp3332
	movq	-704(%rbp), %rdx	# arg0, tmp3333
	movq	%rdx, 40(%rax)	# tmp3333, t_150->exp.operands
	.loc 1 6347 0
	movq	-720(%rbp), %rax	# t, tmp3334
	movq	32(%rax), %rax	# t_150->exp.operands, tmp3335
	movq	%rax, -704(%rbp)	# tmp3335, arg0
	.loc 1 6348 0
	movq	-720(%rbp), %rax	# t, tmp3336
	movq	40(%rax), %rax	# t_150->exp.operands, tmp3337
	movq	%rax, -696(%rbp)	# tmp3337, arg1
	.loc 1 6349 0
	movl	-892(%rbp), %eax	# code, tmp3338
	movl	%eax, %edi	# tmp3338,
	call	swap_tree_comparison	#
	movl	%eax, -892(%rbp)	# tmp3339, code
	.loc 1 6350 0
	movl	-892(%rbp), %eax	# code, tmp3340
	movl	%eax, %edx	# tmp3340, D.21076
	movq	-720(%rbp), %rax	# t, tmp3341
	movb	%dl, 16(%rax)	# D.21076, t_150->common.code
.L1303:
.LBB43:
	.loc 1 6357 0
	movq	$0, -520(%rbp)	#, constop
	movq	$0, -512(%rbp)	#, varop
	.loc 1 6358 0
	movl	$-1, -876(%rbp)	#, constopnum
	.loc 1 6360 0
	movq	-696(%rbp), %rax	# arg1, tmp3342
	movzbl	17(%rax), %eax	# *arg1_38, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1304	#,
	.loc 1 6361 0
	movl	$1, -876(%rbp)	#, constopnum
	movq	-696(%rbp), %rax	# arg1, tmp3343
	movq	%rax, -520(%rbp)	# tmp3343, constop
	movq	-704(%rbp), %rax	# arg0, tmp3344
	movq	%rax, -512(%rbp)	# tmp3344, varop
.L1304:
	.loc 1 6362 0
	movq	-704(%rbp), %rax	# arg0, tmp3345
	movzbl	17(%rax), %eax	# *arg0_26, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1305	#,
	.loc 1 6363 0
	movl	$0, -876(%rbp)	#, constopnum
	movq	-704(%rbp), %rax	# arg0, tmp3346
	movq	%rax, -520(%rbp)	# tmp3346, constop
	movq	-696(%rbp), %rax	# arg1, tmp3347
	movq	%rax, -512(%rbp)	# tmp3347, varop
.L1305:
	.loc 1 6365 0
	cmpq	$0, -520(%rbp)	#, constop
	je	.L1306	#,
	.loc 1 6365 0 is_stmt 0 discriminator 1
	movq	-512(%rbp), %rax	# varop, tmp3348
	movzbl	16(%rax), %eax	# varop_96->common.code, D.21076
	cmpb	$-124, %al	#, D.21076
	jne	.L1306	#,
	.loc 1 6371 0 is_stmt 1
	movq	-512(%rbp), %rax	# varop, tmp3349
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movzbl	16(%rax), %eax	# _1505->common.code, D.21076
	cmpb	$13, %al	#, D.21076
	je	.L1307	#,
	.loc 1 6371 0 is_stmt 0 discriminator 1
	movq	-512(%rbp), %rax	# varop, tmp3350
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movzbl	16(%rax), %eax	# _1507->common.code, D.21076
	cmpb	$15, %al	#, D.21076
	je	.L1307	#,
	.loc 1 6372 0 is_stmt 1
	movq	-512(%rbp), %rax	# varop, tmp3351
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movzbl	16(%rax), %eax	# _1509->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1308	#,
	.loc 1 6372 0 is_stmt 0 discriminator 1
	movq	-512(%rbp), %rax	# varop, tmp3352
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movzbl	16(%rax), %eax	# _1511->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1309	#,
	movq	-512(%rbp), %rax	# varop, tmp3353
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movq	8(%rax), %rax	# _1513->common.type, D.21080
	movzbl	16(%rax), %eax	# _1514->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1308	#,
.L1309:
	.loc 1 6373 0 is_stmt 1
	cmpl	$101, -892(%rbp)	#, code
	je	.L1307	#,
	.loc 1 6373 0 is_stmt 0 discriminator 1
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1308	#,
.L1307:
.LBB44:
	.loc 1 6376 0 is_stmt 1
	movq	-512(%rbp), %rax	# varop, tmp3354
	movq	40(%rax), %rcx	# varop_96->exp.operands, D.21080
	movq	-512(%rbp), %rax	# varop, tmp3355
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movq	-520(%rbp), %rdx	# constop, tmp3356
	movq	%rax, %rsi	# D.21080,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 6375 0
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -504(%rbp)	# tmp3357, newconst
	.loc 1 6384 0
	movq	-512(%rbp), %rax	# varop, tmp3358
	movq	40(%rax), %rcx	# varop_96->exp.operands, D.21080
	movq	-512(%rbp), %rax	# varop, tmp3359
	movq	32(%rax), %rdx	# varop_96->exp.operands, D.21080
	movq	-512(%rbp), %rax	# varop, tmp3360
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movq	%rax, %rsi	# D.21080,
	movl	$130, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -512(%rbp)	# tmp3361, varop
	.loc 1 6390 0
	movq	-512(%rbp), %rax	# varop, tmp3362
	movq	32(%rax), %rax	# varop_1523->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _1524->common.code, D.21076
	cmpb	$39, %al	#, D.21076
	jne	.L1310	#,
	.loc 1 6391 0
	movq	-512(%rbp), %rax	# varop, tmp3363
	movq	32(%rax), %rax	# varop_1523->exp.operands, D.21080
	movq	40(%rax), %rax	# _1526->exp.operands, D.21080
	movzbl	49(%rax), %eax	# *_1527, D.21076
	andl	$16, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1310	#,
.LBB45:
	.loc 1 6395 0
	movq	-512(%rbp), %rax	# varop, tmp3364
	movq	32(%rax), %rax	# varop_1523->exp.operands, D.21080
	movq	40(%rax), %rax	# _1530->exp.operands, D.21080
	movq	40(%rax), %rax	# _1531->decl.size, D.21080
	movq	32(%rax), %rax	# _1532->int_cst.int_cst.low, D.21090
	.loc 1 6394 0
	movl	%eax, -768(%rbp)	# D.21090, size
	.loc 1 6405 0
	cmpl	$0, -876(%rbp)	#, constopnum
	jne	.L1311	#,
	.loc 1 6406 0
	movq	-512(%rbp), %rax	# varop, tmp3365
	movq	32(%rax), %rcx	# varop_1523->exp.operands, D.21080
	movq	-520(%rbp), %rdx	# constop, tmp3366
	movq	-456(%rbp), %rsi	# type, tmp3367
	movl	-892(%rbp), %eax	# code, tmp3368
	movl	%eax, %edi	# tmp3368,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -496(%rbp)	# tmp3369, folded_compare
	jmp	.L1312	#
.L1311:
	.loc 1 6409 0
	movq	-512(%rbp), %rax	# varop, tmp3370
	movq	32(%rax), %rdx	# varop_1523->exp.operands, D.21080
	movq	-520(%rbp), %rcx	# constop, tmp3371
	movq	-456(%rbp), %rsi	# type, tmp3372
	movl	-892(%rbp), %eax	# code, tmp3373
	movl	%eax, %edi	# tmp3373,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -496(%rbp)	# tmp3374, folded_compare
.L1312:
	.loc 1 6412 0
	movq	-496(%rbp), %rax	# folded_compare, tmp3375
	movq	%rax, %rdi	# tmp3375,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1313	#,
	.loc 1 6413 0
	movq	-496(%rbp), %rax	# folded_compare, tmp3376
	movq	%rax, %rdi	# tmp3376,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1314	#,
.L1313:
	.loc 1 6414 0
	movq	-512(%rbp), %rdx	# varop, tmp3377
	movq	-496(%rbp), %rcx	# folded_compare, tmp3378
	movq	-456(%rbp), %rax	# type, tmp3379
	movq	%rcx, %rsi	# tmp3378,
	movq	%rax, %rdi	# tmp3379,
	call	omit_one_operand	#
	jmp	.L937	#
.L1314:
	.loc 1 6416 0
	movl	-768(%rbp), %eax	# size, size.549
	movl	$1, %esi	#,
	movl	%eax, %edi	# size.549,
	call	type_for_size	#
	movq	%rax, -328(%rbp)	# tmp3380, unsigned_type
	.loc 1 6417 0
	movq	-328(%rbp), %rax	# unsigned_type, tmp3381
	movzwl	60(%rax), %eax	# *unsigned_type_1544, tmp3384
	andw	$511, %ax	#, D.21086
	movzwl	%ax, %eax	# D.21086, tmp3385
	movl	%eax, -764(%rbp)	# tmp3385, precision
	.loc 1 6418 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, -320(%rbp)	# tmp3386, mask
	.loc 1 6419 0
	movq	-320(%rbp), %rax	# mask, tmp3387
	movq	-328(%rbp), %rdx	# unsigned_type, tmp3388
	movq	%rdx, 8(%rax)	# tmp3388, mask_1547->common.type
	.loc 1 6420 0
	movq	-320(%rbp), %rax	# mask, tmp3389
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp3389,
	call	force_fit_type	#
	.loc 1 6422 0
	movl	-768(%rbp), %eax	# size, size.550
	movl	-764(%rbp), %edx	# precision, tmp3390
	subl	%eax, %edx	# size.550, D.21085
	movl	%edx, %eax	# D.21085, D.21085
	.loc 1 6421 0
	movl	%eax, %eax	# D.21085, D.21089
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21089,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21080
	movq	-320(%rbp), %rax	# mask, tmp3391
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp3391,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, -320(%rbp)	# tmp3392, mask
	.loc 1 6423 0
	movq	-512(%rbp), %rax	# varop, tmp3393
	movq	8(%rax), %rax	# varop_1523->common.type, D.21080
	movq	-320(%rbp), %rdx	# mask, tmp3394
	movq	%rdx, %rsi	# tmp3394,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-512(%rbp), %rax	# varop, tmp3395
	movq	8(%rax), %rax	# varop_1523->common.type, D.21080
	movq	-504(%rbp), %rdx	# newconst, tmp3396
	movq	%rax, %rsi	# D.21080,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -504(%rbp)	# tmp3397, newconst
.L1310:
.LBE45:
	.loc 1 6429 0
	cmpl	$1, -876(%rbp)	#, constopnum
	jne	.L1315	#,
	.loc 1 6429 0 is_stmt 0 discriminator 1
	movq	-504(%rbp), %rdx	# newconst, iftmp.551
	jmp	.L1316	#
.L1315:
	.loc 1 6429 0 discriminator 2
	movq	-512(%rbp), %rdx	# varop, iftmp.551
.L1316:
	.loc 1 6429 0 discriminator 3
	cmpl	$0, -876(%rbp)	#, constopnum
	jne	.L1317	#,
	.loc 1 6429 0 discriminator 4
	movq	-504(%rbp), %rax	# newconst, iftmp.552
	jmp	.L1318	#
.L1317:
	.loc 1 6429 0 discriminator 5
	movq	-512(%rbp), %rax	# varop, iftmp.552
.L1318:
	.loc 1 6429 0 discriminator 6
	movq	-456(%rbp), %rsi	# type, tmp3398
	movl	-892(%rbp), %edi	# code, tmp3399
	movq	%rdx, %rcx	# iftmp.551,
	movq	%rax, %rdx	# iftmp.552,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -720(%rbp)	# tmp3400, t
	.loc 1 6432 0 is_stmt 1 discriminator 6
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1308:
.LBE44:
	.loc 1 6371 0
	jmp	.L1319	#
.L1306:
	.loc 1 6435 0
	cmpq	$0, -520(%rbp)	#, constop
	je	.L1319	#,
	.loc 1 6435 0 is_stmt 0 discriminator 1
	movq	-512(%rbp), %rax	# varop, tmp3401
	movzbl	16(%rax), %eax	# varop_96->common.code, D.21076
	cmpb	$-125, %al	#, D.21076
	jne	.L1319	#,
	.loc 1 6437 0 is_stmt 1
	movq	-512(%rbp), %rax	# varop, tmp3402
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movzbl	16(%rax), %eax	# _1566->common.code, D.21076
	cmpb	$13, %al	#, D.21076
	je	.L1320	#,
	.loc 1 6437 0 is_stmt 0 discriminator 1
	movq	-512(%rbp), %rax	# varop, tmp3403
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movzbl	16(%rax), %eax	# _1568->common.code, D.21076
	cmpb	$15, %al	#, D.21076
	je	.L1320	#,
	.loc 1 6438 0 is_stmt 1
	movq	-512(%rbp), %rax	# varop, tmp3404
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movzbl	16(%rax), %eax	# _1570->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1319	#,
	.loc 1 6438 0 is_stmt 0 discriminator 1
	movq	-512(%rbp), %rax	# varop, tmp3405
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movzbl	16(%rax), %eax	# _1572->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1321	#,
	movq	-512(%rbp), %rax	# varop, tmp3406
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movq	8(%rax), %rax	# _1574->common.type, D.21080
	movzbl	16(%rax), %eax	# _1575->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1319	#,
.L1321:
	.loc 1 6439 0 is_stmt 1
	cmpl	$101, -892(%rbp)	#, code
	je	.L1320	#,
	.loc 1 6439 0 is_stmt 0 discriminator 1
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1319	#,
.L1320:
.LBB46:
	.loc 1 6442 0 is_stmt 1
	movq	-512(%rbp), %rax	# varop, tmp3407
	movq	40(%rax), %rcx	# varop_96->exp.operands, D.21080
	movq	-512(%rbp), %rax	# varop, tmp3408
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movq	-520(%rbp), %rdx	# constop, tmp3409
	movq	%rax, %rsi	# D.21080,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 6441 0
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -488(%rbp)	# tmp3410, newconst
	.loc 1 6450 0
	movq	-512(%rbp), %rax	# varop, tmp3411
	movq	40(%rax), %rcx	# varop_96->exp.operands, D.21080
	movq	-512(%rbp), %rax	# varop, tmp3412
	movq	32(%rax), %rdx	# varop_96->exp.operands, D.21080
	movq	-512(%rbp), %rax	# varop, tmp3413
	movq	8(%rax), %rax	# varop_96->common.type, D.21080
	movq	%rax, %rsi	# D.21080,
	movl	$129, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -512(%rbp)	# tmp3414, varop
	.loc 1 6454 0
	movq	-512(%rbp), %rax	# varop, tmp3415
	movq	32(%rax), %rax	# varop_1584->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _1585->common.code, D.21076
	cmpb	$39, %al	#, D.21076
	jne	.L1322	#,
	.loc 1 6455 0
	movq	-512(%rbp), %rax	# varop, tmp3416
	movq	32(%rax), %rax	# varop_1584->exp.operands, D.21080
	movq	40(%rax), %rax	# _1587->exp.operands, D.21080
	movzbl	49(%rax), %eax	# *_1588, D.21076
	andl	$16, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1322	#,
.LBB47:
	.loc 1 6459 0
	movq	-512(%rbp), %rax	# varop, tmp3417
	movq	32(%rax), %rax	# varop_1584->exp.operands, D.21080
	movq	40(%rax), %rax	# _1591->exp.operands, D.21080
	movq	40(%rax), %rax	# _1592->decl.size, D.21080
	movq	32(%rax), %rax	# _1593->int_cst.int_cst.low, D.21090
	.loc 1 6458 0
	movl	%eax, -760(%rbp)	# D.21090, size
	.loc 1 6466 0
	cmpl	$0, -876(%rbp)	#, constopnum
	jne	.L1323	#,
	.loc 1 6467 0
	movq	-512(%rbp), %rax	# varop, tmp3418
	movq	32(%rax), %rcx	# varop_1584->exp.operands, D.21080
	movq	-520(%rbp), %rdx	# constop, tmp3419
	movq	-456(%rbp), %rsi	# type, tmp3420
	movl	-892(%rbp), %eax	# code, tmp3421
	movl	%eax, %edi	# tmp3421,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -480(%rbp)	# tmp3422, folded_compare
	jmp	.L1324	#
.L1323:
	.loc 1 6470 0
	movq	-512(%rbp), %rax	# varop, tmp3423
	movq	32(%rax), %rdx	# varop_1584->exp.operands, D.21080
	movq	-520(%rbp), %rcx	# constop, tmp3424
	movq	-456(%rbp), %rsi	# type, tmp3425
	movl	-892(%rbp), %eax	# code, tmp3426
	movl	%eax, %edi	# tmp3426,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -480(%rbp)	# tmp3427, folded_compare
.L1324:
	.loc 1 6473 0
	movq	-480(%rbp), %rax	# folded_compare, tmp3428
	movq	%rax, %rdi	# tmp3428,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1325	#,
	.loc 1 6474 0
	movq	-480(%rbp), %rax	# folded_compare, tmp3429
	movq	%rax, %rdi	# tmp3429,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1326	#,
.L1325:
	.loc 1 6475 0
	movq	-512(%rbp), %rdx	# varop, tmp3430
	movq	-480(%rbp), %rcx	# folded_compare, tmp3431
	movq	-456(%rbp), %rax	# type, tmp3432
	movq	%rcx, %rsi	# tmp3431,
	movq	%rax, %rdi	# tmp3432,
	call	omit_one_operand	#
	jmp	.L937	#
.L1326:
	.loc 1 6477 0
	movl	-760(%rbp), %eax	# size, size.553
	movl	$1, %esi	#,
	movl	%eax, %edi	# size.553,
	call	type_for_size	#
	movq	%rax, -312(%rbp)	# tmp3433, unsigned_type
	.loc 1 6478 0
	movq	-312(%rbp), %rax	# unsigned_type, tmp3434
	movzwl	60(%rax), %eax	# *unsigned_type_1605, tmp3437
	andw	$511, %ax	#, D.21086
	movzwl	%ax, %eax	# D.21086, tmp3438
	movl	%eax, -756(%rbp)	# tmp3438, precision
	.loc 1 6479 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, -304(%rbp)	# tmp3439, mask
	.loc 1 6480 0
	movq	-512(%rbp), %rax	# varop, tmp3440
	movq	8(%rax), %rdx	# varop_1584->common.type, D.21080
	movq	-304(%rbp), %rax	# mask, tmp3441
	movq	%rdx, 8(%rax)	# D.21080, mask_1608->common.type
	.loc 1 6481 0
	movq	-304(%rbp), %rax	# mask, tmp3442
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp3442,
	call	force_fit_type	#
	.loc 1 6483 0
	movl	-760(%rbp), %eax	# size, size.554
	movl	-756(%rbp), %edx	# precision, tmp3443
	subl	%eax, %edx	# size.554, D.21085
	movl	%edx, %eax	# D.21085, D.21085
	.loc 1 6482 0
	movl	%eax, %eax	# D.21085, D.21089
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21089,
	call	size_int_wide	#
	movq	%rax, %rdx	#, D.21080
	movq	-304(%rbp), %rax	# mask, tmp3444
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp3444,
	movl	$83, %edi	#,
	call	const_binop	#
	movq	%rax, -304(%rbp)	# tmp3445, mask
	.loc 1 6484 0
	movq	-512(%rbp), %rax	# varop, tmp3446
	movq	8(%rax), %rax	# varop_1584->common.type, D.21080
	movq	-304(%rbp), %rdx	# mask, tmp3447
	movq	%rdx, %rsi	# tmp3447,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-512(%rbp), %rax	# varop, tmp3448
	movq	8(%rax), %rax	# varop_1584->common.type, D.21080
	movq	-488(%rbp), %rdx	# newconst, tmp3449
	movq	%rax, %rsi	# D.21080,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -488(%rbp)	# tmp3450, newconst
.L1322:
.LBE47:
	.loc 1 6490 0
	cmpl	$1, -876(%rbp)	#, constopnum
	jne	.L1327	#,
	.loc 1 6490 0 is_stmt 0 discriminator 1
	movq	-488(%rbp), %rdx	# newconst, iftmp.555
	jmp	.L1328	#
.L1327:
	.loc 1 6490 0 discriminator 2
	movq	-512(%rbp), %rdx	# varop, iftmp.555
.L1328:
	.loc 1 6490 0 discriminator 3
	cmpl	$0, -876(%rbp)	#, constopnum
	jne	.L1329	#,
	.loc 1 6490 0 discriminator 4
	movq	-488(%rbp), %rax	# newconst, iftmp.556
	jmp	.L1330	#
.L1329:
	.loc 1 6490 0 discriminator 5
	movq	-512(%rbp), %rax	# varop, iftmp.556
.L1330:
	.loc 1 6490 0 discriminator 6
	movq	-456(%rbp), %rsi	# type, tmp3451
	movl	-892(%rbp), %edi	# code, tmp3452
	movq	%rdx, %rcx	# iftmp.555,
	movq	%rax, %rdx	# iftmp.556,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -720(%rbp)	# tmp3453, t
	.loc 1 6493 0 is_stmt 1 discriminator 6
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1319:
.LBE46:
.LBE43:
.LBB48:
	.loc 1 6502 0
	movq	-696(%rbp), %rax	# arg1, tmp3454
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	61(%rax), %eax	# *_1627, tmp3457
	shrb	%al	# D.21081
	movzbl	%al, %eax	# D.21081, D.21084
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.21087
	movzwl	%ax, %eax	# D.21087, tmp3459
	movl	%eax, -752(%rbp)	# tmp3459, width
	.loc 1 6504 0
	movq	-696(%rbp), %rax	# arg1, tmp3460
	movzbl	16(%rax), %eax	# arg1_38->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1331	#,
	.loc 1 6505 0
	movq	-696(%rbp), %rax	# arg1, tmp3461
	movzbl	18(%rax), %eax	# *arg1_38, D.21076
	andl	$4, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1331	#,
	.loc 1 6506 0
	cmpl	$64, -752(%rbp)	#, width
	jg	.L1331	#,
	.loc 1 6507 0
	movq	-696(%rbp), %rax	# arg1, tmp3462
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1635->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1332	#,
	.loc 1 6507 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3463
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1637->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1332	#,
	movq	-696(%rbp), %rax	# arg1, tmp3464
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1639->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1332	#,
	movq	-696(%rbp), %rax	# arg1, tmp3465
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1641->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	je	.L1332	#,
	.loc 1 6508 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3466
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1643->common.code, D.21076
	cmpb	$13, %al	#, D.21076
	je	.L1332	#,
	.loc 1 6508 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3467
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1645->common.code, D.21076
	cmpb	$15, %al	#, D.21076
	jne	.L1331	#,
.L1332:
	.loc 1 6510 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3468
	movq	40(%rax), %rax	# arg1_38->int_cst.int_cst.high, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1333	#,
	.loc 1 6511 0
	movq	-696(%rbp), %rax	# arg1, tmp3469
	movq	32(%rax), %rax	# arg1_38->int_cst.int_cst.low, D.21090
	.loc 1 6512 0
	movl	-752(%rbp), %edx	# width, tmp3470
	subl	$1, %edx	#, D.21084
	movl	$1, %esi	#, tmp3471
	movl	%edx, %ecx	# D.21084, tmp4215
	salq	%cl, %rsi	# tmp4215, D.21090
	movq	%rsi, %rdx	# D.21090, D.21090
	subq	$1, %rdx	#, D.21090
	.loc 1 6511 0
	cmpq	%rdx, %rax	# D.21090, D.21090
	jne	.L1333	#,
	.loc 1 6513 0
	movq	-696(%rbp), %rax	# arg1, tmp3472
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1652, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1333	#,
	.loc 1 6514 0
	movq	-720(%rbp), %rax	# t, tmp3473
	movzbl	16(%rax), %eax	# t_150->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21085
	cmpl	$98, %eax	#, D.21085
	je	.L1335	#,
	cmpl	$98, %eax	#, D.21085
	ja	.L1336	#,
	cmpl	$97, %eax	#, D.21085
	je	.L1337	#,
	.loc 1 6533 0
	jmp	.L1340	#
.L1336:
	.loc 1 6514 0
	cmpl	$99, %eax	#, D.21085
	je	.L1338	#,
	cmpl	$100, %eax	#, D.21085
	je	.L1339	#,
	.loc 1 6533 0
	jmp	.L1340	#
.L1338:
	.loc 1 6517 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp3474
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3474,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3475
	movq	-456(%rbp), %rax	# type, tmp3476
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3476,
	call	omit_one_operand	#
	jmp	.L937	#
.L1339:
	.loc 1 6521 0
	movq	-720(%rbp), %rax	# t, tmp3477
	movb	$101, 16(%rax)	#, t_150->common.code
	.loc 1 6522 0
	jmp	.L1340	#
.L1335:
	.loc 1 6525 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp3478
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3478,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3479
	movq	-456(%rbp), %rax	# type, tmp3480
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3480,
	call	omit_one_operand	#
	jmp	.L937	#
.L1337:
	.loc 1 6529 0
	movq	-720(%rbp), %rax	# t, tmp3481
	movb	$102, 16(%rax)	#, t_150->common.code
	.loc 1 6530 0
	nop
.L1340:
	.loc 1 6536 0
	jmp	.L1331	#
.L1333:
	movq	-696(%rbp), %rax	# arg1, tmp3482
	movq	40(%rax), %rax	# arg1_38->int_cst.int_cst.high, D.21089
	cmpq	$-1, %rax	#, D.21089
	jne	.L1341	#,
	.loc 1 6537 0
	movq	-696(%rbp), %rax	# arg1, tmp3483
	movq	32(%rax), %rax	# arg1_38->int_cst.int_cst.low, D.21090
	.loc 1 6538 0
	movl	-752(%rbp), %edx	# width, tmp3484
	subl	$1, %edx	#, D.21084
	movl	$1, %esi	#, tmp3485
	movl	%edx, %ecx	# D.21084, tmp4217
	salq	%cl, %rsi	# tmp4217, D.21090
	movq	%rsi, %rdx	# D.21090, D.21090
	.loc 1 6537 0
	cmpq	%rdx, %rax	# D.21090, D.21090
	jne	.L1341	#,
	.loc 1 6539 0
	movq	-696(%rbp), %rax	# arg1, tmp3486
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1667, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1341	#,
	.loc 1 6540 0
	movq	-720(%rbp), %rax	# t, tmp3487
	movzbl	16(%rax), %eax	# t_150->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21085
	cmpl	$98, %eax	#, D.21085
	je	.L1343	#,
	cmpl	$98, %eax	#, D.21085
	ja	.L1344	#,
	cmpl	$97, %eax	#, D.21085
	je	.L1345	#,
	.loc 1 6559 0
	jmp	.L1348	#
.L1344:
	.loc 1 6540 0
	cmpl	$99, %eax	#, D.21085
	je	.L1346	#,
	cmpl	$100, %eax	#, D.21085
	je	.L1347	#,
	.loc 1 6559 0
	jmp	.L1348	#
.L1345:
	.loc 1 6543 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp3488
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3488,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3489
	movq	-456(%rbp), %rax	# type, tmp3490
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3490,
	call	omit_one_operand	#
	jmp	.L937	#
.L1343:
	.loc 1 6547 0
	movq	-720(%rbp), %rax	# t, tmp3491
	movb	$101, 16(%rax)	#, t_150->common.code
	.loc 1 6548 0
	jmp	.L1348	#
.L1347:
	.loc 1 6551 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp3492
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3492,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3493
	movq	-456(%rbp), %rax	# type, tmp3494
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3494,
	call	omit_one_operand	#
	jmp	.L937	#
.L1346:
	.loc 1 6555 0
	movq	-720(%rbp), %rax	# t, tmp3495
	movb	$102, 16(%rax)	#, t_150->common.code
	.loc 1 6556 0
	nop
.L1348:
	.loc 1 6562 0
	jmp	.L1331	#
.L1341:
	movq	-696(%rbp), %rax	# arg1, tmp3496
	movq	40(%rax), %rax	# arg1_38->int_cst.int_cst.high, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1349	#,
	.loc 1 6563 0
	movq	-696(%rbp), %rax	# arg1, tmp3497
	movq	32(%rax), %rax	# arg1_38->int_cst.int_cst.low, D.21090
	.loc 1 6564 0
	movl	-752(%rbp), %edx	# width, tmp3498
	subl	$1, %edx	#, D.21084
	movl	$1, %esi	#, tmp3499
	movl	%edx, %ecx	# D.21084, tmp4219
	salq	%cl, %rsi	# tmp4219, D.21090
	movq	%rsi, %rdx	# D.21090, D.21090
	subq	$1, %rdx	#, D.21090
	.loc 1 6563 0
	cmpq	%rdx, %rax	# D.21090, D.21090
	jne	.L1349	#,
	.loc 1 6565 0
	movq	-696(%rbp), %rax	# arg1, tmp3500
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1683, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1349	#,
	.loc 1 6567 0
	movq	-696(%rbp), %rax	# arg1, tmp3501
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1686->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1350	#,
	.loc 1 6567 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3502
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1688->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1350	#,
	movq	-696(%rbp), %rax	# arg1, tmp3503
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1690->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1350	#,
	movq	-696(%rbp), %rax	# arg1, tmp3504
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	16(%rax), %eax	# _1692->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L1349	#,
.L1350:
	.loc 1 6568 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, tmp3505
	movzbl	16(%rax), %eax	# t_150->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21085
	cmpl	$98, %eax	#, D.21085
	je	.L1352	#,
	cmpl	$99, %eax	#, D.21085
	je	.L1353	#,
	.loc 1 6584 0
	nop
	.loc 1 6587 0
	jmp	.L1331	#
.L1352:
	.loc 1 6571 0
	movq	global_trees+88(%rip), %rbx	# global_trees, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3506
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movq	%rax, %rdi	# D.21080,
	call	signed_type	#
	movq	%rbx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rbx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3507
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rax, %rdi	# D.21080,
	call	signed_type	#
	movq	-704(%rbp), %rdx	# arg0, tmp3508
	movq	%rdx, %rsi	# tmp3508,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp3509
	movq	%rbx, %rcx	# D.21080,
	movq	%rax, %rsi	# tmp3509,
	movl	$100, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1353:
	.loc 1 6577 0
	movq	global_trees+88(%rip), %rbx	# global_trees, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3510
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movq	%rax, %rdi	# D.21080,
	call	signed_type	#
	movq	%rbx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rbx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3511
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rax, %rdi	# D.21080,
	call	signed_type	#
	movq	-704(%rbp), %rdx	# arg0, tmp3512
	movq	%rdx, %rsi	# tmp3512,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp3513
	movq	%rbx, %rcx	# D.21080,
	movq	%rax, %rsi	# tmp3513,
	movl	$97, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1349:
	.loc 1 6587 0
	movq	-696(%rbp), %rax	# arg1, tmp3514
	movq	40(%rax), %rax	# arg1_38->int_cst.int_cst.high, D.21089
	testq	%rax, %rax	# D.21089
	jne	.L1331	#,
	.loc 1 6588 0
	movq	-696(%rbp), %rax	# arg1, tmp3515
	movq	32(%rax), %rax	# arg1_38->int_cst.int_cst.low, D.21090
	.loc 1 6589 0
	movl	-752(%rbp), %edx	# width, tmp3516
	subl	$1, %edx	#, D.21084
	movl	$2, %esi	#, tmp3517
	movl	%edx, %ecx	# D.21084, tmp4221
	salq	%cl, %rsi	# tmp4221, D.21090
	movq	%rsi, %rdx	# D.21090, D.21090
	subq	$1, %rdx	#, D.21090
	.loc 1 6588 0
	cmpq	%rdx, %rax	# D.21090, D.21090
	jne	.L1331	#,
	.loc 1 6590 0
	movq	-696(%rbp), %rax	# arg1, tmp3518
	movq	8(%rax), %rax	# arg1_38->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1719, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1331	#,
	.loc 1 6591 0
	movq	-720(%rbp), %rax	# t, tmp3519
	movzbl	16(%rax), %eax	# t_150->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21085
	cmpl	$98, %eax	#, D.21085
	je	.L1355	#,
	cmpl	$98, %eax	#, D.21085
	ja	.L1356	#,
	cmpl	$97, %eax	#, D.21085
	je	.L1357	#,
	.loc 1 6610 0
	jmp	.L1331	#
.L1356:
	.loc 1 6591 0
	cmpl	$99, %eax	#, D.21085
	je	.L1358	#,
	cmpl	$100, %eax	#, D.21085
	je	.L1359	#,
	.loc 1 6610 0
	jmp	.L1331	#
.L1358:
	.loc 1 6594 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp3520
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3520,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3521
	movq	-456(%rbp), %rax	# type, tmp3522
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3522,
	call	omit_one_operand	#
	jmp	.L937	#
.L1359:
	.loc 1 6598 0
	movq	-720(%rbp), %rax	# t, tmp3523
	movb	$101, 16(%rax)	#, t_150->common.code
	.loc 1 6599 0
	jmp	.L1331	#
.L1355:
	.loc 1 6602 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp3524
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3524,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3525
	movq	-456(%rbp), %rax	# type, tmp3526
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3526,
	call	omit_one_operand	#
	jmp	.L937	#
.L1357:
	.loc 1 6606 0
	movq	-720(%rbp), %rax	# t, tmp3527
	movb	$102, 16(%rax)	#, t_150->common.code
	.loc 1 6607 0
	nop
.L1331:
.LBE48:
	.loc 1 6617 0
	movq	-696(%rbp), %rax	# arg1, tmp3528
	movzbl	16(%rax), %eax	# arg1_38->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1360	#,
	.loc 1 6618 0
	movq	-704(%rbp), %rax	# arg0, tmp3529
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	je	.L1360	#,
	.loc 1 6619 0
	movq	-696(%rbp), %rax	# arg1, tmp3530
	movq	%rax, %rdi	# tmp3530,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21084
	jle	.L1360	#,
	.loc 1 6621 0
	movq	-720(%rbp), %rax	# t, tmp3531
	movzbl	16(%rax), %eax	# t_150->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21085
	cmpl	$97, %eax	#, D.21085
	je	.L1362	#,
	cmpl	$100, %eax	#, D.21085
	je	.L1363	#,
	.loc 1 6636 0
	jmp	.L1360	#
.L1363:
	.loc 1 6624 0
	movl	$99, -892(%rbp)	#, code
	.loc 1 6625 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3532
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp3532,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, -696(%rbp)	# tmp3533, arg1
	.loc 1 6626 0
	movq	-720(%rbp), %rax	# t, tmp3534
	movq	32(%rax), %rdx	# t_150->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3535
	movq	-456(%rbp), %rsi	# type, tmp3536
	movl	-892(%rbp), %eax	# code, tmp3537
	movl	%eax, %edi	# tmp3537,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -720(%rbp)	# tmp3538, t
	.loc 1 6627 0
	jmp	.L1360	#
.L1362:
	.loc 1 6630 0
	movl	$98, -892(%rbp)	#, code
	.loc 1 6631 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3539
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp3539,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, -696(%rbp)	# tmp3540, arg1
	.loc 1 6632 0
	movq	-720(%rbp), %rax	# t, tmp3541
	movq	32(%rax), %rdx	# t_150->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3542
	movq	-456(%rbp), %rsi	# type, tmp3543
	movl	-892(%rbp), %eax	# code, tmp3544
	movl	%eax, %edi	# tmp3544,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -720(%rbp)	# tmp3545, t
	.loc 1 6633 0
	nop
.L1360:
	.loc 1 6641 0
	movq	-696(%rbp), %rax	# arg1, tmp3546
	movq	%rax, %rdi	# tmp3546,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1364	#,
	.loc 1 6642 0
	movq	-696(%rbp), %rax	# arg1, tmp3547
	movq	8(%rax), %rax	# arg1_39->common.type, D.21080
	movzbl	16(%rax), %eax	# _1746->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1365	#,
	.loc 1 6642 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3548
	movq	8(%rax), %rax	# arg1_39->common.type, D.21080
	movzbl	16(%rax), %eax	# _1748->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1365	#,
	movq	-696(%rbp), %rax	# arg1, tmp3549
	movq	8(%rax), %rax	# arg1_39->common.type, D.21080
	movzbl	16(%rax), %eax	# _1750->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1365	#,
	movq	-696(%rbp), %rax	# arg1, tmp3550
	movq	8(%rax), %rax	# arg1_39->common.type, D.21080
	movzbl	16(%rax), %eax	# _1752->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	je	.L1365	#,
	.loc 1 6643 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3551
	movq	8(%rax), %rax	# arg1_39->common.type, D.21080
	movzbl	16(%rax), %eax	# _1754->common.code, D.21076
	cmpb	$13, %al	#, D.21076
	je	.L1365	#,
	.loc 1 6643 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3552
	movq	8(%rax), %rax	# arg1_39->common.type, D.21080
	movzbl	16(%rax), %eax	# _1756->common.code, D.21076
	cmpb	$15, %al	#, D.21076
	jne	.L1364	#,
.L1365:
	.loc 1 6644 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3553
	movq	8(%rax), %rax	# arg1_39->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1758, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1364	#,
	.loc 1 6646 0
	movq	-720(%rbp), %rax	# t, tmp3554
	movzbl	16(%rax), %eax	# t_9->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21085
	cmpl	$98, %eax	#, D.21085
	je	.L1367	#,
	cmpl	$98, %eax	#, D.21085
	ja	.L1368	#,
	cmpl	$97, %eax	#, D.21085
	je	.L1369	#,
	.loc 1 6665 0
	jmp	.L1364	#
.L1368:
	.loc 1 6646 0
	cmpl	$99, %eax	#, D.21085
	je	.L1370	#,
	cmpl	$100, %eax	#, D.21085
	je	.L1371	#,
	.loc 1 6665 0
	jmp	.L1364	#
.L1370:
	.loc 1 6649 0
	movl	$102, -892(%rbp)	#, code
	.loc 1 6650 0
	movq	-720(%rbp), %rax	# t, tmp3555
	movb	$102, 16(%rax)	#, t_9->common.code
	.loc 1 6651 0
	jmp	.L1364	#
.L1367:
	.loc 1 6653 0
	movl	$101, -892(%rbp)	#, code
	.loc 1 6654 0
	movq	-720(%rbp), %rax	# t, tmp3556
	movb	$101, 16(%rax)	#, t_9->common.code
	.loc 1 6655 0
	jmp	.L1364	#
.L1371:
	.loc 1 6657 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp3557
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3557,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3558
	movq	-456(%rbp), %rax	# type, tmp3559
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3559,
	call	omit_one_operand	#
	jmp	.L937	#
.L1369:
	.loc 1 6661 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp3560
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3560,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3561
	movq	-456(%rbp), %rax	# type, tmp3562
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3562,
	call	omit_one_operand	#
	jmp	.L937	#
.L1364:
	.loc 1 6672 0
	cmpl	$101, -892(%rbp)	#, code
	je	.L1372	#,
	.loc 1 6672 0 is_stmt 0 discriminator 1
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1373	#,
.L1372:
	.loc 1 6673 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3563
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1373	#,
	.loc 1 6674 0
	movq	-704(%rbp), %rax	# arg0, tmp3564
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$59, %al	#, D.21076
	je	.L1374	#,
	.loc 1 6675 0
	movq	-704(%rbp), %rax	# arg0, tmp3565
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$60, %al	#, D.21076
	jne	.L1373	#,
.L1374:
	.loc 1 6676 0
	movq	-704(%rbp), %rax	# arg0, tmp3566
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _1774->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1373	#,
	.loc 1 6677 0
	movq	-704(%rbp), %rax	# arg0, tmp3567
	movq	40(%rax), %rdx	# arg0_26->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3568
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$59, %al	#, D.21076
	jne	.L1375	#,
	.loc 1 6677 0 is_stmt 0 discriminator 1
	movl	$60, %eax	#, iftmp.557
	jmp	.L1376	#
.L1375:
	.loc 1 6677 0 discriminator 2
	movl	$59, %eax	#, iftmp.557
.L1376:
	.loc 1 6677 0 discriminator 3
	movq	-696(%rbp), %rsi	# arg1, tmp3569
	movl	$0, %ecx	#,
	movl	%eax, %edi	# iftmp.557,
	call	const_binop	#
	movq	%rax, -448(%rbp)	# tmp3570, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1373	#,
	.loc 1 6680 0 is_stmt 1
	movq	-448(%rbp), %rax	# tem, tmp3571
	movzbl	18(%rax), %eax	# *tem_1780, D.21076
	andl	$4, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1373	#,
	.loc 1 6681 0
	movq	-704(%rbp), %rax	# arg0, tmp3572
	movq	32(%rax), %rdx	# arg0_26->exp.operands, D.21080
	movq	-448(%rbp), %rcx	# tem, tmp3573
	movq	-456(%rbp), %rsi	# type, tmp3574
	movl	-892(%rbp), %eax	# code, tmp3575
	movl	%eax, %edi	# tmp3575,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1373:
	.loc 1 6684 0
	cmpl	$101, -892(%rbp)	#, code
	je	.L1377	#,
	.loc 1 6684 0 is_stmt 0 discriminator 1
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1378	#,
.L1377:
	.loc 1 6685 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3576
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1378	#,
	.loc 1 6686 0
	movq	-696(%rbp), %rax	# arg1, tmp3577
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1378	#,
	.loc 1 6687 0
	movq	-696(%rbp), %rax	# arg1, tmp3578
	movq	%rax, %rdi	# tmp3578,
	call	negate_expr	#
	movq	%rax, -448(%rbp)	# tmp3579, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1378	#,
	.loc 1 6688 0
	movq	-448(%rbp), %rax	# tem, tmp3580
	movzbl	16(%rax), %eax	# tem_1788->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1378	#,
	.loc 1 6689 0
	movq	-448(%rbp), %rax	# tem, tmp3581
	movzbl	18(%rax), %eax	# *tem_1788, D.21076
	andl	$4, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1378	#,
	.loc 1 6690 0
	movq	-704(%rbp), %rax	# arg0, tmp3582
	movq	32(%rax), %rdx	# arg0_26->exp.operands, D.21080
	movq	-448(%rbp), %rcx	# tem, tmp3583
	movq	-456(%rbp), %rsi	# type, tmp3584
	movl	-892(%rbp), %eax	# code, tmp3585
	movl	%eax, %edi	# tmp3585,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1378:
	.loc 1 6694 0
	cmpl	$102, -892(%rbp)	#, code
	je	.L1379	#,
	.loc 1 6694 0 is_stmt 0 discriminator 1
	cmpl	$101, -892(%rbp)	#, code
	jne	.L1380	#,
.L1379:
	.loc 1 6695 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3586
	movq	%rax, %rdi	# tmp3586,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1380	#,
	.loc 1 6695 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3587
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$60, %al	#, D.21076
	jne	.L1380	#,
	.loc 1 6696 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3588
	movq	40(%rax), %rcx	# arg0_26->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3589
	movq	32(%rax), %rdx	# arg0_26->exp.operands, D.21080
	movq	-456(%rbp), %rsi	# type, tmp3590
	movl	-892(%rbp), %eax	# code, tmp3591
	movl	%eax, %edi	# tmp3591,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1380:
	.loc 1 6702 0
	movq	-704(%rbp), %rax	# arg0, tmp3592
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movzbl	16(%rax), %eax	# _1801->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	jne	.L1381	#,
	.loc 1 6703 0
	movq	-704(%rbp), %rax	# arg0, tmp3593
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	jne	.L1381	#,
	.loc 1 6704 0
	movq	-704(%rbp), %rax	# arg0, tmp3594
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp3594,
	call	get_unwidened	#
	movq	%rax, -448(%rbp)	# tmp3595, tem
	movq	-448(%rbp), %rax	# tem, tmp3596
	cmpq	-704(%rbp), %rax	# arg0, tmp3596
	je	.L1381	#,
	.loc 1 6705 0
	movq	-448(%rbp), %rax	# tem, tmp3597
	movq	8(%rax), %rdx	# tem_1804->common.type, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3598
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3598,
	call	get_unwidened	#
	movq	%rax, -712(%rbp)	# tmp3599, t1
	cmpq	$0, -712(%rbp)	#, t1
	je	.L1381	#,
	.loc 1 6706 0
	movq	-712(%rbp), %rax	# t1, tmp3600
	movq	8(%rax), %rdx	# t1_1806->common.type, D.21080
	movq	-448(%rbp), %rax	# tem, tmp3601
	movq	8(%rax), %rax	# tem_1804->common.type, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1382	#,
	.loc 1 6707 0
	movq	-712(%rbp), %rax	# t1, tmp3602
	movzbl	16(%rax), %eax	# t1_1806->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1381	#,
	.loc 1 6708 0
	movq	-448(%rbp), %rax	# tem, tmp3603
	movq	8(%rax), %rdx	# tem_1804->common.type, D.21080
	movq	-712(%rbp), %rax	# t1, tmp3604
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3604,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21084
	je	.L1381	#,
.L1382:
	.loc 1 6709 0
	movq	-448(%rbp), %rax	# tem, tmp3605
	movq	8(%rax), %rax	# tem_1804->common.type, D.21080
	movq	-712(%rbp), %rdx	# t1, tmp3606
	movq	%rdx, %rsi	# tmp3606,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-448(%rbp), %rdx	# tem, tmp3607
	movq	-456(%rbp), %rsi	# type, tmp3608
	movl	-892(%rbp), %eax	# code, tmp3609
	movl	%eax, %edi	# tmp3609,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1381:
	.loc 1 6713 0
	movq	-696(%rbp), %rax	# arg1, tmp3610
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1383	#,
	.loc 1 6714 0
	movq	-704(%rbp), %rax	# arg0, tmp3611
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$78, %al	#, D.21076
	je	.L1384	#,
	.loc 1 6715 0
	movq	-704(%rbp), %rax	# arg0, tmp3612
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$79, %al	#, D.21076
	jne	.L1383	#,
.L1384:
	.loc 1 6716 0
	movq	-704(%rbp), %rax	# arg0, tmp3613
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _1819->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1383	#,
	.loc 1 6717 0
	movq	-720(%rbp), %rax	# t, tmp3614
	movq	%rax, %rdi	# tmp3614,
	call	optimize_minmax_comparison	#
	jmp	.L937	#
.L1383:
	.loc 1 6724 0
	cmpl	$98, -892(%rbp)	#, code
	jne	.L1385	#,
	.loc 1 6724 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3615
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1385	#,
	.loc 1 6725 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3616
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$80, %al	#, D.21076
	jne	.L1385	#,
	.loc 1 6726 0
	movq	-704(%rbp), %rax	# arg0, tmp3617
	movzbl	17(%rax), %eax	# *arg0_26, D.21076
	andl	$1, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1385	#,
	.loc 1 6727 0
	movq	-696(%rbp), %rax	# arg1, tmp3618
	movq	%rax, %rdi	# tmp3618,
	call	negate_expr	#
	movq	%rax, -448(%rbp)	# tmp3619, tem
	cmpq	$0, -448(%rbp)	#, tem
	je	.L1385	#,
	.loc 1 6728 0
	movq	-448(%rbp), %rax	# tem, tmp3620
	movzbl	16(%rax), %eax	# tem_1826->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1385	#,
	.loc 1 6729 0
	movq	-448(%rbp), %rax	# tem, tmp3621
	movzbl	18(%rax), %eax	# *tem_1826, D.21076
	andl	$4, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1385	#,
	.loc 1 6730 0
	movq	-704(%rbp), %rax	# arg0, tmp3622
	movq	32(%rax), %rdx	# arg0_26->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3623
	movq	-456(%rbp), %rax	# type, tmp3624
	movq	%rax, %rsi	# tmp3624,
	movl	$98, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rbx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3625
	movq	32(%rax), %rdx	# arg0_26->exp.operands, D.21080
	movq	-448(%rbp), %rcx	# tem, tmp3626
	movq	-456(%rbp), %rax	# type, tmp3627
	movq	%rax, %rsi	# tmp3627,
	movl	$100, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp3628
	movq	%rbx, %rcx	# D.21080,
	movq	%rax, %rsi	# tmp3628,
	movl	$91, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1385:
	.loc 1 6740 0
	movq	-696(%rbp), %rax	# arg1, tmp3629
	movq	%rax, %rdi	# tmp3629,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1386	#,
	.loc 1 6740 0 is_stmt 0 discriminator 1
	cmpl	$101, -892(%rbp)	#, code
	je	.L1387	#,
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1386	#,
.L1387:
	.loc 1 6741 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3630
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L1386	#,
	.loc 1 6743 0
	movq	-704(%rbp), %rax	# arg0, tmp3631
	movq	32(%rax), %rax	# arg0_26->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _1838->common.code, D.21076
	cmpb	$82, %al	#, D.21076
	jne	.L1388	#,
	.loc 1 6744 0
	movq	-704(%rbp), %rax	# arg0, tmp3632
	movq	32(%rax), %rax	# arg0_26->exp.operands, D.21080
	movq	32(%rax), %rax	# _1840->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1388	#,
	.loc 1 6746 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3633
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rbx	#, D.21080
	.loc 1 6751 0
	movq	-704(%rbp), %rax	# arg0, tmp3634
	movq	32(%rax), %rax	# arg0_26->exp.operands, D.21080
	.loc 1 6746 0
	movq	40(%rax), %rcx	# _1846->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3635
	movq	40(%rax), %rdx	# arg0_26->exp.operands, D.21080
	.loc 1 6749 0
	movq	-704(%rbp), %rax	# arg0, tmp3636
	movq	32(%rax), %rax	# arg0_26->exp.operands, D.21080
	.loc 1 6746 0
	movq	8(%rax), %rax	# _1849->common.type, D.21080
	movq	%rax, %rsi	# D.21080,
	movl	$83, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3637
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rbx, %rcx	# D.21080,
	movq	%rax, %rsi	# D.21080,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3638
	movq	-456(%rbp), %rsi	# type, tmp3639
	movl	-892(%rbp), %eax	# code, tmp3640
	movl	%eax, %edi	# tmp3640,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 6745 0
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1388:
	.loc 1 6755 0
	movq	-704(%rbp), %rax	# arg0, tmp3641
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _1856->common.code, D.21076
	cmpb	$82, %al	#, D.21076
	jne	.L1386	#,
	.loc 1 6756 0
	movq	-704(%rbp), %rax	# arg0, tmp3642
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	movq	32(%rax), %rax	# _1858->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1386	#,
	.loc 1 6758 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3643
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rbx	#, D.21080
	.loc 1 6763 0
	movq	-704(%rbp), %rax	# arg0, tmp3644
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	.loc 1 6758 0
	movq	40(%rax), %rcx	# _1864->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3645
	movq	32(%rax), %rdx	# arg0_26->exp.operands, D.21080
	.loc 1 6761 0
	movq	-704(%rbp), %rax	# arg0, tmp3646
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	.loc 1 6758 0
	movq	8(%rax), %rax	# _1867->common.type, D.21080
	movq	%rax, %rsi	# D.21080,
	movl	$83, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3647
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rbx, %rcx	# D.21080,
	movq	%rax, %rsi	# D.21080,
	movl	$88, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3648
	movq	-456(%rbp), %rsi	# type, tmp3649
	movl	-892(%rbp), %eax	# code, tmp3650
	movl	%eax, %edi	# tmp3650,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 6757 0
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1386:
	.loc 1 6772 0
	cmpl	$102, -892(%rbp)	#, code
	je	.L1389	#,
	.loc 1 6772 0 is_stmt 0 discriminator 1
	cmpl	$101, -892(%rbp)	#, code
	jne	.L1390	#,
.L1389:
	.loc 1 6773 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3651
	movq	%rax, %rdi	# tmp3651,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1390	#,
	.loc 1 6774 0
	movq	-704(%rbp), %rax	# arg0, tmp3652
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1875, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1390	#,
	.loc 1 6775 0
	movq	-704(%rbp), %rax	# arg0, tmp3653
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$66, %al	#, D.21076
	je	.L1391	#,
	.loc 1 6776 0
	movq	-704(%rbp), %rax	# arg0, tmp3654
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$67, %al	#, D.21076
	je	.L1391	#,
	.loc 1 6777 0
	movq	-704(%rbp), %rax	# arg0, tmp3655
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$68, %al	#, D.21076
	je	.L1391	#,
	.loc 1 6778 0
	movq	-704(%rbp), %rax	# arg0, tmp3656
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$69, %al	#, D.21076
	jne	.L1390	#,
.L1391:
	.loc 1 6779 0
	movq	-704(%rbp), %rax	# arg0, tmp3657
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_pow2p	#
	testl	%eax, %eax	# D.21084
	je	.L1390	#,
.LBB49:
	.loc 1 6781 0
	movq	-704(%rbp), %rax	# arg0, tmp3658
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rax, %rdi	# D.21080,
	call	unsigned_type	#
	movq	%rax, -296(%rbp)	# tmp3659, newtype
	.loc 1 6782 0
	movq	-704(%rbp), %rax	# arg0, tmp3660
	movq	40(%rax), %rdx	# arg0_26->exp.operands, D.21080
	movq	-296(%rbp), %rax	# newtype, tmp3661
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3661,
	call	convert	#
	movq	%rax, %rbx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3662
	movq	32(%rax), %rdx	# arg0_26->exp.operands, D.21080
	movq	-296(%rbp), %rax	# newtype, tmp3663
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3663,
	call	convert	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3664
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movq	-296(%rbp), %rsi	# newtype, tmp3665
	movq	%rbx, %rcx	# D.21080,
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -288(%rbp)	# tmp3666, newmod
	.loc 1 6786 0
	movq	-696(%rbp), %rdx	# arg1, tmp3667
	movq	-296(%rbp), %rax	# newtype, tmp3668
	movq	%rdx, %rsi	# tmp3667,
	movq	%rax, %rdi	# tmp3668,
	call	convert	#
	movq	%rax, %rcx	#, D.21080
	movq	-288(%rbp), %rdx	# newmod, tmp3669
	movq	-456(%rbp), %rsi	# type, tmp3670
	movl	-892(%rbp), %eax	# code, tmp3671
	movl	%eax, %edi	# tmp3671,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1390:
.LBE49:
	.loc 1 6791 0
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1392	#,
	.loc 1 6791 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3672
	movq	%rax, %rdi	# tmp3672,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1392	#,
	.loc 1 6792 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3673
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L1392	#,
	.loc 1 6793 0
	movq	-704(%rbp), %rax	# arg0, tmp3674
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1392	#,
	.loc 1 6794 0
	movq	-704(%rbp), %rdx	# arg0, tmp3675
	movq	-456(%rbp), %rax	# type, tmp3676
	movq	%rdx, %rsi	# tmp3675,
	movq	%rax, %rdi	# tmp3676,
	call	convert	#
	jmp	.L937	#
.L1392:
	.loc 1 6798 0
	cmpl	$101, -892(%rbp)	#, code
	je	.L1393	#,
	.loc 1 6798 0 is_stmt 0 discriminator 1
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1394	#,
.L1393:
	.loc 1 6799 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3677
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L1394	#,
	.loc 1 6800 0
	movq	-704(%rbp), %rax	# arg0, tmp3678
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_pow2p	#
	testl	%eax, %eax	# D.21084
	je	.L1394	#,
	.loc 1 6801 0
	movq	-704(%rbp), %rax	# arg0, tmp3679
	movq	40(%rax), %rax	# arg0_26->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3680
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp3680,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1394	#,
	.loc 1 6802 0
	movq	global_trees+88(%rip), %rcx	# global_trees, D.21080
	cmpl	$101, -892(%rbp)	#, code
	jne	.L1395	#,
	.loc 1 6802 0 is_stmt 0 discriminator 1
	movl	$102, %eax	#, iftmp.558
	jmp	.L1396	#
.L1395:
	.loc 1 6802 0 discriminator 2
	movl	$101, %eax	#, iftmp.558
.L1396:
	.loc 1 6802 0 discriminator 3
	movq	-704(%rbp), %rdx	# arg0, tmp3681
	movq	-456(%rbp), %rsi	# type, tmp3682
	movl	%eax, %edi	# iftmp.558,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1394:
	.loc 1 6807 0 is_stmt 1
	cmpl	$97, -892(%rbp)	#, code
	je	.L1397	#,
	.loc 1 6807 0 is_stmt 0 discriminator 1
	cmpl	$100, -892(%rbp)	#, code
	jne	.L1398	#,
.L1397:
	.loc 1 6808 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3683
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1909, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1398	#,
	.loc 1 6809 0
	movq	-696(%rbp), %rax	# arg1, tmp3684
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$82, %al	#, D.21076
	jne	.L1398	#,
	.loc 1 6810 0
	movq	-696(%rbp), %rax	# arg1, tmp3685
	movq	32(%rax), %rax	# arg1_39->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1398	#,
	.loc 1 6811 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3686
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rbx	#, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3687
	movq	40(%rax), %rcx	# arg1_39->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3688
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3689
	movq	%rax, %rsi	# D.21080,
	movl	$83, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	cmpl	$97, -892(%rbp)	#, code
	jne	.L1399	#,
	.loc 1 6811 0 is_stmt 0 discriminator 1
	movl	$101, %eax	#, iftmp.559
	jmp	.L1400	#
.L1399:
	.loc 1 6811 0 discriminator 2
	movl	$102, %eax	#, iftmp.559
.L1400:
	.loc 1 6811 0 discriminator 3
	movq	-456(%rbp), %rsi	# type, tmp3690
	movq	%rbx, %rcx	# D.21080,
	movl	%eax, %edi	# iftmp.559,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1398:
	.loc 1 6816 0 is_stmt 1
	cmpl	$97, -892(%rbp)	#, code
	je	.L1401	#,
	.loc 1 6816 0 is_stmt 0 discriminator 1
	cmpl	$100, -892(%rbp)	#, code
	jne	.L1402	#,
.L1401:
	.loc 1 6817 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3691
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movzbl	17(%rax), %eax	# *_1924, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1402	#,
	.loc 1 6818 0
	movq	-696(%rbp), %rax	# arg1, tmp3692
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1403	#,
	.loc 1 6819 0
	movq	-696(%rbp), %rax	# arg1, tmp3693
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	jne	.L1402	#,
.L1403:
	.loc 1 6820 0
	movq	-696(%rbp), %rax	# arg1, tmp3694
	movq	32(%rax), %rax	# arg1_39->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _1929->common.code, D.21076
	cmpb	$82, %al	#, D.21076
	jne	.L1402	#,
	.loc 1 6821 0
	movq	-696(%rbp), %rax	# arg1, tmp3695
	movq	32(%rax), %rax	# arg1_39->exp.operands, D.21080
	movq	32(%rax), %rax	# _1931->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1402	#,
	.loc 1 6823 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3696
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rbx	#, D.21080
	.loc 1 6826 0
	movq	-696(%rbp), %rax	# arg1, tmp3697
	movq	32(%rax), %rax	# arg1_39->exp.operands, D.21080
	.loc 1 6823 0
	movq	40(%rax), %rcx	# _1937->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3698
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3699
	movq	%rax, %rsi	# D.21080,
	movl	$83, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3700
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rdx	#, D.21080
	cmpl	$97, -892(%rbp)	#, code
	jne	.L1404	#,
	.loc 1 6823 0 is_stmt 0 discriminator 1
	movl	$101, %eax	#, iftmp.560
	jmp	.L1405	#
.L1404:
	.loc 1 6823 0 discriminator 2
	movl	$102, %eax	#, iftmp.560
.L1405:
	.loc 1 6822 0 is_stmt 1
	movq	-456(%rbp), %rsi	# type, tmp3701
	movq	%rbx, %rcx	# D.21080,
	movl	%eax, %edi	# iftmp.560,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L937	#
.L1402:
	.loc 1 6831 0
	movq	-696(%rbp), %rcx	# arg1, tmp3702
	movq	-704(%rbp), %rax	# arg0, tmp3703
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp3702,
	movq	%rax, %rdi	# tmp3703,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1406	#,
	.loc 1 6833 0
	movl	-892(%rbp), %eax	# code, tmp3705
	subl	$97, %eax	#, tmp3704
	cmpl	$5, %eax	#, tmp3704
	ja	.L1407	#,
	movl	%eax, %eax	# tmp3704, tmp3706
	movq	.L1409(,%rax,8), %rax	#, tmp3707
	jmp	*%rax	# tmp3707
	.section	.rodata
	.align 8
	.align 4
.L1409:
	.quad	.L1408
	.quad	.L1410
	.quad	.L1408
	.quad	.L1410
	.quad	.L1410
	.quad	.L1411
	.text
.L1410:
	.loc 1 6838 0
	movq	-704(%rbp), %rax	# arg0, tmp3708
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movzbl	16(%rax), %eax	# _1947->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1412	#,
	.loc 1 6838 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3709
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movzbl	16(%rax), %eax	# _1949->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1413	#,
	movq	-704(%rbp), %rax	# arg0, tmp3710
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	8(%rax), %rax	# _1951->common.type, D.21080
	movzbl	16(%rax), %eax	# _1952->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1412	#,
.L1413:
	.loc 1 6839 0 is_stmt 1
	movq	-456(%rbp), %rax	# type, tmp3711
	movq	%rax, %rsi	# tmp3711,
	movl	$1, %edi	#,
	call	constant_boolean_node	#
	jmp	.L937	#
.L1412:
	.loc 1 6840 0
	movl	$101, -892(%rbp)	#, code
	.loc 1 6841 0
	movl	-892(%rbp), %eax	# code, tmp3712
	movl	%eax, %edx	# tmp3712, D.21076
	movq	-720(%rbp), %rax	# t, tmp3713
	movb	%dl, 16(%rax)	# D.21076, t_9->common.code
	.loc 1 6842 0
	jmp	.L1406	#
.L1411:
	.loc 1 6846 0
	movq	-704(%rbp), %rax	# arg0, tmp3714
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movzbl	16(%rax), %eax	# _1957->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1406	#,
	.loc 1 6846 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3715
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movzbl	16(%rax), %eax	# _1959->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1408	#,
	movq	-704(%rbp), %rax	# arg0, tmp3716
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	8(%rax), %rax	# _1961->common.type, D.21080
	movzbl	16(%rax), %eax	# _1962->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	je	.L1406	#,
.L1408:
	.loc 1 6851 0 is_stmt 1
	movq	-456(%rbp), %rax	# type, tmp3717
	movq	%rax, %rsi	# tmp3717,
	movl	$0, %edi	#,
	call	constant_boolean_node	#
	jmp	.L937	#
.L1407:
	.loc 1 6853 0
	movl	$__FUNCTION__.13261, %edx	#,
	movl	$6853, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1406:
	.loc 1 6870 0
	movq	-696(%rbp), %rax	# arg1, tmp3718
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1414	#,
	.loc 1 6870 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3719
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	je	.L1414	#,
.LBB50:
	.loc 1 6872 0 is_stmt 1
	movq	$0, -80(%rbp)	#, cval1
	movq	$0, -48(%rbp)	#, cval2
	.loc 1 6873 0
	movl	$0, -112(%rbp)	#, save_p
	.loc 1 6875 0
	leaq	-112(%rbp), %rcx	#, tmp3720
	leaq	-48(%rbp), %rdx	#, tmp3721
	leaq	-80(%rbp), %rsi	#, tmp3722
	movq	-704(%rbp), %rax	# arg0, tmp3723
	movq	%rax, %rdi	# tmp3723,
	call	twoval_comparison_p	#
	testl	%eax, %eax	# D.21084
	je	.L1415	#,
	.loc 1 6878 0
	movq	-80(%rbp), %rax	# cval1, cval1.561
	testq	%rax, %rax	# cval1.561
	je	.L1415	#,
	.loc 1 6878 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# cval2, cval2.562
	testq	%rax, %rax	# cval2.562
	je	.L1415	#,
	.loc 1 6879 0 is_stmt 1
	movq	-80(%rbp), %rax	# cval1, cval1.563
	movzbl	17(%rax), %eax	# *cval1.563_1970, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1416	#,
	.loc 1 6879 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# cval2, cval2.564
	movzbl	17(%rax), %eax	# *cval2.564_1973, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1415	#,
.L1416:
	.loc 1 6880 0 is_stmt 1
	movq	-80(%rbp), %rax	# cval1, cval1.565
	movq	8(%rax), %rdx	# cval1.565_1976->common.type, D.21080
	movq	-48(%rbp), %rax	# cval2, cval2.566
	movq	8(%rax), %rax	# cval2.566_1978->common.type, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	jne	.L1415	#,
	.loc 1 6881 0
	movq	-80(%rbp), %rax	# cval1, cval1.567
	movq	8(%rax), %rax	# cval1.567_1980->common.type, D.21080
	movzbl	16(%rax), %eax	# _1981->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1417	#,
	.loc 1 6881 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# cval1, cval1.568
	movq	8(%rax), %rax	# cval1.568_1983->common.type, D.21080
	movzbl	16(%rax), %eax	# _1984->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1417	#,
	movq	-80(%rbp), %rax	# cval1, cval1.569
	movq	8(%rax), %rax	# cval1.569_1986->common.type, D.21080
	movzbl	16(%rax), %eax	# _1987->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1417	#,
	movq	-80(%rbp), %rax	# cval1, cval1.570
	movq	8(%rax), %rax	# cval1.570_1989->common.type, D.21080
	movzbl	16(%rax), %eax	# _1990->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L1415	#,
.L1417:
	.loc 1 6882 0 is_stmt 1
	movq	-80(%rbp), %rax	# cval1, cval1.571
	movq	8(%rax), %rax	# cval1.571_1992->common.type, D.21080
	movq	112(%rax), %rax	# _1993->type.maxval, D.21080
	testq	%rax, %rax	# D.21080
	je	.L1415	#,
	.loc 1 6883 0
	movq	-48(%rbp), %rax	# cval2, cval2.572
	movq	8(%rax), %rax	# cval2.572_1995->common.type, D.21080
	movq	112(%rax), %rax	# _1996->type.maxval, D.21080
	testq	%rax, %rax	# D.21080
	je	.L1415	#,
	.loc 1 6885 0
	movq	-48(%rbp), %rax	# cval2, cval2.573
	movq	8(%rax), %rax	# cval2.573_1998->common.type, D.21080
	.loc 1 6884 0
	movq	112(%rax), %rcx	# _1999->type.maxval, D.21080
	movq	-80(%rbp), %rax	# cval1, cval1.574
	movq	8(%rax), %rax	# cval1.574_2001->common.type, D.21080
	movq	104(%rax), %rax	# _2002->type.minval, D.21080
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	jne	.L1415	#,
.LBB51:
	.loc 1 6887 0
	movq	-80(%rbp), %rax	# cval1, cval1.575
	movq	8(%rax), %rax	# cval1.575_2005->common.type, D.21080
	movq	112(%rax), %rax	# _2006->type.maxval, tmp3724
	movq	%rax, -280(%rbp)	# tmp3724, maxval
	.loc 1 6888 0
	movq	-80(%rbp), %rax	# cval1, cval1.576
	movq	8(%rax), %rax	# cval1.576_2008->common.type, D.21080
	movq	104(%rax), %rax	# _2009->type.minval, tmp3725
	movq	%rax, -272(%rbp)	# tmp3725, minval
	.loc 1 6894 0
	movq	-48(%rbp), %rcx	# cval2, cval2.577
	movq	-80(%rbp), %rsi	# cval1, cval1.578
	movq	-272(%rbp), %rdi	# minval, tmp3726
	movq	-280(%rbp), %rdx	# maxval, tmp3727
	movq	-704(%rbp), %rax	# arg0, tmp3728
	movq	%rdi, %r8	# tmp3726,
	movq	%rax, %rdi	# tmp3728,
	call	eval_subst	#
	movq	%rax, %rdx	#, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3729
	movq	-456(%rbp), %rsi	# type, tmp3730
	movl	-892(%rbp), %eax	# code, tmp3731
	movl	%eax, %edi	# tmp3731,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 6893 0
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -264(%rbp)	# tmp3732, high_result
	.loc 1 6898 0
	movq	-48(%rbp), %rcx	# cval2, cval2.579
	movq	-80(%rbp), %rsi	# cval1, cval1.580
	movq	-280(%rbp), %rdi	# maxval, tmp3733
	movq	-280(%rbp), %rdx	# maxval, tmp3734
	movq	-704(%rbp), %rax	# arg0, tmp3735
	movq	%rdi, %r8	# tmp3733,
	movq	%rax, %rdi	# tmp3735,
	call	eval_subst	#
	movq	%rax, %rdx	#, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3736
	movq	-456(%rbp), %rsi	# type, tmp3737
	movl	-892(%rbp), %eax	# code, tmp3738
	movl	%eax, %edi	# tmp3738,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 6897 0
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -256(%rbp)	# tmp3739, equal_result
	.loc 1 6902 0
	movq	-48(%rbp), %rcx	# cval2, cval2.581
	movq	-80(%rbp), %rsi	# cval1, cval1.582
	movq	-280(%rbp), %rdi	# maxval, tmp3740
	movq	-272(%rbp), %rdx	# minval, tmp3741
	movq	-704(%rbp), %rax	# arg0, tmp3742
	movq	%rdi, %r8	# tmp3740,
	movq	%rax, %rdi	# tmp3742,
	call	eval_subst	#
	movq	%rax, %rdx	#, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3743
	movq	-456(%rbp), %rsi	# type, tmp3744
	movl	-892(%rbp), %eax	# code, tmp3745
	movl	%eax, %edi	# tmp3745,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 6901 0
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -248(%rbp)	# tmp3746, low_result
	.loc 1 6910 0
	movq	-264(%rbp), %rax	# high_result, tmp3747
	movq	%rax, %rdi	# tmp3747,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1418	#,
	.loc 1 6911 0
	movq	-264(%rbp), %rax	# high_result, tmp3748
	movq	%rax, %rdi	# tmp3748,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1415	#,
.L1418:
	.loc 1 6912 0
	movq	-256(%rbp), %rax	# equal_result, tmp3749
	movq	%rax, %rdi	# tmp3749,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1419	#,
	.loc 1 6913 0
	movq	-256(%rbp), %rax	# equal_result, tmp3750
	movq	%rax, %rdi	# tmp3750,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1415	#,
.L1419:
	.loc 1 6914 0
	movq	-248(%rbp), %rax	# low_result, tmp3751
	movq	%rax, %rdi	# tmp3751,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1420	#,
	.loc 1 6915 0
	movq	-248(%rbp), %rax	# low_result, tmp3752
	movq	%rax, %rdi	# tmp3752,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1415	#,
.L1420:
	.loc 1 6919 0
	movq	-264(%rbp), %rax	# high_result, tmp3753
	movq	%rax, %rdi	# tmp3753,
	call	integer_onep	#
	.loc 1 6920 0
	leal	(%rax,%rax), %ebx	#, D.21084
	movq	-256(%rbp), %rax	# equal_result, tmp3754
	movq	%rax, %rdi	# tmp3754,
	call	integer_onep	#
	addl	%ebx, %eax	# D.21084, D.21084
	leal	(%rax,%rax), %ebx	#, D.21084
	.loc 1 6921 0
	movq	-248(%rbp), %rax	# low_result, tmp3755
	movq	%rax, %rdi	# tmp3755,
	call	integer_onep	#
	addl	%ebx, %eax	# D.21084, D.21084
	.loc 1 6919 0
	cmpl	$7, %eax	#, D.21084
	ja	.L1421	#,
	movl	%eax, %eax	# D.21084, tmp3756
	movq	.L1423(,%rax,8), %rax	#, tmp3757
	jmp	*%rax	# tmp3757
	.section	.rodata
	.align 8
	.align 4
.L1423:
	.quad	.L1422
	.quad	.L1424
	.quad	.L1425
	.quad	.L1426
	.quad	.L1427
	.quad	.L1428
	.quad	.L1429
	.quad	.L1430
	.text
.L1422:
	.loc 1 6925 0
	movq	global_trees+88(%rip), %rcx	# global_trees, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3758
	movq	-456(%rbp), %rax	# type, tmp3759
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3759,
	call	omit_one_operand	#
	jmp	.L937	#
.L1424:
	.loc 1 6927 0
	movl	$97, -892(%rbp)	#, code
	.loc 1 6928 0
	jmp	.L1421	#
.L1425:
	.loc 1 6930 0
	movl	$101, -892(%rbp)	#, code
	.loc 1 6931 0
	jmp	.L1421	#
.L1426:
	.loc 1 6933 0
	movl	$98, -892(%rbp)	#, code
	.loc 1 6934 0
	jmp	.L1421	#
.L1427:
	.loc 1 6936 0
	movl	$99, -892(%rbp)	#, code
	.loc 1 6937 0
	jmp	.L1421	#
.L1428:
	.loc 1 6939 0
	movl	$102, -892(%rbp)	#, code
	.loc 1 6940 0
	jmp	.L1421	#
.L1429:
	.loc 1 6942 0
	movl	$100, -892(%rbp)	#, code
	.loc 1 6943 0
	jmp	.L1421	#
.L1430:
	.loc 1 6946 0
	movq	global_trees+96(%rip), %rcx	# global_trees, D.21080
	movq	-704(%rbp), %rdx	# arg0, tmp3760
	movq	-456(%rbp), %rax	# type, tmp3761
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3761,
	call	omit_one_operand	#
	jmp	.L937	#
.L1421:
	.loc 1 6949 0
	movq	-48(%rbp), %rcx	# cval2, cval2.583
	movq	-80(%rbp), %rdx	# cval1, cval1.584
	movq	-456(%rbp), %rsi	# type, tmp3762
	movl	-892(%rbp), %eax	# code, tmp3763
	movl	%eax, %edi	# tmp3763,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -720(%rbp)	# tmp3764, t
	.loc 1 6950 0
	movl	-112(%rbp), %eax	# save_p, save_p.585
	testl	%eax, %eax	# save_p.585
	je	.L1432	#,
	.loc 1 6951 0
	movq	-720(%rbp), %rax	# t, tmp3765
	movq	%rax, %rdi	# tmp3765,
	call	save_expr	#
	jmp	.L937	#
.L1432:
	.loc 1 6953 0
	movq	-720(%rbp), %rax	# t, tmp3766
	movq	%rax, %rdi	# tmp3766,
	call	fold	#
	jmp	.L937	#
.L1415:
.L1414:
.LBE51:
.LBE50:
	.loc 1 6959 0
	movq	-704(%rbp), %rax	# arg0, tmp3767
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$39, %al	#, D.21076
	je	.L1433	#,
	.loc 1 6960 0
	movq	-704(%rbp), %rax	# arg0, tmp3768
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$40, %al	#, D.21076
	jne	.L1434	#,
.L1433:
	.loc 1 6961 0
	cmpl	$101, -892(%rbp)	#, code
	je	.L1435	#,
	.loc 1 6961 0 is_stmt 0 discriminator 1
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1434	#,
.L1435:
	.loc 1 6964 0 is_stmt 1
	movl	optimize(%rip), %eax	# optimize, optimize.586
	testl	%eax, %eax	# optimize.586
	jne	.L1436	#,
	.loc 1 6964 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3769
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1434	#,
.L1436:
	.loc 1 6966 0 is_stmt 1
	movq	-696(%rbp), %rcx	# arg1, tmp3770
	movq	-704(%rbp), %rdx	# arg0, tmp3771
	movq	-456(%rbp), %rsi	# type, tmp3772
	movl	-892(%rbp), %eax	# code, tmp3773
	movl	%eax, %edi	# tmp3773,
	call	optimize_bit_field_compare	#
	movq	%rax, -712(%rbp)	# tmp3774, t1
	.loc 1 6967 0
	cmpq	$0, -712(%rbp)	#, t1
	je	.L1437	#,
	.loc 1 6967 0 is_stmt 0 discriminator 1
	movq	-712(%rbp), %rax	# t1, iftmp.587
	jmp	.L1438	#
.L1437:
	.loc 1 6967 0 discriminator 2
	movq	-720(%rbp), %rax	# t, iftmp.587
.L1438:
	.loc 1 6967 0 discriminator 3
	jmp	.L937	#
.L1434:
	.loc 1 6974 0 is_stmt 1
	cmpl	$101, -892(%rbp)	#, code
	je	.L1439	#,
	.loc 1 6974 0 is_stmt 0 discriminator 1
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1440	#,
.L1439:
	.loc 1 6975 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3775
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movzbl	16(%rax), %eax	# _2063->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1440	#,
	.loc 1 6976 0
	movq	-704(%rbp), %rax	# arg0, tmp3776
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$125, %al	#, D.21076
	je	.L1441	#,
	.loc 1 6977 0
	movq	-696(%rbp), %rax	# arg1, tmp3777
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$125, %al	#, D.21076
	je	.L1441	#,
	.loc 1 6978 0
	movq	-704(%rbp), %rax	# arg0, tmp3778
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$27, %al	#, D.21076
	je	.L1441	#,
	.loc 1 6979 0
	movq	-696(%rbp), %rax	# arg1, tmp3779
	movzbl	16(%rax), %eax	# arg1_39->common.code, D.21076
	cmpb	$27, %al	#, D.21076
	jne	.L1440	#,
.L1441:
.LBB52:
	.loc 1 6981 0
	movq	-704(%rbp), %rax	# arg0, tmp3780
	movq	8(%rax), %rax	# arg0_26->common.type, D.21080
	movq	8(%rax), %rax	# _2069->common.type, tmp3781
	movq	%rax, -240(%rbp)	# tmp3781, subtype
	.loc 1 6984 0
	movq	-704(%rbp), %rax	# arg0, tmp3782
	movq	%rax, %rdi	# tmp3782,
	call	save_expr	#
	movq	%rax, -704(%rbp)	# tmp3783, arg0
	.loc 1 6985 0
	movq	-696(%rbp), %rax	# arg1, tmp3784
	movq	%rax, %rdi	# tmp3784,
	call	save_expr	#
	movq	%rax, -696(%rbp)	# tmp3785, arg1
	.loc 1 6986 0
	movq	-704(%rbp), %rdx	# arg0, tmp3786
	movq	-240(%rbp), %rax	# subtype, tmp3787
	movq	%rax, %rsi	# tmp3787,
	movl	$127, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -232(%rbp)	# tmp3788, real0
	.loc 1 6987 0
	movq	-704(%rbp), %rdx	# arg0, tmp3789
	movq	-240(%rbp), %rax	# subtype, tmp3790
	movq	%rax, %rsi	# tmp3790,
	movl	$128, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -224(%rbp)	# tmp3791, imag0
	.loc 1 6988 0
	movq	-696(%rbp), %rdx	# arg1, tmp3792
	movq	-240(%rbp), %rax	# subtype, tmp3793
	movq	%rax, %rsi	# tmp3793,
	movl	$127, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -216(%rbp)	# tmp3794, real1
	.loc 1 6989 0
	movq	-696(%rbp), %rdx	# arg1, tmp3795
	movq	-240(%rbp), %rax	# subtype, tmp3796
	movq	%rax, %rsi	# tmp3796,
	movl	$128, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, -208(%rbp)	# tmp3797, imag1
	.loc 1 6991 0
	movq	-208(%rbp), %rcx	# imag1, tmp3798
	movq	-224(%rbp), %rdx	# imag0, tmp3799
	movq	-456(%rbp), %rsi	# type, tmp3800
	movl	-892(%rbp), %eax	# code, tmp3801
	movl	%eax, %edi	# tmp3801,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rbx	#, D.21080
	movq	-216(%rbp), %rcx	# real1, tmp3802
	movq	-232(%rbp), %rdx	# real0, tmp3803
	movq	-456(%rbp), %rsi	# type, tmp3804
	movl	-892(%rbp), %eax	# code, tmp3805
	movl	%eax, %edi	# tmp3805,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	cmpl	$101, -892(%rbp)	#, code
	jne	.L1442	#,
	.loc 1 6991 0 is_stmt 0 discriminator 1
	movl	$91, %eax	#, iftmp.588
	jmp	.L1443	#
.L1442:
	.loc 1 6991 0 discriminator 2
	movl	$92, %eax	#, iftmp.588
.L1443:
	.loc 1 6991 0 discriminator 3
	movq	-456(%rbp), %rsi	# type, tmp3806
	movq	%rbx, %rcx	# D.21080,
	movl	%eax, %edi	# iftmp.588,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1440:
.LBE52:
	.loc 1 7004 0 is_stmt 1
	cmpl	$101, -892(%rbp)	#, code
	je	.L1444	#,
	.loc 1 7004 0 is_stmt 0 discriminator 1
	cmpl	$102, -892(%rbp)	#, code
	jne	.L1445	#,
.L1444:
	.loc 1 7005 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp3807
	movq	%rax, %rdi	# tmp3807,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1445	#,
	.loc 1 7006 0
	movq	-704(%rbp), %rax	# arg0, tmp3808
	movzbl	16(%rax), %eax	# arg0_26->common.code, D.21076
	cmpb	$53, %al	#, D.21076
	jne	.L1445	#,
	.loc 1 7007 0
	movq	-704(%rbp), %rax	# arg0, tmp3809
	movq	32(%rax), %rax	# arg0_26->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _2091->common.code, D.21076
	cmpb	$121, %al	#, D.21076
	jne	.L1445	#,
.LBB53:
	.loc 1 7009 0
	movq	-704(%rbp), %rax	# arg0, tmp3810
	movq	32(%rax), %rax	# arg0_26->exp.operands, D.21080
	movq	32(%rax), %rax	# _2093->exp.operands, tmp3811
	movq	%rax, -200(%rbp)	# tmp3811, fndecl
	.loc 1 7012 0
	movq	-200(%rbp), %rax	# fndecl, tmp3812
	movzbl	16(%rax), %eax	# fndecl_2094->common.code, D.21076
	cmpb	$30, %al	#, D.21076
	jne	.L1445	#,
	.loc 1 7013 0
	movq	-200(%rbp), %rax	# fndecl, tmp3813
	movzbl	51(%rax), %eax	# *fndecl_2094, D.21076
	andl	$96, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1445	#,
	.loc 1 7014 0
	movq	-200(%rbp), %rax	# fndecl, tmp3814
	movzbl	51(%rax), %eax	# *fndecl_2094, D.21076
	andl	$96, %eax	#, D.21076
	cmpb	$64, %al	#, D.21076
	je	.L1445	#,
	.loc 1 7015 0
	movq	-200(%rbp), %rax	# fndecl, tmp3815
	movl	56(%rax), %eax	# fndecl_2094->decl.u1.f, D.21093
	cmpl	$31, %eax	#, D.21093
	jne	.L1445	#,
	.loc 1 7016 0
	movq	-704(%rbp), %rax	# arg0, tmp3816
	movq	40(%rax), %rax	# arg0_26->exp.operands, tmp3817
	movq	%rax, -192(%rbp)	# tmp3817, arglist
	cmpq	$0, -192(%rbp)	#, arglist
	je	.L1445	#,
	.loc 1 7017 0
	movq	-192(%rbp), %rax	# arglist, tmp3818
	movq	32(%rax), %rax	# arglist_2101->list.value, D.21080
	movq	8(%rax), %rax	# _2102->common.type, D.21080
	movzbl	16(%rax), %eax	# _2103->common.code, D.21076
	cmpb	$13, %al	#, D.21076
	jne	.L1445	#,
	.loc 1 7018 0
	movq	-192(%rbp), %rax	# arglist, tmp3819
	movq	(%rax), %rax	# arglist_2101->common.chain, D.21080
	testq	%rax, %rax	# D.21080
	jne	.L1445	#,
	.loc 1 7019 0
	movq	global_trees+88(%rip), %rbx	# global_trees, D.21080
	movq	-192(%rbp), %rax	# arglist, tmp3820
	movq	32(%rax), %rdx	# arglist_2101->list.value, D.21080
	movq	integer_types(%rip), %rax	# integer_types, D.21080
	movq	%rax, %rsi	# D.21080,
	movl	$41, %edi	#,
	call	build1	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rsi	# type, tmp3821
	movl	-892(%rbp), %eax	# code, tmp3822
	movq	%rbx, %rcx	# D.21080,
	movl	%eax, %edi	# tmp3822,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1445:
.LBE53:
	.loc 1 7035 0
	cmpl	$98, -892(%rbp)	#, code
	je	.L1446	#,
	.loc 1 7035 0 is_stmt 0 discriminator 1
	cmpl	$99, -892(%rbp)	#, code
	jne	.L1447	#,
.L1446:
	.loc 1 7037 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3823
	movq	%rax, -448(%rbp)	# tmp3823, tem
	movq	-696(%rbp), %rax	# arg1, tmp3824
	movq	%rax, -704(%rbp)	# tmp3824, arg0
	movq	-448(%rbp), %rax	# tem, tmp3825
	movq	%rax, -696(%rbp)	# tmp3825, arg1
	.loc 1 7038 0
	movl	-892(%rbp), %eax	# code, tmp3826
	movl	%eax, %edi	# tmp3826,
	call	swap_tree_comparison	#
	movl	%eax, -892(%rbp)	# tmp3827, code
.L1447:
	.loc 1 7044 0
	movq	$0, -712(%rbp)	#, t1
	.loc 1 7045 0
	movl	$0, -888(%rbp)	#, invert
	.loc 1 7046 0
	cmpl	$102, -892(%rbp)	#, code
	je	.L1448	#,
	.loc 1 7046 0 is_stmt 0 discriminator 1
	cmpl	$100, -892(%rbp)	#, code
	jne	.L1449	#,
.L1448:
	.loc 1 7048 0 is_stmt 1
	movl	$1, -888(%rbp)	#, invert
	.loc 1 7049 0
	movl	-892(%rbp), %eax	# code, tmp3828
	movl	%eax, %edi	# tmp3828,
	call	invert_tree_comparison	#
	movl	%eax, -892(%rbp)	# tmp3829, code
.L1449:
	.loc 1 7054 0
	movq	-704(%rbp), %rax	# arg0, tmp3830
	movzbl	16(%rax), %eax	# arg0_27->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1450	#,
	.loc 1 7054 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3831
	movzbl	16(%rax), %eax	# arg1_40->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1450	#,
	.loc 1 7056 0 is_stmt 1
	cmpl	$101, -892(%rbp)	#, code
	jne	.L1451	#,
	.loc 1 7057 0
	movq	-696(%rbp), %rdx	# arg1, tmp3832
	movq	-704(%rbp), %rax	# arg0, tmp3833
	movq	%rdx, %rsi	# tmp3832,
	movq	%rax, %rdi	# tmp3833,
	call	tree_int_cst_equal	#
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21090,
	call	build_int_2_wide	#
	movq	%rax, -712(%rbp)	# tmp3834, t1
	.loc 1 7056 0
	jmp	.L1461	#
.L1451:
	.loc 1 7059 0
	movq	-704(%rbp), %rax	# arg0, tmp3835
	movq	8(%rax), %rax	# arg0_27->common.type, D.21080
	movzbl	17(%rax), %eax	# *_2125, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1453	#,
	.loc 1 7059 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3836
	movq	40(%rax), %rax	# arg0_27->int_cst.int_cst.high, D.21089
	movq	%rax, %rdx	# D.21089, D.21090
	movq	-696(%rbp), %rax	# arg1, tmp3837
	movq	40(%rax), %rax	# arg1_40->int_cst.int_cst.high, D.21089
	cmpq	%rax, %rdx	# D.21090, D.21090
	jb	.L1454	#,
	.loc 1 7059 0 discriminator 2
	movq	-704(%rbp), %rax	# arg0, tmp3838
	movq	40(%rax), %rdx	# arg0_27->int_cst.int_cst.high, D.21089
	movq	-696(%rbp), %rax	# arg1, tmp3839
	movq	40(%rax), %rax	# arg1_40->int_cst.int_cst.high, D.21089
	cmpq	%rax, %rdx	# D.21089, D.21089
	jne	.L1455	#,
	.loc 1 7059 0 discriminator 3
	movq	-704(%rbp), %rax	# arg0, tmp3840
	movq	32(%rax), %rdx	# arg0_27->int_cst.int_cst.low, D.21090
	movq	-696(%rbp), %rax	# arg1, tmp3841
	movq	32(%rax), %rax	# arg1_40->int_cst.int_cst.low, D.21090
	cmpq	%rax, %rdx	# D.21090, D.21090
	jae	.L1455	#,
.L1454:
	.loc 1 7059 0 discriminator 1
	movl	$1, %eax	#, iftmp.590
	jmp	.L1456	#
.L1455:
	.loc 1 7059 0 discriminator 4
	movl	$0, %eax	#, iftmp.590
.L1456:
	.loc 1 7059 0 discriminator 5
	cltq
	jmp	.L1457	#
.L1453:
	.loc 1 7059 0 discriminator 2
	movq	-704(%rbp), %rax	# arg0, tmp3842
	movq	40(%rax), %rdx	# arg0_27->int_cst.int_cst.high, D.21089
	movq	-696(%rbp), %rax	# arg1, tmp3843
	movq	40(%rax), %rax	# arg1_40->int_cst.int_cst.high, D.21089
	cmpq	%rax, %rdx	# D.21089, D.21089
	jl	.L1458	#,
	movq	-704(%rbp), %rax	# arg0, tmp3844
	movq	40(%rax), %rdx	# arg0_27->int_cst.int_cst.high, D.21089
	movq	-696(%rbp), %rax	# arg1, tmp3845
	movq	40(%rax), %rax	# arg1_40->int_cst.int_cst.high, D.21089
	cmpq	%rax, %rdx	# D.21089, D.21089
	jne	.L1459	#,
	.loc 1 7059 0 discriminator 3
	movq	-704(%rbp), %rax	# arg0, tmp3846
	movq	32(%rax), %rdx	# arg0_27->int_cst.int_cst.low, D.21090
	movq	-696(%rbp), %rax	# arg1, tmp3847
	movq	32(%rax), %rax	# arg1_40->int_cst.int_cst.low, D.21090
	cmpq	%rax, %rdx	# D.21090, D.21090
	jae	.L1459	#,
.L1458:
	.loc 1 7059 0 discriminator 1
	movl	$1, %eax	#, iftmp.591
	jmp	.L1460	#
.L1459:
	.loc 1 7059 0 discriminator 4
	movl	$0, %eax	#, iftmp.591
.L1460:
	.loc 1 7059 0 discriminator 5
	cltq
.L1457:
	.loc 1 7059 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.589,
	call	build_int_2_wide	#
	movq	%rax, -712(%rbp)	# tmp3848, t1
	.loc 1 7056 0 is_stmt 1 discriminator 3
	jmp	.L1461	#
.L1450:
	.loc 1 7078 0
	movq	-704(%rbp), %rax	# arg0, tmp3849
	movzbl	16(%rax), %eax	# arg0_27->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L1461	#,
	.loc 1 7078 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3850
	movzbl	16(%rax), %eax	# arg1_40->common.code, D.21076
	cmpb	$26, %al	#, D.21076
	jne	.L1461	#,
	.loc 1 7087 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3851
	movq	32(%rax), %rdx	# arg0_27->real_cst.real_cst, tmp3852
	movq	%rdx, (%rsp)	# tmp3852,
	movq	40(%rax), %rdx	# arg0_27->real_cst.real_cst, tmp3853
	movq	%rdx, 8(%rsp)	# tmp3853,
	movq	48(%rax), %rax	# arg0_27->real_cst.real_cst, tmp3854
	movq	%rax, 16(%rsp)	# tmp3854,
	call	target_isnan	#
	testl	%eax, %eax	# D.21084
	jne	.L1462	#,
	.loc 1 7088 0
	movq	-696(%rbp), %rax	# arg1, tmp3855
	movq	32(%rax), %rdx	# arg1_40->real_cst.real_cst, tmp3856
	movq	%rdx, (%rsp)	# tmp3856,
	movq	40(%rax), %rdx	# arg1_40->real_cst.real_cst, tmp3857
	movq	%rdx, 8(%rsp)	# tmp3857,
	movq	48(%rax), %rax	# arg1_40->real_cst.real_cst, tmp3858
	movq	%rax, 16(%rsp)	# tmp3858,
	call	target_isnan	#
	testl	%eax, %eax	# D.21084
	je	.L1463	#,
.L1462:
	.loc 1 7089 0
	cmpl	$0, -888(%rbp)	#, invert
	je	.L1464	#,
	.loc 1 7089 0 is_stmt 0 discriminator 1
	cmpl	$97, -892(%rbp)	#, code
	jne	.L1464	#,
	.loc 1 7089 0 discriminator 3
	movl	$1, %eax	#, iftmp.592
	jmp	.L1465	#
.L1464:
	.loc 1 7089 0 discriminator 2
	movl	$0, %eax	#, iftmp.592
.L1465:
	.loc 1 7089 0 discriminator 4
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21090,
	call	build_int_2_wide	#
	movq	%rax, -712(%rbp)	# tmp3859, t1
	jmp	.L1461	#
.L1463:
	.loc 1 7091 0 is_stmt 1
	cmpl	$101, -892(%rbp)	#, code
	jne	.L1466	#,
	.loc 1 7092 0
	movq	-696(%rbp), %rax	# arg1, tmp3860
	movq	32(%rax), %rdx	# arg1_40->real_cst.real_cst, tmp3861
	movq	%rdx, 24(%rsp)	# tmp3861,
	movq	40(%rax), %rdx	# arg1_40->real_cst.real_cst, tmp3862
	movq	%rdx, 32(%rsp)	# tmp3862,
	movq	48(%rax), %rax	# arg1_40->real_cst.real_cst, tmp3863
	movq	%rax, 40(%rsp)	# tmp3863,
	movq	-704(%rbp), %rax	# arg0, tmp3864
	movq	32(%rax), %rdx	# arg0_27->real_cst.real_cst, tmp3865
	movq	%rdx, (%rsp)	# tmp3865,
	movq	40(%rax), %rdx	# arg0_27->real_cst.real_cst, tmp3866
	movq	%rdx, 8(%rsp)	# tmp3866,
	movq	48(%rax), %rax	# arg0_27->real_cst.real_cst, tmp3867
	movq	%rax, 16(%rsp)	# tmp3867,
	call	ereal_cmp	#
	testl	%eax, %eax	# D.21084
	sete	%al	#, D.21088
	movzbl	%al, %eax	# D.21088, D.21090
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21090,
	call	build_int_2_wide	#
	movq	%rax, -712(%rbp)	# tmp3868, t1
	jmp	.L1461	#
.L1466:
	.loc 1 7096 0
	movq	-696(%rbp), %rax	# arg1, tmp3869
	movq	32(%rax), %rdx	# arg1_40->real_cst.real_cst, tmp3870
	movq	%rdx, 24(%rsp)	# tmp3870,
	movq	40(%rax), %rdx	# arg1_40->real_cst.real_cst, tmp3871
	movq	%rdx, 32(%rsp)	# tmp3871,
	movq	48(%rax), %rax	# arg1_40->real_cst.real_cst, tmp3872
	movq	%rax, 40(%rsp)	# tmp3872,
	movq	-704(%rbp), %rax	# arg0, tmp3873
	movq	32(%rax), %rdx	# arg0_27->real_cst.real_cst, tmp3874
	movq	%rdx, (%rsp)	# tmp3874,
	movq	40(%rax), %rdx	# arg0_27->real_cst.real_cst, tmp3875
	movq	%rdx, 8(%rsp)	# tmp3875,
	movq	48(%rax), %rax	# arg0_27->real_cst.real_cst, tmp3876
	movq	%rax, 16(%rsp)	# tmp3876,
	call	ereal_cmp	#
	cmpl	$-1, %eax	#, D.21084
	sete	%al	#, D.21088
	movzbl	%al, %eax	# D.21088, D.21090
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21090,
	call	build_int_2_wide	#
	movq	%rax, -712(%rbp)	# tmp3877, t1
.L1461:
	.loc 1 7101 0
	cmpq	$0, -712(%rbp)	#, t1
	jne	.L1467	#,
	.loc 1 7102 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1467:
	.loc 1 7104 0
	cmpl	$0, -888(%rbp)	#, invert
	je	.L1468	#,
	.loc 1 7105 0
	movq	-712(%rbp), %rax	# t1, tmp3878
	movq	32(%rax), %rax	# t1_19->int_cst.int_cst.low, D.21090
	xorq	$1, %rax	#, D.21090
	movq	%rax, %rdx	# D.21090, D.21090
	movq	-712(%rbp), %rax	# t1, tmp3879
	movq	%rdx, 32(%rax)	# D.21090, t1_19->int_cst.int_cst.low
.L1468:
	.loc 1 7107 0
	movq	-712(%rbp), %rax	# t1, tmp3880
	movq	-456(%rbp), %rdx	# type, tmp3881
	movq	%rdx, 8(%rax)	# tmp3881, t1_19->common.type
	.loc 1 7108 0
	movq	-456(%rbp), %rax	# type, tmp3882
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	jne	.L1469	#,
	.loc 1 7109 0
	movq	-712(%rbp), %rax	# t1, tmp3883
	movq	%rax, %rdi	# tmp3883,
	call	truthvalue_conversion	#
	jmp	.L937	#
.L1469:
	.loc 1 7110 0
	movq	-712(%rbp), %rax	# t1, D.21075
	jmp	.L937	#
.L1010:
	.loc 1 7115 0
	movq	-704(%rbp), %rax	# arg0, tmp3884
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1470	#,
	.loc 1 7117 0
	movq	-704(%rbp), %rax	# arg0, tmp3885
	movq	%rax, %rdi	# tmp3885,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1471	#,
	.loc 1 7117 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.593
	jmp	.L1472	#
.L1471:
	.loc 1 7117 0 discriminator 2
	movl	$1, %eax	#, iftmp.593
.L1472:
	.loc 1 7117 0 discriminator 3
	movq	-720(%rbp), %rdx	# t, tmp3886
	cltq
	addq	$4, %rax	#, tmp3888
	movq	(%rdx,%rax,8), %rax	# t_150->exp.operands, D.21080
	.loc 1 7116 0 is_stmt 1 discriminator 3
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1470:
	.loc 1 7118 0
	movq	-904(%rbp), %rax	# expr, tmp3889
	movq	48(%rax), %rcx	# expr_149(D)->exp.operands, D.21080
	movq	-696(%rbp), %rax	# arg1, tmp3890
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3890,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1473	#,
	.loc 1 7119 0
	movq	-704(%rbp), %rdx	# arg0, tmp3891
	movq	-696(%rbp), %rcx	# arg1, tmp3892
	movq	-456(%rbp), %rax	# type, tmp3893
	movq	%rcx, %rsi	# tmp3892,
	movq	%rax, %rdi	# tmp3893,
	call	pedantic_omit_one_operand	#
	jmp	.L937	#
.L1473:
	.loc 1 7126 0
	movq	-696(%rbp), %rax	# arg1, tmp3894
	movq	%rax, %rdi	# tmp3894,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	jne	.L1474	#,
	.loc 1 7127 0
	movq	-696(%rbp), %rax	# arg1, tmp3895
	movzbl	17(%rax), %eax	# *arg1_33, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1475	#,
	.loc 1 7127 0 is_stmt 0 discriminator 1
	movq	-720(%rbp), %rax	# t, tmp3896
	movq	48(%rax), %rax	# t_150->exp.operands, D.21080
	movzbl	17(%rax), %eax	# *_2183, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1474	#,
.L1475:
	.loc 1 7128 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3897
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21084
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	jne	.L1476	#,
	.loc 1 7129 0
	movq	-704(%rbp), %rax	# arg0, tmp3899
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-720(%rbp), %rax	# t, tmp3900
	movq	48(%rax), %rcx	# t_150->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3901
	movq	32(%rax), %rax	# arg0_25->exp.operands, D.21080
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_for_comparison_p	#
	testl	%eax, %eax	# D.21084
	je	.L1476	#,
.L1474:
	.loc 1 7136 0
	movq	-704(%rbp), %rax	# arg0, tmp3902
	movq	%rax, %rdi	# tmp3902,
	call	invert_truthvalue	#
	movq	%rax, -448(%rbp)	# tmp3903, tem
	.loc 1 7138 0
	movq	-448(%rbp), %rax	# tem, tmp3904
	movzbl	16(%rax), %eax	# tem_2193->common.code, D.21076
	cmpb	$96, %al	#, D.21076
	je	.L1476	#,
	.loc 1 7140 0
	movq	-720(%rbp), %rax	# t, tmp3905
	movq	40(%rax), %rdi	# t_150->exp.operands, D.21080
	movq	-720(%rbp), %rax	# t, tmp3906
	movq	48(%rax), %rcx	# t_150->exp.operands, D.21080
	movq	-448(%rbp), %rdx	# tem, tmp3907
	movq	-456(%rbp), %rsi	# type, tmp3908
	movl	-892(%rbp), %eax	# code, tmp3909
	movq	%rdi, %r8	# D.21080,
	movl	%eax, %edi	# tmp3909,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -720(%rbp)	# tmp3910, t
	.loc 1 7142 0
	movq	-448(%rbp), %rax	# tem, tmp3911
	movq	%rax, -704(%rbp)	# tmp3911, arg0
	.loc 1 7144 0
	movq	-720(%rbp), %rax	# t, tmp3912
	movq	40(%rax), %rax	# t_2197->exp.operands, tmp3913
	movq	%rax, -696(%rbp)	# tmp3913, arg1
	.loc 1 7145 0
	jmp	.L1477	#
.L1479:
	.loc 1 7145 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3914
	movq	32(%rax), %rax	# arg1_41->exp.operands, tmp3915
	movq	%rax, -696(%rbp)	# tmp3915, arg1
.L1477:
	movq	-696(%rbp), %rax	# arg1, tmp3916
	movzbl	16(%rax), %eax	# arg1_41->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1478	#,
	.loc 1 7145 0 discriminator 3
	movq	-696(%rbp), %rax	# arg1, tmp3917
	movzbl	16(%rax), %eax	# arg1_41->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1478	#,
	.loc 1 7145 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3918
	movzbl	16(%rax), %eax	# arg1_41->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1476	#,
.L1478:
	.loc 1 7145 0 discriminator 2
	movq	-696(%rbp), %rax	# arg1, tmp3919
	movq	32(%rax), %rdx	# arg1_41->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1476	#,
	.loc 1 7145 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp3920
	movq	8(%rax), %rax	# arg1_41->common.type, D.21080
	movzbl	61(%rax), %eax	# *_2205, tmp3923
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-696(%rbp), %rax	# arg1, tmp3924
	movq	32(%rax), %rax	# arg1_41->exp.operands, D.21080
	movq	8(%rax), %rax	# _2207->common.type, D.21080
	movzbl	61(%rax), %eax	# *_2208, tmp3927
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1479	#,
.L1476:
	.loc 1 7154 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3928
	movzbl	16(%rax), %eax	# arg0_28->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21084
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$60, %al	#, D.21077
	jne	.L1480	#,
	.loc 1 7156 0
	movq	-704(%rbp), %rax	# arg0, tmp3930
	movq	32(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	8(%rax), %rax	# _2214->common.type, D.21080
	movzbl	16(%rax), %eax	# _2215->common.code, D.21076
	.loc 1 7155 0
	cmpb	$7, %al	#, D.21076
	je	.L1481	#,
	.loc 1 7156 0
	movq	-704(%rbp), %rax	# arg0, tmp3931
	movq	32(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	8(%rax), %rax	# _2217->common.type, D.21080
	movzbl	16(%rax), %eax	# _2218->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1482	#,
	.loc 1 7156 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3932
	movq	32(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	8(%rax), %rax	# _2220->common.type, D.21080
	movq	8(%rax), %rax	# _2221->common.type, D.21080
	movzbl	16(%rax), %eax	# _2222->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	jne	.L1482	#,
.L1481:
	.loc 1 7157 0 is_stmt 1
	movl	flag_unsafe_math_optimizations(%rip), %eax	# flag_unsafe_math_optimizations, flag_unsafe_math_optimizations.594
	testl	%eax, %eax	# flag_unsafe_math_optimizations.594
	je	.L1480	#,
.L1482:
	.loc 1 7158 0
	movq	-704(%rbp), %rax	# arg0, tmp3933
	movq	40(%rax), %rdx	# arg0_28->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3934
	movq	32(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3935
	movq	%rcx, %rsi	# tmp3935,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_for_comparison_p	#
	testl	%eax, %eax	# D.21084
	je	.L1480	#,
.LBB54:
	.loc 1 7161 0
	movq	-720(%rbp), %rax	# t, tmp3936
	movq	48(%rax), %rax	# t_10->exp.operands, tmp3937
	movq	%rax, -472(%rbp)	# tmp3937, arg2
	.loc 1 7162 0
	movq	-704(%rbp), %rax	# arg0, tmp3938
	movzbl	16(%rax), %eax	# arg0_28->common.code, D.21076
	movzbl	%al, %eax	# D.21076, tmp3939
	movl	%eax, -748(%rbp)	# tmp3939, comp_code
	.loc 1 7164 0
	jmp	.L1483	#
.L1486:
	.loc 1 7164 0 is_stmt 0 discriminator 1
	movq	-472(%rbp), %rax	# arg2, tmp3940
	movq	32(%rax), %rax	# arg2_103->exp.operands, tmp3941
	movq	%rax, -472(%rbp)	# tmp3941, arg2
.L1483:
	movq	-472(%rbp), %rax	# arg2, tmp3942
	movzbl	16(%rax), %eax	# arg2_103->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1484	#,
	.loc 1 7164 0 discriminator 3
	movq	-472(%rbp), %rax	# arg2, tmp3943
	movzbl	16(%rax), %eax	# arg2_103->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1484	#,
	.loc 1 7164 0 discriminator 1
	movq	-472(%rbp), %rax	# arg2, tmp3944
	movzbl	16(%rax), %eax	# arg2_103->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1485	#,
.L1484:
	.loc 1 7164 0 discriminator 2
	movq	-472(%rbp), %rax	# arg2, tmp3945
	movq	32(%rax), %rdx	# arg2_103->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1485	#,
	.loc 1 7164 0 discriminator 1
	movq	-472(%rbp), %rax	# arg2, tmp3946
	movq	8(%rax), %rax	# arg2_103->common.type, D.21080
	movzbl	61(%rax), %eax	# *_2236, tmp3949
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-472(%rbp), %rax	# arg2, tmp3950
	movq	32(%rax), %rax	# arg2_103->exp.operands, D.21080
	movq	8(%rax), %rax	# _2238->common.type, D.21080
	movzbl	61(%rax), %eax	# *_2239, tmp3953
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1486	#,
.L1485:
	.loc 1 7168 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp3954
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	8(%rax), %rax	# _2242->common.type, D.21080
	movzbl	16(%rax), %eax	# _2243->common.code, D.21076
	.loc 1 7171 0
	cmpb	$7, %al	#, D.21076
	je	.L1487	#,
	.loc 1 7168 0
	movq	-704(%rbp), %rax	# arg0, tmp3955
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	8(%rax), %rax	# _2245->common.type, D.21080
	movzbl	16(%rax), %eax	# _2246->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	jne	.L1488	#,
	.loc 1 7168 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3956
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	8(%rax), %rax	# _2248->common.type, D.21080
	movq	8(%rax), %rax	# _2249->common.type, D.21080
	movzbl	16(%rax), %eax	# _2250->common.code, D.21076
	cmpb	$7, %al	#, D.21076
	jne	.L1488	#,
.L1487:
	.loc 1 7169 0 is_stmt 1 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp3957
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	real_zerop	#
	.loc 1 7171 0 discriminator 1
	testl	%eax, %eax	# D.21084
	setne	%al	#, iftmp.595
	jmp	.L1489	#
.L1488:
	.loc 1 7170 0
	movq	-704(%rbp), %rax	# arg0, tmp3958
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_zerop	#
	.loc 1 7171 0
	testl	%eax, %eax	# D.21084
	setne	%al	#, iftmp.595
.L1489:
	.loc 1 7168 0
	testb	%al, %al	# iftmp.595
	je	.L1490	#,
	.loc 1 7171 0
	movq	-472(%rbp), %rax	# arg2, tmp3959
	movzbl	16(%rax), %eax	# arg2_103->common.code, D.21076
	cmpb	$77, %al	#, D.21076
	jne	.L1490	#,
	.loc 1 7172 0
	movq	-472(%rbp), %rax	# arg2, tmp3960
	movq	32(%rax), %rax	# arg2_103->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp3961
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp3961,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1490	#,
	.loc 1 7173 0
	movl	-748(%rbp), %eax	# comp_code, tmp3963
	subl	$97, %eax	#, tmp3962
	cmpl	$5, %eax	#, tmp3962
	ja	.L1491	#,
	movl	%eax, %eax	# tmp3962, tmp3964
	movq	.L1493(,%rax,8), %rax	#, tmp3965
	jmp	*%rax	# tmp3965
	.section	.rodata
	.align 8
	.align 4
.L1493:
	.quad	.L1492
	.quad	.L1492
	.quad	.L1494
	.quad	.L1494
	.quad	.L1495
	.quad	.L1496
	.text
.L1495:
	.loc 1 7180 0
	movq	-720(%rbp), %rax	# t, tmp3966
	movq	40(%rax), %rax	# t_10->exp.operands, D.21080
	.loc 1 7178 0
	movq	8(%rax), %rax	# _2261->common.type, D.21080
	movq	-696(%rbp), %rdx	# arg1, tmp3967
	movq	%rdx, %rsi	# tmp3967,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	negate_expr	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp3968
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3968,
	call	convert	#
	.loc 1 7176 0
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1496:
	.loc 1 7184 0
	movq	-696(%rbp), %rdx	# arg1, tmp3969
	movq	-456(%rbp), %rax	# type, tmp3970
	movq	%rdx, %rsi	# tmp3969,
	movq	%rax, %rdi	# tmp3970,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1494:
	.loc 1 7187 0
	movq	-696(%rbp), %rax	# arg1, tmp3971
	movq	8(%rax), %rax	# arg1_42->common.type, D.21080
	movzbl	17(%rax), %eax	# *_2269, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1497	#,
	.loc 1 7188 0
	movq	-696(%rbp), %rax	# arg1, tmp3972
	movq	8(%rax), %rax	# arg1_42->common.type, D.21080
	movq	%rax, %rdi	# D.21080,
	call	signed_type	#
	movq	-696(%rbp), %rdx	# arg1, tmp3973
	movq	%rdx, %rsi	# tmp3973,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, -696(%rbp)	# tmp3974, arg1
.L1497:
	.loc 1 7190 0
	movq	-696(%rbp), %rax	# arg1, tmp3975
	movq	8(%rax), %rax	# arg1_43->common.type, D.21080
	movq	-696(%rbp), %rdx	# arg1, tmp3976
	movq	%rax, %rsi	# D.21080,
	movl	$80, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp3977
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3977,
	call	convert	#
	.loc 1 7189 0
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1492:
	.loc 1 7194 0
	movq	-696(%rbp), %rax	# arg1, tmp3978
	movq	8(%rax), %rax	# arg1_42->common.type, D.21080
	movzbl	17(%rax), %eax	# *_2280, D.21076
	andl	$32, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1498	#,
	.loc 1 7195 0
	movq	-696(%rbp), %rax	# arg1, tmp3979
	movq	8(%rax), %rax	# arg1_42->common.type, D.21080
	movq	%rax, %rdi	# D.21080,
	call	signed_type	#
	movq	-696(%rbp), %rdx	# arg1, tmp3980
	movq	%rdx, %rsi	# tmp3980,
	movq	%rax, %rdi	# D.21080,
	call	convert	#
	movq	%rax, -696(%rbp)	# tmp3981, arg1
.L1498:
	.loc 1 7197 0
	movq	-696(%rbp), %rax	# arg1, tmp3982
	movq	8(%rax), %rax	# arg1_44->common.type, D.21080
	movq	-696(%rbp), %rdx	# arg1, tmp3983
	movq	%rax, %rsi	# D.21080,
	movl	$80, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp3984
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3984,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	negate_expr	#
	.loc 1 7196 0
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1491:
	.loc 1 7202 0
	movl	$__FUNCTION__.13261, %edx	#,
	movl	$7202, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1490:
	.loc 1 7208 0
	movq	-704(%rbp), %rax	# arg0, tmp3985
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1499	#,
	.loc 1 7208 0 is_stmt 0 discriminator 1
	movq	-472(%rbp), %rax	# arg2, tmp3986
	movq	%rax, %rdi	# tmp3986,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1499	#,
	.loc 1 7210 0 is_stmt 1
	cmpl	$102, -748(%rbp)	#, comp_code
	jne	.L1500	#,
	.loc 1 7211 0
	movq	-696(%rbp), %rdx	# arg1, tmp3987
	movq	-456(%rbp), %rax	# type, tmp3988
	movq	%rdx, %rsi	# tmp3987,
	movq	%rax, %rdi	# tmp3988,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1500:
	.loc 1 7212 0
	cmpl	$101, -748(%rbp)	#, comp_code
	jne	.L1499	#,
	.loc 1 7213 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp3989
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp3989,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1499:
	.loc 1 7219 0
	movq	-704(%rbp), %rax	# arg0, tmp3990
	movq	32(%rax), %rdx	# arg0_28->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp3991
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movq	-472(%rbp), %rcx	# arg2, tmp3992
	movq	%rcx, %rsi	# tmp3992,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_for_comparison_p	#
	testl	%eax, %eax	# D.21084
	je	.L1501	#,
.LBB55:
	.loc 1 7222 0
	movq	-704(%rbp), %rax	# arg0, tmp3993
	movq	32(%rax), %rax	# arg0_28->exp.operands, tmp3994
	movq	%rax, -184(%rbp)	# tmp3994, comp_op0
	.loc 1 7223 0
	movq	-704(%rbp), %rax	# arg0, tmp3995
	movq	40(%rax), %rax	# arg0_28->exp.operands, tmp3996
	movq	%rax, -176(%rbp)	# tmp3996, comp_op1
	.loc 1 7224 0
	movq	-184(%rbp), %rax	# comp_op0, tmp3997
	movq	8(%rax), %rax	# comp_op0_2303->common.type, tmp3998
	movq	%rax, -464(%rbp)	# tmp3998, comp_type
	.loc 1 7227 0
	movq	-464(%rbp), %rax	# comp_type, tmp3999
	movq	128(%rax), %rdx	# comp_type_2305->type.main_variant, D.21080
	movq	-456(%rbp), %rax	# type, tmp4000
	movq	128(%rax), %rax	# type_152->type.main_variant, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	jne	.L1502	#,
	.loc 1 7228 0
	movq	-456(%rbp), %rax	# type, tmp4001
	movq	%rax, -464(%rbp)	# tmp4001, comp_type
.L1502:
	.loc 1 7230 0
	movl	-748(%rbp), %eax	# comp_code, tmp4003
	subl	$97, %eax	#, tmp4002
	cmpl	$5, %eax	#, tmp4002
	ja	.L1503	#,
	movl	%eax, %eax	# tmp4002, tmp4004
	movq	.L1505(,%rax,8), %rax	#, tmp4005
	jmp	*%rax	# tmp4005
	.section	.rodata
	.align 8
	.align 4
.L1505:
	.quad	.L1504
	.quad	.L1504
	.quad	.L1506
	.quad	.L1506
	.quad	.L1507
	.quad	.L1508
	.text
.L1507:
	.loc 1 7233 0
	movq	-472(%rbp), %rdx	# arg2, tmp4006
	movq	-456(%rbp), %rax	# type, tmp4007
	movq	%rdx, %rsi	# tmp4006,
	movq	%rax, %rdi	# tmp4007,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1508:
	.loc 1 7235 0
	movq	-696(%rbp), %rdx	# arg1, tmp4008
	movq	-456(%rbp), %rax	# type, tmp4009
	movq	%rdx, %rsi	# tmp4008,
	movq	%rax, %rdi	# tmp4009,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1504:
	.loc 1 7243 0
	cmpl	$98, -748(%rbp)	#, comp_code
	jne	.L1509	#,
	.loc 1 7243 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rdx	# comp_op1, iftmp.596
	jmp	.L1510	#
.L1509:
	.loc 1 7243 0 discriminator 2
	movq	-184(%rbp), %rdx	# comp_op0, iftmp.596
.L1510:
	.loc 1 7243 0 discriminator 3
	cmpl	$98, -748(%rbp)	#, comp_code
	jne	.L1511	#,
	.loc 1 7243 0 discriminator 4
	movq	-184(%rbp), %rax	# comp_op0, iftmp.597
	jmp	.L1512	#
.L1511:
	.loc 1 7243 0 discriminator 5
	movq	-176(%rbp), %rax	# comp_op1, iftmp.597
.L1512:
	.loc 1 7243 0 discriminator 6
	movq	-464(%rbp), %rsi	# comp_type, tmp4010
	movq	%rdx, %rcx	# iftmp.596,
	movq	%rax, %rdx	# iftmp.597,
	movl	$78, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp4011
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4011,
	call	convert	#
	.loc 1 7242 0 is_stmt 1 discriminator 6
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1506:
	.loc 1 7252 0
	cmpl	$100, -748(%rbp)	#, comp_code
	jne	.L1513	#,
	.loc 1 7252 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rdx	# comp_op1, iftmp.598
	jmp	.L1514	#
.L1513:
	.loc 1 7252 0 discriminator 2
	movq	-184(%rbp), %rdx	# comp_op0, iftmp.598
.L1514:
	.loc 1 7252 0 discriminator 3
	cmpl	$100, -748(%rbp)	#, comp_code
	jne	.L1515	#,
	.loc 1 7252 0 discriminator 4
	movq	-184(%rbp), %rax	# comp_op0, iftmp.599
	jmp	.L1516	#
.L1515:
	.loc 1 7252 0 discriminator 5
	movq	-176(%rbp), %rax	# comp_op1, iftmp.599
.L1516:
	.loc 1 7252 0 discriminator 6
	movq	-464(%rbp), %rsi	# comp_type, tmp4012
	movq	%rdx, %rcx	# iftmp.598,
	movq	%rax, %rdx	# iftmp.599,
	movl	$79, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rax	# type, tmp4013
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4013,
	call	convert	#
	.loc 1 7251 0 is_stmt 1 discriminator 6
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1503:
	.loc 1 7259 0
	movl	$__FUNCTION__.13261, %edx	#,
	movl	$7259, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1501:
.LBE55:
	.loc 1 7269 0
	movq	-456(%rbp), %rax	# type, tmp4014
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$6, %al	#, D.21076
	je	.L1517	#,
	.loc 1 7269 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# type, tmp4015
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$10, %al	#, D.21076
	je	.L1517	#,
	movq	-456(%rbp), %rax	# type, tmp4016
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$11, %al	#, D.21076
	je	.L1517	#,
	movq	-456(%rbp), %rax	# type, tmp4017
	movzbl	16(%rax), %eax	# type_152->common.code, D.21076
	cmpb	$12, %al	#, D.21076
	jne	.L1480	#,
.L1517:
	.loc 1 7270 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp4018
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _2333->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1480	#,
	.loc 1 7271 0
	movq	-472(%rbp), %rax	# arg2, tmp4019
	movzbl	16(%rax), %eax	# arg2_103->common.code, D.21076
	cmpb	$25, %al	#, D.21076
	jne	.L1480	#,
	.loc 1 7272 0
	movl	-748(%rbp), %eax	# comp_code, tmp4021
	subl	$97, %eax	#, tmp4020
	cmpl	$5, %eax	#, tmp4020
	ja	.L1518	#,
	movl	%eax, %eax	# tmp4020, tmp4022
	movq	.L1520(,%rax,8), %rax	#, tmp4023
	jmp	*%rax	# tmp4023
	.section	.rodata
	.align 8
	.align 4
.L1520:
	.quad	.L1519
	.quad	.L1521
	.quad	.L1522
	.quad	.L1523
	.quad	.L1524
	.quad	.L1561
	.text
.L1524:
	.loc 1 7276 0
	movq	-704(%rbp), %rax	# arg0, tmp4024
	movq	40(%rax), %rdx	# arg0_28->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp4025
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4025,
	call	convert	#
	movq	%rax, -696(%rbp)	# tmp4026, arg1
	.loc 1 7277 0
	movq	-720(%rbp), %rax	# t, tmp4027
	movq	48(%rax), %rdi	# t_10->exp.operands, D.21080
	movq	-720(%rbp), %rax	# t, tmp4028
	movq	32(%rax), %rdx	# t_10->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp4029
	movq	-456(%rbp), %rsi	# type, tmp4030
	movl	-892(%rbp), %eax	# code, tmp4031
	movq	%rdi, %r8	# D.21080,
	movl	%eax, %edi	# tmp4031,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -720(%rbp)	# tmp4032, t
	.loc 1 7279 0
	jmp	.L1480	#
.L1519:
	.loc 1 7283 0
	movq	-456(%rbp), %rax	# type, tmp4033
	movq	112(%rax), %rcx	# type_152->type.maxval, D.21080
	movq	-472(%rbp), %rax	# arg2, tmp4034
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4034,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	jne	.L1526	#,
	.loc 1 7284 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-472(%rbp), %rax	# arg2, tmp4035
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp4035,
	movl	$59, %edi	#,
	call	const_binop	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4036
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1526	#,
	.loc 1 7288 0
	movq	-472(%rbp), %rcx	# arg2, tmp4037
	movq	-696(%rbp), %rdx	# arg1, tmp4038
	movq	-456(%rbp), %rax	# type, tmp4039
	movq	%rax, %rsi	# tmp4039,
	movl	$78, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	.loc 1 7287 0
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1526:
	.loc 1 7289 0
	jmp	.L1480	#
.L1521:
	.loc 1 7293 0
	movq	-456(%rbp), %rax	# type, tmp4040
	movq	104(%rax), %rcx	# type_152->type.minval, D.21080
	movq	-472(%rbp), %rax	# arg2, tmp4041
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4041,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	jne	.L1527	#,
	.loc 1 7294 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-472(%rbp), %rax	# arg2, tmp4042
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp4042,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4043
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1527	#,
	.loc 1 7298 0
	movq	-472(%rbp), %rcx	# arg2, tmp4044
	movq	-696(%rbp), %rdx	# arg1, tmp4045
	movq	-456(%rbp), %rax	# type, tmp4046
	movq	%rax, %rsi	# tmp4046,
	movl	$78, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	.loc 1 7297 0
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1527:
	.loc 1 7299 0
	jmp	.L1480	#
.L1522:
	.loc 1 7303 0
	movq	-456(%rbp), %rax	# type, tmp4047
	movq	104(%rax), %rcx	# type_152->type.minval, D.21080
	movq	-472(%rbp), %rax	# arg2, tmp4048
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4048,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	jne	.L1528	#,
	.loc 1 7304 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-472(%rbp), %rax	# arg2, tmp4049
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp4049,
	movl	$60, %edi	#,
	call	const_binop	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4050
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1528	#,
	.loc 1 7308 0
	movq	-472(%rbp), %rcx	# arg2, tmp4051
	movq	-696(%rbp), %rdx	# arg1, tmp4052
	movq	-456(%rbp), %rax	# type, tmp4053
	movq	%rax, %rsi	# tmp4053,
	movl	$79, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	.loc 1 7307 0
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1528:
	.loc 1 7309 0
	jmp	.L1480	#
.L1523:
	.loc 1 7313 0
	movq	-456(%rbp), %rax	# type, tmp4054
	movq	112(%rax), %rcx	# type_152->type.maxval, D.21080
	movq	-472(%rbp), %rax	# arg2, tmp4055
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4055,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	jne	.L1529	#,
	.loc 1 7314 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21080
	movq	-472(%rbp), %rax	# arg2, tmp4056
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp4056,
	movl	$59, %edi	#,
	call	const_binop	#
	movq	%rax, %rcx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4057
	movq	40(%rax), %rax	# arg0_28->exp.operands, D.21080
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1529	#,
	.loc 1 7318 0
	movq	-472(%rbp), %rcx	# arg2, tmp4058
	movq	-696(%rbp), %rdx	# arg1, tmp4059
	movq	-456(%rbp), %rax	# type, tmp4060
	movq	%rax, %rsi	# tmp4060,
	movl	$79, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	.loc 1 7317 0
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1529:
	.loc 1 7319 0
	jmp	.L1480	#
.L1518:
	.loc 1 7323 0
	movl	$__FUNCTION__.13261, %edx	#,
	movl	$7323, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1561:
	.loc 1 7321 0
	nop
.L1480:
.LBE54:
	.loc 1 7329 0
	movq	-696(%rbp), %rax	# arg1, tmp4061
	movzbl	17(%rax), %eax	# *arg1_45, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1530	#,
	.loc 1 7329 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp4062
	movzbl	16(%rax), %eax	# arg1_45->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21084
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$100, %al	#, D.21077
	je	.L1530	#,
	.loc 1 7330 0 is_stmt 1
	movq	-696(%rbp), %rax	# arg1, tmp4064
	movzbl	16(%rax), %eax	# arg1_45->common.code, D.21076
	cmpb	$118, %al	#, D.21076
	jne	.L1531	#,
.L1530:
	.loc 1 7331 0
	movq	-720(%rbp), %rax	# t, tmp4065
	movq	48(%rax), %rax	# t_11->exp.operands, D.21080
	movzbl	17(%rax), %eax	# *_2383, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1531	#,
	.loc 1 7332 0
	movq	-720(%rbp), %rax	# t, tmp4066
	movq	48(%rax), %rax	# t_11->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _2386->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21084
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	cmpb	$100, %al	#, D.21077
	je	.L1531	#,
	.loc 1 7333 0
	movq	-720(%rbp), %rax	# t, tmp4068
	movq	48(%rax), %rax	# t_11->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _2390->common.code, D.21076
	.loc 1 7331 0
	cmpb	$118, %al	#, D.21076
	je	.L1531	#,
	.loc 1 7338 0
	movq	-704(%rbp), %rax	# arg0, tmp4069
	movq	%rax, %rdi	# tmp4069,
	call	invert_truthvalue	#
	movq	%rax, -448(%rbp)	# tmp4070, tem
	.loc 1 7340 0
	movq	-448(%rbp), %rax	# tem, tmp4071
	movzbl	16(%rax), %eax	# tem_2392->common.code, D.21076
	cmpb	$96, %al	#, D.21076
	je	.L1531	#,
	.loc 1 7342 0
	movq	-720(%rbp), %rax	# t, tmp4072
	movq	40(%rax), %rdi	# t_11->exp.operands, D.21080
	movq	-720(%rbp), %rax	# t, tmp4073
	movq	48(%rax), %rcx	# t_11->exp.operands, D.21080
	movq	-448(%rbp), %rdx	# tem, tmp4074
	movq	-456(%rbp), %rsi	# type, tmp4075
	movl	-892(%rbp), %eax	# code, tmp4076
	movq	%rdi, %r8	# D.21080,
	movl	%eax, %edi	# tmp4076,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -720(%rbp)	# tmp4077, t
	.loc 1 7344 0
	movq	-448(%rbp), %rax	# tem, tmp4078
	movq	%rax, -704(%rbp)	# tmp4078, arg0
	.loc 1 7346 0
	movq	-720(%rbp), %rax	# t, tmp4079
	movq	40(%rax), %rax	# t_2396->exp.operands, tmp4080
	movq	%rax, -696(%rbp)	# tmp4080, arg1
	.loc 1 7347 0
	jmp	.L1532	#
.L1534:
	.loc 1 7347 0 is_stmt 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp4081
	movq	32(%rax), %rax	# arg1_46->exp.operands, tmp4082
	movq	%rax, -696(%rbp)	# tmp4082, arg1
.L1532:
	movq	-696(%rbp), %rax	# arg1, tmp4083
	movzbl	16(%rax), %eax	# arg1_46->common.code, D.21076
	cmpb	$115, %al	#, D.21076
	je	.L1533	#,
	.loc 1 7347 0 discriminator 3
	movq	-696(%rbp), %rax	# arg1, tmp4084
	movzbl	16(%rax), %eax	# arg1_46->common.code, D.21076
	cmpb	$114, %al	#, D.21076
	je	.L1533	#,
	.loc 1 7347 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp4085
	movzbl	16(%rax), %eax	# arg1_46->common.code, D.21076
	cmpb	$116, %al	#, D.21076
	jne	.L1531	#,
.L1533:
	.loc 1 7347 0 discriminator 2
	movq	-696(%rbp), %rax	# arg1, tmp4086
	movq	32(%rax), %rdx	# arg1_46->exp.operands, D.21080
	movq	global_trees(%rip), %rax	# global_trees, D.21080
	cmpq	%rax, %rdx	# D.21080, D.21080
	je	.L1531	#,
	.loc 1 7347 0 discriminator 1
	movq	-696(%rbp), %rax	# arg1, tmp4087
	movq	8(%rax), %rax	# arg1_46->common.type, D.21080
	movzbl	61(%rax), %eax	# *_2404, tmp4090
	shrb	%al	# D.21081
	movl	%eax, %edx	# D.21081, D.21081
	movq	-696(%rbp), %rax	# arg1, tmp4091
	movq	32(%rax), %rax	# arg1_46->exp.operands, D.21080
	movq	8(%rax), %rax	# _2406->common.type, D.21080
	movzbl	61(%rax), %eax	# *_2407, tmp4094
	shrb	%al	# D.21081
	cmpb	%al, %dl	# D.21081, D.21081
	je	.L1534	#,
.L1531:
	.loc 1 7352 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, tmp4095
	movq	40(%rax), %rax	# t_12->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_onep	#
	testl	%eax, %eax	# D.21084
	je	.L1535	#,
	.loc 1 7353 0
	movq	-720(%rbp), %rax	# t, tmp4096
	movq	48(%rax), %rax	# t_12->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1535	#,
	.loc 1 7358 0
	movq	-704(%rbp), %rax	# arg0, tmp4097
	movq	8(%rax), %rax	# arg0_29->common.type, D.21080
	cmpq	-456(%rbp), %rax	# type, D.21080
	jne	.L1535	#,
	.loc 1 7359 0
	movq	-704(%rbp), %rax	# arg0, tmp4098
	movq	%rax, %rdi	# tmp4098,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1535:
	.loc 1 7364 0
	movq	-720(%rbp), %rax	# t, tmp4099
	movq	48(%rax), %rax	# t_12->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1536	#,
	.loc 1 7365 0
	movq	-704(%rbp), %rax	# arg0, tmp4100
	movzbl	16(%rax), %eax	# arg0_29->common.code, D.21076
	cmpb	$102, %al	#, D.21076
	jne	.L1536	#,
	.loc 1 7366 0
	movq	-704(%rbp), %rax	# arg0, tmp4101
	movq	40(%rax), %rax	# arg0_29->exp.operands, D.21080
	movq	%rax, %rdi	# D.21080,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1536	#,
	.loc 1 7367 0
	movq	-696(%rbp), %rax	# arg1, tmp4102
	movq	%rax, %rdi	# tmp4102,
	call	integer_pow2p	#
	testl	%eax, %eax	# D.21084
	je	.L1536	#,
	.loc 1 7368 0
	movq	-704(%rbp), %rax	# arg0, tmp4103
	movq	32(%rax), %rax	# arg0_29->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _2422->common.code, D.21076
	cmpb	$88, %al	#, D.21076
	jne	.L1536	#,
	.loc 1 7369 0
	movq	-704(%rbp), %rax	# arg0, tmp4104
	movq	32(%rax), %rax	# arg0_29->exp.operands, D.21080
	movq	40(%rax), %rax	# _2424->exp.operands, D.21080
	movq	-696(%rbp), %rcx	# arg1, tmp4105
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp4105,
	movq	%rax, %rdi	# D.21080,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21084
	je	.L1536	#,
	.loc 1 7371 0
	movq	-704(%rbp), %rax	# arg0, tmp4106
	movq	32(%rax), %rdx	# arg0_29->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp4107
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4107,
	call	convert	#
	movq	%rax, %rdi	# D.21080,
	call	pedantic_non_lvalue	#
	jmp	.L937	#
.L1536:
	.loc 1 7373 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1009:
	.loc 1 7378 0
	movq	-704(%rbp), %rax	# arg0, tmp4108
	movzbl	17(%rax), %eax	# *arg0_25, D.21076
	andl	$1, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1537	#,
	.loc 1 7378 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.600
	testl	%eax, %eax	# pedantic.600
	je	.L1538	#,
.L1537:
	.loc 1 7379 0 is_stmt 1
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1538:
	.loc 1 7381 0
	movq	-696(%rbp), %rax	# arg1, tmp4109
	movq	%rax, %rdi	# tmp4109,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21084
	je	.L1539	#,
	.loc 1 7382 0
	movq	-696(%rbp), %rdx	# arg1, tmp4110
	movq	-456(%rbp), %rax	# type, tmp4111
	movq	%rax, %rsi	# tmp4111,
	movl	$115, %edi	#,
	call	build1	#
	jmp	.L937	#
.L1539:
	.loc 1 7383 0
	movq	-696(%rbp), %rdx	# arg1, tmp4112
	movq	-456(%rbp), %rax	# type, tmp4113
	movq	%rdx, %rsi	# tmp4112,
	movq	%rax, %rdi	# tmp4113,
	call	convert	#
	jmp	.L937	#
.L1039:
	.loc 1 7386 0
	cmpl	$0, -884(%rbp)	#, wins
	je	.L1540	#,
	.loc 1 7387 0
	movq	-696(%rbp), %rdx	# arg1, tmp4114
	movq	-704(%rbp), %rcx	# arg0, tmp4115
	movq	-456(%rbp), %rax	# type, tmp4116
	movq	%rcx, %rsi	# tmp4115,
	movq	%rax, %rdi	# tmp4116,
	call	build_complex	#
	jmp	.L937	#
.L1540:
	.loc 1 7388 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1041:
	.loc 1 7391 0
	movq	-704(%rbp), %rax	# arg0, tmp4117
	movq	8(%rax), %rax	# arg0_25->common.type, D.21080
	movzbl	16(%rax), %eax	# _2440->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	je	.L1541	#,
	.loc 1 7392 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1541:
	.loc 1 7393 0
	movq	-704(%rbp), %rax	# arg0, tmp4118
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$125, %al	#, D.21076
	jne	.L1542	#,
	.loc 1 7394 0
	movq	-704(%rbp), %rax	# arg0, tmp4119
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4120
	movq	32(%rax), %rcx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp4121
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4121,
	call	omit_one_operand	#
	jmp	.L937	#
.L1542:
	.loc 1 7396 0
	movq	-704(%rbp), %rax	# arg0, tmp4122
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$27, %al	#, D.21076
	jne	.L1543	#,
	.loc 1 7397 0
	movq	-704(%rbp), %rax	# arg0, tmp4123
	movq	32(%rax), %rax	# arg0_25->complex.real, D.21075
	jmp	.L937	#
.L1543:
	.loc 1 7398 0
	movq	-704(%rbp), %rax	# arg0, tmp4124
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$59, %al	#, D.21076
	je	.L1544	#,
	.loc 1 7398 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp4125
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$60, %al	#, D.21076
	jne	.L1545	#,
.L1544:
	.loc 1 7399 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp4126
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp4127
	movq	%rax, %rsi	# tmp4127,
	movl	$127, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rbx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4128
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp4129
	movq	%rax, %rsi	# tmp4129,
	movl	$127, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4130
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movq	-456(%rbp), %rsi	# type, tmp4131
	movq	%rbx, %rcx	# D.21080,
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1545:
	.loc 1 7404 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1042:
	.loc 1 7407 0
	movq	-704(%rbp), %rax	# arg0, tmp4132
	movq	8(%rax), %rax	# arg0_25->common.type, D.21080
	movzbl	16(%rax), %eax	# _2462->common.code, D.21076
	cmpb	$8, %al	#, D.21076
	je	.L1546	#,
	.loc 1 7408 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21080
	movq	-456(%rbp), %rax	# type, tmp4133
	movq	%rdx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4133,
	call	convert	#
	jmp	.L937	#
.L1546:
	.loc 1 7409 0
	movq	-704(%rbp), %rax	# arg0, tmp4134
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$125, %al	#, D.21076
	jne	.L1547	#,
	.loc 1 7410 0
	movq	-704(%rbp), %rax	# arg0, tmp4135
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4136
	movq	40(%rax), %rcx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp4137
	movq	%rcx, %rsi	# D.21080,
	movq	%rax, %rdi	# tmp4137,
	call	omit_one_operand	#
	jmp	.L937	#
.L1547:
	.loc 1 7412 0
	movq	-704(%rbp), %rax	# arg0, tmp4138
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$27, %al	#, D.21076
	jne	.L1548	#,
	.loc 1 7413 0
	movq	-704(%rbp), %rax	# arg0, tmp4139
	movq	40(%rax), %rax	# arg0_25->complex.imag, D.21075
	jmp	.L937	#
.L1548:
	.loc 1 7414 0
	movq	-704(%rbp), %rax	# arg0, tmp4140
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$59, %al	#, D.21076
	je	.L1549	#,
	.loc 1 7414 0 is_stmt 0 discriminator 1
	movq	-704(%rbp), %rax	# arg0, tmp4141
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	cmpb	$60, %al	#, D.21076
	jne	.L1550	#,
.L1549:
	.loc 1 7415 0 is_stmt 1
	movq	-704(%rbp), %rax	# arg0, tmp4142
	movq	40(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp4143
	movq	%rax, %rsi	# tmp4143,
	movl	$128, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rbx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4144
	movq	32(%rax), %rdx	# arg0_25->exp.operands, D.21080
	movq	-456(%rbp), %rax	# type, tmp4145
	movq	%rax, %rsi	# tmp4145,
	movl	$128, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-704(%rbp), %rax	# arg0, tmp4146
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, D.21083
	movq	-456(%rbp), %rsi	# type, tmp4147
	movq	%rbx, %rcx	# D.21080,
	movl	%eax, %edi	# D.21083,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1550:
	.loc 1 7420 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1012:
	.loc 1 7425 0
	movq	-704(%rbp), %rax	# arg0, tmp4148
	movq	%rax, %rdi	# tmp4148,
	call	has_cleanups	#
	testl	%eax, %eax	# D.21084
	jne	.L1551	#,
	.loc 1 7426 0
	movq	-720(%rbp), %rax	# t, tmp4149
	movq	32(%rax), %rax	# t_150->exp.operands, D.21075
	jmp	.L937	#
.L1551:
.LBB56:
	.loc 1 7429 0
	movq	-704(%rbp), %rax	# arg0, tmp4150
	movzbl	16(%rax), %eax	# arg0_25->common.code, D.21076
	movzbl	%al, %eax	# D.21076, tmp4151
	movl	%eax, -744(%rbp)	# tmp4151, code0
	.loc 1 7430 0
	movl	-744(%rbp), %eax	# code0, code0.601
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21077
	movsbl	%al, %eax	# D.21077, tmp4153
	movl	%eax, -740(%rbp)	# tmp4153, kind0
	.loc 1 7431 0
	movq	-704(%rbp), %rax	# arg0, tmp4154
	movq	32(%rax), %rax	# arg0_25->exp.operands, tmp4155
	movq	%rax, -168(%rbp)	# tmp4155, arg00
	.loc 1 7434 0
	cmpl	$49, -740(%rbp)	#, kind0
	je	.L1552	#,
	.loc 1 7434 0 is_stmt 0 discriminator 1
	cmpl	$96, -744(%rbp)	#, code0
	jne	.L1553	#,
.L1552:
	.loc 1 7435 0 is_stmt 1
	movq	-168(%rbp), %rax	# arg00, tmp4156
	movq	8(%rax), %rax	# arg00_2492->common.type, D.21080
	movq	-168(%rbp), %rdx	# arg00, tmp4157
	movq	%rax, %rsi	# D.21080,
	movl	$56, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-456(%rbp), %rcx	# type, tmp4158
	movl	-744(%rbp), %eax	# code0, tmp4159
	movq	%rcx, %rsi	# tmp4158,
	movl	%eax, %edi	# tmp4159,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1553:
	.loc 1 7439 0
	cmpl	$60, -740(%rbp)	#, kind0
	je	.L1554	#,
	.loc 1 7439 0 is_stmt 0 discriminator 1
	cmpl	$50, -740(%rbp)	#, kind0
	je	.L1554	#,
	.loc 1 7440 0 is_stmt 1
	cmpl	$91, -744(%rbp)	#, code0
	je	.L1554	#,
	.loc 1 7440 0 is_stmt 0 discriminator 1
	cmpl	$92, -744(%rbp)	#, code0
	je	.L1554	#,
	.loc 1 7441 0 is_stmt 1
	cmpl	$93, -744(%rbp)	#, code0
	je	.L1554	#,
	.loc 1 7441 0 is_stmt 0 discriminator 1
	cmpl	$94, -744(%rbp)	#, code0
	je	.L1554	#,
	.loc 1 7442 0 is_stmt 1
	cmpl	$95, -744(%rbp)	#, code0
	jne	.L1555	#,
.L1554:
	.loc 1 7444 0
	movq	-704(%rbp), %rax	# arg0, tmp4160
	movq	40(%rax), %rax	# arg0_25->exp.operands, tmp4161
	movq	%rax, -160(%rbp)	# tmp4161, arg01
	.loc 1 7446 0
	movq	-168(%rbp), %rax	# arg00, tmp4162
	movzbl	17(%rax), %eax	# *arg00_2492, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	jne	.L1556	#,
	.loc 1 7447 0
	cmpl	$91, -744(%rbp)	#, code0
	je	.L1557	#,
	.loc 1 7447 0 is_stmt 0 discriminator 1
	cmpl	$92, -744(%rbp)	#, code0
	jne	.L1558	#,
.L1557:
	.loc 1 7448 0 is_stmt 1
	movq	-168(%rbp), %rax	# arg00, tmp4163
	movq	%rax, %rdi	# tmp4163,
	call	has_cleanups	#
	testl	%eax, %eax	# D.21084
	jne	.L1558	#,
.L1556:
	.loc 1 7449 0
	movq	-160(%rbp), %rax	# arg01, tmp4164
	movq	8(%rax), %rax	# arg01_2493->common.type, D.21080
	movq	-160(%rbp), %rdx	# arg01, tmp4165
	movq	%rax, %rsi	# D.21080,
	movl	$56, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rcx	#, D.21080
	movq	-168(%rbp), %rdx	# arg00, tmp4166
	movq	-456(%rbp), %rsi	# type, tmp4167
	movl	-744(%rbp), %eax	# code0, tmp4168
	movl	%eax, %edi	# tmp4168,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1558:
	.loc 1 7453 0
	movq	-160(%rbp), %rax	# arg01, tmp4169
	movzbl	17(%rax), %eax	# *arg01_2493, D.21076
	andl	$2, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1555	#,
	.loc 1 7454 0
	movq	-168(%rbp), %rax	# arg00, tmp4170
	movq	8(%rax), %rax	# arg00_2492->common.type, D.21080
	movq	-168(%rbp), %rdx	# arg00, tmp4171
	movq	%rax, %rsi	# D.21080,
	movl	$56, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	movq	%rax, %rdx	#, D.21080
	movq	-160(%rbp), %rcx	# arg01, tmp4172
	movq	-456(%rbp), %rsi	# type, tmp4173
	movl	-744(%rbp), %eax	# code0, tmp4174
	movl	%eax, %edi	# tmp4174,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21080,
	call	fold	#
	jmp	.L937	#
.L1555:
	.loc 1 7460 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1011:
.LBE56:
	.loc 1 7465 0
	movq	-904(%rbp), %rax	# expr, tmp4175
	movq	32(%rax), %rax	# expr_149(D)->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _2515->common.code, D.21076
	cmpb	$121, %al	#, D.21076
	jne	.L1559	#,
	.loc 1 7466 0
	movq	-904(%rbp), %rax	# expr, tmp4176
	movq	32(%rax), %rax	# expr_149(D)->exp.operands, D.21080
	movq	32(%rax), %rax	# _2517->exp.operands, D.21080
	movzbl	16(%rax), %eax	# _2518->common.code, D.21076
	cmpb	$30, %al	#, D.21076
	jne	.L1559	#,
	.loc 1 7468 0
	movq	-904(%rbp), %rax	# expr, tmp4177
	movq	32(%rax), %rax	# expr_149(D)->exp.operands, D.21080
	movq	32(%rax), %rax	# _2520->exp.operands, D.21080
	movzbl	51(%rax), %eax	# *_2521, D.21076
	andl	$96, %eax	#, D.21076
	testb	%al, %al	# D.21076
	je	.L1559	#,
.LBB57:
	.loc 1 7470 0
	movq	-904(%rbp), %rax	# expr, tmp4178
	movq	%rax, %rdi	# tmp4178,
	call	fold_builtin	#
	movq	%rax, -152(%rbp)	# tmp4179, tmp
	.loc 1 7471 0
	cmpq	$0, -152(%rbp)	#, tmp
	je	.L1559	#,
	.loc 1 7472 0
	movq	-152(%rbp), %rax	# tmp, D.21075
	jmp	.L937	#
.L1559:
.LBE57:
	.loc 1 7474 0
	movq	-720(%rbp), %rax	# t, D.21075
	jmp	.L937	#
.L1004:
	.loc 1 7477 0
	movq	-720(%rbp), %rax	# t, D.21075
.L937:
	.loc 1 7479 0
	addq	$944, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	fold, .-fold
	.type	multiple_of_p, @function
multiple_of_p:
.LFB59:
	.loc 1 7526 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	movq	%rsi, -32(%rbp)	# top, top
	movq	%rdx, -40(%rbp)	# bottom, bottom
	.loc 1 7527 0
	movq	-40(%rbp), %rcx	# bottom, tmp103
	movq	-32(%rbp), %rax	# top, tmp104
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	operand_equal_p	#
	testl	%eax, %eax	# D.21104
	je	.L1563	#,
	.loc 1 7528 0
	movl	$1, %eax	#, D.21104
	jmp	.L1564	#
.L1563:
	.loc 1 7530 0
	movq	-24(%rbp), %rax	# type, tmp105
	movzbl	16(%rax), %eax	# type_8(D)->common.code, D.21105
	cmpb	$6, %al	#, D.21105
	je	.L1565	#,
	.loc 1 7531 0
	movl	$0, %eax	#, D.21104
	jmp	.L1564	#
.L1565:
	.loc 1 7533 0
	movq	-32(%rbp), %rax	# top, tmp106
	movzbl	16(%rax), %eax	# top_4(D)->common.code, D.21105
	movzbl	%al, %eax	# D.21105, D.21106
	cmpl	$61, %eax	#, D.21106
	je	.L1567	#,
	cmpl	$61, %eax	#, D.21106
	ja	.L1568	#,
	cmpl	$25, %eax	#, D.21106
	je	.L1569	#,
	cmpl	$25, %eax	#, D.21106
	jb	.L1566	#,
	cmpl	$59, %eax	#, D.21106
	jb	.L1566	#,
	jmp	.L1583	#
.L1568:
	cmpl	$115, %eax	#, D.21106
	je	.L1571	#,
	cmpl	$118, %eax	#, D.21106
	je	.L1572	#,
	cmpl	$82, %eax	#, D.21106
	je	.L1573	#,
	jmp	.L1566	#
.L1567:
	.loc 1 7536 0
	movq	-32(%rbp), %rax	# top, tmp107
	movq	32(%rax), %rcx	# top_4(D)->exp.operands, D.21107
	movq	-40(%rbp), %rdx	# bottom, tmp108
	movq	-24(%rbp), %rax	# type, tmp109
	movq	%rcx, %rsi	# D.21107,
	movq	%rax, %rdi	# tmp109,
	call	multiple_of_p	#
	.loc 1 7537 0
	testl	%eax, %eax	# D.21104
	jne	.L1574	#,
	.loc 1 7537 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# top, tmp110
	movq	40(%rax), %rcx	# top_4(D)->exp.operands, D.21107
	movq	-40(%rbp), %rdx	# bottom, tmp111
	movq	-24(%rbp), %rax	# type, tmp112
	movq	%rcx, %rsi	# D.21107,
	movq	%rax, %rdi	# tmp112,
	call	multiple_of_p	#
	testl	%eax, %eax	# D.21104
	je	.L1575	#,
.L1574:
	.loc 1 7537 0 discriminator 1
	movl	$1, %eax	#, iftmp.602
	jmp	.L1576	#
.L1575:
	.loc 1 7537 0 discriminator 3
	movl	$0, %eax	#, iftmp.602
.L1576:
	.loc 1 7536 0 is_stmt 1
	jmp	.L1564	#
.L1583:
	.loc 1 7541 0
	movq	-32(%rbp), %rax	# top, tmp113
	movq	32(%rax), %rcx	# top_4(D)->exp.operands, D.21107
	movq	-40(%rbp), %rdx	# bottom, tmp114
	movq	-24(%rbp), %rax	# type, tmp115
	movq	%rcx, %rsi	# D.21107,
	movq	%rax, %rdi	# tmp115,
	call	multiple_of_p	#
	.loc 1 7542 0
	testl	%eax, %eax	# D.21104
	je	.L1577	#,
	.loc 1 7542 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# top, tmp116
	movq	40(%rax), %rcx	# top_4(D)->exp.operands, D.21107
	movq	-40(%rbp), %rdx	# bottom, tmp117
	movq	-24(%rbp), %rax	# type, tmp118
	movq	%rcx, %rsi	# D.21107,
	movq	%rax, %rdi	# tmp118,
	call	multiple_of_p	#
	testl	%eax, %eax	# D.21104
	je	.L1577	#,
	.loc 1 7542 0 discriminator 3
	movl	$1, %eax	#, iftmp.603
	jmp	.L1578	#
.L1577:
	.loc 1 7542 0 discriminator 2
	movl	$0, %eax	#, iftmp.603
.L1578:
	.loc 1 7541 0 is_stmt 1
	jmp	.L1564	#
.L1573:
	.loc 1 7545 0
	movq	-32(%rbp), %rax	# top, tmp119
	movq	40(%rax), %rax	# top_4(D)->exp.operands, D.21107
	movzbl	16(%rax), %eax	# _27->common.code, D.21105
	cmpb	$25, %al	#, D.21105
	jne	.L1579	#,
.LBB58:
	.loc 1 7549 0
	movq	-32(%rbp), %rax	# top, tmp120
	movq	40(%rax), %rax	# top_4(D)->exp.operands, tmp121
	movq	%rax, -16(%rbp)	# tmp121, op1
	.loc 1 7552 0
	movq	global_trees+128(%rip), %rax	# global_trees, D.21107
	movq	8(%rax), %rax	# _30->common.type, D.21107
	movzwl	60(%rax), %eax	# *_31, tmp124
	andw	$511, %ax	#, D.21108
	.loc 1 7553 0
	movzwl	%ax, %edx	# D.21108, D.21109
	movq	-16(%rbp), %rax	# op1, tmp125
	movq	32(%rax), %rax	# op1_29->int_cst.int_cst.low, D.21109
	.loc 1 7552 0
	cmpq	%rax, %rdx	# D.21109, D.21109
	jbe	.L1579	#,
	.loc 1 7554 0
	movq	-16(%rbp), %rax	# op1, tmp126
	movq	40(%rax), %rax	# op1_29->int_cst.int_cst.high, D.21110
	testq	%rax, %rax	# D.21110
	jne	.L1579	#,
	.loc 1 7555 0
	movq	global_trees+128(%rip), %rax	# global_trees, D.21107
	movq	-16(%rbp), %rdx	# op1, tmp127
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# D.21107,
	movl	$82, %edi	#,
	call	const_binop	#
	movq	%rax, %rdx	#, D.21107
	movq	-24(%rbp), %rax	# type, tmp128
	movq	%rdx, %rsi	# D.21107,
	movq	%rax, %rdi	# tmp128,
	call	convert	#
	movq	%rax, -8(%rbp)	# tmp129, t1
	cmpq	$0, -8(%rbp)	#, t1
	je	.L1579	#,
	.loc 1 7558 0
	movq	-8(%rbp), %rax	# t1, tmp130
	movzbl	18(%rax), %eax	# *t1_38, D.21105
	andl	$8, %eax	#, D.21105
	testb	%al, %al	# D.21105
	jne	.L1579	#,
	.loc 1 7559 0
	movq	-40(%rbp), %rdx	# bottom, tmp131
	movq	-8(%rbp), %rcx	# t1, tmp132
	movq	-24(%rbp), %rax	# type, tmp133
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	multiple_of_p	#
	jmp	.L1564	#
.L1579:
.LBE58:
	.loc 1 7561 0
	movl	$0, %eax	#, D.21104
	jmp	.L1564	#
.L1571:
	.loc 1 7565 0
	movq	-32(%rbp), %rax	# top, tmp134
	movq	32(%rax), %rax	# top_4(D)->exp.operands, D.21107
	movq	8(%rax), %rax	# _43->common.type, D.21107
	movzbl	16(%rax), %eax	# _44->common.code, D.21105
	cmpb	$6, %al	#, D.21105
	jne	.L1580	#,
	.loc 1 7566 0
	movq	-24(%rbp), %rax	# type, tmp135
	movzwl	60(%rax), %eax	# *type_8(D), tmp138
	andw	$511, %ax	#, D.21108
	.loc 1 7567 0
	movzwl	%ax, %edx	# D.21108, D.21104
	movq	-32(%rbp), %rax	# top, tmp139
	movq	32(%rax), %rax	# top_4(D)->exp.operands, D.21107
	movq	8(%rax), %rax	# _48->common.type, D.21107
	movzwl	60(%rax), %eax	# *_49, tmp142
	andw	$511, %ax	#, D.21108
	movzwl	%ax, %eax	# D.21108, D.21104
	.loc 1 7566 0
	cmpl	%eax, %edx	# D.21104, D.21104
	jge	.L1572	#,
.L1580:
	.loc 1 7568 0
	movl	$0, %eax	#, D.21104
	jmp	.L1564	#
.L1572:
	.loc 1 7573 0
	movq	-32(%rbp), %rax	# top, tmp143
	movq	32(%rax), %rcx	# top_4(D)->exp.operands, D.21107
	movq	-40(%rbp), %rdx	# bottom, tmp144
	movq	-24(%rbp), %rax	# type, tmp145
	movq	%rcx, %rsi	# D.21107,
	movq	%rax, %rdi	# tmp145,
	call	multiple_of_p	#
	jmp	.L1564	#
.L1569:
	.loc 1 7576 0
	movq	-40(%rbp), %rax	# bottom, tmp146
	movzbl	16(%rax), %eax	# bottom_5(D)->common.code, D.21105
	cmpb	$25, %al	#, D.21105
	jne	.L1581	#,
	.loc 1 7577 0
	movq	-24(%rbp), %rax	# type, tmp147
	movzbl	17(%rax), %eax	# *type_8(D), D.21105
	andl	$32, %eax	#, D.21105
	testb	%al, %al	# D.21105
	je	.L1582	#,
	.loc 1 7578 0
	movq	-32(%rbp), %rax	# top, tmp148
	movq	%rax, %rdi	# tmp148,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21104
	js	.L1581	#,
	.loc 1 7579 0
	movq	-40(%rbp), %rax	# bottom, tmp149
	movq	%rax, %rdi	# tmp149,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21104
	jns	.L1582	#,
.L1581:
	.loc 1 7580 0
	movl	$0, %eax	#, D.21104
	jmp	.L1564	#
.L1582:
	.loc 1 7581 0
	movq	-40(%rbp), %rdx	# bottom, tmp150
	movq	-32(%rbp), %rax	# top, tmp151
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp151,
	movl	$66, %edi	#,
	call	const_binop	#
	movq	%rax, %rdi	# D.21107,
	call	integer_zerop	#
	jmp	.L1564	#
.L1566:
	.loc 1 7585 0
	movl	$0, %eax	#, D.21104
.L1564:
	.loc 1 7587 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	multiple_of_p, .-multiple_of_p
	.globl	tree_expr_nonnegative_p
	.type	tree_expr_nonnegative_p, @function
tree_expr_nonnegative_p:
.LFB60:
	.loc 1 7594 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# t, t
	.loc 1 7595 0
	movq	-8(%rbp), %rax	# t, tmp96
	movzbl	16(%rax), %eax	# t_6(D)->common.code, D.21113
	movzbl	%al, %eax	# D.21113, D.21114
	subl	$25, %eax	#, tmp97
	cmpl	$95, %eax	#, tmp97
	ja	.L1585	#,
	movl	%eax, %eax	# tmp97, tmp98
	movq	.L1587(,%rax,8), %rax	#, tmp99
	jmp	*%rax	# tmp99
	.section	.rodata
	.align 8
	.align 4
.L1587:
	.quad	.L1586
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1588
	.quad	.L1589
	.quad	.L1585
	.quad	.L1585
	.quad	.L1590
	.quad	.L1591
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1592
	.quad	.L1592
	.quad	.L1592
	.quad	.L1592
	.quad	.L1593
	.quad	.L1593
	.quad	.L1593
	.quad	.L1593
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1594
	.quad	.L1595
	.quad	.L1596
	.quad	.L1596
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1585
	.quad	.L1597
	.quad	.L1585
	.quad	.L1598
	.quad	.L1585
	.quad	.L1599
	.text
.L1596:
	.loc 1 7599 0
	movl	$1, %eax	#, D.21112
	jmp	.L1600	#
.L1586:
	.loc 1 7601 0
	movq	-8(%rbp), %rax	# t, tmp100
	movq	%rax, %rdi	# tmp100,
	call	tree_int_cst_sgn	#
	notl	%eax	# tmp101
	shrl	$31, %eax	#, tmp102
	movzbl	%al, %eax	# D.21115, D.21112
	jmp	.L1600	#
.L1592:
	.loc 1 7606 0
	movq	-8(%rbp), %rax	# t, tmp103
	movq	32(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	.loc 1 7607 0
	testl	%eax, %eax	# D.21112
	je	.L1601	#,
	.loc 1 7607 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t, tmp104
	movq	40(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	testl	%eax, %eax	# D.21112
	je	.L1601	#,
	.loc 1 7607 0 discriminator 3
	movl	$1, %eax	#, iftmp.604
	jmp	.L1602	#
.L1601:
	.loc 1 7607 0 discriminator 2
	movl	$0, %eax	#, iftmp.604
.L1602:
	.loc 1 7606 0 is_stmt 1
	jmp	.L1600	#
.L1593:
	.loc 1 7612 0
	movq	-8(%rbp), %rax	# t, tmp105
	movq	32(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	jmp	.L1600	#
.L1590:
	.loc 1 7614 0
	movq	-8(%rbp), %rax	# t, tmp106
	movq	40(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	.loc 1 7615 0
	testl	%eax, %eax	# D.21112
	je	.L1603	#,
	.loc 1 7615 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t, tmp107
	movq	48(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	testl	%eax, %eax	# D.21112
	je	.L1603	#,
	.loc 1 7615 0 discriminator 3
	movl	$1, %eax	#, iftmp.605
	jmp	.L1604	#
.L1603:
	.loc 1 7615 0 discriminator 2
	movl	$0, %eax	#, iftmp.605
.L1604:
	.loc 1 7614 0 is_stmt 1
	jmp	.L1600	#
.L1588:
	.loc 1 7617 0
	movq	-8(%rbp), %rax	# t, tmp108
	movq	40(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	jmp	.L1600	#
.L1594:
	.loc 1 7619 0
	movq	-8(%rbp), %rax	# t, tmp109
	movq	32(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	.loc 1 7620 0
	testl	%eax, %eax	# D.21112
	je	.L1605	#,
	.loc 1 7620 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t, tmp110
	movq	40(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	testl	%eax, %eax	# D.21112
	je	.L1605	#,
	.loc 1 7620 0 discriminator 3
	movl	$1, %eax	#, iftmp.606
	jmp	.L1606	#
.L1605:
	.loc 1 7620 0 discriminator 2
	movl	$0, %eax	#, iftmp.606
.L1606:
	.loc 1 7619 0 is_stmt 1
	jmp	.L1600	#
.L1595:
	.loc 1 7622 0
	movq	-8(%rbp), %rax	# t, tmp111
	movq	32(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	.loc 1 7623 0
	testl	%eax, %eax	# D.21112
	jne	.L1607	#,
	.loc 1 7623 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# t, tmp112
	movq	40(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	testl	%eax, %eax	# D.21112
	je	.L1608	#,
.L1607:
	.loc 1 7623 0 discriminator 1
	movl	$1, %eax	#, iftmp.607
	jmp	.L1609	#
.L1608:
	.loc 1 7623 0 discriminator 3
	movl	$0, %eax	#, iftmp.607
.L1609:
	.loc 1 7622 0 is_stmt 1
	jmp	.L1600	#
.L1589:
	.loc 1 7625 0
	movq	-8(%rbp), %rax	# t, tmp113
	movq	40(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	jmp	.L1600	#
.L1591:
	.loc 1 7627 0
	movq	-8(%rbp), %rax	# t, tmp114
	movq	40(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	jmp	.L1600	#
.L1598:
	.loc 1 7629 0
	movq	-8(%rbp), %rax	# t, tmp115
	movq	32(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	jmp	.L1600	#
.L1597:
	.loc 1 7631 0
	movq	-8(%rbp), %rax	# t, tmp116
	movq	32(%rax), %rax	# t_6(D)->exp.operands, D.21116
	movq	%rax, %rdi	# D.21116,
	call	tree_expr_nonnegative_p	#
	jmp	.L1600	#
.L1599:
	.loc 1 7633 0
	movq	-8(%rbp), %rax	# t, tmp117
	addq	$40, %rax	#, D.21117
	movq	(%rax), %rax	# MEM[(struct rtx_def * *)_53], D.21118
	movq	%rax, %rdi	# D.21118,
	call	rtl_expr_nonnegative_p	#
	jmp	.L1600	#
.L1585:
	.loc 1 7636 0
	movq	-8(%rbp), %rax	# t, tmp118
	movzbl	16(%rax), %eax	# t_6(D)->common.code, D.21113
	movzbl	%al, %eax	# D.21113, D.21119
	movl	%eax, %edi	# D.21119,
	call	truth_value_p	#
	testl	%eax, %eax	# D.21112
	je	.L1610	#,
	.loc 1 7638 0
	movl	$1, %eax	#, D.21112
	jmp	.L1600	#
.L1610:
	.loc 1 7641 0
	movl	$0, %eax	#, D.21112
.L1600:
	.loc 1 7643 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	tree_expr_nonnegative_p, .-tree_expr_nonnegative_p
	.globl	rtl_expr_nonnegative_p
	.type	rtl_expr_nonnegative_p, @function
rtl_expr_nonnegative_p:
.LFB61:
	.loc 1 7651 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# r, r
	.loc 1 7652 0
	movq	-24(%rbp), %rax	# r, tmp71
	movzwl	(%rax), %eax	# r_3(D)->code, D.21121
	movzwl	%ax, %eax	# D.21121, D.21122
	subl	$54, %eax	#, tmp72
	cmpl	$14, %eax	#, tmp72
	ja	.L1612	#,
	movl	%eax, %eax	# tmp72, tmp73
	movq	.L1614(,%rax,8), %rax	#, tmp74
	jmp	*%rax	# tmp74
	.section	.rodata
	.align 8
	.align 4
.L1614:
	.quad	.L1613
	.quad	.L1615
	.quad	.L1616
	.quad	.L1612
	.quad	.L1612
	.quad	.L1612
	.quad	.L1612
	.quad	.L1612
	.quad	.L1612
	.quad	.L1612
	.quad	.L1612
	.quad	.L1612
	.quad	.L1612
	.quad	.L1617
	.quad	.L1617
	.text
.L1613:
	.loc 1 7655 0
	movq	-24(%rbp), %rax	# r, tmp75
	movq	8(%rax), %rax	# r_3(D)->fld[0].rtwint, D.21123
	notq	%rax	# tmp76
	shrq	$63, %rax	#, tmp77
	movzbl	%al, %eax	# D.21124, D.21120
	jmp	.L1618	#
.L1615:
	.loc 1 7658 0
	movq	-24(%rbp), %rax	# r, tmp78
	movzbl	2(%rax), %eax	# r_3(D)->mode, D.21125
	testb	%al, %al	# D.21125
	jne	.L1619	#,
	.loc 1 7659 0
	movq	-24(%rbp), %rax	# r, tmp79
	movq	24(%rax), %rax	# r_3(D)->fld[2].rtwint, D.21123
	notq	%rax	# tmp80
	shrq	$63, %rax	#, tmp81
	movzbl	%al, %eax	# D.21124, D.21120
	jmp	.L1618	#
.L1619:
	.loc 1 7660 0
	movl	$0, %eax	#, D.21120
	jmp	.L1618	#
.L1616:
.LBB59:
	.loc 1 7667 0
	movq	-24(%rbp), %rax	# r, tmp82
	movq	8(%rax), %rax	# r_3(D)->fld[0].rtvec, D.21126
	movl	(%rax), %eax	# _14->num_elem, tmp83
	movl	%eax, -12(%rbp)	# tmp83, units
	.loc 1 7669 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L1620	#
.L1622:
	.loc 1 7671 0
	movq	-24(%rbp), %rax	# r, tmp84
	movq	8(%rax), %rax	# r_3(D)->fld[0].rtvec, D.21126
	movl	-16(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, tmp85
	movq	8(%rax,%rdx,8), %rax	# _17->elem, tmp87
	movq	%rax, -8(%rbp)	# tmp87, elt
	.loc 1 7672 0
	movq	-8(%rbp), %rax	# elt, tmp88
	movq	%rax, %rdi	# tmp88,
	call	rtl_expr_nonnegative_p	#
	testl	%eax, %eax	# D.21120
	jne	.L1621	#,
	.loc 1 7673 0
	movl	$0, %eax	#, D.21120
	jmp	.L1618	#
.L1621:
	.loc 1 7669 0
	addl	$1, -16(%rbp)	#, i
.L1620:
	.loc 1 7669 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp89
	cmpl	-12(%rbp), %eax	# units, tmp89
	jl	.L1622	#,
	.loc 1 7676 0 is_stmt 1
	movl	$1, %eax	#, D.21120
	jmp	.L1618	#
.L1617:
.LBE59:
	.loc 1 7682 0
	movl	$1, %eax	#, D.21120
	jmp	.L1618	#
.L1612:
	.loc 1 7685 0
	movl	$0, %eax	#, D.21120
.L1618:
	.loc 1 7687 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	rtl_expr_nonnegative_p, .-rtl_expr_nonnegative_p
	.section	.rodata
	.align 16
	.type	__FUNCTION__.12314, @object
	.size	__FUNCTION__.12314, 21
__FUNCTION__.12314:
	.string	"div_and_round_double"
	.align 16
	.type	__FUNCTION__.12397, @object
	.size	__FUNCTION__.12397, 16
__FUNCTION__.12397:
	.string	"int_const_binop"
	.type	__FUNCTION__.12439, @object
	.size	__FUNCTION__.12439, 12
__FUNCTION__.12439:
	.string	"const_binop"
	.local	size_htab.12458
	.comm	size_htab.12458,8,8
	.local	new_const.12459
	.comm	new_const.12459,8,8
	.type	__FUNCTION__.12468, @object
	.size	__FUNCTION__.12468, 11
__FUNCTION__.12468:
	.string	"size_binop"
	.type	__FUNCTION__.12475, @object
	.size	__FUNCTION__.12475, 12
__FUNCTION__.12475:
	.string	"size_diffop"
	.align 16
	.type	__FUNCTION__.12516, @object
	.size	__FUNCTION__.12516, 23
__FUNCTION__.12516:
	.string	"invert_tree_comparison"
	.align 16
	.type	__FUNCTION__.12527, @object
	.size	__FUNCTION__.12527, 21
__FUNCTION__.12527:
	.string	"swap_tree_comparison"
	.align 16
	.type	__FUNCTION__.12657, @object
	.size	__FUNCTION__.12657, 18
__FUNCTION__.12657:
	.string	"invert_truthvalue"
	.type	__FUNCTION__.12764, @object
	.size	__FUNCTION__.12764, 12
__FUNCTION__.12764:
	.string	"range_binop"
	.type	__FUNCTION__.12799, @object
	.size	__FUNCTION__.12799, 11
__FUNCTION__.12799:
	.string	"make_range"
	.type	__FUNCTION__.13261, @object
	.size	__FUNCTION__.13261, 5
__FUNCTION__.13261:
	.string	"fold"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "machmode.h"
	.file 7 "real.h"
	.file 8 "hashtable.h"
	.file 9 "hashtab.h"
	.file 10 "i386.h"
	.file 11 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x55c7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1163
	.byte	0x1
	.long	.LASF1164
	.long	.LASF1165
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
	.long	0x1ec
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x1d34
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
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0x1d44
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
	.long	.LASF703
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0xaa0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0xc60
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0xcc3
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0xd7c
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0xcf8
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0xd3a
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0xde1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x121f
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0xf70
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0xe08
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0xe3d
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0xe80
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0xeb5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF28
	.uleb128 0xe
	.byte	0x8
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF29
	.uleb128 0x7
	.long	.LASF30
	.byte	0x5
	.byte	0xd4
	.long	0x207
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF31
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF32
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF33
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF34
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF35
	.uleb128 0x3
	.byte	0x8
	.long	0x230
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF36
	.uleb128 0x3
	.byte	0x8
	.long	0x23d
	.uleb128 0xf
	.long	0x230
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF37
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF38
	.uleb128 0x3
	.byte	0x8
	.long	0x1de
	.uleb128 0x3
	.byte	0x8
	.long	0x25c
	.uleb128 0x10
	.long	0x1de
	.long	0x270
	.uleb128 0x11
	.long	0x270
	.uleb128 0x11
	.long	0x270
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x276
	.uleb128 0x12
	.uleb128 0x13
	.long	.LASF99
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.long	0x3ec
	.uleb128 0x14
	.long	.LASF39
	.sleb128 0
	.uleb128 0x14
	.long	.LASF40
	.sleb128 1
	.uleb128 0x14
	.long	.LASF41
	.sleb128 2
	.uleb128 0x14
	.long	.LASF42
	.sleb128 3
	.uleb128 0x14
	.long	.LASF43
	.sleb128 4
	.uleb128 0x14
	.long	.LASF44
	.sleb128 5
	.uleb128 0x14
	.long	.LASF45
	.sleb128 6
	.uleb128 0x14
	.long	.LASF46
	.sleb128 7
	.uleb128 0x14
	.long	.LASF47
	.sleb128 8
	.uleb128 0x14
	.long	.LASF48
	.sleb128 9
	.uleb128 0x14
	.long	.LASF49
	.sleb128 10
	.uleb128 0x14
	.long	.LASF50
	.sleb128 11
	.uleb128 0x14
	.long	.LASF51
	.sleb128 12
	.uleb128 0x14
	.long	.LASF52
	.sleb128 13
	.uleb128 0x14
	.long	.LASF53
	.sleb128 14
	.uleb128 0x14
	.long	.LASF54
	.sleb128 15
	.uleb128 0x14
	.long	.LASF55
	.sleb128 16
	.uleb128 0x14
	.long	.LASF56
	.sleb128 17
	.uleb128 0x14
	.long	.LASF57
	.sleb128 18
	.uleb128 0x14
	.long	.LASF58
	.sleb128 19
	.uleb128 0x14
	.long	.LASF59
	.sleb128 20
	.uleb128 0x14
	.long	.LASF60
	.sleb128 21
	.uleb128 0x14
	.long	.LASF61
	.sleb128 22
	.uleb128 0x14
	.long	.LASF62
	.sleb128 23
	.uleb128 0x14
	.long	.LASF63
	.sleb128 24
	.uleb128 0x14
	.long	.LASF64
	.sleb128 25
	.uleb128 0x14
	.long	.LASF65
	.sleb128 26
	.uleb128 0x14
	.long	.LASF66
	.sleb128 27
	.uleb128 0x14
	.long	.LASF67
	.sleb128 28
	.uleb128 0x14
	.long	.LASF68
	.sleb128 29
	.uleb128 0x14
	.long	.LASF69
	.sleb128 30
	.uleb128 0x14
	.long	.LASF70
	.sleb128 31
	.uleb128 0x14
	.long	.LASF71
	.sleb128 32
	.uleb128 0x14
	.long	.LASF72
	.sleb128 33
	.uleb128 0x14
	.long	.LASF73
	.sleb128 34
	.uleb128 0x14
	.long	.LASF74
	.sleb128 35
	.uleb128 0x14
	.long	.LASF75
	.sleb128 36
	.uleb128 0x14
	.long	.LASF76
	.sleb128 37
	.uleb128 0x14
	.long	.LASF77
	.sleb128 38
	.uleb128 0x14
	.long	.LASF78
	.sleb128 39
	.uleb128 0x14
	.long	.LASF79
	.sleb128 40
	.uleb128 0x14
	.long	.LASF80
	.sleb128 41
	.uleb128 0x14
	.long	.LASF81
	.sleb128 42
	.uleb128 0x14
	.long	.LASF82
	.sleb128 43
	.uleb128 0x14
	.long	.LASF83
	.sleb128 44
	.uleb128 0x14
	.long	.LASF84
	.sleb128 45
	.uleb128 0x14
	.long	.LASF85
	.sleb128 46
	.uleb128 0x14
	.long	.LASF86
	.sleb128 47
	.uleb128 0x14
	.long	.LASF87
	.sleb128 48
	.uleb128 0x14
	.long	.LASF88
	.sleb128 49
	.uleb128 0x14
	.long	.LASF89
	.sleb128 50
	.uleb128 0x14
	.long	.LASF90
	.sleb128 51
	.uleb128 0x14
	.long	.LASF91
	.sleb128 52
	.uleb128 0x14
	.long	.LASF92
	.sleb128 53
	.uleb128 0x14
	.long	.LASF93
	.sleb128 54
	.uleb128 0x14
	.long	.LASF94
	.sleb128 55
	.uleb128 0x14
	.long	.LASF95
	.sleb128 56
	.uleb128 0x14
	.long	.LASF96
	.sleb128 57
	.uleb128 0x14
	.long	.LASF97
	.sleb128 58
	.uleb128 0x14
	.long	.LASF98
	.sleb128 59
	.byte	0
	.uleb128 0x13
	.long	.LASF100
	.byte	0x4
	.byte	0x6
	.byte	0x2c
	.long	0x435
	.uleb128 0x14
	.long	.LASF101
	.sleb128 0
	.uleb128 0x14
	.long	.LASF102
	.sleb128 1
	.uleb128 0x14
	.long	.LASF103
	.sleb128 2
	.uleb128 0x14
	.long	.LASF104
	.sleb128 3
	.uleb128 0x14
	.long	.LASF105
	.sleb128 4
	.uleb128 0x14
	.long	.LASF106
	.sleb128 5
	.uleb128 0x14
	.long	.LASF107
	.sleb128 6
	.uleb128 0x14
	.long	.LASF108
	.sleb128 7
	.uleb128 0x14
	.long	.LASF109
	.sleb128 8
	.uleb128 0x14
	.long	.LASF110
	.sleb128 9
	.byte	0
	.uleb128 0x13
	.long	.LASF111
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x80e
	.uleb128 0x14
	.long	.LASF112
	.sleb128 0
	.uleb128 0x14
	.long	.LASF113
	.sleb128 1
	.uleb128 0x14
	.long	.LASF114
	.sleb128 2
	.uleb128 0x14
	.long	.LASF115
	.sleb128 3
	.uleb128 0x14
	.long	.LASF116
	.sleb128 4
	.uleb128 0x14
	.long	.LASF117
	.sleb128 5
	.uleb128 0x14
	.long	.LASF118
	.sleb128 6
	.uleb128 0x14
	.long	.LASF119
	.sleb128 7
	.uleb128 0x14
	.long	.LASF120
	.sleb128 8
	.uleb128 0x14
	.long	.LASF121
	.sleb128 9
	.uleb128 0x14
	.long	.LASF122
	.sleb128 10
	.uleb128 0x14
	.long	.LASF123
	.sleb128 11
	.uleb128 0x14
	.long	.LASF124
	.sleb128 12
	.uleb128 0x14
	.long	.LASF125
	.sleb128 13
	.uleb128 0x14
	.long	.LASF126
	.sleb128 14
	.uleb128 0x14
	.long	.LASF127
	.sleb128 15
	.uleb128 0x14
	.long	.LASF128
	.sleb128 16
	.uleb128 0x14
	.long	.LASF129
	.sleb128 17
	.uleb128 0x14
	.long	.LASF130
	.sleb128 18
	.uleb128 0x14
	.long	.LASF131
	.sleb128 19
	.uleb128 0x14
	.long	.LASF132
	.sleb128 20
	.uleb128 0x14
	.long	.LASF133
	.sleb128 21
	.uleb128 0x14
	.long	.LASF134
	.sleb128 22
	.uleb128 0x14
	.long	.LASF135
	.sleb128 23
	.uleb128 0x14
	.long	.LASF136
	.sleb128 24
	.uleb128 0x14
	.long	.LASF137
	.sleb128 25
	.uleb128 0x14
	.long	.LASF138
	.sleb128 26
	.uleb128 0x14
	.long	.LASF139
	.sleb128 27
	.uleb128 0x14
	.long	.LASF140
	.sleb128 28
	.uleb128 0x14
	.long	.LASF141
	.sleb128 29
	.uleb128 0x14
	.long	.LASF142
	.sleb128 30
	.uleb128 0x14
	.long	.LASF143
	.sleb128 31
	.uleb128 0x14
	.long	.LASF144
	.sleb128 32
	.uleb128 0x14
	.long	.LASF145
	.sleb128 33
	.uleb128 0x14
	.long	.LASF146
	.sleb128 34
	.uleb128 0x14
	.long	.LASF147
	.sleb128 35
	.uleb128 0x14
	.long	.LASF148
	.sleb128 36
	.uleb128 0x14
	.long	.LASF149
	.sleb128 37
	.uleb128 0x14
	.long	.LASF150
	.sleb128 38
	.uleb128 0x14
	.long	.LASF151
	.sleb128 39
	.uleb128 0x14
	.long	.LASF152
	.sleb128 40
	.uleb128 0x14
	.long	.LASF153
	.sleb128 41
	.uleb128 0x14
	.long	.LASF154
	.sleb128 42
	.uleb128 0x14
	.long	.LASF155
	.sleb128 43
	.uleb128 0x14
	.long	.LASF156
	.sleb128 44
	.uleb128 0x14
	.long	.LASF157
	.sleb128 45
	.uleb128 0x14
	.long	.LASF158
	.sleb128 46
	.uleb128 0x14
	.long	.LASF159
	.sleb128 47
	.uleb128 0x14
	.long	.LASF160
	.sleb128 48
	.uleb128 0x14
	.long	.LASF161
	.sleb128 49
	.uleb128 0x14
	.long	.LASF162
	.sleb128 50
	.uleb128 0x14
	.long	.LASF163
	.sleb128 51
	.uleb128 0x14
	.long	.LASF164
	.sleb128 52
	.uleb128 0x14
	.long	.LASF165
	.sleb128 53
	.uleb128 0x14
	.long	.LASF166
	.sleb128 54
	.uleb128 0x14
	.long	.LASF167
	.sleb128 55
	.uleb128 0x14
	.long	.LASF168
	.sleb128 56
	.uleb128 0x14
	.long	.LASF169
	.sleb128 57
	.uleb128 0x14
	.long	.LASF170
	.sleb128 58
	.uleb128 0x14
	.long	.LASF171
	.sleb128 59
	.uleb128 0x14
	.long	.LASF172
	.sleb128 60
	.uleb128 0x14
	.long	.LASF173
	.sleb128 61
	.uleb128 0x14
	.long	.LASF174
	.sleb128 62
	.uleb128 0x14
	.long	.LASF175
	.sleb128 63
	.uleb128 0x14
	.long	.LASF176
	.sleb128 64
	.uleb128 0x14
	.long	.LASF177
	.sleb128 65
	.uleb128 0x14
	.long	.LASF178
	.sleb128 66
	.uleb128 0x14
	.long	.LASF179
	.sleb128 67
	.uleb128 0x14
	.long	.LASF180
	.sleb128 68
	.uleb128 0x14
	.long	.LASF181
	.sleb128 69
	.uleb128 0x14
	.long	.LASF182
	.sleb128 70
	.uleb128 0x14
	.long	.LASF183
	.sleb128 71
	.uleb128 0x14
	.long	.LASF184
	.sleb128 72
	.uleb128 0x14
	.long	.LASF185
	.sleb128 73
	.uleb128 0x14
	.long	.LASF186
	.sleb128 74
	.uleb128 0x14
	.long	.LASF187
	.sleb128 75
	.uleb128 0x14
	.long	.LASF188
	.sleb128 76
	.uleb128 0x14
	.long	.LASF189
	.sleb128 77
	.uleb128 0x14
	.long	.LASF190
	.sleb128 78
	.uleb128 0x14
	.long	.LASF191
	.sleb128 79
	.uleb128 0x14
	.long	.LASF192
	.sleb128 80
	.uleb128 0x14
	.long	.LASF193
	.sleb128 81
	.uleb128 0x14
	.long	.LASF194
	.sleb128 82
	.uleb128 0x14
	.long	.LASF195
	.sleb128 83
	.uleb128 0x14
	.long	.LASF196
	.sleb128 84
	.uleb128 0x14
	.long	.LASF197
	.sleb128 85
	.uleb128 0x14
	.long	.LASF198
	.sleb128 86
	.uleb128 0x14
	.long	.LASF199
	.sleb128 87
	.uleb128 0x14
	.long	.LASF200
	.sleb128 88
	.uleb128 0x14
	.long	.LASF201
	.sleb128 89
	.uleb128 0x14
	.long	.LASF202
	.sleb128 90
	.uleb128 0x14
	.long	.LASF203
	.sleb128 91
	.uleb128 0x14
	.long	.LASF204
	.sleb128 92
	.uleb128 0x14
	.long	.LASF205
	.sleb128 93
	.uleb128 0x14
	.long	.LASF206
	.sleb128 94
	.uleb128 0x14
	.long	.LASF207
	.sleb128 95
	.uleb128 0x14
	.long	.LASF208
	.sleb128 96
	.uleb128 0x14
	.long	.LASF209
	.sleb128 97
	.uleb128 0x14
	.long	.LASF210
	.sleb128 98
	.uleb128 0x14
	.long	.LASF211
	.sleb128 99
	.uleb128 0x14
	.long	.LASF212
	.sleb128 100
	.uleb128 0x14
	.long	.LASF213
	.sleb128 101
	.uleb128 0x14
	.long	.LASF214
	.sleb128 102
	.uleb128 0x14
	.long	.LASF215
	.sleb128 103
	.uleb128 0x14
	.long	.LASF216
	.sleb128 104
	.uleb128 0x14
	.long	.LASF217
	.sleb128 105
	.uleb128 0x14
	.long	.LASF218
	.sleb128 106
	.uleb128 0x14
	.long	.LASF219
	.sleb128 107
	.uleb128 0x14
	.long	.LASF220
	.sleb128 108
	.uleb128 0x14
	.long	.LASF221
	.sleb128 109
	.uleb128 0x14
	.long	.LASF222
	.sleb128 110
	.uleb128 0x14
	.long	.LASF223
	.sleb128 111
	.uleb128 0x14
	.long	.LASF224
	.sleb128 112
	.uleb128 0x14
	.long	.LASF225
	.sleb128 113
	.uleb128 0x14
	.long	.LASF226
	.sleb128 114
	.uleb128 0x14
	.long	.LASF227
	.sleb128 115
	.uleb128 0x14
	.long	.LASF228
	.sleb128 116
	.uleb128 0x14
	.long	.LASF229
	.sleb128 117
	.uleb128 0x14
	.long	.LASF230
	.sleb128 118
	.uleb128 0x14
	.long	.LASF231
	.sleb128 119
	.uleb128 0x14
	.long	.LASF232
	.sleb128 120
	.uleb128 0x14
	.long	.LASF233
	.sleb128 121
	.uleb128 0x14
	.long	.LASF234
	.sleb128 122
	.uleb128 0x14
	.long	.LASF235
	.sleb128 123
	.uleb128 0x14
	.long	.LASF236
	.sleb128 124
	.uleb128 0x14
	.long	.LASF237
	.sleb128 125
	.uleb128 0x14
	.long	.LASF238
	.sleb128 126
	.uleb128 0x14
	.long	.LASF239
	.sleb128 127
	.uleb128 0x14
	.long	.LASF240
	.sleb128 128
	.uleb128 0x14
	.long	.LASF241
	.sleb128 129
	.uleb128 0x14
	.long	.LASF242
	.sleb128 130
	.uleb128 0x14
	.long	.LASF243
	.sleb128 131
	.uleb128 0x14
	.long	.LASF244
	.sleb128 132
	.uleb128 0x14
	.long	.LASF245
	.sleb128 133
	.uleb128 0x14
	.long	.LASF246
	.sleb128 134
	.uleb128 0x14
	.long	.LASF247
	.sleb128 135
	.uleb128 0x14
	.long	.LASF248
	.sleb128 136
	.uleb128 0x14
	.long	.LASF249
	.sleb128 137
	.uleb128 0x14
	.long	.LASF250
	.sleb128 138
	.uleb128 0x14
	.long	.LASF251
	.sleb128 139
	.uleb128 0x14
	.long	.LASF252
	.sleb128 140
	.uleb128 0x14
	.long	.LASF253
	.sleb128 141
	.uleb128 0x14
	.long	.LASF254
	.sleb128 142
	.uleb128 0x14
	.long	.LASF255
	.sleb128 143
	.uleb128 0x14
	.long	.LASF256
	.sleb128 144
	.uleb128 0x14
	.long	.LASF257
	.sleb128 145
	.uleb128 0x14
	.long	.LASF258
	.sleb128 146
	.uleb128 0x14
	.long	.LASF259
	.sleb128 147
	.byte	0
	.uleb128 0x13
	.long	.LASF260
	.byte	0x4
	.byte	0x4
	.byte	0x45
	.long	0x833
	.uleb128 0x14
	.long	.LASF261
	.sleb128 0
	.uleb128 0x14
	.long	.LASF262
	.sleb128 1
	.uleb128 0x14
	.long	.LASF263
	.sleb128 2
	.uleb128 0x14
	.long	.LASF264
	.sleb128 3
	.byte	0
	.uleb128 0x13
	.long	.LASF265
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0xaa0
	.uleb128 0x14
	.long	.LASF266
	.sleb128 0
	.uleb128 0x14
	.long	.LASF267
	.sleb128 1
	.uleb128 0x14
	.long	.LASF268
	.sleb128 2
	.uleb128 0x14
	.long	.LASF269
	.sleb128 3
	.uleb128 0x14
	.long	.LASF270
	.sleb128 4
	.uleb128 0x14
	.long	.LASF271
	.sleb128 5
	.uleb128 0x14
	.long	.LASF272
	.sleb128 6
	.uleb128 0x14
	.long	.LASF273
	.sleb128 7
	.uleb128 0x14
	.long	.LASF274
	.sleb128 8
	.uleb128 0x14
	.long	.LASF275
	.sleb128 9
	.uleb128 0x14
	.long	.LASF276
	.sleb128 10
	.uleb128 0x14
	.long	.LASF277
	.sleb128 11
	.uleb128 0x14
	.long	.LASF278
	.sleb128 12
	.uleb128 0x14
	.long	.LASF279
	.sleb128 13
	.uleb128 0x14
	.long	.LASF280
	.sleb128 14
	.uleb128 0x14
	.long	.LASF281
	.sleb128 15
	.uleb128 0x14
	.long	.LASF282
	.sleb128 16
	.uleb128 0x14
	.long	.LASF283
	.sleb128 17
	.uleb128 0x14
	.long	.LASF284
	.sleb128 18
	.uleb128 0x14
	.long	.LASF285
	.sleb128 19
	.uleb128 0x14
	.long	.LASF286
	.sleb128 20
	.uleb128 0x14
	.long	.LASF287
	.sleb128 21
	.uleb128 0x14
	.long	.LASF288
	.sleb128 22
	.uleb128 0x14
	.long	.LASF289
	.sleb128 23
	.uleb128 0x14
	.long	.LASF290
	.sleb128 24
	.uleb128 0x14
	.long	.LASF291
	.sleb128 25
	.uleb128 0x14
	.long	.LASF292
	.sleb128 26
	.uleb128 0x14
	.long	.LASF293
	.sleb128 27
	.uleb128 0x14
	.long	.LASF294
	.sleb128 28
	.uleb128 0x14
	.long	.LASF295
	.sleb128 29
	.uleb128 0x14
	.long	.LASF296
	.sleb128 30
	.uleb128 0x14
	.long	.LASF297
	.sleb128 31
	.uleb128 0x14
	.long	.LASF298
	.sleb128 32
	.uleb128 0x14
	.long	.LASF299
	.sleb128 33
	.uleb128 0x14
	.long	.LASF300
	.sleb128 34
	.uleb128 0x14
	.long	.LASF301
	.sleb128 35
	.uleb128 0x14
	.long	.LASF302
	.sleb128 36
	.uleb128 0x14
	.long	.LASF303
	.sleb128 37
	.uleb128 0x14
	.long	.LASF304
	.sleb128 38
	.uleb128 0x14
	.long	.LASF305
	.sleb128 39
	.uleb128 0x14
	.long	.LASF306
	.sleb128 40
	.uleb128 0x14
	.long	.LASF307
	.sleb128 41
	.uleb128 0x14
	.long	.LASF308
	.sleb128 42
	.uleb128 0x14
	.long	.LASF309
	.sleb128 43
	.uleb128 0x14
	.long	.LASF310
	.sleb128 44
	.uleb128 0x14
	.long	.LASF311
	.sleb128 45
	.uleb128 0x14
	.long	.LASF312
	.sleb128 46
	.uleb128 0x14
	.long	.LASF313
	.sleb128 47
	.uleb128 0x14
	.long	.LASF314
	.sleb128 48
	.uleb128 0x14
	.long	.LASF315
	.sleb128 49
	.uleb128 0x14
	.long	.LASF316
	.sleb128 50
	.uleb128 0x14
	.long	.LASF317
	.sleb128 51
	.uleb128 0x14
	.long	.LASF318
	.sleb128 52
	.uleb128 0x14
	.long	.LASF319
	.sleb128 53
	.uleb128 0x14
	.long	.LASF320
	.sleb128 54
	.uleb128 0x14
	.long	.LASF321
	.sleb128 55
	.uleb128 0x14
	.long	.LASF322
	.sleb128 56
	.uleb128 0x14
	.long	.LASF323
	.sleb128 57
	.uleb128 0x14
	.long	.LASF324
	.sleb128 58
	.uleb128 0x14
	.long	.LASF325
	.sleb128 59
	.uleb128 0x14
	.long	.LASF326
	.sleb128 60
	.uleb128 0x14
	.long	.LASF327
	.sleb128 61
	.uleb128 0x14
	.long	.LASF328
	.sleb128 62
	.uleb128 0x14
	.long	.LASF329
	.sleb128 63
	.uleb128 0x14
	.long	.LASF330
	.sleb128 64
	.uleb128 0x14
	.long	.LASF331
	.sleb128 65
	.uleb128 0x14
	.long	.LASF332
	.sleb128 66
	.uleb128 0x14
	.long	.LASF333
	.sleb128 67
	.uleb128 0x14
	.long	.LASF334
	.sleb128 68
	.uleb128 0x14
	.long	.LASF335
	.sleb128 69
	.uleb128 0x14
	.long	.LASF336
	.sleb128 70
	.uleb128 0x14
	.long	.LASF337
	.sleb128 71
	.uleb128 0x14
	.long	.LASF338
	.sleb128 72
	.uleb128 0x14
	.long	.LASF339
	.sleb128 73
	.uleb128 0x14
	.long	.LASF340
	.sleb128 74
	.uleb128 0x14
	.long	.LASF341
	.sleb128 75
	.uleb128 0x14
	.long	.LASF342
	.sleb128 76
	.uleb128 0x14
	.long	.LASF343
	.sleb128 77
	.uleb128 0x14
	.long	.LASF344
	.sleb128 78
	.uleb128 0x14
	.long	.LASF345
	.sleb128 79
	.uleb128 0x14
	.long	.LASF346
	.sleb128 80
	.uleb128 0x14
	.long	.LASF347
	.sleb128 81
	.uleb128 0x14
	.long	.LASF348
	.sleb128 82
	.uleb128 0x14
	.long	.LASF349
	.sleb128 83
	.uleb128 0x14
	.long	.LASF350
	.sleb128 84
	.uleb128 0x14
	.long	.LASF351
	.sleb128 85
	.uleb128 0x14
	.long	.LASF352
	.sleb128 86
	.uleb128 0x14
	.long	.LASF353
	.sleb128 87
	.uleb128 0x14
	.long	.LASF354
	.sleb128 88
	.uleb128 0x14
	.long	.LASF355
	.sleb128 89
	.uleb128 0x14
	.long	.LASF356
	.sleb128 90
	.uleb128 0x14
	.long	.LASF357
	.sleb128 91
	.uleb128 0x14
	.long	.LASF358
	.sleb128 92
	.uleb128 0x14
	.long	.LASF359
	.sleb128 93
	.uleb128 0x14
	.long	.LASF360
	.sleb128 94
	.uleb128 0x14
	.long	.LASF361
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF362
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0xc3c
	.uleb128 0x8
	.long	.LASF363
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
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF364
	.byte	0x4
	.byte	0x80
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF365
	.byte	0x4
	.byte	0x81
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF366
	.byte	0x4
	.byte	0x82
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF367
	.byte	0x4
	.byte	0x83
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF368
	.byte	0x4
	.byte	0x84
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF369
	.byte	0x4
	.byte	0x85
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF370
	.byte	0x4
	.byte	0x86
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF371
	.byte	0x4
	.byte	0x87
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF372
	.byte	0x4
	.byte	0x89
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF373
	.byte	0x4
	.byte	0x8a
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF374
	.byte	0x4
	.byte	0x8b
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF375
	.byte	0x4
	.byte	0x8c
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF376
	.byte	0x4
	.byte	0x8d
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF377
	.byte	0x4
	.byte	0x8e
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF378
	.byte	0x4
	.byte	0x8f
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF379
	.byte	0x4
	.byte	0x90
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF380
	.byte	0x4
	.byte	0x92
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF381
	.byte	0x4
	.byte	0x93
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF382
	.byte	0x4
	.byte	0x94
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF383
	.byte	0x4
	.byte	0x95
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF384
	.byte	0x4
	.byte	0x96
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF385
	.byte	0x4
	.byte	0x97
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF386
	.byte	0x4
	.byte	0x98
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF387
	.byte	0x4
	.byte	0x99
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0xc60
	.uleb128 0x16
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x207
	.byte	0
	.uleb128 0x17
	.long	.LASF388
	.byte	0x4
	.value	0x2cb
	.long	0x1f5
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF389
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0xc95
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0xaa0
	.byte	0
	.uleb128 0x16
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x17
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0xc3c
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.byte	0x18
	.byte	0x7
	.byte	0x6b
	.long	0xca8
	.uleb128 0x6
	.string	"r"
	.byte	0x7
	.byte	0x6c
	.long	0xca8
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x1f5
	.long	0xcb8
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF390
	.byte	0x7
	.byte	0x6d
	.long	0xc95
	.uleb128 0x18
	.long	.LASF391
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0xcf8
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0xaa0
	.byte	0
	.uleb128 0x16
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x17
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0xcb8
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	.LASF392
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0xd3a
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0xaa0
	.byte	0
	.uleb128 0x16
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x17
	.long	.LASF393
	.byte	0x4
	.value	0x2ed
	.long	0x1de
	.byte	0x20
	.uleb128 0x17
	.long	.LASF394
	.byte	0x4
	.value	0x2ee
	.long	0x237
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.long	.LASF395
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0xd7c
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0xaa0
	.byte	0
	.uleb128 0x16
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x17
	.long	.LASF396
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x17
	.long	.LASF397
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.long	.LASF398
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0xdb1
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0xaa0
	.byte	0
	.uleb128 0x16
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x17
	.long	.LASF399
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF400
	.byte	0x10
	.byte	0x8
	.byte	0x1a
	.long	0xdd6
	.uleb128 0x6
	.string	"len"
	.byte	0x8
	.byte	0x1c
	.long	0x1ec
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0x8
	.byte	0x1d
	.long	0xdd6
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xddc
	.uleb128 0xf
	.long	0x20e
	.uleb128 0x18
	.long	.LASF401
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0xe08
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0xaa0
	.byte	0
	.uleb128 0x16
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0xdb1
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.long	.LASF402
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0xe3d
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0xaa0
	.byte	0
	.uleb128 0x17
	.long	.LASF403
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x17
	.long	.LASF404
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	.LASF405
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0xe70
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0xaa0
	.byte	0
	.uleb128 0x17
	.long	.LASF393
	.byte	0x4
	.value	0x331
	.long	0x1de
	.byte	0x18
	.uleb128 0x16
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0xe70
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.long	0x123
	.long	0xe80
	.uleb128 0x1b
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF406
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0xeb5
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0xaa0
	.byte	0
	.uleb128 0x17
	.long	.LASF407
	.byte	0x4
	.value	0x372
	.long	0x1de
	.byte	0x18
	.uleb128 0x17
	.long	.LASF408
	.byte	0x4
	.value	0x373
	.long	0xe70
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	.LASF409
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0xf4e
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0xaa0
	.byte	0
	.uleb128 0x1c
	.long	.LASF410
	.byte	0x4
	.value	0x3a7
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1c
	.long	.LASF411
	.byte	0x4
	.value	0x3a8
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1c
	.long	.LASF412
	.byte	0x4
	.value	0x3a9
	.long	0x1ec
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x17
	.long	.LASF413
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x17
	.long	.LASF414
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x17
	.long	.LASF415
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x17
	.long	.LASF416
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x17
	.long	.LASF417
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x17
	.long	.LASF418
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0xf70
	.uleb128 0xa
	.long	.LASF419
	.byte	0x4
	.value	0x4d8
	.long	0x1de
	.uleb128 0xa
	.long	.LASF394
	.byte	0x4
	.value	0x4d8
	.long	0x22a
	.byte	0
	.uleb128 0x18
	.long	.LASF420
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1185
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0xaa0
	.byte	0
	.uleb128 0x17
	.long	.LASF421
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x17
	.long	.LASF422
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x17
	.long	.LASF423
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x17
	.long	.LASF424
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x16
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x1ec
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF425
	.byte	0x4
	.value	0x4c1
	.long	0x1ec
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x1ec
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF426
	.byte	0x4
	.value	0x4c4
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF427
	.byte	0x4
	.value	0x4c5
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF428
	.byte	0x4
	.value	0x4c6
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF429
	.byte	0x4
	.value	0x4c7
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF430
	.byte	0x4
	.value	0x4c8
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF431
	.byte	0x4
	.value	0x4c9
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF432
	.byte	0x4
	.value	0x4ca
	.long	0x1ec
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF380
	.byte	0x4
	.value	0x4cc
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF381
	.byte	0x4
	.value	0x4cd
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF382
	.byte	0x4
	.value	0x4ce
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF383
	.byte	0x4
	.value	0x4cf
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF384
	.byte	0x4
	.value	0x4d0
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF385
	.byte	0x4
	.value	0x4d1
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF386
	.byte	0x4
	.value	0x4d2
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF433
	.byte	0x4
	.value	0x4d3
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x17
	.long	.LASF434
	.byte	0x4
	.value	0x4d5
	.long	0x1ec
	.byte	0x40
	.uleb128 0x17
	.long	.LASF435
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x17
	.long	.LASF436
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x17
	.long	.LASF437
	.byte	0x4
	.value	0x4d8
	.long	0xf4e
	.byte	0x58
	.uleb128 0x17
	.long	.LASF438
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x17
	.long	.LASF439
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x17
	.long	.LASF440
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x17
	.long	.LASF441
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x17
	.long	.LASF442
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x17
	.long	.LASF443
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x17
	.long	.LASF444
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x17
	.long	.LASF445
	.byte	0x4
	.value	0x4e0
	.long	0x1f5
	.byte	0x98
	.uleb128 0x17
	.long	.LASF446
	.byte	0x4
	.value	0x4e2
	.long	0x118a
	.byte	0xa0
	.byte	0
	.uleb128 0x1e
	.long	.LASF448
	.uleb128 0x3
	.byte	0x8
	.long	0x1185
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x11ba
	.uleb128 0x1c
	.long	.LASF434
	.byte	0x4
	.value	0x717
	.long	0x1ec
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF447
	.byte	0x4
	.value	0x717
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x11e2
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x833
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x1f5
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1190
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1214
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x1219
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
	.long	0x1de
	.byte	0
	.uleb128 0x1e
	.long	.LASF449
	.uleb128 0x3
	.byte	0x8
	.long	0x1214
	.uleb128 0x18
	.long	.LASF450
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x15a3
	.uleb128 0x17
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0xaa0
	.byte	0
	.uleb128 0x17
	.long	.LASF451
	.byte	0x4
	.value	0x6df
	.long	0x237
	.byte	0x18
	.uleb128 0x17
	.long	.LASF452
	.byte	0x4
	.value	0x6e0
	.long	0x1de
	.byte	0x20
	.uleb128 0x16
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x1ec
	.byte	0x24
	.uleb128 0x17
	.long	.LASF422
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x1c
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF453
	.byte	0x4
	.value	0x6e5
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF454
	.byte	0x4
	.value	0x6e6
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF455
	.byte	0x4
	.value	0x6e7
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF456
	.byte	0x4
	.value	0x6e8
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF457
	.byte	0x4
	.value	0x6e9
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF458
	.byte	0x4
	.value	0x6ea
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF459
	.byte	0x4
	.value	0x6eb
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF411
	.byte	0x4
	.value	0x6ec
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF460
	.byte	0x4
	.value	0x6ee
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF461
	.byte	0x4
	.value	0x6ef
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF462
	.byte	0x4
	.value	0x6f0
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF463
	.byte	0x4
	.value	0x6f1
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF464
	.byte	0x4
	.value	0x6f2
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF465
	.byte	0x4
	.value	0x6f3
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF466
	.byte	0x4
	.value	0x6f4
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF467
	.byte	0x4
	.value	0x6f5
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF468
	.byte	0x4
	.value	0x6f7
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF469
	.byte	0x4
	.value	0x6f8
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF470
	.byte	0x4
	.value	0x6f9
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF471
	.byte	0x4
	.value	0x6fa
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF472
	.byte	0x4
	.value	0x6fb
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF260
	.byte	0x4
	.value	0x6fc
	.long	0x1ec
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF473
	.byte	0x4
	.value	0x6fd
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF432
	.byte	0x4
	.value	0x6ff
	.long	0x1ec
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF474
	.byte	0x4
	.value	0x700
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF433
	.byte	0x4
	.value	0x701
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF475
	.byte	0x4
	.value	0x702
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF380
	.byte	0x4
	.value	0x705
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF381
	.byte	0x4
	.value	0x706
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF382
	.byte	0x4
	.value	0x707
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF383
	.byte	0x4
	.value	0x708
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF384
	.byte	0x4
	.value	0x709
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF385
	.byte	0x4
	.value	0x70a
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF386
	.byte	0x4
	.value	0x70b
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF476
	.byte	0x4
	.value	0x70c
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x16
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x11ba
	.byte	0x38
	.uleb128 0x17
	.long	.LASF423
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x17
	.long	.LASF438
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x17
	.long	.LASF444
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x17
	.long	.LASF477
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x17
	.long	.LASF478
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x17
	.long	.LASF479
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x17
	.long	.LASF416
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x17
	.long	.LASF480
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x17
	.long	.LASF481
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x17
	.long	.LASF424
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x16
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x17
	.long	.LASF482
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x16
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x11e2
	.byte	0xa0
	.uleb128 0x17
	.long	.LASF483
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x17
	.long	.LASF484
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x17
	.long	.LASF485
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x17
	.long	.LASF486
	.byte	0x4
	.value	0x73b
	.long	0x1f5
	.byte	0xc0
	.uleb128 0x17
	.long	.LASF446
	.byte	0x4
	.value	0x73d
	.long	0x15a8
	.byte	0xc8
	.byte	0
	.uleb128 0x1e
	.long	.LASF487
	.uleb128 0x3
	.byte	0x8
	.long	0x15a3
	.uleb128 0x1f
	.long	.LASF488
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x16f4
	.uleb128 0x14
	.long	.LASF489
	.sleb128 0
	.uleb128 0x14
	.long	.LASF490
	.sleb128 1
	.uleb128 0x14
	.long	.LASF491
	.sleb128 2
	.uleb128 0x14
	.long	.LASF492
	.sleb128 3
	.uleb128 0x14
	.long	.LASF493
	.sleb128 4
	.uleb128 0x14
	.long	.LASF494
	.sleb128 5
	.uleb128 0x14
	.long	.LASF495
	.sleb128 6
	.uleb128 0x14
	.long	.LASF496
	.sleb128 7
	.uleb128 0x14
	.long	.LASF497
	.sleb128 8
	.uleb128 0x14
	.long	.LASF498
	.sleb128 9
	.uleb128 0x14
	.long	.LASF499
	.sleb128 10
	.uleb128 0x14
	.long	.LASF500
	.sleb128 11
	.uleb128 0x14
	.long	.LASF501
	.sleb128 12
	.uleb128 0x14
	.long	.LASF502
	.sleb128 13
	.uleb128 0x14
	.long	.LASF503
	.sleb128 14
	.uleb128 0x14
	.long	.LASF504
	.sleb128 15
	.uleb128 0x14
	.long	.LASF505
	.sleb128 16
	.uleb128 0x14
	.long	.LASF506
	.sleb128 17
	.uleb128 0x14
	.long	.LASF507
	.sleb128 18
	.uleb128 0x14
	.long	.LASF508
	.sleb128 19
	.uleb128 0x14
	.long	.LASF509
	.sleb128 20
	.uleb128 0x14
	.long	.LASF510
	.sleb128 21
	.uleb128 0x14
	.long	.LASF511
	.sleb128 22
	.uleb128 0x14
	.long	.LASF512
	.sleb128 23
	.uleb128 0x14
	.long	.LASF513
	.sleb128 24
	.uleb128 0x14
	.long	.LASF514
	.sleb128 25
	.uleb128 0x14
	.long	.LASF515
	.sleb128 26
	.uleb128 0x14
	.long	.LASF516
	.sleb128 27
	.uleb128 0x14
	.long	.LASF517
	.sleb128 28
	.uleb128 0x14
	.long	.LASF518
	.sleb128 29
	.uleb128 0x14
	.long	.LASF519
	.sleb128 30
	.uleb128 0x14
	.long	.LASF520
	.sleb128 31
	.uleb128 0x14
	.long	.LASF521
	.sleb128 32
	.uleb128 0x14
	.long	.LASF522
	.sleb128 33
	.uleb128 0x14
	.long	.LASF523
	.sleb128 34
	.uleb128 0x14
	.long	.LASF524
	.sleb128 35
	.uleb128 0x14
	.long	.LASF525
	.sleb128 36
	.uleb128 0x14
	.long	.LASF526
	.sleb128 37
	.uleb128 0x14
	.long	.LASF527
	.sleb128 38
	.uleb128 0x14
	.long	.LASF528
	.sleb128 39
	.uleb128 0x14
	.long	.LASF529
	.sleb128 40
	.uleb128 0x14
	.long	.LASF530
	.sleb128 41
	.uleb128 0x14
	.long	.LASF531
	.sleb128 42
	.uleb128 0x14
	.long	.LASF532
	.sleb128 43
	.uleb128 0x14
	.long	.LASF533
	.sleb128 44
	.uleb128 0x14
	.long	.LASF534
	.sleb128 45
	.uleb128 0x14
	.long	.LASF535
	.sleb128 46
	.uleb128 0x14
	.long	.LASF536
	.sleb128 47
	.uleb128 0x14
	.long	.LASF537
	.sleb128 48
	.uleb128 0x14
	.long	.LASF538
	.sleb128 49
	.uleb128 0x14
	.long	.LASF539
	.sleb128 50
	.uleb128 0x14
	.long	.LASF540
	.sleb128 51
	.byte	0
	.uleb128 0x1f
	.long	.LASF541
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x174a
	.uleb128 0x14
	.long	.LASF542
	.sleb128 0
	.uleb128 0x14
	.long	.LASF543
	.sleb128 1
	.uleb128 0x14
	.long	.LASF544
	.sleb128 2
	.uleb128 0x14
	.long	.LASF545
	.sleb128 3
	.uleb128 0x14
	.long	.LASF546
	.sleb128 4
	.uleb128 0x14
	.long	.LASF547
	.sleb128 5
	.uleb128 0x14
	.long	.LASF548
	.sleb128 6
	.uleb128 0x14
	.long	.LASF549
	.sleb128 7
	.uleb128 0x14
	.long	.LASF550
	.sleb128 8
	.uleb128 0x14
	.long	.LASF551
	.sleb128 9
	.uleb128 0x14
	.long	.LASF552
	.sleb128 10
	.uleb128 0x14
	.long	.LASF553
	.sleb128 11
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.long	.LASF554
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x1f
	.long	.LASF555
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x178f
	.uleb128 0x14
	.long	.LASF556
	.sleb128 0
	.uleb128 0x14
	.long	.LASF557
	.sleb128 1
	.uleb128 0x14
	.long	.LASF558
	.sleb128 2
	.uleb128 0x14
	.long	.LASF559
	.sleb128 3
	.uleb128 0x14
	.long	.LASF560
	.sleb128 4
	.uleb128 0x14
	.long	.LASF561
	.sleb128 5
	.uleb128 0x14
	.long	.LASF562
	.sleb128 6
	.byte	0
	.uleb128 0x13
	.long	.LASF563
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x1b8b
	.uleb128 0x14
	.long	.LASF564
	.sleb128 0
	.uleb128 0x20
	.string	"NIL"
	.sleb128 1
	.uleb128 0x14
	.long	.LASF565
	.sleb128 2
	.uleb128 0x14
	.long	.LASF566
	.sleb128 3
	.uleb128 0x14
	.long	.LASF567
	.sleb128 4
	.uleb128 0x14
	.long	.LASF568
	.sleb128 5
	.uleb128 0x14
	.long	.LASF569
	.sleb128 6
	.uleb128 0x14
	.long	.LASF570
	.sleb128 7
	.uleb128 0x14
	.long	.LASF571
	.sleb128 8
	.uleb128 0x14
	.long	.LASF572
	.sleb128 9
	.uleb128 0x14
	.long	.LASF573
	.sleb128 10
	.uleb128 0x14
	.long	.LASF574
	.sleb128 11
	.uleb128 0x14
	.long	.LASF575
	.sleb128 12
	.uleb128 0x14
	.long	.LASF576
	.sleb128 13
	.uleb128 0x14
	.long	.LASF577
	.sleb128 14
	.uleb128 0x14
	.long	.LASF578
	.sleb128 15
	.uleb128 0x14
	.long	.LASF579
	.sleb128 16
	.uleb128 0x14
	.long	.LASF580
	.sleb128 17
	.uleb128 0x14
	.long	.LASF581
	.sleb128 18
	.uleb128 0x14
	.long	.LASF582
	.sleb128 19
	.uleb128 0x14
	.long	.LASF583
	.sleb128 20
	.uleb128 0x14
	.long	.LASF584
	.sleb128 21
	.uleb128 0x14
	.long	.LASF585
	.sleb128 22
	.uleb128 0x14
	.long	.LASF586
	.sleb128 23
	.uleb128 0x14
	.long	.LASF587
	.sleb128 24
	.uleb128 0x14
	.long	.LASF588
	.sleb128 25
	.uleb128 0x14
	.long	.LASF589
	.sleb128 26
	.uleb128 0x14
	.long	.LASF590
	.sleb128 27
	.uleb128 0x14
	.long	.LASF591
	.sleb128 28
	.uleb128 0x14
	.long	.LASF592
	.sleb128 29
	.uleb128 0x14
	.long	.LASF593
	.sleb128 30
	.uleb128 0x14
	.long	.LASF594
	.sleb128 31
	.uleb128 0x14
	.long	.LASF595
	.sleb128 32
	.uleb128 0x14
	.long	.LASF596
	.sleb128 33
	.uleb128 0x14
	.long	.LASF597
	.sleb128 34
	.uleb128 0x14
	.long	.LASF598
	.sleb128 35
	.uleb128 0x14
	.long	.LASF599
	.sleb128 36
	.uleb128 0x14
	.long	.LASF600
	.sleb128 37
	.uleb128 0x14
	.long	.LASF601
	.sleb128 38
	.uleb128 0x14
	.long	.LASF602
	.sleb128 39
	.uleb128 0x14
	.long	.LASF603
	.sleb128 40
	.uleb128 0x14
	.long	.LASF604
	.sleb128 41
	.uleb128 0x14
	.long	.LASF605
	.sleb128 42
	.uleb128 0x14
	.long	.LASF606
	.sleb128 43
	.uleb128 0x14
	.long	.LASF607
	.sleb128 44
	.uleb128 0x14
	.long	.LASF608
	.sleb128 45
	.uleb128 0x14
	.long	.LASF609
	.sleb128 46
	.uleb128 0x20
	.string	"SET"
	.sleb128 47
	.uleb128 0x20
	.string	"USE"
	.sleb128 48
	.uleb128 0x14
	.long	.LASF610
	.sleb128 49
	.uleb128 0x14
	.long	.LASF611
	.sleb128 50
	.uleb128 0x14
	.long	.LASF612
	.sleb128 51
	.uleb128 0x14
	.long	.LASF613
	.sleb128 52
	.uleb128 0x14
	.long	.LASF614
	.sleb128 53
	.uleb128 0x14
	.long	.LASF615
	.sleb128 54
	.uleb128 0x14
	.long	.LASF616
	.sleb128 55
	.uleb128 0x14
	.long	.LASF617
	.sleb128 56
	.uleb128 0x14
	.long	.LASF618
	.sleb128 57
	.uleb128 0x14
	.long	.LASF619
	.sleb128 58
	.uleb128 0x20
	.string	"PC"
	.sleb128 59
	.uleb128 0x14
	.long	.LASF620
	.sleb128 60
	.uleb128 0x20
	.string	"REG"
	.sleb128 61
	.uleb128 0x14
	.long	.LASF621
	.sleb128 62
	.uleb128 0x14
	.long	.LASF622
	.sleb128 63
	.uleb128 0x14
	.long	.LASF623
	.sleb128 64
	.uleb128 0x14
	.long	.LASF624
	.sleb128 65
	.uleb128 0x20
	.string	"MEM"
	.sleb128 66
	.uleb128 0x14
	.long	.LASF625
	.sleb128 67
	.uleb128 0x14
	.long	.LASF626
	.sleb128 68
	.uleb128 0x20
	.string	"CC0"
	.sleb128 69
	.uleb128 0x14
	.long	.LASF627
	.sleb128 70
	.uleb128 0x14
	.long	.LASF628
	.sleb128 71
	.uleb128 0x14
	.long	.LASF629
	.sleb128 72
	.uleb128 0x14
	.long	.LASF630
	.sleb128 73
	.uleb128 0x14
	.long	.LASF631
	.sleb128 74
	.uleb128 0x14
	.long	.LASF632
	.sleb128 75
	.uleb128 0x14
	.long	.LASF633
	.sleb128 76
	.uleb128 0x20
	.string	"NEG"
	.sleb128 77
	.uleb128 0x14
	.long	.LASF634
	.sleb128 78
	.uleb128 0x20
	.string	"DIV"
	.sleb128 79
	.uleb128 0x20
	.string	"MOD"
	.sleb128 80
	.uleb128 0x14
	.long	.LASF635
	.sleb128 81
	.uleb128 0x14
	.long	.LASF636
	.sleb128 82
	.uleb128 0x20
	.string	"AND"
	.sleb128 83
	.uleb128 0x20
	.string	"IOR"
	.sleb128 84
	.uleb128 0x20
	.string	"XOR"
	.sleb128 85
	.uleb128 0x20
	.string	"NOT"
	.sleb128 86
	.uleb128 0x14
	.long	.LASF637
	.sleb128 87
	.uleb128 0x14
	.long	.LASF638
	.sleb128 88
	.uleb128 0x14
	.long	.LASF639
	.sleb128 89
	.uleb128 0x14
	.long	.LASF640
	.sleb128 90
	.uleb128 0x14
	.long	.LASF641
	.sleb128 91
	.uleb128 0x14
	.long	.LASF642
	.sleb128 92
	.uleb128 0x14
	.long	.LASF643
	.sleb128 93
	.uleb128 0x14
	.long	.LASF644
	.sleb128 94
	.uleb128 0x14
	.long	.LASF645
	.sleb128 95
	.uleb128 0x14
	.long	.LASF646
	.sleb128 96
	.uleb128 0x14
	.long	.LASF647
	.sleb128 97
	.uleb128 0x14
	.long	.LASF648
	.sleb128 98
	.uleb128 0x14
	.long	.LASF649
	.sleb128 99
	.uleb128 0x14
	.long	.LASF650
	.sleb128 100
	.uleb128 0x14
	.long	.LASF651
	.sleb128 101
	.uleb128 0x20
	.string	"NE"
	.sleb128 102
	.uleb128 0x20
	.string	"EQ"
	.sleb128 103
	.uleb128 0x20
	.string	"GE"
	.sleb128 104
	.uleb128 0x20
	.string	"GT"
	.sleb128 105
	.uleb128 0x20
	.string	"LE"
	.sleb128 106
	.uleb128 0x20
	.string	"LT"
	.sleb128 107
	.uleb128 0x20
	.string	"GEU"
	.sleb128 108
	.uleb128 0x20
	.string	"GTU"
	.sleb128 109
	.uleb128 0x20
	.string	"LEU"
	.sleb128 110
	.uleb128 0x20
	.string	"LTU"
	.sleb128 111
	.uleb128 0x14
	.long	.LASF652
	.sleb128 112
	.uleb128 0x14
	.long	.LASF653
	.sleb128 113
	.uleb128 0x14
	.long	.LASF654
	.sleb128 114
	.uleb128 0x14
	.long	.LASF655
	.sleb128 115
	.uleb128 0x14
	.long	.LASF656
	.sleb128 116
	.uleb128 0x14
	.long	.LASF657
	.sleb128 117
	.uleb128 0x14
	.long	.LASF658
	.sleb128 118
	.uleb128 0x14
	.long	.LASF659
	.sleb128 119
	.uleb128 0x14
	.long	.LASF660
	.sleb128 120
	.uleb128 0x14
	.long	.LASF661
	.sleb128 121
	.uleb128 0x14
	.long	.LASF662
	.sleb128 122
	.uleb128 0x14
	.long	.LASF663
	.sleb128 123
	.uleb128 0x14
	.long	.LASF664
	.sleb128 124
	.uleb128 0x14
	.long	.LASF665
	.sleb128 125
	.uleb128 0x20
	.string	"FIX"
	.sleb128 126
	.uleb128 0x14
	.long	.LASF666
	.sleb128 127
	.uleb128 0x14
	.long	.LASF667
	.sleb128 128
	.uleb128 0x20
	.string	"ABS"
	.sleb128 129
	.uleb128 0x14
	.long	.LASF668
	.sleb128 130
	.uleb128 0x20
	.string	"FFS"
	.sleb128 131
	.uleb128 0x14
	.long	.LASF669
	.sleb128 132
	.uleb128 0x14
	.long	.LASF670
	.sleb128 133
	.uleb128 0x14
	.long	.LASF671
	.sleb128 134
	.uleb128 0x14
	.long	.LASF672
	.sleb128 135
	.uleb128 0x14
	.long	.LASF673
	.sleb128 136
	.uleb128 0x14
	.long	.LASF674
	.sleb128 137
	.uleb128 0x14
	.long	.LASF675
	.sleb128 138
	.uleb128 0x14
	.long	.LASF676
	.sleb128 139
	.uleb128 0x14
	.long	.LASF677
	.sleb128 140
	.uleb128 0x14
	.long	.LASF678
	.sleb128 141
	.uleb128 0x14
	.long	.LASF679
	.sleb128 142
	.uleb128 0x14
	.long	.LASF680
	.sleb128 143
	.uleb128 0x14
	.long	.LASF681
	.sleb128 144
	.uleb128 0x14
	.long	.LASF682
	.sleb128 145
	.uleb128 0x14
	.long	.LASF683
	.sleb128 146
	.uleb128 0x14
	.long	.LASF684
	.sleb128 147
	.uleb128 0x14
	.long	.LASF685
	.sleb128 148
	.uleb128 0x14
	.long	.LASF686
	.sleb128 149
	.uleb128 0x14
	.long	.LASF687
	.sleb128 150
	.uleb128 0x14
	.long	.LASF688
	.sleb128 151
	.uleb128 0x20
	.string	"PHI"
	.sleb128 152
	.uleb128 0x14
	.long	.LASF689
	.sleb128 153
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x1c0c
	.uleb128 0x5
	.long	.LASF690
	.byte	0x2
	.byte	0x47
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF691
	.byte	0x2
	.byte	0x49
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF692
	.byte	0x2
	.byte	0x4a
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF693
	.byte	0x2
	.byte	0x4c
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF694
	.byte	0x2
	.byte	0x4e
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF695
	.byte	0x2
	.byte	0x50
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF696
	.byte	0x2
	.byte	0x53
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF697
	.byte	0x2
	.byte	0x55
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF698
	.byte	0x2
	.byte	0x56
	.long	0x1b8b
	.uleb128 0x19
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x1c5c
	.uleb128 0x8
	.long	.LASF699
	.byte	0x2
	.byte	0x5e
	.long	0x1f5
	.byte	0
	.uleb128 0x8
	.long	.LASF700
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF701
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF422
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF434
	.byte	0x2
	.byte	0x62
	.long	0x1ec
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF702
	.byte	0x2
	.byte	0x63
	.long	0x1c17
	.uleb128 0x21
	.long	.LASF704
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x1d02
	.uleb128 0x22
	.long	.LASF705
	.byte	0x2
	.byte	0x69
	.long	0x1f5
	.uleb128 0x22
	.long	.LASF706
	.byte	0x2
	.byte	0x6a
	.long	0x1de
	.uleb128 0x22
	.long	.LASF707
	.byte	0x2
	.byte	0x6b
	.long	0x1ec
	.uleb128 0x22
	.long	.LASF708
	.byte	0x2
	.byte	0x6c
	.long	0x237
	.uleb128 0x23
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x22
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x22
	.long	.LASF709
	.byte	0x2
	.byte	0x6f
	.long	0x277
	.uleb128 0x22
	.long	.LASF710
	.byte	0x2
	.byte	0x70
	.long	0x1c0c
	.uleb128 0x22
	.long	.LASF711
	.byte	0x2
	.byte	0x71
	.long	0x1d07
	.uleb128 0x22
	.long	.LASF712
	.byte	0x2
	.byte	0x72
	.long	0x1d12
	.uleb128 0x22
	.long	.LASF713
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x23
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x1d1d
	.uleb128 0x22
	.long	.LASF714
	.byte	0x2
	.byte	0x75
	.long	0x1d23
	.byte	0
	.uleb128 0x1e
	.long	.LASF715
	.uleb128 0x3
	.byte	0x8
	.long	0x1d02
	.uleb128 0x1e
	.long	.LASF716
	.uleb128 0x3
	.byte	0x8
	.long	0x1d0d
	.uleb128 0x1e
	.long	.LASF717
	.uleb128 0x3
	.byte	0x8
	.long	0x1d18
	.uleb128 0x3
	.byte	0x8
	.long	0x1c5c
	.uleb128 0x7
	.long	.LASF718
	.byte	0x2
	.byte	0x76
	.long	0x1c67
	.uleb128 0x1a
	.long	0x1d29
	.long	0x1d44
	.uleb128 0x1b
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2d
	.long	0x1d54
	.uleb128 0x1b
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF719
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0x1e03
	.uleb128 0x14
	.long	.LASF720
	.sleb128 -100
	.uleb128 0x14
	.long	.LASF721
	.sleb128 -99
	.uleb128 0x14
	.long	.LASF722
	.sleb128 -98
	.uleb128 0x14
	.long	.LASF723
	.sleb128 -97
	.uleb128 0x14
	.long	.LASF724
	.sleb128 -96
	.uleb128 0x14
	.long	.LASF725
	.sleb128 -95
	.uleb128 0x14
	.long	.LASF726
	.sleb128 -94
	.uleb128 0x14
	.long	.LASF727
	.sleb128 -93
	.uleb128 0x14
	.long	.LASF728
	.sleb128 -92
	.uleb128 0x14
	.long	.LASF729
	.sleb128 -91
	.uleb128 0x14
	.long	.LASF730
	.sleb128 -90
	.uleb128 0x14
	.long	.LASF731
	.sleb128 -89
	.uleb128 0x14
	.long	.LASF732
	.sleb128 -88
	.uleb128 0x14
	.long	.LASF733
	.sleb128 -87
	.uleb128 0x14
	.long	.LASF734
	.sleb128 -86
	.uleb128 0x14
	.long	.LASF735
	.sleb128 -85
	.uleb128 0x14
	.long	.LASF736
	.sleb128 -84
	.uleb128 0x14
	.long	.LASF737
	.sleb128 -83
	.uleb128 0x14
	.long	.LASF738
	.sleb128 -82
	.uleb128 0x14
	.long	.LASF739
	.sleb128 -81
	.uleb128 0x14
	.long	.LASF740
	.sleb128 -80
	.uleb128 0x14
	.long	.LASF741
	.sleb128 -79
	.uleb128 0x14
	.long	.LASF742
	.sleb128 -78
	.byte	0
	.uleb128 0x1f
	.long	.LASF743
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x1e59
	.uleb128 0x14
	.long	.LASF744
	.sleb128 0
	.uleb128 0x14
	.long	.LASF745
	.sleb128 1
	.uleb128 0x14
	.long	.LASF746
	.sleb128 2
	.uleb128 0x14
	.long	.LASF747
	.sleb128 3
	.uleb128 0x14
	.long	.LASF748
	.sleb128 4
	.uleb128 0x14
	.long	.LASF749
	.sleb128 5
	.uleb128 0x14
	.long	.LASF750
	.sleb128 6
	.uleb128 0x14
	.long	.LASF751
	.sleb128 7
	.uleb128 0x14
	.long	.LASF752
	.sleb128 8
	.uleb128 0x14
	.long	.LASF753
	.sleb128 9
	.uleb128 0x14
	.long	.LASF754
	.sleb128 10
	.uleb128 0x14
	.long	.LASF755
	.sleb128 11
	.byte	0
	.uleb128 0x7
	.long	.LASF756
	.byte	0x9
	.byte	0x2a
	.long	0x1ec
	.uleb128 0x7
	.long	.LASF757
	.byte	0x9
	.byte	0x2f
	.long	0x1e6f
	.uleb128 0x3
	.byte	0x8
	.long	0x1e75
	.uleb128 0x10
	.long	0x1e59
	.long	0x1e84
	.uleb128 0x11
	.long	0x270
	.byte	0
	.uleb128 0x7
	.long	.LASF758
	.byte	0x9
	.byte	0x36
	.long	0x256
	.uleb128 0x7
	.long	.LASF759
	.byte	0x9
	.byte	0x3a
	.long	0x1e9a
	.uleb128 0x3
	.byte	0x8
	.long	0x1ea0
	.uleb128 0x24
	.long	0x1eab
	.uleb128 0x11
	.long	0x1f3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1f3
	.uleb128 0x4
	.long	.LASF760
	.byte	0x48
	.byte	0x9
	.byte	0x47
	.long	0x1f36
	.uleb128 0x8
	.long	.LASF761
	.byte	0x9
	.byte	0x4a
	.long	0x1e64
	.byte	0
	.uleb128 0x8
	.long	.LASF762
	.byte	0x9
	.byte	0x4d
	.long	0x1e84
	.byte	0x8
	.uleb128 0x8
	.long	.LASF763
	.byte	0x9
	.byte	0x50
	.long	0x1e8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF764
	.byte	0x9
	.byte	0x53
	.long	0x1eab
	.byte	0x18
	.uleb128 0x8
	.long	.LASF422
	.byte	0x9
	.byte	0x56
	.long	0x1fc
	.byte	0x20
	.uleb128 0x8
	.long	.LASF765
	.byte	0x9
	.byte	0x59
	.long	0x1fc
	.byte	0x28
	.uleb128 0x8
	.long	.LASF766
	.byte	0x9
	.byte	0x5c
	.long	0x1fc
	.byte	0x30
	.uleb128 0x8
	.long	.LASF767
	.byte	0x9
	.byte	0x60
	.long	0x1ec
	.byte	0x38
	.uleb128 0x8
	.long	.LASF768
	.byte	0x9
	.byte	0x64
	.long	0x1ec
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF769
	.byte	0x9
	.byte	0x68
	.long	0x1de
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	.LASF770
	.byte	0x9
	.byte	0x6b
	.long	0x1f41
	.uleb128 0x3
	.byte	0x8
	.long	0x1eb1
	.uleb128 0x13
	.long	.LASF771
	.byte	0x4
	.byte	0x9
	.byte	0x6e
	.long	0x1f60
	.uleb128 0x14
	.long	.LASF772
	.sleb128 0
	.uleb128 0x14
	.long	.LASF773
	.sleb128 1
	.byte	0
	.uleb128 0x18
	.long	.LASF774
	.byte	0x48
	.byte	0x1
	.value	0x6af
	.long	0x1fab
	.uleb128 0x17
	.long	.LASF0
	.byte	0x1
	.value	0x6b1
	.long	0x435
	.byte	0
	.uleb128 0x17
	.long	.LASF24
	.byte	0x1
	.value	0x6b2
	.long	0x123
	.byte	0x8
	.uleb128 0x16
	.string	"d1"
	.byte	0x1
	.value	0x6b3
	.long	0xcb8
	.byte	0x10
	.uleb128 0x16
	.string	"d2"
	.byte	0x1
	.value	0x6b3
	.long	0xcb8
	.byte	0x28
	.uleb128 0x16
	.string	"t"
	.byte	0x1
	.value	0x6b4
	.long	0x123
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.long	.LASF775
	.byte	0x18
	.byte	0x1
	.value	0x821
	.long	0x1fde
	.uleb128 0x17
	.long	.LASF776
	.byte	0x1
	.value	0x823
	.long	0x123
	.byte	0
	.uleb128 0x17
	.long	.LASF24
	.byte	0x1
	.value	0x824
	.long	0x123
	.byte	0x8
	.uleb128 0x16
	.string	"t"
	.byte	0x1
	.value	0x825
	.long	0x123
	.byte	0x10
	.byte	0
	.uleb128 0x25
	.long	.LASF778
	.byte	0x1
	.byte	0x91
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2025
	.uleb128 0x26
	.long	.LASF777
	.byte	0x1
	.byte	0x92
	.long	0x2025
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"low"
	.byte	0x1
	.byte	0x93
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"hi"
	.byte	0x1
	.byte	0x94
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1f5
	.uleb128 0x25
	.long	.LASF779
	.byte	0x1
	.byte	0xa1
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2072
	.uleb128 0x26
	.long	.LASF777
	.byte	0x1
	.byte	0xa2
	.long	0x2025
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"low"
	.byte	0x1
	.byte	0xa3
	.long	0x2072
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"hi"
	.byte	0x1
	.byte	0xa4
	.long	0x2025
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x207
	.uleb128 0x28
	.long	.LASF782
	.byte	0x1
	.byte	0xb5
	.long	0x1de
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x20de
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.byte	0xb6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF780
	.byte	0x1
	.byte	0xb7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"low"
	.byte	0x1
	.byte	0xb9
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF388
	.byte	0x1
	.byte	0xba
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF781
	.byte	0x1
	.byte	0xbb
	.long	0x1ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.long	.LASF783
	.byte	0x1
	.value	0x108
	.long	0x1de
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2171
	.uleb128 0x2c
	.string	"l1"
	.byte	0x1
	.value	0x109
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"h1"
	.byte	0x1
	.value	0x10a
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.string	"l2"
	.byte	0x1
	.value	0x109
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"h2"
	.byte	0x1
	.value	0x10a
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"lv"
	.byte	0x1
	.value	0x10b
	.long	0x2072
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"hv"
	.byte	0x1
	.value	0x10c
	.long	0x2025
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.value	0x10e
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"h"
	.byte	0x1
	.value	0x10f
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF784
	.byte	0x1
	.value	0x11f
	.long	0x1de
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x21cc
	.uleb128 0x2c
	.string	"l1"
	.byte	0x1
	.value	0x120
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.string	"h1"
	.byte	0x1
	.value	0x121
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"lv"
	.byte	0x1
	.value	0x122
	.long	0x2072
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"hv"
	.byte	0x1
	.value	0x123
	.long	0x2025
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.long	.LASF785
	.byte	0x1
	.value	0x13a
	.long	0x1de
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f3
	.uleb128 0x2c
	.string	"l1"
	.byte	0x1
	.value	0x13b
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2c
	.string	"h1"
	.byte	0x1
	.value	0x13c
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2c
	.string	"l2"
	.byte	0x1
	.value	0x13b
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2c
	.string	"h2"
	.byte	0x1
	.value	0x13c
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2c
	.string	"lv"
	.byte	0x1
	.value	0x13d
	.long	0x2072
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2c
	.string	"hv"
	.byte	0x1
	.value	0x13e
	.long	0x2025
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF776
	.byte	0x1
	.value	0x140
	.long	0x22f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF786
	.byte	0x1
	.value	0x141
	.long	0x22f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF787
	.byte	0x1
	.value	0x142
	.long	0x2303
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF788
	.byte	0x1
	.value	0x143
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x144
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x144
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.value	0x144
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2f
	.long	.LASF789
	.byte	0x1
	.value	0x145
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LASF790
	.byte	0x1
	.value	0x145
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF791
	.byte	0x1
	.value	0x146
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF792
	.byte	0x1
	.value	0x146
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x1a
	.long	0x1f5
	.long	0x2303
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	0x1f5
	.long	0x2313
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x7
	.byte	0
	.uleb128 0x30
	.long	.LASF796
	.byte	0x1
	.value	0x176
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x23a8
	.uleb128 0x2c
	.string	"l1"
	.byte	0x1
	.value	0x177
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"h1"
	.byte	0x1
	.value	0x178
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF793
	.byte	0x1
	.value	0x178
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF781
	.byte	0x1
	.value	0x179
	.long	0x1ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.string	"lv"
	.byte	0x1
	.value	0x17a
	.long	0x2072
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"hv"
	.byte	0x1
	.value	0x17b
	.long	0x2025
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF794
	.byte	0x1
	.value	0x17c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF795
	.byte	0x1
	.value	0x17e
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF797
	.byte	0x1
	.value	0x1b9
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x243d
	.uleb128 0x2c
	.string	"l1"
	.byte	0x1
	.value	0x1ba
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"h1"
	.byte	0x1
	.value	0x1bb
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF793
	.byte	0x1
	.value	0x1bb
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF781
	.byte	0x1
	.value	0x1bc
	.long	0x1ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.string	"lv"
	.byte	0x1
	.value	0x1bd
	.long	0x2072
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"hv"
	.byte	0x1
	.value	0x1be
	.long	0x2025
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF794
	.byte	0x1
	.value	0x1bf
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF795
	.byte	0x1
	.value	0x1c1
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF798
	.byte	0x1
	.value	0x1fb
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x24f2
	.uleb128 0x2c
	.string	"l1"
	.byte	0x1
	.value	0x1fc
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"h1"
	.byte	0x1
	.value	0x1fd
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF793
	.byte	0x1
	.value	0x1fd
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF781
	.byte	0x1
	.value	0x1fe
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.string	"lv"
	.byte	0x1
	.value	0x1ff
	.long	0x2072
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"hv"
	.byte	0x1
	.value	0x200
	.long	0x2025
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"s1l"
	.byte	0x1
	.value	0x202
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"s2l"
	.byte	0x1
	.value	0x202
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"s1h"
	.byte	0x1
	.value	0x203
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"s2h"
	.byte	0x1
	.value	0x203
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF799
	.byte	0x1
	.value	0x214
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x25a7
	.uleb128 0x2c
	.string	"l1"
	.byte	0x1
	.value	0x215
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"h1"
	.byte	0x1
	.value	0x216
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF793
	.byte	0x1
	.value	0x216
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF781
	.byte	0x1
	.value	0x217
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.string	"lv"
	.byte	0x1
	.value	0x218
	.long	0x2072
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.string	"hv"
	.byte	0x1
	.value	0x219
	.long	0x2025
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"s1l"
	.byte	0x1
	.value	0x21b
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"s2l"
	.byte	0x1
	.value	0x21b
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"s1h"
	.byte	0x1
	.value	0x21c
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"s2h"
	.byte	0x1
	.value	0x21c
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF800
	.byte	0x1
	.value	0x232
	.long	0x1de
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x283f
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x235
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x2c
	.string	"uns"
	.byte	0x1
	.value	0x236
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x31
	.long	.LASF801
	.byte	0x1
	.value	0x237
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x31
	.long	.LASF802
	.byte	0x1
	.value	0x238
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x31
	.long	.LASF803
	.byte	0x1
	.value	0x239
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x31
	.long	.LASF804
	.byte	0x1
	.value	0x23a
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x31
	.long	.LASF805
	.byte	0x1
	.value	0x23b
	.long	0x2072
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF806
	.byte	0x1
	.value	0x23c
	.long	0x2025
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF807
	.byte	0x1
	.value	0x23b
	.long	0x2072
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x31
	.long	.LASF808
	.byte	0x1
	.value	0x23c
	.long	0x2025
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2f
	.long	.LASF809
	.byte	0x1
	.value	0x23e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2d
	.string	"num"
	.byte	0x1
	.value	0x23f
	.long	0x283f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"den"
	.byte	0x1
	.value	0x240
	.long	0x22f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.string	"quo"
	.byte	0x1
	.value	0x240
	.long	0x22f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x241
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x241
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF810
	.byte	0x1
	.value	0x242
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF788
	.byte	0x1
	.value	0x243
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LASF811
	.byte	0x1
	.value	0x244
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2f
	.long	.LASF812
	.byte	0x1
	.value	0x245
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF813
	.byte	0x1
	.value	0x246
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2f
	.long	.LASF814
	.byte	0x1
	.value	0x247
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2f
	.long	.LASF780
	.byte	0x1
	.value	0x248
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x33
	.long	.LASF1060
	.byte	0x1
	.value	0x2e8
	.quad	.L62
	.uleb128 0x34
	.long	.LASF845
	.long	0x285f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12314
	.uleb128 0x35
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x27cc
	.uleb128 0x2f
	.long	.LASF815
	.byte	0x1
	.value	0x287
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x287
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2f
	.long	.LASF817
	.byte	0x1
	.value	0x288
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF697
	.byte	0x1
	.value	0x288
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.value	0x2b3
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2f
	.long	.LASF818
	.byte	0x1
	.value	0x313
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.long	.LASF819
	.byte	0x1
	.value	0x314
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF820
	.byte	0x1
	.value	0x315
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2f
	.long	.LASF821
	.byte	0x1
	.value	0x315
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF822
	.byte	0x1
	.value	0x316
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF823
	.byte	0x1
	.value	0x316
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x1f5
	.long	0x284f
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.long	0x230
	.long	0x285f
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.long	0x284f
	.uleb128 0x37
	.long	.LASF824
	.byte	0x1
	.value	0x53f
	.long	0x123
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b2
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0x540
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x542
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0x543
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF825
	.byte	0x1
	.value	0x57d
	.long	0x123
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x29af
	.uleb128 0x2c
	.string	"in"
	.byte	0x1
	.value	0x57e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x57f
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.long	.LASF826
	.byte	0x1
	.value	0x580
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF827
	.byte	0x1
	.value	0x580
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF828
	.byte	0x1
	.value	0x580
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF829
	.byte	0x1
	.value	0x581
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"var"
	.byte	0x1
	.value	0x583
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2d
	.string	"op0"
	.byte	0x1
	.value	0x597
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"op1"
	.byte	0x1
	.value	0x598
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF830
	.byte	0x1
	.value	0x599
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF831
	.byte	0x1
	.value	0x59a
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF832
	.byte	0x1
	.value	0x59a
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF833
	.byte	0x1
	.value	0x59a
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF834
	.byte	0x1
	.value	0x5cf
	.long	0x123
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a0c
	.uleb128 0x2c
	.string	"t1"
	.byte	0x1
	.value	0x5d0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"t2"
	.byte	0x1
	.value	0x5d0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x5d1
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x5d2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x37
	.long	.LASF835
	.byte	0x1
	.value	0x5f2
	.long	0x123
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b59
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x5f3
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x31
	.long	.LASF776
	.byte	0x1
	.value	0x5f4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x31
	.long	.LASF786
	.byte	0x1
	.value	0x5f4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.long	.LASF836
	.byte	0x1
	.value	0x5f5
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF837
	.byte	0x1
	.value	0x5f7
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF838
	.byte	0x1
	.value	0x5f7
	.long	0x207
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF839
	.byte	0x1
	.value	0x5f8
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF840
	.byte	0x1
	.value	0x5f8
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"low"
	.byte	0x1
	.value	0x5f9
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"hi"
	.byte	0x1
	.value	0x5fa
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF841
	.byte	0x1
	.value	0x5fb
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF842
	.byte	0x1
	.value	0x5fc
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x5fd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x5fe
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"uns"
	.byte	0x1
	.value	0x5ff
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF843
	.byte	0x1
	.value	0x600
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF780
	.byte	0x1
	.value	0x602
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF844
	.byte	0x1
	.value	0x603
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x34
	.long	.LASF845
	.long	0x2b69
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12397
	.byte	0
	.uleb128 0x1a
	.long	0x230
	.long	0x2b69
	.uleb128 0x1b
	.long	0x1e5
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.long	0x2b59
	.uleb128 0x38
	.long	.LASF846
	.byte	0x1
	.value	0x6bb
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bbd
	.uleb128 0x31
	.long	.LASF847
	.byte	0x1
	.value	0x6bc
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF848
	.byte	0x1
	.value	0x6be
	.long	0x2bbd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF404
	.byte	0x1
	.value	0x6bf
	.long	0xcb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1f60
	.uleb128 0x37
	.long	.LASF849
	.byte	0x1
	.value	0x6f4
	.long	0x123
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d29
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x6f5
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x31
	.long	.LASF776
	.byte	0x1
	.value	0x6f6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x31
	.long	.LASF786
	.byte	0x1
	.value	0x6f6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x31
	.long	.LASF836
	.byte	0x1
	.value	0x6f7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x34
	.long	.LASF845
	.long	0x2d39
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12439
	.uleb128 0x35
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x2c9a
	.uleb128 0x2d
	.string	"d1"
	.byte	0x1
	.value	0x702
	.long	0xcb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.string	"d2"
	.byte	0x1
	.value	0x703
	.long	0xcb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF780
	.byte	0x1
	.value	0x704
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x705
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2f
	.long	.LASF848
	.byte	0x1
	.value	0x706
	.long	0x1f60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x36
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x72e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2d
	.string	"r1"
	.byte	0x1
	.value	0x72f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2d
	.string	"i1"
	.byte	0x1
	.value	0x730
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2d
	.string	"r2"
	.byte	0x1
	.value	0x731
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2d
	.string	"i2"
	.byte	0x1
	.value	0x732
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x733
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x36
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2f
	.long	.LASF850
	.byte	0x1
	.value	0x755
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x230
	.long	0x2d39
	.uleb128 0x1b
	.long	0x1e5
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.long	0x2d29
	.uleb128 0x39
	.long	.LASF851
	.byte	0x1
	.value	0x781
	.long	0x1e59
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d7b
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x782
	.long	0x270
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x784
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF852
	.byte	0x1
	.value	0x78f
	.long	0x1de
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dd4
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x790
	.long	0x270
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.value	0x791
	.long	0x270
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"xt"
	.byte	0x1
	.value	0x793
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"yt"
	.byte	0x1
	.value	0x794
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF853
	.byte	0x1
	.value	0x7a0
	.long	0x123
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e15
	.uleb128 0x31
	.long	.LASF854
	.byte	0x1
	.value	0x7a1
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF855
	.byte	0x1
	.value	0x7a2
	.long	0x1757
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2e
	.long	.LASF856
	.byte	0x1
	.value	0x7aa
	.long	0x123
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2eb0
	.uleb128 0x31
	.long	.LASF854
	.byte	0x1
	.value	0x7ab
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x7ac
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF857
	.byte	0x1
	.value	0x7ae
	.long	0x1f36
	.uleb128 0x9
	.byte	0x3
	.quad	size_htab.12458
	.uleb128 0x2f
	.long	.LASF858
	.byte	0x1
	.value	0x7af
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	new_const.12459
	.uleb128 0x2f
	.long	.LASF859
	.byte	0x1
	.value	0x7b0
	.long	0x1eab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x7c6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF860
	.byte	0x1
	.value	0x7d6
	.long	0x123
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f22
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x7d7
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.long	.LASF861
	.byte	0x1
	.value	0x7d8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF776
	.byte	0x1
	.value	0x7d8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x7da
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.long	.LASF845
	.long	0x2f32
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12468
	.byte	0
	.uleb128 0x1a
	.long	0x230
	.long	0x2f32
	.uleb128 0x1b
	.long	0x1e5
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.long	0x2f22
	.uleb128 0x2e
	.long	.LASF862
	.byte	0x1
	.value	0x7fb
	.long	0x123
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fa9
	.uleb128 0x31
	.long	.LASF861
	.byte	0x1
	.value	0x7fc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF776
	.byte	0x1
	.value	0x7fc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x7fe
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF863
	.byte	0x1
	.value	0x7ff
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.long	.LASF845
	.long	0x2fa9
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12475
	.byte	0
	.uleb128 0xf
	.long	0x2d29
	.uleb128 0x38
	.long	.LASF864
	.byte	0x1
	.value	0x82c
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fec
	.uleb128 0x31
	.long	.LASF847
	.byte	0x1
	.value	0x82d
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF848
	.byte	0x1
	.value	0x82f
	.long	0x2fec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1fab
	.uleb128 0x37
	.long	.LASF865
	.byte	0x1
	.value	0x83a
	.long	0x123
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3105
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0x83b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x31
	.long	.LASF776
	.byte	0x1
	.value	0x83c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x83e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF780
	.byte	0x1
	.value	0x83f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x35
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x30e3
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x86a
	.long	0xcb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.value	0x86b
	.long	0xcb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"u"
	.byte	0x1
	.value	0x86c
	.long	0xcb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF866
	.byte	0x1
	.value	0x86d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF867
	.byte	0x1
	.value	0x86e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x36
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2d
	.string	"low"
	.byte	0x1
	.value	0x8a4
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF388
	.byte	0x1
	.value	0x8a4
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2f
	.long	.LASF848
	.byte	0x1
	.value	0x8ba
	.long	0x1fab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF868
	.byte	0x1
	.value	0x8e1
	.long	0x123
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x3144
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x8e2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF478
	.byte	0x1
	.value	0x8e4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF869
	.byte	0x1
	.value	0x8fc
	.long	0x123
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3174
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0x8fd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF870
	.byte	0x1
	.value	0x90a
	.long	0x435
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x31b9
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x90b
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF845
	.long	0x31c9
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12516
	.byte	0
	.uleb128 0x1a
	.long	0x230
	.long	0x31c9
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.long	0x31b9
	.uleb128 0x37
	.long	.LASF871
	.byte	0x1
	.value	0x924
	.long	0x435
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x3213
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x925
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.long	.LASF845
	.long	0x3213
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12527
	.byte	0
	.uleb128 0xf
	.long	0x284f
	.uleb128 0x39
	.long	.LASF872
	.byte	0x1
	.value	0x93c
	.long	0x1de
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x324a
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x93d
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF873
	.byte	0x1
	.value	0x94e
	.long	0x1de
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x32c8
	.uleb128 0x31
	.long	.LASF861
	.byte	0x1
	.value	0x94f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF776
	.byte	0x1
	.value	0x94f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF874
	.byte	0x1
	.value	0x950
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2d
	.string	"v1"
	.byte	0x1
	.value	0x981
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"v2"
	.byte	0x1
	.value	0x981
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF875
	.byte	0x1
	.value	0x9f9
	.long	0x1de
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3396
	.uleb128 0x31
	.long	.LASF861
	.byte	0x1
	.value	0x9fa
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF776
	.byte	0x1
	.value	0x9fa
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF876
	.byte	0x1
	.value	0x9fb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF877
	.byte	0x1
	.value	0x9fd
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF878
	.byte	0x1
	.value	0x9fd
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF879
	.byte	0x1
	.value	0x9fe
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF880
	.byte	0x1
	.value	0x9fe
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF881
	.byte	0x1
	.value	0x9fe
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF882
	.byte	0x1
	.value	0x9ff
	.long	0x1ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xa1f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF883
	.byte	0x1
	.value	0xa39
	.long	0x1de
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x3413
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.value	0xa3a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF884
	.byte	0x1
	.value	0xa3b
	.long	0x1751
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF885
	.byte	0x1
	.value	0xa3b
	.long	0x1751
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF886
	.byte	0x1
	.value	0xa3c
	.long	0x250
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xa3e
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF887
	.byte	0x1
	.value	0xa3f
	.long	0x230
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x37
	.long	.LASF888
	.byte	0x1
	.value	0xa98
	.long	0x123
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x34e3
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.value	0xa99
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF889
	.byte	0x1
	.value	0xa9a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF890
	.byte	0x1
	.value	0xa9a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF891
	.byte	0x1
	.value	0xa9a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF892
	.byte	0x1
	.value	0xa9a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xa9c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xa9d
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF887
	.byte	0x1
	.value	0xa9e
	.long	0x230
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x36
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2f
	.long	.LASF861
	.byte	0x1
	.value	0xacd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF776
	.byte	0x1
	.value	0xace
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF893
	.byte	0x1
	.value	0xaee
	.long	0x123
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3540
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0xaef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF478
	.byte	0x1
	.value	0xaef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF894
	.byte	0x1
	.value	0xaef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0xaf1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF895
	.byte	0x1
	.value	0xafc
	.long	0x123
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x359d
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0xafd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF478
	.byte	0x1
	.value	0xafd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF894
	.byte	0x1
	.value	0xafd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0xaff
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF896
	.byte	0x1
	.value	0xb0c
	.long	0x123
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3600
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.value	0xb0d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xb0f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xb10
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF845
	.long	0x3610
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12657
	.byte	0
	.uleb128 0x1a
	.long	0x230
	.long	0x3610
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.long	0x3600
	.uleb128 0x37
	.long	.LASF897
	.byte	0x1
	.value	0xb84
	.long	0x123
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x36a3
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0xb85
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0xb86
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF861
	.byte	0x1
	.value	0xb87
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF776
	.byte	0x1
	.value	0xb87
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0xb89
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF898
	.byte	0x1
	.value	0xb8a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF899
	.byte	0x1
	.value	0xb8a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF900
	.byte	0x1
	.value	0xbb5
	.long	0x123
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3723
	.uleb128 0x31
	.long	.LASF901
	.byte	0x1
	.value	0xbb6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0xbb7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF902
	.byte	0x1
	.value	0xbb8
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.long	.LASF903
	.byte	0x1
	.value	0xbb8
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF904
	.byte	0x1
	.value	0xbb9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF478
	.byte	0x1
	.value	0xbbb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x37
	.long	.LASF905
	.byte	0x1
	.value	0xbd8
	.long	0x123
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x38f4
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0xbd9
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x31
	.long	.LASF906
	.byte	0x1
	.value	0xbda
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.string	"lhs"
	.byte	0x1
	.value	0xbdb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2c
	.string	"rhs"
	.byte	0x1
	.value	0xbdb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF907
	.byte	0x1
	.value	0xbdd
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF908
	.byte	0x1
	.value	0xbdd
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF909
	.byte	0x1
	.value	0xbdd
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF910
	.byte	0x1
	.value	0xbdd
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF911
	.byte	0x1
	.value	0xbdd
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF912
	.byte	0x1
	.value	0xbdd
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xbde
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF913
	.byte	0x1
	.value	0xbdf
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF914
	.byte	0x1
	.value	0xbdf
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF915
	.byte	0x1
	.value	0xbe0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF916
	.byte	0x1
	.value	0xbe1
	.long	0x277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF917
	.byte	0x1
	.value	0xbe1
	.long	0x277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2f
	.long	.LASF918
	.byte	0x1
	.value	0xbe1
	.long	0x277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2f
	.long	.LASF919
	.byte	0x1
	.value	0xbe2
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF920
	.byte	0x1
	.value	0xbe2
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2f
	.long	.LASF921
	.byte	0x1
	.value	0xbe3
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF922
	.byte	0x1
	.value	0xbe3
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2f
	.long	.LASF923
	.byte	0x1
	.value	0xbe4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF924
	.byte	0x1
	.value	0xbe4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF925
	.byte	0x1
	.value	0xbe5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0xbe6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xc49
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF926
	.byte	0x1
	.value	0xc89
	.long	0x123
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x39ef
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0xc8b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF927
	.byte	0x1
	.value	0xc8c
	.long	0x2025
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF928
	.byte	0x1
	.value	0xc8c
	.long	0x2025
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF929
	.byte	0x1
	.value	0xc8d
	.long	0x39ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF930
	.byte	0x1
	.value	0xc8e
	.long	0x250
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF931
	.byte	0x1
	.value	0xc8e
	.long	0x250
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.long	.LASF932
	.byte	0x1
	.value	0xc8f
	.long	0x1751
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF933
	.byte	0x1
	.value	0xc90
	.long	0x1751
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF934
	.byte	0x1
	.value	0xc92
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF925
	.byte	0x1
	.value	0xc93
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF901
	.byte	0x1
	.value	0xc93
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0xc93
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF914
	.byte	0x1
	.value	0xc94
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF425
	.byte	0x1
	.value	0xc95
	.long	0x1ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x277
	.uleb128 0x37
	.long	.LASF935
	.byte	0x1
	.value	0xcc7
	.long	0x1de
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a65
	.uleb128 0x31
	.long	.LASF925
	.byte	0x1
	.value	0xcc8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF422
	.byte	0x1
	.value	0xcc9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xccb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF425
	.byte	0x1
	.value	0xccc
	.long	0x1ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF936
	.byte	0x1
	.value	0xccd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x39
	.long	.LASF937
	.byte	0x1
	.value	0xcdf
	.long	0x1de
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a97
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0xce0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF938
	.byte	0x1
	.value	0xd1c
	.long	0x123
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b66
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0xd1d
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0xd1e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF861
	.byte	0x1
	.value	0xd1f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF939
	.byte	0x1
	.value	0xd20
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF776
	.byte	0x1
	.value	0xd1f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF940
	.byte	0x1
	.value	0xd20
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xd22
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF478
	.byte	0x1
	.value	0xd23
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF941
	.byte	0x1
	.value	0xd24
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF942
	.byte	0x1
	.value	0xd24
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.long	.LASF845
	.long	0x3b66
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12764
	.byte	0
	.uleb128 0xf
	.long	0x2d29
	.uleb128 0x37
	.long	.LASF943
	.byte	0x1
	.value	0xd60
	.long	0x123
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cbf
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0xd61
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.long	.LASF944
	.byte	0x1
	.value	0xd62
	.long	0x250
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.long	.LASF945
	.byte	0x1
	.value	0xd63
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.long	.LASF946
	.byte	0x1
	.value	0xd63
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xd65
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.long	.LASF861
	.byte	0x1
	.value	0xd66
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF776
	.byte	0x1
	.value	0xd66
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xd66
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF947
	.byte	0x1
	.value	0xd67
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF948
	.byte	0x1
	.value	0xd68
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF949
	.byte	0x1
	.value	0xd68
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.string	"low"
	.byte	0x1
	.value	0xd69
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF388
	.byte	0x1
	.value	0xd69
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF950
	.byte	0x1
	.value	0xd69
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF951
	.byte	0x1
	.value	0xd69
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x34
	.long	.LASF845
	.long	0x3cbf
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12799
	.uleb128 0x36
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2f
	.long	.LASF952
	.byte	0x1
	.value	0xe22
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF953
	.byte	0x1
	.value	0xe23
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2f22
	.uleb128 0x37
	.long	.LASF954
	.byte	0x1
	.value	0xe6a
	.long	0x123
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d64
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0xe6b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0xe6c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF948
	.byte	0x1
	.value	0xe6d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.string	"low"
	.byte	0x1
	.value	0xe6e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF388
	.byte	0x1
	.value	0xe6e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF955
	.byte	0x1
	.value	0xe70
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF956
	.byte	0x1
	.value	0xe71
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF404
	.byte	0x1
	.value	0xe71
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x37
	.long	.LASF957
	.byte	0x1
	.value	0xe9a
	.long	0x1de
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e9b
	.uleb128 0x31
	.long	.LASF944
	.byte	0x1
	.value	0xe9b
	.long	0x250
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF945
	.byte	0x1
	.value	0xe9c
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF946
	.byte	0x1
	.value	0xe9c
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF958
	.byte	0x1
	.value	0xe9d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.long	.LASF959
	.byte	0x1
	.value	0xe9e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF960
	.byte	0x1
	.value	0xe9e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.long	.LASF961
	.byte	0x1
	.value	0xe9d
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LASF962
	.byte	0x1
	.value	0xe9e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	.LASF963
	.byte	0x1
	.value	0xe9e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.long	.LASF964
	.byte	0x1
	.value	0xea0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF965
	.byte	0x1
	.value	0xea1
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF966
	.byte	0x1
	.value	0xea2
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xea3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF948
	.byte	0x1
	.value	0xea4
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"low"
	.byte	0x1
	.value	0xea5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF388
	.byte	0x1
	.value	0xea5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF967
	.byte	0x1
	.value	0xea6
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF968
	.byte	0x1
	.value	0xea9
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x37
	.long	.LASF969
	.byte	0x1
	.value	0xf22
	.long	0x123
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fba
	.uleb128 0x2c
	.string	"exp"
	.byte	0x1
	.value	0xf23
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF970
	.byte	0x1
	.value	0xf25
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF958
	.byte	0x1
	.value	0xf27
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF961
	.byte	0x1
	.value	0xf27
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF948
	.byte	0x1
	.value	0xf27
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF959
	.byte	0x1
	.value	0xf28
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF962
	.byte	0x1
	.value	0xf28
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"low"
	.byte	0x1
	.value	0xf28
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF960
	.byte	0x1
	.value	0xf28
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF963
	.byte	0x1
	.value	0xf28
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF388
	.byte	0x1
	.value	0xf28
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"lhs"
	.byte	0x1
	.value	0xf29
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"rhs"
	.byte	0x1
	.value	0xf2a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xf2b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2f
	.long	.LASF16
	.byte	0x1
	.value	0xf54
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF971
	.byte	0x1
	.value	0xf6b
	.long	0x123
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x4043
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0xf6c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.value	0xf6d
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.long	.LASF904
	.byte	0x1
	.value	0xf6e
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF925
	.byte	0x1
	.value	0xf6f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xf71
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF972
	.byte	0x1
	.value	0xf72
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF966
	.byte	0x1
	.value	0xf73
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF973
	.byte	0x1
	.value	0xfab
	.long	0x123
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x4414
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0xfac
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x31
	.long	.LASF974
	.byte	0x1
	.value	0xfad
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2c
	.string	"lhs"
	.byte	0x1
	.value	0xfad
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2c
	.string	"rhs"
	.byte	0x1
	.value	0xfad
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2f
	.long	.LASF975
	.byte	0x1
	.value	0xfb8
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x2f
	.long	.LASF976
	.byte	0x1
	.value	0xfb9
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x2f
	.long	.LASF977
	.byte	0x1
	.value	0xfb9
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2f
	.long	.LASF978
	.byte	0x1
	.value	0xfba
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF979
	.byte	0x1
	.value	0xfba
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF980
	.byte	0x1
	.value	0xfba
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF981
	.byte	0x1
	.value	0xfba
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF982
	.byte	0x1
	.value	0xfbb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF983
	.byte	0x1
	.value	0xfbb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF984
	.byte	0x1
	.value	0xfbb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF985
	.byte	0x1
	.value	0xfbb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF986
	.byte	0x1
	.value	0xfbc
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2f
	.long	.LASF987
	.byte	0x1
	.value	0xfbc
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2f
	.long	.LASF988
	.byte	0x1
	.value	0xfbc
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	.LASF989
	.byte	0x1
	.value	0xfbc
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2f
	.long	.LASF990
	.byte	0x1
	.value	0xfbd
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2f
	.long	.LASF991
	.byte	0x1
	.value	0xfbd
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2f
	.long	.LASF992
	.byte	0x1
	.value	0xfbd
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2f
	.long	.LASF993
	.byte	0x1
	.value	0xfbd
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF994
	.byte	0x1
	.value	0xfbe
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF995
	.byte	0x1
	.value	0xfbe
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF996
	.byte	0x1
	.value	0xfbe
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF997
	.byte	0x1
	.value	0xfbe
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF998
	.byte	0x1
	.value	0xfbf
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF999
	.byte	0x1
	.value	0xfbf
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1000
	.byte	0x1
	.value	0xfbf
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1001
	.byte	0x1
	.value	0xfbf
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1002
	.byte	0x1
	.value	0xfc0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2f
	.long	.LASF1003
	.byte	0x1
	.value	0xfc0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x2f
	.long	.LASF1004
	.byte	0x1
	.value	0xfc0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2f
	.long	.LASF1005
	.byte	0x1
	.value	0xfc0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x2f
	.long	.LASF1006
	.byte	0x1
	.value	0xfc1
	.long	0x277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2f
	.long	.LASF1007
	.byte	0x1
	.value	0xfc1
	.long	0x277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x2f
	.long	.LASF1008
	.byte	0x1
	.value	0xfc1
	.long	0x277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2f
	.long	.LASF1009
	.byte	0x1
	.value	0xfc1
	.long	0x277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x2f
	.long	.LASF1010
	.byte	0x1
	.value	0xfc2
	.long	0x277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2f
	.long	.LASF1011
	.byte	0x1
	.value	0xfc2
	.long	0x277
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x2f
	.long	.LASF1012
	.byte	0x1
	.value	0xfc3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2f
	.long	.LASF1013
	.byte	0x1
	.value	0xfc3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2f
	.long	.LASF1014
	.byte	0x1
	.value	0xfc3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF1015
	.byte	0x1
	.value	0xfc3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2f
	.long	.LASF1016
	.byte	0x1
	.value	0xfc4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2f
	.long	.LASF1017
	.byte	0x1
	.value	0xfc4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.long	.LASF1018
	.byte	0x1
	.value	0xfc4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF1019
	.byte	0x1
	.value	0xfc4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2f
	.long	.LASF1020
	.byte	0x1
	.value	0xfc5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF1021
	.byte	0x1
	.value	0xfc5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF1022
	.byte	0x1
	.value	0xfc6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1023
	.byte	0x1
	.value	0xfc6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF478
	.byte	0x1
	.value	0xfc6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF1024
	.byte	0x1
	.value	0xfc7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF1025
	.byte	0x1
	.value	0xfc7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x2f
	.long	.LASF1026
	.byte	0x1
	.value	0xfc8
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x36
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x10be
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1027
	.byte	0x1
	.value	0x1110
	.long	0x123
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x44c1
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0x1111
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x1113
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF861
	.byte	0x1
	.value	0x1114
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1028
	.byte	0x1
	.value	0x1115
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF1029
	.byte	0x1
	.value	0x1116
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1030
	.byte	0x1
	.value	0x1117
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1031
	.byte	0x1
	.value	0x1118
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1032
	.byte	0x1
	.value	0x1118
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF901
	.byte	0x1
	.value	0x1119
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x37
	.long	.LASF1033
	.byte	0x1
	.value	0x1180
	.long	0x123
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x459a
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0x1181
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.value	0x1182
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x1183
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x31
	.long	.LASF1034
	.byte	0x1
	.value	0x1184
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x1186
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1035
	.byte	0x1
	.value	0x1187
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF863
	.byte	0x1
	.value	0x1188
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"t1"
	.byte	0x1
	.value	0x118b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"t2"
	.byte	0x1
	.value	0x118b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1036
	.byte	0x1
	.value	0x118c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"op0"
	.byte	0x1
	.value	0x118d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"op1"
	.byte	0x1
	.value	0x118d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x37
	.long	.LASF1037
	.byte	0x1
	.value	0x1298
	.long	0x123
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x45e6
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0x1299
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x129a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x129c
	.long	0x435
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1038
	.byte	0x1
	.value	0x12bb
	.long	0x123
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x4646
	.uleb128 0x31
	.long	.LASF404
	.byte	0x1
	.value	0x12bc
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x12bd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x12c6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1039
	.byte	0x1
	.value	0x12d2
	.long	0x1de
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x46a5
	.uleb128 0x31
	.long	.LASF700
	.byte	0x1
	.value	0x12d3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"lim"
	.byte	0x1
	.value	0x12d4
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF1040
	.byte	0x1
	.value	0x12d6
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1041
	.byte	0x1
	.value	0x12d6
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1042
	.byte	0x1
	.value	0x12eb
	.long	0x123
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x4806
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x12ec
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x12ed
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.long	.LASF1043
	.byte	0x1
	.value	0x12ee
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.string	"arg"
	.byte	0x1
	.value	0x12ef
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.long	.LASF1044
	.byte	0x1
	.value	0x12f0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF1045
	.byte	0x1
	.value	0x12f2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1046
	.byte	0x1
	.value	0x12f2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1047
	.byte	0x1
	.value	0x12f2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.string	"lhs"
	.byte	0x1
	.value	0x12f3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"rhs"
	.byte	0x1
	.value	0x12f4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1048
	.byte	0x1
	.value	0x12fd
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1049
	.byte	0x1
	.value	0x12fe
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1050
	.byte	0x1
	.value	0x12ff
	.long	0x1751
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1051
	.byte	0x1
	.value	0x1300
	.long	0x1751
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1052
	.byte	0x1
	.value	0x1303
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1053
	.byte	0x1
	.value	0x1304
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2f
	.long	.LASF1054
	.byte	0x1
	.value	0x1306
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1055
	.byte	0x1
	.value	0x1307
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2f
	.long	.LASF1056
	.byte	0x1
	.value	0x132e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF1057
	.byte	0x1
	.value	0x136c
	.long	0x123
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x535d
	.uleb128 0x31
	.long	.LASF700
	.byte	0x1
	.value	0x136d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x136f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x2d
	.string	"t1"
	.byte	0x1
	.value	0x1370
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0x1371
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x1372
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x2f
	.long	.LASF861
	.byte	0x1
	.value	0x1373
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x2f
	.long	.LASF776
	.byte	0x1
	.value	0x1373
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x1374
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -908
	.uleb128 0x2f
	.long	.LASF855
	.byte	0x1
	.value	0x1375
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x2f
	.long	.LASF1058
	.byte	0x1
	.value	0x1376
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x2f
	.long	.LASF1059
	.byte	0x1
	.value	0x1379
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -900
	.uleb128 0x33
	.long	.LASF1061
	.byte	0x1
	.value	0x16fa
	.quad	.L1025
	.uleb128 0x33
	.long	.LASF1062
	.byte	0x1
	.value	0x15e7
	.quad	.L1149
	.uleb128 0x33
	.long	.LASF1063
	.byte	0x1
	.value	0x162e
	.quad	.L1153
	.uleb128 0x33
	.long	.LASF1064
	.byte	0x1
	.value	0x167c
	.quad	.L1187
	.uleb128 0x33
	.long	.LASF1065
	.byte	0x1
	.value	0x1731
	.quad	.L1027
	.uleb128 0x33
	.long	.LASF1066
	.byte	0x1
	.value	0x1842
	.quad	.L1275
	.uleb128 0x34
	.long	.LASF845
	.long	0x536d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13261
	.uleb128 0x35
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x496e
	.uleb128 0x2f
	.long	.LASF1067
	.byte	0x1
	.value	0x138a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.uleb128 0x35
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x49d3
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x13a4
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -884
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x13a5
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x36
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2d
	.string	"op"
	.byte	0x1
	.value	0x13a8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x2f
	.long	.LASF1067
	.byte	0x1
	.value	0x13a9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x4b09
	.uleb128 0x2f
	.long	.LASF1068
	.byte	0x1
	.value	0x1474
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x2f
	.long	.LASF1069
	.byte	0x1
	.value	0x1475
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2f
	.long	.LASF1070
	.byte	0x1
	.value	0x1476
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2f
	.long	.LASF1071
	.byte	0x1
	.value	0x1477
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x2f
	.long	.LASF1072
	.byte	0x1
	.value	0x1478
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -876
	.uleb128 0x2f
	.long	.LASF1073
	.byte	0x1
	.value	0x1479
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x2f
	.long	.LASF1074
	.byte	0x1
	.value	0x147a
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -868
	.uleb128 0x2f
	.long	.LASF1075
	.byte	0x1
	.value	0x147b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x2f
	.long	.LASF1076
	.byte	0x1
	.value	0x147c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -860
	.uleb128 0x2f
	.long	.LASF1077
	.byte	0x1
	.value	0x147d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x2f
	.long	.LASF1078
	.byte	0x1
	.value	0x147e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -852
	.uleb128 0x2f
	.long	.LASF1079
	.byte	0x1
	.value	0x147f
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x2f
	.long	.LASF1080
	.byte	0x1
	.value	0x1480
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -844
	.uleb128 0x2f
	.long	.LASF1081
	.byte	0x1
	.value	0x1481
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x2f
	.long	.LASF1082
	.byte	0x1
	.value	0x1482
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -836
	.uleb128 0x2f
	.long	.LASF1083
	.byte	0x1
	.value	0x1483
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x2f
	.long	.LASF1084
	.byte	0x1
	.value	0x1484
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -828
	.uleb128 0x2f
	.long	.LASF1085
	.byte	0x1
	.value	0x1485
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.byte	0
	.uleb128 0x35
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x4b2f
	.uleb128 0x2f
	.long	.LASF1086
	.byte	0x1
	.value	0x14c7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x35
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x4b53
	.uleb128 0x2d
	.string	"m"
	.byte	0x1
	.value	0x14f0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.byte	0
	.uleb128 0x35
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x4b98
	.uleb128 0x2d
	.string	"low"
	.byte	0x1
	.value	0x14ff
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF388
	.byte	0x1
	.value	0x1500
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF780
	.byte	0x1
	.value	0x1501
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -820
	.byte	0
	.uleb128 0x35
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x4bdd
	.uleb128 0x2d
	.string	"low"
	.byte	0x1
	.value	0x152a
	.long	0x207
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF388
	.byte	0x1
	.value	0x152b
	.long	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF780
	.byte	0x1
	.value	0x152c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.byte	0
	.uleb128 0x35
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x4c33
	.uleb128 0x2f
	.long	.LASF1087
	.byte	0x1
	.value	0x1589
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x2f
	.long	.LASF1088
	.byte	0x1
	.value	0x1589
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x2f
	.long	.LASF1089
	.byte	0x1
	.value	0x1589
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x2f
	.long	.LASF1090
	.byte	0x1
	.value	0x1589
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.byte	0
	.uleb128 0x35
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x4cfb
	.uleb128 0x2f
	.long	.LASF1091
	.byte	0x1
	.value	0x15a2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x2f
	.long	.LASF1092
	.byte	0x1
	.value	0x15a2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x2f
	.long	.LASF1093
	.byte	0x1
	.value	0x15a2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x2f
	.long	.LASF1094
	.byte	0x1
	.value	0x15a2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x2f
	.long	.LASF1095
	.byte	0x1
	.value	0x15a3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x2f
	.long	.LASF1096
	.byte	0x1
	.value	0x15a3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x2f
	.long	.LASF1097
	.byte	0x1
	.value	0x15a3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x36
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2f
	.long	.LASF1098
	.byte	0x1
	.value	0x15c1
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x2f
	.long	.LASF1099
	.byte	0x1
	.value	0x15c1
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.value	0x15c1
	.long	0x1f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x4deb
	.uleb128 0x2f
	.long	.LASF1100
	.byte	0x1
	.value	0x15ed
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -812
	.uleb128 0x2f
	.long	.LASF1101
	.byte	0x1
	.value	0x15ed
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x36
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2f
	.long	.LASF1102
	.byte	0x1
	.value	0x15f6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x2f
	.long	.LASF1103
	.byte	0x1
	.value	0x15f6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x2f
	.long	.LASF1104
	.byte	0x1
	.value	0x15f7
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x2f
	.long	.LASF1105
	.byte	0x1
	.value	0x15f7
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x35
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x4db7
	.uleb128 0x2f
	.long	.LASF1106
	.byte	0x1
	.value	0x1609
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x2f
	.long	.LASF1107
	.byte	0x1
	.value	0x1609
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.byte	0
	.uleb128 0x36
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2f
	.long	.LASF1108
	.byte	0x1
	.value	0x161b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x2f
	.long	.LASF1109
	.byte	0x1
	.value	0x161b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x4e80
	.uleb128 0x2f
	.long	.LASF1110
	.byte	0x1
	.value	0x1639
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x2f
	.long	.LASF1111
	.byte	0x1
	.value	0x1639
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x2f
	.long	.LASF1112
	.byte	0x1
	.value	0x1639
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x2f
	.long	.LASF1113
	.byte	0x1
	.value	0x1639
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF1114
	.byte	0x1
	.value	0x163a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2f
	.long	.LASF1115
	.byte	0x1
	.value	0x163a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1116
	.byte	0x1
	.value	0x163a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1117
	.byte	0x1
	.value	0x163a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x35
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x4ea6
	.uleb128 0x2d
	.string	"arg"
	.byte	0x1
	.value	0x16f3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.byte	0
	.uleb128 0x35
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x4ecc
	.uleb128 0x2f
	.long	.LASF781
	.byte	0x1
	.value	0x173d
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -796
	.byte	0
	.uleb128 0x35
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x4ef2
	.uleb128 0x2f
	.long	.LASF781
	.byte	0x1
	.value	0x1748
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.byte	0
	.uleb128 0x35
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x4f15
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.value	0x1790
	.long	0xcb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x35
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x4f7b
	.uleb128 0x2d
	.string	"a00"
	.byte	0x1
	.value	0x1854
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2d
	.string	"a01"
	.byte	0x1
	.value	0x1855
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2d
	.string	"a10"
	.byte	0x1
	.value	0x1856
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2d
	.string	"a11"
	.byte	0x1
	.value	0x1857
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF1118
	.byte	0x1
	.value	0x1858
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -788
	.byte	0
	.uleb128 0x35
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x50cd
	.uleb128 0x2f
	.long	.LASF1119
	.byte	0x1
	.value	0x18d5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x2f
	.long	.LASF1120
	.byte	0x1
	.value	0x18d5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2f
	.long	.LASF1121
	.byte	0x1
	.value	0x18d6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -892
	.uleb128 0x35
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x5048
	.uleb128 0x2f
	.long	.LASF1122
	.byte	0x1
	.value	0x18e7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x36
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2f
	.long	.LASF422
	.byte	0x1
	.value	0x18fa
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x2f
	.long	.LASF925
	.byte	0x1
	.value	0x18fe
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2f
	.long	.LASF914
	.byte	0x1
	.value	0x18fe
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2f
	.long	.LASF425
	.byte	0x1
	.value	0x18ff
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x2f
	.long	.LASF1123
	.byte	0x1
	.value	0x1900
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.byte	0
	.byte	0
	.uleb128 0x36
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x2f
	.long	.LASF1122
	.byte	0x1
	.value	0x1929
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x36
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2f
	.long	.LASF422
	.byte	0x1
	.value	0x193a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x2f
	.long	.LASF925
	.byte	0x1
	.value	0x193e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	.LASF914
	.byte	0x1
	.value	0x193e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2f
	.long	.LASF425
	.byte	0x1
	.value	0x193f
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -772
	.uleb128 0x2f
	.long	.LASF1123
	.byte	0x1
	.value	0x1940
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x50f3
	.uleb128 0x2f
	.long	.LASF1124
	.byte	0x1
	.value	0x1966
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.byte	0
	.uleb128 0x35
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x5129
	.uleb128 0x2f
	.long	.LASF1125
	.byte	0x1
	.value	0x1a7d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2f
	.long	.LASF1126
	.byte	0x1
	.value	0x1a7e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x35
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x51d0
	.uleb128 0x2f
	.long	.LASF884
	.byte	0x1
	.value	0x1ad8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF885
	.byte	0x1
	.value	0x1ad8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF886
	.byte	0x1
	.value	0x1ad9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2f
	.long	.LASF440
	.byte	0x1
	.value	0x1ae7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2f
	.long	.LASF439
	.byte	0x1
	.value	0x1ae8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2f
	.long	.LASF1127
	.byte	0x1
	.value	0x1aed
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF1128
	.byte	0x1
	.value	0x1af1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2f
	.long	.LASF1129
	.byte	0x1
	.value	0x1af5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x5236
	.uleb128 0x2f
	.long	.LASF1130
	.byte	0x1
	.value	0x1b45
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF1131
	.byte	0x1
	.value	0x1b46
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2f
	.long	.LASF1132
	.byte	0x1
	.value	0x1b46
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2f
	.long	.LASF1133
	.byte	0x1
	.value	0x1b46
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.long	.LASF1134
	.byte	0x1
	.value	0x1b46
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x35
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0x526c
	.uleb128 0x2f
	.long	.LASF1135
	.byte	0x1
	.value	0x1b61
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2f
	.long	.LASF1136
	.byte	0x1
	.value	0x1b62
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x35
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x52e4
	.uleb128 0x2f
	.long	.LASF786
	.byte	0x1
	.value	0x1bf9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x2f
	.long	.LASF1137
	.byte	0x1
	.value	0x1bfa
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.uleb128 0x36
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x2f
	.long	.LASF1138
	.byte	0x1
	.value	0x1c36
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF1139
	.byte	0x1
	.value	0x1c37
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF1140
	.byte	0x1
	.value	0x1c38
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x533a
	.uleb128 0x2f
	.long	.LASF1100
	.byte	0x1
	.value	0x1d05
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x2f
	.long	.LASF1141
	.byte	0x1
	.value	0x1d06
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x2f
	.long	.LASF1091
	.byte	0x1
	.value	0x1d07
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LASF1092
	.byte	0x1
	.value	0x1d08
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x36
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2d
	.string	"tmp"
	.byte	0x1
	.value	0x1d2e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x230
	.long	0x536d
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	0x535d
	.uleb128 0x37
	.long	.LASF1142
	.byte	0x1
	.value	0x1d62
	.long	0x1de
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x53f1
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x1d63
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"top"
	.byte	0x1
	.value	0x1d64
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF1143
	.byte	0x1
	.value	0x1d65
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x2d
	.string	"op1"
	.byte	0x1
	.value	0x1d7b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"t1"
	.byte	0x1
	.value	0x1d7b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF1144
	.byte	0x1
	.value	0x1da8
	.long	0x1de
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x5421
	.uleb128 0x2c
	.string	"t"
	.byte	0x1
	.value	0x1da9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1145
	.byte	0x1
	.value	0x1de1
	.long	0x1de
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x548e
	.uleb128 0x2c
	.string	"r"
	.byte	0x1
	.value	0x1de2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x2f
	.long	.LASF1146
	.byte	0x1
	.value	0x1df0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1df0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"elt"
	.byte	0x1
	.value	0x1df1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1147
	.byte	0xa
	.byte	0x62
	.long	0x1de
	.uleb128 0x3b
	.long	.LASF1148
	.byte	0xa
	.value	0xc39
	.long	0x1de
	.uleb128 0x3a
	.long	.LASF1149
	.byte	0xb
	.byte	0x3d
	.long	0x1de
	.uleb128 0x3a
	.long	.LASF1150
	.byte	0xb
	.byte	0xcc
	.long	0x1de
	.uleb128 0x3b
	.long	.LASF1151
	.byte	0xb
	.value	0x15a
	.long	0x1de
	.uleb128 0x1a
	.long	0x20e
	.long	0x54d7
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3a
	.long	.LASF1152
	.byte	0x6
	.byte	0x50
	.long	0x54e2
	.uleb128 0xf
	.long	0x54c7
	.uleb128 0x1a
	.long	0x215
	.long	0x54f7
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3a
	.long	.LASF1153
	.byte	0x6
	.byte	0x60
	.long	0x5502
	.uleb128 0xf
	.long	0x54e7
	.uleb128 0x3a
	.long	.LASF1154
	.byte	0x6
	.byte	0xa4
	.long	0x277
	.uleb128 0x1a
	.long	0x230
	.long	0x5522
	.uleb128 0x1b
	.long	0x1e5
	.byte	0xff
	.byte	0
	.uleb128 0x3a
	.long	.LASF1155
	.byte	0x4
	.byte	0x31
	.long	0x5512
	.uleb128 0x1a
	.long	0x1de
	.long	0x553d
	.uleb128 0x1b
	.long	0x1e5
	.byte	0xff
	.byte	0
	.uleb128 0x3a
	.long	.LASF1156
	.byte	0x4
	.byte	0x3c
	.long	0x552d
	.uleb128 0x3b
	.long	.LASF1157
	.byte	0x7
	.value	0x1b5
	.long	0xcb8
	.uleb128 0x3b
	.long	.LASF1158
	.byte	0x7
	.value	0x1b6
	.long	0xcb8
	.uleb128 0x1a
	.long	0x123
	.long	0x5570
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x32
	.byte	0
	.uleb128 0x3b
	.long	.LASF1159
	.byte	0x4
	.value	0x79b
	.long	0x5560
	.uleb128 0x1a
	.long	0x123
	.long	0x558c
	.uleb128 0x1b
	.long	0x1e5
	.byte	0xa
	.byte	0
	.uleb128 0x3b
	.long	.LASF1160
	.byte	0x4
	.value	0x7f8
	.long	0x557c
	.uleb128 0x1a
	.long	0x123
	.long	0x55a8
	.uleb128 0x1b
	.long	0x1e5
	.byte	0x5
	.byte	0
	.uleb128 0x3b
	.long	.LASF1161
	.byte	0x4
	.value	0x97c
	.long	0x5598
	.uleb128 0x3c
	.long	.LASF1162
	.byte	0x1
	.value	0x8f6
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	pedantic_lvalues
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3c
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
.LASF353:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF529:
	.string	"TI_UV16QI_TYPE"
.LASF274:
	.string	"BUILT_IN_CONJ"
.LASF708:
	.string	"rtstr"
.LASF544:
	.string	"itk_unsigned_char"
.LASF167:
	.string	"WITH_CLEANUP_EXPR"
.LASF157:
	.string	"VTABLE_REF"
.LASF1085:
	.string	"final_unsignedp"
.LASF721:
	.string	"NOTE_INSN_DELETED"
.LASF320:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF987:
	.string	"ll_bitpos"
.LASF636:
	.string	"UMOD"
.LASF690:
	.string	"min_align"
.LASF244:
	.string	"POSTINCREMENT_EXPR"
.LASF270:
	.string	"BUILT_IN_FABSF"
.LASF180:
	.string	"FLOOR_MOD_EXPR"
.LASF271:
	.string	"BUILT_IN_FABSL"
.LASF921:
	.string	"lvolatilep"
.LASF797:
	.string	"rshift_double"
.LASF862:
	.string	"size_diffop"
.LASF536:
	.string	"TI_V2SI_TYPE"
.LASF1145:
	.string	"rtl_expr_nonnegative_p"
.LASF1142:
	.string	"multiple_of_p"
.LASF497:
	.string	"TI_UINTSI_TYPE"
.LASF139:
	.string	"COMPLEX_CST"
.LASF420:
	.string	"tree_type"
.LASF197:
	.string	"RROTATE_EXPR"
.LASF233:
	.string	"ADDR_EXPR"
.LASF1082:
	.string	"final_ptr"
.LASF26:
	.string	"block"
.LASF554:
	.string	"_Bool"
.LASF939:
	.string	"upper0_p"
.LASF707:
	.string	"rtuint"
.LASF473:
	.string	"pure_flag"
.LASF1120:
	.string	"varop"
.LASF871:
	.string	"swap_tree_comparison"
.LASF711:
	.string	"rt_cselib"
.LASF580:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF890:
	.string	"new0"
.LASF892:
	.string	"new1"
.LASF222:
	.string	"IN_EXPR"
.LASF640:
	.string	"LSHIFTRT"
.LASF1037:
	.string	"strip_compound_expr"
.LASF1078:
	.string	"inter_float"
.LASF16:
	.string	"common"
.LASF962:
	.string	"low1"
.LASF354:
	.string	"BUILT_IN_EH_RETURN"
.LASF574:
	.string	"MATCH_PAR_DUP"
.LASF933:
	.string	"pand_mask"
.LASF1165:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF893:
	.string	"omit_one_operand"
.LASF635:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF496:
	.string	"TI_UINTHI_TYPE"
.LASF832:
	.string	"neg_conp_p"
.LASF205:
	.string	"TRUTH_AND_EXPR"
.LASF1135:
	.string	"fndecl"
.LASF293:
	.string	"BUILT_IN_STRCPY"
.LASF1159:
	.string	"global_trees"
.LASF1137:
	.string	"comp_code"
.LASF1012:
	.string	"ll_mask"
.LASF568:
	.string	"MATCH_OPERAND"
.LASF516:
	.string	"TI_VOID_TYPE"
.LASF356:
	.string	"BUILT_IN_VARARGS_START"
.LASF397:
	.string	"imag"
.LASF856:
	.string	"size_int_type_wide"
.LASF249:
	.string	"LABEL_EXPR"
.LASF657:
	.string	"UNLE"
.LASF695:
	.string	"max_after_base"
.LASF396:
	.string	"real"
.LASF756:
	.string	"hashval_t"
.LASF783:
	.string	"add_double"
.LASF503:
	.string	"TI_NULL_POINTER"
.LASF1084:
	.string	"final_prec"
.LASF658:
	.string	"UNLT"
.LASF129:
	.string	"FILE_TYPE"
.LASF418:
	.string	"fragment_chain"
.LASF392:
	.string	"tree_string"
.LASF972:
	.string	"modesize"
.LASF427:
	.string	"no_force_blk_flag"
.LASF417:
	.string	"fragment_origin"
.LASF764:
	.string	"entries"
.LASF532:
	.string	"TI_V4SI_TYPE"
.LASF1136:
	.string	"arglist"
.LASF333:
	.string	"BUILT_IN_FWRITE"
.LASF1054:
	.string	"lhs_type"
.LASF68:
	.string	"CTImode"
.LASF374:
	.string	"static_flag"
.LASF937:
	.string	"simple_operand_p"
.LASF207:
	.string	"TRUTH_XOR_EXPR"
.LASF1059:
	.string	"wins"
.LASF1067:
	.string	"subop"
.LASF465:
	.string	"static_dtor_flag"
.LASF393:
	.string	"length"
.LASF169:
	.string	"PLACEHOLDER_EXPR"
.LASF790:
	.string	"neglow"
.LASF448:
	.string	"lang_type"
.LASF188:
	.string	"FLOAT_EXPR"
.LASF456:
	.string	"inline_flag"
.LASF740:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF506:
	.string	"TI_BITSIZE_ZERO"
.LASF1146:
	.string	"units"
.LASF779:
	.string	"decode"
.LASF147:
	.string	"PARM_DECL"
.LASF66:
	.string	"CSImode"
.LASF981:
	.string	"rr_arg"
.LASF312:
	.string	"BUILT_IN_COSL"
.LASF679:
	.string	"VEC_MERGE"
.LASF734:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF949:
	.string	"n_in_p"
.LASF238:
	.string	"CONJ_EXPR"
.LASF799:
	.string	"rrotate_double"
.LASF612:
	.string	"RETURN"
.LASF283:
	.string	"BUILT_IN_BZERO"
.LASF254:
	.string	"LABELED_BLOCK_EXPR"
.LASF922:
	.string	"rvolatilep"
.LASF935:
	.string	"all_ones_mask_p"
.LASF316:
	.string	"BUILT_IN_ARGS_INFO"
.LASF14:
	.string	"elem"
.LASF103:
	.string	"MODE_FLOAT"
.LASF289:
	.string	"BUILT_IN_MEMCMP"
.LASF331:
	.string	"BUILT_IN_FPUTC"
.LASF323:
	.string	"BUILT_IN_RETURN"
.LASF1090:
	.string	"marg"
.LASF1077:
	.string	"inter_ptr"
.LASF830:
	.string	"neg1_p"
.LASF371:
	.string	"unused_0"
.LASF387:
	.string	"unused_1"
.LASF494:
	.string	"TI_INTTI_TYPE"
.LASF332:
	.string	"BUILT_IN_FPUTS"
.LASF255:
	.string	"EXIT_BLOCK_EXPR"
.LASF699:
	.string	"alias"
.LASF696:
	.string	"offset_unsigned"
.LASF72:
	.string	"V2SImode"
.LASF338:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF1143:
	.string	"bottom"
.LASF1004:
	.string	"rl_unsignedp"
.LASF931:
	.string	"pvolatilep"
.LASF126:
	.string	"OFFSET_TYPE"
.LASF513:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF253:
	.string	"LOOP_EXPR"
.LASF599:
	.string	"CODE_LABEL"
.LASF339:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF67:
	.string	"CDImode"
.LASF605:
	.string	"UNSPEC"
.LASF245:
	.string	"VA_ARG_EXPR"
.LASF1015:
	.string	"rr_mask"
.LASF305:
	.string	"BUILT_IN_SIN"
.LASF364:
	.string	"side_effects_flag"
.LASF519:
	.string	"TI_PTRDIFF_TYPE"
.LASF727:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF601:
	.string	"COND_EXEC"
.LASF925:
	.string	"mask"
.LASF615:
	.string	"CONST_INT"
.LASF611:
	.string	"CALL"
.LASF948:
	.string	"in_p"
.LASF1039:
	.string	"count_cond"
.LASF886:
	.string	"save_p"
.LASF475:
	.string	"uninlinable"
.LASF808:
	.string	"hrem"
.LASF162:
	.string	"TARGET_EXPR"
.LASF771:
	.string	"insert_option"
.LASF961:
	.string	"in1_p"
.LASF74:
	.string	"V4QImode"
.LASF590:
	.string	"ATTR"
.LASF352:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF793:
	.string	"count"
.LASF709:
	.string	"rttype"
.LASF1060:
	.string	"finish_up"
.LASF1058:
	.string	"invert"
.LASF751:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF421:
	.string	"values"
.LASF389:
	.string	"tree_int_cst"
.LASF308:
	.string	"BUILT_IN_SINF"
.LASF73:
	.string	"V2DImode"
.LASF311:
	.string	"BUILT_IN_SINL"
.LASF368:
	.string	"readonly_flag"
.LASF916:
	.string	"lmode"
.LASF183:
	.string	"EXACT_DIV_EXPR"
.LASF849:
	.string	"const_binop"
.LASF702:
	.string	"mem_attrs"
.LASF787:
	.string	"prod"
.LASF583:
	.string	"DEFINE_DELAY"
.LASF633:
	.string	"MINUS"
.LASF288:
	.string	"BUILT_IN_MEMCPY"
.LASF150:
	.string	"NAMESPACE_DECL"
.LASF623:
	.string	"STRICT_LOW_PART"
.LASF977:
	.string	"rcode"
.LASF1051:
	.string	"false_rhs"
.LASF155:
	.string	"ARRAY_REF"
.LASF882:
	.string	"correct_width"
.LASF984:
	.string	"rl_inner"
.LASF1118:
	.string	"commutative"
.LASF1006:
	.string	"ll_mode"
.LASF747:
	.string	"GR_FRAME_POINTER"
.LASF363:
	.string	"chain"
.LASF661:
	.string	"ZERO_EXTEND"
.LASF317:
	.string	"BUILT_IN_CONSTANT_P"
.LASF664:
	.string	"FLOAT_TRUNCATE"
.LASF343:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF349:
	.string	"BUILT_IN_DWARF_CFA"
.LASF135:
	.string	"FUNCTION_TYPE"
.LASF964:
	.string	"no_overlap"
.LASF450:
	.string	"tree_decl"
.LASF744:
	.string	"GR_PC"
.LASF83:
	.string	"V2SFmode"
.LASF665:
	.string	"FLOAT"
.LASF99:
	.string	"machine_mode"
.LASF1049:
	.string	"true_rhs"
.LASF134:
	.string	"QUAL_UNION_TYPE"
.LASF821:
	.string	"ltwice"
.LASF714:
	.string	"rtmem"
.LASF967:
	.string	"lowequal"
.LASF674:
	.string	"RANGE_REG"
.LASF712:
	.string	"rtbit"
.LASF250:
	.string	"GOTO_EXPR"
.LASF3:
	.string	"call"
.LASF45:
	.string	"TImode"
.LASF1034:
	.string	"wide_type"
.LASF650:
	.string	"PRE_MODIFY"
.LASF161:
	.string	"INIT_EXPR"
.LASF196:
	.string	"LROTATE_EXPR"
.LASF390:
	.string	"realvaluetype"
.LASF663:
	.string	"FLOAT_EXTEND"
.LASF286:
	.string	"BUILT_IN_INDEX"
.LASF227:
	.string	"NOP_EXPR"
.LASF472:
	.string	"no_limit_stack"
.LASF1156:
	.string	"tree_code_length"
.LASF6:
	.string	"in_struct"
.LASF915:
	.string	"const_p"
.LASF722:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF43:
	.string	"SImode"
.LASF607:
	.string	"ADDR_VEC"
.LASF84:
	.string	"V2DFmode"
.LASF181:
	.string	"ROUND_MOD_EXPR"
.LASF689:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF377:
	.string	"protected_flag"
.LASF1029:
	.string	"comp_const"
.LASF24:
	.string	"type"
.LASF911:
	.string	"nbitpos"
.LASF980:
	.string	"rl_arg"
.LASF946:
	.string	"phigh"
.LASF177:
	.string	"ROUND_DIV_EXPR"
.LASF814:
	.string	"hden"
.LASF1140:
	.string	"comp_type"
.LASF626:
	.string	"SYMBOL_REF"
.LASF720:
	.string	"NOTE_INSN_BIAS"
.LASF1081:
	.string	"final_int"
.LASF1154:
	.string	"word_mode"
.LASF71:
	.string	"V2HImode"
.LASF487:
	.string	"lang_decl"
.LASF192:
	.string	"ABS_EXPR"
.LASF742:
	.string	"NOTE_INSN_MAX"
.LASF874:
	.string	"only_const"
.LASF412:
	.string	"block_num"
.LASF1024:
	.string	"first_bit"
.LASF1095:
	.string	"alt0"
.LASF579:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF805:
	.string	"lquo"
.LASF202:
	.string	"BIT_NOT_EXPR"
.LASF659:
	.string	"LTGT"
.LASF406:
	.string	"tree_exp"
.LASF966:
	.string	"temp"
.LASF904:
	.string	"unsignedp"
.LASF671:
	.string	"HIGH"
.LASF1068:
	.string	"inside_type"
.LASF628:
	.string	"QUEUED"
.LASF1113:
	.string	"minus_lit0"
.LASF1117:
	.string	"minus_lit1"
.LASF1:
	.string	"mode"
.LASF44:
	.string	"DImode"
.LASF204:
	.string	"TRUTH_ORIF_EXPR"
.LASF266:
	.string	"BUILT_IN_ALLOCA"
.LASF1001:
	.string	"rnbitpos"
.LASF1161:
	.string	"sizetype_tab"
.LASF957:
	.string	"merge_ranges"
.LASF550:
	.string	"itk_unsigned_long"
.LASF79:
	.string	"V8HImode"
.LASF649:
	.string	"POST_INC"
.LASF166:
	.string	"METHOD_CALL_EXPR"
.LASF499:
	.string	"TI_UINTTI_TYPE"
.LASF464:
	.string	"static_ctor_flag"
.LASF57:
	.string	"TFmode"
.LASF831:
	.string	"neg_litp_p"
.LASF132:
	.string	"RECORD_TYPE"
.LASF32:
	.string	"unsigned char"
.LASF1102:
	.string	"tree01"
.LASF369:
	.string	"unsigned_flag"
.LASF1021:
	.string	"r_const"
.LASF477:
	.string	"arguments"
.LASF760:
	.string	"htab"
.LASF1023:
	.string	"rntype"
.LASF1153:
	.string	"mode_bitsize"
.LASF518:
	.string	"TI_CONST_PTR_TYPE"
.LASF951:
	.string	"n_high"
.LASF887:
	.string	"class"
.LASF881:
	.string	"primother"
.LASF765:
	.string	"n_elements"
.LASF986:
	.string	"ll_bitsize"
.LASF40:
	.string	"BImode"
.LASF445:
	.string	"alias_set"
.LASF54:
	.string	"SFmode"
.LASF854:
	.string	"number"
.LASF493:
	.string	"TI_INTDI_TYPE"
.LASF785:
	.string	"mul_double"
.LASF852:
	.string	"size_htab_eq"
.LASF1103:
	.string	"tree11"
.LASF430:
	.string	"packed_flag"
.LASF198:
	.string	"BIT_IOR_EXPR"
.LASF267:
	.string	"BUILT_IN_ABS"
.LASF144:
	.string	"CONST_DECL"
.LASF391:
	.string	"tree_real_cst"
.LASF1027:
	.string	"optimize_minmax_comparison"
.LASF149:
	.string	"FIELD_DECL"
.LASF784:
	.string	"neg_double"
.LASF596:
	.string	"JUMP_INSN"
.LASF546:
	.string	"itk_unsigned_short"
.LASF277:
	.string	"BUILT_IN_CREAL"
.LASF107:
	.string	"MODE_COMPLEX_FLOAT"
.LASF930:
	.string	"punsignedp"
.LASF713:
	.string	"rttree"
.LASF455:
	.string	"regdecl_flag"
.LASF273:
	.string	"BUILT_IN_IMAXABS"
.LASF123:
	.string	"BOOLEAN_TYPE"
.LASF947:
	.string	"orig_type"
.LASF719:
	.string	"insn_note"
.LASF1129:
	.string	"low_result"
.LASF1063:
	.string	"associate"
.LASF738:
	.string	"NOTE_INSN_RANGE_END"
.LASF578:
	.string	"DEFINE_SPLIT"
.LASF905:
	.string	"optimize_bit_field_compare"
.LASF342:
	.string	"BUILT_IN_ISGREATER"
.LASF1025:
	.string	"end_bit"
.LASF326:
	.string	"BUILT_IN_TRAP"
.LASF895:
	.string	"pedantic_omit_one_operand"
.LASF617:
	.string	"CONST_VECTOR"
.LASF230:
	.string	"SAVE_EXPR"
.LASF575:
	.string	"MATCH_INSN"
.LASF388:
	.string	"high"
.LASF1033:
	.string	"extract_muldiv"
.LASF262:
	.string	"BUILT_IN_FRONTEND"
.LASF535:
	.string	"TI_V4HI_TYPE"
.LASF918:
	.string	"nmode"
.LASF55:
	.string	"DFmode"
.LASF958:
	.string	"in0_p"
.LASF806:
	.string	"hquo"
.LASF30:
	.string	"size_t"
.LASF609:
	.string	"PREFETCH"
.LASF49:
	.string	"PSImode"
.LASF292:
	.string	"BUILT_IN_STRNCAT"
.LASF673:
	.string	"RANGE_INFO"
.LASF557:
	.string	"SSIZETYPE"
.LASF979:
	.string	"lr_arg"
.LASF770:
	.string	"htab_t"
.LASF704:
	.string	"rtunion_def"
.LASF142:
	.string	"FUNCTION_DECL"
.LASF345:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF589:
	.string	"DEFINE_ATTR"
.LASF558:
	.string	"USIZETYPE"
.LASF163:
	.string	"COND_EXPR"
.LASF591:
	.string	"SET_ATTR"
.LASF63:
	.string	"TCmode"
.LASF971:
	.string	"unextend"
.LASF184:
	.string	"FIX_TRUNC_EXPR"
.LASF666:
	.string	"UNSIGNED_FLOAT"
.LASF802:
	.string	"hnum_orig"
.LASF715:
	.string	"cselib_val_struct"
.LASF1141:
	.string	"kind0"
.LASF794:
	.string	"arith"
.LASF741:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF1130:
	.string	"subtype"
.LASF1157:
	.string	"dconst0"
.LASF120:
	.string	"COMPLEX_TYPE"
.LASF638:
	.string	"ROTATE"
.LASF327:
	.string	"BUILT_IN_PREFETCH"
.LASF194:
	.string	"LSHIFT_EXPR"
.LASF662:
	.string	"TRUNCATE"
.LASF829:
	.string	"negate_p"
.LASF60:
	.string	"SCmode"
.LASF801:
	.string	"lnum_orig"
.LASF876:
	.string	"other"
.LASF1126:
	.string	"newmod"
.LASF1045:
	.string	"test"
.LASF752:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF919:
	.string	"lunsignedp"
.LASF541:
	.string	"integer_type_kind"
.LASF50:
	.string	"PDImode"
.LASF137:
	.string	"INTEGER_CST"
.LASF145:
	.string	"TYPE_DECL"
.LASF510:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF934:
	.string	"and_mask"
.LASF778:
	.string	"encode"
.LASF732:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF442:
	.string	"main_variant"
.LASF1014:
	.string	"rl_mask"
.LASF241:
	.string	"PREDECREMENT_EXPR"
.LASF502:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF515:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF366:
	.string	"addressable_flag"
.LASF593:
	.string	"EQ_ATTR"
.LASF1032:
	.string	"consts_lt"
.LASF926:
	.string	"decode_field_reference"
.LASF512:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF789:
	.string	"toplow"
.LASF93:
	.string	"CCGOCmode"
.LASF990:
	.string	"rl_bitsize"
.LASF624:
	.string	"CONCAT"
.LASF303:
	.string	"BUILT_IN_STRRCHR"
.LASF422:
	.string	"size"
.LASF531:
	.string	"TI_V16SF_TYPE"
.LASF692:
	.string	"min_after_vec"
.LASF511:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF630:
	.string	"COND"
.LASF121:
	.string	"VECTOR_TYPE"
.LASF104:
	.string	"MODE_PARTIAL_INT"
.LASF907:
	.string	"lbitpos"
.LASF899:
	.string	"right"
.LASF812:
	.string	"hnum"
.LASF284:
	.string	"BUILT_IN_BCMP"
.LASF1056:
	.string	"testtype"
.LASF15:
	.string	"tree"
.LASF61:
	.string	"DCmode"
.LASF1097:
	.string	"same"
.LASF1138:
	.string	"comp_op0"
.LASF1139:
	.string	"comp_op1"
.LASF992:
	.string	"rr_bitsize"
.LASF581:
	.string	"DEFINE_COMBINE"
.LASF1163:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF201:
	.string	"BIT_ANDTC_EXPR"
.LASF517:
	.string	"TI_PTR_TYPE"
.LASF22:
	.string	"identifier"
.LASF639:
	.string	"ASHIFTRT"
.LASF91:
	.string	"CCmode"
.LASF355:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF347:
	.string	"BUILT_IN_ISUNORDERED"
.LASF815:
	.string	"num_hi_sig"
.LASF816:
	.string	"den_hi_sig"
.LASF725:
	.string	"NOTE_INSN_LOOP_END"
.LASF998:
	.string	"lnbitsize"
.LASF89:
	.string	"V16SFmode"
.LASF991:
	.string	"rl_bitpos"
.LASF683:
	.string	"SS_PLUS"
.LASF479:
	.string	"initial"
.LASF203:
	.string	"TRUTH_ANDIF_EXPR"
.LASF739:
	.string	"NOTE_INSN_LIVE"
.LASF586:
	.string	"DEFINE_COND_EXEC"
.LASF556:
	.string	"SIZETYPE"
.LASF912:
	.string	"nbitsize"
.LASF863:
	.string	"ctype"
.LASF208:
	.string	"TRUTH_NOT_EXPR"
.LASF582:
	.string	"DEFINE_EXPAND"
.LASF189:
	.string	"NEGATE_EXPR"
.LASF1000:
	.string	"rnbitsize"
.LASF80:
	.string	"V8SImode"
.LASF828:
	.string	"minus_litp"
.LASF595:
	.string	"INSN"
.LASF706:
	.string	"rtint"
.LASF357:
	.string	"BUILT_IN_STDARG_START"
.LASF470:
	.string	"comdat_flag"
.LASF906:
	.string	"compare_type"
.LASF625:
	.string	"LABEL_REF"
.LASF819:
	.string	"habs_rem"
.LASF498:
	.string	"TI_UINTDI_TYPE"
.LASF1038:
	.string	"constant_boolean_node"
.LASF130:
	.string	"ARRAY_TYPE"
.LASF795:
	.string	"signmask"
.LASF508:
	.string	"TI_BITSIZE_UNIT"
.LASF851:
	.string	"size_htab_hash"
.LASF1132:
	.string	"imag0"
.LASF1134:
	.string	"imag1"
.LASF988:
	.string	"lr_bitsize"
.LASF1096:
	.string	"alt1"
.LASF264:
	.string	"BUILT_IN_NORMAL"
.LASF1013:
	.string	"lr_mask"
.LASF211:
	.string	"GT_EXPR"
.LASF920:
	.string	"runsignedp"
.LASF224:
	.string	"CARD_EXPR"
.LASF0:
	.string	"code"
.LASF17:
	.string	"int_cst"
.LASF995:
	.string	"xlr_bitpos"
.LASF514:
	.string	"TI_DOUBLE_TYPE"
.LASF325:
	.string	"BUILT_IN_LONGJMP"
.LASF398:
	.string	"tree_vector"
.LASF1083:
	.string	"final_float"
.LASF128:
	.string	"METHOD_TYPE"
.LASF92:
	.string	"CCGCmode"
.LASF1112:
	.string	"lit0"
.LASF25:
	.string	"list"
.LASF226:
	.string	"CONVERT_EXPR"
.LASF621:
	.string	"SCRATCH"
.LASF78:
	.string	"V8QImode"
.LASF178:
	.string	"TRUNC_MOD_EXPR"
.LASF1044:
	.string	"cond_first_p"
.LASF81:
	.string	"V8DImode"
.LASF110:
	.string	"MAX_MODE_CLASS"
.LASF846:
	.string	"const_binop_1"
.LASF1073:
	.string	"inside_float"
.LASF900:
	.string	"make_bit_field_ref"
.LASF552:
	.string	"itk_unsigned_long_long"
.LASF997:
	.string	"xrr_bitpos"
.LASF174:
	.string	"TRUNC_DIV_EXPR"
.LASF660:
	.string	"SIGN_EXTEND"
.LASF231:
	.string	"UNSAVE_EXPR"
.LASF827:
	.string	"litp"
.LASF950:
	.string	"n_low"
.LASF173:
	.string	"MULT_EXPR"
.LASF404:
	.string	"value"
.LASF682:
	.string	"VEC_DUPLICATE"
.LASF212:
	.string	"GE_EXPR"
.LASF112:
	.string	"ERROR_MARK"
.LASF985:
	.string	"rr_inner"
.LASF850:
	.string	"magsquared"
.LASF1008:
	.string	"rl_mode"
.LASF299:
	.string	"BUILT_IN_STRPBRK"
.LASF834:
	.string	"associate_trees"
.LASF234:
	.string	"REFERENCE_EXPR"
.LASF570:
	.string	"MATCH_DUP"
.LASF179:
	.string	"CEIL_MOD_EXPR"
.LASF735:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF419:
	.string	"address"
.LASF864:
	.string	"fold_convert_1"
.LASF328:
	.string	"BUILT_IN_PUTCHAR"
.LASF877:
	.string	"unsignedp1"
.LASF87:
	.string	"V8SFmode"
.LASF175:
	.string	"CEIL_DIV_EXPR"
.LASF902:
	.string	"bitsize"
.LASF565:
	.string	"INCLUDE"
.LASF318:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF878:
	.string	"unsignedpo"
.LASF700:
	.string	"expr"
.LASF859:
	.string	"slot"
.LASF604:
	.string	"ASM_OPERANDS"
.LASF1087:
	.string	"parg0"
.LASF1088:
	.string	"parg1"
.LASF439:
	.string	"minval"
.LASF95:
	.string	"CCZmode"
.LASF1148:
	.string	"ix86_branch_cost"
.LASF726:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF1119:
	.string	"constop"
.LASF956:
	.string	"utype"
.LASF561:
	.string	"UBITSIZETYPE"
.LASF176:
	.string	"FLOOR_DIV_EXPR"
.LASF114:
	.string	"TREE_LIST"
.LASF1022:
	.string	"lntype"
.LASF576:
	.string	"DEFINE_INSN"
.LASF490:
	.string	"TI_INTQI_TYPE"
.LASF416:
	.string	"abstract_origin"
.LASF141:
	.string	"STRING_CST"
.LASF209:
	.string	"LT_EXPR"
.LASF910:
	.string	"rbitsize"
.LASF608:
	.string	"ADDR_DIFF_VEC"
.LASF199:
	.string	"BIT_XOR_EXPR"
.LASF257:
	.string	"SWITCH_EXPR"
.LASF206:
	.string	"TRUTH_OR_EXPR"
.LASF670:
	.string	"ZERO_EXTRACT"
.LASF603:
	.string	"ASM_INPUT"
.LASF248:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF400:
	.string	"ht_identifier"
.LASF653:
	.string	"ORDERED"
.LASF88:
	.string	"V8DFmode"
.LASF480:
	.string	"assembler_name"
.LASF762:
	.string	"eq_f"
.LASF955:
	.string	"etype"
.LASF897:
	.string	"distribute_bit_expr"
.LASF818:
	.string	"labs_rem"
.LASF190:
	.string	"MIN_EXPR"
.LASF523:
	.string	"TI_UV4SI_TYPE"
.LASF428:
	.string	"needs_constructing_flag"
.LASF667:
	.string	"UNSIGNED_FIX"
.LASF185:
	.string	"FIX_CEIL_EXPR"
.LASF296:
	.string	"BUILT_IN_STRNCMP"
.LASF1047:
	.string	"false_value"
.LASF866:
	.string	"type1"
.LASF395:
	.string	"tree_complex"
.LASF598:
	.string	"BARRIER"
.LASF936:
	.string	"tmask"
.LASF96:
	.string	"CCFPmode"
.LASF210:
	.string	"LE_EXPR"
.LASF597:
	.string	"CALL_INSN"
.LASF478:
	.string	"result"
.LASF592:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF438:
	.string	"name"
.LASF1002:
	.string	"ll_unsignedp"
.LASF567:
	.string	"INSN_LIST"
.LASF800:
	.string	"div_and_round_double"
.LASF675:
	.string	"RANGE_VAR"
.LASF102:
	.string	"MODE_INT"
.LASF18:
	.string	"real_cst"
.LASF191:
	.string	"MAX_EXPR"
.LASF1007:
	.string	"lr_mode"
.LASF2:
	.string	"jump"
.LASF409:
	.string	"tree_block"
.LASF504:
	.string	"TI_SIZE_ZERO"
.LASF414:
	.string	"subblocks"
.LASF769:
	.string	"return_allocation_failure"
.LASF545:
	.string	"itk_short"
.LASF1151:
	.string	"flag_unsafe_math_optimizations"
.LASF290:
	.string	"BUILT_IN_MEMSET"
.LASF676:
	.string	"RANGE_LIVE"
.LASF182:
	.string	"RDIV_EXPR"
.LASF9:
	.string	"frame_related"
.LASF458:
	.string	"virtual_flag"
.LASF432:
	.string	"pointer_depth"
.LASF394:
	.string	"pointer"
.LASF143:
	.string	"LABEL_DECL"
.LASF1123:
	.string	"folded_compare"
.LASF361:
	.string	"END_BUILTINS"
.LASF566:
	.string	"EXPR_LIST"
.LASF559:
	.string	"BITSIZETYPE"
.LASF749:
	.string	"GR_ARG_POINTER"
.LASF1093:
	.string	"arg10"
.LASF1094:
	.string	"arg11"
.LASF27:
	.string	"sizetype"
.LASF1020:
	.string	"l_const"
.LASF938:
	.string	"range_binop"
.LASF685:
	.string	"SS_MINUS"
.LASF853:
	.string	"size_int_wide"
.LASF1017:
	.string	"lr_and_mask"
.LASF572:
	.string	"MATCH_PARALLEL"
.LASF76:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1028:
	.string	"op_code"
.LASF362:
	.string	"tree_common"
.LASF443:
	.string	"binfo"
.LASF507:
	.string	"TI_BITSIZE_ONE"
.LASF33:
	.string	"short unsigned int"
.LASF34:
	.string	"signed char"
.LASF501:
	.string	"TI_INTEGER_ONE"
.LASF571:
	.string	"MATCH_OPERATOR"
.LASF1155:
	.string	"tree_code_type"
.LASF1031:
	.string	"consts_equal"
.LASF643:
	.string	"SMAX"
.LASF403:
	.string	"purpose"
.LASF491:
	.string	"TI_INTHI_TYPE"
.LASF435:
	.string	"pointer_to"
.LASF924:
	.string	"rinner"
.LASF896:
	.string	"invert_truthvalue"
.LASF467:
	.string	"weak_flag"
.LASF483:
	.string	"saved_tree"
.LASF1064:
	.string	"binary"
.LASF405:
	.string	"tree_vec"
.LASF451:
	.string	"filename"
.LASF687:
	.string	"SS_TRUNCATE"
.LASF243:
	.string	"POSTDECREMENT_EXPR"
.LASF1111:
	.string	"con0"
.LASF1115:
	.string	"con1"
.LASF824:
	.string	"negate_expr"
.LASF1089:
	.string	"parg"
.LASF261:
	.string	"NOT_BUILT_IN"
.LASF1066:
	.string	"truth_andor"
.LASF336:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF1042:
	.string	"fold_binary_op_with_conditional_arg"
.LASF963:
	.string	"high1"
.LASF340:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF691:
	.string	"base_after_vec"
.LASF540:
	.string	"TI_MAX"
.LASF77:
	.string	"V4DImode"
.LASF1057:
	.string	"fold"
.LASF373:
	.string	"nothrow_flag"
.LASF1043:
	.string	"cond"
.LASF945:
	.string	"plow"
.LASF247:
	.string	"TRY_FINALLY_EXPR"
.LASF20:
	.string	"string"
.LASF826:
	.string	"conp"
.LASF750:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF1050:
	.string	"false_lhs"
.LASF437:
	.string	"symtab"
.LASF804:
	.string	"hden_orig"
.LASF585:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF686:
	.string	"US_MINUS"
.LASF1036:
	.string	"same_p"
.LASF1133:
	.string	"real1"
.LASF788:
	.string	"carry"
.LASF525:
	.string	"TI_UV8QI_TYPE"
.LASF909:
	.string	"rbitpos"
.LASF213:
	.string	"EQ_EXPR"
.LASF151:
	.string	"COMPONENT_REF"
.LASF669:
	.string	"SIGN_EXTRACT"
.LASF482:
	.string	"live_range_rtl"
.LASF8:
	.string	"integrated"
.LASF809:
	.string	"quo_neg"
.LASF982:
	.string	"ll_inner"
.LASF172:
	.string	"MINUS_EXPR"
.LASF610:
	.string	"CLOBBER"
.LASF441:
	.string	"next_variant"
.LASF108:
	.string	"MODE_VECTOR_INT"
.LASF260:
	.string	"built_in_class"
.LASF1048:
	.string	"true_lhs"
.LASF952:
	.string	"equiv_type"
.LASF678:
	.string	"CALL_PLACEHOLDER"
.LASF767:
	.string	"searches"
.LASF449:
	.string	"function"
.LASF300:
	.string	"BUILT_IN_STRSPN"
.LASF85:
	.string	"V4SFmode"
.LASF858:
	.string	"new_const"
.LASF159:
	.string	"COMPOUND_EXPR"
.LASF993:
	.string	"rr_bitpos"
.LASF495:
	.string	"TI_UINTQI_TYPE"
.LASF872:
	.string	"truth_value_p"
.LASF319:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF423:
	.string	"size_unit"
.LASF335:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF632:
	.string	"PLUS"
.LASF287:
	.string	"BUILT_IN_RINDEX"
.LASF761:
	.string	"hash_f"
.LASF648:
	.string	"POST_DEC"
.LASF42:
	.string	"HImode"
.LASF718:
	.string	"rtunion"
.LASF728:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF106:
	.string	"MODE_COMPLEX_INT"
.LASF1061:
	.string	"bit_ior"
.LASF259:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF869:
	.string	"pedantic_non_lvalue"
.LASF820:
	.string	"labs_den"
.LASF29:
	.string	"long int"
.LASF903:
	.string	"bitpos"
.LASF754:
	.string	"GR_VIRTUAL_CFA"
.LASF125:
	.string	"POINTER_TYPE"
.LASF193:
	.string	"FFS_EXPR"
.LASF117:
	.string	"VOID_TYPE"
.LASF229:
	.string	"VIEW_CONVERT_EXPR"
.LASF489:
	.string	"TI_ERROR_MARK"
.LASF1019:
	.string	"rr_and_mask"
.LASF56:
	.string	"XFmode"
.LASF86:
	.string	"V4DFmode"
.LASF1053:
	.string	"rhs_code"
.LASF4:
	.string	"unchanging"
.LASF462:
	.string	"defer_output"
.LASF537:
	.string	"TI_V2SF_TYPE"
.LASF723:
	.string	"NOTE_INSN_BLOCK_END"
.LASF928:
	.string	"pbitpos"
.LASF1005:
	.string	"rr_unsignedp"
.LASF444:
	.string	"context"
.LASF1149:
	.string	"optimize"
.LASF563:
	.string	"rtx_code"
.LASF170:
	.string	"WITH_RECORD_EXPR"
.LASF488:
	.string	"tree_index"
.LASF1116:
	.string	"lit1"
.LASF1055:
	.string	"rhs_type"
.LASF791:
	.string	"tophigh"
.LASF953:
	.string	"high_positive"
.LASF970:
	.string	"or_op"
.LASF810:
	.string	"work"
.LASF410:
	.string	"handler_block_flag"
.LASF474:
	.string	"non_addressable"
.LASF823:
	.string	"htwice"
.LASF351:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF974:
	.string	"truth_type"
.LASF999:
	.string	"lnbitpos"
.LASF564:
	.string	"UNKNOWN"
.LASF606:
	.string	"UNSPEC_VOLATILE"
.LASF156:
	.string	"ARRAY_RANGE_REF"
.LASF562:
	.string	"TYPE_KIND_LAST"
.LASF298:
	.string	"BUILT_IN_STRSTR"
.LASF461:
	.string	"common_flag"
.LASF731:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF31:
	.string	"long unsigned int"
.LASF469:
	.string	"no_instrument_function_entry_exit"
.LASF370:
	.string	"asm_written_flag"
.LASF263:
	.string	"BUILT_IN_MD"
.LASF11:
	.string	"rtx_def"
.LASF111:
	.string	"tree_code"
.LASF954:
	.string	"build_range_check"
.LASF52:
	.string	"HFmode"
.LASF334:
	.string	"BUILT_IN_FPRINTF"
.LASF365:
	.string	"constant_flag"
.LASF306:
	.string	"BUILT_IN_COS"
.LASF613:
	.string	"TRAP_IF"
.LASF1030:
	.string	"minmax_const"
.LASF766:
	.string	"n_deleted"
.LASF378:
	.string	"bounded_flag"
.LASF148:
	.string	"RESULT_DECL"
.LASF246:
	.string	"TRY_CATCH_EXPR"
.LASF530:
	.string	"TI_V4SF_TYPE"
.LASF402:
	.string	"tree_list"
.LASF64:
	.string	"CQImode"
.LASF973:
	.string	"fold_truthop"
.LASF36:
	.string	"char"
.LASF62:
	.string	"XCmode"
.LASF346:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF927:
	.string	"pbitsize"
.LASF1150:
	.string	"pedantic"
.LASF265:
	.string	"built_in_function"
.LASF228:
	.string	"NON_LVALUE_EXPR"
.LASF705:
	.string	"rtwint"
.LASF471:
	.string	"malloc_flag"
.LASF773:
	.string	"INSERT"
.LASF641:
	.string	"ROTATERT"
.LASF425:
	.string	"precision"
.LASF627:
	.string	"ADDRESSOF"
.LASF153:
	.string	"INDIRECT_REF"
.LASF813:
	.string	"lden"
.LASF70:
	.string	"V2QImode"
.LASF251:
	.string	"RETURN_EXPR"
.LASF280:
	.string	"BUILT_IN_CIMAG"
.LASF321:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF48:
	.string	"PHImode"
.LASF407:
	.string	"complexity"
.LASF429:
	.string	"transparent_union_flag"
.LASF555:
	.string	"size_type_kind"
.LASF69:
	.string	"COImode"
.LASF1046:
	.string	"true_value"
.LASF646:
	.string	"PRE_DEC"
.LASF1052:
	.string	"lhs_code"
.LASF1011:
	.string	"rnmode"
.LASF730:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF836:
	.string	"notrunc"
.LASF748:
	.string	"GR_HARD_FRAME_POINTER"
.LASF434:
	.string	"align"
.LASF348:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF542:
	.string	"itk_char"
.LASF509:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF883:
	.string	"twoval_comparison_p"
.LASF101:
	.string	"MODE_RANDOM"
.LASF684:
	.string	"US_PLUS"
.LASF1160:
	.string	"integer_types"
.LASF90:
	.string	"BLKmode"
.LASF1075:
	.string	"inside_unsignedp"
.LASF59:
	.string	"HCmode"
.LASF164:
	.string	"BIND_EXPR"
.LASF236:
	.string	"FDESC_EXPR"
.LASF1109:
	.string	"tree011"
.LASF1131:
	.string	"real0"
.LASF528:
	.string	"TI_UV2SF_TYPE"
.LASF171:
	.string	"PLUS_EXPR"
.LASF534:
	.string	"TI_V8QI_TYPE"
.LASF757:
	.string	"htab_hash"
.LASF867:
	.string	"no_upper_bound"
.LASF539:
	.string	"TI_MAIN_IDENTIFIER"
.LASF297:
	.string	"BUILT_IN_STRLEN"
.LASF133:
	.string	"UNION_TYPE"
.LASF618:
	.string	"CONST_STRING"
.LASF681:
	.string	"VEC_CONCAT"
.LASF235:
	.string	"ENTRY_VALUE_EXPR"
.LASF833:
	.string	"neg_var_p"
.LASF315:
	.string	"BUILT_IN_NEXT_ARG"
.LASF798:
	.string	"lrotate_double"
.LASF693:
	.string	"max_after_vec"
.LASF446:
	.string	"lang_specific"
.LASF868:
	.string	"non_lvalue"
.LASF860:
	.string	"size_binop"
.LASF459:
	.string	"ignored_flag"
.LASF1098:
	.string	"int01"
.LASF594:
	.string	"ATTR_FLAG"
.LASF677:
	.string	"CONSTANT_P_RTX"
.LASF1100:
	.string	"code0"
.LASF1101:
	.string	"code1"
.LASF97:
	.string	"CCFPUmode"
.LASF584:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF466:
	.string	"artificial_flag"
.LASF588:
	.string	"ADDRESS"
.LASF865:
	.string	"fold_convert"
.LASF960:
	.string	"high0"
.LASF216:
	.string	"ORDERED_EXPR"
.LASF359:
	.string	"BUILT_IN_VA_COPY"
.LASF21:
	.string	"complex"
.LASF923:
	.string	"linner"
.LASF729:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF861:
	.string	"arg0"
.LASF776:
	.string	"arg1"
.LASF127:
	.string	"REFERENCE_TYPE"
.LASF888:
	.string	"eval_subst"
.LASF1041:
	.string	"cfalse"
.LASF716:
	.string	"bitmap_head_def"
.LASF825:
	.string	"split_tree"
.LASF415:
	.string	"supercontext"
.LASF844:
	.string	"no_overflow"
.LASF360:
	.string	"BUILT_IN_EXPECT"
.LASF440:
	.string	"maxval"
.LASF215:
	.string	"UNORDERED_EXPR"
.LASF522:
	.string	"TI_UV4SF_TYPE"
.LASF688:
	.string	"US_TRUNCATE"
.LASF382:
	.string	"lang_flag_2"
.LASF857:
	.string	"size_htab"
.LASF301:
	.string	"BUILT_IN_STRCSPN"
.LASF1035:
	.string	"tcode"
.LASF1009:
	.string	"rr_mode"
.LASF223:
	.string	"SET_LE_EXPR"
.LASF848:
	.string	"args"
.LASF538:
	.string	"TI_V16QI_TYPE"
.LASF551:
	.string	"itk_long_long"
.LASF645:
	.string	"UMAX"
.LASF242:
	.string	"PREINCREMENT_EXPR"
.LASF1076:
	.string	"inter_int"
.LASF697:
	.string	"scale"
.LASF452:
	.string	"linenum"
.LASF41:
	.string	"QImode"
.LASF782:
	.string	"force_fit_type"
.LASF1144:
	.string	"tree_expr_nonnegative_p"
.LASF1147:
	.string	"target_flags"
.LASF1080:
	.string	"inter_unsignedp"
.LASF894:
	.string	"omitted"
.LASF219:
	.string	"UNGT_EXPR"
.LASF631:
	.string	"COMPARE"
.LASF847:
	.string	"data"
.LASF746:
	.string	"GR_STACK_POINTER"
.LASF433:
	.string	"user_align"
.LASF268:
	.string	"BUILT_IN_LABS"
.LASF803:
	.string	"lden_orig"
.LASF53:
	.string	"TQFmode"
.LASF913:
	.string	"signed_type"
.LASF367:
	.string	"volatile_flag"
.LASF777:
	.string	"words"
.LASF291:
	.string	"BUILT_IN_STRCAT"
.LASF307:
	.string	"BUILT_IN_SQRTF"
.LASF694:
	.string	"min_after_base"
.LASF310:
	.string	"BUILT_IN_SQRTL"
.LASF932:
	.string	"pmask"
.LASF548:
	.string	"itk_unsigned_int"
.LASF447:
	.string	"off_align"
.LASF944:
	.string	"pin_p"
.LASF258:
	.string	"EXC_PTR_EXPR"
.LASF743:
	.string	"global_rtl_index"
.LASF285:
	.string	"BUILT_IN_FFS"
.LASF372:
	.string	"used_flag"
.LASF1124:
	.string	"width"
.LASF330:
	.string	"BUILT_IN_PRINTF"
.LASF124:
	.string	"CHAR_TYPE"
.LASF898:
	.string	"left"
.LASF424:
	.string	"attributes"
.LASF533:
	.string	"TI_V8HI_TYPE"
.LASF772:
	.string	"NO_INSERT"
.LASF186:
	.string	"FIX_FLOOR_EXPR"
.LASF1062:
	.string	"bit_rotate"
.LASF775:
	.string	"fc_args"
.LASF46:
	.string	"OImode"
.LASF376:
	.string	"private_flag"
.LASF337:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF380:
	.string	"lang_flag_0"
.LASF381:
	.string	"lang_flag_1"
.LASF152:
	.string	"BIT_FIELD_REF"
.LASF383:
	.string	"lang_flag_3"
.LASF384:
	.string	"lang_flag_4"
.LASF385:
	.string	"lang_flag_5"
.LASF386:
	.string	"lang_flag_6"
.LASF476:
	.string	"lang_flag_7"
.LASF873:
	.string	"operand_equal_p"
.LASF220:
	.string	"UNGE_EXPR"
.LASF486:
	.string	"pointer_alias_set"
.LASF680:
	.string	"VEC_SELECT"
.LASF1071:
	.string	"inside_int"
.LASF272:
	.string	"BUILT_IN_LLABS"
.LASF526:
	.string	"TI_UV4HI_TYPE"
.LASF1106:
	.string	"tree110"
.LASF146:
	.string	"VAR_DECL"
.LASF408:
	.string	"operands"
.LASF1079:
	.string	"inter_prec"
.LASF160:
	.string	"MODIFY_EXPR"
.LASF401:
	.string	"tree_identifier"
.LASF879:
	.string	"primarg0"
.LASF109:
	.string	"MODE_VECTOR_FLOAT"
.LASF1065:
	.string	"bit_and"
.LASF115:
	.string	"TREE_VEC"
.LASF651:
	.string	"POST_MODIFY"
.LASF994:
	.string	"xll_bitpos"
.LASF1127:
	.string	"high_result"
.LASF313:
	.string	"BUILT_IN_SAVEREGS"
.LASF252:
	.string	"EXIT_EXPR"
.LASF978:
	.string	"ll_arg"
.LASF976:
	.string	"lcode"
.LASF275:
	.string	"BUILT_IN_CONJF"
.LASF195:
	.string	"RSHIFT_EXPR"
.LASF1099:
	.string	"int11"
.LASF276:
	.string	"BUILT_IN_CONJL"
.LASF577:
	.string	"DEFINE_PEEPHOLE"
.LASF37:
	.string	"long long unsigned int"
.LASF737:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF701:
	.string	"offset"
.LASF698:
	.string	"addr_diff_vec_flags"
.LASF573:
	.string	"MATCH_OP_DUP"
.LASF587:
	.string	"SEQUENCE"
.LASF855:
	.string	"kind"
.LASF113:
	.string	"IDENTIFIER_NODE"
.LASF989:
	.string	"lr_bitpos"
.LASF1072:
	.string	"inside_ptr"
.LASF1070:
	.string	"final_type"
.LASF51:
	.string	"QFmode"
.LASF996:
	.string	"xrl_bitpos"
.LASF481:
	.string	"section_name"
.LASF839:
	.string	"int1h"
.LASF837:
	.string	"int1l"
.LASF217:
	.string	"UNLT_EXPR"
.LASF758:
	.string	"htab_eq"
.LASF136:
	.string	"LANG_TYPE"
.LASF614:
	.string	"RESX"
.LASF1003:
	.string	"lr_unsignedp"
.LASF1016:
	.string	"ll_and_mask"
.LASF1152:
	.string	"mode_size"
.LASF835:
	.string	"int_const_binop"
.LASF602:
	.string	"PARALLEL"
.LASF983:
	.string	"lr_inner"
.LASF13:
	.string	"num_elem"
.LASF500:
	.string	"TI_INTEGER_ZERO"
.LASF1110:
	.string	"var0"
.LASF1114:
	.string	"var1"
.LASF652:
	.string	"UNORDERED"
.LASF98:
	.string	"MAX_MACHINE_MODE"
.LASF1125:
	.string	"newtype"
.LASF840:
	.string	"int2h"
.LASF838:
	.string	"int2l"
.LASF547:
	.string	"itk_int"
.LASF822:
	.string	"habs_den"
.LASF314:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF375:
	.string	"public_flag"
.LASF619:
	.string	"CONST"
.LASF668:
	.string	"SQRT"
.LASF426:
	.string	"string_flag"
.LASF745:
	.string	"GR_CC0"
.LASF100:
	.string	"mode_class"
.LASF634:
	.string	"MULT"
.LASF131:
	.string	"SET_TYPE"
.LASF1104:
	.string	"code01"
.LASF105:
	.string	"MODE_CC"
.LASF413:
	.string	"vars"
.LASF569:
	.string	"MATCH_SCRATCH"
.LASF165:
	.string	"CALL_EXPR"
.LASF47:
	.string	"PQImode"
.LASF200:
	.string	"BIT_AND_EXPR"
.LASF239:
	.string	"REALPART_EXPR"
.LASF901:
	.string	"inner"
.LASF943:
	.string	"make_range"
.LASF218:
	.string	"UNLE_EXPR"
.LASF889:
	.string	"old0"
.LASF891:
	.string	"old1"
.LASF914:
	.string	"unsigned_type"
.LASF492:
	.string	"TI_INTSI_TYPE"
.LASF281:
	.string	"BUILT_IN_CIMAGF"
.LASF454:
	.string	"nonlocal_flag"
.LASF282:
	.string	"BUILT_IN_CIMAGL"
.LASF379:
	.string	"deprecated_flag"
.LASF1121:
	.string	"constopnum"
.LASF1074:
	.string	"inside_prec"
.LASF622:
	.string	"SUBREG"
.LASF431:
	.string	"restrict_flag"
.LASF1164:
	.string	"fold-const.c"
.LASF1105:
	.string	"code11"
.LASF908:
	.string	"lbitsize"
.LASF842:
	.string	"garbageh"
.LASF82:
	.string	"V16QImode"
.LASF841:
	.string	"garbagel"
.LASF269:
	.string	"BUILT_IN_FABS"
.LASF759:
	.string	"htab_del"
.LASF959:
	.string	"low0"
.LASF23:
	.string	"decl"
.LASF240:
	.string	"IMAGPART_EXPR"
.LASF38:
	.string	"long long int"
.LASF527:
	.string	"TI_UV2SI_TYPE"
.LASF1107:
	.string	"tree111"
.LASF484:
	.string	"inlined_fns"
.LASF553:
	.string	"itk_none"
.LASF560:
	.string	"SBITSIZETYPE"
.LASF58:
	.string	"QCmode"
.LASF620:
	.string	"VALUE"
.LASF600:
	.string	"NOTE"
.LASF168:
	.string	"CLEANUP_POINT_EXPR"
.LASF929:
	.string	"pmode"
.LASF755:
	.string	"GR_MAX"
.LASF1026:
	.string	"volatilep"
.LASF644:
	.string	"UMIN"
.LASF524:
	.string	"TI_UV8HI_TYPE"
.LASF138:
	.string	"REAL_CST"
.LASF344:
	.string	"BUILT_IN_ISLESS"
.LASF302:
	.string	"BUILT_IN_STRCHR"
.LASF358:
	.string	"BUILT_IN_VA_END"
.LASF717:
	.string	"basic_block_def"
.LASF436:
	.string	"reference_to"
.LASF1010:
	.string	"lnmode"
.LASF781:
	.string	"prec"
.LASF187:
	.string	"FIX_ROUND_EXPR"
.LASF214:
	.string	"NE_EXPR"
.LASF763:
	.string	"del_f"
.LASF322:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF807:
	.string	"lrem"
.LASF309:
	.string	"BUILT_IN_COSF"
.LASF122:
	.string	"ENUMERAL_TYPE"
.LASF811:
	.string	"lnum"
.LASF724:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF969:
	.string	"fold_range_test"
.LASF65:
	.string	"CHImode"
.LASF1128:
	.string	"equal_result"
.LASF942:
	.string	"sgn1"
.LASF278:
	.string	"BUILT_IN_CREALF"
.LASF158:
	.string	"CONSTRUCTOR"
.LASF941:
	.string	"sgn0"
.LASF411:
	.string	"abstract_flag"
.LASF279:
	.string	"BUILT_IN_CREALL"
.LASF468:
	.string	"non_addr_const_p"
.LASF399:
	.string	"elements"
.LASF792:
	.string	"neghigh"
.LASF543:
	.string	"itk_signed_char"
.LASF616:
	.string	"CONST_DOUBLE"
.LASF780:
	.string	"overflow"
.LASF324:
	.string	"BUILT_IN_SETJMP"
.LASF341:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF549:
	.string	"itk_long"
.LASF94:
	.string	"CCNOmode"
.LASF75:
	.string	"V4HImode"
.LASF880:
	.string	"primarg1"
.LASF975:
	.string	"wanted_code"
.LASF884:
	.string	"cval1"
.LASF885:
	.string	"cval2"
.LASF817:
	.string	"quo_est"
.LASF654:
	.string	"UNEQ"
.LASF1122:
	.string	"newconst"
.LASF116:
	.string	"BLOCK"
.LASF637:
	.string	"ASHIFT"
.LASF521:
	.string	"TI_VOID_LIST_NODE"
.LASF642:
	.string	"SMIN"
.LASF845:
	.string	"__FUNCTION__"
.LASF870:
	.string	"invert_tree_comparison"
.LASF629:
	.string	"IF_THEN_ELSE"
.LASF457:
	.string	"bit_field_flag"
.LASF768:
	.string	"collisions"
.LASF329:
	.string	"BUILT_IN_PUTS"
.LASF460:
	.string	"in_system_header_flag"
.LASF786:
	.string	"arg2"
.LASF463:
	.string	"transparent_union"
.LASF736:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF485:
	.string	"vindex"
.LASF733:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1158:
	.string	"dconst1"
.LASF140:
	.string	"VECTOR_CST"
.LASF28:
	.string	"unsigned int"
.LASF232:
	.string	"RTL_EXPR"
.LASF703:
	.string	"tree_node"
.LASF940:
	.string	"upper1_p"
.LASF875:
	.string	"operand_equal_for_comparison_p"
.LASF647:
	.string	"PRE_INC"
.LASF221:
	.string	"UNEQ_EXPR"
.LASF294:
	.string	"BUILT_IN_STRNCPY"
.LASF118:
	.string	"INTEGER_TYPE"
.LASF655:
	.string	"UNGE"
.LASF1069:
	.string	"inter_type"
.LASF917:
	.string	"rmode"
.LASF968:
	.string	"highequal"
.LASF1018:
	.string	"rl_and_mask"
.LASF453:
	.string	"external_flag"
.LASF35:
	.string	"short int"
.LASF225:
	.string	"RANGE_EXPR"
.LASF656:
	.string	"UNGT"
.LASF796:
	.string	"lshift_double"
.LASF304:
	.string	"BUILT_IN_SQRT"
.LASF154:
	.string	"BUFFER_REF"
.LASF1040:
	.string	"ctrue"
.LASF774:
	.string	"cb_args"
.LASF1086:
	.string	"prev"
.LASF237:
	.string	"COMPLEX_EXPR"
.LASF350:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1091:
	.string	"arg00"
.LASF1092:
	.string	"arg01"
.LASF965:
	.string	"subset"
.LASF39:
	.string	"VOIDmode"
.LASF1108:
	.string	"tree010"
.LASF710:
	.string	"rt_addr_diff_vec_flags"
.LASF520:
	.string	"TI_VA_LIST_TYPE"
.LASF753:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF672:
	.string	"LO_SUM"
.LASF843:
	.string	"is_sizetype"
.LASF295:
	.string	"BUILT_IN_STRCMP"
.LASF119:
	.string	"REAL_TYPE"
.LASF505:
	.string	"TI_SIZE_ONE"
.LASF1162:
	.string	"pedantic_lvalues"
.LASF256:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
