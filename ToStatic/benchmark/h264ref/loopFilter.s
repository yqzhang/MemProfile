	.file	"loopFilter.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 loopFilter.c -mtune=generic -march=x86-64 -g
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
	.comm	mixedModeEdgeFlag,1,1
	.comm	fieldModeFilteringFlag,1,1
	.globl	ALPHA_TABLE
	.data
	.align 32
	.type	ALPHA_TABLE, @object
	.size	ALPHA_TABLE, 52
ALPHA_TABLE:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	12
	.byte	13
	.byte	15
	.byte	17
	.byte	20
	.byte	22
	.byte	25
	.byte	28
	.byte	32
	.byte	36
	.byte	40
	.byte	45
	.byte	50
	.byte	56
	.byte	63
	.byte	71
	.byte	80
	.byte	90
	.byte	101
	.byte	113
	.byte	127
	.byte	-112
	.byte	-94
	.byte	-74
	.byte	-53
	.byte	-30
	.byte	-1
	.byte	-1
	.globl	BETA_TABLE
	.align 32
	.type	BETA_TABLE, @object
	.size	BETA_TABLE, 52
BETA_TABLE:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	16
	.byte	16
	.byte	17
	.byte	17
	.byte	18
	.byte	18
	.globl	CLIP_TAB
	.align 32
	.type	CLIP_TAB, @object
	.size	CLIP_TAB, 260
CLIP_TAB:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	3
	.byte	0
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	0
	.byte	2
	.byte	2
	.byte	4
	.byte	4
	.byte	0
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	0
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	0
	.byte	3
	.byte	3
	.byte	5
	.byte	5
	.byte	0
	.byte	3
	.byte	4
	.byte	6
	.byte	6
	.byte	0
	.byte	3
	.byte	4
	.byte	6
	.byte	6
	.byte	0
	.byte	4
	.byte	5
	.byte	7
	.byte	7
	.byte	0
	.byte	4
	.byte	5
	.byte	8
	.byte	8
	.byte	0
	.byte	4
	.byte	6
	.byte	9
	.byte	9
	.byte	0
	.byte	5
	.byte	7
	.byte	10
	.byte	10
	.byte	0
	.byte	6
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	6
	.byte	8
	.byte	13
	.byte	13
	.byte	0
	.byte	7
	.byte	10
	.byte	14
	.byte	14
	.byte	0
	.byte	8
	.byte	11
	.byte	16
	.byte	16
	.byte	0
	.byte	9
	.byte	12
	.byte	18
	.byte	18
	.byte	0
	.byte	10
	.byte	13
	.byte	20
	.byte	20
	.byte	0
	.byte	11
	.byte	15
	.byte	23
	.byte	23
	.byte	0
	.byte	13
	.byte	17
	.byte	25
	.byte	25
	.globl	chroma_edge
	.align 32
	.type	chroma_edge, @object
	.size	chroma_edge, 32
chroma_edge:
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	1
	.byte	-1
	.byte	1
	.byte	1
	.byte	2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	3
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	-1
	.byte	1
	.byte	1
	.byte	-1
	.byte	1
	.byte	2
	.byte	2
	.byte	-1
	.byte	-1
	.byte	3
	.byte	3
	.text
	.globl	DeblockFrame
	.type	DeblockFrame, @function
DeblockFrame:
.LFB2:
	.file 1 "loopFilter.c"
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# img, img
	movq	%rsi, -32(%rbp)	# imgY, imgY
	movq	%rdx, -40(%rbp)	# imgUV, imgUV
	.loc 1 82 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 84 0 discriminator 2
	movl	-4(%rbp), %ecx	# i, i.0
	movq	-40(%rbp), %rdx	# imgUV, tmp61
	movq	-32(%rbp), %rsi	# imgY, tmp62
	movq	-24(%rbp), %rax	# img, tmp63
	movq	%rax, %rdi	# tmp63,
	call	DeblockMb	#
	.loc 1 82 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 82 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# img, tmp64
	movl	72484(%rax), %eax	# img_3(D)->PicSizeInMbs, D.5645
	cmpl	-4(%rbp), %eax	# i, D.5645
	ja	.L3	#,
	.loc 1 86 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	DeblockFrame, .-DeblockFrame
	.globl	DeblockMb
	.type	DeblockMb, @function
DeblockMb:
.LFB3:
	.loc 1 97 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -120(%rbp)	# img, img
	movq	%rsi, -128(%rbp)	# imgY, imgY
	movq	%rdx, -136(%rbp)	# imgUV, imgUV
	movl	%ecx, -140(%rbp)	# MbQAddr, MbQAddr
	.loc 1 97 0
	movq	%fs:40, %rax	#, tmp229
	movq	%rax, -8(%rbp)	# tmp229, D.5655
	xorl	%eax, %eax	# tmp229
	.loc 1 103 0
	movl	$1, -48(%rbp)	#, filterNon8x8LumaEdgesFlag
	movl	$1, -44(%rbp)	#, filterNon8x8LumaEdgesFlag
	movl	$1, -40(%rbp)	#, filterNon8x8LumaEdgesFlag
	movl	$1, -36(%rbp)	#, filterNon8x8LumaEdgesFlag
	.loc 1 107 0
	movl	$4, -80(%rbp)	#, mvlimit
	.loc 1 113 0
	movq	-120(%rbp), %rax	# img, tmp120
	movl	$1, 72636(%rax)	#, img_12(D)->DeblockCall
	.loc 1 114 0
	leaq	-100(%rbp), %rdx	#, tmp121
	leaq	-104(%rbp), %rcx	#, tmp122
	movl	-140(%rbp), %eax	# MbQAddr, tmp123
	movq	%rcx, %rsi	# tmp122,
	movl	%eax, %edi	# tmp123,
	call	get_mb_pos	#
	.loc 1 115 0
	movl	-104(%rbp), %eax	# mb_x, mb_x.1
	testl	%eax, %eax	# mb_x.1
	setne	%al	#, D.5646
	movzbl	%al, %eax	# D.5646, tmp124
	movl	%eax, -88(%rbp)	# tmp124, filterLeftMbEdgeFlag
	.loc 1 116 0
	movl	-100(%rbp), %eax	# mb_y, mb_y.2
	testl	%eax, %eax	# mb_y.2
	setne	%al	#, D.5646
	movzbl	%al, %eax	# D.5646, tmp125
	movl	%eax, -84(%rbp)	# tmp125, filterTopMbEdgeFlag
	.loc 1 118 0
	movq	-120(%rbp), %rax	# img, tmp126
	movq	14168(%rax), %rdx	# img_12(D)->mb_data, D.5647
	movl	-140(%rbp), %eax	# MbQAddr, tmp127
	cltq
	imulq	$632, %rax, %rax	#, D.5648, D.5648
	addq	%rdx, %rax	# D.5647, tmp128
	movq	%rax, -56(%rbp)	# tmp128, MbQ
	.loc 1 124 0
	movq	-56(%rbp), %rax	# MbQ, tmp130
	movl	572(%rax), %eax	# MbQ_23->luma_transform_size_8x8_flag, D.5649
	testl	%eax, %eax	# D.5649
	sete	%al	#, D.5646
	movzbl	%al, %eax	# D.5646, D.5649
	movl	%eax, -36(%rbp)	# D.5649, filterNon8x8LumaEdgesFlag
	movl	-36(%rbp), %eax	# filterNon8x8LumaEdgesFlag, D.5649
	.loc 1 123 0
	movl	%eax, -44(%rbp)	# D.5649, filterNon8x8LumaEdgesFlag
	.loc 1 126 0
	movq	-120(%rbp), %rax	# img, tmp131
	movl	72400(%rax), %eax	# img_12(D)->MbaffFrameFlag, D.5649
	testl	%eax, %eax	# D.5649
	je	.L5	#,
	.loc 1 126 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %eax	# mb_y, mb_y.3
	cmpl	$16, %eax	#, mb_y.3
	jne	.L5	#,
	movq	-56(%rbp), %rax	# MbQ, tmp132
	movl	532(%rax), %eax	# MbQ_23->mb_field, D.5649
	testl	%eax, %eax	# D.5649
	je	.L5	#,
	.loc 1 127 0 is_stmt 1
	movl	$0, -84(%rbp)	#, filterTopMbEdgeFlag
.L5:
	.loc 1 129 0
	movq	-120(%rbp), %rax	# img, tmp133
	movl	28(%rax), %eax	# img_12(D)->structure, D.5649
	testl	%eax, %eax	# D.5649
	jne	.L6	#,
	.loc 1 129 0 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax	# img, tmp134
	movl	72400(%rax), %eax	# img_12(D)->MbaffFrameFlag, D.5649
	testl	%eax, %eax	# D.5649
	je	.L7	#,
	.loc 1 129 0 discriminator 3
	movq	-56(%rbp), %rax	# MbQ, tmp135
	movl	532(%rax), %eax	# MbQ_23->mb_field, D.5649
	testl	%eax, %eax	# D.5649
	je	.L7	#,
.L6:
	.loc 1 129 0 discriminator 1
	movl	$1, %eax	#, iftmp.4
	jmp	.L8	#
.L7:
	.loc 1 129 0 discriminator 4
	movl	$0, %eax	#, iftmp.4
.L8:
	.loc 1 129 0 discriminator 5
	movl	%eax, -68(%rbp)	# iftmp.4, fieldModeMbFlag
	.loc 1 130 0 is_stmt 1 discriminator 5
	cmpl	$0, -68(%rbp)	#, fieldModeMbFlag
	je	.L9	#,
	.loc 1 131 0
	movl	$2, -80(%rbp)	#, mvlimit
.L9:
	.loc 1 134 0
	movq	-56(%rbp), %rax	# MbQ, tmp136
	movl	612(%rax), %eax	# MbQ_23->LFDisableIdc, D.5649
	cmpl	$1, %eax	#, D.5649
	jne	.L10	#,
	.loc 1 135 0
	movq	-120(%rbp), %rax	# img, tmp137
	movl	$0, 72636(%rax)	#, img_12(D)->DeblockCall
	jmp	.L4	#
.L10:
	.loc 1 139 0
	movq	-56(%rbp), %rax	# MbQ, tmp138
	movl	612(%rax), %eax	# MbQ_23->LFDisableIdc, D.5649
	cmpl	$2, %eax	#, D.5649
	jne	.L12	#,
	.loc 1 142 0
	movq	-56(%rbp), %rax	# MbQ, tmp139
	movl	552(%rax), %eax	# MbQ_23->mbAvailA, tmp140
	movl	%eax, -88(%rbp)	# tmp140, filterLeftMbEdgeFlag
	.loc 1 144 0
	movq	-120(%rbp), %rax	# img, tmp141
	movl	72400(%rax), %eax	# img_12(D)->MbaffFrameFlag, D.5649
	testl	%eax, %eax	# D.5649
	je	.L13	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# MbQ, tmp142
	movl	532(%rax), %eax	# MbQ_23->mb_field, D.5649
	testl	%eax, %eax	# D.5649
	jne	.L13	#,
	movl	-140(%rbp), %eax	# MbQAddr, MbQAddr.5
	andl	$1, %eax	#, D.5650
	testl	%eax, %eax	# D.5650
	je	.L13	#,
	movl	$1, -84(%rbp)	#, filterTopMbEdgeFlag
	jmp	.L12	#
.L13:
	.loc 1 145 0 is_stmt 1
	movq	-56(%rbp), %rax	# MbQ, tmp143
	movl	556(%rax), %eax	# MbQ_23->mbAvailB, tmp144
	movl	%eax, -84(%rbp)	# tmp144, filterTopMbEdgeFlag
.L12:
	.loc 1 148 0
	movq	-120(%rbp), %rax	# img, tmp145
	movl	-140(%rbp), %edx	# MbQAddr, tmp146
	movl	%edx, 12(%rax)	# tmp146, img_12(D)->current_mb_nr
	.loc 1 149 0
	movl	$0, %eax	#,
	call	CheckAvailabilityOfNeighbors	#
	.loc 1 151 0
	movl	$0, -96(%rbp)	#, dir
	jmp	.L14	#
.L29:
	.loc 1 153 0
	cmpl	$0, -96(%rbp)	#, dir
	je	.L15	#,
	.loc 1 153 0 is_stmt 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, filterTopMbEdgeFlag
	jne	.L16	#,
.L15:
	.loc 1 153 0 discriminator 2
	cmpl	$0, -96(%rbp)	#, dir
	jne	.L17	#,
	.loc 1 153 0 discriminator 3
	cmpl	$0, -88(%rbp)	#, filterLeftMbEdgeFlag
	je	.L17	#,
.L16:
	.loc 1 153 0 discriminator 1
	movl	$1, %eax	#, iftmp.6
	jmp	.L18	#
.L17:
	.loc 1 153 0 discriminator 4
	movl	$0, %eax	#, iftmp.6
.L18:
	.loc 1 153 0 discriminator 5
	movl	%eax, -64(%rbp)	# iftmp.6, EdgeCondition
	.loc 1 154 0 is_stmt 1 discriminator 5
	movl	$0, -92(%rbp)	#, edge
	jmp	.L19	#
.L28:
	.loc 1 156 0
	cmpl	$0, -92(%rbp)	#, edge
	jne	.L20	#,
	.loc 1 156 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, EdgeCondition
	je	.L21	#,
.L20:
	.loc 1 158 0 is_stmt 1
	movq	-120(%rbp), %rax	# img, tmp147
	movl	72700(%rax), %eax	# img_12(D)->yuv_format, D.5649
	cltq
	movl	-96(%rbp), %edx	# dir, tmp150
	movslq	%edx, %rcx	# tmp150, tmp149
	movl	-92(%rbp), %edx	# edge, tmp152
	movslq	%edx, %rdx	# tmp152, tmp151
	salq	$2, %rcx	#, tmp153
	addq	%rcx, %rdx	# tmp153, tmp154
	movzbl	chroma_edge(%rax,%rdx,4), %eax	# chroma_edge, D.5651
	movsbl	%al, %eax	# D.5651, tmp155
	movl	%eax, -60(%rbp)	# tmp155, edge_cr
	.loc 1 160 0
	movl	-80(%rbp), %r8d	# mvlimit, tmp156
	movl	-92(%rbp), %edi	# edge, tmp157
	movl	-96(%rbp), %ecx	# dir, tmp158
	movl	-140(%rbp), %edx	# MbQAddr, tmp159
	movq	-120(%rbp), %rsi	# img, tmp160
	leaq	-32(%rbp), %rax	#, tmp161
	movl	%r8d, %r9d	# tmp156,
	movl	%edi, %r8d	# tmp157,
	movq	%rax, %rdi	# tmp161,
	call	GetStrength	#
	.loc 1 161 0
	movzbl	-32(%rbp), %eax	# Strength, D.5652
	movzbl	%al, %eax	# D.5652, tmp162
	movl	%eax, -72(%rbp)	# tmp162, StrengthSum
	.loc 1 162 0
	movl	$1, -76(%rbp)	#, i
	jmp	.L22	#
.L23:
	.loc 1 162 0 is_stmt 0 discriminator 2
	movl	-76(%rbp), %eax	# i, tmp164
	cltq
	movzbl	-32(%rbp,%rax), %eax	# Strength, D.5652
	movzbl	%al, %eax	# D.5652, D.5649
	addl	%eax, -72(%rbp)	# D.5649, StrengthSum
	addl	$1, -76(%rbp)	#, i
.L22:
	.loc 1 162 0 discriminator 1
	cmpl	$15, -76(%rbp)	#, i
	jle	.L23	#,
	.loc 1 163 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, StrengthSum
	je	.L24	#,
	.loc 1 165 0
	movl	-92(%rbp), %eax	# edge, tmp166
	cltq
	movl	-48(%rbp,%rax,4), %eax	# filterNon8x8LumaEdgesFlag, D.5649
	testl	%eax, %eax	# D.5649
	je	.L25	#,
	.loc 1 166 0
	movq	-120(%rbp), %rax	# img, tmp167
	movl	52(%rax), %edi	# img_12(D)->width, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp168
	movl	620(%rax), %r9d	# MbQ_23->LFBetaOffset, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp169
	movl	616(%rax), %r8d	# MbQ_23->LFAlphaC0Offset, D.5649
	movl	-140(%rbp), %ecx	# MbQAddr, tmp170
	movq	-120(%rbp), %rdx	# img, tmp171
	leaq	-32(%rbp), %rsi	#, tmp172
	movq	-128(%rbp), %rax	# imgY, tmp173
	movl	$0, 32(%rsp)	#,
	movl	$0, 24(%rsp)	#,
	movl	%edi, 16(%rsp)	# D.5649,
	movl	-92(%rbp), %edi	# edge, tmp174
	movl	%edi, 8(%rsp)	# tmp174,
	movl	-96(%rbp), %edi	# dir, tmp175
	movl	%edi, (%rsp)	# tmp175,
	movq	%rax, %rdi	# tmp173,
	call	EdgeLoop	#
.L25:
	.loc 1 167 0
	cmpq	$0, -136(%rbp)	#, imgUV
	je	.L24	#,
	.loc 1 167 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, edge_cr
	js	.L24	#,
	.loc 1 169 0 is_stmt 1
	movq	-120(%rbp), %rax	# img, tmp176
	movl	56(%rax), %edi	# img_12(D)->width_cr, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp177
	movl	620(%rax), %r9d	# MbQ_23->LFBetaOffset, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp178
	movl	616(%rax), %r8d	# MbQ_23->LFAlphaC0Offset, D.5649
	movq	-136(%rbp), %rax	# imgUV, tmp179
	movq	(%rax), %rax	# *imgUV_69(D), D.5653
	movl	-140(%rbp), %ecx	# MbQAddr, tmp180
	movq	-120(%rbp), %rdx	# img, tmp181
	leaq	-32(%rbp), %rsi	#, tmp182
	movl	$0, 32(%rsp)	#,
	movl	$1, 24(%rsp)	#,
	movl	%edi, 16(%rsp)	# D.5649,
	movl	-60(%rbp), %edi	# edge_cr, tmp183
	movl	%edi, 8(%rsp)	# tmp183,
	movl	-96(%rbp), %edi	# dir, tmp184
	movl	%edi, (%rsp)	# tmp184,
	movq	%rax, %rdi	# D.5653,
	call	EdgeLoop	#
	.loc 1 170 0
	movq	-120(%rbp), %rax	# img, tmp185
	movl	56(%rax), %edi	# img_12(D)->width_cr, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp186
	movl	620(%rax), %r9d	# MbQ_23->LFBetaOffset, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp187
	movl	616(%rax), %r8d	# MbQ_23->LFAlphaC0Offset, D.5649
	movq	-136(%rbp), %rax	# imgUV, tmp188
	addq	$8, %rax	#, D.5654
	movq	(%rax), %rax	# *_77, D.5653
	movl	-140(%rbp), %ecx	# MbQAddr, tmp189
	movq	-120(%rbp), %rdx	# img, tmp190
	leaq	-32(%rbp), %rsi	#, tmp191
	movl	$1, 32(%rsp)	#,
	movl	$1, 24(%rsp)	#,
	movl	%edi, 16(%rsp)	# D.5649,
	movl	-60(%rbp), %edi	# edge_cr, tmp192
	movl	%edi, 8(%rsp)	# tmp192,
	movl	-96(%rbp), %edi	# dir, tmp193
	movl	%edi, (%rsp)	# tmp193,
	movq	%rax, %rdi	# D.5653,
	call	EdgeLoop	#
.L24:
	.loc 1 174 0
	cmpl	$0, -96(%rbp)	#, dir
	je	.L21	#,
	.loc 1 174 0 is_stmt 0 discriminator 1
	cmpl	$0, -92(%rbp)	#, edge
	jne	.L21	#,
	movq	-56(%rbp), %rax	# MbQ, tmp194
	movl	532(%rax), %eax	# MbQ_23->mb_field, D.5649
	testl	%eax, %eax	# D.5649
	jne	.L21	#,
	movzbl	mixedModeEdgeFlag(%rip), %eax	# mixedModeEdgeFlag, mixedModeEdgeFlag.7
	testb	%al, %al	# mixedModeEdgeFlag.7
	je	.L21	#,
	.loc 1 176 0 is_stmt 1
	movq	-120(%rbp), %rax	# img, tmp195
	movl	$2, 72636(%rax)	#, img_12(D)->DeblockCall
	.loc 1 177 0
	movl	-80(%rbp), %edi	# mvlimit, tmp196
	movl	-96(%rbp), %ecx	# dir, tmp197
	movl	-140(%rbp), %edx	# MbQAddr, tmp198
	movq	-120(%rbp), %rsi	# img, tmp199
	leaq	-32(%rbp), %rax	#, tmp200
	movl	%edi, %r9d	# tmp196,
	movl	$4, %r8d	#,
	movq	%rax, %rdi	# tmp200,
	call	GetStrength	#
	.loc 1 178 0
	leaq	-32(%rbp), %rax	#, Strength.8
	movl	(%rax), %eax	# MEM[(int *)Strength.8_81], D.5649
	testl	%eax, %eax	# D.5649
	je	.L26	#,
	.loc 1 180 0
	movl	-92(%rbp), %eax	# edge, tmp202
	cltq
	movl	-48(%rbp,%rax,4), %eax	# filterNon8x8LumaEdgesFlag, D.5649
	testl	%eax, %eax	# D.5649
	je	.L27	#,
	.loc 1 181 0
	movq	-120(%rbp), %rax	# img, tmp203
	movl	52(%rax), %edi	# img_12(D)->width, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp204
	movl	620(%rax), %r9d	# MbQ_23->LFBetaOffset, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp205
	movl	616(%rax), %r8d	# MbQ_23->LFAlphaC0Offset, D.5649
	movl	-140(%rbp), %ecx	# MbQAddr, tmp206
	movq	-120(%rbp), %rdx	# img, tmp207
	leaq	-32(%rbp), %rsi	#, tmp208
	movq	-128(%rbp), %rax	# imgY, tmp209
	movl	$0, 32(%rsp)	#,
	movl	$0, 24(%rsp)	#,
	movl	%edi, 16(%rsp)	# D.5649,
	movl	$4, 8(%rsp)	#,
	movl	-96(%rbp), %edi	# dir, tmp210
	movl	%edi, (%rsp)	# tmp210,
	movq	%rax, %rdi	# tmp209,
	call	EdgeLoop	#
