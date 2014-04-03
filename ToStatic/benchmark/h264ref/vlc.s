	.file	"vlc.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 vlc.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	ue_v
	.type	ue_v, @function
ue_v:
.LFB2:
	.file 1 "vlc.c"
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# tracestring, tracestring
	movl	%esi, -76(%rbp)	# value, value
	movq	%rdx, -88(%rbp)	# part, part
	.loc 1 60 0
	leaq	-48(%rbp), %rax	#, tmp61
	movq	%rax, -56(%rbp)	# tmp61, sym
	.loc 1 61 0
	movq	-56(%rbp), %rax	# sym, tmp62
	movl	$0, (%rax)	#, sym_1->type
	.loc 1 62 0
	movq	-56(%rbp), %rax	# sym, tmp63
	movq	$ue_linfo, 32(%rax)	#, sym_1->mapping
	.loc 1 63 0
	movq	-56(%rbp), %rax	# sym, tmp64
	movl	-76(%rbp), %edx	# value, tmp65
	movl	%edx, 4(%rax)	# tmp65, sym_1->value1
	.loc 1 64 0
	movq	-56(%rbp), %rax	# sym, tmp66
	movl	$0, 8(%rax)	#, sym_1->value2
	.loc 1 69 0
	movq	-88(%rbp), %rdx	# part, tmp67
	movq	-56(%rbp), %rax	# sym, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	writeSyntaxElement_UVLC	#
	.loc 1 70 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ue_v, .-ue_v
	.globl	se_v
	.type	se_v, @function
se_v:
.LFB3:
	.loc 1 97 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# tracestring, tracestring
	movl	%esi, -76(%rbp)	# value, value
	movq	%rdx, -88(%rbp)	# part, part
	.loc 1 98 0
	leaq	-48(%rbp), %rax	#, tmp61
	movq	%rax, -56(%rbp)	# tmp61, sym
	.loc 1 99 0
	movq	-56(%rbp), %rax	# sym, tmp62
	movl	$0, (%rax)	#, sym_1->type
	.loc 1 100 0
	movq	-56(%rbp), %rax	# sym, tmp63
	movq	$se_linfo, 32(%rax)	#, sym_1->mapping
	.loc 1 101 0
	movq	-56(%rbp), %rax	# sym, tmp64
	movl	-76(%rbp), %edx	# value, tmp65
	movl	%edx, 4(%rax)	# tmp65, sym_1->value1
	.loc 1 102 0
	movq	-56(%rbp), %rax	# sym, tmp66
	movl	$0, 8(%rax)	#, sym_1->value2
	.loc 1 107 0
	movq	-88(%rbp), %rdx	# part, tmp67
	movq	-56(%rbp), %rax	# sym, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	writeSyntaxElement_UVLC	#
	.loc 1 108 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	se_v, .-se_v
	.globl	u_1
	.type	u_1, @function
u_1:
.LFB4:
	.loc 1 136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# tracestring, tracestring
	movl	%esi, -76(%rbp)	# value, value
	movq	%rdx, -88(%rbp)	# part, part
	.loc 1 137 0
	leaq	-48(%rbp), %rax	#, tmp62
	movq	%rax, -56(%rbp)	# tmp62, sym
	.loc 1 139 0
	movl	-76(%rbp), %edx	# value, value.0
	movq	-56(%rbp), %rax	# sym, tmp63
	movl	%edx, 20(%rax)	# value.0, sym_1->bitpattern
	.loc 1 140 0
	movq	-56(%rbp), %rax	# sym, tmp64
	movl	$1, 12(%rax)	#, sym_1->len
	.loc 1 141 0
	movq	-56(%rbp), %rax	# sym, tmp65
	movl	$0, (%rax)	#, sym_1->type
	.loc 1 142 0
	movq	-56(%rbp), %rax	# sym, tmp66
	movl	-76(%rbp), %edx	# value, tmp67
	movl	%edx, 4(%rax)	# tmp67, sym_1->value1
	.loc 1 143 0
	movq	-56(%rbp), %rax	# sym, tmp68
	movl	$0, 8(%rax)	#, sym_1->value2
	.loc 1 148 0
	movq	-88(%rbp), %rdx	# part, tmp69
	movq	-56(%rbp), %rax	# sym, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	writeSyntaxElement_fixed	#
	.loc 1 149 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	u_1, .-u_1
	.globl	u_v
	.type	u_v, @function
u_v:
.LFB5:
	.loc 1 179 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -68(%rbp)	# n, n
	movq	%rsi, -80(%rbp)	# tracestring, tracestring
	movl	%edx, -72(%rbp)	# value, value
	movq	%rcx, -88(%rbp)	# part, part
	.loc 1 180 0
	leaq	-48(%rbp), %rax	#, tmp62
	movq	%rax, -56(%rbp)	# tmp62, sym
	.loc 1 182 0
	movl	-72(%rbp), %edx	# value, value.1
	movq	-56(%rbp), %rax	# sym, tmp63
	movl	%edx, 20(%rax)	# value.1, sym_1->bitpattern
	.loc 1 183 0
	movq	-56(%rbp), %rax	# sym, tmp64
	movl	-68(%rbp), %edx	# n, tmp65
	movl	%edx, 12(%rax)	# tmp65, sym_1->len
	.loc 1 184 0
	movq	-56(%rbp), %rax	# sym, tmp66
	movl	$0, (%rax)	#, sym_1->type
	.loc 1 185 0
	movq	-56(%rbp), %rax	# sym, tmp67
	movl	-72(%rbp), %edx	# value, tmp68
	movl	%edx, 4(%rax)	# tmp68, sym_1->value1
	.loc 1 186 0
	movq	-56(%rbp), %rax	# sym, tmp69
	movl	$0, 8(%rax)	#, sym_1->value2
	.loc 1 191 0
	movq	-88(%rbp), %rdx	# part, tmp70
	movq	-56(%rbp), %rax	# sym, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	writeSyntaxElement_fixed	#
	.loc 1 192 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	u_v, .-u_v
	.globl	ue_linfo
	.type	ue_linfo, @function
ue_linfo:
.LFB6:
	.loc 1 210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# ue, ue
	movl	%esi, -40(%rbp)	# dummy, dummy
	movq	%rdx, -48(%rbp)	# len, len
	movq	%rcx, -56(%rbp)	# info, info
	.loc 1 213 0
	movl	-36(%rbp), %eax	# ue, tmp67
	addl	$1, %eax	#, D.6000
	movl	%eax, %edx	# D.6000, tmp68
	shrl	$31, %edx	#, tmp68
	addl	%edx, %eax	# tmp68, tmp69
	sarl	%eax	# tmp70
	movl	%eax, -20(%rbp)	# tmp70, nn
	.loc 1 215 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L10	#
.L12:
	.loc 1 217 0 discriminator 1
	movl	-20(%rbp), %eax	# nn, tmp72
	movl	%eax, %edx	# tmp72, tmp73
	shrl	$31, %edx	#, tmp73
	addl	%edx, %eax	# tmp73, tmp74
	sarl	%eax	# tmp75
	movl	%eax, -20(%rbp)	# tmp75, nn
	.loc 1 215 0 discriminator 1
	addl	$1, -24(%rbp)	#, i
.L10:
	cmpl	$15, -24(%rbp)	#, i
	jg	.L11	#,
	.loc 1 215 0 is_stmt 0 discriminator 2
	cmpl	$0, -20(%rbp)	#, nn
	jne	.L12	#,
.L11:
	.loc 1 219 0 is_stmt 1
	movl	-24(%rbp), %eax	# i, tmp76
	addl	%eax, %eax	# D.6000
	leal	1(%rax), %edx	#, D.6000
	movq	-48(%rbp), %rax	# len, tmp77
	movl	%edx, (%rax)	# D.6000, *len_11(D)
	.loc 1 220 0
	movl	-36(%rbp), %eax	# ue, tmp78
	leal	1(%rax), %ebx	#, D.6000
	cvtsi2sd	-24(%rbp), %xmm0	# i, D.6001
	movabsq	$4611686018427387904, %rax	#, tmp79
	movapd	%xmm0, %xmm1	# D.6001,
	movq	%rax, -64(%rbp)	# tmp79, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	pow	#
	cvttsd2si	%xmm0, %eax	# D.6001, D.6000
	subl	%eax, %ebx	# D.6000, D.6000
	movl	%ebx, %edx	# D.6000, D.6000
	movq	-56(%rbp), %rax	# info, tmp80
	movl	%edx, (%rax)	# D.6000, *info_17(D)
	.loc 1 221 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ue_linfo, .-ue_linfo
	.globl	se_linfo
	.type	se_linfo, @function
se_linfo:
.LFB7:
	.loc 1 239 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# se, se
	movl	%esi, -24(%rbp)	# dummy, dummy
	movq	%rdx, -32(%rbp)	# len, len
	movq	%rcx, -40(%rbp)	# info, info
	.loc 1 243 0
	movl	$0, -12(%rbp)	#, sign
	.loc 1 245 0
	cmpl	$0, -20(%rbp)	#, se
	jg	.L14	#,
	.loc 1 247 0
	movl	$1, -12(%rbp)	#, sign
.L14:
	.loc 1 249 0
	movl	-20(%rbp), %eax	# se, tmp68
	cltd
	movl	%edx, %eax	# tmp67, D.6003
	xorl	-20(%rbp), %eax	# se, D.6003
	subl	%edx, %eax	# tmp67, D.6003
	addl	%eax, %eax	# tmp69
	movl	%eax, -4(%rbp)	# tmp69, n
	.loc 1 255 0
	movl	-4(%rbp), %eax	# n, tmp71
	movl	%eax, %edx	# tmp71, tmp72
	shrl	$31, %edx	#, tmp72
	addl	%edx, %eax	# tmp72, tmp73
	sarl	%eax	# tmp74
	movl	%eax, -8(%rbp)	# tmp74, nn
	.loc 1 256 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L15	#
.L17:
	.loc 1 258 0 discriminator 1
	movl	-8(%rbp), %eax	# nn, tmp76
	movl	%eax, %edx	# tmp76, tmp77
	shrl	$31, %edx	#, tmp77
	addl	%edx, %eax	# tmp77, tmp78
	sarl	%eax	# tmp79
	movl	%eax, -8(%rbp)	# tmp79, nn
	.loc 1 256 0 discriminator 1
	addl	$1, -16(%rbp)	#, i
.L15:
	cmpl	$15, -16(%rbp)	#, i
	jg	.L16	#,
	.loc 1 256 0 is_stmt 0 discriminator 2
	cmpl	$0, -8(%rbp)	#, nn
	jne	.L17	#,
.L16:
	.loc 1 260 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, tmp80
	addl	%eax, %eax	# D.6003
	leal	1(%rax), %edx	#, D.6003
	movq	-32(%rbp), %rax	# len, tmp81
	movl	%edx, (%rax)	# D.6003, *len_15(D)
	.loc 1 261 0
	cvtsi2sd	-16(%rbp), %xmm0	# i, D.6004
	movabsq	$4611686018427387904, %rax	#, tmp82
	movapd	%xmm0, %xmm1	# D.6004,
	movq	%rax, -48(%rbp)	# tmp82, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	call	pow	#
	cvttsd2si	%xmm0, %eax	# D.6004, D.6003
	movl	-4(%rbp), %edx	# n, tmp83
	subl	%eax, %edx	# D.6003, D.6003
	movl	-12(%rbp), %eax	# sign, tmp84
	addl	%eax, %edx	# tmp84, D.6003
	movq	-40(%rbp), %rax	# info, tmp85
	movl	%edx, (%rax)	# D.6003, *info_21(D)
	.loc 1 262 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	se_linfo, .-se_linfo
	.globl	cbp_linfo_intra
	.type	cbp_linfo_intra, @function
cbp_linfo_intra:
.LFB8:
	.loc 1 274 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# cbp, cbp
	movl	%esi, -8(%rbp)	# dummy, dummy
	movq	%rdx, -16(%rbp)	# len, len
	movq	%rcx, -24(%rbp)	# info, info
	.loc 1 276 0
	movq	img(%rip), %rax	# img, img.2
	movl	72700(%rax), %eax	# img.2_1->yuv_format, D.6005
	testl	%eax, %eax	# D.6005
	setne	%al	#, D.6006
	movzbl	%al, %eax	# D.6006, D.6005
	movl	-4(%rbp), %edx	# cbp, tmp66
	movslq	%edx, %rcx	# tmp66, tmp65
	movslq	%eax, %rdx	# D.6005, tmp67
	movq	%rdx, %rax	# tmp67, tmp68
	addq	%rax, %rax	# tmp68
	addq	%rdx, %rax	# tmp67, tmp68
	salq	$4, %rax	#, tmp69
	addq	%rcx, %rax	# tmp65, tmp70
	movzbl	NCBP(%rax,%rax), %eax	# NCBP, D.6007
	movzbl	%al, %eax	# D.6007, D.6005
	movq	-24(%rbp), %rcx	# info, tmp71
	movq	-16(%rbp), %rdx	# len, tmp72
	movl	-8(%rbp), %esi	# dummy, tmp73
	movl	%eax, %edi	# D.6005,
	call	ue_linfo	#
	.loc 1 277 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	cbp_linfo_intra, .-cbp_linfo_intra
	.globl	cbp_linfo_inter
	.type	cbp_linfo_inter, @function
cbp_linfo_inter:
.LFB9:
	.loc 1 289 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# cbp, cbp
	movl	%esi, -8(%rbp)	# dummy, dummy
	movq	%rdx, -16(%rbp)	# len, len
	movq	%rcx, -24(%rbp)	# info, info
	.loc 1 291 0
	movq	img(%rip), %rax	# img, img.3
	movl	72700(%rax), %eax	# img.3_1->yuv_format, D.6008
	testl	%eax, %eax	# D.6008
	setne	%al	#, D.6009
	movzbl	%al, %eax	# D.6009, D.6008
	movl	-4(%rbp), %edx	# cbp, tmp66
	movslq	%edx, %rcx	# tmp66, tmp65
	movslq	%eax, %rdx	# D.6008, tmp67
	movq	%rdx, %rax	# tmp67, tmp68
	addq	%rax, %rax	# tmp68
	addq	%rdx, %rax	# tmp67, tmp68
	salq	$4, %rax	#, tmp69
	addq	%rcx, %rax	# tmp65, tmp70
	movzbl	NCBP+1(%rax,%rax), %eax	# NCBP, D.6010
	movzbl	%al, %eax	# D.6010, D.6008
	movq	-24(%rbp), %rcx	# info, tmp71
	movq	-16(%rbp), %rdx	# len, tmp72
	movl	-8(%rbp), %esi	# dummy, tmp73
	movl	%eax, %edi	# D.6008,
	call	ue_linfo	#
	.loc 1 292 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	cbp_linfo_inter, .-cbp_linfo_inter
	.globl	levrun_linfo_c2x2
	.type	levrun_linfo_c2x2, @function
levrun_linfo_c2x2:
.LFB10:
	.loc 1 308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -68(%rbp)	# level, level
	movl	%esi, -72(%rbp)	# run, run
	movq	%rdx, -80(%rbp)	# len, len
	movq	%rcx, -88(%rbp)	# info, info
	.loc 1 309 0
	movl	$1, -32(%rbp)	#, NTAB
	movl	$5, -28(%rbp)	#, NTAB
	movl	$3, -24(%rbp)	#, NTAB
	movl	$0, -20(%rbp)	#, NTAB
	.loc 1 314 0
	movl	$2, -16(%rbp)	#, LEVRUN
	movl	$1, -12(%rbp)	#, LEVRUN
	movl	$0, -8(%rbp)	#, LEVRUN
	movl	$0, -4(%rbp)	#, LEVRUN
	.loc 1 321 0
	cmpl	$0, -68(%rbp)	#, level
	jne	.L21	#,
	.loc 1 323 0
	movq	-80(%rbp), %rax	# len, tmp73
	movl	$1, (%rax)	#, *len_6(D)
	jmp	.L20	#
.L21:
	.loc 1 326 0
	movl	$0, -44(%rbp)	#, sign
	.loc 1 327 0
	cmpl	$0, -68(%rbp)	#, level
	jg	.L23	#,
	.loc 1 329 0
	movl	$1, -44(%rbp)	#, sign
.L23:
	.loc 1 331 0
	movl	-68(%rbp), %eax	# level, tmp75
	sarl	$31, %eax	#, tmp74
	movl	%eax, %edx	# tmp74, tmp77
	xorl	-68(%rbp), %edx	# level, tmp77
	subl	%eax, %edx	# tmp74, tmp78
	movl	%edx, %eax	# tmp78, tmp78
	movl	%eax, -36(%rbp)	# tmp78, levabs
	.loc 1 332 0
	movl	-72(%rbp), %eax	# run, tmp80
	cltq
	movl	-16(%rbp,%rax,4), %eax	# LEVRUN, D.6011
	cmpl	-36(%rbp), %eax	# levabs, D.6011
	jl	.L24	#,
	.loc 1 334 0
	movl	-36(%rbp), %eax	# levabs, tmp81
	leal	-1(%rax), %edx	#, D.6011
	movl	-72(%rbp), %eax	# run, tmp83
	cltq
	movslq	%edx, %rdx	# D.6011, tmp84
	addq	%rdx, %rdx	# tmp85
	addq	%rdx, %rax	# tmp85, tmp86
	movl	-32(%rbp,%rax,4), %eax	# NTAB, D.6011
	addl	$1, %eax	#, tmp87
	movl	%eax, -48(%rbp)	# tmp87, n
	jmp	.L25	#
.L24:
	.loc 1 338 0
	movl	-72(%rbp), %eax	# run, tmp89
	cltq
	movl	-16(%rbp,%rax,4), %eax	# LEVRUN, D.6011
	movl	-36(%rbp), %edx	# levabs, tmp90
	subl	%eax, %edx	# D.6011, D.6011
	movl	%edx, %eax	# D.6011, D.6011
	leal	0(,%rax,4), %edx	#, D.6011
	movl	-72(%rbp), %eax	# run, tmp91
	addl	%edx, %eax	# D.6011, D.6011
	addl	%eax, %eax	# tmp92
	movl	%eax, -48(%rbp)	# tmp92, n
.L25:
	.loc 1 341 0
	movl	-48(%rbp), %eax	# n, tmp94
	movl	%eax, %edx	# tmp94, tmp95
	shrl	$31, %edx	#, tmp95
	addl	%edx, %eax	# tmp95, tmp96
	sarl	%eax	# tmp97
	movl	%eax, -40(%rbp)	# tmp97, nn
	.loc 1 343 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L26	#
.L28:
	.loc 1 345 0 discriminator 1
	movl	-40(%rbp), %eax	# nn, tmp99
	movl	%eax, %edx	# tmp99, tmp100
	shrl	$31, %edx	#, tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
	movl	%eax, -40(%rbp)	# tmp102, nn
	.loc 1 343 0 discriminator 1
	addl	$1, -52(%rbp)	#, i
.L26:
	cmpl	$15, -52(%rbp)	#, i
	jg	.L27	#,
	.loc 1 343 0 is_stmt 0 discriminator 2
	cmpl	$0, -40(%rbp)	#, nn
	jne	.L28	#,
.L27:
	.loc 1 347 0 is_stmt 1
	movl	-52(%rbp), %eax	# i, tmp103
	addl	%eax, %eax	# D.6011
	leal	1(%rax), %edx	#, D.6011
	movq	-80(%rbp), %rax	# len, tmp104
	movl	%edx, (%rax)	# D.6011, *len_6(D)
	.loc 1 348 0
	cvtsi2sd	-52(%rbp), %xmm0	# i, D.6012
	movabsq	$4611686018427387904, %rax	#, tmp105
	movapd	%xmm0, %xmm1	# D.6012,
	movq	%rax, -96(%rbp)	# tmp105, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	call	pow	#
	cvttsd2si	%xmm0, %eax	# D.6012, D.6011
	movl	-48(%rbp), %edx	# n, tmp106
	subl	%eax, %edx	# D.6011, D.6011
	movl	-44(%rbp), %eax	# sign, tmp107
	addl	%eax, %edx	# tmp107, D.6011
	movq	-88(%rbp), %rax	# info, tmp108
	movl	%edx, (%rax)	# D.6011, *info_31(D)
.L20:
	.loc 1 349 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	levrun_linfo_c2x2, .-levrun_linfo_c2x2
	.globl	levrun_linfo_inter
	.type	levrun_linfo_inter, @function
