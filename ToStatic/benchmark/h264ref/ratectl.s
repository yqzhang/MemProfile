	.file	"ratectl.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 ratectl.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	bit_rate,8,8
	.comm	frame_rate,8,8
	.comm	GAMMAP,8,8
	.comm	BETAP,8,8
	.comm	RC_MAX_QUANT,4,4
	.comm	RC_MIN_QUANT,4,4
	.comm	BufferSize,8,8
	.comm	GOPTargetBufferLevel,8,8
	.comm	CurrentBufferFullness,8,8
	.comm	TargetBufferLevel,8,8
	.comm	PreviousBit_Rate,8,8
	.comm	AWp,8,8
	.comm	AWb,8,8
	.comm	MyInitialQp,4,4
	.comm	PAverageQp,4,4
	.comm	PreviousPictureMAD,8,8
	.comm	MADPictureC1,8,8
	.comm	MADPictureC2,8,8
	.comm	PMADPictureC1,8,8
	.comm	PMADPictureC2,8,8
	.comm	PictureRejected,84,32
	.comm	PPictureMAD,168,32
	.comm	PictureMAD,168,32
	.comm	ReferenceMAD,168,32
	.comm	m_rgRejected,84,32
	.comm	m_rgQp,168,32
	.comm	m_rgRp,168,32
	.comm	m_X1,8,8
	.comm	m_X2,8,8
	.comm	m_Qc,4,4
	.comm	m_Qstep,8,8
	.comm	m_Qp,4,4
	.comm	Pm_Qp,4,4
	.comm	PreAveMBHeader,4,4
	.comm	CurAveMBHeader,4,4
	.comm	PPreHeader,4,4
	.comm	PreviousQp1,4,4
	.comm	PreviousQp2,4,4
	.comm	NumberofBFrames,4,4
	.comm	TotalFrameQP,4,4
	.comm	NumberofBasicUnit,4,4
	.comm	PAveHeaderBits1,4,4
	.comm	PAveHeaderBits2,4,4
	.comm	PAveHeaderBits3,4,4
	.comm	PAveFrameQP,4,4
	.comm	TotalNumberofBasicUnit,4,4
	.comm	CodedBasicUnit,4,4
	.comm	MINVALUE,8,8
	.comm	CurrentFrameMAD,8,8
	.comm	CurrentBUMAD,8,8
	.comm	TotalBUMAD,8,8
	.comm	PreviousFrameMAD,8,8
	.comm	m_Hp,4,4
	.comm	m_windowSize,4,4
	.comm	MADm_windowSize,4,4
	.comm	DDquant,4,4
	.comm	MBPerRow,4,4
	.comm	AverageMADPreviousFrame,8,8
	.comm	TotalBasicUnitBits,4,4
	.comm	QPLastPFrame,4,4
	.comm	QPLastGOP,4,4
	.comm	Pm_rgQp,160,32
	.comm	Pm_rgRp,160,32
	.comm	Pm_X1,8,8
	.comm	Pm_X2,8,8
	.comm	Pm_Hp,4,4
	.comm	FieldQPBuffer,4,4
	.comm	FrameQPBuffer,4,4
	.comm	FrameAveHeaderBits,4,4
	.comm	FieldAveHeaderBits,4,4
	.comm	BUPFMAD,8,8
	.comm	BUCFMAD,8,8
	.comm	FCBUCFMAD,8,8
	.comm	FCBUPFMAD,8,8
	.comm	GOPOverdue,4,4
	.comm	diffy,1024,32
	.comm	diffyy,1024,32
	.comm	diffy8,1024,32
	.globl	THETA
	.section	.rodata
	.align 8
	.type	THETA, @object
	.size	THETA, 8
THETA:
	.long	1003304360
	.long	1073074510
	.globl	Switch
	.align 4
	.type	Switch, @object
	.size	Switch, 4
Switch:
	.zero	4
	.globl	Iprev_bits
	.bss
	.align 4
	.type	Iprev_bits, @object
	.size	Iprev_bits, 4
Iprev_bits:
	.zero	4
	.globl	Pprev_bits
	.align 4
	.type	Pprev_bits, @object
	.size	Pprev_bits, 4
Pprev_bits:
	.zero	4
	.comm	Xp,4,4
	.comm	Xb,4,4
	.local	R
	.comm	R,4,4
	.local	T_field
	.comm	T_field,4,4
	.local	Np
	.comm	Np,4,4
	.local	Nb
	.comm	Nb,4,4
	.local	bits_topfield
	.comm	bits_topfield,4,4
	.comm	T,8,8
	.comm	T1,8,8
	.comm	UpperBound1,8,8
	.comm	UpperBound2,8,8
	.comm	LowerBound,8,8
	.comm	InitialDelayOffset,8,8
	.globl	OMEGA
	.section	.rodata
	.align 8
	.type	OMEGA, @object
	.size	OMEGA, 8
OMEGA:
	.long	3435973837
	.long	1072483532
	.comm	Wp,8,8
	.comm	Wb,8,8
	.comm	TotalPFrame,4,4
	.comm	DuantQp,4,4
	.comm	PDuantQp,4,4
	.comm	BitRate,8,8
	.comm	DeltaP,8,8
.LC0:
	.string	"rc_alloc: img->MADofMB"
.LC1:
	.string	"rc_alloc: img->BUPFMAD"
.LC2:
	.string	"rc_alloc: img->BUCFMAD"
.LC3:
	.string	"rc_alloc: img->FCBUCFMAD"
.LC4:
	.string	"rc_alloc: img->FCBUPFMAD"
	.text
	.globl	rc_alloc
	.type	rc_alloc, @function
rc_alloc:
.LFB2:
	.file 1 "ratectl.c"
	.loc 1 158 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 159 0
	movq	img(%rip), %rbx	# img, img.0
	movq	img(%rip), %rax	# img, img.1
	movl	72488(%rax), %eax	# img.1_2->FrameSizeInMbs, D.8010
	movl	%eax, %eax	# D.8010, D.8011
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.8011,
	call	calloc	#
	movq	%rax, 72584(%rbx)	# D.8012, img.0_1->MADofMB
	.loc 1 160 0
	movq	img(%rip), %rax	# img, img.2
	movq	72584(%rax), %rax	# img.2_6->MADofMB, D.8013
	testq	%rax, %rax	# D.8013
	jne	.L2	#,
	.loc 1 162 0
	movl	$.LC0, %edi	#,
	call	no_mem_exit	#
.L2:
	.loc 1 165 0
	movq	img(%rip), %rax	# img, img.3
	movl	72488(%rax), %eax	# img.3_8->FrameSizeInMbs, D.8010
	movq	input(%rip), %rdx	# input, input.4
	movl	3248(%rdx), %edx	# input.4_10->basicunit, D.8014
	movl	%edx, %ecx	# D.8014, D.8010
	movl	$0, %edx	#, tmp104
	divl	%ecx	# D.8010
	movl	%eax, %eax	# D.8010, D.8011
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.8011,
	call	calloc	#
	movq	%rax, BUPFMAD(%rip)	# BUPFMAD.5, BUPFMAD
	.loc 1 166 0
	movq	BUPFMAD(%rip), %rax	# BUPFMAD, BUPFMAD.6
	testq	%rax, %rax	# BUPFMAD.6
	jne	.L3	#,
	.loc 1 168 0
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L3:
	.loc 1 171 0
	movq	img(%rip), %rax	# img, img.7
	movl	72488(%rax), %eax	# img.7_17->FrameSizeInMbs, D.8010
	movq	input(%rip), %rdx	# input, input.8
	movl	3248(%rdx), %edx	# input.8_19->basicunit, D.8014
	movl	%edx, %ecx	# D.8014, D.8010
	movl	$0, %edx	#, tmp107
	divl	%ecx	# D.8010
	movl	%eax, %eax	# D.8010, D.8011
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.8011,
	call	calloc	#
	movq	%rax, BUCFMAD(%rip)	# BUCFMAD.9, BUCFMAD
	.loc 1 172 0
	movq	BUCFMAD(%rip), %rax	# BUCFMAD, BUCFMAD.10
	testq	%rax, %rax	# BUCFMAD.10
	jne	.L4	#,
	.loc 1 174 0
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L4:
	.loc 1 177 0
	movq	img(%rip), %rax	# img, img.11
	movl	72488(%rax), %eax	# img.11_26->FrameSizeInMbs, D.8010
	movq	input(%rip), %rdx	# input, input.12
	movl	3248(%rdx), %edx	# input.12_28->basicunit, D.8014
	movl	%edx, %ebx	# D.8014, D.8010
	movl	$0, %edx	#, tmp110
	divl	%ebx	# D.8010
	movl	%eax, %eax	# D.8010, D.8011
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.8011,
	call	calloc	#
	movq	%rax, FCBUCFMAD(%rip)	# FCBUCFMAD.13, FCBUCFMAD
	.loc 1 178 0
	movq	FCBUCFMAD(%rip), %rax	# FCBUCFMAD, FCBUCFMAD.14
	testq	%rax, %rax	# FCBUCFMAD.14
	jne	.L5	#,
	.loc 1 180 0
	movl	$.LC3, %edi	#,
	call	no_mem_exit	#
.L5:
	.loc 1 183 0
	movq	img(%rip), %rax	# img, img.15
	movl	72488(%rax), %eax	# img.15_35->FrameSizeInMbs, D.8010
	movq	input(%rip), %rdx	# input, input.16
	movl	3248(%rdx), %edx	# input.16_37->basicunit, D.8014
	movl	%edx, %ecx	# D.8014, D.8010
	movl	$0, %edx	#, tmp113
	divl	%ecx	# D.8010
	movl	%eax, %eax	# D.8010, D.8011
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.8011,
	call	calloc	#
	movq	%rax, FCBUPFMAD(%rip)	# FCBUPFMAD.17, FCBUPFMAD
	.loc 1 184 0
	movq	FCBUPFMAD(%rip), %rax	# FCBUPFMAD, FCBUPFMAD.18
	testq	%rax, %rax	# FCBUPFMAD.18
	jne	.L1	#,
	.loc 1 186 0
	movl	$.LC4, %edi	#,
	call	no_mem_exit	#
.L1:
	.loc 1 189 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	rc_alloc, .-rc_alloc
	.globl	rc_free
	.type	rc_free, @function
rc_free:
.LFB3:
	.loc 1 199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 200 0
	movq	img(%rip), %rax	# img, img.19
	movq	72584(%rax), %rax	# img.19_1->MADofMB, D.8020
	testq	%rax, %rax	# D.8020
	je	.L8	#,
	.loc 1 202 0
	movq	img(%rip), %rax	# img, img.20
	movq	72584(%rax), %rax	# img.20_3->MADofMB, D.8020
	movq	%rax, %rdi	# D.8020,
	call	free	#
	.loc 1 203 0
	movq	img(%rip), %rax	# img, img.21
	movq	$0, 72584(%rax)	#, img.21_5->MADofMB
.L8:
	.loc 1 205 0
	movq	BUPFMAD(%rip), %rax	# BUPFMAD, BUPFMAD.22
	testq	%rax, %rax	# BUPFMAD.22
	je	.L9	#,
	.loc 1 207 0
	movq	BUPFMAD(%rip), %rax	# BUPFMAD, BUPFMAD.23
	movq	%rax, %rdi	# BUPFMAD.23,
	call	free	#
	.loc 1 208 0
	movq	$0, BUPFMAD(%rip)	#, BUPFMAD
.L9:
	.loc 1 210 0
	movq	BUCFMAD(%rip), %rax	# BUCFMAD, BUCFMAD.24
	testq	%rax, %rax	# BUCFMAD.24
	je	.L10	#,
	.loc 1 212 0
	movq	BUCFMAD(%rip), %rax	# BUCFMAD, BUCFMAD.25
	movq	%rax, %rdi	# BUCFMAD.25,
	call	free	#
	.loc 1 213 0
	movq	$0, BUCFMAD(%rip)	#, BUCFMAD
.L10:
	.loc 1 215 0
	movq	FCBUCFMAD(%rip), %rax	# FCBUCFMAD, FCBUCFMAD.26
	testq	%rax, %rax	# FCBUCFMAD.26
	je	.L11	#,
	.loc 1 217 0
	movq	FCBUCFMAD(%rip), %rax	# FCBUCFMAD, FCBUCFMAD.27
	movq	%rax, %rdi	# FCBUCFMAD.27,
	call	free	#
	.loc 1 218 0
	movq	$0, FCBUCFMAD(%rip)	#, FCBUCFMAD
.L11:
	.loc 1 220 0
	movq	FCBUPFMAD(%rip), %rax	# FCBUPFMAD, FCBUPFMAD.28
	testq	%rax, %rax	# FCBUPFMAD.28
	je	.L7	#,
	.loc 1 222 0
	movq	FCBUPFMAD(%rip), %rax	# FCBUPFMAD, FCBUPFMAD.29
	movq	%rax, %rdi	# FCBUPFMAD.29,
	call	free	#
	.loc 1 223 0
	movq	$0, FCBUPFMAD(%rip)	#, FCBUPFMAD
.L7:
	.loc 1 225 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	rc_free, .-rc_free
	.globl	rc_init_seq
	.type	rc_init_seq, @function
rc_init_seq:
.LFB4:
	.loc 1 236 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 241 0
	movl	$0, Xp(%rip)	#, Xp
	.loc 1 242 0
	movl	$0, Xb(%rip)	#, Xb
	.loc 1 244 0
	movq	input(%rip), %rax	# input, input.30
	movl	3240(%rax), %eax	# input.30_6->bit_rate, D.8021
	cvtsi2sd	%eax, %xmm0	# D.8021, bit_rate.31
	movsd	%xmm0, bit_rate(%rip)	# bit_rate.31, bit_rate
	.loc 1 245 0
	movq	img(%rip), %rax	# img, img.32
	movss	48(%rax), %xmm1	# img.32_9->framerate, D.8022
	movq	input(%rip), %rax	# input, input.33
	movl	1236(%rax), %eax	# input.33_11->successive_Bframe, D.8021
	addl	$1, %eax	#, D.8021
	cvtsi2ss	%eax, %xmm0	# D.8021, D.8022
	mulss	%xmm1, %xmm0	# D.8022, D.8022
	movq	input(%rip), %rax	# input, input.34
	movl	20(%rax), %eax	# input.34_16->jumpd, D.8021
	addl	$1, %eax	#, D.8021
	cvtsi2ss	%eax, %xmm1	# D.8021, D.8022
	divss	%xmm1, %xmm0	# D.8022, D.8022
	unpcklps	%xmm0, %xmm0	# D.8022, D.8022
	cvtps2pd	%xmm0, %xmm0	# D.8022, frame_rate.35
	movsd	%xmm0, frame_rate(%rip)	# frame_rate.35, frame_rate
	.loc 1 246 0
	movq	bit_rate(%rip), %rax	# bit_rate, bit_rate.36
	movq	%rax, PreviousBit_Rate(%rip)	# bit_rate.36, PreviousBit_Rate
	.loc 1 250 0
	movq	img(%rip), %rdx	# img, img.37
	movq	img(%rip), %rax	# img, img.38
	movl	60(%rax), %ecx	# img.38_24->height, D.8021
	movq	img(%rip), %rax	# img, img.39
	movl	52(%rax), %eax	# img.39_26->width, D.8021
	imull	%ecx, %eax	# D.8021, D.8021
	leal	255(%rax), %ecx	#, tmp133
	testl	%eax, %eax	# tmp132
	cmovs	%ecx, %eax	# tmp133,, tmp132
	sarl	$8, %eax	#, tmp134
	movl	%eax, 72608(%rdx)	# D.8021, img.37_23->Frame_Total_Number_MB
	.loc 1 251 0
	movq	input(%rip), %rax	# input, input.40
	movl	3248(%rax), %edx	# input.40_30->basicunit, D.8021
	movq	img(%rip), %rax	# img, img.41
	movl	72608(%rax), %eax	# img.41_32->Frame_Total_Number_MB, D.8021
	cmpl	%eax, %edx	# D.8021, D.8021
	jle	.L14	#,
	.loc 1 252 0
	movq	input(%rip), %rax	# input, input.42
	movq	img(%rip), %rdx	# img, img.43
	movl	72608(%rdx), %edx	# img.43_35->Frame_Total_Number_MB, D.8021
	movl	%edx, 3248(%rax)	# D.8021, input.42_34->basicunit
.L14:
	.loc 1 253 0
	movq	input(%rip), %rax	# input, input.44
	movl	3248(%rax), %edx	# input.44_37->basicunit, D.8021
	movq	img(%rip), %rax	# img, img.45
	movl	72608(%rax), %eax	# img.45_39->Frame_Total_Number_MB, D.8021
	cmpl	%eax, %edx	# D.8021, D.8021
	jge	.L15	#,
	.loc 1 254 0
	movq	img(%rip), %rax	# img, img.46
	movl	72608(%rax), %eax	# img.46_41->Frame_Total_Number_MB, D.8021
	movq	input(%rip), %rdx	# input, input.47
	movl	3248(%rdx), %esi	# input.47_43->basicunit, D.8021
	cltd
	idivl	%esi	# D.8021
	movl	%eax, TotalNumberofBasicUnit(%rip)	# TotalNumberofBasicUnit.48, TotalNumberofBasicUnit
.L15:
	.loc 1 256 0
	movabsq	$4616189618054758400, %rax	#, tmp137
	movq	%rax, MINVALUE(%rip)	# tmp137, MINVALUE
	.loc 1 259 0
	movsd	bit_rate(%rip), %xmm1	# bit_rate, bit_rate.49
	movsd	.LC6(%rip), %xmm0	#, tmp138
	mulsd	%xmm1, %xmm0	# bit_rate.49, BufferSize.50
	movsd	%xmm0, BufferSize(%rip)	# BufferSize.50, BufferSize
	.loc 1 260 0
	movl	$0, %eax	#, tmp139
	movq	%rax, CurrentBufferFullness(%rip)	# tmp139, CurrentBufferFullness
	.loc 1 261 0
	movq	CurrentBufferFullness(%rip), %rax	# CurrentBufferFullness, CurrentBufferFullness.51
	movq	%rax, GOPTargetBufferLevel(%rip)	# CurrentBufferFullness.51, GOPTargetBufferLevel
	.loc 1 263 0
	movsd	BufferSize(%rip), %xmm1	# BufferSize, BufferSize.52
	movsd	.LC8(%rip), %xmm0	#, tmp140
	mulsd	%xmm1, %xmm0	# BufferSize.52, InitialDelayOffset.53
	movsd	%xmm0, InitialDelayOffset(%rip)	# InitialDelayOffset.53, InitialDelayOffset
	.loc 1 266 0
	movl	$0, m_windowSize(%rip)	#, m_windowSize
	.loc 1 267 0
	movl	$0, MADm_windowSize(%rip)	#, MADm_windowSize
	.loc 1 268 0
	movq	img(%rip), %rax	# img, img.54
	movl	$0, 72560(%rax)	#, img.54_51->NumberofCodedBFrame
	.loc 1 269 0
	movq	img(%rip), %rax	# img, img.55
	movl	$0, 72564(%rax)	#, img.55_52->NumberofCodedPFrame
	.loc 1 270 0
	movq	img(%rip), %rax	# img, img.56
	movl	$0, 72568(%rax)	#, img.56_53->NumberofGOP
	.loc 1 272 0
	movl	$0, R(%rip)	#, R
	.loc 1 274 0
	movq	input(%rip), %rax	# input, input.57
	movl	1236(%rax), %eax	# input.57_54->successive_Bframe, D.8021
	testl	%eax, %eax	# D.8021
	jle	.L16	#,
	.loc 1 276 0
	movabsq	$4598175219545276416, %rax	#, tmp141
	movq	%rax, GAMMAP(%rip)	# tmp141, GAMMAP
	.loc 1 277 0
	movabsq	$4606281698874543309, %rax	#, tmp142
	movq	%rax, BETAP(%rip)	# tmp142, BETAP
	jmp	.L17	#
.L16:
	.loc 1 281 0
	movabsq	$4602678819172646912, %rax	#, tmp143
	movq	%rax, GAMMAP(%rip)	# tmp143, GAMMAP
	.loc 1 282 0
	movabsq	$4602678819172646912, %rax	#, tmp144
	movq	%rax, BETAP(%rip)	# tmp144, BETAP
.L17:
	.loc 1 286 0
	movl	$0, PPreHeader(%rip)	#, PPreHeader
	.loc 1 288 0
	movq	bit_rate(%rip), %rax	# bit_rate, bit_rate.58
	movq	%rax, Pm_X1(%rip)	# bit_rate.58, Pm_X1
	.loc 1 289 0
	movl	$0, %eax	#, tmp145
	movq	%rax, Pm_X2(%rip)	# tmp145, Pm_X2
	.loc 1 291 0
	movabsq	$4607182418800017408, %rax	#, tmp146
	movq	%rax, PMADPictureC1(%rip)	# tmp146, PMADPictureC1
	.loc 1 292 0
	movl	$0, %eax	#, tmp147
	movq	%rax, PMADPictureC2(%rip)	# tmp147, PMADPictureC2
	.loc 1 294 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L18	#
.L19:
	.loc 1 296 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp149
	movslq	%eax, %rdx	# tmp149, tmp148
	movl	$0, %eax	#, tmp150
	movq	%rax, Pm_rgQp(,%rdx,8)	# tmp150, Pm_rgQp
	.loc 1 297 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp152
	movslq	%eax, %rdx	# tmp152, tmp151
	movl	$0, %eax	#, tmp153
	movq	%rax, Pm_rgRp(,%rdx,8)	# tmp153, Pm_rgRp
	.loc 1 298 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp155
	movslq	%eax, %rdx	# tmp155, tmp154
	movl	$0, %eax	#, tmp156
	movq	%rax, PPictureMAD(,%rdx,8)	# tmp156, PPictureMAD
	.loc 1 294 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L18:
	.loc 1 294 0 is_stmt 0 discriminator 1
	cmpl	$19, -36(%rbp)	#, i
	jle	.L19	#,
	.loc 1 300 0 is_stmt 1
	movl	$0, %eax	#, tmp157
	movq	%rax, PPictureMAD+160(%rip)	# tmp157, PPictureMAD
	.loc 1 303 0
	movl	$2, PDuantQp(%rip)	#, PDuantQp
	.loc 1 306 0
	movl	$0, PAveHeaderBits1(%rip)	#, PAveHeaderBits1
	.loc 1 307 0
	movl	$0, PAveHeaderBits3(%rip)	#, PAveHeaderBits3
	.loc 1 308 0
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.59
	cmpl	$8, %eax	#, TotalNumberofBasicUnit.59
	jle	.L20	#,
	.loc 1 309 0
	movl	$1, DDquant(%rip)	#, DDquant
	jmp	.L21	#
.L20:
	.loc 1 311 0
	movl	$2, DDquant(%rip)	#, DDquant
.L21:
	.loc 1 313 0
	movq	img(%rip), %rax	# img, img.60
	movl	52(%rax), %eax	# img.60_60->width, D.8021
	leal	15(%rax), %edx	#, tmp159
	testl	%eax, %eax	# tmp158
	cmovs	%edx, %eax	# tmp159,, tmp158
	sarl	$4, %eax	#, tmp160
	movl	%eax, MBPerRow(%rip)	# MBPerRow.61, MBPerRow
	.loc 1 316 0
	movq	img(%rip), %rax	# img, img.62
	movl	$0, 72600(%rax)	#, img.62_63->FieldControl
	.loc 1 318 0
	movl	$51, RC_MAX_QUANT(%rip)	#, RC_MAX_QUANT
	.loc 1 319 0
	movl	$0, RC_MIN_QUANT(%rip)	#, RC_MIN_QUANT
	.loc 1 322 0
	movsd	bit_rate(%rip), %xmm2	# bit_rate, bit_rate.63
	movq	img(%rip), %rax	# img, img.64
	movl	52(%rax), %eax	# img.64_65->width, D.8021
	cvtsi2sd	%eax, %xmm0	# D.8021, D.8023
	movsd	frame_rate(%rip), %xmm1	# frame_rate, frame_rate.65
	mulsd	%xmm0, %xmm1	# D.8023, D.8023
	movq	img(%rip), %rax	# img, img.66
	movl	60(%rax), %eax	# img.66_70->height, D.8021
	cvtsi2sd	%eax, %xmm0	# D.8021, D.8023
	mulsd	%xmm1, %xmm0	# D.8023, D.8023
	divsd	%xmm0, %xmm2	# D.8023, tmp161
	movapd	%xmm2, %xmm0	# tmp161, tmp161
	movsd	%xmm0, -8(%rbp)	# tmp161, bpp
	.loc 1 323 0
	movq	img(%rip), %rax	# img, img.67
	movl	52(%rax), %eax	# img.67_75->width, D.8021
	cmpl	$176, %eax	#, D.8021
	jne	.L22	#,
	.loc 1 325 0
	movabsq	$4591870180066957722, %rax	#, tmp162
	movq	%rax, -32(%rbp)	# tmp162, L1
	.loc 1 326 0
	movabsq	$4599075939470750515, %rax	#, tmp163
	movq	%rax, -24(%rbp)	# tmp163, L2
	.loc 1 327 0
	movabsq	$4603579539098121011, %rax	#, tmp164
	movq	%rax, -16(%rbp)	# tmp164, L3
	jmp	.L23	#
.L22:
	.loc 1 328 0
	movq	img(%rip), %rax	# img, img.68
	movl	52(%rax), %eax	# img.68_80->width, D.8021
	cmpl	$352, %eax	#, D.8021
	jne	.L24	#,
	.loc 1 330 0
	movabsq	$4596373779694328218, %rax	#, tmp165
	movq	%rax, -32(%rbp)	# tmp165, L1
	.loc 1 331 0
	movabsq	$4603579539098121011, %rax	#, tmp166
	movq	%rax, -24(%rbp)	# tmp166, L2
	.loc 1 332 0
	movabsq	$4608083138725491507, %rax	#, tmp167
	movq	%rax, -16(%rbp)	# tmp167, L3
	jmp	.L23	#
.L24:
	.loc 1 335 0
	movabsq	$4603579539098121011, %rax	#, tmp168
	movq	%rax, -32(%rbp)	# tmp168, L1
	.loc 1 336 0
	movabsq	$4608983858650965606, %rax	#, tmp169
	movq	%rax, -24(%rbp)	# tmp169, L2
	.loc 1 337 0
	movabsq	$4612586738352862003, %rax	#, tmp170
	movq	%rax, -16(%rbp)	# tmp170, L3
.L23:
	.loc 1 340 0
	movq	input(%rip), %rax	# input, input.69
	movl	3244(%rax), %eax	# input.69_88->SeinitialQP, D.8021
	testl	%eax, %eax	# D.8021
	jne	.L13	#,
	.loc 1 342 0
	movsd	-32(%rbp), %xmm0	# L1, tmp171
	ucomisd	-8(%rbp), %xmm0	# bpp, tmp171
	jb	.L36	#,
	.loc 1 343 0
	movl	$35, -40(%rbp)	#, qp
	jmp	.L28	#
.L36:
	.loc 1 345 0
	movsd	-24(%rbp), %xmm0	# L2, tmp172
	ucomisd	-8(%rbp), %xmm0	# bpp, tmp172
	jb	.L37	#,
	.loc 1 346 0
	movl	$25, -40(%rbp)	#, qp
	jmp	.L28	#
.L37:
	.loc 1 348 0
	movsd	-16(%rbp), %xmm0	# L3, tmp173
	ucomisd	-8(%rbp), %xmm0	# bpp, tmp173
	jb	.L38	#,
	.loc 1 349 0
	movl	$20, -40(%rbp)	#, qp
	jmp	.L28	#
.L38:
	.loc 1 351 0
	movl	$10, -40(%rbp)	#, qp
.L28:
	.loc 1 352 0
	movq	input(%rip), %rax	# input, input.70
	movl	-40(%rbp), %edx	# qp, tmp174
	movl	%edx, 3244(%rax)	# tmp174, input.70_94->SeinitialQP
.L13:
	.loc 1 354 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	rc_init_seq, .-rc_init_seq
	.globl	rc_init_GOP
	.type	rc_init_GOP, @function
rc_init_GOP:
.LFB5:
	.loc 1 364 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# np, np
	movl	%esi, -40(%rbp)	# nb, nb
	.loc 1 365 0
	movl	$0, -16(%rbp)	#, Overum
	.loc 1 374 0
	movl	R(%rip), %eax	# R, R.71
	testl	%eax, %eax	# R.71
	jns	.L40	#,
	.loc 1 375 0
	movl	$1, -16(%rbp)	#, Overum
.L40:
	.loc 1 376 0
	movl	R(%rip), %eax	# R, R.72
	negl	%eax	# tmp161
	movl	%eax, -12(%rbp)	# tmp161, OverBits
	.loc 1 379 0
	movl	R(%rip), %eax	# R, R.73
	cvtsi2sd	%eax, %xmm1	# R.73, D.8024
	movsd	bit_rate(%rip), %xmm0	# bit_rate, bit_rate.74
	movsd	frame_rate(%rip), %xmm2	# frame_rate, frame_rate.75
	divsd	%xmm2, %xmm0	# frame_rate.75, D.8024
	addsd	%xmm1, %xmm0	# D.8024, D.8024
	cvttsd2siq	%xmm0, %rax	# D.8024, LowerBound.76
	movq	%rax, LowerBound(%rip)	# LowerBound.76, LowerBound
	.loc 1 380 0
	movl	R(%rip), %eax	# R, R.77
	cvtsi2sd	%eax, %xmm0	# R.77, D.8024
	movsd	InitialDelayOffset(%rip), %xmm1	# InitialDelayOffset, InitialDelayOffset.78
	addsd	%xmm1, %xmm0	# InitialDelayOffset.78, D.8024
	cvttsd2siq	%xmm0, %rax	# D.8024, UpperBound1.79
	movq	%rax, UpperBound1(%rip)	# UpperBound1.79, UpperBound1
	.loc 1 383 0
	movl	-36(%rbp), %eax	# np, tmp162
	leal	1(%rax), %edx	#, D.8025
	movl	-40(%rbp), %eax	# nb, tmp163
	addl	%edx, %eax	# D.8025, D.8025
	cvtsi2sd	%eax, %xmm0	# D.8025, D.8024
	movsd	bit_rate(%rip), %xmm1	# bit_rate, bit_rate.80
	mulsd	%xmm1, %xmm0	# bit_rate.80, D.8024
	movsd	frame_rate(%rip), %xmm1	# frame_rate, frame_rate.81
	divsd	%xmm1, %xmm0	# frame_rate.81, D.8024
	movsd	.LC11(%rip), %xmm1	#, tmp164
	addsd	%xmm1, %xmm0	# tmp164, D.8024
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8024, tmp165
	movl	%eax, -8(%rbp)	# tmp165, AllocatedBits
	.loc 1 384 0
	movl	R(%rip), %edx	# R, R.82
	movl	-8(%rbp), %eax	# AllocatedBits, tmp166
	addl	%edx, %eax	# R.82, R.83
	movl	%eax, R(%rip)	# R.83, R
	.loc 1 385 0
	movl	-36(%rbp), %eax	# np, tmp167
	movl	%eax, Np(%rip)	# tmp167, Np
	.loc 1 386 0
	movl	-40(%rbp), %eax	# nb, tmp168
	movl	%eax, Nb(%rip)	# tmp168, Nb
	.loc 1 388 0
	movl	-12(%rbp), %eax	# OverBits, tmp169
	sall	$3, %eax	#, D.8025
	cltd
	idivl	-8(%rbp)	# AllocatedBits
	cvtsi2sd	%eax, %xmm0	# D.8025, D.8024
	movsd	.LC11(%rip), %xmm1	#, tmp172
	addsd	%xmm1, %xmm0	# tmp172, D.8024
	cvttsd2si	%xmm0, %eax	# D.8024, tmp173
	movl	%eax, -4(%rbp)	# tmp173, OverDuantQp
	.loc 1 389 0
	movl	$0, GOPOverdue(%rip)	#, GOPOverdue
	.loc 1 392 0
	movq	img(%rip), %rax	# img, img.84
	movl	$1, 72612(%rax)	#, img.84_38->IFLAG
	.loc 1 395 0
	movl	-36(%rbp), %eax	# np, tmp174
	movl	%eax, TotalPFrame(%rip)	# tmp174, TotalPFrame
	.loc 1 396 0
	movq	img(%rip), %rax	# img, img.85
	movl	72568(%rax), %edx	# img.85_39->NumberofGOP, D.8025
	addl	$1, %edx	#, D.8025
	movl	%edx, 72568(%rax)	# D.8025, img.85_39->NumberofGOP
	.loc 1 397 0
	movq	img(%rip), %rax	# img, img.86
	movl	72568(%rax), %eax	# img.86_42->NumberofGOP, D.8025
	cmpl	$1, %eax	#, D.8025
	jne	.L41	#,
	.loc 1 399 0
	movq	input(%rip), %rax	# input, input.87
	movl	3244(%rax), %eax	# input.87_44->SeinitialQP, MyInitialQp.88
	movl	%eax, MyInitialQp(%rip)	# MyInitialQp.88, MyInitialQp
	.loc 1 400 0
	movl	MyInitialQp(%rip), %eax	# MyInitialQp, MyInitialQp.89
	subl	$1, %eax	#, PreviousQp2.90
	movl	%eax, PreviousQp2(%rip)	# PreviousQp2.90, PreviousQp2
	.loc 1 401 0
	movl	MyInitialQp(%rip), %eax	# MyInitialQp, MyInitialQp.91
	movl	%eax, QPLastGOP(%rip)	# MyInitialQp.91, QPLastGOP
	jmp	.L42	#
.L41:
	.loc 1 407 0
	movq	input(%rip), %rax	# input, input.92
	movl	2880(%rax), %eax	# input.92_49->PicInterlace, D.8025
	cmpl	$2, %eax	#, D.8025
	je	.L43	#,
	.loc 1 408 0
	movq	input(%rip), %rax	# input, input.93
	movl	2884(%rax), %eax	# input.93_51->MbInterlace, D.8025
	testl	%eax, %eax	# D.8025
	je	.L44	#,
.L43:
	.loc 1 410 0
	movq	img(%rip), %rax	# img, img.94
	movl	72604(%rax), %eax	# img.94_53->FieldFrame, D.8025
	cmpl	$1, %eax	#, D.8025
	jne	.L45	#,
	.loc 1 412 0
	movq	img(%rip), %rax	# img, img.95
	movq	img(%rip), %rdx	# img, img.96
	movl	72572(%rdx), %ecx	# img.96_56->TotalQpforPPicture, D.8025
	movl	FrameQPBuffer(%rip), %edx	# FrameQPBuffer, FrameQPBuffer.97
	addl	%ecx, %edx	# D.8025, D.8025
	movl	%edx, 72572(%rax)	# D.8025, img.95_55->TotalQpforPPicture
	.loc 1 413 0
	movl	FrameQPBuffer(%rip), %eax	# FrameQPBuffer, FrameQPBuffer.98
	movl	%eax, QPLastPFrame(%rip)	# FrameQPBuffer.98, QPLastPFrame
	jmp	.L44	#
.L45:
	.loc 1 417 0
	movq	img(%rip), %rax	# img, img.99
	movq	img(%rip), %rdx	# img, img.100
	movl	72572(%rdx), %ecx	# img.100_62->TotalQpforPPicture, D.8025
	movl	FieldQPBuffer(%rip), %edx	# FieldQPBuffer, FieldQPBuffer.101
	addl	%ecx, %edx	# D.8025, D.8025
	movl	%edx, 72572(%rax)	# D.8025, img.99_61->TotalQpforPPicture
	.loc 1 418 0
	movl	FieldQPBuffer(%rip), %eax	# FieldQPBuffer, FieldQPBuffer.102
	movl	%eax, QPLastPFrame(%rip)	# FieldQPBuffer.102, QPLastPFrame
.L44:
	.loc 1 423 0
	movq	img(%rip), %rax	# img, img.103
	movl	72572(%rax), %eax	# img.103_67->TotalQpforPPicture, D.8025
	cvtsi2sd	%eax, %xmm0	# D.8025, D.8024
	movq	img(%rip), %rax	# img, img.104
	movl	72576(%rax), %eax	# img.104_70->NumberofPPicture, D.8025
	cvtsi2sd	%eax, %xmm1	# D.8025, D.8024
	divsd	%xmm1, %xmm0	# D.8024, D.8024
	movsd	.LC11(%rip), %xmm1	#, tmp175
	addsd	%xmm1, %xmm0	# tmp175, D.8024
	cvttsd2si	%xmm0, %eax	# D.8024, PAverageQp.105
	movl	%eax, PAverageQp(%rip)	# PAverageQp.105, PAverageQp
	.loc 1 425 0
	movl	-40(%rbp), %eax	# nb, tmp176
	movl	-36(%rbp), %edx	# np, tmp177
	addl	%edx, %eax	# tmp177, D.8025
	addl	$1, %eax	#, D.8025
	cvtsi2sd	%eax, %xmm0	# D.8025, D.8024
	movsd	.LC20(%rip), %xmm1	#, tmp178
	divsd	%xmm1, %xmm0	# tmp178, D.8024
	movsd	.LC11(%rip), %xmm1	#, tmp179
	addsd	%xmm1, %xmm0	# tmp179, D.8024
	cvttsd2si	%xmm0, %eax	# D.8024, tmp180
	movl	%eax, -20(%rbp)	# tmp180, GOPDquant
	.loc 1 426 0
	cmpl	$2, -20(%rbp)	#, GOPDquant
	jle	.L46	#,
	.loc 1 427 0
	movl	$2, -20(%rbp)	#, GOPDquant
.L46:
	.loc 1 429 0
	movl	PAverageQp(%rip), %eax	# PAverageQp, PAverageQp.106
	subl	-20(%rbp), %eax	# GOPDquant, PAverageQp.107
	movl	%eax, PAverageQp(%rip)	# PAverageQp.107, PAverageQp
	.loc 1 431 0
	movl	QPLastPFrame(%rip), %eax	# QPLastPFrame, QPLastPFrame.108
	leal	-2(%rax), %edx	#, D.8025
	movl	PAverageQp(%rip), %eax	# PAverageQp, PAverageQp.109
	cmpl	%eax, %edx	# PAverageQp.109, D.8025
	jge	.L47	#,
	.loc 1 432 0
	movl	PAverageQp(%rip), %eax	# PAverageQp, PAverageQp.110
	subl	$1, %eax	#, PAverageQp.111
	movl	%eax, PAverageQp(%rip)	# PAverageQp.111, PAverageQp
.L47:
	.loc 1 433 0
	movl	QPLastGOP(%rip), %eax	# QPLastGOP, QPLastGOP.112
	leal	-2(%rax), %edx	#, D.8025
	movl	PAverageQp(%rip), %eax	# PAverageQp, PAverageQp.113
	cmpl	%eax, %edx	# PAverageQp.113, D.8025
	cmovge	%edx, %eax	# D.8025,, PAverageQp.114
	movl	%eax, PAverageQp(%rip)	# PAverageQp.114, PAverageQp
	.loc 1 434 0
	movl	QPLastGOP(%rip), %eax	# QPLastGOP, QPLastGOP.115
	leal	2(%rax), %edx	#, D.8025
	movl	PAverageQp(%rip), %eax	# PAverageQp, PAverageQp.116
	cmpl	%eax, %edx	# PAverageQp.116, D.8025
	cmovle	%edx, %eax	# D.8025,, PAverageQp.117
	movl	%eax, PAverageQp(%rip)	# PAverageQp.117, PAverageQp
	.loc 1 435 0
	movl	PAverageQp(%rip), %edx	# PAverageQp, PAverageQp.118
	movl	RC_MAX_QUANT(%rip), %eax	# RC_MAX_QUANT, RC_MAX_QUANT.119
	cmpl	%eax, %edx	# RC_MAX_QUANT.119, PAverageQp.118
	cmovle	%edx, %eax	# PAverageQp.118,, PAverageQp.120
	movl	%eax, PAverageQp(%rip)	# PAverageQp.120, PAverageQp
	.loc 1 436 0
	movl	RC_MIN_QUANT(%rip), %edx	# RC_MIN_QUANT, RC_MIN_QUANT.121
	movl	PAverageQp(%rip), %eax	# PAverageQp, PAverageQp.122
	cmpl	%eax, %edx	# PAverageQp.122, RC_MIN_QUANT.121
	cmovge	%edx, %eax	# RC_MIN_QUANT.121,, PAverageQp.123
	movl	%eax, PAverageQp(%rip)	# PAverageQp.123, PAverageQp
	.loc 1 439 0
	movl	PAverageQp(%rip), %eax	# PAverageQp, PAverageQp.124
	movl	%eax, MyInitialQp(%rip)	# PAverageQp.124, MyInitialQp
	.loc 1 440 0
	movl	MyInitialQp(%rip), %eax	# MyInitialQp, MyInitialQp.125
	movl	%eax, QPLastGOP(%rip)	# MyInitialQp.125, QPLastGOP
	.loc 1 441 0
	movl	PAverageQp(%rip), %eax	# PAverageQp, PAverageQp.126
	movl	%eax, Pm_Qp(%rip)	# PAverageQp.126, Pm_Qp
	.loc 1 442 0
	movl	PAverageQp(%rip), %eax	# PAverageQp, PAverageQp.127
	movl	%eax, PAveFrameQP(%rip)	# PAverageQp.127, PAveFrameQP
	.loc 1 443 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.128
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.128, PreviousQp1
	.loc 1 444 0
	movl	MyInitialQp(%rip), %eax	# MyInitialQp, MyInitialQp.129
	subl	$1, %eax	#, PreviousQp2.130
	movl	%eax, PreviousQp2(%rip)	# PreviousQp2.130, PreviousQp2
.L42:
	.loc 1 447 0
	movq	img(%rip), %rax	# img, img.131
	movl	$0, 72572(%rax)	#, img.131_111->TotalQpforPPicture
	.loc 1 448 0
	movq	img(%rip), %rax	# img, img.132
	movl	$0, 72576(%rax)	#, img.132_112->NumberofPPicture
	.loc 1 449 0
	movl	$0, NumberofBFrames(%rip)	#, NumberofBFrames
	.loc 1 450 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	rc_init_GOP, .-rc_init_GOP
	.globl	rc_init_pict
	.type	rc_init_pict, @function
rc_init_pict:
.LFB6:
	.loc 1 461 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# fieldpic, fieldpic
	movl	%esi, -40(%rbp)	# topfield, topfield
	movl	%edx, -44(%rbp)	# targetcomputation, targetcomputation
	.loc 1 465 0
	movq	input(%rip), %rax	# input, input.133
	movl	2884(%rax), %eax	# input.133_3->MbInterlace, D.8026
	testl	%eax, %eax	# D.8026
	je	.L49	#,
	.loc 1 466 0
	movq	img(%rip), %rax	# img, img.134
	movl	72608(%rax), %eax	# img.134_5->Frame_Total_Number_MB, D.8026
	movq	img(%rip), %rdx	# img, img.135
	movl	72620(%rdx), %ebx	# img.135_7->BasicUnit, D.8026
	cltd
	idivl	%ebx	# D.8026
	movl	%eax, TotalNumberofBasicUnit(%rip)	# TotalNumberofBasicUnit.136, TotalNumberofBasicUnit
.L49:
	.loc 1 467 0
	movq	img(%rip), %rax	# img, img.137
	movl	$0, 72616(%rax)	#, img.137_10->NumberofCodedMacroBlocks
	.loc 1 472 0
	movq	input(%rip), %rax	# input, input.138
	movl	3252(%rax), %eax	# input.138_11->channel_type, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L50	#,
	.loc 1 474 0
	movq	img(%rip), %rax	# img, img.139
	movl	72564(%rax), %eax	# img.139_13->NumberofCodedPFrame, D.8026
	cmpl	$58, %eax	#, D.8026
	jne	.L51	#,
	.loc 1 475 0
	movsd	bit_rate(%rip), %xmm1	# bit_rate, bit_rate.140
	movsd	.LC21(%rip), %xmm0	#, tmp497
	mulsd	%xmm1, %xmm0	# bit_rate.140, bit_rate.141
	movsd	%xmm0, bit_rate(%rip)	# bit_rate.141, bit_rate
	jmp	.L50	#
.L51:
	.loc 1 476 0
	movq	img(%rip), %rax	# img, img.142
	movl	72564(%rax), %eax	# img.142_17->NumberofCodedPFrame, D.8026
	cmpl	$59, %eax	#, D.8026
	jne	.L50	#,
	.loc 1 477 0
	movq	bit_rate(%rip), %rax	# bit_rate, bit_rate.143
	movq	%rax, PreviousBit_Rate(%rip)	# bit_rate.143, PreviousBit_Rate
.L50:
	.loc 1 481 0
	cmpl	$0, -36(%rbp)	#, fieldpic
	jne	.L52	#,
	.loc 1 481 0 is_stmt 0 discriminator 2
	cmpl	$0, -40(%rbp)	#, topfield
	je	.L53	#,
.L52:
	.loc 1 481 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, targetcomputation
	je	.L53	#,
	.loc 1 483 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.144
	movl	24(%rax), %eax	# img.144_23->type, D.8026
	testl	%eax, %eax	# D.8026
	je	.L55	#,
	cmpl	$1, %eax	#, D.8026
	je	.L56	#,
	jmp	.L54	#
.L55:
	.loc 1 488 0
	movsd	PreviousBit_Rate(%rip), %xmm0	# PreviousBit_Rate, PreviousBit_Rate.145
	movsd	bit_rate(%rip), %xmm1	# bit_rate, bit_rate.146
	ucomisd	%xmm1, %xmm0	# bit_rate.146, PreviousBit_Rate.145
	jp	.L93	#,
	ucomisd	%xmm1, %xmm0	# bit_rate.146, PreviousBit_Rate.145
	je	.L57	#,
.L93:
	.loc 1 489 0
	movsd	bit_rate(%rip), %xmm0	# bit_rate, bit_rate.147
	movsd	PreviousBit_Rate(%rip), %xmm1	# PreviousBit_Rate, PreviousBit_Rate.148
	subsd	%xmm1, %xmm0	# PreviousBit_Rate.148, D.8027
	movapd	%xmm0, %xmm1	# D.8027, D.8027
	movl	Np(%rip), %edx	# Np, Np.149
	movl	Nb(%rip), %eax	# Nb, Nb.150
	addl	%edx, %eax	# Np.149, D.8026
	cvtsi2sd	%eax, %xmm0	# D.8026, D.8027
	mulsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	frame_rate(%rip), %xmm1	# frame_rate, frame_rate.151
	divsd	%xmm1, %xmm0	# frame_rate.151, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp498
	addsd	%xmm1, %xmm0	# tmp498, D.8027
	call	floor	#
	cvttsd2si	%xmm0, %edx	# D.8027, D.8026
	movl	R(%rip), %eax	# R, R.152
	addl	%edx, %eax	# D.8026, R.153
	movl	%eax, R(%rip)	# R.153, R
.L57:
	.loc 1 493 0
	movq	img(%rip), %rax	# img, img.154
	movl	72620(%rax), %edx	# img.154_42->BasicUnit, D.8026
	movq	img(%rip), %rax	# img, img.155
	movl	72608(%rax), %eax	# img.155_44->Frame_Total_Number_MB, D.8026
	cmpl	%eax, %edx	# D.8026, D.8026
	jne	.L59	#,
	.loc 1 495 0
	movq	img(%rip), %rax	# img, img.156
	movl	72576(%rax), %eax	# img.156_46->NumberofPPicture, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L60	#,
	.loc 1 497 0
	movq	CurrentBufferFullness(%rip), %rax	# CurrentBufferFullness, CurrentBufferFullness.157
	movq	%rax, TargetBufferLevel(%rip)	# CurrentBufferFullness.157, TargetBufferLevel
	.loc 1 498 0
	movsd	CurrentBufferFullness(%rip), %xmm0	# CurrentBufferFullness, CurrentBufferFullness.158
	movsd	GOPTargetBufferLevel(%rip), %xmm1	# GOPTargetBufferLevel, GOPTargetBufferLevel.159
	subsd	%xmm1, %xmm0	# GOPTargetBufferLevel.159, D.8027
	movl	TotalPFrame(%rip), %eax	# TotalPFrame, TotalPFrame.160
	subl	$1, %eax	#, D.8026
	cvtsi2sd	%eax, %xmm1	# D.8026, D.8027
	divsd	%xmm1, %xmm0	# D.8027, DeltaP.161
	movsd	%xmm0, DeltaP(%rip)	# DeltaP.161, DeltaP
	.loc 1 499 0
	movsd	TargetBufferLevel(%rip), %xmm0	# TargetBufferLevel, TargetBufferLevel.162
	movsd	DeltaP(%rip), %xmm1	# DeltaP, DeltaP.163
	subsd	%xmm1, %xmm0	# DeltaP.163, TargetBufferLevel.164
	movsd	%xmm0, TargetBufferLevel(%rip)	# TargetBufferLevel.164, TargetBufferLevel
	jmp	.L62	#
.L60:
	.loc 1 501 0
	movq	img(%rip), %rax	# img, img.165
	movl	72576(%rax), %eax	# img.165_59->NumberofPPicture, D.8026
	cmpl	$1, %eax	#, D.8026
	jle	.L62	#,
	.loc 1 502 0
	movsd	TargetBufferLevel(%rip), %xmm0	# TargetBufferLevel, TargetBufferLevel.166
	movsd	DeltaP(%rip), %xmm1	# DeltaP, DeltaP.167
	subsd	%xmm1, %xmm0	# DeltaP.167, TargetBufferLevel.168
	movsd	%xmm0, TargetBufferLevel(%rip)	# TargetBufferLevel.168, TargetBufferLevel
	jmp	.L62	#
.L59:
	.loc 1 507 0
	movq	img(%rip), %rax	# img, img.169
	movl	72564(%rax), %eax	# img.169_64->NumberofCodedPFrame, D.8026
	testl	%eax, %eax	# D.8026
	jle	.L63	#,
	.loc 1 510 0
	movq	input(%rip), %rax	# input, input.170
	movl	2880(%rax), %eax	# input.170_66->PicInterlace, D.8026
	cmpl	$2, %eax	#, D.8026
	je	.L64	#,
	.loc 1 510 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.171
	movl	2884(%rax), %eax	# input.171_68->MbInterlace, D.8026
	testl	%eax, %eax	# D.8026
	je	.L65	#,
.L64:
	.loc 1 511 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.172
	movl	72600(%rax), %eax	# img.172_70->FieldControl, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L65	#,
	.loc 1 513 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L66	#
.L67:
	.loc 1 514 0 discriminator 2
	movq	FCBUPFMAD(%rip), %rax	# FCBUPFMAD, FCBUPFMAD.173
	movl	-20(%rbp), %edx	# i, tmp499
	movslq	%edx, %rdx	# tmp499, D.8028
	salq	$3, %rdx	#, D.8028
	addq	%rax, %rdx	# FCBUPFMAD.173, D.8029
	movq	FCBUCFMAD(%rip), %rax	# FCBUCFMAD, FCBUCFMAD.174
	movl	-20(%rbp), %ecx	# i, tmp500
	movslq	%ecx, %rcx	# tmp500, D.8028
	salq	$3, %rcx	#, D.8028
	addq	%rcx, %rax	# D.8028, D.8029
	movq	(%rax), %rax	# *_81, D.8027
	movq	%rax, (%rdx)	# D.8027, *_77
	.loc 1 513 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L66:
	.loc 1 513 0 is_stmt 0 discriminator 1
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.175
	cmpl	%eax, -20(%rbp)	# TotalNumberofBasicUnit.175, i
	jl	.L67	#,
	.loc 1 510 0 is_stmt 1
	jmp	.L63	#
.L65:
	.loc 1 518 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L68	#
.L69:
	.loc 1 519 0 discriminator 2
	movq	BUPFMAD(%rip), %rax	# BUPFMAD, BUPFMAD.176
	movl	-20(%rbp), %edx	# i, tmp501
	movslq	%edx, %rdx	# tmp501, D.8028
	salq	$3, %rdx	#, D.8028
	addq	%rax, %rdx	# BUPFMAD.176, D.8029
	movq	BUCFMAD(%rip), %rax	# BUCFMAD, BUCFMAD.177
	movl	-20(%rbp), %ecx	# i, tmp502
	movslq	%ecx, %rcx	# tmp502, D.8028
	salq	$3, %rcx	#, D.8028
	addq	%rcx, %rax	# D.8028, D.8029
	movq	(%rax), %rax	# *_93, D.8027
	movq	%rax, (%rdx)	# D.8027, *_89
	.loc 1 518 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L68:
	.loc 1 518 0 is_stmt 0 discriminator 1
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.178
	cmpl	%eax, -20(%rbp)	# TotalNumberofBasicUnit.178, i
	jl	.L69	#,
.L63:
	.loc 1 523 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.179
	movl	72568(%rax), %eax	# img.179_96->NumberofGOP, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L70	#,
	.loc 1 525 0
	movq	img(%rip), %rax	# img, img.180
	movl	72576(%rax), %eax	# img.180_98->NumberofPPicture, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L71	#,
	.loc 1 527 0
	movq	CurrentBufferFullness(%rip), %rax	# CurrentBufferFullness, CurrentBufferFullness.181
	movq	%rax, TargetBufferLevel(%rip)	# CurrentBufferFullness.181, TargetBufferLevel
	.loc 1 528 0
	movsd	CurrentBufferFullness(%rip), %xmm0	# CurrentBufferFullness, CurrentBufferFullness.182
	movsd	GOPTargetBufferLevel(%rip), %xmm1	# GOPTargetBufferLevel, GOPTargetBufferLevel.183
	subsd	%xmm1, %xmm0	# GOPTargetBufferLevel.183, D.8027
	movl	TotalPFrame(%rip), %eax	# TotalPFrame, TotalPFrame.184
	subl	$1, %eax	#, D.8026
	cvtsi2sd	%eax, %xmm1	# D.8026, D.8027
	divsd	%xmm1, %xmm0	# D.8027, DeltaP.185
	movsd	%xmm0, DeltaP(%rip)	# DeltaP.185, DeltaP
	.loc 1 529 0
	movsd	TargetBufferLevel(%rip), %xmm0	# TargetBufferLevel, TargetBufferLevel.186
	movsd	DeltaP(%rip), %xmm1	# DeltaP, DeltaP.187
	subsd	%xmm1, %xmm0	# DeltaP.187, TargetBufferLevel.188
	movsd	%xmm0, TargetBufferLevel(%rip)	# TargetBufferLevel.188, TargetBufferLevel
	jmp	.L62	#
.L71:
	.loc 1 531 0
	movq	img(%rip), %rax	# img, img.189
	movl	72576(%rax), %eax	# img.189_111->NumberofPPicture, D.8026
	cmpl	$1, %eax	#, D.8026
	jle	.L62	#,
	.loc 1 532 0
	movsd	TargetBufferLevel(%rip), %xmm0	# TargetBufferLevel, TargetBufferLevel.190
	movsd	DeltaP(%rip), %xmm1	# DeltaP, DeltaP.191
	subsd	%xmm1, %xmm0	# DeltaP.191, TargetBufferLevel.192
	movsd	%xmm0, TargetBufferLevel(%rip)	# TargetBufferLevel.192, TargetBufferLevel
	jmp	.L62	#
.L70:
	.loc 1 534 0
	movq	img(%rip), %rax	# img, img.193
	movl	72568(%rax), %eax	# img.193_116->NumberofGOP, D.8026
	cmpl	$1, %eax	#, D.8026
	jle	.L62	#,
	.loc 1 536 0
	movq	img(%rip), %rax	# img, img.194
	movl	72576(%rax), %eax	# img.194_118->NumberofPPicture, D.8026
	testl	%eax, %eax	# D.8026
	jne	.L73	#,
	.loc 1 538 0
	movq	CurrentBufferFullness(%rip), %rax	# CurrentBufferFullness, CurrentBufferFullness.195
	movq	%rax, TargetBufferLevel(%rip)	# CurrentBufferFullness.195, TargetBufferLevel
	.loc 1 539 0
	movsd	CurrentBufferFullness(%rip), %xmm0	# CurrentBufferFullness, CurrentBufferFullness.196
	movsd	GOPTargetBufferLevel(%rip), %xmm1	# GOPTargetBufferLevel, GOPTargetBufferLevel.197
	subsd	%xmm1, %xmm0	# GOPTargetBufferLevel.197, D.8027
	movl	TotalPFrame(%rip), %eax	# TotalPFrame, TotalPFrame.198
	cvtsi2sd	%eax, %xmm1	# TotalPFrame.198, D.8027
	divsd	%xmm1, %xmm0	# D.8027, DeltaP.199
	movsd	%xmm0, DeltaP(%rip)	# DeltaP.199, DeltaP
	.loc 1 540 0
	movsd	TargetBufferLevel(%rip), %xmm0	# TargetBufferLevel, TargetBufferLevel.200
	movsd	DeltaP(%rip), %xmm1	# DeltaP, DeltaP.201
	subsd	%xmm1, %xmm0	# DeltaP.201, TargetBufferLevel.202
	movsd	%xmm0, TargetBufferLevel(%rip)	# TargetBufferLevel.202, TargetBufferLevel
	jmp	.L62	#
.L73:
	.loc 1 542 0
	movq	img(%rip), %rax	# img, img.203
	movl	72576(%rax), %eax	# img.203_130->NumberofPPicture, D.8026
	testl	%eax, %eax	# D.8026
	jle	.L62	#,
	.loc 1 543 0
	movsd	TargetBufferLevel(%rip), %xmm0	# TargetBufferLevel, TargetBufferLevel.204
	movsd	DeltaP(%rip), %xmm1	# DeltaP, DeltaP.205
	subsd	%xmm1, %xmm0	# DeltaP.205, TargetBufferLevel.206
	movsd	%xmm0, TargetBufferLevel(%rip)	# TargetBufferLevel.206, TargetBufferLevel
.L62:
	.loc 1 547 0
	movq	img(%rip), %rax	# img, img.207
	movl	72564(%rax), %eax	# img.207_135->NumberofCodedPFrame, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L74	#,
	.loc 1 548 0
	movq	Wp(%rip), %rax	# Wp, Wp.208
	movq	%rax, AWp(%rip)	# Wp.208, AWp
.L74:
	.loc 1 549 0
	movq	img(%rip), %rax	# img, img.209
	movl	72564(%rax), %eax	# img.209_138->NumberofCodedPFrame, D.8026
	cmpl	$7, %eax	#, D.8026
	jg	.L75	#,
	.loc 1 549 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.210
	movl	72564(%rax), %eax	# img.210_140->NumberofCodedPFrame, D.8026
	cmpl	$1, %eax	#, D.8026
	jle	.L75	#,
	.loc 1 550 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.211
	movl	72564(%rax), %eax	# img.211_142->NumberofCodedPFrame, D.8026
	subl	$1, %eax	#, D.8026
	cvtsi2sd	%eax, %xmm0	# D.8026, D.8027
	movsd	Wp(%rip), %xmm1	# Wp, Wp.212
	mulsd	%xmm1, %xmm0	# Wp.212, D.8027
	movq	img(%rip), %rax	# img, img.213
	movl	72564(%rax), %eax	# img.213_148->NumberofCodedPFrame, D.8026
	cvtsi2sd	%eax, %xmm1	# D.8026, D.8027
	divsd	%xmm1, %xmm0	# D.8027, D.8027
	movapd	%xmm0, %xmm1	# D.8027, D.8027
	.loc 1 551 0
	movsd	AWp(%rip), %xmm2	# AWp, AWp.214
	movq	img(%rip), %rax	# img, img.215
	movl	72564(%rax), %eax	# img.215_153->NumberofCodedPFrame, D.8026
	cvtsi2sd	%eax, %xmm0	# D.8026, D.8027
	divsd	%xmm0, %xmm2	# D.8027, D.8027
	movapd	%xmm2, %xmm0	# D.8027, D.8027
	.loc 1 550 0
	addsd	%xmm1, %xmm0	# D.8027, AWp.216
	movsd	%xmm0, AWp(%rip)	# AWp.216, AWp
	jmp	.L76	#
.L75:
	.loc 1 552 0
	movq	img(%rip), %rax	# img, img.217
	movl	72564(%rax), %eax	# img.217_158->NumberofCodedPFrame, D.8026
	cmpl	$1, %eax	#, D.8026
	jle	.L76	#,
	.loc 1 553 0
	movsd	Wp(%rip), %xmm0	# Wp, Wp.218
	movsd	.LC22(%rip), %xmm1	#, tmp503
	divsd	%xmm1, %xmm0	# tmp503, D.8027
	movapd	%xmm0, %xmm1	# D.8027, D.8027
	movsd	AWp(%rip), %xmm2	# AWp, AWp.219
	movsd	.LC23(%rip), %xmm0	#, tmp504
	mulsd	%xmm2, %xmm0	# AWp.219, D.8027
	movsd	.LC22(%rip), %xmm2	#, tmp505
	divsd	%xmm2, %xmm0	# tmp505, D.8027
	addsd	%xmm1, %xmm0	# D.8027, AWp.220
	movsd	%xmm0, AWp(%rip)	# AWp.220, AWp
.L76:
	.loc 1 556 0
	movq	input(%rip), %rax	# input, input.221
	movl	1236(%rax), %eax	# input.221_166->successive_Bframe, D.8026
	testl	%eax, %eax	# D.8026
	jle	.L77	#,
	.loc 1 559 0
	movq	input(%rip), %rax	# input, input.222
	movl	1236(%rax), %eax	# input.222_168->successive_Bframe, D.8026
	addl	$1, %eax	#, D.8026
	cvtsi2sd	%eax, %xmm0	# D.8026, D.8027
	movsd	AWp(%rip), %xmm1	# AWp, AWp.223
	mulsd	%xmm1, %xmm0	# AWp.223, D.8027
	movsd	bit_rate(%rip), %xmm1	# bit_rate, bit_rate.224
	mulsd	%xmm1, %xmm0	# bit_rate.224, D.8027
	.loc 1 560 0
	movq	input(%rip), %rax	# input, input.225
	movl	1236(%rax), %eax	# input.225_176->successive_Bframe, D.8026
	cvtsi2sd	%eax, %xmm1	# D.8026, D.8027
	movsd	AWb(%rip), %xmm2	# AWb, AWb.226
	mulsd	%xmm2, %xmm1	# AWb.226, D.8027
	movsd	AWp(%rip), %xmm2	# AWp, AWp.227
	addsd	%xmm2, %xmm1	# AWp.227, D.8027
	movsd	frame_rate(%rip), %xmm2	# frame_rate, frame_rate.228
	mulsd	%xmm2, %xmm1	# frame_rate.228, D.8027
	divsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	bit_rate(%rip), %xmm1	# bit_rate, bit_rate.229
	movsd	frame_rate(%rip), %xmm2	# frame_rate, frame_rate.230
	divsd	%xmm2, %xmm1	# frame_rate.230, D.8027
	subsd	%xmm1, %xmm0	# D.8027, D.8027
	.loc 1 559 0
	movsd	TargetBufferLevel(%rip), %xmm1	# TargetBufferLevel, TargetBufferLevel.231
	addsd	%xmm1, %xmm0	# TargetBufferLevel.231, TargetBufferLevel.232
	movsd	%xmm0, TargetBufferLevel(%rip)	# TargetBufferLevel.232, TargetBufferLevel
	.loc 1 563 0
	jmp	.L54	#
.L77:
	jmp	.L54	#
.L56:
	.loc 1 567 0
	movsd	PreviousBit_Rate(%rip), %xmm0	# PreviousBit_Rate, PreviousBit_Rate.233
	movsd	bit_rate(%rip), %xmm1	# bit_rate, bit_rate.234
	ucomisd	%xmm1, %xmm0	# bit_rate.234, PreviousBit_Rate.233
	jp	.L94	#,
	ucomisd	%xmm1, %xmm0	# bit_rate.234, PreviousBit_Rate.233
	je	.L78	#,
.L94:
	.loc 1 568 0
	movsd	bit_rate(%rip), %xmm0	# bit_rate, bit_rate.235
	movsd	PreviousBit_Rate(%rip), %xmm1	# PreviousBit_Rate, PreviousBit_Rate.236
	subsd	%xmm1, %xmm0	# PreviousBit_Rate.236, D.8027
	movapd	%xmm0, %xmm1	# D.8027, D.8027
	movl	Np(%rip), %edx	# Np, Np.237
	movl	Nb(%rip), %eax	# Nb, Nb.238
	addl	%edx, %eax	# Np.237, D.8026
	cvtsi2sd	%eax, %xmm0	# D.8026, D.8027
	mulsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	frame_rate(%rip), %xmm1	# frame_rate, frame_rate.239
	divsd	%xmm1, %xmm0	# frame_rate.239, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp506
	addsd	%xmm1, %xmm0	# tmp506, D.8027
	call	floor	#
	cvttsd2si	%xmm0, %edx	# D.8027, D.8026
	movl	R(%rip), %eax	# R, R.240
	addl	%edx, %eax	# D.8026, R.241
	movl	%eax, R(%rip)	# R.241, R
.L78:
	.loc 1 569 0
	movq	img(%rip), %rax	# img, img.242
	movl	72564(%rax), %eax	# img.242_209->NumberofCodedPFrame, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L80	#,
	.loc 1 569 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.243
	movl	72560(%rax), %eax	# img.243_211->NumberofCodedBFrame, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L80	#,
	.loc 1 571 0 is_stmt 1
	movq	Wp(%rip), %rax	# Wp, Wp.244
	movq	%rax, AWp(%rip)	# Wp.244, AWp
	.loc 1 572 0
	movq	Wb(%rip), %rax	# Wb, Wb.245
	movq	%rax, AWb(%rip)	# Wb.245, AWb
	jmp	.L81	#
.L80:
	.loc 1 574 0
	movq	img(%rip), %rax	# img, img.246
	movl	72560(%rax), %eax	# img.246_215->NumberofCodedBFrame, D.8026
	cmpl	$1, %eax	#, D.8026
	jle	.L81	#,
	.loc 1 577 0
	movq	img(%rip), %rax	# img, img.247
	movl	72560(%rax), %eax	# img.247_217->NumberofCodedBFrame, D.8026
	cmpl	$7, %eax	#, D.8026
	jg	.L82	#,
	.loc 1 578 0
	movq	img(%rip), %rax	# img, img.248
	movl	72560(%rax), %eax	# img.248_219->NumberofCodedBFrame, D.8026
	subl	$1, %eax	#, D.8026
	cvtsi2sd	%eax, %xmm0	# D.8026, D.8027
	movsd	Wb(%rip), %xmm1	# Wb, Wb.249
	mulsd	%xmm1, %xmm0	# Wb.249, D.8027
	movq	img(%rip), %rax	# img, img.250
	movl	72560(%rax), %eax	# img.250_225->NumberofCodedBFrame, D.8026
	cvtsi2sd	%eax, %xmm1	# D.8026, D.8027
	divsd	%xmm1, %xmm0	# D.8027, D.8027
	movapd	%xmm0, %xmm1	# D.8027, D.8027
	.loc 1 579 0
	movsd	AWb(%rip), %xmm2	# AWb, AWb.251
	movq	img(%rip), %rax	# img, img.252
	movl	72560(%rax), %eax	# img.252_230->NumberofCodedBFrame, D.8026
	cvtsi2sd	%eax, %xmm0	# D.8026, D.8027
	divsd	%xmm0, %xmm2	# D.8027, D.8027
	movapd	%xmm2, %xmm0	# D.8027, D.8027
	.loc 1 578 0
	addsd	%xmm1, %xmm0	# D.8027, AWb.253
	movsd	%xmm0, AWb(%rip)	# AWb.253, AWb
	jmp	.L81	#
.L82:
	.loc 1 581 0
	movsd	Wb(%rip), %xmm0	# Wb, Wb.254
	movsd	.LC22(%rip), %xmm1	#, tmp507
	divsd	%xmm1, %xmm0	# tmp507, D.8027
	movapd	%xmm0, %xmm1	# D.8027, D.8027
	movsd	AWb(%rip), %xmm2	# AWb, AWb.255
	movsd	.LC23(%rip), %xmm0	#, tmp508
	mulsd	%xmm2, %xmm0	# AWb.255, D.8027
	movsd	.LC22(%rip), %xmm2	#, tmp509
	divsd	%xmm2, %xmm0	# tmp509, D.8027
	addsd	%xmm1, %xmm0	# D.8027, AWb.256
	movsd	%xmm0, AWb(%rip)	# AWb.256, AWb
	.loc 1 584 0
	jmp	.L95	#
.L81:
.L95:
	nop
.L54:
	.loc 1 587 0
	movq	img(%rip), %rax	# img, img.257
	movl	24(%rax), %eax	# img.257_241->type, D.8026
	testl	%eax, %eax	# D.8026
	jne	.L53	#,
	.loc 1 590 0
	movq	img(%rip), %rax	# img, img.258
	movl	72620(%rax), %edx	# img.258_243->BasicUnit, D.8026
	movq	img(%rip), %rax	# img, img.259
	movl	72608(%rax), %eax	# img.259_245->Frame_Total_Number_MB, D.8026
	cmpl	%eax, %edx	# D.8026, D.8026
	jne	.L83	#,
	.loc 1 592 0
	movq	img(%rip), %rax	# img, img.260
	movl	72564(%rax), %eax	# img.260_247->NumberofCodedPFrame, D.8026
	testl	%eax, %eax	# D.8026
	jle	.L85	#,
	.loc 1 594 0
	movl	R(%rip), %eax	# R, R.261
	cvtsi2sd	%eax, %xmm0	# R.261, D.8027
	movsd	Wp(%rip), %xmm1	# Wp, Wp.262
	mulsd	%xmm1, %xmm0	# Wp.262, D.8027
	movl	Np(%rip), %eax	# Np, Np.263
	cvtsi2sd	%eax, %xmm1	# Np.263, D.8027
	movsd	Wp(%rip), %xmm2	# Wp, Wp.264
	mulsd	%xmm1, %xmm2	# D.8027, D.8027
	movl	Nb(%rip), %eax	# Nb, Nb.265
	cvtsi2sd	%eax, %xmm1	# Nb.265, D.8027
	movsd	Wb(%rip), %xmm3	# Wb, Wb.266
	mulsd	%xmm3, %xmm1	# Wb.266, D.8027
	addsd	%xmm2, %xmm1	# D.8027, D.8027
	divsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp510
	addsd	%xmm1, %xmm0	# tmp510, D.8027
	call	floor	#
	cvttsd2siq	%xmm0, %rax	# D.8027, T.267
	movq	%rax, T(%rip)	# T.267, T
	.loc 1 596 0
	movsd	bit_rate(%rip), %xmm0	# bit_rate, bit_rate.268
	movsd	frame_rate(%rip), %xmm1	# frame_rate, frame_rate.269
	divsd	%xmm1, %xmm0	# frame_rate.269, D.8027
	movsd	CurrentBufferFullness(%rip), %xmm1	# CurrentBufferFullness, CurrentBufferFullness.270
	movsd	TargetBufferLevel(%rip), %xmm2	# TargetBufferLevel, TargetBufferLevel.271
	subsd	%xmm2, %xmm1	# TargetBufferLevel.271, D.8027
	movsd	GAMMAP(%rip), %xmm2	# GAMMAP, GAMMAP.272
	mulsd	%xmm2, %xmm1	# GAMMAP.272, D.8027
	subsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp511
	addsd	%xmm1, %xmm0	# tmp511, D.8027
	call	floor	#
	cvttsd2siq	%xmm0, %rax	# D.8027, T1.273
	movq	%rax, T1(%rip)	# T1.273, T1
	.loc 1 597 0
	movq	T1(%rip), %rax	# T1, T1.274
	movl	$0, %edx	#, tmp512
	testq	%rax, %rax	# T1.274
	cmovs	%rdx, %rax	# T1.274,, tmp512, T1.275
	movq	%rax, T1(%rip)	# T1.275, T1
	.loc 1 598 0
	movq	T(%rip), %rax	# T, T.276
	cvtsi2sdq	%rax, %xmm0	# T.276, D.8027
	movsd	BETAP(%rip), %xmm1	# BETAP, BETAP.277
	mulsd	%xmm0, %xmm1	# D.8027, D.8027
	movsd	BETAP(%rip), %xmm2	# BETAP, BETAP.278
	movsd	.LC12(%rip), %xmm0	#, tmp513
	subsd	%xmm2, %xmm0	# BETAP.278, D.8027
	movapd	%xmm0, %xmm2	# D.8027, D.8027
	movq	T1(%rip), %rax	# T1, T1.279
	cvtsi2sdq	%rax, %xmm0	# T1.279, D.8027
	mulsd	%xmm2, %xmm0	# D.8027, D.8027
	addsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp514
	addsd	%xmm1, %xmm0	# tmp514, D.8027
	call	floor	#
	cvttsd2siq	%xmm0, %rax	# D.8027, T.280
	movq	%rax, T(%rip)	# T.280, T
	jmp	.L85	#
.L83:
	.loc 1 604 0
	movq	img(%rip), %rax	# img, img.281
	movl	72568(%rax), %eax	# img.281_293->NumberofGOP, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L86	#,
	.loc 1 604 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.282
	movl	72564(%rax), %eax	# img.282_295->NumberofCodedPFrame, D.8026
	testl	%eax, %eax	# D.8026
	jle	.L86	#,
	.loc 1 606 0 is_stmt 1
	movl	R(%rip), %eax	# R, R.283
	cvtsi2sd	%eax, %xmm0	# R.283, D.8027
	movsd	Wp(%rip), %xmm1	# Wp, Wp.284
	mulsd	%xmm1, %xmm0	# Wp.284, D.8027
	movl	Np(%rip), %eax	# Np, Np.285
	cvtsi2sd	%eax, %xmm1	# Np.285, D.8027
	movsd	Wp(%rip), %xmm2	# Wp, Wp.286
	mulsd	%xmm1, %xmm2	# D.8027, D.8027
	movl	Nb(%rip), %eax	# Nb, Nb.287
	cvtsi2sd	%eax, %xmm1	# Nb.287, D.8027
	movsd	Wb(%rip), %xmm3	# Wb, Wb.288
	mulsd	%xmm3, %xmm1	# Wb.288, D.8027
	addsd	%xmm2, %xmm1	# D.8027, D.8027
	divsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp515
	addsd	%xmm1, %xmm0	# tmp515, D.8027
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8027, D.8026
	cltq
	movq	%rax, T(%rip)	# T.289, T
	.loc 1 607 0
	movsd	bit_rate(%rip), %xmm0	# bit_rate, bit_rate.290
	movsd	frame_rate(%rip), %xmm1	# frame_rate, frame_rate.291
	divsd	%xmm1, %xmm0	# frame_rate.291, D.8027
	movsd	CurrentBufferFullness(%rip), %xmm1	# CurrentBufferFullness, CurrentBufferFullness.292
	movsd	TargetBufferLevel(%rip), %xmm2	# TargetBufferLevel, TargetBufferLevel.293
	subsd	%xmm2, %xmm1	# TargetBufferLevel.293, D.8027
	movsd	GAMMAP(%rip), %xmm2	# GAMMAP, GAMMAP.294
	mulsd	%xmm2, %xmm1	# GAMMAP.294, D.8027
	subsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp516
	addsd	%xmm1, %xmm0	# tmp516, D.8027
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8027, D.8026
	cltq
	movq	%rax, T1(%rip)	# T1.295, T1
	.loc 1 608 0
	movq	T1(%rip), %rax	# T1, T1.296
	movl	$0, %edx	#, tmp517
	testq	%rax, %rax	# T1.296
	cmovs	%rdx, %rax	# T1.296,, tmp517, T1.297
	movq	%rax, T1(%rip)	# T1.297, T1
	.loc 1 609 0
	movq	T(%rip), %rax	# T, T.298
	cvtsi2sdq	%rax, %xmm0	# T.298, D.8027
	movsd	BETAP(%rip), %xmm1	# BETAP, BETAP.299
	mulsd	%xmm0, %xmm1	# D.8027, D.8027
	movsd	BETAP(%rip), %xmm2	# BETAP, BETAP.300
	movsd	.LC12(%rip), %xmm0	#, tmp518
	subsd	%xmm2, %xmm0	# BETAP.300, D.8027
	movapd	%xmm0, %xmm2	# D.8027, D.8027
	movq	T1(%rip), %rax	# T1, T1.301
	cvtsi2sdq	%rax, %xmm0	# T1.301, D.8027
	mulsd	%xmm2, %xmm0	# D.8027, D.8027
	addsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp519
	addsd	%xmm1, %xmm0	# tmp519, D.8027
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8027, D.8026
	cltq
	movq	%rax, T(%rip)	# T.302, T
	jmp	.L85	#
.L86:
	.loc 1 611 0
	movq	img(%rip), %rax	# img, img.303
	movl	72568(%rax), %eax	# img.303_344->NumberofGOP, D.8026
	cmpl	$1, %eax	#, D.8026
	jle	.L85	#,
	.loc 1 613 0
	movl	R(%rip), %eax	# R, R.304
	cvtsi2sd	%eax, %xmm0	# R.304, D.8027
	movsd	Wp(%rip), %xmm1	# Wp, Wp.305
	mulsd	%xmm1, %xmm0	# Wp.305, D.8027
	movl	Np(%rip), %eax	# Np, Np.306
	cvtsi2sd	%eax, %xmm1	# Np.306, D.8027
	movsd	Wp(%rip), %xmm2	# Wp, Wp.307
	mulsd	%xmm1, %xmm2	# D.8027, D.8027
	movl	Nb(%rip), %eax	# Nb, Nb.308
	cvtsi2sd	%eax, %xmm1	# Nb.308, D.8027
	movsd	Wb(%rip), %xmm3	# Wb, Wb.309
	mulsd	%xmm3, %xmm1	# Wb.309, D.8027
	addsd	%xmm2, %xmm1	# D.8027, D.8027
	divsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp520
	addsd	%xmm1, %xmm0	# tmp520, D.8027
	call	floor	#
	cvttsd2siq	%xmm0, %rax	# D.8027, T.310
	movq	%rax, T(%rip)	# T.310, T
	.loc 1 614 0
	movsd	bit_rate(%rip), %xmm0	# bit_rate, bit_rate.311
	movsd	frame_rate(%rip), %xmm1	# frame_rate, frame_rate.312
	divsd	%xmm1, %xmm0	# frame_rate.312, D.8027
	movsd	CurrentBufferFullness(%rip), %xmm1	# CurrentBufferFullness, CurrentBufferFullness.313
	movsd	TargetBufferLevel(%rip), %xmm2	# TargetBufferLevel, TargetBufferLevel.314
	subsd	%xmm2, %xmm1	# TargetBufferLevel.314, D.8027
	movsd	GAMMAP(%rip), %xmm2	# GAMMAP, GAMMAP.315
	mulsd	%xmm2, %xmm1	# GAMMAP.315, D.8027
	subsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp521
	addsd	%xmm1, %xmm0	# tmp521, D.8027
	call	floor	#
	cvttsd2siq	%xmm0, %rax	# D.8027, T1.316
	movq	%rax, T1(%rip)	# T1.316, T1
	.loc 1 615 0
	movq	T1(%rip), %rax	# T1, T1.317
	movl	$0, %edx	#, tmp522
	testq	%rax, %rax	# T1.317
	cmovs	%rdx, %rax	# T1.317,, tmp522, T1.318
	movq	%rax, T1(%rip)	# T1.318, T1
	.loc 1 616 0
	movq	T(%rip), %rax	# T, T.319
	cvtsi2sdq	%rax, %xmm0	# T.319, D.8027
	movsd	BETAP(%rip), %xmm1	# BETAP, BETAP.320
	mulsd	%xmm0, %xmm1	# D.8027, D.8027
	movsd	BETAP(%rip), %xmm2	# BETAP, BETAP.321
	movsd	.LC12(%rip), %xmm0	#, tmp523
	subsd	%xmm2, %xmm0	# BETAP.321, D.8027
	movapd	%xmm0, %xmm2	# D.8027, D.8027
	movq	T1(%rip), %rax	# T1, T1.322
	cvtsi2sdq	%rax, %xmm0	# T1.322, D.8027
	mulsd	%xmm2, %xmm0	# D.8027, D.8027
	addsd	%xmm1, %xmm0	# D.8027, D.8027
	movsd	.LC11(%rip), %xmm1	#, tmp524
	addsd	%xmm1, %xmm0	# tmp524, D.8027
	call	floor	#
	cvttsd2siq	%xmm0, %rax	# D.8027, T.323
	movq	%rax, T(%rip)	# T.323, T
.L85:
	.loc 1 622 0
	movq	input(%rip), %rax	# input, input.324
	movl	1236(%rax), %eax	# input.324_390->successive_Bframe, D.8026
	cvtsi2sd	%eax, %xmm0	# D.8026, D.8027
	xorpd	%xmm1, %xmm1	# tmp525
	mulsd	%xmm1, %xmm0	# tmp525, D.8027
	movsd	.LC12(%rip), %xmm1	#, tmp526
	subsd	%xmm0, %xmm1	# D.8027, D.8027
	movq	T(%rip), %rax	# T, T.325
	cvtsi2sdq	%rax, %xmm0	# T.325, D.8027
	mulsd	%xmm1, %xmm0	# D.8027, D.8027
	cvttsd2siq	%xmm0, %rax	# D.8027, T.326
	movq	%rax, T(%rip)	# T.326, T
	.loc 1 624 0
	movq	T(%rip), %rdx	# T, T.327
	movq	LowerBound(%rip), %rax	# LowerBound, LowerBound.328
	cmpq	%rax, %rdx	# LowerBound.328, T.327
	cmovge	%rdx, %rax	# T.327,, T.329
	movq	%rax, T(%rip)	# T.329, T
	.loc 1 625 0
	movq	UpperBound2(%rip), %rdx	# UpperBound2, UpperBound2.330
	movq	T(%rip), %rax	# T, T.331
	cmpq	%rax, %rdx	# T.331, UpperBound2.330
	cmovle	%rdx, %rax	# UpperBound2.330,, T.332
	movq	%rax, T(%rip)	# T.332, T
	.loc 1 627 0
	cmpl	$0, -40(%rbp)	#, topfield
	jne	.L87	#,
	.loc 1 627 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, fieldpic
	je	.L53	#,
	movq	input(%rip), %rax	# input, input.333
	movl	2880(%rax), %eax	# input.333_405->PicInterlace, D.8026
	cmpl	$2, %eax	#, D.8026
	je	.L87	#,
	.loc 1 628 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.334
	movl	2884(%rax), %eax	# input.334_407->MbInterlace, D.8026
	testl	%eax, %eax	# D.8026
	je	.L53	#,
.L87:
	.loc 1 629 0
	movq	T(%rip), %rax	# T, T.335
	movl	%eax, T_field(%rip)	# T_field.336, T_field
.L53:
	.loc 1 633 0
	cmpl	$0, -36(%rbp)	#, fieldpic
	jne	.L88	#,
	.loc 1 633 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, topfield
	je	.L89	#,
.L88:
	.loc 1 636 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.337
	movl	$0, 72524(%rax)	#, img.337_411->NumberofHeaderBits
	.loc 1 637 0
	movq	img(%rip), %rax	# img, img.338
	movl	$0, 72528(%rax)	#, img.338_412->NumberofTextureBits
	.loc 1 640 0
	movq	img(%rip), %rax	# img, img.339
	movl	72620(%rax), %edx	# img.339_413->BasicUnit, D.8026
	movq	img(%rip), %rax	# img, img.340
	movl	72608(%rax), %eax	# img.340_415->Frame_Total_Number_MB, D.8026
	cmpl	%eax, %edx	# D.8026, D.8026
	jge	.L89	#,
	.loc 1 642 0
	movl	$0, TotalFrameQP(%rip)	#, TotalFrameQP
	.loc 1 643 0
	movq	img(%rip), %rax	# img, img.341
	movl	$0, 72532(%rax)	#, img.341_417->NumberofBasicUnitHeaderBits
	.loc 1 644 0
	movq	img(%rip), %rax	# img, img.342
	movl	$0, 72536(%rax)	#, img.342_418->NumberofBasicUnitTextureBits
	.loc 1 645 0
	movq	img(%rip), %rdx	# img, img.343
	movl	$0, %eax	#, tmp527
	movq	%rax, 72544(%rdx)	# tmp527, img.343_419->TotalMADBasicUnit
	.loc 1 646 0
	movq	img(%rip), %rax	# img, img.344
	movl	72600(%rax), %eax	# img.344_420->FieldControl, D.8026
	testl	%eax, %eax	# D.8026
	jne	.L90	#,
	.loc 1 647 0
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.345
	movl	%eax, NumberofBasicUnit(%rip)	# TotalNumberofBasicUnit.345, NumberofBasicUnit
	jmp	.L89	#
.L90:
	.loc 1 649 0
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.346
	movl	%eax, %edx	# TotalNumberofBasicUnit.346, tmp528
	shrl	$31, %edx	#, tmp528
	addl	%edx, %eax	# tmp528, tmp529
	sarl	%eax	# tmp530
	movl	%eax, NumberofBasicUnit(%rip)	# NumberofBasicUnit.347, NumberofBasicUnit
.L89:
	.loc 1 653 0
	movq	img(%rip), %rax	# img, img.348
	movl	24(%rax), %eax	# img.348_425->type, D.8026
	testl	%eax, %eax	# D.8026
	jne	.L48	#,
	.loc 1 653 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.349
	movl	72620(%rax), %edx	# img.349_427->BasicUnit, D.8026
	movq	img(%rip), %rax	# img, img.350
	movl	72608(%rax), %eax	# img.350_429->Frame_Total_Number_MB, D.8026
	cmpl	%eax, %edx	# D.8026, D.8026
	jge	.L48	#,
	.loc 1 654 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.351
	movl	72600(%rax), %eax	# img.351_431->FieldControl, D.8026
	cmpl	$1, %eax	#, D.8026
	jne	.L48	#,
	.loc 1 657 0
	cmpl	$0, -40(%rbp)	#, topfield
	je	.L92	#,
	.loc 1 659 0
	movl	$0, bits_topfield(%rip)	#, bits_topfield
	.loc 1 660 0
	movl	T_field(%rip), %eax	# T_field, T_field.352
	cvtsi2sd	%eax, %xmm0	# T_field.352, D.8027
	movsd	.LC15(%rip), %xmm1	#, tmp531
	mulsd	%xmm1, %xmm0	# tmp531, D.8027
	cvttsd2siq	%xmm0, %rax	# D.8027, T.353
	movq	%rax, T(%rip)	# T.353, T
	jmp	.L48	#
.L92:
	.loc 1 665 0
	movl	T_field(%rip), %edx	# T_field, T_field.354
	movl	bits_topfield(%rip), %eax	# bits_topfield, bits_topfield.355
	subl	%eax, %edx	# bits_topfield.355, D.8026
	movl	%edx, %eax	# D.8026, D.8026
	cltq
	movq	%rax, T(%rip)	# T.356, T
	.loc 1 666 0
	movq	img(%rip), %rax	# img, img.357
	movl	$0, 72532(%rax)	#, img.357_441->NumberofBasicUnitHeaderBits
	.loc 1 667 0
	movq	img(%rip), %rax	# img, img.358
	movl	$0, 72536(%rax)	#, img.358_442->NumberofBasicUnitTextureBits
	.loc 1 668 0
	movq	img(%rip), %rdx	# img, img.359
	movl	$0, %eax	#, tmp532
	movq	%rax, 72544(%rdx)	# tmp532, img.359_443->TotalMADBasicUnit
	.loc 1 669 0
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.360
	movl	%eax, %edx	# TotalNumberofBasicUnit.360, tmp533
	shrl	$31, %edx	#, tmp533
	addl	%edx, %eax	# tmp533, tmp534
	sarl	%eax	# tmp535
	movl	%eax, NumberofBasicUnit(%rip)	# NumberofBasicUnit.361, NumberofBasicUnit
.L48:
	.loc 1 672 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	rc_init_pict, .-rc_init_pict
	.globl	calc_MAD
	.type	calc_MAD, @function
calc_MAD:
.LFB7:
	.loc 1 686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 688 0
	movl	$0, -12(%rbp)	#, s
	.loc 1 691 0
	movl	$0, -20(%rbp)	#, k
	jmp	.L97	#
.L100:
	.loc 1 692 0
	movl	$0, -16(%rbp)	#, l
	jmp	.L98	#
.L99:
	.loc 1 693 0 discriminator 2
	movl	-16(%rbp), %eax	# l, tmp65
	cltq
	movl	-20(%rbp), %edx	# k, tmp67
	movslq	%edx, %rdx	# tmp67, tmp66
	salq	$4, %rdx	#, tmp68
	addq	%rdx, %rax	# tmp68, tmp69
	movl	diffy(,%rax,4), %eax	# diffy, D.8032
	cltd
	xorl	%edx, %eax	# tmp70, D.8032
	subl	%edx, %eax	# tmp70, D.8032
	addl	%eax, -12(%rbp)	# D.8032, s
	.loc 1 692 0 discriminator 2
	addl	$1, -16(%rbp)	#, l
.L98:
	.loc 1 692 0 is_stmt 0 discriminator 1
	cmpl	$15, -16(%rbp)	#, l
	jle	.L99	#,
	.loc 1 691 0 is_stmt 1
	addl	$1, -20(%rbp)	#, k
.L97:
	.loc 1 691 0 is_stmt 0 discriminator 1
	cmpl	$15, -20(%rbp)	#, k
	jle	.L100	#,
	.loc 1 695 0 is_stmt 1
	cvtsi2sd	-12(%rbp), %xmm0	# s, D.8033
	movsd	.LC24(%rip), %xmm1	#, tmp72
	divsd	%xmm1, %xmm0	# tmp72, tmp71
	movsd	%xmm0, -8(%rbp)	# tmp71, MAD
	.loc 1 696 0
	movq	-8(%rbp), %rax	# MAD, D.8033
	.loc 1 697 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	calc_MAD, .-calc_MAD
	.globl	rc_update_pict
	.type	rc_update_pict, @function
rc_update_pict:
.LFB8:
	.loc 1 711 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# nbits, nbits
	.loc 1 712 0
	movl	R(%rip), %eax	# R, R.362
	subl	-4(%rbp), %eax	# nbits, R.363
	movl	%eax, R(%rip)	# R.363, R
	.loc 1 713 0
	cvtsi2sd	-4(%rbp), %xmm0	# nbits, D.8035
	movsd	bit_rate(%rip), %xmm1	# bit_rate, bit_rate.364
	movsd	frame_rate(%rip), %xmm2	# frame_rate, frame_rate.365
	divsd	%xmm2, %xmm1	# frame_rate.365, D.8035
	subsd	%xmm1, %xmm0	# D.8035, D.8035
	movsd	CurrentBufferFullness(%rip), %xmm1	# CurrentBufferFullness, CurrentBufferFullness.366
	addsd	%xmm1, %xmm0	# CurrentBufferFullness.366, CurrentBufferFullness.367
	movsd	%xmm0, CurrentBufferFullness(%rip)	# CurrentBufferFullness.367, CurrentBufferFullness
	.loc 1 716 0
	movsd	bit_rate(%rip), %xmm0	# bit_rate, bit_rate.368
	movsd	frame_rate(%rip), %xmm1	# frame_rate, frame_rate.369
	divsd	%xmm1, %xmm0	# frame_rate.369, D.8035
	cvtsi2sd	-4(%rbp), %xmm1	# nbits, D.8035
	subsd	%xmm1, %xmm0	# D.8035, D.8035
	cvttsd2siq	%xmm0, %rdx	# D.8035, D.8036
	movq	LowerBound(%rip), %rax	# LowerBound, LowerBound.370
	addq	%rdx, %rax	# D.8036, LowerBound.371
	movq	%rax, LowerBound(%rip)	# LowerBound.371, LowerBound
	.loc 1 717 0
	movsd	bit_rate(%rip), %xmm0	# bit_rate, bit_rate.372
	movsd	frame_rate(%rip), %xmm1	# frame_rate, frame_rate.373
	divsd	%xmm1, %xmm0	# frame_rate.373, D.8035
	cvtsi2sd	-4(%rbp), %xmm1	# nbits, D.8035
	subsd	%xmm1, %xmm0	# D.8035, D.8035
	cvttsd2siq	%xmm0, %rdx	# D.8035, D.8036
	movq	UpperBound1(%rip), %rax	# UpperBound1, UpperBound1.374
	addq	%rdx, %rax	# D.8036, UpperBound1.375
	movq	%rax, UpperBound1(%rip)	# UpperBound1.375, UpperBound1
	.loc 1 718 0
	movq	UpperBound1(%rip), %rax	# UpperBound1, UpperBound1.376
	cvtsi2sdq	%rax, %xmm0	# UpperBound1.376, D.8035
	movsd	.LC10(%rip), %xmm1	#, OMEGA.377
	mulsd	%xmm1, %xmm0	# OMEGA.377, D.8035
	cvttsd2siq	%xmm0, %rax	# D.8035, UpperBound2.378
	movq	%rax, UpperBound2(%rip)	# UpperBound2.378, UpperBound2
	.loc 1 720 0
	nop
	.loc 1 721 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	rc_update_pict, .-rc_update_pict
	.globl	rc_update_pict_frame
	.type	rc_update_pict_frame, @function
rc_update_pict_frame:
.LFB9:
	.loc 1 735 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# nbits, nbits
	.loc 1 739 0
	movl	$0, -8(%rbp)	#, X
	.loc 1 742 0
	movq	img(%rip), %rax	# img, img.379
	movl	72620(%rax), %edx	# img.379_4->BasicUnit, D.8037
	movq	img(%rip), %rax	# img, img.380
	movl	72608(%rax), %eax	# img.380_6->Frame_Total_Number_MB, D.8037
	cmpl	%eax, %edx	# D.8037, D.8037
	jne	.L105	#,
	.loc 1 743 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.381
	imull	-20(%rbp), %eax	# nbits, D.8037
	cvtsi2sd	%eax, %xmm0	# D.8037, D.8038
	movsd	.LC11(%rip), %xmm1	#, tmp125
	addsd	%xmm1, %xmm0	# tmp125, D.8038
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8038, tmp126
	movl	%eax, -8(%rbp)	# tmp126, X
	jmp	.L106	#
.L105:
	.loc 1 747 0
	movq	img(%rip), %rax	# img, img.382
	movl	24(%rax), %eax	# img.382_15->type, D.8037
	testl	%eax, %eax	# D.8037
	jne	.L107	#,
	.loc 1 749 0
	movq	img(%rip), %rax	# img, img.383
	movl	72612(%rax), %eax	# img.383_17->IFLAG, D.8037
	testl	%eax, %eax	# D.8037
	jne	.L108	#,
	.loc 1 749 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.384
	movl	72600(%rax), %eax	# img.384_19->FieldControl, D.8037
	cmpl	$1, %eax	#, D.8037
	je	.L109	#,
.L108:
	.loc 1 750 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.385
	movl	72600(%rax), %eax	# img.385_21->FieldControl, D.8037
	testl	%eax, %eax	# D.8037
	jne	.L106	#,
.L109:
	.loc 1 752 0
	movl	TotalFrameQP(%rip), %eax	# TotalFrameQP, TotalFrameQP.386
	movl	TotalNumberofBasicUnit(%rip), %ecx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.387
	cltd
	idivl	%ecx	# TotalNumberofBasicUnit.387
	movl	%eax, -4(%rbp)	# tmp127, Avem_Qc
	.loc 1 753 0
	movl	-20(%rbp), %eax	# nbits, tmp129
	imull	-4(%rbp), %eax	# Avem_Qc, D.8037
	cvtsi2sd	%eax, %xmm0	# D.8037, D.8038
	movsd	.LC11(%rip), %xmm1	#, tmp130
	addsd	%xmm1, %xmm0	# tmp130, D.8038
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8038, tmp131
	movl	%eax, -8(%rbp)	# tmp131, X
	jmp	.L106	#
.L107:
	.loc 1 756 0
	movq	img(%rip), %rax	# img, img.388
	movl	24(%rax), %eax	# img.388_31->type, D.8037
	cmpl	$1, %eax	#, D.8037
	jne	.L106	#,
	.loc 1 757 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.389
	imull	-20(%rbp), %eax	# nbits, D.8037
	cvtsi2sd	%eax, %xmm0	# D.8037, D.8038
	movsd	.LC11(%rip), %xmm1	#, tmp132
	addsd	%xmm1, %xmm0	# tmp132, D.8038
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.8038, tmp133
	movl	%eax, -8(%rbp)	# tmp133, X
.L106:
	.loc 1 761 0
	movq	img(%rip), %rax	# img, img.390
	movl	24(%rax), %eax	# img.390_39->type, D.8037
	testl	%eax, %eax	# D.8037
	je	.L112	#,
	cmpl	$1, %eax	#, D.8037
	je	.L113	#,
	jmp	.L104	#
.L112:
	.loc 1 765 0
	movq	img(%rip), %rax	# img, img.391
	movl	72612(%rax), %eax	# img.391_41->IFLAG, D.8037
	testl	%eax, %eax	# D.8037
	jne	.L114	#,
	.loc 1 765 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.392
	movl	72600(%rax), %eax	# img.392_43->FieldControl, D.8037
	cmpl	$1, %eax	#, D.8037
	je	.L115	#,
.L114:
	.loc 1 766 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.393
	movl	72600(%rax), %eax	# img.393_45->FieldControl, D.8037
	testl	%eax, %eax	# D.8037
	jne	.L116	#,
.L115:
	.loc 1 768 0
	movl	-8(%rbp), %eax	# X, tmp134
	movl	%eax, Xp(%rip)	# tmp134, Xp
	.loc 1 769 0
	movl	Np(%rip), %eax	# Np, Np.394
	subl	$1, %eax	#, Np.395
	movl	%eax, Np(%rip)	# Np.395, Np
	.loc 1 770 0
	movl	Xp(%rip), %eax	# Xp, Xp.396
	cvtsi2sd	%eax, %xmm0	# Xp.396, Wp.397
	movsd	%xmm0, Wp(%rip)	# Wp.397, Wp
	.loc 1 771 0
	movq	img(%rip), %rax	# img, img.398
	movl	72524(%rax), %eax	# img.398_56->NumberofHeaderBits, Pm_Hp.399
	movl	%eax, Pm_Hp(%rip)	# Pm_Hp.399, Pm_Hp
	.loc 1 772 0
	movq	img(%rip), %rax	# img, img.400
	movl	72564(%rax), %edx	# img.400_58->NumberofCodedPFrame, D.8037
	addl	$1, %edx	#, D.8037
	movl	%edx, 72564(%rax)	# D.8037, img.400_58->NumberofCodedPFrame
	.loc 1 773 0
	movq	img(%rip), %rax	# img, img.401
	movl	72576(%rax), %edx	# img.401_61->NumberofPPicture, D.8037
	addl	$1, %edx	#, D.8037
	movl	%edx, 72576(%rax)	# D.8037, img.401_61->NumberofPPicture
	jmp	.L117	#
.L116:
	.loc 1 775 0
	movq	img(%rip), %rax	# img, img.402
	movl	72612(%rax), %eax	# img.402_47->IFLAG, D.8037
	testl	%eax, %eax	# D.8037
	je	.L117	#,
	.loc 1 775 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.403
	movl	72600(%rax), %eax	# img.403_49->FieldControl, D.8037
	cmpl	$1, %eax	#, D.8037
	jne	.L117	#,
	.loc 1 776 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.404
	movl	$0, 72612(%rax)	#, img.404_51->IFLAG
	.loc 1 777 0
	jmp	.L104	#
.L117:
	jmp	.L104	#
.L113:
	.loc 1 779 0
	movl	-8(%rbp), %eax	# X, tmp135
	movl	%eax, Xb(%rip)	# tmp135, Xb
	.loc 1 780 0
	movl	Nb(%rip), %eax	# Nb, Nb.405
	subl	$1, %eax	#, Nb.406
	movl	%eax, Nb(%rip)	# Nb.406, Nb
	.loc 1 781 0
	movl	Xb(%rip), %eax	# Xb, Xb.407
	cvtsi2sd	%eax, %xmm0	# Xb.407, D.8038
	movsd	.LC25(%rip), %xmm1	#, THETA.408
	divsd	%xmm1, %xmm0	# THETA.408, Wb.409
	movsd	%xmm0, Wb(%rip)	# Wb.409, Wb
	.loc 1 783 0
	movq	img(%rip), %rax	# img, img.410
	movl	72560(%rax), %edx	# img.410_70->NumberofCodedBFrame, D.8037
	addl	$1, %edx	#, D.8037
	movl	%edx, 72560(%rax)	# D.8037, img.410_70->NumberofCodedBFrame
	.loc 1 784 0
	movl	NumberofBFrames(%rip), %eax	# NumberofBFrames, NumberofBFrames.411
	addl	$1, %eax	#, NumberofBFrames.412
	movl	%eax, NumberofBFrames(%rip)	# NumberofBFrames.412, NumberofBFrames
	.loc 1 786 0
	nop
.L104:
	.loc 1 788 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	rc_update_pict_frame, .-rc_update_pict_frame
	.globl	setbitscount
	.type	setbitscount, @function
setbitscount:
.LFB10:
	.loc 1 801 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# nbits, nbits
	.loc 1 802 0
	movl	-4(%rbp), %eax	# nbits, tmp59
	movl	%eax, bits_topfield(%rip)	# tmp59, bits_topfield
	.loc 1 803 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	setbitscount, .-setbitscount
	.globl	updateQuantizationParameter
	.type	updateQuantizationParameter, @function
updateQuantizationParameter:
.LFB11:
	.loc 1 814 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# topfield, topfield
	.loc 1 824 0
	movq	img(%rip), %rax	# img, img.413
	movl	72620(%rax), %edx	# img.413_9->BasicUnit, D.8039
	movq	img(%rip), %rax	# img, img.414
	movl	72608(%rax), %eax	# img.414_11->Frame_Total_Number_MB, D.8039
	cmpl	%eax, %edx	# D.8039, D.8039
	jne	.L120	#,
	.loc 1 830 0
	cmpl	$0, -52(%rbp)	#, topfield
	jne	.L121	#,
	.loc 1 830 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.415
	movl	72600(%rax), %eax	# img.415_14->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L122	#,
.L121:
	.loc 1 832 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.416
	movl	24(%rax), %eax	# img.416_33->type, D.8039
	cmpl	$2, %eax	#, D.8039
	jne	.L123	#,
	.loc 1 834 0
	movl	MyInitialQp(%rip), %eax	# MyInitialQp, MyInitialQp.417
	movl	%eax, m_Qc(%rip)	# MyInitialQp.417, m_Qc
	.loc 1 835 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L123:
	.loc 1 837 0
	movq	img(%rip), %rax	# img, img.418
	movl	24(%rax), %eax	# img.418_37->type, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L125	#,
	.loc 1 839 0
	movq	input(%rip), %rax	# input, input.419
	movl	1236(%rax), %eax	# input.419_39->successive_Bframe, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L126	#,
	.loc 1 841 0
	movq	input(%rip), %rax	# input, input.420
	movl	2880(%rax), %eax	# input.420_41->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L127	#,
	.loc 1 842 0
	movq	input(%rip), %rax	# input, input.421
	movl	2884(%rax), %eax	# input.421_43->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L128	#,
.L127:
	.loc 1 844 0
	movq	img(%rip), %rax	# img, img.422
	movl	72600(%rax), %eax	# img.422_45->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L128	#,
	.loc 1 847 0
	movq	img(%rip), %rax	# img, img.423
	movl	72604(%rax), %eax	# img.423_47->FieldFrame, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L129	#,
	.loc 1 849 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.424
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.424, PreviousQp1
	.loc 1 850 0
	movl	FrameQPBuffer(%rip), %eax	# FrameQPBuffer, FrameQPBuffer.425
	movl	%eax, PreviousQp2(%rip)	# FrameQPBuffer.425, PreviousQp2
	jmp	.L128	#
.L129:
	.loc 1 855 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.426
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.426, PreviousQp1
	.loc 1 856 0
	movl	FieldQPBuffer(%rip), %eax	# FieldQPBuffer, FieldQPBuffer.427
	movl	%eax, PreviousQp2(%rip)	# FieldQPBuffer.427, PreviousQp2
.L128:
	.loc 1 861 0
	movl	PreviousQp1(%rip), %edx	# PreviousQp1, PreviousQp1.428
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.429
	cmpl	%eax, %edx	# PreviousQp2.429, PreviousQp1.428
	jne	.L130	#,
	.loc 1 862 0
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.430
	addl	$2, %eax	#, m_Qc.431
	movl	%eax, m_Qc(%rip)	# m_Qc.431, m_Qc
	jmp	.L131	#
.L130:
	.loc 1 864 0
	movl	PreviousQp1(%rip), %edx	# PreviousQp1, PreviousQp1.432
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.433
	addl	%edx, %eax	# PreviousQp1.432, D.8039
	movl	%eax, %edx	# D.8039, tmp856
	shrl	$31, %edx	#, tmp856
	addl	%edx, %eax	# tmp856, tmp857
	sarl	%eax	# tmp858
	addl	$1, %eax	#, m_Qc.434
	movl	%eax, m_Qc(%rip)	# m_Qc.434, m_Qc
.L131:
	.loc 1 865 0 discriminator 1
	movl	RC_MAX_QUANT(%rip), %edx	# RC_MAX_QUANT, RC_MAX_QUANT.435
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.436
	cmpl	%eax, %edx	# m_Qc.436, RC_MAX_QUANT.435
	cmovle	%edx, %eax	# RC_MAX_QUANT.435,, m_Qc.437
	movl	%eax, m_Qc(%rip)	# m_Qc.437, m_Qc
	.loc 1 866 0 discriminator 1
	movl	RC_MIN_QUANT(%rip), %edx	# RC_MIN_QUANT, RC_MIN_QUANT.438
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.439
	cmpl	%eax, %edx	# m_Qc.439, RC_MIN_QUANT.438
	cmovge	%edx, %eax	# RC_MIN_QUANT.438,, m_Qc.440
	movl	%eax, m_Qc(%rip)	# m_Qc.440, m_Qc
	jmp	.L132	#
.L126:
	.loc 1 870 0
	movl	NumberofBFrames(%rip), %eax	# NumberofBFrames, NumberofBFrames.441
	leal	1(%rax), %edx	#, D.8039
	movq	input(%rip), %rax	# input, input.442
	movl	1236(%rax), %ecx	# input.442_70->successive_Bframe, D.8039
	movl	%edx, %eax	# D.8039, tmp860
	cltd
	idivl	%ecx	# D.8039
	movl	%edx, -48(%rbp)	# tmp859, BFrameNumber
	.loc 1 871 0
	cmpl	$0, -48(%rbp)	#, BFrameNumber
	jne	.L133	#,
	.loc 1 872 0
	movq	input(%rip), %rax	# input, input.443
	movl	1236(%rax), %eax	# input.443_73->successive_Bframe, tmp861
	movl	%eax, -48(%rbp)	# tmp861, BFrameNumber
.L133:
	.loc 1 875 0
	cmpl	$1, -48(%rbp)	#, BFrameNumber
	jne	.L134	#,
	.loc 1 877 0
	movq	input(%rip), %rax	# input, input.444
	movl	2880(%rax), %eax	# input.444_75->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L135	#,
	.loc 1 878 0
	movq	input(%rip), %rax	# input, input.445
	movl	2884(%rax), %eax	# input.445_77->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L134	#,
.L135:
	.loc 1 880 0
	movq	img(%rip), %rax	# img, img.446
	movl	72600(%rax), %eax	# img.446_79->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L134	#,
	.loc 1 883 0
	movq	img(%rip), %rax	# img, img.447
	movl	72604(%rax), %eax	# img.447_81->FieldFrame, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L136	#,
	.loc 1 885 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.448
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.448, PreviousQp1
	.loc 1 886 0
	movl	FrameQPBuffer(%rip), %eax	# FrameQPBuffer, FrameQPBuffer.449
	movl	%eax, PreviousQp2(%rip)	# FrameQPBuffer.449, PreviousQp2
	jmp	.L134	#
.L136:
	.loc 1 891 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.450
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.450, PreviousQp1
	.loc 1 892 0
	movl	FieldQPBuffer(%rip), %eax	# FieldQPBuffer, FieldQPBuffer.451
	movl	%eax, PreviousQp2(%rip)	# FieldQPBuffer.451, PreviousQp2
.L134:
	.loc 1 898 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.452
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.453
	movl	%edx, %ecx	# PreviousQp2.452, D.8039
	subl	%eax, %ecx	# PreviousQp1.453, D.8039
	movq	input(%rip), %rax	# input, input.454
	movl	1236(%rax), %edx	# input.454_90->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp862
	subl	%edx, %eax	# D.8039, tmp862
	addl	%eax, %eax	# tmp863
	subl	$3, %eax	#, D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	jg	.L137	#,
	.loc 1 899 0
	movl	$-3, -44(%rbp)	#, StepSize
	jmp	.L138	#
.L137:
	.loc 1 900 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.455
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.456
	movl	%edx, %ecx	# PreviousQp2.455, D.8039
	subl	%eax, %ecx	# PreviousQp1.456, D.8039
	movq	input(%rip), %rax	# input, input.457
	movl	1236(%rax), %edx	# input.457_98->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp864
	subl	%edx, %eax	# D.8039, tmp864
	addl	%eax, %eax	# tmp865
	subl	$2, %eax	#, D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	jne	.L139	#,
	.loc 1 901 0
	movl	$-2, -44(%rbp)	#, StepSize
	jmp	.L138	#
.L139:
	.loc 1 902 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.458
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.459
	movl	%edx, %ecx	# PreviousQp2.458, D.8039
	subl	%eax, %ecx	# PreviousQp1.459, D.8039
	movq	input(%rip), %rax	# input, input.460
	movl	1236(%rax), %edx	# input.460_106->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp866
	subl	%edx, %eax	# D.8039, tmp866
	addl	%eax, %eax	# tmp867
	subl	$1, %eax	#, D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	jne	.L140	#,
	.loc 1 903 0
	movl	$-1, -44(%rbp)	#, StepSize
	jmp	.L138	#
.L140:
	.loc 1 904 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.461
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.462
	movl	%edx, %ecx	# PreviousQp2.461, D.8039
	subl	%eax, %ecx	# PreviousQp1.462, D.8039
	movq	input(%rip), %rax	# input, input.463
	movl	1236(%rax), %edx	# input.463_114->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp868
	subl	%edx, %eax	# D.8039, tmp868
	addl	%eax, %eax	# tmp869
	cmpl	%eax, %ecx	# D.8039, D.8039
	jne	.L141	#,
	.loc 1 905 0
	movl	$0, -44(%rbp)	#, StepSize
	jmp	.L138	#
.L141:
	.loc 1 906 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.464
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.465
	movl	%edx, %ecx	# PreviousQp2.464, D.8039
	subl	%eax, %ecx	# PreviousQp1.465, D.8039
	movq	input(%rip), %rax	# input, input.466
	movl	1236(%rax), %edx	# input.466_121->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp870
	subl	%edx, %eax	# D.8039, tmp870
	addl	%eax, %eax	# tmp871
	addl	$1, %eax	#, D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	jne	.L142	#,
	.loc 1 907 0
	movl	$1, -44(%rbp)	#, StepSize
	jmp	.L138	#
.L142:
	.loc 1 909 0
	movl	$2, -44(%rbp)	#, StepSize
.L138:
	.loc 1 911 0
	movl	PreviousQp1(%rip), %edx	# PreviousQp1, PreviousQp1.467
	movl	-44(%rbp), %eax	# StepSize, tmp872
	addl	%edx, %eax	# PreviousQp1.467, m_Qc.468
	movl	%eax, m_Qc(%rip)	# m_Qc.468, m_Qc
	.loc 1 912 0
	movl	$1, %eax	#, tmp873
	subl	-48(%rbp), %eax	# BFrameNumber, D.8039
	leal	(%rax,%rax), %ecx	#, D.8039
	movl	-48(%rbp), %eax	# BFrameNumber, tmp874
	leal	-1(%rax), %esi	#, D.8039
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.469
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.470
	subl	%eax, %edx	# PreviousQp1.470, D.8039
	movl	%edx, %eax	# D.8039, D.8039
	imull	%esi, %eax	# D.8039, D.8039
	movq	input(%rip), %rdx	# input, input.471
	movl	1236(%rdx), %edx	# input.471_136->successive_Bframe, D.8039
	leal	-1(%rdx), %ebx	#, D.8039
	cltd
	idivl	%ebx	# D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	cmovge	%ecx, %eax	# D.8039,, D.8039
	movl	-48(%rbp), %edx	# BFrameNumber, tmp877
	subl	$1, %edx	#, D.8039
	addl	%edx, %edx	# D.8039
	cmpl	%edx, %eax	# D.8039, D.8039
	cmovle	%eax, %edx	# D.8039,, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.472
	addl	%edx, %eax	# D.8039, m_Qc.473
	movl	%eax, m_Qc(%rip)	# m_Qc.473, m_Qc
	.loc 1 914 0
	movl	RC_MAX_QUANT(%rip), %edx	# RC_MAX_QUANT, RC_MAX_QUANT.474
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.475
	cmpl	%eax, %edx	# m_Qc.475, RC_MAX_QUANT.474
	cmovle	%edx, %eax	# RC_MAX_QUANT.474,, m_Qc.476
	movl	%eax, m_Qc(%rip)	# m_Qc.476, m_Qc
	.loc 1 915 0
	movl	RC_MIN_QUANT(%rip), %edx	# RC_MIN_QUANT, RC_MIN_QUANT.477
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.478
	cmpl	%eax, %edx	# m_Qc.478, RC_MIN_QUANT.477
	cmovge	%edx, %eax	# RC_MIN_QUANT.477,, m_Qc.479
	movl	%eax, m_Qc(%rip)	# m_Qc.479, m_Qc
.L132:
	.loc 1 917 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L125:
	.loc 1 919 0
	movq	img(%rip), %rax	# img, img.480
	movl	24(%rax), %eax	# img.480_153->type, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L143	#,
	.loc 1 919 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.481
	movl	72576(%rax), %eax	# img.481_155->NumberofPPicture, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L143	#,
	.loc 1 921 0 is_stmt 1
	movl	MyInitialQp(%rip), %eax	# MyInitialQp, MyInitialQp.482
	movl	%eax, m_Qc(%rip)	# MyInitialQp.482, m_Qc
	.loc 1 923 0
	movq	img(%rip), %rax	# img, img.483
	movl	72600(%rax), %eax	# img.483_158->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L144	#,
	.loc 1 925 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.484
	movl	1148(%rax), %eax	# active_sps.484_160->frame_mbs_only_flag, D.8040
	testl	%eax, %eax	# D.8040
	je	.L145	#,
	.loc 1 927 0
	movq	img(%rip), %rax	# img, img.485
	movq	img(%rip), %rdx	# img, img.486
	movl	72572(%rdx), %ecx	# img.486_163->TotalQpforPPicture, D.8039
	movl	m_Qc(%rip), %edx	# m_Qc, m_Qc.487
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.485_162->TotalQpforPPicture
	.loc 1 928 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.488
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.488, PreviousQp1
	.loc 1 929 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.489
	movl	%eax, PreviousQp2(%rip)	# m_Qc.489, PreviousQp2
	.loc 1 930 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.490
	movl	%eax, Pm_Qp(%rip)	# m_Qc.490, Pm_Qp
	jmp	.L144	#
.L145:
	.loc 1 934 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.491
	movl	%eax, FrameQPBuffer(%rip)	# m_Qc.491, FrameQPBuffer
.L144:
	.loc 1 937 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L143:
	.loc 1 942 0
	movq	input(%rip), %rax	# input, input.492
	movl	2880(%rax), %eax	# input.492_172->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L146	#,
	.loc 1 943 0
	movq	input(%rip), %rax	# input, input.493
	movl	2884(%rax), %eax	# input.493_174->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L147	#,
.L146:
	.loc 1 944 0
	movq	img(%rip), %rax	# img, img.494
	movl	72600(%rax), %eax	# img.494_176->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L147	#,
	.loc 1 947 0
	movq	img(%rip), %rax	# img, img.495
	movl	72604(%rax), %eax	# img.495_178->FieldFrame, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L148	#,
	.loc 1 949 0
	movq	img(%rip), %rax	# img, img.496
	movq	img(%rip), %rdx	# img, img.497
	movl	72572(%rdx), %ecx	# img.497_181->TotalQpforPPicture, D.8039
	movl	FrameQPBuffer(%rip), %edx	# FrameQPBuffer, FrameQPBuffer.498
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.496_180->TotalQpforPPicture
	.loc 1 950 0
	movl	FrameQPBuffer(%rip), %eax	# FrameQPBuffer, FrameQPBuffer.499
	movl	%eax, Pm_Qp(%rip)	# FrameQPBuffer.499, Pm_Qp
	jmp	.L147	#
.L148:
	.loc 1 955 0
	movq	img(%rip), %rax	# img, img.500
	movq	img(%rip), %rdx	# img, img.501
	movl	72572(%rdx), %ecx	# img.501_187->TotalQpforPPicture, D.8039
	movl	FieldQPBuffer(%rip), %edx	# FieldQPBuffer, FieldQPBuffer.502
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.500_186->TotalQpforPPicture
	.loc 1 956 0
	movl	FieldQPBuffer(%rip), %eax	# FieldQPBuffer, FieldQPBuffer.503
	movl	%eax, Pm_Qp(%rip)	# FieldQPBuffer.503, Pm_Qp
.L147:
	.loc 1 960 0
	movq	Pm_X1(%rip), %rax	# Pm_X1, Pm_X1.504
	movq	%rax, m_X1(%rip)	# Pm_X1.504, m_X1
	.loc 1 961 0
	movq	Pm_X2(%rip), %rax	# Pm_X2, Pm_X2.505
	movq	%rax, m_X2(%rip)	# Pm_X2.505, m_X2
	.loc 1 962 0
	movl	PPreHeader(%rip), %eax	# PPreHeader, PPreHeader.506
	movl	%eax, m_Hp(%rip)	# PPreHeader.506, m_Hp
	.loc 1 963 0
	movl	Pm_Qp(%rip), %eax	# Pm_Qp, Pm_Qp.507
	movl	%eax, m_Qp(%rip)	# Pm_Qp.507, m_Qp
	.loc 1 964 0
	movl	PDuantQp(%rip), %eax	# PDuantQp, PDuantQp.508
	movl	%eax, DuantQp(%rip)	# PDuantQp.508, DuantQp
	.loc 1 965 0
	movq	PMADPictureC1(%rip), %rax	# PMADPictureC1, PMADPictureC1.509
	movq	%rax, MADPictureC1(%rip)	# PMADPictureC1.509, MADPictureC1
	.loc 1 966 0
	movq	PMADPictureC2(%rip), %rax	# PMADPictureC2, PMADPictureC2.510
	movq	%rax, MADPictureC2(%rip)	# PMADPictureC2.510, MADPictureC2
	.loc 1 967 0
	movq	PPictureMAD(%rip), %rax	# PPictureMAD, PreviousPictureMAD.511
	movq	%rax, PreviousPictureMAD(%rip)	# PreviousPictureMAD.511, PreviousPictureMAD
	.loc 1 970 0
	movsd	MADPictureC1(%rip), %xmm1	# MADPictureC1, MADPictureC1.512
	movsd	PreviousPictureMAD(%rip), %xmm0	# PreviousPictureMAD, PreviousPictureMAD.513
	mulsd	%xmm1, %xmm0	# MADPictureC1.512, D.8041
	movsd	MADPictureC2(%rip), %xmm1	# MADPictureC2, MADPictureC2.514
	addsd	%xmm1, %xmm0	# MADPictureC2.514, CurrentFrameMAD.515
	movsd	%xmm0, CurrentFrameMAD(%rip)	# CurrentFrameMAD.515, CurrentFrameMAD
	.loc 1 974 0
	movq	T(%rip), %rax	# T, T.516
	testq	%rax, %rax	# T.516
	jns	.L149	#,
	.loc 1 976 0
	movl	m_Qp(%rip), %edx	# m_Qp, m_Qp.517
	movl	DuantQp(%rip), %eax	# DuantQp, DuantQp.518
	addl	%edx, %eax	# m_Qp.517, m_Qc.519
	movl	%eax, m_Qc(%rip)	# m_Qc.519, m_Qc
	.loc 1 977 0
	movl	RC_MAX_QUANT(%rip), %edx	# RC_MAX_QUANT, RC_MAX_QUANT.520
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.521
	cmpl	%eax, %edx	# m_Qc.521, RC_MAX_QUANT.520
	cmovle	%edx, %eax	# RC_MAX_QUANT.520,, m_Qc.522
	movl	%eax, m_Qc(%rip)	# m_Qc.522, m_Qc
	jmp	.L150	#
.L149:
	.loc 1 981 0
	movq	T(%rip), %rax	# T, T.523
	movl	%eax, %edx	# T.523, D.8042
	movl	m_Hp(%rip), %eax	# m_Hp, m_Hp.524
	subl	%eax, %edx	# m_Hp.525, D.8042
	movl	%edx, %eax	# D.8042, D.8042
	movl	%eax, -32(%rbp)	# D.8042, m_Bits
	.loc 1 982 0
	movsd	bit_rate(%rip), %xmm1	# bit_rate, bit_rate.526
	movsd	MINVALUE(%rip), %xmm2	# MINVALUE, MINVALUE.527
	movsd	frame_rate(%rip), %xmm0	# frame_rate, frame_rate.528
	mulsd	%xmm2, %xmm0	# MINVALUE.527, D.8041
	divsd	%xmm0, %xmm1	# D.8041, D.8041
	movapd	%xmm1, %xmm0	# D.8041, D.8041
	cvttsd2si	%xmm0, %edx	# D.8041, D.8039
	movl	-32(%rbp), %eax	# m_Bits, tmp879
	cmpl	%eax, %edx	# tmp879, D.8039
	cmovge	%edx, %eax	# D.8039,, tmp878
	movl	%eax, -32(%rbp)	# tmp878, m_Bits
	.loc 1 983 0
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.529
	movsd	m_X1(%rip), %xmm0	# m_X1, m_X1.530
	mulsd	%xmm1, %xmm0	# CurrentFrameMAD.529, D.8041
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.531
	mulsd	%xmm1, %xmm0	# CurrentFrameMAD.531, D.8041
	movsd	m_X1(%rip), %xmm1	# m_X1, m_X1.532
	mulsd	%xmm0, %xmm1	# D.8041, D.8041
	.loc 1 984 0
	movsd	m_X2(%rip), %xmm2	# m_X2, m_X2.533
	movsd	.LC5(%rip), %xmm0	#, tmp880
	mulsd	%xmm2, %xmm0	# m_X2.533, D.8041
	movsd	CurrentFrameMAD(%rip), %xmm2	# CurrentFrameMAD, CurrentFrameMAD.534
	mulsd	%xmm0, %xmm2	# D.8041, D.8041
	cvtsi2sd	-32(%rbp), %xmm0	# m_Bits, D.8041
	mulsd	%xmm2, %xmm0	# D.8041, D.8041
	.loc 1 983 0
	addsd	%xmm1, %xmm0	# D.8041, tmp881
	movsd	%xmm0, -24(%rbp)	# tmp881, dtmp
	.loc 1 985 0
	movsd	m_X2(%rip), %xmm0	# m_X2, m_X2.535
	xorpd	%xmm1, %xmm1	# tmp882
	ucomisd	%xmm1, %xmm0	# tmp882, m_X2.535
	jp	.L244	#,
	xorpd	%xmm1, %xmm1	# tmp883
	ucomisd	%xmm1, %xmm0	# tmp883, m_X2.535
	je	.L151	#,
.L244:
	.loc 1 985 0 is_stmt 0 discriminator 1
	xorpd	%xmm0, %xmm0	# tmp884
	ucomisd	-24(%rbp), %xmm0	# dtmp, tmp884
	ja	.L151	#,
	movq	-24(%rbp), %rax	# dtmp, tmp885
	movq	%rax, -64(%rbp)	# tmp885, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	movsd	m_X1(%rip), %xmm2	# m_X1, m_X1.536
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.537
	mulsd	%xmm2, %xmm1	# m_X1.536, D.8041
	subsd	%xmm1, %xmm0	# D.8041, D.8041
	xorpd	%xmm1, %xmm1	# tmp886
	ucomisd	%xmm0, %xmm1	# D.8041, tmp886
	jb	.L246	#,
.L151:
	.loc 1 986 0 is_stmt 1
	movsd	m_X1(%rip), %xmm1	# m_X1, m_X1.538
	movsd	CurrentFrameMAD(%rip), %xmm0	# CurrentFrameMAD, CurrentFrameMAD.539
	mulsd	%xmm1, %xmm0	# m_X1.538, D.8041
	cvtsi2sd	-32(%rbp), %xmm1	# m_Bits, D.8041
	divsd	%xmm1, %xmm0	# D.8041, D.8041
	unpcklpd	%xmm0, %xmm0	# D.8041
	cvtpd2ps	%xmm0, %xmm0	# D.8041, D.8043
	unpcklps	%xmm0, %xmm0	# D.8043, D.8043
	cvtps2pd	%xmm0, %xmm0	# D.8043, m_Qstep.540
	movsd	%xmm0, m_Qstep(%rip)	# m_Qstep.540, m_Qstep
	jmp	.L155	#
.L246:
	.loc 1 988 0
	movsd	m_X2(%rip), %xmm0	# m_X2, m_X2.541
	addsd	%xmm0, %xmm0	# m_X2.541, D.8041
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.542
	mulsd	%xmm1, %xmm0	# CurrentFrameMAD.542, D.8041
	movsd	%xmm0, -64(%rbp)	# D.8041, %sfp
	movq	-24(%rbp), %rax	# dtmp, tmp887
	movq	%rax, -72(%rbp)	# tmp887, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	movsd	m_X1(%rip), %xmm2	# m_X1, m_X1.543
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.544
	mulsd	%xmm2, %xmm1	# m_X1.543, D.8041
	subsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	-64(%rbp), %xmm3	# %sfp, D.8041
	divsd	%xmm0, %xmm3	# D.8041, D.8041
	movapd	%xmm3, %xmm0	# D.8041, D.8041
	unpcklpd	%xmm0, %xmm0	# D.8041
	cvtpd2ps	%xmm0, %xmm0	# D.8041, D.8043
	unpcklps	%xmm0, %xmm0	# D.8043, D.8043
	cvtps2pd	%xmm0, %xmm0	# D.8043, m_Qstep.545
	movsd	%xmm0, m_Qstep(%rip)	# m_Qstep.545, m_Qstep
.L155:
	.loc 1 990 0
	movq	m_Qstep(%rip), %rax	# m_Qstep, m_Qstep.546
	movq	%rax, -64(%rbp)	# m_Qstep.546, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	Qstep2QP	#
	movl	%eax, m_Qc(%rip)	# m_Qc.547, m_Qc
	.loc 1 992 0
	movl	m_Qp(%rip), %edx	# m_Qp, m_Qp.548
	movl	DuantQp(%rip), %eax	# DuantQp, DuantQp.549
	addl	%eax, %edx	# DuantQp.549, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.550
	cmpl	%eax, %edx	# m_Qc.550, D.8039
	cmovle	%edx, %eax	# D.8039,, m_Qc.551
	movl	%eax, m_Qc(%rip)	# m_Qc.551, m_Qc
	.loc 1 993 0
	movl	RC_MAX_QUANT(%rip), %edx	# RC_MAX_QUANT, RC_MAX_QUANT.552
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.553
	cmpl	%eax, %edx	# m_Qc.553, RC_MAX_QUANT.552
	cmovle	%edx, %eax	# RC_MAX_QUANT.552,, m_Qc.554
	movl	%eax, m_Qc(%rip)	# m_Qc.554, m_Qc
	.loc 1 994 0
	movl	m_Qp(%rip), %edx	# m_Qp, m_Qp.555
	movl	DuantQp(%rip), %eax	# DuantQp, DuantQp.556
	subl	%eax, %edx	# DuantQp.556, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.557
	cmpl	%eax, %edx	# m_Qc.557, D.8039
	cmovge	%edx, %eax	# D.8039,, m_Qc.558
	movl	%eax, m_Qc(%rip)	# m_Qc.558, m_Qc
	.loc 1 995 0
	movl	RC_MIN_QUANT(%rip), %edx	# RC_MIN_QUANT, RC_MIN_QUANT.559
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.560
	cmpl	%eax, %edx	# m_Qc.560, RC_MIN_QUANT.559
	cmovge	%edx, %eax	# RC_MIN_QUANT.559,, m_Qc.561
	movl	%eax, m_Qc(%rip)	# m_Qc.561, m_Qc
.L150:
	.loc 1 998 0
	movq	img(%rip), %rax	# img, img.562
	movl	72600(%rax), %eax	# img.562_282->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L156	#,
	.loc 1 1001 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.563
	movl	1148(%rax), %eax	# active_sps.563_284->frame_mbs_only_flag, D.8040
	testl	%eax, %eax	# D.8040
	je	.L157	#,
	.loc 1 1003 0
	movq	img(%rip), %rax	# img, img.564
	movq	img(%rip), %rdx	# img, img.565
	movl	72572(%rdx), %ecx	# img.565_287->TotalQpforPPicture, D.8039
	movl	m_Qc(%rip), %edx	# m_Qc, m_Qc.566
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.564_286->TotalQpforPPicture
	.loc 1 1004 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.567
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.567, PreviousQp1
	.loc 1 1005 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.568
	movl	%eax, PreviousQp2(%rip)	# m_Qc.568, PreviousQp2
	.loc 1 1006 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.569
	movl	%eax, Pm_Qp(%rip)	# m_Qc.569, Pm_Qp
	jmp	.L156	#
.L157:
	.loc 1 1010 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.570
	movl	%eax, FrameQPBuffer(%rip)	# m_Qc.570, FrameQPBuffer
.L156:
	.loc 1 1013 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L122:
	.loc 1 1019 0
	movq	img(%rip), %rax	# img, img.571
	movl	24(%rax), %eax	# img.571_16->type, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L158	#,
	.loc 1 1019 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.572
	movl	72612(%rax), %eax	# img.572_18->IFLAG, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L158	#,
	.loc 1 1022 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.573
	movl	2880(%rax), %eax	# input.573_20->PicInterlace, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L159	#,
	.loc 1 1024 0
	movq	img(%rip), %rax	# img, img.574
	movq	img(%rip), %rdx	# img, img.575
	movl	72572(%rdx), %ecx	# img.575_23->TotalQpforPPicture, D.8039
	movl	m_Qc(%rip), %edx	# m_Qc, m_Qc.576
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.574_22->TotalQpforPPicture
	.loc 1 1025 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.577
	addl	$1, %eax	#, PreviousQp1.578
	movl	%eax, PreviousQp1(%rip)	# PreviousQp1.578, PreviousQp1
	.loc 1 1026 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.579
	movl	%eax, PreviousQp2(%rip)	# m_Qc.579, PreviousQp2
	.loc 1 1027 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.580
	movl	%eax, Pm_Qp(%rip)	# m_Qc.580, Pm_Qp
	jmp	.L158	#
.L159:
	.loc 1 1031 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.581
	movl	%eax, FieldQPBuffer(%rip)	# m_Qc.581, FieldQPBuffer
.L158:
	.loc 1 1033 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L120:
	.loc 1 1040 0
	movq	img(%rip), %rax	# img, img.582
	movl	24(%rax), %eax	# img.582_296->type, D.8039
	cmpl	$2, %eax	#, D.8039
	jne	.L160	#,
	.loc 1 1042 0
	movl	MyInitialQp(%rip), %eax	# MyInitialQp, MyInitialQp.583
	movl	%eax, m_Qc(%rip)	# MyInitialQp.583, m_Qc
	.loc 1 1043 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L160:
	.loc 1 1046 0
	movq	img(%rip), %rax	# img, img.584
	movl	24(%rax), %eax	# img.584_300->type, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L161	#,
	.loc 1 1046 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.585
	movl	72612(%rax), %eax	# img.585_302->IFLAG, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L161	#,
	movq	img(%rip), %rax	# img, img.586
	movl	72600(%rax), %eax	# img.586_304->FieldControl, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L161	#,
	.loc 1 1048 0 is_stmt 1
	movl	MyInitialQp(%rip), %eax	# MyInitialQp, MyInitialQp.587
	movl	%eax, m_Qc(%rip)	# MyInitialQp.587, m_Qc
	.loc 1 1049 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L161:
	.loc 1 1051 0
	movq	img(%rip), %rax	# img, img.588
	movl	24(%rax), %eax	# img.588_308->type, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L162	#,
	.loc 1 1054 0
	cmpl	$0, -52(%rbp)	#, topfield
	jne	.L163	#,
	.loc 1 1054 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.589
	movl	72600(%rax), %eax	# img.589_310->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L164	#,
.L163:
	.loc 1 1056 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.590
	movl	1236(%rax), %eax	# input.590_313->successive_Bframe, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L165	#,
	.loc 1 1059 0
	movq	input(%rip), %rax	# input, input.591
	movl	2880(%rax), %eax	# input.591_315->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L166	#,
	.loc 1 1060 0
	movq	input(%rip), %rax	# input, input.592
	movl	2884(%rax), %eax	# input.592_317->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L167	#,
.L166:
	.loc 1 1062 0
	movq	img(%rip), %rax	# img, img.593
	movl	72600(%rax), %eax	# img.593_319->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L167	#,
	.loc 1 1065 0
	movq	img(%rip), %rax	# img, img.594
	movl	72604(%rax), %eax	# img.594_321->FieldFrame, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L168	#,
	.loc 1 1067 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.595
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.595, PreviousQp1
	.loc 1 1068 0
	movl	FrameQPBuffer(%rip), %eax	# FrameQPBuffer, FrameQPBuffer.596
	movl	%eax, PreviousQp2(%rip)	# FrameQPBuffer.596, PreviousQp2
	jmp	.L167	#
.L168:
	.loc 1 1073 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.597
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.597, PreviousQp1
	.loc 1 1074 0
	movl	FieldQPBuffer(%rip), %eax	# FieldQPBuffer, FieldQPBuffer.598
	movl	%eax, PreviousQp2(%rip)	# FieldQPBuffer.598, PreviousQp2
.L167:
	.loc 1 1079 0
	movl	PreviousQp1(%rip), %edx	# PreviousQp1, PreviousQp1.599
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.600
	cmpl	%eax, %edx	# PreviousQp2.600, PreviousQp1.599
	jne	.L169	#,
	.loc 1 1080 0
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.601
	addl	$2, %eax	#, m_Qc.602
	movl	%eax, m_Qc(%rip)	# m_Qc.602, m_Qc
	jmp	.L170	#
.L169:
	.loc 1 1082 0
	movl	PreviousQp1(%rip), %edx	# PreviousQp1, PreviousQp1.603
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.604
	addl	%edx, %eax	# PreviousQp1.603, D.8039
	movl	%eax, %edx	# D.8039, tmp888
	shrl	$31, %edx	#, tmp888
	addl	%edx, %eax	# tmp888, tmp889
	sarl	%eax	# tmp890
	addl	$1, %eax	#, m_Qc.605
	movl	%eax, m_Qc(%rip)	# m_Qc.605, m_Qc
.L170:
	.loc 1 1083 0 discriminator 2
	movl	RC_MAX_QUANT(%rip), %edx	# RC_MAX_QUANT, RC_MAX_QUANT.606
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.607
	cmpl	%eax, %edx	# m_Qc.607, RC_MAX_QUANT.606
	cmovle	%edx, %eax	# RC_MAX_QUANT.606,, m_Qc.608
	movl	%eax, m_Qc(%rip)	# m_Qc.608, m_Qc
	.loc 1 1084 0 discriminator 2
	movl	RC_MIN_QUANT(%rip), %edx	# RC_MIN_QUANT, RC_MIN_QUANT.609
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.610
	cmpl	%eax, %edx	# m_Qc.610, RC_MIN_QUANT.609
	cmovge	%edx, %eax	# RC_MIN_QUANT.609,, m_Qc.611
	movl	%eax, m_Qc(%rip)	# m_Qc.611, m_Qc
	jmp	.L171	#
.L165:
	.loc 1 1088 0
	movl	NumberofBFrames(%rip), %eax	# NumberofBFrames, NumberofBFrames.612
	leal	1(%rax), %edx	#, D.8039
	movq	input(%rip), %rax	# input, input.613
	movl	1236(%rax), %ecx	# input.613_344->successive_Bframe, D.8039
	movl	%edx, %eax	# D.8039, tmp892
	cltd
	idivl	%ecx	# D.8039
	movl	%edx, -48(%rbp)	# tmp891, BFrameNumber
	.loc 1 1089 0
	cmpl	$0, -48(%rbp)	#, BFrameNumber
	jne	.L172	#,
	.loc 1 1090 0
	movq	input(%rip), %rax	# input, input.614
	movl	1236(%rax), %eax	# input.614_347->successive_Bframe, tmp893
	movl	%eax, -48(%rbp)	# tmp893, BFrameNumber
.L172:
	.loc 1 1093 0
	cmpl	$1, -48(%rbp)	#, BFrameNumber
	jne	.L173	#,
	.loc 1 1095 0
	movq	input(%rip), %rax	# input, input.615
	movl	2880(%rax), %eax	# input.615_349->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L174	#,
	.loc 1 1096 0
	movq	input(%rip), %rax	# input, input.616
	movl	2884(%rax), %eax	# input.616_351->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L173	#,
.L174:
	.loc 1 1098 0
	movq	img(%rip), %rax	# img, img.617
	movl	72600(%rax), %eax	# img.617_353->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L173	#,
	.loc 1 1101 0
	movq	img(%rip), %rax	# img, img.618
	movl	72604(%rax), %eax	# img.618_355->FieldFrame, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L175	#,
	.loc 1 1103 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.619
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.619, PreviousQp1
	.loc 1 1104 0
	movl	FrameQPBuffer(%rip), %eax	# FrameQPBuffer, FrameQPBuffer.620
	movl	%eax, PreviousQp2(%rip)	# FrameQPBuffer.620, PreviousQp2
	jmp	.L173	#
.L175:
	.loc 1 1109 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.621
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.621, PreviousQp1
	.loc 1 1110 0
	movl	FieldQPBuffer(%rip), %eax	# FieldQPBuffer, FieldQPBuffer.622
	movl	%eax, PreviousQp2(%rip)	# FieldQPBuffer.622, PreviousQp2
.L173:
	.loc 1 1116 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.623
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.624
	movl	%edx, %ecx	# PreviousQp2.623, D.8039
	subl	%eax, %ecx	# PreviousQp1.624, D.8039
	movq	input(%rip), %rax	# input, input.625
	movl	1236(%rax), %edx	# input.625_364->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp894
	subl	%edx, %eax	# D.8039, tmp894
	addl	%eax, %eax	# tmp895
	subl	$3, %eax	#, D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	jg	.L176	#,
	.loc 1 1117 0
	movl	$-3, -44(%rbp)	#, StepSize
	jmp	.L177	#
.L176:
	.loc 1 1118 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.626
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.627
	movl	%edx, %ecx	# PreviousQp2.626, D.8039
	subl	%eax, %ecx	# PreviousQp1.627, D.8039
	movq	input(%rip), %rax	# input, input.628
	movl	1236(%rax), %edx	# input.628_372->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp896
	subl	%edx, %eax	# D.8039, tmp896
	addl	%eax, %eax	# tmp897
	subl	$2, %eax	#, D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	jne	.L178	#,
	.loc 1 1119 0
	movl	$-2, -44(%rbp)	#, StepSize
	jmp	.L177	#
.L178:
	.loc 1 1120 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.629
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.630
	movl	%edx, %ecx	# PreviousQp2.629, D.8039
	subl	%eax, %ecx	# PreviousQp1.630, D.8039
	movq	input(%rip), %rax	# input, input.631
	movl	1236(%rax), %edx	# input.631_380->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp898
	subl	%edx, %eax	# D.8039, tmp898
	addl	%eax, %eax	# tmp899
	subl	$1, %eax	#, D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	jne	.L179	#,
	.loc 1 1121 0
	movl	$-1, -44(%rbp)	#, StepSize
	jmp	.L177	#
.L179:
	.loc 1 1122 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.632
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.633
	movl	%edx, %ecx	# PreviousQp2.632, D.8039
	subl	%eax, %ecx	# PreviousQp1.633, D.8039
	movq	input(%rip), %rax	# input, input.634
	movl	1236(%rax), %edx	# input.634_388->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp900
	subl	%edx, %eax	# D.8039, tmp900
	addl	%eax, %eax	# tmp901
	cmpl	%eax, %ecx	# D.8039, D.8039
	jne	.L180	#,
	.loc 1 1123 0
	movl	$0, -44(%rbp)	#, StepSize
	jmp	.L177	#
.L180:
	.loc 1 1124 0
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.635
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.636
	movl	%edx, %ecx	# PreviousQp2.635, D.8039
	subl	%eax, %ecx	# PreviousQp1.636, D.8039
	movq	input(%rip), %rax	# input, input.637
	movl	1236(%rax), %edx	# input.637_395->successive_Bframe, D.8039
	movl	$0, %eax	#, tmp902
	subl	%edx, %eax	# D.8039, tmp902
	addl	%eax, %eax	# tmp903
	addl	$1, %eax	#, D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	jne	.L181	#,
	.loc 1 1125 0
	movl	$1, -44(%rbp)	#, StepSize
	jmp	.L177	#
.L181:
	.loc 1 1127 0
	movl	$2, -44(%rbp)	#, StepSize
.L177:
	.loc 1 1128 0
	movl	PreviousQp1(%rip), %edx	# PreviousQp1, PreviousQp1.638
	movl	-44(%rbp), %eax	# StepSize, tmp904
	addl	%edx, %eax	# PreviousQp1.638, m_Qc.639
	movl	%eax, m_Qc(%rip)	# m_Qc.639, m_Qc
	.loc 1 1129 0
	movl	$1, %eax	#, tmp905
	subl	-48(%rbp), %eax	# BFrameNumber, D.8039
	leal	(%rax,%rax), %ecx	#, D.8039
	movl	-48(%rbp), %eax	# BFrameNumber, tmp906
	leal	-1(%rax), %esi	#, D.8039
	movl	PreviousQp2(%rip), %edx	# PreviousQp2, PreviousQp2.640
	movl	PreviousQp1(%rip), %eax	# PreviousQp1, PreviousQp1.641
	subl	%eax, %edx	# PreviousQp1.641, D.8039
	movl	%edx, %eax	# D.8039, D.8039
	imull	%esi, %eax	# D.8039, D.8039
	movq	input(%rip), %rdx	# input, input.642
	movl	1236(%rdx), %edx	# input.642_410->successive_Bframe, D.8039
	leal	-1(%rdx), %edi	#, D.8039
	cltd
	idivl	%edi	# D.8039
	cmpl	%eax, %ecx	# D.8039, D.8039
	cmovge	%ecx, %eax	# D.8039,, D.8039
	movl	-48(%rbp), %edx	# BFrameNumber, tmp909
	subl	$1, %edx	#, D.8039
	addl	%edx, %edx	# D.8039
	cmpl	%edx, %eax	# D.8039, D.8039
	cmovle	%eax, %edx	# D.8039,, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.643
	addl	%edx, %eax	# D.8039, m_Qc.644
	movl	%eax, m_Qc(%rip)	# m_Qc.644, m_Qc
	.loc 1 1131 0
	movl	RC_MAX_QUANT(%rip), %edx	# RC_MAX_QUANT, RC_MAX_QUANT.645
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.646
	cmpl	%eax, %edx	# m_Qc.646, RC_MAX_QUANT.645
	cmovle	%edx, %eax	# RC_MAX_QUANT.645,, m_Qc.647
	movl	%eax, m_Qc(%rip)	# m_Qc.647, m_Qc
	.loc 1 1132 0
	movl	RC_MIN_QUANT(%rip), %edx	# RC_MIN_QUANT, RC_MIN_QUANT.648
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.649
	cmpl	%eax, %edx	# m_Qc.649, RC_MIN_QUANT.648
	cmovge	%edx, %eax	# RC_MIN_QUANT.648,, m_Qc.650
	movl	%eax, m_Qc(%rip)	# m_Qc.650, m_Qc
.L171:
	.loc 1 1134 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L164:
	.loc 1 1138 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L162:
	.loc 1 1140 0
	movq	img(%rip), %rax	# img, img.651
	movl	24(%rax), %eax	# img.651_427->type, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L182	#,
	.loc 1 1142 0
	movq	img(%rip), %rax	# img, img.652
	movl	72568(%rax), %eax	# img.652_429->NumberofGOP, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L183	#,
	.loc 1 1142 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.653
	movl	72576(%rax), %eax	# img.653_431->NumberofPPicture, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L183	#,
	.loc 1 1144 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.654
	movl	72600(%rax), %eax	# img.654_433->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	je	.L184	#,
	.loc 1 1144 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.655
	movl	72600(%rax), %eax	# img.655_435->FieldControl, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L185	#,
	.loc 1 1145 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.656
	movl	72612(%rax), %eax	# img.656_437->IFLAG, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L185	#,
.L184:
	.loc 1 1148 0
	movl	MyInitialQp(%rip), %eax	# MyInitialQp, MyInitialQp.657
	movl	%eax, m_Qc(%rip)	# MyInitialQp.657, m_Qc
	.loc 1 1149 0
	movq	img(%rip), %rax	# img, img.658
	movl	$0, 72532(%rax)	#, img.658_440->NumberofBasicUnitHeaderBits
	.loc 1 1150 0
	movq	img(%rip), %rax	# img, img.659
	movl	$0, 72536(%rax)	#, img.659_441->NumberofBasicUnitTextureBits
	.loc 1 1151 0
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.660
	subl	$1, %eax	#, NumberofBasicUnit.661
	movl	%eax, NumberofBasicUnit(%rip)	# NumberofBasicUnit.661, NumberofBasicUnit
	.loc 1 1153 0
	cmpl	$0, -52(%rbp)	#, topfield
	jne	.L186	#,
	.loc 1 1153 0 is_stmt 0 discriminator 1
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.662
	testl	%eax, %eax	# NumberofBasicUnit.662
	jne	.L186	#,
	.loc 1 1156 0 is_stmt 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.663
	movl	1148(%rax), %eax	# active_sps.663_445->frame_mbs_only_flag, D.8040
	testl	%eax, %eax	# D.8040
	jne	.L187	#,
	.loc 1 1156 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.664
	movl	2880(%rax), %eax	# input.664_447->PicInterlace, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L188	#,
.L187:
	.loc 1 1158 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.665
	movq	img(%rip), %rdx	# img, img.666
	movl	72572(%rdx), %ecx	# img.666_460->TotalQpforPPicture, D.8039
	movl	m_Qc(%rip), %edx	# m_Qc, m_Qc.667
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.665_459->TotalQpforPPicture
	.loc 1 1159 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.668
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.668, PreviousQp1
	.loc 1 1160 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.669
	movl	%eax, PreviousQp2(%rip)	# m_Qc.669, PreviousQp2
	.loc 1 1161 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.670
	movl	%eax, PAveFrameQP(%rip)	# m_Qc.670, PAveFrameQP
	.loc 1 1162 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.671
	movl	%eax, PAveHeaderBits3(%rip)	# PAveHeaderBits2.671, PAveHeaderBits3
	jmp	.L186	#
.L188:
	.loc 1 1165 0
	movq	input(%rip), %rax	# input, input.672
	movl	2880(%rax), %eax	# input.672_449->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L189	#,
	.loc 1 1166 0
	movq	input(%rip), %rax	# input, input.673
	movl	2884(%rax), %eax	# input.673_451->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L186	#,
.L189:
	.loc 1 1168 0
	movq	img(%rip), %rax	# img, img.674
	movl	72600(%rax), %eax	# img.674_453->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L190	#,
	.loc 1 1170 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.675
	movl	%eax, FrameQPBuffer(%rip)	# m_Qc.675, FrameQPBuffer
	.loc 1 1171 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.676
	movl	%eax, FrameAveHeaderBits(%rip)	# PAveHeaderBits2.676, FrameAveHeaderBits
	jmp	.L186	#
.L190:
	.loc 1 1175 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.677
	movl	%eax, FieldQPBuffer(%rip)	# m_Qc.677, FieldQPBuffer
	.loc 1 1176 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.678
	movl	%eax, FieldAveHeaderBits(%rip)	# PAveHeaderBits2.678, FieldAveHeaderBits
.L186:
	.loc 1 1180 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.679
	movl	%eax, Pm_Qp(%rip)	# m_Qc.679, Pm_Qp
	.loc 1 1181 0
	movl	TotalFrameQP(%rip), %edx	# TotalFrameQP, TotalFrameQP.680
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.681
	addl	%edx, %eax	# TotalFrameQP.680, TotalFrameQP.682
	movl	%eax, TotalFrameQP(%rip)	# TotalFrameQP.682, TotalFrameQP
	.loc 1 1182 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L185:
	.loc 1 1144 0 discriminator 1
	jmp	.L182	#
.L183:
	.loc 1 1187 0
	movq	Pm_X1(%rip), %rax	# Pm_X1, Pm_X1.683
	movq	%rax, m_X1(%rip)	# Pm_X1.683, m_X1
	.loc 1 1188 0
	movq	Pm_X2(%rip), %rax	# Pm_X2, Pm_X2.684
	movq	%rax, m_X2(%rip)	# Pm_X2.684, m_X2
	.loc 1 1189 0
	movl	PPreHeader(%rip), %eax	# PPreHeader, PPreHeader.685
	movl	%eax, m_Hp(%rip)	# PPreHeader.685, m_Hp
	.loc 1 1190 0
	movl	Pm_Qp(%rip), %eax	# Pm_Qp, Pm_Qp.686
	movl	%eax, m_Qp(%rip)	# Pm_Qp.686, m_Qp
	.loc 1 1191 0
	movl	PDuantQp(%rip), %eax	# PDuantQp, PDuantQp.687
	movl	%eax, DuantQp(%rip)	# PDuantQp.687, DuantQp
	.loc 1 1192 0
	movq	PMADPictureC1(%rip), %rax	# PMADPictureC1, PMADPictureC1.688
	movq	%rax, MADPictureC1(%rip)	# PMADPictureC1.688, MADPictureC1
	.loc 1 1193 0
	movq	PMADPictureC2(%rip), %rax	# PMADPictureC2, PMADPictureC2.689
	movq	%rax, MADPictureC2(%rip)	# PMADPictureC2.689, MADPictureC2
	.loc 1 1195 0
	movq	img(%rip), %rax	# img, img.690
	movl	72600(%rax), %eax	# img.690_480->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L191	#,
	.loc 1 1196 0
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, tmp910
	movl	%eax, -40(%rbp)	# tmp910, SumofBasicUnit
	jmp	.L192	#
.L191:
	.loc 1 1198 0
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.691
	movl	%eax, %edx	# TotalNumberofBasicUnit.691, tmp911
	shrl	$31, %edx	#, tmp911
	addl	%edx, %eax	# tmp911, tmp912
	sarl	%eax	# tmp913
	movl	%eax, -40(%rbp)	# tmp913, SumofBasicUnit
.L192:
	.loc 1 1201 0
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.692
	cmpl	-40(%rbp), %eax	# SumofBasicUnit, NumberofBasicUnit.692
	jne	.L193	#,
	.loc 1 1205 0
	movq	input(%rip), %rax	# input, input.693
	movl	2880(%rax), %eax	# input.693_486->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L194	#,
	.loc 1 1206 0
	movq	input(%rip), %rax	# input, input.694
	movl	2884(%rax), %eax	# input.694_488->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L195	#,
.L194:
	.loc 1 1207 0
	movq	img(%rip), %rax	# img, img.695
	movl	72600(%rax), %eax	# img.695_490->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L195	#,
	.loc 1 1210 0
	movq	img(%rip), %rax	# img, img.696
	movl	72604(%rax), %eax	# img.696_492->FieldFrame, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L196	#,
	.loc 1 1212 0
	movq	img(%rip), %rax	# img, img.697
	movl	72576(%rax), %eax	# img.697_494->NumberofPPicture, D.8039
	testl	%eax, %eax	# D.8039
	jle	.L197	#,
	.loc 1 1213 0
	movq	img(%rip), %rax	# img, img.698
	movq	img(%rip), %rdx	# img, img.699
	movl	72572(%rdx), %ecx	# img.699_497->TotalQpforPPicture, D.8039
	movl	FrameQPBuffer(%rip), %edx	# FrameQPBuffer, FrameQPBuffer.700
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.698_496->TotalQpforPPicture
.L197:
	.loc 1 1214 0
	movl	FrameQPBuffer(%rip), %eax	# FrameQPBuffer, FrameQPBuffer.701
	movl	%eax, PAveFrameQP(%rip)	# FrameQPBuffer.701, PAveFrameQP
	.loc 1 1215 0
	movl	FrameAveHeaderBits(%rip), %eax	# FrameAveHeaderBits, FrameAveHeaderBits.702
	movl	%eax, PAveHeaderBits3(%rip)	# FrameAveHeaderBits.702, PAveHeaderBits3
	jmp	.L195	#
.L196:
	.loc 1 1220 0
	movq	img(%rip), %rax	# img, img.703
	movl	72576(%rax), %eax	# img.703_503->NumberofPPicture, D.8039
	testl	%eax, %eax	# D.8039
	jle	.L198	#,
	.loc 1 1221 0
	movq	img(%rip), %rax	# img, img.704
	movq	img(%rip), %rdx	# img, img.705
	movl	72572(%rdx), %ecx	# img.705_506->TotalQpforPPicture, D.8039
	movl	FieldQPBuffer(%rip), %edx	# FieldQPBuffer, FieldQPBuffer.706
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.704_505->TotalQpforPPicture
.L198:
	.loc 1 1222 0
	movl	FieldQPBuffer(%rip), %eax	# FieldQPBuffer, FieldQPBuffer.707
	movl	%eax, PAveFrameQP(%rip)	# FieldQPBuffer.707, PAveFrameQP
	.loc 1 1223 0
	movl	FieldAveHeaderBits(%rip), %eax	# FieldAveHeaderBits, FieldAveHeaderBits.708
	movl	%eax, PAveHeaderBits3(%rip)	# FieldAveHeaderBits.708, PAveHeaderBits3
.L195:
	.loc 1 1227 0
	movq	T(%rip), %rax	# T, T.709
	testq	%rax, %rax	# T.709
	jg	.L199	#,
	.loc 1 1229 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.710
	addl	$2, %eax	#, m_Qc.711
	movl	%eax, m_Qc(%rip)	# m_Qc.711, m_Qc
	.loc 1 1230 0
	movl	m_Qc(%rip), %edx	# m_Qc, m_Qc.712
	movl	RC_MAX_QUANT(%rip), %eax	# RC_MAX_QUANT, RC_MAX_QUANT.713
	cmpl	%eax, %edx	# RC_MAX_QUANT.713, m_Qc.712
	jle	.L200	#,
	.loc 1 1231 0
	movl	RC_MAX_QUANT(%rip), %eax	# RC_MAX_QUANT, RC_MAX_QUANT.714
	movl	%eax, m_Qc(%rip)	# RC_MAX_QUANT.714, m_Qc
.L200:
	.loc 1 1232 0
	cmpl	$0, -52(%rbp)	#, topfield
	jne	.L201	#,
	.loc 1 1232 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.715
	movl	72600(%rax), %eax	# img.715_518->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L203	#,
.L201:
	.loc 1 1233 0 is_stmt 1
	movl	$1, GOPOverdue(%rip)	#, GOPOverdue
	jmp	.L203	#
.L199:
	.loc 1 1237 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.716
	movl	%eax, m_Qc(%rip)	# PAveFrameQP.716, m_Qc
.L203:
	.loc 1 1239 0
	movl	TotalFrameQP(%rip), %edx	# TotalFrameQP, TotalFrameQP.717
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.718
	addl	%edx, %eax	# TotalFrameQP.717, TotalFrameQP.719
	movl	%eax, TotalFrameQP(%rip)	# TotalFrameQP.719, TotalFrameQP
	.loc 1 1240 0
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.720
	subl	$1, %eax	#, NumberofBasicUnit.721
	movl	%eax, NumberofBasicUnit(%rip)	# NumberofBasicUnit.721, NumberofBasicUnit
	.loc 1 1241 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.722
	movl	%eax, Pm_Qp(%rip)	# PAveFrameQP.722, Pm_Qp
	.loc 1 1242 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L193:
	.loc 1 1246 0
	movq	img(%rip), %rax	# img, img.723
	movl	72532(%rax), %edx	# img.723_528->NumberofBasicUnitHeaderBits, D.8039
	movq	img(%rip), %rax	# img, img.724
	movl	72536(%rax), %eax	# img.724_530->NumberofBasicUnitTextureBits, D.8039
	addl	%edx, %eax	# D.8039, TotalBasicUnitBits.725
	movl	%eax, TotalBasicUnitBits(%rip)	# TotalBasicUnitBits.725, TotalBasicUnitBits
	.loc 1 1247 0
	movq	T(%rip), %rdx	# T, T.726
	movl	TotalBasicUnitBits(%rip), %eax	# TotalBasicUnitBits, TotalBasicUnitBits.727
	cltq
	subq	%rax, %rdx	# D.8044, T.728
	movq	%rdx, %rax	# T.728, T.728
	movq	%rax, T(%rip)	# T.728, T
	.loc 1 1248 0
	movq	img(%rip), %rax	# img, img.729
	movl	$0, 72532(%rax)	#, img.729_537->NumberofBasicUnitHeaderBits
	.loc 1 1249 0
	movq	img(%rip), %rax	# img, img.730
	movl	$0, 72536(%rax)	#, img.730_538->NumberofBasicUnitTextureBits
	.loc 1 1250 0
	movq	T(%rip), %rax	# T, T.731
	testq	%rax, %rax	# T.731
	jns	.L204	#,
	.loc 1 1252 0
	movl	GOPOverdue(%rip), %eax	# GOPOverdue, GOPOverdue.732
	cmpl	$1, %eax	#, GOPOverdue.732
	jne	.L205	#,
	.loc 1 1253 0
	movl	m_Qp(%rip), %eax	# m_Qp, m_Qp.733
	addl	$2, %eax	#, m_Qc.734
	movl	%eax, m_Qc(%rip)	# m_Qc.734, m_Qc
	jmp	.L206	#
.L205:
	.loc 1 1255 0
	movl	m_Qp(%rip), %edx	# m_Qp, m_Qp.735
	movl	DDquant(%rip), %eax	# DDquant, DDquant.736
	addl	%edx, %eax	# m_Qp.735, m_Qc.737
	movl	%eax, m_Qc(%rip)	# m_Qc.737, m_Qc
.L206:
	.loc 1 1256 0
	movl	RC_MAX_QUANT(%rip), %edx	# RC_MAX_QUANT, RC_MAX_QUANT.738
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.739
	cmpl	%eax, %edx	# m_Qc.739, RC_MAX_QUANT.738
	cmovle	%edx, %eax	# RC_MAX_QUANT.738,, m_Qc.740
	movl	%eax, m_Qc(%rip)	# m_Qc.740, m_Qc
	.loc 1 1257 0
	movq	input(%rip), %rax	# input, input.741
	movl	3248(%rax), %edx	# input.741_549->basicunit, D.8039
	movl	MBPerRow(%rip), %eax	# MBPerRow, MBPerRow.742
	cmpl	%eax, %edx	# MBPerRow.742, D.8039
	jl	.L207	#,
	.loc 1 1258 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.743
	leal	6(%rax), %edx	#, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.744
	cmpl	%eax, %edx	# m_Qc.744, D.8039
	cmovle	%edx, %eax	# D.8039,, m_Qc.745
	movl	%eax, m_Qc(%rip)	# m_Qc.745, m_Qc
	jmp	.L208	#
.L207:
	.loc 1 1260 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.746
	leal	3(%rax), %edx	#, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.747
	cmpl	%eax, %edx	# m_Qc.747, D.8039
	cmovle	%edx, %eax	# D.8039,, m_Qc.748
	movl	%eax, m_Qc(%rip)	# m_Qc.748, m_Qc
.L208:
	.loc 1 1262 0
	movl	TotalFrameQP(%rip), %edx	# TotalFrameQP, TotalFrameQP.749
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.750
	addl	%edx, %eax	# TotalFrameQP.749, TotalFrameQP.751
	movl	%eax, TotalFrameQP(%rip)	# TotalFrameQP.751, TotalFrameQP
	.loc 1 1263 0
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.752
	subl	$1, %eax	#, NumberofBasicUnit.753
	movl	%eax, NumberofBasicUnit(%rip)	# NumberofBasicUnit.753, NumberofBasicUnit
	.loc 1 1264 0
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.754
	testl	%eax, %eax	# NumberofBasicUnit.754
	jne	.L209	#,
	.loc 1 1266 0
	cmpl	$0, -52(%rbp)	#, topfield
	je	.L210	#,
	.loc 1 1266 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.755
	movl	72600(%rax), %eax	# img.755_566->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L209	#,
.L210:
	.loc 1 1269 0 is_stmt 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.756
	movl	1148(%rax), %eax	# active_sps.756_568->frame_mbs_only_flag, D.8040
	testl	%eax, %eax	# D.8040
	jne	.L211	#,
	.loc 1 1269 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.757
	movl	2880(%rax), %eax	# input.757_570->PicInterlace, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L212	#,
.L211:
	.loc 1 1271 0 is_stmt 1
	movl	TotalFrameQP(%rip), %eax	# TotalFrameQP, TotalFrameQP.758
	cvtsi2sd	%eax, %xmm0	# TotalFrameQP.758, D.8041
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.759
	cvtsi2sd	%eax, %xmm1	# TotalNumberofBasicUnit.759, D.8041
	divsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	.LC11(%rip), %xmm1	#, tmp914
	addsd	%xmm1, %xmm0	# tmp914, D.8041
	cvttsd2si	%xmm0, %eax	# D.8041, tmp915
	movl	%eax, -28(%rbp)	# tmp915, PAverageQP
	.loc 1 1272 0
	movq	img(%rip), %rax	# img, img.760
	movl	72576(%rax), %edx	# img.760_601->NumberofPPicture, D.8039
	movq	input(%rip), %rax	# input, input.761
	movl	1224(%rax), %eax	# input.761_603->intra_period, D.8039
	subl	$2, %eax	#, D.8039
	cmpl	%eax, %edx	# D.8039, D.8039
	jne	.L213	#,
	.loc 1 1273 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp916
	movl	%eax, QPLastPFrame(%rip)	# tmp916, QPLastPFrame
.L213:
	.loc 1 1275 0
	movq	img(%rip), %rax	# img, img.762
	movq	img(%rip), %rdx	# img, img.763
	movl	72572(%rdx), %ecx	# img.763_607->TotalQpforPPicture, D.8039
	movl	-28(%rbp), %edx	# PAverageQP, tmp917
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.762_606->TotalQpforPPicture
	.loc 1 1276 0
	movl	GOPOverdue(%rip), %eax	# GOPOverdue, GOPOverdue.764
	cmpl	$1, %eax	#, GOPOverdue.764
	jne	.L214	#,
	.loc 1 1278 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.765
	addl	$1, %eax	#, PreviousQp1.766
	movl	%eax, PreviousQp1(%rip)	# PreviousQp1.766, PreviousQp1
	.loc 1 1279 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp918
	movl	%eax, PreviousQp2(%rip)	# tmp918, PreviousQp2
	jmp	.L215	#
.L214:
	.loc 1 1283 0
	movq	img(%rip), %rax	# img, img.767
	movl	72576(%rax), %eax	# img.767_613->NumberofPPicture, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L216	#,
	.loc 1 1283 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.768
	movl	72568(%rax), %eax	# img.768_615->NumberofGOP, D.8039
	cmpl	$1, %eax	#, D.8039
	jle	.L216	#,
	.loc 1 1285 0 is_stmt 1
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.769
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.769, PreviousQp1
	.loc 1 1286 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp919
	movl	%eax, PreviousQp2(%rip)	# tmp919, PreviousQp2
	jmp	.L215	#
.L216:
	.loc 1 1288 0
	movq	img(%rip), %rax	# img, img.770
	movl	72576(%rax), %eax	# img.770_618->NumberofPPicture, D.8039
	testl	%eax, %eax	# D.8039
	jle	.L215	#,
	.loc 1 1290 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.771
	addl	$1, %eax	#, PreviousQp1.772
	movl	%eax, PreviousQp1(%rip)	# PreviousQp1.772, PreviousQp1
	.loc 1 1291 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp920
	movl	%eax, PreviousQp2(%rip)	# tmp920, PreviousQp2
.L215:
	.loc 1 1294 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp921
	movl	%eax, PAveFrameQP(%rip)	# tmp921, PAveFrameQP
	.loc 1 1295 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.773
	movl	%eax, PAveHeaderBits3(%rip)	# PAveHeaderBits2.773, PAveHeaderBits3
	jmp	.L209	#
.L212:
	.loc 1 1298 0
	movq	input(%rip), %rax	# input, input.774
	movl	2880(%rax), %eax	# input.774_572->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L217	#,
	.loc 1 1299 0
	movq	input(%rip), %rax	# input, input.775
	movl	2884(%rax), %eax	# input.775_574->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L209	#,
.L217:
	.loc 1 1301 0
	movq	img(%rip), %rax	# img, img.776
	movl	72600(%rax), %eax	# img.776_576->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L218	#,
	.loc 1 1303 0
	movl	TotalFrameQP(%rip), %eax	# TotalFrameQP, TotalFrameQP.777
	cvtsi2sd	%eax, %xmm0	# TotalFrameQP.777, D.8041
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.778
	cvtsi2sd	%eax, %xmm1	# TotalNumberofBasicUnit.778, D.8041
	divsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	.LC11(%rip), %xmm1	#, tmp922
	addsd	%xmm1, %xmm0	# tmp922, D.8041
	cvttsd2si	%xmm0, %eax	# D.8041, tmp923
	movl	%eax, -28(%rbp)	# tmp923, PAverageQP
	.loc 1 1304 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp924
	movl	%eax, FrameQPBuffer(%rip)	# tmp924, FrameQPBuffer
	.loc 1 1305 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.779
	movl	%eax, FrameAveHeaderBits(%rip)	# PAveHeaderBits2.779, FrameAveHeaderBits
	jmp	.L209	#
.L218:
	.loc 1 1309 0
	movl	TotalFrameQP(%rip), %eax	# TotalFrameQP, TotalFrameQP.780
	cvtsi2sd	%eax, %xmm0	# TotalFrameQP.780, D.8041
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.781
	cvtsi2sd	%eax, %xmm1	# TotalNumberofBasicUnit.781, D.8041
	divsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	.LC11(%rip), %xmm1	#, tmp925
	addsd	%xmm1, %xmm0	# tmp925, D.8041
	cvttsd2si	%xmm0, %eax	# D.8041, tmp926
	movl	%eax, -28(%rbp)	# tmp926, PAverageQP
	.loc 1 1310 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp927
	movl	%eax, FieldQPBuffer(%rip)	# tmp927, FieldQPBuffer
	.loc 1 1311 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.782
	movl	%eax, FieldAveHeaderBits(%rip)	# PAveHeaderBits2.782, FieldAveHeaderBits
.L209:
	.loc 1 1316 0
	movl	GOPOverdue(%rip), %eax	# GOPOverdue, GOPOverdue.783
	cmpl	$1, %eax	#, GOPOverdue.783
	jne	.L219	#,
	.loc 1 1317 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.784
	movl	%eax, Pm_Qp(%rip)	# PAveFrameQP.784, Pm_Qp
	jmp	.L220	#
.L219:
	.loc 1 1319 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.785
	movl	%eax, Pm_Qp(%rip)	# m_Qc.785, Pm_Qp
.L220:
	.loc 1 1320 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L204:
	.loc 1 1325 0
	movq	input(%rip), %rax	# input, input.786
	movl	2880(%rax), %eax	# input.786_627->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L221	#,
	.loc 1 1325 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.787
	movl	2884(%rax), %eax	# input.787_629->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L222	#,
.L221:
	.loc 1 1326 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.788
	movl	72600(%rax), %eax	# img.788_631->FieldControl, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L222	#,
	.loc 1 1328 0
	movq	FCBUPFMAD(%rip), %rax	# FCBUPFMAD, FCBUPFMAD.789
	movl	TotalNumberofBasicUnit(%rip), %ecx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.790
	movl	NumberofBasicUnit(%rip), %edx	# NumberofBasicUnit, NumberofBasicUnit.791
	subl	%edx, %ecx	# NumberofBasicUnit.791, D.8039
	movl	%ecx, %edx	# D.8039, D.8039
	movslq	%edx, %rdx	# D.8039, D.8045
	salq	$3, %rdx	#, D.8045
	addq	%rdx, %rax	# D.8045, D.8046
	movsd	(%rax), %xmm1	# *_639, D.8041
	movsd	MADPictureC1(%rip), %xmm0	# MADPictureC1, MADPictureC1.792
	mulsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	MADPictureC2(%rip), %xmm1	# MADPictureC2, MADPictureC2.793
	addsd	%xmm1, %xmm0	# MADPictureC2.793, CurrentFrameMAD.794
	movsd	%xmm0, CurrentFrameMAD(%rip)	# CurrentFrameMAD.794, CurrentFrameMAD
	.loc 1 1329 0
	movl	$0, %eax	#, tmp928
	movq	%rax, TotalBUMAD(%rip)	# tmp928, TotalBUMAD
	.loc 1 1330 0
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.795
	subl	$1, %eax	#, tmp929
	movl	%eax, -36(%rbp)	# tmp929, i
	jmp	.L223	#
.L224:
	.loc 1 1332 0 discriminator 2
	movq	FCBUPFMAD(%rip), %rax	# FCBUPFMAD, FCBUPFMAD.796
	movl	-36(%rbp), %edx	# i, tmp930
	movslq	%edx, %rdx	# tmp930, D.8045
	salq	$3, %rdx	#, D.8045
	addq	%rdx, %rax	# D.8045, D.8046
	movsd	(%rax), %xmm1	# *_653, D.8041
	movsd	MADPictureC1(%rip), %xmm0	# MADPictureC1, MADPictureC1.797
	mulsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	MADPictureC2(%rip), %xmm1	# MADPictureC2, MADPictureC2.798
	addsd	%xmm1, %xmm0	# MADPictureC2.798, CurrentBUMAD.799
	movsd	%xmm0, CurrentBUMAD(%rip)	# CurrentBUMAD.799, CurrentBUMAD
	.loc 1 1333 0 discriminator 2
	movsd	CurrentBUMAD(%rip), %xmm1	# CurrentBUMAD, CurrentBUMAD.800
	movsd	CurrentBUMAD(%rip), %xmm0	# CurrentBUMAD, CurrentBUMAD.801
	mulsd	%xmm1, %xmm0	# CurrentBUMAD.800, D.8041
	movsd	TotalBUMAD(%rip), %xmm1	# TotalBUMAD, TotalBUMAD.802
	addsd	%xmm1, %xmm0	# TotalBUMAD.802, TotalBUMAD.803
	movsd	%xmm0, TotalBUMAD(%rip)	# TotalBUMAD.803, TotalBUMAD
	.loc 1 1330 0 discriminator 2
	subl	$1, -36(%rbp)	#, i
.L223:
	.loc 1 1330 0 is_stmt 0 discriminator 1
	movl	TotalNumberofBasicUnit(%rip), %edx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.804
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.805
	subl	%eax, %edx	# NumberofBasicUnit.805, D.8039
	movl	%edx, %eax	# D.8039, D.8039
	cmpl	-36(%rbp), %eax	# i, D.8039
	jle	.L224	#,
	.loc 1 1325 0 is_stmt 1
	jmp	.L225	#
.L222:
	.loc 1 1338 0
	movq	BUPFMAD(%rip), %rax	# BUPFMAD, BUPFMAD.806
	movl	TotalNumberofBasicUnit(%rip), %ecx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.807
	movl	NumberofBasicUnit(%rip), %edx	# NumberofBasicUnit, NumberofBasicUnit.808
	subl	%edx, %ecx	# NumberofBasicUnit.808, D.8039
	movl	%ecx, %edx	# D.8039, D.8039
	movslq	%edx, %rdx	# D.8039, D.8045
	salq	$3, %rdx	#, D.8045
	addq	%rdx, %rax	# D.8045, D.8046
	movsd	(%rax), %xmm1	# *_671, D.8041
	movsd	MADPictureC1(%rip), %xmm0	# MADPictureC1, MADPictureC1.809
	mulsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	MADPictureC2(%rip), %xmm1	# MADPictureC2, MADPictureC2.810
	addsd	%xmm1, %xmm0	# MADPictureC2.810, CurrentFrameMAD.811
	movsd	%xmm0, CurrentFrameMAD(%rip)	# CurrentFrameMAD.811, CurrentFrameMAD
	.loc 1 1339 0
	movl	$0, %eax	#, tmp931
	movq	%rax, TotalBUMAD(%rip)	# tmp931, TotalBUMAD
	.loc 1 1340 0
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.812
	subl	$1, %eax	#, tmp932
	movl	%eax, -36(%rbp)	# tmp932, i
	jmp	.L226	#
.L227:
	.loc 1 1342 0 discriminator 2
	movq	BUPFMAD(%rip), %rax	# BUPFMAD, BUPFMAD.813
	movl	-36(%rbp), %edx	# i, tmp933
	movslq	%edx, %rdx	# tmp933, D.8045
	salq	$3, %rdx	#, D.8045
	addq	%rdx, %rax	# D.8045, D.8046
	movsd	(%rax), %xmm1	# *_685, D.8041
	movsd	MADPictureC1(%rip), %xmm0	# MADPictureC1, MADPictureC1.814
	mulsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	MADPictureC2(%rip), %xmm1	# MADPictureC2, MADPictureC2.815
	addsd	%xmm1, %xmm0	# MADPictureC2.815, CurrentBUMAD.816
	movsd	%xmm0, CurrentBUMAD(%rip)	# CurrentBUMAD.816, CurrentBUMAD
	.loc 1 1343 0 discriminator 2
	movsd	CurrentBUMAD(%rip), %xmm1	# CurrentBUMAD, CurrentBUMAD.817
	movsd	CurrentBUMAD(%rip), %xmm0	# CurrentBUMAD, CurrentBUMAD.818
	mulsd	%xmm1, %xmm0	# CurrentBUMAD.817, D.8041
	movsd	TotalBUMAD(%rip), %xmm1	# TotalBUMAD, TotalBUMAD.819
	addsd	%xmm1, %xmm0	# TotalBUMAD.819, TotalBUMAD.820
	movsd	%xmm0, TotalBUMAD(%rip)	# TotalBUMAD.820, TotalBUMAD
	.loc 1 1340 0 discriminator 2
	subl	$1, -36(%rbp)	#, i
.L226:
	.loc 1 1340 0 is_stmt 0 discriminator 1
	movl	TotalNumberofBasicUnit(%rip), %edx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.821
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.822
	subl	%eax, %edx	# NumberofBasicUnit.822, D.8039
	movl	%edx, %eax	# D.8039, D.8039
	cmpl	-36(%rbp), %eax	# i, D.8039
	jle	.L227	#,
.L225:
	.loc 1 1348 0 is_stmt 1
	movq	T(%rip), %rax	# T, T.823
	cvtsi2sdq	%rax, %xmm0	# T.823, D.8041
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.824
	mulsd	%xmm1, %xmm0	# CurrentFrameMAD.824, D.8041
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.825
	mulsd	%xmm1, %xmm0	# CurrentFrameMAD.825, D.8041
	movsd	TotalBUMAD(%rip), %xmm1	# TotalBUMAD, TotalBUMAD.826
	divsd	%xmm1, %xmm0	# TotalBUMAD.826, D.8041
	cvttsd2si	%xmm0, %eax	# D.8041, tmp934
	movl	%eax, -32(%rbp)	# tmp934, m_Bits
	.loc 1 1350 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.827
	subl	%eax, -32(%rbp)	# PAveHeaderBits2.827, m_Bits
	.loc 1 1352 0
	movsd	bit_rate(%rip), %xmm2	# bit_rate, bit_rate.828
	movsd	MINVALUE(%rip), %xmm1	# MINVALUE, MINVALUE.829
	movsd	frame_rate(%rip), %xmm0	# frame_rate, frame_rate.830
	mulsd	%xmm0, %xmm1	# frame_rate.830, D.8041
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.831
	cvtsi2sd	%eax, %xmm0	# TotalNumberofBasicUnit.831, D.8041
	mulsd	%xmm1, %xmm0	# D.8041, D.8041
	divsd	%xmm0, %xmm2	# D.8041, D.8041
	movapd	%xmm2, %xmm0	# D.8041, D.8041
	cvttsd2si	%xmm0, %edx	# D.8041, D.8039
	movl	-32(%rbp), %eax	# m_Bits, tmp936
	cmpl	%eax, %edx	# tmp936, D.8039
	cmovge	%edx, %eax	# D.8039,, tmp935
	movl	%eax, -32(%rbp)	# tmp935, m_Bits
	.loc 1 1354 0
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.832
	movsd	m_X1(%rip), %xmm0	# m_X1, m_X1.833
	mulsd	%xmm1, %xmm0	# CurrentFrameMAD.832, D.8041
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.834
	mulsd	%xmm1, %xmm0	# CurrentFrameMAD.834, D.8041
	movsd	m_X1(%rip), %xmm1	# m_X1, m_X1.835
	mulsd	%xmm0, %xmm1	# D.8041, D.8041
	.loc 1 1355 0
	movsd	m_X2(%rip), %xmm2	# m_X2, m_X2.836
	movsd	.LC5(%rip), %xmm0	#, tmp937
	mulsd	%xmm2, %xmm0	# m_X2.836, D.8041
	movsd	CurrentFrameMAD(%rip), %xmm2	# CurrentFrameMAD, CurrentFrameMAD.837
	mulsd	%xmm0, %xmm2	# D.8041, D.8041
	cvtsi2sd	-32(%rbp), %xmm0	# m_Bits, D.8041
	mulsd	%xmm2, %xmm0	# D.8041, D.8041
	.loc 1 1354 0
	addsd	%xmm1, %xmm0	# D.8041, tmp938
	movsd	%xmm0, -24(%rbp)	# tmp938, dtmp
	.loc 1 1356 0
	movsd	m_X2(%rip), %xmm0	# m_X2, m_X2.838
	xorpd	%xmm1, %xmm1	# tmp939
	ucomisd	%xmm1, %xmm0	# tmp939, m_X2.838
	jp	.L245	#,
	xorpd	%xmm1, %xmm1	# tmp940
	ucomisd	%xmm1, %xmm0	# tmp940, m_X2.838
	je	.L228	#,
.L245:
	.loc 1 1356 0 is_stmt 0 discriminator 1
	xorpd	%xmm0, %xmm0	# tmp941
	ucomisd	-24(%rbp), %xmm0	# dtmp, tmp941
	ja	.L228	#,
	movq	-24(%rbp), %rax	# dtmp, tmp942
	movq	%rax, -64(%rbp)	# tmp942, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	movsd	m_X1(%rip), %xmm2	# m_X1, m_X1.839
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.840
	mulsd	%xmm2, %xmm1	# m_X1.839, D.8041
	subsd	%xmm1, %xmm0	# D.8041, D.8041
	xorpd	%xmm1, %xmm1	# tmp943
	ucomisd	%xmm0, %xmm1	# D.8041, tmp943
	jb	.L247	#,
.L228:
	.loc 1 1357 0 is_stmt 1
	movsd	m_X1(%rip), %xmm1	# m_X1, m_X1.841
	movsd	CurrentFrameMAD(%rip), %xmm0	# CurrentFrameMAD, CurrentFrameMAD.842
	mulsd	%xmm1, %xmm0	# m_X1.841, D.8041
	cvtsi2sd	-32(%rbp), %xmm1	# m_Bits, D.8041
	divsd	%xmm1, %xmm0	# D.8041, D.8041
	unpcklpd	%xmm0, %xmm0	# D.8041
	cvtpd2ps	%xmm0, %xmm0	# D.8041, D.8043
	unpcklps	%xmm0, %xmm0	# D.8043, D.8043
	cvtps2pd	%xmm0, %xmm0	# D.8043, m_Qstep.843
	movsd	%xmm0, m_Qstep(%rip)	# m_Qstep.843, m_Qstep
	jmp	.L232	#
.L247:
	.loc 1 1359 0
	movsd	m_X2(%rip), %xmm0	# m_X2, m_X2.844
	addsd	%xmm0, %xmm0	# m_X2.844, D.8041
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.845
	mulsd	%xmm1, %xmm0	# CurrentFrameMAD.845, D.8041
	movsd	%xmm0, -64(%rbp)	# D.8041, %sfp
	movq	-24(%rbp), %rax	# dtmp, tmp944
	movq	%rax, -72(%rbp)	# tmp944, %sfp
	movsd	-72(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	movsd	m_X1(%rip), %xmm2	# m_X1, m_X1.846
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.847
	mulsd	%xmm2, %xmm1	# m_X1.846, D.8041
	subsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	-64(%rbp), %xmm4	# %sfp, D.8041
	divsd	%xmm0, %xmm4	# D.8041, D.8041
	movapd	%xmm4, %xmm0	# D.8041, D.8041
	unpcklpd	%xmm0, %xmm0	# D.8041
	cvtpd2ps	%xmm0, %xmm0	# D.8041, D.8043
	unpcklps	%xmm0, %xmm0	# D.8043, D.8043
	cvtps2pd	%xmm0, %xmm0	# D.8043, m_Qstep.848
	movsd	%xmm0, m_Qstep(%rip)	# m_Qstep.848, m_Qstep
.L232:
	.loc 1 1361 0
	movq	m_Qstep(%rip), %rax	# m_Qstep, m_Qstep.849
	movq	%rax, -64(%rbp)	# m_Qstep.849, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	Qstep2QP	#
	movl	%eax, m_Qc(%rip)	# m_Qc.850, m_Qc
	.loc 1 1362 0
	movl	m_Qp(%rip), %edx	# m_Qp, m_Qp.851
	movl	DDquant(%rip), %eax	# DDquant, DDquant.852
	addl	%eax, %edx	# DDquant.852, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.853
	cmpl	%eax, %edx	# m_Qc.853, D.8039
	cmovle	%edx, %eax	# D.8039,, m_Qc.854
	movl	%eax, m_Qc(%rip)	# m_Qc.854, m_Qc
	.loc 1 1364 0
	movq	input(%rip), %rax	# input, input.855
	movl	3248(%rax), %edx	# input.855_764->basicunit, D.8039
	movl	MBPerRow(%rip), %eax	# MBPerRow, MBPerRow.856
	cmpl	%eax, %edx	# MBPerRow.856, D.8039
	jl	.L233	#,
	.loc 1 1365 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.857
	leal	6(%rax), %edx	#, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.858
	cmpl	%eax, %edx	# m_Qc.858, D.8039
	cmovle	%edx, %eax	# D.8039,, m_Qc.859
	movl	%eax, m_Qc(%rip)	# m_Qc.859, m_Qc
	jmp	.L234	#
.L233:
	.loc 1 1367 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.860
	leal	3(%rax), %edx	#, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.861
	cmpl	%eax, %edx	# m_Qc.861, D.8039
	cmovle	%edx, %eax	# D.8039,, m_Qc.862
	movl	%eax, m_Qc(%rip)	# m_Qc.862, m_Qc
.L234:
	.loc 1 1369 0
	movl	RC_MAX_QUANT(%rip), %edx	# RC_MAX_QUANT, RC_MAX_QUANT.863
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.864
	cmpl	%eax, %edx	# m_Qc.864, RC_MAX_QUANT.863
	cmovle	%edx, %eax	# RC_MAX_QUANT.863,, m_Qc.865
	movl	%eax, m_Qc(%rip)	# m_Qc.865, m_Qc
	.loc 1 1370 0
	movl	m_Qp(%rip), %edx	# m_Qp, m_Qp.866
	movl	DDquant(%rip), %eax	# DDquant, DDquant.867
	subl	%eax, %edx	# DDquant.867, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.868
	cmpl	%eax, %edx	# m_Qc.868, D.8039
	cmovge	%edx, %eax	# D.8039,, m_Qc.869
	movl	%eax, m_Qc(%rip)	# m_Qc.869, m_Qc
	.loc 1 1371 0
	movq	input(%rip), %rax	# input, input.870
	movl	3248(%rax), %edx	# input.870_783->basicunit, D.8039
	movl	MBPerRow(%rip), %eax	# MBPerRow, MBPerRow.871
	cmpl	%eax, %edx	# MBPerRow.871, D.8039
	jl	.L235	#,
	.loc 1 1372 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.872
	leal	-6(%rax), %edx	#, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.873
	cmpl	%eax, %edx	# m_Qc.873, D.8039
	cmovge	%edx, %eax	# D.8039,, m_Qc.874
	movl	%eax, m_Qc(%rip)	# m_Qc.874, m_Qc
	jmp	.L236	#
.L235:
	.loc 1 1374 0
	movl	PAveFrameQP(%rip), %eax	# PAveFrameQP, PAveFrameQP.875
	leal	-3(%rax), %edx	#, D.8039
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.876
	cmpl	%eax, %edx	# m_Qc.876, D.8039
	cmovge	%edx, %eax	# D.8039,, m_Qc.877
	movl	%eax, m_Qc(%rip)	# m_Qc.877, m_Qc
.L236:
	.loc 1 1376 0
	movl	RC_MIN_QUANT(%rip), %edx	# RC_MIN_QUANT, RC_MIN_QUANT.878
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.879
	cmpl	%eax, %edx	# m_Qc.879, RC_MIN_QUANT.878
	cmovge	%edx, %eax	# RC_MIN_QUANT.878,, m_Qc.880
	movl	%eax, m_Qc(%rip)	# m_Qc.880, m_Qc
	.loc 1 1377 0
	movl	TotalFrameQP(%rip), %edx	# TotalFrameQP, TotalFrameQP.881
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.882
	addl	%edx, %eax	# TotalFrameQP.881, TotalFrameQP.883
	movl	%eax, TotalFrameQP(%rip)	# TotalFrameQP.883, TotalFrameQP
	.loc 1 1378 0
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.884
	movl	%eax, Pm_Qp(%rip)	# m_Qc.884, Pm_Qp
	.loc 1 1379 0
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.885
	subl	$1, %eax	#, NumberofBasicUnit.886
	movl	%eax, NumberofBasicUnit(%rip)	# NumberofBasicUnit.886, NumberofBasicUnit
	.loc 1 1380 0
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.887
	testl	%eax, %eax	# NumberofBasicUnit.887
	jne	.L237	#,
	.loc 1 1380 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.888
	movl	24(%rax), %eax	# img.888_804->type, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L237	#,
	.loc 1 1382 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, topfield
	je	.L238	#,
	.loc 1 1382 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.889
	movl	72600(%rax), %eax	# img.889_806->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L237	#,
.L238:
	.loc 1 1385 0 is_stmt 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.890
	movl	1148(%rax), %eax	# active_sps.890_808->frame_mbs_only_flag, D.8040
	testl	%eax, %eax	# D.8040
	jne	.L239	#,
	.loc 1 1385 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.891
	movl	2880(%rax), %eax	# input.891_810->PicInterlace, D.8039
	cmpl	$1, %eax	#, D.8039
	jne	.L240	#,
.L239:
	.loc 1 1387 0 is_stmt 1
	movl	TotalFrameQP(%rip), %eax	# TotalFrameQP, TotalFrameQP.892
	cvtsi2sd	%eax, %xmm0	# TotalFrameQP.892, D.8041
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.893
	cvtsi2sd	%eax, %xmm1	# TotalNumberofBasicUnit.893, D.8041
	divsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	.LC11(%rip), %xmm1	#, tmp945
	addsd	%xmm1, %xmm0	# tmp945, D.8041
	cvttsd2si	%xmm0, %eax	# D.8041, tmp946
	movl	%eax, -28(%rbp)	# tmp946, PAverageQP
	.loc 1 1388 0
	movq	img(%rip), %rax	# img, img.894
	movl	72576(%rax), %edx	# img.894_841->NumberofPPicture, D.8039
	movq	input(%rip), %rax	# input, input.895
	movl	1224(%rax), %eax	# input.895_843->intra_period, D.8039
	subl	$2, %eax	#, D.8039
	cmpl	%eax, %edx	# D.8039, D.8039
	jne	.L241	#,
	.loc 1 1389 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp947
	movl	%eax, QPLastPFrame(%rip)	# tmp947, QPLastPFrame
.L241:
	.loc 1 1391 0
	movq	img(%rip), %rax	# img, img.896
	movq	img(%rip), %rdx	# img, img.897
	movl	72572(%rdx), %ecx	# img.897_847->TotalQpforPPicture, D.8039
	movl	-28(%rbp), %edx	# PAverageQP, tmp948
	addl	%ecx, %edx	# D.8039, D.8039
	movl	%edx, 72572(%rax)	# D.8039, img.896_846->TotalQpforPPicture
	.loc 1 1392 0
	movl	PreviousQp2(%rip), %eax	# PreviousQp2, PreviousQp2.898
	movl	%eax, PreviousQp1(%rip)	# PreviousQp2.898, PreviousQp1
	.loc 1 1393 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp949
	movl	%eax, PreviousQp2(%rip)	# tmp949, PreviousQp2
	.loc 1 1394 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp950
	movl	%eax, PAveFrameQP(%rip)	# tmp950, PAveFrameQP
	.loc 1 1395 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.899
	movl	%eax, PAveHeaderBits3(%rip)	# PAveHeaderBits2.899, PAveHeaderBits3
	jmp	.L237	#
.L240:
	.loc 1 1397 0
	movq	input(%rip), %rax	# input, input.900
	movl	2880(%rax), %eax	# input.900_812->PicInterlace, D.8039
	cmpl	$2, %eax	#, D.8039
	je	.L242	#,
	.loc 1 1398 0
	movq	input(%rip), %rax	# input, input.901
	movl	2884(%rax), %eax	# input.901_814->MbInterlace, D.8039
	testl	%eax, %eax	# D.8039
	je	.L237	#,
.L242:
	.loc 1 1400 0
	movq	img(%rip), %rax	# img, img.902
	movl	72600(%rax), %eax	# img.902_816->FieldControl, D.8039
	testl	%eax, %eax	# D.8039
	jne	.L243	#,
	.loc 1 1402 0
	movl	TotalFrameQP(%rip), %eax	# TotalFrameQP, TotalFrameQP.903
	cvtsi2sd	%eax, %xmm0	# TotalFrameQP.903, D.8041
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.904
	cvtsi2sd	%eax, %xmm1	# TotalNumberofBasicUnit.904, D.8041
	divsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	.LC11(%rip), %xmm1	#, tmp951
	addsd	%xmm1, %xmm0	# tmp951, D.8041
	cvttsd2si	%xmm0, %eax	# D.8041, tmp952
	movl	%eax, -28(%rbp)	# tmp952, PAverageQP
	.loc 1 1403 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp953
	movl	%eax, FrameQPBuffer(%rip)	# tmp953, FrameQPBuffer
	.loc 1 1404 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.905
	movl	%eax, FrameAveHeaderBits(%rip)	# PAveHeaderBits2.905, FrameAveHeaderBits
	jmp	.L237	#
.L243:
	.loc 1 1408 0
	movl	TotalFrameQP(%rip), %eax	# TotalFrameQP, TotalFrameQP.906
	cvtsi2sd	%eax, %xmm0	# TotalFrameQP.906, D.8041
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.907
	cvtsi2sd	%eax, %xmm1	# TotalNumberofBasicUnit.907, D.8041
	divsd	%xmm1, %xmm0	# D.8041, D.8041
	movsd	.LC11(%rip), %xmm1	#, tmp954
	addsd	%xmm1, %xmm0	# tmp954, D.8041
	cvttsd2si	%xmm0, %eax	# D.8041, tmp955
	movl	%eax, -28(%rbp)	# tmp955, PAverageQP
	.loc 1 1409 0
	movl	-28(%rbp), %eax	# PAverageQP, tmp956
	movl	%eax, FieldQPBuffer(%rip)	# tmp956, FieldQPBuffer
	.loc 1 1410 0
	movl	PAveHeaderBits2(%rip), %eax	# PAveHeaderBits2, PAveHeaderBits2.908
	movl	%eax, FieldAveHeaderBits(%rip)	# PAveHeaderBits2.908, FieldAveHeaderBits
.L237:
	.loc 1 1415 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
	jmp	.L124	#
.L182:
	.loc 1 1421 0
	movl	m_Qc(%rip), %eax	# m_Qc, D.8039
.L124:
	.loc 1 1422 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	updateQuantizationParameter, .-updateQuantizationParameter
	.globl	updateRCModel
	.type	updateRCModel, @function
updateRCModel:
.LFB12:
	.loc 1 1433 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	.loc 1 1437 0
	movl	$0, %eax	#, tmp216
	movq	%rax, -176(%rbp)	# tmp216, std
	.loc 1 1439 0
	movl	$0, -184(%rbp)	#, MADModelFlag
	.loc 1 1441 0
	movq	img(%rip), %rax	# img, img.909
	movl	24(%rax), %eax	# img.909_12->type, D.8047
	testl	%eax, %eax	# D.8047
	jne	.L248	#,
	.loc 1 1444 0
	movq	img(%rip), %rax	# img, img.910
	movl	72620(%rax), %edx	# img.910_14->BasicUnit, D.8047
	movq	img(%rip), %rax	# img, img.911
	movl	72608(%rax), %eax	# img.911_16->Frame_Total_Number_MB, D.8047
	cmpl	%eax, %edx	# D.8047, D.8047
	jne	.L250	#,
	.loc 1 1446 0
	movl	$0, %eax	#,
	call	ComputeFrameMAD	#
	movsd	%xmm0, -200(%rbp)	#, %sfp
	movq	-200(%rbp), %rax	# %sfp, CurrentFrameMAD.912
	movq	%rax, CurrentFrameMAD(%rip)	# CurrentFrameMAD.912, CurrentFrameMAD
	.loc 1 1447 0
	movq	img(%rip), %rax	# img, img.913
	movl	72564(%rax), %eax	# img.913_19->NumberofCodedPFrame, tmp217
	movl	%eax, -188(%rbp)	# tmp217, m_Nc
	jmp	.L251	#
.L250:
	.loc 1 1453 0
	movq	input(%rip), %rax	# input, input.914
	movl	2884(%rax), %eax	# input.914_21->MbInterlace, D.8047
	testl	%eax, %eax	# D.8047
	je	.L252	#,
	.loc 1 1453 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.915
	movl	72600(%rax), %eax	# img.915_23->FieldControl, D.8047
	testl	%eax, %eax	# D.8047
	jne	.L252	#,
	.loc 1 1454 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.916
	movsd	72544(%rax), %xmm1	# img.916_25->TotalMADBasicUnit, D.8048
	movq	img(%rip), %rax	# img, img.917
	movl	72620(%rax), %eax	# img.917_27->BasicUnit, D.8047
	cvtsi2sd	%eax, %xmm0	# D.8047, D.8048
	divsd	%xmm0, %xmm1	# D.8048, D.8048
	movapd	%xmm1, %xmm0	# D.8048, D.8048
	movsd	.LC26(%rip), %xmm1	#, tmp218
	divsd	%xmm1, %xmm0	# tmp218, CurrentFrameMAD.918
	movsd	%xmm0, CurrentFrameMAD(%rip)	# CurrentFrameMAD.918, CurrentFrameMAD
	jmp	.L253	#
.L252:
	.loc 1 1456 0
	movq	img(%rip), %rax	# img, img.919
	movsd	72544(%rax), %xmm1	# img.919_32->TotalMADBasicUnit, D.8048
	movq	img(%rip), %rax	# img, img.920
	movl	72620(%rax), %eax	# img.920_34->BasicUnit, D.8047
	cvtsi2sd	%eax, %xmm0	# D.8047, D.8048
	divsd	%xmm0, %xmm1	# D.8048, CurrentFrameMAD.921
	movapd	%xmm1, %xmm0	# CurrentFrameMAD.921, CurrentFrameMAD.921
	movsd	%xmm0, CurrentFrameMAD(%rip)	# CurrentFrameMAD.921, CurrentFrameMAD
.L253:
	.loc 1 1459 0
	movq	img(%rip), %rdx	# img, img.922
	movl	$0, %eax	#, tmp219
	movq	%rax, 72544(%rdx)	# tmp219, img.922_38->TotalMADBasicUnit
	.loc 1 1463 0
	movl	TotalNumberofBasicUnit(%rip), %edx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.923
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.924
	subl	%eax, %edx	# NumberofBasicUnit.924, CodedBasicUnit.925
	movl	%edx, %eax	# CodedBasicUnit.925, CodedBasicUnit.925
	movl	%eax, CodedBasicUnit(%rip)	# CodedBasicUnit.925, CodedBasicUnit
	.loc 1 1464 0
	movl	CodedBasicUnit(%rip), %eax	# CodedBasicUnit, CodedBasicUnit.926
	testl	%eax, %eax	# CodedBasicUnit.926
	jle	.L254	#,
	.loc 1 1466 0
	movl	CodedBasicUnit(%rip), %eax	# CodedBasicUnit, CodedBasicUnit.927
	leal	-1(%rax), %edx	#, D.8047
	movl	PAveHeaderBits1(%rip), %eax	# PAveHeaderBits1, PAveHeaderBits1.928
	imull	%eax, %edx	# PAveHeaderBits1.928, D.8047
	.loc 1 1467 0
	movq	img(%rip), %rax	# img, img.929
	movl	72532(%rax), %eax	# img.929_47->NumberofBasicUnitHeaderBits, D.8047
	.loc 1 1466 0
	addl	%edx, %eax	# D.8047, D.8047
	cvtsi2sd	%eax, %xmm0	# D.8047, D.8048
	.loc 1 1467 0
	movl	CodedBasicUnit(%rip), %eax	# CodedBasicUnit, CodedBasicUnit.930
	cvtsi2sd	%eax, %xmm1	# CodedBasicUnit.930, D.8048
	divsd	%xmm1, %xmm0	# D.8048, D.8048
	movsd	.LC11(%rip), %xmm1	#, tmp220
	addsd	%xmm1, %xmm0	# tmp220, D.8048
	.loc 1 1466 0
	cvttsd2si	%xmm0, %eax	# D.8048, PAveHeaderBits1.931
	movl	%eax, PAveHeaderBits1(%rip)	# PAveHeaderBits1.931, PAveHeaderBits1
	.loc 1 1468 0
	movl	PAveHeaderBits3(%rip), %eax	# PAveHeaderBits3, PAveHeaderBits3.932
	testl	%eax, %eax	# PAveHeaderBits3.932
	jne	.L255	#,
	.loc 1 1469 0
	movl	PAveHeaderBits1(%rip), %eax	# PAveHeaderBits1, PAveHeaderBits1.933
	movl	%eax, PAveHeaderBits2(%rip)	# PAveHeaderBits1.933, PAveHeaderBits2
	jmp	.L254	#
.L255:
	.loc 1 1471 0
	movl	PAveHeaderBits1(%rip), %edx	# PAveHeaderBits1, PAveHeaderBits1.934
	movl	CodedBasicUnit(%rip), %eax	# CodedBasicUnit, CodedBasicUnit.935
	imull	%eax, %edx	# CodedBasicUnit.935, D.8047
	.loc 1 1472 0
	movl	PAveHeaderBits3(%rip), %ecx	# PAveHeaderBits3, PAveHeaderBits3.936
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.937
	imull	%ecx, %eax	# PAveHeaderBits3.936, D.8047
	.loc 1 1471 0
	addl	%edx, %eax	# D.8047, D.8047
	cvtsi2sd	%eax, %xmm0	# D.8047, D.8048
	.loc 1 1472 0
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.938
	cvtsi2sd	%eax, %xmm1	# TotalNumberofBasicUnit.938, D.8048
	divsd	%xmm1, %xmm0	# D.8048, D.8048
	movsd	.LC11(%rip), %xmm1	#, tmp221
	addsd	%xmm1, %xmm0	# tmp221, D.8048
	.loc 1 1471 0
	cvttsd2si	%xmm0, %eax	# D.8048, PAveHeaderBits2.939
	movl	%eax, PAveHeaderBits2(%rip)	# PAveHeaderBits2.939, PAveHeaderBits2
.L254:
	.loc 1 1475 0
	movq	input(%rip), %rax	# input, input.940
	movl	2880(%rax), %eax	# input.940_71->PicInterlace, D.8047
	cmpl	$2, %eax	#, D.8047
	je	.L256	#,
	.loc 1 1475 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.941
	movl	2884(%rax), %eax	# input.941_73->MbInterlace, D.8047
	testl	%eax, %eax	# D.8047
	je	.L257	#,
.L256:
	.loc 1 1476 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.942
	movl	72600(%rax), %eax	# img.942_75->FieldControl, D.8047
	cmpl	$1, %eax	#, D.8047
	jne	.L257	#,
	.loc 1 1477 0
	movq	FCBUCFMAD(%rip), %rax	# FCBUCFMAD, FCBUCFMAD.943
	movl	TotalNumberofBasicUnit(%rip), %edx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.944
	leal	-1(%rdx), %ecx	#, D.8047
	movl	NumberofBasicUnit(%rip), %edx	# NumberofBasicUnit, NumberofBasicUnit.945
	subl	%edx, %ecx	# NumberofBasicUnit.945, D.8047
	movl	%ecx, %edx	# D.8047, D.8047
	movslq	%edx, %rdx	# D.8047, D.8049
	salq	$3, %rdx	#, D.8049
	addq	%rax, %rdx	# FCBUCFMAD.943, D.8050
	movq	CurrentFrameMAD(%rip), %rax	# CurrentFrameMAD, CurrentFrameMAD.946
	movq	%rax, (%rdx)	# CurrentFrameMAD.946, *_84
	jmp	.L258	#
.L257:
	.loc 1 1479 0
	movq	BUCFMAD(%rip), %rax	# BUCFMAD, BUCFMAD.947
	movl	TotalNumberofBasicUnit(%rip), %edx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.948
	leal	-1(%rdx), %ecx	#, D.8047
	movl	NumberofBasicUnit(%rip), %edx	# NumberofBasicUnit, NumberofBasicUnit.949
	subl	%edx, %ecx	# NumberofBasicUnit.949, D.8047
	movl	%ecx, %edx	# D.8047, D.8047
	movslq	%edx, %rdx	# D.8047, D.8049
	salq	$3, %rdx	#, D.8049
	addq	%rax, %rdx	# BUCFMAD.947, D.8050
	movq	CurrentFrameMAD(%rip), %rax	# CurrentFrameMAD, CurrentFrameMAD.950
	movq	%rax, (%rdx)	# CurrentFrameMAD.950, *_93
.L258:
	.loc 1 1481 0
	movl	NumberofBasicUnit(%rip), %eax	# NumberofBasicUnit, NumberofBasicUnit.951
	testl	%eax, %eax	# NumberofBasicUnit.951
	je	.L259	#,
	.loc 1 1482 0
	movq	img(%rip), %rax	# img, img.952
	movl	72564(%rax), %edx	# img.952_96->NumberofCodedPFrame, D.8047
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.953
	imull	%eax, %edx	# TotalNumberofBasicUnit.953, D.8047
	movl	CodedBasicUnit(%rip), %eax	# CodedBasicUnit, CodedBasicUnit.954
	addl	%edx, %eax	# D.8047, tmp222
	movl	%eax, -188(%rbp)	# tmp222, m_Nc
	jmp	.L251	#
.L259:
	.loc 1 1484 0
	movq	img(%rip), %rax	# img, img.955
	movl	72564(%rax), %eax	# img.955_102->NumberofCodedPFrame, D.8047
	leal	-1(%rax), %edx	#, D.8047
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.956
	imull	%eax, %edx	# TotalNumberofBasicUnit.956, D.8047
	movl	CodedBasicUnit(%rip), %eax	# CodedBasicUnit, CodedBasicUnit.957
	addl	%edx, %eax	# D.8047, tmp223
	movl	%eax, -188(%rbp)	# tmp223, m_Nc
.L251:
	.loc 1 1488 0
	cmpl	$1, -188(%rbp)	#, m_Nc
	jle	.L260	#,
	.loc 1 1489 0
	movl	$1, -184(%rbp)	#, MADModelFlag
.L260:
	.loc 1 1491 0
	movq	img(%rip), %rax	# img, img.958
	movl	72524(%rax), %eax	# img.958_110->NumberofHeaderBits, PPreHeader.959
	movl	%eax, PPreHeader(%rip)	# PPreHeader.959, PPreHeader
	.loc 1 1492 0
	movl	$19, -192(%rbp)	#, i
	jmp	.L261	#
.L262:
	.loc 1 1494 0 discriminator 2
	movl	-192(%rbp), %eax	# i, tmp224
	subl	$1, %eax	#, D.8047
	cltq
	movq	Pm_rgQp(,%rax,8), %rax	# Pm_rgQp, D.8048
	movl	-192(%rbp), %edx	# i, tmp227
	movslq	%edx, %rdx	# tmp227, tmp226
	movq	%rax, Pm_rgQp(,%rdx,8)	# D.8048, Pm_rgQp
	.loc 1 1495 0 discriminator 2
	movl	-192(%rbp), %eax	# i, tmp229
	cltq
	movq	Pm_rgQp(,%rax,8), %rax	# Pm_rgQp, D.8048
	movl	-192(%rbp), %edx	# i, tmp231
	movslq	%edx, %rdx	# tmp231, tmp230
	movq	%rax, m_rgQp(,%rdx,8)	# D.8048, m_rgQp
	.loc 1 1496 0 discriminator 2
	movl	-192(%rbp), %eax	# i, tmp232
	subl	$1, %eax	#, D.8047
	cltq
	movq	Pm_rgRp(,%rax,8), %rax	# Pm_rgRp, D.8048
	movl	-192(%rbp), %edx	# i, tmp235
	movslq	%edx, %rdx	# tmp235, tmp234
	movq	%rax, Pm_rgRp(,%rdx,8)	# D.8048, Pm_rgRp
	.loc 1 1497 0 discriminator 2
	movl	-192(%rbp), %eax	# i, tmp237
	cltq
	movq	Pm_rgRp(,%rax,8), %rax	# Pm_rgRp, D.8048
	movl	-192(%rbp), %edx	# i, tmp239
	movslq	%edx, %rdx	# tmp239, tmp238
	movq	%rax, m_rgRp(,%rdx,8)	# D.8048, m_rgRp
	.loc 1 1492 0 discriminator 2
	subl	$1, -192(%rbp)	#, i
.L261:
	.loc 1 1492 0 is_stmt 0 discriminator 1
	cmpl	$0, -192(%rbp)	#, i
	jg	.L262	#,
	.loc 1 1499 0 is_stmt 1
	movl	m_Qc(%rip), %eax	# m_Qc, m_Qc.960
	movl	%eax, %edi	# m_Qc.960,
	call	QP2Qstep	#
	movsd	%xmm0, -200(%rbp)	#, %sfp
	movq	-200(%rbp), %rax	# %sfp, D.8048
	movq	%rax, Pm_rgQp(%rip)	# D.8048, Pm_rgQp
	.loc 1 1501 0
	movq	img(%rip), %rax	# img, img.961
	movl	72620(%rax), %edx	# img.961_122->BasicUnit, D.8047
	movq	img(%rip), %rax	# img, img.962
	movl	72608(%rax), %eax	# img.962_124->Frame_Total_Number_MB, D.8047
	cmpl	%eax, %edx	# D.8047, D.8047
	jne	.L263	#,
	.loc 1 1502 0
	movq	img(%rip), %rax	# img, img.963
	movl	72528(%rax), %eax	# img.963_126->NumberofTextureBits, D.8047
	cvtsi2sd	%eax, %xmm0	# D.8047, D.8048
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.964
	divsd	%xmm1, %xmm0	# CurrentFrameMAD.964, D.8048
	movsd	%xmm0, Pm_rgRp(%rip)	# D.8048, Pm_rgRp
	jmp	.L264	#
.L263:
	.loc 1 1505 0
	movq	img(%rip), %rax	# img, img.965
	movl	72536(%rax), %eax	# img.965_131->NumberofBasicUnitTextureBits, D.8047
	cvtsi2sd	%eax, %xmm0	# D.8047, D.8048
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.966
	divsd	%xmm1, %xmm0	# CurrentFrameMAD.966, D.8048
	movsd	%xmm0, Pm_rgRp(%rip)	# D.8048, Pm_rgRp
.L264:
	.loc 1 1507 0
	movq	Pm_rgQp(%rip), %rax	# Pm_rgQp, D.8048
	movq	%rax, m_rgQp(%rip)	# D.8048, m_rgQp
	.loc 1 1508 0
	movq	Pm_rgRp(%rip), %rax	# Pm_rgRp, D.8048
	movq	%rax, m_rgRp(%rip)	# D.8048, m_rgRp
	.loc 1 1509 0
	movq	Pm_X1(%rip), %rax	# Pm_X1, Pm_X1.967
	movq	%rax, m_X1(%rip)	# Pm_X1.967, m_X1
	.loc 1 1510 0
	movq	Pm_X2(%rip), %rax	# Pm_X2, Pm_X2.968
	movq	%rax, m_X2(%rip)	# Pm_X2.968, m_X2
	.loc 1 1514 0
	movsd	CurrentFrameMAD(%rip), %xmm0	# CurrentFrameMAD, CurrentFrameMAD.970
	movsd	PreviousFrameMAD(%rip), %xmm1	# PreviousFrameMAD, PreviousFrameMAD.971
	.loc 1 1515 0
	ucomisd	%xmm1, %xmm0	# PreviousFrameMAD.971, CurrentFrameMAD.970
	jbe	.L281	#,
	.loc 1 1514 0
	movsd	PreviousFrameMAD(%rip), %xmm0	# PreviousFrameMAD, PreviousFrameMAD.972
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.973
	divsd	%xmm1, %xmm0	# CurrentFrameMAD.973, D.8048
	movsd	.LC27(%rip), %xmm1	#, tmp240
	mulsd	%xmm1, %xmm0	# tmp240, D.8048
	.loc 1 1515 0
	cvttsd2si	%xmm0, %eax	# D.8048, iftmp.969
	jmp	.L267	#
.L281:
	.loc 1 1515 0 is_stmt 0 discriminator 1
	movsd	CurrentFrameMAD(%rip), %xmm0	# CurrentFrameMAD, CurrentFrameMAD.974
	movsd	PreviousFrameMAD(%rip), %xmm1	# PreviousFrameMAD, PreviousFrameMAD.975
	divsd	%xmm1, %xmm0	# PreviousFrameMAD.975, D.8048
	movsd	.LC27(%rip), %xmm1	#, tmp241
	mulsd	%xmm1, %xmm0	# tmp241, D.8048
	cvttsd2si	%xmm0, %eax	# D.8048, iftmp.969
.L267:
	.loc 1 1514 0 is_stmt 1
	movl	%eax, -180(%rbp)	# iftmp.969, n_windowSize
	.loc 1 1516 0
	movl	$1, %eax	#, tmp243
	cmpl	$0, -180(%rbp)	#, n_windowSize
	cmovg	-180(%rbp), %eax	# n_windowSize,, tmp242
	movl	%eax, -180(%rbp)	# tmp242, n_windowSize
	.loc 1 1517 0
	movl	-180(%rbp), %eax	# n_windowSize, tmp245
	cmpl	%eax, -188(%rbp)	# tmp245, m_Nc
	cmovle	-188(%rbp), %eax	# m_Nc,, tmp244
	movl	%eax, -180(%rbp)	# tmp244, n_windowSize
	.loc 1 1518 0
	movl	m_windowSize(%rip), %eax	# m_windowSize, m_windowSize.976
	leal	1(%rax), %edx	#, D.8047
	movl	-180(%rbp), %eax	# n_windowSize, tmp247
	cmpl	%eax, %edx	# tmp247, D.8047
	cmovle	%edx, %eax	# D.8047,, tmp246
	movl	%eax, -180(%rbp)	# tmp246, n_windowSize
	.loc 1 1519 0
	movl	$20, %eax	#, tmp249
	cmpl	$20, -180(%rbp)	#, n_windowSize
	cmovle	-180(%rbp), %eax	# n_windowSize,, tmp248
	movl	%eax, -180(%rbp)	# tmp248, n_windowSize
	.loc 1 1522 0
	movl	-180(%rbp), %eax	# n_windowSize, tmp250
	movl	%eax, m_windowSize(%rip)	# tmp250, m_windowSize
	.loc 1 1524 0
	movl	$0, -192(%rbp)	#, i
	jmp	.L268	#
.L269:
	.loc 1 1526 0 discriminator 2
	movl	-192(%rbp), %eax	# i, tmp252
	cltq
	movl	$0, m_rgRejected(,%rax,4)	#, m_rgRejected
	.loc 1 1524 0 discriminator 2
	addl	$1, -192(%rbp)	#, i
.L268:
	.loc 1 1524 0 is_stmt 0 discriminator 1
	cmpl	$19, -192(%rbp)	#, i
	jle	.L269	#,
	.loc 1 1530 0 is_stmt 1
	movl	-180(%rbp), %eax	# n_windowSize, tmp253
	movl	%eax, %edi	# tmp253,
	call	RCModelEstimator	#
	.loc 1 1532 0
	movl	m_windowSize(%rip), %eax	# m_windowSize, tmp254
	movl	%eax, -180(%rbp)	# tmp254, n_windowSize
	.loc 1 1535 0
	movl	$0, -192(%rbp)	#, i
	jmp	.L270	#
.L271:
	.loc 1 1537 0 discriminator 2
	movsd	m_X1(%rip), %xmm0	# m_X1, m_X1.977
	movl	-192(%rbp), %eax	# i, tmp256
	cltq
	movsd	m_rgQp(,%rax,8), %xmm1	# m_rgQp, D.8048
	divsd	%xmm1, %xmm0	# D.8048, D.8048
	movapd	%xmm0, %xmm1	# D.8048, D.8048
	movsd	m_X2(%rip), %xmm2	# m_X2, m_X2.978
	movl	-192(%rbp), %eax	# i, tmp258
	cltq
	movsd	m_rgQp(,%rax,8), %xmm3	# m_rgQp, D.8048
	movl	-192(%rbp), %eax	# i, tmp260
	cltq
	movsd	m_rgQp(,%rax,8), %xmm0	# m_rgQp, D.8048
	mulsd	%xmm3, %xmm0	# D.8048, D.8048
	divsd	%xmm0, %xmm2	# D.8048, D.8048
	movapd	%xmm2, %xmm0	# D.8048, D.8048
	addsd	%xmm1, %xmm0	# D.8048, D.8048
	movl	-192(%rbp), %eax	# i, tmp262
	cltq
	movsd	m_rgRp(,%rax,8), %xmm1	# m_rgRp, D.8048
	subsd	%xmm1, %xmm0	# D.8048, D.8048
	movl	-192(%rbp), %eax	# i, tmp264
	cltq
	movsd	%xmm0, -160(%rbp,%rax,8)	# D.8048, error
	.loc 1 1538 0 discriminator 2
	movl	-192(%rbp), %eax	# i, tmp266
	cltq
	movsd	-160(%rbp,%rax,8), %xmm1	# error, D.8048
	movl	-192(%rbp), %eax	# i, tmp268
	cltq
	movsd	-160(%rbp,%rax,8), %xmm0	# error, D.8048
	mulsd	%xmm1, %xmm0	# D.8048, D.8048
	movsd	-176(%rbp), %xmm1	# std, tmp270
	addsd	%xmm1, %xmm0	# tmp270, tmp269
	movsd	%xmm0, -176(%rbp)	# tmp269, std
	.loc 1 1535 0 discriminator 2
	addl	$1, -192(%rbp)	#, i
.L270:
	.loc 1 1535 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# i, tmp271
	cmpl	-180(%rbp), %eax	# n_windowSize, tmp271
	jl	.L271	#,
	.loc 1 1540 0 is_stmt 1
	cmpl	$2, -180(%rbp)	#, n_windowSize
	je	.L272	#,
	.loc 1 1540 0 is_stmt 0 discriminator 1
	cvtsi2sd	-180(%rbp), %xmm0	# n_windowSize, D.8048
	movsd	-176(%rbp), %xmm1	# std, tmp272
	divsd	%xmm0, %xmm1	# D.8048, D.8048
	movapd	%xmm1, %xmm0	# D.8048, D.8048
	call	sqrt	#
	movsd	%xmm0, -200(%rbp)	#, %sfp
	movq	-200(%rbp), %rax	# %sfp, iftmp.979
	jmp	.L273	#
.L272:
	.loc 1 1540 0 discriminator 2
	movl	$0, %eax	#, iftmp.979
.L273:
	.loc 1 1540 0 discriminator 3
	movq	%rax, -168(%rbp)	# iftmp.979, threshold
	.loc 1 1541 0 is_stmt 1 discriminator 3
	movl	$0, -192(%rbp)	#, i
	jmp	.L274	#
.L277:
	.loc 1 1543 0
	movl	-192(%rbp), %eax	# i, tmp274
	cltq
	movsd	-160(%rbp,%rax,8), %xmm1	# error, D.8048
	movsd	.LC28(%rip), %xmm0	#, tmp275
	andpd	%xmm1, %xmm0	# D.8048, D.8048
	ucomisd	-168(%rbp), %xmm0	# threshold, D.8048
	jbe	.L275	#,
	.loc 1 1544 0
	movl	-192(%rbp), %eax	# i, tmp277
	cltq
	movl	$1, m_rgRejected(,%rax,4)	#, m_rgRejected
.L275:
	.loc 1 1541 0
	addl	$1, -192(%rbp)	#, i
.L274:
	.loc 1 1541 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# i, tmp278
	cmpl	-180(%rbp), %eax	# n_windowSize, tmp278
	jl	.L277	#,
	.loc 1 1547 0 is_stmt 1
	movl	$0, m_rgRejected(%rip)	#, m_rgRejected
	.loc 1 1550 0
	movl	-180(%rbp), %eax	# n_windowSize, tmp279
	movl	%eax, %edi	# tmp279,
	call	RCModelEstimator	#
	.loc 1 1552 0
	cmpl	$0, -184(%rbp)	#, MADModelFlag
	je	.L278	#,
	.loc 1 1553 0
	movl	$0, %eax	#,
	call	updateMADModel	#
	jmp	.L248	#
.L278:
	.loc 1 1554 0
	movq	img(%rip), %rax	# img, img.980
	movl	24(%rax), %eax	# img.980_188->type, D.8047
	testl	%eax, %eax	# D.8047
	jne	.L248	#,
	.loc 1 1555 0
	movq	CurrentFrameMAD(%rip), %rax	# CurrentFrameMAD, CurrentFrameMAD.981
	movq	%rax, PPictureMAD(%rip)	# CurrentFrameMAD.981, PPictureMAD
.L248:
	.loc 1 1557 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	updateRCModel, .-updateRCModel
	.globl	RCModelEstimator
	.type	RCModelEstimator, @function
RCModelEstimator:
.LFB13:
	.loc 1 1567 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -84(%rbp)	# n_windowSize, n_windowSize
	.loc 1 1568 0
	movl	-84(%rbp), %eax	# n_windowSize, tmp99
	movl	%eax, -76(%rbp)	# tmp99, n_realSize
	.loc 1 1571 0
	movl	$0, %eax	#, tmp100
	movq	%rax, -56(%rbp)	# tmp100, a00
	movl	$0, %eax	#, tmp101
	movq	%rax, -48(%rbp)	# tmp101, a01
	movl	$0, %eax	#, tmp102
	movq	%rax, -40(%rbp)	# tmp102, a10
	movl	$0, %eax	#, tmp103
	movq	%rax, -32(%rbp)	# tmp103, a11
	movl	$0, %eax	#, tmp104
	movq	%rax, -24(%rbp)	# tmp104, b0
	movl	$0, %eax	#, tmp105
	movq	%rax, -16(%rbp)	# tmp105, b1
	.loc 1 1573 0
	movl	$0, -68(%rbp)	#, estimateX2
	.loc 1 1575 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L283	#
.L285:
	.loc 1 1577 0
	movl	-72(%rbp), %eax	# i, tmp107
	cltq
	movl	m_rgRejected(,%rax,4), %eax	# m_rgRejected, D.8051
	testl	%eax, %eax	# D.8051
	je	.L284	#,
	.loc 1 1578 0
	subl	$1, -76(%rbp)	#, n_realSize
.L284:
	.loc 1 1575 0
	addl	$1, -72(%rbp)	#, i
.L283:
	.loc 1 1575 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp108
	cmpl	-84(%rbp), %eax	# n_windowSize, tmp108
	jl	.L285	#,
	.loc 1 1583 0 is_stmt 1
	movl	$0, %eax	#, tmp109
	movq	%rax, m_X2(%rip)	# tmp109, m_X2
	movq	m_X2(%rip), %rax	# m_X2, m_X2.982
	movq	%rax, m_X1(%rip)	# m_X2.982, m_X1
	.loc 1 1585 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L286	#
.L288:
	.loc 1 1587 0
	movl	-72(%rbp), %eax	# i, tmp111
	cltq
	movl	m_rgRejected(,%rax,4), %eax	# m_rgRejected, D.8051
	testl	%eax, %eax	# D.8051
	jne	.L287	#,
	.loc 1 1588 0
	movl	-72(%rbp), %eax	# i, tmp113
	cltq
	movq	m_rgQp(,%rax,8), %rax	# m_rgQp, tmp114
	movq	%rax, -64(%rbp)	# tmp114, oneSampleQ
.L287:
	.loc 1 1585 0
	addl	$1, -72(%rbp)	#, i
.L286:
	.loc 1 1585 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp115
	cmpl	-84(%rbp), %eax	# n_windowSize, tmp115
	jl	.L288	#,
	.loc 1 1590 0 is_stmt 1
	movl	$0, -72(%rbp)	#, i
	jmp	.L289	#
.L293:
	.loc 1 1592 0
	movl	-72(%rbp), %eax	# i, tmp117
	cltq
	movsd	m_rgQp(,%rax,8), %xmm0	# m_rgQp, D.8052
	ucomisd	-64(%rbp), %xmm0	# oneSampleQ, D.8052
	jp	.L301	#,
	ucomisd	-64(%rbp), %xmm0	# oneSampleQ, D.8052
	je	.L290	#,
.L301:
	.loc 1 1592 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp119
	cltq
	movl	m_rgRejected(,%rax,4), %eax	# m_rgRejected, D.8051
	testl	%eax, %eax	# D.8051
	jne	.L290	#,
	.loc 1 1593 0 is_stmt 1
	movl	$1, -68(%rbp)	#, estimateX2
.L290:
	.loc 1 1594 0
	movl	-72(%rbp), %eax	# i, tmp121
	cltq
	movl	m_rgRejected(,%rax,4), %eax	# m_rgRejected, D.8051
	testl	%eax, %eax	# D.8051
	jne	.L292	#,
	.loc 1 1595 0
	movl	-72(%rbp), %eax	# i, tmp123
	cltq
	movsd	m_rgQp(,%rax,8), %xmm1	# m_rgQp, D.8052
	movl	-72(%rbp), %eax	# i, tmp125
	cltq
	movsd	m_rgRp(,%rax,8), %xmm0	# m_rgRp, D.8052
	mulsd	%xmm1, %xmm0	# D.8052, D.8052
	cvtsi2sd	-76(%rbp), %xmm1	# n_realSize, D.8052
	divsd	%xmm1, %xmm0	# D.8052, D.8052
	movsd	m_X1(%rip), %xmm1	# m_X1, m_X1.983
	addsd	%xmm1, %xmm0	# m_X1.983, m_X1.984
	movsd	%xmm0, m_X1(%rip)	# m_X1.984, m_X1
.L292:
	.loc 1 1590 0
	addl	$1, -72(%rbp)	#, i
.L289:
	.loc 1 1590 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp126
	cmpl	-84(%rbp), %eax	# n_windowSize, tmp126
	jl	.L293	#,
	.loc 1 1599 0 is_stmt 1
	cmpl	$0, -76(%rbp)	#, n_realSize
	jle	.L294	#,
	.loc 1 1599 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, estimateX2
	je	.L294	#,
	.loc 1 1601 0 is_stmt 1
	movl	$0, -72(%rbp)	#, i
	jmp	.L295	#
.L297:
	.loc 1 1603 0
	movl	-72(%rbp), %eax	# i, tmp128
	cltq
	movl	m_rgRejected(,%rax,4), %eax	# m_rgRejected, D.8051
	testl	%eax, %eax	# D.8051
	jne	.L296	#,
	.loc 1 1605 0
	movsd	-56(%rbp), %xmm1	# a00, tmp130
	movsd	.LC12(%rip), %xmm0	#, tmp131
	addsd	%xmm1, %xmm0	# tmp130, tmp129
	movsd	%xmm0, -56(%rbp)	# tmp129, a00
	.loc 1 1606 0
	movl	-72(%rbp), %eax	# i, tmp133
	cltq
	movsd	m_rgQp(,%rax,8), %xmm1	# m_rgQp, D.8052
	movsd	.LC12(%rip), %xmm0	#, tmp134
	divsd	%xmm1, %xmm0	# D.8052, D.8052
	movsd	-48(%rbp), %xmm1	# a01, tmp136
	addsd	%xmm1, %xmm0	# tmp136, tmp135
	movsd	%xmm0, -48(%rbp)	# tmp135, a01
	.loc 1 1607 0
	movq	-48(%rbp), %rax	# a01, tmp137
	movq	%rax, -40(%rbp)	# tmp137, a10
	.loc 1 1608 0
	movl	-72(%rbp), %eax	# i, tmp139
	cltq
	movsd	m_rgQp(,%rax,8), %xmm1	# m_rgQp, D.8052
	movl	-72(%rbp), %eax	# i, tmp141
	cltq
	movsd	m_rgQp(,%rax,8), %xmm0	# m_rgQp, D.8052
	mulsd	%xmm1, %xmm0	# D.8052, D.8052
	movsd	.LC12(%rip), %xmm1	#, tmp142
	divsd	%xmm0, %xmm1	# D.8052, D.8052
	movapd	%xmm1, %xmm0	# D.8052, D.8052
	movsd	-32(%rbp), %xmm1	# a11, tmp144
	addsd	%xmm1, %xmm0	# tmp144, tmp143
	movsd	%xmm0, -32(%rbp)	# tmp143, a11
	.loc 1 1609 0
	movl	-72(%rbp), %eax	# i, tmp146
	cltq
	movsd	m_rgQp(,%rax,8), %xmm1	# m_rgQp, D.8052
	movl	-72(%rbp), %eax	# i, tmp148
	cltq
	movsd	m_rgRp(,%rax,8), %xmm0	# m_rgRp, D.8052
	mulsd	%xmm1, %xmm0	# D.8052, D.8052
	movsd	-24(%rbp), %xmm1	# b0, tmp150
	addsd	%xmm1, %xmm0	# tmp150, tmp149
	movsd	%xmm0, -24(%rbp)	# tmp149, b0
	.loc 1 1610 0
	movl	-72(%rbp), %eax	# i, tmp152
	cltq
	movsd	m_rgRp(,%rax,8), %xmm0	# m_rgRp, D.8052
	movsd	-16(%rbp), %xmm1	# b1, tmp154
	addsd	%xmm1, %xmm0	# tmp154, tmp153
	movsd	%xmm0, -16(%rbp)	# tmp153, b1
.L296:
	.loc 1 1601 0
	addl	$1, -72(%rbp)	#, i
.L295:
	.loc 1 1601 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp155
	cmpl	-84(%rbp), %eax	# n_windowSize, tmp155
	jl	.L297	#,
	.loc 1 1614 0 is_stmt 1
	movsd	-56(%rbp), %xmm0	# a00, tmp156
	mulsd	-32(%rbp), %xmm0	# a11, D.8052
	movsd	-48(%rbp), %xmm1	# a01, tmp157
	mulsd	-40(%rbp), %xmm1	# a10, D.8052
	subsd	%xmm1, %xmm0	# D.8052, tmp158
	movsd	%xmm0, -8(%rbp)	# tmp158, MatrixValue
	.loc 1 1615 0
	movsd	-8(%rbp), %xmm1	# MatrixValue, tmp159
	movsd	.LC28(%rip), %xmm0	#, tmp160
	andpd	%xmm1, %xmm0	# tmp159, D.8052
	ucomisd	.LC29(%rip), %xmm0	#, D.8052
	jbe	.L303	#,
	.loc 1 1617 0
	movsd	-24(%rbp), %xmm0	# b0, tmp161
	mulsd	-32(%rbp), %xmm0	# a11, D.8052
	movsd	-16(%rbp), %xmm1	# b1, tmp162
	mulsd	-48(%rbp), %xmm1	# a01, D.8052
	subsd	%xmm1, %xmm0	# D.8052, D.8052
	divsd	-8(%rbp), %xmm0	# MatrixValue, m_X1.985
	movsd	%xmm0, m_X1(%rip)	# m_X1.985, m_X1
	.loc 1 1618 0
	movsd	-16(%rbp), %xmm0	# b1, tmp163
	mulsd	-56(%rbp), %xmm0	# a00, D.8052
	movsd	-24(%rbp), %xmm1	# b0, tmp164
	mulsd	-40(%rbp), %xmm1	# a10, D.8052
	subsd	%xmm1, %xmm0	# D.8052, D.8052
	divsd	-8(%rbp), %xmm0	# MatrixValue, m_X2.986
	movsd	%xmm0, m_X2(%rip)	# m_X2.986, m_X2
	jmp	.L294	#
.L303:
	.loc 1 1622 0
	movsd	-24(%rbp), %xmm0	# b0, tmp165
	divsd	-56(%rbp), %xmm0	# a00, m_X1.987
	movsd	%xmm0, m_X1(%rip)	# m_X1.987, m_X1
	.loc 1 1623 0
	movl	$0, %eax	#, tmp166
	movq	%rax, m_X2(%rip)	# tmp166, m_X2
.L294:
	.loc 1 1627 0
	movq	img(%rip), %rax	# img, img.988
	movl	24(%rax), %eax	# img.988_87->type, D.8053
	testl	%eax, %eax	# D.8053
	jne	.L282	#,
	.loc 1 1629 0
	movq	m_X1(%rip), %rax	# m_X1, m_X1.989
	movq	%rax, Pm_X1(%rip)	# m_X1.989, Pm_X1
	.loc 1 1630 0
	movq	m_X2(%rip), %rax	# m_X2, m_X2.990
	movq	%rax, Pm_X2(%rip)	# m_X2.990, Pm_X2
.L282:
	.loc 1 1632 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	RCModelEstimator, .-RCModelEstimator
	.globl	ComputeFrameMAD
	.type	ComputeFrameMAD, @function
ComputeFrameMAD:
.LFB14:
	.loc 1 1643 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1646 0
	movl	$0, %eax	#, tmp72
	movq	%rax, -8(%rbp)	# tmp72, TotalMAD
	.loc 1 1647 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L305	#
.L306:
	.loc 1 1648 0 discriminator 2
	movq	img(%rip), %rax	# img, img.991
	movq	72584(%rax), %rax	# img.991_7->MADofMB, D.8055
	movl	-12(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, D.8056
	salq	$3, %rdx	#, D.8056
	addq	%rdx, %rax	# D.8056, D.8055
	movsd	(%rax), %xmm0	# *_11, D.8057
	movsd	-8(%rbp), %xmm1	# TotalMAD, tmp75
	addsd	%xmm1, %xmm0	# tmp75, tmp74
	movsd	%xmm0, -8(%rbp)	# tmp74, TotalMAD
	.loc 1 1647 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L305:
	.loc 1 1647 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.992
	movl	72608(%rax), %eax	# img.992_5->Frame_Total_Number_MB, D.8054
	cmpl	-12(%rbp), %eax	# i, D.8054
	jg	.L306	#,
	.loc 1 1649 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.993
	movl	72608(%rax), %eax	# img.993_15->Frame_Total_Number_MB, D.8054
	cvtsi2sd	%eax, %xmm0	# D.8054, D.8057
	movsd	-8(%rbp), %xmm1	# TotalMAD, tmp77
	divsd	%xmm0, %xmm1	# D.8057, tmp76
	movapd	%xmm1, %xmm0	# tmp76, tmp76
	movsd	%xmm0, -8(%rbp)	# tmp76, TotalMAD
	.loc 1 1650 0
	movq	-8(%rbp), %rax	# TotalMAD, D.8057
	.loc 1 1651 0
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ComputeFrameMAD, .-ComputeFrameMAD
	.globl	updateMADModel
	.type	updateMADModel, @function
updateMADModel:
.LFB15:
	.loc 1 1662 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	.loc 1 1666 0
	movl	$0, %eax	#, tmp141
	movq	%rax, -176(%rbp)	# tmp141, std
	.loc 1 1669 0
	movq	img(%rip), %rax	# img, img.994
	movl	72564(%rax), %eax	# img.994_10->NumberofCodedPFrame, D.8058
	testl	%eax, %eax	# D.8058
	jle	.L308	#,
	.loc 1 1674 0
	movq	img(%rip), %rax	# img, img.995
	movl	72620(%rax), %edx	# img.995_12->BasicUnit, D.8058
	movq	img(%rip), %rax	# img, img.996
	movl	72608(%rax), %eax	# img.996_14->Frame_Total_Number_MB, D.8058
	cmpl	%eax, %edx	# D.8058, D.8058
	jne	.L310	#,
	.loc 1 1675 0
	movq	img(%rip), %rax	# img, img.997
	movl	72564(%rax), %eax	# img.997_16->NumberofCodedPFrame, tmp142
	movl	%eax, -184(%rbp)	# tmp142, m_Nc
	jmp	.L311	#
.L310:
	.loc 1 1678 0
	movq	img(%rip), %rax	# img, img.998
	movl	72564(%rax), %edx	# img.998_18->NumberofCodedPFrame, D.8058
	movl	TotalNumberofBasicUnit(%rip), %eax	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.999
	imull	%eax, %edx	# TotalNumberofBasicUnit.999, D.8058
	movl	CodedBasicUnit(%rip), %eax	# CodedBasicUnit, CodedBasicUnit.1000
	addl	%edx, %eax	# D.8058, tmp143
	movl	%eax, -184(%rbp)	# tmp143, m_Nc
.L311:
	.loc 1 1680 0
	movl	$19, -188(%rbp)	#, i
	jmp	.L312	#
.L313:
	.loc 1 1682 0 discriminator 2
	movl	-188(%rbp), %eax	# i, tmp144
	subl	$1, %eax	#, D.8058
	cltq
	movq	PPictureMAD(,%rax,8), %rax	# PPictureMAD, D.8059
	movl	-188(%rbp), %edx	# i, tmp147
	movslq	%edx, %rdx	# tmp147, tmp146
	movq	%rax, PPictureMAD(,%rdx,8)	# D.8059, PPictureMAD
	.loc 1 1683 0 discriminator 2
	movl	-188(%rbp), %eax	# i, tmp149
	cltq
	movq	PPictureMAD(,%rax,8), %rax	# PPictureMAD, D.8059
	movl	-188(%rbp), %edx	# i, tmp151
	movslq	%edx, %rdx	# tmp151, tmp150
	movq	%rax, PictureMAD(,%rdx,8)	# D.8059, PictureMAD
	.loc 1 1684 0 discriminator 2
	movl	-188(%rbp), %eax	# i, tmp152
	subl	$1, %eax	#, D.8058
	cltq
	movq	ReferenceMAD(,%rax,8), %rax	# ReferenceMAD, D.8059
	movl	-188(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	movq	%rax, ReferenceMAD(,%rdx,8)	# D.8059, ReferenceMAD
	.loc 1 1680 0 discriminator 2
	subl	$1, -188(%rbp)	#, i
.L312:
	.loc 1 1680 0 is_stmt 0 discriminator 1
	cmpl	$0, -188(%rbp)	#, i
	jg	.L313	#,
	.loc 1 1686 0 is_stmt 1
	movq	CurrentFrameMAD(%rip), %rax	# CurrentFrameMAD, CurrentFrameMAD.1001
	movq	%rax, PPictureMAD(%rip)	# CurrentFrameMAD.1001, PPictureMAD
	.loc 1 1687 0
	movq	PPictureMAD(%rip), %rax	# PPictureMAD, D.8059
	movq	%rax, PictureMAD(%rip)	# D.8059, PictureMAD
	.loc 1 1688 0
	movq	img(%rip), %rax	# img, img.1002
	movl	72620(%rax), %edx	# img.1002_33->BasicUnit, D.8058
	movq	img(%rip), %rax	# img, img.1003
	movl	72608(%rax), %eax	# img.1003_35->Frame_Total_Number_MB, D.8058
	cmpl	%eax, %edx	# D.8058, D.8058
	jne	.L314	#,
	.loc 1 1689 0
	movq	PictureMAD+8(%rip), %rax	# PictureMAD, D.8059
	movq	%rax, ReferenceMAD(%rip)	# D.8059, ReferenceMAD
	jmp	.L315	#
.L314:
	.loc 1 1692 0
	movq	input(%rip), %rax	# input, input.1004
	movl	2880(%rax), %eax	# input.1004_38->PicInterlace, D.8058
	cmpl	$2, %eax	#, D.8058
	je	.L316	#,
	.loc 1 1692 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1005
	movl	2884(%rax), %eax	# input.1005_40->MbInterlace, D.8058
	testl	%eax, %eax	# D.8058
	je	.L317	#,
.L316:
	.loc 1 1693 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.1006
	movl	72600(%rax), %eax	# img.1006_42->FieldControl, D.8058
	cmpl	$1, %eax	#, D.8058
	jne	.L317	#,
	.loc 1 1694 0
	movq	FCBUPFMAD(%rip), %rax	# FCBUPFMAD, FCBUPFMAD.1007
	movl	TotalNumberofBasicUnit(%rip), %edx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.1008
	leal	-1(%rdx), %ecx	#, D.8058
	movl	NumberofBasicUnit(%rip), %edx	# NumberofBasicUnit, NumberofBasicUnit.1009
	subl	%edx, %ecx	# NumberofBasicUnit.1009, D.8058
	movl	%ecx, %edx	# D.8058, D.8058
	movslq	%edx, %rdx	# D.8058, D.8060
	salq	$3, %rdx	#, D.8060
	addq	%rdx, %rax	# D.8060, D.8061
	movq	(%rax), %rax	# *_51, D.8059
	movq	%rax, ReferenceMAD(%rip)	# D.8059, ReferenceMAD
	jmp	.L315	#
.L317:
	.loc 1 1696 0
	movq	BUPFMAD(%rip), %rax	# BUPFMAD, BUPFMAD.1010
	movl	TotalNumberofBasicUnit(%rip), %edx	# TotalNumberofBasicUnit, TotalNumberofBasicUnit.1011
	leal	-1(%rdx), %ecx	#, D.8058
	movl	NumberofBasicUnit(%rip), %edx	# NumberofBasicUnit, NumberofBasicUnit.1012
	subl	%edx, %ecx	# NumberofBasicUnit.1012, D.8058
	movl	%ecx, %edx	# D.8058, D.8058
	movslq	%edx, %rdx	# D.8058, D.8060
	salq	$3, %rdx	#, D.8060
	addq	%rdx, %rax	# D.8060, D.8061
	movq	(%rax), %rax	# *_60, D.8059
	movq	%rax, ReferenceMAD(%rip)	# D.8059, ReferenceMAD
.L315:
	.loc 1 1698 0
	movq	PMADPictureC1(%rip), %rax	# PMADPictureC1, PMADPictureC1.1013
	movq	%rax, MADPictureC1(%rip)	# PMADPictureC1.1013, MADPictureC1
	.loc 1 1699 0
	movq	PMADPictureC2(%rip), %rax	# PMADPictureC2, PMADPictureC2.1014
	movq	%rax, MADPictureC2(%rip)	# PMADPictureC2.1014, MADPictureC2
	.loc 1 1704 0
	movsd	CurrentFrameMAD(%rip), %xmm0	# CurrentFrameMAD, CurrentFrameMAD.1016
	movsd	PreviousFrameMAD(%rip), %xmm1	# PreviousFrameMAD, PreviousFrameMAD.1017
	.loc 1 1705 0
	ucomisd	%xmm1, %xmm0	# PreviousFrameMAD.1017, CurrentFrameMAD.1016
	jbe	.L334	#,
	.loc 1 1704 0
	movsd	PreviousFrameMAD(%rip), %xmm0	# PreviousFrameMAD, PreviousFrameMAD.1018
	movsd	CurrentFrameMAD(%rip), %xmm1	# CurrentFrameMAD, CurrentFrameMAD.1019
	divsd	%xmm1, %xmm0	# CurrentFrameMAD.1019, D.8059
	movsd	.LC27(%rip), %xmm1	#, tmp156
	mulsd	%xmm1, %xmm0	# tmp156, D.8059
	.loc 1 1705 0
	cvttsd2si	%xmm0, %eax	# D.8059, iftmp.1015
	jmp	.L320	#
.L334:
	.loc 1 1705 0 is_stmt 0 discriminator 1
	movsd	CurrentFrameMAD(%rip), %xmm0	# CurrentFrameMAD, CurrentFrameMAD.1020
	movsd	PreviousFrameMAD(%rip), %xmm1	# PreviousFrameMAD, PreviousFrameMAD.1021
	divsd	%xmm1, %xmm0	# PreviousFrameMAD.1021, D.8059
	movsd	.LC27(%rip), %xmm1	#, tmp157
	mulsd	%xmm1, %xmm0	# tmp157, D.8059
	cvttsd2si	%xmm0, %eax	# D.8059, iftmp.1015
.L320:
	.loc 1 1704 0 is_stmt 1
	movl	%eax, -180(%rbp)	# iftmp.1015, n_windowSize
	.loc 1 1706 0
	movl	-184(%rbp), %eax	# m_Nc, tmp158
	leal	-1(%rax), %edx	#, D.8058
	movl	-180(%rbp), %eax	# n_windowSize, tmp160
	cmpl	%eax, %edx	# tmp160, D.8058
	cmovle	%edx, %eax	# D.8058,, tmp159
	movl	%eax, -180(%rbp)	# tmp159, n_windowSize
	.loc 1 1707 0
	movl	$1, %eax	#, tmp162
	cmpl	$0, -180(%rbp)	#, n_windowSize
	cmovg	-180(%rbp), %eax	# n_windowSize,, tmp161
	movl	%eax, -180(%rbp)	# tmp161, n_windowSize
	.loc 1 1708 0
	movl	MADm_windowSize(%rip), %eax	# MADm_windowSize, MADm_windowSize.1022
	leal	1(%rax), %edx	#, D.8058
	movl	-180(%rbp), %eax	# n_windowSize, tmp164
	cmpl	%eax, %edx	# tmp164, D.8058
	cmovle	%edx, %eax	# D.8058,, tmp163
	movl	%eax, -180(%rbp)	# tmp163, n_windowSize
	.loc 1 1709 0
	movl	$20, %eax	#, tmp166
	cmpl	$20, -180(%rbp)	#, n_windowSize
	cmovle	-180(%rbp), %eax	# n_windowSize,, tmp165
	movl	%eax, -180(%rbp)	# tmp165, n_windowSize
	.loc 1 1711 0
	movl	-180(%rbp), %eax	# n_windowSize, tmp167
	movl	%eax, MADm_windowSize(%rip)	# tmp167, MADm_windowSize
	.loc 1 1713 0
	movl	$0, -188(%rbp)	#, i
	jmp	.L321	#
.L322:
	.loc 1 1715 0 discriminator 2
	movl	-188(%rbp), %eax	# i, tmp169
	cltq
	movl	$0, PictureRejected(,%rax,4)	#, PictureRejected
	.loc 1 1713 0 discriminator 2
	addl	$1, -188(%rbp)	#, i
.L321:
	.loc 1 1713 0 is_stmt 0 discriminator 1
	cmpl	$19, -188(%rbp)	#, i
	jle	.L322	#,
	.loc 1 1718 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.1023
	movl	24(%rax), %eax	# img.1023_86->type, D.8058
	testl	%eax, %eax	# D.8058
	jne	.L323	#,
	.loc 1 1719 0
	movq	CurrentFrameMAD(%rip), %rax	# CurrentFrameMAD, CurrentFrameMAD.1024
	movq	%rax, PreviousFrameMAD(%rip)	# CurrentFrameMAD.1024, PreviousFrameMAD
.L323:
	.loc 1 1722 0
	movl	-180(%rbp), %eax	# n_windowSize, tmp170
	movl	%eax, %edi	# tmp170,
	call	MADModelEstimator	#
	.loc 1 1726 0
	movl	$0, -188(%rbp)	#, i
	jmp	.L324	#
.L325:
	.loc 1 1728 0 discriminator 2
	movl	-188(%rbp), %eax	# i, tmp172
	cltq
	movsd	ReferenceMAD(,%rax,8), %xmm1	# ReferenceMAD, D.8059
	movsd	MADPictureC1(%rip), %xmm0	# MADPictureC1, MADPictureC1.1025
	mulsd	%xmm1, %xmm0	# D.8059, D.8059
	movsd	MADPictureC2(%rip), %xmm1	# MADPictureC2, MADPictureC2.1026
	addsd	%xmm1, %xmm0	# MADPictureC2.1026, D.8059
	movl	-188(%rbp), %eax	# i, tmp174
	cltq
	movsd	PictureMAD(,%rax,8), %xmm1	# PictureMAD, D.8059
	subsd	%xmm1, %xmm0	# D.8059, D.8059
	movl	-188(%rbp), %eax	# i, tmp176
	cltq
	movsd	%xmm0, -160(%rbp,%rax,8)	# D.8059, error
	.loc 1 1729 0 discriminator 2
	movl	-188(%rbp), %eax	# i, tmp178
	cltq
	movsd	-160(%rbp,%rax,8), %xmm1	# error, D.8059
	movl	-188(%rbp), %eax	# i, tmp180
	cltq
	movsd	-160(%rbp,%rax,8), %xmm0	# error, D.8059
	mulsd	%xmm1, %xmm0	# D.8059, D.8059
	movsd	-176(%rbp), %xmm1	# std, tmp182
	addsd	%xmm1, %xmm0	# tmp182, tmp181
	movsd	%xmm0, -176(%rbp)	# tmp181, std
	.loc 1 1726 0 discriminator 2
	addl	$1, -188(%rbp)	#, i
.L324:
	.loc 1 1726 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %eax	# i, tmp183
	cmpl	-180(%rbp), %eax	# n_windowSize, tmp183
	jl	.L325	#,
	.loc 1 1731 0 is_stmt 1
	cmpl	$2, -180(%rbp)	#, n_windowSize
	je	.L326	#,
	.loc 1 1731 0 is_stmt 0 discriminator 1
	cvtsi2sd	-180(%rbp), %xmm0	# n_windowSize, D.8059
	movsd	-176(%rbp), %xmm1	# std, tmp184
	divsd	%xmm0, %xmm1	# D.8059, D.8059
	movapd	%xmm1, %xmm0	# D.8059, D.8059
	call	sqrt	#
	movsd	%xmm0, -200(%rbp)	#, %sfp
	movq	-200(%rbp), %rax	# %sfp, iftmp.1027
	jmp	.L327	#
.L326:
	.loc 1 1731 0 discriminator 2
	movl	$0, %eax	#, iftmp.1027
.L327:
	.loc 1 1731 0 discriminator 3
	movq	%rax, -168(%rbp)	# iftmp.1027, threshold
	.loc 1 1732 0 is_stmt 1 discriminator 3
	movl	$0, -188(%rbp)	#, i
	jmp	.L328	#
.L331:
	.loc 1 1734 0
	movl	-188(%rbp), %eax	# i, tmp186
	cltq
	movsd	-160(%rbp,%rax,8), %xmm1	# error, D.8059
	movsd	.LC28(%rip), %xmm0	#, tmp187
	andpd	%xmm1, %xmm0	# D.8059, D.8059
	ucomisd	-168(%rbp), %xmm0	# threshold, D.8059
	jbe	.L329	#,
	.loc 1 1735 0
	movl	-188(%rbp), %eax	# i, tmp189
	cltq
	movl	$1, PictureRejected(,%rax,4)	#, PictureRejected
.L329:
	.loc 1 1732 0
	addl	$1, -188(%rbp)	#, i
.L328:
	.loc 1 1732 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %eax	# i, tmp190
	cmpl	-180(%rbp), %eax	# n_windowSize, tmp190
	jl	.L331	#,
	.loc 1 1738 0 is_stmt 1
	movl	$0, PictureRejected(%rip)	#, PictureRejected
	.loc 1 1741 0
	movl	-180(%rbp), %eax	# n_windowSize, tmp191
	movl	%eax, %edi	# tmp191,
	call	MADModelEstimator	#
.L308:
	.loc 1 1743 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	updateMADModel, .-updateMADModel
	.globl	MADModelEstimator
	.type	MADModelEstimator, @function
MADModelEstimator:
.LFB16:
	.loc 1 1754 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -84(%rbp)	# n_windowSize, n_windowSize
	.loc 1 1755 0
	movl	-84(%rbp), %eax	# n_windowSize, tmp97
	movl	%eax, -76(%rbp)	# tmp97, n_realSize
	.loc 1 1758 0
	movl	$0, %eax	#, tmp98
	movq	%rax, -56(%rbp)	# tmp98, a00
	movl	$0, %eax	#, tmp99
	movq	%rax, -48(%rbp)	# tmp99, a01
	movl	$0, %eax	#, tmp100
	movq	%rax, -40(%rbp)	# tmp100, a10
	movl	$0, %eax	#, tmp101
	movq	%rax, -32(%rbp)	# tmp101, a11
	movl	$0, %eax	#, tmp102
	movq	%rax, -24(%rbp)	# tmp102, b0
	movl	$0, %eax	#, tmp103
	movq	%rax, -16(%rbp)	# tmp103, b1
	.loc 1 1760 0
	movl	$0, -68(%rbp)	#, estimateX2
	.loc 1 1762 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L336	#
.L338:
	.loc 1 1764 0
	movl	-72(%rbp), %eax	# i, tmp105
	cltq
	movl	PictureRejected(,%rax,4), %eax	# PictureRejected, D.8062
	testl	%eax, %eax	# D.8062
	je	.L337	#,
	.loc 1 1765 0
	subl	$1, -76(%rbp)	#, n_realSize
.L337:
	.loc 1 1762 0
	addl	$1, -72(%rbp)	#, i
.L336:
	.loc 1 1762 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp106
	cmpl	-84(%rbp), %eax	# n_windowSize, tmp106
	jl	.L338	#,
	.loc 1 1770 0 is_stmt 1
	movl	$0, %eax	#, tmp107
	movq	%rax, MADPictureC2(%rip)	# tmp107, MADPictureC2
	movq	MADPictureC2(%rip), %rax	# MADPictureC2, MADPictureC2.1028
	movq	%rax, MADPictureC1(%rip)	# MADPictureC2.1028, MADPictureC1
	.loc 1 1772 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L339	#
.L341:
	.loc 1 1774 0
	movl	-72(%rbp), %eax	# i, tmp109
	cltq
	movl	PictureRejected(,%rax,4), %eax	# PictureRejected, D.8062
	testl	%eax, %eax	# D.8062
	jne	.L340	#,
	.loc 1 1775 0
	movl	-72(%rbp), %eax	# i, tmp111
	cltq
	movq	PictureMAD(,%rax,8), %rax	# PictureMAD, tmp112
	movq	%rax, -64(%rbp)	# tmp112, oneSampleQ
.L340:
	.loc 1 1772 0
	addl	$1, -72(%rbp)	#, i
.L339:
	.loc 1 1772 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp113
	cmpl	-84(%rbp), %eax	# n_windowSize, tmp113
	jl	.L341	#,
	.loc 1 1778 0 is_stmt 1
	movl	$0, -72(%rbp)	#, i
	jmp	.L342	#
.L346:
	.loc 1 1780 0
	movl	-72(%rbp), %eax	# i, tmp115
	cltq
	movsd	PictureMAD(,%rax,8), %xmm0	# PictureMAD, D.8063
	ucomisd	-64(%rbp), %xmm0	# oneSampleQ, D.8063
	jp	.L354	#,
	ucomisd	-64(%rbp), %xmm0	# oneSampleQ, D.8063
	je	.L343	#,
.L354:
	.loc 1 1780 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp117
	cltq
	movl	PictureRejected(,%rax,4), %eax	# PictureRejected, D.8062
	testl	%eax, %eax	# D.8062
	jne	.L343	#,
	.loc 1 1781 0 is_stmt 1
	movl	$1, -68(%rbp)	#, estimateX2
.L343:
	.loc 1 1782 0
	movl	-72(%rbp), %eax	# i, tmp119
	cltq
	movl	PictureRejected(,%rax,4), %eax	# PictureRejected, D.8062
	testl	%eax, %eax	# D.8062
	jne	.L345	#,
	.loc 1 1783 0
	movl	-72(%rbp), %eax	# i, tmp121
	cltq
	movsd	PictureMAD(,%rax,8), %xmm1	# PictureMAD, D.8063
	movl	-72(%rbp), %eax	# i, tmp123
	cltq
	movsd	ReferenceMAD(,%rax,8), %xmm2	# ReferenceMAD, D.8063
	cvtsi2sd	-76(%rbp), %xmm0	# n_realSize, D.8063
	mulsd	%xmm2, %xmm0	# D.8063, D.8063
	divsd	%xmm0, %xmm1	# D.8063, D.8063
	movapd	%xmm1, %xmm0	# D.8063, D.8063
	movsd	MADPictureC1(%rip), %xmm1	# MADPictureC1, MADPictureC1.1029
	addsd	%xmm1, %xmm0	# MADPictureC1.1029, MADPictureC1.1030
	movsd	%xmm0, MADPictureC1(%rip)	# MADPictureC1.1030, MADPictureC1
.L345:
	.loc 1 1778 0
	addl	$1, -72(%rbp)	#, i
.L342:
	.loc 1 1778 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp124
	cmpl	-84(%rbp), %eax	# n_windowSize, tmp124
	jl	.L346	#,
	.loc 1 1787 0 is_stmt 1
	cmpl	$0, -76(%rbp)	#, n_realSize
	jle	.L347	#,
	.loc 1 1787 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, estimateX2
	je	.L347	#,
	.loc 1 1789 0 is_stmt 1
	movl	$0, -72(%rbp)	#, i
	jmp	.L348	#
.L350:
	.loc 1 1791 0
	movl	-72(%rbp), %eax	# i, tmp126
	cltq
	movl	PictureRejected(,%rax,4), %eax	# PictureRejected, D.8062
	testl	%eax, %eax	# D.8062
	jne	.L349	#,
	.loc 1 1793 0
	movsd	-56(%rbp), %xmm1	# a00, tmp128
	movsd	.LC12(%rip), %xmm0	#, tmp129
	addsd	%xmm1, %xmm0	# tmp128, tmp127
	movsd	%xmm0, -56(%rbp)	# tmp127, a00
	.loc 1 1794 0
	movl	-72(%rbp), %eax	# i, tmp131
	cltq
	movsd	ReferenceMAD(,%rax,8), %xmm0	# ReferenceMAD, D.8063
	movsd	-48(%rbp), %xmm1	# a01, tmp133
	addsd	%xmm1, %xmm0	# tmp133, tmp132
	movsd	%xmm0, -48(%rbp)	# tmp132, a01
	.loc 1 1795 0
	movq	-48(%rbp), %rax	# a01, tmp134
	movq	%rax, -40(%rbp)	# tmp134, a10
	.loc 1 1796 0
	movl	-72(%rbp), %eax	# i, tmp136
	cltq
	movsd	ReferenceMAD(,%rax,8), %xmm1	# ReferenceMAD, D.8063
	movl	-72(%rbp), %eax	# i, tmp138
	cltq
	movsd	ReferenceMAD(,%rax,8), %xmm0	# ReferenceMAD, D.8063
	mulsd	%xmm1, %xmm0	# D.8063, D.8063
	movsd	-32(%rbp), %xmm1	# a11, tmp140
	addsd	%xmm1, %xmm0	# tmp140, tmp139
	movsd	%xmm0, -32(%rbp)	# tmp139, a11
	.loc 1 1797 0
	movl	-72(%rbp), %eax	# i, tmp142
	cltq
	movsd	PictureMAD(,%rax,8), %xmm0	# PictureMAD, D.8063
	movsd	-24(%rbp), %xmm1	# b0, tmp144
	addsd	%xmm1, %xmm0	# tmp144, tmp143
	movsd	%xmm0, -24(%rbp)	# tmp143, b0
	.loc 1 1798 0
	movl	-72(%rbp), %eax	# i, tmp146
	cltq
	movsd	PictureMAD(,%rax,8), %xmm1	# PictureMAD, D.8063
	movl	-72(%rbp), %eax	# i, tmp148
	cltq
	movsd	ReferenceMAD(,%rax,8), %xmm0	# ReferenceMAD, D.8063
	mulsd	%xmm1, %xmm0	# D.8063, D.8063
	movsd	-16(%rbp), %xmm1	# b1, tmp150
	addsd	%xmm1, %xmm0	# tmp150, tmp149
	movsd	%xmm0, -16(%rbp)	# tmp149, b1
.L349:
	.loc 1 1789 0
	addl	$1, -72(%rbp)	#, i
.L348:
	.loc 1 1789 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp151
	cmpl	-84(%rbp), %eax	# n_windowSize, tmp151
	jl	.L350	#,
	.loc 1 1802 0 is_stmt 1
	movsd	-56(%rbp), %xmm0	# a00, tmp152
	mulsd	-32(%rbp), %xmm0	# a11, D.8063
	movsd	-48(%rbp), %xmm1	# a01, tmp153
	mulsd	-40(%rbp), %xmm1	# a10, D.8063
	subsd	%xmm1, %xmm0	# D.8063, tmp154
	movsd	%xmm0, -8(%rbp)	# tmp154, MatrixValue
	.loc 1 1803 0
	movsd	-8(%rbp), %xmm1	# MatrixValue, tmp155
	movsd	.LC28(%rip), %xmm0	#, tmp156
	andpd	%xmm1, %xmm0	# tmp155, D.8063
	ucomisd	.LC29(%rip), %xmm0	#, D.8063
	jbe	.L356	#,
	.loc 1 1805 0
	movsd	-24(%rbp), %xmm0	# b0, tmp157
	mulsd	-32(%rbp), %xmm0	# a11, D.8063
	movsd	-16(%rbp), %xmm1	# b1, tmp158
	mulsd	-48(%rbp), %xmm1	# a01, D.8063
	subsd	%xmm1, %xmm0	# D.8063, D.8063
	divsd	-8(%rbp), %xmm0	# MatrixValue, MADPictureC2.1031
	movsd	%xmm0, MADPictureC2(%rip)	# MADPictureC2.1031, MADPictureC2
	.loc 1 1806 0
	movsd	-16(%rbp), %xmm0	# b1, tmp159
	mulsd	-56(%rbp), %xmm0	# a00, D.8063
	movsd	-24(%rbp), %xmm1	# b0, tmp160
	mulsd	-40(%rbp), %xmm1	# a10, D.8063
	subsd	%xmm1, %xmm0	# D.8063, D.8063
	divsd	-8(%rbp), %xmm0	# MatrixValue, MADPictureC1.1032
	movsd	%xmm0, MADPictureC1(%rip)	# MADPictureC1.1032, MADPictureC1
	jmp	.L347	#
.L356:
	.loc 1 1810 0
	movsd	-24(%rbp), %xmm0	# b0, tmp161
	divsd	-48(%rbp), %xmm0	# a01, MADPictureC1.1033
	movsd	%xmm0, MADPictureC1(%rip)	# MADPictureC1.1033, MADPictureC1
	.loc 1 1811 0
	movl	$0, %eax	#, tmp162
	movq	%rax, MADPictureC2(%rip)	# tmp162, MADPictureC2
.L347:
	.loc 1 1815 0
	movq	img(%rip), %rax	# img, img.1034
	movl	24(%rax), %eax	# img.1034_85->type, D.8064
	testl	%eax, %eax	# D.8064
	jne	.L335	#,
	.loc 1 1817 0
	movq	MADPictureC1(%rip), %rax	# MADPictureC1, MADPictureC1.1035
	movq	%rax, PMADPictureC1(%rip)	# MADPictureC1.1035, PMADPictureC1
	.loc 1 1818 0
	movq	MADPictureC2(%rip), %rax	# MADPictureC2, MADPictureC2.1036
	movq	%rax, PMADPictureC2(%rip)	# MADPictureC2.1036, PMADPictureC2
.L335:
	.loc 1 1820 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	MADModelEstimator, .-MADModelEstimator
	.globl	QP2Qstep
	.type	QP2Qstep, @function
QP2Qstep:
.LFB17:
	.loc 1 1831 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# QP, QP
	.loc 1 1836 0
	movl	-20(%rbp), %ecx	# QP, tmp63
	movl	$715827883, %edx	#, tmp65
	movl	%ecx, %eax	# tmp63, tmp78
	imull	%edx	# tmp65
	movl	%ecx, %eax	# tmp63, tmp66
	sarl	$31, %eax	#, tmp66
	subl	%eax, %edx	# tmp66, D.8065
	movl	%edx, %eax	# D.8065, tmp67
	addl	%eax, %eax	# tmp67
	addl	%edx, %eax	# D.8065, tmp67
	addl	%eax, %eax	# tmp68
	subl	%eax, %ecx	# tmp67, D.8065
	movl	%ecx, %edx	# D.8065, D.8065
	movslq	%edx, %rax	# D.8065, tmp69
	movq	QP2QSTEP.5506(,%rax,8), %rax	# QP2QSTEP, tmp70
	movq	%rax, -8(%rbp)	# tmp70, Qstep
	.loc 1 1837 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L358	#
.L359:
	.loc 1 1838 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# Qstep, tmp71
	addsd	%xmm0, %xmm0	# tmp71, tmp72
	movsd	%xmm0, -8(%rbp)	# tmp72, Qstep
	.loc 1 1837 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L358:
	.loc 1 1837 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %ecx	# QP, tmp73
	movl	$715827883, %edx	#, tmp75
	movl	%ecx, %eax	# tmp73, tmp79
	imull	%edx	# tmp75
	movl	%ecx, %eax	# tmp73, tmp76
	sarl	$31, %eax	#, tmp76
	subl	%eax, %edx	# tmp76, D.8065
	movl	%edx, %eax	# D.8065, D.8065
	cmpl	-12(%rbp), %eax	# i, D.8065
	jg	.L359	#,
	.loc 1 1840 0 is_stmt 1
	movq	-8(%rbp), %rax	# Qstep, D.8066
	.loc 1 1841 0
	movq	%rax, -32(%rbp)	# <retval>, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	QP2Qstep, .-QP2Qstep
	.globl	Qstep2QP
	.type	Qstep2QP, @function
Qstep2QP:
.LFB18:
	.loc 1 1852 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movsd	%xmm0, -24(%rbp)	# Qstep, Qstep
	.loc 1 1853 0
	movl	$0, -8(%rbp)	#, q_per
	movl	$0, -4(%rbp)	#, q_rem
	.loc 1 1856 0
	movl	$0, %edi	#,
	call	QP2Qstep	#
	ucomisd	-24(%rbp), %xmm0	# Qstep, D.8068
	jbe	.L387	#,
	.loc 1 1857 0
	movl	$0, %eax	#, D.8067
	jmp	.L364	#
.L387:
	.loc 1 1858 0
	movl	$51, %edi	#,
	call	QP2Qstep	#
	movsd	-24(%rbp), %xmm1	# Qstep, tmp65
	ucomisd	%xmm0, %xmm1	# D.8068, tmp65
	ja	.L381	#,
	.loc 1 1861 0
	jmp	.L367	#
.L381:
	.loc 1 1859 0
	movl	$51, %eax	#, D.8067
	jmp	.L364	#
.L368:
	.loc 1 1863 0
	movsd	-24(%rbp), %xmm0	# Qstep, tmp67
	movsd	.LC26(%rip), %xmm1	#, tmp68
	divsd	%xmm1, %xmm0	# tmp68, tmp66
	movsd	%xmm0, -24(%rbp)	# tmp66, Qstep
	.loc 1 1864 0
	addl	$1, -8(%rbp)	#, q_per
.L367:
	.loc 1 1861 0 discriminator 1
	movl	$5, %edi	#,
	call	QP2Qstep	#
	movsd	-24(%rbp), %xmm1	# Qstep, tmp69
	ucomisd	%xmm0, %xmm1	# D.8068, tmp69
	ja	.L368	#,
	.loc 1 1867 0
	movsd	.LC30(%rip), %xmm0	#, tmp70
	ucomisd	-24(%rbp), %xmm0	# Qstep, tmp70
	jb	.L388	#,
	.loc 1 1869 0
	movabsq	$4603804719079489536, %rax	#, tmp71
	movq	%rax, -24(%rbp)	# tmp71, Qstep
	.loc 1 1870 0
	movl	$0, -4(%rbp)	#, q_rem
	jmp	.L371	#
.L388:
	.loc 1 1872 0
	movsd	.LC32(%rip), %xmm0	#, tmp72
	ucomisd	-24(%rbp), %xmm0	# Qstep, tmp72
	jb	.L389	#,
	.loc 1 1874 0
	movabsq	$4604367669032910848, %rax	#, tmp73
	movq	%rax, -24(%rbp)	# tmp73, Qstep
	.loc 1 1875 0
	movl	$1, -4(%rbp)	#, q_rem
	jmp	.L371	#
.L389:
	.loc 1 1877 0
	movsd	.LC34(%rip), %xmm0	#, tmp74
	ucomisd	-24(%rbp), %xmm0	# Qstep, tmp74
	jb	.L390	#,
	.loc 1 1879 0
	movabsq	$4605493568939753472, %rax	#, tmp75
	movq	%rax, -24(%rbp)	# tmp75, Qstep
	.loc 1 1880 0
	movl	$2, -4(%rbp)	#, q_rem
	jmp	.L371	#
.L390:
	.loc 1 1882 0
	movsd	.LC36(%rip), %xmm0	#, tmp76
	ucomisd	-24(%rbp), %xmm0	# Qstep, tmp76
	jb	.L391	#,
	.loc 1 1884 0
	movabsq	$4606056518893174784, %rax	#, tmp77
	movq	%rax, -24(%rbp)	# tmp77, Qstep
	.loc 1 1885 0
	movl	$3, -4(%rbp)	#, q_rem
	jmp	.L371	#
.L391:
	.loc 1 1887 0
	movsd	.LC38(%rip), %xmm0	#, tmp78
	ucomisd	-24(%rbp), %xmm0	# Qstep, tmp78
	jb	.L392	#,
	.loc 1 1889 0
	movabsq	$4607182418800017408, %rax	#, tmp79
	movq	%rax, -24(%rbp)	# tmp79, Qstep
	.loc 1 1890 0
	movl	$4, -4(%rbp)	#, q_rem
	jmp	.L371	#
.L392:
	.loc 1 1894 0
	movabsq	$4607745368753438720, %rax	#, tmp80
	movq	%rax, -24(%rbp)	# tmp80, Qstep
	.loc 1 1895 0
	movl	$5, -4(%rbp)	#, q_rem
.L371:
	.loc 1 1898 0
	movl	-8(%rbp), %edx	# q_per, tmp81
	movl	%edx, %eax	# tmp81, tmp82
	addl	%eax, %eax	# tmp82
	addl	%edx, %eax	# tmp81, tmp82
	addl	%eax, %eax	# tmp83
	movl	%eax, %edx	# tmp82, D.8067
	movl	-4(%rbp), %eax	# q_rem, tmp84
	addl	%edx, %eax	# D.8067, D.8067
.L364:
	.loc 1 1899 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Qstep2QP, .-Qstep2QP
	.section	.rodata
	.align 32
	.type	QP2QSTEP.5506, @object
	.size	QP2QSTEP.5506, 48
QP2QSTEP.5506:
	.long	0
	.long	1071906816
	.long	0
	.long	1072037888
	.long	0
	.long	1072300032
	.long	0
	.long	1072431104
	.long	0
	.long	1072693248
	.long	0
	.long	1072824320
	.align 8
.LC5:
	.long	0
	.long	1074790400
	.align 8
.LC6:
	.long	1202590843
	.long	1074035425
	.align 8
.LC8:
	.long	2576980378
	.long	1072273817
	.align 8
.LC10:
	.long	3435973837
	.long	1072483532
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.align 8
.LC15:
	.long	858993459
	.long	1071854387
	.align 8
.LC20:
	.long	0
	.long	1076756480
	.align 8
.LC21:
	.long	0
	.long	1073217536
	.align 8
.LC22:
	.long	0
	.long	1075838976
	.align 8
.LC23:
	.long	0
	.long	1075576832
	.align 8
.LC24:
	.long	0
	.long	1081081856
	.align 8
.LC25:
	.long	1003304360
	.long	1073074510
	.align 8
.LC26:
	.long	0
	.long	1073741824
	.align 8
.LC27:
	.long	0
	.long	1077149696
	.align 16
.LC28:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC29:
	.long	2696277389
	.long	1051772663
	.align 8
.LC30:
	.long	0
	.long	1071972352
	.align 8
.LC32:
	.long	0
	.long	1072168960
	.align 8
.LC34:
	.long	0
	.long	1072365568
	.align 8
.LC36:
	.long	0
	.long	1072562176
	.align 8
.LC38:
	.long	0
	.long	1072758784
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "defines.h"
	.file 8 "parsetcommon.h"
	.file 9 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3585
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF728
	.byte	0x1
	.long	.LASF729
	.long	.LASF730
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
	.uleb128 0x5
	.long	0x3f
	.long	0x96
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.long	0xa5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.byte	0x8
	.long	0x3f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0xc5
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF16
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x30
	.long	0xe4
	.uleb128 0x9
	.long	.LASF47
	.byte	0xd8
	.byte	0x6
	.byte	0xf6
	.long	0x265
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0xfc
	.long	0x9f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0xfd
	.long	0x9f
	.byte	0x10
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0xfe
	.long	0x9f
	.byte	0x18
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0xff
	.long	0x9f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x100
	.long	0x9f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x101
	.long	0x9f
	.byte	0x30
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.value	0x102
	.long	0x9f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.value	0x103
	.long	0x9f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.value	0x105
	.long	0x9f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.value	0x106
	.long	0x9f
	.byte	0x50
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.value	0x107
	.long	0x9f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.value	0x109
	.long	0x29d
	.byte	0x60
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.value	0x10b
	.long	0x2a3
	.byte	0x68
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.value	0x119
	.long	0x2a9
	.byte	0x83
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.value	0x11d
	.long	0x2b9
	.byte	0x88
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.value	0x12f
	.long	0x9d
	.byte	0x98
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.value	0x130
	.long	0x9d
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.value	0x131
	.long	0x9d
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF43
	.byte	0x6
	.value	0x132
	.long	0x9d
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.value	0x137
	.long	0x2bf
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF731
	.byte	0x6
	.byte	0x9b
	.uleb128 0x9
	.long	.LASF48
	.byte	0x18
	.byte	0x6
	.byte	0xa1
	.long	0x29d
	.uleb128 0xa
	.long	.LASF49
	.byte	0x6
	.byte	0xa2
	.long	0x29d
	.byte	0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x6
	.byte	0xa3
	.long	0x2a3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF51
	.byte	0x6
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x26c
	.uleb128 0x8
	.byte	0x8
	.long	0xe4
	.uleb128 0x5
	.long	0xa5
	.long	0x2b9
	.uleb128 0x6
	.long	0x96
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x265
	.uleb128 0x5
	.long	0xa5
	.long	0x2cf
	.uleb128 0x6
	.long	0x96
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x1e
	.long	0x46
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x2a
	.long	0x2ef
	.uleb128 0xe
	.long	.LASF53
	.sleb128 0
	.uleb128 0xe
	.long	.LASF54
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x8
	.byte	0x2d
	.long	0x2da
	.uleb128 0xf
	.value	0x19c
	.byte	0x8
	.byte	0x30
	.long	0x381
	.uleb128 0xa
	.long	.LASF56
	.byte	0x8
	.byte	0x32
	.long	0x54
	.byte	0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x8
	.byte	0x33
	.long	0x54
	.byte	0x4
	.uleb128 0xa
	.long	.LASF58
	.byte	0x8
	.byte	0x34
	.long	0x54
	.byte	0x8
	.uleb128 0xa
	.long	.LASF59
	.byte	0x8
	.byte	0x35
	.long	0x381
	.byte	0xc
	.uleb128 0xa
	.long	.LASF60
	.byte	0x8
	.byte	0x36
	.long	0x381
	.byte	0x8c
	.uleb128 0x10
	.long	.LASF61
	.byte	0x8
	.byte	0x37
	.long	0x381
	.value	0x10c
	.uleb128 0x10
	.long	.LASF62
	.byte	0x8
	.byte	0x38
	.long	0x54
	.value	0x18c
	.uleb128 0x10
	.long	.LASF63
	.byte	0x8
	.byte	0x39
	.long	0x54
	.value	0x190
	.uleb128 0x10
	.long	.LASF64
	.byte	0x8
	.byte	0x3a
	.long	0x54
	.value	0x194
	.uleb128 0x10
	.long	.LASF65
	.byte	0x8
	.byte	0x3b
	.long	0x54
	.value	0x198
	.byte	0
	.uleb128 0x5
	.long	0x54
	.long	0x391
	.uleb128 0x6
	.long	0x96
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x3c
	.long	0x2fa
	.uleb128 0xf
	.value	0x3b4
	.byte	0x8
	.byte	0x3f
	.long	0x53d
	.uleb128 0xa
	.long	.LASF67
	.byte	0x8
	.byte	0x41
	.long	0x2ef
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0x8
	.byte	0x42
	.long	0x54
	.byte	0x4
	.uleb128 0xa
	.long	.LASF69
	.byte	0x8
	.byte	0x43
	.long	0x54
	.byte	0x8
	.uleb128 0xa
	.long	.LASF70
	.byte	0x8
	.byte	0x44
	.long	0x54
	.byte	0xc
	.uleb128 0xa
	.long	.LASF71
	.byte	0x8
	.byte	0x45
	.long	0x2ef
	.byte	0x10
	.uleb128 0xa
	.long	.LASF72
	.byte	0x8
	.byte	0x46
	.long	0x2ef
	.byte	0x14
	.uleb128 0xa
	.long	.LASF73
	.byte	0x8
	.byte	0x47
	.long	0x2ef
	.byte	0x18
	.uleb128 0xa
	.long	.LASF74
	.byte	0x8
	.byte	0x48
	.long	0x54
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF75
	.byte	0x8
	.byte	0x49
	.long	0x2ef
	.byte	0x20
	.uleb128 0xa
	.long	.LASF76
	.byte	0x8
	.byte	0x4a
	.long	0x2ef
	.byte	0x24
	.uleb128 0xa
	.long	.LASF77
	.byte	0x8
	.byte	0x4b
	.long	0x54
	.byte	0x28
	.uleb128 0xa
	.long	.LASF78
	.byte	0x8
	.byte	0x4c
	.long	0x54
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF79
	.byte	0x8
	.byte	0x4d
	.long	0x54
	.byte	0x30
	.uleb128 0xa
	.long	.LASF80
	.byte	0x8
	.byte	0x4e
	.long	0x2ef
	.byte	0x34
	.uleb128 0xa
	.long	.LASF81
	.byte	0x8
	.byte	0x4f
	.long	0x54
	.byte	0x38
	.uleb128 0xa
	.long	.LASF82
	.byte	0x8
	.byte	0x50
	.long	0x54
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF83
	.byte	0x8
	.byte	0x51
	.long	0x2ef
	.byte	0x40
	.uleb128 0xa
	.long	.LASF84
	.byte	0x8
	.byte	0x52
	.long	0x54
	.byte	0x44
	.uleb128 0xa
	.long	.LASF85
	.byte	0x8
	.byte	0x53
	.long	0x54
	.byte	0x48
	.uleb128 0xa
	.long	.LASF86
	.byte	0x8
	.byte	0x54
	.long	0x2ef
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF87
	.byte	0x8
	.byte	0x55
	.long	0x2ef
	.byte	0x50
	.uleb128 0xa
	.long	.LASF88
	.byte	0x8
	.byte	0x56
	.long	0x391
	.byte	0x54
	.uleb128 0x10
	.long	.LASF89
	.byte	0x8
	.byte	0x57
	.long	0x2ef
	.value	0x1f0
	.uleb128 0x10
	.long	.LASF90
	.byte	0x8
	.byte	0x58
	.long	0x391
	.value	0x1f4
	.uleb128 0x10
	.long	.LASF91
	.byte	0x8
	.byte	0x5a
	.long	0x2ef
	.value	0x390
	.uleb128 0x10
	.long	.LASF92
	.byte	0x8
	.byte	0x5b
	.long	0x2ef
	.value	0x394
	.uleb128 0x10
	.long	.LASF93
	.byte	0x8
	.byte	0x5c
	.long	0x2ef
	.value	0x398
	.uleb128 0x10
	.long	.LASF94
	.byte	0x8
	.byte	0x5d
	.long	0x54
	.value	0x39c
	.uleb128 0x10
	.long	.LASF95
	.byte	0x8
	.byte	0x5e
	.long	0x54
	.value	0x3a0
	.uleb128 0x10
	.long	.LASF96
	.byte	0x8
	.byte	0x5f
	.long	0x54
	.value	0x3a4
	.uleb128 0x10
	.long	.LASF97
	.byte	0x8
	.byte	0x60
	.long	0x54
	.value	0x3a8
	.uleb128 0x10
	.long	.LASF98
	.byte	0x8
	.byte	0x61
	.long	0x54
	.value	0x3ac
	.uleb128 0x10
	.long	.LASF99
	.byte	0x8
	.byte	0x62
	.long	0x54
	.value	0x3b0
	.byte	0
	.uleb128 0x2
	.long	.LASF100
	.byte	0x8
	.byte	0x63
	.long	0x39c
	.uleb128 0x5
	.long	0x3f
	.long	0x558
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2cf
	.uleb128 0xf
	.value	0x854
	.byte	0x8
	.byte	0x95
	.long	0x71a
	.uleb128 0xa
	.long	.LASF101
	.byte	0x8
	.byte	0x97
	.long	0x2ef
	.byte	0
	.uleb128 0xa
	.long	.LASF102
	.byte	0x8
	.byte	0x99
	.long	0x54
	.byte	0x4
	.uleb128 0xa
	.long	.LASF103
	.byte	0x8
	.byte	0x9a
	.long	0x2ef
	.byte	0x8
	.uleb128 0xa
	.long	.LASF104
	.byte	0x8
	.byte	0x9b
	.long	0x2ef
	.byte	0xc
	.uleb128 0xa
	.long	.LASF105
	.byte	0x8
	.byte	0x9c
	.long	0x2ef
	.byte	0x10
	.uleb128 0xa
	.long	.LASF106
	.byte	0x8
	.byte	0x9d
	.long	0x2ef
	.byte	0x14
	.uleb128 0xa
	.long	.LASF107
	.byte	0x8
	.byte	0x9e
	.long	0x54
	.byte	0x18
	.uleb128 0xa
	.long	.LASF108
	.byte	0x8
	.byte	0x9f
	.long	0x54
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF109
	.byte	0x8
	.byte	0xa0
	.long	0x54
	.byte	0x20
	.uleb128 0xa
	.long	.LASF110
	.byte	0x8
	.byte	0xa2
	.long	0x2ef
	.byte	0x24
	.uleb128 0xa
	.long	.LASF111
	.byte	0x8
	.byte	0xa3
	.long	0x548
	.byte	0x28
	.uleb128 0xa
	.long	.LASF112
	.byte	0x8
	.byte	0xa5
	.long	0x54
	.byte	0x48
	.uleb128 0xa
	.long	.LASF113
	.byte	0x8
	.byte	0xa6
	.long	0x54
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF114
	.byte	0x8
	.byte	0xa7
	.long	0x54
	.byte	0x50
	.uleb128 0xa
	.long	.LASF115
	.byte	0x8
	.byte	0xa8
	.long	0x54
	.byte	0x54
	.uleb128 0xa
	.long	.LASF116
	.byte	0x8
	.byte	0xaa
	.long	0x54
	.byte	0x58
	.uleb128 0xa
	.long	.LASF117
	.byte	0x8
	.byte	0xac
	.long	0x2ef
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF118
	.byte	0x8
	.byte	0xad
	.long	0x3f
	.byte	0x60
	.uleb128 0xa
	.long	.LASF119
	.byte	0x8
	.byte	0xae
	.long	0x3f
	.byte	0x64
	.uleb128 0xa
	.long	.LASF120
	.byte	0x8
	.byte	0xaf
	.long	0x54
	.byte	0x68
	.uleb128 0xa
	.long	.LASF121
	.byte	0x8
	.byte	0xb1
	.long	0x71a
	.byte	0x6c
	.uleb128 0x10
	.long	.LASF122
	.byte	0x8
	.byte	0xb2
	.long	0x54
	.value	0x46c
	.uleb128 0x10
	.long	.LASF123
	.byte	0x8
	.byte	0xb3
	.long	0x2ef
	.value	0x470
	.uleb128 0x10
	.long	.LASF124
	.byte	0x8
	.byte	0xb4
	.long	0x54
	.value	0x474
	.uleb128 0x10
	.long	.LASF125
	.byte	0x8
	.byte	0xb5
	.long	0x54
	.value	0x478
	.uleb128 0x10
	.long	.LASF126
	.byte	0x8
	.byte	0xb6
	.long	0x2ef
	.value	0x47c
	.uleb128 0x10
	.long	.LASF127
	.byte	0x8
	.byte	0xb8
	.long	0x2ef
	.value	0x480
	.uleb128 0x10
	.long	.LASF128
	.byte	0x8
	.byte	0xb9
	.long	0x2ef
	.value	0x484
	.uleb128 0x10
	.long	.LASF129
	.byte	0x8
	.byte	0xba
	.long	0x2ef
	.value	0x488
	.uleb128 0x10
	.long	.LASF130
	.byte	0x8
	.byte	0xbb
	.long	0x54
	.value	0x48c
	.uleb128 0x10
	.long	.LASF131
	.byte	0x8
	.byte	0xbc
	.long	0x54
	.value	0x490
	.uleb128 0x10
	.long	.LASF132
	.byte	0x8
	.byte	0xbd
	.long	0x54
	.value	0x494
	.uleb128 0x10
	.long	.LASF133
	.byte	0x8
	.byte	0xbe
	.long	0x54
	.value	0x498
	.uleb128 0x10
	.long	.LASF134
	.byte	0x8
	.byte	0xbf
	.long	0x2ef
	.value	0x49c
	.uleb128 0x10
	.long	.LASF135
	.byte	0x8
	.byte	0xc0
	.long	0x53d
	.value	0x4a0
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x72a
	.uleb128 0x6
	.long	0x96
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF136
	.byte	0x8
	.byte	0xc1
	.long	0x55e
	.uleb128 0x2
	.long	.LASF137
	.byte	0x9
	.byte	0x3e
	.long	0xb9
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x70
	.long	0x75b
	.uleb128 0xe
	.long	.LASF138
	.sleb128 0
	.uleb128 0xe
	.long	.LASF139
	.sleb128 1
	.uleb128 0xe
	.long	.LASF140
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x9b
	.long	0x79a
	.uleb128 0xe
	.long	.LASF141
	.sleb128 0
	.uleb128 0xe
	.long	.LASF142
	.sleb128 1
	.uleb128 0xe
	.long	.LASF143
	.sleb128 2
	.uleb128 0xe
	.long	.LASF144
	.sleb128 3
	.uleb128 0xe
	.long	.LASF145
	.sleb128 4
	.uleb128 0xe
	.long	.LASF146
	.sleb128 5
	.uleb128 0xe
	.long	.LASF147
	.sleb128 6
	.uleb128 0xe
	.long	.LASF148
	.sleb128 7
	.uleb128 0xe
	.long	.LASF149
	.sleb128 8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0xc1
	.long	0x7c1
	.uleb128 0xe
	.long	.LASF150
	.sleb128 0
	.uleb128 0xe
	.long	.LASF151
	.sleb128 1
	.uleb128 0xe
	.long	.LASF152
	.sleb128 2
	.uleb128 0xe
	.long	.LASF153
	.sleb128 3
	.uleb128 0xe
	.long	.LASF154
	.sleb128 4
	.byte	0
	.uleb128 0x11
	.byte	0x68
	.byte	0x9
	.byte	0xcf
	.long	0x8b1
	.uleb128 0xa
	.long	.LASF155
	.byte	0x9
	.byte	0xd1
	.long	0x54
	.byte	0
	.uleb128 0xa
	.long	.LASF156
	.byte	0x9
	.byte	0xd1
	.long	0x54
	.byte	0x4
	.uleb128 0xa
	.long	.LASF157
	.byte	0x9
	.byte	0xd2
	.long	0x54
	.byte	0x8
	.uleb128 0xa
	.long	.LASF158
	.byte	0x9
	.byte	0xd3
	.long	0x54
	.byte	0xc
	.uleb128 0xa
	.long	.LASF159
	.byte	0x9
	.byte	0xd4
	.long	0x54
	.byte	0x10
	.uleb128 0xa
	.long	.LASF160
	.byte	0x9
	.byte	0xd5
	.long	0x558
	.byte	0x18
	.uleb128 0xa
	.long	.LASF161
	.byte	0x9
	.byte	0xd6
	.long	0xac
	.byte	0x20
	.uleb128 0xa
	.long	.LASF162
	.byte	0x9
	.byte	0xd9
	.long	0x54
	.byte	0x28
	.uleb128 0xa
	.long	.LASF163
	.byte	0x9
	.byte	0xd9
	.long	0x54
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF164
	.byte	0x9
	.byte	0xda
	.long	0x54
	.byte	0x30
	.uleb128 0xa
	.long	.LASF165
	.byte	0x9
	.byte	0xdb
	.long	0x54
	.byte	0x34
	.uleb128 0xa
	.long	.LASF166
	.byte	0x9
	.byte	0xdc
	.long	0x54
	.byte	0x38
	.uleb128 0xa
	.long	.LASF167
	.byte	0x9
	.byte	0xdd
	.long	0x558
	.byte	0x40
	.uleb128 0xa
	.long	.LASF168
	.byte	0x9
	.byte	0xde
	.long	0xac
	.byte	0x48
	.uleb128 0x12
	.string	"C"
	.byte	0x9
	.byte	0xdf
	.long	0x3f
	.byte	0x50
	.uleb128 0x12
	.string	"CS"
	.byte	0x9
	.byte	0xdf
	.long	0x3f
	.byte	0x54
	.uleb128 0x12
	.string	"E"
	.byte	0x9
	.byte	0xe0
	.long	0x3f
	.byte	0x58
	.uleb128 0x12
	.string	"ES"
	.byte	0x9
	.byte	0xe0
	.long	0x3f
	.byte	0x5c
	.uleb128 0x12
	.string	"B"
	.byte	0x9
	.byte	0xe1
	.long	0x3f
	.byte	0x60
	.uleb128 0x12
	.string	"BS"
	.byte	0x9
	.byte	0xe1
	.long	0x3f
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.long	.LASF169
	.byte	0x9
	.byte	0xe2
	.long	0x7c1
	.uleb128 0x2
	.long	.LASF170
	.byte	0x9
	.byte	0xe4
	.long	0x8c7
	.uleb128 0x8
	.byte	0x8
	.long	0x8b1
	.uleb128 0x11
	.byte	0x10
	.byte	0x9
	.byte	0xe7
	.long	0x8fa
	.uleb128 0xa
	.long	.LASF171
	.byte	0x9
	.byte	0xe9
	.long	0x4d
	.byte	0
	.uleb128 0x12
	.string	"MPS"
	.byte	0x9
	.byte	0xea
	.long	0x46
	.byte	0x2
	.uleb128 0xa
	.long	.LASF172
	.byte	0x9
	.byte	0xec
	.long	0x38
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF173
	.byte	0x9
	.byte	0xee
	.long	0x8cd
	.uleb128 0x13
	.value	0x5e0
	.byte	0x9
	.value	0x102
	.long	0x971
	.uleb128 0xb
	.long	.LASF174
	.byte	0x9
	.value	0x104
	.long	0x971
	.byte	0
	.uleb128 0x14
	.long	.LASF175
	.byte	0x9
	.value	0x105
	.long	0x987
	.value	0x210
	.uleb128 0x14
	.long	.LASF176
	.byte	0x9
	.value	0x106
	.long	0x99d
	.value	0x330
	.uleb128 0x14
	.long	.LASF177
	.byte	0x9
	.value	0x107
	.long	0x9b3
	.value	0x470
	.uleb128 0x14
	.long	.LASF178
	.byte	0x9
	.value	0x108
	.long	0x9c9
	.value	0x530
	.uleb128 0x14
	.long	.LASF179
	.byte	0x9
	.value	0x109
	.long	0x9c9
	.value	0x570
	.uleb128 0x14
	.long	.LASF180
	.byte	0x9
	.value	0x10a
	.long	0x9d9
	.value	0x5b0
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0x987
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0x99d
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0x9b3
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0x9c9
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0x9d9
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0x9e9
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.long	.LASF181
	.byte	0x9
	.value	0x10c
	.long	0x905
	.uleb128 0x13
	.value	0x2f60
	.byte	0x9
	.value	0x119
	.long	0xa89
	.uleb128 0xb
	.long	.LASF182
	.byte	0x9
	.value	0x11b
	.long	0xa89
	.byte	0
	.uleb128 0xb
	.long	.LASF183
	.byte	0x9
	.value	0x11c
	.long	0x9c9
	.byte	0x20
	.uleb128 0xb
	.long	.LASF184
	.byte	0x9
	.value	0x11d
	.long	0xa99
	.byte	0x60
	.uleb128 0x14
	.long	.LASF185
	.byte	0x9
	.value	0x11e
	.long	0xaaf
	.value	0x120
	.uleb128 0x14
	.long	.LASF186
	.byte	0x9
	.value	0x11f
	.long	0xac5
	.value	0x3a0
	.uleb128 0x14
	.long	.LASF187
	.byte	0x9
	.value	0x120
	.long	0xac5
	.value	0xd00
	.uleb128 0x14
	.long	.LASF188
	.byte	0x9
	.value	0x121
	.long	0xadb
	.value	0x1660
	.uleb128 0x14
	.long	.LASF189
	.byte	0x9
	.value	0x122
	.long	0xadb
	.value	0x1980
	.uleb128 0x14
	.long	.LASF190
	.byte	0x9
	.value	0x123
	.long	0xac5
	.value	0x1ca0
	.uleb128 0x14
	.long	.LASF191
	.byte	0x9
	.value	0x124
	.long	0xac5
	.value	0x2600
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0xa99
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0xaaf
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0xac5
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0xadb
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x8fa
	.long	0xaf1
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.long	.LASF192
	.byte	0x9
	.value	0x125
	.long	0x9f5
	.uleb128 0x16
	.long	.LASF193
	.byte	0x10
	.byte	0x9
	.value	0x134
	.long	0xb32
	.uleb128 0xb
	.long	.LASF194
	.byte	0x9
	.value	0x136
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF195
	.byte	0x9
	.value	0x137
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF196
	.byte	0x9
	.value	0x138
	.long	0xb32
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xafd
	.uleb128 0x15
	.long	.LASF197
	.byte	0x9
	.value	0x139
	.long	0xafd
	.uleb128 0x16
	.long	.LASF198
	.byte	0x20
	.byte	0x9
	.value	0x13c
	.long	0xba0
	.uleb128 0xb
	.long	.LASF199
	.byte	0x9
	.value	0x13e
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF200
	.byte	0x9
	.value	0x13f
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF201
	.byte	0x9
	.value	0x140
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF202
	.byte	0x9
	.value	0x141
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF203
	.byte	0x9
	.value	0x142
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF196
	.byte	0x9
	.value	0x143
	.long	0xba0
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb44
	.uleb128 0x15
	.long	.LASF204
	.byte	0x9
	.value	0x144
	.long	0xb44
	.uleb128 0x16
	.long	.LASF205
	.byte	0x30
	.byte	0x9
	.value	0x147
	.long	0xc40
	.uleb128 0xb
	.long	.LASF206
	.byte	0x9
	.value	0x149
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF207
	.byte	0x9
	.value	0x14a
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF208
	.byte	0x9
	.value	0x14b
	.long	0x3f
	.byte	0x8
	.uleb128 0x17
	.string	"len"
	.byte	0x9
	.value	0x14c
	.long	0x3f
	.byte	0xc
	.uleb128 0x17
	.string	"inf"
	.byte	0x9
	.value	0x14d
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF209
	.byte	0x9
	.value	0x14e
	.long	0x54
	.byte	0x14
	.uleb128 0xb
	.long	.LASF210
	.byte	0x9
	.value	0x14f
	.long	0x3f
	.byte	0x18
	.uleb128 0x17
	.string	"k"
	.byte	0x9
	.value	0x150
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF211
	.byte	0x9
	.value	0x158
	.long	0xc5a
	.byte	0x20
	.uleb128 0xb
	.long	.LASF212
	.byte	0x9
	.value	0x15a
	.long	0xc76
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.long	0xc5a
	.uleb128 0x19
	.long	0x3f
	.uleb128 0x19
	.long	0x3f
	.uleb128 0x19
	.long	0xac
	.uleb128 0x19
	.long	0xac
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc40
	.uleb128 0x18
	.long	0xc70
	.uleb128 0x19
	.long	0xc70
	.uleb128 0x19
	.long	0x8bc
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xbb2
	.uleb128 0x8
	.byte	0x8
	.long	0xc60
	.uleb128 0x15
	.long	.LASF213
	.byte	0x9
	.value	0x15c
	.long	0xbb2
	.uleb128 0x1a
	.long	.LASF214
	.value	0x278
	.byte	0x9
	.value	0x15f
	.long	0xf02
	.uleb128 0xb
	.long	.LASF215
	.byte	0x9
	.value	0x161
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF216
	.byte	0x9
	.value	0x162
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF217
	.byte	0x9
	.value	0x163
	.long	0x3f
	.byte	0x8
	.uleb128 0x17
	.string	"qp"
	.byte	0x9
	.value	0x164
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF218
	.byte	0x9
	.value	0x165
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF219
	.byte	0x9
	.value	0x166
	.long	0x548
	.byte	0x14
	.uleb128 0xb
	.long	.LASF220
	.byte	0x9
	.value	0x168
	.long	0xf02
	.byte	0x38
	.uleb128 0xb
	.long	.LASF221
	.byte	0x9
	.value	0x169
	.long	0xf02
	.byte	0x40
	.uleb128 0xb
	.long	.LASF222
	.byte	0x9
	.value	0x16b
	.long	0x3f
	.byte	0x48
	.uleb128 0x17
	.string	"mvd"
	.byte	0x9
	.value	0x16c
	.long	0xf08
	.byte	0x4c
	.uleb128 0x14
	.long	.LASF223
	.byte	0x9
	.value	0x16d
	.long	0xf2a
	.value	0x14c
	.uleb128 0x14
	.long	.LASF224
	.byte	0x9
	.value	0x16e
	.long	0xf2a
	.value	0x18c
	.uleb128 0x1b
	.string	"cbp"
	.byte	0x9
	.value	0x16f
	.long	0x3f
	.value	0x1cc
	.uleb128 0x14
	.long	.LASF225
	.byte	0x9
	.value	0x170
	.long	0x735
	.value	0x1d0
	.uleb128 0x14
	.long	.LASF226
	.byte	0x9
	.value	0x171
	.long	0xf3a
	.value	0x1d8
	.uleb128 0x14
	.long	.LASF227
	.byte	0x9
	.value	0x172
	.long	0xf3a
	.value	0x1e8
	.uleb128 0x14
	.long	.LASF228
	.byte	0x9
	.value	0x173
	.long	0x38
	.value	0x1f8
	.uleb128 0x14
	.long	.LASF229
	.byte	0x9
	.value	0x175
	.long	0x3f
	.value	0x200
	.uleb128 0x14
	.long	.LASF230
	.byte	0x9
	.value	0x176
	.long	0x3f
	.value	0x204
	.uleb128 0x14
	.long	.LASF231
	.byte	0x9
	.value	0x177
	.long	0x3f
	.value	0x208
	.uleb128 0x14
	.long	.LASF232
	.byte	0x9
	.value	0x179
	.long	0x3f
	.value	0x20c
	.uleb128 0x14
	.long	.LASF233
	.byte	0x9
	.value	0x17a
	.long	0x3f
	.value	0x210
	.uleb128 0x14
	.long	.LASF234
	.byte	0x9
	.value	0x17c
	.long	0x3f
	.value	0x214
	.uleb128 0x14
	.long	.LASF235
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x218
	.uleb128 0x14
	.long	.LASF236
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x21c
	.uleb128 0x14
	.long	.LASF237
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x220
	.uleb128 0x14
	.long	.LASF238
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x224
	.uleb128 0x14
	.long	.LASF239
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x228
	.uleb128 0x14
	.long	.LASF240
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x22c
	.uleb128 0x14
	.long	.LASF241
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x230
	.uleb128 0x14
	.long	.LASF242
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x234
	.uleb128 0x14
	.long	.LASF243
	.byte	0x9
	.value	0x181
	.long	0x3f
	.value	0x238
	.uleb128 0x14
	.long	.LASF244
	.byte	0x9
	.value	0x182
	.long	0x3f
	.value	0x23c
	.uleb128 0x14
	.long	.LASF245
	.byte	0x9
	.value	0x183
	.long	0x3f
	.value	0x240
	.uleb128 0x14
	.long	.LASF246
	.byte	0x9
	.value	0x186
	.long	0x3f
	.value	0x244
	.uleb128 0x14
	.long	.LASF247
	.byte	0x9
	.value	0x18a
	.long	0xd2
	.value	0x248
	.uleb128 0x14
	.long	.LASF248
	.byte	0x9
	.value	0x18b
	.long	0x3f
	.value	0x250
	.uleb128 0x14
	.long	.LASF249
	.byte	0x9
	.value	0x18c
	.long	0x3f
	.value	0x254
	.uleb128 0x14
	.long	.LASF250
	.byte	0x9
	.value	0x18d
	.long	0x3f
	.value	0x258
	.uleb128 0x14
	.long	.LASF251
	.byte	0x9
	.value	0x18e
	.long	0x3f
	.value	0x25c
	.uleb128 0x14
	.long	.LASF252
	.byte	0x9
	.value	0x18f
	.long	0x3f
	.value	0x260
	.uleb128 0x14
	.long	.LASF253
	.byte	0x9
	.value	0x191
	.long	0x3f
	.value	0x264
	.uleb128 0x14
	.long	.LASF254
	.byte	0x9
	.value	0x192
	.long	0x3f
	.value	0x268
	.uleb128 0x14
	.long	.LASF255
	.byte	0x9
	.value	0x193
	.long	0x3f
	.value	0x26c
	.uleb128 0x14
	.long	.LASF256
	.byte	0x9
	.value	0x195
	.long	0x3f
	.value	0x270
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc88
	.uleb128 0x5
	.long	0x3f
	.long	0xf2a
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0xf3a
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0xf4a
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.long	.LASF257
	.byte	0x9
	.value	0x196
	.long	0xc88
	.uleb128 0x1c
	.byte	0x30
	.byte	0x9
	.value	0x19b
	.long	0xfef
	.uleb128 0xb
	.long	.LASF258
	.byte	0x9
	.value	0x19d
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF259
	.byte	0x9
	.value	0x19e
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF260
	.byte	0x9
	.value	0x19f
	.long	0x2cf
	.byte	0x8
	.uleb128 0xb
	.long	.LASF261
	.byte	0x9
	.value	0x1a0
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF262
	.byte	0x9
	.value	0x1a1
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF263
	.byte	0x9
	.value	0x1a2
	.long	0x2cf
	.byte	0x14
	.uleb128 0xb
	.long	.LASF264
	.byte	0x9
	.value	0x1a4
	.long	0x2cf
	.byte	0x15
	.uleb128 0xb
	.long	.LASF265
	.byte	0x9
	.value	0x1a5
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF266
	.byte	0x9
	.value	0x1a6
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF267
	.byte	0x9
	.value	0x1a8
	.long	0x558
	.byte	0x20
	.uleb128 0xb
	.long	.LASF268
	.byte	0x9
	.value	0x1a9
	.long	0x3f
	.byte	0x28
	.byte	0
	.uleb128 0x15
	.long	.LASF269
	.byte	0x9
	.value	0x1ab
	.long	0xf56
	.uleb128 0x16
	.long	.LASF270
	.byte	0x78
	.byte	0x9
	.value	0x1ae
	.long	0x1030
	.uleb128 0xb
	.long	.LASF271
	.byte	0x9
	.value	0x1b1
	.long	0x1030
	.byte	0
	.uleb128 0xb
	.long	.LASF272
	.byte	0x9
	.value	0x1b2
	.long	0x8b1
	.byte	0x8
	.uleb128 0xb
	.long	.LASF273
	.byte	0x9
	.value	0x1b4
	.long	0x1056
	.byte	0x70
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xfef
	.uleb128 0x1d
	.long	0x3f
	.long	0x104a
	.uleb128 0x19
	.long	0x104a
	.uleb128 0x19
	.long	0x1050
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc7c
	.uleb128 0x8
	.byte	0x8
	.long	0xffb
	.uleb128 0x8
	.byte	0x8
	.long	0x1036
	.uleb128 0x15
	.long	.LASF274
	.byte	0x9
	.value	0x1b8
	.long	0xffb
	.uleb128 0x1c
	.byte	0x98
	.byte	0x9
	.value	0x1bb
	.long	0x1175
	.uleb128 0xb
	.long	.LASF275
	.byte	0x9
	.value	0x1bd
	.long	0x3f
	.byte	0
	.uleb128 0x17
	.string	"qp"
	.byte	0x9
	.value	0x1be
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF276
	.byte	0x9
	.value	0x1bf
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF277
	.byte	0x9
	.value	0x1c0
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF278
	.byte	0x9
	.value	0x1c1
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF279
	.byte	0x9
	.value	0x1c2
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF280
	.byte	0x9
	.value	0x1c3
	.long	0x1175
	.byte	0x18
	.uleb128 0xb
	.long	.LASF281
	.byte	0x9
	.value	0x1c4
	.long	0x117b
	.byte	0x20
	.uleb128 0xb
	.long	.LASF282
	.byte	0x9
	.value	0x1c5
	.long	0x1181
	.byte	0x28
	.uleb128 0xb
	.long	.LASF283
	.byte	0x9
	.value	0x1c8
	.long	0x1187
	.byte	0x30
	.uleb128 0xb
	.long	.LASF284
	.byte	0x9
	.value	0x1ca
	.long	0x3f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF285
	.byte	0x9
	.value	0x1cb
	.long	0xac
	.byte	0x40
	.uleb128 0xb
	.long	.LASF286
	.byte	0x9
	.value	0x1cc
	.long	0xac
	.byte	0x48
	.uleb128 0xb
	.long	.LASF287
	.byte	0x9
	.value	0x1cd
	.long	0xac
	.byte	0x50
	.uleb128 0xb
	.long	.LASF288
	.byte	0x9
	.value	0x1ce
	.long	0x3f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF289
	.byte	0x9
	.value	0x1cf
	.long	0xac
	.byte	0x60
	.uleb128 0xb
	.long	.LASF290
	.byte	0x9
	.value	0x1d0
	.long	0xac
	.byte	0x68
	.uleb128 0xb
	.long	.LASF291
	.byte	0x9
	.value	0x1d1
	.long	0xac
	.byte	0x70
	.uleb128 0xb
	.long	.LASF292
	.byte	0x9
	.value	0x1d3
	.long	0x119c
	.byte	0x78
	.uleb128 0xb
	.long	.LASF293
	.byte	0x9
	.value	0x1d5
	.long	0x11a2
	.byte	0x80
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x105c
	.uleb128 0x8
	.byte	0x8
	.long	0x9e9
	.uleb128 0x8
	.byte	0x8
	.long	0xaf1
	.uleb128 0x8
	.byte	0x8
	.long	0xb38
	.uleb128 0x1d
	.long	0x2ef
	.long	0x119c
	.uleb128 0x19
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x118d
	.uleb128 0x5
	.long	0x3f
	.long	0x11b8
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	.LASF294
	.byte	0x9
	.value	0x1d7
	.long	0x1068
	.uleb128 0x13
	.value	0x338
	.byte	0x9
	.value	0x1db
	.long	0x122e
	.uleb128 0xb
	.long	.LASF295
	.byte	0x9
	.value	0x1dd
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF296
	.byte	0x9
	.value	0x1de
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF297
	.byte	0x9
	.value	0x1df
	.long	0x122e
	.byte	0x8
	.uleb128 0x14
	.long	.LASF298
	.byte	0x9
	.value	0x1e0
	.long	0x3f
	.value	0x328
	.uleb128 0x14
	.long	.LASF299
	.byte	0x9
	.value	0x1e1
	.long	0xcb
	.value	0x32c
	.uleb128 0x14
	.long	.LASF300
	.byte	0x9
	.value	0x1e2
	.long	0xcb
	.value	0x330
	.uleb128 0x14
	.long	.LASF301
	.byte	0x9
	.value	0x1e3
	.long	0xcb
	.value	0x334
	.byte	0
	.uleb128 0x5
	.long	0x123e
	.long	0x123e
	.uleb128 0x6
	.long	0x96
	.byte	0x63
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x11b8
	.uleb128 0x15
	.long	.LASF302
	.byte	0x9
	.value	0x1e4
	.long	0x11c4
	.uleb128 0x8
	.byte	0x8
	.long	0xac
	.uleb128 0x13
	.value	0xe08
	.byte	0x9
	.value	0x295
	.long	0x1a5e
	.uleb128 0xb
	.long	.LASF303
	.byte	0x9
	.value	0x297
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF304
	.byte	0x9
	.value	0x298
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF305
	.byte	0x9
	.value	0x29a
	.long	0x3f
	.byte	0x8
	.uleb128 0x17
	.string	"qp0"
	.byte	0x9
	.value	0x29b
	.long	0x3f
	.byte	0xc
	.uleb128 0x17
	.string	"qpN"
	.byte	0x9
	.value	0x29c
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF306
	.byte	0x9
	.value	0x29d
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF307
	.byte	0x9
	.value	0x29e
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF308
	.byte	0x9
	.value	0x2a0
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF309
	.byte	0x9
	.value	0x2a1
	.long	0x3f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF122
	.byte	0x9
	.value	0x2a4
	.long	0x3f
	.byte	0x24
	.uleb128 0xb
	.long	.LASF310
	.byte	0x9
	.value	0x2a5
	.long	0x3f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF311
	.byte	0x9
	.value	0x2a6
	.long	0x3f
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF312
	.byte	0x9
	.value	0x2a7
	.long	0x3f
	.byte	0x30
	.uleb128 0xb
	.long	.LASF313
	.byte	0x9
	.value	0x2a8
	.long	0x3f
	.byte	0x34
	.uleb128 0xb
	.long	.LASF314
	.byte	0x9
	.value	0x2a9
	.long	0x3f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF315
	.byte	0x9
	.value	0x2aa
	.long	0x3f
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF316
	.byte	0x9
	.value	0x2ac
	.long	0x3f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF317
	.byte	0x9
	.value	0x2ad
	.long	0x3f
	.byte	0x44
	.uleb128 0xb
	.long	.LASF318
	.byte	0x9
	.value	0x2ae
	.long	0x3f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF319
	.byte	0x9
	.value	0x2af
	.long	0x3f
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF320
	.byte	0x9
	.value	0x2b3
	.long	0x1a5e
	.byte	0x50
	.uleb128 0xb
	.long	.LASF321
	.byte	0x9
	.value	0x2b4
	.long	0x1a5e
	.byte	0x90
	.uleb128 0xb
	.long	.LASF322
	.byte	0x9
	.value	0x2b5
	.long	0x3f
	.byte	0xd0
	.uleb128 0xb
	.long	.LASF323
	.byte	0x9
	.value	0x2b6
	.long	0x3f
	.byte	0xd4
	.uleb128 0xb
	.long	.LASF324
	.byte	0x9
	.value	0x2b7
	.long	0x3f
	.byte	0xd8
	.uleb128 0xb
	.long	.LASF325
	.byte	0x9
	.value	0x2b8
	.long	0x3f
	.byte	0xdc
	.uleb128 0xb
	.long	.LASF326
	.byte	0x9
	.value	0x2b9
	.long	0x1a74
	.byte	0xe0
	.uleb128 0x14
	.long	.LASF327
	.byte	0x9
	.value	0x2ba
	.long	0x1a74
	.value	0x1a8
	.uleb128 0x14
	.long	.LASF328
	.byte	0x9
	.value	0x2bb
	.long	0x1a74
	.value	0x270
	.uleb128 0x14
	.long	.LASF329
	.byte	0x9
	.value	0x2bc
	.long	0x1a74
	.value	0x338
	.uleb128 0x14
	.long	.LASF330
	.byte	0x9
	.value	0x2bd
	.long	0x1a74
	.value	0x400
	.uleb128 0x14
	.long	.LASF331
	.byte	0x9
	.value	0x2be
	.long	0x3f
	.value	0x4c8
	.uleb128 0x14
	.long	.LASF332
	.byte	0x9
	.value	0x2c0
	.long	0x3f
	.value	0x4cc
	.uleb128 0x14
	.long	.LASF333
	.byte	0x9
	.value	0x2c1
	.long	0x3f
	.value	0x4d0
	.uleb128 0x14
	.long	.LASF334
	.byte	0x9
	.value	0x2c4
	.long	0x3f
	.value	0x4d4
	.uleb128 0x1b
	.string	"qpB"
	.byte	0x9
	.value	0x2c5
	.long	0x3f
	.value	0x4d8
	.uleb128 0x14
	.long	.LASF335
	.byte	0x9
	.value	0x2c6
	.long	0x3f
	.value	0x4dc
	.uleb128 0x14
	.long	.LASF336
	.byte	0x9
	.value	0x2c7
	.long	0x3f
	.value	0x4e0
	.uleb128 0x14
	.long	.LASF337
	.byte	0x9
	.value	0x2c8
	.long	0x3f
	.value	0x4e4
	.uleb128 0x14
	.long	.LASF338
	.byte	0x9
	.value	0x2ca
	.long	0x3f
	.value	0x4e8
	.uleb128 0x14
	.long	.LASF339
	.byte	0x9
	.value	0x2cb
	.long	0x3f
	.value	0x4ec
	.uleb128 0x14
	.long	.LASF340
	.byte	0x9
	.value	0x2cc
	.long	0x3f
	.value	0x4f0
	.uleb128 0x14
	.long	.LASF341
	.byte	0x9
	.value	0x2cd
	.long	0x3f
	.value	0x4f4
	.uleb128 0x14
	.long	.LASF342
	.byte	0x9
	.value	0x2d1
	.long	0x3f
	.value	0x4f8
	.uleb128 0x14
	.long	.LASF218
	.byte	0x9
	.value	0x2d2
	.long	0x3f
	.value	0x4fc
	.uleb128 0x14
	.long	.LASF343
	.byte	0x9
	.value	0x2d3
	.long	0x3f
	.value	0x500
	.uleb128 0x14
	.long	.LASF344
	.byte	0x9
	.value	0x2d5
	.long	0x3f
	.value	0x504
	.uleb128 0x14
	.long	.LASF345
	.byte	0x9
	.value	0x2d6
	.long	0x3f
	.value	0x508
	.uleb128 0x14
	.long	.LASF346
	.byte	0x9
	.value	0x2d7
	.long	0x3f
	.value	0x50c
	.uleb128 0x14
	.long	.LASF347
	.byte	0x9
	.value	0x2d8
	.long	0x3f
	.value	0x510
	.uleb128 0x14
	.long	.LASF348
	.byte	0x9
	.value	0x2d9
	.long	0x3f
	.value	0x514
	.uleb128 0x14
	.long	.LASF349
	.byte	0x9
	.value	0x2da
	.long	0x3f
	.value	0x518
	.uleb128 0x14
	.long	.LASF350
	.byte	0x9
	.value	0x2db
	.long	0x3f
	.value	0x51c
	.uleb128 0x14
	.long	.LASF351
	.byte	0x9
	.value	0x2dc
	.long	0x3f
	.value	0x520
	.uleb128 0x14
	.long	.LASF352
	.byte	0x9
	.value	0x2dd
	.long	0x3f
	.value	0x524
	.uleb128 0x14
	.long	.LASF353
	.byte	0x9
	.value	0x2de
	.long	0x3f
	.value	0x528
	.uleb128 0x14
	.long	.LASF354
	.byte	0x9
	.value	0x2df
	.long	0x1a84
	.value	0x52c
	.uleb128 0x14
	.long	.LASF355
	.byte	0x9
	.value	0x2e0
	.long	0x3f
	.value	0x92c
	.uleb128 0x14
	.long	.LASF356
	.byte	0x9
	.value	0x2e1
	.long	0x3f
	.value	0x930
	.uleb128 0x14
	.long	.LASF357
	.byte	0x9
	.value	0x2e3
	.long	0x3f
	.value	0x934
	.uleb128 0x14
	.long	.LASF358
	.byte	0x9
	.value	0x2e4
	.long	0x3f
	.value	0x938
	.uleb128 0x14
	.long	.LASF359
	.byte	0x9
	.value	0x2e5
	.long	0x3f
	.value	0x93c
	.uleb128 0x14
	.long	.LASF360
	.byte	0x9
	.value	0x2e7
	.long	0x3f
	.value	0x940
	.uleb128 0x14
	.long	.LASF361
	.byte	0x9
	.value	0x2e8
	.long	0x3f
	.value	0x944
	.uleb128 0x14
	.long	.LASF362
	.byte	0x9
	.value	0x2e9
	.long	0x3f
	.value	0x948
	.uleb128 0x14
	.long	.LASF363
	.byte	0x9
	.value	0x2ea
	.long	0x3f
	.value	0x94c
	.uleb128 0x14
	.long	.LASF364
	.byte	0x9
	.value	0x2eb
	.long	0x3f
	.value	0x950
	.uleb128 0x14
	.long	.LASF365
	.byte	0x9
	.value	0x2ec
	.long	0x3f
	.value	0x954
	.uleb128 0x14
	.long	.LASF366
	.byte	0x9
	.value	0x2ed
	.long	0x3f
	.value	0x958
	.uleb128 0x14
	.long	.LASF367
	.byte	0x9
	.value	0x2ef
	.long	0x3f
	.value	0x95c
	.uleb128 0x14
	.long	.LASF368
	.byte	0x9
	.value	0x2f0
	.long	0x3f
	.value	0x960
	.uleb128 0x14
	.long	.LASF369
	.byte	0x9
	.value	0x2f1
	.long	0x3f
	.value	0x964
	.uleb128 0x14
	.long	.LASF370
	.byte	0x9
	.value	0x2f2
	.long	0x3f
	.value	0x968
	.uleb128 0x14
	.long	.LASF371
	.byte	0x9
	.value	0x2f3
	.long	0x3f
	.value	0x96c
	.uleb128 0x14
	.long	.LASF372
	.byte	0x9
	.value	0x2f4
	.long	0x3f
	.value	0x970
	.uleb128 0x14
	.long	.LASF373
	.byte	0x9
	.value	0x2f5
	.long	0x3f
	.value	0x974
	.uleb128 0x14
	.long	.LASF374
	.byte	0x9
	.value	0x2f7
	.long	0xd2
	.value	0x978
	.uleb128 0x14
	.long	.LASF375
	.byte	0x9
	.value	0x2f9
	.long	0x3f
	.value	0x980
	.uleb128 0x14
	.long	.LASF376
	.byte	0x9
	.value	0x2fb
	.long	0x3f
	.value	0x984
	.uleb128 0x14
	.long	.LASF377
	.byte	0x9
	.value	0x2fe
	.long	0x3f
	.value	0x988
	.uleb128 0x14
	.long	.LASF378
	.byte	0x9
	.value	0x301
	.long	0x3f
	.value	0x98c
	.uleb128 0x14
	.long	.LASF379
	.byte	0x9
	.value	0x301
	.long	0x3f
	.value	0x990
	.uleb128 0x14
	.long	.LASF380
	.byte	0x9
	.value	0x301
	.long	0x3f
	.value	0x994
	.uleb128 0x14
	.long	.LASF381
	.byte	0x9
	.value	0x302
	.long	0x3f
	.value	0x998
	.uleb128 0x14
	.long	.LASF382
	.byte	0x9
	.value	0x302
	.long	0x3f
	.value	0x99c
	.uleb128 0x14
	.long	.LASF383
	.byte	0x9
	.value	0x304
	.long	0x3f
	.value	0x9a0
	.uleb128 0x14
	.long	.LASF384
	.byte	0x9
	.value	0x305
	.long	0x3f
	.value	0x9a4
	.uleb128 0x14
	.long	.LASF385
	.byte	0x9
	.value	0x306
	.long	0x3f
	.value	0x9a8
	.uleb128 0x14
	.long	.LASF386
	.byte	0x9
	.value	0x309
	.long	0x3f
	.value	0x9ac
	.uleb128 0x14
	.long	.LASF387
	.byte	0x9
	.value	0x30a
	.long	0x1a74
	.value	0x9b0
	.uleb128 0x14
	.long	.LASF388
	.byte	0x9
	.value	0x30b
	.long	0x1a74
	.value	0xa78
	.uleb128 0x14
	.long	.LASF389
	.byte	0x9
	.value	0x30e
	.long	0x3f
	.value	0xb40
	.uleb128 0x14
	.long	.LASF390
	.byte	0x9
	.value	0x30f
	.long	0x3f
	.value	0xb44
	.uleb128 0x14
	.long	.LASF391
	.byte	0x9
	.value	0x311
	.long	0x3f
	.value	0xb48
	.uleb128 0x14
	.long	.LASF392
	.byte	0x9
	.value	0x313
	.long	0x3f
	.value	0xb4c
	.uleb128 0x14
	.long	.LASF393
	.byte	0x9
	.value	0x314
	.long	0x3f
	.value	0xb50
	.uleb128 0x14
	.long	.LASF394
	.byte	0x9
	.value	0x315
	.long	0x3f
	.value	0xb54
	.uleb128 0x14
	.long	.LASF395
	.byte	0x9
	.value	0x316
	.long	0x3f
	.value	0xb58
	.uleb128 0x14
	.long	.LASF396
	.byte	0x9
	.value	0x317
	.long	0x3f
	.value	0xb5c
	.uleb128 0x14
	.long	.LASF397
	.byte	0x9
	.value	0x318
	.long	0x3f
	.value	0xb60
	.uleb128 0x14
	.long	.LASF398
	.byte	0x9
	.value	0x319
	.long	0x3f
	.value	0xb64
	.uleb128 0x14
	.long	.LASF399
	.byte	0x9
	.value	0x31b
	.long	0x3f
	.value	0xb68
	.uleb128 0x14
	.long	.LASF400
	.byte	0x9
	.value	0x31d
	.long	0x3f
	.value	0xb6c
	.uleb128 0x14
	.long	.LASF253
	.byte	0x9
	.value	0x31e
	.long	0x3f
	.value	0xb70
	.uleb128 0x14
	.long	.LASF254
	.byte	0x9
	.value	0x31f
	.long	0x3f
	.value	0xb74
	.uleb128 0x14
	.long	.LASF255
	.byte	0x9
	.value	0x320
	.long	0x3f
	.value	0xb78
	.uleb128 0x14
	.long	.LASF401
	.byte	0x9
	.value	0x322
	.long	0x3f
	.value	0xb7c
	.uleb128 0x14
	.long	.LASF402
	.byte	0x9
	.value	0x323
	.long	0x3f
	.value	0xb80
	.uleb128 0x14
	.long	.LASF403
	.byte	0x9
	.value	0x324
	.long	0x3f
	.value	0xb84
	.uleb128 0x14
	.long	.LASF404
	.byte	0x9
	.value	0x327
	.long	0x1a74
	.value	0xb88
	.uleb128 0x14
	.long	.LASF405
	.byte	0x9
	.value	0x328
	.long	0x3f
	.value	0xc50
	.uleb128 0x14
	.long	.LASF406
	.byte	0x9
	.value	0x329
	.long	0x3f
	.value	0xc54
	.uleb128 0x14
	.long	.LASF407
	.byte	0x9
	.value	0x32b
	.long	0xac
	.value	0xc58
	.uleb128 0x14
	.long	.LASF408
	.byte	0x9
	.value	0x32c
	.long	0xac
	.value	0xc60
	.uleb128 0x14
	.long	.LASF409
	.byte	0x9
	.value	0x32d
	.long	0x558
	.value	0xc68
	.uleb128 0x14
	.long	.LASF410
	.byte	0x9
	.value	0x32e
	.long	0xac
	.value	0xc70
	.uleb128 0x14
	.long	.LASF411
	.byte	0x9
	.value	0x330
	.long	0x3f
	.value	0xc78
	.uleb128 0x14
	.long	.LASF412
	.byte	0x9
	.value	0x331
	.long	0x3f
	.value	0xc7c
	.uleb128 0x14
	.long	.LASF413
	.byte	0x9
	.value	0x332
	.long	0x3f
	.value	0xc80
	.uleb128 0x14
	.long	.LASF414
	.byte	0x9
	.value	0x334
	.long	0x3f
	.value	0xc84
	.uleb128 0x14
	.long	.LASF115
	.byte	0x9
	.value	0x335
	.long	0x3f
	.value	0xc88
	.uleb128 0x14
	.long	.LASF415
	.byte	0x9
	.value	0x337
	.long	0x3f
	.value	0xc8c
	.uleb128 0x14
	.long	.LASF416
	.byte	0x9
	.value	0x338
	.long	0x3f
	.value	0xc90
	.uleb128 0x14
	.long	.LASF417
	.byte	0x9
	.value	0x339
	.long	0x3f
	.value	0xc94
	.uleb128 0x14
	.long	.LASF418
	.byte	0x9
	.value	0x33a
	.long	0x3f
	.value	0xc98
	.uleb128 0x14
	.long	.LASF419
	.byte	0x9
	.value	0x33b
	.long	0x3f
	.value	0xc9c
	.uleb128 0x14
	.long	.LASF420
	.byte	0x9
	.value	0x33c
	.long	0x3f
	.value	0xca0
	.uleb128 0x14
	.long	.LASF421
	.byte	0x9
	.value	0x33f
	.long	0x3f
	.value	0xca4
	.uleb128 0x14
	.long	.LASF422
	.byte	0x9
	.value	0x340
	.long	0x3f
	.value	0xca8
	.uleb128 0x14
	.long	.LASF423
	.byte	0x9
	.value	0x341
	.long	0x3f
	.value	0xcac
	.uleb128 0x14
	.long	.LASF424
	.byte	0x9
	.value	0x342
	.long	0x3f
	.value	0xcb0
	.uleb128 0x14
	.long	.LASF425
	.byte	0x9
	.value	0x343
	.long	0x3f
	.value	0xcb4
	.uleb128 0x14
	.long	.LASF426
	.byte	0x9
	.value	0x345
	.long	0x3f
	.value	0xcb8
	.uleb128 0x14
	.long	.LASF427
	.byte	0x9
	.value	0x346
	.long	0x548
	.value	0xcbc
	.uleb128 0x14
	.long	.LASF428
	.byte	0x9
	.value	0x349
	.long	0x3f
	.value	0xcdc
	.uleb128 0x14
	.long	.LASF429
	.byte	0x9
	.value	0x34c
	.long	0x3f
	.value	0xce0
	.uleb128 0x14
	.long	.LASF430
	.byte	0x9
	.value	0x34d
	.long	0x3f
	.value	0xce4
	.uleb128 0x14
	.long	.LASF431
	.byte	0x9
	.value	0x34e
	.long	0x3f
	.value	0xce8
	.uleb128 0x14
	.long	.LASF432
	.byte	0x9
	.value	0x34f
	.long	0x3f
	.value	0xcec
	.uleb128 0x14
	.long	.LASF433
	.byte	0x9
	.value	0x350
	.long	0x3f
	.value	0xcf0
	.uleb128 0x14
	.long	.LASF434
	.byte	0x9
	.value	0x351
	.long	0x3f
	.value	0xcf4
	.uleb128 0x14
	.long	.LASF435
	.byte	0x9
	.value	0x352
	.long	0x3f
	.value	0xcf8
	.uleb128 0x14
	.long	.LASF436
	.byte	0x9
	.value	0x355
	.long	0x3f
	.value	0xcfc
	.uleb128 0x14
	.long	.LASF437
	.byte	0x9
	.value	0x358
	.long	0x3f
	.value	0xd00
	.uleb128 0x14
	.long	.LASF438
	.byte	0x9
	.value	0x35b
	.long	0x3f
	.value	0xd04
	.uleb128 0x14
	.long	.LASF439
	.byte	0x9
	.value	0x35c
	.long	0x1a95
	.value	0xd08
	.uleb128 0x14
	.long	.LASF440
	.byte	0x9
	.value	0x35e
	.long	0x1a74
	.value	0xd38
	.uleb128 0x14
	.long	.LASF441
	.byte	0x9
	.value	0x35f
	.long	0x3f
	.value	0xe00
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x1a74
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0xa5
	.long	0x1a84
	.uleb128 0x6
	.long	0x96
	.byte	0xc7
	.byte	0
	.uleb128 0x5
	.long	0xa5
	.long	0x1a95
	.uleb128 0x1e
	.long	0x96
	.value	0x3ff
	.byte	0
	.uleb128 0x5
	.long	0xd2
	.long	0x1aa5
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.long	.LASF442
	.byte	0x9
	.value	0x361
	.long	0x1256
	.uleb128 0x1f
	.long	0x11c20
	.byte	0x9
	.value	0x364
	.long	0x2496
	.uleb128 0xb
	.long	.LASF443
	.byte	0x9
	.value	0x366
	.long	0x3f
	.byte	0
	.uleb128 0x17
	.string	"pn"
	.byte	0x9
	.value	0x367
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF444
	.byte	0x9
	.value	0x368
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF445
	.byte	0x9
	.value	0x369
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF446
	.byte	0x9
	.value	0x36a
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF447
	.byte	0x9
	.value	0x36b
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF206
	.byte	0x9
	.value	0x36c
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF448
	.byte	0x9
	.value	0x36d
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF122
	.byte	0x9
	.value	0x36e
	.long	0x3f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF449
	.byte	0x9
	.value	0x36f
	.long	0x3f
	.byte	0x24
	.uleb128 0x17
	.string	"qp"
	.byte	0x9
	.value	0x370
	.long	0x3f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF218
	.byte	0x9
	.value	0x371
	.long	0x3f
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF450
	.byte	0x9
	.value	0x372
	.long	0xcb
	.byte	0x30
	.uleb128 0xb
	.long	.LASF451
	.byte	0x9
	.value	0x373
	.long	0x3f
	.byte	0x34
	.uleb128 0xb
	.long	.LASF452
	.byte	0x9
	.value	0x374
	.long	0x3f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF453
	.byte	0x9
	.value	0x375
	.long	0x3f
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF454
	.byte	0x9
	.value	0x376
	.long	0x3f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF455
	.byte	0x9
	.value	0x377
	.long	0x3f
	.byte	0x44
	.uleb128 0xb
	.long	.LASF456
	.byte	0x9
	.value	0x378
	.long	0x3f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF457
	.byte	0x9
	.value	0x379
	.long	0x3f
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF458
	.byte	0x9
	.value	0x37a
	.long	0x3f
	.byte	0x50
	.uleb128 0xb
	.long	.LASF459
	.byte	0x9
	.value	0x37b
	.long	0x3f
	.byte	0x54
	.uleb128 0xb
	.long	.LASF460
	.byte	0x9
	.value	0x37c
	.long	0x3f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF461
	.byte	0x9
	.value	0x37d
	.long	0x3f
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF462
	.byte	0x9
	.value	0x37e
	.long	0x3f
	.byte	0x60
	.uleb128 0xb
	.long	.LASF463
	.byte	0x9
	.value	0x37f
	.long	0x1250
	.byte	0x68
	.uleb128 0xb
	.long	.LASF464
	.byte	0x9
	.value	0x380
	.long	0x1250
	.byte	0x70
	.uleb128 0xb
	.long	.LASF465
	.byte	0x9
	.value	0x382
	.long	0x3f
	.byte	0x78
	.uleb128 0xb
	.long	.LASF466
	.byte	0x9
	.value	0x383
	.long	0x2496
	.byte	0x80
	.uleb128 0xb
	.long	.LASF467
	.byte	0x9
	.value	0x385
	.long	0x3f
	.byte	0x88
	.uleb128 0xb
	.long	.LASF468
	.byte	0x9
	.value	0x386
	.long	0x3f
	.byte	0x8c
	.uleb128 0xb
	.long	.LASF469
	.byte	0x9
	.value	0x387
	.long	0x3f
	.byte	0x90
	.uleb128 0xb
	.long	.LASF470
	.byte	0x9
	.value	0x388
	.long	0x3f
	.byte	0x94
	.uleb128 0xb
	.long	.LASF471
	.byte	0x9
	.value	0x389
	.long	0x3f
	.byte	0x98
	.uleb128 0xb
	.long	.LASF472
	.byte	0x9
	.value	0x38a
	.long	0x3f
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF473
	.byte	0x9
	.value	0x38b
	.long	0x3f
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF474
	.byte	0x9
	.value	0x38c
	.long	0x3f
	.byte	0xa4
	.uleb128 0xb
	.long	.LASF475
	.byte	0x9
	.value	0x38e
	.long	0x3f
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF476
	.byte	0x9
	.value	0x38f
	.long	0x3f
	.byte	0xac
	.uleb128 0xb
	.long	.LASF477
	.byte	0x9
	.value	0x390
	.long	0x3f
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF478
	.byte	0x9
	.value	0x391
	.long	0x3f
	.byte	0xb4
	.uleb128 0xb
	.long	.LASF479
	.byte	0x9
	.value	0x395
	.long	0x249c
	.byte	0xb8
	.uleb128 0x14
	.long	.LASF480
	.byte	0x9
	.value	0x397
	.long	0x24b8
	.value	0x12b8
	.uleb128 0x14
	.long	.LASF481
	.byte	0x9
	.value	0x398
	.long	0x24d4
	.value	0x1cb8
	.uleb128 0x14
	.long	.LASF482
	.byte	0x9
	.value	0x399
	.long	0x24f0
	.value	0x2138
	.uleb128 0x1b
	.string	"mpr"
	.byte	0x9
	.value	0x39a
	.long	0x2512
	.value	0x3138
	.uleb128 0x1b
	.string	"m7"
	.byte	0x9
	.value	0x39b
	.long	0x2528
	.value	0x3338
	.uleb128 0x14
	.long	.LASF483
	.byte	0x9
	.value	0x39d
	.long	0x253e
	.value	0x3738
	.uleb128 0x14
	.long	.LASF484
	.byte	0x9
	.value	0x39e
	.long	0x2496
	.value	0x3740
	.uleb128 0x14
	.long	.LASF485
	.byte	0x9
	.value	0x3a0
	.long	0x2544
	.value	0x3748
	.uleb128 0x14
	.long	.LASF486
	.byte	0x9
	.value	0x3a1
	.long	0x123e
	.value	0x3750
	.uleb128 0x14
	.long	.LASF487
	.byte	0x9
	.value	0x3a2
	.long	0x254a
	.value	0x3758
	.uleb128 0x14
	.long	.LASF488
	.byte	0x9
	.value	0x3a3
	.long	0x2550
	.value	0x3760
	.uleb128 0x20
	.long	.LASF489
	.byte	0x9
	.value	0x3a5
	.long	0xac
	.long	0x11860
	.uleb128 0x20
	.long	.LASF490
	.byte	0x9
	.value	0x3a6
	.long	0xac
	.long	0x11868
	.uleb128 0x21
	.string	"tr"
	.byte	0x9
	.value	0x3a8
	.long	0x3f
	.long	0x11870
	.uleb128 0x20
	.long	.LASF491
	.byte	0x9
	.value	0x3a9
	.long	0x3f
	.long	0x11874
	.uleb128 0x20
	.long	.LASF492
	.byte	0x9
	.value	0x3aa
	.long	0x54
	.long	0x11878
	.uleb128 0x20
	.long	.LASF493
	.byte	0x9
	.value	0x3ab
	.long	0x54
	.long	0x1187c
	.uleb128 0x20
	.long	.LASF494
	.byte	0x9
	.value	0x3ac
	.long	0x2561
	.long	0x11880
	.uleb128 0x20
	.long	.LASF495
	.byte	0x9
	.value	0x3ad
	.long	0x3f
	.long	0x118c0
	.uleb128 0x20
	.long	.LASF496
	.byte	0x9
	.value	0x3ae
	.long	0x3f
	.long	0x118c4
	.uleb128 0x20
	.long	.LASF497
	.byte	0x9
	.value	0x3af
	.long	0x3f
	.long	0x118c8
	.uleb128 0x20
	.long	.LASF498
	.byte	0x9
	.value	0x3b0
	.long	0x3f
	.long	0x118cc
	.uleb128 0x20
	.long	.LASF499
	.byte	0x9
	.value	0x3b1
	.long	0x3f
	.long	0x118d0
	.uleb128 0x20
	.long	.LASF500
	.byte	0x9
	.value	0x3b4
	.long	0xd2
	.long	0x118d8
	.uleb128 0x20
	.long	.LASF501
	.byte	0x9
	.value	0x3b5
	.long	0x3f
	.long	0x118e0
	.uleb128 0x20
	.long	.LASF502
	.byte	0x9
	.value	0x3b6
	.long	0x3f
	.long	0x118e4
	.uleb128 0x20
	.long	.LASF503
	.byte	0x9
	.value	0x3b7
	.long	0x3f
	.long	0x118e8
	.uleb128 0x20
	.long	.LASF504
	.byte	0x9
	.value	0x3b8
	.long	0x3f
	.long	0x118ec
	.uleb128 0x20
	.long	.LASF505
	.byte	0x9
	.value	0x3ba
	.long	0x2577
	.long	0x118f0
	.uleb128 0x20
	.long	.LASF506
	.byte	0x9
	.value	0x3bb
	.long	0x2577
	.long	0x118f8
	.uleb128 0x20
	.long	.LASF507
	.byte	0x9
	.value	0x3bd
	.long	0x2577
	.long	0x11900
	.uleb128 0x20
	.long	.LASF508
	.byte	0x9
	.value	0x3be
	.long	0x2577
	.long	0x11908
	.uleb128 0x20
	.long	.LASF246
	.byte	0x9
	.value	0x3bf
	.long	0x259b
	.long	0x11910
	.uleb128 0x20
	.long	.LASF253
	.byte	0x9
	.value	0x3c3
	.long	0x3f
	.long	0x11930
	.uleb128 0x20
	.long	.LASF254
	.byte	0x9
	.value	0x3c4
	.long	0x3f
	.long	0x11934
	.uleb128 0x20
	.long	.LASF255
	.byte	0x9
	.value	0x3c5
	.long	0x3f
	.long	0x11938
	.uleb128 0x20
	.long	.LASF336
	.byte	0x9
	.value	0x3c7
	.long	0x3f
	.long	0x1193c
	.uleb128 0x20
	.long	.LASF509
	.byte	0x9
	.value	0x3c9
	.long	0x3f
	.long	0x11940
	.uleb128 0x20
	.long	.LASF510
	.byte	0x9
	.value	0x3ca
	.long	0x3f
	.long	0x11944
	.uleb128 0x20
	.long	.LASF511
	.byte	0x9
	.value	0x3cc
	.long	0x3f
	.long	0x11948
	.uleb128 0x20
	.long	.LASF512
	.byte	0x9
	.value	0x3cd
	.long	0x3f
	.long	0x1194c
	.uleb128 0x20
	.long	.LASF513
	.byte	0x9
	.value	0x3ce
	.long	0x25ab
	.long	0x11950
	.uleb128 0x20
	.long	.LASF514
	.byte	0x9
	.value	0x3cf
	.long	0x3f
	.long	0x11ab8
	.uleb128 0x20
	.long	.LASF515
	.byte	0x9
	.value	0x3d0
	.long	0x3f
	.long	0x11abc
	.uleb128 0x20
	.long	.LASF516
	.byte	0x9
	.value	0x3d2
	.long	0x3f
	.long	0x11ac0
	.uleb128 0x20
	.long	.LASF517
	.byte	0x9
	.value	0x3d3
	.long	0x3f
	.long	0x11ac4
	.uleb128 0x20
	.long	.LASF518
	.byte	0x9
	.value	0x3d4
	.long	0x3f
	.long	0x11ac8
	.uleb128 0x20
	.long	.LASF519
	.byte	0x9
	.value	0x3d6
	.long	0x3f
	.long	0x11acc
	.uleb128 0x20
	.long	.LASF520
	.byte	0x9
	.value	0x3d8
	.long	0x3f
	.long	0x11ad0
	.uleb128 0x20
	.long	.LASF115
	.byte	0x9
	.value	0x3dc
	.long	0x54
	.long	0x11ad4
	.uleb128 0x20
	.long	.LASF117
	.byte	0x9
	.value	0x3e0
	.long	0x54
	.long	0x11ad8
	.uleb128 0x20
	.long	.LASF118
	.byte	0x9
	.value	0x3e1
	.long	0x3f
	.long	0x11adc
	.uleb128 0x20
	.long	.LASF119
	.byte	0x9
	.value	0x3e2
	.long	0x3f
	.long	0x11ae0
	.uleb128 0x20
	.long	.LASF120
	.byte	0x9
	.value	0x3e3
	.long	0x54
	.long	0x11ae4
	.uleb128 0x20
	.long	.LASF121
	.byte	0x9
	.value	0x3e4
	.long	0x25c1
	.long	0x11ae8
	.uleb128 0x20
	.long	.LASF521
	.byte	0x9
	.value	0x3e9
	.long	0x54
	.long	0x11aec
	.uleb128 0x20
	.long	.LASF522
	.byte	0x9
	.value	0x3ea
	.long	0x3f
	.long	0x11af0
	.uleb128 0x20
	.long	.LASF523
	.byte	0x9
	.value	0x3ec
	.long	0x86
	.long	0x11af4
	.uleb128 0x20
	.long	.LASF524
	.byte	0x9
	.value	0x3f0
	.long	0x54
	.long	0x11afc
	.uleb128 0x20
	.long	.LASF525
	.byte	0x9
	.value	0x3f1
	.long	0x3f
	.long	0x11b00
	.uleb128 0x20
	.long	.LASF526
	.byte	0x9
	.value	0x3f2
	.long	0x3f
	.long	0x11b04
	.uleb128 0x20
	.long	.LASF527
	.byte	0x9
	.value	0x3f3
	.long	0x3f
	.long	0x11b08
	.uleb128 0x20
	.long	.LASF528
	.byte	0x9
	.value	0x3f4
	.long	0x3f
	.long	0x11b0c
	.uleb128 0x20
	.long	.LASF529
	.byte	0x9
	.value	0x3f5
	.long	0x54
	.long	0x11b10
	.uleb128 0x20
	.long	.LASF530
	.byte	0x9
	.value	0x3f7
	.long	0x54
	.long	0x11b14
	.uleb128 0x20
	.long	.LASF531
	.byte	0x9
	.value	0x3f8
	.long	0x54
	.long	0x11b18
	.uleb128 0x20
	.long	.LASF532
	.byte	0x9
	.value	0x3f9
	.long	0x54
	.long	0x11b1c
	.uleb128 0x20
	.long	.LASF533
	.byte	0x9
	.value	0x3fa
	.long	0x54
	.long	0x11b20
	.uleb128 0x20
	.long	.LASF534
	.byte	0x9
	.value	0x3fb
	.long	0x54
	.long	0x11b24
	.uleb128 0x20
	.long	.LASF535
	.byte	0x9
	.value	0x3fc
	.long	0x54
	.long	0x11b28
	.uleb128 0x20
	.long	.LASF536
	.byte	0x9
	.value	0x3ff
	.long	0x54
	.long	0x11b2c
	.uleb128 0x20
	.long	.LASF537
	.byte	0x9
	.value	0x403
	.long	0x3f
	.long	0x11b30
	.uleb128 0x20
	.long	.LASF538
	.byte	0x9
	.value	0x405
	.long	0x3f
	.long	0x11b34
	.uleb128 0x20
	.long	.LASF539
	.byte	0x9
	.value	0x406
	.long	0x3f
	.long	0x11b38
	.uleb128 0x20
	.long	.LASF540
	.byte	0x9
	.value	0x407
	.long	0x3f
	.long	0x11b3c
	.uleb128 0x20
	.long	.LASF541
	.byte	0x9
	.value	0x409
	.long	0x25d1
	.long	0x11b40
	.uleb128 0x20
	.long	.LASF416
	.byte	0x9
	.value	0x40b
	.long	0x3f
	.long	0x11b48
	.uleb128 0x20
	.long	.LASF542
	.byte	0x9
	.value	0x40f
	.long	0x3f
	.long	0x11b4c
	.uleb128 0x20
	.long	.LASF543
	.byte	0x9
	.value	0x410
	.long	0x3f
	.long	0x11b50
	.uleb128 0x20
	.long	.LASF544
	.byte	0x9
	.value	0x411
	.long	0x3f
	.long	0x11b54
	.uleb128 0x20
	.long	.LASF545
	.byte	0x9
	.value	0x412
	.long	0x3f
	.long	0x11b58
	.uleb128 0x20
	.long	.LASF546
	.byte	0x9
	.value	0x413
	.long	0xd2
	.long	0x11b60
	.uleb128 0x20
	.long	.LASF547
	.byte	0x9
	.value	0x414
	.long	0x3f
	.long	0x11b68
	.uleb128 0x20
	.long	.LASF548
	.byte	0x9
	.value	0x415
	.long	0x3f
	.long	0x11b6c
	.uleb128 0x20
	.long	.LASF549
	.byte	0x9
	.value	0x416
	.long	0x3f
	.long	0x11b70
	.uleb128 0x20
	.long	.LASF550
	.byte	0x9
	.value	0x417
	.long	0x3f
	.long	0x11b74
	.uleb128 0x20
	.long	.LASF551
	.byte	0x9
	.value	0x418
	.long	0x3f
	.long	0x11b78
	.uleb128 0x20
	.long	.LASF552
	.byte	0x9
	.value	0x419
	.long	0x3f
	.long	0x11b7c
	.uleb128 0x20
	.long	.LASF553
	.byte	0x9
	.value	0x41a
	.long	0x3f
	.long	0x11b80
	.uleb128 0x20
	.long	.LASF554
	.byte	0x9
	.value	0x41b
	.long	0x25d7
	.long	0x11b88
	.uleb128 0x20
	.long	.LASF555
	.byte	0x9
	.value	0x41c
	.long	0x3f
	.long	0x11b90
	.uleb128 0x20
	.long	.LASF556
	.byte	0x9
	.value	0x41d
	.long	0x3f
	.long	0x11b94
	.uleb128 0x20
	.long	.LASF557
	.byte	0x9
	.value	0x41e
	.long	0x3f
	.long	0x11b98
	.uleb128 0x20
	.long	.LASF558
	.byte	0x9
	.value	0x41f
	.long	0x3f
	.long	0x11b9c
	.uleb128 0x20
	.long	.LASF559
	.byte	0x9
	.value	0x420
	.long	0x3f
	.long	0x11ba0
	.uleb128 0x20
	.long	.LASF560
	.byte	0x9
	.value	0x421
	.long	0x3f
	.long	0x11ba4
	.uleb128 0x20
	.long	.LASF561
	.byte	0x9
	.value	0x422
	.long	0x3f
	.long	0x11ba8
	.uleb128 0x20
	.long	.LASF562
	.byte	0x9
	.value	0x423
	.long	0x3f
	.long	0x11bac
	.uleb128 0x20
	.long	.LASF563
	.byte	0x9
	.value	0x424
	.long	0x3f
	.long	0x11bb0
	.uleb128 0x20
	.long	.LASF564
	.byte	0x9
	.value	0x425
	.long	0x3f
	.long	0x11bb4
	.uleb128 0x20
	.long	.LASF565
	.byte	0x9
	.value	0x426
	.long	0x3f
	.long	0x11bb8
	.uleb128 0x20
	.long	.LASF566
	.byte	0x9
	.value	0x428
	.long	0x3f
	.long	0x11bbc
	.uleb128 0x20
	.long	.LASF567
	.byte	0x9
	.value	0x42a
	.long	0x3f
	.long	0x11bc0
	.uleb128 0x20
	.long	.LASF568
	.byte	0x9
	.value	0x42b
	.long	0x3f
	.long	0x11bc4
	.uleb128 0x20
	.long	.LASF569
	.byte	0x9
	.value	0x42c
	.long	0x3f
	.long	0x11bc8
	.uleb128 0x20
	.long	.LASF413
	.byte	0x9
	.value	0x42e
	.long	0x3f
	.long	0x11bcc
	.uleb128 0x20
	.long	.LASF570
	.byte	0x9
	.value	0x430
	.long	0x3f
	.long	0x11bd0
	.uleb128 0x20
	.long	.LASF571
	.byte	0x9
	.value	0x431
	.long	0x3f
	.long	0x11bd4
	.uleb128 0x20
	.long	.LASF572
	.byte	0x9
	.value	0x432
	.long	0x3f
	.long	0x11bd8
	.uleb128 0x20
	.long	.LASF573
	.byte	0x9
	.value	0x433
	.long	0x3f
	.long	0x11bdc
	.uleb128 0x20
	.long	.LASF574
	.byte	0x9
	.value	0x434
	.long	0x3f
	.long	0x11be0
	.uleb128 0x20
	.long	.LASF575
	.byte	0x9
	.value	0x435
	.long	0x3f
	.long	0x11be4
	.uleb128 0x20
	.long	.LASF576
	.byte	0x9
	.value	0x436
	.long	0x54
	.long	0x11be8
	.uleb128 0x20
	.long	.LASF577
	.byte	0x9
	.value	0x437
	.long	0x3f
	.long	0x11bec
	.uleb128 0x20
	.long	.LASF578
	.byte	0x9
	.value	0x438
	.long	0x3f
	.long	0x11bf0
	.uleb128 0x20
	.long	.LASF579
	.byte	0x9
	.value	0x43a
	.long	0x3f
	.long	0x11bf4
	.uleb128 0x20
	.long	.LASF580
	.byte	0x9
	.value	0x43b
	.long	0x3f
	.long	0x11bf8
	.uleb128 0x20
	.long	.LASF318
	.byte	0x9
	.value	0x43c
	.long	0x3f
	.long	0x11bfc
	.uleb128 0x20
	.long	.LASF581
	.byte	0x9
	.value	0x43d
	.long	0x3f
	.long	0x11c00
	.uleb128 0x20
	.long	.LASF582
	.byte	0x9
	.value	0x43e
	.long	0x3f
	.long	0x11c04
	.uleb128 0x20
	.long	.LASF583
	.byte	0x9
	.value	0x43f
	.long	0x3f
	.long	0x11c08
	.uleb128 0x20
	.long	.LASF584
	.byte	0x9
	.value	0x441
	.long	0x86
	.long	0x11c0c
	.uleb128 0x20
	.long	.LASF437
	.byte	0x9
	.value	0x444
	.long	0x3f
	.long	0x11c14
	.uleb128 0x20
	.long	.LASF585
	.byte	0x9
	.value	0x446
	.long	0x3f
	.long	0x11c18
	.uleb128 0x20
	.long	.LASF586
	.byte	0x9
	.value	0x447
	.long	0x3f
	.long	0x11c1c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1250
	.uleb128 0x5
	.long	0x4d
	.long	0x24b8
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x24d4
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x24f0
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x2512
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x2528
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x253e
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2496
	.uleb128 0x8
	.byte	0x8
	.long	0x1244
	.uleb128 0x8
	.byte	0x8
	.long	0xf4a
	.uleb128 0x5
	.long	0xc7c
	.long	0x2561
	.uleb128 0x1e
	.long	0x96
	.value	0x4af
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x2577
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x257d
	.uleb128 0x8
	.byte	0x8
	.long	0x2583
	.uleb128 0x8
	.byte	0x8
	.long	0x2589
	.uleb128 0x8
	.byte	0x8
	.long	0x258f
	.uleb128 0x8
	.byte	0x8
	.long	0x2595
	.uleb128 0x8
	.byte	0x8
	.long	0x62
	.uleb128 0x5
	.long	0x62
	.long	0x25ab
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x25c1
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x25d1
	.uleb128 0x6
	.long	0x96
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xba6
	.uleb128 0x8
	.byte	0x8
	.long	0xd2
	.uleb128 0x15
	.long	.LASF587
	.byte	0x9
	.value	0x449
	.long	0x1ab1
	.uleb128 0x22
	.long	.LASF588
	.byte	0x1
	.byte	0x9d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.long	.LASF589
	.byte	0x1
	.byte	0xc6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF612
	.byte	0x1
	.byte	0xeb
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2687
	.uleb128 0x24
	.string	"L1"
	.byte	0x1
	.byte	0xed
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"L2"
	.byte	0x1
	.byte	0xed
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"L3"
	.byte	0x1
	.byte	0xed
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"bpp"
	.byte	0x1
	.byte	0xed
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"qp"
	.byte	0x1
	.byte	0xee
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xef
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x25
	.long	.LASF595
	.byte	0x1
	.value	0x16b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x270d
	.uleb128 0x26
	.string	"np"
	.byte	0x1
	.value	0x16b
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.string	"nb"
	.byte	0x1
	.value	0x16b
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF590
	.byte	0x1
	.value	0x16d
	.long	0x2ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF591
	.byte	0x1
	.value	0x16e
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF592
	.byte	0x1
	.value	0x16f
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.long	.LASF593
	.byte	0x1
	.value	0x170
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF594
	.byte	0x1
	.value	0x171
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF596
	.byte	0x1
	.value	0x1cc
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2766
	.uleb128 0x28
	.long	.LASF597
	.byte	0x1
	.value	0x1cc
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF598
	.byte	0x1
	.value	0x1cc
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF599
	.byte	0x1
	.value	0x1cc
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1ce
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2a
	.long	.LASF600
	.byte	0x1
	.value	0x2ad
	.long	0xd2
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x27bf
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x2af
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"l"
	.byte	0x1
	.value	0x2af
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x2b0
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"MAD"
	.byte	0x1
	.value	0x2b1
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF601
	.byte	0x1
	.value	0x2c6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x27ed
	.uleb128 0x28
	.long	.LASF602
	.byte	0x1
	.value	0x2c6
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF603
	.byte	0x1
	.value	0x2de
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2837
	.uleb128 0x28
	.long	.LASF602
	.byte	0x1
	.value	0x2de
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF604
	.byte	0x1
	.value	0x2e2
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"X"
	.byte	0x1
	.value	0x2e3
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF605
	.byte	0x1
	.value	0x320
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2865
	.uleb128 0x28
	.long	.LASF602
	.byte	0x1
	.value	0x320
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF628
	.byte	0x1
	.value	0x32d
	.long	0x3f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x28ff
	.uleb128 0x28
	.long	.LASF598
	.byte	0x1
	.value	0x32d
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF606
	.byte	0x1
	.value	0x32f
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF607
	.byte	0x1
	.value	0x330
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF608
	.byte	0x1
	.value	0x331
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF609
	.byte	0x1
	.value	0x332
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.long	.LASF610
	.byte	0x1
	.value	0x333
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF611
	.byte	0x1
	.value	0x334
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x335
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2d
	.long	.LASF613
	.byte	0x1
	.value	0x598
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x298c
	.uleb128 0x27
	.long	.LASF614
	.byte	0x1
	.value	0x59b
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x59c
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x27
	.long	.LASF615
	.byte	0x1
	.value	0x59d
	.long	0x298c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.string	"std"
	.byte	0x1
	.value	0x59d
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.long	.LASF616
	.byte	0x1
	.value	0x59d
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.long	.LASF617
	.byte	0x1
	.value	0x59e
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x27
	.long	.LASF618
	.byte	0x1
	.value	0x59f
	.long	0x2ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x5
	.long	0xd2
	.long	0x299c
	.uleb128 0x6
	.long	0x96
	.byte	0x13
	.byte	0
	.uleb128 0x2b
	.long	.LASF619
	.byte	0x1
	.value	0x61e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a71
	.uleb128 0x28
	.long	.LASF614
	.byte	0x1
	.value	0x61e
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.long	.LASF620
	.byte	0x1
	.value	0x620
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x621
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF621
	.byte	0x1
	.value	0x622
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"a00"
	.byte	0x1
	.value	0x623
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"a01"
	.byte	0x1
	.value	0x623
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"a10"
	.byte	0x1
	.value	0x623
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"a11"
	.byte	0x1
	.value	0x623
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"b0"
	.byte	0x1
	.value	0x623
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"b1"
	.byte	0x1
	.value	0x623
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF622
	.byte	0x1
	.value	0x624
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF623
	.byte	0x1
	.value	0x625
	.long	0x2ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2a
	.long	.LASF624
	.byte	0x1
	.value	0x66a
	.long	0xd2
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ab0
	.uleb128 0x27
	.long	.LASF625
	.byte	0x1
	.value	0x66c
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x66d
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2d
	.long	.LASF626
	.byte	0x1
	.value	0x67d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b2d
	.uleb128 0x27
	.long	.LASF614
	.byte	0x1
	.value	0x680
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x681
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x27
	.long	.LASF615
	.byte	0x1
	.value	0x682
	.long	0x298c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x29
	.string	"std"
	.byte	0x1
	.value	0x682
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.long	.LASF616
	.byte	0x1
	.value	0x682
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.long	.LASF617
	.byte	0x1
	.value	0x683
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x2b
	.long	.LASF627
	.byte	0x1
	.value	0x6d9
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c02
	.uleb128 0x28
	.long	.LASF614
	.byte	0x1
	.value	0x6d9
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.long	.LASF620
	.byte	0x1
	.value	0x6db
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x6dc
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF621
	.byte	0x1
	.value	0x6dd
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.string	"a00"
	.byte	0x1
	.value	0x6de
	.long	0xd2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"a01"
	.byte	0x1
	.value	0x6de
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"a10"
	.byte	0x1
	.value	0x6de
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"a11"
	.byte	0x1
	.value	0x6de
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"b0"
	.byte	0x1
	.value	0x6de
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"b1"
	.byte	0x1
	.value	0x6de
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF622
	.byte	0x1
	.value	0x6df
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF623
	.byte	0x1
	.value	0x6e0
	.long	0x2ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2e
	.long	.LASF629
	.byte	0x1
	.value	0x726
	.long	0xd2
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c65
	.uleb128 0x26
	.string	"QP"
	.byte	0x1
	.value	0x726
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x728
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF630
	.byte	0x1
	.value	0x729
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF631
	.byte	0x1
	.value	0x72a
	.long	0x2c65
	.uleb128 0x9
	.byte	0x3
	.quad	QP2QSTEP.5506
	.byte	0
	.uleb128 0x2f
	.long	0x1a95
	.uleb128 0x2c
	.long	.LASF632
	.byte	0x1
	.value	0x73b
	.long	0x3f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cba
	.uleb128 0x28
	.long	.LASF630
	.byte	0x1
	.value	0x73b
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF633
	.byte	0x1
	.value	0x73d
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF634
	.byte	0x1
	.value	0x73d
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.string	"R"
	.byte	0x1
	.byte	0x86
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	R
	.uleb128 0x30
	.long	.LASF635
	.byte	0x1
	.byte	0x86
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	T_field
	.uleb128 0x24
	.string	"Np"
	.byte	0x1
	.byte	0x87
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Np
	.uleb128 0x24
	.string	"Nb"
	.byte	0x1
	.byte	0x87
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Nb
	.uleb128 0x30
	.long	.LASF636
	.byte	0x1
	.byte	0x87
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	bits_topfield
	.uleb128 0x31
	.long	.LASF637
	.byte	0x9
	.value	0x1f7
	.long	0x2d2b
	.uleb128 0x8
	.byte	0x8
	.long	0x72a
	.uleb128 0x31
	.long	.LASF638
	.byte	0x9
	.value	0x4b7
	.long	0x2d3d
	.uleb128 0x8
	.byte	0x8
	.long	0x1aa5
	.uleb128 0x32
	.string	"img"
	.byte	0x9
	.value	0x4b8
	.long	0x2d4f
	.uleb128 0x8
	.byte	0x8
	.long	0x25dd
	.uleb128 0x33
	.long	.LASF422
	.byte	0x1
	.byte	0x1b
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	bit_rate
	.uleb128 0x33
	.long	.LASF639
	.byte	0x1
	.byte	0x1c
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	frame_rate
	.uleb128 0x33
	.long	.LASF640
	.byte	0x1
	.byte	0x1d
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	GAMMAP
	.uleb128 0x33
	.long	.LASF641
	.byte	0x1
	.byte	0x1e
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	BETAP
	.uleb128 0x33
	.long	.LASF642
	.byte	0x1
	.byte	0x20
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	RC_MAX_QUANT
	.uleb128 0x33
	.long	.LASF643
	.byte	0x1
	.byte	0x21
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	RC_MIN_QUANT
	.uleb128 0x33
	.long	.LASF644
	.byte	0x1
	.byte	0x23
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	BufferSize
	.uleb128 0x33
	.long	.LASF645
	.byte	0x1
	.byte	0x24
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	GOPTargetBufferLevel
	.uleb128 0x33
	.long	.LASF646
	.byte	0x1
	.byte	0x25
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	CurrentBufferFullness
	.uleb128 0x33
	.long	.LASF647
	.byte	0x1
	.byte	0x26
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	TargetBufferLevel
	.uleb128 0x33
	.long	.LASF648
	.byte	0x1
	.byte	0x27
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	PreviousBit_Rate
	.uleb128 0x34
	.string	"AWp"
	.byte	0x1
	.byte	0x28
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	AWp
	.uleb128 0x34
	.string	"AWb"
	.byte	0x1
	.byte	0x29
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	AWb
	.uleb128 0x33
	.long	.LASF649
	.byte	0x1
	.byte	0x2a
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	MyInitialQp
	.uleb128 0x33
	.long	.LASF650
	.byte	0x1
	.byte	0x2b
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PAverageQp
	.uleb128 0x33
	.long	.LASF651
	.byte	0x1
	.byte	0x2f
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	PreviousPictureMAD
	.uleb128 0x33
	.long	.LASF652
	.byte	0x1
	.byte	0x30
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	MADPictureC1
	.uleb128 0x33
	.long	.LASF653
	.byte	0x1
	.byte	0x31
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	MADPictureC2
	.uleb128 0x33
	.long	.LASF654
	.byte	0x1
	.byte	0x32
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	PMADPictureC1
	.uleb128 0x33
	.long	.LASF655
	.byte	0x1
	.byte	0x33
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	PMADPictureC2
	.uleb128 0x5
	.long	0x2ef
	.long	0x2f09
	.uleb128 0x6
	.long	0x96
	.byte	0x14
	.byte	0
	.uleb128 0x33
	.long	.LASF656
	.byte	0x1
	.byte	0x35
	.long	0x2ef9
	.uleb128 0x9
	.byte	0x3
	.quad	PictureRejected
	.uleb128 0x5
	.long	0xd2
	.long	0x2f2e
	.uleb128 0x6
	.long	0x96
	.byte	0x14
	.byte	0
	.uleb128 0x33
	.long	.LASF657
	.byte	0x1
	.byte	0x36
	.long	0x2f1e
	.uleb128 0x9
	.byte	0x3
	.quad	PPictureMAD
	.uleb128 0x33
	.long	.LASF658
	.byte	0x1
	.byte	0x37
	.long	0x2f1e
	.uleb128 0x9
	.byte	0x3
	.quad	PictureMAD
	.uleb128 0x33
	.long	.LASF659
	.byte	0x1
	.byte	0x38
	.long	0x2f1e
	.uleb128 0x9
	.byte	0x3
	.quad	ReferenceMAD
	.uleb128 0x33
	.long	.LASF660
	.byte	0x1
	.byte	0x3b
	.long	0x2ef9
	.uleb128 0x9
	.byte	0x3
	.quad	m_rgRejected
	.uleb128 0x33
	.long	.LASF661
	.byte	0x1
	.byte	0x3c
	.long	0x2f1e
	.uleb128 0x9
	.byte	0x3
	.quad	m_rgQp
	.uleb128 0x33
	.long	.LASF662
	.byte	0x1
	.byte	0x3d
	.long	0x2f1e
	.uleb128 0x9
	.byte	0x3
	.quad	m_rgRp
	.uleb128 0x33
	.long	.LASF663
	.byte	0x1
	.byte	0x3e
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	m_X1
	.uleb128 0x33
	.long	.LASF664
	.byte	0x1
	.byte	0x3f
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	m_X2
	.uleb128 0x33
	.long	.LASF665
	.byte	0x1
	.byte	0x40
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	m_Qc
	.uleb128 0x33
	.long	.LASF666
	.byte	0x1
	.byte	0x41
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	m_Qstep
	.uleb128 0x33
	.long	.LASF667
	.byte	0x1
	.byte	0x42
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	m_Qp
	.uleb128 0x33
	.long	.LASF668
	.byte	0x1
	.byte	0x43
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Pm_Qp
	.uleb128 0x33
	.long	.LASF669
	.byte	0x1
	.byte	0x44
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PreAveMBHeader
	.uleb128 0x33
	.long	.LASF670
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	CurAveMBHeader
	.uleb128 0x33
	.long	.LASF671
	.byte	0x1
	.byte	0x46
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PPreHeader
	.uleb128 0x33
	.long	.LASF672
	.byte	0x1
	.byte	0x47
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PreviousQp1
	.uleb128 0x33
	.long	.LASF673
	.byte	0x1
	.byte	0x48
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PreviousQp2
	.uleb128 0x33
	.long	.LASF674
	.byte	0x1
	.byte	0x49
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	NumberofBFrames
	.uleb128 0x33
	.long	.LASF675
	.byte	0x1
	.byte	0x4b
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	TotalFrameQP
	.uleb128 0x33
	.long	.LASF676
	.byte	0x1
	.byte	0x4c
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	NumberofBasicUnit
	.uleb128 0x33
	.long	.LASF677
	.byte	0x1
	.byte	0x4d
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PAveHeaderBits1
	.uleb128 0x33
	.long	.LASF678
	.byte	0x1
	.byte	0x4e
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PAveHeaderBits2
	.uleb128 0x33
	.long	.LASF679
	.byte	0x1
	.byte	0x4f
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PAveHeaderBits3
	.uleb128 0x33
	.long	.LASF680
	.byte	0x1
	.byte	0x50
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PAveFrameQP
	.uleb128 0x33
	.long	.LASF681
	.byte	0x1
	.byte	0x51
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	TotalNumberofBasicUnit
	.uleb128 0x33
	.long	.LASF682
	.byte	0x1
	.byte	0x52
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	CodedBasicUnit
	.uleb128 0x33
	.long	.LASF683
	.byte	0x1
	.byte	0x53
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	MINVALUE
	.uleb128 0x33
	.long	.LASF684
	.byte	0x1
	.byte	0x54
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	CurrentFrameMAD
	.uleb128 0x33
	.long	.LASF685
	.byte	0x1
	.byte	0x55
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	CurrentBUMAD
	.uleb128 0x33
	.long	.LASF686
	.byte	0x1
	.byte	0x56
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	TotalBUMAD
	.uleb128 0x33
	.long	.LASF687
	.byte	0x1
	.byte	0x57
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	PreviousFrameMAD
	.uleb128 0x33
	.long	.LASF688
	.byte	0x1
	.byte	0x58
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	m_Hp
	.uleb128 0x33
	.long	.LASF689
	.byte	0x1
	.byte	0x59
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	m_windowSize
	.uleb128 0x33
	.long	.LASF690
	.byte	0x1
	.byte	0x5a
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	MADm_windowSize
	.uleb128 0x33
	.long	.LASF691
	.byte	0x1
	.byte	0x5b
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	DDquant
	.uleb128 0x33
	.long	.LASF692
	.byte	0x1
	.byte	0x5c
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	MBPerRow
	.uleb128 0x33
	.long	.LASF693
	.byte	0x1
	.byte	0x5d
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	AverageMADPreviousFrame
	.uleb128 0x33
	.long	.LASF694
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	TotalBasicUnitBits
	.uleb128 0x33
	.long	.LASF695
	.byte	0x1
	.byte	0x5f
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	QPLastPFrame
	.uleb128 0x33
	.long	.LASF696
	.byte	0x1
	.byte	0x60
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	QPLastGOP
	.uleb128 0x33
	.long	.LASF697
	.byte	0x1
	.byte	0x64
	.long	0x298c
	.uleb128 0x9
	.byte	0x3
	.quad	Pm_rgQp
	.uleb128 0x33
	.long	.LASF698
	.byte	0x1
	.byte	0x65
	.long	0x298c
	.uleb128 0x9
	.byte	0x3
	.quad	Pm_rgRp
	.uleb128 0x33
	.long	.LASF699
	.byte	0x1
	.byte	0x66
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	Pm_X1
	.uleb128 0x33
	.long	.LASF700
	.byte	0x1
	.byte	0x67
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	Pm_X2
	.uleb128 0x33
	.long	.LASF701
	.byte	0x1
	.byte	0x68
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Pm_Hp
	.uleb128 0x33
	.long	.LASF702
	.byte	0x1
	.byte	0x6a
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	FieldQPBuffer
	.uleb128 0x33
	.long	.LASF703
	.byte	0x1
	.byte	0x6b
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	FrameQPBuffer
	.uleb128 0x33
	.long	.LASF704
	.byte	0x1
	.byte	0x6c
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	FrameAveHeaderBits
	.uleb128 0x33
	.long	.LASF705
	.byte	0x1
	.byte	0x6d
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	FieldAveHeaderBits
	.uleb128 0x33
	.long	.LASF706
	.byte	0x1
	.byte	0x6e
	.long	0x25d7
	.uleb128 0x9
	.byte	0x3
	.quad	BUPFMAD
	.uleb128 0x33
	.long	.LASF707
	.byte	0x1
	.byte	0x6f
	.long	0x25d7
	.uleb128 0x9
	.byte	0x3
	.quad	BUCFMAD
	.uleb128 0x33
	.long	.LASF708
	.byte	0x1
	.byte	0x70
	.long	0x25d7
	.uleb128 0x9
	.byte	0x3
	.quad	FCBUCFMAD
	.uleb128 0x33
	.long	.LASF709
	.byte	0x1
	.byte	0x71
	.long	0x25d7
	.uleb128 0x9
	.byte	0x3
	.quad	FCBUPFMAD
	.uleb128 0x33
	.long	.LASF710
	.byte	0x1
	.byte	0x73
	.long	0x2ef
	.uleb128 0x9
	.byte	0x3
	.quad	GOPOverdue
	.uleb128 0x33
	.long	.LASF711
	.byte	0x1
	.byte	0x77
	.long	0x2528
	.uleb128 0x9
	.byte	0x3
	.quad	diffy
	.uleb128 0x33
	.long	.LASF712
	.byte	0x1
	.byte	0x78
	.long	0x2528
	.uleb128 0x9
	.byte	0x3
	.quad	diffyy
	.uleb128 0x33
	.long	.LASF713
	.byte	0x1
	.byte	0x79
	.long	0x2528
	.uleb128 0x9
	.byte	0x3
	.quad	diffy8
	.uleb128 0x33
	.long	.LASF714
	.byte	0x1
	.byte	0x80
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Iprev_bits
	.uleb128 0x33
	.long	.LASF715
	.byte	0x1
	.byte	0x81
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Pprev_bits
	.uleb128 0x33
	.long	.LASF716
	.byte	0x1
	.byte	0x7d
	.long	0x341a
	.uleb128 0x9
	.byte	0x3
	.quad	THETA
	.uleb128 0x2f
	.long	0xd2
	.uleb128 0x33
	.long	.LASF717
	.byte	0x1
	.byte	0x7e
	.long	0x3434
	.uleb128 0x9
	.byte	0x3
	.quad	Switch
	.uleb128 0x2f
	.long	0x3f
	.uleb128 0x34
	.string	"Xp"
	.byte	0x1
	.byte	0x85
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Xp
	.uleb128 0x34
	.string	"Xb"
	.byte	0x1
	.byte	0x85
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Xb
	.uleb128 0x34
	.string	"T"
	.byte	0x1
	.byte	0x88
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	T
	.uleb128 0x34
	.string	"T1"
	.byte	0x1
	.byte	0x88
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	T1
	.uleb128 0x33
	.long	.LASF718
	.byte	0x1
	.byte	0x8a
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	UpperBound1
	.uleb128 0x33
	.long	.LASF719
	.byte	0x1
	.byte	0x8a
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	UpperBound2
	.uleb128 0x33
	.long	.LASF720
	.byte	0x1
	.byte	0x8a
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	LowerBound
	.uleb128 0x33
	.long	.LASF721
	.byte	0x1
	.byte	0x8b
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	InitialDelayOffset
	.uleb128 0x33
	.long	.LASF722
	.byte	0x1
	.byte	0x8c
	.long	0x341a
	.uleb128 0x9
	.byte	0x3
	.quad	OMEGA
	.uleb128 0x34
	.string	"Wp"
	.byte	0x1
	.byte	0x8e
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	Wp
	.uleb128 0x34
	.string	"Wb"
	.byte	0x1
	.byte	0x8e
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	Wb
	.uleb128 0x33
	.long	.LASF723
	.byte	0x1
	.byte	0x8f
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	TotalPFrame
	.uleb128 0x33
	.long	.LASF724
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	DuantQp
	.uleb128 0x33
	.long	.LASF725
	.byte	0x1
	.byte	0x91
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	PDuantQp
	.uleb128 0x33
	.long	.LASF726
	.byte	0x1
	.byte	0x92
	.long	0x356d
	.uleb128 0x9
	.byte	0x3
	.quad	BitRate
	.uleb128 0x8
	.byte	0x8
	.long	0xd9
	.uleb128 0x33
	.long	.LASF727
	.byte	0x1
	.byte	0x93
	.long	0xd2
	.uleb128 0x9
	.byte	0x3
	.quad	DeltaP
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
.LASF590:
	.string	"Overum"
.LASF573:
	.string	"bitdepth_luma_qp_scale"
.LASF425:
	.string	"channel_type"
.LASF444:
	.string	"nb_references"
.LASF138:
	.string	"FRAME_CODING"
.LASF689:
	.string	"m_windowSize"
.LASF574:
	.string	"bitdepth_chroma_qp_scale"
.LASF426:
	.string	"ScalingMatrixPresentFlag"
.LASF539:
	.string	"no_output_of_prior_pics_flag"
.LASF144:
	.string	"BITS_INTER_MB"
.LASF510:
	.string	"num_ref_idx_l1_active"
.LASF521:
	.string	"pic_order_cnt_lsb"
.LASF608:
	.string	"BFrameNumber"
.LASF597:
	.string	"fieldpic"
.LASF720:
	.string	"LowerBound"
.LASF7:
	.string	"size_t"
.LASF563:
	.string	"write_macroblock"
.LASF10:
	.string	"sizetype"
.LASF94:
	.string	"max_bytes_per_pic_denom"
.LASF566:
	.string	"DeblockCall"
.LASF721:
	.string	"InitialDelayOffset"
.LASF149:
	.string	"MAX_BITCOUNTER_MB"
.LASF490:
	.string	"intra_block"
.LASF584:
	.string	"chroma_qp_offset"
.LASF452:
	.string	"width_cr"
.LASF534:
	.string	"PicSizeInMbs"
.LASF99:
	.string	"max_dec_frame_buffering"
.LASF151:
	.string	"B_SLICE"
.LASF674:
	.string	"NumberofBFrames"
.LASF488:
	.string	"MB_SyntaxElements"
.LASF483:
	.string	"cofAC"
.LASF714:
	.string	"Iprev_bits"
.LASF669:
	.string	"PreAveMBHeader"
.LASF581:
	.string	"lossless_qpprime_flag"
.LASF356:
	.string	"PocMemoryManagement"
.LASF498:
	.string	"imgtr_next_P_fld"
.LASF309:
	.string	"search_range"
.LASF513:
	.string	"mvscale"
.LASF137:
	.string	"int64"
.LASF29:
	.string	"_IO_save_end"
.LASF297:
	.string	"slices"
.LASF201:
	.string	"long_term_pic_num"
.LASF79:
	.string	"matrix_coefficients"
.LASF464:
	.string	"ipredmode8x8"
.LASF468:
	.string	"mb_y"
.LASF61:
	.string	"vbr_cbr_flag"
.LASF643:
	.string	"RC_MIN_QUANT"
.LASF325:
	.string	"infile_header"
.LASF602:
	.string	"nbits"
.LASF623:
	.string	"estimateX2"
.LASF376:
	.string	"full_search"
.LASF203:
	.string	"max_long_term_frame_idx_plus1"
.LASF582:
	.string	"mb_cr_size_x"
.LASF420:
	.string	"DisplayEncParams"
.LASF22:
	.string	"_IO_write_base"
.LASF512:
	.string	"top_field"
.LASF706:
	.string	"BUPFMAD"
.LASF171:
	.string	"state"
.LASF106:
	.string	"constrained_set3_flag"
.LASF38:
	.string	"_lock"
.LASF711:
	.string	"diffy"
.LASF371:
	.string	"Intra16x16ParDisable"
.LASF185:
	.string	"bcbp_contexts"
.LASF205:
	.string	"syntaxelement"
.LASF707:
	.string	"BUCFMAD"
.LASF62:
	.string	"initial_cpb_removal_delay_length_minus1"
.LASF334:
	.string	"successive_Bframe"
.LASF71:
	.string	"overscan_info_present_flag"
.LASF344:
	.string	"WeightedPrediction"
.LASF206:
	.string	"type"
.LASF503:
	.string	"fw_mb_mode"
.LASF668:
	.string	"Pm_Qp"
.LASF535:
	.string	"FrameSizeInMbs"
.LASF27:
	.string	"_IO_save_base"
.LASF704:
	.string	"FrameAveHeaderBits"
.LASF85:
	.string	"time_scale"
.LASF253:
	.string	"LFDisableIdc"
.LASF337:
	.string	"directInferenceFlag"
.LASF266:
	.string	"bits_to_go_skip"
.LASF682:
	.string	"CodedBasicUnit"
.LASF505:
	.string	"pred_mv"
.LASF686:
	.string	"TotalBUMAD"
.LASF415:
	.string	"context_init_method"
.LASF417:
	.string	"AllowTransform8x8"
.LASF579:
	.string	"num_blk8x8_uv"
.LASF323:
	.string	"slice_argument"
.LASF283:
	.string	"rmpni_buffer"
.LASF31:
	.string	"_chain"
.LASF364:
	.string	"InterSearch8x4"
.LASF234:
	.string	"mb_field"
.LASF363:
	.string	"InterSearch8x8"
.LASF397:
	.string	"NumFramesInELSubSeq"
.LASF628:
	.string	"updateQuantizationParameter"
.LASF35:
	.string	"_cur_column"
.LASF712:
	.string	"diffyy"
.LASF661:
	.string	"m_rgQp"
.LASF463:
	.string	"ipredmode"
.LASF350:
	.string	"RDBSliceWeightOnly"
.LASF315:
	.string	"GenerateMultiplePPS"
.LASF226:
	.string	"b8mode"
.LASF435:
	.string	"cr_qp_index_offset"
.LASF250:
	.string	"prev_cbp"
.LASF480:
	.string	"mprr_2"
.LASF481:
	.string	"mprr_3"
.LASF259:
	.string	"bits_to_go"
.LASF198:
	.string	"DecRefPicMarking_s"
.LASF204:
	.string	"DecRefPicMarking_t"
.LASF63:
	.string	"cpb_removal_delay_length_minus1"
.LASF648:
	.string	"PreviousBit_Rate"
.LASF107:
	.string	"level_idc"
.LASF564:
	.string	"bot_MB"
.LASF478:
	.string	"opix_c_y"
.LASF599:
	.string	"targetcomputation"
.LASF562:
	.string	"BasicUnit"
.LASF122:
	.string	"num_ref_frames"
.LASF167:
	.string	"EcodestrmS"
.LASF644:
	.string	"BufferSize"
.LASF69:
	.string	"sar_width"
.LASF148:
	.string	"BITS_DELTA_QUANT_MB"
.LASF6:
	.string	"long int"
.LASF96:
	.string	"log2_max_mv_length_vertical"
.LASF622:
	.string	"MatrixValue"
.LASF90:
	.string	"vcl_hrd_parameters"
.LASF84:
	.string	"num_units_in_tick"
.LASF482:
	.string	"mprr_c"
.LASF243:
	.string	"all_blk_8x8"
.LASF385:
	.string	"nobskip"
.LASF537:
	.string	"nal_reference_idc"
.LASF726:
	.string	"BitRate"
.LASF527:
	.string	"framepoc"
.LASF677:
	.string	"PAveHeaderBits1"
.LASF678:
	.string	"PAveHeaderBits2"
.LASF679:
	.string	"PAveHeaderBits3"
.LASF637:
	.string	"active_sps"
.LASF543:
	.string	"NumberofTextureBits"
.LASF48:
	.string	"_IO_marker"
.LASF114:
	.string	"log2_max_frame_num_minus4"
.LASF346:
	.string	"UseWeightedReferenceME"
.LASF607:
	.string	"m_Bits"
.LASF369:
	.string	"Intra4x4DiagDisable"
.LASF399:
	.string	"RandomIntraMBRefresh"
.LASF565:
	.string	"write_macroblock_frame"
.LASF263:
	.string	"stored_byte_buf"
.LASF663:
	.string	"m_X1"
.LASF141:
	.string	"BITS_HEADER"
.LASF442:
	.string	"InputParameters"
.LASF68:
	.string	"aspect_ratio_idc"
.LASF531:
	.string	"PicHeightInMapUnits"
.LASF615:
	.string	"error"
.LASF718:
	.string	"UpperBound1"
.LASF719:
	.string	"UpperBound2"
.LASF551:
	.string	"NumberofGOP"
.LASF727:
	.string	"DeltaP"
.LASF571:
	.string	"bitdepth_luma"
.LASF70:
	.string	"sar_height"
.LASF604:
	.string	"Avem_Qc"
.LASF145:
	.string	"BITS_CBP_MB"
.LASF670:
	.string	"CurAveMBHeader"
.LASF477:
	.string	"opix_c_x"
.LASF157:
	.string	"Ebuffer"
.LASF326:
	.string	"infile"
.LASF649:
	.string	"MyInitialQp"
.LASF676:
	.string	"NumberofBasicUnit"
.LASF156:
	.string	"Erange"
.LASF632:
	.string	"Qstep2QP"
.LASF4:
	.string	"signed char"
.LASF450:
	.string	"framerate"
.LASF278:
	.string	"max_part_nr"
.LASF170:
	.string	"EncodingEnvironmentPtr"
.LASF47:
	.string	"_IO_FILE"
.LASF117:
	.string	"delta_pic_order_always_zero_flag"
.LASF526:
	.string	"bottompoc"
.LASF358:
	.string	"of_mode"
.LASF233:
	.string	"IntraChromaPredModeFlag"
.LASF684:
	.string	"CurrentFrameMAD"
.LASF210:
	.string	"context"
.LASF601:
	.string	"rc_update_pict"
.LASF287:
	.string	"long_term_pic_idx_l0"
.LASF291:
	.string	"long_term_pic_idx_l1"
.LASF284:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF288:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF553:
	.string	"NumberofPPicture"
.LASF548:
	.string	"NumberofMBHeaderBits"
.LASF484:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF591:
	.string	"OverBits"
.LASF224:
	.string	"intra_pred_modes8x8"
.LASF595:
	.string	"rc_init_GOP"
.LASF125:
	.string	"pic_height_in_map_units_minus1"
.LASF80:
	.string	"chroma_location_info_present_flag"
.LASF724:
	.string	"DuantQp"
.LASF140:
	.string	"ADAPTIVE_CODING"
.LASF109:
	.string	"chroma_format_idc"
.LASF338:
	.string	"BiPredMotionEstimation"
.LASF507:
	.string	"bipred_mv1"
.LASF508:
	.string	"bipred_mv2"
.LASF187:
	.string	"last_contexts"
.LASF232:
	.string	"c_ipred_mode"
.LASF410:
	.string	"run_length_minus1"
.LASF578:
	.string	"max_imgpel_value_uv"
.LASF319:
	.string	"intra_upd"
.LASF285:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF289:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF691:
	.string	"DDquant"
.LASF286:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF290:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF403:
	.string	"SPPercentageThreshold"
.LASF260:
	.string	"byte_buf"
.LASF303:
	.string	"ProfileIDC"
.LASF246:
	.string	"bi_pred_me"
.LASF619:
	.string	"RCModelEstimator"
.LASF217:
	.string	"delta_qp"
.LASF683:
	.string	"MINVALUE"
.LASF375:
	.string	"chroma_qp_index_offset"
.LASF57:
	.string	"bit_rate_scale"
.LASF671:
	.string	"PPreHeader"
.LASF11:
	.string	"char"
.LASF462:
	.string	"block_c_x"
.LASF180:
	.string	"transform_size_contexts"
.LASF540:
	.string	"long_term_reference_flag"
.LASF313:
	.string	"Log2MaxFrameNum"
.LASF617:
	.string	"m_Nc"
.LASF458:
	.string	"is_intra_block"
.LASF277:
	.string	"start_mb_nr"
.LASF421:
	.string	"RCEnable"
.LASF348:
	.string	"RDPictureIntra"
.LASF312:
	.string	"B_List1_refs"
.LASF731:
	.string	"_IO_lock_t"
.LASF335:
	.string	"qpBRSOffset"
.LASF401:
	.string	"SparePictureOption"
.LASF142:
	.string	"BITS_TOTAL_MB"
.LASF699:
	.string	"Pm_X1"
.LASF700:
	.string	"Pm_X2"
.LASF378:
	.string	"qpN2"
.LASF641:
	.string	"BETAP"
.LASF331:
	.string	"intra_period"
.LASF220:
	.string	"mb_available_up"
.LASF523:
	.string	"delta_pic_order_cnt"
.LASF592:
	.string	"OverDuantQp"
.LASF59:
	.string	"bit_rate_value"
.LASF366:
	.string	"InterSearch4x4"
.LASF365:
	.string	"InterSearch4x8"
.LASF730:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF19:
	.string	"_IO_read_ptr"
.LASF542:
	.string	"NumberofHeaderBits"
.LASF381:
	.string	"qp02"
.LASF92:
	.string	"bitstream_restriction_flag"
.LASF154:
	.string	"SI_SLICE"
.LASF626:
	.string	"updateMADModel"
.LASF179:
	.string	"mb_aff_contexts"
.LASF244:
	.string	"luma_transform_size_8x8_flag"
.LASF427:
	.string	"ScalingListPresentFlag"
.LASF470:
	.string	"block_y"
.LASF351:
	.string	"SkipIntraInInterSlices"
.LASF51:
	.string	"_pos"
.LASF83:
	.string	"timing_info_present_flag"
.LASF627:
	.string	"MADModelEstimator"
.LASF485:
	.string	"currentPicture"
.LASF175:
	.string	"b8_type_contexts"
.LASF634:
	.string	"q_rem"
.LASF408:
	.string	"bottom_right"
.LASF345:
	.string	"WeightedBiprediction"
.LASF611:
	.string	"SumofBasicUnit"
.LASF695:
	.string	"QPLastPFrame"
.LASF501:
	.string	"p_interval"
.LASF729:
	.string	"ratectl.c"
.LASF499:
	.string	"imgtr_last_P_fld"
.LASF638:
	.string	"input"
.LASF388:
	.string	"LeakyBucketParamFile"
.LASF30:
	.string	"_markers"
.LASF305:
	.string	"no_frames"
.LASF150:
	.string	"P_SLICE"
.LASF631:
	.string	"QP2QSTEP"
.LASF316:
	.string	"img_width"
.LASF355:
	.string	"PyramidRefReorder"
.LASF685:
	.string	"CurrentBUMAD"
.LASF646:
	.string	"CurrentBufferFullness"
.LASF459:
	.string	"is_v_block"
.LASF102:
	.string	"profile_idc"
.LASF322:
	.string	"slice_mode"
.LASF709:
	.string	"FCBUPFMAD"
.LASF302:
	.string	"Picture"
.LASF360:
	.string	"InterSearch16x16"
.LASF639:
	.string	"frame_rate"
.LASF645:
	.string	"GOPTargetBufferLevel"
.LASF56:
	.string	"cpb_cnt"
.LASF461:
	.string	"mb_y_intra"
.LASF174:
	.string	"mb_type_contexts"
.LASF407:
	.string	"top_left"
.LASF698:
	.string	"Pm_rgRp"
.LASF267:
	.string	"streamBuffer"
.LASF165:
	.string	"Ebits_to_goS"
.LASF708:
	.string	"FCBUCFMAD"
.LASF361:
	.string	"InterSearch16x8"
.LASF400:
	.string	"LFSendParameters"
.LASF554:
	.string	"MADofMB"
.LASF509:
	.string	"num_ref_idx_l0_active"
.LASF416:
	.string	"model_number"
.LASF372:
	.string	"Intra16x16PlaneDisable"
.LASF152:
	.string	"I_SLICE"
.LASF264:
	.string	"byte_buf_skip"
.LASF340:
	.string	"BiPredMESearchRange"
.LASF214:
	.string	"macroblock"
.LASF525:
	.string	"toppoc"
.LASF520:
	.string	"MbaffFrameFlag"
.LASF155:
	.string	"Elow"
.LASF95:
	.string	"max_bits_per_mb_denom"
.LASF39:
	.string	"_offset"
.LASF424:
	.string	"basicunit"
.LASF694:
	.string	"TotalBasicUnitBits"
.LASF389:
	.string	"PicInterlace"
.LASF276:
	.string	"picture_type"
.LASF292:
	.string	"slice_too_big"
.LASF123:
	.string	"gaps_in_frame_num_value_allowed_flag"
.LASF533:
	.string	"PicHeightInMbs"
.LASF436:
	.string	"lossless_qpprime_y_zero_flag"
.LASF330:
	.string	"QmatrixFile"
.LASF347:
	.string	"RDPictureDecision"
.LASF91:
	.string	"low_delay_hrd_flag"
.LASF169:
	.string	"EncodingEnvironment"
.LASF273:
	.string	"writeSyntaxElement"
.LASF124:
	.string	"pic_width_in_mbs_minus1"
.LASF635:
	.string	"T_field"
.LASF304:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF183:
	.string	"cipr_contexts"
.LASF168:
	.string	"Ecodestrm_lenS"
.LASF97:
	.string	"log2_max_mv_length_horizontal"
.LASF81:
	.string	"chroma_location_frame"
.LASF136:
	.string	"seq_parameter_set_rbsp_t"
.LASF279:
	.string	"num_mb"
.LASF625:
	.string	"TotalMAD"
.LASF33:
	.string	"_flags2"
.LASF314:
	.string	"ResendPPS"
.LASF21:
	.string	"_IO_read_base"
.LASF495:
	.string	"pstruct_next_P"
.LASF614:
	.string	"n_windowSize"
.LASF230:
	.string	"lf_alpha_c0_offset"
.LASF586:
	.string	"auto_crop_bottom"
.LASF329:
	.string	"TraceFile"
.LASF46:
	.string	"_unused2"
.LASF324:
	.string	"UseConstrainedIntraPred"
.LASF630:
	.string	"Qstep"
.LASF555:
	.string	"BasicUnitQP"
.LASF64:
	.string	"dpb_output_delay_length_minus1"
.LASF547:
	.string	"NumberofMBTextureBits"
.LASF78:
	.string	"transfer_characteristics"
.LASF228:
	.string	"cbp_bits"
.LASF105:
	.string	"constrained_set2_flag"
.LASF658:
	.string	"PictureMAD"
.LASF717:
	.string	"Switch"
.LASF588:
	.string	"rc_alloc"
.LASF610:
	.string	"PAverageQP"
.LASF34:
	.string	"_old_offset"
.LASF473:
	.string	"pix_c_x"
.LASF474:
	.string	"pix_c_y"
.LASF307:
	.string	"hadamard"
.LASF502:
	.string	"b_frame_to_code"
.LASF298:
	.string	"bits_per_picture"
.LASF460:
	.string	"mb_y_upd"
.LASF441:
	.string	"OffsetMatrixPresentFlag"
.LASF687:
	.string	"PreviousFrameMAD"
.LASF395:
	.string	"NoOfDecoders"
.LASF194:
	.string	"RMPNI"
.LASF160:
	.string	"Ecodestrm"
.LASF254:
	.string	"LFAlphaC0Offset"
.LASF231:
	.string	"lf_beta_offset"
.LASF200:
	.string	"difference_of_pic_nums_minus1"
.LASF398:
	.string	"NumFrameIn2ndIGOP"
.LASF524:
	.string	"field_picture"
.LASF332:
	.string	"idr_enable"
.LASF479:
	.string	"mprr"
.LASF333:
	.string	"start_frame"
.LASF181:
	.string	"MotionInfoContexts"
.LASF580:
	.string	"num_cdc_coeff"
.LASF116:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF12:
	.string	"long long int"
.LASF500:
	.string	"b_interval"
.LASF158:
	.string	"Ebits_to_go"
.LASF621:
	.string	"oneSampleQ"
.LASF492:
	.string	"fld_flag"
.LASF494:
	.string	"direct_intraP_ref"
.LASF451:
	.string	"width"
.LASF101:
	.string	"Valid"
.LASF222:
	.string	"mb_type"
.LASF262:
	.string	"stored_bits_to_go"
.LASF583:
	.string	"mb_cr_size_y"
.LASF121:
	.string	"offset_for_ref_frame"
.LASF216:
	.string	"slice_nr"
.LASF300:
	.string	"distortion_u"
.LASF301:
	.string	"distortion_v"
.LASF299:
	.string	"distortion_y"
.LASF265:
	.string	"byte_pos_skip"
.LASF255:
	.string	"LFBetaOffset"
.LASF112:
	.string	"bit_depth_luma_minus8"
.LASF237:
	.string	"mbAddrC"
.LASF16:
	.string	"double"
.LASF24:
	.string	"_IO_write_end"
.LASF104:
	.string	"constrained_set1_flag"
.LASF454:
	.string	"height_cr"
.LASF624:
	.string	"ComputeFrameMAD"
.LASF402:
	.string	"SPDetectionThreshold"
.LASF261:
	.string	"stored_byte_pos"
.LASF437:
	.string	"residue_transform_flag"
.LASF690:
	.string	"MADm_windowSize"
.LASF497:
	.string	"imgtr_last_P_frm"
.LASF188:
	.string	"one_contexts"
.LASF390:
	.string	"MbInterlace"
.LASF218:
	.string	"qpsp"
.LASF15:
	.string	"float"
.LASF249:
	.string	"prev_delta_qp"
.LASF419:
	.string	"ReportFrameStats"
.LASF353:
	.string	"PyramidCoding"
.LASF172:
	.string	"count"
.LASF128:
	.string	"direct_8x8_inference_flag"
.LASF357:
	.string	"symbol_mode"
.LASF616:
	.string	"threshold"
.LASF173:
	.string	"BiContextType"
.LASF620:
	.string	"n_realSize"
.LASF723:
	.string	"TotalPFrame"
.LASF25:
	.string	"_IO_buf_base"
.LASF493:
	.string	"rd_pass"
.LASF489:
	.string	"quad"
.LASF3:
	.string	"unsigned int"
.LASF189:
	.string	"abs_contexts"
.LASF159:
	.string	"Ebits_to_follow"
.LASF268:
	.string	"write_flag"
.LASF446:
	.string	"total_number_mb"
.LASF600:
	.string	"calc_MAD"
.LASF328:
	.string	"ReconFile"
.LASF161:
	.string	"Ecodestrm_len"
.LASF282:
	.string	"tex_ctx"
.LASF342:
	.string	"sp_periodicity"
.LASF40:
	.string	"__pad1"
.LASF41:
	.string	"__pad2"
.LASF42:
	.string	"__pad3"
.LASF43:
	.string	"__pad4"
.LASF44:
	.string	"__pad5"
.LASF221:
	.string	"mb_available_left"
.LASF193:
	.string	"RMPNIbuffer_s"
.LASF197:
	.string	"RMPNIbuffer_t"
.LASF50:
	.string	"_sbuf"
.LASF413:
	.string	"slice_group_change_cycle"
.LASF439:
	.string	"LambdaWeight"
.LASF606:
	.string	"dtmp"
.LASF192:
	.string	"TextureInfoContexts"
.LASF445:
	.string	"current_mb_nr"
.LASF386:
	.string	"NumberLeakyBuckets"
.LASF516:
	.string	"layer"
.LASF227:
	.string	"b8pdir"
.LASF295:
	.string	"no_slices"
.LASF659:
	.string	"ReferenceMAD"
.LASF119:
	.string	"offset_for_top_to_bottom_field"
.LASF652:
	.string	"MADPictureC1"
.LASF653:
	.string	"MADPictureC2"
.LASF693:
	.string	"AverageMADPreviousFrame"
.LASF18:
	.string	"_flags"
.LASF133:
	.string	"frame_cropping_rect_bottom_offset"
.LASF496:
	.string	"imgtr_next_P_frm"
.LASF557:
	.string	"FieldControl"
.LASF549:
	.string	"NumberofCodedBFrame"
.LASF515:
	.string	"i16offset"
.LASF73:
	.string	"video_signal_type_present_flag"
.LASF343:
	.string	"qpsp_pred"
.LASF45:
	.string	"_mode"
.LASF115:
	.string	"pic_order_cnt_type"
.LASF354:
	.string	"ExplicitPyramidFormat"
.LASF471:
	.string	"pix_x"
.LASF472:
	.string	"pix_y"
.LASF716:
	.string	"THETA"
.LASF728:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF587:
	.string	"ImageParameters"
.LASF272:
	.string	"ee_cabac"
.LASF594:
	.string	"GOPDquant"
.LASF613:
	.string	"updateRCModel"
.LASF53:
	.string	"FALSE"
.LASF129:
	.string	"frame_cropping_flag"
.LASF666:
	.string	"m_Qstep"
.LASF139:
	.string	"FIELD_CODING"
.LASF308:
	.string	"hadamardqpel"
.LASF511:
	.string	"field_mode"
.LASF368:
	.string	"Intra4x4ParDisable"
.LASF469:
	.string	"block_x"
.LASF387:
	.string	"LeakyBucketRateFile"
.LASF82:
	.string	"chroma_location_field"
.LASF321:
	.string	"part_size"
.LASF359:
	.string	"partition_mode"
.LASF568:
	.string	"last_has_mmco_5"
.LASF111:
	.string	"seq_scaling_list_present_flag"
.LASF681:
	.string	"TotalNumberofBasicUnit"
.LASF191:
	.string	"fld_last_contexts"
.LASF596:
	.string	"rc_init_pict"
.LASF118:
	.string	"offset_for_non_ref_pic"
.LASF131:
	.string	"frame_cropping_rect_right_offset"
.LASF17:
	.string	"FILE"
.LASF256:
	.string	"skip_flag"
.LASF692:
	.string	"MBPerRow"
.LASF529:
	.string	"frame_num"
.LASF186:
	.string	"map_contexts"
.LASF404:
	.string	"SliceGroupConfigFileName"
.LASF153:
	.string	"SP_SLICE"
.LASF199:
	.string	"memory_management_control_operation"
.LASF391:
	.string	"IntraBottom"
.LASF269:
	.string	"Bitstream"
.LASF440:
	.string	"QOffsetMatrixFile"
.LASF311:
	.string	"B_List0_refs"
.LASF518:
	.string	"NoResidueDirect"
.LASF127:
	.string	"mb_adaptive_frame_field_flag"
.LASF561:
	.string	"NumberofCodedMacroBlocks"
.LASF89:
	.string	"vcl_hrd_parameters_present_flag"
.LASF209:
	.string	"bitpattern"
.LASF567:
	.string	"last_pic_bottom_field"
.LASF275:
	.string	"picture_id"
.LASF126:
	.string	"frame_mbs_only_flag"
.LASF680:
	.string	"PAveFrameQP"
.LASF688:
	.string	"m_Hp"
.LASF491:
	.string	"fld_type"
.LASF66:
	.string	"hrd_parameters_t"
.LASF550:
	.string	"NumberofCodedPFrame"
.LASF430:
	.string	"BitDepthChroma"
.LASF14:
	.string	"long long unsigned int"
.LASF143:
	.string	"BITS_MB_MODE"
.LASF202:
	.string	"long_term_frame_idx"
.LASF572:
	.string	"bitdepth_chroma"
.LASF339:
	.string	"BiPredMERefinements"
.LASF647:
	.string	"TargetBufferLevel"
.LASF656:
	.string	"PictureRejected"
.LASF65:
	.string	"time_offset_length"
.LASF8:
	.string	"__off_t"
.LASF506:
	.string	"all_mv"
.LASF380:
	.string	"qp2start"
.LASF672:
	.string	"PreviousQp1"
.LASF673:
	.string	"PreviousQp2"
.LASF629:
	.string	"QP2Qstep"
.LASF453:
	.string	"height"
.LASF448:
	.string	"structure"
.LASF293:
	.string	"field_ctx"
.LASF274:
	.string	"DataPartition"
.LASF487:
	.string	"mb_data"
.LASF132:
	.string	"frame_cropping_rect_top_offset"
.LASF423:
	.string	"SeinitialQP"
.LASF640:
	.string	"GAMMAP"
.LASF545:
	.string	"NumberofBasicUnitTextureBits"
.LASF120:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF660:
	.string	"m_rgRejected"
.LASF294:
	.string	"Slice"
.LASF270:
	.string	"datapartition"
.LASF166:
	.string	"Ebits_to_followS"
.LASF93:
	.string	"motion_vectors_over_pic_boundaries_flag"
.LASF455:
	.string	"height_cr_frame"
.LASF559:
	.string	"Frame_Total_Number_MB"
.LASF207:
	.string	"value1"
.LASF208:
	.string	"value2"
.LASF223:
	.string	"intra_pred_modes"
.LASF130:
	.string	"frame_cropping_rect_left_offset"
.LASF433:
	.string	"rgb_input_flag"
.LASF271:
	.string	"bitstream"
.LASF310:
	.string	"P_List0_refs"
.LASF396:
	.string	"RestrictRef"
.LASF28:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_shortbuf"
.LASF162:
	.string	"ElowS"
.LASF406:
	.string	"slice_group_map_type"
.LASF88:
	.string	"nal_hrd_parameters"
.LASF609:
	.string	"StepSize"
.LASF55:
	.string	"Boolean"
.LASF49:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF575:
	.string	"bitdepth_lambda_scale"
.LASF384:
	.string	"disthres"
.LASF517:
	.string	"old_layer"
.LASF443:
	.string	"number"
.LASF603:
	.string	"rc_update_pict_frame"
.LASF449:
	.string	"max_num_references"
.LASF67:
	.string	"aspect_ratio_info_present_flag"
.LASF382:
	.string	"qpBRS2Offset"
.LASF577:
	.string	"max_imgpel_value"
.LASF530:
	.string	"PicWidthInMbs"
.LASF108:
	.string	"seq_parameter_set_id"
.LASF392:
	.string	"LossRateA"
.LASF393:
	.string	"LossRateB"
.LASF394:
	.string	"LossRateC"
.LASF570:
	.string	"pic_unit_size_on_disk"
.LASF576:
	.string	"dc_pred_value"
.LASF349:
	.string	"RDPSliceWeightOnly"
.LASF26:
	.string	"_IO_buf_end"
.LASF432:
	.string	"img_width_cr"
.LASF605:
	.string	"setbitscount"
.LASF76:
	.string	"colour_description_present_flag"
.LASF467:
	.string	"mb_x"
.LASF251:
	.string	"predict_qp"
.LASF113:
	.string	"bit_depth_chroma_minus8"
.LASF257:
	.string	"Macroblock"
.LASF177:
	.string	"ref_no_contexts"
.LASF725:
	.string	"PDuantQp"
.LASF320:
	.string	"blc_size"
.LASF541:
	.string	"dec_ref_pic_marking_buffer"
.LASF538:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF147:
	.string	"BITS_COEFF_UV_MB"
.LASF52:
	.string	"byte"
.LASF657:
	.string	"PPictureMAD"
.LASF702:
	.string	"FieldQPBuffer"
.LASF715:
	.string	"Pprev_bits"
.LASF196:
	.string	"Next"
.LASF352:
	.string	"BRefPictures"
.LASF195:
	.string	"Data"
.LASF556:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF475:
	.string	"opix_x"
.LASF87:
	.string	"nal_hrd_parameters_present_flag"
.LASF476:
	.string	"opix_y"
.LASF318:
	.string	"yuv_format"
.LASF651:
	.string	"PreviousPictureMAD"
.LASF428:
	.string	"FMEnable"
.LASF519:
	.string	"redundant_pic_cnt"
.LASF98:
	.string	"max_dec_frame_reordering"
.LASF697:
	.string	"Pm_rgQp"
.LASF504:
	.string	"bw_mb_mode"
.LASF585:
	.string	"auto_crop_right"
.LASF414:
	.string	"redundant_slice_flag"
.LASF429:
	.string	"BitDepthLuma"
.LASF612:
	.string	"rc_init_seq"
.LASF54:
	.string	"TRUE"
.LASF36:
	.string	"_vtable_offset"
.LASF383:
	.string	"rdopt"
.LASF636:
	.string	"bits_topfield"
.LASF135:
	.string	"vui_seq_parameters"
.LASF164:
	.string	"EbufferS"
.LASF589:
	.string	"rc_free"
.LASF703:
	.string	"FrameQPBuffer"
.LASF528:
	.string	"ThisPOC"
.LASF650:
	.string	"PAverageQp"
.LASF58:
	.string	"cpb_size_scale"
.LASF546:
	.string	"TotalMADBasicUnit"
.LASF248:
	.string	"prev_qp"
.LASF367:
	.string	"IntraDisableInterOnly"
.LASF176:
	.string	"mv_res_contexts"
.LASF618:
	.string	"MADModelFlag"
.LASF362:
	.string	"InterSearch8x16"
.LASF422:
	.string	"bit_rate"
.LASF247:
	.string	"actj"
.LASF86:
	.string	"fixed_frame_rate_flag"
.LASF405:
	.string	"num_slice_groups_minus1"
.LASF522:
	.string	"delta_pic_order_cnt_bottom"
.LASF514:
	.string	"buf_cycle"
.LASF146:
	.string	"BITS_COEFF_Y_MB"
.LASF465:
	.string	"cod_counter"
.LASF280:
	.string	"partArr"
.LASF675:
	.string	"TotalFrameQP"
.LASF258:
	.string	"byte_pos"
.LASF327:
	.string	"outfile"
.LASF705:
	.string	"FieldAveHeaderBits"
.LASF664:
	.string	"m_X2"
.LASF182:
	.string	"ipr_contexts"
.LASF235:
	.string	"mbAddrA"
.LASF236:
	.string	"mbAddrB"
.LASF20:
	.string	"_IO_read_end"
.LASF238:
	.string	"mbAddrD"
.LASF418:
	.string	"LowPassForIntra8x8"
.LASF466:
	.string	"nz_coeff"
.LASF178:
	.string	"delta_qp_contexts"
.LASF60:
	.string	"cpb_size_value"
.LASF370:
	.string	"Intra4x4DirDisable"
.LASF593:
	.string	"AllocatedBits"
.LASF544:
	.string	"NumberofBasicUnitHeaderBits"
.LASF213:
	.string	"SyntaxElement"
.LASF379:
	.string	"qpB2"
.LASF642:
	.string	"RC_MAX_QUANT"
.LASF722:
	.string	"OMEGA"
.LASF103:
	.string	"constrained_set0_flag"
.LASF560:
	.string	"IFLAG"
.LASF32:
	.string	"_fileno"
.LASF569:
	.string	"pre_frame_num"
.LASF701:
	.string	"Pm_Hp"
.LASF72:
	.string	"overscan_appropriate_flag"
.LASF536:
	.string	"pic_order_present_flag"
.LASF229:
	.string	"lf_disable"
.LASF341:
	.string	"BiPredMESubPel"
.LASF77:
	.string	"colour_primaries"
.LASF654:
	.string	"PMADPictureC1"
.LASF655:
	.string	"PMADPictureC2"
.LASF296:
	.string	"idr_flag"
.LASF2:
	.string	"short unsigned int"
.LASF558:
	.string	"FieldFrame"
.LASF377:
	.string	"last_frame"
.LASF252:
	.string	"predict_error"
.LASF447:
	.string	"current_slice_nr"
.LASF336:
	.string	"direct_spatial_mv_pred_flag"
.LASF317:
	.string	"img_height"
.LASF306:
	.string	"jumpd"
.LASF100:
	.string	"vui_seq_parameters_t"
.LASF23:
	.string	"_IO_write_ptr"
.LASF211:
	.string	"mapping"
.LASF552:
	.string	"TotalQpforPPicture"
.LASF431:
	.string	"img_height_cr"
.LASF598:
	.string	"topfield"
.LASF373:
	.string	"ChromaIntraDisable"
.LASF110:
	.string	"seq_scaling_matrix_present_flag"
.LASF412:
	.string	"slice_group_change_rate_minus1"
.LASF696:
	.string	"QPLastGOP"
.LASF13:
	.string	"int64_t"
.LASF212:
	.string	"writing"
.LASF409:
	.string	"slice_group_id"
.LASF190:
	.string	"fld_map_contexts"
.LASF75:
	.string	"video_full_range_flag"
.LASF411:
	.string	"slice_group_change_direction_flag"
.LASF374:
	.string	"FrameRate"
.LASF134:
	.string	"vui_parameters_present_flag"
.LASF74:
	.string	"video_format"
.LASF184:
	.string	"cbp_contexts"
.LASF434:
	.string	"cb_qp_index_offset"
.LASF281:
	.string	"mot_ctx"
.LASF665:
	.string	"m_Qc"
.LASF245:
	.string	"NoMbPartLessThan8x8Flag"
.LASF456:
	.string	"subblock_x"
.LASF457:
	.string	"subblock_y"
.LASF667:
	.string	"m_Qp"
.LASF710:
	.string	"GOPOverdue"
.LASF662:
	.string	"m_rgRp"
.LASF438:
	.string	"UseExplicitLambdaParams"
.LASF215:
	.string	"currSEnr"
.LASF532:
	.string	"FrameHeightInMbs"
.LASF486:
	.string	"currentSlice"
.LASF219:
	.string	"bitcounter"
.LASF633:
	.string	"q_per"
.LASF163:
	.string	"ErangeS"
.LASF239:
	.string	"mbAvailA"
.LASF240:
	.string	"mbAvailB"
.LASF241:
	.string	"mbAvailC"
.LASF242:
	.string	"mbAvailD"
.LASF225:
	.string	"cbp_blk"
.LASF713:
	.string	"diffy8"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
