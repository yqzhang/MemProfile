	.file	"sei.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 sei.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	seiHasRandomAccess_info,4,4
	.comm	seiRandomAccess,24,16
	.comm	seiHasUser_data_registered_itu_t_t35_info,4,4
	.comm	seiUser_data_registered_itu_t_t35,40,32
	.comm	seiHasUser_data_unregistered_info,4,4
	.comm	seiUser_data_unregistered,32,32
	.globl	seiHasTemporal_reference
	.bss
	.align 4
	.type	seiHasTemporal_reference, @object
	.size	seiHasTemporal_reference, 4
seiHasTemporal_reference:
	.zero	4
	.globl	seiHasClock_timestamp
	.align 4
	.type	seiHasClock_timestamp, @object
	.size	seiHasClock_timestamp, 4
seiHasClock_timestamp:
	.zero	4
	.globl	seiHasPanscan_rect
	.align 4
	.type	seiHasPanscan_rect, @object
	.size	seiHasPanscan_rect, 4
seiHasPanscan_rect:
	.zero	4
	.globl	seiHasBuffering_period
	.align 4
	.type	seiHasBuffering_period, @object
	.size	seiHasBuffering_period, 4
seiHasBuffering_period:
	.zero	4
	.globl	seiHasHrd_picture
	.align 4
	.type	seiHasHrd_picture, @object
	.size	seiHasHrd_picture, 4
seiHasHrd_picture:
	.zero	4
	.globl	seiHasFiller_payload
	.align 4
	.type	seiHasFiller_payload, @object
	.size	seiHasFiller_payload, 4
seiHasFiller_payload:
	.zero	4
	.globl	seiHasUser_data_registered_itu_t_t35
	.align 4
	.type	seiHasUser_data_registered_itu_t_t35, @object
	.size	seiHasUser_data_registered_itu_t_t35, 4
seiHasUser_data_registered_itu_t_t35:
	.zero	4
	.globl	seiHasUser_data_unregistered
	.align 4
	.type	seiHasUser_data_unregistered, @object
	.size	seiHasUser_data_unregistered, 4
seiHasUser_data_unregistered:
	.zero	4
	.globl	seiHasRandom_access_point
	.align 4
	.type	seiHasRandom_access_point, @object
	.size	seiHasRandom_access_point, 4
seiHasRandom_access_point:
	.zero	4
	.globl	seiHasRef_pic_buffer_management_repetition
	.align 4
	.type	seiHasRef_pic_buffer_management_repetition, @object
	.size	seiHasRef_pic_buffer_management_repetition, 4
seiHasRef_pic_buffer_management_repetition:
	.zero	4
	.globl	seiHasSpare_picture
	.align 4
	.type	seiHasSpare_picture, @object
	.size	seiHasSpare_picture, 4
seiHasSpare_picture:
	.zero	4
	.globl	seiHasSceneInformation
	.align 4
	.type	seiHasSceneInformation, @object
	.size	seiHasSceneInformation, 4
seiHasSceneInformation:
	.zero	4
	.globl	seiHasSubseq_information
	.align 4
	.type	seiHasSubseq_information, @object
	.size	seiHasSubseq_information, 4
seiHasSubseq_information:
	.zero	4
	.globl	seiHasSubseq_layer_characteristics
	.align 4
	.type	seiHasSubseq_layer_characteristics, @object
	.size	seiHasSubseq_layer_characteristics, 4
seiHasSubseq_layer_characteristics:
	.zero	4
	.globl	seiHasSubseq_characteristics
	.align 4
	.type	seiHasSubseq_characteristics, @object
	.size	seiHasSubseq_characteristics, 4
seiHasSubseq_characteristics:
	.zero	4
	.comm	sei_message,48,32
	.section	.rodata
	.align 8
.LC0:
	.string	"InitSEIMessages: sei_message[i].data"
	.text
	.globl	InitSEIMessages
	.type	InitSEIMessages, @function
InitSEIMessages:
.LFB2:
	.file 1 "sei.c"
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 68 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L2	#
.L4:
	.loc 1 70 0
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, %rcx	# tmp63, D.5986
	movl	-4(%rbp), %eax	# i, tmp65
	movslq	%eax, %rdx	# tmp65, tmp64
	movq	%rdx, %rax	# tmp64, tmp66
	addq	%rax, %rax	# tmp66
	addq	%rdx, %rax	# tmp64, tmp66
	salq	$3, %rax	#, tmp67
	addq	$sei_message+16, %rax	#, tmp68
	movq	%rcx, (%rax)	# D.5986, sei_message[i_1].data
	.loc 1 71 0
	movl	-4(%rbp), %eax	# i, tmp70
	movslq	%eax, %rdx	# tmp70, tmp69
	movq	%rdx, %rax	# tmp69, tmp71
	addq	%rax, %rax	# tmp71
	addq	%rdx, %rax	# tmp69, tmp71
	salq	$3, %rax	#, tmp72
	addq	$sei_message+16, %rax	#, tmp73
	movq	(%rax), %rax	# sei_message[i_1].data, D.5987
	testq	%rax, %rax	# D.5987
	jne	.L3	#,
	.loc 1 71 0 is_stmt 0 discriminator 1
	movl	$.LC0, %edi	#,
	call	no_mem_exit	#
.L3:
	.loc 1 72 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp75
	movslq	%eax, %rdx	# tmp75, tmp74
	movq	%rdx, %rax	# tmp74, tmp76
	addq	%rax, %rax	# tmp76
	addq	%rdx, %rax	# tmp74, tmp76
	salq	$3, %rax	#, tmp77
	addq	$sei_message, %rax	#, tmp78
	movb	$5, 8(%rax)	#, sei_message[i_1].subPacketType
	.loc 1 73 0
	movl	-4(%rbp), %eax	# i, tmp79
	movl	%eax, %edi	# tmp79,
	call	clear_sei_message	#
	.loc 1 68 0
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 68 0 is_stmt 0 discriminator 1
	cmpl	$1, -4(%rbp)	#, i
	jle	.L4	#,
	.loc 1 77 0 is_stmt 1
	movq	$0, seiSparePicturePayload+16(%rip)	#, seiSparePicturePayload.data
	.loc 1 78 0
	movl	$0, %eax	#,
	call	InitSparePicture	#
	.loc 1 79 0
	movl	$0, %eax	#,
	call	InitSubseqChar	#
	.loc 1 80 0
	movq	input(%rip), %rax	# input, input.0
	movl	2912(%rax), %eax	# input.0_6->NumFramesInELSubSeq, D.5988
	testl	%eax, %eax	# D.5988
	je	.L5	#,
	.loc 1 81 0
	movl	$0, %eax	#,
	call	InitSubseqLayerInfo	#
.L5:
	.loc 1 82 0
	movl	$0, %eax	#,
	call	InitSceneInformation	#
	.loc 1 84 0
	movl	$0, %eax	#,
	call	InitPanScanRectInfo	#
	.loc 1 86 0
	movl	$0, %eax	#,
	call	InitUser_data_unregistered	#
	.loc 1 88 0
	movl	$0, %eax	#,
	call	InitUser_data_registered_itu_t_t35	#
	.loc 1 90 0
	movl	$0, %eax	#,
	call	InitRandomAccess	#
	.loc 1 91 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	InitSEIMessages, .-InitSEIMessages
	.globl	CloseSEIMessages
	.type	CloseSEIMessages, @function
CloseSEIMessages:
.LFB3:
	.loc 1 94 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 97 0
	movq	input(%rip), %rax	# input, input.1
	movl	2912(%rax), %eax	# input.1_2->NumFramesInELSubSeq, D.5990
	testl	%eax, %eax	# D.5990
	je	.L7	#,
	.loc 1 98 0
	movl	$0, %eax	#,
	call	CloseSubseqLayerInfo	#
.L7:
	.loc 1 100 0
	movl	$0, %eax	#,
	call	CloseSubseqChar	#
	.loc 1 101 0
	movl	$0, %eax	#,
	call	CloseSparePicture	#
	.loc 1 102 0
	movl	$0, %eax	#,
	call	CloseSceneInformation	#
	.loc 1 104 0
	movl	$0, %eax	#,
	call	ClosePanScanRectInfo	#
	.loc 1 105 0
	movl	$0, %eax	#,
	call	CloseUser_data_unregistered	#
	.loc 1 106 0
	movl	$0, %eax	#,
	call	CloseUser_data_registered_itu_t_t35	#
	.loc 1 107 0
	movl	$0, %eax	#,
	call	CloseRandomAccess	#
	.loc 1 109 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L8	#
.L10:
	.loc 1 111 0
	movl	-4(%rbp), %eax	# i, tmp64
	movslq	%eax, %rdx	# tmp64, tmp63
	movq	%rdx, %rax	# tmp63, tmp65
	addq	%rax, %rax	# tmp65
	addq	%rdx, %rax	# tmp63, tmp65
	salq	$3, %rax	#, tmp66
	addq	$sei_message+16, %rax	#, tmp67
	movq	(%rax), %rax	# sei_message[i_1].data, D.5991
	testq	%rax, %rax	# D.5991
	je	.L9	#,
	.loc 1 111 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp69
	movslq	%eax, %rdx	# tmp69, tmp68
	movq	%rdx, %rax	# tmp68, tmp70
	addq	%rax, %rax	# tmp70
	addq	%rdx, %rax	# tmp68, tmp70
	salq	$3, %rax	#, tmp71
	addq	$sei_message+16, %rax	#, tmp72
	movq	(%rax), %rax	# sei_message[i_1].data, D.5991
	movq	%rax, %rdi	# D.5991,
	call	free	#
.L9:
	.loc 1 112 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp74
	movslq	%eax, %rdx	# tmp74, tmp73
	movq	%rdx, %rax	# tmp73, tmp75
	addq	%rax, %rax	# tmp75
	addq	%rdx, %rax	# tmp73, tmp75
	salq	$3, %rax	#, tmp76
	addq	$sei_message+16, %rax	#, tmp77
	movq	$0, (%rax)	#, sei_message[i_1].data
	.loc 1 109 0
	addl	$1, -4(%rbp)	#, i
.L8:
	.loc 1 109 0 is_stmt 0 discriminator 1
	cmpl	$1, -4(%rbp)	#, i
	jle	.L10	#,
	.loc 1 114 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	CloseSEIMessages, .-CloseSEIMessages
	.globl	HaveAggregationSEI
	.type	HaveAggregationSEI, @function
HaveAggregationSEI:
.LFB4:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 118 0
	movl	sei_message+24(%rip), %eax	# sei_message[1].available, D.5993
	testl	%eax, %eax	# D.5993
	je	.L12	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.2
	movl	24(%rax), %eax	# img.2_3->type, D.5994
	cmpl	$1, %eax	#, D.5994
	je	.L12	#,
	.loc 1 119 0 is_stmt 1
	movl	$1, %eax	#, D.5992
	jmp	.L13	#
.L12:
	.loc 1 120 0
	movl	seiHasSubseqInfo(%rip), %eax	# seiHasSubseqInfo, seiHasSubseqInfo.3
	testl	%eax, %eax	# seiHasSubseqInfo.3
	je	.L14	#,
	.loc 1 121 0
	movl	$1, %eax	#, D.5992
	jmp	.L13	#
.L14:
	.loc 1 122 0
	movl	seiHasSubseqLayerInfo(%rip), %eax	# seiHasSubseqLayerInfo, seiHasSubseqLayerInfo.4
	testl	%eax, %eax	# seiHasSubseqLayerInfo.4
	je	.L15	#,
	.loc 1 122 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.5
	movl	(%rax), %eax	# img.5_9->number, D.5994
	testl	%eax, %eax	# D.5994
	jne	.L15	#,
	.loc 1 123 0 is_stmt 1
	movl	$1, %eax	#, D.5992
	jmp	.L13	#
.L15:
	.loc 1 124 0
	movl	seiHasSubseqChar(%rip), %eax	# seiHasSubseqChar, seiHasSubseqChar.6
	testl	%eax, %eax	# seiHasSubseqChar.6
	je	.L16	#,
	.loc 1 125 0
	movl	$1, %eax	#, D.5992
	jmp	.L13	#
.L16:
	.loc 1 126 0
	movl	seiHasSceneInformation(%rip), %eax	# seiHasSceneInformation, seiHasSceneInformation.7
	testl	%eax, %eax	# seiHasSceneInformation.7
	je	.L17	#,
	.loc 1 127 0
	movl	$1, %eax	#, D.5992
	jmp	.L13	#
.L17:
	.loc 1 128 0
	movl	seiHasPanScanRectInfo(%rip), %eax	# seiHasPanScanRectInfo, seiHasPanScanRectInfo.8
	testl	%eax, %eax	# seiHasPanScanRectInfo.8
	je	.L18	#,
	.loc 1 129 0
	movl	$1, %eax	#, D.5992
	jmp	.L13	#
.L18:
	.loc 1 130 0
	movl	seiHasUser_data_unregistered_info(%rip), %eax	# seiHasUser_data_unregistered_info, seiHasUser_data_unregistered_info.9
	testl	%eax, %eax	# seiHasUser_data_unregistered_info.9
	je	.L19	#,
	.loc 1 131 0
	movl	$1, %eax	#, D.5992
	jmp	.L13	#
.L19:
	.loc 1 132 0
	movl	seiHasUser_data_registered_itu_t_t35_info(%rip), %eax	# seiHasUser_data_registered_itu_t_t35_info, seiHasUser_data_registered_itu_t_t35_info.10
	testl	%eax, %eax	# seiHasUser_data_registered_itu_t_t35_info.10
	je	.L20	#,
	.loc 1 133 0
	movl	$1, %eax	#, D.5992
	jmp	.L13	#
.L20:
	.loc 1 134 0
	movl	seiHasRandomAccess_info(%rip), %eax	# seiHasRandomAccess_info, seiHasRandomAccess_info.11
	testl	%eax, %eax	# seiHasRandomAccess_info.11
	je	.L21	#,
	.loc 1 135 0
	movl	$1, %eax	#, D.5992
	jmp	.L13	#
.L21:
	.loc 1 136 0
	movl	$0, %eax	#, D.5992
.L13:
	.loc 1 139 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	HaveAggregationSEI, .-HaveAggregationSEI
	.globl	write_sei_message
	.type	write_sei_message, @function
write_sei_message:
.LFB5:
	.loc 1 160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# id, id
	movq	%rsi, -32(%rbp)	# payload, payload
	movl	%edx, -24(%rbp)	# payload_size, payload_size
	movl	%ecx, -36(%rbp)	# payload_type, payload_type
	.loc 1 164 0
	movl	-36(%rbp), %eax	# payload_type, tmp81
	movl	%eax, -8(%rbp)	# tmp81, type
	.loc 1 165 0
	movl	-24(%rbp), %eax	# payload_size, tmp82
	movl	%eax, -4(%rbp)	# tmp82, size
	.loc 1 166 0
	movl	-20(%rbp), %eax	# id, tmp84
	movslq	%eax, %rdx	# tmp84, tmp83
	movq	%rdx, %rax	# tmp83, tmp85
	addq	%rax, %rax	# tmp85
	addq	%rdx, %rax	# tmp83, tmp85
	salq	$3, %rax	#, tmp86
	addq	$sei_message, %rax	#, tmp87
	movl	4(%rax), %eax	# sei_message[id_9(D)].payloadSize, tmp88
	movl	%eax, -12(%rbp)	# tmp88, offset
	.loc 1 168 0
	jmp	.L23	#
.L24:
	.loc 1 170 0
	movl	-20(%rbp), %eax	# id, tmp90
	movslq	%eax, %rdx	# tmp90, tmp89
	movq	%rdx, %rax	# tmp89, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# tmp89, tmp91
	salq	$3, %rax	#, tmp92
	addq	$sei_message+16, %rax	#, tmp93
	movq	(%rax), %rcx	# sei_message[id_9(D)].data, D.5995
	movl	-12(%rbp), %eax	# offset, offset.12
	leal	1(%rax), %edx	#, tmp94
	movl	%edx, -12(%rbp)	# tmp94, offset
	cltq
	addq	%rcx, %rax	# D.5995, D.5995
	movb	$-1, (%rax)	#, *_15
	.loc 1 171 0
	subl	$255, -8(%rbp)	#, type
.L23:
	.loc 1 168 0 discriminator 1
	cmpl	$255, -8(%rbp)	#, type
	jg	.L24	#,
	.loc 1 173 0
	movl	-20(%rbp), %eax	# id, tmp96
	movslq	%eax, %rdx	# tmp96, tmp95
	movq	%rdx, %rax	# tmp95, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# tmp95, tmp97
	salq	$3, %rax	#, tmp98
	addq	$sei_message+16, %rax	#, tmp99
	movq	(%rax), %rcx	# sei_message[id_9(D)].data, D.5995
	movl	-12(%rbp), %eax	# offset, offset.13
	leal	1(%rax), %edx	#, tmp100
	movl	%edx, -12(%rbp)	# tmp100, offset
	cltq
	leaq	(%rcx,%rax), %rdx	#, D.5995
	movl	-8(%rbp), %eax	# type, tmp101
	movb	%al, (%rdx)	# D.5997, *_21
	.loc 1 175 0
	jmp	.L25	#
.L26:
	.loc 1 177 0
	movl	-20(%rbp), %eax	# id, tmp103
	movslq	%eax, %rdx	# tmp103, tmp102
	movq	%rdx, %rax	# tmp102, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# tmp102, tmp104
	salq	$3, %rax	#, tmp105
	addq	$sei_message+16, %rax	#, tmp106
	movq	(%rax), %rcx	# sei_message[id_9(D)].data, D.5995
	movl	-12(%rbp), %eax	# offset, offset.14
	leal	1(%rax), %edx	#, tmp107
	movl	%edx, -12(%rbp)	# tmp107, offset
	cltq
	addq	%rcx, %rax	# D.5995, D.5995
	movb	$-1, (%rax)	#, *_27
	.loc 1 178 0
	subl	$255, -4(%rbp)	#, size
.L25:
	.loc 1 175 0 discriminator 1
	cmpl	$255, -4(%rbp)	#, size
	jg	.L26	#,
	.loc 1 180 0
	movl	-20(%rbp), %eax	# id, tmp109
	movslq	%eax, %rdx	# tmp109, tmp108
	movq	%rdx, %rax	# tmp108, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# tmp108, tmp110
	salq	$3, %rax	#, tmp111
	addq	$sei_message+16, %rax	#, tmp112
	movq	(%rax), %rcx	# sei_message[id_9(D)].data, D.5995
	movl	-12(%rbp), %eax	# offset, offset.15
	leal	1(%rax), %edx	#, tmp113
	movl	%edx, -12(%rbp)	# tmp113, offset
	cltq
	leaq	(%rcx,%rax), %rdx	#, D.5995
	movl	-4(%rbp), %eax	# size, tmp114
	movb	%al, (%rdx)	# D.5997, *_33
	.loc 1 182 0
	movl	-24(%rbp), %eax	# payload_size, tmp115
	movslq	%eax, %rcx	# tmp115, D.5998
	movl	-20(%rbp), %eax	# id, tmp117
	movslq	%eax, %rdx	# tmp117, tmp116
	movq	%rdx, %rax	# tmp116, tmp118
	addq	%rax, %rax	# tmp118
	addq	%rdx, %rax	# tmp116, tmp118
	salq	$3, %rax	#, tmp119
	addq	$sei_message+16, %rax	#, tmp120
	movq	(%rax), %rdx	# sei_message[id_9(D)].data, D.5995
	movl	-12(%rbp), %eax	# offset, tmp121
	cltq
	leaq	(%rdx,%rax), %rdi	#, D.5995
	movq	-32(%rbp), %rax	# payload, tmp122
	movq	%rcx, %rdx	# D.5998,
	movq	%rax, %rsi	# tmp122,
	call	memcpy	#
	.loc 1 183 0
	movl	-24(%rbp), %eax	# payload_size, tmp123
	addl	%eax, -12(%rbp)	# tmp123, offset
	.loc 1 185 0
	movl	-20(%rbp), %eax	# id, tmp125
	movslq	%eax, %rdx	# tmp125, tmp124
	movq	%rdx, %rax	# tmp124, tmp126
	addq	%rax, %rax	# tmp126
	addq	%rdx, %rax	# tmp124, tmp126
	salq	$3, %rax	#, tmp127
	leaq	sei_message(%rax), %rdx	#, tmp128
	movl	-12(%rbp), %eax	# offset, tmp129
	movl	%eax, 4(%rdx)	# tmp129, sei_message[id_9(D)].payloadSize
	.loc 1 186 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	write_sei_message, .-write_sei_message
	.globl	finalize_sei_message
	.type	finalize_sei_message, @function
finalize_sei_message:
.LFB6:
	.loc 1 200 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# id, id
	.loc 1 201 0
	movl	-20(%rbp), %eax	# id, tmp65
	movslq	%eax, %rdx	# tmp65, tmp64
	movq	%rdx, %rax	# tmp64, tmp66
	addq	%rax, %rax	# tmp66
	addq	%rdx, %rax	# tmp64, tmp66
	salq	$3, %rax	#, tmp67
	addq	$sei_message, %rax	#, tmp68
	movl	4(%rax), %eax	# sei_message[id_1(D)].payloadSize, tmp69
	movl	%eax, -4(%rbp)	# tmp69, offset
	.loc 1 203 0
	movl	-20(%rbp), %eax	# id, tmp71
	movslq	%eax, %rdx	# tmp71, tmp70
	movq	%rdx, %rax	# tmp70, tmp72
	addq	%rax, %rax	# tmp72
	addq	%rdx, %rax	# tmp70, tmp72
	salq	$3, %rax	#, tmp73
	addq	$sei_message+16, %rax	#, tmp74
	movq	(%rax), %rdx	# sei_message[id_1(D)].data, D.5999
	movl	-4(%rbp), %eax	# offset, tmp75
	cltq
	addq	%rdx, %rax	# D.5999, D.5999
	movb	$-128, (%rax)	#, *_5
	.loc 1 204 0
	movl	-20(%rbp), %eax	# id, tmp77
	movslq	%eax, %rdx	# tmp77, tmp76
	movq	%rdx, %rax	# tmp76, tmp78
	addq	%rax, %rax	# tmp78
	addq	%rdx, %rax	# tmp76, tmp78
	salq	$3, %rax	#, tmp79
	addq	$sei_message, %rax	#, tmp80
	movl	4(%rax), %eax	# sei_message[id_1(D)].payloadSize, D.6001
	leal	1(%rax), %ecx	#, D.6001
	movl	-20(%rbp), %eax	# id, tmp82
	movslq	%eax, %rdx	# tmp82, tmp81
	movq	%rdx, %rax	# tmp81, tmp83
	addq	%rax, %rax	# tmp83
	addq	%rdx, %rax	# tmp81, tmp83
	salq	$3, %rax	#, tmp84
	addq	$sei_message, %rax	#, tmp85
	movl	%ecx, 4(%rax)	# D.6001, sei_message[id_1(D)].payloadSize
	.loc 1 206 0
	movl	-20(%rbp), %eax	# id, tmp87
	movslq	%eax, %rdx	# tmp87, tmp86
	movq	%rdx, %rax	# tmp86, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# tmp86, tmp88
	salq	$3, %rax	#, tmp89
	addq	$sei_message, %rax	#, tmp90
	movl	$1, (%rax)	#, sei_message[id_1(D)].available
	.loc 1 207 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	finalize_sei_message, .-finalize_sei_message
	.globl	clear_sei_message
	.type	clear_sei_message, @function
clear_sei_message:
.LFB7:
	.loc 1 222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# id, id
	.loc 1 223 0
	movl	-4(%rbp), %eax	# id, tmp61
	movslq	%eax, %rdx	# tmp61, tmp60
	movq	%rdx, %rax	# tmp60, tmp62
	addq	%rax, %rax	# tmp62
	addq	%rdx, %rax	# tmp60, tmp62
	salq	$3, %rax	#, tmp63
	addq	$sei_message+16, %rax	#, tmp64
	movq	(%rax), %rax	# sei_message[id_1(D)].data, D.6002
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6002,
	call	memset	#
	.loc 1 224 0
	movl	-4(%rbp), %eax	# id, tmp66
	movslq	%eax, %rdx	# tmp66, tmp65
	movq	%rdx, %rax	# tmp65, tmp67
	addq	%rax, %rax	# tmp67
	addq	%rdx, %rax	# tmp65, tmp67
	salq	$3, %rax	#, tmp68
	addq	$sei_message, %rax	#, tmp69
	movl	$0, 4(%rax)	#, sei_message[id_1(D)].payloadSize
	.loc 1 225 0
	movl	-4(%rbp), %eax	# id, tmp71
	movslq	%eax, %rdx	# tmp71, tmp70
	movq	%rdx, %rax	# tmp70, tmp72
	addq	%rax, %rax	# tmp72
	addq	%rdx, %rax	# tmp70, tmp72
	salq	$3, %rax	#, tmp73
	addq	$sei_message, %rax	#, tmp74
	movl	$0, (%rax)	#, sei_message[id_1(D)].available
	.loc 1 226 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	clear_sei_message, .-clear_sei_message
	.globl	AppendTmpbits2Buf
	.type	AppendTmpbits2Buf, @function
AppendTmpbits2Buf:
.LFB8:
	.loc 1 241 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# dest, dest
	movq	%rsi, -32(%rbp)	# source, source
	.loc 1 247 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L30	#
.L35:
	.loc 1 249 0
	movb	$-128, -13(%rbp)	#, mask
	.loc 1 250 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L31	#
.L34:
	.loc 1 252 0
	movq	-24(%rbp), %rax	# dest, tmp96
	movzbl	8(%rax), %eax	# dest_11(D)->byte_buf, D.6004
	leal	(%rax,%rax), %edx	#, D.6004
	movq	-24(%rbp), %rax	# dest, tmp97
	movb	%dl, 8(%rax)	# D.6004, dest_11(D)->byte_buf
	.loc 1 253 0
	movq	-32(%rbp), %rax	# source, tmp98
	movq	32(%rax), %rdx	# source_7(D)->streamBuffer, D.6005
	movl	-12(%rbp), %eax	# i, tmp99
	cltq
	addq	%rdx, %rax	# D.6005, D.6005
	movzbl	(%rax), %eax	# *_16, D.6004
	andb	-13(%rbp), %al	# mask, D.6004
	testb	%al, %al	# D.6004
	je	.L32	#,
	.loc 1 254 0
	movq	-24(%rbp), %rax	# dest, tmp100
	movzbl	8(%rax), %eax	# dest_11(D)->byte_buf, D.6004
	orl	$1, %eax	#, D.6004
	movl	%eax, %edx	# D.6004, D.6004
	movq	-24(%rbp), %rax	# dest, tmp101
	movb	%dl, 8(%rax)	# D.6004, dest_11(D)->byte_buf
.L32:
	.loc 1 255 0
	movq	-24(%rbp), %rax	# dest, tmp102
	movl	4(%rax), %eax	# dest_11(D)->bits_to_go, D.6003
	leal	-1(%rax), %edx	#, D.6003
	movq	-24(%rbp), %rax	# dest, tmp103
	movl	%edx, 4(%rax)	# D.6003, dest_11(D)->bits_to_go
	.loc 1 256 0
	shrb	-13(%rbp)	# mask
	.loc 1 257 0
	movq	-24(%rbp), %rax	# dest, tmp104
	movl	4(%rax), %eax	# dest_11(D)->bits_to_go, D.6003
	testl	%eax, %eax	# D.6003
	jne	.L33	#,
	.loc 1 259 0
	movq	-24(%rbp), %rax	# dest, tmp105
	movl	$8, 4(%rax)	#, dest_11(D)->bits_to_go
	.loc 1 260 0
	movq	-24(%rbp), %rax	# dest, tmp106
	movq	32(%rax), %rsi	# dest_11(D)->streamBuffer, D.6005
	movq	-24(%rbp), %rax	# dest, tmp107
	movl	(%rax), %eax	# dest_11(D)->byte_pos, D.6003
	leal	1(%rax), %ecx	#, D.6003
	movq	-24(%rbp), %rdx	# dest, tmp108
	movl	%ecx, (%rdx)	# D.6003, dest_11(D)->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6005
	movq	-24(%rbp), %rax	# dest, tmp109
	movzbl	8(%rax), %eax	# dest_11(D)->byte_buf, D.6004
	movb	%al, (%rdx)	# D.6004, *_30
	.loc 1 261 0
	movq	-24(%rbp), %rax	# dest, tmp110
	movb	$0, 8(%rax)	#, dest_11(D)->byte_buf
.L33:
	.loc 1 250 0
	addl	$1, -8(%rbp)	#, j
.L31:
	.loc 1 250 0 is_stmt 0 discriminator 1
	cmpl	$7, -8(%rbp)	#, j
	jle	.L34	#,
	.loc 1 247 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L30:
	.loc 1 247 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# source, tmp111
	movl	(%rax), %eax	# source_7(D)->byte_pos, D.6003
	cmpl	-12(%rbp), %eax	# i, D.6003
	jg	.L35	#,
	.loc 1 266 0 is_stmt 1
	movq	-32(%rbp), %rax	# source, tmp112
	movl	4(%rax), %eax	# source_7(D)->bits_to_go, D.6003
	movl	$8, %edx	#, tmp113
	subl	%eax, %edx	# D.6003, tmp114
	movl	%edx, %eax	# tmp114, tmp114
	movl	%eax, -4(%rbp)	# tmp114, bits_in_last_byte
	.loc 1 267 0
	cmpl	$0, -4(%rbp)	#, bits_in_last_byte
	jle	.L29	#,
	.loc 1 269 0
	movl	-4(%rbp), %eax	# bits_in_last_byte, tmp115
	subl	$1, %eax	#, D.6003
	movl	$1, %edx	#, tmp116
	movl	%eax, %ecx	# D.6003, tmp135
	sall	%cl, %edx	# tmp135, D.6003
	movl	%edx, %eax	# D.6003, D.6003
	movb	%al, -13(%rbp)	# D.6003, mask
	.loc 1 270 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L37	#
.L40:
	.loc 1 272 0
	movq	-24(%rbp), %rax	# dest, tmp117
	movzbl	8(%rax), %eax	# dest_11(D)->byte_buf, D.6004
	leal	(%rax,%rax), %edx	#, D.6004
	movq	-24(%rbp), %rax	# dest, tmp118
	movb	%dl, 8(%rax)	# D.6004, dest_11(D)->byte_buf
	.loc 1 273 0
	movq	-32(%rbp), %rax	# source, tmp119
	movzbl	8(%rax), %eax	# source_7(D)->byte_buf, D.6004
	andb	-13(%rbp), %al	# mask, D.6004
	testb	%al, %al	# D.6004
	je	.L38	#,
	.loc 1 274 0
	movq	-24(%rbp), %rax	# dest, tmp120
	movzbl	8(%rax), %eax	# dest_11(D)->byte_buf, D.6004
	orl	$1, %eax	#, D.6004
	movl	%eax, %edx	# D.6004, D.6004
	movq	-24(%rbp), %rax	# dest, tmp121
	movb	%dl, 8(%rax)	# D.6004, dest_11(D)->byte_buf