levrun_linfo_inter:
.LFB11:
	.loc 1 365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movl	%edi, -116(%rbp)	# level, level
	movl	%esi, -120(%rbp)	# run, run
	movq	%rdx, -128(%rbp)	# len, len
	movq	%rcx, -136(%rbp)	# info, info
	.loc 1 365 0
	movq	%fs:40, %rax	#, tmp115
	movq	%rax, -8(%rbp)	# tmp115, D.6016
	xorl	%eax, %eax	# tmp115
	.loc 1 366 0
	movb	$4, -32(%rbp)	#, LEVRUN
	movb	$2, -31(%rbp)	#, LEVRUN
	movb	$2, -30(%rbp)	#, LEVRUN
	movb	$1, -29(%rbp)	#, LEVRUN
	movb	$1, -28(%rbp)	#, LEVRUN
	movb	$1, -27(%rbp)	#, LEVRUN
	movb	$1, -26(%rbp)	#, LEVRUN
	movb	$1, -25(%rbp)	#, LEVRUN
	movb	$1, -24(%rbp)	#, LEVRUN
	movb	$1, -23(%rbp)	#, LEVRUN
	movb	$0, -22(%rbp)	#, LEVRUN
	movb	$0, -21(%rbp)	#, LEVRUN
	movb	$0, -20(%rbp)	#, LEVRUN
	movb	$0, -19(%rbp)	#, LEVRUN
	movb	$0, -18(%rbp)	#, LEVRUN
	movb	$0, -17(%rbp)	#, LEVRUN
	.loc 1 370 0
	movb	$1, -80(%rbp)	#, NTAB
	movb	$3, -79(%rbp)	#, NTAB
	movb	$5, -78(%rbp)	#, NTAB
	movb	$9, -77(%rbp)	#, NTAB
	movb	$11, -76(%rbp)	#, NTAB
	movb	$13, -75(%rbp)	#, NTAB
	movb	$21, -74(%rbp)	#, NTAB
	movb	$23, -73(%rbp)	#, NTAB
	movb	$25, -72(%rbp)	#, NTAB
	movb	$27, -71(%rbp)	#, NTAB
	movb	$7, -70(%rbp)	#, NTAB
	movb	$17, -69(%rbp)	#, NTAB
	movb	$19, -68(%rbp)	#, NTAB
	movb	$0, -67(%rbp)	#, NTAB
	movb	$0, -66(%rbp)	#, NTAB
	movb	$0, -65(%rbp)	#, NTAB
	movb	$0, -64(%rbp)	#, NTAB
	movb	$0, -63(%rbp)	#, NTAB
	movb	$0, -62(%rbp)	#, NTAB
	movb	$0, -61(%rbp)	#, NTAB
	movb	$15, -60(%rbp)	#, NTAB
	movb	$0, -59(%rbp)	#, NTAB
	movb	$0, -58(%rbp)	#, NTAB
	movb	$0, -57(%rbp)	#, NTAB
	movb	$0, -56(%rbp)	#, NTAB
	movb	$0, -55(%rbp)	#, NTAB
	movb	$0, -54(%rbp)	#, NTAB
	movb	$0, -53(%rbp)	#, NTAB
	movb	$0, -52(%rbp)	#, NTAB
	movb	$0, -51(%rbp)	#, NTAB
	movb	$29, -50(%rbp)	#, NTAB
	movb	$0, -49(%rbp)	#, NTAB
	movb	$0, -48(%rbp)	#, NTAB
	movb	$0, -47(%rbp)	#, NTAB
	movb	$0, -46(%rbp)	#, NTAB
	movb	$0, -45(%rbp)	#, NTAB
	movb	$0, -44(%rbp)	#, NTAB
	movb	$0, -43(%rbp)	#, NTAB
	movb	$0, -42(%rbp)	#, NTAB
	movb	$0, -41(%rbp)	#, NTAB
	.loc 1 380 0
	cmpl	$0, -116(%rbp)	#, level
	jne	.L30	#,
	.loc 1 382 0
	movq	-128(%rbp), %rax	# len, tmp76
	movl	$1, (%rax)	#, *len_6(D)
	jmp	.L29	#
.L30:
	.loc 1 386 0
	cmpl	$0, -116(%rbp)	#, level
	jg	.L32	#,
	.loc 1 387 0
	movl	$1, -92(%rbp)	#, sign
	jmp	.L33	#
.L32:
	.loc 1 389 0
	movl	$0, -92(%rbp)	#, sign
.L33:
	.loc 1 391 0
	movl	-116(%rbp), %eax	# level, tmp78
	sarl	$31, %eax	#, tmp77
	movl	%eax, %edx	# tmp77, tmp80
	xorl	-116(%rbp), %edx	# level, tmp80
	subl	%eax, %edx	# tmp77, tmp81
	movl	%edx, %eax	# tmp81, tmp81
	movl	%eax, -84(%rbp)	# tmp81, levabs
	.loc 1 392 0
	movl	-120(%rbp), %eax	# run, tmp83
	cltq
	movzbl	-32(%rbp,%rax), %eax	# LEVRUN, D.6013
	movzbl	%al, %eax	# D.6013, D.6014
	cmpl	-84(%rbp), %eax	# levabs, D.6014
	jl	.L34	#,
	.loc 1 394 0
	movl	-84(%rbp), %eax	# levabs, tmp84
	leal	-1(%rax), %edx	#, D.6014
	movl	-120(%rbp), %eax	# run, tmp86
	movslq	%eax, %rcx	# tmp86, tmp85
	movslq	%edx, %rdx	# D.6014, tmp87
	movq	%rdx, %rax	# tmp87, tmp88
	salq	$2, %rax	#, tmp88
	addq	%rdx, %rax	# tmp87, tmp88
	addq	%rax, %rax	# tmp89
	addq	%rbp, %rax	#, tmp90
	addq	%rcx, %rax	# tmp85, tmp91
	subq	$80, %rax	#, tmp92
	movzbl	(%rax), %eax	# NTAB, D.6013
	movzbl	%al, %eax	# D.6013, D.6014
	addl	$1, %eax	#, tmp93
	movl	%eax, -96(%rbp)	# tmp93, n
	jmp	.L35	#
.L34:
	.loc 1 398 0
	movl	-120(%rbp), %eax	# run, tmp95
	cltq
	movzbl	-32(%rbp,%rax), %eax	# LEVRUN, D.6013
	movzbl	%al, %eax	# D.6013, D.6014
	movl	-84(%rbp), %edx	# levabs, tmp96
	subl	%eax, %edx	# D.6014, D.6014
	movl	%edx, %eax	# D.6014, D.6014
	sall	$4, %eax	#, D.6014
	movl	%eax, %edx	# D.6014, D.6014
	movl	-120(%rbp), %eax	# run, tmp97
	addl	%edx, %eax	# D.6014, D.6014
	addl	%eax, %eax	# tmp98
	movl	%eax, -96(%rbp)	# tmp98, n
.L35:
	.loc 1 401 0
	movl	-96(%rbp), %eax	# n, tmp100
	movl	%eax, %edx	# tmp100, tmp101
	shrl	$31, %edx	#, tmp101
	addl	%edx, %eax	# tmp101, tmp102
	sarl	%eax	# tmp103
	movl	%eax, -88(%rbp)	# tmp103, nn
	.loc 1 403 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L36	#
.L38:
	.loc 1 405 0 discriminator 1
	movl	-88(%rbp), %eax	# nn, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	shrl	$31, %edx	#, tmp106
	addl	%edx, %eax	# tmp106, tmp107
	sarl	%eax	# tmp108
	movl	%eax, -88(%rbp)	# tmp108, nn
	.loc 1 403 0 discriminator 1
	addl	$1, -100(%rbp)	#, i
.L36:
	cmpl	$15, -100(%rbp)	#, i
	jg	.L37	#,
	.loc 1 403 0 is_stmt 0 discriminator 2
	cmpl	$0, -88(%rbp)	#, nn
	jne	.L38	#,
.L37:
	.loc 1 407 0 is_stmt 1
	movl	-100(%rbp), %eax	# i, tmp109
	addl	%eax, %eax	# D.6014
	leal	1(%rax), %edx	#, D.6014
	movq	-128(%rbp), %rax	# len, tmp110
	movl	%edx, (%rax)	# D.6014, *len_6(D)
	.loc 1 408 0
	cvtsi2sd	-100(%rbp), %xmm0	# i, D.6015
	movabsq	$4611686018427387904, %rax	#, tmp111
	movapd	%xmm0, %xmm1	# D.6015,
	movq	%rax, -144(%rbp)	# tmp111, %sfp
	movsd	-144(%rbp), %xmm0	# %sfp,
	call	pow	#
	cvttsd2si	%xmm0, %eax	# D.6015, D.6014
	movl	-96(%rbp), %edx	# n, tmp112
	subl	%eax, %edx	# D.6014, D.6014
	movl	-92(%rbp), %eax	# sign, tmp113
	addl	%eax, %edx	# tmp113, D.6014
	movq	-136(%rbp), %rax	# info, tmp114
	movl	%edx, (%rax)	# D.6014, *info_34(D)
.L29:
	.loc 1 410 0
	movq	-8(%rbp), %rax	# D.6016, tmp116
	xorq	%fs:40, %rax	#, tmp116
	je	.L39	#,
	call	__stack_chk_fail	#
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	levrun_linfo_inter, .-levrun_linfo_inter
	.globl	levrun_linfo_intra
	.type	levrun_linfo_intra, @function
levrun_linfo_intra:
.LFB12:
	.loc 1 426 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movl	%edi, -100(%rbp)	# level, level
	movl	%esi, -104(%rbp)	# run, run
	movq	%rdx, -112(%rbp)	# len, len
	movq	%rcx, -120(%rbp)	# info, info
	.loc 1 426 0
	movq	%fs:40, %rax	#, tmp115
	movq	%rax, -8(%rbp)	# tmp115, D.6022
	xorl	%eax, %eax	# tmp115
	.loc 1 427 0
	movb	$9, -16(%rbp)	#, LEVRUN
	movb	$3, -15(%rbp)	#, LEVRUN
	movb	$1, -14(%rbp)	#, LEVRUN
	movb	$1, -13(%rbp)	#, LEVRUN
	movb	$1, -12(%rbp)	#, LEVRUN
	movb	$0, -11(%rbp)	#, LEVRUN
	movb	$0, -10(%rbp)	#, LEVRUN
	movb	$0, -9(%rbp)	#, LEVRUN
	.loc 1 432 0
	movb	$1, -64(%rbp)	#, NTAB
	movb	$3, -63(%rbp)	#, NTAB
	movb	$7, -62(%rbp)	#, NTAB
	movb	$15, -61(%rbp)	#, NTAB
	movb	$17, -60(%rbp)	#, NTAB
	movb	$5, -59(%rbp)	#, NTAB
	movb	$19, -58(%rbp)	#, NTAB
	movb	$0, -57(%rbp)	#, NTAB
	movb	$0, -56(%rbp)	#, NTAB
	movb	$0, -55(%rbp)	#, NTAB
	movb	$9, -54(%rbp)	#, NTAB
	movb	$21, -53(%rbp)	#, NTAB
	movb	$0, -52(%rbp)	#, NTAB
	movb	$0, -51(%rbp)	#, NTAB
	movb	$0, -50(%rbp)	#, NTAB
	movb	$11, -49(%rbp)	#, NTAB
	movb	$0, -48(%rbp)	#, NTAB
	movb	$0, -47(%rbp)	#, NTAB
	movb	$0, -46(%rbp)	#, NTAB
	movb	$0, -45(%rbp)	#, NTAB
	movb	$13, -44(%rbp)	#, NTAB
	movb	$0, -43(%rbp)	#, NTAB
	movb	$0, -42(%rbp)	#, NTAB
	movb	$0, -41(%rbp)	#, NTAB
	movb	$0, -40(%rbp)	#, NTAB
	movb	$23, -39(%rbp)	#, NTAB
	movb	$0, -38(%rbp)	#, NTAB
	movb	$0, -37(%rbp)	#, NTAB
	movb	$0, -36(%rbp)	#, NTAB
	movb	$0, -35(%rbp)	#, NTAB
	movb	$25, -34(%rbp)	#, NTAB
	movb	$0, -33(%rbp)	#, NTAB
	movb	$0, -32(%rbp)	#, NTAB
	movb	$0, -31(%rbp)	#, NTAB
	movb	$0, -30(%rbp)	#, NTAB
	movb	$27, -29(%rbp)	#, NTAB
	movb	$0, -28(%rbp)	#, NTAB
	movb	$0, -27(%rbp)	#, NTAB
	movb	$0, -26(%rbp)	#, NTAB
	movb	$0, -25(%rbp)	#, NTAB
	movb	$29, -24(%rbp)	#, NTAB
	movb	$0, -23(%rbp)	#, NTAB
	movb	$0, -22(%rbp)	#, NTAB
	movb	$0, -21(%rbp)	#, NTAB
	movb	$0, -20(%rbp)	#, NTAB
	.loc 1 447 0
	cmpl	$0, -100(%rbp)	#, level
	jne	.L41	#,
	.loc 1 449 0
	movq	-112(%rbp), %rax	# len, tmp77
	movl	$1, (%rax)	#, *len_6(D)
	jmp	.L40	#
.L41:
	.loc 1 452 0
	cmpl	$0, -100(%rbp)	#, level
	jg	.L43	#,
	.loc 1 453 0
	movl	$1, -76(%rbp)	#, sign
	jmp	.L44	#
.L43:
	.loc 1 455 0
	movl	$0, -76(%rbp)	#, sign
.L44:
	.loc 1 457 0
	movl	-100(%rbp), %eax	# level, tmp79
	sarl	$31, %eax	#, tmp78
	movl	%eax, %edx	# tmp78, tmp81
	xorl	-100(%rbp), %edx	# level, tmp81
	subl	%eax, %edx	# tmp78, tmp82
	movl	%edx, %eax	# tmp82, tmp82
	movl	%eax, -68(%rbp)	# tmp82, levabs
	.loc 1 458 0
	movl	-104(%rbp), %eax	# run, tmp84
	cltq
	movzbl	-16(%rbp,%rax), %eax	# LEVRUN, D.6019
	movzbl	%al, %eax	# D.6019, D.6020
	cmpl	-68(%rbp), %eax	# levabs, D.6020
	jl	.L45	#,
	.loc 1 460 0
	movl	-68(%rbp), %eax	# levabs, tmp85
	leal	-1(%rax), %edx	#, D.6020
	movl	-104(%rbp), %eax	# run, tmp87
	movslq	%eax, %rcx	# tmp87, tmp86
	movslq	%edx, %rdx	# D.6020, tmp88
	movq	%rdx, %rax	# tmp88, tmp89
	salq	$2, %rax	#, tmp89
	addq	%rdx, %rax	# tmp88, tmp89
	addq	%rbp, %rax	#, tmp90
	addq	%rcx, %rax	# tmp86, tmp91
	subq	$64, %rax	#, tmp92
	movzbl	(%rax), %eax	# NTAB, D.6019
	movzbl	%al, %eax	# D.6019, D.6020
	addl	$1, %eax	#, tmp93
	movl	%eax, -80(%rbp)	# tmp93, n
	jmp	.L46	#
.L45:
	.loc 1 464 0
	movl	-104(%rbp), %eax	# run, tmp95
	cltq
	movzbl	-16(%rbp,%rax), %eax	# LEVRUN, D.6019
	movzbl	%al, %eax	# D.6019, D.6020
	movl	-68(%rbp), %edx	# levabs, tmp96
	subl	%eax, %edx	# D.6020, D.6020
	movl	%edx, %eax	# D.6020, D.6020
	addl	$1, %eax	#, D.6020
	leal	0(,%rax,8), %edx	#, D.6020
	movl	-104(%rbp), %eax	# run, tmp97
	addl	%edx, %eax	# D.6020, D.6020
	addl	%eax, %eax	# tmp98
	movl	%eax, -80(%rbp)	# tmp98, n
.L46:
	.loc 1 467 0
	movl	-80(%rbp), %eax	# n, tmp100
	movl	%eax, %edx	# tmp100, tmp101
	shrl	$31, %edx	#, tmp101
	addl	%edx, %eax	# tmp101, tmp102
	sarl	%eax	# tmp103
	movl	%eax, -72(%rbp)	# tmp103, nn
	.loc 1 469 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L47	#
.L49:
	.loc 1 471 0 discriminator 1
	movl	-72(%rbp), %eax	# nn, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	shrl	$31, %edx	#, tmp106
	addl	%edx, %eax	# tmp106, tmp107
	sarl	%eax	# tmp108
	movl	%eax, -72(%rbp)	# tmp108, nn
	.loc 1 469 0 discriminator 1
	addl	$1, -84(%rbp)	#, i
.L47:
	cmpl	$15, -84(%rbp)	#, i
	jg	.L48	#,
	.loc 1 469 0 is_stmt 0 discriminator 2
	cmpl	$0, -72(%rbp)	#, nn
	jne	.L49	#,
.L48:
	.loc 1 473 0 is_stmt 1
	movl	-84(%rbp), %eax	# i, tmp109
	addl	%eax, %eax	# D.6020
	leal	1(%rax), %edx	#, D.6020
	movq	-112(%rbp), %rax	# len, tmp110
	movl	%edx, (%rax)	# D.6020, *len_6(D)
	.loc 1 474 0
	cvtsi2sd	-84(%rbp), %xmm0	# i, D.6021
	movabsq	$4611686018427387904, %rax	#, tmp111
	movapd	%xmm0, %xmm1	# D.6021,
	movq	%rax, -128(%rbp)	# tmp111, %sfp
	movsd	-128(%rbp), %xmm0	# %sfp,
	call	pow	#
	cvttsd2si	%xmm0, %eax	# D.6021, D.6020
	movl	-80(%rbp), %edx	# n, tmp112
	subl	%eax, %edx	# D.6020, D.6020
	movl	-76(%rbp), %eax	# sign, tmp113
	addl	%eax, %edx	# tmp113, D.6020
	movq	-120(%rbp), %rax	# info, tmp114
	movl	%edx, (%rax)	# D.6020, *info_35(D)
.L40:
	.loc 1 475 0
	movq	-8(%rbp), %rax	# D.6022, tmp116
	xorq	%fs:40, %rax	#, tmp116
	je	.L50	#,
	call	__stack_chk_fail	#
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	levrun_linfo_intra, .-levrun_linfo_intra
	.globl	symbol2uvlc
	.type	symbol2uvlc, @function
symbol2uvlc:
.LFB13:
	.loc 1 491 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# sym, sym
	.loc 1 492 0
	movq	-24(%rbp), %rax	# sym, tmp69
	movl	12(%rax), %eax	# sym_1(D)->len, D.6023
	movl	%eax, %edx	# D.6023, tmp70
	shrl	$31, %edx	#, tmp70
	addl	%edx, %eax	# tmp70, tmp71
	sarl	%eax	# tmp72
	movl	%eax, -4(%rbp)	# tmp72, suffix_len
	.loc 1 493 0
	movl	-4(%rbp), %eax	# suffix_len, tmp73
	movl	$1, %edx	#, tmp74
	movl	%edx, %edi	# tmp74, D.6023
	movl	%eax, %ecx	# tmp73, tmp82
	sall	%cl, %edi	# tmp82, D.6023
	movq	-24(%rbp), %rax	# sym, tmp75
	movl	16(%rax), %edx	# sym_1(D)->inf, D.6023
	movl	-4(%rbp), %eax	# suffix_len, tmp76
	movl	$1, %esi	#, tmp77
	movl	%eax, %ecx	# tmp76, tmp84
	sall	%cl, %esi	# tmp84, D.6023
	movl	%esi, %eax	# D.6023, D.6023
	subl	$1, %eax	#, D.6023
	andl	%edx, %eax	# D.6023, D.6023
	orl	%edi, %eax	# D.6023, D.6023
	movl	%eax, %edx	# D.6023, D.6024
	movq	-24(%rbp), %rax	# sym, tmp78
	movl	%edx, 20(%rax)	# D.6024, sym_1(D)->bitpattern
	.loc 1 494 0
	movl	$0, %eax	#, D.6023
	.loc 1 495 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	symbol2uvlc, .-symbol2uvlc
	.globl	writeSyntaxElement_UVLC
	.type	writeSyntaxElement_UVLC, @function
writeSyntaxElement_UVLC:
.LFB14:
	.loc 1 505 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# se, se
	movq	%rsi, -16(%rbp)	# this_dataPart, this_dataPart
	.loc 1 506 0
	movq	-8(%rbp), %rax	# se, tmp69
	movq	32(%rax), %rax	# se_1(D)->mapping, D.6025
	movq	-8(%rbp), %rdx	# se, tmp70
	leaq	16(%rdx), %rcx	#, D.6026
	movq	-8(%rbp), %rdx	# se, tmp71
	leaq	12(%rdx), %r8	#, D.6026
	movq	-8(%rbp), %rdx	# se, tmp72
	movl	8(%rdx), %esi	# se_1(D)->value2, D.6027
	movq	-8(%rbp), %rdx	# se, tmp73
	movl	4(%rdx), %edi	# se_1(D)->value1, D.6027
	movq	%r8, %rdx	# D.6026,
	call	*%rax	# D.6025
	.loc 1 507 0
	movq	-8(%rbp), %rax	# se, tmp74
	movq	%rax, %rdi	# tmp74,
	call	symbol2uvlc	#
	.loc 1 509 0
	movq	-16(%rbp), %rax	# this_dataPart, tmp75
	movq	(%rax), %rdx	# this_dataPart_7(D)->bitstream, D.6028
	movq	-8(%rbp), %rax	# se, tmp76
	movq	%rdx, %rsi	# D.6028,
	movq	%rax, %rdi	# tmp76,
	call	writeUVLC2buffer	#
	.loc 1 511 0
	movq	-8(%rbp), %rax	# se, tmp77
	movl	(%rax), %eax	# se_1(D)->type, D.6027
	testl	%eax, %eax	# D.6027
	je	.L54	#,
	.loc 1 512 0
	movq	-16(%rbp), %rax	# this_dataPart, tmp78
	movq	(%rax), %rax	# this_dataPart_7(D)->bitstream, D.6028
	movl	$1, 40(%rax)	#, _10->write_flag
