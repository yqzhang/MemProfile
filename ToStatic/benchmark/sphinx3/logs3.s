	.file	"logs3.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# logs3.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.data
	.align 4
	.type	USE_LOG3_ADD_TABLE, @object
	.size	USE_LOG3_ADD_TABLE, 4
USE_LOG3_ADD_TABLE:
	.long	1
	.local	F
	.comm	F,8,8
	.local	B
	.comm	B,8,8
	.local	logB
	.comm	logB,8,8
	.local	invlogB
	.comm	invlogB,8,8
	.local	invlog10B
	.comm	invlog10B,8,8
	.local	add_tbl
	.comm	add_tbl,8,8
	.local	add_tbl_size
	.comm	add_tbl_size,4,4
	.section	.rodata
.LC0:
	.string	"-log3table"
.LC1:
	.string	"INFO"
.LC2:
	.string	"logs3.c"
	.align 8
.LC3:
	.string	"Initializing logbase: %e (add table: %d)\n"
.LC5:
	.string	"FATAL_ERROR"
	.align 8
.LC6:
	.string	"Illegal logbase: %e; must be > 1.0\n"
.LC7:
	.string	"WARNING"
.LC8:
	.string	"logs3_init() already done\n"
	.align 8
.LC9:
	.string	"logs3_init() already done with base %e\n"
.LC12:
	.string	"ERROR"
	.align 8
.LC13:
	.string	"Logbase too small: %e; needs int32 addtable[]\n"
.LC14:
	.string	"Log-Add table size = %d\n"
	.text
	.globl	logs3_init
	.type	logs3_init, @function
logs3_init:
.LFB2:
	.file 1 "logs3.c"
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movsd	%xmm0, -40(%rbp)	# base, base
	.loc 1 97 0
	movl	$.LC0, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_6], USE_LOG3_ADD_TABLE.0
	movl	%eax, USE_LOG3_ADD_TABLE(%rip)	# USE_LOG3_ADD_TABLE.0, USE_LOG3_ADD_TABLE
	.loc 1 99 0
	movl	$.LC1, %edx	#,
	movl	$99, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movl	USE_LOG3_ADD_TABLE(%rip), %edx	# USE_LOG3_ADD_TABLE, USE_LOG3_ADD_TABLE.1
	movq	-40(%rbp), %rax	# base, tmp96
	movl	%edx, %esi	# USE_LOG3_ADD_TABLE.1,
	movq	%rax, -48(%rbp)	# tmp96, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	movl	$.LC3, %edi	#,
	movl	$1, %eax	#,
	call	_E__pr_info	#
	.loc 1 101 0
	movsd	.LC4(%rip), %xmm0	#, tmp97
	ucomisd	-40(%rbp), %xmm0	# base, tmp97
	jb	.L2	#,
	.loc 1 102 0
	movl	$.LC5, %edx	#,
	movl	$102, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-40(%rbp), %rax	# base, tmp98
	movq	%rax, -48(%rbp)	# tmp98, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	movl	$.LC6, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L2:
	.loc 1 104 0
	movq	add_tbl(%rip), %rax	# add_tbl, add_tbl.2
	testq	%rax, %rax	# add_tbl.2
	je	.L4	#,
	.loc 1 105 0
	movsd	B(%rip), %xmm0	# B, B.3
	ucomisd	-40(%rbp), %xmm0	# base, B.3
	jp	.L5	#,
	ucomisd	-40(%rbp), %xmm0	# base, B.3
	jne	.L5	#,
	.loc 1 106 0
	movl	$.LC7, %edx	#,
	movl	$106, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	jmp	.L4	#