.L27:
	.loc 1 182 0
	cmpq	$0, -136(%rbp)	#, imgUV
	je	.L26	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, edge_cr
	js	.L26	#,
	.loc 1 184 0 is_stmt 1
	movq	-120(%rbp), %rax	# img, tmp211
	movl	56(%rax), %edi	# img_12(D)->width_cr, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp212
	movl	620(%rax), %r9d	# MbQ_23->LFBetaOffset, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp213
	movl	616(%rax), %r8d	# MbQ_23->LFAlphaC0Offset, D.5649
	movq	-136(%rbp), %rax	# imgUV, tmp214
	movq	(%rax), %rax	# *imgUV_69(D), D.5653
	movl	-140(%rbp), %ecx	# MbQAddr, tmp215
	movq	-120(%rbp), %rdx	# img, tmp216
	leaq	-32(%rbp), %rsi	#, tmp217
	movl	$0, 32(%rsp)	#,
	movl	$1, 24(%rsp)	#,
	movl	%edi, 16(%rsp)	# D.5649,
	movl	$4, 8(%rsp)	#,
	movl	-96(%rbp), %edi	# dir, tmp218
	movl	%edi, (%rsp)	# tmp218,
	movq	%rax, %rdi	# D.5653,
	call	EdgeLoop	#
	.loc 1 185 0
	movq	-120(%rbp), %rax	# img, tmp219
	movl	56(%rax), %edi	# img_12(D)->width_cr, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp220
	movl	620(%rax), %r9d	# MbQ_23->LFBetaOffset, D.5649
	movq	-56(%rbp), %rax	# MbQ, tmp221
	movl	616(%rax), %r8d	# MbQ_23->LFAlphaC0Offset, D.5649
	movq	-136(%rbp), %rax	# imgUV, tmp222
	addq	$8, %rax	#, D.5654
	movq	(%rax), %rax	# *_94, D.5653
	movl	-140(%rbp), %ecx	# MbQAddr, tmp223
	movq	-120(%rbp), %rdx	# img, tmp224
	leaq	-32(%rbp), %rsi	#, tmp225
	movl	$1, 32(%rsp)	#,
	movl	$1, 24(%rsp)	#,
	movl	%edi, 16(%rsp)	# D.5649,
	movl	$4, 8(%rsp)	#,
	movl	-96(%rbp), %edi	# dir, tmp226
	movl	%edi, (%rsp)	# tmp226,
	movq	%rax, %rdi	# D.5653,
	call	EdgeLoop	#
.L26:
	.loc 1 188 0
	movq	-120(%rbp), %rax	# img, tmp227
	movl	$1, 72636(%rax)	#, img_12(D)->DeblockCall
.L21:
	.loc 1 154 0
	addl	$1, -92(%rbp)	#, edge
.L19:
	.loc 1 154 0 is_stmt 0 discriminator 1
	cmpl	$3, -92(%rbp)	#, edge
	jle	.L28	#,
	.loc 1 151 0 is_stmt 1
	addl	$1, -96(%rbp)	#, dir
.L14:
	.loc 1 151 0 is_stmt 0 discriminator 1
	cmpl	$1, -96(%rbp)	#, dir
	jle	.L29	#,
	.loc 1 194 0 is_stmt 1
	movq	-120(%rbp), %rax	# img, tmp228
	movl	$0, 72636(%rax)	#, img_12(D)->DeblockCall
.L4:
	.loc 1 196 0
	movq	-8(%rbp), %rax	# D.5655, tmp230
	xorq	%fs:40, %rax	#, tmp230
	je	.L30	#,
	call	__stack_chk_fail	#
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	DeblockMb, .-DeblockMb
	.globl	ININT_STRENGTH
	.data
	.align 16
	.type	ININT_STRENGTH, @object
	.size	ININT_STRENGTH, 16
ININT_STRENGTH:
	.long	67372036
	.long	50529027
	.long	50529027
	.long	50529027
	.globl	BLK_NUM
	.align 32
	.type	BLK_NUM, @object
	.size	BLK_NUM, 32
BLK_NUM:
	.byte	0
	.byte	4
	.byte	8
	.byte	12
	.byte	1
	.byte	5
	.byte	9
	.byte	13
	.byte	2
	.byte	6
	.byte	10
	.byte	14
	.byte	3
	.byte	7
	.byte	11
	.byte	15
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.globl	BLK_4_TO_8
	.align 16
	.type	BLK_4_TO_8, @object
	.size	BLK_4_TO_8, 16
BLK_4_TO_8:
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.text
	.globl	GetStrength
	.type	GetStrength, @function
GetStrength:
.LFB4:
	.loc 1 211 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -200(%rbp)	# Strength, Strength
	movq	%rsi, -208(%rbp)	# img, img
	movl	%edx, -212(%rbp)	# MbQAddr, MbQAddr
	movl	%ecx, -216(%rbp)	# dir, dir
	movl	%r8d, -220(%rbp)	# edge, edge
	movl	%r9d, -224(%rbp)	# mvlimit, mvlimit
	.loc 1 214 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.9
	movq	6504(%rax), %rax	# enc_picture.9_12->mv, D.5658
	movq	(%rax), %rax	# *_13, tmp629
	movq	%rax, -128(%rbp)	# tmp629, list0_mv
	.loc 1 215 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.10
	movq	6504(%rax), %rax	# enc_picture.10_15->mv, D.5658
	movq	8(%rax), %rax	# MEM[(short int * * * *)_16 + 8B], tmp630
	movq	%rax, -120(%rbp)	# tmp630, list1_mv
	.loc 1 216 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.11
	movq	6480(%rax), %rax	# enc_picture.11_18->ref_idx, D.5659
	movq	(%rax), %rax	# *_19, tmp631
	movq	%rax, -112(%rbp)	# tmp631, list0_refIdxArr
	.loc 1 217 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.12
	movq	6480(%rax), %rax	# enc_picture.12_21->ref_idx, D.5659
	movq	8(%rax), %rax	# MEM[(short int * * *)_22 + 8B], tmp632
	movq	%rax, -104(%rbp)	# tmp632, list1_refIdxArr
	.loc 1 218 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.13
	movq	6488(%rax), %rax	# enc_picture.13_24->ref_pic_id, D.5660
	movq	(%rax), %rax	# *_25, tmp633
	movq	%rax, -96(%rbp)	# tmp633, list0_refPicIdArr
	.loc 1 219 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.14
	movq	6488(%rax), %rax	# enc_picture.14_27->ref_pic_id, D.5660
	movq	8(%rax), %rax	# MEM[(int64 * * *)_28 + 8B], tmp634
	movq	%rax, -88(%rbp)	# tmp634, list1_refPicIdArr
	.loc 1 226 0
	movq	-208(%rbp), %rax	# img, tmp635
	movq	14168(%rax), %rdx	# img_30(D)->mb_data, D.5661
	movl	-212(%rbp), %eax	# MbQAddr, tmp636
	cltq
	imulq	$632, %rax, %rax	#, D.5662, D.5662
	addq	%rdx, %rax	# D.5661, tmp637
	movq	%rax, -80(%rbp)	# tmp637, MbQ
	.loc 1 228 0
	movl	$0, -172(%rbp)	#, idx
	jmp	.L32	#
.L74:
	.loc 1 230 0
	cmpl	$0, -216(%rbp)	#, dir
	jne	.L33	#,
	.loc 1 230 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %eax	# edge, tmp638
	sall	$2, %eax	#, iftmp.15
	jmp	.L34	#
.L33:
	.loc 1 230 0 discriminator 2
	movl	-172(%rbp), %eax	# idx, iftmp.15
.L34:
	.loc 1 230 0 discriminator 3
	movl	%eax, -168(%rbp)	# iftmp.15, xQ
	.loc 1 231 0 is_stmt 1 discriminator 3
	cmpl	$0, -216(%rbp)	#, dir
	je	.L35	#,
	.loc 1 231 0 is_stmt 0 discriminator 1
	cmpl	$3, -220(%rbp)	#, edge
	jg	.L36	#,
	movl	-220(%rbp), %eax	# edge, tmp639
	sall	$2, %eax	#, iftmp.17
	jmp	.L38	#
.L36:
	.loc 1 231 0 discriminator 2
	movl	$1, %eax	#, iftmp.17
	jmp	.L38	#
.L35:
	movl	-172(%rbp), %eax	# idx, iftmp.16
.L38:
	.loc 1 231 0 discriminator 3
	movl	%eax, -164(%rbp)	# iftmp.16, yQ
	.loc 1 232 0 is_stmt 1 discriminator 3
	movl	-216(%rbp), %eax	# dir, tmp640
	movl	-164(%rbp), %edx	# yQ, tmp641
	subl	%eax, %edx	# tmp640, D.5663
	movl	-216(%rbp), %eax	# dir, tmp642
	leal	-1(%rax), %ecx	#, D.5663
	movl	-168(%rbp), %eax	# xQ, tmp643
	leal	(%rcx,%rax), %esi	#, D.5663
	leaq	-32(%rbp), %rcx	#, tmp644
	movl	-212(%rbp), %eax	# MbQAddr, tmp645
	movq	%rcx, %r8	# tmp644,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp645,
	call	getNeighbour	#
	.loc 1 233 0 discriminator 3
	movl	-24(%rbp), %eax	# pixP.x, tmp646
	movl	%eax, -160(%rbp)	# tmp646, xP
	.loc 1 234 0 discriminator 3
	movl	-20(%rbp), %eax	# pixP.y, tmp647
	movl	%eax, -156(%rbp)	# tmp647, yP
	.loc 1 235 0 discriminator 3
	movq	-208(%rbp), %rax	# img, tmp648
	movq	14168(%rax), %rdx	# img_30(D)->mb_data, D.5661
	movl	-28(%rbp), %eax	# pixP.mb_addr, D.5663
	cltq
	imulq	$632, %rax, %rax	#, D.5662, D.5662
	addq	%rdx, %rax	# D.5661, tmp649
	movq	%rax, -72(%rbp)	# tmp649, MbP
	.loc 1 236 0 discriminator 3
	movq	-80(%rbp), %rax	# MbQ, tmp650
	movl	532(%rax), %edx	# MbQ_35->mb_field, D.5663
	movq	-72(%rbp), %rax	# MbP, tmp651
	movl	532(%rax), %eax	# MbP_56->mb_field, D.5663
	cmpl	%eax, %edx	# D.5663, D.5663
	setne	%al	#, D.5664
	movb	%al, mixedModeEdgeFlag(%rip)	# mixedModeEdgeFlag.18, mixedModeEdgeFlag
	.loc 1 238 0 discriminator 3
	movl	-164(%rbp), %eax	# yQ, tmp652
	andl	$-4, %eax	#, D.5663
	movl	%eax, %edx	# D.5663, D.5663
	movl	-168(%rbp), %eax	# xQ, tmp653
	sarl	$2, %eax	#, D.5663
	addl	%edx, %eax	# D.5663, tmp654
	movl	%eax, -152(%rbp)	# tmp654, blkQ
	.loc 1 239 0 discriminator 3
	movl	-156(%rbp), %eax	# yP, tmp655
	andl	$-4, %eax	#, D.5663
	movl	%eax, %edx	# D.5663, D.5663
	movl	-160(%rbp), %eax	# xP, tmp656
	sarl	$2, %eax	#, D.5663
	addl	%edx, %eax	# D.5663, tmp657
	movl	%eax, -148(%rbp)	# tmp657, blkP
	.loc 1 241 0 discriminator 3
	movq	-208(%rbp), %rax	# img, tmp658
	movl	24(%rax), %eax	# img_30(D)->type, D.5663
	cmpl	$3, %eax	#, D.5663
	je	.L39	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# img, tmp659
	movl	24(%rax), %eax	# img_30(D)->type, D.5663
	cmpl	$4, %eax	#, D.5663
	jne	.L40	#,
.L39:
	.loc 1 243 0 is_stmt 1
	movl	-172(%rbp), %eax	# idx, tmp660
	movslq	%eax, %rdx	# tmp660, D.5665
	movq	-200(%rbp), %rax	# Strength, tmp661
	addq	%rax, %rdx	# tmp661, D.5666
	cmpl	$0, -220(%rbp)	#, edge
	jne	.L41	#,
	.loc 1 243 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# img, tmp662
	movl	72400(%rax), %eax	# img_30(D)->MbaffFrameFlag, D.5663
	testl	%eax, %eax	# D.5663
	jne	.L42	#,
	movq	-208(%rbp), %rax	# img, tmp663
	movl	28(%rax), %eax	# img_30(D)->structure, D.5663
	testl	%eax, %eax	# D.5663
	je	.L43	#,
.L42:
	.loc 1 244 0 is_stmt 1 discriminator 2
	movq	-208(%rbp), %rax	# img, tmp664
	movl	72400(%rax), %eax	# img_30(D)->MbaffFrameFlag, D.5663
	.loc 1 243 0 discriminator 2
	testl	%eax, %eax	# D.5663
	je	.L44	#,
	.loc 1 244 0
	movq	-72(%rbp), %rax	# MbP, tmp665
	movl	532(%rax), %eax	# MbP_56->mb_field, D.5663
	testl	%eax, %eax	# D.5663
	jne	.L44	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# MbQ, tmp666
	movl	532(%rax), %eax	# MbQ_35->mb_field, D.5663
	testl	%eax, %eax	# D.5663
	je	.L43	#,
.L44:
	.loc 1 245 0 is_stmt 1 discriminator 2
	movq	-208(%rbp), %rax	# img, tmp667
	movl	72400(%rax), %eax	# img_30(D)->MbaffFrameFlag, D.5663
	.loc 1 244 0 discriminator 2
	testl	%eax, %eax	# D.5663
	jne	.L45	#,
	.loc 1 245 0
	movq	-208(%rbp), %rax	# img, tmp668
	movl	28(%rax), %eax	# img_30(D)->structure, D.5663
	testl	%eax, %eax	# D.5663
	je	.L41	#,
.L45:
	.loc 1 245 0 is_stmt 0 discriminator 1
	cmpl	$0, -216(%rbp)	#, dir
	jne	.L41	#,
.L43:
	.loc 1 243 0 is_stmt 1 discriminator 1
	movl	$4, %eax	#, iftmp.19
	jmp	.L46	#
.L41:
	.loc 1 243 0 is_stmt 0 discriminator 2
	movl	$3, %eax	#, iftmp.19
.L46:
	.loc 1 243 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.19, *_611
	jmp	.L47	#
.L40:
	.loc 1 250 0 is_stmt 1
	movl	-172(%rbp), %eax	# idx, tmp669
	movslq	%eax, %rdx	# tmp669, D.5665
	movq	-200(%rbp), %rax	# Strength, tmp670
	addq	%rax, %rdx	# tmp670, D.5666
	cmpl	$0, -220(%rbp)	#, edge
	jne	.L48	#,
	.loc 1 250 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# img, tmp671
	movl	72400(%rax), %eax	# img_30(D)->MbaffFrameFlag, D.5663
	testl	%eax, %eax	# D.5663
	jne	.L49	#,
	movq	-208(%rbp), %rax	# img, tmp672
	movl	28(%rax), %eax	# img_30(D)->structure, D.5663
	testl	%eax, %eax	# D.5663
	je	.L50	#,
.L49:
	.loc 1 251 0 is_stmt 1 discriminator 2
	movq	-208(%rbp), %rax	# img, tmp673
	movl	72400(%rax), %eax	# img_30(D)->MbaffFrameFlag, D.5663
	.loc 1 250 0 discriminator 2
	testl	%eax, %eax	# D.5663
	je	.L51	#,
	.loc 1 251 0
	movq	-72(%rbp), %rax	# MbP, tmp674
	movl	532(%rax), %eax	# MbP_56->mb_field, D.5663
	testl	%eax, %eax	# D.5663
	jne	.L51	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# MbQ, tmp675
	movl	532(%rax), %eax	# MbQ_35->mb_field, D.5663
	testl	%eax, %eax	# D.5663
	je	.L50	#,
.L51:
	.loc 1 252 0 is_stmt 1 discriminator 2
	movq	-208(%rbp), %rax	# img, tmp676
	movl	72400(%rax), %eax	# img_30(D)->MbaffFrameFlag, D.5663
	.loc 1 251 0 discriminator 2
	testl	%eax, %eax	# D.5663
	jne	.L52	#,
	.loc 1 252 0
	movq	-208(%rbp), %rax	# img, tmp677
	movl	28(%rax), %eax	# img_30(D)->structure, D.5663
	testl	%eax, %eax	# D.5663
	je	.L48	#,
.L52:
	.loc 1 252 0 is_stmt 0 discriminator 1
	cmpl	$0, -216(%rbp)	#, dir
	jne	.L48	#,
.L50:
	.loc 1 250 0 is_stmt 1 discriminator 1
	movl	$4, %eax	#, iftmp.20
	jmp	.L53	#
.L48:
	.loc 1 250 0 is_stmt 0 discriminator 2
	movl	$3, %eax	#, iftmp.20
.L53:
	.loc 1 250 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.20, *_71
	.loc 1 254 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# MbP, tmp678
	movl	72(%rax), %eax	# MbP_56->mb_type, D.5663
	cmpl	$9, %eax	#, D.5663
	je	.L47	#,
	.loc 1 254 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# MbP, tmp679
	movl	72(%rax), %eax	# MbP_56->mb_type, D.5663
	cmpl	$10, %eax	#, D.5663
	je	.L47	#,
	movq	-72(%rbp), %rax	# MbP, tmp680
	movl	72(%rax), %eax	# MbP_56->mb_type, D.5663
	cmpl	$14, %eax	#, D.5663
	je	.L47	#,
	movq	-72(%rbp), %rax	# MbP, tmp681
	movl	72(%rax), %eax	# MbP_56->mb_type, D.5663
	cmpl	$13, %eax	#, D.5663
	je	.L47	#,
	.loc 1 255 0 is_stmt 1
	movq	-80(%rbp), %rax	# MbQ, tmp682
	movl	72(%rax), %eax	# MbQ_35->mb_type, D.5663
	cmpl	$9, %eax	#, D.5663
	je	.L47	#,
	.loc 1 255 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# MbQ, tmp683
	movl	72(%rax), %eax	# MbQ_35->mb_type, D.5663
	cmpl	$10, %eax	#, D.5663
	je	.L47	#,
	movq	-80(%rbp), %rax	# MbQ, tmp684
	movl	72(%rax), %eax	# MbQ_35->mb_type, D.5663
	cmpl	$14, %eax	#, D.5663
	je	.L47	#,
	movq	-80(%rbp), %rax	# MbQ, tmp685
	movl	72(%rax), %eax	# MbQ_35->mb_type, D.5663
	cmpl	$13, %eax	#, D.5663
	je	.L47	#,
	.loc 1 257 0 is_stmt 1
	movq	-80(%rbp), %rax	# MbQ, tmp686
	movq	464(%rax), %rdx	# MbQ_35->cbp_blk, D.5667
	movl	-152(%rbp), %eax	# blkQ, tmp687
	movl	$1, %esi	#, tmp688
	movl	%eax, %ecx	# tmp687, tmp860
	sall	%cl, %esi	# tmp860, D.5663
	movl	%esi, %eax	# D.5663, D.5663
	cltq
	andq	%rdx, %rax	# D.5667, D.5667
	testq	%rax, %rax	# D.5667
	jne	.L54	#,
	.loc 1 257 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# MbP, tmp689
	movq	464(%rax), %rdx	# MbP_56->cbp_blk, D.5667
	movl	-148(%rbp), %eax	# blkP, tmp690
	movl	$1, %esi	#, tmp691
	movl	%eax, %ecx	# tmp690, tmp862
	sall	%cl, %esi	# tmp862, D.5663
	movl	%esi, %eax	# D.5663, D.5663
	cltq
	andq	%rdx, %rax	# D.5667, D.5667
	testq	%rax, %rax	# D.5667
	je	.L55	#,
.L54:
	.loc 1 258 0 is_stmt 1
	movl	-172(%rbp), %eax	# idx, tmp692
	movslq	%eax, %rdx	# tmp692, D.5665
	movq	-200(%rbp), %rax	# Strength, tmp693
	addq	%rdx, %rax	# D.5665, D.5666
	movb	$2, (%rax)	#, *_609
	jmp	.L47	#
.L55:
	.loc 1 263 0
	movzbl	mixedModeEdgeFlag(%rip), %eax	# mixedModeEdgeFlag, mixedModeEdgeFlag.21
	testb	%al, %al	# mixedModeEdgeFlag.21
	je	.L56	#,
	.loc 1 265 0
	movl	-172(%rbp), %eax	# idx, tmp694
	movslq	%eax, %rdx	# tmp694, D.5665
	movq	-200(%rbp), %rax	# Strength, tmp695
	addq	%rdx, %rax	# D.5665, D.5666
	movb	$1, (%rax)	#, *_99
	jmp	.L47	#
.L56:
	.loc 1 269 0
	leaq	-176(%rbp), %rdx	#, tmp696
	leaq	-180(%rbp), %rcx	#, tmp697
	movl	-212(%rbp), %eax	# MbQAddr, tmp698
	movq	%rcx, %rsi	# tmp697,
	movl	%eax, %edi	# tmp698,
	call	get_mb_block_pos	#
	.loc 1 270 0
	movl	-176(%rbp), %eax	# mb_y, mb_y.22
	leal	0(,%rax,4), %edx	#, D.5663
	movl	-152(%rbp), %eax	# blkQ, tmp699
	sarl	$2, %eax	#, D.5663
	addl	%edx, %eax	# D.5663, tmp700
	movl	%eax, -144(%rbp)	# tmp700, blk_y
	.loc 1 271 0
	movl	-180(%rbp), %eax	# mb_x, mb_x.23
	leal	0(,%rax,4), %edx	#, D.5663
	movl	-152(%rbp), %eax	# blkQ, tmp701
	andl	$3, %eax	#, D.5663
	addl	%edx, %eax	# D.5663, tmp702
	movl	%eax, -140(%rbp)	# tmp702, blk_x
	.loc 1 272 0
	movl	-12(%rbp), %eax	# pixP.pos_y, D.5663
	sarl	$2, %eax	#, tmp703
	movl	%eax, -136(%rbp)	# tmp703, blk_y2
	.loc 1 273 0
	movl	-16(%rbp), %eax	# pixP.pos_x, D.5663
	sarl	$2, %eax	#, tmp704
	movl	%eax, -132(%rbp)	# tmp704, blk_x2