.L54:
	.loc 1 519 0
	movq	-8(%rbp), %rax	# se, tmp79
	movl	12(%rax), %eax	# se_1(D)->len, D.6027
	.loc 1 520 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	writeSyntaxElement_UVLC, .-writeSyntaxElement_UVLC
	.globl	writeSyntaxElement_fixed
	.type	writeSyntaxElement_fixed, @function
writeSyntaxElement_fixed:
.LFB15:
	.loc 1 530 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# se, se
	movq	%rsi, -16(%rbp)	# this_dataPart, this_dataPart
	.loc 1 531 0
	movq	-16(%rbp), %rax	# this_dataPart, tmp64
	movq	(%rax), %rdx	# this_dataPart_1(D)->bitstream, D.6029
	movq	-8(%rbp), %rax	# se, tmp65
	movq	%rdx, %rsi	# D.6029,
	movq	%rax, %rdi	# tmp65,
	call	writeUVLC2buffer	#
	.loc 1 533 0
	movq	-8(%rbp), %rax	# se, tmp66
	movl	(%rax), %eax	# se_3(D)->type, D.6030
	testl	%eax, %eax	# D.6030
	je	.L57	#,
	.loc 1 534 0
	movq	-16(%rbp), %rax	# this_dataPart, tmp67
	movq	(%rax), %rax	# this_dataPart_1(D)->bitstream, D.6029
	movl	$1, 40(%rax)	#, _5->write_flag
.L57:
	.loc 1 541 0
	movq	-8(%rbp), %rax	# se, tmp68
	movl	12(%rax), %eax	# se_3(D)->len, D.6030
	.loc 1 542 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	writeSyntaxElement_fixed, .-writeSyntaxElement_fixed
	.globl	writeSyntaxElement_Intra4x4PredictionMode
	.type	writeSyntaxElement_Intra4x4PredictionMode, @function
writeSyntaxElement_Intra4x4PredictionMode:
.LFB16:
	.loc 1 552 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# se, se
	movq	%rsi, -16(%rbp)	# this_dataPart, this_dataPart
	.loc 1 554 0
	movq	-8(%rbp), %rax	# se, tmp68
	movl	4(%rax), %eax	# se_1(D)->value1, D.6031
	cmpl	$-1, %eax	#, D.6031
	jne	.L60	#,
	.loc 1 556 0
	movq	-8(%rbp), %rax	# se, tmp69
	movl	$1, 12(%rax)	#, se_1(D)->len
	.loc 1 557 0
	movq	-8(%rbp), %rax	# se, tmp70
	movl	$1, 16(%rax)	#, se_1(D)->inf
	jmp	.L61	#
.L60:
	.loc 1 561 0
	movq	-8(%rbp), %rax	# se, tmp71
	movl	$4, 12(%rax)	#, se_1(D)->len
	.loc 1 562 0
	movq	-8(%rbp), %rax	# se, tmp72
	movl	4(%rax), %edx	# se_1(D)->value1, D.6031
	movq	-8(%rbp), %rax	# se, tmp73
	movl	%edx, 16(%rax)	# D.6031, se_1(D)->inf
.L61:
	.loc 1 565 0
	movq	-8(%rbp), %rax	# se, tmp74
	movl	16(%rax), %eax	# se_1(D)->inf, D.6031
	movl	%eax, %edx	# D.6031, D.6032
	movq	-8(%rbp), %rax	# se, tmp75
	movl	%edx, 20(%rax)	# D.6032, se_1(D)->bitpattern
	.loc 1 566 0
	movq	-16(%rbp), %rax	# this_dataPart, tmp76
	movq	(%rax), %rdx	# this_dataPart_6(D)->bitstream, D.6033
	movq	-8(%rbp), %rax	# se, tmp77
	movq	%rdx, %rsi	# D.6033,
	movq	%rax, %rdi	# tmp77,
	call	writeUVLC2buffer	#
	.loc 1 568 0
	movq	-8(%rbp), %rax	# se, tmp78
	movl	(%rax), %eax	# se_1(D)->type, D.6031
	testl	%eax, %eax	# D.6031
	je	.L62	#,
	.loc 1 569 0
	movq	-16(%rbp), %rax	# this_dataPart, tmp79
	movq	(%rax), %rax	# this_dataPart_6(D)->bitstream, D.6033
	movl	$1, 40(%rax)	#, _9->write_flag
.L62:
	.loc 1 576 0
	movq	-8(%rbp), %rax	# se, tmp80
	movl	12(%rax), %eax	# se_1(D)->len, D.6031
	.loc 1 577 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	writeSyntaxElement_Intra4x4PredictionMode, .-writeSyntaxElement_Intra4x4PredictionMode
	.globl	writeSyntaxElement2Buf_UVLC
	.type	writeSyntaxElement2Buf_UVLC, @function
writeSyntaxElement2Buf_UVLC:
.LFB17:
	.loc 1 589 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# se, se
	movq	%rsi, -16(%rbp)	# this_streamBuffer, this_streamBuffer
	.loc 1 591 0
	movq	-8(%rbp), %rax	# se, tmp66
	movq	32(%rax), %rax	# se_1(D)->mapping, D.6034
	movq	-8(%rbp), %rdx	# se, tmp67
	leaq	16(%rdx), %rcx	#, D.6035
	movq	-8(%rbp), %rdx	# se, tmp68
	leaq	12(%rdx), %r8	#, D.6035
	movq	-8(%rbp), %rdx	# se, tmp69
	movl	8(%rdx), %esi	# se_1(D)->value2, D.6036
	movq	-8(%rbp), %rdx	# se, tmp70
	movl	4(%rdx), %edi	# se_1(D)->value1, D.6036
	movq	%r8, %rdx	# D.6035,
	call	*%rax	# D.6034
	.loc 1 593 0
	movq	-8(%rbp), %rax	# se, tmp71
	movq	%rax, %rdi	# tmp71,
	call	symbol2uvlc	#
	.loc 1 595 0
	movq	-16(%rbp), %rdx	# this_streamBuffer, tmp72
	movq	-8(%rbp), %rax	# se, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	writeUVLC2buffer	#
	.loc 1 602 0
	movq	-8(%rbp), %rax	# se, tmp74
	movl	12(%rax), %eax	# se_1(D)->len, D.6036
	.loc 1 603 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	writeSyntaxElement2Buf_UVLC, .-writeSyntaxElement2Buf_UVLC
	.globl	writeUVLC2buffer
	.type	writeUVLC2buffer, @function
writeUVLC2buffer:
.LFB18:
	.loc 1 613 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# currStream, currStream
	.loc 1 616 0
	movq	-24(%rbp), %rax	# se, tmp78
	movl	12(%rax), %eax	# se_3(D)->len, D.6037
	subl	$1, %eax	#, D.6037
	movl	$1, %edx	#, tmp79
	movl	%eax, %ecx	# D.6037, tmp96
	sall	%cl, %edx	# tmp96, D.6037
	movl	%edx, %eax	# D.6037, D.6037
	movl	%eax, -4(%rbp)	# D.6037, mask
	.loc 1 620 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L67	#
.L70:
	.loc 1 622 0
	movq	-32(%rbp), %rax	# currStream, tmp80
	movzbl	8(%rax), %eax	# currStream_10(D)->byte_buf, D.6038
	leal	(%rax,%rax), %edx	#, D.6038
	movq	-32(%rbp), %rax	# currStream, tmp81
	movb	%dl, 8(%rax)	# D.6038, currStream_10(D)->byte_buf
	.loc 1 623 0
	movq	-24(%rbp), %rax	# se, tmp82
	movl	20(%rax), %eax	# se_3(D)->bitpattern, D.6039
	andl	-4(%rbp), %eax	# mask, D.6039
	testl	%eax, %eax	# D.6039
	je	.L68	#,
	.loc 1 624 0
	movq	-32(%rbp), %rax	# currStream, tmp83
	movzbl	8(%rax), %eax	# currStream_10(D)->byte_buf, D.6038
	orl	$1, %eax	#, D.6038
	movl	%eax, %edx	# D.6038, D.6038
	movq	-32(%rbp), %rax	# currStream, tmp84
	movb	%dl, 8(%rax)	# D.6038, currStream_10(D)->byte_buf
.L68:
	.loc 1 625 0
	movq	-32(%rbp), %rax	# currStream, tmp85
	movl	4(%rax), %eax	# currStream_10(D)->bits_to_go, D.6037
	leal	-1(%rax), %edx	#, D.6037
	movq	-32(%rbp), %rax	# currStream, tmp86
	movl	%edx, 4(%rax)	# D.6037, currStream_10(D)->bits_to_go
	.loc 1 626 0
	shrl	-4(%rbp)	# mask
	.loc 1 627 0
	movq	-32(%rbp), %rax	# currStream, tmp87
	movl	4(%rax), %eax	# currStream_10(D)->bits_to_go, D.6037
	testl	%eax, %eax	# D.6037
	jne	.L69	#,
	.loc 1 629 0
	movq	-32(%rbp), %rax	# currStream, tmp88
	movl	$8, 4(%rax)	#, currStream_10(D)->bits_to_go
	.loc 1 630 0
	movq	-32(%rbp), %rax	# currStream, tmp89
	movq	32(%rax), %rsi	# currStream_10(D)->streamBuffer, D.6040
	movq	-32(%rbp), %rax	# currStream, tmp90
	movl	(%rax), %eax	# currStream_10(D)->byte_pos, D.6037
	leal	1(%rax), %ecx	#, D.6037
	movq	-32(%rbp), %rdx	# currStream, tmp91
	movl	%ecx, (%rdx)	# D.6037, currStream_10(D)->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6040
	movq	-32(%rbp), %rax	# currStream, tmp92
	movzbl	8(%rax), %eax	# currStream_10(D)->byte_buf, D.6038
	movb	%al, (%rdx)	# D.6038, *_26
	.loc 1 631 0
	movq	-32(%rbp), %rax	# currStream, tmp93
	movb	$0, 8(%rax)	#, currStream_10(D)->byte_buf
.L69:
	.loc 1 620 0
	addl	$1, -8(%rbp)	#, i
.L67:
	.loc 1 620 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# se, tmp94
	movl	12(%rax), %eax	# se_3(D)->len, D.6037
	cmpl	-8(%rbp), %eax	# i, D.6037
	jg	.L70	#,
	.loc 1 634 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	writeUVLC2buffer, .-writeUVLC2buffer
	.globl	writeSyntaxElement2Buf_Fixed
	.type	writeSyntaxElement2Buf_Fixed, @function
writeSyntaxElement2Buf_Fixed:
.LFB19:
	.loc 1 646 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# se, se
	movq	%rsi, -16(%rbp)	# this_streamBuffer, this_streamBuffer
	.loc 1 648 0
	movq	-16(%rbp), %rdx	# this_streamBuffer, tmp61
	movq	-8(%rbp), %rax	# se, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	writeUVLC2buffer	#
	.loc 1 655 0
	movq	-8(%rbp), %rax	# se, tmp63
	movl	12(%rax), %eax	# se_1(D)->len, D.6042
	.loc 1 656 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	writeSyntaxElement2Buf_Fixed, .-writeSyntaxElement2Buf_Fixed
	.globl	symbol2vlc
	.type	symbol2vlc, @function
symbol2vlc:
.LFB20:
	.loc 1 671 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# sym, sym
	.loc 1 672 0
	movq	-24(%rbp), %rax	# sym, tmp69
	movl	12(%rax), %eax	# sym_2(D)->len, tmp70
	movl	%eax, -4(%rbp)	# tmp70, info_len
	.loc 1 675 0
	movq	-24(%rbp), %rax	# sym, tmp71
	movl	$0, 20(%rax)	#, sym_2(D)->bitpattern
	.loc 1 678 0
	jmp	.L74	#
.L75:
	.loc 1 680 0
	movq	-24(%rbp), %rax	# sym, tmp72
	movl	20(%rax), %eax	# sym_2(D)->bitpattern, D.6043
	leal	(%rax,%rax), %edx	#, D.6043
	movq	-24(%rbp), %rax	# sym, tmp73
	movl	%edx, 20(%rax)	# D.6043, sym_2(D)->bitpattern
	.loc 1 681 0
	movq	-24(%rbp), %rax	# sym, tmp74
	movl	20(%rax), %edx	# sym_2(D)->bitpattern, D.6043
	movq	-24(%rbp), %rax	# sym, tmp75
	movl	16(%rax), %esi	# sym_2(D)->inf, D.6044
	movl	-4(%rbp), %eax	# info_len, tmp76
	movl	%eax, %ecx	# tmp76, tmp80
	sarl	%cl, %esi	# tmp80, D.6044
	movl	%esi, %eax	# D.6044, D.6044
	andl	$1, %eax	#, D.6043
	orl	%eax, %edx	# D.6043, D.6043
	movq	-24(%rbp), %rax	# sym, tmp77
	movl	%edx, 20(%rax)	# D.6043, sym_2(D)->bitpattern
.L74:
	.loc 1 678 0 discriminator 1
	subl	$1, -4(%rbp)	#, info_len
	cmpl	$0, -4(%rbp)	#, info_len
	jns	.L75	#,
	.loc 1 683 0
	movl	$0, %eax	#, D.6044
	.loc 1 684 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	symbol2vlc, .-symbol2vlc
	.globl	writeSyntaxElement_VLC
	.type	writeSyntaxElement_VLC, @function
writeSyntaxElement_VLC:
.LFB21:
	.loc 1 694 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# se, se
	movq	%rsi, -16(%rbp)	# this_dataPart, this_dataPart
	.loc 1 696 0
	movq	-8(%rbp), %rax	# se, tmp64
	movl	4(%rax), %edx	# se_1(D)->value1, D.6045
	movq	-8(%rbp), %rax	# se, tmp65
	movl	%edx, 16(%rax)	# D.6045, se_1(D)->inf
	.loc 1 697 0
	movq	-8(%rbp), %rax	# se, tmp66
	movl	8(%rax), %edx	# se_1(D)->value2, D.6045
	movq	-8(%rbp), %rax	# se, tmp67
	movl	%edx, 12(%rax)	# D.6045, se_1(D)->len
	.loc 1 698 0
	movq	-8(%rbp), %rax	# se, tmp68
	movq	%rax, %rdi	# tmp68,
	call	symbol2vlc	#
	.loc 1 700 0
	movq	-16(%rbp), %rax	# this_dataPart, tmp69
	movq	(%rax), %rdx	# this_dataPart_4(D)->bitstream, D.6046
	movq	-8(%rbp), %rax	# se, tmp70
	movq	%rdx, %rsi	# D.6046,
	movq	%rax, %rdi	# tmp70,
	call	writeUVLC2buffer	#
	.loc 1 706 0
	movq	-8(%rbp), %rax	# se, tmp71
	movl	12(%rax), %eax	# se_1(D)->len, D.6045
	.loc 1 707 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	writeSyntaxElement_VLC, .-writeSyntaxElement_VLC
	.section	.rodata
	.align 8
.LC1:
	.string	"ERROR: (numcoeff,trailingones) not valid: vlc=%d (%d, %d)\n"
	.text
	.globl	writeSyntaxElement_NumCoeffTrailingOnes
	.type	writeSyntaxElement_NumCoeffTrailingOnes, @function
writeSyntaxElement_NumCoeffTrailingOnes:
.LFB22:
	.loc 1 718 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# this_dataPart, this_dataPart
	.loc 1 765 0
	movq	-24(%rbp), %rax	# se, tmp77
	movl	12(%rax), %eax	# se_1(D)->len, tmp78
	movl	%eax, -4(%rbp)	# tmp78, vlcnum
	.loc 1 770 0
	cmpl	$3, -4(%rbp)	#, vlcnum
	jne	.L80	#,
	.loc 1 772 0
	movq	-24(%rbp), %rax	# se, tmp79
	movl	$6, 12(%rax)	#, se_1(D)->len
	.loc 1 773 0
	movq	-24(%rbp), %rax	# se, tmp80
	movl	4(%rax), %eax	# se_1(D)->value1, D.6047
	testl	%eax, %eax	# D.6047
	jle	.L81	#,
	.loc 1 775 0
	movq	-24(%rbp), %rax	# se, tmp81
	movl	4(%rax), %eax	# se_1(D)->value1, D.6047
	subl	$1, %eax	#, D.6047
	leal	0(,%rax,4), %edx	#, D.6047
	movq	-24(%rbp), %rax	# se, tmp82
	movl	8(%rax), %eax	# se_1(D)->value2, D.6047
	orl	%eax, %edx	# D.6047, D.6047
	movq	-24(%rbp), %rax	# se, tmp83
	movl	%edx, 16(%rax)	# D.6047, se_1(D)->inf
	jmp	.L83	#
.L81:
	.loc 1 779 0
	movq	-24(%rbp), %rax	# se, tmp84
	movl	$3, 16(%rax)	#, se_1(D)->inf
	jmp	.L83	#
.L80:
	.loc 1 784 0
	movq	-24(%rbp), %rax	# se, tmp85
	movl	8(%rax), %edx	# se_1(D)->value2, D.6047
	movq	-24(%rbp), %rax	# se, tmp86
	movl	4(%rax), %eax	# se_1(D)->value1, D.6047
	movslq	%eax, %rsi	# D.6047, tmp87
	movl	-4(%rbp), %eax	# vlcnum, tmp89
	cltq
	movslq	%edx, %rcx	# D.6047, tmp90
	salq	$2, %rax	#, tmp92
	movq	%rax, %rdx	# tmp91, tmp93
	salq	$4, %rdx	#, tmp93
	addq	%rdx, %rax	# tmp93, tmp91
	movq	%rcx, %rdx	# tmp90, tmp94
	salq	$4, %rdx	#, tmp95
	addq	%rcx, %rdx	# tmp90, tmp94
	addq	%rdx, %rax	# tmp94, tmp96
	addq	%rsi, %rax	# tmp87, tmp97
	movl	lentab.5541(,%rax,4), %edx	# lentab, D.6047
	movq	-24(%rbp), %rax	# se, tmp98
	movl	%edx, 12(%rax)	# D.6047, se_1(D)->len
	.loc 1 785 0
	movq	-24(%rbp), %rax	# se, tmp99
	movl	8(%rax), %edx	# se_1(D)->value2, D.6047
	movq	-24(%rbp), %rax	# se, tmp100
	movl	4(%rax), %eax	# se_1(D)->value1, D.6047
	movslq	%eax, %rsi	# D.6047, tmp101
	movl	-4(%rbp), %eax	# vlcnum, tmp103
	cltq
	movslq	%edx, %rcx	# D.6047, tmp104
	salq	$2, %rax	#, tmp106
	movq	%rax, %rdx	# tmp105, tmp107
	salq	$4, %rdx	#, tmp107
	addq	%rdx, %rax	# tmp107, tmp105
	movq	%rcx, %rdx	# tmp104, tmp108
	salq	$4, %rdx	#, tmp109
	addq	%rcx, %rdx	# tmp104, tmp108
	addq	%rdx, %rax	# tmp108, tmp110
	addq	%rsi, %rax	# tmp101, tmp111
	movl	codtab.5542(,%rax,4), %edx	# codtab, D.6047
	movq	-24(%rbp), %rax	# se, tmp112
	movl	%edx, 16(%rax)	# D.6047, se_1(D)->inf
.L83:
	.loc 1 789 0
	movq	-24(%rbp), %rax	# se, tmp113
	movl	12(%rax), %eax	# se_1(D)->len, D.6047
	testl	%eax, %eax	# D.6047
	jne	.L84	#,
	.loc 1 791 0
	movq	-24(%rbp), %rax	# se, tmp114
	movl	8(%rax), %ecx	# se_1(D)->value2, D.6047
	movq	-24(%rbp), %rax	# se, tmp115
	movl	4(%rax), %edx	# se_1(D)->value1, D.6047
	movl	-4(%rbp), %eax	# vlcnum, tmp116
	movl	%eax, %esi	# tmp116,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 793 0
	movl	$-1, %edi	#,
	call	exit	#
.L84:
	.loc 1 796 0
	movq	-24(%rbp), %rax	# se, tmp117
	movq	%rax, %rdi	# tmp117,
	call	symbol2vlc	#
	.loc 1 798 0
	movq	-32(%rbp), %rax	# this_dataPart, tmp118
	movq	(%rax), %rdx	# this_dataPart_18(D)->bitstream, D.6048
	movq	-24(%rbp), %rax	# se, tmp119
	movq	%rdx, %rsi	# D.6048,
	movq	%rax, %rdi	# tmp119,
	call	writeUVLC2buffer	#
	.loc 1 804 0
	movq	-24(%rbp), %rax	# se, tmp120
	movl	12(%rax), %eax	# se_1(D)->len, D.6047
	.loc 1 805 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	writeSyntaxElement_NumCoeffTrailingOnes, .-writeSyntaxElement_NumCoeffTrailingOnes
	.section	.rodata
	.align 8
.LC2:
	.string	"ERROR: (numcoeff,trailingones) not valid: (%d, %d)\n"
	.text
	.globl	writeSyntaxElement_NumCoeffTrailingOnesChromaDC
	.type	writeSyntaxElement_NumCoeffTrailingOnesChromaDC, @function
