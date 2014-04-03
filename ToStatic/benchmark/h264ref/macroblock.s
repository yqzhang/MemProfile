	.file	"macroblock.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 macroblock.c -mtune=generic -march=x86-64 -g
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
	.globl	MODTAB
	.section	.rodata
	.align 16
	.type	MODTAB, @object
	.size	MODTAB, 24
MODTAB:
	.long	0
	.long	4
	.long	16
	.long	12
	.long	8
	.long	20
	.globl	NCBP
	.align 32
	.type	NCBP, @object
	.size	NCBP, 192
NCBP:
	.byte	1
	.byte	0
	.byte	10
	.byte	1
	.byte	11
	.byte	2
	.byte	6
	.byte	5
	.byte	12
	.byte	3
	.byte	7
	.byte	6
	.byte	14
	.byte	14
	.byte	2
	.byte	10
	.byte	13
	.byte	4
	.byte	15
	.byte	15
	.byte	8
	.byte	7
	.byte	3
	.byte	11
	.byte	9
	.byte	8
	.byte	4
	.byte	12
	.byte	5
	.byte	13
	.byte	0
	.byte	9
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
	.byte	3
	.byte	0
	.byte	29
	.byte	2
	.byte	30
	.byte	3
	.byte	17
	.byte	7
	.byte	31
	.byte	4
	.byte	18
	.byte	8
	.byte	37
	.byte	17
	.byte	8
	.byte	13
	.byte	32
	.byte	5
	.byte	38
	.byte	18
	.byte	19
	.byte	9
	.byte	9
	.byte	14
	.byte	20
	.byte	10
	.byte	10
	.byte	15
	.byte	11
	.byte	16
	.byte	2
	.byte	11
	.byte	16
	.byte	1
	.byte	33
	.byte	32
	.byte	34
	.byte	33
	.byte	21
	.byte	36
	.byte	35
	.byte	34
	.byte	22
	.byte	37
	.byte	39
	.byte	44
	.byte	4
	.byte	40
	.byte	36
	.byte	35
	.byte	40
	.byte	45
	.byte	23
	.byte	38
	.byte	5
	.byte	41
	.byte	24
	.byte	39
	.byte	6
	.byte	42
	.byte	7
	.byte	43
	.byte	1
	.byte	19
	.byte	41
	.byte	6
	.byte	42
	.byte	24
	.byte	43
	.byte	25
	.byte	25
	.byte	20
	.byte	44
	.byte	26
	.byte	26
	.byte	21
	.byte	46
	.byte	46
	.byte	12
	.byte	28
	.byte	45
	.byte	27
	.byte	47
	.byte	47
	.byte	27
	.byte	22
	.byte	13
	.byte	29
	.byte	28
	.byte	23
	.byte	14
	.byte	30
	.byte	15
	.byte	31
	.byte	0
	.byte	12
	.globl	subblk_offset_x
	.align 32
	.type	subblk_offset_x, @object
	.size	subblk_offset_x, 96
subblk_offset_x:
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
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
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
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
	.byte	4
	.byte	0
	.byte	4
	.byte	8
	.byte	12
	.byte	8
	.byte	12
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	8
	.byte	12
	.byte	8
	.byte	12
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	8
	.byte	12
	.byte	8
	.byte	12
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	8
	.byte	12
	.byte	8
	.byte	12
	.globl	subblk_offset_y
	.align 32
	.type	subblk_offset_y, @object
	.size	subblk_offset_y, 96
subblk_offset_y:
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	4
	.byte	4
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
	.byte	4
	.byte	4
	.byte	8
	.byte	8
	.byte	12
	.byte	12
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	8
	.byte	8
	.byte	12
	.byte	12
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
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	8
	.byte	8
	.byte	12
	.byte	12
	.byte	8
	.byte	8
	.byte	12
	.byte	12
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	8
	.byte	8
	.byte	12
	.byte	12
	.byte	8
	.byte	8
	.byte	12
	.byte	12
	.comm	predict_error,4,4
	.comm	dq,4,4
	.text
	.globl	set_MB_parameters
	.type	set_MB_parameters, @function
set_MB_parameters:
.LFB2:
	.file 1 "macroblock.c"
	.loc 1 57 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)	# mb_addr, mb_addr
	.loc 1 58 0
	movq	img(%rip), %rax	# img, img.0
	movl	-20(%rbp), %edx	# mb_addr, tmp142
	movl	%edx, 12(%rax)	# tmp142, img.0_3->current_mb_nr
	.loc 1 60 0
	movq	img(%rip), %rax	# img, img.1
	leaq	140(%rax), %rdx	#, D.12145
	movq	img(%rip), %rax	# img, img.2
	leaq	136(%rax), %rcx	#, D.12145
	movl	-20(%rbp), %eax	# mb_addr, tmp143
	movq	%rcx, %rsi	# D.12145,
	movl	%eax, %edi	# tmp143,
	call	get_mb_block_pos	#
	.loc 1 62 0
	movq	img(%rip), %rax	# img, img.3
	movq	img(%rip), %rdx	# img, img.4
	movl	136(%rdx), %edx	# img.4_10->mb_x, D.12146
	sall	$2, %edx	#, D.12146
	movl	%edx, 144(%rax)	# D.12146, img.3_9->block_x
	.loc 1 63 0
	movq	img(%rip), %rax	# img, img.5
	movq	img(%rip), %rdx	# img, img.6
	movl	140(%rdx), %edx	# img.6_14->mb_y, D.12146
	sall	$2, %edx	#, D.12146
	movl	%edx, 148(%rax)	# D.12146, img.5_13->block_y
	.loc 1 65 0
	movq	img(%rip), %rax	# img, img.7
	movq	img(%rip), %rdx	# img, img.8
	movl	144(%rdx), %edx	# img.8_18->block_x, D.12146
	sall	$2, %edx	#, D.12146
	movl	%edx, 152(%rax)	# D.12146, img.7_17->pix_x
	.loc 1 66 0
	movq	img(%rip), %rax	# img, img.9
	movq	img(%rip), %rdx	# img, img.10
	movl	148(%rdx), %edx	# img.10_22->block_y, D.12146
	sall	$2, %edx	#, D.12146
	movl	%edx, 156(%rax)	# D.12146, img.9_21->pix_y
	.loc 1 68 0
	movq	img(%rip), %rax	# img, img.11
	movq	img(%rip), %rdx	# img, img.12
	movl	152(%rdx), %edx	# img.12_26->pix_x, D.12146
	movl	%edx, 168(%rax)	# D.12146, img.11_25->opix_x
	.loc 1 70 0
	movq	img(%rip), %rax	# img, img.13
	movl	72400(%rax), %eax	# img.13_28->MbaffFrameFlag, D.12146
	testl	%eax, %eax	# D.12146
	je	.L2	#,
	.loc 1 72 0
	movq	img(%rip), %rax	# img, img.14
	movq	14168(%rax), %rdx	# img.14_30->mb_data, D.12147
	movl	-20(%rbp), %eax	# mb_addr, tmp144
	cltq
	imulq	$632, %rax, %rax	#, D.12148, D.12148
	addq	%rdx, %rax	# D.12147, D.12147
	movl	532(%rax), %eax	# _34->mb_field, D.12146
	testl	%eax, %eax	# D.12146
	je	.L3	#,
	.loc 1 75 0
	movl	-20(%rbp), %eax	# mb_addr, mb_addr.16
	andl	$1, %eax	#, D.12149
	testl	%eax, %eax	# D.12149
	je	.L4	#,
	.loc 1 75 0 is_stmt 0 discriminator 1
	movq	imgY_org_bot(%rip), %rax	# imgY_org_bot, iftmp.15
	jmp	.L5	#
.L4:
	.loc 1 75 0 discriminator 2
	movq	imgY_org_top(%rip), %rax	# imgY_org_top, iftmp.15
.L5:
	.loc 1 75 0 discriminator 3
	movq	%rax, imgY_org(%rip)	# iftmp.15, imgY_org
	.loc 1 76 0 is_stmt 1 discriminator 3
	movl	-20(%rbp), %eax	# mb_addr, mb_addr.18
	andl	$1, %eax	#, D.12149
	testl	%eax, %eax	# D.12149
	je	.L6	#,
	.loc 1 76 0 is_stmt 0 discriminator 1
	movq	imgUV_org_bot(%rip), %rax	# imgUV_org_bot, iftmp.17
	jmp	.L7	#
.L6:
	.loc 1 76 0 discriminator 2
	movq	imgUV_org_top(%rip), %rax	# imgUV_org_top, iftmp.17
.L7:
	.loc 1 76 0 discriminator 1
	movq	%rax, imgUV_org(%rip)	# iftmp.17, imgUV_org
	.loc 1 77 0 is_stmt 1 discriminator 1
	movq	img(%rip), %rax	# img, img.19
	movq	img(%rip), %rdx	# img, img.20
	movl	140(%rdx), %edx	# img.20_45->mb_y, D.12146
	sarl	%edx	# D.12146
	sall	$4, %edx	#, D.12146
	movl	%edx, 172(%rax)	# D.12146, img.19_44->opix_y
	jmp	.L9	#
.L3:
	.loc 1 81 0
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.21
	movq	%rax, imgY_org(%rip)	# imgY_org_frm.21, imgY_org
	.loc 1 82 0
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.22
	movq	%rax, imgUV_org(%rip)	# imgUV_org_frm.22, imgUV_org
	.loc 1 83 0
	movq	img(%rip), %rax	# img, img.23
	movq	img(%rip), %rdx	# img, img.24
	movl	148(%rdx), %edx	# img.24_52->block_y, D.12146
	sall	$2, %edx	#, D.12146
	movl	%edx, 172(%rax)	# D.12146, img.23_51->opix_y
	jmp	.L9	#
.L2:
	.loc 1 88 0
	movq	img(%rip), %rax	# img, img.25
	movq	img(%rip), %rdx	# img, img.26
	movl	148(%rdx), %edx	# img.26_56->block_y, D.12146
	sall	$2, %edx	#, D.12146
	movl	%edx, 172(%rax)	# D.12146, img.25_55->opix_y
.L9:
	.loc 1 91 0
	movq	img(%rip), %rax	# img, img.27
	movl	72700(%rax), %eax	# img.27_59->yuv_format, D.12146
	testl	%eax, %eax	# D.12146
	je	.L1	#,
	.loc 1 93 0
	movq	img(%rip), %rcx	# img, img.28
	movq	img(%rip), %rax	# img, img.29
	movl	152(%rax), %esi	# img.29_62->pix_x, D.12146
	movq	img(%rip), %rax	# img, img.30
	movl	72708(%rax), %ebx	# img.30_64->mb_cr_size_x, D.12146
	movl	$16, %eax	#, tmp147
	cltd
	idivl	%ebx	# D.12146
	movl	%eax, %edi	# tmp145, D.12146
	movl	%esi, %eax	# D.12146, tmp148
	cltd
	idivl	%edi	# D.12146
	movl	%eax, 160(%rcx)	# D.12146, img.28_61->pix_c_x
	.loc 1 94 0
	movq	img(%rip), %rcx	# img, img.31
	movq	img(%rip), %rax	# img, img.32
	movl	156(%rax), %esi	# img.32_69->pix_y, D.12146
	movq	img(%rip), %rax	# img, img.33
	movl	72712(%rax), %ebx	# img.33_71->mb_cr_size_y, D.12146
	movl	$16, %eax	#, tmp152
	cltd
	idivl	%ebx	# D.12146
	movl	%eax, %edi	# tmp150, D.12146
	movl	%esi, %eax	# D.12146, tmp153
	cltd
	idivl	%edi	# D.12146
	movl	%eax, 164(%rcx)	# D.12146, img.31_68->pix_c_y
	.loc 1 96 0
	movq	img(%rip), %rcx	# img, img.34
	movq	img(%rip), %rax	# img, img.35
	movl	168(%rax), %esi	# img.35_76->opix_x, D.12146
	movq	img(%rip), %rax	# img, img.36
	movl	72708(%rax), %ebx	# img.36_78->mb_cr_size_x, D.12146
	movl	$16, %eax	#, tmp157
	cltd
	idivl	%ebx	# D.12146
	movl	%eax, %edi	# tmp155, D.12146
	movl	%esi, %eax	# D.12146, tmp158
	cltd
	idivl	%edi	# D.12146
	movl	%eax, 176(%rcx)	# D.12146, img.34_75->opix_c_x
	.loc 1 97 0
	movq	img(%rip), %rcx	# img, img.37
	movq	img(%rip), %rax	# img, img.38
	movl	172(%rax), %esi	# img.38_83->opix_y, D.12146
	movq	img(%rip), %rax	# img, img.39
	movl	72712(%rax), %ebx	# img.39_85->mb_cr_size_y, D.12146
	movl	$16, %eax	#, tmp162
	cltd
	idivl	%ebx	# D.12146
	movl	%eax, %edi	# tmp160, D.12146
	movl	%esi, %eax	# D.12146, tmp163
	cltd
	idivl	%edi	# D.12146
	movl	%eax, 180(%rcx)	# D.12146, img.37_82->opix_c_y
.L1:
	.loc 1 102 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	set_MB_parameters, .-set_MB_parameters
	.globl	clip1a
	.type	clip1a, @function
clip1a:
.LFB3:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# a, a
	.loc 1 107 0
	movq	img(%rip), %rax	# img, img.41
	movl	72684(%rax), %eax	# img.41_2->max_imgpel_value, D.12150
	cmpl	-4(%rbp), %eax	# a, D.12150
	jge	.L12	#,
	.loc 1 107 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.42
	movl	72684(%rax), %eax	# img.42_5->max_imgpel_value, iftmp.40
	jmp	.L13	#
.L12:
	.loc 1 107 0 discriminator 2
	movl	$0, %eax	#, tmp65
	cmpl	$0, -4(%rbp)	#, a
	cmovns	-4(%rbp), %eax	# a,, iftmp.40
.L13:
	.loc 1 108 0 is_stmt 1 discriminator 3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	clip1a, .-clip1a
	.globl	clip1a_chr
	.type	clip1a_chr, @function
clip1a_chr:
.LFB4:
	.loc 1 111 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# a, a
	.loc 1 112 0
	movq	img(%rip), %rax	# img, img.44
	movl	72688(%rax), %eax	# img.44_2->max_imgpel_value_uv, D.12151
	cmpl	-4(%rbp), %eax	# a, D.12151
	jge	.L16	#,
	.loc 1 112 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.45
	movl	72688(%rax), %eax	# img.45_5->max_imgpel_value_uv, iftmp.43
	jmp	.L17	#
.L16:
	.loc 1 112 0 discriminator 2
	movl	$0, %eax	#, tmp65
	cmpl	$0, -4(%rbp)	#, a
	cmovns	-4(%rbp), %eax	# a,, iftmp.43
.L17:
	.loc 1 113 0 is_stmt 1 discriminator 3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	clip1a_chr, .-clip1a_chr
	.globl	proceed2nextMacroblock
	.type	proceed2nextMacroblock, @function
proceed2nextMacroblock:
.LFB5:
	.loc 1 123 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 127 0
	movq	img(%rip), %rax	# img, img.46
	movq	14168(%rax), %rdx	# img.46_2->mb_data, D.12152
	movq	img(%rip), %rax	# img, img.47
	movl	12(%rax), %eax	# img.47_4->current_mb_nr, D.12153
	cltq
	imulq	$632, %rax, %rax	#, D.12154, D.12154
	addq	%rdx, %rax	# D.12152, tmp216
	movq	%rax, -16(%rbp)	# tmp216, currMB
	.loc 1 128 0
	movq	-16(%rbp), %rax	# currMB, tmp220
	addq	$20, %rax	#, tmp219
	movq	%rax, -8(%rbp)	# tmp219, bitCount
	.loc 1 145 0
	movq	stats(%rip), %rax	# stats, stats.48
	movq	img(%rip), %rdx	# img, img.49
	movl	24(%rdx), %esi	# img.49_11->type, D.12153
	movq	stats(%rip), %rdx	# stats, stats.50
	movq	img(%rip), %rcx	# img, img.51
	movl	24(%rcx), %ecx	# img.51_14->type, D.12153
	movslq	%ecx, %rcx	# D.12153, tmp221
	addq	$336, %rcx	#, tmp222
	movl	4(%rdx,%rcx,4), %ecx	# stats.50_13->bit_use_mb_type, D.12153
	movq	-8(%rbp), %rdx	# bitCount, tmp223
	addq	$8, %rdx	#, D.12155
	movl	(%rdx), %edx	# *_17, D.12153
	addl	%edx, %ecx	# D.12153, D.12153
	movslq	%esi, %rdx	# D.12153, tmp224
	addq	$336, %rdx	#, tmp225
	movl	%ecx, 4(%rax,%rdx,4)	# D.12153, stats.48_10->bit_use_mb_type
	.loc 1 146 0
	movq	stats(%rip), %rax	# stats, stats.52
	movq	img(%rip), %rdx	# img, img.53
	movl	24(%rdx), %esi	# img.53_21->type, D.12153
	movq	stats(%rip), %rdx	# stats, stats.54
	movq	img(%rip), %rcx	# img, img.55
	movl	24(%rcx), %ecx	# img.55_24->type, D.12153
	movslq	%ecx, %rcx	# D.12153, tmp226
	addq	$352, %rcx	#, tmp227
	movl	(%rdx,%rcx,4), %ecx	# stats.54_23->bit_use_coeffY, D.12153
	movq	-8(%rbp), %rdx	# bitCount, tmp228
	addq	$20, %rdx	#, D.12155
	movl	(%rdx), %edx	# *_27, D.12153
	addl	%edx, %ecx	# D.12153, D.12153
	movslq	%esi, %rdx	# D.12153, tmp229
	addq	$352, %rdx	#, tmp230
	movl	%ecx, (%rax,%rdx,4)	# D.12153, stats.52_20->bit_use_coeffY
	.loc 1 147 0
	movq	stats(%rip), %rax	# stats, stats.56
	movq	img(%rip), %rdx	# img, img.57
	movl	24(%rdx), %esi	# img.57_31->type, D.12153
	movq	stats(%rip), %rdx	# stats, stats.58
	movq	img(%rip), %rcx	# img, img.59
	movl	24(%rcx), %ecx	# img.59_34->type, D.12153
	movslq	%ecx, %rcx	# D.12153, tmp231
	addq	$344, %rcx	#, tmp232
	movl	12(%rdx,%rcx,4), %ecx	# stats.58_33->tmp_bit_use_cbp, D.12153
	movq	-8(%rbp), %rdx	# bitCount, tmp233
	addq	$16, %rdx	#, D.12155
	movl	(%rdx), %edx	# *_37, D.12153
	addl	%edx, %ecx	# D.12153, D.12153
	movslq	%esi, %rdx	# D.12153, tmp234
	addq	$344, %rdx	#, tmp235
	movl	%ecx, 12(%rax,%rdx,4)	# D.12153, stats.56_30->tmp_bit_use_cbp
	.loc 1 148 0
	movq	stats(%rip), %rax	# stats, stats.60
	movq	img(%rip), %rdx	# img, img.61
	movl	24(%rdx), %esi	# img.61_41->type, D.12153
	movq	stats(%rip), %rdx	# stats, stats.62
	movq	img(%rip), %rcx	# img, img.63
	movl	24(%rcx), %ecx	# img.63_44->type, D.12153
	movslq	%ecx, %rcx	# D.12153, tmp236
	addq	$356, %rcx	#, tmp237
	movl	4(%rdx,%rcx,4), %ecx	# stats.62_43->bit_use_coeffC, D.12153
	movq	-8(%rbp), %rdx	# bitCount, tmp238
	addq	$24, %rdx	#, D.12155
	movl	(%rdx), %edx	# *_47, D.12153
	addl	%edx, %ecx	# D.12153, D.12153
	movslq	%esi, %rdx	# D.12153, tmp239
	addq	$356, %rdx	#, tmp240
	movl	%ecx, 4(%rax,%rdx,4)	# D.12153, stats.60_40->bit_use_coeffC
	.loc 1 149 0
	movq	stats(%rip), %rax	# stats, stats.64
	movq	img(%rip), %rdx	# img, img.65
	movl	24(%rdx), %esi	# img.65_51->type, D.12153
	movq	stats(%rip), %rdx	# stats, stats.66
	movq	img(%rip), %rcx	# img, img.67
	movl	24(%rcx), %ecx	# img.67_54->type, D.12153
	movslq	%ecx, %rcx	# D.12153, tmp241
	addq	$360, %rcx	#, tmp242
	movl	8(%rdx,%rcx,4), %ecx	# stats.66_53->bit_use_delta_quant, D.12153
	movq	-8(%rbp), %rdx	# bitCount, tmp243
	addq	$28, %rdx	#, D.12155
	movl	(%rdx), %edx	# *_57, D.12153
	addl	%edx, %ecx	# D.12153, D.12153
	movslq	%esi, %rdx	# D.12153, tmp244
	addq	$360, %rdx	#, tmp245
	movl	%ecx, 8(%rax,%rdx,4)	# D.12153, stats.64_50->bit_use_delta_quant
	.loc 1 151 0
	movq	-16(%rbp), %rax	# currMB, tmp246
	movl	72(%rax), %eax	# currMB_8->mb_type, D.12153
	cmpl	$9, %eax	#, D.12153
	je	.L20	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# currMB, tmp247
	movl	72(%rax), %eax	# currMB_8->mb_type, D.12153
	cmpl	$10, %eax	#, D.12153
	je	.L20	#,
	movq	-16(%rbp), %rax	# currMB, tmp248
	movl	72(%rax), %eax	# currMB_8->mb_type, D.12153
	cmpl	$13, %eax	#, D.12153
	jne	.L21	#,
.L20:
	.loc 1 153 0 is_stmt 1
	movq	stats(%rip), %rax	# stats, stats.68
	movq	-16(%rbp), %rdx	# currMB, tmp249
	movl	524(%rdx), %edx	# currMB_8->c_ipred_mode, D.12153
	movslq	%edx, %rcx	# D.12153, tmp250
	addq	$168, %rcx	#, tmp251
	movl	(%rax,%rcx,4), %ecx	# stats.68_63->intra_chroma_mode, D.12153
	addl	$1, %ecx	#, D.12153
	movslq	%edx, %rdx	# D.12153, tmp252
	addq	$168, %rdx	#, tmp253
	movl	%ecx, (%rax,%rdx,4)	# D.12153, stats.68_63->intra_chroma_mode
	.loc 1 155 0
	movq	-16(%rbp), %rax	# currMB, tmp254
	movl	460(%rax), %eax	# currMB_8->cbp, D.12153
	andl	$15, %eax	#, D.12153
	testl	%eax, %eax	# D.12153
	je	.L21	#,
	.loc 1 157 0
	movq	-16(%rbp), %rax	# currMB, tmp255
	movl	572(%rax), %eax	# currMB_8->luma_transform_size_8x8_flag, D.12153
	testl	%eax, %eax	# D.12153
	je	.L22	#,
	.loc 1 158 0
	movq	stats(%rip), %rdx	# stats, stats.69
	movq	img(%rip), %rax	# img, img.70
	movl	24(%rax), %ecx	# img.70_71->type, D.12153
	movq	-16(%rbp), %rax	# currMB, tmp256
	movl	72(%rax), %esi	# currMB_8->mb_type, D.12153
	movslq	%esi, %r8	# D.12153, tmp257
	movslq	%ecx, %rdi	# D.12153, tmp258
	movq	%rdi, %rax	# tmp258, tmp259
	salq	$4, %rax	#, tmp260
	subq	%rdi, %rax	# tmp258, tmp259
	addq	%r8, %rax	# tmp257, tmp261
	addq	$16, %rax	#, tmp262
	movl	8(%rdx,%rax,4), %eax	# stats.69_70->mode_use_transform_8x8, D.12153
	leal	1(%rax), %edi	#, D.12153
	movslq	%esi, %rsi	# D.12153, tmp263
	movslq	%ecx, %rcx	# D.12153, tmp264
	movq	%rcx, %rax	# tmp264, tmp265
	salq	$4, %rax	#, tmp266
	subq	%rcx, %rax	# tmp264, tmp265
	addq	%rsi, %rax	# tmp263, tmp267
	addq	$16, %rax	#, tmp268
	movl	%edi, 8(%rdx,%rax,4)	# D.12153, stats.69_70->mode_use_transform_8x8
	jmp	.L21	#
.L22:
	.loc 1 160 0
	movq	stats(%rip), %rdx	# stats, stats.71
	movq	img(%rip), %rax	# img, img.72
	movl	24(%rax), %ecx	# img.72_77->type, D.12153
	movq	-16(%rbp), %rax	# currMB, tmp269
	movl	72(%rax), %esi	# currMB_8->mb_type, D.12153
	movslq	%esi, %r8	# D.12153, tmp270
	movslq	%ecx, %rdi	# D.12153, tmp271
	movq	%rdi, %rax	# tmp271, tmp272
	salq	$4, %rax	#, tmp273
	subq	%rdi, %rax	# tmp271, tmp272
	addq	%r8, %rax	# tmp270, tmp274
	addq	$92, %rax	#, tmp275
	movl	4(%rdx,%rax,4), %eax	# stats.71_76->mode_use_transform_4x4, D.12153
	leal	1(%rax), %edi	#, D.12153
	movslq	%esi, %rsi	# D.12153, tmp276
	movslq	%ecx, %rcx	# D.12153, tmp277
	movq	%rcx, %rax	# tmp277, tmp278
	salq	$4, %rax	#, tmp279
	subq	%rcx, %rax	# tmp277, tmp278
	addq	%rsi, %rax	# tmp276, tmp280
	addq	$92, %rax	#, tmp281
	movl	%edi, 4(%rdx,%rax,4)	# D.12153, stats.71_76->mode_use_transform_4x4
.L21:
	.loc 1 164 0
	movq	stats(%rip), %rdx	# stats, stats.73
	movq	img(%rip), %rax	# img, img.74
	movl	24(%rax), %ecx	# img.74_83->type, D.12153
	movq	-16(%rbp), %rax	# currMB, tmp282
	movl	72(%rax), %esi	# currMB_8->mb_type, D.12153
	movslq	%esi, %r8	# D.12153, tmp283
	movslq	%ecx, %rdi	# D.12153, tmp284
	movq	%rdi, %rax	# tmp284, tmp285
	salq	$4, %rax	#, tmp286
	subq	%rdi, %rax	# tmp284, tmp285
	addq	%r8, %rax	# tmp283, tmp287
	addq	$180, %rax	#, tmp288
	movl	8(%rdx,%rax,4), %eax	# stats.73_82->mode_use, D.12153
	leal	1(%rax), %edi	#, D.12153
	movslq	%esi, %rsi	# D.12153, tmp289
	movslq	%ecx, %rcx	# D.12153, tmp290
	movq	%rcx, %rax	# tmp290, tmp291
	salq	$4, %rax	#, tmp292
	subq	%rcx, %rax	# tmp290, tmp291
	addq	%rsi, %rax	# tmp289, tmp293
	addq	$180, %rax	#, tmp294
	movl	%edi, 8(%rdx,%rax,4)	# D.12153, stats.73_82->mode_use
	.loc 1 165 0
	movq	stats(%rip), %rcx	# stats, stats.75
	movq	img(%rip), %rax	# img, img.76
	movl	24(%rax), %r8d	# img.76_89->type, D.12153
	movq	-16(%rbp), %rax	# currMB, tmp295
	movl	72(%rax), %edi	# currMB_8->mb_type, D.12153
	movq	stats(%rip), %rsi	# stats, stats.77
	movq	img(%rip), %rax	# img, img.78
	movl	24(%rax), %edx	# img.78_93->type, D.12153
	movq	-16(%rbp), %rax	# currMB, tmp296
	movl	72(%rax), %eax	# currMB_8->mb_type, D.12153
	movslq	%eax, %r9	# D.12153, tmp297
	movslq	%edx, %rdx	# D.12153, tmp298
	movq	%rdx, %rax	# tmp298, tmp299
	salq	$4, %rax	#, tmp300
	subq	%rdx, %rax	# tmp298, tmp299
	addq	%r9, %rax	# tmp297, tmp301
	addq	$256, %rax	#, tmp302
	movl	4(%rsi,%rax,4), %edx	# stats.77_92->bit_use_mode, D.12153
	movq	-8(%rbp), %rax	# bitCount, tmp303
	addq	$12, %rax	#, D.12155
	movl	(%rax), %eax	# *_97, D.12153
	leal	(%rdx,%rax), %esi	#, D.12153
	movslq	%edi, %rdi	# D.12153, tmp304
	movslq	%r8d, %rdx	# D.12153, tmp305
	movq	%rdx, %rax	# tmp305, tmp306
	salq	$4, %rax	#, tmp307
	subq	%rdx, %rax	# tmp305, tmp306
	addq	%rdi, %rax	# tmp304, tmp308
	addq	$256, %rax	#, tmp309
	movl	%esi, 4(%rcx,%rax,4)	# D.12153, stats.75_88->bit_use_mode
	.loc 1 167 0
	movq	img(%rip), %rax	# img, img.79
	movl	24(%rax), %eax	# img.79_100->type, D.12153
	cmpl	$2, %eax	#, D.12153
	je	.L23	#,
	.loc 1 169 0
	movq	-16(%rbp), %rax	# currMB, tmp310
	movl	72(%rax), %eax	# currMB_8->mb_type, D.12153
	cmpl	$8, %eax	#, D.12153
	jne	.L24	#,
	.loc 1 171 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L25	#
.L32:
	.loc 1 173 0
	movq	-16(%rbp), %rax	# currMB, tmp311
	movl	-20(%rbp), %edx	# i, tmp313
	movslq	%edx, %rdx	# tmp313, tmp312
	addq	$116, %rdx	#, tmp314
	movl	8(%rax,%rdx,4), %eax	# currMB_8->b8mode, D.12153
	testl	%eax, %eax	# D.12153
	jle	.L26	#,
	.loc 1 174 0
	movq	stats(%rip), %rdx	# stats, stats.80
	movq	img(%rip), %rax	# img, img.81
	movl	24(%rax), %ecx	# img.81_106->type, D.12153
	movq	-16(%rbp), %rax	# currMB, tmp315
	movl	-20(%rbp), %esi	# i, tmp317
	movslq	%esi, %rsi	# tmp317, tmp316
	addq	$116, %rsi	#, tmp318
	movl	8(%rax,%rsi,4), %esi	# currMB_8->b8mode, D.12153
	movslq	%esi, %r8	# D.12153, tmp319
	movslq	%ecx, %rdi	# D.12153, tmp320
	movq	%rdi, %rax	# tmp320, tmp321
	salq	$4, %rax	#, tmp322
	subq	%rdi, %rax	# tmp320, tmp321
	addq	%r8, %rax	# tmp319, tmp323
	addq	$180, %rax	#, tmp324
	movl	8(%rdx,%rax,4), %eax	# stats.80_105->mode_use, D.12153
	leal	1(%rax), %edi	#, D.12153
	movslq	%esi, %rsi	# D.12153, tmp325
	movslq	%ecx, %rcx	# D.12153, tmp326
	movq	%rcx, %rax	# tmp326, tmp327
	salq	$4, %rax	#, tmp328
	subq	%rcx, %rax	# tmp326, tmp327
	addq	%rsi, %rax	# tmp325, tmp329
	addq	$180, %rax	#, tmp330
	movl	%edi, 8(%rdx,%rax,4)	# D.12153, stats.80_105->mode_use
	jmp	.L27	#
.L26:
	.loc 1 176 0
	movq	stats(%rip), %rax	# stats, stats.82
	movq	img(%rip), %rdx	# img, img.83
	movl	24(%rdx), %edx	# img.83_112->type, D.12153
	movq	-16(%rbp), %rcx	# currMB, tmp331
	movl	572(%rcx), %ecx	# currMB_8->luma_transform_size_8x8_flag, D.12153
	movslq	%ecx, %rsi	# D.12153, tmp332
	movslq	%edx, %rdi	# D.12153, tmp333
	addq	%rdi, %rdi	# tmp334
	addq	%rdi, %rsi	# tmp334, tmp335
	addq	$8, %rsi	#, tmp336
	movl	(%rax,%rsi,4), %esi	# stats.82_111->b8_mode_0_use, D.12153
	addl	$1, %esi	#, D.12153
	movslq	%ecx, %rcx	# D.12153, tmp337
	movslq	%edx, %rdx	# D.12153, tmp338
	addq	%rdx, %rdx	# tmp339
	addq	%rcx, %rdx	# tmp337, tmp340
	addq	$8, %rdx	#, tmp341
	movl	%esi, (%rax,%rdx,4)	# D.12153, stats.82_111->b8_mode_0_use
.L27:
	.loc 1 178 0
	movq	-16(%rbp), %rax	# currMB, tmp342
	movl	-20(%rbp), %edx	# i, tmp344
	movslq	%edx, %rdx	# tmp344, tmp343
	addq	$116, %rdx	#, tmp345
	movl	8(%rax,%rdx,4), %eax	# currMB_8->b8mode, D.12153
	cmpl	$4, %eax	#, D.12153
	jne	.L28	#,
	.loc 1 180 0
	movq	-16(%rbp), %rax	# currMB, tmp346
	movl	572(%rax), %eax	# currMB_8->luma_transform_size_8x8_flag, D.12153
	testl	%eax, %eax	# D.12153
	je	.L29	#,
	.loc 1 180 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# currMB, tmp347
	movl	460(%rax), %eax	# currMB_8->cbp, D.12153
	andl	$15, %eax	#, D.12153
	testl	%eax, %eax	# D.12153
	jne	.L30	#,
.L29:
	.loc 1 180 0 discriminator 2
	movq	input(%rip), %rax	# input, input.84
	movl	3220(%rax), %eax	# input.84_121->AllowTransform8x8, D.12153
	cmpl	$2, %eax	#, D.12153
	jne	.L31	#,
.L30:
	.loc 1 181 0 is_stmt 1
	movq	stats(%rip), %rcx	# stats, stats.85
	movq	img(%rip), %rax	# img, img.86
	movl	24(%rax), %esi	# img.86_129->type, D.12153
	movslq	%esi, %rax	# D.12153, tmp348
	salq	$2, %rax	#, tmp350
	movq	%rax, %rdx	# tmp349, tmp351
	salq	$4, %rdx	#, tmp351
	subq	%rax, %rdx	# tmp349, tmp351
	leaq	(%rcx,%rdx), %rax	#, tmp352
	addq	$80, %rax	#, tmp353
	movl	8(%rax), %eax	# stats.85_128->mode_use_transform_8x8, D.12153
	leal	1(%rax), %edi	#, D.12153
	movslq	%esi, %rax	# D.12153, tmp354
	salq	$2, %rax	#, tmp356
	movq	%rax, %rdx	# tmp355, tmp357
	salq	$4, %rdx	#, tmp357
	subq	%rax, %rdx	# tmp355, tmp357
	leaq	(%rcx,%rdx), %rax	#, tmp358
	addq	$80, %rax	#, tmp359
	movl	%edi, 8(%rax)	# D.12153, stats.85_128->mode_use_transform_8x8
	jmp	.L28	#
.L31:
	.loc 1 183 0
	movq	stats(%rip), %rcx	# stats, stats.87
	movq	img(%rip), %rax	# img, img.88
	movl	24(%rax), %esi	# img.88_124->type, D.12153
	movslq	%esi, %rax	# D.12153, tmp360
	salq	$2, %rax	#, tmp362
	movq	%rax, %rdx	# tmp361, tmp363
	salq	$4, %rdx	#, tmp363
	subq	%rax, %rdx	# tmp361, tmp363
	leaq	(%rcx,%rdx), %rax	#, tmp364
	addq	$384, %rax	#, tmp365
	movl	4(%rax), %eax	# stats.87_123->mode_use_transform_4x4, D.12153
	leal	1(%rax), %edi	#, D.12153
	movslq	%esi, %rax	# D.12153, tmp366
	salq	$2, %rax	#, tmp368
	movq	%rax, %rdx	# tmp367, tmp369
	salq	$4, %rdx	#, tmp369
	subq	%rax, %rdx	# tmp367, tmp369
	leaq	(%rcx,%rdx), %rax	#, tmp370
	addq	$384, %rax	#, tmp371
	movl	%edi, 4(%rax)	# D.12153, stats.87_123->mode_use_transform_4x4
.L28:
	.loc 1 171 0
	addl	$1, -20(%rbp)	#, i
.L25:
	.loc 1 171 0 is_stmt 0 discriminator 1
	cmpl	$3, -20(%rbp)	#, i
	jle	.L32	#,
	jmp	.L23	#
.L24:
	.loc 1 187 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMB, tmp372
	movl	72(%rax), %eax	# currMB_8->mb_type, D.12153
	testl	%eax, %eax	# D.12153
	js	.L23	#,
	.loc 1 187 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# currMB, tmp373
	movl	72(%rax), %eax	# currMB_8->mb_type, D.12153
	cmpl	$3, %eax	#, D.12153
	jg	.L23	#,
	movq	-16(%rbp), %rax	# currMB, tmp374
	movl	460(%rax), %eax	# currMB_8->cbp, D.12153
	andl	$15, %eax	#, D.12153
	testl	%eax, %eax	# D.12153
	je	.L23	#,
	.loc 1 189 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMB, tmp375
	movl	572(%rax), %eax	# currMB_8->luma_transform_size_8x8_flag, D.12153
	testl	%eax, %eax	# D.12153
	je	.L33	#,
	.loc 1 190 0
	movq	stats(%rip), %rdx	# stats, stats.89
	movq	img(%rip), %rax	# img, img.90
	movl	24(%rax), %ecx	# img.90_140->type, D.12153
	movq	-16(%rbp), %rax	# currMB, tmp376
	movl	72(%rax), %esi	# currMB_8->mb_type, D.12153
	movslq	%esi, %r8	# D.12153, tmp377
	movslq	%ecx, %rdi	# D.12153, tmp378
	movq	%rdi, %rax	# tmp378, tmp379
	salq	$4, %rax	#, tmp380
	subq	%rdi, %rax	# tmp378, tmp379
	addq	%r8, %rax	# tmp377, tmp381
	addq	$16, %rax	#, tmp382
	movl	8(%rdx,%rax,4), %eax	# stats.89_139->mode_use_transform_8x8, D.12153
	leal	1(%rax), %edi	#, D.12153
	movslq	%esi, %rsi	# D.12153, tmp383
	movslq	%ecx, %rcx	# D.12153, tmp384
	movq	%rcx, %rax	# tmp384, tmp385
	salq	$4, %rax	#, tmp386
	subq	%rcx, %rax	# tmp384, tmp385
	addq	%rsi, %rax	# tmp383, tmp387
	addq	$16, %rax	#, tmp388
	movl	%edi, 8(%rdx,%rax,4)	# D.12153, stats.89_139->mode_use_transform_8x8
	jmp	.L23	#
.L33:
	.loc 1 192 0
	movq	stats(%rip), %rdx	# stats, stats.91
	movq	img(%rip), %rax	# img, img.92
	movl	24(%rax), %ecx	# img.92_146->type, D.12153
	movq	-16(%rbp), %rax	# currMB, tmp389
	movl	72(%rax), %esi	# currMB_8->mb_type, D.12153
	movslq	%esi, %r8	# D.12153, tmp390
	movslq	%ecx, %rdi	# D.12153, tmp391
	movq	%rdi, %rax	# tmp391, tmp392
	salq	$4, %rax	#, tmp393
	subq	%rdi, %rax	# tmp391, tmp392
	addq	%r8, %rax	# tmp390, tmp394
	addq	$92, %rax	#, tmp395
	movl	4(%rdx,%rax,4), %eax	# stats.91_145->mode_use_transform_4x4, D.12153
	leal	1(%rax), %edi	#, D.12153
	movslq	%esi, %rsi	# D.12153, tmp396
	movslq	%ecx, %rcx	# D.12153, tmp397
	movq	%rcx, %rax	# tmp397, tmp398
	salq	$4, %rax	#, tmp399
	subq	%rcx, %rax	# tmp397, tmp398
	addq	%rsi, %rax	# tmp396, tmp400
	addq	$92, %rax	#, tmp401
	movl	%edi, 4(%rdx,%rax,4)	# D.12153, stats.91_145->mode_use_transform_4x4
.L23:
	.loc 1 197 0
	movq	img(%rip), %rax	# img, img.93
	movl	24(%rax), %eax	# img.93_151->type, D.12153
	testl	%eax, %eax	# D.12153
	je	.L34	#,
	.loc 1 197 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.94
	movl	24(%rax), %eax	# img.94_153->type, D.12153
	cmpl	$3, %eax	#, D.12153
	jne	.L19	#,
.L34:
	.loc 1 199 0 is_stmt 1
	movq	stats(%rip), %rax	# stats, stats.95
	movl	(%rax), %edx	# stats.95_155->quant0, D.12153
	addl	$1, %edx	#, D.12153
	movl	%edx, (%rax)	# D.12153, stats.95_155->quant0
	.loc 1 200 0
	movq	stats(%rip), %rax	# stats, stats.96
	movq	stats(%rip), %rdx	# stats, stats.97
	movl	4(%rdx), %ecx	# stats.97_159->quant1, D.12153
	movq	-16(%rbp), %rdx	# currMB, tmp402
	movl	12(%rdx), %edx	# currMB_8->qp, D.12153
	addl	%ecx, %edx	# D.12153, D.12153
	movl	%edx, 4(%rax)	# D.12153, stats.96_158->quant1
.L19:
	.loc 1 202 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	proceed2nextMacroblock, .-proceed2nextMacroblock
	.globl	start_macroblock
	.type	start_macroblock, @function
start_macroblock:
.LFB6:
	.loc 1 211 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -116(%rbp)	# mb_addr, mb_addr
	movl	%esi, -120(%rbp)	# mb_field, mb_field
	.loc 1 213 0
	movq	input(%rip), %rax	# input, input.99
	movl	208(%rax), %eax	# input.99_16->slice_mode, D.12156
	cmpl	$2, %eax	#, D.12156
	je	.L37	#,
	.loc 1 213 0 is_stmt 0 discriminator 2
	movq	input(%rip), %rax	# input, input.100
	movl	208(%rax), %eax	# input.100_18->slice_mode, D.12156
	cmpl	$3, %eax	#, D.12156
	jne	.L38	#,
.L37:
	.loc 1 213 0 discriminator 1
	movl	$1, %eax	#, iftmp.98
	jmp	.L39	#
.L38:
	.loc 1 213 0 discriminator 3
	movl	$0, %eax	#, iftmp.98
.L39:
	.loc 1 213 0 discriminator 4
	movl	%eax, -84(%rbp)	# iftmp.98, use_bitstream_backing
	.loc 1 214 0 is_stmt 1 discriminator 4
	movq	img(%rip), %rax	# img, img.101
	movq	14168(%rax), %rdx	# img.101_23->mb_data, D.12157
	movl	-116(%rbp), %eax	# mb_addr, tmp456
	cltq
	imulq	$632, %rax, %rax	#, D.12158, D.12158
	addq	%rdx, %rax	# D.12157, tmp457
	movq	%rax, -64(%rbp)	# tmp457, currMB
	.loc 1 215 0 discriminator 4
	movq	img(%rip), %rax	# img, img.102
	movq	14160(%rax), %rax	# img.102_29->currentSlice, tmp458
	movq	%rax, -56(%rbp)	# tmp458, curr_slice
	.loc 1 219 0 discriminator 4
	movq	img(%rip), %rax	# img, img.103
	movl	72668(%rax), %eax	# img.103_31->bitdepth_luma_qp_scale, D.12156
	movl	%eax, %edx	# D.12156, tmp459
	shrl	$31, %edx	#, tmp459
	addl	%edx, %eax	# tmp459, tmp460
	sarl	%eax	# tmp461
	addl	$25, %eax	#, tmp462
	movl	%eax, -80(%rbp)	# tmp462, max_qp_delta
	.loc 1 220 0 discriminator 4
	movq	img(%rip), %rax	# img, img.104
	movl	72668(%rax), %eax	# img.104_35->bitdepth_luma_qp_scale, D.12156
	movl	%eax, %edx	# D.12156, tmp463
	shrl	$31, %edx	#, tmp463
	addl	%edx, %eax	# tmp463, tmp464
	sarl	%eax	# tmp465
	addl	$26, %eax	#, tmp466
	movl	%eax, -76(%rbp)	# tmp466, min_qp_delta
	.loc 1 222 0 discriminator 4
	movq	-64(%rbp), %rax	# currMB, tmp467
	movl	-120(%rbp), %edx	# mb_field, tmp468
	movl	%edx, 532(%rax)	# tmp468, currMB_28->mb_field
	.loc 1 224 0 discriminator 4
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.105
	movq	6472(%rax), %rdx	# enc_picture.105_40->mb_field, D.12159
	movl	-116(%rbp), %eax	# mb_addr, tmp469
	cltq
	addq	%rax, %rdx	# D.12160, D.12159
	movl	-120(%rbp), %eax	# mb_field, tmp470
	movb	%al, (%rdx)	# D.12161, *_43
	.loc 1 226 0 discriminator 4
	movl	-116(%rbp), %eax	# mb_addr, tmp471
	movl	%eax, %edi	# tmp471,
	call	set_MB_parameters	#
	.loc 1 228 0 discriminator 4
	cmpl	$0, -84(%rbp)	#, use_bitstream_backing
	je	.L40	#,
	.loc 1 231 0
	movq	img(%rip), %rax	# img, img.106
	movl	120(%rax), %eax	# img.106_45->cod_counter, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L40	#,
	.loc 1 232 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L41	#
.L43:
	.loc 1 234 0
	movq	-56(%rbp), %rax	# curr_slice, tmp472
	movq	24(%rax), %rdx	# curr_slice_30->partArr, D.12162
	movl	-100(%rbp), %eax	# i, tmp473
	cltq
	salq	$3, %rax	#, tmp475
	movq	%rax, %rcx	# tmp474, tmp476
	salq	$4, %rcx	#, tmp476
	subq	%rax, %rcx	# tmp474, D.12158
	movq	%rcx, %rax	# D.12158, D.12158
	addq	%rdx, %rax	# D.12162, tmp477
	movq	%rax, -48(%rbp)	# tmp477, dataPart
	.loc 1 235 0
	movq	-48(%rbp), %rax	# dataPart, tmp478
	movq	(%rax), %rax	# dataPart_52->bitstream, tmp479
	movq	%rax, -40(%rbp)	# tmp479, currStream
	.loc 1 236 0
	movq	-40(%rbp), %rax	# currStream, tmp480
	movl	4(%rax), %edx	# currStream_53->bits_to_go, D.12156
	movq	-40(%rbp), %rax	# currStream, tmp481
	movl	%edx, 16(%rax)	# D.12156, currStream_53->stored_bits_to_go
	.loc 1 237 0
	movq	-40(%rbp), %rax	# currStream, tmp482
	movl	(%rax), %edx	# currStream_53->byte_pos, D.12156
	movq	-40(%rbp), %rax	# currStream, tmp483
	movl	%edx, 12(%rax)	# D.12156, currStream_53->stored_byte_pos
	.loc 1 238 0
	movq	-40(%rbp), %rax	# currStream, tmp484
	movzbl	8(%rax), %edx	# currStream_53->byte_buf, D.12161
	movq	-40(%rbp), %rax	# currStream, tmp485
	movb	%dl, 20(%rax)	# D.12161, currStream_53->stored_byte_buf
	.loc 1 240 0
	movq	input(%rip), %rax	# input, input.107
	movl	2356(%rax), %eax	# input.107_57->symbol_mode, D.12156
	cmpl	$1, %eax	#, D.12156
	jne	.L42	#,
	.loc 1 242 0
	movq	-48(%rbp), %rax	# dataPart, tmp489
	addq	$8, %rax	#, tmp488
	movq	%rax, -32(%rbp)	# tmp488, eep
	.loc 1 243 0
	movq	-32(%rbp), %rax	# eep, tmp490
	movl	(%rax), %edx	# eep_59->Elow, D.12163
	movq	-32(%rbp), %rax	# eep, tmp491
	movl	%edx, 40(%rax)	# D.12163, eep_59->ElowS
	.loc 1 244 0
	movq	-32(%rbp), %rax	# eep, tmp492
	movl	4(%rax), %edx	# eep_59->Erange, D.12163
	movq	-32(%rbp), %rax	# eep, tmp493
	movl	%edx, 44(%rax)	# D.12163, eep_59->ErangeS
	.loc 1 245 0
	movq	-32(%rbp), %rax	# eep, tmp494
	movl	8(%rax), %edx	# eep_59->Ebuffer, D.12163
	movq	-32(%rbp), %rax	# eep, tmp495
	movl	%edx, 48(%rax)	# D.12163, eep_59->EbufferS
	.loc 1 246 0
	movq	-32(%rbp), %rax	# eep, tmp496
	movl	12(%rax), %edx	# eep_59->Ebits_to_go, D.12163
	movq	-32(%rbp), %rax	# eep, tmp497
	movl	%edx, 52(%rax)	# D.12163, eep_59->Ebits_to_goS
	.loc 1 247 0
	movq	-32(%rbp), %rax	# eep, tmp498
	movl	16(%rax), %edx	# eep_59->Ebits_to_follow, D.12163
	movq	-32(%rbp), %rax	# eep, tmp499
	movl	%edx, 56(%rax)	# D.12163, eep_59->Ebits_to_followS
	.loc 1 248 0
	movq	-32(%rbp), %rax	# eep, tmp500
	movq	24(%rax), %rdx	# eep_59->Ecodestrm, D.12159
	movq	-32(%rbp), %rax	# eep, tmp501
	movq	%rdx, 64(%rax)	# D.12159, eep_59->EcodestrmS
	.loc 1 249 0
	movq	-32(%rbp), %rax	# eep, tmp502
	movq	32(%rax), %rdx	# eep_59->Ecodestrm_len, D.12164
	movq	-32(%rbp), %rax	# eep, tmp503
	movq	%rdx, 72(%rax)	# D.12164, eep_59->Ecodestrm_lenS
	.loc 1 250 0
	movq	-32(%rbp), %rax	# eep, tmp504
	movl	80(%rax), %edx	# eep_59->C, D.12156
	movq	-32(%rbp), %rax	# eep, tmp505
	movl	%edx, 84(%rax)	# D.12156, eep_59->CS
	.loc 1 251 0
	movq	-32(%rbp), %rax	# eep, tmp506
	movl	96(%rax), %edx	# eep_59->B, D.12156
	movq	-32(%rbp), %rax	# eep, tmp507
	movl	%edx, 100(%rax)	# D.12156, eep_59->BS
	.loc 1 252 0
	movq	-32(%rbp), %rax	# eep, tmp508
	movl	88(%rax), %edx	# eep_59->E, D.12156
	movq	-32(%rbp), %rax	# eep, tmp509
	movl	%edx, 92(%rax)	# D.12156, eep_59->ES
.L42:
	.loc 1 232 0
	addl	$1, -100(%rbp)	#, i
.L41:
	.loc 1 232 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# curr_slice, tmp510
	movl	16(%rax), %eax	# curr_slice_30->max_part_nr, D.12156
	cmpl	-100(%rbp), %eax	# i, D.12156
	jg	.L43	#,
.L40:
	.loc 1 259 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.108
	movl	20(%rax), %edx	# img.108_71->current_slice_nr, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp511
	movl	%edx, 4(%rax)	# D.12156, currMB_28->slice_nr
	.loc 1 263 0
	movq	img(%rip), %rax	# img, img.109
	movl	44(%rax), %edx	# img.109_73->qpsp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp512
	movl	%edx, 16(%rax)	# D.12156, currMB_28->qpsp
	.loc 1 264 0
	movq	input(%rip), %rax	# input, input.110
	movl	3236(%rax), %eax	# input.110_75->RCEnable, D.12156
	testl	%eax, %eax	# D.12156
	je	.L44	#,
.LBB2:
	.loc 1 266 0
	movq	img(%rip), %rax	# img, img.111
	movl	12(%rax), %eax	# img.111_77->current_mb_nr, D.12156
	movl	%eax, %edi	# D.12156,
	call	FmoGetPreviousMBNr	#
	movl	%eax, -72(%rbp)	# tmp513, prev_mb
	.loc 1 267 0
	cmpl	$0, -72(%rbp)	#, prev_mb
	js	.L45	#,
	.loc 1 269 0
	movq	img(%rip), %rax	# img, img.112
	movq	14168(%rax), %rdx	# img.112_80->mb_data, D.12157
	movl	-72(%rbp), %eax	# prev_mb, tmp514
	cltq
	imulq	$632, %rax, %rax	#, D.12158, D.12158
	addq	%rdx, %rax	# D.12157, D.12157
	movl	12(%rax), %edx	# _84->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp515
	movl	%edx, 592(%rax)	# D.12156, currMB_28->prev_qp
	.loc 1 270 0
	movq	img(%rip), %rax	# img, img.113
	movq	14168(%rax), %rdx	# img.113_86->mb_data, D.12157
	movl	-72(%rbp), %eax	# prev_mb, tmp516
	cltq
	imulq	$632, %rax, %rax	#, D.12158, D.12158
	addq	%rdx, %rax	# D.12157, D.12157
	movl	8(%rax), %edx	# _90->delta_qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp517
	movl	%edx, 596(%rax)	# D.12156, currMB_28->prev_delta_qp
	jmp	.L46	#
.L45:
	.loc 1 274 0
	movq	-56(%rbp), %rax	# curr_slice, tmp518
	movl	4(%rax), %edx	# curr_slice_30->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp519
	movl	%edx, 592(%rax)	# D.12156, currMB_28->prev_qp
	.loc 1 275 0
	movq	-64(%rbp), %rax	# currMB, tmp520
	movl	$0, 596(%rax)	#, currMB_28->prev_delta_qp
.L46:
	.loc 1 278 0
	movq	input(%rip), %rax	# input, input.114
	movl	3248(%rax), %edx	# input.114_93->basicunit, D.12156
	movq	img(%rip), %rax	# img, img.115
	movl	72608(%rax), %eax	# img.115_95->Frame_Total_Number_MB, D.12156
	cmpl	%eax, %edx	# D.12156, D.12156
	jne	.L47	#,
	.loc 1 280 0
	movq	-64(%rbp), %rax	# currMB, tmp521
	movl	$0, 8(%rax)	#, currMB_28->delta_qp
	.loc 1 281 0
	movq	img(%rip), %rax	# img, img.116
	movl	40(%rax), %edx	# img.116_97->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp522
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	jmp	.L48	#
.L47:
	.loc 1 287 0
	movq	img(%rip), %rax	# img, img.117
	movl	24(%rax), %eax	# img.117_99->type, D.12156
	cmpl	$2, %eax	#, D.12156
	je	.L49	#,
	.loc 1 287 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.118
	movl	24(%rax), %eax	# img.118_101->type, D.12156
	cmpl	$1, %eax	#, D.12156
	jne	.L50	#,
.L49:
	.loc 1 289 0 is_stmt 1
	movq	-64(%rbp), %rax	# currMB, tmp523
	movl	$0, 8(%rax)	#, currMB_28->delta_qp
	.loc 1 290 0
	movq	img(%rip), %rax	# img, img.119
	movl	40(%rax), %edx	# img.119_301->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp524
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	jmp	.L48	#
.L50:
	.loc 1 292 0
	movq	img(%rip), %rax	# img, img.120
	movl	24(%rax), %eax	# img.120_103->type, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L48	#,
	.loc 1 295 0
	movq	img(%rip), %rax	# img, img.121
	movl	72624(%rax), %eax	# img.121_105->write_macroblock, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L51	#,
	.loc 1 297 0
	movq	-64(%rbp), %rax	# currMB, tmp525
	movl	532(%rax), %eax	# currMB_28->mb_field, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L52	#,
	.loc 1 299 0
	movq	img(%rip), %rax	# img, img.122
	movl	12(%rax), %eax	# img.122_108->current_mb_nr, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L53	#,
	.loc 1 302 0
	movq	-64(%rbp), %rax	# currMB, tmp526
	movl	$0, 8(%rax)	#, currMB_28->delta_qp
	.loc 1 303 0
	movq	img(%rip), %rax	# img, img.123
	movl	40(%rax), %edx	# img.123_110->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp527
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	.loc 1 304 0
	movq	-64(%rbp), %rax	# currMB, tmp528
	movl	8(%rax), %eax	# currMB_28->delta_qp, DELTA_QP2.124
	movl	%eax, DELTA_QP2(%rip)	# DELTA_QP2.124, DELTA_QP2
	movl	DELTA_QP2(%rip), %eax	# DELTA_QP2, DELTA_QP2.125
	movl	%eax, DELTA_QP(%rip)	# DELTA_QP2.125, DELTA_QP
	.loc 1 305 0
	movq	-64(%rbp), %rax	# currMB, tmp529
	movl	12(%rax), %eax	# currMB_28->qp, QP2.126
	movl	%eax, QP2(%rip)	# QP2.126, QP2
	movl	QP2(%rip), %eax	# QP2, QP2.127
	movl	%eax, QP(%rip)	# QP2.127, QP
	jmp	.L61	#
.L53:
	.loc 1 309 0
	movq	input(%rip), %rax	# input, input.128
	movl	2884(%rax), %eax	# input.128_116->MbInterlace, D.12156
	testl	%eax, %eax	# D.12156
	je	.L55	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.129
	movl	72628(%rax), %eax	# img.129_118->bot_MB, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L56	#,
.L55:
	.loc 1 311 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.130
	movq	14168(%rax), %rdx	# img.130_122->mb_data, D.12157
	movq	img(%rip), %rax	# img, img.131
	movl	12(%rax), %eax	# img.131_124->current_mb_nr, D.12156
	cltq
	imulq	$632, %rax, %rax	#, D.12158, D.12158
	subq	$632, %rax	#, D.12160
	addq	%rdx, %rax	# D.12157, D.12157
	movl	600(%rax), %eax	# _129->prev_cbp, D.12156
	cmpl	$1, %eax	#, D.12156
	jne	.L57	#,
	.loc 1 313 0
	movq	-64(%rbp), %rax	# currMB, tmp530
	movl	$0, 8(%rax)	#, currMB_28->delta_qp
	.loc 1 314 0
	movq	img(%rip), %rax	# img, img.132
	movl	40(%rax), %edx	# img.132_131->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp531
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	jmp	.L58	#
.L57:
	.loc 1 318 0
	movq	img(%rip), %rax	# img, img.133
	movq	14168(%rax), %rdx	# img.133_133->mb_data, D.12157
	movq	img(%rip), %rax	# img, img.134
	movl	12(%rax), %eax	# img.134_135->current_mb_nr, D.12156
	cltq
	imulq	$632, %rax, %rax	#, D.12158, D.12158
	subq	$632, %rax	#, D.12160
	addq	%rdx, %rax	# D.12157, D.12157
	movl	592(%rax), %edx	# _140->prev_qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp532
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	.loc 1 319 0
	movq	-64(%rbp), %rax	# currMB, tmp533
	movl	12(%rax), %edx	# currMB_28->qp, D.12156
	movq	img(%rip), %rax	# img, img.135
	movq	14168(%rax), %rcx	# img.135_143->mb_data, D.12157
	movq	img(%rip), %rax	# img, img.136
	movl	12(%rax), %eax	# img.136_145->current_mb_nr, D.12156
	cltq
	imulq	$632, %rax, %rax	#, D.12158, D.12158
	subq	$632, %rax	#, D.12160
	addq	%rcx, %rax	# D.12157, D.12157
	movl	12(%rax), %eax	# _150->qp, D.12156
	subl	%eax, %edx	# D.12156, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp534
	movl	%edx, 8(%rax)	# D.12156, currMB_28->delta_qp
	.loc 1 320 0
	movq	img(%rip), %rax	# img, img.137
	movq	-64(%rbp), %rdx	# currMB, tmp535
	movl	12(%rdx), %edx	# currMB_28->qp, D.12156
	movl	%edx, 40(%rax)	# D.12156, img.137_153->qp
.L58:
	.loc 1 322 0
	movq	-64(%rbp), %rax	# currMB, tmp536
	movl	8(%rax), %eax	# currMB_28->delta_qp, DELTA_QP2.138
	movl	%eax, DELTA_QP2(%rip)	# DELTA_QP2.138, DELTA_QP2
	movl	DELTA_QP2(%rip), %eax	# DELTA_QP2, DELTA_QP2.139
	movl	%eax, DELTA_QP(%rip)	# DELTA_QP2.139, DELTA_QP
	.loc 1 323 0
	movq	-64(%rbp), %rax	# currMB, tmp537
	movl	12(%rax), %eax	# currMB_28->qp, QP2.140
	movl	%eax, QP2(%rip)	# QP2.140, QP2
	movl	QP2(%rip), %eax	# QP2, QP2.141
	movl	%eax, QP(%rip)	# QP2.141, QP
	jmp	.L61	#
.L56:
	.loc 1 328 0
	movq	-64(%rbp), %rax	# currMB, tmp538
	movl	$0, 8(%rax)	#, currMB_28->delta_qp
	.loc 1 329 0
	movq	img(%rip), %rax	# img, img.142
	movl	40(%rax), %edx	# img.142_120->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp539
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	jmp	.L61	#
.L52:
	.loc 1 335 0
	movq	img(%rip), %rax	# img, img.143
	movl	72628(%rax), %eax	# img.143_159->bot_MB, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L60	#,
	.loc 1 337 0
	movl	DELTA_QP2(%rip), %edx	# DELTA_QP2, DELTA_QP2.144
	movq	-64(%rbp), %rax	# currMB, tmp540
	movl	%edx, 8(%rax)	# DELTA_QP2.144, currMB_28->delta_qp
	.loc 1 338 0
	movq	img(%rip), %rax	# img, img.145
	movl	QP2(%rip), %edx	# QP2, QP2.146
	movl	%edx, 40(%rax)	# QP2.146, img.145_162->qp
	movl	40(%rax), %edx	# img.145_162->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp541
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	jmp	.L61	#
.L60:
	.loc 1 342 0
	movq	img(%rip), %rax	# img, img.147
	movl	40(%rax), %edx	# img.147_165->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp542
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	.loc 1 343 0
	movq	-64(%rbp), %rax	# currMB, tmp543
	movl	$0, 8(%rax)	#, currMB_28->delta_qp
	jmp	.L61	#
.L51:
	.loc 1 351 0
	movq	img(%rip), %rax	# img, img.148
	movl	72628(%rax), %eax	# img.148_167->bot_MB, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L62	#,
	.loc 1 353 0
	movq	img(%rip), %rax	# img, img.149
	movl	72632(%rax), %eax	# img.149_169->write_macroblock_frame, D.12156
	testl	%eax, %eax	# D.12156
	je	.L63	#,
	.loc 1 355 0
	movl	DELTA_QP(%rip), %edx	# DELTA_QP, DELTA_QP.150
	movq	-64(%rbp), %rax	# currMB, tmp544
	movl	%edx, 8(%rax)	# DELTA_QP.150, currMB_28->delta_qp
	.loc 1 356 0
	movq	img(%rip), %rax	# img, img.151
	movl	QP(%rip), %ecx	# QP, QP.152
	movq	-64(%rbp), %rdx	# currMB, tmp545
	movl	%ecx, 12(%rdx)	# QP.152, currMB_28->qp
	movq	-64(%rbp), %rdx	# currMB, tmp546
	movl	12(%rdx), %edx	# currMB_28->qp, D.12156
	movl	%edx, 40(%rax)	# D.12156, img.151_172->qp
	jmp	.L61	#
.L63:
	.loc 1 360 0
	movl	DELTA_QP2(%rip), %edx	# DELTA_QP2, DELTA_QP2.153
	movq	-64(%rbp), %rax	# currMB, tmp547
	movl	%edx, 8(%rax)	# DELTA_QP2.153, currMB_28->delta_qp
	.loc 1 361 0
	movq	img(%rip), %rax	# img, img.154
	movl	QP2(%rip), %ecx	# QP2, QP2.155
	movq	-64(%rbp), %rdx	# currMB, tmp548
	movl	%ecx, 12(%rdx)	# QP2.155, currMB_28->qp
	movq	-64(%rbp), %rdx	# currMB, tmp549
	movl	12(%rdx), %edx	# currMB_28->qp, D.12156
	movl	%edx, 40(%rax)	# D.12156, img.154_176->qp
	jmp	.L61	#
.L62:
	.loc 1 366 0
	movq	-64(%rbp), %rax	# currMB, tmp550
	movl	$0, 8(%rax)	#, currMB_28->delta_qp
	.loc 1 367 0
	movq	img(%rip), %rax	# img, img.156
	movl	40(%rax), %edx	# img.156_179->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp551
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
.L61:
	.loc 1 373 0
	movq	input(%rip), %rax	# input, input.157
	movl	2884(%rax), %eax	# input.157_181->MbInterlace, D.12156
	testl	%eax, %eax	# D.12156
	je	.L65	#,
	.loc 1 373 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.158
	movl	72628(%rax), %eax	# img.158_183->bot_MB, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L66	#,
.L65:
	.loc 1 375 0 is_stmt 1
	movq	-64(%rbp), %rax	# currMB, tmp552
	movl	532(%rax), %eax	# currMB_28->mb_field, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L67	#,
	.loc 1 378 0
	movq	img(%rip), %rax	# img, img.159
	movl	72616(%rax), %eax	# img.159_188->NumberofCodedMacroBlocks, D.12156
	testl	%eax, %eax	# D.12156
	jle	.L68	#,
	.loc 1 379 0
	movq	img(%rip), %rax	# img, img.160
	movl	72616(%rax), %eax	# img.160_190->NumberofCodedMacroBlocks, D.12156
	movq	img(%rip), %rdx	# img, img.161
	movl	72620(%rdx), %ecx	# img.161_192->BasicUnit, D.12156
	cltd
	idivl	%ecx	# D.12156
	movl	%edx, %eax	# tmp553, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L68	#,
	.loc 1 383 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.162
	movl	1148(%rax), %eax	# active_sps.162_195->frame_mbs_only_flag, D.12165
	testl	%eax, %eax	# D.12165
	je	.L69	#,
	.loc 1 385 0
	movl	$0, %eax	#,
	call	updateRCModel	#
	.loc 1 386 0
	movq	img(%rip), %rbx	# img, img.163
	movq	img(%rip), %rax	# img, img.164
	movl	72596(%rax), %eax	# img.164_198->TopFieldFlag, D.12156
	movl	%eax, %edi	# D.12156,
	call	updateQuantizationParameter	#
	movl	%eax, 72592(%rbx)	# D.12156, img.163_197->BasicUnitQP
	jmp	.L68	#
.L69:
	.loc 1 389 0
	movq	input(%rip), %rax	# input, input.165
	movl	2880(%rax), %eax	# input.165_201->PicInterlace, D.12156
	cmpl	$2, %eax	#, D.12156
	jne	.L70	#,
	.loc 1 389 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.166
	movl	2884(%rax), %eax	# input.166_203->MbInterlace, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L70	#,
	movq	img(%rip), %rax	# img, img.167
	movl	72612(%rax), %eax	# img.167_205->IFLAG, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L70	#,
	.loc 1 391 0 is_stmt 1
	movl	$0, %eax	#,
	call	updateRCModel	#
	.loc 1 392 0
	movq	img(%rip), %rbx	# img, img.168
	movq	img(%rip), %rax	# img, img.169
	movl	72596(%rax), %eax	# img.169_208->TopFieldFlag, D.12156
	movl	%eax, %edi	# D.12156,
	call	updateQuantizationParameter	#
	movl	%eax, 72592(%rbx)	# D.12156, img.168_207->BasicUnitQP
	jmp	.L68	#
.L70:
	.loc 1 395 0
	movq	input(%rip), %rax	# input, input.170
	movl	2880(%rax), %eax	# input.170_211->PicInterlace, D.12156
	cmpl	$1, %eax	#, D.12156
	jne	.L71	#,
	.loc 1 395 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.171
	movl	2884(%rax), %eax	# input.171_213->MbInterlace, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L71	#,
	movq	img(%rip), %rax	# img, img.172
	movl	72612(%rax), %eax	# img.172_215->IFLAG, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L71	#,
	.loc 1 397 0 is_stmt 1
	movl	$0, %eax	#,
	call	updateRCModel	#
	.loc 1 398 0
	movq	img(%rip), %rbx	# img, img.173
	movq	img(%rip), %rax	# img, img.174
	movl	72596(%rax), %eax	# img.174_218->TopFieldFlag, D.12156
	movl	%eax, %edi	# D.12156,
	call	updateQuantizationParameter	#
	movl	%eax, 72592(%rbx)	# D.12156, img.173_217->BasicUnitQP
	jmp	.L68	#
.L71:
	.loc 1 401 0
	movq	input(%rip), %rax	# input, input.175
	movl	2884(%rax), %eax	# input.175_221->MbInterlace, D.12156
	testl	%eax, %eax	# D.12156
	je	.L72	#,
	.loc 1 401 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.176
	movl	72612(%rax), %eax	# img.176_223->IFLAG, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L72	#,
	movq	img(%rip), %rax	# img, img.177
	movl	72600(%rax), %eax	# img.177_225->FieldControl, D.12156
	cmpl	$1, %eax	#, D.12156
	jne	.L72	#,
	.loc 1 403 0 is_stmt 1
	movl	$0, %eax	#,
	call	updateRCModel	#
	.loc 1 404 0
	movq	img(%rip), %rbx	# img, img.178
	movq	img(%rip), %rax	# img, img.179
	movl	72596(%rax), %eax	# img.179_228->TopFieldFlag, D.12156
	movl	%eax, %edi	# D.12156,
	call	updateQuantizationParameter	#
	movl	%eax, 72592(%rbx)	# D.12156, img.178_227->BasicUnitQP
	jmp	.L68	#
.L72:
	.loc 1 407 0
	movq	input(%rip), %rax	# input, input.180
	movl	2884(%rax), %eax	# input.180_231->MbInterlace, D.12156
	testl	%eax, %eax	# D.12156
	je	.L68	#,
	.loc 1 407 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.181
	movl	72612(%rax), %eax	# img.181_233->IFLAG, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L68	#,
	movq	img(%rip), %rax	# img, img.182
	movl	72600(%rax), %eax	# img.182_235->FieldControl, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L68	#,
	.loc 1 409 0 is_stmt 1
	movl	$0, %eax	#,
	call	updateRCModel	#
	.loc 1 410 0
	movq	img(%rip), %rbx	# img, img.183
	movq	img(%rip), %rax	# img, img.184
	movl	72596(%rax), %eax	# img.184_238->TopFieldFlag, D.12156
	movl	%eax, %edi	# D.12156,
	call	updateQuantizationParameter	#
	movl	%eax, 72592(%rbx)	# D.12156, img.183_237->BasicUnitQP
.L68:
	.loc 1 417 0
	movq	img(%rip), %rax	# img, img.185
	movl	12(%rax), %eax	# img.185_241->current_mb_nr, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L73	#,
	.loc 1 418 0
	movq	img(%rip), %rax	# img, img.186
	movq	img(%rip), %rdx	# img, img.187
	movl	40(%rdx), %edx	# img.187_244->qp, D.12156
	movl	%edx, 72592(%rax)	# D.12156, img.186_243->BasicUnitQP
.L73:
	.loc 1 420 0
	movq	img(%rip), %rax	# img, img.188
	movl	72592(%rax), %edx	# img.188_246->BasicUnitQP, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp555
	movl	%edx, 604(%rax)	# D.12156, currMB_28->predict_qp
	.loc 1 422 0
	movq	-64(%rbp), %rax	# currMB, tmp556
	movl	604(%rax), %edx	# currMB_28->predict_qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp557
	movl	12(%rax), %ecx	# currMB_28->qp, D.12156
	movl	-80(%rbp), %eax	# max_qp_delta, tmp558
	addl	%ecx, %eax	# D.12156, D.12156
	cmpl	%eax, %edx	# D.12156, D.12156
	jle	.L74	#,
	.loc 1 423 0
	movq	-64(%rbp), %rax	# currMB, tmp559
	movl	12(%rax), %edx	# currMB_28->qp, D.12156
	movl	-80(%rbp), %eax	# max_qp_delta, tmp560
	addl	%eax, %edx	# tmp560, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp561
	movl	%edx, 604(%rax)	# D.12156, currMB_28->predict_qp
	jmp	.L75	#
.L74:
	.loc 1 424 0
	movq	-64(%rbp), %rax	# currMB, tmp562
	movl	604(%rax), %edx	# currMB_28->predict_qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp563
	movl	12(%rax), %eax	# currMB_28->qp, D.12156
	subl	-76(%rbp), %eax	# min_qp_delta, D.12156
	cmpl	%eax, %edx	# D.12156, D.12156
	jge	.L75	#,
	.loc 1 425 0
	movq	-64(%rbp), %rax	# currMB, tmp564
	movl	12(%rax), %eax	# currMB_28->qp, D.12156
	subl	-76(%rbp), %eax	# min_qp_delta, D.12156
	movl	%eax, %edx	# D.12156, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp565
	movl	%edx, 604(%rax)	# D.12156, currMB_28->predict_qp
.L75:
	.loc 1 429 0
	movq	-64(%rbp), %rax	# currMB, tmp566
	movl	8(%rax), %edx	# currMB_28->delta_qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp567
	movl	604(%rax), %eax	# currMB_28->predict_qp, D.12156
	addl	%eax, %edx	# D.12156, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp568
	movl	12(%rax), %eax	# currMB_28->qp, D.12156
	subl	%eax, %edx	# D.12156, dq.189
	movl	%edx, %eax	# dq.189, dq.189
	movl	%eax, dq(%rip)	# dq.189, dq
	.loc 1 430 0
	movl	-76(%rbp), %eax	# min_qp_delta, tmp569
	negl	%eax	# D.12156
	movl	%eax, %edx	# D.12156, D.12156
	movl	dq(%rip), %eax	# dq, dq.190
	cmpl	%eax, %edx	# dq.190, D.12156
	jle	.L76	#,
	.loc 1 432 0
	movl	-76(%rbp), %eax	# min_qp_delta, tmp570
	negl	%eax	# dq.191
	movl	%eax, dq(%rip)	# dq.191, dq
	.loc 1 433 0
	movl	dq(%rip), %edx	# dq, dq.192
	movq	-64(%rbp), %rax	# currMB, tmp571
	movl	8(%rax), %eax	# currMB_28->delta_qp, D.12156
	subl	%eax, %edx	# D.12156, predict_error.193
	movl	%edx, %eax	# predict_error.193, predict_error.193
	movl	%eax, predict_error(%rip)	# predict_error.193, predict_error
	.loc 1 434 0
	movq	img(%rip), %rax	# img, img.194
	movq	img(%rip), %rdx	# img, img.195
	movl	40(%rdx), %ecx	# img.195_270->qp, D.12156
	movl	predict_error(%rip), %edx	# predict_error, predict_error.196
	addl	%ecx, %edx	# D.12156, D.12156
	movl	%edx, 40(%rax)	# D.12156, img.194_269->qp
	.loc 1 435 0
	movl	-76(%rbp), %eax	# min_qp_delta, tmp572
	negl	%eax	# D.12156
	movl	%eax, %edx	# D.12156, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp573
	movl	%edx, 8(%rax)	# D.12156, currMB_28->delta_qp
	jmp	.L77	#
.L76:
	.loc 1 437 0
	movl	dq(%rip), %eax	# dq, dq.197
	cmpl	-80(%rbp), %eax	# max_qp_delta, dq.197
	jle	.L78	#,
	.loc 1 439 0
	movl	-80(%rbp), %eax	# max_qp_delta, tmp574
	movl	%eax, dq(%rip)	# tmp574, dq
	.loc 1 440 0
	movl	dq(%rip), %edx	# dq, dq.198
	movq	-64(%rbp), %rax	# currMB, tmp575
	movl	8(%rax), %eax	# currMB_28->delta_qp, D.12156
	subl	%eax, %edx	# D.12156, predict_error.199
	movl	%edx, %eax	# predict_error.199, predict_error.199
	movl	%eax, predict_error(%rip)	# predict_error.199, predict_error
	.loc 1 441 0
	movq	img(%rip), %rax	# img, img.200
	movq	img(%rip), %rdx	# img, img.201
	movl	40(%rdx), %ecx	# img.201_280->qp, D.12156
	movl	predict_error(%rip), %edx	# predict_error, predict_error.202
	addl	%ecx, %edx	# D.12156, D.12156
	movl	%edx, 40(%rax)	# D.12156, img.200_279->qp
	.loc 1 442 0
	movq	-64(%rbp), %rax	# currMB, tmp576
	movl	-80(%rbp), %edx	# max_qp_delta, tmp577
	movl	%edx, 8(%rax)	# tmp577, currMB_28->delta_qp
	jmp	.L77	#
.L78:
	.loc 1 446 0
	movl	dq(%rip), %edx	# dq, dq.203
	movq	-64(%rbp), %rax	# currMB, tmp578
	movl	%edx, 8(%rax)	# dq.203, currMB_28->delta_qp
	.loc 1 447 0
	movq	-64(%rbp), %rax	# currMB, tmp579
	movl	604(%rax), %edx	# currMB_28->predict_qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp580
	movl	12(%rax), %eax	# currMB_28->qp, D.12156
	subl	%eax, %edx	# D.12156, predict_error.204
	movl	%edx, %eax	# predict_error.204, predict_error.204
	movl	%eax, predict_error(%rip)	# predict_error.204, predict_error
	.loc 1 448 0
	movq	img(%rip), %rax	# img, img.205
	movq	-64(%rbp), %rdx	# currMB, tmp581
	movl	604(%rdx), %edx	# currMB_28->predict_qp, D.12156
	movl	%edx, 40(%rax)	# D.12156, img.205_288->qp
.L77:
	.loc 1 450 0
	movq	img(%rip), %rax	# img, img.206
	movl	40(%rax), %edx	# img.206_290->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp582
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	.loc 1 451 0
	movq	input(%rip), %rax	# input, input.207
	movl	2884(%rax), %eax	# input.207_292->MbInterlace, D.12156
	testl	%eax, %eax	# D.12156
	je	.L79	#,
	.loc 1 453 0
	movq	-64(%rbp), %rax	# currMB, tmp583
	movl	8(%rax), %eax	# currMB_28->delta_qp, DELTA_QP2.208
	movl	%eax, DELTA_QP2(%rip)	# DELTA_QP2.208, DELTA_QP2
	movl	DELTA_QP2(%rip), %eax	# DELTA_QP2, DELTA_QP2.209
	movl	%eax, DELTA_QP(%rip)	# DELTA_QP2.209, DELTA_QP
	.loc 1 454 0
	movq	-64(%rbp), %rax	# currMB, tmp584
	movl	12(%rax), %eax	# currMB_28->qp, QP2.210
	movl	%eax, QP2(%rip)	# QP2.210, QP2
	movl	QP2(%rip), %eax	# QP2, QP2.211
	movl	%eax, QP(%rip)	# QP2.211, QP
	.loc 1 455 0
	movq	-64(%rbp), %rax	# currMB, tmp585
	movl	8(%rax), %eax	# currMB_28->delta_qp, DELTA_QP2.212
	movl	%eax, DELTA_QP2(%rip)	# DELTA_QP2.212, DELTA_QP2
.L79:
	.loc 1 457 0
	movl	predict_error(%rip), %edx	# predict_error, predict_error.213
	movq	-64(%rbp), %rax	# currMB, tmp586
	movl	%edx, 608(%rax)	# predict_error.213, currMB_28->predict_error
	.loc 1 375 0
	jmp	.L48	#
.L67:
	.loc 1 460 0
	movq	-64(%rbp), %rax	# currMB, tmp587
	movl	608(%rax), %eax	# currMB_28->predict_error, predict_error.214
	movl	%eax, predict_error(%rip)	# predict_error.214, predict_error
	.loc 1 375 0
	jmp	.L48	#
.L66:
	.loc 1 463 0
	movq	img(%rip), %rax	# img, img.215
	movl	40(%rax), %edx	# img.215_185->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp588
	movl	%edx, 592(%rax)	# D.12156, currMB_28->prev_qp
.LBE2:
	jmp	.L81	#
.L48:
	jmp	.L81	#
.L44:
.LBB3:
	.loc 1 469 0
	movq	img(%rip), %rax	# img, img.216
	movq	14160(%rax), %rax	# img.216_303->currentSlice, tmp589
	movq	%rax, -24(%rbp)	# tmp589, currSlice
	.loc 1 471 0
	movq	img(%rip), %rax	# img, img.217
	movl	12(%rax), %eax	# img.217_305->current_mb_nr, D.12156
	movl	%eax, %edi	# D.12156,
	call	FmoGetPreviousMBNr	#
	movl	%eax, -68(%rbp)	# tmp590, prev_mb
	.loc 1 472 0
	cmpl	$0, -68(%rbp)	#, prev_mb
	js	.L82	#,
	.loc 1 474 0
	movq	img(%rip), %rax	# img, img.218
	movq	14168(%rax), %rdx	# img.218_308->mb_data, D.12157
	movl	-68(%rbp), %eax	# prev_mb, tmp591
	cltq
	imulq	$632, %rax, %rax	#, D.12158, D.12158
	addq	%rdx, %rax	# D.12157, D.12157
	movl	12(%rax), %edx	# _312->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp592
	movl	%edx, 592(%rax)	# D.12156, currMB_28->prev_qp
	.loc 1 475 0
	movq	img(%rip), %rax	# img, img.219
	movq	14168(%rax), %rdx	# img.219_314->mb_data, D.12157
	movl	-68(%rbp), %eax	# prev_mb, tmp593
	cltq
	imulq	$632, %rax, %rax	#, D.12158, D.12158
	addq	%rdx, %rax	# D.12157, D.12157
	movl	8(%rax), %edx	# _318->delta_qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp594
	movl	%edx, 596(%rax)	# D.12156, currMB_28->prev_delta_qp
	jmp	.L83	#
.L82:
	.loc 1 479 0
	movq	-24(%rbp), %rax	# currSlice, tmp595
	movl	4(%rax), %edx	# currSlice_304->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp596
	movl	%edx, 592(%rax)	# D.12156, currMB_28->prev_qp
	.loc 1 480 0
	movq	-64(%rbp), %rax	# currMB, tmp597
	movl	$0, 596(%rax)	#, currMB_28->prev_delta_qp
.L83:
	.loc 1 483 0
	movq	-24(%rbp), %rax	# currSlice, tmp598
	movl	4(%rax), %edx	# currSlice_304->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp599
	movl	%edx, 12(%rax)	# D.12156, currMB_28->qp
	.loc 1 485 0
	movq	-64(%rbp), %rax	# currMB, tmp600
	movl	12(%rax), %edx	# currMB_28->qp, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp601
	movl	592(%rax), %eax	# currMB_28->prev_qp, D.12156
	subl	%eax, %edx	# D.12156, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp602
	movl	%edx, 8(%rax)	# D.12156, currMB_28->delta_qp
	.loc 1 486 0
	movq	-64(%rbp), %rax	# currMB, tmp603
	movl	8(%rax), %eax	# currMB_28->delta_qp, DELTA_QP2.220
	movl	%eax, DELTA_QP2(%rip)	# DELTA_QP2.220, DELTA_QP2
	movl	DELTA_QP2(%rip), %eax	# DELTA_QP2, DELTA_QP2.221
	movl	%eax, DELTA_QP(%rip)	# DELTA_QP2.221, DELTA_QP
	.loc 1 487 0
	movq	-64(%rbp), %rax	# currMB, tmp604
	movl	12(%rax), %eax	# currMB_28->qp, QP2.222
	movl	%eax, QP2(%rip)	# QP2.222, QP2
	movl	QP2(%rip), %eax	# QP2, QP2.223
	movl	%eax, QP(%rip)	# QP2.223, QP
.L81:
.LBE3:
	.loc 1 491 0
	movq	-64(%rbp), %rax	# currMB, tmp605
	movl	$0, (%rax)	#, currMB_28->currSEnr
	.loc 1 494 0
	movq	active_pps(%rip), %rax	# active_pps, active_pps.224
	movl	220(%rax), %eax	# active_pps.224_329->deblocking_filter_control_present_flag, D.12165
	testl	%eax, %eax	# D.12165
	je	.L84	#,
	.loc 1 496 0
	movq	img(%rip), %rax	# img, img.225
	movl	71984(%rax), %edx	# img.225_331->LFDisableIdc, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp606
	movl	%edx, 612(%rax)	# D.12156, currMB_28->LFDisableIdc
	.loc 1 497 0
	movq	img(%rip), %rax	# img, img.226
	movl	71988(%rax), %edx	# img.226_333->LFAlphaC0Offset, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp607
	movl	%edx, 616(%rax)	# D.12156, currMB_28->LFAlphaC0Offset
	.loc 1 498 0
	movq	img(%rip), %rax	# img, img.227
	movl	71992(%rax), %edx	# img.227_335->LFBetaOffset, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp608
	movl	%edx, 620(%rax)	# D.12156, currMB_28->LFBetaOffset
	jmp	.L85	#
.L84:
	.loc 1 502 0
	movq	-64(%rbp), %rax	# currMB, tmp609
	movl	$0, 612(%rax)	#, currMB_28->LFDisableIdc
	.loc 1 503 0
	movq	-64(%rbp), %rax	# currMB, tmp610
	movl	$0, 616(%rax)	#, currMB_28->LFAlphaC0Offset
	.loc 1 504 0
	movq	-64(%rbp), %rax	# currMB, tmp611
	movl	$0, 620(%rax)	#, currMB_28->LFBetaOffset
.L85:
	.loc 1 508 0
	movl	$0, %eax	#,
	call	CheckAvailabilityOfNeighbors	#
	.loc 1 510 0
	movq	input(%rip), %rax	# input, input.228
	movl	2356(%rax), %eax	# input.228_337->symbol_mode, D.12156
	cmpl	$1, %eax	#, D.12156
	jne	.L86	#,
	.loc 1 511 0
	movl	$0, %eax	#,
	call	CheckAvailabilityOfNeighborsCABAC	#
.L86:
	.loc 1 515 0
	movl	$0, -88(%rbp)	#, l
	jmp	.L87	#
.L94:
	.loc 1 517 0
	movl	$0, -96(%rbp)	#, j
	jmp	.L88	#
.L93:
	.loc 1 518 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L89	#
.L92:
	.loc 1 519 0
	movl	$0, -92(%rbp)	#, k
	jmp	.L90	#
.L91:
	.loc 1 520 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.229
	movq	6504(%rax), %rax	# enc_picture.229_343->mv, D.12166
	movl	-88(%rbp), %edx	# l, tmp612
	movslq	%edx, %rdx	# tmp612, D.12158
	salq	$3, %rdx	#, D.12158
	addq	%rdx, %rax	# D.12158, D.12166
	movq	(%rax), %rdx	# *_347, D.12167
	movq	img(%rip), %rax	# img, img.230
	movl	144(%rax), %ecx	# img.230_349->block_x, D.12156
	movl	-100(%rbp), %eax	# i, tmp613
	addl	%ecx, %eax	# D.12156, D.12156
	cltq
	salq	$3, %rax	#, D.12158
	addq	%rdx, %rax	# D.12167, D.12167
	movq	(%rax), %rdx	# *_354, D.12168
	movq	img(%rip), %rax	# img, img.231
	movl	148(%rax), %ecx	# img.231_356->block_y, D.12156
	movl	-96(%rbp), %eax	# j, tmp614
	addl	%ecx, %eax	# D.12156, D.12156
	cltq
	salq	$3, %rax	#, D.12158
	addq	%rdx, %rax	# D.12168, D.12168
	movq	(%rax), %rax	# *_361, D.12169
	movl	-92(%rbp), %edx	# k, tmp615
	movslq	%edx, %rdx	# tmp615, D.12158
	addq	%rdx, %rdx	# D.12158
	addq	%rdx, %rax	# D.12158, D.12169
	movw	$0, (%rax)	#, *_365
	.loc 1 519 0 discriminator 2
	addl	$1, -92(%rbp)	#, k
.L90:
	.loc 1 519 0 is_stmt 0 discriminator 1
	cmpl	$1, -92(%rbp)	#, k
	jle	.L91	#,
	.loc 1 518 0 is_stmt 1
	addl	$1, -100(%rbp)	#, i
.L89:
	.loc 1 518 0 is_stmt 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, i
	jle	.L92	#,
	.loc 1 517 0 is_stmt 1
	addl	$1, -96(%rbp)	#, j
.L88:
	.loc 1 517 0 is_stmt 0 discriminator 1
	cmpl	$3, -96(%rbp)	#, j
	jle	.L93	#,
	.loc 1 515 0 is_stmt 1
	addl	$1, -88(%rbp)	#, l
.L87:
	.loc 1 515 0 is_stmt 0 discriminator 1
	cmpl	$1, -88(%rbp)	#, l
	jle	.L94	#,
	.loc 1 524 0 is_stmt 1
	movl	$0, -96(%rbp)	#, j
	jmp	.L95	#
.L100:
	.loc 1 526 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L96	#
.L99:
	.loc 1 527 0
	movl	$0, -88(%rbp)	#, l
	jmp	.L97	#
.L98:
	.loc 1 529 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.232
	movq	6480(%rax), %rax	# enc_picture.232_373->ref_idx, D.12167
	movl	-88(%rbp), %edx	# l, tmp616
	movslq	%edx, %rdx	# tmp616, D.12158
	salq	$3, %rdx	#, D.12158
	addq	%rdx, %rax	# D.12158, D.12167
	movq	(%rax), %rdx	# *_377, D.12168
	movq	img(%rip), %rax	# img, img.233
	movl	144(%rax), %ecx	# img.233_379->block_x, D.12156
	movl	-100(%rbp), %eax	# i, tmp617
	addl	%ecx, %eax	# D.12156, D.12156
	cltq
	salq	$3, %rax	#, D.12158
	addq	%rdx, %rax	# D.12168, D.12168
	movq	(%rax), %rdx	# *_384, D.12169
	movq	img(%rip), %rax	# img, img.234
	movl	148(%rax), %ecx	# img.234_386->block_y, D.12156
	movl	-96(%rbp), %eax	# j, tmp618
	addl	%ecx, %eax	# D.12156, D.12156
	cltq
	addq	%rax, %rax	# D.12158
	addq	%rdx, %rax	# D.12169, D.12169
	movw	$-1, (%rax)	#, *_391
	.loc 1 530 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.235
	movq	6488(%rax), %rax	# enc_picture.235_392->ref_pic_id, D.12170
	movl	-88(%rbp), %edx	# l, tmp619
	movslq	%edx, %rdx	# tmp619, D.12158
	salq	$3, %rdx	#, D.12158
	addq	%rdx, %rax	# D.12158, D.12170
	movq	(%rax), %rdx	# *_396, D.12171
	movq	img(%rip), %rax	# img, img.236
	movl	144(%rax), %ecx	# img.236_398->block_x, D.12156
	movl	-100(%rbp), %eax	# i, tmp620
	addl	%ecx, %eax	# D.12156, D.12156
	cltq
	salq	$3, %rax	#, D.12158
	addq	%rdx, %rax	# D.12171, D.12171
	movq	(%rax), %rdx	# *_403, D.12172
	movq	img(%rip), %rax	# img, img.237
	movl	148(%rax), %ecx	# img.237_405->block_y, D.12156
	movl	-96(%rbp), %eax	# j, tmp621
	addl	%ecx, %eax	# D.12156, D.12156
	cltq
	salq	$3, %rax	#, D.12158
	addq	%rdx, %rax	# D.12172, D.12172
	movq	$-1, (%rax)	#, *_410
	.loc 1 527 0 discriminator 2
	addl	$1, -88(%rbp)	#, l
.L97:
	.loc 1 527 0 is_stmt 0 discriminator 1
	cmpl	$1, -88(%rbp)	#, l
	jle	.L98	#,
	.loc 1 526 0 is_stmt 1
	addl	$1, -100(%rbp)	#, i
.L96:
	.loc 1 526 0 is_stmt 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, i
	jle	.L99	#,
	.loc 1 524 0 is_stmt 1
	addl	$1, -96(%rbp)	#, j
.L95:
	.loc 1 524 0 is_stmt 0 discriminator 1
	cmpl	$3, -96(%rbp)	#, j
	jle	.L100	#,
	.loc 1 535 0 is_stmt 1
	movq	-64(%rbp), %rax	# currMB, tmp622
	movl	$0, 72(%rax)	#, currMB_28->mb_type
	.loc 1 536 0
	movq	-64(%rbp), %rax	# currMB, tmp623
	movq	$0, 464(%rax)	#, currMB_28->cbp_blk
	.loc 1 537 0
	movq	-64(%rbp), %rax	# currMB, tmp624
	movl	$0, 460(%rax)	#, currMB_28->cbp
	.loc 1 539 0
	movl	$0, -88(%rbp)	#, l
	jmp	.L101	#
.L108:
	.loc 1 540 0
	movl	$0, -96(%rbp)	#, j
	jmp	.L102	#
.L107:
	.loc 1 541 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L103	#
.L106:
	.loc 1 542 0
	movl	$0, -92(%rbp)	#, k
	jmp	.L104	#
.L105:
	.loc 1 543 0 discriminator 2
	movq	-64(%rbp), %rax	# currMB, tmp625
	movl	-92(%rbp), %edx	# k, tmp627
	movslq	%edx, %rdx	# tmp627, tmp626
	movl	-96(%rbp), %ecx	# j, tmp629
	movslq	%ecx, %rcx	# tmp629, tmp628
	movl	-88(%rbp), %esi	# l, tmp631
	movslq	%esi, %rsi	# tmp631, tmp630
	salq	$2, %rsi	#, tmp632
	addq	%rcx, %rsi	# tmp628, tmp633
	movl	-100(%rbp), %ecx	# i, tmp635
	movslq	%ecx, %rcx	# tmp635, tmp634
	salq	$2, %rsi	#, tmp636
	addq	%rsi, %rcx	# tmp636, tmp637
	addq	%rcx, %rcx	# tmp638
	addq	%rcx, %rdx	# tmp638, tmp639
	addq	$16, %rdx	#, tmp640
	movl	$0, 12(%rax,%rdx,4)	#, currMB_28->mvd
	.loc 1 542 0 discriminator 2
	addl	$1, -92(%rbp)	#, k
.L104:
	.loc 1 542 0 is_stmt 0 discriminator 1
	cmpl	$1, -92(%rbp)	#, k
	jle	.L105	#,
	.loc 1 541 0 is_stmt 1
	addl	$1, -100(%rbp)	#, i
.L103:
	.loc 1 541 0 is_stmt 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, i
	jle	.L106	#,
	.loc 1 540 0 is_stmt 1
	addl	$1, -96(%rbp)	#, j
.L102:
	.loc 1 540 0 is_stmt 0 discriminator 1
	cmpl	$3, -96(%rbp)	#, j
	jle	.L107	#,
	.loc 1 539 0 is_stmt 1
	addl	$1, -88(%rbp)	#, l
.L101:
	.loc 1 539 0 is_stmt 0 discriminator 1
	cmpl	$1, -88(%rbp)	#, l
	jle	.L108	#,
	.loc 1 545 0 is_stmt 1
	movq	-64(%rbp), %rax	# currMB, tmp641
	movq	$0, 504(%rax)	#, currMB_28->cbp_bits
	.loc 1 546 0
	movq	-64(%rbp), %rax	# currMB, tmp642
	movl	$0, 524(%rax)	#, currMB_28->c_ipred_mode
	.loc 1 548 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L109	#
.L110:
	.loc 1 549 0 discriminator 2
	movq	-64(%rbp), %rax	# currMB, tmp643
	movl	-100(%rbp), %edx	# i, tmp645
	movslq	%edx, %rdx	# tmp645, tmp644
	addq	$80, %rdx	#, tmp646
	movl	$2, 12(%rax,%rdx,4)	#, currMB_28->intra_pred_modes
	.loc 1 548 0 discriminator 2
	addl	$1, -100(%rbp)	#, i
.L109:
	.loc 1 548 0 is_stmt 0 discriminator 1
	cmpl	$15, -100(%rbp)	#, i
	jle	.L110	#,
	.loc 1 551 0 is_stmt 1
	movl	$0, -100(%rbp)	#, i
	jmp	.L111	#
.L112:
	.loc 1 552 0 discriminator 2
	movq	-64(%rbp), %rax	# currMB, tmp647
	movl	-100(%rbp), %edx	# i, tmp649
	movslq	%edx, %rdx	# tmp649, tmp648
	addq	$96, %rdx	#, tmp650
	movl	$2, 12(%rax,%rdx,4)	#, currMB_28->intra_pred_modes8x8
	.loc 1 551 0 discriminator 2
	addl	$1, -100(%rbp)	#, i
.L111:
	.loc 1 551 0 is_stmt 0 discriminator 1
	cmpl	$15, -100(%rbp)	#, i
	jle	.L112	#,
	.loc 1 556 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.238
	movl	216(%rax), %eax	# input.238_426->UseConstrainedIntraPred, D.12156
	testl	%eax, %eax	# D.12156
	je	.L113	#,
	.loc 1 558 0
	movq	img(%rip), %rax	# img, img.239
	movq	71784(%rax), %rdx	# img.239_428->intra_block, D.12164
	movq	img(%rip), %rax	# img, img.240
	movl	12(%rax), %eax	# img.240_430->current_mb_nr, D.12156
	cltq
	salq	$2, %rax	#, D.12158
	addq	%rdx, %rax	# D.12164, D.12164
	movl	$1, (%rax)	#, *_434
.L113:
	.loc 1 563 0
	movq	img(%rip), %rax	# img, img.241
	movl	71984(%rax), %edx	# img.241_435->LFDisableIdc, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp651
	movl	%edx, 512(%rax)	# D.12156, currMB_28->lf_disable
	.loc 1 564 0
	movq	img(%rip), %rax	# img, img.242
	movl	71988(%rax), %edx	# img.242_437->LFAlphaC0Offset, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp652
	movl	%edx, 516(%rax)	# D.12156, currMB_28->lf_alpha_c0_offset
	.loc 1 565 0
	movq	img(%rip), %rax	# img, img.243
	movl	71992(%rax), %edx	# img.243_439->LFBetaOffset, D.12156
	movq	-64(%rbp), %rax	# currMB, tmp653
	movl	%edx, 520(%rax)	# D.12156, currMB_28->lf_beta_offset
	.loc 1 569 0
	movq	img(%rip), %rax	# img, img.244
	movl	12(%rax), %eax	# img.244_441->current_mb_nr, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L114	#,
	.loc 1 571 0
	movq	-64(%rbp), %rax	# currMB, tmp654
	movl	$0, 20(%rax)	#, currMB_28->bitcounter
	jmp	.L115	#
.L114:
	.loc 1 573 0
	movq	-64(%rbp), %rax	# currMB, tmp655
	movl	4(%rax), %edx	# currMB_28->slice_nr, D.12156
	movq	img(%rip), %rax	# img, img.245
	movq	14168(%rax), %rcx	# img.245_444->mb_data, D.12157
	movq	img(%rip), %rax	# img, img.246
	movl	12(%rax), %eax	# img.246_446->current_mb_nr, D.12156
	cltq
	imulq	$632, %rax, %rax	#, D.12158, D.12158
	subq	$632, %rax	#, D.12160
	addq	%rcx, %rax	# D.12157, D.12157
	movl	4(%rax), %eax	# _451->slice_nr, D.12156
	cmpl	%eax, %edx	# D.12156, D.12156
	jne	.L115	#,
	.loc 1 576 0
	movq	-64(%rbp), %rax	# currMB, tmp656
	movl	$0, 20(%rax)	#, currMB_28->bitcounter
.L115:
	.loc 1 579 0
	movq	-64(%rbp), %rax	# currMB, tmp657
	movl	$0, 28(%rax)	#, currMB_28->bitcounter
	.loc 1 580 0
	movq	-64(%rbp), %rax	# currMB, tmp658
	movl	$0, 40(%rax)	#, currMB_28->bitcounter
	.loc 1 581 0
	movq	-64(%rbp), %rax	# currMB, tmp659
	movl	$0, 32(%rax)	#, currMB_28->bitcounter
	.loc 1 582 0
	movq	-64(%rbp), %rax	# currMB, tmp660
	movl	$0, 36(%rax)	#, currMB_28->bitcounter
	.loc 1 583 0
	movq	-64(%rbp), %rax	# currMB, tmp661
	movl	$0, 48(%rax)	#, currMB_28->bitcounter
	.loc 1 584 0
	movq	-64(%rbp), %rax	# currMB, tmp662
	movl	$0, 44(%rax)	#, currMB_28->bitcounter
	.loc 1 587 0
	movq	input(%rip), %rax	# input, input.247
	movl	3292(%rax), %eax	# input.247_453->FMEnable, D.12156
	testl	%eax, %eax	# D.12156
	jne	.L36	#,
	.loc 1 588 0
	movl	$0, %eax	#,
	call	ResetFastFullIntegerSearch	#
.L36:
	.loc 1 590 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	start_macroblock, .-start_macroblock
	.section	.rodata
.LC2:
	.string	"Slice Mode %d not supported"
	.text
	.globl	terminate_macroblock
	.type	terminate_macroblock, @function
terminate_macroblock:
.LFB7:
	.loc 1 600 0
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
	movq	%rdi, -104(%rbp)	# end_of_slice, end_of_slice
	movq	%rsi, -112(%rbp)	# recode_macroblock, recode_macroblock
	.loc 1 602 0
	movq	img(%rip), %rax	# img, img.248
	movq	14160(%rax), %rax	# img.248_5->currentSlice, tmp247
	movq	%rax, -72(%rbp)	# tmp247, currSlice
	.loc 1 603 0
	movq	img(%rip), %rax	# img, img.249
	movq	14168(%rax), %rdx	# img.249_7->mb_data, D.12173
	movq	img(%rip), %rax	# img, img.250
	movl	12(%rax), %eax	# img.250_9->current_mb_nr, D.12174
	cltq
	imulq	$632, %rax, %rax	#, D.12175, D.12175
	addq	%rdx, %rax	# D.12173, tmp248
	movq	%rax, -64(%rbp)	# tmp248, currMB
	.loc 1 604 0
	movq	img(%rip), %rcx	# img, img.251
	movq	-64(%rbp), %rax	# currMB, tmp249
	movl	(%rax), %eax	# currMB_13->currSEnr, D.12174
	movslq	%eax, %rdx	# D.12174, tmp250
	movq	%rdx, %rax	# tmp250, tmp251
	addq	%rax, %rax	# tmp251
	addq	%rdx, %rax	# tmp250, tmp251
	salq	$4, %rax	#, tmp252
	addq	$14176, %rax	#, tmp253
	addq	%rcx, %rax	# img.251, tmp254
	movq	%rax, -56(%rbp)	# tmp254, currSE
	.loc 1 605 0
	movq	input(%rip), %rax	# input, input.252
	movl	2364(%rax), %eax	# input.252_17->partition_mode, D.12174
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp256
	movq	%rax, -48(%rbp)	# tmp256, partMap
	.loc 1 608 0
	movl	$0, -84(%rbp)	#, rlc_bits
	.loc 1 610 0
	movq	input(%rip), %rax	# input, input.254
	movl	208(%rax), %eax	# input.254_21->slice_mode, D.12174
	cmpl	$2, %eax	#, D.12174
	je	.L118	#,
	.loc 1 610 0 is_stmt 0 discriminator 2
	movq	input(%rip), %rax	# input, input.255
	movl	208(%rax), %eax	# input.255_23->slice_mode, D.12174
	cmpl	$3, %eax	#, D.12174
	jne	.L119	#,
.L118:
	.loc 1 610 0 discriminator 1
	movl	$1, %eax	#, iftmp.253
	jmp	.L120	#
.L119:
	.loc 1 610 0 discriminator 3
	movl	$0, %eax	#, iftmp.253
.L120:
	.loc 1 610 0 discriminator 4
	movl	%eax, -76(%rbp)	# iftmp.253, use_bitstream_backing
	.loc 1 617 0 is_stmt 1 discriminator 4
	movl	$0, -80(%rbp)	#, new_slice
	.loc 1 618 0 discriminator 4
	movq	img(%rip), %rax	# img, img.256
	movl	12(%rax), %eax	# img.256_29->current_mb_nr, D.12174
	testl	%eax, %eax	# D.12174
	je	.L121	#,
	.loc 1 618 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.257
	movl	12(%rax), %eax	# img.257_31->current_mb_nr, D.12174
	movl	%eax, %edi	# D.12174,
	call	FmoGetPreviousMBNr	#
	testl	%eax, %eax	# D.12174
	jns	.L122	#,
.L121:
	.loc 1 619 0 is_stmt 1
	movl	$1, -80(%rbp)	#, new_slice
	jmp	.L123	#
.L122:
	.loc 1 620 0
	movq	img(%rip), %rax	# img, img.258
	movq	14168(%rax), %rbx	# img.258_34->mb_data, D.12173
	movq	img(%rip), %rax	# img, img.259
	movl	12(%rax), %eax	# img.259_36->current_mb_nr, D.12174
	movl	%eax, %edi	# D.12174,
	call	FmoGetPreviousMBNr	#
	cltq
	imulq	$632, %rax, %rax	#, D.12175, D.12175
	addq	%rbx, %rax	# D.12173, D.12173
	movl	4(%rax), %edx	# _41->slice_nr, D.12174
	movq	img(%rip), %rax	# img, img.260
	movl	20(%rax), %eax	# img.260_43->current_slice_nr, D.12174
	cmpl	%eax, %edx	# D.12174, D.12174
	je	.L123	#,
	.loc 1 621 0
	movl	$1, -80(%rbp)	#, new_slice
.L123:
	.loc 1 624 0
	movq	-112(%rbp), %rax	# recode_macroblock, tmp257
	movl	$0, (%rax)	#, *recode_macroblock_47(D)
	.loc 1 626 0
	movq	input(%rip), %rax	# input, input.261
	movl	208(%rax), %eax	# input.261_48->slice_mode, D.12174
	cmpl	$1, %eax	#, D.12174
	je	.L125	#,
	cmpl	$1, %eax	#, D.12174
	jg	.L126	#,
	testl	%eax, %eax	# D.12174
	je	.L127	#,
	jmp	.L124	#
.L126:
	cmpl	$2, %eax	#, D.12174
	je	.L128	#,
	cmpl	$3, %eax	#, D.12174
	je	.L129	#,
	jmp	.L124	#
.L127:
	.loc 1 629 0
	movq	-72(%rbp), %rax	# currSlice, tmp258
	movl	20(%rax), %eax	# currSlice_6->num_mb, D.12174
	leal	1(%rax), %edx	#, D.12174
	movq	-72(%rbp), %rax	# currSlice, tmp259
	movl	%edx, 20(%rax)	# D.12174, currSlice_6->num_mb
	.loc 1 630 0
	movq	-112(%rbp), %rax	# recode_macroblock, tmp260
	movl	$0, (%rax)	#, *recode_macroblock_47(D)
	.loc 1 631 0
	movq	-72(%rbp), %rax	# currSlice, tmp261
	movl	20(%rax), %edx	# currSlice_6->num_mb, D.12174
	movq	img(%rip), %rax	# img, img.262
	movl	16(%rax), %eax	# img.262_53->total_number_mb, D.12174
	cmpl	%eax, %edx	# D.12174, D.12174
	jne	.L130	#,
	.loc 1 632 0
	movq	-104(%rbp), %rax	# end_of_slice, tmp262
	movl	$1, (%rax)	#, *end_of_slice_55(D)
.L130:
	.loc 1 635 0
	movq	-104(%rbp), %rax	# end_of_slice, tmp263
	movl	(%rax), %ebx	# *end_of_slice_55(D), D.12176
	movq	img(%rip), %rax	# img, img.263
	movl	12(%rax), %r12d	# img.263_57->current_mb_nr, D.12174
	movq	img(%rip), %rax	# img, img.264
	movl	12(%rax), %eax	# img.264_59->current_mb_nr, D.12174
	movl	%eax, %edi	# D.12174,
	call	FmoMB2SliceGroup	#
	movl	%eax, %edi	# D.12174,
	call	FmoGetLastCodedMBOfSliceGroup	#
	cmpl	%eax, %r12d	# D.12174, D.12174
	sete	%al	#, D.12177
	movzbl	%al, %eax	# D.12177, D.12178
	orl	%eax, %ebx	# D.12178, D.12178
	movl	%ebx, %edx	# D.12178, D.12178
	movq	-104(%rbp), %rax	# end_of_slice, tmp264
	movl	%edx, (%rax)	# D.12178, *end_of_slice_55(D)
	.loc 1 637 0
	jmp	.L131	#
.L125:
	.loc 1 640 0
	movq	-72(%rbp), %rax	# currSlice, tmp265
	movl	20(%rax), %eax	# currSlice_6->num_mb, D.12174
	leal	1(%rax), %edx	#, D.12174
	movq	-72(%rbp), %rax	# currSlice, tmp266
	movl	%edx, 20(%rax)	# D.12174, currSlice_6->num_mb
	.loc 1 641 0
	movq	-112(%rbp), %rax	# recode_macroblock, tmp267
	movl	$0, (%rax)	#, *recode_macroblock_47(D)
	.loc 1 643 0
	movq	img(%rip), %rax	# img, img.265
	movl	12(%rax), %ebx	# img.265_68->current_mb_nr, D.12174
	movq	img(%rip), %rax	# img, img.266
	movl	12(%rax), %eax	# img.266_70->current_mb_nr, D.12174
	movl	%eax, %edi	# D.12174,
	call	FmoMB2SliceGroup	#
	movl	%eax, %edi	# D.12174,
	call	FmoGetLastCodedMBOfSliceGroup	#
	cmpl	%eax, %ebx	# D.12174, D.12174
	sete	%al	#, D.12177
	movzbl	%al, %edx	# D.12177, D.12176
	movq	-104(%rbp), %rax	# end_of_slice, tmp268
	movl	%edx, (%rax)	# D.12176, *end_of_slice_55(D)
	.loc 1 645 0
	movq	-104(%rbp), %rax	# end_of_slice, tmp269
	movl	(%rax), %edx	# *end_of_slice_55(D), D.12176
	movq	-72(%rbp), %rax	# currSlice, tmp270
	movl	20(%rax), %ecx	# currSlice_6->num_mb, D.12174
	movq	input(%rip), %rax	# input, input.267
	movl	212(%rax), %eax	# input.267_78->slice_argument, D.12174
	cmpl	%eax, %ecx	# D.12174, D.12174
	setge	%al	#, D.12177
	movzbl	%al, %eax	# D.12177, D.12178
	orl	%eax, %edx	# D.12178, D.12178
	movq	-104(%rbp), %rax	# end_of_slice, tmp271
	movl	%edx, (%rax)	# D.12178, *end_of_slice_55(D)
	.loc 1 647 0
	jmp	.L131	#
.L128:
	.loc 1 655 0
	movq	img(%rip), %rax	# img, img.268
	movl	120(%rax), %eax	# img.268_83->cod_counter, D.12174
	testl	%eax, %eax	# D.12174
	je	.L132	#,
	.loc 1 658 0
	movq	img(%rip), %rax	# img, img.269
	movl	120(%rax), %edx	# img.269_85->cod_counter, D.12174
	movq	-56(%rbp), %rax	# currSE, tmp272
	movl	%edx, 4(%rax)	# D.12174, currSE_16->value1
	.loc 1 659 0
	movq	-56(%rbp), %rax	# currSE, tmp273
	movl	$0, 8(%rax)	#, currSE_16->value2
	.loc 1 660 0
	movq	-56(%rbp), %rax	# currSE, tmp274
	movq	$ue_linfo, 32(%rax)	#, currSE_16->mapping
	.loc 1 661 0
	movq	-56(%rbp), %rax	# currSE, tmp275
	movl	$2, (%rax)	#, currSE_16->type
	.loc 1 662 0
	movq	-72(%rbp), %rax	# currSlice, tmp276
	movq	24(%rax), %rdx	# currSlice_6->partArr, D.12179
	movq	-56(%rbp), %rax	# currSE, tmp277
	movl	(%rax), %eax	# currSE_16->type, D.12174
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12175
	movq	-48(%rbp), %rax	# partMap, tmp278
	addq	%rcx, %rax	# D.12175, D.12180
	movl	(%rax), %eax	# *_91, D.12174
	cltq
	salq	$3, %rax	#, tmp280
	movq	%rax, %rcx	# tmp279, tmp281
	salq	$4, %rcx	#, tmp281
	subq	%rax, %rcx	# tmp279, D.12175
	movq	%rcx, %rax	# D.12175, D.12175
	addq	%rdx, %rax	# D.12179, tmp282
	movq	%rax, -40(%rbp)	# tmp282, dataPart
	.loc 1 664 0
	movq	-40(%rbp), %rax	# dataPart, tmp283
	movq	112(%rax), %rax	# dataPart_95->writeSyntaxElement, D.12181
	movq	-40(%rbp), %rcx	# dataPart, tmp284
	movq	-56(%rbp), %rdx	# currSE, tmp285
	movq	%rcx, %rsi	# tmp284,
	movq	%rdx, %rdi	# tmp285,
	call	*%rax	# D.12181
	.loc 1 665 0
	movq	-56(%rbp), %rax	# currSE, tmp286
	movl	12(%rax), %eax	# currSE_16->len, tmp287
	movl	%eax, -84(%rbp)	# tmp287, rlc_bits
	.loc 1 667 0
	movq	-40(%rbp), %rax	# dataPart, tmp288
	movq	(%rax), %rax	# dataPart_95->bitstream, tmp289
	movq	%rax, -32(%rbp)	# tmp289, currStream
	.loc 1 669 0
	movq	-32(%rbp), %rax	# currStream, tmp290
	movl	4(%rax), %edx	# currStream_98->bits_to_go, D.12174
	movq	-32(%rbp), %rax	# currStream, tmp291
	movl	%edx, 28(%rax)	# D.12174, currStream_98->bits_to_go_skip
	.loc 1 670 0
	movq	-32(%rbp), %rax	# currStream, tmp292
	movl	(%rax), %edx	# currStream_98->byte_pos, D.12174
	movq	-32(%rbp), %rax	# currStream, tmp293
	movl	%edx, 24(%rax)	# D.12174, currStream_98->byte_pos_skip
	.loc 1 671 0
	movq	-32(%rbp), %rax	# currStream, tmp294
	movzbl	8(%rax), %edx	# currStream_98->byte_buf, D.12182
	movq	-32(%rbp), %rax	# currStream, tmp295
	movb	%dl, 21(%rax)	# D.12182, currStream_98->byte_buf_skip
	.loc 1 673 0
	movq	-32(%rbp), %rax	# currStream, tmp296
	movl	16(%rax), %edx	# currStream_98->stored_bits_to_go, D.12174
	movq	-32(%rbp), %rax	# currStream, tmp297
	movl	%edx, 4(%rax)	# D.12174, currStream_98->bits_to_go
	.loc 1 674 0
	movq	-32(%rbp), %rax	# currStream, tmp298
	movl	12(%rax), %edx	# currStream_98->stored_byte_pos, D.12174
	movq	-32(%rbp), %rax	# currStream, tmp299
	movl	%edx, (%rax)	# D.12174, currStream_98->byte_pos
	.loc 1 675 0
	movq	-32(%rbp), %rax	# currStream, tmp300
	movzbl	20(%rax), %edx	# currStream_98->stored_byte_buf, D.12182
	movq	-32(%rbp), %rax	# currStream, tmp301
	movb	%dl, 8(%rax)	# D.12182, currStream_98->byte_buf
	.loc 1 676 0
	movl	$1, skip.4770(%rip)	#, skip
.L132:
	.loc 1 680 0
	cmpl	$0, -80(%rbp)	#, new_slice
	jne	.L133	#,
	.loc 1 682 0
	movl	-84(%rbp), %eax	# rlc_bits, tmp302
	movl	%eax, %edi	# tmp302,
	call	slice_too_big	#
	testl	%eax, %eax	# D.12174
	je	.L134	#,
	.loc 1 684 0
	movq	-112(%rbp), %rax	# recode_macroblock, tmp303
	movl	$1, (%rax)	#, *recode_macroblock_47(D)
	.loc 1 685 0
	movq	-104(%rbp), %rax	# end_of_slice, tmp304
	movl	$1, (%rax)	#, *end_of_slice_55(D)
	jmp	.L133	#
.L134:
	.loc 1 687 0
	movq	img(%rip), %rax	# img, img.270
	movl	120(%rax), %eax	# img.270_106->cod_counter, D.12174
	testl	%eax, %eax	# D.12174
	jne	.L133	#,
	.loc 1 688 0
	movl	$0, skip.4770(%rip)	#, skip
.L133:
	.loc 1 693 0
	movq	-112(%rbp), %rax	# recode_macroblock, tmp305
	movl	(%rax), %eax	# *recode_macroblock_47(D), D.12176
	testl	%eax, %eax	# D.12176
	jne	.L135	#,
	.loc 1 693 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.271
	movl	12(%rax), %ebx	# img.271_109->current_mb_nr, D.12174
	movq	img(%rip), %rax	# img, img.272
	movl	12(%rax), %eax	# img.272_111->current_mb_nr, D.12174
	movl	%eax, %edi	# D.12174,
	call	FmoMB2SliceGroup	#
	movl	%eax, %edi	# D.12174,
	call	FmoGetLastCodedMBOfSliceGroup	#
	cmpl	%eax, %ebx	# D.12174, D.12174
	jne	.L135	#,
	.loc 1 695 0 is_stmt 1
	movq	-104(%rbp), %rax	# end_of_slice, tmp306
	movl	$1, (%rax)	#, *end_of_slice_55(D)
	.loc 1 696 0
	movq	img(%rip), %rax	# img, img.273
	movl	120(%rax), %eax	# img.273_115->cod_counter, D.12174
	testl	%eax, %eax	# D.12174
	jne	.L135	#,
	.loc 1 697 0
	movl	$0, skip.4770(%rip)	#, skip
.L135:
	.loc 1 701 0
	cmpl	$0, -80(%rbp)	#, new_slice
	je	.L136	#,
	.loc 1 701 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# rlc_bits, tmp307
	movl	%eax, %edi	# tmp307,
	call	slice_too_big	#
	testl	%eax, %eax	# D.12174
	je	.L136	#,
	.loc 1 703 0 is_stmt 1
	movq	-104(%rbp), %rax	# end_of_slice, tmp308
	movl	$1, (%rax)	#, *end_of_slice_55(D)
	.loc 1 704 0
	movq	img(%rip), %rax	# img, img.274
	movl	120(%rax), %eax	# img.274_118->cod_counter, D.12174
	testl	%eax, %eax	# D.12174
	jne	.L136	#,
	.loc 1 705 0
	movl	$0, skip.4770(%rip)	#, skip
.L136:
	.loc 1 707 0
	movq	-112(%rbp), %rax	# recode_macroblock, tmp309
	movl	(%rax), %eax	# *recode_macroblock_47(D), D.12176
	testl	%eax, %eax	# D.12176
	jne	.L137	#,
	.loc 1 708 0
	movq	-72(%rbp), %rax	# currSlice, tmp310
	movl	20(%rax), %eax	# currSlice_6->num_mb, D.12174
	leal	1(%rax), %edx	#, D.12174
	movq	-72(%rbp), %rax	# currSlice, tmp311
	movl	%edx, 20(%rax)	# D.12174, currSlice_6->num_mb
	.loc 1 709 0
	jmp	.L131	#
.L137:
	jmp	.L131	#
.L129:
	.loc 1 712 0
	movq	img(%rip), %rax	# img, img.275
	movl	12(%rax), %eax	# img.275_123->current_mb_nr, D.12174
	testl	%eax, %eax	# D.12174
	jle	.L138	#,
	.loc 1 712 0 is_stmt 0 discriminator 1
	cmpl	$0, -80(%rbp)	#, new_slice
	jne	.L138	#,
	.loc 1 714 0 is_stmt 1
	movq	-72(%rbp), %rax	# currSlice, tmp312
	movq	120(%rax), %rax	# currSlice_6->slice_too_big, D.12183
	movl	-84(%rbp), %edx	# rlc_bits, tmp313
	movl	%edx, %edi	# tmp313,
	call	*%rax	# D.12183
	testl	%eax, %eax	# D.12176
	je	.L138	#,
	.loc 1 716 0
	movq	-112(%rbp), %rax	# recode_macroblock, tmp314
	movl	$1, (%rax)	#, *recode_macroblock_47(D)
	.loc 1 717 0
	movq	-104(%rbp), %rax	# end_of_slice, tmp315
	movl	$1, (%rax)	#, *end_of_slice_55(D)
.L138:
	.loc 1 721 0
	movq	-112(%rbp), %rax	# recode_macroblock, tmp316
	movl	(%rax), %eax	# *recode_macroblock_47(D), D.12176
	testl	%eax, %eax	# D.12176
	jne	.L139	#,
	.loc 1 721 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.276
	movl	12(%rax), %ebx	# img.276_128->current_mb_nr, D.12174
	movq	img(%rip), %rax	# img, img.277
	movl	12(%rax), %eax	# img.277_130->current_mb_nr, D.12174
	movl	%eax, %edi	# D.12174,
	call	FmoMB2SliceGroup	#
	movl	%eax, %edi	# D.12174,
	call	FmoGetLastCodedMBOfSliceGroup	#
	cmpl	%eax, %ebx	# D.12174, D.12174
	jne	.L139	#,
	.loc 1 722 0 is_stmt 1
	movq	-104(%rbp), %rax	# end_of_slice, tmp317
	movl	$1, (%rax)	#, *end_of_slice_55(D)
	.loc 1 723 0
	jmp	.L131	#
.L139:
	jmp	.L131	#
.L124:
	.loc 1 726 0
	movq	input(%rip), %rax	# input, input.278
	movl	208(%rax), %eax	# input.278_134->slice_mode, D.12174
	movl	%eax, %ecx	# D.12174,
	movl	$.LC2, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 727 0
	movl	$600, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L131:
	.loc 1 730 0
	movq	-112(%rbp), %rax	# recode_macroblock, tmp318
	movl	(%rax), %eax	# *recode_macroblock_47(D), D.12176
	cmpl	$1, %eax	#, D.12176
	jne	.L140	#,
	.loc 1 733 0
	movl	$0, -88(%rbp)	#, i
	jmp	.L141	#
.L143:
	.loc 1 735 0
	movq	-72(%rbp), %rax	# currSlice, tmp319
	movq	24(%rax), %rdx	# currSlice_6->partArr, D.12179
	movl	-88(%rbp), %eax	# i, tmp320
	cltq
	salq	$3, %rax	#, tmp322
	movq	%rax, %rcx	# tmp321, tmp323
	salq	$4, %rcx	#, tmp323
	subq	%rax, %rcx	# tmp321, D.12175
	movq	%rcx, %rax	# D.12175, D.12175
	addq	%rdx, %rax	# D.12179, tmp324
	movq	%rax, -40(%rbp)	# tmp324, dataPart
	.loc 1 736 0
	movq	-40(%rbp), %rax	# dataPart, tmp325
	movq	(%rax), %rax	# dataPart_142->bitstream, tmp326
	movq	%rax, -32(%rbp)	# tmp326, currStream
	.loc 1 737 0
	movq	-32(%rbp), %rax	# currStream, tmp327
	movl	16(%rax), %edx	# currStream_143->stored_bits_to_go, D.12174
	movq	-32(%rbp), %rax	# currStream, tmp328
	movl	%edx, 4(%rax)	# D.12174, currStream_143->bits_to_go
	.loc 1 738 0
	movq	-32(%rbp), %rax	# currStream, tmp329
	movl	12(%rax), %edx	# currStream_143->stored_byte_pos, D.12174
	movq	-32(%rbp), %rax	# currStream, tmp330
	movl	%edx, (%rax)	# D.12174, currStream_143->byte_pos
	.loc 1 739 0
	movq	-32(%rbp), %rax	# currStream, tmp331
	movzbl	20(%rax), %edx	# currStream_143->stored_byte_buf, D.12182
	movq	-32(%rbp), %rax	# currStream, tmp332
	movb	%dl, 8(%rax)	# D.12182, currStream_143->byte_buf
	.loc 1 740 0
	movq	input(%rip), %rax	# input, input.279
	movl	2356(%rax), %eax	# input.279_147->symbol_mode, D.12174
	cmpl	$1, %eax	#, D.12174
	jne	.L142	#,
	.loc 1 742 0
	movq	-40(%rbp), %rax	# dataPart, tmp336
	addq	$8, %rax	#, tmp335
	movq	%rax, -24(%rbp)	# tmp335, eep
	.loc 1 743 0
	movq	-24(%rbp), %rax	# eep, tmp337
	movl	40(%rax), %edx	# eep_149->ElowS, D.12178
	movq	-24(%rbp), %rax	# eep, tmp338
	movl	%edx, (%rax)	# D.12178, eep_149->Elow
	.loc 1 744 0
	movq	-24(%rbp), %rax	# eep, tmp339
	movl	44(%rax), %edx	# eep_149->ErangeS, D.12178
	movq	-24(%rbp), %rax	# eep, tmp340
	movl	%edx, 4(%rax)	# D.12178, eep_149->Erange
	.loc 1 745 0
	movq	-24(%rbp), %rax	# eep, tmp341
	movl	48(%rax), %edx	# eep_149->EbufferS, D.12178
	movq	-24(%rbp), %rax	# eep, tmp342
	movl	%edx, 8(%rax)	# D.12178, eep_149->Ebuffer
	.loc 1 746 0
	movq	-24(%rbp), %rax	# eep, tmp343
	movl	52(%rax), %edx	# eep_149->Ebits_to_goS, D.12178
	movq	-24(%rbp), %rax	# eep, tmp344
	movl	%edx, 12(%rax)	# D.12178, eep_149->Ebits_to_go
	.loc 1 747 0
	movq	-24(%rbp), %rax	# eep, tmp345
	movl	56(%rax), %edx	# eep_149->Ebits_to_followS, D.12178
	movq	-24(%rbp), %rax	# eep, tmp346
	movl	%edx, 16(%rax)	# D.12178, eep_149->Ebits_to_follow
	.loc 1 748 0
	movq	-24(%rbp), %rax	# eep, tmp347
	movq	64(%rax), %rdx	# eep_149->EcodestrmS, D.12184
	movq	-24(%rbp), %rax	# eep, tmp348
	movq	%rdx, 24(%rax)	# D.12184, eep_149->Ecodestrm
	.loc 1 749 0
	movq	-24(%rbp), %rax	# eep, tmp349
	movq	72(%rax), %rdx	# eep_149->Ecodestrm_lenS, D.12180
	movq	-24(%rbp), %rax	# eep, tmp350
	movq	%rdx, 32(%rax)	# D.12180, eep_149->Ecodestrm_len
	.loc 1 750 0
	movq	-24(%rbp), %rax	# eep, tmp351
	movl	84(%rax), %edx	# eep_149->CS, D.12174
	movq	-24(%rbp), %rax	# eep, tmp352
	movl	%edx, 80(%rax)	# D.12174, eep_149->C
	.loc 1 751 0
	movq	-24(%rbp), %rax	# eep, tmp353
	movl	100(%rax), %edx	# eep_149->BS, D.12174
	movq	-24(%rbp), %rax	# eep, tmp354
	movl	%edx, 96(%rax)	# D.12174, eep_149->B
	.loc 1 752 0
	movq	-24(%rbp), %rax	# eep, tmp355
	movl	92(%rax), %edx	# eep_149->ES, D.12174
	movq	-24(%rbp), %rax	# eep, tmp356
	movl	%edx, 88(%rax)	# D.12174, eep_149->E
.L142:
	.loc 1 733 0
	addl	$1, -88(%rbp)	#, i
.L141:
	.loc 1 733 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# currSlice, tmp357
	movl	16(%rax), %eax	# currSlice_6->max_part_nr, D.12174
	cmpl	-88(%rbp), %eax	# i, D.12174
	jg	.L143	#,
.L140:
	.loc 1 757 0 is_stmt 1
	movq	-104(%rbp), %rax	# end_of_slice, tmp358
	movl	(%rax), %eax	# *end_of_slice_55(D), D.12176
	cmpl	$1, %eax	#, D.12176
	jne	.L144	#,
	.loc 1 757 0 is_stmt 0 discriminator 1
	movl	skip.4770(%rip), %eax	# skip, skip.280
	cmpl	$1, %eax	#, skip.280
	jne	.L144	#,
	.loc 1 761 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.281
	movl	120(%rax), %eax	# img.281_163->cod_counter, D.12174
	testl	%eax, %eax	# D.12174
	je	.L145	#,
	.loc 1 761 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# recode_macroblock, tmp359
	movl	(%rax), %eax	# *recode_macroblock_47(D), D.12176
	cmpl	$1, %eax	#, D.12176
	jne	.L145	#,
	.loc 1 765 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.282
	movl	120(%rax), %edx	# img.282_166->cod_counter, D.12174
	subl	$1, %edx	#, D.12174
	movl	%edx, 120(%rax)	# D.12174, img.282_166->cod_counter
	.loc 1 766 0
	movq	img(%rip), %rax	# img, img.283
	movl	120(%rax), %eax	# img.283_169->cod_counter, D.12174
	testl	%eax, %eax	# D.12174
	je	.L146	#,
	.loc 1 768 0
	movq	img(%rip), %rax	# img, img.284
	movl	120(%rax), %edx	# img.284_171->cod_counter, D.12174
	movq	-56(%rbp), %rax	# currSE, tmp360
	movl	%edx, 4(%rax)	# D.12174, currSE_16->value1
	.loc 1 769 0
	movq	-56(%rbp), %rax	# currSE, tmp361
	movl	$0, 8(%rax)	#, currSE_16->value2
	.loc 1 770 0
	movq	-56(%rbp), %rax	# currSE, tmp362
	movq	$ue_linfo, 32(%rax)	#, currSE_16->mapping
	.loc 1 771 0
	movq	-56(%rbp), %rax	# currSE, tmp363
	movl	$2, (%rax)	#, currSE_16->type
	.loc 1 772 0
	movq	-72(%rbp), %rax	# currSlice, tmp364
	movq	24(%rax), %rdx	# currSlice_6->partArr, D.12179
	movq	-56(%rbp), %rax	# currSE, tmp365
	movl	(%rax), %eax	# currSE_16->type, D.12174
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12175
	movq	-48(%rbp), %rax	# partMap, tmp366
	addq	%rcx, %rax	# D.12175, D.12180
	movl	(%rax), %eax	# *_177, D.12174
	cltq
	salq	$3, %rax	#, tmp368
	movq	%rax, %rcx	# tmp367, tmp369
	salq	$4, %rcx	#, tmp369
	subq	%rax, %rcx	# tmp367, D.12175
	movq	%rcx, %rax	# D.12175, D.12175
	addq	%rdx, %rax	# D.12179, tmp370
	movq	%rax, -40(%rbp)	# tmp370, dataPart
	.loc 1 773 0
	movq	-40(%rbp), %rax	# dataPart, tmp371
	movq	112(%rax), %rax	# dataPart_181->writeSyntaxElement, D.12181
	movq	-40(%rbp), %rcx	# dataPart, tmp372
	movq	-56(%rbp), %rdx	# currSE, tmp373
	movq	%rcx, %rsi	# tmp372,
	movq	%rdx, %rdi	# tmp373,
	call	*%rax	# D.12181
	.loc 1 774 0
	movq	-56(%rbp), %rax	# currSE, tmp374
	movl	12(%rax), %eax	# currSE_16->len, tmp375
	movl	%eax, -84(%rbp)	# tmp375, rlc_bits
	.loc 1 775 0
	movq	-64(%rbp), %rax	# currMB, tmp376
	movl	28(%rax), %edx	# currMB_13->bitcounter, D.12174
	movl	-84(%rbp), %eax	# rlc_bits, tmp377
	addl	%eax, %edx	# tmp377, D.12174
	movq	-64(%rbp), %rax	# currMB, tmp378
	movl	%edx, 28(%rax)	# D.12174, currMB_13->bitcounter
	.loc 1 776 0
	movq	img(%rip), %rax	# img, img.285
	movl	$0, 120(%rax)	#, img.285_186->cod_counter
	.loc 1 766 0
	jmp	.L144	#
.L146:
	.loc 1 766 0 is_stmt 0 discriminator 1
	jmp	.L144	#
.L145:
	.loc 1 781 0 is_stmt 1
	movq	-72(%rbp), %rax	# currSlice, tmp379
	movq	24(%rax), %rdx	# currSlice_6->partArr, D.12179
	movq	-48(%rbp), %rax	# partMap, tmp380
	addq	$8, %rax	#, D.12180
	movl	(%rax), %eax	# *_188, D.12174
	cltq
	salq	$3, %rax	#, tmp382
	movq	%rax, %rcx	# tmp381, tmp383
	salq	$4, %rcx	#, tmp383
	subq	%rax, %rcx	# tmp381, D.12175
	movq	%rcx, %rax	# D.12175, D.12175
	addq	%rdx, %rax	# D.12179, tmp384
	movq	%rax, -40(%rbp)	# tmp384, dataPart
	.loc 1 782 0
	movq	-40(%rbp), %rax	# dataPart, tmp385
	movq	(%rax), %rax	# dataPart_192->bitstream, tmp386
	movq	%rax, -32(%rbp)	# tmp386, currStream
	.loc 1 784 0
	movq	-32(%rbp), %rax	# currStream, tmp387
	movl	28(%rax), %edx	# currStream_193->bits_to_go_skip, D.12174
	movq	-32(%rbp), %rax	# currStream, tmp388
	movl	%edx, 4(%rax)	# D.12174, currStream_193->bits_to_go
	.loc 1 785 0
	movq	-32(%rbp), %rax	# currStream, tmp389
	movl	24(%rax), %edx	# currStream_193->byte_pos_skip, D.12174
	movq	-32(%rbp), %rax	# currStream, tmp390
	movl	%edx, (%rax)	# D.12174, currStream_193->byte_pos
	.loc 1 786 0
	movq	-32(%rbp), %rax	# currStream, tmp391
	movzbl	21(%rax), %edx	# currStream_193->byte_buf_skip, D.12182
	movq	-32(%rbp), %rax	# currStream, tmp392
	movb	%dl, 8(%rax)	# D.12182, currStream_193->byte_buf
	.loc 1 789 0
	movq	img(%rip), %rax	# img, img.286
	movl	$0, 120(%rax)	#, img.286_197->cod_counter
	.loc 1 790 0
	movl	$0, skip.4770(%rip)	#, skip
.L144:
	.loc 1 795 0
	movq	-104(%rbp), %rax	# end_of_slice, tmp393
	movl	(%rax), %eax	# *end_of_slice_55(D), D.12176
	cmpl	$1, %eax	#, D.12176
	jne	.L117	#,
	.loc 1 795 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.287
	movl	120(%rax), %eax	# img.287_199->cod_counter, D.12174
	testl	%eax, %eax	# D.12174
	je	.L117	#,
	cmpl	$0, -76(%rbp)	#, use_bitstream_backing
	jne	.L117	#,
	.loc 1 797 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.288
	movl	120(%rax), %edx	# img.288_201->cod_counter, D.12174
	movq	-56(%rbp), %rax	# currSE, tmp394
	movl	%edx, 4(%rax)	# D.12174, currSE_16->value1
	.loc 1 798 0
	movq	-56(%rbp), %rax	# currSE, tmp395
	movl	$0, 8(%rax)	#, currSE_16->value2
	.loc 1 799 0
	movq	-56(%rbp), %rax	# currSE, tmp396
	movq	$ue_linfo, 32(%rax)	#, currSE_16->mapping
	.loc 1 800 0
	movq	-56(%rbp), %rax	# currSE, tmp397
	movl	$2, (%rax)	#, currSE_16->type
	.loc 1 801 0
	movq	-72(%rbp), %rax	# currSlice, tmp398
	movq	24(%rax), %rdx	# currSlice_6->partArr, D.12179
	movq	-56(%rbp), %rax	# currSE, tmp399
	movl	(%rax), %eax	# currSE_16->type, D.12174
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12175
	movq	-48(%rbp), %rax	# partMap, tmp400
	addq	%rcx, %rax	# D.12175, D.12180
	movl	(%rax), %eax	# *_207, D.12174
	cltq
	salq	$3, %rax	#, tmp402
	movq	%rax, %rcx	# tmp401, tmp403
	salq	$4, %rcx	#, tmp403
	subq	%rax, %rcx	# tmp401, D.12175
	movq	%rcx, %rax	# D.12175, D.12175
	addq	%rdx, %rax	# D.12179, tmp404
	movq	%rax, -40(%rbp)	# tmp404, dataPart
	.loc 1 802 0
	movq	-40(%rbp), %rax	# dataPart, tmp405
	movq	112(%rax), %rax	# dataPart_211->writeSyntaxElement, D.12181
	movq	-40(%rbp), %rcx	# dataPart, tmp406
	movq	-56(%rbp), %rdx	# currSE, tmp407
	movq	%rcx, %rsi	# tmp406,
	movq	%rdx, %rdi	# tmp407,
	call	*%rax	# D.12181
	.loc 1 803 0
	movq	-64(%rbp), %rax	# currMB, tmp408
	movl	(%rax), %eax	# currMB_13->currSEnr, D.12174
	leal	1(%rax), %edx	#, D.12174
	movq	-64(%rbp), %rax	# currMB, tmp409
	movl	%edx, (%rax)	# D.12174, currMB_13->currSEnr
	.loc 1 808 0
	movq	-56(%rbp), %rax	# currSE, tmp410
	movl	12(%rax), %eax	# currSE_16->len, tmp411
	movl	%eax, -84(%rbp)	# tmp411, rlc_bits
	.loc 1 809 0
	movq	-64(%rbp), %rax	# currMB, tmp412
	movl	28(%rax), %edx	# currMB_13->bitcounter, D.12174
	movl	-84(%rbp), %eax	# rlc_bits, tmp413
	addl	%eax, %edx	# tmp413, D.12174
	movq	-64(%rbp), %rax	# currMB, tmp414
	movl	%edx, 28(%rax)	# D.12174, currMB_13->bitcounter
	.loc 1 810 0
	movq	img(%rip), %rax	# img, img.289
	movl	$0, 120(%rax)	#, img.289_218->cod_counter
.L117:
	.loc 1 812 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	terminate_macroblock, .-terminate_macroblock
	.globl	slice_too_big
	.type	slice_too_big, @function
slice_too_big:
.LFB8:
	.loc 1 836 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# rlc_bits, rlc_bits
	.loc 1 837 0
	movq	img(%rip), %rax	# img, img.290
	movq	14160(%rax), %rax	# img.290_6->currentSlice, tmp82
	movq	%rax, -32(%rbp)	# tmp82, currSlice
	.loc 1 845 0
	movq	input(%rip), %rax	# input, input.291
	movl	2356(%rax), %eax	# input.291_8->symbol_mode, D.12187
	testl	%eax, %eax	# D.12187
	jne	.L149	#,
	.loc 1 847 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L150	#
.L155:
	.loc 1 849 0
	movq	-32(%rbp), %rax	# currSlice, tmp83
	movq	24(%rax), %rdx	# currSlice_7->partArr, D.12188
	movl	-40(%rbp), %eax	# i, tmp84
	cltq
	salq	$3, %rax	#, tmp86
	movq	%rax, %rcx	# tmp85, tmp87
	salq	$4, %rcx	#, tmp87
	subq	%rax, %rcx	# tmp85, D.12189
	movq	%rcx, %rax	# D.12189, D.12189
	addq	%rdx, %rax	# D.12188, tmp88
	movq	%rax, -24(%rbp)	# tmp88, dataPart
	.loc 1 850 0
	movq	-24(%rbp), %rax	# dataPart, tmp89
	movq	(%rax), %rax	# dataPart_15->bitstream, tmp90
	movq	%rax, -16(%rbp)	# tmp90, currStream
	.loc 1 851 0
	movq	-16(%rbp), %rax	# currStream, tmp91
	movl	(%rax), %eax	# currStream_16->byte_pos, tmp92
	movl	%eax, -36(%rbp)	# tmp92, size_in_bytes
	.loc 1 853 0
	movq	-16(%rbp), %rax	# currStream, tmp93
	movl	4(%rax), %eax	# currStream_16->bits_to_go, D.12187
	cmpl	$7, %eax	#, D.12187
	jg	.L151	#,
	.loc 1 854 0
	addl	$1, -36(%rbp)	#, size_in_bytes
.L151:
	.loc 1 855 0
	movq	-16(%rbp), %rax	# currStream, tmp94
	movl	4(%rax), %eax	# currStream_16->bits_to_go, D.12187
	cmpl	-52(%rbp), %eax	# rlc_bits, D.12187
	jge	.L152	#,
	.loc 1 856 0
	addl	$1, -36(%rbp)	#, size_in_bytes
.L152:
	.loc 1 857 0
	movq	input(%rip), %rax	# input, input.292
	movl	212(%rax), %eax	# input.292_23->slice_argument, D.12187
	cmpl	-36(%rbp), %eax	# size_in_bytes, D.12187
	jge	.L153	#,
	.loc 1 858 0
	movl	$1, %eax	#, D.12187
	jmp	.L154	#
.L153:
	.loc 1 847 0
	addl	$1, -40(%rbp)	#, i
.L150:
	.loc 1 847 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# currSlice, tmp95
	movl	16(%rax), %eax	# currSlice_7->max_part_nr, D.12187
	cmpl	-40(%rbp), %eax	# i, D.12187
	jg	.L155	#,
.L149:
	.loc 1 863 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.293
	movl	2356(%rax), %eax	# input.293_27->symbol_mode, D.12187
	cmpl	$1, %eax	#, D.12187
	jne	.L156	#,
	.loc 1 865 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L157	#
.L159:
	.loc 1 867 0
	movq	-32(%rbp), %rax	# currSlice, tmp96
	movq	24(%rax), %rdx	# currSlice_7->partArr, D.12188
	movl	-40(%rbp), %eax	# i, tmp97
	cltq
	salq	$3, %rax	#, tmp99
	movq	%rax, %rcx	# tmp98, tmp100
	salq	$4, %rcx	#, tmp100
	subq	%rax, %rcx	# tmp98, D.12189
	movq	%rcx, %rax	# D.12189, D.12189
	addq	%rdx, %rax	# D.12188, tmp101
	movq	%rax, -24(%rbp)	# tmp101, dataPart
	.loc 1 868 0
	movq	-24(%rbp), %rax	# dataPart, tmp105
	addq	$8, %rax	#, tmp104
	movq	%rax, -8(%rbp)	# tmp104, eep
	.loc 1 870 0
	movq	-8(%rbp), %rax	# eep, tmp106
	movq	%rax, %rdi	# tmp106,
	call	arienco_bits_written	#
	movq	input(%rip), %rdx	# input, input.294
	movl	212(%rdx), %edx	# input.294_37->slice_argument, D.12187
	sall	$3, %edx	#, D.12187
	cmpl	%edx, %eax	# D.12187, D.12187
	jle	.L158	#,
	.loc 1 871 0
	movl	$1, %eax	#, D.12187
	jmp	.L154	#
.L158:
	.loc 1 865 0
	addl	$1, -40(%rbp)	#, i
.L157:
	.loc 1 865 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# currSlice, tmp107
	movl	16(%rax), %eax	# currSlice_7->max_part_nr, D.12187
	cmpl	-40(%rbp), %eax	# i, D.12187
	jg	.L159	#,
.L156:
	.loc 1 874 0 is_stmt 1
	movl	$0, %eax	#, D.12187
.L154:
	.loc 1 875 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	slice_too_big, .-slice_too_big
	.globl	OneComponentLumaPrediction4x4
	.type	OneComponentLumaPrediction4x4, @function
OneComponentLumaPrediction4x4:
.LFB9:
	.loc 1 890 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# mpred, mpred
	movl	%esi, -92(%rbp)	# pic_pix_x, pic_pix_x
	movl	%edx, -96(%rbp)	# pic_pix_y, pic_pix_y
	movq	%rcx, -104(%rbp)	# mv, mv
	movl	%r8d, %eax	# ref, tmp126
	movq	%r9, -120(%rbp)	# list, list
	movw	%ax, -108(%rbp)	# tmp126, ref
	.loc 1 892 0
	movl	$4, -76(%rbp)	#, pix_add
	.loc 1 893 0
	movl	-96(%rbp), %eax	# pic_pix_y, tmp127
	leal	0(,%rax,4), %edx	#, D.12190
	movq	-104(%rbp), %rax	# mv, tmp128
	addq	$2, %rax	#, D.12191
	movzwl	(%rax), %eax	# *_5, D.12192
	cwtl
	addl	%edx, %eax	# D.12190, tmp129
	movl	%eax, -72(%rbp)	# tmp129, j0
	movl	-76(%rbp), %eax	# pix_add, tmp134
	movl	-72(%rbp), %edx	# j0, tmp135
	addl	%edx, %eax	# tmp135, tmp133
	movl	%eax, -68(%rbp)	# tmp133, j1
	movl	-76(%rbp), %eax	# pix_add, tmp140
	movl	-68(%rbp), %edx	# j1, tmp141
	addl	%edx, %eax	# tmp141, tmp139
	movl	%eax, -64(%rbp)	# tmp139, j2
	movl	-76(%rbp), %eax	# pix_add, tmp146
	movl	-64(%rbp), %edx	# j2, tmp147
	addl	%edx, %eax	# tmp147, tmp145
	movl	%eax, -60(%rbp)	# tmp145, j3
	.loc 1 894 0
	movl	-92(%rbp), %eax	# pic_pix_x, tmp148
	leal	0(,%rax,4), %edx	#, D.12190
	movq	-104(%rbp), %rax	# mv, tmp149
	movzwl	(%rax), %eax	# *mv_4(D), D.12192
	cwtl
	addl	%edx, %eax	# D.12190, tmp150
	movl	%eax, -56(%rbp)	# tmp150, i0
	movl	-76(%rbp), %eax	# pix_add, tmp155
	movl	-56(%rbp), %edx	# i0, tmp156
	addl	%edx, %eax	# tmp156, tmp154
	movl	%eax, -52(%rbp)	# tmp154, i1
	movl	-76(%rbp), %eax	# pix_add, tmp161
	movl	-52(%rbp), %edx	# i1, tmp162
	addl	%edx, %eax	# tmp162, tmp160
	movl	%eax, -48(%rbp)	# tmp160, i2
	movl	-76(%rbp), %eax	# pix_add, tmp167
	movl	-48(%rbp), %edx	# i2, tmp168
	addl	%edx, %eax	# tmp168, tmp166
	movl	%eax, -44(%rbp)	# tmp166, i3
	.loc 1 896 0
	movq	$UMVPelY_14, -32(%rbp)	#, get_pel
	.loc 1 898 0
	movswq	-108(%rbp), %rax	# ref, D.12193
	leaq	0(,%rax,8), %rdx	#, D.12193
	movq	-120(%rbp), %rax	# list, tmp169
	addq	%rdx, %rax	# D.12193, D.12194
	movq	(%rax), %rax	# *_25, D.12195
	movl	6392(%rax), %eax	# _26->size_x, tmp170
	movl	%eax, -40(%rbp)	# tmp170, img_width
	.loc 1 899 0
	movswq	-108(%rbp), %rax	# ref, D.12193
	leaq	0(,%rax,8), %rdx	#, D.12193
	movq	-120(%rbp), %rax	# list, tmp171
	addq	%rdx, %rax	# D.12193, D.12194
	movq	(%rax), %rax	# *_30, D.12195
	movl	6396(%rax), %eax	# _31->size_y, tmp172
	movl	%eax, -36(%rbp)	# tmp172, img_height
	.loc 1 901 0
	movswq	-108(%rbp), %rax	# ref, D.12193
	leaq	0(,%rax,8), %rdx	#, D.12193
	movq	-120(%rbp), %rax	# list, tmp173
	addq	%rdx, %rax	# D.12193, D.12194
	movq	(%rax), %rax	# *_35, D.12195
	movq	6448(%rax), %rax	# _36->imgY_ups, tmp174
	movq	%rax, -24(%rbp)	# tmp174, ref_pic
	.loc 1 903 0
	movq	-88(%rbp), %rbx	# mpred, mpred.295
	leaq	4(%rbx), %rax	#, tmp175
	movq	%rax, -88(%rbp)	# tmp175, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp176
	movl	-36(%rbp), %ecx	# img_height, tmp177
	movl	-56(%rbp), %edx	# i0, tmp178
	movl	-72(%rbp), %esi	# j0, tmp179
	movq	-24(%rbp), %rdi	# ref_pic, tmp180
	movq	-32(%rbp), %rax	# get_pel, tmp181
	call	*%rax	# tmp181
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.295_39
	.loc 1 904 0
	movq	-88(%rbp), %rbx	# mpred, mpred.296
	leaq	4(%rbx), %rax	#, tmp182
	movq	%rax, -88(%rbp)	# tmp182, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp183
	movl	-36(%rbp), %ecx	# img_height, tmp184
	movl	-52(%rbp), %edx	# i1, tmp185
	movl	-72(%rbp), %esi	# j0, tmp186
	movq	-24(%rbp), %rdi	# ref_pic, tmp187
	movq	-32(%rbp), %rax	# get_pel, tmp188
	call	*%rax	# tmp188
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.296_43
	.loc 1 905 0
	movq	-88(%rbp), %rbx	# mpred, mpred.297
	leaq	4(%rbx), %rax	#, tmp189
	movq	%rax, -88(%rbp)	# tmp189, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp190
	movl	-36(%rbp), %ecx	# img_height, tmp191
	movl	-48(%rbp), %edx	# i2, tmp192
	movl	-72(%rbp), %esi	# j0, tmp193
	movq	-24(%rbp), %rdi	# ref_pic, tmp194
	movq	-32(%rbp), %rax	# get_pel, tmp195
	call	*%rax	# tmp195
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.297_47
	.loc 1 906 0
	movq	-88(%rbp), %rbx	# mpred, mpred.298
	leaq	4(%rbx), %rax	#, tmp196
	movq	%rax, -88(%rbp)	# tmp196, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp197
	movl	-36(%rbp), %ecx	# img_height, tmp198
	movl	-44(%rbp), %edx	# i3, tmp199
	movl	-72(%rbp), %esi	# j0, tmp200
	movq	-24(%rbp), %rdi	# ref_pic, tmp201
	movq	-32(%rbp), %rax	# get_pel, tmp202
	call	*%rax	# tmp202
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.298_51
	.loc 1 907 0
	movq	-88(%rbp), %rbx	# mpred, mpred.299
	leaq	4(%rbx), %rax	#, tmp203
	movq	%rax, -88(%rbp)	# tmp203, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp204
	movl	-36(%rbp), %ecx	# img_height, tmp205
	movl	-56(%rbp), %edx	# i0, tmp206
	movl	-68(%rbp), %esi	# j1, tmp207
	movq	-24(%rbp), %rdi	# ref_pic, tmp208
	movq	-32(%rbp), %rax	# get_pel, tmp209
	call	*%rax	# tmp209
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.299_55
	.loc 1 908 0
	movq	-88(%rbp), %rbx	# mpred, mpred.300
	leaq	4(%rbx), %rax	#, tmp210
	movq	%rax, -88(%rbp)	# tmp210, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp211
	movl	-36(%rbp), %ecx	# img_height, tmp212
	movl	-52(%rbp), %edx	# i1, tmp213
	movl	-68(%rbp), %esi	# j1, tmp214
	movq	-24(%rbp), %rdi	# ref_pic, tmp215
	movq	-32(%rbp), %rax	# get_pel, tmp216
	call	*%rax	# tmp216
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.300_59
	.loc 1 909 0
	movq	-88(%rbp), %rbx	# mpred, mpred.301
	leaq	4(%rbx), %rax	#, tmp217
	movq	%rax, -88(%rbp)	# tmp217, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp218
	movl	-36(%rbp), %ecx	# img_height, tmp219
	movl	-48(%rbp), %edx	# i2, tmp220
	movl	-68(%rbp), %esi	# j1, tmp221
	movq	-24(%rbp), %rdi	# ref_pic, tmp222
	movq	-32(%rbp), %rax	# get_pel, tmp223
	call	*%rax	# tmp223
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.301_63
	.loc 1 910 0
	movq	-88(%rbp), %rbx	# mpred, mpred.302
	leaq	4(%rbx), %rax	#, tmp224
	movq	%rax, -88(%rbp)	# tmp224, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp225
	movl	-36(%rbp), %ecx	# img_height, tmp226
	movl	-44(%rbp), %edx	# i3, tmp227
	movl	-68(%rbp), %esi	# j1, tmp228
	movq	-24(%rbp), %rdi	# ref_pic, tmp229
	movq	-32(%rbp), %rax	# get_pel, tmp230
	call	*%rax	# tmp230
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.302_67
	.loc 1 911 0
	movq	-88(%rbp), %rbx	# mpred, mpred.303
	leaq	4(%rbx), %rax	#, tmp231
	movq	%rax, -88(%rbp)	# tmp231, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp232
	movl	-36(%rbp), %ecx	# img_height, tmp233
	movl	-56(%rbp), %edx	# i0, tmp234
	movl	-64(%rbp), %esi	# j2, tmp235
	movq	-24(%rbp), %rdi	# ref_pic, tmp236
	movq	-32(%rbp), %rax	# get_pel, tmp237
	call	*%rax	# tmp237
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.303_71
	.loc 1 912 0
	movq	-88(%rbp), %rbx	# mpred, mpred.304
	leaq	4(%rbx), %rax	#, tmp238
	movq	%rax, -88(%rbp)	# tmp238, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp239
	movl	-36(%rbp), %ecx	# img_height, tmp240
	movl	-52(%rbp), %edx	# i1, tmp241
	movl	-64(%rbp), %esi	# j2, tmp242
	movq	-24(%rbp), %rdi	# ref_pic, tmp243
	movq	-32(%rbp), %rax	# get_pel, tmp244
	call	*%rax	# tmp244
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.304_75
	.loc 1 913 0
	movq	-88(%rbp), %rbx	# mpred, mpred.305
	leaq	4(%rbx), %rax	#, tmp245
	movq	%rax, -88(%rbp)	# tmp245, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp246
	movl	-36(%rbp), %ecx	# img_height, tmp247
	movl	-48(%rbp), %edx	# i2, tmp248
	movl	-64(%rbp), %esi	# j2, tmp249
	movq	-24(%rbp), %rdi	# ref_pic, tmp250
	movq	-32(%rbp), %rax	# get_pel, tmp251
	call	*%rax	# tmp251
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.305_79
	.loc 1 914 0
	movq	-88(%rbp), %rbx	# mpred, mpred.306
	leaq	4(%rbx), %rax	#, tmp252
	movq	%rax, -88(%rbp)	# tmp252, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp253
	movl	-36(%rbp), %ecx	# img_height, tmp254
	movl	-44(%rbp), %edx	# i3, tmp255
	movl	-64(%rbp), %esi	# j2, tmp256
	movq	-24(%rbp), %rdi	# ref_pic, tmp257
	movq	-32(%rbp), %rax	# get_pel, tmp258
	call	*%rax	# tmp258
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.306_83
	.loc 1 915 0
	movq	-88(%rbp), %rbx	# mpred, mpred.307
	leaq	4(%rbx), %rax	#, tmp259
	movq	%rax, -88(%rbp)	# tmp259, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp260
	movl	-36(%rbp), %ecx	# img_height, tmp261
	movl	-56(%rbp), %edx	# i0, tmp262
	movl	-60(%rbp), %esi	# j3, tmp263
	movq	-24(%rbp), %rdi	# ref_pic, tmp264
	movq	-32(%rbp), %rax	# get_pel, tmp265
	call	*%rax	# tmp265
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.307_87
	.loc 1 916 0
	movq	-88(%rbp), %rbx	# mpred, mpred.308
	leaq	4(%rbx), %rax	#, tmp266
	movq	%rax, -88(%rbp)	# tmp266, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp267
	movl	-36(%rbp), %ecx	# img_height, tmp268
	movl	-52(%rbp), %edx	# i1, tmp269
	movl	-60(%rbp), %esi	# j3, tmp270
	movq	-24(%rbp), %rdi	# ref_pic, tmp271
	movq	-32(%rbp), %rax	# get_pel, tmp272
	call	*%rax	# tmp272
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.308_91
	.loc 1 917 0
	movq	-88(%rbp), %rbx	# mpred, mpred.309
	leaq	4(%rbx), %rax	#, tmp273
	movq	%rax, -88(%rbp)	# tmp273, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp274
	movl	-36(%rbp), %ecx	# img_height, tmp275
	movl	-48(%rbp), %edx	# i2, tmp276
	movl	-60(%rbp), %esi	# j3, tmp277
	movq	-24(%rbp), %rdi	# ref_pic, tmp278
	movq	-32(%rbp), %rax	# get_pel, tmp279
	call	*%rax	# tmp279
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.309_95
	.loc 1 918 0
	movq	-88(%rbp), %rbx	# mpred, mpred.310
	leaq	4(%rbx), %rax	#, tmp280
	movq	%rax, -88(%rbp)	# tmp280, mpred
	movl	-40(%rbp), %r8d	# img_width, tmp281
	movl	-36(%rbp), %ecx	# img_height, tmp282
	movl	-44(%rbp), %edx	# i3, tmp283
	movl	-60(%rbp), %esi	# j3, tmp284
	movq	-24(%rbp), %rdi	# ref_pic, tmp285
	movq	-32(%rbp), %rax	# get_pel, tmp286
	call	*%rax	# tmp286
	movzwl	%ax, %eax	# D.12196, D.12190
	movl	%eax, (%rbx)	# D.12190, *mpred.310_99
	.loc 1 920 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	OneComponentLumaPrediction4x4, .-OneComponentLumaPrediction4x4
	.globl	copyblock4x4
	.type	copyblock4x4, @function
copyblock4x4:
.LFB10:
	.loc 1 932 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# mpred, mpred
	movq	%rsi, -16(%rbp)	# block, block
	.loc 1 933 0
	movq	-8(%rbp), %rax	# mpred, mpred.311
	leaq	4(%rax), %rdx	#, tmp103
	movq	%rdx, -8(%rbp)	# tmp103, mpred
	movq	-16(%rbp), %rdx	# block, tmp104
	movl	(%rdx), %edx	# *block_4(D), D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.311_2
	.loc 1 934 0
	movq	-8(%rbp), %rax	# mpred, mpred.312
	leaq	4(%rax), %rdx	#, tmp105
	movq	%rdx, -8(%rbp)	# tmp105, mpred
	movq	-16(%rbp), %rdx	# block, tmp106
	addq	$16, %rdx	#, D.12198
	movl	(%rdx), %edx	# *_8, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.312_6
	.loc 1 935 0
	movq	-8(%rbp), %rax	# mpred, mpred.313
	leaq	4(%rax), %rdx	#, tmp107
	movq	%rdx, -8(%rbp)	# tmp107, mpred
	movq	-16(%rbp), %rdx	# block, tmp108
	addq	$32, %rdx	#, D.12198
	movl	(%rdx), %edx	# *_12, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.313_10
	.loc 1 936 0
	movq	-8(%rbp), %rax	# mpred, mpred.314
	leaq	4(%rax), %rdx	#, tmp109
	movq	%rdx, -8(%rbp)	# tmp109, mpred
	movq	-16(%rbp), %rdx	# block, tmp110
	addq	$48, %rdx	#, D.12198
	movl	(%rdx), %edx	# *_16, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.314_14
	.loc 1 937 0
	movq	-8(%rbp), %rax	# mpred, mpred.315
	leaq	4(%rax), %rdx	#, tmp111
	movq	%rdx, -8(%rbp)	# tmp111, mpred
	movq	-16(%rbp), %rdx	# block, tmp112
	movl	4(%rdx), %edx	# *block_4(D), D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.315_18
	.loc 1 938 0
	movq	-8(%rbp), %rax	# mpred, mpred.316
	leaq	4(%rax), %rdx	#, tmp113
	movq	%rdx, -8(%rbp)	# tmp113, mpred
	movq	-16(%rbp), %rdx	# block, tmp114
	addq	$16, %rdx	#, D.12198
	movl	4(%rdx), %edx	# *_23, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.316_21
	.loc 1 939 0
	movq	-8(%rbp), %rax	# mpred, mpred.317
	leaq	4(%rax), %rdx	#, tmp115
	movq	%rdx, -8(%rbp)	# tmp115, mpred
	movq	-16(%rbp), %rdx	# block, tmp116
	addq	$32, %rdx	#, D.12198
	movl	4(%rdx), %edx	# *_27, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.317_25
	.loc 1 940 0
	movq	-8(%rbp), %rax	# mpred, mpred.318
	leaq	4(%rax), %rdx	#, tmp117
	movq	%rdx, -8(%rbp)	# tmp117, mpred
	movq	-16(%rbp), %rdx	# block, tmp118
	addq	$48, %rdx	#, D.12198
	movl	4(%rdx), %edx	# *_31, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.318_29
	.loc 1 941 0
	movq	-8(%rbp), %rax	# mpred, mpred.319
	leaq	4(%rax), %rdx	#, tmp119
	movq	%rdx, -8(%rbp)	# tmp119, mpred
	movq	-16(%rbp), %rdx	# block, tmp120
	movl	8(%rdx), %edx	# *block_4(D), D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.319_33
	.loc 1 942 0
	movq	-8(%rbp), %rax	# mpred, mpred.320
	leaq	4(%rax), %rdx	#, tmp121
	movq	%rdx, -8(%rbp)	# tmp121, mpred
	movq	-16(%rbp), %rdx	# block, tmp122
	addq	$16, %rdx	#, D.12198
	movl	8(%rdx), %edx	# *_38, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.320_36
	.loc 1 943 0
	movq	-8(%rbp), %rax	# mpred, mpred.321
	leaq	4(%rax), %rdx	#, tmp123
	movq	%rdx, -8(%rbp)	# tmp123, mpred
	movq	-16(%rbp), %rdx	# block, tmp124
	addq	$32, %rdx	#, D.12198
	movl	8(%rdx), %edx	# *_42, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.321_40
	.loc 1 944 0
	movq	-8(%rbp), %rax	# mpred, mpred.322
	leaq	4(%rax), %rdx	#, tmp125
	movq	%rdx, -8(%rbp)	# tmp125, mpred
	movq	-16(%rbp), %rdx	# block, tmp126
	addq	$48, %rdx	#, D.12198
	movl	8(%rdx), %edx	# *_46, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.322_44
	.loc 1 945 0
	movq	-8(%rbp), %rax	# mpred, mpred.323
	leaq	4(%rax), %rdx	#, tmp127
	movq	%rdx, -8(%rbp)	# tmp127, mpred
	movq	-16(%rbp), %rdx	# block, tmp128
	movl	12(%rdx), %edx	# *block_4(D), D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.323_48
	.loc 1 946 0
	movq	-8(%rbp), %rax	# mpred, mpred.324
	leaq	4(%rax), %rdx	#, tmp129
	movq	%rdx, -8(%rbp)	# tmp129, mpred
	movq	-16(%rbp), %rdx	# block, tmp130
	addq	$16, %rdx	#, D.12198
	movl	12(%rdx), %edx	# *_53, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.324_51
	.loc 1 947 0
	movq	-8(%rbp), %rax	# mpred, mpred.325
	leaq	4(%rax), %rdx	#, tmp131
	movq	%rdx, -8(%rbp)	# tmp131, mpred
	movq	-16(%rbp), %rdx	# block, tmp132
	addq	$32, %rdx	#, D.12198
	movl	12(%rdx), %edx	# *_57, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.325_55
	.loc 1 948 0
	movq	-8(%rbp), %rax	# mpred, mpred.326
	leaq	4(%rax), %rdx	#, tmp133
	movq	%rdx, -8(%rbp)	# tmp133, mpred
	movq	-16(%rbp), %rdx	# block, tmp134
	addq	$48, %rdx	#, D.12198
	movl	12(%rdx), %edx	# *_61, D.12197
	movl	%edx, (%rax)	# D.12197, *mpred.326_59
	.loc 1 949 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	copyblock4x4, .-copyblock4x4
	.globl	LumaPrediction4x4
	.type	LumaPrediction4x4, @function
LumaPrediction4x4:
.LFB11:
	.loc 1 965 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)	# block_x, block_x
	movl	%esi, -104(%rbp)	# block_y, block_y
	movl	%edx, -108(%rbp)	# p_dir, p_dir
	movl	%ecx, -112(%rbp)	# fw_mode, fw_mode
	movl	%r8d, -116(%rbp)	# bw_mode, bw_mode
	movl	%r9d, %edx	# fw_ref_idx, tmp262
	movl	16(%rbp), %eax	# bw_ref_idx, tmp263
	movw	%dx, -120(%rbp)	# tmp262, fw_ref_idx
	movw	%ax, -124(%rbp)	# tmp263, bw_ref_idx
	.loc 1 970 0
	movl	-100(%rbp), %eax	# block_x, tmp267
	addl	$4, %eax	#, tmp266
	movl	%eax, -80(%rbp)	# tmp266, block_x4
	.loc 1 971 0
	movl	-104(%rbp), %eax	# block_y, tmp271
	addl	$4, %eax	#, tmp270
	movl	%eax, -76(%rbp)	# tmp270, block_y4
	.loc 1 972 0
	movq	img(%rip), %rax	# img, img.327
	movl	168(%rax), %edx	# img.327_38->opix_x, D.12199
	movl	-100(%rbp), %eax	# block_x, tmp275
	addl	%edx, %eax	# D.12199, tmp274
	movl	%eax, -72(%rbp)	# tmp274, pic_opix_x
	.loc 1 973 0
	movq	img(%rip), %rax	# img, img.328
	movl	172(%rax), %edx	# img.328_41->opix_y, D.12199
	movl	-104(%rbp), %eax	# block_y, tmp279
	addl	%edx, %eax	# D.12199, tmp278
	movl	%eax, -68(%rbp)	# tmp278, pic_opix_y
	.loc 1 974 0
	movl	-100(%rbp), %eax	# block_x, tmp283
	sarl	$2, %eax	#, tmp282
	movl	%eax, -64(%rbp)	# tmp282, bx
	.loc 1 975 0
	movl	-104(%rbp), %eax	# block_y, tmp287
	sarl	$2, %eax	#, tmp286
	movl	%eax, -60(%rbp)	# tmp286, by
	.loc 1 976 0
	movq	$fw_pred.4834, -48(%rbp)	#, fpred
	.loc 1 977 0
	movq	$bw_pred.4835, -40(%rbp)	#, bpred
	.loc 1 978 0
	movq	img(%rip), %rax	# img, img.329
	movq	14168(%rax), %rdx	# img.329_48->mb_data, D.12200
	movq	img(%rip), %rax	# img, img.330
	movl	12(%rax), %eax	# img.330_50->current_mb_nr, D.12199
	cltq
	imulq	$632, %rax, %rax	#, D.12201, D.12201
	addq	%rdx, %rax	# D.12200, tmp288
	movq	%rax, -24(%rbp)	# tmp288, currMB
	.loc 1 980 0
	movq	active_pps(%rip), %rax	# active_pps, active_pps.332
	movl	192(%rax), %eax	# active_pps.332_55->weighted_pred_flag, D.12202
	testl	%eax, %eax	# D.12202
	je	.L163	#,
	.loc 1 980 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.333
	movl	24(%rax), %eax	# img.333_57->type, D.12199
	testl	%eax, %eax	# D.12199
	je	.L164	#,
	.loc 1 980 0 discriminator 2
	movq	img(%rip), %rax	# img, img.334
	movl	24(%rax), %eax	# img.334_59->type, D.12199
	cmpl	$3, %eax	#, D.12199
	je	.L164	#,
.L163:
	.loc 1 981 0 is_stmt 1 discriminator 2
	movq	active_pps(%rip), %rax	# active_pps, active_pps.335
	movl	196(%rax), %eax	# active_pps.335_61->weighted_bipred_idc, D.12203
	.loc 1 980 0 discriminator 2
	testl	%eax, %eax	# D.12203
	je	.L165	#,
	.loc 1 981 0
	movq	img(%rip), %rax	# img, img.336
	movl	24(%rax), %eax	# img.336_63->type, D.12199
	cmpl	$1, %eax	#, D.12199
	jne	.L165	#,
.L164:
	.loc 1 980 0 discriminator 1
	movl	$1, %eax	#, iftmp.331
	jmp	.L166	#
.L165:
	.loc 1 980 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.331
.L166:
	.loc 1 980 0 discriminator 4
	movl	%eax, -56(%rbp)	# iftmp.331, apply_weights
	.loc 1 982 0 is_stmt 1 discriminator 4
	movq	img(%rip), %rax	# img, img.337
	movq	71928(%rax), %rax	# img.337_68->all_mv, tmp289
	movq	%rax, -32(%rbp)	# tmp289, mv_array
	.loc 1 984 0 discriminator 4
	movq	img(%rip), %rax	# img, img.339
	movl	72400(%rax), %eax	# img.339_70->MbaffFrameFlag, D.12199
	testl	%eax, %eax	# D.12199
	je	.L167	#,
	.loc 1 984 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# currMB, tmp290
	movl	532(%rax), %eax	# currMB_54->mb_field, D.12199
	testl	%eax, %eax	# D.12199
	je	.L167	#,
	movq	img(%rip), %rax	# img, img.341
	movl	12(%rax), %eax	# img.341_73->current_mb_nr, D.12199
	andl	$1, %eax	#, D.12204
	testl	%eax, %eax	# D.12204
	je	.L168	#,
	movl	$4, %eax	#, iftmp.340
	jmp	.L169	#
.L168:
	.loc 1 984 0 discriminator 2
	movl	$2, %eax	#, iftmp.340
.L169:
	.loc 1 984 0 discriminator 3
	jmp	.L170	#
.L167:
	.loc 1 984 0 discriminator 2
	movl	$0, %eax	#, iftmp.338
.L170:
	.loc 1 984 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.338, list_offset
	.loc 1 987 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# currMB, tmp291
	movl	580(%rax), %eax	# currMB_54->bi_pred_me, D.12199
	testl	%eax, %eax	# D.12199
	je	.L171	#,
	.loc 1 987 0 is_stmt 0 discriminator 1
	cmpw	$0, -120(%rbp)	#, fw_ref_idx
	jne	.L171	#,
	cmpw	$0, -124(%rbp)	#, bw_ref_idx
	jne	.L171	#,
	cmpl	$2, -108(%rbp)	#, p_dir
	jne	.L171	#,
	cmpl	$1, -112(%rbp)	#, fw_mode
	jne	.L171	#,
	cmpl	$1, -116(%rbp)	#, bw_mode
	jne	.L171	#,
	.loc 1 989 0 is_stmt 1
	movq	-24(%rbp), %rax	# currMB, tmp292
	movl	580(%rax), %eax	# currMB_54->bi_pred_me, D.12199
	cmpl	$1, %eax	#, D.12199
	jne	.L172	#,
	.loc 1 989 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.343
	movq	71936(%rax), %rax	# img.343_89->bipred_mv1, iftmp.342
	jmp	.L173	#
.L172:
	.loc 1 989 0 discriminator 2
	movq	img(%rip), %rax	# img, img.344
	movq	71944(%rax), %rax	# img.344_91->bipred_mv2, iftmp.342
.L173:
	.loc 1 989 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.342, mv_array
.L171:
	.loc 1 993 0 is_stmt 1
	cmpl	$0, -108(%rbp)	#, p_dir
	je	.L174	#,
	.loc 1 993 0 is_stmt 0 discriminator 1
	cmpl	$2, -108(%rbp)	#, p_dir
	jne	.L175	#,
.L174:
	.loc 1 995 0 is_stmt 1
	movl	-52(%rbp), %eax	# list_offset, tmp294
	cltq
	movq	listX(,%rax,8), %rdi	# listX, D.12205
	movswl	-120(%rbp), %esi	# fw_ref_idx, D.12199
	movl	-64(%rbp), %eax	# bx, tmp295
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12201
	movq	-32(%rbp), %rax	# mv_array, tmp296
	addq	%rdx, %rax	# D.12201, D.12206
	movq	(%rax), %rax	# *_98, D.12207
	movl	-60(%rbp), %edx	# by, tmp297
	movslq	%edx, %rdx	# tmp297, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12207
	movq	(%rax), %rax	# *_102, D.12208
	movq	(%rax), %rax	# *_103, D.12209
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12209
	movq	(%rax), %rax	# *_107, D.12210
	movl	-112(%rbp), %edx	# fw_mode, tmp298
	movslq	%edx, %rdx	# tmp298, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12210
	movq	(%rax), %rcx	# *_111, D.12211
	movl	-68(%rbp), %edx	# pic_opix_y, tmp299
	movl	-72(%rbp), %eax	# pic_opix_x, tmp300
	movq	%rdi, %r9	# D.12205,
	movl	%esi, %r8d	# D.12199,
	movl	%eax, %esi	# tmp300,
	movl	$fw_pred.4834, %edi	#,
	call	OneComponentLumaPrediction4x4	#
.L175:
	.loc 1 998 0
	cmpl	$1, -108(%rbp)	#, p_dir
	je	.L176	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	cmpl	$2, -108(%rbp)	#, p_dir
	jne	.L177	#,
.L176:
	.loc 1 1000 0 is_stmt 1
	movl	-52(%rbp), %eax	# list_offset, tmp301
	addl	$1, %eax	#, D.12199
	cltq
	movq	listX(,%rax,8), %rdi	# listX, D.12205
	movswl	-124(%rbp), %esi	# bw_ref_idx, D.12199
	movl	-64(%rbp), %eax	# bx, tmp303
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12201
	movq	-32(%rbp), %rax	# mv_array, tmp304
	addq	%rdx, %rax	# D.12201, D.12206
	movq	(%rax), %rax	# *_118, D.12207
	movl	-60(%rbp), %edx	# by, tmp305
	movslq	%edx, %rdx	# tmp305, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12207
	movq	(%rax), %rax	# *_122, D.12208
	addq	$8, %rax	#, D.12208
	movq	(%rax), %rax	# *_124, D.12209
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12209
	movq	(%rax), %rax	# *_128, D.12210
	movl	-116(%rbp), %edx	# bw_mode, tmp306
	movslq	%edx, %rdx	# tmp306, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12210
	movq	(%rax), %rcx	# *_132, D.12211
	movl	-68(%rbp), %edx	# pic_opix_y, tmp307
	movl	-72(%rbp), %eax	# pic_opix_x, tmp308
	movq	%rdi, %r9	# D.12205,
	movl	%esi, %r8d	# D.12199,
	movl	%eax, %esi	# tmp308,
	movl	$bw_pred.4835, %edi	#,
	call	OneComponentLumaPrediction4x4	#
.L177:
	.loc 1 1003 0
	cmpl	$0, -56(%rbp)	#, apply_weights
	je	.L178	#,
	.loc 1 1006 0
	cmpl	$2, -108(%rbp)	#, p_dir
	jne	.L179	#,
	.loc 1 1008 0
	movl	-104(%rbp), %eax	# block_y, tmp309
	movl	%eax, -84(%rbp)	# tmp309, j
	jmp	.L180	#
.L183:
	.loc 1 1009 0
	movl	-100(%rbp), %eax	# block_x, tmp310
	movl	%eax, -88(%rbp)	# tmp310, i
	jmp	.L181	#
.L182:
	.loc 1 1010 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.345
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.346
	movq	(%rax), %rax	# *wbp_weight.346_137, D.12212
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12212
	movq	(%rax), %rax	# *_141, D.12213
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12213
	movq	(%rax), %rax	# *_145, D.12214
	movl	(%rax), %ecx	# *_146, D.12199
	movq	-48(%rbp), %rax	# fpred, fpred.347
	leaq	4(%rax), %rdx	#, tmp311
	movq	%rdx, -48(%rbp)	# tmp311, fpred
	movl	(%rax), %eax	# *fpred.347_148, D.12199
	imull	%eax, %ecx	# D.12199, D.12199
	.loc 1 1011 0 discriminator 2
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.348
	addq	$8, %rax	#, D.12215
	movq	(%rax), %rax	# *_153, D.12212
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12212
	movq	(%rax), %rax	# *_157, D.12213
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12213
	movq	(%rax), %rax	# *_161, D.12214
	movl	(%rax), %esi	# *_162, D.12199
	movq	-40(%rbp), %rax	# bpred, bpred.349
	leaq	4(%rax), %rdx	#, tmp312
	movq	%rdx, -40(%rbp)	# tmp312, bpred
	movl	(%rax), %eax	# *bpred.349_164, D.12199
	imull	%esi, %eax	# D.12199, D.12199
	.loc 1 1010 0 discriminator 2
	leal	(%rcx,%rax), %edx	#, D.12199
	.loc 1 1012 0 discriminator 2
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.350
	addl	%eax, %eax	# D.12199
	.loc 1 1011 0 discriminator 2
	addl	%eax, %edx	# D.12199, D.12199
	.loc 1 1012 0 discriminator 2
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.351
	addl	$1, %eax	#, D.12199
	movl	%edx, %esi	# D.12199, D.12199
	movl	%eax, %ecx	# D.12199, tmp387
	sarl	%cl, %esi	# tmp387, D.12199
	.loc 1 1013 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.352
	movq	(%rax), %rax	# *wp_offset.352_175, D.12213
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12213
	movq	(%rax), %rax	# *_179, D.12214
	movl	(%rax), %edx	# *_180, D.12199
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.353
	addq	$8, %rax	#, D.12212
	movq	(%rax), %rax	# *_183, D.12213
	movswq	-124(%rbp), %rcx	# bw_ref_idx, D.12201
	salq	$3, %rcx	#, D.12201
	addq	%rcx, %rax	# D.12201, D.12213
	movq	(%rax), %rax	# *_187, D.12214
	movl	(%rax), %eax	# *_188, D.12199
	addl	%edx, %eax	# D.12199, D.12199
	addl	$1, %eax	#, D.12199
	sarl	%eax	# D.12199
	.loc 1 1010 0 discriminator 2
	addl	%esi, %eax	# D.12199, D.12199
	movl	%eax, %edi	# D.12199,
	call	clip1a	#
	movl	-84(%rbp), %edx	# j, tmp314
	movslq	%edx, %rdx	# tmp314, tmp313
	movl	-88(%rbp), %ecx	# i, tmp316
	movslq	%ecx, %rcx	# tmp316, tmp315
	salq	$4, %rcx	#, tmp317
	addq	%rcx, %rdx	# tmp317, tmp318
	addq	$6296, %rdx	#, tmp319
	movw	%ax, 8(%rbx,%rdx,2)	# D.12216, img.345_136->mpr
	.loc 1 1009 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L181:
	.loc 1 1009 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp320
	cmpl	-80(%rbp), %eax	# block_x4, tmp320
	jl	.L182	#,
	.loc 1 1008 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L180:
	.loc 1 1008 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp321
	cmpl	-76(%rbp), %eax	# block_y4, tmp321
	jl	.L183	#,
	jmp	.L162	#
.L179:
	.loc 1 1015 0 is_stmt 1
	cmpl	$0, -108(%rbp)	#, p_dir
	jne	.L185	#,
	.loc 1 1017 0
	movl	-104(%rbp), %eax	# block_y, tmp322
	movl	%eax, -84(%rbp)	# tmp322, j
	jmp	.L186	#
.L189:
	.loc 1 1018 0
	movl	-100(%rbp), %eax	# block_x, tmp323
	movl	%eax, -88(%rbp)	# tmp323, i
	jmp	.L187	#
.L188:
	.loc 1 1019 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.354
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.355
	movq	(%rax), %rax	# *wp_weight.355_201, D.12213
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12213
	movq	(%rax), %rax	# *_205, D.12214
	movl	(%rax), %ecx	# *_206, D.12199
	movq	-48(%rbp), %rax	# fpred, fpred.356
	leaq	4(%rax), %rdx	#, tmp324
	movq	%rdx, -48(%rbp)	# tmp324, fpred
	movl	(%rax), %eax	# *fpred.356_208, D.12199
	imull	%eax, %ecx	# D.12199, D.12199
	movl	%ecx, %edx	# D.12199, D.12199
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.357
	addl	%eax, %edx	# wp_luma_round.357, D.12199
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.358
	movl	%eax, %ecx	# luma_log_weight_denom.358, tmp390
	sarl	%cl, %edx	# tmp390, D.12199
	movl	%edx, %ecx	# D.12199, D.12199
	.loc 1 1020 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.359
	movq	(%rax), %rax	# *wp_offset.359_216, D.12213
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12213
	movq	(%rax), %rax	# *_220, D.12214
	movl	(%rax), %eax	# *_221, D.12199
	.loc 1 1019 0 discriminator 2
	addl	%ecx, %eax	# D.12199, D.12199
	movl	%eax, %edi	# D.12199,
	call	clip1a	#
	movl	-84(%rbp), %edx	# j, tmp326
	movslq	%edx, %rdx	# tmp326, tmp325
	movl	-88(%rbp), %ecx	# i, tmp328
	movslq	%ecx, %rcx	# tmp328, tmp327
	salq	$4, %rcx	#, tmp329
	addq	%rcx, %rdx	# tmp329, tmp330
	addq	$6296, %rdx	#, tmp331
	movw	%ax, 8(%rbx,%rdx,2)	# D.12216, img.354_200->mpr
	.loc 1 1018 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L187:
	.loc 1 1018 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp332
	cmpl	-80(%rbp), %eax	# block_x4, tmp332
	jl	.L188	#,
	.loc 1 1017 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L186:
	.loc 1 1017 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp333
	cmpl	-76(%rbp), %eax	# block_y4, tmp333
	jl	.L189	#,
	jmp	.L162	#
.L185:
	.loc 1 1024 0 is_stmt 1
	movl	-104(%rbp), %eax	# block_y, tmp334
	movl	%eax, -84(%rbp)	# tmp334, j
	jmp	.L190	#
.L193:
	.loc 1 1025 0
	movl	-100(%rbp), %eax	# block_x, tmp335
	movl	%eax, -88(%rbp)	# tmp335, i
	jmp	.L191	#
.L192:
	.loc 1 1026 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.360
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.361
	addq	$8, %rax	#, D.12212
	movq	(%rax), %rax	# *_232, D.12213
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12213
	movq	(%rax), %rax	# *_236, D.12214
	movl	(%rax), %ecx	# *_237, D.12199
	movq	-40(%rbp), %rax	# bpred, bpred.362
	leaq	4(%rax), %rdx	#, tmp336
	movq	%rdx, -40(%rbp)	# tmp336, bpred
	movl	(%rax), %eax	# *bpred.362_239, D.12199
	imull	%eax, %ecx	# D.12199, D.12199
	movl	%ecx, %edx	# D.12199, D.12199
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.363
	addl	%eax, %edx	# wp_luma_round.363, D.12199
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.364
	movl	%eax, %ecx	# luma_log_weight_denom.364, tmp393
	sarl	%cl, %edx	# tmp393, D.12199
	movl	%edx, %ecx	# D.12199, D.12199
	.loc 1 1027 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.365
	addq	$8, %rax	#, D.12212
	movq	(%rax), %rax	# *_248, D.12213
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12201
	salq	$3, %rdx	#, D.12201
	addq	%rdx, %rax	# D.12201, D.12213
	movq	(%rax), %rax	# *_252, D.12214
	movl	(%rax), %eax	# *_253, D.12199
	.loc 1 1026 0 discriminator 2
	addl	%ecx, %eax	# D.12199, D.12199
	movl	%eax, %edi	# D.12199,
	call	clip1a	#
	movl	-84(%rbp), %edx	# j, tmp338
	movslq	%edx, %rdx	# tmp338, tmp337
	movl	-88(%rbp), %ecx	# i, tmp340
	movslq	%ecx, %rcx	# tmp340, tmp339
	salq	$4, %rcx	#, tmp341
	addq	%rcx, %rdx	# tmp341, tmp342
	addq	$6296, %rdx	#, tmp343
	movw	%ax, 8(%rbx,%rdx,2)	# D.12216, img.360_230->mpr
	.loc 1 1025 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L191:
	.loc 1 1025 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp344
	cmpl	-80(%rbp), %eax	# block_x4, tmp344
	jl	.L192	#,
	.loc 1 1024 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L190:
	.loc 1 1024 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp345
	cmpl	-76(%rbp), %eax	# block_y4, tmp345
	jl	.L193	#,
	jmp	.L162	#
.L178:
	.loc 1 1034 0 is_stmt 1
	cmpl	$2, -108(%rbp)	#, p_dir
	jne	.L194	#,
	.loc 1 1036 0
	movl	-104(%rbp), %eax	# block_y, tmp346
	movl	%eax, -84(%rbp)	# tmp346, j
	jmp	.L195	#
.L198:
	.loc 1 1037 0
	movl	-100(%rbp), %eax	# block_x, tmp347
	movl	%eax, -88(%rbp)	# tmp347, i
	jmp	.L196	#
.L197:
	.loc 1 1038 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.366
	movq	-48(%rbp), %rax	# fpred, fpred.367
	leaq	4(%rax), %rcx	#, tmp348
	movq	%rcx, -48(%rbp)	# tmp348, fpred
	movl	(%rax), %esi	# *fpred.367_263, D.12199
	movq	-40(%rbp), %rax	# bpred, bpred.368
	leaq	4(%rax), %rcx	#, tmp349
	movq	%rcx, -40(%rbp)	# tmp349, bpred
	movl	(%rax), %eax	# *bpred.368_266, D.12199
	addl	%esi, %eax	# D.12199, D.12199
	addl	$1, %eax	#, D.12199
	movl	%eax, %ecx	# D.12199, tmp350
	shrl	$31, %ecx	#, tmp350
	addl	%ecx, %eax	# tmp350, tmp351
	sarl	%eax	# tmp352
	movl	-84(%rbp), %ecx	# j, tmp354
	movslq	%ecx, %rcx	# tmp354, tmp353
	movl	-88(%rbp), %esi	# i, tmp356
	movslq	%esi, %rsi	# tmp356, tmp355
	salq	$4, %rsi	#, tmp357
	addq	%rsi, %rcx	# tmp357, tmp358
	addq	$6296, %rcx	#, tmp359
	movw	%ax, 8(%rdx,%rcx,2)	# D.12216, img.366_262->mpr
	.loc 1 1037 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L196:
	.loc 1 1037 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp360
	cmpl	-80(%rbp), %eax	# block_x4, tmp360
	jl	.L197	#,
	.loc 1 1036 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L195:
	.loc 1 1036 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp361
	cmpl	-76(%rbp), %eax	# block_y4, tmp361
	jl	.L198	#,
	jmp	.L162	#
.L194:
	.loc 1 1040 0 is_stmt 1
	cmpl	$0, -108(%rbp)	#, p_dir
	jne	.L199	#,
	.loc 1 1042 0
	movl	-104(%rbp), %eax	# block_y, tmp362
	movl	%eax, -84(%rbp)	# tmp362, j
	jmp	.L200	#
.L203:
	.loc 1 1043 0
	movl	-100(%rbp), %eax	# block_x, tmp363
	movl	%eax, -88(%rbp)	# tmp363, i
	jmp	.L201	#
.L202:
	.loc 1 1043 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.369
	movq	-48(%rbp), %rax	# fpred, fpred.370
	leaq	4(%rax), %rcx	#, tmp364
	movq	%rcx, -48(%rbp)	# tmp364, fpred
	movl	(%rax), %eax	# *fpred.370_278, D.12199
	movl	-84(%rbp), %ecx	# j, tmp366
	movslq	%ecx, %rcx	# tmp366, tmp365
	movl	-88(%rbp), %esi	# i, tmp368
	movslq	%esi, %rsi	# tmp368, tmp367
	salq	$4, %rsi	#, tmp369
	addq	%rsi, %rcx	# tmp369, tmp370
	addq	$6296, %rcx	#, tmp371
	movw	%ax, 8(%rdx,%rcx,2)	# D.12216, img.369_277->mpr
	addl	$1, -88(%rbp)	#, i
.L201:
	.loc 1 1043 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp372
	cmpl	-80(%rbp), %eax	# block_x4, tmp372
	jl	.L202	#,
	.loc 1 1042 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L200:
	.loc 1 1042 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp373
	cmpl	-76(%rbp), %eax	# block_y4, tmp373
	jl	.L203	#,
	jmp	.L162	#
.L199:
	.loc 1 1047 0 is_stmt 1
	movl	-104(%rbp), %eax	# block_y, tmp374
	movl	%eax, -84(%rbp)	# tmp374, j
	jmp	.L204	#
.L207:
	.loc 1 1048 0
	movl	-100(%rbp), %eax	# block_x, tmp375
	movl	%eax, -88(%rbp)	# tmp375, i
	jmp	.L205	#
.L206:
	.loc 1 1048 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.371
	movq	-40(%rbp), %rax	# bpred, bpred.372
	leaq	4(%rax), %rcx	#, tmp376
	movq	%rcx, -40(%rbp)	# tmp376, bpred
	movl	(%rax), %eax	# *bpred.372_287, D.12199
	movl	-84(%rbp), %ecx	# j, tmp378
	movslq	%ecx, %rcx	# tmp378, tmp377
	movl	-88(%rbp), %esi	# i, tmp380
	movslq	%esi, %rsi	# tmp380, tmp379
	salq	$4, %rsi	#, tmp381
	addq	%rsi, %rcx	# tmp381, tmp382
	addq	$6296, %rcx	#, tmp383
	movw	%ax, 8(%rdx,%rcx,2)	# D.12216, img.371_286->mpr
	addl	$1, -88(%rbp)	#, i
.L205:
	.loc 1 1048 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp384
	cmpl	-80(%rbp), %eax	# block_x4, tmp384
	jl	.L206	#,
	.loc 1 1047 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L204:
	.loc 1 1047 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp385
	cmpl	-76(%rbp), %eax	# block_y4, tmp385
	jl	.L207	#,
.L162:
	.loc 1 1051 0 is_stmt 1
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	LumaPrediction4x4, .-LumaPrediction4x4
	.globl	LumaPrediction4x4Bi
	.type	LumaPrediction4x4Bi, @function
LumaPrediction4x4Bi:
.LFB12:
	.loc 1 1068 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)	# block_x, block_x
	movl	%esi, -104(%rbp)	# block_y, block_y
	movl	%edx, -108(%rbp)	# p_dir, p_dir
	movl	%ecx, -112(%rbp)	# fw_mode, fw_mode
	movl	%r8d, -116(%rbp)	# bw_mode, bw_mode
	movl	%r9d, %edx	# fw_ref_idx, tmp259
	movl	16(%rbp), %eax	# bw_ref_idx, tmp260
	movw	%dx, -120(%rbp)	# tmp259, fw_ref_idx
	movw	%ax, -124(%rbp)	# tmp260, bw_ref_idx
	.loc 1 1073 0
	movl	-100(%rbp), %eax	# block_x, tmp264
	addl	$4, %eax	#, tmp263
	movl	%eax, -80(%rbp)	# tmp263, block_x4
	.loc 1 1074 0
	movl	-104(%rbp), %eax	# block_y, tmp268
	addl	$4, %eax	#, tmp267
	movl	%eax, -76(%rbp)	# tmp267, block_y4
	.loc 1 1075 0
	movq	img(%rip), %rax	# img, img.373
	movl	168(%rax), %edx	# img.373_37->opix_x, D.12217
	movl	-100(%rbp), %eax	# block_x, tmp272
	addl	%edx, %eax	# D.12217, tmp271
	movl	%eax, -72(%rbp)	# tmp271, pic_opix_x
	.loc 1 1076 0
	movq	img(%rip), %rax	# img, img.374
	movl	172(%rax), %edx	# img.374_40->opix_y, D.12217
	movl	-104(%rbp), %eax	# block_y, tmp276
	addl	%edx, %eax	# D.12217, tmp275
	movl	%eax, -68(%rbp)	# tmp275, pic_opix_y
	.loc 1 1077 0
	movl	-100(%rbp), %eax	# block_x, tmp280
	sarl	$2, %eax	#, tmp279
	movl	%eax, -64(%rbp)	# tmp279, bx
	.loc 1 1078 0
	movl	-104(%rbp), %eax	# block_y, tmp284
	sarl	$2, %eax	#, tmp283
	movl	%eax, -60(%rbp)	# tmp283, by
	.loc 1 1079 0
	movq	$fw_pred.4896, -48(%rbp)	#, fpred
	.loc 1 1080 0
	movq	$bw_pred.4897, -40(%rbp)	#, bpred
	.loc 1 1081 0
	movq	img(%rip), %rax	# img, img.375
	movq	14168(%rax), %rdx	# img.375_47->mb_data, D.12218
	movq	img(%rip), %rax	# img, img.376
	movl	12(%rax), %eax	# img.376_49->current_mb_nr, D.12217
	cltq
	imulq	$632, %rax, %rax	#, D.12219, D.12219
	addq	%rdx, %rax	# D.12218, tmp285
	movq	%rax, -32(%rbp)	# tmp285, currMB
	.loc 1 1084 0
	movq	active_pps(%rip), %rax	# active_pps, active_pps.378
	movl	192(%rax), %eax	# active_pps.378_54->weighted_pred_flag, D.12220
	testl	%eax, %eax	# D.12220
	je	.L209	#,
	.loc 1 1084 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.379
	movl	24(%rax), %eax	# img.379_56->type, D.12217
	testl	%eax, %eax	# D.12217
	je	.L210	#,
	.loc 1 1084 0 discriminator 2
	movq	img(%rip), %rax	# img, img.380
	movl	24(%rax), %eax	# img.380_58->type, D.12217
	cmpl	$3, %eax	#, D.12217
	je	.L210	#,
.L209:
	.loc 1 1085 0 is_stmt 1 discriminator 2
	movq	active_pps(%rip), %rax	# active_pps, active_pps.381
	movl	196(%rax), %eax	# active_pps.381_60->weighted_bipred_idc, D.12221
	.loc 1 1084 0 discriminator 2
	testl	%eax, %eax	# D.12221
	je	.L211	#,
	.loc 1 1085 0
	movq	img(%rip), %rax	# img, img.382
	movl	24(%rax), %eax	# img.382_62->type, D.12217
	cmpl	$1, %eax	#, D.12217
	jne	.L211	#,
.L210:
	.loc 1 1084 0 discriminator 1
	movl	$1, %eax	#, iftmp.377
	jmp	.L212	#
.L211:
	.loc 1 1084 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.377
.L212:
	.loc 1 1084 0 discriminator 4
	movl	%eax, -56(%rbp)	# iftmp.377, apply_weights
	.loc 1 1087 0 is_stmt 1 discriminator 4
	movq	img(%rip), %rax	# img, img.384
	movl	72400(%rax), %eax	# img.384_67->MbaffFrameFlag, D.12217
	testl	%eax, %eax	# D.12217
	je	.L213	#,
	.loc 1 1087 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# currMB, tmp286
	movl	532(%rax), %eax	# currMB_53->mb_field, D.12217
	testl	%eax, %eax	# D.12217
	je	.L213	#,
	movq	img(%rip), %rax	# img, img.386
	movl	12(%rax), %eax	# img.386_70->current_mb_nr, D.12217
	andl	$1, %eax	#, D.12222
	testl	%eax, %eax	# D.12222
	je	.L214	#,
	movl	$4, %eax	#, iftmp.385
	jmp	.L215	#
.L214:
	.loc 1 1087 0 discriminator 2
	movl	$2, %eax	#, iftmp.385
.L215:
	.loc 1 1087 0 discriminator 3
	jmp	.L216	#
.L213:
	.loc 1 1087 0 discriminator 2
	movl	$0, %eax	#, iftmp.383
.L216:
	.loc 1 1087 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.383, list_offset
	.loc 1 1089 0 is_stmt 1 discriminator 3
	cmpl	$0, 24(%rbp)	#, list
	je	.L217	#,
	.loc 1 1089 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.388
	movq	71936(%rax), %rax	# img.388_80->bipred_mv1, iftmp.387
	jmp	.L218	#
.L217:
	.loc 1 1089 0 discriminator 2
	movq	img(%rip), %rax	# img, img.389
	movq	71944(%rax), %rax	# img.389_82->bipred_mv2, iftmp.387
.L218:
	.loc 1 1089 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.387, bipred_mv
	.loc 1 1091 0 is_stmt 1 discriminator 3
	cmpl	$0, -108(%rbp)	#, p_dir
	je	.L219	#,
	.loc 1 1091 0 is_stmt 0 discriminator 1
	cmpl	$2, -108(%rbp)	#, p_dir
	jne	.L220	#,
.L219:
	.loc 1 1094 0 is_stmt 1
	movl	-52(%rbp), %eax	# list_offset, tmp288
	cltq
	movq	listX(,%rax,8), %rdi	# listX, D.12223
	movswl	-120(%rbp), %esi	# fw_ref_idx, D.12217
	movl	-64(%rbp), %eax	# bx, tmp289
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12219
	movq	-24(%rbp), %rax	# bipred_mv, tmp290
	addq	%rdx, %rax	# D.12219, D.12224
	movq	(%rax), %rax	# *_91, D.12225
	movl	-60(%rbp), %edx	# by, tmp291
	movslq	%edx, %rdx	# tmp291, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12225
	movq	(%rax), %rax	# *_95, D.12226
	movq	(%rax), %rax	# *_96, D.12227
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12227
	movq	(%rax), %rax	# *_100, D.12228
	movl	-112(%rbp), %edx	# fw_mode, tmp292
	movslq	%edx, %rdx	# tmp292, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12228
	movq	(%rax), %rcx	# *_105, D.12229
	movl	-68(%rbp), %edx	# pic_opix_y, tmp293
	movl	-72(%rbp), %eax	# pic_opix_x, tmp294
	movq	%rdi, %r9	# D.12223,
	movl	%esi, %r8d	# D.12217,
	movl	%eax, %esi	# tmp294,
	movl	$fw_pred.4896, %edi	#,
	call	OneComponentLumaPrediction4x4	#
.L220:
	.loc 1 1097 0
	cmpl	$1, -108(%rbp)	#, p_dir
	je	.L221	#,
	.loc 1 1097 0 is_stmt 0 discriminator 1
	cmpl	$2, -108(%rbp)	#, p_dir
	jne	.L222	#,
.L221:
	.loc 1 1099 0 is_stmt 1
	movl	-52(%rbp), %eax	# list_offset, tmp295
	addl	$1, %eax	#, D.12217
	cltq
	movq	listX(,%rax,8), %rdi	# listX, D.12223
	movswl	-124(%rbp), %esi	# bw_ref_idx, D.12217
	movl	-64(%rbp), %eax	# bx, tmp297
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12219
	movq	-24(%rbp), %rax	# bipred_mv, tmp298
	addq	%rdx, %rax	# D.12219, D.12224
	movq	(%rax), %rax	# *_113, D.12225
	movl	-60(%rbp), %edx	# by, tmp299
	movslq	%edx, %rdx	# tmp299, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12225
	movq	(%rax), %rax	# *_117, D.12226
	addq	$8, %rax	#, D.12226
	movq	(%rax), %rax	# *_119, D.12227
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12227
	movq	(%rax), %rax	# *_123, D.12228
	movl	-116(%rbp), %edx	# bw_mode, tmp300
	movslq	%edx, %rdx	# tmp300, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12228
	movq	(%rax), %rcx	# *_128, D.12229
	movl	-68(%rbp), %edx	# pic_opix_y, tmp301
	movl	-72(%rbp), %eax	# pic_opix_x, tmp302
	movq	%rdi, %r9	# D.12223,
	movl	%esi, %r8d	# D.12217,
	movl	%eax, %esi	# tmp302,
	movl	$bw_pred.4897, %edi	#,
	call	OneComponentLumaPrediction4x4	#
.L222:
	.loc 1 1102 0
	cmpl	$0, -56(%rbp)	#, apply_weights
	je	.L223	#,
	.loc 1 1104 0
	cmpl	$2, -108(%rbp)	#, p_dir
	jne	.L224	#,
	.loc 1 1106 0
	movl	-104(%rbp), %eax	# block_y, tmp303
	movl	%eax, -84(%rbp)	# tmp303, j
	jmp	.L225	#
.L228:
	.loc 1 1107 0
	movl	-100(%rbp), %eax	# block_x, tmp304
	movl	%eax, -88(%rbp)	# tmp304, i
	jmp	.L226	#
.L227:
	.loc 1 1108 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.390
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.391
	movq	(%rax), %rax	# *wbp_weight.391_133, D.12230
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12230
	movq	(%rax), %rax	# *_137, D.12231
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12231
	movq	(%rax), %rax	# *_141, D.12232
	movl	(%rax), %ecx	# *_142, D.12217
	movq	-48(%rbp), %rax	# fpred, fpred.392
	leaq	4(%rax), %rdx	#, tmp305
	movq	%rdx, -48(%rbp)	# tmp305, fpred
	movl	(%rax), %eax	# *fpred.392_144, D.12217
	imull	%eax, %ecx	# D.12217, D.12217
	.loc 1 1109 0 discriminator 2
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.393
	addq	$8, %rax	#, D.12233
	movq	(%rax), %rax	# *_149, D.12230
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12230
	movq	(%rax), %rax	# *_153, D.12231
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12231
	movq	(%rax), %rax	# *_157, D.12232
	movl	(%rax), %esi	# *_158, D.12217
	movq	-40(%rbp), %rax	# bpred, bpred.394
	leaq	4(%rax), %rdx	#, tmp306
	movq	%rdx, -40(%rbp)	# tmp306, bpred
	movl	(%rax), %eax	# *bpred.394_160, D.12217
	imull	%esi, %eax	# D.12217, D.12217
	.loc 1 1108 0 discriminator 2
	leal	(%rcx,%rax), %edx	#, D.12217
	.loc 1 1110 0 discriminator 2
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.395
	addl	%eax, %eax	# D.12217
	.loc 1 1109 0 discriminator 2
	addl	%eax, %edx	# D.12217, D.12217
	.loc 1 1110 0 discriminator 2
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.396
	addl	$1, %eax	#, D.12217
	movl	%edx, %esi	# D.12217, D.12217
	movl	%eax, %ecx	# D.12217, tmp381
	sarl	%cl, %esi	# tmp381, D.12217
	.loc 1 1111 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.397
	movq	(%rax), %rax	# *wp_offset.397_171, D.12231
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12231
	movq	(%rax), %rax	# *_175, D.12232
	movl	(%rax), %edx	# *_176, D.12217
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.398
	addq	$8, %rax	#, D.12230
	movq	(%rax), %rax	# *_179, D.12231
	movswq	-124(%rbp), %rcx	# bw_ref_idx, D.12219
	salq	$3, %rcx	#, D.12219
	addq	%rcx, %rax	# D.12219, D.12231
	movq	(%rax), %rax	# *_183, D.12232
	movl	(%rax), %eax	# *_184, D.12217
	addl	%edx, %eax	# D.12217, D.12217
	addl	$1, %eax	#, D.12217
	sarl	%eax	# D.12217
	.loc 1 1108 0 discriminator 2
	addl	%esi, %eax	# D.12217, D.12217
	movl	%eax, %edi	# D.12217,
	call	clip1a	#
	movl	-84(%rbp), %edx	# j, tmp308
	movslq	%edx, %rdx	# tmp308, tmp307
	movl	-88(%rbp), %ecx	# i, tmp310
	movslq	%ecx, %rcx	# tmp310, tmp309
	salq	$4, %rcx	#, tmp311
	addq	%rcx, %rdx	# tmp311, tmp312
	addq	$6296, %rdx	#, tmp313
	movw	%ax, 8(%rbx,%rdx,2)	# D.12234, img.390_132->mpr
	.loc 1 1107 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L226:
	.loc 1 1107 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp314
	cmpl	-80(%rbp), %eax	# block_x4, tmp314
	jl	.L227	#,
	.loc 1 1106 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L225:
	.loc 1 1106 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp315
	cmpl	-76(%rbp), %eax	# block_y4, tmp315
	jl	.L228	#,
	jmp	.L208	#
.L224:
	.loc 1 1113 0 is_stmt 1
	cmpl	$0, -108(%rbp)	#, p_dir
	jne	.L230	#,
	.loc 1 1115 0
	movl	-104(%rbp), %eax	# block_y, tmp316
	movl	%eax, -84(%rbp)	# tmp316, j
	jmp	.L231	#
.L234:
	.loc 1 1116 0
	movl	-100(%rbp), %eax	# block_x, tmp317
	movl	%eax, -88(%rbp)	# tmp317, i
	jmp	.L232	#
.L233:
	.loc 1 1117 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.399
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.400
	movq	(%rax), %rax	# *wp_weight.400_197, D.12231
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12231
	movq	(%rax), %rax	# *_201, D.12232
	movl	(%rax), %ecx	# *_202, D.12217
	movq	-48(%rbp), %rax	# fpred, fpred.401
	leaq	4(%rax), %rdx	#, tmp318
	movq	%rdx, -48(%rbp)	# tmp318, fpred
	movl	(%rax), %eax	# *fpred.401_204, D.12217
	imull	%eax, %ecx	# D.12217, D.12217
	movl	%ecx, %edx	# D.12217, D.12217
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.402
	addl	%eax, %edx	# wp_luma_round.402, D.12217
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.403
	movl	%eax, %ecx	# luma_log_weight_denom.403, tmp384
	sarl	%cl, %edx	# tmp384, D.12217
	movl	%edx, %ecx	# D.12217, D.12217
	.loc 1 1118 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.404
	movq	(%rax), %rax	# *wp_offset.404_212, D.12231
	movswq	-120(%rbp), %rdx	# fw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12231
	movq	(%rax), %rax	# *_216, D.12232
	movl	(%rax), %eax	# *_217, D.12217
	.loc 1 1117 0 discriminator 2
	addl	%ecx, %eax	# D.12217, D.12217
	movl	%eax, %edi	# D.12217,
	call	clip1a	#
	movl	-84(%rbp), %edx	# j, tmp320
	movslq	%edx, %rdx	# tmp320, tmp319
	movl	-88(%rbp), %ecx	# i, tmp322
	movslq	%ecx, %rcx	# tmp322, tmp321
	salq	$4, %rcx	#, tmp323
	addq	%rcx, %rdx	# tmp323, tmp324
	addq	$6296, %rdx	#, tmp325
	movw	%ax, 8(%rbx,%rdx,2)	# D.12234, img.399_196->mpr
	.loc 1 1116 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L232:
	.loc 1 1116 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp326
	cmpl	-80(%rbp), %eax	# block_x4, tmp326
	jl	.L233	#,
	.loc 1 1115 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L231:
	.loc 1 1115 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp327
	cmpl	-76(%rbp), %eax	# block_y4, tmp327
	jl	.L234	#,
	jmp	.L208	#
.L230:
	.loc 1 1122 0 is_stmt 1
	movl	-104(%rbp), %eax	# block_y, tmp328
	movl	%eax, -84(%rbp)	# tmp328, j
	jmp	.L235	#
.L238:
	.loc 1 1123 0
	movl	-100(%rbp), %eax	# block_x, tmp329
	movl	%eax, -88(%rbp)	# tmp329, i
	jmp	.L236	#
.L237:
	.loc 1 1124 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.405
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.406
	addq	$8, %rax	#, D.12230
	movq	(%rax), %rax	# *_228, D.12231
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12231
	movq	(%rax), %rax	# *_232, D.12232
	movl	(%rax), %ecx	# *_233, D.12217
	movq	-40(%rbp), %rax	# bpred, bpred.407
	leaq	4(%rax), %rdx	#, tmp330
	movq	%rdx, -40(%rbp)	# tmp330, bpred
	movl	(%rax), %eax	# *bpred.407_235, D.12217
	imull	%eax, %ecx	# D.12217, D.12217
	movl	%ecx, %edx	# D.12217, D.12217
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.408
	addl	%eax, %edx	# wp_luma_round.408, D.12217
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.409
	movl	%eax, %ecx	# luma_log_weight_denom.409, tmp387
	sarl	%cl, %edx	# tmp387, D.12217
	movl	%edx, %ecx	# D.12217, D.12217
	.loc 1 1125 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.410
	addq	$8, %rax	#, D.12230
	movq	(%rax), %rax	# *_244, D.12231
	movswq	-124(%rbp), %rdx	# bw_ref_idx, D.12219
	salq	$3, %rdx	#, D.12219
	addq	%rdx, %rax	# D.12219, D.12231
	movq	(%rax), %rax	# *_248, D.12232
	movl	(%rax), %eax	# *_249, D.12217
	.loc 1 1124 0 discriminator 2
	addl	%ecx, %eax	# D.12217, D.12217
	movl	%eax, %edi	# D.12217,
	call	clip1a	#
	movl	-84(%rbp), %edx	# j, tmp332
	movslq	%edx, %rdx	# tmp332, tmp331
	movl	-88(%rbp), %ecx	# i, tmp334
	movslq	%ecx, %rcx	# tmp334, tmp333
	salq	$4, %rcx	#, tmp335
	addq	%rcx, %rdx	# tmp335, tmp336
	addq	$6296, %rdx	#, tmp337
	movw	%ax, 8(%rbx,%rdx,2)	# D.12234, img.405_226->mpr
	.loc 1 1123 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L236:
	.loc 1 1123 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp338
	cmpl	-80(%rbp), %eax	# block_x4, tmp338
	jl	.L237	#,
	.loc 1 1122 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L235:
	.loc 1 1122 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp339
	cmpl	-76(%rbp), %eax	# block_y4, tmp339
	jl	.L238	#,
	jmp	.L208	#
.L223:
	.loc 1 1130 0 is_stmt 1
	cmpl	$2, -108(%rbp)	#, p_dir
	jne	.L239	#,
	.loc 1 1132 0
	movl	-104(%rbp), %eax	# block_y, tmp340
	movl	%eax, -84(%rbp)	# tmp340, j
	jmp	.L240	#
.L243:
	.loc 1 1133 0
	movl	-100(%rbp), %eax	# block_x, tmp341
	movl	%eax, -88(%rbp)	# tmp341, i
	jmp	.L241	#
.L242:
	.loc 1 1134 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.411
	movq	-48(%rbp), %rax	# fpred, fpred.412
	leaq	4(%rax), %rcx	#, tmp342
	movq	%rcx, -48(%rbp)	# tmp342, fpred
	movl	(%rax), %esi	# *fpred.412_259, D.12217
	movq	-40(%rbp), %rax	# bpred, bpred.413
	leaq	4(%rax), %rcx	#, tmp343
	movq	%rcx, -40(%rbp)	# tmp343, bpred
	movl	(%rax), %eax	# *bpred.413_262, D.12217
	addl	%esi, %eax	# D.12217, D.12217
	addl	$1, %eax	#, D.12217
	movl	%eax, %ecx	# D.12217, tmp344
	shrl	$31, %ecx	#, tmp344
	addl	%ecx, %eax	# tmp344, tmp345
	sarl	%eax	# tmp346
	movl	-84(%rbp), %ecx	# j, tmp348
	movslq	%ecx, %rcx	# tmp348, tmp347
	movl	-88(%rbp), %esi	# i, tmp350
	movslq	%esi, %rsi	# tmp350, tmp349
	salq	$4, %rsi	#, tmp351
	addq	%rsi, %rcx	# tmp351, tmp352
	addq	$6296, %rcx	#, tmp353
	movw	%ax, 8(%rdx,%rcx,2)	# D.12234, img.411_258->mpr
	.loc 1 1133 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L241:
	.loc 1 1133 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp354
	cmpl	-80(%rbp), %eax	# block_x4, tmp354
	jl	.L242	#,
	.loc 1 1132 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L240:
	.loc 1 1132 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp355
	cmpl	-76(%rbp), %eax	# block_y4, tmp355
	jl	.L243	#,
	jmp	.L208	#
.L239:
	.loc 1 1136 0 is_stmt 1
	cmpl	$0, -108(%rbp)	#, p_dir
	jne	.L244	#,
	.loc 1 1138 0
	movl	-104(%rbp), %eax	# block_y, tmp356
	movl	%eax, -84(%rbp)	# tmp356, j
	jmp	.L245	#
.L248:
	.loc 1 1139 0
	movl	-100(%rbp), %eax	# block_x, tmp357
	movl	%eax, -88(%rbp)	# tmp357, i
	jmp	.L246	#
.L247:
	.loc 1 1139 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.414
	movq	-48(%rbp), %rax	# fpred, fpred.415
	leaq	4(%rax), %rcx	#, tmp358
	movq	%rcx, -48(%rbp)	# tmp358, fpred
	movl	(%rax), %eax	# *fpred.415_274, D.12217
	movl	-84(%rbp), %ecx	# j, tmp360
	movslq	%ecx, %rcx	# tmp360, tmp359
	movl	-88(%rbp), %esi	# i, tmp362
	movslq	%esi, %rsi	# tmp362, tmp361
	salq	$4, %rsi	#, tmp363
	addq	%rsi, %rcx	# tmp363, tmp364
	addq	$6296, %rcx	#, tmp365
	movw	%ax, 8(%rdx,%rcx,2)	# D.12234, img.414_273->mpr
	addl	$1, -88(%rbp)	#, i
.L246:
	.loc 1 1139 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp366
	cmpl	-80(%rbp), %eax	# block_x4, tmp366
	jl	.L247	#,
	.loc 1 1138 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L245:
	.loc 1 1138 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp367
	cmpl	-76(%rbp), %eax	# block_y4, tmp367
	jl	.L248	#,
	jmp	.L208	#
.L244:
	.loc 1 1143 0 is_stmt 1
	movl	-104(%rbp), %eax	# block_y, tmp368
	movl	%eax, -84(%rbp)	# tmp368, j
	jmp	.L249	#
.L252:
	.loc 1 1144 0
	movl	-100(%rbp), %eax	# block_x, tmp369
	movl	%eax, -88(%rbp)	# tmp369, i
	jmp	.L250	#
.L251:
	.loc 1 1144 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.416
	movq	-40(%rbp), %rax	# bpred, bpred.417
	leaq	4(%rax), %rcx	#, tmp370
	movq	%rcx, -40(%rbp)	# tmp370, bpred
	movl	(%rax), %eax	# *bpred.417_283, D.12217
	movl	-84(%rbp), %ecx	# j, tmp372
	movslq	%ecx, %rcx	# tmp372, tmp371
	movl	-88(%rbp), %esi	# i, tmp374
	movslq	%esi, %rsi	# tmp374, tmp373
	salq	$4, %rsi	#, tmp375
	addq	%rsi, %rcx	# tmp375, tmp376
	addq	$6296, %rcx	#, tmp377
	movw	%ax, 8(%rdx,%rcx,2)	# D.12234, img.416_282->mpr
	addl	$1, -88(%rbp)	#, i
.L250:
	.loc 1 1144 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp378
	cmpl	-80(%rbp), %eax	# block_x4, tmp378
	jl	.L251	#,
	.loc 1 1143 0 is_stmt 1
	addl	$1, -84(%rbp)	#, j
.L249:
	.loc 1 1143 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# j, tmp379
	cmpl	-76(%rbp), %eax	# block_y4, tmp379
	jl	.L252	#,
.L208:
	.loc 1 1147 0 is_stmt 1
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	LumaPrediction4x4Bi, .-LumaPrediction4x4Bi
	.globl	LumaResidualCoding8x8
	.type	LumaResidualCoding8x8, @function
LumaResidualCoding8x8:
.LFB13:
	.loc 1 1167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -104(%rbp)	# cbp, cbp
	movq	%rsi, -112(%rbp)	# cbp_blk, cbp_blk
	movl	%edx, -116(%rbp)	# block8x8, block8x8
	movl	%ecx, %eax	# p_dir, tmp323
	movl	%r8d, -124(%rbp)	# fw_mode, fw_mode
	movl	%r9d, -128(%rbp)	# bw_mode, bw_mode
	movl	16(%rbp), %ecx	# fw_refframe, tmp324
	movl	24(%rbp), %edx	# bw_refframe, tmp325
	movw	%ax, -120(%rbp)	# tmp323, p_dir
	movw	%cx, -132(%rbp)	# tmp324, fw_refframe
	movw	%dx, -136(%rbp)	# tmp325, bw_refframe
	.loc 1 1168 0
	movl	$0, -72(%rbp)	#, nonzero
	.loc 1 1169 0
	movl	$0, -92(%rbp)	#, coeff_cost
	.loc 1 1170 0
	movl	-116(%rbp), %eax	# block8x8, tmp326
	movl	%eax, %edx	# tmp326, tmp327
	shrl	$31, %edx	#, tmp327
	addl	%edx, %eax	# tmp327, tmp328
	sarl	%eax	# tmp329
	sall	$3, %eax	#, tmp330
	movl	%eax, -60(%rbp)	# tmp330, mb_y
	.loc 1 1171 0
	movl	-116(%rbp), %eax	# block8x8, tmp331
	cltd
	shrl	$31, %edx	#, tmp333
	addl	%edx, %eax	# tmp333, tmp334
	andl	$1, %eax	#, tmp335
	subl	%edx, %eax	# tmp333, tmp336
	sall	$3, %eax	#, tmp337
	movl	%eax, -56(%rbp)	# tmp337, mb_x
	.loc 1 1172 0
	movl	-116(%rbp), %eax	# block8x8, tmp338
	movl	$1, %edx	#, tmp339
	movl	%eax, %ecx	# tmp338, tmp704
	sall	%cl, %edx	# tmp704, tmp340
	movl	%edx, %eax	# tmp340, tmp340
	movl	%eax, -52(%rbp)	# tmp340, cbp_mask
	.loc 1 1174 0
	movl	$0, -48(%rbp)	#, scrFlag
	.loc 1 1175 0
	cmpl	$0, -124(%rbp)	#, fw_mode
	jne	.L254	#,
	.loc 1 1175 0 is_stmt 0 discriminator 1
	cmpl	$0, -128(%rbp)	#, bw_mode
	jne	.L254	#,
	movq	img(%rip), %rax	# img, img.419
	movl	24(%rax), %eax	# img.419_43->type, D.12235
	cmpl	$1, %eax	#, D.12235
	je	.L254	#,
	.loc 1 1175 0 discriminator 3
	movl	$1, %eax	#, iftmp.418
	jmp	.L255	#
.L254:
	.loc 1 1175 0 discriminator 2
	movl	$0, %eax	#, iftmp.418
.L255:
	.loc 1 1175 0 discriminator 4
	movl	%eax, -44(%rbp)	# iftmp.418, skipped
	.loc 1 1176 0 is_stmt 1 discriminator 4
	movq	img(%rip), %rax	# img, img.420
	movq	14168(%rax), %rdx	# img.420_48->mb_data, D.12236
	movq	img(%rip), %rax	# img, img.421
	movl	12(%rax), %eax	# img.421_50->current_mb_nr, D.12235
	cltq
	imulq	$632, %rax, %rax	#, D.12237, D.12237
	addq	%rdx, %rax	# D.12236, tmp341
	movq	%rax, -8(%rbp)	# tmp341, currMB
	.loc 1 1178 0 discriminator 4
	movq	-8(%rbp), %rax	# currMB, tmp342
	movl	572(%rax), %eax	# currMB_54->luma_transform_size_8x8_flag, tmp343
	movl	%eax, -40(%rbp)	# tmp343, need_8x8_transform
	.loc 1 1182 0 discriminator 4
	movq	img(%rip), %rax	# img, img.422
	movl	24(%rax), %eax	# img.422_56->type, D.12235
	cmpl	$1, %eax	#, D.12235
	jne	.L256	#,
	.loc 1 1183 0
	movl	$1, -48(%rbp)	#, scrFlag
.L256:
	.loc 1 1186 0
	movl	$0, -64(%rbp)	#, byy
	movl	-60(%rbp), %eax	# mb_y, tmp344
	movl	%eax, -88(%rbp)	# tmp344, block_y
	jmp	.L257	#
.L300:
	.loc 1 1188 0
	movq	img(%rip), %rax	# img, img.423
	movl	172(%rax), %edx	# img.423_62->opix_y, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp348
	addl	%edx, %eax	# D.12235, tmp347
	movl	%eax, -36(%rbp)	# tmp347, pic_pix_y
	.loc 1 1190 0
	movl	$0, -68(%rbp)	#, bxx
	movl	-56(%rbp), %eax	# mb_x, tmp349
	movl	%eax, -84(%rbp)	# tmp349, block_x
	jmp	.L258	#
.L299:
	.loc 1 1192 0
	movq	img(%rip), %rax	# img, img.424
	movl	168(%rax), %edx	# img.424_68->opix_x, D.12235
	movl	-84(%rbp), %eax	# block_x, tmp353
	addl	%edx, %eax	# D.12235, tmp352
	movl	%eax, -32(%rbp)	# tmp352, pic_pix_x
	.loc 1 1194 0
	movl	-84(%rbp), %eax	# block_x, tmp354
	sarl	$2, %eax	#, D.12235
	movl	%eax, %edx	# D.12235, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp358
	addl	%edx, %eax	# D.12235, tmp357
	movl	%eax, -28(%rbp)	# tmp357, cbp_blk_mask
	.loc 1 1197 0
	movq	img(%rip), %rax	# img, img.425
	movl	72724(%rax), %eax	# img.425_73->residue_transform_flag, D.12235
	testl	%eax, %eax	# D.12235
	je	.L259	#,
	.loc 1 1199 0
	movswl	-136(%rbp), %edi	# bw_refframe, D.12235
	movswl	-132(%rbp), %esi	# fw_refframe, D.12235
	movswl	-120(%rbp), %ecx	# p_dir, D.12235
	movl	-128(%rbp), %r9d	# bw_mode, tmp359
	movl	-124(%rbp), %r8d	# fw_mode, tmp360
	movl	-88(%rbp), %edx	# block_y, tmp361
	movl	-84(%rbp), %eax	# block_x, tmp362
	movl	%edi, 8(%rsp)	# D.12235,
	movl	%esi, (%rsp)	# D.12235,
	movl	%eax, %esi	# tmp362,
	movl	$0, %edi	#,
	call	ChromaPrediction4x4	#
	.loc 1 1200 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L260	#
.L263:
	.loc 1 1201 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L261	#
.L262:
	.loc 1 1202 0 discriminator 2
	movl	-84(%rbp), %eax	# block_x, tmp363
	movl	-80(%rbp), %edx	# i, tmp364
	leal	(%rdx,%rax), %esi	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp365
	movl	-76(%rbp), %edx	# j, tmp366
	leal	(%rdx,%rax), %edi	#, D.12235
	movq	img(%rip), %rax	# img, img.426
	movl	-84(%rbp), %edx	# block_x, tmp367
	movl	-80(%rbp), %ecx	# i, tmp368
	leal	(%rcx,%rdx), %r8d	#, D.12235
	movl	-88(%rbp), %edx	# block_y, tmp369
	movl	-76(%rbp), %ecx	# j, tmp370
	addl	%ecx, %edx	# tmp370, D.12235
	movslq	%edx, %rdx	# D.12235, tmp371
	movslq	%r8d, %rcx	# D.12235, tmp372
	salq	$4, %rcx	#, tmp373
	addq	%rcx, %rdx	# tmp373, tmp374
	addq	$6296, %rdx	#, tmp375
	movzwl	8(%rax,%rdx,2), %eax	# img.426_85->mpr, D.12238
	movzwl	%ax, %eax	# D.12238, D.12235
	movslq	%edi, %rdx	# D.12235, tmp376
	movslq	%esi, %rcx	# D.12235, tmp377
	salq	$4, %rcx	#, tmp378
	addq	%rcx, %rdx	# tmp378, tmp379
	addq	$256, %rdx	#, tmp380
	movl	%eax, mprRGB(,%rdx,4)	# D.12235, mprRGB
	.loc 1 1201 0 discriminator 2
	addl	$1, -80(%rbp)	#, i
.L261:
	.loc 1 1201 0 is_stmt 0 discriminator 1
	cmpl	$3, -80(%rbp)	#, i
	jle	.L262	#,
	.loc 1 1200 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
.L260:
	.loc 1 1200 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, j
	jle	.L263	#,
	.loc 1 1204 0 is_stmt 1
	movswl	-136(%rbp), %edi	# bw_refframe, D.12235
	movswl	-132(%rbp), %esi	# fw_refframe, D.12235
	movswl	-120(%rbp), %ecx	# p_dir, D.12235
	movl	-128(%rbp), %r9d	# bw_mode, tmp381
	movl	-124(%rbp), %r8d	# fw_mode, tmp382
	movl	-88(%rbp), %edx	# block_y, tmp383
	movl	-84(%rbp), %eax	# block_x, tmp384
	movl	%edi, 8(%rsp)	# D.12235,
	movl	%esi, (%rsp)	# D.12235,
	movl	%eax, %esi	# tmp384,
	movl	$1, %edi	#,
	call	ChromaPrediction4x4	#
	.loc 1 1205 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L264	#
.L267:
	.loc 1 1206 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L265	#
.L266:
	.loc 1 1207 0 discriminator 2
	movl	-84(%rbp), %eax	# block_x, tmp385
	movl	-80(%rbp), %edx	# i, tmp386
	leal	(%rdx,%rax), %esi	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp387
	movl	-76(%rbp), %edx	# j, tmp388
	leal	(%rdx,%rax), %edi	#, D.12235
	movq	img(%rip), %rax	# img, img.427
	movl	-84(%rbp), %edx	# block_x, tmp389
	movl	-80(%rbp), %ecx	# i, tmp390
	leal	(%rcx,%rdx), %r8d	#, D.12235
	movl	-88(%rbp), %edx	# block_y, tmp391
	movl	-76(%rbp), %ecx	# j, tmp392
	addl	%ecx, %edx	# tmp392, D.12235
	movslq	%edx, %rdx	# D.12235, tmp393
	movslq	%r8d, %rcx	# D.12235, tmp394
	salq	$4, %rcx	#, tmp395
	addq	%rcx, %rdx	# tmp395, tmp396
	addq	$6296, %rdx	#, tmp397
	movzwl	8(%rax,%rdx,2), %eax	# img.427_99->mpr, D.12238
	movzwl	%ax, %eax	# D.12238, D.12235
	movslq	%edi, %rdx	# D.12235, tmp398
	movslq	%esi, %rcx	# D.12235, tmp399
	salq	$4, %rcx	#, tmp400
	addq	%rcx, %rdx	# tmp400, tmp401
	addq	$512, %rdx	#, tmp402
	movl	%eax, mprRGB(,%rdx,4)	# D.12235, mprRGB
	.loc 1 1206 0 discriminator 2
	addl	$1, -80(%rbp)	#, i
.L265:
	.loc 1 1206 0 is_stmt 0 discriminator 1
	cmpl	$3, -80(%rbp)	#, i
	jle	.L266	#,
	.loc 1 1205 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
.L264:
	.loc 1 1205 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, j
	jle	.L267	#,
.L259:
	.loc 1 1211 0 is_stmt 1
	movswl	-136(%rbp), %edi	# bw_refframe, D.12235
	movswl	-132(%rbp), %r9d	# fw_refframe, D.12235
	movswl	-120(%rbp), %edx	# p_dir, D.12235
	movl	-128(%rbp), %r8d	# bw_mode, tmp403
	movl	-124(%rbp), %ecx	# fw_mode, tmp404
	movl	-88(%rbp), %esi	# block_y, tmp405
	movl	-84(%rbp), %eax	# block_x, tmp406
	movl	%edi, (%rsp)	# D.12235,
	movl	%eax, %edi	# tmp406,
	call	LumaPrediction4x4	#
	.loc 1 1214 0
	movq	img(%rip), %rax	# img, img.428
	movl	72724(%rax), %eax	# img.428_109->residue_transform_flag, D.12235
	testl	%eax, %eax	# D.12235
	je	.L268	#,
	.loc 1 1215 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L269	#
.L272:
	.loc 1 1216 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L270	#
.L271:
	.loc 1 1217 0 discriminator 2
	movl	-84(%rbp), %eax	# block_x, tmp407
	movl	-80(%rbp), %edx	# i, tmp408
	leal	(%rdx,%rax), %esi	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp409
	movl	-76(%rbp), %edx	# j, tmp410
	leal	(%rdx,%rax), %edi	#, D.12235
	movq	img(%rip), %rax	# img, img.429
	movl	-84(%rbp), %edx	# block_x, tmp411
	movl	-80(%rbp), %ecx	# i, tmp412
	leal	(%rcx,%rdx), %r8d	#, D.12235
	movl	-88(%rbp), %edx	# block_y, tmp413
	movl	-76(%rbp), %ecx	# j, tmp414
	addl	%ecx, %edx	# tmp414, D.12235
	movslq	%edx, %rdx	# D.12235, tmp415
	movslq	%r8d, %rcx	# D.12235, tmp416
	salq	$4, %rcx	#, tmp417
	addq	%rcx, %rdx	# tmp417, tmp418
	addq	$6296, %rdx	#, tmp419
	movzwl	8(%rax,%rdx,2), %eax	# img.429_115->mpr, D.12238
	movzwl	%ax, %eax	# D.12238, D.12235
	movslq	%edi, %rdx	# D.12235, tmp420
	movslq	%esi, %rcx	# D.12235, tmp421
	salq	$4, %rcx	#, tmp422
	addq	%rcx, %rdx	# tmp422, tmp423
	movl	%eax, mprRGB(,%rdx,4)	# D.12235, mprRGB
	.loc 1 1216 0 discriminator 2
	addl	$1, -80(%rbp)	#, i
.L270:
	.loc 1 1216 0 is_stmt 0 discriminator 1
	cmpl	$3, -80(%rbp)	#, i
	jle	.L271	#,
	.loc 1 1215 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
.L269:
	.loc 1 1215 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, j
	jle	.L272	#,
.L268:
	.loc 1 1220 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.430
	movl	72724(%rax), %eax	# img.430_122->residue_transform_flag, D.12235
	testl	%eax, %eax	# D.12235
	jne	.L273	#,
	.loc 1 1222 0
	cmpl	$0, -40(%rbp)	#, need_8x8_transform
	jne	.L274	#,
	.loc 1 1226 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L275	#
.L278:
	.loc 1 1227 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L276	#
.L277:
	.loc 1 1229 0 discriminator 2
	movq	img(%rip), %rax	# img, img.431
	movq	imgY_org(%rip), %rdx	# imgY_org, imgY_org.432
	movl	-76(%rbp), %ecx	# j, tmp424
	movl	-36(%rbp), %esi	# pic_pix_y, tmp425
	addl	%esi, %ecx	# tmp425, D.12235
	movslq	%ecx, %rcx	# D.12235, D.12237
	salq	$3, %rcx	#, D.12237
	addq	%rcx, %rdx	# D.12237, D.12239
	movq	(%rdx), %rdx	# *_131, D.12240
	movl	-80(%rbp), %ecx	# i, tmp426
	movl	-32(%rbp), %esi	# pic_pix_x, tmp427
	addl	%esi, %ecx	# tmp427, D.12235
	movslq	%ecx, %rcx	# D.12235, D.12237
	addq	%rcx, %rcx	# D.12237
	addq	%rcx, %rdx	# D.12237, D.12240
	movzwl	(%rdx), %edx	# *_136, D.12238
	movzwl	%dx, %ecx	# D.12238, D.12235
	movq	img(%rip), %rdx	# img, img.433
	movl	-84(%rbp), %esi	# block_x, tmp428
	movl	-80(%rbp), %edi	# i, tmp429
	leal	(%rdi,%rsi), %r8d	#, D.12235
	movl	-88(%rbp), %esi	# block_y, tmp430
	movl	-76(%rbp), %edi	# j, tmp431
	addl	%edi, %esi	# tmp431, D.12235
	movslq	%esi, %rsi	# D.12235, tmp432
	movslq	%r8d, %rdi	# D.12235, tmp433
	salq	$4, %rdi	#, tmp434
	addq	%rdi, %rsi	# tmp434, tmp435
	addq	$6296, %rsi	#, tmp436
	movzwl	8(%rdx,%rsi,2), %edx	# img.433_139->mpr, D.12238
	movzwl	%dx, %edx	# D.12238, D.12235
	subl	%edx, %ecx	# D.12235, D.12235
	movl	-76(%rbp), %edx	# j, tmp438
	movslq	%edx, %rdx	# tmp438, tmp437
	movl	-80(%rbp), %esi	# i, tmp440
	movslq	%esi, %rsi	# tmp440, tmp439
	salq	$4, %rsi	#, tmp441
	addq	%rsi, %rdx	# tmp441, tmp442
	addq	$3276, %rdx	#, tmp443
	movl	%ecx, 8(%rax,%rdx,4)	# D.12235, img.431_126->m7
	.loc 1 1227 0 discriminator 2
	addl	$1, -80(%rbp)	#, i
.L276:
	.loc 1 1227 0 is_stmt 0 discriminator 1
	cmpl	$3, -80(%rbp)	#, i
	jle	.L277	#,
	.loc 1 1226 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
.L275:
	.loc 1 1226 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, j
	jle	.L278	#,
	.loc 1 1233 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.434
	movl	72392(%rax), %eax	# img.434_147->NoResidueDirect, D.12235
	cmpl	$1, %eax	#, D.12235
	je	.L282	#,
	.loc 1 1233 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, skipped
	jne	.L282	#,
	.loc 1 1236 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.435
	movl	24(%rax), %eax	# img.435_149->type, D.12235
	cmpl	$3, %eax	#, D.12235
	je	.L280	#,
	.loc 1 1236 0 is_stmt 0 discriminator 1
	leaq	-92(%rbp), %rdx	#, tmp444
	movl	-88(%rbp), %esi	# block_y, tmp445
	movl	-84(%rbp), %eax	# block_x, tmp446
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp446,
	call	dct_luma	#
	movl	%eax, -72(%rbp)	# tmp447, nonzero
	jmp	.L281	#
.L280:
	.loc 1 1237 0 is_stmt 1
	leaq	-92(%rbp), %rdx	#, tmp448
	movl	-88(%rbp), %ecx	# block_y, tmp449
	movl	-84(%rbp), %eax	# block_x, tmp450
	movl	%ecx, %esi	# tmp449,
	movl	%eax, %edi	# tmp450,
	call	dct_luma_sp	#
	movl	%eax, -72(%rbp)	# tmp451, nonzero
.L281:
	.loc 1 1238 0
	cmpl	$0, -72(%rbp)	#, nonzero
	je	.L282	#,
	.loc 1 1240 0
	movq	-112(%rbp), %rax	# cbp_blk, tmp452
	movq	(%rax), %rdx	# *cbp_blk_153(D), D.12241
	movl	-28(%rbp), %eax	# cbp_blk_mask, tmp453
	movl	$1, %esi	#, tmp454
	movl	%eax, %ecx	# tmp453, tmp707
	sall	%cl, %esi	# tmp707, D.12235
	movl	%esi, %eax	# D.12235, D.12235
	cltq
	orq	%rax, %rdx	# D.12241, D.12241
	movq	-112(%rbp), %rax	# cbp_blk, tmp455
	movq	%rdx, (%rax)	# D.12241, *cbp_blk_153(D)
	.loc 1 1241 0
	movq	-104(%rbp), %rax	# cbp, tmp456
	movl	(%rax), %eax	# *cbp_158(D), D.12235
	orl	-52(%rbp), %eax	# cbp_mask, D.12235
	movl	%eax, %edx	# D.12235, D.12235
	movq	-104(%rbp), %rax	# cbp, tmp457
	movl	%edx, (%rax)	# D.12235, *cbp_158(D)
	jmp	.L282	#
.L274:
	.loc 1 1247 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L283	#
.L286:
	.loc 1 1248 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L284	#
.L285:
	.loc 1 1250 0 discriminator 2
	movq	img(%rip), %rax	# img, img.436
	movl	-68(%rbp), %edx	# bxx, tmp458
	movl	-80(%rbp), %ecx	# i, tmp459
	leal	(%rcx,%rdx), %r8d	#, D.12235
	movl	-64(%rbp), %edx	# byy, tmp460
	movl	-76(%rbp), %ecx	# j, tmp461
	leal	(%rcx,%rdx), %r9d	#, D.12235
	movq	imgY_org(%rip), %rdx	# imgY_org, imgY_org.437
	movl	-76(%rbp), %ecx	# j, tmp462
	movl	-36(%rbp), %esi	# pic_pix_y, tmp463
	addl	%esi, %ecx	# tmp463, D.12235
	movslq	%ecx, %rcx	# D.12235, D.12237
	salq	$3, %rcx	#, D.12237
	addq	%rcx, %rdx	# D.12237, D.12239
	movq	(%rdx), %rdx	# *_170, D.12240
	movl	-80(%rbp), %ecx	# i, tmp464
	movl	-32(%rbp), %esi	# pic_pix_x, tmp465
	addl	%esi, %ecx	# tmp465, D.12235
	movslq	%ecx, %rcx	# D.12235, D.12237
	addq	%rcx, %rcx	# D.12237
	addq	%rcx, %rdx	# D.12237, D.12240
	movzwl	(%rdx), %edx	# *_175, D.12238
	movzwl	%dx, %ecx	# D.12238, D.12235
	movq	img(%rip), %rdx	# img, img.438
	movl	-84(%rbp), %esi	# block_x, tmp466
	movl	-80(%rbp), %edi	# i, tmp467
	leal	(%rdi,%rsi), %r10d	#, D.12235
	movl	-88(%rbp), %esi	# block_y, tmp468
	movl	-76(%rbp), %edi	# j, tmp469
	addl	%edi, %esi	# tmp469, D.12235
	movslq	%esi, %rsi	# D.12235, tmp470
	movslq	%r10d, %rdi	# D.12235, tmp471
	salq	$4, %rdi	#, tmp472
	addq	%rdi, %rsi	# tmp472, tmp473
	addq	$6296, %rsi	#, tmp474
	movzwl	8(%rdx,%rsi,2), %edx	# img.438_178->mpr, D.12238
	movzwl	%dx, %edx	# D.12238, D.12235
	subl	%edx, %ecx	# D.12235, D.12235
	movslq	%r9d, %rdx	# D.12235, tmp475
	movslq	%r8d, %rsi	# D.12235, tmp476
	salq	$4, %rsi	#, tmp477
	addq	%rsi, %rdx	# tmp477, tmp478
	addq	$3276, %rdx	#, tmp479
	movl	%ecx, 8(%rax,%rdx,4)	# D.12235, img.436_163->m7
	.loc 1 1248 0 discriminator 2
	addl	$1, -80(%rbp)	#, i
.L284:
	.loc 1 1248 0 is_stmt 0 discriminator 1
	cmpl	$3, -80(%rbp)	#, i
	jle	.L285	#,
	.loc 1 1247 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
.L283:
	.loc 1 1247 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, j
	jle	.L286	#,
	jmp	.L282	#
.L273:
	.loc 1 1257 0 is_stmt 1
	movl	$0, -76(%rbp)	#, j
	jmp	.L287	#
.L292:
	.loc 1 1258 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L288	#
.L291:
	.loc 1 1260 0
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.439
	movq	(%rax), %rax	# *imgUV_org.439_188, D.12239
	movl	-76(%rbp), %edx	# j, tmp480
	movl	-36(%rbp), %ecx	# pic_pix_y, tmp481
	addl	%ecx, %edx	# tmp481, D.12235
	movslq	%edx, %rdx	# D.12235, D.12237
	salq	$3, %rdx	#, D.12237
	addq	%rdx, %rax	# D.12237, D.12239
	movq	(%rax), %rax	# *_193, D.12240
	movl	-80(%rbp), %edx	# i, tmp482
	movl	-32(%rbp), %ecx	# pic_pix_x, tmp483
	addl	%ecx, %edx	# tmp483, D.12235
	movslq	%edx, %rdx	# D.12235, D.12237
	addq	%rdx, %rdx	# D.12237
	addq	%rdx, %rax	# D.12237, D.12240
	movzwl	(%rax), %eax	# *_198, D.12238
	movzwl	%ax, %edx	# D.12238, D.12235
	movl	-84(%rbp), %eax	# block_x, tmp484
	movl	-80(%rbp), %ecx	# i, tmp485
	leal	(%rcx,%rax), %esi	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp486
	movl	-76(%rbp), %ecx	# j, tmp487
	addl	%ecx, %eax	# tmp487, D.12235
	cltq
	movslq	%esi, %rcx	# D.12235, tmp489
	salq	$4, %rcx	#, tmp490
	addq	%rcx, %rax	# tmp490, tmp491
	addq	$256, %rax	#, tmp492
	movl	mprRGB(,%rax,4), %eax	# mprRGB, D.12235
	subl	%eax, %edx	# D.12235, tmp493
	movl	%edx, %eax	# tmp493, tmp493
	movl	%eax, -24(%rbp)	# tmp493, residue_B
	.loc 1 1261 0
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.440
	movl	-76(%rbp), %edx	# j, tmp494
	movl	-36(%rbp), %ecx	# pic_pix_y, tmp495
	addl	%ecx, %edx	# tmp495, D.12235
	movslq	%edx, %rdx	# D.12235, D.12237
	salq	$3, %rdx	#, D.12237
	addq	%rdx, %rax	# D.12237, D.12239
	movq	(%rax), %rax	# *_209, D.12240
	movl	-80(%rbp), %edx	# i, tmp496
	movl	-32(%rbp), %ecx	# pic_pix_x, tmp497
	addl	%ecx, %edx	# tmp497, D.12235
	movslq	%edx, %rdx	# D.12235, D.12237
	addq	%rdx, %rdx	# D.12237
	addq	%rdx, %rax	# D.12237, D.12240
	movzwl	(%rax), %eax	# *_214, D.12238
	movzwl	%ax, %edx	# D.12238, D.12235
	movl	-84(%rbp), %eax	# block_x, tmp498
	movl	-80(%rbp), %ecx	# i, tmp499
	leal	(%rcx,%rax), %esi	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp500
	movl	-76(%rbp), %ecx	# j, tmp501
	addl	%ecx, %eax	# tmp501, D.12235
	cltq
	movslq	%esi, %rcx	# D.12235, tmp503
	salq	$4, %rcx	#, tmp504
	addq	%rcx, %rax	# tmp504, tmp505
	movl	mprRGB(,%rax,4), %eax	# mprRGB, D.12235
	subl	%eax, %edx	# D.12235, tmp506
	movl	%edx, %eax	# tmp506, tmp506
	movl	%eax, -20(%rbp)	# tmp506, residue_G
	.loc 1 1262 0
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.441
	addq	$8, %rax	#, D.12242
	movq	(%rax), %rax	# *_222, D.12239
	movl	-76(%rbp), %edx	# j, tmp507
	movl	-36(%rbp), %ecx	# pic_pix_y, tmp508
	addl	%ecx, %edx	# tmp508, D.12235
	movslq	%edx, %rdx	# D.12235, D.12237
	salq	$3, %rdx	#, D.12237
	addq	%rdx, %rax	# D.12237, D.12239
	movq	(%rax), %rax	# *_227, D.12240
	movl	-80(%rbp), %edx	# i, tmp509
	movl	-32(%rbp), %ecx	# pic_pix_x, tmp510
	addl	%ecx, %edx	# tmp510, D.12235
	movslq	%edx, %rdx	# D.12235, D.12237
	addq	%rdx, %rdx	# D.12237
	addq	%rdx, %rax	# D.12237, D.12240
	movzwl	(%rax), %eax	# *_232, D.12238
	movzwl	%ax, %edx	# D.12238, D.12235
	movl	-84(%rbp), %eax	# block_x, tmp511
	movl	-80(%rbp), %ecx	# i, tmp512
	leal	(%rcx,%rax), %esi	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp513
	movl	-76(%rbp), %ecx	# j, tmp514
	addl	%ecx, %eax	# tmp514, D.12235
	cltq
	movslq	%esi, %rcx	# D.12235, tmp516
	salq	$4, %rcx	#, tmp517
	addq	%rcx, %rax	# tmp517, tmp518
	addq	$512, %rax	#, tmp519
	movl	mprRGB(,%rax,4), %eax	# mprRGB, D.12235
	subl	%eax, %edx	# D.12235, tmp520
	movl	%edx, %eax	# tmp520, tmp520
	movl	%eax, -16(%rbp)	# tmp520, residue_R
	.loc 1 1264 0
	movl	-84(%rbp), %eax	# block_x, tmp521
	movl	-80(%rbp), %edx	# i, tmp522
	leal	(%rdx,%rax), %ecx	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp523
	movl	-76(%rbp), %edx	# j, tmp524
	leal	(%rdx,%rax), %esi	#, D.12235
	movl	-24(%rbp), %eax	# residue_B, tmp525
	movl	-16(%rbp), %edx	# residue_R, tmp526
	subl	%eax, %edx	# tmp525, D.12235
	movslq	%esi, %rax	# D.12235, tmp527
	movslq	%ecx, %rcx	# D.12235, tmp528
	salq	$4, %rcx	#, tmp529
	addq	%rcx, %rax	# tmp529, tmp530
	movl	%edx, resTrans_R(,%rax,4)	# D.12235, resTrans_R
	.loc 1 1265 0
	movl	-84(%rbp), %eax	# block_x, tmp531
	movl	-80(%rbp), %edx	# i, tmp532
	leal	(%rdx,%rax), %ecx	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp533
	movl	-76(%rbp), %edx	# j, tmp534
	addl	%edx, %eax	# tmp534, D.12235
	cltq
	movslq	%ecx, %rdx	# D.12235, tmp536
	salq	$4, %rdx	#, tmp537
	addq	%rdx, %rax	# tmp537, tmp538
	movl	resTrans_R(,%rax,4), %eax	# resTrans_R, D.12235
	sarl	%eax	# D.12235
	movl	%eax, %edx	# D.12235, D.12235
	movl	-24(%rbp), %eax	# residue_B, tmp542
	addl	%edx, %eax	# D.12235, tmp541
	movl	%eax, -12(%rbp)	# tmp541, temp
	.loc 1 1266 0
	movl	-84(%rbp), %eax	# block_x, tmp543
	movl	-80(%rbp), %edx	# i, tmp544
	leal	(%rdx,%rax), %ecx	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp545
	movl	-76(%rbp), %edx	# j, tmp546
	leal	(%rdx,%rax), %esi	#, D.12235
	movl	-12(%rbp), %eax	# temp, tmp547
	movl	-20(%rbp), %edx	# residue_G, tmp548
	subl	%eax, %edx	# tmp547, D.12235
	movslq	%esi, %rax	# D.12235, tmp549
	movslq	%ecx, %rcx	# D.12235, tmp550
	salq	$4, %rcx	#, tmp551
	addq	%rcx, %rax	# tmp551, tmp552
	movl	%edx, resTrans_B(,%rax,4)	# D.12235, resTrans_B
	.loc 1 1267 0
	movl	-84(%rbp), %eax	# block_x, tmp553
	movl	-80(%rbp), %edx	# i, tmp554
	leal	(%rdx,%rax), %ecx	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp555
	movl	-76(%rbp), %edx	# j, tmp556
	leal	(%rdx,%rax), %esi	#, D.12235
	movl	-84(%rbp), %eax	# block_x, tmp557
	movl	-80(%rbp), %edx	# i, tmp558
	leal	(%rdx,%rax), %edi	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp559
	movl	-76(%rbp), %edx	# j, tmp560
	addl	%edx, %eax	# tmp560, D.12235
	cltq
	movslq	%edi, %rdx	# D.12235, tmp562
	salq	$4, %rdx	#, tmp563
	addq	%rdx, %rax	# tmp563, tmp564
	movl	resTrans_B(,%rax,4), %eax	# resTrans_B, D.12235
	sarl	%eax	# D.12235
	movl	%eax, %edx	# D.12235, D.12235
	movl	-12(%rbp), %eax	# temp, tmp565
	addl	%eax, %edx	# tmp565, D.12235
	movslq	%esi, %rax	# D.12235, tmp566
	movslq	%ecx, %rcx	# D.12235, tmp567
	salq	$4, %rcx	#, tmp568
	addq	%rcx, %rax	# tmp568, tmp569
	movl	%edx, resTrans_G(,%rax,4)	# D.12235, resTrans_G
	.loc 1 1269 0
	cmpl	$0, -40(%rbp)	#, need_8x8_transform
	jne	.L289	#,
	.loc 1 1270 0
	movq	img(%rip), %rax	# img, img.442
	movl	-84(%rbp), %edx	# block_x, tmp570
	movl	-80(%rbp), %ecx	# i, tmp571
	leal	(%rcx,%rdx), %esi	#, D.12235
	movl	-88(%rbp), %edx	# block_y, tmp572
	movl	-76(%rbp), %ecx	# j, tmp573
	addl	%ecx, %edx	# tmp573, D.12235
	movslq	%edx, %rdx	# D.12235, tmp574
	movslq	%esi, %rcx	# D.12235, tmp575
	salq	$4, %rcx	#, tmp576
	addq	%rcx, %rdx	# tmp576, tmp577
	movl	resTrans_G(,%rdx,4), %edx	# resTrans_G, D.12235
	movl	-76(%rbp), %ecx	# j, tmp579
	movslq	%ecx, %rcx	# tmp579, tmp578
	movl	-80(%rbp), %esi	# i, tmp581
	movslq	%esi, %rsi	# tmp581, tmp580
	salq	$4, %rsi	#, tmp582
	addq	%rsi, %rcx	# tmp582, tmp583
	addq	$3276, %rcx	#, tmp584
	movl	%edx, 8(%rax,%rcx,4)	# D.12235, img.442_257->m7
	jmp	.L290	#
.L289:
	.loc 1 1272 0
	movq	img(%rip), %rax	# img, img.443
	movl	-68(%rbp), %edx	# bxx, tmp585
	movl	-80(%rbp), %ecx	# i, tmp586
	leal	(%rcx,%rdx), %esi	#, D.12235
	movl	-64(%rbp), %edx	# byy, tmp587
	movl	-76(%rbp), %ecx	# j, tmp588
	leal	(%rcx,%rdx), %edi	#, D.12235
	movl	-84(%rbp), %edx	# block_x, tmp589
	movl	-80(%rbp), %ecx	# i, tmp590
	leal	(%rcx,%rdx), %r8d	#, D.12235
	movl	-88(%rbp), %edx	# block_y, tmp591
	movl	-76(%rbp), %ecx	# j, tmp592
	addl	%ecx, %edx	# tmp592, D.12235
	movslq	%edx, %rdx	# D.12235, tmp593
	movslq	%r8d, %rcx	# D.12235, tmp594
	salq	$4, %rcx	#, tmp595
	addq	%rcx, %rdx	# tmp595, tmp596
	movl	resTrans_G(,%rdx,4), %edx	# resTrans_G, D.12235
	movslq	%edi, %rcx	# D.12235, tmp597
	movslq	%esi, %rsi	# D.12235, tmp598
	salq	$4, %rsi	#, tmp599
	addq	%rsi, %rcx	# tmp599, tmp600
	addq	$3276, %rcx	#, tmp601
	movl	%edx, 8(%rax,%rcx,4)	# D.12235, img.443_261->m7
.L290:
	.loc 1 1258 0
	addl	$1, -80(%rbp)	#, i
.L288:
	.loc 1 1258 0 is_stmt 0 discriminator 1
	cmpl	$3, -80(%rbp)	#, i
	jle	.L291	#,
	.loc 1 1257 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
.L287:
	.loc 1 1257 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, j
	jle	.L292	#,
	.loc 1 1277 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.444
	movl	72392(%rax), %eax	# img.444_269->NoResidueDirect, D.12235
	cmpl	$1, %eax	#, D.12235
	je	.L282	#,
	.loc 1 1277 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, skipped
	jne	.L282	#,
	cmpl	$0, -40(%rbp)	#, need_8x8_transform
	jne	.L282	#,
	.loc 1 1280 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.445
	movl	24(%rax), %eax	# img.445_271->type, D.12235
	cmpl	$3, %eax	#, D.12235
	je	.L293	#,
	.loc 1 1280 0 is_stmt 0 discriminator 1
	leaq	-92(%rbp), %rdx	#, tmp602
	movl	-88(%rbp), %esi	# block_y, tmp603
	movl	-84(%rbp), %eax	# block_x, tmp604
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp604,
	call	dct_luma	#
	movl	%eax, -72(%rbp)	# tmp605, nonzero
	jmp	.L294	#
.L293:
	.loc 1 1281 0 is_stmt 1
	leaq	-92(%rbp), %rdx	#, tmp606
	movl	-88(%rbp), %ecx	# block_y, tmp607
	movl	-84(%rbp), %eax	# block_x, tmp608
	movl	%ecx, %esi	# tmp607,
	movl	%eax, %edi	# tmp608,
	call	dct_luma_sp	#
	movl	%eax, -72(%rbp)	# tmp609, nonzero
.L294:
	.loc 1 1283 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L295	#
.L298:
	.loc 1 1284 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L296	#
.L297:
	.loc 1 1285 0 discriminator 2
	movl	-84(%rbp), %eax	# block_x, tmp610
	movl	-80(%rbp), %edx	# i, tmp611
	leal	(%rdx,%rax), %esi	#, D.12235
	movl	-88(%rbp), %eax	# block_y, tmp612
	movl	-76(%rbp), %edx	# j, tmp613
	leal	(%rdx,%rax), %edi	#, D.12235
	movq	img(%rip), %rax	# img, img.446
	movl	-76(%rbp), %edx	# j, tmp615
	movslq	%edx, %rdx	# tmp615, tmp614
	movl	-80(%rbp), %ecx	# i, tmp617
	movslq	%ecx, %rcx	# tmp617, tmp616
	salq	$4, %rcx	#, tmp618
	addq	%rcx, %rdx	# tmp618, tmp619
	addq	$3276, %rdx	#, tmp620
	movl	8(%rax,%rdx,4), %eax	# img.446_279->m7, D.12235
	movslq	%edi, %rdx	# D.12235, tmp621
	movslq	%esi, %rcx	# D.12235, tmp622
	salq	$4, %rcx	#, tmp623
	addq	%rcx, %rdx	# tmp623, tmp624
	movl	%eax, rec_resG(,%rdx,4)	# D.12235, rec_resG
	.loc 1 1284 0 discriminator 2
	addl	$1, -80(%rbp)	#, i
.L296:
	.loc 1 1284 0 is_stmt 0 discriminator 1
	cmpl	$3, -80(%rbp)	#, i
	jle	.L297	#,
	.loc 1 1283 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
.L295:
	.loc 1 1283 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, j
	jle	.L298	#,
	.loc 1 1287 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, nonzero
	je	.L282	#,
	.loc 1 1289 0
	movq	-112(%rbp), %rax	# cbp_blk, tmp625
	movq	(%rax), %rdx	# *cbp_blk_153(D), D.12241
	movl	-28(%rbp), %eax	# cbp_blk_mask, tmp626
	movl	$1, %esi	#, tmp627
	movl	%eax, %ecx	# tmp626, tmp715
	sall	%cl, %esi	# tmp715, D.12235
	movl	%esi, %eax	# D.12235, D.12235
	cltq
	orq	%rax, %rdx	# D.12241, D.12241
	movq	-112(%rbp), %rax	# cbp_blk, tmp628
	movq	%rdx, (%rax)	# D.12241, *cbp_blk_153(D)
	.loc 1 1290 0
	movq	-104(%rbp), %rax	# cbp, tmp629
	movl	(%rax), %eax	# *cbp_158(D), D.12235
	orl	-52(%rbp), %eax	# cbp_mask, D.12235
	movl	%eax, %edx	# D.12235, D.12235
	movq	-104(%rbp), %rax	# cbp, tmp630
	movl	%edx, (%rax)	# D.12235, *cbp_158(D)
.L282:
	.loc 1 1190 0
	addl	$4, -68(%rbp)	#, bxx
	addl	$4, -84(%rbp)	#, block_x
.L258:
	.loc 1 1190 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# mb_x, tmp631
	addl	$8, %eax	#, D.12235
	cmpl	-84(%rbp), %eax	# block_x, D.12235
	jg	.L299	#,
	.loc 1 1186 0 is_stmt 1
	addl	$4, -64(%rbp)	#, byy
	addl	$4, -88(%rbp)	#, block_y
.L257:
	.loc 1 1186 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# mb_y, tmp632
	addl	$8, %eax	#, D.12235
	cmpl	-88(%rbp), %eax	# block_y, D.12235
	jg	.L300	#,
	.loc 1 1297 0 is_stmt 1
	cmpl	$0, -40(%rbp)	#, need_8x8_transform
	je	.L301	#,
	.loc 1 1299 0
	movq	img(%rip), %rax	# img, img.447
	movl	72392(%rax), %eax	# img.447_293->NoResidueDirect, D.12235
	cmpl	$1, %eax	#, D.12235
	je	.L301	#,
	.loc 1 1299 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, skipped
	jne	.L301	#,
	.loc 1 1301 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.448
	movl	24(%rax), %eax	# img.448_295->type, D.12235
	cmpl	$3, %eax	#, D.12235
	je	.L302	#,
	.loc 1 1302 0
	leaq	-92(%rbp), %rcx	#, tmp633
	movl	-116(%rbp), %eax	# block8x8, tmp634
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp633,
	movl	%eax, %edi	# tmp634,
	call	dct_luma8x8	#
	movl	%eax, -72(%rbp)	# tmp635, nonzero
.L302:
	.loc 1 1305 0
	movq	img(%rip), %rax	# img, img.449
	movl	72724(%rax), %eax	# img.449_298->residue_transform_flag, D.12235
	testl	%eax, %eax	# D.12235
	je	.L303	#,
	.loc 1 1307 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L304	#
.L307:
	.loc 1 1308 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L305	#
.L306:
	.loc 1 1309 0 discriminator 2
	movl	-80(%rbp), %eax	# i, tmp636
	movl	-56(%rbp), %edx	# mb_x, tmp637
	leal	(%rdx,%rax), %esi	#, D.12235
	movl	-76(%rbp), %eax	# j, tmp638
	movl	-60(%rbp), %edx	# mb_y, tmp639
	leal	(%rdx,%rax), %edi	#, D.12235
	movq	img(%rip), %rax	# img, img.450
	movl	-76(%rbp), %edx	# j, tmp641
	movslq	%edx, %rdx	# tmp641, tmp640
	movl	-80(%rbp), %ecx	# i, tmp643
	movslq	%ecx, %rcx	# tmp643, tmp642
	salq	$4, %rcx	#, tmp644
	addq	%rcx, %rdx	# tmp644, tmp645
	addq	$3276, %rdx	#, tmp646
	movl	8(%rax,%rdx,4), %eax	# img.450_304->m7, D.12235
	movslq	%edi, %rdx	# D.12235, tmp647
	movslq	%esi, %rcx	# D.12235, tmp648
	salq	$4, %rcx	#, tmp649
	addq	%rcx, %rdx	# tmp649, tmp650
	movl	%eax, rec_resG(,%rdx,4)	# D.12235, rec_resG
	.loc 1 1308 0 discriminator 2
	addl	$1, -80(%rbp)	#, i
.L305:
	.loc 1 1308 0 is_stmt 0 discriminator 1
	cmpl	$7, -80(%rbp)	#, i
	jle	.L306	#,
	.loc 1 1307 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
.L304:
	.loc 1 1307 0 is_stmt 0 discriminator 1
	cmpl	$7, -76(%rbp)	#, j
	jle	.L307	#,
.L303:
	.loc 1 1312 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, nonzero
	je	.L301	#,
	.loc 1 1314 0
	movq	-112(%rbp), %rax	# cbp_blk, tmp651
	movq	(%rax), %rsi	# *cbp_blk_153(D), D.12241
	movl	-116(%rbp), %eax	# block8x8, tmp652
	leal	(%rax,%rax), %ecx	#, D.12235
	movl	-116(%rbp), %eax	# block8x8, tmp653
	cltd
	shrl	$31, %edx	#, tmp655
	addl	%edx, %eax	# tmp655, tmp656
	andl	$1, %eax	#, tmp657
	subl	%edx, %eax	# tmp655, tmp658
	subl	%eax, %ecx	# D.12235, D.12235
	movl	%ecx, %eax	# D.12235, D.12235
	addl	%eax, %eax	# D.12235
	movl	$51, %edx	#, tmp659
	movl	%eax, %ecx	# D.12235, tmp719
	sall	%cl, %edx	# tmp719, D.12235
	movl	%edx, %eax	# D.12235, D.12235
	cltq
	orq	%rax, %rsi	# D.12241, D.12241
	movq	%rsi, %rdx	# D.12241, D.12241
	movq	-112(%rbp), %rax	# cbp_blk, tmp660
	movq	%rdx, (%rax)	# D.12241, *cbp_blk_153(D)
	.loc 1 1315 0
	movq	-104(%rbp), %rax	# cbp, tmp661
	movl	(%rax), %eax	# *cbp_158(D), D.12235
	orl	-52(%rbp), %eax	# cbp_mask, D.12235
	movl	%eax, %edx	# D.12235, D.12235
	movq	-104(%rbp), %rax	# cbp, tmp662
	movl	%edx, (%rax)	# D.12235, *cbp_158(D)
.L301:
	.loc 1 1340 0
	movq	img(%rip), %rax	# img, img.451
	movl	72392(%rax), %eax	# img.451_318->NoResidueDirect, D.12235
	cmpl	$1, %eax	#, D.12235
	je	.L308	#,
	.loc 1 1340 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, skipped
	jne	.L308	#,
	movl	-92(%rbp), %eax	# coeff_cost, coeff_cost.452
	cmpl	$4, %eax	#, coeff_cost.452
	jg	.L308	#,
	.loc 1 1341 0 is_stmt 1 discriminator 1
	movq	img(%rip), %rax	# img, img.453
	movl	40(%rax), %edx	# img.453_321->qp, D.12235
	movq	img(%rip), %rax	# img, img.454
	movl	72668(%rax), %eax	# img.454_323->bitdepth_luma_qp_scale, D.12235
	addl	%edx, %eax	# D.12235, D.12235
	.loc 1 1340 0 discriminator 1
	testl	%eax, %eax	# D.12235
	jne	.L309	#,
	.loc 1 1341 0
	movq	img(%rip), %rax	# img, img.455
	movl	72704(%rax), %eax	# img.455_326->lossless_qpprime_flag, D.12235
	testl	%eax, %eax	# D.12235
	jne	.L308	#,
.L309:
	.loc 1 1343 0
	movl	$0, -92(%rbp)	#, coeff_cost
	.loc 1 1344 0
	movq	-104(%rbp), %rax	# cbp, tmp663
	movl	(%rax), %edx	# *cbp_158(D), D.12235
	movl	$63, %eax	#, tmp664
	subl	-52(%rbp), %eax	# cbp_mask, D.12235
	andl	%eax, %edx	# D.12235, D.12235
	movq	-104(%rbp), %rax	# cbp, tmp665
	movl	%edx, (%rax)	# D.12235, *cbp_158(D)
	.loc 1 1345 0
	movq	-112(%rbp), %rax	# cbp_blk, tmp666
	movq	(%rax), %rsi	# *cbp_blk_153(D), D.12241
	movl	-116(%rbp), %eax	# block8x8, tmp667
	leal	(%rax,%rax), %ecx	#, D.12235
	movl	-116(%rbp), %eax	# block8x8, tmp668
	cltd
	shrl	$31, %edx	#, tmp670
	addl	%edx, %eax	# tmp670, tmp671
	andl	$1, %eax	#, tmp672
	subl	%edx, %eax	# tmp670, tmp673
	subl	%eax, %ecx	# D.12235, D.12235
	movl	%ecx, %eax	# D.12235, D.12235
	addl	%eax, %eax	# D.12235
	movl	$51, %edx	#, tmp674
	movl	%eax, %ecx	# D.12235, tmp724
	sall	%cl, %edx	# tmp724, D.12235
	movl	%edx, %eax	# D.12235, D.12235
	notl	%eax	# D.12235
	cltq
	andq	%rax, %rsi	# D.12241, D.12241
	movq	%rsi, %rdx	# D.12241, D.12241
	movq	-112(%rbp), %rax	# cbp_blk, tmp675
	movq	%rdx, (%rax)	# D.12241, *cbp_blk_153(D)
	.loc 1 1347 0
	movl	-56(%rbp), %eax	# mb_x, tmp676
	movl	%eax, -80(%rbp)	# tmp676, i
	jmp	.L310	#
.L315:
	.loc 1 1348 0
	movl	-60(%rbp), %eax	# mb_y, tmp677
	movl	%eax, -76(%rbp)	# tmp677, j
	jmp	.L311	#
.L314:
	.loc 1 1351 0
	movq	img(%rip), %rax	# img, img.456
	movl	72724(%rax), %eax	# img.456_344->residue_transform_flag, D.12235
	testl	%eax, %eax	# D.12235
	jne	.L312	#,
	.loc 1 1352 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.457
	movq	6424(%rax), %rdx	# enc_picture.457_346->imgY, D.12239
	movq	img(%rip), %rax	# img, img.458
	movl	156(%rax), %ecx	# img.458_348->pix_y, D.12235
	movl	-76(%rbp), %eax	# j, tmp678
	addl	%ecx, %eax	# D.12235, D.12235
	cltq
	salq	$3, %rax	#, D.12237
	addq	%rdx, %rax	# D.12239, D.12239
	movq	(%rax), %rdx	# *_353, D.12240
	movq	img(%rip), %rax	# img, img.459
	movl	152(%rax), %ecx	# img.459_355->pix_x, D.12235
	movl	-80(%rbp), %eax	# i, tmp679
	addl	%ecx, %eax	# D.12235, D.12235
	cltq
	addq	%rax, %rax	# D.12237
	addq	%rax, %rdx	# D.12237, D.12240
	movq	img(%rip), %rax	# img, img.460
	movl	-76(%rbp), %ecx	# j, tmp681
	movslq	%ecx, %rcx	# tmp681, tmp680
	movl	-80(%rbp), %esi	# i, tmp683
	movslq	%esi, %rsi	# tmp683, tmp682
	salq	$4, %rsi	#, tmp684
	addq	%rsi, %rcx	# tmp684, tmp685
	addq	$6296, %rcx	#, tmp686
	movzwl	8(%rax,%rcx,2), %eax	# img.460_361->mpr, D.12238
	movw	%ax, (%rdx)	# D.12238, *_360
	jmp	.L313	#
.L312:
	.loc 1 1354 0
	movl	-76(%rbp), %eax	# j, tmp688
	cltq
	movl	-80(%rbp), %edx	# i, tmp690
	movslq	%edx, %rdx	# tmp690, tmp689
	salq	$4, %rdx	#, tmp691
	addq	%rdx, %rax	# tmp691, tmp692
	movl	$0, rec_resG(,%rax,4)	#, rec_resG
.L313:
	.loc 1 1348 0
	addl	$1, -76(%rbp)	#, j
.L311:
	.loc 1 1348 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# mb_y, tmp693
	addl	$8, %eax	#, D.12235
	cmpl	-76(%rbp), %eax	# j, D.12235
	jg	.L314	#,
	.loc 1 1347 0 is_stmt 1
	addl	$1, -80(%rbp)	#, i
.L310:
	.loc 1 1347 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# mb_x, tmp694
	addl	$8, %eax	#, D.12235
	cmpl	-80(%rbp), %eax	# i, D.12235
	jg	.L315	#,
	.loc 1 1356 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.461
	movl	24(%rax), %eax	# img.461_365->type, D.12235
	cmpl	$3, %eax	#, D.12235
	jne	.L308	#,
	.loc 1 1358 0
	movl	-56(%rbp), %eax	# mb_x, tmp695
	movl	%eax, -80(%rbp)	# tmp695, i
	jmp	.L316	#
.L319:
	.loc 1 1359 0
	movl	-60(%rbp), %eax	# mb_y, tmp696
	movl	%eax, -76(%rbp)	# tmp696, j
	jmp	.L317	#
.L318:
	.loc 1 1360 0 discriminator 2
	movl	-76(%rbp), %edx	# j, tmp697
	movl	-80(%rbp), %eax	# i, tmp698
	movl	%edx, %esi	# tmp697,
	movl	%eax, %edi	# tmp698,
	call	copyblock_sp	#
	.loc 1 1359 0 discriminator 2
	addl	$4, -76(%rbp)	#, j
.L317:
	.loc 1 1359 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# mb_y, tmp699
	addl	$8, %eax	#, D.12235
	cmpl	-76(%rbp), %eax	# j, D.12235
	jg	.L318	#,
	.loc 1 1358 0 is_stmt 1
	addl	$4, -80(%rbp)	#, i
.L316:
	.loc 1 1358 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# mb_x, tmp700
	addl	$8, %eax	#, D.12235
	cmpl	-80(%rbp), %eax	# i, D.12235
	jg	.L319	#,
.L308:
	.loc 1 1364 0 is_stmt 1
	movl	-92(%rbp), %eax	# coeff_cost, D.12235
	.loc 1 1365 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	LumaResidualCoding8x8, .-LumaResidualCoding8x8
	.globl	SetModesAndRefframe
	.type	SetModesAndRefframe, @function
SetModesAndRefframe:
.LFB14:
	.loc 1 1376 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# b8, b8
	movq	%rsi, -32(%rbp)	# p_dir, p_dir
	movq	%rdx, -40(%rbp)	# fw_mode, fw_mode
	movq	%rcx, -48(%rbp)	# bw_mode, bw_mode
	movq	%r8, -56(%rbp)	# fw_ref, fw_ref
	movq	%r9, -64(%rbp)	# bw_ref, bw_ref
	.loc 1 1377 0
	movq	img(%rip), %rax	# img, img.462
	movq	14168(%rax), %rdx	# img.462_1->mb_data, D.12243
	movq	img(%rip), %rax	# img, img.463
	movl	12(%rax), %eax	# img.463_3->current_mb_nr, D.12244
	cltq
	imulq	$632, %rax, %rax	#, D.12245, D.12245
	addq	%rdx, %rax	# D.12243, tmp170
	movq	%rax, -8(%rbp)	# tmp170, currMB
	.loc 1 1378 0
	movl	-20(%rbp), %eax	# b8, tmp171
	movl	%eax, %edx	# tmp171, tmp172
	shrl	$31, %edx	#, tmp172
	addl	%edx, %eax	# tmp172, tmp173
	sarl	%eax	# tmp174
	addl	%eax, %eax	# tmp175
	movl	%eax, -16(%rbp)	# tmp175, j
	.loc 1 1379 0
	movl	-20(%rbp), %eax	# b8, tmp176
	cltd
	shrl	$31, %edx	#, tmp178
	addl	%edx, %eax	# tmp178, tmp179
	andl	$1, %eax	#, tmp180
	subl	%edx, %eax	# tmp178, tmp181
	addl	%eax, %eax	# tmp182
	movl	%eax, -12(%rbp)	# tmp182, i
	.loc 1 1381 0
	movq	-64(%rbp), %rax	# bw_ref, tmp183
	movw	$-1, (%rax)	#, *bw_ref_13(D)
	movq	-64(%rbp), %rax	# bw_ref, tmp184
	movzwl	(%rax), %edx	# *bw_ref_13(D), D.12246
	movq	-56(%rbp), %rax	# fw_ref, tmp185
	movw	%dx, (%rax)	# D.12246, *fw_ref_15(D)
	movq	-56(%rbp), %rax	# fw_ref, tmp186
	movzwl	(%rax), %eax	# *fw_ref_15(D), D.12246
	movswl	%ax, %edx	# D.12246, D.12244
	movq	-48(%rbp), %rax	# bw_mode, tmp187
	movl	%edx, (%rax)	# D.12244, *bw_mode_18(D)
	movq	-48(%rbp), %rax	# bw_mode, tmp188
	movl	(%rax), %edx	# *bw_mode_18(D), D.12244
	movq	-40(%rbp), %rax	# fw_mode, tmp189
	movl	%edx, (%rax)	# D.12244, *fw_mode_20(D)
	.loc 1 1383 0
	movq	-8(%rbp), %rax	# currMB, tmp190
	movl	-20(%rbp), %edx	# b8, tmp192
	movslq	%edx, %rdx	# tmp192, tmp191
	addq	$120, %rdx	#, tmp193
	movl	8(%rax,%rdx,4), %eax	# currMB_7->b8pdir, D.12244
	movl	%eax, %edx	# D.12244, D.12246
	movq	-32(%rbp), %rax	# p_dir, tmp194
	movw	%dx, (%rax)	# D.12246, *p_dir_23(D)
	.loc 1 1385 0
	movq	img(%rip), %rax	# img, img.464
	movl	24(%rax), %eax	# img.464_24->type, D.12244
	cmpl	$1, %eax	#, D.12244
	je	.L322	#,
	.loc 1 1387 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.465
	movq	6480(%rax), %rax	# enc_picture.465_26->ref_idx, D.12247
	movq	(%rax), %rdx	# *_27, D.12248
	movq	img(%rip), %rax	# img, img.466
	movl	144(%rax), %ecx	# img.466_29->block_x, D.12244
	movl	-12(%rbp), %eax	# i, tmp195
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	salq	$3, %rax	#, D.12245
	addq	%rdx, %rax	# D.12248, D.12248
	movq	(%rax), %rdx	# *_34, D.12249
	movq	img(%rip), %rax	# img, img.467
	movl	148(%rax), %ecx	# img.467_36->block_y, D.12244
	movl	-16(%rbp), %eax	# j, tmp196
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	addq	%rax, %rax	# D.12245
	addq	%rdx, %rax	# D.12249, D.12249
	movzwl	(%rax), %edx	# *_41, D.12246
	movq	-56(%rbp), %rax	# fw_ref, tmp197
	movw	%dx, (%rax)	# D.12246, *fw_ref_15(D)
	.loc 1 1388 0
	movq	-64(%rbp), %rax	# bw_ref, tmp198
	movw	$0, (%rax)	#, *bw_ref_13(D)
	.loc 1 1389 0
	movq	-8(%rbp), %rax	# currMB, tmp199
	movl	-20(%rbp), %edx	# b8, tmp201
	movslq	%edx, %rdx	# tmp201, tmp200
	addq	$116, %rdx	#, tmp202
	movl	8(%rax,%rdx,4), %edx	# currMB_7->b8mode, D.12244
	movq	-40(%rbp), %rax	# fw_mode, tmp203
	movl	%edx, (%rax)	# D.12244, *fw_mode_20(D)
	.loc 1 1390 0
	movq	-48(%rbp), %rax	# bw_mode, tmp204
	movl	$0, (%rax)	#, *bw_mode_18(D)
	jmp	.L321	#
.L322:
	.loc 1 1394 0
	movq	-8(%rbp), %rax	# currMB, tmp205
	movl	-20(%rbp), %edx	# b8, tmp207
	movslq	%edx, %rdx	# tmp207, tmp206
	addq	$120, %rdx	#, tmp208
	movl	8(%rax,%rdx,4), %eax	# currMB_7->b8pdir, D.12244
	cmpl	$-1, %eax	#, D.12244
	jne	.L324	#,
	.loc 1 1396 0
	movq	-56(%rbp), %rax	# fw_ref, tmp209
	movw	$-1, (%rax)	#, *fw_ref_15(D)
	.loc 1 1397 0
	movq	-64(%rbp), %rax	# bw_ref, tmp210
	movw	$-1, (%rax)	#, *bw_ref_13(D)
	.loc 1 1398 0
	movq	-40(%rbp), %rax	# fw_mode, tmp211
	movl	$0, (%rax)	#, *fw_mode_20(D)
	.loc 1 1399 0
	movq	-48(%rbp), %rax	# bw_mode, tmp212
	movl	$0, (%rax)	#, *bw_mode_18(D)
	jmp	.L321	#
.L324:
	.loc 1 1401 0
	movq	-8(%rbp), %rax	# currMB, tmp213
	movl	-20(%rbp), %edx	# b8, tmp215
	movslq	%edx, %rdx	# tmp215, tmp214
	addq	$120, %rdx	#, tmp216
	movl	8(%rax,%rdx,4), %eax	# currMB_7->b8pdir, D.12244
	testl	%eax, %eax	# D.12244
	jne	.L325	#,
	.loc 1 1403 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.468
	movq	6480(%rax), %rax	# enc_picture.468_46->ref_idx, D.12247
	movq	(%rax), %rdx	# *_47, D.12248
	movq	img(%rip), %rax	# img, img.469
	movl	144(%rax), %ecx	# img.469_49->block_x, D.12244
	movl	-12(%rbp), %eax	# i, tmp217
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	salq	$3, %rax	#, D.12245
	addq	%rdx, %rax	# D.12248, D.12248
	movq	(%rax), %rdx	# *_54, D.12249
	movq	img(%rip), %rax	# img, img.470
	movl	148(%rax), %ecx	# img.470_56->block_y, D.12244
	movl	-16(%rbp), %eax	# j, tmp218
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	addq	%rax, %rax	# D.12245
	addq	%rdx, %rax	# D.12249, D.12249
	movzwl	(%rax), %edx	# *_61, D.12246
	movq	-56(%rbp), %rax	# fw_ref, tmp219
	movw	%dx, (%rax)	# D.12246, *fw_ref_15(D)
	.loc 1 1404 0
	movq	-64(%rbp), %rax	# bw_ref, tmp220
	movw	$0, (%rax)	#, *bw_ref_13(D)
	.loc 1 1405 0
	movq	-8(%rbp), %rax	# currMB, tmp221
	movl	-20(%rbp), %edx	# b8, tmp223
	movslq	%edx, %rdx	# tmp223, tmp222
	addq	$116, %rdx	#, tmp224
	movl	8(%rax,%rdx,4), %edx	# currMB_7->b8mode, D.12244
	movq	-40(%rbp), %rax	# fw_mode, tmp225
	movl	%edx, (%rax)	# D.12244, *fw_mode_20(D)
	.loc 1 1406 0
	movq	-48(%rbp), %rax	# bw_mode, tmp226
	movl	$0, (%rax)	#, *bw_mode_18(D)
	jmp	.L321	#
.L325:
	.loc 1 1408 0
	movq	-8(%rbp), %rax	# currMB, tmp227
	movl	-20(%rbp), %edx	# b8, tmp229
	movslq	%edx, %rdx	# tmp229, tmp228
	addq	$120, %rdx	#, tmp230
	movl	8(%rax,%rdx,4), %eax	# currMB_7->b8pdir, D.12244
	cmpl	$1, %eax	#, D.12244
	jne	.L326	#,
	.loc 1 1410 0
	movq	-56(%rbp), %rax	# fw_ref, tmp231
	movw	$0, (%rax)	#, *fw_ref_15(D)
	.loc 1 1411 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.471
	movq	6480(%rax), %rax	# enc_picture.471_65->ref_idx, D.12247
	addq	$8, %rax	#, D.12247
	movq	(%rax), %rdx	# *_67, D.12248
	movq	img(%rip), %rax	# img, img.472
	movl	144(%rax), %ecx	# img.472_69->block_x, D.12244
	movl	-12(%rbp), %eax	# i, tmp232
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	salq	$3, %rax	#, D.12245
	addq	%rdx, %rax	# D.12248, D.12248
	movq	(%rax), %rdx	# *_74, D.12249
	movq	img(%rip), %rax	# img, img.473
	movl	148(%rax), %ecx	# img.473_76->block_y, D.12244
	movl	-16(%rbp), %eax	# j, tmp233
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	addq	%rax, %rax	# D.12245
	addq	%rdx, %rax	# D.12249, D.12249
	movzwl	(%rax), %edx	# *_81, D.12246
	movq	-64(%rbp), %rax	# bw_ref, tmp234
	movw	%dx, (%rax)	# D.12246, *bw_ref_13(D)
	.loc 1 1412 0
	movq	-40(%rbp), %rax	# fw_mode, tmp235
	movl	$0, (%rax)	#, *fw_mode_20(D)
	.loc 1 1413 0
	movq	-8(%rbp), %rax	# currMB, tmp236
	movl	-20(%rbp), %edx	# b8, tmp238
	movslq	%edx, %rdx	# tmp238, tmp237
	addq	$116, %rdx	#, tmp239
	movl	8(%rax,%rdx,4), %edx	# currMB_7->b8mode, D.12244
	movq	-48(%rbp), %rax	# bw_mode, tmp240
	movl	%edx, (%rax)	# D.12244, *bw_mode_18(D)
	jmp	.L321	#
.L326:
	.loc 1 1417 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.474
	movq	6480(%rax), %rax	# enc_picture.474_84->ref_idx, D.12247
	movq	(%rax), %rdx	# *_85, D.12248
	movq	img(%rip), %rax	# img, img.475
	movl	144(%rax), %ecx	# img.475_87->block_x, D.12244
	movl	-12(%rbp), %eax	# i, tmp241
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	salq	$3, %rax	#, D.12245
	addq	%rdx, %rax	# D.12248, D.12248
	movq	(%rax), %rdx	# *_92, D.12249
	movq	img(%rip), %rax	# img, img.476
	movl	148(%rax), %ecx	# img.476_94->block_y, D.12244
	movl	-16(%rbp), %eax	# j, tmp242
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	addq	%rax, %rax	# D.12245
	addq	%rdx, %rax	# D.12249, D.12249
	movzwl	(%rax), %edx	# *_99, D.12246
	movq	-56(%rbp), %rax	# fw_ref, tmp243
	movw	%dx, (%rax)	# D.12246, *fw_ref_15(D)
	.loc 1 1418 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.477
	movq	6480(%rax), %rax	# enc_picture.477_101->ref_idx, D.12247
	addq	$8, %rax	#, D.12247
	movq	(%rax), %rdx	# *_103, D.12248
	movq	img(%rip), %rax	# img, img.478
	movl	144(%rax), %ecx	# img.478_105->block_x, D.12244
	movl	-12(%rbp), %eax	# i, tmp244
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	salq	$3, %rax	#, D.12245
	addq	%rdx, %rax	# D.12248, D.12248
	movq	(%rax), %rdx	# *_110, D.12249
	movq	img(%rip), %rax	# img, img.479
	movl	148(%rax), %ecx	# img.479_112->block_y, D.12244
	movl	-16(%rbp), %eax	# j, tmp245
	addl	%ecx, %eax	# D.12244, D.12244
	cltq
	addq	%rax, %rax	# D.12245
	addq	%rdx, %rax	# D.12249, D.12249
	movzwl	(%rax), %edx	# *_117, D.12246
	movq	-64(%rbp), %rax	# bw_ref, tmp246
	movw	%dx, (%rax)	# D.12246, *bw_ref_13(D)
	.loc 1 1419 0
	movq	-8(%rbp), %rax	# currMB, tmp247
	movl	-20(%rbp), %edx	# b8, tmp249
	movslq	%edx, %rdx	# tmp249, tmp248
	addq	$116, %rdx	#, tmp250
	movl	8(%rax,%rdx,4), %edx	# currMB_7->b8mode, D.12244
	movq	-40(%rbp), %rax	# fw_mode, tmp251
	movl	%edx, (%rax)	# D.12244, *fw_mode_20(D)
	.loc 1 1420 0
	movq	-8(%rbp), %rax	# currMB, tmp252
	movl	-20(%rbp), %edx	# b8, tmp254
	movslq	%edx, %rdx	# tmp254, tmp253
	addq	$116, %rdx	#, tmp255
	movl	8(%rax,%rdx,4), %edx	# currMB_7->b8mode, D.12244
	movq	-48(%rbp), %rax	# bw_mode, tmp256
	movl	%edx, (%rax)	# D.12244, *bw_mode_18(D)
.L321:
	.loc 1 1423 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	SetModesAndRefframe, .-SetModesAndRefframe
	.globl	LumaResidualCoding
	.type	LumaResidualCoding, @function
LumaResidualCoding:
.LFB15:
	.loc 1 1434 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 1439 0
	movq	img(%rip), %rax	# img, img.480
	movq	14168(%rax), %rdx	# img.480_8->mb_data, D.12250
	movq	img(%rip), %rax	# img, img.481
	movl	12(%rax), %eax	# img.481_10->current_mb_nr, D.12251
	cltq
	imulq	$632, %rax, %rax	#, D.12252, D.12252
	addq	%rdx, %rax	# D.12250, tmp112
	movq	%rax, -8(%rbp)	# tmp112, currMB
	.loc 1 1441 0
	movq	-8(%rbp), %rax	# currMB, tmp113
	movl	$0, 460(%rax)	#, currMB_14->cbp
	.loc 1 1442 0
	movq	-8(%rbp), %rax	# currMB, tmp114
	movq	$0, 464(%rax)	#, currMB_14->cbp_blk
	.loc 1 1443 0
	movl	$0, -20(%rbp)	#, sum_cnt_nonz
	.loc 1 1445 0
	movl	$0, -24(%rbp)	#, block8x8
	jmp	.L328	#
.L329:
.LBB4:
	.loc 1 1448 0 discriminator 2
	leaq	-42(%rbp), %r8	#, tmp115
	leaq	-44(%rbp), %rdi	#, tmp116
	leaq	-36(%rbp), %rcx	#, tmp117
	leaq	-40(%rbp), %rdx	#, tmp118
	leaq	-46(%rbp), %rsi	#, tmp119
	movl	-24(%rbp), %eax	# block8x8, tmp120
	movq	%r8, %r9	# tmp115,
	movq	%rdi, %r8	# tmp116,
	movl	%eax, %edi	# tmp120,
	call	SetModesAndRefframe	#
	.loc 1 1450 0 discriminator 2
	movzwl	-42(%rbp), %eax	# bw_ref, bw_ref.482
	movswl	%ax, %esi	# bw_ref.482, D.12251
	movzwl	-44(%rbp), %eax	# refframe, refframe.483
	movswl	%ax, %ecx	# refframe.483, D.12251
	movl	-36(%rbp), %r9d	# bw_mode, bw_mode.484
	movl	-40(%rbp), %r8d	# fw_mode, fw_mode.485
	movzwl	-46(%rbp), %eax	# p_dir, p_dir.486
	movswl	%ax, %edx	# p_dir.486, D.12251
	movq	-8(%rbp), %rax	# currMB, tmp121
	leaq	464(%rax), %r10	#, D.12253
	movq	-8(%rbp), %rax	# currMB, tmp122
	leaq	460(%rax), %rdi	#, D.12254
	movl	-24(%rbp), %eax	# block8x8, tmp123
	movl	%esi, 8(%rsp)	# D.12251,
	movl	%ecx, (%rsp)	# D.12251,
	movl	%edx, %ecx	# D.12251,
	movl	%eax, %edx	# tmp123,
	movq	%r10, %rsi	# D.12253,
	call	LumaResidualCoding8x8	#
	addl	%eax, -20(%rbp)	# D.12251, sum_cnt_nonz
.LBE4:
	.loc 1 1445 0 discriminator 2
	addl	$1, -24(%rbp)	#, block8x8
.L328:
	.loc 1 1445 0 is_stmt 0 discriminator 1
	cmpl	$3, -24(%rbp)	#, block8x8
	jle	.L329	#,
	.loc 1 1454 0 is_stmt 1
	cmpl	$5, -20(%rbp)	#, sum_cnt_nonz
	jg	.L327	#,
	.loc 1 1455 0 discriminator 1
	movq	img(%rip), %rax	# img, img.487
	movl	40(%rax), %edx	# img.487_30->qp, D.12251
	movq	img(%rip), %rax	# img, img.488
	movl	72668(%rax), %eax	# img.488_32->bitdepth_luma_qp_scale, D.12251
	addl	%edx, %eax	# D.12251, D.12251
	.loc 1 1454 0 discriminator 1
	testl	%eax, %eax	# D.12251
	jne	.L331	#,
	.loc 1 1455 0
	movq	img(%rip), %rax	# img, img.489
	movl	72704(%rax), %eax	# img.489_35->lossless_qpprime_flag, D.12251
	testl	%eax, %eax	# D.12251
	jne	.L327	#,
.L331:
	.loc 1 1457 0
	movq	-8(%rbp), %rax	# currMB, tmp124
	movl	460(%rax), %eax	# currMB_14->cbp, D.12251
	andl	$16777200, %eax	#, D.12251
	movl	%eax, %edx	# D.12251, D.12251
	movq	-8(%rbp), %rax	# currMB, tmp125
	movl	%edx, 460(%rax)	# D.12251, currMB_14->cbp
	.loc 1 1458 0
	movq	-8(%rbp), %rax	# currMB, tmp126
	movq	464(%rax), %rax	# currMB_14->cbp_blk, D.12255
	andl	$16711680, %eax	#, D.12255
	movq	%rax, %rdx	# D.12255, D.12255
	movq	-8(%rbp), %rax	# currMB, tmp127
	movq	%rdx, 464(%rax)	# D.12255, currMB_14->cbp_blk
	.loc 1 1459 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L332	#
.L337:
	.loc 1 1461 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L333	#
.L336:
	.loc 1 1463 0
	movq	img(%rip), %rax	# img, img.490
	movl	72724(%rax), %eax	# img.490_43->residue_transform_flag, D.12251
	testl	%eax, %eax	# D.12251
	jne	.L334	#,
	.loc 1 1464 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.491
	movq	6424(%rax), %rdx	# enc_picture.491_45->imgY, D.12256
	movq	img(%rip), %rax	# img, img.492
	movl	156(%rax), %ecx	# img.492_47->pix_y, D.12251
	movl	-28(%rbp), %eax	# j, tmp128
	addl	%ecx, %eax	# D.12251, D.12251
	cltq
	salq	$3, %rax	#, D.12252
	addq	%rdx, %rax	# D.12256, D.12256
	movq	(%rax), %rdx	# *_52, D.12257
	movq	img(%rip), %rax	# img, img.493
	movl	152(%rax), %ecx	# img.493_54->pix_x, D.12251
	movl	-32(%rbp), %eax	# i, tmp129
	addl	%ecx, %eax	# D.12251, D.12251
	cltq
	addq	%rax, %rax	# D.12252
	addq	%rax, %rdx	# D.12252, D.12257
	movq	img(%rip), %rax	# img, img.494
	movl	-28(%rbp), %ecx	# j, tmp131
	movslq	%ecx, %rcx	# tmp131, tmp130
	movl	-32(%rbp), %esi	# i, tmp133
	movslq	%esi, %rsi	# tmp133, tmp132
	salq	$4, %rsi	#, tmp134
	addq	%rsi, %rcx	# tmp134, tmp135
	addq	$6296, %rcx	#, tmp136
	movzwl	8(%rax,%rcx,2), %eax	# img.494_60->mpr, D.12258
	movw	%ax, (%rdx)	# D.12258, *_59
	jmp	.L335	#
.L334:
	.loc 1 1466 0
	movl	-28(%rbp), %eax	# j, tmp138
	cltq
	movl	-32(%rbp), %edx	# i, tmp140
	movslq	%edx, %rdx	# tmp140, tmp139
	salq	$4, %rdx	#, tmp141
	addq	%rdx, %rax	# tmp141, tmp142
	movl	$0, rec_resG(,%rax,4)	#, rec_resG
.L335:
	.loc 1 1461 0
	addl	$1, -28(%rbp)	#, j
.L333:
	.loc 1 1461 0 is_stmt 0 discriminator 1
	cmpl	$15, -28(%rbp)	#, j
	jle	.L336	#,
	.loc 1 1459 0 is_stmt 1
	addl	$1, -32(%rbp)	#, i
.L332:
	.loc 1 1459 0 is_stmt 0 discriminator 1
	cmpl	$15, -32(%rbp)	#, i
	jle	.L337	#,
	.loc 1 1469 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.495
	movl	24(%rax), %eax	# img.495_64->type, D.12251
	cmpl	$3, %eax	#, D.12251
	jne	.L327	#,
	.loc 1 1471 0
	movl	$0, -24(%rbp)	#, block8x8
	jmp	.L338	#
.L343:
	.loc 1 1473 0
	movl	-24(%rbp), %eax	# block8x8, tmp143
	andl	$1, %eax	#, D.12251
	sall	$3, %eax	#, tmp144
	movl	%eax, -16(%rbp)	# tmp144, b8_x
	.loc 1 1474 0
	movl	-24(%rbp), %eax	# block8x8, tmp145
	andl	$2, %eax	#, D.12251
	sall	$2, %eax	#, tmp146
	movl	%eax, -12(%rbp)	# tmp146, b8_y
	.loc 1 1475 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L339	#
.L342:
	.loc 1 1476 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L340	#
.L341:
	.loc 1 1477 0 discriminator 2
	movl	-28(%rbp), %eax	# j, tmp147
	movl	-12(%rbp), %edx	# b8_y, tmp148
	addl	%eax, %edx	# tmp147, D.12251
	movl	-32(%rbp), %eax	# i, tmp149
	movl	-16(%rbp), %ecx	# b8_x, tmp150
	addl	%ecx, %eax	# tmp150, D.12251
	movl	%edx, %esi	# D.12251,
	movl	%eax, %edi	# D.12251,
	call	copyblock_sp	#
	.loc 1 1476 0 discriminator 2
	addl	$4, -28(%rbp)	#, j
.L340:
	.loc 1 1476 0 is_stmt 0 discriminator 1
	cmpl	$7, -28(%rbp)	#, j
	jle	.L341	#,
	.loc 1 1475 0 is_stmt 1
	addl	$4, -32(%rbp)	#, i
.L339:
	.loc 1 1475 0 is_stmt 0 discriminator 1
	cmpl	$7, -32(%rbp)	#, i
	jle	.L342	#,
	.loc 1 1471 0 is_stmt 1
	addl	$1, -24(%rbp)	#, block8x8
.L338:
	.loc 1 1471 0 is_stmt 0 discriminator 1
	cmpl	$3, -24(%rbp)	#, block8x8
	jle	.L343	#,
.L327:
	.loc 1 1481 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	LumaResidualCoding, .-LumaResidualCoding
	.globl	TransformDecision
	.type	TransformDecision, @function
TransformDecision:
.LFB16:
	.loc 1 1492 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$368, %rsp	#,
	movl	%edi, -340(%rbp)	# block_check, block_check
	movq	%rsi, -352(%rbp)	# cost, cost
	.loc 1 1498 0
	movl	$0, -288(%rbp)	#, cost8x8
	movl	$0, -284(%rbp)	#, cost4x4
	.loc 1 1501 0
	cmpl	$-1, -340(%rbp)	#, block_check
	jne	.L345	#,
	.loc 1 1503 0
	movl	$0, -296(%rbp)	#, block8x8
	.loc 1 1504 0
	movl	$4, -292(%rbp)	#, num_blks
	.loc 1 1512 0
	jmp	.L347	#
.L345:
	.loc 1 1508 0
	movl	-340(%rbp), %eax	# block_check, tmp106
	movl	%eax, -296(%rbp)	# tmp106, block8x8
	.loc 1 1509 0
	movl	-340(%rbp), %eax	# block_check, tmp110
	addl	$1, %eax	#, tmp109
	movl	%eax, -292(%rbp)	# tmp109, num_blks
	.loc 1 1512 0
	jmp	.L347	#
.L356:
	.loc 1 1514 0
	leaq	-326(%rbp), %r8	#, tmp111
	leaq	-328(%rbp), %rdi	#, tmp112
	leaq	-320(%rbp), %rcx	#, tmp113
	leaq	-324(%rbp), %rdx	#, tmp114
	leaq	-330(%rbp), %rsi	#, tmp115
	movl	-296(%rbp), %eax	# block8x8, tmp116
	movq	%r8, %r9	# tmp111,
	movq	%rdi, %r8	# tmp112,
	movl	%eax, %edi	# tmp116,
	call	SetModesAndRefframe	#
	.loc 1 1516 0
	movl	-296(%rbp), %eax	# block8x8, tmp117
	movl	%eax, %edx	# tmp117, tmp118
	shrl	$31, %edx	#, tmp118
	addl	%edx, %eax	# tmp118, tmp119
	sarl	%eax	# tmp120
	sall	$3, %eax	#, tmp121
	movl	%eax, -280(%rbp)	# tmp121, mb_y
	.loc 1 1517 0
	movl	-296(%rbp), %eax	# block8x8, tmp122
	cltd
	shrl	$31, %edx	#, tmp124
	addl	%edx, %eax	# tmp124, tmp125
	andl	$1, %eax	#, tmp126
	subl	%edx, %eax	# tmp124, tmp127
	sall	$3, %eax	#, tmp128
	movl	%eax, -276(%rbp)	# tmp128, mb_x
	.loc 1 1519 0
	movl	$0, -300(%rbp)	#, k
	.loc 1 1520 0
	movl	-280(%rbp), %eax	# mb_y, tmp129
	movl	%eax, -316(%rbp)	# tmp129, block_y
	jmp	.L348	#
.L355:
	.loc 1 1522 0
	movq	img(%rip), %rax	# img, img.496
	movl	172(%rax), %edx	# img.496_31->opix_y, D.12259
	movl	-316(%rbp), %eax	# block_y, tmp133
	addl	%edx, %eax	# D.12259, tmp132
	movl	%eax, -272(%rbp)	# tmp132, pic_pix_y
	.loc 1 1524 0
	movl	-276(%rbp), %eax	# mb_x, tmp134
	movl	%eax, -312(%rbp)	# tmp134, block_x
	jmp	.L349	#
.L354:
	.loc 1 1526 0
	movq	img(%rip), %rax	# img, img.497
	movl	168(%rax), %edx	# img.497_36->opix_x, D.12259
	movl	-312(%rbp), %eax	# block_x, tmp138
	addl	%edx, %eax	# D.12259, tmp137
	movl	%eax, -268(%rbp)	# tmp137, pic_pix_x
	.loc 1 1529 0
	movzwl	-326(%rbp), %eax	# bw_ref, bw_ref.498
	movswl	%ax, %edi	# bw_ref.498, D.12259
	movzwl	-328(%rbp), %eax	# fw_ref, fw_ref.499
	movswl	%ax, %r9d	# fw_ref.499, D.12259
	movl	-320(%rbp), %r8d	# bw_mode, bw_mode.500
	movl	-324(%rbp), %ecx	# fw_mode, fw_mode.501
	movzwl	-330(%rbp), %eax	# p_dir, p_dir.502
	movswl	%ax, %edx	# p_dir.502, D.12259
	movl	-316(%rbp), %esi	# block_y, tmp139
	movl	-312(%rbp), %eax	# block_x, tmp140
	movl	%edi, (%rsp)	# D.12259,
	movl	%eax, %edi	# tmp140,
	call	LumaPrediction4x4	#
	.loc 1 1532 0
	leaq	-256(%rbp), %rax	#, tmp141
	movl	-300(%rbp), %edx	# k, tmp143
	movslq	%edx, %rdx	# tmp143, tmp142
	salq	$2, %rdx	#, tmp144
	addq	%rdx, %rax	# tmp144, tmp145
	movq	%rax, -264(%rbp)	# tmp145, diff_ptr
	.loc 1 1533 0
	movl	$0, -304(%rbp)	#, j
	jmp	.L350	#
.L353:
	.loc 1 1534 0
	movl	$0, -308(%rbp)	#, i
	jmp	.L351	#
.L352:
	.loc 1 1536 0 discriminator 2
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.503
	movl	-304(%rbp), %edx	# j, tmp146
	movl	-272(%rbp), %ecx	# pic_pix_y, tmp147
	addl	%ecx, %edx	# tmp147, D.12259
	movslq	%edx, %rdx	# D.12259, D.12260
	salq	$3, %rdx	#, D.12260
	addq	%rdx, %rax	# D.12260, D.12261
	movq	(%rax), %rax	# *_54, D.12262
	movl	-308(%rbp), %edx	# i, tmp148
	movl	-268(%rbp), %ecx	# pic_pix_x, tmp149
	addl	%ecx, %edx	# tmp149, D.12259
	movslq	%edx, %rdx	# D.12259, D.12260
	addq	%rdx, %rdx	# D.12260
	addq	%rdx, %rax	# D.12260, D.12262
	movzwl	(%rax), %eax	# *_59, D.12263
	movzwl	%ax, %edx	# D.12263, D.12259
	movq	img(%rip), %rax	# img, img.504
	movl	-312(%rbp), %ecx	# block_x, tmp150
	movl	-308(%rbp), %esi	# i, tmp151
	leal	(%rsi,%rcx), %edi	#, D.12259
	movl	-316(%rbp), %ecx	# block_y, tmp152
	movl	-304(%rbp), %esi	# j, tmp153
	addl	%esi, %ecx	# tmp153, D.12259
	movslq	%ecx, %rcx	# D.12259, tmp154
	movslq	%edi, %rsi	# D.12259, tmp155
	salq	$4, %rsi	#, tmp156
	addq	%rsi, %rcx	# tmp156, tmp157
	addq	$6296, %rcx	#, tmp158
	movzwl	8(%rax,%rcx,2), %eax	# img.504_62->mpr, D.12263
	movzwl	%ax, %eax	# D.12263, D.12259
	subl	%eax, %edx	# D.12259, D.12259
	movl	-300(%rbp), %eax	# k, tmp160
	cltq
	movl	%edx, -256(%rbp,%rax,4)	# D.12259, diff
	.loc 1 1534 0 discriminator 2
	addl	$1, -308(%rbp)	#, i
	addl	$1, -300(%rbp)	#, k
.L351:
	.loc 1 1534 0 is_stmt 0 discriminator 1
	cmpl	$3, -308(%rbp)	#, i
	jle	.L352	#,
	.loc 1 1533 0 is_stmt 1
	addl	$1, -304(%rbp)	#, j
.L350:
	.loc 1 1533 0 is_stmt 0 discriminator 1
	cmpl	$3, -304(%rbp)	#, j
	jle	.L353	#,
	.loc 1 1538 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.505
	movl	24(%rax), %edx	# input.505_71->hadamard, D.12259
	movq	-264(%rbp), %rax	# diff_ptr, tmp161
	movl	%edx, %esi	# D.12259,
	movq	%rax, %rdi	# tmp161,
	call	SATD	#
	addl	%eax, -284(%rbp)	# D.12259, cost4x4
	.loc 1 1524 0
	addl	$4, -312(%rbp)	#, block_x
.L349:
	.loc 1 1524 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %eax	# mb_x, tmp162
	addl	$8, %eax	#, D.12259
	cmpl	-312(%rbp), %eax	# block_x, D.12259
	jg	.L354	#,
	.loc 1 1520 0 is_stmt 1
	addl	$4, -316(%rbp)	#, block_y
.L348:
	.loc 1 1520 0 is_stmt 0 discriminator 1
	movl	-280(%rbp), %eax	# mb_y, tmp163
	addl	$8, %eax	#, D.12259
	cmpl	-316(%rbp), %eax	# block_y, D.12259
	jg	.L355	#,
	.loc 1 1541 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.506
	movl	24(%rax), %edx	# input.506_77->hadamard, D.12259
	leaq	-256(%rbp), %rax	#, tmp164
	movl	%edx, %esi	# D.12259,
	movq	%rax, %rdi	# tmp164,
	call	SATD8X8	#
	addl	%eax, -288(%rbp)	# D.12259, cost8x8
	.loc 1 1512 0
	addl	$1, -296(%rbp)	#, block8x8
.L347:
	.loc 1 1512 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# block8x8, tmp165
	cmpl	-292(%rbp), %eax	# num_blks, tmp165
	jl	.L356	#,
	.loc 1 1544 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.507
	movl	3220(%rax), %eax	# input.507_82->AllowTransform8x8, D.12259
	cmpl	$2, %eax	#, D.12259
	jne	.L357	#,
	.loc 1 1546 0
	movl	$1, %eax	#, D.12259
	jmp	.L360	#
.L357:
	.loc 1 1550 0
	movl	-288(%rbp), %eax	# cost8x8, tmp166
	cmpl	-284(%rbp), %eax	# cost4x4, tmp166
	jge	.L359	#,
	.loc 1 1552 0
	movl	$1, %eax	#, D.12259
	jmp	.L360	#
.L359:
	.loc 1 1556 0
	movq	-352(%rbp), %rax	# cost, tmp167
	movl	(%rax), %eax	# *cost_86(D), D.12259
	subl	-288(%rbp), %eax	# cost8x8, D.12259
	movl	%eax, %edx	# D.12259, D.12259
	movl	-284(%rbp), %eax	# cost4x4, tmp168
	addl	%eax, %edx	# tmp168, D.12259
	movq	-352(%rbp), %rax	# cost, tmp169
	movl	%edx, (%rax)	# D.12259, *cost_86(D)
	.loc 1 1557 0
	movl	$0, %eax	#, D.12259
.L360:
	.loc 1 1560 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	TransformDecision, .-TransformDecision
	.globl	OneComponentChromaPrediction4x4
	.type	OneComponentChromaPrediction4x4, @function
OneComponentChromaPrediction4x4:
.LFB17:
	.loc 1 1577 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -128(%rbp)	# mpred, mpred
	movl	%esi, -132(%rbp)	# block_c_x, block_c_x
	movl	%edx, -136(%rbp)	# block_c_y, block_c_y
	movq	%rcx, -144(%rbp)	# mv, mv
	movl	%r8d, -148(%rbp)	# list_idx, list_idx
	movl	%r9d, %eax	# ref, tmp207
	movw	%ax, -152(%rbp)	# tmp207, ref
	.loc 1 1581 0
	movq	img(%rip), %rax	# img, img.508
	movl	72708(%rax), %ebx	# img.508_9->mb_cr_size_x, D.12264
	movl	$64, %eax	#, tmp210
	cltd
	idivl	%ebx	# D.12264
	movl	%eax, -100(%rbp)	# tmp208, f1_x
	.loc 1 1582 0
	movl	-100(%rbp), %eax	# f1_x, tmp214
	subl	$1, %eax	#, tmp213
	movl	%eax, -96(%rbp)	# tmp213, f2_x
	.loc 1 1584 0
	movq	img(%rip), %rax	# img, img.509
	movl	72712(%rax), %ebx	# img.509_13->mb_cr_size_y, D.12264
	movl	$64, %eax	#, tmp217
	cltd
	idivl	%ebx	# D.12264
	movl	%eax, -92(%rbp)	# tmp215, f1_y
	.loc 1 1585 0
	movl	-92(%rbp), %eax	# f1_y, tmp221
	subl	$1, %eax	#, tmp220
	movl	%eax, -88(%rbp)	# tmp220, f2_y
	.loc 1 1587 0
	movl	-100(%rbp), %eax	# f1_x, tmp223
	imull	-92(%rbp), %eax	# f1_y, tmp222
	movl	%eax, -84(%rbp)	# tmp222, f3
	movl	-84(%rbp), %eax	# f3, tmp227
	sarl	%eax	# tmp226
	movl	%eax, -80(%rbp)	# tmp226, f4
	.loc 1 1594 0
	movq	img(%rip), %rax	# img, img.511
	movl	72400(%rax), %eax	# img.511_19->MbaffFrameFlag, D.12264
	testl	%eax, %eax	# D.12264
	je	.L362	#,
	.loc 1 1594 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.512
	movq	14168(%rax), %rdx	# img.512_21->mb_data, D.12265
	movq	img(%rip), %rax	# img, img.513
	movl	12(%rax), %eax	# img.513_23->current_mb_nr, D.12264
	cltq
	imulq	$632, %rax, %rax	#, D.12266, D.12266
	addq	%rdx, %rax	# D.12265, D.12265
	movl	532(%rax), %eax	# _27->mb_field, D.12264
	testl	%eax, %eax	# D.12264
	je	.L362	#,
	.loc 1 1594 0 discriminator 3
	movl	$1, %eax	#, iftmp.510
	jmp	.L363	#
.L362:
	.loc 1 1594 0 discriminator 2
	movl	$0, %eax	#, iftmp.510
.L363:
	.loc 1 1594 0 discriminator 4
	movl	%eax, -76(%rbp)	# iftmp.510, curr_mb_field
	.loc 1 1596 0 is_stmt 1 discriminator 4
	cmpl	$0, -76(%rbp)	#, curr_mb_field
	je	.L364	#,
	.loc 1 1598 0
	movq	img(%rip), %rax	# img, img.514
	movl	12(%rax), %eax	# img.514_32->current_mb_nr, D.12264
	andl	$1, %eax	#, D.12267
	testl	%eax, %eax	# D.12267
	je	.L365	#,
	.loc 1 1599 0
	movl	$4, -108(%rbp)	#, list_offset
	jmp	.L366	#
.L365:
	.loc 1 1601 0
	movl	$2, -108(%rbp)	#, list_offset
.L366:
	.loc 1 1602 0 discriminator 1
	movq	img(%rip), %rax	# img, img.515
	movl	64(%rax), %eax	# img.515_38->height_cr, D.12264
	movl	%eax, %edx	# D.12264, tmp228
	shrl	$31, %edx	#, tmp228
	addl	%edx, %eax	# tmp228, tmp229
	sarl	%eax	# tmp230
	subl	$1, %eax	#, tmp231
	movl	%eax, -104(%rbp)	# tmp231, max_y_cr
	jmp	.L367	#
.L364:
	.loc 1 1606 0
	movl	$0, -108(%rbp)	#, list_offset
	.loc 1 1607 0
	movq	img(%rip), %rax	# img, img.516
	movl	64(%rax), %eax	# img.516_43->height_cr, D.12264
	subl	$1, %eax	#, tmp232
	movl	%eax, -104(%rbp)	# tmp232, max_y_cr
.L367:
	.loc 1 1611 0
	movl	-108(%rbp), %eax	# list_offset, tmp233
	movl	-148(%rbp), %edx	# list_idx, tmp234
	addl	%edx, %eax	# tmp234, D.12264
	cltq
	movq	listX(,%rax,8), %rax	# listX, tmp236
	movq	%rax, -32(%rbp)	# tmp236, list
	.loc 1 1613 0
	movswq	-152(%rbp), %rax	# ref, D.12266
	leaq	0(,%rax,8), %rdx	#, D.12266
	movq	-32(%rbp), %rax	# list, tmp237
	addq	%rdx, %rax	# D.12266, D.12268
	movq	(%rax), %rax	# *_52, D.12269
	movq	6464(%rax), %rax	# _53->imgUV, D.12270
	movl	24(%rbp), %edx	# uv, tmp238
	movslq	%edx, %rdx	# tmp238, D.12266
	salq	$3, %rdx	#, D.12266
	addq	%rdx, %rax	# D.12266, D.12270
	movq	(%rax), %rax	# *_58, tmp239
	movq	%rax, -24(%rbp)	# tmp239, refimage
	.loc 1 1615 0
	movl	$0, -112(%rbp)	#, j
	jmp	.L368	#
.L371:
	.loc 1 1616 0
	movl	$0, -116(%rbp)	#, i
	jmp	.L369	#
.L370:
	.loc 1 1618 0 discriminator 2
	movl	-132(%rbp), %eax	# block_c_x, tmp240
	movl	-116(%rbp), %edx	# i, tmp241
	leal	(%rdx,%rax), %ecx	#, D.12264
	movq	img(%rip), %rax	# img, img.517
	movl	72708(%rax), %eax	# img.517_65->mb_cr_size_x, D.12264
	leal	3(%rax), %edx	#, tmp243
	testl	%eax, %eax	# tmp242
	cmovs	%edx, %eax	# tmp243,, tmp242
	sarl	$2, %eax	#, tmp244
	movl	%eax, %ebx	# tmp244, D.12264
	movl	%ecx, %eax	# D.12264, tmp245
	cltd
	idivl	%ebx	# D.12264
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12266
	movq	-144(%rbp), %rax	# mv, tmp247
	addq	%rdx, %rax	# D.12266, D.12271
	movq	(%rax), %rcx	# *_72, D.12272
	movl	-136(%rbp), %eax	# block_c_y, tmp248
	movl	-112(%rbp), %edx	# j, tmp249
	leal	(%rdx,%rax), %esi	#, D.12264
	movq	img(%rip), %rax	# img, img.518
	movl	72712(%rax), %eax	# img.518_76->mb_cr_size_y, D.12264
	leal	3(%rax), %edx	#, tmp251
	testl	%eax, %eax	# tmp250
	cmovs	%edx, %eax	# tmp251,, tmp250
	sarl	$2, %eax	#, tmp252
	movl	%eax, %ebx	# tmp252, D.12264
	movl	%esi, %eax	# D.12264, tmp253
	cltd
	idivl	%ebx	# D.12264
	cltq
	salq	$3, %rax	#, D.12266
	addq	%rcx, %rax	# D.12272, D.12272
	movq	(%rax), %rax	# *_82, D.12273
	movl	-148(%rbp), %edx	# list_idx, tmp255
	movslq	%edx, %rdx	# tmp255, D.12266
	salq	$3, %rdx	#, D.12266
	addq	%rdx, %rax	# D.12266, D.12273
	movq	(%rax), %rax	# *_86, D.12274
	movswq	-152(%rbp), %rdx	# ref, D.12266
	salq	$3, %rdx	#, D.12266
	addq	%rdx, %rax	# D.12266, D.12274
	movq	(%rax), %rax	# *_90, D.12275
	movl	16(%rbp), %edx	# blocktype, tmp256
	movslq	%edx, %rdx	# tmp256, D.12266
	salq	$3, %rdx	#, D.12266
	addq	%rdx, %rax	# D.12266, D.12275
	movq	(%rax), %rax	# *_95, tmp257
	movq	%rax, -16(%rbp)	# tmp257, mvb
	.loc 1 1620 0 discriminator 2
	movl	-132(%rbp), %eax	# block_c_x, tmp258
	movl	-116(%rbp), %edx	# i, tmp259
	addl	%eax, %edx	# tmp258, D.12264
	movq	img(%rip), %rax	# img, img.519
	movl	176(%rax), %eax	# img.519_98->opix_c_x, D.12264
	addl	%edx, %eax	# D.12264, D.12264
	imull	-100(%rbp), %eax	# f1_x, D.12264
	movl	%eax, %edx	# D.12264, D.12264
	movq	-16(%rbp), %rax	# mvb, tmp260
	movzwl	(%rax), %eax	# *mvb_96, D.12276
	cwtl
	addl	%edx, %eax	# D.12264, tmp261
	movl	%eax, -72(%rbp)	# tmp261, ii
	.loc 1 1621 0 discriminator 2
	movl	-136(%rbp), %eax	# block_c_y, tmp262
	movl	-112(%rbp), %edx	# j, tmp263
	addl	%eax, %edx	# tmp262, D.12264
	movq	img(%rip), %rax	# img, img.520
	movl	180(%rax), %eax	# img.520_106->opix_c_y, D.12264
	addl	%edx, %eax	# D.12264, D.12264
	imull	-92(%rbp), %eax	# f1_y, D.12264
	movl	%eax, %edx	# D.12264, D.12264
	movq	-16(%rbp), %rax	# mvb, tmp264
	addq	$2, %rax	#, D.12277
	movzwl	(%rax), %eax	# *_110, D.12276
	cwtl
	addl	%edx, %eax	# D.12264, tmp265
	movl	%eax, -68(%rbp)	# tmp265, jj
	.loc 1 1623 0 discriminator 2
	movswq	-152(%rbp), %rax	# ref, D.12266
	leaq	0(,%rax,8), %rdx	#, D.12266
	movq	-32(%rbp), %rax	# list, tmp266
	addq	%rdx, %rax	# D.12266, D.12268
	movq	(%rax), %rax	# *_116, D.12269
	movl	6408(%rax), %eax	# _117->chroma_vector_adjustment, D.12264
	addl	%eax, -68(%rbp)	# D.12264, jj
	.loc 1 1625 0 discriminator 2
	movl	-72(%rbp), %eax	# ii, tmp269
	cltd
	idivl	-100(%rbp)	# f1_x
	movq	img(%rip), %rdx	# img, img.521
	movl	56(%rdx), %edx	# img.521_121->width_cr, D.12264
	subl	$1, %edx	#, D.12264
	cmpl	%edx, %eax	# D.12264, D.12264
	cmovg	%edx, %eax	# D.12264,, D.12264, D.12264
	movl	$0, %edx	#, tmp271
	testl	%eax, %eax	# D.12264
	cmovs	%edx, %eax	# D.12264,, tmp271, tmp270
	movl	%eax, -64(%rbp)	# tmp270, ii0
	.loc 1 1626 0 discriminator 2
	movl	-68(%rbp), %eax	# jj, tmp274
	cltd
	idivl	-92(%rbp)	# f1_y
	movl	%eax, %edx	# tmp272, D.12264
	movl	-104(%rbp), %eax	# max_y_cr, tmp275
	cmpl	%eax, %edx	# tmp275, D.12264
	cmovle	%edx, %eax	# D.12264,, D.12264
	movl	$0, %edx	#, tmp277
	testl	%eax, %eax	# D.12264
	cmovs	%edx, %eax	# D.12264,, tmp277, tmp276
	movl	%eax, -60(%rbp)	# tmp276, jj0
	.loc 1 1627 0 discriminator 2
	movl	-96(%rbp), %eax	# f2_x, tmp278
	movl	-72(%rbp), %edx	# ii, tmp279
	addl	%edx, %eax	# tmp279, D.12264
	cltd
	idivl	-100(%rbp)	# f1_x
	movq	img(%rip), %rdx	# img, img.522
	movl	56(%rdx), %edx	# img.522_131->width_cr, D.12264
	subl	$1, %edx	#, D.12264
	cmpl	%edx, %eax	# D.12264, D.12264
	cmovg	%edx, %eax	# D.12264,, D.12264, D.12264
	movl	$0, %edx	#, tmp283
	testl	%eax, %eax	# D.12264
	cmovs	%edx, %eax	# D.12264,, tmp283, tmp282
	movl	%eax, -56(%rbp)	# tmp282, ii1
	.loc 1 1628 0 discriminator 2
	movl	-88(%rbp), %eax	# f2_y, tmp284
	movl	-68(%rbp), %edx	# jj, tmp285
	addl	%edx, %eax	# tmp285, D.12264
	cltd
	idivl	-92(%rbp)	# f1_y
	movl	%eax, %edx	# tmp286, D.12264
	movl	-104(%rbp), %eax	# max_y_cr, tmp288
	cmpl	%eax, %edx	# tmp288, D.12264
	cmovle	%edx, %eax	# D.12264,, D.12264
	movl	$0, %edx	#, tmp290
	testl	%eax, %eax	# D.12264
	cmovs	%edx, %eax	# D.12264,, tmp290, tmp289
	movl	%eax, -52(%rbp)	# tmp289, jj1
	.loc 1 1630 0 discriminator 2
	movl	-96(%rbp), %eax	# f2_x, tmp295
	movl	-72(%rbp), %edx	# ii, tmp296
	andl	%edx, %eax	# tmp296, tmp294
	movl	%eax, -48(%rbp)	# tmp294, if1
	movl	-48(%rbp), %eax	# if1, tmp301
	movl	-100(%rbp), %edx	# f1_x, tmp302
	subl	%eax, %edx	# tmp301, tmp300
	movl	%edx, %eax	# tmp300, tmp300
	movl	%eax, -44(%rbp)	# tmp300, if0
	.loc 1 1631 0 discriminator 2
	movl	-88(%rbp), %eax	# f2_y, tmp307
	movl	-68(%rbp), %edx	# jj, tmp308
	andl	%edx, %eax	# tmp308, tmp306
	movl	%eax, -40(%rbp)	# tmp306, jf1
	movl	-40(%rbp), %eax	# jf1, tmp313
	movl	-92(%rbp), %edx	# f1_y, tmp314
	subl	%eax, %edx	# tmp313, tmp312
	movl	%edx, %eax	# tmp312, tmp312
	movl	%eax, -36(%rbp)	# tmp312, jf0
	.loc 1 1633 0 discriminator 2
	movq	-128(%rbp), %rcx	# mpred, mpred.523
	leaq	4(%rcx), %rax	#, tmp315
	movq	%rax, -128(%rbp)	# tmp315, mpred
	movl	-44(%rbp), %eax	# if0, tmp316
	imull	-36(%rbp), %eax	# jf0, D.12264
	movl	%eax, %edx	# D.12264, D.12264
	movl	-60(%rbp), %eax	# jj0, tmp317
	cltq
	leaq	0(,%rax,8), %rsi	#, D.12266
	movq	-24(%rbp), %rax	# refimage, tmp318
	addq	%rsi, %rax	# D.12266, D.12278
	movq	(%rax), %rax	# *_149, D.12279
	movl	-64(%rbp), %esi	# ii0, tmp319
	movslq	%esi, %rsi	# tmp319, D.12266
	addq	%rsi, %rsi	# D.12266
	addq	%rsi, %rax	# D.12266, D.12279
	movzwl	(%rax), %eax	# *_153, D.12280
	movzwl	%ax, %eax	# D.12280, D.12264
	imull	%eax, %edx	# D.12264, D.12264
	.loc 1 1634 0 discriminator 2
	movl	-48(%rbp), %eax	# if1, tmp320
	imull	-36(%rbp), %eax	# jf0, D.12264
	movl	%eax, %esi	# D.12264, D.12264
	movl	-60(%rbp), %eax	# jj0, tmp321
	cltq
	leaq	0(,%rax,8), %rdi	#, D.12266
	movq	-24(%rbp), %rax	# refimage, tmp322
	addq	%rdi, %rax	# D.12266, D.12278
	movq	(%rax), %rax	# *_160, D.12279
	movl	-56(%rbp), %edi	# ii1, tmp323
	movslq	%edi, %rdi	# tmp323, D.12266
	addq	%rdi, %rdi	# D.12266
	addq	%rdi, %rax	# D.12266, D.12279
	movzwl	(%rax), %eax	# *_164, D.12280
	movzwl	%ax, %eax	# D.12280, D.12264
	imull	%esi, %eax	# D.12264, D.12264
	.loc 1 1633 0 discriminator 2
	leal	(%rdx,%rax), %edi	#, D.12264
	.loc 1 1635 0 discriminator 2
	movl	-44(%rbp), %eax	# if0, tmp324
	imull	-40(%rbp), %eax	# jf1, D.12264
	movl	%eax, %edx	# D.12264, D.12264
	movl	-52(%rbp), %eax	# jj1, tmp325
	cltq
	leaq	0(,%rax,8), %rsi	#, D.12266
	movq	-24(%rbp), %rax	# refimage, tmp326
	addq	%rsi, %rax	# D.12266, D.12278
	movq	(%rax), %rax	# *_172, D.12279
	movl	-64(%rbp), %esi	# ii0, tmp327
	movslq	%esi, %rsi	# tmp327, D.12266
	addq	%rsi, %rsi	# D.12266
	addq	%rsi, %rax	# D.12266, D.12279
	movzwl	(%rax), %eax	# *_176, D.12280
	movzwl	%ax, %eax	# D.12280, D.12264
	imull	%edx, %eax	# D.12264, D.12264
	.loc 1 1634 0 discriminator 2
	addl	%eax, %edi	# D.12264, D.12264
	.loc 1 1636 0 discriminator 2
	movl	-48(%rbp), %eax	# if1, tmp328
	imull	-40(%rbp), %eax	# jf1, D.12264
	movl	%eax, %edx	# D.12264, D.12264
	movl	-52(%rbp), %eax	# jj1, tmp329
	cltq
	leaq	0(,%rax,8), %rsi	#, D.12266
	movq	-24(%rbp), %rax	# refimage, tmp330
	addq	%rsi, %rax	# D.12266, D.12278
	movq	(%rax), %rax	# *_184, D.12279
	movl	-56(%rbp), %esi	# ii1, tmp331
	movslq	%esi, %rsi	# tmp331, D.12266
	addq	%rsi, %rsi	# D.12266
	addq	%rsi, %rax	# D.12266, D.12279
	movzwl	(%rax), %eax	# *_188, D.12280
	movzwl	%ax, %eax	# D.12280, D.12264
	imull	%edx, %eax	# D.12264, D.12264
	.loc 1 1635 0 discriminator 2
	leal	(%rdi,%rax), %edx	#, D.12264
	.loc 1 1636 0 discriminator 2
	movl	-80(%rbp), %eax	# f4, tmp332
	addl	%edx, %eax	# D.12264, D.12264
	cltd
	idivl	-84(%rbp)	# f3
	.loc 1 1633 0 discriminator 2
	movl	%eax, (%rcx)	# D.12264, *mpred.523_144
	.loc 1 1616 0 discriminator 2
	addl	$1, -116(%rbp)	#, i
.L369:
	.loc 1 1616 0 is_stmt 0 discriminator 1
	cmpl	$3, -116(%rbp)	#, i
	jle	.L370	#,
	.loc 1 1615 0 is_stmt 1
	addl	$1, -112(%rbp)	#, j
.L368:
	.loc 1 1615 0 is_stmt 0 discriminator 1
	cmpl	$3, -112(%rbp)	#, j
	jle	.L371	#,
	.loc 1 1638 0 is_stmt 1
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	OneComponentChromaPrediction4x4, .-OneComponentChromaPrediction4x4
	.globl	IntraChromaPrediction4x4
	.type	IntraChromaPrediction4x4, @function
IntraChromaPrediction4x4:
.LFB18:
	.loc 1 1650 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# uv, uv
	movl	%esi, -24(%rbp)	# block_x, block_x
	movl	%edx, -28(%rbp)	# block_y, block_y
	.loc 1 1651 0
	movq	img(%rip), %rax	# img, img.524
	movq	14168(%rax), %rdx	# img.524_3->mb_data, D.12281
	movq	img(%rip), %rax	# img, img.525
	movl	12(%rax), %eax	# img.525_5->current_mb_nr, D.12282
	cltq
	imulq	$632, %rax, %rax	#, D.12283, D.12283
	addq	%rdx, %rax	# D.12281, D.12281
	movl	524(%rax), %eax	# _9->c_ipred_mode, tmp71
	movl	%eax, -4(%rbp)	# tmp71, mode
	.loc 1 1655 0
	movl	-28(%rbp), %eax	# block_y, tmp72
	movl	%eax, -8(%rbp)	# tmp72, j
	jmp	.L373	#
.L376:
	.loc 1 1656 0
	movl	-24(%rbp), %eax	# block_x, tmp73
	movl	%eax, -12(%rbp)	# tmp73, i
	jmp	.L374	#
.L375:
	.loc 1 1658 0 discriminator 2
	movq	img(%rip), %rax	# img, img.526
	movq	img(%rip), %rdx	# img, img.527
	movl	-8(%rbp), %ecx	# j, tmp75
	movslq	%ecx, %rcx	# tmp75, tmp74
	movl	-4(%rbp), %esi	# mode, tmp77
	movslq	%esi, %rsi	# tmp77, tmp76
	movl	-20(%rbp), %edi	# uv, tmp79
	movslq	%edi, %rdi	# tmp79, tmp78
	salq	$2, %rdi	#, tmp80
	addq	%rsi, %rdi	# tmp76, tmp81
	movl	-12(%rbp), %esi	# i, tmp83
	movslq	%esi, %rsi	# tmp83, tmp82
	salq	$4, %rdi	#, tmp84
	addq	%rdi, %rsi	# tmp84, tmp85
	salq	$4, %rsi	#, tmp86
	addq	%rsi, %rcx	# tmp86, tmp87
	addq	$4248, %rcx	#, tmp88
	movzwl	8(%rdx,%rcx,2), %edx	# img.527_18->mprr_c, D.12284
	movl	-8(%rbp), %ecx	# j, tmp90
	movslq	%ecx, %rcx	# tmp90, tmp89
	movl	-12(%rbp), %esi	# i, tmp92
	movslq	%esi, %rsi	# tmp92, tmp91
	salq	$4, %rsi	#, tmp93
	addq	%rsi, %rcx	# tmp93, tmp94
	addq	$6296, %rcx	#, tmp95
	movw	%dx, 8(%rax,%rcx,2)	# D.12284, img.526_17->mpr
	.loc 1 1656 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L374:
	.loc 1 1656 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# block_x, tmp96
	addl	$4, %eax	#, D.12282
	cmpl	-12(%rbp), %eax	# i, D.12282
	jg	.L375	#,
	.loc 1 1655 0 is_stmt 1
	addl	$1, -8(%rbp)	#, j
.L373:
	.loc 1 1655 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# block_y, tmp97
	addl	$4, %eax	#, D.12282
	cmpl	-8(%rbp), %eax	# j, D.12282
	jg	.L376	#,
	.loc 1 1660 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	IntraChromaPrediction4x4, .-IntraChromaPrediction4x4
	.globl	ChromaPrediction4x4
	.type	ChromaPrediction4x4, @function
ChromaPrediction4x4:
.LFB19:
	.loc 1 1679 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$112, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -76(%rbp)	# uv, uv
	movl	%esi, -80(%rbp)	# block_x, block_x
	movl	%edx, -84(%rbp)	# block_y, block_y
	movl	%ecx, -88(%rbp)	# p_dir, p_dir
	movl	%r8d, -92(%rbp)	# fw_mode, fw_mode
	movl	%r9d, -96(%rbp)	# bw_mode, bw_mode
	movl	16(%rbp), %edx	# fw_ref_idx, tmp243
	movl	24(%rbp), %eax	# bw_ref_idx, tmp244
	movw	%dx, -100(%rbp)	# tmp243, fw_ref_idx
	movw	%ax, -104(%rbp)	# tmp244, bw_ref_idx
	.loc 1 1684 0
	movl	-80(%rbp), %eax	# block_x, tmp248
	addl	$4, %eax	#, tmp247
	movl	%eax, -52(%rbp)	# tmp247, block_x4
	.loc 1 1685 0
	movl	-84(%rbp), %eax	# block_y, tmp252
	addl	$4, %eax	#, tmp251
	movl	%eax, -48(%rbp)	# tmp251, block_y4
	.loc 1 1686 0
	movq	$fw_pred.5192, -40(%rbp)	#, fpred
	.loc 1 1687 0
	movq	$bw_pred.5193, -32(%rbp)	#, bpred
	.loc 1 1688 0
	movq	img(%rip), %rax	# img, img.528
	movq	71928(%rax), %rax	# img.528_38->all_mv, tmp253
	movq	%rax, -24(%rbp)	# tmp253, mv_array
	.loc 1 1690 0
	movq	img(%rip), %rax	# img, img.529
	movq	14168(%rax), %rdx	# img.529_40->mb_data, D.12285
	movq	img(%rip), %rax	# img, img.530
	movl	12(%rax), %eax	# img.530_42->current_mb_nr, D.12286
	cltq
	imulq	$632, %rax, %rax	#, D.12287, D.12287
	addq	%rdx, %rax	# D.12285, tmp254
	movq	%rax, -16(%rbp)	# tmp254, currMB
	.loc 1 1692 0
	movq	active_pps(%rip), %rax	# active_pps, active_pps.532
	movl	192(%rax), %eax	# active_pps.532_47->weighted_pred_flag, D.12288
	testl	%eax, %eax	# D.12288
	je	.L378	#,
	.loc 1 1692 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.533
	movl	24(%rax), %eax	# img.533_49->type, D.12286
	testl	%eax, %eax	# D.12286
	je	.L379	#,
	.loc 1 1692 0 discriminator 2
	movq	img(%rip), %rax	# img, img.534
	movl	24(%rax), %eax	# img.534_51->type, D.12286
	cmpl	$3, %eax	#, D.12286
	je	.L379	#,
.L378:
	.loc 1 1693 0 is_stmt 1 discriminator 2
	movq	active_pps(%rip), %rax	# active_pps, active_pps.535
	movl	196(%rax), %eax	# active_pps.535_53->weighted_bipred_idc, D.12289
	.loc 1 1692 0 discriminator 2
	testl	%eax, %eax	# D.12289
	je	.L380	#,
	.loc 1 1693 0
	movq	img(%rip), %rax	# img, img.536
	movl	24(%rax), %eax	# img.536_55->type, D.12286
	cmpl	$1, %eax	#, D.12286
	jne	.L380	#,
.L379:
	.loc 1 1692 0 discriminator 1
	movl	$1, %eax	#, iftmp.531
	jmp	.L381	#
.L380:
	.loc 1 1692 0 is_stmt 0 discriminator 3
	movl	$0, %eax	#, iftmp.531
.L381:
	.loc 1 1692 0 discriminator 4
	movl	%eax, -44(%rbp)	# iftmp.531, apply_weights
	.loc 1 1696 0 is_stmt 1 discriminator 4
	movq	-16(%rbp), %rax	# currMB, tmp255
	movl	580(%rax), %eax	# currMB_46->bi_pred_me, D.12286
	testl	%eax, %eax	# D.12286
	je	.L382	#,
	.loc 1 1696 0 is_stmt 0 discriminator 1
	cmpw	$0, -100(%rbp)	#, fw_ref_idx
	jne	.L382	#,
	cmpw	$0, -104(%rbp)	#, bw_ref_idx
	jne	.L382	#,
	cmpl	$2, -88(%rbp)	#, p_dir
	jne	.L382	#,
	cmpl	$1, -92(%rbp)	#, fw_mode
	jne	.L382	#,
	cmpl	$1, -96(%rbp)	#, bw_mode
	jne	.L382	#,
	.loc 1 1697 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMB, tmp256
	movl	580(%rax), %eax	# currMB_46->bi_pred_me, D.12286
	cmpl	$1, %eax	#, D.12286
	jne	.L383	#,
	.loc 1 1697 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.538
	movq	71936(%rax), %rax	# img.538_67->bipred_mv1, iftmp.537
	jmp	.L384	#
.L383:
	.loc 1 1697 0 discriminator 2
	movq	img(%rip), %rax	# img, img.539
	movq	71944(%rax), %rax	# img.539_69->bipred_mv2, iftmp.537
.L384:
	.loc 1 1697 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.537, mv_array
.L382:
	.loc 1 1701 0 is_stmt 1
	cmpl	$-1, -88(%rbp)	#, p_dir
	jne	.L385	#,
	.loc 1 1703 0
	movl	-84(%rbp), %edx	# block_y, tmp257
	movl	-80(%rbp), %ecx	# block_x, tmp258
	movl	-76(%rbp), %eax	# uv, tmp259
	movl	%ecx, %esi	# tmp258,
	movl	%eax, %edi	# tmp259,
	call	IntraChromaPrediction4x4	#
	.loc 1 1704 0
	jmp	.L377	#
.L385:
	.loc 1 1708 0
	cmpl	$0, -88(%rbp)	#, p_dir
	je	.L387	#,
	.loc 1 1708 0 is_stmt 0 discriminator 1
	cmpl	$2, -88(%rbp)	#, p_dir
	jne	.L388	#,
.L387:
	.loc 1 1710 0 is_stmt 1
	movswl	-100(%rbp), %edi	# fw_ref_idx, D.12286
	movq	-24(%rbp), %rcx	# mv_array, tmp260
	movl	-84(%rbp), %edx	# block_y, tmp261
	movl	-80(%rbp), %eax	# block_x, tmp262
	movl	-76(%rbp), %esi	# uv, tmp263
	movl	%esi, 8(%rsp)	# tmp263,
	movl	-92(%rbp), %esi	# fw_mode, tmp264
	movl	%esi, (%rsp)	# tmp264,
	movl	%edi, %r9d	# D.12286,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp262,
	movl	$fw_pred.5192, %edi	#,
	call	OneComponentChromaPrediction4x4	#
.L388:
	.loc 1 1712 0
	cmpl	$1, -88(%rbp)	#, p_dir
	je	.L389	#,
	.loc 1 1712 0 is_stmt 0 discriminator 1
	cmpl	$2, -88(%rbp)	#, p_dir
	jne	.L390	#,
.L389:
	.loc 1 1714 0 is_stmt 1
	movswl	-104(%rbp), %edi	# bw_ref_idx, D.12286
	movq	-24(%rbp), %rcx	# mv_array, tmp265
	movl	-84(%rbp), %edx	# block_y, tmp266
	movl	-80(%rbp), %eax	# block_x, tmp267
	movl	-76(%rbp), %esi	# uv, tmp268
	movl	%esi, 8(%rsp)	# tmp268,
	movl	-96(%rbp), %esi	# bw_mode, tmp269
	movl	%esi, (%rsp)	# tmp269,
	movl	%edi, %r9d	# D.12286,
	movl	$1, %r8d	#,
	movl	%eax, %esi	# tmp267,
	movl	$bw_pred.5193, %edi	#,
	call	OneComponentChromaPrediction4x4	#
.L390:
	.loc 1 1717 0
	cmpl	$0, -44(%rbp)	#, apply_weights
	je	.L391	#,
	.loc 1 1719 0
	cmpl	$2, -88(%rbp)	#, p_dir
	jne	.L392	#,
	.loc 1 1721 0
	movl	-84(%rbp), %eax	# block_y, tmp270
	movl	%eax, -56(%rbp)	# tmp270, j
	jmp	.L393	#
.L396:
	.loc 1 1722 0
	movl	-80(%rbp), %eax	# block_x, tmp271
	movl	%eax, -60(%rbp)	# tmp271, i
	jmp	.L394	#
.L395:
	.loc 1 1723 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.540
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.541
	movq	(%rax), %rax	# *wbp_weight.541_78, D.12290
	movswq	-100(%rbp), %rdx	# fw_ref_idx, D.12287
	salq	$3, %rdx	#, D.12287
	addq	%rdx, %rax	# D.12287, D.12290
	movq	(%rax), %rax	# *_82, D.12291
	movswq	-104(%rbp), %rdx	# bw_ref_idx, D.12287
	salq	$3, %rdx	#, D.12287
	addq	%rdx, %rax	# D.12287, D.12291
	movq	(%rax), %rax	# *_86, D.12292
	movl	-76(%rbp), %edx	# uv, tmp272
	movslq	%edx, %rdx	# tmp272, D.12293
	addq	$1, %rdx	#, D.12293
	salq	$2, %rdx	#, D.12293
	addq	%rdx, %rax	# D.12293, D.12292
	movl	(%rax), %ecx	# *_91, D.12286
	movq	-40(%rbp), %rax	# fpred, fpred.542
	leaq	4(%rax), %rdx	#, tmp273
	movq	%rdx, -40(%rbp)	# tmp273, fpred
	movl	(%rax), %eax	# *fpred.542_93, D.12286
	imull	%eax, %ecx	# D.12286, D.12286
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.543
	addq	$8, %rax	#, D.12294
	movq	(%rax), %rax	# *_98, D.12290
	movswq	-100(%rbp), %rdx	# fw_ref_idx, D.12287
	salq	$3, %rdx	#, D.12287
	addq	%rdx, %rax	# D.12287, D.12290
	movq	(%rax), %rax	# *_102, D.12291
	movswq	-104(%rbp), %rdx	# bw_ref_idx, D.12287
	salq	$3, %rdx	#, D.12287
	addq	%rdx, %rax	# D.12287, D.12291
	movq	(%rax), %rax	# *_106, D.12292
	movl	-76(%rbp), %edx	# uv, tmp274
	movslq	%edx, %rdx	# tmp274, D.12293
	addq	$1, %rdx	#, D.12293
	salq	$2, %rdx	#, D.12293
	addq	%rdx, %rax	# D.12293, D.12292
	movl	(%rax), %esi	# *_111, D.12286
	movq	-32(%rbp), %rax	# bpred, bpred.544
	leaq	4(%rax), %rdx	#, tmp275
	movq	%rdx, -32(%rbp)	# tmp275, bpred
	movl	(%rax), %eax	# *bpred.544_113, D.12286
	imull	%esi, %eax	# D.12286, D.12286
	leal	(%rcx,%rax), %edx	#, D.12286
	.loc 1 1724 0 discriminator 2
	movl	wp_chroma_round(%rip), %eax	# wp_chroma_round, wp_chroma_round.545
	addl	%eax, %eax	# D.12286
	addl	%eax, %edx	# D.12286, D.12286
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.546
	addl	$1, %eax	#, D.12286
	movl	%edx, %esi	# D.12286, D.12286
	movl	%eax, %ecx	# D.12286, tmp356
	sarl	%cl, %esi	# tmp356, D.12286
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.547
	movq	(%rax), %rax	# *wp_offset.547_124, D.12291
	movswq	-100(%rbp), %rdx	# fw_ref_idx, D.12287
	salq	$3, %rdx	#, D.12287
	addq	%rdx, %rax	# D.12287, D.12291
	movq	(%rax), %rax	# *_128, D.12292
	movl	-76(%rbp), %edx	# uv, tmp276
	movslq	%edx, %rdx	# tmp276, D.12293
	addq	$1, %rdx	#, D.12293
	salq	$2, %rdx	#, D.12293
	addq	%rdx, %rax	# D.12293, D.12292
	movl	(%rax), %edx	# *_133, D.12286
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.548
	addq	$8, %rax	#, D.12290
	movq	(%rax), %rax	# *_136, D.12291
	movswq	-104(%rbp), %rcx	# bw_ref_idx, D.12287
	salq	$3, %rcx	#, D.12287
	addq	%rcx, %rax	# D.12287, D.12291
	movq	(%rax), %rax	# *_140, D.12292
	movl	-76(%rbp), %ecx	# uv, tmp277
	movslq	%ecx, %rcx	# tmp277, D.12293
	addq	$1, %rcx	#, D.12293
	salq	$2, %rcx	#, D.12293
	addq	%rcx, %rax	# D.12293, D.12292
	movl	(%rax), %eax	# *_145, D.12286
	addl	%edx, %eax	# D.12286, D.12286
	addl	$1, %eax	#, D.12286
	sarl	%eax	# D.12286
	.loc 1 1723 0 discriminator 2
	addl	%esi, %eax	# D.12286, D.12286
	movl	%eax, %edi	# D.12286,
	call	clip1a_chr	#
	movl	-56(%rbp), %edx	# j, tmp279
	movslq	%edx, %rdx	# tmp279, tmp278
	movl	-60(%rbp), %ecx	# i, tmp281
	movslq	%ecx, %rcx	# tmp281, tmp280
	salq	$4, %rcx	#, tmp282
	addq	%rcx, %rdx	# tmp282, tmp283
	addq	$6296, %rdx	#, tmp284
	movw	%ax, 8(%rbx,%rdx,2)	# D.12295, img.540_77->mpr
	.loc 1 1722 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L394:
	.loc 1 1722 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp285
	cmpl	-52(%rbp), %eax	# block_x4, tmp285
	jl	.L395	#,
	.loc 1 1721 0 is_stmt 1
	addl	$1, -56(%rbp)	#, j
.L393:
	.loc 1 1721 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp286
	cmpl	-48(%rbp), %eax	# block_y4, tmp286
	jl	.L396	#,
	jmp	.L377	#
.L392:
	.loc 1 1726 0 is_stmt 1
	cmpl	$0, -88(%rbp)	#, p_dir
	jne	.L397	#,
	.loc 1 1728 0
	movl	-84(%rbp), %eax	# block_y, tmp287
	movl	%eax, -56(%rbp)	# tmp287, j
	jmp	.L398	#
.L401:
	.loc 1 1729 0
	movl	-80(%rbp), %eax	# block_x, tmp288
	movl	%eax, -60(%rbp)	# tmp288, i
	jmp	.L399	#
.L400:
	.loc 1 1730 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.549
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.550
	movq	(%rax), %rax	# *wp_weight.550_158, D.12291
	movswq	-100(%rbp), %rdx	# fw_ref_idx, D.12287
	salq	$3, %rdx	#, D.12287
	addq	%rdx, %rax	# D.12287, D.12291
	movq	(%rax), %rax	# *_162, D.12292
	movl	-76(%rbp), %edx	# uv, tmp289
	movslq	%edx, %rdx	# tmp289, D.12293
	addq	$1, %rdx	#, D.12293
	salq	$2, %rdx	#, D.12293
	addq	%rdx, %rax	# D.12293, D.12292
	movl	(%rax), %ecx	# *_167, D.12286
	movq	-40(%rbp), %rax	# fpred, fpred.551
	leaq	4(%rax), %rdx	#, tmp290
	movq	%rdx, -40(%rbp)	# tmp290, fpred
	movl	(%rax), %eax	# *fpred.551_169, D.12286
	imull	%eax, %ecx	# D.12286, D.12286
	movl	%ecx, %edx	# D.12286, D.12286
	movl	wp_chroma_round(%rip), %eax	# wp_chroma_round, wp_chroma_round.552
	addl	%eax, %edx	# wp_chroma_round.552, D.12286
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.553
	movl	%eax, %ecx	# chroma_log_weight_denom.553, tmp359
	sarl	%cl, %edx	# tmp359, D.12286
	movl	%edx, %ecx	# D.12286, D.12286
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.554
	movq	(%rax), %rax	# *wp_offset.554_177, D.12291
	movswq	-100(%rbp), %rdx	# fw_ref_idx, D.12287
	salq	$3, %rdx	#, D.12287
	addq	%rdx, %rax	# D.12287, D.12291
	movq	(%rax), %rax	# *_181, D.12292
	movl	-76(%rbp), %edx	# uv, tmp291
	movslq	%edx, %rdx	# tmp291, D.12293
	addq	$1, %rdx	#, D.12293
	salq	$2, %rdx	#, D.12293
	addq	%rdx, %rax	# D.12293, D.12292
	movl	(%rax), %eax	# *_186, D.12286
	addl	%ecx, %eax	# D.12286, D.12286
	movl	%eax, %edi	# D.12286,
	call	clip1a_chr	#
	movl	-56(%rbp), %edx	# j, tmp293
	movslq	%edx, %rdx	# tmp293, tmp292
	movl	-60(%rbp), %ecx	# i, tmp295
	movslq	%ecx, %rcx	# tmp295, tmp294
	salq	$4, %rcx	#, tmp296
	addq	%rcx, %rdx	# tmp296, tmp297
	addq	$6296, %rdx	#, tmp298
	movw	%ax, 8(%rbx,%rdx,2)	# D.12295, img.549_157->mpr
	.loc 1 1729 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L399:
	.loc 1 1729 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp299
	cmpl	-52(%rbp), %eax	# block_x4, tmp299
	jl	.L400	#,
	.loc 1 1728 0 is_stmt 1
	addl	$1, -56(%rbp)	#, j
.L398:
	.loc 1 1728 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp300
	cmpl	-48(%rbp), %eax	# block_y4, tmp300
	jl	.L401	#,
	jmp	.L377	#
.L397:
	.loc 1 1734 0 is_stmt 1
	movl	-84(%rbp), %eax	# block_y, tmp301
	movl	%eax, -56(%rbp)	# tmp301, j
	jmp	.L402	#
.L405:
	.loc 1 1735 0
	movl	-80(%rbp), %eax	# block_x, tmp302
	movl	%eax, -60(%rbp)	# tmp302, i
	jmp	.L403	#
.L404:
	.loc 1 1736 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.555
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.556
	addq	$8, %rax	#, D.12290
	movq	(%rax), %rax	# *_197, D.12291
	movswq	-104(%rbp), %rdx	# bw_ref_idx, D.12287
	salq	$3, %rdx	#, D.12287
	addq	%rdx, %rax	# D.12287, D.12291
	movq	(%rax), %rax	# *_201, D.12292
	movl	-76(%rbp), %edx	# uv, tmp303
	movslq	%edx, %rdx	# tmp303, D.12293
	addq	$1, %rdx	#, D.12293
	salq	$2, %rdx	#, D.12293
	addq	%rdx, %rax	# D.12293, D.12292
	movl	(%rax), %ecx	# *_206, D.12286
	movq	-32(%rbp), %rax	# bpred, bpred.557
	leaq	4(%rax), %rdx	#, tmp304
	movq	%rdx, -32(%rbp)	# tmp304, bpred
	movl	(%rax), %eax	# *bpred.557_208, D.12286
	imull	%eax, %ecx	# D.12286, D.12286
	movl	%ecx, %edx	# D.12286, D.12286
	movl	wp_chroma_round(%rip), %eax	# wp_chroma_round, wp_chroma_round.558
	addl	%eax, %edx	# wp_chroma_round.558, D.12286
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.559
	movl	%eax, %ecx	# chroma_log_weight_denom.559, tmp362
	sarl	%cl, %edx	# tmp362, D.12286
	movl	%edx, %ecx	# D.12286, D.12286
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.560
	addq	$8, %rax	#, D.12290
	movq	(%rax), %rax	# *_217, D.12291
	movswq	-104(%rbp), %rdx	# bw_ref_idx, D.12287
	salq	$3, %rdx	#, D.12287
	addq	%rdx, %rax	# D.12287, D.12291
	movq	(%rax), %rax	# *_221, D.12292
	movl	-76(%rbp), %edx	# uv, tmp305
	movslq	%edx, %rdx	# tmp305, D.12293
	addq	$1, %rdx	#, D.12293
	salq	$2, %rdx	#, D.12293
	addq	%rdx, %rax	# D.12293, D.12292
	movl	(%rax), %eax	# *_226, D.12286
	addl	%ecx, %eax	# D.12286, D.12286
	movl	%eax, %edi	# D.12286,
	call	clip1a_chr	#
	movl	-56(%rbp), %edx	# j, tmp307
	movslq	%edx, %rdx	# tmp307, tmp306
	movl	-60(%rbp), %ecx	# i, tmp309
	movslq	%ecx, %rcx	# tmp309, tmp308
	salq	$4, %rcx	#, tmp310
	addq	%rcx, %rdx	# tmp310, tmp311
	addq	$6296, %rdx	#, tmp312
	movw	%ax, 8(%rbx,%rdx,2)	# D.12295, img.555_195->mpr
	.loc 1 1735 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L403:
	.loc 1 1735 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp313
	cmpl	-52(%rbp), %eax	# block_x4, tmp313
	jl	.L404	#,
	.loc 1 1734 0 is_stmt 1
	addl	$1, -56(%rbp)	#, j
.L402:
	.loc 1 1734 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp314
	cmpl	-48(%rbp), %eax	# block_y4, tmp314
	jl	.L405	#,
	jmp	.L377	#
.L391:
	.loc 1 1741 0 is_stmt 1
	cmpl	$2, -88(%rbp)	#, p_dir
	jne	.L406	#,
	.loc 1 1743 0
	movl	-84(%rbp), %eax	# block_y, tmp315
	movl	%eax, -56(%rbp)	# tmp315, j
	jmp	.L407	#
.L410:
	.loc 1 1744 0
	movl	-80(%rbp), %eax	# block_x, tmp316
	movl	%eax, -60(%rbp)	# tmp316, i
	jmp	.L408	#
.L409:
	.loc 1 1745 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.561
	movq	-40(%rbp), %rax	# fpred, fpred.562
	leaq	4(%rax), %rcx	#, tmp317
	movq	%rcx, -40(%rbp)	# tmp317, fpred
	movl	(%rax), %esi	# *fpred.562_236, D.12286
	movq	-32(%rbp), %rax	# bpred, bpred.563
	leaq	4(%rax), %rcx	#, tmp318
	movq	%rcx, -32(%rbp)	# tmp318, bpred
	movl	(%rax), %eax	# *bpred.563_239, D.12286
	addl	%esi, %eax	# D.12286, D.12286
	addl	$1, %eax	#, D.12286
	movl	%eax, %ecx	# D.12286, tmp319
	shrl	$31, %ecx	#, tmp319
	addl	%ecx, %eax	# tmp319, tmp320
	sarl	%eax	# tmp321
	movl	-56(%rbp), %ecx	# j, tmp323
	movslq	%ecx, %rcx	# tmp323, tmp322
	movl	-60(%rbp), %esi	# i, tmp325
	movslq	%esi, %rsi	# tmp325, tmp324
	salq	$4, %rsi	#, tmp326
	addq	%rsi, %rcx	# tmp326, tmp327
	addq	$6296, %rcx	#, tmp328
	movw	%ax, 8(%rdx,%rcx,2)	# D.12295, img.561_235->mpr
	.loc 1 1744 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L408:
	.loc 1 1744 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp329
	cmpl	-52(%rbp), %eax	# block_x4, tmp329
	jl	.L409	#,
	.loc 1 1743 0 is_stmt 1
	addl	$1, -56(%rbp)	#, j
.L407:
	.loc 1 1743 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp330
	cmpl	-48(%rbp), %eax	# block_y4, tmp330
	jl	.L410	#,
	jmp	.L377	#
.L406:
	.loc 1 1747 0 is_stmt 1
	cmpl	$0, -88(%rbp)	#, p_dir
	jne	.L411	#,
	.loc 1 1749 0
	movl	-84(%rbp), %eax	# block_y, tmp331
	movl	%eax, -56(%rbp)	# tmp331, j
	jmp	.L412	#
.L415:
	.loc 1 1750 0
	movl	-80(%rbp), %eax	# block_x, tmp332
	movl	%eax, -60(%rbp)	# tmp332, i
	jmp	.L413	#
.L414:
	.loc 1 1750 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.564
	movq	-40(%rbp), %rax	# fpred, fpred.565
	leaq	4(%rax), %rcx	#, tmp333
	movq	%rcx, -40(%rbp)	# tmp333, fpred
	movl	(%rax), %eax	# *fpred.565_251, D.12286
	movl	-56(%rbp), %ecx	# j, tmp335
	movslq	%ecx, %rcx	# tmp335, tmp334
	movl	-60(%rbp), %esi	# i, tmp337
	movslq	%esi, %rsi	# tmp337, tmp336
	salq	$4, %rsi	#, tmp338
	addq	%rsi, %rcx	# tmp338, tmp339
	addq	$6296, %rcx	#, tmp340
	movw	%ax, 8(%rdx,%rcx,2)	# D.12295, img.564_250->mpr
	addl	$1, -60(%rbp)	#, i
.L413:
	.loc 1 1750 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp341
	cmpl	-52(%rbp), %eax	# block_x4, tmp341
	jl	.L414	#,
	.loc 1 1749 0 is_stmt 1
	addl	$1, -56(%rbp)	#, j
.L412:
	.loc 1 1749 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp342
	cmpl	-48(%rbp), %eax	# block_y4, tmp342
	jl	.L415	#,
	jmp	.L377	#
.L411:
	.loc 1 1754 0 is_stmt 1
	movl	-84(%rbp), %eax	# block_y, tmp343
	movl	%eax, -56(%rbp)	# tmp343, j
	jmp	.L416	#
.L419:
	.loc 1 1755 0
	movl	-80(%rbp), %eax	# block_x, tmp344
	movl	%eax, -60(%rbp)	# tmp344, i
	jmp	.L417	#
.L418:
	.loc 1 1755 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.566
	movq	-32(%rbp), %rax	# bpred, bpred.567
	leaq	4(%rax), %rcx	#, tmp345
	movq	%rcx, -32(%rbp)	# tmp345, bpred
	movl	(%rax), %eax	# *bpred.567_260, D.12286
	movl	-56(%rbp), %ecx	# j, tmp347
	movslq	%ecx, %rcx	# tmp347, tmp346
	movl	-60(%rbp), %esi	# i, tmp349
	movslq	%esi, %rsi	# tmp349, tmp348
	salq	$4, %rsi	#, tmp350
	addq	%rsi, %rcx	# tmp350, tmp351
	addq	$6296, %rcx	#, tmp352
	movw	%ax, 8(%rdx,%rcx,2)	# D.12295, img.566_259->mpr
	addl	$1, -60(%rbp)	#, i
.L417:
	.loc 1 1755 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp353
	cmpl	-52(%rbp), %eax	# block_x4, tmp353
	jl	.L418	#,
	.loc 1 1754 0 is_stmt 1
	addl	$1, -56(%rbp)	#, j
.L416:
	.loc 1 1754 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp354
	cmpl	-48(%rbp), %eax	# block_y4, tmp354
	jl	.L419	#,
.L377:
	.loc 1 1758 0 is_stmt 1
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ChromaPrediction4x4, .-ChromaPrediction4x4
	.section	.rodata
	.align 32
.LC0:
	.long	0
	.long	1
	.long	0
	.long	0
	.long	2
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
	.long	1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	0
	.long	2
	.long	3
	.long	0
	.long	0
	.long	2
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	2
	.long	2
	.long	3
	.long	3
	.text
	.globl	ChromaResidualCoding
	.type	ChromaResidualCoding, @function
ChromaResidualCoding:
.LFB20:
	.loc 1 1770 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$288, %rsp	#,
	movq	%rdi, -264(%rbp)	# cr_cbp, cr_cbp
	.loc 1 1774 0
	movq	img(%rip), %rax	# img, img.569
	movq	14168(%rax), %rdx	# img.569_17->mb_data, D.12296
	movq	img(%rip), %rax	# img, img.570
	movl	12(%rax), %eax	# img.570_19->current_mb_nr, D.12297
	cltq
	imulq	$632, %rax, %rax	#, D.12298, D.12298
	addq	%rdx, %rax	# D.12296, D.12296
	movl	72(%rax), %eax	# _23->mb_type, D.12297
	testl	%eax, %eax	# D.12297
	jne	.L421	#,
	.loc 1 1774 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.571
	movl	24(%rax), %eax	# img.571_25->type, D.12297
	testl	%eax, %eax	# D.12297
	je	.L422	#,
	.loc 1 1774 0 discriminator 4
	movq	img(%rip), %rax	# img, img.572
	movl	24(%rax), %eax	# img.572_27->type, D.12297
	cmpl	$3, %eax	#, D.12297
	jne	.L421	#,
.L422:
	.loc 1 1774 0 discriminator 3
	movl	$1, %eax	#, iftmp.568
	jmp	.L423	#
.L421:
	.loc 1 1774 0 discriminator 2
	movl	$0, %eax	#, iftmp.568
.L423:
	.loc 1 1774 0 discriminator 5
	movl	%eax, -220(%rbp)	# iftmp.568, skipped
	.loc 1 1775 0 is_stmt 1 discriminator 5
	movq	img(%rip), %rax	# img, img.573
	movl	72700(%rax), %eax	# img.573_32->yuv_format, D.12297
	subl	$1, %eax	#, tmp324
	movl	%eax, -216(%rbp)	# tmp324, yuv
	.loc 1 1777 0 discriminator 5
	leaq	-192(%rbp), %rdx	#, tmp325
	movl	$.LC0, %esi	#, tmp326
	movl	$24, %eax	#, tmp327
	movq	%rdx, %rdi	# tmp325, tmp325
	movq	%rax, %rcx	# tmp327, tmp327
	rep movsq
	.loc 1 1795 0 discriminator 5
	movq	-264(%rbp), %rax	# cr_cbp, tmp328
	movl	$0, (%rax)	#, *cr_cbp_35(D)
	movl	$0, -240(%rbp)	#, uv
	jmp	.L424	#
.L469:
	.loc 1 1798 0
	movl	$0, -212(%rbp)	#, block8
	.loc 1 1799 0
	movl	$0, -236(%rbp)	#, block_y
	jmp	.L425	#
.L428:
	.loc 1 1800 0
	movl	$0, -232(%rbp)	#, block_x
	jmp	.L426	#
.L427:
	.loc 1 1802 0 discriminator 2
	movl	-236(%rbp), %eax	# block_y, tmp329
	sarl	$2, %eax	#, D.12297
	movl	%eax, %esi	# D.12297, D.12297
	movl	-232(%rbp), %eax	# block_x, tmp330
	sarl	$2, %eax	#, D.12297
	cltq
	movl	-216(%rbp), %edx	# yuv, tmp333
	movslq	%edx, %rcx	# tmp333, tmp332
	movslq	%esi, %rdx	# D.12297, tmp334
	salq	$2, %rcx	#, tmp335
	addq	%rcx, %rdx	# tmp335, tmp336
	salq	$2, %rdx	#, tmp337
	addq	%rdx, %rax	# tmp337, tmp338
	movl	-192(%rbp,%rax,4), %eax	# block8x8_idx, tmp339
	movl	%eax, -212(%rbp)	# tmp339, block8
	.loc 1 1803 0 discriminator 2
	leaq	-250(%rbp), %r8	#, tmp340
	leaq	-252(%rbp), %rdi	#, tmp341
	leaq	-244(%rbp), %rcx	#, tmp342
	leaq	-248(%rbp), %rdx	#, tmp343
	leaq	-254(%rbp), %rsi	#, tmp344
	movl	-212(%rbp), %eax	# block8, tmp345
	movq	%r8, %r9	# tmp340,
	movq	%rdi, %r8	# tmp341,
	movl	%eax, %edi	# tmp345,
	call	SetModesAndRefframe	#
	.loc 1 1805 0 discriminator 2
	movzwl	-250(%rbp), %eax	# bw_ref, bw_ref.574
	movswl	%ax, %r8d	# bw_ref.574, D.12297
	movzwl	-252(%rbp), %eax	# refframe, refframe.575
	movswl	%ax, %edi	# refframe.575, D.12297
	movl	-244(%rbp), %r9d	# bw_mode, bw_mode.576
	movl	-248(%rbp), %r10d	# fw_mode, fw_mode.577
	movzwl	-254(%rbp), %eax	# p_dir, p_dir.578
	movswl	%ax, %ecx	# p_dir.578, D.12297
	movl	-236(%rbp), %edx	# block_y, tmp346
	movl	-232(%rbp), %esi	# block_x, tmp347
	movl	-240(%rbp), %eax	# uv, tmp348
	movl	%r8d, 8(%rsp)	# D.12297,
	movl	%edi, (%rsp)	# D.12297,
	movl	%r10d, %r8d	# fw_mode.577,
	movl	%eax, %edi	# tmp348,
	call	ChromaPrediction4x4	#
	.loc 1 1800 0 discriminator 2
	addl	$4, -232(%rbp)	#, block_x
.L426:
	.loc 1 1800 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.579
	movl	72708(%rax), %eax	# img.579_42->mb_cr_size_x, D.12297
	cmpl	-232(%rbp), %eax	# block_x, D.12297
	jg	.L427	#,
	.loc 1 1799 0 is_stmt 1
	addl	$4, -236(%rbp)	#, block_y
.L425:
	.loc 1 1799 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.580
	movl	72712(%rax), %eax	# img.580_39->mb_cr_size_y, D.12297
	cmpl	-236(%rbp), %eax	# block_y, D.12297
	jg	.L428	#,
	.loc 1 1809 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.581
	movl	72392(%rax), %eax	# img.581_57->NoResidueDirect, D.12297
	testl	%eax, %eax	# D.12297
	je	.L429	#,
	.loc 1 1811 0
	movl	$0, -228(%rbp)	#, j
	jmp	.L430	#
.L436:
	.loc 1 1812 0
	movl	$0, -224(%rbp)	#, i
	jmp	.L431	#
.L435:
	.loc 1 1815 0
	movq	img(%rip), %rax	# img, img.582
	movl	72724(%rax), %eax	# img.582_65->residue_transform_flag, D.12297
	testl	%eax, %eax	# D.12297
	jne	.L432	#,
	.loc 1 1817 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.583
	movq	6464(%rax), %rax	# enc_picture.583_67->imgUV, D.12299
	movl	-240(%rbp), %edx	# uv, tmp349
	movslq	%edx, %rdx	# tmp349, D.12298
	salq	$3, %rdx	#, D.12298
	addq	%rdx, %rax	# D.12298, D.12299
	movq	(%rax), %rdx	# *_71, D.12300
	movq	img(%rip), %rax	# img, img.584
	movl	164(%rax), %ecx	# img.584_73->pix_c_y, D.12297
	movl	-228(%rbp), %eax	# j, tmp350
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	salq	$3, %rax	#, D.12298
	addq	%rdx, %rax	# D.12300, D.12300
	movq	(%rax), %rdx	# *_78, D.12301
	movq	img(%rip), %rax	# img, img.585
	movl	160(%rax), %ecx	# img.585_80->pix_c_x, D.12297
	movl	-224(%rbp), %eax	# i, tmp351
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	addq	%rax, %rax	# D.12298
	addq	%rax, %rdx	# D.12298, D.12301
	movq	img(%rip), %rax	# img, img.586
	movl	-228(%rbp), %ecx	# j, tmp353
	movslq	%ecx, %rcx	# tmp353, tmp352
	movl	-224(%rbp), %esi	# i, tmp355
	movslq	%esi, %rsi	# tmp355, tmp354
	salq	$4, %rsi	#, tmp356
	addq	%rsi, %rcx	# tmp356, tmp357
	addq	$6296, %rcx	#, tmp358
	movzwl	8(%rax,%rcx,2), %eax	# img.586_86->mpr, D.12302
	movw	%ax, (%rdx)	# D.12302, *_85
	jmp	.L433	#
.L432:
	.loc 1 1821 0
	cmpl	$0, -240(%rbp)	#, uv
	jne	.L434	#,
	.loc 1 1821 0 is_stmt 0 discriminator 1
	movl	-228(%rbp), %eax	# j, tmp360
	cltq
	movl	-224(%rbp), %edx	# i, tmp362
	movslq	%edx, %rdx	# tmp362, tmp361
	salq	$4, %rdx	#, tmp363
	addq	%rdx, %rax	# tmp363, tmp364
	movl	$0, rec_resR(,%rax,4)	#, rec_resR
	jmp	.L433	#
.L434:
	.loc 1 1822 0 is_stmt 1
	movl	-228(%rbp), %eax	# j, tmp366
	cltq
	movl	-224(%rbp), %edx	# i, tmp368
	movslq	%edx, %rdx	# tmp368, tmp367
	salq	$4, %rdx	#, tmp369
	addq	%rdx, %rax	# tmp369, tmp370
	movl	$0, rec_resB(,%rax,4)	#, rec_resB
.L433:
	.loc 1 1812 0
	addl	$1, -224(%rbp)	#, i
.L431:
	.loc 1 1812 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.587
	movl	72708(%rax), %eax	# img.587_63->mb_cr_size_x, D.12297
	cmpl	-224(%rbp), %eax	# i, D.12297
	jg	.L435	#,
	.loc 1 1811 0 is_stmt 1
	addl	$1, -228(%rbp)	#, j
.L430:
	.loc 1 1811 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.588
	movl	72712(%rax), %eax	# img.588_60->mb_cr_size_y, D.12297
	cmpl	-228(%rbp), %eax	# j, D.12297
	jg	.L436	#,
	jmp	.L437	#
.L429:
	.loc 1 1827 0 is_stmt 1
	cmpl	$0, -220(%rbp)	#, skipped
	je	.L438	#,
	.loc 1 1827 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.589
	movl	24(%rax), %eax	# img.589_90->type, D.12297
	cmpl	$3, %eax	#, D.12297
	jne	.L438	#,
	.loc 1 1829 0 is_stmt 1
	movl	$0, -228(%rbp)	#, j
	jmp	.L439	#
.L442:
	.loc 1 1830 0
	movl	$0, -224(%rbp)	#, i
	jmp	.L440	#
.L441:
	.loc 1 1832 0 discriminator 2
	movq	img(%rip), %rax	# img, img.590
	movl	-228(%rbp), %edx	# j, tmp372
	movslq	%edx, %rdx	# tmp372, tmp371
	movl	-224(%rbp), %ecx	# i, tmp374
	movslq	%ecx, %rcx	# tmp374, tmp373
	salq	$4, %rcx	#, tmp375
	addq	%rcx, %rdx	# tmp375, tmp376
	addq	$3276, %rdx	#, tmp377
	movl	$0, 8(%rax,%rdx,4)	#, img.590_94->m7
	.loc 1 1830 0 discriminator 2
	addl	$1, -224(%rbp)	#, i
.L440:
	.loc 1 1830 0 is_stmt 0 discriminator 1
	cmpl	$7, -224(%rbp)	#, i
	jle	.L441	#,
	.loc 1 1829 0 is_stmt 1
	addl	$1, -228(%rbp)	#, j
.L439:
	.loc 1 1829 0 is_stmt 0 discriminator 1
	cmpl	$7, -228(%rbp)	#, j
	jle	.L442	#,
	.loc 1 1827 0 is_stmt 1
	jmp	.L437	#
.L438:
	.loc 1 1836 0
	cmpl	$0, -220(%rbp)	#, skipped
	je	.L443	#,
	.loc 1 1838 0
	movl	$0, -228(%rbp)	#, j
	jmp	.L444	#
.L450:
	.loc 1 1839 0
	movl	$0, -224(%rbp)	#, i
	jmp	.L445	#
.L449:
	.loc 1 1842 0
	movq	img(%rip), %rax	# img, img.591
	movl	72724(%rax), %eax	# img.591_103->residue_transform_flag, D.12297
	testl	%eax, %eax	# D.12297
	jne	.L446	#,
	.loc 1 1844 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.592
	movq	6464(%rax), %rax	# enc_picture.592_105->imgUV, D.12299
	movl	-240(%rbp), %edx	# uv, tmp378
	movslq	%edx, %rdx	# tmp378, D.12298
	salq	$3, %rdx	#, D.12298
	addq	%rdx, %rax	# D.12298, D.12299
	movq	(%rax), %rdx	# *_109, D.12300
	movq	img(%rip), %rax	# img, img.593
	movl	164(%rax), %ecx	# img.593_111->pix_c_y, D.12297
	movl	-228(%rbp), %eax	# j, tmp379
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	salq	$3, %rax	#, D.12298
	addq	%rdx, %rax	# D.12300, D.12300
	movq	(%rax), %rdx	# *_116, D.12301
	movq	img(%rip), %rax	# img, img.594
	movl	160(%rax), %ecx	# img.594_118->pix_c_x, D.12297
	movl	-224(%rbp), %eax	# i, tmp380
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	addq	%rax, %rax	# D.12298
	addq	%rax, %rdx	# D.12298, D.12301
	movq	img(%rip), %rax	# img, img.595
	movl	-228(%rbp), %ecx	# j, tmp382
	movslq	%ecx, %rcx	# tmp382, tmp381
	movl	-224(%rbp), %esi	# i, tmp384
	movslq	%esi, %rsi	# tmp384, tmp383
	salq	$4, %rsi	#, tmp385
	addq	%rsi, %rcx	# tmp385, tmp386
	addq	$6296, %rcx	#, tmp387
	movzwl	8(%rax,%rcx,2), %eax	# img.595_124->mpr, D.12302
	movw	%ax, (%rdx)	# D.12302, *_123
	jmp	.L447	#
.L446:
	.loc 1 1848 0
	cmpl	$0, -240(%rbp)	#, uv
	jne	.L448	#,
	.loc 1 1848 0 is_stmt 0 discriminator 1
	movl	-228(%rbp), %eax	# j, tmp389
	cltq
	movl	-224(%rbp), %edx	# i, tmp391
	movslq	%edx, %rdx	# tmp391, tmp390
	salq	$4, %rdx	#, tmp392
	addq	%rdx, %rax	# tmp392, tmp393
	movl	$0, rec_resR(,%rax,4)	#, rec_resR
	jmp	.L447	#
.L448:
	.loc 1 1849 0 is_stmt 1
	movl	-228(%rbp), %eax	# j, tmp395
	cltq
	movl	-224(%rbp), %edx	# i, tmp397
	movslq	%edx, %rdx	# tmp397, tmp396
	salq	$4, %rdx	#, tmp398
	addq	%rdx, %rax	# tmp398, tmp399
	movl	$0, rec_resB(,%rax,4)	#, rec_resB
.L447:
	.loc 1 1839 0
	addl	$1, -224(%rbp)	#, i
.L445:
	.loc 1 1839 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.596
	movl	72708(%rax), %eax	# img.596_101->mb_cr_size_x, D.12297
	cmpl	-224(%rbp), %eax	# i, D.12297
	jg	.L449	#,
	.loc 1 1838 0 is_stmt 1
	addl	$1, -228(%rbp)	#, j
.L444:
	.loc 1 1838 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.597
	movl	72712(%rax), %eax	# img.597_98->mb_cr_size_y, D.12297
	cmpl	-228(%rbp), %eax	# j, D.12297
	jg	.L450	#,
	jmp	.L437	#
.L443:
	.loc 1 1855 0 is_stmt 1
	movl	$0, -228(%rbp)	#, j
	jmp	.L451	#
.L457:
	.loc 1 1856 0
	movl	$0, -224(%rbp)	#, i
	jmp	.L452	#
.L456:
	.loc 1 1859 0
	movq	img(%rip), %rax	# img, img.598
	movl	72724(%rax), %eax	# img.598_134->residue_transform_flag, D.12297
	testl	%eax, %eax	# D.12297
	jne	.L453	#,
	.loc 1 1861 0
	movq	img(%rip), %rax	# img, img.599
	movq	imgUV_org(%rip), %rdx	# imgUV_org, imgUV_org.600
	movl	-240(%rbp), %ecx	# uv, tmp400
	movslq	%ecx, %rcx	# tmp400, D.12298
	salq	$3, %rcx	#, D.12298
	addq	%rcx, %rdx	# D.12298, D.12299
	movq	(%rdx), %rcx	# *_140, D.12300
	movq	img(%rip), %rdx	# img, img.601
	movl	180(%rdx), %esi	# img.601_142->opix_c_y, D.12297
	movl	-228(%rbp), %edx	# j, tmp401
	addl	%esi, %edx	# D.12297, D.12297
	movslq	%edx, %rdx	# D.12297, D.12298
	salq	$3, %rdx	#, D.12298
	addq	%rcx, %rdx	# D.12300, D.12300
	movq	(%rdx), %rcx	# *_147, D.12301
	movq	img(%rip), %rdx	# img, img.602
	movl	176(%rdx), %esi	# img.602_149->opix_c_x, D.12297
	movl	-224(%rbp), %edx	# i, tmp402
	addl	%esi, %edx	# D.12297, D.12297
	movslq	%edx, %rdx	# D.12297, D.12298
	addq	%rdx, %rdx	# D.12298
	addq	%rcx, %rdx	# D.12301, D.12301
	movzwl	(%rdx), %edx	# *_154, D.12302
	movzwl	%dx, %ecx	# D.12302, D.12297
	movq	img(%rip), %rdx	# img, img.603
	movl	-228(%rbp), %esi	# j, tmp404
	movslq	%esi, %rsi	# tmp404, tmp403
	movl	-224(%rbp), %edi	# i, tmp406
	movslq	%edi, %rdi	# tmp406, tmp405
	salq	$4, %rdi	#, tmp407
	addq	%rdi, %rsi	# tmp407, tmp408
	addq	$6296, %rsi	#, tmp409
	movzwl	8(%rdx,%rsi,2), %edx	# img.603_157->mpr, D.12302
	movzwl	%dx, %edx	# D.12302, D.12297
	subl	%edx, %ecx	# D.12297, D.12297
	movl	-228(%rbp), %edx	# j, tmp411
	movslq	%edx, %rdx	# tmp411, tmp410
	movl	-224(%rbp), %esi	# i, tmp413
	movslq	%esi, %rsi	# tmp413, tmp412
	salq	$4, %rsi	#, tmp414
	addq	%rsi, %rdx	# tmp414, tmp415
	addq	$3276, %rdx	#, tmp416
	movl	%ecx, 8(%rax,%rdx,4)	# D.12297, img.599_136->m7
	jmp	.L454	#
.L453:
	.loc 1 1864 0
	cmpl	$0, -240(%rbp)	#, uv
	jne	.L455	#,
	.loc 1 1864 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.604
	movl	-228(%rbp), %edx	# j, tmp418
	movslq	%edx, %rdx	# tmp418, tmp417
	movl	-224(%rbp), %ecx	# i, tmp420
	movslq	%ecx, %rcx	# tmp420, tmp419
	salq	$4, %rcx	#, tmp421
	addq	%rcx, %rdx	# tmp421, tmp422
	movl	resTrans_R(,%rdx,4), %edx	# resTrans_R, D.12297
	movl	-228(%rbp), %ecx	# j, tmp424
	movslq	%ecx, %rcx	# tmp424, tmp423
	movl	-224(%rbp), %esi	# i, tmp426
	movslq	%esi, %rsi	# tmp426, tmp425
	salq	$4, %rsi	#, tmp427
	addq	%rsi, %rcx	# tmp427, tmp428
	addq	$3276, %rcx	#, tmp429
	movl	%edx, 8(%rax,%rcx,4)	# D.12297, img.604_161->m7
	jmp	.L454	#
.L455:
	.loc 1 1865 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.605
	movl	-228(%rbp), %edx	# j, tmp431
	movslq	%edx, %rdx	# tmp431, tmp430
	movl	-224(%rbp), %ecx	# i, tmp433
	movslq	%ecx, %rcx	# tmp433, tmp432
	salq	$4, %rcx	#, tmp434
	addq	%rcx, %rdx	# tmp434, tmp435
	movl	resTrans_B(,%rdx,4), %edx	# resTrans_B, D.12297
	movl	-228(%rbp), %ecx	# j, tmp437
	movslq	%ecx, %rcx	# tmp437, tmp436
	movl	-224(%rbp), %esi	# i, tmp439
	movslq	%esi, %rsi	# tmp439, tmp438
	salq	$4, %rsi	#, tmp440
	addq	%rsi, %rcx	# tmp440, tmp441
	addq	$3276, %rcx	#, tmp442
	movl	%edx, 8(%rax,%rcx,4)	# D.12297, img.605_163->m7
.L454:
	.loc 1 1856 0
	addl	$1, -224(%rbp)	#, i
.L452:
	.loc 1 1856 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.606
	movl	72708(%rax), %eax	# img.606_132->mb_cr_size_x, D.12297
	cmpl	-224(%rbp), %eax	# i, D.12297
	jg	.L456	#,
	.loc 1 1855 0 is_stmt 1
	addl	$1, -228(%rbp)	#, j
.L451:
	.loc 1 1855 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.607
	movl	72712(%rax), %eax	# img.607_129->mb_cr_size_y, D.12297
	cmpl	-228(%rbp), %eax	# j, D.12297
	jg	.L457	#,
.L437:
	.loc 1 1873 0 is_stmt 1
	cmpl	$0, -220(%rbp)	#, skipped
	je	.L458	#,
	.loc 1 1873 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.608
	movl	24(%rax), %eax	# img.608_167->type, D.12297
	cmpl	$3, %eax	#, D.12297
	jne	.L458	#,
	.loc 1 1875 0 is_stmt 1
	movq	-264(%rbp), %rax	# cr_cbp, tmp443
	movl	(%rax), %edx	# *cr_cbp_35(D), D.12297
	movl	-240(%rbp), %eax	# uv, tmp444
	movl	%edx, %esi	# D.12297,
	movl	%eax, %edi	# tmp444,
	call	dct_chroma_sp	#
	movq	-264(%rbp), %rdx	# cr_cbp, tmp445
	movl	%eax, (%rdx)	# D.12297, *cr_cbp_35(D)
	jmp	.L459	#
.L458:
	.loc 1 1879 0
	movq	img(%rip), %rax	# img, img.609
	movl	72392(%rax), %eax	# img.609_171->NoResidueDirect, D.12297
	testl	%eax, %eax	# D.12297
	jne	.L459	#,
	.loc 1 1879 0 is_stmt 0 discriminator 1
	cmpl	$0, -220(%rbp)	#, skipped
	jne	.L459	#,
	.loc 1 1881 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.610
	movl	24(%rax), %eax	# img.610_173->type, D.12297
	cmpl	$3, %eax	#, D.12297
	jne	.L460	#,
	.loc 1 1881 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.611
	movq	14168(%rax), %rdx	# img.611_175->mb_data, D.12296
	movq	img(%rip), %rax	# img, img.612
	movl	12(%rax), %eax	# img.612_177->current_mb_nr, D.12297
	cltq
	imulq	$632, %rax, %rax	#, D.12298, D.12298
	addq	%rdx, %rax	# D.12296, D.12296
	movl	72(%rax), %eax	# _181->mb_type, D.12297
	cmpl	$9, %eax	#, D.12297
	je	.L460	#,
	movq	img(%rip), %rax	# img, img.613
	movq	14168(%rax), %rdx	# img.613_183->mb_data, D.12296
	movq	img(%rip), %rax	# img, img.614
	movl	12(%rax), %eax	# img.614_185->current_mb_nr, D.12297
	cltq
	imulq	$632, %rax, %rax	#, D.12298, D.12298
	addq	%rdx, %rax	# D.12296, D.12296
	movl	72(%rax), %eax	# _189->mb_type, D.12297
	cmpl	$10, %eax	#, D.12297
	je	.L460	#,
	movq	img(%rip), %rax	# img, img.615
	movq	14168(%rax), %rdx	# img.615_191->mb_data, D.12296
	movq	img(%rip), %rax	# img, img.616
	movl	12(%rax), %eax	# img.616_193->current_mb_nr, D.12297
	cltq
	imulq	$632, %rax, %rax	#, D.12298, D.12298
	addq	%rdx, %rax	# D.12296, D.12296
	movl	72(%rax), %eax	# _197->mb_type, D.12297
	cmpl	$13, %eax	#, D.12297
	jne	.L461	#,
.L460:
	.loc 1 1882 0 is_stmt 1
	movq	-264(%rbp), %rax	# cr_cbp, tmp446
	movl	(%rax), %edx	# *cr_cbp_35(D), D.12297
	movl	-240(%rbp), %eax	# uv, tmp447
	movl	%edx, %esi	# D.12297,
	movl	%eax, %edi	# tmp447,
	call	dct_chroma	#
	movq	-264(%rbp), %rdx	# cr_cbp, tmp448
	movl	%eax, (%rdx)	# D.12297, *cr_cbp_35(D)
	jmp	.L462	#
.L461:
	.loc 1 1884 0
	movq	-264(%rbp), %rax	# cr_cbp, tmp449
	movl	(%rax), %edx	# *cr_cbp_35(D), D.12297
	movl	-240(%rbp), %eax	# uv, tmp450
	movl	%edx, %esi	# D.12297,
	movl	%eax, %edi	# tmp450,
	call	dct_chroma_sp	#
	movq	-264(%rbp), %rdx	# cr_cbp, tmp451
	movl	%eax, (%rdx)	# D.12297, *cr_cbp_35(D)
.L462:
	.loc 1 1886 0
	movq	img(%rip), %rax	# img, img.617
	movl	72724(%rax), %eax	# img.617_203->residue_transform_flag, D.12297
	testl	%eax, %eax	# D.12297
	je	.L459	#,
	.loc 1 1887 0
	movl	$0, -228(%rbp)	#, j
	jmp	.L463	#
.L468:
	.loc 1 1888 0
	movl	$0, -224(%rbp)	#, i
	jmp	.L464	#
.L467:
	.loc 1 1889 0
	cmpl	$0, -240(%rbp)	#, uv
	jne	.L465	#,
	.loc 1 1890 0
	movq	img(%rip), %rax	# img, img.618
	movl	-228(%rbp), %edx	# j, tmp453
	movslq	%edx, %rdx	# tmp453, tmp452
	movl	-224(%rbp), %ecx	# i, tmp455
	movslq	%ecx, %rcx	# tmp455, tmp454
	salq	$4, %rcx	#, tmp456
	addq	%rcx, %rdx	# tmp456, tmp457
	addq	$3276, %rdx	#, tmp458
	movl	8(%rax,%rdx,4), %eax	# img.618_211->m7, D.12297
	movl	-228(%rbp), %edx	# j, tmp460
	movslq	%edx, %rdx	# tmp460, tmp459
	movl	-224(%rbp), %ecx	# i, tmp462
	movslq	%ecx, %rcx	# tmp462, tmp461
	salq	$4, %rcx	#, tmp463
	addq	%rcx, %rdx	# tmp463, tmp464
	movl	%eax, rec_resR(,%rdx,4)	# D.12297, rec_resR
	jmp	.L466	#
.L465:
	.loc 1 1892 0
	movq	img(%rip), %rax	# img, img.619
	movl	-228(%rbp), %edx	# j, tmp466
	movslq	%edx, %rdx	# tmp466, tmp465
	movl	-224(%rbp), %ecx	# i, tmp468
	movslq	%ecx, %rcx	# tmp468, tmp467
	salq	$4, %rcx	#, tmp469
	addq	%rcx, %rdx	# tmp469, tmp470
	addq	$3276, %rdx	#, tmp471
	movl	8(%rax,%rdx,4), %eax	# img.619_213->m7, D.12297
	movl	-228(%rbp), %edx	# j, tmp473
	movslq	%edx, %rdx	# tmp473, tmp472
	movl	-224(%rbp), %ecx	# i, tmp475
	movslq	%ecx, %rcx	# tmp475, tmp474
	salq	$4, %rcx	#, tmp476
	addq	%rcx, %rdx	# tmp476, tmp477
	movl	%eax, rec_resB(,%rdx,4)	# D.12297, rec_resB
.L466:
	.loc 1 1888 0
	addl	$1, -224(%rbp)	#, i
.L464:
	.loc 1 1888 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.620
	movl	72708(%rax), %eax	# img.620_209->mb_cr_size_x, D.12297
	cmpl	-224(%rbp), %eax	# i, D.12297
	jg	.L467	#,
	.loc 1 1887 0 is_stmt 1
	addl	$1, -228(%rbp)	#, j
.L463:
	.loc 1 1887 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.621
	movl	72712(%rax), %eax	# img.621_206->mb_cr_size_y, D.12297
	cmpl	-228(%rbp), %eax	# j, D.12297
	jg	.L468	#,
.L459:
	.loc 1 1795 0 is_stmt 1
	addl	$1, -240(%rbp)	#, uv
.L424:
	.loc 1 1795 0 is_stmt 0 discriminator 1
	cmpl	$1, -240(%rbp)	#, uv
	jle	.L469	#,
	.loc 1 1899 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.622
	movq	14168(%rax), %rdx	# img.622_218->mb_data, D.12296
	movq	img(%rip), %rax	# img, img.623
	movl	12(%rax), %eax	# img.623_220->current_mb_nr, D.12297
	cltq
	imulq	$632, %rax, %rax	#, D.12298, D.12298
	addq	%rax, %rdx	# D.12298, D.12296
	movq	img(%rip), %rax	# img, img.624
	movq	14168(%rax), %rcx	# img.624_225->mb_data, D.12296
	movq	img(%rip), %rax	# img, img.625
	movl	12(%rax), %eax	# img.625_227->current_mb_nr, D.12297
	cltq
	imulq	$632, %rax, %rax	#, D.12298, D.12298
	addq	%rcx, %rax	# D.12296, D.12296
	movl	460(%rax), %ecx	# _231->cbp, D.12297
	movq	-264(%rbp), %rax	# cr_cbp, tmp478
	movl	(%rax), %eax	# *cr_cbp_35(D), D.12297
	sall	$4, %eax	#, D.12297
	addl	%ecx, %eax	# D.12297, D.12297
	movl	%eax, 460(%rdx)	# D.12297, _224->cbp
	.loc 1 1903 0
	movq	img(%rip), %rax	# img, img.626
	movl	72724(%rax), %eax	# img.626_236->residue_transform_flag, D.12297
	testl	%eax, %eax	# D.12297
	je	.L420	#,
	.loc 1 1905 0
	movl	$0, -228(%rbp)	#, j
	jmp	.L471	#
.L474:
	.loc 1 1906 0
	movl	$0, -224(%rbp)	#, i
	jmp	.L472	#
.L473:
	.loc 1 1909 0 discriminator 2
	movl	-228(%rbp), %eax	# j, tmp480
	cltq
	movl	-224(%rbp), %edx	# i, tmp482
	movslq	%edx, %rdx	# tmp482, tmp481
	salq	$4, %rdx	#, tmp483
	addq	%rdx, %rax	# tmp483, tmp484
	movl	rec_resG(,%rax,4), %eax	# rec_resG, D.12297
	movl	-228(%rbp), %edx	# j, tmp486
	movslq	%edx, %rdx	# tmp486, tmp485
	movl	-224(%rbp), %ecx	# i, tmp488
	movslq	%ecx, %rcx	# tmp488, tmp487
	salq	$4, %rcx	#, tmp489
	addq	%rcx, %rdx	# tmp489, tmp490
	movl	rec_resB(,%rdx,4), %edx	# rec_resB, D.12297
	sarl	%edx	# D.12297
	subl	%edx, %eax	# D.12297, tmp491
	movl	%eax, -208(%rbp)	# tmp491, temp
	.loc 1 1910 0 discriminator 2
	movl	-228(%rbp), %eax	# j, tmp493
	cltq
	movl	-224(%rbp), %edx	# i, tmp495
	movslq	%edx, %rdx	# tmp495, tmp494
	salq	$4, %rdx	#, tmp496
	addq	%rdx, %rax	# tmp496, tmp497
	movl	rec_resB(,%rax,4), %edx	# rec_resB, D.12297
	movl	-208(%rbp), %eax	# temp, tmp501
	addl	%edx, %eax	# D.12297, tmp500
	movl	%eax, -204(%rbp)	# tmp500, residue_G
	.loc 1 1911 0 discriminator 2
	movl	-228(%rbp), %eax	# j, tmp503
	cltq
	movl	-224(%rbp), %edx	# i, tmp505
	movslq	%edx, %rdx	# tmp505, tmp504
	salq	$4, %rdx	#, tmp506
	addq	%rdx, %rax	# tmp506, tmp507
	movl	rec_resR(,%rax,4), %eax	# rec_resR, D.12297
	sarl	%eax	# D.12297
	movl	%eax, %edx	# D.12297, D.12297
	movl	-208(%rbp), %eax	# temp, tmp511
	subl	%edx, %eax	# D.12297, tmp510
	movl	%eax, -200(%rbp)	# tmp510, residue_B
	.loc 1 1912 0 discriminator 2
	movl	-228(%rbp), %eax	# j, tmp513
	cltq
	movl	-224(%rbp), %edx	# i, tmp515
	movslq	%edx, %rdx	# tmp515, tmp514
	salq	$4, %rdx	#, tmp516
	addq	%rdx, %rax	# tmp516, tmp517
	movl	rec_resR(,%rax,4), %edx	# rec_resR, D.12297
	movl	-200(%rbp), %eax	# residue_B, tmp521
	addl	%edx, %eax	# D.12297, tmp520
	movl	%eax, -196(%rbp)	# tmp520, residue_R
	.loc 1 1913 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.627
	movq	6464(%rax), %rax	# enc_picture.627_251->imgUV, D.12299
	movq	(%rax), %rdx	# *_252, D.12300
	movq	img(%rip), %rax	# img, img.628
	movl	156(%rax), %ecx	# img.628_254->pix_y, D.12297
	movl	-228(%rbp), %eax	# j, tmp522
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	salq	$3, %rax	#, D.12298
	addq	%rdx, %rax	# D.12300, D.12300
	movq	(%rax), %rdx	# *_259, D.12301
	movq	img(%rip), %rax	# img, img.629
	movl	152(%rax), %ecx	# img.629_261->pix_x, D.12297
	movl	-224(%rbp), %eax	# i, tmp523
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	addq	%rax, %rax	# D.12298
	leaq	(%rdx,%rax), %rcx	#, D.12301
	movl	-228(%rbp), %eax	# j, tmp525
	cltq
	movl	-224(%rbp), %edx	# i, tmp527
	movslq	%edx, %rdx	# tmp527, tmp526
	salq	$4, %rdx	#, tmp528
	addq	%rdx, %rax	# tmp528, tmp529
	addq	$256, %rax	#, tmp530
	movl	mprRGB(,%rax,4), %edx	# mprRGB, D.12297
	movl	-200(%rbp), %eax	# residue_B, tmp531
	addl	%edx, %eax	# D.12297, D.12297
	movl	$0, %edx	#, tmp532
	testl	%eax, %eax	# D.12297
	cmovns	%eax, %edx	# D.12297,, D.12297
	movq	img(%rip), %rax	# img, img.630
	movl	72688(%rax), %eax	# img.630_270->max_imgpel_value_uv, D.12297
	cmpl	%eax, %edx	# D.12297, D.12297
	cmovle	%edx, %eax	# D.12297,, D.12297
	movw	%ax, (%rcx)	# D.12302, *_266
	.loc 1 1914 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.631
	movq	6424(%rax), %rdx	# enc_picture.631_274->imgY, D.12300
	movq	img(%rip), %rax	# img, img.632
	movl	156(%rax), %ecx	# img.632_276->pix_y, D.12297
	movl	-228(%rbp), %eax	# j, tmp533
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	salq	$3, %rax	#, D.12298
	addq	%rdx, %rax	# D.12300, D.12300
	movq	(%rax), %rdx	# *_281, D.12301
	movq	img(%rip), %rax	# img, img.633
	movl	152(%rax), %ecx	# img.633_283->pix_x, D.12297
	movl	-224(%rbp), %eax	# i, tmp534
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	addq	%rax, %rax	# D.12298
	leaq	(%rdx,%rax), %rcx	#, D.12301
	movl	-228(%rbp), %eax	# j, tmp536
	cltq
	movl	-224(%rbp), %edx	# i, tmp538
	movslq	%edx, %rdx	# tmp538, tmp537
	salq	$4, %rdx	#, tmp539
	addq	%rdx, %rax	# tmp539, tmp540
	movl	mprRGB(,%rax,4), %edx	# mprRGB, D.12297
	movl	-204(%rbp), %eax	# residue_G, tmp541
	addl	%edx, %eax	# D.12297, D.12297
	movl	$0, %edx	#, tmp542
	testl	%eax, %eax	# D.12297
	cmovns	%eax, %edx	# D.12297,, D.12297
	movq	img(%rip), %rax	# img, img.634
	movl	72684(%rax), %eax	# img.634_292->max_imgpel_value, D.12297
	cmpl	%eax, %edx	# D.12297, D.12297
	cmovle	%edx, %eax	# D.12297,, D.12297
	movw	%ax, (%rcx)	# D.12302, *_288
	.loc 1 1915 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.635
	movq	6464(%rax), %rax	# enc_picture.635_296->imgUV, D.12299
	addq	$8, %rax	#, D.12299
	movq	(%rax), %rdx	# *_298, D.12300
	movq	img(%rip), %rax	# img, img.636
	movl	156(%rax), %ecx	# img.636_300->pix_y, D.12297
	movl	-228(%rbp), %eax	# j, tmp543
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	salq	$3, %rax	#, D.12298
	addq	%rdx, %rax	# D.12300, D.12300
	movq	(%rax), %rdx	# *_305, D.12301
	movq	img(%rip), %rax	# img, img.637
	movl	152(%rax), %ecx	# img.637_307->pix_x, D.12297
	movl	-224(%rbp), %eax	# i, tmp544
	addl	%ecx, %eax	# D.12297, D.12297
	cltq
	addq	%rax, %rax	# D.12298
	leaq	(%rdx,%rax), %rcx	#, D.12301
	movl	-228(%rbp), %eax	# j, tmp546
	cltq
	movl	-224(%rbp), %edx	# i, tmp548
	movslq	%edx, %rdx	# tmp548, tmp547
	salq	$4, %rdx	#, tmp549
	addq	%rdx, %rax	# tmp549, tmp550
	addq	$512, %rax	#, tmp551
	movl	mprRGB(,%rax,4), %edx	# mprRGB, D.12297
	movl	-196(%rbp), %eax	# residue_R, tmp552
	addl	%edx, %eax	# D.12297, D.12297
	movl	$0, %edx	#, tmp553
	testl	%eax, %eax	# D.12297
	cmovns	%eax, %edx	# D.12297,, D.12297
	movq	img(%rip), %rax	# img, img.638
	movl	72688(%rax), %eax	# img.638_316->max_imgpel_value_uv, D.12297
	cmpl	%eax, %edx	# D.12297, D.12297
	cmovle	%edx, %eax	# D.12297,, D.12297
	movw	%ax, (%rcx)	# D.12302, *_312
	.loc 1 1906 0 discriminator 2
	addl	$1, -224(%rbp)	#, i
.L472:
	.loc 1 1906 0 is_stmt 0 discriminator 1
	cmpl	$15, -224(%rbp)	#, i
	jle	.L473	#,
	.loc 1 1905 0 is_stmt 1
	addl	$1, -228(%rbp)	#, j
.L471:
	.loc 1 1905 0 is_stmt 0 discriminator 1
	cmpl	$15, -228(%rbp)	#, j
	jle	.L474	#,
.L420:
	.loc 1 1918 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ChromaResidualCoding, .-ChromaResidualCoding
	.section	.rodata
	.align 32
.LC1:
	.long	0
	.long	1
	.long	2
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
	.long	1
	.long	2
	.long	3
	.long	2
	.long	3
	.long	2
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
	.long	1
	.long	2
	.long	3
	.long	1
	.long	1
	.long	3
	.long	3
	.long	2
	.long	3
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.text
	.globl	IntraChromaPrediction
	.type	IntraChromaPrediction, @function
IntraChromaPrediction:
.LFB21:
	.loc 1 1928 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1024, %rsp	#,
	movq	%rdi, -1000(%rbp)	# mb_up, mb_up
	movq	%rsi, -1008(%rbp)	# mb_left, mb_left
	movq	%rdx, -1016(%rbp)	# mb_up_left, mb_up_left
	.loc 1 1930 0
	movq	img(%rip), %rax	# img, img.639
	movq	14168(%rax), %rdx	# img.639_77->mb_data, D.12303
	movq	img(%rip), %rax	# img, img.640
	movl	12(%rax), %eax	# img.640_79->current_mb_nr, D.12304
	cltq
	imulq	$632, %rax, %rax	#, D.12305, D.12305
	addq	%rdx, %rax	# D.12303, tmp416
	movq	%rax, -848(%rbp)	# tmp416, currMB
	.loc 1 1934 0
	movq	img(%rip), %rax	# img, img.641
	movl	12(%rax), %eax	# img.641_84->current_mb_nr, tmp417
	movl	%eax, -900(%rbp)	# tmp417, mb_nr
	.loc 1 1943 0
	movl	$0, -920(%rbp)	#, best_mode
	.loc 1 1949 0
	movq	img(%rip), %rax	# img, img.642
	movl	72708(%rax), %eax	# img.642_87->mb_cr_size_x, tmp418
	movl	%eax, -896(%rbp)	# tmp418, cr_MB_x
	.loc 1 1950 0
	movq	img(%rip), %rax	# img, img.643
	movl	72712(%rax), %eax	# img.643_89->mb_cr_size_y, tmp419
	movl	%eax, -892(%rbp)	# tmp419, cr_MB_y
	.loc 1 1956 0
	movq	img(%rip), %rax	# img, img.644
	movl	72700(%rax), %eax	# img.644_91->yuv_format, D.12304
	subl	$1, %eax	#, tmp420
	movl	%eax, -888(%rbp)	# tmp420, yuv
	.loc 1 1958 0
	leaq	-608(%rbp), %rdx	#, tmp421
	movl	$.LC1, %esi	#, tmp422
	movl	$24, %eax	#, tmp423
	movq	%rdx, %rdi	# tmp421, tmp421
	movq	%rax, %rcx	# tmp423, tmp423
	rep movsq
	.loc 1 1968 0
	movl	$0, -964(%rbp)	#, i
	jmp	.L476	#
.L477:
	.loc 1 1970 0 discriminator 2
	leaq	-416(%rbp), %rcx	#, tmp424
	movl	-964(%rbp), %eax	# i, tmp426
	movslq	%eax, %rdx	# tmp426, tmp425
	movq	%rdx, %rax	# tmp425, tmp427
	addq	%rax, %rax	# tmp427
	addq	%rdx, %rax	# tmp425, tmp427
	salq	$3, %rax	#, tmp428
	addq	%rax, %rcx	# tmp427, D.12306
	movl	-964(%rbp), %eax	# i, tmp429
	leal	-1(%rax), %edx	#, D.12304
	movl	-900(%rbp), %eax	# mb_nr, tmp430
	movq	%rcx, %r8	# D.12306,
	movl	$0, %ecx	#,
	movl	$-1, %esi	#,
	movl	%eax, %edi	# tmp430,
	call	getNeighbour	#
	.loc 1 1968 0 discriminator 2
	addl	$1, -964(%rbp)	#, i
.L476:
	.loc 1 1968 0 is_stmt 0 discriminator 1
	movl	-892(%rbp), %eax	# cr_MB_y, tmp431
	addl	$1, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L477	#,
	.loc 1 1973 0 is_stmt 1
	leaq	-832(%rbp), %rdx	#, tmp432
	movl	-900(%rbp), %eax	# mb_nr, tmp433
	movq	%rdx, %r8	# tmp432,
	movl	$0, %ecx	#,
	movl	$-1, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp433,
	call	getNeighbour	#
	.loc 1 1976 0
	movl	-832(%rbp), %eax	# up.available, tmp434
	movl	%eax, -944(%rbp)	# tmp434, mb_available_up
	.loc 1 1977 0
	movl	-416(%rbp), %eax	# left[0].available, tmp435
	movl	%eax, -940(%rbp)	# tmp435, mb_available_up_left
	.loc 1 1978 0
	movl	-392(%rbp), %eax	# left[1].available, D.12304
	movl	%eax, -860(%rbp)	# D.12304, mb_available_left
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	movl	%eax, -864(%rbp)	# D.12304, mb_available_left
	.loc 1 1980 0
	movq	input(%rip), %rax	# input, input.645
	movl	216(%rax), %eax	# input.645_103->UseConstrainedIntraPred, D.12304
	testl	%eax, %eax	# D.12304
	je	.L478	#,
	.loc 1 1982 0
	movl	-832(%rbp), %eax	# up.available, D.12304
	testl	%eax, %eax	# D.12304
	je	.L479	#,
	.loc 1 1982 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.647
	movq	71784(%rax), %rax	# img.647_106->intra_block, D.12307
	movl	-828(%rbp), %edx	# up.mb_addr, D.12304
	movslq	%edx, %rdx	# D.12304, D.12305
	salq	$2, %rdx	#, D.12305
	addq	%rdx, %rax	# D.12305, D.12307
	movl	(%rax), %eax	# *_111, iftmp.646
	jmp	.L480	#
.L479:
	.loc 1 1982 0 discriminator 2
	movl	$0, %eax	#, iftmp.646
.L480:
	.loc 1 1982 0 discriminator 3
	movl	%eax, -944(%rbp)	# iftmp.646, mb_available_up
	.loc 1 1983 0 is_stmt 1 discriminator 3
	movl	$0, -964(%rbp)	#, i
	movl	$1, -864(%rbp)	#, mb_available_left
	jmp	.L481	#
.L484:
	.loc 1 1984 0
	movl	-864(%rbp), %ecx	# mb_available_left, D.12304
	movl	-964(%rbp), %eax	# i, tmp436
	addl	$1, %eax	#, D.12304
	movslq	%eax, %rdx	# D.12304, tmp437
	movq	%rdx, %rax	# tmp437, tmp438
	addq	%rax, %rax	# tmp438
	addq	%rdx, %rax	# tmp437, tmp438
	salq	$3, %rax	#, tmp439
	addq	%rbp, %rax	#, tmp440
	subq	$416, %rax	#, tmp441
	movl	(%rax), %eax	# left[_118].available, D.12304
	testl	%eax, %eax	# D.12304
	je	.L482	#,
	.loc 1 1984 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.649
	movq	71784(%rax), %rsi	# img.649_120->intra_block, D.12307
	movl	-964(%rbp), %eax	# i, tmp442
	addl	$1, %eax	#, D.12304
	movslq	%eax, %rdx	# D.12304, tmp443
	movq	%rdx, %rax	# tmp443, tmp444
	addq	%rax, %rax	# tmp444
	addq	%rdx, %rax	# tmp443, tmp444
	salq	$3, %rax	#, tmp445
	addq	%rbp, %rax	#, tmp446
	subq	$416, %rax	#, tmp447
	movl	4(%rax), %eax	# left[_122].mb_addr, D.12304
	cltq
	salq	$2, %rax	#, D.12305
	addq	%rsi, %rax	# D.12307, D.12307
	movl	(%rax), %eax	# *_126, iftmp.648
	jmp	.L483	#
.L482:
	.loc 1 1984 0 discriminator 2
	movl	$0, %eax	#, iftmp.648
.L483:
	.loc 1 1984 0 discriminator 3
	andl	%ecx, %eax	# D.12304, D.12304
	movl	%eax, -864(%rbp)	# D.12304, mb_available_left
	.loc 1 1983 0 is_stmt 1 discriminator 3
	addl	$1, -964(%rbp)	#, i
.L481:
	.loc 1 1983 0 is_stmt 0 discriminator 1
	movl	-892(%rbp), %eax	# cr_MB_y, tmp448
	movl	%eax, %edx	# tmp448, tmp449
	shrl	$31, %edx	#, tmp449
	addl	%edx, %eax	# tmp449, tmp450
	sarl	%eax	# tmp451
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L484	#,
	.loc 1 1985 0 is_stmt 1
	movl	-892(%rbp), %eax	# cr_MB_y, tmp453
	movl	%eax, %edx	# tmp453, tmp454
	shrl	$31, %edx	#, tmp454
	addl	%edx, %eax	# tmp454, tmp455
	sarl	%eax	# tmp456
	movl	%eax, -964(%rbp)	# tmp456, i
	movl	$1, -860(%rbp)	#, mb_available_left
	jmp	.L485	#
.L488:
	.loc 1 1986 0
	movl	-860(%rbp), %ecx	# mb_available_left, D.12304
	movl	-964(%rbp), %eax	# i, tmp457
	addl	$1, %eax	#, D.12304
	movslq	%eax, %rdx	# D.12304, tmp458
	movq	%rdx, %rax	# tmp458, tmp459
	addq	%rax, %rax	# tmp459
	addq	%rdx, %rax	# tmp458, tmp459
	salq	$3, %rax	#, tmp460
	addq	%rbp, %rax	#, tmp461
	subq	$416, %rax	#, tmp462
	movl	(%rax), %eax	# left[_133].available, D.12304
	testl	%eax, %eax	# D.12304
	je	.L486	#,
	.loc 1 1986 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.651
	movq	71784(%rax), %rsi	# img.651_135->intra_block, D.12307
	movl	-964(%rbp), %eax	# i, tmp463
	addl	$1, %eax	#, D.12304
	movslq	%eax, %rdx	# D.12304, tmp464
	movq	%rdx, %rax	# tmp464, tmp465
	addq	%rax, %rax	# tmp465
	addq	%rdx, %rax	# tmp464, tmp465
	salq	$3, %rax	#, tmp466
	addq	%rbp, %rax	#, tmp467
	subq	$416, %rax	#, tmp468
	movl	4(%rax), %eax	# left[_137].mb_addr, D.12304
	cltq
	salq	$2, %rax	#, D.12305
	addq	%rsi, %rax	# D.12307, D.12307
	movl	(%rax), %eax	# *_141, iftmp.650
	jmp	.L487	#
.L486:
	.loc 1 1986 0 discriminator 2
	movl	$0, %eax	#, iftmp.650
.L487:
	.loc 1 1986 0 discriminator 3
	andl	%ecx, %eax	# D.12304, D.12304
	movl	%eax, -860(%rbp)	# D.12304, mb_available_left
	.loc 1 1985 0 is_stmt 1 discriminator 3
	addl	$1, -964(%rbp)	#, i
.L485:
	.loc 1 1985 0 is_stmt 0 discriminator 1
	movl	-964(%rbp), %eax	# i, tmp469
	cmpl	-892(%rbp), %eax	# cr_MB_y, tmp469
	jl	.L488	#,
	.loc 1 1987 0 is_stmt 1
	movl	-416(%rbp), %eax	# left[0].available, D.12304
	testl	%eax, %eax	# D.12304
	je	.L489	#,
	.loc 1 1987 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.653
	movq	71784(%rax), %rax	# img.653_147->intra_block, D.12307
	movl	-412(%rbp), %edx	# left[0].mb_addr, D.12304
	movslq	%edx, %rdx	# D.12304, D.12305
	salq	$2, %rdx	#, D.12305
	addq	%rdx, %rax	# D.12305, D.12307
	movl	(%rax), %eax	# *_152, iftmp.652
	jmp	.L490	#
.L489:
	.loc 1 1987 0 discriminator 2
	movl	$0, %eax	#, iftmp.652
.L490:
	.loc 1 1987 0 discriminator 3
	movl	%eax, -940(%rbp)	# iftmp.652, mb_available_up_left
.L478:
	.loc 1 1990 0 is_stmt 1
	cmpq	$0, -1000(%rbp)	#, mb_up
	je	.L491	#,
	.loc 1 1991 0
	movq	-1000(%rbp), %rax	# mb_up, tmp470
	movl	-944(%rbp), %edx	# mb_available_up, tmp471
	movl	%edx, (%rax)	# tmp471, *mb_up_156(D)
.L491:
	.loc 1 1992 0
	cmpq	$0, -1008(%rbp)	#, mb_left
	je	.L492	#,
	.loc 1 1993 0
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L493	#,
	.loc 1 1993 0 is_stmt 0 discriminator 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L493	#,
	.loc 1 1993 0 discriminator 3
	movl	$1, %eax	#, iftmp.654
	jmp	.L494	#
.L493:
	.loc 1 1993 0 discriminator 2
	movl	$0, %eax	#, iftmp.654
.L494:
	.loc 1 1993 0 discriminator 4
	movq	-1008(%rbp), %rdx	# mb_left, tmp472
	movl	%eax, (%rdx)	# iftmp.654, *mb_left_157(D)
.L492:
	.loc 1 1994 0 is_stmt 1
	cmpq	$0, -1016(%rbp)	#, mb_up_left
	je	.L495	#,
	.loc 1 1995 0
	movq	-1016(%rbp), %rax	# mb_up_left, tmp473
	movl	-940(%rbp), %edx	# mb_available_up_left, tmp474
	movl	%edx, (%rax)	# tmp474, *mb_up_left_162(D)
.L495:
	.loc 1 1999 0
	movl	$0, -928(%rbp)	#, uv
	jmp	.L496	#
.L576:
	.loc 1 2001 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.655
	movq	6464(%rax), %rax	# enc_picture.655_164->imgUV, D.12308
	movl	-928(%rbp), %edx	# uv, tmp475
	movslq	%edx, %rdx	# tmp475, D.12305
	salq	$3, %rdx	#, D.12305
	addq	%rdx, %rax	# D.12305, D.12308
	movq	(%rax), %rax	# *_168, tmp476
	movq	%rax, -840(%rbp)	# tmp476, image
	.loc 1 2004 0
	movl	$0, -908(%rbp)	#, b8
	jmp	.L497	#
.L544:
	.loc 1 2006 0
	movl	$0, -904(%rbp)	#, b4
	jmp	.L498	#
.L543:
	.loc 1 2008 0
	movl	-904(%rbp), %eax	# b4, tmp478
	cltq
	movl	-888(%rbp), %edx	# yuv, tmp480
	movslq	%edx, %rcx	# tmp480, tmp479
	movl	-908(%rbp), %edx	# b8, tmp482
	movslq	%edx, %rdx	# tmp482, tmp481
	salq	$3, %rcx	#, tmp483
	addq	%rcx, %rdx	# tmp483, tmp484
	movzbl	subblk_offset_y(%rax,%rdx,4), %eax	# subblk_offset_y, D.12309
	movzbl	%al, %eax	# D.12309, tmp485
	movl	%eax, -948(%rbp)	# tmp485, block_y
	.loc 1 2009 0
	movl	-904(%rbp), %eax	# b4, tmp487
	cltq
	movl	-888(%rbp), %edx	# yuv, tmp489
	movslq	%edx, %rcx	# tmp489, tmp488
	movl	-908(%rbp), %edx	# b8, tmp491
	movslq	%edx, %rdx	# tmp491, tmp490
	salq	$3, %rcx	#, tmp492
	addq	%rcx, %rdx	# tmp492, tmp493
	movzbl	subblk_offset_x(%rax,%rdx,4), %eax	# subblk_offset_x, D.12309
	movzbl	%al, %eax	# D.12309, tmp494
	movl	%eax, -952(%rbp)	# tmp494, block_x
	.loc 1 2010 0
	movl	-952(%rbp), %eax	# block_x, tmp495
	movl	%eax, -884(%rbp)	# tmp495, blk_x
	.loc 1 2011 0
	movl	-948(%rbp), %eax	# block_y, tmp499
	addl	$1, %eax	#, tmp498
	movl	%eax, -880(%rbp)	# tmp498, blk_y
	.loc 1 2013 0
	movq	img(%rip), %rax	# img, img.656
	movl	72680(%rax), %eax	# img.656_181->dc_pred_value, D.12310
	movl	%eax, -984(%rbp)	# D.12310, s
	.loc 1 2014 0
	movl	$0, -968(%rbp)	#, s3
	movl	-968(%rbp), %eax	# s3, tmp500
	movl	%eax, -972(%rbp)	# tmp500, s2
	movl	-972(%rbp), %eax	# s2, tmp501
	movl	%eax, -976(%rbp)	# tmp501, s1
	movl	-976(%rbp), %eax	# s1, tmp502
	movl	%eax, -980(%rbp)	# tmp502, s0
	.loc 1 2017 0
	movl	-904(%rbp), %eax	# b4, tmp504
	cltq
	movl	-888(%rbp), %edx	# yuv, tmp506
	movslq	%edx, %rcx	# tmp506, tmp505
	movl	-908(%rbp), %edx	# b8, tmp508
	movslq	%edx, %rdx	# tmp508, tmp507
	salq	$2, %rcx	#, tmp509
	addq	%rcx, %rdx	# tmp509, tmp510
	salq	$2, %rdx	#, tmp511
	addq	%rdx, %rax	# tmp511, tmp512
	movl	-608(%rbp,%rax,4), %eax	# block_pos, D.12304
	cmpl	$1, %eax	#, D.12304
	je	.L500	#,
	cmpl	$1, %eax	#, D.12304
	jg	.L501	#,
	testl	%eax, %eax	# D.12304
	je	.L502	#,
	jmp	.L499	#
.L501:
	cmpl	$2, %eax	#, D.12304
	je	.L503	#,
	cmpl	$3, %eax	#, D.12304
	je	.L504	#,
	jmp	.L499	#
.L502:
	.loc 1 2020 0
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L505	#,
	.loc 1 2020 0 is_stmt 0 discriminator 1
	movl	-884(%rbp), %eax	# blk_x, tmp513
	movl	%eax, -964(%rbp)	# tmp513, i
	jmp	.L506	#
.L507:
	.loc 1 2020 0 discriminator 2
	movl	-812(%rbp), %eax	# up.pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp514
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rax	# *_194, D.12312
	movl	-816(%rbp), %ecx	# up.pos_x, D.12304
	movl	-964(%rbp), %edx	# i, tmp515
	addl	%ecx, %edx	# D.12304, D.12304
	movslq	%edx, %rdx	# D.12304, D.12305
	addq	%rdx, %rdx	# D.12305
	addq	%rdx, %rax	# D.12305, D.12312
	movzwl	(%rax), %eax	# *_200, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	addl	%eax, -980(%rbp)	# D.12304, s0
	addl	$1, -964(%rbp)	#, i
.L506:
	.loc 1 2020 0 discriminator 1
	movl	-884(%rbp), %eax	# blk_x, tmp516
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L507	#,
.L505:
	.loc 1 2021 0 is_stmt 1
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L508	#,
	.loc 1 2021 0 is_stmt 0 discriminator 1
	movl	-880(%rbp), %eax	# blk_y, tmp517
	movl	%eax, -964(%rbp)	# tmp517, i
	jmp	.L509	#
.L510:
	.loc 1 2021 0 discriminator 2
	movl	-964(%rbp), %eax	# i, tmp519
	movslq	%eax, %rdx	# tmp519, tmp518
	movq	%rdx, %rax	# tmp518, tmp520
	addq	%rax, %rax	# tmp520
	addq	%rdx, %rax	# tmp518, tmp520
	salq	$3, %rax	#, tmp521
	addq	%rbp, %rax	#, tmp522
	subq	$400, %rax	#, tmp523
	movl	4(%rax), %eax	# left[i_26].pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp524
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rcx	# *_211, D.12312
	movl	-964(%rbp), %eax	# i, tmp526
	movslq	%eax, %rdx	# tmp526, tmp525
	movq	%rdx, %rax	# tmp525, tmp527
	addq	%rax, %rax	# tmp527
	addq	%rdx, %rax	# tmp525, tmp527
	salq	$3, %rax	#, tmp528
	addq	%rbp, %rax	#, tmp529
	subq	$400, %rax	#, tmp530
	movl	(%rax), %eax	# left[i_26].pos_x, D.12304
	cltq
	addq	%rax, %rax	# D.12305
	addq	%rcx, %rax	# D.12312, D.12312
	movzwl	(%rax), %eax	# *_216, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	addl	%eax, -972(%rbp)	# D.12304, s2
	addl	$1, -964(%rbp)	#, i
.L509:
	.loc 1 2021 0 discriminator 1
	movl	-880(%rbp), %eax	# blk_y, tmp531
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L510	#,
.L508:
	.loc 1 2022 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L511	#,
	.loc 1 2022 0 is_stmt 0 discriminator 1
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L511	#,
	movl	-972(%rbp), %eax	# s2, tmp532
	movl	-980(%rbp), %edx	# s0, tmp533
	addl	%edx, %eax	# tmp533, D.12304
	addl	$4, %eax	#, D.12304
	sarl	$3, %eax	#, tmp534
	movl	%eax, -984(%rbp)	# tmp534, s
	jmp	.L512	#
.L511:
	.loc 1 2023 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L513	#,
	.loc 1 2023 0 is_stmt 0 discriminator 1
	movl	-980(%rbp), %eax	# s0, tmp535
	addl	$2, %eax	#, D.12304
	sarl	$2, %eax	#, tmp536
	movl	%eax, -984(%rbp)	# tmp536, s
	jmp	.L512	#
.L513:
	.loc 1 2024 0 is_stmt 1
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L512	#,
	.loc 1 2024 0 is_stmt 0 discriminator 1
	movl	-972(%rbp), %eax	# s2, tmp537
	addl	$2, %eax	#, D.12304
	sarl	$2, %eax	#, tmp538
	movl	%eax, -984(%rbp)	# tmp538, s
	.loc 1 2025 0 is_stmt 1 discriminator 1
	jmp	.L499	#
.L512:
	.loc 1 2025 0 is_stmt 0
	jmp	.L499	#
.L500:
	.loc 1 2027 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L514	#,
	.loc 1 2027 0 is_stmt 0 discriminator 1
	movl	-884(%rbp), %eax	# blk_x, tmp539
	movl	%eax, -964(%rbp)	# tmp539, i
	jmp	.L515	#
.L516:
	.loc 1 2027 0 discriminator 2
	movl	-812(%rbp), %eax	# up.pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp540
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rax	# *_235, D.12312
	movl	-816(%rbp), %ecx	# up.pos_x, D.12304
	movl	-964(%rbp), %edx	# i, tmp541
	addl	%ecx, %edx	# D.12304, D.12304
	movslq	%edx, %rdx	# D.12304, D.12305
	addq	%rdx, %rdx	# D.12305
	addq	%rdx, %rax	# D.12305, D.12312
	movzwl	(%rax), %eax	# *_241, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	addl	%eax, -976(%rbp)	# D.12304, s1
	addl	$1, -964(%rbp)	#, i
.L515:
	.loc 1 2027 0 discriminator 1
	movl	-884(%rbp), %eax	# blk_x, tmp542
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L516	#,
	jmp	.L517	#
.L514:
	.loc 1 2028 0 is_stmt 1
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L517	#,
	.loc 1 2028 0 is_stmt 0 discriminator 1
	movl	-880(%rbp), %eax	# blk_y, tmp543
	movl	%eax, -964(%rbp)	# tmp543, i
	jmp	.L518	#
.L519:
	.loc 1 2028 0 discriminator 2
	movl	-964(%rbp), %eax	# i, tmp545
	movslq	%eax, %rdx	# tmp545, tmp544
	movq	%rdx, %rax	# tmp544, tmp546
	addq	%rax, %rax	# tmp546
	addq	%rdx, %rax	# tmp544, tmp546
	salq	$3, %rax	#, tmp547
	addq	%rbp, %rax	#, tmp548
	subq	$400, %rax	#, tmp549
	movl	4(%rax), %eax	# left[i_28].pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp550
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rcx	# *_252, D.12312
	movl	-964(%rbp), %eax	# i, tmp552
	movslq	%eax, %rdx	# tmp552, tmp551
	movq	%rdx, %rax	# tmp551, tmp553
	addq	%rax, %rax	# tmp553
	addq	%rdx, %rax	# tmp551, tmp553
	salq	$3, %rax	#, tmp554
	addq	%rbp, %rax	#, tmp555
	subq	$400, %rax	#, tmp556
	movl	(%rax), %eax	# left[i_28].pos_x, D.12304
	cltq
	addq	%rax, %rax	# D.12305
	addq	%rcx, %rax	# D.12312, D.12312
	movzwl	(%rax), %eax	# *_257, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	addl	%eax, -972(%rbp)	# D.12304, s2
	addl	$1, -964(%rbp)	#, i
.L518:
	.loc 1 2028 0 discriminator 1
	movl	-880(%rbp), %eax	# blk_y, tmp557
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L519	#,
.L517:
	.loc 1 2029 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L520	#,
	.loc 1 2029 0 is_stmt 0 discriminator 1
	movl	-976(%rbp), %eax	# s1, tmp558
	addl	$2, %eax	#, D.12304
	sarl	$2, %eax	#, tmp559
	movl	%eax, -984(%rbp)	# tmp559, s
	jmp	.L521	#
.L520:
	.loc 1 2030 0 is_stmt 1
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L521	#,
	.loc 1 2030 0 is_stmt 0 discriminator 1
	movl	-972(%rbp), %eax	# s2, tmp560
	addl	$2, %eax	#, D.12304
	sarl	$2, %eax	#, tmp561
	movl	%eax, -984(%rbp)	# tmp561, s
	.loc 1 2031 0 is_stmt 1 discriminator 1
	jmp	.L499	#
.L521:
	.loc 1 2031 0 is_stmt 0
	jmp	.L499	#
.L503:
	.loc 1 2033 0 is_stmt 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L522	#,
	.loc 1 2033 0 is_stmt 0 discriminator 1
	movl	-880(%rbp), %eax	# blk_y, tmp562
	movl	%eax, -964(%rbp)	# tmp562, i
	jmp	.L523	#
.L524:
	.loc 1 2033 0 discriminator 2
	movl	-964(%rbp), %eax	# i, tmp564
	movslq	%eax, %rdx	# tmp564, tmp563
	movq	%rdx, %rax	# tmp563, tmp565
	addq	%rax, %rax	# tmp565
	addq	%rdx, %rax	# tmp563, tmp565
	salq	$3, %rax	#, tmp566
	addq	%rbp, %rax	#, tmp567
	subq	$400, %rax	#, tmp568
	movl	4(%rax), %eax	# left[i_29].pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp569
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rcx	# *_273, D.12312
	movl	-964(%rbp), %eax	# i, tmp571
	movslq	%eax, %rdx	# tmp571, tmp570
	movq	%rdx, %rax	# tmp570, tmp572
	addq	%rax, %rax	# tmp572
	addq	%rdx, %rax	# tmp570, tmp572
	salq	$3, %rax	#, tmp573
	addq	%rbp, %rax	#, tmp574
	subq	$400, %rax	#, tmp575
	movl	(%rax), %eax	# left[i_29].pos_x, D.12304
	cltq
	addq	%rax, %rax	# D.12305
	addq	%rcx, %rax	# D.12312, D.12312
	movzwl	(%rax), %eax	# *_278, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	addl	%eax, -968(%rbp)	# D.12304, s3
	addl	$1, -964(%rbp)	#, i
.L523:
	.loc 1 2033 0 discriminator 1
	movl	-880(%rbp), %eax	# blk_y, tmp576
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L524	#,
	jmp	.L525	#
.L522:
	.loc 1 2034 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L525	#,
	.loc 1 2034 0 is_stmt 0 discriminator 1
	movl	-884(%rbp), %eax	# blk_x, tmp577
	movl	%eax, -964(%rbp)	# tmp577, i
	jmp	.L526	#
.L527:
	.loc 1 2034 0 discriminator 2
	movl	-812(%rbp), %eax	# up.pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp578
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rax	# *_288, D.12312
	movl	-816(%rbp), %ecx	# up.pos_x, D.12304
	movl	-964(%rbp), %edx	# i, tmp579
	addl	%ecx, %edx	# D.12304, D.12304
	movslq	%edx, %rdx	# D.12304, D.12305
	addq	%rdx, %rdx	# D.12305
	addq	%rdx, %rax	# D.12305, D.12312
	movzwl	(%rax), %eax	# *_294, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	addl	%eax, -980(%rbp)	# D.12304, s0
	addl	$1, -964(%rbp)	#, i
.L526:
	.loc 1 2034 0 discriminator 1
	movl	-884(%rbp), %eax	# blk_x, tmp580
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L527	#,
.L525:
	.loc 1 2035 0 is_stmt 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L528	#,
	.loc 1 2035 0 is_stmt 0 discriminator 1
	movl	-968(%rbp), %eax	# s3, tmp581
	addl	$2, %eax	#, D.12304
	sarl	$2, %eax	#, tmp582
	movl	%eax, -984(%rbp)	# tmp582, s
	jmp	.L529	#
.L528:
	.loc 1 2036 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L529	#,
	.loc 1 2036 0 is_stmt 0 discriminator 1
	movl	-980(%rbp), %eax	# s0, tmp583
	addl	$2, %eax	#, D.12304
	sarl	$2, %eax	#, tmp584
	movl	%eax, -984(%rbp)	# tmp584, s
	.loc 1 2037 0 is_stmt 1 discriminator 1
	jmp	.L499	#
.L529:
	.loc 1 2037 0 is_stmt 0
	jmp	.L499	#
.L504:
	.loc 1 2039 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L530	#,
	.loc 1 2039 0 is_stmt 0 discriminator 1
	movl	-884(%rbp), %eax	# blk_x, tmp585
	movl	%eax, -964(%rbp)	# tmp585, i
	jmp	.L531	#
.L532:
	.loc 1 2039 0 discriminator 2
	movl	-812(%rbp), %eax	# up.pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp586
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rax	# *_309, D.12312
	movl	-816(%rbp), %ecx	# up.pos_x, D.12304
	movl	-964(%rbp), %edx	# i, tmp587
	addl	%ecx, %edx	# D.12304, D.12304
	movslq	%edx, %rdx	# D.12304, D.12305
	addq	%rdx, %rdx	# D.12305
	addq	%rdx, %rax	# D.12305, D.12312
	movzwl	(%rax), %eax	# *_315, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	addl	%eax, -976(%rbp)	# D.12304, s1
	addl	$1, -964(%rbp)	#, i
.L531:
	.loc 1 2039 0 discriminator 1
	movl	-884(%rbp), %eax	# blk_x, tmp588
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L532	#,
.L530:
	.loc 1 2040 0 is_stmt 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L533	#,
	.loc 1 2040 0 is_stmt 0 discriminator 1
	movl	-880(%rbp), %eax	# blk_y, tmp589
	movl	%eax, -964(%rbp)	# tmp589, i
	jmp	.L534	#
.L535:
	.loc 1 2040 0 discriminator 2
	movl	-964(%rbp), %eax	# i, tmp591
	movslq	%eax, %rdx	# tmp591, tmp590
	movq	%rdx, %rax	# tmp590, tmp592
	addq	%rax, %rax	# tmp592
	addq	%rdx, %rax	# tmp590, tmp592
	salq	$3, %rax	#, tmp593
	addq	%rbp, %rax	#, tmp594
	subq	$400, %rax	#, tmp595
	movl	4(%rax), %eax	# left[i_32].pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp596
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rcx	# *_326, D.12312
	movl	-964(%rbp), %eax	# i, tmp598
	movslq	%eax, %rdx	# tmp598, tmp597
	movq	%rdx, %rax	# tmp597, tmp599
	addq	%rax, %rax	# tmp599
	addq	%rdx, %rax	# tmp597, tmp599
	salq	$3, %rax	#, tmp600
	addq	%rbp, %rax	#, tmp601
	subq	$400, %rax	#, tmp602
	movl	(%rax), %eax	# left[i_32].pos_x, D.12304
	cltq
	addq	%rax, %rax	# D.12305
	addq	%rcx, %rax	# D.12312, D.12312
	movzwl	(%rax), %eax	# *_331, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	addl	%eax, -968(%rbp)	# D.12304, s3
	addl	$1, -964(%rbp)	#, i
.L534:
	.loc 1 2040 0 discriminator 1
	movl	-880(%rbp), %eax	# blk_y, tmp603
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L535	#,
.L533:
	.loc 1 2041 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L536	#,
	.loc 1 2041 0 is_stmt 0 discriminator 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L536	#,
	movl	-968(%rbp), %eax	# s3, tmp604
	movl	-976(%rbp), %edx	# s1, tmp605
	addl	%edx, %eax	# tmp605, D.12304
	addl	$4, %eax	#, D.12304
	sarl	$3, %eax	#, tmp606
	movl	%eax, -984(%rbp)	# tmp606, s
	jmp	.L537	#
.L536:
	.loc 1 2042 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L538	#,
	.loc 1 2042 0 is_stmt 0 discriminator 1
	movl	-976(%rbp), %eax	# s1, tmp607
	addl	$2, %eax	#, D.12304
	sarl	$2, %eax	#, tmp608
	movl	%eax, -984(%rbp)	# tmp608, s
	jmp	.L537	#
.L538:
	.loc 1 2043 0 is_stmt 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L537	#,
	.loc 1 2043 0 is_stmt 0 discriminator 1
	movl	-968(%rbp), %eax	# s3, tmp609
	addl	$2, %eax	#, D.12304
	sarl	$2, %eax	#, tmp610
	movl	%eax, -984(%rbp)	# tmp610, s
	.loc 1 2044 0 is_stmt 1 discriminator 1
	jmp	.L598	#
.L537:
.L598:
	.loc 1 2044 0 is_stmt 0
	nop
.L499:
	.loc 1 2048 0 is_stmt 1
	movl	-948(%rbp), %eax	# block_y, tmp611
	movl	%eax, -960(%rbp)	# tmp611, j
	jmp	.L539	#
.L542:
	.loc 1 2049 0
	movl	-952(%rbp), %eax	# block_x, tmp612
	movl	%eax, -964(%rbp)	# tmp612, i
	jmp	.L540	#
.L541:
	.loc 1 2051 0 discriminator 2
	movq	img(%rip), %rax	# img, img.657
	movl	-984(%rbp), %edx	# s, tmp613
	movl	-960(%rbp), %ecx	# j, tmp615
	movslq	%ecx, %rcx	# tmp615, tmp614
	movl	-928(%rbp), %esi	# uv, tmp617
	movslq	%esi, %rdi	# tmp617, tmp616
	movl	-964(%rbp), %esi	# i, tmp619
	movslq	%esi, %rsi	# tmp619, tmp618
	salq	$6, %rdi	#, tmp620
	addq	%rdi, %rsi	# tmp620, tmp621
	salq	$4, %rsi	#, tmp622
	addq	%rsi, %rcx	# tmp622, tmp623
	addq	$4248, %rcx	#, tmp624
	movw	%dx, 8(%rax,%rcx,2)	# D.12313, img.657_349->mprr_c
	.loc 1 2049 0 discriminator 2
	addl	$1, -964(%rbp)	#, i
.L540:
	.loc 1 2049 0 is_stmt 0 discriminator 1
	movl	-952(%rbp), %eax	# block_x, tmp625
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L541	#,
	.loc 1 2048 0 is_stmt 1
	addl	$1, -960(%rbp)	#, j
.L539:
	.loc 1 2048 0 is_stmt 0 discriminator 1
	movl	-948(%rbp), %eax	# block_y, tmp626
	addl	$4, %eax	#, D.12304
	cmpl	-960(%rbp), %eax	# j, D.12304
	jg	.L542	#,
	.loc 1 2006 0 is_stmt 1
	addl	$1, -904(%rbp)	#, b4
.L498:
	.loc 1 2006 0 is_stmt 0 discriminator 1
	cmpl	$3, -904(%rbp)	#, b4
	jle	.L543	#,
	.loc 1 2004 0 is_stmt 1
	addl	$1, -908(%rbp)	#, b8
.L497:
	.loc 1 2004 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.658
	movl	72692(%rax), %eax	# img.658_171->num_blk8x8_uv, D.12304
	movl	%eax, %edx	# D.12304, tmp627
	shrl	$31, %edx	#, tmp627
	addl	%edx, %eax	# tmp627, tmp628
	sarl	%eax	# tmp629
	cmpl	-908(%rbp), %eax	# b8, D.12304
	jg	.L544	#,
	.loc 1 2057 0 is_stmt 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L545	#,
	.loc 1 2059 0
	movl	$0, -964(%rbp)	#, i
	jmp	.L546	#
.L547:
	.loc 1 2060 0 discriminator 2
	movl	-812(%rbp), %eax	# up.pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp630
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rax	# *_359, D.12312
	movl	-816(%rbp), %ecx	# up.pos_x, D.12304
	movl	-964(%rbp), %edx	# i, tmp631
	addl	%ecx, %edx	# D.12304, D.12304
	movslq	%edx, %rdx	# D.12304, D.12305
	addq	%rdx, %rdx	# D.12305
	addq	%rdx, %rax	# D.12305, D.12312
	movzwl	(%rax), %eax	# *_365, D.12313
	movzwl	%ax, %edx	# D.12313, D.12304
	movl	-964(%rbp), %eax	# i, tmp633
	cltq
	movl	%edx, -800(%rbp,%rax,4)	# D.12304, hline
	.loc 1 2059 0 discriminator 2
	addl	$1, -964(%rbp)	#, i
.L546:
	.loc 1 2059 0 is_stmt 0 discriminator 1
	movl	-964(%rbp), %eax	# i, tmp634
	cmpl	-896(%rbp), %eax	# cr_MB_x, tmp634
	jl	.L547	#,
	.loc 1 2061 0 is_stmt 1
	movl	$0, -964(%rbp)	#, i
	jmp	.L548	#
.L551:
	.loc 1 2062 0
	movl	$0, -960(%rbp)	#, j
	jmp	.L549	#
.L550:
	.loc 1 2063 0 discriminator 2
	movq	img(%rip), %rax	# img, img.659
	movl	-964(%rbp), %edx	# i, tmp636
	movslq	%edx, %rdx	# tmp636, tmp635
	movl	-800(%rbp,%rdx,4), %edx	# hline, D.12304
	movl	-960(%rbp), %ecx	# j, tmp638
	movslq	%ecx, %rcx	# tmp638, tmp637
	movl	-964(%rbp), %esi	# i, tmp640
	movslq	%esi, %rdi	# tmp640, tmp639
	movl	-928(%rbp), %esi	# uv, tmp642
	movslq	%esi, %rsi	# tmp642, tmp641
	salq	$4, %rdi	#, tmp643
	salq	$10, %rsi	#, tmp644
	addq	%rdi, %rsi	# tmp643, tmp645
	addq	%rsi, %rcx	# tmp645, tmp646
	addq	$4760, %rcx	#, tmp647
	movw	%dx, 8(%rax,%rcx,2)	# D.12313, img.659_371->mprr_c
	.loc 1 2062 0 discriminator 2
	addl	$1, -960(%rbp)	#, j
.L549:
	.loc 1 2062 0 is_stmt 0 discriminator 1
	movl	-960(%rbp), %eax	# j, tmp648
	cmpl	-892(%rbp), %eax	# cr_MB_y, tmp648
	jl	.L550	#,
	.loc 1 2061 0 is_stmt 1
	addl	$1, -964(%rbp)	#, i
.L548:
	.loc 1 2061 0 is_stmt 0 discriminator 1
	movl	-964(%rbp), %eax	# i, tmp649
	cmpl	-896(%rbp), %eax	# cr_MB_x, tmp649
	jl	.L551	#,
.L545:
	.loc 1 2067 0 is_stmt 1
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L552	#,
	.loc 1 2067 0 is_stmt 0 discriminator 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L552	#,
	.loc 1 2069 0 is_stmt 1
	movl	$0, -964(%rbp)	#, i
	jmp	.L553	#
.L554:
	.loc 1 2070 0 discriminator 2
	movl	-964(%rbp), %eax	# i, tmp650
	addl	$1, %eax	#, D.12304
	movslq	%eax, %rdx	# D.12304, tmp651
	movq	%rdx, %rax	# tmp651, tmp652
	addq	%rax, %rax	# tmp652
	addq	%rdx, %rax	# tmp651, tmp652
	salq	$3, %rax	#, tmp653
	addq	%rbp, %rax	#, tmp654
	subq	$400, %rax	#, tmp655
	movl	4(%rax), %eax	# left[_379].pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp656
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rcx	# *_383, D.12312
	movl	-964(%rbp), %eax	# i, tmp657
	addl	$1, %eax	#, D.12304
	movslq	%eax, %rdx	# D.12304, tmp658
	movq	%rdx, %rax	# tmp658, tmp659
	addq	%rax, %rax	# tmp659
	addq	%rdx, %rax	# tmp658, tmp659
	salq	$3, %rax	#, tmp660
	addq	%rbp, %rax	#, tmp661
	subq	$400, %rax	#, tmp662
	movl	(%rax), %eax	# left[_385].pos_x, D.12304
	cltq
	addq	%rax, %rax	# D.12305
	addq	%rcx, %rax	# D.12312, D.12312
	movzwl	(%rax), %eax	# *_389, D.12313
	movzwl	%ax, %edx	# D.12313, D.12304
	movl	-964(%rbp), %eax	# i, tmp664
	cltq
	movl	%edx, -736(%rbp,%rax,4)	# D.12304, vline
	.loc 1 2069 0 discriminator 2
	addl	$1, -964(%rbp)	#, i
.L553:
	.loc 1 2069 0 is_stmt 0 discriminator 1
	movl	-964(%rbp), %eax	# i, tmp665
	cmpl	-892(%rbp), %eax	# cr_MB_y, tmp665
	jl	.L554	#,
	.loc 1 2071 0 is_stmt 1
	movl	$0, -964(%rbp)	#, i
	jmp	.L555	#
.L558:
	.loc 1 2072 0
	movl	$0, -960(%rbp)	#, j
	jmp	.L556	#
.L557:
	.loc 1 2073 0 discriminator 2
	movq	img(%rip), %rax	# img, img.660
	movl	-960(%rbp), %edx	# j, tmp667
	movslq	%edx, %rdx	# tmp667, tmp666
	movl	-736(%rbp,%rdx,4), %edx	# vline, D.12304
	movl	-960(%rbp), %ecx	# j, tmp669
	movslq	%ecx, %rcx	# tmp669, tmp668
	movl	-964(%rbp), %esi	# i, tmp671
	movslq	%esi, %rdi	# tmp671, tmp670
	movl	-928(%rbp), %esi	# uv, tmp673
	movslq	%esi, %rsi	# tmp673, tmp672
	salq	$4, %rdi	#, tmp674
	salq	$10, %rsi	#, tmp675
	addq	%rdi, %rsi	# tmp674, tmp676
	addq	%rsi, %rcx	# tmp676, tmp677
	addq	$4504, %rcx	#, tmp678
	movw	%dx, 8(%rax,%rcx,2)	# D.12313, img.660_395->mprr_c
	.loc 1 2072 0 discriminator 2
	addl	$1, -960(%rbp)	#, j
.L556:
	.loc 1 2072 0 is_stmt 0 discriminator 1
	movl	-960(%rbp), %eax	# j, tmp679
	cmpl	-892(%rbp), %eax	# cr_MB_y, tmp679
	jl	.L557	#,
	.loc 1 2071 0 is_stmt 1
	addl	$1, -964(%rbp)	#, i
.L555:
	.loc 1 2071 0 is_stmt 0 discriminator 1
	movl	-964(%rbp), %eax	# i, tmp680
	cmpl	-896(%rbp), %eax	# cr_MB_x, tmp680
	jl	.L558	#,
.L552:
	.loc 1 2077 0 is_stmt 1
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L559	#,
	.loc 1 2077 0 is_stmt 0 discriminator 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L559	#,
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L559	#,
	cmpl	$0, -940(%rbp)	#, mb_available_up_left
	je	.L559	#,
	.loc 1 2079 0 is_stmt 1
	movl	-896(%rbp), %eax	# cr_MB_x, tmp681
	movl	%eax, %edx	# tmp681, tmp682
	shrl	$31, %edx	#, tmp682
	addl	%edx, %eax	# tmp682, tmp683
	sarl	%eax	# tmp684
	movl	%eax, %edx	# tmp684, D.12304
	movl	-896(%rbp), %eax	# cr_MB_x, tmp685
	subl	$1, %eax	#, D.12304
	cltq
	movl	-800(%rbp,%rax,4), %ecx	# hline, D.12304
	movl	-396(%rbp), %eax	# left[0].pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rsi	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp687
	addq	%rsi, %rax	# D.12305, D.12311
	movq	(%rax), %rax	# *_408, D.12312
	movl	-400(%rbp), %esi	# left[0].pos_x, D.12304
	movslq	%esi, %rsi	# D.12304, D.12305
	addq	%rsi, %rsi	# D.12305
	addq	%rsi, %rax	# D.12305, D.12312
	movzwl	(%rax), %eax	# *_413, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	subl	%eax, %ecx	# D.12304, D.12304
	movl	%ecx, %eax	# D.12304, D.12304
	imull	%edx, %eax	# D.12304, tmp688
	movl	%eax, -936(%rbp)	# tmp688, ih
	.loc 1 2080 0
	movl	$0, -964(%rbp)	#, i
	jmp	.L560	#
.L561:
	.loc 1 2081 0 discriminator 2
	movl	-964(%rbp), %eax	# i, tmp689
	leal	1(%rax), %ecx	#, D.12304
	movl	-896(%rbp), %eax	# cr_MB_x, tmp690
	movl	%eax, %edx	# tmp690, tmp691
	shrl	$31, %edx	#, tmp691
	addl	%edx, %eax	# tmp691, tmp692
	sarl	%eax	# tmp693
	movl	%eax, %edx	# tmp693, D.12304
	movl	-964(%rbp), %eax	# i, tmp694
	addl	%edx, %eax	# D.12304, D.12304
	cltq
	movl	-800(%rbp,%rax,4), %edx	# hline, D.12304
	movl	-896(%rbp), %eax	# cr_MB_x, tmp696
	movl	%eax, %esi	# tmp696, tmp697
	shrl	$31, %esi	#, tmp697
	addl	%esi, %eax	# tmp697, tmp698
	sarl	%eax	# tmp699
	subl	$2, %eax	#, D.12304
	subl	-964(%rbp), %eax	# i, D.12304
	cltq
	movl	-800(%rbp,%rax,4), %eax	# hline, D.12304
	subl	%eax, %edx	# D.12304, D.12304
	movl	%edx, %eax	# D.12304, D.12304
	imull	%ecx, %eax	# D.12304, D.12304
	addl	%eax, -936(%rbp)	# D.12304, ih
	.loc 1 2080 0 discriminator 2
	addl	$1, -964(%rbp)	#, i
.L560:
	.loc 1 2080 0 is_stmt 0 discriminator 1
	movl	-896(%rbp), %eax	# cr_MB_x, tmp701
	movl	%eax, %edx	# tmp701, tmp702
	shrl	$31, %edx	#, tmp702
	addl	%edx, %eax	# tmp702, tmp703
	sarl	%eax	# tmp704
	subl	$1, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L561	#,
	.loc 1 2083 0 is_stmt 1
	movl	-892(%rbp), %eax	# cr_MB_y, tmp705
	movl	%eax, %edx	# tmp705, tmp706
	shrl	$31, %edx	#, tmp706
	addl	%edx, %eax	# tmp706, tmp707
	sarl	%eax	# tmp708
	movl	%eax, %edx	# tmp708, D.12304
	movl	-892(%rbp), %eax	# cr_MB_y, tmp709
	subl	$1, %eax	#, D.12304
	cltq
	movl	-736(%rbp,%rax,4), %ecx	# vline, D.12304
	movl	-396(%rbp), %eax	# left[0].pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rsi	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp711
	addq	%rsi, %rax	# D.12305, D.12311
	movq	(%rax), %rax	# *_439, D.12312
	movl	-400(%rbp), %esi	# left[0].pos_x, D.12304
	movslq	%esi, %rsi	# D.12304, D.12305
	addq	%rsi, %rsi	# D.12305
	addq	%rsi, %rax	# D.12305, D.12312
	movzwl	(%rax), %eax	# *_444, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	subl	%eax, %ecx	# D.12304, D.12304
	movl	%ecx, %eax	# D.12304, D.12304
	imull	%edx, %eax	# D.12304, tmp712
	movl	%eax, -932(%rbp)	# tmp712, iv
	.loc 1 2084 0
	movl	$0, -964(%rbp)	#, i
	jmp	.L562	#
.L563:
	.loc 1 2085 0 discriminator 2
	movl	-964(%rbp), %eax	# i, tmp713
	leal	1(%rax), %ecx	#, D.12304
	movl	-892(%rbp), %eax	# cr_MB_y, tmp714
	movl	%eax, %edx	# tmp714, tmp715
	shrl	$31, %edx	#, tmp715
	addl	%edx, %eax	# tmp715, tmp716
	sarl	%eax	# tmp717
	movl	%eax, %edx	# tmp717, D.12304
	movl	-964(%rbp), %eax	# i, tmp718
	addl	%edx, %eax	# D.12304, D.12304
	cltq
	movl	-736(%rbp,%rax,4), %edx	# vline, D.12304
	movl	-892(%rbp), %eax	# cr_MB_y, tmp720
	movl	%eax, %esi	# tmp720, tmp721
	shrl	$31, %esi	#, tmp721
	addl	%esi, %eax	# tmp721, tmp722
	sarl	%eax	# tmp723
	subl	$2, %eax	#, D.12304
	subl	-964(%rbp), %eax	# i, D.12304
	cltq
	movl	-736(%rbp,%rax,4), %eax	# vline, D.12304
	subl	%eax, %edx	# D.12304, D.12304
	movl	%edx, %eax	# D.12304, D.12304
	imull	%ecx, %eax	# D.12304, D.12304
	addl	%eax, -932(%rbp)	# D.12304, iv
	.loc 1 2084 0 discriminator 2
	addl	$1, -964(%rbp)	#, i
.L562:
	.loc 1 2084 0 is_stmt 0 discriminator 1
	movl	-892(%rbp), %eax	# cr_MB_y, tmp725
	movl	%eax, %edx	# tmp725, tmp726
	shrl	$31, %edx	#, tmp726
	addl	%edx, %eax	# tmp726, tmp727
	sarl	%eax	# tmp728
	subl	$1, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L563	#,
	.loc 1 2087 0 is_stmt 1
	cmpl	$8, -896(%rbp)	#, cr_MB_x
	jne	.L564	#,
	.loc 1 2087 0 is_stmt 0 discriminator 1
	movl	$17, %eax	#, iftmp.661
	jmp	.L565	#
.L564:
	.loc 1 2087 0 discriminator 2
	movl	$5, %eax	#, iftmp.661
.L565:
	.loc 1 2087 0 discriminator 3
	imull	-936(%rbp), %eax	# ih, D.12304
	movl	-896(%rbp), %edx	# cr_MB_x, tmp729
	addl	%edx, %edx	# D.12304
	addl	%eax, %edx	# D.12304, D.12304
	cmpl	$8, -896(%rbp)	#, cr_MB_x
	jne	.L566	#,
	.loc 1 2087 0 discriminator 1
	movl	$5, %eax	#, iftmp.662
	jmp	.L567	#
.L566:
	.loc 1 2087 0 discriminator 2
	movl	$6, %eax	#, iftmp.662
.L567:
	.loc 1 2087 0 discriminator 3
	movl	%eax, %ecx	# iftmp.662, tmp834
	sarl	%cl, %edx	# tmp834, tmp730
	movl	%edx, %eax	# tmp730, tmp730
	movl	%eax, -876(%rbp)	# tmp730, ib
	.loc 1 2088 0 is_stmt 1 discriminator 3
	cmpl	$8, -892(%rbp)	#, cr_MB_y
	jne	.L568	#,
	.loc 1 2088 0 is_stmt 0 discriminator 1
	movl	$17, %eax	#, iftmp.663
	jmp	.L569	#
.L568:
	.loc 1 2088 0 discriminator 2
	movl	$5, %eax	#, iftmp.663
.L569:
	.loc 1 2088 0 discriminator 3
	imull	-932(%rbp), %eax	# iv, D.12304
	movl	-892(%rbp), %edx	# cr_MB_y, tmp731
	addl	%edx, %edx	# D.12304
	addl	%eax, %edx	# D.12304, D.12304
	cmpl	$8, -892(%rbp)	#, cr_MB_y
	jne	.L570	#,
	.loc 1 2088 0 discriminator 1
	movl	$5, %eax	#, iftmp.664
	jmp	.L571	#
.L570:
	.loc 1 2088 0 discriminator 2
	movl	$6, %eax	#, iftmp.664
.L571:
	.loc 1 2088 0 discriminator 3
	movl	%eax, %ecx	# iftmp.664, tmp836
	sarl	%cl, %edx	# tmp836, tmp732
	movl	%edx, %eax	# tmp732, tmp732
	movl	%eax, -872(%rbp)	# tmp732, ic
	.loc 1 2090 0 is_stmt 1 discriminator 3
	movl	-896(%rbp), %eax	# cr_MB_x, tmp733
	subl	$1, %eax	#, D.12304
	cltq
	movl	-800(%rbp,%rax,4), %edx	# hline, D.12304
	movl	-892(%rbp), %eax	# cr_MB_y, tmp735
	subl	$1, %eax	#, D.12304
	cltq
	movl	-736(%rbp,%rax,4), %eax	# vline, D.12304
	addl	%edx, %eax	# D.12304, D.12304
	sall	$4, %eax	#, tmp737
	movl	%eax, -868(%rbp)	# tmp737, iaa
	.loc 1 2091 0 discriminator 3
	movl	$0, -960(%rbp)	#, j
	jmp	.L572	#
.L575:
	.loc 1 2092 0
	movl	$0, -964(%rbp)	#, i
	jmp	.L573	#
.L574:
	.loc 1 2093 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.665
	movl	-896(%rbp), %eax	# cr_MB_x, tmp738
	movl	%eax, %edx	# tmp738, tmp739
	shrl	$31, %edx	#, tmp739
	addl	%edx, %eax	# tmp739, tmp740
	sarl	%eax	# tmp741
	movl	-964(%rbp), %edx	# i, tmp742
	subl	%eax, %edx	# D.12304, D.12304
	movl	%edx, %eax	# D.12304, D.12304
	addl	$1, %eax	#, D.12304
	imull	-876(%rbp), %eax	# ib, D.12304
	movl	%eax, %edx	# D.12304, D.12304
	movl	-868(%rbp), %eax	# iaa, tmp743
	leal	(%rdx,%rax), %esi	#, D.12304
	movl	-892(%rbp), %eax	# cr_MB_y, tmp744
	movl	%eax, %edx	# tmp744, tmp745
	shrl	$31, %edx	#, tmp745
	addl	%edx, %eax	# tmp745, tmp746
	sarl	%eax	# tmp747
	movl	-960(%rbp), %edx	# j, tmp748
	subl	%eax, %edx	# D.12304, D.12304
	movl	%edx, %eax	# D.12304, D.12304
	addl	$1, %eax	#, D.12304
	imull	-872(%rbp), %eax	# ic, D.12304
	addl	%esi, %eax	# D.12304, D.12304
	addl	$16, %eax	#, D.12304
	sarl	$5, %eax	#, D.12304
	movl	%eax, %edx	# D.12304, D.12304
	movq	img(%rip), %rax	# img, img.666
	movl	72688(%rax), %eax	# img.666_501->max_imgpel_value_uv, D.12304
	cmpl	%eax, %edx	# D.12304, D.12304
	cmovle	%edx, %eax	# D.12304,, D.12304
	movl	$0, %edx	#, tmp749
	testl	%eax, %eax	# D.12304
	cmovs	%edx, %eax	# D.12304,, tmp749, D.12304
	movl	-960(%rbp), %edx	# j, tmp751
	movslq	%edx, %rdx	# tmp751, tmp750
	movl	-964(%rbp), %esi	# i, tmp753
	movslq	%esi, %rdi	# tmp753, tmp752
	movl	-928(%rbp), %esi	# uv, tmp755
	movslq	%esi, %rsi	# tmp755, tmp754
	salq	$4, %rdi	#, tmp756
	salq	$10, %rsi	#, tmp757
	addq	%rdi, %rsi	# tmp756, tmp758
	addq	%rsi, %rdx	# tmp758, tmp759
	addq	$5016, %rdx	#, tmp760
	movw	%ax, 8(%rcx,%rdx,2)	# D.12313, img.665_488->mprr_c
	.loc 1 2092 0 discriminator 2
	addl	$1, -964(%rbp)	#, i
.L573:
	.loc 1 2092 0 is_stmt 0 discriminator 1
	movl	-964(%rbp), %eax	# i, tmp761
	cmpl	-896(%rbp), %eax	# cr_MB_x, tmp761
	jl	.L574	#,
	.loc 1 2091 0 is_stmt 1
	addl	$1, -960(%rbp)	#, j
.L572:
	.loc 1 2091 0 is_stmt 0 discriminator 1
	movl	-960(%rbp), %eax	# j, tmp762
	cmpl	-892(%rbp), %eax	# cr_MB_y, tmp762
	jl	.L575	#,
.L559:
	.loc 1 1999 0 is_stmt 1
	addl	$1, -928(%rbp)	#, uv
.L496:
	.loc 1 1999 0 is_stmt 0 discriminator 1
	cmpl	$1, -928(%rbp)	#, uv
	jle	.L576	#,
	.loc 1 2098 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.667
	movl	2464(%rax), %eax	# input.667_509->rdopt, D.12304
	testl	%eax, %eax	# D.12304
	jne	.L475	#,
	.loc 1 2101 0
	movl	$2147483647, -912(%rbp)	#, min_cost
	.loc 1 2102 0
	movl	$0, -964(%rbp)	#, i
	jmp	.L578	#
.L579:
	.loc 1 2104 0 discriminator 2
	leaq	-416(%rbp), %rcx	#, tmp763
	movl	-964(%rbp), %eax	# i, tmp765
	movslq	%eax, %rdx	# tmp765, tmp764
	movq	%rdx, %rax	# tmp764, tmp766
	addq	%rax, %rax	# tmp766
	addq	%rdx, %rax	# tmp764, tmp766
	salq	$3, %rax	#, tmp767
	addq	%rax, %rcx	# tmp766, D.12306
	movl	-964(%rbp), %edx	# i, tmp768
	movl	-900(%rbp), %eax	# mb_nr, tmp769
	movq	%rcx, %r8	# D.12306,
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp769,
	call	getNeighbour	#
	.loc 1 2102 0 discriminator 2
	addl	$1, -964(%rbp)	#, i
.L578:
	.loc 1 2102 0 is_stmt 0 discriminator 1
	movl	-964(%rbp), %eax	# i, tmp770
	cmpl	-892(%rbp), %eax	# cr_MB_y, tmp770
	jl	.L579	#,
	.loc 1 2106 0 is_stmt 1
	movl	$0, -924(%rbp)	#, mode
	jmp	.L580	#
.L597:
	.loc 1 2108 0
	movq	input(%rip), %rax	# input, input.668
	movl	2420(%rax), %eax	# input.668_516->ChromaIntraDisable, D.12304
	cmpl	$1, %eax	#, D.12304
	jne	.L581	#,
	.loc 1 2108 0 is_stmt 0 discriminator 1
	cmpl	$0, -924(%rbp)	#, mode
	je	.L581	#,
	.loc 1 2109 0 is_stmt 1
	jmp	.L582	#
.L581:
	.loc 1 2111 0
	cmpl	$2, -924(%rbp)	#, mode
	jne	.L583	#,
	.loc 1 2111 0 is_stmt 0 discriminator 1
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L584	#,
.L583:
	.loc 1 2111 0 discriminator 2
	cmpl	$1, -924(%rbp)	#, mode
	jne	.L585	#,
	.loc 1 2112 0 is_stmt 1
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L584	#,
	.loc 1 2112 0 is_stmt 0 discriminator 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L584	#,
.L585:
	cmpl	$3, -924(%rbp)	#, mode
	jne	.L586	#,
	.loc 1 2113 0 is_stmt 1
	movl	-864(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L584	#,
	.loc 1 2113 0 is_stmt 0 discriminator 1
	movl	-860(%rbp), %eax	# mb_available_left, D.12304
	testl	%eax, %eax	# D.12304
	je	.L584	#,
	cmpl	$0, -944(%rbp)	#, mb_available_up
	je	.L584	#,
	cmpl	$0, -940(%rbp)	#, mb_available_up_left
	jne	.L586	#,
.L584:
	.loc 1 2114 0 is_stmt 1
	jmp	.L582	#
.L586:
	.loc 1 2116 0
	movl	$0, -916(%rbp)	#, cost
	.loc 1 2117 0
	movl	$0, -928(%rbp)	#, uv
	jmp	.L587	#
.L596:
	.loc 1 2119 0
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.669
	movl	-928(%rbp), %edx	# uv, tmp771
	movslq	%edx, %rdx	# tmp771, D.12305
	salq	$3, %rdx	#, D.12305
	addq	%rdx, %rax	# D.12305, D.12308
	movq	(%rax), %rax	# *_527, tmp772
	movq	%rax, -840(%rbp)	# tmp772, image
	.loc 1 2120 0
	movl	$0, -948(%rbp)	#, block_y
	jmp	.L588	#
.L595:
	.loc 1 2121 0
	movl	$0, -952(%rbp)	#, block_x
	jmp	.L589	#
.L594:
	.loc 1 2123 0
	movl	$0, -956(%rbp)	#, k
	movl	-948(%rbp), %eax	# block_y, tmp773
	movl	%eax, -960(%rbp)	# tmp773, j
	jmp	.L590	#
.L593:
	.loc 1 2124 0
	movl	-952(%rbp), %eax	# block_x, tmp774
	movl	%eax, -964(%rbp)	# tmp774, i
	jmp	.L591	#
.L592:
	.loc 1 2126 0 discriminator 2
	movl	-960(%rbp), %eax	# j, tmp776
	movslq	%eax, %rdx	# tmp776, tmp775
	movq	%rdx, %rax	# tmp775, tmp777
	addq	%rax, %rax	# tmp777
	addq	%rdx, %rax	# tmp775, tmp777
	salq	$3, %rax	#, tmp778
	addq	%rbp, %rax	#, tmp779
	subq	$400, %rax	#, tmp780
	movl	4(%rax), %eax	# left[j_47].pos_y, D.12304
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12305
	movq	-840(%rbp), %rax	# image, tmp781
	addq	%rdx, %rax	# D.12305, D.12311
	movq	(%rax), %rcx	# *_539, D.12312
	movl	-960(%rbp), %eax	# j, tmp783
	movslq	%eax, %rdx	# tmp783, tmp782
	movq	%rdx, %rax	# tmp782, tmp784
	addq	%rax, %rax	# tmp784
	addq	%rdx, %rax	# tmp782, tmp784
	salq	$3, %rax	#, tmp785
	addq	%rbp, %rax	#, tmp786
	subq	$400, %rax	#, tmp787
	movl	(%rax), %edx	# left[j_47].pos_x, D.12304
	movl	-964(%rbp), %eax	# i, tmp788
	addl	%edx, %eax	# D.12304, D.12304
	cltq
	addq	%rax, %rax	# D.12305
	addq	%rcx, %rax	# D.12312, D.12312
	movzwl	(%rax), %eax	# *_545, D.12313
	movzwl	%ax, %edx	# D.12313, D.12304
	movq	img(%rip), %rax	# img, img.670
	movl	-960(%rbp), %ecx	# j, tmp790
	movslq	%ecx, %rcx	# tmp790, tmp789
	movl	-924(%rbp), %esi	# mode, tmp792
	movslq	%esi, %rsi	# tmp792, tmp791
	movl	-928(%rbp), %edi	# uv, tmp794
	movslq	%edi, %rdi	# tmp794, tmp793
	salq	$2, %rdi	#, tmp795
	addq	%rsi, %rdi	# tmp791, tmp796
	movl	-964(%rbp), %esi	# i, tmp798
	movslq	%esi, %rsi	# tmp798, tmp797
	salq	$4, %rdi	#, tmp799
	addq	%rdi, %rsi	# tmp799, tmp800
	salq	$4, %rsi	#, tmp801
	addq	%rsi, %rcx	# tmp801, tmp802
	addq	$4248, %rcx	#, tmp803
	movzwl	8(%rax,%rcx,2), %eax	# img.670_548->mprr_c, D.12313
	movzwl	%ax, %eax	# D.12313, D.12304
	subl	%eax, %edx	# D.12304, D.12304
	movl	-956(%rbp), %eax	# k, tmp805
	cltq
	movl	%edx, -672(%rbp,%rax,4)	# D.12304, diff
	.loc 1 2124 0 discriminator 2
	addl	$1, -964(%rbp)	#, i
	addl	$1, -956(%rbp)	#, k
.L591:
	.loc 1 2124 0 is_stmt 0 discriminator 1
	movl	-952(%rbp), %eax	# block_x, tmp806
	addl	$4, %eax	#, D.12304
	cmpl	-964(%rbp), %eax	# i, D.12304
	jg	.L592	#,
	.loc 1 2123 0 is_stmt 1
	addl	$1, -960(%rbp)	#, j
.L590:
	.loc 1 2123 0 is_stmt 0 discriminator 1
	movl	-948(%rbp), %eax	# block_y, tmp807
	addl	$4, %eax	#, D.12304
	cmpl	-960(%rbp), %eax	# j, D.12304
	jg	.L593	#,
	.loc 1 2128 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.671
	movl	24(%rax), %edx	# input.671_555->hadamard, D.12304
	leaq	-672(%rbp), %rax	#, tmp808
	movl	%edx, %esi	# D.12304,
	movq	%rax, %rdi	# tmp808,
	call	SATD	#
	addl	%eax, -916(%rbp)	# D.12304, cost
	.loc 1 2121 0
	addl	$4, -952(%rbp)	#, block_x
.L589:
	.loc 1 2121 0 is_stmt 0 discriminator 1
	movl	-952(%rbp), %eax	# block_x, tmp809
	cmpl	-896(%rbp), %eax	# cr_MB_x, tmp809
	jl	.L594	#,
	.loc 1 2120 0 is_stmt 1
	addl	$4, -948(%rbp)	#, block_y
.L588:
	.loc 1 2120 0 is_stmt 0 discriminator 1
	movl	-948(%rbp), %eax	# block_y, tmp810
	cmpl	-892(%rbp), %eax	# cr_MB_y, tmp810
	jl	.L595	#,
	.loc 1 2117 0 is_stmt 1
	addl	$1, -928(%rbp)	#, uv
.L587:
	.loc 1 2117 0 is_stmt 0 discriminator 1
	cmpl	$1, -928(%rbp)	#, uv
	jle	.L596	#,
	.loc 1 2131 0 is_stmt 1
	movl	-916(%rbp), %eax	# cost, tmp811
	cmpl	-912(%rbp), %eax	# min_cost, tmp811
	jge	.L582	#,
	.loc 1 2133 0
	movl	-924(%rbp), %eax	# mode, tmp812
	movl	%eax, -920(%rbp)	# tmp812, best_mode
	.loc 1 2134 0
	movl	-916(%rbp), %eax	# cost, tmp813
	movl	%eax, -912(%rbp)	# tmp813, min_cost
.L582:
	.loc 1 2106 0
	addl	$1, -924(%rbp)	#, mode
.L580:
	.loc 1 2106 0 is_stmt 0 discriminator 1
	cmpl	$3, -924(%rbp)	#, mode
	jle	.L597	#,
	.loc 1 2138 0 is_stmt 1
	movq	-848(%rbp), %rax	# currMB, tmp814
	movl	-920(%rbp), %edx	# best_mode, tmp815
	movl	%edx, 524(%rax)	# tmp815, currMB_83->c_ipred_mode
.L475:
	.loc 1 2141 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	IntraChromaPrediction, .-IntraChromaPrediction
	.globl	ZeroRef
	.type	ZeroRef, @function
ZeroRef:
.LFB22:
	.loc 1 2152 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# currMB, currMB
	.loc 1 2155 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L600	#
.L605:
	.loc 1 2156 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L601	#
.L604:
	.loc 1 2158 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.672
	movq	6480(%rax), %rax	# enc_picture.672_6->ref_idx, D.12316
	movq	(%rax), %rdx	# *_7, D.12317
	movq	img(%rip), %rax	# img, img.673
	movl	144(%rax), %ecx	# img.673_9->block_x, D.12315
	movl	-8(%rbp), %eax	# i, tmp78
	addl	%ecx, %eax	# D.12315, D.12315
	cltq
	salq	$3, %rax	#, D.12318
	addq	%rdx, %rax	# D.12317, D.12317
	movq	(%rax), %rdx	# *_14, D.12319
	movq	img(%rip), %rax	# img, img.674
	movl	148(%rax), %ecx	# img.674_16->block_y, D.12315
	movl	-4(%rbp), %eax	# j, tmp79
	addl	%ecx, %eax	# D.12315, D.12315
	cltq
	addq	%rax, %rax	# D.12318
	addq	%rdx, %rax	# D.12319, D.12319
	movzwl	(%rax), %eax	# *_21, D.12320
	testw	%ax, %ax	# D.12320
	je	.L602	#,
	.loc 1 2160 0
	movl	$0, %eax	#, D.12315
	jmp	.L603	#
.L602:
	.loc 1 2156 0
	addl	$1, -8(%rbp)	#, i
.L601:
	.loc 1 2156 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L604	#,
	.loc 1 2155 0 is_stmt 1
	addl	$1, -4(%rbp)	#, j
.L600:
	.loc 1 2155 0 is_stmt 0 discriminator 1
	cmpl	$3, -4(%rbp)	#, j
	jle	.L605	#,
	.loc 1 2163 0 is_stmt 1
	movl	$1, %eax	#, D.12315
.L603:
	.loc 1 2164 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ZeroRef, .-ZeroRef
	.globl	MBType2Value
	.type	MBType2Value, @function
MBType2Value:
.LFB23:
	.loc 1 2175 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# currMB, currMB
	.loc 1 2183 0
	movq	img(%rip), %rax	# img, img.675
	movl	24(%rax), %eax	# img.675_4->type, D.12321
	cmpl	$1, %eax	#, D.12321
	je	.L607	#,
	.loc 1 2185 0
	movq	-24(%rbp), %rax	# currMB, tmp82
	movl	72(%rax), %eax	# currMB_6(D)->mb_type, D.12321
	cmpl	$13, %eax	#, D.12321
	je	.L608	#,
	.loc 1 2185 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# currMB, tmp83
	movl	72(%rax), %eax	# currMB_6(D)->mb_type, D.12321
	cmpl	$9, %eax	#, D.12321
	jne	.L609	#,
.L608:
	.loc 1 2186 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.677
	movl	24(%rax), %eax	# img.677_24->type, D.12321
	cmpl	$2, %eax	#, D.12321
	jne	.L610	#,
	.loc 1 2186 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.676
	jmp	.L611	#
.L610:
	.loc 1 2186 0 discriminator 2
	movl	$6, %eax	#, iftmp.676
.L611:
	.loc 1 2186 0 discriminator 3
	jmp	.L612	#
.L609:
	.loc 1 2187 0 is_stmt 1
	movq	-24(%rbp), %rax	# currMB, tmp84
	movl	72(%rax), %eax	# currMB_6(D)->mb_type, D.12321
	cmpl	$10, %eax	#, D.12321
	jne	.L613	#,
	.loc 1 2187 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.679
	movl	24(%rax), %eax	# img.679_10->type, D.12321
	cmpl	$2, %eax	#, D.12321
	jne	.L614	#,
	movl	$0, %eax	#, iftmp.678
	jmp	.L615	#
.L614:
	.loc 1 2187 0 discriminator 2
	movl	$6, %eax	#, iftmp.678
.L615:
	.loc 1 2187 0 discriminator 3
	movq	img(%rip), %rdx	# img, img.680
	movl	72380(%rdx), %edx	# img.680_14->i16offset, D.12321
	addl	%edx, %eax	# D.12321, D.12321
	jmp	.L612	#
.L613:
	.loc 1 2188 0 is_stmt 1
	movq	-24(%rbp), %rax	# currMB, tmp85
	movl	72(%rax), %eax	# currMB_6(D)->mb_type, D.12321
	cmpl	$8, %eax	#, D.12321
	jne	.L616	#,
	.loc 1 2190 0
	movq	input(%rip), %rax	# input, input.681
	movl	2356(%rax), %eax	# input.681_18->symbol_mode, D.12321
	testl	%eax, %eax	# D.12321
	jne	.L617	#,
	.loc 1 2190 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# currMB, tmp86
	movq	%rax, %rdi	# tmp86,
	call	ZeroRef	#
	testl	%eax, %eax	# D.12321
	je	.L617	#,
	movl	$5, %eax	#, D.12321
	jmp	.L612	#
.L617:
	.loc 1 2191 0 is_stmt 1
	movl	$4, %eax	#, D.12321
	jmp	.L612	#
.L616:
	.loc 1 2193 0
	movq	-24(%rbp), %rax	# currMB, tmp87
	movl	72(%rax), %eax	# currMB_6(D)->mb_type, D.12321
	jmp	.L612	#
.L607:
	.loc 1 2197 0
	movq	-24(%rbp), %rax	# currMB, tmp88
	movl	72(%rax), %eax	# currMB_6(D)->mb_type, tmp89
	movl	%eax, -12(%rbp)	# tmp89, mbtype
	.loc 1 2198 0
	movq	-24(%rbp), %rax	# currMB, tmp90
	movl	488(%rax), %eax	# currMB_6(D)->b8pdir, tmp91
	movl	%eax, -8(%rbp)	# tmp91, pdir0
	.loc 1 2199 0
	movq	-24(%rbp), %rax	# currMB, tmp92
	movl	500(%rax), %eax	# currMB_6(D)->b8pdir, tmp93
	movl	%eax, -4(%rbp)	# tmp93, pdir1
	.loc 1 2201 0
	cmpl	$0, -12(%rbp)	#, mbtype
	jne	.L618	#,
	.loc 1 2201 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.12321
	jmp	.L612	#
.L618:
	.loc 1 2202 0 is_stmt 1
	cmpl	$9, -12(%rbp)	#, mbtype
	je	.L619	#,
	.loc 1 2202 0 is_stmt 0 discriminator 1
	cmpl	$13, -12(%rbp)	#, mbtype
	jne	.L620	#,
.L619:
	.loc 1 2203 0 is_stmt 1
	movl	$23, %eax	#, D.12321
	jmp	.L612	#
.L620:
	.loc 1 2204 0
	cmpl	$10, -12(%rbp)	#, mbtype
	jne	.L621	#,
	.loc 1 2204 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.682
	movl	72380(%rax), %eax	# img.682_33->i16offset, D.12321
	addl	$23, %eax	#, D.12321
	jmp	.L612	#
.L621:
	.loc 1 2205 0 is_stmt 1
	cmpl	$8, -12(%rbp)	#, mbtype
	jne	.L622	#,
	.loc 1 2205 0 is_stmt 0 discriminator 1
	movl	$22, %eax	#, D.12321
	jmp	.L612	#
.L622:
	.loc 1 2206 0 is_stmt 1
	cmpl	$1, -12(%rbp)	#, mbtype
	jne	.L623	#,
	.loc 1 2206 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# pdir0, tmp95
	cltq
	movl	dir1offset.5468(,%rax,4), %eax	# dir1offset, D.12321
	jmp	.L612	#
.L623:
	.loc 1 2207 0 is_stmt 1
	cmpl	$2, -12(%rbp)	#, mbtype
	jne	.L624	#,
	.loc 1 2207 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# pdir1, tmp97
	movslq	%eax, %rcx	# tmp97, tmp96
	movl	-8(%rbp), %eax	# pdir0, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	addq	%rcx, %rax	# tmp96, tmp101
	movl	dir2offset.5469(,%rax,4), %eax	# dir2offset, D.12321
	addl	$4, %eax	#, D.12321
	jmp	.L612	#
.L624:
	.loc 1 2208 0 is_stmt 1
	movl	-4(%rbp), %eax	# pdir1, tmp103
	movslq	%eax, %rcx	# tmp103, tmp102
	movl	-8(%rbp), %eax	# pdir0, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	addq	%rax, %rax	# tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	addq	%rcx, %rax	# tmp102, tmp107
	movl	dir2offset.5469(,%rax,4), %eax	# dir2offset, D.12321
	addl	$5, %eax	#, D.12321
.L612:
	.loc 1 2210 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	MBType2Value, .-MBType2Value
	.globl	writeIntra4x4Modes
	.type	writeIntra4x4Modes, @function
writeIntra4x4Modes:
.LFB24:
	.loc 1 2221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
	movl	%edi, -228(%rbp)	# only_this_block, only_this_block
	.loc 1 2226 0
	movq	img(%rip), %rax	# img, img.683
	movq	14168(%rax), %rdx	# img.683_12->mb_data, D.12322
	movq	img(%rip), %rax	# img, img.684
	movl	12(%rax), %eax	# img.684_14->current_mb_nr, D.12323
	cltq
	imulq	$632, %rax, %rax	#, D.12324, D.12324
	addq	%rdx, %rax	# D.12322, tmp105
	movq	%rax, -168(%rbp)	# tmp105, currMB
	.loc 1 2227 0
	movq	img(%rip), %rcx	# img, img.685
	movq	-168(%rbp), %rax	# currMB, tmp106
	movl	(%rax), %eax	# currMB_18->currSEnr, D.12323
	movslq	%eax, %rdx	# D.12323, tmp107
	movq	%rdx, %rax	# tmp107, tmp108
	addq	%rax, %rax	# tmp108
	addq	%rdx, %rax	# tmp107, tmp108
	salq	$4, %rax	#, tmp109
	addq	$14176, %rax	#, tmp110
	addq	%rcx, %rax	# img.685, tmp111
	movq	%rax, -176(%rbp)	# tmp111, currSE
	.loc 1 2228 0
	movq	-168(%rbp), %rax	# currMB, tmp115
	addq	$20, %rax	#, tmp114
	movq	%rax, -160(%rbp)	# tmp114, bitCount
	.loc 1 2229 0
	movq	img(%rip), %rax	# img, img.686
	movq	14160(%rax), %rax	# img.686_23->currentSlice, tmp116
	movq	%rax, -152(%rbp)	# tmp116, currSlice
	.loc 1 2231 0
	movq	input(%rip), %rax	# input, input.687
	movl	2364(%rax), %eax	# input.687_25->partition_mode, D.12323
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp118
	movq	%rax, -144(%rbp)	# tmp118, partMap
	.loc 1 2233 0
	movl	$0, -196(%rbp)	#, ipred_number
	.loc 1 2234 0
	movl	$0, -204(%rbp)	#, block8x8
	jmp	.L626	#
.L636:
	.loc 1 2236 0
	movq	-168(%rbp), %rax	# currMB, tmp119
	movl	-204(%rbp), %edx	# block8x8, tmp121
	movslq	%edx, %rdx	# tmp121, tmp120
	addq	$116, %rdx	#, tmp122
	movl	8(%rax,%rdx,4), %eax	# currMB_18->b8mode, D.12323
	cmpl	$11, %eax	#, D.12323
	jne	.L627	#,
	.loc 1 2236 0 is_stmt 0 discriminator 1
	cmpl	$0, -228(%rbp)	#, only_this_block
	js	.L628	#,
	movl	-228(%rbp), %eax	# only_this_block, tmp123
	cmpl	-204(%rbp), %eax	# block8x8, tmp123
	je	.L628	#,
.L627:
	.loc 1 2237 0 is_stmt 1 discriminator 2
	movq	-168(%rbp), %rax	# currMB, tmp124
	movl	-204(%rbp), %edx	# block8x8, tmp126
	movslq	%edx, %rdx	# tmp126, tmp125
	addq	$116, %rdx	#, tmp127
	movl	8(%rax,%rdx,4), %eax	# currMB_18->b8mode, D.12323
	.loc 1 2236 0 discriminator 2
	cmpl	$13, %eax	#, D.12323
	jne	.L629	#,
	.loc 1 2237 0
	cmpl	$0, -228(%rbp)	#, only_this_block
	js	.L628	#,
	.loc 1 2237 0 is_stmt 0 discriminator 1
	movl	-228(%rbp), %eax	# only_this_block, tmp128
	cmpl	-204(%rbp), %eax	# block8x8, tmp128
	jne	.L629	#,
.L628:
	.loc 1 2239 0 is_stmt 1
	movq	-168(%rbp), %rax	# currMB, tmp129
	movl	-204(%rbp), %edx	# block8x8, tmp131
	movslq	%edx, %rdx	# tmp131, tmp130
	addq	$116, %rdx	#, tmp132
	movl	8(%rax,%rdx,4), %eax	# currMB_18->b8mode, D.12323
	cmpl	$13, %eax	#, D.12323
	jne	.L630	#,
	.loc 1 2239 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.688
	jmp	.L631	#
.L630:
	.loc 1 2239 0 discriminator 2
	movl	$4, %eax	#, iftmp.688
.L631:
	.loc 1 2239 0 discriminator 3
	movl	%eax, -192(%rbp)	# iftmp.688, bs_y
	movl	-192(%rbp), %eax	# bs_y, tmp133
	movl	%eax, -188(%rbp)	# tmp133, bs_x
	.loc 1 2240 0 is_stmt 1 discriminator 3
	movl	-188(%rbp), %eax	# bs_x, tmp137
	sarl	$2, %eax	#, tmp136
	movl	%eax, -184(%rbp)	# tmp136, ii
	.loc 1 2241 0 discriminator 3
	movl	-192(%rbp), %eax	# bs_y, tmp141
	sarl	$2, %eax	#, tmp140
	movl	%eax, -180(%rbp)	# tmp140, jj
	.loc 1 2243 0 discriminator 3
	movl	$0, -208(%rbp)	#, j
	jmp	.L632	#
.L635:
	.loc 1 2245 0
	movl	$0, -212(%rbp)	#, i
	jmp	.L633	#
.L634:
	.loc 1 2247 0 discriminator 2
	movl	-204(%rbp), %eax	# block8x8, tmp142
	leal	0(,%rax,4), %edx	#, D.12323
	movl	-208(%rbp), %eax	# j, tmp143
	addl	%eax, %eax	# D.12323
	orl	%edx, %eax	# D.12323, D.12323
	orl	-212(%rbp), %eax	# i, D.12323
	movl	%eax, %edx	# D.12323, D.12323
	movq	-168(%rbp), %rax	# currMB, tmp144
	movslq	%edx, %rdx	# D.12323, tmp145
	addq	$80, %rdx	#, tmp146
	movl	12(%rax,%rdx,4), %edx	# currMB_18->intra_pred_modes, D.12323
	movl	-196(%rbp), %eax	# ipred_number, tmp148
	cltq
	movl	%edx, -128(%rbp,%rax,4)	# D.12323, ipred_array
	.loc 1 2248 0 discriminator 2
	movl	-204(%rbp), %eax	# block8x8, tmp149
	leal	0(,%rax,4), %edx	#, D.12323
	movl	-208(%rbp), %eax	# j, tmp150
	addl	%eax, %eax	# D.12323
	addl	%eax, %edx	# D.12323, D.12323
	movl	-212(%rbp), %eax	# i, tmp151
	addl	%eax, %edx	# tmp151, D.12323
	movl	-196(%rbp), %eax	# ipred_number, tmp153
	cltq
	movl	%edx, -64(%rbp,%rax,4)	# D.12323, cont_array
	.loc 1 2249 0 discriminator 2
	addl	$1, -196(%rbp)	#, ipred_number
	.loc 1 2245 0 discriminator 2
	movl	-184(%rbp), %eax	# ii, tmp154
	addl	%eax, -212(%rbp)	# tmp154, i
.L633:
	.loc 1 2245 0 is_stmt 0 discriminator 1
	cmpl	$1, -212(%rbp)	#, i
	jle	.L634	#,
	.loc 1 2243 0 is_stmt 1
	movl	-180(%rbp), %eax	# jj, tmp155
	addl	%eax, -208(%rbp)	# tmp155, j
.L632:
	.loc 1 2243 0 is_stmt 0 discriminator 1
	cmpl	$1, -208(%rbp)	#, j
	jle	.L635	#,
.L629:
	.loc 1 2234 0 is_stmt 1
	addl	$1, -204(%rbp)	#, block8x8
.L626:
	.loc 1 2234 0 is_stmt 0 discriminator 1
	cmpl	$3, -204(%rbp)	#, block8x8
	jle	.L636	#,
	.loc 1 2254 0 is_stmt 1
	movl	$0, -200(%rbp)	#, rate
	.loc 1 2256 0
	movl	$0, -212(%rbp)	#, i
	jmp	.L637	#
.L641:
	.loc 1 2258 0
	movq	-168(%rbp), %rax	# currMB, tmp156
	movl	$1, 528(%rax)	#, currMB_18->IntraChromaPredModeFlag
	.loc 1 2259 0
	movl	-212(%rbp), %eax	# i, tmp158
	cltq
	movl	-64(%rbp,%rax,4), %edx	# cont_array, D.12323
	movq	-176(%rbp), %rax	# currSE, tmp159
	movl	%edx, 24(%rax)	# D.12323, currSE_10->context
	.loc 1 2260 0
	movl	-212(%rbp), %eax	# i, tmp161
	cltq
	movl	-128(%rbp,%rax,4), %edx	# ipred_array, D.12323
	movq	-176(%rbp), %rax	# currSE, tmp162
	movl	%edx, 4(%rax)	# D.12323, currSE_10->value1
	.loc 1 2261 0
	movq	-176(%rbp), %rax	# currSE, tmp163
	movl	$0, 8(%rax)	#, currSE_10->value2
	.loc 1 2268 0
	movq	input(%rip), %rax	# input, input.689
	movl	2356(%rax), %eax	# input.689_59->symbol_mode, D.12323
	testl	%eax, %eax	# D.12323
	je	.L638	#,
	.loc 1 2268 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# currSE, tmp164
	movq	$writeIntraPredMode_CABAC, 40(%rax)	#, currSE_10->writing
.L638:
	.loc 1 2269 0 is_stmt 1
	movq	-176(%rbp), %rax	# currSE, tmp165
	movl	$4, (%rax)	#, currSE_10->type
	.loc 1 2272 0
	movq	-152(%rbp), %rax	# currSlice, tmp166
	movq	24(%rax), %rdx	# currSlice_24->partArr, D.12325
	movq	-144(%rbp), %rax	# partMap, tmp167
	addq	$16, %rax	#, D.12326
	movl	(%rax), %eax	# *_62, D.12323
	cltq
	salq	$3, %rax	#, tmp169
	movq	%rax, %rcx	# tmp168, tmp170
	salq	$4, %rcx	#, tmp170
	subq	%rax, %rcx	# tmp168, D.12324
	movq	%rcx, %rax	# D.12324, D.12324
	addq	%rdx, %rax	# D.12325, tmp171
	movq	%rax, -136(%rbp)	# tmp171, dataPart
	.loc 1 2274 0
	movq	input(%rip), %rax	# input, input.690
	movl	2356(%rax), %eax	# input.690_67->symbol_mode, D.12323
	testl	%eax, %eax	# D.12323
	jne	.L639	#,
	.loc 1 2274 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rdx	# dataPart, tmp172
	movq	-176(%rbp), %rax	# currSE, tmp173
	movq	%rdx, %rsi	# tmp172,
	movq	%rax, %rdi	# tmp173,
	call	writeSyntaxElement_Intra4x4PredictionMode	#
	jmp	.L640	#
.L639:
	.loc 1 2275 0 is_stmt 1
	movq	-136(%rbp), %rax	# dataPart, tmp174
	movq	112(%rax), %rax	# dataPart_66->writeSyntaxElement, D.12327
	movq	-136(%rbp), %rcx	# dataPart, tmp175
	movq	-176(%rbp), %rdx	# currSE, tmp176
	movq	%rcx, %rsi	# tmp175,
	movq	%rdx, %rdi	# tmp176,
	call	*%rax	# D.12327
.L640:
	.loc 1 2276 0
	movq	-160(%rbp), %rax	# bitCount, tmp177
	leaq	20(%rax), %rdx	#, D.12328
	movq	-160(%rbp), %rax	# bitCount, tmp178
	addq	$20, %rax	#, D.12328
	movl	(%rax), %ecx	# *_71, D.12323
	movq	-176(%rbp), %rax	# currSE, tmp179
	movl	12(%rax), %eax	# currSE_10->len, D.12323
	addl	%ecx, %eax	# D.12323, D.12323
	movl	%eax, (%rdx)	# D.12323, *_70
	.loc 1 2277 0
	movq	-176(%rbp), %rax	# currSE, tmp180
	movl	12(%rax), %eax	# currSE_10->len, D.12323
	addl	%eax, -200(%rbp)	# D.12323, rate
	.loc 1 2278 0
	addq	$48, -176(%rbp)	#, currSE
	.loc 1 2279 0
	movq	-168(%rbp), %rax	# currMB, tmp181
	movl	(%rax), %eax	# currMB_18->currSEnr, D.12323
	leal	1(%rax), %edx	#, D.12323
	movq	-168(%rbp), %rax	# currMB, tmp182
	movl	%edx, (%rax)	# D.12323, currMB_18->currSEnr
	.loc 1 2256 0
	addl	$1, -212(%rbp)	#, i
.L637:
	.loc 1 2256 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# i, tmp183
	cmpl	-196(%rbp), %eax	# ipred_number, tmp183
	jl	.L641	#,
	.loc 1 2282 0 is_stmt 1
	movl	-200(%rbp), %eax	# rate, D.12323
	.loc 1 2283 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	writeIntra4x4Modes, .-writeIntra4x4Modes
	.globl	B8Mode2Value
	.type	B8Mode2Value, @function
B8Mode2Value:
.LFB25:
	.loc 1 2295 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# b8mode, b8mode
	movl	%esi, -8(%rbp)	# b8pdir, b8pdir
	.loc 1 2299 0
	movq	img(%rip), %rax	# img, img.691
	movl	24(%rax), %eax	# img.691_2->type, D.12329
	cmpl	$1, %eax	#, D.12329
	je	.L644	#,
	.loc 1 2301 0
	movl	-4(%rbp), %eax	# b8mode, tmp66
	subl	$4, %eax	#, D.12329
	jmp	.L645	#
.L644:
	.loc 1 2305 0
	movl	-4(%rbp), %eax	# b8mode, tmp68
	cltq
	movl	b8start.5509(,%rax,4), %edx	# b8start, D.12329
	movl	-4(%rbp), %eax	# b8mode, tmp70
	cltq
	movl	b8inc.5510(,%rax,4), %eax	# b8inc, D.12329
	imull	-8(%rbp), %eax	# b8pdir, D.12329
	addl	%edx, %eax	# D.12329, D.12329
.L645:
	.loc 1 2307 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	B8Mode2Value, .-B8Mode2Value
	.globl	writeMBLayer
	.type	writeMBLayer, @function
writeMBLayer:
.LFB26:
	.loc 1 2316 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movl	%edi, -116(%rbp)	# rdopt, rdopt
	.loc 1 2318 0
	movq	img(%rip), %rax	# img, img.692
	movl	12(%rax), %eax	# img.692_32->current_mb_nr, tmp354
	movl	%eax, -80(%rbp)	# tmp354, mb_nr
	.loc 1 2319 0
	movq	img(%rip), %rax	# img, img.693
	movq	14168(%rax), %rdx	# img.693_34->mb_data, D.12330
	movl	-80(%rbp), %eax	# mb_nr, tmp355
	cltq
	imulq	$632, %rax, %rax	#, D.12331, D.12331
	addq	%rdx, %rax	# D.12330, tmp356
	movq	%rax, -48(%rbp)	# tmp356, currMB
	.loc 1 2320 0
	cmpl	$0, -80(%rbp)	#, mb_nr
	je	.L647	#,
	.loc 1 2320 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.695
	movq	14168(%rax), %rax	# img.695_39->mb_data, D.12330
	movl	-80(%rbp), %edx	# mb_nr, tmp357
	movslq	%edx, %rdx	# tmp357, D.12331
	imulq	$632, %rdx, %rdx	#, D.12331, D.12331
	subq	$632, %rdx	#, D.12332
	addq	%rdx, %rax	# D.12332, iftmp.694
	jmp	.L648	#
.L647:
	.loc 1 2320 0 discriminator 2
	movl	$0, %eax	#, iftmp.694
.L648:
	.loc 1 2320 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.694, prevMB
	.loc 1 2321 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rcx	# img, img.696
	movq	-48(%rbp), %rax	# currMB, tmp358
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	movslq	%eax, %rdx	# D.12333, tmp359
	movq	%rdx, %rax	# tmp359, tmp360
	addq	%rax, %rax	# tmp360
	addq	%rdx, %rax	# tmp359, tmp360
	salq	$4, %rax	#, tmp361
	addq	$14176, %rax	#, tmp362
	addq	%rcx, %rax	# img.696, tmp363
	movq	%rax, -64(%rbp)	# tmp363, currSE
	.loc 1 2322 0 discriminator 3
	movq	-48(%rbp), %rax	# currMB, tmp367
	addq	$20, %rax	#, tmp366
	movq	%rax, -32(%rbp)	# tmp366, bitCount
	.loc 1 2323 0 discriminator 3
	movq	img(%rip), %rax	# img, img.697
	movq	14160(%rax), %rax	# img.697_51->currentSlice, tmp368
	movq	%rax, -24(%rbp)	# tmp368, currSlice
	.loc 1 2325 0 discriminator 3
	movq	input(%rip), %rax	# input, input.698
	movl	2364(%rax), %eax	# input.698_53->partition_mode, D.12333
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp370
	movq	%rax, -16(%rbp)	# tmp370, partMap
	.loc 1 2326 0 discriminator 3
	movl	$0, -92(%rbp)	#, no_bits
	.loc 1 2327 0 discriminator 3
	movq	-48(%rbp), %rax	# currMB, tmp371
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L649	#,
	.loc 1 2327 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.700
	movl	24(%rax), %eax	# img.700_58->type, D.12333
	cmpl	$1, %eax	#, D.12333
	jne	.L650	#,
	.loc 1 2327 0 discriminator 4
	movq	-48(%rbp), %rax	# currMB, tmp372
	movl	460(%rax), %eax	# currMB_38->cbp, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L649	#,
.L650:
	.loc 1 2327 0 discriminator 3
	movl	$1, %eax	#, iftmp.699
	jmp	.L651	#
.L649:
	.loc 1 2327 0 discriminator 2
	movl	$0, %eax	#, iftmp.699
.L651:
	.loc 1 2327 0 discriminator 5
	movl	%eax, -76(%rbp)	# iftmp.699, skip
	.loc 1 2329 0 is_stmt 1 discriminator 5
	movl	$0, -88(%rbp)	#, prevMbSkipped
	.loc 1 2331 0 discriminator 5
	movq	$0, -8(%rbp)	#, topMB
	.loc 1 2333 0 discriminator 5
	movl	$0, -84(%rbp)	#, WriteFrameFieldMBInHeader
	.loc 1 2335 0 discriminator 5
	movq	img(%rip), %rax	# img, img.701
	movl	72400(%rax), %eax	# img.701_67->MbaffFrameFlag, D.12333
	testl	%eax, %eax	# D.12333
	je	.L652	#,
	.loc 1 2337 0
	movl	-80(%rbp), %eax	# mb_nr, mb_nr.702
	andl	$1, %eax	#, D.12334
	testl	%eax, %eax	# D.12334
	jne	.L653	#,
	.loc 1 2339 0
	movl	$1, -84(%rbp)	#, WriteFrameFieldMBInHeader
	.loc 1 2341 0
	movl	$0, -88(%rbp)	#, prevMbSkipped
	jmp	.L652	#
.L653:
	.loc 1 2345 0
	movq	-40(%rbp), %rax	# prevMB, tmp373
	movl	72(%rax), %eax	# prevMB_46->mb_type, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L654	#,
	.loc 1 2345 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.703
	movl	24(%rax), %eax	# img.703_74->type, D.12333
	cmpl	$1, %eax	#, D.12333
	jne	.L655	#,
	movq	-40(%rbp), %rax	# prevMB, tmp374
	movl	460(%rax), %eax	# prevMB_46->cbp, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L654	#,
.L655:
	.loc 1 2347 0 is_stmt 1
	movl	$1, -84(%rbp)	#, WriteFrameFieldMBInHeader
.L654:
	.loc 1 2350 0
	movq	img(%rip), %rax	# img, img.704
	movq	14168(%rax), %rdx	# img.704_78->mb_data, D.12330
	movq	img(%rip), %rax	# img, img.705
	movl	12(%rax), %eax	# img.705_80->current_mb_nr, D.12333
	cltq
	imulq	$632, %rax, %rax	#, D.12331, D.12331
	subq	$632, %rax	#, D.12332
	addq	%rdx, %rax	# D.12330, tmp375
	movq	%rax, -8(%rbp)	# tmp375, topMB
	.loc 1 2351 0
	movq	img(%rip), %rax	# img, img.706
	movl	24(%rax), %eax	# img.706_86->type, D.12333
	cmpl	$1, %eax	#, D.12333
	je	.L656	#,
	.loc 1 2352 0
	movq	-8(%rbp), %rax	# topMB, tmp376
	movl	72(%rax), %eax	# topMB_85->mb_type, D.12333
	testl	%eax, %eax	# D.12333
	sete	%al	#, D.12335
	movzbl	%al, %eax	# D.12335, tmp377
	movl	%eax, -88(%rbp)	# tmp377, prevMbSkipped
	jmp	.L652	#
.L656:
	.loc 1 2354 0
	movq	-8(%rbp), %rax	# topMB, tmp378
	movl	72(%rax), %eax	# topMB_85->mb_type, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L657	#,
	.loc 1 2354 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# topMB, tmp379
	movl	460(%rax), %eax	# topMB_85->cbp, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L657	#,
	.loc 1 2354 0 discriminator 3
	movl	$1, %eax	#, iftmp.707
	jmp	.L658	#
.L657:
	.loc 1 2354 0 discriminator 2
	movl	$0, %eax	#, iftmp.707
.L658:
	.loc 1 2354 0 discriminator 4
	movl	%eax, -88(%rbp)	# iftmp.707, prevMbSkipped
.L652:
	.loc 1 2357 0 is_stmt 1
	movq	-48(%rbp), %rax	# currMB, tmp380
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	cmpl	$9, %eax	#, D.12333
	je	.L659	#,
	.loc 1 2357 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# currMB, tmp381
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	cmpl	$10, %eax	#, D.12333
	je	.L659	#,
	.loc 1 2357 0 discriminator 1
	movq	-48(%rbp), %rax	# currMB, tmp382
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	cmpl	$13, %eax	#, D.12333
	jne	.L660	#,
.L659:
	movl	$1, %eax	#, iftmp.708
	jmp	.L661	#
.L660:
	.loc 1 2357 0 discriminator 3
	movl	$0, %eax	#, iftmp.708
.L661:
	.loc 1 2357 0 discriminator 4
	movq	-48(%rbp), %rdx	# currMB, tmp383
	movl	%eax, 528(%rdx)	# iftmp.708, currMB_38->IntraChromaPredModeFlag
	.loc 1 2360 0 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax	# currSlice, tmp384
	movq	24(%rax), %rdx	# currSlice_52->partArr, D.12336
	movq	-16(%rbp), %rax	# partMap, tmp385
	addq	$8, %rax	#, D.12337
	movl	(%rax), %eax	# *_102, D.12333
	cltq
	salq	$3, %rax	#, tmp387
	movq	%rax, %rcx	# tmp386, tmp388
	salq	$4, %rcx	#, tmp388
	subq	%rax, %rcx	# tmp386, D.12331
	movq	%rcx, %rax	# D.12331, D.12331
	addq	%rdx, %rax	# D.12336, tmp389
	movq	%rax, -56(%rbp)	# tmp389, dataPart
	.loc 1 2362 0 discriminator 4
	movq	img(%rip), %rax	# img, img.709
	movl	24(%rax), %eax	# img.709_107->type, D.12333
	cmpl	$2, %eax	#, D.12333
	jne	.L662	#,
	.loc 1 2365 0
	movq	img(%rip), %rax	# img, img.710
	movl	72400(%rax), %eax	# img.710_109->MbaffFrameFlag, D.12333
	testl	%eax, %eax	# D.12333
	je	.L663	#,
	.loc 1 2365 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, skip
	jne	.L663	#,
	.loc 1 2367 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, WriteFrameFieldMBInHeader
	je	.L663	#,
	.loc 1 2369 0
	movq	-48(%rbp), %rax	# currMB, tmp390
	movl	532(%rax), %edx	# currMB_38->mb_field, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp391
	movl	%edx, 4(%rax)	# D.12333, currSE_49->value1
	.loc 1 2370 0
	movq	-64(%rbp), %rax	# currSE, tmp392
	movl	$0, 8(%rax)	#, currSE_49->value2
	.loc 1 2371 0
	movq	-64(%rbp), %rax	# currSE, tmp393
	movl	$2, (%rax)	#, currSE_49->type
	.loc 1 2373 0
	movq	input(%rip), %rax	# input, input.711
	movl	2356(%rax), %eax	# input.711_112->symbol_mode, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L664	#,
	.loc 1 2373 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# currSE, tmp394
	movq	$ue_linfo, 32(%rax)	#, currSE_49->mapping
	jmp	.L665	#
.L664:
	.loc 1 2374 0 is_stmt 1
	movq	-64(%rbp), %rax	# currSE, tmp395
	movq	$writeFieldModeInfo_CABAC, 40(%rax)	#, currSE_49->writing
.L665:
	.loc 1 2379 0
	movq	input(%rip), %rax	# input, input.712
	movl	2356(%rax), %eax	# input.712_114->symbol_mode, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L666	#,
	.loc 1 2381 0
	movq	-48(%rbp), %rax	# currMB, tmp396
	movl	532(%rax), %eax	# currMB_38->mb_field, D.12333
	testl	%eax, %eax	# D.12333
	setne	%al	#, D.12335
	movzbl	%al, %edx	# D.12335, D.12338
	movq	-64(%rbp), %rax	# currSE, tmp397
	movl	%edx, 20(%rax)	# D.12338, currSE_49->bitpattern
	.loc 1 2382 0
	movq	-64(%rbp), %rax	# currSE, tmp398
	movl	$1, 12(%rax)	#, currSE_49->len
	.loc 1 2383 0
	movq	-56(%rbp), %rax	# dataPart, tmp399
	movq	(%rax), %rdx	# dataPart_106->bitstream, D.12339
	movq	-64(%rbp), %rax	# currSE, tmp400
	movq	%rdx, %rsi	# D.12339,
	movq	%rax, %rdi	# tmp400,
	call	writeSyntaxElement2Buf_Fixed	#
	jmp	.L667	#
.L666:
	.loc 1 2387 0
	movq	-56(%rbp), %rax	# dataPart, tmp401
	movq	112(%rax), %rax	# dataPart_106->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp402
	movq	-64(%rbp), %rdx	# currSE, tmp403
	movq	%rcx, %rsi	# tmp402,
	movq	%rdx, %rdi	# tmp403,
	call	*%rax	# D.12340
.L667:
	.loc 1 2390 0
	movq	-32(%rbp), %rax	# bitCount, tmp404
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp405
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_122, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp406
	movl	12(%rax), %eax	# currSE_49->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_121
	.loc 1 2391 0
	movq	-64(%rbp), %rax	# currSE, tmp407
	movl	12(%rax), %eax	# currSE_49->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2392 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2393 0
	movq	-48(%rbp), %rax	# currMB, tmp408
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp409
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
.L663:
	.loc 1 2398 0
	movq	-48(%rbp), %rax	# currMB, tmp410
	movq	%rax, %rdi	# tmp410,
	call	MBType2Value	#
	movq	-64(%rbp), %rdx	# currSE, tmp411
	movl	%eax, 4(%rdx)	# D.12333, currSE_4->value1
	.loc 1 2399 0
	movq	-64(%rbp), %rax	# currSE, tmp412
	movl	$0, 8(%rax)	#, currSE_4->value2
	.loc 1 2400 0
	movq	-64(%rbp), %rax	# currSE, tmp413
	movl	$2, (%rax)	#, currSE_4->type
	.loc 1 2402 0
	movq	input(%rip), %rax	# input, input.713
	movl	2356(%rax), %eax	# input.713_132->symbol_mode, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L668	#,
	.loc 1 2402 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# currSE, tmp414
	movq	$ue_linfo, 32(%rax)	#, currSE_4->mapping
	jmp	.L669	#
.L668:
	.loc 1 2403 0 is_stmt 1
	movq	-64(%rbp), %rax	# currSE, tmp415
	movq	$writeMB_typeInfo_CABAC, 40(%rax)	#, currSE_4->writing
.L669:
	.loc 1 2405 0 discriminator 1
	movq	-56(%rbp), %rax	# dataPart, tmp416
	movq	112(%rax), %rax	# dataPart_106->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp417
	movq	-64(%rbp), %rdx	# currSE, tmp418
	movq	%rcx, %rsi	# tmp417,
	movq	%rdx, %rdi	# tmp418,
	call	*%rax	# D.12340
	.loc 1 2409 0 discriminator 1
	movq	-32(%rbp), %rax	# bitCount, tmp419
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp420
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_136, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp421
	movl	12(%rax), %eax	# currSE_4->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_135
	.loc 1 2410 0 discriminator 1
	movq	-64(%rbp), %rax	# currSE, tmp422
	movl	12(%rax), %eax	# currSE_4->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2411 0 discriminator 1
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2412 0 discriminator 1
	movq	-48(%rbp), %rax	# currMB, tmp423
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp424
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
	jmp	.L670	#
.L662:
	.loc 1 2414 0
	movq	input(%rip), %rax	# input, input.714
	movl	2356(%rax), %eax	# input.714_145->symbol_mode, D.12333
	cmpl	$1, %eax	#, D.12333
	jne	.L671	#,
	.loc 1 2416 0
	movq	img(%rip), %rax	# img, img.715
	movl	72400(%rax), %eax	# img.715_147->MbaffFrameFlag, D.12333
	testl	%eax, %eax	# D.12333
	je	.L672	#,
	.loc 1 2416 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.716
	movl	12(%rax), %eax	# img.716_149->current_mb_nr, D.12333
	andl	$1, %eax	#, D.12334
	testl	%eax, %eax	# D.12334
	je	.L673	#,
	cmpl	$0, -88(%rbp)	#, prevMbSkipped
	je	.L672	#,
.L673:
	.loc 1 2418 0 is_stmt 1
	movq	-48(%rbp), %rax	# currMB, tmp425
	movl	532(%rax), %eax	# currMB_38->mb_field, tmp426
	movl	%eax, -72(%rbp)	# tmp426, mb_field_tmp
	.loc 1 2419 0
	movl	$0, %eax	#,
	call	field_flag_inference	#
	movq	-48(%rbp), %rdx	# currMB, tmp427
	movl	%eax, 532(%rdx)	# D.12333, currMB_38->mb_field
	.loc 1 2420 0
	movl	$0, %eax	#,
	call	CheckAvailabilityOfNeighborsCABAC	#
	.loc 1 2421 0
	movq	-48(%rbp), %rax	# currMB, tmp428
	movl	-72(%rbp), %edx	# mb_field_tmp, tmp429
	movl	%edx, 532(%rax)	# tmp429, currMB_38->mb_field
.L672:
	.loc 1 2425 0
	movq	-48(%rbp), %rax	# currMB, tmp430
	movq	%rax, %rdi	# tmp430,
	call	MBType2Value	#
	movl	%eax, -68(%rbp)	# tmp431, mb_type
	.loc 1 2426 0
	movq	-64(%rbp), %rax	# currSE, tmp432
	movl	-68(%rbp), %edx	# mb_type, tmp433
	movl	%edx, 4(%rax)	# tmp433, currSE_49->value1
	.loc 1 2427 0
	movq	-48(%rbp), %rax	# currMB, tmp434
	movl	460(%rax), %edx	# currMB_38->cbp, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp435
	movl	%edx, 8(%rax)	# D.12333, currSE_49->value2
	.loc 1 2428 0
	movq	-64(%rbp), %rax	# currSE, tmp436
	movl	$2, (%rax)	#, currSE_49->type
	.loc 1 2429 0
	movq	-64(%rbp), %rax	# currSE, tmp437
	movq	$writeMB_skip_flagInfo_CABAC, 40(%rax)	#, currSE_49->writing
	.loc 1 2430 0
	movq	-56(%rbp), %rax	# dataPart, tmp438
	movq	112(%rax), %rax	# dataPart_106->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp439
	movq	-64(%rbp), %rdx	# currSE, tmp440
	movq	%rcx, %rsi	# tmp439,
	movq	%rdx, %rdi	# tmp440,
	call	*%rax	# D.12340
	.loc 1 2435 0
	movq	-32(%rbp), %rax	# bitCount, tmp441
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp442
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_159, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp443
	movl	12(%rax), %eax	# currSE_49->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_158
	.loc 1 2436 0
	movq	-64(%rbp), %rax	# currSE, tmp444
	movl	12(%rax), %eax	# currSE_49->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2437 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2438 0
	movq	-48(%rbp), %rax	# currMB, tmp445
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp446
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
	.loc 1 2440 0
	movl	$0, %eax	#,
	call	CheckAvailabilityOfNeighborsCABAC	#
	.loc 1 2443 0
	movq	img(%rip), %rax	# img, img.717
	movl	72400(%rax), %eax	# img.717_168->MbaffFrameFlag, D.12333
	testl	%eax, %eax	# D.12333
	je	.L674	#,
	.loc 1 2443 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, skip
	jne	.L674	#,
	.loc 1 2445 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, WriteFrameFieldMBInHeader
	je	.L674	#,
	.loc 1 2447 0
	movq	-48(%rbp), %rax	# currMB, tmp447
	movl	532(%rax), %edx	# currMB_38->mb_field, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp448
	movl	%edx, 4(%rax)	# D.12333, currSE_165->value1
	.loc 1 2448 0
	movq	-64(%rbp), %rax	# currSE, tmp449
	movl	$0, 8(%rax)	#, currSE_165->value2
	.loc 1 2449 0
	movq	-64(%rbp), %rax	# currSE, tmp450
	movl	$2, (%rax)	#, currSE_165->type
	.loc 1 2451 0
	movq	input(%rip), %rax	# input, input.718
	movl	2356(%rax), %eax	# input.718_171->symbol_mode, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L675	#,
	.loc 1 2451 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# currSE, tmp451
	movq	$ue_linfo, 32(%rax)	#, currSE_165->mapping
	jmp	.L676	#
.L675:
	.loc 1 2452 0 is_stmt 1
	movq	-64(%rbp), %rax	# currSE, tmp452
	movq	$writeFieldModeInfo_CABAC, 40(%rax)	#, currSE_165->writing
.L676:
	.loc 1 2454 0
	movq	input(%rip), %rax	# input, input.719
	movl	2356(%rax), %eax	# input.719_173->symbol_mode, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L677	#,
	.loc 1 2456 0
	movq	-48(%rbp), %rax	# currMB, tmp453
	movl	532(%rax), %eax	# currMB_38->mb_field, D.12333
	testl	%eax, %eax	# D.12333
	setne	%al	#, D.12335
	movzbl	%al, %edx	# D.12335, D.12338
	movq	-64(%rbp), %rax	# currSE, tmp454
	movl	%edx, 20(%rax)	# D.12338, currSE_165->bitpattern
	.loc 1 2457 0
	movq	-64(%rbp), %rax	# currSE, tmp455
	movl	$1, 12(%rax)	#, currSE_165->len
	.loc 1 2458 0
	movq	-56(%rbp), %rax	# dataPart, tmp456
	movq	(%rax), %rdx	# dataPart_106->bitstream, D.12339
	movq	-64(%rbp), %rax	# currSE, tmp457
	movq	%rdx, %rsi	# D.12339,
	movq	%rax, %rdi	# tmp457,
	call	writeSyntaxElement2Buf_Fixed	#
	jmp	.L678	#
.L677:
	.loc 1 2462 0
	movq	-56(%rbp), %rax	# dataPart, tmp458
	movq	112(%rax), %rax	# dataPart_106->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp459
	movq	-64(%rbp), %rdx	# currSE, tmp460
	movq	%rcx, %rsi	# tmp459,
	movq	%rdx, %rdi	# tmp460,
	call	*%rax	# D.12340
.L678:
	.loc 1 2467 0
	movq	-32(%rbp), %rax	# bitCount, tmp461
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp462
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_181, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp463
	movl	12(%rax), %eax	# currSE_165->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_180
	.loc 1 2468 0
	movq	-64(%rbp), %rax	# currSE, tmp464
	movl	12(%rax), %eax	# currSE_165->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2469 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2470 0
	movq	-48(%rbp), %rax	# currMB, tmp465
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp466
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
.L674:
	.loc 1 2475 0
	movq	-48(%rbp), %rax	# currMB, tmp467
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L679	#,
	.loc 1 2475 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.720
	movl	24(%rax), %eax	# img.720_191->type, D.12333
	cmpl	$1, %eax	#, D.12333
	jne	.L670	#,
	movq	-48(%rbp), %rax	# currMB, tmp468
	movl	460(%rax), %eax	# currMB_38->cbp, D.12333
	testl	%eax, %eax	# D.12333
	je	.L670	#,
.L679:
	.loc 1 2477 0 is_stmt 1
	movq	-64(%rbp), %rax	# currSE, tmp469
	movl	-68(%rbp), %edx	# mb_type, tmp470
	movl	%edx, 4(%rax)	# tmp470, currSE_5->value1
	.loc 1 2478 0
	movq	-64(%rbp), %rax	# currSE, tmp471
	movl	$0, 8(%rax)	#, currSE_5->value2
	.loc 1 2479 0
	movq	-64(%rbp), %rax	# currSE, tmp472
	movl	$2, (%rax)	#, currSE_5->type
	.loc 1 2480 0
	movq	-64(%rbp), %rax	# currSE, tmp473
	movq	$writeMB_typeInfo_CABAC, 40(%rax)	#, currSE_5->writing
	.loc 1 2481 0
	movq	-56(%rbp), %rax	# dataPart, tmp474
	movq	112(%rax), %rax	# dataPart_106->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp475
	movq	-64(%rbp), %rdx	# currSE, tmp476
	movq	%rcx, %rsi	# tmp475,
	movq	%rdx, %rdi	# tmp476,
	call	*%rax	# D.12340
	.loc 1 2486 0
	movq	-32(%rbp), %rax	# bitCount, tmp477
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp478
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_196, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp479
	movl	12(%rax), %eax	# currSE_5->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_195
	.loc 1 2487 0
	movq	-64(%rbp), %rax	# currSE, tmp480
	movl	12(%rax), %eax	# currSE_5->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2488 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2489 0
	movq	-48(%rbp), %rax	# currMB, tmp481
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp482
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
	jmp	.L670	#
.L671:
	.loc 1 2493 0
	movq	-48(%rbp), %rax	# currMB, tmp483
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L681	#,
	.loc 1 2493 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.721
	movl	24(%rax), %eax	# img.721_206->type, D.12333
	cmpl	$1, %eax	#, D.12333
	jne	.L682	#,
	movq	-48(%rbp), %rax	# currMB, tmp484
	movl	460(%rax), %eax	# currMB_38->cbp, D.12333
	testl	%eax, %eax	# D.12333
	je	.L682	#,
.L681:
	.loc 1 2496 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.722
	movl	120(%rax), %edx	# img.722_252->cod_counter, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp485
	movl	%edx, 4(%rax)	# D.12333, currSE_49->value1
	.loc 1 2497 0
	movq	-64(%rbp), %rax	# currSE, tmp486
	movl	$0, 8(%rax)	#, currSE_49->value2
	.loc 1 2498 0
	movq	-64(%rbp), %rax	# currSE, tmp487
	movq	$ue_linfo, 32(%rax)	#, currSE_49->mapping
	.loc 1 2499 0
	movq	-64(%rbp), %rax	# currSE, tmp488
	movl	$2, (%rax)	#, currSE_49->type
	.loc 1 2500 0
	movq	-56(%rbp), %rax	# dataPart, tmp489
	movq	112(%rax), %rax	# dataPart_106->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp490
	movq	-64(%rbp), %rdx	# currSE, tmp491
	movq	%rcx, %rsi	# tmp490,
	movq	%rdx, %rdi	# tmp491,
	call	*%rax	# D.12340
	.loc 1 2504 0
	movq	-32(%rbp), %rax	# bitCount, tmp492
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp493
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_256, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp494
	movl	12(%rax), %eax	# currSE_49->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_255
	.loc 1 2505 0
	movq	-64(%rbp), %rax	# currSE, tmp495
	movl	12(%rax), %eax	# currSE_49->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2506 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2507 0
	movq	-48(%rbp), %rax	# currMB, tmp496
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp497
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
	.loc 1 2510 0
	movq	img(%rip), %rax	# img, img.723
	movl	$0, 120(%rax)	#, img.723_265->cod_counter
	.loc 1 2513 0
	movq	img(%rip), %rax	# img, img.724
	movl	72400(%rax), %eax	# img.724_266->MbaffFrameFlag, D.12333
	testl	%eax, %eax	# D.12333
	je	.L683	#,
	.loc 1 2513 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, skip
	jne	.L683	#,
	.loc 1 2515 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, WriteFrameFieldMBInHeader
	je	.L683	#,
	.loc 1 2517 0
	movq	-48(%rbp), %rax	# currMB, tmp498
	movl	532(%rax), %edx	# currMB_38->mb_field, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp499
	movl	%edx, 4(%rax)	# D.12333, currSE_262->value1
	.loc 1 2518 0
	movq	-64(%rbp), %rax	# currSE, tmp500
	movl	$2, (%rax)	#, currSE_262->type
	.loc 1 2519 0
	movq	-64(%rbp), %rax	# currSE, tmp501
	movq	$ue_linfo, 32(%rax)	#, currSE_262->mapping
	.loc 1 2522 0
	movq	-48(%rbp), %rax	# currMB, tmp502
	movl	532(%rax), %eax	# currMB_38->mb_field, D.12333
	testl	%eax, %eax	# D.12333
	setne	%al	#, D.12335
	movzbl	%al, %edx	# D.12335, D.12338
	movq	-64(%rbp), %rax	# currSE, tmp503
	movl	%edx, 20(%rax)	# D.12338, currSE_262->bitpattern
	.loc 1 2523 0
	movq	-64(%rbp), %rax	# currSE, tmp504
	movl	$1, 12(%rax)	#, currSE_262->len
	.loc 1 2524 0
	movq	-56(%rbp), %rax	# dataPart, tmp505
	movq	(%rax), %rdx	# dataPart_106->bitstream, D.12339
	movq	-64(%rbp), %rax	# currSE, tmp506
	movq	%rdx, %rsi	# D.12339,
	movq	%rax, %rdi	# tmp506,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 2529 0
	movq	-32(%rbp), %rax	# bitCount, tmp507
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp508
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_274, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp509
	movl	12(%rax), %eax	# currSE_262->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_273
	.loc 1 2530 0
	movq	-64(%rbp), %rax	# currSE, tmp510
	movl	12(%rax), %eax	# currSE_262->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2531 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2532 0
	movq	-48(%rbp), %rax	# currMB, tmp511
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp512
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
.L683:
	.loc 1 2536 0
	movq	-48(%rbp), %rax	# currMB, tmp513
	movq	%rax, %rdi	# tmp513,
	call	MBType2Value	#
	movq	-64(%rbp), %rdx	# currSE, tmp514
	movl	%eax, 4(%rdx)	# D.12333, currSE_7->value1
	.loc 1 2538 0
	movq	img(%rip), %rax	# img, img.725
	movl	24(%rax), %eax	# img.725_284->type, D.12333
	cmpl	$1, %eax	#, D.12333
	je	.L684	#,
	.loc 1 2540 0
	movq	-64(%rbp), %rax	# currSE, tmp515
	movl	4(%rax), %eax	# currSE_7->value1, D.12333
	leal	-1(%rax), %edx	#, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp516
	movl	%edx, 4(%rax)	# D.12333, currSE_7->value1
.L684:
	.loc 1 2542 0
	movq	-64(%rbp), %rax	# currSE, tmp517
	movq	$ue_linfo, 32(%rax)	#, currSE_7->mapping
	.loc 1 2543 0
	movq	-64(%rbp), %rax	# currSE, tmp518
	movl	$2, (%rax)	#, currSE_7->type
	.loc 1 2544 0
	movq	-64(%rbp), %rax	# currSE, tmp519
	movl	$0, 8(%rax)	#, currSE_7->value2
	.loc 1 2546 0
	movq	-56(%rbp), %rax	# dataPart, tmp520
	movq	112(%rax), %rax	# dataPart_106->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp521
	movq	-64(%rbp), %rdx	# currSE, tmp522
	movq	%rcx, %rsi	# tmp521,
	movq	%rdx, %rdi	# tmp522,
	call	*%rax	# D.12340
	.loc 1 2551 0
	movq	-32(%rbp), %rax	# bitCount, tmp523
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp524
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_290, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp525
	movl	12(%rax), %eax	# currSE_7->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_289
	.loc 1 2552 0
	movq	-64(%rbp), %rax	# currSE, tmp526
	movl	12(%rax), %eax	# currSE_7->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2553 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2554 0
	movq	-48(%rbp), %rax	# currMB, tmp527
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp528
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
	jmp	.L670	#
.L682:
	.loc 1 2559 0
	movq	img(%rip), %rax	# img, img.726
	movl	120(%rax), %edx	# img.726_209->cod_counter, D.12333
	addl	$1, %edx	#, D.12333
	movl	%edx, 120(%rax)	# D.12333, img.726_209->cod_counter
	.loc 1 2562 0
	movl	$0, -96(%rbp)	#, j
	jmp	.L685	#
.L688:
	.loc 1 2563 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L686	#
.L687:
	.loc 1 2564 0 discriminator 2
	movq	img(%rip), %rax	# img, img.727
	movq	128(%rax), %rdx	# img.727_217->nz_coeff, D.12342
	movq	img(%rip), %rax	# img, img.728
	movl	12(%rax), %eax	# img.728_219->current_mb_nr, D.12333
	cltq
	salq	$3, %rax	#, D.12331
	addq	%rdx, %rax	# D.12342, D.12342
	movq	(%rax), %rax	# *_223, D.12343
	movl	-100(%rbp), %edx	# i, tmp529
	movslq	%edx, %rdx	# tmp529, D.12331
	salq	$3, %rdx	#, D.12331
	addq	%rdx, %rax	# D.12331, D.12343
	movq	(%rax), %rax	# *_227, D.12341
	movl	-96(%rbp), %edx	# j, tmp530
	movslq	%edx, %rdx	# tmp530, D.12331
	salq	$2, %rdx	#, D.12331
	addq	%rdx, %rax	# D.12331, D.12341
	movl	$0, (%rax)	#, *_231
	.loc 1 2563 0 discriminator 2
	addl	$1, -100(%rbp)	#, i
.L686:
	.loc 1 2563 0 is_stmt 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, i
	jle	.L687	#,
	.loc 1 2562 0 is_stmt 1
	addl	$1, -96(%rbp)	#, j
.L685:
	.loc 1 2562 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.729
	movl	72692(%rax), %eax	# img.729_213->num_blk8x8_uv, D.12333
	addl	$4, %eax	#, D.12333
	cmpl	-96(%rbp), %eax	# j, D.12333
	jg	.L688	#,
	.loc 1 2567 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.730
	movl	12(%rax), %edx	# img.730_234->current_mb_nr, D.12333
	movq	img(%rip), %rax	# img, img.731
	movl	16(%rax), %eax	# img.731_236->total_number_mb, D.12333
	cmpl	%eax, %edx	# D.12333, D.12333
	jne	.L670	#,
	.loc 1 2570 0
	movq	img(%rip), %rax	# img, img.732
	movl	120(%rax), %edx	# img.732_238->cod_counter, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp531
	movl	%edx, 4(%rax)	# D.12333, currSE_49->value1
	.loc 1 2571 0
	movq	-64(%rbp), %rax	# currSE, tmp532
	movl	$0, 8(%rax)	#, currSE_49->value2
	.loc 1 2572 0
	movq	-64(%rbp), %rax	# currSE, tmp533
	movq	$ue_linfo, 32(%rax)	#, currSE_49->mapping
	.loc 1 2573 0
	movq	-64(%rbp), %rax	# currSE, tmp534
	movl	$2, (%rax)	#, currSE_49->type
	.loc 1 2575 0
	movq	-56(%rbp), %rax	# dataPart, tmp535
	movq	112(%rax), %rax	# dataPart_106->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp536
	movq	-64(%rbp), %rdx	# currSE, tmp537
	movq	%rcx, %rsi	# tmp536,
	movq	%rdx, %rdi	# tmp537,
	call	*%rax	# D.12340
	.loc 1 2579 0
	movq	-32(%rbp), %rax	# bitCount, tmp538
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp539
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_242, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp540
	movl	12(%rax), %eax	# currSE_49->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_241
	.loc 1 2580 0
	movq	-64(%rbp), %rax	# currSE, tmp541
	movl	12(%rax), %eax	# currSE_49->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2581 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2582 0
	movq	-48(%rbp), %rax	# currMB, tmp542
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp543
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
	.loc 1 2585 0
	movq	img(%rip), %rax	# img, img.733
	movl	$0, 120(%rax)	#, img.733_251->cod_counter
.L670:
	.loc 1 2590 0
	movq	-48(%rbp), %rax	# currMB, tmp544
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L689	#,
	.loc 1 2590 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rax	# img, img.735
	movl	24(%rax), %eax	# img.735_300->type, D.12333
	cmpl	$1, %eax	#, D.12333
	jne	.L689	#,
	.loc 1 2590 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.736
	movl	1156(%rax), %eax	# active_sps.736_302->direct_8x8_inference_flag, D.12344
	testl	%eax, %eax	# D.12344
	je	.L690	#,
.L689:
	movl	$1, %eax	#, iftmp.734
	jmp	.L691	#
.L690:
	.loc 1 2590 0 discriminator 3
	movl	$0, %eax	#, iftmp.734
.L691:
	.loc 1 2590 0 discriminator 4
	movq	-48(%rbp), %rdx	# currMB, tmp545
	movl	%eax, 576(%rdx)	# iftmp.734, currMB_38->NoMbPartLessThan8x8Flag
	.loc 1 2593 0 is_stmt 1 discriminator 4
	movq	-48(%rbp), %rax	# currMB, tmp546
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	cmpl	$8, %eax	#, D.12333
	jne	.L692	#,
	.loc 1 2595 0
	movq	-24(%rbp), %rax	# currSlice, tmp547
	movq	24(%rax), %rdx	# currSlice_52->partArr, D.12336
	movq	-16(%rbp), %rax	# partMap, tmp548
	addq	$8, %rax	#, D.12337
	movl	(%rax), %eax	# *_308, D.12333
	cltq
	salq	$3, %rax	#, tmp550
	movq	%rax, %rcx	# tmp549, tmp551
	salq	$4, %rcx	#, tmp551
	subq	%rax, %rcx	# tmp549, D.12331
	movq	%rcx, %rax	# D.12331, D.12331
	addq	%rdx, %rax	# D.12336, tmp552
	movq	%rax, -56(%rbp)	# tmp552, dataPart
	.loc 1 2597 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L693	#
.L700:
	.loc 1 2599 0
	movq	input(%rip), %rax	# input, input.737
	movl	2356(%rax), %eax	# input.737_314->symbol_mode, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L694	#,
	.loc 1 2599 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# currSE, tmp553
	movq	$ue_linfo, 32(%rax)	#, currSE_9->mapping
	jmp	.L695	#
.L694:
	.loc 1 2600 0 is_stmt 1
	movq	-64(%rbp), %rax	# currSE, tmp554
	movq	$writeB8_typeInfo_CABAC, 40(%rax)	#, currSE_9->writing
.L695:
	.loc 1 2602 0
	movq	-48(%rbp), %rax	# currMB, tmp555
	movl	-100(%rbp), %edx	# i, tmp557
	movslq	%edx, %rdx	# tmp557, tmp556
	addq	$120, %rdx	#, tmp558
	movl	8(%rax,%rdx,4), %edx	# currMB_38->b8pdir, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp559
	movl	-100(%rbp), %ecx	# i, tmp561
	movslq	%ecx, %rcx	# tmp561, tmp560
	addq	$116, %rcx	#, tmp562
	movl	8(%rax,%rcx,4), %eax	# currMB_38->b8mode, D.12333
	movl	%edx, %esi	# D.12333,
	movl	%eax, %edi	# D.12333,
	call	B8Mode2Value	#
	movq	-64(%rbp), %rdx	# currSE, tmp563
	movl	%eax, 4(%rdx)	# D.12333, currSE_9->value1
	.loc 1 2603 0
	movq	-64(%rbp), %rax	# currSE, tmp564
	movl	$0, 8(%rax)	#, currSE_9->value2
	.loc 1 2604 0
	movq	-64(%rbp), %rax	# currSE, tmp565
	movl	$2, (%rax)	#, currSE_9->type
	.loc 1 2605 0
	movq	-56(%rbp), %rax	# dataPart, tmp566
	movq	112(%rax), %rax	# dataPart_312->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp567
	movq	-64(%rbp), %rdx	# currSE, tmp568
	movq	%rcx, %rsi	# tmp567,
	movq	%rdx, %rdi	# tmp568,
	call	*%rax	# D.12340
	.loc 1 2610 0
	movq	-32(%rbp), %rax	# bitCount, tmp569
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp570
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_321, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp571
	movl	12(%rax), %eax	# currSE_9->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_320
	.loc 1 2611 0
	movq	-64(%rbp), %rax	# currSE, tmp572
	movl	12(%rax), %eax	# currSE_9->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2612 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2613 0
	movq	-48(%rbp), %rax	# currMB, tmp573
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp574
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
	.loc 1 2616 0
	movq	-48(%rbp), %rax	# currMB, tmp575
	movl	576(%rax), %edx	# currMB_38->NoMbPartLessThan8x8Flag, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp576
	movl	-100(%rbp), %ecx	# i, tmp578
	movslq	%ecx, %rcx	# tmp578, tmp577
	addq	$116, %rcx	#, tmp579
	movl	8(%rax,%rcx,4), %eax	# currMB_38->b8mode, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L696	#,
	.loc 1 2616 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.739
	movl	1156(%rax), %eax	# active_sps.739_332->direct_8x8_inference_flag, D.12344
	testl	%eax, %eax	# D.12344
	jne	.L697	#,
.L696:
	.loc 1 2617 0 is_stmt 1 discriminator 2
	movq	-48(%rbp), %rax	# currMB, tmp580
	movl	-100(%rbp), %ecx	# i, tmp582
	movslq	%ecx, %rcx	# tmp582, tmp581
	addq	$116, %rcx	#, tmp583
	movl	8(%rax,%rcx,4), %eax	# currMB_38->b8mode, D.12333
	.loc 1 2616 0 discriminator 2
	cmpl	$4, %eax	#, D.12333
	jne	.L698	#,
.L697:
	.loc 1 2616 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.738
	jmp	.L699	#
.L698:
	.loc 1 2616 0 discriminator 3
	movl	$0, %eax	#, iftmp.738
.L699:
	.loc 1 2616 0 discriminator 4
	andl	%eax, %edx	# iftmp.738, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp584
	movl	%edx, 576(%rax)	# D.12333, currMB_38->NoMbPartLessThan8x8Flag
	.loc 1 2597 0 is_stmt 1 discriminator 4
	addl	$1, -100(%rbp)	#, i
.L693:
	.loc 1 2597 0 is_stmt 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, i
	jle	.L700	#,
	.loc 1 2619 0 is_stmt 1
	movl	$0, %eax	#,
	call	writeMotionInfo2NAL	#
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2620 0
	movq	img(%rip), %rcx	# img, img.740
	movq	-48(%rbp), %rax	# currMB, tmp585
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	movslq	%eax, %rdx	# D.12333, tmp586
	movq	%rdx, %rax	# tmp586, tmp587
	addq	%rax, %rax	# tmp587
	addq	%rdx, %rax	# tmp586, tmp587
	salq	$4, %rax	#, tmp588
	addq	$14176, %rax	#, tmp589
	addq	%rcx, %rax	# img.740, tmp590
	movq	%rax, -64(%rbp)	# tmp590, currSE
.L692:
	.loc 1 2626 0
	movq	-48(%rbp), %rax	# currMB, tmp591
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	cmpl	$13, %eax	#, D.12333
	je	.L701	#,
	.loc 1 2626 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# currMB, tmp592
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	cmpl	$9, %eax	#, D.12333
	jne	.L702	#,
.L701:
	.loc 1 2626 0 discriminator 1
	movq	input(%rip), %rax	# input, input.741
	movl	3220(%rax), %eax	# input.741_346->AllowTransform8x8, D.12333
	testl	%eax, %eax	# D.12333
	je	.L702	#,
	.loc 1 2628 0 is_stmt 1
	movq	-48(%rbp), %rax	# currMB, tmp593
	movl	572(%rax), %edx	# currMB_38->luma_transform_size_8x8_flag, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp594
	movl	%edx, 4(%rax)	# D.12333, currSE_10->value1
	.loc 1 2629 0
	movq	-64(%rbp), %rax	# currSE, tmp595
	movl	$20, (%rax)	#, currSE_10->type
	.loc 1 2631 0
	movq	input(%rip), %rax	# input, input.742
	movl	2356(%rax), %eax	# input.742_349->symbol_mode, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L703	#,
	.loc 1 2631 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# currSE, tmp596
	movq	$ue_linfo, 32(%rax)	#, currSE_10->mapping
	jmp	.L704	#
.L703:
	.loc 1 2632 0 is_stmt 1
	movq	-64(%rbp), %rax	# currSE, tmp597
	movq	$writeMB_transform_size_CABAC, 40(%rax)	#, currSE_10->writing
.L704:
	.loc 1 2634 0
	movq	input(%rip), %rax	# input, input.743
	movl	2356(%rax), %eax	# input.743_351->symbol_mode, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L705	#,
	.loc 1 2636 0
	movq	-48(%rbp), %rax	# currMB, tmp598
	movl	572(%rax), %eax	# currMB_38->luma_transform_size_8x8_flag, D.12333
	movl	%eax, %edx	# D.12333, D.12338
	movq	-64(%rbp), %rax	# currSE, tmp599
	movl	%edx, 20(%rax)	# D.12338, currSE_10->bitpattern
	.loc 1 2637 0
	movq	-64(%rbp), %rax	# currSE, tmp600
	movl	$1, 12(%rax)	#, currSE_10->len
	.loc 1 2638 0
	movq	-56(%rbp), %rax	# dataPart, tmp601
	movq	(%rax), %rdx	# dataPart_11->bitstream, D.12339
	movq	-64(%rbp), %rax	# currSE, tmp602
	movq	%rdx, %rsi	# D.12339,
	movq	%rax, %rdi	# tmp602,
	call	writeSyntaxElement2Buf_Fixed	#
	jmp	.L706	#
.L705:
	.loc 1 2642 0
	movq	-56(%rbp), %rax	# dataPart, tmp603
	movq	112(%rax), %rax	# dataPart_11->writeSyntaxElement, D.12340
	movq	-56(%rbp), %rcx	# dataPart, tmp604
	movq	-64(%rbp), %rdx	# currSE, tmp605
	movq	%rcx, %rsi	# tmp604,
	movq	%rdx, %rdi	# tmp605,
	call	*%rax	# D.12340
.L706:
	.loc 1 2648 0
	movq	-32(%rbp), %rax	# bitCount, tmp606
	leaq	8(%rax), %rdx	#, D.12341
	movq	-32(%rbp), %rax	# bitCount, tmp607
	addq	$8, %rax	#, D.12341
	movl	(%rax), %ecx	# *_358, D.12333
	movq	-64(%rbp), %rax	# currSE, tmp608
	movl	12(%rax), %eax	# currSE_10->len, D.12333
	addl	%ecx, %eax	# D.12333, D.12333
	movl	%eax, (%rdx)	# D.12333, *_357
	.loc 1 2649 0
	movq	-64(%rbp), %rax	# currSE, tmp609
	movl	12(%rax), %eax	# currSE_10->len, D.12333
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2650 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 2651 0
	movq	-48(%rbp), %rax	# currMB, tmp610
	movl	(%rax), %eax	# currMB_38->currSEnr, D.12333
	leal	1(%rax), %edx	#, D.12333
	movq	-48(%rbp), %rax	# currMB, tmp611
	movl	%edx, (%rax)	# D.12333, currMB_38->currSEnr
.L702:
	.loc 1 2656 0
	movl	$-1, %edi	#,
	call	writeIntra4x4Modes	#
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2658 0
	movq	-48(%rbp), %rax	# currMB, tmp612
	movl	528(%rax), %eax	# currMB_38->IntraChromaPredModeFlag, D.12333
	testl	%eax, %eax	# D.12333
	je	.L707	#,
	.loc 1 2658 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.744
	movl	72700(%rax), %eax	# img.744_370->yuv_format, D.12333
	testl	%eax, %eax	# D.12333
	je	.L707	#,
	.loc 1 2659 0 is_stmt 1
	movl	$0, %eax	#,
	call	writeChromaIntraPredMode	#
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	jmp	.L708	#
.L707:
	.loc 1 2660 0
	cmpl	$0, -116(%rbp)	#, rdopt
	jne	.L708	#,
	.loc 1 2661 0
	movq	-48(%rbp), %rax	# currMB, tmp613
	movl	$0, 524(%rax)	#, currMB_38->c_ipred_mode
.L708:
	.loc 1 2666 0
	movq	-48(%rbp), %rax	# currMB, tmp614
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	testl	%eax, %eax	# D.12333
	je	.L709	#,
	.loc 1 2666 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# currMB, tmp615
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	cmpl	$8, %eax	#, D.12333
	je	.L709	#,
	.loc 1 2669 0 is_stmt 1
	movl	$0, %eax	#,
	call	writeMotionInfo2NAL	#
	addl	%eax, -92(%rbp)	# D.12333, no_bits
.L709:
	.loc 1 2672 0
	movq	-48(%rbp), %rax	# currMB, tmp616
	movl	72(%rax), %eax	# currMB_38->mb_type, D.12333
	testl	%eax, %eax	# D.12333
	jne	.L710	#,
	.loc 1 2672 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.745
	movl	24(%rax), %eax	# img.745_380->type, D.12333
	cmpl	$1, %eax	#, D.12333
	jne	.L711	#,
	movq	-48(%rbp), %rax	# currMB, tmp617
	movl	460(%rax), %eax	# currMB_38->cbp, D.12333
	testl	%eax, %eax	# D.12333
	je	.L711	#,
.L710:
	.loc 1 2674 0 is_stmt 1
	movl	$0, %eax	#,
	call	writeCBPandLumaCoeff	#
	addl	%eax, -92(%rbp)	# D.12333, no_bits
	.loc 1 2675 0
	movq	img(%rip), %rax	# img, img.746
	movl	72700(%rax), %eax	# img.746_385->yuv_format, D.12333
	testl	%eax, %eax	# D.12333
	je	.L711	#,
	.loc 1 2676 0
	movl	$0, %eax	#,
	call	writeChromaCoeff	#
	addl	%eax, -92(%rbp)	# D.12333, no_bits
.L711:
	.loc 1 2679 0
	movl	-92(%rbp), %eax	# no_bits, D.12333
	.loc 1 2680 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	writeMBLayer, .-writeMBLayer
	.globl	write_terminating_bit
	.type	write_terminating_bit, @function
write_terminating_bit:
.LFB27:
	.loc 1 2683 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, %eax	# bit, tmp70
	movw	%ax, -36(%rbp)	# tmp70, bit
	.loc 1 2685 0
	movq	input(%rip), %rax	# input, input.747
	movl	2364(%rax), %eax	# input.747_1->partition_mode, D.12345
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp72
	movq	%rax, -24(%rbp)	# tmp72, partMap
	.loc 1 2689 0
	movq	img(%rip), %rax	# img, img.748
	movq	14160(%rax), %rax	# img.748_4->currentSlice, D.12346
	movq	24(%rax), %rdx	# _5->partArr, D.12347
	movq	-24(%rbp), %rax	# partMap, tmp73
	addq	$8, %rax	#, D.12348
	movl	(%rax), %eax	# *_7, D.12345
	cltq
	salq	$3, %rax	#, tmp75
	movq	%rax, %rcx	# tmp74, tmp76
	salq	$4, %rcx	#, tmp76
	subq	%rax, %rcx	# tmp74, D.12349
	movq	%rcx, %rax	# D.12349, D.12349
	addq	%rdx, %rax	# D.12347, tmp77
	movq	%rax, -16(%rbp)	# tmp77, dataPart
	.loc 1 2690 0
	movq	-16(%rbp), %rax	# dataPart, tmp78
	movq	(%rax), %rax	# dataPart_11->bitstream, D.12350
	movl	$1, 40(%rax)	#, _12->write_flag
	.loc 1 2691 0
	movq	-16(%rbp), %rax	# dataPart, tmp82
	addq	$8, %rax	#, tmp81
	movq	%rax, -8(%rbp)	# tmp81, eep_dp
	.loc 1 2693 0
	movswl	-36(%rbp), %edx	# bit, D.12345
	movq	-8(%rbp), %rax	# eep_dp, tmp83
	movl	%edx, %esi	# D.12345,
	movq	%rax, %rdi	# tmp83,
	call	biari_encode_symbol_final	#
	.loc 1 2698 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	write_terminating_bit, .-write_terminating_bit
	.globl	writeChromaIntraPredMode
	.type	writeChromaIntraPredMode, @function
writeChromaIntraPredMode:
.LFB28:
	.loc 1 2708 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 2709 0
	movq	img(%rip), %rax	# img, img.749
	movq	14168(%rax), %rdx	# img.749_1->mb_data, D.12351
	movq	img(%rip), %rax	# img, img.750
	movl	12(%rax), %eax	# img.750_3->current_mb_nr, D.12352
	cltq
	imulq	$632, %rax, %rax	#, D.12353, D.12353
	addq	%rdx, %rax	# D.12351, tmp89
	movq	%rax, -48(%rbp)	# tmp89, currMB
	.loc 1 2710 0
	movq	img(%rip), %rcx	# img, img.751
	movq	-48(%rbp), %rax	# currMB, tmp90
	movl	(%rax), %eax	# currMB_7->currSEnr, D.12352
	movslq	%eax, %rdx	# D.12352, tmp91
	movq	%rdx, %rax	# tmp91, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# tmp91, tmp92
	salq	$4, %rax	#, tmp93
	addq	$14176, %rax	#, tmp94
	addq	%rcx, %rax	# img.751, tmp95
	movq	%rax, -40(%rbp)	# tmp95, currSE
	.loc 1 2711 0
	movq	img(%rip), %rax	# img, img.752
	movq	14160(%rax), %rax	# img.752_11->currentSlice, tmp96
	movq	%rax, -32(%rbp)	# tmp96, currSlice
	.loc 1 2712 0
	movq	-48(%rbp), %rax	# currMB, tmp100
	addq	$20, %rax	#, tmp99
	movq	%rax, -24(%rbp)	# tmp99, bitCount
	.loc 1 2713 0
	movq	input(%rip), %rax	# input, input.753
	movl	2364(%rax), %eax	# input.753_14->partition_mode, D.12352
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp102
	movq	%rax, -16(%rbp)	# tmp102, partMap
	.loc 1 2714 0
	movl	$0, -52(%rbp)	#, rate
	.loc 1 2718 0
	movq	input(%rip), %rax	# input, input.754
	movl	2356(%rax), %eax	# input.754_18->symbol_mode, D.12352
	testl	%eax, %eax	# D.12352
	jne	.L715	#,
	.loc 1 2718 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# currSE, tmp103
	movq	$ue_linfo, 32(%rax)	#, currSE_10->mapping
	jmp	.L716	#
.L715:
	.loc 1 2719 0 is_stmt 1
	movq	-40(%rbp), %rax	# currSE, tmp104
	movq	$writeCIPredMode_CABAC, 40(%rax)	#, currSE_10->writing
.L716:
	.loc 1 2721 0
	movq	-48(%rbp), %rax	# currMB, tmp105
	movl	524(%rax), %edx	# currMB_7->c_ipred_mode, D.12352
	movq	-40(%rbp), %rax	# currSE, tmp106
	movl	%edx, 4(%rax)	# D.12352, currSE_10->value1
	.loc 1 2722 0
	movq	-40(%rbp), %rax	# currSE, tmp107
	movl	$0, 8(%rax)	#, currSE_10->value2
	.loc 1 2723 0
	movq	-40(%rbp), %rax	# currSE, tmp108
	movl	$4, (%rax)	#, currSE_10->type
	.loc 1 2724 0
	movq	-32(%rbp), %rax	# currSlice, tmp109
	movq	24(%rax), %rdx	# currSlice_12->partArr, D.12354
	movq	-16(%rbp), %rax	# partMap, tmp110
	addq	$16, %rax	#, D.12355
	movl	(%rax), %eax	# *_22, D.12352
	cltq
	salq	$3, %rax	#, tmp112
	movq	%rax, %rcx	# tmp111, tmp113
	salq	$4, %rcx	#, tmp113
	subq	%rax, %rcx	# tmp111, D.12353
	movq	%rcx, %rax	# D.12353, D.12353
	addq	%rdx, %rax	# D.12354, tmp114
	movq	%rax, -8(%rbp)	# tmp114, dataPart
	.loc 1 2726 0
	movq	-8(%rbp), %rax	# dataPart, tmp115
	movq	112(%rax), %rax	# dataPart_26->writeSyntaxElement, D.12356
	movq	-8(%rbp), %rcx	# dataPart, tmp116
	movq	-40(%rbp), %rdx	# currSE, tmp117
	movq	%rcx, %rsi	# tmp116,
	movq	%rdx, %rdi	# tmp117,
	call	*%rax	# D.12356
	.loc 1 2727 0
	movq	-24(%rbp), %rax	# bitCount, tmp118
	leaq	24(%rax), %rdx	#, D.12357
	movq	-24(%rbp), %rax	# bitCount, tmp119
	addq	$24, %rax	#, D.12357
	movl	(%rax), %ecx	# *_29, D.12352
	movq	-40(%rbp), %rax	# currSE, tmp120
	movl	12(%rax), %eax	# currSE_10->len, D.12352
	addl	%ecx, %eax	# D.12352, D.12352
	movl	%eax, (%rdx)	# D.12352, *_28
	.loc 1 2728 0
	movq	-40(%rbp), %rax	# currSE, tmp121
	movl	12(%rax), %eax	# currSE_10->len, D.12352
	addl	%eax, -52(%rbp)	# D.12352, rate
	.loc 1 2732 0
	addq	$48, -40(%rbp)	#, currSE
	.loc 1 2733 0
	movq	-48(%rbp), %rax	# currMB, tmp122
	movl	(%rax), %eax	# currMB_7->currSEnr, D.12352
	leal	1(%rax), %edx	#, D.12352
	movq	-48(%rbp), %rax	# currMB, tmp123
	movl	%edx, (%rax)	# D.12352, currMB_7->currSEnr
	.loc 1 2735 0
	movl	-52(%rbp), %eax	# rate, D.12352
	.loc 1 2736 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	writeChromaIntraPredMode, .-writeChromaIntraPredMode
	.globl	set_last_dquant
	.type	set_last_dquant, @function
set_last_dquant:
.LFB29:
	.loc 1 2749 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2750 0
	movq	img(%rip), %rax	# img, img.755
	movq	14168(%rax), %rdx	# img.755_1->mb_data, D.12358
	movq	img(%rip), %rax	# img, img.756
	movl	12(%rax), %eax	# img.756_3->current_mb_nr, D.12359
	cltq
	imulq	$632, %rax, %rax	#, D.12360, D.12360
	addq	%rdx, %rax	# D.12358, tmp76
	movq	%rax, -8(%rbp)	# tmp76, currMB
	.loc 1 2752 0
	movq	-8(%rbp), %rax	# currMB, tmp77
	movl	72(%rax), %eax	# currMB_7->mb_type, D.12359
	cmpl	$9, %eax	#, D.12359
	je	.L719	#,
	.loc 1 2752 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp78
	movl	72(%rax), %eax	# currMB_7->mb_type, D.12359
	cmpl	$10, %eax	#, D.12359
	je	.L719	#,
	movq	-8(%rbp), %rax	# currMB, tmp79
	movl	72(%rax), %eax	# currMB_7->mb_type, D.12359
	cmpl	$13, %eax	#, D.12359
	je	.L719	#,
	movq	-8(%rbp), %rax	# currMB, tmp80
	movl	72(%rax), %eax	# currMB_7->mb_type, D.12359
	testl	%eax, %eax	# D.12359
	jne	.L720	#,
.L719:
	.loc 1 2752 0 discriminator 2
	movq	-8(%rbp), %rax	# currMB, tmp81
	movl	72(%rax), %eax	# currMB_7->mb_type, D.12359
	cmpl	$9, %eax	#, D.12359
	je	.L720	#,
	.loc 1 2752 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp82
	movl	72(%rax), %eax	# currMB_7->mb_type, D.12359
	cmpl	$10, %eax	#, D.12359
	je	.L720	#,
	movq	-8(%rbp), %rax	# currMB, tmp83
	movl	72(%rax), %eax	# currMB_7->mb_type, D.12359
	cmpl	$13, %eax	#, D.12359
	je	.L720	#,
	.loc 1 2753 0 is_stmt 1 discriminator 1
	movq	img(%rip), %rax	# img, img.757
	movl	24(%rax), %eax	# img.757_15->type, D.12359
	.loc 1 2752 0 discriminator 1
	cmpl	$1, %eax	#, D.12359
	jne	.L721	#,
	.loc 1 2753 0
	movq	-8(%rbp), %rax	# currMB, tmp84
	movl	460(%rax), %eax	# currMB_7->cbp, D.12359
	testl	%eax, %eax	# D.12359
	je	.L721	#,
.L720:
	.loc 1 2756 0
	movq	-8(%rbp), %rax	# currMB, tmp85
	movl	8(%rax), %eax	# currMB_7->delta_qp, last_dquant.758
	movl	%eax, last_dquant(%rip)	# last_dquant.758, last_dquant
	jmp	.L718	#
.L721:
	.loc 1 2761 0
	movl	$0, last_dquant(%rip)	#, last_dquant
.L718:
	.loc 1 2763 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	set_last_dquant, .-set_last_dquant
	.globl	write_one_macroblock
	.type	write_one_macroblock, @function
write_one_macroblock:
.LFB30:
	.loc 1 2773 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# eos_bit, eos_bit
	.loc 1 2774 0
	movq	img(%rip), %rax	# img, img.759
	movq	14168(%rax), %rdx	# img.759_3->mb_data, D.12361
	movq	img(%rip), %rax	# img, img.760
	movl	12(%rax), %eax	# img.760_5->current_mb_nr, D.12362
	cltq
	imulq	$632, %rax, %rax	#, D.12363, D.12363
	addq	%rdx, %rax	# D.12361, tmp190
	movq	%rax, -16(%rbp)	# tmp190, currMB
	.loc 1 2775 0
	movq	-16(%rbp), %rax	# currMB, tmp194
	addq	$20, %rax	#, tmp193
	movq	%rax, -8(%rbp)	# tmp193, bitCount
	.loc 1 2781 0
	movq	img(%rip), %rax	# img, img.761
	movl	12(%rax), %eax	# img.761_11->current_mb_nr, D.12362
	testl	%eax, %eax	# D.12362
	jne	.L724	#,
	.loc 1 2782 0
	movl	$0, intras(%rip)	#, intras
.L724:
	.loc 1 2783 0
	movq	-16(%rbp), %rax	# currMB, tmp195
	movl	72(%rax), %eax	# currMB_9->mb_type, D.12362
	cmpl	$9, %eax	#, D.12362
	je	.L725	#,
	.loc 1 2783 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# currMB, tmp196
	movl	72(%rax), %eax	# currMB_9->mb_type, D.12362
	cmpl	$10, %eax	#, D.12362
	je	.L725	#,
	movq	-16(%rbp), %rax	# currMB, tmp197
	movl	72(%rax), %eax	# currMB_9->mb_type, D.12362
	cmpl	$13, %eax	#, D.12362
	jne	.L726	#,
.L725:
	.loc 1 2784 0 is_stmt 1
	movl	intras(%rip), %eax	# intras, intras.762
	addl	$1, %eax	#, intras.763
	movl	%eax, intras(%rip)	# intras.763, intras
.L726:
	.loc 1 2787 0
	movq	input(%rip), %rax	# input, input.764
	movl	2356(%rax), %eax	# input.764_18->symbol_mode, D.12362
	cmpl	$1, %eax	#, D.12362
	jne	.L727	#,
	.loc 1 2787 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.765
	movl	12(%rax), %edx	# img.765_20->current_mb_nr, D.12362
	movq	img(%rip), %rax	# img, img.766
	movq	14160(%rax), %rax	# img.766_22->currentSlice, D.12364
	movl	12(%rax), %eax	# _23->start_mb_nr, D.12362
	cmpl	%eax, %edx	# D.12362, D.12362
	je	.L727	#,
	cmpl	$0, -36(%rbp)	#, eos_bit
	je	.L727	#,
	.loc 1 2789 0 is_stmt 1
	movl	$0, %edi	#,
	call	write_terminating_bit	#
.L727:
	.loc 1 2792 0
	movl	$1, cabac_encoding(%rip)	#, cabac_encoding
	.loc 1 2795 0
	movl	$0, %edi	#,
	call	writeMBLayer	#
	.loc 1 2797 0
	movq	-16(%rbp), %rax	# currMB, tmp198
	movl	72(%rax), %eax	# currMB_9->mb_type, D.12362
	testl	%eax, %eax	# D.12362
	jne	.L728	#,
	.loc 1 2797 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.767
	movl	24(%rax), %eax	# img.767_27->type, D.12362
	cmpl	$1, %eax	#, D.12362
	jne	.L729	#,
	movq	-16(%rbp), %rax	# currMB, tmp199
	movl	460(%rax), %eax	# currMB_9->cbp, D.12362
	testl	%eax, %eax	# D.12362
	jne	.L728	#,
.L729:
	.loc 1 2799 0 is_stmt 1
	movl	$0, -20(%rbp)	#, j
	jmp	.L730	#
.L733:
	.loc 1 2800 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L731	#
.L732:
	.loc 1 2801 0 discriminator 2
	movq	img(%rip), %rax	# img, img.768
	movq	128(%rax), %rdx	# img.768_35->nz_coeff, D.12365
	movq	img(%rip), %rax	# img, img.769
	movl	12(%rax), %eax	# img.769_37->current_mb_nr, D.12362
	cltq
	salq	$3, %rax	#, D.12363
	addq	%rdx, %rax	# D.12365, D.12365
	movq	(%rax), %rax	# *_41, D.12366
	movl	-24(%rbp), %edx	# i, tmp200
	movslq	%edx, %rdx	# tmp200, D.12363
	salq	$3, %rdx	#, D.12363
	addq	%rdx, %rax	# D.12363, D.12366
	movq	(%rax), %rax	# *_45, D.12367
	movl	-20(%rbp), %edx	# j, tmp201
	movslq	%edx, %rdx	# tmp201, D.12363
	salq	$2, %rdx	#, D.12363
	addq	%rdx, %rax	# D.12363, D.12367
	movl	$0, (%rax)	#, *_49
	.loc 1 2800 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L731:
	.loc 1 2800 0 is_stmt 0 discriminator 1
	cmpl	$3, -24(%rbp)	#, i
	jle	.L732	#,
	.loc 1 2799 0 is_stmt 1
	addl	$1, -20(%rbp)	#, j
.L730:
	.loc 1 2799 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.770
	movl	72692(%rax), %eax	# img.770_31->num_blk8x8_uv, D.12362
	addl	$4, %eax	#, D.12362
	cmpl	-20(%rbp), %eax	# j, D.12362
	jg	.L733	#,
.L728:
	.loc 1 2804 0 is_stmt 1
	movl	$0, %eax	#,
	call	set_last_dquant	#
	.loc 1 2807 0
	movq	input(%rip), %rax	# input, input.771
	movl	216(%rax), %eax	# input.771_52->UseConstrainedIntraPred, D.12362
	testl	%eax, %eax	# D.12362
	je	.L734	#,
	.loc 1 2807 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.772
	movl	24(%rax), %eax	# img.772_54->type, D.12362
	testl	%eax, %eax	# D.12362
	je	.L735	#,
	movq	img(%rip), %rax	# img, img.773
	movl	24(%rax), %eax	# img.773_56->type, D.12362
	cmpl	$1, %eax	#, D.12362
	jne	.L734	#,
.L735:
	.loc 1 2809 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMB, tmp202
	movl	72(%rax), %eax	# currMB_9->mb_type, D.12362
	cmpl	$9, %eax	#, D.12362
	je	.L734	#,
	.loc 1 2809 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# currMB, tmp203
	movl	72(%rax), %eax	# currMB_9->mb_type, D.12362
	cmpl	$10, %eax	#, D.12362
	je	.L734	#,
	movq	-16(%rbp), %rax	# currMB, tmp204
	movl	72(%rax), %eax	# currMB_9->mb_type, D.12362
	cmpl	$13, %eax	#, D.12362
	je	.L734	#,
	.loc 1 2811 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.774
	movq	71784(%rax), %rdx	# img.774_61->intra_block, D.12367
	movq	img(%rip), %rax	# img, img.775
	movl	12(%rax), %eax	# img.775_63->current_mb_nr, D.12362
	cltq
	salq	$2, %rax	#, D.12363
	addq	%rdx, %rax	# D.12367, D.12367
	movl	$0, (%rax)	#, *_67
.L734:
	.loc 1 2816 0
	movq	-8(%rbp), %rax	# bitCount, tmp205
	addq	$4, %rax	#, D.12367
	movq	-8(%rbp), %rdx	# bitCount, tmp206
	addq	$8, %rdx	#, D.12367
	movl	(%rdx), %ecx	# *_69, D.12362
	movq	-8(%rbp), %rdx	# bitCount, tmp207
	addq	$20, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_71, D.12362
	addl	%edx, %ecx	# D.12362, D.12362
	movq	-8(%rbp), %rdx	# bitCount, tmp208
	addq	$12, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_74, D.12362
	addl	%edx, %ecx	# D.12362, D.12362
	.loc 1 2817 0
	movq	-8(%rbp), %rdx	# bitCount, tmp209
	addq	$16, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_77, D.12362
	addl	%edx, %ecx	# D.12362, D.12362
	movq	-8(%rbp), %rdx	# bitCount, tmp210
	addq	$28, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_80, D.12362
	addl	%edx, %ecx	# D.12362, D.12362
	movq	-8(%rbp), %rdx	# bitCount, tmp211
	addq	$24, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_83, D.12362
	addl	%ecx, %edx	# D.12362, D.12362
	.loc 1 2816 0
	movl	%edx, (%rax)	# D.12362, *_68
	.loc 1 2820 0
	movq	img(%rip), %rax	# img, img.776
	movq	-8(%rbp), %rdx	# bitCount, tmp212
	addq	$8, %rdx	#, D.12367
	movl	(%rdx), %ecx	# *_87, D.12362
	movq	-8(%rbp), %rdx	# bitCount, tmp213
	addq	$12, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_89, D.12362
	addl	%edx, %ecx	# D.12362, D.12362
	.loc 1 2821 0
	movq	-8(%rbp), %rdx	# bitCount, tmp214
	addq	$16, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_92, D.12362
	addl	%edx, %ecx	# D.12362, D.12362
	movq	-8(%rbp), %rdx	# bitCount, tmp215
	addq	$28, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_95, D.12362
	addl	%ecx, %edx	# D.12362, D.12362
	.loc 1 2820 0
	movl	%edx, 72556(%rax)	# D.12362, img.776_86->NumberofMBHeaderBits
	.loc 1 2822 0
	movq	img(%rip), %rax	# img, img.777
	movq	-8(%rbp), %rdx	# bitCount, tmp216
	addq	$20, %rdx	#, D.12367
	movl	(%rdx), %ecx	# *_99, D.12362
	movq	-8(%rbp), %rdx	# bitCount, tmp217
	addq	$24, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_101, D.12362
	addl	%ecx, %edx	# D.12362, D.12362
	movl	%edx, 72552(%rax)	# D.12362, img.777_98->NumberofMBTextureBits
	.loc 1 2823 0
	movq	img(%rip), %rax	# img, img.778
	movq	img(%rip), %rdx	# img, img.779
	movl	72528(%rdx), %ecx	# img.779_105->NumberofTextureBits, D.12362
	movq	img(%rip), %rdx	# img, img.780
	movl	72552(%rdx), %edx	# img.780_107->NumberofMBTextureBits, D.12362
	addl	%ecx, %edx	# D.12362, D.12362
	movl	%edx, 72528(%rax)	# D.12362, img.778_104->NumberofTextureBits
	.loc 1 2824 0
	movq	img(%rip), %rax	# img, img.781
	movq	img(%rip), %rdx	# img, img.782
	movl	72524(%rdx), %ecx	# img.782_111->NumberofHeaderBits, D.12362
	movq	img(%rip), %rdx	# img, img.783
	movl	72556(%rdx), %edx	# img.783_113->NumberofMBHeaderBits, D.12362
	addl	%ecx, %edx	# D.12362, D.12362
	movl	%edx, 72524(%rax)	# D.12362, img.781_110->NumberofHeaderBits
	.loc 1 2826 0
	movq	img(%rip), %rax	# img, img.784
	movl	72620(%rax), %edx	# img.784_116->BasicUnit, D.12362
	movq	img(%rip), %rax	# img, img.785
	movl	72608(%rax), %eax	# img.785_118->Frame_Total_Number_MB, D.12362
	cmpl	%eax, %edx	# D.12362, D.12362
	jge	.L736	#,
	.loc 1 2828 0
	movq	img(%rip), %rax	# img, img.786
	movq	img(%rip), %rdx	# img, img.787
	movl	72532(%rdx), %ecx	# img.787_121->NumberofBasicUnitHeaderBits, D.12362
	movq	img(%rip), %rdx	# img, img.788
	movl	72556(%rdx), %edx	# img.788_123->NumberofMBHeaderBits, D.12362
	addl	%ecx, %edx	# D.12362, D.12362
	movl	%edx, 72532(%rax)	# D.12362, img.786_120->NumberofBasicUnitHeaderBits
	.loc 1 2829 0
	movq	img(%rip), %rax	# img, img.789
	movq	img(%rip), %rdx	# img, img.790
	movl	72536(%rdx), %ecx	# img.790_127->NumberofBasicUnitTextureBits, D.12362
	movq	img(%rip), %rdx	# img, img.791
	movl	72552(%rdx), %edx	# img.791_129->NumberofMBTextureBits, D.12362
	addl	%ecx, %edx	# D.12362, D.12362
	movl	%edx, 72536(%rax)	# D.12362, img.789_126->NumberofBasicUnitTextureBits
.L736:
	.loc 1 2832 0
	movq	img(%rip), %rax	# img, img.792
	movl	72616(%rax), %edx	# img.792_132->NumberofCodedMacroBlocks, D.12362
	addl	$1, %edx	#, D.12362
	movl	%edx, 72616(%rax)	# D.12362, img.792_132->NumberofCodedMacroBlocks
	.loc 1 2834 0
	movq	stats(%rip), %rax	# stats, stats.793
	movq	stats(%rip), %rdx	# stats, stats.794
	movl	24(%rdx), %ecx	# stats.794_136->bit_slice, D.12362
	movq	-8(%rbp), %rdx	# bitCount, tmp218
	addq	$4, %rdx	#, D.12367
	movl	(%rdx), %edx	# *_138, D.12362
	addl	%ecx, %edx	# D.12362, D.12362
	movl	%edx, 24(%rax)	# D.12362, stats.793_135->bit_slice
	.loc 1 2836 0
	movl	$0, cabac_encoding(%rip)	#, cabac_encoding
	.loc 1 2837 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	write_one_macroblock, .-write_one_macroblock
	.globl	BType2CtxRef
	.type	BType2CtxRef, @function
BType2CtxRef:
.LFB31:
	.loc 1 2847 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# btype, btype
	.loc 1 2848 0
	cmpl	$3, -4(%rbp)	#, btype
	jg	.L738	#,
	.loc 1 2848 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.12368
	jmp	.L739	#
.L738:
	.loc 1 2849 0 is_stmt 1
	movl	$1, %eax	#, D.12368
.L739:
	.loc 1 2850 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	BType2CtxRef, .-BType2CtxRef
	.globl	writeReferenceFrame
	.type	writeReferenceFrame, @function
writeReferenceFrame:
.LFB32:
	.loc 1 2860 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -68(%rbp)	# mode, mode
	movl	%esi, -72(%rbp)	# i, i
	movl	%edx, -76(%rbp)	# j, j
	movl	%ecx, -80(%rbp)	# fwd_flag, fwd_flag
	movl	%r8d, -84(%rbp)	# ref, ref
	.loc 1 2861 0
	movq	img(%rip), %rax	# img, img.795
	movq	14168(%rax), %rdx	# img.795_6->mb_data, D.12370
	movq	img(%rip), %rax	# img, img.796
	movl	12(%rax), %eax	# img.796_8->current_mb_nr, D.12369
	cltq
	imulq	$632, %rax, %rax	#, D.12371, D.12371
	addq	%rdx, %rax	# D.12370, tmp112
	movq	%rax, -48(%rbp)	# tmp112, currMB
	.loc 1 2862 0
	movq	img(%rip), %rcx	# img, img.797
	movq	-48(%rbp), %rax	# currMB, tmp113
	movl	(%rax), %eax	# currMB_12->currSEnr, D.12369
	movslq	%eax, %rdx	# D.12369, tmp114
	movq	%rdx, %rax	# tmp114, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# tmp114, tmp115
	salq	$4, %rax	#, tmp116
	addq	$14176, %rax	#, tmp117
	addq	%rcx, %rax	# img.797, tmp118
	movq	%rax, -40(%rbp)	# tmp118, currSE
	.loc 1 2863 0
	movq	img(%rip), %rax	# img, img.798
	movq	14160(%rax), %rax	# img.798_16->currentSlice, tmp119
	movq	%rax, -32(%rbp)	# tmp119, currSlice
	.loc 1 2864 0
	movq	-48(%rbp), %rax	# currMB, tmp123
	addq	$20, %rax	#, tmp122
	movq	%rax, -24(%rbp)	# tmp122, bitCount
	.loc 1 2865 0
	movq	input(%rip), %rax	# input, input.799
	movl	2364(%rax), %eax	# input.799_19->partition_mode, D.12369
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp125
	movq	%rax, -16(%rbp)	# tmp125, partMap
	.loc 1 2866 0
	movl	$0, -60(%rbp)	#, rate
	.loc 1 2868 0
	movq	img(%rip), %rax	# img, img.801
	movl	72400(%rax), %eax	# img.801_23->MbaffFrameFlag, D.12369
	testl	%eax, %eax	# D.12369
	je	.L741	#,
	.loc 1 2868 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# currMB, tmp126
	movl	532(%rax), %eax	# currMB_12->mb_field, D.12369
	testl	%eax, %eax	# D.12369
	je	.L741	#,
	movq	img(%rip), %rax	# img, img.803
	movl	12(%rax), %eax	# img.803_26->current_mb_nr, D.12369
	andl	$1, %eax	#, D.12372
	testl	%eax, %eax	# D.12372
	je	.L742	#,
	movl	$4, %eax	#, iftmp.802
	jmp	.L743	#
.L742:
	.loc 1 2868 0 discriminator 2
	movl	$2, %eax	#, iftmp.802
.L743:
	.loc 1 2868 0 discriminator 3
	jmp	.L744	#
.L741:
	.loc 1 2868 0 discriminator 2
	movl	$0, %eax	#, iftmp.800
.L744:
	.loc 1 2868 0 discriminator 3
	movl	%eax, -56(%rbp)	# iftmp.800, list_offset
	.loc 1 2869 0 is_stmt 1 discriminator 3
	cmpl	$0, -80(%rbp)	#, fwd_flag
	je	.L745	#,
	.loc 1 2869 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# list_offset, tmp128
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, iftmp.804
	jmp	.L746	#
.L745:
	.loc 1 2869 0 discriminator 2
	movl	-56(%rbp), %eax	# list_offset, tmp129
	addl	$1, %eax	#, D.12369
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, iftmp.804
.L746:
	.loc 1 2869 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.804, num_ref
	.loc 1 2870 0 is_stmt 1 discriminator 3
	movl	$0, -64(%rbp)	#, flag_mode
	.loc 1 2872 0 discriminator 3
	cmpl	$1, -52(%rbp)	#, num_ref
	jne	.L747	#,
	.loc 1 2874 0
	movl	$0, %eax	#, D.12369
	jmp	.L748	#
.L747:
	.loc 1 2876 0
	cmpl	$2, -52(%rbp)	#, num_ref
	jne	.L749	#,
	.loc 1 2878 0
	movl	$1, -64(%rbp)	#, flag_mode
.L749:
	.loc 1 2881 0
	movq	-40(%rbp), %rax	# currSE, tmp131
	movl	-84(%rbp), %edx	# ref, tmp132
	movl	%edx, 4(%rax)	# tmp132, currSE_15->value1
	.loc 1 2882 0
	movq	-40(%rbp), %rax	# currSE, tmp133
	movl	$0, 8(%rax)	#, currSE_15->value2
	.loc 1 2883 0
	movq	-40(%rbp), %rax	# currSE, tmp134
	movl	$3, (%rax)	#, currSE_15->type
	.loc 1 2885 0
	movq	-32(%rbp), %rax	# currSlice, tmp135
	movq	24(%rax), %rdx	# currSlice_17->partArr, D.12373
	movq	-40(%rbp), %rax	# currSE, tmp136
	movl	(%rax), %eax	# currSE_15->type, D.12369
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12371
	movq	-16(%rbp), %rax	# partMap, tmp137
	addq	%rcx, %rax	# D.12371, D.12374
	movl	(%rax), %eax	# *_48, D.12369
	cltq
	salq	$3, %rax	#, tmp139
	movq	%rax, %rcx	# tmp138, tmp140
	salq	$4, %rcx	#, tmp140
	subq	%rax, %rcx	# tmp138, D.12371
	movq	%rcx, %rax	# D.12371, D.12371
	addq	%rdx, %rax	# D.12373, tmp141
	movq	%rax, -8(%rbp)	# tmp141, dataPart
	.loc 1 2886 0
	movq	input(%rip), %rax	# input, input.805
	movl	2356(%rax), %eax	# input.805_53->symbol_mode, D.12369
	testl	%eax, %eax	# D.12369
	jne	.L750	#,
	.loc 1 2888 0
	cmpl	$0, -64(%rbp)	#, flag_mode
	je	.L751	#,
	.loc 1 2890 0
	movq	-40(%rbp), %rax	# currSE, tmp142
	movl	4(%rax), %eax	# currSE_15->value1, D.12369
	movl	$1, %edx	#, tmp143
	subl	%eax, %edx	# D.12369, D.12369
	movl	%edx, %eax	# D.12369, D.12369
	movl	%eax, %edx	# D.12369, D.12375
	movq	-40(%rbp), %rax	# currSE, tmp144
	movl	%edx, 20(%rax)	# D.12375, currSE_15->bitpattern
	.loc 1 2891 0
	movq	-40(%rbp), %rax	# currSE, tmp145
	movl	$1, 12(%rax)	#, currSE_15->len
	.loc 1 2892 0
	movq	-8(%rbp), %rax	# dataPart, tmp146
	movq	(%rax), %rdx	# dataPart_52->bitstream, D.12376
	movq	-40(%rbp), %rax	# currSE, tmp147
	movq	%rdx, %rsi	# D.12376,
	movq	%rax, %rdi	# tmp147,
	call	writeSyntaxElement2Buf_Fixed	#
	jmp	.L753	#
.L751:
	.loc 1 2896 0
	movq	-40(%rbp), %rax	# currSE, tmp148
	movq	$ue_linfo, 32(%rax)	#, currSE_15->mapping
	.loc 1 2897 0
	movq	-8(%rbp), %rax	# dataPart, tmp149
	movq	112(%rax), %rax	# dataPart_52->writeSyntaxElement, D.12377
	movq	-8(%rbp), %rcx	# dataPart, tmp150
	movq	-40(%rbp), %rdx	# currSE, tmp151
	movq	%rcx, %rsi	# tmp150,
	movq	%rdx, %rdi	# tmp151,
	call	*%rax	# D.12377
	jmp	.L753	#
.L750:
	.loc 1 2902 0
	movl	-68(%rbp), %eax	# mode, tmp152
	movl	%eax, %edi	# tmp152,
	call	BType2CtxRef	#
	movq	-40(%rbp), %rdx	# currSE, tmp153
	movl	%eax, 24(%rdx)	# D.12369, currSE_15->context
	.loc 1 2903 0
	movq	img(%rip), %rax	# img, img.806
	movl	-72(%rbp), %edx	# i, tmp154
	movl	%edx, 72(%rax)	# tmp154, img.806_62->subblock_x
	.loc 1 2904 0
	movq	img(%rip), %rax	# img, img.807
	movl	-76(%rbp), %edx	# j, tmp155
	movl	%edx, 76(%rax)	# tmp155, img.807_64->subblock_y
	.loc 1 2905 0
	movq	-40(%rbp), %rax	# currSE, tmp156
	movq	$writeRefFrame_CABAC, 40(%rax)	#, currSE_15->writing
	.loc 1 2906 0
	cmpl	$0, -80(%rbp)	#, fwd_flag
	sete	%al	#, D.12378
	movzbl	%al, %edx	# D.12378, D.12369
	movq	-40(%rbp), %rax	# currSE, tmp157
	movl	%edx, 8(%rax)	# D.12369, currSE_15->value2
	.loc 1 2907 0
	movq	-8(%rbp), %rax	# dataPart, tmp158
	movq	112(%rax), %rax	# dataPart_52->writeSyntaxElement, D.12377
	movq	-8(%rbp), %rcx	# dataPart, tmp159
	movq	-40(%rbp), %rdx	# currSE, tmp160
	movq	%rcx, %rsi	# tmp159,
	movq	%rdx, %rdi	# tmp160,
	call	*%rax	# D.12377
.L753:
	.loc 1 2910 0
	movq	-24(%rbp), %rax	# bitCount, tmp161
	leaq	12(%rax), %rdx	#, D.12379
	movq	-24(%rbp), %rax	# bitCount, tmp162
	addq	$12, %rax	#, D.12379
	movl	(%rax), %ecx	# *_70, D.12369
	movq	-40(%rbp), %rax	# currSE, tmp163
	movl	12(%rax), %eax	# currSE_15->len, D.12369
	addl	%ecx, %eax	# D.12369, D.12369
	movl	%eax, (%rdx)	# D.12369, *_69
	.loc 1 2911 0
	movq	-40(%rbp), %rax	# currSE, tmp164
	movl	12(%rax), %eax	# currSE_15->len, D.12369
	addl	%eax, -60(%rbp)	# D.12369, rate
	.loc 1 2922 0
	addq	$48, -40(%rbp)	#, currSE
	.loc 1 2923 0
	movq	-48(%rbp), %rax	# currMB, tmp165
	movl	(%rax), %eax	# currMB_12->currSEnr, D.12369
	leal	1(%rax), %edx	#, D.12369
	movq	-48(%rbp), %rax	# currMB, tmp166
	movl	%edx, (%rax)	# D.12369, currMB_12->currSEnr
	.loc 1 2925 0
	movl	-60(%rbp), %eax	# rate, D.12369
.L748:
	.loc 1 2926 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	writeReferenceFrame, .-writeReferenceFrame
	.globl	writeMotionVector8x8
	.type	writeMotionVector8x8, @function
writeMotionVector8x8:
.LFB33:
	.loc 1 2942 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movl	%edi, -116(%rbp)	# i0, i0
	movl	%esi, -120(%rbp)	# j0, j0
	movl	%edx, -124(%rbp)	# i1, i1
	movl	%ecx, -128(%rbp)	# j1, j1
	movl	%r8d, -132(%rbp)	# refframe, refframe
	movl	%r9d, -136(%rbp)	# list_idx, list_idx
	.loc 1 2947 0
	movl	$0, -84(%rbp)	#, rate
	.loc 1 2948 0
	movq	input(%rip), %rax	# input, input.808
	movl	16(%rbp), %edx	# mv_mode, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	addq	$18, %rdx	#, tmp156
	movl	(%rax,%rdx,8), %eax	# input.808_15->part_size, tmp157
	movl	%eax, -80(%rbp)	# tmp157, step_h
	.loc 1 2949 0
	movq	input(%rip), %rax	# input, input.809
	movl	16(%rbp), %edx	# mv_mode, tmp159
	movslq	%edx, %rdx	# tmp159, tmp158
	movl	148(%rax,%rdx,8), %eax	# input.809_18->part_size, tmp160
	movl	%eax, -76(%rbp)	# tmp160, step_v
	.loc 1 2950 0
	movq	img(%rip), %rax	# img, img.810
	movq	14168(%rax), %rdx	# img.810_20->mb_data, D.12380
	movq	img(%rip), %rax	# img, img.811
	movl	12(%rax), %eax	# img.811_22->current_mb_nr, D.12381
	cltq
	imulq	$632, %rax, %rax	#, D.12382, D.12382
	addq	%rdx, %rax	# D.12380, tmp161
	movq	%rax, -48(%rbp)	# tmp161, currMB
	.loc 1 2951 0
	movq	img(%rip), %rcx	# img, img.812
	movq	-48(%rbp), %rax	# currMB, tmp162
	movl	(%rax), %eax	# currMB_26->currSEnr, D.12381
	movslq	%eax, %rdx	# D.12381, tmp163
	movq	%rdx, %rax	# tmp163, tmp164
	addq	%rax, %rax	# tmp164
	addq	%rdx, %rax	# tmp163, tmp164
	salq	$4, %rax	#, tmp165
	addq	$14176, %rax	#, tmp166
	addq	%rcx, %rax	# img.812, tmp167
	movq	%rax, -64(%rbp)	# tmp167, currSE
	.loc 1 2952 0
	movq	img(%rip), %rax	# img, img.813
	movq	14160(%rax), %rax	# img.813_30->currentSlice, tmp168
	movq	%rax, -40(%rbp)	# tmp168, currSlice
	.loc 1 2953 0
	movq	-48(%rbp), %rax	# currMB, tmp172
	addq	$20, %rax	#, tmp171
	movq	%rax, -32(%rbp)	# tmp171, bitCount
	.loc 1 2954 0
	movq	input(%rip), %rax	# input, input.814
	movl	2364(%rax), %eax	# input.814_33->partition_mode, D.12381
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp174
	movq	%rax, -24(%rbp)	# tmp174, partMap
	.loc 1 2955 0
	movl	-132(%rbp), %eax	# refframe, tmp175
	movl	%eax, -72(%rbp)	# tmp175, refindex
	.loc 1 2957 0
	movq	img(%rip), %rax	# img, img.815
	movq	71928(%rax), %rax	# img.815_38->all_mv, tmp176
	movq	%rax, -56(%rbp)	# tmp176, all_mv
	.loc 1 2958 0
	movq	img(%rip), %rax	# img, img.816
	movq	71920(%rax), %rax	# img.816_40->pred_mv, tmp177
	movq	%rax, -16(%rbp)	# tmp177, pred_mv
	.loc 1 2961 0
	movq	-48(%rbp), %rax	# currMB, tmp178
	movl	580(%rax), %eax	# currMB_26->bi_pred_me, D.12381
	testl	%eax, %eax	# D.12381
	je	.L755	#,
	.loc 1 2961 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# currMB, tmp179
	movl	488(%rax), %eax	# currMB_26->b8pdir, D.12381
	cmpl	$2, %eax	#, D.12381
	jne	.L755	#,
	cmpl	$1, 16(%rbp)	#, mv_mode
	jne	.L755	#,
	cmpl	$0, -72(%rbp)	#, refindex
	jne	.L755	#,
	.loc 1 2963 0 is_stmt 1
	movq	-48(%rbp), %rax	# currMB, tmp180
	movl	580(%rax), %eax	# currMB_26->bi_pred_me, D.12381
	cmpl	$1, %eax	#, D.12381
	jne	.L756	#,
	.loc 1 2963 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.818
	movq	71936(%rax), %rax	# img.818_45->bipred_mv1, iftmp.817
	jmp	.L757	#
.L756:
	.loc 1 2963 0 discriminator 2
	movq	img(%rip), %rax	# img, img.819
	movq	71944(%rax), %rax	# img.819_47->bipred_mv2, iftmp.817
.L757:
	.loc 1 2963 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.817, all_mv
.L755:
	.loc 1 2967 0 is_stmt 1
	movl	-120(%rbp), %eax	# j0, tmp181
	movl	%eax, -100(%rbp)	# tmp181, j
	jmp	.L758	#
.L769:
	.loc 1 2968 0
	movl	-116(%rbp), %eax	# i0, tmp182
	movl	%eax, -104(%rbp)	# tmp182, i
	jmp	.L759	#
.L768:
	.loc 1 2970 0
	movl	$0, -96(%rbp)	#, k
	jmp	.L760	#
.L767:
	.loc 1 2973 0
	movl	-104(%rbp), %eax	# i, tmp183
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12382
	movq	-56(%rbp), %rax	# all_mv, tmp184
	addq	%rdx, %rax	# D.12382, D.12383
	movq	(%rax), %rax	# *_59, D.12384
	movl	-100(%rbp), %edx	# j, tmp185
	movslq	%edx, %rdx	# tmp185, D.12382
	salq	$3, %rdx	#, D.12382
	addq	%rdx, %rax	# D.12382, D.12384
	movq	(%rax), %rax	# *_63, D.12385
	movl	-136(%rbp), %edx	# list_idx, tmp186
	movslq	%edx, %rdx	# tmp186, D.12382
	salq	$3, %rdx	#, D.12382
	addq	%rdx, %rax	# D.12382, D.12385
	movq	(%rax), %rax	# *_68, D.12386
	movl	-72(%rbp), %edx	# refindex, tmp187
	movslq	%edx, %rdx	# tmp187, D.12382
	salq	$3, %rdx	#, D.12382
	addq	%rdx, %rax	# D.12382, D.12386
	movq	(%rax), %rax	# *_72, D.12387
	movl	16(%rbp), %edx	# mv_mode, tmp188
	movslq	%edx, %rdx	# tmp188, D.12382
	salq	$3, %rdx	#, D.12382
	addq	%rdx, %rax	# D.12382, D.12387
	movq	(%rax), %rax	# *_76, D.12388
	movl	-96(%rbp), %edx	# k, tmp189
	movslq	%edx, %rdx	# tmp189, D.12382
	addq	%rdx, %rdx	# D.12382
	addq	%rdx, %rax	# D.12382, D.12388
	movzwl	(%rax), %eax	# *_80, D.12389
	movswl	%ax, %edx	# D.12389, D.12381
	movl	-104(%rbp), %eax	# i, tmp190
	cltq
	leaq	0(,%rax,8), %rcx	#, D.12382
	movq	-16(%rbp), %rax	# pred_mv, tmp191
	addq	%rcx, %rax	# D.12382, D.12383
	movq	(%rax), %rax	# *_85, D.12384
	movl	-100(%rbp), %ecx	# j, tmp192
	movslq	%ecx, %rcx	# tmp192, D.12382
	salq	$3, %rcx	#, D.12382
	addq	%rcx, %rax	# D.12382, D.12384
	movq	(%rax), %rax	# *_89, D.12385
	movl	-136(%rbp), %ecx	# list_idx, tmp193
	movslq	%ecx, %rcx	# tmp193, D.12382
	salq	$3, %rcx	#, D.12382
	addq	%rcx, %rax	# D.12382, D.12385
	movq	(%rax), %rax	# *_93, D.12386
	movl	-72(%rbp), %ecx	# refindex, tmp194
	movslq	%ecx, %rcx	# tmp194, D.12382
	salq	$3, %rcx	#, D.12382
	addq	%rcx, %rax	# D.12382, D.12386
	movq	(%rax), %rax	# *_97, D.12387
	movl	16(%rbp), %ecx	# mv_mode, tmp195
	movslq	%ecx, %rcx	# tmp195, D.12382
	salq	$3, %rcx	#, D.12382
	addq	%rcx, %rax	# D.12382, D.12387
	movq	(%rax), %rax	# *_101, D.12388
	movl	-96(%rbp), %ecx	# k, tmp196
	movslq	%ecx, %rcx	# tmp196, D.12382
	addq	%rcx, %rcx	# D.12382
	addq	%rcx, %rax	# D.12382, D.12388
	movzwl	(%rax), %eax	# *_105, D.12389
	cwtl
	subl	%eax, %edx	# D.12381, tmp197
	movl	%edx, %eax	# tmp197, tmp197
	movl	%eax, -68(%rbp)	# tmp197, curr_mvd
	.loc 1 2976 0
	movl	$0, -92(%rbp)	#, l
	jmp	.L761	#
.L764:
	.loc 1 2977 0
	movl	$0, -88(%rbp)	#, m
	jmp	.L762	#
.L763:
	.loc 1 2979 0 discriminator 2
	movl	-92(%rbp), %eax	# l, tmp198
	movl	-100(%rbp), %edx	# j, tmp199
	leal	(%rdx,%rax), %ecx	#, D.12381
	movl	-88(%rbp), %eax	# m, tmp200
	movl	-104(%rbp), %edx	# i, tmp201
	leal	(%rdx,%rax), %edi	#, D.12381
	movq	-48(%rbp), %rax	# currMB, tmp202
	movl	-96(%rbp), %edx	# k, tmp204
	movslq	%edx, %rdx	# tmp204, tmp203
	movslq	%ecx, %rcx	# D.12381, tmp205
	movl	-136(%rbp), %esi	# list_idx, tmp207
	movslq	%esi, %rsi	# tmp207, tmp206
	salq	$2, %rsi	#, tmp208
	addq	%rcx, %rsi	# tmp205, tmp209
	movslq	%edi, %rcx	# D.12381, tmp210
	salq	$2, %rsi	#, tmp211
	addq	%rsi, %rcx	# tmp211, tmp212
	addq	%rcx, %rcx	# tmp213
	addq	%rcx, %rdx	# tmp213, tmp214
	leaq	16(%rdx), %rcx	#, tmp215
	movl	-68(%rbp), %edx	# curr_mvd, tmp216
	movl	%edx, 12(%rax,%rcx,4)	# tmp216, currMB_26->mvd
	.loc 1 2977 0 discriminator 2
	addl	$1, -88(%rbp)	#, m
.L762:
	.loc 1 2977 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# m, tmp217
	cmpl	-80(%rbp), %eax	# step_h, tmp217
	jl	.L763	#,
	.loc 1 2976 0 is_stmt 1
	addl	$1, -92(%rbp)	#, l
.L761:
	.loc 1 2976 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# l, tmp218
	cmpl	-76(%rbp), %eax	# step_v, tmp218
	jl	.L764	#,
	.loc 1 2981 0 is_stmt 1
	movq	-64(%rbp), %rax	# currSE, tmp219
	movl	-68(%rbp), %edx	# curr_mvd, tmp220
	movl	%edx, 4(%rax)	# tmp220, currSE_9->value1
	.loc 1 2982 0
	movq	-64(%rbp), %rax	# currSE, tmp221
	movl	$0, 8(%rax)	#, currSE_9->value2
	.loc 1 2983 0
	movq	-64(%rbp), %rax	# currSE, tmp222
	movl	$5, (%rax)	#, currSE_9->type
	.loc 1 2984 0
	movq	input(%rip), %rax	# input, input.820
	movl	2356(%rax), %eax	# input.820_115->symbol_mode, D.12381
	testl	%eax, %eax	# D.12381
	jne	.L765	#,
	.loc 1 2986 0
	movq	-64(%rbp), %rax	# currSE, tmp223
	movq	$se_linfo, 32(%rax)	#, currSE_9->mapping
	jmp	.L766	#
.L765:
	.loc 1 2990 0
	movq	img(%rip), %rax	# img, img.821
	movl	-104(%rbp), %edx	# i, tmp224
	movl	%edx, 72(%rax)	# tmp224, img.821_117->subblock_x
	.loc 1 2991 0
	movq	img(%rip), %rax	# img, img.822
	movl	-100(%rbp), %edx	# j, tmp225
	movl	%edx, 76(%rax)	# tmp225, img.822_118->subblock_y
	.loc 1 2992 0
	movl	-96(%rbp), %eax	# k, tmp226
	leal	(%rax,%rax), %edx	#, D.12381
	movl	-136(%rbp), %eax	# list_idx, tmp227
	addl	%eax, %edx	# tmp227, D.12381
	movq	-64(%rbp), %rax	# currSE, tmp228
	movl	%edx, 8(%rax)	# D.12381, currSE_9->value2
	.loc 1 2993 0
	movq	-64(%rbp), %rax	# currSE, tmp229
	movq	$writeMVD_CABAC, 40(%rax)	#, currSE_9->writing
.L766:
	.loc 1 2995 0
	movq	-40(%rbp), %rax	# currSlice, tmp230
	movq	24(%rax), %rdx	# currSlice_31->partArr, D.12390
	movq	-24(%rbp), %rax	# partMap, tmp231
	addq	$20, %rax	#, D.12391
	movl	(%rax), %eax	# *_122, D.12381
	cltq
	salq	$3, %rax	#, tmp233
	movq	%rax, %rcx	# tmp232, tmp234
	salq	$4, %rcx	#, tmp234
	subq	%rax, %rcx	# tmp232, D.12382
	movq	%rcx, %rax	# D.12382, D.12382
	addq	%rdx, %rax	# D.12390, tmp235
	movq	%rax, -8(%rbp)	# tmp235, dataPart
	.loc 1 2996 0
	movq	-8(%rbp), %rax	# dataPart, tmp236
	movq	112(%rax), %rax	# dataPart_126->writeSyntaxElement, D.12392
	movq	-8(%rbp), %rcx	# dataPart, tmp237
	movq	-64(%rbp), %rdx	# currSE, tmp238
	movq	%rcx, %rsi	# tmp237,
	movq	%rdx, %rdi	# tmp238,
	call	*%rax	# D.12392
	.loc 1 3008 0
	movq	-32(%rbp), %rax	# bitCount, tmp239
	leaq	12(%rax), %rdx	#, D.12393
	movq	-32(%rbp), %rax	# bitCount, tmp240
	addq	$12, %rax	#, D.12393
	movl	(%rax), %ecx	# *_129, D.12381
	movq	-64(%rbp), %rax	# currSE, tmp241
	movl	12(%rax), %eax	# currSE_9->len, D.12381
	addl	%ecx, %eax	# D.12381, D.12381
	movl	%eax, (%rdx)	# D.12381, *_128
	.loc 1 3009 0
	movq	-64(%rbp), %rax	# currSE, tmp242
	movl	12(%rax), %eax	# currSE_9->len, D.12381
	addl	%eax, -84(%rbp)	# D.12381, rate
	.loc 1 3010 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 3011 0
	movq	-48(%rbp), %rax	# currMB, tmp243
	movl	(%rax), %eax	# currMB_26->currSEnr, D.12381
	leal	1(%rax), %edx	#, D.12381
	movq	-48(%rbp), %rax	# currMB, tmp244
	movl	%edx, (%rax)	# D.12381, currMB_26->currSEnr
	.loc 1 2970 0
	addl	$1, -96(%rbp)	#, k
.L760:
	.loc 1 2970 0 is_stmt 0 discriminator 1
	cmpl	$1, -96(%rbp)	#, k
	jle	.L767	#,
	.loc 1 2968 0 is_stmt 1
	movl	-80(%rbp), %eax	# step_h, tmp245
	addl	%eax, -104(%rbp)	# tmp245, i
.L759:
	.loc 1 2968 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %eax	# i, tmp246
	cmpl	-124(%rbp), %eax	# i1, tmp246
	jl	.L768	#,
	.loc 1 2967 0 is_stmt 1
	movl	-76(%rbp), %eax	# step_v, tmp247
	addl	%eax, -100(%rbp)	# tmp247, j
.L758:
	.loc 1 2967 0 is_stmt 0 discriminator 1
	movl	-100(%rbp), %eax	# j, tmp248
	cmpl	-128(%rbp), %eax	# j1, tmp248
	jl	.L769	#,
	.loc 1 3015 0 is_stmt 1
	movl	-84(%rbp), %eax	# rate, D.12381
	.loc 1 3016 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	writeMotionVector8x8, .-writeMotionVector8x8
	.globl	writeMotionInfo2NAL
	.type	writeMotionInfo2NAL, @function
writeMotionInfo2NAL:
.LFB34:
	.loc 1 3026 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 3029 0
	movq	img(%rip), %rax	# img, img.823
	movq	14168(%rax), %rdx	# img.823_26->mb_data, D.12394
	movq	img(%rip), %rax	# img, img.824
	movl	12(%rax), %eax	# img.824_28->current_mb_nr, D.12395
	cltq
	imulq	$632, %rax, %rax	#, D.12396, D.12396
	addq	%rdx, %rax	# D.12394, tmp194
	movq	%rax, -8(%rbp)	# tmp194, currMB
	.loc 1 3030 0
	movl	$0, -32(%rbp)	#, no_bits
	.loc 1 3031 0
	movq	img(%rip), %rax	# img, img.825
	movl	24(%rax), %eax	# img.825_34->type, D.12395
	cmpl	$1, %eax	#, D.12395
	sete	%al	#, D.12397
	movzbl	%al, %eax	# D.12397, tmp195
	movl	%eax, -28(%rbp)	# tmp195, bframe
	.loc 1 3032 0
	movq	input(%rip), %rdx	# input, input.826
	movq	-8(%rbp), %rax	# currMB, tmp196
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$8, %eax	#, D.12395
	je	.L772	#,
	.loc 1 3032 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp197
	movl	72(%rax), %eax	# currMB_32->mb_type, iftmp.827
	jmp	.L773	#
.L772:
	.loc 1 3032 0 discriminator 2
	movl	$4, %eax	#, iftmp.827
.L773:
	.loc 1 3032 0 discriminator 3
	cltq
	addq	$10, %rax	#, tmp199
	movl	(%rdx,%rax,8), %eax	# input.826_38->blc_size, D.12395
	sarl	$2, %eax	#, tmp200
	movl	%eax, -24(%rbp)	# tmp200, step_h0
	.loc 1 3033 0 is_stmt 1 discriminator 3
	movq	input(%rip), %rdx	# input, input.828
	movq	-8(%rbp), %rax	# currMB, tmp201
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$8, %eax	#, D.12395
	je	.L774	#,
	.loc 1 3033 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp202
	movl	72(%rax), %eax	# currMB_32->mb_type, iftmp.829
	jmp	.L775	#
.L774:
	.loc 1 3033 0 discriminator 2
	movl	$4, %eax	#, iftmp.829
.L775:
	.loc 1 3033 0 discriminator 3
	cltq
	movl	84(%rdx,%rax,8), %eax	# input.828_44->blc_size, D.12395
	sarl	$2, %eax	#, tmp204
	movl	%eax, -20(%rbp)	# tmp204, step_v0
	.loc 1 3036 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# currMB, tmp205
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$9, %eax	#, D.12395
	je	.L776	#,
	.loc 1 3036 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp206
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$10, %eax	#, D.12395
	je	.L776	#,
	movq	-8(%rbp), %rax	# currMB, tmp207
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$13, %eax	#, D.12395
	je	.L776	#,
	movq	-8(%rbp), %rax	# currMB, tmp208
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	testl	%eax, %eax	# D.12395
	je	.L776	#,
	.loc 1 3039 0 is_stmt 1
	movq	-8(%rbp), %rax	# currMB, tmp209
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$8, %eax	#, D.12395
	jne	.L777	#,
	.loc 1 3039 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp210
	movq	%rax, %rdi	# tmp210,
	call	ZeroRef	#
	testl	%eax, %eax	# D.12395
	je	.L777	#,
	movq	input(%rip), %rax	# input, input.830
	movl	2356(%rax), %eax	# input.830_56->symbol_mode, D.12395
	cmpl	$1, %eax	#, D.12395
	je	.L777	#,
	cmpl	$0, -28(%rbp)	#, bframe
	je	.L776	#,
.L777:
	.loc 1 3041 0 is_stmt 1
	movl	$0, -40(%rbp)	#, j0
	jmp	.L778	#
.L783:
	.loc 1 3042 0
	movl	$0, -36(%rbp)	#, i0
	jmp	.L779	#
.L782:
	.loc 1 3044 0
	movl	-36(%rbp), %eax	# i0, tmp211
	movl	%eax, %edx	# tmp211, tmp212
	shrl	$31, %edx	#, tmp212
	addl	%edx, %eax	# tmp212, tmp213
	sarl	%eax	# tmp214
	movl	%eax, %edx	# tmp214, D.12395
	movl	-40(%rbp), %eax	# j0, tmp218
	addl	%edx, %eax	# D.12395, tmp217
	movl	%eax, -16(%rbp)	# tmp217, k
	.loc 1 3046 0
	movq	-8(%rbp), %rax	# currMB, tmp219
	movl	-16(%rbp), %edx	# k, tmp221
	movslq	%edx, %rdx	# tmp221, tmp220
	addq	$120, %rdx	#, tmp222
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8pdir, D.12395
	testl	%eax, %eax	# D.12395
	je	.L780	#,
	.loc 1 3046 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# currMB, tmp223
	movl	-16(%rbp), %edx	# k, tmp225
	movslq	%edx, %rdx	# tmp225, tmp224
	addq	$120, %rdx	#, tmp226
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8pdir, D.12395
	cmpl	$2, %eax	#, D.12395
	jne	.L781	#,
.L780:
	.loc 1 3046 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp227
	movl	-16(%rbp), %edx	# k, tmp229
	movslq	%edx, %rdx	# tmp229, tmp228
	addq	$116, %rdx	#, tmp230
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8mode, D.12395
	testl	%eax, %eax	# D.12395
	je	.L781	#,
	.loc 1 3048 0 is_stmt 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.831
	movq	6480(%rax), %rax	# enc_picture.831_65->ref_idx, D.12398
	movq	(%rax), %rdx	# *_66, D.12399
	movq	img(%rip), %rax	# img, img.832
	movl	144(%rax), %ecx	# img.832_68->block_x, D.12395
	movl	-36(%rbp), %eax	# i0, tmp231
	addl	%ecx, %eax	# D.12395, D.12395
	cltq
	salq	$3, %rax	#, D.12396
	addq	%rdx, %rax	# D.12399, D.12399
	movq	(%rax), %rdx	# *_73, D.12400
	movq	img(%rip), %rax	# img, img.833
	movl	148(%rax), %ecx	# img.833_75->block_y, D.12395
	movl	-40(%rbp), %eax	# j0, tmp232
	addl	%ecx, %eax	# D.12395, D.12395
	cltq
	addq	%rax, %rax	# D.12396
	addq	%rdx, %rax	# D.12400, D.12400
	movzwl	(%rax), %eax	# *_80, D.12401
	movswl	%ax, %ecx	# D.12401, D.12395
	movq	-8(%rbp), %rax	# currMB, tmp233
	movl	-16(%rbp), %edx	# k, tmp235
	movslq	%edx, %rdx	# tmp235, tmp234
	addq	$116, %rdx	#, tmp236
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8mode, D.12395
	movl	-40(%rbp), %edx	# j0, tmp237
	movl	-36(%rbp), %esi	# i0, tmp238
	movl	%ecx, %r8d	# D.12395,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# D.12395,
	call	writeReferenceFrame	#
	addl	%eax, -32(%rbp)	# D.12395, no_bits
.L781:
	.loc 1 3042 0
	movl	-24(%rbp), %eax	# step_h0, tmp239
	addl	%eax, -36(%rbp)	# tmp239, i0
.L779:
	.loc 1 3042 0 is_stmt 0 discriminator 1
	cmpl	$3, -36(%rbp)	#, i0
	jle	.L782	#,
	.loc 1 3041 0 is_stmt 1
	movl	-20(%rbp), %eax	# step_v0, tmp240
	addl	%eax, -40(%rbp)	# tmp240, j0
.L778:
	.loc 1 3041 0 is_stmt 0 discriminator 1
	cmpl	$3, -40(%rbp)	#, j0
	jle	.L783	#,
	.loc 1 3051 0 is_stmt 1
	movl	$0, -40(%rbp)	#, j0
	jmp	.L784	#
.L789:
	.loc 1 3052 0
	movl	$0, -36(%rbp)	#, i0
	jmp	.L785	#
.L788:
	.loc 1 3054 0
	movl	-36(%rbp), %eax	# i0, tmp241
	movl	%eax, %edx	# tmp241, tmp242
	shrl	$31, %edx	#, tmp242
	addl	%edx, %eax	# tmp242, tmp243
	sarl	%eax	# tmp244
	movl	%eax, %edx	# tmp244, D.12395
	movl	-40(%rbp), %eax	# j0, tmp248
	addl	%edx, %eax	# D.12395, tmp247
	movl	%eax, -16(%rbp)	# tmp247, k
	.loc 1 3055 0
	movq	-8(%rbp), %rax	# currMB, tmp249
	movl	-16(%rbp), %edx	# k, tmp251
	movslq	%edx, %rdx	# tmp251, tmp250
	addq	$120, %rdx	#, tmp252
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8pdir, D.12395
	cmpl	$1, %eax	#, D.12395
	je	.L786	#,
	.loc 1 3055 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# currMB, tmp253
	movl	-16(%rbp), %edx	# k, tmp255
	movslq	%edx, %rdx	# tmp255, tmp254
	addq	$120, %rdx	#, tmp256
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8pdir, D.12395
	cmpl	$2, %eax	#, D.12395
	jne	.L787	#,
.L786:
	.loc 1 3055 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp257
	movl	-16(%rbp), %edx	# k, tmp259
	movslq	%edx, %rdx	# tmp259, tmp258
	addq	$116, %rdx	#, tmp260
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8mode, D.12395
	testl	%eax, %eax	# D.12395
	je	.L787	#,
	.loc 1 3057 0 is_stmt 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.834
	movq	6480(%rax), %rax	# enc_picture.834_95->ref_idx, D.12398
	addq	$8, %rax	#, D.12398
	movq	(%rax), %rdx	# *_97, D.12399
	movq	img(%rip), %rax	# img, img.835
	movl	144(%rax), %ecx	# img.835_99->block_x, D.12395
	movl	-36(%rbp), %eax	# i0, tmp261
	addl	%ecx, %eax	# D.12395, D.12395
	cltq
	salq	$3, %rax	#, D.12396
	addq	%rdx, %rax	# D.12399, D.12399
	movq	(%rax), %rdx	# *_104, D.12400
	movq	img(%rip), %rax	# img, img.836
	movl	148(%rax), %ecx	# img.836_106->block_y, D.12395
	movl	-40(%rbp), %eax	# j0, tmp262
	addl	%ecx, %eax	# D.12395, D.12395
	cltq
	addq	%rax, %rax	# D.12396
	addq	%rdx, %rax	# D.12400, D.12400
	movzwl	(%rax), %eax	# *_111, D.12401
	movswl	%ax, %ecx	# D.12401, D.12395
	movq	-8(%rbp), %rax	# currMB, tmp263
	movl	-16(%rbp), %edx	# k, tmp265
	movslq	%edx, %rdx	# tmp265, tmp264
	addq	$116, %rdx	#, tmp266
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8mode, D.12395
	movl	-40(%rbp), %edx	# j0, tmp267
	movl	-36(%rbp), %esi	# i0, tmp268
	movl	%ecx, %r8d	# D.12395,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.12395,
	call	writeReferenceFrame	#
	addl	%eax, -32(%rbp)	# D.12395, no_bits
.L787:
	.loc 1 3052 0
	movl	-24(%rbp), %eax	# step_h0, tmp269
	addl	%eax, -36(%rbp)	# tmp269, i0
.L785:
	.loc 1 3052 0 is_stmt 0 discriminator 1
	cmpl	$3, -36(%rbp)	#, i0
	jle	.L788	#,
	.loc 1 3051 0 is_stmt 1
	movl	-20(%rbp), %eax	# step_v0, tmp270
	addl	%eax, -40(%rbp)	# tmp270, j0
.L784:
	.loc 1 3051 0 is_stmt 0 discriminator 1
	cmpl	$3, -40(%rbp)	#, j0
	jle	.L789	#,
.L776:
	.loc 1 3064 0 is_stmt 1
	movq	-8(%rbp), %rax	# currMB, tmp271
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$9, %eax	#, D.12395
	je	.L790	#,
	.loc 1 3064 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp272
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$10, %eax	#, D.12395
	je	.L790	#,
	movq	-8(%rbp), %rax	# currMB, tmp273
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$13, %eax	#, D.12395
	je	.L790	#,
	movq	-8(%rbp), %rax	# currMB, tmp274
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	testl	%eax, %eax	# D.12395
	je	.L790	#,
	.loc 1 3066 0 is_stmt 1
	movl	$0, -40(%rbp)	#, j0
	jmp	.L791	#
.L796:
	.loc 1 3067 0
	movl	$0, -36(%rbp)	#, i0
	jmp	.L792	#
.L795:
	.loc 1 3069 0
	movl	-36(%rbp), %eax	# i0, tmp275
	movl	%eax, %edx	# tmp275, tmp276
	shrl	$31, %edx	#, tmp276
	addl	%edx, %eax	# tmp276, tmp277
	sarl	%eax	# tmp278
	movl	%eax, %edx	# tmp278, D.12395
	movl	-40(%rbp), %eax	# j0, tmp282
	addl	%edx, %eax	# D.12395, tmp281
	movl	%eax, -16(%rbp)	# tmp281, k
	.loc 1 3070 0
	movq	-8(%rbp), %rax	# currMB, tmp283
	movl	-16(%rbp), %edx	# k, tmp285
	movslq	%edx, %rdx	# tmp285, tmp284
	addq	$120, %rdx	#, tmp286
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8pdir, D.12395
	testl	%eax, %eax	# D.12395
	je	.L793	#,
	.loc 1 3070 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# currMB, tmp287
	movl	-16(%rbp), %edx	# k, tmp289
	movslq	%edx, %rdx	# tmp289, tmp288
	addq	$120, %rdx	#, tmp290
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8pdir, D.12395
	cmpl	$2, %eax	#, D.12395
	jne	.L794	#,
.L793:
	.loc 1 3070 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp291
	movl	-16(%rbp), %edx	# k, tmp293
	movslq	%edx, %rdx	# tmp293, tmp292
	addq	$116, %rdx	#, tmp294
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8mode, D.12395
	testl	%eax, %eax	# D.12395
	je	.L794	#,
	.loc 1 3072 0 is_stmt 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.837
	movq	6480(%rax), %rax	# enc_picture.837_130->ref_idx, D.12398
	movq	(%rax), %rdx	# *_131, D.12399
	movq	img(%rip), %rax	# img, img.838
	movl	144(%rax), %ecx	# img.838_133->block_x, D.12395
	movl	-36(%rbp), %eax	# i0, tmp295
	addl	%ecx, %eax	# D.12395, D.12395
	cltq
	salq	$3, %rax	#, D.12396
	addq	%rdx, %rax	# D.12399, D.12399
	movq	(%rax), %rdx	# *_138, D.12400
	movq	img(%rip), %rax	# img, img.839
	movl	148(%rax), %ecx	# img.839_140->block_y, D.12395
	movl	-40(%rbp), %eax	# j0, tmp296
	addl	%ecx, %eax	# D.12395, D.12395
	cltq
	addq	%rax, %rax	# D.12396
	addq	%rdx, %rax	# D.12400, D.12400
	movzwl	(%rax), %eax	# *_145, D.12401
	cwtl
	movl	%eax, -12(%rbp)	# tmp297, refframe
	.loc 1 3073 0
	movq	-8(%rbp), %rax	# currMB, tmp298
	movl	-16(%rbp), %edx	# k, tmp300
	movslq	%edx, %rdx	# tmp300, tmp299
	addq	$116, %rdx	#, tmp301
	movl	8(%rax,%rdx,4), %edx	# currMB_32->b8mode, D.12395
	movl	-20(%rbp), %eax	# step_v0, tmp302
	movl	-40(%rbp), %ecx	# j0, tmp303
	addl	%eax, %ecx	# tmp302, D.12395
	movl	-24(%rbp), %eax	# step_h0, tmp304
	movl	-36(%rbp), %esi	# i0, tmp305
	leal	(%rsi,%rax), %edi	#, D.12395
	movl	-12(%rbp), %r8d	# refframe, tmp306
	movl	-40(%rbp), %esi	# j0, tmp307
	movl	-36(%rbp), %eax	# i0, tmp308
	movl	%edx, (%rsp)	# D.12395,
	movl	$0, %r9d	#,
	movl	%edi, %edx	# D.12395,
	movl	%eax, %edi	# tmp308,
	call	writeMotionVector8x8	#
	addl	%eax, -32(%rbp)	# D.12395, no_bits
.L794:
	.loc 1 3067 0
	movl	-24(%rbp), %eax	# step_h0, tmp309
	addl	%eax, -36(%rbp)	# tmp309, i0
.L792:
	.loc 1 3067 0 is_stmt 0 discriminator 1
	cmpl	$3, -36(%rbp)	#, i0
	jle	.L795	#,
	.loc 1 3066 0 is_stmt 1
	movl	-20(%rbp), %eax	# step_v0, tmp310
	addl	%eax, -40(%rbp)	# tmp310, j0
.L791:
	.loc 1 3066 0 is_stmt 0 discriminator 1
	cmpl	$3, -40(%rbp)	#, j0
	jle	.L796	#,
.L790:
	.loc 1 3080 0 is_stmt 1
	movq	-8(%rbp), %rax	# currMB, tmp311
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$9, %eax	#, D.12395
	je	.L797	#,
	.loc 1 3080 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp312
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$10, %eax	#, D.12395
	je	.L797	#,
	movq	-8(%rbp), %rax	# currMB, tmp313
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	cmpl	$13, %eax	#, D.12395
	je	.L797	#,
	movq	-8(%rbp), %rax	# currMB, tmp314
	movl	72(%rax), %eax	# currMB_32->mb_type, D.12395
	testl	%eax, %eax	# D.12395
	je	.L797	#,
	cmpl	$0, -28(%rbp)	#, bframe
	je	.L797	#,
	.loc 1 3082 0 is_stmt 1
	movl	$0, -40(%rbp)	#, j0
	jmp	.L798	#
.L803:
	.loc 1 3083 0
	movl	$0, -36(%rbp)	#, i0
	jmp	.L799	#
.L802:
	.loc 1 3085 0
	movl	-36(%rbp), %eax	# i0, tmp315
	movl	%eax, %edx	# tmp315, tmp316
	shrl	$31, %edx	#, tmp316
	addl	%edx, %eax	# tmp316, tmp317
	sarl	%eax	# tmp318
	movl	%eax, %edx	# tmp318, D.12395
	movl	-40(%rbp), %eax	# j0, tmp322
	addl	%edx, %eax	# D.12395, tmp321
	movl	%eax, -16(%rbp)	# tmp321, k
	.loc 1 3086 0
	movq	-8(%rbp), %rax	# currMB, tmp323
	movl	-16(%rbp), %edx	# k, tmp325
	movslq	%edx, %rdx	# tmp325, tmp324
	addq	$120, %rdx	#, tmp326
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8pdir, D.12395
	cmpl	$1, %eax	#, D.12395
	je	.L800	#,
	.loc 1 3086 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# currMB, tmp327
	movl	-16(%rbp), %edx	# k, tmp329
	movslq	%edx, %rdx	# tmp329, tmp328
	addq	$120, %rdx	#, tmp330
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8pdir, D.12395
	cmpl	$2, %eax	#, D.12395
	jne	.L801	#,
.L800:
	.loc 1 3086 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp331
	movl	-16(%rbp), %edx	# k, tmp333
	movslq	%edx, %rdx	# tmp333, tmp332
	addq	$116, %rdx	#, tmp334
	movl	8(%rax,%rdx,4), %eax	# currMB_32->b8mode, D.12395
	testl	%eax, %eax	# D.12395
	je	.L801	#,
	.loc 1 3088 0 is_stmt 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.840
	movq	6480(%rax), %rax	# enc_picture.840_166->ref_idx, D.12398
	addq	$8, %rax	#, D.12398
	movq	(%rax), %rdx	# *_168, D.12399
	movq	img(%rip), %rax	# img, img.841
	movl	144(%rax), %ecx	# img.841_170->block_x, D.12395
	movl	-36(%rbp), %eax	# i0, tmp335
	addl	%ecx, %eax	# D.12395, D.12395
	cltq
	salq	$3, %rax	#, D.12396
	addq	%rdx, %rax	# D.12399, D.12399
	movq	(%rax), %rdx	# *_175, D.12400
	movq	img(%rip), %rax	# img, img.842
	movl	148(%rax), %ecx	# img.842_177->block_y, D.12395
	movl	-40(%rbp), %eax	# j0, tmp336
	addl	%ecx, %eax	# D.12395, D.12395
	cltq
	addq	%rax, %rax	# D.12396
	addq	%rdx, %rax	# D.12400, D.12400
	movzwl	(%rax), %eax	# *_182, D.12401
	cwtl
	movl	%eax, -12(%rbp)	# tmp337, refframe
	.loc 1 3089 0
	movq	-8(%rbp), %rax	# currMB, tmp338
	movl	-16(%rbp), %edx	# k, tmp340
	movslq	%edx, %rdx	# tmp340, tmp339
	addq	$116, %rdx	#, tmp341
	movl	8(%rax,%rdx,4), %edx	# currMB_32->b8mode, D.12395
	movl	-20(%rbp), %eax	# step_v0, tmp342
	movl	-40(%rbp), %ecx	# j0, tmp343
	addl	%eax, %ecx	# tmp342, D.12395
	movl	-24(%rbp), %eax	# step_h0, tmp344
	movl	-36(%rbp), %esi	# i0, tmp345
	leal	(%rsi,%rax), %edi	#, D.12395
	movl	-12(%rbp), %r8d	# refframe, tmp346
	movl	-40(%rbp), %esi	# j0, tmp347
	movl	-36(%rbp), %eax	# i0, tmp348
	movl	%edx, (%rsp)	# D.12395,
	movl	$1, %r9d	#,
	movl	%edi, %edx	# D.12395,
	movl	%eax, %edi	# tmp348,
	call	writeMotionVector8x8	#
	addl	%eax, -32(%rbp)	# D.12395, no_bits
.L801:
	.loc 1 3083 0
	movl	-24(%rbp), %eax	# step_h0, tmp349
	addl	%eax, -36(%rbp)	# tmp349, i0
.L799:
	.loc 1 3083 0 is_stmt 0 discriminator 1
	cmpl	$3, -36(%rbp)	#, i0
	jle	.L802	#,
	.loc 1 3082 0 is_stmt 1
	movl	-20(%rbp), %eax	# step_v0, tmp350
	addl	%eax, -40(%rbp)	# tmp350, j0
.L798:
	.loc 1 3082 0 is_stmt 0 discriminator 1
	cmpl	$3, -40(%rbp)	#, j0
	jle	.L803	#,
.L797:
	.loc 1 3093 0 is_stmt 1
	movl	-32(%rbp), %eax	# no_bits, D.12395
	.loc 1 3094 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	writeMotionInfo2NAL, .-writeMotionInfo2NAL
	.globl	writeChromaCoeff
	.type	writeChromaCoeff, @function
writeChromaCoeff:
.LFB35:
	.loc 1 3105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	.loc 1 3106 0
	movl	$0, -136(%rbp)	#, rate
	.loc 1 3107 0
	movq	img(%rip), %rax	# img, img.843
	movq	14168(%rax), %rdx	# img.843_33->mb_data, D.12402
	movq	img(%rip), %rax	# img, img.844
	movl	12(%rax), %eax	# img.844_35->current_mb_nr, D.12403
	cltq
	imulq	$632, %rax, %rax	#, D.12404, D.12404
	addq	%rdx, %rax	# D.12402, tmp212
	movq	%rax, -88(%rbp)	# tmp212, currMB
	.loc 1 3108 0
	movq	img(%rip), %rcx	# img, img.845
	movq	-88(%rbp), %rax	# currMB, tmp213
	movl	(%rax), %eax	# currMB_39->currSEnr, D.12403
	movslq	%eax, %rdx	# D.12403, tmp214
	movq	%rdx, %rax	# tmp214, tmp215
	addq	%rax, %rax	# tmp215
	addq	%rdx, %rax	# tmp214, tmp215
	salq	$4, %rax	#, tmp216
	addq	$14176, %rax	#, tmp217
	addq	%rcx, %rax	# img.845, tmp218
	movq	%rax, -96(%rbp)	# tmp218, currSE
	.loc 1 3109 0
	movq	-88(%rbp), %rax	# currMB, tmp222
	addq	$20, %rax	#, tmp221
	movq	%rax, -80(%rbp)	# tmp221, bitCount
	.loc 1 3110 0
	movq	img(%rip), %rax	# img, img.846
	movq	14160(%rax), %rax	# img.846_44->currentSlice, tmp223
	movq	%rax, -72(%rbp)	# tmp223, currSlice
	.loc 1 3111 0
	movq	input(%rip), %rax	# input, input.847
	movl	2364(%rax), %eax	# input.847_46->partition_mode, D.12403
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp225
	movq	%rax, -64(%rbp)	# tmp225, partMap
	.loc 1 3112 0
	movq	-88(%rbp), %rax	# currMB, tmp226
	movl	460(%rax), %eax	# currMB_39->cbp, tmp227
	movl	%eax, -112(%rbp)	# tmp227, cbp
	.loc 1 3123 0
	movl	$6, -16(%rbp)	#, chroma_dc_context
	movl	$8, -12(%rbp)	#, chroma_dc_context
	movl	$9, -8(%rbp)	#, chroma_dc_context
	.loc 1 3124 0
	movq	img(%rip), %rax	# img, img.848
	movl	72700(%rax), %eax	# img.848_50->yuv_format, D.12403
	subl	$1, %eax	#, tmp228
	movl	%eax, -108(%rbp)	# tmp228, yuv
	.loc 1 3159 0
	cmpl	$15, -112(%rbp)	#, cbp
	jle	.L806	#,
	.loc 1 3161 0
	movl	$0, -124(%rbp)	#, uv
	jmp	.L807	#
.L820:
	.loc 1 3164 0
	movq	input(%rip), %rax	# input, input.849
	movl	2356(%rax), %eax	# input.849_54->symbol_mode, D.12403
	testl	%eax, %eax	# D.12403
	jne	.L808	#,
	.loc 1 3166 0
	movl	-124(%rbp), %eax	# uv, tmp229
	movl	%eax, -104(%rbp)	# tmp229, param
	.loc 1 3167 0
	movl	-104(%rbp), %eax	# param, tmp230
	movl	%eax, %ecx	# tmp230,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$6, %edi	#,
	call	writeCoeff4x4_CAVLC	#
	addl	%eax, -136(%rbp)	# D.12403, rate
	jmp	.L809	#
.L808:
	.loc 1 3173 0
	movq	img(%rip), %rax	# img, img.850
	movq	14144(%rax), %rax	# img.850_59->cofDC, D.12405
	movl	-124(%rbp), %edx	# uv, tmp231
	movslq	%edx, %rdx	# tmp231, D.12406
	addq	$1, %rdx	#, D.12406
	salq	$3, %rdx	#, D.12406
	addq	%rdx, %rax	# D.12406, D.12405
	movq	(%rax), %rax	# *_64, D.12407
	movq	(%rax), %rax	# *_65, tmp232
	movq	%rax, -56(%rbp)	# tmp232, DCLevel
	.loc 1 3174 0
	movq	img(%rip), %rax	# img, img.851
	movq	14144(%rax), %rax	# img.851_67->cofDC, D.12405
	movl	-124(%rbp), %edx	# uv, tmp233
	movslq	%edx, %rdx	# tmp233, D.12406
	addq	$1, %rdx	#, D.12406
	salq	$3, %rdx	#, D.12406
	addq	%rdx, %rax	# D.12406, D.12405
	movq	(%rax), %rax	# *_72, D.12407
	movq	8(%rax), %rax	# MEM[(int * *)_73 + 8B], tmp234
	movq	%rax, -48(%rbp)	# tmp234, DCRun
	.loc 1 3176 0
	movl	$1, -132(%rbp)	#, level
	.loc 1 3177 0
	movl	$0, -128(%rbp)	#, k
	jmp	.L810	#
.L819:
	.loc 1 3179 0
	movl	-128(%rbp), %eax	# k, tmp235
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12404
	movq	-56(%rbp), %rax	# DCLevel, tmp236
	addq	%rdx, %rax	# D.12404, D.12408
	movl	(%rax), %edx	# *_81, D.12403
	movq	-96(%rbp), %rax	# currSE, tmp237
	movl	%edx, 4(%rax)	# D.12403, currSE_10->value1
	movq	-96(%rbp), %rax	# currSE, tmp238
	movl	4(%rax), %eax	# currSE_10->value1, tmp239
	movl	%eax, -132(%rbp)	# tmp239, level
	.loc 1 3180 0
	movl	-128(%rbp), %eax	# k, tmp240
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12404
	movq	-48(%rbp), %rax	# DCRun, tmp241
	addq	%rdx, %rax	# D.12404, D.12408
	movl	(%rax), %edx	# *_86, D.12403
	movq	-96(%rbp), %rax	# currSE, tmp242
	movl	%edx, 8(%rax)	# D.12403, currSE_10->value2
	movq	-96(%rbp), %rax	# currSE, tmp243
	movl	8(%rax), %eax	# currSE_10->value2, tmp244
	movl	%eax, -100(%rbp)	# tmp244, run
	.loc 1 3182 0
	movq	input(%rip), %rax	# input, input.852
	movl	2356(%rax), %eax	# input.852_89->symbol_mode, D.12403
	testl	%eax, %eax	# D.12403
	jne	.L811	#,
	.loc 1 3182 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# currSE, tmp245
	movq	$levrun_linfo_c2x2, 32(%rax)	#, currSE_10->mapping
	jmp	.L812	#
.L811:
	.loc 1 3183 0 is_stmt 1
	movq	-96(%rbp), %rax	# currSE, tmp246
	movq	$writeRunLevel_CABAC, 40(%rax)	#, currSE_10->writing
.L812:
	.loc 1 3185 0
	movl	-108(%rbp), %eax	# yuv, tmp248
	cltq
	movl	-16(%rbp,%rax,4), %edx	# chroma_dc_context, D.12403
	movq	-96(%rbp), %rax	# currSE, tmp249
	movl	%edx, 24(%rax)	# D.12403, currSE_10->context
	.loc 1 3186 0
	movq	-88(%rbp), %rax	# currMB, tmp250
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$9, %eax	#, D.12403
	je	.L813	#,
	.loc 1 3186 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# currMB, tmp251
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$10, %eax	#, D.12403
	je	.L813	#,
	.loc 1 3186 0 discriminator 1
	movq	-88(%rbp), %rax	# currMB, tmp252
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$13, %eax	#, D.12403
	jne	.L814	#,
.L813:
	movl	$8, %eax	#, iftmp.853
	jmp	.L815	#
.L814:
	movl	$13, %eax	#, iftmp.853
.L815:
	.loc 1 3186 0 discriminator 3
	movq	-96(%rbp), %rdx	# currSE, tmp253
	movl	%eax, (%rdx)	# iftmp.853, currSE_10->type
	.loc 1 3187 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rdx	# img, img.854
	movq	-88(%rbp), %rax	# currMB, tmp254
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$9, %eax	#, D.12403
	je	.L816	#,
	.loc 1 3187 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# currMB, tmp255
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$10, %eax	#, D.12403
	je	.L816	#,
	.loc 1 3187 0 discriminator 1
	movq	-88(%rbp), %rax	# currMB, tmp256
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$13, %eax	#, D.12403
	jne	.L817	#,
.L816:
	movl	$1, %eax	#, iftmp.855
	jmp	.L818	#
.L817:
	.loc 1 3187 0 discriminator 3
	movl	$0, %eax	#, iftmp.855
.L818:
	.loc 1 3187 0 discriminator 4
	movl	%eax, 80(%rdx)	# iftmp.855, img.854_97->is_intra_block
	.loc 1 3188 0 is_stmt 1 discriminator 4
	movq	img(%rip), %rax	# img, img.856
	movl	-124(%rbp), %edx	# uv, tmp257
	movl	%edx, 84(%rax)	# tmp257, img.856_103->is_v_block
	.loc 1 3191 0 discriminator 4
	movq	-72(%rbp), %rax	# currSlice, tmp258
	movq	24(%rax), %rdx	# currSlice_45->partArr, D.12409
	movq	-96(%rbp), %rax	# currSE, tmp259
	movl	(%rax), %eax	# currSE_10->type, D.12403
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12404
	movq	-64(%rbp), %rax	# partMap, tmp260
	addq	%rcx, %rax	# D.12404, D.12410
	movl	(%rax), %eax	# *_108, D.12403
	cltq
	salq	$3, %rax	#, tmp262
	movq	%rax, %rcx	# tmp261, tmp263
	salq	$4, %rcx	#, tmp263
	subq	%rax, %rcx	# tmp261, D.12404
	movq	%rcx, %rax	# D.12404, D.12404
	addq	%rdx, %rax	# D.12409, tmp264
	movq	%rax, -40(%rbp)	# tmp264, dataPart
	.loc 1 3192 0 discriminator 4
	movq	-40(%rbp), %rax	# dataPart, tmp265
	movq	112(%rax), %rax	# dataPart_112->writeSyntaxElement, D.12411
	movq	-40(%rbp), %rcx	# dataPart, tmp266
	movq	-96(%rbp), %rdx	# currSE, tmp267
	movq	%rcx, %rsi	# tmp266,
	movq	%rdx, %rdi	# tmp267,
	call	*%rax	# D.12411
	.loc 1 3193 0 discriminator 4
	movq	-80(%rbp), %rax	# bitCount, tmp268
	leaq	24(%rax), %rdx	#, D.12408
	movq	-80(%rbp), %rax	# bitCount, tmp269
	addq	$24, %rax	#, D.12408
	movl	(%rax), %ecx	# *_115, D.12403
	movq	-96(%rbp), %rax	# currSE, tmp270
	movl	12(%rax), %eax	# currSE_10->len, D.12403
	addl	%ecx, %eax	# D.12403, D.12403
	movl	%eax, (%rdx)	# D.12403, *_114
	.loc 1 3194 0 discriminator 4
	movq	-96(%rbp), %rax	# currSE, tmp271
	movl	12(%rax), %eax	# currSE_10->len, D.12403
	addl	%eax, -136(%rbp)	# D.12403, rate
	.loc 1 3199 0 discriminator 4
	addq	$48, -96(%rbp)	#, currSE
	.loc 1 3200 0 discriminator 4
	movq	-88(%rbp), %rax	# currMB, tmp272
	movl	(%rax), %eax	# currMB_39->currSEnr, D.12403
	leal	1(%rax), %edx	#, D.12403
	movq	-88(%rbp), %rax	# currMB, tmp273
	movl	%edx, (%rax)	# D.12403, currMB_39->currSEnr
	.loc 1 3177 0 discriminator 4
	addl	$1, -128(%rbp)	#, k
.L810:
	.loc 1 3177 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.857
	movl	72696(%rax), %eax	# img.857_77->num_cdc_coeff, D.12403
	cmpl	-128(%rbp), %eax	# k, D.12403
	jl	.L809	#,
	.loc 1 3177 0 discriminator 2
	cmpl	$0, -132(%rbp)	#, level
	jne	.L819	#,
.L809:
	.loc 1 3161 0 is_stmt 1
	addl	$1, -124(%rbp)	#, uv
.L807:
	.loc 1 3161 0 is_stmt 0 discriminator 1
	cmpl	$1, -124(%rbp)	#, uv
	jle	.L820	#,
.L806:
	.loc 1 3210 0 is_stmt 1
	movl	$-1, -124(%rbp)	#, uv
	.loc 1 3211 0
	movl	-112(%rbp), %eax	# cbp, tmp274
	sarl	$4, %eax	#, D.12403
	cmpl	$2, %eax	#, D.12403
	jne	.L821	#,
	.loc 1 3213 0
	movl	$4, -120(%rbp)	#, b8
	jmp	.L822	#
.L837:
	.loc 1 3214 0
	movl	$0, -116(%rbp)	#, b4
	jmp	.L823	#
.L836:
	.loc 1 3216 0
	movq	input(%rip), %rax	# input, input.858
	movl	2356(%rax), %eax	# input.858_133->symbol_mode, D.12403
	testl	%eax, %eax	# D.12403
	jne	.L824	#,
	.loc 1 3218 0
	movl	-120(%rbp), %eax	# b8, tmp275
	leal	-4(%rax), %esi	#, D.12403
	movl	-116(%rbp), %eax	# b4, tmp277
	cltq
	movl	-108(%rbp), %edx	# yuv, tmp279
	movslq	%edx, %rcx	# tmp279, tmp278
	movslq	%esi, %rdx	# D.12403, tmp280
	salq	$3, %rcx	#, tmp281
	addq	%rcx, %rdx	# tmp281, tmp282
	movzbl	chroma_ac_param.5694(%rax,%rdx,4), %eax	# chroma_ac_param, D.12412
	movzbl	%al, %eax	# D.12412, tmp283
	movl	%eax, -104(%rbp)	# tmp283, param
	.loc 1 3219 0
	movl	-104(%rbp), %ecx	# param, tmp284
	movl	-116(%rbp), %edx	# b4, tmp285
	movl	-120(%rbp), %eax	# b8, tmp286
	movl	%eax, %esi	# tmp286,
	movl	$7, %edi	#,
	call	writeCoeff4x4_CAVLC	#
	addl	%eax, -136(%rbp)	# D.12403, rate
	jmp	.L825	#
.L824:
	.loc 1 3225 0
	movq	img(%rip), %rax	# img, img.859
	movq	14136(%rax), %rax	# img.859_140->cofAC, D.12413
	movl	-120(%rbp), %edx	# b8, tmp287
	movslq	%edx, %rdx	# tmp287, D.12404
	salq	$3, %rdx	#, D.12404
	addq	%rdx, %rax	# D.12404, D.12413
	movq	(%rax), %rax	# *_144, D.12405
	movl	-116(%rbp), %edx	# b4, tmp288
	movslq	%edx, %rdx	# tmp288, D.12404
	salq	$3, %rdx	#, D.12404
	addq	%rdx, %rax	# D.12404, D.12405
	movq	(%rax), %rax	# *_148, D.12407
	movq	(%rax), %rax	# *_149, tmp289
	movq	%rax, -32(%rbp)	# tmp289, ACLevel
	.loc 1 3226 0
	movq	img(%rip), %rax	# img, img.860
	movq	14136(%rax), %rax	# img.860_151->cofAC, D.12413
	movl	-120(%rbp), %edx	# b8, tmp290
	movslq	%edx, %rdx	# tmp290, D.12404
	salq	$3, %rdx	#, D.12404
	addq	%rdx, %rax	# D.12404, D.12413
	movq	(%rax), %rax	# *_155, D.12405
	movl	-116(%rbp), %edx	# b4, tmp291
	movslq	%edx, %rdx	# tmp291, D.12404
	salq	$3, %rdx	#, D.12404
	addq	%rdx, %rax	# D.12404, D.12405
	movq	(%rax), %rax	# *_159, D.12407
	movq	8(%rax), %rax	# MEM[(int * *)_160 + 8B], tmp292
	movq	%rax, -24(%rbp)	# tmp292, ACRun
	.loc 1 3228 0
	movl	$1, -132(%rbp)	#, level
	.loc 1 3229 0
	addl	$1, -124(%rbp)	#, uv
	.loc 1 3231 0
	movq	img(%rip), %rax	# img, img.861
	movl	-120(%rbp), %edx	# b8, tmp293
	leal	-4(%rdx), %edi	#, D.12403
	movl	-116(%rbp), %edx	# b4, tmp295
	movslq	%edx, %rdx	# tmp295, tmp294
	movl	-108(%rbp), %ecx	# yuv, tmp297
	movslq	%ecx, %rsi	# tmp297, tmp296
	movslq	%edi, %rcx	# D.12403, tmp298
	salq	$3, %rsi	#, tmp299
	addq	%rsi, %rcx	# tmp299, tmp300
	movzbl	subblk_offset_y(%rdx,%rcx,4), %edx	# subblk_offset_y, D.12412
	shrb	$2, %dl	#, D.12412
	movzbl	%dl, %edx	# D.12412, D.12403
	movl	%edx, 76(%rax)	# D.12403, img.861_164->subblock_y
	.loc 1 3232 0
	movq	img(%rip), %rax	# img, img.862
	movl	-120(%rbp), %edx	# b8, tmp301
	leal	-4(%rdx), %edi	#, D.12403
	movl	-116(%rbp), %edx	# b4, tmp303
	movslq	%edx, %rdx	# tmp303, tmp302
	movl	-108(%rbp), %ecx	# yuv, tmp305
	movslq	%ecx, %rsi	# tmp305, tmp304
	movslq	%edi, %rcx	# D.12403, tmp306
	salq	$3, %rsi	#, tmp307
	addq	%rsi, %rcx	# tmp307, tmp308
	movzbl	subblk_offset_x(%rdx,%rcx,4), %edx	# subblk_offset_x, D.12412
	shrb	$2, %dl	#, D.12412
	movzbl	%dl, %edx	# D.12412, D.12403
	movl	%edx, 72(%rax)	# D.12403, img.862_169->subblock_x
	.loc 1 3234 0
	movl	$0, -128(%rbp)	#, k
	jmp	.L826	#
.L835:
	.loc 1 3236 0
	movl	-128(%rbp), %eax	# k, tmp309
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12404
	movq	-32(%rbp), %rax	# ACLevel, tmp310
	addq	%rdx, %rax	# D.12404, D.12408
	movl	(%rax), %edx	# *_177, D.12403
	movq	-96(%rbp), %rax	# currSE, tmp311
	movl	%edx, 4(%rax)	# D.12403, currSE_14->value1
	movq	-96(%rbp), %rax	# currSE, tmp312
	movl	4(%rax), %eax	# currSE_14->value1, tmp313
	movl	%eax, -132(%rbp)	# tmp313, level
	.loc 1 3237 0
	movl	-128(%rbp), %eax	# k, tmp314
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12404
	movq	-24(%rbp), %rax	# ACRun, tmp315
	addq	%rdx, %rax	# D.12404, D.12408
	movl	(%rax), %edx	# *_182, D.12403
	movq	-96(%rbp), %rax	# currSE, tmp316
	movl	%edx, 8(%rax)	# D.12403, currSE_14->value2
	movq	-96(%rbp), %rax	# currSE, tmp317
	movl	8(%rax), %eax	# currSE_14->value2, tmp318
	movl	%eax, -100(%rbp)	# tmp318, run
	.loc 1 3239 0
	movq	input(%rip), %rax	# input, input.863
	movl	2356(%rax), %eax	# input.863_185->symbol_mode, D.12403
	testl	%eax, %eax	# D.12403
	jne	.L827	#,
	.loc 1 3239 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# currSE, tmp319
	movq	$levrun_linfo_inter, 32(%rax)	#, currSE_14->mapping
	jmp	.L828	#
.L827:
	.loc 1 3240 0 is_stmt 1
	movq	-96(%rbp), %rax	# currSE, tmp320
	movq	$writeRunLevel_CABAC, 40(%rax)	#, currSE_14->writing
.L828:
	.loc 1 3242 0
	movq	-96(%rbp), %rax	# currSE, tmp321
	movl	$7, 24(%rax)	#, currSE_14->context
	.loc 1 3243 0
	movq	-88(%rbp), %rax	# currMB, tmp322
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$9, %eax	#, D.12403
	je	.L829	#,
	.loc 1 3243 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# currMB, tmp323
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$10, %eax	#, D.12403
	je	.L829	#,
	.loc 1 3243 0 discriminator 1
	movq	-88(%rbp), %rax	# currMB, tmp324
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$13, %eax	#, D.12403
	jne	.L830	#,
.L829:
	movl	$10, %eax	#, iftmp.864
	jmp	.L831	#
.L830:
	movl	$15, %eax	#, iftmp.864
.L831:
	.loc 1 3243 0 discriminator 3
	movq	-96(%rbp), %rdx	# currSE, tmp325
	movl	%eax, (%rdx)	# iftmp.864, currSE_14->type
	.loc 1 3244 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rdx	# img, img.865
	movq	-88(%rbp), %rax	# currMB, tmp326
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$9, %eax	#, D.12403
	je	.L832	#,
	.loc 1 3244 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# currMB, tmp327
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$10, %eax	#, D.12403
	je	.L832	#,
	.loc 1 3244 0 discriminator 1
	movq	-88(%rbp), %rax	# currMB, tmp328
	movl	72(%rax), %eax	# currMB_39->mb_type, D.12403
	cmpl	$13, %eax	#, D.12403
	jne	.L833	#,
.L832:
	movl	$1, %eax	#, iftmp.866
	jmp	.L834	#
.L833:
	.loc 1 3244 0 discriminator 3
	movl	$0, %eax	#, iftmp.866
.L834:
	.loc 1 3244 0 discriminator 4
	movl	%eax, 80(%rdx)	# iftmp.866, img.865_192->is_intra_block
	.loc 1 3245 0 is_stmt 1 discriminator 4
	movq	img(%rip), %rax	# img, img.867
	movq	img(%rip), %rdx	# img, img.868
	movl	72692(%rdx), %edx	# img.868_199->num_blk8x8_uv, D.12403
	addl	%edx, %edx	# D.12403
	cmpl	-124(%rbp), %edx	# uv, D.12403
	setle	%dl	#, D.12414
	movzbl	%dl, %edx	# D.12414, D.12403
	movl	%edx, 84(%rax)	# D.12403, img.867_198->is_v_block
	.loc 1 3248 0 discriminator 4
	movq	-72(%rbp), %rax	# currSlice, tmp329
	movq	24(%rax), %rdx	# currSlice_45->partArr, D.12409
	movq	-96(%rbp), %rax	# currSE, tmp330
	movl	(%rax), %eax	# currSE_14->type, D.12403
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12404
	movq	-64(%rbp), %rax	# partMap, tmp331
	addq	%rcx, %rax	# D.12404, D.12410
	movl	(%rax), %eax	# *_208, D.12403
	cltq
	salq	$3, %rax	#, tmp333
	movq	%rax, %rcx	# tmp332, tmp334
	salq	$4, %rcx	#, tmp334
	subq	%rax, %rcx	# tmp332, D.12404
	movq	%rcx, %rax	# D.12404, D.12404
	addq	%rdx, %rax	# D.12409, tmp335
	movq	%rax, -40(%rbp)	# tmp335, dataPart
	.loc 1 3249 0 discriminator 4
	movq	-40(%rbp), %rax	# dataPart, tmp336
	movq	112(%rax), %rax	# dataPart_212->writeSyntaxElement, D.12411
	movq	-40(%rbp), %rcx	# dataPart, tmp337
	movq	-96(%rbp), %rdx	# currSE, tmp338
	movq	%rcx, %rsi	# tmp337,
	movq	%rdx, %rdi	# tmp338,
	call	*%rax	# D.12411
	.loc 1 3250 0 discriminator 4
	movq	-80(%rbp), %rax	# bitCount, tmp339
	leaq	24(%rax), %rdx	#, D.12408
	movq	-80(%rbp), %rax	# bitCount, tmp340
	addq	$24, %rax	#, D.12408
	movl	(%rax), %ecx	# *_215, D.12403
	movq	-96(%rbp), %rax	# currSE, tmp341
	movl	12(%rax), %eax	# currSE_14->len, D.12403
	addl	%ecx, %eax	# D.12403, D.12403
	movl	%eax, (%rdx)	# D.12403, *_214
	.loc 1 3251 0 discriminator 4
	movq	-96(%rbp), %rax	# currSE, tmp342
	movl	12(%rax), %eax	# currSE_14->len, D.12403
	addl	%eax, -136(%rbp)	# D.12403, rate
	.loc 1 3257 0 discriminator 4
	addq	$48, -96(%rbp)	#, currSE
	.loc 1 3258 0 discriminator 4
	movq	-88(%rbp), %rax	# currMB, tmp343
	movl	(%rax), %eax	# currMB_39->currSEnr, D.12403
	leal	1(%rax), %edx	#, D.12403
	movq	-88(%rbp), %rax	# currMB, tmp344
	movl	%edx, (%rax)	# D.12403, currMB_39->currSEnr
	.loc 1 3234 0 discriminator 4
	addl	$1, -128(%rbp)	#, k
.L826:
	.loc 1 3234 0 is_stmt 0 discriminator 1
	cmpl	$15, -128(%rbp)	#, k
	jg	.L825	#,
	.loc 1 3234 0 discriminator 2
	cmpl	$0, -132(%rbp)	#, level
	jne	.L835	#,
.L825:
	.loc 1 3214 0 is_stmt 1
	addl	$1, -116(%rbp)	#, b4
.L823:
	.loc 1 3214 0 is_stmt 0 discriminator 1
	cmpl	$3, -116(%rbp)	#, b4
	jle	.L836	#,
	.loc 1 3213 0 is_stmt 1
	addl	$1, -120(%rbp)	#, b8
.L822:
	.loc 1 3213 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.869
	movl	72692(%rax), %eax	# img.869_129->num_blk8x8_uv, D.12403
	addl	$4, %eax	#, D.12403
	cmpl	-120(%rbp), %eax	# b8, D.12403
	jg	.L837	#,
.L821:
	.loc 1 3264 0 is_stmt 1
	movl	-136(%rbp), %eax	# rate, D.12403
	.loc 1 3265 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	writeChromaCoeff, .-writeChromaCoeff
	.globl	writeLumaCoeff4x4_CABAC
	.type	writeLumaCoeff4x4_CABAC, @function
writeLumaCoeff4x4_CABAC:
.LFB36:
	.loc 1 3276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# b8, b8
	movl	%esi, -88(%rbp)	# b4, b4
	movl	%edx, -92(%rbp)	# intra4x4mode, intra4x4mode
	.loc 1 3277 0
	movl	$0, -80(%rbp)	#, rate
	.loc 1 3278 0
	movq	img(%rip), %rax	# img, img.870
	movq	14168(%rax), %rdx	# img.870_13->mb_data, D.12415
	movq	img(%rip), %rax	# img, img.871
	movl	12(%rax), %eax	# img.871_15->current_mb_nr, D.12416
	cltq
	imulq	$632, %rax, %rax	#, D.12417, D.12417
	addq	%rdx, %rax	# D.12415, tmp132
	movq	%rax, -56(%rbp)	# tmp132, currMB
	.loc 1 3279 0
	movq	img(%rip), %rcx	# img, img.872
	movq	-56(%rbp), %rax	# currMB, tmp133
	movl	(%rax), %eax	# currMB_19->currSEnr, D.12416
	movslq	%eax, %rdx	# D.12416, tmp134
	movq	%rdx, %rax	# tmp134, tmp135
	addq	%rax, %rax	# tmp135
	addq	%rdx, %rax	# tmp134, tmp135
	salq	$4, %rax	#, tmp136
	addq	$14176, %rax	#, tmp137
	addq	%rcx, %rax	# img.872, tmp138
	movq	%rax, -64(%rbp)	# tmp138, currSE
	.loc 1 3280 0
	movq	img(%rip), %rax	# img, img.873
	movq	14160(%rax), %rax	# img.873_23->currentSlice, tmp139
	movq	%rax, -48(%rbp)	# tmp139, currSlice
	.loc 1 3281 0
	movq	input(%rip), %rax	# input, input.874
	movl	2364(%rax), %eax	# input.874_25->partition_mode, D.12416
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp141
	movq	%rax, -40(%rbp)	# tmp141, partMap
	.loc 1 3282 0
	movq	-56(%rbp), %rax	# currMB, tmp145
	addq	$20, %rax	#, tmp144
	movq	%rax, -32(%rbp)	# tmp144, bitCount
	.loc 1 3287 0
	movq	img(%rip), %rax	# img, img.875
	movq	14136(%rax), %rax	# img.875_29->cofAC, D.12418
	movl	-84(%rbp), %edx	# b8, tmp146
	movslq	%edx, %rdx	# tmp146, D.12417
	salq	$3, %rdx	#, D.12417
	addq	%rdx, %rax	# D.12417, D.12418
	movq	(%rax), %rax	# *_34, D.12419
	movl	-88(%rbp), %edx	# b4, tmp147
	movslq	%edx, %rdx	# tmp147, D.12417
	salq	$3, %rdx	#, D.12417
	addq	%rdx, %rax	# D.12417, D.12419
	movq	(%rax), %rax	# *_39, D.12420
	movq	(%rax), %rax	# *_40, tmp148
	movq	%rax, -24(%rbp)	# tmp148, ACLevel
	.loc 1 3288 0
	movq	img(%rip), %rax	# img, img.876
	movq	14136(%rax), %rax	# img.876_42->cofAC, D.12418
	movl	-84(%rbp), %edx	# b8, tmp149
	movslq	%edx, %rdx	# tmp149, D.12417
	salq	$3, %rdx	#, D.12417
	addq	%rdx, %rax	# D.12417, D.12418
	movq	(%rax), %rax	# *_46, D.12419
	movl	-88(%rbp), %edx	# b4, tmp150
	movslq	%edx, %rdx	# tmp150, D.12417
	salq	$3, %rdx	#, D.12417
	addq	%rdx, %rax	# D.12417, D.12419
	movq	(%rax), %rax	# *_50, D.12420
	movq	8(%rax), %rax	# MEM[(int * *)_51 + 8B], tmp151
	movq	%rax, -16(%rbp)	# tmp151, ACRun
	.loc 1 3290 0
	movq	img(%rip), %rdx	# img, img.877
	movl	-84(%rbp), %eax	# b8, tmp152
	andl	$1, %eax	#, D.12416
	testl	%eax, %eax	# D.12416
	jne	.L840	#,
	.loc 1 3290 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# b4, tmp153
	andl	$1, %eax	#, D.12416
	testl	%eax, %eax	# D.12416
	setne	%al	#, D.12421
	movzbl	%al, %eax	# D.12421, iftmp.878
	jmp	.L841	#
.L840:
	.loc 1 3290 0 discriminator 2
	movl	-88(%rbp), %eax	# b4, tmp154
	andl	$1, %eax	#, D.12416
	testl	%eax, %eax	# D.12416
	jne	.L842	#,
	.loc 1 3290 0 discriminator 1
	movl	$2, %eax	#, iftmp.879
	jmp	.L841	#
.L842:
	.loc 1 3290 0 discriminator 2
	movl	$3, %eax	#, iftmp.879
.L841:
	.loc 1 3290 0 discriminator 3
	movl	%eax, 72(%rdx)	# iftmp.878, img.877_53->subblock_x
	.loc 1 3291 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rdx	# img, img.880
	cmpl	$1, -84(%rbp)	#, b8
	jg	.L844	#,
	.loc 1 3291 0 is_stmt 0 discriminator 1
	cmpl	$1, -88(%rbp)	#, b4
	setg	%al	#, D.12421
	movzbl	%al, %eax	# D.12421, iftmp.881
	jmp	.L845	#
.L844:
	.loc 1 3291 0 discriminator 2
	cmpl	$1, -88(%rbp)	#, b4
	jg	.L846	#,
	.loc 1 3291 0 discriminator 1
	movl	$2, %eax	#, iftmp.882
	jmp	.L845	#
.L846:
	.loc 1 3291 0 discriminator 2
	movl	$3, %eax	#, iftmp.882
.L845:
	.loc 1 3291 0 discriminator 3
	movl	%eax, 76(%rdx)	# iftmp.881, img.880_62->subblock_y
	.loc 1 3293 0 is_stmt 1 discriminator 3
	movl	$1, -76(%rbp)	#, level
	.loc 1 3294 0 discriminator 3
	movl	$0, -72(%rbp)	#, k
	jmp	.L848	#
.L856:
	.loc 1 3296 0
	movl	-72(%rbp), %eax	# k, tmp155
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12417
	movq	-24(%rbp), %rax	# ACLevel, tmp156
	addq	%rdx, %rax	# D.12417, D.12422
	movl	(%rax), %edx	# *_72, D.12416
	movq	-64(%rbp), %rax	# currSE, tmp157
	movl	%edx, 4(%rax)	# D.12416, currSE_2->value1
	movq	-64(%rbp), %rax	# currSE, tmp158
	movl	4(%rax), %eax	# currSE_2->value1, tmp159
	movl	%eax, -76(%rbp)	# tmp159, level
	.loc 1 3297 0
	movl	-72(%rbp), %eax	# k, tmp160
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12417
	movq	-16(%rbp), %rax	# ACRun, tmp161
	addq	%rdx, %rax	# D.12417, D.12422
	movl	(%rax), %edx	# *_77, D.12416
	movq	-64(%rbp), %rax	# currSE, tmp162
	movl	%edx, 8(%rax)	# D.12416, currSE_2->value2
	movq	-64(%rbp), %rax	# currSE, tmp163
	movl	8(%rax), %eax	# currSE_2->value2, tmp164
	movl	%eax, -68(%rbp)	# tmp164, run
	.loc 1 3299 0
	movq	-64(%rbp), %rax	# currSE, tmp165
	movq	$writeRunLevel_CABAC, 40(%rax)	#, currSE_2->writing
	.loc 1 3301 0
	movq	-64(%rbp), %rax	# currSE, tmp166
	movl	$5, 24(%rax)	#, currSE_2->context
	.loc 1 3302 0
	cmpl	$0, -72(%rbp)	#, k
	jne	.L849	#,
	.loc 1 3302 0 is_stmt 0 discriminator 1
	cmpl	$0, -92(%rbp)	#, intra4x4mode
	je	.L850	#,
	movl	$7, %eax	#, iftmp.884
	jmp	.L852	#
.L850:
	.loc 1 3302 0 discriminator 2
	movl	$12, %eax	#, iftmp.884
	jmp	.L852	#
.L849:
	cmpl	$0, -92(%rbp)	#, intra4x4mode
	je	.L853	#,
	.loc 1 3302 0 discriminator 1
	movl	$9, %eax	#, iftmp.885
	jmp	.L852	#
.L853:
	.loc 1 3302 0 discriminator 2
	movl	$14, %eax	#, iftmp.885
.L852:
	.loc 1 3302 0 discriminator 3
	movq	-64(%rbp), %rdx	# currSE, tmp167
	movl	%eax, (%rdx)	# iftmp.883, currSE_2->type
	.loc 1 3303 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.886
	movl	-92(%rbp), %edx	# intra4x4mode, tmp168
	movl	%edx, 80(%rax)	# tmp168, img.886_87->is_intra_block
	.loc 1 3306 0 discriminator 3
	movq	-48(%rbp), %rax	# currSlice, tmp169
	movq	24(%rax), %rdx	# currSlice_24->partArr, D.12423
	movq	-64(%rbp), %rax	# currSE, tmp170
	movl	(%rax), %eax	# currSE_2->type, D.12416
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12417
	movq	-40(%rbp), %rax	# partMap, tmp171
	addq	%rcx, %rax	# D.12417, D.12424
	movl	(%rax), %eax	# *_92, D.12416
	cltq
	salq	$3, %rax	#, tmp173
	movq	%rax, %rcx	# tmp172, tmp174
	salq	$4, %rcx	#, tmp174
	subq	%rax, %rcx	# tmp172, D.12417
	movq	%rcx, %rax	# D.12417, D.12417
	addq	%rdx, %rax	# D.12423, tmp175
	movq	%rax, -8(%rbp)	# tmp175, dataPart
	.loc 1 3307 0 discriminator 3
	movq	-8(%rbp), %rax	# dataPart, tmp176
	movq	112(%rax), %rax	# dataPart_96->writeSyntaxElement, D.12425
	movq	-8(%rbp), %rcx	# dataPart, tmp177
	movq	-64(%rbp), %rdx	# currSE, tmp178
	movq	%rcx, %rsi	# tmp177,
	movq	%rdx, %rdi	# tmp178,
	call	*%rax	# D.12425
	.loc 1 3308 0 discriminator 3
	movq	-32(%rbp), %rax	# bitCount, tmp179
	leaq	20(%rax), %rdx	#, D.12422
	movq	-32(%rbp), %rax	# bitCount, tmp180
	addq	$20, %rax	#, D.12422
	movl	(%rax), %ecx	# *_99, D.12416
	movq	-64(%rbp), %rax	# currSE, tmp181
	movl	12(%rax), %eax	# currSE_2->len, D.12416
	addl	%ecx, %eax	# D.12416, D.12416
	movl	%eax, (%rdx)	# D.12416, *_98
	.loc 1 3309 0 discriminator 3
	movq	-64(%rbp), %rax	# currSE, tmp182
	movl	12(%rax), %eax	# currSE_2->len, D.12416
	addl	%eax, -80(%rbp)	# D.12416, rate
	.loc 1 3314 0 discriminator 3
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 3315 0 discriminator 3
	movq	-56(%rbp), %rax	# currMB, tmp183
	movl	(%rax), %eax	# currMB_19->currSEnr, D.12416
	leal	1(%rax), %edx	#, D.12416
	movq	-56(%rbp), %rax	# currMB, tmp184
	movl	%edx, (%rax)	# D.12416, currMB_19->currSEnr
	.loc 1 3294 0 discriminator 3
	addl	$1, -72(%rbp)	#, k
.L848:
	.loc 1 3294 0 is_stmt 0 discriminator 1
	cmpl	$16, -72(%rbp)	#, k
	jg	.L855	#,
	.loc 1 3294 0 discriminator 2
	cmpl	$0, -76(%rbp)	#, level
	jne	.L856	#,
.L855:
	.loc 1 3318 0 is_stmt 1
	movl	-80(%rbp), %eax	# rate, D.12416
	.loc 1 3319 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	writeLumaCoeff4x4_CABAC, .-writeLumaCoeff4x4_CABAC
	.globl	writeLumaCoeff8x8_CABAC
	.type	writeLumaCoeff8x8_CABAC, @function
writeLumaCoeff8x8_CABAC:
.LFB37:
	.loc 1 3328 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# b8, b8
	movl	%esi, -88(%rbp)	# intra_mode, intra_mode
	.loc 1 3329 0
	movl	$0, -80(%rbp)	#, rate
	.loc 1 3330 0
	movq	img(%rip), %rax	# img, img.887
	movq	14168(%rax), %rdx	# img.887_12->mb_data, D.12426
	movq	img(%rip), %rax	# img, img.888
	movl	12(%rax), %eax	# img.888_14->current_mb_nr, D.12427
	cltq
	imulq	$632, %rax, %rax	#, D.12428, D.12428
	addq	%rdx, %rax	# D.12426, tmp127
	movq	%rax, -48(%rbp)	# tmp127, currMB
	.loc 1 3331 0
	movq	img(%rip), %rcx	# img, img.889
	movq	-48(%rbp), %rax	# currMB, tmp128
	movl	(%rax), %eax	# currMB_18->currSEnr, D.12427
	movslq	%eax, %rdx	# D.12427, tmp129
	movq	%rdx, %rax	# tmp129, tmp130
	addq	%rax, %rax	# tmp130
	addq	%rdx, %rax	# tmp129, tmp130
	salq	$4, %rax	#, tmp131
	addq	$14176, %rax	#, tmp132
	addq	%rcx, %rax	# img.889, tmp133
	movq	%rax, -64(%rbp)	# tmp133, currSE
	.loc 1 3332 0
	movq	img(%rip), %rax	# img, img.890
	movq	14160(%rax), %rax	# img.890_22->currentSlice, tmp134
	movq	%rax, -40(%rbp)	# tmp134, currSlice
	.loc 1 3333 0
	movq	input(%rip), %rax	# input, input.891
	movl	2364(%rax), %eax	# input.891_24->partition_mode, D.12427
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp136
	movq	%rax, -32(%rbp)	# tmp136, partMap
	.loc 1 3334 0
	movq	-48(%rbp), %rax	# currMB, tmp140
	addq	$20, %rax	#, tmp139
	movq	%rax, -24(%rbp)	# tmp139, bitCount
	.loc 1 3339 0
	movq	img(%rip), %rax	# img, img.892
	movq	14136(%rax), %rax	# img.892_28->cofAC, D.12429
	movl	-84(%rbp), %edx	# b8, tmp141
	movslq	%edx, %rdx	# tmp141, D.12428
	salq	$3, %rdx	#, D.12428
	addq	%rdx, %rax	# D.12428, D.12429
	movq	(%rax), %rax	# *_33, D.12430
	movq	(%rax), %rax	# *_34, D.12431
	movq	(%rax), %rax	# *_35, tmp142
	movq	%rax, -16(%rbp)	# tmp142, ACLevel
	.loc 1 3340 0
	movq	img(%rip), %rax	# img, img.893
	movq	14136(%rax), %rax	# img.893_37->cofAC, D.12429
	movl	-84(%rbp), %edx	# b8, tmp143
	movslq	%edx, %rdx	# tmp143, D.12428
	salq	$3, %rdx	#, D.12428
	addq	%rdx, %rax	# D.12428, D.12429
	movq	(%rax), %rax	# *_41, D.12430
	movq	(%rax), %rax	# *_42, D.12431
	movq	8(%rax), %rax	# MEM[(int * *)_43 + 8B], tmp144
	movq	%rax, -8(%rbp)	# tmp144, ACRun
	.loc 1 3342 0
	movq	img(%rip), %rdx	# img, img.894
	movl	-84(%rbp), %eax	# b8, tmp145
	andl	$1, %eax	#, D.12427
	testl	%eax, %eax	# D.12427
	jne	.L859	#,
	.loc 1 3342 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.895
	jmp	.L860	#
.L859:
	.loc 1 3342 0 discriminator 2
	movl	$2, %eax	#, iftmp.895
.L860:
	.loc 1 3342 0 discriminator 3
	movl	%eax, 72(%rdx)	# iftmp.895, img.894_45->subblock_x
	.loc 1 3343 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rdx	# img, img.896
	cmpl	$1, -84(%rbp)	#, b8
	jg	.L861	#,
	.loc 1 3343 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.897
	jmp	.L862	#
.L861:
	.loc 1 3343 0 discriminator 2
	movl	$2, %eax	#, iftmp.897
.L862:
	.loc 1 3343 0 discriminator 3
	movl	%eax, 76(%rdx)	# iftmp.897, img.896_49->subblock_y
	.loc 1 3346 0 is_stmt 1 discriminator 3
	movl	$1, -76(%rbp)	#, level
	.loc 1 3347 0 discriminator 3
	movl	$0, -72(%rbp)	#, k
	jmp	.L863	#
.L873:
	.loc 1 3349 0
	movl	-72(%rbp), %eax	# k, tmp146
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12428
	movq	-16(%rbp), %rax	# ACLevel, tmp147
	addq	%rdx, %rax	# D.12428, D.12432
	movl	(%rax), %edx	# *_56, D.12427
	movq	-64(%rbp), %rax	# currSE, tmp148
	movl	%edx, 4(%rax)	# D.12427, currSE_2->value1
	movq	-64(%rbp), %rax	# currSE, tmp149
	movl	4(%rax), %eax	# currSE_2->value1, tmp150
	movl	%eax, -76(%rbp)	# tmp150, level
	.loc 1 3350 0
	movl	-72(%rbp), %eax	# k, tmp151
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12428
	movq	-8(%rbp), %rax	# ACRun, tmp152
	addq	%rdx, %rax	# D.12428, D.12432
	movl	(%rax), %edx	# *_61, D.12427
	movq	-64(%rbp), %rax	# currSE, tmp153
	movl	%edx, 8(%rax)	# D.12427, currSE_2->value2
	movq	-64(%rbp), %rax	# currSE, tmp154
	movl	8(%rax), %eax	# currSE_2->value2, tmp155
	movl	%eax, -68(%rbp)	# tmp155, run
	.loc 1 3352 0
	movq	-64(%rbp), %rax	# currSE, tmp156
	movq	$writeRunLevel_CABAC, 40(%rax)	#, currSE_2->writing
	.loc 1 3354 0
	movq	-64(%rbp), %rax	# currSE, tmp157
	movl	$2, 24(%rax)	#, currSE_2->context
	.loc 1 3355 0
	cmpl	$0, -72(%rbp)	#, k
	jne	.L864	#,
	.loc 1 3355 0 is_stmt 0 discriminator 1
	cmpl	$0, -88(%rbp)	#, intra_mode
	je	.L865	#,
	movl	$7, %eax	#, iftmp.899
	jmp	.L867	#
.L865:
	.loc 1 3355 0 discriminator 2
	movl	$12, %eax	#, iftmp.899
	jmp	.L867	#
.L864:
	cmpl	$0, -88(%rbp)	#, intra_mode
	je	.L868	#,
	.loc 1 3355 0 discriminator 1
	movl	$9, %eax	#, iftmp.900
	jmp	.L867	#
.L868:
	.loc 1 3355 0 discriminator 2
	movl	$14, %eax	#, iftmp.900
.L867:
	.loc 1 3355 0 discriminator 3
	movq	-64(%rbp), %rdx	# currSE, tmp158
	movl	%eax, (%rdx)	# iftmp.898, currSE_2->type
	.loc 1 3356 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.901
	movl	-88(%rbp), %edx	# intra_mode, tmp159
	movl	%edx, 80(%rax)	# tmp159, img.901_71->is_intra_block
	.loc 1 3360 0 discriminator 3
	movq	img(%rip), %rax	# img, img.902
	movl	24(%rax), %eax	# img.902_72->type, D.12427
	cmpl	$1, %eax	#, D.12427
	je	.L870	#,
	.loc 1 3360 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# currSlice, tmp160
	movq	24(%rax), %rdx	# currSlice_23->partArr, D.12433
	movq	-64(%rbp), %rax	# currSE, tmp161
	movl	(%rax), %eax	# currSE_2->type, D.12427
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12428
	movq	-32(%rbp), %rax	# partMap, tmp162
	addq	%rcx, %rax	# D.12428, D.12434
	movl	(%rax), %eax	# *_78, D.12427
	cltq
	salq	$3, %rax	#, tmp164
	movq	%rax, %rcx	# tmp163, tmp165
	salq	$4, %rcx	#, tmp165
	subq	%rax, %rcx	# tmp163, D.12428
	movq	%rcx, %rax	# D.12428, D.12428
	addq	%rdx, %rax	# D.12433, tmp166
	movq	%rax, -56(%rbp)	# tmp166, dataPart
	jmp	.L871	#
.L870:
	.loc 1 3361 0 is_stmt 1
	movq	-40(%rbp), %rax	# currSlice, tmp167
	movq	24(%rax), %rdx	# currSlice_23->partArr, D.12433
	movq	-32(%rbp), %rax	# partMap, tmp168
	addq	$72, %rax	#, D.12434
	movl	(%rax), %eax	# *_84, D.12427
	cltq
	salq	$3, %rax	#, tmp170
	movq	%rax, %rcx	# tmp169, tmp171
	salq	$4, %rcx	#, tmp171
	subq	%rax, %rcx	# tmp169, D.12428
	movq	%rcx, %rax	# D.12428, D.12428
	addq	%rdx, %rax	# D.12433, tmp172
	movq	%rax, -56(%rbp)	# tmp172, dataPart
.L871:
	.loc 1 3363 0
	movq	-56(%rbp), %rax	# dataPart, tmp173
	movq	112(%rax), %rax	# dataPart_3->writeSyntaxElement, D.12435
	movq	-56(%rbp), %rcx	# dataPart, tmp174
	movq	-64(%rbp), %rdx	# currSE, tmp175
	movq	%rcx, %rsi	# tmp174,
	movq	%rdx, %rdi	# tmp175,
	call	*%rax	# D.12435
	.loc 1 3364 0
	movq	-24(%rbp), %rax	# bitCount, tmp176
	leaq	20(%rax), %rdx	#, D.12432
	movq	-24(%rbp), %rax	# bitCount, tmp177
	addq	$20, %rax	#, D.12432
	movl	(%rax), %ecx	# *_91, D.12427
	movq	-64(%rbp), %rax	# currSE, tmp178
	movl	12(%rax), %eax	# currSE_2->len, D.12427
	addl	%ecx, %eax	# D.12427, D.12427
	movl	%eax, (%rdx)	# D.12427, *_90
	.loc 1 3365 0
	movq	-64(%rbp), %rax	# currSE, tmp179
	movl	12(%rax), %eax	# currSE_2->len, D.12427
	addl	%eax, -80(%rbp)	# D.12427, rate
	.loc 1 3370 0
	addq	$48, -64(%rbp)	#, currSE
	.loc 1 3371 0
	movq	-48(%rbp), %rax	# currMB, tmp180
	movl	(%rax), %eax	# currMB_18->currSEnr, D.12427
	leal	1(%rax), %edx	#, D.12427
	movq	-48(%rbp), %rax	# currMB, tmp181
	movl	%edx, (%rax)	# D.12427, currMB_18->currSEnr
	.loc 1 3347 0
	addl	$1, -72(%rbp)	#, k
.L863:
	.loc 1 3347 0 is_stmt 0 discriminator 1
	cmpl	$64, -72(%rbp)	#, k
	jg	.L872	#,
	.loc 1 3347 0 discriminator 2
	cmpl	$0, -76(%rbp)	#, level
	jne	.L873	#,
.L872:
	.loc 1 3375 0 is_stmt 1
	movl	-80(%rbp), %eax	# rate, D.12427
	.loc 1 3376 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	writeLumaCoeff8x8_CABAC, .-writeLumaCoeff8x8_CABAC
	.globl	writeLumaCoeff8x8
	.type	writeLumaCoeff8x8, @function
writeLumaCoeff8x8:
.LFB38:
	.loc 1 3385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# block8x8, block8x8
	movl	%esi, -24(%rbp)	# block_mode, block_mode
	movl	%edx, -28(%rbp)	# transform_size_flag, transform_size_flag
	.loc 1 3386 0
	movl	$0, -8(%rbp)	#, rate
	.loc 1 3387 0
	cmpl	$11, -24(%rbp)	#, block_mode
	sete	%al	#, D.12436
	movzbl	%al, %eax	# D.12436, tmp72
	movl	%eax, -4(%rbp)	# tmp72, intra4x4mode
	.loc 1 3394 0
	cmpl	$0, -28(%rbp)	#, transform_size_flag
	je	.L876	#,
	.loc 1 3394 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.903
	movl	2356(%rax), %eax	# input.903_11->symbol_mode, D.12437
	testl	%eax, %eax	# D.12437
	jne	.L877	#,
.L876:
	.loc 1 3396 0 is_stmt 1
	movl	$0, -12(%rbp)	#, block4x4
	jmp	.L878	#
.L883:
	.loc 1 3398 0
	movq	input(%rip), %rax	# input, input.904
	movl	2356(%rax), %eax	# input.904_19->symbol_mode, D.12437
	testl	%eax, %eax	# D.12437
	jne	.L879	#,
	.loc 1 3400 0
	cmpl	$0, -28(%rbp)	#, transform_size_flag
	je	.L880	#,
	.loc 1 3400 0 is_stmt 0 discriminator 1
	cmpl	$13, -24(%rbp)	#, block_mode
	sete	%al	#, D.12436
	movzbl	%al, %eax	# D.12436, iftmp.905
	jmp	.L881	#
.L880:
	.loc 1 3400 0 discriminator 2
	movl	-4(%rbp), %eax	# intra4x4mode, iftmp.905
.L881:
	.loc 1 3400 0 discriminator 1
	movl	-12(%rbp), %edx	# block4x4, tmp73
	movl	-20(%rbp), %esi	# block8x8, tmp74
	movl	%eax, %ecx	# iftmp.905,
	movl	$0, %edi	#,
	call	writeCoeff4x4_CAVLC	#
	addl	%eax, -8(%rbp)	# D.12437, rate
	jmp	.L882	#
.L879:
	.loc 1 3402 0 is_stmt 1
	movl	-4(%rbp), %edx	# intra4x4mode, tmp75
	movl	-12(%rbp), %ecx	# block4x4, tmp76
	movl	-20(%rbp), %eax	# block8x8, tmp77
	movl	%ecx, %esi	# tmp76,
	movl	%eax, %edi	# tmp77,
	call	writeLumaCoeff4x4_CABAC	#
	addl	%eax, -8(%rbp)	# D.12437, rate
.L882:
	.loc 1 3396 0
	addl	$1, -12(%rbp)	#, block4x4
.L878:
	.loc 1 3396 0 is_stmt 0 discriminator 1
	cmpl	$3, -12(%rbp)	#, block4x4
	jle	.L883	#,
	.loc 1 3394 0 is_stmt 1
	jmp	.L884	#
.L877:
	.loc 1 3407 0
	cmpl	$13, -24(%rbp)	#, block_mode
	jne	.L885	#,
	.loc 1 3409 0
	movl	-20(%rbp), %eax	# block8x8, tmp78
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp78,
	call	writeLumaCoeff8x8_CABAC	#
	addl	%eax, -8(%rbp)	# D.12437, rate
	jmp	.L884	#
.L885:
	.loc 1 3413 0
	movl	-20(%rbp), %eax	# block8x8, tmp79
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp79,
	call	writeLumaCoeff8x8_CABAC	#
	addl	%eax, -8(%rbp)	# D.12437, rate
.L884:
	.loc 1 3416 0
	movl	-8(%rbp), %eax	# rate, D.12437
	.loc 1 3417 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	writeLumaCoeff8x8, .-writeLumaCoeff8x8
	.globl	writeCBPandLumaCoeff
	.type	writeCBPandLumaCoeff, @function
writeCBPandLumaCoeff:
.LFB39:
	.loc 1 3426 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	.loc 1 3429 0
	movl	$0, -104(%rbp)	#, rate
	.loc 1 3430 0
	movq	img(%rip), %rax	# img, img.906
	movq	14168(%rax), %rdx	# img.906_37->mb_data, D.12438
	movq	img(%rip), %rax	# img, img.907
	movl	12(%rax), %eax	# img.907_39->current_mb_nr, D.12439
	cltq
	imulq	$632, %rax, %rax	#, D.12440, D.12440
	addq	%rdx, %rax	# D.12438, tmp280
	movq	%rax, -72(%rbp)	# tmp280, currMB
	.loc 1 3431 0
	movq	-72(%rbp), %rax	# currMB, tmp284
	addq	$20, %rax	#, tmp283
	movq	%rax, -64(%rbp)	# tmp283, bitCount
	.loc 1 3432 0
	movq	img(%rip), %rcx	# img, img.908
	movq	-72(%rbp), %rax	# currMB, tmp285
	movl	(%rax), %eax	# currMB_43->currSEnr, D.12439
	movslq	%eax, %rdx	# D.12439, tmp286
	movq	%rdx, %rax	# tmp286, tmp287
	addq	%rax, %rax	# tmp287
	addq	%rdx, %rax	# tmp286, tmp287
	salq	$4, %rax	#, tmp288
	addq	$14176, %rax	#, tmp289
	addq	%rcx, %rax	# img.908, tmp290
	movq	%rax, -80(%rbp)	# tmp290, currSE
	.loc 1 3433 0
	movq	img(%rip), %rax	# img, img.909
	movq	14160(%rax), %rax	# img.909_48->currentSlice, tmp291
	movq	%rax, -56(%rbp)	# tmp291, currSlice
	.loc 1 3434 0
	movq	input(%rip), %rax	# input, input.910
	movl	2364(%rax), %eax	# input.910_50->partition_mode, D.12439
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp293
	movq	%rax, -48(%rbp)	# tmp293, partMap
	.loc 1 3435 0
	movq	-72(%rbp), %rax	# currMB, tmp294
	movl	460(%rax), %eax	# currMB_43->cbp, tmp295
	movl	%eax, -100(%rbp)	# tmp295, cbp
	.loc 1 3440 0
	movq	img(%rip), %rax	# img, img.911
	movq	14144(%rax), %rax	# img.911_54->cofDC, D.12441
	movq	(%rax), %rax	# *_55, D.12442
	movq	(%rax), %rax	# *_56, tmp296
	movq	%rax, -40(%rbp)	# tmp296, DCLevel
	.loc 1 3441 0
	movq	img(%rip), %rax	# img, img.912
	movq	14144(%rax), %rax	# img.912_58->cofDC, D.12441
	movq	(%rax), %rax	# *_59, D.12442
	movq	8(%rax), %rax	# MEM[(int * *)_60 + 8B], tmp297
	movq	%rax, -32(%rbp)	# tmp297, DCRun
	.loc 1 3445 0
	movq	-72(%rbp), %rax	# currMB, tmp298
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$10, %eax	#, D.12439
	je	.L888	#,
	.loc 1 3449 0
	movq	-80(%rbp), %rax	# currSE, tmp299
	movl	-100(%rbp), %edx	# cbp, tmp300
	movl	%edx, 4(%rax)	# tmp300, currSE_47->value1
	.loc 1 3451 0
	movq	-72(%rbp), %rax	# currMB, tmp301
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$9, %eax	#, D.12439
	je	.L889	#,
	.loc 1 3451 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# currMB, tmp302
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$12, %eax	#, D.12439
	je	.L889	#,
	movq	-72(%rbp), %rax	# currMB, tmp303
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$13, %eax	#, D.12439
	jne	.L890	#,
.L889:
	.loc 1 3453 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.913
	movl	2356(%rax), %eax	# input.913_68->symbol_mode, D.12439
	testl	%eax, %eax	# D.12439
	jne	.L891	#,
	.loc 1 3453 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# currSE, tmp304
	movq	$cbp_linfo_intra, 32(%rax)	#, currSE_47->mapping
.L891:
	.loc 1 3454 0 is_stmt 1
	movq	-80(%rbp), %rax	# currSE, tmp305
	movl	$6, (%rax)	#, currSE_47->type
	jmp	.L892	#
.L890:
	.loc 1 3458 0
	movq	input(%rip), %rax	# input, input.914
	movl	2356(%rax), %eax	# input.914_66->symbol_mode, D.12439
	testl	%eax, %eax	# D.12439
	jne	.L893	#,
	.loc 1 3458 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# currSE, tmp306
	movq	$cbp_linfo_inter, 32(%rax)	#, currSE_47->mapping
.L893:
	.loc 1 3459 0 is_stmt 1
	movq	-80(%rbp), %rax	# currSE, tmp307
	movl	$11, (%rax)	#, currSE_47->type
.L892:
	.loc 1 3461 0
	movq	input(%rip), %rax	# input, input.915
	movl	2356(%rax), %eax	# input.915_70->symbol_mode, D.12439
	cmpl	$1, %eax	#, D.12439
	jne	.L894	#,
	.loc 1 3461 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# currSE, tmp308
	movq	$writeCBP_CABAC, 40(%rax)	#, currSE_47->writing
.L894:
	.loc 1 3464 0 is_stmt 1
	movq	-56(%rbp), %rax	# currSlice, tmp309
	movq	24(%rax), %rdx	# currSlice_49->partArr, D.12443
	movq	-80(%rbp), %rax	# currSE, tmp310
	movl	(%rax), %eax	# currSE_47->type, D.12439
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12440
	movq	-48(%rbp), %rax	# partMap, tmp311
	addq	%rcx, %rax	# D.12440, D.12444
	movl	(%rax), %eax	# *_76, D.12439
	cltq
	salq	$3, %rax	#, tmp313
	movq	%rax, %rcx	# tmp312, tmp314
	salq	$4, %rcx	#, tmp314
	subq	%rax, %rcx	# tmp312, D.12440
	movq	%rcx, %rax	# D.12440, D.12440
	addq	%rdx, %rax	# D.12443, tmp315
	movq	%rax, -24(%rbp)	# tmp315, dataPart
	.loc 1 3466 0
	movq	-24(%rbp), %rax	# dataPart, tmp316
	movq	112(%rax), %rax	# dataPart_80->writeSyntaxElement, D.12445
	movq	-24(%rbp), %rcx	# dataPart, tmp317
	movq	-80(%rbp), %rdx	# currSE, tmp318
	movq	%rcx, %rsi	# tmp317,
	movq	%rdx, %rdi	# tmp318,
	call	*%rax	# D.12445
	.loc 1 3467 0
	movq	-64(%rbp), %rax	# bitCount, tmp319
	leaq	16(%rax), %rdx	#, D.12446
	movq	-64(%rbp), %rax	# bitCount, tmp320
	addq	$16, %rax	#, D.12446
	movl	(%rax), %ecx	# *_83, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp321
	movl	12(%rax), %eax	# currSE_47->len, D.12439
	addl	%ecx, %eax	# D.12439, D.12439
	movl	%eax, (%rdx)	# D.12439, *_82
	.loc 1 3468 0
	movq	-80(%rbp), %rax	# currSE, tmp322
	movl	12(%rax), %eax	# currSE_47->len, D.12439
	addl	%eax, -104(%rbp)	# D.12439, rate
	.loc 1 3473 0
	addq	$48, -80(%rbp)	#, currSE
	.loc 1 3474 0
	movq	-72(%rbp), %rax	# currMB, tmp323
	movl	(%rax), %eax	# currMB_43->currSEnr, D.12439
	leal	1(%rax), %edx	#, D.12439
	movq	-72(%rbp), %rax	# currMB, tmp324
	movl	%edx, (%rax)	# D.12439, currMB_43->currSEnr
	.loc 1 3479 0
	movq	-72(%rbp), %rax	# currMB, tmp325
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	.loc 1 3484 0
	testl	%eax, %eax	# D.12439
	jle	.L895	#,
	.loc 1 3479 0
	movq	-72(%rbp), %rax	# currMB, tmp326
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$3, %eax	#, D.12439
	jle	.L896	#,
.L895:
	.loc 1 3480 0 discriminator 1
	movq	-72(%rbp), %rax	# currMB, tmp327
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	.loc 1 3479 0 discriminator 1
	testl	%eax, %eax	# D.12439
	jne	.L897	#,
	.loc 1 3480 0
	movq	img(%rip), %rax	# img, img.917
	movl	24(%rax), %eax	# img.917_95->type, D.12439
	cmpl	$1, %eax	#, D.12439
	jne	.L897	#,
	.loc 1 3480 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.918
	movl	1156(%rax), %eax	# active_sps.918_97->direct_8x8_inference_flag, D.12447
	testl	%eax, %eax	# D.12447
	jne	.L896	#,
.L897:
	.loc 1 3481 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# currMB, tmp328
	movl	576(%rax), %eax	# currMB_43->NoMbPartLessThan8x8Flag, D.12439
	.loc 1 3480 0 discriminator 2
	testl	%eax, %eax	# D.12439
	je	.L898	#,
.L896:
	.loc 1 3482 0
	movq	-72(%rbp), %rax	# currMB, tmp329
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$13, %eax	#, D.12439
	je	.L898	#,
	.loc 1 3482 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# currMB, tmp330
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$9, %eax	#, D.12439
	je	.L898	#,
	.loc 1 3483 0 is_stmt 1
	movq	-72(%rbp), %rax	# currMB, tmp331
	movl	460(%rax), %eax	# currMB_43->cbp, D.12439
	andl	$15, %eax	#, D.12439
	testl	%eax, %eax	# D.12439
	je	.L898	#,
	.loc 1 3484 0
	movq	input(%rip), %rax	# input, input.919
	movl	3220(%rax), %eax	# input.919_104->AllowTransform8x8, D.12439
	testl	%eax, %eax	# D.12439
	je	.L898	#,
	.loc 1 3484 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.916
	jmp	.L899	#
.L898:
	.loc 1 3484 0 discriminator 2
	movl	$0, %eax	#, iftmp.916
.L899:
	.loc 1 3479 0 is_stmt 1
	movl	%eax, -96(%rbp)	# iftmp.916, need_transform_size_flag
	.loc 1 3486 0
	cmpl	$0, -96(%rbp)	#, need_transform_size_flag
	je	.L888	#,
	.loc 1 3488 0
	movq	-72(%rbp), %rax	# currMB, tmp332
	movl	572(%rax), %edx	# currMB_43->luma_transform_size_8x8_flag, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp333
	movl	%edx, 4(%rax)	# D.12439, currSE_89->value1
	.loc 1 3489 0
	movq	-80(%rbp), %rax	# currSE, tmp334
	movl	$20, (%rax)	#, currSE_89->type
	.loc 1 3491 0
	movq	input(%rip), %rax	# input, input.920
	movl	2356(%rax), %eax	# input.920_110->symbol_mode, D.12439
	testl	%eax, %eax	# D.12439
	jne	.L900	#,
	.loc 1 3491 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# currSE, tmp335
	movq	$ue_linfo, 32(%rax)	#, currSE_89->mapping
	jmp	.L901	#
.L900:
	.loc 1 3492 0 is_stmt 1
	movq	-80(%rbp), %rax	# currSE, tmp336
	movq	$writeMB_transform_size_CABAC, 40(%rax)	#, currSE_89->writing
.L901:
	.loc 1 3494 0
	movq	input(%rip), %rax	# input, input.921
	movl	2356(%rax), %eax	# input.921_112->symbol_mode, D.12439
	testl	%eax, %eax	# D.12439
	jne	.L902	#,
	.loc 1 3496 0
	movq	-72(%rbp), %rax	# currMB, tmp337
	movl	572(%rax), %eax	# currMB_43->luma_transform_size_8x8_flag, D.12439
	movl	%eax, %edx	# D.12439, D.12448
	movq	-80(%rbp), %rax	# currSE, tmp338
	movl	%edx, 20(%rax)	# D.12448, currSE_89->bitpattern
	.loc 1 3497 0
	movq	-80(%rbp), %rax	# currSE, tmp339
	movl	$1, 12(%rax)	#, currSE_89->len
	.loc 1 3498 0
	movq	-24(%rbp), %rax	# dataPart, tmp340
	movq	(%rax), %rdx	# dataPart_80->bitstream, D.12449
	movq	-80(%rbp), %rax	# currSE, tmp341
	movq	%rdx, %rsi	# D.12449,
	movq	%rax, %rdi	# tmp341,
	call	writeSyntaxElement2Buf_Fixed	#
	jmp	.L903	#
.L902:
	.loc 1 3502 0
	movq	-24(%rbp), %rax	# dataPart, tmp342
	movq	112(%rax), %rax	# dataPart_80->writeSyntaxElement, D.12445
	movq	-24(%rbp), %rcx	# dataPart, tmp343
	movq	-80(%rbp), %rdx	# currSE, tmp344
	movq	%rcx, %rsi	# tmp343,
	movq	%rdx, %rdi	# tmp344,
	call	*%rax	# D.12445
.L903:
	.loc 1 3508 0
	movq	-64(%rbp), %rax	# bitCount, tmp345
	leaq	8(%rax), %rdx	#, D.12446
	movq	-64(%rbp), %rax	# bitCount, tmp346
	addq	$8, %rax	#, D.12446
	movl	(%rax), %ecx	# *_119, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp347
	movl	12(%rax), %eax	# currSE_89->len, D.12439
	addl	%ecx, %eax	# D.12439, D.12439
	movl	%eax, (%rdx)	# D.12439, *_118
	.loc 1 3509 0
	movq	-80(%rbp), %rax	# currSE, tmp348
	movl	12(%rax), %eax	# currSE_89->len, D.12439
	addl	%eax, -104(%rbp)	# D.12439, rate
	.loc 1 3510 0
	addq	$48, -80(%rbp)	#, currSE
	.loc 1 3511 0
	movq	-72(%rbp), %rax	# currMB, tmp349
	movl	(%rax), %eax	# currMB_43->currSEnr, D.12439
	leal	1(%rax), %edx	#, D.12439
	movq	-72(%rbp), %rax	# currMB, tmp350
	movl	%edx, (%rax)	# D.12439, currMB_43->currSEnr
.L888:
	.loc 1 3517 0
	cmpl	$0, -100(%rbp)	#, cbp
	jne	.L904	#,
	.loc 1 3517 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# currMB, tmp351
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$10, %eax	#, D.12439
	jne	.L905	#,
.L904:
	.loc 1 3519 0 is_stmt 1
	movq	-72(%rbp), %rax	# currMB, tmp352
	movl	8(%rax), %edx	# currMB_43->delta_qp, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp353
	movl	%edx, 4(%rax)	# D.12439, currSE_25->value1
	.loc 1 3521 0
	movq	input(%rip), %rax	# input, input.922
	movl	2356(%rax), %eax	# input.922_130->symbol_mode, D.12439
	testl	%eax, %eax	# D.12439
	jne	.L906	#,
	.loc 1 3521 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# currSE, tmp354
	movq	$se_linfo, 32(%rax)	#, currSE_25->mapping
	jmp	.L907	#
.L906:
	.loc 1 3522 0 is_stmt 1
	movq	-80(%rbp), %rax	# currSE, tmp355
	movq	$writeDquant_CABAC, 40(%rax)	#, currSE_25->writing
.L907:
	.loc 1 3524 0
	movq	-72(%rbp), %rax	# currMB, tmp356
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$9, %eax	#, D.12439
	je	.L908	#,
	.loc 1 3524 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# currMB, tmp357
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$10, %eax	#, D.12439
	je	.L908	#,
	movq	-72(%rbp), %rax	# currMB, tmp358
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$13, %eax	#, D.12439
	je	.L908	#,
	movq	-80(%rbp), %rax	# currSE, tmp359
	movl	$16, (%rax)	#, currSE_25->type
	jmp	.L909	#
.L908:
	.loc 1 3525 0 is_stmt 1
	movq	-80(%rbp), %rax	# currSE, tmp360
	movl	$17, (%rax)	#, currSE_25->type
.L909:
	.loc 1 3529 0
	movq	img(%rip), %rax	# img, img.923
	movq	14160(%rax), %rax	# img.923_135->currentSlice, D.12450
	movq	24(%rax), %rdx	# _136->partArr, D.12443
	movq	-80(%rbp), %rax	# currSE, tmp361
	movl	(%rax), %eax	# currSE_25->type, D.12439
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12440
	movq	-48(%rbp), %rax	# partMap, tmp362
	addq	%rcx, %rax	# D.12440, D.12444
	movl	(%rax), %eax	# *_141, D.12439
	cltq
	salq	$3, %rax	#, tmp364
	movq	%rax, %rcx	# tmp363, tmp365
	salq	$4, %rcx	#, tmp365
	subq	%rax, %rcx	# tmp363, D.12440
	movq	%rcx, %rax	# D.12440, D.12440
	addq	%rdx, %rax	# D.12443, tmp366
	movq	%rax, -24(%rbp)	# tmp366, dataPart
	.loc 1 3530 0
	movq	-24(%rbp), %rax	# dataPart, tmp367
	movq	112(%rax), %rax	# dataPart_145->writeSyntaxElement, D.12445
	movq	-24(%rbp), %rcx	# dataPart, tmp368
	movq	-80(%rbp), %rdx	# currSE, tmp369
	movq	%rcx, %rsi	# tmp368,
	movq	%rdx, %rdi	# tmp369,
	call	*%rax	# D.12445
	.loc 1 3531 0
	movq	-64(%rbp), %rax	# bitCount, tmp370
	leaq	28(%rax), %rdx	#, D.12446
	movq	-64(%rbp), %rax	# bitCount, tmp371
	addq	$28, %rax	#, D.12446
	movl	(%rax), %ecx	# *_148, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp372
	movl	12(%rax), %eax	# currSE_25->len, D.12439
	addl	%ecx, %eax	# D.12439, D.12439
	movl	%eax, (%rdx)	# D.12439, *_147
	.loc 1 3532 0
	movq	-80(%rbp), %rax	# currSE, tmp373
	movl	12(%rax), %eax	# currSE_25->len, D.12439
	addl	%eax, -104(%rbp)	# D.12439, rate
	.loc 1 3537 0
	addq	$48, -80(%rbp)	#, currSE
	.loc 1 3538 0
	movq	-72(%rbp), %rax	# currMB, tmp374
	movl	(%rax), %eax	# currMB_43->currSEnr, D.12439
	leal	1(%rax), %edx	#, D.12439
	movq	-72(%rbp), %rax	# currMB, tmp375
	movl	%edx, (%rax)	# D.12439, currMB_43->currSEnr
.L905:
	.loc 1 3541 0
	movl	$0, -116(%rbp)	#, j
	jmp	.L910	#
.L913:
	.loc 1 3542 0
	movl	$0, -120(%rbp)	#, i
	jmp	.L911	#
.L912:
	.loc 1 3543 0 discriminator 2
	movq	img(%rip), %rax	# img, img.924
	movq	128(%rax), %rdx	# img.924_162->nz_coeff, D.12441
	movq	img(%rip), %rax	# img, img.925
	movl	12(%rax), %eax	# img.925_164->current_mb_nr, D.12439
	cltq
	salq	$3, %rax	#, D.12440
	addq	%rdx, %rax	# D.12441, D.12441
	movq	(%rax), %rax	# *_168, D.12442
	movl	-120(%rbp), %edx	# i, tmp376
	movslq	%edx, %rdx	# tmp376, D.12440
	salq	$3, %rdx	#, D.12440
	addq	%rdx, %rax	# D.12440, D.12442
	movq	(%rax), %rax	# *_172, D.12446
	movl	-116(%rbp), %edx	# j, tmp377
	movslq	%edx, %rdx	# tmp377, D.12440
	salq	$2, %rdx	#, D.12440
	addq	%rdx, %rax	# D.12440, D.12446
	movl	$0, (%rax)	#, *_176
	.loc 1 3542 0 discriminator 2
	addl	$1, -120(%rbp)	#, i
.L911:
	.loc 1 3542 0 is_stmt 0 discriminator 1
	cmpl	$3, -120(%rbp)	#, i
	jle	.L912	#,
	.loc 1 3541 0 is_stmt 1
	addl	$1, -116(%rbp)	#, j
.L910:
	.loc 1 3541 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.926
	movl	72692(%rax), %eax	# img.926_158->num_blk8x8_uv, D.12439
	addl	$4, %eax	#, D.12439
	cmpl	-116(%rbp), %eax	# j, D.12439
	jg	.L913	#,
	.loc 1 3545 0 is_stmt 1
	movq	-72(%rbp), %rax	# currMB, tmp378
	movl	72(%rax), %eax	# currMB_43->mb_type, D.12439
	cmpl	$10, %eax	#, D.12439
	je	.L914	#,
	.loc 1 3549 0
	movl	$0, -120(%rbp)	#, i
	jmp	.L915	#
.L917:
	.loc 1 3549 0 is_stmt 0 discriminator 2
	movl	-120(%rbp), %eax	# i, tmp379
	movl	-100(%rbp), %edx	# cbp, tmp380
	movl	%eax, %ecx	# tmp379, tmp490
	sarl	%cl, %edx	# tmp490, D.12439
	movl	%edx, %eax	# D.12439, D.12439
	andl	$1, %eax	#, D.12439
	testl	%eax, %eax	# D.12439
	je	.L916	#,
	.loc 1 3551 0 is_stmt 1
	movq	-72(%rbp), %rax	# currMB, tmp381
	movl	572(%rax), %edx	# currMB_43->luma_transform_size_8x8_flag, D.12439
	movq	-72(%rbp), %rax	# currMB, tmp382
	movl	-120(%rbp), %ecx	# i, tmp384
	movslq	%ecx, %rcx	# tmp384, tmp383
	addq	$116, %rcx	#, tmp385
	movl	8(%rax,%rcx,4), %ecx	# currMB_43->b8mode, D.12439
	movl	-120(%rbp), %eax	# i, tmp386
	movl	%ecx, %esi	# D.12439,
	movl	%eax, %edi	# tmp386,
	call	writeLumaCoeff8x8	#
	addl	%eax, -104(%rbp)	# D.12439, rate
.L916:
	.loc 1 3549 0 discriminator 1
	addl	$1, -120(%rbp)	#, i
.L915:
	cmpl	$3, -120(%rbp)	#, i
	jle	.L917	#,
	jmp	.L918	#
.L914:
	.loc 1 3559 0
	movq	input(%rip), %rax	# input, input.927
	movl	2356(%rax), %eax	# input.927_188->symbol_mode, D.12439
	testl	%eax, %eax	# D.12439
	jne	.L919	#,
	.loc 1 3561 0
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	writeCoeff4x4_CAVLC	#
	addl	%eax, -104(%rbp)	# D.12439, rate
	jmp	.L920	#
.L919:
	.loc 1 3565 0
	movl	$1, -108(%rbp)	#, level
	.loc 1 3566 0
	movl	$0, -112(%rbp)	#, k
	jmp	.L921	#
.L924:
	.loc 1 3568 0
	movl	-112(%rbp), %eax	# k, tmp387
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12440
	movq	-40(%rbp), %rax	# DCLevel, tmp388
	addq	%rdx, %rax	# D.12440, D.12446
	movl	(%rax), %edx	# *_196, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp389
	movl	%edx, 4(%rax)	# D.12439, currSE_27->value1
	movq	-80(%rbp), %rax	# currSE, tmp390
	movl	4(%rax), %eax	# currSE_27->value1, tmp391
	movl	%eax, -108(%rbp)	# tmp391, level
	.loc 1 3569 0
	movl	-112(%rbp), %eax	# k, tmp392
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12440
	movq	-32(%rbp), %rax	# DCRun, tmp393
	addq	%rdx, %rax	# D.12440, D.12446
	movl	(%rax), %edx	# *_201, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp394
	movl	%edx, 8(%rax)	# D.12439, currSE_27->value2
	movq	-80(%rbp), %rax	# currSE, tmp395
	movl	8(%rax), %eax	# currSE_27->value2, tmp396
	movl	%eax, -92(%rbp)	# tmp396, run
	.loc 1 3571 0
	movq	input(%rip), %rax	# input, input.928
	movl	2356(%rax), %eax	# input.928_204->symbol_mode, D.12439
	testl	%eax, %eax	# D.12439
	jne	.L922	#,
	.loc 1 3573 0
	movq	-80(%rbp), %rax	# currSE, tmp397
	movq	$levrun_linfo_inter, 32(%rax)	#, currSE_27->mapping
	jmp	.L923	#
.L922:
	.loc 1 3577 0
	movq	-80(%rbp), %rax	# currSE, tmp398
	movq	$writeRunLevel_CABAC, 40(%rax)	#, currSE_27->writing
.L923:
	.loc 1 3580 0
	movq	-80(%rbp), %rax	# currSE, tmp399
	movl	$0, 24(%rax)	#, currSE_27->context
	.loc 1 3581 0
	movq	-80(%rbp), %rax	# currSE, tmp400
	movl	$7, (%rax)	#, currSE_27->type
	.loc 1 3582 0
	movq	img(%rip), %rax	# img, img.929
	movl	$1, 80(%rax)	#, img.929_206->is_intra_block
	.loc 1 3585 0
	movq	-56(%rbp), %rax	# currSlice, tmp401
	movq	24(%rax), %rdx	# currSlice_49->partArr, D.12443
	movq	-80(%rbp), %rax	# currSE, tmp402
	movl	(%rax), %eax	# currSE_27->type, D.12439
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12440
	movq	-48(%rbp), %rax	# partMap, tmp403
	addq	%rcx, %rax	# D.12440, D.12444
	movl	(%rax), %eax	# *_211, D.12439
	cltq
	salq	$3, %rax	#, tmp405
	movq	%rax, %rcx	# tmp404, tmp406
	salq	$4, %rcx	#, tmp406
	subq	%rax, %rcx	# tmp404, D.12440
	movq	%rcx, %rax	# D.12440, D.12440
	addq	%rdx, %rax	# D.12443, tmp407
	movq	%rax, -24(%rbp)	# tmp407, dataPart
	.loc 1 3587 0
	movq	-24(%rbp), %rax	# dataPart, tmp408
	movq	112(%rax), %rax	# dataPart_215->writeSyntaxElement, D.12445
	movq	-24(%rbp), %rcx	# dataPart, tmp409
	movq	-80(%rbp), %rdx	# currSE, tmp410
	movq	%rcx, %rsi	# tmp409,
	movq	%rdx, %rdi	# tmp410,
	call	*%rax	# D.12445
	.loc 1 3588 0
	movq	-64(%rbp), %rax	# bitCount, tmp411
	leaq	20(%rax), %rdx	#, D.12446
	movq	-64(%rbp), %rax	# bitCount, tmp412
	addq	$20, %rax	#, D.12446
	movl	(%rax), %ecx	# *_218, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp413
	movl	12(%rax), %eax	# currSE_27->len, D.12439
	addl	%ecx, %eax	# D.12439, D.12439
	movl	%eax, (%rdx)	# D.12439, *_217
	.loc 1 3589 0
	movq	-80(%rbp), %rax	# currSE, tmp414
	movl	12(%rax), %eax	# currSE_27->len, D.12439
	addl	%eax, -104(%rbp)	# D.12439, rate
	.loc 1 3594 0
	addq	$48, -80(%rbp)	#, currSE
	.loc 1 3595 0
	movq	-72(%rbp), %rax	# currMB, tmp415
	movl	(%rax), %eax	# currMB_43->currSEnr, D.12439
	leal	1(%rax), %edx	#, D.12439
	movq	-72(%rbp), %rax	# currMB, tmp416
	movl	%edx, (%rax)	# D.12439, currMB_43->currSEnr
	.loc 1 3566 0
	addl	$1, -112(%rbp)	#, k
.L921:
	.loc 1 3566 0 is_stmt 0 discriminator 1
	cmpl	$16, -112(%rbp)	#, k
	jg	.L920	#,
	.loc 1 3566 0 discriminator 2
	cmpl	$0, -108(%rbp)	#, level
	jne	.L924	#,
.L920:
	.loc 1 3600 0 is_stmt 1
	movl	-100(%rbp), %eax	# cbp, tmp417
	andl	$15, %eax	#, D.12439
	testl	%eax, %eax	# D.12439
	je	.L918	#,
	.loc 1 3602 0
	movl	$0, -124(%rbp)	#, mb_y
	jmp	.L925	#
.L938:
	.loc 1 3603 0
	movl	$0, -128(%rbp)	#, mb_x
	jmp	.L926	#
.L937:
	.loc 1 3604 0
	movl	-124(%rbp), %eax	# mb_y, tmp418
	movl	%eax, -116(%rbp)	# tmp418, j
	jmp	.L927	#
.L936:
	.loc 1 3605 0
	movl	-128(%rbp), %eax	# mb_x, tmp419
	movl	%eax, -120(%rbp)	# tmp419, i
	jmp	.L928	#
.L935:
	.loc 1 3607 0
	movl	-116(%rbp), %eax	# j, tmp420
	movl	%eax, %edx	# tmp420, tmp421
	shrl	$31, %edx	#, tmp421
	addl	%edx, %eax	# tmp421, tmp422
	sarl	%eax	# tmp423
	leal	(%rax,%rax), %edx	#, D.12439
	movl	-120(%rbp), %eax	# i, tmp424
	movl	%eax, %ecx	# tmp424, tmp425
	shrl	$31, %ecx	#, tmp425
	addl	%ecx, %eax	# tmp425, tmp426
	sarl	%eax	# tmp427
	addl	%edx, %eax	# D.12439, tmp428
	movl	%eax, -88(%rbp)	# tmp428, b8
	.loc 1 3608 0
	movl	-116(%rbp), %eax	# j, tmp429
	cltd
	shrl	$31, %edx	#, tmp431
	addl	%edx, %eax	# tmp431, tmp432
	andl	$1, %eax	#, tmp433
	subl	%edx, %eax	# tmp431, tmp434
	leal	(%rax,%rax), %ecx	#, D.12439
	movl	-120(%rbp), %eax	# i, tmp435
	cltd
	shrl	$31, %edx	#, tmp437
	addl	%edx, %eax	# tmp437, tmp438
	andl	$1, %eax	#, tmp439
	subl	%edx, %eax	# tmp437, tmp440
	addl	%ecx, %eax	# D.12439, tmp441
	movl	%eax, -84(%rbp)	# tmp441, b4
	.loc 1 3609 0
	movq	input(%rip), %rax	# input, input.930
	movl	2356(%rax), %eax	# input.930_243->symbol_mode, D.12439
	testl	%eax, %eax	# D.12439
	jne	.L929	#,
	.loc 1 3611 0
	movl	-84(%rbp), %edx	# b4, tmp442
	movl	-88(%rbp), %eax	# b8, tmp443
	movl	$0, %ecx	#,
	movl	%eax, %esi	# tmp443,
	movl	$2, %edi	#,
	call	writeCoeff4x4_CAVLC	#
	addl	%eax, -104(%rbp)	# D.12439, rate
	jmp	.L930	#
.L929:
	.loc 1 3615 0
	movq	img(%rip), %rax	# img, img.931
	movq	14136(%rax), %rax	# img.931_247->cofAC, D.12451
	movl	-88(%rbp), %edx	# b8, tmp444
	movslq	%edx, %rdx	# tmp444, D.12440
	salq	$3, %rdx	#, D.12440
	addq	%rdx, %rax	# D.12440, D.12451
	movq	(%rax), %rax	# *_251, D.12441
	movl	-84(%rbp), %edx	# b4, tmp445
	movslq	%edx, %rdx	# tmp445, D.12440
	salq	$3, %rdx	#, D.12440
	addq	%rdx, %rax	# D.12440, D.12441
	movq	(%rax), %rax	# *_255, D.12442
	movq	(%rax), %rax	# *_256, tmp446
	movq	%rax, -16(%rbp)	# tmp446, ACLevel
	.loc 1 3616 0
	movq	img(%rip), %rax	# img, img.932
	movq	14136(%rax), %rax	# img.932_258->cofAC, D.12451
	movl	-88(%rbp), %edx	# b8, tmp447
	movslq	%edx, %rdx	# tmp447, D.12440
	salq	$3, %rdx	#, D.12440
	addq	%rdx, %rax	# D.12440, D.12451
	movq	(%rax), %rax	# *_262, D.12441
	movl	-84(%rbp), %edx	# b4, tmp448
	movslq	%edx, %rdx	# tmp448, D.12440
	salq	$3, %rdx	#, D.12440
	addq	%rdx, %rax	# D.12440, D.12441
	movq	(%rax), %rax	# *_266, D.12442
	movq	8(%rax), %rax	# MEM[(int * *)_267 + 8B], tmp449
	movq	%rax, -8(%rbp)	# tmp449, ACRun
	.loc 1 3618 0
	movq	img(%rip), %rax	# img, img.933
	movl	-116(%rbp), %edx	# j, tmp450
	movl	%edx, 76(%rax)	# tmp450, img.933_269->subblock_y
	.loc 1 3619 0
	movq	img(%rip), %rax	# img, img.934
	movl	-120(%rbp), %edx	# i, tmp451
	movl	%edx, 72(%rax)	# tmp451, img.934_270->subblock_x
	.loc 1 3621 0
	movl	$1, -108(%rbp)	#, level
	.loc 1 3622 0
	movl	$0, -112(%rbp)	#, k
	jmp	.L931	#
.L934:
	.loc 1 3624 0
	movl	-112(%rbp), %eax	# k, tmp452
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12440
	movq	-16(%rbp), %rax	# ACLevel, tmp453
	addq	%rdx, %rax	# D.12440, D.12446
	movl	(%rax), %edx	# *_275, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp454
	movl	%edx, 4(%rax)	# D.12439, currSE_29->value1
	movq	-80(%rbp), %rax	# currSE, tmp455
	movl	4(%rax), %eax	# currSE_29->value1, tmp456
	movl	%eax, -108(%rbp)	# tmp456, level
	.loc 1 3625 0
	movl	-112(%rbp), %eax	# k, tmp457
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12440
	movq	-8(%rbp), %rax	# ACRun, tmp458
	addq	%rdx, %rax	# D.12440, D.12446
	movl	(%rax), %edx	# *_280, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp459
	movl	%edx, 8(%rax)	# D.12439, currSE_29->value2
	movq	-80(%rbp), %rax	# currSE, tmp460
	movl	8(%rax), %eax	# currSE_29->value2, tmp461
	movl	%eax, -92(%rbp)	# tmp461, run
	.loc 1 3627 0
	movq	input(%rip), %rax	# input, input.935
	movl	2356(%rax), %eax	# input.935_283->symbol_mode, D.12439
	testl	%eax, %eax	# D.12439
	jne	.L932	#,
	.loc 1 3629 0
	movq	-80(%rbp), %rax	# currSE, tmp462
	movq	$levrun_linfo_inter, 32(%rax)	#, currSE_29->mapping
	jmp	.L933	#
.L932:
	.loc 1 3633 0
	movq	-80(%rbp), %rax	# currSE, tmp463
	movq	$writeRunLevel_CABAC, 40(%rax)	#, currSE_29->writing
.L933:
	.loc 1 3635 0
	movq	-80(%rbp), %rax	# currSE, tmp464
	movl	$1, 24(%rax)	#, currSE_29->context
	.loc 1 3636 0
	movq	-80(%rbp), %rax	# currSE, tmp465
	movl	$9, (%rax)	#, currSE_29->type
	.loc 1 3637 0
	movq	img(%rip), %rax	# img, img.936
	movl	$1, 80(%rax)	#, img.936_285->is_intra_block
	.loc 1 3640 0
	movq	-56(%rbp), %rax	# currSlice, tmp466
	movq	24(%rax), %rdx	# currSlice_49->partArr, D.12443
	movq	-80(%rbp), %rax	# currSE, tmp467
	movl	(%rax), %eax	# currSE_29->type, D.12439
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12440
	movq	-48(%rbp), %rax	# partMap, tmp468
	addq	%rcx, %rax	# D.12440, D.12444
	movl	(%rax), %eax	# *_290, D.12439
	cltq
	salq	$3, %rax	#, tmp470
	movq	%rax, %rcx	# tmp469, tmp471
	salq	$4, %rcx	#, tmp471
	subq	%rax, %rcx	# tmp469, D.12440
	movq	%rcx, %rax	# D.12440, D.12440
	addq	%rdx, %rax	# D.12443, tmp472
	movq	%rax, -24(%rbp)	# tmp472, dataPart
	.loc 1 3642 0
	movq	-24(%rbp), %rax	# dataPart, tmp473
	movq	112(%rax), %rax	# dataPart_294->writeSyntaxElement, D.12445
	movq	-24(%rbp), %rcx	# dataPart, tmp474
	movq	-80(%rbp), %rdx	# currSE, tmp475
	movq	%rcx, %rsi	# tmp474,
	movq	%rdx, %rdi	# tmp475,
	call	*%rax	# D.12445
	.loc 1 3643 0
	movq	-64(%rbp), %rax	# bitCount, tmp476
	leaq	20(%rax), %rdx	#, D.12446
	movq	-64(%rbp), %rax	# bitCount, tmp477
	addq	$20, %rax	#, D.12446
	movl	(%rax), %ecx	# *_297, D.12439
	movq	-80(%rbp), %rax	# currSE, tmp478
	movl	12(%rax), %eax	# currSE_29->len, D.12439
	addl	%ecx, %eax	# D.12439, D.12439
	movl	%eax, (%rdx)	# D.12439, *_296
	.loc 1 3644 0
	movq	-80(%rbp), %rax	# currSE, tmp479
	movl	12(%rax), %eax	# currSE_29->len, D.12439
	addl	%eax, -104(%rbp)	# D.12439, rate
	.loc 1 3649 0
	addq	$48, -80(%rbp)	#, currSE
	.loc 1 3650 0
	movq	-72(%rbp), %rax	# currMB, tmp480
	movl	(%rax), %eax	# currMB_43->currSEnr, D.12439
	leal	1(%rax), %edx	#, D.12439
	movq	-72(%rbp), %rax	# currMB, tmp481
	movl	%edx, (%rax)	# D.12439, currMB_43->currSEnr
	.loc 1 3622 0
	addl	$1, -112(%rbp)	#, k
.L931:
	.loc 1 3622 0 is_stmt 0 discriminator 1
	cmpl	$15, -112(%rbp)	#, k
	jg	.L930	#,
	.loc 1 3622 0 discriminator 2
	cmpl	$0, -108(%rbp)	#, level
	jne	.L934	#,
.L930:
	.loc 1 3605 0 is_stmt 1
	addl	$1, -120(%rbp)	#, i
.L928:
	.loc 1 3605 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# mb_x, tmp482
	addl	$2, %eax	#, D.12439
	cmpl	-120(%rbp), %eax	# i, D.12439
	jg	.L935	#,
	.loc 1 3604 0 is_stmt 1
	addl	$1, -116(%rbp)	#, j
.L927:
	.loc 1 3604 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# mb_y, tmp483
	addl	$2, %eax	#, D.12439
	cmpl	-116(%rbp), %eax	# j, D.12439
	jg	.L936	#,
	.loc 1 3603 0 is_stmt 1
	addl	$2, -128(%rbp)	#, mb_x
.L926:
	.loc 1 3603 0 is_stmt 0 discriminator 1
	cmpl	$3, -128(%rbp)	#, mb_x
	jle	.L937	#,
	.loc 1 3602 0 is_stmt 1
	addl	$2, -124(%rbp)	#, mb_y
.L925:
	.loc 1 3602 0 is_stmt 0 discriminator 1
	cmpl	$3, -124(%rbp)	#, mb_y
	jle	.L938	#,
.L918:
	.loc 1 3657 0 is_stmt 1
	movl	-104(%rbp), %eax	# rate, D.12439
	.loc 1 3658 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	writeCBPandLumaCoeff, .-writeCBPandLumaCoeff
	.globl	predict_nnz
	.type	predict_nnz, @function
predict_nnz:
.LFB40:
	.loc 1 3670 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# i, i
	movl	%esi, -56(%rbp)	# j, j
	.loc 1 3673 0
	movl	$0, -44(%rbp)	#, pred_nnz
	.loc 1 3674 0
	movl	$0, -40(%rbp)	#, cnt
	.loc 1 3675 0
	movq	img(%rip), %rax	# img, img.937
	movl	12(%rax), %eax	# img.937_8->current_mb_nr, tmp125
	movl	%eax, -36(%rbp)	# tmp125, mb_nr
	.loc 1 3678 0
	leaq	-32(%rbp), %rcx	#, tmp126
	movl	-56(%rbp), %edx	# j, tmp127
	movl	-52(%rbp), %esi	# i, tmp128
	movl	-36(%rbp), %eax	# mb_nr, tmp129
	movq	%rcx, %r9	# tmp126,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	%eax, %edi	# tmp129,
	call	getLuma4x4Neighbour	#
	.loc 1 3680 0
	movl	-32(%rbp), %eax	# pix.available, D.12452
	testl	%eax, %eax	# D.12452
	je	.L941	#,
	.loc 1 3680 0 is_stmt 0 discriminator 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.938
	movl	224(%rax), %eax	# active_pps.938_13->constrained_intra_pred_flag, D.12453
	testl	%eax, %eax	# D.12453
	je	.L941	#,
	movq	input(%rip), %rax	# input, input.939
	movl	2364(%rax), %eax	# input.939_15->partition_mode, D.12452
	testl	%eax, %eax	# D.12452
	je	.L941	#,
	.loc 1 3682 0 is_stmt 1
	movl	-32(%rbp), %edx	# pix.available, D.12452
	movq	img(%rip), %rax	# img, img.940
	movq	71784(%rax), %rax	# img.940_18->intra_block, D.12454
	movl	-28(%rbp), %ecx	# pix.mb_addr, D.12452
	movslq	%ecx, %rcx	# D.12452, D.12455
	salq	$2, %rcx	#, D.12455
	addq	%rcx, %rax	# D.12455, D.12454
	movl	(%rax), %eax	# *_23, D.12452
	andl	%edx, %eax	# D.12452, D.12452
	movl	%eax, -32(%rbp)	# D.12452, pix.available
.L941:
	.loc 1 3685 0
	movl	-32(%rbp), %eax	# pix.available, D.12452
	testl	%eax, %eax	# D.12452
	je	.L942	#,
	.loc 1 3687 0
	movq	img(%rip), %rax	# img, img.941
	movq	128(%rax), %rax	# img.941_27->nz_coeff, D.12456
	movl	-28(%rbp), %edx	# pix.mb_addr, D.12452
	movslq	%edx, %rdx	# D.12452, D.12455
	salq	$3, %rdx	#, D.12455
	addq	%rdx, %rax	# D.12455, D.12456
	movq	(%rax), %rax	# *_32, D.12457
	movl	-24(%rbp), %edx	# pix.x, D.12452
	movslq	%edx, %rdx	# D.12452, D.12455
	salq	$3, %rdx	#, D.12455
	addq	%rdx, %rax	# D.12455, D.12457
	movq	(%rax), %rax	# *_37, D.12454
	movl	-20(%rbp), %edx	# pix.y, D.12452
	movslq	%edx, %rdx	# D.12452, D.12455
	salq	$2, %rdx	#, D.12455
	addq	%rdx, %rax	# D.12455, D.12454
	movl	(%rax), %eax	# *_42, tmp130
	movl	%eax, -44(%rbp)	# tmp130, pred_nnz
	.loc 1 3688 0
	addl	$1, -40(%rbp)	#, cnt
.L942:
	.loc 1 3692 0
	leaq	-32(%rbp), %rcx	#, tmp131
	movl	-56(%rbp), %edx	# j, tmp132
	movl	-52(%rbp), %esi	# i, tmp133
	movl	-36(%rbp), %eax	# mb_nr, tmp134
	movq	%rcx, %r9	# tmp131,
	movl	$-1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp134,
	call	getLuma4x4Neighbour	#
	.loc 1 3694 0
	movl	-32(%rbp), %eax	# pix.available, D.12452
	testl	%eax, %eax	# D.12452
	je	.L943	#,
	.loc 1 3694 0 is_stmt 0 discriminator 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.942
	movl	224(%rax), %eax	# active_pps.942_46->constrained_intra_pred_flag, D.12453
	testl	%eax, %eax	# D.12453
	je	.L943	#,
	movq	input(%rip), %rax	# input, input.943
	movl	2364(%rax), %eax	# input.943_48->partition_mode, D.12452
	testl	%eax, %eax	# D.12452
	je	.L943	#,
	.loc 1 3696 0 is_stmt 1
	movl	-32(%rbp), %edx	# pix.available, D.12452
	movq	img(%rip), %rax	# img, img.944
	movq	71784(%rax), %rax	# img.944_51->intra_block, D.12454
	movl	-28(%rbp), %ecx	# pix.mb_addr, D.12452
	movslq	%ecx, %rcx	# D.12452, D.12455
	salq	$2, %rcx	#, D.12455
	addq	%rcx, %rax	# D.12455, D.12454
	movl	(%rax), %eax	# *_56, D.12452
	andl	%edx, %eax	# D.12452, D.12452
	movl	%eax, -32(%rbp)	# D.12452, pix.available
.L943:
	.loc 1 3699 0
	movl	-32(%rbp), %eax	# pix.available, D.12452
	testl	%eax, %eax	# D.12452
	je	.L944	#,
	.loc 1 3701 0
	movq	img(%rip), %rax	# img, img.945
	movq	128(%rax), %rax	# img.945_60->nz_coeff, D.12456
	movl	-28(%rbp), %edx	# pix.mb_addr, D.12452
	movslq	%edx, %rdx	# D.12452, D.12455
	salq	$3, %rdx	#, D.12455
	addq	%rdx, %rax	# D.12455, D.12456
	movq	(%rax), %rax	# *_65, D.12457
	movl	-24(%rbp), %edx	# pix.x, D.12452
	movslq	%edx, %rdx	# D.12452, D.12455
	salq	$3, %rdx	#, D.12455
	addq	%rdx, %rax	# D.12455, D.12457
	movq	(%rax), %rax	# *_70, D.12454
	movl	-20(%rbp), %edx	# pix.y, D.12452
	movslq	%edx, %rdx	# D.12452, D.12455
	salq	$2, %rdx	#, D.12455
	addq	%rdx, %rax	# D.12455, D.12454
	movl	(%rax), %eax	# *_75, D.12452
	addl	%eax, -44(%rbp)	# D.12452, pred_nnz
	.loc 1 3702 0
	addl	$1, -40(%rbp)	#, cnt
.L944:
	.loc 1 3705 0
	cmpl	$2, -40(%rbp)	#, cnt
	jne	.L945	#,
	.loc 1 3707 0
	addl	$1, -44(%rbp)	#, pred_nnz
	.loc 1 3708 0
	movl	-44(%rbp), %eax	# pred_nnz, tmp138
	cltd
	idivl	-40(%rbp)	# cnt
	movl	%eax, -44(%rbp)	# tmp136, pred_nnz
.L945:
	.loc 1 3711 0
	movl	-44(%rbp), %eax	# pred_nnz, D.12452
	.loc 1 3712 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	predict_nnz, .-predict_nnz
	.globl	predict_nnz_chroma
	.type	predict_nnz_chroma, @function
predict_nnz_chroma:
.LFB41:
	.loc 1 3724 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movl	%edi, -100(%rbp)	# i, i
	movl	%esi, -104(%rbp)	# j, j
	.loc 1 3727 0
	movl	$0, -96(%rbp)	#, pred_nnz
	.loc 1 3728 0
	movl	$0, -92(%rbp)	#, cnt
	.loc 1 3729 0
	movq	img(%rip), %rax	# img, img.946
	movl	12(%rax), %eax	# img.946_12->current_mb_nr, tmp206
	movl	%eax, -88(%rbp)	# tmp206, mb_nr
	.loc 1 3730 0
	movl	$0, -48(%rbp)	#, j_off_tab
	movl	$0, -44(%rbp)	#, j_off_tab
	movl	$0, -40(%rbp)	#, j_off_tab
	movl	$0, -36(%rbp)	#, j_off_tab
	movl	$4, -32(%rbp)	#, j_off_tab
	movl	$4, -28(%rbp)	#, j_off_tab
	movl	$4, -24(%rbp)	#, j_off_tab
	movl	$4, -20(%rbp)	#, j_off_tab
	movl	$8, -16(%rbp)	#, j_off_tab
	movl	$8, -12(%rbp)	#, j_off_tab
	movl	$8, -8(%rbp)	#, j_off_tab
	movl	$8, -4(%rbp)	#, j_off_tab
	.loc 1 3731 0
	movl	-104(%rbp), %eax	# j, tmp208
	cltq
	movl	-48(%rbp,%rax,4), %eax	# j_off_tab, tmp209
	movl	%eax, -84(%rbp)	# tmp209, j_off
	.loc 1 3734 0
	movq	img(%rip), %rax	# img, img.947
	movl	72700(%rax), %eax	# img.947_16->yuv_format, D.12458
	cmpl	$3, %eax	#, D.12458
	je	.L948	#,
	.loc 1 3738 0
	movl	-104(%rbp), %eax	# j, tmp210
	leal	-4(%rax), %edi	#, D.12458
	movl	-100(%rbp), %eax	# i, tmp211
	cltd
	shrl	$31, %edx	#, tmp213
	addl	%edx, %eax	# tmp213, tmp214
	andl	$1, %eax	#, tmp215
	subl	%edx, %eax	# tmp213, tmp216
	movl	%eax, %esi	# tmp216, D.12458
	leaq	-80(%rbp), %rdx	#, tmp217
	movl	-88(%rbp), %eax	# mb_nr, tmp218
	movq	%rdx, %r9	# tmp217,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	%edi, %edx	# D.12458,
	movl	%eax, %edi	# tmp218,
	call	getChroma4x4Neighbour	#
	.loc 1 3740 0
	movl	-80(%rbp), %eax	# pix.available, D.12458
	testl	%eax, %eax	# D.12458
	je	.L949	#,
	.loc 1 3740 0 is_stmt 0 discriminator 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.948
	movl	224(%rax), %eax	# active_pps.948_22->constrained_intra_pred_flag, D.12459
	testl	%eax, %eax	# D.12459
	je	.L949	#,
	movq	input(%rip), %rax	# input, input.949
	movl	2364(%rax), %eax	# input.949_24->partition_mode, D.12458
	testl	%eax, %eax	# D.12458
	je	.L949	#,
	.loc 1 3742 0 is_stmt 1
	movl	-80(%rbp), %edx	# pix.available, D.12458
	movq	img(%rip), %rax	# img, img.950
	movq	71784(%rax), %rax	# img.950_27->intra_block, D.12460
	movl	-76(%rbp), %ecx	# pix.mb_addr, D.12458
	movslq	%ecx, %rcx	# D.12458, D.12461
	salq	$2, %rcx	#, D.12461
	addq	%rcx, %rax	# D.12461, D.12460
	movl	(%rax), %eax	# *_32, D.12458
	andl	%edx, %eax	# D.12458, D.12458
	movl	%eax, -80(%rbp)	# D.12458, pix.available
.L949:
	.loc 1 3745 0
	movl	-80(%rbp), %eax	# pix.available, D.12458
	testl	%eax, %eax	# D.12458
	je	.L950	#,
	.loc 1 3747 0
	movq	img(%rip), %rax	# img, img.951
	movq	128(%rax), %rax	# img.951_36->nz_coeff, D.12462
	movl	-76(%rbp), %edx	# pix.mb_addr, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$3, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12462
	movq	(%rax), %rdx	# *_41, D.12463
	movl	-100(%rbp), %eax	# i, tmp219
	movl	%eax, %ecx	# tmp219, tmp220
	shrl	$31, %ecx	#, tmp220
	addl	%ecx, %eax	# tmp220, tmp221
	sarl	%eax	# tmp222
	leal	(%rax,%rax), %ecx	#, D.12458
	movl	-72(%rbp), %eax	# pix.x, D.12458
	addl	%ecx, %eax	# D.12458, D.12458
	cltq
	salq	$3, %rax	#, D.12461
	addq	%rdx, %rax	# D.12463, D.12463
	movq	(%rax), %rax	# *_49, D.12460
	movl	-68(%rbp), %edx	# pix.y, D.12458
	addl	$4, %edx	#, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$2, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12460
	movl	(%rax), %eax	# *_55, tmp223
	movl	%eax, -96(%rbp)	# tmp223, pred_nnz
	.loc 1 3748 0
	addl	$1, -92(%rbp)	#, cnt
.L950:
	.loc 1 3752 0
	movl	-104(%rbp), %eax	# j, tmp224
	leal	-4(%rax), %edi	#, D.12458
	movl	-100(%rbp), %eax	# i, tmp225
	cltd
	shrl	$31, %edx	#, tmp227
	addl	%edx, %eax	# tmp227, tmp228
	andl	$1, %eax	#, tmp229
	subl	%edx, %eax	# tmp227, tmp230
	movl	%eax, %esi	# tmp230, D.12458
	leaq	-80(%rbp), %rdx	#, tmp231
	movl	-88(%rbp), %eax	# mb_nr, tmp232
	movq	%rdx, %r9	# tmp231,
	movl	$-1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%edi, %edx	# D.12458,
	movl	%eax, %edi	# tmp232,
	call	getChroma4x4Neighbour	#
	.loc 1 3754 0
	movl	-80(%rbp), %eax	# pix.available, D.12458
	testl	%eax, %eax	# D.12458
	je	.L951	#,
	.loc 1 3754 0 is_stmt 0 discriminator 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.952
	movl	224(%rax), %eax	# active_pps.952_61->constrained_intra_pred_flag, D.12459
	testl	%eax, %eax	# D.12459
	je	.L951	#,
	movq	input(%rip), %rax	# input, input.953
	movl	2364(%rax), %eax	# input.953_63->partition_mode, D.12458
	testl	%eax, %eax	# D.12458
	je	.L951	#,
	.loc 1 3756 0 is_stmt 1
	movl	-80(%rbp), %edx	# pix.available, D.12458
	movq	img(%rip), %rax	# img, img.954
	movq	71784(%rax), %rax	# img.954_66->intra_block, D.12460
	movl	-76(%rbp), %ecx	# pix.mb_addr, D.12458
	movslq	%ecx, %rcx	# D.12458, D.12461
	salq	$2, %rcx	#, D.12461
	addq	%rcx, %rax	# D.12461, D.12460
	movl	(%rax), %eax	# *_71, D.12458
	andl	%edx, %eax	# D.12458, D.12458
	movl	%eax, -80(%rbp)	# D.12458, pix.available
.L951:
	.loc 1 3759 0
	movl	-80(%rbp), %eax	# pix.available, D.12458
	testl	%eax, %eax	# D.12458
	je	.L953	#,
	.loc 1 3761 0
	movq	img(%rip), %rax	# img, img.955
	movq	128(%rax), %rax	# img.955_75->nz_coeff, D.12462
	movl	-76(%rbp), %edx	# pix.mb_addr, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$3, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12462
	movq	(%rax), %rdx	# *_80, D.12463
	movl	-100(%rbp), %eax	# i, tmp233
	movl	%eax, %ecx	# tmp233, tmp234
	shrl	$31, %ecx	#, tmp234
	addl	%ecx, %eax	# tmp234, tmp235
	sarl	%eax	# tmp236
	leal	(%rax,%rax), %ecx	#, D.12458
	movl	-72(%rbp), %eax	# pix.x, D.12458
	addl	%ecx, %eax	# D.12458, D.12458
	cltq
	salq	$3, %rax	#, D.12461
	addq	%rdx, %rax	# D.12463, D.12463
	movq	(%rax), %rax	# *_88, D.12460
	movl	-68(%rbp), %edx	# pix.y, D.12458
	addl	$4, %edx	#, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$2, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12460
	movl	(%rax), %eax	# *_94, D.12458
	addl	%eax, -96(%rbp)	# D.12458, pred_nnz
	.loc 1 3762 0
	addl	$1, -92(%rbp)	#, cnt
	jmp	.L953	#
.L948:
	.loc 1 3769 0
	movl	-84(%rbp), %eax	# j_off, tmp237
	movl	-104(%rbp), %edx	# j, tmp238
	subl	%eax, %edx	# tmp237, D.12458
	leaq	-80(%rbp), %rcx	#, tmp239
	movl	-100(%rbp), %esi	# i, tmp240
	movl	-88(%rbp), %eax	# mb_nr, tmp241
	movq	%rcx, %r9	# tmp239,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	%eax, %edi	# tmp241,
	call	getChroma4x4Neighbour	#
	.loc 1 3771 0
	movl	-80(%rbp), %eax	# pix.available, D.12458
	testl	%eax, %eax	# D.12458
	je	.L954	#,
	.loc 1 3771 0 is_stmt 0 discriminator 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.956
	movl	224(%rax), %eax	# active_pps.956_100->constrained_intra_pred_flag, D.12459
	testl	%eax, %eax	# D.12459
	je	.L954	#,
	movq	input(%rip), %rax	# input, input.957
	movl	2364(%rax), %eax	# input.957_102->partition_mode, D.12458
	testl	%eax, %eax	# D.12458
	je	.L954	#,
	.loc 1 3773 0 is_stmt 1
	movl	-80(%rbp), %edx	# pix.available, D.12458
	movq	img(%rip), %rax	# img, img.958
	movq	71784(%rax), %rax	# img.958_105->intra_block, D.12460
	movl	-76(%rbp), %ecx	# pix.mb_addr, D.12458
	movslq	%ecx, %rcx	# D.12458, D.12461
	salq	$2, %rcx	#, D.12461
	addq	%rcx, %rax	# D.12461, D.12460
	movl	(%rax), %eax	# *_110, D.12458
	andl	%edx, %eax	# D.12458, D.12458
	movl	%eax, -80(%rbp)	# D.12458, pix.available
.L954:
	.loc 1 3776 0
	movl	-80(%rbp), %eax	# pix.available, D.12458
	testl	%eax, %eax	# D.12458
	je	.L955	#,
	.loc 1 3778 0
	movq	img(%rip), %rax	# img, img.959
	movq	128(%rax), %rax	# img.959_114->nz_coeff, D.12462
	movl	-76(%rbp), %edx	# pix.mb_addr, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$3, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12462
	movq	(%rax), %rax	# *_119, D.12463
	movl	-72(%rbp), %edx	# pix.x, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$3, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12463
	movq	(%rax), %rax	# *_124, D.12460
	movl	-68(%rbp), %ecx	# pix.y, D.12458
	movl	-84(%rbp), %edx	# j_off, tmp242
	addl	%ecx, %edx	# D.12458, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$2, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12460
	movl	(%rax), %eax	# *_130, tmp243
	movl	%eax, -96(%rbp)	# tmp243, pred_nnz
	.loc 1 3779 0
	addl	$1, -92(%rbp)	#, cnt
.L955:
	.loc 1 3783 0
	movl	-84(%rbp), %eax	# j_off, tmp244
	movl	-104(%rbp), %edx	# j, tmp245
	subl	%eax, %edx	# tmp244, D.12458
	leaq	-80(%rbp), %rcx	#, tmp246
	movl	-100(%rbp), %esi	# i, tmp247
	movl	-88(%rbp), %eax	# mb_nr, tmp248
	movq	%rcx, %r9	# tmp246,
	movl	$-1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp248,
	call	getChroma4x4Neighbour	#
	.loc 1 3785 0
	movl	-80(%rbp), %eax	# pix.available, D.12458
	testl	%eax, %eax	# D.12458
	je	.L956	#,
	.loc 1 3785 0 is_stmt 0 discriminator 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.960
	movl	224(%rax), %eax	# active_pps.960_135->constrained_intra_pred_flag, D.12459
	testl	%eax, %eax	# D.12459
	je	.L956	#,
	movq	input(%rip), %rax	# input, input.961
	movl	2364(%rax), %eax	# input.961_137->partition_mode, D.12458
	testl	%eax, %eax	# D.12458
	je	.L956	#,
	.loc 1 3787 0 is_stmt 1
	movl	-80(%rbp), %edx	# pix.available, D.12458
	movq	img(%rip), %rax	# img, img.962
	movq	71784(%rax), %rax	# img.962_140->intra_block, D.12460
	movl	-76(%rbp), %ecx	# pix.mb_addr, D.12458
	movslq	%ecx, %rcx	# D.12458, D.12461
	salq	$2, %rcx	#, D.12461
	addq	%rcx, %rax	# D.12461, D.12460
	movl	(%rax), %eax	# *_145, D.12458
	andl	%edx, %eax	# D.12458, D.12458
	movl	%eax, -80(%rbp)	# D.12458, pix.available
.L956:
	.loc 1 3790 0
	movl	-80(%rbp), %eax	# pix.available, D.12458
	testl	%eax, %eax	# D.12458
	je	.L953	#,
	.loc 1 3792 0
	movq	img(%rip), %rax	# img, img.963
	movq	128(%rax), %rax	# img.963_149->nz_coeff, D.12462
	movl	-76(%rbp), %edx	# pix.mb_addr, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$3, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12462
	movq	(%rax), %rax	# *_154, D.12463
	movl	-72(%rbp), %edx	# pix.x, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$3, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12463
	movq	(%rax), %rax	# *_159, D.12460
	movl	-68(%rbp), %ecx	# pix.y, D.12458
	movl	-84(%rbp), %edx	# j_off, tmp249
	addl	%ecx, %edx	# D.12458, D.12458
	movslq	%edx, %rdx	# D.12458, D.12461
	salq	$2, %rdx	#, D.12461
	addq	%rdx, %rax	# D.12461, D.12460
	movl	(%rax), %eax	# *_165, D.12458
	addl	%eax, -96(%rbp)	# D.12458, pred_nnz
	.loc 1 3793 0
	addl	$1, -92(%rbp)	#, cnt
.L953:
	.loc 1 3798 0
	cmpl	$2, -92(%rbp)	#, cnt
	jne	.L957	#,
	.loc 1 3800 0
	addl	$1, -96(%rbp)	#, pred_nnz
	.loc 1 3801 0
	movl	-96(%rbp), %eax	# pred_nnz, tmp253
	cltd
	idivl	-92(%rbp)	# cnt
	movl	%eax, -96(%rbp)	# tmp251, pred_nnz
.L957:
	.loc 1 3804 0
	movl	-96(%rbp), %eax	# pred_nnz, D.12458
	.loc 1 3805 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	predict_nnz_chroma, .-predict_nnz_chroma
	.section	.rodata
	.align 8
.LC3:
	.string	"writeCoeff4x4_CAVLC: Invalid block type"
.LC4:
	.string	"ERROR: level > 1"
	.text
	.globl	writeCoeff4x4_CAVLC
	.type	writeCoeff4x4_CAVLC, @function
writeCoeff4x4_CAVLC:
.LFB42:
	.loc 1 3821 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$248, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -244(%rbp)	# block_type, block_type
	movl	%esi, -248(%rbp)	# b8, b8
	movl	%edx, -252(%rbp)	# b4, b4
	movl	%ecx, -256(%rbp)	# param, param
	.loc 1 3821 0
	movq	%fs:40, %rax	#, tmp510
	movq	%rax, -24(%rbp)	# tmp510, D.12474
	xorl	%eax, %eax	# tmp510
	.loc 1 3822 0
	movl	$0, -236(%rbp)	#, no_bits
	.loc 1 3823 0
	movq	img(%rip), %rax	# img, img.964
	movq	14168(%rax), %rdx	# img.964_67->mb_data, D.12465
	movq	img(%rip), %rax	# img, img.965
	movl	12(%rax), %eax	# img.965_69->current_mb_nr, D.12464
	cltq
	imulq	$632, %rax, %rax	#, D.12466, D.12466
	addq	%rdx, %rax	# D.12465, tmp282
	movq	%rax, -120(%rbp)	# tmp282, currMB
	.loc 1 3824 0
	movq	img(%rip), %rcx	# img, img.966
	movq	-120(%rbp), %rax	# currMB, tmp283
	movl	(%rax), %eax	# currMB_73->currSEnr, D.12464
	movslq	%eax, %rdx	# D.12464, tmp284
	movq	%rdx, %rax	# tmp284, tmp285
	addq	%rax, %rax	# tmp285
	addq	%rdx, %rax	# tmp284, tmp285
	salq	$4, %rax	#, tmp286
	addq	$14176, %rax	#, tmp287
	addq	%rcx, %rax	# img.966, tmp288
	movq	%rax, -144(%rbp)	# tmp288, currSE
	.loc 1 3825 0
	movq	-120(%rbp), %rax	# currMB, tmp292
	addq	$20, %rax	#, tmp291
	movq	%rax, -112(%rbp)	# tmp291, bitCount
	.loc 1 3826 0
	movq	img(%rip), %rax	# img, img.967
	movq	14160(%rax), %rax	# img.967_78->currentSlice, tmp293
	movq	%rax, -104(%rbp)	# tmp293, currSlice
	.loc 1 3828 0
	movq	input(%rip), %rax	# input, input.968
	movl	2364(%rax), %eax	# input.968_80->partition_mode, D.12464
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp295
	movq	%rax, -96(%rbp)	# tmp295, partMap
	.loc 1 3835 0
	movl	$0, -180(%rbp)	#, dptype
	movl	$0, -176(%rbp)	#, bitcounttype
	.loc 1 3836 0
	movl	$0, -168(%rbp)	#, max_coeff_num
	movl	$0, -164(%rbp)	#, cdc
	movl	$0, -160(%rbp)	#, cac
	.loc 1 3840 0
	movl	$0, -80(%rbp)	#, incVlc
	movl	$3, -76(%rbp)	#, incVlc
	movl	$6, -72(%rbp)	#, incVlc
	movl	$12, -68(%rbp)	#, incVlc
	movl	$24, -64(%rbp)	#, incVlc
	movl	$48, -60(%rbp)	#, incVlc
	movl	$32768, -56(%rbp)	#, incVlc
	.loc 1 3843 0
	movq	$0, -136(%rbp)	#, pLevel
	.loc 1 3844 0
	movq	$0, -128(%rbp)	#, pRun
	.loc 1 3846 0
	cmpl	$7, -244(%rbp)	#, block_type
	ja	.L960	#,
	movl	-244(%rbp), %eax	# block_type, tmp296
	movq	.L962(,%rax,8), %rax	#, tmp297
	jmp	*%rax	# tmp297
	.section	.rodata
	.align 8
	.align 4
.L962:
	.quad	.L961
	.quad	.L963
	.quad	.L964
	.quad	.L960
	.quad	.L960
	.quad	.L960
	.quad	.L965
	.quad	.L966
	.text
.L961:
	.loc 1 3849 0
	movl	$16, -168(%rbp)	#, max_coeff_num
	.loc 1 3850 0
	movl	$5, -176(%rbp)	#, bitcounttype
	.loc 1 3852 0
	movq	img(%rip), %rax	# img, img.969
	movq	14136(%rax), %rax	# img.969_93->cofAC, D.12467
	movl	-248(%rbp), %edx	# b8, tmp298
	movslq	%edx, %rdx	# tmp298, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12467
	movq	(%rax), %rax	# *_98, D.12468
	movl	-252(%rbp), %edx	# b4, tmp299
	movslq	%edx, %rdx	# tmp299, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12468
	movq	(%rax), %rax	# *_103, D.12469
	movq	(%rax), %rax	# *_104, tmp300
	movq	%rax, -136(%rbp)	# tmp300, pLevel
	.loc 1 3853 0
	movq	img(%rip), %rax	# img, img.970
	movq	14136(%rax), %rax	# img.970_106->cofAC, D.12467
	movl	-248(%rbp), %edx	# b8, tmp301
	movslq	%edx, %rdx	# tmp301, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12467
	movq	(%rax), %rax	# *_110, D.12468
	movl	-252(%rbp), %edx	# b4, tmp302
	movslq	%edx, %rdx	# tmp302, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12468
	movq	(%rax), %rax	# *_114, D.12469
	movq	8(%rax), %rax	# MEM[(int * *)_115 + 8B], tmp303
	movq	%rax, -128(%rbp)	# tmp303, pRun
	.loc 1 3855 0
	leaq	-48(%rbp), %rax	#, tmp304
	movl	$1634563404, (%rax)	#, MEM[(void *)&type]
	movb	$0, 4(%rax)	#, MEM[(void *)&type]
	.loc 1 3856 0
	movq	-120(%rbp), %rax	# currMB, tmp305
	movl	72(%rax), %eax	# currMB_73->mb_type, D.12464
	cmpl	$9, %eax	#, D.12464
	je	.L967	#,
	.loc 1 3856 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# currMB, tmp306
	movl	72(%rax), %eax	# currMB_73->mb_type, D.12464
	cmpl	$10, %eax	#, D.12464
	je	.L967	#,
	movq	-120(%rbp), %rax	# currMB, tmp307
	movl	72(%rax), %eax	# currMB_73->mb_type, D.12464
	cmpl	$13, %eax	#, D.12464
	jne	.L968	#,
.L967:
	.loc 1 3858 0 is_stmt 1
	movl	$9, -180(%rbp)	#, dptype
	.loc 1 3864 0
	jmp	.L970	#
.L968:
	.loc 1 3862 0
	movl	$14, -180(%rbp)	#, dptype
	.loc 1 3864 0
	jmp	.L970	#
.L963:
	.loc 1 3866 0
	movl	$16, -168(%rbp)	#, max_coeff_num
	.loc 1 3867 0
	movl	$5, -176(%rbp)	#, bitcounttype
	.loc 1 3869 0
	movq	img(%rip), %rax	# img, img.971
	movq	14144(%rax), %rax	# img.971_124->cofDC, D.12468
	movq	(%rax), %rax	# *_125, D.12469
	movq	(%rax), %rax	# *_126, tmp308
	movq	%rax, -136(%rbp)	# tmp308, pLevel
	.loc 1 3870 0
	movq	img(%rip), %rax	# img, img.972
	movq	14144(%rax), %rax	# img.972_128->cofDC, D.12468
	movq	(%rax), %rax	# *_129, D.12469
	movq	8(%rax), %rax	# MEM[(int * *)_130 + 8B], tmp309
	movq	%rax, -128(%rbp)	# tmp309, pRun
	.loc 1 3872 0
	leaq	-48(%rbp), %rax	#, tmp310
	movabsq	$18933822987793740, %rbx	#, tmp512
	movq	%rbx, (%rax)	# tmp512, MEM[(void *)&type]
	.loc 1 3873 0
	movl	$7, -180(%rbp)	#, dptype
	.loc 1 3874 0
	jmp	.L970	#
.L964:
	.loc 1 3876 0
	movl	$15, -168(%rbp)	#, max_coeff_num
	.loc 1 3877 0
	movl	$5, -176(%rbp)	#, bitcounttype
	.loc 1 3879 0
	movq	img(%rip), %rax	# img, img.973
	movq	14136(%rax), %rax	# img.973_135->cofAC, D.12467
	movl	-248(%rbp), %edx	# b8, tmp311
	movslq	%edx, %rdx	# tmp311, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12467
	movq	(%rax), %rax	# *_139, D.12468
	movl	-252(%rbp), %edx	# b4, tmp312
	movslq	%edx, %rdx	# tmp312, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12468
	movq	(%rax), %rax	# *_143, D.12469
	movq	(%rax), %rax	# *_144, tmp313
	movq	%rax, -136(%rbp)	# tmp313, pLevel
	.loc 1 3880 0
	movq	img(%rip), %rax	# img, img.974
	movq	14136(%rax), %rax	# img.974_146->cofAC, D.12467
	movl	-248(%rbp), %edx	# b8, tmp314
	movslq	%edx, %rdx	# tmp314, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12467
	movq	(%rax), %rax	# *_150, D.12468
	movl	-252(%rbp), %edx	# b4, tmp315
	movslq	%edx, %rdx	# tmp315, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12468
	movq	(%rax), %rax	# *_154, D.12469
	movq	8(%rax), %rax	# MEM[(int * *)_155 + 8B], tmp316
	movq	%rax, -128(%rbp)	# tmp316, pRun
	.loc 1 3882 0
	leaq	-48(%rbp), %rax	#, tmp317
	movabsq	$18930524452910412, %rbx	#, tmp513
	movq	%rbx, (%rax)	# tmp513, MEM[(void *)&type]
	.loc 1 3883 0
	movl	$9, -180(%rbp)	#, dptype
	.loc 1 3884 0
	jmp	.L970	#
.L965:
	.loc 1 3887 0
	movq	img(%rip), %rax	# img, img.975
	movl	72696(%rax), %eax	# img.975_158->num_cdc_coeff, tmp318
	movl	%eax, -168(%rbp)	# tmp318, max_coeff_num
	.loc 1 3888 0
	movl	$6, -176(%rbp)	#, bitcounttype
	.loc 1 3889 0
	movl	$1, -164(%rbp)	#, cdc
	.loc 1 3891 0
	movq	img(%rip), %rax	# img, img.976
	movq	14144(%rax), %rax	# img.976_162->cofDC, D.12468
	movl	-256(%rbp), %edx	# param, tmp319
	movslq	%edx, %rdx	# tmp319, D.12470
	addq	$1, %rdx	#, D.12470
	salq	$3, %rdx	#, D.12470
	addq	%rdx, %rax	# D.12470, D.12468
	movq	(%rax), %rax	# *_168, D.12469
	movq	(%rax), %rax	# *_169, tmp320
	movq	%rax, -136(%rbp)	# tmp320, pLevel
	.loc 1 3892 0
	movq	img(%rip), %rax	# img, img.977
	movq	14144(%rax), %rax	# img.977_171->cofDC, D.12468
	movl	-256(%rbp), %edx	# param, tmp321
	movslq	%edx, %rdx	# tmp321, D.12470
	addq	$1, %rdx	#, D.12470
	salq	$3, %rdx	#, D.12470
	addq	%rdx, %rax	# D.12470, D.12468
	movq	(%rax), %rax	# *_176, D.12469
	movq	8(%rax), %rax	# MEM[(int * *)_177 + 8B], tmp322
	movq	%rax, -128(%rbp)	# tmp322, pRun
	.loc 1 3894 0
	leaq	-48(%rbp), %rax	#, tmp323
	movl	$1148348483, (%rax)	#, MEM[(void *)&type]
	movw	$67, 4(%rax)	#, MEM[(void *)&type]
	.loc 1 3895 0
	movq	-120(%rbp), %rax	# currMB, tmp324
	movl	72(%rax), %eax	# currMB_73->mb_type, D.12464
	cmpl	$9, %eax	#, D.12464
	je	.L971	#,
	.loc 1 3895 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# currMB, tmp325
	movl	72(%rax), %eax	# currMB_73->mb_type, D.12464
	cmpl	$10, %eax	#, D.12464
	je	.L971	#,
	movq	-120(%rbp), %rax	# currMB, tmp326
	movl	72(%rax), %eax	# currMB_73->mb_type, D.12464
	cmpl	$13, %eax	#, D.12464
	jne	.L972	#,
.L971:
	.loc 1 3897 0 is_stmt 1
	movl	$8, -180(%rbp)	#, dptype
	.loc 1 3903 0
	jmp	.L970	#
.L972:
	.loc 1 3901 0
	movl	$13, -180(%rbp)	#, dptype
	.loc 1 3903 0
	jmp	.L970	#
.L966:
	.loc 1 3905 0
	movl	$15, -168(%rbp)	#, max_coeff_num
	.loc 1 3906 0
	movl	$6, -176(%rbp)	#, bitcounttype
	.loc 1 3907 0
	movl	$1, -160(%rbp)	#, cac
	.loc 1 3909 0
	movq	img(%rip), %rax	# img, img.978
	movq	14136(%rax), %rax	# img.978_187->cofAC, D.12467
	movl	-248(%rbp), %edx	# b8, tmp327
	movslq	%edx, %rdx	# tmp327, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12467
	movq	(%rax), %rax	# *_191, D.12468
	movl	-252(%rbp), %edx	# b4, tmp328
	movslq	%edx, %rdx	# tmp328, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12468
	movq	(%rax), %rax	# *_195, D.12469
	movq	(%rax), %rax	# *_196, tmp329
	movq	%rax, -136(%rbp)	# tmp329, pLevel
	.loc 1 3910 0
	movq	img(%rip), %rax	# img, img.979
	movq	14136(%rax), %rax	# img.979_198->cofAC, D.12467
	movl	-248(%rbp), %edx	# b8, tmp330
	movslq	%edx, %rdx	# tmp330, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12467
	movq	(%rax), %rax	# *_202, D.12468
	movl	-252(%rbp), %edx	# b4, tmp331
	movslq	%edx, %rdx	# tmp331, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12468
	movq	(%rax), %rax	# *_206, D.12469
	movq	8(%rax), %rax	# MEM[(int * *)_207 + 8B], tmp332
	movq	%rax, -128(%rbp)	# tmp332, pRun
	.loc 1 3912 0
	leaq	-48(%rbp), %rax	#, tmp333
	movl	$1098016835, (%rax)	#, MEM[(void *)&type]
	movw	$67, 4(%rax)	#, MEM[(void *)&type]
	.loc 1 3913 0
	movq	-120(%rbp), %rax	# currMB, tmp334
	movl	72(%rax), %eax	# currMB_73->mb_type, D.12464
	cmpl	$9, %eax	#, D.12464
	je	.L974	#,
	.loc 1 3913 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# currMB, tmp335
	movl	72(%rax), %eax	# currMB_73->mb_type, D.12464
	cmpl	$10, %eax	#, D.12464
	je	.L974	#,
	movq	-120(%rbp), %rax	# currMB, tmp336
	movl	72(%rax), %eax	# currMB_73->mb_type, D.12464
	cmpl	$13, %eax	#, D.12464
	jne	.L975	#,
.L974:
	.loc 1 3915 0 is_stmt 1
	movl	$10, -180(%rbp)	#, dptype
	.loc 1 3921 0
	jmp	.L970	#
.L975:
	.loc 1 3919 0
	movl	$15, -180(%rbp)	#, dptype
	.loc 1 3921 0
	jmp	.L970	#
.L960:
	.loc 1 3923 0
	movl	$600, %esi	#,
	movl	$.LC3, %edi	#,
	call	error	#
	.loc 1 3924 0
	nop
.L970:
	.loc 1 3927 0
	movq	-104(%rbp), %rax	# currSlice, tmp337
	movq	24(%rax), %rdx	# currSlice_79->partArr, D.12471
	movl	-180(%rbp), %eax	# dptype, tmp338
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12466
	movq	-96(%rbp), %rax	# partMap, tmp339
	addq	%rcx, %rax	# D.12466, D.12472
	movl	(%rax), %eax	# *_217, D.12464
	cltq
	salq	$3, %rax	#, tmp341
	movq	%rax, %rcx	# tmp340, tmp342
	salq	$4, %rcx	#, tmp342
	subq	%rax, %rcx	# tmp340, D.12466
	movq	%rcx, %rax	# D.12466, D.12466
	addq	%rdx, %rax	# D.12471, tmp343
	movq	%rax, -88(%rbp)	# tmp343, dataPart
	.loc 1 3929 0
	movl	$0, -220(%rbp)	#, numcoeff
	.loc 1 3930 0
	movl	$0, -212(%rbp)	#, numtrailingones
	.loc 1 3931 0
	movl	$0, -208(%rbp)	#, numones
	.loc 1 3932 0
	movl	$0, -216(%rbp)	#, lastcoeff
	.loc 1 3933 0
	movl	$0, -204(%rbp)	#, totzeros
	.loc 1 3934 0
	movl	$1, -228(%rbp)	#, level
	.loc 1 3936 0
	movl	$0, -232(%rbp)	#, k
	jmp	.L977	#
.L986:
	.loc 1 3938 0
	movl	-232(%rbp), %eax	# k, tmp344
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-136(%rbp), %rax	# pLevel, tmp345
	addq	%rdx, %rax	# D.12466, D.12472
	movl	(%rax), %eax	# *_234, tmp346
	movl	%eax, -228(%rbp)	# tmp346, level
	.loc 1 3939 0
	movl	-232(%rbp), %eax	# k, tmp347
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-128(%rbp), %rax	# pRun, tmp348
	addq	%rdx, %rax	# D.12466, D.12472
	movl	(%rax), %eax	# *_238, tmp349
	movl	%eax, -148(%rbp)	# tmp349, run
	.loc 1 3941 0
	cmpl	$0, -228(%rbp)	#, level
	je	.L978	#,
	.loc 1 3943 0
	cmpl	$0, -148(%rbp)	#, run
	je	.L979	#,
	.loc 1 3944 0
	movl	-148(%rbp), %eax	# run, tmp350
	addl	%eax, -204(%rbp)	# tmp350, totzeros
.L979:
	.loc 1 3945 0
	movl	-228(%rbp), %eax	# level, tmp352
	cltd
	movl	%edx, %eax	# tmp351, D.12464
	xorl	-228(%rbp), %eax	# level, D.12464
	subl	%edx, %eax	# tmp351, D.12464
	cmpl	$1, %eax	#, D.12464
	jne	.L980	#,
	.loc 1 3947 0
	addl	$1, -212(%rbp)	#, numtrailingones
	.loc 1 3948 0
	addl	$1, -208(%rbp)	#, numones
	.loc 1 3949 0
	cmpl	$3, -212(%rbp)	#, numtrailingones
	jle	.L982	#,
	.loc 1 3951 0
	movl	$3, -212(%rbp)	#, numtrailingones
	jmp	.L982	#
.L980:
	.loc 1 3956 0
	movl	$0, -212(%rbp)	#, numtrailingones
.L982:
	.loc 1 3958 0
	addl	$1, -220(%rbp)	#, numcoeff
	.loc 1 3959 0
	movl	-232(%rbp), %eax	# k, tmp353
	movl	%eax, -216(%rbp)	# tmp353, lastcoeff
.L978:
	.loc 1 3936 0
	addl	$1, -232(%rbp)	#, k
.L977:
	.loc 1 3936 0 is_stmt 0 discriminator 1
	cmpl	$0, -164(%rbp)	#, cdc
	je	.L983	#,
	movq	img(%rip), %rax	# img, img.981
	movl	72696(%rax), %eax	# img.981_229->num_cdc_coeff, iftmp.980
	jmp	.L984	#
.L983:
	.loc 1 3936 0 discriminator 2
	movl	$16, %eax	#, iftmp.980
.L984:
	.loc 1 3936 0 discriminator 3
	cmpl	-232(%rbp), %eax	# k, iftmp.980
	jl	.L985	#,
	.loc 1 3936 0 discriminator 2
	cmpl	$0, -228(%rbp)	#, level
	jne	.L986	#,
.L985:
	.loc 1 3963 0 is_stmt 1
	cmpl	$0, -164(%rbp)	#, cdc
	jne	.L987	#,
	.loc 1 3965 0
	cmpl	$0, -160(%rbp)	#, cac
	jne	.L988	#,
	.loc 1 3968 0
	movl	-248(%rbp), %eax	# b8, tmp354
	andl	$1, %eax	#, D.12464
	testl	%eax, %eax	# D.12464
	jne	.L989	#,
	.loc 1 3968 0 is_stmt 0 discriminator 1
	movl	-252(%rbp), %eax	# b4, tmp355
	andl	$1, %eax	#, D.12464
	testl	%eax, %eax	# D.12464
	setne	%al	#, D.12473
	movzbl	%al, %eax	# D.12473, iftmp.982
	jmp	.L990	#
.L989:
	.loc 1 3968 0 discriminator 2
	movl	-252(%rbp), %eax	# b4, tmp356
	andl	$1, %eax	#, D.12464
	testl	%eax, %eax	# D.12464
	jne	.L991	#,
	.loc 1 3968 0 discriminator 1
	movl	$2, %eax	#, iftmp.983
	jmp	.L990	#
.L991:
	.loc 1 3968 0 discriminator 2
	movl	$3, %eax	#, iftmp.983
.L990:
	.loc 1 3968 0 discriminator 3
	movl	%eax, -156(%rbp)	# iftmp.982, subblock_x
	.loc 1 3970 0 is_stmt 1 discriminator 3
	cmpl	$1, -248(%rbp)	#, b8
	jg	.L993	#,
	.loc 1 3970 0 is_stmt 0 discriminator 1
	cmpl	$1, -252(%rbp)	#, b4
	setg	%al	#, D.12473
	movzbl	%al, %eax	# D.12473, iftmp.984
	jmp	.L994	#
.L993:
	.loc 1 3970 0 discriminator 2
	cmpl	$1, -252(%rbp)	#, b4
	jg	.L995	#,
	.loc 1 3970 0 discriminator 1
	movl	$2, %eax	#, iftmp.985
	jmp	.L994	#
.L995:
	.loc 1 3970 0 discriminator 2
	movl	$3, %eax	#, iftmp.985
.L994:
	.loc 1 3970 0 discriminator 1
	movl	%eax, -152(%rbp)	# iftmp.984, subblock_y
	.loc 1 3972 0 is_stmt 1 discriminator 1
	movl	-152(%rbp), %edx	# subblock_y, tmp357
	movl	-156(%rbp), %eax	# subblock_x, tmp358
	movl	%edx, %esi	# tmp357,
	movl	%eax, %edi	# tmp358,
	call	predict_nnz	#
	movl	%eax, -172(%rbp)	# tmp359, nnz
	jmp	.L997	#
.L988:
	.loc 1 3977 0
	movl	-256(%rbp), %eax	# param, tmp363
	sarl	$4, %eax	#, tmp362
	movl	%eax, -156(%rbp)	# tmp362, subblock_x
	.loc 1 3978 0
	movl	-256(%rbp), %eax	# param, tmp367
	andl	$15, %eax	#, tmp366
	movl	%eax, -152(%rbp)	# tmp366, subblock_y
	.loc 1 3979 0
	movl	-152(%rbp), %edx	# subblock_y, tmp368
	movl	-156(%rbp), %eax	# subblock_x, tmp369
	movl	%edx, %esi	# tmp368,
	movl	%eax, %edi	# tmp369,
	call	predict_nnz_chroma	#
	movl	%eax, -172(%rbp)	# tmp370, nnz
.L997:
	.loc 1 3982 0
	movq	img(%rip), %rax	# img, img.986
	movq	128(%rax), %rdx	# img.986_268->nz_coeff, D.12468
	movq	img(%rip), %rax	# img, img.987
	movl	12(%rax), %eax	# img.987_270->current_mb_nr, D.12464
	cltq
	salq	$3, %rax	#, D.12466
	addq	%rdx, %rax	# D.12468, D.12468
	movq	(%rax), %rax	# *_274, D.12469
	movl	-156(%rbp), %edx	# subblock_x, tmp371
	movslq	%edx, %rdx	# tmp371, D.12466
	salq	$3, %rdx	#, D.12466
	addq	%rdx, %rax	# D.12466, D.12469
	movq	(%rax), %rax	# *_278, D.12472
	movl	-152(%rbp), %edx	# subblock_y, tmp372
	movslq	%edx, %rdx	# tmp372, D.12466
	salq	$2, %rdx	#, D.12466
	addq	%rax, %rdx	# D.12472, D.12472
	movl	-220(%rbp), %eax	# numcoeff, tmp373
	movl	%eax, (%rdx)	# tmp373, *_282
	.loc 1 3985 0
	cmpl	$1, -172(%rbp)	#, nnz
	jg	.L998	#,
	.loc 1 3987 0
	movl	$0, -192(%rbp)	#, numcoeff_vlc
	jmp	.L1002	#
.L998:
	.loc 1 3989 0
	cmpl	$3, -172(%rbp)	#, nnz
	jg	.L1000	#,
	.loc 1 3991 0
	movl	$1, -192(%rbp)	#, numcoeff_vlc
	jmp	.L1002	#
.L1000:
	.loc 1 3993 0
	cmpl	$7, -172(%rbp)	#, nnz
	jg	.L1001	#,
	.loc 1 3995 0
	movl	$2, -192(%rbp)	#, numcoeff_vlc
	jmp	.L1002	#
.L1001:
	.loc 1 3999 0
	movl	$3, -192(%rbp)	#, numcoeff_vlc
	jmp	.L1002	#
.L987:
	.loc 1 4008 0
	movl	$0, -192(%rbp)	#, numcoeff_vlc
	.loc 1 4010 0
	movl	-256(%rbp), %eax	# param, tmp374
	movl	%eax, -156(%rbp)	# tmp374, subblock_x
	.loc 1 4011 0
	movl	-256(%rbp), %eax	# param, tmp375
	movl	%eax, -152(%rbp)	# tmp375, subblock_y
.L1002:
	.loc 1 4014 0
	movq	-144(%rbp), %rax	# currSE, tmp376
	movl	-180(%rbp), %edx	# dptype, tmp377
	movl	%edx, (%rax)	# tmp377, currSE_76->type
	.loc 1 4016 0
	movq	-144(%rbp), %rax	# currSE, tmp378
	movl	-220(%rbp), %edx	# numcoeff, tmp379
	movl	%edx, 4(%rax)	# tmp379, currSE_76->value1
	.loc 1 4017 0
	movq	-144(%rbp), %rax	# currSE, tmp380
	movl	-212(%rbp), %edx	# numtrailingones, tmp381
	movl	%edx, 8(%rax)	# tmp381, currSE_76->value2
	.loc 1 4018 0
	movq	-144(%rbp), %rax	# currSE, tmp382
	movl	-192(%rbp), %edx	# numcoeff_vlc, tmp383
	movl	%edx, 12(%rax)	# tmp383, currSE_76->len
	.loc 1 4026 0
	cmpl	$0, -164(%rbp)	#, cdc
	jne	.L1003	#,
	.loc 1 4027 0
	movq	-88(%rbp), %rdx	# dataPart, tmp384
	movq	-144(%rbp), %rax	# currSE, tmp385
	movq	%rdx, %rsi	# tmp384,
	movq	%rax, %rdi	# tmp385,
	call	writeSyntaxElement_NumCoeffTrailingOnes	#
	jmp	.L1004	#
.L1003:
	.loc 1 4029 0
	movq	-88(%rbp), %rdx	# dataPart, tmp386
	movq	-144(%rbp), %rax	# currSE, tmp387
	movq	%rdx, %rsi	# tmp386,
	movq	%rax, %rdi	# tmp387,
	call	writeSyntaxElement_NumCoeffTrailingOnesChromaDC	#
.L1004:
	.loc 1 4031 0
	movl	-176(%rbp), %eax	# bitcounttype, tmp388
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp389
	addq	%rax, %rdx	# tmp389, D.12472
	movl	-176(%rbp), %eax	# bitcounttype, tmp390
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp391
	addq	%rcx, %rax	# D.12466, D.12472
	movl	(%rax), %ecx	# *_295, D.12464
	movq	-144(%rbp), %rax	# currSE, tmp392
	movl	12(%rax), %eax	# currSE_76->len, D.12464
	addl	%ecx, %eax	# D.12464, D.12464
	movl	%eax, (%rdx)	# D.12464, *_292
	.loc 1 4032 0
	movq	-144(%rbp), %rax	# currSE, tmp393
	movl	12(%rax), %eax	# currSE_76->len, D.12464
	addl	%eax, -236(%rbp)	# D.12464, no_bits
	.loc 1 4035 0
	addq	$48, -144(%rbp)	#, currSE
	.loc 1 4036 0
	movq	-120(%rbp), %rax	# currMB, tmp394
	movl	(%rax), %eax	# currMB_73->currSEnr, D.12464
	leal	1(%rax), %edx	#, D.12464
	movq	-120(%rbp), %rax	# currMB, tmp395
	movl	%edx, (%rax)	# D.12464, currMB_73->currSEnr
	.loc 1 4039 0
	cmpl	$0, -220(%rbp)	#, numcoeff
	jne	.L1005	#,
	.loc 1 4040 0
	movl	-236(%rbp), %eax	# no_bits, D.12464
	jmp	.L1032	#
.L1005:
	.loc 1 4042 0
	cmpl	$0, -220(%rbp)	#, numcoeff
	je	.L1007	#,
	.loc 1 4044 0
	movl	$0, -188(%rbp)	#, code
	.loc 1 4045 0
	movl	-216(%rbp), %eax	# lastcoeff, tmp396
	movl	%eax, -232(%rbp)	# tmp396, k
	jmp	.L1008	#
.L1011:
	.loc 1 4047 0
	movl	-232(%rbp), %eax	# k, tmp397
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-136(%rbp), %rax	# pLevel, tmp398
	addq	%rdx, %rax	# D.12466, D.12472
	movl	(%rax), %eax	# *_310, tmp399
	movl	%eax, -228(%rbp)	# tmp399, level
	.loc 1 4048 0
	movl	-228(%rbp), %eax	# level, tmp401
	cltd
	movl	%edx, %eax	# tmp400, D.12464
	xorl	-228(%rbp), %eax	# level, D.12464
	subl	%edx, %eax	# tmp400, D.12464
	cmpl	$1, %eax	#, D.12464
	jle	.L1009	#,
	.loc 1 4050 0
	movl	$.LC4, %edi	#,
	call	puts	#
	.loc 1 4051 0
	movl	$-1, %edi	#,
	call	exit	#
.L1009:
	.loc 1 4053 0
	sall	-188(%rbp)	# code
	.loc 1 4054 0
	cmpl	$0, -228(%rbp)	#, level
	jns	.L1010	#,
	.loc 1 4056 0
	orl	$1, -188(%rbp)	#, code
.L1010:
	.loc 1 4045 0
	subl	$1, -232(%rbp)	#, k
.L1008:
	.loc 1 4045 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# numtrailingones, tmp402
	movl	-216(%rbp), %edx	# lastcoeff, tmp403
	subl	%eax, %edx	# tmp402, D.12464
	movl	%edx, %eax	# D.12464, D.12464
	cmpl	-232(%rbp), %eax	# k, D.12464
	jl	.L1011	#,
	.loc 1 4060 0 is_stmt 1
	cmpl	$0, -212(%rbp)	#, numtrailingones
	je	.L1012	#,
	.loc 1 4062 0
	movq	-144(%rbp), %rax	# currSE, tmp404
	movl	-180(%rbp), %edx	# dptype, tmp405
	movl	%edx, (%rax)	# tmp405, currSE_301->type
	.loc 1 4064 0
	movq	-144(%rbp), %rax	# currSE, tmp406
	movl	-212(%rbp), %edx	# numtrailingones, tmp407
	movl	%edx, 8(%rax)	# tmp407, currSE_301->value2
	.loc 1 4065 0
	movq	-144(%rbp), %rax	# currSE, tmp408
	movl	-188(%rbp), %edx	# code, tmp409
	movl	%edx, 4(%rax)	# tmp409, currSE_301->value1
	.loc 1 4073 0
	movq	-88(%rbp), %rdx	# dataPart, tmp410
	movq	-144(%rbp), %rax	# currSE, tmp411
	movq	%rdx, %rsi	# tmp410,
	movq	%rax, %rdi	# tmp411,
	call	writeSyntaxElement_VLC	#
	.loc 1 4074 0
	movl	-176(%rbp), %eax	# bitcounttype, tmp412
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp413
	addq	%rax, %rdx	# tmp413, D.12472
	movl	-176(%rbp), %eax	# bitcounttype, tmp414
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp415
	addq	%rcx, %rax	# D.12466, D.12472
	movl	(%rax), %ecx	# *_321, D.12464
	movq	-144(%rbp), %rax	# currSE, tmp416
	movl	12(%rax), %eax	# currSE_301->len, D.12464
	addl	%ecx, %eax	# D.12464, D.12464
	movl	%eax, (%rdx)	# D.12464, *_318
	.loc 1 4075 0
	movq	-144(%rbp), %rax	# currSE, tmp417
	movl	12(%rax), %eax	# currSE_301->len, D.12464
	addl	%eax, -236(%rbp)	# D.12464, no_bits
	.loc 1 4078 0
	addq	$48, -144(%rbp)	#, currSE
	.loc 1 4079 0
	movq	-120(%rbp), %rax	# currMB, tmp418
	movl	(%rax), %eax	# currMB_73->currSEnr, D.12464
	leal	1(%rax), %edx	#, D.12464
	movq	-120(%rbp), %rax	# currMB, tmp419
	movl	%edx, (%rax)	# D.12464, currMB_73->currSEnr
.L1012:
	.loc 1 4083 0
	movl	$1, -184(%rbp)	#, level_two_or_higher
	.loc 1 4084 0
	cmpl	$3, -220(%rbp)	#, numcoeff
	jle	.L1013	#,
	.loc 1 4084 0 is_stmt 0 discriminator 1
	cmpl	$3, -212(%rbp)	#, numtrailingones
	jne	.L1013	#,
	.loc 1 4085 0 is_stmt 1
	movl	$0, -184(%rbp)	#, level_two_or_higher
.L1013:
	.loc 1 4087 0
	cmpl	$10, -220(%rbp)	#, numcoeff
	jle	.L1014	#,
	.loc 1 4087 0 is_stmt 0 discriminator 1
	cmpl	$2, -212(%rbp)	#, numtrailingones
	jg	.L1014	#,
	.loc 1 4088 0 is_stmt 1
	movl	$1, -224(%rbp)	#, vlcnum
	jmp	.L1015	#
.L1014:
	.loc 1 4090 0
	movl	$0, -224(%rbp)	#, vlcnum
.L1015:
	.loc 1 4092 0
	movl	-212(%rbp), %eax	# numtrailingones, tmp424
	movl	-216(%rbp), %edx	# lastcoeff, tmp425
	subl	%eax, %edx	# tmp424, tmp423
	movl	%edx, %eax	# tmp423, tmp423
	movl	%eax, -232(%rbp)	# tmp423, k
	jmp	.L1016	#
.L1024:
	.loc 1 4094 0
	movl	-232(%rbp), %eax	# k, tmp426
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-136(%rbp), %rax	# pLevel, tmp427
	addq	%rdx, %rax	# D.12466, D.12472
	movl	(%rax), %eax	# *_337, tmp428
	movl	%eax, -228(%rbp)	# tmp428, level
	.loc 1 4096 0
	movq	-144(%rbp), %rax	# currSE, tmp429
	movl	-228(%rbp), %edx	# level, tmp430
	movl	%edx, 4(%rax)	# tmp430, currSE_8->value1
	.loc 1 4097 0
	movq	-144(%rbp), %rax	# currSE, tmp431
	movl	-180(%rbp), %edx	# dptype, tmp432
	movl	%edx, (%rax)	# tmp432, currSE_8->type
	.loc 1 4105 0
	cmpl	$0, -184(%rbp)	#, level_two_or_higher
	je	.L1017	#,
	.loc 1 4107 0
	movq	-144(%rbp), %rax	# currSE, tmp433
	movl	4(%rax), %eax	# currSE_8->value1, D.12464
	testl	%eax, %eax	# D.12464
	jle	.L1018	#,
	.loc 1 4108 0
	movq	-144(%rbp), %rax	# currSE, tmp434
	movl	4(%rax), %eax	# currSE_8->value1, D.12464
	leal	-1(%rax), %edx	#, D.12464
	movq	-144(%rbp), %rax	# currSE, tmp435
	movl	%edx, 4(%rax)	# D.12464, currSE_8->value1
	jmp	.L1019	#
.L1018:
	.loc 1 4110 0
	movq	-144(%rbp), %rax	# currSE, tmp436
	movl	4(%rax), %eax	# currSE_8->value1, D.12464
	leal	1(%rax), %edx	#, D.12464
	movq	-144(%rbp), %rax	# currSE, tmp437
	movl	%edx, 4(%rax)	# D.12464, currSE_8->value1
.L1019:
	.loc 1 4111 0
	movl	$0, -184(%rbp)	#, level_two_or_higher
.L1017:
	.loc 1 4115 0
	cmpl	$0, -224(%rbp)	#, vlcnum
	jne	.L1020	#,
	.loc 1 4116 0
	movq	-88(%rbp), %rdx	# dataPart, tmp438
	movq	-144(%rbp), %rax	# currSE, tmp439
	movq	%rdx, %rsi	# tmp438,
	movq	%rax, %rdi	# tmp439,
	call	writeSyntaxElement_Level_VLC1	#
	jmp	.L1021	#
.L1020:
	.loc 1 4118 0
	movq	-88(%rbp), %rdx	# dataPart, tmp440
	movl	-224(%rbp), %ecx	# vlcnum, tmp441
	movq	-144(%rbp), %rax	# currSE, tmp442
	movl	%ecx, %esi	# tmp441,
	movq	%rax, %rdi	# tmp442,
	call	writeSyntaxElement_Level_VLCN	#
.L1021:
	.loc 1 4121 0
	movl	-228(%rbp), %eax	# level, tmp444
	cltd
	movl	%edx, %eax	# tmp443, D.12464
	xorl	-228(%rbp), %eax	# level, D.12464
	subl	%edx, %eax	# tmp443, D.12464
	movl	-224(%rbp), %edx	# vlcnum, tmp446
	movslq	%edx, %rdx	# tmp446, tmp445
	movl	-80(%rbp,%rdx,4), %edx	# incVlc, D.12464
	cmpl	%edx, %eax	# D.12464, D.12464
	jle	.L1022	#,
	.loc 1 4122 0
	addl	$1, -224(%rbp)	#, vlcnum
.L1022:
	.loc 1 4124 0
	movl	-212(%rbp), %eax	# numtrailingones, tmp447
	movl	-216(%rbp), %edx	# lastcoeff, tmp448
	subl	%eax, %edx	# tmp447, D.12464
	movl	%edx, %eax	# D.12464, D.12464
	cmpl	-232(%rbp), %eax	# k, D.12464
	jne	.L1023	#,
	.loc 1 4124 0 is_stmt 0 discriminator 1
	movl	-228(%rbp), %eax	# level, tmp450
	cltd
	movl	%edx, %eax	# tmp449, D.12464
	xorl	-228(%rbp), %eax	# level, D.12464
	subl	%edx, %eax	# tmp449, D.12464
	cmpl	$3, %eax	#, D.12464
	jle	.L1023	#,
	.loc 1 4125 0 is_stmt 1
	movl	$2, -224(%rbp)	#, vlcnum
.L1023:
	.loc 1 4127 0
	movl	-176(%rbp), %eax	# bitcounttype, tmp451
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp452
	addq	%rax, %rdx	# tmp452, D.12472
	movl	-176(%rbp), %eax	# bitcounttype, tmp453
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp454
	addq	%rcx, %rax	# D.12466, D.12472
	movl	(%rax), %ecx	# *_356, D.12464
	movq	-144(%rbp), %rax	# currSE, tmp455
	movl	12(%rax), %eax	# currSE_8->len, D.12464
	addl	%ecx, %eax	# D.12464, D.12464
	movl	%eax, (%rdx)	# D.12464, *_353
	.loc 1 4128 0
	movq	-144(%rbp), %rax	# currSE, tmp456
	movl	12(%rax), %eax	# currSE_8->len, D.12464
	addl	%eax, -236(%rbp)	# D.12464, no_bits
	.loc 1 4131 0
	addq	$48, -144(%rbp)	#, currSE
	.loc 1 4132 0
	movq	-120(%rbp), %rax	# currMB, tmp457
	movl	(%rax), %eax	# currMB_73->currSEnr, D.12464
	leal	1(%rax), %edx	#, D.12464
	movq	-120(%rbp), %rax	# currMB, tmp458
	movl	%edx, (%rax)	# D.12464, currMB_73->currSEnr
	.loc 1 4092 0
	subl	$1, -232(%rbp)	#, k
.L1016:
	.loc 1 4092 0 is_stmt 0 discriminator 1
	cmpl	$0, -232(%rbp)	#, k
	jns	.L1024	#,
	.loc 1 4136 0 is_stmt 1
	movl	-220(%rbp), %eax	# numcoeff, tmp459
	cmpl	-168(%rbp), %eax	# max_coeff_num, tmp459
	jge	.L1025	#,
	.loc 1 4139 0
	movq	-144(%rbp), %rax	# currSE, tmp460
	movl	-180(%rbp), %edx	# dptype, tmp461
	movl	%edx, (%rax)	# tmp461, currSE_8->type
	.loc 1 4140 0
	movq	-144(%rbp), %rax	# currSE, tmp462
	movl	-204(%rbp), %edx	# totzeros, tmp463
	movl	%edx, 4(%rax)	# tmp463, currSE_8->value1
	.loc 1 4142 0
	movl	-220(%rbp), %eax	# numcoeff, tmp467
	subl	$1, %eax	#, tmp466
	movl	%eax, -224(%rbp)	# tmp466, vlcnum
	.loc 1 4144 0
	movq	-144(%rbp), %rax	# currSE, tmp468
	movl	-224(%rbp), %edx	# vlcnum, tmp469
	movl	%edx, 12(%rax)	# tmp469, currSE_8->len
	.loc 1 4151 0
	cmpl	$0, -164(%rbp)	#, cdc
	jne	.L1026	#,
	.loc 1 4152 0
	movq	-88(%rbp), %rdx	# dataPart, tmp470
	movq	-144(%rbp), %rax	# currSE, tmp471
	movq	%rdx, %rsi	# tmp470,
	movq	%rax, %rdi	# tmp471,
	call	writeSyntaxElement_TotalZeros	#
	jmp	.L1027	#
.L1026:
	.loc 1 4154 0
	movq	-88(%rbp), %rdx	# dataPart, tmp472
	movq	-144(%rbp), %rax	# currSE, tmp473
	movq	%rdx, %rsi	# tmp472,
	movq	%rax, %rdi	# tmp473,
	call	writeSyntaxElement_TotalZerosChromaDC	#
.L1027:
	.loc 1 4156 0
	movl	-176(%rbp), %eax	# bitcounttype, tmp474
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp475
	addq	%rax, %rdx	# tmp475, D.12472
	movl	-176(%rbp), %eax	# bitcounttype, tmp476
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp477
	addq	%rcx, %rax	# D.12466, D.12472
	movl	(%rax), %ecx	# *_372, D.12464
	movq	-144(%rbp), %rax	# currSE, tmp478
	movl	12(%rax), %eax	# currSE_8->len, D.12464
	addl	%ecx, %eax	# D.12464, D.12464
	movl	%eax, (%rdx)	# D.12464, *_369
	.loc 1 4157 0
	movq	-144(%rbp), %rax	# currSE, tmp479
	movl	12(%rax), %eax	# currSE_8->len, D.12464
	addl	%eax, -236(%rbp)	# D.12464, no_bits
	.loc 1 4160 0
	addq	$48, -144(%rbp)	#, currSE
	.loc 1 4161 0
	movq	-120(%rbp), %rax	# currMB, tmp480
	movl	(%rax), %eax	# currMB_73->currSEnr, D.12464
	leal	1(%rax), %edx	#, D.12464
	movq	-120(%rbp), %rax	# currMB, tmp481
	movl	%edx, (%rax)	# D.12464, currMB_73->currSEnr
.L1025:
	.loc 1 4165 0
	movl	-204(%rbp), %eax	# totzeros, tmp482
	movl	%eax, -200(%rbp)	# tmp482, zerosleft
	.loc 1 4166 0
	movl	-220(%rbp), %eax	# numcoeff, tmp483
	movl	%eax, -196(%rbp)	# tmp483, numcoef
	.loc 1 4167 0
	movl	-216(%rbp), %eax	# lastcoeff, tmp484
	movl	%eax, -232(%rbp)	# tmp484, k
	jmp	.L1028	#
.L1031:
	.loc 1 4169 0
	movl	-232(%rbp), %eax	# k, tmp485
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-128(%rbp), %rax	# pRun, tmp486
	addq	%rdx, %rax	# D.12466, D.12472
	movl	(%rax), %eax	# *_386, tmp487
	movl	%eax, -148(%rbp)	# tmp487, run
	.loc 1 4171 0
	movq	-144(%rbp), %rax	# currSE, tmp488
	movl	-148(%rbp), %edx	# run, tmp489
	movl	%edx, 4(%rax)	# tmp489, currSE_11->value1
	.loc 1 4172 0
	movq	-144(%rbp), %rax	# currSE, tmp490
	movl	-180(%rbp), %edx	# dptype, tmp491
	movl	%edx, (%rax)	# tmp491, currSE_11->type
	.loc 1 4176 0
	cmpl	$1, -220(%rbp)	#, numcoeff
	jle	.L1007	#,
	.loc 1 4176 0 is_stmt 0 discriminator 1
	cmpl	$0, -200(%rbp)	#, zerosleft
	je	.L1007	#,
	.loc 1 4179 0 is_stmt 1
	cmpl	$1, -196(%rbp)	#, numcoef
	jle	.L1029	#,
	.loc 1 4179 0 is_stmt 0 discriminator 1
	cmpl	$0, -200(%rbp)	#, zerosleft
	je	.L1029	#,
	.loc 1 4182 0 is_stmt 1
	movl	-200(%rbp), %eax	# zerosleft, tmp495
	subl	$1, %eax	#, tmp494
	movl	%eax, -224(%rbp)	# tmp494, vlcnum
	.loc 1 4183 0
	cmpl	$6, -224(%rbp)	#, vlcnum
	jle	.L1030	#,
	.loc 1 4184 0
	movl	$6, -224(%rbp)	#, vlcnum
.L1030:
	.loc 1 4186 0
	movq	-144(%rbp), %rax	# currSE, tmp496
	movl	-224(%rbp), %edx	# vlcnum, tmp497
	movl	%edx, 12(%rax)	# tmp497, currSE_11->len
	.loc 1 4194 0
	movq	-88(%rbp), %rdx	# dataPart, tmp498
	movq	-144(%rbp), %rax	# currSE, tmp499
	movq	%rdx, %rsi	# tmp498,
	movq	%rax, %rdi	# tmp499,
	call	writeSyntaxElement_Run	#
	.loc 1 4196 0
	movl	-176(%rbp), %eax	# bitcounttype, tmp500
	cltq
	leaq	0(,%rax,4), %rdx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp501
	addq	%rax, %rdx	# tmp501, D.12472
	movl	-176(%rbp), %eax	# bitcounttype, tmp502
	cltq
	leaq	0(,%rax,4), %rcx	#, D.12466
	movq	-112(%rbp), %rax	# bitCount, tmp503
	addq	%rcx, %rax	# D.12466, D.12472
	movl	(%rax), %ecx	# *_395, D.12464
	movq	-144(%rbp), %rax	# currSE, tmp504
	movl	12(%rax), %eax	# currSE_11->len, D.12464
	addl	%ecx, %eax	# D.12464, D.12464
	movl	%eax, (%rdx)	# D.12464, *_392
	.loc 1 4197 0
	movq	-144(%rbp), %rax	# currSE, tmp505
	movl	12(%rax), %eax	# currSE_11->len, D.12464
	addl	%eax, -236(%rbp)	# D.12464, no_bits
	.loc 1 4199 0
	movl	-148(%rbp), %eax	# run, tmp506
	subl	%eax, -200(%rbp)	# tmp506, zerosleft
	.loc 1 4200 0
	subl	$1, -196(%rbp)	#, numcoef
	.loc 1 4203 0
	addq	$48, -144(%rbp)	#, currSE
	.loc 1 4204 0
	movq	-120(%rbp), %rax	# currMB, tmp507
	movl	(%rax), %eax	# currMB_73->currSEnr, D.12464
	leal	1(%rax), %edx	#, D.12464
	movq	-120(%rbp), %rax	# currMB, tmp508
	movl	%edx, (%rax)	# D.12464, currMB_73->currSEnr
.L1029:
	.loc 1 4167 0
	subl	$1, -232(%rbp)	#, k
.L1028:
	.loc 1 4167 0 is_stmt 0 discriminator 1
	cmpl	$0, -232(%rbp)	#, k
	jns	.L1031	#,
.L1007:
	.loc 1 4209 0 is_stmt 1
	movl	-236(%rbp), %eax	# no_bits, D.12464
.L1032:
	.loc 1 4210 0
	movq	-24(%rbp), %rbx	# D.12474, tmp511
	xorq	%fs:40, %rbx	#, tmp511
	je	.L1033	#,
	call	__stack_chk_fail	#
.L1033:
	addq	$248, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	writeCoeff4x4_CAVLC, .-writeCoeff4x4_CAVLC
	.globl	find_sad_16x16
	.type	find_sad_16x16, @function
find_sad_16x16:
.LFB43:
	.loc 1 4227 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$2640, %rsp	#,
	movq	%rdi, -2632(%rbp)	# intra_mode, intra_mode
	.loc 1 4233 0
	movq	img(%rip), %rax	# img, img.988
	movl	12(%rax), %eax	# img.988_32->current_mb_nr, tmp226
	movl	%eax, -2580(%rbp)	# tmp226, mb_nr
	.loc 1 4240 0
	movl	$0, -2612(%rbp)	#, i
	jmp	.L1035	#
.L1036:
	.loc 1 4242 0 discriminator 2
	leaq	-2464(%rbp), %rcx	#, tmp227
	movl	-2612(%rbp), %eax	# i, tmp229
	movslq	%eax, %rdx	# tmp229, tmp228
	movq	%rdx, %rax	# tmp228, tmp230
	addq	%rax, %rax	# tmp230
	addq	%rdx, %rax	# tmp228, tmp230
	salq	$3, %rax	#, tmp231
	addq	%rax, %rcx	# tmp230, D.12479
	movl	-2612(%rbp), %eax	# i, tmp232
	leal	-1(%rax), %edx	#, D.12480
	movl	-2580(%rbp), %eax	# mb_nr, tmp233
	movq	%rcx, %r8	# D.12479,
	movl	$1, %ecx	#,
	movl	$-1, %esi	#,
	movl	%eax, %edi	# tmp233,
	call	getNeighbour	#
	.loc 1 4240 0 discriminator 2
	addl	$1, -2612(%rbp)	#, i
.L1035:
	.loc 1 4240 0 is_stmt 0 discriminator 1
	cmpl	$16, -2612(%rbp)	#, i
	jle	.L1036	#,
	.loc 1 4245 0 is_stmt 1
	leaq	-2560(%rbp), %rdx	#, tmp234
	movl	-2580(%rbp), %eax	# mb_nr, tmp235
	movq	%rdx, %r8	# tmp234,
	movl	$1, %ecx	#,
	movl	$-1, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp235,
	call	getNeighbour	#
	.loc 1 4247 0
	movq	input(%rip), %rax	# input, input.989
	movl	216(%rax), %eax	# input.989_38->UseConstrainedIntraPred, D.12480
	testl	%eax, %eax	# D.12480
	jne	.L1037	#,
	.loc 1 4249 0
	movl	-2560(%rbp), %eax	# up.available, tmp236
	movl	%eax, -2592(%rbp)	# tmp236, up_avail
	.loc 1 4250 0
	movl	-2440(%rbp), %eax	# left[1].available, tmp237
	movl	%eax, -2588(%rbp)	# tmp237, left_avail
	.loc 1 4251 0
	movl	-2464(%rbp), %eax	# left[0].available, tmp238
	movl	%eax, -2584(%rbp)	# tmp238, left_up_avail
	jmp	.L1038	#
.L1037:
	.loc 1 4255 0
	movl	-2560(%rbp), %eax	# up.available, D.12480
	testl	%eax, %eax	# D.12480
	je	.L1039	#,
	.loc 1 4255 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.991
	movq	71784(%rax), %rax	# img.991_44->intra_block, D.12481
	movl	-2556(%rbp), %edx	# up.mb_addr, D.12480
	movslq	%edx, %rdx	# D.12480, D.12482
	salq	$2, %rdx	#, D.12482
	addq	%rdx, %rax	# D.12482, D.12481
	movl	(%rax), %eax	# *_49, iftmp.990
	jmp	.L1040	#
.L1039:
	.loc 1 4255 0 discriminator 2
	movl	$0, %eax	#, iftmp.990
.L1040:
	.loc 1 4255 0 discriminator 3
	movl	%eax, -2592(%rbp)	# iftmp.990, up_avail
	.loc 1 4256 0 is_stmt 1 discriminator 3
	movl	$1, -2612(%rbp)	#, i
	movl	$1, -2588(%rbp)	#, left_avail
	jmp	.L1041	#
.L1044:
	.loc 1 4257 0
	movl	-2612(%rbp), %eax	# i, tmp240
	movslq	%eax, %rdx	# tmp240, tmp239
	movq	%rdx, %rax	# tmp239, tmp241
	addq	%rax, %rax	# tmp241
	addq	%rdx, %rax	# tmp239, tmp241
	salq	$3, %rax	#, tmp242
	addq	%rbp, %rax	#, tmp243
	subq	$2464, %rax	#, tmp244
	movl	(%rax), %eax	# left[i_11].available, D.12480
	testl	%eax, %eax	# D.12480
	je	.L1042	#,
	.loc 1 4257 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.993
	movq	71784(%rax), %rcx	# img.993_56->intra_block, D.12481
	movl	-2612(%rbp), %eax	# i, tmp246
	movslq	%eax, %rdx	# tmp246, tmp245
	movq	%rdx, %rax	# tmp245, tmp247
	addq	%rax, %rax	# tmp247
	addq	%rdx, %rax	# tmp245, tmp247
	salq	$3, %rax	#, tmp248
	addq	%rbp, %rax	#, tmp249
	subq	$2464, %rax	#, tmp250
	movl	4(%rax), %eax	# left[i_11].mb_addr, D.12480
	cltq
	salq	$2, %rax	#, D.12482
	addq	%rcx, %rax	# D.12481, D.12481
	movl	(%rax), %eax	# *_61, iftmp.992
	jmp	.L1043	#
.L1042:
	.loc 1 4257 0 discriminator 2
	movl	$0, %eax	#, iftmp.992
.L1043:
	.loc 1 4257 0 discriminator 3
	andl	%eax, -2588(%rbp)	# iftmp.992, left_avail
	.loc 1 4256 0 is_stmt 1 discriminator 3
	addl	$1, -2612(%rbp)	#, i
.L1041:
	.loc 1 4256 0 is_stmt 0 discriminator 1
	cmpl	$16, -2612(%rbp)	#, i
	jle	.L1044	#,
	.loc 1 4258 0 is_stmt 1
	movl	-2464(%rbp), %eax	# left[0].available, D.12480
	testl	%eax, %eax	# D.12480
	je	.L1045	#,
	.loc 1 4258 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.995
	movq	71784(%rax), %rax	# img.995_67->intra_block, D.12481
	movl	-2460(%rbp), %edx	# left[0].mb_addr, D.12480
	movslq	%edx, %rdx	# D.12480, D.12482
	salq	$2, %rdx	#, D.12482
	addq	%rdx, %rax	# D.12482, D.12481
	movl	(%rax), %eax	# *_72, iftmp.994
	jmp	.L1046	#
.L1045:
	.loc 1 4258 0 discriminator 2
	movl	$0, %eax	#, iftmp.994
.L1046:
	.loc 1 4258 0 discriminator 3
	movl	%eax, -2584(%rbp)	# iftmp.994, left_up_avail
.L1038:
	.loc 1 4261 0 is_stmt 1
	movl	$999999, -2616(%rbp)	#, best_intra_sad2
	.loc 1 4262 0
	movq	-2632(%rbp), %rax	# intra_mode, tmp251
	movl	$2, (%rax)	#, *intra_mode_77(D)
	.loc 1 4264 0
	movl	$0, -2604(%rbp)	#, k
	jmp	.L1047	#
.L1082:
	.loc 1 4266 0
	movq	input(%rip), %rax	# input, input.996
	movl	2396(%rax), %eax	# input.996_79->IntraDisableInterOnly, D.12480
	testl	%eax, %eax	# D.12480
	je	.L1048	#,
	.loc 1 4266 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.997
	movl	24(%rax), %eax	# img.997_81->type, D.12480
	cmpl	$2, %eax	#, D.12480
	je	.L1049	#,
.L1048:
	.loc 1 4268 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.998
	movl	2412(%rax), %eax	# input.998_83->Intra16x16ParDisable, D.12480
	testl	%eax, %eax	# D.12480
	je	.L1050	#,
	.loc 1 4268 0 is_stmt 0 discriminator 1
	cmpl	$0, -2604(%rbp)	#, k
	je	.L1051	#,
	cmpl	$1, -2604(%rbp)	#, k
	jne	.L1050	#,
.L1051:
	.loc 1 4269 0 is_stmt 1
	jmp	.L1052	#
.L1050:
	.loc 1 4271 0
	movq	input(%rip), %rax	# input, input.999
	movl	2416(%rax), %eax	# input.999_85->Intra16x16PlaneDisable, D.12480
	testl	%eax, %eax	# D.12480
	je	.L1049	#,
	.loc 1 4271 0 is_stmt 0 discriminator 1
	cmpl	$3, -2604(%rbp)	#, k
	jne	.L1049	#,
	.loc 1 4272 0 is_stmt 1
	jmp	.L1052	#
.L1049:
	.loc 1 4275 0
	cmpl	$0, -2604(%rbp)	#, k
	jne	.L1053	#,
	.loc 1 4275 0 is_stmt 0 discriminator 1
	cmpl	$0, -2592(%rbp)	#, up_avail
	jne	.L1053	#,
	jmp	.L1052	#
.L1053:
	.loc 1 4275 0 discriminator 2
	cmpl	$1, -2604(%rbp)	#, k
	jne	.L1054	#,
	.loc 1 4275 0 discriminator 1
	cmpl	$0, -2588(%rbp)	#, left_avail
	jne	.L1054	#,
	jmp	.L1052	#
.L1054:
	.loc 1 4275 0 discriminator 2
	cmpl	$3, -2604(%rbp)	#, k
	jne	.L1055	#,
	.loc 1 4275 0 discriminator 1
	cmpl	$0, -2588(%rbp)	#, left_avail
	je	.L1056	#,
	.loc 1 4275 0 discriminator 2
	cmpl	$0, -2592(%rbp)	#, up_avail
	je	.L1056	#,
	.loc 1 4275 0 discriminator 1
	cmpl	$0, -2584(%rbp)	#, left_up_avail
	jne	.L1055	#,
.L1056:
	jmp	.L1052	#
.L1055:
	.loc 1 4281 0 is_stmt 1
	movl	$0, -2608(%rbp)	#, j
	jmp	.L1057	#
.L1060:
	.loc 1 4283 0
	movl	$0, -2612(%rbp)	#, i
	jmp	.L1058	#
.L1059:
	.loc 1 4285 0 discriminator 2
	movq	imgY_org(%rip), %rdx	# imgY_org, imgY_org.1000
	movq	img(%rip), %rax	# img, img.1001
	movl	172(%rax), %ecx	# img.1001_90->opix_y, D.12480
	movl	-2608(%rbp), %eax	# j, tmp252
	addl	%ecx, %eax	# D.12480, D.12480
	cltq
	salq	$3, %rax	#, D.12482
	addq	%rdx, %rax	# imgY_org.1000, D.12483
	movq	(%rax), %rdx	# *_95, D.12484
	movq	img(%rip), %rax	# img, img.1002
	movl	168(%rax), %ecx	# img.1002_97->opix_x, D.12480
	movl	-2612(%rbp), %eax	# i, tmp253
	addl	%ecx, %eax	# D.12480, D.12480
	cltq
	addq	%rax, %rax	# D.12482
	addq	%rdx, %rax	# D.12484, D.12484
	movzwl	(%rax), %eax	# *_102, D.12485
	movzwl	%ax, %edx	# D.12485, D.12480
	movq	img(%rip), %rax	# img, img.1003
	movl	-2612(%rbp), %ecx	# i, tmp255
	movslq	%ecx, %rcx	# tmp255, tmp254
	movl	-2604(%rbp), %esi	# k, tmp257
	movslq	%esi, %rdi	# tmp257, tmp256
	movl	-2608(%rbp), %esi	# j, tmp259
	movslq	%esi, %rsi	# tmp259, tmp258
	salq	$4, %rdi	#, tmp260
	addq	%rdi, %rsi	# tmp260, tmp261
	salq	$4, %rsi	#, tmp262
	addq	%rsi, %rcx	# tmp262, tmp263
	addq	$2392, %rcx	#, tmp264
	movzwl	8(%rax,%rcx,2), %eax	# img.1003_105->mprr_2, D.12485
	movzwl	%ax, %eax	# D.12485, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	-2608(%rbp), %eax	# j, tmp266
	cltq
	movl	-2612(%rbp), %ecx	# i, tmp268
	movslq	%ecx, %rcx	# tmp268, tmp267
	salq	$4, %rcx	#, tmp269
	addq	%rcx, %rax	# tmp269, tmp270
	movl	%edx, -2048(%rbp,%rax,4)	# D.12480, M1
	.loc 1 4286 0 discriminator 2
	movl	-2612(%rbp), %eax	# i, tmp271
	cltd
	shrl	$30, %edx	#, tmp273
	addl	%edx, %eax	# tmp273, tmp274
	andl	$3, %eax	#, tmp275
	subl	%edx, %eax	# tmp273, tmp276
	movl	%eax, %edi	# tmp276, D.12480
	movl	-2612(%rbp), %eax	# i, tmp277
	leal	3(%rax), %edx	#, tmp279
	testl	%eax, %eax	# tmp278
	cmovs	%edx, %eax	# tmp279,, tmp278
	sarl	$2, %eax	#, tmp280
	movl	%eax, %esi	# tmp280, D.12480
	movl	-2608(%rbp), %eax	# j, tmp281
	cltd
	shrl	$30, %edx	#, tmp283
	addl	%edx, %eax	# tmp283, tmp284
	andl	$3, %eax	#, tmp285
	subl	%edx, %eax	# tmp283, tmp286
	movl	%eax, %ecx	# tmp286, D.12480
	movl	-2608(%rbp), %eax	# j, tmp287
	leal	3(%rax), %edx	#, tmp289
	testl	%eax, %eax	# tmp288
	cmovs	%edx, %eax	# tmp289,, tmp288
	sarl	$2, %eax	#, tmp290
	movl	%eax, %edx	# tmp290, D.12480
	movl	-2608(%rbp), %eax	# j, tmp292
	cltq
	movl	-2612(%rbp), %r8d	# i, tmp294
	movslq	%r8d, %r8	# tmp294, tmp293
	salq	$4, %r8	#, tmp295
	addq	%r8, %rax	# tmp295, tmp296
	movl	-2048(%rbp,%rax,4), %eax	# M1, D.12480
	movslq	%edx, %rdx	# D.12480, tmp297
	movslq	%esi, %rsi	# D.12480, tmp298
	movslq	%edi, %rdi	# D.12480, tmp299
	salq	$2, %rdi	#, tmp300
	addq	%rdi, %rsi	# tmp300, tmp301
	movslq	%ecx, %rcx	# D.12480, tmp302
	salq	$2, %rsi	#, tmp303
	addq	%rsi, %rcx	# tmp303, tmp304
	salq	$2, %rcx	#, tmp305
	addq	%rcx, %rdx	# tmp305, tmp306
	movl	%eax, -1024(%rbp,%rdx,4)	# D.12480, M0
	.loc 1 4283 0 discriminator 2
	addl	$1, -2612(%rbp)	#, i
.L1058:
	.loc 1 4283 0 is_stmt 0 discriminator 1
	cmpl	$15, -2612(%rbp)	#, i
	jle	.L1059	#,
	.loc 1 4281 0 is_stmt 1
	addl	$1, -2608(%rbp)	#, j
.L1057:
	.loc 1 4281 0 is_stmt 0 discriminator 1
	cmpl	$15, -2608(%rbp)	#, j
	jle	.L1060	#,
	.loc 1 4289 0 is_stmt 1
	movl	$0, -2620(%rbp)	#, current_intra_sad_2
	.loc 1 4290 0
	movl	$0, -2596(%rbp)	#, jj
	jmp	.L1061	#
.L1071:
	.loc 1 4292 0
	movl	$0, -2600(%rbp)	#, ii
	jmp	.L1062	#
.L1070:
	.loc 1 4294 0
	movl	$0, -2608(%rbp)	#, j
	jmp	.L1063	#
.L1064:
	.loc 1 4296 0 discriminator 2
	movl	-2596(%rbp), %eax	# jj, tmp308
	cltq
	movl	-2600(%rbp), %edx	# ii, tmp310
	movslq	%edx, %rcx	# tmp310, tmp309
	movl	-2608(%rbp), %edx	# j, tmp312
	movslq	%edx, %rdx	# tmp312, tmp311
	salq	$2, %rcx	#, tmp313
	addq	%rcx, %rdx	# tmp313, tmp314
	salq	$2, %rdx	#, tmp315
	addq	%rdx, %rax	# tmp315, tmp316
	movl	-1024(%rbp,%rax,4), %edx	# M0, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp318
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp320
	movslq	%ecx, %rsi	# tmp320, tmp319
	movl	-2608(%rbp), %ecx	# j, tmp322
	movslq	%ecx, %rcx	# tmp322, tmp321
	salq	$2, %rsi	#, tmp323
	addq	%rsi, %rcx	# tmp323, tmp324
	salq	$2, %rcx	#, tmp325
	addq	%rcx, %rax	# tmp325, tmp326
	addq	$192, %rax	#, tmp327
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	addl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2576(%rbp)	# D.12480, M3
	.loc 1 4297 0 discriminator 2
	movl	-2596(%rbp), %eax	# jj, tmp329
	cltq
	movl	-2600(%rbp), %edx	# ii, tmp331
	movslq	%edx, %rcx	# tmp331, tmp330
	movl	-2608(%rbp), %edx	# j, tmp333
	movslq	%edx, %rdx	# tmp333, tmp332
	salq	$2, %rcx	#, tmp334
	addq	%rcx, %rdx	# tmp334, tmp335
	salq	$2, %rdx	#, tmp336
	addq	%rdx, %rax	# tmp336, tmp337
	addq	$64, %rax	#, tmp338
	movl	-1024(%rbp,%rax,4), %edx	# M0, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp340
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp342
	movslq	%ecx, %rsi	# tmp342, tmp341
	movl	-2608(%rbp), %ecx	# j, tmp344
	movslq	%ecx, %rcx	# tmp344, tmp343
	salq	$2, %rsi	#, tmp345
	addq	%rsi, %rcx	# tmp345, tmp346
	salq	$2, %rcx	#, tmp347
	addq	%rcx, %rax	# tmp347, tmp348
	subq	$-128, %rax	#, tmp349
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	addl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2572(%rbp)	# D.12480, M3
	.loc 1 4298 0 discriminator 2
	movl	-2596(%rbp), %eax	# jj, tmp351
	cltq
	movl	-2600(%rbp), %edx	# ii, tmp353
	movslq	%edx, %rcx	# tmp353, tmp352
	movl	-2608(%rbp), %edx	# j, tmp355
	movslq	%edx, %rdx	# tmp355, tmp354
	salq	$2, %rcx	#, tmp356
	addq	%rcx, %rdx	# tmp356, tmp357
	salq	$2, %rdx	#, tmp358
	addq	%rdx, %rax	# tmp358, tmp359
	addq	$64, %rax	#, tmp360
	movl	-1024(%rbp,%rax,4), %edx	# M0, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp362
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp364
	movslq	%ecx, %rsi	# tmp364, tmp363
	movl	-2608(%rbp), %ecx	# j, tmp366
	movslq	%ecx, %rcx	# tmp366, tmp365
	salq	$2, %rsi	#, tmp367
	addq	%rsi, %rcx	# tmp367, tmp368
	salq	$2, %rcx	#, tmp369
	addq	%rcx, %rax	# tmp369, tmp370
	subq	$-128, %rax	#, tmp371
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2568(%rbp)	# D.12480, M3
	.loc 1 4299 0 discriminator 2
	movl	-2596(%rbp), %eax	# jj, tmp373
	cltq
	movl	-2600(%rbp), %edx	# ii, tmp375
	movslq	%edx, %rcx	# tmp375, tmp374
	movl	-2608(%rbp), %edx	# j, tmp377
	movslq	%edx, %rdx	# tmp377, tmp376
	salq	$2, %rcx	#, tmp378
	addq	%rcx, %rdx	# tmp378, tmp379
	salq	$2, %rdx	#, tmp380
	addq	%rdx, %rax	# tmp380, tmp381
	movl	-1024(%rbp,%rax,4), %edx	# M0, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp383
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp385
	movslq	%ecx, %rsi	# tmp385, tmp384
	movl	-2608(%rbp), %ecx	# j, tmp387
	movslq	%ecx, %rcx	# tmp387, tmp386
	salq	$2, %rsi	#, tmp388
	addq	%rsi, %rcx	# tmp388, tmp389
	salq	$2, %rcx	#, tmp390
	addq	%rcx, %rax	# tmp390, tmp391
	addq	$192, %rax	#, tmp392
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2564(%rbp)	# D.12480, M3
	.loc 1 4301 0 discriminator 2
	movl	-2576(%rbp), %edx	# M3, D.12480
	movl	-2572(%rbp), %eax	# M3, D.12480
	addl	%eax, %edx	# D.12480, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp394
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp396
	movslq	%ecx, %rsi	# tmp396, tmp395
	movl	-2608(%rbp), %ecx	# j, tmp398
	movslq	%ecx, %rcx	# tmp398, tmp397
	salq	$2, %rsi	#, tmp399
	addq	%rsi, %rcx	# tmp399, tmp400
	salq	$2, %rcx	#, tmp401
	addq	%rcx, %rax	# tmp401, tmp402
	movl	%edx, -1024(%rbp,%rax,4)	# D.12480, M0
	.loc 1 4302 0 discriminator 2
	movl	-2576(%rbp), %edx	# M3, D.12480
	movl	-2572(%rbp), %eax	# M3, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp404
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp406
	movslq	%ecx, %rsi	# tmp406, tmp405
	movl	-2608(%rbp), %ecx	# j, tmp408
	movslq	%ecx, %rcx	# tmp408, tmp407
	salq	$2, %rsi	#, tmp409
	addq	%rsi, %rcx	# tmp409, tmp410
	salq	$2, %rcx	#, tmp411
	addq	%rcx, %rax	# tmp411, tmp412
	subq	$-128, %rax	#, tmp413
	movl	%edx, -1024(%rbp,%rax,4)	# D.12480, M0
	.loc 1 4303 0 discriminator 2
	movl	-2568(%rbp), %edx	# M3, D.12480
	movl	-2564(%rbp), %eax	# M3, D.12480
	addl	%eax, %edx	# D.12480, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp415
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp417
	movslq	%ecx, %rsi	# tmp417, tmp416
	movl	-2608(%rbp), %ecx	# j, tmp419
	movslq	%ecx, %rcx	# tmp419, tmp418
	salq	$2, %rsi	#, tmp420
	addq	%rsi, %rcx	# tmp420, tmp421
	salq	$2, %rcx	#, tmp422
	addq	%rcx, %rax	# tmp422, tmp423
	addq	$64, %rax	#, tmp424
	movl	%edx, -1024(%rbp,%rax,4)	# D.12480, M0
	.loc 1 4304 0 discriminator 2
	movl	-2564(%rbp), %edx	# M3, D.12480
	movl	-2568(%rbp), %eax	# M3, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp426
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp428
	movslq	%ecx, %rsi	# tmp428, tmp427
	movl	-2608(%rbp), %ecx	# j, tmp430
	movslq	%ecx, %rcx	# tmp430, tmp429
	salq	$2, %rsi	#, tmp431
	addq	%rsi, %rcx	# tmp431, tmp432
	salq	$2, %rcx	#, tmp433
	addq	%rcx, %rax	# tmp433, tmp434
	addq	$192, %rax	#, tmp435
	movl	%edx, -1024(%rbp,%rax,4)	# D.12480, M0
	.loc 1 4294 0 discriminator 2
	addl	$1, -2608(%rbp)	#, j
.L1063:
	.loc 1 4294 0 is_stmt 0 discriminator 1
	cmpl	$3, -2608(%rbp)	#, j
	jle	.L1064	#,
	.loc 1 4307 0 is_stmt 1
	movl	$0, -2612(%rbp)	#, i
	jmp	.L1065	#
.L1069:
	.loc 1 4309 0
	movl	-2596(%rbp), %eax	# jj, tmp437
	cltq
	movl	-2612(%rbp), %edx	# i, tmp439
	movslq	%edx, %rcx	# tmp439, tmp438
	movl	-2600(%rbp), %edx	# ii, tmp441
	movslq	%edx, %rdx	# tmp441, tmp440
	salq	$2, %rcx	#, tmp442
	addq	%rcx, %rdx	# tmp442, tmp443
	salq	$4, %rdx	#, tmp444
	addq	%rdx, %rax	# tmp444, tmp445
	movl	-1024(%rbp,%rax,4), %edx	# M0, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp447
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp449
	movslq	%ecx, %rsi	# tmp449, tmp448
	movl	-2612(%rbp), %ecx	# i, tmp451
	movslq	%ecx, %rcx	# tmp451, tmp450
	salq	$4, %rsi	#, tmp452
	salq	$6, %rcx	#, tmp453
	addq	%rsi, %rcx	# tmp452, tmp454
	addq	%rcx, %rax	# tmp454, tmp455
	addq	$12, %rax	#, tmp456
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	addl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2576(%rbp)	# D.12480, M3
	.loc 1 4310 0
	movl	-2596(%rbp), %eax	# jj, tmp458
	cltq
	movl	-2600(%rbp), %edx	# ii, tmp460
	movslq	%edx, %rcx	# tmp460, tmp459
	movl	-2612(%rbp), %edx	# i, tmp462
	movslq	%edx, %rdx	# tmp462, tmp461
	salq	$4, %rcx	#, tmp463
	salq	$6, %rdx	#, tmp464
	addq	%rcx, %rdx	# tmp463, tmp465
	addq	%rdx, %rax	# tmp465, tmp466
	addq	$4, %rax	#, tmp467
	movl	-1024(%rbp,%rax,4), %edx	# M0, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp469
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp471
	movslq	%ecx, %rsi	# tmp471, tmp470
	movl	-2612(%rbp), %ecx	# i, tmp473
	movslq	%ecx, %rcx	# tmp473, tmp472
	salq	$4, %rsi	#, tmp474
	salq	$6, %rcx	#, tmp475
	addq	%rsi, %rcx	# tmp474, tmp476
	addq	%rcx, %rax	# tmp476, tmp477
	addq	$8, %rax	#, tmp478
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	addl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2572(%rbp)	# D.12480, M3
	.loc 1 4311 0
	movl	-2596(%rbp), %eax	# jj, tmp480
	cltq
	movl	-2600(%rbp), %edx	# ii, tmp482
	movslq	%edx, %rcx	# tmp482, tmp481
	movl	-2612(%rbp), %edx	# i, tmp484
	movslq	%edx, %rdx	# tmp484, tmp483
	salq	$4, %rcx	#, tmp485
	salq	$6, %rdx	#, tmp486
	addq	%rcx, %rdx	# tmp485, tmp487
	addq	%rdx, %rax	# tmp487, tmp488
	addq	$4, %rax	#, tmp489
	movl	-1024(%rbp,%rax,4), %edx	# M0, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp491
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp493
	movslq	%ecx, %rsi	# tmp493, tmp492
	movl	-2612(%rbp), %ecx	# i, tmp495
	movslq	%ecx, %rcx	# tmp495, tmp494
	salq	$4, %rsi	#, tmp496
	salq	$6, %rcx	#, tmp497
	addq	%rsi, %rcx	# tmp496, tmp498
	addq	%rcx, %rax	# tmp498, tmp499
	addq	$8, %rax	#, tmp500
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2568(%rbp)	# D.12480, M3
	.loc 1 4312 0
	movl	-2596(%rbp), %eax	# jj, tmp502
	cltq
	movl	-2612(%rbp), %edx	# i, tmp504
	movslq	%edx, %rcx	# tmp504, tmp503
	movl	-2600(%rbp), %edx	# ii, tmp506
	movslq	%edx, %rdx	# tmp506, tmp505
	salq	$2, %rcx	#, tmp507
	addq	%rcx, %rdx	# tmp507, tmp508
	salq	$4, %rdx	#, tmp509
	addq	%rdx, %rax	# tmp509, tmp510
	movl	-1024(%rbp,%rax,4), %edx	# M0, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp512
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp514
	movslq	%ecx, %rsi	# tmp514, tmp513
	movl	-2612(%rbp), %ecx	# i, tmp516
	movslq	%ecx, %rcx	# tmp516, tmp515
	salq	$4, %rsi	#, tmp517
	salq	$6, %rcx	#, tmp518
	addq	%rsi, %rcx	# tmp517, tmp519
	addq	%rcx, %rax	# tmp519, tmp520
	addq	$12, %rax	#, tmp521
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2564(%rbp)	# D.12480, M3
	.loc 1 4314 0
	movl	-2576(%rbp), %edx	# M3, D.12480
	movl	-2572(%rbp), %eax	# M3, D.12480
	addl	%eax, %edx	# D.12480, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp523
	cltq
	movl	-2612(%rbp), %ecx	# i, tmp525
	movslq	%ecx, %rsi	# tmp525, tmp524
	movl	-2600(%rbp), %ecx	# ii, tmp527
	movslq	%ecx, %rcx	# tmp527, tmp526
	salq	$2, %rsi	#, tmp528
	addq	%rsi, %rcx	# tmp528, tmp529
	salq	$4, %rcx	#, tmp530
	addq	%rcx, %rax	# tmp530, tmp531
	movl	%edx, -1024(%rbp,%rax,4)	# D.12480, M0
	.loc 1 4315 0
	movl	-2576(%rbp), %edx	# M3, D.12480
	movl	-2572(%rbp), %eax	# M3, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp533
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp535
	movslq	%ecx, %rsi	# tmp535, tmp534
	movl	-2612(%rbp), %ecx	# i, tmp537
	movslq	%ecx, %rcx	# tmp537, tmp536
	salq	$4, %rsi	#, tmp538
	salq	$6, %rcx	#, tmp539
	addq	%rsi, %rcx	# tmp538, tmp540
	addq	%rcx, %rax	# tmp540, tmp541
	addq	$8, %rax	#, tmp542
	movl	%edx, -1024(%rbp,%rax,4)	# D.12480, M0
	.loc 1 4316 0
	movl	-2568(%rbp), %edx	# M3, D.12480
	movl	-2564(%rbp), %eax	# M3, D.12480
	addl	%eax, %edx	# D.12480, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp544
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp546
	movslq	%ecx, %rsi	# tmp546, tmp545
	movl	-2612(%rbp), %ecx	# i, tmp548
	movslq	%ecx, %rcx	# tmp548, tmp547
	salq	$4, %rsi	#, tmp549
	salq	$6, %rcx	#, tmp550
	addq	%rsi, %rcx	# tmp549, tmp551
	addq	%rcx, %rax	# tmp551, tmp552
	addq	$4, %rax	#, tmp553
	movl	%edx, -1024(%rbp,%rax,4)	# D.12480, M0
	.loc 1 4317 0
	movl	-2564(%rbp), %edx	# M3, D.12480
	movl	-2568(%rbp), %eax	# M3, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	-2596(%rbp), %eax	# jj, tmp555
	cltq
	movl	-2600(%rbp), %ecx	# ii, tmp557
	movslq	%ecx, %rsi	# tmp557, tmp556
	movl	-2612(%rbp), %ecx	# i, tmp559
	movslq	%ecx, %rcx	# tmp559, tmp558
	salq	$4, %rsi	#, tmp560
	salq	$6, %rcx	#, tmp561
	addq	%rsi, %rcx	# tmp560, tmp562
	addq	%rcx, %rax	# tmp562, tmp563
	addq	$12, %rax	#, tmp564
	movl	%edx, -1024(%rbp,%rax,4)	# D.12480, M0
	.loc 1 4318 0
	movl	$0, -2608(%rbp)	#, j
	jmp	.L1066	#
.L1068:
	.loc 1 4319 0
	movl	-2608(%rbp), %eax	# j, tmp565
	movl	-2612(%rbp), %edx	# i, tmp566
	addl	%edx, %eax	# tmp566, D.12480
	testl	%eax, %eax	# D.12480
	je	.L1067	#,
	.loc 1 4320 0
	movl	-2596(%rbp), %eax	# jj, tmp568
	cltq
	movl	-2600(%rbp), %edx	# ii, tmp570
	movslq	%edx, %rdx	# tmp570, tmp569
	movl	-2612(%rbp), %ecx	# i, tmp572
	movslq	%ecx, %rcx	# tmp572, tmp571
	salq	$2, %rcx	#, tmp573
	addq	%rdx, %rcx	# tmp569, tmp574
	movl	-2608(%rbp), %edx	# j, tmp576
	movslq	%edx, %rdx	# tmp576, tmp575
	salq	$2, %rcx	#, tmp577
	addq	%rcx, %rdx	# tmp577, tmp578
	salq	$2, %rdx	#, tmp579
	addq	%rdx, %rax	# tmp579, tmp580
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	cltd
	xorl	%edx, %eax	# tmp581, D.12480
	subl	%edx, %eax	# tmp581, D.12480
	addl	%eax, -2620(%rbp)	# D.12480, current_intra_sad_2
.L1067:
	.loc 1 4318 0
	addl	$1, -2608(%rbp)	#, j
.L1066:
	.loc 1 4318 0 is_stmt 0 discriminator 1
	cmpl	$3, -2608(%rbp)	#, j
	jle	.L1068	#,
	.loc 1 4307 0 is_stmt 1
	addl	$1, -2612(%rbp)	#, i
.L1065:
	.loc 1 4307 0 is_stmt 0 discriminator 1
	cmpl	$3, -2612(%rbp)	#, i
	jle	.L1069	#,
	.loc 1 4292 0 is_stmt 1
	addl	$1, -2600(%rbp)	#, ii
.L1062:
	.loc 1 4292 0 is_stmt 0 discriminator 1
	cmpl	$3, -2600(%rbp)	#, ii
	jle	.L1070	#,
	.loc 1 4290 0 is_stmt 1
	addl	$1, -2596(%rbp)	#, jj
.L1061:
	.loc 1 4290 0 is_stmt 0 discriminator 1
	cmpl	$3, -2596(%rbp)	#, jj
	jle	.L1071	#,
	.loc 1 4325 0 is_stmt 1
	movl	$0, -2608(%rbp)	#, j
	jmp	.L1072	#
.L1075:
	.loc 1 4326 0
	movl	$0, -2612(%rbp)	#, i
	jmp	.L1073	#
.L1074:
	.loc 1 4327 0 discriminator 2
	movl	-2608(%rbp), %eax	# j, tmp583
	cltq
	movl	-2612(%rbp), %edx	# i, tmp585
	movslq	%edx, %rdx	# tmp585, tmp584
	salq	$4, %rdx	#, tmp586
	addq	%rdx, %rax	# tmp586, tmp587
	movl	-1024(%rbp,%rax,4), %eax	# M0, D.12480
	leal	3(%rax), %edx	#, tmp589
	testl	%eax, %eax	# tmp588
	cmovs	%edx, %eax	# tmp589,, tmp588
	sarl	$2, %eax	#, tmp590
	movl	-2608(%rbp), %edx	# j, tmp592
	movslq	%edx, %rdx	# tmp592, tmp591
	movl	-2612(%rbp), %ecx	# i, tmp594
	movslq	%ecx, %rcx	# tmp594, tmp593
	salq	$2, %rcx	#, tmp595
	addq	%rcx, %rdx	# tmp595, tmp596
	movl	%eax, -2528(%rbp,%rdx,4)	# D.12480, M4
	.loc 1 4326 0 discriminator 2
	addl	$1, -2612(%rbp)	#, i
.L1073:
	.loc 1 4326 0 is_stmt 0 discriminator 1
	cmpl	$3, -2612(%rbp)	#, i
	jle	.L1074	#,
	.loc 1 4325 0 is_stmt 1
	addl	$1, -2608(%rbp)	#, j
.L1072:
	.loc 1 4325 0 is_stmt 0 discriminator 1
	cmpl	$3, -2608(%rbp)	#, j
	jle	.L1075	#,
	.loc 1 4330 0 is_stmt 1
	movl	$0, -2608(%rbp)	#, j
	jmp	.L1076	#
.L1077:
	.loc 1 4332 0 discriminator 2
	movl	-2608(%rbp), %eax	# j, tmp598
	cltq
	movl	-2528(%rbp,%rax,4), %edx	# M4, D.12480
	movl	-2608(%rbp), %eax	# j, tmp600
	cltq
	addq	$12, %rax	#, tmp601
	movl	-2528(%rbp,%rax,4), %eax	# M4, D.12480
	addl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2576(%rbp)	# D.12480, M3
	.loc 1 4333 0 discriminator 2
	movl	-2608(%rbp), %eax	# j, tmp603
	cltq
	addq	$4, %rax	#, tmp604
	movl	-2528(%rbp,%rax,4), %edx	# M4, D.12480
	movl	-2608(%rbp), %eax	# j, tmp606
	cltq
	addq	$8, %rax	#, tmp607
	movl	-2528(%rbp,%rax,4), %eax	# M4, D.12480
	addl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2572(%rbp)	# D.12480, M3
	.loc 1 4334 0 discriminator 2
	movl	-2608(%rbp), %eax	# j, tmp609
	cltq
	addq	$4, %rax	#, tmp610
	movl	-2528(%rbp,%rax,4), %edx	# M4, D.12480
	movl	-2608(%rbp), %eax	# j, tmp612
	cltq
	addq	$8, %rax	#, tmp613
	movl	-2528(%rbp,%rax,4), %eax	# M4, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2568(%rbp)	# D.12480, M3
	.loc 1 4335 0 discriminator 2
	movl	-2608(%rbp), %eax	# j, tmp615
	cltq
	movl	-2528(%rbp,%rax,4), %edx	# M4, D.12480
	movl	-2608(%rbp), %eax	# j, tmp617
	cltq
	addq	$12, %rax	#, tmp618
	movl	-2528(%rbp,%rax,4), %eax	# M4, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2564(%rbp)	# D.12480, M3
	.loc 1 4337 0 discriminator 2
	movl	-2576(%rbp), %edx	# M3, D.12480
	movl	-2572(%rbp), %eax	# M3, D.12480
	addl	%eax, %edx	# D.12480, D.12480
	movl	-2608(%rbp), %eax	# j, tmp620
	cltq
	movl	%edx, -2528(%rbp,%rax,4)	# D.12480, M4
	.loc 1 4338 0 discriminator 2
	movl	-2576(%rbp), %edx	# M3, D.12480
	movl	-2572(%rbp), %eax	# M3, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	-2608(%rbp), %eax	# j, tmp622
	cltq
	addq	$8, %rax	#, tmp623
	movl	%edx, -2528(%rbp,%rax,4)	# D.12480, M4
	.loc 1 4339 0 discriminator 2
	movl	-2568(%rbp), %edx	# M3, D.12480
	movl	-2564(%rbp), %eax	# M3, D.12480
	addl	%eax, %edx	# D.12480, D.12480
	movl	-2608(%rbp), %eax	# j, tmp625
	cltq
	addq	$4, %rax	#, tmp626
	movl	%edx, -2528(%rbp,%rax,4)	# D.12480, M4
	.loc 1 4340 0 discriminator 2
	movl	-2564(%rbp), %edx	# M3, D.12480
	movl	-2568(%rbp), %eax	# M3, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	-2608(%rbp), %eax	# j, tmp628
	cltq
	addq	$12, %rax	#, tmp629
	movl	%edx, -2528(%rbp,%rax,4)	# D.12480, M4
	.loc 1 4330 0 discriminator 2
	addl	$1, -2608(%rbp)	#, j
.L1076:
	.loc 1 4330 0 is_stmt 0 discriminator 1
	cmpl	$3, -2608(%rbp)	#, j
	jle	.L1077	#,
	.loc 1 4343 0 is_stmt 1
	movl	$0, -2612(%rbp)	#, i
	jmp	.L1078	#
.L1081:
	.loc 1 4345 0
	movl	-2612(%rbp), %eax	# i, tmp631
	cltq
	salq	$4, %rax	#, tmp632
	addq	%rbp, %rax	#, tmp633
	subq	$2528, %rax	#, tmp634
	movl	(%rax), %edx	# M4, D.12480
	movl	-2612(%rbp), %eax	# i, tmp636
	cltq
	salq	$4, %rax	#, tmp637
	addq	%rbp, %rax	#, tmp638
	subq	$2516, %rax	#, tmp639
	movl	(%rax), %eax	# M4, D.12480
	addl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2576(%rbp)	# D.12480, M3
	.loc 1 4346 0
	movl	-2612(%rbp), %eax	# i, tmp641
	cltq
	salq	$4, %rax	#, tmp642
	addq	%rbp, %rax	#, tmp643
	subq	$2524, %rax	#, tmp644
	movl	(%rax), %edx	# M4, D.12480
	movl	-2612(%rbp), %eax	# i, tmp646
	cltq
	salq	$4, %rax	#, tmp647
	addq	%rbp, %rax	#, tmp648
	subq	$2520, %rax	#, tmp649
	movl	(%rax), %eax	# M4, D.12480
	addl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2572(%rbp)	# D.12480, M3
	.loc 1 4347 0
	movl	-2612(%rbp), %eax	# i, tmp651
	cltq
	salq	$4, %rax	#, tmp652
	addq	%rbp, %rax	#, tmp653
	subq	$2524, %rax	#, tmp654
	movl	(%rax), %edx	# M4, D.12480
	movl	-2612(%rbp), %eax	# i, tmp656
	cltq
	salq	$4, %rax	#, tmp657
	addq	%rbp, %rax	#, tmp658
	subq	$2520, %rax	#, tmp659
	movl	(%rax), %eax	# M4, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2568(%rbp)	# D.12480, M3
	.loc 1 4348 0
	movl	-2612(%rbp), %eax	# i, tmp661
	cltq
	salq	$4, %rax	#, tmp662
	addq	%rbp, %rax	#, tmp663
	subq	$2528, %rax	#, tmp664
	movl	(%rax), %edx	# M4, D.12480
	movl	-2612(%rbp), %eax	# i, tmp666
	cltq
	salq	$4, %rax	#, tmp667
	addq	%rbp, %rax	#, tmp668
	subq	$2516, %rax	#, tmp669
	movl	(%rax), %eax	# M4, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	%edx, %eax	# D.12480, D.12480
	movl	%eax, -2564(%rbp)	# D.12480, M3
	.loc 1 4350 0
	movl	-2576(%rbp), %edx	# M3, D.12480
	movl	-2572(%rbp), %eax	# M3, D.12480
	addl	%eax, %edx	# D.12480, D.12480
	movl	-2612(%rbp), %eax	# i, tmp671
	cltq
	salq	$4, %rax	#, tmp672
	addq	%rbp, %rax	#, tmp673
	subq	$2528, %rax	#, tmp674
	movl	%edx, (%rax)	# D.12480, M4
	.loc 1 4351 0
	movl	-2576(%rbp), %edx	# M3, D.12480
	movl	-2572(%rbp), %eax	# M3, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	-2612(%rbp), %eax	# i, tmp676
	cltq
	salq	$4, %rax	#, tmp677
	addq	%rbp, %rax	#, tmp678
	subq	$2520, %rax	#, tmp679
	movl	%edx, (%rax)	# D.12480, M4
	.loc 1 4352 0
	movl	-2568(%rbp), %edx	# M3, D.12480
	movl	-2564(%rbp), %eax	# M3, D.12480
	addl	%eax, %edx	# D.12480, D.12480
	movl	-2612(%rbp), %eax	# i, tmp681
	cltq
	salq	$4, %rax	#, tmp682
	addq	%rbp, %rax	#, tmp683
	subq	$2524, %rax	#, tmp684
	movl	%edx, (%rax)	# D.12480, M4
	.loc 1 4353 0
	movl	-2564(%rbp), %edx	# M3, D.12480
	movl	-2568(%rbp), %eax	# M3, D.12480
	subl	%eax, %edx	# D.12480, D.12480
	movl	-2612(%rbp), %eax	# i, tmp686
	cltq
	salq	$4, %rax	#, tmp687
	addq	%rbp, %rax	#, tmp688
	subq	$2516, %rax	#, tmp689
	movl	%edx, (%rax)	# D.12480, M4
	.loc 1 4355 0
	movl	$0, -2608(%rbp)	#, j
	jmp	.L1079	#
.L1080:
	.loc 1 4356 0 discriminator 2
	movl	-2608(%rbp), %eax	# j, tmp691
	cltq
	movl	-2612(%rbp), %edx	# i, tmp693
	movslq	%edx, %rdx	# tmp693, tmp692
	salq	$2, %rdx	#, tmp694
	addq	%rdx, %rax	# tmp694, tmp695
	movl	-2528(%rbp,%rax,4), %eax	# M4, D.12480
	cltd
	xorl	%edx, %eax	# tmp696, D.12480
	subl	%edx, %eax	# tmp696, D.12480
	addl	%eax, -2620(%rbp)	# D.12480, current_intra_sad_2
	.loc 1 4355 0 discriminator 2
	addl	$1, -2608(%rbp)	#, j
.L1079:
	.loc 1 4355 0 is_stmt 0 discriminator 1
	cmpl	$3, -2608(%rbp)	#, j
	jle	.L1080	#,
	.loc 1 4343 0 is_stmt 1
	addl	$1, -2612(%rbp)	#, i
.L1078:
	.loc 1 4343 0 is_stmt 0 discriminator 1
	cmpl	$3, -2612(%rbp)	#, i
	jle	.L1081	#,
	.loc 1 4358 0 is_stmt 1
	movl	-2620(%rbp), %eax	# current_intra_sad_2, tmp697
	cmpl	-2616(%rbp), %eax	# best_intra_sad2, tmp697
	jge	.L1052	#,
	.loc 1 4360 0
	movl	-2620(%rbp), %eax	# current_intra_sad_2, tmp698
	movl	%eax, -2616(%rbp)	# tmp698, best_intra_sad2
	.loc 1 4361 0
	movq	-2632(%rbp), %rax	# intra_mode, tmp699
	movl	-2604(%rbp), %edx	# k, tmp700
	movl	%edx, (%rax)	# tmp700, *intra_mode_77(D)
.L1052:
	.loc 1 4264 0
	addl	$1, -2604(%rbp)	#, k
.L1047:
	.loc 1 4264 0 is_stmt 0 discriminator 1
	cmpl	$3, -2604(%rbp)	#, k
	jle	.L1082	#,
	.loc 1 4366 0 is_stmt 1
	movl	-2616(%rbp), %eax	# best_intra_sad2, tmp702
	movl	%eax, %edx	# tmp702, tmp703
	shrl	$31, %edx	#, tmp703
	addl	%edx, %eax	# tmp703, tmp704
	sarl	%eax	# tmp705
	movl	%eax, -2616(%rbp)	# tmp705, best_intra_sad2
	.loc 1 4368 0
	movl	-2616(%rbp), %eax	# best_intra_sad2, D.12480
	.loc 1 4370 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	find_sad_16x16, .-find_sad_16x16
	.local	skip.4770
	.comm	skip.4770,4,4
	.local	fw_pred.4834
	.comm	fw_pred.4834,64,32
	.local	bw_pred.4835
	.comm	bw_pred.4835,64,32
	.local	fw_pred.4896
	.comm	fw_pred.4896,64,32
	.local	bw_pred.4897
	.comm	bw_pred.4897,64,32
	.local	fw_pred.5192
	.comm	fw_pred.5192,64,32
	.local	bw_pred.5193
	.comm	bw_pred.5193,64,32
	.section	.rodata
	.align 4
	.type	dir1offset.5468, @object
	.size	dir1offset.5468, 12
dir1offset.5468:
	.long	1
	.long	2
	.long	3
	.align 32
	.type	dir2offset.5469, @object
	.size	dir2offset.5469, 36
dir2offset.5469:
	.long	0
	.long	4
	.long	8
	.long	6
	.long	2
	.long	10
	.long	12
	.long	14
	.long	16
	.align 32
	.type	b8start.5509, @object
	.size	b8start.5509, 32
b8start.5509:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	4
	.long	5
	.long	10
	.align 32
	.type	b8inc.5510, @object
	.size	b8inc.5510, 32
b8inc.5510:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	2
	.long	1
	.data
	.align 32
	.type	chroma_ac_param.5694, @object
	.size	chroma_ac_param.5694, 96
chroma_ac_param.5694:
	.byte	4
	.byte	20
	.byte	5
	.byte	21
	.byte	36
	.byte	52
	.byte	37
	.byte	53
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
	.byte	4
	.byte	20
	.byte	5
	.byte	21
	.byte	6
	.byte	22
	.byte	7
	.byte	23
	.byte	36
	.byte	52
	.byte	37
	.byte	53
	.byte	38
	.byte	54
	.byte	39
	.byte	55
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
	.byte	20
	.byte	5
	.byte	21
	.byte	36
	.byte	52
	.byte	37
	.byte	53
	.byte	6
	.byte	22
	.byte	7
	.byte	23
	.byte	38
	.byte	54
	.byte	39
	.byte	55
	.byte	8
	.byte	24
	.byte	9
	.byte	25
	.byte	40
	.byte	56
	.byte	41
	.byte	57
	.byte	10
	.byte	26
	.byte	11
	.byte	27
	.byte	42
	.byte	58
	.byte	43
	.byte	59
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "mbuffer.h"
	.file 7 "elements.h"
	.file 8 "macroblock.h"
	.file 9 "image.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x57a3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF929
	.byte	0x1
	.long	.LASF930
	.long	.LASF931
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
	.uleb128 0xa
	.value	0x19c
	.byte	0x4
	.byte	0x30
	.long	0x154
	.uleb128 0xb
	.long	.LASF16
	.byte	0x4
	.byte	0x32
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF17
	.byte	0x4
	.byte	0x33
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF18
	.byte	0x4
	.byte	0x34
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF19
	.byte	0x4
	.byte	0x35
	.long	0x154
	.byte	0xc
	.uleb128 0xb
	.long	.LASF20
	.byte	0x4
	.byte	0x36
	.long	0x154
	.byte	0x8c
	.uleb128 0xc
	.long	.LASF21
	.byte	0x4
	.byte	0x37
	.long	0x154
	.value	0x10c
	.uleb128 0xc
	.long	.LASF22
	.byte	0x4
	.byte	0x38
	.long	0x49
	.value	0x18c
	.uleb128 0xc
	.long	.LASF23
	.byte	0x4
	.byte	0x39
	.long	0x49
	.value	0x190
	.uleb128 0xc
	.long	.LASF24
	.byte	0x4
	.byte	0x3a
	.long	0x49
	.value	0x194
	.uleb128 0xc
	.long	.LASF25
	.byte	0x4
	.byte	0x3b
	.long	0x49
	.value	0x198
	.byte	0
	.uleb128 0x4
	.long	0x49
	.long	0x164
	.uleb128 0x5
	.long	0x75
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.long	.LASF26
	.byte	0x4
	.byte	0x3c
	.long	0xcd
	.uleb128 0xa
	.value	0x3b4
	.byte	0x4
	.byte	0x3f
	.long	0x310
	.uleb128 0xb
	.long	.LASF27
	.byte	0x4
	.byte	0x41
	.long	0xc2
	.byte	0
	.uleb128 0xb
	.long	.LASF28
	.byte	0x4
	.byte	0x42
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF29
	.byte	0x4
	.byte	0x43
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF30
	.byte	0x4
	.byte	0x44
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF31
	.byte	0x4
	.byte	0x45
	.long	0xc2
	.byte	0x10
	.uleb128 0xb
	.long	.LASF32
	.byte	0x4
	.byte	0x46
	.long	0xc2
	.byte	0x14
	.uleb128 0xb
	.long	.LASF33
	.byte	0x4
	.byte	0x47
	.long	0xc2
	.byte	0x18
	.uleb128 0xb
	.long	.LASF34
	.byte	0x4
	.byte	0x48
	.long	0x49
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF35
	.byte	0x4
	.byte	0x49
	.long	0xc2
	.byte	0x20
	.uleb128 0xb
	.long	.LASF36
	.byte	0x4
	.byte	0x4a
	.long	0xc2
	.byte	0x24
	.uleb128 0xb
	.long	.LASF37
	.byte	0x4
	.byte	0x4b
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF38
	.byte	0x4
	.byte	0x4c
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF39
	.byte	0x4
	.byte	0x4d
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF40
	.byte	0x4
	.byte	0x4e
	.long	0xc2
	.byte	0x34
	.uleb128 0xb
	.long	.LASF41
	.byte	0x4
	.byte	0x4f
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF42
	.byte	0x4
	.byte	0x50
	.long	0x49
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF43
	.byte	0x4
	.byte	0x51
	.long	0xc2
	.byte	0x40
	.uleb128 0xb
	.long	.LASF44
	.byte	0x4
	.byte	0x52
	.long	0x49
	.byte	0x44
	.uleb128 0xb
	.long	.LASF45
	.byte	0x4
	.byte	0x53
	.long	0x49
	.byte	0x48
	.uleb128 0xb
	.long	.LASF46
	.byte	0x4
	.byte	0x54
	.long	0xc2
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF47
	.byte	0x4
	.byte	0x55
	.long	0xc2
	.byte	0x50
	.uleb128 0xb
	.long	.LASF48
	.byte	0x4
	.byte	0x56
	.long	0x164
	.byte	0x54
	.uleb128 0xc
	.long	.LASF49
	.byte	0x4
	.byte	0x57
	.long	0xc2
	.value	0x1f0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x4
	.byte	0x58
	.long	0x164
	.value	0x1f4
	.uleb128 0xc
	.long	.LASF51
	.byte	0x4
	.byte	0x5a
	.long	0xc2
	.value	0x390
	.uleb128 0xc
	.long	.LASF52
	.byte	0x4
	.byte	0x5b
	.long	0xc2
	.value	0x394
	.uleb128 0xc
	.long	.LASF53
	.byte	0x4
	.byte	0x5c
	.long	0xc2
	.value	0x398
	.uleb128 0xc
	.long	.LASF54
	.byte	0x4
	.byte	0x5d
	.long	0x49
	.value	0x39c
	.uleb128 0xc
	.long	.LASF55
	.byte	0x4
	.byte	0x5e
	.long	0x49
	.value	0x3a0
	.uleb128 0xc
	.long	.LASF56
	.byte	0x4
	.byte	0x5f
	.long	0x49
	.value	0x3a4
	.uleb128 0xc
	.long	.LASF57
	.byte	0x4
	.byte	0x60
	.long	0x49
	.value	0x3a8
	.uleb128 0xc
	.long	.LASF58
	.byte	0x4
	.byte	0x61
	.long	0x49
	.value	0x3ac
	.uleb128 0xc
	.long	.LASF59
	.byte	0x4
	.byte	0x62
	.long	0x49
	.value	0x3b0
	.byte	0
	.uleb128 0x7
	.long	.LASF60
	.byte	0x4
	.byte	0x63
	.long	0x16f
	.uleb128 0xd
	.byte	0xf0
	.byte	0x4
	.byte	0x67
	.long	0x48c
	.uleb128 0xb
	.long	.LASF61
	.byte	0x4
	.byte	0x69
	.long	0xc2
	.byte	0
	.uleb128 0xb
	.long	.LASF62
	.byte	0x4
	.byte	0x6a
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF63
	.byte	0x4
	.byte	0x6b
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF64
	.byte	0x4
	.byte	0x6c
	.long	0xc2
	.byte	0xc
	.uleb128 0xb
	.long	.LASF65
	.byte	0x4
	.byte	0x6e
	.long	0xc2
	.byte	0x10
	.uleb128 0xb
	.long	.LASF66
	.byte	0x4
	.byte	0x6f
	.long	0xc2
	.byte	0x14
	.uleb128 0xb
	.long	.LASF67
	.byte	0x4
	.byte	0x70
	.long	0x48c
	.byte	0x18
	.uleb128 0xb
	.long	.LASF68
	.byte	0x4
	.byte	0x73
	.long	0xc2
	.byte	0x38
	.uleb128 0xb
	.long	.LASF69
	.byte	0x4
	.byte	0x74
	.long	0x49
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF70
	.byte	0x4
	.byte	0x75
	.long	0x49
	.byte	0x40
	.uleb128 0xb
	.long	.LASF71
	.byte	0x4
	.byte	0x77
	.long	0x49c
	.byte	0x44
	.uleb128 0xb
	.long	.LASF72
	.byte	0x4
	.byte	0x79
	.long	0x49c
	.byte	0x64
	.uleb128 0xb
	.long	.LASF73
	.byte	0x4
	.byte	0x7a
	.long	0x49c
	.byte	0x84
	.uleb128 0xb
	.long	.LASF74
	.byte	0x4
	.byte	0x7c
	.long	0xc2
	.byte	0xa4
	.uleb128 0xb
	.long	.LASF75
	.byte	0x4
	.byte	0x7d
	.long	0x49
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF76
	.byte	0x4
	.byte	0x7f
	.long	0x49
	.byte	0xac
	.uleb128 0xb
	.long	.LASF77
	.byte	0x4
	.byte	0x80
	.long	0x4ac
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF78
	.byte	0x4
	.byte	0x82
	.long	0x34
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF79
	.byte	0x4
	.byte	0x83
	.long	0x34
	.byte	0xbc
	.uleb128 0xb
	.long	.LASF80
	.byte	0x4
	.byte	0x84
	.long	0xc2
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x4
	.byte	0x85
	.long	0x49
	.byte	0xc4
	.uleb128 0xb
	.long	.LASF82
	.byte	0x4
	.byte	0x86
	.long	0x34
	.byte	0xc8
	.uleb128 0xb
	.long	.LASF83
	.byte	0x4
	.byte	0x87
	.long	0x34
	.byte	0xcc
	.uleb128 0xb
	.long	.LASF84
	.byte	0x4
	.byte	0x88
	.long	0x34
	.byte	0xd0
	.uleb128 0xb
	.long	.LASF85
	.byte	0x4
	.byte	0x8a
	.long	0x34
	.byte	0xd4
	.uleb128 0xb
	.long	.LASF86
	.byte	0x4
	.byte	0x8b
	.long	0x34
	.byte	0xd8
	.uleb128 0xb
	.long	.LASF87
	.byte	0x4
	.byte	0x8d
	.long	0xc2
	.byte	0xdc
	.uleb128 0xb
	.long	.LASF88
	.byte	0x4
	.byte	0x8e
	.long	0xc2
	.byte	0xe0
	.uleb128 0xb
	.long	.LASF89
	.byte	0x4
	.byte	0x8f
	.long	0xc2
	.byte	0xe4
	.uleb128 0xb
	.long	.LASF90
	.byte	0x4
	.byte	0x90
	.long	0xc2
	.byte	0xe8
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x49c
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x49
	.long	0x4ac
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa2
	.uleb128 0x7
	.long	.LASF91
	.byte	0x4
	.byte	0x91
	.long	0x31b
	.uleb128 0xa
	.value	0x854
	.byte	0x4
	.byte	0x95
	.long	0x679
	.uleb128 0xb
	.long	.LASF61
	.byte	0x4
	.byte	0x97
	.long	0xc2
	.byte	0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x4
	.byte	0x99
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF93
	.byte	0x4
	.byte	0x9a
	.long	0xc2
	.byte	0x8
	.uleb128 0xb
	.long	.LASF94
	.byte	0x4
	.byte	0x9b
	.long	0xc2
	.byte	0xc
	.uleb128 0xb
	.long	.LASF95
	.byte	0x4
	.byte	0x9c
	.long	0xc2
	.byte	0x10
	.uleb128 0xb
	.long	.LASF96
	.byte	0x4
	.byte	0x9d
	.long	0xc2
	.byte	0x14
	.uleb128 0xb
	.long	.LASF97
	.byte	0x4
	.byte	0x9e
	.long	0x49
	.byte	0x18
	.uleb128 0xb
	.long	.LASF63
	.byte	0x4
	.byte	0x9f
	.long	0x49
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF98
	.byte	0x4
	.byte	0xa0
	.long	0x49
	.byte	0x20
	.uleb128 0xb
	.long	.LASF99
	.byte	0x4
	.byte	0xa2
	.long	0xc2
	.byte	0x24
	.uleb128 0xb
	.long	.LASF100
	.byte	0x4
	.byte	0xa3
	.long	0x48c
	.byte	0x28
	.uleb128 0xb
	.long	.LASF101
	.byte	0x4
	.byte	0xa5
	.long	0x49
	.byte	0x48
	.uleb128 0xb
	.long	.LASF102
	.byte	0x4
	.byte	0xa6
	.long	0x49
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF103
	.byte	0x4
	.byte	0xa7
	.long	0x49
	.byte	0x50
	.uleb128 0xb
	.long	.LASF104
	.byte	0x4
	.byte	0xa8
	.long	0x49
	.byte	0x54
	.uleb128 0xb
	.long	.LASF105
	.byte	0x4
	.byte	0xaa
	.long	0x49
	.byte	0x58
	.uleb128 0xb
	.long	.LASF106
	.byte	0x4
	.byte	0xac
	.long	0xc2
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF107
	.byte	0x4
	.byte	0xad
	.long	0x34
	.byte	0x60
	.uleb128 0xb
	.long	.LASF108
	.byte	0x4
	.byte	0xae
	.long	0x34
	.byte	0x64
	.uleb128 0xb
	.long	.LASF109
	.byte	0x4
	.byte	0xaf
	.long	0x49
	.byte	0x68
	.uleb128 0xb
	.long	.LASF110
	.byte	0x4
	.byte	0xb1
	.long	0x679
	.byte	0x6c
	.uleb128 0xc
	.long	.LASF111
	.byte	0x4
	.byte	0xb2
	.long	0x49
	.value	0x46c
	.uleb128 0xc
	.long	.LASF112
	.byte	0x4
	.byte	0xb3
	.long	0xc2
	.value	0x470
	.uleb128 0xc
	.long	.LASF113
	.byte	0x4
	.byte	0xb4
	.long	0x49
	.value	0x474
	.uleb128 0xc
	.long	.LASF114
	.byte	0x4
	.byte	0xb5
	.long	0x49
	.value	0x478
	.uleb128 0xc
	.long	.LASF115
	.byte	0x4
	.byte	0xb6
	.long	0xc2
	.value	0x47c
	.uleb128 0xc
	.long	.LASF116
	.byte	0x4
	.byte	0xb8
	.long	0xc2
	.value	0x480
	.uleb128 0xc
	.long	.LASF117
	.byte	0x4
	.byte	0xb9
	.long	0xc2
	.value	0x484
	.uleb128 0xc
	.long	.LASF118
	.byte	0x4
	.byte	0xba
	.long	0xc2
	.value	0x488
	.uleb128 0xc
	.long	.LASF119
	.byte	0x4
	.byte	0xbb
	.long	0x49
	.value	0x48c
	.uleb128 0xc
	.long	.LASF120
	.byte	0x4
	.byte	0xbc
	.long	0x49
	.value	0x490
	.uleb128 0xc
	.long	.LASF121
	.byte	0x4
	.byte	0xbd
	.long	0x49
	.value	0x494
	.uleb128 0xc
	.long	.LASF122
	.byte	0x4
	.byte	0xbe
	.long	0x49
	.value	0x498
	.uleb128 0xc
	.long	.LASF123
	.byte	0x4
	.byte	0xbf
	.long	0xc2
	.value	0x49c
	.uleb128 0xc
	.long	.LASF124
	.byte	0x4
	.byte	0xc0
	.long	0x310
	.value	0x4a0
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x689
	.uleb128 0x5
	.long	0x75
	.byte	0xff
	.byte	0
	.uleb128 0x7
	.long	.LASF125
	.byte	0x4
	.byte	0xc1
	.long	0x4bd
	.uleb128 0x7
	.long	.LASF126
	.byte	0x5
	.byte	0x3e
	.long	0x90
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x70
	.long	0x6ba
	.uleb128 0x9
	.long	.LASF127
	.sleb128 0
	.uleb128 0x9
	.long	.LASF128
	.sleb128 1
	.uleb128 0x9
	.long	.LASF129
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x78
	.long	0x747
	.uleb128 0x9
	.long	.LASF130
	.sleb128 0
	.uleb128 0x9
	.long	.LASF131
	.sleb128 1
	.uleb128 0x9
	.long	.LASF132
	.sleb128 2
	.uleb128 0x9
	.long	.LASF133
	.sleb128 3
	.uleb128 0x9
	.long	.LASF134
	.sleb128 4
	.uleb128 0x9
	.long	.LASF135
	.sleb128 5
	.uleb128 0x9
	.long	.LASF136
	.sleb128 6
	.uleb128 0x9
	.long	.LASF137
	.sleb128 7
	.uleb128 0x9
	.long	.LASF138
	.sleb128 8
	.uleb128 0x9
	.long	.LASF139
	.sleb128 9
	.uleb128 0x9
	.long	.LASF140
	.sleb128 10
	.uleb128 0x9
	.long	.LASF141
	.sleb128 11
	.uleb128 0x9
	.long	.LASF142
	.sleb128 12
	.uleb128 0x9
	.long	.LASF143
	.sleb128 13
	.uleb128 0x9
	.long	.LASF144
	.sleb128 14
	.uleb128 0x9
	.long	.LASF145
	.sleb128 15
	.uleb128 0x9
	.long	.LASF146
	.sleb128 16
	.uleb128 0x9
	.long	.LASF147
	.sleb128 17
	.uleb128 0x9
	.long	.LASF148
	.sleb128 18
	.uleb128 0x9
	.long	.LASF149
	.sleb128 19
	.uleb128 0x9
	.long	.LASF150
	.sleb128 20
	.uleb128 0x9
	.long	.LASF151
	.sleb128 21
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x9b
	.long	0x786
	.uleb128 0x9
	.long	.LASF152
	.sleb128 0
	.uleb128 0x9
	.long	.LASF153
	.sleb128 1
	.uleb128 0x9
	.long	.LASF154
	.sleb128 2
	.uleb128 0x9
	.long	.LASF155
	.sleb128 3
	.uleb128 0x9
	.long	.LASF156
	.sleb128 4
	.uleb128 0x9
	.long	.LASF157
	.sleb128 5
	.uleb128 0x9
	.long	.LASF158
	.sleb128 6
	.uleb128 0x9
	.long	.LASF159
	.sleb128 7
	.uleb128 0x9
	.long	.LASF160
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xa9
	.long	0x7ad
	.uleb128 0x9
	.long	.LASF161
	.sleb128 0
	.uleb128 0x9
	.long	.LASF162
	.sleb128 1
	.uleb128 0x9
	.long	.LASF163
	.sleb128 2
	.uleb128 0x9
	.long	.LASF164
	.sleb128 3
	.uleb128 0xe
	.string	"FMO"
	.sleb128 4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xb3
	.long	0x7c2
	.uleb128 0x9
	.long	.LASF165
	.sleb128 0
	.uleb128 0x9
	.long	.LASF166
	.sleb128 1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.long	0x7dd
	.uleb128 0x9
	.long	.LASF167
	.sleb128 0
	.uleb128 0x9
	.long	.LASF168
	.sleb128 1
	.uleb128 0x9
	.long	.LASF169
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF170
	.byte	0x5
	.byte	0xbe
	.long	0x7c2
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x80f
	.uleb128 0x9
	.long	.LASF171
	.sleb128 0
	.uleb128 0x9
	.long	.LASF172
	.sleb128 1
	.uleb128 0x9
	.long	.LASF173
	.sleb128 2
	.uleb128 0x9
	.long	.LASF174
	.sleb128 3
	.uleb128 0x9
	.long	.LASF175
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x8ff
	.uleb128 0xb
	.long	.LASF176
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF177
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF178
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF179
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF180
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF181
	.byte	0x5
	.byte	0xd5
	.long	0x4ac
	.byte	0x18
	.uleb128 0xb
	.long	.LASF182
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF183
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF184
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF185
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF186
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF187
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF188
	.byte	0x5
	.byte	0xdd
	.long	0x4ac
	.byte	0x40
	.uleb128 0xb
	.long	.LASF189
	.byte	0x5
	.byte	0xde
	.long	0x83
	.byte	0x48
	.uleb128 0xf
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xf
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xf
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xf
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xf
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xf
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF190
	.byte	0x5
	.byte	0xe2
	.long	0x80f
	.uleb128 0x7
	.long	.LASF191
	.byte	0x5
	.byte	0xe4
	.long	0x915
	.uleb128 0x6
	.byte	0x8
	.long	0x8ff
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x948
	.uleb128 0xb
	.long	.LASF192
	.byte	0x5
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xf
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xb
	.long	.LASF193
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF194
	.byte	0x5
	.byte	0xee
	.long	0x91b
	.uleb128 0x10
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x9bf
	.uleb128 0x11
	.long	.LASF195
	.byte	0x5
	.value	0x104
	.long	0x9bf
	.byte	0
	.uleb128 0x12
	.long	.LASF196
	.byte	0x5
	.value	0x105
	.long	0x9d5
	.value	0x210
	.uleb128 0x12
	.long	.LASF197
	.byte	0x5
	.value	0x106
	.long	0x9eb
	.value	0x330
	.uleb128 0x12
	.long	.LASF198
	.byte	0x5
	.value	0x107
	.long	0xa01
	.value	0x470
	.uleb128 0x12
	.long	.LASF199
	.byte	0x5
	.value	0x108
	.long	0xa17
	.value	0x530
	.uleb128 0x12
	.long	.LASF200
	.byte	0x5
	.value	0x109
	.long	0xa17
	.value	0x570
	.uleb128 0x12
	.long	.LASF201
	.byte	0x5
	.value	0x10a
	.long	0xa27
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0x9d5
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0x9eb
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0xa01
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0xa17
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0xa27
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0xa37
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.long	.LASF202
	.byte	0x5
	.value	0x10c
	.long	0x953
	.uleb128 0x10
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0xad7
	.uleb128 0x11
	.long	.LASF203
	.byte	0x5
	.value	0x11b
	.long	0xad7
	.byte	0
	.uleb128 0x11
	.long	.LASF204
	.byte	0x5
	.value	0x11c
	.long	0xa17
	.byte	0x20
	.uleb128 0x11
	.long	.LASF205
	.byte	0x5
	.value	0x11d
	.long	0xae7
	.byte	0x60
	.uleb128 0x12
	.long	.LASF206
	.byte	0x5
	.value	0x11e
	.long	0xafd
	.value	0x120
	.uleb128 0x12
	.long	.LASF207
	.byte	0x5
	.value	0x11f
	.long	0xb13
	.value	0x3a0
	.uleb128 0x12
	.long	.LASF208
	.byte	0x5
	.value	0x120
	.long	0xb13
	.value	0xd00
	.uleb128 0x12
	.long	.LASF209
	.byte	0x5
	.value	0x121
	.long	0xb29
	.value	0x1660
	.uleb128 0x12
	.long	.LASF210
	.byte	0x5
	.value	0x122
	.long	0xb29
	.value	0x1980
	.uleb128 0x12
	.long	.LASF211
	.byte	0x5
	.value	0x123
	.long	0xb13
	.value	0x1ca0
	.uleb128 0x12
	.long	.LASF212
	.byte	0x5
	.value	0x124
	.long	0xb13
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0xae7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0xafd
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0xb13
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0xb29
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x948
	.long	0xb3f
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	.LASF213
	.byte	0x5
	.value	0x125
	.long	0xa43
	.uleb128 0x14
	.long	.LASF219
	.byte	0x18
	.byte	0x5
	.value	0x129
	.long	0xba3
	.uleb128 0x11
	.long	.LASF214
	.byte	0x5
	.value	0x12b
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF215
	.byte	0x5
	.value	0x12c
	.long	0x34
	.byte	0x4
	.uleb128 0x15
	.string	"x"
	.byte	0x5
	.value	0x12d
	.long	0x34
	.byte	0x8
	.uleb128 0x15
	.string	"y"
	.byte	0x5
	.value	0x12e
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF216
	.byte	0x5
	.value	0x12f
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF217
	.byte	0x5
	.value	0x130
	.long	0x34
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.long	.LASF218
	.byte	0x5
	.value	0x131
	.long	0xb4b
	.uleb128 0x14
	.long	.LASF220
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0xbe4
	.uleb128 0x11
	.long	.LASF221
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF222
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF223
	.byte	0x5
	.value	0x138
	.long	0xbe4
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbaf
	.uleb128 0x13
	.long	.LASF224
	.byte	0x5
	.value	0x139
	.long	0xbaf
	.uleb128 0x14
	.long	.LASF225
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0xc52
	.uleb128 0x11
	.long	.LASF226
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF227
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF228
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0x11
	.long	.LASF229
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF230
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF223
	.byte	0x5
	.value	0x143
	.long	0xc52
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbf6
	.uleb128 0x13
	.long	.LASF231
	.byte	0x5
	.value	0x144
	.long	0xbf6
	.uleb128 0x14
	.long	.LASF232
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0xcf2
	.uleb128 0x11
	.long	.LASF233
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF234
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF235
	.byte	0x5
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x15
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF236
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0x11
	.long	.LASF237
	.byte	0x5
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x15
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF238
	.byte	0x5
	.value	0x158
	.long	0xd0c
	.byte	0x20
	.uleb128 0x11
	.long	.LASF239
	.byte	0x5
	.value	0x15a
	.long	0xd28
	.byte	0x28
	.byte	0
	.uleb128 0x16
	.long	0xd0c
	.uleb128 0x17
	.long	0x34
	.uleb128 0x17
	.long	0x34
	.uleb128 0x17
	.long	0x83
	.uleb128 0x17
	.long	0x83
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcf2
	.uleb128 0x16
	.long	0xd22
	.uleb128 0x17
	.long	0xd22
	.uleb128 0x17
	.long	0x90a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc64
	.uleb128 0x6
	.byte	0x8
	.long	0xd12
	.uleb128 0x13
	.long	.LASF240
	.byte	0x5
	.value	0x15c
	.long	0xc64
	.uleb128 0x18
	.long	.LASF241
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0xfb4
	.uleb128 0x11
	.long	.LASF242
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF243
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF244
	.byte	0x5
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x15
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF245
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF246
	.byte	0x5
	.value	0x166
	.long	0x48c
	.byte	0x14
	.uleb128 0x11
	.long	.LASF247
	.byte	0x5
	.value	0x168
	.long	0xfb4
	.byte	0x38
	.uleb128 0x11
	.long	.LASF248
	.byte	0x5
	.value	0x169
	.long	0xfb4
	.byte	0x40
	.uleb128 0x11
	.long	.LASF249
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x15
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0xfba
	.byte	0x4c
	.uleb128 0x12
	.long	.LASF250
	.byte	0x5
	.value	0x16d
	.long	0xfdc
	.value	0x14c
	.uleb128 0x12
	.long	.LASF251
	.byte	0x5
	.value	0x16e
	.long	0xfdc
	.value	0x18c
	.uleb128 0x19
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0x12
	.long	.LASF252
	.byte	0x5
	.value	0x170
	.long	0x694
	.value	0x1d0
	.uleb128 0x12
	.long	.LASF253
	.byte	0x5
	.value	0x171
	.long	0xfec
	.value	0x1d8
	.uleb128 0x12
	.long	.LASF254
	.byte	0x5
	.value	0x172
	.long	0xfec
	.value	0x1e8
	.uleb128 0x12
	.long	.LASF255
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0x12
	.long	.LASF256
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0x12
	.long	.LASF257
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0x12
	.long	.LASF258
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0x12
	.long	.LASF259
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0x12
	.long	.LASF260
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0x12
	.long	.LASF261
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0x12
	.long	.LASF262
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0x12
	.long	.LASF263
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0x12
	.long	.LASF264
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0x12
	.long	.LASF265
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0x12
	.long	.LASF266
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0x12
	.long	.LASF267
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0x12
	.long	.LASF268
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0x12
	.long	.LASF269
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0x12
	.long	.LASF270
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0x12
	.long	.LASF271
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0x12
	.long	.LASF272
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0x12
	.long	.LASF273
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0x12
	.long	.LASF274
	.byte	0x5
	.value	0x18a
	.long	0xffc
	.value	0x248
	.uleb128 0x12
	.long	.LASF275
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0x12
	.long	.LASF276
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0x12
	.long	.LASF277
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0x12
	.long	.LASF278
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0x12
	.long	.LASF279
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0x12
	.long	.LASF280
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0x12
	.long	.LASF281
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0x12
	.long	.LASF282
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0x12
	.long	.LASF283
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd3a
	.uleb128 0x4
	.long	0x34
	.long	0xfdc
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
	.long	0xfec
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xffc
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF284
	.uleb128 0x13
	.long	.LASF285
	.byte	0x5
	.value	0x196
	.long	0xd3a
	.uleb128 0x1a
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0x10a8
	.uleb128 0x11
	.long	.LASF286
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF287
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF288
	.byte	0x5
	.value	0x19f
	.long	0xa2
	.byte	0x8
	.uleb128 0x11
	.long	.LASF289
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF290
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF291
	.byte	0x5
	.value	0x1a2
	.long	0xa2
	.byte	0x14
	.uleb128 0x11
	.long	.LASF292
	.byte	0x5
	.value	0x1a4
	.long	0xa2
	.byte	0x15
	.uleb128 0x11
	.long	.LASF293
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0x11
	.long	.LASF294
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF295
	.byte	0x5
	.value	0x1a8
	.long	0x4ac
	.byte	0x20
	.uleb128 0x11
	.long	.LASF296
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	.LASF297
	.byte	0x5
	.value	0x1ab
	.long	0x100f
	.uleb128 0x14
	.long	.LASF298
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0x10e9
	.uleb128 0x11
	.long	.LASF299
	.byte	0x5
	.value	0x1b1
	.long	0x10e9
	.byte	0
	.uleb128 0x11
	.long	.LASF300
	.byte	0x5
	.value	0x1b2
	.long	0x8ff
	.byte	0x8
	.uleb128 0x11
	.long	.LASF301
	.byte	0x5
	.value	0x1b4
	.long	0x110f
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10a8
	.uleb128 0x1b
	.long	0x34
	.long	0x1103
	.uleb128 0x17
	.long	0x1103
	.uleb128 0x17
	.long	0x1109
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd2e
	.uleb128 0x6
	.byte	0x8
	.long	0x10b4
	.uleb128 0x6
	.byte	0x8
	.long	0x10ef
	.uleb128 0x13
	.long	.LASF302
	.byte	0x5
	.value	0x1b8
	.long	0x10b4
	.uleb128 0x1a
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0x122e
	.uleb128 0x11
	.long	.LASF303
	.byte	0x5
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x15
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF304
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0x11
	.long	.LASF305
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF306
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF307
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0x11
	.long	.LASF308
	.byte	0x5
	.value	0x1c3
	.long	0x122e
	.byte	0x18
	.uleb128 0x11
	.long	.LASF309
	.byte	0x5
	.value	0x1c4
	.long	0x1234
	.byte	0x20
	.uleb128 0x11
	.long	.LASF310
	.byte	0x5
	.value	0x1c5
	.long	0x123a
	.byte	0x28
	.uleb128 0x11
	.long	.LASF311
	.byte	0x5
	.value	0x1c8
	.long	0x1240
	.byte	0x30
	.uleb128 0x11
	.long	.LASF312
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0x11
	.long	.LASF313
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0x11
	.long	.LASF314
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0x11
	.long	.LASF315
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0x11
	.long	.LASF316
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0x11
	.long	.LASF317
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0x11
	.long	.LASF318
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0x11
	.long	.LASF319
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0x11
	.long	.LASF320
	.byte	0x5
	.value	0x1d3
	.long	0x1255
	.byte	0x78
	.uleb128 0x11
	.long	.LASF321
	.byte	0x5
	.value	0x1d5
	.long	0x125b
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1115
	.uleb128 0x6
	.byte	0x8
	.long	0xa37
	.uleb128 0x6
	.byte	0x8
	.long	0xb3f
	.uleb128 0x6
	.byte	0x8
	.long	0xbea
	.uleb128 0x1b
	.long	0xc2
	.long	0x1255
	.uleb128 0x17
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1246
	.uleb128 0x4
	.long	0x34
	.long	0x1271
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	.LASF322
	.byte	0x5
	.value	0x1d7
	.long	0x1121
	.uleb128 0x10
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0x12e7
	.uleb128 0x11
	.long	.LASF323
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF324
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF325
	.byte	0x5
	.value	0x1df
	.long	0x12e7
	.byte	0x8
	.uleb128 0x12
	.long	.LASF326
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0x12
	.long	.LASF327
	.byte	0x5
	.value	0x1e1
	.long	0x12fd
	.value	0x32c
	.uleb128 0x12
	.long	.LASF328
	.byte	0x5
	.value	0x1e2
	.long	0x12fd
	.value	0x330
	.uleb128 0x12
	.long	.LASF329
	.byte	0x5
	.value	0x1e3
	.long	0x12fd
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0x12f7
	.long	0x12f7
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1271
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF330
	.uleb128 0x13
	.long	.LASF331
	.byte	0x5
	.value	0x1e4
	.long	0x127d
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0x131c
	.uleb128 0x6
	.byte	0x8
	.long	0x1322
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x4ac
	.uleb128 0x10
	.value	0xe08
	.byte	0x5
	.value	0x295
	.long	0x1b36
	.uleb128 0x11
	.long	.LASF332
	.byte	0x5
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF333
	.byte	0x5
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF334
	.byte	0x5
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x15
	.string	"qp0"
	.byte	0x5
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x15
	.string	"qpN"
	.byte	0x5
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF335
	.byte	0x5
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0x11
	.long	.LASF336
	.byte	0x5
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0x11
	.long	.LASF337
	.byte	0x5
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF338
	.byte	0x5
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0x11
	.long	.LASF111
	.byte	0x5
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0x11
	.long	.LASF339
	.byte	0x5
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0x11
	.long	.LASF340
	.byte	0x5
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF341
	.byte	0x5
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0x11
	.long	.LASF342
	.byte	0x5
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0x11
	.long	.LASF343
	.byte	0x5
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0x11
	.long	.LASF344
	.byte	0x5
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF345
	.byte	0x5
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0x11
	.long	.LASF346
	.byte	0x5
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0x11
	.long	.LASF347
	.byte	0x5
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0x11
	.long	.LASF348
	.byte	0x5
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0x11
	.long	.LASF349
	.byte	0x5
	.value	0x2b3
	.long	0x1b36
	.byte	0x50
	.uleb128 0x11
	.long	.LASF350
	.byte	0x5
	.value	0x2b4
	.long	0x1b36
	.byte	0x90
	.uleb128 0x11
	.long	.LASF351
	.byte	0x5
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0x11
	.long	.LASF352
	.byte	0x5
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0x11
	.long	.LASF353
	.byte	0x5
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0x11
	.long	.LASF354
	.byte	0x5
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0x11
	.long	.LASF355
	.byte	0x5
	.value	0x2b9
	.long	0x1b4c
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF356
	.byte	0x5
	.value	0x2ba
	.long	0x1b4c
	.value	0x1a8
	.uleb128 0x12
	.long	.LASF357
	.byte	0x5
	.value	0x2bb
	.long	0x1b4c
	.value	0x270
	.uleb128 0x12
	.long	.LASF358
	.byte	0x5
	.value	0x2bc
	.long	0x1b4c
	.value	0x338
	.uleb128 0x12
	.long	.LASF359
	.byte	0x5
	.value	0x2bd
	.long	0x1b4c
	.value	0x400
	.uleb128 0x12
	.long	.LASF360
	.byte	0x5
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0x12
	.long	.LASF361
	.byte	0x5
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0x12
	.long	.LASF362
	.byte	0x5
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0x12
	.long	.LASF363
	.byte	0x5
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x19
	.string	"qpB"
	.byte	0x5
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0x12
	.long	.LASF364
	.byte	0x5
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0x12
	.long	.LASF365
	.byte	0x5
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0x12
	.long	.LASF366
	.byte	0x5
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0x12
	.long	.LASF367
	.byte	0x5
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0x12
	.long	.LASF368
	.byte	0x5
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0x12
	.long	.LASF369
	.byte	0x5
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0x12
	.long	.LASF370
	.byte	0x5
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0x12
	.long	.LASF371
	.byte	0x5
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0x12
	.long	.LASF245
	.byte	0x5
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0x12
	.long	.LASF372
	.byte	0x5
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0x12
	.long	.LASF373
	.byte	0x5
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0x12
	.long	.LASF374
	.byte	0x5
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0x12
	.long	.LASF375
	.byte	0x5
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0x12
	.long	.LASF376
	.byte	0x5
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0x12
	.long	.LASF377
	.byte	0x5
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0x12
	.long	.LASF378
	.byte	0x5
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0x12
	.long	.LASF379
	.byte	0x5
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0x12
	.long	.LASF380
	.byte	0x5
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0x12
	.long	.LASF381
	.byte	0x5
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0x12
	.long	.LASF382
	.byte	0x5
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0x12
	.long	.LASF383
	.byte	0x5
	.value	0x2df
	.long	0x1b5c
	.value	0x52c
	.uleb128 0x12
	.long	.LASF384
	.byte	0x5
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0x12
	.long	.LASF385
	.byte	0x5
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0x12
	.long	.LASF386
	.byte	0x5
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0x12
	.long	.LASF387
	.byte	0x5
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0x12
	.long	.LASF388
	.byte	0x5
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0x12
	.long	.LASF389
	.byte	0x5
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0x12
	.long	.LASF390
	.byte	0x5
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0x12
	.long	.LASF391
	.byte	0x5
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0x12
	.long	.LASF392
	.byte	0x5
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0x12
	.long	.LASF393
	.byte	0x5
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0x12
	.long	.LASF394
	.byte	0x5
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0x12
	.long	.LASF395
	.byte	0x5
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0x12
	.long	.LASF396
	.byte	0x5
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0x12
	.long	.LASF397
	.byte	0x5
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0x12
	.long	.LASF398
	.byte	0x5
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0x12
	.long	.LASF399
	.byte	0x5
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0x12
	.long	.LASF400
	.byte	0x5
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0x12
	.long	.LASF401
	.byte	0x5
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0x12
	.long	.LASF402
	.byte	0x5
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0x12
	.long	.LASF403
	.byte	0x5
	.value	0x2f7
	.long	0xffc
	.value	0x978
	.uleb128 0x12
	.long	.LASF84
	.byte	0x5
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0x12
	.long	.LASF404
	.byte	0x5
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0x12
	.long	.LASF405
	.byte	0x5
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0x12
	.long	.LASF406
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0x12
	.long	.LASF407
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0x12
	.long	.LASF408
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0x12
	.long	.LASF409
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0x12
	.long	.LASF410
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0x12
	.long	.LASF411
	.byte	0x5
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0x12
	.long	.LASF412
	.byte	0x5
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0x12
	.long	.LASF413
	.byte	0x5
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0x12
	.long	.LASF414
	.byte	0x5
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0x12
	.long	.LASF415
	.byte	0x5
	.value	0x30a
	.long	0x1b4c
	.value	0x9b0
	.uleb128 0x12
	.long	.LASF416
	.byte	0x5
	.value	0x30b
	.long	0x1b4c
	.value	0xa78
	.uleb128 0x12
	.long	.LASF417
	.byte	0x5
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0x12
	.long	.LASF418
	.byte	0x5
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0x12
	.long	.LASF419
	.byte	0x5
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0x12
	.long	.LASF420
	.byte	0x5
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0x12
	.long	.LASF421
	.byte	0x5
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0x12
	.long	.LASF422
	.byte	0x5
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0x12
	.long	.LASF423
	.byte	0x5
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0x12
	.long	.LASF424
	.byte	0x5
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0x12
	.long	.LASF425
	.byte	0x5
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0x12
	.long	.LASF426
	.byte	0x5
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0x12
	.long	.LASF427
	.byte	0x5
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0x12
	.long	.LASF428
	.byte	0x5
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0x12
	.long	.LASF280
	.byte	0x5
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0x12
	.long	.LASF281
	.byte	0x5
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0x12
	.long	.LASF282
	.byte	0x5
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0x12
	.long	.LASF429
	.byte	0x5
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0x12
	.long	.LASF430
	.byte	0x5
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0x12
	.long	.LASF431
	.byte	0x5
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0x12
	.long	.LASF432
	.byte	0x5
	.value	0x327
	.long	0x1b4c
	.value	0xb88
	.uleb128 0x12
	.long	.LASF69
	.byte	0x5
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0x12
	.long	.LASF70
	.byte	0x5
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0x12
	.long	.LASF72
	.byte	0x5
	.value	0x32b
	.long	0x83
	.value	0xc58
	.uleb128 0x12
	.long	.LASF73
	.byte	0x5
	.value	0x32c
	.long	0x83
	.value	0xc60
	.uleb128 0x12
	.long	.LASF77
	.byte	0x5
	.value	0x32d
	.long	0x4ac
	.value	0xc68
	.uleb128 0x12
	.long	.LASF71
	.byte	0x5
	.value	0x32e
	.long	0x83
	.value	0xc70
	.uleb128 0x12
	.long	.LASF74
	.byte	0x5
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0x12
	.long	.LASF75
	.byte	0x5
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0x12
	.long	.LASF433
	.byte	0x5
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0x12
	.long	.LASF434
	.byte	0x5
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0x12
	.long	.LASF104
	.byte	0x5
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0x12
	.long	.LASF435
	.byte	0x5
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0x12
	.long	.LASF436
	.byte	0x5
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0x12
	.long	.LASF437
	.byte	0x5
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0x12
	.long	.LASF438
	.byte	0x5
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0x12
	.long	.LASF439
	.byte	0x5
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0x12
	.long	.LASF440
	.byte	0x5
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0x12
	.long	.LASF441
	.byte	0x5
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0x12
	.long	.LASF442
	.byte	0x5
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0x12
	.long	.LASF443
	.byte	0x5
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0x12
	.long	.LASF444
	.byte	0x5
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0x12
	.long	.LASF445
	.byte	0x5
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0x12
	.long	.LASF446
	.byte	0x5
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0x12
	.long	.LASF447
	.byte	0x5
	.value	0x346
	.long	0x48c
	.value	0xcbc
	.uleb128 0x12
	.long	.LASF448
	.byte	0x5
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0x12
	.long	.LASF449
	.byte	0x5
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0x12
	.long	.LASF450
	.byte	0x5
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0x12
	.long	.LASF451
	.byte	0x5
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0x12
	.long	.LASF452
	.byte	0x5
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0x12
	.long	.LASF453
	.byte	0x5
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0x12
	.long	.LASF85
	.byte	0x5
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0x12
	.long	.LASF86
	.byte	0x5
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0x12
	.long	.LASF454
	.byte	0x5
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0x12
	.long	.LASF455
	.byte	0x5
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0x12
	.long	.LASF456
	.byte	0x5
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0x12
	.long	.LASF457
	.byte	0x5
	.value	0x35c
	.long	0x1b6d
	.value	0xd08
	.uleb128 0x12
	.long	.LASF458
	.byte	0x5
	.value	0x35e
	.long	0x1b4c
	.value	0xd38
	.uleb128 0x12
	.long	.LASF459
	.byte	0x5
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1b4c
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x1b5c
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x1b6d
	.uleb128 0x1c
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0xffc
	.long	0x1b7d
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.long	.LASF460
	.byte	0x5
	.value	0x361
	.long	0x132e
	.uleb128 0x1d
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x256e
	.uleb128 0x11
	.long	.LASF461
	.byte	0x5
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x15
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF462
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0x11
	.long	.LASF463
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF464
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF465
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0x11
	.long	.LASF233
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0x11
	.long	.LASF466
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF111
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0x11
	.long	.LASF467
	.byte	0x5
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x15
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0x11
	.long	.LASF245
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF468
	.byte	0x5
	.value	0x372
	.long	0x12fd
	.byte	0x30
	.uleb128 0x11
	.long	.LASF469
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0x11
	.long	.LASF470
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0x11
	.long	.LASF471
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF472
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0x11
	.long	.LASF473
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0x11
	.long	.LASF474
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0x11
	.long	.LASF475
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0x11
	.long	.LASF476
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0x11
	.long	.LASF477
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0x11
	.long	.LASF478
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0x11
	.long	.LASF479
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF480
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0x11
	.long	.LASF481
	.byte	0x5
	.value	0x37f
	.long	0x1310
	.byte	0x68
	.uleb128 0x11
	.long	.LASF482
	.byte	0x5
	.value	0x380
	.long	0x1310
	.byte	0x70
	.uleb128 0x11
	.long	.LASF483
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0x11
	.long	.LASF484
	.byte	0x5
	.value	0x383
	.long	0x256e
	.byte	0x80
	.uleb128 0x11
	.long	.LASF485
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0x11
	.long	.LASF486
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0x11
	.long	.LASF487
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0x11
	.long	.LASF488
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0x11
	.long	.LASF489
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0x11
	.long	.LASF490
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF491
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF492
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0x11
	.long	.LASF493
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF494
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0x11
	.long	.LASF495
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF496
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0x11
	.long	.LASF497
	.byte	0x5
	.value	0x395
	.long	0x2574
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF498
	.byte	0x5
	.value	0x397
	.long	0x2590
	.value	0x12b8
	.uleb128 0x12
	.long	.LASF499
	.byte	0x5
	.value	0x398
	.long	0x25ac
	.value	0x1cb8
	.uleb128 0x12
	.long	.LASF500
	.byte	0x5
	.value	0x399
	.long	0x25c8
	.value	0x2138
	.uleb128 0x19
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x25ea
	.value	0x3138
	.uleb128 0x19
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x2600
	.value	0x3338
	.uleb128 0x12
	.long	.LASF501
	.byte	0x5
	.value	0x39d
	.long	0x2616
	.value	0x3738
	.uleb128 0x12
	.long	.LASF502
	.byte	0x5
	.value	0x39e
	.long	0x256e
	.value	0x3740
	.uleb128 0x12
	.long	.LASF503
	.byte	0x5
	.value	0x3a0
	.long	0x261c
	.value	0x3748
	.uleb128 0x12
	.long	.LASF504
	.byte	0x5
	.value	0x3a1
	.long	0x12f7
	.value	0x3750
	.uleb128 0x12
	.long	.LASF505
	.byte	0x5
	.value	0x3a2
	.long	0x2622
	.value	0x3758
	.uleb128 0x12
	.long	.LASF506
	.byte	0x5
	.value	0x3a3
	.long	0x2628
	.value	0x3760
	.uleb128 0x1e
	.long	.LASF507
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1e
	.long	.LASF508
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1f
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1e
	.long	.LASF509
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1e
	.long	.LASF510
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1e
	.long	.LASF511
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1e
	.long	.LASF512
	.byte	0x5
	.value	0x3ac
	.long	0x2639
	.long	0x11880
	.uleb128 0x1e
	.long	.LASF513
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1e
	.long	.LASF514
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1e
	.long	.LASF515
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1e
	.long	.LASF516
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1e
	.long	.LASF517
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1e
	.long	.LASF518
	.byte	0x5
	.value	0x3b4
	.long	0xffc
	.long	0x118d8
	.uleb128 0x1e
	.long	.LASF519
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1e
	.long	.LASF520
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1e
	.long	.LASF521
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1e
	.long	.LASF522
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1e
	.long	.LASF523
	.byte	0x5
	.value	0x3ba
	.long	0x264f
	.long	0x118f0
	.uleb128 0x1e
	.long	.LASF524
	.byte	0x5
	.value	0x3bb
	.long	0x264f
	.long	0x118f8
	.uleb128 0x1e
	.long	.LASF525
	.byte	0x5
	.value	0x3bd
	.long	0x264f
	.long	0x11900
	.uleb128 0x1e
	.long	.LASF526
	.byte	0x5
	.value	0x3be
	.long	0x264f
	.long	0x11908
	.uleb128 0x1e
	.long	.LASF273
	.byte	0x5
	.value	0x3bf
	.long	0x2673
	.long	0x11910
	.uleb128 0x1e
	.long	.LASF280
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1e
	.long	.LASF281
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1e
	.long	.LASF282
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1e
	.long	.LASF365
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1e
	.long	.LASF527
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1e
	.long	.LASF528
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1e
	.long	.LASF529
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1e
	.long	.LASF530
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1e
	.long	.LASF531
	.byte	0x5
	.value	0x3ce
	.long	0x2683
	.long	0x11950
	.uleb128 0x1e
	.long	.LASF532
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1e
	.long	.LASF533
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1e
	.long	.LASF534
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1e
	.long	.LASF535
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1e
	.long	.LASF536
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1e
	.long	.LASF537
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1e
	.long	.LASF538
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1e
	.long	.LASF104
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1e
	.long	.LASF107
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1e
	.long	.LASF110
	.byte	0x5
	.value	0x3e4
	.long	0x2699
	.long	0x11ae8
	.uleb128 0x1e
	.long	.LASF539
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1e
	.long	.LASF540
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1e
	.long	.LASF541
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1e
	.long	.LASF542
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1e
	.long	.LASF543
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1e
	.long	.LASF544
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1e
	.long	.LASF545
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1e
	.long	.LASF546
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1e
	.long	.LASF547
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1e
	.long	.LASF548
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1e
	.long	.LASF549
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1e
	.long	.LASF550
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1e
	.long	.LASF551
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1e
	.long	.LASF552
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1e
	.long	.LASF553
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1e
	.long	.LASF554
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1e
	.long	.LASF555
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1e
	.long	.LASF556
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1e
	.long	.LASF557
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1e
	.long	.LASF558
	.byte	0x5
	.value	0x409
	.long	0x26a9
	.long	0x11b40
	.uleb128 0x1e
	.long	.LASF436
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1e
	.long	.LASF559
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1e
	.long	.LASF560
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1e
	.long	.LASF561
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1e
	.long	.LASF562
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1e
	.long	.LASF563
	.byte	0x5
	.value	0x413
	.long	0xffc
	.long	0x11b60
	.uleb128 0x1e
	.long	.LASF564
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1e
	.long	.LASF565
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1e
	.long	.LASF566
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1e
	.long	.LASF567
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1e
	.long	.LASF568
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1e
	.long	.LASF569
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1e
	.long	.LASF570
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1e
	.long	.LASF571
	.byte	0x5
	.value	0x41b
	.long	0x26af
	.long	0x11b88
	.uleb128 0x1e
	.long	.LASF572
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1e
	.long	.LASF573
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1e
	.long	.LASF574
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1e
	.long	.LASF575
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1e
	.long	.LASF576
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1e
	.long	.LASF577
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1e
	.long	.LASF578
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1e
	.long	.LASF579
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1e
	.long	.LASF580
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1e
	.long	.LASF581
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1e
	.long	.LASF582
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1e
	.long	.LASF583
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1e
	.long	.LASF584
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1e
	.long	.LASF585
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1e
	.long	.LASF586
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1e
	.long	.LASF433
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1e
	.long	.LASF587
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1e
	.long	.LASF588
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1e
	.long	.LASF589
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1e
	.long	.LASF590
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1e
	.long	.LASF591
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1e
	.long	.LASF592
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1e
	.long	.LASF593
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1e
	.long	.LASF594
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1e
	.long	.LASF595
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1e
	.long	.LASF596
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1e
	.long	.LASF597
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1e
	.long	.LASF347
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1e
	.long	.LASF598
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1e
	.long	.LASF599
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1e
	.long	.LASF600
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1e
	.long	.LASF601
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1e
	.long	.LASF455
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1e
	.long	.LASF602
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1e
	.long	.LASF603
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1310
	.uleb128 0x4
	.long	0x42
	.long	0x2590
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
	.long	0x25ac
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
	.long	0x25c8
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
	.long	0x25ea
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
	.long	0x2600
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2616
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x256e
	.uleb128 0x6
	.byte	0x8
	.long	0x1304
	.uleb128 0x6
	.byte	0x8
	.long	0x1003
	.uleb128 0x4
	.long	0xd2e
	.long	0x2639
	.uleb128 0x1c
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x264f
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2655
	.uleb128 0x6
	.byte	0x8
	.long	0x265b
	.uleb128 0x6
	.byte	0x8
	.long	0x2661
	.uleb128 0x6
	.byte	0x8
	.long	0x2667
	.uleb128 0x6
	.byte	0x8
	.long	0x266d
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x2683
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2699
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x26a9
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc58
	.uleb128 0x6
	.byte	0x8
	.long	0xffc
	.uleb128 0x13
	.long	.LASF604
	.byte	0x5
	.value	0x449
	.long	0x1b89
	.uleb128 0x10
	.value	0x5d8
	.byte	0x5
	.value	0x44d
	.long	0x289e
	.uleb128 0x11
	.long	.LASF605
	.byte	0x5
	.value	0x44f
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF606
	.byte	0x5
	.value	0x450
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF607
	.byte	0x5
	.value	0x451
	.long	0x12fd
	.byte	0x8
	.uleb128 0x11
	.long	.LASF608
	.byte	0x5
	.value	0x452
	.long	0x12fd
	.byte	0xc
	.uleb128 0x11
	.long	.LASF609
	.byte	0x5
	.value	0x453
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF610
	.byte	0x5
	.value	0x454
	.long	0x34
	.byte	0x14
	.uleb128 0x11
	.long	.LASF611
	.byte	0x5
	.value	0x455
	.long	0x34
	.byte	0x18
	.uleb128 0x11
	.long	.LASF612
	.byte	0x5
	.value	0x456
	.long	0x34
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF613
	.byte	0x5
	.value	0x457
	.long	0x289e
	.byte	0x20
	.uleb128 0x11
	.long	.LASF614
	.byte	0x5
	.value	0x458
	.long	0x28b4
	.byte	0x48
	.uleb128 0x12
	.long	.LASF615
	.byte	0x5
	.value	0x459
	.long	0x28b4
	.value	0x174
	.uleb128 0x12
	.long	.LASF616
	.byte	0x5
	.value	0x45a
	.long	0xfec
	.value	0x2a0
	.uleb128 0x12
	.long	.LASF617
	.byte	0x5
	.value	0x45d
	.long	0x83
	.value	0x2b0
	.uleb128 0x12
	.long	.LASF618
	.byte	0x5
	.value	0x45e
	.long	0x83
	.value	0x2b8
	.uleb128 0x12
	.long	.LASF619
	.byte	0x5
	.value	0x45f
	.long	0x34
	.value	0x2c0
	.uleb128 0x12
	.long	.LASF620
	.byte	0x5
	.value	0x460
	.long	0x34
	.value	0x2c4
	.uleb128 0x12
	.long	.LASF621
	.byte	0x5
	.value	0x461
	.long	0x34
	.value	0x2c8
	.uleb128 0x12
	.long	.LASF622
	.byte	0x5
	.value	0x462
	.long	0x12fd
	.value	0x2cc
	.uleb128 0x12
	.long	.LASF623
	.byte	0x5
	.value	0x463
	.long	0x12fd
	.value	0x2d0
	.uleb128 0x12
	.long	.LASF624
	.byte	0x5
	.value	0x464
	.long	0x12fd
	.value	0x2d4
	.uleb128 0x12
	.long	.LASF625
	.byte	0x5
	.value	0x466
	.long	0x28b4
	.value	0x2d8
	.uleb128 0x12
	.long	.LASF626
	.byte	0x5
	.value	0x467
	.long	0x28b4
	.value	0x404
	.uleb128 0x12
	.long	.LASF627
	.byte	0x5
	.value	0x468
	.long	0x28ca
	.value	0x530
	.uleb128 0x12
	.long	.LASF628
	.byte	0x5
	.value	0x469
	.long	0x28ca
	.value	0x544
	.uleb128 0x12
	.long	.LASF629
	.byte	0x5
	.value	0x46a
	.long	0x28ca
	.value	0x558
	.uleb128 0x12
	.long	.LASF630
	.byte	0x5
	.value	0x46b
	.long	0x28ca
	.value	0x56c
	.uleb128 0x12
	.long	.LASF631
	.byte	0x5
	.value	0x46c
	.long	0x28ca
	.value	0x580
	.uleb128 0x12
	.long	.LASF632
	.byte	0x5
	.value	0x46d
	.long	0x28ca
	.value	0x594
	.uleb128 0x12
	.long	.LASF633
	.byte	0x5
	.value	0x46e
	.long	0x28ca
	.value	0x5a8
	.uleb128 0x12
	.long	.LASF634
	.byte	0x5
	.value	0x470
	.long	0x34
	.value	0x5bc
	.uleb128 0x12
	.long	.LASF635
	.byte	0x5
	.value	0x471
	.long	0x34
	.value	0x5c0
	.uleb128 0x12
	.long	.LASF636
	.byte	0x5
	.value	0x472
	.long	0x83
	.value	0x5c8
	.uleb128 0x12
	.long	.LASF637
	.byte	0x5
	.value	0x473
	.long	0x34
	.value	0x5d0
	.uleb128 0x12
	.long	.LASF638
	.byte	0x5
	.value	0x474
	.long	0x34
	.value	0x5d4
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x28b4
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x28ca
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x28da
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	.LASF639
	.byte	0x5
	.value	0x475
	.long	0x26c1
	.uleb128 0x20
	.long	.LASF640
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x2b5c
	.uleb128 0xb
	.long	.LASF466
	.byte	0x6
	.byte	0x17
	.long	0x7dd
	.byte	0
	.uleb128 0xf
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF641
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF642
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF643
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF644
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xb
	.long	.LASF645
	.byte	0x6
	.byte	0x1e
	.long	0x2b5c
	.byte	0x18
	.uleb128 0xc
	.long	.LASF646
	.byte	0x6
	.byte	0x1f
	.long	0x2b5c
	.value	0x648
	.uleb128 0xc
	.long	.LASF647
	.byte	0x6
	.byte	0x20
	.long	0x2b5c
	.value	0xc78
	.uleb128 0xc
	.long	.LASF648
	.byte	0x6
	.byte	0x21
	.long	0x2b5c
	.value	0x12a8
	.uleb128 0xc
	.long	.LASF547
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0xc
	.long	.LASF649
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0xc
	.long	.LASF228
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0xc
	.long	.LASF229
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0xc
	.long	.LASF650
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0xc
	.long	.LASF651
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0xc
	.long	.LASF652
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0xc
	.long	.LASF653
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0xc
	.long	.LASF654
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0xc
	.long	.LASF655
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0xc
	.long	.LASF656
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0xc
	.long	.LASF657
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0xc
	.long	.LASF658
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0xc
	.long	.LASF659
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0xc
	.long	.LASF538
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0xc
	.long	.LASF660
	.byte	0x6
	.byte	0x31
	.long	0x131c
	.value	0x1918
	.uleb128 0xc
	.long	.LASF661
	.byte	0x6
	.byte	0x32
	.long	0x1322
	.value	0x1920
	.uleb128 0xc
	.long	.LASF662
	.byte	0x6
	.byte	0x33
	.long	0x1322
	.value	0x1928
	.uleb128 0xc
	.long	.LASF663
	.byte	0x6
	.byte	0x34
	.long	0x131c
	.value	0x1930
	.uleb128 0xc
	.long	.LASF664
	.byte	0x6
	.byte	0x35
	.long	0x131c
	.value	0x1938
	.uleb128 0xc
	.long	.LASF665
	.byte	0x6
	.byte	0x36
	.long	0x1316
	.value	0x1940
	.uleb128 0xc
	.long	.LASF261
	.byte	0x6
	.byte	0x38
	.long	0x4ac
	.value	0x1948
	.uleb128 0xc
	.long	.LASF666
	.byte	0x6
	.byte	0x3a
	.long	0x2661
	.value	0x1950
	.uleb128 0xc
	.long	.LASF667
	.byte	0x6
	.byte	0x3c
	.long	0x2b72
	.value	0x1958
	.uleb128 0xc
	.long	.LASF668
	.byte	0x6
	.byte	0x3f
	.long	0x2b72
	.value	0x1960
	.uleb128 0x21
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x265b
	.value	0x1968
	.uleb128 0xc
	.long	.LASF669
	.byte	0x6
	.byte	0x44
	.long	0x1328
	.value	0x1970
	.uleb128 0xc
	.long	.LASF670
	.byte	0x6
	.byte	0x45
	.long	0x1328
	.value	0x1978
	.uleb128 0xc
	.long	.LASF530
	.byte	0x6
	.byte	0x47
	.long	0x2b84
	.value	0x1980
	.uleb128 0xc
	.long	.LASF671
	.byte	0x6
	.byte	0x48
	.long	0x2b84
	.value	0x1988
	.uleb128 0xc
	.long	.LASF672
	.byte	0x6
	.byte	0x49
	.long	0x2b84
	.value	0x1990
	.uleb128 0xc
	.long	.LASF98
	.byte	0x6
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0xc
	.long	.LASF115
	.byte	0x6
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0xc
	.long	.LASF118
	.byte	0x6
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0xc
	.long	.LASF119
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0xc
	.long	.LASF120
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0xc
	.long	.LASF121
	.byte	0x6
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0xc
	.long	.LASF122
	.byte	0x6
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0x694
	.long	0x2b72
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b78
	.uleb128 0x6
	.byte	0x8
	.long	0x2b7e
	.uleb128 0x6
	.byte	0x8
	.long	0x694
	.uleb128 0x6
	.byte	0x8
	.long	0x28e6
	.uleb128 0x7
	.long	.LASF673
	.byte	0x6
	.byte	0x52
	.long	0x28e6
	.uleb128 0x6
	.byte	0x8
	.long	0x2b8a
	.uleb128 0x22
	.long	.LASF678
	.byte	0x1
	.byte	0x38
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bc7
	.uleb128 0x23
	.long	.LASF215
	.byte	0x1
	.byte	0x38
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF674
	.byte	0x1
	.byte	0x69
	.long	0x34
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bf5
	.uleb128 0x25
	.string	"a"
	.byte	0x1
	.byte	0x69
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF675
	.byte	0x1
	.byte	0x6e
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c23
	.uleb128 0x25
	.string	"a"
	.byte	0x1
	.byte	0x6e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF744
	.byte	0x1
	.byte	0x7a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c69
	.uleb128 0x27
	.long	.LASF676
	.byte	0x1
	.byte	0x7f
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF677
	.byte	0x1
	.byte	0x80
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0x81
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF679
	.byte	0x1
	.byte	0xd2
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2da5
	.uleb128 0x23
	.long	.LASF215
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x23
	.long	.LASF261
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.string	"k"
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.string	"l"
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF680
	.byte	0x1
	.byte	0xd5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.long	.LASF676
	.byte	0x1
	.byte	0xd6
	.long	0x2622
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF681
	.byte	0x1
	.byte	0xd7
	.long	0x12f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF682
	.byte	0x1
	.byte	0xd8
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF683
	.byte	0x1
	.byte	0xd9
	.long	0x10e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"eep"
	.byte	0x1
	.byte	0xda
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF684
	.byte	0x1
	.byte	0xdb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF685
	.byte	0x1
	.byte	0xdc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x2d73
	.uleb128 0x2a
	.long	.LASF686
	.byte	0x1
	.value	0x10a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0x1d5
	.long	0x12f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF686
	.byte	0x1
	.value	0x1d7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF688
	.byte	0x1
	.value	0x257
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ea4
	.uleb128 0x2d
	.long	.LASF689
	.byte	0x1
	.value	0x257
	.long	0x2ea4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF690
	.byte	0x1
	.value	0x257
	.long	0x2ea4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x259
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0x25a
	.long	0x12f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x25b
	.long	0x2622
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0x25c
	.long	0x1103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0x25d
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0x25e
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF683
	.byte	0x1
	.value	0x25f
	.long	0x10e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF693
	.byte	0x1
	.value	0x260
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.string	"eep"
	.byte	0x1
	.value	0x261
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF680
	.byte	0x1
	.value	0x262
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF694
	.byte	0x1
	.value	0x263
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF695
	.byte	0x1
	.value	0x264
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	skip.4770
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc2
	.uleb128 0x2f
	.long	.LASF320
	.byte	0x1
	.value	0x343
	.long	0x34
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f35
	.uleb128 0x2d
	.long	.LASF693
	.byte	0x1
	.value	0x343
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0x345
	.long	0x12f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0x346
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF683
	.byte	0x1
	.value	0x347
	.long	0x10e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"eep"
	.byte	0x1
	.value	0x348
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x349
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF696
	.byte	0x1
	.value	0x34a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2c
	.long	.LASF697
	.byte	0x1
	.value	0x374
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3075
	.uleb128 0x2d
	.long	.LASF698
	.byte	0x1
	.value	0x374
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF699
	.byte	0x1
	.value	0x375
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2d
	.long	.LASF700
	.byte	0x1
	.value	0x376
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.string	"mv"
	.byte	0x1
	.value	0x377
	.long	0x266d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.string	"ref"
	.byte	0x1
	.value	0x378
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.long	.LASF701
	.byte	0x1
	.value	0x379
	.long	0x3075
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF702
	.byte	0x1
	.value	0x37b
	.long	0x131c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF703
	.byte	0x1
	.value	0x37c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.string	"j0"
	.byte	0x1
	.value	0x37d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"j1"
	.byte	0x1
	.value	0x37d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.string	"j2"
	.byte	0x1
	.value	0x37d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"j3"
	.byte	0x1
	.value	0x37d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.string	"i0"
	.byte	0x1
	.value	0x37e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"i1"
	.byte	0x1
	.value	0x37e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.string	"i2"
	.byte	0x1
	.value	0x37e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"i3"
	.byte	0x1
	.value	0x37e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF704
	.byte	0x1
	.value	0x380
	.long	0x309e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF345
	.byte	0x1
	.value	0x382
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF346
	.byte	0x1
	.value	0x383
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b95
	.uleb128 0x1b
	.long	0x42
	.long	0x309e
	.uleb128 0x17
	.long	0x131c
	.uleb128 0x17
	.long	0x34
	.uleb128 0x17
	.long	0x34
	.uleb128 0x17
	.long	0x34
	.uleb128 0x17
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x307b
	.uleb128 0x31
	.long	.LASF705
	.byte	0x1
	.value	0x3a2
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x30e1
	.uleb128 0x2d
	.long	.LASF698
	.byte	0x1
	.value	0x3a2
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF706
	.byte	0x1
	.value	0x3a3
	.long	0x30e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfec
	.uleb128 0x2c
	.long	.LASF707
	.byte	0x1
	.value	0x3be
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3278
	.uleb128 0x2d
	.long	.LASF487
	.byte	0x1
	.value	0x3be
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.long	.LASF488
	.byte	0x1
	.value	0x3bf
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF708
	.byte	0x1
	.value	0x3c0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.long	.LASF709
	.byte	0x1
	.value	0x3c1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LASF710
	.byte	0x1
	.value	0x3c2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2d
	.long	.LASF711
	.byte	0x1
	.value	0x3c3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF712
	.byte	0x1
	.value	0x3c4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2a
	.long	.LASF713
	.byte	0x1
	.value	0x3c6
	.long	0xfdc
	.uleb128 0x9
	.byte	0x3
	.quad	fw_pred.4834
	.uleb128 0x2a
	.long	.LASF714
	.byte	0x1
	.value	0x3c7
	.long	0xfdc
	.uleb128 0x9
	.byte	0x3
	.quad	bw_pred.4835
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x3c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x3c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF715
	.byte	0x1
	.value	0x3ca
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF716
	.byte	0x1
	.value	0x3cb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF717
	.byte	0x1
	.value	0x3cc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF718
	.byte	0x1
	.value	0x3cd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.string	"bx"
	.byte	0x1
	.value	0x3ce
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"by"
	.byte	0x1
	.value	0x3cf
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF719
	.byte	0x1
	.value	0x3d0
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF720
	.byte	0x1
	.value	0x3d1
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x3d2
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF721
	.byte	0x1
	.value	0x3d4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF722
	.byte	0x1
	.value	0x3d6
	.long	0x264f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF723
	.byte	0x1
	.value	0x3d8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x2c
	.long	.LASF724
	.byte	0x1
	.value	0x424
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3418
	.uleb128 0x2d
	.long	.LASF487
	.byte	0x1
	.value	0x424
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.long	.LASF488
	.byte	0x1
	.value	0x425
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF708
	.byte	0x1
	.value	0x426
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.long	.LASF709
	.byte	0x1
	.value	0x427
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LASF710
	.byte	0x1
	.value	0x428
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2d
	.long	.LASF711
	.byte	0x1
	.value	0x429
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF712
	.byte	0x1
	.value	0x42a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2d
	.long	.LASF701
	.byte	0x1
	.value	0x42b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF713
	.byte	0x1
	.value	0x42d
	.long	0xfdc
	.uleb128 0x9
	.byte	0x3
	.quad	fw_pred.4896
	.uleb128 0x2a
	.long	.LASF714
	.byte	0x1
	.value	0x42e
	.long	0xfdc
	.uleb128 0x9
	.byte	0x3
	.quad	bw_pred.4897
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x430
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x430
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF715
	.byte	0x1
	.value	0x431
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF716
	.byte	0x1
	.value	0x432
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF717
	.byte	0x1
	.value	0x433
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF718
	.byte	0x1
	.value	0x434
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.string	"bx"
	.byte	0x1
	.value	0x435
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"by"
	.byte	0x1
	.value	0x436
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF719
	.byte	0x1
	.value	0x437
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF720
	.byte	0x1
	.value	0x438
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x439
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF721
	.byte	0x1
	.value	0x43c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF723
	.byte	0x1
	.value	0x43f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF725
	.byte	0x1
	.value	0x441
	.long	0x264f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2f
	.long	.LASF726
	.byte	0x1
	.value	0x486
	.long	0x34
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x360c
	.uleb128 0x30
	.string	"cbp"
	.byte	0x1
	.value	0x486
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF252
	.byte	0x1
	.value	0x487
	.long	0x2b7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.long	.LASF727
	.byte	0x1
	.value	0x488
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2d
	.long	.LASF708
	.byte	0x1
	.value	0x489
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF709
	.byte	0x1
	.value	0x48a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2d
	.long	.LASF710
	.byte	0x1
	.value	0x48b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF728
	.byte	0x1
	.value	0x48c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.long	.LASF729
	.byte	0x1
	.value	0x48d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF488
	.byte	0x1
	.value	0x490
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF487
	.byte	0x1
	.value	0x490
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF700
	.byte	0x1
	.value	0x490
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF699
	.byte	0x1
	.value	0x490
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x490
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x490
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF730
	.byte	0x1
	.value	0x490
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF731
	.byte	0x1
	.value	0x490
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF732
	.byte	0x1
	.value	0x491
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF486
	.byte	0x1
	.value	0x492
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF485
	.byte	0x1
	.value	0x493
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF733
	.byte	0x1
	.value	0x494
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.string	"bxx"
	.byte	0x1
	.value	0x495
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.string	"byy"
	.byte	0x1
	.value	0x495
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF734
	.byte	0x1
	.value	0x496
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF735
	.byte	0x1
	.value	0x497
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x498
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF736
	.byte	0x1
	.value	0x49a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF737
	.byte	0x1
	.value	0x49c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF738
	.byte	0x1
	.value	0x49c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF739
	.byte	0x1
	.value	0x49c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF740
	.byte	0x1
	.value	0x49c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x31
	.long	.LASF741
	.byte	0x1
	.value	0x55f
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x36af
	.uleb128 0x30
	.string	"b8"
	.byte	0x1
	.value	0x55f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF708
	.byte	0x1
	.value	0x55f
	.long	0x266d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF709
	.byte	0x1
	.value	0x55f
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF710
	.byte	0x1
	.value	0x55f
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF742
	.byte	0x1
	.value	0x55f
	.long	0x266d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF743
	.byte	0x1
	.value	0x55f
	.long	0x266d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x561
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x562
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x563
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x32
	.long	.LASF745
	.byte	0x1
	.value	0x599
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3790
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x59b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x59b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF727
	.byte	0x1
	.value	0x59b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF746
	.byte	0x1
	.value	0x59b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF747
	.byte	0x1
	.value	0x59b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF709
	.byte	0x1
	.value	0x59c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF710
	.byte	0x1
	.value	0x59c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF708
	.byte	0x1
	.value	0x59d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x2a
	.long	.LASF748
	.byte	0x1
	.value	0x59d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.long	.LASF749
	.byte	0x1
	.value	0x59e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x59f
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2a
	.long	.LASF743
	.byte	0x1
	.value	0x5a7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF750
	.byte	0x1
	.value	0x5d3
	.long	0x34
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x390d
	.uleb128 0x2d
	.long	.LASF751
	.byte	0x1
	.value	0x5d3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x2d
	.long	.LASF752
	.byte	0x1
	.value	0x5d3
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2a
	.long	.LASF488
	.byte	0x1
	.value	0x5d5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x2a
	.long	.LASF487
	.byte	0x1
	.value	0x5d5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2a
	.long	.LASF700
	.byte	0x1
	.value	0x5d5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2a
	.long	.LASF699
	.byte	0x1
	.value	0x5d5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x5d5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x5d5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0x5d5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x2a
	.long	.LASF486
	.byte	0x1
	.value	0x5d6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2a
	.long	.LASF485
	.byte	0x1
	.value	0x5d6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x2a
	.long	.LASF727
	.byte	0x1
	.value	0x5d6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2a
	.long	.LASF709
	.byte	0x1
	.value	0x5d7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x2a
	.long	.LASF710
	.byte	0x1
	.value	0x5d7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2a
	.long	.LASF708
	.byte	0x1
	.value	0x5d8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -346
	.uleb128 0x2a
	.long	.LASF742
	.byte	0x1
	.value	0x5d8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2a
	.long	.LASF743
	.byte	0x1
	.value	0x5d8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -342
	.uleb128 0x2a
	.long	.LASF753
	.byte	0x1
	.value	0x5d9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x2a
	.long	.LASF754
	.byte	0x1
	.value	0x5da
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2a
	.long	.LASF755
	.byte	0x1
	.value	0x5da
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x2a
	.long	.LASF756
	.byte	0x1
	.value	0x5db
	.long	0x390d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2a
	.long	.LASF757
	.byte	0x1
	.value	0x5db
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x391d
	.uleb128 0x5
	.long	0x75
	.byte	0x3f
	.byte	0
	.uleb128 0x31
	.long	.LASF758
	.byte	0x1
	.value	0x621
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b29
	.uleb128 0x2d
	.long	.LASF698
	.byte	0x1
	.value	0x621
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF480
	.byte	0x1
	.value	0x622
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.long	.LASF759
	.byte	0x1
	.value	0x623
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.string	"mv"
	.byte	0x1
	.value	0x624
	.long	0x264f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF760
	.byte	0x1
	.value	0x625
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x30
	.string	"ref"
	.byte	0x1
	.value	0x626
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.long	.LASF761
	.byte	0x1
	.value	0x627
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"uv"
	.byte	0x1
	.value	0x628
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.string	"ii"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.string	"jj"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.string	"ii0"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"jj0"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.string	"ii1"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"jj1"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2e
	.string	"if0"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.string	"if1"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"jf0"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.string	"jf1"
	.byte	0x1
	.value	0x62a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"mvb"
	.byte	0x1
	.value	0x62b
	.long	0x266d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF762
	.byte	0x1
	.value	0x62c
	.long	0x131c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF763
	.byte	0x1
	.value	0x62d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.long	.LASF764
	.byte	0x1
	.value	0x62e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF765
	.byte	0x1
	.value	0x630
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF766
	.byte	0x1
	.value	0x631
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"f3"
	.byte	0x1
	.value	0x633
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.string	"f4"
	.byte	0x1
	.value	0x633
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF723
	.byte	0x1
	.value	0x635
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2a
	.long	.LASF767
	.byte	0x1
	.value	0x636
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF701
	.byte	0x1
	.value	0x638
	.long	0x3075
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF768
	.byte	0x1
	.value	0x63a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x31
	.long	.LASF769
	.byte	0x1
	.value	0x66f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b9d
	.uleb128 0x30
	.string	"uv"
	.byte	0x1
	.value	0x66f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF487
	.byte	0x1
	.value	0x670
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF488
	.byte	0x1
	.value	0x671
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF770
	.byte	0x1
	.value	0x673
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x674
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x674
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF771
	.byte	0x1
	.value	0x687
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ced
	.uleb128 0x30
	.string	"uv"
	.byte	0x1
	.value	0x687
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LASF487
	.byte	0x1
	.value	0x688
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF488
	.byte	0x1
	.value	0x689
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.long	.LASF708
	.byte	0x1
	.value	0x68a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF709
	.byte	0x1
	.value	0x68b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2d
	.long	.LASF710
	.byte	0x1
	.value	0x68c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF711
	.byte	0x1
	.value	0x68d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.long	.LASF712
	.byte	0x1
	.value	0x68e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF713
	.byte	0x1
	.value	0x690
	.long	0xfdc
	.uleb128 0x9
	.byte	0x3
	.quad	fw_pred.5192
	.uleb128 0x2a
	.long	.LASF714
	.byte	0x1
	.value	0x691
	.long	0xfdc
	.uleb128 0x9
	.byte	0x3
	.quad	bw_pred.5193
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x693
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x693
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF715
	.byte	0x1
	.value	0x694
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF716
	.byte	0x1
	.value	0x695
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF719
	.byte	0x1
	.value	0x696
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF720
	.byte	0x1
	.value	0x697
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF722
	.byte	0x1
	.value	0x698
	.long	0x264f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x69a
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF721
	.byte	0x1
	.value	0x69c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x2c
	.long	.LASF772
	.byte	0x1
	.value	0x6e9
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e37
	.uleb128 0x2d
	.long	.LASF773
	.byte	0x1
	.value	0x6e9
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2e
	.string	"uv"
	.byte	0x1
	.value	0x6eb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2a
	.long	.LASF774
	.byte	0x1
	.value	0x6eb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2a
	.long	.LASF488
	.byte	0x1
	.value	0x6eb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2a
	.long	.LASF487
	.byte	0x1
	.value	0x6eb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x6eb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x6eb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2a
	.long	.LASF709
	.byte	0x1
	.value	0x6ec
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2a
	.long	.LASF710
	.byte	0x1
	.value	0x6ec
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x2a
	.long	.LASF708
	.byte	0x1
	.value	0x6ed
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -270
	.uleb128 0x2a
	.long	.LASF748
	.byte	0x1
	.value	0x6ed
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2a
	.long	.LASF743
	.byte	0x1
	.value	0x6ed
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -266
	.uleb128 0x2a
	.long	.LASF735
	.byte	0x1
	.value	0x6ee
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2e
	.string	"yuv"
	.byte	0x1
	.value	0x6ef
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2a
	.long	.LASF775
	.byte	0x1
	.value	0x6f1
	.long	0x3e37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2a
	.long	.LASF737
	.byte	0x1
	.value	0x701
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2a
	.long	.LASF738
	.byte	0x1
	.value	0x701
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2a
	.long	.LASF739
	.byte	0x1
	.value	0x701
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2a
	.long	.LASF740
	.byte	0x1
	.value	0x701
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x3e53
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2c
	.long	.LASF776
	.byte	0x1
	.value	0x787
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x40fe
	.uleb128 0x2d
	.long	.LASF777
	.byte	0x1
	.value	0x787
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x2d
	.long	.LASF778
	.byte	0x1
	.value	0x787
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x2d
	.long	.LASF779
	.byte	0x1
	.value	0x787
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1032
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x78a
	.long	0x2622
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x78b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1000
	.uleb128 0x2e
	.string	"s0"
	.byte	0x1
	.value	0x78b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -996
	.uleb128 0x2e
	.string	"s1"
	.byte	0x1
	.value	0x78b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.uleb128 0x2e
	.string	"s2"
	.byte	0x1
	.value	0x78b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -988
	.uleb128 0x2e
	.string	"s3"
	.byte	0x1
	.value	0x78b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -984
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x78b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -980
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x78b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0x78b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -972
	.uleb128 0x2a
	.long	.LASF780
	.byte	0x1
	.value	0x78c
	.long	0x131c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x2a
	.long	.LASF487
	.byte	0x1
	.value	0x78d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -968
	.uleb128 0x2a
	.long	.LASF488
	.byte	0x1
	.value	0x78d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -964
	.uleb128 0x2a
	.long	.LASF781
	.byte	0x1
	.value	0x78e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -916
	.uleb128 0x2a
	.long	.LASF247
	.byte	0x1
	.value	0x78f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -960
	.uleb128 0x2a
	.long	.LASF248
	.byte	0x1
	.value	0x790
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x2a
	.long	.LASF782
	.byte	0x1
	.value	0x791
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -956
	.uleb128 0x2e
	.string	"ih"
	.byte	0x1
	.value	0x792
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -952
	.uleb128 0x2e
	.string	"iv"
	.byte	0x1
	.value	0x792
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -948
	.uleb128 0x2e
	.string	"ib"
	.byte	0x1
	.value	0x793
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -892
	.uleb128 0x2e
	.string	"ic"
	.byte	0x1
	.value	0x793
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x2e
	.string	"iaa"
	.byte	0x1
	.value	0x793
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -884
	.uleb128 0x2e
	.string	"uv"
	.byte	0x1
	.value	0x794
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.uleb128 0x2a
	.long	.LASF783
	.byte	0x1
	.value	0x795
	.long	0xfdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x2a
	.long	.LASF784
	.byte	0x1
	.value	0x795
	.long	0xfdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x2a
	.long	.LASF770
	.byte	0x1
	.value	0x796
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -940
	.uleb128 0x2a
	.long	.LASF785
	.byte	0x1
	.value	0x797
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x2a
	.long	.LASF752
	.byte	0x1
	.value	0x798
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -932
	.uleb128 0x2a
	.long	.LASF786
	.byte	0x1
	.value	0x799
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x2a
	.long	.LASF756
	.byte	0x1
	.value	0x79a
	.long	0xfdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x2e
	.string	"up"
	.byte	0x1
	.value	0x79b
	.long	0xba3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x2a
	.long	.LASF787
	.byte	0x1
	.value	0x79c
	.long	0x40fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2a
	.long	.LASF788
	.byte	0x1
	.value	0x79d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.uleb128 0x2a
	.long	.LASF789
	.byte	0x1
	.value	0x79e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -908
	.uleb128 0x2a
	.long	.LASF790
	.byte	0x1
	.value	0x7a1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -900
	.uleb128 0x2a
	.long	.LASF791
	.byte	0x1
	.value	0x7a2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x2e
	.string	"b8"
	.byte	0x1
	.value	0x7a3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -924
	.uleb128 0x2e
	.string	"b4"
	.byte	0x1
	.value	0x7a3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x2e
	.string	"yuv"
	.byte	0x1
	.value	0x7a4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x2a
	.long	.LASF792
	.byte	0x1
	.value	0x7a6
	.long	0x3e37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.byte	0
	.uleb128 0x4
	.long	0xba3
	.long	0x410e
	.uleb128 0x5
	.long	0x75
	.byte	0x10
	.byte	0
	.uleb128 0x33
	.long	.LASF793
	.byte	0x1
	.value	0x867
	.long	0x34
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x415a
	.uleb128 0x2d
	.long	.LASF676
	.byte	0x1
	.value	0x867
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x869
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x869
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF794
	.byte	0x1
	.value	0x87e
	.long	0x34
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x41e5
	.uleb128 0x2d
	.long	.LASF676
	.byte	0x1
	.value	0x87e
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF795
	.byte	0x1
	.value	0x880
	.long	0x41f5
	.uleb128 0x9
	.byte	0x3
	.quad	dir1offset.5468
	.uleb128 0x2a
	.long	.LASF796
	.byte	0x1
	.value	0x881
	.long	0x4210
	.uleb128 0x9
	.byte	0x3
	.quad	dir2offset.5469
	.uleb128 0x2a
	.long	.LASF797
	.byte	0x1
	.value	0x885
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF798
	.byte	0x1
	.value	0x885
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF799
	.byte	0x1
	.value	0x885
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x41f5
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x34
	.long	0x41e5
	.uleb128 0x4
	.long	0x34
	.long	0x4210
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x34
	.long	0x41fa
	.uleb128 0x2f
	.long	.LASF800
	.byte	0x1
	.value	0x8ac
	.long	0x34
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x4352
	.uleb128 0x2d
	.long	.LASF801
	.byte	0x1
	.value	0x8ac
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x8ae
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x8ae
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2a
	.long	.LASF802
	.byte	0x1
	.value	0x8ae
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2a
	.long	.LASF803
	.byte	0x1
	.value	0x8ae
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2e
	.string	"ii"
	.byte	0x1
	.value	0x8ae
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2e
	.string	"jj"
	.byte	0x1
	.value	0x8ae
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2a
	.long	.LASF727
	.byte	0x1
	.value	0x8af
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0x8b0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2a
	.long	.LASF805
	.byte	0x1
	.value	0x8b1
	.long	0xfdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2a
	.long	.LASF806
	.byte	0x1
	.value	0x8b1
	.long	0xfdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF807
	.byte	0x1
	.value	0x8b1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x8b2
	.long	0x2622
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0x8b3
	.long	0x1103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0x8b4
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0x8b5
	.long	0x12f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0x8b6
	.long	0x122e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0x8b7
	.long	0x4352
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4358
	.uleb128 0x34
	.long	0x34
	.uleb128 0x33
	.long	.LASF808
	.byte	0x1
	.value	0x8f6
	.long	0x34
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x43ca
	.uleb128 0x2d
	.long	.LASF253
	.byte	0x1
	.value	0x8f6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF254
	.byte	0x1
	.value	0x8f6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF809
	.byte	0x1
	.value	0x8f8
	.long	0x43ca
	.uleb128 0x9
	.byte	0x3
	.quad	b8start.5509
	.uleb128 0x2a
	.long	.LASF810
	.byte	0x1
	.value	0x8f9
	.long	0x43cf
	.uleb128 0x9
	.byte	0x3
	.quad	b8inc.5510
	.byte	0
	.uleb128 0x34
	.long	0x48c
	.uleb128 0x34
	.long	0x48c
	.uleb128 0x2f
	.long	.LASF811
	.byte	0x1
	.value	0x90b
	.long	0x34
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x450d
	.uleb128 0x2d
	.long	.LASF411
	.byte	0x1
	.value	0x90b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x90d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x90d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF781
	.byte	0x1
	.value	0x90e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0x90f
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF812
	.byte	0x1
	.value	0x910
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0x911
	.long	0x1103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0x912
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0x913
	.long	0x12f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0x914
	.long	0x122e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0x915
	.long	0x4352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF813
	.byte	0x1
	.value	0x916
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF695
	.byte	0x1
	.value	0x917
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF249
	.byte	0x1
	.value	0x918
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF814
	.byte	0x1
	.value	0x919
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF815
	.byte	0x1
	.value	0x91a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF816
	.byte	0x1
	.value	0x91b
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF817
	.byte	0x1
	.value	0x91d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x2c
	.long	.LASF818
	.byte	0x1
	.value	0xa7a
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4568
	.uleb128 0x30
	.string	"bit"
	.byte	0x1
	.value	0xa7a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0xa7c
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0xa7d
	.long	0x4352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF819
	.byte	0x1
	.value	0xa7e
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF820
	.byte	0x1
	.value	0xa93
	.long	0x34
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x45f5
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xa95
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0xa96
	.long	0x1103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0xa97
	.long	0x12f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0xa98
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0xa99
	.long	0x4352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0xa9a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0xa9b
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF821
	.byte	0x1
	.value	0xabc
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4623
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xabe
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF822
	.byte	0x1
	.value	0xad4
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4695
	.uleb128 0x2d
	.long	.LASF823
	.byte	0x1
	.value	0xad4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xad6
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0xad7
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0xad8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0xad8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF889
	.byte	0x1
	.value	0xada
	.long	0x34
	.byte	0
	.uleb128 0x33
	.long	.LASF824
	.byte	0x1
	.value	0xb1e
	.long	0x34
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x46c7
	.uleb128 0x2d
	.long	.LASF825
	.byte	0x1
	.value	0xb1e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF826
	.byte	0x1
	.value	0xb2b
	.long	0x34
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x47d0
	.uleb128 0x2d
	.long	.LASF770
	.byte	0x1
	.value	0xb2b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0xb2b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0xb2b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LASF827
	.byte	0x1
	.value	0xb2b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"ref"
	.byte	0x1
	.value	0xb2b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xb2d
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0xb2e
	.long	0x1103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0xb2f
	.long	0x12f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0xb30
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0xb31
	.long	0x4352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0xb32
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0xb33
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF723
	.byte	0x1
	.value	0xb34
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF828
	.byte	0x1
	.value	0xb35
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF829
	.byte	0x1
	.value	0xb36
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2f
	.long	.LASF830
	.byte	0x1
	.value	0xb77
	.long	0x34
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x496e
	.uleb128 0x30
	.string	"i0"
	.byte	0x1
	.value	0xb77
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x30
	.string	"j0"
	.byte	0x1
	.value	0xb78
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.string	"i1"
	.byte	0x1
	.value	0xb79
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x30
	.string	"j1"
	.byte	0x1
	.value	0xb7a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF748
	.byte	0x1
	.value	0xb7b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2d
	.long	.LASF760
	.byte	0x1
	.value	0xb7c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF831
	.byte	0x1
	.value	0xb7d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0xb7f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0xb7f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0xb7f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"l"
	.byte	0x1
	.value	0xb7f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.value	0xb7f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF832
	.byte	0x1
	.value	0xb80
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0xb81
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0xb83
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF833
	.byte	0x1
	.value	0xb84
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF834
	.byte	0x1
	.value	0xb85
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xb86
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0xb87
	.long	0x1103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0xb88
	.long	0x12f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0xb89
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0xb8a
	.long	0x4352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF835
	.byte	0x1
	.value	0xb8b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF524
	.byte	0x1
	.value	0xb8d
	.long	0x264f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF523
	.byte	0x1
	.value	0xb8e
	.long	0x264f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF836
	.byte	0x1
	.value	0xbd1
	.long	0x34
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a14
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0xbd3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"j0"
	.byte	0x1
	.value	0xbd3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"i0"
	.byte	0x1
	.value	0xbd3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF748
	.byte	0x1
	.value	0xbd3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xbd5
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF813
	.byte	0x1
	.value	0xbd6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF837
	.byte	0x1
	.value	0xbd7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF838
	.byte	0x1
	.value	0xbd8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF839
	.byte	0x1
	.value	0xbd9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x35
	.long	.LASF840
	.byte	0x1
	.value	0xc20
	.long	0x34
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b93
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0xc22
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xc23
	.long	0x2622
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0xc24
	.long	0x1103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0xc25
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0xc26
	.long	0x12f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0xc27
	.long	0x4352
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.string	"cbp"
	.byte	0x1
	.value	0xc28
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0xc29
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF841
	.byte	0x1
	.value	0xc2b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2e
	.string	"run"
	.byte	0x1
	.value	0xc2b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0xc2c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2e
	.string	"uv"
	.byte	0x1
	.value	0xc2c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2e
	.string	"b8"
	.byte	0x1
	.value	0xc2d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.string	"b4"
	.byte	0x1
	.value	0xc2d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2a
	.long	.LASF842
	.byte	0x1
	.value	0xc2d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF843
	.byte	0x1
	.value	0xc2e
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF844
	.byte	0x1
	.value	0xc2f
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF845
	.byte	0x1
	.value	0xc30
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF846
	.byte	0x1
	.value	0xc31
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF847
	.byte	0x1
	.value	0xc33
	.long	0x41e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.string	"yuv"
	.byte	0x1
	.value	0xc34
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2a
	.long	.LASF848
	.byte	0x1
	.value	0xc36
	.long	0x4b93
	.uleb128 0x9
	.byte	0x3
	.quad	chroma_ac_param.5694
	.byte	0
	.uleb128 0x4
	.long	0x3b
	.long	0x4baf
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2f
	.long	.LASF849
	.byte	0x1
	.value	0xccb
	.long	0x34
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cb8
	.uleb128 0x30
	.string	"b8"
	.byte	0x1
	.value	0xccb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.string	"b4"
	.byte	0x1
	.value	0xccb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF850
	.byte	0x1
	.value	0xccb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0xccd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xcce
	.long	0x2622
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0xccf
	.long	0x1103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0xcd0
	.long	0x12f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0xcd1
	.long	0x4352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0xcd2
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0xcd3
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF841
	.byte	0x1
	.value	0xcd5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.string	"run"
	.byte	0x1
	.value	0xcd5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0xcd6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF843
	.byte	0x1
	.value	0xcd7
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF844
	.byte	0x1
	.value	0xcd8
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2f
	.long	.LASF851
	.byte	0x1
	.value	0xcff
	.long	0x34
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4db2
	.uleb128 0x30
	.string	"b8"
	.byte	0x1
	.value	0xcff
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2d
	.long	.LASF852
	.byte	0x1
	.value	0xcff
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0xd01
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xd02
	.long	0x2622
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0xd03
	.long	0x1103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0xd04
	.long	0x12f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0xd05
	.long	0x4352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0xd06
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0xd07
	.long	0x122e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF841
	.byte	0x1
	.value	0xd09
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.string	"run"
	.byte	0x1
	.value	0xd09
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0xd0a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF843
	.byte	0x1
	.value	0xd0b
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF844
	.byte	0x1
	.value	0xd0c
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF853
	.byte	0x1
	.value	0xd38
	.long	0x34
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e2f
	.uleb128 0x2d
	.long	.LASF727
	.byte	0x1
	.value	0xd38
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF854
	.byte	0x1
	.value	0xd38
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF855
	.byte	0x1
	.value	0xd38
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.long	.LASF856
	.byte	0x1
	.value	0xd3a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0xd3a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF850
	.byte	0x1
	.value	0xd3b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF857
	.byte	0x1
	.value	0xd61
	.long	0x34
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fa4
	.uleb128 0x2a
	.long	.LASF485
	.byte	0x1
	.value	0xd63
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2a
	.long	.LASF486
	.byte	0x1
	.value	0xd63
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0xd63
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0xd63
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0xd63
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF841
	.byte	0x1
	.value	0xd64
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2e
	.string	"run"
	.byte	0x1
	.value	0xd64
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF804
	.byte	0x1
	.value	0xd65
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xd66
	.long	0x2622
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0xd67
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0xd68
	.long	0x1103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0xd69
	.long	0x12f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0xd6a
	.long	0x4352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.string	"cbp"
	.byte	0x1
	.value	0xd6b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0xd6c
	.long	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF858
	.byte	0x1
	.value	0xd6d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"b8"
	.byte	0x1
	.value	0xd6f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.string	"b4"
	.byte	0x1
	.value	0xd6f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2a
	.long	.LASF845
	.byte	0x1
	.value	0xd70
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF846
	.byte	0x1
	.value	0xd71
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF843
	.byte	0x1
	.value	0xd72
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF844
	.byte	0x1
	.value	0xd73
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF859
	.byte	0x1
	.value	0xe55
	.long	0x34
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x501f
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0xe55
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0xe55
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.string	"pix"
	.byte	0x1
	.value	0xe57
	.long	0xba3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF860
	.byte	0x1
	.value	0xe59
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.string	"cnt"
	.byte	0x1
	.value	0xe5a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF781
	.byte	0x1
	.value	0xe5b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2f
	.long	.LASF861
	.byte	0x1
	.value	0xe8b
	.long	0x34
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x50bd
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0xe8b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.value	0xe8b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.string	"pix"
	.byte	0x1
	.value	0xe8d
	.long	0xba3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF860
	.byte	0x1
	.value	0xe8f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"cnt"
	.byte	0x1
	.value	0xe90
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2a
	.long	.LASF781
	.byte	0x1
	.value	0xe91
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF862
	.byte	0x1
	.value	0xe92
	.long	0x50bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF863
	.byte	0x1
	.value	0xe93
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x50cd
	.uleb128 0x5
	.long	0x75
	.byte	0xb
	.byte	0
	.uleb128 0x2f
	.long	.LASF864
	.byte	0x1
	.value	0xeec
	.long	0x34
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x533b
	.uleb128 0x2d
	.long	.LASF865
	.byte	0x1
	.value	0xeec
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x30
	.string	"b8"
	.byte	0x1
	.value	0xeec
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x30
	.string	"b4"
	.byte	0x1
	.value	0xeec
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2d
	.long	.LASF842
	.byte	0x1
	.value	0xeec
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2a
	.long	.LASF813
	.byte	0x1
	.value	0xeee
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x2a
	.long	.LASF676
	.byte	0x1
	.value	0xeef
	.long	0x2622
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF691
	.byte	0x1
	.value	0xef0
	.long	0x1103
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF677
	.byte	0x1
	.value	0xef1
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0xef2
	.long	0x12f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF682
	.byte	0x1
	.value	0xef3
	.long	0x122e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0xef4
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0xef6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2a
	.long	.LASF841
	.byte	0x1
	.value	0xef6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2e
	.string	"run"
	.byte	0x1
	.value	0xef6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2a
	.long	.LASF866
	.byte	0x1
	.value	0xef6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2a
	.long	.LASF867
	.byte	0x1
	.value	0xef7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2a
	.long	.LASF868
	.byte	0x1
	.value	0xef7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2a
	.long	.LASF869
	.byte	0x1
	.value	0xef7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2a
	.long	.LASF870
	.byte	0x1
	.value	0xef8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2a
	.long	.LASF871
	.byte	0x1
	.value	0xef8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x2a
	.long	.LASF872
	.byte	0x1
	.value	0xef8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2a
	.long	.LASF873
	.byte	0x1
	.value	0xef8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2a
	.long	.LASF874
	.byte	0x1
	.value	0xef9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2a
	.long	.LASF875
	.byte	0x1
	.value	0xefa
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2a
	.long	.LASF876
	.byte	0x1
	.value	0xefa
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.long	.LASF877
	.byte	0x1
	.value	0xefb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2a
	.long	.LASF878
	.byte	0x1
	.value	0xefb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2e
	.string	"nnz"
	.byte	0x1
	.value	0xefc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2a
	.long	.LASF879
	.byte	0x1
	.value	0xefc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2e
	.string	"cdc"
	.byte	0x1
	.value	0xefc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2e
	.string	"cac"
	.byte	0x1
	.value	0xefc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF474
	.byte	0x1
	.value	0xefd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2a
	.long	.LASF475
	.byte	0x1
	.value	0xefd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF233
	.byte	0x1
	.value	0xefe
	.long	0x533b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF880
	.byte	0x1
	.value	0xf00
	.long	0x534b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF881
	.byte	0x1
	.value	0xf03
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF882
	.byte	0x1
	.value	0xf04
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x534b
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x535b
	.uleb128 0x5
	.long	0x75
	.byte	0x6
	.byte	0
	.uleb128 0x2f
	.long	.LASF883
	.byte	0x1
	.value	0x1082
	.long	0x34
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x5491
	.uleb128 0x2d
	.long	.LASF852
	.byte	0x1
	.value	0x1082
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2648
	.uleb128 0x2a
	.long	.LASF884
	.byte	0x1
	.value	0x1084
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2636
	.uleb128 0x2a
	.long	.LASF885
	.byte	0x1
	.value	0x1084
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2632
	.uleb128 0x2e
	.string	"M1"
	.byte	0x1
	.value	0x1085
	.long	0x2600
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2064
	.uleb128 0x2e
	.string	"M0"
	.byte	0x1
	.value	0x1085
	.long	0x5491
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x2e
	.string	"M3"
	.byte	0x1
	.value	0x1085
	.long	0xfec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2592
	.uleb128 0x2e
	.string	"M4"
	.byte	0x1
	.value	0x1085
	.long	0x2639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2544
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.value	0x1087
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2628
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.value	0x1087
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2624
	.uleb128 0x2e
	.string	"k"
	.byte	0x1
	.value	0x1087
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2620
	.uleb128 0x2e
	.string	"ii"
	.byte	0x1
	.value	0x1088
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2616
	.uleb128 0x2e
	.string	"jj"
	.byte	0x1
	.value	0x1088
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2612
	.uleb128 0x2a
	.long	.LASF781
	.byte	0x1
	.value	0x1089
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2596
	.uleb128 0x2e
	.string	"up"
	.byte	0x1
	.value	0x108b
	.long	0xba3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2576
	.uleb128 0x2a
	.long	.LASF787
	.byte	0x1
	.value	0x108c
	.long	0x40fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2480
	.uleb128 0x2a
	.long	.LASF886
	.byte	0x1
	.value	0x108e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2608
	.uleb128 0x2a
	.long	.LASF887
	.byte	0x1
	.value	0x108e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2604
	.uleb128 0x2a
	.long	.LASF888
	.byte	0x1
	.value	0x108e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2600
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x54b3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x37
	.long	.LASF890
	.byte	0x5
	.value	0x1ee
	.long	0x131c
	.uleb128 0x37
	.long	.LASF891
	.byte	0x5
	.value	0x1ef
	.long	0x1316
	.uleb128 0x37
	.long	.LASF892
	.byte	0x5
	.value	0x1f6
	.long	0x54d7
	.uleb128 0x6
	.byte	0x8
	.long	0x4b2
	.uleb128 0x37
	.long	.LASF893
	.byte	0x5
	.value	0x1f7
	.long	0x54e9
	.uleb128 0x6
	.byte	0x8
	.long	0x689
	.uleb128 0x37
	.long	.LASF894
	.byte	0x5
	.value	0x200
	.long	0x256e
	.uleb128 0x37
	.long	.LASF895
	.byte	0x5
	.value	0x201
	.long	0x256e
	.uleb128 0x37
	.long	.LASF896
	.byte	0x5
	.value	0x202
	.long	0x2616
	.uleb128 0x37
	.long	.LASF897
	.byte	0x5
	.value	0x203
	.long	0x34
	.uleb128 0x37
	.long	.LASF898
	.byte	0x5
	.value	0x204
	.long	0x34
	.uleb128 0x37
	.long	.LASF899
	.byte	0x5
	.value	0x205
	.long	0x34
	.uleb128 0x37
	.long	.LASF900
	.byte	0x5
	.value	0x206
	.long	0x34
	.uleb128 0x37
	.long	.LASF901
	.byte	0x5
	.value	0x209
	.long	0x131c
	.uleb128 0x37
	.long	.LASF902
	.byte	0x5
	.value	0x20a
	.long	0x131c
	.uleb128 0x37
	.long	.LASF903
	.byte	0x5
	.value	0x20c
	.long	0x1316
	.uleb128 0x37
	.long	.LASF904
	.byte	0x5
	.value	0x20d
	.long	0x1316
	.uleb128 0x37
	.long	.LASF905
	.byte	0x5
	.value	0x20f
	.long	0x131c
	.uleb128 0x37
	.long	.LASF906
	.byte	0x5
	.value	0x210
	.long	0x1316
	.uleb128 0x37
	.long	.LASF907
	.byte	0x5
	.value	0x21b
	.long	0x34
	.uleb128 0x4
	.long	0x7c
	.long	0x55a8
	.uleb128 0x1c
	.long	0x75
	.value	0x12b
	.byte	0
	.uleb128 0x37
	.long	.LASF908
	.byte	0x5
	.value	0x222
	.long	0x5597
	.uleb128 0x37
	.long	.LASF909
	.byte	0x5
	.value	0x225
	.long	0x2600
	.uleb128 0x37
	.long	.LASF910
	.byte	0x5
	.value	0x225
	.long	0x2600
	.uleb128 0x37
	.long	.LASF911
	.byte	0x5
	.value	0x225
	.long	0x2600
	.uleb128 0x37
	.long	.LASF912
	.byte	0x5
	.value	0x226
	.long	0x2600
	.uleb128 0x37
	.long	.LASF913
	.byte	0x5
	.value	0x226
	.long	0x2600
	.uleb128 0x37
	.long	.LASF914
	.byte	0x5
	.value	0x226
	.long	0x2600
	.uleb128 0x4
	.long	0x34
	.long	0x5618
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x37
	.long	.LASF915
	.byte	0x5
	.value	0x227
	.long	0x55fc
	.uleb128 0x38
	.string	"QP"
	.byte	0x1
	.byte	0x2c
	.long	0x34
	.uleb128 0x38
	.string	"QP2"
	.byte	0x1
	.byte	0x2c
	.long	0x34
	.uleb128 0x37
	.long	.LASF916
	.byte	0x5
	.value	0x4b7
	.long	0x5645
	.uleb128 0x6
	.byte	0x8
	.long	0x1b7d
	.uleb128 0x39
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x5657
	.uleb128 0x6
	.byte	0x8
	.long	0x26b5
	.uleb128 0x37
	.long	.LASF917
	.byte	0x5
	.value	0x4b9
	.long	0x5669
	.uleb128 0x6
	.byte	0x8
	.long	0x28da
	.uleb128 0x4
	.long	0x83
	.long	0x567f
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.long	.LASF918
	.byte	0x7
	.byte	0x68
	.long	0x566f
	.uleb128 0x3b
	.long	.LASF919
	.byte	0x8
	.byte	0x17
	.long	0x569f
	.uleb128 0x9
	.byte	0x3
	.quad	MODTAB
	.uleb128 0x34
	.long	0x125b
	.uleb128 0x4
	.long	0x3b
	.long	0x56c0
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
	.uleb128 0x3b
	.long	.LASF920
	.byte	0x8
	.byte	0x1f
	.long	0x56d5
	.uleb128 0x9
	.byte	0x3
	.quad	NCBP
	.uleb128 0x34
	.long	0x56a4
	.uleb128 0x3b
	.long	.LASF921
	.byte	0x8
	.byte	0x34
	.long	0x56ef
	.uleb128 0x9
	.byte	0x3
	.quad	subblk_offset_x
	.uleb128 0x34
	.long	0x4b93
	.uleb128 0x3b
	.long	.LASF922
	.byte	0x8
	.byte	0x52
	.long	0x5709
	.uleb128 0x9
	.byte	0x3
	.quad	subblk_offset_y
	.uleb128 0x34
	.long	0x4b93
	.uleb128 0x4
	.long	0x3075
	.long	0x571e
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x3a
	.long	.LASF923
	.byte	0x6
	.byte	0xa0
	.long	0x570e
	.uleb128 0x4
	.long	0x34
	.long	0x5739
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x3a
	.long	.LASF924
	.byte	0x6
	.byte	0xa1
	.long	0x5729
	.uleb128 0x3a
	.long	.LASF925
	.byte	0x9
	.byte	0x13
	.long	0x2b95
	.uleb128 0x3b
	.long	.LASF279
	.byte	0x1
	.byte	0x2a
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	predict_error
	.uleb128 0x3c
	.string	"dq"
	.byte	0x1
	.byte	0x2a
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	dq
	.uleb128 0x3a
	.long	.LASF926
	.byte	0x1
	.byte	0x2b
	.long	0x34
	.uleb128 0x3a
	.long	.LASF927
	.byte	0x1
	.byte	0x2b
	.long	0x34
	.uleb128 0x37
	.long	.LASF928
	.byte	0x1
	.value	0xaba
	.long	0x34
	.uleb128 0x37
	.long	.LASF889
	.byte	0x1
	.value	0xada
	.long	0x34
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
	.uleb128 0x5
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
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
.LASF622:
	.string	"bitrate_I"
.LASF590:
	.string	"bitdepth_luma_qp_scale"
.LASF445:
	.string	"channel_type"
.LASF841:
	.string	"level"
.LASF83:
	.string	"pic_init_qs_minus26"
.LASF673:
	.string	"StorablePicture"
.LASF591:
	.string	"bitdepth_chroma_qp_scale"
.LASF142:
	.string	"SE_LUM_DC_INTER"
.LASF556:
	.string	"no_output_of_prior_pics_flag"
.LASF155:
	.string	"BITS_INTER_MB"
.LASF528:
	.string	"num_ref_idx_l1_active"
.LASF539:
	.string	"pic_order_cnt_lsb"
.LASF741:
	.string	"SetModesAndRefframe"
.LASF580:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF54:
	.string	"max_bytes_per_pic_denom"
.LASF583:
	.string	"DeblockCall"
.LASF664:
	.string	"imgY_ups_w"
.LASF160:
	.string	"MAX_BITCOUNTER_MB"
.LASF717:
	.string	"pic_opix_x"
.LASF508:
	.string	"intra_block"
.LASF703:
	.string	"pix_add"
.LASF149:
	.string	"SE_EOS"
.LASF140:
	.string	"SE_CHR_AC_INTRA"
.LASF601:
	.string	"chroma_qp_offset"
.LASF470:
	.string	"width_cr"
.LASF809:
	.string	"b8start"
.LASF552:
	.string	"PicSizeInMbs"
.LASF59:
	.string	"max_dec_frame_buffering"
.LASF172:
	.string	"B_SLICE"
.LASF747:
	.string	"b8_y"
.LASF506:
	.string	"MB_SyntaxElements"
.LASF882:
	.string	"pRun"
.LASF662:
	.string	"imgY_11_w"
.LASF501:
	.string	"cofAC"
.LASF811:
	.string	"writeMBLayer"
.LASF446:
	.string	"ScalingMatrixPresentFlag"
.LASF598:
	.string	"lossless_qpprime_flag"
.LASF385:
	.string	"PocMemoryManagement"
.LASF516:
	.string	"imgtr_next_P_fld"
.LASF338:
	.string	"search_range"
.LASF531:
	.string	"mvscale"
.LASF126:
	.string	"int64"
.LASF325:
	.string	"slices"
.LASF228:
	.string	"long_term_pic_num"
.LASF39:
	.string	"matrix_coefficients"
.LASF482:
	.string	"ipredmode8x8"
.LASF486:
	.string	"mb_y"
.LASF21:
	.string	"vbr_cbr_flag"
.LASF724:
	.string	"LumaPrediction4x4Bi"
.LASF354:
	.string	"infile_header"
.LASF827:
	.string	"fwd_flag"
.LASF613:
	.string	"b8_mode_0_use"
.LASF404:
	.string	"full_search"
.LASF230:
	.string	"max_long_term_frame_idx_plus1"
.LASF87:
	.string	"deblocking_filter_control_present_flag"
.LASF440:
	.string	"DisplayEncParams"
.LASF851:
	.string	"writeLumaCoeff8x8_CABAC"
.LASF530:
	.string	"top_field"
.LASF88:
	.string	"constrained_intra_pred_flag"
.LASF192:
	.string	"state"
.LASF163:
	.string	"FIXED_RATE"
.LASF96:
	.string	"constrained_set3_flag"
.LASF400:
	.string	"Intra16x16ParDisable"
.LASF206:
	.string	"bcbp_contexts"
.LASF917:
	.string	"stats"
.LASF232:
	.string	"syntaxelement"
.LASF874:
	.string	"numcoeff_vlc"
.LASF22:
	.string	"initial_cpb_removal_delay_length_minus1"
.LASF363:
	.string	"successive_Bframe"
.LASF31:
	.string	"overscan_info_present_flag"
.LASF886:
	.string	"up_avail"
.LASF373:
	.string	"WeightedPrediction"
.LASF233:
	.string	"type"
.LASF521:
	.string	"fw_mb_mode"
.LASF696:
	.string	"size_in_bytes"
.LASF825:
	.string	"btype"
.LASF553:
	.string	"FrameSizeInMbs"
.LASF899:
	.string	"wp_luma_round"
.LASF668:
	.string	"ref_id"
.LASF45:
	.string	"time_scale"
.LASF280:
	.string	"LFDisableIdc"
.LASF658:
	.string	"chroma_vector_adjustment"
.LASF366:
	.string	"directInferenceFlag"
.LASF294:
	.string	"bits_to_go_skip"
.LASF523:
	.string	"pred_mv"
.LASF435:
	.string	"context_init_method"
.LASF856:
	.string	"block4x4"
.LASF437:
	.string	"AllowTransform8x8"
.LASF818:
	.string	"write_terminating_bit"
.LASF596:
	.string	"num_blk8x8_uv"
.LASF352:
	.string	"slice_argument"
.LASF311:
	.string	"rmpni_buffer"
.LASF374:
	.string	"WeightedBiprediction"
.LASF141:
	.string	"SE_CBP_INTER"
.LASF261:
	.string	"mb_field"
.LASF392:
	.string	"InterSearch8x8"
.LASF425:
	.string	"NumFramesInELSubSeq"
.LASF781:
	.string	"mb_nr"
.LASF229:
	.string	"long_term_frame_idx"
.LASF836:
	.string	"writeMotionInfo2NAL"
.LASF816:
	.string	"topMB"
.LASF648:
	.string	"bottom_ref_pic_num"
.LASF481:
	.string	"ipredmode"
.LASF729:
	.string	"bw_refframe"
.LASF379:
	.string	"RDBSliceWeightOnly"
.LASF930:
	.string	"macroblock.c"
.LASF253:
	.string	"b8mode"
.LASF757:
	.string	"diff_ptr"
.LASF630:
	.string	"tmp_bit_use_cbp"
.LASF839:
	.string	"step_v0"
.LASF277:
	.string	"prev_cbp"
.LASF131:
	.string	"SE_PTYPE"
.LASF147:
	.string	"SE_DELTA_QUANT_INTRA"
.LASF499:
	.string	"mprr_3"
.LASF756:
	.string	"diff"
.LASF287:
	.string	"bits_to_go"
.LASF225:
	.string	"DecRefPicMarking_s"
.LASF231:
	.string	"DecRefPicMarking_t"
.LASF23:
	.string	"cpb_removal_delay_length_minus1"
.LASF80:
	.string	"weighted_pred_flag"
.LASF712:
	.string	"bw_ref_idx"
.LASF831:
	.string	"mv_mode"
.LASF97:
	.string	"level_idc"
.LASF581:
	.string	"bot_MB"
.LASF879:
	.string	"max_coeff_num"
.LASF636:
	.string	"em_prev_bits"
.LASF736:
	.string	"need_8x8_transform"
.LASF579:
	.string	"BasicUnit"
.LASF111:
	.string	"num_ref_frames"
.LASF188:
	.string	"EcodestrmS"
.LASF29:
	.string	"sar_width"
.LASF159:
	.string	"BITS_DELTA_QUANT_MB"
.LASF817:
	.string	"WriteFrameFieldMBInHeader"
.LASF6:
	.string	"long int"
.LASF602:
	.string	"auto_crop_right"
.LASF50:
	.string	"vcl_hrd_parameters"
.LASF649:
	.string	"pic_num"
.LASF44:
	.string	"num_units_in_tick"
.LASF500:
	.string	"mprr_c"
.LASF270:
	.string	"all_blk_8x8"
.LASF413:
	.string	"nobskip"
.LASF554:
	.string	"nal_reference_idc"
.LASF545:
	.string	"framepoc"
.LASF687:
	.string	"currSlice"
.LASF893:
	.string	"active_sps"
.LASF560:
	.string	"NumberofTextureBits"
.LASF495:
	.string	"opix_c_x"
.LASF920:
	.string	"NCBP"
.LASF496:
	.string	"opix_c_y"
.LASF103:
	.string	"log2_max_frame_num_minus4"
.LASF132:
	.string	"SE_MBTYPE"
.LASF375:
	.string	"UseWeightedReferenceME"
.LASF651:
	.string	"used_for_reference"
.LASF427:
	.string	"RandomIntraMBRefresh"
.LASF582:
	.string	"write_macroblock_frame"
.LASF291:
	.string	"stored_byte_buf"
.LASF865:
	.string	"block_type"
.LASF152:
	.string	"BITS_HEADER"
.LASF460:
	.string	"InputParameters"
.LASF28:
	.string	"aspect_ratio_idc"
.LASF549:
	.string	"PicHeightInMapUnits"
.LASF866:
	.string	"vlcnum"
.LASF794:
	.string	"MBType2Value"
.LASF646:
	.string	"frm_ref_pic_num"
.LASF884:
	.string	"current_intra_sad_2"
.LASF568:
	.string	"NumberofGOP"
.LASF674:
	.string	"clip1a"
.LASF686:
	.string	"prev_mb"
.LASF768:
	.string	"curr_mb_field"
.LASF588:
	.string	"bitdepth_luma"
.LASF928:
	.string	"last_dquant"
.LASF769:
	.string	"IntraChromaPrediction4x4"
.LASF30:
	.string	"sar_height"
.LASF905:
	.string	"imgY_org_frm"
.LASF156:
	.string	"BITS_CBP_MB"
.LASF139:
	.string	"SE_LUM_AC_INTRA"
.LASF178:
	.string	"Ebuffer"
.LASF355:
	.string	"infile"
.LASF161:
	.string	"NO_SLICES"
.LASF357:
	.string	"ReconFile"
.LASF773:
	.string	"cr_cbp"
.LASF177:
	.string	"Erange"
.LASF151:
	.string	"SE_MAX_ELEMENTS"
.LASF852:
	.string	"intra_mode"
.LASF843:
	.string	"ACLevel"
.LASF4:
	.string	"signed char"
.LASF468:
	.string	"framerate"
.LASF306:
	.string	"max_part_nr"
.LASF191:
	.string	"EncodingEnvironmentPtr"
.LASF106:
	.string	"delta_pic_order_always_zero_flag"
.LASF485:
	.string	"mb_x"
.LASF260:
	.string	"IntraChromaPredModeFlag"
.LASF393:
	.string	"InterSearch8x4"
.LASF237:
	.string	"context"
.LASF62:
	.string	"pic_parameter_set_id"
.LASF127:
	.string	"FRAME_CODING"
.LASF315:
	.string	"long_term_pic_idx_l0"
.LASF319:
	.string	"long_term_pic_idx_l1"
.LASF312:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF316:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF778:
	.string	"mb_left"
.LASF570:
	.string	"NumberofPPicture"
.LASF777:
	.string	"mb_up"
.LASF565:
	.string	"NumberofMBHeaderBits"
.LASF502:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF902:
	.string	"imgY_org_bot"
.LASF251:
	.string	"intra_pred_modes8x8"
.LASF67:
	.string	"pic_scaling_list_present_flag"
.LASF114:
	.string	"pic_height_in_map_units_minus1"
.LASF370:
	.string	"BiPredMESubPel"
.LASF40:
	.string	"chroma_location_info_present_flag"
.LASF129:
	.string	"ADAPTIVE_CODING"
.LASF98:
	.string	"chroma_format_idc"
.LASF367:
	.string	"BiPredMotionEstimation"
.LASF525:
	.string	"bipred_mv1"
.LASF526:
	.string	"bipred_mv2"
.LASF208:
	.string	"last_contexts"
.LASF259:
	.string	"c_ipred_mode"
.LASF71:
	.string	"run_length_minus1"
.LASF595:
	.string	"max_imgpel_value_uv"
.LASF348:
	.string	"intra_upd"
.LASF313:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF317:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF314:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF318:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF431:
	.string	"SPPercentageThreshold"
.LASF854:
	.string	"block_mode"
.LASF870:
	.string	"numones"
.LASF288:
	.string	"byte_buf"
.LASF332:
	.string	"ProfileIDC"
.LASF273:
	.string	"bi_pred_me"
.LASF689:
	.string	"end_of_slice"
.LASF753:
	.string	"num_blks"
.LASF699:
	.string	"pic_pix_x"
.LASF700:
	.string	"pic_pix_y"
.LASF911:
	.string	"resTrans_B"
.LASF244:
	.string	"delta_qp"
.LASF676:
	.string	"currMB"
.LASF84:
	.string	"chroma_qp_index_offset"
.LASF694:
	.string	"new_slice"
.LASF17:
	.string	"bit_rate_scale"
.LASF629:
	.string	"bit_use_header"
.LASF8:
	.string	"char"
.LASF480:
	.string	"block_c_x"
.LASF759:
	.string	"block_c_y"
.LASF896:
	.string	"wbp_weight"
.LASF752:
	.string	"cost"
.LASF201:
	.string	"transform_size_contexts"
.LASF557:
	.string	"long_term_reference_flag"
.LASF342:
	.string	"Log2MaxFrameNum"
.LASF714:
	.string	"bw_pred"
.LASF772:
	.string	"ChromaResidualCoding"
.LASF476:
	.string	"is_intra_block"
.LASF305:
	.string	"start_mb_nr"
.LASF923:
	.string	"listX"
.LASF837:
	.string	"bframe"
.LASF441:
	.string	"RCEnable"
.LASF377:
	.string	"RDPictureIntra"
.LASF341:
	.string	"B_List1_refs"
.LASF215:
	.string	"mb_addr"
.LASF806:
	.string	"cont_array"
.LASF364:
	.string	"qpBRSOffset"
.LASF653:
	.string	"non_existing"
.LASF429:
	.string	"SparePictureOption"
.LASF153:
	.string	"BITS_TOTAL_MB"
.LASF718:
	.string	"pic_opix_y"
.LASF697:
	.string	"OneComponentLumaPrediction4x4"
.LASF406:
	.string	"qpN2"
.LASF846:
	.string	"DCRun"
.LASF720:
	.string	"bpred"
.LASF360:
	.string	"intra_period"
.LASF247:
	.string	"mb_available_up"
.LASF541:
	.string	"delta_pic_order_cnt"
.LASF19:
	.string	"bit_rate_value"
.LASF805:
	.string	"ipred_array"
.LASF395:
	.string	"InterSearch4x4"
.LASF804:
	.string	"rate"
.LASF797:
	.string	"mbtype"
.LASF394:
	.string	"InterSearch4x8"
.LASF931:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF762:
	.string	"refimage"
.LASF810:
	.string	"b8inc"
.LASF661:
	.string	"imgY_11"
.LASF559:
	.string	"NumberofHeaderBits"
.LASF409:
	.string	"qp02"
.LASF462:
	.string	"nb_references"
.LASF52:
	.string	"bitstream_restriction_flag"
.LASF175:
	.string	"SI_SLICE"
.LASF200:
	.string	"mb_aff_contexts"
.LASF271:
	.string	"luma_transform_size_8x8_flag"
.LASF447:
	.string	"ScalingListPresentFlag"
.LASF488:
	.string	"block_y"
.LASF380:
	.string	"SkipIntraInInterSlices"
.LASF43:
	.string	"timing_info_present_flag"
.LASF679:
	.string	"start_macroblock"
.LASF503:
	.string	"currentPicture"
.LASF196:
	.string	"b8_type_contexts"
.LASF91:
	.string	"pic_parameter_set_rbsp_t"
.LASF73:
	.string	"bottom_right"
.LASF162:
	.string	"FIXED_MB"
.LASF889:
	.string	"cabac_encoding"
.LASF519:
	.string	"p_interval"
.LASF331:
	.string	"Picture"
.LASF642:
	.string	"bottom_poc"
.LASF517:
	.string	"imgtr_last_P_fld"
.LASF751:
	.string	"block_check"
.LASF921:
	.string	"subblk_offset_x"
.LASF916:
	.string	"input"
.LASF416:
	.string	"LeakyBucketParamFile"
.LASF663:
	.string	"imgY_ups"
.LASF334:
	.string	"no_frames"
.LASF171:
	.string	"P_SLICE"
.LASF704:
	.string	"get_pel"
.LASF82:
	.string	"pic_init_qp_minus26"
.LASF345:
	.string	"img_width"
.LASF384:
	.string	"PyramidRefReorder"
.LASF754:
	.string	"cost8x8"
.LASF722:
	.string	"mv_array"
.LASF881:
	.string	"pLevel"
.LASF477:
	.string	"is_v_block"
.LASF92:
	.string	"profile_idc"
.LASF351:
	.string	"slice_mode"
.LASF898:
	.string	"chroma_log_weight_denom"
.LASF389:
	.string	"InterSearch16x16"
.LASF16:
	.string	"cpb_cnt"
.LASF479:
	.string	"mb_y_intra"
.LASF195:
	.string	"mb_type_contexts"
.LASF72:
	.string	"top_left"
.LASF295:
	.string	"streamBuffer"
.LASF186:
	.string	"Ebits_to_goS"
.LASF835:
	.string	"refindex"
.LASF652:
	.string	"is_output"
.LASF728:
	.string	"fw_refframe"
.LASF733:
	.string	"cbp_mask"
.LASF390:
	.string	"InterSearch16x8"
.LASF428:
	.string	"LFSendParameters"
.LASF832:
	.string	"curr_mvd"
.LASF571:
	.string	"MADofMB"
.LASF725:
	.string	"bipred_mv"
.LASF527:
	.string	"num_ref_idx_l0_active"
.LASF436:
	.string	"model_number"
.LASF401:
	.string	"Intra16x16PlaneDisable"
.LASF859:
	.string	"predict_nnz"
.LASF173:
	.string	"I_SLICE"
.LASF821:
	.string	"set_last_dquant"
.LASF292:
	.string	"byte_buf_skip"
.LASF369:
	.string	"BiPredMESearchRange"
.LASF788:
	.string	"cr_MB_x"
.LASF241:
	.string	"macroblock"
.LASF543:
	.string	"toppoc"
.LASF922:
	.string	"subblk_offset_y"
.LASF538:
	.string	"MbaffFrameFlag"
.LASF176:
	.string	"Elow"
.LASF55:
	.string	"max_bits_per_mb_denom"
.LASF493:
	.string	"opix_x"
.LASF444:
	.string	"basicunit"
.LASF641:
	.string	"top_poc"
.LASF417:
	.string	"PicInterlace"
.LASF304:
	.string	"picture_type"
.LASF320:
	.string	"slice_too_big"
.LASF112:
	.string	"gaps_in_frame_num_value_allowed_flag"
.LASF551:
	.string	"PicHeightInMbs"
.LASF454:
	.string	"lossless_qpprime_y_zero_flag"
.LASF90:
	.string	"vui_pic_parameters_flag"
.LASF640:
	.string	"storable_picture"
.LASF359:
	.string	"QmatrixFile"
.LASF749:
	.string	"sum_cnt_nonz"
.LASF914:
	.string	"rec_resB"
.LASF529:
	.string	"field_mode"
.LASF376:
	.string	"RDPictureDecision"
.LASF913:
	.string	"rec_resG"
.LASF808:
	.string	"B8Mode2Value"
.LASF51:
	.string	"low_delay_hrd_flag"
.LASF190:
	.string	"EncodingEnvironment"
.LASF301:
	.string	"writeSyntaxElement"
.LASF113:
	.string	"pic_width_in_mbs_minus1"
.LASF150:
	.string	"SE_TRANSFORM_SIZE_FLAG"
.LASF628:
	.string	"bit_use_mb_type"
.LASF0:
	.string	"long unsigned int"
.LASF204:
	.string	"cipr_contexts"
.LASF189:
	.string	"Ecodestrm_lenS"
.LASF57:
	.string	"log2_max_mv_length_horizontal"
.LASF41:
	.string	"chroma_location_frame"
.LASF125:
	.string	"seq_parameter_set_rbsp_t"
.LASF883:
	.string	"find_sad_16x16"
.LASF307:
	.string	"num_mb"
.LASF544:
	.string	"bottompoc"
.LASF137:
	.string	"SE_LUM_DC_INTRA"
.LASF632:
	.string	"bit_use_coeffC"
.LASF878:
	.string	"bitcounttype"
.LASF343:
	.string	"ResendPPS"
.LASF398:
	.string	"Intra4x4DiagDisable"
.LASF513:
	.string	"pstruct_next_P"
.LASF924:
	.string	"listXsize"
.LASF627:
	.string	"bit_use_stuffingBits"
.LASF257:
	.string	"lf_alpha_c0_offset"
.LASF603:
	.string	"auto_crop_bottom"
.LASF358:
	.string	"TraceFile"
.LASF888:
	.string	"left_up_avail"
.LASF638:
	.string	"bit_ctr_parametersets_n"
.LASF353:
	.string	"UseConstrainedIntraPred"
.LASF214:
	.string	"available"
.LASF834:
	.string	"step_v"
.LASF734:
	.string	"scrFlag"
.LASF572:
	.string	"BasicUnitQP"
.LASF24:
	.string	"dpb_output_delay_length_minus1"
.LASF564:
	.string	"NumberofMBTextureBits"
.LASF38:
	.string	"transfer_characteristics"
.LASF255:
	.string	"cbp_bits"
.LASF807:
	.string	"ipred_number"
.LASF709:
	.string	"fw_mode"
.LASF95:
	.string	"constrained_set2_flag"
.LASF639:
	.string	"StatParameters"
.LASF678:
	.string	"set_MB_parameters"
.LASF659:
	.string	"coded_frame"
.LASF643:
	.string	"frame_poc"
.LASF491:
	.string	"pix_c_x"
.LASF492:
	.string	"pix_c_y"
.LASF336:
	.string	"hadamard"
.LASF520:
	.string	"b_frame_to_code"
.LASF824:
	.string	"BType2CtxRef"
.LASF926:
	.string	"DELTA_QP"
.LASF738:
	.string	"residue_G"
.LASF326:
	.string	"bits_per_picture"
.LASF478:
	.string	"mb_y_upd"
.LASF459:
	.string	"OffsetMatrixPresentFlag"
.LASF758:
	.string	"OneComponentChromaPrediction4x4"
.LASF876:
	.string	"level_two_or_higher"
.LASF423:
	.string	"NoOfDecoders"
.LASF711:
	.string	"fw_ref_idx"
.LASF221:
	.string	"RMPNI"
.LASF181:
	.string	"Ecodestrm"
.LASF850:
	.string	"intra4x4mode"
.LASF169:
	.string	"BOTTOM_FIELD"
.LASF281:
	.string	"LFAlphaC0Offset"
.LASF681:
	.string	"curr_slice"
.LASF258:
	.string	"lf_beta_offset"
.LASF227:
	.string	"difference_of_pic_nums_minus1"
.LASF426:
	.string	"NumFrameIn2ndIGOP"
.LASF166:
	.string	"CABAC"
.LASF542:
	.string	"field_picture"
.LASF618:
	.string	"bit_use_mode_Bframe"
.LASF361:
	.string	"idr_enable"
.LASF497:
	.string	"mprr"
.LASF362:
	.string	"start_frame"
.LASF660:
	.string	"imgY"
.LASF202:
	.string	"MotionInfoContexts"
.LASF597:
	.string	"num_cdc_coeff"
.LASF887:
	.string	"left_avail"
.LASF9:
	.string	"long long int"
.LASF748:
	.string	"refframe"
.LASF784:
	.string	"vline"
.LASF78:
	.string	"num_ref_idx_l0_active_minus1"
.LASF518:
	.string	"b_interval"
.LASF179:
	.string	"Ebits_to_go"
.LASF510:
	.string	"fld_flag"
.LASF512:
	.string	"direct_intraP_ref"
.LASF469:
	.string	"width"
.LASF61:
	.string	"Valid"
.LASF249:
	.string	"mb_type"
.LASF290:
	.string	"stored_bits_to_go"
.LASF600:
	.string	"mb_cr_size_y"
.LASF688:
	.string	"terminate_macroblock"
.LASF110:
	.string	"offset_for_ref_frame"
.LASF702:
	.string	"ref_pic"
.LASF633:
	.string	"bit_use_delta_quant"
.LASF243:
	.string	"slice_nr"
.LASF143:
	.string	"SE_CHR_DC_INTER"
.LASF329:
	.string	"distortion_v"
.LASF327:
	.string	"distortion_y"
.LASF293:
	.string	"byte_pos_skip"
.LASF282:
	.string	"LFBetaOffset"
.LASF101:
	.string	"bit_depth_luma_minus8"
.LASF284:
	.string	"double"
.LASF94:
	.string	"constrained_set1_flag"
.LASF430:
	.string	"SPDetectionThreshold"
.LASF708:
	.string	"p_dir"
.LASF672:
	.string	"frame"
.LASF289:
	.string	"stored_byte_pos"
.LASF455:
	.string	"residue_transform_flag"
.LASF136:
	.string	"SE_CBP_INTRA"
.LASF631:
	.string	"bit_use_coeffY"
.LASF715:
	.string	"block_x4"
.LASF515:
	.string	"imgtr_last_P_frm"
.LASF890:
	.string	"imgY_org"
.LASF755:
	.string	"cost4x4"
.LASF871:
	.string	"totzeros"
.LASF148:
	.string	"SE_BFRAME"
.LASF695:
	.string	"skip"
.LASF209:
	.string	"one_contexts"
.LASF657:
	.string	"size_y_cr"
.LASF418:
	.string	"MbInterlace"
.LASF635:
	.string	"em_prev_bits_fld"
.LASF875:
	.string	"code"
.LASF245:
	.string	"qpsp"
.LASF330:
	.string	"float"
.LASF276:
	.string	"prev_delta_qp"
.LASF439:
	.string	"ReportFrameStats"
.LASF382:
	.string	"PyramidCoding"
.LASF164:
	.string	"CALLBACK"
.LASF193:
	.string	"count"
.LASF117:
	.string	"direct_8x8_inference_flag"
.LASF386:
	.string	"symbol_mode"
.LASF333:
	.string	"LevelIDC"
.LASF822:
	.string	"write_one_macroblock"
.LASF194:
	.string	"BiContextType"
.LASF918:
	.string	"assignSE2partition"
.LASF56:
	.string	"log2_max_mv_length_vertical"
.LASF713:
	.string	"fw_pred"
.LASF511:
	.string	"rd_pass"
.LASF507:
	.string	"quad"
.LASF3:
	.string	"unsigned int"
.LASF786:
	.string	"min_cost"
.LASF744:
	.string	"proceed2nextMacroblock"
.LASF218:
	.string	"PixelPos"
.LASF210:
	.string	"abs_contexts"
.LASF617:
	.string	"mode_use_Bframe"
.LASF180:
	.string	"Ebits_to_follow"
.LASF892:
	.string	"active_pps"
.LASF296:
	.string	"write_flag"
.LASF464:
	.string	"total_number_mb"
.LASF86:
	.string	"cr_qp_index_offset"
.LASF182:
	.string	"Ecodestrm_len"
.LASF310:
	.string	"tex_ctx"
.LASF371:
	.string	"sp_periodicity"
.LASF793:
	.string	"ZeroRef"
.LASF105:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF656:
	.string	"size_x_cr"
.LASF569:
	.string	"TotalQpforPPicture"
.LASF248:
	.string	"mb_available_left"
.LASF220:
	.string	"RMPNIbuffer_s"
.LASF224:
	.string	"RMPNIbuffer_t"
.LASF134:
	.string	"SE_INTRAPREDMODE"
.LASF433:
	.string	"slice_group_change_cycle"
.LASF457:
	.string	"LambdaWeight"
.LASF780:
	.string	"image"
.LASF213:
	.string	"TextureInfoContexts"
.LASF671:
	.string	"bottom_field"
.LASF463:
	.string	"current_mb_nr"
.LASF607:
	.string	"bitr"
.LASF414:
	.string	"NumberLeakyBuckets"
.LASF645:
	.string	"ref_pic_num"
.LASF534:
	.string	"layer"
.LASF872:
	.string	"zerosleft"
.LASF254:
	.string	"b8pdir"
.LASF323:
	.string	"no_slices"
.LASF858:
	.string	"need_transform_size_flag"
.LASF698:
	.string	"mpred"
.LASF108:
	.string	"offset_for_top_to_bottom_field"
.LASF145:
	.string	"SE_CHR_AC_INTER"
.LASF802:
	.string	"bs_x"
.LASF122:
	.string	"frame_cropping_rect_bottom_offset"
.LASF785:
	.string	"best_mode"
.LASF514:
	.string	"imgtr_next_P_frm"
.LASF574:
	.string	"FieldControl"
.LASF566:
	.string	"NumberofCodedBFrame"
.LASF701:
	.string	"list"
.LASF533:
	.string	"i16offset"
.LASF33:
	.string	"video_signal_type_present_flag"
.LASF823:
	.string	"eos_bit"
.LASF219:
	.string	"pix_pos"
.LASF372:
	.string	"qpsp_pred"
.LASF706:
	.string	"block"
.LASF614:
	.string	"mode_use_transform_8x8"
.LASF864:
	.string	"writeCoeff4x4_CAVLC"
.LASF104:
	.string	"pic_order_cnt_type"
.LASF328:
	.string	"distortion_u"
.LASF383:
	.string	"ExplicitPyramidFormat"
.LASF489:
	.string	"pix_x"
.LASF490:
	.string	"pix_y"
.LASF800:
	.string	"writeIntra4x4Modes"
.LASF929:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF873:
	.string	"numcoef"
.LASF789:
	.string	"cr_MB_y"
.LASF599:
	.string	"mb_cr_size_x"
.LASF925:
	.string	"enc_picture"
.LASF604:
	.string	"ImageParameters"
.LASF767:
	.string	"max_y_cr"
.LASF877:
	.string	"dptype"
.LASF300:
	.string	"ee_cabac"
.LASF719:
	.string	"fpred"
.LASF927:
	.string	"DELTA_QP2"
.LASF13:
	.string	"FALSE"
.LASF118:
	.string	"frame_cropping_flag"
.LASF670:
	.string	"field_frame"
.LASF731:
	.string	"cbp_blk_mask"
.LASF763:
	.string	"f1_x"
.LASF765:
	.string	"f1_y"
.LASF344:
	.string	"GenerateMultiplePPS"
.LASF128:
	.string	"FIELD_CODING"
.LASF337:
	.string	"hadamardqpel"
.LASF216:
	.string	"pos_x"
.LASF217:
	.string	"pos_y"
.LASF397:
	.string	"Intra4x4ParDisable"
.LASF610:
	.string	"bit_ctr_n"
.LASF792:
	.string	"block_pos"
.LASF487:
	.string	"block_x"
.LASF415:
	.string	"LeakyBucketRateFile"
.LASF42:
	.string	"chroma_location_field"
.LASF812:
	.string	"prevMB"
.LASF903:
	.string	"imgUV_org_top"
.LASF350:
	.string	"part_size"
.LASF388:
	.string	"partition_mode"
.LASF912:
	.string	"rec_resR"
.LASF750:
	.string	"TransformDecision"
.LASF585:
	.string	"last_has_mmco_5"
.LASF100:
	.string	"seq_scaling_list_present_flag"
.LASF795:
	.string	"dir1offset"
.LASF212:
	.string	"fld_last_contexts"
.LASF107:
	.string	"offset_for_non_ref_pic"
.LASF675:
	.string	"clip1a_chr"
.LASF120:
	.string	"frame_cropping_rect_right_offset"
.LASF89:
	.string	"redundant_pic_cnt_present_flag"
.LASF283:
	.string	"skip_flag"
.LASF547:
	.string	"frame_num"
.LASF207:
	.string	"map_contexts"
.LASF432:
	.string	"SliceGroupConfigFileName"
.LASF174:
	.string	"SP_SLICE"
.LASF226:
	.string	"memory_management_control_operation"
.LASF419:
	.string	"IntraBottom"
.LASF621:
	.string	"bit_ctr_B"
.LASF297:
	.string	"Bitstream"
.LASF458:
	.string	"QOffsetMatrixFile"
.LASF340:
	.string	"B_List0_refs"
.LASF838:
	.string	"step_h0"
.LASF619:
	.string	"bit_ctr_I"
.LASF901:
	.string	"imgY_org_top"
.LASF536:
	.string	"NoResidueDirect"
.LASF116:
	.string	"mb_adaptive_frame_field_flag"
.LASF620:
	.string	"bit_ctr_P"
.LASF578:
	.string	"NumberofCodedMacroBlocks"
.LASF49:
	.string	"vcl_hrd_parameters_present_flag"
.LASF64:
	.string	"entropy_coding_mode_flag"
.LASF236:
	.string	"bitpattern"
.LASF584:
	.string	"last_pic_bottom_field"
.LASF303:
	.string	"picture_id"
.LASF745:
	.string	"LumaResidualCoding"
.LASF115:
	.string	"frame_mbs_only_flag"
.LASF791:
	.string	"blk_y"
.LASF509:
	.string	"fld_type"
.LASF26:
	.string	"hrd_parameters_t"
.LASF779:
	.string	"mb_up_left"
.LASF567:
	.string	"NumberofCodedPFrame"
.LASF79:
	.string	"num_ref_idx_l1_active_minus1"
.LASF450:
	.string	"BitDepthChroma"
.LASF10:
	.string	"long long unsigned int"
.LASF154:
	.string	"BITS_MB_MODE"
.LASF589:
	.string	"bitdepth_chroma"
.LASF368:
	.string	"BiPredMERefinements"
.LASF677:
	.string	"bitCount"
.LASF774:
	.string	"block8"
.LASF847:
	.string	"chroma_dc_context"
.LASF684:
	.string	"max_qp_delta"
.LASF25:
	.string	"time_offset_length"
.LASF472:
	.string	"height_cr"
.LASF524:
	.string	"all_mv"
.LASF408:
	.string	"qp2start"
.LASF796:
	.string	"dir2offset"
.LASF471:
	.string	"height"
.LASF466:
	.string	"structure"
.LASF321:
	.string	"field_ctx"
.LASF81:
	.string	"weighted_bipred_idc"
.LASF302:
	.string	"DataPartition"
.LASF146:
	.string	"SE_DELTA_QUANT_INTER"
.LASF742:
	.string	"fw_ref"
.LASF505:
	.string	"mb_data"
.LASF121:
	.string	"frame_cropping_rect_top_offset"
.LASF443:
	.string	"SeinitialQP"
.LASF910:
	.string	"resTrans_G"
.LASF562:
	.string	"NumberofBasicUnitTextureBits"
.LASF819:
	.string	"eep_dp"
.LASF109:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF909:
	.string	"resTrans_R"
.LASF322:
	.string	"Slice"
.LASF813:
	.string	"no_bits"
.LASF298:
	.string	"datapartition"
.LASF187:
	.string	"Ebits_to_followS"
.LASF53:
	.string	"motion_vectors_over_pic_boundaries_flag"
.LASF473:
	.string	"height_cr_frame"
.LASF853:
	.string	"writeLumaCoeff8x8"
.LASF868:
	.string	"lastcoeff"
.LASF760:
	.string	"list_idx"
.LASF576:
	.string	"Frame_Total_Number_MB"
.LASF869:
	.string	"numtrailingones"
.LASF692:
	.string	"partMap"
.LASF234:
	.string	"value1"
.LASF235:
	.string	"value2"
.LASF250:
	.string	"intra_pred_modes"
.LASF165:
	.string	"UVLC"
.LASF637:
	.string	"bit_ctr_parametersets"
.LASF634:
	.string	"em_prev_bits_frm"
.LASF119:
	.string	"frame_cropping_rect_left_offset"
.LASF453:
	.string	"rgb_input_flag"
.LASF299:
	.string	"bitstream"
.LASF829:
	.string	"flag_mode"
.LASF339:
	.string	"P_List0_refs"
.LASF424:
	.string	"RestrictRef"
.LASF716:
	.string	"block_y4"
.LASF647:
	.string	"top_ref_pic_num"
.LASF682:
	.string	"dataPart"
.LASF855:
	.string	"transform_size_flag"
.LASF183:
	.string	"ElowS"
.LASF609:
	.string	"bit_ctr"
.LASF885:
	.string	"best_intra_sad2"
.LASF70:
	.string	"slice_group_map_type"
.LASF605:
	.string	"quant0"
.LASF606:
	.string	"quant1"
.LASF48:
	.string	"nal_hrd_parameters"
.LASF790:
	.string	"blk_x"
.LASF907:
	.string	"intras"
.LASF844:
	.string	"ACRun"
.LASF15:
	.string	"Boolean"
.LASF895:
	.string	"wp_offset"
.LASF387:
	.string	"of_mode"
.LASF904:
	.string	"imgUV_org_bot"
.LASF592:
	.string	"bitdepth_lambda_scale"
.LASF412:
	.string	"disthres"
.LASF535:
	.string	"old_layer"
.LASF461:
	.string	"number"
.LASF467:
	.string	"max_num_references"
.LASF27:
	.string	"aspect_ratio_info_present_flag"
.LASF144:
	.string	"SE_LUM_AC_INTER"
.LASF410:
	.string	"qpBRS2Offset"
.LASF867:
	.string	"numcoeff"
.LASF594:
	.string	"max_imgpel_value"
.LASF548:
	.string	"PicWidthInMbs"
.LASF63:
	.string	"seq_parameter_set_id"
.LASF861:
	.string	"predict_nnz_chroma"
.LASF420:
	.string	"LossRateA"
.LASF421:
	.string	"LossRateB"
.LASF422:
	.string	"LossRateC"
.LASF587:
	.string	"pic_unit_size_on_disk"
.LASF593:
	.string	"dc_pred_value"
.LASF378:
	.string	"RDPSliceWeightOnly"
.LASF452:
	.string	"img_width_cr"
.LASF36:
	.string	"colour_description_present_flag"
.LASF130:
	.string	"SE_HEADER"
.LASF739:
	.string	"residue_B"
.LASF102:
	.string	"bit_depth_chroma_minus8"
.LASF285:
	.string	"Macroblock"
.LASF198:
	.string	"ref_no_contexts"
.LASF349:
	.string	"blc_size"
.LASF558:
	.string	"dec_ref_pic_marking_buffer"
.LASF167:
	.string	"FRAME"
.LASF615:
	.string	"mode_use_transform_4x4"
.LASF900:
	.string	"wp_chroma_round"
.LASF555:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF158:
	.string	"BITS_COEFF_UV_MB"
.LASF683:
	.string	"currStream"
.LASF12:
	.string	"byte"
.LASF897:
	.string	"luma_log_weight_denom"
.LASF737:
	.string	"residue_R"
.LASF223:
	.string	"Next"
.LASF381:
	.string	"BRefPictures"
.LASF222:
	.string	"Data"
.LASF803:
	.string	"bs_y"
.LASF573:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF644:
	.string	"order_num"
.LASF669:
	.string	"moving_block"
.LASF47:
	.string	"nal_hrd_parameters_present_flag"
.LASF494:
	.string	"opix_y"
.LASF347:
	.string	"yuv_format"
.LASF770:
	.string	"mode"
.LASF448:
	.string	"FMEnable"
.LASF537:
	.string	"redundant_pic_cnt"
.LASF58:
	.string	"max_dec_frame_reordering"
.LASF522:
	.string	"bw_mb_mode"
.LASF685:
	.string	"min_qp_delta"
.LASF783:
	.string	"hline"
.LASF434:
	.string	"redundant_slice_flag"
.LASF908:
	.string	"errortext"
.LASF814:
	.string	"prevMbSkipped"
.LASF764:
	.string	"f2_x"
.LASF766:
	.string	"f2_y"
.LASF449:
	.string	"BitDepthLuma"
.LASF14:
	.string	"TRUE"
.LASF815:
	.string	"mb_field_tmp"
.LASF691:
	.string	"currSE"
.LASF840:
	.string	"writeChromaCoeff"
.LASF411:
	.string	"rdopt"
.LASF782:
	.string	"mb_available_up_left"
.LASF124:
	.string	"vui_seq_parameters"
.LASF185:
	.string	"EbufferS"
.LASF278:
	.string	"predict_qp"
.LASF693:
	.string	"rlc_bits"
.LASF546:
	.string	"ThisPOC"
.LASF135:
	.string	"SE_MVD"
.LASF705:
	.string	"copyblock4x4"
.LASF798:
	.string	"pdir0"
.LASF727:
	.string	"block8x8"
.LASF799:
	.string	"pdir1"
.LASF18:
	.string	"cpb_size_scale"
.LASF563:
	.string	"TotalMADBasicUnit"
.LASF275:
	.string	"prev_qp"
.LASF761:
	.string	"blocktype"
.LASF396:
	.string	"IntraDisableInterOnly"
.LASF197:
	.string	"mv_res_contexts"
.LASF857:
	.string	"writeCBPandLumaCoeff"
.LASF391:
	.string	"InterSearch8x16"
.LASF801:
	.string	"only_this_block"
.LASF862:
	.string	"j_off_tab"
.LASF442:
	.string	"bit_rate"
.LASF274:
	.string	"actj"
.LASF46:
	.string	"fixed_frame_rate_flag"
.LASF69:
	.string	"num_slice_groups_minus1"
.LASF540:
	.string	"delta_pic_order_cnt_bottom"
.LASF532:
	.string	"buf_cycle"
.LASF157:
	.string	"BITS_COEFF_Y_MB"
.LASF483:
	.string	"cod_counter"
.LASF726:
	.string	"LumaResidualCoding8x8"
.LASF133:
	.string	"SE_REFFRAME"
.LASF308:
	.string	"partArr"
.LASF776:
	.string	"IntraChromaPrediction"
.LASF286:
	.string	"byte_pos"
.LASF710:
	.string	"bw_mode"
.LASF356:
	.string	"outfile"
.LASF880:
	.string	"incVlc"
.LASF498:
	.string	"mprr_2"
.LASF203:
	.string	"ipr_contexts"
.LASF262:
	.string	"mbAddrA"
.LASF263:
	.string	"mbAddrB"
.LASF264:
	.string	"mbAddrC"
.LASF265:
	.string	"mbAddrD"
.LASF438:
	.string	"LowPassForIntra8x8"
.LASF484:
	.string	"nz_coeff"
.LASF735:
	.string	"skipped"
.LASF845:
	.string	"DCLevel"
.LASF199:
	.string	"delta_qp_contexts"
.LASF20:
	.string	"cpb_size_value"
.LASF399:
	.string	"Intra4x4DirDisable"
.LASF771:
	.string	"ChromaPrediction4x4"
.LASF561:
	.string	"NumberofBasicUnitHeaderBits"
.LASF746:
	.string	"b8_x"
.LASF848:
	.string	"chroma_ac_param"
.LASF240:
	.string	"SyntaxElement"
.LASF407:
	.string	"qpB2"
.LASF820:
	.string	"writeChromaIntraPredMode"
.LASF93:
	.string	"constrained_set0_flag"
.LASF577:
	.string	"IFLAG"
.LASF732:
	.string	"coeff_cost"
.LASF833:
	.string	"step_h"
.LASF586:
	.string	"pre_frame_num"
.LASF830:
	.string	"writeMotionVector8x8"
.LASF32:
	.string	"overscan_appropriate_flag"
.LASF68:
	.string	"pic_order_present_flag"
.LASF707:
	.string	"LumaPrediction4x4"
.LASF256:
	.string	"lf_disable"
.LASF775:
	.string	"block8x8_idx"
.LASF787:
	.string	"left"
.LASF168:
	.string	"TOP_FIELD"
.LASF37:
	.string	"colour_primaries"
.LASF730:
	.string	"nonzero"
.LASF654:
	.string	"size_x"
.LASF655:
	.string	"size_y"
.LASF680:
	.string	"use_bitstream_backing"
.LASF906:
	.string	"imgUV_org_frm"
.LASF324:
	.string	"idr_flag"
.LASF743:
	.string	"bw_ref"
.LASF919:
	.string	"MODTAB"
.LASF721:
	.string	"apply_weights"
.LASF863:
	.string	"j_off"
.LASF138:
	.string	"SE_CHR_DC_INTRA"
.LASF2:
	.string	"short unsigned int"
.LASF575:
	.string	"FieldFrame"
.LASF405:
	.string	"last_frame"
.LASF279:
	.string	"predict_error"
.LASF465:
	.string	"current_slice_nr"
.LASF624:
	.string	"bitrate_B"
.LASF365:
	.string	"direct_spatial_mv_pred_flag"
.LASF346:
	.string	"img_height"
.LASF335:
	.string	"jumpd"
.LASF608:
	.string	"bitrate"
.LASF60:
	.string	"vui_seq_parameters_t"
.LASF238:
	.string	"mapping"
.LASF666:
	.string	"ref_idx"
.LASF690:
	.string	"recode_macroblock"
.LASF451:
	.string	"img_height_cr"
.LASF402:
	.string	"ChromaIntraDisable"
.LASF99:
	.string	"seq_scaling_matrix_present_flag"
.LASF665:
	.string	"imgUV"
.LASF75:
	.string	"slice_group_change_rate_minus1"
.LASF667:
	.string	"ref_pic_id"
.LASF11:
	.string	"int64_t"
.LASF860:
	.string	"pred_nnz"
.LASF723:
	.string	"list_offset"
.LASF239:
	.string	"writing"
.LASF77:
	.string	"slice_group_id"
.LASF211:
	.string	"fld_map_contexts"
.LASF616:
	.string	"intra_chroma_mode"
.LASF35:
	.string	"video_full_range_flag"
.LASF74:
	.string	"slice_group_change_direction_flag"
.LASF66:
	.string	"pic_scaling_matrix_present_flag"
.LASF403:
	.string	"FrameRate"
.LASF123:
	.string	"vui_parameters_present_flag"
.LASF740:
	.string	"temp"
.LASF828:
	.string	"num_ref"
.LASF34:
	.string	"video_format"
.LASF205:
	.string	"cbp_contexts"
.LASF85:
	.string	"cb_qp_index_offset"
.LASF309:
	.string	"mot_ctx"
.LASF76:
	.string	"pic_size_in_map_units_minus1"
.LASF891:
	.string	"imgUV_org"
.LASF625:
	.string	"mode_use"
.LASF272:
	.string	"NoMbPartLessThan8x8Flag"
.LASF915:
	.string	"mprRGB"
.LASF474:
	.string	"subblock_x"
.LASF475:
	.string	"subblock_y"
.LASF842:
	.string	"param"
.LASF650:
	.string	"is_long_term"
.LASF849:
	.string	"writeLumaCoeff4x4_CABAC"
.LASF612:
	.string	"bit_ctr_emulationprevention"
.LASF65:
	.string	"transform_8x8_mode_flag"
.LASF456:
	.string	"UseExplicitLambdaParams"
.LASF242:
	.string	"currSEnr"
.LASF826:
	.string	"writeReferenceFrame"
.LASF170:
	.string	"PictureStructure"
.LASF550:
	.string	"FrameHeightInMbs"
.LASF504:
	.string	"currentSlice"
.LASF246:
	.string	"bitcounter"
.LASF623:
	.string	"bitrate_P"
.LASF184:
	.string	"ErangeS"
.LASF266:
	.string	"mbAvailA"
.LASF267:
	.string	"mbAvailB"
.LASF268:
	.string	"mbAvailC"
.LASF269:
	.string	"mbAvailD"
.LASF626:
	.string	"bit_use_mode"
.LASF252:
	.string	"cbp_blk"
.LASF894:
	.string	"wp_weight"
.LASF611:
	.string	"bit_slice"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