.L5:
	.loc 1 108 0
	movl	$.LC5, %edx	#,
	movl	$108, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	B(%rip), %rax	# B, B.4
	movq	%rax, -48(%rbp)	# B.4, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	movl	$.LC9, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L4:
	.loc 1 111 0
	movq	-40(%rbp), %rax	# base, tmp99
	movq	%rax, B(%rip)	# tmp99, B
	.loc 1 112 0
	movq	-40(%rbp), %rax	# base, tmp100
	movq	%rax, -48(%rbp)	# tmp100, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	call	log	#
	movsd	%xmm0, -48(%rbp)	#, %sfp
	movq	-48(%rbp), %rax	# %sfp, logB.5
	movq	%rax, logB(%rip)	# logB.5, logB
	.loc 1 113 0
	movsd	logB(%rip), %xmm1	# logB, logB.6
	movsd	.LC4(%rip), %xmm0	#, tmp101
	divsd	%xmm1, %xmm0	# logB.6, invlogB.7
	movsd	%xmm0, invlogB(%rip)	# invlogB.7, invlogB
	.loc 1 114 0
	movq	-40(%rbp), %rax	# base, tmp102
	movq	%rax, -48(%rbp)	# tmp102, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	call	log10	#
	movsd	.LC4(%rip), %xmm1	#, tmp103
	divsd	%xmm0, %xmm1	# D.5101, invlog10B.8
	movapd	%xmm1, %xmm0	# invlog10B.8, invlog10B.8
	movsd	%xmm0, invlog10B(%rip)	# invlog10B.8, invlog10B
	.loc 1 118 0
	movsd	invlogB(%rip), %xmm1	# invlogB, invlogB.9
	movsd	.LC10(%rip), %xmm0	#, tmp104
	mulsd	%xmm1, %xmm0	# invlogB.9, D.5101
	movsd	.LC11(%rip), %xmm1	#, tmp105
	addsd	%xmm1, %xmm0	# tmp105, D.5101
	cvttsd2si	%xmm0, %eax	# D.5101, tmp106
	movl	%eax, -28(%rbp)	# tmp106, k
	.loc 1 119 0
	cmpl	$65535, -28(%rbp)	#, k
	jle	.L7	#,
	.loc 1 120 0
	movl	$.LC12, %edx	#,
	movl	$120, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movq	-40(%rbp), %rax	# base, tmp107
	movq	%rax, -48(%rbp)	# tmp107, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	movl	$.LC13, %edi	#,
	movl	$1, %eax	#,
	call	_E__pr_warn	#
	.loc 1 121 0
	movl	$-1, %eax	#, D.5099
	jmp	.L8	#
.L7:
	.loc 1 124 0
	movabsq	$4607182418800017408, %rax	#, tmp108
	movq	%rax, -24(%rbp)	# tmp108, d
	.loc 1 125 0
	movsd	B(%rip), %xmm1	# B, B.10
	movsd	.LC4(%rip), %xmm0	#, tmp110
	divsd	%xmm1, %xmm0	# B.10, tmp109
	movsd	%xmm0, -16(%rbp)	# tmp109, f
	.loc 1 126 0
	movsd	B(%rip), %xmm1	# B, B.11
	movsd	.LC4(%rip), %xmm0	#, tmp111
	divsd	%xmm1, %xmm0	# B.11, F.12
	movsd	%xmm0, F(%rip)	# F.12, F
	.loc 1 129 0
	movl	$0, -32(%rbp)	#, i
.L11:
	.loc 1 130 0
	movsd	-24(%rbp), %xmm1	# d, tmp112
	movsd	.LC4(%rip), %xmm0	#, tmp113
	addsd	%xmm1, %xmm0	# tmp112, D.5101
	call	log	#
	movsd	invlogB(%rip), %xmm1	# invlogB, invlogB.13
	mulsd	%xmm1, %xmm0	# invlogB.13, tmp114
	movsd	%xmm0, -8(%rbp)	# tmp114, t
	.loc 1 131 0
	movsd	-8(%rbp), %xmm1	# t, tmp115
	movsd	.LC11(%rip), %xmm0	#, tmp116
	addsd	%xmm1, %xmm0	# tmp115, D.5101
	cvttsd2si	%xmm0, %eax	# D.5101, tmp117
	movl	%eax, -28(%rbp)	# tmp117, k
	.loc 1 138 0
	cmpl	$0, -28(%rbp)	#, k
	jne	.L9	#,
	.loc 1 139 0
	nop
	.loc 1 144 0
	movl	-32(%rbp), %eax	# i, tmp120
	addl	$1, %eax	#, add_tbl_size.14
	movl	%eax, add_tbl_size(%rip)	# add_tbl_size.14, add_tbl_size
	.loc 1 145 0
	movl	-32(%rbp), %eax	# i, tmp121
	addl	$1, %eax	#, D.5102
	cltq
	movl	$145, %ecx	#,
	movl	$.LC2, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.5103,
	call	__ckd_calloc__	#
	movq	%rax, add_tbl(%rip)	# add_tbl.15, add_tbl
	.loc 1 148 0
	movabsq	$4607182418800017408, %rax	#, tmp122
	movq	%rax, -24(%rbp)	# tmp122, d
	.loc 1 149 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L14	#