writeSyntaxElement_NumCoeffTrailingOnesChromaDC:
.LFB23:
	.loc 1 815 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# this_dataPart, this_dataPart
	.loc 1 854 0
	movq	img(%rip), %rax	# img, img.4
	movl	72700(%rax), %eax	# img.4_1->yuv_format, D.6050
	subl	$1, %eax	#, tmp73
	movl	%eax, -4(%rbp)	# tmp73, yuv
	.loc 1 858 0
	movq	-24(%rbp), %rax	# se, tmp74
	movl	8(%rax), %edx	# se_4(D)->value2, D.6050
	movq	-24(%rbp), %rax	# se, tmp75
	movl	4(%rax), %eax	# se_4(D)->value1, D.6050
	movslq	%eax, %rsi	# D.6050, tmp76
	movl	-4(%rbp), %eax	# yuv, tmp78
	cltq
	movslq	%edx, %rcx	# D.6050, tmp79
	salq	$2, %rax	#, tmp81
	movq	%rax, %rdx	# tmp80, tmp82
	salq	$4, %rdx	#, tmp82
	addq	%rdx, %rax	# tmp82, tmp80
	movq	%rcx, %rdx	# tmp79, tmp83
	salq	$4, %rdx	#, tmp84
	addq	%rcx, %rdx	# tmp79, tmp83
	addq	%rdx, %rax	# tmp83, tmp85
	addq	%rsi, %rax	# tmp76, tmp86
	movl	lentab.5548(,%rax,4), %edx	# lentab, D.6050
	movq	-24(%rbp), %rax	# se, tmp87
	movl	%edx, 12(%rax)	# D.6050, se_4(D)->len
	.loc 1 859 0
	movq	-24(%rbp), %rax	# se, tmp88
	movl	8(%rax), %edx	# se_4(D)->value2, D.6050
	movq	-24(%rbp), %rax	# se, tmp89
	movl	4(%rax), %eax	# se_4(D)->value1, D.6050
	movslq	%eax, %rsi	# D.6050, tmp90
	movl	-4(%rbp), %eax	# yuv, tmp92
	cltq
	movslq	%edx, %rcx	# D.6050, tmp93
	salq	$2, %rax	#, tmp95
	movq	%rax, %rdx	# tmp94, tmp96
	salq	$4, %rdx	#, tmp96
	addq	%rdx, %rax	# tmp96, tmp94
	movq	%rcx, %rdx	# tmp93, tmp97
	salq	$4, %rdx	#, tmp98
	addq	%rcx, %rdx	# tmp93, tmp97
	addq	%rdx, %rax	# tmp97, tmp99
	addq	%rsi, %rax	# tmp90, tmp100
	movl	codtab.5549(,%rax,4), %edx	# codtab, D.6050
	movq	-24(%rbp), %rax	# se, tmp101
	movl	%edx, 16(%rax)	# D.6050, se_4(D)->inf
	.loc 1 861 0
	movq	-24(%rbp), %rax	# se, tmp102
	movl	12(%rax), %eax	# se_4(D)->len, D.6050
	testl	%eax, %eax	# D.6050
	jne	.L87	#,
	.loc 1 863 0
	movq	-24(%rbp), %rax	# se, tmp103
	movl	8(%rax), %edx	# se_4(D)->value2, D.6050
	movq	-24(%rbp), %rax	# se, tmp104
	movl	4(%rax), %eax	# se_4(D)->value1, D.6050
	movl	%eax, %esi	# D.6050,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 865 0
	movl	$-1, %edi	#,
	call	exit	#
.L87:
	.loc 1 868 0
	movq	-24(%rbp), %rax	# se, tmp105
	movq	%rax, %rdi	# tmp105,
	call	symbol2vlc	#
	.loc 1 870 0
	movq	-32(%rbp), %rax	# this_dataPart, tmp106
	movq	(%rax), %rdx	# this_dataPart_14(D)->bitstream, D.6051
	movq	-24(%rbp), %rax	# se, tmp107
	movq	%rdx, %rsi	# D.6051,
	movq	%rax, %rdi	# tmp107,
	call	writeUVLC2buffer	#
	.loc 1 876 0
	movq	-24(%rbp), %rax	# se, tmp108
	movl	12(%rax), %eax	# se_4(D)->len, D.6050
	.loc 1 877 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	writeSyntaxElement_NumCoeffTrailingOnesChromaDC, .-writeSyntaxElement_NumCoeffTrailingOnesChromaDC
	.section	.rodata
	.align 8
.LC3:
	.string	"ERROR: (TotalZeros) not valid: (%d)\n"
	.text
	.globl	writeSyntaxElement_TotalZeros
	.type	writeSyntaxElement_TotalZeros, @function
writeSyntaxElement_TotalZeros:
.LFB24:
	.loc 1 887 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# this_dataPart, this_dataPart
	.loc 1 927 0
	movq	-24(%rbp), %rax	# se, tmp68
	movl	12(%rax), %eax	# se_1(D)->len, tmp69
	movl	%eax, -4(%rbp)	# tmp69, vlcnum
	.loc 1 930 0
	movq	-24(%rbp), %rax	# se, tmp70
	movl	4(%rax), %eax	# se_1(D)->value1, D.6053
	cltq
	movl	-4(%rbp), %edx	# vlcnum, tmp73
	movslq	%edx, %rdx	# tmp73, tmp72
	salq	$4, %rdx	#, tmp74
	addq	%rdx, %rax	# tmp74, tmp75
	movl	lentab.5555(,%rax,4), %edx	# lentab, D.6053
	movq	-24(%rbp), %rax	# se, tmp76
	movl	%edx, 12(%rax)	# D.6053, se_1(D)->len
	.loc 1 931 0
	movq	-24(%rbp), %rax	# se, tmp77
	movl	4(%rax), %eax	# se_1(D)->value1, D.6053
	cltq
	movl	-4(%rbp), %edx	# vlcnum, tmp80
	movslq	%edx, %rdx	# tmp80, tmp79
	salq	$4, %rdx	#, tmp81
	addq	%rdx, %rax	# tmp81, tmp82
	movl	codtab.5556(,%rax,4), %edx	# codtab, D.6053
	movq	-24(%rbp), %rax	# se, tmp83
	movl	%edx, 16(%rax)	# D.6053, se_1(D)->inf
	.loc 1 933 0
	movq	-24(%rbp), %rax	# se, tmp84
	movl	12(%rax), %eax	# se_1(D)->len, D.6053
	testl	%eax, %eax	# D.6053
	jne	.L90	#,
	.loc 1 935 0
	movq	-24(%rbp), %rax	# se, tmp85
	movl	4(%rax), %eax	# se_1(D)->value1, D.6053
	movl	%eax, %esi	# D.6053,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 936 0
	movl	$-1, %edi	#,
	call	exit	#
.L90:
	.loc 1 939 0
	movq	-24(%rbp), %rax	# se, tmp86
	movq	%rax, %rdi	# tmp86,
	call	symbol2vlc	#
	.loc 1 941 0
	movq	-32(%rbp), %rax	# this_dataPart, tmp87
	movq	(%rax), %rdx	# this_dataPart_9(D)->bitstream, D.6054
	movq	-24(%rbp), %rax	# se, tmp88
	movq	%rdx, %rsi	# D.6054,
	movq	%rax, %rdi	# tmp88,
	call	writeUVLC2buffer	#
	.loc 1 947 0
	movq	-24(%rbp), %rax	# se, tmp89
	movl	12(%rax), %eax	# se_1(D)->len, D.6053
	.loc 1 948 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	writeSyntaxElement_TotalZeros, .-writeSyntaxElement_TotalZeros
	.globl	writeSyntaxElement_TotalZerosChromaDC
	.type	writeSyntaxElement_TotalZerosChromaDC, @function
writeSyntaxElement_TotalZerosChromaDC:
.LFB25:
	.loc 1 958 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# this_dataPart, this_dataPart
	.loc 1 1023 0
	movq	img(%rip), %rax	# img, img.5
	movl	72700(%rax), %eax	# img.5_1->yuv_format, D.6056
	subl	$1, %eax	#, tmp70
	movl	%eax, -8(%rbp)	# tmp70, yuv
	.loc 1 1025 0
	movq	-24(%rbp), %rax	# se, tmp71
	movl	12(%rax), %eax	# se_4(D)->len, tmp72
	movl	%eax, -4(%rbp)	# tmp72, vlcnum
	.loc 1 1028 0
	movq	-24(%rbp), %rax	# se, tmp73
	movl	4(%rax), %eax	# se_4(D)->value1, D.6056
	movslq	%eax, %rcx	# D.6056, tmp74
	movl	-8(%rbp), %eax	# yuv, tmp76
	movslq	%eax, %rdx	# tmp76, tmp75
	movl	-4(%rbp), %eax	# vlcnum, tmp78
	movslq	%eax, %rsi	# tmp78, tmp77
	movq	%rdx, %rax	# tmp75, tmp79
	salq	$4, %rax	#, tmp80
	subq	%rdx, %rax	# tmp75, tmp79
	addq	%rsi, %rax	# tmp77, tmp81
	salq	$4, %rax	#, tmp82
	addq	%rcx, %rax	# tmp74, tmp83
	movl	lentab.5562(,%rax,4), %edx	# lentab, D.6056
	movq	-24(%rbp), %rax	# se, tmp84
	movl	%edx, 12(%rax)	# D.6056, se_4(D)->len
	.loc 1 1029 0
	movq	-24(%rbp), %rax	# se, tmp85
	movl	4(%rax), %eax	# se_4(D)->value1, D.6056
	movslq	%eax, %rcx	# D.6056, tmp86
	movl	-8(%rbp), %eax	# yuv, tmp88
	movslq	%eax, %rdx	# tmp88, tmp87
	movl	-4(%rbp), %eax	# vlcnum, tmp90
	movslq	%eax, %rsi	# tmp90, tmp89
	movq	%rdx, %rax	# tmp87, tmp91
	salq	$4, %rax	#, tmp92
	subq	%rdx, %rax	# tmp87, tmp91
	addq	%rsi, %rax	# tmp89, tmp93
	salq	$4, %rax	#, tmp94
	addq	%rcx, %rax	# tmp86, tmp95
	movl	codtab.5563(,%rax,4), %edx	# codtab, D.6056
	movq	-24(%rbp), %rax	# se, tmp96
	movl	%edx, 16(%rax)	# D.6056, se_4(D)->inf
	.loc 1 1031 0
	movq	-24(%rbp), %rax	# se, tmp97
	movl	12(%rax), %eax	# se_4(D)->len, D.6056
	testl	%eax, %eax	# D.6056
	jne	.L93	#,
	.loc 1 1033 0
	movq	-24(%rbp), %rax	# se, tmp98
	movl	4(%rax), %eax	# se_4(D)->value1, D.6056
	movl	%eax, %esi	# D.6056,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1034 0
	movl	$-1, %edi	#,
	call	exit	#
.L93:
	.loc 1 1037 0
	movq	-24(%rbp), %rax	# se, tmp99
	movq	%rax, %rdi	# tmp99,
	call	symbol2vlc	#
	.loc 1 1039 0
	movq	-32(%rbp), %rax	# this_dataPart, tmp100
	movq	(%rax), %rdx	# this_dataPart_12(D)->bitstream, D.6057
	movq	-24(%rbp), %rax	# se, tmp101
	movq	%rdx, %rsi	# D.6057,
	movq	%rax, %rdi	# tmp101,
	call	writeUVLC2buffer	#
	.loc 1 1045 0
	movq	-24(%rbp), %rax	# se, tmp102
	movl	12(%rax), %eax	# se_4(D)->len, D.6056
	.loc 1 1046 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	writeSyntaxElement_TotalZerosChromaDC, .-writeSyntaxElement_TotalZerosChromaDC
	.section	.rodata
.LC4:
	.string	"ERROR: (run) not valid: (%d)\n"
	.text
	.globl	writeSyntaxElement_Run
	.type	writeSyntaxElement_Run, @function
writeSyntaxElement_Run:
.LFB26:
	.loc 1 1056 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# this_dataPart, this_dataPart
	.loc 1 1080 0
	movq	-24(%rbp), %rax	# se, tmp68
	movl	12(%rax), %eax	# se_1(D)->len, tmp69
	movl	%eax, -4(%rbp)	# tmp69, vlcnum
	.loc 1 1083 0
	movq	-24(%rbp), %rax	# se, tmp70
	movl	4(%rax), %eax	# se_1(D)->value1, D.6058
	cltq
	movl	-4(%rbp), %edx	# vlcnum, tmp73
	movslq	%edx, %rdx	# tmp73, tmp72
	salq	$4, %rdx	#, tmp74
	addq	%rdx, %rax	# tmp74, tmp75
	movl	lentab.5570(,%rax,4), %edx	# lentab, D.6058
	movq	-24(%rbp), %rax	# se, tmp76
	movl	%edx, 12(%rax)	# D.6058, se_1(D)->len
	.loc 1 1084 0
	movq	-24(%rbp), %rax	# se, tmp77
	movl	4(%rax), %eax	# se_1(D)->value1, D.6058
	cltq
	movl	-4(%rbp), %edx	# vlcnum, tmp80
	movslq	%edx, %rdx	# tmp80, tmp79
	salq	$4, %rdx	#, tmp81
	addq	%rdx, %rax	# tmp81, tmp82
	movl	codtab.5571(,%rax,4), %edx	# codtab, D.6058
	movq	-24(%rbp), %rax	# se, tmp83
	movl	%edx, 16(%rax)	# D.6058, se_1(D)->inf
	.loc 1 1086 0
	movq	-24(%rbp), %rax	# se, tmp84
	movl	12(%rax), %eax	# se_1(D)->len, D.6058
	testl	%eax, %eax	# D.6058
	jne	.L96	#,
	.loc 1 1088 0
	movq	-24(%rbp), %rax	# se, tmp85
	movl	4(%rax), %eax	# se_1(D)->value1, D.6058
	movl	%eax, %esi	# D.6058,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1089 0
	movl	$-1, %edi	#,
	call	exit	#
.L96:
	.loc 1 1092 0
	movq	-24(%rbp), %rax	# se, tmp86
	movq	%rax, %rdi	# tmp86,
	call	symbol2vlc	#
	.loc 1 1094 0
	movq	-32(%rbp), %rax	# this_dataPart, tmp87
	movq	(%rax), %rdx	# this_dataPart_9(D)->bitstream, D.6059
	movq	-24(%rbp), %rax	# se, tmp88
	movq	%rdx, %rsi	# D.6059,
	movq	%rax, %rdi	# tmp88,
	call	writeUVLC2buffer	#
	.loc 1 1100 0
	movq	-24(%rbp), %rax	# se, tmp89
	movl	12(%rax), %eax	# se_1(D)->len, D.6058
	.loc 1 1101 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	writeSyntaxElement_Run, .-writeSyntaxElement_Run
	.globl	writeSyntaxElement_Level_VLC1
	.type	writeSyntaxElement_Level_VLC1, @function
writeSyntaxElement_Level_VLC1:
.LFB27:
	.loc 1 1111 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# this_dataPart, this_dataPart
	.loc 1 1114 0
	movq	-24(%rbp), %rax	# se, tmp74
	movl	4(%rax), %eax	# se_1(D)->value1, tmp75
	movl	%eax, -12(%rbp)	# tmp75, level
	.loc 1 1115 0
	movl	-12(%rbp), %eax	# level, tmp77
	sarl	$31, %eax	#, tmp76
	movl	%eax, %edx	# tmp76, tmp79
	xorl	-12(%rbp), %edx	# level, tmp79
	subl	%eax, %edx	# tmp76, tmp80
	movl	%edx, %eax	# tmp80, tmp80
	movl	%eax, -8(%rbp)	# tmp80, levabs
	.loc 1 1116 0
	movl	-12(%rbp), %eax	# level, tmp82
	shrl	$31, %eax	#, tmp81
	movzbl	%al, %eax	# D.6061, tmp83
	movl	%eax, -4(%rbp)	# tmp83, sign
	.loc 1 1119 0
	cmpl	$7, -8(%rbp)	#, levabs
	jg	.L99	#,
	.loc 1 1121 0
	movl	-8(%rbp), %eax	# levabs, tmp84
	leal	(%rax,%rax), %edx	#, D.6062
	movl	-4(%rbp), %eax	# sign, tmp85
	addl	%edx, %eax	# D.6062, D.6062
	leal	-1(%rax), %edx	#, D.6062
	movq	-24(%rbp), %rax	# se, tmp86
	movl	%edx, 12(%rax)	# D.6062, se_1(D)->len
	.loc 1 1122 0
	movq	-24(%rbp), %rax	# se, tmp87
	movl	$1, 16(%rax)	#, se_1(D)->inf
	jmp	.L100	#
.L99:
	.loc 1 1124 0
	cmpl	$15, -8(%rbp)	#, levabs
	jg	.L101	#,
	.loc 1 1127 0
	movq	-24(%rbp), %rax	# se, tmp88
	movl	$19, 12(%rax)	#, se_1(D)->len
	.loc 1 1128 0
	movl	-8(%rbp), %eax	# levabs, tmp89
	subl	$8, %eax	#, D.6062
	addl	%eax, %eax	# D.6062
	orl	$16, %eax	#, D.6062
	orl	-4(%rbp), %eax	# sign, D.6062
	movl	%eax, %edx	# D.6062, D.6062
	movq	-24(%rbp), %rax	# se, tmp90
	movl	%edx, 16(%rax)	# D.6062, se_1(D)->inf
	jmp	.L100	#
.L101:
	.loc 1 1133 0
	movq	-24(%rbp), %rax	# se, tmp91
	movl	$28, 12(%rax)	#, se_1(D)->len
	.loc 1 1134 0
	movl	-8(%rbp), %eax	# levabs, tmp92
	subl	$16, %eax	#, D.6062
	addl	%eax, %eax	# D.6062
	orb	$16, %ah	#, D.6062
	orl	-4(%rbp), %eax	# sign, D.6062
	movl	%eax, %edx	# D.6062, D.6062
	movq	-24(%rbp), %rax	# se, tmp93
	movl	%edx, 16(%rax)	# D.6062, se_1(D)->inf
.L100:
	.loc 1 1138 0
	movq	-24(%rbp), %rax	# se, tmp94
	movq	%rax, %rdi	# tmp94,
	call	symbol2vlc	#
	.loc 1 1140 0
	movq	-32(%rbp), %rax	# this_dataPart, tmp95
	movq	(%rax), %rdx	# this_dataPart_17(D)->bitstream, D.6063
	movq	-24(%rbp), %rax	# se, tmp96
	movq	%rdx, %rsi	# D.6063,
	movq	%rax, %rdi	# tmp96,
	call	writeUVLC2buffer	#
	.loc 1 1146 0
	movq	-24(%rbp), %rax	# se, tmp97
	movl	12(%rax), %eax	# se_1(D)->len, D.6062
	.loc 1 1147 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	writeSyntaxElement_Level_VLC1, .-writeSyntaxElement_Level_VLC1
	.globl	writeSyntaxElement_Level_VLCN
	.type	writeSyntaxElement_Level_VLCN, @function
writeSyntaxElement_Level_VLCN:
.LFB28:
	.loc 1 1157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$72, %rsp	#,
	movq	%rdi, -56(%rbp)	# se, se
	movl	%esi, -60(%rbp)	# vlc, vlc
	movq	%rdx, -72(%rbp)	# this_dataPart, this_dataPart
	.loc 1 1161 0
	movq	-56(%rbp), %rax	# se, tmp76
	movl	4(%rax), %eax	# se_3(D)->value1, tmp77
	movl	%eax, -32(%rbp)	# tmp77, level
	.loc 1 1163 0
	movl	-32(%rbp), %eax	# level, tmp79
	sarl	$31, %eax	#, tmp78
	movl	%eax, %edx	# tmp78, tmp81
	xorl	-32(%rbp), %edx	# level, tmp81
	subl	%eax, %edx	# tmp78, tmp82
	movl	%edx, %eax	# tmp82, tmp82
	movl	%eax, -28(%rbp)	# tmp82, levabs
	.loc 1 1164 0
	movl	-32(%rbp), %eax	# level, tmp84
	shrl	$31, %eax	#, tmp83
	movzbl	%al, %eax	# D.6064, tmp85
	movl	%eax, -24(%rbp)	# tmp85, sign
	.loc 1 1166 0
	movl	-60(%rbp), %eax	# vlc, tmp89
	subl	$1, %eax	#, tmp88
	movl	%eax, -20(%rbp)	# tmp88, shift
	.loc 1 1167 0
	movl	-20(%rbp), %eax	# shift, tmp90
	movl	$15, %edx	#, tmp91
	movl	%eax, %ecx	# tmp90, tmp126
	sall	%cl, %edx	# tmp126, D.6065
	movl	%edx, %eax	# D.6065, D.6065
	addl	$1, %eax	#, tmp92
	movl	%eax, -16(%rbp)	# tmp92, escape
	.loc 1 1169 0
	movl	-28(%rbp), %eax	# levabs, tmp93
	leal	-1(%rax), %edx	#, D.6065
	movl	-20(%rbp), %eax	# shift, tmp94
	movl	%eax, %ecx	# tmp94, tmp128
	sarl	%cl, %edx	# tmp128, tmp95
	movl	%edx, %eax	# tmp95, tmp95
	movl	%eax, -12(%rbp)	# tmp95, numPrefix
	.loc 1 1171 0
	movl	-20(%rbp), %eax	# shift, tmp96
	movl	$-1, %edx	#, tmp97
	movl	%eax, %ecx	# tmp96, tmp130
	sall	%cl, %edx	# tmp130, D.6066
	movl	%edx, %eax	# D.6066, D.6066
	notl	%eax	# D.6066
	movl	%eax, -8(%rbp)	# D.6066, sufmask
	.loc 1 1172 0
	movl	-28(%rbp), %eax	# levabs, tmp98
	subl	$1, %eax	#, D.6065
	andl	-8(%rbp), %eax	# sufmask, tmp100
	movl	%eax, -4(%rbp)	# tmp100, suffix
	.loc 1 1174 0
	movl	-28(%rbp), %eax	# levabs, tmp101
	cmpl	-16(%rbp), %eax	# escape, tmp101
	jge	.L104	#,
	.loc 1 1176 0
	movl	-60(%rbp), %eax	# vlc, tmp102
	movl	-12(%rbp), %edx	# numPrefix, tmp103
	addl	%edx, %eax	# tmp103, D.6065
	addl	$1, %eax	#, tmp104
	movl	%eax, -36(%rbp)	# tmp104, iLength
	.loc 1 1177 0
	movl	-20(%rbp), %eax	# shift, tmp105
	addl	$1, %eax	#, D.6065
	movl	$1, %edx	#, tmp106
	movl	%eax, %ecx	# D.6065, tmp131
	sall	%cl, %edx	# tmp131, D.6065
	movl	-4(%rbp), %eax	# suffix, tmp107
	addl	%eax, %eax	# D.6065
	orl	%edx, %eax	# D.6065, D.6065
	orl	-24(%rbp), %eax	# sign, tmp109
	movl	%eax, -40(%rbp)	# tmp109, iCodeword
	jmp	.L105	#