.L38:
	.loc 1 275 0
	movq	-24(%rbp), %rax	# dest, tmp122
	movl	4(%rax), %eax	# dest_11(D)->bits_to_go, D.6003
	leal	-1(%rax), %edx	#, D.6003
	movq	-24(%rbp), %rax	# dest, tmp123
	movl	%edx, 4(%rax)	# D.6003, dest_11(D)->bits_to_go
	.loc 1 276 0
	shrb	-13(%rbp)	# mask
	.loc 1 277 0
	movq	-24(%rbp), %rax	# dest, tmp124
	movl	4(%rax), %eax	# dest_11(D)->bits_to_go, D.6003
	testl	%eax, %eax	# D.6003
	jne	.L39	#,
	.loc 1 279 0
	movq	-24(%rbp), %rax	# dest, tmp125
	movl	$8, 4(%rax)	#, dest_11(D)->bits_to_go
	.loc 1 280 0
	movq	-24(%rbp), %rax	# dest, tmp126
	movq	32(%rax), %rsi	# dest_11(D)->streamBuffer, D.6005
	movq	-24(%rbp), %rax	# dest, tmp127
	movl	(%rax), %eax	# dest_11(D)->byte_pos, D.6003
	leal	1(%rax), %ecx	#, D.6003
	movq	-24(%rbp), %rdx	# dest, tmp128
	movl	%ecx, (%rdx)	# D.6003, dest_11(D)->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6005
	movq	-24(%rbp), %rax	# dest, tmp129
	movzbl	8(%rax), %eax	# dest_11(D)->byte_buf, D.6004
	movb	%al, (%rdx)	# D.6004, *_55
	.loc 1 281 0
	movq	-24(%rbp), %rax	# dest, tmp130
	movb	$0, 8(%rax)	#, dest_11(D)->byte_buf
.L39:
	.loc 1 270 0
	addl	$1, -8(%rbp)	#, j
.L37:
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp131
	cmpl	-4(%rbp), %eax	# bits_in_last_byte, tmp131
	jl	.L40	#,
.L29:
	.loc 1 285 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	AppendTmpbits2Buf, .-AppendTmpbits2Buf
	.globl	seiHasSparePicture
	.bss
	.align 4
	.type	seiHasSparePicture, @object
	.size	seiHasSparePicture, 4
seiHasSparePicture:
	.zero	4
	.comm	seiSparePicturePayload,24,16
	.section	.rodata
	.align 8
.LC1:
	.string	"InitSparePicture: seiSparePicturePayload.data"
	.align 8
.LC2:
	.string	"InitSparePicture: seiSparePicturePayload.data->streamBuffer"
	.text
	.globl	InitSparePicture
	.type	InitSparePicture, @function
InitSparePicture:
.LFB9:
	.loc 1 314 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 315 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6007
	testq	%rax, %rax	# D.6007
	je	.L42	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	CloseSparePicture	#
.L42:
	.loc 1 317 0 is_stmt 1
	movl	$48, %edi	#,
	call	malloc	#
	movq	%rax, seiSparePicturePayload+16(%rip)	# D.6008, seiSparePicturePayload.data
	.loc 1 318 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6007
	testq	%rax, %rax	# D.6007
	jne	.L43	#,
	.loc 1 318 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L43:
	.loc 1 319 0 is_stmt 1
	movq	seiSparePicturePayload+16(%rip), %rbx	# seiSparePicturePayload.data, D.6007
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, 32(%rbx)	# D.6008, _4->streamBuffer
	.loc 1 320 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6007
	movq	32(%rax), %rax	# _6->streamBuffer, D.6009
	testq	%rax, %rax	# D.6009
	jne	.L44	#,
	.loc 1 320 0 is_stmt 0 discriminator 1
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L44:
	.loc 1 321 0 is_stmt 1
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6007
	movq	32(%rax), %rax	# _8->streamBuffer, D.6009
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6009,
	call	memset	#
	.loc 1 322 0
	movl	$0, seiSparePicturePayload+4(%rip)	#, seiSparePicturePayload.num_spare_pics
	.loc 1 323 0
	movl	$0, seiSparePicturePayload(%rip)	#, seiSparePicturePayload.target_frame_num
	.loc 1 325 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6007
	movl	$8, 4(%rax)	#, _10->bits_to_go
	.loc 1 326 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6007
	movl	$0, (%rax)	#, _11->byte_pos
	.loc 1 327 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6007
	movb	$0, 8(%rax)	#, _12->byte_buf
	.loc 1 328 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	InitSparePicture, .-InitSparePicture
	.globl	CloseSparePicture
	.type	CloseSparePicture, @function
CloseSparePicture:
.LFB10:
	.loc 1 337 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 338 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6012
	movq	32(%rax), %rax	# _1->streamBuffer, D.6013
	testq	%rax, %rax	# D.6013
	je	.L46	#,
	.loc 1 339 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6012
	movq	32(%rax), %rax	# _3->streamBuffer, D.6013
	movq	%rax, %rdi	# D.6013,
	call	free	#
.L46:
	.loc 1 340 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6012
	movq	$0, 32(%rax)	#, _5->streamBuffer
	.loc 1 341 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6012
	testq	%rax, %rax	# D.6012
	je	.L47	#,
	.loc 1 342 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, D.6012
	movq	%rax, %rdi	# D.6012,
	call	free	#
.L47:
	.loc 1 343 0
	movq	$0, seiSparePicturePayload+16(%rip)	#, seiSparePicturePayload.data
	.loc 1 344 0
	movl	$0, seiSparePicturePayload+4(%rip)	#, seiSparePicturePayload.num_spare_pics
	.loc 1 345 0
	movl	$0, seiSparePicturePayload(%rip)	#, seiSparePicturePayload.target_frame_num
	.loc 1 346 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	CloseSparePicture, .-CloseSparePicture
	.globl	CalculateSparePicture
	.type	CalculateSparePicture, @function
CalculateSparePicture:
.LFB11:
	.loc 1 360 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 523 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	CalculateSparePicture, .-CalculateSparePicture
	.globl	ComposeSparePictureMessage
	.type	ComposeSparePictureMessage, @function
ComposeSparePictureMessage:
.LFB12:
	.loc 1 541 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -68(%rbp)	# delta_spare_frame_num, delta_spare_frame_num
	movl	%esi, -72(%rbp)	# ref_area_indicator, ref_area_indicator
	movq	%rdx, -80(%rbp)	# tmpBitstream, tmpBitstream
	.loc 1 542 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, tmp59
	movq	%rax, -56(%rbp)	# tmp59, bitstream
	.loc 1 545 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 546 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 548 0
	movl	-68(%rbp), %eax	# delta_spare_frame_num, tmp60
	movl	%eax, -44(%rbp)	# tmp60, sym.value1
	.loc 1 549 0
	movq	-56(%rbp), %rdx	# bitstream, tmp61
	leaq	-48(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 550 0
	movl	-72(%rbp), %eax	# ref_area_indicator, tmp63
	movl	%eax, -44(%rbp)	# tmp63, sym.value1
	.loc 1 551 0
	movq	-56(%rbp), %rdx	# bitstream, tmp64
	leaq	-48(%rbp), %rax	#, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 553 0
	movq	-80(%rbp), %rdx	# tmpBitstream, tmp66
	movq	-56(%rbp), %rax	# bitstream, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	AppendTmpbits2Buf	#
	.loc 1 554 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ComposeSparePictureMessage, .-ComposeSparePictureMessage
	.globl	CompressSpareMBMap
	.type	CompressSpareMBMap, @function
CompressSpareMBMap:
.LFB13:
	.loc 1 571 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -136(%rbp)	# map_sp, map_sp
	movq	%rsi, -144(%rbp)	# bitstream, bitstream
	.loc 1 578 0
	movq	img(%rip), %rax	# img, img.16
	movl	60(%rax), %eax	# img.16_54->height, D.6014
	leal	15(%rax), %edx	#, tmp127
	testl	%eax, %eax	# tmp126
	cmovs	%edx, %eax	# tmp127,, tmp126
	sarl	$4, %eax	#, tmp128
	movl	%eax, %edx	# tmp128, D.6014
	movq	img(%rip), %rax	# img, img.17
	movl	52(%rax), %eax	# img.17_57->width, D.6014
	leal	15(%rax), %ecx	#, tmp130
	testl	%eax, %eax	# tmp129
	cmovs	%ecx, %eax	# tmp130,, tmp129
	sarl	$4, %eax	#, tmp131
	imull	%edx, %eax	# D.6014, tmp132
	movl	%eax, -68(%rbp)	# tmp132, size_uncompressed
	.loc 1 579 0
	movl	$0, -72(%rbp)	#, size_compressed
	.loc 1 583 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 584 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 585 0
	movl	$0, -108(%rbp)	#, noc
	.loc 1 586 0
	movl	$0, -64(%rbp)	#, bit0
	.loc 1 587 0
	movl	$1, -60(%rbp)	#, bit1
	.loc 1 588 0
	movl	-64(%rbp), %eax	# bit0, tmp133
	movl	%eax, -56(%rbp)	# tmp133, bitc
	.loc 1 591 0
	movq	img(%rip), %rax	# img, img.18
	movl	52(%rax), %eax	# img.18_66->width, D.6014
	leal	15(%rax), %edx	#, tmp135
	testl	%eax, %eax	# tmp134
	cmovs	%edx, %eax	# tmp135,, tmp134
	sarl	$4, %eax	#, tmp136
	subl	$1, %eax	#, D.6014
	movl	%eax, %edx	# D.6014, tmp137
	shrl	$31, %edx	#, tmp137
	addl	%edx, %eax	# tmp137, tmp138
	sarl	%eax	# tmp139
	movl	%eax, -104(%rbp)	# tmp139, x
	.loc 1 592 0
	movq	img(%rip), %rax	# img, img.19
	movl	60(%rax), %eax	# img.19_71->height, D.6014
	leal	15(%rax), %edx	#, tmp141
	testl	%eax, %eax	# tmp140
	cmovs	%edx, %eax	# tmp141,, tmp140
	sarl	$4, %eax	#, tmp142
	subl	$1, %eax	#, D.6014
	movl	%eax, %edx	# D.6014, tmp143
	shrl	$31, %edx	#, tmp143
	addl	%edx, %eax	# tmp143, tmp144
	sarl	%eax	# tmp145
	movl	%eax, -100(%rbp)	# tmp145, y
	.loc 1 593 0
	movl	-104(%rbp), %eax	# x, tmp146
	movl	%eax, -92(%rbp)	# tmp146, right
	movl	-92(%rbp), %eax	# right, tmp147
	movl	%eax, -96(%rbp)	# tmp147, left
	.loc 1 594 0
	movl	-100(%rbp), %eax	# y, tmp148
	movl	%eax, -88(%rbp)	# tmp148, bottom
	movl	-88(%rbp), %eax	# bottom, tmp149
	movl	%eax, -84(%rbp)	# tmp149, top
	.loc 1 595 0
	movl	$0, -80(%rbp)	#, directx
	.loc 1 596 0
	movl	$1, -76(%rbp)	#, directy
	.loc 1 597 0
	movl	$0, -116(%rbp)	#, j
	jmp	.L51	#
.L71:
	.loc 1 598 0
	movl	$0, -112(%rbp)	#, k
	jmp	.L52	#
.L70:
	.loc 1 601 0
	movl	-100(%rbp), %eax	# y, tmp150
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6015
	movq	-136(%rbp), %rax	# map_sp, tmp151
	addq	%rdx, %rax	# D.6015, D.6016
	movq	(%rax), %rdx	# *_93, D.6017
	movl	-104(%rbp), %eax	# x, tmp152
	cltq
	addq	%rdx, %rax	# D.6017, D.6017
	movzbl	(%rax), %eax	# *_96, D.6019
	movzbl	%al, %eax	# D.6019, D.6014
	cmpl	-56(%rbp), %eax	# bitc, D.6014
	jne	.L53	#,
	.loc 1 601 0 is_stmt 0 discriminator 1
	addl	$1, -108(%rbp)	#, noc
	jmp	.L54	#
.L53:
	.loc 1 604 0 is_stmt 1
	movl	-108(%rbp), %eax	# noc, tmp153
	movl	%eax, -44(%rbp)	# tmp153, sym.value1
	.loc 1 605 0
	movq	-144(%rbp), %rdx	# bitstream, tmp154
	leaq	-48(%rbp), %rax	#, tmp155
	movq	%rdx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	writeSyntaxElement2Buf_UVLC	#
	addl	%eax, -72(%rbp)	# D.6014, size_compressed
	.loc 1 606 0
	movl	$0, -108(%rbp)	#, noc
.L54:
	.loc 1 609 0
	cmpl	$-1, -80(%rbp)	#, directx
	jne	.L55	#,
	.loc 1 609 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, directy
	jne	.L55	#,
	.loc 1 611 0 is_stmt 1
	movl	-104(%rbp), %eax	# x, tmp156
	cmpl	-96(%rbp), %eax	# left, tmp156
	jle	.L56	#,
	.loc 1 611 0 is_stmt 0 discriminator 1
	subl	$1, -104(%rbp)	#, x
	jmp	.L57	#
.L56:
	.loc 1 612 0 is_stmt 1
	cmpl	$0, -104(%rbp)	#, x
	jne	.L58	#,
	.loc 1 614 0
	movl	-88(%rbp), %eax	# bottom, tmp160
	addl	$1, %eax	#, tmp159
	movl	%eax, -100(%rbp)	# tmp159, y
	.loc 1 615 0
	addl	$1, -88(%rbp)	#, bottom
	.loc 1 616 0
	movl	$1, -80(%rbp)	#, directx
	.loc 1 617 0
	movl	$0, -76(%rbp)	#, directy
	jmp	.L57	#
.L58:
	.loc 1 619 0
	movl	-104(%rbp), %eax	# x, tmp161
	cmpl	-96(%rbp), %eax	# left, tmp161
	jne	.L57	#,
	.loc 1 621 0
	subl	$1, -104(%rbp)	#, x
	.loc 1 622 0
	subl	$1, -96(%rbp)	#, left
	.loc 1 623 0
	movl	$0, -80(%rbp)	#, directx
	.loc 1 624 0
	movl	$1, -76(%rbp)	#, directy
	.loc 1 611 0
	jmp	.L59	#
.L57:
	jmp	.L59	#
.L55:
	.loc 1 627 0
	cmpl	$1, -80(%rbp)	#, directx
	jne	.L60	#,
	.loc 1 627 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, directy
	jne	.L60	#,
	.loc 1 629 0 is_stmt 1
	movl	-104(%rbp), %eax	# x, tmp162
	cmpl	-92(%rbp), %eax	# right, tmp162
	jge	.L61	#,
	.loc 1 629 0 is_stmt 0 discriminator 1
	addl	$1, -104(%rbp)	#, x
	jmp	.L62	#
.L61:
	.loc 1 630 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.20
	movl	52(%rax), %eax	# img.20_114->width, D.6014
	leal	15(%rax), %edx	#, tmp164
	testl	%eax, %eax	# tmp163
	cmovs	%edx, %eax	# tmp164,, tmp163
	sarl	$4, %eax	#, tmp165
	subl	$1, %eax	#, D.6014
	cmpl	-104(%rbp), %eax	# x, D.6014
	jne	.L63	#,
	.loc 1 632 0
	movl	-84(%rbp), %eax	# top, tmp169
	subl	$1, %eax	#, tmp168
	movl	%eax, -100(%rbp)	# tmp168, y
	.loc 1 633 0
	subl	$1, -84(%rbp)	#, top
	.loc 1 634 0
	movl	$-1, -80(%rbp)	#, directx
	.loc 1 635 0
	movl	$0, -76(%rbp)	#, directy
	jmp	.L62	#
.L63:
	.loc 1 637 0
	movl	-104(%rbp), %eax	# x, tmp170
	cmpl	-92(%rbp), %eax	# right, tmp170
	jne	.L62	#,
	.loc 1 639 0
	addl	$1, -104(%rbp)	#, x
	.loc 1 640 0
	addl	$1, -92(%rbp)	#, right
	.loc 1 641 0
	movl	$0, -80(%rbp)	#, directx
	.loc 1 642 0
	movl	$-1, -76(%rbp)	#, directy
	.loc 1 629 0
	jmp	.L59	#
.L62:
	jmp	.L59	#
.L60:
	.loc 1 645 0
	cmpl	$0, -80(%rbp)	#, directx
	jne	.L64	#,
	.loc 1 645 0 is_stmt 0 discriminator 1
	cmpl	$-1, -76(%rbp)	#, directy
	jne	.L64	#,
	.loc 1 647 0 is_stmt 1
	movl	-100(%rbp), %eax	# y, tmp171
	cmpl	-84(%rbp), %eax	# top, tmp171
	jle	.L65	#,
	.loc 1 647 0 is_stmt 0 discriminator 1
	subl	$1, -100(%rbp)	#, y
	jmp	.L66	#
.L65:
	.loc 1 648 0 is_stmt 1
	cmpl	$0, -100(%rbp)	#, y
	jne	.L67	#,
	.loc 1 650 0
	movl	-96(%rbp), %eax	# left, tmp175
	subl	$1, %eax	#, tmp174
	movl	%eax, -104(%rbp)	# tmp174, x
	.loc 1 651 0
	subl	$1, -96(%rbp)	#, left
	.loc 1 652 0
	movl	$0, -80(%rbp)	#, directx
	.loc 1 653 0
	movl	$1, -76(%rbp)	#, directy
	jmp	.L66	#
.L67:
	.loc 1 655 0
	movl	-100(%rbp), %eax	# y, tmp176
	cmpl	-84(%rbp), %eax	# top, tmp176
	jne	.L66	#,
	.loc 1 657 0
	subl	$1, -100(%rbp)	#, y
	.loc 1 658 0
	subl	$1, -84(%rbp)	#, top
	.loc 1 659 0
	movl	$-1, -80(%rbp)	#, directx
	.loc 1 660 0
	movl	$0, -76(%rbp)	#, directy
	.loc 1 647 0
	jmp	.L59	#
.L66:
	jmp	.L59	#
.L64:
	.loc 1 663 0
	cmpl	$0, -80(%rbp)	#, directx
	jne	.L59	#,
	.loc 1 663 0 is_stmt 0 discriminator 1
	cmpl	$1, -76(%rbp)	#, directy
	jne	.L59	#,
	.loc 1 665 0 is_stmt 1
	movl	-100(%rbp), %eax	# y, tmp177
	cmpl	-88(%rbp), %eax	# bottom, tmp177
	jge	.L68	#,
	.loc 1 665 0 is_stmt 0 discriminator 1
	addl	$1, -100(%rbp)	#, y
	jmp	.L59	#
.L68:
	.loc 1 666 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.21
	movl	60(%rax), %eax	# img.21_136->height, D.6014
	leal	15(%rax), %edx	#, tmp179
	testl	%eax, %eax	# tmp178
	cmovs	%edx, %eax	# tmp179,, tmp178
	sarl	$4, %eax	#, tmp180
	subl	$1, %eax	#, D.6014
	cmpl	-100(%rbp), %eax	# y, D.6014
	jne	.L69	#,
	.loc 1 668 0
	movl	-92(%rbp), %eax	# right, tmp184
	addl	$1, %eax	#, tmp183
	movl	%eax, -104(%rbp)	# tmp183, x
	.loc 1 669 0
	addl	$1, -92(%rbp)	#, right
	.loc 1 670 0
	movl	$0, -80(%rbp)	#, directx
	.loc 1 671 0
	movl	$-1, -76(%rbp)	#, directy
	jmp	.L59	#
.L69:
	.loc 1 673 0
	movl	-100(%rbp), %eax	# y, tmp185
	cmpl	-88(%rbp), %eax	# bottom, tmp185
	jne	.L59	#,
	.loc 1 675 0
	addl	$1, -100(%rbp)	#, y
	.loc 1 676 0
	addl	$1, -88(%rbp)	#, bottom
	.loc 1 677 0
	movl	$1, -80(%rbp)	#, directx
	.loc 1 678 0
	movl	$0, -76(%rbp)	#, directy
.L59:
	.loc 1 598 0
	addl	$1, -112(%rbp)	#, k
.L52:
	.loc 1 598 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.22
	movl	52(%rax), %eax	# img.22_87->width, D.6014
	leal	15(%rax), %edx	#, tmp187
	testl	%eax, %eax	# tmp186
	cmovs	%edx, %eax	# tmp187,, tmp186
	sarl	$4, %eax	#, tmp188
	cmpl	-112(%rbp), %eax	# k, D.6014
	jg	.L70	#,
	.loc 1 597 0 is_stmt 1
	addl	$1, -116(%rbp)	#, j
.L51:
	.loc 1 597 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.23
	movl	60(%rax), %eax	# img.23_83->height, D.6014
	leal	15(%rax), %edx	#, tmp190
	testl	%eax, %eax	# tmp189
	cmovs	%edx, %eax	# tmp190,, tmp189
	sarl	$4, %eax	#, tmp191
	cmpl	-116(%rbp), %eax	# j, D.6014
	jg	.L71	#,
	.loc 1 682 0 is_stmt 1
	cmpl	$0, -108(%rbp)	#, noc
	je	.L72	#,
	.loc 1 684 0
	movl	-108(%rbp), %eax	# noc, tmp192
	movl	%eax, -44(%rbp)	# tmp192, sym.value1
	.loc 1 685 0
	movq	-144(%rbp), %rdx	# bitstream, tmp193
	leaq	-48(%rbp), %rax	#, tmp194
	movq	%rdx, %rsi	# tmp193,
	movq	%rax, %rdi	# tmp194,
	call	writeSyntaxElement2Buf_UVLC	#
	addl	%eax, -72(%rbp)	# D.6014, size_compressed
.L72:
	.loc 1 688 0
	movl	-72(%rbp), %eax	# size_compressed, tmp195
	cmpl	-68(%rbp), %eax	# size_uncompressed, tmp195
	setl	%al	#, D.6020
	movzbl	%al, %eax	# D.6020, tmp196
	movl	%eax, -52(%rbp)	# tmp196, ret
	.loc 1 689 0
	cmpl	$0, -52(%rbp)	#, ret
	jne	.L73	#,
	.loc 1 692 0
	movq	-144(%rbp), %rax	# bitstream, tmp197
	movb	$0, 8(%rax)	#, bitstream_100(D)->byte_buf
	.loc 1 693 0
	movq	-144(%rbp), %rax	# bitstream, tmp198
	movl	$8, 4(%rax)	#, bitstream_100(D)->bits_to_go
	.loc 1 694 0
	movq	-144(%rbp), %rax	# bitstream, tmp199
	movl	$0, (%rax)	#, bitstream_100(D)->byte_pos
	.loc 1 695 0
	movl	$0, -116(%rbp)	#, j
	jmp	.L74	#
.L79:
	.loc 1 697 0
	movl	$0, -112(%rbp)	#, k
	jmp	.L75	#
.L78:
	.loc 1 699 0
	movq	-144(%rbp), %rax	# bitstream, tmp200
	movzbl	8(%rax), %eax	# bitstream_100(D)->byte_buf, D.6019
	leal	(%rax,%rax), %edx	#, D.6019
	movq	-144(%rbp), %rax	# bitstream, tmp201
	movb	%dl, 8(%rax)	# D.6019, bitstream_100(D)->byte_buf
	.loc 1 700 0
	movl	-116(%rbp), %eax	# j, tmp202
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6015
	movq	-136(%rbp), %rax	# map_sp, tmp203
	addq	%rdx, %rax	# D.6015, D.6016
	movq	(%rax), %rdx	# *_166, D.6017
	movl	-112(%rbp), %eax	# k, tmp204
	cltq
	addq	%rdx, %rax	# D.6017, D.6017
	movzbl	(%rax), %eax	# *_169, D.6019
	testb	%al, %al	# D.6019
	je	.L76	#,
	.loc 1 700 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# bitstream, tmp205
	movzbl	8(%rax), %eax	# bitstream_100(D)->byte_buf, D.6019
	orl	$1, %eax	#, D.6019
	movl	%eax, %edx	# D.6019, D.6019
	movq	-144(%rbp), %rax	# bitstream, tmp206
	movb	%dl, 8(%rax)	# D.6019, bitstream_100(D)->byte_buf
.L76:
	.loc 1 701 0 is_stmt 1
	movq	-144(%rbp), %rax	# bitstream, tmp207
	movl	4(%rax), %eax	# bitstream_100(D)->bits_to_go, D.6014
	leal	-1(%rax), %edx	#, D.6014
	movq	-144(%rbp), %rax	# bitstream, tmp208
	movl	%edx, 4(%rax)	# D.6014, bitstream_100(D)->bits_to_go
	.loc 1 702 0
	movq	-144(%rbp), %rax	# bitstream, tmp209
	movl	4(%rax), %eax	# bitstream_100(D)->bits_to_go, D.6014
	testl	%eax, %eax	# D.6014
	jne	.L77	#,
	.loc 1 704 0
	movq	-144(%rbp), %rax	# bitstream, tmp210
	movl	$8, 4(%rax)	#, bitstream_100(D)->bits_to_go
	.loc 1 705 0
	movq	-144(%rbp), %rax	# bitstream, tmp211
	movq	32(%rax), %rsi	# bitstream_100(D)->streamBuffer, D.6021
	movq	-144(%rbp), %rax	# bitstream, tmp212
	movl	(%rax), %eax	# bitstream_100(D)->byte_pos, D.6014
	leal	1(%rax), %ecx	#, D.6014
	movq	-144(%rbp), %rdx	# bitstream, tmp213
	movl	%ecx, (%rdx)	# D.6014, bitstream_100(D)->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6021
	movq	-144(%rbp), %rax	# bitstream, tmp214
	movzbl	8(%rax), %eax	# bitstream_100(D)->byte_buf, D.6019
	movb	%al, (%rdx)	# D.6019, *_181
	.loc 1 706 0
	movq	-144(%rbp), %rax	# bitstream, tmp215
	movb	$0, 8(%rax)	#, bitstream_100(D)->byte_buf
.L77:
	.loc 1 697 0
	addl	$1, -112(%rbp)	#, k
.L75:
	.loc 1 697 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.24
	movl	52(%rax), %eax	# img.24_159->width, D.6014
	leal	15(%rax), %edx	#, tmp217
	testl	%eax, %eax	# tmp216
	cmovs	%edx, %eax	# tmp217,, tmp216
	sarl	$4, %eax	#, tmp218
	cmpl	-112(%rbp), %eax	# k, D.6014
	jg	.L78	#,
	.loc 1 695 0 is_stmt 1
	addl	$1, -116(%rbp)	#, j
.L74:
	.loc 1 695 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.25
	movl	60(%rax), %eax	# img.25_155->height, D.6014
	leal	15(%rax), %edx	#, tmp220
	testl	%eax, %eax	# tmp219
	cmovs	%edx, %eax	# tmp220,, tmp219
	sarl	$4, %eax	#, tmp221
	cmpl	-116(%rbp), %eax	# j, D.6014
	jg	.L79	#,
.L73:
	.loc 1 712 0 is_stmt 1
	movl	-52(%rbp), %eax	# ret, D.6022
	.loc 1 713 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	CompressSpareMBMap, .-CompressSpareMBMap
	.section	.rodata
.LC3:
	.string	"FinalizeSpareMBMap: dest"
	.align 8
.LC4:
	.string	"FinalizeSpareMBMap: dest->streamBuffer"
	.text
	.globl	FinalizeSpareMBMap
	.type	FinalizeSpareMBMap, @function
FinalizeSpareMBMap:
.LFB14:
	.loc 1 731 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	.loc 1 732 0
	movq	img(%rip), %rax	# img, img.26
	movl	(%rax), %eax	# img.26_2->number, D.6023
	cltd
	shrl	$24, %edx	#, tmp89
	addl	%edx, %eax	# tmp89, tmp90
	movzbl	%al, %eax	# tmp90, tmp91
	subl	%edx, %eax	# tmp89, tmp92
	movl	%eax, -68(%rbp)	# tmp92, CurrFrameNum
	.loc 1 737 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 738 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 740 0
	movq	seiSparePicturePayload+16(%rip), %rax	# seiSparePicturePayload.data, tmp93
	movq	%rax, -64(%rbp)	# tmp93, source
	.loc 1 741 0
	movl	$48, %edi	#,
	call	malloc	#
	movq	%rax, -56(%rbp)	# tmp94, dest
	.loc 1 742 0
	cmpq	$0, -56(%rbp)	#, dest
	jne	.L82	#,
	.loc 1 742 0 is_stmt 0 discriminator 1
	movl	$.LC3, %edi	#,
	call	no_mem_exit	#
.L82:
	.loc 1 743 0 is_stmt 1
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	# tmp95, D.6024
	movq	-56(%rbp), %rax	# dest, tmp96
	movq	%rdx, 32(%rax)	# D.6024, dest_6->streamBuffer
	.loc 1 744 0
	movq	-56(%rbp), %rax	# dest, tmp97
	movq	32(%rax), %rax	# dest_6->streamBuffer, D.6025
	testq	%rax, %rax	# D.6025
	jne	.L83	#,
	.loc 1 744 0 is_stmt 0 discriminator 1
	movl	$.LC4, %edi	#,
	call	no_mem_exit	#
.L83:
	.loc 1 745 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp98
	movl	$8, 4(%rax)	#, dest_6->bits_to_go
	.loc 1 746 0
	movq	-56(%rbp), %rax	# dest, tmp99
	movl	$0, (%rax)	#, dest_6->byte_pos
	.loc 1 747 0
	movq	-56(%rbp), %rax	# dest, tmp100
	movb	$0, 8(%rax)	#, dest_6->byte_buf
	.loc 1 748 0
	movq	-56(%rbp), %rax	# dest, tmp101
	movq	32(%rax), %rax	# dest_6->streamBuffer, D.6025
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6025,
	call	memset	#
	.loc 1 751 0
	movl	seiSparePicturePayload(%rip), %eax	# seiSparePicturePayload.target_frame_num, D.6023
	movl	-68(%rbp), %edx	# CurrFrameNum, tmp105
	subl	%eax, %edx	# D.6023, tmp104
	movl	%edx, %eax	# tmp104, tmp104
	movl	%eax, -72(%rbp)	# tmp104, delta_frame_num
	.loc 1 752 0
	cmpl	$0, -72(%rbp)	#, delta_frame_num
	jns	.L84	#,
	.loc 1 752 0 is_stmt 0 discriminator 1
	addl	$256, -72(%rbp)	#, delta_frame_num
.L84:
	.loc 1 753 0 is_stmt 1
	movl	-72(%rbp), %eax	# delta_frame_num, tmp106
	movl	%eax, -44(%rbp)	# tmp106, sym.value1
	.loc 1 754 0
	movq	-56(%rbp), %rdx	# dest, tmp107
	leaq	-48(%rbp), %rax	#, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 757 0
	movl	seiSparePicturePayload+4(%rip), %eax	# seiSparePicturePayload.num_spare_pics, D.6023
	subl	$1, %eax	#, D.6023
	movl	%eax, -44(%rbp)	# D.6023, sym.value1
	.loc 1 758 0
	movq	-56(%rbp), %rdx	# dest, tmp109
	leaq	-48(%rbp), %rax	#, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 761 0
	movq	-64(%rbp), %rdx	# source, tmp111
	movq	-56(%rbp), %rax	# dest, tmp112
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	AppendTmpbits2Buf	#
	.loc 1 764 0
	movq	-56(%rbp), %rax	# dest, tmp113
	movl	4(%rax), %eax	# dest_6->bits_to_go, D.6023
	cmpl	$8, %eax	#, D.6023
	je	.L85	#,
	.loc 1 766 0
	movq	-56(%rbp), %rax	# dest, tmp114
	movzbl	8(%rax), %eax	# dest_6->byte_buf, D.6026
	leal	(%rax,%rax), %edx	#, D.6026
	movq	-56(%rbp), %rax	# dest, tmp115
	movb	%dl, 8(%rax)	# D.6026, dest_6->byte_buf
	.loc 1 767 0
	movq	-56(%rbp), %rax	# dest, tmp116
	movzbl	8(%rax), %eax	# dest_6->byte_buf, D.6026
	orl	$1, %eax	#, D.6026
	movl	%eax, %edx	# D.6026, D.6026
	movq	-56(%rbp), %rax	# dest, tmp117
	movb	%dl, 8(%rax)	# D.6026, dest_6->byte_buf
	.loc 1 768 0
	movq	-56(%rbp), %rax	# dest, tmp118
	movl	4(%rax), %eax	# dest_6->bits_to_go, D.6023
	leal	-1(%rax), %edx	#, D.6023
	movq	-56(%rbp), %rax	# dest, tmp119
	movl	%edx, 4(%rax)	# D.6023, dest_6->bits_to_go
	.loc 1 769 0
	movq	-56(%rbp), %rax	# dest, tmp120
	movl	4(%rax), %eax	# dest_6->bits_to_go, D.6023
	testl	%eax, %eax	# D.6023
	je	.L86	#,
	.loc 1 769 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp121
	movzbl	8(%rax), %eax	# dest_6->byte_buf, D.6026
	movzbl	%al, %edx	# D.6026, D.6023
	movq	-56(%rbp), %rax	# dest, tmp122
	movl	4(%rax), %eax	# dest_6->bits_to_go, D.6023
	movl	%eax, %ecx	# D.6023, tmp137
	sall	%cl, %edx	# tmp137, D.6023
	movl	%edx, %eax	# D.6023, D.6023
	movl	%eax, %edx	# D.6023, D.6026
	movq	-56(%rbp), %rax	# dest, tmp123
	movb	%dl, 8(%rax)	# D.6026, dest_6->byte_buf
.L86:
	.loc 1 770 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp124
	movl	$8, 4(%rax)	#, dest_6->bits_to_go
	.loc 1 771 0
	movq	-56(%rbp), %rax	# dest, tmp125
	movq	32(%rax), %rsi	# dest_6->streamBuffer, D.6025
	movq	-56(%rbp), %rax	# dest, tmp126
	movl	(%rax), %eax	# dest_6->byte_pos, D.6023
	leal	1(%rax), %ecx	#, D.6023
	movq	-56(%rbp), %rdx	# dest, tmp127
	movl	%ecx, (%rdx)	# D.6023, dest_6->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6025
	movq	-56(%rbp), %rax	# dest, tmp128
	movzbl	8(%rax), %eax	# dest_6->byte_buf, D.6026
	movb	%al, (%rdx)	# D.6026, *_33
	.loc 1 772 0
	movq	-56(%rbp), %rax	# dest, tmp129
	movb	$0, 8(%rax)	#, dest_6->byte_buf
.L85:
	.loc 1 774 0
	movq	-56(%rbp), %rax	# dest, tmp130
	movl	(%rax), %eax	# dest_6->byte_pos, D.6023
	movl	%eax, seiSparePicturePayload+8(%rip)	# D.6023, seiSparePicturePayload.payloadSize
	.loc 1 777 0
	movq	-56(%rbp), %rax	# dest, tmp131
	movq	%rax, seiSparePicturePayload+16(%rip)	# tmp131, seiSparePicturePayload.data
	.loc 1 778 0
	movq	-64(%rbp), %rax	# source, tmp132
	movq	32(%rax), %rax	# source_5->streamBuffer, D.6025
	movq	%rax, %rdi	# D.6025,
	call	free	#
	.loc 1 779 0
	movq	-64(%rbp), %rax	# source, tmp133
	movq	%rax, %rdi	# tmp133,
	call	free	#
	.loc 1 780 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	FinalizeSpareMBMap, .-FinalizeSpareMBMap
	.globl	seiHasSubseqInfo
	.bss
	.align 4
	.type	seiHasSubseqInfo, @object
	.size	seiHasSubseqInfo, 4
seiHasSubseqInfo:
	.zero	4
	.comm	seiSubseqInfo,64,32
	.section	.rodata
	.align 8
.LC5:
	.string	"InitSubseqInfo: seiSubseqInfo[currLayer].data"
	.align 8
.LC6:
	.string	"InitSubseqInfo: seiSubseqInfo[currLayer].data->streamBuffer"
	.text
	.globl	InitSubseqInfo
	.type	InitSubseqInfo, @function
InitSubseqInfo:
.LFB15:
	.loc 1 802 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)	# currLayer, currLayer
	.loc 1 805 0
	movl	$1, seiHasSubseqInfo(%rip)	#, seiHasSubseqInfo
	.loc 1 806 0
	movl	-20(%rbp), %eax	# currLayer, tmp75
	cltq
	salq	$5, %rax	#, tmp76
	leaq	seiSubseqInfo(%rax), %rdx	#, tmp77
	movl	-20(%rbp), %eax	# currLayer, tmp78
	movl	%eax, (%rdx)	# tmp78, seiSubseqInfo[currLayer_1(D)].subseq_layer_num
	.loc 1 807 0
	movzwl	id.4958(%rip), %eax	# id, id.27
	leal	1(%rax), %edx	#, id.29
	movw	%dx, id.4958(%rip)	# id.29, id
	movzwl	%ax, %eax	# id.28, D.6030
	movl	-20(%rbp), %edx	# currLayer, tmp80
	movslq	%edx, %rdx	# tmp80, tmp79
	salq	$5, %rdx	#, tmp81
	addq	$seiSubseqInfo, %rdx	#, tmp82
	movl	%eax, 4(%rdx)	# D.6030, seiSubseqInfo[currLayer_1(D)].subseq_id
	.loc 1 808 0
	movl	-20(%rbp), %eax	# currLayer, tmp84
	cltq
	salq	$5, %rax	#, tmp85
	addq	$seiSubseqInfo, %rax	#, tmp86
	movl	$0, 8(%rax)	#, seiSubseqInfo[currLayer_1(D)].last_picture_flag
	.loc 1 809 0
	movl	-20(%rbp), %eax	# currLayer, tmp88
	cltq
	salq	$5, %rax	#, tmp89
	addq	$seiSubseqInfo, %rax	#, tmp90
	movl	$-1, 12(%rax)	#, seiSubseqInfo[currLayer_1(D)].stored_frame_cnt
	.loc 1 810 0
	movl	-20(%rbp), %eax	# currLayer, tmp92
	cltq
	salq	$5, %rax	#, tmp93
	addq	$seiSubseqInfo+16, %rax	#, tmp94
	movl	$0, (%rax)	#, seiSubseqInfo[currLayer_1(D)].payloadSize
	.loc 1 812 0
	movl	$48, %edi	#,
	call	malloc	#
	movl	-20(%rbp), %edx	# currLayer, tmp97
	movslq	%edx, %rdx	# tmp97, tmp96
	salq	$5, %rdx	#, tmp98
	addq	$seiSubseqInfo+16, %rdx	#, tmp99
	movq	%rax, 8(%rdx)	# D.6031, seiSubseqInfo[currLayer_1(D)].data
	.loc 1 813 0
	movl	-20(%rbp), %eax	# currLayer, tmp101
	cltq
	salq	$5, %rax	#, tmp102
	addq	$seiSubseqInfo+16, %rax	#, tmp103
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6032
	testq	%rax, %rax	# D.6032
	jne	.L88	#,
	.loc 1 813 0 is_stmt 0 discriminator 1
	movl	$.LC5, %edi	#,
	call	no_mem_exit	#
