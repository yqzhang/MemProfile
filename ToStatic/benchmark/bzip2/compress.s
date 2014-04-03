	.file	"compress.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 compress.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	BZ2_bsInitWrite
	.type	BZ2_bsInitWrite, @function
BZ2_bsInitWrite:
.LFB2:
	.file 1 "compress.c"
	.loc 1 82 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 83 0
	movq	-8(%rbp), %rax	# s, tmp59
	movl	$0, 644(%rax)	#, s_1(D)->bsLive
	.loc 1 84 0
	movq	-8(%rbp), %rax	# s, tmp60
	movl	$0, 640(%rax)	#, s_1(D)->bsBuff
	.loc 1 85 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	BZ2_bsInitWrite, .-BZ2_bsInitWrite
	.type	bsFinishWrite, @function
bsFinishWrite:
.LFB3:
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 92 0
	jmp	.L3	#
.L4:
	.loc 1 93 0
	movq	-8(%rbp), %rax	# s, tmp73
	movq	80(%rax), %rdx	# s_1(D)->zbits, D.5416
	movq	-8(%rbp), %rax	# s, tmp74
	movl	116(%rax), %eax	# s_1(D)->numZ, D.5415
	cltq
	addq	%rax, %rdx	# D.5417, D.5416
	movq	-8(%rbp), %rax	# s, tmp75
	movl	640(%rax), %eax	# s_1(D)->bsBuff, D.5418
	shrl	$24, %eax	#, D.5418
	movb	%al, (%rdx)	# D.5419, *_6
	.loc 1 94 0
	movq	-8(%rbp), %rax	# s, tmp76
	movl	116(%rax), %eax	# s_1(D)->numZ, D.5415
	leal	1(%rax), %edx	#, D.5415
	movq	-8(%rbp), %rax	# s, tmp77
	movl	%edx, 116(%rax)	# D.5415, s_1(D)->numZ
	.loc 1 95 0
	movq	-8(%rbp), %rax	# s, tmp78
	movl	640(%rax), %eax	# s_1(D)->bsBuff, D.5418
	sall	$8, %eax	#, D.5418
	movl	%eax, %edx	# D.5418, D.5418
	movq	-8(%rbp), %rax	# s, tmp79
	movl	%edx, 640(%rax)	# D.5418, s_1(D)->bsBuff
	.loc 1 96 0
	movq	-8(%rbp), %rax	# s, tmp80
	movl	644(%rax), %eax	# s_1(D)->bsLive, D.5415
	leal	-8(%rax), %edx	#, D.5415
	movq	-8(%rbp), %rax	# s, tmp81
	movl	%edx, 644(%rax)	# D.5415, s_1(D)->bsLive
.L3:
	.loc 1 92 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp82
	movl	644(%rax), %eax	# s_1(D)->bsLive, D.5415
	testl	%eax, %eax	# D.5415
	jg	.L4	#,
	.loc 1 98 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	bsFinishWrite, .-bsFinishWrite
	.type	bsW, @function
bsW:
.LFB4:
	.loc 1 118 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	movl	%esi, -12(%rbp)	# n, n
	movl	%edx, -16(%rbp)	# v, v
	.loc 1 119 0
	jmp	.L6	#
.L7:
	.loc 1 119 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp81
	movq	80(%rax), %rdx	# s_1(D)->zbits, D.5421
	movq	-8(%rbp), %rax	# s, tmp82
	movl	116(%rax), %eax	# s_1(D)->numZ, D.5420
	cltq
	addq	%rax, %rdx	# D.5422, D.5421
	movq	-8(%rbp), %rax	# s, tmp83
	movl	640(%rax), %eax	# s_1(D)->bsBuff, D.5423
	shrl	$24, %eax	#, D.5423
	movb	%al, (%rdx)	# D.5424, *_6
	movq	-8(%rbp), %rax	# s, tmp84
	movl	116(%rax), %eax	# s_1(D)->numZ, D.5420
	leal	1(%rax), %edx	#, D.5420
	movq	-8(%rbp), %rax	# s, tmp85
	movl	%edx, 116(%rax)	# D.5420, s_1(D)->numZ
	movq	-8(%rbp), %rax	# s, tmp86
	movl	640(%rax), %eax	# s_1(D)->bsBuff, D.5423
	sall	$8, %eax	#, D.5423
	movl	%eax, %edx	# D.5423, D.5423
	movq	-8(%rbp), %rax	# s, tmp87
	movl	%edx, 640(%rax)	# D.5423, s_1(D)->bsBuff
	movq	-8(%rbp), %rax	# s, tmp88
	movl	644(%rax), %eax	# s_1(D)->bsLive, D.5420
	leal	-8(%rax), %edx	#, D.5420
	movq	-8(%rbp), %rax	# s, tmp89
	movl	%edx, 644(%rax)	# D.5420, s_1(D)->bsLive
.L6:
	.loc 1 119 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp90
	movl	644(%rax), %eax	# s_1(D)->bsLive, D.5420
	cmpl	$7, %eax	#, D.5420
	jg	.L7	#,
	.loc 1 120 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp91
	movl	640(%rax), %edx	# s_1(D)->bsBuff, D.5423
	movq	-8(%rbp), %rax	# s, tmp92
	movl	644(%rax), %eax	# s_1(D)->bsLive, D.5420
	movl	$32, %ecx	#, tmp93
	subl	%eax, %ecx	# D.5420, D.5420
	movl	%ecx, %eax	# D.5420, D.5420
	subl	-12(%rbp), %eax	# n, D.5420
	movl	-16(%rbp), %esi	# v, tmp94
	movl	%eax, %ecx	# D.5420, tmp102
	sall	%cl, %esi	# tmp102, D.5423
	movl	%esi, %eax	# D.5423, D.5423
	orl	%eax, %edx	# D.5423, D.5423
	movq	-8(%rbp), %rax	# s, tmp95
	movl	%edx, 640(%rax)	# D.5423, s_1(D)->bsBuff
	.loc 1 121 0
	movq	-8(%rbp), %rax	# s, tmp96
	movl	644(%rax), %edx	# s_1(D)->bsLive, D.5420
	movl	-12(%rbp), %eax	# n, tmp97
	addl	%eax, %edx	# tmp97, D.5420
	movq	-8(%rbp), %rax	# s, tmp98
	movl	%edx, 644(%rax)	# D.5420, s_1(D)->bsLive
	.loc 1 122 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	bsW, .-bsW
	.type	bsPutUInt32, @function
bsPutUInt32:
.LFB5:
	.loc 1 128 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movl	%esi, -12(%rbp)	# u, u
	.loc 1 129 0
	movl	-12(%rbp), %eax	# u, tmp65
	shrl	$24, %eax	#, D.5425
	movl	%eax, %edx	# D.5425, D.5425
	movq	-8(%rbp), %rax	# s, tmp66
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	bsW	#
	.loc 1 130 0
	movl	-12(%rbp), %eax	# u, tmp67
	shrl	$16, %eax	#, D.5425
	movzbl	%al, %edx	# D.5425, D.5425
	movq	-8(%rbp), %rax	# s, tmp68
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	bsW	#
	.loc 1 131 0
	movl	-12(%rbp), %eax	# u, tmp69
	shrl	$8, %eax	#, D.5425
	movzbl	%al, %edx	# D.5425, D.5425
	movq	-8(%rbp), %rax	# s, tmp70
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	bsW	#
	.loc 1 132 0
	movl	-12(%rbp), %eax	# u, tmp71
	movzbl	%al, %edx	# tmp71, D.5425
	movq	-8(%rbp), %rax	# s, tmp72
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	bsW	#
	.loc 1 133 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	bsPutUInt32, .-bsPutUInt32
	.type	bsPutUChar, @function
bsPutUChar:
.LFB6:
	.loc 1 139 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movl	%esi, %eax	# c, tmp60
	movb	%al, -12(%rbp)	# tmp60, c
	.loc 1 140 0
	movzbl	-12(%rbp), %edx	# c, D.5426
	movq	-8(%rbp), %rax	# s, tmp61
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	bsW	#
	.loc 1 141 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	bsPutUChar, .-bsPutUChar
	.type	makeMaps_e, @function
makeMaps_e:
.LFB7:
	.loc 1 151 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 153 0
	movq	-24(%rbp), %rax	# s, tmp64
	movl	$0, 124(%rax)	#, s_2(D)->nInUse
	.loc 1 154 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L11	#
.L13:
	.loc 1 155 0
	movq	-24(%rbp), %rdx	# s, tmp65
	movl	-4(%rbp), %eax	# i, tmp67
	cltq
	movzbl	128(%rdx,%rax), %eax	# s_2(D)->inUse, D.5427
	testb	%al, %al	# D.5427
	je	.L12	#,
	.loc 1 156 0
	movq	-24(%rbp), %rax	# s, tmp68
	movl	124(%rax), %eax	# s_2(D)->nInUse, D.5428
	movl	%eax, %ecx	# D.5428, D.5427
	movq	-24(%rbp), %rdx	# s, tmp69
	movl	-4(%rbp), %eax	# i, tmp71
	cltq
	movb	%cl, 384(%rdx,%rax)	# D.5427, s_2(D)->unseqToSeq
	.loc 1 157 0
	movq	-24(%rbp), %rax	# s, tmp72
	movl	124(%rax), %eax	# s_2(D)->nInUse, D.5428
	leal	1(%rax), %edx	#, D.5428
	movq	-24(%rbp), %rax	# s, tmp73
	movl	%edx, 124(%rax)	# D.5428, s_2(D)->nInUse
.L12:
	.loc 1 154 0
	addl	$1, -4(%rbp)	#, i
.L11:
	.loc 1 154 0 is_stmt 0 discriminator 1
	cmpl	$255, -4(%rbp)	#, i
	jle	.L13	#,
	.loc 1 159 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	makeMaps_e, .-makeMaps_e
	.type	generateMTFValues, @function
generateMTFValues:
.LFB8:
	.loc 1 165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$336, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -360(%rbp)	# s, s
	.loc 1 165 0
	movq	%fs:40, %rax	#, tmp197
	movq	%rax, -40(%rbp)	# tmp197, D.5439
	xorl	%eax, %eax	# tmp197
	.loc 1 194 0
	movq	-360(%rbp), %rax	# s, tmp120
	movq	56(%rax), %rax	# s_20(D)->ptr, tmp121
	movq	%rax, -328(%rbp)	# tmp121, ptr
	.loc 1 195 0
	movq	-360(%rbp), %rax	# s, tmp122
	movq	64(%rax), %rax	# s_20(D)->block, tmp123
	movq	%rax, -320(%rbp)	# tmp123, block
	.loc 1 196 0
	movq	-360(%rbp), %rax	# s, tmp124
	movq	72(%rax), %rax	# s_20(D)->mtfv, tmp125
	movq	%rax, -312(%rbp)	# tmp125, mtfv
	.loc 1 198 0
	movq	-360(%rbp), %rax	# s, tmp126
	movq	%rax, %rdi	# tmp126,
	call	makeMaps_e	#
	.loc 1 199 0
	movq	-360(%rbp), %rax	# s, tmp127
	movl	124(%rax), %eax	# s_20(D)->nInUse, D.5429
	addl	$1, %eax	#, tmp128
	movl	%eax, -332(%rbp)	# tmp128, EOB
	.loc 1 201 0
	movl	$0, -348(%rbp)	#, i
	jmp	.L15	#
.L16:
	.loc 1 201 0 is_stmt 0 discriminator 2
	movq	-360(%rbp), %rax	# s, tmp129
	movl	-348(%rbp), %edx	# i, tmp131
	movslq	%edx, %rdx	# tmp131, tmp130
	addq	$168, %rdx	#, tmp132
	movl	$0, (%rax,%rdx,4)	#, s_20(D)->mtfFreq
	addl	$1, -348(%rbp)	#, i
.L15:
	.loc 1 201 0 discriminator 1
	movl	-348(%rbp), %eax	# i, tmp133
	cmpl	-332(%rbp), %eax	# EOB, tmp133
	jle	.L16	#,
	.loc 1 203 0 is_stmt 1
	movl	$0, -336(%rbp)	#, wr
	.loc 1 204 0
	movl	$0, -340(%rbp)	#, zPend
	.loc 1 205 0
	movl	$0, -348(%rbp)	#, i
	jmp	.L17	#
.L18:
	.loc 1 205 0 is_stmt 0 discriminator 2
	movl	-348(%rbp), %eax	# i, tmp134
	movl	%eax, %edx	# tmp134, D.5430
	movl	-348(%rbp), %eax	# i, tmp136
	cltq
	movb	%dl, -304(%rbp,%rax)	# D.5430, yy
	addl	$1, -348(%rbp)	#, i
.L17:
	.loc 1 205 0 discriminator 1
	movq	-360(%rbp), %rax	# s, tmp137
	movl	124(%rax), %eax	# s_20(D)->nInUse, D.5429
	cmpl	-348(%rbp), %eax	# i, D.5429
	jg	.L18	#,
	.loc 1 207 0 is_stmt 1
	movl	$0, -348(%rbp)	#, i
	jmp	.L19	#
.L31:
.LBB2:
	.loc 1 210 0
	movl	-348(%rbp), %eax	# i, tmp138
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5431
	movq	-328(%rbp), %rax	# ptr, tmp139
	addq	%rdx, %rax	# D.5431, D.5432
	movl	(%rax), %eax	# *_38, D.5433
	subl	$1, %eax	#, D.5433
	movl	%eax, -344(%rbp)	# D.5433, j
	cmpl	$0, -344(%rbp)	#, j
	jns	.L20	#,
	.loc 1 210 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# s, tmp140
	movl	108(%rax), %eax	# s_20(D)->nblock, D.5429
	addl	%eax, -344(%rbp)	# D.5429, j
.L20:
	.loc 1 211 0 is_stmt 1
	movl	-344(%rbp), %eax	# j, tmp141
	movslq	%eax, %rdx	# tmp141, D.5434
	movq	-320(%rbp), %rax	# block, tmp142
	addq	%rdx, %rax	# D.5434, D.5435
	movzbl	(%rax), %eax	# *_45, D.5430
	movzbl	%al, %eax	# D.5430, D.5429
	movq	-360(%rbp), %rdx	# s, tmp143
	cltq
	movzbl	384(%rdx,%rax), %eax	# s_20(D)->unseqToSeq, tmp145
	movb	%al, -349(%rbp)	# tmp145, ll_i
	.loc 1 214 0
	movzbl	-304(%rbp), %eax	# yy, D.5430
	cmpb	-349(%rbp), %al	# ll_i, D.5430
	jne	.L21	#,
	.loc 1 215 0
	addl	$1, -340(%rbp)	#, zPend
	jmp	.L22	#
.L21:
	.loc 1 218 0
	cmpl	$0, -340(%rbp)	#, zPend
	jle	.L23	#,
	.loc 1 219 0
	subl	$1, -340(%rbp)	#, zPend
.L28:
	.loc 1 221 0
	movl	-340(%rbp), %eax	# zPend, tmp146
	andl	$1, %eax	#, D.5429
	testl	%eax, %eax	# D.5429
	je	.L24	#,
	.loc 1 222 0
	movl	-336(%rbp), %eax	# wr, tmp147
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5431
	movq	-312(%rbp), %rax	# mtfv, tmp148
	addq	%rdx, %rax	# D.5431, D.5436
	movw	$1, (%rax)	#, *_55
	addl	$1, -336(%rbp)	#, wr
	.loc 1 223 0
	movq	-360(%rbp), %rax	# s, tmp149
	movl	676(%rax), %eax	# s_20(D)->mtfFreq, D.5429
	leal	1(%rax), %edx	#, D.5429
	movq	-360(%rbp), %rax	# s, tmp150
	movl	%edx, 676(%rax)	# D.5429, s_20(D)->mtfFreq
	jmp	.L25	#
.L24:
	.loc 1 225 0
	movl	-336(%rbp), %eax	# wr, tmp151
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5431
	movq	-312(%rbp), %rax	# mtfv, tmp152
	addq	%rdx, %rax	# D.5431, D.5436
	movw	$0, (%rax)	#, *_61
	addl	$1, -336(%rbp)	#, wr
	.loc 1 226 0
	movq	-360(%rbp), %rax	# s, tmp153
	movl	672(%rax), %eax	# s_20(D)->mtfFreq, D.5429
	leal	1(%rax), %edx	#, D.5429
	movq	-360(%rbp), %rax	# s, tmp154
	movl	%edx, 672(%rax)	# D.5429, s_20(D)->mtfFreq
.L25:
	.loc 1 228 0
	cmpl	$1, -340(%rbp)	#, zPend
	jg	.L26	#,
	.loc 1 228 0 is_stmt 0 discriminator 1
	nop
	.loc 1 231 0 is_stmt 1 discriminator 1
	movl	$0, -340(%rbp)	#, zPend
	jmp	.L23	#
.L26:
	.loc 1 229 0
	movl	-340(%rbp), %eax	# zPend, tmp155
	subl	$2, %eax	#, D.5429
	movl	%eax, %edx	# D.5429, tmp156
	shrl	$31, %edx	#, tmp156
	addl	%edx, %eax	# tmp156, tmp157
	sarl	%eax	# tmp158
	movl	%eax, -340(%rbp)	# tmp158, zPend
	.loc 1 230 0
	jmp	.L28	#
.L23:
.LBB3:
	.loc 1 237 0
	movzbl	-303(%rbp), %r12d	# yy, rtmp
	.loc 1 238 0
	movzbl	-304(%rbp), %eax	# yy, D.5430
	movb	%al, -303(%rbp)	# D.5430, yy
	.loc 1 239 0
	leaq	-304(%rbp), %rax	#, tmp159
	leaq	1(%rax), %rbx	#, ryy_j
	.loc 1 240 0
	movzbl	-349(%rbp), %r14d	# ll_i, rll_i
	.loc 1 241 0
	jmp	.L29	#
.L30:
.LBB4:
	.loc 1 243 0
	addq	$1, %rbx	#, ryy_j
	.loc 1 244 0
	movl	%r12d, %r13d	# rtmp, rtmp2
	.loc 1 245 0
	movzbl	(%rbx), %r12d	# *ryy_j_72, rtmp
	.loc 1 246 0
	movb	%r13b, (%rbx)	# rtmp2, *ryy_j_72
.L29:
.LBE4:
	.loc 1 241 0 discriminator 1
	cmpb	%r12b, %r14b	# rtmp, rll_i
	jne	.L30	#,
	.loc 1 248 0
	movb	%r12b, -304(%rbp)	# rtmp, yy
	.loc 1 249 0
	movq	%rbx, %rdx	# ryy_j, ryy_j.0
	leaq	-304(%rbp), %rax	#, D.5437
	subq	%rax, %rdx	# D.5437, D.5437
	movq	%rdx, %rax	# D.5437, D.5437
	movl	%eax, -344(%rbp)	# D.5437, j
	.loc 1 250 0
	movl	-336(%rbp), %eax	# wr, tmp160
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5431
	movq	-312(%rbp), %rax	# mtfv, tmp161
	addq	%rdx, %rax	# D.5431, D.5436
	movl	-344(%rbp), %edx	# j, tmp162
	addl	$1, %edx	#, D.5438
	movw	%dx, (%rax)	# D.5438, *_81
	addl	$1, -336(%rbp)	#, wr
	movl	-344(%rbp), %eax	# j, tmp163
	addl	$1, %eax	#, D.5429
	movq	-360(%rbp), %rdx	# s, tmp164
	movslq	%eax, %rcx	# D.5429, tmp165
	addq	$168, %rcx	#, tmp166
	movl	(%rdx,%rcx,4), %edx	# s_20(D)->mtfFreq, D.5429
	leal	1(%rdx), %ecx	#, D.5429
	movq	-360(%rbp), %rdx	# s, tmp167
	cltq
	addq	$168, %rax	#, tmp169
	movl	%ecx, (%rdx,%rax,4)	# D.5429, s_20(D)->mtfFreq
.L22:
.LBE3:
.LBE2:
	.loc 1 207 0
	addl	$1, -348(%rbp)	#, i
.L19:
	.loc 1 207 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# s, tmp170
	movl	108(%rax), %eax	# s_20(D)->nblock, D.5429
	cmpl	-348(%rbp), %eax	# i, D.5429
	jg	.L31	#,
	.loc 1 256 0 is_stmt 1
	cmpl	$0, -340(%rbp)	#, zPend
	jle	.L32	#,
	.loc 1 257 0
	subl	$1, -340(%rbp)	#, zPend
.L37:
	.loc 1 259 0
	movl	-340(%rbp), %eax	# zPend, tmp171
	andl	$1, %eax	#, D.5429
	testl	%eax, %eax	# D.5429
	je	.L33	#,
	.loc 1 260 0
	movl	-336(%rbp), %eax	# wr, tmp172
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5431
	movq	-312(%rbp), %rax	# mtfv, tmp173
	addq	%rdx, %rax	# D.5431, D.5436
	movw	$1, (%rax)	#, *_93
	addl	$1, -336(%rbp)	#, wr
	.loc 1 261 0
	movq	-360(%rbp), %rax	# s, tmp174
	movl	676(%rax), %eax	# s_20(D)->mtfFreq, D.5429
	leal	1(%rax), %edx	#, D.5429
	movq	-360(%rbp), %rax	# s, tmp175
	movl	%edx, 676(%rax)	# D.5429, s_20(D)->mtfFreq
	jmp	.L34	#
.L33:
	.loc 1 263 0
	movl	-336(%rbp), %eax	# wr, tmp176
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5431
	movq	-312(%rbp), %rax	# mtfv, tmp177
	addq	%rdx, %rax	# D.5431, D.5436
	movw	$0, (%rax)	#, *_99
	addl	$1, -336(%rbp)	#, wr
	.loc 1 264 0
	movq	-360(%rbp), %rax	# s, tmp178
	movl	672(%rax), %eax	# s_20(D)->mtfFreq, D.5429
	leal	1(%rax), %edx	#, D.5429
	movq	-360(%rbp), %rax	# s, tmp179
	movl	%edx, 672(%rax)	# D.5429, s_20(D)->mtfFreq
.L34:
	.loc 1 266 0
	cmpl	$1, -340(%rbp)	#, zPend
	jg	.L35	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	nop
	.loc 1 269 0 is_stmt 1 discriminator 1
	movl	$0, -340(%rbp)	#, zPend
	jmp	.L32	#
.L35:
	.loc 1 267 0
	movl	-340(%rbp), %eax	# zPend, tmp180
	subl	$2, %eax	#, D.5429
	movl	%eax, %edx	# D.5429, tmp181
	shrl	$31, %edx	#, tmp181
	addl	%edx, %eax	# tmp181, tmp182
	sarl	%eax	# tmp183
	movl	%eax, -340(%rbp)	# tmp183, zPend
	.loc 1 268 0
	jmp	.L37	#
.L32:
	.loc 1 272 0
	movl	-336(%rbp), %eax	# wr, tmp184
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5431
	movq	-312(%rbp), %rax	# mtfv, tmp185
	addq	%rax, %rdx	# tmp185, D.5436
	movl	-332(%rbp), %eax	# EOB, tmp186
	movw	%ax, (%rdx)	# D.5438, *_108
	addl	$1, -336(%rbp)	#, wr
	movq	-360(%rbp), %rax	# s, tmp187
	movl	-332(%rbp), %edx	# EOB, tmp189
	movslq	%edx, %rdx	# tmp189, tmp188
	addq	$168, %rdx	#, tmp190
	movl	(%rax,%rdx,4), %eax	# s_20(D)->mtfFreq, D.5429
	leal	1(%rax), %ecx	#, D.5429
	movq	-360(%rbp), %rax	# s, tmp191
	movl	-332(%rbp), %edx	# EOB, tmp193
	movslq	%edx, %rdx	# tmp193, tmp192
	addq	$168, %rdx	#, tmp194
	movl	%ecx, (%rax,%rdx,4)	# D.5429, s_20(D)->mtfFreq
	.loc 1 274 0
	movq	-360(%rbp), %rax	# s, tmp195
	movl	-336(%rbp), %edx	# wr, tmp196
	movl	%edx, 668(%rax)	# tmp196, s_20(D)->nMTF
	.loc 1 275 0
	movq	-40(%rbp), %rax	# D.5439, tmp198
	xorq	%fs:40, %rax	#, tmp198
	je	.L38	#,
	call	__stack_chk_fail	#
.L38:
	addq	$336, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	generateMTFValues, .-generateMTFValues
	.section	.rodata
	.align 8
.LC0:
	.string	"      %d in block, %d after MTF & 1-2 coding, %d+2 syms in use\n"
	.align 8
.LC2:
	.string	"      initial group %d, [%d .. %d], has %d syms (%4.1f%%)\n"
	.align 8
.LC3:
	.string	"      pass %d: size is %d, grp uses are "
.LC4:
	.string	"%d "
.LC5:
	.string	"      bytes: mapping %d, "
.LC6:
	.string	"selectors %d, "
.LC7:
	.string	"code lengths %d, "
.LC8:
	.string	"codes %d\n"
	.text
	.type	sendMTFValues, @function
sendMTFValues:
.LFB9:
	.loc 1 284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$224, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -248(%rbp)	# s, s
	.loc 1 284 0
	movq	%fs:40, %rax	#, tmp4415
	movq	%rax, -40(%rbp)	# tmp4415, D.5454
	xorl	%eax, %eax	# tmp4415
	.loc 1 303 0
	movq	-248(%rbp), %rax	# s, tmp1774
	movq	72(%rax), %rax	# s_59(D)->mtfv, tmp1775
	movq	%rax, -136(%rbp)	# tmp1775, mtfv
	.loc 1 305 0
	movq	-248(%rbp), %rax	# s, tmp1776
	movl	656(%rax), %eax	# s_59(D)->verbosity, D.5442
	cmpl	$2, %eax	#, D.5442
	jle	.L40	#,
	.loc 1 306 0
	movq	-248(%rbp), %rax	# s, tmp1777
	movl	124(%rax), %esi	# s_59(D)->nInUse, D.5442
	movq	-248(%rbp), %rax	# s, tmp1778
	movl	668(%rax), %ecx	# s_59(D)->nMTF, D.5442
	movq	-248(%rbp), %rax	# s, tmp1779
	movl	108(%rax), %edx	# s_59(D)->nblock, D.5442
	movq	stderr(%rip), %rax	# stderr, stderr.1
	movl	%esi, %r8d	# D.5442,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# stderr.1,
	movl	$0, %eax	#,
	call	fprintf	#
.L40:
	.loc 1 310 0
	movq	-248(%rbp), %rax	# s, tmp1780
	movl	124(%rax), %eax	# s_59(D)->nInUse, D.5442
	addl	$2, %eax	#, tmp1781
	movl	%eax, -148(%rbp)	# tmp1781, alphaSize
	.loc 1 311 0
	movl	$0, -220(%rbp)	#, t
	jmp	.L41	#
.L44:
	.loc 1 312 0
	movl	$0, -224(%rbp)	#, v
	jmp	.L42	#
.L43:
	.loc 1 313 0 discriminator 2
	movq	-248(%rbp), %rcx	# s, tmp1782
	movl	-224(%rbp), %eax	# v, tmp1784
	movslq	%eax, %rdx	# tmp1784, tmp1783
	movl	-220(%rbp), %eax	# t, tmp1786
	cltq
	addq	%rax, %rax	# tmp1788
	movq	%rax, %rsi	# tmp1787, tmp1789
	salq	$7, %rsi	#, tmp1789
	addq	%rsi, %rax	# tmp1789, tmp1787
	addq	%rcx, %rax	# tmp1782, tmp1790
	addq	%rdx, %rax	# tmp1783, tmp1791
	addq	$37696, %rax	#, tmp1792
	movb	$15, 12(%rax)	#, s_59(D)->len
	.loc 1 312 0 discriminator 2
	addl	$1, -224(%rbp)	#, v