.LBB2:
	.loc 1 277 0
	movl	-140(%rbp), %eax	# blk_x, tmp705
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-112(%rbp), %rax	# list0_refIdxArr, tmp706
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_114, D.5669
	movl	-144(%rbp), %edx	# blk_y, tmp707
	movslq	%edx, %rdx	# tmp707, D.5662
	addq	%rdx, %rdx	# D.5662
	addq	%rdx, %rax	# D.5662, D.5669
	movzwl	(%rax), %eax	# *_118, D.5670
	testw	%ax, %ax	# D.5670
	js	.L57	#,
	.loc 1 277 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# blk_x, tmp708
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-96(%rbp), %rax	# list0_refPicIdArr, tmp709
	addq	%rdx, %rax	# D.5662, D.5671
	movq	(%rax), %rax	# *_122, D.5672
	movl	-144(%rbp), %edx	# blk_y, tmp710
	movslq	%edx, %rdx	# tmp710, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5672
	movq	(%rax), %rax	# *_126, iftmp.24
	jmp	.L58	#
.L57:
	.loc 1 277 0 discriminator 2
	movq	$-1, %rax	#, iftmp.24
.L58:
	.loc 1 277 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.24, ref_p0
	.loc 1 278 0 is_stmt 1 discriminator 3
	movl	-132(%rbp), %eax	# blk_x2, tmp711
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-112(%rbp), %rax	# list0_refIdxArr, tmp712
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_132, D.5669
	movl	-136(%rbp), %edx	# blk_y2, tmp713
	movslq	%edx, %rdx	# tmp713, D.5662
	addq	%rdx, %rdx	# D.5662
	addq	%rdx, %rax	# D.5662, D.5669
	movzwl	(%rax), %eax	# *_136, D.5670
	testw	%ax, %ax	# D.5670
	js	.L59	#,
	.loc 1 278 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# blk_x2, tmp714
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-96(%rbp), %rax	# list0_refPicIdArr, tmp715
	addq	%rdx, %rax	# D.5662, D.5671
	movq	(%rax), %rax	# *_140, D.5672
	movl	-136(%rbp), %edx	# blk_y2, tmp716
	movslq	%edx, %rdx	# tmp716, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5672
	movq	(%rax), %rax	# *_144, iftmp.25
	jmp	.L60	#
.L59:
	.loc 1 278 0 discriminator 2
	movq	$-1, %rax	#, iftmp.25
.L60:
	.loc 1 278 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.25, ref_q0
	.loc 1 279 0 is_stmt 1 discriminator 3
	movl	-140(%rbp), %eax	# blk_x, tmp717
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-104(%rbp), %rax	# list1_refIdxArr, tmp718
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_150, D.5669
	movl	-144(%rbp), %edx	# blk_y, tmp719
	movslq	%edx, %rdx	# tmp719, D.5662
	addq	%rdx, %rdx	# D.5662
	addq	%rdx, %rax	# D.5662, D.5669
	movzwl	(%rax), %eax	# *_154, D.5670
	testw	%ax, %ax	# D.5670
	js	.L61	#,
	.loc 1 279 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# blk_x, tmp720
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-88(%rbp), %rax	# list1_refPicIdArr, tmp721
	addq	%rdx, %rax	# D.5662, D.5671
	movq	(%rax), %rax	# *_158, D.5672
	movl	-144(%rbp), %edx	# blk_y, tmp722
	movslq	%edx, %rdx	# tmp722, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5672
	movq	(%rax), %rax	# *_162, iftmp.26
	jmp	.L62	#
.L61:
	.loc 1 279 0 discriminator 2
	movq	$-1, %rax	#, iftmp.26
.L62:
	.loc 1 279 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.26, ref_p1
	.loc 1 280 0 is_stmt 1 discriminator 3
	movl	-132(%rbp), %eax	# blk_x2, tmp723
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-104(%rbp), %rax	# list1_refIdxArr, tmp724
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_168, D.5669
	movl	-136(%rbp), %edx	# blk_y2, tmp725
	movslq	%edx, %rdx	# tmp725, D.5662
	addq	%rdx, %rdx	# D.5662
	addq	%rdx, %rax	# D.5662, D.5669
	movzwl	(%rax), %eax	# *_172, D.5670
	testw	%ax, %ax	# D.5670
	js	.L63	#,
	.loc 1 280 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# blk_x2, tmp726
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-88(%rbp), %rax	# list1_refPicIdArr, tmp727
	addq	%rdx, %rax	# D.5662, D.5671
	movq	(%rax), %rax	# *_176, D.5672
	movl	-136(%rbp), %edx	# blk_y2, tmp728
	movslq	%edx, %rdx	# tmp728, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5672
	movq	(%rax), %rax	# *_180, iftmp.27
	jmp	.L64	#
.L63:
	.loc 1 280 0 discriminator 2
	movq	$-1, %rax	#, iftmp.27
.L64:
	.loc 1 280 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.27, ref_q1
	.loc 1 281 0 is_stmt 1 discriminator 3
	movq	-64(%rbp), %rax	# ref_p0, tmp729
	cmpq	-56(%rbp), %rax	# ref_q0, tmp729
	jne	.L65	#,
	.loc 1 281 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ref_p1, tmp730
	cmpq	-40(%rbp), %rax	# ref_q1, tmp730
	je	.L66	#,
.L65:
	.loc 1 281 0 discriminator 2
	movq	-64(%rbp), %rax	# ref_p0, tmp731
	cmpq	-40(%rbp), %rax	# ref_q1, tmp731
	jne	.L67	#,
	.loc 1 282 0 is_stmt 1
	movq	-48(%rbp), %rax	# ref_p1, tmp732
	cmpq	-56(%rbp), %rax	# ref_q0, tmp732
	jne	.L67	#,
.L66:
	.loc 1 284 0
	movl	-172(%rbp), %eax	# idx, tmp733
	movslq	%eax, %rdx	# tmp733, D.5665
	movq	-200(%rbp), %rax	# Strength, tmp734
	addq	%rdx, %rax	# D.5665, D.5666
	movb	$0, (%rax)	#, *_187
	.loc 1 286 0
	movq	-64(%rbp), %rax	# ref_p0, tmp735
	cmpq	-48(%rbp), %rax	# ref_p1, tmp735
	je	.L68	#,
	.loc 1 289 0
	movq	-64(%rbp), %rax	# ref_p0, tmp736
	cmpq	-56(%rbp), %rax	# ref_q0, tmp736
	jne	.L69	#,
	.loc 1 291 0
	movl	-172(%rbp), %eax	# idx, tmp737
	movslq	%eax, %rdx	# tmp737, D.5665
	movq	-200(%rbp), %rax	# Strength, tmp738
	leaq	(%rdx,%rax), %rcx	#, D.5666
	movl	-140(%rbp), %eax	# blk_x, tmp739
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp740
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_192, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp741
	movslq	%edx, %rdx	# tmp741, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_196, D.5669
	movzwl	(%rax), %eax	# *_197, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp742
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp743
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_202, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp744
	movslq	%esi, %rsi	# tmp744, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_206, D.5669
	movzwl	(%rax), %eax	# *_207, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp745, D.5663
	subl	%edx, %eax	# tmp745, D.5663
	cmpl	$3, %eax	#, D.5663
	setg	%dil	#, D.5664
	.loc 1 292 0
	movl	-140(%rbp), %eax	# blk_x, tmp746
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp747
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_215, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp748
	movslq	%edx, %rdx	# tmp748, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_219, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_221, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp749
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp750
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_226, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp751
	movslq	%esi, %rsi	# tmp751, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_230, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_232, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp752, D.5663
	subl	%edx, %eax	# tmp752, D.5663
	.loc 1 291 0
	cmpl	-224(%rbp), %eax	# mvlimit, D.5663
	setge	%al	#, D.5664
	orl	%edi, %eax	# D.5664, D.5664
	movl	%eax, %esi	# D.5664, D.5673
	.loc 1 293 0
	movl	-140(%rbp), %eax	# blk_x, tmp753
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp754
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_243, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp755
	movslq	%edx, %rdx	# tmp755, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_247, D.5669
	movzwl	(%rax), %eax	# *_248, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp756
	cltq
	leaq	0(,%rax,8), %rdi	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp757
	addq	%rdi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_253, D.5668
	movl	-136(%rbp), %edi	# blk_y2, tmp758
	movslq	%edi, %rdi	# tmp758, D.5662
	salq	$3, %rdi	#, D.5662
	addq	%rdi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_257, D.5669
	movzwl	(%rax), %eax	# *_258, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp759, D.5663
	subl	%edx, %eax	# tmp759, D.5663
	cmpl	$3, %eax	#, D.5663
	setg	%al	#, D.5664
	.loc 1 291 0
	orl	%eax, %esi	# D.5673, D.5673
	.loc 1 294 0
	movl	-140(%rbp), %eax	# blk_x, tmp760
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp761
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_268, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp762
	movslq	%edx, %rdx	# tmp762, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_272, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_274, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp763
	cltq
	leaq	0(,%rax,8), %rdi	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp764
	addq	%rdi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_279, D.5668
	movl	-136(%rbp), %edi	# blk_y2, tmp765
	movslq	%edi, %rdi	# tmp765, D.5662
	salq	$3, %rdi	#, D.5662
	addq	%rdi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_283, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_285, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp766, D.5663
	subl	%edx, %eax	# tmp766, D.5663
	cmpl	-224(%rbp), %eax	# mvlimit, D.5663
	setge	%al	#, D.5664
	.loc 1 291 0
	orl	%esi, %eax	# D.5673, D.5673
	movb	%al, (%rcx)	# D.5674, *_189
	.loc 1 286 0
	jmp	.L47	#
.L69:
	.loc 1 298 0
	movl	-172(%rbp), %eax	# idx, tmp767
	movslq	%eax, %rdx	# tmp767, D.5665
	movq	-200(%rbp), %rax	# Strength, tmp768
	leaq	(%rdx,%rax), %rcx	#, D.5666
	movl	-140(%rbp), %eax	# blk_x, tmp769
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp770
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_298, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp771
	movslq	%edx, %rdx	# tmp771, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_302, D.5669
	movzwl	(%rax), %eax	# *_303, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp772
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp773
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_308, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp774
	movslq	%esi, %rsi	# tmp774, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_312, D.5669
	movzwl	(%rax), %eax	# *_313, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp775, D.5663
	subl	%edx, %eax	# tmp775, D.5663
	cmpl	$3, %eax	#, D.5663
	setg	%dil	#, D.5664
	.loc 1 299 0
	movl	-140(%rbp), %eax	# blk_x, tmp776
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp777
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_321, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp778
	movslq	%edx, %rdx	# tmp778, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_325, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_327, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp779
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp780
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_332, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp781
	movslq	%esi, %rsi	# tmp781, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_336, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_338, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp782, D.5663
	subl	%edx, %eax	# tmp782, D.5663
	.loc 1 298 0
	cmpl	-224(%rbp), %eax	# mvlimit, D.5663
	setge	%al	#, D.5664
	orl	%edi, %eax	# D.5664, D.5664
	movl	%eax, %esi	# D.5664, D.5673
	.loc 1 300 0
	movl	-140(%rbp), %eax	# blk_x, tmp783
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp784
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_348, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp785
	movslq	%edx, %rdx	# tmp785, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_352, D.5669
	movzwl	(%rax), %eax	# *_353, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp786
	cltq
	leaq	0(,%rax,8), %rdi	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp787
	addq	%rdi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_358, D.5668
	movl	-136(%rbp), %edi	# blk_y2, tmp788
	movslq	%edi, %rdi	# tmp788, D.5662
	salq	$3, %rdi	#, D.5662
	addq	%rdi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_362, D.5669
	movzwl	(%rax), %eax	# *_363, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp789, D.5663
	subl	%edx, %eax	# tmp789, D.5663
	cmpl	$3, %eax	#, D.5663
	setg	%al	#, D.5664
	.loc 1 298 0
	orl	%eax, %esi	# D.5673, D.5673
	.loc 1 301 0
	movl	-140(%rbp), %eax	# blk_x, tmp790
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp791
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_373, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp792
	movslq	%edx, %rdx	# tmp792, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_377, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_379, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp793
	cltq
	leaq	0(,%rax,8), %rdi	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp794
	addq	%rdi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_384, D.5668
	movl	-136(%rbp), %edi	# blk_y2, tmp795
	movslq	%edi, %rdi	# tmp795, D.5662
	salq	$3, %rdi	#, D.5662
	addq	%rdi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_388, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_390, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp796, D.5663
	subl	%edx, %eax	# tmp796, D.5663
	cmpl	-224(%rbp), %eax	# mvlimit, D.5663
	setge	%al	#, D.5664
	.loc 1 298 0
	orl	%esi, %eax	# D.5673, D.5673
	movb	%al, (%rcx)	# D.5674, *_295
	.loc 1 286 0
	jmp	.L47	#
.L68:
	.loc 1 307 0
	movl	-172(%rbp), %eax	# idx, tmp797
	movslq	%eax, %rdx	# tmp797, D.5665
	movq	-200(%rbp), %rax	# Strength, tmp798
	leaq	(%rdx,%rax), %rcx	#, D.5666
	movl	-140(%rbp), %eax	# blk_x, tmp799
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp800
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_403, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp801
	movslq	%edx, %rdx	# tmp801, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_407, D.5669
	movzwl	(%rax), %eax	# *_408, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp802
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp803
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_413, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp804
	movslq	%esi, %rsi	# tmp804, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_417, D.5669
	movzwl	(%rax), %eax	# *_418, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp805, D.5663
	subl	%edx, %eax	# tmp805, D.5663
	cmpl	$3, %eax	#, D.5663
	setg	%dil	#, D.5664
	.loc 1 308 0
	movl	-140(%rbp), %eax	# blk_x, tmp806
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp807
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_426, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp808
	movslq	%edx, %rdx	# tmp808, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_430, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_432, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp809
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp810
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_437, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp811
	movslq	%esi, %rsi	# tmp811, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_441, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_443, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp812, D.5663
	subl	%edx, %eax	# tmp812, D.5663
	.loc 1 307 0
	cmpl	-224(%rbp), %eax	# mvlimit, D.5663
	setge	%al	#, D.5664
	orl	%edi, %eax	# D.5664, D.5664
	movzbl	%al, %esi	# D.5664, D.5663
	.loc 1 309 0
	movl	-140(%rbp), %eax	# blk_x, tmp813
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp814
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_453, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp815
	movslq	%edx, %rdx	# tmp815, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_457, D.5669
	movzwl	(%rax), %eax	# *_458, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp816
	cltq
	leaq	0(,%rax,8), %rdi	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp817
	addq	%rdi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_463, D.5668
	movl	-136(%rbp), %edi	# blk_y2, tmp818
	movslq	%edi, %rdi	# tmp818, D.5662
	salq	$3, %rdi	#, D.5662
	addq	%rdi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_467, D.5669
	movzwl	(%rax), %eax	# *_468, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp819, D.5663
	subl	%edx, %eax	# tmp819, D.5663
	cmpl	$3, %eax	#, D.5663
	setg	%al	#, D.5664
	movzbl	%al, %eax	# D.5664, D.5663
	.loc 1 308 0
	movl	%esi, %edi	# D.5663, D.5663
	orl	%eax, %edi	# D.5663, D.5663
	.loc 1 310 0
	movl	-140(%rbp), %eax	# blk_x, tmp820
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp821
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_478, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp822
	movslq	%edx, %rdx	# tmp822, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_482, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_484, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp823
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp824
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_489, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp825
	movslq	%esi, %rsi	# tmp825, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_493, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_495, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp826, D.5663
	subl	%edx, %eax	# tmp826, D.5663
	cmpl	-224(%rbp), %eax	# mvlimit, D.5663
	setge	%al	#, D.5664
	movzbl	%al, %eax	# D.5664, D.5663
	.loc 1 309 0
	orl	%edi, %eax	# D.5663, D.5663
	.loc 1 311 0
	testl	%eax, %eax	# D.5663
	je	.L72	#,
	.loc 1 312 0 discriminator 1
	movl	-140(%rbp), %eax	# blk_x, tmp827
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp828
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_505, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp829
	movslq	%edx, %rdx	# tmp829, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_509, D.5669
	movzwl	(%rax), %eax	# *_510, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp830
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp831
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_515, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp832
	movslq	%esi, %rsi	# tmp832, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_519, D.5669
	movzwl	(%rax), %eax	# *_520, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp833, D.5663
	subl	%edx, %eax	# tmp833, D.5663
	cmpl	$3, %eax	#, D.5663
	setg	%dil	#, D.5664
	.loc 1 313 0 discriminator 1
	movl	-140(%rbp), %eax	# blk_x, tmp834
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp835
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_528, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp836
	movslq	%edx, %rdx	# tmp836, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_532, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_534, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp837
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp838
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_539, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp839
	movslq	%esi, %rsi	# tmp839, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_543, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_545, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp840, D.5663
	subl	%edx, %eax	# tmp840, D.5663
	.loc 1 312 0 discriminator 1
	cmpl	-224(%rbp), %eax	# mvlimit, D.5663
	setge	%al	#, D.5664
	orl	%edi, %eax	# D.5664, D.5664
	movzbl	%al, %esi	# D.5664, D.5663
	.loc 1 314 0 discriminator 1
	movl	-140(%rbp), %eax	# blk_x, tmp841
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp842
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_555, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp843
	movslq	%edx, %rdx	# tmp843, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_559, D.5669
	movzwl	(%rax), %eax	# *_560, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp844
	cltq
	leaq	0(,%rax,8), %rdi	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp845
	addq	%rdi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_565, D.5668
	movl	-136(%rbp), %edi	# blk_y2, tmp846
	movslq	%edi, %rdi	# tmp846, D.5662
	salq	$3, %rdi	#, D.5662
	addq	%rdi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_569, D.5669
	movzwl	(%rax), %eax	# *_570, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp847, D.5663
	subl	%edx, %eax	# tmp847, D.5663
	cmpl	$3, %eax	#, D.5663
	setg	%al	#, D.5664
	movzbl	%al, %eax	# D.5664, D.5663
	.loc 1 313 0 discriminator 1
	movl	%esi, %edi	# D.5663, D.5663
	orl	%eax, %edi	# D.5663, D.5663
	.loc 1 315 0 discriminator 1
	movl	-140(%rbp), %eax	# blk_x, tmp848
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5662
	movq	-120(%rbp), %rax	# list1_mv, tmp849
	addq	%rdx, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_580, D.5668
	movl	-144(%rbp), %edx	# blk_y, tmp850
	movslq	%edx, %rdx	# tmp850, D.5662
	salq	$3, %rdx	#, D.5662
	addq	%rdx, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_584, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_586, D.5670
	movswl	%ax, %edx	# D.5670, D.5663
	movl	-132(%rbp), %eax	# blk_x2, tmp851
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5662
	movq	-128(%rbp), %rax	# list0_mv, tmp852
	addq	%rsi, %rax	# D.5662, D.5659
	movq	(%rax), %rax	# *_591, D.5668
	movl	-136(%rbp), %esi	# blk_y2, tmp853
	movslq	%esi, %rsi	# tmp853, D.5662
	salq	$3, %rsi	#, D.5662
	addq	%rsi, %rax	# D.5662, D.5668
	movq	(%rax), %rax	# *_595, D.5669
	addq	$2, %rax	#, D.5669
	movzwl	(%rax), %eax	# *_597, D.5670
	cwtl
	subl	%eax, %edx	# D.5663, D.5663
	movl	%edx, %eax	# D.5663, D.5663
	cltd
	xorl	%edx, %eax	# tmp854, D.5663
	subl	%edx, %eax	# tmp854, D.5663
	cmpl	-224(%rbp), %eax	# mvlimit, D.5663
	setge	%al	#, D.5664
	movzbl	%al, %eax	# D.5664, D.5663
	.loc 1 314 0 discriminator 1
	orl	%edi, %eax	# D.5663, D.5663
	.loc 1 311 0 discriminator 1
	testl	%eax, %eax	# D.5663
	je	.L72	#,
	.loc 1 311 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.28
	jmp	.L73	#
.L72:
	.loc 1 311 0 discriminator 2
	movl	$0, %eax	#, iftmp.28
.L73:
	.loc 1 307 0 is_stmt 1
	movb	%al, (%rcx)	# D.5674, *_400
	.loc 1 286 0
	jmp	.L47	#
.L67:
	.loc 1 320 0
	movl	-172(%rbp), %eax	# idx, tmp855
	movslq	%eax, %rdx	# tmp855, D.5665
	movq	-200(%rbp), %rax	# Strength, tmp856
	addq	%rdx, %rax	# D.5665, D.5666
	movb	$1, (%rax)	#, *_185
.L47:
.LBE2:
	.loc 1 228 0
	addl	$1, -172(%rbp)	#, idx
.L32:
	.loc 1 228 0 is_stmt 0 discriminator 1
	cmpl	$15, -172(%rbp)	#, idx
	jle	.L74	#,
	.loc 1 337 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	GetStrength, .-GetStrength
	.globl	EdgeLoop
	.type	EdgeLoop, @function