.L88:
	.loc 1 814 0 is_stmt 1
	movl	-20(%rbp), %eax	# currLayer, tmp105
	cltq
	salq	$5, %rax	#, tmp106
	addq	$seiSubseqInfo+16, %rax	#, tmp107
	movq	8(%rax), %rbx	# seiSubseqInfo[currLayer_1(D)].data, D.6032
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, 32(%rbx)	# D.6031, _8->streamBuffer
	.loc 1 815 0
	movl	-20(%rbp), %eax	# currLayer, tmp110
	cltq
	salq	$5, %rax	#, tmp111
	addq	$seiSubseqInfo+16, %rax	#, tmp112
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6032
	movq	32(%rax), %rax	# _10->streamBuffer, D.6033
	testq	%rax, %rax	# D.6033
	jne	.L89	#,
	.loc 1 815 0 is_stmt 0 discriminator 1
	movl	$.LC6, %edi	#,
	call	no_mem_exit	#
.L89:
	.loc 1 816 0 is_stmt 1
	movl	-20(%rbp), %eax	# currLayer, tmp114
	cltq
	salq	$5, %rax	#, tmp115
	addq	$seiSubseqInfo+16, %rax	#, tmp116
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6032
	movl	$8, 4(%rax)	#, _12->bits_to_go
	.loc 1 817 0
	movl	-20(%rbp), %eax	# currLayer, tmp118
	cltq
	salq	$5, %rax	#, tmp119
	addq	$seiSubseqInfo+16, %rax	#, tmp120
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6032
	movl	$0, (%rax)	#, _13->byte_pos
	.loc 1 818 0
	movl	-20(%rbp), %eax	# currLayer, tmp122
	cltq
	salq	$5, %rax	#, tmp123
	addq	$seiSubseqInfo+16, %rax	#, tmp124
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6032
	movb	$0, 8(%rax)	#, _14->byte_buf
	.loc 1 819 0
	movl	-20(%rbp), %eax	# currLayer, tmp126
	cltq
	salq	$5, %rax	#, tmp127
	addq	$seiSubseqInfo+16, %rax	#, tmp128
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6032
	movq	32(%rax), %rax	# _15->streamBuffer, D.6033
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6033,
	call	memset	#
	.loc 1 820 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	InitSubseqInfo, .-InitSubseqInfo
	.globl	UpdateSubseqInfo
	.type	UpdateSubseqInfo, @function
UpdateSubseqInfo:
.LFB16:
	.loc 1 829 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# currLayer, currLayer
	.loc 1 830 0
	movq	img(%rip), %rax	# img, img.30
	movl	24(%rax), %eax	# img.30_1->type, D.6036
	cmpl	$1, %eax	#, D.6036
	je	.L91	#,
	.loc 1 832 0
	movl	-4(%rbp), %eax	# currLayer, tmp97
	cltq
	salq	$5, %rax	#, tmp98
	addq	$seiSubseqInfo, %rax	#, tmp99
	movl	12(%rax), %eax	# seiSubseqInfo[currLayer_3(D)].stored_frame_cnt, D.6037
	leal	1(%rax), %edx	#, D.6037
	movl	-4(%rbp), %eax	# currLayer, tmp101
	cltq
	salq	$5, %rax	#, tmp102
	addq	$seiSubseqInfo, %rax	#, tmp103
	movl	%edx, 12(%rax)	# D.6037, seiSubseqInfo[currLayer_3(D)].stored_frame_cnt
	.loc 1 833 0
	movl	-4(%rbp), %eax	# currLayer, tmp105
	cltq
	salq	$5, %rax	#, tmp106
	addq	$seiSubseqInfo, %rax	#, tmp107
	movl	12(%rax), %eax	# seiSubseqInfo[currLayer_3(D)].stored_frame_cnt, D.6037
	movzbl	%al, %eax	# D.6037, D.6037
	movl	-4(%rbp), %edx	# currLayer, tmp109
	movslq	%edx, %rdx	# tmp109, tmp108
	salq	$5, %rdx	#, tmp110
	addq	$seiSubseqInfo, %rdx	#, tmp111
	movl	%eax, 12(%rdx)	# D.6037, seiSubseqInfo[currLayer_3(D)].stored_frame_cnt
.L91:
	.loc 1 836 0
	cmpl	$0, -4(%rbp)	#, currLayer
	jne	.L92	#,
	.loc 1 838 0
	movq	img(%rip), %rax	# img, img.31
	movl	(%rax), %edx	# img.31_8->number, D.6036
	movq	input(%rip), %rax	# input, input.32
	movl	8(%rax), %eax	# input.32_10->no_frames, D.6036
	subl	$1, %eax	#, D.6036
	cmpl	%eax, %edx	# D.6036, D.6036
	jne	.L93	#,
	.loc 1 839 0
	movl	-4(%rbp), %eax	# currLayer, tmp113
	cltq
	salq	$5, %rax	#, tmp114
	addq	$seiSubseqInfo, %rax	#, tmp115
	movl	$1, 8(%rax)	#, seiSubseqInfo[currLayer_3(D)].last_picture_flag
	jmp	.L92	#
.L93:
	.loc 1 841 0
	movl	-4(%rbp), %eax	# currLayer, tmp117
	cltq
	salq	$5, %rax	#, tmp118
	addq	$seiSubseqInfo, %rax	#, tmp119
	movl	$0, 8(%rax)	#, seiSubseqInfo[currLayer_3(D)].last_picture_flag
.L92:
	.loc 1 843 0
	cmpl	$1, -4(%rbp)	#, currLayer
	jne	.L90	#,
	.loc 1 845 0
	movq	img(%rip), %rax	# img, img.33
	movl	(%rax), %edx	# img.33_13->number, D.6036
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.34
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.34, D.6036
	movq	input(%rip), %rax	# input, input.35
	movl	2912(%rax), %eax	# input.35_17->NumFramesInELSubSeq, D.6036
	leal	1(%rax), %ecx	#, D.6036
	movl	%edx, %eax	# D.6036, tmp121
	cltd
	idivl	%ecx	# D.6036
	movl	%edx, %eax	# tmp120, D.6036
	testl	%eax, %eax	# D.6036
	jne	.L95	#,
	.loc 1 845 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.36
	movl	1236(%rax), %eax	# input.36_21->successive_Bframe, D.6036
	testl	%eax, %eax	# D.6036
	je	.L95	#,
	movq	img(%rip), %rax	# img, img.37
	movl	(%rax), %edx	# img.37_23->number, D.6036
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.38
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.38, D.6036
	movl	%edx, %eax	# D.6036, D.6036
	testl	%eax, %eax	# D.6036
	jg	.L96	#,
.L95:
	.loc 1 846 0 is_stmt 1 discriminator 2
	movq	img(%rip), %rax	# img, img.39
	movl	(%rax), %edx	# img.39_27->number, D.6036
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.40
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.40, D.6036
	movq	input(%rip), %rax	# input, input.41
	movl	2912(%rax), %eax	# input.41_31->NumFramesInELSubSeq, D.6036
	leal	1(%rax), %ecx	#, D.6036
	movl	%edx, %eax	# D.6036, tmp123
	cltd
	idivl	%ecx	# D.6036
	movq	input(%rip), %rax	# input, input.42
	movl	2912(%rax), %eax	# input.42_35->NumFramesInELSubSeq, D.6036
	.loc 1 845 0 discriminator 2
	cmpl	%eax, %edx	# D.6036, D.6036
	jne	.L97	#,
	.loc 1 846 0
	movq	input(%rip), %rax	# input, input.43
	movl	1236(%rax), %eax	# input.43_37->successive_Bframe, D.6036
	testl	%eax, %eax	# D.6036
	jne	.L97	#,
.L96:
	.loc 1 848 0
	movl	-4(%rbp), %eax	# currLayer, tmp125
	cltq
	salq	$5, %rax	#, tmp126
	addq	$seiSubseqInfo, %rax	#, tmp127
	movl	$1, 8(%rax)	#, seiSubseqInfo[currLayer_3(D)].last_picture_flag
	jmp	.L90	#
.L97:
	.loc 1 850 0
	movl	-4(%rbp), %eax	# currLayer, tmp129
	cltq
	salq	$5, %rax	#, tmp130
	addq	$seiSubseqInfo, %rax	#, tmp131
	movl	$0, 8(%rax)	#, seiSubseqInfo[currLayer_3(D)].last_picture_flag
.L90:
	.loc 1 852 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	UpdateSubseqInfo, .-UpdateSubseqInfo
	.globl	FinalizeSubseqInfo
	.type	FinalizeSubseqInfo, @function