.L9:
	.loc 1 141 0
	movsd	-24(%rbp), %xmm0	# d, tmp119
	mulsd	-16(%rbp), %xmm0	# f, tmp118
	movsd	%xmm0, -24(%rbp)	# tmp118, d
	.loc 1 129 0
	addl	$1, -32(%rbp)	#, i
	.loc 1 142 0
	jmp	.L11	#
.L14:
	.loc 1 150 0
	movsd	-24(%rbp), %xmm1	# d, tmp123
	movsd	.LC4(%rip), %xmm0	#, tmp124
	addsd	%xmm1, %xmm0	# tmp123, D.5101
	call	log	#
	movsd	invlogB(%rip), %xmm1	# invlogB, invlogB.16
	mulsd	%xmm1, %xmm0	# invlogB.16, tmp125
	movsd	%xmm0, -8(%rbp)	# tmp125, t
	.loc 1 151 0
	movsd	-8(%rbp), %xmm1	# t, tmp126
	movsd	.LC11(%rip), %xmm0	#, tmp127
	addsd	%xmm1, %xmm0	# tmp126, D.5101
	cvttsd2si	%xmm0, %eax	# D.5101, tmp128
	movl	%eax, -28(%rbp)	# tmp128, k
	.loc 1 153 0
	movq	add_tbl(%rip), %rax	# add_tbl, add_tbl.17
	movl	-32(%rbp), %edx	# i, tmp129
	movslq	%edx, %rdx	# tmp129, D.5103
	addq	%rdx, %rdx	# D.5103
	addq	%rax, %rdx	# add_tbl.17, D.5104
	movl	-28(%rbp), %eax	# k, tmp130
	movw	%ax, (%rdx)	# D.5105, *_50
	.loc 1 155 0
	cmpl	$0, -28(%rbp)	#, k
	jne	.L12	#,
	.loc 1 156 0
	nop
	.loc 1 161 0
	movl	$.LC1, %edx	#,
	movl	$161, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_info_header	#
	movl	add_tbl_size(%rip), %eax	# add_tbl_size, add_tbl_size.18
	movl	%eax, %esi	# add_tbl_size.18,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 163 0
	movl	$0, %eax	#, D.5099
	jmp	.L8	#
.L12:
	.loc 1 158 0
	movsd	-24(%rbp), %xmm0	# d, tmp132
	mulsd	-16(%rbp), %xmm0	# f, tmp131
	movsd	%xmm0, -24(%rbp)	# tmp131, d
	.loc 1 149 0
	addl	$1, -32(%rbp)	#, i
	.loc 1 159 0
	jmp	.L14	#
.L8:
	.loc 1 164 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	logs3_init, .-logs3_init
	.globl	logs3_add
	.type	logs3_add, @function
logs3_add:
.LFB3:
	.loc 1 168 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# logp, logp
	movl	%esi, -24(%rbp)	# logq, logq
	.loc 1 173 0
	movl	-20(%rbp), %eax	# logp, tmp79
	cmpl	-24(%rbp), %eax	# logq, tmp79
	jle	.L18	#,
	.loc 1 174 0
	movl	-24(%rbp), %eax	# logq, tmp84
	movl	-20(%rbp), %edx	# logp, tmp85
	subl	%eax, %edx	# tmp84, tmp83
	movl	%edx, %eax	# tmp83, tmp83
	movl	%eax, -8(%rbp)	# tmp83, d
	.loc 1 175 0
	movl	-20(%rbp), %eax	# logp, tmp86
	movl	%eax, -4(%rbp)	# tmp86, r
	jmp	.L19	#
.L18:
	.loc 1 177 0
	movl	-20(%rbp), %eax	# logp, tmp91
	movl	-24(%rbp), %edx	# logq, tmp92
	subl	%eax, %edx	# tmp91, tmp90
	movl	%edx, %eax	# tmp90, tmp90
	movl	%eax, -8(%rbp)	# tmp90, d
	.loc 1 178 0
	movl	-24(%rbp), %eax	# logq, tmp93
	movl	%eax, -4(%rbp)	# tmp93, r