.L104:
	.loc 1 1181 0
	movl	$28, -36(%rbp)	#, iLength
	.loc 1 1182 0
	movl	-16(%rbp), %eax	# escape, tmp110
	movl	-28(%rbp), %edx	# levabs, tmp111
	subl	%eax, %edx	# tmp110, D.6065
	movl	%edx, %eax	# D.6065, D.6065
	addl	%eax, %eax	# D.6065
	orb	$16, %ah	#, D.6065
	orl	-24(%rbp), %eax	# sign, tmp113
	movl	%eax, -40(%rbp)	# tmp113, iCodeword
.L105:
	.loc 1 1184 0
	movq	-56(%rbp), %rax	# se, tmp114
	movl	-36(%rbp), %edx	# iLength, tmp115
	movl	%edx, 12(%rax)	# tmp115, se_3(D)->len
	.loc 1 1185 0
	movq	-56(%rbp), %rax	# se, tmp116
	movl	-40(%rbp), %edx	# iCodeword, tmp117
	movl	%edx, 16(%rax)	# tmp117, se_3(D)->inf
	.loc 1 1187 0
	movq	-56(%rbp), %rax	# se, tmp118
	movq	%rax, %rdi	# tmp118,
	call	symbol2vlc	#
	.loc 1 1189 0
	movq	-72(%rbp), %rax	# this_dataPart, tmp119
	movq	(%rax), %rdx	# this_dataPart_31(D)->bitstream, D.6067
	movq	-56(%rbp), %rax	# se, tmp120
	movq	%rdx, %rsi	# D.6067,
	movq	%rax, %rdi	# tmp120,
	call	writeUVLC2buffer	#
	.loc 1 1195 0
	movq	-56(%rbp), %rax	# se, tmp121
	movl	12(%rax), %eax	# se_3(D)->len, D.6065
	.loc 1 1196 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	writeSyntaxElement_Level_VLCN, .-writeSyntaxElement_Level_VLCN
	.globl	writeVlcByteAlign
	.type	writeVlcByteAlign, @function
writeVlcByteAlign:
.LFB29:
	.loc 1 1257 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# currStream, currStream
	.loc 1 1258 0
	movq	-8(%rbp), %rax	# currStream, tmp86
	movl	4(%rax), %eax	# currStream_1(D)->bits_to_go, D.6068
	cmpl	$7, %eax	#, D.6068
	jg	.L107	#,
	.loc 1 1260 0
	movq	-8(%rbp), %rax	# currStream, tmp87
	movzbl	8(%rax), %eax	# currStream_1(D)->byte_buf, D.6069
	movzbl	%al, %edx	# D.6069, D.6068
	movq	-8(%rbp), %rax	# currStream, tmp88
	movl	4(%rax), %eax	# currStream_1(D)->bits_to_go, D.6068
	movl	%eax, %ecx	# D.6068, tmp104
	sall	%cl, %edx	# tmp104, D.6068
	movl	%edx, %eax	# D.6068, D.6068
	movl	%eax, %edx	# D.6068, D.6070
	movq	-8(%rbp), %rax	# currStream, tmp89
	movl	4(%rax), %eax	# currStream_1(D)->bits_to_go, D.6068
	movl	$8, %ecx	#, tmp90
	subl	%eax, %ecx	# D.6068, D.6068
	movl	%ecx, %eax	# D.6068, D.6068
	movl	$255, %esi	#, tmp91
	movl	%eax, %ecx	# D.6068, tmp107
	sarl	%cl, %esi	# tmp107, D.6068
	movl	%esi, %eax	# D.6068, D.6068
	orl	%edx, %eax	# D.6070, D.6070
	movl	%eax, %edx	# D.6070, D.6069
	movq	-8(%rbp), %rax	# currStream, tmp92
	movb	%dl, 8(%rax)	# D.6069, currStream_1(D)->byte_buf
	.loc 1 1261 0
	movq	stats(%rip), %rax	# stats, stats.6
	movq	img(%rip), %rdx	# img, img.7
	movl	24(%rdx), %esi	# img.7_15->type, D.6068
	movq	stats(%rip), %rdx	# stats, stats.8
	movq	img(%rip), %rcx	# img, img.9
	movl	24(%rcx), %ecx	# img.9_18->type, D.6068
	movslq	%ecx, %rcx	# D.6068, tmp93
	addq	$332, %rcx	#, tmp94
	movl	(%rdx,%rcx,4), %ecx	# stats.8_17->bit_use_stuffingBits, D.6068
	movq	-8(%rbp), %rdx	# currStream, tmp95
	movl	4(%rdx), %edx	# currStream_1(D)->bits_to_go, D.6068
	addl	%edx, %ecx	# D.6068, D.6068
	movslq	%esi, %rdx	# D.6068, tmp96
	addq	$332, %rdx	#, tmp97
	movl	%ecx, (%rax,%rdx,4)	# D.6068, stats.6_14->bit_use_stuffingBits
	.loc 1 1262 0
	movq	-8(%rbp), %rax	# currStream, tmp98
	movq	32(%rax), %rsi	# currStream_1(D)->streamBuffer, D.6071
	movq	-8(%rbp), %rax	# currStream, tmp99
	movl	(%rax), %eax	# currStream_1(D)->byte_pos, D.6068
	leal	1(%rax), %ecx	#, D.6068
	movq	-8(%rbp), %rdx	# currStream, tmp100
	movl	%ecx, (%rdx)	# D.6068, currStream_1(D)->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6071
	movq	-8(%rbp), %rax	# currStream, tmp101
	movzbl	8(%rax), %eax	# currStream_1(D)->byte_buf, D.6069
	movb	%al, (%rdx)	# D.6069, *_28
	.loc 1 1263 0
	movq	-8(%rbp), %rax	# currStream, tmp102
	movl	$8, 4(%rax)	#, currStream_1(D)->bits_to_go
.L107:
	.loc 1 1265 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	writeVlcByteAlign, .-writeVlcByteAlign
	.section	.rodata
	.align 32
	.type	lentab.5541, @object
	.size	lentab.5541, 816
lentab.5541:
	.long	1
	.long	6
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	13
	.long	13
	.long	14
	.long	14
	.long	15
	.long	15
	.long	16
	.long	16
	.long	16
	.long	16
	.long	0
	.long	2
	.long	6
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	13
	.long	14
	.long	14
	.long	15
	.long	15
	.long	15
	.long	16
	.long	16
	.long	16
	.long	0
	.long	0
	.long	3
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	13
	.long	14
	.long	14
	.long	15
	.long	15
	.long	16
	.long	16
	.long	16
	.long	0
	.long	0
	.long	0
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	14
	.long	14
	.long	15
	.long	15
	.long	16
	.long	16
	.long	2
	.long	6
	.long	6
	.long	7
	.long	8
	.long	8
	.long	9
	.long	11
	.long	11
	.long	12
	.long	12
	.long	12
	.long	13
	.long	13
	.long	13
	.long	14
	.long	14
	.long	0
	.long	2
	.long	5
	.long	6
	.long	6
	.long	7
	.long	8
	.long	9
	.long	11
	.long	11
	.long	12
	.long	12
	.long	13
	.long	13
	.long	14
	.long	14
	.long	14
	.long	0
	.long	0
	.long	3
	.long	6
	.long	6
	.long	7
	.long	8
	.long	9
	.long	11
	.long	11
	.long	12
	.long	12
	.long	13
	.long	13
	.long	13
	.long	14
	.long	14
	.long	0
	.long	0
	.long	0
	.long	4
	.long	4
	.long	5
	.long	6
	.long	6
	.long	7
	.long	9
	.long	11
	.long	11
	.long	12
	.long	13
	.long	13
	.long	13
	.long	14
	.long	4
	.long	6
	.long	6
	.long	6
	.long	7
	.long	7
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	9
	.long	10
	.long	10
	.long	10
	.long	10
	.long	0
	.long	4
	.long	5
	.long	5
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	9
	.long	10
	.long	10
	.long	10
	.long	0
	.long	0
	.long	4
	.long	5
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	10
	.long	10
	.long	10
	.long	0
	.long	0
	.long	0
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	8
	.long	9
	.long	10
	.long	10
	.long	10
	.align 32
	.type	codtab.5542, @object
	.size	codtab.5542, 816
codtab.5542:
	.long	1
	.long	5
	.long	7
	.long	7
	.long	7
	.long	7
	.long	15
	.long	11
	.long	8
	.long	15
	.long	11
	.long	15
	.long	11
	.long	15
	.long	11
	.long	7
	.long	4
	.long	0
	.long	1
	.long	4
	.long	6
	.long	6
	.long	6
	.long	6
	.long	14
	.long	10
	.long	14
	.long	10
	.long	14
	.long	10
	.long	1
	.long	14
	.long	10
	.long	6
	.long	0
	.long	0
	.long	1
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	13
	.long	9
	.long	13
	.long	9
	.long	13
	.long	9
	.long	13
	.long	9
	.long	5
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	12
	.long	12
	.long	8
	.long	12
	.long	8
	.long	12
	.long	8
	.long	3
	.long	11
	.long	7
	.long	7
	.long	7
	.long	4
	.long	7
	.long	15
	.long	11
	.long	15
	.long	11
	.long	8
	.long	15
	.long	11
	.long	7
	.long	9
	.long	7
	.long	0
	.long	2
	.long	7
	.long	10
	.long	6
	.long	6
	.long	6
	.long	6
	.long	14
	.long	10
	.long	14
	.long	10
	.long	14
	.long	10
	.long	11
	.long	8
	.long	6
	.long	0
	.long	0
	.long	3
	.long	9
	.long	5
	.long	5
	.long	5
	.long	5
	.long	13
	.long	9
	.long	13
	.long	9
	.long	13
	.long	9
	.long	6
	.long	10
	.long	5
	.long	0
	.long	0
	.long	0
	.long	5
	.long	4
	.long	6
	.long	8
	.long	4
	.long	4
	.long	4
	.long	12
	.long	8
	.long	12
	.long	12
	.long	8
	.long	1
	.long	4
	.long	15
	.long	15
	.long	11
	.long	8
	.long	15
	.long	11
	.long	9
	.long	8
	.long	15
	.long	11
	.long	15
	.long	11
	.long	8
	.long	13
	.long	9
	.long	5
	.long	1
	.long	0
	.long	14
	.long	15
	.long	12
	.long	10
	.long	8
	.long	14
	.long	10
	.long	14
	.long	14
	.long	10
	.long	14
	.long	10
	.long	7
	.long	12
	.long	8
	.long	4
	.long	0
	.long	0
	.long	13
	.long	14
	.long	11
	.long	9
	.long	13
	.long	9
	.long	13
	.long	10
	.long	13
	.long	9
	.long	13
	.long	9
	.long	11
	.long	7
	.long	3
	.long	0
	.long	0
	.long	0
	.long	12
	.long	11
	.long	10
	.long	9
	.long	8
	.long	13
	.long	12
	.long	12
	.long	12
	.long	8
	.long	12
	.long	10
	.long	6
	.long	2
	.align 32
	.type	lentab.5548, @object
	.size	lentab.5548, 816
lentab.5548:
	.long	2
	.long	6
	.long	6
	.long	6
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	7
	.long	7
	.long	9
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	7
	.long	7
	.long	9
	.long	10
	.long	11
	.long	12
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	7
	.long	7
	.long	9
	.long	10
	.long	11
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	6
	.long	7
	.long	7
	.long	10
	.long	11
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	6
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	13
	.long	13
	.long	14
	.long	14
	.long	15
	.long	15
	.long	16
	.long	16
	.long	16
	.long	16
	.long	0
	.long	2
	.long	6
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	13
	.long	14
	.long	14
	.long	15
	.long	15
	.long	15
	.long	16
	.long	16
	.long	16
	.long	0
	.long	0
	.long	3
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	13
	.long	14
	.long	14
	.long	15
	.long	15
	.long	16
	.long	16
	.long	16
	.long	0
	.long	0
	.long	0
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	14
	.long	14
	.long	15
	.long	15
	.long	16
	.long	16
	.align 32
	.type	codtab.5549, @object
	.size	codtab.5549, 816
codtab.5549:
	.long	1
	.long	7
	.long	4
	.long	3
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	6
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	15
	.long	14
	.long	7
	.long	6
	.long	7
	.long	7
	.long	7
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	13
	.long	12
	.long	5
	.long	6
	.long	6
	.long	6
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	11
	.long	10
	.long	4
	.long	5
	.long	5
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	9
	.long	8
	.long	4
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	5
	.long	7
	.long	7
	.long	7
	.long	7
	.long	15
	.long	11
	.long	8
	.long	15
	.long	11
	.long	15
	.long	11
	.long	15
	.long	11
	.long	7
	.long	4
	.long	0
	.long	1
	.long	4
	.long	6
	.long	6
	.long	6
	.long	6
	.long	14
	.long	10
	.long	14
	.long	10
	.long	14
	.long	10
	.long	1
	.long	14
	.long	10
	.long	6
	.long	0
	.long	0
	.long	1
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	13
	.long	9
	.long	13
	.long	9
	.long	13
	.long	9
	.long	13
	.long	9
	.long	5
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	12
	.long	12
	.long	8
	.long	12
	.long	8
	.long	12
	.long	8
	.align 32
	.type	lentab.5555, @object
	.size	lentab.5555, 960
lentab.5555:
	.long	1
	.long	3
	.long	3
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	9
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	6
	.long	6
	.zero	4
	.long	4
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	3
	.long	3
	.long	4
	.long	5
	.long	5
	.long	6
	.long	5
	.long	6
	.zero	8
	.long	5
	.long	3
	.long	4
	.long	4
	.long	3
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	5
	.long	5
	.long	5
	.zero	12
	.long	4
	.long	4
	.long	4
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	5
	.long	4
	.long	5
	.zero	16
	.long	6
	.long	5
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	3
	.long	6
	.zero	20
	.long	6
	.long	5
	.long	3
	.long	3
	.long	3
	.long	2
	.long	3
	.long	4
	.long	3
	.long	6
	.zero	24
	.long	6
	.long	4
	.long	5
	.long	3
	.long	2
	.long	2
	.long	3
	.long	3
	.long	6
	.zero	28
	.long	6
	.long	6
	.long	4
	.long	2
	.long	2
	.long	3
	.long	2
	.long	5
	.zero	32
	.long	5
	.long	5
	.long	3
	.long	2
	.long	2
	.long	2
	.long	4
	.zero	36
	.long	4
	.long	4
	.long	3
	.long	3
	.long	1
	.long	3
	.zero	40
	.long	4
	.long	4
	.long	2
	.long	1
	.long	3
	.zero	44
	.long	3
	.long	3
	.long	1
	.long	2
	.zero	48
	.long	2
	.long	2
	.long	1
	.zero	52
	.long	1
	.long	1
	.zero	56
	.align 32
	.type	codtab.5556, @object
	.size	codtab.5556, 960
codtab.5556:
	.long	1
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	1
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	5
	.long	4
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	1
	.long	0
	.zero	4
	.long	5
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	4
	.long	3
	.long	2
	.long	3
	.long	2
	.long	1
	.long	1
	.long	0
	.zero	8
	.long	3
	.long	7
	.long	5
	.long	4
	.long	6
	.long	5
	.long	4
	.long	3
	.long	3
	.long	2
	.long	2
	.long	1
	.long	0
	.zero	12
	.long	5
	.long	4
	.long	3
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	1
	.long	0
	.zero	16
	.long	1
	.long	1
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	1
	.long	0
	.zero	20
	.long	1
	.long	1
	.long	5
	.long	4
	.long	3
	.long	3
	.long	2
	.long	1
	.long	1
	.long	0
	.zero	24
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	2
	.long	2
	.long	1
	.long	0
	.zero	28
	.long	1
	.long	0
	.long	1
	.long	3
	.long	2
	.long	1
	.long	1
	.long	1
	.zero	32
	.long	1
	.long	0
	.long	1
	.long	3
	.long	2
	.long	1
	.long	1
	.zero	36
	.long	0
	.long	1
	.long	1
	.long	2
	.long	1
	.long	3
	.zero	40
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.zero	44
	.long	0
	.long	1
	.long	1
	.long	1
	.zero	48
	.long	0
	.long	1
	.long	1
	.zero	52
	.long	0
	.long	1
	.zero	56
	.align 32
	.type	lentab.5562, @object
	.size	lentab.5562, 2880
lentab.5562:
	.long	1
	.long	2
	.long	3
	.long	3
	.zero	48
	.long	1
	.long	2
	.long	2
	.zero	52
	.long	1
	.long	1
	.zero	56
	.zero	768
	.long	1
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.zero	32
	.long	3
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.zero	36
	.long	3
	.long	3
	.long	2
	.long	2
	.long	3
	.long	3
	.zero	40
	.long	3
	.long	2
	.long	2
	.long	2
	.long	3
	.zero	44
	.long	2
	.long	2
	.long	2
	.long	2
	.zero	48
	.long	2
	.long	2
	.long	1
	.zero	52
	.long	1
	.long	1
	.zero	56
	.zero	512
	.long	1
	.long	3
	.long	3
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	9
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	6
	.long	6
	.zero	4
	.long	4
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	3
	.long	3
	.long	4
	.long	5
	.long	5
	.long	6
	.long	5
	.long	6
	.zero	8
	.long	5
	.long	3
	.long	4
	.long	4
	.long	3
	.long	3
	.long	3
	.long	4
	.long	3
	.long	4
	.long	5
	.long	5
	.long	5
	.zero	12
	.long	4
	.long	4
	.long	4
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	5
	.long	4
	.long	5
	.zero	16
	.long	6
	.long	5
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	3
	.long	6
	.zero	20
	.long	6
	.long	5
	.long	3
	.long	3
	.long	3
	.long	2
	.long	3
	.long	4
	.long	3
	.long	6
	.zero	24
	.long	6
	.long	4
	.long	5
	.long	3
	.long	2
	.long	2
	.long	3
	.long	3
	.long	6
	.zero	28
	.long	6
	.long	6
	.long	4
	.long	2
	.long	2
	.long	3
	.long	2
	.long	5
	.zero	32
	.long	5
	.long	5
	.long	3
	.long	2
	.long	2
	.long	2
	.long	4
	.zero	36
	.long	4
	.long	4
	.long	3
	.long	3
	.long	1
	.long	3
	.zero	40
	.long	4
	.long	4
	.long	2
	.long	1
	.long	3
	.zero	44
	.long	3
	.long	3
	.long	1
	.long	2
	.zero	48
	.long	2
	.long	2
	.long	1
	.zero	52
	.long	1
	.long	1
	.zero	56
	.align 32
	.type	codtab.5563, @object
	.size	codtab.5563, 2880
codtab.5563:
	.long	1
	.long	1
	.long	1
	.long	0
	.zero	48
	.long	1
	.long	1
	.long	0
	.zero	52
	.long	1
	.long	0
	.zero	56
	.zero	768
	.long	1
	.long	2
	.long	3
	.long	2
	.long	3
	.long	1
	.long	1
	.long	0
	.zero	32
	.long	0
	.long	1
	.long	1
	.long	4
	.long	5
	.long	6
	.long	7
	.zero	36
	.long	0
	.long	1
	.long	1
	.long	2
	.long	6
	.long	7
	.zero	40
	.long	6
	.long	0
	.long	1
	.long	2
	.long	7
	.zero	44
	.long	0
	.long	1
	.long	2
	.long	3
	.zero	48
	.long	0
	.long	1
	.long	1
	.zero	52
	.long	0
	.long	1
	.zero	56
	.zero	512
	.long	1
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	1
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	5
	.long	4
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
	.long	1
	.long	0
	.zero	4
	.long	5
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	4
	.long	3
	.long	2
	.long	3
	.long	2
	.long	1
	.long	1
	.long	0
	.zero	8
	.long	3
	.long	7
	.long	5
	.long	4
	.long	6
	.long	5
	.long	4
	.long	3
	.long	3
	.long	2
	.long	2
	.long	1
	.long	0
	.zero	12
	.long	5
	.long	4
	.long	3
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	1
	.long	0
	.zero	16
	.long	1
	.long	1
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	1
	.long	0
	.zero	20
	.long	1
	.long	1
	.long	5
	.long	4
	.long	3
	.long	3
	.long	2
	.long	1
	.long	1
	.long	0
	.zero	24
	.long	1
	.long	1
	.long	1
	.long	3
	.long	3
	.long	2
	.long	2
	.long	1
	.long	0
	.zero	28
	.long	1
	.long	0
	.long	1
	.long	3
	.long	2
	.long	1
	.long	1
	.long	1
	.zero	32
	.long	1
	.long	0
	.long	1
	.long	3
	.long	2
	.long	1
	.long	1
	.zero	36
	.long	0
	.long	1
	.long	1
	.long	2
	.long	1
	.long	3
	.zero	40
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.zero	44
	.long	0
	.long	1
	.long	1
	.long	1
	.zero	48
	.long	0
	.long	1
	.long	1
	.zero	52
	.long	0
	.long	1
	.zero	56
	.align 32
	.type	lentab.5570, @object
	.size	lentab.5570, 960