EdgeLoop:
.LFB5:
	.loc 1 349 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
	movq	%rdi, -280(%rbp)	# Img, Img
	movq	%rsi, -288(%rbp)	# Strength, Strength
	movq	%rdx, -296(%rbp)	# img, img
	movl	%ecx, -300(%rbp)	# MbQAddr, MbQAddr
	movl	%r8d, -304(%rbp)	# AlphaC0Offset, AlphaC0Offset
	movl	%r9d, -308(%rbp)	# BetaOffset, BetaOffset
	.loc 1 350 0
	movl	$0, -264(%rbp)	#, ap
	movl	$0, -260(%rbp)	#, aq
	.loc 1 353 0
	movl	$0, -252(%rbp)	#, L2
	movl	$0, -248(%rbp)	#, R2
	.loc 1 354 0
	movl	$0, -244(%rbp)	#, Alpha
	movl	$0, -240(%rbp)	#, Beta
	.loc 1 355 0
	movq	$0, -136(%rbp)	#, ClipTab
	.loc 1 366 0
	movl	$0, -32(%rbp)	#, pelnum_cr
	movl	$8, -28(%rbp)	#, pelnum_cr
	movl	$16, -24(%rbp)	#, pelnum_cr
	movl	$16, -20(%rbp)	#, pelnum_cr
	movl	$0, -16(%rbp)	#, pelnum_cr
	movl	$8, -12(%rbp)	#, pelnum_cr
	movl	$8, -8(%rbp)	#, pelnum_cr
	movl	$16, -4(%rbp)	#, pelnum_cr
	.loc 1 368 0
	cmpl	$0, 40(%rbp)	#, yuv
	jne	.L76	#,
	.loc 1 369 0
	movq	-296(%rbp), %rax	# img, tmp365
	movl	72660(%rax), %eax	# img_49(D)->bitdepth_luma, D.5675
	subl	$8, %eax	#, D.5675
	movl	$1, %edx	#, tmp366
	movl	%eax, %ecx	# D.5675, tmp659
	sall	%cl, %edx	# tmp659, tmp367
	movl	%edx, %eax	# tmp367, tmp367
	movl	%eax, -256(%rbp)	# tmp367, bitdepth_scale
	jmp	.L77	#
.L76:
	.loc 1 371 0
	movq	-296(%rbp), %rax	# img, tmp368
	movl	72664(%rax), %eax	# img_49(D)->bitdepth_chroma, D.5675
	subl	$8, %eax	#, D.5675
	movl	$1, %edx	#, tmp369
	movl	%eax, %ecx	# D.5675, tmp661
	sall	%cl, %edx	# tmp661, tmp370
	movl	%edx, %eax	# tmp370, tmp370
	movl	%eax, -256(%rbp)	# tmp370, bitdepth_scale
.L77:
	.loc 1 373 0
	cmpl	$0, 40(%rbp)	#, yuv
	je	.L78	#,
	.loc 1 373 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rax	# img, tmp371
	movl	72700(%rax), %eax	# img_49(D)->yuv_format, D.5675
	cltq
	movl	16(%rbp), %edx	# dir, tmp374
	movslq	%edx, %rdx	# tmp374, tmp373
	salq	$2, %rdx	#, tmp375
	addq	%rdx, %rax	# tmp375, tmp376
	movl	-32(%rbp,%rax,4), %eax	# pelnum_cr, iftmp.29
	jmp	.L79	#
.L78:
	.loc 1 373 0 discriminator 2
	movl	$16, %eax	#, iftmp.29
.L79:
	.loc 1 373 0 discriminator 3
	movl	%eax, -236(%rbp)	# iftmp.29, PelNum
	.loc 1 375 0 is_stmt 1 discriminator 3
	movl	$0, -268(%rbp)	#, pel
	jmp	.L80	#
.L149:
	.loc 1 377 0
	cmpl	$0, 16(%rbp)	#, dir
	jne	.L81	#,
	.loc 1 377 0 is_stmt 0 discriminator 1
	movl	24(%rbp), %eax	# edge, tmp377
	sall	$2, %eax	#, iftmp.30
	jmp	.L82	#
.L81:
	.loc 1 377 0 discriminator 2
	movl	-268(%rbp), %eax	# pel, iftmp.30
.L82:
	.loc 1 377 0 discriminator 3
	movl	%eax, -232(%rbp)	# iftmp.30, xQ
	.loc 1 378 0 is_stmt 1 discriminator 3
	cmpl	$0, 16(%rbp)	#, dir
	je	.L83	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	cmpl	$3, 24(%rbp)	#, edge
	jg	.L84	#,
	movl	24(%rbp), %eax	# edge, tmp378
	sall	$2, %eax	#, iftmp.32
	jmp	.L86	#
.L84:
	.loc 1 378 0 discriminator 2
	movl	$1, %eax	#, iftmp.32
	jmp	.L86	#
.L83:
	movl	-268(%rbp), %eax	# pel, iftmp.31
.L86:
	.loc 1 378 0 discriminator 3
	movl	%eax, -228(%rbp)	# iftmp.31, yQ
	.loc 1 379 0 is_stmt 1 discriminator 3
	movl	$1, %eax	#, tmp379
	subl	40(%rbp), %eax	# yuv, D.5675
	movl	%eax, %ecx	# D.5675, D.5675
	leaq	-64(%rbp), %rdi	#, tmp380
	movl	-228(%rbp), %edx	# yQ, tmp381
	movl	-232(%rbp), %esi	# xQ, tmp382
	movl	-300(%rbp), %eax	# MbQAddr, tmp383
	movq	%rdi, %r8	# tmp380,
	movl	%eax, %edi	# tmp383,
	call	getNeighbour	#
	.loc 1 380 0 discriminator 3
	movl	$1, %eax	#, tmp384
	subl	40(%rbp), %eax	# yuv, D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	16(%rbp), %eax	# dir, tmp385
	movl	-228(%rbp), %ecx	# yQ, tmp386
	movl	%ecx, %edi	# tmp386, D.5675
	subl	%eax, %edi	# tmp385, D.5675
	movl	16(%rbp), %eax	# dir, tmp387
	leal	-1(%rax), %ecx	#, D.5675
	movl	-232(%rbp), %eax	# xQ, tmp388
	leal	(%rcx,%rax), %esi	#, D.5675
	leaq	-96(%rbp), %rcx	#, tmp389
	movl	-300(%rbp), %eax	# MbQAddr, tmp390
	movq	%rcx, %r8	# tmp389,
	movl	%edx, %ecx	# D.5675,
	movl	%edi, %edx	# D.5675,
	movl	%eax, %edi	# tmp390,
	call	getNeighbour	#
	.loc 1 381 0 discriminator 3
	movl	-88(%rbp), %eax	# pixP.x, tmp391
	movl	%eax, -224(%rbp)	# tmp391, xP
	.loc 1 382 0 discriminator 3
	movl	-84(%rbp), %eax	# pixP.y, tmp392
	movl	%eax, -220(%rbp)	# tmp392, yP
	.loc 1 383 0 discriminator 3
	movq	-296(%rbp), %rax	# img, tmp393
	movq	14168(%rax), %rdx	# img_49(D)->mb_data, D.5676
	movl	-300(%rbp), %eax	# MbQAddr, tmp394
	cltq
	imulq	$632, %rax, %rax	#, D.5677, D.5677
	addq	%rdx, %rax	# D.5676, tmp395
	movq	%rax, -128(%rbp)	# tmp395, MbQ
	.loc 1 384 0 discriminator 3
	movq	-296(%rbp), %rax	# img, tmp396
	movq	14168(%rax), %rdx	# img_49(D)->mb_data, D.5676
	movl	-92(%rbp), %eax	# pixP.mb_addr, D.5675
	cltq
	imulq	$632, %rax, %rax	#, D.5677, D.5677
	addq	%rdx, %rax	# D.5676, tmp397
	movq	%rax, -120(%rbp)	# tmp397, MbP
	.loc 1 385 0 discriminator 3
	movq	-128(%rbp), %rax	# MbQ, tmp398
	movl	532(%rax), %eax	# MbQ_82->mb_field, D.5675
	testl	%eax, %eax	# D.5675
	jne	.L87	#,
	.loc 1 385 0 is_stmt 0 discriminator 2
	movq	-120(%rbp), %rax	# MbP, tmp399
	movl	532(%rax), %eax	# MbP_87->mb_field, D.5675
	testl	%eax, %eax	# D.5675
	je	.L88	#,
.L87:
	.loc 1 385 0 discriminator 1
	movl	$1, %eax	#, iftmp.33
	jmp	.L89	#
.L88:
	.loc 1 385 0 discriminator 3
	movl	$0, %eax	#, iftmp.33
.L89:
	.loc 1 385 0 discriminator 4
	movb	%al, fieldModeFilteringFlag(%rip)	# fieldModeFilteringFlag.34, fieldModeFilteringFlag
	.loc 1 386 0 is_stmt 1 discriminator 4
	cmpl	$0, 40(%rbp)	#, yuv
	je	.L90	#,
	.loc 1 386 0 is_stmt 0 discriminator 1
	cmpl	$8, -236(%rbp)	#, PelNum
	jne	.L90	#,
	movq	-128(%rbp), %rax	# MbQ, tmp400
	movl	532(%rax), %eax	# MbQ_82->mb_field, D.5675
	testl	%eax, %eax	# D.5675
	je	.L91	#,
	movq	-120(%rbp), %rax	# MbP, tmp401
	movl	532(%rax), %eax	# MbP_87->mb_field, D.5675
	testl	%eax, %eax	# D.5675
	jne	.L91	#,
	movl	-268(%rbp), %eax	# pel, tmp402
	addl	%eax, %eax	# iftmp.36
	jmp	.L92	#
.L91:
	.loc 1 386 0 discriminator 2
	movl	-268(%rbp), %eax	# pel, tmp403
	sarl	%eax	# D.5675
	leal	0(,%rax,4), %ecx	#, D.5675
	movl	-268(%rbp), %eax	# pel, tmp404
	cltd
	shrl	$31, %edx	#, tmp406
	addl	%edx, %eax	# tmp406, tmp407
	andl	$1, %eax	#, tmp408
	subl	%edx, %eax	# tmp406, tmp409
	addl	%ecx, %eax	# D.5675, iftmp.36
.L92:
	.loc 1 386 0 discriminator 3
	jmp	.L93	#
.L90:
	.loc 1 386 0 discriminator 2
	movl	-268(%rbp), %eax	# pel, iftmp.35
.L93:
	.loc 1 386 0 discriminator 3
	movl	%eax, -216(%rbp)	# iftmp.35, StrengthIdx
	.loc 1 388 0 is_stmt 1 discriminator 3
	movl	-96(%rbp), %eax	# pixP.available, D.5675
	testl	%eax, %eax	# D.5675
	jne	.L94	#,
	.loc 1 388 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# MbQ, tmp410
	movl	612(%rax), %eax	# MbQ_82->LFDisableIdc, D.5675
	testl	%eax, %eax	# D.5675
	jne	.L95	#,
.L94:
	.loc 1 389 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, dir
	je	.L96	#,
	.loc 1 389 0 is_stmt 0 discriminator 1
	movzbl	fieldModeFilteringFlag(%rip), %eax	# fieldModeFilteringFlag, fieldModeFilteringFlag.39
	testb	%al, %al	# fieldModeFilteringFlag.39
	je	.L97	#,
	movq	-128(%rbp), %rax	# MbQ, tmp411
	movl	532(%rax), %eax	# MbQ_82->mb_field, D.5675
	testl	%eax, %eax	# D.5675
	jne	.L97	#,
	movl	32(%rbp), %eax	# width, tmp412
	addl	%eax, %eax	# iftmp.38
	jmp	.L98	#
.L97:
	.loc 1 389 0 discriminator 2
	movl	32(%rbp), %eax	# width, iftmp.38
.L98:
	jmp	.L99	#
.L96:
	movl	$1, %eax	#, iftmp.37
.L99:
	.loc 1 389 0 discriminator 3
	movl	%eax, -212(%rbp)	# iftmp.37, incQ
	.loc 1 390 0 is_stmt 1 discriminator 3
	cmpl	$0, 16(%rbp)	#, dir
	je	.L100	#,
	.loc 1 390 0 is_stmt 0 discriminator 1
	movzbl	fieldModeFilteringFlag(%rip), %eax	# fieldModeFilteringFlag, fieldModeFilteringFlag.42
	testb	%al, %al	# fieldModeFilteringFlag.42
	je	.L101	#,
	movq	-120(%rbp), %rax	# MbP, tmp413
	movl	532(%rax), %eax	# MbP_87->mb_field, D.5675
	testl	%eax, %eax	# D.5675
	jne	.L101	#,
	movl	32(%rbp), %eax	# width, tmp414
	addl	%eax, %eax	# iftmp.41
	jmp	.L102	#
.L101:
	.loc 1 390 0 discriminator 2
	movl	32(%rbp), %eax	# width, iftmp.41
.L102:
	jmp	.L103	#
.L100:
	movl	$1, %eax	#, iftmp.40
.L103:
	.loc 1 390 0 discriminator 3
	movl	%eax, -208(%rbp)	# iftmp.40, incP
	.loc 1 391 0 is_stmt 1 discriminator 3
	movl	-44(%rbp), %eax	# pixQ.pos_y, D.5675
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5677
	movq	-280(%rbp), %rax	# Img, tmp415
	addq	%rdx, %rax	# D.5677, D.5678
	movq	(%rax), %rax	# *_124, D.5679
	movl	-48(%rbp), %edx	# pixQ.pos_x, D.5675
	movslq	%edx, %rdx	# D.5675, D.5677
	addq	%rdx, %rdx	# D.5677
	addq	%rdx, %rax	# D.5677, tmp416
	movq	%rax, -112(%rbp)	# tmp416, SrcPtrQ
	.loc 1 392 0 discriminator 3
	movl	-76(%rbp), %eax	# pixP.pos_y, D.5675
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5677
	movq	-280(%rbp), %rax	# Img, tmp417
	addq	%rdx, %rax	# D.5677, D.5678
	movq	(%rax), %rax	# *_133, D.5679
	movl	-80(%rbp), %edx	# pixP.pos_x, D.5675
	movslq	%edx, %rdx	# D.5675, D.5677
	addq	%rdx, %rdx	# D.5677
	addq	%rdx, %rax	# D.5677, tmp418
	movq	%rax, -104(%rbp)	# tmp418, SrcPtrP
	.loc 1 395 0 discriminator 3
	cmpl	$0, 40(%rbp)	#, yuv
	je	.L104	#,
	.loc 1 395 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# MbP, tmp419
	movl	12(%rax), %edx	# MbP_87->qp, D.5675
	movq	-296(%rbp), %rax	# img, tmp420
	movl	48(%rbp), %ecx	# uv, tmp422
	movslq	%ecx, %rcx	# tmp422, tmp421
	addq	$18176, %rcx	#, tmp423
	movl	12(%rax,%rcx,4), %eax	# img_49(D)->chroma_qp_offset, D.5675
	addl	%edx, %eax	# D.5675, D.5675
	testl	%eax, %eax	# D.5675
	js	.L105	#,
	movq	-120(%rbp), %rax	# MbP, tmp424
	movl	12(%rax), %edx	# MbP_87->qp, D.5675
	movq	-296(%rbp), %rax	# img, tmp425
	movl	48(%rbp), %ecx	# uv, tmp427
	movslq	%ecx, %rcx	# tmp427, tmp426
	addq	$18176, %rcx	#, tmp428
	movl	12(%rax,%rcx,4), %eax	# img_49(D)->chroma_qp_offset, D.5675
	addl	%edx, %eax	# D.5675, D.5675
	movl	$51, %edx	#, tmp429
	cmpl	$51, %eax	#, D.5675
	cmovg	%edx, %eax	# D.5675,, tmp429, iftmp.44
	jmp	.L106	#
.L105:
	.loc 1 395 0 discriminator 2
	movl	$0, %eax	#, iftmp.44
.L106:
	.loc 1 395 0 discriminator 3
	cltq
	movzbl	QP_SCALE_CR(%rax), %eax	# QP_SCALE_CR, D.5680
	movzbl	%al, %edx	# D.5680, D.5675
	movq	-128(%rbp), %rax	# MbQ, tmp431
	movl	12(%rax), %ecx	# MbQ_82->qp, D.5675
	movq	-296(%rbp), %rax	# img, tmp432
	movl	48(%rbp), %esi	# uv, tmp434
	movslq	%esi, %rsi	# tmp434, tmp433
	addq	$18176, %rsi	#, tmp435
	movl	12(%rax,%rsi,4), %eax	# img_49(D)->chroma_qp_offset, D.5675
	addl	%ecx, %eax	# D.5675, D.5675
	testl	%eax, %eax	# D.5675
	js	.L107	#,
	.loc 1 395 0 discriminator 1
	movq	-128(%rbp), %rax	# MbQ, tmp436
	movl	12(%rax), %ecx	# MbQ_82->qp, D.5675
	movq	-296(%rbp), %rax	# img, tmp437
	movl	48(%rbp), %esi	# uv, tmp439
	movslq	%esi, %rsi	# tmp439, tmp438
	addq	$18176, %rsi	#, tmp440
	movl	12(%rax,%rsi,4), %eax	# img_49(D)->chroma_qp_offset, D.5675
	addl	%ecx, %eax	# D.5675, D.5675
	movl	$51, %ecx	#, tmp441
	cmpl	$51, %eax	#, D.5675
	cmovg	%ecx, %eax	# D.5675,, tmp441, iftmp.45
	jmp	.L108	#
.L107:
	.loc 1 395 0 discriminator 2
	movl	$0, %eax	#, iftmp.45
.L108:
	cltq
	movzbl	QP_SCALE_CR(%rax), %eax	# QP_SCALE_CR, D.5680
	movzbl	%al, %eax	# D.5680, D.5675
	addl	%edx, %eax	# D.5675, D.5675
	addl	$1, %eax	#, D.5675
	sarl	%eax	# iftmp.43
	jmp	.L109	#
.L104:
	movq	-120(%rbp), %rax	# MbP, tmp443
	movl	12(%rax), %edx	# MbP_87->qp, D.5675
	movq	-128(%rbp), %rax	# MbQ, tmp444
	movl	12(%rax), %eax	# MbQ_82->qp, D.5675
	addl	%edx, %eax	# D.5675, D.5675
	addl	$1, %eax	#, D.5675
	sarl	%eax	# iftmp.43
.L109:
	.loc 1 395 0 discriminator 3
	movl	%eax, -204(%rbp)	# iftmp.43, QP
	.loc 1 397 0 is_stmt 1 discriminator 3
	movl	-304(%rbp), %eax	# AlphaC0Offset, tmp445
	movl	-204(%rbp), %edx	# QP, tmp446
	addl	%edx, %eax	# tmp446, D.5675
	testl	%eax, %eax	# D.5675
	js	.L110	#,
	.loc 1 397 0 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax	# AlphaC0Offset, tmp447
	movl	-204(%rbp), %edx	# QP, tmp448
	addl	%edx, %eax	# tmp448, D.5675
	movl	$51, %edx	#, tmp449
	cmpl	$51, %eax	#, D.5675
	cmovg	%edx, %eax	# D.5675,, tmp449, iftmp.46
	jmp	.L111	#
.L110:
	.loc 1 397 0 discriminator 2
	movl	$0, %eax	#, iftmp.46
.L111:
	.loc 1 397 0 discriminator 3
	movl	%eax, -200(%rbp)	# iftmp.46, indexA
	.loc 1 398 0 is_stmt 1 discriminator 3
	movl	-308(%rbp), %eax	# BetaOffset, tmp450
	movl	-204(%rbp), %edx	# QP, tmp451
	addl	%edx, %eax	# tmp451, D.5675
	testl	%eax, %eax	# D.5675
	js	.L112	#,
	.loc 1 398 0 is_stmt 0 discriminator 1
	movl	-308(%rbp), %eax	# BetaOffset, tmp452
	movl	-204(%rbp), %edx	# QP, tmp453
	addl	%edx, %eax	# tmp453, D.5675
	movl	$51, %edx	#, tmp454
	cmpl	$51, %eax	#, D.5675
	cmovg	%edx, %eax	# D.5675,, tmp454, iftmp.47
	jmp	.L113	#
.L112:
	.loc 1 398 0 discriminator 2
	movl	$0, %eax	#, iftmp.47