.L19:
	.loc 1 184 0
	movl	add_tbl_size(%rip), %eax	# add_tbl_size, add_tbl_size.19
	cmpl	%eax, -8(%rbp)	# add_tbl_size.19, d
	jge	.L20	#,
	.loc 1 186 0
	movl	USE_LOG3_ADD_TABLE(%rip), %eax	# USE_LOG3_ADD_TABLE, USE_LOG3_ADD_TABLE.20
	testl	%eax, %eax	# USE_LOG3_ADD_TABLE.20
	je	.L21	#,
	.loc 1 187 0
	movq	add_tbl(%rip), %rax	# add_tbl, add_tbl.21
	movl	-8(%rbp), %edx	# d, tmp94
	movslq	%edx, %rdx	# tmp94, D.5119
	addq	%rdx, %rdx	# D.5119
	addq	%rdx, %rax	# D.5119, D.5120
	movzwl	(%rax), %eax	# *_15, D.5121
	movzwl	%ax, %eax	# D.5121, D.5122
	addl	%eax, -4(%rbp)	# D.5122, r
	jmp	.L20	#
.L21:
	.loc 1 190 0
	cvtsi2sd	-4(%rbp), %xmm2	# r, D.5123
	movsd	%xmm2, -32(%rbp)	# D.5123, %sfp
	cvtsi2sd	-8(%rbp), %xmm0	# d, D.5123
	movq	F(%rip), %rax	# F, F.22
	movapd	%xmm0, %xmm1	# D.5123,
	movq	%rax, -40(%rbp)	# F.22, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	call	pow	#
	movsd	.LC4(%rip), %xmm1	#, tmp95
	addsd	%xmm1, %xmm0	# tmp95, D.5123
	call	log	#
	movsd	invlogB(%rip), %xmm1	# invlogB, invlogB.23
	mulsd	%xmm1, %xmm0	# invlogB.23, D.5123
	movsd	.LC11(%rip), %xmm1	#, tmp96
	addsd	%xmm1, %xmm0	# tmp96, D.5123
	addsd	-32(%rbp), %xmm0	# %sfp, D.5123
	cvttsd2si	%xmm0, %eax	# D.5123, tmp97
	movl	%eax, -4(%rbp)	# tmp97, r
.L20:
	.loc 1 193 0
	movl	-4(%rbp), %eax	# r, D.5124
	.loc 1 194 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	logs3_add, .-logs3_add
	.section	.rodata
.LC15:
	.string	"logs3 module not initialized\n"
	.text
	.globl	logs3
	.type	logs3, @function
logs3:
.LFB4:
	.loc 1 198 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movsd	%xmm0, -8(%rbp)	# p, p
	.loc 1 199 0
	movq	add_tbl(%rip), %rax	# add_tbl, add_tbl.24
	testq	%rax, %rax	# add_tbl.24
	jne	.L24	#,
	.loc 1 200 0
	movl	$.LC5, %edx	#,
	movl	$200, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L24:
	.loc 1 202 0
	xorpd	%xmm0, %xmm0	# tmp65
	ucomisd	-8(%rbp), %xmm0	# p, tmp65
	jb	.L29	#,
	.loc 1 206 0
	movl	$-939524096, %eax	#, D.5125
	jmp	.L27	#
.L29:
	.loc 1 209 0
	movq	-8(%rbp), %rax	# p, tmp66
	movq	%rax, -16(%rbp)	# tmp66, %sfp
	movsd	-16(%rbp), %xmm0	# %sfp,
	call	log	#
	movsd	invlogB(%rip), %xmm1	# invlogB, invlogB.25
	mulsd	%xmm1, %xmm0	# invlogB.25, D.5126
	cvttsd2si	%xmm0, %eax	# D.5126, D.5125
.L27:
	.loc 1 210 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	logs3, .-logs3
	.globl	log_to_logs3
	.type	log_to_logs3, @function