.L42:
	.loc 1 312 0 is_stmt 0 discriminator 1
	movl	-224(%rbp), %eax	# v, tmp1793
	cmpl	-148(%rbp), %eax	# alphaSize, tmp1793
	jl	.L43	#,
	.loc 1 311 0 is_stmt 1
	addl	$1, -220(%rbp)	#, t
.L41:
	.loc 1 311 0 is_stmt 0 discriminator 1
	cmpl	$5, -220(%rbp)	#, t
	jle	.L44	#,
	.loc 1 316 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp1794
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	testl	%eax, %eax	# D.5442
	jg	.L45	#,
	.loc 1 316 0 is_stmt 0 discriminator 1
	movl	$3001, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L45:
	.loc 1 317 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp1795
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	cmpl	$199, %eax	#, D.5442
	jg	.L46	#,
	.loc 1 317 0 is_stmt 0 discriminator 1
	movl	$2, -168(%rbp)	#, nGroups
	jmp	.L47	#
.L46:
	.loc 1 318 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp1796
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	cmpl	$599, %eax	#, D.5442
	jg	.L48	#,
	.loc 1 318 0 is_stmt 0 discriminator 1
	movl	$3, -168(%rbp)	#, nGroups
	jmp	.L47	#
.L48:
	.loc 1 319 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp1797
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	cmpl	$1199, %eax	#, D.5442
	jg	.L49	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	movl	$4, -168(%rbp)	#, nGroups
	jmp	.L47	#
.L49:
	.loc 1 320 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp1798
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	cmpl	$2399, %eax	#, D.5442
	jg	.L50	#,
	.loc 1 320 0 is_stmt 0 discriminator 1
	movl	$5, -168(%rbp)	#, nGroups
	jmp	.L47	#
.L50:
	.loc 1 321 0 is_stmt 1
	movl	$6, -168(%rbp)	#, nGroups
.L47:
.LBB5:
	.loc 1 327 0
	movl	-168(%rbp), %eax	# nGroups, tmp1799
	movl	%eax, -164(%rbp)	# tmp1799, nPart
	.loc 1 328 0
	movq	-248(%rbp), %rax	# s, tmp1800
	movl	668(%rax), %eax	# s_59(D)->nMTF, tmp1801
	movl	%eax, -160(%rbp)	# tmp1801, remF
	.loc 1 329 0
	movl	$0, -208(%rbp)	#, gs
	.loc 1 330 0
	jmp	.L51	#
.L61:
	.loc 1 331 0
	movl	-160(%rbp), %eax	# remF, tmp1805
	cltd
	idivl	-164(%rbp)	# nPart
	movl	%eax, -144(%rbp)	# tmp1803, tFreq
	.loc 1 332 0
	movl	-208(%rbp), %eax	# gs, tmp1809
	subl	$1, %eax	#, tmp1808
	movl	%eax, -204(%rbp)	# tmp1808, ge
	.loc 1 333 0
	movl	$0, -156(%rbp)	#, aFreq
	.loc 1 334 0
	jmp	.L52	#
.L54:
	.loc 1 335 0
	addl	$1, -204(%rbp)	#, ge
	.loc 1 336 0
	movq	-248(%rbp), %rax	# s, tmp1810
	movl	-204(%rbp), %edx	# ge, tmp1812
	movslq	%edx, %rdx	# tmp1812, tmp1811
	addq	$168, %rdx	#, tmp1813
	movl	(%rax,%rdx,4), %eax	# s_59(D)->mtfFreq, D.5442
	addl	%eax, -156(%rbp)	# D.5442, aFreq
.L52:
	.loc 1 334 0 discriminator 1
	movl	-156(%rbp), %eax	# aFreq, tmp1814
	cmpl	-144(%rbp), %eax	# tFreq, tmp1814
	jge	.L53	#,
	.loc 1 334 0 is_stmt 0 discriminator 2
	movl	-148(%rbp), %eax	# alphaSize, tmp1815
	subl	$1, %eax	#, D.5442
	cmpl	-204(%rbp), %eax	# ge, D.5442
	jg	.L54	#,
.L53:
	.loc 1 339 0 is_stmt 1
	movl	-204(%rbp), %eax	# ge, tmp1816
	cmpl	-208(%rbp), %eax	# gs, tmp1816
	jle	.L55	#,
	.loc 1 340 0
	movl	-164(%rbp), %eax	# nPart, tmp1817
	cmpl	-168(%rbp), %eax	# nGroups, tmp1817
	je	.L55	#,
	.loc 1 340 0 is_stmt 0 discriminator 1
	cmpl	$1, -164(%rbp)	#, nPart
	je	.L55	#,
	.loc 1 341 0 is_stmt 1
	movl	-164(%rbp), %eax	# nPart, tmp1818
	movl	-168(%rbp), %edx	# nGroups, tmp1819
	subl	%eax, %edx	# tmp1818, D.5442
	movl	%edx, %eax	# D.5442, tmp1820
	sarl	$31, %eax	#, tmp1820
	shrl	$31, %eax	#, tmp1821
	addl	%eax, %edx	# tmp1821, tmp1822
	andl	$1, %edx	#, tmp1823
	subl	%eax, %edx	# tmp1821, tmp1824
	movl	%edx, %eax	# tmp1824, tmp1824
	cmpl	$1, %eax	#, D.5442
	jne	.L55	#,
	.loc 1 342 0
	movq	-248(%rbp), %rax	# s, tmp1825
	movl	-204(%rbp), %edx	# ge, tmp1827
	movslq	%edx, %rdx	# tmp1827, tmp1826
	addq	$168, %rdx	#, tmp1828
	movl	(%rax,%rdx,4), %eax	# s_59(D)->mtfFreq, D.5442
	subl	%eax, -156(%rbp)	# D.5442, aFreq
	.loc 1 343 0
	subl	$1, -204(%rbp)	#, ge
.L55:
	.loc 1 346 0
	movq	-248(%rbp), %rax	# s, tmp1829
	movl	656(%rax), %eax	# s_59(D)->verbosity, D.5442
	cmpl	$2, %eax	#, D.5442
	jle	.L56	#,
	.loc 1 347 0
	cvtsi2ss	-156(%rbp), %xmm0	# aFreq, D.5443
	unpcklps	%xmm0, %xmm0	# D.5443, D.5443
	cvtps2pd	%xmm0, %xmm0	# D.5443, D.5444
	movsd	.LC1(%rip), %xmm1	#, tmp1830
	mulsd	%xmm1, %xmm0	# tmp1830, D.5444
	movq	-248(%rbp), %rax	# s, tmp1831
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	cvtsi2ss	%eax, %xmm1	# D.5442, D.5443
	unpcklps	%xmm1, %xmm1	# D.5443, D.5443
	cvtps2pd	%xmm1, %xmm1	# D.5443, D.5444
	divsd	%xmm1, %xmm0	# D.5444, D.5444
	movq	stderr(%rip), %rax	# stderr, stderr.2
	movl	-156(%rbp), %edi	# aFreq, tmp1832
	movl	-204(%rbp), %esi	# ge, tmp1833
	movl	-208(%rbp), %ecx	# gs, tmp1834
	movl	-164(%rbp), %edx	# nPart, tmp1835
	movl	%edi, %r9d	# tmp1832,
	movl	%esi, %r8d	# tmp1833,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# stderr.2,
	movl	$1, %eax	#,
	call	fprintf	#
.L56:
	.loc 1 352 0
	movl	$0, -224(%rbp)	#, v
	jmp	.L57	#
.L60:
	.loc 1 353 0
	movl	-224(%rbp), %eax	# v, tmp1836
	cmpl	-208(%rbp), %eax	# gs, tmp1836
	jl	.L58	#,
	.loc 1 353 0 is_stmt 0 discriminator 1
	movl	-224(%rbp), %eax	# v, tmp1837
	cmpl	-204(%rbp), %eax	# ge, tmp1837
	jg	.L58	#,
	.loc 1 354 0 is_stmt 1
	movl	-164(%rbp), %eax	# nPart, tmp1838
	leal	-1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp1839
	movl	-224(%rbp), %eax	# v, tmp1841
	movslq	%eax, %rdx	# tmp1841, tmp1840
	movslq	%esi, %rax	# D.5442, tmp1842
	addq	%rax, %rax	# tmp1844
	movq	%rax, %rsi	# tmp1843, tmp1845
	salq	$7, %rsi	#, tmp1845
	addq	%rsi, %rax	# tmp1845, tmp1843
	addq	%rcx, %rax	# tmp1839, tmp1846
	addq	%rdx, %rax	# tmp1840, tmp1847
	addq	$37696, %rax	#, tmp1848
	movb	$0, 12(%rax)	#, s_59(D)->len
	jmp	.L59	#
.L58:
	.loc 1 355 0
	movl	-164(%rbp), %eax	# nPart, tmp1849
	leal	-1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp1850
	movl	-224(%rbp), %eax	# v, tmp1852
	movslq	%eax, %rdx	# tmp1852, tmp1851
	movslq	%esi, %rax	# D.5442, tmp1853
	addq	%rax, %rax	# tmp1855
	movq	%rax, %rsi	# tmp1854, tmp1856
	salq	$7, %rsi	#, tmp1856
	addq	%rsi, %rax	# tmp1856, tmp1854
	addq	%rcx, %rax	# tmp1850, tmp1857
	addq	%rdx, %rax	# tmp1851, tmp1858
	addq	$37696, %rax	#, tmp1859
	movb	$15, 12(%rax)	#, s_59(D)->len
.L59:
	.loc 1 352 0
	addl	$1, -224(%rbp)	#, v
.L57:
	.loc 1 352 0 is_stmt 0 discriminator 1
	movl	-224(%rbp), %eax	# v, tmp1860
	cmpl	-148(%rbp), %eax	# alphaSize, tmp1860
	jl	.L60	#,
	.loc 1 357 0 is_stmt 1
	subl	$1, -164(%rbp)	#, nPart
	.loc 1 358 0
	movl	-204(%rbp), %eax	# ge, tmp1864
	addl	$1, %eax	#, tmp1863
	movl	%eax, -208(%rbp)	# tmp1863, gs
	.loc 1 359 0
	movl	-156(%rbp), %eax	# aFreq, tmp1865
	subl	%eax, -160(%rbp)	# tmp1865, remF
.L51:
	.loc 1 330 0 discriminator 1
	cmpl	$0, -164(%rbp)	#, nPart
	jg	.L61	#,
.LBE5:
	.loc 1 366 0
	movl	$0, -188(%rbp)	#, iter
	jmp	.L62	#
.L96:
	.loc 1 368 0
	movl	$0, -220(%rbp)	#, t
	jmp	.L63	#
.L64:
	.loc 1 368 0 is_stmt 0 discriminator 2
	movl	-220(%rbp), %eax	# t, tmp1867
	cltq
	movl	$0, -96(%rbp,%rax,4)	#, fave
	addl	$1, -220(%rbp)	#, t
.L63:
	.loc 1 368 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp1868
	cmpl	-168(%rbp), %eax	# nGroups, tmp1868
	jl	.L64	#,
	.loc 1 370 0 is_stmt 1
	movl	$0, -220(%rbp)	#, t
	jmp	.L65	#
.L68:
	.loc 1 371 0
	movl	$0, -224(%rbp)	#, v
	jmp	.L66	#
.L67:
	.loc 1 372 0 discriminator 2
	movq	-248(%rbp), %rdx	# s, tmp1869
	movl	-224(%rbp), %eax	# v, tmp1871
	movslq	%eax, %rcx	# tmp1871, tmp1870
	movl	-220(%rbp), %eax	# t, tmp1873
	cltq
	addq	%rax, %rax	# tmp1875
	movq	%rax, %rsi	# tmp1874, tmp1876
	salq	$7, %rsi	#, tmp1876
	addq	%rsi, %rax	# tmp1876, tmp1874
	addq	%rcx, %rax	# tmp1870, tmp1877
	addq	$11360, %rax	#, tmp1878
	movl	$0, 8(%rdx,%rax,4)	#, s_59(D)->rfreq
	.loc 1 371 0 discriminator 2
	addl	$1, -224(%rbp)	#, v
.L66:
	.loc 1 371 0 is_stmt 0 discriminator 1
	movl	-224(%rbp), %eax	# v, tmp1879
	cmpl	-148(%rbp), %eax	# alphaSize, tmp1879
	jl	.L67	#,
	.loc 1 370 0 is_stmt 1
	addl	$1, -220(%rbp)	#, t
.L65:
	.loc 1 370 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp1880
	cmpl	-168(%rbp), %eax	# nGroups, tmp1880
	jl	.L68	#,
	.loc 1 378 0 is_stmt 1
	cmpl	$6, -168(%rbp)	#, nGroups
	jne	.L69	#,
	.loc 1 379 0
	movl	$0, -224(%rbp)	#, v
	jmp	.L70	#