.L113:
	.loc 1 398 0 discriminator 3
	movl	%eax, -196(%rbp)	# iftmp.47, indexB
	.loc 1 400 0 is_stmt 1 discriminator 3
	movl	-200(%rbp), %eax	# indexA, tmp456
	cltq
	movzbl	ALPHA_TABLE(%rax), %eax	# ALPHA_TABLE, D.5680
	movzbl	%al, %eax	# D.5680, D.5675
	imull	-256(%rbp), %eax	# bitdepth_scale, tmp457
	movl	%eax, -244(%rbp)	# tmp457, Alpha
	.loc 1 401 0 discriminator 3
	movl	-196(%rbp), %eax	# indexB, tmp459
	cltq
	movzbl	BETA_TABLE(%rax), %eax	# BETA_TABLE, D.5680
	movzbl	%al, %eax	# D.5680, D.5675
	imull	-256(%rbp), %eax	# bitdepth_scale, tmp460
	movl	%eax, -240(%rbp)	# tmp460, Beta
	.loc 1 402 0 discriminator 3
	movl	-200(%rbp), %eax	# indexA, tmp462
	movslq	%eax, %rdx	# tmp462, tmp461
	movq	%rdx, %rax	# tmp461, tmp463
	salq	$2, %rax	#, tmp463
	addq	%rdx, %rax	# tmp461, tmp463
	addq	$CLIP_TAB, %rax	#, tmp464
	movq	%rax, -136(%rbp)	# tmp464, ClipTab
	.loc 1 404 0 discriminator 3
	movq	-104(%rbp), %rax	# SrcPtrP, tmp465
	movzwl	(%rax), %eax	# *SrcPtrP_138, D.5681
	movzwl	%ax, %eax	# D.5681, tmp466
	movl	%eax, -192(%rbp)	# tmp466, L0
	.loc 1 405 0 discriminator 3
	movq	-112(%rbp), %rax	# SrcPtrQ, tmp467
	movzwl	(%rax), %eax	# *SrcPtrQ_129, D.5681
	movzwl	%ax, %eax	# D.5681, tmp468
	movl	%eax, -188(%rbp)	# tmp468, R0
	.loc 1 406 0 discriminator 3
	movl	-208(%rbp), %eax	# incP, tmp469
	negl	%eax	# D.5675
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5677
	movq	-104(%rbp), %rax	# SrcPtrP, tmp470
	addq	%rdx, %rax	# D.5677, D.5679
	movzwl	(%rax), %eax	# *_195, D.5681
	movzwl	%ax, %eax	# D.5681, tmp471
	movl	%eax, -184(%rbp)	# tmp471, L1
	.loc 1 407 0 discriminator 3
	movl	-212(%rbp), %eax	# incQ, tmp472
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5677
	movq	-112(%rbp), %rax	# SrcPtrQ, tmp473
	addq	%rdx, %rax	# D.5677, D.5679
	movzwl	(%rax), %eax	# *_200, D.5681
	movzwl	%ax, %eax	# D.5681, tmp474
	movl	%eax, -180(%rbp)	# tmp474, R1
	.loc 1 408 0 discriminator 3
	movl	-208(%rbp), %eax	# incP, tmp475
	movslq	%eax, %rdx	# tmp475, D.5677
	movl	$0, %eax	#, tmp476
	subq	%rdx, %rax	# D.5677, tmp476
	salq	$2, %rax	#, tmp477
	movq	%rax, %rdx	# tmp476, D.5677
	movq	-104(%rbp), %rax	# SrcPtrP, tmp478
	addq	%rdx, %rax	# D.5677, D.5679
	movzwl	(%rax), %eax	# *_205, D.5681
	movzwl	%ax, %eax	# D.5681, tmp479
	movl	%eax, -252(%rbp)	# tmp479, L2
	.loc 1 409 0 discriminator 3
	movl	-212(%rbp), %eax	# incQ, tmp480
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5677
	movq	-112(%rbp), %rax	# SrcPtrQ, tmp481
	addq	%rdx, %rax	# D.5677, D.5679
	movzwl	(%rax), %eax	# *_210, D.5681
	movzwl	%ax, %eax	# D.5681, tmp482
	movl	%eax, -248(%rbp)	# tmp482, R2
	.loc 1 410 0 discriminator 3
	movl	-208(%rbp), %eax	# incP, tmp483
	movslq	%eax, %rdx	# tmp483, D.5677
	movl	$0, %eax	#, tmp484
	subq	%rdx, %rax	# D.5677, tmp484
	salq	$2, %rax	#, tmp485
	addq	%rdx, %rax	# D.5677, tmp484
	addq	%rax, %rax	# tmp486
	movq	%rax, %rdx	# tmp484, D.5677
	movq	-104(%rbp), %rax	# SrcPtrP, tmp487
	addq	%rdx, %rax	# D.5677, D.5679
	movzwl	(%rax), %eax	# *_215, D.5681
	movzwl	%ax, %eax	# D.5681, tmp488
	movl	%eax, -176(%rbp)	# tmp488, L3
	.loc 1 411 0 discriminator 3
	movl	-212(%rbp), %eax	# incQ, tmp489
	movslq	%eax, %rdx	# tmp489, D.5677
	movq	%rdx, %rax	# D.5677, tmp490
	addq	%rax, %rax	# tmp490
	addq	%rdx, %rax	# D.5677, tmp490
	addq	%rax, %rax	# tmp491
	movq	%rax, %rdx	# tmp490, D.5677
	movq	-112(%rbp), %rax	# SrcPtrQ, tmp492
	addq	%rdx, %rax	# D.5677, D.5679
	movzwl	(%rax), %eax	# *_220, D.5681
	movzwl	%ax, %eax	# D.5681, tmp493
	movl	%eax, -172(%rbp)	# tmp493, R3
	.loc 1 413 0 discriminator 3
	movl	-216(%rbp), %eax	# StrengthIdx, tmp494
	movslq	%eax, %rdx	# tmp494, D.5682
	movq	-288(%rbp), %rax	# Strength, tmp495
	addq	%rdx, %rax	# D.5682, D.5683
	movzbl	(%rax), %eax	# *_225, D.5680
	movzbl	%al, %eax	# D.5680, tmp496
	movl	%eax, -168(%rbp)	# tmp496, Strng
	cmpl	$0, -168(%rbp)	#, Strng
	je	.L95	#,
	.loc 1 415 0
	movl	-192(%rbp), %eax	# L0, tmp501
	movl	-188(%rbp), %edx	# R0, tmp502
	subl	%eax, %edx	# tmp501, tmp500
	movl	%edx, %eax	# tmp500, tmp500
	movl	%eax, -164(%rbp)	# tmp500, Delta
	movl	-164(%rbp), %eax	# Delta, tmp504
	sarl	$31, %eax	#, tmp503
	movl	%eax, %edx	# tmp503, tmp506
	xorl	-164(%rbp), %edx	# Delta, tmp506
	subl	%eax, %edx	# tmp503, tmp507
	movl	%edx, %eax	# tmp507, tmp507
	movl	%eax, -160(%rbp)	# tmp507, AbsDelta
	.loc 1 417 0
	movl	-160(%rbp), %eax	# AbsDelta, tmp508
	cmpl	-244(%rbp), %eax	# Alpha, tmp508
	jge	.L95	#,
	.loc 1 419 0
	movl	-168(%rbp), %eax	# Strng, tmp509
	movslq	%eax, %rdx	# tmp509, D.5682
	movq	-136(%rbp), %rax	# ClipTab, tmp510
	addq	%rdx, %rax	# D.5682, D.5683
	movzbl	(%rax), %eax	# *_231, D.5680
	movzbl	%al, %eax	# D.5680, D.5675
	imull	-256(%rbp), %eax	# bitdepth_scale, tmp511
	movl	%eax, -156(%rbp)	# tmp511, C0
	.loc 1 420 0
	movl	-180(%rbp), %eax	# R1, tmp512
	movl	-188(%rbp), %edx	# R0, tmp513
	subl	%eax, %edx	# tmp512, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	cltd
	xorl	%edx, %eax	# tmp514, D.5675
	subl	%edx, %eax	# tmp514, D.5675
	subl	-240(%rbp), %eax	# Beta, D.5675
	movl	%eax, %ecx	# D.5675, D.5675
	movl	-184(%rbp), %eax	# L1, tmp515
	movl	-192(%rbp), %edx	# L0, tmp516
	subl	%eax, %edx	# tmp515, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	cltd
	xorl	%edx, %eax	# tmp517, D.5675
	subl	%edx, %eax	# tmp517, D.5675
	subl	-240(%rbp), %eax	# Beta, D.5675
	andl	%ecx, %eax	# D.5675, D.5675
	testl	%eax, %eax	# D.5675
	jns	.L95	#,
	.loc 1 422 0
	cmpl	$0, 40(%rbp)	#, yuv
	jne	.L114	#,
	.loc 1 424 0
	movl	-248(%rbp), %eax	# R2, tmp518
	movl	-188(%rbp), %edx	# R0, tmp519
	subl	%eax, %edx	# tmp518, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	cltd
	xorl	%edx, %eax	# tmp520, D.5675
	subl	%edx, %eax	# tmp520, D.5675
	subl	-240(%rbp), %eax	# Beta, D.5675
	shrl	$31, %eax	#, tmp521
	movzbl	%al, %eax	# D.5684, tmp522
	movl	%eax, -260(%rbp)	# tmp522, aq
	.loc 1 425 0
	movl	-252(%rbp), %eax	# L2, tmp523
	movl	-192(%rbp), %edx	# L0, tmp524
	subl	%eax, %edx	# tmp523, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	cltd
	xorl	%edx, %eax	# tmp525, D.5675
	subl	%edx, %eax	# tmp525, D.5675
	subl	-240(%rbp), %eax	# Beta, D.5675
	shrl	$31, %eax	#, tmp526
	movzbl	%al, %eax	# D.5684, tmp527
	movl	%eax, -264(%rbp)	# tmp527, ap
.L114:
	.loc 1 428 0
	movl	-188(%rbp), %eax	# R0, tmp532
	movl	-192(%rbp), %edx	# L0, tmp533
	addl	%edx, %eax	# tmp533, tmp531
	movl	%eax, -152(%rbp)	# tmp531, RL0
	.loc 1 430 0
	cmpl	$4, -168(%rbp)	#, Strng
	jne	.L115	#,
	.loc 1 432 0
	cmpl	$0, 40(%rbp)	#, yuv
	je	.L116	#,
	.loc 1 434 0
	movl	-180(%rbp), %eax	# R1, tmp534
	leal	(%rax,%rax), %edx	#, D.5675
	movl	-188(%rbp), %eax	# R0, tmp535
	addl	%eax, %edx	# tmp535, D.5675
	movl	-184(%rbp), %eax	# L1, tmp536
	addl	%edx, %eax	# D.5675, D.5675
	addl	$2, %eax	#, D.5675
	sarl	$2, %eax	#, D.5675
	movl	%eax, %edx	# D.5675, D.5681
	movq	-112(%rbp), %rax	# SrcPtrQ, tmp537
	movw	%dx, (%rax)	# D.5681, *SrcPtrQ_129
	.loc 1 435 0
	movl	-184(%rbp), %eax	# L1, tmp538
	leal	(%rax,%rax), %edx	#, D.5675
	movl	-192(%rbp), %eax	# L0, tmp539
	addl	%eax, %edx	# tmp539, D.5675
	movl	-180(%rbp), %eax	# R1, tmp540
	addl	%edx, %eax	# D.5675, D.5675
	addl	$2, %eax	#, D.5675
	sarl	$2, %eax	#, D.5675
	movl	%eax, %edx	# D.5675, D.5681
	movq	-104(%rbp), %rax	# SrcPtrP, tmp541
	movw	%dx, (%rax)	# D.5681, *SrcPtrP_138
	jmp	.L95	#
.L116:
	.loc 1 439 0
	movl	-244(%rbp), %eax	# Alpha, tmp542
	sarl	$2, %eax	#, D.5675
	addl	$2, %eax	#, D.5675
	cmpl	-160(%rbp), %eax	# AbsDelta, D.5675
	setg	%al	#, D.5684
	movzbl	%al, %eax	# D.5684, tmp543
	movl	%eax, -148(%rbp)	# tmp543, small_gap
	.loc 1 441 0
	movl	-148(%rbp), %eax	# small_gap, tmp544
	andl	%eax, -260(%rbp)	# tmp544, aq
	.loc 1 442 0
	movl	-148(%rbp), %eax	# small_gap, tmp545
	andl	%eax, -264(%rbp)	# tmp545, ap
	.loc 1 444 0
	cmpl	$0, -260(%rbp)	#, aq
	je	.L118	#,
	.loc 1 444 0 is_stmt 0 discriminator 1
	movl	-152(%rbp), %eax	# RL0, tmp546
	movl	-180(%rbp), %edx	# R1, tmp547
	addl	%edx, %eax	# tmp547, D.5675
	leal	(%rax,%rax), %edx	#, D.5675
	movl	-184(%rbp), %eax	# L1, tmp548
	addl	%eax, %edx	# tmp548, D.5675
	movl	-248(%rbp), %eax	# R2, tmp549
	addl	%edx, %eax	# D.5675, D.5675
	addl	$4, %eax	#, D.5675
	sarl	$3, %eax	#, D.5675
	jmp	.L119	#
.L118:
	.loc 1 444 0 discriminator 2
	movl	-180(%rbp), %eax	# R1, tmp550
	leal	(%rax,%rax), %edx	#, D.5675
	movl	-188(%rbp), %eax	# R0, tmp551
	addl	%eax, %edx	# tmp551, D.5675
	movl	-184(%rbp), %eax	# L1, tmp552
	addl	%edx, %eax	# D.5675, D.5675
	addl	$2, %eax	#, D.5675
	sarl	$2, %eax	#, D.5675
.L119:
	.loc 1 444 0 discriminator 3
	movq	-112(%rbp), %rdx	# SrcPtrQ, tmp553
	movw	%ax, (%rdx)	# iftmp.48, *SrcPtrQ_129
	.loc 1 445 0 is_stmt 1 discriminator 3
	cmpl	$0, -264(%rbp)	#, ap
	je	.L120	#,
	.loc 1 445 0 is_stmt 0 discriminator 1
	movl	-152(%rbp), %eax	# RL0, tmp554
	movl	-184(%rbp), %edx	# L1, tmp555
	addl	%edx, %eax	# tmp555, D.5675
	leal	(%rax,%rax), %edx	#, D.5675
	movl	-180(%rbp), %eax	# R1, tmp556
	addl	%eax, %edx	# tmp556, D.5675
	movl	-252(%rbp), %eax	# L2, tmp557
	addl	%edx, %eax	# D.5675, D.5675
	addl	$4, %eax	#, D.5675
	sarl	$3, %eax	#, D.5675
	jmp	.L121	#
.L120:
	.loc 1 445 0 discriminator 2
	movl	-184(%rbp), %eax	# L1, tmp558
	leal	(%rax,%rax), %edx	#, D.5675
	movl	-192(%rbp), %eax	# L0, tmp559
	addl	%eax, %edx	# tmp559, D.5675
	movl	-180(%rbp), %eax	# R1, tmp560
	addl	%edx, %eax	# D.5675, D.5675
	addl	$2, %eax	#, D.5675
	sarl	$2, %eax	#, D.5675
.L121:
	.loc 1 445 0 discriminator 3
	movq	-104(%rbp), %rdx	# SrcPtrP, tmp561
	movw	%ax, (%rdx)	# iftmp.49, *SrcPtrP_138
	.loc 1 447 0 is_stmt 1 discriminator 3
	movl	-212(%rbp), %eax	# incQ, tmp562
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5677
	movq	-112(%rbp), %rax	# SrcPtrQ, tmp563
	addq	%rax, %rdx	# tmp563, D.5679
	cmpl	$0, -260(%rbp)	#, aq
	je	.L122	#,
	.loc 1 447 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %eax	# R0, tmp564
	movl	-248(%rbp), %ecx	# R2, tmp565
	addl	%eax, %ecx	# tmp564, D.5675
	movl	-180(%rbp), %eax	# R1, tmp566
	addl	%eax, %ecx	# tmp566, D.5675
	movl	-192(%rbp), %eax	# L0, tmp567
	addl	%ecx, %eax	# D.5675, D.5675
	addl	$2, %eax	#, D.5675
	sarl	$2, %eax	#, D.5675
	jmp	.L123	#
.L122:
	.loc 1 447 0 discriminator 2
	movl	-180(%rbp), %eax	# R1, tmp568
.L123:
	.loc 1 447 0 discriminator 3
	movw	%ax, (%rdx)	# iftmp.50, *_299
	.loc 1 448 0 is_stmt 1 discriminator 3
	movl	-208(%rbp), %eax	# incP, tmp569
	negl	%eax	# D.5675
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5677
	movq	-104(%rbp), %rax	# SrcPtrP, tmp570
	addq	%rax, %rdx	# tmp570, D.5679
	cmpl	$0, -264(%rbp)	#, ap
	je	.L124	#,
	.loc 1 448 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %eax	# L1, tmp571
	movl	-252(%rbp), %ecx	# L2, tmp572
	addl	%eax, %ecx	# tmp571, D.5675
	movl	-192(%rbp), %eax	# L0, tmp573
	addl	%eax, %ecx	# tmp573, D.5675
	movl	-188(%rbp), %eax	# R0, tmp574
	addl	%ecx, %eax	# D.5675, D.5675
	addl	$2, %eax	#, D.5675
	sarl	$2, %eax	#, D.5675
	jmp	.L125	#
.L124:
	.loc 1 448 0 discriminator 2
	movl	-184(%rbp), %eax	# L1, tmp575
.L125:
	.loc 1 448 0 discriminator 3
	movw	%ax, (%rdx)	# iftmp.51, *_310
	.loc 1 450 0 is_stmt 1 discriminator 3
	movl	-212(%rbp), %eax	# incQ, tmp576
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5677
	movq	-112(%rbp), %rax	# SrcPtrQ, tmp577
	addq	%rax, %rdx	# tmp577, D.5679
	cmpl	$0, -260(%rbp)	#, aq
	je	.L126	#,
	.loc 1 450 0 is_stmt 0 discriminator 1
	movl	-248(%rbp), %eax	# R2, tmp578
	movl	-172(%rbp), %ecx	# R3, tmp579
	addl	%ecx, %eax	# tmp579, D.5675
	leal	(%rax,%rax), %ecx	#, D.5675
	movl	-248(%rbp), %eax	# R2, tmp580
	addl	%eax, %ecx	# tmp580, D.5675
	movl	-180(%rbp), %eax	# R1, tmp581
	addl	%eax, %ecx	# tmp581, D.5675
	movl	-152(%rbp), %eax	# RL0, tmp582
	addl	%ecx, %eax	# D.5675, D.5675
	addl	$4, %eax	#, D.5675
	sarl	$3, %eax	#, D.5675
	jmp	.L127	#
.L126:
	.loc 1 450 0 discriminator 2
	movl	-248(%rbp), %eax	# R2, tmp583
.L127:
	.loc 1 450 0 discriminator 3
	movw	%ax, (%rdx)	# iftmp.52, *_320
	.loc 1 451 0 is_stmt 1 discriminator 3
	movl	-208(%rbp), %eax	# incP, tmp584
	movslq	%eax, %rdx	# tmp584, D.5677
	movl	$0, %eax	#, tmp585
	subq	%rdx, %rax	# D.5677, tmp585
	salq	$2, %rax	#, tmp586
	movq	%rax, %rdx	# tmp585, D.5677
	movq	-104(%rbp), %rax	# SrcPtrP, tmp587
	addq	%rax, %rdx	# tmp587, D.5679
	cmpl	$0, -264(%rbp)	#, ap
	je	.L128	#,
	.loc 1 451 0 is_stmt 0 discriminator 1
	movl	-252(%rbp), %eax	# L2, tmp588
	movl	-176(%rbp), %ecx	# L3, tmp589
	addl	%ecx, %eax	# tmp589, D.5675
	leal	(%rax,%rax), %ecx	#, D.5675
	movl	-252(%rbp), %eax	# L2, tmp590
	addl	%eax, %ecx	# tmp590, D.5675
	movl	-184(%rbp), %eax	# L1, tmp591
	addl	%eax, %ecx	# tmp591, D.5675
	movl	-152(%rbp), %eax	# RL0, tmp592
	addl	%ecx, %eax	# D.5675, D.5675
	addl	$4, %eax	#, D.5675
	sarl	$3, %eax	#, D.5675
	jmp	.L129	#
.L128:
	.loc 1 451 0 discriminator 2
	movl	-252(%rbp), %eax	# L2, tmp593
.L129:
	.loc 1 451 0 discriminator 3
	movw	%ax, (%rdx)	# iftmp.53, *_332
	jmp	.L95	#
.L115:
	.loc 1 456 0 is_stmt 1
	cmpl	$0, 40(%rbp)	#, yuv
	je	.L130	#,
	.loc 1 456 0 is_stmt 0 discriminator 1
	movl	-156(%rbp), %eax	# C0, tmp594
	addl	$1, %eax	#, iftmp.54
	jmp	.L131	#
.L130:
	.loc 1 456 0 discriminator 2
	movl	-264(%rbp), %eax	# ap, tmp595
	movl	-156(%rbp), %edx	# C0, tmp596
	addl	%eax, %edx	# tmp595, D.5675
	movl	-260(%rbp), %eax	# aq, tmp597
	addl	%edx, %eax	# D.5675, iftmp.54
.L131:
	.loc 1 456 0 discriminator 3
	movl	%eax, -144(%rbp)	# iftmp.54, c0
	.loc 1 457 0 is_stmt 1 discriminator 3
	movl	-164(%rbp), %eax	# Delta, tmp598
	leal	0(,%rax,4), %ecx	#, D.5675
	movl	-180(%rbp), %eax	# R1, tmp599
	movl	-184(%rbp), %edx	# L1, tmp600
	subl	%eax, %edx	# tmp599, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	addl	%ecx, %eax	# D.5675, D.5675
	addl	$4, %eax	#, D.5675
	sarl	$3, %eax	#, D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-144(%rbp), %eax	# c0, tmp601
	negl	%eax	# D.5675
	cmpl	%eax, %edx	# D.5675, D.5675
	jge	.L132	#,
	.loc 1 457 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# c0, tmp602
	negl	%eax	# iftmp.55
	jmp	.L133	#
.L132:
	.loc 1 457 0 discriminator 2
	movl	-164(%rbp), %eax	# Delta, tmp603
	leal	0(,%rax,4), %ecx	#, D.5675
	movl	-180(%rbp), %eax	# R1, tmp604
	movl	-184(%rbp), %edx	# L1, tmp605
	subl	%eax, %edx	# tmp604, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	addl	%ecx, %eax	# D.5675, D.5675
	addl	$4, %eax	#, D.5675
	sarl	$3, %eax	#, D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-144(%rbp), %eax	# c0, tmp606
	cmpl	%eax, %edx	# tmp606, D.5675
	cmovle	%edx, %eax	# D.5675,, iftmp.55
.L133:
	.loc 1 457 0 discriminator 3
	movl	%eax, -140(%rbp)	# iftmp.55, dif
	.loc 1 458 0 is_stmt 1 discriminator 3
	cmpl	$0, 40(%rbp)	#, yuv
	jne	.L134	#,
	.loc 1 460 0
	movl	-140(%rbp), %eax	# dif, tmp607
	movl	-192(%rbp), %edx	# L0, tmp608
	addl	%edx, %eax	# tmp608, D.5675
	testl	%eax, %eax	# D.5675
	js	.L135	#,
	.loc 1 460 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# dif, tmp609
	movl	-192(%rbp), %edx	# L0, tmp610
	addl	%eax, %edx	# tmp609, D.5675
	movq	-296(%rbp), %rax	# img, tmp611
	movl	72684(%rax), %eax	# img_49(D)->max_imgpel_value, D.5675
	cmpl	%eax, %edx	# D.5675, D.5675
	cmovle	%edx, %eax	# D.5675,, D.5675
	jmp	.L136	#
.L135:
	.loc 1 460 0 discriminator 2
	movl	$0, %eax	#, iftmp.56