FinalizeSubseqInfo:
.LFB17:
	.loc 1 861 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -68(%rbp)	# currLayer, currLayer
	.loc 1 863 0
	movl	-68(%rbp), %eax	# currLayer, tmp85
	cltq
	salq	$5, %rax	#, tmp86
	addq	$seiSubseqInfo+16, %rax	#, tmp87
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, tmp88
	movq	%rax, -56(%rbp)	# tmp88, dest
	.loc 1 865 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 866 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 868 0
	movl	-68(%rbp), %eax	# currLayer, tmp90
	cltq
	salq	$5, %rax	#, tmp91
	addq	$seiSubseqInfo, %rax	#, tmp92
	movl	(%rax), %eax	# seiSubseqInfo[currLayer_1(D)].subseq_layer_num, D.6038
	movl	%eax, -44(%rbp)	# D.6038, sym.value1
	.loc 1 869 0
	movq	-56(%rbp), %rdx	# dest, tmp93
	leaq	-48(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 870 0
	movl	-68(%rbp), %eax	# currLayer, tmp96
	cltq
	salq	$5, %rax	#, tmp97
	addq	$seiSubseqInfo, %rax	#, tmp98
	movl	4(%rax), %eax	# seiSubseqInfo[currLayer_1(D)].subseq_id, D.6038
	movl	%eax, -44(%rbp)	# D.6038, sym.value1
	.loc 1 871 0
	movq	-56(%rbp), %rdx	# dest, tmp99
	leaq	-48(%rbp), %rax	#, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 872 0
	movl	-68(%rbp), %eax	# currLayer, tmp102
	cltq
	salq	$5, %rax	#, tmp103
	addq	$seiSubseqInfo, %rax	#, tmp104
	movl	8(%rax), %eax	# seiSubseqInfo[currLayer_1(D)].last_picture_flag, D.6039
	movl	%eax, -28(%rbp)	# D.6039, sym.bitpattern
	.loc 1 873 0
	movl	$1, -36(%rbp)	#, sym.len
	.loc 1 874 0
	movq	-56(%rbp), %rdx	# dest, tmp105
	leaq	-48(%rbp), %rax	#, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 875 0
	movl	-68(%rbp), %eax	# currLayer, tmp108
	cltq
	salq	$5, %rax	#, tmp109
	addq	$seiSubseqInfo, %rax	#, tmp110
	movl	12(%rax), %eax	# seiSubseqInfo[currLayer_1(D)].stored_frame_cnt, D.6039
	movl	%eax, -44(%rbp)	# D.6038, sym.value1
	.loc 1 876 0
	movq	-56(%rbp), %rdx	# dest, tmp111
	leaq	-48(%rbp), %rax	#, tmp112
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 879 0
	movq	-56(%rbp), %rax	# dest, tmp113
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6038
	cmpl	$8, %eax	#, D.6038
	je	.L99	#,
	.loc 1 881 0
	movq	-56(%rbp), %rax	# dest, tmp114
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6040
	leal	(%rax,%rax), %edx	#, D.6040
	movq	-56(%rbp), %rax	# dest, tmp115
	movb	%dl, 8(%rax)	# D.6040, dest_2->byte_buf
	.loc 1 882 0
	movq	-56(%rbp), %rax	# dest, tmp116
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6040
	orl	$1, %eax	#, D.6040
	movl	%eax, %edx	# D.6040, D.6040
	movq	-56(%rbp), %rax	# dest, tmp117
	movb	%dl, 8(%rax)	# D.6040, dest_2->byte_buf
	.loc 1 883 0
	movq	-56(%rbp), %rax	# dest, tmp118
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6038
	leal	-1(%rax), %edx	#, D.6038
	movq	-56(%rbp), %rax	# dest, tmp119
	movl	%edx, 4(%rax)	# D.6038, dest_2->bits_to_go
	.loc 1 884 0
	movq	-56(%rbp), %rax	# dest, tmp120
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6038
	testl	%eax, %eax	# D.6038
	je	.L100	#,
	.loc 1 884 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp121
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6040
	movzbl	%al, %edx	# D.6040, D.6038
	movq	-56(%rbp), %rax	# dest, tmp122
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6038
	movl	%eax, %ecx	# D.6038, tmp137
	sall	%cl, %edx	# tmp137, D.6038
	movl	%edx, %eax	# D.6038, D.6038
	movl	%eax, %edx	# D.6038, D.6040
	movq	-56(%rbp), %rax	# dest, tmp123
	movb	%dl, 8(%rax)	# D.6040, dest_2->byte_buf
.L100:
	.loc 1 885 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp124
	movl	$8, 4(%rax)	#, dest_2->bits_to_go
	.loc 1 886 0
	movq	-56(%rbp), %rax	# dest, tmp125
	movq	32(%rax), %rsi	# dest_2->streamBuffer, D.6041
	movq	-56(%rbp), %rax	# dest, tmp126
	movl	(%rax), %eax	# dest_2->byte_pos, D.6038
	leal	1(%rax), %ecx	#, D.6038
	movq	-56(%rbp), %rdx	# dest, tmp127
	movl	%ecx, (%rdx)	# D.6038, dest_2->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6041
	movq	-56(%rbp), %rax	# dest, tmp128
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6040
	movb	%al, (%rdx)	# D.6040, *_26
	.loc 1 887 0
	movq	-56(%rbp), %rax	# dest, tmp129
	movb	$0, 8(%rax)	#, dest_2->byte_buf
.L99:
	.loc 1 889 0
	movq	-56(%rbp), %rax	# dest, tmp130
	movl	(%rax), %eax	# dest_2->byte_pos, D.6038
	movl	-68(%rbp), %edx	# currLayer, tmp132
	movslq	%edx, %rdx	# tmp132, tmp131
	salq	$5, %rdx	#, tmp133
	addq	$seiSubseqInfo+16, %rdx	#, tmp134
	movl	%eax, (%rdx)	# D.6038, seiSubseqInfo[currLayer_1(D)].payloadSize
	.loc 1 892 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	FinalizeSubseqInfo, .-FinalizeSubseqInfo
	.globl	ClearSubseqInfoPayload
	.type	ClearSubseqInfoPayload, @function
ClearSubseqInfoPayload:
.LFB18:
	.loc 1 901 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# currLayer, currLayer
	.loc 1 902 0
	movl	-4(%rbp), %eax	# currLayer, tmp65
	cltq
	salq	$5, %rax	#, tmp66
	addq	$seiSubseqInfo+16, %rax	#, tmp67
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6043
	movl	$8, 4(%rax)	#, _2->bits_to_go
	.loc 1 903 0
	movl	-4(%rbp), %eax	# currLayer, tmp69
	cltq
	salq	$5, %rax	#, tmp70
	addq	$seiSubseqInfo+16, %rax	#, tmp71
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6043
	movl	$0, (%rax)	#, _3->byte_pos
	.loc 1 904 0
	movl	-4(%rbp), %eax	# currLayer, tmp73
	cltq
	salq	$5, %rax	#, tmp74
	addq	$seiSubseqInfo+16, %rax	#, tmp75
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6043
	movb	$0, 8(%rax)	#, _4->byte_buf
	.loc 1 905 0
	movl	-4(%rbp), %eax	# currLayer, tmp77
	cltq
	salq	$5, %rax	#, tmp78
	addq	$seiSubseqInfo+16, %rax	#, tmp79
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6043
	movq	32(%rax), %rax	# _5->streamBuffer, D.6044
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6044,
	call	memset	#
	.loc 1 906 0
	movl	-4(%rbp), %eax	# currLayer, tmp81
	cltq
	salq	$5, %rax	#, tmp82
	addq	$seiSubseqInfo+16, %rax	#, tmp83
	movl	$0, (%rax)	#, seiSubseqInfo[currLayer_1(D)].payloadSize
	.loc 1 907 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ClearSubseqInfoPayload, .-ClearSubseqInfoPayload
	.globl	CloseSubseqInfo
	.type	CloseSubseqInfo, @function
CloseSubseqInfo:
.LFB19:
	.loc 1 916 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# currLayer, currLayer
	.loc 1 917 0
	movl	-4(%rbp), %eax	# currLayer, tmp63
	cltq
	salq	$5, %rax	#, tmp64
	addq	$seiSubseqInfo, %rax	#, tmp65
	movl	$-1, 12(%rax)	#, seiSubseqInfo[currLayer_1(D)].stored_frame_cnt
	.loc 1 918 0
	movl	-4(%rbp), %eax	# currLayer, tmp67
	cltq
	salq	$5, %rax	#, tmp68
	addq	$seiSubseqInfo+16, %rax	#, tmp69
	movl	$0, (%rax)	#, seiSubseqInfo[currLayer_1(D)].payloadSize
	.loc 1 920 0
	movl	-4(%rbp), %eax	# currLayer, tmp71
	cltq
	salq	$5, %rax	#, tmp72
	addq	$seiSubseqInfo+16, %rax	#, tmp73
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6045
	movq	32(%rax), %rax	# _2->streamBuffer, D.6046
	movq	%rax, %rdi	# D.6046,
	call	free	#
	.loc 1 921 0
	movl	-4(%rbp), %eax	# currLayer, tmp75
	cltq
	salq	$5, %rax	#, tmp76
	addq	$seiSubseqInfo+16, %rax	#, tmp77
	movq	8(%rax), %rax	# seiSubseqInfo[currLayer_1(D)].data, D.6045
	movq	%rax, %rdi	# D.6045,
	call	free	#
	.loc 1 922 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	CloseSubseqInfo, .-CloseSubseqInfo
	.globl	seiHasSubseqLayerInfo
	.bss
	.align 4
	.type	seiHasSubseqLayerInfo, @object
	.size	seiHasSubseqLayerInfo, 4
seiHasSubseqLayerInfo:
	.zero	4
	.comm	seiSubseqLayerInfo,24,16
	.text
	.globl	InitSubseqLayerInfo
	.type	InitSubseqLayerInfo, @function
InitSubseqLayerInfo:
.LFB20:
	.loc 1 944 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 946 0
	movl	$1, seiHasSubseqLayerInfo(%rip)	#, seiHasSubseqLayerInfo
	.loc 1 947 0
	movl	$0, seiSubseqLayerInfo+16(%rip)	#, seiSubseqLayerInfo.layer_number
	.loc 1 948 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L104	#
.L105:
	.loc 1 950 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp62
	cltq
	movw	$0, seiSubseqLayerInfo(%rax,%rax)	#, seiSubseqLayerInfo.bit_rate
	.loc 1 951 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp64
	cltq
	movw	$0, seiSubseqLayerInfo+4(%rax,%rax)	#, seiSubseqLayerInfo.frame_rate
	.loc 1 952 0 discriminator 2
	movl	seiSubseqLayerInfo+16(%rip), %eax	# seiSubseqLayerInfo.layer_number, D.6047
	addl	$1, %eax	#, D.6047
	movl	%eax, seiSubseqLayerInfo+16(%rip)	# D.6047, seiSubseqLayerInfo.layer_number
	.loc 1 948 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L104:
	.loc 1 948 0 is_stmt 0 discriminator 1
	cmpl	$1, -4(%rbp)	#, i
	jle	.L105	#,
	.loc 1 954 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	InitSubseqLayerInfo, .-InitSubseqLayerInfo
	.globl	CloseSubseqLayerInfo
	.type	CloseSubseqLayerInfo, @function
CloseSubseqLayerInfo:
.LFB21:
	.loc 1 963 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 964 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	CloseSubseqLayerInfo, .-CloseSubseqLayerInfo
	.globl	FinalizeSubseqLayerInfo
	.type	FinalizeSubseqLayerInfo, @function
FinalizeSubseqLayerInfo:
.LFB22:
	.loc 1 973 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 975 0
	movl	$0, -4(%rbp)	#, pos
	.loc 1 976 0
	movl	$0, seiSubseqLayerInfo+20(%rip)	#, seiSubseqLayerInfo.payloadSize
	.loc 1 977 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L108	#
.L109:
	.loc 1 979 0 discriminator 2
	movl	-4(%rbp), %eax	# pos, tmp67
	cltq
	addq	$seiSubseqLayerInfo, %rax	#, tmp68
	leaq	8(%rax), %rdx	#, D.6049
	movl	-8(%rbp), %eax	# i, tmp70
	cltq
	movzwl	seiSubseqLayerInfo(%rax,%rax), %eax	# seiSubseqLayerInfo.bit_rate, D.6050
	movw	%ax, (%rdx)	# D.6050, MEM[(short unsigned int *)_6]
	.loc 1 980 0 discriminator 2
	addl	$2, -4(%rbp)	#, pos
	.loc 1 981 0 discriminator 2
	movl	-4(%rbp), %eax	# pos, tmp72
	cltq
	addq	$seiSubseqLayerInfo, %rax	#, tmp73
	leaq	8(%rax), %rdx	#, D.6049
	movl	-8(%rbp), %eax	# i, tmp75
	cltq
	movzwl	seiSubseqLayerInfo+4(%rax,%rax), %eax	# seiSubseqLayerInfo.frame_rate, D.6050
	movw	%ax, (%rdx)	# D.6050, MEM[(short unsigned int *)_9]
	.loc 1 982 0 discriminator 2
	addl	$2, -4(%rbp)	#, pos
	.loc 1 983 0 discriminator 2
	movl	seiSubseqLayerInfo+20(%rip), %eax	# seiSubseqLayerInfo.payloadSize, D.6048
	addl	$4, %eax	#, D.6048
	movl	%eax, seiSubseqLayerInfo+20(%rip)	# D.6048, seiSubseqLayerInfo.payloadSize
	.loc 1 977 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L108:
	.loc 1 977 0 is_stmt 0 discriminator 1
	movl	seiSubseqLayerInfo+16(%rip), %eax	# seiSubseqLayerInfo.layer_number, D.6048
	cmpl	-8(%rbp), %eax	# i, D.6048
	jg	.L109	#,
	.loc 1 985 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	FinalizeSubseqLayerInfo, .-FinalizeSubseqLayerInfo
	.globl	seiHasSubseqChar
	.bss
	.align 4
	.type	seiHasSubseqChar, @object
	.size	seiHasSubseqChar, 4
seiHasSubseqChar:
	.zero	4
	.comm	seiSubseqChar,88,32
	.section	.rodata
	.align 8
.LC7:
	.string	"InitSubseqChar: seiSubseqChar.data"
	.align 8
.LC8:
	.string	"InitSubseqChar: seiSubseqChar.data->streamBuffer"
	.text
	.globl	InitSubseqChar
	.type	InitSubseqChar, @function
InitSubseqChar:
.LFB23:
	.loc 1 1001 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1002 0
	movl	$48, %edi	#,
	call	malloc	#
	movq	%rax, seiSubseqChar+72(%rip)	# D.6051, seiSubseqChar.data
	.loc 1 1003 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, D.6052
	testq	%rax, %rax	# D.6052
	jne	.L111	#,
	.loc 1 1003 0 is_stmt 0 discriminator 1
	movl	$.LC7, %edi	#,
	call	no_mem_exit	#
.L111:
	.loc 1 1004 0 is_stmt 1
	movq	seiSubseqChar+72(%rip), %rbx	# seiSubseqChar.data, D.6052
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, 32(%rbx)	# D.6051, _3->streamBuffer
	.loc 1 1005 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, D.6052
	movq	32(%rax), %rax	# _5->streamBuffer, D.6053
	testq	%rax, %rax	# D.6053
	jne	.L112	#,
	.loc 1 1005 0 is_stmt 0 discriminator 1
	movl	$.LC8, %edi	#,
	call	no_mem_exit	#
.L112:
	.loc 1 1006 0 is_stmt 1
	movl	$0, %eax	#,
	call	ClearSubseqCharPayload	#
	.loc 1 1008 0
	movq	img(%rip), %rax	# img, img.44
	movl	72384(%rax), %eax	# img.44_7->layer, D.6054
	movl	%eax, seiSubseqChar(%rip)	# D.6054, seiSubseqChar.subseq_layer_num
	.loc 1 1009 0
	movq	img(%rip), %rax	# img, img.45
	movl	72384(%rax), %eax	# img.45_9->layer, D.6054
	cltq
	salq	$5, %rax	#, tmp73
	addq	$seiSubseqInfo, %rax	#, tmp74
	movl	4(%rax), %eax	# seiSubseqInfo[_10].subseq_id, D.6054
	movl	%eax, seiSubseqChar+4(%rip)	# D.6054, seiSubseqChar.subseq_id
	.loc 1 1010 0
	movl	$0, seiSubseqChar+8(%rip)	#, seiSubseqChar.duration_flag
	.loc 1 1011 0
	movl	$0, seiSubseqChar+16(%rip)	#, seiSubseqChar.average_rate_flag
	.loc 1 1012 0
	movl	$0, seiSubseqChar+28(%rip)	#, seiSubseqChar.num_referenced_subseqs
	.loc 1 1013 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	InitSubseqChar, .-InitSubseqChar
	.globl	ClearSubseqCharPayload
	.type	ClearSubseqCharPayload, @function
ClearSubseqCharPayload:
.LFB24:
	.loc 1 1016 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1017 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, D.6057
	movq	32(%rax), %rax	# _1->streamBuffer, D.6058
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6058,
	call	memset	#
	.loc 1 1018 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, D.6057
	movl	$8, 4(%rax)	#, _3->bits_to_go
	.loc 1 1019 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, D.6057
	movl	$0, (%rax)	#, _4->byte_pos
	.loc 1 1020 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, D.6057
	movb	$0, 8(%rax)	#, _5->byte_buf
	.loc 1 1021 0
	movl	$0, seiSubseqChar+80(%rip)	#, seiSubseqChar.payloadSize
	.loc 1 1023 0
	movl	$0, seiHasSubseqChar(%rip)	#, seiHasSubseqChar
	.loc 1 1024 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ClearSubseqCharPayload, .-ClearSubseqCharPayload
	.globl	UpdateSubseqChar
	.type	UpdateSubseqChar, @function
UpdateSubseqChar:
.LFB25:
	.loc 1 1027 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1028 0
	movq	img(%rip), %rax	# img, img.46
	movl	72384(%rax), %eax	# img.46_1->layer, D.6059
	movl	%eax, seiSubseqChar(%rip)	# D.6059, seiSubseqChar.subseq_layer_num
	.loc 1 1029 0
	movq	img(%rip), %rax	# img, img.47
	movl	72384(%rax), %eax	# img.47_3->layer, D.6059
	cltq
	salq	$5, %rax	#, tmp65
	addq	$seiSubseqInfo, %rax	#, tmp66
	movl	4(%rax), %eax	# seiSubseqInfo[_4].subseq_id, D.6059
	movl	%eax, seiSubseqChar+4(%rip)	# D.6059, seiSubseqChar.subseq_id
	.loc 1 1030 0
	movl	$0, seiSubseqChar+8(%rip)	#, seiSubseqChar.duration_flag
	.loc 1 1031 0
	movl	$0, seiSubseqChar+16(%rip)	#, seiSubseqChar.average_rate_flag
	.loc 1 1032 0
	movl	$100, seiSubseqChar+20(%rip)	#, seiSubseqChar.average_bit_rate
	.loc 1 1033 0
	movl	$30, seiSubseqChar+24(%rip)	#, seiSubseqChar.average_frame_rate
	.loc 1 1034 0
	movl	$0, seiSubseqChar+28(%rip)	#, seiSubseqChar.num_referenced_subseqs
	.loc 1 1035 0
	movl	$1, seiSubseqChar+32(%rip)	#, seiSubseqChar.ref_subseq_layer_num
	.loc 1 1036 0
	movl	$2, seiSubseqChar+52(%rip)	#, seiSubseqChar.ref_subseq_id
	.loc 1 1037 0
	movl	$3, seiSubseqChar+36(%rip)	#, seiSubseqChar.ref_subseq_layer_num
	.loc 1 1038 0
	movl	$4, seiSubseqChar+56(%rip)	#, seiSubseqChar.ref_subseq_id
	.loc 1 1040 0
	movl	$1, seiHasSubseqChar(%rip)	#, seiHasSubseqChar
	.loc 1 1041 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	UpdateSubseqChar, .-UpdateSubseqChar
	.globl	FinalizeSubseqChar
	.type	FinalizeSubseqChar, @function
FinalizeSubseqChar:
.LFB26:
	.loc 1 1044 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 1047 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, tmp93
	movq	%rax, -56(%rbp)	# tmp93, dest
	.loc 1 1049 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 1050 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 1052 0
	movl	seiSubseqChar(%rip), %eax	# seiSubseqChar.subseq_layer_num, D.6060
	movl	%eax, -44(%rbp)	# D.6060, sym.value1
	.loc 1 1053 0
	movq	-56(%rbp), %rdx	# dest, tmp94
	leaq	-48(%rbp), %rax	#, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1054 0
	movl	seiSubseqChar+4(%rip), %eax	# seiSubseqChar.subseq_id, D.6060
	movl	%eax, -44(%rbp)	# D.6060, sym.value1
	.loc 1 1055 0
	movq	-56(%rbp), %rdx	# dest, tmp96
	leaq	-48(%rbp), %rax	#, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1056 0
	movl	seiSubseqChar+8(%rip), %eax	# seiSubseqChar.duration_flag, D.6060
	movl	%eax, -28(%rbp)	# D.6061, sym.bitpattern
	.loc 1 1057 0
	movl	$1, -36(%rbp)	#, sym.len
	.loc 1 1058 0
	movq	-56(%rbp), %rdx	# dest, tmp98
	leaq	-48(%rbp), %rax	#, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 1059 0
	movl	seiSubseqChar+8(%rip), %eax	# seiSubseqChar.duration_flag, D.6060
	testl	%eax, %eax	# D.6060
	je	.L116	#,
	.loc 1 1061 0
	movl	seiSubseqChar+12(%rip), %eax	# seiSubseqChar.subseq_duration, D.6061
	movl	%eax, -28(%rbp)	# D.6061, sym.bitpattern
	.loc 1 1062 0
	movl	$32, -36(%rbp)	#, sym.len
	.loc 1 1063 0
	movq	-56(%rbp), %rdx	# dest, tmp100
	leaq	-48(%rbp), %rax	#, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	writeSyntaxElement2Buf_Fixed	#
.L116:
	.loc 1 1065 0
	movl	seiSubseqChar+16(%rip), %eax	# seiSubseqChar.average_rate_flag, D.6061
	movl	%eax, -28(%rbp)	# D.6061, sym.bitpattern
	.loc 1 1066 0
	movl	$1, -36(%rbp)	#, sym.len
	.loc 1 1067 0
	movq	-56(%rbp), %rdx	# dest, tmp102
	leaq	-48(%rbp), %rax	#, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 1068 0
	movl	seiSubseqChar+16(%rip), %eax	# seiSubseqChar.average_rate_flag, D.6061
	testl	%eax, %eax	# D.6061
	je	.L117	#,
	.loc 1 1070 0
	movl	seiSubseqChar+20(%rip), %eax	# seiSubseqChar.average_bit_rate, D.6061
	movl	%eax, -28(%rbp)	# D.6061, sym.bitpattern
	.loc 1 1071 0
	movl	$16, -36(%rbp)	#, sym.len
	.loc 1 1072 0
	movq	-56(%rbp), %rdx	# dest, tmp104
	leaq	-48(%rbp), %rax	#, tmp105
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 1073 0
	movl	seiSubseqChar+24(%rip), %eax	# seiSubseqChar.average_frame_rate, D.6061
	movl	%eax, -28(%rbp)	# D.6061, sym.bitpattern
	.loc 1 1074 0
	movl	$16, -36(%rbp)	#, sym.len
	.loc 1 1075 0
	movq	-56(%rbp), %rdx	# dest, tmp106
	leaq	-48(%rbp), %rax	#, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	writeSyntaxElement2Buf_Fixed	#
.L117:
	.loc 1 1077 0
	movl	seiSubseqChar+28(%rip), %eax	# seiSubseqChar.num_referenced_subseqs, D.6060
	movl	%eax, -44(%rbp)	# D.6060, sym.value1
	.loc 1 1078 0
	movq	-56(%rbp), %rdx	# dest, tmp108
	leaq	-48(%rbp), %rax	#, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1079 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L118	#
.L119:
	.loc 1 1081 0 discriminator 2
	movl	-60(%rbp), %eax	# i, tmp111
	cltq
	addq	$8, %rax	#, tmp112
	movl	seiSubseqChar(,%rax,4), %eax	# seiSubseqChar.ref_subseq_layer_num, D.6060
	movl	%eax, -44(%rbp)	# D.6060, sym.value1
	.loc 1 1082 0 discriminator 2
	movq	-56(%rbp), %rdx	# dest, tmp113
	leaq	-48(%rbp), %rax	#, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1083 0 discriminator 2
	movl	-60(%rbp), %eax	# i, tmp116
	cltq
	addq	$12, %rax	#, tmp117
	movl	seiSubseqChar+4(,%rax,4), %eax	# seiSubseqChar.ref_subseq_id, D.6060
	movl	%eax, -44(%rbp)	# D.6060, sym.value1
	.loc 1 1084 0 discriminator 2
	movq	-56(%rbp), %rdx	# dest, tmp118
	leaq	-48(%rbp), %rax	#, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1079 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L118:
	.loc 1 1079 0 is_stmt 0 discriminator 1
	movl	seiSubseqChar+28(%rip), %eax	# seiSubseqChar.num_referenced_subseqs, D.6060
	cmpl	-60(%rbp), %eax	# i, D.6060
	jg	.L119	#,
	.loc 1 1088 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp120
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6060
	cmpl	$8, %eax	#, D.6060
	je	.L120	#,
	.loc 1 1090 0
	movq	-56(%rbp), %rax	# dest, tmp121
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6062
	leal	(%rax,%rax), %edx	#, D.6062
	movq	-56(%rbp), %rax	# dest, tmp122
	movb	%dl, 8(%rax)	# D.6062, dest_2->byte_buf
	.loc 1 1091 0
	movq	-56(%rbp), %rax	# dest, tmp123
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6062
	orl	$1, %eax	#, D.6062
	movl	%eax, %edx	# D.6062, D.6062
	movq	-56(%rbp), %rax	# dest, tmp124
	movb	%dl, 8(%rax)	# D.6062, dest_2->byte_buf
	.loc 1 1092 0
	movq	-56(%rbp), %rax	# dest, tmp125
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6060
	leal	-1(%rax), %edx	#, D.6060
	movq	-56(%rbp), %rax	# dest, tmp126
	movl	%edx, 4(%rax)	# D.6060, dest_2->bits_to_go
	.loc 1 1093 0
	movq	-56(%rbp), %rax	# dest, tmp127
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6060
	testl	%eax, %eax	# D.6060
	je	.L121	#,
	.loc 1 1093 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp128
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6062
	movzbl	%al, %edx	# D.6062, D.6060
	movq	-56(%rbp), %rax	# dest, tmp129
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6060
	movl	%eax, %ecx	# D.6060, tmp140
	sall	%cl, %edx	# tmp140, D.6060
	movl	%edx, %eax	# D.6060, D.6060
	movl	%eax, %edx	# D.6060, D.6062
	movq	-56(%rbp), %rax	# dest, tmp130
	movb	%dl, 8(%rax)	# D.6062, dest_2->byte_buf
.L121:
	.loc 1 1094 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp131
	movl	$8, 4(%rax)	#, dest_2->bits_to_go
	.loc 1 1095 0
	movq	-56(%rbp), %rax	# dest, tmp132
	movq	32(%rax), %rsi	# dest_2->streamBuffer, D.6063
	movq	-56(%rbp), %rax	# dest, tmp133
	movl	(%rax), %eax	# dest_2->byte_pos, D.6060
	leal	1(%rax), %ecx	#, D.6060
	movq	-56(%rbp), %rdx	# dest, tmp134
	movl	%ecx, (%rdx)	# D.6060, dest_2->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6063
	movq	-56(%rbp), %rax	# dest, tmp135
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6062
	movb	%al, (%rdx)	# D.6062, *_37
	.loc 1 1096 0
	movq	-56(%rbp), %rax	# dest, tmp136
	movb	$0, 8(%rax)	#, dest_2->byte_buf
.L120:
	.loc 1 1098 0
	movq	-56(%rbp), %rax	# dest, tmp137
	movl	(%rax), %eax	# dest_2->byte_pos, D.6060
	movl	%eax, seiSubseqChar+80(%rip)	# D.6060, seiSubseqChar.payloadSize
	.loc 1 1099 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	FinalizeSubseqChar, .-FinalizeSubseqChar
	.globl	CloseSubseqChar
	.type	CloseSubseqChar, @function
CloseSubseqChar:
.LFB27:
	.loc 1 1102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1103 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, D.6065
	testq	%rax, %rax	# D.6065
	je	.L123	#,
	.loc 1 1105 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, D.6065
	movq	32(%rax), %rax	# _2->streamBuffer, D.6066
	movq	%rax, %rdi	# D.6066,
	call	free	#
	.loc 1 1106 0
	movq	seiSubseqChar+72(%rip), %rax	# seiSubseqChar.data, D.6065
	movq	%rax, %rdi	# D.6065,
	call	free	#
.L123:
	.loc 1 1108 0
	movq	$0, seiSubseqChar+72(%rip)	#, seiSubseqChar.data
	.loc 1 1109 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	CloseSubseqChar, .-CloseSubseqChar
	.comm	seiSceneInformation,32,32
	.section	.rodata
	.align 8
.LC9:
	.string	"InitSceneInformation: seiSceneInformation.data"
	.align 8
.LC10:
	.string	"InitSceneInformation: seiSceneInformation.data->streamBuffer"
	.text
	.globl	InitSceneInformation
	.type	InitSceneInformation, @function
InitSceneInformation:
.LFB28:
	.loc 1 1126 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1127 0
	movl	$1, seiHasSceneInformation(%rip)	#, seiHasSceneInformation
	.loc 1 1129 0
	movl	$0, seiSceneInformation(%rip)	#, seiSceneInformation.scene_id
	.loc 1 1130 0
	movl	$0, seiSceneInformation+4(%rip)	#, seiSceneInformation.scene_transition_type
	.loc 1 1131 0
	movl	$-1, seiSceneInformation+8(%rip)	#, seiSceneInformation.second_scene_id
	.loc 1 1133 0
	movl	$48, %edi	#,
	call	malloc	#
	movq	%rax, seiSceneInformation+16(%rip)	# D.6067, seiSceneInformation.data
	.loc 1 1134 0
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, D.6068
	testq	%rax, %rax	# D.6068
	jne	.L125	#,
	.loc 1 1134 0 is_stmt 0 discriminator 1
	movl	$.LC9, %edi	#,
	call	no_mem_exit	#
.L125:
	.loc 1 1135 0 is_stmt 1
	movq	seiSceneInformation+16(%rip), %rbx	# seiSceneInformation.data, D.6068
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, 32(%rbx)	# D.6067, _3->streamBuffer
	.loc 1 1136 0
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, D.6068
	movq	32(%rax), %rax	# _5->streamBuffer, D.6069
	testq	%rax, %rax	# D.6069
	jne	.L126	#,
	.loc 1 1136 0 is_stmt 0 discriminator 1
	movl	$.LC10, %edi	#,
	call	no_mem_exit	#
.L126:
	.loc 1 1137 0 is_stmt 1
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, D.6068
	movl	$8, 4(%rax)	#, _7->bits_to_go
	.loc 1 1138 0
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, D.6068
	movl	$0, (%rax)	#, _8->byte_pos
	.loc 1 1139 0
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, D.6068
	movb	$0, 8(%rax)	#, _9->byte_buf
	.loc 1 1140 0
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, D.6068
	movq	32(%rax), %rax	# _10->streamBuffer, D.6069
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6069,
	call	memset	#
	.loc 1 1141 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	InitSceneInformation, .-InitSceneInformation
	.globl	CloseSceneInformation
	.type	CloseSceneInformation, @function
CloseSceneInformation:
.LFB29:
	.loc 1 1144 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1145 0
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, D.6072
	testq	%rax, %rax	# D.6072
	je	.L128	#,
	.loc 1 1147 0
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, D.6072
	movq	32(%rax), %rax	# _2->streamBuffer, D.6073
	movq	%rax, %rdi	# D.6073,
	call	free	#
	.loc 1 1148 0
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, D.6072
	movq	%rax, %rdi	# D.6072,
	call	free	#
.L128:
	.loc 1 1150 0
	movq	$0, seiSceneInformation+16(%rip)	#, seiSceneInformation.data
	.loc 1 1151 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	CloseSceneInformation, .-CloseSceneInformation
	.globl	FinalizeSceneInformation
	.type	FinalizeSceneInformation, @function
FinalizeSceneInformation:
.LFB30:
	.loc 1 1154 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 1156 0
	movq	seiSceneInformation+16(%rip), %rax	# seiSceneInformation.data, tmp85
	movq	%rax, -56(%rbp)	# tmp85, dest
	.loc 1 1158 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 1159 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 1161 0
	movl	seiSceneInformation(%rip), %eax	# seiSceneInformation.scene_id, D.6074
	movl	%eax, -28(%rbp)	# D.6075, sym.bitpattern
	.loc 1 1162 0
	movl	$8, -36(%rbp)	#, sym.len
	.loc 1 1163 0
	movq	-56(%rbp), %rdx	# dest, tmp86
	leaq	-48(%rbp), %rax	#, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 1165 0
	movl	seiSceneInformation+4(%rip), %eax	# seiSceneInformation.scene_transition_type, D.6074
	movl	%eax, -44(%rbp)	# D.6074, sym.value1
	.loc 1 1166 0
	movq	-56(%rbp), %rdx	# dest, tmp88
	leaq	-48(%rbp), %rax	#, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1168 0
	movl	seiSceneInformation+4(%rip), %eax	# seiSceneInformation.scene_transition_type, D.6074
	cmpl	$3, %eax	#, D.6074
	jle	.L130	#,
	.loc 1 1170 0
	movl	seiSceneInformation+8(%rip), %eax	# seiSceneInformation.second_scene_id, D.6074
	movl	%eax, -28(%rbp)	# D.6075, sym.bitpattern
	.loc 1 1171 0
	movl	$8, -36(%rbp)	#, sym.len
	.loc 1 1172 0
	movq	-56(%rbp), %rdx	# dest, tmp90
	leaq	-48(%rbp), %rax	#, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	writeSyntaxElement2Buf_Fixed	#
.L130:
	.loc 1 1176 0
	movq	-56(%rbp), %rax	# dest, tmp92
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6074
	cmpl	$8, %eax	#, D.6074
	je	.L131	#,
	.loc 1 1178 0
	movq	-56(%rbp), %rax	# dest, tmp93
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6076
	leal	(%rax,%rax), %edx	#, D.6076
	movq	-56(%rbp), %rax	# dest, tmp94
	movb	%dl, 8(%rax)	# D.6076, dest_1->byte_buf
	.loc 1 1179 0
	movq	-56(%rbp), %rax	# dest, tmp95
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6076
	orl	$1, %eax	#, D.6076
	movl	%eax, %edx	# D.6076, D.6076
	movq	-56(%rbp), %rax	# dest, tmp96
	movb	%dl, 8(%rax)	# D.6076, dest_1->byte_buf
	.loc 1 1180 0
	movq	-56(%rbp), %rax	# dest, tmp97
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6074
	leal	-1(%rax), %edx	#, D.6074
	movq	-56(%rbp), %rax	# dest, tmp98
	movl	%edx, 4(%rax)	# D.6074, dest_1->bits_to_go
	.loc 1 1181 0
	movq	-56(%rbp), %rax	# dest, tmp99
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6074
	testl	%eax, %eax	# D.6074
	je	.L132	#,
	.loc 1 1181 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp100
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6076
	movzbl	%al, %edx	# D.6076, D.6074
	movq	-56(%rbp), %rax	# dest, tmp101
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6074
	movl	%eax, %ecx	# D.6074, tmp112
	sall	%cl, %edx	# tmp112, D.6074
	movl	%edx, %eax	# D.6074, D.6074
	movl	%eax, %edx	# D.6074, D.6076
	movq	-56(%rbp), %rax	# dest, tmp102
	movb	%dl, 8(%rax)	# D.6076, dest_1->byte_buf
.L132:
	.loc 1 1182 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp103
	movl	$8, 4(%rax)	#, dest_1->bits_to_go
	.loc 1 1183 0
	movq	-56(%rbp), %rax	# dest, tmp104
	movq	32(%rax), %rsi	# dest_1->streamBuffer, D.6077
	movq	-56(%rbp), %rax	# dest, tmp105
	movl	(%rax), %eax	# dest_1->byte_pos, D.6074
	leal	1(%rax), %ecx	#, D.6074
	movq	-56(%rbp), %rdx	# dest, tmp106
	movl	%ecx, (%rdx)	# D.6074, dest_1->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6077
	movq	-56(%rbp), %rax	# dest, tmp107
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6076
	movb	%al, (%rdx)	# D.6076, *_26
	.loc 1 1184 0
	movq	-56(%rbp), %rax	# dest, tmp108
	movb	$0, 8(%rax)	#, dest_1->byte_buf
.L131:
	.loc 1 1186 0
	movq	-56(%rbp), %rax	# dest, tmp109
	movl	(%rax), %eax	# dest_1->byte_pos, D.6074
	movl	%eax, seiSceneInformation+24(%rip)	# D.6074, seiSceneInformation.payloadSize
	.loc 1 1187 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	FinalizeSceneInformation, .-FinalizeSceneInformation
	.globl	UpdateSceneInformation
	.type	UpdateSceneInformation, @function
UpdateSceneInformation:
.LFB31:
	.loc 1 1193 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# HasSceneInformation, HasSceneInformation
	movl	%esi, -8(%rbp)	# sceneID, sceneID
	movl	%edx, -12(%rbp)	# sceneTransType, sceneTransType
	movl	%ecx, -16(%rbp)	# secondSceneID, secondSceneID
	.loc 1 1194 0
	movl	-4(%rbp), %eax	# HasSceneInformation, tmp59
	movl	%eax, seiHasSceneInformation(%rip)	# tmp59, seiHasSceneInformation
	.loc 1 1197 0
	movl	-8(%rbp), %eax	# sceneID, tmp60
	movl	%eax, seiSceneInformation(%rip)	# tmp60, seiSceneInformation.scene_id
	.loc 1 1200 0
	movl	-12(%rbp), %eax	# sceneTransType, tmp61
	movl	%eax, seiSceneInformation+4(%rip)	# tmp61, seiSceneInformation.scene_transition_type
	.loc 1 1202 0
	cmpl	$3, -12(%rbp)	#, sceneTransType
	jle	.L133	#,
	.loc 1 1205 0
	movl	-16(%rbp), %eax	# secondSceneID, tmp62
	movl	%eax, seiSceneInformation+8(%rip)	# tmp62, seiSceneInformation.second_scene_id
.L133:
	.loc 1 1207 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	UpdateSceneInformation, .-UpdateSceneInformation
	.globl	seiHasPanScanRectInfo
	.bss
	.align 4
	.type	seiHasPanScanRectInfo, @object
	.size	seiHasPanScanRectInfo, 4
seiHasPanScanRectInfo:
	.zero	4
	.comm	seiPanScanRectInfo,40,32
	.section	.rodata
	.align 8
.LC11:
	.string	"InitPanScanRectInfo: seiPanScanRectInfo.data"
	.align 8
.LC12:
	.string	"InitPanScanRectInfo: seiPanScanRectInfo.data->streamBuffer"
	.text
	.globl	InitPanScanRectInfo
	.type	InitPanScanRectInfo, @function
InitPanScanRectInfo:
.LFB32:
	.loc 1 1225 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1227 0
	movl	$48, %edi	#,
	call	malloc	#
	movq	%rax, seiPanScanRectInfo+24(%rip)	# D.6079, seiPanScanRectInfo.data
	.loc 1 1228 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, D.6080
	testq	%rax, %rax	# D.6080
	jne	.L136	#,
	.loc 1 1228 0 is_stmt 0 discriminator 1
	movl	$.LC11, %edi	#,
	call	no_mem_exit	#
.L136:
	.loc 1 1229 0 is_stmt 1
	movq	seiPanScanRectInfo+24(%rip), %rbx	# seiPanScanRectInfo.data, D.6080
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, 32(%rbx)	# D.6079, _3->streamBuffer
	.loc 1 1230 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, D.6080
	movq	32(%rax), %rax	# _5->streamBuffer, D.6081
	testq	%rax, %rax	# D.6081
	jne	.L137	#,
	.loc 1 1230 0 is_stmt 0 discriminator 1
	movl	$.LC12, %edi	#,
	call	no_mem_exit	#
.L137:
	.loc 1 1231 0 is_stmt 1
	movl	$0, %eax	#,
	call	ClearPanScanRectInfoPayload	#
	.loc 1 1233 0
	movl	$0, seiPanScanRectInfo+4(%rip)	#, seiPanScanRectInfo.pan_scan_rect_left_offset
	.loc 1 1234 0
	movl	$0, seiPanScanRectInfo+8(%rip)	#, seiPanScanRectInfo.pan_scan_rect_right_offset
	.loc 1 1235 0
	movl	$0, seiPanScanRectInfo+12(%rip)	#, seiPanScanRectInfo.pan_scan_rect_top_offset
	.loc 1 1236 0
	movl	$0, seiPanScanRectInfo+16(%rip)	#, seiPanScanRectInfo.pan_scan_rect_bottom_offset
	.loc 1 1238 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	InitPanScanRectInfo, .-InitPanScanRectInfo
	.globl	ClearPanScanRectInfoPayload
	.type	ClearPanScanRectInfoPayload, @function
ClearPanScanRectInfoPayload:
.LFB33:
	.loc 1 1242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1243 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, D.6084
	movq	32(%rax), %rax	# _1->streamBuffer, D.6085
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6085,
	call	memset	#
	.loc 1 1244 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, D.6084
	movl	$8, 4(%rax)	#, _3->bits_to_go
	.loc 1 1245 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, D.6084
	movl	$0, (%rax)	#, _4->byte_pos
	.loc 1 1246 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, D.6084
	movb	$0, 8(%rax)	#, _5->byte_buf
	.loc 1 1247 0
	movl	$0, seiPanScanRectInfo+32(%rip)	#, seiPanScanRectInfo.payloadSize
	.loc 1 1249 0
	movl	$1, seiHasPanScanRectInfo(%rip)	#, seiHasPanScanRectInfo
	.loc 1 1250 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ClearPanScanRectInfoPayload, .-ClearPanScanRectInfoPayload
	.globl	UpdatePanScanRectInfo
	.type	UpdatePanScanRectInfo, @function
UpdatePanScanRectInfo:
.LFB34:
	.loc 1 1253 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1254 0
	movl	$3, seiPanScanRectInfo(%rip)	#, seiPanScanRectInfo.pan_scan_rect_id
	.loc 1 1255 0
	movl	$10, seiPanScanRectInfo+4(%rip)	#, seiPanScanRectInfo.pan_scan_rect_left_offset
	.loc 1 1256 0
	movl	$40, seiPanScanRectInfo+8(%rip)	#, seiPanScanRectInfo.pan_scan_rect_right_offset
	.loc 1 1257 0
	movl	$20, seiPanScanRectInfo+12(%rip)	#, seiPanScanRectInfo.pan_scan_rect_top_offset
	.loc 1 1258 0
	movl	$32, seiPanScanRectInfo+16(%rip)	#, seiPanScanRectInfo.pan_scan_rect_bottom_offset
	.loc 1 1259 0
	movl	$1, seiHasPanScanRectInfo(%rip)	#, seiHasPanScanRectInfo
	.loc 1 1260 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	UpdatePanScanRectInfo, .-UpdatePanScanRectInfo
	.globl	FinalizePanScanRectInfo
	.type	FinalizePanScanRectInfo, @function
FinalizePanScanRectInfo:
.LFB35:
	.loc 1 1263 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 1265 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, tmp84
	movq	%rax, -56(%rbp)	# tmp84, dest
	.loc 1 1268 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 1269 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 1271 0
	movl	seiPanScanRectInfo(%rip), %eax	# seiPanScanRectInfo.pan_scan_rect_id, D.6086
	movl	%eax, -44(%rbp)	# D.6086, sym.value1
	.loc 1 1272 0
	movq	-56(%rbp), %rdx	# dest, tmp85
	leaq	-48(%rbp), %rax	#, tmp86
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1273 0
	movl	seiPanScanRectInfo+4(%rip), %eax	# seiPanScanRectInfo.pan_scan_rect_left_offset, D.6086
	movl	%eax, -44(%rbp)	# D.6086, sym.value1
	.loc 1 1274 0
	movq	-56(%rbp), %rdx	# dest, tmp87
	leaq	-48(%rbp), %rax	#, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1275 0
	movl	seiPanScanRectInfo+8(%rip), %eax	# seiPanScanRectInfo.pan_scan_rect_right_offset, D.6086
	movl	%eax, -44(%rbp)	# D.6086, sym.value1
	.loc 1 1276 0
	movq	-56(%rbp), %rdx	# dest, tmp89
	leaq	-48(%rbp), %rax	#, tmp90
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1277 0
	movl	seiPanScanRectInfo+12(%rip), %eax	# seiPanScanRectInfo.pan_scan_rect_top_offset, D.6086
	movl	%eax, -44(%rbp)	# D.6086, sym.value1
	.loc 1 1278 0
	movq	-56(%rbp), %rdx	# dest, tmp91
	leaq	-48(%rbp), %rax	#, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1279 0
	movl	seiPanScanRectInfo+16(%rip), %eax	# seiPanScanRectInfo.pan_scan_rect_bottom_offset, D.6086
	movl	%eax, -44(%rbp)	# D.6086, sym.value1
	.loc 1 1280 0
	movq	-56(%rbp), %rdx	# dest, tmp93
	leaq	-48(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1290 0
	movq	-56(%rbp), %rax	# dest, tmp95
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6086
	cmpl	$8, %eax	#, D.6086
	je	.L141	#,
	.loc 1 1292 0
	movq	-56(%rbp), %rax	# dest, tmp96
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6087
	leal	(%rax,%rax), %edx	#, D.6087
	movq	-56(%rbp), %rax	# dest, tmp97
	movb	%dl, 8(%rax)	# D.6087, dest_1->byte_buf
	.loc 1 1293 0
	movq	-56(%rbp), %rax	# dest, tmp98
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6087
	orl	$1, %eax	#, D.6087
	movl	%eax, %edx	# D.6087, D.6087
	movq	-56(%rbp), %rax	# dest, tmp99
	movb	%dl, 8(%rax)	# D.6087, dest_1->byte_buf
	.loc 1 1294 0
	movq	-56(%rbp), %rax	# dest, tmp100
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6086
	leal	-1(%rax), %edx	#, D.6086
	movq	-56(%rbp), %rax	# dest, tmp101
	movl	%edx, 4(%rax)	# D.6086, dest_1->bits_to_go
	.loc 1 1295 0
	movq	-56(%rbp), %rax	# dest, tmp102
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6086
	testl	%eax, %eax	# D.6086
	je	.L142	#,
	.loc 1 1295 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp103
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6087
	movzbl	%al, %edx	# D.6087, D.6086
	movq	-56(%rbp), %rax	# dest, tmp104
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6086
	movl	%eax, %ecx	# D.6086, tmp115
	sall	%cl, %edx	# tmp115, D.6086
	movl	%edx, %eax	# D.6086, D.6086
	movl	%eax, %edx	# D.6086, D.6087
	movq	-56(%rbp), %rax	# dest, tmp105
	movb	%dl, 8(%rax)	# D.6087, dest_1->byte_buf
.L142:
	.loc 1 1296 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp106
	movl	$8, 4(%rax)	#, dest_1->bits_to_go
	.loc 1 1297 0
	movq	-56(%rbp), %rax	# dest, tmp107
	movq	32(%rax), %rsi	# dest_1->streamBuffer, D.6088
	movq	-56(%rbp), %rax	# dest, tmp108
	movl	(%rax), %eax	# dest_1->byte_pos, D.6086
	leal	1(%rax), %ecx	#, D.6086
	movq	-56(%rbp), %rdx	# dest, tmp109
	movl	%ecx, (%rdx)	# D.6086, dest_1->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6088
	movq	-56(%rbp), %rax	# dest, tmp110
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6087
	movb	%al, (%rdx)	# D.6087, *_25
	.loc 1 1298 0
	movq	-56(%rbp), %rax	# dest, tmp111
	movb	$0, 8(%rax)	#, dest_1->byte_buf
.L141:
	.loc 1 1300 0
	movq	-56(%rbp), %rax	# dest, tmp112
	movl	(%rax), %eax	# dest_1->byte_pos, D.6086
	movl	%eax, seiPanScanRectInfo+32(%rip)	# D.6086, seiPanScanRectInfo.payloadSize
	.loc 1 1301 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	FinalizePanScanRectInfo, .-FinalizePanScanRectInfo
	.globl	ClosePanScanRectInfo
	.type	ClosePanScanRectInfo, @function
ClosePanScanRectInfo:
.LFB36:
	.loc 1 1306 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1307 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, D.6090
	testq	%rax, %rax	# D.6090
	je	.L144	#,
	.loc 1 1309 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, D.6090
	movq	32(%rax), %rax	# _2->streamBuffer, D.6091
	movq	%rax, %rdi	# D.6091,
	call	free	#
	.loc 1 1310 0
	movq	seiPanScanRectInfo+24(%rip), %rax	# seiPanScanRectInfo.data, D.6090
	movq	%rax, %rdi	# D.6090,
	call	free	#
.L144:
	.loc 1 1312 0
	movq	$0, seiPanScanRectInfo+24(%rip)	#, seiPanScanRectInfo.data
	.loc 1 1313 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	ClosePanScanRectInfo, .-ClosePanScanRectInfo
	.section	.rodata
	.align 8
.LC13:
	.string	"InitUser_data_unregistered: seiUser_data_unregistered.data"
	.align 8
.LC14:
	.string	"InitUser_data_unregistered: seiUser_data_unregistered.data->streamBuffer"
	.align 8
.LC15:
	.string	"InitUser_data_unregistered: seiUser_data_unregistered.byte"
	.text
	.globl	InitUser_data_unregistered
	.type	InitUser_data_unregistered, @function
InitUser_data_unregistered:
.LFB37:
	.loc 1 1327 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1329 0
	movl	$48, %edi	#,
	call	malloc	#
	movq	%rax, seiUser_data_unregistered+16(%rip)	# D.6092, seiUser_data_unregistered.data
	.loc 1 1330 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, D.6093
	testq	%rax, %rax	# D.6093
	jne	.L146	#,
	.loc 1 1330 0 is_stmt 0 discriminator 1
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L146:
	.loc 1 1331 0 is_stmt 1
	movq	seiUser_data_unregistered+16(%rip), %rbx	# seiUser_data_unregistered.data, D.6093
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, 32(%rbx)	# D.6092, _3->streamBuffer
	.loc 1 1332 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, D.6093
	movq	32(%rax), %rax	# _5->streamBuffer, D.6094
	testq	%rax, %rax	# D.6094
	jne	.L147	#,
	.loc 1 1332 0 is_stmt 0 discriminator 1
	movl	$.LC14, %edi	#,
	call	no_mem_exit	#
.L147:
	.loc 1 1333 0 is_stmt 1
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, seiUser_data_unregistered(%rip)	# D.6092, seiUser_data_unregistered.byte
	.loc 1 1334 0
	movq	seiUser_data_unregistered(%rip), %rax	# seiUser_data_unregistered.byte, D.6095
	testq	%rax, %rax	# D.6095
	jne	.L148	#,
	.loc 1 1334 0 is_stmt 0 discriminator 1
	movl	$.LC15, %edi	#,
	call	no_mem_exit	#
.L148:
	.loc 1 1335 0 is_stmt 1
	movl	$0, %eax	#,
	call	ClearUser_data_unregistered	#
	.loc 1 1337 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	InitUser_data_unregistered, .-InitUser_data_unregistered
	.globl	ClearUser_data_unregistered
	.type	ClearUser_data_unregistered, @function
ClearUser_data_unregistered:
.LFB38:
	.loc 1 1341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1342 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, D.6099
	movq	32(%rax), %rax	# _1->streamBuffer, D.6100
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6100,
	call	memset	#
	.loc 1 1343 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, D.6099
	movl	$8, 4(%rax)	#, _3->bits_to_go
	.loc 1 1344 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, D.6099
	movl	$0, (%rax)	#, _4->byte_pos
	.loc 1 1345 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, D.6099
	movb	$0, 8(%rax)	#, _5->byte_buf
	.loc 1 1346 0
	movl	$0, seiUser_data_unregistered+24(%rip)	#, seiUser_data_unregistered.payloadSize
	.loc 1 1348 0
	movq	seiUser_data_unregistered(%rip), %rax	# seiUser_data_unregistered.byte, D.6101
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6101,
	call	memset	#
	.loc 1 1349 0
	movl	$0, seiUser_data_unregistered+8(%rip)	#, seiUser_data_unregistered.total_byte
	.loc 1 1351 0
	movl	$1, seiHasUser_data_unregistered_info(%rip)	#, seiHasUser_data_unregistered_info
	.loc 1 1352 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ClearUser_data_unregistered, .-ClearUser_data_unregistered
	.globl	UpdateUser_data_unregistered
	.type	UpdateUser_data_unregistered, @function
UpdateUser_data_unregistered:
.LFB39:
	.loc 1 1355 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1360 0
	movl	$7, -8(%rbp)	#, total_byte
	.loc 1 1361 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L151	#
.L155:
	.loc 1 1363 0
	movl	-12(%rbp), %eax	# i, tmp67
	sall	$2, %eax	#, tmp66
	movl	%eax, -4(%rbp)	# tmp66, temp_data
	.loc 1 1364 0
	movq	seiUser_data_unregistered(%rip), %rdx	# seiUser_data_unregistered.byte, D.6102
	movl	-12(%rbp), %eax	# i, tmp68
	cltq
	addq	%rax, %rdx	# D.6103, D.6102
	cmpl	$0, -4(%rbp)	#, temp_data
	je	.L152	#,
	.loc 1 1364 0 is_stmt 0 discriminator 2
	cmpl	$0, -4(%rbp)	#, temp_data
	jle	.L153	#,
.L152:
	.loc 1 1364 0 discriminator 1
	movl	$255, %eax	#, tmp69
	cmpl	$255, -4(%rbp)	#, temp_data
	cmovle	-4(%rbp), %eax	# temp_data,, D.6104
	jmp	.L154	#
.L153:
	movl	$0, %eax	#, iftmp.48
.L154:
	.loc 1 1364 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.48, *_8
	.loc 1 1361 0 is_stmt 1 discriminator 3
	addl	$1, -12(%rbp)	#, i
.L151:
	.loc 1 1361 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp70
	cmpl	-8(%rbp), %eax	# total_byte, tmp70
	jl	.L155	#,
	.loc 1 1366 0 is_stmt 1
	movl	-8(%rbp), %eax	# total_byte, tmp71
	movl	%eax, seiUser_data_unregistered+8(%rip)	# tmp71, seiUser_data_unregistered.total_byte
	.loc 1 1367 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	UpdateUser_data_unregistered, .-UpdateUser_data_unregistered
	.globl	FinalizeUser_data_unregistered
	.type	FinalizeUser_data_unregistered, @function
FinalizeUser_data_unregistered:
.LFB40:
	.loc 1 1370 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 1373 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, tmp85
	movq	%rax, -56(%rbp)	# tmp85, dest
	.loc 1 1375 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 1376 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 1379 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L157	#
.L158:
	.loc 1 1381 0 discriminator 2
	movq	seiUser_data_unregistered(%rip), %rdx	# seiUser_data_unregistered.byte, D.6106
	movl	-60(%rbp), %eax	# i, tmp86
	cltq
	addq	%rdx, %rax	# D.6106, D.6106
	movzbl	(%rax), %eax	# *_7, D.6108
	movsbl	%al, %eax	# D.6108, D.6109
	movl	%eax, -28(%rbp)	# D.6109, sym.bitpattern
	.loc 1 1382 0 discriminator 2
	movl	$8, -36(%rbp)	#, sym.len
	.loc 1 1383 0 discriminator 2
	movq	-56(%rbp), %rdx	# dest, tmp87
	leaq	-48(%rbp), %rax	#, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 1379 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L157:
	.loc 1 1379 0 is_stmt 0 discriminator 1
	movl	seiUser_data_unregistered+8(%rip), %eax	# seiUser_data_unregistered.total_byte, D.6105
	cmpl	-60(%rbp), %eax	# i, D.6105
	jg	.L158	#,
	.loc 1 1392 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp89
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6105
	cmpl	$8, %eax	#, D.6105
	je	.L159	#,
	.loc 1 1394 0
	movq	-56(%rbp), %rax	# dest, tmp90
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6110
	leal	(%rax,%rax), %edx	#, D.6110
	movq	-56(%rbp), %rax	# dest, tmp91
	movb	%dl, 8(%rax)	# D.6110, dest_2->byte_buf
	.loc 1 1395 0
	movq	-56(%rbp), %rax	# dest, tmp92
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6110
	orl	$1, %eax	#, D.6110
	movl	%eax, %edx	# D.6110, D.6110
	movq	-56(%rbp), %rax	# dest, tmp93
	movb	%dl, 8(%rax)	# D.6110, dest_2->byte_buf
	.loc 1 1396 0
	movq	-56(%rbp), %rax	# dest, tmp94
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6105
	leal	-1(%rax), %edx	#, D.6105
	movq	-56(%rbp), %rax	# dest, tmp95
	movl	%edx, 4(%rax)	# D.6105, dest_2->bits_to_go
	.loc 1 1397 0
	movq	-56(%rbp), %rax	# dest, tmp96
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6105
	testl	%eax, %eax	# D.6105
	je	.L160	#,
	.loc 1 1397 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp97
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6110
	movzbl	%al, %edx	# D.6110, D.6105
	movq	-56(%rbp), %rax	# dest, tmp98
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6105
	movl	%eax, %ecx	# D.6105, tmp109
	sall	%cl, %edx	# tmp109, D.6105
	movl	%edx, %eax	# D.6105, D.6105
	movl	%eax, %edx	# D.6105, D.6110
	movq	-56(%rbp), %rax	# dest, tmp99
	movb	%dl, 8(%rax)	# D.6110, dest_2->byte_buf
.L160:
	.loc 1 1398 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp100
	movl	$8, 4(%rax)	#, dest_2->bits_to_go
	.loc 1 1399 0
	movq	-56(%rbp), %rax	# dest, tmp101
	movq	32(%rax), %rsi	# dest_2->streamBuffer, D.6111
	movq	-56(%rbp), %rax	# dest, tmp102
	movl	(%rax), %eax	# dest_2->byte_pos, D.6105
	leal	1(%rax), %ecx	#, D.6105
	movq	-56(%rbp), %rdx	# dest, tmp103
	movl	%ecx, (%rdx)	# D.6105, dest_2->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6111
	movq	-56(%rbp), %rax	# dest, tmp104
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6110
	movb	%al, (%rdx)	# D.6110, *_29
	.loc 1 1400 0
	movq	-56(%rbp), %rax	# dest, tmp105
	movb	$0, 8(%rax)	#, dest_2->byte_buf
.L159:
	.loc 1 1402 0
	movq	-56(%rbp), %rax	# dest, tmp106
	movl	(%rax), %eax	# dest_2->byte_pos, D.6105
	movl	%eax, seiUser_data_unregistered+24(%rip)	# D.6105, seiUser_data_unregistered.payloadSize
	.loc 1 1403 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	FinalizeUser_data_unregistered, .-FinalizeUser_data_unregistered
	.globl	CloseUser_data_unregistered
	.type	CloseUser_data_unregistered, @function
CloseUser_data_unregistered:
.LFB41:
	.loc 1 1406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1407 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, D.6112
	testq	%rax, %rax	# D.6112
	je	.L162	#,
	.loc 1 1409 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, D.6112
	movq	32(%rax), %rax	# _2->streamBuffer, D.6113
	movq	%rax, %rdi	# D.6113,
	call	free	#
	.loc 1 1410 0
	movq	seiUser_data_unregistered+16(%rip), %rax	# seiUser_data_unregistered.data, D.6112
	movq	%rax, %rdi	# D.6112,
	call	free	#
.L162:
	.loc 1 1412 0
	movq	$0, seiUser_data_unregistered+16(%rip)	#, seiUser_data_unregistered.data
	.loc 1 1413 0
	movq	seiUser_data_unregistered(%rip), %rax	# seiUser_data_unregistered.byte, D.6114
	testq	%rax, %rax	# D.6114
	je	.L161	#,
	.loc 1 1415 0
	movq	seiUser_data_unregistered(%rip), %rax	# seiUser_data_unregistered.byte, D.6114
	movq	%rax, %rdi	# D.6114,
	call	free	#
.L161:
	.loc 1 1417 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	CloseUser_data_unregistered, .-CloseUser_data_unregistered
	.section	.rodata
	.align 8
.LC16:
	.string	"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data"
	.align 8
.LC17:
	.string	"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data->streamBuffer"
	.align 8
.LC18:
	.string	"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.byte"
	.text
	.globl	InitUser_data_registered_itu_t_t35
	.type	InitUser_data_registered_itu_t_t35, @function
InitUser_data_registered_itu_t_t35:
.LFB42:
	.loc 1 1432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1434 0
	movl	$48, %edi	#,
	call	malloc	#
	movq	%rax, seiUser_data_registered_itu_t_t35+24(%rip)	# D.6115, seiUser_data_registered_itu_t_t35.data
	.loc 1 1435 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6116
	testq	%rax, %rax	# D.6116
	jne	.L165	#,
	.loc 1 1435 0 is_stmt 0 discriminator 1
	movl	$.LC16, %edi	#,
	call	no_mem_exit	#
.L165:
	.loc 1 1436 0 is_stmt 1
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rbx	# seiUser_data_registered_itu_t_t35.data, D.6116
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, 32(%rbx)	# D.6115, _3->streamBuffer
	.loc 1 1437 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6116
	movq	32(%rax), %rax	# _5->streamBuffer, D.6117
	testq	%rax, %rax	# D.6117
	jne	.L166	#,
	.loc 1 1437 0 is_stmt 0 discriminator 1
	movl	$.LC17, %edi	#,
	call	no_mem_exit	#
.L166:
	.loc 1 1438 0 is_stmt 1
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, seiUser_data_registered_itu_t_t35(%rip)	# D.6115, seiUser_data_registered_itu_t_t35.byte
	.loc 1 1439 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6116
	testq	%rax, %rax	# D.6116
	jne	.L167	#,
	.loc 1 1439 0 is_stmt 0 discriminator 1
	movl	$.LC18, %edi	#,
	call	no_mem_exit	#
.L167:
	.loc 1 1440 0 is_stmt 1
	movl	$0, %eax	#,
	call	ClearUser_data_registered_itu_t_t35	#
	.loc 1 1442 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	InitUser_data_registered_itu_t_t35, .-InitUser_data_registered_itu_t_t35
	.globl	ClearUser_data_registered_itu_t_t35
	.type	ClearUser_data_registered_itu_t_t35, @function
ClearUser_data_registered_itu_t_t35:
.LFB43:
	.loc 1 1446 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1447 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6121
	movq	32(%rax), %rax	# _1->streamBuffer, D.6122
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6122,
	call	memset	#
	.loc 1 1448 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6121
	movl	$8, 4(%rax)	#, _3->bits_to_go
	.loc 1 1449 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6121
	movl	$0, (%rax)	#, _4->byte_pos
	.loc 1 1450 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6121
	movb	$0, 8(%rax)	#, _5->byte_buf
	.loc 1 1451 0
	movl	$0, seiUser_data_registered_itu_t_t35+32(%rip)	#, seiUser_data_registered_itu_t_t35.payloadSize
	.loc 1 1453 0
	movq	seiUser_data_registered_itu_t_t35(%rip), %rax	# seiUser_data_registered_itu_t_t35.byte, D.6123
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6123,
	call	memset	#
	.loc 1 1454 0
	movl	$0, seiUser_data_registered_itu_t_t35+8(%rip)	#, seiUser_data_registered_itu_t_t35.total_byte
	.loc 1 1455 0
	movl	$0, seiUser_data_registered_itu_t_t35+12(%rip)	#, seiUser_data_registered_itu_t_t35.itu_t_t35_country_code
	.loc 1 1456 0
	movl	$0, seiUser_data_registered_itu_t_t35+16(%rip)	#, seiUser_data_registered_itu_t_t35.itu_t_t35_country_code_extension_byte
	.loc 1 1458 0
	movl	$1, seiHasUser_data_registered_itu_t_t35_info(%rip)	#, seiHasUser_data_registered_itu_t_t35_info
	.loc 1 1459 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	ClearUser_data_registered_itu_t_t35, .-ClearUser_data_registered_itu_t_t35
	.globl	UpdateUser_data_registered_itu_t_t35
	.type	UpdateUser_data_registered_itu_t_t35, @function
UpdateUser_data_registered_itu_t_t35:
.LFB44:
	.loc 1 1462 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1467 0
	movl	$82, -12(%rbp)	#, country_code
	.loc 1 1469 0
	cmpl	$254, -12(%rbp)	#, country_code
	jg	.L170	#,
	.loc 1 1471 0
	movl	-12(%rbp), %eax	# country_code, tmp65
	movl	%eax, seiUser_data_registered_itu_t_t35+12(%rip)	# tmp65, seiUser_data_registered_itu_t_t35.itu_t_t35_country_code
	jmp	.L171	#
.L170:
	.loc 1 1475 0
	movl	$255, seiUser_data_registered_itu_t_t35+12(%rip)	#, seiUser_data_registered_itu_t_t35.itu_t_t35_country_code
	.loc 1 1476 0
	movl	-12(%rbp), %eax	# country_code, tmp66
	subl	$255, %eax	#, D.6124
	movl	%eax, seiUser_data_registered_itu_t_t35+16(%rip)	# D.6124, seiUser_data_registered_itu_t_t35.itu_t_t35_country_code_extension_byte
.L171:
	.loc 1 1479 0
	movl	$7, -8(%rbp)	#, total_byte
	.loc 1 1480 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L172	#
.L176:
	.loc 1 1482 0
	movl	-16(%rbp), %edx	# i, tmp67
	movl	%edx, %eax	# tmp67, tmp68
	addl	%eax, %eax	# tmp68
	addl	%edx, %eax	# tmp67, tmp69
	movl	%eax, -4(%rbp)	# tmp69, temp_data
	.loc 1 1483 0
	movq	seiUser_data_registered_itu_t_t35(%rip), %rdx	# seiUser_data_registered_itu_t_t35.byte, D.6125
	movl	-16(%rbp), %eax	# i, tmp70
	cltq
	addq	%rax, %rdx	# D.6126, D.6125
	cmpl	$0, -4(%rbp)	#, temp_data
	je	.L173	#,
	.loc 1 1483 0 is_stmt 0 discriminator 2
	cmpl	$0, -4(%rbp)	#, temp_data
	jle	.L174	#,
.L173:
	.loc 1 1483 0 discriminator 1
	movl	$255, %eax	#, tmp71
	cmpl	$255, -4(%rbp)	#, temp_data
	cmovle	-4(%rbp), %eax	# temp_data,, D.6124
	jmp	.L175	#
.L174:
	movl	$0, %eax	#, iftmp.49
.L175:
	.loc 1 1483 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.49, *_10
	.loc 1 1480 0 is_stmt 1 discriminator 3
	addl	$1, -16(%rbp)	#, i
.L172:
	.loc 1 1480 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp72
	cmpl	-8(%rbp), %eax	# total_byte, tmp72
	jl	.L176	#,
	.loc 1 1485 0 is_stmt 1
	movl	-8(%rbp), %eax	# total_byte, tmp73
	movl	%eax, seiUser_data_registered_itu_t_t35+8(%rip)	# tmp73, seiUser_data_registered_itu_t_t35.total_byte
	.loc 1 1486 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	UpdateUser_data_registered_itu_t_t35, .-UpdateUser_data_registered_itu_t_t35
	.globl	FinalizeUser_data_registered_itu_t_t35
	.type	FinalizeUser_data_registered_itu_t_t35, @function
FinalizeUser_data_registered_itu_t_t35:
.LFB45:
	.loc 1 1489 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 1492 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, tmp90
	movq	%rax, -56(%rbp)	# tmp90, dest
	.loc 1 1494 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 1495 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 1497 0
	movl	seiUser_data_registered_itu_t_t35+12(%rip), %eax	# seiUser_data_registered_itu_t_t35.itu_t_t35_country_code, D.6127
	movl	%eax, -28(%rbp)	# D.6128, sym.bitpattern
	.loc 1 1498 0
	movl	$8, -36(%rbp)	#, sym.len
	.loc 1 1499 0
	movq	-56(%rbp), %rdx	# dest, tmp91
	leaq	-48(%rbp), %rax	#, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 1506 0
	movl	seiUser_data_registered_itu_t_t35+12(%rip), %eax	# seiUser_data_registered_itu_t_t35.itu_t_t35_country_code, D.6127
	cmpl	$255, %eax	#, D.6127
	jne	.L178	#,
	.loc 1 1508 0
	movl	seiUser_data_registered_itu_t_t35+16(%rip), %eax	# seiUser_data_registered_itu_t_t35.itu_t_t35_country_code_extension_byte, D.6127
	movl	%eax, -28(%rbp)	# D.6128, sym.bitpattern
	.loc 1 1509 0
	movl	$8, -36(%rbp)	#, sym.len
	.loc 1 1510 0
	movq	-56(%rbp), %rdx	# dest, tmp93
	leaq	-48(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	writeSyntaxElement2Buf_Fixed	#
.L178:
	.loc 1 1516 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L179	#
.L180:
	.loc 1 1518 0 discriminator 2
	movq	seiUser_data_registered_itu_t_t35(%rip), %rdx	# seiUser_data_registered_itu_t_t35.byte, D.6129
	movl	-60(%rbp), %eax	# i, tmp95
	cltq
	addq	%rdx, %rax	# D.6129, D.6129
	movzbl	(%rax), %eax	# *_12, D.6131
	movsbl	%al, %eax	# D.6131, D.6128
	movl	%eax, -28(%rbp)	# D.6128, sym.bitpattern
	.loc 1 1519 0 discriminator 2
	movl	$8, -36(%rbp)	#, sym.len
	.loc 1 1520 0 discriminator 2
	movq	-56(%rbp), %rdx	# dest, tmp96
	leaq	-48(%rbp), %rax	#, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 1516 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L179:
	.loc 1 1516 0 is_stmt 0 discriminator 1
	movl	seiUser_data_registered_itu_t_t35+8(%rip), %eax	# seiUser_data_registered_itu_t_t35.total_byte, D.6127
	cmpl	-60(%rbp), %eax	# i, D.6127
	jg	.L180	#,
	.loc 1 1529 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp98
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6127
	cmpl	$8, %eax	#, D.6127
	je	.L181	#,
	.loc 1 1531 0
	movq	-56(%rbp), %rax	# dest, tmp99
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6132
	leal	(%rax,%rax), %edx	#, D.6132
	movq	-56(%rbp), %rax	# dest, tmp100
	movb	%dl, 8(%rax)	# D.6132, dest_2->byte_buf
	.loc 1 1532 0
	movq	-56(%rbp), %rax	# dest, tmp101
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6132
	orl	$1, %eax	#, D.6132
	movl	%eax, %edx	# D.6132, D.6132
	movq	-56(%rbp), %rax	# dest, tmp102
	movb	%dl, 8(%rax)	# D.6132, dest_2->byte_buf
	.loc 1 1533 0
	movq	-56(%rbp), %rax	# dest, tmp103
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6127
	leal	-1(%rax), %edx	#, D.6127
	movq	-56(%rbp), %rax	# dest, tmp104
	movl	%edx, 4(%rax)	# D.6127, dest_2->bits_to_go
	.loc 1 1534 0
	movq	-56(%rbp), %rax	# dest, tmp105
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6127
	testl	%eax, %eax	# D.6127
	je	.L182	#,
	.loc 1 1534 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp106
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6132
	movzbl	%al, %edx	# D.6132, D.6127
	movq	-56(%rbp), %rax	# dest, tmp107
	movl	4(%rax), %eax	# dest_2->bits_to_go, D.6127
	movl	%eax, %ecx	# D.6127, tmp118
	sall	%cl, %edx	# tmp118, D.6127
	movl	%edx, %eax	# D.6127, D.6127
	movl	%eax, %edx	# D.6127, D.6132
	movq	-56(%rbp), %rax	# dest, tmp108
	movb	%dl, 8(%rax)	# D.6132, dest_2->byte_buf
.L182:
	.loc 1 1535 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp109
	movl	$8, 4(%rax)	#, dest_2->bits_to_go
	.loc 1 1536 0
	movq	-56(%rbp), %rax	# dest, tmp110
	movq	32(%rax), %rsi	# dest_2->streamBuffer, D.6133
	movq	-56(%rbp), %rax	# dest, tmp111
	movl	(%rax), %eax	# dest_2->byte_pos, D.6127
	leal	1(%rax), %ecx	#, D.6127
	movq	-56(%rbp), %rdx	# dest, tmp112
	movl	%ecx, (%rdx)	# D.6127, dest_2->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6133
	movq	-56(%rbp), %rax	# dest, tmp113
	movzbl	8(%rax), %eax	# dest_2->byte_buf, D.6132
	movb	%al, (%rdx)	# D.6132, *_34
	.loc 1 1537 0
	movq	-56(%rbp), %rax	# dest, tmp114
	movb	$0, 8(%rax)	#, dest_2->byte_buf
.L181:
	.loc 1 1539 0
	movq	-56(%rbp), %rax	# dest, tmp115
	movl	(%rax), %eax	# dest_2->byte_pos, D.6127
	movl	%eax, seiUser_data_registered_itu_t_t35+32(%rip)	# D.6127, seiUser_data_registered_itu_t_t35.payloadSize
	.loc 1 1540 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	FinalizeUser_data_registered_itu_t_t35, .-FinalizeUser_data_registered_itu_t_t35
	.globl	CloseUser_data_registered_itu_t_t35
	.type	CloseUser_data_registered_itu_t_t35, @function
CloseUser_data_registered_itu_t_t35:
.LFB46:
	.loc 1 1543 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1544 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6134
	testq	%rax, %rax	# D.6134
	je	.L184	#,
	.loc 1 1546 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6134
	movq	32(%rax), %rax	# _2->streamBuffer, D.6135
	movq	%rax, %rdi	# D.6135,
	call	free	#
	.loc 1 1547 0
	movq	seiUser_data_registered_itu_t_t35+24(%rip), %rax	# seiUser_data_registered_itu_t_t35.data, D.6134
	movq	%rax, %rdi	# D.6134,
	call	free	#
.L184:
	.loc 1 1549 0
	movq	$0, seiUser_data_registered_itu_t_t35+24(%rip)	#, seiUser_data_registered_itu_t_t35.data
	.loc 1 1550 0
	movq	seiUser_data_registered_itu_t_t35(%rip), %rax	# seiUser_data_registered_itu_t_t35.byte, D.6136
	testq	%rax, %rax	# D.6136
	je	.L183	#,
	.loc 1 1552 0
	movq	seiUser_data_registered_itu_t_t35(%rip), %rax	# seiUser_data_registered_itu_t_t35.byte, D.6136
	movq	%rax, %rdi	# D.6136,
	call	free	#
.L183:
	.loc 1 1554 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	CloseUser_data_registered_itu_t_t35, .-CloseUser_data_registered_itu_t_t35
	.section	.rodata
	.align 8
.LC19:
	.string	"InitRandomAccess: seiRandomAccess.data"
	.align 8
.LC20:
	.string	"InitRandomAccess: seiRandomAccess.data->streamBuffer"
	.text
	.globl	InitRandomAccess
	.type	InitRandomAccess, @function
InitRandomAccess:
.LFB47:
	.loc 1 1568 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1570 0
	movl	$48, %edi	#,
	call	malloc	#
	movq	%rax, seiRandomAccess+8(%rip)	# D.6137, seiRandomAccess.data
	.loc 1 1571 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, D.6138
	testq	%rax, %rax	# D.6138
	jne	.L187	#,
	.loc 1 1571 0 is_stmt 0 discriminator 1
	movl	$.LC19, %edi	#,
	call	no_mem_exit	#
.L187:
	.loc 1 1572 0 is_stmt 1
	movq	seiRandomAccess+8(%rip), %rbx	# seiRandomAccess.data, D.6138
	movl	$65496, %edi	#,
	call	malloc	#
	movq	%rax, 32(%rbx)	# D.6137, _3->streamBuffer
	.loc 1 1573 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, D.6138
	movq	32(%rax), %rax	# _5->streamBuffer, D.6139
	testq	%rax, %rax	# D.6139
	jne	.L188	#,
	.loc 1 1573 0 is_stmt 0 discriminator 1
	movl	$.LC20, %edi	#,
	call	no_mem_exit	#
.L188:
	.loc 1 1574 0 is_stmt 1
	movl	$0, %eax	#,
	call	ClearRandomAccess	#
	.loc 1 1576 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	InitRandomAccess, .-InitRandomAccess
	.globl	ClearRandomAccess
	.type	ClearRandomAccess, @function
ClearRandomAccess:
.LFB48:
	.loc 1 1580 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1581 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, D.6142
	movq	32(%rax), %rax	# _1->streamBuffer, D.6143
	movl	$65496, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6143,
	call	memset	#
	.loc 1 1582 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, D.6142
	movl	$8, 4(%rax)	#, _3->bits_to_go
	.loc 1 1583 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, D.6142
	movl	$0, (%rax)	#, _4->byte_pos
	.loc 1 1584 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, D.6142
	movb	$0, 8(%rax)	#, _5->byte_buf
	.loc 1 1585 0
	movl	$0, seiRandomAccess+16(%rip)	#, seiRandomAccess.payloadSize
	.loc 1 1587 0
	movb	$0, seiRandomAccess(%rip)	#, seiRandomAccess.recovery_point_flag
	.loc 1 1588 0
	movb	$0, seiRandomAccess+2(%rip)	#, seiRandomAccess.broken_link_flag
	.loc 1 1589 0
	movb	$0, seiRandomAccess+1(%rip)	#, seiRandomAccess.exact_match_flag
	.loc 1 1591 0
	movl	$0, seiHasRandomAccess_info(%rip)	#, seiHasRandomAccess_info
	.loc 1 1592 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	ClearRandomAccess, .-ClearRandomAccess
	.globl	UpdateRandomAccess
	.type	UpdateRandomAccess, @function
UpdateRandomAccess:
.LFB49:
	.loc 1 1595 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1597 0
	movq	img(%rip), %rax	# img, img.50
	movl	24(%rax), %eax	# img.50_1->type, D.6144
	cmpl	$2, %eax	#, D.6144
	jne	.L191	#,
	.loc 1 1599 0
	movb	$0, seiRandomAccess(%rip)	#, seiRandomAccess.recovery_point_flag
	.loc 1 1600 0
	movb	$1, seiRandomAccess+1(%rip)	#, seiRandomAccess.exact_match_flag
	.loc 1 1601 0
	movb	$0, seiRandomAccess+2(%rip)	#, seiRandomAccess.broken_link_flag
	.loc 1 1602 0
	movl	$1, seiHasRandomAccess_info(%rip)	#, seiHasRandomAccess_info
	jmp	.L190	#
.L191:
	.loc 1 1606 0
	movl	$0, seiHasRandomAccess_info(%rip)	#, seiHasRandomAccess_info
.L190:
	.loc 1 1608 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	UpdateRandomAccess, .-UpdateRandomAccess
	.globl	FinalizeRandomAccess
	.type	FinalizeRandomAccess, @function
FinalizeRandomAccess:
.LFB50:
	.loc 1 1611 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 1613 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, tmp85
	movq	%rax, -56(%rbp)	# tmp85, dest
	.loc 1 1615 0
	movl	$0, -48(%rbp)	#, sym.type
	.loc 1 1616 0
	movq	$ue_linfo, -16(%rbp)	#, sym.mapping
	.loc 1 1618 0
	movzbl	seiRandomAccess(%rip), %eax	# seiRandomAccess.recovery_point_flag, D.6145
	movzbl	%al, %eax	# D.6145, D.6146
	movl	%eax, -44(%rbp)	# D.6146, sym.value1
	.loc 1 1619 0
	movq	-56(%rbp), %rdx	# dest, tmp86
	leaq	-48(%rbp), %rax	#, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	writeSyntaxElement2Buf_UVLC	#
	.loc 1 1621 0
	movzbl	seiRandomAccess+1(%rip), %eax	# seiRandomAccess.exact_match_flag, D.6145
	movzbl	%al, %eax	# D.6145, D.6147
	movl	%eax, -28(%rbp)	# D.6147, sym.bitpattern
	.loc 1 1622 0
	movl	$1, -36(%rbp)	#, sym.len
	.loc 1 1623 0
	movq	-56(%rbp), %rdx	# dest, tmp88
	leaq	-48(%rbp), %rax	#, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 1625 0
	movzbl	seiRandomAccess+2(%rip), %eax	# seiRandomAccess.broken_link_flag, D.6145
	movzbl	%al, %eax	# D.6145, D.6147
	movl	%eax, -28(%rbp)	# D.6147, sym.bitpattern
	.loc 1 1626 0
	movl	$1, -36(%rbp)	#, sym.len
	.loc 1 1627 0
	movq	-56(%rbp), %rdx	# dest, tmp90
	leaq	-48(%rbp), %rax	#, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	writeSyntaxElement2Buf_Fixed	#
	.loc 1 1638 0
	movq	-56(%rbp), %rax	# dest, tmp92
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6146
	cmpl	$8, %eax	#, D.6146
	je	.L194	#,
	.loc 1 1640 0
	movq	-56(%rbp), %rax	# dest, tmp93
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6145
	leal	(%rax,%rax), %edx	#, D.6145
	movq	-56(%rbp), %rax	# dest, tmp94
	movb	%dl, 8(%rax)	# D.6145, dest_1->byte_buf
	.loc 1 1641 0
	movq	-56(%rbp), %rax	# dest, tmp95
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6145
	orl	$1, %eax	#, D.6145
	movl	%eax, %edx	# D.6145, D.6145
	movq	-56(%rbp), %rax	# dest, tmp96
	movb	%dl, 8(%rax)	# D.6145, dest_1->byte_buf
	.loc 1 1642 0
	movq	-56(%rbp), %rax	# dest, tmp97
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6146
	leal	-1(%rax), %edx	#, D.6146
	movq	-56(%rbp), %rax	# dest, tmp98
	movl	%edx, 4(%rax)	# D.6146, dest_1->bits_to_go
	.loc 1 1643 0
	movq	-56(%rbp), %rax	# dest, tmp99
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6146
	testl	%eax, %eax	# D.6146
	je	.L195	#,
	.loc 1 1643 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# dest, tmp100
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6145
	movzbl	%al, %edx	# D.6145, D.6146
	movq	-56(%rbp), %rax	# dest, tmp101
	movl	4(%rax), %eax	# dest_1->bits_to_go, D.6146
	movl	%eax, %ecx	# D.6146, tmp112
	sall	%cl, %edx	# tmp112, D.6146
	movl	%edx, %eax	# D.6146, D.6146
	movl	%eax, %edx	# D.6146, D.6145
	movq	-56(%rbp), %rax	# dest, tmp102
	movb	%dl, 8(%rax)	# D.6145, dest_1->byte_buf
.L195:
	.loc 1 1644 0 is_stmt 1
	movq	-56(%rbp), %rax	# dest, tmp103
	movl	$8, 4(%rax)	#, dest_1->bits_to_go
	.loc 1 1645 0
	movq	-56(%rbp), %rax	# dest, tmp104
	movq	32(%rax), %rsi	# dest_1->streamBuffer, D.6148
	movq	-56(%rbp), %rax	# dest, tmp105
	movl	(%rax), %eax	# dest_1->byte_pos, D.6146
	leal	1(%rax), %ecx	#, D.6146
	movq	-56(%rbp), %rdx	# dest, tmp106
	movl	%ecx, (%rdx)	# D.6146, dest_1->byte_pos
	cltq
	leaq	(%rsi,%rax), %rdx	#, D.6148
	movq	-56(%rbp), %rax	# dest, tmp107
	movzbl	8(%rax), %eax	# dest_1->byte_buf, D.6145
	movb	%al, (%rdx)	# D.6145, *_26
	.loc 1 1646 0
	movq	-56(%rbp), %rax	# dest, tmp108
	movb	$0, 8(%rax)	#, dest_1->byte_buf
.L194:
	.loc 1 1648 0
	movq	-56(%rbp), %rax	# dest, tmp109
	movl	(%rax), %eax	# dest_1->byte_pos, D.6146
	movl	%eax, seiRandomAccess+16(%rip)	# D.6146, seiRandomAccess.payloadSize
	.loc 1 1649 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	FinalizeRandomAccess, .-FinalizeRandomAccess
	.globl	CloseRandomAccess
	.type	CloseRandomAccess, @function
CloseRandomAccess:
.LFB51:
	.loc 1 1652 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1653 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, D.6150
	testq	%rax, %rax	# D.6150
	je	.L197	#,
	.loc 1 1655 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, D.6150
	movq	32(%rax), %rax	# _2->streamBuffer, D.6151
	movq	%rax, %rdi	# D.6151,
	call	free	#
	.loc 1 1656 0
	movq	seiRandomAccess+8(%rip), %rax	# seiRandomAccess.data, D.6150
	movq	%rax, %rdi	# D.6150,
	call	free	#
.L197:
	.loc 1 1658 0
	movq	$0, seiRandomAccess+8(%rip)	#, seiRandomAccess.data
	.loc 1 1659 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	CloseRandomAccess, .-CloseRandomAccess
	.local	id.4958
	.comm	id.4958,2,2
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "sei.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3175
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF654
	.byte	0x1
	.long	.LASF655
	.long	.LASF656
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
	.long	0xc8
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
	.long	0xb3
	.uleb128 0x4
	.long	0x34
	.long	0xe3
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa8
	.uleb128 0x7
	.long	.LASF16
	.byte	0x5
	.byte	0x3e
	.long	0x96
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x78
	.long	0x181
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
	.uleb128 0x9
	.long	.LASF26
	.sleb128 9
	.uleb128 0x9
	.long	.LASF27
	.sleb128 10
	.uleb128 0x9
	.long	.LASF28
	.sleb128 11
	.uleb128 0x9
	.long	.LASF29
	.sleb128 12
	.uleb128 0x9
	.long	.LASF30
	.sleb128 13
	.uleb128 0x9
	.long	.LASF31
	.sleb128 14
	.uleb128 0x9
	.long	.LASF32
	.sleb128 15
	.uleb128 0x9
	.long	.LASF33
	.sleb128 16
	.uleb128 0x9
	.long	.LASF34
	.sleb128 17
	.uleb128 0x9
	.long	.LASF35
	.sleb128 18
	.uleb128 0x9
	.long	.LASF36
	.sleb128 19
	.uleb128 0x9
	.long	.LASF37
	.sleb128 20
	.uleb128 0x9
	.long	.LASF38
	.sleb128 21
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x9b
	.long	0x1c0
	.uleb128 0x9
	.long	.LASF39
	.sleb128 0
	.uleb128 0x9
	.long	.LASF40
	.sleb128 1
	.uleb128 0x9
	.long	.LASF41
	.sleb128 2
	.uleb128 0x9
	.long	.LASF42
	.sleb128 3
	.uleb128 0x9
	.long	.LASF43
	.sleb128 4
	.uleb128 0x9
	.long	.LASF44
	.sleb128 5
	.uleb128 0x9
	.long	.LASF45
	.sleb128 6
	.uleb128 0x9
	.long	.LASF46
	.sleb128 7
	.uleb128 0x9
	.long	.LASF47
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x1e7
	.uleb128 0x9
	.long	.LASF48
	.sleb128 0
	.uleb128 0x9
	.long	.LASF49
	.sleb128 1
	.uleb128 0x9
	.long	.LASF50
	.sleb128 2
	.uleb128 0x9
	.long	.LASF51
	.sleb128 3
	.uleb128 0x9
	.long	.LASF52
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x2d7
	.uleb128 0xb
	.long	.LASF53
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF54
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF55
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF56
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF57
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF58
	.byte	0x5
	.byte	0xd5
	.long	0xe3
	.byte	0x18
	.uleb128 0xb
	.long	.LASF59
	.byte	0x5
	.byte	0xd6
	.long	0x89
	.byte	0x20
	.uleb128 0xb
	.long	.LASF60
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF61
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF62
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF63
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF64
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF65
	.byte	0x5
	.byte	0xdd
	.long	0xe3
	.byte	0x40
	.uleb128 0xb
	.long	.LASF66
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
	.long	.LASF67
	.byte	0x5
	.byte	0xe2
	.long	0x1e7
	.uleb128 0x7
	.long	.LASF68
	.byte	0x5
	.byte	0xe4
	.long	0x2ed
	.uleb128 0x6
	.byte	0x8
	.long	0x2d7
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x320
	.uleb128 0xb
	.long	.LASF69
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
	.long	.LASF70
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF71
	.byte	0x5
	.byte	0xee
	.long	0x2f3
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x397
	.uleb128 0xe
	.long	.LASF72
	.byte	0x5
	.value	0x104
	.long	0x397
	.byte	0
	.uleb128 0xf
	.long	.LASF73
	.byte	0x5
	.value	0x105
	.long	0x3ad
	.value	0x210
	.uleb128 0xf
	.long	.LASF74
	.byte	0x5
	.value	0x106
	.long	0x3c3
	.value	0x330
	.uleb128 0xf
	.long	.LASF75
	.byte	0x5
	.value	0x107
	.long	0x3d9
	.value	0x470
	.uleb128 0xf
	.long	.LASF76
	.byte	0x5
	.value	0x108
	.long	0x3ef
	.value	0x530
	.uleb128 0xf
	.long	.LASF77
	.byte	0x5
	.value	0x109
	.long	0x3ef
	.value	0x570
	.uleb128 0xf
	.long	.LASF78
	.byte	0x5
	.value	0x10a
	.long	0x3ff
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x3ad
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x3c3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x3d9
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x3ef
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x3ff
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x40f
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF79
	.byte	0x5
	.value	0x10c
	.long	0x32b
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x4af
	.uleb128 0xe
	.long	.LASF80
	.byte	0x5
	.value	0x11b
	.long	0x4af
	.byte	0
	.uleb128 0xe
	.long	.LASF81
	.byte	0x5
	.value	0x11c
	.long	0x3ef
	.byte	0x20
	.uleb128 0xe
	.long	.LASF82
	.byte	0x5
	.value	0x11d
	.long	0x4bf
	.byte	0x60
	.uleb128 0xf
	.long	.LASF83
	.byte	0x5
	.value	0x11e
	.long	0x4d5
	.value	0x120
	.uleb128 0xf
	.long	.LASF84
	.byte	0x5
	.value	0x11f
	.long	0x4eb
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x5
	.value	0x120
	.long	0x4eb
	.value	0xd00
	.uleb128 0xf
	.long	.LASF86
	.byte	0x5
	.value	0x121
	.long	0x501
	.value	0x1660
	.uleb128 0xf
	.long	.LASF87
	.byte	0x5
	.value	0x122
	.long	0x501
	.value	0x1980
	.uleb128 0xf
	.long	.LASF88
	.byte	0x5
	.value	0x123
	.long	0x4eb
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF89
	.byte	0x5
	.value	0x124
	.long	0x4eb
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x4bf
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x4d5
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x4eb
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x501
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x320
	.long	0x517
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF90
	.byte	0x5
	.value	0x125
	.long	0x41b
	.uleb128 0x11
	.long	.LASF95
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x558
	.uleb128 0xe
	.long	.LASF91
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF92
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF93
	.byte	0x5
	.value	0x138
	.long	0x558
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x523
	.uleb128 0x10
	.long	.LASF94
	.byte	0x5
	.value	0x139
	.long	0x523
	.uleb128 0x11
	.long	.LASF96
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x5c6
	.uleb128 0xe
	.long	.LASF97
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF98
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF99
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF100
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF101
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF93
	.byte	0x5
	.value	0x143
	.long	0x5c6
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x56a
	.uleb128 0x10
	.long	.LASF102
	.byte	0x5
	.value	0x144
	.long	0x56a
	.uleb128 0x11
	.long	.LASF103
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x666
	.uleb128 0xe
	.long	.LASF104
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF105
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF106
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
	.long	.LASF107
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xe
	.long	.LASF108
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
	.long	.LASF109
	.byte	0x5
	.value	0x158
	.long	0x680
	.byte	0x20
	.uleb128 0xe
	.long	.LASF110
	.byte	0x5
	.value	0x15a
	.long	0x69c
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x680
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
	.long	0x666
	.uleb128 0x13
	.long	0x696
	.uleb128 0x14
	.long	0x696
	.uleb128 0x14
	.long	0x2e2
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d8
	.uleb128 0x6
	.byte	0x8
	.long	0x686
	.uleb128 0x10
	.long	.LASF111
	.byte	0x5
	.value	0x15c
	.long	0x5d8
	.uleb128 0x15
	.long	.LASF112
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x928
	.uleb128 0xe
	.long	.LASF113
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF114
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF115
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
	.long	.LASF116
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF117
	.byte	0x5
	.value	0x166
	.long	0xd3
	.byte	0x14
	.uleb128 0xe
	.long	.LASF118
	.byte	0x5
	.value	0x168
	.long	0x928
	.byte	0x38
	.uleb128 0xe
	.long	.LASF119
	.byte	0x5
	.value	0x169
	.long	0x928
	.byte	0x40
	.uleb128 0xe
	.long	.LASF120
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0x92e
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF121
	.byte	0x5
	.value	0x16d
	.long	0x950
	.value	0x14c
	.uleb128 0xf
	.long	.LASF122
	.byte	0x5
	.value	0x16e
	.long	0x950
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF123
	.byte	0x5
	.value	0x170
	.long	0xe9
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF124
	.byte	0x5
	.value	0x171
	.long	0x960
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF125
	.byte	0x5
	.value	0x172
	.long	0x960
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF126
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF127
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0xf
	.long	.LASF128
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0xf
	.long	.LASF129
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0xf
	.long	.LASF130
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0xf
	.long	.LASF131
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0xf
	.long	.LASF132
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0xf
	.long	.LASF133
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0xf
	.long	.LASF134
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0xf
	.long	.LASF135
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0xf
	.long	.LASF136
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0xf
	.long	.LASF137
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0xf
	.long	.LASF138
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0xf
	.long	.LASF139
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0xf
	.long	.LASF140
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0xf
	.long	.LASF141
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0xf
	.long	.LASF142
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0xf
	.long	.LASF143
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0xf
	.long	.LASF144
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0xf
	.long	.LASF145
	.byte	0x5
	.value	0x18a
	.long	0x970
	.value	0x248
	.uleb128 0xf
	.long	.LASF146
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0xf
	.long	.LASF147
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0xf
	.long	.LASF148
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0xf
	.long	.LASF149
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0xf
	.long	.LASF150
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0xf
	.long	.LASF151
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0xf
	.long	.LASF152
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0xf
	.long	.LASF153
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0xf
	.long	.LASF154
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6ae
	.uleb128 0x4
	.long	0x34
	.long	0x950
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
	.long	0x960
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x970
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF155
	.uleb128 0x10
	.long	.LASF156
	.byte	0x5
	.value	0x196
	.long	0x6ae
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0xa1c
	.uleb128 0xe
	.long	.LASF157
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF158
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF159
	.byte	0x5
	.value	0x19f
	.long	0xa8
	.byte	0x8
	.uleb128 0xe
	.long	.LASF160
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF161
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF162
	.byte	0x5
	.value	0x1a2
	.long	0xa8
	.byte	0x14
	.uleb128 0xe
	.long	.LASF163
	.byte	0x5
	.value	0x1a4
	.long	0xa8
	.byte	0x15
	.uleb128 0xe
	.long	.LASF164
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF165
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF166
	.byte	0x5
	.value	0x1a8
	.long	0xe3
	.byte	0x20
	.uleb128 0xe
	.long	.LASF167
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF168
	.byte	0x5
	.value	0x1ab
	.long	0x983
	.uleb128 0x11
	.long	.LASF169
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xa5d
	.uleb128 0xe
	.long	.LASF170
	.byte	0x5
	.value	0x1b1
	.long	0xa5d
	.byte	0
	.uleb128 0xe
	.long	.LASF171
	.byte	0x5
	.value	0x1b2
	.long	0x2d7
	.byte	0x8
	.uleb128 0xe
	.long	.LASF172
	.byte	0x5
	.value	0x1b4
	.long	0xa83
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa1c
	.uleb128 0x18
	.long	0x34
	.long	0xa77
	.uleb128 0x14
	.long	0xa77
	.uleb128 0x14
	.long	0xa7d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6a2
	.uleb128 0x6
	.byte	0x8
	.long	0xa28
	.uleb128 0x6
	.byte	0x8
	.long	0xa63
	.uleb128 0x10
	.long	.LASF173
	.byte	0x5
	.value	0x1b8
	.long	0xa28
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xba2
	.uleb128 0xe
	.long	.LASF174
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
	.long	.LASF175
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF176
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF177
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF178
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF179
	.byte	0x5
	.value	0x1c3
	.long	0xba2
	.byte	0x18
	.uleb128 0xe
	.long	.LASF180
	.byte	0x5
	.value	0x1c4
	.long	0xba8
	.byte	0x20
	.uleb128 0xe
	.long	.LASF181
	.byte	0x5
	.value	0x1c5
	.long	0xbae
	.byte	0x28
	.uleb128 0xe
	.long	.LASF182
	.byte	0x5
	.value	0x1c8
	.long	0xbb4
	.byte	0x30
	.uleb128 0xe
	.long	.LASF183
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF184
	.byte	0x5
	.value	0x1cb
	.long	0x89
	.byte	0x40
	.uleb128 0xe
	.long	.LASF185
	.byte	0x5
	.value	0x1cc
	.long	0x89
	.byte	0x48
	.uleb128 0xe
	.long	.LASF186
	.byte	0x5
	.value	0x1cd
	.long	0x89
	.byte	0x50
	.uleb128 0xe
	.long	.LASF187
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF188
	.byte	0x5
	.value	0x1cf
	.long	0x89
	.byte	0x60
	.uleb128 0xe
	.long	.LASF189
	.byte	0x5
	.value	0x1d0
	.long	0x89
	.byte	0x68
	.uleb128 0xe
	.long	.LASF190
	.byte	0x5
	.value	0x1d1
	.long	0x89
	.byte	0x70
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x1d3
	.long	0xbc9
	.byte	0x78
	.uleb128 0xe
	.long	.LASF192
	.byte	0x5
	.value	0x1d5
	.long	0xbcf
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa89
	.uleb128 0x6
	.byte	0x8
	.long	0x40f
	.uleb128 0x6
	.byte	0x8
	.long	0x517
	.uleb128 0x6
	.byte	0x8
	.long	0x55e
	.uleb128 0x18
	.long	0xc8
	.long	0xbc9
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbba
	.uleb128 0x4
	.long	0x34
	.long	0xbe5
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF193
	.byte	0x5
	.value	0x1d7
	.long	0xa95
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xc5b
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF196
	.byte	0x5
	.value	0x1df
	.long	0xc5b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF197
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF198
	.byte	0x5
	.value	0x1e1
	.long	0xc71
	.value	0x32c
	.uleb128 0xf
	.long	.LASF199
	.byte	0x5
	.value	0x1e2
	.long	0xc71
	.value	0x330
	.uleb128 0xf
	.long	.LASF200
	.byte	0x5
	.value	0x1e3
	.long	0xc71
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xc6b
	.long	0xc6b
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbe5
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF201
	.uleb128 0x10
	.long	.LASF202
	.byte	0x5
	.value	0x1e4
	.long	0xbf1
	.uleb128 0x6
	.byte	0x8
	.long	0x89
	.uleb128 0xd
	.value	0xe08
	.byte	0x5
	.value	0x295
	.long	0x1492
	.uleb128 0xe
	.long	.LASF203
	.byte	0x5
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF204
	.byte	0x5
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp0"
	.byte	0x5
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"qpN"
	.byte	0x5
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF206
	.byte	0x5
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF207
	.byte	0x5
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF208
	.byte	0x5
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF209
	.byte	0x5
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF210
	.byte	0x5
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0xe
	.long	.LASF211
	.byte	0x5
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF212
	.byte	0x5
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF213
	.byte	0x5
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0xe
	.long	.LASF214
	.byte	0x5
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF215
	.byte	0x5
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF216
	.byte	0x5
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF217
	.byte	0x5
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF218
	.byte	0x5
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF219
	.byte	0x5
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF220
	.byte	0x5
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF221
	.byte	0x5
	.value	0x2b3
	.long	0x1492
	.byte	0x50
	.uleb128 0xe
	.long	.LASF222
	.byte	0x5
	.value	0x2b4
	.long	0x1492
	.byte	0x90
	.uleb128 0xe
	.long	.LASF223
	.byte	0x5
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0xe
	.long	.LASF224
	.byte	0x5
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0xe
	.long	.LASF225
	.byte	0x5
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0xe
	.long	.LASF226
	.byte	0x5
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0xe
	.long	.LASF227
	.byte	0x5
	.value	0x2b9
	.long	0x14a8
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF228
	.byte	0x5
	.value	0x2ba
	.long	0x14a8
	.value	0x1a8
	.uleb128 0xf
	.long	.LASF229
	.byte	0x5
	.value	0x2bb
	.long	0x14a8
	.value	0x270
	.uleb128 0xf
	.long	.LASF230
	.byte	0x5
	.value	0x2bc
	.long	0x14a8
	.value	0x338
	.uleb128 0xf
	.long	.LASF231
	.byte	0x5
	.value	0x2bd
	.long	0x14a8
	.value	0x400
	.uleb128 0xf
	.long	.LASF232
	.byte	0x5
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0xf
	.long	.LASF233
	.byte	0x5
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0xf
	.long	.LASF234
	.byte	0x5
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0xf
	.long	.LASF235
	.byte	0x5
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x16
	.string	"qpB"
	.byte	0x5
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0xf
	.long	.LASF236
	.byte	0x5
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0xf
	.long	.LASF237
	.byte	0x5
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0xf
	.long	.LASF238
	.byte	0x5
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0xf
	.long	.LASF239
	.byte	0x5
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0xf
	.long	.LASF240
	.byte	0x5
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0xf
	.long	.LASF241
	.byte	0x5
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0xf
	.long	.LASF242
	.byte	0x5
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0xf
	.long	.LASF243
	.byte	0x5
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0xf
	.long	.LASF116
	.byte	0x5
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0xf
	.long	.LASF244
	.byte	0x5
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0xf
	.long	.LASF245
	.byte	0x5
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0xf
	.long	.LASF246
	.byte	0x5
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0xf
	.long	.LASF247
	.byte	0x5
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0xf
	.long	.LASF248
	.byte	0x5
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0xf
	.long	.LASF249
	.byte	0x5
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0xf
	.long	.LASF250
	.byte	0x5
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0xf
	.long	.LASF251
	.byte	0x5
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0xf
	.long	.LASF252
	.byte	0x5
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0xf
	.long	.LASF253
	.byte	0x5
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0xf
	.long	.LASF254
	.byte	0x5
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0xf
	.long	.LASF255
	.byte	0x5
	.value	0x2df
	.long	0x14b8
	.value	0x52c
	.uleb128 0xf
	.long	.LASF256
	.byte	0x5
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0xf
	.long	.LASF257
	.byte	0x5
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0xf
	.long	.LASF258
	.byte	0x5
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0xf
	.long	.LASF259
	.byte	0x5
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0xf
	.long	.LASF260
	.byte	0x5
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0xf
	.long	.LASF261
	.byte	0x5
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0xf
	.long	.LASF262
	.byte	0x5
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0xf
	.long	.LASF263
	.byte	0x5
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0xf
	.long	.LASF264
	.byte	0x5
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0xf
	.long	.LASF265
	.byte	0x5
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0xf
	.long	.LASF266
	.byte	0x5
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0xf
	.long	.LASF267
	.byte	0x5
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0xf
	.long	.LASF268
	.byte	0x5
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0xf
	.long	.LASF269
	.byte	0x5
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0xf
	.long	.LASF270
	.byte	0x5
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0xf
	.long	.LASF271
	.byte	0x5
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0xf
	.long	.LASF272
	.byte	0x5
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0xf
	.long	.LASF273
	.byte	0x5
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0xf
	.long	.LASF274
	.byte	0x5
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0xf
	.long	.LASF275
	.byte	0x5
	.value	0x2f7
	.long	0x970
	.value	0x978
	.uleb128 0xf
	.long	.LASF276
	.byte	0x5
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0xf
	.long	.LASF277
	.byte	0x5
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0xf
	.long	.LASF278
	.byte	0x5
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0xf
	.long	.LASF279
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0xf
	.long	.LASF280
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0xf
	.long	.LASF281
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0xf
	.long	.LASF282
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0xf
	.long	.LASF283
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0xf
	.long	.LASF284
	.byte	0x5
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0xf
	.long	.LASF285
	.byte	0x5
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0xf
	.long	.LASF286
	.byte	0x5
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0xf
	.long	.LASF287
	.byte	0x5
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0xf
	.long	.LASF288
	.byte	0x5
	.value	0x30a
	.long	0x14a8
	.value	0x9b0
	.uleb128 0xf
	.long	.LASF289
	.byte	0x5
	.value	0x30b
	.long	0x14a8
	.value	0xa78
	.uleb128 0xf
	.long	.LASF290
	.byte	0x5
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0xf
	.long	.LASF291
	.byte	0x5
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0xf
	.long	.LASF292
	.byte	0x5
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0xf
	.long	.LASF293
	.byte	0x5
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0xf
	.long	.LASF294
	.byte	0x5
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0xf
	.long	.LASF295
	.byte	0x5
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0xf
	.long	.LASF296
	.byte	0x5
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0xf
	.long	.LASF297
	.byte	0x5
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0xf
	.long	.LASF298
	.byte	0x5
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0xf
	.long	.LASF299
	.byte	0x5
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0xf
	.long	.LASF300
	.byte	0x5
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0xf
	.long	.LASF301
	.byte	0x5
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0xf
	.long	.LASF151
	.byte	0x5
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0xf
	.long	.LASF152
	.byte	0x5
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0xf
	.long	.LASF153
	.byte	0x5
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0xf
	.long	.LASF302
	.byte	0x5
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0xf
	.long	.LASF303
	.byte	0x5
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0xf
	.long	.LASF304
	.byte	0x5
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0xf
	.long	.LASF305
	.byte	0x5
	.value	0x327
	.long	0x14a8
	.value	0xb88
	.uleb128 0xf
	.long	.LASF306
	.byte	0x5
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0xf
	.long	.LASF307
	.byte	0x5
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0xf
	.long	.LASF308
	.byte	0x5
	.value	0x32b
	.long	0x89
	.value	0xc58
	.uleb128 0xf
	.long	.LASF309
	.byte	0x5
	.value	0x32c
	.long	0x89
	.value	0xc60
	.uleb128 0xf
	.long	.LASF310
	.byte	0x5
	.value	0x32d
	.long	0xe3
	.value	0xc68
	.uleb128 0xf
	.long	.LASF311
	.byte	0x5
	.value	0x32e
	.long	0x89
	.value	0xc70
	.uleb128 0xf
	.long	.LASF312
	.byte	0x5
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0xf
	.long	.LASF313
	.byte	0x5
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0xf
	.long	.LASF314
	.byte	0x5
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0xf
	.long	.LASF315
	.byte	0x5
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0xf
	.long	.LASF316
	.byte	0x5
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0xf
	.long	.LASF317
	.byte	0x5
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0xf
	.long	.LASF318
	.byte	0x5
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0xf
	.long	.LASF319
	.byte	0x5
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0xf
	.long	.LASF320
	.byte	0x5
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0xf
	.long	.LASF321
	.byte	0x5
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0xf
	.long	.LASF322
	.byte	0x5
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0xf
	.long	.LASF323
	.byte	0x5
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0xf
	.long	.LASF324
	.byte	0x5
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0xf
	.long	.LASF325
	.byte	0x5
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0xf
	.long	.LASF326
	.byte	0x5
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0xf
	.long	.LASF327
	.byte	0x5
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0xf
	.long	.LASF328
	.byte	0x5
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0xf
	.long	.LASF329
	.byte	0x5
	.value	0x346
	.long	0xd3
	.value	0xcbc
	.uleb128 0xf
	.long	.LASF330
	.byte	0x5
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0xf
	.long	.LASF331
	.byte	0x5
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0xf
	.long	.LASF332
	.byte	0x5
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0xf
	.long	.LASF333
	.byte	0x5
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0xf
	.long	.LASF334
	.byte	0x5
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0xf
	.long	.LASF335
	.byte	0x5
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0xf
	.long	.LASF336
	.byte	0x5
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0xf
	.long	.LASF337
	.byte	0x5
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0xf
	.long	.LASF338
	.byte	0x5
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0xf
	.long	.LASF339
	.byte	0x5
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0xf
	.long	.LASF340
	.byte	0x5
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0xf
	.long	.LASF341
	.byte	0x5
	.value	0x35c
	.long	0x14c9
	.value	0xd08
	.uleb128 0xf
	.long	.LASF342
	.byte	0x5
	.value	0x35e
	.long	0x14a8
	.value	0xd38
	.uleb128 0xf
	.long	.LASF343
	.byte	0x5
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x14a8
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x82
	.long	0x14b8
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x82
	.long	0x14c9
	.uleb128 0x19
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0x970
	.long	0x14d9
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	.LASF344
	.byte	0x5
	.value	0x361
	.long	0xc8a
	.uleb128 0x1a
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x1eca
	.uleb128 0xe
	.long	.LASF345
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
	.long	.LASF346
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF347
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF348
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF349
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF104
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF350
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF210
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF351
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
	.long	.LASF116
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF352
	.byte	0x5
	.value	0x372
	.long	0xc71
	.byte	0x30
	.uleb128 0xe
	.long	.LASF353
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF354
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF355
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF356
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF357
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF358
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF359
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF360
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF361
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF362
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF363
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF364
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF365
	.byte	0x5
	.value	0x37f
	.long	0xc84
	.byte	0x68
	.uleb128 0xe
	.long	.LASF366
	.byte	0x5
	.value	0x380
	.long	0xc84
	.byte	0x70
	.uleb128 0xe
	.long	.LASF367
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF368
	.byte	0x5
	.value	0x383
	.long	0x1eca
	.byte	0x80
	.uleb128 0xe
	.long	.LASF369
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF370
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF371
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF372
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF373
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF374
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF375
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF376
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF377
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF378
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF379
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF380
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF381
	.byte	0x5
	.value	0x395
	.long	0x1ed0
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF382
	.byte	0x5
	.value	0x397
	.long	0x1eec
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF383
	.byte	0x5
	.value	0x398
	.long	0x1f08
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF384
	.byte	0x5
	.value	0x399
	.long	0x1f24
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x1f46
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x1f5c
	.value	0x3338
	.uleb128 0xf
	.long	.LASF385
	.byte	0x5
	.value	0x39d
	.long	0x1f72
	.value	0x3738
	.uleb128 0xf
	.long	.LASF386
	.byte	0x5
	.value	0x39e
	.long	0x1eca
	.value	0x3740
	.uleb128 0xf
	.long	.LASF387
	.byte	0x5
	.value	0x3a0
	.long	0x1f78
	.value	0x3748
	.uleb128 0xf
	.long	.LASF388
	.byte	0x5
	.value	0x3a1
	.long	0xc6b
	.value	0x3750
	.uleb128 0xf
	.long	.LASF389
	.byte	0x5
	.value	0x3a2
	.long	0x1f7e
	.value	0x3758
	.uleb128 0xf
	.long	.LASF390
	.byte	0x5
	.value	0x3a3
	.long	0x1f84
	.value	0x3760
	.uleb128 0x1b
	.long	.LASF391
	.byte	0x5
	.value	0x3a5
	.long	0x89
	.long	0x11860
	.uleb128 0x1b
	.long	.LASF392
	.byte	0x5
	.value	0x3a6
	.long	0x89
	.long	0x11868
	.uleb128 0x1c
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1b
	.long	.LASF393
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1b
	.long	.LASF394
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1b
	.long	.LASF395
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1b
	.long	.LASF396
	.byte	0x5
	.value	0x3ac
	.long	0x1f95
	.long	0x11880
	.uleb128 0x1b
	.long	.LASF397
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1b
	.long	.LASF398
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1b
	.long	.LASF399
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1b
	.long	.LASF400
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1b
	.long	.LASF401
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1b
	.long	.LASF402
	.byte	0x5
	.value	0x3b4
	.long	0x970
	.long	0x118d8
	.uleb128 0x1b
	.long	.LASF403
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1b
	.long	.LASF404
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1b
	.long	.LASF405
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1b
	.long	.LASF406
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1b
	.long	.LASF407
	.byte	0x5
	.value	0x3ba
	.long	0x1fab
	.long	0x118f0
	.uleb128 0x1b
	.long	.LASF408
	.byte	0x5
	.value	0x3bb
	.long	0x1fab
	.long	0x118f8
	.uleb128 0x1b
	.long	.LASF409
	.byte	0x5
	.value	0x3bd
	.long	0x1fab
	.long	0x11900
	.uleb128 0x1b
	.long	.LASF410
	.byte	0x5
	.value	0x3be
	.long	0x1fab
	.long	0x11908
	.uleb128 0x1b
	.long	.LASF144
	.byte	0x5
	.value	0x3bf
	.long	0x1fcf
	.long	0x11910
	.uleb128 0x1b
	.long	.LASF151
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1b
	.long	.LASF152
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1b
	.long	.LASF153
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1b
	.long	.LASF237
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1b
	.long	.LASF411
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1b
	.long	.LASF412
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1b
	.long	.LASF413
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1b
	.long	.LASF414
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1b
	.long	.LASF415
	.byte	0x5
	.value	0x3ce
	.long	0x1fdf
	.long	0x11950
	.uleb128 0x1b
	.long	.LASF416
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1b
	.long	.LASF417
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1b
	.long	.LASF418
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1b
	.long	.LASF419
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1b
	.long	.LASF420
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1b
	.long	.LASF421
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1b
	.long	.LASF422
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1b
	.long	.LASF316
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1b
	.long	.LASF423
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1b
	.long	.LASF424
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1b
	.long	.LASF426
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1b
	.long	.LASF427
	.byte	0x5
	.value	0x3e4
	.long	0x1ff5
	.long	0x11ae8
	.uleb128 0x1b
	.long	.LASF428
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1b
	.long	.LASF429
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1b
	.long	.LASF430
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1b
	.long	.LASF431
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1b
	.long	.LASF432
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1b
	.long	.LASF433
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1b
	.long	.LASF434
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1b
	.long	.LASF435
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1b
	.long	.LASF436
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1b
	.long	.LASF437
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1b
	.long	.LASF438
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1b
	.long	.LASF439
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1b
	.long	.LASF440
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1b
	.long	.LASF441
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1b
	.long	.LASF442
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1b
	.long	.LASF443
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1b
	.long	.LASF444
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1b
	.long	.LASF445
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1b
	.long	.LASF446
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1b
	.long	.LASF447
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1b
	.long	.LASF448
	.byte	0x5
	.value	0x409
	.long	0x2005
	.long	0x11b40
	.uleb128 0x1b
	.long	.LASF318
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1b
	.long	.LASF449
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1b
	.long	.LASF450
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1b
	.long	.LASF451
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1b
	.long	.LASF452
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1b
	.long	.LASF453
	.byte	0x5
	.value	0x413
	.long	0x970
	.long	0x11b60
	.uleb128 0x1b
	.long	.LASF454
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1b
	.long	.LASF455
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1b
	.long	.LASF456
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1b
	.long	.LASF457
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1b
	.long	.LASF458
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1b
	.long	.LASF459
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1b
	.long	.LASF460
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1b
	.long	.LASF461
	.byte	0x5
	.value	0x41b
	.long	0x200b
	.long	0x11b88
	.uleb128 0x1b
	.long	.LASF462
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1b
	.long	.LASF463
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1b
	.long	.LASF464
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1b
	.long	.LASF465
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1b
	.long	.LASF466
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1b
	.long	.LASF467
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1b
	.long	.LASF468
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1b
	.long	.LASF469
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1b
	.long	.LASF470
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1b
	.long	.LASF471
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1b
	.long	.LASF472
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1b
	.long	.LASF473
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1b
	.long	.LASF474
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1b
	.long	.LASF475
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1b
	.long	.LASF476
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1b
	.long	.LASF314
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1b
	.long	.LASF477
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1b
	.long	.LASF478
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1b
	.long	.LASF479
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1b
	.long	.LASF480
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1b
	.long	.LASF481
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1b
	.long	.LASF482
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1b
	.long	.LASF483
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1b
	.long	.LASF484
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1b
	.long	.LASF485
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1b
	.long	.LASF486
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1b
	.long	.LASF487
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1b
	.long	.LASF219
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1b
	.long	.LASF488
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1b
	.long	.LASF489
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1b
	.long	.LASF490
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1b
	.long	.LASF491
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1b
	.long	.LASF339
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1b
	.long	.LASF492
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1b
	.long	.LASF493
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc84
	.uleb128 0x4
	.long	0x42
	.long	0x1eec
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
	.long	0x1f08
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
	.long	0x1f24
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
	.long	0x1f46
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
	.long	0x1f5c
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1f72
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1eca
	.uleb128 0x6
	.byte	0x8
	.long	0xc78
	.uleb128 0x6
	.byte	0x8
	.long	0x977
	.uleb128 0x4
	.long	0x6a2
	.long	0x1f95
	.uleb128 0x19
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1fab
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1fb1
	.uleb128 0x6
	.byte	0x8
	.long	0x1fb7
	.uleb128 0x6
	.byte	0x8
	.long	0x1fbd
	.uleb128 0x6
	.byte	0x8
	.long	0x1fc3
	.uleb128 0x6
	.byte	0x8
	.long	0x1fc9
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x1fdf
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1ff5
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2005
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5cc
	.uleb128 0x6
	.byte	0x8
	.long	0x970
	.uleb128 0x10
	.long	.LASF494
	.byte	0x5
	.value	0x449
	.long	0x14e5
	.uleb128 0x4
	.long	0x34
	.long	0x202d
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.long	0x2066
	.uleb128 0xb
	.long	.LASF495
	.byte	0x6
	.byte	0x36
	.long	0xc8
	.byte	0
	.uleb128 0xb
	.long	.LASF496
	.byte	0x6
	.byte	0x37
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF497
	.byte	0x6
	.byte	0x38
	.long	0x3b
	.byte	0x8
	.uleb128 0xb
	.long	.LASF498
	.byte	0x6
	.byte	0x39
	.long	0xe3
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF499
	.byte	0x6
	.byte	0x3a
	.long	0x202d
	.uleb128 0xa
	.byte	0x18
	.byte	0x6
	.byte	0x4c
	.long	0x20aa
	.uleb128 0xb
	.long	.LASF500
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF501
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF496
	.byte	0x6
	.byte	0x50
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF498
	.byte	0x6
	.byte	0x51
	.long	0xa5d
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF502
	.byte	0x6
	.byte	0x52
	.long	0x2071
	.uleb128 0xa
	.byte	0x20
	.byte	0x6
	.byte	0x60
	.long	0x2106
	.uleb128 0xb
	.long	.LASF503
	.byte	0x6
	.byte	0x62
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF504
	.byte	0x6
	.byte	0x63
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF505
	.byte	0x6
	.byte	0x64
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF506
	.byte	0x6
	.byte	0x65
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF496
	.byte	0x6
	.byte	0x67
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF498
	.byte	0x6
	.byte	0x68
	.long	0xa5d
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF507
	.byte	0x6
	.byte	0x69
	.long	0x20b5
	.uleb128 0xa
	.byte	0x18
	.byte	0x6
	.byte	0x75
	.long	0x2156
	.uleb128 0xb
	.long	.LASF324
	.byte	0x6
	.byte	0x77
	.long	0x2156
	.byte	0
	.uleb128 0xb
	.long	.LASF508
	.byte	0x6
	.byte	0x78
	.long	0x2156
	.byte	0x4
	.uleb128 0xb
	.long	.LASF498
	.byte	0x6
	.byte	0x79
	.long	0x2166
	.byte	0x8
	.uleb128 0xb
	.long	.LASF509
	.byte	0x6
	.byte	0x7a
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF496
	.byte	0x6
	.byte	0x7b
	.long	0x34
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x2166
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0xa8
	.long	0x2176
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF510
	.byte	0x6
	.byte	0x7c
	.long	0x2111
	.uleb128 0xa
	.byte	0x58
	.byte	0x6
	.byte	0x86
	.long	0x221a
	.uleb128 0xb
	.long	.LASF503
	.byte	0x6
	.byte	0x88
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF504
	.byte	0x6
	.byte	0x89
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF511
	.byte	0x6
	.byte	0x8a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF512
	.byte	0x6
	.byte	0x8b
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF513
	.byte	0x6
	.byte	0x8c
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF514
	.byte	0x6
	.byte	0x8d
	.long	0x49
	.byte	0x14
	.uleb128 0xb
	.long	.LASF515
	.byte	0x6
	.byte	0x8e
	.long	0x49
	.byte	0x18
	.uleb128 0xb
	.long	.LASF516
	.byte	0x6
	.byte	0x8f
	.long	0x34
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF517
	.byte	0x6
	.byte	0x90
	.long	0x201d
	.byte	0x20
	.uleb128 0xb
	.long	.LASF518
	.byte	0x6
	.byte	0x91
	.long	0x201d
	.byte	0x34
	.uleb128 0xb
	.long	.LASF498
	.byte	0x6
	.byte	0x93
	.long	0xa5d
	.byte	0x48
	.uleb128 0xb
	.long	.LASF496
	.byte	0x6
	.byte	0x94
	.long	0x34
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF519
	.byte	0x6
	.byte	0x95
	.long	0x2181
	.uleb128 0xa
	.byte	0x20
	.byte	0x6
	.byte	0xa2
	.long	0x226a
	.uleb128 0xb
	.long	.LASF520
	.byte	0x6
	.byte	0xa4
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF521
	.byte	0x6
	.byte	0xa5
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF522
	.byte	0x6
	.byte	0xa6
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF498
	.byte	0x6
	.byte	0xa8
	.long	0xa5d
	.byte	0x10
	.uleb128 0xb
	.long	.LASF496
	.byte	0x6
	.byte	0xa9
	.long	0x34
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF523
	.byte	0x6
	.byte	0xaa
	.long	0x2225
	.uleb128 0xa
	.byte	0x28
	.byte	0x6
	.byte	0xb7
	.long	0x22d2
	.uleb128 0xb
	.long	.LASF524
	.byte	0x6
	.byte	0xb9
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF525
	.byte	0x6
	.byte	0xba
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF526
	.byte	0x6
	.byte	0xbb
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF527
	.byte	0x6
	.byte	0xbc
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF528
	.byte	0x6
	.byte	0xbd
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF498
	.byte	0x6
	.byte	0xbf
	.long	0xa5d
	.byte	0x18
	.uleb128 0xb
	.long	.LASF496
	.byte	0x6
	.byte	0xc0
	.long	0x34
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF529
	.byte	0x6
	.byte	0xc1
	.long	0x2275
	.uleb128 0xa
	.byte	0x20
	.byte	0x6
	.byte	0xcd
	.long	0x2316
	.uleb128 0xb
	.long	.LASF12
	.byte	0x6
	.byte	0xcf
	.long	0x7c
	.byte	0
	.uleb128 0xb
	.long	.LASF530
	.byte	0x6
	.byte	0xd0
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF498
	.byte	0x6
	.byte	0xd1
	.long	0xa5d
	.byte	0x10
	.uleb128 0xb
	.long	.LASF496
	.byte	0x6
	.byte	0xd2
	.long	0x34
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF531
	.byte	0x6
	.byte	0xd3
	.long	0x22dd
	.uleb128 0xa
	.byte	0x28
	.byte	0x6
	.byte	0xe3
	.long	0x2372
	.uleb128 0xb
	.long	.LASF12
	.byte	0x6
	.byte	0xe5
	.long	0x7c
	.byte	0
	.uleb128 0xb
	.long	.LASF530
	.byte	0x6
	.byte	0xe6
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF532
	.byte	0x6
	.byte	0xe7
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF533
	.byte	0x6
	.byte	0xe8
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF498
	.byte	0x6
	.byte	0xe9
	.long	0xa5d
	.byte	0x18
	.uleb128 0xb
	.long	.LASF496
	.byte	0x6
	.byte	0xea
	.long	0x34
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF534
	.byte	0x6
	.byte	0xeb
	.long	0x2321
	.uleb128 0xa
	.byte	0x18
	.byte	0x6
	.byte	0xfb
	.long	0x23c4
	.uleb128 0xb
	.long	.LASF535
	.byte	0x6
	.byte	0xfd
	.long	0x3b
	.byte	0
	.uleb128 0xb
	.long	.LASF536
	.byte	0x6
	.byte	0xfe
	.long	0x3b
	.byte	0x1
	.uleb128 0xb
	.long	.LASF537
	.byte	0x6
	.byte	0xff
	.long	0x3b
	.byte	0x2
	.uleb128 0xe
	.long	.LASF498
	.byte	0x6
	.value	0x101
	.long	0xa5d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF496
	.byte	0x6
	.value	0x102
	.long	0x34
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF538
	.byte	0x6
	.value	0x103
	.long	0x237d
	.uleb128 0x1d
	.long	.LASF539
	.byte	0x1
	.byte	0x41
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x23fa
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x43
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF540
	.byte	0x1
	.byte	0x5d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2424
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF657
	.byte	0x1
	.byte	0x74
	.long	0xc8
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF546
	.byte	0x1
	.byte	0x9f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x24c0
	.uleb128 0x21
	.string	"id"
	.byte	0x1
	.byte	0x9f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF541
	.byte	0x1
	.byte	0x9f
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF542
	.byte	0x1
	.byte	0x9f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF543
	.byte	0x1
	.byte	0x9f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF544
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF104
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF545
	.byte	0x1
	.byte	0xa1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF547
	.byte	0x1
	.byte	0xc7
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x24f9
	.uleb128 0x21
	.string	"id"
	.byte	0x1
	.byte	0xc7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF544
	.byte	0x1
	.byte	0xc9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF548
	.byte	0x1
	.byte	0xdd
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2524
	.uleb128 0x21
	.string	"id"
	.byte	0x1
	.byte	0xdd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF549
	.byte	0x1
	.byte	0xf0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2592
	.uleb128 0x22
	.long	.LASF550
	.byte	0x1
	.byte	0xf0
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF551
	.byte	0x1
	.byte	0xf0
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xf2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0xf2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF552
	.byte	0x1
	.byte	0xf3
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x23
	.long	.LASF553
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF554
	.byte	0x1
	.value	0x139
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF555
	.byte	0x1
	.value	0x150
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF556
	.byte	0x1
	.value	0x167
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF557
	.byte	0x1
	.value	0x21c
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x264e
	.uleb128 0x28
	.long	.LASF558
	.byte	0x1
	.value	0x21c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.long	.LASF559
	.byte	0x1
	.value	0x21c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF560
	.byte	0x1
	.value	0x21c
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF170
	.byte	0x1
	.value	0x21e
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x21f
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2b
	.long	.LASF658
	.byte	0x1
	.value	0x23a
	.long	0xc8
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a8
	.uleb128 0x28
	.long	.LASF561
	.byte	0x1
	.value	0x23a
	.long	0x27a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.long	.LASF170
	.byte	0x1
	.value	0x23a
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x23c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2a
	.string	"k"
	.byte	0x1
	.value	0x23c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.string	"noc"
	.byte	0x1
	.value	0x23d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x29
	.long	.LASF562
	.byte	0x1
	.value	0x23d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF563
	.byte	0x1
	.value	0x23d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.long	.LASF564
	.byte	0x1
	.value	0x23d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x23e
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.value	0x23f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.value	0x23f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.long	.LASF565
	.byte	0x1
	.value	0x23f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	.LASF566
	.byte	0x1
	.value	0x23f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.long	.LASF567
	.byte	0x1
	.value	0x23f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.string	"top"
	.byte	0x1
	.value	0x23f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.long	.LASF568
	.byte	0x1
	.value	0x23f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF569
	.byte	0x1
	.value	0x23f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.long	.LASF570
	.byte	0x1
	.value	0x242
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.long	.LASF571
	.byte	0x1
	.value	0x243
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.value	0x244
	.long	0xc8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x27ae
	.uleb128 0x6
	.byte	0x8
	.long	0x3b
	.uleb128 0x2c
	.long	.LASF572
	.byte	0x1
	.value	0x2da
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2822
	.uleb128 0x29
	.long	.LASF573
	.byte	0x1
	.value	0x2dc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.long	.LASF574
	.byte	0x1
	.value	0x2dd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x2de
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF550
	.byte	0x1
	.value	0x2df
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF551
	.byte	0x1
	.value	0x2df
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x27
	.long	.LASF575
	.byte	0x1
	.value	0x321
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2865
	.uleb128 0x28
	.long	.LASF576
	.byte	0x1
	.value	0x321
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"id"
	.byte	0x1
	.value	0x323
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	id.4958
	.byte	0
	.uleb128 0x2d
	.long	.LASF577
	.byte	0x1
	.value	0x33c
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2893
	.uleb128 0x28
	.long	.LASF576
	.byte	0x1
	.value	0x33c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF578
	.byte	0x1
	.value	0x35c
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x28e1
	.uleb128 0x28
	.long	.LASF576
	.byte	0x1
	.value	0x35c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x35e
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF550
	.byte	0x1
	.value	0x35f
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x27
	.long	.LASF579
	.byte	0x1
	.value	0x384
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x290f
	.uleb128 0x28
	.long	.LASF576
	.byte	0x1
	.value	0x384
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF580
	.byte	0x1
	.value	0x393
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x293d
	.uleb128 0x28
	.long	.LASF576
	.byte	0x1
	.value	0x393
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF581
	.byte	0x1
	.value	0x3af
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2969
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x3b1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF582
	.byte	0x1
	.value	0x3c2
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF583
	.byte	0x1
	.value	0x3cc
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x29be
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x3ce
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"pos"
	.byte	0x1
	.value	0x3ce
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	.LASF584
	.byte	0x1
	.value	0x3e8
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF585
	.byte	0x1
	.value	0x3f7
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF586
	.byte	0x1
	.value	0x402
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF587
	.byte	0x1
	.value	0x413
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a58
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x415
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x416
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF550
	.byte	0x1
	.value	0x417
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.long	.LASF588
	.byte	0x1
	.value	0x44d
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF589
	.byte	0x1
	.value	0x465
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF590
	.byte	0x1
	.value	0x477
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF591
	.byte	0x1
	.value	0x481
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ae4
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x483
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF550
	.byte	0x1
	.value	0x484
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2d
	.long	.LASF592
	.byte	0x1
	.value	0x4a8
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b3f
	.uleb128 0x28
	.long	.LASF593
	.byte	0x1
	.value	0x4a8
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF594
	.byte	0x1
	.value	0x4a8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF595
	.byte	0x1
	.value	0x4a8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF596
	.byte	0x1
	.value	0x4a8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF597
	.byte	0x1
	.value	0x4c8
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF598
	.byte	0x1
	.value	0x4d9
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF599
	.byte	0x1
	.value	0x4e4
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF600
	.byte	0x1
	.value	0x4ee
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bcb
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x4f0
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF550
	.byte	0x1
	.value	0x4f1
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.long	.LASF601
	.byte	0x1
	.value	0x519
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF602
	.byte	0x1
	.value	0x52e
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF603
	.byte	0x1
	.value	0x53c
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF604
	.byte	0x1
	.value	0x54a
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c63
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x54c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.LASF605
	.byte	0x1
	.value	0x54c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.long	.LASF530
	.byte	0x1
	.value	0x54d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF606
	.byte	0x1
	.value	0x559
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2caf
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x55b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x55c
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF550
	.byte	0x1
	.value	0x55d
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.long	.LASF607
	.byte	0x1
	.value	0x57d
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF608
	.byte	0x1
	.value	0x597
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF609
	.byte	0x1
	.value	0x5a5
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF610
	.byte	0x1
	.value	0x5b5
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d56
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x5b7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF605
	.byte	0x1
	.value	0x5b7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.long	.LASF530
	.byte	0x1
	.value	0x5b8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF611
	.byte	0x1
	.value	0x5b9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2c
	.long	.LASF612
	.byte	0x1
	.value	0x5d0
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2da2
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x5d2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x5d3
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF550
	.byte	0x1
	.value	0x5d4
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.long	.LASF613
	.byte	0x1
	.value	0x606
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF614
	.byte	0x1
	.value	0x61f
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF615
	.byte	0x1
	.value	0x62b
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF616
	.byte	0x1
	.value	0x63a
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF617
	.byte	0x1
	.value	0x64a
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e48
	.uleb128 0x2a
	.string	"sym"
	.byte	0x1
	.value	0x64c
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF550
	.byte	0x1
	.value	0x64d
	.long	0xa5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x25
	.long	.LASF618
	.byte	0x1
	.value	0x673
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF619
	.byte	0x5
	.value	0x4b7
	.long	0x2e6e
	.uleb128 0x6
	.byte	0x8
	.long	0x14d9
	.uleb128 0x30
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x2e80
	.uleb128 0x6
	.byte	0x8
	.long	0x2011
	.uleb128 0x2f
	.long	.LASF620
	.byte	0x5
	.value	0x5a4
	.long	0x34
	.uleb128 0x4
	.long	0x2066
	.long	0x2ea2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.long	.LASF621
	.byte	0x1
	.byte	0x3f
	.long	0x2e92
	.uleb128 0x9
	.byte	0x3
	.quad	sei_message
	.uleb128 0x32
	.long	.LASF622
	.byte	0x1
	.value	0x130
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasSparePicture
	.uleb128 0x32
	.long	.LASF623
	.byte	0x1
	.value	0x131
	.long	0x20aa
	.uleb128 0x9
	.byte	0x3
	.quad	seiSparePicturePayload
	.uleb128 0x32
	.long	.LASF624
	.byte	0x1
	.value	0x318
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasSubseqInfo
	.uleb128 0x4
	.long	0x2106
	.long	0x2f09
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x32
	.long	.LASF625
	.byte	0x1
	.value	0x319
	.long	0x2ef9
	.uleb128 0x9
	.byte	0x3
	.quad	seiSubseqInfo
	.uleb128 0x32
	.long	.LASF626
	.byte	0x1
	.value	0x3a6
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasSubseqLayerInfo
	.uleb128 0x32
	.long	.LASF627
	.byte	0x1
	.value	0x3a7
	.long	0x2176
	.uleb128 0x9
	.byte	0x3
	.quad	seiSubseqLayerInfo
	.uleb128 0x32
	.long	.LASF628
	.byte	0x1
	.value	0x3e5
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasSubseqChar
	.uleb128 0x32
	.long	.LASF629
	.byte	0x1
	.value	0x3e6
	.long	0x221a
	.uleb128 0x9
	.byte	0x3
	.quad	seiSubseqChar
	.uleb128 0x31
	.long	.LASF630
	.byte	0x1
	.byte	0x2f
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasSceneInformation
	.uleb128 0x32
	.long	.LASF631
	.byte	0x1
	.value	0x463
	.long	0x226a
	.uleb128 0x9
	.byte	0x3
	.quad	seiSceneInformation
	.uleb128 0x32
	.long	.LASF632
	.byte	0x1
	.value	0x4c5
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasPanScanRectInfo
	.uleb128 0x32
	.long	.LASF633
	.byte	0x1
	.value	0x4c6
	.long	0x22d2
	.uleb128 0x9
	.byte	0x3
	.quad	seiPanScanRectInfo
	.uleb128 0x32
	.long	.LASF634
	.byte	0x1
	.value	0x52c
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasUser_data_unregistered_info
	.uleb128 0x32
	.long	.LASF635
	.byte	0x1
	.value	0x52d
	.long	0x2316
	.uleb128 0x9
	.byte	0x3
	.quad	seiUser_data_unregistered
	.uleb128 0x32
	.long	.LASF636
	.byte	0x1
	.value	0x595
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasUser_data_registered_itu_t_t35_info
	.uleb128 0x32
	.long	.LASF637
	.byte	0x1
	.value	0x596
	.long	0x2372
	.uleb128 0x9
	.byte	0x3
	.quad	seiUser_data_registered_itu_t_t35
	.uleb128 0x32
	.long	.LASF638
	.byte	0x1
	.value	0x61d
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasRandomAccess_info
	.uleb128 0x32
	.long	.LASF639
	.byte	0x1
	.value	0x61e
	.long	0x23c4
	.uleb128 0x9
	.byte	0x3
	.quad	seiRandomAccess
	.uleb128 0x31
	.long	.LASF640
	.byte	0x1
	.byte	0x23
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasTemporal_reference
	.uleb128 0x31
	.long	.LASF641
	.byte	0x1
	.byte	0x24
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasClock_timestamp
	.uleb128 0x31
	.long	.LASF642
	.byte	0x1
	.byte	0x25
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasPanscan_rect
	.uleb128 0x31
	.long	.LASF643
	.byte	0x1
	.byte	0x26
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasBuffering_period
	.uleb128 0x31
	.long	.LASF644
	.byte	0x1
	.byte	0x27
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasHrd_picture
	.uleb128 0x31
	.long	.LASF645
	.byte	0x1
	.byte	0x28
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasFiller_payload
	.uleb128 0x31
	.long	.LASF646
	.byte	0x1
	.byte	0x29
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasUser_data_registered_itu_t_t35
	.uleb128 0x31
	.long	.LASF647
	.byte	0x1
	.byte	0x2a
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasUser_data_unregistered
	.uleb128 0x31
	.long	.LASF648
	.byte	0x1
	.byte	0x2b
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasRandom_access_point
	.uleb128 0x31
	.long	.LASF649
	.byte	0x1
	.byte	0x2c
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasRef_pic_buffer_management_repetition
	.uleb128 0x31
	.long	.LASF650
	.byte	0x1
	.byte	0x2d
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasSpare_picture
	.uleb128 0x31
	.long	.LASF651
	.byte	0x1
	.byte	0x31
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasSubseq_information
	.uleb128 0x31
	.long	.LASF652
	.byte	0x1
	.byte	0x32
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasSubseq_layer_characteristics
	.uleb128 0x31
	.long	.LASF653
	.byte	0x1
	.byte	0x33
	.long	0xc8
	.uleb128 0x9
	.byte	0x3
	.quad	seiHasSubseq_characteristics
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2116
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
	.uleb128 0x31
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
	.uleb128 0x32
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
.LASF480:
	.string	"bitdepth_luma_qp_scale"
.LASF327:
	.string	"channel_type"
.LASF346:
	.string	"nb_references"
.LASF579:
	.string	"ClearSubseqInfoPayload"
.LASF481:
	.string	"bitdepth_chroma_qp_scale"
.LASF29:
	.string	"SE_LUM_DC_INTER"
.LASF446:
	.string	"no_output_of_prior_pics_flag"
.LASF42:
	.string	"BITS_INTER_MB"
.LASF412:
	.string	"num_ref_idx_l1_active"
.LASF428:
	.string	"pic_order_cnt_lsb"
.LASF628:
	.string	"seiHasSubseqChar"
.LASF470:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF473:
	.string	"DeblockCall"
.LASF47:
	.string	"MAX_BITCOUNTER_MB"
.LASF36:
	.string	"SE_EOS"
.LASF27:
	.string	"SE_CHR_AC_INTRA"
.LASF650:
	.string	"seiHasSpare_picture"
.LASF354:
	.string	"width_cr"
.LASF441:
	.string	"PicSizeInMbs"
.LASF49:
	.string	"B_SLICE"
.LASF546:
	.string	"write_sei_message"
.LASF390:
	.string	"MB_SyntaxElements"
.LASF385:
	.string	"cofAC"
.LASF582:
	.string	"CloseSubseqLayerInfo"
.LASF328:
	.string	"ScalingMatrixPresentFlag"
.LASF488:
	.string	"lossless_qpprime_flag"
.LASF257:
	.string	"PocMemoryManagement"
.LASF400:
	.string	"imgtr_next_P_fld"
.LASF209:
	.string	"search_range"
.LASF415:
	.string	"mvscale"
.LASF16:
	.string	"int64"
.LASF196:
	.string	"slices"
.LASF99:
	.string	"long_term_pic_num"
.LASF630:
	.string	"seiHasSceneInformation"
.LASF48:
	.string	"P_SLICE"
.LASF366:
	.string	"ipredmode8x8"
.LASF370:
	.string	"mb_y"
.LASF448:
	.string	"dec_ref_pic_marking_buffer"
.LASF226:
	.string	"infile_header"
.LASF277:
	.string	"full_search"
.LASF651:
	.string	"seiHasSubseq_information"
.LASF101:
	.string	"max_long_term_frame_idx_plus1"
.LASF489:
	.string	"mb_cr_size_x"
.LASF322:
	.string	"DisplayEncParams"
.LASF414:
	.string	"top_field"
.LASF559:
	.string	"ref_area_indicator"
.LASF605:
	.string	"temp_data"
.LASF538:
	.string	"randomaccess_information_struct"
.LASF69:
	.string	"state"
.LASF520:
	.string	"scene_id"
.LASF272:
	.string	"Intra16x16ParDisable"
.LASF83:
	.string	"bcbp_contexts"
.LASF103:
	.string	"syntaxelement"
.LASF235:
	.string	"successive_Bframe"
.LASF613:
	.string	"CloseUser_data_registered_itu_t_t35"
.LASF245:
	.string	"WeightedPrediction"
.LASF104:
	.string	"type"
.LASF405:
	.string	"fw_mb_mode"
.LASF442:
	.string	"FrameSizeInMbs"
.LASF534:
	.string	"user_data_registered_itu_t_t35_information_struct"
.LASF501:
	.string	"num_spare_pics"
.LASF562:
	.string	"bit0"
.LASF151:
	.string	"LFDisableIdc"
.LASF238:
	.string	"directInferenceFlag"
.LASF165:
	.string	"bits_to_go_skip"
.LASF407:
	.string	"pred_mv"
.LASF317:
	.string	"context_init_method"
.LASF591:
	.string	"FinalizeSceneInformation"
.LASF319:
	.string	"AllowTransform8x8"
.LASF486:
	.string	"num_blk8x8_uv"
.LASF609:
	.string	"ClearUser_data_registered_itu_t_t35"
.LASF224:
	.string	"slice_argument"
.LASF182:
	.string	"rmpni_buffer"
.LASF572:
	.string	"FinalizeSpareMBMap"
.LASF28:
	.string	"SE_CBP_INTER"
.LASF132:
	.string	"mb_field"
.LASF264:
	.string	"InterSearch8x8"
.LASF298:
	.string	"NumFramesInELSubSeq"
.LASF100:
	.string	"long_term_frame_idx"
.LASF365:
	.string	"ipredmode"
.LASF558:
	.string	"delta_spare_frame_num"
.LASF251:
	.string	"RDBSliceWeightOnly"
.LASF216:
	.string	"GenerateMultiplePPS"
.LASF124:
	.string	"b8mode"
.LASF516:
	.string	"num_referenced_subseqs"
.LASF525:
	.string	"pan_scan_rect_left_offset"
.LASF337:
	.string	"cr_qp_index_offset"
.LASF191:
	.string	"slice_too_big"
.LASF34:
	.string	"SE_DELTA_QUANT_INTRA"
.LASF383:
	.string	"mprr_3"
.LASF513:
	.string	"average_rate_flag"
.LASF158:
	.string	"bits_to_go"
.LASF96:
	.string	"DecRefPicMarking_s"
.LASF102:
	.string	"DecRefPicMarking_t"
.LASF601:
	.string	"ClosePanScanRectInfo"
.LASF471:
	.string	"bot_MB"
.LASF469:
	.string	"BasicUnit"
.LASF210:
	.string	"num_ref_frames"
.LASF65:
	.string	"EcodestrmS"
.LASF392:
	.string	"intra_block"
.LASF46:
	.string	"BITS_DELTA_QUANT_MB"
.LASF565:
	.string	"left"
.LASF533:
	.string	"itu_t_t35_country_code_extension_byte"
.LASF6:
	.string	"long int"
.LASF492:
	.string	"auto_crop_right"
.LASF633:
	.string	"seiPanScanRectInfo"
.LASF384:
	.string	"mprr_c"
.LASF141:
	.string	"all_blk_8x8"
.LASF286:
	.string	"nobskip"
.LASF444:
	.string	"nal_reference_idc"
.LASF434:
	.string	"framepoc"
.LASF597:
	.string	"InitPanScanRectInfo"
.LASF450:
	.string	"NumberofTextureBits"
.LASF379:
	.string	"opix_c_x"
.LASF380:
	.string	"opix_c_y"
.LASF19:
	.string	"SE_MBTYPE"
.LASF247:
	.string	"UseWeightedReferenceME"
.LASF300:
	.string	"RandomIntraMBRefresh"
.LASF472:
	.string	"write_macroblock_frame"
.LASF162:
	.string	"stored_byte_buf"
.LASF549:
	.string	"AppendTmpbits2Buf"
.LASF39:
	.string	"BITS_HEADER"
.LASF344:
	.string	"InputParameters"
.LASF301:
	.string	"LFSendParameters"
.LASF438:
	.string	"PicHeightInMapUnits"
.LASF623:
	.string	"seiSparePicturePayload"
.LASF647:
	.string	"seiHasUser_data_unregistered"
.LASF458:
	.string	"NumberofGOP"
.LASF638:
	.string	"seiHasRandomAccess_info"
.LASF478:
	.string	"bitdepth_luma"
.LASF542:
	.string	"payload_size"
.LASF532:
	.string	"itu_t_t35_country_code"
.LASF43:
	.string	"BITS_CBP_MB"
.LASF26:
	.string	"SE_LUM_AC_INTRA"
.LASF55:
	.string	"Ebuffer"
.LASF227:
	.string	"infile"
.LASF569:
	.string	"directy"
.LASF54:
	.string	"Erange"
.LASF38:
	.string	"SE_MAX_ELEMENTS"
.LASF4:
	.string	"signed char"
.LASF352:
	.string	"framerate"
.LASF177:
	.string	"max_part_nr"
.LASF68:
	.string	"EncodingEnvironmentPtr"
.LASF535:
	.string	"recovery_point_flag"
.LASF423:
	.string	"delta_pic_order_always_zero_flag"
.LASF369:
	.string	"mb_x"
.LASF131:
	.string	"IntraChromaPredModeFlag"
.LASF265:
	.string	"InterSearch8x4"
.LASF108:
	.string	"context"
.LASF641:
	.string	"seiHasClock_timestamp"
.LASF186:
	.string	"long_term_pic_idx_l0"
.LASF190:
	.string	"long_term_pic_idx_l1"
.LASF183:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF187:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF460:
	.string	"NumberofPPicture"
.LASF455:
	.string	"NumberofMBHeaderBits"
.LASF386:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF122:
	.string	"intra_pred_modes8x8"
.LASF631:
	.string	"seiSceneInformation"
.LASF474:
	.string	"last_pic_bottom_field"
.LASF239:
	.string	"BiPredMotionEstimation"
.LASF409:
	.string	"bipred_mv1"
.LASF410:
	.string	"bipred_mv2"
.LASF85:
	.string	"last_contexts"
.LASF130:
	.string	"c_ipred_mode"
.LASF311:
	.string	"run_length_minus1"
.LASF485:
	.string	"max_imgpel_value_uv"
.LASF220:
	.string	"intra_upd"
.LASF184:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF188:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF185:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF189:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF304:
	.string	"SPPercentageThreshold"
.LASF159:
	.string	"byte_buf"
.LASF203:
	.string	"ProfileIDC"
.LASF144:
	.string	"bi_pred_me"
.LASF589:
	.string	"InitSceneInformation"
.LASF620:
	.string	"start_frame_no_in_this_IGOP"
.LASF115:
	.string	"delta_qp"
.LASF276:
	.string	"chroma_qp_index_offset"
.LASF351:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF364:
	.string	"block_c_x"
.LASF78:
	.string	"transform_size_contexts"
.LASF447:
	.string	"long_term_reference_flag"
.LASF214:
	.string	"Log2MaxFrameNum"
.LASF578:
	.string	"FinalizeSubseqInfo"
.LASF360:
	.string	"is_intra_block"
.LASF176:
	.string	"start_mb_nr"
.LASF323:
	.string	"RCEnable"
.LASF658:
	.string	"CompressSpareMBMap"
.LASF249:
	.string	"RDPictureIntra"
.LASF213:
	.string	"B_List1_refs"
.LASF236:
	.string	"qpBRSOffset"
.LASF302:
	.string	"SparePictureOption"
.LASF40:
	.string	"BITS_TOTAL_MB"
.LASF279:
	.string	"qpN2"
.LASF644:
	.string	"seiHasHrd_picture"
.LASF551:
	.string	"source"
.LASF232:
	.string	"intra_period"
.LASF118:
	.string	"mb_available_up"
.LASF430:
	.string	"delta_pic_order_cnt"
.LASF561:
	.string	"map_sp"
.LASF267:
	.string	"InterSearch4x4"
.LASF595:
	.string	"sceneTransType"
.LASF266:
	.string	"InterSearch4x8"
.LASF518:
	.string	"ref_subseq_id"
.LASF656:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF449:
	.string	"NumberofHeaderBits"
.LASF282:
	.string	"qp02"
.LASF107:
	.string	"bitpattern"
.LASF52:
	.string	"SI_SLICE"
.LASF77:
	.string	"mb_aff_contexts"
.LASF142:
	.string	"luma_transform_size_8x8_flag"
.LASF329:
	.string	"ScalingListPresentFlag"
.LASF372:
	.string	"block_y"
.LASF252:
	.string	"SkipIntraInInterSlices"
.LASF387:
	.string	"currentPicture"
.LASF73:
	.string	"b8_type_contexts"
.LASF505:
	.string	"last_picture_flag"
.LASF309:
	.string	"bottom_right"
.LASF246:
	.string	"WeightedBiprediction"
.LASF515:
	.string	"average_frame_rate"
.LASF403:
	.string	"p_interval"
.LASF202:
	.string	"Picture"
.LASF401:
	.string	"imgtr_last_P_fld"
.LASF619:
	.string	"input"
.LASF289:
	.string	"LeakyBucketParamFile"
.LASF205:
	.string	"no_frames"
.LASF147:
	.string	"prev_delta_qp"
.LASF217:
	.string	"img_width"
.LASF256:
	.string	"PyramidRefReorder"
.LASF528:
	.string	"pan_scan_rect_bottom_offset"
.LASF361:
	.string	"is_v_block"
.LASF223:
	.string	"slice_mode"
.LASF261:
	.string	"InterSearch16x16"
.LASF508:
	.string	"frame_rate"
.LASF554:
	.string	"InitSparePicture"
.LASF363:
	.string	"mb_y_intra"
.LASF72:
	.string	"mb_type_contexts"
.LASF308:
	.string	"top_left"
.LASF166:
	.string	"streamBuffer"
.LASF63:
	.string	"Ebits_to_goS"
.LASF262:
	.string	"InterSearch16x8"
.LASF461:
	.string	"MADofMB"
.LASF517:
	.string	"ref_subseq_layer_num"
.LASF411:
	.string	"num_ref_idx_l0_active"
.LASF318:
	.string	"model_number"
.LASF50:
	.string	"I_SLICE"
.LASF241:
	.string	"BiPredMESearchRange"
.LASF112:
	.string	"macroblock"
.LASF432:
	.string	"toppoc"
.LASF422:
	.string	"MbaffFrameFlag"
.LASF53:
	.string	"Elow"
.LASF377:
	.string	"opix_x"
.LASF326:
	.string	"basicunit"
.LASF290:
	.string	"PicInterlace"
.LASF175:
	.string	"picture_type"
.LASF491:
	.string	"chroma_qp_offset"
.LASF255:
	.string	"ExplicitPyramidFormat"
.LASF548:
	.string	"clear_sei_message"
.LASF583:
	.string	"FinalizeSubseqLayerInfo"
.LASF440:
	.string	"PicHeightInMbs"
.LASF338:
	.string	"lossless_qpprime_y_zero_flag"
.LASF646:
	.string	"seiHasUser_data_registered_itu_t_t35"
.LASF231:
	.string	"QmatrixFile"
.LASF622:
	.string	"seiHasSparePicture"
.LASF248:
	.string	"RDPictureDecision"
.LASF506:
	.string	"stored_frame_cnt"
.LASF67:
	.string	"EncodingEnvironment"
.LASF172:
	.string	"writeSyntaxElement"
.LASF624:
	.string	"seiHasSubseqInfo"
.LASF627:
	.string	"seiSubseqLayerInfo"
.LASF617:
	.string	"FinalizeRandomAccess"
.LASF37:
	.string	"SE_TRANSFORM_SIZE_FLAG"
.LASF0:
	.string	"long unsigned int"
.LASF81:
	.string	"cipr_contexts"
.LASF66:
	.string	"Ecodestrm_lenS"
.LASF324:
	.string	"bit_rate"
.LASF178:
	.string	"num_mb"
.LASF606:
	.string	"FinalizeUser_data_unregistered"
.LASF433:
	.string	"bottompoc"
.LASF24:
	.string	"SE_LUM_DC_INTRA"
.LASF215:
	.string	"ResendPPS"
.LASF599:
	.string	"UpdatePanScanRectInfo"
.LASF270:
	.string	"Intra4x4DiagDisable"
.LASF397:
	.string	"pstruct_next_P"
.LASF504:
	.string	"subseq_id"
.LASF598:
	.string	"ClearPanScanRectInfoPayload"
.LASF128:
	.string	"lf_alpha_c0_offset"
.LASF493:
	.string	"auto_crop_bottom"
.LASF230:
	.string	"TraceFile"
.LASF225:
	.string	"UseConstrainedIntraPred"
.LASF495:
	.string	"available"
.LASF462:
	.string	"BasicUnitQP"
.LASF594:
	.string	"sceneID"
.LASF454:
	.string	"NumberofMBTextureBits"
.LASF126:
	.string	"cbp_bits"
.LASF541:
	.string	"payload"
.LASF204:
	.string	"LevelIDC"
.LASF496:
	.string	"payloadSize"
.LASF509:
	.string	"layer_number"
.LASF375:
	.string	"pix_c_x"
.LASF376:
	.string	"pix_c_y"
.LASF207:
	.string	"hadamard"
.LASF404:
	.string	"b_frame_to_code"
.LASF197:
	.string	"bits_per_picture"
.LASF362:
	.string	"mb_y_upd"
.LASF343:
	.string	"OffsetMatrixPresentFlag"
.LASF510:
	.string	"subseq_layer_information_struct"
.LASF296:
	.string	"NoOfDecoders"
.LASF91:
	.string	"RMPNI"
.LASF152:
	.string	"LFAlphaC0Offset"
.LASF129:
	.string	"lf_beta_offset"
.LASF600:
	.string	"FinalizePanScanRectInfo"
.LASF98:
	.string	"difference_of_pic_nums_minus1"
.LASF571:
	.string	"size_compressed"
.LASF299:
	.string	"NumFrameIn2ndIGOP"
.LASF431:
	.string	"field_picture"
.LASF233:
	.string	"idr_enable"
.LASF381:
	.string	"mprr"
.LASF234:
	.string	"start_frame"
.LASF79:
	.string	"MotionInfoContexts"
.LASF566:
	.string	"right"
.LASF9:
	.string	"long long int"
.LASF402:
	.string	"b_interval"
.LASF56:
	.string	"Ebits_to_go"
.LASF394:
	.string	"fld_flag"
.LASF396:
	.string	"direct_intraP_ref"
.LASF353:
	.string	"width"
.LASF612:
	.string	"FinalizeUser_data_registered_itu_t_t35"
.LASF120:
	.string	"mb_type"
.LASF161:
	.string	"stored_bits_to_go"
.LASF490:
	.string	"mb_cr_size_y"
.LASF382:
	.string	"mprr_2"
.LASF114:
	.string	"slice_nr"
.LASF30:
	.string	"SE_CHR_DC_INTER"
.LASF200:
	.string	"distortion_v"
.LASF198:
	.string	"distortion_y"
.LASF164:
	.string	"byte_pos_skip"
.LASF153:
	.string	"LFBetaOffset"
.LASF155:
	.string	"double"
.LASF303:
	.string	"SPDetectionThreshold"
.LASF552:
	.string	"mask"
.LASF160:
	.string	"stored_byte_pos"
.LASF339:
	.string	"residue_transform_flag"
.LASF23:
	.string	"SE_CBP_INTRA"
.LASF399:
	.string	"imgtr_last_P_frm"
.LASF503:
	.string	"subseq_layer_num"
.LASF35:
	.string	"SE_BFRAME"
.LASF511:
	.string	"duration_flag"
.LASF86:
	.string	"one_contexts"
.LASF291:
	.string	"MbInterlace"
.LASF116:
	.string	"qpsp"
.LASF201:
	.string	"float"
.LASF321:
	.string	"ReportFrameStats"
.LASF254:
	.string	"PyramidCoding"
.LASF70:
	.string	"count"
.LASF148:
	.string	"prev_cbp"
.LASF258:
	.string	"symbol_mode"
.LASF71:
	.string	"BiContextType"
.LASF625:
	.string	"seiSubseqInfo"
.LASF592:
	.string	"UpdateSceneInformation"
.LASF497:
	.string	"subPacketType"
.LASF573:
	.string	"CurrFrameNum"
.LASF395:
	.string	"rd_pass"
.LASF563:
	.string	"bit1"
.LASF391:
	.string	"quad"
.LASF639:
	.string	"seiRandomAccess"
.LASF3:
	.string	"unsigned int"
.LASF577:
	.string	"UpdateSubseqInfo"
.LASF87:
	.string	"abs_contexts"
.LASF57:
	.string	"Ebits_to_follow"
.LASF167:
	.string	"write_flag"
.LASF348:
	.string	"total_number_mb"
.LASF313:
	.string	"slice_group_change_rate_minus1"
.LASF229:
	.string	"ReconFile"
.LASF593:
	.string	"HasSceneInformation"
.LASF59:
	.string	"Ecodestrm_len"
.LASF181:
	.string	"tex_ctx"
.LASF243:
	.string	"sp_periodicity"
.LASF522:
	.string	"second_scene_id"
.LASF580:
	.string	"CloseSubseqInfo"
.LASF459:
	.string	"TotalQpforPPicture"
.LASF119:
	.string	"mb_available_left"
.LASF95:
	.string	"RMPNIbuffer_s"
.LASF94:
	.string	"RMPNIbuffer_t"
.LASF21:
	.string	"SE_INTRAPREDMODE"
.LASF314:
	.string	"slice_group_change_cycle"
.LASF341:
	.string	"LambdaWeight"
.LASF90:
	.string	"TextureInfoContexts"
.LASF347:
	.string	"current_mb_nr"
.LASF287:
	.string	"NumberLeakyBuckets"
.LASF418:
	.string	"layer"
.LASF125:
	.string	"b8pdir"
.LASF194:
	.string	"no_slices"
.LASF610:
	.string	"UpdateUser_data_registered_itu_t_t35"
.LASF568:
	.string	"directx"
.LASF547:
	.string	"finalize_sei_message"
.LASF425:
	.string	"offset_for_top_to_bottom_field"
.LASF32:
	.string	"SE_CHR_AC_INTER"
.LASF636:
	.string	"seiHasUser_data_registered_itu_t_t35_info"
.LASF274:
	.string	"ChromaIntraDisable"
.LASF544:
	.string	"offset"
.LASF398:
	.string	"imgtr_next_P_frm"
.LASF464:
	.string	"FieldControl"
.LASF456:
	.string	"NumberofCodedBFrame"
.LASF417:
	.string	"i16offset"
.LASF273:
	.string	"Intra16x16PlaneDisable"
.LASF244:
	.string	"qpsp_pred"
.LASF316:
	.string	"pic_order_cnt_type"
.LASF199:
	.string	"distortion_u"
.LASF373:
	.string	"pix_x"
.LASF374:
	.string	"pix_y"
.LASF654:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF653:
	.string	"seiHasSubseq_characteristics"
.LASF494:
	.string	"ImageParameters"
.LASF626:
	.string	"seiHasSubseqLayerInfo"
.LASF615:
	.string	"ClearRandomAccess"
.LASF512:
	.string	"subseq_duration"
.LASF171:
	.string	"ee_cabac"
.LASF526:
	.string	"pan_scan_rect_right_offset"
.LASF13:
	.string	"FALSE"
.LASF149:
	.string	"predict_qp"
.LASF643:
	.string	"seiHasBuffering_period"
.LASF524:
	.string	"pan_scan_rect_id"
.LASF208:
	.string	"hadamardqpel"
.LASF413:
	.string	"field_mode"
.LASF269:
	.string	"Intra4x4ParDisable"
.LASF371:
	.string	"block_x"
.LASF288:
	.string	"LeakyBucketRateFile"
.LASF218:
	.string	"img_height"
.LASF222:
	.string	"part_size"
.LASF260:
	.string	"partition_mode"
.LASF475:
	.string	"last_has_mmco_5"
.LASF89:
	.string	"fld_last_contexts"
.LASF424:
	.string	"offset_for_non_ref_pic"
.LASF154:
	.string	"skip_flag"
.LASF564:
	.string	"bitc"
.LASF436:
	.string	"frame_num"
.LASF84:
	.string	"map_contexts"
.LASF305:
	.string	"SliceGroupConfigFileName"
.LASF51:
	.string	"SP_SLICE"
.LASF97:
	.string	"memory_management_control_operation"
.LASF292:
	.string	"IntraBottom"
.LASF168:
	.string	"Bitstream"
.LASF342:
	.string	"QOffsetMatrixFile"
.LASF212:
	.string	"B_List0_refs"
.LASF539:
	.string	"InitSEIMessages"
.LASF611:
	.string	"country_code"
.LASF420:
	.string	"NoResidueDirect"
.LASF575:
	.string	"InitSubseqInfo"
.LASF468:
	.string	"NumberofCodedMacroBlocks"
.LASF540:
	.string	"CloseSEIMessages"
.LASF537:
	.string	"broken_link_flag"
.LASF581:
	.string	"InitSubseqLayerInfo"
.LASF174:
	.string	"picture_id"
.LASF618:
	.string	"CloseRandomAccess"
.LASF393:
	.string	"fld_type"
.LASF457:
	.string	"NumberofCodedPFrame"
.LASF545:
	.string	"size"
.LASF585:
	.string	"ClearSubseqCharPayload"
.LASF10:
	.string	"long long unsigned int"
.LASF41:
	.string	"BITS_MB_MODE"
.LASF555:
	.string	"CloseSparePicture"
.LASF240:
	.string	"BiPredMERefinements"
.LASF121:
	.string	"intra_pred_modes"
.LASF356:
	.string	"height_cr"
.LASF408:
	.string	"all_mv"
.LASF281:
	.string	"qp2start"
.LASF603:
	.string	"ClearUser_data_unregistered"
.LASF355:
	.string	"height"
.LASF350:
	.string	"structure"
.LASF192:
	.string	"field_ctx"
.LASF173:
	.string	"DataPartition"
.LASF33:
	.string	"SE_DELTA_QUANT_INTER"
.LASF389:
	.string	"mb_data"
.LASF507:
	.string	"subseq_information_struct"
.LASF325:
	.string	"SeinitialQP"
.LASF452:
	.string	"NumberofBasicUnitTextureBits"
.LASF426:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF193:
	.string	"Slice"
.LASF521:
	.string	"scene_transition_type"
.LASF632:
	.string	"seiHasPanScanRectInfo"
.LASF169:
	.string	"datapartition"
.LASF64:
	.string	"Ebits_to_followS"
.LASF574:
	.string	"delta_frame_num"
.LASF604:
	.string	"UpdateUser_data_unregistered"
.LASF629:
	.string	"seiSubseqChar"
.LASF357:
	.string	"height_cr_frame"
.LASF608:
	.string	"InitUser_data_registered_itu_t_t35"
.LASF466:
	.string	"Frame_Total_Number_MB"
.LASF105:
	.string	"value1"
.LASF106:
	.string	"value2"
.LASF536:
	.string	"exact_match_flag"
.LASF556:
	.string	"CalculateSparePicture"
.LASF335:
	.string	"rgb_input_flag"
.LASF170:
	.string	"bitstream"
.LASF211:
	.string	"P_List0_refs"
.LASF297:
	.string	"RestrictRef"
.LASF531:
	.string	"user_data_unregistered_information_struct"
.LASF60:
	.string	"ElowS"
.LASF519:
	.string	"subseq_char_information_struct"
.LASF307:
	.string	"slice_group_map_type"
.LASF550:
	.string	"dest"
.LASF15:
	.string	"Boolean"
.LASF259:
	.string	"of_mode"
.LASF482:
	.string	"bitdepth_lambda_scale"
.LASF285:
	.string	"disthres"
.LASF419:
	.string	"old_layer"
.LASF345:
	.string	"number"
.LASF31:
	.string	"SE_LUM_AC_INTER"
.LASF283:
	.string	"qpBRS2Offset"
.LASF484:
	.string	"max_imgpel_value"
.LASF437:
	.string	"PicWidthInMbs"
.LASF293:
	.string	"LossRateA"
.LASF294:
	.string	"LossRateB"
.LASF295:
	.string	"LossRateC"
.LASF477:
	.string	"pic_unit_size_on_disk"
.LASF483:
	.string	"dc_pred_value"
.LASF487:
	.string	"num_cdc_coeff"
.LASF645:
	.string	"seiHasFiller_payload"
.LASF334:
	.string	"img_width_cr"
.LASF17:
	.string	"SE_HEADER"
.LASF156:
	.string	"Macroblock"
.LASF75:
	.string	"ref_no_contexts"
.LASF500:
	.string	"target_frame_num"
.LASF221:
	.string	"blc_size"
.LASF427:
	.string	"offset_for_ref_frame"
.LASF640:
	.string	"seiHasTemporal_reference"
.LASF607:
	.string	"CloseUser_data_unregistered"
.LASF445:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF45:
	.string	"BITS_COEFF_UV_MB"
.LASF12:
	.string	"byte"
.LASF655:
	.string	"sei.c"
.LASF93:
	.string	"Next"
.LASF253:
	.string	"BRefPictures"
.LASF92:
	.string	"Data"
.LASF463:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF58:
	.string	"Ecodestrm"
.LASF378:
	.string	"opix_y"
.LASF219:
	.string	"yuv_format"
.LASF330:
	.string	"FMEnable"
.LASF421:
	.string	"redundant_pic_cnt"
.LASF648:
	.string	"seiHasRandom_access_point"
.LASF406:
	.string	"bw_mb_mode"
.LASF635:
	.string	"seiUser_data_unregistered"
.LASF315:
	.string	"redundant_slice_flag"
.LASF527:
	.string	"pan_scan_rect_top_offset"
.LASF590:
	.string	"CloseSceneInformation"
.LASF621:
	.string	"sei_message"
.LASF331:
	.string	"BitDepthLuma"
.LASF14:
	.string	"TRUE"
.LASF284:
	.string	"rdopt"
.LASF652:
	.string	"seiHasSubseq_layer_characteristics"
.LASF62:
	.string	"EbufferS"
.LASF634:
	.string	"seiHasUser_data_unregistered_info"
.LASF435:
	.string	"ThisPOC"
.LASF22:
	.string	"SE_MVD"
.LASF649:
	.string	"seiHasRef_pic_buffer_management_repetition"
.LASF453:
	.string	"TotalMADBasicUnit"
.LASF146:
	.string	"prev_qp"
.LASF268:
	.string	"IntraDisableInterOnly"
.LASF74:
	.string	"mv_res_contexts"
.LASF642:
	.string	"seiHasPanscan_rect"
.LASF263:
	.string	"InterSearch8x16"
.LASF145:
	.string	"actj"
.LASF306:
	.string	"num_slice_groups_minus1"
.LASF429:
	.string	"delta_pic_order_cnt_bottom"
.LASF416:
	.string	"buf_cycle"
.LASF44:
	.string	"BITS_COEFF_Y_MB"
.LASF367:
	.string	"cod_counter"
.LASF587:
	.string	"FinalizeSubseqChar"
.LASF20:
	.string	"SE_REFFRAME"
.LASF179:
	.string	"partArr"
.LASF157:
	.string	"byte_pos"
.LASF228:
	.string	"outfile"
.LASF80:
	.string	"ipr_contexts"
.LASF133:
	.string	"mbAddrA"
.LASF134:
	.string	"mbAddrB"
.LASF135:
	.string	"mbAddrC"
.LASF136:
	.string	"mbAddrD"
.LASF320:
	.string	"LowPassForIntra8x8"
.LASF368:
	.string	"nz_coeff"
.LASF76:
	.string	"delta_qp_contexts"
.LASF271:
	.string	"Intra4x4DirDisable"
.LASF451:
	.string	"NumberofBasicUnitHeaderBits"
.LASF560:
	.string	"tmpBitstream"
.LASF111:
	.string	"SyntaxElement"
.LASF280:
	.string	"qpB2"
.LASF332:
	.string	"BitDepthChroma"
.LASF467:
	.string	"IFLAG"
.LASF553:
	.string	"bits_in_last_byte"
.LASF476:
	.string	"pre_frame_num"
.LASF443:
	.string	"pic_order_present_flag"
.LASF127:
	.string	"lf_disable"
.LASF242:
	.string	"BiPredMESubPel"
.LASF596:
	.string	"secondSceneID"
.LASF514:
	.string	"average_bit_rate"
.LASF523:
	.string	"scene_information_struct"
.LASF195:
	.string	"idr_flag"
.LASF614:
	.string	"InitRandomAccess"
.LASF657:
	.string	"HaveAggregationSEI"
.LASF25:
	.string	"SE_CHR_DC_INTRA"
.LASF2:
	.string	"short unsigned int"
.LASF465:
	.string	"FieldFrame"
.LASF278:
	.string	"last_frame"
.LASF150:
	.string	"predict_error"
.LASF637:
	.string	"seiUser_data_registered_itu_t_t35"
.LASF570:
	.string	"size_uncompressed"
.LASF349:
	.string	"current_slice_nr"
.LASF237:
	.string	"direct_spatial_mv_pred_flag"
.LASF206:
	.string	"jumpd"
.LASF586:
	.string	"UpdateSubseqChar"
.LASF543:
	.string	"payload_type"
.LASF479:
	.string	"bitdepth_chroma"
.LASF567:
	.string	"bottom"
.LASF109:
	.string	"mapping"
.LASF333:
	.string	"img_height_cr"
.LASF502:
	.string	"spare_picture_struct"
.LASF18:
	.string	"SE_PTYPE"
.LASF11:
	.string	"int64_t"
.LASF110:
	.string	"writing"
.LASF310:
	.string	"slice_group_id"
.LASF88:
	.string	"fld_map_contexts"
.LASF163:
	.string	"byte_buf_skip"
.LASF312:
	.string	"slice_group_change_direction_flag"
.LASF275:
	.string	"FrameRate"
.LASF602:
	.string	"InitUser_data_unregistered"
.LASF250:
	.string	"RDPSliceWeightOnly"
.LASF82:
	.string	"cbp_contexts"
.LASF336:
	.string	"cb_qp_index_offset"
.LASF180:
	.string	"mot_ctx"
.LASF499:
	.string	"sei_struct"
.LASF143:
	.string	"NoMbPartLessThan8x8Flag"
.LASF358:
	.string	"subblock_x"
.LASF359:
	.string	"subblock_y"
.LASF498:
	.string	"data"
.LASF529:
	.string	"panscanrect_information_struct"
.LASF584:
	.string	"InitSubseqChar"
.LASF588:
	.string	"CloseSubseqChar"
.LASF616:
	.string	"UpdateRandomAccess"
.LASF340:
	.string	"UseExplicitLambdaParams"
.LASF113:
	.string	"currSEnr"
.LASF576:
	.string	"currLayer"
.LASF439:
	.string	"FrameHeightInMbs"
.LASF388:
	.string	"currentSlice"
.LASF117:
	.string	"bitcounter"
.LASF61:
	.string	"ErangeS"
.LASF137:
	.string	"mbAvailA"
.LASF138:
	.string	"mbAvailB"
.LASF139:
	.string	"mbAvailC"
.LASF140:
	.string	"mbAvailD"
.LASF557:
	.string	"ComposeSparePictureMessage"
.LASF123:
	.string	"cbp_blk"
.LASF530:
	.string	"total_byte"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