lentab.5570:
	.long	1
	.long	1
	.zero	56
	.long	1
	.long	2
	.long	2
	.zero	52
	.long	2
	.long	2
	.long	2
	.long	2
	.zero	48
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.zero	44
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.zero	40
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.zero	36
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.zero	4
	.zero	512
	.align 32
	.type	codtab.5571, @object
	.size	codtab.5571, 960
codtab.5571:
	.long	1
	.long	0
	.zero	56
	.long	1
	.long	1
	.long	0
	.zero	52
	.long	3
	.long	2
	.long	1
	.long	0
	.zero	48
	.long	3
	.long	2
	.long	1
	.long	1
	.long	0
	.zero	44
	.long	3
	.long	2
	.long	3
	.long	2
	.long	1
	.long	0
	.zero	40
	.long	3
	.long	0
	.long	1
	.long	3
	.long	2
	.long	5
	.long	4
	.zero	36
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.zero	4
	.zero	512
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2704
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF436
	.byte	0x1
	.long	.LASF437
	.long	.LASF438
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	0x34
	.long	0x75
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x6
	.byte	0x8
	.long	0x82
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x6
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0xc5
	.long	0x5e
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
	.uleb128 0x7
	.long	.LASF14
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.long	0xd6
	.uleb128 0x9
	.long	.LASF15
	.sleb128 0
	.uleb128 0x9
	.long	.LASF16
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.byte	0x2d
	.long	0xc1
	.uleb128 0x4
	.long	0x34
	.long	0xf1
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb6
	.uleb128 0x7
	.long	.LASF18
	.byte	0x5
	.byte	0x3e
	.long	0x96
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x78
	.long	0x18f
	.uleb128 0x9
	.long	.LASF19
	.sleb128 0
	.uleb128 0x9
	.long	.LASF20
	.sleb128 1
	.uleb128 0x9
	.long	.LASF21
	.sleb128 2
	.uleb128 0x9
	.long	.LASF22
	.sleb128 3
	.uleb128 0x9
	.long	.LASF23
	.sleb128 4
	.uleb128 0x9
	.long	.LASF24
	.sleb128 5
	.uleb128 0x9
	.long	.LASF25
	.sleb128 6
	.uleb128 0x9
	.long	.LASF26
	.sleb128 7
	.uleb128 0x9
	.long	.LASF27
	.sleb128 8
	.uleb128 0x9
	.long	.LASF28
	.sleb128 9
	.uleb128 0x9
	.long	.LASF29
	.sleb128 10
	.uleb128 0x9
	.long	.LASF30
	.sleb128 11
	.uleb128 0x9
	.long	.LASF31
	.sleb128 12
	.uleb128 0x9
	.long	.LASF32
	.sleb128 13
	.uleb128 0x9
	.long	.LASF33
	.sleb128 14
	.uleb128 0x9
	.long	.LASF34
	.sleb128 15
	.uleb128 0x9
	.long	.LASF35
	.sleb128 16
	.uleb128 0x9
	.long	.LASF36
	.sleb128 17
	.uleb128 0x9
	.long	.LASF37
	.sleb128 18
	.uleb128 0x9
	.long	.LASF38
	.sleb128 19
	.uleb128 0x9
	.long	.LASF39
	.sleb128 20
	.uleb128 0x9
	.long	.LASF40
	.sleb128 21
	.byte	0
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x27f
	.uleb128 0xb
	.long	.LASF41
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF43
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF44
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF45
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF46
	.byte	0x5
	.byte	0xd5
	.long	0xf1
	.byte	0x18
	.uleb128 0xb
	.long	.LASF47
	.byte	0x5
	.byte	0xd6
	.long	0x89
	.byte	0x20
	.uleb128 0xb
	.long	.LASF48
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF49
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF50
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF51
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF52
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF53
	.byte	0x5
	.byte	0xdd
	.long	0xf1
	.byte	0x40
	.uleb128 0xb
	.long	.LASF54
	.byte	0x5
	.byte	0xde
	.long	0x89
	.byte	0x48
	.uleb128 0xc
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xc
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xc
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xc
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xc
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xc
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF55
	.byte	0x5
	.byte	0xe2
	.long	0x18f
	.uleb128 0x7
	.long	.LASF56
	.byte	0x5
	.byte	0xe4
	.long	0x295
	.uleb128 0x6
	.byte	0x8
	.long	0x27f
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x2c8
	.uleb128 0xb
	.long	.LASF57
	.byte	0x5
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xc
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xb
	.long	.LASF58
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF59
	.byte	0x5
	.byte	0xee
	.long	0x29b
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x33f
	.uleb128 0xe
	.long	.LASF60
	.byte	0x5
	.value	0x104
	.long	0x33f
	.byte	0
	.uleb128 0xf
	.long	.LASF61
	.byte	0x5
	.value	0x105
	.long	0x355
	.value	0x210
	.uleb128 0xf
	.long	.LASF62
	.byte	0x5
	.value	0x106
	.long	0x36b
	.value	0x330
	.uleb128 0xf
	.long	.LASF63
	.byte	0x5
	.value	0x107
	.long	0x381
	.value	0x470
	.uleb128 0xf
	.long	.LASF64
	.byte	0x5
	.value	0x108
	.long	0x397
	.value	0x530
	.uleb128 0xf
	.long	.LASF65
	.byte	0x5
	.value	0x109
	.long	0x397
	.value	0x570
	.uleb128 0xf
	.long	.LASF66
	.byte	0x5
	.value	0x10a
	.long	0x3a7
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x355
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x36b
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x381
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x397
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x3a7
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x3b7
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x5
	.value	0x10c
	.long	0x2d3
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x457
	.uleb128 0xe
	.long	.LASF68
	.byte	0x5
	.value	0x11b
	.long	0x457
	.byte	0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x5
	.value	0x11c
	.long	0x397
	.byte	0x20
	.uleb128 0xe
	.long	.LASF70
	.byte	0x5
	.value	0x11d
	.long	0x467
	.byte	0x60
	.uleb128 0xf
	.long	.LASF71
	.byte	0x5
	.value	0x11e
	.long	0x47d
	.value	0x120
	.uleb128 0xf
	.long	.LASF72
	.byte	0x5
	.value	0x11f
	.long	0x493
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF73
	.byte	0x5
	.value	0x120
	.long	0x493
	.value	0xd00
	.uleb128 0xf
	.long	.LASF74
	.byte	0x5
	.value	0x121
	.long	0x4a9
	.value	0x1660
	.uleb128 0xf
	.long	.LASF75
	.byte	0x5
	.value	0x122
	.long	0x4a9
	.value	0x1980
	.uleb128 0xf
	.long	.LASF76
	.byte	0x5
	.value	0x123
	.long	0x493
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF77
	.byte	0x5
	.value	0x124
	.long	0x493
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x467
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x47d
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x493
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x4a9
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.long	0x4bf
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x5
	.value	0x125
	.long	0x3c3
	.uleb128 0x11
	.long	.LASF83
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x500
	.uleb128 0xe
	.long	.LASF79
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF80
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF81
	.byte	0x5
	.value	0x138
	.long	0x500
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4cb
	.uleb128 0x10
	.long	.LASF82
	.byte	0x5
	.value	0x139
	.long	0x4cb
	.uleb128 0x11
	.long	.LASF84
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x56e
	.uleb128 0xe
	.long	.LASF85
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF86
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF87
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF88
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF89
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF81
	.byte	0x5
	.value	0x143
	.long	0x56e
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x512
	.uleb128 0x10
	.long	.LASF90
	.byte	0x5
	.value	0x144
	.long	0x512
	.uleb128 0x11
	.long	.LASF91
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x60e
	.uleb128 0xe
	.long	.LASF92
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF93
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF94
	.byte	0x5
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF95
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xe
	.long	.LASF96
	.byte	0x5
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF97
	.byte	0x5
	.value	0x158
	.long	0x628
	.byte	0x20
	.uleb128 0xe
	.long	.LASF98
	.byte	0x5
	.value	0x15a
	.long	0x644
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x628
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x89
	.uleb128 0x14
	.long	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x60e
	.uleb128 0x13
	.long	0x63e
	.uleb128 0x14
	.long	0x63e
	.uleb128 0x14
	.long	0x28a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x580
	.uleb128 0x6
	.byte	0x8
	.long	0x62e
	.uleb128 0x10
	.long	.LASF99
	.byte	0x5
	.value	0x15c
	.long	0x580
	.uleb128 0x15
	.long	.LASF100
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x8d0
	.uleb128 0xe
	.long	.LASF101
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF102
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF103
	.byte	0x5
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF104
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF105
	.byte	0x5
	.value	0x166
	.long	0xe1
	.byte	0x14
	.uleb128 0xe
	.long	.LASF106
	.byte	0x5
	.value	0x168
	.long	0x8d0
	.byte	0x38
	.uleb128 0xe
	.long	.LASF107
	.byte	0x5
	.value	0x169
	.long	0x8d0
	.byte	0x40
	.uleb128 0xe
	.long	.LASF108
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0x8d6
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF109
	.byte	0x5
	.value	0x16d
	.long	0x8f8
	.value	0x14c
	.uleb128 0xf
	.long	.LASF110
	.byte	0x5
	.value	0x16e
	.long	0x8f8
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF111
	.byte	0x5
	.value	0x170
	.long	0xf7
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF112
	.byte	0x5
	.value	0x171
	.long	0x908
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF113
	.byte	0x5
	.value	0x172
	.long	0x908
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF114
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF115
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0xf
	.long	.LASF116
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0xf
	.long	.LASF117
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0xf
	.long	.LASF118
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0xf
	.long	.LASF119
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0xf
	.long	.LASF120
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0xf
	.long	.LASF121
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0xf
	.long	.LASF122
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0xf
	.long	.LASF123
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0xf
	.long	.LASF124
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0xf
	.long	.LASF125
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0xf
	.long	.LASF126
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0xf
	.long	.LASF127
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0xf
	.long	.LASF128
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0xf
	.long	.LASF129
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0xf
	.long	.LASF130
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0xf
	.long	.LASF131
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0xf
	.long	.LASF132
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0xf
	.long	.LASF133
	.byte	0x5
	.value	0x18a
	.long	0xaf
	.value	0x248
	.uleb128 0xf
	.long	.LASF134
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0xf
	.long	.LASF135
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0xf
	.long	.LASF136
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0xf
	.long	.LASF137
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0xf
	.long	.LASF138
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0xf
	.long	.LASF139
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0xf
	.long	.LASF140
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0xf
	.long	.LASF141
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0xf
	.long	.LASF142
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x656
	.uleb128 0x4
	.long	0x34
	.long	0x8f8
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x908
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x918
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF143
	.byte	0x5
	.value	0x196
	.long	0x656
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0x9bd
	.uleb128 0xe
	.long	.LASF144
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF145
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF146
	.byte	0x5
	.value	0x19f
	.long	0xb6
	.byte	0x8
	.uleb128 0xe
	.long	.LASF147
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF148
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF149
	.byte	0x5
	.value	0x1a2
	.long	0xb6
	.byte	0x14
	.uleb128 0xe
	.long	.LASF150
	.byte	0x5
	.value	0x1a4
	.long	0xb6
	.byte	0x15
	.uleb128 0xe
	.long	.LASF151
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF152
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF153
	.byte	0x5
	.value	0x1a8
	.long	0xf1
	.byte	0x20
	.uleb128 0xe
	.long	.LASF154
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF155
	.byte	0x5
	.value	0x1ab
	.long	0x924
	.uleb128 0x11
	.long	.LASF156
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0x9fe
	.uleb128 0xe
	.long	.LASF157
	.byte	0x5
	.value	0x1b1
	.long	0x9fe
	.byte	0
	.uleb128 0xe
	.long	.LASF158
	.byte	0x5
	.value	0x1b2
	.long	0x27f
	.byte	0x8
	.uleb128 0xe
	.long	.LASF159
	.byte	0x5
	.value	0x1b4
	.long	0xa24
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9bd
	.uleb128 0x18
	.long	0x34
	.long	0xa18
	.uleb128 0x14
	.long	0xa18
	.uleb128 0x14
	.long	0xa1e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x64a
	.uleb128 0x6
	.byte	0x8
	.long	0x9c9
	.uleb128 0x6
	.byte	0x8
	.long	0xa04
	.uleb128 0x10
	.long	.LASF160
	.byte	0x5
	.value	0x1b8
	.long	0x9c9
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xb43
	.uleb128 0xe
	.long	.LASF161
	.byte	0x5
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF162
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF163
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF164
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF165
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF166
	.byte	0x5
	.value	0x1c3
	.long	0xb43
	.byte	0x18
	.uleb128 0xe
	.long	.LASF167
	.byte	0x5
	.value	0x1c4
	.long	0xb49
	.byte	0x20
	.uleb128 0xe
	.long	.LASF168
	.byte	0x5
	.value	0x1c5
	.long	0xb4f
	.byte	0x28
	.uleb128 0xe
	.long	.LASF169
	.byte	0x5
	.value	0x1c8
	.long	0xb55
	.byte	0x30
	.uleb128 0xe
	.long	.LASF170
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF171
	.byte	0x5
	.value	0x1cb
	.long	0x89
	.byte	0x40
	.uleb128 0xe
	.long	.LASF172
	.byte	0x5
	.value	0x1cc
	.long	0x89
	.byte	0x48
	.uleb128 0xe
	.long	.LASF173
	.byte	0x5
	.value	0x1cd
	.long	0x89
	.byte	0x50
	.uleb128 0xe
	.long	.LASF174
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF175
	.byte	0x5
	.value	0x1cf
	.long	0x89
	.byte	0x60
	.uleb128 0xe
	.long	.LASF176
	.byte	0x5
	.value	0x1d0
	.long	0x89
	.byte	0x68
	.uleb128 0xe
	.long	.LASF177
	.byte	0x5
	.value	0x1d1
	.long	0x89
	.byte	0x70
	.uleb128 0xe
	.long	.LASF178
	.byte	0x5
	.value	0x1d3
	.long	0xb6a
	.byte	0x78
	.uleb128 0xe
	.long	.LASF179
	.byte	0x5
	.value	0x1d5
	.long	0xb70
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa2a
	.uleb128 0x6
	.byte	0x8
	.long	0x3b7
	.uleb128 0x6
	.byte	0x8
	.long	0x4bf
	.uleb128 0x6
	.byte	0x8
	.long	0x506
	.uleb128 0x18
	.long	0xd6
	.long	0xb6a
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5b
	.uleb128 0x4
	.long	0x34
	.long	0xb86
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF180
	.byte	0x5
	.value	0x1d7
	.long	0xa36
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xbfc
	.uleb128 0xe
	.long	.LASF181
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF182
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF183
	.byte	0x5
	.value	0x1df
	.long	0xbfc
	.byte	0x8
	.uleb128 0xf
	.long	.LASF184
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF185
	.byte	0x5
	.value	0x1e1
	.long	0xa8
	.value	0x32c
	.uleb128 0xf
	.long	.LASF186
	.byte	0x5
	.value	0x1e2
	.long	0xa8
	.value	0x330
	.uleb128 0xf
	.long	.LASF187
	.byte	0x5
	.value	0x1e3
	.long	0xa8
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xc0c
	.long	0xc0c
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb86
	.uleb128 0x10
	.long	.LASF188
	.byte	0x5
	.value	0x1e4
	.long	0xb92
	.uleb128 0x6
	.byte	0x8
	.long	0x89
	.uleb128 0x19
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x1609
	.uleb128 0xe
	.long	.LASF189
	.byte	0x5
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF190
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF192
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF193
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF92
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF196
	.byte	0x5
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF104
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF197
	.byte	0x5
	.value	0x372
	.long	0xa8
	.byte	0x30
	.uleb128 0xe
	.long	.LASF198
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF199
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF200
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF201
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF202
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF203
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF204
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF206
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF207
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF208
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF209
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF210
	.byte	0x5
	.value	0x37f
	.long	0xc1e
	.byte	0x68
	.uleb128 0xe
	.long	.LASF211
	.byte	0x5
	.value	0x380
	.long	0xc1e
	.byte	0x70
	.uleb128 0xe
	.long	.LASF212
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF213
	.byte	0x5
	.value	0x383
	.long	0x1609
	.byte	0x80
	.uleb128 0xe
	.long	.LASF214
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF215
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF216
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF217
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF218
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF219
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF220
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF221
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF222
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF223
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF224
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF225
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF226
	.byte	0x5
	.value	0x395
	.long	0x160f
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF227
	.byte	0x5
	.value	0x397
	.long	0x162b
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF228
	.byte	0x5
	.value	0x398
	.long	0x1647
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF229
	.byte	0x5
	.value	0x399
	.long	0x1663
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x1685
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x169b
	.value	0x3338
	.uleb128 0xf
	.long	.LASF230
	.byte	0x5
	.value	0x39d
	.long	0x16b1
	.value	0x3738
	.uleb128 0xf
	.long	.LASF231
	.byte	0x5
	.value	0x39e
	.long	0x1609
	.value	0x3740
	.uleb128 0xf
	.long	.LASF232
	.byte	0x5
	.value	0x3a0
	.long	0x16b7
	.value	0x3748
	.uleb128 0xf
	.long	.LASF233
	.byte	0x5
	.value	0x3a1
	.long	0xc0c
	.value	0x3750
	.uleb128 0xf
	.long	.LASF234
	.byte	0x5
	.value	0x3a2
	.long	0x16bd
	.value	0x3758
	.uleb128 0xf
	.long	.LASF235
	.byte	0x5
	.value	0x3a3
	.long	0x16c3
	.value	0x3760
	.uleb128 0x1a
	.long	.LASF236
	.byte	0x5
	.value	0x3a5
	.long	0x89
	.long	0x11860
	.uleb128 0x1a
	.long	.LASF237
	.byte	0x5
	.value	0x3a6
	.long	0x89
	.long	0x11868
	.uleb128 0x1b
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1a
	.long	.LASF238
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1a
	.long	.LASF239
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1a
	.long	.LASF240
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1a
	.long	.LASF241
	.byte	0x5
	.value	0x3ac
	.long	0x16d4
	.long	0x11880
	.uleb128 0x1a
	.long	.LASF242
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1a
	.long	.LASF243
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1a
	.long	.LASF244
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1a
	.long	.LASF245
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1a
	.long	.LASF246
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1a
	.long	.LASF247
	.byte	0x5
	.value	0x3b4
	.long	0xaf
	.long	0x118d8
	.uleb128 0x1a
	.long	.LASF248
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1a
	.long	.LASF249
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1a
	.long	.LASF250
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1a
	.long	.LASF251
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1a
	.long	.LASF252
	.byte	0x5
	.value	0x3ba
	.long	0x16ea
	.long	0x118f0
	.uleb128 0x1a
	.long	.LASF253
	.byte	0x5
	.value	0x3bb
	.long	0x16ea
	.long	0x118f8
	.uleb128 0x1a
	.long	.LASF254
	.byte	0x5
	.value	0x3bd
	.long	0x16ea
	.long	0x11900
	.uleb128 0x1a
	.long	.LASF255
	.byte	0x5
	.value	0x3be
	.long	0x16ea
	.long	0x11908
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x5
	.value	0x3bf
	.long	0x170e
	.long	0x11910
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1a
	.long	.LASF256
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1a
	.long	.LASF257
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1a
	.long	.LASF258
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1a
	.long	.LASF259
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1a
	.long	.LASF260
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1a
	.long	.LASF261
	.byte	0x5
	.value	0x3ce
	.long	0x171e
	.long	0x11950
	.uleb128 0x1a
	.long	.LASF262
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1a
	.long	.LASF263
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1a
	.long	.LASF264
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1a
	.long	.LASF265
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1a
	.long	.LASF266
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1a
	.long	.LASF267
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1a
	.long	.LASF268
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1a
	.long	.LASF269
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1a
	.long	.LASF270
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1a
	.long	.LASF271
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1a
	.long	.LASF272
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1a
	.long	.LASF273
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1a
	.long	.LASF274
	.byte	0x5
	.value	0x3e4
	.long	0x1734
	.long	0x11ae8
	.uleb128 0x1a
	.long	.LASF275
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1a
	.long	.LASF276
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1a
	.long	.LASF277
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1a
	.long	.LASF278
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1a
	.long	.LASF279
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1a
	.long	.LASF280
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1a
	.long	.LASF281
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1a
	.long	.LASF282
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1a
	.long	.LASF283
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1a
	.long	.LASF284
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1a
	.long	.LASF285
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1a
	.long	.LASF286
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1a
	.long	.LASF287
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1a
	.long	.LASF288
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1a
	.long	.LASF289
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1a
	.long	.LASF290
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1a
	.long	.LASF291
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1a
	.long	.LASF292
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1a
	.long	.LASF293
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1a
	.long	.LASF294
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1a
	.long	.LASF295
	.byte	0x5
	.value	0x409
	.long	0x1744
	.long	0x11b40
	.uleb128 0x1a
	.long	.LASF296
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1a
	.long	.LASF297
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1a
	.long	.LASF298
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1a
	.long	.LASF299
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1a
	.long	.LASF300
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1a
	.long	.LASF301
	.byte	0x5
	.value	0x413
	.long	0xaf
	.long	0x11b60
	.uleb128 0x1a
	.long	.LASF302
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1a
	.long	.LASF303
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1a
	.long	.LASF304
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1a
	.long	.LASF305
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1a
	.long	.LASF306
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1a
	.long	.LASF307
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1a
	.long	.LASF308
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1a
	.long	.LASF309
	.byte	0x5
	.value	0x41b
	.long	0x174a
	.long	0x11b88
	.uleb128 0x1a
	.long	.LASF310
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1a
	.long	.LASF311
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1a
	.long	.LASF312
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1a
	.long	.LASF313
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1a
	.long	.LASF314
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1a
	.long	.LASF316
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1a
	.long	.LASF317
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1a
	.long	.LASF318
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1a
	.long	.LASF319
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1a
	.long	.LASF320
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1a
	.long	.LASF321
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1a
	.long	.LASF322
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1a
	.long	.LASF325
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1a
	.long	.LASF326
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1a
	.long	.LASF327
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1a
	.long	.LASF328
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1a
	.long	.LASF329
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1a
	.long	.LASF330
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1a
	.long	.LASF331
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1a
	.long	.LASF332
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1a
	.long	.LASF333
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1a
	.long	.LASF334
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1a
	.long	.LASF335
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1a
	.long	.LASF336
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1a
	.long	.LASF337
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1a
	.long	.LASF338
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1a
	.long	.LASF339
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1a
	.long	.LASF340
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1a
	.long	.LASF341
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1a
	.long	.LASF342
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1a
	.long	.LASF343
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1a
	.long	.LASF344
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc1e
	.uleb128 0x4
	.long	0x42
	.long	0x162b
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1647
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1663
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1685
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x169b
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x16b1
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1609
	.uleb128 0x6
	.byte	0x8
	.long	0xc12
	.uleb128 0x6
	.byte	0x8
	.long	0x918
	.uleb128 0x4
	.long	0x64a
	.long	0x16d4
	.uleb128 0x1c
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x16ea
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x16f0
	.uleb128 0x6
	.byte	0x8
	.long	0x16f6
	.uleb128 0x6
	.byte	0x8
	.long	0x16fc
	.uleb128 0x6
	.byte	0x8
	.long	0x1702
	.uleb128 0x6
	.byte	0x8
	.long	0x1708
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x171e
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1734
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1744
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x574
	.uleb128 0x6
	.byte	0x8
	.long	0xaf
	.uleb128 0x10
	.long	.LASF345
	.byte	0x5
	.value	0x449
	.long	0xc24
	.uleb128 0xd
	.value	0x5d8
	.byte	0x5
	.value	0x44d
	.long	0x1939
	.uleb128 0xe
	.long	.LASF346
	.byte	0x5
	.value	0x44f
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF347
	.byte	0x5
	.value	0x450
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF348
	.byte	0x5
	.value	0x451
	.long	0xa8
	.byte	0x8
	.uleb128 0xe
	.long	.LASF349
	.byte	0x5
	.value	0x452
	.long	0xa8
	.byte	0xc
	.uleb128 0xe
	.long	.LASF350
	.byte	0x5
	.value	0x453
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF351
	.byte	0x5
	.value	0x454
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF352
	.byte	0x5
	.value	0x455
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF353
	.byte	0x5
	.value	0x456
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF354
	.byte	0x5
	.value	0x457
	.long	0x1939
	.byte	0x20
	.uleb128 0xe
	.long	.LASF355
	.byte	0x5
	.value	0x458
	.long	0x194f
	.byte	0x48
	.uleb128 0xf
	.long	.LASF356
	.byte	0x5
	.value	0x459
	.long	0x194f
	.value	0x174
	.uleb128 0xf
	.long	.LASF357
	.byte	0x5
	.value	0x45a
	.long	0x908
	.value	0x2a0
	.uleb128 0xf
	.long	.LASF358
	.byte	0x5
	.value	0x45d
	.long	0x89
	.value	0x2b0
	.uleb128 0xf
	.long	.LASF359
	.byte	0x5
	.value	0x45e
	.long	0x89
	.value	0x2b8
	.uleb128 0xf
	.long	.LASF360
	.byte	0x5
	.value	0x45f
	.long	0x34
	.value	0x2c0
	.uleb128 0xf
	.long	.LASF361
	.byte	0x5
	.value	0x460
	.long	0x34
	.value	0x2c4
	.uleb128 0xf
	.long	.LASF362
	.byte	0x5
	.value	0x461
	.long	0x34
	.value	0x2c8
	.uleb128 0xf
	.long	.LASF363
	.byte	0x5
	.value	0x462
	.long	0xa8
	.value	0x2cc
	.uleb128 0xf
	.long	.LASF364
	.byte	0x5
	.value	0x463
	.long	0xa8
	.value	0x2d0
	.uleb128 0xf
	.long	.LASF365
	.byte	0x5
	.value	0x464
	.long	0xa8
	.value	0x2d4
	.uleb128 0xf
	.long	.LASF366
	.byte	0x5
	.value	0x466
	.long	0x194f
	.value	0x2d8
	.uleb128 0xf
	.long	.LASF367
	.byte	0x5
	.value	0x467
	.long	0x194f
	.value	0x404
	.uleb128 0xf
	.long	.LASF368
	.byte	0x5
	.value	0x468
	.long	0x1965
	.value	0x530
	.uleb128 0xf
	.long	.LASF369
	.byte	0x5
	.value	0x469
	.long	0x1965
	.value	0x544
	.uleb128 0xf
	.long	.LASF370
	.byte	0x5
	.value	0x46a
	.long	0x1965
	.value	0x558
	.uleb128 0xf
	.long	.LASF371
	.byte	0x5
	.value	0x46b
	.long	0x1965
	.value	0x56c
	.uleb128 0xf
	.long	.LASF372
	.byte	0x5
	.value	0x46c
	.long	0x1965
	.value	0x580
	.uleb128 0xf
	.long	.LASF373
	.byte	0x5
	.value	0x46d
	.long	0x1965
	.value	0x594
	.uleb128 0xf
	.long	.LASF374
	.byte	0x5
	.value	0x46e
	.long	0x1965
	.value	0x5a8
	.uleb128 0xf
	.long	.LASF375
	.byte	0x5
	.value	0x470
	.long	0x34
	.value	0x5bc
	.uleb128 0xf
	.long	.LASF376
	.byte	0x5
	.value	0x471
	.long	0x34
	.value	0x5c0
	.uleb128 0xf
	.long	.LASF377
	.byte	0x5
	.value	0x472
	.long	0x89
	.value	0x5c8
	.uleb128 0xf
	.long	.LASF378
	.byte	0x5
	.value	0x473
	.long	0x34
	.value	0x5d0
	.uleb128 0xf
	.long	.LASF379
	.byte	0x5
	.value	0x474
	.long	0x34
	.value	0x5d4
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x194f
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1965
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1975
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF380
	.byte	0x5
	.value	0x475
	.long	0x175c
	.uleb128 0x1d
	.long	.LASF385
	.byte	0x1
	.byte	0x3a
	.long	0x34
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x19ed
	.uleb128 0x1e
	.long	.LASF381
	.byte	0x1
	.byte	0x3a
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF382
	.byte	0x1
	.byte	0x3a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1e
	.long	.LASF383
	.byte	0x1
	.byte	0x3a
	.long	0xb43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF384
	.byte	0x1
	.byte	0x3c
	.long	0x64a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"sym"
	.byte	0x1
	.byte	0x3c
	.long	0xa18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1d
	.long	.LASF386
	.byte	0x1
	.byte	0x60
	.long	0x34
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a59
	.uleb128 0x1e
	.long	.LASF381
	.byte	0x1
	.byte	0x60
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF382
	.byte	0x1
	.byte	0x60
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1e
	.long	.LASF383
	.byte	0x1
	.byte	0x60
	.long	0xb43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF384
	.byte	0x1
	.byte	0x62
	.long	0x64a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"sym"
	.byte	0x1
	.byte	0x62
	.long	0xa18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x21
	.string	"u_1"
	.byte	0x1
	.byte	0x87
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac5
	.uleb128 0x1e
	.long	.LASF381
	.byte	0x1
	.byte	0x87
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF382
	.byte	0x1
	.byte	0x87
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1e
	.long	.LASF383
	.byte	0x1
	.byte	0x87
	.long	0xb43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF384
	.byte	0x1
	.byte	0x89
	.long	0x64a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"sym"
	.byte	0x1
	.byte	0x89
	.long	0xa18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x21
	.string	"u_v"
	.byte	0x1
	.byte	0xb2
	.long	0x34
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b3e
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.byte	0xb2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1e
	.long	.LASF381
	.byte	0x1
	.byte	0xb2
	.long	0x7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF382
	.byte	0x1
	.byte	0xb2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF383
	.byte	0x1
	.byte	0xb2
	.long	0xb43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.long	.LASF384
	.byte	0x1
	.byte	0xb4
	.long	0x64a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.string	"sym"
	.byte	0x1
	.byte	0xb4
	.long	0xa18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x23
	.long	.LASF389
	.byte	0x1
	.byte	0xd1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bad
	.uleb128 0x22
	.string	"ue"
	.byte	0x1
	.byte	0xd1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LASF387
	.byte	0x1
	.byte	0xd1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0xd1
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF388
	.byte	0x1
	.byte	0xd1
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0xd3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"nn"
	.byte	0x1
	.byte	0xd3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x23
	.long	.LASF390
	.byte	0x1
	.byte	0xee
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c35
	.uleb128 0x22
	.string	"se"
	.byte	0x1
	.byte	0xee
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.long	.LASF387
	.byte	0x1
	.byte	0xee
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0xee
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF388
	.byte	0x1
	.byte	0xee
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0xf1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.long	.LASF391
	.byte	0x1
	.byte	0xf1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.string	"nn"
	.byte	0x1
	.byte	0xf1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF392
	.byte	0x1
	.value	0x111
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c9c
	.uleb128 0x25
	.string	"cbp"
	.byte	0x1
	.value	0x111
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF387
	.byte	0x1
	.value	0x111
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x111
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF388
	.byte	0x1
	.value	0x111
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF394
	.byte	0x1
	.value	0x113
	.long	0x1cb8
	.byte	0
	.uleb128 0x4
	.long	0x3b
	.long	0x1cb8
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x2f
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.long	0x1c9c
	.uleb128 0x24
	.long	.LASF393
	.byte	0x1
	.value	0x120
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d24
	.uleb128 0x25
	.string	"cbp"
	.byte	0x1
	.value	0x120
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF387
	.byte	0x1
	.value	0x120
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x120
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF388
	.byte	0x1
	.value	0x120
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF394
	.byte	0x1
	.value	0x122
	.long	0x1d24
	.byte	0
	.uleb128 0x28
	.long	0x1c9c
	.uleb128 0x24
	.long	.LASF395
	.byte	0x1
	.value	0x133
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ded
	.uleb128 0x26
	.long	.LASF396
	.byte	0x1
	.value	0x133
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x133
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x133
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF388
	.byte	0x1
	.value	0x133
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF397
	.byte	0x1
	.value	0x135
	.long	0x1e03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF398
	.byte	0x1
	.value	0x13a
	.long	0x1e08
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF399
	.byte	0x1
	.value	0x13f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x13f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.value	0x13f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF391
	.byte	0x1
	.value	0x13f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.string	"nn"
	.byte	0x1
	.value	0x13f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1e03
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.long	0x1ded
	.uleb128 0x28
	.long	0x908
	.uleb128 0x24
	.long	.LASF400
	.byte	0x1
	.value	0x16c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ed6
	.uleb128 0x26
	.long	.LASF396
	.byte	0x1
	.value	0x16c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x16c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x16c
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF388
	.byte	0x1
	.value	0x16c
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x29
	.long	.LASF398
	.byte	0x1
	.value	0x16e
	.long	0x1ee6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF397
	.byte	0x1
	.value	0x172
	.long	0x1f01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF399
	.byte	0x1
	.value	0x17a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x17a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.value	0x17a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	.LASF391
	.byte	0x1
	.value	0x17a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.string	"nn"
	.byte	0x1
	.value	0x17a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x4
	.long	0xb6
	.long	0x1ee6
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x28
	.long	0x1ed6
	.uleb128 0x4
	.long	0xb6
	.long	0x1f01
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x28
	.long	0x1eeb
	.uleb128 0x24
	.long	.LASF401
	.byte	0x1
	.value	0x1a9
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fcf
	.uleb128 0x26
	.long	.LASF396
	.byte	0x1
	.value	0x1a9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x1a9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x1a9
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.long	.LASF388
	.byte	0x1
	.value	0x1a9
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.long	.LASF398
	.byte	0x1
	.value	0x1ab
	.long	0x1fdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF397
	.byte	0x1
	.value	0x1b0
	.long	0x1ffa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF399
	.byte	0x1
	.value	0x1bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x1bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.value	0x1bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF391
	.byte	0x1
	.value	0x1bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.string	"nn"
	.byte	0x1
	.value	0x1bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x4
	.long	0xb6
	.long	0x1fdf
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x28
	.long	0x1fcf
	.uleb128 0x4
	.long	0xb6
	.long	0x1ffa
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x28
	.long	0x1fe4
	.uleb128 0x2b
	.long	.LASF402
	.byte	0x1
	.value	0x1ea
	.long	0x34
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2040
	.uleb128 0x25
	.string	"sym"
	.byte	0x1
	.value	0x1ea
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF403
	.byte	0x1
	.value	0x1ec
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF404
	.byte	0x1
	.value	0x1f8
	.long	0x34
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2080
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x1f8
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x1f8
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF406
	.byte	0x1
	.value	0x211
	.long	0x34
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x20c0
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x211
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x211
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF407
	.byte	0x1
	.value	0x227
	.long	0x34
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2100
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x227
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x227
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF408
	.byte	0x1
	.value	0x24c
	.long	0x34
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2140
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x24c
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF409
	.byte	0x1
	.value	0x24c
	.long	0x9fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF410
	.byte	0x1
	.value	0x264
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2198
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x264
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF411
	.byte	0x1
	.value	0x264
	.long	0x9fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x267
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF412
	.byte	0x1
	.value	0x268
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF413
	.byte	0x1
	.value	0x285
	.long	0x34
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d8
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x285
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF409
	.byte	0x1
	.value	0x285
	.long	0x9fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2b
	.long	.LASF414
	.byte	0x1
	.value	0x29e
	.long	0x34
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2219
	.uleb128 0x25
	.string	"sym"
	.byte	0x1
	.value	0x29e
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF415
	.byte	0x1
	.value	0x2a0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF416
	.byte	0x1
	.value	0x2b5
	.long	0x34
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2259
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x2b5
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x2b5
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF417
	.byte	0x1
	.value	0x2cd
	.long	0x34
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x22d4
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x2cd
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x2cd
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF418
	.byte	0x1
	.value	0x2cf
	.long	0x22f0
	.uleb128 0x9
	.byte	0x3
	.quad	lentab.5541
	.uleb128 0x29
	.long	.LASF419
	.byte	0x1
	.value	0x2e6
	.long	0x22f5
	.uleb128 0x9
	.byte	0x3
	.quad	codtab.5542
	.uleb128 0x29
	.long	.LASF420
	.byte	0x1
	.value	0x2fb
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x22f0
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x10
	.byte	0
	.uleb128 0x28
	.long	0x22d4
	.uleb128 0x28
	.long	0x22d4
	.uleb128 0x2c
	.long	.LASF421
	.byte	0x1
	.value	0x32e
	.long	0x34
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2375
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x32e
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x32e
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF418
	.byte	0x1
	.value	0x330
	.long	0x2375
	.uleb128 0x9
	.byte	0x3
	.quad	lentab.5548
	.uleb128 0x29
	.long	.LASF419
	.byte	0x1
	.value	0x343
	.long	0x237a
	.uleb128 0x9
	.byte	0x3
	.quad	codtab.5549
	.uleb128 0x2a
	.string	"yuv"
	.byte	0x1
	.value	0x356
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	0x22d4
	.uleb128 0x28
	.long	0x22d4
	.uleb128 0x2c
	.long	.LASF422
	.byte	0x1
	.value	0x376
	.long	0x34
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x23fa
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x376
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x376
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF418
	.byte	0x1
	.value	0x378
	.long	0x2410
	.uleb128 0x9
	.byte	0x3
	.quad	lentab.5555
	.uleb128 0x29
	.long	.LASF419
	.byte	0x1
	.value	0x38b
	.long	0x2415
	.uleb128 0x9
	.byte	0x3
	.quad	codtab.5556
	.uleb128 0x29
	.long	.LASF420
	.byte	0x1
	.value	0x39d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2410
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x28
	.long	0x23fa
	.uleb128 0x28
	.long	0x23fa
	.uleb128 0x2c
	.long	.LASF423
	.byte	0x1
	.value	0x3bd
	.long	0x34
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x24a4
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x3bd
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x3bd
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF418
	.byte	0x1
	.value	0x3bf
	.long	0x24c0
	.uleb128 0x9
	.byte	0x3
	.quad	lentab.5562
	.uleb128 0x29
	.long	.LASF419
	.byte	0x1
	.value	0x3df
	.long	0x24c5
	.uleb128 0x9
	.byte	0x3
	.quad	codtab.5563
	.uleb128 0x29
	.long	.LASF420
	.byte	0x1
	.value	0x3fe
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"yuv"
	.byte	0x1
	.value	0x3ff
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x24c0
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x28
	.long	0x24a4
	.uleb128 0x28
	.long	0x24a4
	.uleb128 0x2c
	.long	.LASF424
	.byte	0x1
	.value	0x41f
	.long	0x34
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2545
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x41f
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x41f
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF418
	.byte	0x1
	.value	0x421
	.long	0x2545
	.uleb128 0x9
	.byte	0x3
	.quad	lentab.5570
	.uleb128 0x29
	.long	.LASF419
	.byte	0x1
	.value	0x42c
	.long	0x254a
	.uleb128 0x9
	.byte	0x3
	.quad	codtab.5571
	.uleb128 0x29
	.long	.LASF420
	.byte	0x1
	.value	0x436
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	0x23fa
	.uleb128 0x28
	.long	0x23fa
	.uleb128 0x2c
	.long	.LASF425
	.byte	0x1
	.value	0x456
	.long	0x34
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x25bc
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x456
	.long	0xa18
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x456
	.long	0xb43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF396
	.byte	0x1
	.value	0x458
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.LASF399
	.byte	0x1
	.value	0x458
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF391
	.byte	0x1
	.value	0x458
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF426
	.byte	0x1
	.value	0x484
	.long	0x34
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x26a4
	.uleb128 0x25
	.string	"se"
	.byte	0x1
	.value	0x484
	.long	0xa18
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"vlc"
	.byte	0x1
	.value	0x484
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x484
	.long	0xb43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF427
	.byte	0x1
	.value	0x486
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF428
	.byte	0x1
	.value	0x487
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF396
	.byte	0x1
	.value	0x489
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF399
	.byte	0x1
	.value	0x48b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF391
	.byte	0x1
	.value	0x48c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF429
	.byte	0x1
	.value	0x48e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF430
	.byte	0x1
	.value	0x48f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF431
	.byte	0x1
	.value	0x491
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.LASF432
	.byte	0x1
	.value	0x493
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF433
	.byte	0x1
	.value	0x494
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF434
	.byte	0x1
	.value	0x4e8
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x26d2
	.uleb128 0x26
	.long	.LASF411
	.byte	0x1
	.value	0x4e8
	.long	0x9fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x26de
	.uleb128 0x6
	.byte	0x8
	.long	0x1750
	.uleb128 0x27
	.long	.LASF435
	.byte	0x5
	.value	0x4b9
	.long	0x26f0
	.uleb128 0x6
	.byte	0x8
	.long	0x1975
	.uleb128 0x27
	.long	.LASF394
	.byte	0x1
	.value	0x122
	.long	0x2702
	.uleb128 0x28
	.long	0x1c9c
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
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
	.uleb128 0x38
	.uleb128 0x6
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
	.uleb128 0x38
	.uleb128 0x6
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x5
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
.LASF363:
	.string	"bitrate_I"