.L136:
	.loc 1 460 0 discriminator 3
	movq	-104(%rbp), %rdx	# SrcPtrP, tmp612
	movw	%ax, (%rdx)	# iftmp.56, *SrcPtrP_138
	.loc 1 461 0 is_stmt 1 discriminator 3
	movl	-140(%rbp), %eax	# dif, tmp613
	movl	-188(%rbp), %edx	# R0, tmp614
	subl	%eax, %edx	# tmp613, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	testl	%eax, %eax	# D.5675
	js	.L137	#,
	.loc 1 461 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# dif, tmp615
	movl	-188(%rbp), %edx	# R0, tmp616
	subl	%eax, %edx	# tmp615, D.5675
	movq	-296(%rbp), %rax	# img, tmp617
	movl	72684(%rax), %eax	# img_49(D)->max_imgpel_value, D.5675
	cmpl	%eax, %edx	# D.5675, D.5675
	cmovle	%edx, %eax	# D.5675,, D.5675
	jmp	.L138	#
.L137:
	.loc 1 461 0 discriminator 2
	movl	$0, %eax	#, iftmp.57
.L138:
	.loc 1 461 0 discriminator 4
	movq	-112(%rbp), %rdx	# SrcPtrQ, tmp618
	movw	%ax, (%rdx)	# iftmp.57, *SrcPtrQ_129
	jmp	.L139	#
.L134:
	.loc 1 465 0 is_stmt 1
	movl	-140(%rbp), %eax	# dif, tmp619
	movl	-192(%rbp), %edx	# L0, tmp620
	addl	%edx, %eax	# tmp620, D.5675
	testl	%eax, %eax	# D.5675
	js	.L140	#,
	.loc 1 465 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# dif, tmp621
	movl	-192(%rbp), %edx	# L0, tmp622
	addl	%eax, %edx	# tmp621, D.5675
	movq	-296(%rbp), %rax	# img, tmp623
	movl	72688(%rax), %eax	# img_49(D)->max_imgpel_value_uv, D.5675
	cmpl	%eax, %edx	# D.5675, D.5675
	cmovle	%edx, %eax	# D.5675,, D.5675
	jmp	.L141	#
.L140:
	.loc 1 465 0 discriminator 2
	movl	$0, %eax	#, iftmp.58
.L141:
	.loc 1 465 0 discriminator 3
	movq	-104(%rbp), %rdx	# SrcPtrP, tmp624
	movw	%ax, (%rdx)	# iftmp.58, *SrcPtrP_138
	.loc 1 466 0 is_stmt 1 discriminator 3
	movl	-140(%rbp), %eax	# dif, tmp625
	movl	-188(%rbp), %edx	# R0, tmp626
	subl	%eax, %edx	# tmp625, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	testl	%eax, %eax	# D.5675
	js	.L142	#,
	.loc 1 466 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# dif, tmp627
	movl	-188(%rbp), %edx	# R0, tmp628
	subl	%eax, %edx	# tmp627, D.5675
	movq	-296(%rbp), %rax	# img, tmp629
	movl	72688(%rax), %eax	# img_49(D)->max_imgpel_value_uv, D.5675
	cmpl	%eax, %edx	# D.5675, D.5675
	cmovle	%edx, %eax	# D.5675,, D.5675
	jmp	.L143	#
.L142:
	.loc 1 466 0 discriminator 2
	movl	$0, %eax	#, iftmp.59
.L143:
	.loc 1 466 0 discriminator 3
	movq	-112(%rbp), %rdx	# SrcPtrQ, tmp630
	movw	%ax, (%rdx)	# iftmp.59, *SrcPtrQ_129
.L139:
	.loc 1 469 0 is_stmt 1
	cmpl	$0, 40(%rbp)	#, yuv
	jne	.L95	#,
	.loc 1 471 0
	cmpl	$0, -264(%rbp)	#, ap
	je	.L144	#,
	.loc 1 472 0
	movl	-208(%rbp), %eax	# incP, tmp631
	negl	%eax	# D.5675
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5677
	movq	-104(%rbp), %rax	# SrcPtrP, tmp632
	leaq	(%rdx,%rax), %rcx	#, D.5679
	movl	-208(%rbp), %eax	# incP, tmp633
	negl	%eax	# D.5675
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5677
	movq	-104(%rbp), %rax	# SrcPtrP, tmp634
	addq	%rdx, %rax	# D.5677, D.5679
	movzwl	(%rax), %esi	# *_391, D.5681
	movl	-152(%rbp), %eax	# RL0, tmp635
	addl	$1, %eax	#, D.5675
	sarl	%eax	# D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-252(%rbp), %eax	# L2, tmp636
	addl	%eax, %edx	# tmp636, D.5675
	movl	-184(%rbp), %eax	# L1, tmp637
	addl	%eax, %eax	# D.5675
	subl	%eax, %edx	# D.5675, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	sarl	%eax	# D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-156(%rbp), %eax	# C0, tmp638
	negl	%eax	# D.5675
	cmpl	%eax, %edx	# D.5675, D.5675
	jge	.L145	#,
	.loc 1 472 0 is_stmt 0 discriminator 1
	movl	-156(%rbp), %eax	# C0, tmp639
	negl	%eax	# iftmp.60
	jmp	.L146	#
.L145:
	.loc 1 472 0 discriminator 2
	movl	-152(%rbp), %eax	# RL0, tmp640
	addl	$1, %eax	#, D.5675
	sarl	%eax	# D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-252(%rbp), %eax	# L2, tmp641
	addl	%eax, %edx	# tmp641, D.5675
	movl	-184(%rbp), %eax	# L1, tmp642
	addl	%eax, %eax	# D.5675
	subl	%eax, %edx	# D.5675, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	sarl	%eax	# D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-156(%rbp), %eax	# C0, tmp643
	cmpl	%eax, %edx	# tmp643, D.5675
	cmovle	%edx, %eax	# D.5675,, D.5675
.L146:
	.loc 1 472 0 discriminator 3
	addl	%esi, %eax	# D.5681, D.5681
	movw	%ax, (%rcx)	# D.5681, *_387
.L144:
	.loc 1 473 0 is_stmt 1
	cmpl	$0, -260(%rbp)	#, aq
	je	.L95	#,
	.loc 1 474 0
	movl	-212(%rbp), %eax	# incQ, tmp644
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5677
	movq	-112(%rbp), %rax	# SrcPtrQ, tmp645
	leaq	(%rdx,%rax), %rcx	#, D.5679
	movl	-212(%rbp), %eax	# incQ, tmp646
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5677
	movq	-112(%rbp), %rax	# SrcPtrQ, tmp647
	addq	%rdx, %rax	# D.5677, D.5679
	movzwl	(%rax), %esi	# *_416, D.5681
	movl	-152(%rbp), %eax	# RL0, tmp648
	addl	$1, %eax	#, D.5675
	sarl	%eax	# D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-248(%rbp), %eax	# R2, tmp649
	addl	%eax, %edx	# tmp649, D.5675
	movl	-180(%rbp), %eax	# R1, tmp650
	addl	%eax, %eax	# D.5675
	subl	%eax, %edx	# D.5675, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	sarl	%eax	# D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-156(%rbp), %eax	# C0, tmp651
	negl	%eax	# D.5675
	cmpl	%eax, %edx	# D.5675, D.5675
	jge	.L147	#,
	.loc 1 474 0 is_stmt 0 discriminator 1
	movl	-156(%rbp), %eax	# C0, tmp652
	negl	%eax	# iftmp.61
	jmp	.L148	#
.L147:
	.loc 1 474 0 discriminator 2
	movl	-152(%rbp), %eax	# RL0, tmp653
	addl	$1, %eax	#, D.5675
	sarl	%eax	# D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-248(%rbp), %eax	# R2, tmp654
	addl	%eax, %edx	# tmp654, D.5675
	movl	-180(%rbp), %eax	# R1, tmp655
	addl	%eax, %eax	# D.5675
	subl	%eax, %edx	# D.5675, D.5675
	movl	%edx, %eax	# D.5675, D.5675
	sarl	%eax	# D.5675
	movl	%eax, %edx	# D.5675, D.5675
	movl	-156(%rbp), %eax	# C0, tmp656
	cmpl	%eax, %edx	# tmp656, D.5675
	cmovle	%edx, %eax	# D.5675,, D.5675
.L148:
	.loc 1 474 0 discriminator 3
	addl	%esi, %eax	# D.5681, D.5681
	movw	%ax, (%rcx)	# D.5681, *_413
.L95:
	.loc 1 375 0 is_stmt 1
	addl	$1, -268(%rbp)	#, pel
