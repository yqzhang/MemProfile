	.file	"io_lat4.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# io_lat4.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	qcdhdr_get_str
	.type	qcdhdr_get_str, @function
qcdhdr_get_str:
.LFB2:
	.file 1 "io_lat4.c"
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# hdr, hdr
	movq	%rdx, -40(%rbp)	# q, q
	.loc 1 103 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 104 0
	movq	-32(%rbp), %rax	# hdr, tmp75
	movq	8(%rax), %rax	# hdr_4(D)->token, D.7918
	movl	-4(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, D.7919
	salq	$3, %rdx	#, D.7919
	addq	%rdx, %rax	# D.7919, D.7918
	movq	(%rax), %rdx	# *_11, D.7920
	movq	-24(%rbp), %rax	# s, tmp77
	movq	%rdx, %rsi	# D.7920,
	movq	%rax, %rdi	# tmp77,
	call	strcmp	#
	testl	%eax, %eax	# D.7916
	jne	.L3	#,
	.loc 1 105 0
	movq	-32(%rbp), %rax	# hdr, tmp78
	movq	16(%rax), %rax	# hdr_4(D)->value, D.7918
	movl	-4(%rbp), %edx	# i, tmp79
	movslq	%edx, %rdx	# tmp79, D.7919
	salq	$3, %rdx	#, D.7919
	addq	%rdx, %rax	# D.7919, D.7918
	movq	(%rax), %rdx	# *_18, D.7920
	movq	-40(%rbp), %rax	# q, tmp80
	movq	%rdx, (%rax)	# D.7920, *q_20(D)
	.loc 1 106 0
	movl	$0, %eax	#, D.7916
	jmp	.L4	#
.L3:
	.loc 1 103 0
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 103 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hdr, tmp81
	movl	(%rax), %eax	# hdr_4(D)->ntoken, D.7916
	movsbl	%al, %eax	# D.7917, D.7916
	cmpl	-4(%rbp), %eax	# i, D.7916
	jg	.L5	#,
	.loc 1 109 0 is_stmt 1
	movq	-40(%rbp), %rax	# q, tmp82
	movq	$0, (%rax)	#, *q_20(D)
	.loc 1 110 0
	movl	$-1, %eax	#, D.7916
.L4:
	.loc 1 111 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	qcdhdr_get_str, .-qcdhdr_get_str
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	qcdhdr_get_int
	.type	qcdhdr_get_int, @function
qcdhdr_get_int:
.LFB3:
	.loc 1 113 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# hdr, hdr
	movq	%rdx, -40(%rbp)	# q, q
	.loc 1 115 0
	leaq	-8(%rbp), %rdx	#, tmp63
	movq	-32(%rbp), %rcx	# hdr, tmp64
	movq	-24(%rbp), %rax	# s, tmp65
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	qcdhdr_get_str	#
	.loc 1 116 0
	movq	-8(%rbp), %rax	# p, p.0
	testq	%rax, %rax	# p.0
	jne	.L7	#,
	.loc 1 116 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.7921
	jmp	.L9	#
.L7:
	.loc 1 117 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, p.1
	movq	-40(%rbp), %rdx	# q, tmp66
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# p.1,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 118 0
	movl	$0, %eax	#, D.7921
.L9:
	.loc 1 119 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	qcdhdr_get_int, .-qcdhdr_get_int
	.section	.rodata
.LC1:
	.string	"%x"
	.text
	.globl	qcdhdr_get_int32x
	.type	qcdhdr_get_int32x, @function
qcdhdr_get_int32x:
.LFB4:
	.loc 1 120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# hdr, hdr
	movq	%rdx, -40(%rbp)	# q, q
	.loc 1 123 0
	leaq	-8(%rbp), %rdx	#, tmp65
	movq	-32(%rbp), %rcx	# hdr, tmp66
	movq	-24(%rbp), %rax	# s, tmp67
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	qcdhdr_get_str	#
	.loc 1 124 0
	movq	-8(%rbp), %rax	# p, p.2
	testq	%rax, %rax	# p.2
	jne	.L11	#,
	.loc 1 124 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.7923
	jmp	.L13	#
.L11:
	.loc 1 125 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, p.3
	leaq	-12(%rbp), %rdx	#, tmp68
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# p.3,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 126 0
	movl	-12(%rbp), %eax	# r, r.4
	movl	%eax, %edx	# r.4, r.5
	movq	-40(%rbp), %rax	# q, tmp69
	movl	%edx, (%rax)	# r.5, *q_9(D)
	.loc 1 127 0
	movl	$0, %eax	#, D.7923
.L13:
	.loc 1 128 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	qcdhdr_get_int32x, .-qcdhdr_get_int32x
	.section	.rodata
.LC2:
	.string	"%lf"
	.text
	.globl	qcdhdr_get_double
	.type	qcdhdr_get_double, @function
qcdhdr_get_double:
.LFB5:
	.loc 1 129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# hdr, hdr
	movq	%rdx, -40(%rbp)	# q, q
	.loc 1 131 0
	leaq	-8(%rbp), %rdx	#, tmp63
	movq	-32(%rbp), %rcx	# hdr, tmp64
	movq	-24(%rbp), %rax	# s, tmp65
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	qcdhdr_get_str	#
	.loc 1 132 0
	movq	-8(%rbp), %rax	# p, p.6
	testq	%rax, %rax	# p.6
	jne	.L15	#,
	.loc 1 132 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.7925
	jmp	.L17	#
.L15:
	.loc 1 133 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, p.7
	movq	-40(%rbp), %rdx	# q, tmp66
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# p.7,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 134 0
	movl	$0, %eax	#, D.7925
.L17:
	.loc 1 135 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	qcdhdr_get_double, .-qcdhdr_get_double
	.globl	error_exit
	.type	error_exit, @function
error_exit:
.LFB6:
	.loc 1 137 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 137 0
	movq	-8(%rbp), %rax	# s, tmp59
	movq	%rax, %rdi	# tmp59,
	call	puts	#
	movl	$1, %edi	#,
	call	terminate	#
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	error_exit, .-error_exit
	.globl	complete_U
	.type	complete_U, @function
complete_U:
.LFB7:
	.loc 1 139 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# u, u
	.loc 1 140 0
	movq	-8(%rbp), %rax	# u, tmp199
	addq	$96, %rax	#, D.7927
	movq	-8(%rbp), %rdx	# u, tmp200
	addq	$16, %rdx	#, D.7927
	movsd	(%rdx), %xmm1	# *_3, D.7928
	movq	-8(%rbp), %rdx	# u, tmp201
	addq	$80, %rdx	#, D.7927
	movsd	(%rdx), %xmm0	# *_5, D.7928
	mulsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rdx	# u, tmp202
	addq	$32, %rdx	#, D.7927
	movsd	(%rdx), %xmm2	# *_8, D.7928
	movq	-8(%rbp), %rdx	# u, tmp203
	addq	$64, %rdx	#, D.7927
	movsd	(%rdx), %xmm1	# *_10, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rdx	# u, tmp204
	addq	$24, %rdx	#, D.7927
	movsd	(%rdx), %xmm2	# *_14, D.7928
	movq	-8(%rbp), %rdx	# u, tmp205
	addq	$88, %rdx	#, D.7927
	movsd	(%rdx), %xmm1	# *_16, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movapd	%xmm0, %xmm1	# D.7928, D.7928
	movq	-8(%rbp), %rdx	# u, tmp206
	addq	$40, %rdx	#, D.7927
	movsd	(%rdx), %xmm2	# *_20, D.7928
	movq	-8(%rbp), %rdx	# u, tmp207
	addq	$72, %rdx	#, D.7927
	movsd	(%rdx), %xmm0	# *_22, D.7928
	mulsd	%xmm2, %xmm0	# D.7928, D.7928
	addsd	%xmm1, %xmm0	# D.7928, D.7928
	movsd	%xmm0, (%rax)	# D.7928, *_2
	.loc 1 141 0
	movq	-8(%rbp), %rax	# u, tmp208
	addq	$104, %rax	#, D.7927
	movq	-8(%rbp), %rdx	# u, tmp209
	addq	$32, %rdx	#, D.7927
	movsd	(%rdx), %xmm1	# *_27, D.7928
	movq	-8(%rbp), %rdx	# u, tmp210
	addq	$72, %rdx	#, D.7927
	movsd	(%rdx), %xmm0	# *_29, D.7928
	mulsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rdx	# u, tmp211
	addq	$16, %rdx	#, D.7927
	movsd	(%rdx), %xmm2	# *_32, D.7928
	movq	-8(%rbp), %rdx	# u, tmp212
	addq	$88, %rdx	#, D.7927
	movsd	(%rdx), %xmm1	# *_34, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movapd	%xmm0, %xmm1	# D.7928, D.7928
	movq	-8(%rbp), %rdx	# u, tmp213
	addq	$40, %rdx	#, D.7927
	movsd	(%rdx), %xmm2	# *_38, D.7928
	movq	-8(%rbp), %rdx	# u, tmp214
	addq	$64, %rdx	#, D.7927
	movsd	(%rdx), %xmm0	# *_40, D.7928
	mulsd	%xmm2, %xmm0	# D.7928, D.7928
	addsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rdx	# u, tmp215
	addq	$24, %rdx	#, D.7927
	movsd	(%rdx), %xmm2	# *_44, D.7928
	movq	-8(%rbp), %rdx	# u, tmp216
	addq	$80, %rdx	#, D.7927
	movsd	(%rdx), %xmm1	# *_46, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movsd	%xmm0, (%rax)	# D.7928, *_26
	.loc 1 142 0
	movq	-8(%rbp), %rax	# u, tmp217
	leaq	112(%rax), %rdx	#, D.7927
	movq	-8(%rbp), %rax	# u, tmp218
	addq	$32, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_51, D.7928
	movq	-8(%rbp), %rax	# u, tmp219
	addq	$48, %rax	#, D.7927
	movsd	(%rax), %xmm0	# *_53, D.7928
	mulsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp220
	movsd	(%rax), %xmm2	# *u_1(D), D.7928
	movq	-8(%rbp), %rax	# u, tmp221
	addq	$80, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_57, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp222
	addq	$40, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_61, D.7928
	movq	-8(%rbp), %rax	# u, tmp223
	addq	$56, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_63, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movapd	%xmm0, %xmm1	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp224
	addq	$8, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_67, D.7928
	movq	-8(%rbp), %rax	# u, tmp225
	addq	$88, %rax	#, D.7927
	movsd	(%rax), %xmm0	# *_69, D.7928
	mulsd	%xmm2, %xmm0	# D.7928, D.7928
	addsd	%xmm1, %xmm0	# D.7928, D.7928
	movsd	%xmm0, (%rdx)	# D.7928, *_50
	.loc 1 143 0
	movq	-8(%rbp), %rax	# u, tmp226
	leaq	120(%rax), %rdx	#, D.7927
	movq	-8(%rbp), %rax	# u, tmp227
	movsd	(%rax), %xmm1	# *u_1(D), D.7928
	movq	-8(%rbp), %rax	# u, tmp228
	addq	$88, %rax	#, D.7927
	movsd	(%rax), %xmm0	# *_75, D.7928
	mulsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp229
	addq	$32, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_78, D.7928
	movq	-8(%rbp), %rax	# u, tmp230
	addq	$56, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_80, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movapd	%xmm0, %xmm1	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp231
	addq	$8, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_84, D.7928
	movq	-8(%rbp), %rax	# u, tmp232
	addq	$80, %rax	#, D.7927
	movsd	(%rax), %xmm0	# *_86, D.7928
	mulsd	%xmm2, %xmm0	# D.7928, D.7928
	addsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp233
	addq	$40, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_90, D.7928
	movq	-8(%rbp), %rax	# u, tmp234
	addq	$48, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_92, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movsd	%xmm0, (%rdx)	# D.7928, *_73
	.loc 1 144 0
	movq	-8(%rbp), %rax	# u, tmp235
	leaq	128(%rax), %rdx	#, D.7927
	movq	-8(%rbp), %rax	# u, tmp236
	movsd	(%rax), %xmm1	# *u_1(D), D.7928
	movq	-8(%rbp), %rax	# u, tmp237
	addq	$64, %rax	#, D.7927
	movsd	(%rax), %xmm0	# *_98, D.7928
	mulsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp238
	addq	$16, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_101, D.7928
	movq	-8(%rbp), %rax	# u, tmp239
	addq	$48, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_103, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp240
	addq	$8, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_107, D.7928
	movq	-8(%rbp), %rax	# u, tmp241
	addq	$72, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_109, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movapd	%xmm0, %xmm1	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp242
	addq	$24, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_113, D.7928
	movq	-8(%rbp), %rax	# u, tmp243
	addq	$56, %rax	#, D.7927
	movsd	(%rax), %xmm0	# *_115, D.7928
	mulsd	%xmm2, %xmm0	# D.7928, D.7928
	addsd	%xmm1, %xmm0	# D.7928, D.7928
	movsd	%xmm0, (%rdx)	# D.7928, *_96
	.loc 1 145 0
	movq	-8(%rbp), %rax	# u, tmp244
	leaq	136(%rax), %rdx	#, D.7927
	movq	-8(%rbp), %rax	# u, tmp245
	addq	$16, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_120, D.7928
	movq	-8(%rbp), %rax	# u, tmp246
	addq	$56, %rax	#, D.7927
	movsd	(%rax), %xmm0	# *_122, D.7928
	mulsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp247
	movsd	(%rax), %xmm2	# *u_1(D), D.7928
	movq	-8(%rbp), %rax	# u, tmp248
	addq	$72, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_126, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movapd	%xmm0, %xmm1	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp249
	addq	$24, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_130, D.7928
	movq	-8(%rbp), %rax	# u, tmp250
	addq	$48, %rax	#, D.7927
	movsd	(%rax), %xmm0	# *_132, D.7928
	mulsd	%xmm2, %xmm0	# D.7928, D.7928
	addsd	%xmm1, %xmm0	# D.7928, D.7928
	movq	-8(%rbp), %rax	# u, tmp251
	addq	$8, %rax	#, D.7927
	movsd	(%rax), %xmm2	# *_136, D.7928
	movq	-8(%rbp), %rax	# u, tmp252
	addq	$64, %rax	#, D.7927
	movsd	(%rax), %xmm1	# *_138, D.7928
	mulsd	%xmm2, %xmm1	# D.7928, D.7928
	subsd	%xmm1, %xmm0	# D.7928, D.7928
	movsd	%xmm0, (%rdx)	# D.7928, *_119
	.loc 1 146 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	complete_U, .-complete_U
	.globl	big_endian
	.type	big_endian, @function
big_endian:
.LFB8:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 149 0
	movq	%fs:40, %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, D.7932
	xorl	%eax, %eax	# tmp64
	.loc 1 154 0
	movq	$1, -16(%rbp)	#, u.l
	.loc 1 155 0
	movzbl	-9(%rbp), %eax	# u.c, D.7929
	cmpb	$1, %al	#, D.7929
	sete	%al	#, D.7930
	movzbl	%al, %eax	# D.7930, D.7931
	.loc 1 156 0
	movq	-8(%rbp), %rdx	# D.7932, tmp65
	xorq	%fs:40, %rdx	#, tmp65
	je	.L22	#,
	call	__stack_chk_fail	#
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	big_endian, .-big_endian
	.section	.rodata
.LC3:
	.string	"reading Archive header:"
.LC4:
	.string	"%s"
.LC5:
	.string	"END_HEADER\n"
	.text
	.globl	qcdhdr_get_hdr
	.type	qcdhdr_get_hdr, @function
qcdhdr_get_hdr:
.LFB9:
	.loc 1 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1104, %rsp	#,
	movq	%rdi, -1096(%rbp)	# in, in
	.loc 1 159 0
	movq	%fs:40, %rax	#, tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.7941
	xorl	%eax, %eax	# tmp125
	.loc 1 169 0
	movq	-1096(%rbp), %rdx	# in, tmp83
	leaq	-1040(%rbp), %rax	#, tmp84
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	fgets	#
	.loc 1 175 0
	movl	$8, %esi	#,
	movl	$512, %edi	#,
	call	calloc	#
	movq	%rax, -1080(%rbp)	# tmp85, tokens
	.loc 1 176 0
	movl	$8, %esi	#,
	movl	$512, %edi	#,
	call	calloc	#
	movq	%rax, -1072(%rbp)	# tmp86, values
	.loc 1 177 0
	movl	$24, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -1064(%rbp)	# tmp87, hdr
	.loc 1 178 0
	movq	-1064(%rbp), %rax	# hdr, tmp88
	movq	-1080(%rbp), %rdx	# tokens, tmp89
	movq	%rdx, 8(%rax)	# tmp89, hdr_5->token
	.loc 1 179 0
	movq	-1064(%rbp), %rax	# hdr, tmp90
	movq	-1072(%rbp), %rdx	# values, tmp91
	movq	%rdx, 16(%rax)	# tmp91, hdr_5->value
	.loc 1 182 0
	movl	$0, -1088(%rbp)	#, n
	.loc 1 183 0
	movl	$.LC3, %edi	#,
	call	puts	#
.L26:
	.loc 1 185 0
	movq	-1096(%rbp), %rdx	# in, tmp92
	leaq	-1040(%rbp), %rax	#, tmp93
	movl	$1024, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	fgets	#
	.loc 1 186 0
	leaq	-1040(%rbp), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 188 0
	leaq	-1040(%rbp), %rax	#, tmp95
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	strcmp	#
	testl	%eax, %eax	# D.7935
	jne	.L24	#,
	.loc 1 188 0 is_stmt 0 discriminator 1
	nop
	.loc 1 210 0 is_stmt 1 discriminator 1
	movq	-1064(%rbp), %rax	# hdr, tmp122
	movl	-1088(%rbp), %edx	# n, tmp123
	movl	%edx, (%rax)	# tmp123, hdr_5->ntoken
	.loc 1 211 0 discriminator 1
	movq	-1064(%rbp), %rax	# hdr, D.7936
	.loc 1 212 0 discriminator 1
	movq	-8(%rbp), %rcx	# D.7941, tmp126
	xorq	%fs:40, %rcx	#, tmp126
	je	.L28	#,
	jmp	.L29	#
.L24:
	.loc 1 191 0
	leaq	-1040(%rbp), %rax	#, tmp96
	movl	$32, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	strchr	#
	movq	%rax, -1056(%rbp)	# tmp97, q
	.loc 1 194 0
	movq	-1056(%rbp), %rax	# q, tmp98
	movb	$0, (%rax)	#, *q_9
	.loc 1 195 0
	movq	-1056(%rbp), %rax	# q, q.8
	movl	%eax, %edx	# q.8, D.7935
	leaq	-1040(%rbp), %rax	#, line.9
	subl	%eax, %edx	# D.7935, tmp99
	movl	%edx, %eax	# tmp99, tmp99
	movl	%eax, -1084(%rbp)	# tmp99, len
	.loc 1 198 0
	movl	-1084(%rbp), %eax	# len, tmp100
	addl	$1, %eax	#, D.7935
	leal	7(%rax), %edx	#, tmp102
	testl	%eax, %eax	# tmp101
	cmovs	%edx, %eax	# tmp102,, tmp101
	sarl	$3, %eax	#, tmp103
	addl	$1, %eax	#, D.7935
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7937,
	call	calloc	#
	movq	%rax, -1048(%rbp)	# tmp104, p
	.loc 1 199 0
	movq	-1064(%rbp), %rax	# hdr, tmp105
	movq	8(%rax), %rax	# hdr_5->token, D.7938
	movl	-1088(%rbp), %edx	# n, tmp106
	movslq	%edx, %rdx	# tmp106, D.7937
	salq	$3, %rdx	#, D.7937
	addq	%rax, %rdx	# D.7938, D.7938
	movq	-1048(%rbp), %rax	# p, tmp107
	movq	%rax, (%rdx)	# tmp107, *_23
	.loc 1 200 0
	leaq	-1040(%rbp), %rdx	#, tmp108
	movq	-1048(%rbp), %rax	# p, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	strcpy	#
	.loc 1 202 0
	addq	$1, -1056(%rbp)	#, q
	movq	-1056(%rbp), %rax	# q, tmp110
	movl	$61, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	strchr	#
	movq	%rax, -1056(%rbp)	# tmp111, q
	addq	$1, -1056(%rbp)	#, q
	.loc 1 203 0
	movq	-1056(%rbp), %rax	# q, tmp112
	movq	%rax, %rdi	# tmp112,
	call	strlen	#
	movl	%eax, -1084(%rbp)	# D.7937, len
	.loc 1 204 0
	movl	-1084(%rbp), %eax	# len, tmp113
	cltq
	leaq	-1(%rax), %rdx	#, D.7939
	movq	-1056(%rbp), %rax	# q, tmp114
	addq	%rdx, %rax	# D.7939, D.7940
	movb	$0, (%rax)	#, *_31
	.loc 1 205 0
	movl	-1084(%rbp), %eax	# len, tmp115
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.7937,
	call	calloc	#
	movq	%rax, -1048(%rbp)	# tmp116, p
	.loc 1 206 0
	movq	-1064(%rbp), %rax	# hdr, tmp117
	movq	16(%rax), %rax	# hdr_5->value, D.7938
	movl	-1088(%rbp), %edx	# n, tmp118
	movslq	%edx, %rdx	# tmp118, D.7937
	salq	$3, %rdx	#, D.7937
	addq	%rax, %rdx	# D.7938, D.7938
	movq	-1048(%rbp), %rax	# p, tmp119
	movq	%rax, (%rdx)	# tmp119, *_37
	.loc 1 207 0
	movq	-1056(%rbp), %rdx	# q, tmp120
	movq	-1048(%rbp), %rax	# p, tmp121
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	strcpy	#
	.loc 1 208 0
	addl	$1, -1088(%rbp)	#, n
	.loc 1 209 0
	jmp	.L26	#
.L29:
	.loc 1 212 0
	call	__stack_chk_fail	#
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	qcdhdr_get_hdr, .-qcdhdr_get_hdr
	.globl	qcdhdr_destroy_hdr
	.type	qcdhdr_destroy_hdr, @function
qcdhdr_destroy_hdr:
.LFB10:
	.loc 1 215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hdr, hdr
	.loc 1 218 0
	cmpq	$0, -24(%rbp)	#, hdr
	jne	.L31	#,
	.loc 1 218 0 is_stmt 0 discriminator 1
	jmp	.L30	#
.L31:
	.loc 1 220 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L33	#
.L34:
	.loc 1 221 0 discriminator 2
	movq	-24(%rbp), %rax	# hdr, tmp72
	movq	16(%rax), %rax	# hdr_2(D)->value, D.7946
	movl	-4(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, D.7947
	salq	$3, %rdx	#, D.7947
	addq	%rdx, %rax	# D.7947, D.7946
	movq	(%rax), %rax	# *_8, D.7948
	movq	%rax, %rdi	# D.7948,
	call	free	#
	.loc 1 222 0 discriminator 2
	movq	-24(%rbp), %rax	# hdr, tmp74
	movq	8(%rax), %rax	# hdr_2(D)->token, D.7946
	movl	-4(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, D.7947
	salq	$3, %rdx	#, D.7947
	addq	%rdx, %rax	# D.7947, D.7946
	movq	(%rax), %rax	# *_13, D.7948
	movq	%rax, %rdi	# D.7948,
	call	free	#
	.loc 1 220 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L33:
	.loc 1 220 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hdr, tmp76
	movl	(%rax), %eax	# hdr_2(D)->ntoken, D.7945
	cmpl	-4(%rbp), %eax	# i, D.7945
	jg	.L34	#,
	.loc 1 225 0 is_stmt 1
	movq	-24(%rbp), %rax	# hdr, tmp77
	movq	8(%rax), %rax	# hdr_2(D)->token, D.7946
	movq	%rax, %rdi	# D.7946,
	call	free	#
	.loc 1 226 0
	movq	-24(%rbp), %rax	# hdr, tmp78
	movq	16(%rax), %rax	# hdr_2(D)->value, D.7946
	movq	%rax, %rdi	# D.7946,
	call	free	#
	.loc 1 227 0
	movq	-24(%rbp), %rax	# hdr, tmp79
	movq	%rax, %rdi	# tmp79,
	call	free	#
.L30:
	.loc 1 228 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	qcdhdr_destroy_hdr, .-qcdhdr_destroy_hdr
	.section	.rodata
	.align 8
.LC6:
	.string	"%s: Node %d %s write error %d\n"
	.text
	.globl	swrite_data
	.type	swrite_data, @function
swrite_data:
.LFB11:
	.loc 1 232 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# src, src
	movq	%rdx, -24(%rbp)	# size, size
	movq	%rcx, -32(%rbp)	# myname, myname
	movq	%r8, -40(%rbp)	# descrip, descrip
	.loc 1 233 0
	movq	-8(%rbp), %rdx	# fp, tmp64
	movq	-24(%rbp), %rsi	# size, tmp65
	movq	-16(%rbp), %rax	# src, tmp66
	movq	%rdx, %rcx	# tmp64,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp66,
	call	fwrite	#
	cmpq	$1, %rax	#, D.7949
	je	.L35	#,
	.loc 1 236 0
	call	__errno_location	#
	.loc 1 235 0
	movl	(%rax), %esi	# *_5, D.7951
	movl	this_node(%rip), %edx	# this_node, this_node.10
	movq	-40(%rbp), %rcx	# descrip, tmp67
	movq	-32(%rbp), %rax	# myname, tmp68
	movl	%esi, %r8d	# D.7951,
	movq	%rax, %rsi	# tmp68,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 237 0
	movq	stdout(%rip), %rax	# stdout, stdout.11
	movq	%rax, %rdi	# stdout.11,
	call	fflush	#
	.loc 1 238 0
	movl	$1, %edi	#,
	call	terminate	#
.L35:
	.loc 1 240 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	swrite_data, .-swrite_data
	.section	.rodata
	.align 8
.LC7:
	.string	"%s: Node %d %s descrip,write error %d\n"
	.text
	.globl	pwrite_data
	.type	pwrite_data, @function
pwrite_data:
.LFB12:
	.loc 1 243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# src, src
	movq	%rdx, -24(%rbp)	# size, size
	movq	%rcx, -32(%rbp)	# myname, myname
	movq	%r8, -40(%rbp)	# descrip, descrip
	.loc 1 244 0
	movq	-8(%rbp), %rdx	# fp, tmp64
	movq	-24(%rbp), %rsi	# size, tmp65
	movq	-16(%rbp), %rax	# src, tmp66
	movq	%rdx, %rcx	# tmp64,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp66,
	call	g_write	#
	cmpq	$1, %rax	#, D.7953
	je	.L37	#,
	.loc 1 247 0
	call	__errno_location	#
	.loc 1 246 0
	movl	(%rax), %esi	# *_5, D.7955
	movl	this_node(%rip), %edx	# this_node, this_node.12
	movq	-40(%rbp), %rcx	# descrip, tmp67
	movq	-32(%rbp), %rax	# myname, tmp68
	movl	%esi, %r8d	# D.7955,
	movq	%rax, %rsi	# tmp68,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 248 0
	movq	stdout(%rip), %rax	# stdout, stdout.13
	movq	%rax, %rdi	# stdout.13,
	call	fflush	#
	.loc 1 249 0
	movl	$1, %edi	#,
	call	terminate	#
.L37:
	.loc 1 251 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	pwrite_data, .-pwrite_data
	.globl	pswrite_data
	.type	pswrite_data, @function
pswrite_data:
.LFB13:
	.loc 1 255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -4(%rbp)	# parallel, parallel
	movq	%rsi, -16(%rbp)	# fp, fp
	movq	%rdx, -24(%rbp)	# src, src
	movq	%rcx, -32(%rbp)	# size, size
	movq	%r8, -40(%rbp)	# myname, myname
	movq	%r9, -48(%rbp)	# descrip, descrip
	.loc 1 256 0
	cmpl	$0, -4(%rbp)	#, parallel
	je	.L40	#,
	.loc 1 256 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdi	# descrip, tmp59
	movq	-40(%rbp), %rcx	# myname, tmp60
	movq	-32(%rbp), %rdx	# size, tmp61
	movq	-24(%rbp), %rsi	# src, tmp62
	movq	-16(%rbp), %rax	# fp, tmp63
	movq	%rdi, %r8	# tmp59,
	movq	%rax, %rdi	# tmp63,
	call	pwrite_data	#
	jmp	.L39	#
.L40:
	.loc 1 257 0 is_stmt 1
	movq	-48(%rbp), %rdi	# descrip, tmp64
	movq	-40(%rbp), %rcx	# myname, tmp65
	movq	-32(%rbp), %rdx	# size, tmp66
	movq	-24(%rbp), %rsi	# src, tmp67
	movq	-16(%rbp), %rax	# fp, tmp68
	movq	%rdi, %r8	# tmp64,
	movq	%rax, %rdi	# tmp68,
	call	swrite_data	#
.L39:
	.loc 1 258 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	pswrite_data, .-pswrite_data
	.section	.rodata
.LC8:
	.string	"%s: Node %d %s read error %d\n"
	.text
	.globl	sread_data
	.type	sread_data, @function
sread_data:
.LFB14:
	.loc 1 261 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# src, src
	movq	%rdx, -24(%rbp)	# size, size
	movq	%rcx, -32(%rbp)	# myname, myname
	movq	%r8, -40(%rbp)	# descrip, descrip
	.loc 1 262 0
	movq	-8(%rbp), %rdx	# fp, tmp66
	movq	-24(%rbp), %rsi	# size, tmp67
	movq	-16(%rbp), %rax	# src, tmp68
	movq	%rdx, %rcx	# tmp66,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp68,
	call	fread	#
	cmpq	$1, %rax	#, D.7958
	je	.L43	#,
	.loc 1 265 0
	call	__errno_location	#
	.loc 1 264 0
	movl	(%rax), %esi	# *_6, D.7957
	movl	this_node(%rip), %edx	# this_node, this_node.14
	movq	-40(%rbp), %rcx	# descrip, tmp69
	movq	-32(%rbp), %rax	# myname, tmp70
	movl	%esi, %r8d	# D.7957,
	movq	%rax, %rsi	# tmp70,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 266 0
	movq	stdout(%rip), %rax	# stdout, stdout.15
	movq	%rax, %rdi	# stdout.15,
	call	fflush	#
	.loc 1 267 0
	movl	$1, %eax	#, D.7957
	jmp	.L44	#
.L43:
	.loc 1 269 0
	movl	$0, %eax	#, D.7957
.L44:
	.loc 1 270 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sread_data, .-sread_data
	.globl	pread_data
	.type	pread_data, @function
pread_data:
.LFB15:
	.loc 1 273 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# src, src
	movq	%rdx, -24(%rbp)	# size, size
	movq	%rcx, -32(%rbp)	# myname, myname
	movq	%r8, -40(%rbp)	# descrip, descrip
	.loc 1 274 0
	movq	-8(%rbp), %rdx	# fp, tmp66
	movq	-24(%rbp), %rsi	# size, tmp67
	movq	-16(%rbp), %rax	# src, tmp68
	movq	%rdx, %rcx	# tmp66,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp68,
	call	g_read	#
	cmpq	$1, %rax	#, D.7962
	je	.L46	#,
	.loc 1 277 0
	call	__errno_location	#
	.loc 1 276 0
	movl	(%rax), %esi	# *_6, D.7961
	movl	this_node(%rip), %edx	# this_node, this_node.16
	movq	-40(%rbp), %rcx	# descrip, tmp69
	movq	-32(%rbp), %rax	# myname, tmp70
	movl	%esi, %r8d	# D.7961,
	movq	%rax, %rsi	# tmp70,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 278 0
	movq	stdout(%rip), %rax	# stdout, stdout.17
	movq	%rax, %rdi	# stdout.17,
	call	fflush	#
	.loc 1 279 0
	movl	$1, %eax	#, D.7961
	jmp	.L47	#
.L46:
	.loc 1 281 0
	movl	$0, %eax	#, D.7961
.L47:
	.loc 1 282 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	pread_data, .-pread_data
	.globl	pread_byteorder
	.type	pread_byteorder, @function
pread_byteorder:
.LFB16:
	.loc 1 285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# byterevflag, byterevflag
	movq	%rsi, -32(%rbp)	# fp, fp
	movq	%rdx, -40(%rbp)	# src, src
	movq	%rcx, -48(%rbp)	# size, size
	movq	%r8, -56(%rbp)	# myname, myname
	movq	%r9, -64(%rbp)	# descrip, descrip
	.loc 1 288 0
	movq	-64(%rbp), %rdi	# descrip, tmp63
	movq	-56(%rbp), %rcx	# myname, tmp64
	movq	-48(%rbp), %rdx	# size, tmp65
	movq	-40(%rbp), %rsi	# src, tmp66
	movq	-32(%rbp), %rax	# fp, tmp67
	movq	%rdi, %r8	# tmp63,
	movq	%rax, %rdi	# tmp67,
	call	pread_data	#
	movl	%eax, -4(%rbp)	# tmp68, status
	.loc 1 289 0
	cmpl	$1, -20(%rbp)	#, byterevflag
	jne	.L49	#,
	.loc 1 290 0
	movq	-48(%rbp), %rax	# size, tmp69
	shrq	$2, %rax	#, D.7964
	movl	%eax, %edx	# D.7964, D.7965
	movq	-40(%rbp), %rax	# src, tmp70
	movl	%edx, %esi	# D.7965,
	movq	%rax, %rdi	# tmp70,
	call	byterevn	#
.L49:
	.loc 1 291 0
	movl	-4(%rbp), %eax	# status, D.7965
	.loc 1 292 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	pread_byteorder, .-pread_byteorder
	.globl	sread_byteorder
	.type	sread_byteorder, @function
sread_byteorder:
.LFB17:
	.loc 1 295 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# byterevflag, byterevflag
	movq	%rsi, -32(%rbp)	# fp, fp
	movq	%rdx, -40(%rbp)	# src, src
	movq	%rcx, -48(%rbp)	# size, size
	movq	%r8, -56(%rbp)	# myname, myname
	movq	%r9, -64(%rbp)	# descrip, descrip
	.loc 1 298 0
	movq	-64(%rbp), %rdi	# descrip, tmp63
	movq	-56(%rbp), %rcx	# myname, tmp64
	movq	-48(%rbp), %rdx	# size, tmp65
	movq	-40(%rbp), %rsi	# src, tmp66
	movq	-32(%rbp), %rax	# fp, tmp67
	movq	%rdi, %r8	# tmp63,
	movq	%rax, %rdi	# tmp67,
	call	sread_data	#
	movl	%eax, -4(%rbp)	# tmp68, status
	.loc 1 299 0
	cmpl	$1, -20(%rbp)	#, byterevflag
	jne	.L52	#,
	.loc 1 300 0
	movq	-48(%rbp), %rax	# size, tmp69
	shrq	$2, %rax	#, D.7966
	movl	%eax, %edx	# D.7966, D.7967
	movq	-40(%rbp), %rax	# src, tmp70
	movl	%edx, %esi	# D.7967,
	movq	%rax, %rdi	# tmp70,
	call	byterevn	#
.L52:
	.loc 1 301 0
	movl	-4(%rbp), %eax	# status, D.7967
	.loc 1 302 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sread_byteorder, .-sread_byteorder
	.globl	psread_data
	.type	psread_data, @function
psread_data:
.LFB18:
	.loc 1 306 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -4(%rbp)	# parallel, parallel
	movq	%rsi, -16(%rbp)	# fp, fp
	movq	%rdx, -24(%rbp)	# src, src
	movq	%rcx, -32(%rbp)	# size, size
	movq	%r8, -40(%rbp)	# myname, myname
	movq	%r9, -48(%rbp)	# descrip, descrip
	.loc 1 307 0
	cmpl	$0, -4(%rbp)	#, parallel
	je	.L55	#,
	.loc 1 307 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdi	# descrip, tmp61
	movq	-40(%rbp), %rcx	# myname, tmp62
	movq	-32(%rbp), %rdx	# size, tmp63
	movq	-24(%rbp), %rsi	# src, tmp64
	movq	-16(%rbp), %rax	# fp, tmp65
	movq	%rdi, %r8	# tmp61,
	movq	%rax, %rdi	# tmp65,
	call	pread_data	#
	jmp	.L56	#
.L55:
	.loc 1 308 0 is_stmt 1
	movq	-48(%rbp), %rdi	# descrip, tmp66
	movq	-40(%rbp), %rcx	# myname, tmp67
	movq	-32(%rbp), %rdx	# size, tmp68
	movq	-24(%rbp), %rsi	# src, tmp69
	movq	-16(%rbp), %rax	# fp, tmp70
	movq	%rdi, %r8	# tmp66,
	movq	%rax, %rdi	# tmp70,
	call	sread_data	#
.L56:
	.loc 1 309 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	psread_data, .-psread_data
	.globl	psread_byteorder
	.type	psread_byteorder, @function
psread_byteorder:
.LFB19:
	.loc 1 314 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -4(%rbp)	# byterevflag, byterevflag
	movl	%esi, -8(%rbp)	# parallel, parallel
	movq	%rdx, -16(%rbp)	# fp, fp
	movq	%rcx, -24(%rbp)	# src, src
	movq	%r8, -32(%rbp)	# size, size
	movq	%r9, -40(%rbp)	# myname, myname
	.loc 1 315 0
	cmpl	$0, -8(%rbp)	#, parallel
	je	.L58	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdi	# myname, tmp61
	movq	-32(%rbp), %rcx	# size, tmp62
	movq	-24(%rbp), %rdx	# src, tmp63
	movq	-16(%rbp), %rsi	# fp, tmp64
	movl	-4(%rbp), %eax	# byterevflag, tmp65
	movq	16(%rbp), %r9	# descrip,
	movq	%rdi, %r8	# tmp61,
	movl	%eax, %edi	# tmp65,
	call	pread_byteorder	#
	jmp	.L59	#
.L58:
	.loc 1 316 0 is_stmt 1
	movq	-40(%rbp), %rdi	# myname, tmp66
	movq	-32(%rbp), %rcx	# size, tmp67
	movq	-24(%rbp), %rdx	# src, tmp68
	movq	-16(%rbp), %rsi	# fp, tmp69
	movl	-4(%rbp), %eax	# byterevflag, tmp70
	movq	16(%rbp), %r9	# descrip,
	movq	%rdi, %r8	# tmp66,
	movl	%eax, %edi	# tmp70,
	call	sread_byteorder	#
.L59:
	.loc 1 317 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	psread_byteorder, .-psread_byteorder
	.section	.rodata
.LC9:
	.string	"magic_number"
.LC10:
	.string	"dimensions"
.LC11:
	.string	"time_stamp"
.LC12:
	.string	"order"
	.text
	.globl	pwrite_gauge_hdr
	.type	pwrite_gauge_hdr, @function
pwrite_gauge_hdr:
.LFB20:
	.loc 1 329 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# fp, fp
	movq	%rsi, -48(%rbp)	# gh, gh
	.loc 1 329 0
	movq	%fs:40, %rax	#, tmp75
	movq	%rax, -8(%rbp)	# tmp75, D.7973
	xorl	%eax, %eax	# tmp75
	.loc 1 331 0
	movabsq	$7448783859353810800, %rax	#, tmp77
	movq	%rax, -32(%rbp)	# tmp77, myname
	movabsq	$8242827976927311201, %rax	#, tmp78
	movq	%rax, -24(%rbp)	# tmp78, myname
	movb	$0, -16(%rbp)	#, myname
	.loc 1 333 0
	movq	-48(%rbp), %rsi	# gh, D.7970
	leaq	-32(%rbp), %rdx	#, tmp63
	movq	-40(%rbp), %rax	# fp, tmp64
	movl	$.LC9, %r8d	#,
	movq	%rdx, %rcx	# tmp63,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp64,
	call	pwrite_data	#
	.loc 1 335 0
	movq	-48(%rbp), %rax	# gh, tmp65
	leaq	68(%rax), %rsi	#, D.7971
	leaq	-32(%rbp), %rdx	#, tmp66
	movq	-40(%rbp), %rax	# fp, tmp67
	movl	$.LC10, %r8d	#,
	movq	%rdx, %rcx	# tmp66,
	movl	$16, %edx	#,
	movq	%rax, %rdi	# tmp67,
	call	pwrite_data	#
	.loc 1 337 0
	movq	-48(%rbp), %rax	# gh, tmp68
	leaq	4(%rax), %rsi	#, D.7972
	leaq	-32(%rbp), %rdx	#, tmp69
	movq	-40(%rbp), %rax	# fp, tmp70
	movl	$.LC11, %r8d	#,
	movq	%rdx, %rcx	# tmp69,
	movl	$64, %edx	#,
	movq	%rax, %rdi	# tmp70,
	call	pwrite_data	#
	.loc 1 339 0
	movq	-48(%rbp), %rax	# gh, tmp71
	leaq	88(%rax), %rsi	#, D.7970
	leaq	-32(%rbp), %rdx	#, tmp72
	movq	-40(%rbp), %rax	# fp, tmp73
	movl	$.LC12, %r8d	#,
	movq	%rdx, %rcx	# tmp72,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp73,
	call	pwrite_data	#
	.loc 1 344 0
	movq	-48(%rbp), %rax	# gh, tmp74
	movl	$88, 84(%rax)	#, gh_1(D)->header_bytes
	.loc 1 347 0
	movq	-8(%rbp), %rax	# D.7973, tmp76
	xorq	%fs:40, %rax	#, tmp76
	je	.L61	#,
	call	__stack_chk_fail	#
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	pwrite_gauge_hdr, .-pwrite_gauge_hdr
	.globl	swrite_gauge_hdr
	.type	swrite_gauge_hdr, @function
swrite_gauge_hdr:
.LFB21:
	.loc 1 354 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# fp, fp
	movq	%rsi, -48(%rbp)	# gh, gh
	.loc 1 354 0
	movq	%fs:40, %rax	#, tmp75
	movq	%rax, -8(%rbp)	# tmp75, D.7981
	xorl	%eax, %eax	# tmp75
	.loc 1 356 0
	movabsq	$7448783859353810803, %rax	#, tmp77
	movq	%rax, -32(%rbp)	# tmp77, myname
	movabsq	$8242827976927311201, %rax	#, tmp78
	movq	%rax, -24(%rbp)	# tmp78, myname
	movb	$0, -16(%rbp)	#, myname
	.loc 1 358 0
	movq	-48(%rbp), %rsi	# gh, D.7978
	leaq	-32(%rbp), %rdx	#, tmp63
	movq	-40(%rbp), %rax	# fp, tmp64
	movl	$.LC9, %r8d	#,
	movq	%rdx, %rcx	# tmp63,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp64,
	call	swrite_data	#
	.loc 1 360 0
	movq	-48(%rbp), %rax	# gh, tmp65
	leaq	68(%rax), %rsi	#, D.7979
	leaq	-32(%rbp), %rdx	#, tmp66
	movq	-40(%rbp), %rax	# fp, tmp67
	movl	$.LC10, %r8d	#,
	movq	%rdx, %rcx	# tmp66,
	movl	$16, %edx	#,
	movq	%rax, %rdi	# tmp67,
	call	swrite_data	#
	.loc 1 362 0
	movq	-48(%rbp), %rax	# gh, tmp68
	leaq	4(%rax), %rsi	#, D.7980
	leaq	-32(%rbp), %rdx	#, tmp69
	movq	-40(%rbp), %rax	# fp, tmp70
	movl	$.LC11, %r8d	#,
	movq	%rdx, %rcx	# tmp69,
	movl	$64, %edx	#,
	movq	%rax, %rdi	# tmp70,
	call	swrite_data	#
	.loc 1 364 0
	movq	-48(%rbp), %rax	# gh, tmp71
	leaq	88(%rax), %rsi	#, D.7978
	leaq	-32(%rbp), %rdx	#, tmp72
	movq	-40(%rbp), %rax	# fp, tmp73
	movl	$.LC12, %r8d	#,
	movq	%rdx, %rcx	# tmp72,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp73,
	call	swrite_data	#
	.loc 1 369 0
	movq	-48(%rbp), %rax	# gh, tmp74
	movl	$88, 84(%rax)	#, gh_1(D)->header_bytes
	.loc 1 372 0
	movq	-8(%rbp), %rax	# D.7981, tmp76
	xorq	%fs:40, %rax	#, tmp76
	je	.L63	#,
	call	__stack_chk_fail	#
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	swrite_gauge_hdr, .-swrite_gauge_hdr
	.section	.rodata
	.align 8
.LC13:
	.string	"write_gauge_info_item: WARNING: keyword %s not in table\n"
.LC14:
	.string	"%s ="
.LC15:
	.string	"[%d]"
	.align 8
.LC16:
	.string	"write_gauge_info_item: Unrecognized data type %s\n"
	.text
	.globl	write_gauge_info_item
	.type	write_gauge_info_item, @function
write_gauge_info_item:
.LFB22:
	.loc 1 387 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# fpout, fpout
	movq	%rsi, -48(%rbp)	# keyword, keyword
	movq	%rdx, -56(%rbp)	# fmt, fmt
	movq	%rcx, -64(%rbp)	# src, src
	movl	%r8d, -68(%rbp)	# count, count
	movl	%r9d, -72(%rbp)	# stride, stride
	.loc 1 394 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L65	#
.L67:
	.loc 1 395 0
	addl	$1, -20(%rbp)	#, i
.L65:
	.loc 1 394 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp78
	cltq
	movq	gauge_info_keyword(,%rax,8), %rax	# gauge_info_keyword, D.7983
	movzbl	(%rax), %eax	# MEM[(const char *)_7], D.7984
	testb	%al, %al	# D.7984
	je	.L66	#,
	.loc 1 395 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp80
	cltq
	movq	gauge_info_keyword(,%rax,8), %rax	# gauge_info_keyword, D.7983
	movq	-48(%rbp), %rdx	# keyword, tmp81
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# D.7983,
	call	strcmp	#
	.loc 1 394 0 discriminator 2
	testl	%eax, %eax	# D.7982
	jne	.L67	#,
.L66:
	.loc 1 396 0
	movl	-20(%rbp), %eax	# i, tmp83
	cltq
	movq	gauge_info_keyword(,%rax,8), %rax	# gauge_info_keyword, D.7983
	movzbl	(%rax), %eax	# MEM[(const char *)_13], D.7984
	testb	%al, %al	# D.7984
	jne	.L68	#,
	.loc 1 397 0
	movq	-48(%rbp), %rax	# keyword, tmp84
	movq	%rax, %rsi	# tmp84,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L68:
	.loc 1 402 0
	movq	-48(%rbp), %rdx	# keyword, tmp85
	movq	-40(%rbp), %rax	# fpout, tmp86
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 405 0
	cmpl	$1, -68(%rbp)	#, count
	jle	.L69	#,
	.loc 1 406 0
	movl	-68(%rbp), %edx	# count, tmp87
	movq	-40(%rbp), %rax	# fpout, tmp88
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	fprintf	#
.L69:
	.loc 1 408 0
	movl	-68(%rbp), %eax	# count, tmp89
	movl	%eax, -12(%rbp)	# tmp89, n
	cmpl	$0, -12(%rbp)	#, n
	jne	.L70	#,
	.loc 1 408 0 is_stmt 0 discriminator 1
	movl	$1, -12(%rbp)	#, n
.L70:
	.loc 1 411 0 is_stmt 1
	movl	$0, -16(%rbp)	#, k
	movq	-64(%rbp), %rax	# src, tmp90
	movq	%rax, -8(%rbp)	# tmp90, data
	jmp	.L71	#
.L79:
	.loc 1 413 0
	movq	-40(%rbp), %rax	# fpout, tmp91
	movq	%rax, %rsi	# tmp91,
	movl	$32, %edi	#,
	call	fputc	#
	.loc 1 414 0
	movq	-56(%rbp), %rax	# fmt, tmp92
	movl	$115, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	strchr	#
	testq	%rax, %rax	# D.7983
	je	.L72	#,
	.loc 1 415 0
	movq	-8(%rbp), %rdx	# data, tmp93
	movq	-56(%rbp), %rcx	# fmt, tmp94
	movq	-40(%rbp), %rax	# fpout, tmp95
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L73	#
.L72:
	.loc 1 416 0
	movq	-56(%rbp), %rax	# fmt, tmp96
	movl	$100, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	strchr	#
	testq	%rax, %rax	# D.7983
	je	.L74	#,
	.loc 1 417 0
	movq	-8(%rbp), %rax	# data, tmp97
	movl	(%rax), %edx	# MEM[(int *)data_4], D.7982
	movq	-56(%rbp), %rcx	# fmt, tmp98
	movq	-40(%rbp), %rax	# fpout, tmp99
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L73	#
.L74:
	.loc 1 418 0
	movq	-56(%rbp), %rax	# fmt, tmp100
	movl	$101, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	strchr	#
	testq	%rax, %rax	# D.7983
	je	.L75	#,
	.loc 1 419 0
	movq	-8(%rbp), %rax	# data, tmp101
	movq	(%rax), %rax	# MEM[(double *)data_4], D.7985
	movq	-56(%rbp), %rcx	# fmt, tmp102
	movq	-40(%rbp), %rdx	# fpout, tmp103
	movq	%rax, -80(%rbp)	# D.7985, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# tmp102,
	movq	%rdx, %rdi	# tmp103,
	movl	$1, %eax	#,
	call	fprintf	#
	jmp	.L73	#
.L75:
	.loc 1 420 0
	movq	-56(%rbp), %rax	# fmt, tmp104
	movl	$102, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	strchr	#
	testq	%rax, %rax	# D.7983
	je	.L76	#,
	.loc 1 421 0
	movq	-8(%rbp), %rax	# data, tmp105
	movq	(%rax), %rax	# MEM[(double *)data_4], D.7985
	movq	-56(%rbp), %rcx	# fmt, tmp106
	movq	-40(%rbp), %rdx	# fpout, tmp107
	movq	%rax, -80(%rbp)	# D.7985, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# tmp106,
	movq	%rdx, %rdi	# tmp107,
	movl	$1, %eax	#,
	call	fprintf	#
	jmp	.L73	#
.L76:
	.loc 1 422 0
	movq	-56(%rbp), %rax	# fmt, tmp108
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	strchr	#
	testq	%rax, %rax	# D.7983
	je	.L77	#,
	.loc 1 423 0
	movq	-8(%rbp), %rax	# data, tmp109
	movq	(%rax), %rax	# MEM[(double *)data_4], D.7985
	movq	-56(%rbp), %rcx	# fmt, tmp110
	movq	-40(%rbp), %rdx	# fpout, tmp111
	movq	%rax, -80(%rbp)	# D.7985, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# tmp110,
	movq	%rdx, %rdi	# tmp111,
	movl	$1, %eax	#,
	call	fprintf	#
	jmp	.L73	#
.L77:
	.loc 1 426 0
	movq	-56(%rbp), %rax	# fmt, tmp112
	movq	%rax, %rsi	# tmp112,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 427 0
	movl	$1, %eax	#, D.7982
	jmp	.L78	#
.L73:
	.loc 1 411 0
	addl	$1, -16(%rbp)	#, k
	movl	-72(%rbp), %eax	# stride, tmp113
	cltq
	addq	%rax, -8(%rbp)	# D.7986, data
.L71:
	.loc 1 411 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# k, tmp114
	cmpl	-12(%rbp), %eax	# n, tmp114
	jl	.L79	#,
	.loc 1 430 0 is_stmt 1
	movq	-40(%rbp), %rax	# fpout, tmp115
	movq	%rax, %rsi	# tmp115,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 431 0
	movl	$0, %eax	#, D.7982
.L78:
	.loc 1 432 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	write_gauge_info_item, .-write_gauge_info_item
	.section	.rodata
.LC17:
	.string	"w"
	.align 8
.LC18:
	.string	"write_gauge_info_file: Can't open ascii info file %s\n"
.LC19:
	.string	"\"%s\""
.LC20:
	.string	"%x %x"
.LC21:
	.string	"checksums"
.LC22:
	.string	"nx"
.LC23:
	.string	"ny"
.LC24:
	.string	"nz"
.LC25:
	.string	"nt"
.LC26:
	.string	"Wrote info file %s\n"
	.text
	.globl	write_gauge_info_file
	.type	write_gauge_info_file, @function
write_gauge_info_file:
.LFB23:
	.loc 1 438 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$336, %rsp	#,
	movq	%rdi, -328(%rbp)	# gf, gf
	.loc 1 438 0
	movq	%fs:40, %rax	#, tmp95
	movq	%rax, -8(%rbp)	# tmp95, D.7997
	xorl	%eax, %eax	# tmp95
	.loc 1 444 0
	movq	-328(%rbp), %rax	# gf, tmp66
	movq	8(%rax), %rax	# gf_1(D)->header, tmp67
	movq	%rax, -320(%rbp)	# tmp67, gh
	.loc 1 449 0
	movq	-328(%rbp), %rax	# gf, tmp68
	movq	16(%rax), %rdx	# gf_1(D)->filename, D.7992
	leaq	-272(%rbp), %rax	#, tmp69
	movq	%rdx, %rsi	# D.7992,
	movq	%rax, %rdi	# tmp69,
	call	strcpy	#
	.loc 1 450 0
	leaq	-272(%rbp), %rax	#, tmp70
	movq	$-1, %rcx	#, tmp74
	movq	%rax, %rdx	# tmp70, tmp73
	movl	$0, %eax	#, tmp75
	movq	%rdx, %rdi	# tmp73, tmp73
	repnz scasb
	movq	%rcx, %rax	# tmp71, tmp71
	notq	%rax	# tmp72
	leaq	-1(%rax), %rdx	#, D.7993
	leaq	-272(%rbp), %rax	#, tmp76
	addq	%rdx, %rax	# D.7993, D.7992
	movl	$1718511918, (%rax)	#, MEM[(void *)_5]
	movw	$111, 4(%rax)	#, MEM[(void *)_5]
	.loc 1 454 0
	leaq	-272(%rbp), %rax	#, tmp77
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	fopen	#
	movq	%rax, -312(%rbp)	# tmp78, info_fp
	cmpq	$0, -312(%rbp)	#, info_fp
	jne	.L81	#,
	.loc 1 456 0
	leaq	-272(%rbp), %rax	#, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L80	#
.L81:
	.loc 1 462 0
	movq	-320(%rbp), %rdx	# gh, D.7994
	movq	-312(%rbp), %rax	# info_fp, tmp80
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# D.7994,
	movl	$.LC0, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	write_gauge_info_item	#
	.loc 1 463 0
	movq	-320(%rbp), %rax	# gh, tmp81
	leaq	4(%rax), %rdx	#, D.7995
	movq	-312(%rbp), %rax	# info_fp, tmp82
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# D.7995,
	movl	$.LC19, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	write_gauge_info_item	#
	.loc 1 464 0
	movq	-328(%rbp), %rax	# gf, tmp83
	movl	44(%rax), %ecx	# gf_1(D)->check.sum31, D.7996
	movq	-328(%rbp), %rax	# gf, tmp84
	movl	48(%rax), %edx	# gf_1(D)->check.sum29, D.7996
	leaq	-304(%rbp), %rax	#, tmp85
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp85,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 465 0
	leaq	-304(%rbp), %rdx	#, tmp86
	movq	-312(%rbp), %rax	# info_fp, tmp87
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# tmp86,
	movl	$.LC19, %edx	#,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	write_gauge_info_item	#
	.loc 1 466 0
	movq	-312(%rbp), %rax	# info_fp, tmp88
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$nx, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	write_gauge_info_item	#
	.loc 1 467 0
	movq	-312(%rbp), %rax	# info_fp, tmp89
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$ny, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	write_gauge_info_item	#
	.loc 1 468 0
	movq	-312(%rbp), %rax	# info_fp, tmp90
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$nz, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	write_gauge_info_item	#
	.loc 1 469 0
	movq	-312(%rbp), %rax	# info_fp, tmp91
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$nt, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	write_gauge_info_item	#
	.loc 1 471 0
	movq	-312(%rbp), %rax	# info_fp, tmp92
	movq	%rax, %rdi	# tmp92,
	call	write_appl_gauge_info	#
	.loc 1 473 0
	movq	-312(%rbp), %rax	# info_fp, tmp93
	movq	%rax, %rdi	# tmp93,
	call	fclose	#
	.loc 1 475 0
	leaq	-272(%rbp), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L80:
	.loc 1 477 0
	movq	-8(%rbp), %rax	# D.7997, tmp96
	xorq	%fs:40, %rax	#, tmp96
	je	.L83	#,
	call	__stack_chk_fail	#
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	write_gauge_info_file, .-write_gauge_info_file
	.section	.rodata
.LC27:
	.string	"%s: Can't malloc gf\n"
.LC28:
	.string	"%s: Can't malloc gh\n"
	.text
	.globl	setup_input_gauge_file
	.type	setup_input_gauge_file, @function
setup_input_gauge_file:
.LFB24:
	.loc 1 484 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# filename, filename
	.loc 1 484 0
	movq	%fs:40, %rax	#, tmp72
	movq	%rax, -8(%rbp)	# tmp72, D.8009
	xorl	%eax, %eax	# tmp72
	.loc 1 485 0
	movabsq	$7955995153338230131, %rax	#, tmp74
	movq	%rax, -32(%rbp)	# tmp74, myname
	movabsq	$7454971854792717680, %rax	#, tmp75
	movq	%rax, -24(%rbp)	# tmp75, myname
	movl	$1768316773, -16(%rbp)	#, myname
	movw	$25964, -12(%rbp)	#, myname
	movb	$0, -10(%rbp)	#, myname
	.loc 1 491 0
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -48(%rbp)	# tmp61, gf
	.loc 1 492 0
	cmpq	$0, -48(%rbp)	#, gf
	jne	.L85	#,
	.loc 1 494 0
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rax, %rsi	# tmp62,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 495 0
	movl	$1, %edi	#,
	call	terminate	#
.L85:
	.loc 1 498 0
	movq	-48(%rbp), %rax	# gf, tmp63
	movq	-56(%rbp), %rdx	# filename, tmp64
	movq	%rdx, 16(%rax)	# tmp64, gf_1->filename
	.loc 1 505 0
	movl	$92, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -40(%rbp)	# tmp65, gh
	.loc 1 506 0
	cmpq	$0, -40(%rbp)	#, gh
	jne	.L86	#,
	.loc 1 508 0
	leaq	-32(%rbp), %rax	#, tmp66
	movq	%rax, %rsi	# tmp66,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 509 0
	movl	$1, %edi	#,
	call	terminate	#
.L86:
	.loc 1 512 0
	movq	-48(%rbp), %rax	# gf, tmp67
	movq	-40(%rbp), %rdx	# gh, tmp68
	movq	%rdx, 8(%rax)	# tmp68, gf_1->header
	.loc 1 513 0
	movq	-48(%rbp), %rax	# gf, tmp69
	movl	$0, 48(%rax)	#, gf_1->check.sum29
	.loc 1 514 0
	movq	-48(%rbp), %rax	# gf, tmp70
	movl	$0, 44(%rax)	#, gf_1->check.sum31
	.loc 1 516 0
	movq	-48(%rbp), %rax	# gf, D.8008
	.loc 1 517 0
	movq	-8(%rbp), %rcx	# D.8009, tmp73
	xorq	%fs:40, %rcx	#, tmp73
	je	.L88	#,
	call	__stack_chk_fail	#
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	setup_input_gauge_file, .-setup_input_gauge_file
	.globl	setup_output_gauge_file
	.type	setup_output_gauge_file, @function
setup_output_gauge_file:
.LFB25:
	.loc 1 524 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 524 0
	movq	%fs:40, %rax	#, tmp106
	movq	%rax, -8(%rbp)	# tmp106, D.8018
	xorl	%eax, %eax	# tmp106
	.loc 1 525 0
	movabsq	$8462087161463989619, %rax	#, tmp108
	movq	%rax, -32(%rbp)	# tmp108, myname
	movabsq	$8458155234851909748, %rax	#, tmp109
	movq	%rax, -24(%rbp)	# tmp109, myname
	movabsq	$28548172592670055, %rax	#, tmp110
	movq	%rax, -16(%rbp)	# tmp110, myname
	.loc 1 533 0
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -48(%rbp)	# tmp80, gf
	.loc 1 534 0
	cmpq	$0, -48(%rbp)	#, gf
	jne	.L90	#,
	.loc 1 536 0
	leaq	-32(%rbp), %rax	#, tmp81
	movq	%rax, %rsi	# tmp81,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 537 0
	movl	$1, %edi	#,
	call	terminate	#
.L90:
	.loc 1 545 0
	movl	$92, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -40(%rbp)	# tmp82, gh
	.loc 1 546 0
	cmpq	$0, -40(%rbp)	#, gh
	jne	.L91	#,
	.loc 1 548 0
	leaq	-32(%rbp), %rax	#, tmp83
	movq	%rax, %rsi	# tmp83,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 549 0
	movl	$1, %edi	#,
	call	terminate	#
.L91:
	.loc 1 553 0
	movq	-48(%rbp), %rax	# gf, tmp84
	movq	-40(%rbp), %rdx	# gh, tmp85
	movq	%rdx, 8(%rax)	# tmp85, gf_2->header
	.loc 1 556 0
	movq	-48(%rbp), %rax	# gf, tmp86
	movl	$0, 48(%rax)	#, gf_2->check.sum29
	.loc 1 557 0
	movq	-48(%rbp), %rax	# gf, tmp87
	movl	$0, 44(%rax)	#, gf_2->check.sum31
	.loc 1 561 0
	movq	-40(%rbp), %rax	# gh, tmp88
	movl	$20103, (%rax)	#, gh_3->magic_number
	.loc 1 563 0
	movl	nx(%rip), %edx	# nx, nx.18
	movq	-40(%rbp), %rax	# gh, tmp89
	movl	%edx, 68(%rax)	# nx.18, gh_3->dims
	.loc 1 564 0
	movl	ny(%rip), %edx	# ny, ny.19
	movq	-40(%rbp), %rax	# gh, tmp90
	movl	%edx, 72(%rax)	# ny.19, gh_3->dims
	.loc 1 565 0
	movl	nz(%rip), %edx	# nz, nz.20
	movq	-40(%rbp), %rax	# gh, tmp91
	movl	%edx, 76(%rax)	# nz.20, gh_3->dims
	.loc 1 566 0
	movl	nt(%rip), %edx	# nt, nt.21
	movq	-40(%rbp), %rax	# gh, tmp92
	movl	%edx, 80(%rax)	# nt.21, gh_3->dims
	.loc 1 570 0
	movl	this_node(%rip), %eax	# this_node, this_node.22
	testl	%eax, %eax	# this_node.22
	jne	.L92	#,
	.loc 1 572 0
	leaq	-56(%rbp), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	time	#
	.loc 1 573 0
	leaq	-56(%rbp), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	ctime	#
	movq	-40(%rbp), %rdx	# gh, tmp95
	addq	$4, %rdx	#, D.8013
	movq	%rax, %rsi	# D.8012,
	movq	%rdx, %rdi	# D.8013,
	call	strcpy	#
	.loc 1 576 0
	movq	-40(%rbp), %rax	# gh, tmp96
	addq	$4, %rax	#, D.8013
	movq	%rax, %rdi	# D.8013,
	call	strlen	#
	addl	$1, %eax	#, D.8015
	movl	%eax, -60(%rbp)	# D.8015, i
	jmp	.L93	#
.L94:
	.loc 1 577 0 discriminator 2
	movq	-40(%rbp), %rdx	# gh, tmp97
	movl	-60(%rbp), %eax	# i, tmp99
	cltq
	movb	$0, 4(%rdx,%rax)	#, gh_3->time_stamp
	.loc 1 576 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L93:
	.loc 1 576 0 is_stmt 0 discriminator 1
	cmpl	$63, -60(%rbp)	#, i
	jle	.L94	#,
	.loc 1 580 0 is_stmt 1
	movq	-40(%rbp), %rax	# gh, tmp100
	addq	$4, %rax	#, D.8013
	movq	%rax, %rdi	# D.8013,
	call	strlen	#
	leaq	-1(%rax), %rdx	#, D.8014
	movq	-40(%rbp), %rax	# gh, tmp101
	movzbl	4(%rax,%rdx), %eax	# gh_3->time_stamp, D.8016
	cmpb	$10, %al	#, D.8016
	jne	.L92	#,
	.loc 1 581 0
	movq	-40(%rbp), %rax	# gh, tmp102
	addq	$4, %rax	#, D.8013
	movq	%rax, %rdi	# D.8013,
	call	strlen	#
	leaq	-1(%rax), %rdx	#, D.8014
	movq	-40(%rbp), %rax	# gh, tmp103
	movb	$0, 4(%rax,%rdx)	#, gh_3->time_stamp
.L92:
	.loc 1 585 0
	movq	-40(%rbp), %rax	# gh, tmp104
	addq	$4, %rax	#, D.8013
	movl	$64, %esi	#,
	movq	%rax, %rdi	# D.8013,
	call	broadcast_bytes	#
	.loc 1 587 0
	movq	-48(%rbp), %rax	# gf, D.8017
	.loc 1 588 0
	movq	-8(%rbp), %rcx	# D.8018, tmp107
	xorq	%fs:40, %rcx	#, tmp107
	je	.L96	#,
	call	__stack_chk_fail	#
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	setup_output_gauge_file, .-setup_output_gauge_file
	.section	.rodata
.LC29:
	.string	"wb"
	.align 8
.LC30:
	.string	"%s: Node %d can't open file %s, error %d\n"
	.text
	.globl	w_serial_i
	.type	w_serial_i, @function
w_serial_i:
.LFB26:
	.loc 1 594 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# filename, filename
	.loc 1 594 0
	movq	%fs:40, %rax	#, tmp86
	movq	%rax, -24(%rbp)	# tmp86, D.8022
	xorl	%eax, %eax	# tmp86
	.loc 1 598 0
	movabsq	$7809639168886398839, %rax	#, tmp88
	movq	%rax, -48(%rbp)	# tmp88, myname
	movw	$26975, -40(%rbp)	#, myname
	movb	$0, -38(%rbp)	#, myname
	.loc 1 604 0
	movl	$0, %eax	#,
	call	setup_output_gauge_file	#
	movq	%rax, -64(%rbp)	# tmp67, gf
	.loc 1 605 0
	movq	-64(%rbp), %rax	# gf, tmp68
	movq	8(%rax), %rax	# gf_2->header, tmp69
	movq	%rax, -56(%rbp)	# tmp69, gh
	.loc 1 609 0
	movq	-56(%rbp), %rax	# gh, tmp70
	movl	$0, 88(%rax)	#, gh_3->order
	.loc 1 613 0
	movl	this_node(%rip), %eax	# this_node, this_node.23
	testl	%eax, %eax	# this_node.23
	jne	.L98	#,
	.loc 1 615 0
	movq	-88(%rbp), %rax	# filename, tmp71
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	fopen	#
	movq	%rax, -72(%rbp)	# tmp72, fp
	.loc 1 616 0
	cmpq	$0, -72(%rbp)	#, fp
	jne	.L99	#,
	.loc 1 619 0
	call	__errno_location	#
	.loc 1 618 0
	movl	(%rax), %esi	# *_8, D.8020
	movl	this_node(%rip), %edx	# this_node, this_node.24
	movq	-88(%rbp), %rcx	# filename, tmp73
	leaq	-48(%rbp), %rax	#, tmp74
	movl	%esi, %r8d	# D.8020,
	movq	%rax, %rsi	# tmp74,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 619 0
	movq	stdout(%rip), %rax	# stdout, stdout.25
	movq	%rax, %rdi	# stdout.25,
	call	fflush	#
	.loc 1 620 0
	movl	$1, %edi	#,
	call	terminate	#
.L99:
	.loc 1 625 0
	movq	-56(%rbp), %rdx	# gh, tmp75
	movq	-72(%rbp), %rax	# fp, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	swrite_gauge_hdr	#
.L98:
	.loc 1 631 0
	movl	this_node(%rip), %eax	# this_node, this_node.26
	testl	%eax, %eax	# this_node.26
	jne	.L100	#,
	.loc 1 631 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# gf, tmp77
	movq	-72(%rbp), %rdx	# fp, tmp78
	movq	%rdx, (%rax)	# tmp78, gf_2->fp
	jmp	.L101	#
.L100:
	.loc 1 632 0 is_stmt 1
	movq	-64(%rbp), %rax	# gf, tmp79
	movq	$0, (%rax)	#, gf_2->fp
.L101:
	.loc 1 634 0
	movq	-64(%rbp), %rax	# gf, tmp80
	movq	-88(%rbp), %rdx	# filename, tmp81
	movq	%rdx, 16(%rax)	# tmp81, gf_2->filename
	.loc 1 635 0
	movq	-64(%rbp), %rax	# gf, tmp82
	movl	$0, 24(%rax)	#, gf_2->byterevflag
	.loc 1 636 0
	movq	-64(%rbp), %rax	# gf, tmp83
	movq	$0, 32(%rax)	#, gf_2->rank2rcv
	.loc 1 637 0
	movq	-64(%rbp), %rax	# gf, tmp84
	movl	$0, 40(%rax)	#, gf_2->parallel
	.loc 1 639 0
	movq	-64(%rbp), %rax	# gf, D.8021
	.loc 1 641 0
	movq	-24(%rbp), %rbx	# D.8022, tmp87
	xorq	%fs:40, %rbx	#, tmp87
	je	.L103	#,
	call	__stack_chk_fail	#
.L103:
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	w_serial_i, .-w_serial_i
	.section	.rodata
.LC31:
	.string	"checksum"
	.align 8
.LC32:
	.string	"%s: Checksum violation. Computed %x %x.  Read %x %x.\n"
.LC33:
	.string	"Checksums %x %x OK\n"
	.text
	.globl	read_checksum
	.type	read_checksum, @function
read_checksum:
.LFB27:
	.loc 1 651 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# parallel, parallel
	movq	%rsi, -48(%rbp)	# gf, gf
	movq	%rdx, -56(%rbp)	# test_gc, test_gc
	.loc 1 651 0
	movq	%fs:40, %rax	#, tmp99
	movq	%rax, -8(%rbp)	# tmp99, D.8029
	xorl	%eax, %eax	# tmp99
	.loc 1 653 0
	movabsq	$7307199656765777266, %rax	#, tmp101
	movq	%rax, -32(%rbp)	# tmp101, myname
	movl	$1970498403, -24(%rbp)	#, myname
	movw	$109, -20(%rbp)	#, myname
	.loc 1 658 0
	movq	-48(%rbp), %rax	# gf, tmp78
	leaq	48(%rax), %rcx	#, D.8025
	.loc 1 657 0
	movq	-48(%rbp), %rax	# gf, tmp79
	movq	(%rax), %rdx	# gf_1(D)->fp, D.8026
	movq	-48(%rbp), %rax	# gf, tmp80
	movl	24(%rax), %eax	# gf_1(D)->byterevflag, D.8027
	leaq	-32(%rbp), %rdi	#, tmp81
	movl	-36(%rbp), %esi	# parallel, tmp82
	movq	$.LC31, (%rsp)	#,
	movq	%rdi, %r9	# tmp81,
	movl	$4, %r8d	#,
	movl	%eax, %edi	# D.8027,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8027
	je	.L105	#,
	.loc 1 659 0
	movl	$1, %edi	#,
	call	terminate	#
.L105:
	.loc 1 661 0
	movq	-48(%rbp), %rax	# gf, tmp83
	leaq	44(%rax), %rcx	#, D.8025
	.loc 1 660 0
	movq	-48(%rbp), %rax	# gf, tmp84
	movq	(%rax), %rdx	# gf_1(D)->fp, D.8026
	movq	-48(%rbp), %rax	# gf, tmp85
	movl	24(%rax), %eax	# gf_1(D)->byterevflag, D.8027
	leaq	-32(%rbp), %rdi	#, tmp86
	movl	-36(%rbp), %esi	# parallel, tmp87
	movq	$.LC31, (%rsp)	#,
	movq	%rdi, %r9	# tmp86,
	movl	$4, %r8d	#,
	movl	%eax, %edi	# D.8027,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8027
	je	.L106	#,
	.loc 1 662 0
	movl	$1, %edi	#,
	call	terminate	#
.L106:
	.loc 1 664 0
	movq	-48(%rbp), %rax	# gf, tmp88
	movl	48(%rax), %edx	# gf_1(D)->check.sum29, D.8028
	movq	-56(%rbp), %rax	# test_gc, tmp89
	movl	4(%rax), %eax	# test_gc_12(D)->sum29, D.8028
	cmpl	%eax, %edx	# D.8028, D.8028
	jne	.L107	#,
	.loc 1 665 0 discriminator 1
	movq	-48(%rbp), %rax	# gf, tmp90
	movl	44(%rax), %edx	# gf_1(D)->check.sum31, D.8028
	movq	-56(%rbp), %rax	# test_gc, tmp91
	movl	(%rax), %eax	# test_gc_12(D)->sum31, D.8028
	.loc 1 664 0 discriminator 1
	cmpl	%eax, %edx	# D.8028, D.8028
	je	.L108	#,
.L107:
	.loc 1 666 0
	movq	-48(%rbp), %rax	# gf, tmp92
	movl	44(%rax), %edi	# gf_1(D)->check.sum31, D.8028
	movq	-48(%rbp), %rax	# gf, tmp93
	movl	48(%rax), %esi	# gf_1(D)->check.sum29, D.8028
	movq	-56(%rbp), %rax	# test_gc, tmp94
	movl	(%rax), %ecx	# test_gc_12(D)->sum31, D.8028
	movq	-56(%rbp), %rax	# test_gc, tmp95
	movl	4(%rax), %edx	# test_gc_12(D)->sum29, D.8028
	leaq	-32(%rbp), %rax	#, tmp96
	movl	%edi, %r9d	# D.8028,
	movl	%esi, %r8d	# D.8028,
	movq	%rax, %rsi	# tmp96,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L104	#
.L108:
	.loc 1 671 0
	movq	-48(%rbp), %rax	# gf, tmp97
	movl	44(%rax), %edx	# gf_1(D)->check.sum31, D.8028
	movq	-48(%rbp), %rax	# gf, tmp98
	movl	48(%rax), %eax	# gf_1(D)->check.sum29, D.8028
	movl	%eax, %esi	# D.8028,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 672 0
	movq	stdout(%rip), %rax	# stdout, stdout.27
	movq	%rax, %rdi	# stdout.27,
	call	fflush	#
.L104:
	.loc 1 674 0
	movq	-8(%rbp), %rax	# D.8029, tmp100
	xorq	%fs:40, %rax	#, tmp100
	je	.L110	#,
	call	__stack_chk_fail	#
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	read_checksum, .-read_checksum
	.section	.rodata
.LC34:
	.string	"Checksums %x %x\n"
	.text
	.globl	write_checksum
	.type	write_checksum, @function
write_checksum:
.LFB28:
	.loc 1 683 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# parallel, parallel
	movq	%rsi, -48(%rbp)	# gf, gf
	.loc 1 683 0
	movq	%fs:40, %rax	#, tmp75
	movq	%rax, -8(%rbp)	# tmp75, D.8036
	xorl	%eax, %eax	# tmp75
	.loc 1 685 0
	movabsq	$7521960691988263543, %rax	#, tmp77
	movq	%rax, -32(%rbp)	# tmp77, myname
	movl	$1936417637, -24(%rbp)	#, myname
	movw	$28021, -20(%rbp)	#, myname
	movb	$0, -18(%rbp)	#, myname
	.loc 1 688 0
	movq	-48(%rbp), %rax	# gf, tmp65
	leaq	48(%rax), %rdx	#, D.8033
	.loc 1 687 0
	movq	-48(%rbp), %rax	# gf, tmp66
	movq	(%rax), %rsi	# gf_1(D)->fp, D.8034
	leaq	-32(%rbp), %rcx	#, tmp67
	movl	-36(%rbp), %eax	# parallel, tmp68
	movl	$.LC31, %r9d	#,
	movq	%rcx, %r8	# tmp67,
	movl	$4, %ecx	#,
	movl	%eax, %edi	# tmp68,
	call	pswrite_data	#
	.loc 1 690 0
	movq	-48(%rbp), %rax	# gf, tmp69
	leaq	44(%rax), %rdx	#, D.8033
	.loc 1 689 0
	movq	-48(%rbp), %rax	# gf, tmp70
	movq	(%rax), %rsi	# gf_1(D)->fp, D.8034
	leaq	-32(%rbp), %rcx	#, tmp71
	movl	-36(%rbp), %eax	# parallel, tmp72
	movl	$.LC31, %r9d	#,
	movq	%rcx, %r8	# tmp71,
	movl	$4, %ecx	#,
	movl	%eax, %edi	# tmp72,
	call	pswrite_data	#
	.loc 1 691 0
	movq	-48(%rbp), %rax	# gf, tmp73
	movl	44(%rax), %edx	# gf_1(D)->check.sum31, D.8035
	movq	-48(%rbp), %rax	# gf, tmp74
	movl	48(%rax), %eax	# gf_1(D)->check.sum29, D.8035
	movl	%eax, %esi	# D.8035,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 692 0
	movq	-8(%rbp), %rax	# D.8036, tmp76
	xorq	%fs:40, %rax	#, tmp76
	je	.L112	#,
	call	__stack_chk_fail	#
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	write_checksum, .-write_checksum
	.section	.rodata
	.align 8
.LC35:
	.string	"w_serial: Attempting serial write to parallel file "
	.align 8
.LC36:
	.string	"w_serial: Node 0 can't malloc lbuf"
	.align 8
.LC37:
	.string	"w_serial: Node %d fseeko failed error %d file %s\n"
	.align 8
.LC38:
	.string	"w_serial: Node %d gauge configuration write error %d file %s\n"
	.align 8
.LC39:
	.string	"Saved gauge configuration serially to binary file %s\n"
.LC40:
	.string	"Time stamp %s\n"
	.text
	.globl	w_serial
	.type	w_serial, @function
w_serial:
.LFB29:
	.loc 1 699 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$712, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -728(%rbp)	# gf, gf
	.loc 1 719 0
	movl	this_node(%rip), %eax	# this_node, this_node.28
	testl	%eax, %eax	# this_node.28
	jne	.L114	#,
	.loc 1 721 0
	movq	-728(%rbp), %rax	# gf, tmp136
	movl	40(%rax), %eax	# gf_46(D)->parallel, D.8038
	testl	%eax, %eax	# D.8038
	je	.L115	#,
	.loc 1 722 0
	movl	$.LC35, %edi	#,
	call	puts	#
.L115:
	.loc 1 724 0
	movl	$144, %esi	#,
	movl	$16384, %edi	#,
	call	calloc	#
	movq	%rax, -656(%rbp)	# tmp137, lbuf
	.loc 1 725 0
	cmpq	$0, -656(%rbp)	#, lbuf
	jne	.L116	#,
	.loc 1 727 0
	movl	$.LC36, %edi	#,
	call	puts	#
	.loc 1 728 0
	movq	stdout(%rip), %rax	# stdout, stdout.29
	movq	%rax, %rdi	# stdout.29,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L116:
	.loc 1 731 0
	movq	-728(%rbp), %rax	# gf, tmp138
	movq	(%rax), %rax	# gf_46(D)->fp, tmp139
	movq	%rax, -680(%rbp)	# tmp139, fp
	.loc 1 732 0
	movq	-728(%rbp), %rax	# gf, tmp140
	movq	8(%rax), %rax	# gf_46(D)->header, tmp141
	movq	%rax, -672(%rbp)	# tmp141, gh
	.loc 1 737 0
	movq	$0, -640(%rbp)	#, coord_list_size
	.loc 1 738 0
	movq	-672(%rbp), %rax	# gh, tmp142
	movl	84(%rax), %eax	# gh_51->header_bytes, D.8038
	movslq	%eax, %rdx	# D.8038, D.8039
	movq	-640(%rbp), %rax	# coord_list_size, tmp146
	addq	%rdx, %rax	# D.8039, tmp145
	movq	%rax, -632(%rbp)	# tmp145, head_size
	.loc 1 740 0
	movq	-632(%rbp), %rax	# head_size, tmp147
	movq	%rax, -648(%rbp)	# tmp147, checksum_offset
	.loc 1 742 0
	movq	$8, -624(%rbp)	#, gauge_check_size
	.loc 1 744 0
	movq	-624(%rbp), %rax	# gauge_check_size, tmp152
	movq	-632(%rbp), %rdx	# head_size, tmp153
	addq	%rdx, %rax	# tmp153, tmp151
	movq	%rax, -616(%rbp)	# tmp151, offset
	.loc 1 746 0
	movq	-616(%rbp), %rcx	# offset, tmp154
	movq	-680(%rbp), %rax	# fp, tmp155
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	fseek	#
	testl	%eax, %eax	# D.8038
	jns	.L114	#,
	.loc 1 749 0
	movq	-728(%rbp), %rax	# gf, tmp156
	movq	16(%rax), %rbx	# gf_46(D)->filename, D.8040
	.loc 1 750 0
	call	__errno_location	#
	.loc 1 749 0
	movl	(%rax), %edx	# *_61, D.8038
	movl	this_node(%rip), %eax	# this_node, this_node.30
	movq	%rbx, %rcx	# D.8040,
	movl	%eax, %esi	# this_node.30,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 758 0
	movq	stdout(%rip), %rax	# stdout, stdout.31
	movq	%rax, %rdi	# stdout.31,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L114:
	.loc 1 765 0
	movq	-728(%rbp), %rax	# gf, tmp157
	movl	$0, 44(%rax)	#, gf_46(D)->check.sum31
	.loc 1 766 0
	movq	-728(%rbp), %rax	# gf, tmp158
	movl	$0, 48(%rax)	#, gf_46(D)->check.sum29
	.loc 1 769 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.32
	movslq	%eax, %rdx	# sites_on_node.32, D.8042
	movl	this_node(%rip), %eax	# this_node, this_node.33
	cltq
	imulq	%rax, %rdx	# D.8042, D.8042
	movq	%rdx, %rax	# D.8042, tmp159
	salq	$3, %rax	#, tmp159
	addq	%rdx, %rax	# D.8042, tmp159
	salq	$4, %rax	#, tmp160
	movq	%rax, %rcx	# tmp159, D.8042
	movabsq	$1908283869694091547, %rdx	#, tmp162
	movq	%rcx, %rax	# D.8042, tmp259
	mulq	%rdx	# tmp162
	movq	%rcx, %rax	# D.8042, tmp163
	subq	%rdx, %rax	# tmp161, tmp163
	shrq	%rax	# tmp164
	addq	%rdx, %rax	# tmp161, tmp165
	shrq	$4, %rax	#, D.8042
	movq	%rax, %rdx	# D.8042, D.8042
	movq	%rdx, %rax	# D.8042, tmp166
	salq	$3, %rax	#, tmp167
	subq	%rdx, %rax	# D.8042, tmp166
	salq	$2, %rax	#, tmp166
	addq	%rdx, %rax	# D.8042, tmp166
	subq	%rax, %rcx	# tmp166, D.8042
	movq	%rcx, %rdx	# D.8042, D.8042
	movl	%edx, -716(%rbp)	# D.8042, rank29
	.loc 1 770 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.34
	movslq	%eax, %rdx	# sites_on_node.34, D.8042
	movl	this_node(%rip), %eax	# this_node, this_node.35
	cltq
	imulq	%rax, %rdx	# D.8042, D.8042
	movq	%rdx, %rax	# D.8042, tmp168
	salq	$3, %rax	#, tmp168
	addq	%rdx, %rax	# D.8042, tmp168
	salq	$4, %rax	#, tmp169
	movq	%rax, %rcx	# tmp168, D.8042
	movabsq	$595056260442243601, %rdx	#, tmp171
	movq	%rcx, %rax	# D.8042, tmp260
	mulq	%rdx	# tmp171
	movq	%rcx, %rax	# D.8042, tmp172
	subq	%rdx, %rax	# tmp170, tmp172
	shrq	%rax	# tmp173
	addq	%rdx, %rax	# tmp170, tmp174
	shrq	$4, %rax	#, D.8042
	movq	%rax, %rdx	# D.8042, D.8042
	movq	%rdx, %rax	# D.8042, tmp175
	salq	$5, %rax	#, tmp176
	subq	%rdx, %rax	# D.8042, tmp175
	subq	%rax, %rcx	# tmp175, D.8042
	movq	%rcx, %rdx	# D.8042, D.8042
	movl	%edx, -712(%rbp)	# D.8042, rank31
	.loc 1 772 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 773 0
	movl	$0, -704(%rbp)	#, currentnode
	.loc 1 775 0
	movl	$0, -708(%rbp)	#, buf_length
	.loc 1 777 0
	movl	$0, %r13d	#, j
	movl	$0, -688(%rbp)	#, t
	jmp	.L117	#
.L146:
	.loc 1 777 0 is_stmt 0 discriminator 2
	movl	$0, -692(%rbp)	#, z
	jmp	.L118	#
.L145:
	movl	$0, -696(%rbp)	#, y
	jmp	.L119	#
.L144:
	movl	$0, -700(%rbp)	#, x
	jmp	.L120	#
.L143:
	.loc 1 779 0 is_stmt 1
	movl	-688(%rbp), %ecx	# t, tmp177
	movl	-692(%rbp), %edx	# z, tmp178
	movl	-696(%rbp), %esi	# y, tmp179
	movl	-700(%rbp), %eax	# x, tmp180
	movl	%eax, %edi	# tmp180,
	call	node_number	#
	movl	%eax, -684(%rbp)	# tmp181, newnode
	.loc 1 780 0
	movl	-684(%rbp), %eax	# newnode, tmp182
	cmpl	-704(%rbp), %eax	# currentnode, tmp182
	je	.L121	#,
	.loc 1 782 0
	movl	this_node(%rip), %eax	# this_node, this_node.36
	testl	%eax, %eax	# this_node.36
	jne	.L122	#,
	.loc 1 782 0 is_stmt 0 discriminator 1
	cmpl	$0, -684(%rbp)	#, newnode
	je	.L122	#,
	movl	-684(%rbp), %edx	# newnode, tmp183
	leaq	-608(%rbp), %rax	#, tmp184
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp184,
	call	send_field	#
.L122:
	.loc 1 783 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.37
	cmpl	-684(%rbp), %eax	# newnode, this_node.37
	jne	.L123	#,
	.loc 1 783 0 is_stmt 0 discriminator 1
	cmpl	$0, -684(%rbp)	#, newnode
	je	.L123	#,
	leaq	-608(%rbp), %rax	#, tmp185
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	get_field	#
.L123:
	.loc 1 784 0 is_stmt 1
	movl	-684(%rbp), %eax	# newnode, tmp186
	movl	%eax, -704(%rbp)	# tmp186, currentnode
.L121:
	.loc 1 787 0
	movl	this_node(%rip), %eax	# this_node, this_node.38
	testl	%eax, %eax	# this_node.38
	jne	.L124	#,
	.loc 1 789 0
	cmpl	$0, -704(%rbp)	#, currentnode
	jne	.L125	#,
	.loc 1 791 0
	movl	-688(%rbp), %ecx	# t, tmp187
	movl	-692(%rbp), %edx	# z, tmp188
	movl	-696(%rbp), %esi	# y, tmp189
	movl	-700(%rbp), %eax	# x, tmp190
	movl	%eax, %edi	# tmp190,
	call	node_index	#
	movl	%eax, %r12d	#, i
	.loc 1 792 0
	movl	$0, %ebx	#, k
	jmp	.L126	#
.L127:
	.loc 1 792 0 is_stmt 0 discriminator 2
	movq	lattice(%rip), %rax	# lattice, lattice.39
	movslq	%r12d, %rdx	# i, D.8042
	salq	$11, %rdx	#, D.8042
	leaq	(%rax,%rdx), %rsi	#, D.8043
	movslq	%ebx, %rdx	# k, tmp191
	movq	%rdx, %rax	# tmp191, tmp192
	salq	$3, %rax	#, tmp192
	addq	%rdx, %rax	# tmp191, tmp192
	salq	$4, %rax	#, tmp193
	leaq	-32(%rbp), %rdi	#, tmp269
	addq	%rdi, %rax	# tmp269, tmp194
	leaq	-576(%rax), %rcx	#, tmp195
	movslq	%ebx, %rdx	# k, tmp196
	movq	%rdx, %rax	# tmp196, tmp197
	salq	$3, %rax	#, tmp197
	addq	%rdx, %rax	# tmp196, tmp197
	salq	$4, %rax	#, tmp198
	addq	%rsi, %rax	# D.8043, tmp199
	addq	$112, %rax	#, tmp200
	movq	%rcx, %rdx	# tmp195, tmp201
	movq	%rax, %rsi	# tmp200, tmp202
	movl	$18, %eax	#, tmp203
	movq	%rdx, %rdi	# tmp201, tmp201
	movq	%rax, %rcx	# tmp203, tmp203
	rep movsq
	addl	$1, %ebx	#, k
.L126:
	.loc 1 792 0 discriminator 1
	cmpl	$3, %ebx	#, k
	jle	.L127	#,
	jmp	.L128	#
.L125:
	.loc 1 796 0 is_stmt 1
	leaq	-608(%rbp), %rax	#, tmp204
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	get_field	#
.L128:
	.loc 1 799 0
	movl	-708(%rbp), %eax	# buf_length, tmp205
	movslq	%eax, %rdx	# tmp205, D.8042
	movq	%rdx, %rax	# D.8042, tmp206
	salq	$3, %rax	#, tmp206
	addq	%rdx, %rax	# D.8042, tmp206
	salq	$6, %rax	#, tmp207
	movq	%rax, %rdx	# tmp206, D.8042
	movq	-656(%rbp), %rax	# lbuf, tmp208
	addq	%rdx, %rax	# D.8042, D.8044
	leaq	-608(%rbp), %rdx	#, tmp210
	movl	$576, %r8d	#, tmp211
	movq	%rax, %rcx	# tmp209, tmp212
	andl	$1, %ecx	#, tmp212
	testq	%rcx, %rcx	# tmp212
	je	.L129	#,
	movzbl	(%rdx), %ecx	#, tmp213
	movb	%cl, (%rax)	# tmp213,
	addq	$1, %rax	#, tmp209
	addq	$1, %rdx	#, tmp210
	subl	$1, %r8d	#, tmp211
.L129:
	movq	%rax, %rcx	# tmp209, tmp214
	andl	$2, %ecx	#, tmp214
	testq	%rcx, %rcx	# tmp214
	je	.L130	#,
	movzwl	(%rdx), %ecx	#, tmp215
	movw	%cx, (%rax)	# tmp215,
	addq	$2, %rax	#, tmp209
	addq	$2, %rdx	#, tmp210
	subl	$2, %r8d	#, tmp211
.L130:
	movq	%rax, %rcx	# tmp209, tmp216
	andl	$4, %ecx	#, tmp216
	testq	%rcx, %rcx	# tmp216
	je	.L131	#,
	movl	(%rdx), %ecx	#, tmp217
	movl	%ecx, (%rax)	# tmp217,
	addq	$4, %rax	#, tmp209
	addq	$4, %rdx	#, tmp210
	subl	$4, %r8d	#, tmp211
.L131:
	movl	%r8d, %ecx	# tmp211, tmp218
	shrl	$3, %ecx	#, tmp218
	movl	%ecx, %ecx	# tmp218, tmp219
	movq	%rax, %rdi	# tmp209, tmp209
	movq	%rdx, %rsi	# tmp210, tmp210
	rep movsq
	movq	%rsi, %rdx	# tmp210, tmp210
	movq	%rdi, %rax	# tmp209, tmp209
	movl	$0, %ecx	#, tmp220
	movl	%r8d, %esi	# tmp211, tmp221
	andl	$4, %esi	#, tmp221
	testl	%esi, %esi	# tmp221
	je	.L132	#,
	movl	(%rdx), %esi	#, tmp222
	movl	%esi, (%rax)	# tmp222,
	addq	$4, %rcx	#, tmp223
.L132:
	movl	%r8d, %esi	# tmp211, tmp224
	andl	$2, %esi	#, tmp224
	testl	%esi, %esi	# tmp224
	je	.L133	#,
	movzwl	(%rdx,%rcx), %esi	#, tmp225
	movw	%si, (%rax,%rcx)	# tmp225,
	addq	$2, %rcx	#, tmp226
.L133:
	movl	%r8d, %esi	# tmp211, tmp227
	andl	$1, %esi	#, tmp227
	testl	%esi, %esi	# tmp227
	je	.L134	#,
	movzbl	(%rdx,%rcx), %edx	#, tmp228
	movb	%dl, (%rax,%rcx)	# tmp228,
.L134:
	.loc 1 804 0
	movl	$0, %ebx	#, k
	movl	-708(%rbp), %eax	# buf_length, tmp229
	movslq	%eax, %rdx	# tmp229, D.8042
	movq	%rdx, %rax	# D.8042, tmp230
	salq	$3, %rax	#, tmp230
	addq	%rdx, %rax	# D.8042, tmp230
	salq	$6, %rax	#, tmp231
	movq	%rax, %rdx	# tmp230, D.8042
	movq	-656(%rbp), %rax	# lbuf, tmp235
	addq	%rdx, %rax	# D.8042, tmp234
	movq	%rax, -664(%rbp)	# tmp234, val
	jmp	.L135	#
.L138:
	.loc 1 807 0
	movq	-728(%rbp), %rax	# gf, tmp236
	movl	48(%rax), %edx	# gf_46(D)->check.sum29, D.8045
	movq	-664(%rbp), %rax	# val, tmp237
	movl	(%rax), %esi	# *val_3, D.8045
	movl	-716(%rbp), %eax	# rank29, tmp238
	movl	%eax, %ecx	# tmp238, tmp282
	roll	%cl, %esi	# tmp282, D.8045
	movl	%esi, %eax	# D.8045, D.8045
	xorl	%eax, %edx	# D.8045, D.8045
	movq	-728(%rbp), %rax	# gf, tmp239
	movl	%edx, 48(%rax)	# D.8045, gf_46(D)->check.sum29
	.loc 1 808 0
	movq	-728(%rbp), %rax	# gf, tmp240
	movl	44(%rax), %edx	# gf_46(D)->check.sum31, D.8045
	movq	-664(%rbp), %rax	# val, tmp241
	movl	(%rax), %esi	# *val_3, D.8045
	movl	-712(%rbp), %eax	# rank31, tmp242
	movl	%eax, %ecx	# tmp242, tmp284
	roll	%cl, %esi	# tmp284, D.8045
	movl	%esi, %eax	# D.8045, D.8045
	xorl	%eax, %edx	# D.8045, D.8045
	movq	-728(%rbp), %rax	# gf, tmp243
	movl	%edx, 44(%rax)	# D.8045, gf_46(D)->check.sum31
	.loc 1 809 0
	addl	$1, -716(%rbp)	#, rank29
	cmpl	$28, -716(%rbp)	#, rank29
	jle	.L136	#,
	.loc 1 809 0 is_stmt 0 discriminator 1
	movl	$0, -716(%rbp)	#, rank29
.L136:
	.loc 1 810 0 is_stmt 1
	addl	$1, -712(%rbp)	#, rank31
	cmpl	$30, -712(%rbp)	#, rank31
	jle	.L137	#,
	.loc 1 810 0 is_stmt 0 discriminator 1
	movl	$0, -712(%rbp)	#, rank31
.L137:
	.loc 1 805 0 is_stmt 1
	addl	$1, %ebx	#, k
	addq	$4, -664(%rbp)	#, val
.L135:
	.loc 1 804 0 discriminator 1
	cmpl	$143, %ebx	#, k
	jle	.L138	#,
	.loc 1 813 0
	addl	$1, -708(%rbp)	#, buf_length
	.loc 1 816 0
	cmpl	$4096, -708(%rbp)	#, buf_length
	je	.L139	#,
	.loc 1 816 0 is_stmt 0 discriminator 1
	movl	volume(%rip), %eax	# volume, volume.40
	subl	$1, %eax	#, D.8038
	cmpl	%r13d, %eax	# j, D.8038
	jne	.L142	#,
.L139:
	.loc 1 820 0 is_stmt 1
	movl	-708(%rbp), %eax	# buf_length, tmp244
	movslq	%eax, %rdx	# tmp244, D.8042
	movq	-680(%rbp), %rcx	# fp, tmp245
	movq	-656(%rbp), %rax	# lbuf, tmp246
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp246,
	call	fwrite	#
	cmpl	-708(%rbp), %eax	# buf_length, D.8038
	je	.L141	#,
	.loc 1 822 0
	movq	-728(%rbp), %rax	# gf, tmp247
	movq	16(%rax), %rbx	# gf_46(D)->filename, D.8040
	.loc 1 823 0
	call	__errno_location	#
	.loc 1 822 0
	movl	(%rax), %edx	# *_132, D.8038
	movl	this_node(%rip), %eax	# this_node, this_node.41
	movq	%rbx, %rcx	# D.8040,
	movl	%eax, %esi	# this_node.41,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 824 0
	movq	stdout(%rip), %rax	# stdout, stdout.42
	movq	%rax, %rdi	# stdout.42,
	call	fflush	#
	.loc 1 825 0
	movl	$1, %edi	#,
	call	terminate	#
.L141:
	.loc 1 827 0
	movl	$0, -708(%rbp)	#, buf_length
	jmp	.L142	#
.L124:
	.loc 1 832 0
	movl	this_node(%rip), %eax	# this_node, this_node.43
	cmpl	-704(%rbp), %eax	# currentnode, this_node.43
	jne	.L142	#,
	.loc 1 833 0
	movl	-688(%rbp), %ecx	# t, tmp248
	movl	-692(%rbp), %edx	# z, tmp249
	movl	-696(%rbp), %esi	# y, tmp250
	movl	-700(%rbp), %eax	# x, tmp251
	movl	%eax, %edi	# tmp251,
	call	node_index	#
	movl	%eax, %r12d	#, i
	.loc 1 834 0
	movq	lattice(%rip), %rax	# lattice, lattice.44
	movslq	%r12d, %rdx	# i, D.8042
	salq	$11, %rdx	#, D.8042
	addq	%rdx, %rax	# D.8042, D.8043
	addq	$112, %rax	#, D.8046
	movl	$0, %edx	#,
	movl	$576, %esi	#,
	movq	%rax, %rdi	# D.8046,
	call	send_field	#
.L142:
	.loc 1 777 0
	addl	$1, -700(%rbp)	#, x
	addl	$1, %r13d	#, j
.L120:
	.loc 1 777 0 is_stmt 0 discriminator 1
	movl	nx(%rip), %eax	# nx, nx.45
	cmpl	%eax, -700(%rbp)	# nx.45, x
	jl	.L143	#,
	.loc 1 777 0 discriminator 2
	addl	$1, -696(%rbp)	#, y
.L119:
	.loc 1 777 0 discriminator 1
	movl	ny(%rip), %eax	# ny, ny.46
	cmpl	%eax, -696(%rbp)	# ny.46, y
	jl	.L144	#,
	.loc 1 777 0 discriminator 3
	addl	$1, -692(%rbp)	#, z
.L118:
	.loc 1 777 0 discriminator 1
	movl	nz(%rip), %eax	# nz, nz.47
	cmpl	%eax, -692(%rbp)	# nz.47, z
	jl	.L145	#,
	.loc 1 777 0 discriminator 3
	addl	$1, -688(%rbp)	#, t
.L117:
	.loc 1 777 0 discriminator 1
	movl	nt(%rip), %eax	# nt, nt.48
	cmpl	%eax, -688(%rbp)	# nt.48, t
	jl	.L146	#,
	.loc 1 840 0 is_stmt 1
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 842 0
	movl	this_node(%rip), %eax	# this_node, this_node.49
	testl	%eax, %eax	# this_node.49
	jne	.L113	#,
	.loc 1 844 0
	movq	-656(%rbp), %rax	# lbuf, tmp252
	movq	%rax, %rdi	# tmp252,
	call	free	#
	.loc 1 845 0
	movq	-728(%rbp), %rax	# gf, tmp253
	movq	16(%rax), %rax	# gf_46(D)->filename, D.8040
	movq	%rax, %rsi	# D.8040,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 847 0
	movq	-672(%rbp), %rax	# gh, tmp254
	addq	$4, %rax	#, D.8047
	movq	%rax, %rsi	# D.8047,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 851 0
	movq	-648(%rbp), %rcx	# checksum_offset, tmp255
	movq	-680(%rbp), %rax	# fp, tmp256
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp255,
	movq	%rax, %rdi	# tmp256,
	call	fseek	#
	testl	%eax, %eax	# D.8038
	jns	.L148	#,
	.loc 1 854 0
	movq	-728(%rbp), %rax	# gf, tmp257
	movq	16(%rax), %rbx	# gf_46(D)->filename, D.8040
	.loc 1 855 0
	call	__errno_location	#
	.loc 1 854 0
	movl	(%rax), %edx	# *_154, D.8038
	movl	this_node(%rip), %eax	# this_node, this_node.50
	movq	%rbx, %rcx	# D.8040,
	movl	%eax, %esi	# this_node.50,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 863 0
	movq	stdout(%rip), %rax	# stdout, stdout.51
	movq	%rax, %rdi	# stdout.51,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L148:
	.loc 1 865 0
	movq	-728(%rbp), %rax	# gf, tmp258
	movq	%rax, %rsi	# tmp258,
	movl	$0, %edi	#,
	call	write_checksum	#
.L113:
	.loc 1 868 0
	addq	$712, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	w_serial, .-w_serial
	.section	.rodata
	.align 8
.LC41:
	.string	"w_serial_f: Attempting serial close on parallel file "
	.text
	.globl	w_serial_f
	.type	w_serial_f, @function
w_serial_f:
.LFB30:
	.loc 1 875 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gf, gf
	.loc 1 876 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 877 0
	movl	this_node(%rip), %eax	# this_node, this_node.52
	testl	%eax, %eax	# this_node.52
	jne	.L150	#,
	.loc 1 879 0
	movq	-8(%rbp), %rax	# gf, tmp63
	movl	40(%rax), %eax	# gf_2(D)->parallel, D.8054
	testl	%eax, %eax	# D.8054
	je	.L151	#,
	.loc 1 880 0
	movl	$.LC41, %edi	#,
	call	puts	#
.L151:
	.loc 1 882 0
	movq	-8(%rbp), %rax	# gf, tmp64
	movq	(%rax), %rax	# gf_2(D)->fp, D.8055
	movq	%rax, %rdi	# D.8055,
	call	fclose	#
.L150:
	.loc 1 887 0
	movl	this_node(%rip), %eax	# this_node, this_node.53
	testl	%eax, %eax	# this_node.53
	jne	.L149	#,
	.loc 1 887 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gf, tmp65
	movq	%rax, %rdi	# tmp65,
	call	write_gauge_info_file	#
.L149:
	.loc 1 891 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	w_serial_f, .-w_serial_f
	.section	.rodata
	.align 8
.LC42:
	.string	"read_site_list: Can't malloc rank2rcv table"
	.align 8
.LC43:
	.string	"read_site_list: Node %d site list read error %d\n"
	.text
	.globl	read_site_list
	.type	read_site_list, @function
read_site_list:
.LFB31:
	.loc 1 899 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# parallel, parallel
	movq	%rsi, -16(%rbp)	# gf, gf
	.loc 1 904 0
	movq	-16(%rbp), %rax	# gf, tmp94
	movq	8(%rax), %rax	# gf_1(D)->header, D.8057
	movl	88(%rax), %eax	# _2->order, D.8058
	testl	%eax, %eax	# D.8058
	je	.L154	#,
	.loc 1 906 0
	movl	volume(%rip), %eax	# volume, volume.54
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.8059,
	call	calloc	#
	movq	%rax, %rdx	# tmp95, D.8060
	movq	-16(%rbp), %rax	# gf, tmp96
	movq	%rdx, 32(%rax)	# D.8060, gf_1(D)->rank2rcv
	.loc 1 907 0
	movq	-16(%rbp), %rax	# gf, tmp97
	movq	32(%rax), %rax	# gf_1(D)->rank2rcv, D.8061
	testq	%rax, %rax	# D.8061
	jne	.L155	#,
	.loc 1 909 0
	movl	$.LC42, %edi	#,
	call	puts	#
	.loc 1 910 0
	movl	$1, %edi	#,
	call	terminate	#
.L155:
	.loc 1 915 0
	movl	this_node(%rip), %eax	# this_node, this_node.55
	testl	%eax, %eax	# this_node.55
	jne	.L156	#,
	.loc 1 919 0
	cmpl	$0, -4(%rbp)	#, parallel
	je	.L157	#,
	.loc 1 921 0
	movq	-16(%rbp), %rax	# gf, tmp98
	movq	(%rax), %rcx	# gf_1(D)->fp, D.8062
	movl	volume(%rip), %eax	# volume, volume.56
	movslq	%eax, %rdx	# volume.56, D.8059
	movq	-16(%rbp), %rax	# gf, tmp99
	movq	32(%rax), %rax	# gf_1(D)->rank2rcv, D.8061
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.8061,
	call	g_read	#
	movl	%eax, %edx	# D.8059, D.8058
	movl	volume(%rip), %eax	# volume, volume.57
	cmpl	%eax, %edx	# volume.57, D.8058
	je	.L159	#,
	.loc 1 924 0
	call	__errno_location	#
	.loc 1 923 0
	movl	(%rax), %edx	# *_17, D.8058
	movl	this_node(%rip), %eax	# this_node, this_node.58
	movl	%eax, %esi	# this_node.58,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 925 0
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L159	#
.L157:
	.loc 1 930 0
	movq	-16(%rbp), %rax	# gf, tmp100
	movq	(%rax), %rcx	# gf_1(D)->fp, D.8062
	movl	volume(%rip), %eax	# volume, volume.59
	movslq	%eax, %rdx	# volume.59, D.8059
	movq	-16(%rbp), %rax	# gf, tmp101
	movq	32(%rax), %rax	# gf_1(D)->rank2rcv, D.8061
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.8061,
	call	fread	#
	movl	%eax, %edx	# D.8059, D.8058
	movl	volume(%rip), %eax	# volume, volume.60
	cmpl	%eax, %edx	# volume.60, D.8058
	je	.L159	#,
	.loc 1 933 0
	call	__errno_location	#
	.loc 1 932 0
	movl	(%rax), %edx	# *_27, D.8058
	movl	this_node(%rip), %eax	# this_node, this_node.61
	movl	%eax, %esi	# this_node.61,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 934 0
	movl	$1, %edi	#,
	call	terminate	#
.L159:
	.loc 1 938 0
	movq	-16(%rbp), %rax	# gf, tmp102
	movl	24(%rax), %eax	# gf_1(D)->byterevflag, D.8058
	cmpl	$1, %eax	#, D.8058
	jne	.L156	#,
	.loc 1 938 0 is_stmt 0 discriminator 1
	movl	volume(%rip), %edx	# volume, volume.62
	movq	-16(%rbp), %rax	# gf, tmp103
	movq	32(%rax), %rax	# gf_1(D)->rank2rcv, D.8061
	movl	%edx, %esi	# volume.62,
	movq	%rax, %rdi	# D.8061,
	call	byterevn	#
.L156:
	.loc 1 943 0 is_stmt 1
	movl	volume(%rip), %eax	# volume, volume.63
	sall	$2, %eax	#, D.8064
	movl	%eax, %edx	# D.8064, D.8058
	movq	-16(%rbp), %rax	# gf, tmp104
	movq	32(%rax), %rax	# gf_1(D)->rank2rcv, D.8061
	movl	%edx, %esi	# D.8058,
	movq	%rax, %rdi	# D.8061,
	call	broadcast_bytes	#
	jmp	.L153	#
.L154:
	.loc 1 946 0
	movq	-16(%rbp), %rax	# gf, tmp105
	movq	$0, 32(%rax)	#, gf_1(D)->rank2rcv
.L153:
	.loc 1 948 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	read_site_list, .-read_site_list
	.section	.rodata
	.align 8
.LC44:
	.string	"First 4 bytes were zero. Trying to interpret with 64 bit integer format."
.LC45:
	.string	"magic number"
	.align 8
.LC46:
	.string	"Reading as old-style gauge field configuration."
	.align 8
.LC47:
	.string	"Reading as old-style gauge field configuration with byte reversal"
	.align 8
.LC48:
	.string	"read_v3_gauge_hdr: Can't byte reverse"
	.align 8
.LC49:
	.string	"requires size of int32type(%d) = size of double(%d)\n"
	.align 8
.LC50:
	.string	"read_v3_gauge_hdr: Incorrect lattice dimensions "
.LC51:
	.string	"%d "
.LC52:
	.string	"c1"
.LC53:
	.string	"c2"
	.align 8
.LC54:
	.string	"Old format header parameters are %f %f\n"
	.text
	.globl	read_v3_gauge_hdr
	.type	read_v3_gauge_hdr, @function
read_v3_gauge_hdr:
.LFB32:
	.loc 1 954 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# gf, gf
	movl	%esi, -108(%rbp)	# parallel, parallel
	movq	%rdx, -120(%rbp)	# byterevflag, byterevflag
	.loc 1 954 0
	movq	%fs:40, %rax	#, tmp166
	movq	%rax, -24(%rbp)	# tmp166, D.8069
	xorl	%eax, %eax	# tmp166
	.loc 1 966 0
	movabsq	$6859956809493472626, %rax	#, tmp168
	movq	%rax, -48(%rbp)	# tmp168, myname
	movabsq	$7235137690502783335, %rax	#, tmp169
	movq	%rax, -40(%rbp)	# tmp169, myname
	movw	$114, -32(%rbp)	#, myname
	.loc 1 968 0
	movq	-104(%rbp), %rax	# gf, tmp104
	movq	(%rax), %rax	# gf_5(D)->fp, tmp105
	movq	%rax, -64(%rbp)	# tmp105, fp
	.loc 1 969 0
	movq	-104(%rbp), %rax	# gf, tmp106
	movq	8(%rax), %rax	# gf_5(D)->header, tmp107
	movq	%rax, -56(%rbp)	# tmp107, gh
	.loc 1 976 0
	movq	-56(%rbp), %rax	# gh, tmp108
	movl	(%rax), %eax	# gh_7->magic_number, D.8067
	testl	%eax, %eax	# D.8067
	jne	.L162	#,
	.loc 1 978 0
	movl	$1, -88(%rbp)	#, sixtyfourbits
	.loc 1 979 0
	movl	$.LC44, %edi	#,
	call	puts	#
	.loc 1 982 0
	movq	-56(%rbp), %rdx	# gh, D.8068
	leaq	-48(%rbp), %rcx	#, tmp109
	movq	-64(%rbp), %rsi	# fp, tmp110
	movl	-108(%rbp), %eax	# parallel, tmp111
	movl	$.LC45, %r9d	#,
	movq	%rcx, %r8	# tmp109,
	movl	$4, %ecx	#,
	movl	%eax, %edi	# tmp111,
	call	psread_data	#
	testl	%eax, %eax	# D.8067
	je	.L164	#,
	.loc 1 983 0
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L164	#
.L162:
	.loc 1 986 0
	movl	$0, -88(%rbp)	#, sixtyfourbits
.L164:
	.loc 1 988 0
	movq	-56(%rbp), %rax	# gh, tmp112
	movl	(%rax), %eax	# gh_7->magic_number, tmp113
	movl	%eax, -84(%rbp)	# tmp113, tmp
	.loc 1 990 0
	movq	-56(%rbp), %rax	# gh, tmp114
	movl	(%rax), %eax	# gh_7->magic_number, D.8067
	cmpl	$59354, %eax	#, D.8067
	jne	.L165	#,
	.loc 1 992 0
	movl	$.LC46, %edi	#,
	call	puts	#
	.loc 1 993 0
	movq	-120(%rbp), %rax	# byterevflag, tmp115
	movl	$0, (%rax)	#, *byterevflag_16(D)
	jmp	.L166	#
.L165:
	.loc 1 997 0
	movq	-56(%rbp), %rax	# gh, D.8068
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.8068,
	call	byterevn	#
	.loc 1 998 0
	movq	-56(%rbp), %rax	# gh, tmp116
	movl	(%rax), %eax	# gh_7->magic_number, D.8067
	cmpl	$59354, %eax	#, D.8067
	jne	.L167	#,
	.loc 1 1000 0
	movq	-120(%rbp), %rax	# byterevflag, tmp117
	movl	$1, (%rax)	#, *byterevflag_16(D)
	.loc 1 1001 0
	movl	$.LC47, %edi	#,
	call	puts	#
	.loc 1 1003 0
	movl	$.LC48, %edi	#,
	call	puts	#
	.loc 1 1004 0
	movl	$8, %edx	#,
	movl	$4, %esi	#,
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1006 0
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L166	#
.L167:
	.loc 1 1013 0
	movq	-56(%rbp), %rax	# gh, tmp118
	movl	-84(%rbp), %edx	# tmp, tmp119
	movl	%edx, (%rax)	# tmp119, gh_7->magic_number
	.loc 1 1014 0
	movl	$1, %eax	#, D.8067
	jmp	.L183	#
.L166:
	.loc 1 1023 0
	movl	$0, -92(%rbp)	#, j
	jmp	.L169	#
.L172:
	.loc 1 1026 0
	movl	-92(%rbp), %eax	# j, tmp121
	cltq
	addq	$16, %rax	#, tmp122
	leaq	0(,%rax,4), %rdx	#, tmp123
	movq	-56(%rbp), %rax	# gh, tmp125
	addq	%rdx, %rax	# tmp123, tmp124
	leaq	4(%rax), %rcx	#, D.8068
	.loc 1 1025 0
	movq	-120(%rbp), %rax	# byterevflag, tmp126
	movl	(%rax), %eax	# *byterevflag_16(D), D.8067
	leaq	-48(%rbp), %rdi	#, tmp127
	movq	-64(%rbp), %rdx	# fp, tmp128
	movl	-108(%rbp), %esi	# parallel, tmp129
	movq	$.LC10, (%rsp)	#,
	movq	%rdi, %r9	# tmp127,
	movl	$4, %r8d	#,
	movl	%eax, %edi	# D.8067,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8067
	je	.L170	#,
	.loc 1 1027 0
	movl	$1, %edi	#,
	call	terminate	#
.L170:
	.loc 1 1030 0
	cmpl	$0, -88(%rbp)	#, sixtyfourbits
	je	.L171	#,
	.loc 1 1032 0
	movl	-92(%rbp), %eax	# j, tmp131
	cltq
	addq	$16, %rax	#, tmp132
	leaq	0(,%rax,4), %rdx	#, tmp133
	movq	-56(%rbp), %rax	# gh, tmp135
	addq	%rdx, %rax	# tmp133, tmp134
	leaq	4(%rax), %rcx	#, D.8068
	.loc 1 1031 0
	movq	-120(%rbp), %rax	# byterevflag, tmp136
	movl	(%rax), %eax	# *byterevflag_16(D), D.8067
	leaq	-48(%rbp), %rdi	#, tmp137
	movq	-64(%rbp), %rdx	# fp, tmp138
	movl	-108(%rbp), %esi	# parallel, tmp139
	movq	$.LC10, (%rsp)	#,
	movq	%rdi, %r9	# tmp137,
	movl	$4, %r8d	#,
	movl	%eax, %edi	# D.8067,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8067
	je	.L171	#,
	.loc 1 1033 0
	movl	$1, %edi	#,
	call	terminate	#
.L171:
	.loc 1 1023 0
	addl	$1, -92(%rbp)	#, j
.L169:
	.loc 1 1023 0 is_stmt 0 discriminator 1
	cmpl	$3, -92(%rbp)	#, j
	jle	.L172	#,
	.loc 1 1036 0 is_stmt 1
	movq	-56(%rbp), %rax	# gh, tmp140
	movl	68(%rax), %edx	# gh_7->dims, D.8067
	movl	nx(%rip), %eax	# nx, nx.65
	cmpl	%eax, %edx	# nx.65, D.8067
	jne	.L173	#,
	.loc 1 1037 0 discriminator 1
	movq	-56(%rbp), %rax	# gh, tmp141
	movl	72(%rax), %edx	# gh_7->dims, D.8067
	movl	ny(%rip), %eax	# ny, ny.66
	.loc 1 1036 0 discriminator 1
	cmpl	%eax, %edx	# ny.66, D.8067
	jne	.L173	#,
	.loc 1 1038 0
	movq	-56(%rbp), %rax	# gh, tmp142
	movl	76(%rax), %edx	# gh_7->dims, D.8067
	movl	nz(%rip), %eax	# nz, nz.67
	.loc 1 1037 0
	cmpl	%eax, %edx	# nz.67, D.8067
	jne	.L173	#,
	.loc 1 1039 0
	movq	-56(%rbp), %rax	# gh, tmp143
	movl	80(%rax), %edx	# gh_7->dims, D.8067
	movl	nt(%rip), %eax	# nt, nt.68
	.loc 1 1038 0
	cmpl	%eax, %edx	# nt.68, D.8067
	je	.L174	#,
.L173:
	.loc 1 1044 0
	movl	nx(%rip), %eax	# nx, nx.69
	cmpl	$-1, %eax	#, nx.69
	jne	.L175	#,
	.loc 1 1044 0 is_stmt 0 discriminator 1
	movl	ny(%rip), %eax	# ny, ny.70
	cmpl	$-1, %eax	#, ny.70
	jne	.L175	#,
	movl	nz(%rip), %eax	# nz, nz.71
	cmpl	$-1, %eax	#, nz.71
	jne	.L175	#,
	movl	nt(%rip), %eax	# nt, nt.72
	cmpl	$-1, %eax	#, nt.72
	je	.L176	#,
.L175:
	.loc 1 1046 0 is_stmt 1
	movl	$.LC50, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1047 0
	movl	$0, -92(%rbp)	#, j
	jmp	.L177	#
.L178:
	.loc 1 1048 0 discriminator 2
	movq	-56(%rbp), %rax	# gh, tmp144
	movl	-92(%rbp), %edx	# j, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	addq	$16, %rdx	#, tmp147
	movl	4(%rax,%rdx,4), %eax	# gh_7->dims, D.8067
	movl	%eax, %esi	# D.8067,
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1047 0 discriminator 2
	addl	$1, -92(%rbp)	#, j
.L177:
	.loc 1 1047 0 is_stmt 0 discriminator 1
	cmpl	$3, -92(%rbp)	#, j
	jle	.L178	#,
	.loc 1 1049 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	movq	stdout(%rip), %rax	# stdout, stdout.73
	movq	%rax, %rdi	# stdout.73,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L174	#
.L176:
	.loc 1 1053 0
	movq	-56(%rbp), %rax	# gh, tmp148
	movl	68(%rax), %eax	# gh_7->dims, nx.74
	movl	%eax, nx(%rip)	# nx.74, nx
	.loc 1 1054 0
	movq	-56(%rbp), %rax	# gh, tmp149
	movl	72(%rax), %eax	# gh_7->dims, ny.75
	movl	%eax, ny(%rip)	# ny.75, ny
	.loc 1 1055 0
	movq	-56(%rbp), %rax	# gh, tmp150
	movl	76(%rax), %eax	# gh_7->dims, nz.76
	movl	%eax, nz(%rip)	# nz.76, nz
	.loc 1 1056 0
	movq	-56(%rbp), %rax	# gh, tmp151
	movl	80(%rax), %eax	# gh_7->dims, nt.77
	movl	%eax, nt(%rip)	# nt.77, nt
	.loc 1 1057 0
	movl	nx(%rip), %edx	# nx, nx.78
	movl	ny(%rip), %eax	# ny, ny.79
	imull	%eax, %edx	# ny.79, D.8067
	movl	nz(%rip), %eax	# nz, nz.80
	imull	%eax, %edx	# nz.80, D.8067
	movl	nt(%rip), %eax	# nt, nt.81
	imull	%edx, %eax	# D.8067, volume.82
	movl	%eax, volume(%rip)	# volume.82, volume
.L174:
	.loc 1 1064 0
	cmpl	$0, -88(%rbp)	#, sixtyfourbits
	jne	.L179	#,
	.loc 1 1065 0
	movq	-56(%rbp), %rax	# gh, tmp152
	movl	$28, 84(%rax)	#, gh_7->header_bytes
	jmp	.L180	#
.L179:
	.loc 1 1067 0
	movq	-56(%rbp), %rax	# gh, tmp153
	movl	$48, 84(%rax)	#, gh_7->header_bytes
.L180:
	.loc 1 1071 0
	movq	-56(%rbp), %rax	# gh, tmp154
	movl	$0, 88(%rax)	#, gh_7->order
	.loc 1 1075 0
	movq	-120(%rbp), %rax	# byterevflag, tmp155
	movl	(%rax), %eax	# *byterevflag_16(D), D.8067
	leaq	-48(%rbp), %rdi	#, tmp156
	leaq	-80(%rbp), %rcx	#, tmp157
	movq	-64(%rbp), %rdx	# fp, tmp158
	movl	-108(%rbp), %esi	# parallel, tmp159
	movq	$.LC52, (%rsp)	#,
	movq	%rdi, %r9	# tmp156,
	movl	$8, %r8d	#,
	movl	%eax, %edi	# D.8067,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8067
	je	.L181	#,
	.loc 1 1076 0
	movl	$1, %edi	#,
	call	terminate	#
.L181:
	.loc 1 1077 0
	movq	-120(%rbp), %rax	# byterevflag, tmp160
	movl	(%rax), %eax	# *byterevflag_16(D), D.8067
	leaq	-48(%rbp), %rdi	#, tmp161
	leaq	-72(%rbp), %rcx	#, tmp162
	movq	-64(%rbp), %rdx	# fp, tmp163
	movl	-108(%rbp), %esi	# parallel, tmp164
	movq	$.LC53, (%rsp)	#,
	movq	%rdi, %r9	# tmp161,
	movl	$8, %r8d	#,
	movl	%eax, %edi	# D.8067,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8067
	je	.L182	#,
	.loc 1 1078 0
	movl	$1, %edi	#,
	call	terminate	#
.L182:
	.loc 1 1080 0
	movq	-72(%rbp), %rdx	# c2, c2.83
	movq	-80(%rbp), %rax	# c1, c1.84
	movq	%rdx, -128(%rbp)	# c2.83, %sfp
	movsd	-128(%rbp), %xmm1	# %sfp,
	movq	%rax, -128(%rbp)	# c1.84, %sfp
	movsd	-128(%rbp), %xmm0	# %sfp,
	movl	$.LC54, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
	.loc 1 1082 0
	movl	$0, %eax	#, D.8067
.L183:
	.loc 1 1083 0
	movq	-24(%rbp), %rbx	# D.8069, tmp167
	xorq	%fs:40, %rbx	#, tmp167
	je	.L184	#,
	call	__stack_chk_fail	#
.L184:
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	read_v3_gauge_hdr, .-read_v3_gauge_hdr
	.section	.rodata
	.align 8
.LC55:
	.string	"Reading as 1996-style gauge field configuration."
	.align 8
.LC56:
	.string	"Reading as 1996-style gauge field configuration with byte reversal"
	.align 8
.LC57:
	.string	"read_1996_gauge_hdr: Can't byte reverse"
	.align 8
.LC58:
	.string	"read_1996_gauge_hdr: Incorrect lattice dimensions "
.LC59:
	.string	"header size"
.LC60:
	.string	"n_descript"
	.align 8
.LC61:
	.string	"read_1996_gauge_hdr: gauge field descriptor length %d\n"
.LC62:
	.string	" exceeds allocated space %d\n"
.LC63:
	.string	"descrip"
.LC64:
	.string	"gauge_field.descript: %s\n"
.LC65:
	.string	"n_param"
	.align 8
.LC66:
	.string	"read_1996_gauge_hdr: gauge field parameter vector length %d\n"
.LC67:
	.string	"gauge param"
.LC68:
	.string	"gauge_field.param[%d] = %f\n"
	.text
	.globl	read_1996_gauge_hdr
	.type	read_1996_gauge_hdr, @function
read_1996_gauge_hdr:
.LFB33:
	.loc 1 1088 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$360, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)	# gf, gf
	movl	%esi, -332(%rbp)	# parallel, parallel
	movq	%rdx, -344(%rbp)	# byterevflag, byterevflag
	.loc 1 1088 0
	movq	%fs:40, %rax	#, tmp186
	movq	%rax, -24(%rbp)	# tmp186, D.8086
	xorl	%eax, %eax	# tmp186
	.loc 1 1105 0
	movabsq	$4123381219610158450, %rax	#, tmp188
	movq	%rax, -288(%rbp)	# tmp188, myname
	movabsq	$6874014160093929270, %rax	#, tmp189
	movq	%rax, -280(%rbp)	# tmp189, myname
	movl	$7496808, -272(%rbp)	#, myname
	.loc 1 1107 0
	movq	-328(%rbp), %rax	# gf, tmp114
	movq	(%rax), %rax	# gf_4(D)->fp, tmp115
	movq	%rax, -304(%rbp)	# tmp115, fp
	.loc 1 1108 0
	movq	-328(%rbp), %rax	# gf, tmp116
	movq	8(%rax), %rax	# gf_4(D)->header, tmp117
	movq	%rax, -296(%rbp)	# tmp117, gh
	.loc 1 1112 0
	movq	-296(%rbp), %rax	# gh, tmp118
	movl	(%rax), %eax	# gh_6->magic_number, tmp119
	movl	%eax, -308(%rbp)	# tmp119, tmp
	.loc 1 1114 0
	movq	-296(%rbp), %rax	# gh, tmp120
	movl	(%rax), %eax	# gh_6->magic_number, D.8081
	cmpl	$53546, %eax	#, D.8081
	jne	.L186	#,
	.loc 1 1116 0
	movl	$.LC55, %edi	#,
	call	puts	#
	.loc 1 1117 0
	movq	-344(%rbp), %rax	# byterevflag, tmp121
	movl	$0, (%rax)	#, *byterevflag_9(D)
	jmp	.L187	#
.L186:
	.loc 1 1121 0
	movq	-296(%rbp), %rax	# gh, D.8082
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.8082,
	call	byterevn	#
	.loc 1 1122 0
	movq	-296(%rbp), %rax	# gh, tmp122
	movl	(%rax), %eax	# gh_6->magic_number, D.8081
	cmpl	$53546, %eax	#, D.8081
	jne	.L188	#,
	.loc 1 1124 0
	movq	-344(%rbp), %rax	# byterevflag, tmp123
	movl	$1, (%rax)	#, *byterevflag_9(D)
	.loc 1 1125 0
	movl	$.LC56, %edi	#,
	call	puts	#
	.loc 1 1127 0
	movl	$.LC57, %edi	#,
	call	puts	#
	.loc 1 1128 0
	movl	$8, %edx	#,
	movl	$4, %esi	#,
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1130 0
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L187	#
.L188:
	.loc 1 1138 0
	movq	-296(%rbp), %rax	# gh, tmp124
	movl	-308(%rbp), %edx	# tmp, tmp125
	movl	%edx, (%rax)	# tmp125, gh_6->magic_number
	.loc 1 1139 0
	movl	$1, %eax	#, D.8081
	jmp	.L207	#
.L187:
	.loc 1 1148 0
	movq	-296(%rbp), %rax	# gh, tmp126
	leaq	68(%rax), %rcx	#, D.8083
	movq	-344(%rbp), %rax	# byterevflag, tmp127
	movl	(%rax), %eax	# *byterevflag_9(D), D.8081
	leaq	-288(%rbp), %rdi	#, tmp128
	movq	-304(%rbp), %rdx	# fp, tmp129
	movl	-332(%rbp), %esi	# parallel, tmp130
	movq	$.LC10, (%rsp)	#,
	movq	%rdi, %r9	# tmp128,
	movl	$16, %r8d	#,
	movl	%eax, %edi	# D.8081,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8081
	je	.L190	#,
	.loc 1 1149 0
	movl	$1, %edi	#,
	call	terminate	#
.L190:
	.loc 1 1151 0
	movq	-296(%rbp), %rax	# gh, tmp131
	movl	68(%rax), %edx	# gh_6->dims, D.8081
	movl	nx(%rip), %eax	# nx, nx.85
	cmpl	%eax, %edx	# nx.85, D.8081
	jne	.L191	#,
	.loc 1 1152 0 discriminator 1
	movq	-296(%rbp), %rax	# gh, tmp132
	movl	72(%rax), %edx	# gh_6->dims, D.8081
	movl	ny(%rip), %eax	# ny, ny.86
	.loc 1 1151 0 discriminator 1
	cmpl	%eax, %edx	# ny.86, D.8081
	jne	.L191	#,
	.loc 1 1153 0
	movq	-296(%rbp), %rax	# gh, tmp133
	movl	76(%rax), %edx	# gh_6->dims, D.8081
	movl	nz(%rip), %eax	# nz, nz.87
	.loc 1 1152 0
	cmpl	%eax, %edx	# nz.87, D.8081
	jne	.L191	#,
	.loc 1 1154 0
	movq	-296(%rbp), %rax	# gh, tmp134
	movl	80(%rax), %edx	# gh_6->dims, D.8081
	movl	nt(%rip), %eax	# nt, nt.88
	.loc 1 1153 0
	cmpl	%eax, %edx	# nt.88, D.8081
	je	.L192	#,
.L191:
	.loc 1 1159 0
	movl	nx(%rip), %eax	# nx, nx.89
	cmpl	$-1, %eax	#, nx.89
	jne	.L193	#,
	.loc 1 1159 0 is_stmt 0 discriminator 1
	movl	ny(%rip), %eax	# ny, ny.90
	cmpl	$-1, %eax	#, ny.90
	jne	.L193	#,
	movl	nz(%rip), %eax	# nz, nz.91
	cmpl	$-1, %eax	#, nz.91
	jne	.L193	#,
	movl	nt(%rip), %eax	# nt, nt.92
	cmpl	$-1, %eax	#, nt.92
	je	.L194	#,
.L193:
	.loc 1 1161 0 is_stmt 1
	movl	$.LC58, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1162 0
	movl	$0, -312(%rbp)	#, j
	jmp	.L195	#
.L196:
	.loc 1 1163 0 discriminator 2
	movq	-296(%rbp), %rax	# gh, tmp135
	movl	-312(%rbp), %edx	# j, tmp137
	movslq	%edx, %rdx	# tmp137, tmp136
	addq	$16, %rdx	#, tmp138
	movl	4(%rax,%rdx,4), %eax	# gh_6->dims, D.8081
	movl	%eax, %esi	# D.8081,
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1162 0 discriminator 2
	addl	$1, -312(%rbp)	#, j
.L195:
	.loc 1 1162 0 is_stmt 0 discriminator 1
	cmpl	$3, -312(%rbp)	#, j
	jle	.L196	#,
	.loc 1 1164 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	movq	stdout(%rip), %rax	# stdout, stdout.93
	movq	%rax, %rdi	# stdout.93,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L192	#
.L194:
	.loc 1 1168 0
	movq	-296(%rbp), %rax	# gh, tmp139
	movl	68(%rax), %eax	# gh_6->dims, nx.94
	movl	%eax, nx(%rip)	# nx.94, nx
	.loc 1 1169 0
	movq	-296(%rbp), %rax	# gh, tmp140
	movl	72(%rax), %eax	# gh_6->dims, ny.95
	movl	%eax, ny(%rip)	# ny.95, ny
	.loc 1 1170 0
	movq	-296(%rbp), %rax	# gh, tmp141
	movl	76(%rax), %eax	# gh_6->dims, nz.96
	movl	%eax, nz(%rip)	# nz.96, nz
	.loc 1 1171 0
	movq	-296(%rbp), %rax	# gh, tmp142
	movl	80(%rax), %eax	# gh_6->dims, nt.97
	movl	%eax, nt(%rip)	# nt.97, nt
	.loc 1 1172 0
	movl	nx(%rip), %edx	# nx, nx.98
	movl	ny(%rip), %eax	# ny, ny.99
	imull	%eax, %edx	# ny.99, D.8081
	movl	nz(%rip), %eax	# nz, nz.100
	imull	%eax, %edx	# nz.100, D.8081
	movl	nt(%rip), %eax	# nt, nt.101
	imull	%edx, %eax	# D.8081, volume.102
	movl	%eax, volume(%rip)	# volume.102, volume
.L192:
	.loc 1 1179 0
	movq	-296(%rbp), %rax	# gh, tmp143
	leaq	84(%rax), %rcx	#, D.8082
	.loc 1 1178 0
	movq	-344(%rbp), %rax	# byterevflag, tmp144
	movl	(%rax), %eax	# *byterevflag_9(D), D.8081
	leaq	-288(%rbp), %rdi	#, tmp145
	movq	-304(%rbp), %rdx	# fp, tmp146
	movl	-332(%rbp), %esi	# parallel, tmp147
	movq	$.LC59, (%rsp)	#,
	movq	%rdi, %r9	# tmp145,
	movl	$4, %r8d	#,
	movl	%eax, %edi	# D.8081,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8081
	je	.L197	#,
	.loc 1 1180 0
	movl	$1, %edi	#,
	call	terminate	#
.L197:
	.loc 1 1185 0
	movq	-296(%rbp), %rax	# gh, tmp148
	leaq	88(%rax), %rcx	#, D.8082
	.loc 1 1184 0
	movq	-344(%rbp), %rax	# byterevflag, tmp149
	movl	(%rax), %eax	# *byterevflag_9(D), D.8081
	leaq	-288(%rbp), %rdi	#, tmp150
	movq	-304(%rbp), %rdx	# fp, tmp151
	movl	-332(%rbp), %esi	# parallel, tmp152
	movq	$.LC12, (%rsp)	#,
	movq	%rdi, %r9	# tmp150,
	movl	$4, %r8d	#,
	movl	%eax, %edi	# D.8081,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8081
	je	.L198	#,
	.loc 1 1186 0
	movl	$1, %edi	#,
	call	terminate	#
.L198:
	.loc 1 1190 0
	movq	-344(%rbp), %rax	# byterevflag, tmp153
	movl	(%rax), %eax	# *byterevflag_9(D), D.8081
	leaq	-288(%rbp), %rdi	#, tmp154
	leaq	-256(%rbp), %rcx	#, tmp155
	movq	-304(%rbp), %rdx	# fp, tmp156
	movl	-332(%rbp), %esi	# parallel, tmp157
	movq	$.LC60, (%rsp)	#,
	movq	%rdi, %r9	# tmp154,
	movl	$4, %r8d	#,
	movl	%eax, %edi	# D.8081,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8081
	je	.L199	#,
	.loc 1 1192 0
	movl	$1, %edi	#,
	call	terminate	#
.L199:
	.loc 1 1194 0
	movl	-256(%rbp), %eax	# gauge_field.n_descript, D.8081
	cmpl	$200, %eax	#, D.8081
	jle	.L200	#,
	.loc 1 1196 0
	movl	-256(%rbp), %eax	# gauge_field.n_descript, D.8081
	movl	%eax, %esi	# D.8081,
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1198 0
	movl	$200, %esi	#,
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1200 0
	movl	$1, %edi	#,
	call	terminate	#
.L200:
	.loc 1 1208 0
	leaq	-288(%rbp), %rcx	#, tmp158
	leaq	-256(%rbp), %rax	#, tmp159
	leaq	4(%rax), %rdx	#, tmp160
	movq	-304(%rbp), %rsi	# fp, tmp161
	movl	-332(%rbp), %eax	# parallel, tmp162
	movl	$.LC63, %r9d	#,
	movq	%rcx, %r8	# tmp158,
	movl	$200, %ecx	#,
	movl	%eax, %edi	# tmp162,
	call	psread_data	#
	testl	%eax, %eax	# D.8081
	je	.L201	#,
	.loc 1 1209 0
	movl	$1, %edi	#,
	call	terminate	#
.L201:
	.loc 1 1213 0
	movl	-256(%rbp), %eax	# gauge_field.n_descript, D.8081
	subl	$1, %eax	#, D.8081
	cltq
	movb	$0, -252(%rbp,%rax)	#, gauge_field.descript
	.loc 1 1215 0
	leaq	-256(%rbp), %rax	#, tmp164
	addq	$4, %rax	#, tmp165
	movq	%rax, %rsi	# tmp165,
	movl	$.LC64, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1219 0
	movq	-344(%rbp), %rax	# byterevflag, tmp166
	movl	(%rax), %eax	# *byterevflag_9(D), D.8081
	leaq	-288(%rbp), %rdi	#, tmp167
	leaq	-256(%rbp), %rdx	#, tmp168
	leaq	204(%rdx), %rcx	#, tmp169
	movq	-304(%rbp), %rdx	# fp, tmp170
	movl	-332(%rbp), %esi	# parallel, tmp171
	movq	$.LC65, (%rsp)	#,
	movq	%rdi, %r9	# tmp167,
	movl	$4, %r8d	#,
	movl	%eax, %edi	# D.8081,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8081
	je	.L202	#,
	.loc 1 1221 0
	movl	$1, %edi	#,
	call	terminate	#
.L202:
	.loc 1 1223 0
	movl	-52(%rbp), %eax	# gauge_field.n_param, D.8081
	cmpl	$2, %eax	#, D.8081
	jle	.L203	#,
	.loc 1 1225 0
	movl	-52(%rbp), %eax	# gauge_field.n_param, D.8081
	movl	%eax, %esi	# D.8081,
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1227 0
	movl	$2, %esi	#,
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1229 0
	movl	$1, %edi	#,
	call	terminate	#
.L203:
	.loc 1 1234 0
	movl	$0, -312(%rbp)	#, j
	jmp	.L204	#
.L206:
	.loc 1 1237 0
	leaq	-256(%rbp), %rax	#, tmp172
	movl	-312(%rbp), %edx	# j, tmp174
	movslq	%edx, %rdx	# tmp174, tmp173
	addq	$26, %rdx	#, tmp175
	salq	$3, %rdx	#, tmp176
	leaq	(%rax,%rdx), %rcx	#, D.8084
	.loc 1 1236 0
	movq	-344(%rbp), %rax	# byterevflag, tmp177
	movl	(%rax), %eax	# *byterevflag_9(D), D.8081
	leaq	-288(%rbp), %rdi	#, tmp178
	movq	-304(%rbp), %rdx	# fp, tmp179
	movl	-332(%rbp), %esi	# parallel, tmp180
	movq	$.LC67, (%rsp)	#,
	movq	%rdi, %r9	# tmp178,
	movl	$8, %r8d	#,
	movl	%eax, %edi	# D.8081,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8081
	je	.L205	#,
	.loc 1 1238 0
	movl	$1, %edi	#,
	call	terminate	#
.L205:
	.loc 1 1239 0
	movl	-312(%rbp), %eax	# j, tmp182
	cltq
	addq	$26, %rax	#, tmp183
	movq	-256(%rbp,%rax,8), %rax	# gauge_field.param, D.8085
	movl	-312(%rbp), %edx	# j, tmp184
	movq	%rax, -352(%rbp)	# D.8085, %sfp
	movsd	-352(%rbp), %xmm0	# %sfp,
	movl	%edx, %esi	# tmp184,
	movl	$.LC68, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 1234 0
	addl	$1, -312(%rbp)	#, j
.L204:
	.loc 1 1234 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# gauge_field.n_param, D.8081
	cmpl	-312(%rbp), %eax	# j, D.8081
	jg	.L206	#,
	.loc 1 1245 0 is_stmt 1
	movl	$0, %eax	#, D.8081
.L207:
	.loc 1 1247 0
	movq	-24(%rbp), %rbx	# D.8086, tmp187
	xorq	%fs:40, %rbx	#, tmp187
	je	.L208	#,
	call	__stack_chk_fail	#
.L208:
	addq	$360, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	read_1996_gauge_hdr, .-read_1996_gauge_hdr
	.section	.rodata
.LC69:
	.string	"reading as archive format"
	.align 8
.LC70:
	.string	"reading as archive format with byte reversal"
.LC71:
	.string	"%s: Can't byte reverse\n"
.LC72:
	.string	"Reading with byte reversal"
	.align 8
.LC73:
	.string	"%s: Unrecognized magic number in gauge configuration file header.\n"
.LC74:
	.string	"Expected %x but read %x\n"
.LC75:
	.string	"Expected %s but read %s\n"
	.align 8
.LC76:
	.string	"%s: Must use reload_serial with archive files for now.\n"
.LC77:
	.string	"DIMENSION_1"
.LC78:
	.string	"DIMENSION_1 not present"
.LC79:
	.string	"DIMENSION_2"
.LC80:
	.string	"DIMENSION_2 not present"
.LC81:
	.string	"DIMENSION_3"
.LC82:
	.string	"DIMENSION_3 not present"
.LC83:
	.string	"DIMENSION_4"
.LC84:
	.string	"DIMENSION_4 not present"
.LC85:
	.string	"CHECKSUM"
.LC86:
	.string	"CHECKSUM not present"
	.align 8
.LC87:
	.string	"%s: Incorrect lattice dimensions "
.LC88:
	.string	"time stamp"
.LC89:
	.string	"order parameter"
	.text
	.globl	read_gauge_hdr
	.type	read_gauge_hdr, @function
read_gauge_hdr:
.LFB34:
	.loc 1 1252 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# gf, gf
	movl	%esi, -140(%rbp)	# parallel, parallel
	.loc 1 1252 0
	movq	%fs:40, %rax	#, tmp190
	movq	%rax, -24(%rbp)	# tmp190, D.8108
	xorl	%eax, %eax	# tmp190
	.loc 1 1261 0
	movabsq	$8458155234582160754, %rax	#, tmp192
	movq	%rax, -48(%rbp)	# tmp192, myname
	movl	$1751082343, -40(%rbp)	#, myname
	movw	$29284, -36(%rbp)	#, myname
	movb	$0, -34(%rbp)	#, myname
	.loc 1 1265 0
	movl	$0, -96(%rbp)	#, ARCHYES
	.loc 1 1268 0
	movq	-136(%rbp), %rax	# gf, tmp114
	movq	(%rax), %rax	# gf_7(D)->fp, tmp115
	movq	%rax, -80(%rbp)	# tmp115, fp
	.loc 1 1269 0
	movq	-136(%rbp), %rax	# gf, tmp116
	movq	8(%rax), %rax	# gf_7(D)->header, tmp117
	movq	%rax, -72(%rbp)	# tmp117, gh
	.loc 1 1276 0
	movq	-72(%rbp), %rdx	# gh, D.8102
	leaq	-48(%rbp), %rcx	#, tmp118
	movq	-80(%rbp), %rsi	# fp, tmp119
	movl	-140(%rbp), %eax	# parallel, tmp120
	movl	$.LC45, %r9d	#,
	movq	%rcx, %r8	# tmp118,
	movl	$4, %ecx	#,
	movl	%eax, %edi	# tmp120,
	call	psread_data	#
	testl	%eax, %eax	# D.8101
	je	.L210	#,
	.loc 1 1277 0
	movl	$1, %edi	#,
	call	terminate	#
.L210:
	.loc 1 1279 0
	movq	-72(%rbp), %rax	# gh, tmp121
	movl	(%rax), %eax	# gh_9->magic_number, tmp122
	movl	%eax, -92(%rbp)	# tmp122, tmp
	.loc 1 1280 0
	movq	-72(%rbp), %rax	# gh, tmp123
	movl	(%rax), %eax	# gh_9->magic_number, btmp.103
	movl	%eax, -116(%rbp)	# btmp.103, btmp
	.loc 1 1281 0
	leaq	-116(%rbp), %rax	#, tmp124
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	byterevn	#
	.loc 1 1286 0
	cmpl	$1111836489, -92(%rbp)	#, tmp
	jne	.L211	#,
	.loc 1 1288 0
	movl	$.LC69, %edi	#,
	call	puts	#
	.loc 1 1289 0
	movl	$1, -96(%rbp)	#, ARCHYES
	.loc 1 1290 0
	movl	$0, -112(%rbp)	#, byterevflag
	jmp	.L212	#
.L211:
	.loc 1 1292 0
	movl	-116(%rbp), %eax	# btmp, btmp.104
	cmpl	$1111836489, %eax	#, btmp.104
	jne	.L213	#,
	.loc 1 1294 0
	movl	$.LC70, %edi	#,
	call	puts	#
	.loc 1 1295 0
	movl	$1, -96(%rbp)	#, ARCHYES
	.loc 1 1296 0
	movl	$1, -112(%rbp)	#, byterevflag
	.loc 1 1297 0
	movl	-116(%rbp), %edx	# btmp, btmp.105
	movq	-72(%rbp), %rax	# gh, tmp125
	movl	%edx, (%rax)	# btmp.105, gh_9->magic_number
	.loc 1 1299 0
	leaq	-48(%rbp), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1300 0
	movl	$8, %edx	#,
	movl	$4, %esi	#,
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1302 0
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L212	#
.L213:
	.loc 1 1305 0
	cmpl	$20103, -92(%rbp)	#, tmp
	jne	.L214	#,
	.loc 1 1307 0
	movl	$0, -112(%rbp)	#, byterevflag
	jmp	.L212	#
.L214:
	.loc 1 1311 0
	movl	-116(%rbp), %eax	# btmp, btmp.106
	cmpl	$20103, %eax	#, btmp.106
	jne	.L215	#,
	.loc 1 1313 0
	movl	$1, -112(%rbp)	#, byterevflag
	.loc 1 1314 0
	movl	-116(%rbp), %edx	# btmp, btmp.107
	movq	-72(%rbp), %rax	# gh, tmp127
	movl	%edx, (%rax)	# btmp.107, gh_9->magic_number
	.loc 1 1315 0
	movl	$.LC72, %edi	#,
	call	puts	#
	.loc 1 1317 0
	leaq	-48(%rbp), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1318 0
	movl	$8, %edx	#,
	movl	$4, %esi	#,
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1320 0
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L212	#
.L215:
	.loc 1 1326 0
	leaq	-112(%rbp), %rdx	#, tmp129
	movl	-140(%rbp), %ecx	# parallel, tmp130
	movq	-136(%rbp), %rax	# gf, tmp131
	movl	%ecx, %esi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	read_v3_gauge_hdr	#
	testl	%eax, %eax	# D.8101
	je	.L216	#,
	.loc 1 1327 0 discriminator 1
	leaq	-112(%rbp), %rdx	#, tmp132
	movl	-140(%rbp), %ecx	# parallel, tmp133
	movq	-136(%rbp), %rax	# gf, tmp134
	movl	%ecx, %esi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	read_1996_gauge_hdr	#
	.loc 1 1326 0 discriminator 1
	testl	%eax, %eax	# D.8101
	je	.L216	#,
	.loc 1 1330 0
	leaq	-48(%rbp), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	movl	$.LC73, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1331 0
	movl	-92(%rbp), %eax	# tmp, tmp136
	movl	%eax, %edx	# tmp136,
	movl	$20103, %esi	#,
	movl	$.LC74, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1333 0
	movl	-92(%rbp), %eax	# tmp, tmp137
	cltq
	movq	%rax, %rdx	# D.8104,
	movl	$20103, %esi	#,
	movl	$.LC75, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1335 0
	movl	$1, %edi	#,
	call	terminate	#
.L216:
	.loc 1 1337 0
	movl	-112(%rbp), %eax	# byterevflag, D.8101
	jmp	.L237	#
.L212:
	.loc 1 1345 0
	cmpl	$1, -96(%rbp)	#, ARCHYES
	jne	.L218	#,
	.loc 1 1347 0
	movq	-136(%rbp), %rax	# gf, tmp138
	movq	8(%rax), %rax	# gf_7(D)->header, D.8105
	movl	$0, 88(%rax)	#, _26->order
	.loc 1 1349 0
	cmpl	$0, -140(%rbp)	#, parallel
	je	.L219	#,
	.loc 1 1350 0
	movq	stderr(%rip), %rax	# stderr, stderr.108
	leaq	-48(%rbp), %rdx	#, tmp139
	movl	$.LC76, %esi	#,
	movq	%rax, %rdi	# stderr.108,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1353 0
	movl	$1, %edi	#,
	call	terminate	#
.L219:
	.loc 1 1357 0
	movq	-80(%rbp), %rax	# fp, tmp140
	movq	%rax, %rdi	# tmp140,
	call	qcdhdr_get_hdr	#
	movq	%rax, -88(%rbp)	# tmp141, hdr
	.loc 1 1360 0
	leaq	-64(%rbp), %rdx	#, tmp142
	movq	-88(%rbp), %rax	# hdr, tmp143
	movq	%rax, %rsi	# tmp143,
	movl	$.LC77, %edi	#,
	call	qcdhdr_get_int	#
	cmpl	$-1, %eax	#, D.8101
	jne	.L220	#,
	.loc 1 1361 0
	movl	$.LC78, %edi	#,
	call	error_exit	#
.L220:
	.loc 1 1362 0
	leaq	-64(%rbp), %rax	#, tmp144
	leaq	4(%rax), %rdx	#, tmp145
	movq	-88(%rbp), %rax	# hdr, tmp146
	movq	%rax, %rsi	# tmp146,
	movl	$.LC79, %edi	#,
	call	qcdhdr_get_int	#
	cmpl	$-1, %eax	#, D.8101
	jne	.L221	#,
	.loc 1 1363 0
	movl	$.LC80, %edi	#,
	call	error_exit	#
.L221:
	.loc 1 1364 0
	leaq	-64(%rbp), %rax	#, tmp147
	leaq	8(%rax), %rdx	#, tmp148
	movq	-88(%rbp), %rax	# hdr, tmp149
	movq	%rax, %rsi	# tmp149,
	movl	$.LC81, %edi	#,
	call	qcdhdr_get_int	#
	cmpl	$-1, %eax	#, D.8101
	jne	.L222	#,
	.loc 1 1365 0
	movl	$.LC82, %edi	#,
	call	error_exit	#
.L222:
	.loc 1 1366 0
	leaq	-64(%rbp), %rax	#, tmp150
	leaq	12(%rax), %rdx	#, tmp151
	movq	-88(%rbp), %rax	# hdr, tmp152
	movq	%rax, %rsi	# tmp152,
	movl	$.LC83, %edi	#,
	call	qcdhdr_get_int	#
	cmpl	$-1, %eax	#, D.8101
	jne	.L223	#,
	.loc 1 1367 0
	movl	$.LC84, %edi	#,
	call	error_exit	#
.L223:
	.loc 1 1369 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L224	#
.L225:
	.loc 1 1369 0 is_stmt 0 discriminator 2
	movl	-100(%rbp), %eax	# i, tmp154
	cltq
	movl	-64(%rbp,%rax,4), %edx	# dims, D.8101
	movq	-72(%rbp), %rax	# gh, tmp155
	movl	-100(%rbp), %ecx	# i, tmp157
	movslq	%ecx, %rcx	# tmp157, tmp156
	addq	$16, %rcx	#, tmp158
	movl	%edx, 4(%rax,%rcx,4)	# D.8101, gh_9->dims
	addl	$1, -100(%rbp)	#, i
.L224:
	.loc 1 1369 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, i
	jle	.L225	#,
	.loc 1 1372 0 is_stmt 1
	leaq	-108(%rbp), %rdx	#, tmp159
	movq	-88(%rbp), %rax	# hdr, tmp160
	movq	%rax, %rsi	# tmp160,
	movl	$.LC85, %edi	#,
	call	qcdhdr_get_int32x	#
	cmpl	$-1, %eax	#, D.8101
	jne	.L226	#,
	.loc 1 1373 0
	movl	$.LC86, %edi	#,
	call	error_exit	#
.L226:
	.loc 1 1374 0
	movl	-108(%rbp), %edx	# chksum, chksum.109
	movq	-136(%rbp), %rax	# gf, tmp161
	movl	%edx, 44(%rax)	# chksum.109, gf_7(D)->check.sum31
	jmp	.L227	#
.L218:
	.loc 1 1380 0
	movq	-72(%rbp), %rax	# gh, tmp162
	leaq	68(%rax), %rcx	#, D.8106
	movl	-112(%rbp), %eax	# byterevflag, byterevflag.110
	leaq	-48(%rbp), %rdi	#, tmp163
	movq	-80(%rbp), %rdx	# fp, tmp164
	movl	-140(%rbp), %esi	# parallel, tmp165
	movq	$.LC10, (%rsp)	#,
	movq	%rdi, %r9	# tmp163,
	movl	$16, %r8d	#,
	movl	%eax, %edi	# byterevflag.110,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8101
	je	.L227	#,
	.loc 1 1381 0
	movl	$1, %edi	#,
	call	terminate	#
.L227:
	.loc 1 1386 0
	movq	-72(%rbp), %rax	# gh, tmp166
	movl	68(%rax), %edx	# gh_9->dims, D.8101
	movl	nx(%rip), %eax	# nx, nx.111
	cmpl	%eax, %edx	# nx.111, D.8101
	jne	.L228	#,
	.loc 1 1387 0 discriminator 1
	movq	-72(%rbp), %rax	# gh, tmp167
	movl	72(%rax), %edx	# gh_9->dims, D.8101
	movl	ny(%rip), %eax	# ny, ny.112
	.loc 1 1386 0 discriminator 1
	cmpl	%eax, %edx	# ny.112, D.8101
	jne	.L228	#,
	.loc 1 1388 0
	movq	-72(%rbp), %rax	# gh, tmp168
	movl	76(%rax), %edx	# gh_9->dims, D.8101
	movl	nz(%rip), %eax	# nz, nz.113
	.loc 1 1387 0
	cmpl	%eax, %edx	# nz.113, D.8101
	jne	.L228	#,
	.loc 1 1389 0
	movq	-72(%rbp), %rax	# gh, tmp169
	movl	80(%rax), %edx	# gh_9->dims, D.8101
	movl	nt(%rip), %eax	# nt, nt.114
	.loc 1 1388 0
	cmpl	%eax, %edx	# nt.114, D.8101
	je	.L229	#,
.L228:
	.loc 1 1394 0
	movl	nx(%rip), %eax	# nx, nx.115
	cmpl	$-1, %eax	#, nx.115
	jne	.L230	#,
	.loc 1 1394 0 is_stmt 0 discriminator 1
	movl	ny(%rip), %eax	# ny, ny.116
	cmpl	$-1, %eax	#, ny.116
	jne	.L230	#,
	movl	nz(%rip), %eax	# nz, nz.117
	cmpl	$-1, %eax	#, nz.117
	jne	.L230	#,
	movl	nt(%rip), %eax	# nt, nt.118
	cmpl	$-1, %eax	#, nt.118
	je	.L231	#,
.L230:
	.loc 1 1396 0 is_stmt 1
	leaq	-48(%rbp), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	movl	$.LC87, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1397 0
	movl	$0, -104(%rbp)	#, j
	jmp	.L232	#
.L233:
	.loc 1 1398 0 discriminator 2
	movq	-72(%rbp), %rax	# gh, tmp171
	movl	-104(%rbp), %edx	# j, tmp173
	movslq	%edx, %rdx	# tmp173, tmp172
	addq	$16, %rdx	#, tmp174
	movl	4(%rax,%rdx,4), %eax	# gh_9->dims, D.8101
	movl	%eax, %esi	# D.8101,
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1397 0 discriminator 2
	addl	$1, -104(%rbp)	#, j
.L232:
	.loc 1 1397 0 is_stmt 0 discriminator 1
	cmpl	$3, -104(%rbp)	#, j
	jle	.L233	#,
	.loc 1 1399 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	movq	stdout(%rip), %rax	# stdout, stdout.119
	movq	%rax, %rdi	# stdout.119,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L229	#
.L231:
	.loc 1 1403 0
	movq	-72(%rbp), %rax	# gh, tmp175
	movl	68(%rax), %eax	# gh_9->dims, nx.120
	movl	%eax, nx(%rip)	# nx.120, nx
	.loc 1 1404 0
	movq	-72(%rbp), %rax	# gh, tmp176
	movl	72(%rax), %eax	# gh_9->dims, ny.121
	movl	%eax, ny(%rip)	# ny.121, ny
	.loc 1 1405 0
	movq	-72(%rbp), %rax	# gh, tmp177
	movl	76(%rax), %eax	# gh_9->dims, nz.122
	movl	%eax, nz(%rip)	# nz.122, nz
	.loc 1 1406 0
	movq	-72(%rbp), %rax	# gh, tmp178
	movl	80(%rax), %eax	# gh_9->dims, nt.123
	movl	%eax, nt(%rip)	# nt.123, nt
	.loc 1 1407 0
	movl	nx(%rip), %edx	# nx, nx.124
	movl	ny(%rip), %eax	# ny, ny.125
	imull	%eax, %edx	# ny.125, D.8101
	movl	nz(%rip), %eax	# nz, nz.126
	imull	%eax, %edx	# nz.126, D.8101
	movl	nt(%rip), %eax	# nt, nt.127
	imull	%edx, %eax	# D.8101, volume.128
	movl	%eax, volume(%rip)	# volume.128, volume
.L229:
	.loc 1 1411 0
	cmpl	$0, -96(%rbp)	#, ARCHYES
	je	.L234	#,
	.loc 1 1416 0
	movq	-88(%rbp), %rax	# hdr, tmp179
	movq	%rax, %rdi	# tmp179,
	call	qcdhdr_destroy_hdr	#
	jmp	.L235	#
.L234:
	.loc 1 1423 0
	movq	-72(%rbp), %rax	# gh, tmp180
	leaq	4(%rax), %rdx	#, D.8107
	leaq	-48(%rbp), %rcx	#, tmp181
	movq	-80(%rbp), %rsi	# fp, tmp182
	movl	-140(%rbp), %eax	# parallel, tmp183
	movl	$.LC88, %r9d	#,
	movq	%rcx, %r8	# tmp181,
	movl	$64, %ecx	#,
	movl	%eax, %edi	# tmp183,
	call	psread_data	#
	testl	%eax, %eax	# D.8101
	je	.L236	#,
	.loc 1 1424 0
	movl	$1, %edi	#,
	call	terminate	#
.L236:
	.loc 1 1428 0
	movq	-72(%rbp), %rax	# gh, tmp184
	movl	$88, 84(%rax)	#, gh_9->header_bytes
	.loc 1 1433 0
	movq	-72(%rbp), %rax	# gh, tmp185
	leaq	88(%rax), %rcx	#, D.8102
	movl	-112(%rbp), %eax	# byterevflag, byterevflag.129
	leaq	-48(%rbp), %rdi	#, tmp186
	movq	-80(%rbp), %rdx	# fp, tmp187
	movl	-140(%rbp), %esi	# parallel, tmp188
	movq	$.LC89, (%rsp)	#,
	movq	%rdi, %r9	# tmp186,
	movl	$4, %r8d	#,
	movl	%eax, %edi	# byterevflag.129,
	call	psread_byteorder	#
	testl	%eax, %eax	# D.8101
	je	.L235	#,
	.loc 1 1434 0
	movl	$1, %edi	#,
	call	terminate	#
.L235:
	.loc 1 1437 0
	movl	-112(%rbp), %eax	# byterevflag, D.8101
.L237:
	.loc 1 1439 0
	movq	-24(%rbp), %rbx	# D.8108, tmp191
	xorq	%fs:40, %rbx	#, tmp191
	je	.L238	#,
	call	__stack_chk_fail	#
.L238:
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	read_gauge_hdr, .-read_gauge_hdr
	.section	.rodata
.LC90:
	.string	"rb"
	.align 8
.LC91:
	.string	"r_serial_i: Node %d can't open file %s, error %d\n"
	.text
	.globl	r_serial_i
	.type	r_serial_i, @function
r_serial_i:
.LFB35:
	.loc 1 1444 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# filename, filename
	.loc 1 1454 0
	movq	-40(%rbp), %rax	# filename, tmp68
	movq	%rax, %rdi	# tmp68,
	call	setup_input_gauge_file	#
	movq	%rax, -24(%rbp)	# tmp69, gf
	.loc 1 1455 0
	movq	-24(%rbp), %rax	# gf, tmp70
	movq	8(%rax), %rax	# gf_2->header, tmp71
	movq	%rax, -16(%rbp)	# tmp71, gh
	.loc 1 1458 0
	movq	-24(%rbp), %rax	# gf, tmp72
	movl	$0, 40(%rax)	#, gf_2->parallel
	.loc 1 1462 0
	movl	this_node(%rip), %eax	# this_node, this_node.130
	testl	%eax, %eax	# this_node.130
	jne	.L240	#,
	.loc 1 1464 0
	movq	-40(%rbp), %rax	# filename, tmp73
	movl	$.LC90, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	fopen	#
	movq	%rax, -8(%rbp)	# tmp74, fp
	.loc 1 1465 0
	cmpq	$0, -8(%rbp)	#, fp
	jne	.L241	#,
	.loc 1 1468 0
	call	__errno_location	#
	.loc 1 1467 0
	movl	(%rax), %ecx	# *_6, D.8131
	movl	this_node(%rip), %eax	# this_node, this_node.131
	movq	-40(%rbp), %rdx	# filename, tmp75
	movl	%eax, %esi	# this_node.131,
	movl	$.LC91, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1468 0
	movq	stdout(%rip), %rax	# stdout, stdout.132
	movq	%rax, %rdi	# stdout.132,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L241:
	.loc 1 1471 0
	movq	-24(%rbp), %rax	# gf, tmp76
	movq	-8(%rbp), %rdx	# fp, tmp77
	movq	%rdx, (%rax)	# tmp77, gf_2->fp
	.loc 1 1473 0
	movq	-24(%rbp), %rax	# gf, tmp78
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	read_gauge_hdr	#
	movl	%eax, -28(%rbp)	# byterevflag.133, byterevflag
	jmp	.L242	#
.L240:
	.loc 1 1477 0
	movq	-24(%rbp), %rax	# gf, tmp79
	movq	$0, (%rax)	#, gf_2->fp
.L242:
	.loc 1 1481 0
	leaq	-28(%rbp), %rax	#, tmp80
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	broadcast_bytes	#
	.loc 1 1482 0
	movl	-28(%rbp), %edx	# byterevflag, byterevflag.134
	movq	-24(%rbp), %rax	# gf, tmp81
	movl	%edx, 24(%rax)	# byterevflag.134, gf_2->byterevflag
	.loc 1 1486 0
	movq	-16(%rbp), %rax	# gh, tmp82
	movl	$92, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	broadcast_bytes	#
	.loc 1 1490 0
	movq	-24(%rbp), %rax	# gf, tmp83
	movq	%rax, %rsi	# tmp83,
	movl	$0, %edi	#,
	call	read_site_list	#
	.loc 1 1492 0
	movq	-24(%rbp), %rax	# gf, D.8132
	.loc 1 1494 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	r_serial_i, .-r_serial_i
	.section	.rodata
	.align 8
.LC92:
	.string	"%s: Attempting serial read from parallel file \n"
	.align 8
.LC93:
	.string	"%s: Node %d can't malloc lbuf\n"
	.align 8
.LC94:
	.string	"%s: Node 0 fseeko failed error %d file %s\n"
	.align 8
.LC95:
	.string	"%s: node %d gauge configuration read error %d file %s\n"
	.align 8
.LC96:
	.string	"Restored binary gauge configuration serially from file %s\n"
	.text
	.globl	r_serial
	.type	r_serial, @function
r_serial:
.LFB36:
	.loc 1 1501 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$216, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)	# gf, gf
	.loc 1 1501 0
	movq	%fs:40, %rax	#, tmp281
	movq	%rax, -24(%rbp)	# tmp281, D.8148
	xorl	%eax, %eax	# tmp281
	.loc 1 1523 0
	movabsq	$7809639168886398834, %rax	#, tmp285
	movq	%rax, -48(%rbp)	# tmp285, myname
	movb	$0, -40(%rbp)	#, myname
	.loc 1 1525 0
	movq	-216(%rbp), %rax	# gf, tmp147
	movq	(%rax), %rax	# gf_29(D)->fp, tmp148
	movq	%rax, -88(%rbp)	# tmp148, fp
	.loc 1 1526 0
	movq	-216(%rbp), %rax	# gf, tmp149
	movq	8(%rax), %rax	# gf_29(D)->header, tmp150
	movq	%rax, -80(%rbp)	# tmp150, gh
	.loc 1 1527 0
	movq	-216(%rbp), %rax	# gf, tmp151
	movq	16(%rax), %rax	# gf_29(D)->filename, tmp152
	movq	%rax, -72(%rbp)	# tmp152, filename
	.loc 1 1528 0
	movq	-216(%rbp), %rax	# gf, tmp153
	movl	24(%rax), %eax	# gf_29(D)->byterevflag, tmp154
	movl	%eax, -168(%rbp)	# tmp154, byterevflag
	.loc 1 1530 0
	movl	this_node(%rip), %eax	# this_node, this_node.135
	testl	%eax, %eax	# this_node.135
	jne	.L245	#,
	.loc 1 1536 0
	movq	-80(%rbp), %rax	# gh, tmp155
	movl	(%rax), %eax	# gh_31->magic_number, D.8135
	cmpl	$20103, %eax	#, D.8135
	jne	.L246	#,
	.loc 1 1537 0
	movq	$8, -128(%rbp)	#, gauge_check_size
	jmp	.L247	#
.L246:
	.loc 1 1539 0
	movq	-80(%rbp), %rax	# gh, tmp156
	movl	(%rax), %eax	# gh_31->magic_number, D.8135
	cmpl	$53546, %eax	#, D.8135
	jne	.L248	#,
	.loc 1 1540 0
	movq	$4, -128(%rbp)	#, gauge_check_size
	jmp	.L247	#
.L248:
	.loc 1 1542 0
	movq	$0, -128(%rbp)	#, gauge_check_size
.L247:
	.loc 1 1544 0
	movq	-216(%rbp), %rax	# gf, tmp157
	movq	8(%rax), %rax	# gf_29(D)->header, D.8136
	movl	88(%rax), %eax	# _44->order, D.8135
	testl	%eax, %eax	# D.8135
	jne	.L249	#,
	.loc 1 1544 0 is_stmt 0 discriminator 1
	movq	$0, -120(%rbp)	#, coord_list_size
	jmp	.L250	#
.L249:
	.loc 1 1545 0 is_stmt 1
	movl	volume(%rip), %eax	# volume, volume.136
	cltq
	salq	$2, %rax	#, D.8137
	movq	%rax, -120(%rbp)	# D.8137, coord_list_size
.L250:
	.loc 1 1546 0
	movq	-216(%rbp), %rax	# gf, tmp158
	movq	8(%rax), %rax	# gf_29(D)->header, D.8136
	movl	84(%rax), %eax	# _51->header_bytes, D.8135
	movslq	%eax, %rdx	# D.8135, D.8138
	movq	-120(%rbp), %rax	# coord_list_size, tmp162
	addq	%rdx, %rax	# D.8138, tmp161
	movq	%rax, -112(%rbp)	# tmp161, checksum_offset
	.loc 1 1547 0
	movq	-128(%rbp), %rax	# gauge_check_size, tmp167
	movq	-112(%rbp), %rdx	# checksum_offset, tmp168
	addq	%rdx, %rax	# tmp168, tmp166
	movq	%rax, -64(%rbp)	# tmp166, head_size
	.loc 1 1551 0
	movq	-216(%rbp), %rax	# gf, tmp169
	movl	40(%rax), %eax	# gf_29(D)->parallel, D.8135
	testl	%eax, %eax	# D.8135
	je	.L251	#,
	.loc 1 1552 0
	leaq	-48(%rbp), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	movl	$.LC92, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L251:
	.loc 1 1554 0
	movl	$144, %esi	#,
	movl	$16384, %edi	#,
	call	calloc	#
	movq	%rax, -96(%rbp)	# tmp171, lbuf
	.loc 1 1555 0
	cmpq	$0, -96(%rbp)	#, lbuf
	jne	.L252	#,
	.loc 1 1557 0
	movl	this_node(%rip), %edx	# this_node, this_node.137
	leaq	-48(%rbp), %rax	#, tmp172
	movq	%rax, %rsi	# tmp172,
	movl	$.LC93, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1558 0
	movq	stdout(%rip), %rax	# stdout, stdout.138
	movq	%rax, %rdi	# stdout.138,
	call	fflush	#
	.loc 1 1559 0
	movl	$1, %edi	#,
	call	terminate	#
.L252:
	.loc 1 1564 0
	movq	-64(%rbp), %rax	# head_size, tmp173
	movq	%rax, -56(%rbp)	# tmp173, offset
	.loc 1 1566 0
	movq	-56(%rbp), %rcx	# offset, tmp174
	movq	-88(%rbp), %rax	# fp, tmp175
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp174,
	movq	%rax, %rdi	# tmp175,
	call	fseek	#
	testl	%eax, %eax	# D.8135
	jns	.L253	#,
	.loc 1 1570 0
	call	__errno_location	#
	.loc 1 1569 0
	movl	(%rax), %edx	# *_62, D.8135
	movq	-72(%rbp), %rcx	# filename, tmp176
	leaq	-48(%rbp), %rax	#, tmp177
	movq	%rax, %rsi	# tmp177,
	movl	$.LC94, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1578 0
	movq	stdout(%rip), %rax	# stdout, stdout.139
	movq	%rax, %rdi	# stdout.139,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L253:
	.loc 1 1581 0
	movl	$0, -184(%rbp)	#, buf_length
	.loc 1 1582 0
	movl	$0, -180(%rbp)	#, where_in_buf
.L245:
	.loc 1 1587 0
	movl	$0, -140(%rbp)	#, test_gc.sum29
	.loc 1 1588 0
	movl	$0, -144(%rbp)	#, test_gc.sum31
	.loc 1 1592 0
	movl	$0, -176(%rbp)	#, rank29
	.loc 1 1593 0
	movl	$0, -172(%rbp)	#, rank31
	.loc 1 1595 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 1599 0
	movl	$0, -200(%rbp)	#, rcv_rank
	jmp	.L254	#
.L271:
	.loc 1 1604 0
	movq	-216(%rbp), %rax	# gf, tmp178
	movq	8(%rax), %rax	# gf_29(D)->header, D.8136
	movl	88(%rax), %eax	# _72->order, D.8135
	testl	%eax, %eax	# D.8135
	jne	.L255	#,
	.loc 1 1605 0
	movl	-200(%rbp), %eax	# rcv_rank, tmp179
	movl	%eax, -196(%rbp)	# tmp179, rcv_coords
	jmp	.L256	#
.L255:
	.loc 1 1607 0
	movq	-216(%rbp), %rax	# gf, tmp180
	movq	32(%rax), %rax	# gf_29(D)->rank2rcv, D.8140
	movl	-200(%rbp), %edx	# rcv_rank, tmp181
	movslq	%edx, %rdx	# tmp181, D.8137
	salq	$2, %rdx	#, D.8137
	addq	%rdx, %rax	# D.8137, D.8140
	movl	(%rax), %eax	# *_78, tmp182
	movl	%eax, -196(%rbp)	# tmp182, rcv_coords
.L256:
	.loc 1 1609 0
	movl	nx(%rip), %ecx	# nx, nx.140
	movl	-196(%rbp), %eax	# rcv_coords, tmp184
	cltd
	idivl	%ecx	# nx.140
	movl	%edx, -164(%rbp)	# tmp185, x
	movl	nx(%rip), %ebx	# nx, nx.141
	movl	-196(%rbp), %eax	# rcv_coords, tmp189
	cltd
	idivl	%ebx	# nx.141
	movl	%eax, -196(%rbp)	# tmp187, rcv_coords
	.loc 1 1610 0
	movl	ny(%rip), %ecx	# ny, ny.142
	movl	-196(%rbp), %eax	# rcv_coords, tmp191
	cltd
	idivl	%ecx	# ny.142
	movl	%edx, -160(%rbp)	# tmp192, y
	movl	ny(%rip), %ebx	# ny, ny.143
	movl	-196(%rbp), %eax	# rcv_coords, tmp196
	cltd
	idivl	%ebx	# ny.143
	movl	%eax, -196(%rbp)	# tmp194, rcv_coords
	.loc 1 1611 0
	movl	nz(%rip), %ecx	# nz, nz.144
	movl	-196(%rbp), %eax	# rcv_coords, tmp198
	cltd
	idivl	%ecx	# nz.144
	movl	%edx, -156(%rbp)	# tmp199, z
	movl	nz(%rip), %ebx	# nz, nz.145
	movl	-196(%rbp), %eax	# rcv_coords, tmp203
	cltd
	idivl	%ebx	# nz.145
	movl	%eax, -196(%rbp)	# tmp201, rcv_coords
	.loc 1 1612 0
	movl	nt(%rip), %ecx	# nt, nt.146
	movl	-196(%rbp), %eax	# rcv_coords, tmp205
	cltd
	idivl	%ecx	# nt.146
	movl	%edx, -152(%rbp)	# tmp206, t
	.loc 1 1615 0
	movl	-152(%rbp), %ecx	# t, tmp208
	movl	-156(%rbp), %edx	# z, tmp209
	movl	-160(%rbp), %esi	# y, tmp210
	movl	-164(%rbp), %eax	# x, tmp211
	movl	%eax, %edi	# tmp211,
	call	node_number	#
	movl	%eax, -148(%rbp)	# tmp212, destnode
	.loc 1 1617 0
	movl	this_node(%rip), %eax	# this_node, this_node.147
	testl	%eax, %eax	# this_node.147
	jne	.L257	#,
	.loc 1 1619 0
	movl	-180(%rbp), %eax	# where_in_buf, tmp213
	cmpl	-184(%rbp), %eax	# buf_length, tmp213
	jne	.L258	#,
	.loc 1 1623 0
	movl	volume(%rip), %eax	# volume, volume.148
	subl	-200(%rbp), %eax	# rcv_rank, tmp215
	movl	%eax, -184(%rbp)	# tmp215, buf_length
	.loc 1 1624 0
	cmpl	$4096, -184(%rbp)	#, buf_length
	jle	.L259	#,
	.loc 1 1624 0 is_stmt 0 discriminator 1
	movl	$4096, -184(%rbp)	#, buf_length
.L259:
	.loc 1 1627 0 is_stmt 1
	movl	-184(%rbp), %eax	# buf_length, tmp216
	movslq	%eax, %rdx	# tmp216, D.8137
	movq	-88(%rbp), %rcx	# fp, tmp217
	movq	-96(%rbp), %rax	# lbuf, tmp218
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp218,
	call	fread	#
	cmpl	-184(%rbp), %eax	# buf_length, D.8135
	je	.L260	#,
	.loc 1 1630 0
	call	__errno_location	#
	.loc 1 1629 0
	movl	(%rax), %ecx	# *_102, D.8135
	movl	this_node(%rip), %edx	# this_node, this_node.149
	movq	-72(%rbp), %rsi	# filename, tmp219
	leaq	-48(%rbp), %rax	#, tmp220
	movq	%rsi, %r8	# tmp219,
	movq	%rax, %rsi	# tmp220,
	movl	$.LC95, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1631 0
	movq	stdout(%rip), %rax	# stdout, stdout.150
	movq	%rax, %rdi	# stdout.150,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L260:
	.loc 1 1633 0
	movl	$0, -180(%rbp)	#, where_in_buf
.L258:
	.loc 1 1636 0
	cmpl	$0, -148(%rbp)	#, destnode
	jne	.L261	#,
	.loc 1 1637 0
	movl	-152(%rbp), %ecx	# t, tmp221
	movl	-156(%rbp), %edx	# z, tmp222
	movl	-160(%rbp), %esi	# y, tmp223
	movl	-164(%rbp), %eax	# x, tmp224
	movl	%eax, %edi	# tmp224,
	call	node_index	#
	movl	%eax, -192(%rbp)	# tmp225, i
	.loc 1 1638 0
	movl	-180(%rbp), %eax	# where_in_buf, tmp226
	movslq	%eax, %rdx	# tmp226, D.8137
	.loc 1 1639 0
	movq	%rdx, %rax	# D.8137, tmp227
	salq	$3, %rax	#, tmp227
	addq	%rdx, %rax	# D.8137, tmp227
	salq	$6, %rax	#, tmp228
	movq	%rax, %rdx	# tmp227, D.8137
	movq	-96(%rbp), %rax	# lbuf, tmp229
	leaq	(%rdx,%rax), %rcx	#, D.8141
	.loc 1 1638 0
	movq	lattice(%rip), %rax	# lattice, lattice.151
	movl	-192(%rbp), %edx	# i, tmp230
	movslq	%edx, %rdx	# tmp230, D.8137
	salq	$11, %rdx	#, D.8137
	addq	%rdx, %rax	# D.8137, D.8142
	addq	$112, %rax	#, D.8143
	movl	$576, %edx	#,
	movq	%rcx, %rsi	# D.8141,
	movq	%rax, %rdi	# D.8143,
	call	memcpy	#
	jmp	.L262	#
.L261:
	.loc 1 1642 0
	movl	-180(%rbp), %eax	# where_in_buf, tmp231
	movslq	%eax, %rdx	# tmp231, D.8137
	movq	%rdx, %rax	# D.8137, tmp232
	salq	$3, %rax	#, tmp232
	addq	%rdx, %rax	# D.8137, tmp232
	salq	$6, %rax	#, tmp233
	movq	%rax, %rdx	# tmp232, D.8137
	movq	-96(%rbp), %rax	# lbuf, tmp234
	leaq	(%rdx,%rax), %rcx	#, D.8144
	movl	-148(%rbp), %eax	# destnode, tmp235
	movl	%eax, %edx	# tmp235,
	movl	$576, %esi	#,
	movq	%rcx, %rdi	# D.8144,
	call	send_field	#
.L262:
	.loc 1 1645 0 discriminator 1
	addl	$1, -180(%rbp)	#, where_in_buf
	jmp	.L263	#
.L257:
	.loc 1 1650 0
	movl	this_node(%rip), %eax	# this_node, this_node.152
	cmpl	-148(%rbp), %eax	# destnode, this_node.152
	jne	.L263	#,
	.loc 1 1651 0
	movl	-152(%rbp), %ecx	# t, tmp236
	movl	-156(%rbp), %edx	# z, tmp237
	movl	-160(%rbp), %esi	# y, tmp238
	movl	-164(%rbp), %eax	# x, tmp239
	movl	%eax, %edi	# tmp239,
	call	node_index	#
	movl	%eax, -192(%rbp)	# tmp240, i
	.loc 1 1652 0
	movq	lattice(%rip), %rax	# lattice, lattice.153
	movl	-192(%rbp), %edx	# i, tmp241
	movslq	%edx, %rdx	# tmp241, D.8137
	salq	$11, %rdx	#, D.8137
	addq	%rdx, %rax	# D.8137, D.8142
	addq	$112, %rax	#, D.8143
	movl	$576, %esi	#,
	movq	%rax, %rdi	# D.8143,
	call	get_field	#
.L263:
	.loc 1 1659 0
	movl	this_node(%rip), %eax	# this_node, this_node.154
	cmpl	-148(%rbp), %eax	# destnode, this_node.154
	jne	.L264	#,
	.loc 1 1661 0
	cmpl	$1, -168(%rbp)	#, byterevflag
	jne	.L265	#,
	.loc 1 1662 0
	movq	lattice(%rip), %rax	# lattice, lattice.155
	movl	-192(%rbp), %edx	# i, tmp242
	movslq	%edx, %rdx	# tmp242, D.8137
	salq	$11, %rdx	#, D.8137
	addq	%rdx, %rax	# D.8137, D.8142
	addq	$112, %rax	#, D.8143
	movl	$144, %esi	#,
	movq	%rax, %rdi	# D.8143,
	call	byterevn	#
.L265:
	.loc 1 1665 0
	movl	$0, -188(%rbp)	#, k
	movq	lattice(%rip), %rax	# lattice, lattice.156
	movl	-192(%rbp), %edx	# i, tmp243
	movslq	%edx, %rdx	# tmp243, D.8137
	salq	$11, %rdx	#, D.8137
	addq	%rdx, %rax	# D.8137, D.8142
	addq	$112, %rax	#, tmp244
	movq	%rax, -104(%rbp)	# tmp244, val
	jmp	.L266	#
.L269:
	.loc 1 1668 0
	movl	-140(%rbp), %edx	# test_gc.sum29, D.8145
	movq	-104(%rbp), %rax	# val, tmp245
	movl	(%rax), %esi	# *val_19, D.8145
	movl	-176(%rbp), %eax	# rank29, tmp246
	movl	%eax, %ecx	# tmp246, tmp290
	roll	%cl, %esi	# tmp290, D.8145
	movl	%esi, %eax	# D.8145, D.8145
	xorl	%edx, %eax	# D.8145, D.8145
	movl	%eax, -140(%rbp)	# D.8145, test_gc.sum29
	.loc 1 1669 0
	movl	-144(%rbp), %edx	# test_gc.sum31, D.8145
	movq	-104(%rbp), %rax	# val, tmp247
	movl	(%rax), %esi	# *val_19, D.8145
	movl	-172(%rbp), %eax	# rank31, tmp248
	movl	%eax, %ecx	# tmp248, tmp292
	roll	%cl, %esi	# tmp292, D.8145
	movl	%esi, %eax	# D.8145, D.8145
	xorl	%edx, %eax	# D.8145, D.8145
	movl	%eax, -144(%rbp)	# D.8145, test_gc.sum31
	.loc 1 1670 0
	addl	$1, -176(%rbp)	#, rank29
	cmpl	$28, -176(%rbp)	#, rank29
	jle	.L267	#,
	.loc 1 1670 0 is_stmt 0 discriminator 1
	movl	$0, -176(%rbp)	#, rank29
.L267:
	.loc 1 1671 0 is_stmt 1
	addl	$1, -172(%rbp)	#, rank31
	cmpl	$30, -172(%rbp)	#, rank31
	jle	.L268	#,
	.loc 1 1671 0 is_stmt 0 discriminator 1
	movl	$0, -172(%rbp)	#, rank31
.L268:
	.loc 1 1666 0 is_stmt 1
	addl	$1, -188(%rbp)	#, k
	addq	$4, -104(%rbp)	#, val
.L266:
	.loc 1 1665 0 discriminator 1
	cmpl	$143, -188(%rbp)	#, k
	jle	.L269	#,
	jmp	.L270	#
.L264:
	.loc 1 1676 0
	movl	-176(%rbp), %eax	# rank29, rank29.157
	addl	$144, %eax	#, D.8146
	movl	%eax, -176(%rbp)	# D.8146, rank29
	.loc 1 1677 0
	movl	-172(%rbp), %eax	# rank31, rank31.158
	addl	$144, %eax	#, D.8146
	movl	%eax, -172(%rbp)	# D.8146, rank31
	.loc 1 1678 0
	movl	-176(%rbp), %ecx	# rank29, tmp250
	movl	$-1925330167, %edx	#, tmp252
	movl	%ecx, %eax	# tmp250, tmp282
	imull	%edx	# tmp252
	leal	(%rdx,%rcx), %eax	#, tmp253
	sarl	$4, %eax	#, tmp254
	movl	%eax, %edx	# tmp254, tmp254
	movl	%ecx, %eax	# tmp250, tmp255
	sarl	$31, %eax	#, tmp255
	subl	%eax, %edx	# tmp255, tmp249
	movl	%edx, %eax	# tmp249, tmp249
	imull	$29, %eax, %eax	#, tmp249, tmp256
	subl	%eax, %ecx	# tmp256, tmp257
	movl	%ecx, %eax	# tmp257, tmp257
	movl	%eax, -176(%rbp)	# tmp257, rank29
	.loc 1 1679 0
	movl	-172(%rbp), %ecx	# rank31, tmp259
	movl	$-2078209981, %edx	#, tmp261
	movl	%ecx, %eax	# tmp259, tmp283
	imull	%edx	# tmp261
	leal	(%rdx,%rcx), %eax	#, tmp262
	sarl	$4, %eax	#, tmp263
	movl	%eax, %edx	# tmp263, tmp263
	movl	%ecx, %eax	# tmp259, tmp264
	sarl	$31, %eax	#, tmp264
	subl	%eax, %edx	# tmp264, tmp258
	movl	%edx, %eax	# tmp258, tmp265
	sall	$5, %eax	#, tmp266
	subl	%edx, %eax	# tmp258, tmp265
	subl	%eax, %ecx	# tmp265, tmp267
	movl	%ecx, %eax	# tmp267, tmp267
	movl	%eax, -172(%rbp)	# tmp267, rank31
.L270:
	.loc 1 1599 0
	addl	$1, -200(%rbp)	#, rcv_rank
.L254:
	.loc 1 1599 0 is_stmt 0 discriminator 1
	movl	volume(%rip), %eax	# volume, volume.159
	cmpl	%eax, -200(%rbp)	# volume.159, rcv_rank
	jl	.L271	#,
	.loc 1 1684 0 is_stmt 1
	leaq	-144(%rbp), %rax	#, tmp268
	addq	$4, %rax	#, tmp269
	movq	%rax, %rdi	# tmp269,
	call	g_xor32	#
	.loc 1 1685 0
	leaq	-144(%rbp), %rax	#, tmp270
	movq	%rax, %rdi	# tmp270,
	call	g_xor32	#
	.loc 1 1687 0
	movl	this_node(%rip), %eax	# this_node, this_node.160
	testl	%eax, %eax	# this_node.160
	jne	.L244	#,
	.loc 1 1692 0
	movq	-72(%rbp), %rax	# filename, tmp271
	movq	%rax, %rsi	# tmp271,
	movl	$.LC96, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1694 0
	movq	-80(%rbp), %rax	# gh, tmp272
	movl	(%rax), %eax	# gh_31->magic_number, D.8135
	cmpl	$20103, %eax	#, D.8135
	jne	.L273	#,
	.loc 1 1696 0
	movq	-80(%rbp), %rax	# gh, tmp273
	addq	$4, %rax	#, D.8147
	movq	%rax, %rsi	# D.8147,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1697 0
	movq	-112(%rbp), %rcx	# checksum_offset, tmp274
	movq	-88(%rbp), %rax	# fp, tmp275
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp274,
	movq	%rax, %rdi	# tmp275,
	call	fseek	#
	testl	%eax, %eax	# D.8135
	jns	.L274	#,
	.loc 1 1701 0
	call	__errno_location	#
	.loc 1 1700 0
	movl	(%rax), %edx	# *_166, D.8135
	movq	-72(%rbp), %rcx	# filename, tmp276
	leaq	-48(%rbp), %rax	#, tmp277
	movq	%rax, %rsi	# tmp277,
	movl	$.LC94, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1709 0
	movq	stdout(%rip), %rax	# stdout, stdout.161
	movq	%rax, %rdi	# stdout.161,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L274:
	.loc 1 1711 0
	leaq	-144(%rbp), %rdx	#, tmp278
	movq	-216(%rbp), %rax	# gf, tmp279
	movq	%rax, %rsi	# tmp279,
	movl	$0, %edi	#,
	call	read_checksum	#
.L273:
	.loc 1 1713 0
	movq	stdout(%rip), %rax	# stdout, stdout.162
	movq	%rax, %rdi	# stdout.162,
	call	fflush	#
	.loc 1 1714 0
	movq	-96(%rbp), %rax	# lbuf, tmp280
	movq	%rax, %rdi	# tmp280,
	call	free	#
.L244:
	.loc 1 1717 0
	movq	-24(%rbp), %rax	# D.8148, tmp284
	xorq	%fs:40, %rax	#, tmp284
	je	.L275	#,
	call	__stack_chk_fail	#
.L275:
	addq	$216, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	r_serial, .-r_serial
	.section	.rodata
	.align 8
.LC97:
	.string	"%s: Node %d can't malloc uin buffer to read timeslice\n"
	.align 8
.LC98:
	.string	"recompile with smaller read buffer: uin"
	.align 8
.LC99:
	.string	"Restored archive gauge configuration serially from file %s\n"
	.align 8
.LC100:
	.string	"Archive style checksum violation: computed %x, read %x\n"
	.align 8
.LC101:
	.string	"Archive style checksum = %x OK\n"
	.text
	.globl	r_serial_arch
	.type	r_serial_arch, @function
r_serial_arch:
.LFB37:
	.loc 1 1722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1352, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -1352(%rbp)	# gf, gf
	.loc 1 1722 0
	movq	%fs:40, %rax	#, tmp293
	movq	%rax, -24(%rbp)	# tmp293, D.8163
	xorl	%eax, %eax	# tmp293
	.loc 1 1739 0
	movabsq	$7809639168886398834, %rax	#, tmp297
	movq	%rax, -48(%rbp)	# tmp297, myname
	movl	$1668440415, -40(%rbp)	#, myname
	movw	$104, -36(%rbp)	#, myname
	.loc 1 1747 0
	movq	-1352(%rbp), %rax	# gf, tmp132
	movq	(%rax), %rax	# gf_27(D)->fp, tmp133
	movq	%rax, -1232(%rbp)	# tmp133, fp
	.loc 1 1748 0
	movq	-1352(%rbp), %rax	# gf, tmp134
	movq	8(%rax), %rax	# gf_27(D)->header, tmp135
	movq	%rax, -1224(%rbp)	# tmp135, gh
	.loc 1 1749 0
	movq	-1352(%rbp), %rax	# gf, tmp136
	movq	16(%rax), %rax	# gf_27(D)->filename, tmp137
	movq	%rax, -1216(%rbp)	# tmp137, filename
	.loc 1 1750 0
	movq	-1352(%rbp), %rax	# gf, tmp138
	movl	24(%rax), %eax	# gf_27(D)->byterevflag, tmp139
	movl	%eax, -1292(%rbp)	# tmp139, byterevflag
	.loc 1 1752 0
	movl	this_node(%rip), %eax	# this_node, this_node.163
	testl	%eax, %eax	# this_node.163
	jne	.L277	#,
	.loc 1 1754 0
	movq	$0, -1208(%rbp)	#, gauge_check_size
	.loc 1 1756 0
	movq	-1352(%rbp), %rax	# gf, tmp140
	movl	40(%rax), %eax	# gf_27(D)->parallel, D.8154
	testl	%eax, %eax	# D.8154
	je	.L278	#,
	.loc 1 1757 0
	leaq	-48(%rbp), %rax	#, tmp141
	movq	%rax, %rsi	# tmp141,
	movl	$.LC92, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L278:
	.loc 1 1759 0
	movl	$0, %eax	#,
	call	big_endian	#
	movl	%eax, -1300(%rbp)	# tmp142, big_end
	.loc 1 1761 0
	movl	nx(%rip), %edx	# nx, nx.164
	movl	ny(%rip), %eax	# ny, ny.165
	imull	%eax, %edx	# ny.165, D.8154
	movl	nz(%rip), %eax	# nz, nz.166
	imull	%eax, %edx	# nz.166, D.8154
	movl	%edx, %eax	# D.8154, tmp143
	addl	%eax, %eax	# tmp143
	addl	%edx, %eax	# D.8154, tmp143
	sall	$4, %eax	#, tmp144
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.8155,
	call	calloc	#
	movq	%rax, -1248(%rbp)	# tmp145, uin
	.loc 1 1762 0
	cmpq	$0, -1248(%rbp)	#, uin
	jne	.L277	#,
	.loc 1 1764 0
	movl	this_node(%rip), %edx	# this_node, this_node.167
	leaq	-48(%rbp), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	movl	$.LC97, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1766 0
	movl	$.LC98, %edi	#,
	call	puts	#
	.loc 1 1767 0
	movq	stdout(%rip), %rax	# stdout, stdout.168
	movq	%rax, %rdi	# stdout.168,
	call	fflush	#
	.loc 1 1768 0
	movl	$1, %edi	#,
	call	terminate	#
.L277:
	.loc 1 1773 0
	movl	$0, -1296(%rbp)	#, chksum
	.loc 1 1774 0
	movl	$0, -1260(%rbp)	#, test_gc.sum29
	.loc 1 1775 0
	movl	$0, -1264(%rbp)	#, test_gc.sum31
	.loc 1 1779 0
	movl	$0, -1324(%rbp)	#, rank29
	.loc 1 1780 0
	movl	$0, -1320(%rbp)	#, rank31
	.loc 1 1782 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 1785 0
	movl	$0, -1336(%rbp)	#, rcv_rank
	jmp	.L279	#
.L300:
	.loc 1 1787 0
	movl	-1336(%rbp), %eax	# rcv_rank, tmp147
	movl	%eax, -1288(%rbp)	# tmp147, rcv_coords
	.loc 1 1789 0
	movl	nx(%rip), %ecx	# nx, nx.169
	movl	-1288(%rbp), %eax	# rcv_coords, tmp149
	cltd
	idivl	%ecx	# nx.169
	movl	%edx, -1284(%rbp)	# tmp150, x
	movl	nx(%rip), %ebx	# nx, nx.170
	movl	-1288(%rbp), %eax	# rcv_coords, tmp154
	cltd
	idivl	%ebx	# nx.170
	movl	%eax, -1288(%rbp)	# tmp152, rcv_coords
	.loc 1 1790 0
	movl	ny(%rip), %ecx	# ny, ny.171
	movl	-1288(%rbp), %eax	# rcv_coords, tmp156
	cltd
	idivl	%ecx	# ny.171
	movl	%edx, -1280(%rbp)	# tmp157, y
	movl	ny(%rip), %ebx	# ny, ny.172
	movl	-1288(%rbp), %eax	# rcv_coords, tmp161
	cltd
	idivl	%ebx	# ny.172
	movl	%eax, -1288(%rbp)	# tmp159, rcv_coords
	.loc 1 1791 0
	movl	nz(%rip), %ecx	# nz, nz.173
	movl	-1288(%rbp), %eax	# rcv_coords, tmp163
	cltd
	idivl	%ecx	# nz.173
	movl	%edx, -1276(%rbp)	# tmp164, z
	movl	nz(%rip), %ebx	# nz, nz.174
	movl	-1288(%rbp), %eax	# rcv_coords, tmp168
	cltd
	idivl	%ebx	# nz.174
	movl	%eax, -1288(%rbp)	# tmp166, rcv_coords
	.loc 1 1792 0
	movl	nt(%rip), %ecx	# nt, nt.175
	movl	-1288(%rbp), %eax	# rcv_coords, tmp170
	cltd
	idivl	%ecx	# nt.175
	movl	%edx, -1272(%rbp)	# tmp171, t
	.loc 1 1795 0
	movl	-1272(%rbp), %ecx	# t, tmp173
	movl	-1276(%rbp), %edx	# z, tmp174
	movl	-1280(%rbp), %esi	# y, tmp175
	movl	-1284(%rbp), %eax	# x, tmp176
	movl	%eax, %edi	# tmp176,
	call	node_number	#
	movl	%eax, -1268(%rbp)	# tmp177, destnode
	.loc 1 1797 0
	movl	this_node(%rip), %eax	# this_node, this_node.176
	testl	%eax, %eax	# this_node.176
	jne	.L280	#,
	.loc 1 1798 0
	movq	-1232(%rbp), %rdx	# fp, tmp178
	movq	-1248(%rbp), %rax	# uin, tmp179
	movq	%rdx, %rcx	# tmp178,
	movl	$1, %edx	#,
	movl	$384, %esi	#,
	movq	%rax, %rdi	# tmp179,
	call	fread	#
	cmpl	$1, %eax	#, D.8154
	je	.L281	#,
	.loc 1 1801 0
	call	__errno_location	#
	.loc 1 1800 0
	movl	(%rax), %ecx	# *_73, D.8154
	movl	this_node(%rip), %edx	# this_node, this_node.177
	movq	-1216(%rbp), %rsi	# filename, tmp180
	leaq	-48(%rbp), %rax	#, tmp181
	movq	%rsi, %r8	# tmp180,
	movq	%rax, %rsi	# tmp181,
	movl	$.LC95, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1802 0
	movq	stdout(%rip), %rax	# stdout, stdout.178
	movq	%rax, %rdi	# stdout.178,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L281:
	.loc 1 1805 0
	cmpl	$0, -1300(%rbp)	#, big_end
	jne	.L282	#,
	.loc 1 1805 0 is_stmt 0 discriminator 1
	movq	-1248(%rbp), %rax	# uin, tmp182
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp182,
	call	byterevn	#
.L282:
	.loc 1 1806 0 is_stmt 1
	movq	-1248(%rbp), %rax	# uin, tmp183
	movq	%rax, -1240(%rbp)	# tmp183, q
	.loc 1 1807 0
	movl	$0, -1316(%rbp)	#, mu
	jmp	.L283	#
.L290:
	.loc 1 1808 0
	movl	$0, -1304(%rbp)	#, p
	jmp	.L284	#
.L285:
	.loc 1 1809 0 discriminator 2
	movq	-1240(%rbp), %rax	# q, tmp184
	movl	(%rax), %eax	# MEM[(u_int32type *)q_20], D.8157
	addl	%eax, -1296(%rbp)	# D.8157, chksum
	.loc 1 1810 0 discriminator 2
	movq	-1240(%rbp), %rax	# q, q.179
	leaq	8(%rax), %rdx	#, tmp185
	movq	%rdx, -1240(%rbp)	# tmp185, q
	movq	(%rax), %rdx	# *q.179_82, D.8158
	movl	-1304(%rbp), %eax	# p, tmp187
	movslq	%eax, %rsi	# tmp187, tmp186
	movl	-1316(%rbp), %eax	# mu, tmp189
	movslq	%eax, %rcx	# tmp189, tmp188
	movq	%rcx, %rax	# tmp188, tmp190
	salq	$3, %rax	#, tmp190
	addq	%rcx, %rax	# tmp188, tmp190
	addq	%rax, %rax	# tmp191
	addq	%rsi, %rax	# tmp186, tmp192
	movq	%rdx, -624(%rbp,%rax,8)	# D.8158, U
	.loc 1 1808 0 discriminator 2
	addl	$1, -1304(%rbp)	#, p
.L284:
	.loc 1 1808 0 is_stmt 0 discriminator 1
	cmpl	$11, -1304(%rbp)	#, p
	jle	.L285	#,
	.loc 1 1812 0 is_stmt 1
	leaq	-624(%rbp), %rcx	#, tmp193
	movl	-1316(%rbp), %eax	# mu, tmp195
	movslq	%eax, %rdx	# tmp195, tmp194
	movq	%rdx, %rax	# tmp194, tmp196
	salq	$3, %rax	#, tmp196
	addq	%rdx, %rax	# tmp194, tmp196
	salq	$4, %rax	#, tmp197
	addq	%rcx, %rax	# tmp193, D.8159
	movq	%rax, %rdi	# D.8159,
	call	complete_U	#
	.loc 1 1817 0
	movl	$0, -1312(%rbp)	#, a
	jmp	.L286	#
.L289:
	.loc 1 1817 0 is_stmt 0 discriminator 2
	movl	$0, -1308(%rbp)	#, b
	jmp	.L287	#
.L288:
	.loc 1 1818 0 is_stmt 1 discriminator 2
	movl	-1312(%rbp), %edx	# a, tmp198
	movl	%edx, %eax	# tmp198, tmp199
	addl	%eax, %eax	# tmp199
	addl	%eax, %edx	# tmp199, D.8154
	movl	-1308(%rbp), %eax	# b, tmp200
	addl	%edx, %eax	# D.8154, D.8154
	addl	%eax, %eax	# D.8154
	movslq	%eax, %rcx	# D.8154, tmp201
	movl	-1316(%rbp), %eax	# mu, tmp203
	movslq	%eax, %rdx	# tmp203, tmp202
	movq	%rdx, %rax	# tmp202, tmp204
	salq	$3, %rax	#, tmp204
	addq	%rdx, %rax	# tmp202, tmp204
	addq	%rax, %rax	# tmp205
	addq	%rcx, %rax	# tmp201, tmp206
	movq	-624(%rbp,%rax,8), %rcx	# U, D.8158
	movl	-1308(%rbp), %eax	# b, tmp208
	movslq	%eax, %rdi	# tmp208, tmp207
	movl	-1316(%rbp), %eax	# mu, tmp210
	cltq
	movl	-1312(%rbp), %edx	# a, tmp212
	movslq	%edx, %rsi	# tmp212, tmp211
	movq	%rax, %rdx	# tmp209, tmp213
	salq	$3, %rdx	#, tmp213
	addq	%rax, %rdx	# tmp209, tmp213
	movq	%rsi, %rax	# tmp211, tmp214
	addq	%rax, %rax	# tmp214
	addq	%rsi, %rax	# tmp211, tmp214
	addq	%rdx, %rax	# tmp213, tmp215
	addq	%rdi, %rax	# tmp207, tmp216
	salq	$4, %rax	#, tmp217
	leaq	-16(%rbp), %rbx	#, tmp315
	addq	%rbx, %rax	# tmp315, tmp218
	subq	$1184, %rax	#, tmp219
	movq	%rcx, (%rax)	# D.8158, tmpsu3[mu_15].e[a_16][b_17].real
	.loc 1 1820 0 discriminator 2
	movl	-1312(%rbp), %edx	# a, tmp220
	movl	%edx, %eax	# tmp220, tmp221
	addl	%eax, %eax	# tmp221
	addl	%eax, %edx	# tmp221, D.8154
	movl	-1308(%rbp), %eax	# b, tmp222
	addl	%edx, %eax	# D.8154, D.8154
	addl	%eax, %eax	# D.8154
	addl	$1, %eax	#, D.8154
	movslq	%eax, %rcx	# D.8154, tmp223
	movl	-1316(%rbp), %eax	# mu, tmp225
	movslq	%eax, %rdx	# tmp225, tmp224
	movq	%rdx, %rax	# tmp224, tmp226
	salq	$3, %rax	#, tmp226
	addq	%rdx, %rax	# tmp224, tmp226
	addq	%rax, %rax	# tmp227
	addq	%rcx, %rax	# tmp223, tmp228
	movq	-624(%rbp,%rax,8), %rcx	# U, D.8158
	movl	-1308(%rbp), %eax	# b, tmp230
	movslq	%eax, %rdi	# tmp230, tmp229
	movl	-1316(%rbp), %eax	# mu, tmp232
	cltq
	movl	-1312(%rbp), %edx	# a, tmp234
	movslq	%edx, %rsi	# tmp234, tmp233
	movq	%rax, %rdx	# tmp231, tmp235
	salq	$3, %rdx	#, tmp235
	addq	%rax, %rdx	# tmp231, tmp235
	movq	%rsi, %rax	# tmp233, tmp236
	addq	%rax, %rax	# tmp236
	addq	%rsi, %rax	# tmp233, tmp236
	addq	%rdx, %rax	# tmp235, tmp237
	addq	%rdi, %rax	# tmp229, tmp238
	salq	$4, %rax	#, tmp239
	leaq	-16(%rbp), %rbx	#, tmp314
	addq	%rbx, %rax	# tmp314, tmp240
	subq	$1176, %rax	#, tmp241
	movq	%rcx, (%rax)	# D.8158, tmpsu3[mu_15].e[a_16][b_17].imag
	.loc 1 1817 0 discriminator 2
	addl	$1, -1308(%rbp)	#, b
.L287:
	.loc 1 1817 0 is_stmt 0 discriminator 1
	cmpl	$2, -1308(%rbp)	#, b
	jle	.L288	#,
	.loc 1 1817 0 discriminator 3
	addl	$1, -1312(%rbp)	#, a
.L286:
	.loc 1 1817 0 discriminator 1
	cmpl	$2, -1312(%rbp)	#, a
	jle	.L289	#,
	.loc 1 1807 0 is_stmt 1
	addl	$1, -1316(%rbp)	#, mu
.L283:
	.loc 1 1807 0 is_stmt 0 discriminator 1
	cmpl	$3, -1316(%rbp)	#, mu
	jle	.L290	#,
	.loc 1 1825 0 is_stmt 1
	cmpl	$0, -1268(%rbp)	#, destnode
	jne	.L291	#,
	.loc 1 1826 0
	movl	-1272(%rbp), %ecx	# t, tmp242
	movl	-1276(%rbp), %edx	# z, tmp243
	movl	-1280(%rbp), %esi	# y, tmp244
	movl	-1284(%rbp), %eax	# x, tmp245
	movl	%eax, %edi	# tmp245,
	call	node_index	#
	movl	%eax, -1332(%rbp)	# tmp246, i
	.loc 1 1828 0
	movq	lattice(%rip), %rax	# lattice, lattice.180
	movl	-1332(%rbp), %edx	# i, tmp247
	movslq	%edx, %rdx	# tmp247, D.8155
	salq	$11, %rdx	#, D.8155
	addq	%rdx, %rax	# D.8155, D.8160
	leaq	112(%rax), %rcx	#, D.8161
	leaq	-1200(%rbp), %rax	#, tmp248
	movl	$576, %edx	#,
	movq	%rax, %rsi	# tmp248,
	movq	%rcx, %rdi	# D.8161,
	call	memcpy	#
	jmp	.L293	#
.L291:
	.loc 1 1831 0
	movl	-1268(%rbp), %edx	# destnode, tmp249
	leaq	-1200(%rbp), %rax	#, tmp250
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp250,
	call	send_field	#
	jmp	.L293	#
.L280:
	.loc 1 1836 0
	movl	this_node(%rip), %eax	# this_node, this_node.181
	cmpl	-1268(%rbp), %eax	# destnode, this_node.181
	jne	.L293	#,
	.loc 1 1837 0
	movl	-1272(%rbp), %ecx	# t, tmp251
	movl	-1276(%rbp), %edx	# z, tmp252
	movl	-1280(%rbp), %esi	# y, tmp253
	movl	-1284(%rbp), %eax	# x, tmp254
	movl	%eax, %edi	# tmp254,
	call	node_index	#
	movl	%eax, -1332(%rbp)	# tmp255, i
	.loc 1 1838 0
	movq	lattice(%rip), %rax	# lattice, lattice.182
	movl	-1332(%rbp), %edx	# i, tmp256
	movslq	%edx, %rdx	# tmp256, D.8155
	salq	$11, %rdx	#, D.8155
	addq	%rdx, %rax	# D.8155, D.8160
	addq	$112, %rax	#, D.8161
	movl	$576, %esi	#,
	movq	%rax, %rdi	# D.8161,
	call	get_field	#
.L293:
	.loc 1 1844 0
	movl	this_node(%rip), %eax	# this_node, this_node.183
	cmpl	-1268(%rbp), %eax	# destnode, this_node.183
	jne	.L294	#,
	.loc 1 1847 0
	movl	$0, -1328(%rbp)	#, k
	movq	lattice(%rip), %rax	# lattice, lattice.184
	movl	-1332(%rbp), %edx	# i, tmp257
	movslq	%edx, %rdx	# tmp257, D.8155
	salq	$11, %rdx	#, D.8155
	addq	%rdx, %rax	# D.8155, D.8160
	addq	$112, %rax	#, tmp258
	movq	%rax, -1256(%rbp)	# tmp258, val
	jmp	.L295	#
.L298:
	.loc 1 1850 0
	movl	-1260(%rbp), %edx	# test_gc.sum29, D.8157
	movq	-1256(%rbp), %rax	# val, tmp259
	movl	(%rax), %esi	# *val_6, D.8157
	movl	-1324(%rbp), %eax	# rank29, tmp260
	movl	%eax, %ecx	# tmp260, tmp302
	roll	%cl, %esi	# tmp302, D.8157
	movl	%esi, %eax	# D.8157, D.8157
	xorl	%edx, %eax	# D.8157, D.8157
	movl	%eax, -1260(%rbp)	# D.8157, test_gc.sum29
	.loc 1 1851 0
	movl	-1264(%rbp), %edx	# test_gc.sum31, D.8157
	movq	-1256(%rbp), %rax	# val, tmp261
	movl	(%rax), %esi	# *val_6, D.8157
	movl	-1320(%rbp), %eax	# rank31, tmp262
	movl	%eax, %ecx	# tmp262, tmp304
	roll	%cl, %esi	# tmp304, D.8157
	movl	%esi, %eax	# D.8157, D.8157
	xorl	%edx, %eax	# D.8157, D.8157
	movl	%eax, -1264(%rbp)	# D.8157, test_gc.sum31
	.loc 1 1852 0
	addl	$1, -1324(%rbp)	#, rank29
	cmpl	$28, -1324(%rbp)	#, rank29
	jle	.L296	#,
	.loc 1 1852 0 is_stmt 0 discriminator 1
	movl	$0, -1324(%rbp)	#, rank29
.L296:
	.loc 1 1853 0 is_stmt 1
	addl	$1, -1320(%rbp)	#, rank31
	cmpl	$30, -1320(%rbp)	#, rank31
	jle	.L297	#,
	.loc 1 1853 0 is_stmt 0 discriminator 1
	movl	$0, -1320(%rbp)	#, rank31
.L297:
	.loc 1 1848 0 is_stmt 1
	addl	$1, -1328(%rbp)	#, k
	addq	$4, -1256(%rbp)	#, val
.L295:
	.loc 1 1847 0 discriminator 1
	cmpl	$143, -1328(%rbp)	#, k
	jle	.L298	#,
	jmp	.L299	#
.L294:
	.loc 1 1858 0
	movl	-1324(%rbp), %eax	# rank29, rank29.185
	addl	$144, %eax	#, D.8162
	movl	%eax, -1324(%rbp)	# D.8162, rank29
	.loc 1 1859 0
	movl	-1320(%rbp), %eax	# rank31, rank31.186
	addl	$144, %eax	#, D.8162
	movl	%eax, -1320(%rbp)	# D.8162, rank31
	.loc 1 1860 0
	movl	-1324(%rbp), %ecx	# rank29, tmp264
	movl	$-1925330167, %edx	#, tmp266
	movl	%ecx, %eax	# tmp264, tmp294
	imull	%edx	# tmp266
	leal	(%rdx,%rcx), %eax	#, tmp267
	sarl	$4, %eax	#, tmp268
	movl	%eax, %edx	# tmp268, tmp268
	movl	%ecx, %eax	# tmp264, tmp269
	sarl	$31, %eax	#, tmp269
	subl	%eax, %edx	# tmp269, tmp263
	movl	%edx, %eax	# tmp263, tmp263
	imull	$29, %eax, %eax	#, tmp263, tmp270
	subl	%eax, %ecx	# tmp270, tmp271
	movl	%ecx, %eax	# tmp271, tmp271
	movl	%eax, -1324(%rbp)	# tmp271, rank29
	.loc 1 1861 0
	movl	-1320(%rbp), %ecx	# rank31, tmp273
	movl	$-2078209981, %edx	#, tmp275
	movl	%ecx, %eax	# tmp273, tmp295
	imull	%edx	# tmp275
	leal	(%rdx,%rcx), %eax	#, tmp276
	sarl	$4, %eax	#, tmp277
	movl	%eax, %edx	# tmp277, tmp277
	movl	%ecx, %eax	# tmp273, tmp278
	sarl	$31, %eax	#, tmp278
	subl	%eax, %edx	# tmp278, tmp272
	movl	%edx, %eax	# tmp272, tmp279
	sall	$5, %eax	#, tmp280
	subl	%edx, %eax	# tmp272, tmp279
	subl	%eax, %ecx	# tmp279, tmp281
	movl	%ecx, %eax	# tmp281, tmp281
	movl	%eax, -1320(%rbp)	# tmp281, rank31
.L299:
	.loc 1 1785 0
	addl	$1, -1336(%rbp)	#, rcv_rank
.L279:
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movl	volume(%rip), %eax	# volume, volume.187
	cmpl	%eax, -1336(%rbp)	# volume.187, rcv_rank
	jl	.L300	#,
	.loc 1 1866 0 is_stmt 1
	leaq	-1264(%rbp), %rax	#, tmp282
	addq	$4, %rax	#, tmp283
	movq	%rax, %rdi	# tmp283,
	call	g_xor32	#
	.loc 1 1867 0
	leaq	-1264(%rbp), %rax	#, tmp284
	movq	%rax, %rdi	# tmp284,
	call	g_xor32	#
	.loc 1 1869 0
	movl	this_node(%rip), %eax	# this_node, this_node.188
	testl	%eax, %eax	# this_node.188
	jne	.L276	#,
	.loc 1 1873 0
	movq	-1216(%rbp), %rax	# filename, tmp285
	movq	%rax, %rsi	# tmp285,
	movl	$.LC99, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1875 0
	movq	-1352(%rbp), %rax	# gf, tmp286
	movl	44(%rax), %eax	# gf_27(D)->check.sum31, D.8157
	cmpl	-1296(%rbp), %eax	# chksum, D.8157
	je	.L302	#,
	.loc 1 1877 0
	movq	-1352(%rbp), %rax	# gf, tmp287
	movl	44(%rax), %edx	# gf_27(D)->check.sum31, D.8157
	movl	-1296(%rbp), %eax	# chksum, tmp288
	movl	%eax, %esi	# tmp288,
	movl	$.LC100, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L303	#
.L302:
	.loc 1 1882 0
	movl	-1296(%rbp), %eax	# chksum, tmp289
	movl	%eax, %esi	# tmp289,
	movl	$.LC101, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L303:
	.loc 1 1884 0
	movq	stdout(%rip), %rax	# stdout, stdout.189
	movq	%rax, %rdi	# stdout.189,
	call	fflush	#
	.loc 1 1885 0
	movq	-1248(%rbp), %rax	# uin, tmp290
	movq	%rax, %rdi	# tmp290,
	call	free	#
	.loc 1 1888 0
	movl	-1260(%rbp), %edx	# test_gc.sum29, D.8157
	movq	-1352(%rbp), %rax	# gf, tmp291
	movl	%edx, 48(%rax)	# D.8157, gf_27(D)->check.sum29
	.loc 1 1889 0
	movl	-1264(%rbp), %edx	# test_gc.sum31, D.8157
	movq	-1352(%rbp), %rax	# gf, tmp292
	movl	%edx, 44(%rax)	# D.8157, gf_27(D)->check.sum31
.L276:
	.loc 1 1892 0
	movq	-24(%rbp), %rax	# D.8163, tmp296
	xorq	%fs:40, %rax	#, tmp296
	je	.L304	#,
	call	__stack_chk_fail	#
.L304:
	addq	$1352, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	r_serial_arch, .-r_serial_arch
	.section	.rodata
	.align 8
.LC102:
	.string	"r_serial_f: Attempting serial close on parallel file "
	.text
	.globl	r_serial_f
	.type	r_serial_f, @function
r_serial_f:
.LFB38:
	.loc 1 1903 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gf, gf
	.loc 1 1904 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 1905 0
	movl	this_node(%rip), %eax	# this_node, this_node.190
	testl	%eax, %eax	# this_node.190
	jne	.L306	#,
	.loc 1 1907 0
	movq	-8(%rbp), %rax	# gf, tmp64
	movl	40(%rax), %eax	# gf_2(D)->parallel, D.8169
	testl	%eax, %eax	# D.8169
	je	.L307	#,
	.loc 1 1908 0
	movl	$.LC102, %edi	#,
	call	puts	#
.L307:
	.loc 1 1910 0
	movq	-8(%rbp), %rax	# gf, tmp65
	movq	(%rax), %rax	# gf_2(D)->fp, D.8170
	movq	%rax, %rdi	# D.8170,
	call	fclose	#
.L306:
	.loc 1 1913 0
	movq	-8(%rbp), %rax	# gf, tmp66
	movq	32(%rax), %rax	# gf_2(D)->rank2rcv, D.8171
	testq	%rax, %rax	# D.8171
	je	.L305	#,
	.loc 1 1913 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gf, tmp67
	movq	32(%rax), %rax	# gf_2(D)->rank2rcv, D.8171
	movq	%rax, %rdi	# D.8171,
	call	free	#
.L305:
	.loc 1 1917 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	r_serial_f, .-r_serial_f
	.section	.rodata
	.align 8
.LC103:
	.string	"write_site_list: node %d can't malloc cbuf\n"
	.align 8
.LC104:
	.string	"write_site_list: node %d g_seek %ld failed errno %d\n"
	.align 8
.LC105:
	.string	"write_site_list: Node %d coords write error %d\n"
	.text
	.globl	write_site_list
	.type	write_site_list, @function
write_site_list:
.LFB39:
	.loc 1 1924 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# fp, fp
	movq	%rsi, -64(%rbp)	# gh, gh
	.loc 1 1940 0
	movq	-64(%rbp), %rax	# gh, tmp107
	movl	84(%rax), %eax	# gh_4(D)->header_bytes, D.8173
	cltq
	.loc 1 1941 0
	movl	sites_on_node(%rip), %edx	# sites_on_node, sites_on_node.191
	movslq	%edx, %rcx	# sites_on_node.191, D.8174
	movl	this_node(%rip), %edx	# this_node, this_node.192
	movslq	%edx, %rdx	# this_node.192, D.8174
	imulq	%rcx, %rdx	# D.8174, D.8174
	salq	$2, %rdx	#, D.8174
	.loc 1 1940 0
	addq	%rdx, %rax	# D.8174, D.8174
	movq	%rax, -32(%rbp)	# D.8174, offset
	.loc 1 1943 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.193
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.8174,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp108, cbuf
	.loc 1 1944 0
	cmpq	$0, -24(%rbp)	#, cbuf
	jne	.L310	#,
	.loc 1 1946 0
	movl	this_node(%rip), %eax	# this_node, this_node.194
	movl	%eax, %esi	# this_node.194,
	movl	$.LC103, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1947 0
	movq	stdout(%rip), %rax	# stdout, stdout.195
	movq	%rax, %rdi	# stdout.195,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L310:
	.loc 1 1950 0
	movq	-32(%rbp), %rcx	# offset, tmp109
	movq	-56(%rbp), %rax	# fp, tmp110
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	g_seek	#
	testl	%eax, %eax	# D.8173
	jns	.L311	#,
	.loc 1 1953 0
	call	__errno_location	#
	.loc 1 1952 0
	movl	(%rax), %ecx	# *_22, D.8173
	movl	this_node(%rip), %eax	# this_node, this_node.196
	movq	-32(%rbp), %rdx	# offset, tmp111
	movl	%eax, %esi	# this_node.196,
	movl	$.LC104, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1954 0
	movq	stdout(%rip), %rax	# stdout, stdout.197
	movq	%rax, %rdi	# stdout.197,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L311:
	.loc 1 1957 0
	movl	$0, -40(%rbp)	#, buf_length
	.loc 1 1959 0
	movl	$0, -44(%rbp)	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L312	#
.L313:
	.loc 1 1962 0 discriminator 2
	movzwl	6(%rbx), %eax	# s_3->t, D.8176
	movswl	%ax, %edx	# D.8176, D.8173
	movl	nz(%rip), %eax	# nz, nz.198
	imull	%eax, %edx	# nz.198, D.8173
	movzwl	4(%rbx), %eax	# s_3->z, D.8176
	cwtl
	addl	%eax, %edx	# D.8173, D.8173
	movl	ny(%rip), %eax	# ny, ny.199
	imull	%eax, %edx	# ny.199, D.8173
	movzwl	2(%rbx), %eax	# s_3->y, D.8176
	cwtl
	addl	%eax, %edx	# D.8173, D.8173
	movl	nx(%rip), %eax	# nx, nx.200
	imull	%eax, %edx	# nx.200, D.8173
	movzwl	(%rbx), %eax	# s_3->x, D.8176
	cwtl
	addl	%edx, %eax	# D.8173, tmp112
	movl	%eax, -36(%rbp)	# tmp112, coords
	.loc 1 1963 0 discriminator 2
	movl	-40(%rbp), %eax	# buf_length, tmp113
	cltq
	leaq	0(,%rax,4), %rdx	#, D.8174
	movq	-24(%rbp), %rax	# cbuf, tmp114
	addq	%rax, %rdx	# tmp114, D.8177
	movl	-36(%rbp), %eax	# coords, tmp115
	movl	%eax, (%rdx)	# tmp115, *_49
	.loc 1 1964 0 discriminator 2
	addl	$1, -40(%rbp)	#, buf_length
	.loc 1 1959 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
	addq	$2048, %rbx	#, s
.L312:
	.loc 1 1959 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.201
	cmpl	%eax, -44(%rbp)	# sites_on_node.201, i
	jl	.L313	#,
	.loc 1 1967 0 is_stmt 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.202
	movslq	%eax, %rdx	# sites_on_node.202, D.8174
	movq	-56(%rbp), %rcx	# fp, tmp116
	movq	-24(%rbp), %rax	# cbuf, tmp117
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	g_write	#
	movl	%eax, %edx	# D.8174, D.8173
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.203
	cmpl	%eax, %edx	# sites_on_node.203, D.8173
	je	.L314	#,
	.loc 1 1970 0
	call	__errno_location	#
	.loc 1 1969 0
	movl	(%rax), %edx	# *_58, D.8173
	movl	this_node(%rip), %eax	# this_node, this_node.204
	movl	%eax, %esi	# this_node.204,
	movl	$.LC105, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1970 0
	movq	stdout(%rip), %rax	# stdout, stdout.205
	movq	%rax, %rdi	# stdout.205,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L314:
	.loc 1 1973 0
	movq	-24(%rbp), %rax	# cbuf, tmp118
	movq	%rax, %rdi	# tmp118,
	call	free	#
	.loc 1 1974 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	write_site_list, .-write_site_list
	.section	.rodata
	.align 8
.LC106:
	.string	"parallel_open: Node %d can't open file %s, error %d\n"
	.text
	.globl	parallel_open
	.type	parallel_open, @function
parallel_open:
.LFB40:
	.loc 1 1980 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# order, order
	movq	%rsi, -48(%rbp)	# filename, filename
	.loc 1 1992 0
	movl	$0, %eax	#,
	call	setup_output_gauge_file	#
	movq	%rax, -24(%rbp)	# tmp67, gf
	.loc 1 1993 0
	movq	-24(%rbp), %rax	# gf, tmp68
	movq	8(%rax), %rax	# gf_1->header, tmp69
	movq	%rax, -16(%rbp)	# tmp69, gh
	.loc 1 1995 0
	movq	-16(%rbp), %rax	# gh, tmp70
	movl	-36(%rbp), %edx	# order, tmp71
	movl	%edx, 88(%rax)	# tmp71, gh_2->order
	.loc 1 1999 0
	movq	-48(%rbp), %rax	# filename, tmp72
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	g_open	#
	movq	%rax, -8(%rbp)	# tmp73, fp
	.loc 1 2000 0
	cmpq	$0, -8(%rbp)	#, fp
	jne	.L316	#,
	.loc 1 2003 0
	call	__errno_location	#
	.loc 1 2002 0
	movl	(%rax), %ecx	# *_6, D.8182
	movl	this_node(%rip), %eax	# this_node, this_node.206
	movq	-48(%rbp), %rdx	# filename, tmp74
	movl	%eax, %esi	# this_node.206,
	movl	$.LC106, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2003 0
	movq	stdout(%rip), %rax	# stdout, stdout.207
	movq	%rax, %rdi	# stdout.207,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L316:
	.loc 1 2008 0
	movl	this_node(%rip), %eax	# this_node, this_node.208
	testl	%eax, %eax	# this_node.208
	jne	.L317	#,
	.loc 1 2009 0
	movq	-16(%rbp), %rdx	# gh, tmp75
	movq	-8(%rbp), %rax	# fp, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	pwrite_gauge_hdr	#
.L317:
	.loc 1 2011 0
	movq	-16(%rbp), %rax	# gh, tmp77
	addq	$84, %rax	#, D.8183
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.8183,
	call	broadcast_bytes	#
	.loc 1 2015 0
	cmpl	$0, -36(%rbp)	#, order
	je	.L318	#,
	.loc 1 2015 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# gh, tmp78
	movq	-8(%rbp), %rax	# fp, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	write_site_list	#
.L318:
	.loc 1 2019 0 is_stmt 1
	movq	-24(%rbp), %rax	# gf, tmp80
	movq	-8(%rbp), %rdx	# fp, tmp81
	movq	%rdx, (%rax)	# tmp81, gf_1->fp
	.loc 1 2020 0
	movq	-24(%rbp), %rax	# gf, tmp82
	movq	-48(%rbp), %rdx	# filename, tmp83
	movq	%rdx, 16(%rax)	# tmp83, gf_1->filename
	.loc 1 2021 0
	movq	-24(%rbp), %rax	# gf, tmp84
	movl	$0, 24(%rax)	#, gf_1->byterevflag
	.loc 1 2022 0
	movq	-24(%rbp), %rax	# gf, tmp85
	movl	$1, 40(%rax)	#, gf_1->parallel
	.loc 1 2024 0
	movq	-24(%rbp), %rax	# gf, D.8184
	.loc 1 2025 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	parallel_open, .-parallel_open
	.globl	w_parallel_i
	.type	w_parallel_i, @function
w_parallel_i:
.LFB41:
	.loc 1 2031 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# filename, filename
	.loc 1 2035 0
	movq	-8(%rbp), %rax	# filename, tmp61
	movq	%rax, %rsi	# tmp61,
	movl	$0, %edi	#,
	call	parallel_open	#
	.loc 1 2037 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	w_parallel_i, .-w_parallel_i
	.globl	w_checkpoint_i
	.type	w_checkpoint_i, @function
w_checkpoint_i:
.LFB42:
	.loc 1 2043 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# filename, filename
	.loc 1 2047 0
	movq	-8(%rbp), %rax	# filename, tmp61
	movq	%rax, %rsi	# tmp61,
	movl	$1, %edi	#,
	call	parallel_open	#
	.loc 1 2049 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	w_checkpoint_i, .-w_checkpoint_i
	.section	.rodata
	.align 8
.LC107:
	.string	"%s: Attempting parallel write to serial file.\n"
	.align 8
.LC108:
	.string	"%s: Node %d g_seek %ld failed error %d file %s\n"
	.text
	.globl	w_parallel_setup
	.type	w_parallel_setup, @function
w_parallel_setup:
.LFB43:
	.loc 1 2056 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# gf, gf
	movq	%rsi, -128(%rbp)	# checksum_offset, checksum_offset
	.loc 1 2056 0
	movq	%fs:40, %rax	#, tmp114
	movq	%rax, -24(%rbp)	# tmp114, D.8195
	xorl	%eax, %eax	# tmp114
	.loc 1 2069 0
	movabsq	$7812726597469888375, %rax	#, tmp116
	movq	%rax, -48(%rbp)	# tmp116, myname
	movabsq	$8103511083599228005, %rax	#, tmp117
	movq	%rax, -40(%rbp)	# tmp117, myname
	movb	$0, -32(%rbp)	#, myname
	.loc 1 2071 0
	movq	-120(%rbp), %rax	# gf, tmp84
	movl	40(%rax), %eax	# gf_2(D)->parallel, D.8188
	testl	%eax, %eax	# D.8188
	jne	.L325	#,
	.loc 1 2072 0
	leaq	-48(%rbp), %rax	#, tmp85
	movq	%rax, %rsi	# tmp85,
	movl	$.LC107, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L325:
	.loc 1 2074 0
	movl	$144, %esi	#,
	movl	$16384, %edi	#,
	call	calloc	#
	movq	%rax, -104(%rbp)	# tmp86, lbuf
	.loc 1 2075 0
	cmpq	$0, -104(%rbp)	#, lbuf
	jne	.L326	#,
	.loc 1 2077 0
	movl	this_node(%rip), %edx	# this_node, this_node.209
	leaq	-48(%rbp), %rax	#, tmp87
	movq	%rax, %rsi	# tmp87,
	movl	$.LC93, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2078 0
	movq	stdout(%rip), %rax	# stdout, stdout.210
	movq	%rax, %rdi	# stdout.210,
	call	fflush	#
	.loc 1 2079 0
	movl	$1, %edi	#,
	call	terminate	#
.L326:
	.loc 1 2082 0
	movq	-120(%rbp), %rax	# gf, tmp88
	movq	(%rax), %rax	# gf_2(D)->fp, tmp89
	movq	%rax, -96(%rbp)	# tmp89, fp
	.loc 1 2083 0
	movq	-120(%rbp), %rax	# gf, tmp90
	movq	8(%rax), %rax	# gf_2(D)->header, tmp91
	movq	%rax, -88(%rbp)	# tmp91, gh
	.loc 1 2085 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.211
	movslq	%eax, %rdx	# sites_on_node.211, D.8189
	movq	%rdx, %rax	# D.8189, tmp92
	salq	$3, %rax	#, tmp92
	addq	%rdx, %rax	# D.8189, tmp92
	salq	$6, %rax	#, tmp93
	movq	%rax, -80(%rbp)	# D.8189, gauge_node_size
	.loc 1 2087 0
	movq	-120(%rbp), %rax	# gf, tmp94
	movq	8(%rax), %rax	# gf_2(D)->header, D.8190
	movl	88(%rax), %eax	# _13->order, D.8188
	testl	%eax, %eax	# D.8188
	jne	.L327	#,
	.loc 1 2087 0 is_stmt 0 discriminator 1
	movq	$0, -112(%rbp)	#, coord_list_size
	jmp	.L328	#
.L327:
	.loc 1 2088 0 is_stmt 1
	movl	volume(%rip), %eax	# volume, volume.212
	cltq
	salq	$2, %rax	#, D.8189
	movq	%rax, -112(%rbp)	# D.8189, coord_list_size
.L328:
	.loc 1 2089 0
	movq	-120(%rbp), %rax	# gf, tmp95
	movq	8(%rax), %rax	# gf_2(D)->header, D.8190
	movl	84(%rax), %eax	# _20->header_bytes, D.8188
	movslq	%eax, %rdx	# D.8188, D.8191
	movq	-112(%rbp), %rax	# coord_list_size, tmp99
	addq	%rdx, %rax	# D.8191, tmp98
	movq	%rax, -72(%rbp)	# tmp98, head_size
	.loc 1 2090 0
	movq	-128(%rbp), %rax	# checksum_offset, tmp100
	movq	-72(%rbp), %rdx	# head_size, tmp101
	movq	%rdx, (%rax)	# tmp101, *checksum_offset_24(D)
	.loc 1 2091 0
	movq	$8, -64(%rbp)	#, gauge_check_size
	.loc 1 2093 0
	movq	-64(%rbp), %rax	# gauge_check_size, tmp106
	movq	-72(%rbp), %rdx	# head_size, tmp107
	addq	%rdx, %rax	# tmp107, tmp105
	movq	%rax, -56(%rbp)	# tmp105, offset
	.loc 1 2097 0
	movl	this_node(%rip), %eax	# this_node, this_node.213
	cltq
	imulq	-80(%rbp), %rax	# gauge_node_size, D.8191
	addq	%rax, -56(%rbp)	# D.8191, offset
	.loc 1 2099 0
	movq	-56(%rbp), %rcx	# offset, tmp108
	movq	-96(%rbp), %rax	# fp, tmp109
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	g_seek	#
	testl	%eax, %eax	# D.8188
	jns	.L329	#,
	.loc 1 2101 0
	movq	-120(%rbp), %rax	# gf, tmp110
	movq	16(%rax), %rbx	# gf_2(D)->filename, D.8192
	.loc 1 2102 0
	call	__errno_location	#
	.loc 1 2101 0
	movl	(%rax), %esi	# *_33, D.8188
	movl	this_node(%rip), %edx	# this_node, this_node.214
	movq	-56(%rbp), %rcx	# offset, tmp111
	leaq	-48(%rbp), %rax	#, tmp112
	movq	%rbx, %r9	# D.8192,
	movl	%esi, %r8d	# D.8188,
	movq	%rax, %rsi	# tmp112,
	movl	$.LC108, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2103 0
	movq	stdout(%rip), %rax	# stdout, stdout.215
	movq	%rax, %rdi	# stdout.215,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L329:
	.loc 1 2106 0
	movq	-104(%rbp), %rax	# lbuf, D.8194
	.loc 1 2107 0
	movq	-24(%rbp), %rbx	# D.8195, tmp115
	xorq	%fs:40, %rbx	#, tmp115
	je	.L331	#,
	call	__stack_chk_fail	#
.L331:
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	w_parallel_setup, .-w_parallel_setup
	.section	.rodata
	.align 8
.LC110:
	.string	"%s: site_block incommensurate with buffer size\n"
	.align 8
.LC111:
	.string	"%s: Node %d gauge configuration write error %d file %s\n"
	.align 8
.LC112:
	.string	"%s: Node %d g_seek %ld for checksum failed error %d file %s\n"
	.align 8
.LC113:
	.string	"Saved gauge configuration in parallel to binary file %s\n"
	.text
	.globl	w_parallel
	.type	w_parallel, @function
w_parallel:
.LFB44:
	.loc 1 2113 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$760, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -760(%rbp)	# gf, gf
	.loc 1 2113 0
	movq	%fs:40, %rax	#, tmp392
	movq	%rax, -24(%rbp)	# tmp392, D.8213
	xorl	%eax, %eax	# tmp392
	.loc 1 2132 0
	movabsq	$7812726597469888375, %rax	#, tmp396
	movq	%rax, -48(%rbp)	# tmp396, myname
	movw	$27749, -40(%rbp)	#, myname
	movb	$0, -38(%rbp)	#, myname
	.loc 1 2134 0
	movq	-760(%rbp), %rax	# gf, tmp167
	movq	(%rax), %rax	# gf_23(D)->fp, tmp168
	movq	%rax, -656(%rbp)	# tmp168, fp
	.loc 1 2136 0
	leaq	-672(%rbp), %rdx	#, tmp169
	movq	-760(%rbp), %rax	# gf, tmp170
	movq	%rdx, %rsi	# tmp169,
	movq	%rax, %rdi	# tmp170,
	call	w_parallel_setup	#
	movq	%rax, -648(%rbp)	# tmp171, lbuf
	.loc 1 2141 0
	movq	-760(%rbp), %rax	# gf, tmp172
	movl	$0, 44(%rax)	#, gf_23(D)->check.sum31
	.loc 1 2142 0
	movq	-760(%rbp), %rax	# gf, tmp173
	movl	$0, 48(%rax)	#, gf_23(D)->check.sum29
	.loc 1 2146 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2147 0
	movl	$0, -740(%rbp)	#, buf_length
	.loc 1 2151 0
	movl	$0, %ebx	#, i
	jmp	.L333	#
.L338:
	.loc 1 2152 0
	movl	$0, -724(%rbp)	#, j
	jmp	.L334	#
.L337:
	.loc 1 2152 0 is_stmt 0 discriminator 2
	movl	$0, -720(%rbp)	#, k
	jmp	.L335	#
.L336:
	.loc 1 2153 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.8198
	movq	%rdx, %rax	# D.8198, tmp174
	salq	$3, %rax	#, tmp174
	addq	%rdx, %rax	# D.8198, tmp174
	salq	$4, %rax	#, tmp175
	movq	%rax, %rdx	# tmp174, D.8198
	movq	-648(%rbp), %rax	# lbuf, tmp176
	leaq	(%rdx,%rax), %rdi	#, D.8199
	movslq	%ebx, %rdx	# i, D.8198
	movq	%rdx, %rax	# D.8198, tmp177
	salq	$3, %rax	#, tmp177
	addq	%rdx, %rax	# D.8198, tmp177
	salq	$4, %rax	#, tmp178
	movq	%rax, %rdx	# tmp177, D.8198
	movq	-648(%rbp), %rax	# lbuf, tmp179
	leaq	(%rdx,%rax), %rcx	#, D.8199
	movl	-720(%rbp), %eax	# k, tmp181
	movslq	%eax, %rsi	# tmp181, tmp180
	movl	-724(%rbp), %eax	# j, tmp183
	movslq	%eax, %rdx	# tmp183, tmp182
	movq	%rdx, %rax	# tmp182, tmp184
	addq	%rax, %rax	# tmp184
	addq	%rdx, %rax	# tmp182, tmp184
	addq	%rsi, %rax	# tmp180, tmp185
	salq	$4, %rax	#, tmp186
	addq	%rcx, %rax	# D.8199, tmp187
	leaq	8(%rax), %rdx	#, tmp188
	movl	$0, %eax	#, tmp189
	movq	%rax, (%rdx)	# tmp189, _35->e[j_15][k_17].imag
	movl	-720(%rbp), %eax	# k, tmp191
	movslq	%eax, %rsi	# tmp191, tmp190
	movl	-724(%rbp), %eax	# j, tmp193
	movslq	%eax, %rdx	# tmp193, tmp192
	movq	%rdx, %rax	# tmp192, tmp194
	addq	%rax, %rax	# tmp194
	addq	%rdx, %rax	# tmp192, tmp194
	addq	%rsi, %rax	# tmp190, tmp195
	salq	$4, %rax	#, tmp196
	addq	%rcx, %rax	# D.8199, tmp197
	addq	$8, %rax	#, tmp198
	movq	(%rax), %rdx	# _35->e[j_15][k_17].imag, D.8200
	movl	-720(%rbp), %eax	# k, tmp200
	movslq	%eax, %rsi	# tmp200, tmp199
	movl	-724(%rbp), %eax	# j, tmp202
	movslq	%eax, %rcx	# tmp202, tmp201
	movq	%rcx, %rax	# tmp201, tmp203
	addq	%rax, %rax	# tmp203
	addq	%rcx, %rax	# tmp201, tmp203
	addq	%rsi, %rax	# tmp199, tmp204
	salq	$4, %rax	#, tmp205
	addq	%rdi, %rax	# D.8199, tmp206
	movq	%rdx, (%rax)	# D.8200, _32->e[j_15][k_17].real
	.loc 1 2152 0 discriminator 2
	addl	$1, -720(%rbp)	#, k
.L335:
	.loc 1 2152 0 is_stmt 0 discriminator 1
	cmpl	$2, -720(%rbp)	#, k
	jle	.L336	#,
	.loc 1 2152 0 discriminator 3
	addl	$1, -724(%rbp)	#, j
.L334:
	.loc 1 2152 0 discriminator 1
	cmpl	$2, -724(%rbp)	#, j
	jle	.L337	#,
	.loc 1 2151 0 is_stmt 1
	addl	$1, %ebx	#, i
.L333:
	.loc 1 2151 0 is_stmt 0 discriminator 1
	cmpl	$4095, %ebx	#, i
	jle	.L338	#,
	.loc 1 2163 0 is_stmt 1
	movl	$4096, -704(%rbp)	#, site_block
	.loc 1 2164 0
	movl	$4096, %eax	#, tmp207
	cltd
	idivl	-704(%rbp)	# site_block
	movl	%edx, %eax	# tmp208, D.8201
	testl	%eax, %eax	# D.8201
	je	.L339	#,
	.loc 1 2165 0
	leaq	-48(%rbp), %rax	#, tmp210
	movq	%rax, %rsi	# tmp210,
	movl	$.LC110, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2166 0
	movq	stdout(%rip), %rax	# stdout, stdout.216
	movq	%rax, %rdi	# stdout.216,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L339:
	.loc 1 2168 0
	movl	$0, -712(%rbp)	#, ksite
	jmp	.L340	#
.L368:
	.loc 1 2170 0
	movl	$0, -708(%rbp)	#, destnode
	jmp	.L341	#
.L367:
	.loc 1 2171 0
	movl	-712(%rbp), %eax	# ksite, tmp211
	movl	%eax, -716(%rbp)	# tmp211, isite
	jmp	.L342	#
.L366:
	.loc 1 2178 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.217
	imull	-708(%rbp), %eax	# destnode, D.8201
	movl	%eax, %edx	# D.8201, D.8201
	movl	-716(%rbp), %eax	# isite, tmp215
	addl	%edx, %eax	# D.8201, tmp214
	movl	%eax, -700(%rbp)	# tmp214, rcv_coords
	movl	-700(%rbp), %eax	# rcv_coords, tmp216
	movl	%eax, -696(%rbp)	# tmp216, rcv_rank
	.loc 1 2182 0
	movl	nx(%rip), %ecx	# nx, nx.218
	movl	-700(%rbp), %eax	# rcv_coords, tmp218
	cltd
	idivl	%ecx	# nx.218
	movl	%edx, -692(%rbp)	# tmp219, x
	movl	nx(%rip), %ebx	# nx, nx.219
	movl	-700(%rbp), %eax	# rcv_coords, tmp223
	cltd
	idivl	%ebx	# nx.219
	movl	%eax, -700(%rbp)	# tmp221, rcv_coords
	.loc 1 2183 0
	movl	ny(%rip), %ecx	# ny, ny.220
	movl	-700(%rbp), %eax	# rcv_coords, tmp225
	cltd
	idivl	%ecx	# ny.220
	movl	%edx, -688(%rbp)	# tmp226, y
	movl	ny(%rip), %ebx	# ny, ny.221
	movl	-700(%rbp), %eax	# rcv_coords, tmp230
	cltd
	idivl	%ebx	# ny.221
	movl	%eax, -700(%rbp)	# tmp228, rcv_coords
	.loc 1 2184 0
	movl	nz(%rip), %ecx	# nz, nz.222
	movl	-700(%rbp), %eax	# rcv_coords, tmp232
	cltd
	idivl	%ecx	# nz.222
	movl	%edx, -684(%rbp)	# tmp233, z
	movl	nz(%rip), %ebx	# nz, nz.223
	movl	-700(%rbp), %eax	# rcv_coords, tmp237
	cltd
	idivl	%ebx	# nz.223
	movl	%eax, -700(%rbp)	# tmp235, rcv_coords
	.loc 1 2185 0
	movl	nt(%rip), %ecx	# nt, nt.224
	movl	-700(%rbp), %eax	# rcv_coords, tmp239
	cltd
	idivl	%ecx	# nt.224
	movl	%edx, -680(%rbp)	# tmp240, t
	.loc 1 2188 0
	movl	-680(%rbp), %ecx	# t, tmp242
	movl	-684(%rbp), %edx	# z, tmp243
	movl	-688(%rbp), %esi	# y, tmp244
	movl	-692(%rbp), %eax	# x, tmp245
	movl	%eax, %edi	# tmp245,
	call	node_number	#
	movl	%eax, -676(%rbp)	# tmp246, sendnode
	.loc 1 2191 0
	movl	this_node(%rip), %eax	# this_node, this_node.225
	cmpl	-676(%rbp), %eax	# sendnode, this_node.225
	jne	.L343	#,
	.loc 1 2191 0 is_stmt 0 discriminator 1
	movl	-708(%rbp), %eax	# destnode, tmp247
	cmpl	-676(%rbp), %eax	# sendnode, tmp247
	je	.L343	#,
	.loc 1 2193 0 is_stmt 1
	movl	-692(%rbp), %eax	# x, tmp248
	movw	%ax, -640(%rbp)	# D.8202, msg.x
	movl	-688(%rbp), %eax	# y, tmp249
	movw	%ax, -638(%rbp)	# D.8202, msg.y
	movl	-684(%rbp), %eax	# z, tmp250
	movw	%ax, -636(%rbp)	# D.8202, msg.z
	movl	-680(%rbp), %eax	# t, tmp251
	movw	%ax, -634(%rbp)	# D.8202, msg.t
	.loc 1 2194 0
	movl	-680(%rbp), %ecx	# t, tmp252
	movl	-684(%rbp), %edx	# z, tmp253
	movl	-688(%rbp), %esi	# y, tmp254
	movl	-692(%rbp), %eax	# x, tmp255
	movl	%eax, %edi	# tmp255,
	call	node_index	#
	movl	%eax, %ebx	#, i
	.loc 1 2196 0
	movq	lattice(%rip), %rax	# lattice, lattice.226
	movslq	%ebx, %rdx	# i, D.8198
	salq	$11, %rdx	#, D.8198
	addq	%rdx, %rax	# D.8198, D.8203
	leaq	112(%rax), %rcx	#, D.8204
	.loc 1 2195 0
	leaq	-640(%rbp), %rax	#, tmp256
	addq	$8, %rax	#, tmp257
	movl	$576, %edx	#,
	movq	%rcx, %rsi	# D.8204,
	movq	%rax, %rdi	# tmp257,
	call	memcpy	#
	.loc 1 2198 0
	movl	-708(%rbp), %edx	# destnode, tmp258
	leaq	-640(%rbp), %rax	#, tmp259
	movl	$584, %esi	#,
	movq	%rax, %rdi	# tmp259,
	call	send_field	#
	jmp	.L344	#
.L343:
	.loc 1 2201 0
	movl	this_node(%rip), %eax	# this_node, this_node.227
	cmpl	-708(%rbp), %eax	# destnode, this_node.227
	jne	.L344	#,
	.loc 1 2202 0
	movl	-708(%rbp), %eax	# destnode, tmp260
	cmpl	-676(%rbp), %eax	# sendnode, tmp260
	jne	.L345	#,
	.loc 1 2203 0
	movl	-680(%rbp), %ecx	# t, tmp261
	movl	-684(%rbp), %edx	# z, tmp262
	movl	-688(%rbp), %esi	# y, tmp263
	movl	-692(%rbp), %eax	# x, tmp264
	movl	%eax, %edi	# tmp264,
	call	node_index	#
	movl	%eax, %ebx	#, i
	.loc 1 2204 0
	movl	-740(%rbp), %eax	# buf_length, tmp265
	movl	%eax, -736(%rbp)	# tmp265, where_in_buf
	.loc 1 2206 0
	movq	lattice(%rip), %rax	# lattice, lattice.228
	movslq	%ebx, %rdx	# i, D.8198
	salq	$11, %rdx	#, D.8198
	addq	%rdx, %rax	# D.8198, D.8203
	leaq	112(%rax), %rcx	#, D.8204
	.loc 1 2205 0
	movl	-736(%rbp), %eax	# where_in_buf, tmp266
	movslq	%eax, %rdx	# tmp266, D.8198
	movq	%rdx, %rax	# D.8198, tmp267
	salq	$3, %rax	#, tmp267
	addq	%rdx, %rax	# D.8198, tmp267
	salq	$6, %rax	#, tmp268
	movq	%rax, %rdx	# tmp267, D.8198
	movq	-648(%rbp), %rax	# lbuf, tmp269
	addq	%rdx, %rax	# D.8198, D.8205
	movl	$576, %edx	#,
	movq	%rcx, %rsi	# D.8204,
	movq	%rax, %rdi	# D.8205,
	call	memcpy	#
	.loc 1 2207 0
	movl	-696(%rbp), %edx	# rcv_rank, rcv_rank.229
	movl	%edx, %eax	# rcv_rank.229, tmp270
	sall	$3, %eax	#, tmp270
	addl	%edx, %eax	# rcv_rank.229, tmp270
	sall	$4, %eax	#, tmp271
	movl	%eax, -728(%rbp)	# D.8206, rank31
	movl	-728(%rbp), %eax	# rank31, tmp272
	movl	%eax, -732(%rbp)	# tmp272, rank29
	jmp	.L346	#
.L345:
	.loc 1 2215 0
	leaq	-640(%rbp), %rax	#, tmp273
	movl	$584, %esi	#,
	movq	%rax, %rdi	# tmp273,
	call	get_field	#
	.loc 1 2217 0
	movzwl	-640(%rbp), %eax	# msg.x, D.8202
	movswl	%ax, %edx	# D.8202, D.8201
	movzwl	-638(%rbp), %eax	# msg.y, D.8202
	movswl	%ax, %ecx	# D.8202, D.8201
	movzwl	-636(%rbp), %eax	# msg.z, D.8202
	movswl	%ax, %esi	# D.8202, D.8201
	movzwl	-634(%rbp), %eax	# msg.t, D.8202
	movswl	%ax, %edi	# D.8202, D.8201
	movl	nz(%rip), %eax	# nz, nz.230
	imull	%edi, %eax	# D.8201, D.8201
	addl	%eax, %esi	# D.8201, D.8201
	movl	ny(%rip), %eax	# ny, ny.231
	imull	%esi, %eax	# D.8201, D.8201
	addl	%eax, %ecx	# D.8201, D.8201
	movl	nx(%rip), %eax	# nx, nx.232
	imull	%ecx, %eax	# D.8201, D.8201
	leal	(%rdx,%rax), %ebx	#, i
	.loc 1 2219 0
	movl	sites_on_node(%rip), %ecx	# sites_on_node, sites_on_node.233
	movl	%ebx, %eax	# i, tmp275
	cltd
	idivl	%ecx	# sites_on_node.233
	movl	%edx, %eax	# tmp274, D.8201
	cltd
	shrl	$20, %edx	#, tmp277
	addl	%edx, %eax	# tmp277, tmp278
	andl	$4095, %eax	#, tmp279
	subl	%edx, %eax	# tmp277, tmp280
	movl	%eax, -736(%rbp)	# tmp280, where_in_buf
	.loc 1 2222 0
	movl	-736(%rbp), %eax	# where_in_buf, tmp281
	movslq	%eax, %rdx	# tmp281, D.8198
	movq	%rdx, %rax	# D.8198, tmp282
	salq	$3, %rax	#, tmp282
	addq	%rdx, %rax	# D.8198, tmp282
	salq	$6, %rax	#, tmp283
	movq	%rax, %rdx	# tmp282, D.8198
	movq	-648(%rbp), %rax	# lbuf, tmp284
	addq	%rdx, %rax	# D.8198, D.8205
	leaq	-632(%rbp), %rdx	#, tmp286
	movl	$576, %r8d	#, tmp287
	movq	%rax, %rcx	# tmp285, tmp288
	andl	$1, %ecx	#, tmp288
	testq	%rcx, %rcx	# tmp288
	je	.L347	#,
	movzbl	(%rdx), %ecx	#, tmp289
	movb	%cl, (%rax)	# tmp289,
	addq	$1, %rax	#, tmp285
	addq	$1, %rdx	#, tmp286
	subl	$1, %r8d	#, tmp287
.L347:
	movq	%rax, %rcx	# tmp285, tmp290
	andl	$2, %ecx	#, tmp290
	testq	%rcx, %rcx	# tmp290
	je	.L348	#,
	movzwl	(%rdx), %ecx	#, tmp291
	movw	%cx, (%rax)	# tmp291,
	addq	$2, %rax	#, tmp285
	addq	$2, %rdx	#, tmp286
	subl	$2, %r8d	#, tmp287
.L348:
	movq	%rax, %rcx	# tmp285, tmp292
	andl	$4, %ecx	#, tmp292
	testq	%rcx, %rcx	# tmp292
	je	.L349	#,
	movl	(%rdx), %ecx	#, tmp293
	movl	%ecx, (%rax)	# tmp293,
	addq	$4, %rax	#, tmp285
	addq	$4, %rdx	#, tmp286
	subl	$4, %r8d	#, tmp287
.L349:
	movl	%r8d, %ecx	# tmp287, tmp294
	shrl	$3, %ecx	#, tmp294
	movl	%ecx, %ecx	# tmp294, tmp295
	movq	%rax, %rdi	# tmp285, tmp285
	movq	%rdx, %rsi	# tmp286, tmp286
	rep movsq
	movq	%rsi, %rdx	# tmp286, tmp286
	movq	%rdi, %rax	# tmp285, tmp285
	movl	$0, %ecx	#, tmp296
	movl	%r8d, %esi	# tmp287, tmp297
	andl	$4, %esi	#, tmp297
	testl	%esi, %esi	# tmp297
	je	.L350	#,
	movl	(%rdx), %esi	#, tmp298
	movl	%esi, (%rax)	# tmp298,
	addq	$4, %rcx	#, tmp299
.L350:
	movl	%r8d, %esi	# tmp287, tmp300
	andl	$2, %esi	#, tmp300
	testl	%esi, %esi	# tmp300
	je	.L351	#,
	movzwl	(%rdx,%rcx), %esi	#, tmp301
	movw	%si, (%rax,%rcx)	# tmp301,
	addq	$2, %rcx	#, tmp302
.L351:
	movl	%r8d, %esi	# tmp287, tmp303
	andl	$1, %esi	#, tmp303
	testl	%esi, %esi	# tmp303
	je	.L352	#,
	movzbl	(%rdx,%rcx), %edx	#, tmp304
	movb	%dl, (%rax,%rcx)	# tmp304,
.L352:
	.loc 1 2224 0
	movl	%ebx, %edx	# i, i.234
	movl	%edx, %eax	# i.234, tmp305
	sall	$3, %eax	#, tmp305
	addl	%edx, %eax	# i.234, tmp305
	sall	$4, %eax	#, tmp306
	movl	%eax, -728(%rbp)	# D.8206, rank31
	movl	-728(%rbp), %eax	# rank31, tmp307
	movl	%eax, -732(%rbp)	# tmp307, rank29
.L346:
	.loc 1 2229 0
	movl	-732(%rbp), %ecx	# rank29, tmp309
	movl	$-1925330167, %edx	#, tmp311
	movl	%ecx, %eax	# tmp309, tmp393
	imull	%edx	# tmp311
	leal	(%rdx,%rcx), %eax	#, tmp312
	sarl	$4, %eax	#, tmp313
	movl	%eax, %edx	# tmp313, tmp313
	movl	%ecx, %eax	# tmp309, tmp314
	sarl	$31, %eax	#, tmp314
	subl	%eax, %edx	# tmp314, tmp308
	movl	%edx, %eax	# tmp308, tmp308
	imull	$29, %eax, %eax	#, tmp308, tmp315
	subl	%eax, %ecx	# tmp315, tmp316
	movl	%ecx, %eax	# tmp316, tmp316
	movl	%eax, -732(%rbp)	# tmp316, rank29
	movl	-728(%rbp), %ecx	# rank31, tmp318
	movl	$-2078209981, %edx	#, tmp320
	movl	%ecx, %eax	# tmp318, tmp394
	imull	%edx	# tmp320
	leal	(%rdx,%rcx), %eax	#, tmp321
	sarl	$4, %eax	#, tmp322
	movl	%eax, %edx	# tmp322, tmp322
	movl	%ecx, %eax	# tmp318, tmp323
	sarl	$31, %eax	#, tmp323
	subl	%eax, %edx	# tmp323, tmp317
	movl	%edx, %eax	# tmp317, tmp324
	sall	$5, %eax	#, tmp325
	subl	%edx, %eax	# tmp317, tmp324
	subl	%eax, %ecx	# tmp324, tmp326
	movl	%ecx, %eax	# tmp326, tmp326
	movl	%eax, -728(%rbp)	# tmp326, rank31
	.loc 1 2230 0
	movl	$0, -720(%rbp)	#, k
	movl	-736(%rbp), %eax	# where_in_buf, tmp327
	movslq	%eax, %rdx	# tmp327, D.8198
	movq	%rdx, %rax	# D.8198, tmp328
	salq	$3, %rax	#, tmp328
	addq	%rdx, %rax	# D.8198, tmp328
	salq	$6, %rax	#, tmp329
	movq	%rax, %rdx	# tmp328, D.8198
	movq	-648(%rbp), %rax	# lbuf, tmp333
	addq	%rdx, %rax	# D.8198, tmp332
	movq	%rax, -664(%rbp)	# tmp332, val
	jmp	.L353	#
.L356:
	.loc 1 2233 0
	movq	-760(%rbp), %rax	# gf, tmp334
	movl	48(%rax), %edx	# gf_23(D)->check.sum29, D.8207
	movq	-664(%rbp), %rax	# val, tmp335
	movl	(%rax), %esi	# *val_6, D.8207
	movl	-732(%rbp), %eax	# rank29, tmp336
	movl	%eax, %ecx	# tmp336, tmp421
	roll	%cl, %esi	# tmp421, D.8207
	movl	%esi, %eax	# D.8207, D.8207
	xorl	%eax, %edx	# D.8207, D.8207
	movq	-760(%rbp), %rax	# gf, tmp337
	movl	%edx, 48(%rax)	# D.8207, gf_23(D)->check.sum29
	.loc 1 2234 0
	movq	-760(%rbp), %rax	# gf, tmp338
	movl	44(%rax), %edx	# gf_23(D)->check.sum31, D.8207
	movq	-664(%rbp), %rax	# val, tmp339
	movl	(%rax), %esi	# *val_6, D.8207
	movl	-728(%rbp), %eax	# rank31, tmp340
	movl	%eax, %ecx	# tmp340, tmp423
	roll	%cl, %esi	# tmp423, D.8207
	movl	%esi, %eax	# D.8207, D.8207
	xorl	%eax, %edx	# D.8207, D.8207
	movq	-760(%rbp), %rax	# gf, tmp341
	movl	%edx, 44(%rax)	# D.8207, gf_23(D)->check.sum31
	.loc 1 2235 0
	addl	$1, -732(%rbp)	#, rank29
	cmpl	$28, -732(%rbp)	#, rank29
	jle	.L354	#,
	.loc 1 2235 0 is_stmt 0 discriminator 1
	movl	$0, -732(%rbp)	#, rank29
.L354:
	.loc 1 2236 0 is_stmt 1
	addl	$1, -728(%rbp)	#, rank31
	cmpl	$30, -728(%rbp)	#, rank31
	jle	.L355	#,
	.loc 1 2236 0 is_stmt 0 discriminator 1
	movl	$0, -728(%rbp)	#, rank31
.L355:
	.loc 1 2231 0 is_stmt 1
	addl	$1, -720(%rbp)	#, k
	addq	$4, -664(%rbp)	#, val
.L353:
	.loc 1 2230 0 discriminator 1
	cmpl	$143, -720(%rbp)	#, k
	jle	.L356	#,
	.loc 1 2239 0
	addl	$1, -740(%rbp)	#, buf_length
	.loc 1 2240 0
	cmpl	$4096, -740(%rbp)	#, buf_length
	je	.L357	#,
	.loc 1 2241 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.235
	subl	$1, %eax	#, D.8201
	.loc 1 2240 0 discriminator 1
	cmpl	-716(%rbp), %eax	# isite, D.8201
	jne	.L344	#,
.L357:
	.loc 1 2245 0
	movl	-740(%rbp), %eax	# buf_length, tmp342
	movslq	%eax, %rdx	# tmp342, D.8198
	movq	-656(%rbp), %rcx	# fp, tmp343
	movq	-648(%rbp), %rax	# lbuf, tmp344
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp344,
	call	g_write	#
	cmpl	-740(%rbp), %eax	# buf_length, D.8201
	je	.L358	#,
	.loc 1 2248 0
	movq	-760(%rbp), %rax	# gf, tmp345
	movq	16(%rax), %rbx	# gf_23(D)->filename, D.8208
	.loc 1 2249 0
	call	__errno_location	#
	.loc 1 2248 0
	movl	(%rax), %ecx	# *_149, D.8201
	movl	this_node(%rip), %edx	# this_node, this_node.236
	leaq	-48(%rbp), %rax	#, tmp346
	movq	%rbx, %r8	# D.8208,
	movq	%rax, %rsi	# tmp346,
	movl	$.LC111, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2250 0
	movq	stdout(%rip), %rax	# stdout, stdout.237
	movq	%rax, %rdi	# stdout.237,
	call	fflush	#
	.loc 1 2251 0
	movl	$1, %edi	#,
	call	terminate	#
.L358:
	.loc 1 2253 0
	movl	$0, -740(%rbp)	#, buf_length
	.loc 1 2255 0
	movl	$0, %ebx	#, i
	jmp	.L359	#
.L364:
	.loc 1 2256 0
	movl	$0, -724(%rbp)	#, j
	jmp	.L360	#
.L363:
	.loc 1 2256 0 is_stmt 0 discriminator 2
	movl	$0, -720(%rbp)	#, k
	jmp	.L361	#
.L362:
	.loc 1 2257 0 is_stmt 1 discriminator 2
	movslq	%ebx, %rdx	# i, D.8198
	movq	%rdx, %rax	# D.8198, tmp347
	salq	$3, %rax	#, tmp347
	addq	%rdx, %rax	# D.8198, tmp347
	salq	$4, %rax	#, tmp348
	movq	%rax, %rdx	# tmp347, D.8198
	movq	-648(%rbp), %rax	# lbuf, tmp349
	leaq	(%rdx,%rax), %rdi	#, D.8199
	movslq	%ebx, %rdx	# i, D.8198
	movq	%rdx, %rax	# D.8198, tmp350
	salq	$3, %rax	#, tmp350
	addq	%rdx, %rax	# D.8198, tmp350
	salq	$4, %rax	#, tmp351
	movq	%rax, %rdx	# tmp350, D.8198
	movq	-648(%rbp), %rax	# lbuf, tmp352
	leaq	(%rdx,%rax), %rcx	#, D.8199
	movl	-720(%rbp), %eax	# k, tmp354
	movslq	%eax, %rsi	# tmp354, tmp353
	movl	-724(%rbp), %eax	# j, tmp356
	movslq	%eax, %rdx	# tmp356, tmp355
	movq	%rdx, %rax	# tmp355, tmp357
	addq	%rax, %rax	# tmp357
	addq	%rdx, %rax	# tmp355, tmp357
	addq	%rsi, %rax	# tmp353, tmp358
	salq	$4, %rax	#, tmp359
	addq	%rcx, %rax	# D.8199, tmp360
	leaq	8(%rax), %rdx	#, tmp361
	movl	$0, %eax	#, tmp362
	movq	%rax, (%rdx)	# tmp362, _162->e[j_16][k_19].imag
	movl	-720(%rbp), %eax	# k, tmp364
	movslq	%eax, %rsi	# tmp364, tmp363
	movl	-724(%rbp), %eax	# j, tmp366
	movslq	%eax, %rdx	# tmp366, tmp365
	movq	%rdx, %rax	# tmp365, tmp367
	addq	%rax, %rax	# tmp367
	addq	%rdx, %rax	# tmp365, tmp367
	addq	%rsi, %rax	# tmp363, tmp368
	salq	$4, %rax	#, tmp369
	addq	%rcx, %rax	# D.8199, tmp370
	addq	$8, %rax	#, tmp371
	movq	(%rax), %rdx	# _162->e[j_16][k_19].imag, D.8200
	movl	-720(%rbp), %eax	# k, tmp373
	movslq	%eax, %rsi	# tmp373, tmp372
	movl	-724(%rbp), %eax	# j, tmp375
	movslq	%eax, %rcx	# tmp375, tmp374
	movq	%rcx, %rax	# tmp374, tmp376
	addq	%rax, %rax	# tmp376
	addq	%rcx, %rax	# tmp374, tmp376
	addq	%rsi, %rax	# tmp372, tmp377
	salq	$4, %rax	#, tmp378
	addq	%rdi, %rax	# D.8199, tmp379
	movq	%rdx, (%rax)	# D.8200, _159->e[j_16][k_19].real
	.loc 1 2256 0 discriminator 2
	addl	$1, -720(%rbp)	#, k
.L361:
	.loc 1 2256 0 is_stmt 0 discriminator 1
	cmpl	$2, -720(%rbp)	#, k
	jle	.L362	#,
	.loc 1 2256 0 discriminator 3
	addl	$1, -724(%rbp)	#, j
.L360:
	.loc 1 2256 0 discriminator 1
	cmpl	$2, -724(%rbp)	#, j
	jle	.L363	#,
	.loc 1 2255 0 is_stmt 1
	addl	$1, %ebx	#, i
.L359:
	.loc 1 2255 0 is_stmt 0 discriminator 1
	cmpl	$4095, %ebx	#, i
	jle	.L364	#,
.L344:
	.loc 1 2172 0 is_stmt 1
	addl	$1, -716(%rbp)	#, isite
.L342:
	.loc 1 2172 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.238
	.loc 1 2171 0 is_stmt 1 discriminator 1
	cmpl	%eax, -716(%rbp)	# sites_on_node.238, isite
	jge	.L365	#,
	.loc 1 2172 0
	movl	-704(%rbp), %eax	# site_block, tmp380
	movl	-712(%rbp), %edx	# ksite, tmp381
	addl	%edx, %eax	# tmp381, D.8201
	cmpl	-716(%rbp), %eax	# isite, D.8201
	jg	.L366	#,
.L365:
	.loc 1 2170 0
	addl	$1, -708(%rbp)	#, destnode
.L341:
	.loc 1 2170 0 is_stmt 0 discriminator 1
	movl	number_of_nodes(%rip), %eax	# number_of_nodes, number_of_nodes.239
	cmpl	%eax, -708(%rbp)	# number_of_nodes.239, destnode
	jl	.L367	#,
	.loc 1 2262 0 is_stmt 1
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2168 0
	movl	-704(%rbp), %eax	# site_block, tmp382
	addl	%eax, -712(%rbp)	# tmp382, ksite
.L340:
	.loc 1 2168 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.240
	cmpl	%eax, -712(%rbp)	# sites_on_node.240, ksite
	jl	.L368	#,
	.loc 1 2266 0 is_stmt 1
	movq	-648(%rbp), %rax	# lbuf, tmp383
	movq	%rax, %rdi	# tmp383,
	call	free	#
	.loc 1 2270 0
	movq	-760(%rbp), %rax	# gf, tmp384
	addq	$48, %rax	#, D.8210
	movq	%rax, %rdi	# D.8210,
	call	g_xor32	#
	.loc 1 2271 0
	movq	-760(%rbp), %rax	# gf, tmp385
	addq	$44, %rax	#, D.8210
	movq	%rax, %rdi	# D.8210,
	call	g_xor32	#
	.loc 1 2278 0
	movl	this_node(%rip), %eax	# this_node, this_node.241
	testl	%eax, %eax	# this_node.241
	jne	.L332	#,
	.loc 1 2279 0
	movq	-672(%rbp), %rcx	# checksum_offset, checksum_offset.242
	movq	-656(%rbp), %rax	# fp, tmp386
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# checksum_offset.242,
	movq	%rax, %rdi	# tmp386,
	call	g_seek	#
	testl	%eax, %eax	# D.8201
	jns	.L370	#,
	.loc 1 2281 0
	movq	-760(%rbp), %rax	# gf, tmp387
	movq	16(%rax), %rbx	# gf_23(D)->filename, D.8208
	.loc 1 2282 0
	call	__errno_location	#
	.loc 1 2281 0
	movl	(%rax), %esi	# *_176, D.8201
	movq	-672(%rbp), %rcx	# checksum_offset, checksum_offset.243
	movl	this_node(%rip), %edx	# this_node, this_node.244
	leaq	-48(%rbp), %rax	#, tmp388
	movq	%rbx, %r9	# D.8208,
	movl	%esi, %r8d	# D.8201,
	movq	%rax, %rsi	# tmp388,
	movl	$.LC112, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2283 0
	movq	stdout(%rip), %rax	# stdout, stdout.245
	movq	%rax, %rdi	# stdout.245,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L370:
	.loc 1 2286 0
	movq	-760(%rbp), %rax	# gf, tmp389
	movq	%rax, %rsi	# tmp389,
	movl	$1, %edi	#,
	call	write_checksum	#
	.loc 1 2288 0
	movq	-760(%rbp), %rax	# gf, tmp390
	movq	16(%rax), %rax	# gf_23(D)->filename, D.8208
	movq	%rax, %rsi	# D.8208,
	movl	$.LC113, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2290 0
	movq	-760(%rbp), %rax	# gf, tmp391
	movq	8(%rax), %rax	# gf_23(D)->header, D.8211
	addq	$4, %rax	#, D.8212
	movq	%rax, %rsi	# D.8212,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L332:
	.loc 1 2294 0
	movq	-24(%rbp), %rax	# D.8213, tmp395
	xorq	%fs:40, %rax	#, tmp395
	je	.L371	#,
	call	__stack_chk_fail	#
.L371:
	addq	$760, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	w_parallel, .-w_parallel
	.section	.rodata
	.align 8
.LC114:
	.string	"Saved gauge configuration checkpoint file %s\n"
	.text
	.globl	w_checkpoint
	.type	w_checkpoint, @function
w_checkpoint:
.LFB45:
	.loc 1 2301 0
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
	movq	%rdi, -104(%rbp)	# gf, gf
	.loc 1 2301 0
	movq	%fs:40, %rax	#, tmp177
	movq	%rax, -24(%rbp)	# tmp177, D.8229
	xorl	%eax, %eax	# tmp177
	.loc 1 2313 0
	movabsq	$8100677641950158711, %rax	#, tmp181
	movq	%rax, -48(%rbp)	# tmp181, myname
	movl	$1953393007, -40(%rbp)	#, myname
	movb	$0, -36(%rbp)	#, myname
	.loc 1 2315 0
	movq	-104(%rbp), %rax	# gf, tmp119
	movq	(%rax), %rax	# gf_13(D)->fp, tmp120
	movq	%rax, -64(%rbp)	# tmp120, fp
	.loc 1 2317 0
	leaq	-80(%rbp), %rdx	#, tmp121
	movq	-104(%rbp), %rax	# gf, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	w_parallel_setup	#
	movq	%rax, -56(%rbp)	# tmp123, lbuf
	.loc 1 2322 0
	movq	-104(%rbp), %rax	# gf, tmp124
	movl	$0, 44(%rax)	#, gf_13(D)->check.sum31
	.loc 1 2323 0
	movq	-104(%rbp), %rax	# gf, tmp125
	movl	$0, 48(%rax)	#, gf_13(D)->check.sum29
	.loc 1 2326 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.246
	movslq	%eax, %rdx	# sites_on_node.246, D.8218
	movl	this_node(%rip), %eax	# this_node, this_node.247
	cltq
	imulq	%rax, %rdx	# D.8218, D.8218
	movq	%rdx, %rax	# D.8218, tmp126
	salq	$3, %rax	#, tmp126
	addq	%rdx, %rax	# D.8218, tmp126
	salq	$4, %rax	#, tmp127
	movq	%rax, %rcx	# tmp126, D.8218
	movabsq	$1908283869694091547, %rdx	#, tmp129
	movq	%rcx, %rax	# D.8218, tmp178
	mulq	%rdx	# tmp129
	movq	%rcx, %rax	# D.8218, tmp130
	subq	%rdx, %rax	# tmp128, tmp130
	shrq	%rax	# tmp131
	addq	%rdx, %rax	# tmp128, tmp132
	shrq	$4, %rax	#, D.8218
	movq	%rax, %rdx	# D.8218, D.8218
	movq	%rdx, %rax	# D.8218, tmp133
	salq	$3, %rax	#, tmp134
	subq	%rdx, %rax	# D.8218, tmp133
	salq	$2, %rax	#, tmp133
	addq	%rdx, %rax	# D.8218, tmp133
	subq	%rax, %rcx	# tmp133, D.8218
	movq	%rcx, %rdx	# D.8218, D.8218
	movl	%edx, -92(%rbp)	# D.8218, rank29
	.loc 1 2327 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.248
	movslq	%eax, %rdx	# sites_on_node.248, D.8218
	movl	this_node(%rip), %eax	# this_node, this_node.249
	cltq
	imulq	%rax, %rdx	# D.8218, D.8218
	movq	%rdx, %rax	# D.8218, tmp135
	salq	$3, %rax	#, tmp135
	addq	%rdx, %rax	# D.8218, tmp135
	salq	$4, %rax	#, tmp136
	movq	%rax, %rcx	# tmp135, D.8218
	movabsq	$595056260442243601, %rdx	#, tmp138
	movq	%rcx, %rax	# D.8218, tmp179
	mulq	%rdx	# tmp138
	movq	%rcx, %rax	# D.8218, tmp139
	subq	%rdx, %rax	# tmp137, tmp139
	shrq	%rax	# tmp140
	addq	%rdx, %rax	# tmp137, tmp141
	shrq	$4, %rax	#, D.8218
	movq	%rax, %rdx	# D.8218, D.8218
	movq	%rdx, %rax	# D.8218, tmp142
	salq	$5, %rax	#, tmp143
	subq	%rdx, %rax	# D.8218, tmp142
	subq	%rax, %rcx	# tmp142, D.8218
	movq	%rcx, %rdx	# D.8218, D.8218
	movl	%edx, -88(%rbp)	# D.8218, rank31
	.loc 1 2329 0
	movl	$0, -84(%rbp)	#, buf_length
	.loc 1 2331 0
	movl	$0, %ebx	#, i
	jmp	.L373	#
.L381:
	.loc 1 2336 0
	movq	lattice(%rip), %rax	# lattice, lattice.250
	movslq	%ebx, %rdx	# i, D.8218
	salq	$11, %rdx	#, D.8218
	addq	%rdx, %rax	# D.8218, D.8219
	leaq	112(%rax), %rcx	#, D.8220
	.loc 1 2335 0
	movl	-84(%rbp), %eax	# buf_length, tmp144
	movslq	%eax, %rdx	# tmp144, D.8218
	movq	%rdx, %rax	# D.8218, tmp145
	salq	$3, %rax	#, tmp145
	addq	%rdx, %rax	# D.8218, tmp145
	salq	$6, %rax	#, tmp146
	movq	%rax, %rdx	# tmp145, D.8218
	movq	-56(%rbp), %rax	# lbuf, tmp147
	addq	%rdx, %rax	# D.8218, D.8221
	movl	$576, %edx	#,
	movq	%rcx, %rsi	# D.8220,
	movq	%rax, %rdi	# D.8221,
	call	memcpy	#
	.loc 1 2339 0
	movl	$0, -96(%rbp)	#, k
	movl	-84(%rbp), %eax	# buf_length, tmp148
	movslq	%eax, %rdx	# tmp148, D.8218
	movq	%rdx, %rax	# D.8218, tmp149
	salq	$3, %rax	#, tmp149
	addq	%rdx, %rax	# D.8218, tmp149
	salq	$6, %rax	#, tmp150
	movq	%rax, %rdx	# tmp149, D.8218
	movq	-56(%rbp), %rax	# lbuf, tmp154
	addq	%rdx, %rax	# D.8218, tmp153
	movq	%rax, -72(%rbp)	# tmp153, val
	jmp	.L374	#
.L377:
	.loc 1 2342 0
	movq	-104(%rbp), %rax	# gf, tmp155
	movl	48(%rax), %edx	# gf_13(D)->check.sum29, D.8222
	movq	-72(%rbp), %rax	# val, tmp156
	movl	(%rax), %esi	# *val_1, D.8222
	movl	-92(%rbp), %eax	# rank29, tmp157
	movl	%eax, %ecx	# tmp157, tmp191
	roll	%cl, %esi	# tmp191, D.8222
	movl	%esi, %eax	# D.8222, D.8222
	xorl	%eax, %edx	# D.8222, D.8222
	movq	-104(%rbp), %rax	# gf, tmp158
	movl	%edx, 48(%rax)	# D.8222, gf_13(D)->check.sum29
	.loc 1 2343 0
	movq	-104(%rbp), %rax	# gf, tmp159
	movl	44(%rax), %edx	# gf_13(D)->check.sum31, D.8222
	movq	-72(%rbp), %rax	# val, tmp160
	movl	(%rax), %esi	# *val_1, D.8222
	movl	-88(%rbp), %eax	# rank31, tmp161
	movl	%eax, %ecx	# tmp161, tmp193
	roll	%cl, %esi	# tmp193, D.8222
	movl	%esi, %eax	# D.8222, D.8222
	xorl	%eax, %edx	# D.8222, D.8222
	movq	-104(%rbp), %rax	# gf, tmp162
	movl	%edx, 44(%rax)	# D.8222, gf_13(D)->check.sum31
	.loc 1 2344 0
	addl	$1, -92(%rbp)	#, rank29
	cmpl	$28, -92(%rbp)	#, rank29
	jle	.L375	#,
	.loc 1 2344 0 is_stmt 0 discriminator 1
	movl	$0, -92(%rbp)	#, rank29
.L375:
	.loc 1 2345 0 is_stmt 1
	addl	$1, -88(%rbp)	#, rank31
	cmpl	$30, -88(%rbp)	#, rank31
	jle	.L376	#,
	.loc 1 2345 0 is_stmt 0 discriminator 1
	movl	$0, -88(%rbp)	#, rank31
.L376:
	.loc 1 2340 0 is_stmt 1
	addl	$1, -96(%rbp)	#, k
	addq	$4, -72(%rbp)	#, val
.L374:
	.loc 1 2339 0 discriminator 1
	cmpl	$143, -96(%rbp)	#, k
	jle	.L377	#,
	.loc 1 2348 0
	addl	$1, -84(%rbp)	#, buf_length
	.loc 1 2350 0
	cmpl	$4096, -84(%rbp)	#, buf_length
	je	.L378	#,
	.loc 1 2350 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.251
	subl	$1, %eax	#, D.8223
	cmpl	%ebx, %eax	# i, D.8223
	jne	.L379	#,
.L378:
	.loc 1 2354 0 is_stmt 1
	movq	stdout(%rip), %rax	# stdout, stdout.252
	movq	%rax, %rdi	# stdout.252,
	call	fflush	#
	.loc 1 2355 0
	movl	-84(%rbp), %eax	# buf_length, tmp163
	movslq	%eax, %rdx	# tmp163, D.8218
	movq	-64(%rbp), %rcx	# fp, tmp164
	movq	-56(%rbp), %rax	# lbuf, tmp165
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp165,
	call	g_write	#
	cmpl	-84(%rbp), %eax	# buf_length, D.8223
	je	.L380	#,
	.loc 1 2357 0
	movq	-104(%rbp), %rax	# gf, tmp166
	movq	16(%rax), %r12	# gf_13(D)->filename, D.8224
	.loc 1 2358 0
	call	__errno_location	#
	.loc 1 2357 0
	movl	(%rax), %ecx	# *_70, D.8223
	movl	this_node(%rip), %edx	# this_node, this_node.253
	leaq	-48(%rbp), %rax	#, tmp167
	movq	%r12, %r8	# D.8224,
	movq	%rax, %rsi	# tmp167,
	movl	$.LC111, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2359 0
	movq	stdout(%rip), %rax	# stdout, stdout.254
	movq	%rax, %rdi	# stdout.254,
	call	fflush	#
	.loc 1 2360 0
	movl	$1, %edi	#,
	call	terminate	#
.L380:
	.loc 1 2362 0
	movl	$0, -84(%rbp)	#, buf_length
.L379:
	.loc 1 2331 0
	addl	$1, %ebx	#, i
.L373:
	.loc 1 2331 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.255
	cmpl	%eax, %ebx	# sites_on_node.255, i
	jl	.L381	#,
	.loc 1 2367 0 is_stmt 1
	movq	-56(%rbp), %rax	# lbuf, tmp168
	movq	%rax, %rdi	# tmp168,
	call	free	#
	.loc 1 2371 0
	movq	-104(%rbp), %rax	# gf, tmp169
	addq	$48, %rax	#, D.8226
	movq	%rax, %rdi	# D.8226,
	call	g_xor32	#
	.loc 1 2372 0
	movq	-104(%rbp), %rax	# gf, tmp170
	addq	$44, %rax	#, D.8226
	movq	%rax, %rdi	# D.8226,
	call	g_xor32	#
	.loc 1 2379 0
	movl	this_node(%rip), %eax	# this_node, this_node.256
	testl	%eax, %eax	# this_node.256
	jne	.L372	#,
	.loc 1 2381 0
	movq	-80(%rbp), %rcx	# checksum_offset, checksum_offset.257
	movq	-64(%rbp), %rax	# fp, tmp171
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# checksum_offset.257,
	movq	%rax, %rdi	# tmp171,
	call	g_seek	#
	testl	%eax, %eax	# D.8223
	jns	.L383	#,
	.loc 1 2383 0
	movq	-104(%rbp), %rax	# gf, tmp172
	movq	16(%rax), %rbx	# gf_13(D)->filename, D.8224
	.loc 1 2384 0
	call	__errno_location	#
	.loc 1 2383 0
	movl	(%rax), %esi	# *_83, D.8223
	movq	-80(%rbp), %rcx	# checksum_offset, checksum_offset.258
	movl	this_node(%rip), %edx	# this_node, this_node.259
	leaq	-48(%rbp), %rax	#, tmp173
	movq	%rbx, %r9	# D.8224,
	movl	%esi, %r8d	# D.8223,
	movq	%rax, %rsi	# tmp173,
	movl	$.LC112, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2385 0
	movq	stdout(%rip), %rax	# stdout, stdout.260
	movq	%rax, %rdi	# stdout.260,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L383:
	.loc 1 2388 0
	movq	-104(%rbp), %rax	# gf, tmp174
	movq	%rax, %rsi	# tmp174,
	movl	$1, %edi	#,
	call	write_checksum	#
	.loc 1 2390 0
	movq	-104(%rbp), %rax	# gf, tmp175
	movq	16(%rax), %rax	# gf_13(D)->filename, D.8224
	movq	%rax, %rsi	# D.8224,
	movl	$.LC114, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2392 0
	movq	-104(%rbp), %rax	# gf, tmp176
	movq	8(%rax), %rax	# gf_13(D)->header, D.8227
	addq	$4, %rax	#, D.8228
	movq	%rax, %rsi	# D.8228,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L372:
	.loc 1 2395 0
	movq	-24(%rbp), %rax	# D.8229, tmp180
	xorq	%fs:40, %rax	#, tmp180
	je	.L384	#,
	call	__stack_chk_fail	#
.L384:
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	w_checkpoint, .-w_checkpoint
	.section	.rodata
	.align 8
.LC115:
	.string	"w_parallel_f: Attempting parallel close on serial file."
	.text
	.globl	w_parallel_f
	.type	w_parallel_f, @function
w_parallel_f:
.LFB46:
	.loc 1 2400 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gf, gf
	.loc 1 2403 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2404 0
	movq	-8(%rbp), %rax	# gf, tmp63
	movq	(%rax), %rax	# gf_1(D)->fp, D.8231
	testq	%rax, %rax	# D.8231
	je	.L386	#,
	.loc 1 2406 0
	movq	-8(%rbp), %rax	# gf, tmp64
	movl	40(%rax), %eax	# gf_1(D)->parallel, D.8232
	testl	%eax, %eax	# D.8232
	jne	.L387	#,
	.loc 1 2407 0
	movl	$.LC115, %edi	#,
	call	puts	#
.L387:
	.loc 1 2409 0
	movq	-8(%rbp), %rax	# gf, tmp65
	movq	(%rax), %rax	# gf_1(D)->fp, D.8231
	movq	%rax, %rdi	# D.8231,
	call	g_close	#
	.loc 1 2410 0
	movq	-8(%rbp), %rax	# gf, tmp66
	movq	$0, (%rax)	#, gf_1(D)->fp
.L386:
	.loc 1 2415 0
	movl	this_node(%rip), %eax	# this_node, this_node.261
	testl	%eax, %eax	# this_node.261
	jne	.L385	#,
	.loc 1 2415 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gf, tmp67
	movq	%rax, %rdi	# tmp67,
	call	write_gauge_info_file	#
.L385:
	.loc 1 2419 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	w_parallel_f, .-w_parallel_f
	.section	.rodata
	.align 8
.LC116:
	.string	"r_parallel_i: Node %d can't open file %s, error %d\n"
	.text
	.globl	r_parallel_i
	.type	r_parallel_i, @function
r_parallel_i:
.LFB47:
	.loc 1 2425 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# filename, filename
	.loc 1 2435 0
	movq	-40(%rbp), %rax	# filename, tmp68
	movq	%rax, %rdi	# tmp68,
	call	setup_input_gauge_file	#
	movq	%rax, -24(%rbp)	# tmp69, gf
	.loc 1 2436 0
	movq	-24(%rbp), %rax	# gf, tmp70
	movq	8(%rax), %rax	# gf_2->header, tmp71
	movq	%rax, -16(%rbp)	# tmp71, gh
	.loc 1 2438 0
	movq	-24(%rbp), %rax	# gf, tmp72
	movl	$1, 40(%rax)	#, gf_2->parallel
	.loc 1 2442 0
	movq	-40(%rbp), %rax	# filename, tmp73
	movl	$.LC90, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	g_open	#
	movq	%rax, -8(%rbp)	# tmp74, fp
	.loc 1 2443 0
	cmpq	$0, -8(%rbp)	#, fp
	jne	.L390	#,
	.loc 1 2446 0
	call	__errno_location	#
	.loc 1 2445 0
	movl	(%rax), %ecx	# *_5, D.8235
	movl	this_node(%rip), %eax	# this_node, this_node.262
	movq	-40(%rbp), %rdx	# filename, tmp75
	movl	%eax, %esi	# this_node.262,
	movl	$.LC116, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2446 0
	movq	stdout(%rip), %rax	# stdout, stdout.263
	movq	%rax, %rdi	# stdout.263,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L390:
	.loc 1 2449 0
	movq	-24(%rbp), %rax	# gf, tmp76
	movq	-8(%rbp), %rdx	# fp, tmp77
	movq	%rdx, (%rax)	# tmp77, gf_2->fp
	.loc 1 2453 0
	movl	this_node(%rip), %eax	# this_node, this_node.264
	testl	%eax, %eax	# this_node.264
	jne	.L391	#,
	.loc 1 2454 0
	movq	-24(%rbp), %rax	# gf, tmp78
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	read_gauge_hdr	#
	movl	%eax, -28(%rbp)	# byterevflag.265, byterevflag
.L391:
	.loc 1 2458 0
	leaq	-28(%rbp), %rax	#, tmp79
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	broadcast_bytes	#
	.loc 1 2460 0
	movl	-28(%rbp), %edx	# byterevflag, byterevflag.266
	movq	-24(%rbp), %rax	# gf, tmp80
	movl	%edx, 24(%rax)	# byterevflag.266, gf_2->byterevflag
	.loc 1 2464 0
	movq	-16(%rbp), %rax	# gh, tmp81
	movl	$92, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	broadcast_bytes	#
	.loc 1 2468 0
	movq	-24(%rbp), %rax	# gf, tmp82
	movq	%rax, %rsi	# tmp82,
	movl	$1, %edi	#,
	call	read_site_list	#
	.loc 1 2470 0
	movq	-24(%rbp), %rax	# gf, D.8236
	.loc 1 2472 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	r_parallel_i, .-r_parallel_i
	.section	.rodata
	.align 8
.LC117:
	.string	"%s: Attempting parallel read from serial file.\n"
	.align 8
.LC118:
	.string	"BOTCH. Node %d received %d %d %d %d\n"
	.align 8
.LC119:
	.string	"Restored binary gauge configuration in parallel from file %s\n"
	.align 8
.LC120:
	.string	"%s: Node 0 g_seek %ld for checksum failed error %d file %s\n"
	.text
	.globl	r_parallel
	.type	r_parallel, @function
r_parallel:
.LFB48:
	.loc 1 2478 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$808, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -808(%rbp)	# gf, gf
	.loc 1 2478 0
	movq	%fs:40, %rax	#, tmp358
	movq	%rax, -24(%rbp)	# tmp358, D.8250
	xorl	%eax, %eax	# tmp358
	.loc 1 2507 0
	movabsq	$7812726597469888370, %rax	#, tmp362
	movq	%rax, -48(%rbp)	# tmp362, myname
	movw	$27749, -40(%rbp)	#, myname
	movb	$0, -38(%rbp)	#, myname
	.loc 1 2509 0
	movq	-808(%rbp), %rax	# gf, tmp198
	movq	(%rax), %rax	# gf_32(D)->fp, tmp199
	movq	%rax, -704(%rbp)	# tmp199, fp
	.loc 1 2510 0
	movq	-808(%rbp), %rax	# gf, tmp200
	movq	8(%rax), %rax	# gf_32(D)->header, tmp201
	movq	%rax, -696(%rbp)	# tmp201, gh
	.loc 1 2512 0
	movq	-808(%rbp), %rax	# gf, tmp202
	movq	16(%rax), %rax	# gf_32(D)->filename, tmp203
	movq	%rax, -688(%rbp)	# tmp203, filename
	.loc 1 2513 0
	movq	-808(%rbp), %rax	# gf, tmp204
	movl	24(%rax), %eax	# gf_32(D)->byterevflag, tmp205
	movl	%eax, -768(%rbp)	# tmp205, byterevflag
	.loc 1 2515 0
	movq	-808(%rbp), %rax	# gf, tmp206
	movl	40(%rax), %eax	# gf_32(D)->parallel, D.8238
	testl	%eax, %eax	# D.8238
	jne	.L394	#,
	.loc 1 2516 0
	leaq	-48(%rbp), %rax	#, tmp207
	movq	%rax, %rsi	# tmp207,
	movl	$.LC117, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L394:
	.loc 1 2519 0
	movl	$144, %esi	#,
	movl	$16384, %edi	#,
	call	calloc	#
	movq	%rax, -680(%rbp)	# tmp208, lbuf
	.loc 1 2520 0
	cmpq	$0, -680(%rbp)	#, lbuf
	jne	.L395	#,
	.loc 1 2522 0
	movl	this_node(%rip), %edx	# this_node, this_node.267
	leaq	-48(%rbp), %rax	#, tmp209
	movq	%rax, %rsi	# tmp209,
	movl	$.LC93, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2523 0
	movq	stdout(%rip), %rax	# stdout, stdout.268
	movq	%rax, %rdi	# stdout.268,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L395:
	.loc 1 2526 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.269
	movslq	%eax, %rdx	# sites_on_node.269, D.8239
	movq	%rdx, %rax	# D.8239, tmp210
	salq	$3, %rax	#, tmp210
	addq	%rdx, %rax	# D.8239, tmp210
	salq	$6, %rax	#, tmp211
	movq	%rax, -672(%rbp)	# D.8239, gauge_node_size
	.loc 1 2530 0
	movq	-696(%rbp), %rax	# gh, tmp212
	movl	(%rax), %eax	# gh_34->magic_number, D.8238
	cmpl	$20103, %eax	#, D.8238
	jne	.L396	#,
	.loc 1 2531 0
	movq	$8, -720(%rbp)	#, gauge_check_size
	jmp	.L397	#
.L396:
	.loc 1 2533 0
	movq	-696(%rbp), %rax	# gh, tmp213
	movl	(%rax), %eax	# gh_34->magic_number, D.8238
	cmpl	$53546, %eax	#, D.8238
	jne	.L398	#,
	.loc 1 2534 0
	movq	$4, -720(%rbp)	#, gauge_check_size
	jmp	.L397	#
.L398:
	.loc 1 2536 0
	movq	$0, -720(%rbp)	#, gauge_check_size
.L397:
	.loc 1 2538 0
	movq	-808(%rbp), %rax	# gf, tmp214
	movq	8(%rax), %rax	# gf_32(D)->header, D.8240
	movl	88(%rax), %eax	# _50->order, D.8238
	testl	%eax, %eax	# D.8238
	jne	.L399	#,
	.loc 1 2538 0 is_stmt 0 discriminator 1
	movq	$0, -712(%rbp)	#, coord_list_size
	jmp	.L400	#
.L399:
	.loc 1 2539 0 is_stmt 1
	movl	volume(%rip), %eax	# volume, volume.270
	cltq
	salq	$2, %rax	#, D.8239
	movq	%rax, -712(%rbp)	# D.8239, coord_list_size
.L400:
	.loc 1 2540 0
	movq	-808(%rbp), %rax	# gf, tmp215
	movq	8(%rax), %rax	# gf_32(D)->header, D.8240
	movl	84(%rax), %eax	# _57->header_bytes, D.8238
	movslq	%eax, %rdx	# D.8238, D.8241
	movq	-712(%rbp), %rax	# coord_list_size, tmp219
	addq	%rdx, %rax	# D.8241, tmp218
	movq	%rax, -664(%rbp)	# tmp218, checksum_offset
	.loc 1 2541 0
	movq	-720(%rbp), %rax	# gauge_check_size, tmp224
	movq	-664(%rbp), %rdx	# checksum_offset, tmp225
	addq	%rdx, %rax	# tmp225, tmp223
	movq	%rax, -656(%rbp)	# tmp223, head_size
	.loc 1 2543 0
	movq	-656(%rbp), %rax	# head_size, tmp226
	movq	%rax, -648(%rbp)	# tmp226, offset
	.loc 1 2548 0
	movl	this_node(%rip), %eax	# this_node, this_node.271
	cltq
	imulq	-672(%rbp), %rax	# gauge_node_size, D.8241
	addq	%rax, -648(%rbp)	# D.8241, offset
	.loc 1 2550 0
	movq	-648(%rbp), %rcx	# offset, tmp227
	movq	-704(%rbp), %rax	# fp, tmp228
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp227,
	movq	%rax, %rdi	# tmp228,
	call	g_seek	#
	testl	%eax, %eax	# D.8238
	jns	.L401	#,
	.loc 1 2553 0
	call	__errno_location	#
	.loc 1 2552 0
	movl	(%rax), %esi	# *_68, D.8238
	movl	this_node(%rip), %edx	# this_node, this_node.272
	movq	-688(%rbp), %rdi	# filename, tmp229
	movq	-648(%rbp), %rcx	# offset, tmp230
	leaq	-48(%rbp), %rax	#, tmp231
	movq	%rdi, %r9	# tmp229,
	movl	%esi, %r8d	# D.8238,
	movq	%rax, %rsi	# tmp231,
	movl	$.LC108, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2554 0
	movq	stdout(%rip), %rax	# stdout, stdout.273
	movq	%rax, %rdi	# stdout.273,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L401:
	.loc 1 2558 0
	movl	$0, -732(%rbp)	#, test_gc.sum29
	.loc 1 2559 0
	movl	$0, -736(%rbp)	#, test_gc.sum31
	.loc 1 2562 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.274
	movslq	%eax, %rdx	# sites_on_node.274, D.8239
	movl	this_node(%rip), %eax	# this_node, this_node.275
	cltq
	imulq	%rax, %rdx	# D.8239, D.8239
	movq	%rdx, %rax	# D.8239, tmp232
	salq	$3, %rax	#, tmp232
	addq	%rdx, %rax	# D.8239, tmp232
	salq	$4, %rax	#, tmp233
	movq	%rax, %rcx	# tmp232, D.8239
	movabsq	$1908283869694091547, %rdx	#, tmp235
	movq	%rcx, %rax	# D.8239, tmp359
	mulq	%rdx	# tmp235
	movq	%rcx, %rax	# D.8239, tmp236
	subq	%rdx, %rax	# tmp234, tmp236
	shrq	%rax	# tmp237
	addq	%rdx, %rax	# tmp234, tmp238
	shrq	$4, %rax	#, D.8239
	movq	%rax, %rdx	# D.8239, D.8239
	movq	%rdx, %rax	# D.8239, tmp239
	salq	$3, %rax	#, tmp240
	subq	%rdx, %rax	# D.8239, tmp239
	salq	$2, %rax	#, tmp239
	addq	%rdx, %rax	# D.8239, tmp239
	subq	%rax, %rcx	# tmp239, D.8239
	movq	%rcx, %rdx	# D.8239, D.8239
	movl	%edx, -792(%rbp)	# D.8239, rank29
	.loc 1 2563 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.276
	movslq	%eax, %rdx	# sites_on_node.276, D.8239
	movl	this_node(%rip), %eax	# this_node, this_node.277
	cltq
	imulq	%rax, %rdx	# D.8239, D.8239
	movq	%rdx, %rax	# D.8239, tmp241
	salq	$3, %rax	#, tmp241
	addq	%rdx, %rax	# D.8239, tmp241
	salq	$4, %rax	#, tmp242
	movq	%rax, %rcx	# tmp241, D.8239
	movabsq	$595056260442243601, %rdx	#, tmp244
	movq	%rcx, %rax	# D.8239, tmp360
	mulq	%rdx	# tmp244
	movq	%rcx, %rax	# D.8239, tmp245
	subq	%rdx, %rax	# tmp243, tmp245
	shrq	%rax	# tmp246
	addq	%rdx, %rax	# tmp243, tmp247
	shrq	$4, %rax	#, D.8239
	movq	%rax, %rdx	# D.8239, D.8239
	movq	%rdx, %rax	# D.8239, tmp248
	salq	$5, %rax	#, tmp249
	subq	%rdx, %rax	# D.8239, tmp248
	subq	%rax, %rcx	# tmp248, D.8239
	movq	%rcx, %rdx	# D.8239, D.8239
	movl	%edx, -788(%rbp)	# D.8239, rank31
	.loc 1 2567 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2568 0
	movl	$0, -800(%rbp)	#, buf_length
	.loc 1 2569 0
	movl	$0, -796(%rbp)	#, where_in_buf
	.loc 1 2578 0
	movl	$4, -764(%rbp)	#, site_block
	.loc 1 2579 0
	movl	$0, -776(%rbp)	#, ksite
	jmp	.L402	#
.L423:
	.loc 1 2581 0
	movl	$0, -784(%rbp)	#, sendnode
	jmp	.L403	#
.L422:
	.loc 1 2582 0
	movl	-776(%rbp), %eax	# ksite, tmp250
	movl	%eax, -780(%rbp)	# tmp250, isite
	jmp	.L404	#
.L421:
	.loc 1 2597 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.278
	imull	-784(%rbp), %eax	# sendnode, D.8238
	movl	%eax, %edx	# D.8238, D.8238
	movl	-780(%rbp), %eax	# isite, tmp254
	addl	%edx, %eax	# D.8238, tmp253
	movl	%eax, -760(%rbp)	# tmp253, rcv_rank
	.loc 1 2602 0
	movq	-808(%rbp), %rax	# gf, tmp255
	movq	8(%rax), %rax	# gf_32(D)->header, D.8240
	movl	88(%rax), %eax	# _101->order, D.8238
	testl	%eax, %eax	# D.8238
	jne	.L405	#,
	.loc 1 2603 0
	movl	-760(%rbp), %eax	# rcv_rank, tmp256
	movl	%eax, -772(%rbp)	# tmp256, rcv_coords
	jmp	.L406	#
.L405:
	.loc 1 2605 0
	movq	-808(%rbp), %rax	# gf, tmp257
	movq	32(%rax), %rax	# gf_32(D)->rank2rcv, D.8243
	movl	-760(%rbp), %edx	# rcv_rank, tmp258
	movslq	%edx, %rdx	# tmp258, D.8239
	salq	$2, %rdx	#, D.8239
	addq	%rdx, %rax	# D.8239, D.8243
	movl	(%rax), %eax	# *_107, tmp259
	movl	%eax, -772(%rbp)	# tmp259, rcv_coords
.L406:
	.loc 1 2607 0
	movl	nx(%rip), %ecx	# nx, nx.279
	movl	-772(%rbp), %eax	# rcv_coords, tmp261
	cltd
	idivl	%ecx	# nx.279
	movl	%edx, -756(%rbp)	# tmp262, x
	movl	nx(%rip), %ebx	# nx, nx.280
	movl	-772(%rbp), %eax	# rcv_coords, tmp266
	cltd
	idivl	%ebx	# nx.280
	movl	%eax, -772(%rbp)	# tmp264, rcv_coords
	.loc 1 2608 0
	movl	ny(%rip), %ecx	# ny, ny.281
	movl	-772(%rbp), %eax	# rcv_coords, tmp268
	cltd
	idivl	%ecx	# ny.281
	movl	%edx, -752(%rbp)	# tmp269, y
	movl	ny(%rip), %ebx	# ny, ny.282
	movl	-772(%rbp), %eax	# rcv_coords, tmp273
	cltd
	idivl	%ebx	# ny.282
	movl	%eax, -772(%rbp)	# tmp271, rcv_coords
	.loc 1 2609 0
	movl	nz(%rip), %ecx	# nz, nz.283
	movl	-772(%rbp), %eax	# rcv_coords, tmp275
	cltd
	idivl	%ecx	# nz.283
	movl	%edx, -748(%rbp)	# tmp276, z
	movl	nz(%rip), %ebx	# nz, nz.284
	movl	-772(%rbp), %eax	# rcv_coords, tmp280
	cltd
	idivl	%ebx	# nz.284
	movl	%eax, -772(%rbp)	# tmp278, rcv_coords
	.loc 1 2610 0
	movl	nt(%rip), %ecx	# nt, nt.285
	movl	-772(%rbp), %eax	# rcv_coords, tmp282
	cltd
	idivl	%ecx	# nt.285
	movl	%edx, -744(%rbp)	# tmp283, t
	.loc 1 2614 0
	movl	-744(%rbp), %ecx	# t, tmp285
	movl	-748(%rbp), %edx	# z, tmp286
	movl	-752(%rbp), %esi	# y, tmp287
	movl	-756(%rbp), %eax	# x, tmp288
	movl	%eax, %edi	# tmp288,
	call	node_number	#
	movl	%eax, -740(%rbp)	# tmp289, destnode
	.loc 1 2617 0
	movl	this_node(%rip), %eax	# this_node, this_node.286
	cmpl	-784(%rbp), %eax	# sendnode, this_node.286
	jne	.L407	#,
	.loc 1 2619 0
	movl	-796(%rbp), %eax	# where_in_buf, tmp290
	cmpl	-800(%rbp), %eax	# buf_length, tmp290
	jne	.L408	#,
	.loc 1 2625 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.287
	subl	-780(%rbp), %eax	# isite, tmp292
	movl	%eax, -800(%rbp)	# tmp292, buf_length
	.loc 1 2626 0
	cmpl	$4096, -800(%rbp)	#, buf_length
	jle	.L409	#,
	.loc 1 2626 0 is_stmt 0 discriminator 1
	movl	$4096, -800(%rbp)	#, buf_length
.L409:
	.loc 1 2630 0 is_stmt 1
	movl	-800(%rbp), %eax	# buf_length, tmp293
	movslq	%eax, %rdx	# tmp293, D.8239
	movq	%rdx, %rax	# D.8239, tmp294
	salq	$3, %rax	#, tmp294
	addq	%rdx, %rax	# D.8239, tmp294
	salq	$6, %rax	#, tmp295
	movq	%rax, %rsi	# tmp294, D.8239
	movq	-704(%rbp), %rdx	# fp, tmp296
	movq	-680(%rbp), %rax	# lbuf, tmp297
	movq	%rdx, %rcx	# tmp296,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp297,
	call	g_read	#
	cmpq	$1, %rax	#, D.8239
	je	.L410	#,
	.loc 1 2633 0
	call	__errno_location	#
	.loc 1 2632 0
	movl	(%rax), %ecx	# *_131, D.8238
	movl	this_node(%rip), %edx	# this_node, this_node.288
	movq	-688(%rbp), %rsi	# filename, tmp298
	leaq	-48(%rbp), %rax	#, tmp299
	movq	%rsi, %r8	# tmp298,
	movq	%rax, %rsi	# tmp299,
	movl	$.LC95, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2634 0
	movq	stdout(%rip), %rax	# stdout, stdout.289
	movq	%rax, %rdi	# stdout.289,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L410:
	.loc 1 2636 0
	movl	$0, -796(%rbp)	#, where_in_buf
.L408:
	.loc 1 2640 0
	movq	-808(%rbp), %rax	# gf, tmp300
	movl	24(%rax), %eax	# gf_32(D)->byterevflag, D.8238
	cmpl	$1, %eax	#, D.8238
	jne	.L411	#,
	.loc 1 2641 0
	movl	-796(%rbp), %eax	# where_in_buf, tmp301
	movslq	%eax, %rdx	# tmp301, D.8239
	movq	%rdx, %rax	# D.8239, tmp302
	salq	$3, %rax	#, tmp302
	addq	%rdx, %rax	# D.8239, tmp302
	salq	$6, %rax	#, tmp303
	movq	%rax, %rdx	# tmp302, D.8239
	movq	-680(%rbp), %rax	# lbuf, tmp304
	addq	%rdx, %rax	# D.8239, D.8243
	movl	$144, %esi	#,
	movq	%rax, %rdi	# D.8243,
	call	byterevn	#
.L411:
	.loc 1 2645 0
	movl	$0, %ebx	#, k
	movl	-796(%rbp), %eax	# where_in_buf, tmp305
	movslq	%eax, %rdx	# tmp305, D.8239
	movq	%rdx, %rax	# D.8239, tmp306
	salq	$3, %rax	#, tmp306
	addq	%rdx, %rax	# D.8239, tmp306
	salq	$6, %rax	#, tmp307
	movq	%rax, %rdx	# tmp306, D.8239
	movq	-680(%rbp), %rax	# lbuf, tmp311
	addq	%rdx, %rax	# D.8239, tmp310
	movq	%rax, -728(%rbp)	# tmp310, val
	jmp	.L412	#
.L415:
	.loc 1 2648 0
	movl	-732(%rbp), %edx	# test_gc.sum29, D.8244
	movq	-728(%rbp), %rax	# val, tmp312
	movl	(%rax), %esi	# *val_12, D.8244
	movl	-792(%rbp), %eax	# rank29, tmp313
	movl	%eax, %ecx	# tmp313, tmp376
	roll	%cl, %esi	# tmp376, D.8244
	movl	%esi, %eax	# D.8244, D.8244
	xorl	%edx, %eax	# D.8244, D.8244
	movl	%eax, -732(%rbp)	# D.8244, test_gc.sum29
	.loc 1 2649 0
	movl	-736(%rbp), %edx	# test_gc.sum31, D.8244
	movq	-728(%rbp), %rax	# val, tmp314
	movl	(%rax), %esi	# *val_12, D.8244
	movl	-788(%rbp), %eax	# rank31, tmp315
	movl	%eax, %ecx	# tmp315, tmp378
	roll	%cl, %esi	# tmp378, D.8244
	movl	%esi, %eax	# D.8244, D.8244
	xorl	%edx, %eax	# D.8244, D.8244
	movl	%eax, -736(%rbp)	# D.8244, test_gc.sum31
	.loc 1 2650 0
	addl	$1, -792(%rbp)	#, rank29
	cmpl	$28, -792(%rbp)	#, rank29
	jle	.L413	#,
	.loc 1 2650 0 is_stmt 0 discriminator 1
	movl	$0, -792(%rbp)	#, rank29
.L413:
	.loc 1 2651 0 is_stmt 1
	addl	$1, -788(%rbp)	#, rank31
	cmpl	$30, -788(%rbp)	#, rank31
	jle	.L414	#,
	.loc 1 2651 0 is_stmt 0 discriminator 1
	movl	$0, -788(%rbp)	#, rank31
.L414:
	.loc 1 2646 0 is_stmt 1
	addl	$1, %ebx	#, k
	addq	$4, -728(%rbp)	#, val
.L412:
	.loc 1 2645 0 discriminator 1
	cmpl	$143, %ebx	#, k
	jle	.L415	#,
	.loc 1 2654 0
	movl	-740(%rbp), %eax	# destnode, tmp316
	cmpl	-784(%rbp), %eax	# sendnode, tmp316
	jne	.L416	#,
	.loc 1 2655 0
	movl	-744(%rbp), %ecx	# t, tmp317
	movl	-748(%rbp), %edx	# z, tmp318
	movl	-752(%rbp), %esi	# y, tmp319
	movl	-756(%rbp), %eax	# x, tmp320
	movl	%eax, %edi	# tmp320,
	call	node_index	#
	movl	%eax, %ebx	#, i
	.loc 1 2656 0
	movl	-796(%rbp), %eax	# where_in_buf, tmp321
	movslq	%eax, %rdx	# tmp321, D.8239
	.loc 1 2657 0
	movq	%rdx, %rax	# D.8239, tmp322
	salq	$3, %rax	#, tmp322
	addq	%rdx, %rax	# D.8239, tmp322
	salq	$6, %rax	#, tmp323
	movq	%rax, %rdx	# tmp322, D.8239
	movq	-680(%rbp), %rax	# lbuf, tmp324
	leaq	(%rdx,%rax), %rcx	#, D.8245
	.loc 1 2656 0
	movq	lattice(%rip), %rax	# lattice, lattice.290
	movslq	%ebx, %rdx	# i, D.8239
	salq	$11, %rdx	#, D.8239
	addq	%rdx, %rax	# D.8239, D.8246
	addq	$112, %rax	#, D.8247
	movl	$576, %edx	#,
	movq	%rcx, %rsi	# D.8245,
	movq	%rax, %rdi	# D.8247,
	call	memcpy	#
	jmp	.L417	#
.L416:
	.loc 1 2661 0
	movl	-756(%rbp), %eax	# x, tmp325
	movw	%ax, -640(%rbp)	# D.8248, msg.x
	movl	-752(%rbp), %eax	# y, tmp326
	movw	%ax, -638(%rbp)	# D.8248, msg.y
	movl	-748(%rbp), %eax	# z, tmp327
	movw	%ax, -636(%rbp)	# D.8248, msg.z
	movl	-744(%rbp), %eax	# t, tmp328
	movw	%ax, -634(%rbp)	# D.8248, msg.t
	.loc 1 2662 0
	movl	-796(%rbp), %eax	# where_in_buf, tmp329
	movslq	%eax, %rdx	# tmp329, D.8239
	.loc 1 2663 0
	movq	%rdx, %rax	# D.8239, tmp330
	salq	$3, %rax	#, tmp330
	addq	%rdx, %rax	# D.8239, tmp330
	salq	$6, %rax	#, tmp331
	movq	%rax, %rdx	# tmp330, D.8239
	movq	-680(%rbp), %rax	# lbuf, tmp332
	addq	%rdx, %rax	# D.8239, D.8245
	.loc 1 2662 0
	leaq	-632(%rbp), %rdx	#, tmp333
	movq	%rax, %rsi	# D.8245, tmp334
	movl	$72, %eax	#, tmp335
	movq	%rdx, %rdi	# tmp333, tmp333
	movq	%rax, %rcx	# tmp335, tmp335
	rep movsq
	.loc 1 2665 0
	movl	-740(%rbp), %edx	# destnode, tmp336
	leaq	-640(%rbp), %rax	#, tmp337
	movl	$584, %esi	#,
	movq	%rax, %rdi	# tmp337,
	call	send_field	#
.L417:
	.loc 1 2667 0 discriminator 1
	addl	$1, -796(%rbp)	#, where_in_buf
	jmp	.L418	#
.L407:
	.loc 1 2671 0
	movl	this_node(%rip), %eax	# this_node, this_node.291
	cmpl	-740(%rbp), %eax	# destnode, this_node.291
	jne	.L418	#,
	.loc 1 2672 0
	leaq	-640(%rbp), %rax	#, tmp338
	movl	$584, %esi	#,
	movq	%rax, %rdi	# tmp338,
	call	get_field	#
	.loc 1 2673 0
	movzwl	-634(%rbp), %eax	# msg.t, D.8248
	movswl	%ax, %ecx	# D.8248, D.8238
	movzwl	-636(%rbp), %eax	# msg.z, D.8248
	movswl	%ax, %edx	# D.8248, D.8238
	movzwl	-638(%rbp), %eax	# msg.y, D.8248
	movswl	%ax, %esi	# D.8248, D.8238
	movzwl	-640(%rbp), %eax	# msg.x, D.8248
	cwtl
	movl	%eax, %edi	# D.8238,
	call	node_index	#
	movl	%eax, %ebx	#, i
	.loc 1 2674 0
	movzwl	-634(%rbp), %eax	# msg.t, D.8248
	movswl	%ax, %ecx	# D.8248, D.8238
	movzwl	-636(%rbp), %eax	# msg.z, D.8248
	movswl	%ax, %edx	# D.8248, D.8238
	movzwl	-638(%rbp), %eax	# msg.y, D.8248
	movswl	%ax, %esi	# D.8248, D.8238
	movzwl	-640(%rbp), %eax	# msg.x, D.8248
	cwtl
	movl	%eax, %edi	# D.8238,
	call	node_number	#
	movl	this_node(%rip), %edx	# this_node, this_node.292
	cmpl	%edx, %eax	# this_node.292, D.8238
	je	.L419	#,
	.loc 1 2677 0
	movzwl	-634(%rbp), %eax	# msg.t, D.8248
	.loc 1 2676 0
	movswl	%ax, %edi	# D.8248, D.8238
	.loc 1 2677 0
	movzwl	-636(%rbp), %eax	# msg.z, D.8248
	.loc 1 2676 0
	movswl	%ax, %esi	# D.8248, D.8238
	.loc 1 2677 0
	movzwl	-638(%rbp), %eax	# msg.y, D.8248
	.loc 1 2676 0
	movswl	%ax, %ecx	# D.8248, D.8238
	.loc 1 2677 0
	movzwl	-640(%rbp), %eax	# msg.x, D.8248
	.loc 1 2676 0
	movswl	%ax, %edx	# D.8248, D.8238
	movl	this_node(%rip), %eax	# this_node, this_node.293
	movl	%edi, %r9d	# D.8238,
	movl	%esi, %r8d	# D.8238,
	movl	%eax, %esi	# this_node.293,
	movl	$.LC118, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2678 0
	movq	stdout(%rip), %rax	# stdout, stdout.294
	movq	%rax, %rdi	# stdout.294,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L419:
	.loc 1 2680 0
	movq	lattice(%rip), %rax	# lattice, lattice.295
	movslq	%ebx, %rdx	# i, D.8239
	salq	$11, %rdx	#, D.8239
	addq	%rdx, %rax	# D.8239, D.8246
	addq	$112, %rax	#, D.8247
	leaq	-640(%rbp), %rdx	#, tmp339
	leaq	8(%rdx), %rcx	#, tmp340
	movl	$576, %edx	#,
	movq	%rcx, %rsi	# tmp340,
	movq	%rax, %rdi	# D.8247,
	call	memcpy	#
.L418:
	.loc 1 2583 0
	addl	$1, -780(%rbp)	#, isite
.L404:
	.loc 1 2583 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.296
	.loc 1 2582 0 is_stmt 1 discriminator 1
	cmpl	%eax, -780(%rbp)	# sites_on_node.296, isite
	jge	.L420	#,
	.loc 1 2583 0
	movl	-764(%rbp), %eax	# site_block, tmp341
	movl	-776(%rbp), %edx	# ksite, tmp342
	addl	%edx, %eax	# tmp342, D.8238
	cmpl	-780(%rbp), %eax	# isite, D.8238
	jg	.L421	#,
.L420:
	.loc 1 2581 0
	addl	$1, -784(%rbp)	#, sendnode
.L403:
	.loc 1 2581 0 is_stmt 0 discriminator 1
	movl	number_of_nodes(%rip), %eax	# number_of_nodes, number_of_nodes.297
	cmpl	%eax, -784(%rbp)	# number_of_nodes.297, sendnode
	jl	.L422	#,
	.loc 1 2686 0 is_stmt 1
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2579 0
	movl	-764(%rbp), %eax	# site_block, tmp343
	addl	%eax, -776(%rbp)	# tmp343, ksite
.L402:
	.loc 1 2579 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.298
	cmpl	%eax, -776(%rbp)	# sites_on_node.298, ksite
	jl	.L423	#,
	.loc 1 2689 0 is_stmt 1
	movq	-680(%rbp), %rax	# lbuf, tmp344
	movq	%rax, %rdi	# tmp344,
	call	free	#
	.loc 1 2692 0
	leaq	-736(%rbp), %rax	#, tmp345
	addq	$4, %rax	#, tmp346
	movq	%rax, %rdi	# tmp346,
	call	g_xor32	#
	.loc 1 2693 0
	leaq	-736(%rbp), %rax	#, tmp347
	movq	%rax, %rdi	# tmp347,
	call	g_xor32	#
	.loc 1 2697 0
	movl	this_node(%rip), %eax	# this_node, this_node.299
	testl	%eax, %eax	# this_node.299
	jne	.L393	#,
	.loc 1 2701 0
	movq	-688(%rbp), %rax	# filename, tmp348
	movq	%rax, %rsi	# tmp348,
	movl	$.LC119, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2703 0
	movq	-696(%rbp), %rax	# gh, tmp349
	movl	(%rax), %eax	# gh_34->magic_number, D.8238
	cmpl	$20103, %eax	#, D.8238
	jne	.L425	#,
	.loc 1 2705 0
	movq	-696(%rbp), %rax	# gh, tmp350
	addq	$4, %rax	#, D.8249
	movq	%rax, %rsi	# D.8249,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2706 0
	movq	-664(%rbp), %rcx	# checksum_offset, tmp351
	movq	-704(%rbp), %rax	# fp, tmp352
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp351,
	movq	%rax, %rdi	# tmp352,
	call	g_seek	#
	testl	%eax, %eax	# D.8238
	jns	.L426	#,
	.loc 1 2709 0
	call	__errno_location	#
	.loc 1 2708 0
	movl	(%rax), %ecx	# *_217, D.8238
	movq	-688(%rbp), %rsi	# filename, tmp353
	movq	-648(%rbp), %rdx	# offset, tmp354
	leaq	-48(%rbp), %rax	#, tmp355
	movq	%rsi, %r8	# tmp353,
	movq	%rax, %rsi	# tmp355,
	movl	$.LC120, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2710 0
	movq	stdout(%rip), %rax	# stdout, stdout.300
	movq	%rax, %rdi	# stdout.300,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L426:
	.loc 1 2713 0
	leaq	-736(%rbp), %rdx	#, tmp356
	movq	-808(%rbp), %rax	# gf, tmp357
	movq	%rax, %rsi	# tmp357,
	movl	$1, %edi	#,
	call	read_checksum	#
.L425:
	.loc 1 2715 0
	movq	stdout(%rip), %rax	# stdout, stdout.301
	movq	%rax, %rdi	# stdout.301,
	call	fflush	#
.L393:
	.loc 1 2718 0
	movq	-24(%rbp), %rax	# D.8250, tmp361
	xorq	%fs:40, %rax	#, tmp361
	je	.L427	#,
	call	__stack_chk_fail	#
.L427:
	addq	$808, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	r_parallel, .-r_parallel
	.section	.rodata
	.align 8
.LC121:
	.string	"r_parallel_f: Attempting parallel close on serial file."
	.text
	.globl	r_parallel_f
	.type	r_parallel_f, @function
r_parallel_f:
.LFB49:
	.loc 1 2723 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gf, gf
	.loc 1 2726 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2727 0
	movq	-8(%rbp), %rax	# gf, tmp62
	movq	(%rax), %rax	# gf_1(D)->fp, D.8255
	testq	%rax, %rax	# D.8255
	je	.L428	#,
	.loc 1 2729 0
	movq	-8(%rbp), %rax	# gf, tmp63
	movl	40(%rax), %eax	# gf_1(D)->parallel, D.8256
	testl	%eax, %eax	# D.8256
	jne	.L430	#,
	.loc 1 2730 0
	movl	$.LC121, %edi	#,
	call	puts	#
.L430:
	.loc 1 2731 0
	movq	-8(%rbp), %rax	# gf, tmp64
	movq	(%rax), %rax	# gf_1(D)->fp, D.8255
	movq	%rax, %rdi	# D.8255,
	call	g_close	#
	.loc 1 2732 0
	movq	-8(%rbp), %rax	# gf, tmp65
	movq	$0, (%rax)	#, gf_1(D)->fp
.L428:
	.loc 1 2737 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	r_parallel_f, .-r_parallel_f
	.section	.rodata
.LC122:
	.string	"r"
.LC123:
	.string	"Can't open file %s, error %d\n"
	.align 8
.LC124:
	.string	"restore_ascii: Error reading version number"
	.align 8
.LC125:
	.string	"restore_ascii: Incorrect version number in lattice header"
.LC126:
	.string	"  read %d but expected %d\n"
.LC127:
	.string	"%*[ \f\n\r\t\013]%*[\"]%[^\"]%*[\"]"
	.align 8
.LC128:
	.string	"restore_ascii: Error reading time stamp"
.LC129:
	.string	"count %d time_stamp %s\n"
.LC130:
	.string	"%d%d%d%d"
	.align 8
.LC131:
	.string	"restore_ascii: Error in reading dimensions"
	.align 8
.LC132:
	.string	"restore_ascii: Incorrect lattice size %d,%d,%d,%d\n"
.LC133:
	.string	"%lf%lf\n"
	.align 8
.LC134:
	.string	"restore_ascii: gauge link read error"
	.align 8
.LC135:
	.string	"Restored gauge configuration from ascii file  %s\n"
	.text
	.globl	restore_ascii
	.type	restore_ascii, @function
restore_ascii:
.LFB50:
	.loc 1 2757 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$656, %rsp	#,
	movq	%rdi, -648(%rbp)	# filename, filename
	.loc 1 2767 0
	movq	-648(%rbp), %rax	# filename, tmp146
	movq	%rax, %rdi	# tmp146,
	call	setup_input_gauge_file	#
	movq	%rax, -592(%rbp)	# tmp147, gf
	.loc 1 2768 0
	movq	-592(%rbp), %rax	# gf, tmp148
	movq	8(%rax), %rax	# gf_8->header, tmp149
	movq	%rax, -584(%rbp)	# tmp149, gh
	.loc 1 2771 0
	movq	-592(%rbp), %rax	# gf, tmp150
	movl	$0, 40(%rax)	#, gf_8->parallel
	.loc 1 2775 0
	movl	this_node(%rip), %eax	# this_node, this_node.302
	testl	%eax, %eax	# this_node.302
	jne	.L432	#,
	.loc 1 2776 0
	movq	-648(%rbp), %rax	# filename, tmp151
	movl	$.LC122, %esi	#,
	movq	%rax, %rdi	# tmp151,
	call	fopen	#
	movq	%rax, -600(%rbp)	# tmp152, fp
	.loc 1 2777 0
	cmpq	$0, -600(%rbp)	#, fp
	jne	.L433	#,
	.loc 1 2778 0
	call	__errno_location	#
	movl	(%rax), %edx	# *_12, D.8259
	movq	-648(%rbp), %rax	# filename, tmp153
	movq	%rax, %rsi	# tmp153,
	movl	$.LC123, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2779 0
	movl	$1, %edi	#,
	call	terminate	#
.L433:
	.loc 1 2782 0
	movq	-592(%rbp), %rax	# gf, tmp154
	movq	-600(%rbp), %rdx	# fp, tmp155
	movq	%rdx, (%rax)	# tmp155, gf_8->fp
	.loc 1 2784 0
	leaq	-636(%rbp), %rdx	#, tmp156
	movq	-600(%rbp), %rax	# fp, tmp157
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp157,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.8259
	je	.L434	#,
	.loc 1 2785 0
	movl	$.LC124, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	terminate	#
.L434:
	.loc 1 2787 0
	movl	-636(%rbp), %edx	# version_number, version_number.303
	movq	-584(%rbp), %rax	# gh, tmp158
	movl	%edx, (%rax)	# version_number.303, gh_9->magic_number
	.loc 1 2788 0
	movq	-584(%rbp), %rax	# gh, tmp159
	movl	(%rax), %eax	# gh_9->magic_number, D.8259
	cmpl	$20103, %eax	#, D.8259
	je	.L435	#,
	.loc 1 2789 0
	movl	$.LC125, %edi	#,
	call	puts	#
	.loc 1 2790 0
	movq	-584(%rbp), %rax	# gh, tmp160
	movl	(%rax), %eax	# gh_9->magic_number, D.8259
	movl	$20103, %edx	#,
	movl	%eax, %esi	# D.8259,
	movl	$.LC126, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2792 0
	movl	$1, %edi	#,
	call	terminate	#
.L435:
	.loc 1 2796 0
	movq	-584(%rbp), %rax	# gh, tmp161
	leaq	4(%rax), %rdx	#, D.8260
	movq	-600(%rbp), %rax	# fp, tmp162
	movl	$.LC127, %esi	#,
	movq	%rax, %rdi	# tmp162,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	movl	%eax, -616(%rbp)	# tmp163, i
	cmpl	$1, -616(%rbp)	#, i
	je	.L436	#,
	.loc 1 2797 0
	movl	$.LC128, %edi	#,
	call	puts	#
	.loc 1 2798 0
	movq	-584(%rbp), %rax	# gh, tmp164
	leaq	4(%rax), %rdx	#, D.8260
	movl	-616(%rbp), %eax	# i, tmp165
	movl	%eax, %esi	# tmp165,
	movl	$.LC129, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2799 0
	movl	$1, %edi	#,
	call	terminate	#
.L436:
	.loc 1 2801 0
	leaq	-620(%rbp), %rdi	#, tmp166
	leaq	-624(%rbp), %rsi	#, tmp167
	leaq	-628(%rbp), %rcx	#, tmp168
	leaq	-632(%rbp), %rdx	#, tmp169
	movq	-600(%rbp), %rax	# fp, tmp170
	movq	%rdi, %r9	# tmp166,
	movq	%rsi, %r8	# tmp167,
	movl	$.LC130, %esi	#,
	movq	%rax, %rdi	# tmp170,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$4, %eax	#, D.8259
	je	.L437	#,
	.loc 1 2802 0
	movl	$.LC131, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	terminate	#
.L437:
	.loc 1 2804 0
	movl	-632(%rbp), %edx	# x, x.304
	movq	-584(%rbp), %rax	# gh, tmp171
	movl	%edx, 68(%rax)	# x.304, gh_9->dims
	movl	-628(%rbp), %edx	# y, y.305
	movq	-584(%rbp), %rax	# gh, tmp172
	movl	%edx, 72(%rax)	# y.305, gh_9->dims
	movl	-624(%rbp), %edx	# z, z.306
	movq	-584(%rbp), %rax	# gh, tmp173
	movl	%edx, 76(%rax)	# z.306, gh_9->dims
	movl	-620(%rbp), %edx	# t, t.307
	movq	-584(%rbp), %rax	# gh, tmp174
	movl	%edx, 80(%rax)	# t.307, gh_9->dims
	.loc 1 2805 0
	movq	-584(%rbp), %rax	# gh, tmp175
	movl	68(%rax), %edx	# gh_9->dims, D.8259
	movl	nx(%rip), %eax	# nx, nx.308
	cmpl	%eax, %edx	# nx.308, D.8259
	jne	.L438	#,
	.loc 1 2805 0 is_stmt 0 discriminator 1
	movq	-584(%rbp), %rax	# gh, tmp176
	movl	72(%rax), %edx	# gh_9->dims, D.8259
	movl	ny(%rip), %eax	# ny, ny.309
	cmpl	%eax, %edx	# ny.309, D.8259
	jne	.L438	#,
	.loc 1 2806 0 is_stmt 1 discriminator 1
	movq	-584(%rbp), %rax	# gh, tmp177
	movl	76(%rax), %edx	# gh_9->dims, D.8259
	movl	nz(%rip), %eax	# nz, nz.310
	.loc 1 2805 0 discriminator 1
	cmpl	%eax, %edx	# nz.310, D.8259
	jne	.L438	#,
	.loc 1 2806 0
	movq	-584(%rbp), %rax	# gh, tmp178
	movl	80(%rax), %edx	# gh_9->dims, D.8259
	movl	nt(%rip), %eax	# nt, nt.311
	cmpl	%eax, %edx	# nt.311, D.8259
	je	.L439	#,
.L438:
	.loc 1 2811 0
	movl	nx(%rip), %eax	# nx, nx.312
	cmpl	$-1, %eax	#, nx.312
	jne	.L440	#,
	.loc 1 2811 0 is_stmt 0 discriminator 1
	movl	ny(%rip), %eax	# ny, ny.313
	cmpl	$-1, %eax	#, ny.313
	jne	.L440	#,
	movl	nz(%rip), %eax	# nz, nz.314
	cmpl	$-1, %eax	#, nz.314
	jne	.L440	#,
	movl	nt(%rip), %eax	# nt, nt.315
	cmpl	$-1, %eax	#, nt.315
	je	.L441	#,
.L440:
	.loc 1 2813 0 is_stmt 1
	movq	-584(%rbp), %rax	# gh, tmp179
	movl	80(%rax), %esi	# gh_9->dims, D.8259
	movq	-584(%rbp), %rax	# gh, tmp180
	movl	76(%rax), %ecx	# gh_9->dims, D.8259
	movq	-584(%rbp), %rax	# gh, tmp181
	movl	72(%rax), %edx	# gh_9->dims, D.8259
	movq	-584(%rbp), %rax	# gh, tmp182
	movl	68(%rax), %eax	# gh_9->dims, D.8259
	movl	%esi, %r8d	# D.8259,
	movl	%eax, %esi	# D.8259,
	movl	$.LC132, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2815 0
	movl	$1, %edi	#,
	call	terminate	#
	jmp	.L439	#
.L441:
	.loc 1 2819 0
	movq	-584(%rbp), %rax	# gh, tmp183
	movl	68(%rax), %eax	# gh_9->dims, nx.316
	movl	%eax, nx(%rip)	# nx.316, nx
	.loc 1 2820 0
	movq	-584(%rbp), %rax	# gh, tmp184
	movl	72(%rax), %eax	# gh_9->dims, ny.317
	movl	%eax, ny(%rip)	# ny.317, ny
	.loc 1 2821 0
	movq	-584(%rbp), %rax	# gh, tmp185
	movl	76(%rax), %eax	# gh_9->dims, nz.318
	movl	%eax, nz(%rip)	# nz.318, nz
	.loc 1 2822 0
	movq	-584(%rbp), %rax	# gh, tmp186
	movl	80(%rax), %eax	# gh_9->dims, nt.319
	movl	%eax, nt(%rip)	# nt.319, nt
	.loc 1 2823 0
	movl	nx(%rip), %edx	# nx, nx.320
	movl	ny(%rip), %eax	# ny, ny.321
	imull	%eax, %edx	# ny.321, D.8259
	movl	nz(%rip), %eax	# nz, nz.322
	imull	%eax, %edx	# nz.322, D.8259
	movl	nt(%rip), %eax	# nt, nt.323
	imull	%edx, %eax	# D.8259, volume.324
	movl	%eax, volume(%rip)	# volume.324, volume
.L439:
	.loc 1 2827 0
	movq	-584(%rbp), %rax	# gh, tmp187
	movl	$0, 88(%rax)	#, gh_9->order
	jmp	.L442	#
.L432:
	.loc 1 2831 0
	movq	-592(%rbp), %rax	# gf, tmp188
	movq	$0, (%rax)	#, gf_8->fp
.L442:
	.loc 1 2833 0
	movq	-592(%rbp), %rax	# gf, tmp189
	movl	$0, 24(%rax)	#, gf_8->byterevflag
	.loc 1 2837 0
	movq	-584(%rbp), %rax	# gh, tmp190
	movl	$92, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	broadcast_bytes	#
	.loc 1 2840 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2842 0
	movl	$0, -620(%rbp)	#, t
	jmp	.L443	#
.L465:
	.loc 1 2842 0 is_stmt 0 discriminator 2
	movl	$0, -624(%rbp)	#, z
	jmp	.L444	#
.L464:
	movl	$0, -628(%rbp)	#, y
	jmp	.L445	#
.L463:
	movl	$0, -632(%rbp)	#, x
	jmp	.L446	#
.L462:
	.loc 1 2843 0 is_stmt 1
	movl	-620(%rbp), %ecx	# t, t.325
	movl	-624(%rbp), %edx	# z, z.326
	movl	-628(%rbp), %esi	# y, y.327
	movl	-632(%rbp), %eax	# x, x.328
	movl	%eax, %edi	# x.328,
	call	node_number	#
	movl	%eax, -604(%rbp)	# tmp191, destnode
	.loc 1 2846 0
	movl	this_node(%rip), %eax	# this_node, this_node.329
	testl	%eax, %eax	# this_node.329
	jne	.L447	#,
	.loc 1 2847 0
	movl	$0, -608(%rbp)	#, dir
	jmp	.L448	#
.L454:
	.loc 1 2848 0
	movl	$0, -616(%rbp)	#, i
	jmp	.L449	#
.L453:
	.loc 1 2848 0 is_stmt 0 discriminator 2
	movl	$0, -612(%rbp)	#, j
	jmp	.L450	#
.L452:
	.loc 1 2849 0 is_stmt 1
	leaq	-576(%rbp), %rsi	#, tmp192
	movl	-612(%rbp), %eax	# j, tmp194
	movslq	%eax, %rdi	# tmp194, tmp193
	movl	-608(%rbp), %eax	# dir, tmp196
	cltq
	movq	%rax, %rdx	# tmp195, tmp197
	salq	$3, %rdx	#, tmp197
	addq	%rax, %rdx	# tmp195, tmp197
	movl	-616(%rbp), %eax	# i, tmp199
	movslq	%eax, %rcx	# tmp199, tmp198
	movq	%rcx, %rax	# tmp198, tmp200
	addq	%rax, %rax	# tmp200
	addq	%rcx, %rax	# tmp198, tmp200
	addq	%rdx, %rax	# tmp197, tmp201
	addq	%rdi, %rax	# tmp193, tmp202
	salq	$4, %rax	#, tmp203
	addq	%rsi, %rax	# tmp192, tmp204
	leaq	8(%rax), %rsi	#, D.8261
	leaq	-576(%rbp), %rdi	#, tmp205
	movl	-612(%rbp), %eax	# j, tmp207
	movslq	%eax, %r8	# tmp207, tmp206
	movl	-608(%rbp), %eax	# dir, tmp209
	cltq
	movq	%rax, %rdx	# tmp208, tmp210
	salq	$3, %rdx	#, tmp210
	addq	%rax, %rdx	# tmp208, tmp210
	movl	-616(%rbp), %eax	# i, tmp212
	movslq	%eax, %rcx	# tmp212, tmp211
	movq	%rcx, %rax	# tmp211, tmp213
	addq	%rax, %rax	# tmp213
	addq	%rcx, %rax	# tmp211, tmp213
	addq	%rdx, %rax	# tmp210, tmp214
	addq	%r8, %rax	# tmp206, tmp215
	salq	$4, %rax	#, tmp216
	leaq	(%rdi,%rax), %rdx	#, D.8261
	movq	-600(%rbp), %rax	# fp, tmp217
	movq	%rsi, %rcx	# D.8261,
	movl	$.LC133, %esi	#,
	movq	%rax, %rdi	# tmp217,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$2, %eax	#, D.8259
	je	.L451	#,
	.loc 1 2851 0
	movl	$.LC134, %edi	#,
	call	puts	#
	.loc 1 2852 0
	movl	$1, %edi	#,
	call	terminate	#
.L451:
	.loc 1 2848 0
	addl	$1, -612(%rbp)	#, j
.L450:
	.loc 1 2848 0 is_stmt 0 discriminator 1
	cmpl	$2, -612(%rbp)	#, j
	jle	.L452	#,
	.loc 1 2848 0 discriminator 2
	addl	$1, -616(%rbp)	#, i
.L449:
	.loc 1 2848 0 discriminator 1
	cmpl	$2, -616(%rbp)	#, i
	jle	.L453	#,
	.loc 1 2847 0 is_stmt 1
	addl	$1, -608(%rbp)	#, dir
.L448:
	.loc 1 2847 0 is_stmt 0 discriminator 1
	cmpl	$3, -608(%rbp)	#, dir
	jle	.L454	#,
	.loc 1 2856 0 is_stmt 1
	cmpl	$0, -604(%rbp)	#, destnode
	jne	.L455	#,
	.loc 1 2857 0
	movl	-620(%rbp), %ecx	# t, t.330
	movl	-624(%rbp), %edx	# z, z.331
	movl	-628(%rbp), %esi	# y, y.332
	movl	-632(%rbp), %eax	# x, x.333
	movl	%eax, %edi	# x.333,
	call	node_index	#
	movl	%eax, -616(%rbp)	# tmp218, i
	.loc 1 2858 0
	movl	$0, -608(%rbp)	#, dir
	jmp	.L456	#
.L457:
	.loc 1 2858 0 is_stmt 0 discriminator 2
	movq	lattice(%rip), %rax	# lattice, lattice.334
	movl	-616(%rbp), %edx	# i, tmp219
	movslq	%edx, %rdx	# tmp219, D.8262
	salq	$11, %rdx	#, D.8262
	leaq	(%rax,%rdx), %rcx	#, D.8263
	movl	-608(%rbp), %eax	# dir, tmp221
	movslq	%eax, %rdx	# tmp221, tmp220
	movq	%rdx, %rax	# tmp220, tmp222
	salq	$3, %rax	#, tmp222
	addq	%rdx, %rax	# tmp220, tmp222
	salq	$4, %rax	#, tmp223
	addq	%rcx, %rax	# D.8263, tmp224
	leaq	112(%rax), %rcx	#, tmp225
	movl	-608(%rbp), %eax	# dir, tmp227
	movslq	%eax, %rdx	# tmp227, tmp226
	movq	%rdx, %rax	# tmp226, tmp228
	salq	$3, %rax	#, tmp228
	addq	%rdx, %rax	# tmp226, tmp228
	salq	$4, %rax	#, tmp229
	addq	%rbp, %rax	#, tmp230
	subq	$576, %rax	#, tmp231
	movq	%rcx, %rdx	# tmp225, tmp232
	movq	%rax, %rsi	# tmp231, tmp233
	movl	$18, %eax	#, tmp234
	movq	%rdx, %rdi	# tmp232, tmp232
	movq	%rax, %rcx	# tmp234, tmp234
	rep movsq
	addl	$1, -608(%rbp)	#, dir
.L456:
	.loc 1 2858 0 discriminator 1
	cmpl	$3, -608(%rbp)	#, dir
	jle	.L457	#,
	jmp	.L459	#
.L455:
	.loc 1 2861 0 is_stmt 1
	movl	-604(%rbp), %edx	# destnode, tmp235
	leaq	-576(%rbp), %rax	#, tmp236
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp236,
	call	send_field	#
	jmp	.L459	#
.L447:
	.loc 1 2867 0
	movl	this_node(%rip), %eax	# this_node, this_node.335
	cmpl	-604(%rbp), %eax	# destnode, this_node.335
	jne	.L459	#,
	.loc 1 2868 0
	leaq	-576(%rbp), %rax	#, tmp237
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp237,
	call	get_field	#
	.loc 1 2869 0
	movl	-620(%rbp), %ecx	# t, t.336
	movl	-624(%rbp), %edx	# z, z.337
	movl	-628(%rbp), %esi	# y, y.338
	movl	-632(%rbp), %eax	# x, x.339
	movl	%eax, %edi	# x.339,
	call	node_index	#
	movl	%eax, -616(%rbp)	# tmp238, i
	.loc 1 2870 0
	movl	$0, -608(%rbp)	#, dir
	jmp	.L460	#
.L461:
	.loc 1 2870 0 is_stmt 0 discriminator 2
	movq	lattice(%rip), %rax	# lattice, lattice.340
	movl	-616(%rbp), %edx	# i, tmp239
	movslq	%edx, %rdx	# tmp239, D.8262
	salq	$11, %rdx	#, D.8262
	leaq	(%rax,%rdx), %rcx	#, D.8263
	movl	-608(%rbp), %eax	# dir, tmp241
	movslq	%eax, %rdx	# tmp241, tmp240
	movq	%rdx, %rax	# tmp240, tmp242
	salq	$3, %rax	#, tmp242
	addq	%rdx, %rax	# tmp240, tmp242
	salq	$4, %rax	#, tmp243
	addq	%rcx, %rax	# D.8263, tmp244
	leaq	112(%rax), %rcx	#, tmp245
	movl	-608(%rbp), %eax	# dir, tmp247
	movslq	%eax, %rdx	# tmp247, tmp246
	movq	%rdx, %rax	# tmp246, tmp248
	salq	$3, %rax	#, tmp248
	addq	%rdx, %rax	# tmp246, tmp248
	salq	$4, %rax	#, tmp249
	addq	%rbp, %rax	#, tmp250
	subq	$576, %rax	#, tmp251
	movq	%rcx, %rdx	# tmp245, tmp252
	movq	%rax, %rsi	# tmp251, tmp253
	movl	$18, %eax	#, tmp254
	movq	%rdx, %rdi	# tmp252, tmp252
	movq	%rax, %rcx	# tmp254, tmp254
	rep movsq
	addl	$1, -608(%rbp)	#, dir
.L460:
	.loc 1 2870 0 discriminator 1
	cmpl	$3, -608(%rbp)	#, dir
	jle	.L461	#,
.L459:
	.loc 1 2842 0 is_stmt 1
	movl	-632(%rbp), %eax	# x, x.341
	addl	$1, %eax	#, x.342
	movl	%eax, -632(%rbp)	# x.342, x
.L446:
	.loc 1 2842 0 is_stmt 0 discriminator 1
	movl	-632(%rbp), %edx	# x, x.343
	movl	nx(%rip), %eax	# nx, nx.344
	cmpl	%eax, %edx	# nx.344, x.343
	jl	.L462	#,
	.loc 1 2842 0 discriminator 2
	movl	-628(%rbp), %eax	# y, y.345
	addl	$1, %eax	#, y.346
	movl	%eax, -628(%rbp)	# y.346, y
.L445:
	.loc 1 2842 0 discriminator 1
	movl	-628(%rbp), %edx	# y, y.347
	movl	ny(%rip), %eax	# ny, ny.348
	cmpl	%eax, %edx	# ny.348, y.347
	jl	.L463	#,
	.loc 1 2842 0 discriminator 3
	movl	-624(%rbp), %eax	# z, z.349
	addl	$1, %eax	#, z.350
	movl	%eax, -624(%rbp)	# z.350, z
.L444:
	.loc 1 2842 0 discriminator 1
	movl	-624(%rbp), %edx	# z, z.351
	movl	nz(%rip), %eax	# nz, nz.352
	cmpl	%eax, %edx	# nz.352, z.351
	jl	.L464	#,
	.loc 1 2842 0 discriminator 3
	movl	-620(%rbp), %eax	# t, t.353
	addl	$1, %eax	#, t.354
	movl	%eax, -620(%rbp)	# t.354, t
.L443:
	.loc 1 2842 0 discriminator 1
	movl	-620(%rbp), %edx	# t, t.355
	movl	nt(%rip), %eax	# nt, nt.356
	cmpl	%eax, %edx	# nt.356, t.355
	jl	.L465	#,
	.loc 1 2875 0 is_stmt 1
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2876 0
	movl	this_node(%rip), %eax	# this_node, this_node.357
	testl	%eax, %eax	# this_node.357
	jne	.L466	#,
	.loc 1 2877 0
	movq	-648(%rbp), %rax	# filename, tmp255
	movq	%rax, %rsi	# tmp255,
	movl	$.LC135, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2879 0
	movq	-584(%rbp), %rax	# gh, tmp256
	addq	$4, %rax	#, D.8260
	movq	%rax, %rsi	# D.8260,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2880 0
	movq	-600(%rbp), %rax	# fp, tmp257
	movq	%rax, %rdi	# tmp257,
	call	fclose	#
	.loc 1 2881 0
	movq	-592(%rbp), %rax	# gf, tmp258
	movq	$0, (%rax)	#, gf_8->fp
	.loc 1 2882 0
	movq	stdout(%rip), %rax	# stdout, stdout.358
	movq	%rax, %rdi	# stdout.358,
	call	fflush	#
.L466:
	.loc 1 2885 0
	movq	-592(%rbp), %rax	# gf, D.8264
	.loc 1 2886 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	restore_ascii, .-restore_ascii
	.section	.rodata
.LC136:
	.string	"%d\n"
	.align 8
.LC137:
	.string	"Error in writing version number"
.LC138:
	.string	"\"%s\"\n"
.LC139:
	.string	"Error in writing time stamp"
.LC140:
	.string	"%d\t%d\t%d\t%d\n"
.LC141:
	.string	"Error in writing dimensions"
.LC142:
	.string	"%.7e\t%.7e\n"
.LC143:
	.string	"Write error in save_ascii"
	.align 8
.LC144:
	.string	"Saved gauge configuration to ascii file %s\n"
	.text
	.globl	save_ascii
	.type	save_ascii, @function
save_ascii:
.LFB51:
	.loc 1 2892 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$656, %rsp	#,
	movq	%rdi, -648(%rbp)	# filename, filename
	.loc 1 2901 0
	movl	$0, %eax	#,
	call	setup_output_gauge_file	#
	movq	%rax, -592(%rbp)	# tmp95, gf
	.loc 1 2902 0
	movq	-592(%rbp), %rax	# gf, tmp96
	movq	8(%rax), %rax	# gf_16->header, tmp97
	movq	%rax, -584(%rbp)	# tmp97, gh
	.loc 1 2905 0
	movl	this_node(%rip), %eax	# this_node, this_node.359
	testl	%eax, %eax	# this_node.359
	jne	.L469	#,
	.loc 1 2907 0
	movq	-648(%rbp), %rax	# filename, tmp98
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	fopen	#
	movq	%rax, -600(%rbp)	# tmp99, fp
	.loc 1 2908 0
	cmpq	$0, -600(%rbp)	#, fp
	jne	.L470	#,
	.loc 1 2909 0
	call	__errno_location	#
	movl	(%rax), %edx	# *_22, D.8280
	movq	-648(%rbp), %rax	# filename, tmp100
	movq	%rax, %rsi	# tmp100,
	movl	$.LC123, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	movl	$1, %edi	#,
	call	terminate	#
.L470:
	.loc 1 2912 0
	movq	-592(%rbp), %rax	# gf, tmp101
	movq	-600(%rbp), %rdx	# fp, tmp102
	movq	%rdx, (%rax)	# tmp102, gf_16->fp
	.loc 1 2913 0
	movq	-592(%rbp), %rax	# gf, tmp103
	movl	$0, 40(%rax)	#, gf_16->parallel
	.loc 1 2914 0
	movq	-592(%rbp), %rax	# gf, tmp104
	movq	-648(%rbp), %rdx	# filename, tmp105
	movq	%rdx, 16(%rax)	# tmp105, gf_16->filename
	.loc 1 2915 0
	movq	-592(%rbp), %rax	# gf, tmp106
	movl	$0, 24(%rax)	#, gf_16->byterevflag
	.loc 1 2917 0
	movq	-600(%rbp), %rax	# fp, tmp107
	movl	$20103, %edx	#,
	movl	$.LC136, %esi	#,
	movq	%rax, %rdi	# tmp107,
	movl	$0, %eax	#,
	call	fprintf	#
	testl	%eax, %eax	# D.8280
	jne	.L471	#,
	.loc 1 2918 0
	movl	$.LC137, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	terminate	#
.L471:
	.loc 1 2920 0
	movq	-584(%rbp), %rax	# gh, tmp108
	leaq	4(%rax), %rdx	#, D.8281
	movq	-600(%rbp), %rax	# fp, tmp109
	movl	$.LC138, %esi	#,
	movq	%rax, %rdi	# tmp109,
	movl	$0, %eax	#,
	call	fprintf	#
	testl	%eax, %eax	# D.8280
	jne	.L472	#,
	.loc 1 2921 0
	movl	$.LC139, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	terminate	#
.L472:
	.loc 1 2924 0
	movl	nt(%rip), %edi	# nt, nt.360
	movl	nz(%rip), %esi	# nz, nz.361
	movl	ny(%rip), %ecx	# ny, ny.362
	movl	nx(%rip), %edx	# nx, nx.363
	movq	-600(%rbp), %rax	# fp, tmp110
	movl	%edi, %r9d	# nt.360,
	movl	%esi, %r8d	# nz.361,
	movl	$.LC140, %esi	#,
	movq	%rax, %rdi	# tmp110,
	movl	$0, %eax	#,
	call	fprintf	#
	testl	%eax, %eax	# D.8280
	jne	.L473	#,
	.loc 1 2925 0
	movl	$.LC141, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	terminate	#
.L473:
	.loc 1 2928 0
	movq	-592(%rbp), %rax	# gf, tmp111
	movq	%rax, %rdi	# tmp111,
	call	write_gauge_info_file	#
.L469:
	.loc 1 2933 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2934 0
	movl	$0, -636(%rbp)	#, currentnode
	.loc 1 2936 0
	movl	$0, -612(%rbp)	#, t
	jmp	.L474	#
.L499:
	.loc 1 2936 0 is_stmt 0 discriminator 2
	movl	$0, -616(%rbp)	#, z
	jmp	.L475	#
.L498:
	movl	$0, -620(%rbp)	#, y
	jmp	.L476	#
.L497:
	movl	$0, -624(%rbp)	#, x
	jmp	.L477	#
.L496:
	.loc 1 2937 0 is_stmt 1
	movl	-612(%rbp), %ecx	# t, tmp112
	movl	-616(%rbp), %edx	# z, tmp113
	movl	-620(%rbp), %esi	# y, tmp114
	movl	-624(%rbp), %eax	# x, tmp115
	movl	%eax, %edi	# tmp115,
	call	node_number	#
	movl	%eax, -604(%rbp)	# tmp116, newnode
	.loc 1 2938 0
	movl	-604(%rbp), %eax	# newnode, tmp117
	cmpl	-636(%rbp), %eax	# currentnode, tmp117
	je	.L478	#,
	.loc 1 2941 0
	movl	this_node(%rip), %eax	# this_node, this_node.364
	testl	%eax, %eax	# this_node.364
	jne	.L479	#,
	.loc 1 2941 0 is_stmt 0 discriminator 1
	cmpl	$0, -604(%rbp)	#, newnode
	je	.L479	#,
	movl	-604(%rbp), %edx	# newnode, tmp118
	leaq	-576(%rbp), %rax	#, tmp119
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	send_field	#
.L479:
	.loc 1 2942 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.365
	cmpl	-604(%rbp), %eax	# newnode, this_node.365
	jne	.L480	#,
	.loc 1 2942 0 is_stmt 0 discriminator 1
	cmpl	$0, -604(%rbp)	#, newnode
	je	.L480	#,
	leaq	-576(%rbp), %rax	#, tmp120
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	get_field	#
.L480:
	.loc 1 2943 0 is_stmt 1
	movl	-604(%rbp), %eax	# newnode, tmp121
	movl	%eax, -636(%rbp)	# tmp121, currentnode
.L478:
	.loc 1 2946 0
	movl	this_node(%rip), %eax	# this_node, this_node.366
	testl	%eax, %eax	# this_node.366
	jne	.L481	#,
	.loc 1 2947 0
	cmpl	$0, -636(%rbp)	#, currentnode
	jne	.L482	#,
	.loc 1 2948 0
	movl	-612(%rbp), %ecx	# t, tmp122
	movl	-616(%rbp), %edx	# z, tmp123
	movl	-620(%rbp), %esi	# y, tmp124
	movl	-624(%rbp), %eax	# x, tmp125
	movl	%eax, %edi	# tmp125,
	call	node_index	#
	movl	%eax, -632(%rbp)	# tmp126, i
	.loc 1 2949 0
	movl	$0, -608(%rbp)	#, dir
	jmp	.L483	#
.L484:
	.loc 1 2949 0 is_stmt 0 discriminator 2
	movq	lattice(%rip), %rax	# lattice, lattice.367
	movl	-632(%rbp), %edx	# i, tmp127
	movslq	%edx, %rdx	# tmp127, D.8282
	salq	$11, %rdx	#, D.8282
	leaq	(%rax,%rdx), %rsi	#, D.8283
	movl	-608(%rbp), %eax	# dir, tmp129
	movslq	%eax, %rdx	# tmp129, tmp128
	movq	%rdx, %rax	# tmp128, tmp130
	salq	$3, %rax	#, tmp130
	addq	%rdx, %rax	# tmp128, tmp130
	salq	$4, %rax	#, tmp131
	addq	%rbp, %rax	#, tmp132
	leaq	-576(%rax), %rcx	#, tmp133
	movl	-608(%rbp), %eax	# dir, tmp135
	movslq	%eax, %rdx	# tmp135, tmp134
	movq	%rdx, %rax	# tmp134, tmp136
	salq	$3, %rax	#, tmp136
	addq	%rdx, %rax	# tmp134, tmp136
	salq	$4, %rax	#, tmp137
	addq	%rsi, %rax	# D.8283, tmp138
	addq	$112, %rax	#, tmp139
	movq	%rcx, %rdx	# tmp133, tmp140
	movq	%rax, %rsi	# tmp139, tmp141
	movl	$18, %eax	#, tmp142
	movq	%rdx, %rdi	# tmp140, tmp140
	movq	%rax, %rcx	# tmp142, tmp142
	rep movsq
	addl	$1, -608(%rbp)	#, dir
.L483:
	.loc 1 2949 0 discriminator 1
	cmpl	$3, -608(%rbp)	#, dir
	jle	.L484	#,
	jmp	.L485	#
.L482:
	.loc 1 2952 0 is_stmt 1
	leaq	-576(%rbp), %rax	#, tmp143
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	get_field	#
.L485:
	.loc 1 2954 0
	movl	$0, -608(%rbp)	#, dir
	jmp	.L486	#
.L492:
	.loc 1 2955 0
	movl	$0, -632(%rbp)	#, i
	jmp	.L487	#
.L491:
	.loc 1 2955 0 is_stmt 0 discriminator 2
	movl	$0, -628(%rbp)	#, j
	jmp	.L488	#
.L490:
	.loc 1 2956 0 is_stmt 1
	movl	-628(%rbp), %eax	# j, tmp145
	movslq	%eax, %rsi	# tmp145, tmp144
	movl	-608(%rbp), %eax	# dir, tmp147
	cltq
	movl	-632(%rbp), %edx	# i, tmp149
	movslq	%edx, %rcx	# tmp149, tmp148
	movq	%rax, %rdx	# tmp146, tmp150
	salq	$3, %rdx	#, tmp150
	addq	%rax, %rdx	# tmp146, tmp150
	movq	%rcx, %rax	# tmp148, tmp151
	addq	%rax, %rax	# tmp151
	addq	%rcx, %rax	# tmp148, tmp151
	addq	%rdx, %rax	# tmp150, tmp152
	addq	%rsi, %rax	# tmp144, tmp153
	salq	$4, %rax	#, tmp154
	addq	%rbp, %rax	#, tmp155
	subq	$568, %rax	#, tmp156
	movq	(%rax), %rcx	# lbuf[dir_14].e[i_7][j_8].imag, D.8284
	movl	-628(%rbp), %eax	# j, tmp158
	movslq	%eax, %rdi	# tmp158, tmp157
	movl	-608(%rbp), %eax	# dir, tmp160
	cltq
	movl	-632(%rbp), %edx	# i, tmp162
	movslq	%edx, %rsi	# tmp162, tmp161
	movq	%rax, %rdx	# tmp159, tmp163
	salq	$3, %rdx	#, tmp163
	addq	%rax, %rdx	# tmp159, tmp163
	movq	%rsi, %rax	# tmp161, tmp164
	addq	%rax, %rax	# tmp164
	addq	%rsi, %rax	# tmp161, tmp164
	addq	%rdx, %rax	# tmp163, tmp165
	addq	%rdi, %rax	# tmp157, tmp166
	salq	$4, %rax	#, tmp167
	addq	%rbp, %rax	#, tmp168
	subq	$576, %rax	#, tmp169
	movq	(%rax), %rax	# lbuf[dir_14].e[i_7][j_8].real, D.8284
	movq	-600(%rbp), %rdx	# fp, tmp170
	movq	%rcx, -656(%rbp)	# D.8284, %sfp
	movsd	-656(%rbp), %xmm1	# %sfp,
	movq	%rax, -656(%rbp)	# D.8284, %sfp
	movsd	-656(%rbp), %xmm0	# %sfp,
	movl	$.LC142, %esi	#,
	movq	%rdx, %rdi	# tmp170,
	movl	$2, %eax	#,
	call	fprintf	#
	cmpl	$-1, %eax	#, D.8280
	jne	.L489	#,
	.loc 1 2958 0
	movl	$.LC143, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	terminate	#
.L489:
	.loc 1 2955 0
	addl	$1, -628(%rbp)	#, j
.L488:
	.loc 1 2955 0 is_stmt 0 discriminator 1
	cmpl	$2, -628(%rbp)	#, j
	jle	.L490	#,
	.loc 1 2955 0 discriminator 2
	addl	$1, -632(%rbp)	#, i
.L487:
	.loc 1 2955 0 discriminator 1
	cmpl	$2, -632(%rbp)	#, i
	jle	.L491	#,
	.loc 1 2954 0 is_stmt 1
	addl	$1, -608(%rbp)	#, dir
.L486:
	.loc 1 2954 0 is_stmt 0 discriminator 1
	cmpl	$3, -608(%rbp)	#, dir
	jle	.L492	#,
	jmp	.L493	#
.L481:
	.loc 1 2964 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.368
	cmpl	-636(%rbp), %eax	# currentnode, this_node.368
	jne	.L493	#,
	.loc 1 2965 0
	movl	-612(%rbp), %ecx	# t, tmp171
	movl	-616(%rbp), %edx	# z, tmp172
	movl	-620(%rbp), %esi	# y, tmp173
	movl	-624(%rbp), %eax	# x, tmp174
	movl	%eax, %edi	# tmp174,
	call	node_index	#
	movl	%eax, -632(%rbp)	# tmp175, i
	.loc 1 2966 0
	movl	$0, -608(%rbp)	#, dir
	jmp	.L494	#
.L495:
	.loc 1 2966 0 is_stmt 0 discriminator 2
	movq	lattice(%rip), %rax	# lattice, lattice.369
	movl	-632(%rbp), %edx	# i, tmp176
	movslq	%edx, %rdx	# tmp176, D.8282
	salq	$11, %rdx	#, D.8282
	leaq	(%rax,%rdx), %rsi	#, D.8283
	movl	-608(%rbp), %eax	# dir, tmp178
	movslq	%eax, %rdx	# tmp178, tmp177
	movq	%rdx, %rax	# tmp177, tmp179
	salq	$3, %rax	#, tmp179
	addq	%rdx, %rax	# tmp177, tmp179
	salq	$4, %rax	#, tmp180
	addq	%rbp, %rax	#, tmp181
	leaq	-576(%rax), %rcx	#, tmp182
	movl	-608(%rbp), %eax	# dir, tmp184
	movslq	%eax, %rdx	# tmp184, tmp183
	movq	%rdx, %rax	# tmp183, tmp185
	salq	$3, %rax	#, tmp185
	addq	%rdx, %rax	# tmp183, tmp185
	salq	$4, %rax	#, tmp186
	addq	%rsi, %rax	# D.8283, tmp187
	addq	$112, %rax	#, tmp188
	movq	%rcx, %rdx	# tmp182, tmp189
	movq	%rax, %rsi	# tmp188, tmp190
	movl	$18, %eax	#, tmp191
	movq	%rdx, %rdi	# tmp189, tmp189
	movq	%rax, %rcx	# tmp191, tmp191
	rep movsq
	addl	$1, -608(%rbp)	#, dir
.L494:
	.loc 1 2966 0 discriminator 1
	cmpl	$3, -608(%rbp)	#, dir
	jle	.L495	#,
	.loc 1 2967 0 is_stmt 1
	leaq	-576(%rbp), %rax	#, tmp192
	movl	$0, %edx	#,
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp192,
	call	send_field	#
.L493:
	.loc 1 2936 0
	addl	$1, -624(%rbp)	#, x
.L477:
	.loc 1 2936 0 is_stmt 0 discriminator 1
	movl	nx(%rip), %eax	# nx, nx.370
	cmpl	%eax, -624(%rbp)	# nx.370, x
	jl	.L496	#,
	.loc 1 2936 0 discriminator 2
	addl	$1, -620(%rbp)	#, y
.L476:
	.loc 1 2936 0 discriminator 1
	movl	ny(%rip), %eax	# ny, ny.371
	cmpl	%eax, -620(%rbp)	# ny.371, y
	jl	.L497	#,
	.loc 1 2936 0 discriminator 3
	addl	$1, -616(%rbp)	#, z
.L475:
	.loc 1 2936 0 discriminator 1
	movl	nz(%rip), %eax	# nz, nz.372
	cmpl	%eax, -616(%rbp)	# nz.372, z
	jl	.L498	#,
	.loc 1 2936 0 discriminator 3
	addl	$1, -612(%rbp)	#, t
.L474:
	.loc 1 2936 0 discriminator 1
	movl	nt(%rip), %eax	# nt, nt.373
	cmpl	%eax, -612(%rbp)	# nt.373, t
	jl	.L499	#,
	.loc 1 2971 0 is_stmt 1
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 2972 0
	movl	this_node(%rip), %eax	# this_node, this_node.374
	testl	%eax, %eax	# this_node.374
	jne	.L500	#,
	.loc 1 2973 0
	movq	-600(%rbp), %rax	# fp, tmp193
	movq	%rax, %rdi	# tmp193,
	call	fflush	#
	.loc 1 2974 0
	movq	-592(%rbp), %rax	# gf, tmp194
	movq	16(%rax), %rax	# gf_16->filename, D.8285
	movq	%rax, %rsi	# D.8285,
	movl	$.LC144, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2976 0
	movq	-584(%rbp), %rax	# gh, tmp195
	addq	$4, %rax	#, D.8281
	movq	%rax, %rsi	# D.8281,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2977 0
	movq	-600(%rbp), %rax	# fp, tmp196
	movq	%rax, %rdi	# tmp196,
	call	fclose	#
	.loc 1 2978 0
	movq	stdout(%rip), %rax	# stdout, stdout.375
	movq	%rax, %rdi	# stdout.375,
	call	fflush	#
.L500:
	.loc 1 2980 0
	movq	-592(%rbp), %rax	# gf, D.8286
	.loc 1 2981 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	save_ascii, .-save_ascii
	.globl	restore_serial
	.type	restore_serial, @function
restore_serial:
.LFB52:
	.loc 1 2989 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	.loc 1 2992 0
	movq	-24(%rbp), %rax	# filename, tmp63
	movq	%rax, %rdi	# tmp63,
	call	r_serial_i	#
	movq	%rax, -8(%rbp)	# tmp64, gf
	.loc 1 2993 0
	movq	-8(%rbp), %rax	# gf, tmp65
	movq	8(%rax), %rax	# gf_2->header, D.8296
	movl	(%rax), %eax	# _3->magic_number, D.8297
	cmpl	$1111836489, %eax	#, D.8297
	jne	.L503	#,
	.loc 1 2994 0
	movq	-8(%rbp), %rax	# gf, tmp66
	movq	%rax, %rdi	# tmp66,
	call	r_serial_arch	#
	jmp	.L504	#
.L503:
	.loc 1 2996 0
	movq	-8(%rbp), %rax	# gf, tmp67
	movq	%rax, %rdi	# tmp67,
	call	r_serial	#
.L504:
	.loc 1 2998 0
	movq	-8(%rbp), %rax	# gf, tmp68
	movq	%rax, %rdi	# tmp68,
	call	r_serial_f	#
	.loc 1 3000 0
	movq	-8(%rbp), %rax	# gf, D.8298
	.loc 1 3002 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	restore_serial, .-restore_serial
	.globl	restore_parallel
	.type	restore_parallel, @function
restore_parallel:
.LFB53:
	.loc 1 3009 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	.loc 1 3012 0
	movq	-24(%rbp), %rax	# filename, tmp61
	movq	%rax, %rdi	# tmp61,
	call	r_parallel_i	#
	movq	%rax, -8(%rbp)	# tmp62, gf
	.loc 1 3013 0
	movq	-8(%rbp), %rax	# gf, tmp63
	movq	%rax, %rdi	# tmp63,
	call	r_parallel	#
	.loc 1 3014 0
	movq	-8(%rbp), %rax	# gf, tmp64
	movq	%rax, %rdi	# tmp64,
	call	r_parallel_f	#
	.loc 1 3016 0
	movq	-8(%rbp), %rax	# gf, D.8299
	.loc 1 3018 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	restore_parallel, .-restore_parallel
	.globl	save_serial
	.type	save_serial, @function
save_serial:
.LFB54:
	.loc 1 3025 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	.loc 1 3028 0
	movq	-24(%rbp), %rax	# filename, tmp61
	movq	%rax, %rdi	# tmp61,
	call	w_serial_i	#
	movq	%rax, -8(%rbp)	# tmp62, gf
	.loc 1 3029 0
	movq	-8(%rbp), %rax	# gf, tmp63
	movq	%rax, %rdi	# tmp63,
	call	w_serial	#
	.loc 1 3030 0
	movq	-8(%rbp), %rax	# gf, tmp64
	movq	%rax, %rdi	# tmp64,
	call	w_serial_f	#
	.loc 1 3032 0
	movq	-8(%rbp), %rax	# gf, D.8300
	.loc 1 3034 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	save_serial, .-save_serial
	.globl	save_parallel
	.type	save_parallel, @function
save_parallel:
.LFB55:
	.loc 1 3041 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	.loc 1 3044 0
	movq	-24(%rbp), %rax	# filename, tmp61
	movq	%rax, %rdi	# tmp61,
	call	w_parallel_i	#
	movq	%rax, -8(%rbp)	# tmp62, gf
	.loc 1 3045 0
	movq	-8(%rbp), %rax	# gf, tmp63
	movq	%rax, %rdi	# tmp63,
	call	w_parallel	#
	.loc 1 3046 0
	movq	-8(%rbp), %rax	# gf, tmp64
	movq	%rax, %rdi	# tmp64,
	call	w_parallel_f	#
	.loc 1 3048 0
	movq	-8(%rbp), %rax	# gf, D.8301
	.loc 1 3050 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	save_parallel, .-save_parallel
	.globl	save_checkpoint
	.type	save_checkpoint, @function
save_checkpoint:
.LFB56:
	.loc 1 3062 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	.loc 1 3065 0
	movq	-24(%rbp), %rax	# filename, tmp61
	movq	%rax, %rdi	# tmp61,
	call	w_checkpoint_i	#
	movq	%rax, -8(%rbp)	# tmp62, gf
	.loc 1 3066 0
	movq	-8(%rbp), %rax	# gf, tmp63
	movq	%rax, %rdi	# tmp63,
	call	w_checkpoint	#
	.loc 1 3067 0
	movq	-8(%rbp), %rax	# gf, tmp64
	movq	%rax, %rdi	# tmp64,
	call	w_parallel_f	#
	.loc 1 3069 0
	movq	-8(%rbp), %rax	# gf, D.8302
	.loc 1 3071 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	save_checkpoint, .-save_checkpoint
	.section	.rodata
.LC146:
	.string	"trace = %f\n"
.LC147:
	.string	"chksum_x = %x\n"
.LC148:
	.string	"chksum_u = %12u\n"
.LC149:
	.string	"plaquette = %f\n"
	.align 8
.LC150:
	.string	"Writing archive format lattice to %s\n"
	.align 8
.LC151:
	.string	"error opening output file: %s\n"
.LC152:
	.string	"BEGIN_HEADER\n"
.LC153:
	.string	"DATATYPE = 4D_SU3_GAUGE\n"
.LC154:
	.string	"DIMENSION_1 = %d\n"
.LC155:
	.string	"DIMENSION_2 = %d\n"
.LC156:
	.string	"DIMENSION_3 = %d\n"
.LC157:
	.string	"DIMENSION_4 = %d\n"
.LC158:
	.string	"CHECKSUM = %x\n"
.LC159:
	.string	"LINK_TRACE = %.10f\n"
.LC160:
	.string	"PLAQUETTE = %.10f\n"
.LC161:
	.string	"ENSEMBLE_ID = %s\n"
.LC162:
	.string	"SEQUENCE_NUMBER = %d\n"
	.align 8
.LC163:
	.string	"MILC_INFO = -------BEGIN-------\n"
	.align 8
.LC164:
	.string	"MILC_INFO = --------END--------\n"
.LC165:
	.string	"can't malloc uout timeslice"
.LC166:
	.string	"fwrite bombed..."
.LC167:
	.string	"Wrote archive gauge file %s\n"
	.text
	.globl	save_serial_archive
	.type	save_serial_archive, @function
save_serial_archive:
.LFB57:
	.loc 1 3074 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$808, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -808(%rbp)	# filename, filename
	.loc 1 3074 0
	movq	%fs:40, %rax	#, tmp419
	movq	%rax, -24(%rbp)	# tmp419, D.8312
	xorl	%eax, %eax	# tmp419
	.loc 1 3095 0
	movl	$0, %eax	#,
	call	big_endian	#
	movl	%eax, -744(%rbp)	# tmp173, big_end_p
	.loc 1 3099 0
	movl	$0, %eax	#,
	call	setup_output_gauge_file	#
	movq	%rax, -680(%rbp)	# tmp174, gf
	.loc 1 3100 0
	movq	-680(%rbp), %rax	# gf, tmp175
	movq	8(%rax), %rax	# gf_31->header, tmp176
	movq	%rax, -672(%rbp)	# tmp176, gh
	.loc 1 3103 0
	leaq	-728(%rbp), %rdx	#, tmp177
	leaq	-736(%rbp), %rax	#, tmp178
	movq	%rdx, %rsi	# tmp177,
	movq	%rax, %rdi	# tmp178,
	call	d_plaquette	#
	.loc 1 3104 0
	movsd	-736(%rbp), %xmm1	# ssplaq, ssplaq.376
	movsd	-728(%rbp), %xmm0	# stplaq, stplaq.377
	addsd	%xmm1, %xmm0	# ssplaq.376, D.8303
	movsd	.LC145(%rip), %xmm1	#, tmp180
	divsd	%xmm1, %xmm0	# tmp180, tmp179
	movsd	%xmm0, -664(%rbp)	# tmp179, avgplaq
	.loc 1 3105 0
	movl	$0, %eax	#, tmp181
	movq	%rax, -712(%rbp)	# tmp181, trace
	.loc 1 3106 0
	movl	$0, -800(%rbp)	#, chksum
	.loc 1 3107 0
	movl	$0, -788(%rbp)	#, i
	movq	lattice(%rip), %rax	# lattice, tmp182
	movq	%rax, -696(%rbp)	# tmp182, s
	jmp	.L515	#
.L522:
	.loc 1 3108 0
	movl	$0, -764(%rbp)	#, mu
	jmp	.L516	#
.L521:
	.loc 1 3109 0
	movl	-764(%rbp), %eax	# mu, tmp184
	movslq	%eax, %rdx	# tmp184, tmp183
	movq	%rdx, %rax	# tmp183, tmp185
	salq	$3, %rax	#, tmp185
	addq	%rdx, %rax	# tmp183, tmp185
	salq	$4, %rax	#, tmp186
	leaq	112(%rax), %rdx	#, tmp187
	movq	-696(%rbp), %rax	# s, tmp188
	addq	%rdx, %rax	# tmp187, D.8304
	movq	%rax, %rdi	# D.8304,
	call	trace_su3	#
	movsd	%xmm0, -816(%rbp)	#, %sfp
	movq	-816(%rbp), %rcx	# %sfp, tmp189
	movsd	%xmm1, -816(%rbp)	#, %sfp
	movq	-816(%rbp), %rsi	# %sfp, tmp190
	movl	$0, %eax	#, D.7708
	movl	$0, %edx	#, D.7708
	movq	%rcx, %rax	# tmp189, D.7708
	movq	%rsi, %rdx	# tmp190, D.7708
	movq	%rax, -816(%rbp)	# D.7708, %sfp
	movsd	-816(%rbp), %xmm1	# %sfp, D.8303
	movsd	-712(%rbp), %xmm0	# trace, trace.378
	addsd	%xmm1, %xmm0	# D.8303, trace.379
	movsd	%xmm0, -712(%rbp)	# trace.379, trace
	.loc 1 3110 0
	movl	$0, -760(%rbp)	#, a
	jmp	.L517	#
.L520:
	.loc 1 3110 0 is_stmt 0 discriminator 2
	movl	$0, -756(%rbp)	#, b
	jmp	.L518	#
.L519:
	.loc 1 3111 0 is_stmt 1 discriminator 2
	movq	-696(%rbp), %rsi	# s, tmp191
	movl	-756(%rbp), %eax	# b, tmp193
	movslq	%eax, %rdi	# tmp193, tmp192
	movl	-764(%rbp), %eax	# mu, tmp195
	cltq
	movl	-760(%rbp), %edx	# a, tmp197
	movslq	%edx, %rcx	# tmp197, tmp196
	movq	%rax, %rdx	# tmp194, tmp198
	salq	$3, %rdx	#, tmp198
	addq	%rax, %rdx	# tmp194, tmp198
	movq	%rcx, %rax	# tmp196, tmp199
	addq	%rax, %rax	# tmp199
	addq	%rcx, %rax	# tmp196, tmp199
	addq	%rdx, %rax	# tmp198, tmp200
	addq	%rdi, %rax	# tmp192, tmp201
	addq	$7, %rax	#, tmp202
	salq	$4, %rax	#, tmp203
	addq	%rsi, %rax	# tmp191, tmp204
	movq	(%rax), %rax	# s_17->link[mu_19].e[a_22][b_25].real, tmpflt.380
	movq	%rax, -720(%rbp)	# tmpflt.380, tmpflt
	.loc 1 3112 0 discriminator 2
	leaq	-720(%rbp), %rax	#, tmp205
	movq	%rax, -656(%rbp)	# tmp205, p32
	.loc 1 3113 0 discriminator 2
	movq	-656(%rbp), %rax	# p32, tmp206
	movl	(%rax), %edx	# *p32_48, D.8305
	movl	-800(%rbp), %eax	# chksum, chksum.381
	addl	%edx, %eax	# D.8305, chksum.382
	movl	%eax, -800(%rbp)	# chksum.382, chksum
	.loc 1 3114 0 discriminator 2
	movq	-696(%rbp), %rsi	# s, tmp207
	movl	-756(%rbp), %eax	# b, tmp209
	movslq	%eax, %rdi	# tmp209, tmp208
	movl	-764(%rbp), %eax	# mu, tmp211
	cltq
	movl	-760(%rbp), %edx	# a, tmp213
	movslq	%edx, %rcx	# tmp213, tmp212
	movq	%rax, %rdx	# tmp210, tmp214
	salq	$3, %rdx	#, tmp214
	addq	%rax, %rdx	# tmp210, tmp214
	movq	%rcx, %rax	# tmp212, tmp215
	addq	%rax, %rax	# tmp215
	addq	%rcx, %rax	# tmp212, tmp215
	addq	%rdx, %rax	# tmp214, tmp216
	addq	%rdi, %rax	# tmp208, tmp217
	addq	$7, %rax	#, tmp218
	salq	$4, %rax	#, tmp219
	addq	%rsi, %rax	# tmp207, tmp220
	addq	$8, %rax	#, tmp221
	movq	(%rax), %rax	# s_17->link[mu_19].e[a_22][b_25].imag, tmpflt.383
	movq	%rax, -720(%rbp)	# tmpflt.383, tmpflt
	.loc 1 3115 0 discriminator 2
	leaq	-720(%rbp), %rax	#, tmp222
	movq	%rax, -656(%rbp)	# tmp222, p32
	.loc 1 3116 0 discriminator 2
	movq	-656(%rbp), %rax	# p32, tmp223
	movl	(%rax), %edx	# *p32_53, D.8305
	movl	-800(%rbp), %eax	# chksum, chksum.384
	addl	%edx, %eax	# D.8305, chksum.385
	movl	%eax, -800(%rbp)	# chksum.385, chksum
	.loc 1 3110 0 discriminator 2
	addl	$1, -756(%rbp)	#, b
.L518:
	.loc 1 3110 0 is_stmt 0 discriminator 1
	cmpl	$2, -756(%rbp)	#, b
	jle	.L519	#,
	.loc 1 3110 0 discriminator 3
	addl	$1, -760(%rbp)	#, a
.L517:
	.loc 1 3110 0 discriminator 1
	cmpl	$1, -760(%rbp)	#, a
	jle	.L520	#,
	.loc 1 3108 0 is_stmt 1
	addl	$1, -764(%rbp)	#, mu
.L516:
	.loc 1 3108 0 is_stmt 0 discriminator 1
	cmpl	$3, -764(%rbp)	#, mu
	jle	.L521	#,
	.loc 1 3107 0 is_stmt 1
	addl	$1, -788(%rbp)	#, i
	addq	$2048, -696(%rbp)	#, s
.L515:
	.loc 1 3107 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.386
	cmpl	%eax, -788(%rbp)	# sites_on_node.386, i
	jl	.L522	#,
	.loc 1 3120 0 is_stmt 1
	leaq	-712(%rbp), %rax	#, tmp224
	movq	%rax, %rdi	# tmp224,
	call	g_doublesum	#
	.loc 1 3121 0
	movsd	-712(%rbp), %xmm1	# trace, trace.387
	movl	volume(%rip), %edx	# volume, volume.388
	movl	%edx, %eax	# volume.388, tmp225
	addl	%eax, %eax	# tmp225
	addl	%edx, %eax	# volume.388, tmp225
	sall	$2, %eax	#, tmp226
	cvtsi2sd	%eax, %xmm0	# D.8306, D.8303
	divsd	%xmm0, %xmm1	# D.8303, tmp227
	movapd	%xmm1, %xmm0	# tmp227, tmp227
	movsd	%xmm0, -648(%rbp)	# tmp227, avgtrace
	.loc 1 3124 0
	movl	$1, -784(%rbp)	#, j
	jmp	.L523	#
.L527:
	.loc 1 3125 0
	movl	this_node(%rip), %eax	# this_node, this_node.389
	testl	%eax, %eax	# this_node.389
	jne	.L524	#,
	.loc 1 3125 0 is_stmt 0 discriminator 1
	movl	-784(%rbp), %edx	# j, tmp228
	leaq	-640(%rbp), %rax	#, tmp229
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	send_field	#
.L524:
	.loc 1 3126 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.390
	cmpl	-784(%rbp), %eax	# j, this_node.390
	jne	.L525	#,
	.loc 1 3127 0
	leaq	-640(%rbp), %rax	#, tmp230
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	get_field	#
	.loc 1 3128 0
	leaq	-800(%rbp), %rax	#, tmp231
	movq	%rax, %rsi	# tmp231,
	movl	$0, %edi	#,
	call	send_integer	#
.L525:
	.loc 1 3130 0
	movl	this_node(%rip), %eax	# this_node, this_node.391
	testl	%eax, %eax	# this_node.391
	jne	.L526	#,
	.loc 1 3131 0
	leaq	-796(%rbp), %rax	#, tmp232
	movq	%rax, %rdi	# tmp232,
	call	receive_integer	#
	.loc 1 3132 0
	movl	-800(%rbp), %edx	# chksum, chksum.392
	movl	-796(%rbp), %eax	# utmp, utmp.393
	addl	%edx, %eax	# chksum.392, chksum.394
	movl	%eax, -800(%rbp)	# chksum.394, chksum
.L526:
	.loc 1 3124 0
	addl	$1, -784(%rbp)	#, j
.L523:
	.loc 1 3124 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	numnodes	#
	cmpl	-784(%rbp), %eax	# j, D.8306
	jg	.L527	#,
	.loc 1 3137 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.395
	testl	%eax, %eax	# this_node.395
	jne	.L528	#,
	.loc 1 3139 0
	movq	-648(%rbp), %rax	# avgtrace, tmp233
	movq	%rax, -816(%rbp)	# tmp233, %sfp
	movsd	-816(%rbp), %xmm0	# %sfp,
	movl	$.LC146, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 3140 0
	movl	-800(%rbp), %eax	# chksum, chksum.396
	movl	%eax, %esi	# chksum.396,
	movl	$.LC147, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 3141 0
	movl	-800(%rbp), %eax	# chksum, chksum.397
	movl	%eax, %esi	# chksum.397,
	movl	$.LC148, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 3142 0
	movq	-664(%rbp), %rax	# avgplaq, tmp234
	movq	%rax, -816(%rbp)	# tmp234, %sfp
	movsd	-816(%rbp), %xmm0	# %sfp,
	movl	$.LC149, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 3144 0
	movq	-808(%rbp), %rax	# filename, tmp235
	movq	%rax, %rsi	# tmp235,
	movl	$.LC150, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 3146 0
	movq	-808(%rbp), %rax	# filename, tmp236
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp236,
	call	fopen	#
	movq	%rax, -704(%rbp)	# tmp237, outfile
	.loc 1 3147 0
	cmpq	$0, -704(%rbp)	#, outfile
	jne	.L529	#,
	.loc 1 3148 0
	movq	-808(%rbp), %rax	# filename, tmp238
	movq	%rax, %rsi	# tmp238,
	movl	$.LC151, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 3149 0
	movl	$1, %edi	#,
	call	terminate	#
.L529:
	.loc 1 3152 0
	movq	-704(%rbp), %rax	# outfile, tmp239
	movq	%rax, %rcx	# tmp239,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC152, %edi	#,
	call	fwrite	#
	.loc 1 3153 0
	movq	-704(%rbp), %rax	# outfile, tmp240
	movq	%rax, %rcx	# tmp240,
	movl	$24, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC153, %edi	#,
	call	fwrite	#
	.loc 1 3154 0
	movl	nx(%rip), %edx	# nx, nx.398
	movq	-704(%rbp), %rax	# outfile, tmp241
	movl	$.LC154, %esi	#,
	movq	%rax, %rdi	# tmp241,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3155 0
	movl	ny(%rip), %edx	# ny, ny.399
	movq	-704(%rbp), %rax	# outfile, tmp242
	movl	$.LC155, %esi	#,
	movq	%rax, %rdi	# tmp242,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3156 0
	movl	nz(%rip), %edx	# nz, nz.400
	movq	-704(%rbp), %rax	# outfile, tmp243
	movl	$.LC156, %esi	#,
	movq	%rax, %rdi	# tmp243,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3157 0
	movl	nt(%rip), %edx	# nt, nt.401
	movq	-704(%rbp), %rax	# outfile, tmp244
	movl	$.LC157, %esi	#,
	movq	%rax, %rdi	# tmp244,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3158 0
	movl	-800(%rbp), %edx	# chksum, chksum.402
	movq	-704(%rbp), %rax	# outfile, tmp245
	movl	$.LC158, %esi	#,
	movq	%rax, %rdi	# tmp245,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3159 0
	movq	-648(%rbp), %rax	# avgtrace, tmp246
	movq	-704(%rbp), %rdx	# outfile, tmp247
	movq	%rax, -816(%rbp)	# tmp246, %sfp
	movsd	-816(%rbp), %xmm0	# %sfp,
	movl	$.LC159, %esi	#,
	movq	%rdx, %rdi	# tmp247,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 3160 0
	movq	-664(%rbp), %rax	# avgplaq, tmp248
	movq	-704(%rbp), %rdx	# outfile, tmp249
	movq	%rax, -816(%rbp)	# tmp248, %sfp
	movsd	-816(%rbp), %xmm0	# %sfp,
	movl	$.LC160, %esi	#,
	movq	%rdx, %rdi	# tmp249,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 3161 0
	movq	-704(%rbp), %rax	# outfile, tmp250
	movl	$ensemble_id, %edx	#,
	movl	$.LC161, %esi	#,
	movq	%rax, %rdi	# tmp250,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3162 0
	movl	sequence_number(%rip), %edx	# sequence_number, sequence_number.403
	movq	-704(%rbp), %rax	# outfile, tmp251
	movl	$.LC162, %esi	#,
	movq	%rax, %rdi	# tmp251,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3164 0
	movq	-704(%rbp), %rax	# outfile, tmp252
	movq	%rax, %rcx	# tmp252,
	movl	$32, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC163, %edi	#,
	call	fwrite	#
	.loc 1 3165 0
	movq	-672(%rbp), %rax	# gh, tmp253
	leaq	4(%rax), %rdx	#, D.8307
	movq	-704(%rbp), %rax	# outfile, tmp254
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# D.8307,
	movl	$.LC19, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp254,
	call	write_gauge_info_item	#
	.loc 1 3166 0
	movq	-680(%rbp), %rax	# gf, tmp255
	movl	44(%rax), %ecx	# gf_31->check.sum31, D.8305
	movq	-680(%rbp), %rax	# gf, tmp256
	movl	48(%rax), %edx	# gf_31->check.sum29, D.8305
	leaq	-64(%rbp), %rax	#, tmp257
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp257,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 3167 0
	leaq	-64(%rbp), %rdx	#, tmp258
	movq	-704(%rbp), %rax	# outfile, tmp259
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# tmp258,
	movl	$.LC19, %edx	#,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp259,
	call	write_gauge_info_item	#
	.loc 1 3168 0
	movq	-704(%rbp), %rax	# outfile, tmp260
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$nx, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp260,
	call	write_gauge_info_item	#
	.loc 1 3169 0
	movq	-704(%rbp), %rax	# outfile, tmp261
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$ny, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp261,
	call	write_gauge_info_item	#
	.loc 1 3170 0
	movq	-704(%rbp), %rax	# outfile, tmp262
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$nz, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp262,
	call	write_gauge_info_item	#
	.loc 1 3171 0
	movq	-704(%rbp), %rax	# outfile, tmp263
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$nt, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp263,
	call	write_gauge_info_item	#
	.loc 1 3172 0
	movq	-704(%rbp), %rax	# outfile, tmp264
	movq	%rax, %rdi	# tmp264,
	call	write_appl_gauge_info	#
	.loc 1 3173 0
	movq	-704(%rbp), %rax	# outfile, tmp265
	movq	%rax, %rcx	# tmp265,
	movl	$32, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC164, %edi	#,
	call	fwrite	#
	.loc 1 3174 0
	movq	-704(%rbp), %rax	# outfile, tmp266
	movq	%rax, %rcx	# tmp266,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	fwrite	#
	.loc 1 3176 0
	movl	nx(%rip), %edx	# nx, nx.404
	movl	ny(%rip), %eax	# ny, ny.405
	imull	%eax, %edx	# ny.405, D.8306
	movl	nz(%rip), %eax	# nz, nz.406
	imull	%edx, %eax	# D.8306, tmp267
	movl	%eax, -752(%rbp)	# tmp267, vol3
	.loc 1 3177 0
	movl	-752(%rbp), %edx	# vol3, tmp268
	movl	%edx, %eax	# tmp268, tmp269
	addl	%eax, %eax	# tmp269
	addl	%edx, %eax	# tmp268, tmp269
	sall	$4, %eax	#, tmp270
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.8308,
	call	calloc	#
	movq	%rax, -688(%rbp)	# tmp271, uout
	.loc 1 3178 0
	cmpq	$0, -688(%rbp)	#, uout
	jne	.L528	#,
	.loc 1 3179 0
	movl	$.LC165, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	terminate	#
.L528:
	.loc 1 3185 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 3186 0
	movl	$0, -792(%rbp)	#, currentnode
	.loc 1 3188 0
	movl	$0, -748(%rbp)	#, tslice
	jmp	.L530	#
.L561:
	.loc 1 3189 0
	movl	$0, -784(%rbp)	#, j
	.loc 1 3190 0
	movl	$0, -772(%rbp)	#, z
	jmp	.L531	#
.L557:
	.loc 1 3190 0 is_stmt 0 discriminator 2
	movl	$0, -776(%rbp)	#, y
	jmp	.L532	#
.L556:
	movl	$0, -780(%rbp)	#, x
	jmp	.L533	#
.L555:
	.loc 1 3191 0 is_stmt 1
	movl	-748(%rbp), %ecx	# tslice, tmp272
	movl	-772(%rbp), %edx	# z, tmp273
	movl	-776(%rbp), %esi	# y, tmp274
	movl	-780(%rbp), %eax	# x, tmp275
	movl	%eax, %edi	# tmp275,
	call	node_number	#
	movl	%eax, -740(%rbp)	# tmp276, newnode
	.loc 1 3192 0
	movl	-740(%rbp), %eax	# newnode, tmp277
	cmpl	-792(%rbp), %eax	# currentnode, tmp277
	je	.L534	#,
	.loc 1 3194 0
	movl	this_node(%rip), %eax	# this_node, this_node.407
	testl	%eax, %eax	# this_node.407
	jne	.L535	#,
	.loc 1 3194 0 is_stmt 0 discriminator 1
	cmpl	$0, -740(%rbp)	#, newnode
	je	.L535	#,
	movl	-740(%rbp), %edx	# newnode, tmp278
	leaq	-640(%rbp), %rax	#, tmp279
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp279,
	call	send_field	#
.L535:
	.loc 1 3195 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.408
	cmpl	-740(%rbp), %eax	# newnode, this_node.408
	jne	.L536	#,
	.loc 1 3195 0 is_stmt 0 discriminator 1
	cmpl	$0, -740(%rbp)	#, newnode
	je	.L536	#,
	leaq	-640(%rbp), %rax	#, tmp280
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp280,
	call	get_field	#
.L536:
	.loc 1 3196 0 is_stmt 1
	movl	-740(%rbp), %eax	# newnode, tmp281
	movl	%eax, -792(%rbp)	# tmp281, currentnode
.L534:
	.loc 1 3199 0
	movl	this_node(%rip), %eax	# this_node, this_node.409
	testl	%eax, %eax	# this_node.409
	jne	.L537	#,
	.loc 1 3200 0
	cmpl	$0, -792(%rbp)	#, currentnode
	jne	.L538	#,
	.loc 1 3201 0
	movq	lattice(%rip), %rbx	# lattice, lattice.410
	movl	-748(%rbp), %ecx	# tslice, tmp282
	movl	-772(%rbp), %edx	# z, tmp283
	movl	-776(%rbp), %esi	# y, tmp284
	movl	-780(%rbp), %eax	# x, tmp285
	movl	%eax, %edi	# tmp285,
	call	node_index	#
	cltq
	salq	$11, %rax	#, D.8308
	addq	%rbx, %rax	# lattice.410, tmp286
	movq	%rax, -696(%rbp)	# tmp286, s
	.loc 1 3202 0
	movl	$0, -764(%rbp)	#, mu
	jmp	.L539	#
.L544:
	.loc 1 3203 0
	movl	$0, -760(%rbp)	#, a
	jmp	.L540	#
.L543:
	.loc 1 3204 0
	movl	$0, -756(%rbp)	#, b
	jmp	.L541	#
.L542:
	.loc 1 3205 0 discriminator 2
	movl	-760(%rbp), %edx	# a, tmp287
	movl	%edx, %eax	# tmp287, tmp288
	addl	%eax, %eax	# tmp288
	addl	%eax, %edx	# tmp288, D.8306
	movl	-756(%rbp), %eax	# b, tmp289
	leal	(%rdx,%rax), %ecx	#, D.8306
	movl	-764(%rbp), %edx	# mu, tmp290
	movl	%edx, %eax	# tmp290, tmp291
	addl	%eax, %eax	# tmp291
	addl	%edx, %eax	# tmp290, tmp291
	addl	%eax, %eax	# tmp292
	addl	%eax, %ecx	# D.8306, D.8306
	movl	-784(%rbp), %edx	# j, tmp293
	movl	%edx, %eax	# tmp293, tmp294
	addl	%eax, %eax	# tmp294
	addl	%edx, %eax	# tmp293, tmp294
	sall	$3, %eax	#, tmp295
	addl	%ecx, %eax	# D.8306, D.8306
	cltq
	salq	$4, %rax	#, D.8308
	movq	%rax, %rdx	# D.8308, D.8308
	movq	-688(%rbp), %rax	# uout, tmp296
	leaq	(%rdx,%rax), %rsi	#, D.8309
	.loc 1 3206 0 discriminator 2
	movq	-696(%rbp), %rdi	# s, tmp297
	movl	-756(%rbp), %eax	# b, tmp299
	movslq	%eax, %r8	# tmp299, tmp298
	movl	-764(%rbp), %eax	# mu, tmp301
	cltq
	movl	-760(%rbp), %edx	# a, tmp303
	movslq	%edx, %rcx	# tmp303, tmp302
	movq	%rax, %rdx	# tmp300, tmp304
	salq	$3, %rdx	#, tmp304
	addq	%rax, %rdx	# tmp300, tmp304
	movq	%rcx, %rax	# tmp302, tmp305
	addq	%rax, %rax	# tmp305
	addq	%rcx, %rax	# tmp302, tmp305
	addq	%rdx, %rax	# tmp304, tmp306
	addq	%r8, %rax	# tmp298, tmp307
	addq	$7, %rax	#, tmp308
	salq	$4, %rax	#, tmp309
	addq	%rdi, %rax	# tmp297, tmp310
	movq	(%rax), %rax	# s_120->link[mu_20].e[a_23][b_26].real, D.8303
	movq	%rax, (%rsi)	# D.8303, *_132
	.loc 1 3207 0 discriminator 2
	movl	-760(%rbp), %edx	# a, tmp311
	movl	%edx, %eax	# tmp311, tmp312
	addl	%eax, %eax	# tmp312
	addl	%eax, %edx	# tmp312, D.8306
	movl	-756(%rbp), %eax	# b, tmp313
	addl	%edx, %eax	# D.8306, D.8306
	addl	%eax, %eax	# D.8306
	leal	1(%rax), %ecx	#, D.8306
	movl	-764(%rbp), %edx	# mu, tmp314
	movl	%edx, %eax	# tmp314, tmp315
	addl	%eax, %eax	# tmp315
	addl	%edx, %eax	# tmp314, tmp315
	sall	$2, %eax	#, tmp316
	addl	%eax, %ecx	# D.8306, D.8306
	movl	-784(%rbp), %edx	# j, tmp317
	movl	%edx, %eax	# tmp317, tmp318
	addl	%eax, %eax	# tmp318
	addl	%edx, %eax	# tmp317, tmp318
	sall	$4, %eax	#, tmp319
	addl	%ecx, %eax	# D.8306, D.8306
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8308
	movq	-688(%rbp), %rax	# uout, tmp320
	leaq	(%rdx,%rax), %rsi	#, D.8309
	.loc 1 3208 0 discriminator 2
	movq	-696(%rbp), %rdi	# s, tmp321
	movl	-756(%rbp), %eax	# b, tmp323
	movslq	%eax, %r8	# tmp323, tmp322
	movl	-764(%rbp), %eax	# mu, tmp325
	cltq
	movl	-760(%rbp), %edx	# a, tmp327
	movslq	%edx, %rcx	# tmp327, tmp326
	movq	%rax, %rdx	# tmp324, tmp328
	salq	$3, %rdx	#, tmp328
	addq	%rax, %rdx	# tmp324, tmp328
	movq	%rcx, %rax	# tmp326, tmp329
	addq	%rax, %rax	# tmp329
	addq	%rcx, %rax	# tmp326, tmp329
	addq	%rdx, %rax	# tmp328, tmp330
	addq	%r8, %rax	# tmp322, tmp331
	addq	$7, %rax	#, tmp332
	salq	$4, %rax	#, tmp333
	addq	%rdi, %rax	# tmp321, tmp334
	addq	$8, %rax	#, tmp335
	movq	(%rax), %rax	# s_120->link[mu_20].e[a_23][b_26].imag, D.8303
	movq	%rax, (%rsi)	# D.8303, *_144
	.loc 1 3204 0 discriminator 2
	addl	$1, -756(%rbp)	#, b
.L541:
	.loc 1 3204 0 is_stmt 0 discriminator 1
	cmpl	$2, -756(%rbp)	#, b
	jle	.L542	#,
	.loc 1 3203 0 is_stmt 1
	addl	$1, -760(%rbp)	#, a
.L540:
	.loc 1 3203 0 is_stmt 0 discriminator 1
	cmpl	$1, -760(%rbp)	#, a
	jle	.L543	#,
	.loc 1 3202 0 is_stmt 1
	addl	$1, -764(%rbp)	#, mu
.L539:
	.loc 1 3202 0 is_stmt 0 discriminator 1
	cmpl	$3, -764(%rbp)	#, mu
	jle	.L544	#,
	jmp	.L545	#
.L538:
	.loc 1 3214 0 is_stmt 1
	leaq	-640(%rbp), %rax	#, tmp336
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp336,
	call	get_field	#
	.loc 1 3215 0
	movl	$0, -764(%rbp)	#, mu
	jmp	.L546	#
.L551:
	.loc 1 3216 0
	movl	$0, -760(%rbp)	#, a
	jmp	.L547	#
.L550:
	.loc 1 3217 0
	movl	$0, -756(%rbp)	#, b
	jmp	.L548	#
.L549:
	.loc 1 3218 0 discriminator 2
	movl	-760(%rbp), %edx	# a, tmp337
	movl	%edx, %eax	# tmp337, tmp338
	addl	%eax, %eax	# tmp338
	addl	%eax, %edx	# tmp338, D.8306
	movl	-756(%rbp), %eax	# b, tmp339
	leal	(%rdx,%rax), %ecx	#, D.8306
	movl	-764(%rbp), %edx	# mu, tmp340
	movl	%edx, %eax	# tmp340, tmp341
	addl	%eax, %eax	# tmp341
	addl	%edx, %eax	# tmp340, tmp341
	addl	%eax, %eax	# tmp342
	addl	%eax, %ecx	# D.8306, D.8306
	movl	-784(%rbp), %edx	# j, tmp343
	movl	%edx, %eax	# tmp343, tmp344
	addl	%eax, %eax	# tmp344
	addl	%edx, %eax	# tmp343, tmp344
	sall	$3, %eax	#, tmp345
	addl	%ecx, %eax	# D.8306, D.8306
	cltq
	salq	$4, %rax	#, D.8308
	movq	%rax, %rdx	# D.8308, D.8308
	movq	-688(%rbp), %rax	# uout, tmp346
	leaq	(%rdx,%rax), %rsi	#, D.8309
	.loc 1 3219 0 discriminator 2
	movl	-756(%rbp), %eax	# b, tmp348
	movslq	%eax, %rdi	# tmp348, tmp347
	movl	-764(%rbp), %eax	# mu, tmp350
	cltq
	movl	-760(%rbp), %edx	# a, tmp352
	movslq	%edx, %rcx	# tmp352, tmp351
	movq	%rax, %rdx	# tmp349, tmp353
	salq	$3, %rdx	#, tmp353
	addq	%rax, %rdx	# tmp349, tmp353
	movq	%rcx, %rax	# tmp351, tmp354
	addq	%rax, %rax	# tmp354
	addq	%rcx, %rax	# tmp351, tmp354
	addq	%rdx, %rax	# tmp353, tmp355
	addq	%rdi, %rax	# tmp347, tmp356
	salq	$4, %rax	#, tmp357
	leaq	-16(%rbp), %rbx	#, tmp431
	addq	%rbx, %rax	# tmp431, tmp358
	subq	$624, %rax	#, tmp359
	movq	(%rax), %rax	# lbuf[mu_21].e[a_24][b_27].real, D.8303
	movq	%rax, (%rsi)	# D.8303, *_160
	.loc 1 3220 0 discriminator 2
	movl	-760(%rbp), %edx	# a, tmp360
	movl	%edx, %eax	# tmp360, tmp361
	addl	%eax, %eax	# tmp361
	addl	%eax, %edx	# tmp361, D.8306
	movl	-756(%rbp), %eax	# b, tmp362
	addl	%edx, %eax	# D.8306, D.8306
	addl	%eax, %eax	# D.8306
	leal	1(%rax), %ecx	#, D.8306
	movl	-764(%rbp), %edx	# mu, tmp363
	movl	%edx, %eax	# tmp363, tmp364
	addl	%eax, %eax	# tmp364
	addl	%edx, %eax	# tmp363, tmp364
	sall	$2, %eax	#, tmp365
	addl	%eax, %ecx	# D.8306, D.8306
	movl	-784(%rbp), %edx	# j, tmp366
	movl	%edx, %eax	# tmp366, tmp367
	addl	%eax, %eax	# tmp367
	addl	%edx, %eax	# tmp366, tmp367
	sall	$4, %eax	#, tmp368
	addl	%ecx, %eax	# D.8306, D.8306
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8308
	movq	-688(%rbp), %rax	# uout, tmp369
	leaq	(%rdx,%rax), %rsi	#, D.8309
	.loc 1 3221 0 discriminator 2
	movl	-756(%rbp), %eax	# b, tmp371
	movslq	%eax, %rdi	# tmp371, tmp370
	movl	-764(%rbp), %eax	# mu, tmp373
	cltq
	movl	-760(%rbp), %edx	# a, tmp375
	movslq	%edx, %rcx	# tmp375, tmp374
	movq	%rax, %rdx	# tmp372, tmp376
	salq	$3, %rdx	#, tmp376
	addq	%rax, %rdx	# tmp372, tmp376
	movq	%rcx, %rax	# tmp374, tmp377
	addq	%rax, %rax	# tmp377
	addq	%rcx, %rax	# tmp374, tmp377
	addq	%rdx, %rax	# tmp376, tmp378
	addq	%rdi, %rax	# tmp370, tmp379
	salq	$4, %rax	#, tmp380
	leaq	-16(%rbp), %rbx	#, tmp432
	addq	%rbx, %rax	# tmp432, tmp381
	subq	$616, %rax	#, tmp382
	movq	(%rax), %rax	# lbuf[mu_21].e[a_24][b_27].imag, D.8303
	movq	%rax, (%rsi)	# D.8303, *_172
	.loc 1 3217 0 discriminator 2
	addl	$1, -756(%rbp)	#, b
.L548:
	.loc 1 3217 0 is_stmt 0 discriminator 1
	cmpl	$2, -756(%rbp)	#, b
	jle	.L549	#,
	.loc 1 3216 0 is_stmt 1
	addl	$1, -760(%rbp)	#, a
.L547:
	.loc 1 3216 0 is_stmt 0 discriminator 1
	cmpl	$1, -760(%rbp)	#, a
	jle	.L550	#,
	.loc 1 3215 0 is_stmt 1
	addl	$1, -764(%rbp)	#, mu
.L546:
	.loc 1 3215 0 is_stmt 0 discriminator 1
	cmpl	$3, -764(%rbp)	#, mu
	jle	.L551	#,
.L545:
	.loc 1 3226 0 is_stmt 1 discriminator 1
	addl	$1, -784(%rbp)	#, j
	jmp	.L552	#
.L537:
	.loc 1 3229 0
	movl	this_node(%rip), %eax	# this_node, this_node.411
	cmpl	-792(%rbp), %eax	# currentnode, this_node.411
	jne	.L552	#,
	.loc 1 3230 0
	movl	-748(%rbp), %ecx	# tslice, tmp383
	movl	-772(%rbp), %edx	# z, tmp384
	movl	-776(%rbp), %esi	# y, tmp385
	movl	-780(%rbp), %eax	# x, tmp386
	movl	%eax, %edi	# tmp386,
	call	node_index	#
	movl	%eax, -788(%rbp)	# tmp387, i
	.loc 1 3231 0
	movl	$0, -768(%rbp)	#, dir
	jmp	.L553	#
.L554:
	.loc 1 3231 0 is_stmt 0 discriminator 2
	movq	lattice(%rip), %rax	# lattice, lattice.412
	movl	-788(%rbp), %edx	# i, tmp388
	movslq	%edx, %rdx	# tmp388, D.8308
	salq	$11, %rdx	#, D.8308
	leaq	(%rax,%rdx), %rsi	#, D.8310
	movl	-768(%rbp), %eax	# dir, tmp390
	movslq	%eax, %rdx	# tmp390, tmp389
	movq	%rdx, %rax	# tmp389, tmp391
	salq	$3, %rax	#, tmp391
	addq	%rdx, %rax	# tmp389, tmp391
	salq	$4, %rax	#, tmp392
	leaq	-16(%rbp), %rbx	#, tmp433
	addq	%rbx, %rax	# tmp433, tmp393
	leaq	-624(%rax), %rcx	#, tmp394
	movl	-768(%rbp), %eax	# dir, tmp396
	movslq	%eax, %rdx	# tmp396, tmp395
	movq	%rdx, %rax	# tmp395, tmp397
	salq	$3, %rax	#, tmp397
	addq	%rdx, %rax	# tmp395, tmp397
	salq	$4, %rax	#, tmp398
	addq	%rsi, %rax	# D.8310, tmp399
	addq	$112, %rax	#, tmp400
	movq	%rcx, %rdx	# tmp394, tmp401
	movq	%rax, %rsi	# tmp400, tmp402
	movl	$18, %eax	#, tmp403
	movq	%rdx, %rdi	# tmp401, tmp401
	movq	%rax, %rcx	# tmp403, tmp403
	rep movsq
	addl	$1, -768(%rbp)	#, dir
.L553:
	.loc 1 3231 0 discriminator 1
	cmpl	$3, -768(%rbp)	#, dir
	jle	.L554	#,
	.loc 1 3232 0 is_stmt 1
	leaq	-640(%rbp), %rax	#, tmp404
	movl	$0, %edx	#,
	movl	$576, %esi	#,
	movq	%rax, %rdi	# tmp404,
	call	send_field	#
.L552:
	.loc 1 3190 0
	addl	$1, -780(%rbp)	#, x
.L533:
	.loc 1 3190 0 is_stmt 0 discriminator 1
	movl	nx(%rip), %eax	# nx, nx.413
	cmpl	%eax, -780(%rbp)	# nx.413, x
	jl	.L555	#,
	.loc 1 3190 0 discriminator 2
	addl	$1, -776(%rbp)	#, y
.L532:
	.loc 1 3190 0 discriminator 1
	movl	ny(%rip), %eax	# ny, ny.414
	cmpl	%eax, -776(%rbp)	# ny.414, y
	jl	.L556	#,
	.loc 1 3190 0 discriminator 3
	addl	$1, -772(%rbp)	#, z
.L531:
	.loc 1 3190 0 discriminator 1
	movl	nz(%rip), %eax	# nz, nz.415
	cmpl	%eax, -772(%rbp)	# nz.415, z
	jl	.L557	#,
	.loc 1 3237 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.416
	testl	%eax, %eax	# this_node.416
	jne	.L558	#,
	.loc 1 3238 0
	cmpl	$0, -744(%rbp)	#, big_end_p
	jne	.L559	#,
	.loc 1 3238 0 is_stmt 0 discriminator 1
	movl	-752(%rbp), %edx	# vol3, tmp405
	movl	%edx, %eax	# tmp405, tmp406
	addl	%eax, %eax	# tmp406
	addl	%edx, %eax	# tmp405, tmp406
	sall	$4, %eax	#, tmp407
	movl	%eax, %edx	# tmp406, D.8306
	movq	-688(%rbp), %rax	# uout, tmp408
	movl	%edx, %esi	# D.8306,
	movq	%rax, %rdi	# tmp408,
	call	byterevn	#
.L559:
	.loc 1 3239 0 is_stmt 1
	movl	-752(%rbp), %eax	# vol3, tmp409
	movslq	%eax, %rdx	# tmp409, D.8308
	movq	%rdx, %rax	# D.8308, tmp410
	addq	%rax, %rax	# tmp410
	addq	%rdx, %rax	# D.8308, tmp410
	salq	$7, %rax	#, tmp411
	movq	%rax, %rsi	# tmp410, D.8308
	movq	-704(%rbp), %rdx	# outfile, tmp412
	movq	-688(%rbp), %rax	# uout, tmp413
	movq	%rdx, %rcx	# tmp412,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp413,
	call	fwrite	#
	cmpq	$1, %rax	#, D.8308
	je	.L560	#,
	.loc 1 3240 0
	movl	$.LC166, %edi	#,
	call	puts	#
.L560:
	.loc 1 3241 0
	movq	-704(%rbp), %rax	# outfile, tmp414
	movq	%rax, %rdi	# tmp414,
	call	fflush	#
.L558:
	.loc 1 3188 0
	addl	$1, -748(%rbp)	#, tslice
.L530:
	.loc 1 3188 0 is_stmt 0 discriminator 1
	movl	nt(%rip), %eax	# nt, nt.417
	cmpl	%eax, -748(%rbp)	# nt.417, tslice
	jl	.L561	#,
	.loc 1 3245 0 is_stmt 1
	movl	this_node(%rip), %eax	# this_node, this_node.418
	testl	%eax, %eax	# this_node.418
	jne	.L562	#,
	.loc 1 3246 0
	movq	-704(%rbp), %rax	# outfile, tmp415
	movq	%rax, %rdi	# tmp415,
	call	fclose	#
	.loc 1 3247 0
	movq	-808(%rbp), %rax	# filename, tmp416
	movq	%rax, %rsi	# tmp416,
	movl	$.LC167, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 3248 0
	movq	-688(%rbp), %rax	# uout, tmp417
	movq	%rax, %rdi	# tmp417,
	call	free	#
.L562:
	.loc 1 3251 0
	movl	$0, %eax	#,
	call	g_sync	#
	.loc 1 3252 0
	movq	-680(%rbp), %rax	# gf, D.8311
	.loc 1 3253 0
	movq	-24(%rbp), %rbx	# D.8312, tmp420
	xorq	%fs:40, %rbx	#, tmp420
	je	.L564	#,
	call	__stack_chk_fail	#
.L564:
	addq	$808, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	save_serial_archive, .-save_serial_archive
	.section	.rodata
	.align 8
.LC168:
	.string	"Parallel archive saves are not implemented, yet"
	.text
	.globl	save_parallel_archive
	.type	save_parallel_archive, @function
save_parallel_archive:
.LFB58:
	.loc 1 3256 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# filename, filename
	.loc 1 3258 0
	movl	$.LC168, %edi	#,
	call	puts	#
	.loc 1 3259 0
	movl	$0, %eax	#, D.8335
	.loc 1 3260 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	save_parallel_archive, .-save_parallel_archive
	.section	.rodata
	.align 8
.LC145:
	.long	0
	.long	1075314688
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/time.h"
	.file 7 "complex.h"
	.file 8 "random.h"
	.file 9 "su3.h"
	.file 10 "int32type.h"
	.file 11 "./io_lat.h"
	.file 12 "./lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x29ee
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF237
	.byte	0x1
	.long	.LASF238
	.long	.LASF239
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x94
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x30
	.long	0xb2
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x233
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfc
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfd
	.long	0x9a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfe
	.long	0x9a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xff
	.long	0x9a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x100
	.long	0x9a
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x101
	.long	0x9a
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x102
	.long	0x9a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x103
	.long	0x9a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x105
	.long	0x9a
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x106
	.long	0x9a
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x107
	.long	0x9a
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x109
	.long	0x26b
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10b
	.long	0x271
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x119
	.long	0x277
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x11d
	.long	0x287
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.long	0x98
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.long	0x98
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x131
	.long	0x98
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x132
	.long	0x98
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x137
	.long	0x28d
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF240
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x26b
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa2
	.long	0x26b
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa3
	.long	0x271
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23a
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0xb
	.long	0xa0
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x233
	.uleb128 0xb
	.long	0xa0
	.long	0x29d
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x4
	.byte	0x5a
	.long	0x70
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x4b
	.long	0x8d
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF51
	.uleb128 0xb
	.long	0xa0
	.long	0x2d7
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF52
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF53
	.uleb128 0xd
	.byte	0x10
	.byte	0x7
	.byte	0x49
	.long	0x306
	.uleb128 0x8
	.long	.LASF54
	.byte	0x7
	.byte	0x4a
	.long	0x2de
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x4b
	.long	0x2de
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x4c
	.long	0x2e5
	.uleb128 0xd
	.byte	0x58
	.byte	0x8
	.byte	0x6
	.long	0x397
	.uleb128 0xe
	.string	"r0"
	.byte	0x8
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x8
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x8
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x8
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x8
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x8
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x8
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF57
	.byte	0x8
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF58
	.byte	0x8
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF59
	.byte	0x8
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0xa
	.long	0x2de
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x8
	.byte	0xb
	.long	0x311
	.uleb128 0xd
	.byte	0x90
	.byte	0x9
	.byte	0xe
	.long	0x3b5
	.uleb128 0xe
	.string	"e"
	.byte	0x9
	.byte	0xe
	.long	0x3b5
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x306
	.long	0x3cb
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x9
	.byte	0xe
	.long	0x3a2
	.uleb128 0xd
	.byte	0x30
	.byte	0x9
	.byte	0xf
	.long	0x3e9
	.uleb128 0xe
	.string	"c"
	.byte	0x9
	.byte	0xf
	.long	0x3e9
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x306
	.long	0x3f9
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x9
	.byte	0xf
	.long	0x3d6
	.uleb128 0xd
	.byte	0x50
	.byte	0x9
	.byte	0x10
	.long	0x461
	.uleb128 0xe
	.string	"m01"
	.byte	0x9
	.byte	0x11
	.long	0x306
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x9
	.byte	0x11
	.long	0x306
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x9
	.byte	0x11
	.long	0x306
	.byte	0x20
	.uleb128 0x8
	.long	.LASF64
	.byte	0x9
	.byte	0x11
	.long	0x2de
	.byte	0x30
	.uleb128 0x8
	.long	.LASF65
	.byte	0x9
	.byte	0x11
	.long	0x2de
	.byte	0x38
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0x11
	.long	0x2de
	.byte	0x40
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x11
	.long	0x2de
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x9
	.byte	0x11
	.long	0x404
	.uleb128 0xb
	.long	0x3f9
	.long	0x47c
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0xa
	.byte	0x1f
	.long	0x62
	.uleb128 0x2
	.long	.LASF70
	.byte	0xa
	.byte	0x20
	.long	0x4d
	.uleb128 0xb
	.long	0xa0
	.long	0x4a2
	.uleb128 0xc
	.long	0x86
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.byte	0x5c
	.byte	0xb
	.byte	0x41
	.long	0x4e7
	.uleb128 0x8
	.long	.LASF71
	.byte	0xb
	.byte	0x42
	.long	0x47c
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0xb
	.byte	0x43
	.long	0x4e7
	.byte	0x4
	.uleb128 0x8
	.long	.LASF73
	.byte	0xb
	.byte	0x47
	.long	0x4f7
	.byte	0x44
	.uleb128 0x8
	.long	.LASF74
	.byte	0xb
	.byte	0x48
	.long	0x47c
	.byte	0x54
	.uleb128 0x8
	.long	.LASF75
	.byte	0xb
	.byte	0x4a
	.long	0x47c
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0x4f7
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x47c
	.long	0x507
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0xb
	.byte	0x50
	.long	0x4a2
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x60
	.long	0x533
	.uleb128 0x8
	.long	.LASF77
	.byte	0xb
	.byte	0x61
	.long	0x487
	.byte	0
	.uleb128 0x8
	.long	.LASF78
	.byte	0xb
	.byte	0x62
	.long	0x487
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF79
	.byte	0xb
	.byte	0x63
	.long	0x512
	.uleb128 0xb
	.long	0xa0
	.long	0x54e
	.uleb128 0xc
	.long	0x86
	.byte	0xc7
	.byte	0
	.uleb128 0xb
	.long	0x2de
	.long	0x55e
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x18
	.byte	0xb
	.byte	0xd5
	.long	0x58b
	.uleb128 0x8
	.long	.LASF80
	.byte	0xb
	.byte	0xd6
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xb
	.byte	0xd7
	.long	0x58b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0xd8
	.long	0x58b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9a
	.uleb128 0x2
	.long	.LASF83
	.byte	0xb
	.byte	0xd9
	.long	0x55e
	.uleb128 0xd
	.byte	0x38
	.byte	0xb
	.byte	0xfe
	.long	0x5fe
	.uleb128 0xe
	.string	"fp"
	.byte	0xb
	.byte	0xff
	.long	0x5fe
	.byte	0
	.uleb128 0x9
	.long	.LASF84
	.byte	0xb
	.value	0x100
	.long	0x604
	.byte	0x8
	.uleb128 0x9
	.long	.LASF85
	.byte	0xb
	.value	0x101
	.long	0x9a
	.byte	0x10
	.uleb128 0x9
	.long	.LASF86
	.byte	0xb
	.value	0x102
	.long	0x62
	.byte	0x18
	.uleb128 0x9
	.long	.LASF87
	.byte	0xb
	.value	0x103
	.long	0x60a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF88
	.byte	0xb
	.value	0x105
	.long	0x62
	.byte	0x28
	.uleb128 0x9
	.long	.LASF89
	.byte	0xb
	.value	0x107
	.long	0x533
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0x6
	.byte	0x8
	.long	0x507
	.uleb128 0x6
	.byte	0x8
	.long	0x47c
	.uleb128 0xf
	.long	.LASF90
	.byte	0xb
	.value	0x108
	.long	0x59c
	.uleb128 0x10
	.value	0x800
	.byte	0xc
	.byte	0x1f
	.long	0x733
	.uleb128 0xe
	.string	"x"
	.byte	0xc
	.byte	0x22
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0xc
	.byte	0x22
	.long	0x5b
	.byte	0x2
	.uleb128 0xe
	.string	"z"
	.byte	0xc
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xe
	.string	"t"
	.byte	0xc
	.byte	0x22
	.long	0x5b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF91
	.byte	0xc
	.byte	0x24
	.long	0xa0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF92
	.byte	0xc
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF93
	.byte	0xc
	.byte	0x29
	.long	0x397
	.byte	0x10
	.uleb128 0x8
	.long	.LASF94
	.byte	0xc
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF95
	.byte	0xc
	.byte	0x32
	.long	0x733
	.byte	0x70
	.uleb128 0x11
	.string	"mom"
	.byte	0xc
	.byte	0x3e
	.long	0x743
	.value	0x2b0
	.uleb128 0x12
	.long	.LASF96
	.byte	0xc
	.byte	0x42
	.long	0x753
	.value	0x3f0
	.uleb128 0x11
	.string	"phi"
	.byte	0xc
	.byte	0x45
	.long	0x3f9
	.value	0x410
	.uleb128 0x12
	.long	.LASF97
	.byte	0xc
	.byte	0x46
	.long	0x3f9
	.value	0x440
	.uleb128 0x12
	.long	.LASF98
	.byte	0xc
	.byte	0x47
	.long	0x3f9
	.value	0x470
	.uleb128 0x11
	.string	"xxx"
	.byte	0xc
	.byte	0x48
	.long	0x3f9
	.value	0x4a0
	.uleb128 0x11
	.string	"ttt"
	.byte	0xc
	.byte	0x49
	.long	0x3f9
	.value	0x4d0
	.uleb128 0x12
	.long	.LASF99
	.byte	0xc
	.byte	0x4a
	.long	0x3f9
	.value	0x500
	.uleb128 0x12
	.long	.LASF100
	.byte	0xc
	.byte	0x5d
	.long	0x46c
	.value	0x530
	.uleb128 0x12
	.long	.LASF101
	.byte	0xc
	.byte	0x5f
	.long	0x46c
	.value	0x5f0
	.uleb128 0x12
	.long	.LASF102
	.byte	0xc
	.byte	0x60
	.long	0x3f9
	.value	0x6b0
	.uleb128 0x12
	.long	.LASF103
	.byte	0xc
	.byte	0x62
	.long	0x3cb
	.value	0x6e0
	.uleb128 0x12
	.long	.LASF104
	.byte	0xc
	.byte	0x62
	.long	0x3cb
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x3cb
	.long	0x743
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x461
	.long	0x753
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x2de
	.long	0x763
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF105
	.byte	0xc
	.byte	0x63
	.long	0x61c
	.uleb128 0x2
	.long	.LASF106
	.byte	0x1
	.byte	0x54
	.long	0x2de
	.uleb128 0x13
	.long	.LASF107
	.byte	0x1
	.byte	0x64
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x7cd
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x64
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"hdr"
	.byte	0x1
	.byte	0x64
	.long	0x7cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x64
	.long	0x58b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x66
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x591
	.uleb128 0x13
	.long	.LASF108
	.byte	0x1
	.byte	0x71
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x827
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x71
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"hdr"
	.byte	0x1
	.byte	0x71
	.long	0x7cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x71
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x72
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF109
	.byte	0x1
	.byte	0x78
	.long	0x62
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x887
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x78
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"hdr"
	.byte	0x1
	.byte	0x78
	.long	0x7cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x78
	.long	0x887
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x79
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0x7a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x487
	.uleb128 0x13
	.long	.LASF110
	.byte	0x1
	.byte	0x81
	.long	0x62
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e1
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x81
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"hdr"
	.byte	0x1
	.byte	0x81
	.long	0x7cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"q"
	.byte	0x1
	.byte	0x81
	.long	0x8e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0x82
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2de
	.uleb128 0x16
	.long	.LASF111
	.byte	0x1
	.byte	0x89
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x911
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x89
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF112
	.byte	0x1
	.byte	0x8b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x93b
	.uleb128 0x14
	.string	"u"
	.byte	0x1
	.byte	0x8b
	.long	0x8e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF113
	.byte	0x1
	.byte	0x95
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x984
	.uleb128 0x19
	.byte	0x8
	.byte	0x1
	.byte	0x96
	.long	0x977
	.uleb128 0x1a
	.string	"l"
	.byte	0x1
	.byte	0x97
	.long	0x69
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x98
	.long	0x2c7
	.byte	0
	.uleb128 0x15
	.string	"u"
	.byte	0x1
	.byte	0x99
	.long	0x95c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x13
	.long	.LASF114
	.byte	0x1
	.byte	0x9e
	.long	0x7cd
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa26
	.uleb128 0x14
	.string	"in"
	.byte	0x1
	.byte	0x9e
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.byte	0xa2
	.long	0xa26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x15
	.string	"hdr"
	.byte	0x1
	.byte	0xa4
	.long	0x7cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.byte	0xa5
	.long	0x58b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x1
	.byte	0xa5
	.long	0x58b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xa6
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.byte	0xa6
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0xa37
	.uleb128 0x1c
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x16
	.long	.LASF118
	.byte	0x1
	.byte	0xd7
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6f
	.uleb128 0x14
	.string	"hdr"
	.byte	0x1
	.byte	0xd7
	.long	0x7cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xd8
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF119
	.byte	0x1
	.byte	0xe7
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xad2
	.uleb128 0x14
	.string	"fp"
	.byte	0x1
	.byte	0xe7
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0xe7
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x1
	.byte	0xe7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF121
	.byte	0x1
	.byte	0xe7
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x1
	.byte	0xe7
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x16
	.long	.LASF123
	.byte	0x1
	.byte	0xf2
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xb35
	.uleb128 0x14
	.string	"fp"
	.byte	0x1
	.byte	0xf2
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0xf2
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x1
	.byte	0xf2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF121
	.byte	0x1
	.byte	0xf2
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x1
	.byte	0xf2
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x16
	.long	.LASF124
	.byte	0x1
	.byte	0xfd
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xba6
	.uleb128 0x1d
	.long	.LASF88
	.byte	0x1
	.byte	0xfd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"fp"
	.byte	0x1
	.byte	0xfd
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0xfd
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF120
	.byte	0x1
	.byte	0xfd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF121
	.byte	0x1
	.byte	0xfe
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x1
	.byte	0xfe
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x104
	.long	0x62
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xc13
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x104
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.value	0x104
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.value	0x104
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF121
	.byte	0x1
	.value	0x104
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.value	0x104
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x110
	.long	0x62
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xc80
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x110
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.value	0x110
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.value	0x110
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF121
	.byte	0x1
	.value	0x110
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.value	0x110
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x11c
	.long	0x62
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xd0d
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.value	0x11c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x11c
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.value	0x11c
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.value	0x11c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF121
	.byte	0x1
	.value	0x11c
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.value	0x11c
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.value	0x11e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.value	0x126
	.long	0x62
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xd9a
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.value	0x126
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x126
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.value	0x126
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.value	0x126
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF121
	.byte	0x1
	.value	0x126
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.value	0x126
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.value	0x128
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.value	0x130
	.long	0x62
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xe16
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.value	0x130
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x130
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.value	0x130
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.value	0x130
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF121
	.byte	0x1
	.value	0x131
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.value	0x131
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1e
	.long	.LASF131
	.byte	0x1
	.value	0x137
	.long	0x62
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xea1
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.value	0x137
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.value	0x137
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x137
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.value	0x138
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.value	0x138
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF121
	.byte	0x1
	.value	0x139
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.value	0x139
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LASF132
	.byte	0x1
	.value	0x148
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xeeb
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x148
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"gh"
	.byte	0x1
	.value	0x148
	.long	0x604
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x14b
	.long	0xeeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0xefb
	.uleb128 0xc
	.long	0x86
	.byte	0x10
	.byte	0
	.uleb128 0x22
	.long	.LASF133
	.byte	0x1
	.value	0x161
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xf45
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x161
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"gh"
	.byte	0x1
	.value	0x161
	.long	0x604
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x164
	.long	0xeeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x1
	.value	0x179
	.long	0x62
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xffc
	.uleb128 0x20
	.long	.LASF135
	.byte	0x1
	.value	0x179
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF136
	.byte	0x1
	.value	0x17a
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"fmt"
	.byte	0x1
	.value	0x17b
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.value	0x17d
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF137
	.byte	0x1
	.value	0x180
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x20
	.long	.LASF138
	.byte	0x1
	.value	0x181
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x185
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x185
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x185
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.long	.LASF139
	.byte	0x1
	.value	0x186
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF140
	.byte	0x1
	.value	0x1b5
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1069
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x1b5
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x21
	.long	.LASF141
	.byte	0x1
	.value	0x1b7
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x1b8
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x21
	.long	.LASF142
	.byte	0x1
	.value	0x1b9
	.long	0x106f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x21
	.long	.LASF143
	.byte	0x1
	.value	0x1ba
	.long	0x28d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x610
	.uleb128 0xb
	.long	0xa0
	.long	0x107f
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x1
	.value	0x1e3
	.long	0x1069
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x10dd
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0x1e3
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x1e5
	.long	0x10dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0x1e6
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x1e7
	.long	0x604
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0x10ed
	.uleb128 0xc
	.long	0x86
	.byte	0x16
	.byte	0
	.uleb128 0x24
	.long	.LASF145
	.byte	0x1
	.value	0x20b
	.long	0x1069
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1159
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x20d
	.long	0x1159
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0x20e
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x20f
	.long	0x604
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF72
	.byte	0x1
	.value	0x210
	.long	0x2b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x211
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0x1169
	.uleb128 0xc
	.long	0x86
	.byte	0x17
	.byte	0
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x1
	.value	0x251
	.long	0x1069
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x11d8
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0x251
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x256
	.long	0x11d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x257
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0x258
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x259
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0x11e8
	.uleb128 0xc
	.long	0x86
	.byte	0xa
	.byte	0
	.uleb128 0x22
	.long	.LASF147
	.byte	0x1
	.value	0x28a
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1243
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.value	0x28a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x28a
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF148
	.byte	0x1
	.value	0x28a
	.long	0x1243
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x28d
	.long	0x1249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x533
	.uleb128 0xb
	.long	0xa0
	.long	0x1259
	.uleb128 0xc
	.long	0x86
	.byte	0xd
	.byte	0
	.uleb128 0x22
	.long	.LASF149
	.byte	0x1
	.value	0x2aa
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a4
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.value	0x2aa
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x2aa
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x2ad
	.long	0x12a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0x12b4
	.uleb128 0xc
	.long	0x86
	.byte	0xe
	.byte	0
	.uleb128 0x22
	.long	.LASF150
	.byte	0x1
	.value	0x2ba
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x142c
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x2ba
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x2be
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x2bf
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x2c0
	.long	0x887
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x21
	.long	.LASF151
	.byte	0x1
	.value	0x2c1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -732
	.uleb128 0x21
	.long	.LASF152
	.byte	0x1
	.value	0x2c1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.value	0x2c2
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x21
	.long	.LASF154
	.byte	0x1
	.value	0x2c3
	.long	0x733
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1
	.value	0x2c4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x2c5
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x2c5
	.long	0x62
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x2c5
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF156
	.byte	0x1
	.value	0x2c6
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x21
	.long	.LASF157
	.byte	0x1
	.value	0x2c7
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x21
	.long	.LASF158
	.byte	0x1
	.value	0x2c8
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x21
	.long	.LASF159
	.byte	0x1
	.value	0x2c9
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x21
	.long	.LASF160
	.byte	0x1
	.value	0x2ca
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x21
	.long	.LASF161
	.byte	0x1
	.value	0x2cc
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x21
	.long	.LASF162
	.byte	0x1
	.value	0x2cc
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x2cd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -716
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0x2cd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x23
	.string	"z"
	.byte	0x1
	.value	0x2cd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.value	0x2cd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3cb
	.uleb128 0x22
	.long	.LASF163
	.byte	0x1
	.value	0x368
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x145f
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x368
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF164
	.byte	0x1
	.value	0x382
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x149b
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.value	0x382
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x382
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.long	.LASF165
	.byte	0x1
	.value	0x3b9
	.long	0x62
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1566
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x3b9
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.value	0x3b9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.value	0x3b9
	.long	0x2a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x3c0
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x3c1
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x3c2
	.long	0x47c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x3c3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x21
	.long	.LASF166
	.byte	0x1
	.value	0x3c4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.string	"c1"
	.byte	0x1
	.value	0x3c5
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"c2"
	.byte	0x1
	.value	0x3c5
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x3c6
	.long	0x1566
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0x1576
	.uleb128 0xc
	.long	0x86
	.byte	0x11
	.byte	0
	.uleb128 0x1e
	.long	.LASF167
	.byte	0x1
	.value	0x43f
	.long	0x62
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1662
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x43f
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.value	0x43f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.value	0x43f
	.long	0x2a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x444
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x445
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x446
	.long	0x47c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x447
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x25
	.byte	0xe0
	.byte	0x1
	.value	0x44b
	.long	0x1641
	.uleb128 0x9
	.long	.LASF168
	.byte	0x1
	.value	0x44c
	.long	0x47c
	.byte	0
	.uleb128 0x9
	.long	.LASF169
	.byte	0x1
	.value	0x44d
	.long	0x53e
	.byte	0x4
	.uleb128 0x9
	.long	.LASF170
	.byte	0x1
	.value	0x44e
	.long	0x47c
	.byte	0xcc
	.uleb128 0x9
	.long	.LASF171
	.byte	0x1
	.value	0x44f
	.long	0x54e
	.byte	0xd0
	.byte	0
	.uleb128 0x21
	.long	.LASF172
	.byte	0x1
	.value	0x450
	.long	0x1603
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x451
	.long	0x28d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x1
	.value	0x4e3
	.long	0x62
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x175d
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x4e3
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.long	.LASF88
	.byte	0x1
	.value	0x4e3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x4e8
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x4e9
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.value	0x4ea
	.long	0x47c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x21
	.long	.LASF174
	.byte	0x1
	.value	0x4ea
	.long	0x47c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x4eb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.value	0x4ec
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x4ed
	.long	0x12a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x4ee
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x23
	.string	"hdr"
	.byte	0x1
	.value	0x4ef
	.long	0x7cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x4f0
	.long	0x175d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF175
	.byte	0x1
	.value	0x4f1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF176
	.byte	0x1
	.value	0x4f2
	.long	0x487
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x176d
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.long	.LASF177
	.byte	0x1
	.value	0x5a3
	.long	0x1069
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x17d8
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0x5a3
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x5a7
	.long	0x604
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0x5a8
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x5a9
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.value	0x5aa
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x22
	.long	.LASF178
	.byte	0x1
	.value	0x5dc
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1997
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x5dc
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x5e0
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x5e1
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF85
	.byte	0x1
	.value	0x5e2
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.value	0x5e3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF156
	.byte	0x1
	.value	0x5e5
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF160
	.byte	0x1
	.value	0x5e6
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.long	.LASF157
	.byte	0x1
	.value	0x5e7
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF158
	.byte	0x1
	.value	0x5e8
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF159
	.byte	0x1
	.value	0x5e9
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF179
	.byte	0x1
	.value	0x5ea
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x21
	.long	.LASF180
	.byte	0x1
	.value	0x5ea
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x21
	.long	.LASF181
	.byte	0x1
	.value	0x5eb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x5ec
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x5ec
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x5ed
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0x5ed
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.string	"z"
	.byte	0x1
	.value	0x5ed
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.value	0x5ed
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1
	.value	0x5ee
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x21
	.long	.LASF182
	.byte	0x1
	.value	0x5ee
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x21
	.long	.LASF148
	.byte	0x1
	.value	0x5ef
	.long	0x533
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x5f0
	.long	0x887
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.long	.LASF151
	.byte	0x1
	.value	0x5f1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.long	.LASF152
	.byte	0x1
	.value	0x5f1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.value	0x5f2
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x5f3
	.long	0x1997
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0x19a7
	.uleb128 0xc
	.long	0x86
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.long	.LASF183
	.byte	0x1
	.value	0x6b9
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b8b
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x6b9
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1368
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x6bd
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1248
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x6be
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1240
	.uleb128 0x21
	.long	.LASF85
	.byte	0x1
	.value	0x6bf
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1232
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.value	0x6c0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1308
	.uleb128 0x21
	.long	.LASF160
	.byte	0x1
	.value	0x6c2
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.uleb128 0x21
	.long	.LASF179
	.byte	0x1
	.value	0x6c3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1352
	.uleb128 0x21
	.long	.LASF180
	.byte	0x1
	.value	0x6c3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1304
	.uleb128 0x21
	.long	.LASF181
	.byte	0x1
	.value	0x6c4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1284
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x6c5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1348
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x6c5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1344
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x6c6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1300
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0x6c6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.uleb128 0x23
	.string	"z"
	.byte	0x1
	.value	0x6c6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1292
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.value	0x6c6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1288
	.uleb128 0x21
	.long	.LASF148
	.byte	0x1
	.value	0x6c7
	.long	0x533
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1280
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x6c8
	.long	0x887
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1272
	.uleb128 0x21
	.long	.LASF151
	.byte	0x1
	.value	0x6c9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1340
	.uleb128 0x21
	.long	.LASF152
	.byte	0x1
	.value	0x6c9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1336
	.uleb128 0x21
	.long	.LASF184
	.byte	0x1
	.value	0x6ca
	.long	0x733
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x6cb
	.long	0x1249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"mu"
	.byte	0x1
	.value	0x6cd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1332
	.uleb128 0x23
	.string	"a"
	.byte	0x1
	.value	0x6cd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1328
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x6cd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1324
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.value	0x6cd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1320
	.uleb128 0x23
	.string	"uin"
	.byte	0x1
	.value	0x6ce
	.long	0x8e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1264
	.uleb128 0x23
	.string	"q"
	.byte	0x1
	.value	0x6ce
	.long	0x8e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1256
	.uleb128 0x21
	.long	.LASF185
	.byte	0x1
	.value	0x6cf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1316
	.uleb128 0x23
	.string	"U"
	.byte	0x1
	.value	0x6d0
	.long	0x1b8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x21
	.long	.LASF176
	.byte	0x1
	.value	0x6d1
	.long	0x487
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.byte	0
	.uleb128 0xb
	.long	0x2de
	.long	0x1ba1
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x11
	.byte	0
	.uleb128 0x22
	.long	.LASF186
	.byte	0x1
	.value	0x76c
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bce
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x76c
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF187
	.byte	0x1
	.value	0x783
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c60
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x783
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"gh"
	.byte	0x1
	.value	0x783
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF156
	.byte	0x1
	.value	0x785
	.long	0x29d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x786
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1
	.value	0x787
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x788
	.long	0x1c60
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF188
	.byte	0x1
	.value	0x789
	.long	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.long	.LASF189
	.byte	0x1
	.value	0x789
	.long	0x60a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x763
	.uleb128 0x1e
	.long	.LASF190
	.byte	0x1
	.value	0x7bb
	.long	0x1069
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cd1
	.uleb128 0x20
	.long	.LASF75
	.byte	0x1
	.value	0x7bb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0x7bb
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x7c3
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0x7c4
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x7c5
	.long	0x604
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.long	.LASF191
	.byte	0x1
	.value	0x7ee
	.long	0x1069
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d03
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0x7ee
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF192
	.byte	0x1
	.value	0x7fa
	.long	0x1069
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d35
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0x7fa
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF193
	.byte	0x1
	.value	0x807
	.long	0x142c
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e04
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x807
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x20
	.long	.LASF159
	.byte	0x1
	.value	0x807
	.long	0x1e04
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x80b
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x80c
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.value	0x80d
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.long	.LASF156
	.byte	0x1
	.value	0x80f
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF194
	.byte	0x1
	.value	0x810
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF157
	.byte	0x1
	.value	0x812
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.long	.LASF158
	.byte	0x1
	.value	0x813
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.long	.LASF160
	.byte	0x1
	.value	0x814
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x815
	.long	0xeeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29d
	.uleb128 0x22
	.long	.LASF195
	.byte	0x1
	.value	0x840
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fea
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x840
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x844
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.value	0x845
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1
	.value	0x846
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x21
	.long	.LASF182
	.byte	0x1
	.value	0x846
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x847
	.long	0x887
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x21
	.long	.LASF151
	.byte	0x1
	.value	0x848
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -748
	.uleb128 0x21
	.long	.LASF152
	.byte	0x1
	.value	0x848
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x21
	.long	.LASF159
	.byte	0x1
	.value	0x849
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x84a
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x84b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -740
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x84b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x84c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0x84c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x23
	.string	"z"
	.byte	0x1
	.value	0x84c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.value	0x84c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x26
	.value	0x248
	.byte	0x1
	.value	0x84d
	.long	0x1f5a
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x84e
	.long	0x5b
	.byte	0
	.uleb128 0x27
	.string	"y"
	.byte	0x1
	.value	0x84e
	.long	0x5b
	.byte	0x2
	.uleb128 0x27
	.string	"z"
	.byte	0x1
	.value	0x84e
	.long	0x5b
	.byte	0x4
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x84e
	.long	0x5b
	.byte	0x6
	.uleb128 0x9
	.long	.LASF95
	.byte	0x1
	.value	0x84f
	.long	0x733
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.string	"msg"
	.byte	0x1
	.value	0x850
	.long	0x1f16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x21
	.long	.LASF196
	.byte	0x1
	.value	0x851
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -732
	.uleb128 0x21
	.long	.LASF197
	.byte	0x1
	.value	0x851
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x21
	.long	.LASF198
	.byte	0x1
	.value	0x851
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x21
	.long	.LASF180
	.byte	0x1
	.value	0x852
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -716
	.uleb128 0x21
	.long	.LASF179
	.byte	0x1
	.value	0x852
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x21
	.long	.LASF181
	.byte	0x1
	.value	0x853
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.uleb128 0x21
	.long	.LASF199
	.byte	0x1
	.value	0x853
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x854
	.long	0x11d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.long	.LASF200
	.byte	0x1
	.value	0x8fc
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x20ba
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x8fc
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x900
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.value	0x901
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x902
	.long	0x887
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x903
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF151
	.byte	0x1
	.value	0x904
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x21
	.long	.LASF152
	.byte	0x1
	.value	0x904
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF159
	.byte	0x1
	.value	0x905
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1
	.value	0x906
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x907
	.long	0x1c60
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x908
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x909
	.long	0x20ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0x20ca
	.uleb128 0xc
	.long	0x86
	.byte	0xc
	.byte	0
	.uleb128 0x22
	.long	.LASF201
	.byte	0x1
	.value	0x95f
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x20f7
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x95f
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF202
	.byte	0x1
	.value	0x978
	.long	0x1069
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2162
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0x978
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x97c
	.long	0x604
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0x97d
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x97e
	.long	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.value	0x97f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x22
	.long	.LASF203
	.byte	0x1
	.value	0x9ad
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x23c1
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0x9ad
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0x9b1
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0x9b2
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x21
	.long	.LASF85
	.byte	0x1
	.value	0x9b3
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.value	0x9b4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.value	0x9b5
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x26
	.value	0x248
	.byte	0x1
	.value	0x9b6
	.long	0x2221
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x9b7
	.long	0x5b
	.byte	0
	.uleb128 0x27
	.string	"y"
	.byte	0x1
	.value	0x9b7
	.long	0x5b
	.byte	0x2
	.uleb128 0x27
	.string	"z"
	.byte	0x1
	.value	0x9b7
	.long	0x5b
	.byte	0x4
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x9b7
	.long	0x5b
	.byte	0x6
	.uleb128 0x9
	.long	.LASF95
	.byte	0x1
	.value	0x9b8
	.long	0x733
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.string	"msg"
	.byte	0x1
	.value	0x9b9
	.long	0x21dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1
	.value	0x9bb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x21
	.long	.LASF182
	.byte	0x1
	.value	0x9bb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -812
	.uleb128 0x21
	.long	.LASF148
	.byte	0x1
	.value	0x9bc
	.long	0x533
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x9bd
	.long	0x887
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x21
	.long	.LASF151
	.byte	0x1
	.value	0x9be
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x21
	.long	.LASF152
	.byte	0x1
	.value	0x9be
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x21
	.long	.LASF181
	.byte	0x1
	.value	0x9bf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x21
	.long	.LASF199
	.byte	0x1
	.value	0x9bf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x21
	.long	.LASF196
	.byte	0x1
	.value	0x9bf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -796
	.uleb128 0x21
	.long	.LASF197
	.byte	0x1
	.value	0x9bf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x21
	.long	.LASF198
	.byte	0x1
	.value	0x9bf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x9c0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -772
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0x9c0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x23
	.string	"z"
	.byte	0x1
	.value	0x9c0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.value	0x9c0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x21
	.long	.LASF179
	.byte	0x1
	.value	0x9c1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x21
	.long	.LASF180
	.byte	0x1
	.value	0x9c1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -788
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x9c2
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.value	0x9c2
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF156
	.byte	0x1
	.value	0x9c4
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x21
	.long	.LASF194
	.byte	0x1
	.value	0x9c5
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x21
	.long	.LASF160
	.byte	0x1
	.value	0x9c7
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x21
	.long	.LASF157
	.byte	0x1
	.value	0x9c8
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x21
	.long	.LASF158
	.byte	0x1
	.value	0x9c9
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x21
	.long	.LASF159
	.byte	0x1
	.value	0x9ca
	.long	0x29d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x9cb
	.long	0x11d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x22
	.long	.LASF204
	.byte	0x1
	.value	0xaa2
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x23ee
	.uleb128 0x1f
	.string	"gf"
	.byte	0x1
	.value	0xaa2
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x1
	.value	0xac5
	.long	0x1069
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x24e2
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0xac5
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0xac6
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0xac7
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0xac8
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x21
	.long	.LASF181
	.byte	0x1
	.value	0xac9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x21
	.long	.LASF206
	.byte	0x1
	.value	0xaca
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -652
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0xaca
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0xaca
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -628
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0xaca
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0xaca
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -644
	.uleb128 0x23
	.string	"z"
	.byte	0x1
	.value	0xaca
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.value	0xaca
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -636
	.uleb128 0x23
	.string	"dir"
	.byte	0x1
	.value	0xaca
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.value	0xacb
	.long	0x733
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.byte	0
	.uleb128 0x1e
	.long	.LASF207
	.byte	0x1
	.value	0xb4c
	.long	0x1069
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d6
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0xb4c
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.value	0xb4d
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x21
	.long	.LASF161
	.byte	0x1
	.value	0xb4e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -652
	.uleb128 0x21
	.long	.LASF162
	.byte	0x1
	.value	0xb4e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0xb4f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0xb4f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -644
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0xb4f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0xb4f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -636
	.uleb128 0x23
	.string	"z"
	.byte	0x1
	.value	0xb4f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x23
	.string	"t"
	.byte	0x1
	.value	0xb4f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -628
	.uleb128 0x23
	.string	"dir"
	.byte	0x1
	.value	0xb4f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.value	0xb50
	.long	0x733
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0xb51
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0xb52
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.byte	0
	.uleb128 0x1e
	.long	.LASF208
	.byte	0x1
	.value	0xbac
	.long	0x1069
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2616
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0xbac
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0xbae
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF209
	.byte	0x1
	.value	0xbc0
	.long	0x1069
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x2656
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0xbc0
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0xbc2
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF210
	.byte	0x1
	.value	0xbd0
	.long	0x1069
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x2696
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0xbd0
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0xbd2
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF211
	.byte	0x1
	.value	0xbe0
	.long	0x1069
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x26d6
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0xbe0
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0xbe2
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF212
	.byte	0x1
	.value	0xbf5
	.long	0x1069
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x2716
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0xbf5
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0xbf7
	.long	0x1069
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF213
	.byte	0x1
	.value	0xc02
	.long	0x1069
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x2916
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0xc02
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x21
	.long	.LASF161
	.byte	0x1
	.value	0xc05
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x21
	.long	.LASF162
	.byte	0x1
	.value	0xc05
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0xc06
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0xc06
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0xc06
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -796
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.value	0xc06
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x23
	.string	"z"
	.byte	0x1
	.value	0xc06
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -788
	.uleb128 0x23
	.string	"dir"
	.byte	0x1
	.value	0xc06
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.value	0xc07
	.long	0x733
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x23
	.string	"gf"
	.byte	0x1
	.value	0xc08
	.long	0x1069
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x23
	.string	"gh"
	.byte	0x1
	.value	0xc09
	.long	0x604
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x21
	.long	.LASF214
	.byte	0x1
	.value	0xc0b
	.long	0x5fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0xc0c
	.long	0x1c60
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x21
	.long	.LASF176
	.byte	0x1
	.value	0xc0d
	.long	0x487
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x21
	.long	.LASF215
	.byte	0x1
	.value	0xc0d
	.long	0x487
	.uleb128 0x3
	.byte	0x91
	.sleb128 -812
	.uleb128 0x23
	.string	"p32"
	.byte	0x1
	.value	0xc0d
	.long	0x887
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x21
	.long	.LASF143
	.byte	0x1
	.value	0xc0e
	.long	0x492
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF216
	.byte	0x1
	.value	0xc0f
	.long	0x2916
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x21
	.long	.LASF217
	.byte	0x1
	.value	0xc10
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x21
	.long	.LASF218
	.byte	0x1
	.value	0xc11
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x21
	.long	.LASF219
	.byte	0x1
	.value	0xc11
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x21
	.long	.LASF220
	.byte	0x1
	.value	0xc11
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x21
	.long	.LASF221
	.byte	0x1
	.value	0xc11
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x21
	.long	.LASF222
	.byte	0x1
	.value	0xc12
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x21
	.long	.LASF223
	.byte	0x1
	.value	0xc13
	.long	0x2de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x23
	.string	"mu"
	.byte	0x1
	.value	0xc14
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x23
	.string	"a"
	.byte	0x1
	.value	0xc14
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0xc14
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -772
	.uleb128 0x21
	.long	.LASF224
	.byte	0x1
	.value	0xc14
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x21
	.long	.LASF225
	.byte	0x1
	.value	0xc14
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x76e
	.uleb128 0x1e
	.long	.LASF226
	.byte	0x1
	.value	0xcb8
	.long	0x1069
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x294e
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.value	0xcb8
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF227
	.byte	0x4
	.byte	0xa9
	.long	0x271
	.uleb128 0x29
	.long	.LASF228
	.byte	0x4
	.byte	0xaa
	.long	0x271
	.uleb128 0xb
	.long	0x9a
	.long	0x296f
	.uleb128 0x2a
	.byte	0
	.uleb128 0x29
	.long	.LASF229
	.byte	0xb
	.byte	0x9f
	.long	0x2964
	.uleb128 0x2b
	.long	.LASF230
	.byte	0xb
	.value	0x10e
	.long	0x106f
	.uleb128 0x2b
	.long	.LASF231
	.byte	0xb
	.value	0x10f
	.long	0x62
	.uleb128 0x2c
	.string	"nx"
	.byte	0xc
	.byte	0x74
	.long	0x62
	.uleb128 0x2c
	.string	"ny"
	.byte	0xc
	.byte	0x74
	.long	0x62
	.uleb128 0x2c
	.string	"nz"
	.byte	0xc
	.byte	0x74
	.long	0x62
	.uleb128 0x2c
	.string	"nt"
	.byte	0xc
	.byte	0x74
	.long	0x62
	.uleb128 0x29
	.long	.LASF232
	.byte	0xc
	.byte	0x75
	.long	0x62
	.uleb128 0x29
	.long	.LASF233
	.byte	0xc
	.byte	0x87
	.long	0x62
	.uleb128 0x29
	.long	.LASF234
	.byte	0xc
	.byte	0x8a
	.long	0x62
	.uleb128 0x29
	.long	.LASF235
	.byte	0xc
	.byte	0x8b
	.long	0x62
	.uleb128 0x29
	.long	.LASF236
	.byte	0xc
	.byte	0x9a
	.long	0x1c60
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x11
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
.LASF33:
	.string	"_shortbuf"
.LASF240:
	.string	"_IO_lock_t"
.LASF74:
	.string	"header_bytes"
.LASF154:
	.string	"tbuf"
.LASF96:
	.string	"phase"
.LASF228:
	.string	"stderr"
.LASF112:
	.string	"complete_U"
.LASF239:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF109:
	.string	"qcdhdr_get_int32x"
.LASF22:
	.string	"_IO_buf_end"
.LASF147:
	.string	"read_checksum"
.LASF222:
	.string	"tmpflt"
.LASF196:
	.string	"isite"
.LASF169:
	.string	"descript"
.LASF123:
	.string	"pwrite_data"
.LASF20:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF118:
	.string	"qcdhdr_destroy_hdr"
.LASF172:
	.string	"gauge_field"
.LASF14:
	.string	"_flags"
.LASF89:
	.string	"check"
.LASF95:
	.string	"link"
.LASF26:
	.string	"_markers"
.LASF178:
	.string	"r_serial"
.LASF187:
	.string	"write_site_list"
.LASF229:
	.string	"gauge_info_keyword"
.LASF133:
	.string	"swrite_gauge_hdr"
.LASF68:
	.string	"anti_hermitmat"
.LASF158:
	.string	"head_size"
.LASF105:
	.string	"site"
.LASF186:
	.string	"r_serial_f"
.LASF73:
	.string	"dims"
.LASF177:
	.string	"r_serial_i"
.LASF149:
	.string	"write_checksum"
.LASF236:
	.string	"lattice"
.LASF47:
	.string	"_pos"
.LASF116:
	.string	"tokens"
.LASF227:
	.string	"stdout"
.LASF218:
	.string	"ssplaq"
.LASF124:
	.string	"pswrite_data"
.LASF25:
	.string	"_IO_save_end"
.LASF232:
	.string	"volume"
.LASF108:
	.string	"qcdhdr_get_int"
.LASF52:
	.string	"float"
.LASF168:
	.string	"n_descript"
.LASF114:
	.string	"qcdhdr_get_hdr"
.LASF86:
	.string	"byterevflag"
.LASF137:
	.string	"count"
.LASF92:
	.string	"index"
.LASF195:
	.string	"w_parallel"
.LASF225:
	.string	"tslice"
.LASF215:
	.string	"utmp"
.LASF155:
	.string	"buf_length"
.LASF51:
	.string	"long long unsigned int"
.LASF231:
	.string	"sequence_number"
.LASF234:
	.string	"number_of_nodes"
.LASF223:
	.string	"trace"
.LASF206:
	.string	"version_number"
.LASF88:
	.string	"parallel"
.LASF125:
	.string	"sread_data"
.LASF104:
	.string	"staple"
.LASF161:
	.string	"currentnode"
.LASF24:
	.string	"_IO_backup_base"
.LASF132:
	.string	"pwrite_gauge_hdr"
.LASF220:
	.string	"avgtrace"
.LASF35:
	.string	"_offset"
.LASF140:
	.string	"write_gauge_info_file"
.LASF182:
	.string	"where_in_buf"
.LASF82:
	.string	"value"
.LASF28:
	.string	"_fileno"
.LASF163:
	.string	"w_serial_f"
.LASF146:
	.string	"w_serial_i"
.LASF166:
	.string	"sixtyfourbits"
.LASF7:
	.string	"size_t"
.LASF203:
	.string	"r_parallel"
.LASF59:
	.string	"ic_state"
.LASF156:
	.string	"offset"
.LASF189:
	.string	"cbuf"
.LASF99:
	.string	"g_rand"
.LASF17:
	.string	"_IO_read_base"
.LASF235:
	.string	"this_node"
.LASF71:
	.string	"magic_number"
.LASF45:
	.string	"_next"
.LASF91:
	.string	"parity"
.LASF197:
	.string	"ksite"
.LASF174:
	.string	"btmp"
.LASF198:
	.string	"site_block"
.LASF63:
	.string	"su3_vector"
.LASF200:
	.string	"w_checkpoint"
.LASF181:
	.string	"destnode"
.LASF12:
	.string	"char"
.LASF173:
	.string	"read_gauge_hdr"
.LASF136:
	.string	"keyword"
.LASF214:
	.string	"outfile"
.LASF41:
	.string	"_mode"
.LASF199:
	.string	"sendnode"
.LASF85:
	.string	"filename"
.LASF44:
	.string	"_IO_marker"
.LASF15:
	.string	"_IO_read_ptr"
.LASF75:
	.string	"order"
.LASF67:
	.string	"space"
.LASF175:
	.string	"ARCHYES"
.LASF100:
	.string	"tempvec"
.LASF128:
	.string	"status"
.LASF131:
	.string	"psread_byteorder"
.LASF50:
	.string	"time_t"
.LASF208:
	.string	"restore_serial"
.LASF176:
	.string	"chksum"
.LASF226:
	.string	"save_parallel_archive"
.LASF143:
	.string	"sums"
.LASF58:
	.string	"addend"
.LASF18:
	.string	"_IO_write_base"
.LASF49:
	.string	"long long int"
.LASF145:
	.string	"setup_output_gauge_file"
.LASF23:
	.string	"_IO_save_base"
.LASF130:
	.string	"psread_data"
.LASF84:
	.string	"header"
.LASF121:
	.string	"myname"
.LASF217:
	.string	"big_end_p"
.LASF153:
	.string	"lbuf"
.LASF233:
	.string	"sites_on_node"
.LASF90:
	.string	"gauge_file"
.LASF119:
	.string	"swrite_data"
.LASF60:
	.string	"scale"
.LASF201:
	.string	"w_parallel_f"
.LASF191:
	.string	"w_parallel_i"
.LASF120:
	.string	"size"
.LASF102:
	.string	"templongv1"
.LASF76:
	.string	"gauge_header"
.LASF171:
	.string	"param"
.LASF107:
	.string	"qcdhdr_get_str"
.LASF113:
	.string	"big_endian"
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
.LASF126:
	.string	"pread_data"
.LASF117:
	.string	"values"
.LASF162:
	.string	"newnode"
.LASF69:
	.string	"int32type"
.LASF141:
	.string	"info_fp"
.LASF32:
	.string	"_vtable_offset"
.LASF160:
	.string	"gauge_check_size"
.LASF180:
	.string	"rcv_coords"
.LASF139:
	.string	"data"
.LASF93:
	.string	"site_prn"
.LASF159:
	.string	"checksum_offset"
.LASF219:
	.string	"stplaq"
.LASF238:
	.string	"io_lat4.c"
.LASF230:
	.string	"ensemble_id"
.LASF122:
	.string	"descrip"
.LASF81:
	.string	"token"
.LASF66:
	.string	"m22im"
.LASF237:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF142:
	.string	"info_filename"
.LASF157:
	.string	"coord_list_size"
.LASF16:
	.string	"_IO_read_end"
.LASF65:
	.string	"m11im"
.LASF210:
	.string	"save_serial"
.LASF5:
	.string	"short int"
.LASF148:
	.string	"test_gc"
.LASF188:
	.string	"coords"
.LASF6:
	.string	"long int"
.LASF101:
	.string	"templongvec"
.LASF64:
	.string	"m00im"
.LASF224:
	.string	"vol3"
.LASF83:
	.string	"QCDheader"
.LASF110:
	.string	"qcdhdr_get_double"
.LASF70:
	.string	"u_int32type"
.LASF184:
	.string	"tmpsu3"
.LASF209:
	.string	"restore_parallel"
.LASF212:
	.string	"save_checkpoint"
.LASF129:
	.string	"sread_byteorder"
.LASF205:
	.string	"restore_ascii"
.LASF56:
	.string	"complex"
.LASF54:
	.string	"real"
.LASF57:
	.string	"multiplier"
.LASF138:
	.string	"stride"
.LASF106:
	.string	"OUTPUT_TYPE"
.LASF165:
	.string	"read_v3_gauge_hdr"
.LASF34:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF167:
	.string	"read_1996_gauge_hdr"
.LASF0:
	.string	"long unsigned int"
.LASF30:
	.string	"_old_offset"
.LASF43:
	.string	"_IO_FILE"
.LASF204:
	.string	"r_parallel_f"
.LASF202:
	.string	"r_parallel_i"
.LASF80:
	.string	"ntoken"
.LASF211:
	.string	"save_parallel"
.LASF1:
	.string	"unsigned char"
.LASF78:
	.string	"sum29"
.LASF135:
	.string	"fpout"
.LASF46:
	.string	"_sbuf"
.LASF115:
	.string	"line"
.LASF103:
	.string	"tempmat1"
.LASF55:
	.string	"imag"
.LASF19:
	.string	"_IO_write_ptr"
.LASF216:
	.string	"uout"
.LASF207:
	.string	"save_ascii"
.LASF11:
	.string	"__time_t"
.LASF87:
	.string	"rank2rcv"
.LASF98:
	.string	"cg_p"
.LASF213:
	.string	"save_serial_archive"
.LASF61:
	.string	"double_prn"
.LASF72:
	.string	"time_stamp"
.LASF77:
	.string	"sum31"
.LASF8:
	.string	"__off_t"
.LASF190:
	.string	"parallel_open"
.LASF150:
	.string	"w_serial"
.LASF170:
	.string	"n_param"
.LASF4:
	.string	"signed char"
.LASF48:
	.string	"off_t"
.LASF2:
	.string	"short unsigned int"
.LASF151:
	.string	"rank29"
.LASF134:
	.string	"write_gauge_info_item"
.LASF144:
	.string	"setup_input_gauge_file"
.LASF53:
	.string	"double"
.LASF111:
	.string	"error_exit"
.LASF127:
	.string	"pread_byteorder"
.LASF27:
	.string	"_chain"
.LASF221:
	.string	"avgplaq"
.LASF13:
	.string	"FILE"
.LASF29:
	.string	"_flags2"
.LASF183:
	.string	"r_serial_arch"
.LASF79:
	.string	"gauge_check"
.LASF192:
	.string	"w_checkpoint_i"
.LASF179:
	.string	"rcv_rank"
.LASF152:
	.string	"rank31"
.LASF31:
	.string	"_cur_column"
.LASF97:
	.string	"resid"
.LASF185:
	.string	"big_end"
.LASF62:
	.string	"su3_matrix"
.LASF9:
	.string	"__off64_t"
.LASF164:
	.string	"read_site_list"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
.LASF94:
	.string	"space1"
.LASF194:
	.string	"gauge_node_size"
.LASF193:
	.string	"w_parallel_setup"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