.LASF329:
	.string	"bitdepth_luma_qp_scale"
.LASF332:
	.string	"dc_pred_value"
.LASF396:
	.string	"level"
.LASF190:
	.string	"nb_references"
.LASF330:
	.string	"bitdepth_chroma_qp_scale"
.LASF31:
	.string	"SE_LUM_DC_INTER"
.LASF293:
	.string	"no_output_of_prior_pics_flag"
.LASF258:
	.string	"num_ref_idx_l1_active"
.LASF275:
	.string	"pic_order_cnt_lsb"
.LASF417:
	.string	"writeSyntaxElement_NumCoeffTrailingOnes"
.LASF318:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF321:
	.string	"DeblockCall"
.LASF38:
	.string	"SE_EOS"
.LASF29:
	.string	"SE_CHR_AC_INTRA"
.LASF199:
	.string	"width_cr"
.LASF288:
	.string	"PicSizeInMbs"
.LASF415:
	.string	"info_len"
.LASF235:
	.string	"MB_SyntaxElements"
.LASF230:
	.string	"cofAC"
.LASF338:
	.string	"lossless_qpprime_flag"
.LASF428:
	.string	"iLength"
.LASF245:
	.string	"imgtr_next_P_fld"
.LASF18:
	.string	"int64"
.LASF392:
	.string	"cbp_linfo_intra"