log_to_logs3:
.LFB5:
	.loc 1 214 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movsd	%xmm0, -8(%rbp)	# logp, logp
	.loc 1 215 0
	movq	add_tbl(%rip), %rax	# add_tbl, add_tbl.26
	testq	%rax, %rax	# add_tbl.26
	jne	.L31	#,
	.loc 1 216 0
	movl	$.LC5, %edx	#,
	movl	$216, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L31:
	.loc 1 218 0
	movsd	invlogB(%rip), %xmm0	# invlogB, invlogB.27
	mulsd	-8(%rbp), %xmm0	# logp, D.5128
	cvttsd2si	%xmm0, %eax	# D.5128, D.5129
	.loc 1 219 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	log_to_logs3, .-log_to_logs3
	.globl	log_to_logs3_factor
	.type	log_to_logs3_factor, @function
log_to_logs3_factor:
.LFB6:
	.loc 1 223 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 224 0
	movq	invlogB(%rip), %rax	# invlogB, D.5130
	.loc 1 225 0
	movq	%rax, -8(%rbp)	# <retval>, %sfp
	movsd	-8(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	log_to_logs3_factor, .-log_to_logs3_factor
	.globl	logs3_to_log
	.type	logs3_to_log, @function
logs3_to_log:
.LFB7:
	.loc 1 229 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# logs3p, logs3p
	.loc 1 230 0
	movq	add_tbl(%rip), %rax	# add_tbl, add_tbl.28
	testq	%rax, %rax	# add_tbl.28
	jne	.L36	#,
	.loc 1 231 0
	movl	$.LC5, %edx	#,
	movl	$231, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L36:
	.loc 1 233 0
	cvtsi2sd	-4(%rbp), %xmm0	# logs3p, D.5131
	movsd	logB(%rip), %xmm1	# logB, logB.29
	mulsd	%xmm1, %xmm0	# logB.29, D.5132
	movsd	%xmm0, -16(%rbp)	# D.5132, %sfp
	movq	-16(%rbp), %rax	# %sfp, <retval>
	.loc 1 234 0
	movq	%rax, -16(%rbp)	# <retval>, %sfp
	movsd	-16(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	logs3_to_log, .-logs3_to_log
	.globl	logs3_to_p
	.type	logs3_to_p, @function
logs3_to_p:
.LFB8:
	.loc 1 238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# logs3p, logs3p
	.loc 1 239 0
	cvtsi2sd	-4(%rbp), %xmm0	# logs3p, D.5133
	movsd	logB(%rip), %xmm1	# logB, logB.30
	mulsd	%xmm1, %xmm0	# logB.30, D.5133
	call	exp	#
	movsd	%xmm0, -16(%rbp)	#, %sfp
	movq	-16(%rbp), %rax	# %sfp, D.5134
	.loc 1 240 0
	movq	%rax, -16(%rbp)	# <retval>, %sfp
	movsd	-16(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	logs3_to_p, .-logs3_to_p
	.globl	log10_to_logs3
	.type	log10_to_logs3, @function
log10_to_logs3:
.LFB9:
	.loc 1 244 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movsd	%xmm0, -8(%rbp)	# log10p, log10p
	.loc 1 245 0
	movq	add_tbl(%rip), %rax	# add_tbl, add_tbl.31
	testq	%rax, %rax	# add_tbl.31
	jne	.L41	#,
	.loc 1 246 0
	movl	$.LC5, %edx	#,
	movl	$246, %esi	#,
	movl	$.LC2, %edi	#,
	call	_E__pr_header	#
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L41:
	.loc 1 248 0
	movsd	invlog10B(%rip), %xmm0	# invlog10B, invlog10B.32
	mulsd	-8(%rbp), %xmm0	# log10p, D.5135
	cvttsd2si	%xmm0, %eax	# D.5135, D.5136
	.loc 1 249 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	log10_to_logs3, .-log10_to_logs3
	.globl	logs_free
	.type	logs_free, @function
logs_free:
.LFB10:
	.loc 1 252 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 253 0
	movq	add_tbl(%rip), %rax	# add_tbl, add_tbl.33
	testq	%rax, %rax	# add_tbl.33
	je	.L43	#,
	.loc 1 254 0
	movq	add_tbl(%rip), %rax	# add_tbl, add_tbl.34
	movq	%rax, %rdi	# add_tbl.34,
	call	ckd_free	#
.L43:
	.loc 1 255 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	logs_free, .-logs_free
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC10:
	.long	4277811695
	.long	1072049730
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.text
.Letext0:
	.file 2 "./libutil/prim_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x33d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF34
	.byte	0x1
	.long	.LASF35
	.long	.LASF36
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x43
	.long	0x3b
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x46
	.long	0x88
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.byte	0x5b
	.long	0x8f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x11c
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x5b
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x5d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.string	"d"
	.byte	0x1
	.byte	0x5e
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"t"
	.byte	0x1
	.byte	0x5e
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"f"
	.byte	0x1
	.byte	0x5e
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.long	.LASF17
	.byte	0x1
	.byte	0xa7
	.long	0x8f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x172
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0xa7
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0xa7
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"d"
	.byte	0x1
	.byte	0xa9
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"r"
	.byte	0x1
	.byte	0xa9
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	.LASF21
	.byte	0x1
	.byte	0xc5
	.long	0x8f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a0
	.uleb128 0x8
	.string	"p"
	.byte	0x1
	.byte	0xc5
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.long	.LASF22
	.byte	0x1
	.byte	0xd5
	.long	0x8f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0xd5
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x1
	.byte	0xde
	.long	0xa5
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.long	.LASF23
	.byte	0x1
	.byte	0xe4
	.long	0xa5
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.byte	0xe4
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	.LASF25
	.byte	0x1
	.byte	0xed
	.long	0xa5
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x24d
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.byte	0xed
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0x1
	.byte	0xf3
	.long	0x8f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x27d
	.uleb128 0x6
	.long	.LASF27
	.byte	0x1
	.byte	0xf3
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.byte	0xfb
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x40
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	USE_LOG3_ADD_TABLE
	.uleb128 0x7
	.string	"F"
	.byte	0x1
	.byte	0x41
	.long	0xa5
	.uleb128 0x9
	.byte	0x3
	.quad	F
	.uleb128 0x7
	.string	"B"
	.byte	0x1
	.byte	0x56
	.long	0xa5
	.uleb128 0x9
	.byte	0x3
	.quad	B
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0x56
	.long	0xa5
	.uleb128 0x9
	.byte	0x3
	.quad	logB
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.byte	0x56
	.long	0xa5
	.uleb128 0x9
	.byte	0x3
	.quad	invlogB
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0x56
	.long	0xa5
	.uleb128 0x9
	.byte	0x3
	.quad	invlog10B
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.byte	0x57
	.long	0x325
	.uleb128 0x9
	.byte	0x3
	.quad	add_tbl
	.uleb128 0xc
	.byte	0x8
	.long	0x9a
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.byte	0x58
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	add_tbl_size
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
.LASF22:
	.string	"log_to_logs3"
.LASF29:
	.string	"logB"
.LASF19:
	.string	"logp"
.LASF37:
	.string	"log_to_logs3_factor"
.LASF20:
	.string	"logq"
.LASF15:
	.string	"float64"
.LASF2:
	.string	"short unsigned int"
.LASF12:
	.string	"double"
.LASF16:
	.string	"logs3_init"
.LASF30:
	.string	"invlogB"
.LASF33:
	.string	"add_tbl_size"
.LASF11:
	.string	"float"
.LASF4:
	.string	"signed char"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"base"
.LASF26:
	.string	"log10_to_logs3"
.LASF27:
	.string	"log10p"
.LASF0:
	.string	"long unsigned int"
.LASF38:
	.string	"logs_free"
.LASF14:
	.string	"uint16"
.LASF23:
	.string	"logs3_to_log"
.LASF36:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF21:
	.string	"logs3"
.LASF10:
	.string	"long long unsigned int"
.LASF25:
	.string	"logs3_to_p"
.LASF13:
	.string	"int32"
.LASF7:
	.string	"sizetype"
.LASF28:
	.string	"USE_LOG3_ADD_TABLE"
.LASF9:
	.string	"long long int"
.LASF32:
	.string	"add_tbl"
.LASF8:
	.string	"char"
.LASF34:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF17:
	.string	"logs3_add"
.LASF6:
	.string	"long int"
.LASF24:
	.string	"logs3p"
.LASF31:
	.string	"invlog10B"
.LASF35:
	.string	"logs3.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