.L80:
	.loc 1 375 0 is_stmt 0 discriminator 1
	movl	-268(%rbp), %eax	# pel, tmp657
	cmpl	-236(%rbp), %eax	# PelNum, tmp657
	jl	.L149	#,
	.loc 1 482 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	EdgeLoop, .-EdgeLoop
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "mbuffer.h"
	.file 7 "image.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x22c4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF452
	.byte	0x1
	.long	.LASF453
	.long	.LASF454
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
	.long	.LASF11
	.byte	0x2
	.byte	0xc5
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.long	0xc2
	.uleb128 0x9
	.long	.LASF13
	.sleb128 0
	.uleb128 0x9
	.long	.LASF14
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.byte	0x2d
	.long	0xad
	.uleb128 0x4
	.long	0x34
	.long	0xdd
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa2
	.uleb128 0x7
	.long	.LASF16
	.byte	0x5
	.byte	0x3e
	.long	0x90
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x9b
	.long	0x12d
	.uleb128 0x9
	.long	.LASF17
	.sleb128 0
	.uleb128 0x9
	.long	.LASF18
	.sleb128 1
	.uleb128 0x9
	.long	.LASF19
	.sleb128 2
	.uleb128 0x9
	.long	.LASF20
	.sleb128 3
	.uleb128 0x9
	.long	.LASF21
	.sleb128 4
	.uleb128 0x9
	.long	.LASF22
	.sleb128 5
	.uleb128 0x9
	.long	.LASF23
	.sleb128 6
	.uleb128 0x9
	.long	.LASF24
	.sleb128 7
	.uleb128 0x9
	.long	.LASF25
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.long	0x148
	.uleb128 0x9
	.long	.LASF26
	.sleb128 0
	.uleb128 0x9
	.long	.LASF27
	.sleb128 1
	.uleb128 0x9
	.long	.LASF28
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x5
	.byte	0xbe
	.long	0x12d
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x17a
	.uleb128 0x9
	.long	.LASF30
	.sleb128 0
	.uleb128 0x9
	.long	.LASF31
	.sleb128 1
	.uleb128 0x9
	.long	.LASF32
	.sleb128 2
	.uleb128 0x9
	.long	.LASF33
	.sleb128 3
	.uleb128 0x9
	.long	.LASF34
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x26a
	.uleb128 0xb
	.long	.LASF35
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF37
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF39
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF40
	.byte	0x5
	.byte	0xd5
	.long	0xdd
	.byte	0x18
	.uleb128 0xb
	.long	.LASF41
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF42
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF43
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF44
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF45
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF46
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF47
	.byte	0x5
	.byte	0xdd
	.long	0xdd
	.byte	0x40
	.uleb128 0xb
	.long	.LASF48
	.byte	0x5
	.byte	0xde
	.long	0x83
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
	.long	.LASF49
	.byte	0x5
	.byte	0xe2
	.long	0x17a
	.uleb128 0x7
	.long	.LASF50
	.byte	0x5
	.byte	0xe4
	.long	0x280
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x2b3
	.uleb128 0xb
	.long	.LASF51
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
	.long	.LASF52
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF53
	.byte	0x5
	.byte	0xee
	.long	0x286
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x32a
	.uleb128 0xe
	.long	.LASF54
	.byte	0x5
	.value	0x104
	.long	0x32a
	.byte	0
	.uleb128 0xf
	.long	.LASF55
	.byte	0x5
	.value	0x105
	.long	0x340
	.value	0x210
	.uleb128 0xf
	.long	.LASF56
	.byte	0x5
	.value	0x106
	.long	0x356
	.value	0x330
	.uleb128 0xf
	.long	.LASF57
	.byte	0x5
	.value	0x107
	.long	0x36c
	.value	0x470
	.uleb128 0xf
	.long	.LASF58
	.byte	0x5
	.value	0x108
	.long	0x382
	.value	0x530
	.uleb128 0xf
	.long	.LASF59
	.byte	0x5
	.value	0x109
	.long	0x382
	.value	0x570
	.uleb128 0xf
	.long	.LASF60
	.byte	0x5
	.value	0x10a
	.long	0x392
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x340
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x356
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x36c
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x382
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x392
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x3a2
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF61
	.byte	0x5
	.value	0x10c
	.long	0x2be
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x442
	.uleb128 0xe
	.long	.LASF62
	.byte	0x5
	.value	0x11b
	.long	0x442
	.byte	0
	.uleb128 0xe
	.long	.LASF63
	.byte	0x5
	.value	0x11c
	.long	0x382
	.byte	0x20
	.uleb128 0xe
	.long	.LASF64
	.byte	0x5
	.value	0x11d
	.long	0x452
	.byte	0x60
	.uleb128 0xf
	.long	.LASF65
	.byte	0x5
	.value	0x11e
	.long	0x468
	.value	0x120
	.uleb128 0xf
	.long	.LASF66
	.byte	0x5
	.value	0x11f
	.long	0x47e
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF67
	.byte	0x5
	.value	0x120
	.long	0x47e
	.value	0xd00
	.uleb128 0xf
	.long	.LASF68
	.byte	0x5
	.value	0x121
	.long	0x494
	.value	0x1660
	.uleb128 0xf
	.long	.LASF69
	.byte	0x5
	.value	0x122
	.long	0x494
	.value	0x1980
	.uleb128 0xf
	.long	.LASF70
	.byte	0x5
	.value	0x123
	.long	0x47e
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF71
	.byte	0x5
	.value	0x124
	.long	0x47e
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x452
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x468
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x47e
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x494
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.long	0x4aa
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF72
	.byte	0x5
	.value	0x125
	.long	0x3ae
	.uleb128 0x11
	.long	.LASF78
	.byte	0x18
	.byte	0x5
	.value	0x129
	.long	0x50e
	.uleb128 0xe
	.long	.LASF73
	.byte	0x5
	.value	0x12b
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF74
	.byte	0x5
	.value	0x12c
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.string	"x"
	.byte	0x5
	.value	0x12d
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"y"
	.byte	0x5
	.value	0x12e
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF75
	.byte	0x5
	.value	0x12f
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF76
	.byte	0x5
	.value	0x130
	.long	0x34
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	.LASF77
	.byte	0x5
	.value	0x131
	.long	0x4b6
	.uleb128 0x11
	.long	.LASF79
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x54f
	.uleb128 0xe
	.long	.LASF80
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF81
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF82
	.byte	0x5
	.value	0x138
	.long	0x54f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x51a
	.uleb128 0x10
	.long	.LASF83
	.byte	0x5
	.value	0x139
	.long	0x51a
	.uleb128 0x11
	.long	.LASF84
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x5bd
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
	.long	.LASF82
	.byte	0x5
	.value	0x143
	.long	0x5bd
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x561
	.uleb128 0x10
	.long	.LASF90
	.byte	0x5
	.value	0x144
	.long	0x561
	.uleb128 0x11
	.long	.LASF91
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x65d
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
	.long	0x677
	.byte	0x20
	.uleb128 0xe
	.long	.LASF98
	.byte	0x5
	.value	0x15a
	.long	0x693
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x677
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x83
	.uleb128 0x14
	.long	0x83
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x65d
	.uleb128 0x13
	.long	0x68d
	.uleb128 0x14
	.long	0x68d
	.uleb128 0x14
	.long	0x275
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5cf
	.uleb128 0x6
	.byte	0x8
	.long	0x67d
	.uleb128 0x10
	.long	.LASF99
	.byte	0x5
	.value	0x15c
	.long	0x5cf
	.uleb128 0x15
	.long	.LASF100
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x91f
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
	.long	0xcd
	.byte	0x14
	.uleb128 0xe
	.long	.LASF106
	.byte	0x5
	.value	0x168
	.long	0x91f
	.byte	0x38
	.uleb128 0xe
	.long	.LASF107
	.byte	0x5
	.value	0x169
	.long	0x91f
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
	.long	0x925
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF109
	.byte	0x5
	.value	0x16d
	.long	0x947
	.value	0x14c
	.uleb128 0xf
	.long	.LASF110
	.byte	0x5
	.value	0x16e
	.long	0x947
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
	.long	0xe3
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF112
	.byte	0x5
	.value	0x171
	.long	0x957
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF113
	.byte	0x5
	.value	0x172
	.long	0x957
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
	.long	0x967
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
	.long	0x6a5
	.uleb128 0x4
	.long	0x34
	.long	0x947
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
	.long	0x957
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x967
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF143
	.uleb128 0x10
	.long	.LASF144
	.byte	0x5
	.value	0x196
	.long	0x6a5
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0xa13
	.uleb128 0xe
	.long	.LASF145
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF146
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF147
	.byte	0x5
	.value	0x19f
	.long	0xa2
	.byte	0x8
	.uleb128 0xe
	.long	.LASF148
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF149
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF150
	.byte	0x5
	.value	0x1a2
	.long	0xa2
	.byte	0x14
	.uleb128 0xe
	.long	.LASF151
	.byte	0x5
	.value	0x1a4
	.long	0xa2
	.byte	0x15
	.uleb128 0xe
	.long	.LASF152
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF153
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF154
	.byte	0x5
	.value	0x1a8
	.long	0xdd
	.byte	0x20
	.uleb128 0xe
	.long	.LASF155
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF156
	.byte	0x5
	.value	0x1ab
	.long	0x97a
	.uleb128 0x11
	.long	.LASF157
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xa54
	.uleb128 0xe
	.long	.LASF158
	.byte	0x5
	.value	0x1b1
	.long	0xa54
	.byte	0
	.uleb128 0xe
	.long	.LASF159
	.byte	0x5
	.value	0x1b2
	.long	0x26a
	.byte	0x8
	.uleb128 0xe
	.long	.LASF160
	.byte	0x5
	.value	0x1b4
	.long	0xa7a
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa13
	.uleb128 0x18
	.long	0x34
	.long	0xa6e
	.uleb128 0x14
	.long	0xa6e
	.uleb128 0x14
	.long	0xa74
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x699
	.uleb128 0x6
	.byte	0x8
	.long	0xa1f
	.uleb128 0x6
	.byte	0x8
	.long	0xa5a
	.uleb128 0x10
	.long	.LASF161
	.byte	0x5
	.value	0x1b8
	.long	0xa1f
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xb99
	.uleb128 0xe
	.long	.LASF162
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
	.long	.LASF163
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF164
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF165
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF166
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF167
	.byte	0x5
	.value	0x1c3
	.long	0xb99
	.byte	0x18
	.uleb128 0xe
	.long	.LASF168
	.byte	0x5
	.value	0x1c4
	.long	0xb9f
	.byte	0x20
	.uleb128 0xe
	.long	.LASF169
	.byte	0x5
	.value	0x1c5
	.long	0xba5
	.byte	0x28
	.uleb128 0xe
	.long	.LASF170
	.byte	0x5
	.value	0x1c8
	.long	0xbab
	.byte	0x30
	.uleb128 0xe
	.long	.LASF171
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF172
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0xe
	.long	.LASF173
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0xe
	.long	.LASF174
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0xe
	.long	.LASF175
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF176
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0xe
	.long	.LASF177
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0xe
	.long	.LASF178
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0xe
	.long	.LASF179
	.byte	0x5
	.value	0x1d3
	.long	0xbc0
	.byte	0x78
	.uleb128 0xe
	.long	.LASF180
	.byte	0x5
	.value	0x1d5
	.long	0xbc6
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa80
	.uleb128 0x6
	.byte	0x8
	.long	0x3a2
	.uleb128 0x6
	.byte	0x8
	.long	0x4aa
	.uleb128 0x6
	.byte	0x8
	.long	0x555
	.uleb128 0x18
	.long	0xc2
	.long	0xbc0
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbb1
	.uleb128 0x4
	.long	0x34
	.long	0xbdc
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF181
	.byte	0x5
	.value	0x1d7
	.long	0xa8c
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xc52
	.uleb128 0xe
	.long	.LASF182
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF183
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF184
	.byte	0x5
	.value	0x1df
	.long	0xc52
	.byte	0x8
	.uleb128 0xf
	.long	.LASF185
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF186
	.byte	0x5
	.value	0x1e1
	.long	0xc68
	.value	0x32c
	.uleb128 0xf
	.long	.LASF187
	.byte	0x5
	.value	0x1e2
	.long	0xc68
	.value	0x330
	.uleb128 0xf
	.long	.LASF188
	.byte	0x5
	.value	0x1e3
	.long	0xc68
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xc62
	.long	0xc62
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbdc
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF189
	.uleb128 0x10
	.long	.LASF190
	.byte	0x5
	.value	0x1e4
	.long	0xbe8
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0xc87
	.uleb128 0x6
	.byte	0x8
	.long	0xc8d
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xdd
	.uleb128 0x19
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x167e
	.uleb128 0xe
	.long	.LASF191
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
	.long	.LASF192
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF193
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF195
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
	.long	.LASF196
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF197
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF198
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
	.long	.LASF199
	.byte	0x5
	.value	0x372
	.long	0xc68
	.byte	0x30
	.uleb128 0xe
	.long	.LASF200
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF201
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF202
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF203
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF204
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF206
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF207
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF208
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF209
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF210
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF211
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF212
	.byte	0x5
	.value	0x37f
	.long	0xc7b
	.byte	0x68
	.uleb128 0xe
	.long	.LASF213
	.byte	0x5
	.value	0x380
	.long	0xc7b
	.byte	0x70
	.uleb128 0xe
	.long	.LASF214
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF215
	.byte	0x5
	.value	0x383
	.long	0x167e
	.byte	0x80
	.uleb128 0xe
	.long	.LASF216
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF217
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF218
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF219
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF220
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF221
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF222
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF223
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF224
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF225
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF226
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF227
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF228
	.byte	0x5
	.value	0x395
	.long	0x1684
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF229
	.byte	0x5
	.value	0x397
	.long	0x16a0
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF230
	.byte	0x5
	.value	0x398
	.long	0x16bc
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF231
	.byte	0x5
	.value	0x399
	.long	0x16d8
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x16fa
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x1710
	.value	0x3338
	.uleb128 0xf
	.long	.LASF232
	.byte	0x5
	.value	0x39d
	.long	0x1726
	.value	0x3738
	.uleb128 0xf
	.long	.LASF233
	.byte	0x5
	.value	0x39e
	.long	0x167e
	.value	0x3740
	.uleb128 0xf
	.long	.LASF234
	.byte	0x5
	.value	0x3a0
	.long	0x172c
	.value	0x3748
	.uleb128 0xf
	.long	.LASF235
	.byte	0x5
	.value	0x3a1
	.long	0xc62
	.value	0x3750
	.uleb128 0xf
	.long	.LASF236
	.byte	0x5
	.value	0x3a2
	.long	0x1732
	.value	0x3758
	.uleb128 0xf
	.long	.LASF237
	.byte	0x5
	.value	0x3a3
	.long	0x1738
	.value	0x3760
	.uleb128 0x1a
	.long	.LASF238
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1a
	.long	.LASF239
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1b
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1a
	.long	.LASF240
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1a
	.long	.LASF241
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1a
	.long	.LASF242
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1a
	.long	.LASF243
	.byte	0x5
	.value	0x3ac
	.long	0x1749
	.long	0x11880
	.uleb128 0x1a
	.long	.LASF244
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1a
	.long	.LASF245
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1a
	.long	.LASF246
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1a
	.long	.LASF247
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1a
	.long	.LASF248
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1a
	.long	.LASF249
	.byte	0x5
	.value	0x3b4
	.long	0x967
	.long	0x118d8
	.uleb128 0x1a
	.long	.LASF250
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1a
	.long	.LASF251
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1a
	.long	.LASF252
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1a
	.long	.LASF253
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1a
	.long	.LASF254
	.byte	0x5
	.value	0x3ba
	.long	0x175f
	.long	0x118f0
	.uleb128 0x1a
	.long	.LASF255
	.byte	0x5
	.value	0x3bb
	.long	0x175f
	.long	0x118f8
	.uleb128 0x1a
	.long	.LASF256
	.byte	0x5
	.value	0x3bd
	.long	0x175f
	.long	0x11900
	.uleb128 0x1a
	.long	.LASF257
	.byte	0x5
	.value	0x3be
	.long	0x175f
	.long	0x11908
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x5
	.value	0x3bf
	.long	0x1783
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
	.long	.LASF258
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1a
	.long	.LASF259
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1a
	.long	.LASF260
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1a
	.long	.LASF261
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1a
	.long	.LASF262
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1a
	.long	.LASF263
	.byte	0x5
	.value	0x3ce
	.long	0x1793
	.long	0x11950
	.uleb128 0x1a
	.long	.LASF264
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1a
	.long	.LASF265
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1a
	.long	.LASF266
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1a
	.long	.LASF267
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1a
	.long	.LASF268
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1a
	.long	.LASF269
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1a
	.long	.LASF270
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1a
	.long	.LASF271
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1a
	.long	.LASF272
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1a
	.long	.LASF273
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1a
	.long	.LASF274
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1a
	.long	.LASF275
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1a
	.long	.LASF276
	.byte	0x5
	.value	0x3e4
	.long	0x17a9
	.long	0x11ae8
	.uleb128 0x1a
	.long	.LASF277
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1a
	.long	.LASF278
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1a
	.long	.LASF279
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1a
	.long	.LASF280
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1a
	.long	.LASF281
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1a
	.long	.LASF282
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1a
	.long	.LASF283
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1a
	.long	.LASF284
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1a
	.long	.LASF285
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1a
	.long	.LASF286
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1a
	.long	.LASF287
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1a
	.long	.LASF288
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1a
	.long	.LASF289
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1a
	.long	.LASF290
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1a
	.long	.LASF291
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1a
	.long	.LASF292
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1a
	.long	.LASF293
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1a
	.long	.LASF294
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1a
	.long	.LASF295
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1a
	.long	.LASF296
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1a
	.long	.LASF297
	.byte	0x5
	.value	0x409
	.long	0x17b9
	.long	0x11b40
	.uleb128 0x1a
	.long	.LASF298
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1a
	.long	.LASF299
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1a
	.long	.LASF300
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1a
	.long	.LASF301
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1a
	.long	.LASF302
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1a
	.long	.LASF303
	.byte	0x5
	.value	0x413
	.long	0x967
	.long	0x11b60
	.uleb128 0x1a
	.long	.LASF304
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1a
	.long	.LASF305
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1a
	.long	.LASF306
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1a
	.long	.LASF307
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1a
	.long	.LASF308
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1a
	.long	.LASF309
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1a
	.long	.LASF310
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1a
	.long	.LASF311
	.byte	0x5
	.value	0x41b
	.long	0x17bf
	.long	0x11b88
	.uleb128 0x1a
	.long	.LASF312
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1a
	.long	.LASF313
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1a
	.long	.LASF314
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1a
	.long	.LASF316
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1a
	.long	.LASF317
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1a
	.long	.LASF318
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1a
	.long	.LASF319
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1a
	.long	.LASF320
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1a
	.long	.LASF321
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1a
	.long	.LASF322
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1a
	.long	.LASF325
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1a
	.long	.LASF326
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1a
	.long	.LASF327
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1a
	.long	.LASF328
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1a
	.long	.LASF329
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1a
	.long	.LASF330
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1a
	.long	.LASF331
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1a
	.long	.LASF332
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1a
	.long	.LASF333
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1a
	.long	.LASF334
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1a
	.long	.LASF335
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1a
	.long	.LASF336
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1a
	.long	.LASF337
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1a
	.long	.LASF338
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1a
	.long	.LASF339
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1a
	.long	.LASF340
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1a
	.long	.LASF341
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1a
	.long	.LASF342
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1a
	.long	.LASF343
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1a
	.long	.LASF344
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1a
	.long	.LASF345
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1a
	.long	.LASF346
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc7b
	.uleb128 0x4
	.long	0x42
	.long	0x16a0
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
	.long	0x16bc
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
	.long	0x16d8
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
	.long	0x16fa
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
	.long	0x1710
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1726
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x167e
	.uleb128 0x6
	.byte	0x8
	.long	0xc6f
	.uleb128 0x6
	.byte	0x8
	.long	0x96e
	.uleb128 0x4
	.long	0x699
	.long	0x1749
	.uleb128 0x1c
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x175f
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1765
	.uleb128 0x6
	.byte	0x8
	.long	0x176b
	.uleb128 0x6
	.byte	0x8
	.long	0x1771
	.uleb128 0x6
	.byte	0x8
	.long	0x1777
	.uleb128 0x6
	.byte	0x8
	.long	0x177d
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x1793
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x17a9
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x17b9
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c3
	.uleb128 0x6
	.byte	0x8
	.long	0x967
	.uleb128 0x10
	.long	.LASF347
	.byte	0x5
	.value	0x449
	.long	0xc99
	.uleb128 0x1d
	.long	.LASF348
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x1a47
	.uleb128 0xb
	.long	.LASF196
	.byte	0x6
	.byte	0x17
	.long	0x148
	.byte	0
	.uleb128 0xc
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF349
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF350
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF351
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF352
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xb
	.long	.LASF353
	.byte	0x6
	.byte	0x1e
	.long	0x1a47
	.byte	0x18
	.uleb128 0x1e
	.long	.LASF354
	.byte	0x6
	.byte	0x1f
	.long	0x1a47
	.value	0x648
	.uleb128 0x1e
	.long	.LASF355
	.byte	0x6
	.byte	0x20
	.long	0x1a47
	.value	0xc78
	.uleb128 0x1e
	.long	.LASF356
	.byte	0x6
	.byte	0x21
	.long	0x1a47
	.value	0x12a8
	.uleb128 0x1e
	.long	.LASF285
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0x1e
	.long	.LASF357
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0x1e
	.long	.LASF88
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0x1e
	.long	.LASF358
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0x1e
	.long	.LASF359
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0x1e
	.long	.LASF360
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0x1e
	.long	.LASF361
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0x1e
	.long	.LASF362
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0x1e
	.long	.LASF363
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0x1e
	.long	.LASF364
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0x1e
	.long	.LASF365
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0x1e
	.long	.LASF366
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0x1e
	.long	.LASF367
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0x1e
	.long	.LASF270
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0x1e
	.long	.LASF368
	.byte	0x6
	.byte	0x31
	.long	0xc87
	.value	0x1918
	.uleb128 0x1e
	.long	.LASF369
	.byte	0x6
	.byte	0x32
	.long	0xc8d
	.value	0x1920
	.uleb128 0x1e
	.long	.LASF370
	.byte	0x6
	.byte	0x33
	.long	0xc8d
	.value	0x1928
	.uleb128 0x1e
	.long	.LASF371
	.byte	0x6
	.byte	0x34
	.long	0xc87
	.value	0x1930
	.uleb128 0x1e
	.long	.LASF372
	.byte	0x6
	.byte	0x35
	.long	0xc87
	.value	0x1938
	.uleb128 0x1e
	.long	.LASF373
	.byte	0x6
	.byte	0x36
	.long	0xc81
	.value	0x1940
	.uleb128 0x1e
	.long	.LASF120
	.byte	0x6
	.byte	0x38
	.long	0xdd
	.value	0x1948
	.uleb128 0x1e
	.long	.LASF374
	.byte	0x6
	.byte	0x3a
	.long	0x1771
	.value	0x1950
	.uleb128 0x1e
	.long	.LASF375
	.byte	0x6
	.byte	0x3c
	.long	0x1a5d
	.value	0x1958
	.uleb128 0x1e
	.long	.LASF376
	.byte	0x6
	.byte	0x3f
	.long	0x1a5d
	.value	0x1960
	.uleb128 0x1f
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x176b
	.value	0x1968
	.uleb128 0x1e
	.long	.LASF377
	.byte	0x6
	.byte	0x44
	.long	0xc93
	.value	0x1970
	.uleb128 0x1e
	.long	.LASF378
	.byte	0x6
	.byte	0x45
	.long	0xc93
	.value	0x1978
	.uleb128 0x1e
	.long	.LASF262
	.byte	0x6
	.byte	0x47
	.long	0x1a6f
	.value	0x1980
	.uleb128 0x1e
	.long	.LASF379
	.byte	0x6
	.byte	0x48
	.long	0x1a6f
	.value	0x1988
	.uleb128 0x1e
	.long	.LASF380
	.byte	0x6
	.byte	0x49
	.long	0x1a6f
	.value	0x1990
	.uleb128 0x1e
	.long	.LASF381
	.byte	0x6
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0x1e
	.long	.LASF382
	.byte	0x6
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0x1e
	.long	.LASF383
	.byte	0x6
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0x1e
	.long	.LASF384
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0x1e
	.long	.LASF385
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0x1e
	.long	.LASF386
	.byte	0x6
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0x1e
	.long	.LASF387
	.byte	0x6
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0xe3
	.long	0x1a5d
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1a63
	.uleb128 0x6
	.byte	0x8
	.long	0x1a69
	.uleb128 0x6
	.byte	0x8
	.long	0xe3
	.uleb128 0x6
	.byte	0x8
	.long	0x17d1
	.uleb128 0x7
	.long	.LASF388
	.byte	0x6
	.byte	0x52
	.long	0x17d1
	.uleb128 0x6
	.byte	0x8
	.long	0x1a75
	.uleb128 0x20
	.long	.LASF389
	.byte	0x1
	.byte	0x4e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ada
	.uleb128 0x21
	.string	"img"
	.byte	0x1
	.byte	0x4e
	.long	0x1ada
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF368
	.byte	0x1
	.byte	0x4e
	.long	0xc87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF373
	.byte	0x1
	.byte	0x4e
	.long	0xc81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x50
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x17c5
	.uleb128 0x20
	.long	.LASF390
	.byte	0x1
	.byte	0x60
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c17
	.uleb128 0x21
	.string	"img"
	.byte	0x1
	.byte	0x60
	.long	0x1ada
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.long	.LASF368
	.byte	0x1
	.byte	0x60
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.long	.LASF373
	.byte	0x1
	.byte	0x60
	.long	0xc81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x22
	.long	.LASF391
	.byte	0x1
	.byte	0x60
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x24
	.long	.LASF392
	.byte	0x1
	.byte	0x62
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"dir"
	.byte	0x1
	.byte	0x63
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF393
	.byte	0x1
	.byte	0x63
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x24
	.long	.LASF394
	.byte	0x1
	.byte	0x64
	.long	0x1c17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF216
	.byte	0x1
	.byte	0x65
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF217
	.byte	0x1
	.byte	0x65
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x24
	.long	.LASF395
	.byte	0x1
	.byte	0x67
	.long	0x957
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF396
	.byte	0x1
	.byte	0x68
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF397
	.byte	0x1
	.byte	0x69
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.long	.LASF398
	.byte	0x1
	.byte	0x6a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.long	.LASF399
	.byte	0x1
	.byte	0x6b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.long	.LASF400
	.byte	0x1
	.byte	0x6c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"MbQ"
	.byte	0x1
	.byte	0x6d
	.long	0x1732
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF401
	.byte	0x1
	.byte	0x6f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x4
	.long	0xa2
	.long	0x1c27
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x20
	.long	.LASF402
	.byte	0x1
	.byte	0xd2
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e34
	.uleb128 0x22
	.long	.LASF394
	.byte	0x1
	.byte	0xd2
	.long	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x21
	.string	"img"
	.byte	0x1
	.byte	0xd2
	.long	0x1ada
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.long	.LASF391
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x21
	.string	"dir"
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x22
	.long	.LASF393
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x22
	.long	.LASF399
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x24
	.long	.LASF403
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x24
	.long	.LASF404
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x23
	.string	"idx"
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x24
	.long	.LASF405
	.byte	0x1
	.byte	0xd5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x24
	.long	.LASF406
	.byte	0x1
	.byte	0xd5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x24
	.long	.LASF407
	.byte	0x1
	.byte	0xd5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.long	.LASF408
	.byte	0x1
	.byte	0xd5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.long	.LASF409
	.byte	0x1
	.byte	0xd6
	.long	0x1771
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF410
	.byte	0x1
	.byte	0xd7
	.long	0x1771
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.long	.LASF411
	.byte	0x1
	.byte	0xd8
	.long	0x1777
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LASF412
	.byte	0x1
	.byte	0xd9
	.long	0x1777
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF413
	.byte	0x1
	.byte	0xda
	.long	0x1a63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF414
	.byte	0x1
	.byte	0xdb
	.long	0x1a63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.string	"xQ"
	.byte	0x1
	.byte	0xdc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x23
	.string	"xP"
	.byte	0x1
	.byte	0xdc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.string	"yQ"
	.byte	0x1
	.byte	0xdc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x23
	.string	"yP"
	.byte	0x1
	.byte	0xdc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x24
	.long	.LASF216
	.byte	0x1
	.byte	0xdd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x24
	.long	.LASF217
	.byte	0x1
	.byte	0xdd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x23
	.string	"MbQ"
	.byte	0x1
	.byte	0xde
	.long	0x1732
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"MbP"
	.byte	0x1
	.byte	0xdf
	.long	0x1732
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF415
	.byte	0x1
	.byte	0xe0
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x26
	.long	.LASF416
	.byte	0x1
	.value	0x114
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF417
	.byte	0x1
	.value	0x114
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF418
	.byte	0x1
	.value	0x114
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF419
	.byte	0x1
	.value	0x114
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF420
	.byte	0x1
	.value	0x15b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x217b
	.uleb128 0x28
	.string	"Img"
	.byte	0x1
	.value	0x15b
	.long	0xc87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x29
	.long	.LASF394
	.byte	0x1
	.value	0x15b
	.long	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x28
	.string	"img"
	.byte	0x1
	.value	0x15b
	.long	0x1ada
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x29
	.long	.LASF391
	.byte	0x1
	.value	0x15b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x29
	.long	.LASF421
	.byte	0x1
	.value	0x15b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x29
	.long	.LASF422
	.byte	0x1
	.value	0x15b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x28
	.string	"dir"
	.byte	0x1
	.value	0x15c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF393
	.byte	0x1
	.value	0x15c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF200
	.byte	0x1
	.value	0x15c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"yuv"
	.byte	0x1
	.value	0x15c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x28
	.string	"uv"
	.byte	0x1
	.value	0x15c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2a
	.string	"pel"
	.byte	0x1
	.value	0x15e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2a
	.string	"ap"
	.byte	0x1
	.value	0x15e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2a
	.string	"aq"
	.byte	0x1
	.value	0x15e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x26
	.long	.LASF423
	.byte	0x1
	.value	0x15e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF424
	.byte	0x1
	.value	0x15f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.long	.LASF425
	.byte	0x1
	.value	0x15f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2a
	.string	"C0"
	.byte	0x1
	.value	0x160
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2a
	.string	"c0"
	.byte	0x1
	.value	0x160
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF426
	.byte	0x1
	.value	0x160
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2a
	.string	"dif"
	.byte	0x1
	.value	0x160
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x26
	.long	.LASF427
	.byte	0x1
	.value	0x160
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.string	"L2"
	.byte	0x1
	.value	0x161
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2a
	.string	"L1"
	.byte	0x1
	.value	0x161
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.string	"L0"
	.byte	0x1
	.value	0x161
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2a
	.string	"R0"
	.byte	0x1
	.value	0x161
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2a
	.string	"R1"
	.byte	0x1
	.value	0x161
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2a
	.string	"R2"
	.byte	0x1
	.value	0x161
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2a
	.string	"RL0"
	.byte	0x1
	.value	0x161
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.string	"L3"
	.byte	0x1
	.value	0x161
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2a
	.string	"R3"
	.byte	0x1
	.value	0x161
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x26
	.long	.LASF428
	.byte	0x1
	.value	0x162
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x26
	.long	.LASF429
	.byte	0x1
	.value	0x162
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.long	.LASF430
	.byte	0x1
	.value	0x163
	.long	0xdd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF431
	.byte	0x1
	.value	0x164
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x26
	.long	.LASF432
	.byte	0x1
	.value	0x165
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x26
	.long	.LASF433
	.byte	0x1
	.value	0x165
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x26
	.long	.LASF434
	.byte	0x1
	.value	0x166
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x26
	.long	.LASF435
	.byte	0x1
	.value	0x167
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x26
	.long	.LASF436
	.byte	0x1
	.value	0x168
	.long	0xc8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF437
	.byte	0x1
	.value	0x168
	.long	0xc8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.string	"QP"
	.byte	0x1
	.value	0x169
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2a
	.string	"xP"
	.byte	0x1
	.value	0x16a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2a
	.string	"xQ"
	.byte	0x1
	.value	0x16a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2a
	.string	"yP"
	.byte	0x1
	.value	0x16a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2a
	.string	"yQ"
	.byte	0x1
	.value	0x16a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2a
	.string	"MbQ"
	.byte	0x1
	.value	0x16b
	.long	0x1732
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2a
	.string	"MbP"
	.byte	0x1
	.value	0x16b
	.long	0x1732
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF415
	.byte	0x1
	.value	0x16c
	.long	0x50e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF438
	.byte	0x1
	.value	0x16c
	.long	0x50e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF439
	.byte	0x1
	.value	0x16d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x26
	.long	.LASF440
	.byte	0x1
	.value	0x16e
	.long	0x217b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2191
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.long	.LASF441
	.byte	0x7
	.byte	0x13
	.long	0x1a80
	.uleb128 0x4
	.long	0xa2
	.long	0x21ac
	.uleb128 0x5
	.long	0x75
	.byte	0x33
	.byte	0
	.uleb128 0x2b
	.long	.LASF442
	.byte	0x1
	.byte	0x1e
	.long	0x21b7
	.uleb128 0x2c
	.long	0x219c
	.uleb128 0x2d
	.long	.LASF443
	.byte	0x1
	.byte	0x20
	.long	0xa2
	.uleb128 0x9
	.byte	0x3
	.quad	mixedModeEdgeFlag
	.uleb128 0x2d
	.long	.LASF444
	.byte	0x1
	.byte	0x20
	.long	0xa2
	.uleb128 0x9
	.byte	0x3
	.quad	fieldModeFilteringFlag
	.uleb128 0x2d
	.long	.LASF445
	.byte	0x1
	.byte	0x29
	.long	0x219c
	.uleb128 0x9
	.byte	0x3
	.quad	ALPHA_TABLE
	.uleb128 0x2d
	.long	.LASF446
	.byte	0x1
	.byte	0x2a
	.long	0x219c
	.uleb128 0x9
	.byte	0x3
	.quad	BETA_TABLE
	.uleb128 0x4
	.long	0xa2
	.long	0x2226
	.uleb128 0x5
	.long	0x75
	.byte	0x33
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x2d
	.long	.LASF447
	.byte	0x1
	.byte	0x2b
	.long	0x2210
	.uleb128 0x9
	.byte	0x3
	.quad	CLIP_TAB
	.uleb128 0x4
	.long	0x7c
	.long	0x2257
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.long	.LASF448
	.byte	0x1
	.byte	0x37
	.long	0x223b
	.uleb128 0x9
	.byte	0x3
	.quad	chroma_edge
	.uleb128 0x2d
	.long	.LASF449
	.byte	0x1
	.byte	0xcd
	.long	0x957
	.uleb128 0x9
	.byte	0x3
	.quad	ININT_STRENGTH
	.uleb128 0x4
	.long	0xa2
	.long	0x229d
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.long	.LASF450
	.byte	0x1
	.byte	0xce
	.long	0x2281
	.uleb128 0x9
	.byte	0x3
	.quad	BLK_NUM
	.uleb128 0x2d
	.long	.LASF451
	.byte	0x1
	.byte	0xcf
	.long	0x1c17
	.uleb128 0x9
	.byte	0x3
	.quad	BLK_4_TO_8
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
.LASF331:
	.string	"bitdepth_luma_qp_scale"
.LASF334:
	.string	"dc_pred_value"
.LASF332:
	.string	"bitdepth_chroma_qp_scale"
.LASF295:
	.string	"no_output_of_prior_pics_flag"
.LASF20:
	.string	"BITS_INTER_MB"