.LASF183:
	.string	"slices"
.LASF87:
	.string	"long_term_pic_num"
.LASF211:
	.string	"ipredmode8x8"
.LASF215:
	.string	"mb_y"
.LASF295:
	.string	"dec_ref_pic_marking_buffer"
.LASF354:
	.string	"b8_mode_0_use"
.LASF89:
	.string	"max_long_term_frame_idx_plus1"
.LASF339:
	.string	"mb_cr_size_x"
.LASF391:
	.string	"sign"
.LASF409:
	.string	"this_streamBuffer"
.LASF260:
	.string	"top_field"
.LASF57:
	.string	"state"
.LASF71:
	.string	"bcbp_contexts"
.LASF435:
	.string	"stats"
.LASF91:
	.string	"syntaxelement"
.LASF92:
	.string	"type"
.LASF250:
	.string	"fw_mb_mode"
.LASF289:
	.string	"FrameSizeInMbs"
.LASF390:
	.string	"se_linfo"
.LASF139:
	.string	"LFDisableIdc"
.LASF315:
	.string	"IFLAG"
.LASF152:
	.string	"bits_to_go_skip"
.LASF252:
	.string	"pred_mv"
.LASF335:
	.string	"num_blk8x8_uv"
.LASF169:
	.string	"rmpni_buffer"
.LASF30:
	.string	"SE_CBP_INTER"
.LASF120:
	.string	"mb_field"
.LASF431:
	.string	"numPrefix"
.LASF407:
	.string	"writeSyntaxElement_Intra4x4PredictionMode"
.LASF88:
	.string	"long_term_frame_idx"
.LASF210:
	.string	"ipredmode"
.LASF112:
	.string	"b8mode"
.LASF371:
	.string	"tmp_bit_use_cbp"
.LASF178:
	.string	"slice_too_big"
.LASF36:
	.string	"SE_DELTA_QUANT_INTRA"
.LASF228:
	.string	"mprr_3"
.LASF145:
	.string	"bits_to_go"
.LASF84:
	.string	"DecRefPicMarking_s"
.LASF90:
	.string	"DecRefPicMarking_t"
.LASF427:
	.string	"iCodeword"
.LASF319:
	.string	"bot_MB"
.LASF377:
	.string	"em_prev_bits"
.LASF317:
	.string	"BasicUnit"
.LASF195:
	.string	"num_ref_frames"
.LASF53:
	.string	"EcodestrmS"
.LASF237:
	.string	"intra_block"
.LASF6:
	.string	"long int"
.LASF343:
	.string	"auto_crop_right"
.LASF229:
	.string	"mprr_c"
.LASF129:
	.string	"all_blk_8x8"
.LASF291:
	.string	"nal_reference_idc"
.LASF281:
	.string	"framepoc"
.LASF298:
	.string	"NumberofTextureBits"
.LASF224:
	.string	"opix_c_x"
.LASF394:
	.string	"NCBP"
.LASF225:
	.string	"opix_c_y"
.LASF21:
	.string	"SE_MBTYPE"
.LASF429:
	.string	"shift"
.LASF320:
	.string	"write_macroblock_frame"
.LASF149:
	.string	"stored_byte_buf"
.LASF285:
	.string	"PicHeightInMapUnits"
.LASF306:
	.string	"NumberofGOP"
.LASF327:
	.string	"bitdepth_luma"
.LASF28:
	.string	"SE_LUM_AC_INTRA"
.LASF43:
	.string	"Ebuffer"
.LASF42:
	.string	"Erange"
.LASF422:
	.string	"writeSyntaxElement_TotalZeros"
.LASF40:
	.string	"SE_MAX_ELEMENTS"
.LASF4:
	.string	"signed char"
.LASF197:
	.string	"framerate"
.LASF164:
	.string	"max_part_nr"
.LASF56:
	.string	"EncodingEnvironmentPtr"
.LASF270:
	.string	"delta_pic_order_always_zero_flag"
.LASF416:
	.string	"writeSyntaxElement_VLC"
.LASF119:
	.string	"IntraChromaPredModeFlag"
.LASF96:
	.string	"context"
.LASF173:
	.string	"long_term_pic_idx_l0"
.LASF177:
	.string	"long_term_pic_idx_l1"
.LASF170:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF174:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF308:
	.string	"NumberofPPicture"
.LASF303:
	.string	"NumberofMBHeaderBits"
.LASF410:
	.string	"writeUVLC2buffer"
.LASF231:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF110:
	.string	"intra_pred_modes8x8"
.LASF402:
	.string	"symbol2uvlc"
.LASF322:
	.string	"last_pic_bottom_field"
.LASF254:
	.string	"bipred_mv1"
.LASF255:
	.string	"bipred_mv2"
.LASF73:
	.string	"last_contexts"
.LASF118:
	.string	"c_ipred_mode"
.LASF334:
	.string	"max_imgpel_value_uv"
.LASF171:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF175:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF172:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF176:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF146:
	.string	"byte_buf"
.LASF132:
	.string	"bi_pred_me"
.LASF103:
	.string	"delta_qp"
.LASF382:
	.string	"value"
.LASF196:
	.string	"max_num_references"
.LASF370:
	.string	"bit_use_header"
.LASF8:
	.string	"char"
.LASF209:
	.string	"block_c_x"
.LASF408:
	.string	"writeSyntaxElement2Buf_UVLC"
.LASF66:
	.string	"transform_size_contexts"
.LASF236:
	.string	"quad"
.LASF205:
	.string	"is_intra_block"
.LASF163:
	.string	"start_mb_nr"
.LASF106:
	.string	"mb_available_up"
.LASF277:
	.string	"delta_pic_order_cnt"
.LASF438:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF297:
	.string	"NumberofHeaderBits"
.LASF95:
	.string	"bitpattern"
.LASF65:
	.string	"mb_aff_contexts"
.LASF130:
	.string	"luma_transform_size_8x8_flag"
.LASF434:
	.string	"writeVlcByteAlign"
.LASF217:
	.string	"block_y"
.LASF401:
	.string	"levrun_linfo_intra"
.LASF232:
	.string	"currentPicture"
.LASF61:
	.string	"b8_type_contexts"
.LASF248:
	.string	"p_interval"
.LASF188:
	.string	"Picture"
.LASF246:
	.string	"imgtr_last_P_fld"
.LASF135:
	.string	"prev_delta_qp"
.LASF206:
	.string	"is_v_block"
.LASF424:
	.string	"writeSyntaxElement_Run"
.LASF208:
	.string	"mb_y_intra"
.LASF60:
	.string	"mb_type_contexts"
.LASF153:
	.string	"streamBuffer"
.LASF51:
	.string	"Ebits_to_goS"
.LASF309:
	.string	"MADofMB"
.LASF406:
	.string	"writeSyntaxElement_fixed"
.LASF257:
	.string	"num_ref_idx_l0_active"
.LASF296:
	.string	"model_number"
.LASF100:
	.string	"macroblock"
.LASF279:
	.string	"toppoc"
.LASF268:
	.string	"MbaffFrameFlag"
.LASF41:
	.string	"Elow"
.LASF222:
	.string	"opix_x"
.LASF223:
	.string	"opix_y"
.LASF162:
	.string	"picture_type"
.LASF341:
	.string	"chroma_qp_offset"
.LASF287:
	.string	"PicHeightInMbs"
.LASF55:
	.string	"EncodingEnvironment"
.LASF159:
	.string	"writeSyntaxElement"
.LASF432:
	.string	"sufmask"
.LASF39:
	.string	"SE_TRANSFORM_SIZE_FLAG"
.LASF369:
	.string	"bit_use_mb_type"
.LASF0:
	.string	"long unsigned int"
.LASF69:
	.string	"cipr_contexts"
.LASF54:
	.string	"Ecodestrm_lenS"
.LASF165:
	.string	"num_mb"
.LASF280:
	.string	"bottompoc"
.LASF26:
	.string	"SE_LUM_DC_INTRA"
.LASF373:
	.string	"bit_use_coeffC"
.LASF261:
	.string	"mvscale"
.LASF242:
	.string	"pstruct_next_P"
.LASF368:
	.string	"bit_use_stuffingBits"
.LASF116:
	.string	"lf_alpha_c0_offset"
.LASF344:
	.string	"auto_crop_bottom"
.LASF379:
	.string	"bit_ctr_parametersets_n"
.LASF310:
	.string	"BasicUnitQP"
.LASF302:
	.string	"NumberofMBTextureBits"
.LASF114:
	.string	"cbp_bits"
.LASF380:
	.string	"StatParameters"
.LASF220:
	.string	"pix_c_x"
.LASF221:
	.string	"pix_c_y"
.LASF249:
	.string	"b_frame_to_code"
.LASF421:
	.string	"writeSyntaxElement_NumCoeffTrailingOnesChromaDC"
.LASF184:
	.string	"bits_per_picture"
.LASF207:
	.string	"mb_y_upd"
.LASF79:
	.string	"RMPNI"
.LASF140:
	.string	"LFAlphaC0Offset"
.LASF117:
	.string	"lf_beta_offset"
.LASF86:
	.string	"difference_of_pic_nums_minus1"
.LASF425:
	.string	"writeSyntaxElement_Level_VLC1"
.LASF359:
	.string	"bit_use_mode_Bframe"
.LASF226:
	.string	"mprr"
.LASF67:
	.string	"MotionInfoContexts"
.LASF9:
	.string	"long long int"
.LASF247:
	.string	"b_interval"
.LASF44:
	.string	"Ebits_to_go"
.LASF239:
	.string	"fld_flag"
.LASF241:
	.string	"direct_intraP_ref"
.LASF426:
	.string	"writeSyntaxElement_Level_VLCN"
.LASF198:
	.string	"width"
.LASF108:
	.string	"mb_type"
.LASF148:
	.string	"stored_bits_to_go"
.LASF340:
	.string	"mb_cr_size_y"
.LASF227:
	.string	"mprr_2"
.LASF374:
	.string	"bit_use_delta_quant"
.LASF102:
	.string	"slice_nr"
.LASF32:
	.string	"SE_CHR_DC_INTER"
.LASF187:
	.string	"distortion_v"
.LASF185:
	.string	"distortion_y"
.LASF151:
	.string	"byte_pos_skip"
.LASF141:
	.string	"LFBetaOffset"
.LASF12:
	.string	"double"
.LASF412:
	.string	"mask"
.LASF342:
	.string	"residue_transform_flag"
.LASF25:
	.string	"SE_CBP_INTRA"
.LASF244:
	.string	"imgtr_last_P_frm"
.LASF386:
	.string	"se_v"
.LASF37:
	.string	"SE_BFRAME"
.LASF74:
	.string	"one_contexts"
.LASF376:
	.string	"em_prev_bits_fld"
.LASF104:
	.string	"qpsp"
.LASF11:
	.string	"float"
.LASF58:
	.string	"count"
.LASF136:
	.string	"prev_cbp"
.LASF59:
	.string	"BiContextType"
.LASF397:
	.string	"NTAB"
.LASF240:
	.string	"rd_pass"
.LASF3:
	.string	"unsigned int"
.LASF353:
	.string	"bit_ctr_emulationprevention"
.LASF75:
	.string	"abs_contexts"
.LASF358:
	.string	"mode_use_Bframe"
.LASF45:
	.string	"Ebits_to_follow"
.LASF154:
	.string	"write_flag"
.LASF192:
	.string	"total_number_mb"
.LASF47:
	.string	"Ecodestrm_len"
.LASF168:
	.string	"tex_ctx"
.LASF419:
	.string	"codtab"
.LASF385:
	.string	"ue_v"
.LASF307:
	.string	"TotalQpforPPicture"
.LASF107:
	.string	"mb_available_left"
.LASF83:
	.string	"RMPNIbuffer_s"
.LASF82:
	.string	"RMPNIbuffer_t"
.LASF23:
	.string	"SE_INTRAPREDMODE"
.LASF325:
	.string	"slice_group_change_cycle"
.LASF78:
	.string	"TextureInfoContexts"
.LASF348:
	.string	"bitr"
.LASF264:
	.string	"layer"
.LASF113:
	.string	"b8pdir"
.LASF181:
	.string	"no_slices"
.LASF272:
	.string	"offset_for_top_to_bottom_field"
.LASF34:
	.string	"SE_CHR_AC_INTER"
.LASF433:
	.string	"suffix"
.LASF423:
	.string	"writeSyntaxElement_TotalZerosChromaDC"
.LASF243:
	.string	"imgtr_next_P_frm"
.LASF312:
	.string	"FieldControl"
.LASF304:
	.string	"NumberofCodedBFrame"
.LASF263:
	.string	"i16offset"
.LASF355:
	.string	"mode_use_transform_8x8"
.LASF191:
	.string	"current_mb_nr"
.LASF186:
	.string	"distortion_u"
.LASF218:
	.string	"pix_x"
.LASF219:
	.string	"pix_y"
.LASF436:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF345:
	.string	"ImageParameters"
.LASF393:
	.string	"cbp_linfo_inter"
.LASF158:
	.string	"ee_cabac"
.LASF214:
	.string	"mb_x"
.LASF15:
	.string	"FALSE"
.LASF137:
	.string	"predict_qp"
.LASF420:
	.string	"vlcnum"
.LASF259:
	.string	"field_mode"
.LASF216:
	.string	"block_x"
.LASF323:
	.string	"last_has_mmco_5"
.LASF269:
	.string	"pic_order_cnt_type"
.LASF77:
	.string	"fld_last_contexts"
.LASF271:
	.string	"offset_for_non_ref_pic"
.LASF142:
	.string	"skip_flag"
.LASF283:
	.string	"frame_num"
.LASF72:
	.string	"map_contexts"
.LASF85:
	.string	"memory_management_control_operation"
.LASF362:
	.string	"bit_ctr_B"
.LASF155:
	.string	"Bitstream"
.LASF437:
	.string	"vlc.c"
.LASF360:
	.string	"bit_ctr_I"
.LASF388:
	.string	"info"
.LASF266:
	.string	"NoResidueDirect"
.LASF430:
	.string	"escape"
.LASF361:
	.string	"bit_ctr_P"
.LASF316:
	.string	"NumberofCodedMacroBlocks"
.LASF161:
	.string	"picture_id"
.LASF238:
	.string	"fld_type"
.LASF305:
	.string	"NumberofCodedPFrame"
.LASF351:
	.string	"bit_ctr_n"
.LASF389:
	.string	"ue_linfo"
.LASF10:
	.string	"long long unsigned int"
.LASF418:
	.string	"lentab"
.LASF109:
	.string	"intra_pred_modes"
.LASF201:
	.string	"height_cr"
.LASF253:
	.string	"all_mv"
.LASF414:
	.string	"symbol2vlc"
.LASF200:
	.string	"height"
.LASF194:
	.string	"structure"
.LASF179:
	.string	"field_ctx"
.LASF160:
	.string	"DataPartition"
.LASF35:
	.string	"SE_DELTA_QUANT_INTER"
.LASF234:
	.string	"mb_data"
.LASF300:
	.string	"NumberofBasicUnitTextureBits"
.LASF273:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF180:
	.string	"Slice"
.LASF156:
	.string	"datapartition"
.LASF52:
	.string	"Ebits_to_followS"
.LASF202:
	.string	"height_cr_frame"
.LASF314:
	.string	"Frame_Total_Number_MB"
.LASF93:
	.string	"value1"
.LASF94:
	.string	"value2"
.LASF378:
	.string	"bit_ctr_parametersets"
.LASF375:
	.string	"em_prev_bits_frm"
.LASF157:
	.string	"bitstream"
.LASF278:
	.string	"field_picture"
.LASF48:
	.string	"ElowS"
.LASF350:
	.string	"bit_ctr"
.LASF346:
	.string	"quant0"
.LASF347:
	.string	"quant1"
.LASF17:
	.string	"Boolean"
.LASF267:
	.string	"redundant_pic_cnt"
.LASF331:
	.string	"bitdepth_lambda_scale"
.LASF265:
	.string	"old_layer"
.LASF189:
	.string	"number"
.LASF33:
	.string	"SE_LUM_AC_INTER"
.LASF333:
	.string	"max_imgpel_value"
.LASF284:
	.string	"PicWidthInMbs"
.LASF387:
	.string	"dummy"
.LASF326:
	.string	"pic_unit_size_on_disk"
.LASF336:
	.string	"num_cdc_coeff"
.LASF19:
	.string	"SE_HEADER"
.LASF143:
	.string	"Macroblock"
.LASF63:
	.string	"ref_no_contexts"
.LASF404:
	.string	"writeSyntaxElement_UVLC"
.LASF274:
	.string	"offset_for_ref_frame"
.LASF356:
	.string	"mode_use_transform_4x4"
.LASF292:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF147:
	.string	"stored_byte_pos"
.LASF411:
	.string	"currStream"
.LASF14:
	.string	"byte"
.LASF81:
	.string	"Next"
.LASF80:
	.string	"Data"
.LASF311:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF46:
	.string	"Ecodestrm"
.LASF337:
	.string	"yuv_format"
.LASF251:
	.string	"bw_mb_mode"
.LASF372:
	.string	"bit_use_coeffY"
.LASF16:
	.string	"TRUE"
.LASF50:
	.string	"EbufferS"
.LASF403:
	.string	"suffix_len"
.LASF282:
	.string	"ThisPOC"
.LASF24:
	.string	"SE_MVD"
.LASF301:
	.string	"TotalMADBasicUnit"
.LASF134:
	.string	"prev_qp"
.LASF62:
	.string	"mv_res_contexts"
.LASF413:
	.string	"writeSyntaxElement2Buf_Fixed"
.LASF133:
	.string	"actj"
.LASF276:
	.string	"delta_pic_order_cnt_bottom"
.LASF262:
	.string	"buf_cycle"
.LASF212:
	.string	"cod_counter"
.LASF22:
	.string	"SE_REFFRAME"
.LASF166:
	.string	"partArr"
.LASF144:
	.string	"byte_pos"
.LASF384:
	.string	"symbol"
.LASF68:
	.string	"ipr_contexts"
.LASF121:
	.string	"mbAddrA"
.LASF122:
	.string	"mbAddrB"
.LASF123:
	.string	"mbAddrC"
.LASF124:
	.string	"mbAddrD"
.LASF213:
	.string	"nz_coeff"
.LASF395:
	.string	"levrun_linfo_c2x2"
.LASF64:
	.string	"delta_qp_contexts"
.LASF299:
	.string	"NumberofBasicUnitHeaderBits"
.LASF99:
	.string	"SyntaxElement"
.LASF366:
	.string	"mode_use"
.LASF400:
	.string	"levrun_linfo_inter"
.LASF324:
	.string	"pre_frame_num"
.LASF290:
	.string	"pic_order_present_flag"
.LASF115:
	.string	"lf_disable"
.LASF182:
	.string	"idr_flag"
.LASF27:
	.string	"SE_CHR_DC_INTRA"
.LASF2:
	.string	"short unsigned int"
.LASF313:
	.string	"FieldFrame"
.LASF138:
	.string	"predict_error"
.LASF193:
	.string	"current_slice_nr"
.LASF405:
	.string	"this_dataPart"
.LASF256:
	.string	"direct_spatial_mv_pred_flag"
.LASF349:
	.string	"bitrate"
.LASF328:
	.string	"bitdepth_chroma"
.LASF97:
	.string	"mapping"
.LASF399:
	.string	"levabs"
.LASF381:
	.string	"tracestring"
.LASF398:
	.string	"LEVRUN"
.LASF20:
	.string	"SE_PTYPE"
.LASF13:
	.string	"int64_t"
.LASF98:
	.string	"writing"
.LASF365:
	.string	"bitrate_B"
.LASF76:
	.string	"fld_map_contexts"
.LASF357:
	.string	"intra_chroma_mode"
.LASF150:
	.string	"byte_buf_skip"
.LASF294:
	.string	"long_term_reference_flag"
.LASF70:
	.string	"cbp_contexts"
.LASF167:
	.string	"mot_ctx"
.LASF131:
	.string	"NoMbPartLessThan8x8Flag"
.LASF203:
	.string	"subblock_x"
.LASF204:
	.string	"subblock_y"
.LASF383:
	.string	"part"
.LASF101:
	.string	"currSEnr"
.LASF286:
	.string	"FrameHeightInMbs"
.LASF233:
	.string	"currentSlice"
.LASF105:
	.string	"bitcounter"
.LASF364:
	.string	"bitrate_P"
.LASF49:
	.string	"ErangeS"
.LASF125:
	.string	"mbAvailA"
.LASF126:
	.string	"mbAvailB"
.LASF127:
	.string	"mbAvailC"
.LASF128:
	.string	"mbAvailD"
.LASF367:
	.string	"bit_use_mode"
.LASF111:
	.string	"cbp_blk"
.LASF352:
	.string	"bit_slice"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