.L71:
	.loc 1 380 0 discriminator 2
	movq	-248(%rbp), %rdx	# s, tmp1881
	movl	-224(%rbp), %eax	# v, tmp1883
	cltq
	movzbl	37966(%rdx,%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	sall	$16, %eax	#, D.5442
	movl	%eax, %ecx	# D.5442, D.5442
	movq	-248(%rbp), %rdx	# s, tmp1884
	movl	-224(%rbp), %eax	# v, tmp1886
	cltq
	movzbl	37708(%rdx,%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	orl	%ecx, %eax	# D.5442, D.5442
	movq	-248(%rbp), %rdx	# s, tmp1887
	movl	-224(%rbp), %ecx	# v, tmp1889
	movslq	%ecx, %rcx	# tmp1889, tmp1888
	addq	$3227, %rcx	#, tmp1890
	salq	$4, %rcx	#, tmp1891
	addq	%rcx, %rdx	# tmp1891, tmp1892
	movl	%eax, 8(%rdx)	# D.5446, s_59(D)->len_pack
	.loc 1 381 0 discriminator 2
	movq	-248(%rbp), %rdx	# s, tmp1893
	movl	-224(%rbp), %eax	# v, tmp1895
	cltq
	movzbl	38482(%rdx,%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	sall	$16, %eax	#, D.5442
	movl	%eax, %ecx	# D.5442, D.5442
	movq	-248(%rbp), %rdx	# s, tmp1896
	movl	-224(%rbp), %eax	# v, tmp1898
	cltq
	movzbl	38224(%rdx,%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	orl	%ecx, %eax	# D.5442, D.5442
	movq	-248(%rbp), %rdx	# s, tmp1899
	movl	-224(%rbp), %ecx	# v, tmp1901
	movslq	%ecx, %rcx	# tmp1901, tmp1900
	salq	$4, %rcx	#, tmp1902
	addq	%rcx, %rdx	# tmp1902, tmp1903
	addq	$51636, %rdx	#, tmp1904
	movl	%eax, 8(%rdx)	# D.5446, s_59(D)->len_pack
	.loc 1 382 0 discriminator 2
	movq	-248(%rbp), %rdx	# s, tmp1905
	movl	-224(%rbp), %eax	# v, tmp1907
	cltq
	movzbl	38998(%rdx,%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	sall	$16, %eax	#, D.5442
	movl	%eax, %ecx	# D.5442, D.5442
	movq	-248(%rbp), %rdx	# s, tmp1908
	movl	-224(%rbp), %eax	# v, tmp1910
	cltq
	movzbl	38740(%rdx,%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	orl	%ecx, %eax	# D.5442, D.5442
	movq	-248(%rbp), %rdx	# s, tmp1911
	movl	-224(%rbp), %ecx	# v, tmp1913
	movslq	%ecx, %rcx	# tmp1913, tmp1912
	salq	$4, %rcx	#, tmp1914
	addq	%rcx, %rdx	# tmp1914, tmp1915
	addq	$51640, %rdx	#, tmp1916
	movl	%eax, 8(%rdx)	# D.5446, s_59(D)->len_pack
	.loc 1 379 0 discriminator 2
	addl	$1, -224(%rbp)	#, v
.L70:
	.loc 1 379 0 is_stmt 0 discriminator 1
	movl	-224(%rbp), %eax	# v, tmp1917
	cmpl	-148(%rbp), %eax	# alphaSize, tmp1917
	jl	.L71	#,
.L69:
	.loc 1 386 0 is_stmt 1
	movl	$0, -184(%rbp)	#, nSelectors
	.loc 1 387 0
	movl	$0, -200(%rbp)	#, totc
	.loc 1 388 0
	movl	$0, -208(%rbp)	#, gs
.L90:
	.loc 1 392 0
	movq	-248(%rbp), %rax	# s, tmp1918
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	cmpl	-208(%rbp), %eax	# gs, D.5442
	jg	.L72	#,
	.loc 1 392 0 is_stmt 0 discriminator 1
	nop
	.loc 1 480 0 is_stmt 1 discriminator 1
	movq	-248(%rbp), %rax	# s, tmp3845
	movl	656(%rax), %eax	# s_59(D)->verbosity, D.5442
	cmpl	$2, %eax	#, D.5442
	jle	.L91	#,
	jmp	.L157	#
.L72:
	.loc 1 393 0
	movl	-208(%rbp), %eax	# gs, tmp1922
	addl	$49, %eax	#, tmp1921
	movl	%eax, -204(%rbp)	# tmp1921, ge
	.loc 1 394 0
	movq	-248(%rbp), %rax	# s, tmp1923
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	cmpl	-204(%rbp), %eax	# ge, D.5442
	jg	.L74	#,
	.loc 1 394 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rax	# s, tmp1924
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	subl	$1, %eax	#, tmp1925
	movl	%eax, -204(%rbp)	# tmp1925, ge
.L74:
	.loc 1 400 0 is_stmt 1
	movl	$0, -220(%rbp)	#, t
	jmp	.L75	#
.L76:
	.loc 1 400 0 is_stmt 0 discriminator 2
	movl	-220(%rbp), %eax	# t, tmp1927
	cltq
	movw	$0, -112(%rbp,%rax,2)	#, cost
	addl	$1, -220(%rbp)	#, t
.L75:
	.loc 1 400 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp1928
	cmpl	-168(%rbp), %eax	# nGroups, tmp1928
	jl	.L76	#,
	.loc 1 402 0 is_stmt 1
	cmpl	$6, -168(%rbp)	#, nGroups
	jne	.L77	#,
	.loc 1 402 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp1929
	movl	-204(%rbp), %edx	# ge, tmp1930
	subl	%eax, %edx	# tmp1929, D.5442
	movl	%edx, %eax	# D.5442, D.5442
	cmpl	$49, %eax	#, D.5442
	jne	.L77	#,
.LBB6:
	.loc 1 406 0 is_stmt 1 discriminator 1
	movl	$0, %r12d	#, cost45
	movl	%r12d, %r13d	# cost45, cost23
	movl	%r13d, %r14d	# cost23, cost01
	.loc 1 414 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp1931
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5449
	movq	-136(%rbp), %rax	# mtfv, tmp1932
	addq	%rdx, %rax	# D.5449, D.5450
	movzwl	(%rax), %ebx	# *_174, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1933
	movslq	%edx, %rdx	# D.5442, tmp1934
	addq	$3227, %rdx	#, tmp1935
	salq	$4, %rdx	#, tmp1936
	addq	%rdx, %rax	# tmp1936, tmp1937
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1938
	movslq	%edx, %rdx	# D.5442, tmp1939
	salq	$4, %rdx	#, tmp1940
	addq	%rdx, %rax	# tmp1940, tmp1941
	addq	$51636, %rax	#, tmp1942
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1943
	movslq	%edx, %rdx	# D.5442, tmp1944
	salq	$4, %rdx	#, tmp1945
	addq	%rdx, %rax	# tmp1945, tmp1946
	addq	$51640, %rax	#, tmp1947
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp1948
	cltq
	addq	$1, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp1949
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_188, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1950
	movslq	%edx, %rdx	# D.5442, tmp1951
	addq	$3227, %rdx	#, tmp1952
	salq	$4, %rdx	#, tmp1953
	addq	%rdx, %rax	# tmp1953, tmp1954
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1955
	movslq	%edx, %rdx	# D.5442, tmp1956
	salq	$4, %rdx	#, tmp1957
	addq	%rdx, %rax	# tmp1957, tmp1958
	addq	$51636, %rax	#, tmp1959
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1960
	movslq	%edx, %rdx	# D.5442, tmp1961
	salq	$4, %rdx	#, tmp1962
	addq	%rdx, %rax	# tmp1962, tmp1963
	addq	$51640, %rax	#, tmp1964
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp1965
	cltq
	addq	$2, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp1966
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_202, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1967
	movslq	%edx, %rdx	# D.5442, tmp1968
	addq	$3227, %rdx	#, tmp1969
	salq	$4, %rdx	#, tmp1970
	addq	%rdx, %rax	# tmp1970, tmp1971
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1972
	movslq	%edx, %rdx	# D.5442, tmp1973
	salq	$4, %rdx	#, tmp1974
	addq	%rdx, %rax	# tmp1974, tmp1975
	addq	$51636, %rax	#, tmp1976
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1977
	movslq	%edx, %rdx	# D.5442, tmp1978
	salq	$4, %rdx	#, tmp1979
	addq	%rdx, %rax	# tmp1979, tmp1980
	addq	$51640, %rax	#, tmp1981
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp1982
	cltq
	addq	$3, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp1983
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_216, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1984
	movslq	%edx, %rdx	# D.5442, tmp1985
	addq	$3227, %rdx	#, tmp1986
	salq	$4, %rdx	#, tmp1987
	addq	%rdx, %rax	# tmp1987, tmp1988
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1989
	movslq	%edx, %rdx	# D.5442, tmp1990
	salq	$4, %rdx	#, tmp1991
	addq	%rdx, %rax	# tmp1991, tmp1992
	addq	$51636, %rax	#, tmp1993
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp1994
	movslq	%edx, %rdx	# D.5442, tmp1995
	salq	$4, %rdx	#, tmp1996
	addq	%rdx, %rax	# tmp1996, tmp1997
	addq	$51640, %rax	#, tmp1998
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp1999
	cltq
	addq	$4, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2000
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_230, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2001
	movslq	%edx, %rdx	# D.5442, tmp2002
	addq	$3227, %rdx	#, tmp2003
	salq	$4, %rdx	#, tmp2004
	addq	%rdx, %rax	# tmp2004, tmp2005
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2006
	movslq	%edx, %rdx	# D.5442, tmp2007
	salq	$4, %rdx	#, tmp2008
	addq	%rdx, %rax	# tmp2008, tmp2009
	addq	$51636, %rax	#, tmp2010
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2011
	movslq	%edx, %rdx	# D.5442, tmp2012
	salq	$4, %rdx	#, tmp2013
	addq	%rdx, %rax	# tmp2013, tmp2014
	addq	$51640, %rax	#, tmp2015
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 415 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2016
	cltq
	addq	$5, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2017
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_244, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2018
	movslq	%edx, %rdx	# D.5442, tmp2019
	addq	$3227, %rdx	#, tmp2020
	salq	$4, %rdx	#, tmp2021
	addq	%rdx, %rax	# tmp2021, tmp2022
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2023
	movslq	%edx, %rdx	# D.5442, tmp2024
	salq	$4, %rdx	#, tmp2025
	addq	%rdx, %rax	# tmp2025, tmp2026
	addq	$51636, %rax	#, tmp2027
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2028
	movslq	%edx, %rdx	# D.5442, tmp2029
	salq	$4, %rdx	#, tmp2030
	addq	%rdx, %rax	# tmp2030, tmp2031
	addq	$51640, %rax	#, tmp2032
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2033
	cltq
	addq	$6, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2034
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_258, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2035
	movslq	%edx, %rdx	# D.5442, tmp2036
	addq	$3227, %rdx	#, tmp2037
	salq	$4, %rdx	#, tmp2038
	addq	%rdx, %rax	# tmp2038, tmp2039
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2040
	movslq	%edx, %rdx	# D.5442, tmp2041
	salq	$4, %rdx	#, tmp2042
	addq	%rdx, %rax	# tmp2042, tmp2043
	addq	$51636, %rax	#, tmp2044
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2045
	movslq	%edx, %rdx	# D.5442, tmp2046
	salq	$4, %rdx	#, tmp2047
	addq	%rdx, %rax	# tmp2047, tmp2048
	addq	$51640, %rax	#, tmp2049
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2050
	cltq
	addq	$7, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2051
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_272, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2052
	movslq	%edx, %rdx	# D.5442, tmp2053
	addq	$3227, %rdx	#, tmp2054
	salq	$4, %rdx	#, tmp2055
	addq	%rdx, %rax	# tmp2055, tmp2056
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2057
	movslq	%edx, %rdx	# D.5442, tmp2058
	salq	$4, %rdx	#, tmp2059
	addq	%rdx, %rax	# tmp2059, tmp2060
	addq	$51636, %rax	#, tmp2061
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2062
	movslq	%edx, %rdx	# D.5442, tmp2063
	salq	$4, %rdx	#, tmp2064
	addq	%rdx, %rax	# tmp2064, tmp2065
	addq	$51640, %rax	#, tmp2066
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2067
	cltq
	addq	$8, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2068
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_286, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2069
	movslq	%edx, %rdx	# D.5442, tmp2070
	addq	$3227, %rdx	#, tmp2071
	salq	$4, %rdx	#, tmp2072
	addq	%rdx, %rax	# tmp2072, tmp2073
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2074
	movslq	%edx, %rdx	# D.5442, tmp2075
	salq	$4, %rdx	#, tmp2076
	addq	%rdx, %rax	# tmp2076, tmp2077
	addq	$51636, %rax	#, tmp2078
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2079
	movslq	%edx, %rdx	# D.5442, tmp2080
	salq	$4, %rdx	#, tmp2081
	addq	%rdx, %rax	# tmp2081, tmp2082
	addq	$51640, %rax	#, tmp2083
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2084
	cltq
	addq	$9, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2085
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_300, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2086
	movslq	%edx, %rdx	# D.5442, tmp2087
	addq	$3227, %rdx	#, tmp2088
	salq	$4, %rdx	#, tmp2089
	addq	%rdx, %rax	# tmp2089, tmp2090
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2091
	movslq	%edx, %rdx	# D.5442, tmp2092
	salq	$4, %rdx	#, tmp2093
	addq	%rdx, %rax	# tmp2093, tmp2094
	addq	$51636, %rax	#, tmp2095
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2096
	movslq	%edx, %rdx	# D.5442, tmp2097
	salq	$4, %rdx	#, tmp2098
	addq	%rdx, %rax	# tmp2098, tmp2099
	addq	$51640, %rax	#, tmp2100
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 416 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2101
	cltq
	addq	$10, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2102
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_314, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2103
	movslq	%edx, %rdx	# D.5442, tmp2104
	addq	$3227, %rdx	#, tmp2105
	salq	$4, %rdx	#, tmp2106
	addq	%rdx, %rax	# tmp2106, tmp2107
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2108
	movslq	%edx, %rdx	# D.5442, tmp2109
	salq	$4, %rdx	#, tmp2110
	addq	%rdx, %rax	# tmp2110, tmp2111
	addq	$51636, %rax	#, tmp2112
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2113
	movslq	%edx, %rdx	# D.5442, tmp2114
	salq	$4, %rdx	#, tmp2115
	addq	%rdx, %rax	# tmp2115, tmp2116
	addq	$51640, %rax	#, tmp2117
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2118
	cltq
	addq	$11, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2119
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_328, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2120
	movslq	%edx, %rdx	# D.5442, tmp2121
	addq	$3227, %rdx	#, tmp2122
	salq	$4, %rdx	#, tmp2123
	addq	%rdx, %rax	# tmp2123, tmp2124
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2125
	movslq	%edx, %rdx	# D.5442, tmp2126
	salq	$4, %rdx	#, tmp2127
	addq	%rdx, %rax	# tmp2127, tmp2128
	addq	$51636, %rax	#, tmp2129
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2130
	movslq	%edx, %rdx	# D.5442, tmp2131
	salq	$4, %rdx	#, tmp2132
	addq	%rdx, %rax	# tmp2132, tmp2133
	addq	$51640, %rax	#, tmp2134
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2135
	cltq
	addq	$12, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2136
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_342, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2137
	movslq	%edx, %rdx	# D.5442, tmp2138
	addq	$3227, %rdx	#, tmp2139
	salq	$4, %rdx	#, tmp2140
	addq	%rdx, %rax	# tmp2140, tmp2141
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2142
	movslq	%edx, %rdx	# D.5442, tmp2143
	salq	$4, %rdx	#, tmp2144
	addq	%rdx, %rax	# tmp2144, tmp2145
	addq	$51636, %rax	#, tmp2146
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2147
	movslq	%edx, %rdx	# D.5442, tmp2148
	salq	$4, %rdx	#, tmp2149
	addq	%rdx, %rax	# tmp2149, tmp2150
	addq	$51640, %rax	#, tmp2151
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2152
	cltq
	addq	$13, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2153
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_356, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2154
	movslq	%edx, %rdx	# D.5442, tmp2155
	addq	$3227, %rdx	#, tmp2156
	salq	$4, %rdx	#, tmp2157
	addq	%rdx, %rax	# tmp2157, tmp2158
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2159
	movslq	%edx, %rdx	# D.5442, tmp2160
	salq	$4, %rdx	#, tmp2161
	addq	%rdx, %rax	# tmp2161, tmp2162
	addq	$51636, %rax	#, tmp2163
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2164
	movslq	%edx, %rdx	# D.5442, tmp2165
	salq	$4, %rdx	#, tmp2166
	addq	%rdx, %rax	# tmp2166, tmp2167
	addq	$51640, %rax	#, tmp2168
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2169
	cltq
	addq	$14, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2170
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_370, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2171
	movslq	%edx, %rdx	# D.5442, tmp2172
	addq	$3227, %rdx	#, tmp2173
	salq	$4, %rdx	#, tmp2174
	addq	%rdx, %rax	# tmp2174, tmp2175
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2176
	movslq	%edx, %rdx	# D.5442, tmp2177
	salq	$4, %rdx	#, tmp2178
	addq	%rdx, %rax	# tmp2178, tmp2179
	addq	$51636, %rax	#, tmp2180
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2181
	movslq	%edx, %rdx	# D.5442, tmp2182
	salq	$4, %rdx	#, tmp2183
	addq	%rdx, %rax	# tmp2183, tmp2184
	addq	$51640, %rax	#, tmp2185
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 417 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2186
	cltq
	addq	$15, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2187
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_384, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2188
	movslq	%edx, %rdx	# D.5442, tmp2189
	addq	$3227, %rdx	#, tmp2190
	salq	$4, %rdx	#, tmp2191
	addq	%rdx, %rax	# tmp2191, tmp2192
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2193
	movslq	%edx, %rdx	# D.5442, tmp2194
	salq	$4, %rdx	#, tmp2195
	addq	%rdx, %rax	# tmp2195, tmp2196
	addq	$51636, %rax	#, tmp2197
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2198
	movslq	%edx, %rdx	# D.5442, tmp2199
	salq	$4, %rdx	#, tmp2200
	addq	%rdx, %rax	# tmp2200, tmp2201
	addq	$51640, %rax	#, tmp2202
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2203
	cltq
	addq	$16, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2204
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_398, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2205
	movslq	%edx, %rdx	# D.5442, tmp2206
	addq	$3227, %rdx	#, tmp2207
	salq	$4, %rdx	#, tmp2208
	addq	%rdx, %rax	# tmp2208, tmp2209
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2210
	movslq	%edx, %rdx	# D.5442, tmp2211
	salq	$4, %rdx	#, tmp2212
	addq	%rdx, %rax	# tmp2212, tmp2213
	addq	$51636, %rax	#, tmp2214
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2215
	movslq	%edx, %rdx	# D.5442, tmp2216
	salq	$4, %rdx	#, tmp2217
	addq	%rdx, %rax	# tmp2217, tmp2218
	addq	$51640, %rax	#, tmp2219
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2220
	cltq
	addq	$17, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2221
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_412, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2222
	movslq	%edx, %rdx	# D.5442, tmp2223
	addq	$3227, %rdx	#, tmp2224
	salq	$4, %rdx	#, tmp2225
	addq	%rdx, %rax	# tmp2225, tmp2226
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2227
	movslq	%edx, %rdx	# D.5442, tmp2228
	salq	$4, %rdx	#, tmp2229
	addq	%rdx, %rax	# tmp2229, tmp2230
	addq	$51636, %rax	#, tmp2231
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2232
	movslq	%edx, %rdx	# D.5442, tmp2233
	salq	$4, %rdx	#, tmp2234
	addq	%rdx, %rax	# tmp2234, tmp2235
	addq	$51640, %rax	#, tmp2236
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2237
	cltq
	addq	$18, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2238
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_426, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2239
	movslq	%edx, %rdx	# D.5442, tmp2240
	addq	$3227, %rdx	#, tmp2241
	salq	$4, %rdx	#, tmp2242
	addq	%rdx, %rax	# tmp2242, tmp2243
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2244
	movslq	%edx, %rdx	# D.5442, tmp2245
	salq	$4, %rdx	#, tmp2246
	addq	%rdx, %rax	# tmp2246, tmp2247
	addq	$51636, %rax	#, tmp2248
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2249
	movslq	%edx, %rdx	# D.5442, tmp2250
	salq	$4, %rdx	#, tmp2251
	addq	%rdx, %rax	# tmp2251, tmp2252
	addq	$51640, %rax	#, tmp2253
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2254
	cltq
	addq	$19, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2255
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_440, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2256
	movslq	%edx, %rdx	# D.5442, tmp2257
	addq	$3227, %rdx	#, tmp2258
	salq	$4, %rdx	#, tmp2259
	addq	%rdx, %rax	# tmp2259, tmp2260
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2261
	movslq	%edx, %rdx	# D.5442, tmp2262
	salq	$4, %rdx	#, tmp2263
	addq	%rdx, %rax	# tmp2263, tmp2264
	addq	$51636, %rax	#, tmp2265
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2266
	movslq	%edx, %rdx	# D.5442, tmp2267
	salq	$4, %rdx	#, tmp2268
	addq	%rdx, %rax	# tmp2268, tmp2269
	addq	$51640, %rax	#, tmp2270
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 418 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2271
	cltq
	addq	$20, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2272
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_454, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2273
	movslq	%edx, %rdx	# D.5442, tmp2274
	addq	$3227, %rdx	#, tmp2275
	salq	$4, %rdx	#, tmp2276
	addq	%rdx, %rax	# tmp2276, tmp2277
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2278
	movslq	%edx, %rdx	# D.5442, tmp2279
	salq	$4, %rdx	#, tmp2280
	addq	%rdx, %rax	# tmp2280, tmp2281
	addq	$51636, %rax	#, tmp2282
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2283
	movslq	%edx, %rdx	# D.5442, tmp2284
	salq	$4, %rdx	#, tmp2285
	addq	%rdx, %rax	# tmp2285, tmp2286
	addq	$51640, %rax	#, tmp2287
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2288
	cltq
	addq	$21, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2289
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_468, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2290
	movslq	%edx, %rdx	# D.5442, tmp2291
	addq	$3227, %rdx	#, tmp2292
	salq	$4, %rdx	#, tmp2293
	addq	%rdx, %rax	# tmp2293, tmp2294
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2295
	movslq	%edx, %rdx	# D.5442, tmp2296
	salq	$4, %rdx	#, tmp2297
	addq	%rdx, %rax	# tmp2297, tmp2298
	addq	$51636, %rax	#, tmp2299
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2300
	movslq	%edx, %rdx	# D.5442, tmp2301
	salq	$4, %rdx	#, tmp2302
	addq	%rdx, %rax	# tmp2302, tmp2303
	addq	$51640, %rax	#, tmp2304
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2305
	cltq
	addq	$22, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2306
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_482, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2307
	movslq	%edx, %rdx	# D.5442, tmp2308
	addq	$3227, %rdx	#, tmp2309
	salq	$4, %rdx	#, tmp2310
	addq	%rdx, %rax	# tmp2310, tmp2311
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2312
	movslq	%edx, %rdx	# D.5442, tmp2313
	salq	$4, %rdx	#, tmp2314
	addq	%rdx, %rax	# tmp2314, tmp2315
	addq	$51636, %rax	#, tmp2316
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2317
	movslq	%edx, %rdx	# D.5442, tmp2318
	salq	$4, %rdx	#, tmp2319
	addq	%rdx, %rax	# tmp2319, tmp2320
	addq	$51640, %rax	#, tmp2321
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2322
	cltq
	addq	$23, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2323
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_496, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2324
	movslq	%edx, %rdx	# D.5442, tmp2325
	addq	$3227, %rdx	#, tmp2326
	salq	$4, %rdx	#, tmp2327
	addq	%rdx, %rax	# tmp2327, tmp2328
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2329
	movslq	%edx, %rdx	# D.5442, tmp2330
	salq	$4, %rdx	#, tmp2331
	addq	%rdx, %rax	# tmp2331, tmp2332
	addq	$51636, %rax	#, tmp2333
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2334
	movslq	%edx, %rdx	# D.5442, tmp2335
	salq	$4, %rdx	#, tmp2336
	addq	%rdx, %rax	# tmp2336, tmp2337
	addq	$51640, %rax	#, tmp2338
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2339
	cltq
	addq	$24, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2340
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_510, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2341
	movslq	%edx, %rdx	# D.5442, tmp2342
	addq	$3227, %rdx	#, tmp2343
	salq	$4, %rdx	#, tmp2344
	addq	%rdx, %rax	# tmp2344, tmp2345
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2346
	movslq	%edx, %rdx	# D.5442, tmp2347
	salq	$4, %rdx	#, tmp2348
	addq	%rdx, %rax	# tmp2348, tmp2349
	addq	$51636, %rax	#, tmp2350
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2351
	movslq	%edx, %rdx	# D.5442, tmp2352
	salq	$4, %rdx	#, tmp2353
	addq	%rdx, %rax	# tmp2353, tmp2354
	addq	$51640, %rax	#, tmp2355
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 419 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2356
	cltq
	addq	$25, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2357
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_524, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2358
	movslq	%edx, %rdx	# D.5442, tmp2359
	addq	$3227, %rdx	#, tmp2360
	salq	$4, %rdx	#, tmp2361
	addq	%rdx, %rax	# tmp2361, tmp2362
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2363
	movslq	%edx, %rdx	# D.5442, tmp2364
	salq	$4, %rdx	#, tmp2365
	addq	%rdx, %rax	# tmp2365, tmp2366
	addq	$51636, %rax	#, tmp2367
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2368
	movslq	%edx, %rdx	# D.5442, tmp2369
	salq	$4, %rdx	#, tmp2370
	addq	%rdx, %rax	# tmp2370, tmp2371
	addq	$51640, %rax	#, tmp2372
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2373
	cltq
	addq	$26, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2374
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_538, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2375
	movslq	%edx, %rdx	# D.5442, tmp2376
	addq	$3227, %rdx	#, tmp2377
	salq	$4, %rdx	#, tmp2378
	addq	%rdx, %rax	# tmp2378, tmp2379
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2380
	movslq	%edx, %rdx	# D.5442, tmp2381
	salq	$4, %rdx	#, tmp2382
	addq	%rdx, %rax	# tmp2382, tmp2383
	addq	$51636, %rax	#, tmp2384
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2385
	movslq	%edx, %rdx	# D.5442, tmp2386
	salq	$4, %rdx	#, tmp2387
	addq	%rdx, %rax	# tmp2387, tmp2388
	addq	$51640, %rax	#, tmp2389
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2390
	cltq
	addq	$27, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2391
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_552, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2392
	movslq	%edx, %rdx	# D.5442, tmp2393
	addq	$3227, %rdx	#, tmp2394
	salq	$4, %rdx	#, tmp2395
	addq	%rdx, %rax	# tmp2395, tmp2396
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2397
	movslq	%edx, %rdx	# D.5442, tmp2398
	salq	$4, %rdx	#, tmp2399
	addq	%rdx, %rax	# tmp2399, tmp2400
	addq	$51636, %rax	#, tmp2401
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2402
	movslq	%edx, %rdx	# D.5442, tmp2403
	salq	$4, %rdx	#, tmp2404
	addq	%rdx, %rax	# tmp2404, tmp2405
	addq	$51640, %rax	#, tmp2406
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2407
	cltq
	addq	$28, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2408
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_566, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2409
	movslq	%edx, %rdx	# D.5442, tmp2410
	addq	$3227, %rdx	#, tmp2411
	salq	$4, %rdx	#, tmp2412
	addq	%rdx, %rax	# tmp2412, tmp2413
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2414
	movslq	%edx, %rdx	# D.5442, tmp2415
	salq	$4, %rdx	#, tmp2416
	addq	%rdx, %rax	# tmp2416, tmp2417
	addq	$51636, %rax	#, tmp2418
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2419
	movslq	%edx, %rdx	# D.5442, tmp2420
	salq	$4, %rdx	#, tmp2421
	addq	%rdx, %rax	# tmp2421, tmp2422
	addq	$51640, %rax	#, tmp2423
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2424
	cltq
	addq	$29, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2425
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_580, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2426
	movslq	%edx, %rdx	# D.5442, tmp2427
	addq	$3227, %rdx	#, tmp2428
	salq	$4, %rdx	#, tmp2429
	addq	%rdx, %rax	# tmp2429, tmp2430
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2431
	movslq	%edx, %rdx	# D.5442, tmp2432
	salq	$4, %rdx	#, tmp2433
	addq	%rdx, %rax	# tmp2433, tmp2434
	addq	$51636, %rax	#, tmp2435
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2436
	movslq	%edx, %rdx	# D.5442, tmp2437
	salq	$4, %rdx	#, tmp2438
	addq	%rdx, %rax	# tmp2438, tmp2439
	addq	$51640, %rax	#, tmp2440
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 420 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2441
	cltq
	addq	$30, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2442
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_594, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2443
	movslq	%edx, %rdx	# D.5442, tmp2444
	addq	$3227, %rdx	#, tmp2445
	salq	$4, %rdx	#, tmp2446
	addq	%rdx, %rax	# tmp2446, tmp2447
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2448
	movslq	%edx, %rdx	# D.5442, tmp2449
	salq	$4, %rdx	#, tmp2450
	addq	%rdx, %rax	# tmp2450, tmp2451
	addq	$51636, %rax	#, tmp2452
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2453
	movslq	%edx, %rdx	# D.5442, tmp2454
	salq	$4, %rdx	#, tmp2455
	addq	%rdx, %rax	# tmp2455, tmp2456
	addq	$51640, %rax	#, tmp2457
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2458
	cltq
	addq	$31, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2459
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_608, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2460
	movslq	%edx, %rdx	# D.5442, tmp2461
	addq	$3227, %rdx	#, tmp2462
	salq	$4, %rdx	#, tmp2463
	addq	%rdx, %rax	# tmp2463, tmp2464
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2465
	movslq	%edx, %rdx	# D.5442, tmp2466
	salq	$4, %rdx	#, tmp2467
	addq	%rdx, %rax	# tmp2467, tmp2468
	addq	$51636, %rax	#, tmp2469
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2470
	movslq	%edx, %rdx	# D.5442, tmp2471
	salq	$4, %rdx	#, tmp2472
	addq	%rdx, %rax	# tmp2472, tmp2473
	addq	$51640, %rax	#, tmp2474
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2475
	cltq
	addq	$32, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2476
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_622, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2477
	movslq	%edx, %rdx	# D.5442, tmp2478
	addq	$3227, %rdx	#, tmp2479
	salq	$4, %rdx	#, tmp2480
	addq	%rdx, %rax	# tmp2480, tmp2481
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2482
	movslq	%edx, %rdx	# D.5442, tmp2483
	salq	$4, %rdx	#, tmp2484
	addq	%rdx, %rax	# tmp2484, tmp2485
	addq	$51636, %rax	#, tmp2486
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2487
	movslq	%edx, %rdx	# D.5442, tmp2488
	salq	$4, %rdx	#, tmp2489
	addq	%rdx, %rax	# tmp2489, tmp2490
	addq	$51640, %rax	#, tmp2491
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2492
	cltq
	addq	$33, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2493
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_636, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2494
	movslq	%edx, %rdx	# D.5442, tmp2495
	addq	$3227, %rdx	#, tmp2496
	salq	$4, %rdx	#, tmp2497
	addq	%rdx, %rax	# tmp2497, tmp2498
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2499
	movslq	%edx, %rdx	# D.5442, tmp2500
	salq	$4, %rdx	#, tmp2501
	addq	%rdx, %rax	# tmp2501, tmp2502
	addq	$51636, %rax	#, tmp2503
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2504
	movslq	%edx, %rdx	# D.5442, tmp2505
	salq	$4, %rdx	#, tmp2506
	addq	%rdx, %rax	# tmp2506, tmp2507
	addq	$51640, %rax	#, tmp2508
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2509
	cltq
	addq	$34, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2510
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_650, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2511
	movslq	%edx, %rdx	# D.5442, tmp2512
	addq	$3227, %rdx	#, tmp2513
	salq	$4, %rdx	#, tmp2514
	addq	%rdx, %rax	# tmp2514, tmp2515
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2516
	movslq	%edx, %rdx	# D.5442, tmp2517
	salq	$4, %rdx	#, tmp2518
	addq	%rdx, %rax	# tmp2518, tmp2519
	addq	$51636, %rax	#, tmp2520
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2521
	movslq	%edx, %rdx	# D.5442, tmp2522
	salq	$4, %rdx	#, tmp2523
	addq	%rdx, %rax	# tmp2523, tmp2524
	addq	$51640, %rax	#, tmp2525
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 421 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2526
	cltq
	addq	$35, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2527
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_664, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2528
	movslq	%edx, %rdx	# D.5442, tmp2529
	addq	$3227, %rdx	#, tmp2530
	salq	$4, %rdx	#, tmp2531
	addq	%rdx, %rax	# tmp2531, tmp2532
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2533
	movslq	%edx, %rdx	# D.5442, tmp2534
	salq	$4, %rdx	#, tmp2535
	addq	%rdx, %rax	# tmp2535, tmp2536
	addq	$51636, %rax	#, tmp2537
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2538
	movslq	%edx, %rdx	# D.5442, tmp2539
	salq	$4, %rdx	#, tmp2540
	addq	%rdx, %rax	# tmp2540, tmp2541
	addq	$51640, %rax	#, tmp2542
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2543
	cltq
	addq	$36, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2544
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_678, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2545
	movslq	%edx, %rdx	# D.5442, tmp2546
	addq	$3227, %rdx	#, tmp2547
	salq	$4, %rdx	#, tmp2548
	addq	%rdx, %rax	# tmp2548, tmp2549
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2550
	movslq	%edx, %rdx	# D.5442, tmp2551
	salq	$4, %rdx	#, tmp2552
	addq	%rdx, %rax	# tmp2552, tmp2553
	addq	$51636, %rax	#, tmp2554
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2555
	movslq	%edx, %rdx	# D.5442, tmp2556
	salq	$4, %rdx	#, tmp2557
	addq	%rdx, %rax	# tmp2557, tmp2558
	addq	$51640, %rax	#, tmp2559
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2560
	cltq
	addq	$37, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2561
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_692, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2562
	movslq	%edx, %rdx	# D.5442, tmp2563
	addq	$3227, %rdx	#, tmp2564
	salq	$4, %rdx	#, tmp2565
	addq	%rdx, %rax	# tmp2565, tmp2566
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2567
	movslq	%edx, %rdx	# D.5442, tmp2568
	salq	$4, %rdx	#, tmp2569
	addq	%rdx, %rax	# tmp2569, tmp2570
	addq	$51636, %rax	#, tmp2571
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2572
	movslq	%edx, %rdx	# D.5442, tmp2573
	salq	$4, %rdx	#, tmp2574
	addq	%rdx, %rax	# tmp2574, tmp2575
	addq	$51640, %rax	#, tmp2576
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2577
	cltq
	addq	$38, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2578
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_706, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2579
	movslq	%edx, %rdx	# D.5442, tmp2580
	addq	$3227, %rdx	#, tmp2581
	salq	$4, %rdx	#, tmp2582
	addq	%rdx, %rax	# tmp2582, tmp2583
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2584
	movslq	%edx, %rdx	# D.5442, tmp2585
	salq	$4, %rdx	#, tmp2586
	addq	%rdx, %rax	# tmp2586, tmp2587
	addq	$51636, %rax	#, tmp2588
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2589
	movslq	%edx, %rdx	# D.5442, tmp2590
	salq	$4, %rdx	#, tmp2591
	addq	%rdx, %rax	# tmp2591, tmp2592
	addq	$51640, %rax	#, tmp2593
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2594
	cltq
	addq	$39, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2595
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_720, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2596
	movslq	%edx, %rdx	# D.5442, tmp2597
	addq	$3227, %rdx	#, tmp2598
	salq	$4, %rdx	#, tmp2599
	addq	%rdx, %rax	# tmp2599, tmp2600
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2601
	movslq	%edx, %rdx	# D.5442, tmp2602
	salq	$4, %rdx	#, tmp2603
	addq	%rdx, %rax	# tmp2603, tmp2604
	addq	$51636, %rax	#, tmp2605
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2606
	movslq	%edx, %rdx	# D.5442, tmp2607
	salq	$4, %rdx	#, tmp2608
	addq	%rdx, %rax	# tmp2608, tmp2609
	addq	$51640, %rax	#, tmp2610
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 422 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2611
	cltq
	addq	$40, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2612
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_734, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2613
	movslq	%edx, %rdx	# D.5442, tmp2614
	addq	$3227, %rdx	#, tmp2615
	salq	$4, %rdx	#, tmp2616
	addq	%rdx, %rax	# tmp2616, tmp2617
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2618
	movslq	%edx, %rdx	# D.5442, tmp2619
	salq	$4, %rdx	#, tmp2620
	addq	%rdx, %rax	# tmp2620, tmp2621
	addq	$51636, %rax	#, tmp2622
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2623
	movslq	%edx, %rdx	# D.5442, tmp2624
	salq	$4, %rdx	#, tmp2625
	addq	%rdx, %rax	# tmp2625, tmp2626
	addq	$51640, %rax	#, tmp2627
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2628
	cltq
	addq	$41, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2629
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_748, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2630
	movslq	%edx, %rdx	# D.5442, tmp2631
	addq	$3227, %rdx	#, tmp2632
	salq	$4, %rdx	#, tmp2633
	addq	%rdx, %rax	# tmp2633, tmp2634
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2635
	movslq	%edx, %rdx	# D.5442, tmp2636
	salq	$4, %rdx	#, tmp2637
	addq	%rdx, %rax	# tmp2637, tmp2638
	addq	$51636, %rax	#, tmp2639
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2640
	movslq	%edx, %rdx	# D.5442, tmp2641
	salq	$4, %rdx	#, tmp2642
	addq	%rdx, %rax	# tmp2642, tmp2643
	addq	$51640, %rax	#, tmp2644
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2645
	cltq
	addq	$42, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2646
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_762, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2647
	movslq	%edx, %rdx	# D.5442, tmp2648
	addq	$3227, %rdx	#, tmp2649
	salq	$4, %rdx	#, tmp2650
	addq	%rdx, %rax	# tmp2650, tmp2651
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2652
	movslq	%edx, %rdx	# D.5442, tmp2653
	salq	$4, %rdx	#, tmp2654
	addq	%rdx, %rax	# tmp2654, tmp2655
	addq	$51636, %rax	#, tmp2656
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2657
	movslq	%edx, %rdx	# D.5442, tmp2658
	salq	$4, %rdx	#, tmp2659
	addq	%rdx, %rax	# tmp2659, tmp2660
	addq	$51640, %rax	#, tmp2661
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2662
	cltq
	addq	$43, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2663
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_776, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2664
	movslq	%edx, %rdx	# D.5442, tmp2665
	addq	$3227, %rdx	#, tmp2666
	salq	$4, %rdx	#, tmp2667
	addq	%rdx, %rax	# tmp2667, tmp2668
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2669
	movslq	%edx, %rdx	# D.5442, tmp2670
	salq	$4, %rdx	#, tmp2671
	addq	%rdx, %rax	# tmp2671, tmp2672
	addq	$51636, %rax	#, tmp2673
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2674
	movslq	%edx, %rdx	# D.5442, tmp2675
	salq	$4, %rdx	#, tmp2676
	addq	%rdx, %rax	# tmp2676, tmp2677
	addq	$51640, %rax	#, tmp2678
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2679
	cltq
	addq	$44, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2680
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_790, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2681
	movslq	%edx, %rdx	# D.5442, tmp2682
	addq	$3227, %rdx	#, tmp2683
	salq	$4, %rdx	#, tmp2684
	addq	%rdx, %rax	# tmp2684, tmp2685
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2686
	movslq	%edx, %rdx	# D.5442, tmp2687
	salq	$4, %rdx	#, tmp2688
	addq	%rdx, %rax	# tmp2688, tmp2689
	addq	$51636, %rax	#, tmp2690
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2691
	movslq	%edx, %rdx	# D.5442, tmp2692
	salq	$4, %rdx	#, tmp2693
	addq	%rdx, %rax	# tmp2693, tmp2694
	addq	$51640, %rax	#, tmp2695
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 423 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2696
	cltq
	addq	$45, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2697
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_804, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2698
	movslq	%edx, %rdx	# D.5442, tmp2699
	addq	$3227, %rdx	#, tmp2700
	salq	$4, %rdx	#, tmp2701
	addq	%rdx, %rax	# tmp2701, tmp2702
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2703
	movslq	%edx, %rdx	# D.5442, tmp2704
	salq	$4, %rdx	#, tmp2705
	addq	%rdx, %rax	# tmp2705, tmp2706
	addq	$51636, %rax	#, tmp2707
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2708
	movslq	%edx, %rdx	# D.5442, tmp2709
	salq	$4, %rdx	#, tmp2710
	addq	%rdx, %rax	# tmp2710, tmp2711
	addq	$51640, %rax	#, tmp2712
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2713
	cltq
	addq	$46, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2714
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_818, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2715
	movslq	%edx, %rdx	# D.5442, tmp2716
	addq	$3227, %rdx	#, tmp2717
	salq	$4, %rdx	#, tmp2718
	addq	%rdx, %rax	# tmp2718, tmp2719
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2720
	movslq	%edx, %rdx	# D.5442, tmp2721
	salq	$4, %rdx	#, tmp2722
	addq	%rdx, %rax	# tmp2722, tmp2723
	addq	$51636, %rax	#, tmp2724
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2725
	movslq	%edx, %rdx	# D.5442, tmp2726
	salq	$4, %rdx	#, tmp2727
	addq	%rdx, %rax	# tmp2727, tmp2728
	addq	$51640, %rax	#, tmp2729
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2730
	cltq
	addq	$47, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2731
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_832, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2732
	movslq	%edx, %rdx	# D.5442, tmp2733
	addq	$3227, %rdx	#, tmp2734
	salq	$4, %rdx	#, tmp2735
	addq	%rdx, %rax	# tmp2735, tmp2736
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2737
	movslq	%edx, %rdx	# D.5442, tmp2738
	salq	$4, %rdx	#, tmp2739
	addq	%rdx, %rax	# tmp2739, tmp2740
	addq	$51636, %rax	#, tmp2741
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2742
	movslq	%edx, %rdx	# D.5442, tmp2743
	salq	$4, %rdx	#, tmp2744
	addq	%rdx, %rax	# tmp2744, tmp2745
	addq	$51640, %rax	#, tmp2746
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2747
	cltq
	addq	$48, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2748
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_846, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2749
	movslq	%edx, %rdx	# D.5442, tmp2750
	addq	$3227, %rdx	#, tmp2751
	salq	$4, %rdx	#, tmp2752
	addq	%rdx, %rax	# tmp2752, tmp2753
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2754
	movslq	%edx, %rdx	# D.5442, tmp2755
	salq	$4, %rdx	#, tmp2756
	addq	%rdx, %rax	# tmp2756, tmp2757
	addq	$51636, %rax	#, tmp2758
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2759
	movslq	%edx, %rdx	# D.5442, tmp2760
	salq	$4, %rdx	#, tmp2761
	addq	%rdx, %rax	# tmp2761, tmp2762
	addq	$51640, %rax	#, tmp2763
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	movl	-208(%rbp), %eax	# gs, tmp2764
	cltq
	addq	$49, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2765
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %ebx	# *_860, icv
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2766
	movslq	%edx, %rdx	# D.5442, tmp2767
	addq	$3227, %rdx	#, tmp2768
	salq	$4, %rdx	#, tmp2769
	addq	%rdx, %rax	# tmp2769, tmp2770
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r14d	# D.5446, cost01
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2771
	movslq	%edx, %rdx	# D.5442, tmp2772
	salq	$4, %rdx	#, tmp2773
	addq	%rdx, %rax	# tmp2773, tmp2774
	addq	$51636, %rax	#, tmp2775
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r13d	# D.5446, cost23
	movzwl	%bx, %edx	# icv, D.5442
	movq	-248(%rbp), %rax	# s, tmp2776
	movslq	%edx, %rdx	# D.5442, tmp2777
	salq	$4, %rdx	#, tmp2778
	addq	%rdx, %rax	# tmp2778, tmp2779
	addq	$51640, %rax	#, tmp2780
	movl	8(%rax), %eax	# s_59(D)->len_pack, D.5446
	addl	%eax, %r12d	# D.5446, cost45
	.loc 1 427 0 discriminator 1
	movl	%r14d, %eax	# cost01, D.5452
	movw	%ax, -112(%rbp)	# D.5452, cost
	movl	%r14d, %eax	# cost01, D.5446
	shrl	$16, %eax	#, D.5446
	movw	%ax, -110(%rbp)	# D.5452, cost
	.loc 1 428 0 discriminator 1
	movl	%r13d, %eax	# cost23, D.5452
	movw	%ax, -108(%rbp)	# D.5452, cost
	movl	%r13d, %eax	# cost23, D.5446
	shrl	$16, %eax	#, D.5446
	movw	%ax, -106(%rbp)	# D.5452, cost
	.loc 1 429 0 discriminator 1
	movl	%r12d, %eax	# cost45, D.5452
	movw	%ax, -104(%rbp)	# D.5452, cost
	movl	%r12d, %eax	# cost45, D.5446
	shrl	$16, %eax	#, D.5446
	movw	%ax, -102(%rbp)	# D.5452, cost
.LBE6:
	.loc 1 402 0 discriminator 1
	jmp	.L78	#
.L77:
	.loc 1 433 0
	movl	-208(%rbp), %eax	# gs, tmp2781
	movl	%eax, -216(%rbp)	# tmp2781, i
	jmp	.L79	#
.L82:
.LBB7:
	.loc 1 434 0
	movl	-216(%rbp), %eax	# i, tmp2782
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5449
	movq	-136(%rbp), %rax	# mtfv, tmp2783
	addq	%rdx, %rax	# D.5449, D.5450
	movzwl	(%rax), %eax	# *_883, tmp2784
	movw	%ax, -228(%rbp)	# tmp2784, icv
	.loc 1 435 0
	movl	$0, -220(%rbp)	#, t
	jmp	.L80	#
.L81:
	.loc 1 435 0 is_stmt 0 discriminator 2
	movl	-220(%rbp), %eax	# t, tmp2786
	cltq
	movzwl	-112(%rbp,%rax,2), %edx	# cost, D.5452
	movzwl	-228(%rbp), %eax	# icv, D.5442
	movq	-248(%rbp), %rsi	# s, tmp2787
	movslq	%eax, %rcx	# D.5442, tmp2788
	movl	-220(%rbp), %eax	# t, tmp2790
	cltq
	addq	%rax, %rax	# tmp2792
	movq	%rax, %rdi	# tmp2791, tmp2793
	salq	$7, %rdi	#, tmp2793
	addq	%rdi, %rax	# tmp2793, tmp2791
	addq	%rsi, %rax	# tmp2787, tmp2794
	addq	%rcx, %rax	# tmp2788, tmp2795
	addq	$37696, %rax	#, tmp2796
	movzbl	12(%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5452
	addl	%eax, %edx	# D.5452, D.5452
	movl	-220(%rbp), %eax	# t, tmp2798
	cltq
	movw	%dx, -112(%rbp,%rax,2)	# D.5452, cost
	addl	$1, -220(%rbp)	#, t
.L80:
	.loc 1 435 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp2799
	cmpl	-168(%rbp), %eax	# nGroups, tmp2799
	jl	.L81	#,
.LBE7:
	.loc 1 433 0 is_stmt 1
	addl	$1, -216(%rbp)	#, i
.L79:
	.loc 1 433 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp2800
	cmpl	-204(%rbp), %eax	# ge, tmp2800
	jle	.L82	#,
.L78:
	.loc 1 443 0 is_stmt 1
	movl	$999999999, -192(%rbp)	#, bc
	movl	$-1, -196(%rbp)	#, bt
	.loc 1 444 0
	movl	$0, -220(%rbp)	#, t
	jmp	.L83	#
.L85:
	.loc 1 445 0
	movl	-220(%rbp), %eax	# t, tmp2802
	cltq
	movzwl	-112(%rbp,%rax,2), %eax	# cost, D.5452
	movzwl	%ax, %eax	# D.5452, D.5442
	cmpl	-192(%rbp), %eax	# bc, D.5442
	jge	.L84	#,
	.loc 1 445 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp2804
	cltq
	movzwl	-112(%rbp,%rax,2), %eax	# cost, D.5452
	movzwl	%ax, %eax	# D.5452, tmp2805
	movl	%eax, -192(%rbp)	# tmp2805, bc
	movl	-220(%rbp), %eax	# t, tmp2806
	movl	%eax, -196(%rbp)	# tmp2806, bt
.L84:
	.loc 1 444 0 is_stmt 1
	addl	$1, -220(%rbp)	#, t
.L83:
	.loc 1 444 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp2807
	cmpl	-168(%rbp), %eax	# nGroups, tmp2807
	jl	.L85	#,
	.loc 1 446 0 is_stmt 1
	movl	-192(%rbp), %eax	# bc, tmp2808
	addl	%eax, -200(%rbp)	# tmp2808, totc
	.loc 1 447 0
	movl	-196(%rbp), %eax	# bt, tmp2810
	cltq
	movl	-96(%rbp,%rax,4), %eax	# fave, D.5442
	leal	1(%rax), %edx	#, D.5442
	movl	-196(%rbp), %eax	# bt, tmp2812
	cltq
	movl	%edx, -96(%rbp,%rax,4)	# D.5442, fave
	.loc 1 448 0
	movl	-196(%rbp), %eax	# bt, tmp2813
	movl	%eax, %ecx	# tmp2813, D.5445
	movq	-248(%rbp), %rdx	# s, tmp2814
	movl	-184(%rbp), %eax	# nSelectors, tmp2816
	cltq
	movb	%cl, 1704(%rdx,%rax)	# D.5445, s_59(D)->selector
	.loc 1 449 0
	addl	$1, -184(%rbp)	#, nSelectors
	.loc 1 454 0
	cmpl	$6, -168(%rbp)	#, nGroups
	jne	.L86	#,
	.loc 1 454 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp2817
	movl	-204(%rbp), %edx	# ge, tmp2818
	subl	%eax, %edx	# tmp2817, D.5442
	movl	%edx, %eax	# D.5442, D.5442
	cmpl	$49, %eax	#, D.5442
	jne	.L86	#,
	.loc 1 459 0 is_stmt 1
	movl	-208(%rbp), %eax	# gs, tmp2819
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5449
	movq	-136(%rbp), %rax	# mtfv, tmp2820
	addq	%rdx, %rax	# D.5449, D.5450
	movzwl	(%rax), %eax	# *_910, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2821
	movslq	%edx, %rsi	# D.5442, tmp2822
	movl	-196(%rbp), %eax	# bt, tmp2824
	cltq
	addq	%rax, %rax	# tmp2826
	movq	%rax, %rdi	# tmp2825, tmp2827
	salq	$7, %rdi	#, tmp2827
	addq	%rdi, %rax	# tmp2827, tmp2825
	addq	%rsi, %rax	# tmp2822, tmp2828
	addq	$11360, %rax	#, tmp2829
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2830
	movslq	%edx, %rdx	# D.5442, tmp2831
	movl	-196(%rbp), %eax	# bt, tmp2833
	cltq
	addq	%rax, %rax	# tmp2835
	movq	%rax, %rdi	# tmp2834, tmp2836
	salq	$7, %rdi	#, tmp2836
	addq	%rdi, %rax	# tmp2836, tmp2834
	addq	%rdx, %rax	# tmp2831, tmp2837
	addq	$11360, %rax	#, tmp2838
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp2839
	cltq
	addq	$1, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2840
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_918, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2841
	movslq	%edx, %rsi	# D.5442, tmp2842
	movl	-196(%rbp), %eax	# bt, tmp2844
	cltq
	addq	%rax, %rax	# tmp2846
	movq	%rax, %rdi	# tmp2845, tmp2847
	salq	$7, %rdi	#, tmp2847
	addq	%rdi, %rax	# tmp2847, tmp2845
	addq	%rsi, %rax	# tmp2842, tmp2848
	addq	$11360, %rax	#, tmp2849
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2850
	movslq	%edx, %rdx	# D.5442, tmp2851
	movl	-196(%rbp), %eax	# bt, tmp2853
	cltq
	addq	%rax, %rax	# tmp2855
	movq	%rax, %rdi	# tmp2854, tmp2856
	salq	$7, %rdi	#, tmp2856
	addq	%rdi, %rax	# tmp2856, tmp2854
	addq	%rdx, %rax	# tmp2851, tmp2857
	addq	$11360, %rax	#, tmp2858
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp2859
	cltq
	addq	$2, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2860
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_926, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2861
	movslq	%edx, %rsi	# D.5442, tmp2862
	movl	-196(%rbp), %eax	# bt, tmp2864
	cltq
	addq	%rax, %rax	# tmp2866
	movq	%rax, %rdi	# tmp2865, tmp2867
	salq	$7, %rdi	#, tmp2867
	addq	%rdi, %rax	# tmp2867, tmp2865
	addq	%rsi, %rax	# tmp2862, tmp2868
	addq	$11360, %rax	#, tmp2869
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2870
	movslq	%edx, %rdx	# D.5442, tmp2871
	movl	-196(%rbp), %eax	# bt, tmp2873
	cltq
	addq	%rax, %rax	# tmp2875
	movq	%rax, %rdi	# tmp2874, tmp2876
	salq	$7, %rdi	#, tmp2876
	addq	%rdi, %rax	# tmp2876, tmp2874
	addq	%rdx, %rax	# tmp2871, tmp2877
	addq	$11360, %rax	#, tmp2878
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp2879
	cltq
	addq	$3, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2880
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_934, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2881
	movslq	%edx, %rsi	# D.5442, tmp2882
	movl	-196(%rbp), %eax	# bt, tmp2884
	cltq
	addq	%rax, %rax	# tmp2886
	movq	%rax, %rdi	# tmp2885, tmp2887
	salq	$7, %rdi	#, tmp2887
	addq	%rdi, %rax	# tmp2887, tmp2885
	addq	%rsi, %rax	# tmp2882, tmp2888
	addq	$11360, %rax	#, tmp2889
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2890
	movslq	%edx, %rdx	# D.5442, tmp2891
	movl	-196(%rbp), %eax	# bt, tmp2893
	cltq
	addq	%rax, %rax	# tmp2895
	movq	%rax, %rdi	# tmp2894, tmp2896
	salq	$7, %rdi	#, tmp2896
	addq	%rdi, %rax	# tmp2896, tmp2894
	addq	%rdx, %rax	# tmp2891, tmp2897
	addq	$11360, %rax	#, tmp2898
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp2899
	cltq
	addq	$4, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2900
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_942, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2901
	movslq	%edx, %rsi	# D.5442, tmp2902
	movl	-196(%rbp), %eax	# bt, tmp2904
	cltq
	addq	%rax, %rax	# tmp2906
	movq	%rax, %rdi	# tmp2905, tmp2907
	salq	$7, %rdi	#, tmp2907
	addq	%rdi, %rax	# tmp2907, tmp2905
	addq	%rsi, %rax	# tmp2902, tmp2908
	addq	$11360, %rax	#, tmp2909
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2910
	movslq	%edx, %rdx	# D.5442, tmp2911
	movl	-196(%rbp), %eax	# bt, tmp2913
	cltq
	addq	%rax, %rax	# tmp2915
	movq	%rax, %rdi	# tmp2914, tmp2916
	salq	$7, %rdi	#, tmp2916
	addq	%rdi, %rax	# tmp2916, tmp2914
	addq	%rdx, %rax	# tmp2911, tmp2917
	addq	$11360, %rax	#, tmp2918
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 460 0
	movl	-208(%rbp), %eax	# gs, tmp2919
	cltq
	addq	$5, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2920
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_950, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2921
	movslq	%edx, %rsi	# D.5442, tmp2922
	movl	-196(%rbp), %eax	# bt, tmp2924
	cltq
	addq	%rax, %rax	# tmp2926
	movq	%rax, %rdi	# tmp2925, tmp2927
	salq	$7, %rdi	#, tmp2927
	addq	%rdi, %rax	# tmp2927, tmp2925
	addq	%rsi, %rax	# tmp2922, tmp2928
	addq	$11360, %rax	#, tmp2929
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2930
	movslq	%edx, %rdx	# D.5442, tmp2931
	movl	-196(%rbp), %eax	# bt, tmp2933
	cltq
	addq	%rax, %rax	# tmp2935
	movq	%rax, %rdi	# tmp2934, tmp2936
	salq	$7, %rdi	#, tmp2936
	addq	%rdi, %rax	# tmp2936, tmp2934
	addq	%rdx, %rax	# tmp2931, tmp2937
	addq	$11360, %rax	#, tmp2938
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp2939
	cltq
	addq	$6, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2940
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_958, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2941
	movslq	%edx, %rsi	# D.5442, tmp2942
	movl	-196(%rbp), %eax	# bt, tmp2944
	cltq
	addq	%rax, %rax	# tmp2946
	movq	%rax, %rdi	# tmp2945, tmp2947
	salq	$7, %rdi	#, tmp2947
	addq	%rdi, %rax	# tmp2947, tmp2945
	addq	%rsi, %rax	# tmp2942, tmp2948
	addq	$11360, %rax	#, tmp2949
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2950
	movslq	%edx, %rdx	# D.5442, tmp2951
	movl	-196(%rbp), %eax	# bt, tmp2953
	cltq
	addq	%rax, %rax	# tmp2955
	movq	%rax, %rdi	# tmp2954, tmp2956
	salq	$7, %rdi	#, tmp2956
	addq	%rdi, %rax	# tmp2956, tmp2954
	addq	%rdx, %rax	# tmp2951, tmp2957
	addq	$11360, %rax	#, tmp2958
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp2959
	cltq
	addq	$7, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2960
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_966, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2961
	movslq	%edx, %rsi	# D.5442, tmp2962
	movl	-196(%rbp), %eax	# bt, tmp2964
	cltq
	addq	%rax, %rax	# tmp2966
	movq	%rax, %rdi	# tmp2965, tmp2967
	salq	$7, %rdi	#, tmp2967
	addq	%rdi, %rax	# tmp2967, tmp2965
	addq	%rsi, %rax	# tmp2962, tmp2968
	addq	$11360, %rax	#, tmp2969
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2970
	movslq	%edx, %rdx	# D.5442, tmp2971
	movl	-196(%rbp), %eax	# bt, tmp2973
	cltq
	addq	%rax, %rax	# tmp2975
	movq	%rax, %rdi	# tmp2974, tmp2976
	salq	$7, %rdi	#, tmp2976
	addq	%rdi, %rax	# tmp2976, tmp2974
	addq	%rdx, %rax	# tmp2971, tmp2977
	addq	$11360, %rax	#, tmp2978
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp2979
	cltq
	addq	$8, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp2980
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_974, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2981
	movslq	%edx, %rsi	# D.5442, tmp2982
	movl	-196(%rbp), %eax	# bt, tmp2984
	cltq
	addq	%rax, %rax	# tmp2986
	movq	%rax, %rdi	# tmp2985, tmp2987
	salq	$7, %rdi	#, tmp2987
	addq	%rdi, %rax	# tmp2987, tmp2985
	addq	%rsi, %rax	# tmp2982, tmp2988
	addq	$11360, %rax	#, tmp2989
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp2990
	movslq	%edx, %rdx	# D.5442, tmp2991
	movl	-196(%rbp), %eax	# bt, tmp2993
	cltq
	addq	%rax, %rax	# tmp2995
	movq	%rax, %rdi	# tmp2994, tmp2996
	salq	$7, %rdi	#, tmp2996
	addq	%rdi, %rax	# tmp2996, tmp2994
	addq	%rdx, %rax	# tmp2991, tmp2997
	addq	$11360, %rax	#, tmp2998
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp2999
	cltq
	addq	$9, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3000
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_982, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3001
	movslq	%edx, %rsi	# D.5442, tmp3002
	movl	-196(%rbp), %eax	# bt, tmp3004
	cltq
	addq	%rax, %rax	# tmp3006
	movq	%rax, %rdi	# tmp3005, tmp3007
	salq	$7, %rdi	#, tmp3007
	addq	%rdi, %rax	# tmp3007, tmp3005
	addq	%rsi, %rax	# tmp3002, tmp3008
	addq	$11360, %rax	#, tmp3009
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3010
	movslq	%edx, %rdx	# D.5442, tmp3011
	movl	-196(%rbp), %eax	# bt, tmp3013
	cltq
	addq	%rax, %rax	# tmp3015
	movq	%rax, %rdi	# tmp3014, tmp3016
	salq	$7, %rdi	#, tmp3016
	addq	%rdi, %rax	# tmp3016, tmp3014
	addq	%rdx, %rax	# tmp3011, tmp3017
	addq	$11360, %rax	#, tmp3018
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 461 0
	movl	-208(%rbp), %eax	# gs, tmp3019
	cltq
	addq	$10, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3020
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_990, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3021
	movslq	%edx, %rsi	# D.5442, tmp3022
	movl	-196(%rbp), %eax	# bt, tmp3024
	cltq
	addq	%rax, %rax	# tmp3026
	movq	%rax, %rdi	# tmp3025, tmp3027
	salq	$7, %rdi	#, tmp3027
	addq	%rdi, %rax	# tmp3027, tmp3025
	addq	%rsi, %rax	# tmp3022, tmp3028
	addq	$11360, %rax	#, tmp3029
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3030
	movslq	%edx, %rdx	# D.5442, tmp3031
	movl	-196(%rbp), %eax	# bt, tmp3033
	cltq
	addq	%rax, %rax	# tmp3035
	movq	%rax, %rdi	# tmp3034, tmp3036
	salq	$7, %rdi	#, tmp3036
	addq	%rdi, %rax	# tmp3036, tmp3034
	addq	%rdx, %rax	# tmp3031, tmp3037
	addq	$11360, %rax	#, tmp3038
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3039
	cltq
	addq	$11, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3040
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_998, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3041
	movslq	%edx, %rsi	# D.5442, tmp3042
	movl	-196(%rbp), %eax	# bt, tmp3044
	cltq
	addq	%rax, %rax	# tmp3046
	movq	%rax, %rdi	# tmp3045, tmp3047
	salq	$7, %rdi	#, tmp3047
	addq	%rdi, %rax	# tmp3047, tmp3045
	addq	%rsi, %rax	# tmp3042, tmp3048
	addq	$11360, %rax	#, tmp3049
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3050
	movslq	%edx, %rdx	# D.5442, tmp3051
	movl	-196(%rbp), %eax	# bt, tmp3053
	cltq
	addq	%rax, %rax	# tmp3055
	movq	%rax, %rdi	# tmp3054, tmp3056
	salq	$7, %rdi	#, tmp3056
	addq	%rdi, %rax	# tmp3056, tmp3054
	addq	%rdx, %rax	# tmp3051, tmp3057
	addq	$11360, %rax	#, tmp3058
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3059
	cltq
	addq	$12, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3060
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1006, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3061
	movslq	%edx, %rsi	# D.5442, tmp3062
	movl	-196(%rbp), %eax	# bt, tmp3064
	cltq
	addq	%rax, %rax	# tmp3066
	movq	%rax, %rdi	# tmp3065, tmp3067
	salq	$7, %rdi	#, tmp3067
	addq	%rdi, %rax	# tmp3067, tmp3065
	addq	%rsi, %rax	# tmp3062, tmp3068
	addq	$11360, %rax	#, tmp3069
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3070
	movslq	%edx, %rdx	# D.5442, tmp3071
	movl	-196(%rbp), %eax	# bt, tmp3073
	cltq
	addq	%rax, %rax	# tmp3075
	movq	%rax, %rdi	# tmp3074, tmp3076
	salq	$7, %rdi	#, tmp3076
	addq	%rdi, %rax	# tmp3076, tmp3074
	addq	%rdx, %rax	# tmp3071, tmp3077
	addq	$11360, %rax	#, tmp3078
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3079
	cltq
	addq	$13, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3080
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1014, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3081
	movslq	%edx, %rsi	# D.5442, tmp3082
	movl	-196(%rbp), %eax	# bt, tmp3084
	cltq
	addq	%rax, %rax	# tmp3086
	movq	%rax, %rdi	# tmp3085, tmp3087
	salq	$7, %rdi	#, tmp3087
	addq	%rdi, %rax	# tmp3087, tmp3085
	addq	%rsi, %rax	# tmp3082, tmp3088
	addq	$11360, %rax	#, tmp3089
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3090
	movslq	%edx, %rdx	# D.5442, tmp3091
	movl	-196(%rbp), %eax	# bt, tmp3093
	cltq
	addq	%rax, %rax	# tmp3095
	movq	%rax, %rdi	# tmp3094, tmp3096
	salq	$7, %rdi	#, tmp3096
	addq	%rdi, %rax	# tmp3096, tmp3094
	addq	%rdx, %rax	# tmp3091, tmp3097
	addq	$11360, %rax	#, tmp3098
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3099
	cltq
	addq	$14, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3100
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1022, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3101
	movslq	%edx, %rsi	# D.5442, tmp3102
	movl	-196(%rbp), %eax	# bt, tmp3104
	cltq
	addq	%rax, %rax	# tmp3106
	movq	%rax, %rdi	# tmp3105, tmp3107
	salq	$7, %rdi	#, tmp3107
	addq	%rdi, %rax	# tmp3107, tmp3105
	addq	%rsi, %rax	# tmp3102, tmp3108
	addq	$11360, %rax	#, tmp3109
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3110
	movslq	%edx, %rdx	# D.5442, tmp3111
	movl	-196(%rbp), %eax	# bt, tmp3113
	cltq
	addq	%rax, %rax	# tmp3115
	movq	%rax, %rdi	# tmp3114, tmp3116
	salq	$7, %rdi	#, tmp3116
	addq	%rdi, %rax	# tmp3116, tmp3114
	addq	%rdx, %rax	# tmp3111, tmp3117
	addq	$11360, %rax	#, tmp3118
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 462 0
	movl	-208(%rbp), %eax	# gs, tmp3119
	cltq
	addq	$15, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3120
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1030, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3121
	movslq	%edx, %rsi	# D.5442, tmp3122
	movl	-196(%rbp), %eax	# bt, tmp3124
	cltq
	addq	%rax, %rax	# tmp3126
	movq	%rax, %rdi	# tmp3125, tmp3127
	salq	$7, %rdi	#, tmp3127
	addq	%rdi, %rax	# tmp3127, tmp3125
	addq	%rsi, %rax	# tmp3122, tmp3128
	addq	$11360, %rax	#, tmp3129
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3130
	movslq	%edx, %rdx	# D.5442, tmp3131
	movl	-196(%rbp), %eax	# bt, tmp3133
	cltq
	addq	%rax, %rax	# tmp3135
	movq	%rax, %rdi	# tmp3134, tmp3136
	salq	$7, %rdi	#, tmp3136
	addq	%rdi, %rax	# tmp3136, tmp3134
	addq	%rdx, %rax	# tmp3131, tmp3137
	addq	$11360, %rax	#, tmp3138
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3139
	cltq
	addq	$16, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3140
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1038, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3141
	movslq	%edx, %rsi	# D.5442, tmp3142
	movl	-196(%rbp), %eax	# bt, tmp3144
	cltq
	addq	%rax, %rax	# tmp3146
	movq	%rax, %rdi	# tmp3145, tmp3147
	salq	$7, %rdi	#, tmp3147
	addq	%rdi, %rax	# tmp3147, tmp3145
	addq	%rsi, %rax	# tmp3142, tmp3148
	addq	$11360, %rax	#, tmp3149
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3150
	movslq	%edx, %rdx	# D.5442, tmp3151
	movl	-196(%rbp), %eax	# bt, tmp3153
	cltq
	addq	%rax, %rax	# tmp3155
	movq	%rax, %rdi	# tmp3154, tmp3156
	salq	$7, %rdi	#, tmp3156
	addq	%rdi, %rax	# tmp3156, tmp3154
	addq	%rdx, %rax	# tmp3151, tmp3157
	addq	$11360, %rax	#, tmp3158
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3159
	cltq
	addq	$17, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3160
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1046, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3161
	movslq	%edx, %rsi	# D.5442, tmp3162
	movl	-196(%rbp), %eax	# bt, tmp3164
	cltq
	addq	%rax, %rax	# tmp3166
	movq	%rax, %rdi	# tmp3165, tmp3167
	salq	$7, %rdi	#, tmp3167
	addq	%rdi, %rax	# tmp3167, tmp3165
	addq	%rsi, %rax	# tmp3162, tmp3168
	addq	$11360, %rax	#, tmp3169
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3170
	movslq	%edx, %rdx	# D.5442, tmp3171
	movl	-196(%rbp), %eax	# bt, tmp3173
	cltq
	addq	%rax, %rax	# tmp3175
	movq	%rax, %rdi	# tmp3174, tmp3176
	salq	$7, %rdi	#, tmp3176
	addq	%rdi, %rax	# tmp3176, tmp3174
	addq	%rdx, %rax	# tmp3171, tmp3177
	addq	$11360, %rax	#, tmp3178
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3179
	cltq
	addq	$18, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3180
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1054, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3181
	movslq	%edx, %rsi	# D.5442, tmp3182
	movl	-196(%rbp), %eax	# bt, tmp3184
	cltq
	addq	%rax, %rax	# tmp3186
	movq	%rax, %rdi	# tmp3185, tmp3187
	salq	$7, %rdi	#, tmp3187
	addq	%rdi, %rax	# tmp3187, tmp3185
	addq	%rsi, %rax	# tmp3182, tmp3188
	addq	$11360, %rax	#, tmp3189
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3190
	movslq	%edx, %rdx	# D.5442, tmp3191
	movl	-196(%rbp), %eax	# bt, tmp3193
	cltq
	addq	%rax, %rax	# tmp3195
	movq	%rax, %rdi	# tmp3194, tmp3196
	salq	$7, %rdi	#, tmp3196
	addq	%rdi, %rax	# tmp3196, tmp3194
	addq	%rdx, %rax	# tmp3191, tmp3197
	addq	$11360, %rax	#, tmp3198
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3199
	cltq
	addq	$19, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3200
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1062, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3201
	movslq	%edx, %rsi	# D.5442, tmp3202
	movl	-196(%rbp), %eax	# bt, tmp3204
	cltq
	addq	%rax, %rax	# tmp3206
	movq	%rax, %rdi	# tmp3205, tmp3207
	salq	$7, %rdi	#, tmp3207
	addq	%rdi, %rax	# tmp3207, tmp3205
	addq	%rsi, %rax	# tmp3202, tmp3208
	addq	$11360, %rax	#, tmp3209
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3210
	movslq	%edx, %rdx	# D.5442, tmp3211
	movl	-196(%rbp), %eax	# bt, tmp3213
	cltq
	addq	%rax, %rax	# tmp3215
	movq	%rax, %rdi	# tmp3214, tmp3216
	salq	$7, %rdi	#, tmp3216
	addq	%rdi, %rax	# tmp3216, tmp3214
	addq	%rdx, %rax	# tmp3211, tmp3217
	addq	$11360, %rax	#, tmp3218
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 463 0
	movl	-208(%rbp), %eax	# gs, tmp3219
	cltq
	addq	$20, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3220
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1070, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3221
	movslq	%edx, %rsi	# D.5442, tmp3222
	movl	-196(%rbp), %eax	# bt, tmp3224
	cltq
	addq	%rax, %rax	# tmp3226
	movq	%rax, %rdi	# tmp3225, tmp3227
	salq	$7, %rdi	#, tmp3227
	addq	%rdi, %rax	# tmp3227, tmp3225
	addq	%rsi, %rax	# tmp3222, tmp3228
	addq	$11360, %rax	#, tmp3229
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3230
	movslq	%edx, %rdx	# D.5442, tmp3231
	movl	-196(%rbp), %eax	# bt, tmp3233
	cltq
	addq	%rax, %rax	# tmp3235
	movq	%rax, %rdi	# tmp3234, tmp3236
	salq	$7, %rdi	#, tmp3236
	addq	%rdi, %rax	# tmp3236, tmp3234
	addq	%rdx, %rax	# tmp3231, tmp3237
	addq	$11360, %rax	#, tmp3238
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3239
	cltq
	addq	$21, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3240
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1078, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3241
	movslq	%edx, %rsi	# D.5442, tmp3242
	movl	-196(%rbp), %eax	# bt, tmp3244
	cltq
	addq	%rax, %rax	# tmp3246
	movq	%rax, %rdi	# tmp3245, tmp3247
	salq	$7, %rdi	#, tmp3247
	addq	%rdi, %rax	# tmp3247, tmp3245
	addq	%rsi, %rax	# tmp3242, tmp3248
	addq	$11360, %rax	#, tmp3249
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3250
	movslq	%edx, %rdx	# D.5442, tmp3251
	movl	-196(%rbp), %eax	# bt, tmp3253
	cltq
	addq	%rax, %rax	# tmp3255
	movq	%rax, %rdi	# tmp3254, tmp3256
	salq	$7, %rdi	#, tmp3256
	addq	%rdi, %rax	# tmp3256, tmp3254
	addq	%rdx, %rax	# tmp3251, tmp3257
	addq	$11360, %rax	#, tmp3258
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3259
	cltq
	addq	$22, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3260
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1086, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3261
	movslq	%edx, %rsi	# D.5442, tmp3262
	movl	-196(%rbp), %eax	# bt, tmp3264
	cltq
	addq	%rax, %rax	# tmp3266
	movq	%rax, %rdi	# tmp3265, tmp3267
	salq	$7, %rdi	#, tmp3267
	addq	%rdi, %rax	# tmp3267, tmp3265
	addq	%rsi, %rax	# tmp3262, tmp3268
	addq	$11360, %rax	#, tmp3269
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3270
	movslq	%edx, %rdx	# D.5442, tmp3271
	movl	-196(%rbp), %eax	# bt, tmp3273
	cltq
	addq	%rax, %rax	# tmp3275
	movq	%rax, %rdi	# tmp3274, tmp3276
	salq	$7, %rdi	#, tmp3276
	addq	%rdi, %rax	# tmp3276, tmp3274
	addq	%rdx, %rax	# tmp3271, tmp3277
	addq	$11360, %rax	#, tmp3278
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3279
	cltq
	addq	$23, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3280
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1094, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3281
	movslq	%edx, %rsi	# D.5442, tmp3282
	movl	-196(%rbp), %eax	# bt, tmp3284
	cltq
	addq	%rax, %rax	# tmp3286
	movq	%rax, %rdi	# tmp3285, tmp3287
	salq	$7, %rdi	#, tmp3287
	addq	%rdi, %rax	# tmp3287, tmp3285
	addq	%rsi, %rax	# tmp3282, tmp3288
	addq	$11360, %rax	#, tmp3289
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3290
	movslq	%edx, %rdx	# D.5442, tmp3291
	movl	-196(%rbp), %eax	# bt, tmp3293
	cltq
	addq	%rax, %rax	# tmp3295
	movq	%rax, %rdi	# tmp3294, tmp3296
	salq	$7, %rdi	#, tmp3296
	addq	%rdi, %rax	# tmp3296, tmp3294
	addq	%rdx, %rax	# tmp3291, tmp3297
	addq	$11360, %rax	#, tmp3298
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3299
	cltq
	addq	$24, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3300
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1102, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3301
	movslq	%edx, %rsi	# D.5442, tmp3302
	movl	-196(%rbp), %eax	# bt, tmp3304
	cltq
	addq	%rax, %rax	# tmp3306
	movq	%rax, %rdi	# tmp3305, tmp3307
	salq	$7, %rdi	#, tmp3307
	addq	%rdi, %rax	# tmp3307, tmp3305
	addq	%rsi, %rax	# tmp3302, tmp3308
	addq	$11360, %rax	#, tmp3309
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3310
	movslq	%edx, %rdx	# D.5442, tmp3311
	movl	-196(%rbp), %eax	# bt, tmp3313
	cltq
	addq	%rax, %rax	# tmp3315
	movq	%rax, %rdi	# tmp3314, tmp3316
	salq	$7, %rdi	#, tmp3316
	addq	%rdi, %rax	# tmp3316, tmp3314
	addq	%rdx, %rax	# tmp3311, tmp3317
	addq	$11360, %rax	#, tmp3318
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 464 0
	movl	-208(%rbp), %eax	# gs, tmp3319
	cltq
	addq	$25, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3320
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1110, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3321
	movslq	%edx, %rsi	# D.5442, tmp3322
	movl	-196(%rbp), %eax	# bt, tmp3324
	cltq
	addq	%rax, %rax	# tmp3326
	movq	%rax, %rdi	# tmp3325, tmp3327
	salq	$7, %rdi	#, tmp3327
	addq	%rdi, %rax	# tmp3327, tmp3325
	addq	%rsi, %rax	# tmp3322, tmp3328
	addq	$11360, %rax	#, tmp3329
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3330
	movslq	%edx, %rdx	# D.5442, tmp3331
	movl	-196(%rbp), %eax	# bt, tmp3333
	cltq
	addq	%rax, %rax	# tmp3335
	movq	%rax, %rdi	# tmp3334, tmp3336
	salq	$7, %rdi	#, tmp3336
	addq	%rdi, %rax	# tmp3336, tmp3334
	addq	%rdx, %rax	# tmp3331, tmp3337
	addq	$11360, %rax	#, tmp3338
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3339
	cltq
	addq	$26, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3340
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1118, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3341
	movslq	%edx, %rsi	# D.5442, tmp3342
	movl	-196(%rbp), %eax	# bt, tmp3344
	cltq
	addq	%rax, %rax	# tmp3346
	movq	%rax, %rdi	# tmp3345, tmp3347
	salq	$7, %rdi	#, tmp3347
	addq	%rdi, %rax	# tmp3347, tmp3345
	addq	%rsi, %rax	# tmp3342, tmp3348
	addq	$11360, %rax	#, tmp3349
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3350
	movslq	%edx, %rdx	# D.5442, tmp3351
	movl	-196(%rbp), %eax	# bt, tmp3353
	cltq
	addq	%rax, %rax	# tmp3355
	movq	%rax, %rdi	# tmp3354, tmp3356
	salq	$7, %rdi	#, tmp3356
	addq	%rdi, %rax	# tmp3356, tmp3354
	addq	%rdx, %rax	# tmp3351, tmp3357
	addq	$11360, %rax	#, tmp3358
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3359
	cltq
	addq	$27, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3360
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1126, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3361
	movslq	%edx, %rsi	# D.5442, tmp3362
	movl	-196(%rbp), %eax	# bt, tmp3364
	cltq
	addq	%rax, %rax	# tmp3366
	movq	%rax, %rdi	# tmp3365, tmp3367
	salq	$7, %rdi	#, tmp3367
	addq	%rdi, %rax	# tmp3367, tmp3365
	addq	%rsi, %rax	# tmp3362, tmp3368
	addq	$11360, %rax	#, tmp3369
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3370
	movslq	%edx, %rdx	# D.5442, tmp3371
	movl	-196(%rbp), %eax	# bt, tmp3373
	cltq
	addq	%rax, %rax	# tmp3375
	movq	%rax, %rdi	# tmp3374, tmp3376
	salq	$7, %rdi	#, tmp3376
	addq	%rdi, %rax	# tmp3376, tmp3374
	addq	%rdx, %rax	# tmp3371, tmp3377
	addq	$11360, %rax	#, tmp3378
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3379
	cltq
	addq	$28, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3380
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1134, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3381
	movslq	%edx, %rsi	# D.5442, tmp3382
	movl	-196(%rbp), %eax	# bt, tmp3384
	cltq
	addq	%rax, %rax	# tmp3386
	movq	%rax, %rdi	# tmp3385, tmp3387
	salq	$7, %rdi	#, tmp3387
	addq	%rdi, %rax	# tmp3387, tmp3385
	addq	%rsi, %rax	# tmp3382, tmp3388
	addq	$11360, %rax	#, tmp3389
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3390
	movslq	%edx, %rdx	# D.5442, tmp3391
	movl	-196(%rbp), %eax	# bt, tmp3393
	cltq
	addq	%rax, %rax	# tmp3395
	movq	%rax, %rdi	# tmp3394, tmp3396
	salq	$7, %rdi	#, tmp3396
	addq	%rdi, %rax	# tmp3396, tmp3394
	addq	%rdx, %rax	# tmp3391, tmp3397
	addq	$11360, %rax	#, tmp3398
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3399
	cltq
	addq	$29, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3400
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1142, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3401
	movslq	%edx, %rsi	# D.5442, tmp3402
	movl	-196(%rbp), %eax	# bt, tmp3404
	cltq
	addq	%rax, %rax	# tmp3406
	movq	%rax, %rdi	# tmp3405, tmp3407
	salq	$7, %rdi	#, tmp3407
	addq	%rdi, %rax	# tmp3407, tmp3405
	addq	%rsi, %rax	# tmp3402, tmp3408
	addq	$11360, %rax	#, tmp3409
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3410
	movslq	%edx, %rdx	# D.5442, tmp3411
	movl	-196(%rbp), %eax	# bt, tmp3413
	cltq
	addq	%rax, %rax	# tmp3415
	movq	%rax, %rdi	# tmp3414, tmp3416
	salq	$7, %rdi	#, tmp3416
	addq	%rdi, %rax	# tmp3416, tmp3414
	addq	%rdx, %rax	# tmp3411, tmp3417
	addq	$11360, %rax	#, tmp3418
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 465 0
	movl	-208(%rbp), %eax	# gs, tmp3419
	cltq
	addq	$30, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3420
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1150, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3421
	movslq	%edx, %rsi	# D.5442, tmp3422
	movl	-196(%rbp), %eax	# bt, tmp3424
	cltq
	addq	%rax, %rax	# tmp3426
	movq	%rax, %rdi	# tmp3425, tmp3427
	salq	$7, %rdi	#, tmp3427
	addq	%rdi, %rax	# tmp3427, tmp3425
	addq	%rsi, %rax	# tmp3422, tmp3428
	addq	$11360, %rax	#, tmp3429
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3430
	movslq	%edx, %rdx	# D.5442, tmp3431
	movl	-196(%rbp), %eax	# bt, tmp3433
	cltq
	addq	%rax, %rax	# tmp3435
	movq	%rax, %rdi	# tmp3434, tmp3436
	salq	$7, %rdi	#, tmp3436
	addq	%rdi, %rax	# tmp3436, tmp3434
	addq	%rdx, %rax	# tmp3431, tmp3437
	addq	$11360, %rax	#, tmp3438
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3439
	cltq
	addq	$31, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3440
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1158, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3441
	movslq	%edx, %rsi	# D.5442, tmp3442
	movl	-196(%rbp), %eax	# bt, tmp3444
	cltq
	addq	%rax, %rax	# tmp3446
	movq	%rax, %rdi	# tmp3445, tmp3447
	salq	$7, %rdi	#, tmp3447
	addq	%rdi, %rax	# tmp3447, tmp3445
	addq	%rsi, %rax	# tmp3442, tmp3448
	addq	$11360, %rax	#, tmp3449
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3450
	movslq	%edx, %rdx	# D.5442, tmp3451
	movl	-196(%rbp), %eax	# bt, tmp3453
	cltq
	addq	%rax, %rax	# tmp3455
	movq	%rax, %rdi	# tmp3454, tmp3456
	salq	$7, %rdi	#, tmp3456
	addq	%rdi, %rax	# tmp3456, tmp3454
	addq	%rdx, %rax	# tmp3451, tmp3457
	addq	$11360, %rax	#, tmp3458
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3459
	cltq
	addq	$32, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3460
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1166, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3461
	movslq	%edx, %rsi	# D.5442, tmp3462
	movl	-196(%rbp), %eax	# bt, tmp3464
	cltq
	addq	%rax, %rax	# tmp3466
	movq	%rax, %rdi	# tmp3465, tmp3467
	salq	$7, %rdi	#, tmp3467
	addq	%rdi, %rax	# tmp3467, tmp3465
	addq	%rsi, %rax	# tmp3462, tmp3468
	addq	$11360, %rax	#, tmp3469
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3470
	movslq	%edx, %rdx	# D.5442, tmp3471
	movl	-196(%rbp), %eax	# bt, tmp3473
	cltq
	addq	%rax, %rax	# tmp3475
	movq	%rax, %rdi	# tmp3474, tmp3476
	salq	$7, %rdi	#, tmp3476
	addq	%rdi, %rax	# tmp3476, tmp3474
	addq	%rdx, %rax	# tmp3471, tmp3477
	addq	$11360, %rax	#, tmp3478
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3479
	cltq
	addq	$33, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3480
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1174, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3481
	movslq	%edx, %rsi	# D.5442, tmp3482
	movl	-196(%rbp), %eax	# bt, tmp3484
	cltq
	addq	%rax, %rax	# tmp3486
	movq	%rax, %rdi	# tmp3485, tmp3487
	salq	$7, %rdi	#, tmp3487
	addq	%rdi, %rax	# tmp3487, tmp3485
	addq	%rsi, %rax	# tmp3482, tmp3488
	addq	$11360, %rax	#, tmp3489
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3490
	movslq	%edx, %rdx	# D.5442, tmp3491
	movl	-196(%rbp), %eax	# bt, tmp3493
	cltq
	addq	%rax, %rax	# tmp3495
	movq	%rax, %rdi	# tmp3494, tmp3496
	salq	$7, %rdi	#, tmp3496
	addq	%rdi, %rax	# tmp3496, tmp3494
	addq	%rdx, %rax	# tmp3491, tmp3497
	addq	$11360, %rax	#, tmp3498
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3499
	cltq
	addq	$34, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3500
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1182, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3501
	movslq	%edx, %rsi	# D.5442, tmp3502
	movl	-196(%rbp), %eax	# bt, tmp3504
	cltq
	addq	%rax, %rax	# tmp3506
	movq	%rax, %rdi	# tmp3505, tmp3507
	salq	$7, %rdi	#, tmp3507
	addq	%rdi, %rax	# tmp3507, tmp3505
	addq	%rsi, %rax	# tmp3502, tmp3508
	addq	$11360, %rax	#, tmp3509
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3510
	movslq	%edx, %rdx	# D.5442, tmp3511
	movl	-196(%rbp), %eax	# bt, tmp3513
	cltq
	addq	%rax, %rax	# tmp3515
	movq	%rax, %rdi	# tmp3514, tmp3516
	salq	$7, %rdi	#, tmp3516
	addq	%rdi, %rax	# tmp3516, tmp3514
	addq	%rdx, %rax	# tmp3511, tmp3517
	addq	$11360, %rax	#, tmp3518
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 466 0
	movl	-208(%rbp), %eax	# gs, tmp3519
	cltq
	addq	$35, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3520
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1190, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3521
	movslq	%edx, %rsi	# D.5442, tmp3522
	movl	-196(%rbp), %eax	# bt, tmp3524
	cltq
	addq	%rax, %rax	# tmp3526
	movq	%rax, %rdi	# tmp3525, tmp3527
	salq	$7, %rdi	#, tmp3527
	addq	%rdi, %rax	# tmp3527, tmp3525
	addq	%rsi, %rax	# tmp3522, tmp3528
	addq	$11360, %rax	#, tmp3529
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3530
	movslq	%edx, %rdx	# D.5442, tmp3531
	movl	-196(%rbp), %eax	# bt, tmp3533
	cltq
	addq	%rax, %rax	# tmp3535
	movq	%rax, %rdi	# tmp3534, tmp3536
	salq	$7, %rdi	#, tmp3536
	addq	%rdi, %rax	# tmp3536, tmp3534
	addq	%rdx, %rax	# tmp3531, tmp3537
	addq	$11360, %rax	#, tmp3538
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3539
	cltq
	addq	$36, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3540
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1198, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3541
	movslq	%edx, %rsi	# D.5442, tmp3542
	movl	-196(%rbp), %eax	# bt, tmp3544
	cltq
	addq	%rax, %rax	# tmp3546
	movq	%rax, %rdi	# tmp3545, tmp3547
	salq	$7, %rdi	#, tmp3547
	addq	%rdi, %rax	# tmp3547, tmp3545
	addq	%rsi, %rax	# tmp3542, tmp3548
	addq	$11360, %rax	#, tmp3549
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3550
	movslq	%edx, %rdx	# D.5442, tmp3551
	movl	-196(%rbp), %eax	# bt, tmp3553
	cltq
	addq	%rax, %rax	# tmp3555
	movq	%rax, %rdi	# tmp3554, tmp3556
	salq	$7, %rdi	#, tmp3556
	addq	%rdi, %rax	# tmp3556, tmp3554
	addq	%rdx, %rax	# tmp3551, tmp3557
	addq	$11360, %rax	#, tmp3558
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3559
	cltq
	addq	$37, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3560
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1206, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3561
	movslq	%edx, %rsi	# D.5442, tmp3562
	movl	-196(%rbp), %eax	# bt, tmp3564
	cltq
	addq	%rax, %rax	# tmp3566
	movq	%rax, %rdi	# tmp3565, tmp3567
	salq	$7, %rdi	#, tmp3567
	addq	%rdi, %rax	# tmp3567, tmp3565
	addq	%rsi, %rax	# tmp3562, tmp3568
	addq	$11360, %rax	#, tmp3569
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3570
	movslq	%edx, %rdx	# D.5442, tmp3571
	movl	-196(%rbp), %eax	# bt, tmp3573
	cltq
	addq	%rax, %rax	# tmp3575
	movq	%rax, %rdi	# tmp3574, tmp3576
	salq	$7, %rdi	#, tmp3576
	addq	%rdi, %rax	# tmp3576, tmp3574
	addq	%rdx, %rax	# tmp3571, tmp3577
	addq	$11360, %rax	#, tmp3578
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3579
	cltq
	addq	$38, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3580
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1214, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3581
	movslq	%edx, %rsi	# D.5442, tmp3582
	movl	-196(%rbp), %eax	# bt, tmp3584
	cltq
	addq	%rax, %rax	# tmp3586
	movq	%rax, %rdi	# tmp3585, tmp3587
	salq	$7, %rdi	#, tmp3587
	addq	%rdi, %rax	# tmp3587, tmp3585
	addq	%rsi, %rax	# tmp3582, tmp3588
	addq	$11360, %rax	#, tmp3589
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3590
	movslq	%edx, %rdx	# D.5442, tmp3591
	movl	-196(%rbp), %eax	# bt, tmp3593
	cltq
	addq	%rax, %rax	# tmp3595
	movq	%rax, %rdi	# tmp3594, tmp3596
	salq	$7, %rdi	#, tmp3596
	addq	%rdi, %rax	# tmp3596, tmp3594
	addq	%rdx, %rax	# tmp3591, tmp3597
	addq	$11360, %rax	#, tmp3598
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3599
	cltq
	addq	$39, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3600
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1222, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3601
	movslq	%edx, %rsi	# D.5442, tmp3602
	movl	-196(%rbp), %eax	# bt, tmp3604
	cltq
	addq	%rax, %rax	# tmp3606
	movq	%rax, %rdi	# tmp3605, tmp3607
	salq	$7, %rdi	#, tmp3607
	addq	%rdi, %rax	# tmp3607, tmp3605
	addq	%rsi, %rax	# tmp3602, tmp3608
	addq	$11360, %rax	#, tmp3609
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3610
	movslq	%edx, %rdx	# D.5442, tmp3611
	movl	-196(%rbp), %eax	# bt, tmp3613
	cltq
	addq	%rax, %rax	# tmp3615
	movq	%rax, %rdi	# tmp3614, tmp3616
	salq	$7, %rdi	#, tmp3616
	addq	%rdi, %rax	# tmp3616, tmp3614
	addq	%rdx, %rax	# tmp3611, tmp3617
	addq	$11360, %rax	#, tmp3618
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 467 0
	movl	-208(%rbp), %eax	# gs, tmp3619
	cltq
	addq	$40, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3620
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1230, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3621
	movslq	%edx, %rsi	# D.5442, tmp3622
	movl	-196(%rbp), %eax	# bt, tmp3624
	cltq
	addq	%rax, %rax	# tmp3626
	movq	%rax, %rdi	# tmp3625, tmp3627
	salq	$7, %rdi	#, tmp3627
	addq	%rdi, %rax	# tmp3627, tmp3625
	addq	%rsi, %rax	# tmp3622, tmp3628
	addq	$11360, %rax	#, tmp3629
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3630
	movslq	%edx, %rdx	# D.5442, tmp3631
	movl	-196(%rbp), %eax	# bt, tmp3633
	cltq
	addq	%rax, %rax	# tmp3635
	movq	%rax, %rdi	# tmp3634, tmp3636
	salq	$7, %rdi	#, tmp3636
	addq	%rdi, %rax	# tmp3636, tmp3634
	addq	%rdx, %rax	# tmp3631, tmp3637
	addq	$11360, %rax	#, tmp3638
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3639
	cltq
	addq	$41, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3640
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1238, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3641
	movslq	%edx, %rsi	# D.5442, tmp3642
	movl	-196(%rbp), %eax	# bt, tmp3644
	cltq
	addq	%rax, %rax	# tmp3646
	movq	%rax, %rdi	# tmp3645, tmp3647
	salq	$7, %rdi	#, tmp3647
	addq	%rdi, %rax	# tmp3647, tmp3645
	addq	%rsi, %rax	# tmp3642, tmp3648
	addq	$11360, %rax	#, tmp3649
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3650
	movslq	%edx, %rdx	# D.5442, tmp3651
	movl	-196(%rbp), %eax	# bt, tmp3653
	cltq
	addq	%rax, %rax	# tmp3655
	movq	%rax, %rdi	# tmp3654, tmp3656
	salq	$7, %rdi	#, tmp3656
	addq	%rdi, %rax	# tmp3656, tmp3654
	addq	%rdx, %rax	# tmp3651, tmp3657
	addq	$11360, %rax	#, tmp3658
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3659
	cltq
	addq	$42, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3660
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1246, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3661
	movslq	%edx, %rsi	# D.5442, tmp3662
	movl	-196(%rbp), %eax	# bt, tmp3664
	cltq
	addq	%rax, %rax	# tmp3666
	movq	%rax, %rdi	# tmp3665, tmp3667
	salq	$7, %rdi	#, tmp3667
	addq	%rdi, %rax	# tmp3667, tmp3665
	addq	%rsi, %rax	# tmp3662, tmp3668
	addq	$11360, %rax	#, tmp3669
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3670
	movslq	%edx, %rdx	# D.5442, tmp3671
	movl	-196(%rbp), %eax	# bt, tmp3673
	cltq
	addq	%rax, %rax	# tmp3675
	movq	%rax, %rdi	# tmp3674, tmp3676
	salq	$7, %rdi	#, tmp3676
	addq	%rdi, %rax	# tmp3676, tmp3674
	addq	%rdx, %rax	# tmp3671, tmp3677
	addq	$11360, %rax	#, tmp3678
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3679
	cltq
	addq	$43, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3680
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1254, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3681
	movslq	%edx, %rsi	# D.5442, tmp3682
	movl	-196(%rbp), %eax	# bt, tmp3684
	cltq
	addq	%rax, %rax	# tmp3686
	movq	%rax, %rdi	# tmp3685, tmp3687
	salq	$7, %rdi	#, tmp3687
	addq	%rdi, %rax	# tmp3687, tmp3685
	addq	%rsi, %rax	# tmp3682, tmp3688
	addq	$11360, %rax	#, tmp3689
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3690
	movslq	%edx, %rdx	# D.5442, tmp3691
	movl	-196(%rbp), %eax	# bt, tmp3693
	cltq
	addq	%rax, %rax	# tmp3695
	movq	%rax, %rdi	# tmp3694, tmp3696
	salq	$7, %rdi	#, tmp3696
	addq	%rdi, %rax	# tmp3696, tmp3694
	addq	%rdx, %rax	# tmp3691, tmp3697
	addq	$11360, %rax	#, tmp3698
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3699
	cltq
	addq	$44, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3700
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1262, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3701
	movslq	%edx, %rsi	# D.5442, tmp3702
	movl	-196(%rbp), %eax	# bt, tmp3704
	cltq
	addq	%rax, %rax	# tmp3706
	movq	%rax, %rdi	# tmp3705, tmp3707
	salq	$7, %rdi	#, tmp3707
	addq	%rdi, %rax	# tmp3707, tmp3705
	addq	%rsi, %rax	# tmp3702, tmp3708
	addq	$11360, %rax	#, tmp3709
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3710
	movslq	%edx, %rdx	# D.5442, tmp3711
	movl	-196(%rbp), %eax	# bt, tmp3713
	cltq
	addq	%rax, %rax	# tmp3715
	movq	%rax, %rdi	# tmp3714, tmp3716
	salq	$7, %rdi	#, tmp3716
	addq	%rdi, %rax	# tmp3716, tmp3714
	addq	%rdx, %rax	# tmp3711, tmp3717
	addq	$11360, %rax	#, tmp3718
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 468 0
	movl	-208(%rbp), %eax	# gs, tmp3719
	cltq
	addq	$45, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3720
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1270, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3721
	movslq	%edx, %rsi	# D.5442, tmp3722
	movl	-196(%rbp), %eax	# bt, tmp3724
	cltq
	addq	%rax, %rax	# tmp3726
	movq	%rax, %rdi	# tmp3725, tmp3727
	salq	$7, %rdi	#, tmp3727
	addq	%rdi, %rax	# tmp3727, tmp3725
	addq	%rsi, %rax	# tmp3722, tmp3728
	addq	$11360, %rax	#, tmp3729
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3730
	movslq	%edx, %rdx	# D.5442, tmp3731
	movl	-196(%rbp), %eax	# bt, tmp3733
	cltq
	addq	%rax, %rax	# tmp3735
	movq	%rax, %rdi	# tmp3734, tmp3736
	salq	$7, %rdi	#, tmp3736
	addq	%rdi, %rax	# tmp3736, tmp3734
	addq	%rdx, %rax	# tmp3731, tmp3737
	addq	$11360, %rax	#, tmp3738
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3739
	cltq
	addq	$46, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3740
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1278, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3741
	movslq	%edx, %rsi	# D.5442, tmp3742
	movl	-196(%rbp), %eax	# bt, tmp3744
	cltq
	addq	%rax, %rax	# tmp3746
	movq	%rax, %rdi	# tmp3745, tmp3747
	salq	$7, %rdi	#, tmp3747
	addq	%rdi, %rax	# tmp3747, tmp3745
	addq	%rsi, %rax	# tmp3742, tmp3748
	addq	$11360, %rax	#, tmp3749
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3750
	movslq	%edx, %rdx	# D.5442, tmp3751
	movl	-196(%rbp), %eax	# bt, tmp3753
	cltq
	addq	%rax, %rax	# tmp3755
	movq	%rax, %rdi	# tmp3754, tmp3756
	salq	$7, %rdi	#, tmp3756
	addq	%rdi, %rax	# tmp3756, tmp3754
	addq	%rdx, %rax	# tmp3751, tmp3757
	addq	$11360, %rax	#, tmp3758
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3759
	cltq
	addq	$47, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3760
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1286, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3761
	movslq	%edx, %rsi	# D.5442, tmp3762
	movl	-196(%rbp), %eax	# bt, tmp3764
	cltq
	addq	%rax, %rax	# tmp3766
	movq	%rax, %rdi	# tmp3765, tmp3767
	salq	$7, %rdi	#, tmp3767
	addq	%rdi, %rax	# tmp3767, tmp3765
	addq	%rsi, %rax	# tmp3762, tmp3768
	addq	$11360, %rax	#, tmp3769
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3770
	movslq	%edx, %rdx	# D.5442, tmp3771
	movl	-196(%rbp), %eax	# bt, tmp3773
	cltq
	addq	%rax, %rax	# tmp3775
	movq	%rax, %rdi	# tmp3774, tmp3776
	salq	$7, %rdi	#, tmp3776
	addq	%rdi, %rax	# tmp3776, tmp3774
	addq	%rdx, %rax	# tmp3771, tmp3777
	addq	$11360, %rax	#, tmp3778
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3779
	cltq
	addq	$48, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3780
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1294, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3781
	movslq	%edx, %rsi	# D.5442, tmp3782
	movl	-196(%rbp), %eax	# bt, tmp3784
	cltq
	addq	%rax, %rax	# tmp3786
	movq	%rax, %rdi	# tmp3785, tmp3787
	salq	$7, %rdi	#, tmp3787
	addq	%rdi, %rax	# tmp3787, tmp3785
	addq	%rsi, %rax	# tmp3782, tmp3788
	addq	$11360, %rax	#, tmp3789
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3790
	movslq	%edx, %rdx	# D.5442, tmp3791
	movl	-196(%rbp), %eax	# bt, tmp3793
	cltq
	addq	%rax, %rax	# tmp3795
	movq	%rax, %rdi	# tmp3794, tmp3796
	salq	$7, %rdi	#, tmp3796
	addq	%rdi, %rax	# tmp3796, tmp3794
	addq	%rdx, %rax	# tmp3791, tmp3797
	addq	$11360, %rax	#, tmp3798
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	movl	-208(%rbp), %eax	# gs, tmp3799
	cltq
	addq	$49, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp3800
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1302, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3801
	movslq	%edx, %rsi	# D.5442, tmp3802
	movl	-196(%rbp), %eax	# bt, tmp3804
	cltq
	addq	%rax, %rax	# tmp3806
	movq	%rax, %rdi	# tmp3805, tmp3807
	salq	$7, %rdi	#, tmp3807
	addq	%rdi, %rax	# tmp3807, tmp3805
	addq	%rsi, %rax	# tmp3802, tmp3808
	addq	$11360, %rax	#, tmp3809
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3810
	movslq	%edx, %rdx	# D.5442, tmp3811
	movl	-196(%rbp), %eax	# bt, tmp3813
	cltq
	addq	%rax, %rax	# tmp3815
	movq	%rax, %rdi	# tmp3814, tmp3816
	salq	$7, %rdi	#, tmp3816
	addq	%rdi, %rax	# tmp3816, tmp3814
	addq	%rdx, %rax	# tmp3811, tmp3817
	addq	$11360, %rax	#, tmp3818
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	jmp	.L87	#
.L86:
	.loc 1 474 0
	movl	-208(%rbp), %eax	# gs, tmp3819
	movl	%eax, -216(%rbp)	# tmp3819, i
	jmp	.L88	#
.L89:
	.loc 1 475 0 discriminator 2
	movl	-216(%rbp), %eax	# i, tmp3820
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5449
	movq	-136(%rbp), %rax	# mtfv, tmp3821
	addq	%rdx, %rax	# D.5449, D.5450
	movzwl	(%rax), %eax	# *_1310, D.5452
	movzwl	%ax, %edx	# D.5452, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3822
	movslq	%edx, %rsi	# D.5442, tmp3823
	movl	-196(%rbp), %eax	# bt, tmp3825
	cltq
	addq	%rax, %rax	# tmp3827
	movq	%rax, %rdi	# tmp3826, tmp3828
	salq	$7, %rdi	#, tmp3828
	addq	%rdi, %rax	# tmp3828, tmp3826
	addq	%rsi, %rax	# tmp3823, tmp3829
	addq	$11360, %rax	#, tmp3830
	movl	8(%rcx,%rax,4), %eax	# s_59(D)->rfreq, D.5442
	leal	1(%rax), %esi	#, D.5442
	movq	-248(%rbp), %rcx	# s, tmp3831
	movslq	%edx, %rdx	# D.5442, tmp3832
	movl	-196(%rbp), %eax	# bt, tmp3834
	cltq
	addq	%rax, %rax	# tmp3836
	movq	%rax, %rdi	# tmp3835, tmp3837
	salq	$7, %rdi	#, tmp3837
	addq	%rdi, %rax	# tmp3837, tmp3835
	addq	%rdx, %rax	# tmp3832, tmp3838
	addq	$11360, %rax	#, tmp3839
	movl	%esi, 8(%rcx,%rax,4)	# D.5442, s_59(D)->rfreq
	.loc 1 474 0 discriminator 2
	addl	$1, -216(%rbp)	#, i
.L88:
	.loc 1 474 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp3840
	cmpl	-204(%rbp), %eax	# ge, tmp3840
	jle	.L89	#,
.L87:
	.loc 1 478 0 is_stmt 1
	movl	-204(%rbp), %eax	# ge, tmp3844
	addl	$1, %eax	#, tmp3843
	movl	%eax, -208(%rbp)	# tmp3843, gs
	.loc 1 479 0
	jmp	.L90	#
.L157:
	.loc 1 481 0
	movl	-200(%rbp), %eax	# totc, tmp3846
	leal	7(%rax), %edx	#, tmp3848
	testl	%eax, %eax	# tmp3847
	cmovs	%edx, %eax	# tmp3848,, tmp3847
	sarl	$3, %eax	#, tmp3849
	movl	%eax, %edx	# tmp3849, D.5442
	movl	-188(%rbp), %eax	# iter, tmp3850
	leal	1(%rax), %esi	#, D.5442
	movq	stderr(%rip), %rax	# stderr, stderr.3
	movl	%edx, %ecx	# D.5442,
	movl	%esi, %edx	# D.5442,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# stderr.3,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 483 0
	movl	$0, -220(%rbp)	#, t
	jmp	.L92	#
.L93:
	.loc 1 484 0 discriminator 2
	movl	-220(%rbp), %eax	# t, tmp3852
	cltq
	movl	-96(%rbp,%rax,4), %edx	# fave, D.5442
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# stderr.4,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 483 0 discriminator 2
	addl	$1, -220(%rbp)	#, t
.L92:
	.loc 1 483 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp3853
	cmpl	-168(%rbp), %eax	# nGroups, tmp3853
	jl	.L93	#,
	.loc 1 485 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.5
	movq	%rax, %rsi	# stderr.5,
	movl	$10, %edi	#,
	call	fputc	#
.L91:
	.loc 1 493 0
	movl	$0, -220(%rbp)	#, t
	jmp	.L94	#
.L95:
	.loc 1 494 0 discriminator 2
	movl	-220(%rbp), %eax	# t, tmp3855
	cltq
	salq	$3, %rax	#, tmp3857
	movq	%rax, %rdx	# tmp3856, tmp3858
	salq	$7, %rdx	#, tmp3858
	addq	%rdx, %rax	# tmp3858, tmp3856
	leaq	45440(%rax), %rdx	#, tmp3859
	movq	-248(%rbp), %rax	# s, tmp3861
	addq	%rdx, %rax	# tmp3859, tmp3860
	leaq	8(%rax), %rsi	#, D.5447
	movl	-220(%rbp), %eax	# t, tmp3863
	cltq
	addq	%rax, %rax	# tmp3865
	movq	%rax, %rdx	# tmp3864, tmp3866
	salq	$7, %rdx	#, tmp3866
	addq	%rdx, %rax	# tmp3866, tmp3864
	leaq	37696(%rax), %rdx	#, tmp3867
	movq	-248(%rbp), %rax	# s, tmp3869
	addq	%rdx, %rax	# tmp3867, tmp3868
	leaq	12(%rax), %rdi	#, D.5448
	movl	-148(%rbp), %eax	# alphaSize, tmp3870
	movl	$17, %ecx	#,
	movl	%eax, %edx	# tmp3870,
	call	BZ2_hbMakeCodeLengths	#
	.loc 1 493 0 discriminator 2
	addl	$1, -220(%rbp)	#, t
.L94:
	.loc 1 493 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp3871
	cmpl	-168(%rbp), %eax	# nGroups, tmp3871
	jl	.L95	#,
	.loc 1 366 0 is_stmt 1
	addl	$1, -188(%rbp)	#, iter
.L62:
	.loc 1 366 0 is_stmt 0 discriminator 1
	cmpl	$3, -188(%rbp)	#, iter
	jle	.L96	#,
	.loc 1 499 0 is_stmt 1
	cmpl	$7, -168(%rbp)	#, nGroups
	jle	.L97	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movl	$3002, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L97:
	.loc 1 500 0 is_stmt 1
	cmpl	$32767, -184(%rbp)	#, nSelectors
	jg	.L98	#,
	.loc 1 500 0 is_stmt 0 discriminator 2
	cmpl	$18002, -184(%rbp)	#, nSelectors
	jle	.L99	#,
.L98:
	.loc 1 500 0 discriminator 1
	movl	$3003, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L99:
.LBB8:
	.loc 1 508 0 is_stmt 1
	movl	$0, -216(%rbp)	#, i
	jmp	.L100	#
.L101:
	.loc 1 508 0 is_stmt 0 discriminator 2
	movl	-216(%rbp), %eax	# i, tmp3872
	movl	%eax, %edx	# tmp3872, D.5445
	movl	-216(%rbp), %eax	# i, tmp3874
	cltq
	movb	%dl, -64(%rbp,%rax)	# D.5445, pos
	addl	$1, -216(%rbp)	#, i
.L100:
	.loc 1 508 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp3875
	cmpl	-168(%rbp), %eax	# nGroups, tmp3875
	jl	.L101	#,
	.loc 1 509 0 is_stmt 1
	movl	$0, -216(%rbp)	#, i
	jmp	.L102	#
.L105:
	.loc 1 510 0
	movq	-248(%rbp), %rdx	# s, tmp3876
	movl	-216(%rbp), %eax	# i, tmp3878
	cltq
	movzbl	1704(%rdx,%rax), %eax	# s_59(D)->selector, tmp3879
	movb	%al, -230(%rbp)	# tmp3879, ll_i
	.loc 1 511 0
	movl	$0, -212(%rbp)	#, j
	.loc 1 512 0
	movl	-212(%rbp), %eax	# j, tmp3881
	cltq
	movzbl	-64(%rbp,%rax), %eax	# pos, tmp3882
	movb	%al, -231(%rbp)	# tmp3882, tmp
	.loc 1 513 0
	jmp	.L103	#
.L104:
	.loc 1 514 0
	addl	$1, -212(%rbp)	#, j
	.loc 1 515 0
	movzbl	-231(%rbp), %eax	# tmp, tmp3883
	movb	%al, -229(%rbp)	# tmp3883, tmp2
	.loc 1 516 0
	movl	-212(%rbp), %eax	# j, tmp3885
	cltq
	movzbl	-64(%rbp,%rax), %eax	# pos, tmp3886
	movb	%al, -231(%rbp)	# tmp3886, tmp
	.loc 1 517 0
	movl	-212(%rbp), %eax	# j, tmp3888
	cltq
	movzbl	-229(%rbp), %edx	# tmp2, tmp3889
	movb	%dl, -64(%rbp,%rax)	# tmp3889, pos
.L103:
	.loc 1 513 0 discriminator 1
	movzbl	-230(%rbp), %eax	# ll_i, tmp3890
	cmpb	-231(%rbp), %al	# tmp, tmp3890
	jne	.L104	#,
	.loc 1 519 0
	movzbl	-231(%rbp), %eax	# tmp, tmp3891
	movb	%al, -64(%rbp)	# tmp3891, pos
	.loc 1 520 0
	movl	-212(%rbp), %eax	# j, tmp3892
	movl	%eax, %ecx	# tmp3892, D.5445
	movq	-248(%rbp), %rdx	# s, tmp3893
	movl	-216(%rbp), %eax	# i, tmp3895
	cltq
	movb	%cl, 19706(%rdx,%rax)	# D.5445, s_59(D)->selectorMtf
	.loc 1 509 0
	addl	$1, -216(%rbp)	#, i
.L102:
	.loc 1 509 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp3896
	cmpl	-184(%rbp), %eax	# nSelectors, tmp3896
	jl	.L105	#,
.LBE8:
	.loc 1 525 0 is_stmt 1
	movl	$0, -220(%rbp)	#, t
	jmp	.L106	#
.L113:
	.loc 1 526 0
	movl	$32, -180(%rbp)	#, minLen
	.loc 1 527 0
	movl	$0, -176(%rbp)	#, maxLen
	.loc 1 528 0
	movl	$0, -216(%rbp)	#, i
	jmp	.L107	#
.L110:
	.loc 1 529 0
	movq	-248(%rbp), %rcx	# s, tmp3897
	movl	-216(%rbp), %eax	# i, tmp3899
	movslq	%eax, %rdx	# tmp3899, tmp3898
	movl	-220(%rbp), %eax	# t, tmp3901
	cltq
	addq	%rax, %rax	# tmp3903
	movq	%rax, %rsi	# tmp3902, tmp3904
	salq	$7, %rsi	#, tmp3904
	addq	%rsi, %rax	# tmp3904, tmp3902
	addq	%rcx, %rax	# tmp3897, tmp3905
	addq	%rdx, %rax	# tmp3898, tmp3906
	addq	$37696, %rax	#, tmp3907
	movzbl	12(%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	cmpl	-176(%rbp), %eax	# maxLen, D.5442
	jle	.L108	#,
	.loc 1 529 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rcx	# s, tmp3908
	movl	-216(%rbp), %eax	# i, tmp3910
	movslq	%eax, %rdx	# tmp3910, tmp3909
	movl	-220(%rbp), %eax	# t, tmp3912
	cltq
	addq	%rax, %rax	# tmp3914
	movq	%rax, %rsi	# tmp3913, tmp3915
	salq	$7, %rsi	#, tmp3915
	addq	%rsi, %rax	# tmp3915, tmp3913
	addq	%rcx, %rax	# tmp3908, tmp3916
	addq	%rdx, %rax	# tmp3909, tmp3917
	addq	$37696, %rax	#, tmp3918
	movzbl	12(%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, tmp3919
	movl	%eax, -176(%rbp)	# tmp3919, maxLen
.L108:
	.loc 1 530 0 is_stmt 1
	movq	-248(%rbp), %rcx	# s, tmp3920
	movl	-216(%rbp), %eax	# i, tmp3922
	movslq	%eax, %rdx	# tmp3922, tmp3921
	movl	-220(%rbp), %eax	# t, tmp3924
	cltq
	addq	%rax, %rax	# tmp3926
	movq	%rax, %rsi	# tmp3925, tmp3927
	salq	$7, %rsi	#, tmp3927
	addq	%rsi, %rax	# tmp3927, tmp3925
	addq	%rcx, %rax	# tmp3920, tmp3928
	addq	%rdx, %rax	# tmp3921, tmp3929
	addq	$37696, %rax	#, tmp3930
	movzbl	12(%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	cmpl	-180(%rbp), %eax	# minLen, D.5442
	jge	.L109	#,
	.loc 1 530 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rcx	# s, tmp3931
	movl	-216(%rbp), %eax	# i, tmp3933
	movslq	%eax, %rdx	# tmp3933, tmp3932
	movl	-220(%rbp), %eax	# t, tmp3935
	cltq
	addq	%rax, %rax	# tmp3937
	movq	%rax, %rsi	# tmp3936, tmp3938
	salq	$7, %rsi	#, tmp3938
	addq	%rsi, %rax	# tmp3938, tmp3936
	addq	%rcx, %rax	# tmp3931, tmp3939
	addq	%rdx, %rax	# tmp3932, tmp3940
	addq	$37696, %rax	#, tmp3941
	movzbl	12(%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, tmp3942
	movl	%eax, -180(%rbp)	# tmp3942, minLen
.L109:
	.loc 1 528 0 is_stmt 1
	addl	$1, -216(%rbp)	#, i
.L107:
	.loc 1 528 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp3943
	cmpl	-148(%rbp), %eax	# alphaSize, tmp3943
	jl	.L110	#,
	.loc 1 532 0 is_stmt 1
	cmpl	$17, -176(%rbp)	#, maxLen
	jle	.L111	#,
	.loc 1 532 0 is_stmt 0 discriminator 1
	movl	$3004, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L111:
	.loc 1 533 0 is_stmt 1
	cmpl	$0, -180(%rbp)	#, minLen
	jg	.L112	#,
	.loc 1 533 0 is_stmt 0 discriminator 1
	movl	$3005, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L112:
	.loc 1 534 0 is_stmt 1
	movl	-220(%rbp), %eax	# t, tmp3945
	cltq
	addq	%rax, %rax	# tmp3947
	movq	%rax, %rdx	# tmp3946, tmp3948
	salq	$7, %rdx	#, tmp3948
	addq	%rdx, %rax	# tmp3948, tmp3946
	leaq	37696(%rax), %rdx	#, tmp3949
	movq	-248(%rbp), %rax	# s, tmp3951
	addq	%rdx, %rax	# tmp3949, tmp3950
	leaq	12(%rax), %rsi	#, D.5448
	movl	-220(%rbp), %eax	# t, tmp3953
	cltq
	salq	$3, %rax	#, tmp3955
	movq	%rax, %rdx	# tmp3954, tmp3956
	salq	$7, %rdx	#, tmp3956
	addq	%rdx, %rax	# tmp3956, tmp3954
	leaq	39248(%rax), %rdx	#, tmp3957
	movq	-248(%rbp), %rax	# s, tmp3959
	addq	%rdx, %rax	# tmp3957, tmp3958
	leaq	8(%rax), %rdi	#, D.5447
	movl	-148(%rbp), %ecx	# alphaSize, tmp3960
	movl	-176(%rbp), %edx	# maxLen, tmp3961
	movl	-180(%rbp), %eax	# minLen, tmp3962
	movl	%ecx, %r8d	# tmp3960,
	movl	%edx, %ecx	# tmp3961,
	movl	%eax, %edx	# tmp3962,
	call	BZ2_hbAssignCodes	#
	.loc 1 525 0
	addl	$1, -220(%rbp)	#, t
.L106:
	.loc 1 525 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp3963
	cmpl	-168(%rbp), %eax	# nGroups, tmp3963
	jl	.L113	#,
.LBB9:
	.loc 1 541 0 is_stmt 1
	movl	$0, -216(%rbp)	#, i
	jmp	.L114	#
.L118:
	.loc 1 542 0
	movl	-216(%rbp), %eax	# i, tmp3965
	cltq
	movb	$0, -64(%rbp,%rax)	#, inUse16
	.loc 1 543 0
	movl	$0, -212(%rbp)	#, j
	jmp	.L115	#
.L117:
	.loc 1 544 0
	movl	-216(%rbp), %eax	# i, tmp3966
	sall	$4, %eax	#, D.5442
	movl	%eax, %edx	# D.5442, D.5442
	movl	-212(%rbp), %eax	# j, tmp3967
	addl	%edx, %eax	# D.5442, D.5442
	movq	-248(%rbp), %rdx	# s, tmp3968
	cltq
	movzbl	128(%rdx,%rax), %eax	# s_59(D)->inUse, D.5445
	testb	%al, %al	# D.5445
	je	.L116	#,
	.loc 1 544 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp3971
	cltq
	movb	$1, -64(%rbp,%rax)	#, inUse16
.L116:
	.loc 1 543 0 is_stmt 1
	addl	$1, -212(%rbp)	#, j
.L115:
	.loc 1 543 0 is_stmt 0 discriminator 1
	cmpl	$15, -212(%rbp)	#, j
	jle	.L117	#,
	.loc 1 541 0 is_stmt 1
	addl	$1, -216(%rbp)	#, i
.L114:
	.loc 1 541 0 is_stmt 0 discriminator 1
	cmpl	$15, -216(%rbp)	#, i
	jle	.L118	#,
	.loc 1 547 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp3972
	movl	116(%rax), %eax	# s_59(D)->numZ, tmp3973
	movl	%eax, -140(%rbp)	# tmp3973, nBytes
	.loc 1 548 0
	movl	$0, -216(%rbp)	#, i
	jmp	.L119	#
.L122:
	.loc 1 549 0
	movl	-216(%rbp), %eax	# i, tmp3975
	cltq
	movzbl	-64(%rbp,%rax), %eax	# inUse16, D.5445
	testb	%al, %al	# D.5445
	je	.L120	#,
	.loc 1 549 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rax	# s, tmp3976
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp3976,
	call	bsW	#
	jmp	.L121	#
.L120:
	.loc 1 549 0 discriminator 2
	movq	-248(%rbp), %rax	# s, tmp3977
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp3977,
	call	bsW	#
.L121:
	.loc 1 548 0 is_stmt 1
	addl	$1, -216(%rbp)	#, i
.L119:
	.loc 1 548 0 is_stmt 0 discriminator 1
	cmpl	$15, -216(%rbp)	#, i
	jle	.L122	#,
	.loc 1 551 0 is_stmt 1
	movl	$0, -216(%rbp)	#, i
	jmp	.L123	#
.L129:
	.loc 1 552 0
	movl	-216(%rbp), %eax	# i, tmp3979
	cltq
	movzbl	-64(%rbp,%rax), %eax	# inUse16, D.5445
	testb	%al, %al	# D.5445
	je	.L124	#,
	.loc 1 553 0
	movl	$0, -212(%rbp)	#, j
	jmp	.L125	#
.L128:
	.loc 1 554 0
	movl	-216(%rbp), %eax	# i, tmp3980
	sall	$4, %eax	#, D.5442
	movl	%eax, %edx	# D.5442, D.5442
	movl	-212(%rbp), %eax	# j, tmp3981
	addl	%edx, %eax	# D.5442, D.5442
	movq	-248(%rbp), %rdx	# s, tmp3982
	cltq
	movzbl	128(%rdx,%rax), %eax	# s_59(D)->inUse, D.5445
	testb	%al, %al	# D.5445
	je	.L126	#,
	.loc 1 554 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rax	# s, tmp3984
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp3984,
	call	bsW	#
	jmp	.L127	#
.L126:
	.loc 1 554 0 discriminator 2
	movq	-248(%rbp), %rax	# s, tmp3985
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp3985,
	call	bsW	#
.L127:
	.loc 1 553 0 is_stmt 1
	addl	$1, -212(%rbp)	#, j
.L125:
	.loc 1 553 0 is_stmt 0 discriminator 1
	cmpl	$15, -212(%rbp)	#, j
	jle	.L128	#,
.L124:
	.loc 1 551 0 is_stmt 1
	addl	$1, -216(%rbp)	#, i
.L123:
	.loc 1 551 0 is_stmt 0 discriminator 1
	cmpl	$15, -216(%rbp)	#, i
	jle	.L129	#,
	.loc 1 557 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp3986
	movl	656(%rax), %eax	# s_59(D)->verbosity, D.5442
	cmpl	$2, %eax	#, D.5442
	jle	.L130	#,
	.loc 1 558 0
	movq	-248(%rbp), %rax	# s, tmp3987
	movl	116(%rax), %eax	# s_59(D)->numZ, D.5442
	subl	-140(%rbp), %eax	# nBytes, D.5442
	movl	%eax, %edx	# D.5442, D.5442
	movq	stderr(%rip), %rax	# stderr, stderr.6
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# stderr.6,
	movl	$0, %eax	#,
	call	fprintf	#
.L130:
.LBE9:
	.loc 1 562 0
	movq	-248(%rbp), %rax	# s, tmp3988
	movl	116(%rax), %eax	# s_59(D)->numZ, tmp3989
	movl	%eax, -140(%rbp)	# tmp3989, nBytes
	.loc 1 563 0
	movl	-168(%rbp), %edx	# nGroups, nGroups.7
	movq	-248(%rbp), %rax	# s, tmp3990
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp3990,
	call	bsW	#
	.loc 1 564 0
	movl	-184(%rbp), %edx	# nSelectors, nSelectors.8
	movq	-248(%rbp), %rax	# s, tmp3991
	movl	$15, %esi	#,
	movq	%rax, %rdi	# tmp3991,
	call	bsW	#
	.loc 1 565 0
	movl	$0, -216(%rbp)	#, i
	jmp	.L131	#
.L134:
	.loc 1 566 0
	movl	$0, -212(%rbp)	#, j
	jmp	.L132	#
.L133:
	.loc 1 566 0 is_stmt 0 discriminator 2
	movq	-248(%rbp), %rax	# s, tmp3992
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp3992,
	call	bsW	#
	addl	$1, -212(%rbp)	#, j
.L132:
	.loc 1 566 0 discriminator 1
	movq	-248(%rbp), %rdx	# s, tmp3993
	movl	-216(%rbp), %eax	# i, tmp3995
	cltq
	movzbl	19706(%rdx,%rax), %eax	# s_59(D)->selectorMtf, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	cmpl	-212(%rbp), %eax	# j, D.5442
	jg	.L133	#,
	.loc 1 567 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp3996
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp3996,
	call	bsW	#
	.loc 1 565 0
	addl	$1, -216(%rbp)	#, i
.L131:
	.loc 1 565 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp3997
	cmpl	-184(%rbp), %eax	# nSelectors, tmp3997
	jl	.L134	#,
	.loc 1 569 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp3998
	movl	656(%rax), %eax	# s_59(D)->verbosity, D.5442
	cmpl	$2, %eax	#, D.5442
	jle	.L135	#,
	.loc 1 570 0
	movq	-248(%rbp), %rax	# s, tmp3999
	movl	116(%rax), %eax	# s_59(D)->numZ, D.5442
	subl	-140(%rbp), %eax	# nBytes, D.5442
	movl	%eax, %edx	# D.5442, D.5442
	movq	stderr(%rip), %rax	# stderr, stderr.9
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# stderr.9,
	movl	$0, %eax	#,
	call	fprintf	#
.L135:
	.loc 1 573 0
	movq	-248(%rbp), %rax	# s, tmp4000
	movl	116(%rax), %eax	# s_59(D)->numZ, tmp4001
	movl	%eax, -140(%rbp)	# tmp4001, nBytes
	.loc 1 575 0
	movl	$0, -220(%rbp)	#, t
	jmp	.L136	#
.L143:
.LBB10:
	.loc 1 576 0
	movq	-248(%rbp), %rdx	# s, tmp4002
	movl	-220(%rbp), %eax	# t, tmp4004
	cltq
	addq	%rax, %rax	# tmp4006
	movq	%rax, %rcx	# tmp4005, tmp4007
	salq	$7, %rcx	#, tmp4007
	addq	%rcx, %rax	# tmp4007, tmp4005
	addq	%rdx, %rax	# tmp4002, tmp4008
	addq	$37696, %rax	#, tmp4009
	movzbl	12(%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, tmp4010
	movl	%eax, -152(%rbp)	# tmp4010, curr
	.loc 1 577 0
	movl	-152(%rbp), %edx	# curr, curr.10
	movq	-248(%rbp), %rax	# s, tmp4011
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp4011,
	call	bsW	#
	.loc 1 578 0
	movl	$0, -216(%rbp)	#, i
	jmp	.L137	#
.L142:
	.loc 1 579 0
	jmp	.L138	#
.L139:
	.loc 1 579 0 is_stmt 0 discriminator 2
	movq	-248(%rbp), %rax	# s, tmp4012
	movl	$2, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp4012,
	call	bsW	#
	addl	$1, -152(%rbp)	#, curr
.L138:
	.loc 1 579 0 discriminator 1
	movq	-248(%rbp), %rcx	# s, tmp4013
	movl	-216(%rbp), %eax	# i, tmp4015
	movslq	%eax, %rdx	# tmp4015, tmp4014
	movl	-220(%rbp), %eax	# t, tmp4017
	cltq
	addq	%rax, %rax	# tmp4019
	movq	%rax, %rsi	# tmp4018, tmp4020
	salq	$7, %rsi	#, tmp4020
	addq	%rsi, %rax	# tmp4020, tmp4018
	addq	%rcx, %rax	# tmp4013, tmp4021
	addq	%rdx, %rax	# tmp4014, tmp4022
	addq	$37696, %rax	#, tmp4023
	movzbl	12(%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	cmpl	-152(%rbp), %eax	# curr, D.5442
	jg	.L139	#,
	.loc 1 580 0 is_stmt 1
	jmp	.L140	#
.L141:
	.loc 1 580 0 is_stmt 0 discriminator 2
	movq	-248(%rbp), %rax	# s, tmp4024
	movl	$3, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp4024,
	call	bsW	#
	subl	$1, -152(%rbp)	#, curr
.L140:
	.loc 1 580 0 discriminator 1
	movq	-248(%rbp), %rcx	# s, tmp4025
	movl	-216(%rbp), %eax	# i, tmp4027
	movslq	%eax, %rdx	# tmp4027, tmp4026
	movl	-220(%rbp), %eax	# t, tmp4029
	cltq
	addq	%rax, %rax	# tmp4031
	movq	%rax, %rsi	# tmp4030, tmp4032
	salq	$7, %rsi	#, tmp4032
	addq	%rsi, %rax	# tmp4032, tmp4030
	addq	%rcx, %rax	# tmp4025, tmp4033
	addq	%rdx, %rax	# tmp4026, tmp4034
	addq	$37696, %rax	#, tmp4035
	movzbl	12(%rax), %eax	# s_59(D)->len, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	cmpl	-152(%rbp), %eax	# curr, D.5442
	jl	.L141	#,
	.loc 1 581 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp4036
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp4036,
	call	bsW	#
	.loc 1 578 0
	addl	$1, -216(%rbp)	#, i
.L137:
	.loc 1 578 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp4037
	cmpl	-148(%rbp), %eax	# alphaSize, tmp4037
	jl	.L142	#,
.LBE10:
	.loc 1 575 0 is_stmt 1
	addl	$1, -220(%rbp)	#, t
.L136:
	.loc 1 575 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# t, tmp4038
	cmpl	-168(%rbp), %eax	# nGroups, tmp4038
	jl	.L143	#,
	.loc 1 585 0 is_stmt 1
	movq	-248(%rbp), %rax	# s, tmp4039
	movl	656(%rax), %eax	# s_59(D)->verbosity, D.5442
	cmpl	$2, %eax	#, D.5442
	jle	.L144	#,
	.loc 1 586 0
	movq	-248(%rbp), %rax	# s, tmp4040
	movl	116(%rax), %eax	# s_59(D)->numZ, D.5442
	subl	-140(%rbp), %eax	# nBytes, D.5442
	movl	%eax, %edx	# D.5442, D.5442
	movq	stderr(%rip), %rax	# stderr, stderr.11
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# stderr.11,
	movl	$0, %eax	#,
	call	fprintf	#
.L144:
	.loc 1 589 0
	movq	-248(%rbp), %rax	# s, tmp4041
	movl	116(%rax), %eax	# s_59(D)->numZ, tmp4042
	movl	%eax, -140(%rbp)	# tmp4042, nBytes
	.loc 1 590 0
	movl	$0, -172(%rbp)	#, selCtr
	.loc 1 591 0
	movl	$0, -208(%rbp)	#, gs
.L153:
	.loc 1 593 0
	movq	-248(%rbp), %rax	# s, tmp4043
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	cmpl	-208(%rbp), %eax	# gs, D.5442
	jg	.L145	#,
	.loc 1 593 0 is_stmt 0 discriminator 1
	nop
	.loc 1 638 0 is_stmt 1 discriminator 1
	movl	-172(%rbp), %eax	# selCtr, tmp4412
	cmpl	-184(%rbp), %eax	# nSelectors, tmp4412
	je	.L154	#,
	jmp	.L158	#
.L145:
	.loc 1 594 0
	movl	-208(%rbp), %eax	# gs, tmp4047
	addl	$49, %eax	#, tmp4046
	movl	%eax, -204(%rbp)	# tmp4046, ge
	.loc 1 595 0
	movq	-248(%rbp), %rax	# s, tmp4048
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	cmpl	-204(%rbp), %eax	# ge, D.5442
	jg	.L147	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rax	# s, tmp4049
	movl	668(%rax), %eax	# s_59(D)->nMTF, D.5442
	subl	$1, %eax	#, tmp4050
	movl	%eax, -204(%rbp)	# tmp4050, ge
.L147:
	.loc 1 596 0 is_stmt 1
	movq	-248(%rbp), %rdx	# s, tmp4051
	movl	-172(%rbp), %eax	# selCtr, tmp4053
	cltq
	movzbl	1704(%rdx,%rax), %eax	# s_59(D)->selector, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	cmpl	-168(%rbp), %eax	# nGroups, D.5442
	jl	.L148	#,
	.loc 1 596 0 is_stmt 0 discriminator 1
	movl	$3006, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L148:
	.loc 1 598 0 is_stmt 1
	cmpl	$6, -168(%rbp)	#, nGroups
	jne	.L149	#,
	.loc 1 598 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4054
	movl	-204(%rbp), %edx	# ge, tmp4055
	subl	%eax, %edx	# tmp4054, D.5442
	movl	%edx, %eax	# D.5442, D.5442
	cmpl	$49, %eax	#, D.5442
	jne	.L149	#,
.LBB11:
	.loc 1 602 0 is_stmt 1 discriminator 1
	movq	-248(%rbp), %rdx	# s, tmp4056
	movl	-172(%rbp), %eax	# selCtr, tmp4058
	cltq
	movzbl	1704(%rdx,%rax), %eax	# s_59(D)->selector, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	.loc 1 601 0 discriminator 1
	cltq
	addq	%rax, %rax	# tmp4061
	movq	%rax, %rdx	# tmp4060, tmp4062
	salq	$7, %rdx	#, tmp4062
	addq	%rdx, %rax	# tmp4062, tmp4060
	leaq	37696(%rax), %rdx	#, tmp4063
	movq	-248(%rbp), %rax	# s, tmp4065
	addq	%rdx, %rax	# tmp4063, tmp4064
	addq	$12, %rax	#, tmp4066
	movq	%rax, -128(%rbp)	# tmp4066, s_len_sel_selCtr
	.loc 1 604 0 discriminator 1
	movq	-248(%rbp), %rdx	# s, tmp4067
	movl	-172(%rbp), %eax	# selCtr, tmp4069
	cltq
	movzbl	1704(%rdx,%rax), %eax	# s_59(D)->selector, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	.loc 1 603 0 discriminator 1
	cltq
	salq	$3, %rax	#, tmp4072
	movq	%rax, %rdx	# tmp4071, tmp4073
	salq	$7, %rdx	#, tmp4073
	addq	%rdx, %rax	# tmp4073, tmp4071
	leaq	39248(%rax), %rdx	#, tmp4074
	movq	-248(%rbp), %rax	# s, tmp4076
	addq	%rdx, %rax	# tmp4074, tmp4075
	addq	$8, %rax	#, tmp4077
	movq	%rax, -120(%rbp)	# tmp4077, s_code_sel_selCtr
	.loc 1 612 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4078
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5449
	movq	-136(%rbp), %rax	# mtfv, tmp4079
	addq	%rdx, %rax	# D.5449, D.5450
	movzwl	(%rax), %eax	# *_1422, tmp4080
	movw	%ax, -226(%rbp)	# tmp4080, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4081
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1426, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4082
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1430, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4083
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4083,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4084
	cltq
	addq	$1, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4085
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1436, tmp4086
	movw	%ax, -226(%rbp)	# tmp4086, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4087
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1440, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4088
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1444, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4089
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4089,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4090
	cltq
	addq	$2, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4091
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1450, tmp4092
	movw	%ax, -226(%rbp)	# tmp4092, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4093
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1454, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4094
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1458, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4095
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4095,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4096
	cltq
	addq	$3, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4097
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1464, tmp4098
	movw	%ax, -226(%rbp)	# tmp4098, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4099
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1468, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4100
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1472, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4101
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4101,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4102
	cltq
	addq	$4, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4103
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1478, tmp4104
	movw	%ax, -226(%rbp)	# tmp4104, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4105
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1482, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4106
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1486, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4107
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4107,
	call	bsW	#
	.loc 1 613 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4108
	cltq
	addq	$5, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4109
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1492, tmp4110
	movw	%ax, -226(%rbp)	# tmp4110, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4111
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1496, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4112
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1500, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4113
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4113,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4114
	cltq
	addq	$6, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4115
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1506, tmp4116
	movw	%ax, -226(%rbp)	# tmp4116, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4117
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1510, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4118
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1514, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4119
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4119,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4120
	cltq
	addq	$7, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4121
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1520, tmp4122
	movw	%ax, -226(%rbp)	# tmp4122, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4123
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1524, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4124
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1528, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4125
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4125,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4126
	cltq
	addq	$8, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4127
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1534, tmp4128
	movw	%ax, -226(%rbp)	# tmp4128, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4129
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1538, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4130
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1542, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4131
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4131,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4132
	cltq
	addq	$9, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4133
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1548, tmp4134
	movw	%ax, -226(%rbp)	# tmp4134, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4135
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1552, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4136
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1556, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4137
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4137,
	call	bsW	#
	.loc 1 614 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4138
	cltq
	addq	$10, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4139
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1562, tmp4140
	movw	%ax, -226(%rbp)	# tmp4140, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4141
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1566, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4142
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1570, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4143
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4143,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4144
	cltq
	addq	$11, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4145
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1576, tmp4146
	movw	%ax, -226(%rbp)	# tmp4146, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4147
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1580, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4148
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1584, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4149
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4149,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4150
	cltq
	addq	$12, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4151
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1590, tmp4152
	movw	%ax, -226(%rbp)	# tmp4152, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4153
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1594, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4154
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1598, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4155
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4155,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4156
	cltq
	addq	$13, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4157
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1604, tmp4158
	movw	%ax, -226(%rbp)	# tmp4158, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4159
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1608, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4160
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1612, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4161
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4161,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4162
	cltq
	addq	$14, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4163
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1618, tmp4164
	movw	%ax, -226(%rbp)	# tmp4164, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4165
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1622, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4166
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1626, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4167
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4167,
	call	bsW	#
	.loc 1 615 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4168
	cltq
	addq	$15, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4169
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1632, tmp4170
	movw	%ax, -226(%rbp)	# tmp4170, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4171
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1636, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4172
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1640, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4173
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4173,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4174
	cltq
	addq	$16, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4175
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1646, tmp4176
	movw	%ax, -226(%rbp)	# tmp4176, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4177
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1650, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4178
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1654, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4179
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4179,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4180
	cltq
	addq	$17, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4181
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1660, tmp4182
	movw	%ax, -226(%rbp)	# tmp4182, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4183
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1664, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4184
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1668, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4185
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4185,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4186
	cltq
	addq	$18, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4187
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1674, tmp4188
	movw	%ax, -226(%rbp)	# tmp4188, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4189
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1678, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4190
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1682, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4191
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4191,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4192
	cltq
	addq	$19, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4193
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1688, tmp4194
	movw	%ax, -226(%rbp)	# tmp4194, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4195
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1692, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4196
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1696, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4197
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4197,
	call	bsW	#
	.loc 1 616 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4198
	cltq
	addq	$20, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4199
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1702, tmp4200
	movw	%ax, -226(%rbp)	# tmp4200, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4201
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1706, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4202
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1710, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4203
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4203,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4204
	cltq
	addq	$21, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4205
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1716, tmp4206
	movw	%ax, -226(%rbp)	# tmp4206, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4207
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1720, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4208
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1724, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4209
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4209,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4210
	cltq
	addq	$22, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4211
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1730, tmp4212
	movw	%ax, -226(%rbp)	# tmp4212, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4213
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1734, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4214
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1738, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4215
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4215,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4216
	cltq
	addq	$23, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4217
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1744, tmp4218
	movw	%ax, -226(%rbp)	# tmp4218, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4219
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1748, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4220
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1752, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4221
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4221,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4222
	cltq
	addq	$24, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4223
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1758, tmp4224
	movw	%ax, -226(%rbp)	# tmp4224, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4225
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1762, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4226
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1766, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4227
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4227,
	call	bsW	#
	.loc 1 617 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4228
	cltq
	addq	$25, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4229
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1772, tmp4230
	movw	%ax, -226(%rbp)	# tmp4230, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4231
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1776, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4232
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1780, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4233
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4233,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4234
	cltq
	addq	$26, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4235
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1786, tmp4236
	movw	%ax, -226(%rbp)	# tmp4236, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4237
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1790, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4238
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1794, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4239
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4239,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4240
	cltq
	addq	$27, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4241
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1800, tmp4242
	movw	%ax, -226(%rbp)	# tmp4242, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4243
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1804, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4244
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1808, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4245
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4245,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4246
	cltq
	addq	$28, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4247
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1814, tmp4248
	movw	%ax, -226(%rbp)	# tmp4248, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4249
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1818, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4250
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1822, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4251
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4251,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4252
	cltq
	addq	$29, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4253
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1828, tmp4254
	movw	%ax, -226(%rbp)	# tmp4254, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4255
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1832, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4256
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1836, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4257
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4257,
	call	bsW	#
	.loc 1 618 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4258
	cltq
	addq	$30, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4259
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1842, tmp4260
	movw	%ax, -226(%rbp)	# tmp4260, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4261
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1846, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4262
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1850, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4263
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4263,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4264
	cltq
	addq	$31, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4265
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1856, tmp4266
	movw	%ax, -226(%rbp)	# tmp4266, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4267
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1860, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4268
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1864, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4269
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4269,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4270
	cltq
	addq	$32, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4271
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1870, tmp4272
	movw	%ax, -226(%rbp)	# tmp4272, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4273
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1874, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4274
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1878, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4275
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4275,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4276
	cltq
	addq	$33, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4277
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1884, tmp4278
	movw	%ax, -226(%rbp)	# tmp4278, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4279
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1888, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4280
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1892, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4281
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4281,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4282
	cltq
	addq	$34, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4283
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1898, tmp4284
	movw	%ax, -226(%rbp)	# tmp4284, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4285
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1902, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4286
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1906, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4287
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4287,
	call	bsW	#
	.loc 1 619 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4288
	cltq
	addq	$35, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4289
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1912, tmp4290
	movw	%ax, -226(%rbp)	# tmp4290, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4291
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1916, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4292
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1920, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4293
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4293,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4294
	cltq
	addq	$36, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4295
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1926, tmp4296
	movw	%ax, -226(%rbp)	# tmp4296, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4297
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1930, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4298
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1934, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4299
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4299,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4300
	cltq
	addq	$37, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4301
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1940, tmp4302
	movw	%ax, -226(%rbp)	# tmp4302, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4303
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1944, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4304
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1948, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4305
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4305,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4306
	cltq
	addq	$38, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4307
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1954, tmp4308
	movw	%ax, -226(%rbp)	# tmp4308, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4309
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1958, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4310
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1962, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4311
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4311,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4312
	cltq
	addq	$39, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4313
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1968, tmp4314
	movw	%ax, -226(%rbp)	# tmp4314, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4315
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1972, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4316
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1976, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4317
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4317,
	call	bsW	#
	.loc 1 620 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4318
	cltq
	addq	$40, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4319
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1982, tmp4320
	movw	%ax, -226(%rbp)	# tmp4320, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4321
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_1986, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4322
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_1990, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4323
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4323,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4324
	cltq
	addq	$41, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4325
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_1996, tmp4326
	movw	%ax, -226(%rbp)	# tmp4326, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4327
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_2000, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4328
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_2004, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4329
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4329,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4330
	cltq
	addq	$42, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4331
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_2010, tmp4332
	movw	%ax, -226(%rbp)	# tmp4332, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4333
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_2014, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4334
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_2018, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4335
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4335,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4336
	cltq
	addq	$43, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4337
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_2024, tmp4338
	movw	%ax, -226(%rbp)	# tmp4338, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4339
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_2028, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4340
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_2032, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4341
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4341,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4342
	cltq
	addq	$44, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4343
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_2038, tmp4344
	movw	%ax, -226(%rbp)	# tmp4344, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4345
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_2042, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4346
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_2046, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4347
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4347,
	call	bsW	#
	.loc 1 621 0 discriminator 1
	movl	-208(%rbp), %eax	# gs, tmp4348
	cltq
	addq	$45, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4349
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_2052, tmp4350
	movw	%ax, -226(%rbp)	# tmp4350, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4351
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_2056, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4352
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_2060, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4353
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4353,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4354
	cltq
	addq	$46, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4355
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_2066, tmp4356
	movw	%ax, -226(%rbp)	# tmp4356, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4357
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_2070, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4358
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_2074, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4359
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4359,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4360
	cltq
	addq	$47, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4361
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_2080, tmp4362
	movw	%ax, -226(%rbp)	# tmp4362, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4363
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_2084, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4364
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_2088, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4365
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4365,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4366
	cltq
	addq	$48, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4367
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_2094, tmp4368
	movw	%ax, -226(%rbp)	# tmp4368, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4369
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_2098, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4370
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_2102, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4371
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4371,
	call	bsW	#
	movl	-208(%rbp), %eax	# gs, tmp4372
	cltq
	addq	$49, %rax	#, D.5451
	leaq	(%rax,%rax), %rdx	#, D.5451
	movq	-136(%rbp), %rax	# mtfv, tmp4373
	addq	%rdx, %rax	# D.5451, D.5450
	movzwl	(%rax), %eax	# *_2108, tmp4374
	movw	%ax, -226(%rbp)	# tmp4374, mtfv_i
	movzwl	-226(%rbp), %eax	# mtfv_i, D.5449
	leaq	0(,%rax,4), %rdx	#, D.5449
	movq	-120(%rbp), %rax	# s_code_sel_selCtr, tmp4375
	addq	%rdx, %rax	# D.5449, D.5447
	movl	(%rax), %eax	# *_2112, D.5442
	movl	%eax, %edx	# D.5442, D.5446
	movzwl	-226(%rbp), %ecx	# mtfv_i, D.5451
	movq	-128(%rbp), %rax	# s_len_sel_selCtr, tmp4376
	addq	%rcx, %rax	# D.5451, D.5448
	movzbl	(%rax), %eax	# *_2116, D.5445
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4377
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4377,
	call	bsW	#
.LBE11:
	.loc 1 598 0 discriminator 1
	jmp	.L150	#
.L149:
	.loc 1 627 0
	movl	-208(%rbp), %eax	# gs, tmp4378
	movl	%eax, -216(%rbp)	# tmp4378, i
	jmp	.L151	#
.L152:
	.loc 1 630 0 discriminator 2
	movq	-248(%rbp), %rdx	# s, tmp4379
	movl	-172(%rbp), %eax	# selCtr, tmp4381
	cltq
	movzbl	1704(%rdx,%rax), %eax	# s_59(D)->selector, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	movl	-216(%rbp), %edx	# i, tmp4382
	movslq	%edx, %rdx	# tmp4382, D.5449
	leaq	(%rdx,%rdx), %rcx	#, D.5449
	movq	-136(%rbp), %rdx	# mtfv, tmp4383
	addq	%rcx, %rdx	# D.5449, D.5450
	movzwl	(%rdx), %edx	# *_2124, D.5452
	movzwl	%dx, %ecx	# D.5452, D.5442
	movq	-248(%rbp), %rdx	# s, tmp4384
	movslq	%ecx, %rcx	# D.5442, tmp4385
	cltq
	addq	%rax, %rax	# tmp4388
	movq	%rax, %rsi	# tmp4387, tmp4389
	salq	$7, %rsi	#, tmp4389
	addq	%rsi, %rax	# tmp4389, tmp4387
	addq	%rcx, %rax	# tmp4385, tmp4390
	addq	$9812, %rax	#, tmp4391
	movl	8(%rdx,%rax,4), %eax	# s_59(D)->code, D.5442
	.loc 1 628 0 discriminator 2
	movl	%eax, %edx	# D.5442, D.5446
	.loc 1 629 0 discriminator 2
	movq	-248(%rbp), %rcx	# s, tmp4392
	movl	-172(%rbp), %eax	# selCtr, tmp4394
	cltq
	movzbl	1704(%rcx,%rax), %eax	# s_59(D)->selector, D.5445
	movzbl	%al, %eax	# D.5445, D.5442
	movl	-216(%rbp), %ecx	# i, tmp4395
	movslq	%ecx, %rcx	# tmp4395, D.5449
	leaq	(%rcx,%rcx), %rsi	#, D.5449
	movq	-136(%rbp), %rcx	# mtfv, tmp4396
	addq	%rsi, %rcx	# D.5449, D.5450
	movzwl	(%rcx), %ecx	# *_2133, D.5452
	movzwl	%cx, %ecx	# D.5452, D.5442
	movq	-248(%rbp), %rsi	# s, tmp4397
	movslq	%ecx, %rcx	# D.5442, tmp4398
	cltq
	addq	%rax, %rax	# tmp4401
	movq	%rax, %rdi	# tmp4400, tmp4402
	salq	$7, %rdi	#, tmp4402
	addq	%rdi, %rax	# tmp4402, tmp4400
	addq	%rsi, %rax	# tmp4397, tmp4403
	addq	%rcx, %rax	# tmp4398, tmp4404
	addq	$37696, %rax	#, tmp4405
	movzbl	12(%rax), %eax	# s_59(D)->len, D.5445
	.loc 1 628 0 discriminator 2
	movzbl	%al, %ecx	# D.5445, D.5442
	movq	-248(%rbp), %rax	# s, tmp4406
	movl	%ecx, %esi	# D.5442,
	movq	%rax, %rdi	# tmp4406,
	call	bsW	#
	.loc 1 627 0 discriminator 2
	addl	$1, -216(%rbp)	#, i
.L151:
	.loc 1 627 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# i, tmp4407
	cmpl	-204(%rbp), %eax	# ge, tmp4407
	jle	.L152	#,
.L150:
	.loc 1 635 0 is_stmt 1
	movl	-204(%rbp), %eax	# ge, tmp4411
	addl	$1, %eax	#, tmp4410
	movl	%eax, -208(%rbp)	# tmp4410, gs
	.loc 1 636 0
	addl	$1, -172(%rbp)	#, selCtr
	.loc 1 637 0
	jmp	.L153	#
.L158:
	.loc 1 638 0 discriminator 1
	movl	$3007, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L154:
	.loc 1 640 0
	movq	-248(%rbp), %rax	# s, tmp4413
	movl	656(%rax), %eax	# s_59(D)->verbosity, D.5442
	cmpl	$2, %eax	#, D.5442
	jle	.L39	#,
	.loc 1 641 0
	movq	-248(%rbp), %rax	# s, tmp4414
	movl	116(%rax), %eax	# s_59(D)->numZ, D.5442
	subl	-140(%rbp), %eax	# nBytes, D.5442
	movl	%eax, %edx	# D.5442, D.5442
	movq	stderr(%rip), %rax	# stderr, stderr.12
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# stderr.12,
	movl	$0, %eax	#,
	call	fprintf	#
.L39:
	.loc 1 642 0
	movq	-40(%rbp), %rax	# D.5454, tmp4416
	xorq	%fs:40, %rax	#, tmp4416
	je	.L156	#,
	call	__stack_chk_fail	#
.L156:
	addq	$224, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	sendMTFValues, .-sendMTFValues
	.section	.rodata
	.align 8
.LC9:
	.string	"    block %d: crc = 0x%08x, combined CRC = 0x%08x, size = %d\n"
	.align 8
.LC10:
	.string	"    final combined CRC = 0x%08x\n   "
	.text
	.globl	BZ2_compressBlock
	.type	BZ2_compressBlock, @function
BZ2_compressBlock:
.LFB10:
	.loc 1 647 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movl	%esi, %eax	# is_last_block, tmp91
	movb	%al, -12(%rbp)	# tmp91, is_last_block
	.loc 1 648 0
	movq	-8(%rbp), %rax	# s, tmp92
	movl	108(%rax), %eax	# s_1(D)->nblock, D.5463
	testl	%eax, %eax	# D.5463
	jle	.L160	#,
	.loc 1 650 0
	movq	-8(%rbp), %rax	# s, tmp93
	movl	648(%rax), %eax	# s_1(D)->blockCRC, D.5464
	notl	%eax	# D.5464
	movl	%eax, %edx	# D.5464, D.5464
	movq	-8(%rbp), %rax	# s, tmp94
	movl	%edx, 648(%rax)	# D.5464, s_1(D)->blockCRC
	.loc 1 651 0
	movq	-8(%rbp), %rax	# s, tmp95
	movl	652(%rax), %eax	# s_1(D)->combinedCRC, D.5464
	rorl	$31, %eax	#, D.5464
	movl	%eax, %edx	# D.5464, D.5464
	movq	-8(%rbp), %rax	# s, tmp96
	movl	%edx, 652(%rax)	# D.5464, s_1(D)->combinedCRC
	.loc 1 652 0
	movq	-8(%rbp), %rax	# s, tmp97
	movl	652(%rax), %edx	# s_1(D)->combinedCRC, D.5464
	movq	-8(%rbp), %rax	# s, tmp98
	movl	648(%rax), %eax	# s_1(D)->blockCRC, D.5464
	xorl	%eax, %edx	# D.5464, D.5464
	movq	-8(%rbp), %rax	# s, tmp99
	movl	%edx, 652(%rax)	# D.5464, s_1(D)->combinedCRC
	.loc 1 653 0
	movq	-8(%rbp), %rax	# s, tmp100
	movl	660(%rax), %eax	# s_1(D)->blockNo, D.5463
	cmpl	$1, %eax	#, D.5463
	jle	.L161	#,
	.loc 1 653 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp101
	movl	$0, 116(%rax)	#, s_1(D)->numZ
.L161:
	.loc 1 655 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp102
	movl	656(%rax), %eax	# s_1(D)->verbosity, D.5463
	cmpl	$1, %eax	#, D.5463
	jle	.L162	#,
	.loc 1 656 0
	movq	-8(%rbp), %rax	# s, tmp103
	movl	108(%rax), %edi	# s_1(D)->nblock, D.5463
	movq	-8(%rbp), %rax	# s, tmp104
	movl	652(%rax), %esi	# s_1(D)->combinedCRC, D.5464
	movq	-8(%rbp), %rax	# s, tmp105
	movl	648(%rax), %ecx	# s_1(D)->blockCRC, D.5464
	movq	-8(%rbp), %rax	# s, tmp106
	movl	660(%rax), %edx	# s_1(D)->blockNo, D.5463
	movq	stderr(%rip), %rax	# stderr, stderr.13
	movl	%edi, %r9d	# D.5463,
	movl	%esi, %r8d	# D.5464,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# stderr.13,
	movl	$0, %eax	#,
	call	fprintf	#
.L162:
	.loc 1 660 0
	movq	-8(%rbp), %rax	# s, tmp107
	movq	%rax, %rdi	# tmp107,
	call	BZ2_blockSort	#
.L160:
	.loc 1 663 0
	movq	-8(%rbp), %rax	# s, tmp108
	movq	32(%rax), %rdx	# s_1(D)->arr2, D.5465
	movq	-8(%rbp), %rax	# s, tmp109
	movl	108(%rax), %eax	# s_1(D)->nblock, D.5463
	cltq
	addq	%rax, %rdx	# D.5466, D.5467
	movq	-8(%rbp), %rax	# s, tmp110
	movq	%rdx, 80(%rax)	# D.5467, s_1(D)->zbits
	.loc 1 666 0
	movq	-8(%rbp), %rax	# s, tmp111
	movl	660(%rax), %eax	# s_1(D)->blockNo, D.5463
	cmpl	$1, %eax	#, D.5463
	jne	.L163	#,
	.loc 1 667 0
	movq	-8(%rbp), %rax	# s, tmp112
	movq	%rax, %rdi	# tmp112,
	call	BZ2_bsInitWrite	#
	.loc 1 668 0
	movq	-8(%rbp), %rax	# s, tmp113
	movl	$66, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	bsPutUChar	#
	.loc 1 669 0
	movq	-8(%rbp), %rax	# s, tmp114
	movl	$90, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	bsPutUChar	#
	.loc 1 670 0
	movq	-8(%rbp), %rax	# s, tmp115
	movl	$104, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	bsPutUChar	#
	.loc 1 671 0
	movq	-8(%rbp), %rax	# s, tmp116
	movl	664(%rax), %eax	# s_1(D)->blockSize100k, D.5463
	addl	$48, %eax	#, D.5468
	movzbl	%al, %edx	# D.5468, D.5463
	movq	-8(%rbp), %rax	# s, tmp117
	movl	%edx, %esi	# D.5463,
	movq	%rax, %rdi	# tmp117,
	call	bsPutUChar	#
.L163:
	.loc 1 674 0
	movq	-8(%rbp), %rax	# s, tmp118
	movl	108(%rax), %eax	# s_1(D)->nblock, D.5463
	testl	%eax, %eax	# D.5463
	jle	.L164	#,
	.loc 1 676 0
	movq	-8(%rbp), %rax	# s, tmp119
	movl	$49, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	bsPutUChar	#
	movq	-8(%rbp), %rax	# s, tmp120
	movl	$65, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	bsPutUChar	#
	.loc 1 677 0
	movq	-8(%rbp), %rax	# s, tmp121
	movl	$89, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	bsPutUChar	#
	movq	-8(%rbp), %rax	# s, tmp122
	movl	$38, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	bsPutUChar	#
	.loc 1 678 0
	movq	-8(%rbp), %rax	# s, tmp123
	movl	$83, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	bsPutUChar	#
	movq	-8(%rbp), %rax	# s, tmp124
	movl	$89, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	bsPutUChar	#
	.loc 1 681 0
	movq	-8(%rbp), %rax	# s, tmp125
	movl	648(%rax), %edx	# s_1(D)->blockCRC, D.5464
	movq	-8(%rbp), %rax	# s, tmp126
	movl	%edx, %esi	# D.5464,
	movq	%rax, %rdi	# tmp126,
	call	bsPutUInt32	#
	.loc 1 692 0
	movq	-8(%rbp), %rax	# s, tmp127
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	bsW	#
	.loc 1 694 0
	movq	-8(%rbp), %rax	# s, tmp128
	movl	48(%rax), %eax	# s_1(D)->origPtr, D.5463
	movl	%eax, %edx	# D.5463, D.5464
	movq	-8(%rbp), %rax	# s, tmp129
	movl	$24, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	bsW	#
	.loc 1 695 0
	movq	-8(%rbp), %rax	# s, tmp130
	movq	%rax, %rdi	# tmp130,
	call	generateMTFValues	#
	.loc 1 696 0
	movq	-8(%rbp), %rax	# s, tmp131
	movq	%rax, %rdi	# tmp131,
	call	sendMTFValues	#
.L164:
	.loc 1 701 0
	cmpb	$0, -12(%rbp)	#, is_last_block
	je	.L159	#,
	.loc 1 703 0
	movq	-8(%rbp), %rax	# s, tmp132
	movl	$23, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	bsPutUChar	#
	movq	-8(%rbp), %rax	# s, tmp133
	movl	$114, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	bsPutUChar	#
	.loc 1 704 0
	movq	-8(%rbp), %rax	# s, tmp134
	movl	$69, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	bsPutUChar	#
	movq	-8(%rbp), %rax	# s, tmp135
	movl	$56, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	bsPutUChar	#
	.loc 1 705 0
	movq	-8(%rbp), %rax	# s, tmp136
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	bsPutUChar	#
	movq	-8(%rbp), %rax	# s, tmp137
	movl	$144, %esi	#,
	movq	%rax, %rdi	# tmp137,
	call	bsPutUChar	#
	.loc 1 706 0
	movq	-8(%rbp), %rax	# s, tmp138
	movl	652(%rax), %edx	# s_1(D)->combinedCRC, D.5464
	movq	-8(%rbp), %rax	# s, tmp139
	movl	%edx, %esi	# D.5464,
	movq	%rax, %rdi	# tmp139,
	call	bsPutUInt32	#
	.loc 1 707 0
	movq	-8(%rbp), %rax	# s, tmp140
	movl	656(%rax), %eax	# s_1(D)->verbosity, D.5463
	cmpl	$1, %eax	#, D.5463
	jle	.L166	#,
	.loc 1 708 0
	movq	-8(%rbp), %rax	# s, tmp141
	movl	652(%rax), %edx	# s_1(D)->combinedCRC, D.5464
	movq	stderr(%rip), %rax	# stderr, stderr.14
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# stderr.14,
	movl	$0, %eax	#,
	call	fprintf	#
.L166:
	.loc 1 709 0
	movq	-8(%rbp), %rax	# s, tmp142
	movq	%rax, %rdi	# tmp142,
	call	bsFinishWrite	#
.L159:
	.loc 1 711 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	BZ2_compressBlock, .-BZ2_compressBlock
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1079574528
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "bzlib.h"
	.file 6 "bzlib_private.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc54
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF142
	.byte	0x1
	.long	.LASF143
	.long	.LASF144
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x22b
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x109
	.long	0x263
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10b
	.long	0x269
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x119
	.long	0x26f
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x11d
	.long	0x27f
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.value	0x137
	.long	0x285
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF145
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x263
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x263
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
	.byte	0xa3
	.long	0x269
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x4
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x232
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0xb
	.long	0x95
	.long	0x27f
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b
	.uleb128 0xb
	.long	0x95
	.long	0x295
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.byte	0x50
	.byte	0x5
	.byte	0xcc
	.long	0x32e
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xcd
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0xce
	.long	0x54
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0xcf
	.long	0x54
	.byte	0xc
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0xd0
	.long	0x54
	.byte	0x10
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0xd2
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0xd3
	.long	0x54
	.byte	0x20
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0xd4
	.long	0x54
	.byte	0x24
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0xd5
	.long	0x54
	.byte	0x28
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0xd7
	.long	0x8d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF57
	.byte	0x5
	.byte	0xd9
	.long	0x347
	.byte	0x38
	.uleb128 0x8
	.long	.LASF58
	.byte	0x5
	.byte	0xda
	.long	0x35d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF59
	.byte	0x5
	.byte	0xdb
	.long	0x8d
	.byte	0x48
	.byte	0
	.uleb128 0xe
	.long	0x8d
	.long	0x347
	.uleb128 0xf
	.long	0x8d
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x32e
	.uleb128 0x10
	.long	0x35d
	.uleb128 0xf
	.long	0x8d
	.uleb128 0xf
	.long	0x8d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34d
	.uleb128 0x2
	.long	.LASF60
	.byte	0x5
	.byte	0xdd
	.long	0x295
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.byte	0x52
	.long	0x46
	.uleb128 0x2
	.long	.LASF62
	.byte	0x6
	.byte	0x53
	.long	0x46
	.uleb128 0x2
	.long	.LASF63
	.byte	0x6
	.byte	0x54
	.long	0x3f
	.uleb128 0x2
	.long	.LASF64
	.byte	0x6
	.byte	0x55
	.long	0x54
	.uleb128 0x2
	.long	.LASF65
	.byte	0x6
	.byte	0x57
	.long	0x4d
	.uleb128 0x11
	.value	0xd9d8
	.byte	0x6
	.byte	0xe7
	.long	0x5ae
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0xe9
	.long	0x5ae
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0xed
	.long	0x384
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0xee
	.long	0x384
	.byte	0xc
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0xf1
	.long	0x38f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF69
	.byte	0x6
	.byte	0xf4
	.long	0x5b4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.byte	0xf5
	.long	0x5b4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0xf6
	.long	0x5b4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0xf7
	.long	0x384
	.byte	0x30
	.uleb128 0x12
	.string	"ptr"
	.byte	0x6
	.byte	0xfa
	.long	0x5b4
	.byte	0x38
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0xfb
	.long	0x5ba
	.byte	0x40
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0xfc
	.long	0x5c0
	.byte	0x48
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0xfd
	.long	0x5ba
	.byte	0x50
	.uleb128 0x9
	.long	.LASF76
	.byte	0x6
	.value	0x100
	.long	0x384
	.byte	0x58
	.uleb128 0x9
	.long	.LASF77
	.byte	0x6
	.value	0x103
	.long	0x38f
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF78
	.byte	0x6
	.value	0x104
	.long	0x384
	.byte	0x60
	.uleb128 0x9
	.long	.LASF79
	.byte	0x6
	.value	0x105
	.long	0x384
	.byte	0x64
	.uleb128 0x9
	.long	.LASF80
	.byte	0x6
	.value	0x105
	.long	0x384
	.byte	0x68
	.uleb128 0x9
	.long	.LASF81
	.byte	0x6
	.value	0x108
	.long	0x384
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF82
	.byte	0x6
	.value	0x109
	.long	0x384
	.byte	0x70
	.uleb128 0x9
	.long	.LASF83
	.byte	0x6
	.value	0x10a
	.long	0x384
	.byte	0x74
	.uleb128 0x9
	.long	.LASF84
	.byte	0x6
	.value	0x10b
	.long	0x384
	.byte	0x78
	.uleb128 0x9
	.long	.LASF85
	.byte	0x6
	.value	0x10e
	.long	0x384
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF86
	.byte	0x6
	.value	0x10f
	.long	0x5c6
	.byte	0x80
	.uleb128 0x13
	.long	.LASF87
	.byte	0x6
	.value	0x110
	.long	0x5d6
	.value	0x180
	.uleb128 0x13
	.long	.LASF88
	.byte	0x6
	.value	0x113
	.long	0x38f
	.value	0x280
	.uleb128 0x13
	.long	.LASF89
	.byte	0x6
	.value	0x114
	.long	0x384
	.value	0x284
	.uleb128 0x13
	.long	.LASF90
	.byte	0x6
	.value	0x117
	.long	0x38f
	.value	0x288
	.uleb128 0x13
	.long	.LASF91
	.byte	0x6
	.value	0x118
	.long	0x38f
	.value	0x28c
	.uleb128 0x13
	.long	.LASF92
	.byte	0x6
	.value	0x11b
	.long	0x384
	.value	0x290
	.uleb128 0x13
	.long	.LASF93
	.byte	0x6
	.value	0x11c
	.long	0x384
	.value	0x294
	.uleb128 0x13
	.long	.LASF94
	.byte	0x6
	.value	0x11d
	.long	0x384
	.value	0x298
	.uleb128 0x13
	.long	.LASF95
	.byte	0x6
	.value	0x120
	.long	0x384
	.value	0x29c
	.uleb128 0x13
	.long	.LASF96
	.byte	0x6
	.value	0x121
	.long	0x5e6
	.value	0x2a0
	.uleb128 0x13
	.long	.LASF97
	.byte	0x6
	.value	0x122
	.long	0x5f7
	.value	0x6a8
	.uleb128 0x13
	.long	.LASF98
	.byte	0x6
	.value	0x123
	.long	0x5f7
	.value	0x4cfa
	.uleb128 0x14
	.string	"len"
	.byte	0x6
	.value	0x125
	.long	0x608
	.value	0x934c
	.uleb128 0x13
	.long	.LASF99
	.byte	0x6
	.value	0x126
	.long	0x61f
	.value	0x9958
	.uleb128 0x13
	.long	.LASF100
	.byte	0x6
	.value	0x127
	.long	0x61f
	.value	0xb188
	.uleb128 0x13
	.long	.LASF101
	.byte	0x6
	.value	0x129
	.long	0x636
	.value	0xc9b8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x363
	.uleb128 0x6
	.byte	0x8
	.long	0x38f
	.uleb128 0x6
	.byte	0x8
	.long	0x379
	.uleb128 0x6
	.byte	0x8
	.long	0x39a
	.uleb128 0xb
	.long	0x36e
	.long	0x5d6
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x5e6
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x5f7
	.uleb128 0x15
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x608
	.uleb128 0x15
	.long	0x86
	.value	0x4651
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x61f
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.uleb128 0x15
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x636
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.uleb128 0x15
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x38f
	.long	0x64d
	.uleb128 0x15
	.long	0x86
	.value	0x101
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.long	.LASF102
	.byte	0x6
	.value	0x12c
	.long	0x3a5
	.uleb128 0xb
	.long	0x36e
	.long	0x669
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x679
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x384
	.uleb128 0x17
	.long	.LASF139
	.byte	0x1
	.byte	0x51
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a9
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x51
	.long	0x6a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x64d
	.uleb128 0x19
	.long	.LASF103
	.byte	0x1
	.byte	0x5a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d9
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x5a
	.long	0x6a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.string	"bsW"
	.byte	0x1
	.byte	0x75
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x71b
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x75
	.long	0x6a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0x75
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"v"
	.byte	0x1
	.byte	0x75
	.long	0x38f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.long	.LASF104
	.byte	0x1
	.byte	0x7f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x751
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x7f
	.long	0x6a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"u"
	.byte	0x1
	.byte	0x7f
	.long	0x38f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.byte	0x8a
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x787
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x8a
	.long	0x6a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x8a
	.long	0x379
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.long	.LASF106
	.byte	0x1
	.byte	0x96
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x7bd
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x96
	.long	0x6a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x98
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.byte	0xa4
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e2
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0xa4
	.long	0x6a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x1c
	.string	"yy"
	.byte	0x1
	.byte	0xa6
	.long	0x5d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xa7
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x1c
	.string	"j"
	.byte	0x1
	.byte	0xa7
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.byte	0xa8
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x1c
	.string	"wr"
	.byte	0x1
	.byte	0xa9
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1c
	.string	"EOB"
	.byte	0x1
	.byte	0xaa
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x1c
	.string	"ptr"
	.byte	0x1
	.byte	0xc2
	.long	0x5b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1d
	.long	.LASF73
	.byte	0x1
	.byte	0xc3
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1d
	.long	.LASF74
	.byte	0x1
	.byte	0xc4
	.long	0x5c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1d
	.long	.LASF109
	.byte	0x1
	.byte	0xd0
	.long	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -365
	.uleb128 0x1e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x1d
	.long	.LASF110
	.byte	0x1
	.byte	0xea
	.long	0x379
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF111
	.byte	0x1
	.byte	0xeb
	.long	0x5ba
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF112
	.byte	0x1
	.byte	0xec
	.long	0x379
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1d
	.long	.LASF113
	.byte	0x1
	.byte	0xf2
	.long	0x379
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x1
	.value	0x11b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf1
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x11b
	.long	0x6a9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x21
	.string	"v"
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x21
	.string	"gs"
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x21
	.string	"ge"
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x22
	.long	.LASF115
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x21
	.string	"bt"
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x21
	.string	"bc"
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x22
	.long	.LASF116
	.byte	0x1
	.value	0x11d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x22
	.long	.LASF117
	.byte	0x1
	.value	0x11e
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x22
	.long	.LASF118
	.byte	0x1
	.value	0x11e
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x22
	.long	.LASF119
	.byte	0x1
	.value	0x11e
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x22
	.long	.LASF120
	.byte	0x1
	.value	0x11e
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x22
	.long	.LASF121
	.byte	0x1
	.value	0x11e
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x22
	.long	.LASF122
	.byte	0x1
	.value	0x11f
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x11f
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x22
	.long	.LASF124
	.byte	0x1
	.value	0x12c
	.long	0xbf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.long	.LASF125
	.byte	0x1
	.value	0x12d
	.long	0x669
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.long	.LASF74
	.byte	0x1
	.value	0x12f
	.long	0x5c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x23
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xa98
	.uleb128 0x22
	.long	.LASF126
	.byte	0x1
	.value	0x145
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x22
	.long	.LASF127
	.byte	0x1
	.value	0x145
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x22
	.long	.LASF128
	.byte	0x1
	.value	0x145
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.long	.LASF129
	.byte	0x1
	.value	0x145
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xae6
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x194
	.long	0x38f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x22
	.long	.LASF131
	.byte	0x1
	.value	0x194
	.long	0x38f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x22
	.long	.LASF132
	.byte	0x1
	.value	0x194
	.long	0x38f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x21
	.string	"icv"
	.byte	0x1
	.value	0x195
	.long	0x39a
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x23
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xb0c
	.uleb128 0x21
	.string	"icv"
	.byte	0x1
	.value	0x1b2
	.long	0x39a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x23
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xb62
	.uleb128 0x21
	.string	"pos"
	.byte	0x1
	.value	0x1fb
	.long	0xc01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF109
	.byte	0x1
	.value	0x1fb
	.long	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -246
	.uleb128 0x22
	.long	.LASF133
	.byte	0x1
	.value	0x1fb
	.long	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -245
	.uleb128 0x21
	.string	"tmp"
	.byte	0x1
	.value	0x1fb
	.long	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -247
	.byte	0
	.uleb128 0x23
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xb88
	.uleb128 0x22
	.long	.LASF134
	.byte	0x1
	.value	0x21c
	.long	0x659
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x23
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xbae
	.uleb128 0x22
	.long	.LASF135
	.byte	0x1
	.value	0x240
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x1e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x22
	.long	.LASF136
	.byte	0x1
	.value	0x258
	.long	0x39a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -242
	.uleb128 0x22
	.long	.LASF137
	.byte	0x1
	.value	0x259
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.long	.LASF138
	.byte	0x1
	.value	0x25b
	.long	0x679
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x39a
	.long	0xc01
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0xc11
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x24
	.long	.LASF140
	.byte	0x1
	.value	0x286
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xc4c
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.value	0x286
	.long	0x6a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF141
	.byte	0x1
	.value	0x286
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x26
	.long	.LASF146
	.byte	0x7
	.byte	0xaa
	.long	0x269
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
	.uleb128 0xf
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x26
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"state_out_pos"
.LASF78:
	.string	"state_in_len"
.LASF133:
	.string	"tmp2"
.LASF33:
	.string	"_shortbuf"
.LASF145:
	.string	"_IO_lock_t"
.LASF51:
	.string	"total_in_hi32"
.LASF146:
	.string	"stderr"
.LASF22:
	.string	"_IO_buf_end"
.LASF109:
	.string	"ll_i"
.LASF89:
	.string	"bsLive"
.LASF136:
	.string	"mtfv_i"
.LASF61:
	.string	"Bool"
.LASF58:
	.string	"bzfree"
.LASF20:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF14:
	.string	"_flags"
.LASF26:
	.string	"_markers"
.LASF115:
	.string	"totc"
.LASF67:
	.string	"mode"
.LASF95:
	.string	"nMTF"
.LASF104:
	.string	"bsPutUInt32"
.LASF86:
	.string	"inUse"
.LASF101:
	.string	"len_pack"
.LASF138:
	.string	"s_code_sel_selCtr"
.LASF47:
	.string	"_pos"
.LASF59:
	.string	"opaque"
.LASF25:
	.string	"_IO_save_end"
.LASF65:
	.string	"UInt16"
.LASF75:
	.string	"zbits"
.LASF13:
	.string	"long long unsigned int"
.LASF117:
	.string	"nSelectors"
.LASF119:
	.string	"minLen"
.LASF111:
	.string	"ryy_j"
.LASF98:
	.string	"selectorMtf"
.LASF74:
	.string	"mtfv"
.LASF97:
	.string	"selector"
.LASF24:
	.string	"_IO_backup_base"
.LASF69:
	.string	"arr1"
.LASF70:
	.string	"arr2"
.LASF35:
	.string	"_offset"
.LASF141:
	.string	"is_last_block"
.LASF77:
	.string	"state_in_ch"
.LASF28:
	.string	"_fileno"
.LASF139:
	.string	"BZ2_bsInitWrite"
.LASF53:
	.string	"avail_out"
.LASF130:
	.string	"cost01"
.LASF96:
	.string	"mtfFreq"
.LASF7:
	.string	"size_t"
.LASF118:
	.string	"alphaSize"
.LASF17:
	.string	"_IO_read_base"
.LASF122:
	.string	"nGroups"
.LASF64:
	.string	"UInt32"
.LASF45:
	.string	"_next"
.LASF124:
	.string	"cost"
.LASF99:
	.string	"code"
.LASF63:
	.string	"Int32"
.LASF68:
	.string	"avail_in_expect"
.LASF137:
	.string	"s_len_sel_selCtr"
.LASF87:
	.string	"unseqToSeq"
.LASF66:
	.string	"strm"
.LASF11:
	.string	"char"
.LASF102:
	.string	"EState"
.LASF41:
	.string	"_mode"
.LASF44:
	.string	"_IO_marker"
.LASF15:
	.string	"_IO_read_ptr"
.LASF131:
	.string	"cost23"
.LASF140:
	.string	"BZ2_compressBlock"
.LASF106:
	.string	"makeMaps_e"
.LASF76:
	.string	"workFactor"
.LASF18:
	.string	"_IO_write_base"
.LASF129:
	.string	"aFreq"
.LASF12:
	.string	"long long int"
.LASF110:
	.string	"rtmp"
.LASF23:
	.string	"_IO_save_base"
.LASF52:
	.string	"next_out"
.LASF127:
	.string	"remF"
.LASF91:
	.string	"combinedCRC"
.LASF85:
	.string	"nInUse"
.LASF121:
	.string	"selCtr"
.LASF143:
	.string	"compress.c"
.LASF92:
	.string	"verbosity"
.LASF79:
	.string	"rNToGo"
.LASF103:
	.string	"bsFinishWrite"
.LASF132:
	.string	"cost45"
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
.LASF112:
	.string	"rll_i"
.LASF32:
	.string	"_vtable_offset"
.LASF93:
	.string	"blockNo"
.LASF55:
	.string	"total_out_hi32"
.LASF94:
	.string	"blockSize100k"
.LASF114:
	.string	"sendMTFValues"
.LASF72:
	.string	"origPtr"
.LASF142:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF16:
	.string	"_IO_read_end"
.LASF113:
	.string	"rtmp2"
.LASF5:
	.string	"short int"
.LASF83:
	.string	"numZ"
.LASF134:
	.string	"inUse16"
.LASF135:
	.string	"curr"
.LASF6:
	.string	"long int"
.LASF90:
	.string	"blockCRC"
.LASF48:
	.string	"next_in"
.LASF82:
	.string	"nblockMAX"
.LASF80:
	.string	"rTPos"
.LASF123:
	.string	"nBytes"
.LASF144:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/401.bzip2/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF62:
	.string	"UChar"
.LASF50:
	.string	"total_in_lo32"
.LASF125:
	.string	"fave"
.LASF73:
	.string	"block"
.LASF57:
	.string	"bzalloc"
.LASF128:
	.string	"tFreq"
.LASF105:
	.string	"bsPutUChar"
.LASF34:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF49:
	.string	"avail_in"
.LASF0:
	.string	"long unsigned int"
.LASF30:
	.string	"_old_offset"
.LASF43:
	.string	"_IO_FILE"
.LASF120:
	.string	"maxLen"
.LASF1:
	.string	"unsigned char"
.LASF126:
	.string	"nPart"
.LASF46:
	.string	"_sbuf"
.LASF19:
	.string	"_IO_write_ptr"
.LASF107:
	.string	"generateMTFValues"
.LASF108:
	.string	"zPend"
.LASF56:
	.string	"state"
.LASF71:
	.string	"ftab"
.LASF116:
	.string	"iter"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF60:
	.string	"bz_stream"
.LASF100:
	.string	"rfreq"
.LASF2:
	.string	"short unsigned int"
.LASF81:
	.string	"nblock"
.LASF54:
	.string	"total_out_lo32"
.LASF27:
	.string	"_chain"
.LASF29:
	.string	"_flags2"
.LASF31:
	.string	"_cur_column"
.LASF9:
	.string	"__off64_t"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
.LASF88:
	.string	"bsBuff"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