.LASF260:
	.string	"num_ref_idx_l1_active"
.LASF277:
	.string	"pic_order_cnt_lsb"
.LASF320:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF323:
	.string	"DeblockCall"
.LASF372:
	.string	"imgY_ups_w"
.LASF25:
	.string	"MAX_BITCOUNTER_MB"
.LASF432:
	.string	"indexA"
.LASF201:
	.string	"width_cr"
.LASF290:
	.string	"PicSizeInMbs"
.LASF31:
	.string	"B_SLICE"
.LASF237:
	.string	"MB_SyntaxElements"
.LASF370:
	.string	"imgY_11_w"
.LASF232:
	.string	"cofAC"
.LASF364:
	.string	"size_x_cr"
.LASF340:
	.string	"lossless_qpprime_flag"
.LASF447:
	.string	"CLIP_TAB"
.LASF247:
	.string	"imgtr_next_P_fld"
.LASF16:
	.string	"int64"
.LASF184:
	.string	"slices"
.LASF87:
	.string	"long_term_pic_num"
.LASF30:
	.string	"P_SLICE"
.LASF213:
	.string	"ipredmode8x8"
.LASF217:
	.string	"mb_y"
.LASF297:
	.string	"dec_ref_pic_marking_buffer"
.LASF412:
	.string	"list1_refIdxArr"
.LASF89:
	.string	"max_long_term_frame_idx_plus1"
.LASF341:
	.string	"mb_cr_size_x"
.LASF262:
	.string	"top_field"
.LASF51:
	.string	"state"
.LASF65:
	.string	"bcbp_contexts"
.LASF91:
	.string	"syntaxelement"
.LASF428:
	.string	"Alpha"
.LASF92:
	.string	"type"
.LASF252:
	.string	"fw_mb_mode"
.LASF291:
	.string	"FrameSizeInMbs"
.LASF376:
	.string	"ref_id"
.LASF139:
	.string	"LFDisableIdc"
.LASF366:
	.string	"chroma_vector_adjustment"
.LASF317:
	.string	"IFLAG"
.LASF153:
	.string	"bits_to_go_skip"
.LASF254:
	.string	"pred_mv"
.LASF337:
	.string	"num_blk8x8_uv"
.LASF170:
	.string	"rmpni_buffer"
.LASF120:
	.string	"mb_field"
.LASF88:
	.string	"long_term_frame_idx"
.LASF356:
	.string	"bottom_ref_pic_num"
.LASF212:
	.string	"ipredmode"
.LASF443:
	.string	"mixedModeEdgeFlag"
.LASF112:
	.string	"b8mode"
.LASF390:
	.string	"DeblockMb"
.LASF179:
	.string	"slice_too_big"
.LASF229:
	.string	"mprr_2"
.LASF230:
	.string	"mprr_3"
.LASF146:
	.string	"bits_to_go"
.LASF84:
	.string	"DecRefPicMarking_s"
.LASF90:
	.string	"DecRefPicMarking_t"
.LASF321:
	.string	"bot_MB"
.LASF319:
	.string	"BasicUnit"
.LASF197:
	.string	"num_ref_frames"
.LASF47:
	.string	"EcodestrmS"
.LASF239:
	.string	"intra_block"
.LASF24:
	.string	"BITS_DELTA_QUANT_MB"
.LASF6:
	.string	"long int"
.LASF345:
	.string	"auto_crop_right"
.LASF357:
	.string	"pic_num"
.LASF231:
	.string	"mprr_c"
.LASF129:
	.string	"all_blk_8x8"
.LASF293:
	.string	"nal_reference_idc"
.LASF283:
	.string	"framepoc"
.LASF300:
	.string	"NumberofTextureBits"
.LASF227:
	.string	"opix_c_y"
.LASF396:
	.string	"filterLeftMbEdgeFlag"
.LASF359:
	.string	"used_for_reference"
.LASF322:
	.string	"write_macroblock_frame"
.LASF150:
	.string	"stored_byte_buf"
.LASF395:
	.string	"filterNon8x8LumaEdgesFlag"
.LASF17:
	.string	"BITS_HEADER"
.LASF287:
	.string	"PicHeightInMapUnits"
.LASF354:
	.string	"frm_ref_pic_num"
.LASF308:
	.string	"NumberofGOP"
.LASF329:
	.string	"bitdepth_luma"
.LASF21:
	.string	"BITS_CBP_MB"
.LASF226:
	.string	"opix_c_x"
.LASF37:
	.string	"Ebuffer"
.LASF36:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF199:
	.string	"framerate"
.LASF165:
	.string	"max_part_nr"
.LASF50:
	.string	"EncodingEnvironmentPtr"
.LASF272:
	.string	"delta_pic_order_always_zero_flag"
.LASF119:
	.string	"IntraChromaPredModeFlag"
.LASF96:
	.string	"context"
.LASF174:
	.string	"long_term_pic_idx_l0"
.LASF178:
	.string	"long_term_pic_idx_l1"
.LASF171:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF175:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF310:
	.string	"NumberofPPicture"
.LASF305:
	.string	"NumberofMBHeaderBits"
.LASF233:
	.string	"cofDC"
.LASF416:
	.string	"ref_p0"
.LASF1:
	.string	"unsigned char"
.LASF398:
	.string	"fieldModeMbFlag"
.LASF110:
	.string	"intra_pred_modes8x8"
.LASF324:
	.string	"last_pic_bottom_field"
.LASF256:
	.string	"bipred_mv1"
.LASF257:
	.string	"bipred_mv2"
.LASF67:
	.string	"last_contexts"
.LASF118:
	.string	"c_ipred_mode"
.LASF336:
	.string	"max_imgpel_value_uv"
.LASF172:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF176:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF173:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF177:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF147:
	.string	"byte_buf"
.LASF132:
	.string	"bi_pred_me"
.LASF413:
	.string	"list0_refPicIdArr"
.LASF103:
	.string	"delta_qp"
.LASF419:
	.string	"ref_q1"
.LASF198:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF211:
	.string	"block_c_x"
.LASF409:
	.string	"list0_mv"
.LASF60:
	.string	"transform_size_contexts"
.LASF238:
	.string	"quad"
.LASF207:
	.string	"is_intra_block"
.LASF164:
	.string	"start_mb_nr"
.LASF74:
	.string	"mb_addr"
.LASF361:
	.string	"non_existing"
.LASF18:
	.string	"BITS_TOTAL_MB"
.LASF106:
	.string	"mb_available_up"
.LASF391:
	.string	"MbQAddr"
.LASF279:
	.string	"delta_pic_order_cnt"
.LASF454:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF369:
	.string	"imgY_11"
.LASF299:
	.string	"NumberofHeaderBits"
.LASF192:
	.string	"nb_references"
.LASF95:
	.string	"bitpattern"
.LASF34:
	.string	"SI_SLICE"
.LASF59:
	.string	"mb_aff_contexts"
.LASF130:
	.string	"luma_transform_size_8x8_flag"
.LASF219:
	.string	"block_y"
.LASF234:
	.string	"currentPicture"
.LASF55:
	.string	"b8_type_contexts"
.LASF250:
	.string	"p_interval"
.LASF190:
	.string	"Picture"
.LASF248:
	.string	"imgtr_last_P_fld"
.LASF389:
	.string	"DeblockFrame"
.LASF371:
	.string	"imgY_ups"
.LASF135:
	.string	"prev_delta_qp"
.LASF444:
	.string	"fieldModeFilteringFlag"
.LASF448:
	.string	"chroma_edge"
.LASF208:
	.string	"is_v_block"
.LASF440:
	.string	"pelnum_cr"
.LASF210:
	.string	"mb_y_intra"
.LASF54:
	.string	"mb_type_contexts"
.LASF154:
	.string	"streamBuffer"
.LASF45:
	.string	"Ebits_to_goS"
.LASF402:
	.string	"GetStrength"
.LASF311:
	.string	"MADofMB"
.LASF423:
	.string	"Strng"
.LASF259:
	.string	"num_ref_idx_l0_active"
.LASF298:
	.string	"model_number"
.LASF32:
	.string	"I_SLICE"
.LASF100:
	.string	"macroblock"
.LASF281:
	.string	"toppoc"
.LASF270:
	.string	"MbaffFrameFlag"
.LASF35:
	.string	"Elow"
.LASF224:
	.string	"opix_x"
.LASF453:
	.string	"loopFilter.c"
.LASF349:
	.string	"top_poc"
.LASF163:
	.string	"picture_type"
.LASF343:
	.string	"chroma_qp_offset"
.LASF289:
	.string	"PicHeightInMbs"
.LASF348:
	.string	"storable_picture"
.LASF261:
	.string	"field_mode"
.LASF49:
	.string	"EncodingEnvironment"
.LASF160:
	.string	"writeSyntaxElement"
.LASF0:
	.string	"long unsigned int"
.LASF63:
	.string	"cipr_contexts"
.LASF48:
	.string	"Ecodestrm_lenS"
.LASF166:
	.string	"num_mb"
.LASF282:
	.string	"bottompoc"
.LASF263:
	.string	"mvscale"
.LASF401:
	.string	"edge_cr"
.LASF244:
	.string	"pstruct_next_P"
.LASF446:
	.string	"BETA_TABLE"
.LASF116:
	.string	"lf_alpha_c0_offset"
.LASF346:
	.string	"auto_crop_bottom"
.LASF73:
	.string	"available"
.LASF312:
	.string	"BasicUnitQP"
.LASF304:
	.string	"NumberofMBTextureBits"
.LASF114:
	.string	"cbp_bits"
.LASF406:
	.string	"blk_x2"
.LASF367:
	.string	"coded_frame"
.LASF351:
	.string	"frame_poc"
.LASF222:
	.string	"pix_c_x"
.LASF223:
	.string	"pix_c_y"
.LASF251:
	.string	"b_frame_to_code"
.LASF185:
	.string	"bits_per_picture"
.LASF209:
	.string	"mb_y_upd"
.LASF80:
	.string	"RMPNI"
.LASF28:
	.string	"BOTTOM_FIELD"
.LASF140:
	.string	"LFAlphaC0Offset"
.LASF117:
	.string	"lf_beta_offset"
.LASF86:
	.string	"difference_of_pic_nums_minus1"
.LASF228:
	.string	"mprr"
.LASF368:
	.string	"imgY"
.LASF61:
	.string	"MotionInfoContexts"
.LASF408:
	.string	"blk_y2"
.LASF9:
	.string	"long long int"
.LASF249:
	.string	"b_interval"
.LASF38:
	.string	"Ebits_to_go"
.LASF241:
	.string	"fld_flag"
.LASF243:
	.string	"direct_intraP_ref"
.LASF200:
	.string	"width"
.LASF108:
	.string	"mb_type"
.LASF149:
	.string	"stored_bits_to_go"
.LASF342:
	.string	"mb_cr_size_y"
.LASF417:
	.string	"ref_p1"
.LASF276:
	.string	"offset_for_ref_frame"
.LASF102:
	.string	"slice_nr"
.LASF187:
	.string	"distortion_u"
.LASF188:
	.string	"distortion_v"
.LASF186:
	.string	"distortion_y"
.LASF152:
	.string	"byte_pos_skip"
.LASF141:
	.string	"LFBetaOffset"
.LASF143:
	.string	"double"
.LASF451:
	.string	"BLK_4_TO_8"
.LASF380:
	.string	"frame"
.LASF148:
	.string	"stored_byte_pos"
.LASF344:
	.string	"residue_transform_flag"
.LASF434:
	.string	"PelNum"
.LASF246:
	.string	"imgtr_last_P_frm"
.LASF415:
	.string	"pixP"
.LASF68:
	.string	"one_contexts"
.LASF365:
	.string	"size_y_cr"
.LASF104:
	.string	"qpsp"
.LASF189:
	.string	"float"
.LASF52:
	.string	"count"
.LASF136:
	.string	"prev_cbp"
.LASF53:
	.string	"BiContextType"
.LASF360:
	.string	"is_output"
.LASF242:
	.string	"rd_pass"
.LASF424:
	.string	"incP"
.LASF425:
	.string	"incQ"
.LASF3:
	.string	"unsigned int"
.LASF77:
	.string	"PixelPos"
.LASF69:
	.string	"abs_contexts"
.LASF39:
	.string	"Ebits_to_follow"
.LASF155:
	.string	"write_flag"
.LASF194:
	.string	"total_number_mb"
.LASF411:
	.string	"list0_refIdxArr"
.LASF400:
	.string	"StrengthSum"
.LASF41:
	.string	"Ecodestrm_len"
.LASF169:
	.string	"tex_ctx"
.LASF418:
	.string	"ref_q0"
.LASF309:
	.string	"TotalQpforPPicture"
.LASF107:
	.string	"mb_available_left"
.LASF79:
	.string	"RMPNIbuffer_s"
.LASF83:
	.string	"RMPNIbuffer_t"
.LASF327:
	.string	"slice_group_change_cycle"
.LASF72:
	.string	"TextureInfoContexts"
.LASF379:
	.string	"bottom_field"
.LASF353:
	.string	"ref_pic_num"
.LASF266:
	.string	"layer"
.LASF113:
	.string	"b8pdir"
.LASF182:
	.string	"no_slices"
.LASF436:
	.string	"SrcPtrP"
.LASF437:
	.string	"SrcPtrQ"
.LASF274:
	.string	"offset_for_top_to_bottom_field"
.LASF387:
	.string	"frame_cropping_rect_bottom_offset"
.LASF245:
	.string	"imgtr_next_P_frm"
.LASF314:
	.string	"FieldControl"
.LASF306:
	.string	"NumberofCodedBFrame"
.LASF265:
	.string	"i16offset"
.LASF429:
	.string	"Beta"
.LASF78:
	.string	"pix_pos"
.LASF193:
	.string	"current_mb_nr"
.LASF220:
	.string	"pix_x"
.LASF221:
	.string	"pix_y"
.LASF452:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF347:
	.string	"ImageParameters"
.LASF159:
	.string	"ee_cabac"
.LASF216:
	.string	"mb_x"
.LASF13:
	.string	"FALSE"
.LASF137:
	.string	"predict_qp"
.LASF75:
	.string	"pos_x"
.LASF76:
	.string	"pos_y"
.LASF218:
	.string	"block_x"
.LASF442:
	.string	"QP_SCALE_CR"
.LASF325:
	.string	"last_has_mmco_5"
.LASF271:
	.string	"pic_order_cnt_type"
.LASF71:
	.string	"fld_last_contexts"
.LASF273:
	.string	"offset_for_non_ref_pic"
.LASF142:
	.string	"skip_flag"
.LASF285:
	.string	"frame_num"
.LASF66:
	.string	"map_contexts"
.LASF393:
	.string	"edge"
.LASF420:
	.string	"EdgeLoop"
.LASF33:
	.string	"SP_SLICE"
.LASF85:
	.string	"memory_management_control_operation"
.LASF350:
	.string	"bottom_poc"
.LASF156:
	.string	"Bitstream"
.LASF268:
	.string	"NoResidueDirect"
.LASF427:
	.string	"AbsDelta"
.LASF414:
	.string	"list1_refPicIdArr"
.LASF426:
	.string	"Delta"
.LASF318:
	.string	"NumberofCodedMacroBlocks"
.LASF162:
	.string	"picture_id"
.LASF382:
	.string	"frame_mbs_only_flag"
.LASF407:
	.string	"blk_y"
.LASF240:
	.string	"fld_type"
.LASF307:
	.string	"NumberofCodedPFrame"
.LASF10:
	.string	"long long unsigned int"
.LASF19:
	.string	"BITS_MB_MODE"
.LASF109:
	.string	"intra_pred_modes"
.LASF203:
	.string	"height_cr"
.LASF255:
	.string	"all_mv"
.LASF388:
	.string	"StorablePicture"
.LASF202:
	.string	"height"
.LASF196:
	.string	"structure"
.LASF180:
	.string	"field_ctx"
.LASF378:
	.string	"field_frame"
.LASF161:
	.string	"DataPartition"
.LASF236:
	.string	"mb_data"
.LASF386:
	.string	"frame_cropping_rect_top_offset"
.LASF302:
	.string	"NumberofBasicUnitTextureBits"
.LASF275:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF181:
	.string	"Slice"
.LASF403:
	.string	"blkP"
.LASF157:
	.string	"datapartition"
.LASF46:
	.string	"Ebits_to_followS"
.LASF204:
	.string	"height_cr_frame"
.LASF392:
	.string	"EdgeCondition"
.LASF316:
	.string	"Frame_Total_Number_MB"
.LASF93:
	.string	"value1"
.LASF94:
	.string	"value2"
.LASF384:
	.string	"frame_cropping_rect_left_offset"
.LASF158:
	.string	"bitstream"
.LASF280:
	.string	"field_picture"
.LASF355:
	.string	"top_ref_pic_num"
.LASF42:
	.string	"ElowS"
.LASF405:
	.string	"blk_x"
.LASF15:
	.string	"Boolean"
.LASF269:
	.string	"redundant_pic_cnt"
.LASF333:
	.string	"bitdepth_lambda_scale"
.LASF267:
	.string	"old_layer"
.LASF191:
	.string	"number"
.LASF449:
	.string	"ININT_STRENGTH"
.LASF381:
	.string	"chroma_format_idc"
.LASF438:
	.string	"pixQ"
.LASF410:
	.string	"list1_mv"
.LASF335:
	.string	"max_imgpel_value"
.LASF286:
	.string	"PicWidthInMbs"
.LASF394:
	.string	"Strength"
.LASF328:
	.string	"pic_unit_size_on_disk"
.LASF338:
	.string	"num_cdc_coeff"
.LASF433:
	.string	"indexB"
.LASF144:
	.string	"Macroblock"
.LASF57:
	.string	"ref_no_contexts"
.LASF26:
	.string	"FRAME"
.LASF294:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF23:
	.string	"BITS_COEFF_UV_MB"
.LASF12:
	.string	"byte"
.LASF82:
	.string	"Next"
.LASF81:
	.string	"Data"
.LASF313:
	.string	"TopFieldFlag"
.LASF430:
	.string	"ClipTab"
.LASF5:
	.string	"short int"
.LASF352:
	.string	"order_num"
.LASF377:
	.string	"moving_block"
.LASF40:
	.string	"Ecodestrm"
.LASF225:
	.string	"opix_y"
.LASF339:
	.string	"yuv_format"
.LASF450:
	.string	"BLK_NUM"
.LASF253:
	.string	"bw_mb_mode"
.LASF14:
	.string	"TRUE"
.LASF44:
	.string	"EbufferS"
.LASF284:
	.string	"ThisPOC"
.LASF303:
	.string	"TotalMADBasicUnit"
.LASF134:
	.string	"prev_qp"
.LASF397:
	.string	"filterTopMbEdgeFlag"
.LASF56:
	.string	"mv_res_contexts"
.LASF441:
	.string	"enc_picture"
.LASF431:
	.string	"small_gap"
.LASF133:
	.string	"actj"
.LASF278:
	.string	"delta_pic_order_cnt_bottom"
.LASF264:
	.string	"buf_cycle"
.LASF22:
	.string	"BITS_COEFF_Y_MB"
.LASF214:
	.string	"cod_counter"
.LASF167:
	.string	"partArr"
.LASF145:
	.string	"byte_pos"
.LASF404:
	.string	"blkQ"
.LASF422:
	.string	"BetaOffset"
.LASF62:
	.string	"ipr_contexts"
.LASF121:
	.string	"mbAddrA"
.LASF122:
	.string	"mbAddrB"
.LASF123:
	.string	"mbAddrC"
.LASF124:
	.string	"mbAddrD"
.LASF215:
	.string	"nz_coeff"
.LASF58:
	.string	"delta_qp_contexts"
.LASF399:
	.string	"mvlimit"
.LASF301:
	.string	"NumberofBasicUnitHeaderBits"
.LASF99:
	.string	"SyntaxElement"
.LASF445:
	.string	"ALPHA_TABLE"
.LASF326:
	.string	"pre_frame_num"
.LASF292:
	.string	"pic_order_present_flag"
.LASF115:
	.string	"lf_disable"
.LASF27:
	.string	"TOP_FIELD"
.LASF362:
	.string	"size_x"
.LASF363:
	.string	"size_y"
.LASF183:
	.string	"idr_flag"
.LASF2:
	.string	"short unsigned int"
.LASF315:
	.string	"FieldFrame"
.LASF385:
	.string	"frame_cropping_rect_right_offset"
.LASF138:
	.string	"predict_error"
.LASF195:
	.string	"current_slice_nr"
.LASF258:
	.string	"direct_spatial_mv_pred_flag"
.LASF330:
	.string	"bitdepth_chroma"
.LASF421:
	.string	"AlphaC0Offset"
.LASF97:
	.string	"mapping"
.LASF374:
	.string	"ref_idx"
.LASF439:
	.string	"bitdepth_scale"
.LASF383:
	.string	"frame_cropping_flag"
.LASF373:
	.string	"imgUV"
.LASF375:
	.string	"ref_pic_id"
.LASF11:
	.string	"int64_t"
.LASF98:
	.string	"writing"
.LASF70:
	.string	"fld_map_contexts"
.LASF151:
	.string	"byte_buf_skip"
.LASF296:
	.string	"long_term_reference_flag"
.LASF64:
	.string	"cbp_contexts"
.LASF168:
	.string	"mot_ctx"
.LASF131:
	.string	"NoMbPartLessThan8x8Flag"
.LASF205:
	.string	"subblock_x"
.LASF206:
	.string	"subblock_y"
.LASF358:
	.string	"is_long_term"
.LASF101:
	.string	"currSEnr"
.LASF29:
	.string	"PictureStructure"
.LASF288:
	.string	"FrameHeightInMbs"
.LASF235:
	.string	"currentSlice"
.LASF105:
	.string	"bitcounter"
.LASF43:
	.string	"ErangeS"
.LASF125:
	.string	"mbAvailA"
.LASF126:
	.string	"mbAvailB"
.LASF127:
	.string	"mbAvailC"
.LASF128:
	.string	"mbAvailD"
.LASF111:
	.string	"cbp_blk"
.LASF435:
	.string	"StrengthIdx"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
