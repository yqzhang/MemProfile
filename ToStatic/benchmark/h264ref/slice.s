	.file	"slice.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 slice.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	init_ref_pic_list_reordering
	.type	init_ref_pic_list_reordering, @function
init_ref_pic_list_reordering:
.LFB2:
	.file 1 "slice.c"
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 52 0
	movq	img(%rip), %rax	# img, img.0
	movq	14160(%rax), %rax	# img.0_1->currentSlice, tmp60
	movq	%rax, -8(%rbp)	# tmp60, currSlice
	.loc 1 54 0
	movq	-8(%rbp), %rax	# currSlice, tmp61
	movl	$0, 56(%rax)	#, currSlice_2->ref_pic_list_reordering_flag_l0
	.loc 1 55 0
	movq	-8(%rbp), %rax	# currSlice, tmp62
	movl	$0, 88(%rax)	#, currSlice_2->ref_pic_list_reordering_flag_l1
	.loc 1 56 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init_ref_pic_list_reordering, .-init_ref_pic_list_reordering
	.globl	start_slice
	.type	start_slice, @function
start_slice:
.LFB3:
	.loc 1 73 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 75 0
	movq	img(%rip), %rax	# img, img.1
	movq	14160(%rax), %rax	# img.1_8->currentSlice, tmp90
	movq	%rax, -24(%rbp)	# tmp90, currSlice
	.loc 1 77 0
	movl	$0, -36(%rbp)	#, header_len
	.loc 1 79 0
	movq	input(%rip), %rax	# input, input.3
	movl	2364(%rax), %eax	# input.3_11->partition_mode, D.5640
	testl	%eax, %eax	# D.5640
	jne	.L3	#,
	.loc 1 79 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.2
	jmp	.L4	#
.L3:
	.loc 1 79 0 discriminator 2
	movl	$3, %eax	#, iftmp.2
.L4:
	.loc 1 79 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.2, NumberOfPartitions
	.loc 1 82 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.4
	movq	14152(%rax), %rax	# img.4_16->currentPicture, D.5641
	movl	4(%rax), %eax	# _17->idr_flag, D.5640
	testl	%eax, %eax	# D.5640
	je	.L5	#,
	.loc 1 84 0
	movl	$1, -28(%rbp)	#, NumberOfPartitions
.L5:
	.loc 1 87 0
	movq	img(%rip), %rax	# img, img.5
	movl	71792(%rax), %eax	# img.5_20->tr, D.5640
	movl	%eax, %edi	# D.5640,
	call	RTPUpdateTimestamp	#
	.loc 1 89 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L6	#
.L12:
	.loc 1 91 0
	movq	-24(%rbp), %rax	# currSlice, tmp91
	movq	24(%rax), %rdx	# currSlice_9->partArr, D.5642
	movl	-32(%rbp), %eax	# i, tmp92
	cltq
	salq	$3, %rax	#, tmp94
	movq	%rax, %rcx	# tmp93, tmp95
	salq	$4, %rcx	#, tmp95
	subq	%rax, %rcx	# tmp93, D.5643
	movq	%rcx, %rax	# D.5643, D.5643
	addq	%rdx, %rax	# D.5642, D.5642
	movq	(%rax), %rax	# _26->bitstream, tmp96
	movq	%rax, -16(%rbp)	# tmp96, currStream
	.loc 1 93 0
	movq	-16(%rbp), %rax	# currStream, tmp97
	movl	$0, 40(%rax)	#, currStream_27->write_flag
	.loc 1 94 0
	cmpl	$0, -32(%rbp)	#, i
	jne	.L7	#,
	.loc 1 95 0
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	SliceHeader	#
	addl	%eax, -36(%rbp)	# D.5640, header_len
	jmp	.L8	#
.L7:
	.loc 1 97 0
	movl	-32(%rbp), %eax	# i, tmp98
	movl	%eax, %edi	# tmp98,
	movl	$0, %eax	#,
	call	Partition_BC_Header	#
	addl	%eax, -36(%rbp)	# D.5640, header_len
.L8:
	.loc 1 100 0
	movq	input(%rip), %rax	# input, input.6
	movl	2356(%rax), %eax	# input.6_32->symbol_mode, D.5640
	cmpl	$1, %eax	#, D.5640
	jne	.L9	#,
	.loc 1 102 0
	movq	-24(%rbp), %rax	# currSlice, tmp99
	movq	24(%rax), %rdx	# currSlice_9->partArr, D.5642
	movl	-32(%rbp), %eax	# i, tmp100
	cltq
	salq	$3, %rax	#, tmp102
	movq	%rax, %rcx	# tmp101, tmp103
	salq	$4, %rcx	#, tmp103
	subq	%rax, %rcx	# tmp101, D.5643
	movq	%rcx, %rax	# D.5643, D.5643
	addq	%rdx, %rax	# D.5642, D.5642
	addq	$8, %rax	#, tmp104
	movq	%rax, -8(%rbp)	# tmp104, eep
	.loc 1 103 0
	movq	-16(%rbp), %rax	# currStream, tmp105
	movl	4(%rax), %eax	# currStream_27->bits_to_go, D.5640
	cmpl	$8, %eax	#, D.5640
	je	.L10	#,
	.loc 1 104 0
	movq	-16(%rbp), %rax	# currStream, tmp106
	movl	4(%rax), %eax	# currStream_27->bits_to_go, D.5640
	addl	%eax, -36(%rbp)	# D.5640, header_len
.L10:
	.loc 1 105 0
	movq	-16(%rbp), %rax	# currStream, tmp107
	movq	%rax, %rdi	# tmp107,
	call	writeVlcByteAlign	#
	.loc 1 106 0
	movq	img(%rip), %rax	# img, img.7
	movl	24(%rax), %ecx	# img.7_42->type, D.5640
	movq	-16(%rbp), %rdx	# currStream, D.5644
	movq	-16(%rbp), %rax	# currStream, tmp108
	movq	32(%rax), %rsi	# currStream_27->streamBuffer, D.5645
	movq	-8(%rbp), %rax	# eep, tmp109
	movq	%rax, %rdi	# tmp109,
	call	arienco_start_encoding	#
	.loc 1 107 0
	movl	$0, %eax	#,
	call	cabac_new_slice	#
	jmp	.L11	#
.L9:
	.loc 1 111 0
	movl	$0, %eax	#,
	call	CAVLC_init	#
.L11:
	.loc 1 89 0
	addl	$1, -32(%rbp)	#, i
.L6:
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp110
	cmpl	-28(%rbp), %eax	# NumberOfPartitions, tmp110
	jl	.L12	#,
	.loc 1 114 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.8
	movl	2356(%rax), %eax	# input.8_47->symbol_mode, D.5640
	cmpl	$1, %eax	#, D.5640
	jne	.L13	#,
	.loc 1 116 0
	movl	$0, %eax	#,
	call	init_contexts	#
.L13:
	.loc 1 118 0
	movl	-36(%rbp), %eax	# header_len, D.5640
	.loc 1 119 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	start_slice, .-start_slice
	.globl	terminate_slice
	.type	terminate_slice, @function
terminate_slice:
.LFB4:
	.loc 1 135 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 138 0
	movq	img(%rip), %rax	# img, img.9
	movq	14160(%rax), %rax	# img.9_2->currentSlice, tmp104
	movq	%rax, -24(%rbp)	# tmp104, currSlice
	.loc 1 143 0
	movq	input(%rip), %rax	# input, input.10
	movl	2356(%rax), %eax	# input.10_4->symbol_mode, D.5646
	cmpl	$1, %eax	#, D.5646
	jne	.L16	#,
	.loc 1 144 0
	movl	$1, %edi	#,
	call	write_terminating_bit	#
.L16:
	.loc 1 146 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L17	#
.L20:
	.loc 1 148 0
	movq	-24(%rbp), %rax	# currSlice, tmp105
	movq	24(%rax), %rdx	# currSlice_3->partArr, D.5647
	movl	-36(%rbp), %eax	# i, tmp106
	cltq
	salq	$3, %rax	#, tmp108
	movq	%rax, %rcx	# tmp107, tmp109
	salq	$4, %rcx	#, tmp109
	subq	%rax, %rcx	# tmp107, D.5648
	movq	%rcx, %rax	# D.5648, D.5648
	addq	%rdx, %rax	# D.5647, D.5647
	movq	(%rax), %rax	# _11->bitstream, tmp110
	movq	%rax, -16(%rbp)	# tmp110, currStream
	.loc 1 149 0
	movq	input(%rip), %rax	# input, input.11
	movl	2356(%rax), %eax	# input.11_13->symbol_mode, D.5646
	testl	%eax, %eax	# D.5646
	jne	.L18	#,
	.loc 1 151 0
	movq	-16(%rbp), %rax	# currStream, tmp111
	movq	%rax, %rdi	# tmp111,
	call	SODBtoRBSP	#
	.loc 1 152 0
	movq	-16(%rbp), %rax	# currStream, tmp112
	movl	(%rax), %eax	# currStream_12->byte_pos, tmp113
	movl	%eax, -32(%rbp)	# tmp113, byte_pos_before_startcode_emu_prevention
	.loc 1 153 0
	movq	-16(%rbp), %rax	# currStream, tmp114
	movl	(%rax), %edx	# currStream_12->byte_pos, D.5646
	movq	-16(%rbp), %rax	# currStream, tmp115
	movq	32(%rax), %rax	# currStream_12->streamBuffer, D.5649
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5649,
	call	RBSPtoEBSP	#
	movq	-16(%rbp), %rdx	# currStream, tmp116
	movl	%eax, (%rdx)	# D.5646, currStream_12->byte_pos
	.loc 1 154 0
	movq	stats(%rip), %rax	# stats, stats.12
	movq	1480(%rax), %rax	# stats.12_19->em_prev_bits, D.5650
	movq	stats(%rip), %rdx	# stats, stats.13
	movq	1480(%rdx), %rdx	# stats.13_21->em_prev_bits, D.5650
	movl	(%rdx), %ecx	# *_22, D.5646
	movq	-16(%rbp), %rdx	# currStream, tmp117
	movl	(%rdx), %edx	# currStream_12->byte_pos, D.5646
	subl	-32(%rbp), %edx	# byte_pos_before_startcode_emu_prevention, D.5646
	sall	$3, %edx	#, D.5646
	addl	%ecx, %edx	# D.5646, D.5646
	movl	%edx, (%rax)	# D.5646, *_20
	jmp	.L19	#
.L18:
	.loc 1 158 0
	movq	-24(%rbp), %rax	# currSlice, tmp118
	movq	24(%rax), %rdx	# currSlice_3->partArr, D.5647
	movl	-36(%rbp), %eax	# i, tmp119
	cltq
	salq	$3, %rax	#, tmp121
	movq	%rax, %rcx	# tmp120, tmp122
	salq	$4, %rcx	#, tmp122
	subq	%rax, %rcx	# tmp120, D.5648
	movq	%rcx, %rax	# D.5648, D.5648
	addq	%rdx, %rax	# D.5647, D.5647
	addq	$8, %rax	#, tmp123
	movq	%rax, -8(%rbp)	# tmp123, eep
	.loc 1 160 0
	movq	-8(%rbp), %rax	# eep, tmp124
	movq	%rax, %rdi	# tmp124,
	call	arienco_done_encoding	#
	.loc 1 161 0
	movq	-8(%rbp), %rax	# eep, tmp125
	movl	12(%rax), %eax	# eep_32->Ebits_to_go, D.5651
	movl	%eax, %edx	# D.5651, D.5646
	movq	-16(%rbp), %rax	# currStream, tmp126
	movl	%edx, 4(%rax)	# D.5646, currStream_12->bits_to_go
	.loc 1 162 0
	movq	-16(%rbp), %rax	# currStream, tmp127
	movb	$0, 8(%rax)	#, currStream_12->byte_buf
	.loc 1 163 0
	movq	-16(%rbp), %rax	# currStream, tmp128
	movl	(%rax), %eax	# currStream_12->byte_pos, tmp129
	movl	%eax, -28(%rbp)	# tmp129, bytes_written
	.loc 1 164 0
	movq	-16(%rbp), %rax	# currStream, tmp130
	movl	(%rax), %eax	# currStream_12->byte_pos, tmp131
	movl	%eax, -32(%rbp)	# tmp131, byte_pos_before_startcode_emu_prevention
	.loc 1 165 0
	movq	-8(%rbp), %rax	# eep, tmp132
	movl	88(%rax), %ecx	# eep_32->E, D.5646
	movq	-16(%rbp), %rax	# currStream, tmp133
	movl	(%rax), %edx	# currStream_12->byte_pos, D.5646
	movq	-16(%rbp), %rax	# currStream, tmp134
	movq	32(%rax), %rax	# currStream_12->streamBuffer, D.5649
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5649,
	call	RBSPtoEBSP	#
	movq	-16(%rbp), %rdx	# currStream, tmp135
	movl	%eax, (%rdx)	# D.5646, currStream_12->byte_pos
	.loc 1 166 0
	movq	stats(%rip), %rax	# stats, stats.14
	movq	1480(%rax), %rax	# stats.14_41->em_prev_bits, D.5650
	movq	stats(%rip), %rdx	# stats, stats.15
	movq	1480(%rdx), %rdx	# stats.15_43->em_prev_bits, D.5650
	movl	(%rdx), %ecx	# *_44, D.5646
	movq	-16(%rbp), %rdx	# currStream, tmp136
	movl	(%rdx), %edx	# currStream_12->byte_pos, D.5646
	subl	-32(%rbp), %edx	# byte_pos_before_startcode_emu_prevention, D.5646
	sall	$3, %edx	#, D.5646
	addl	%ecx, %edx	# D.5646, D.5646
	movl	%edx, (%rax)	# D.5646, *_42
.L19:
	.loc 1 146 0
	addl	$1, -36(%rbp)	#, i
.L17:
	.loc 1 146 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# currSlice, tmp137
	movl	16(%rax), %eax	# currSlice_3->max_part_nr, D.5646
	cmpl	-36(%rbp), %eax	# i, D.5646
	jg	.L20	#,
	.loc 1 169 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.16
	movl	2356(%rax), %eax	# input.16_51->symbol_mode, D.5646
	cmpl	$1, %eax	#, D.5646
	jne	.L21	#,
	.loc 1 171 0
	movl	$0, %eax	#,
	call	store_contexts	#
.L21:
	.loc 1 174 0
	movl	$0, %eax	#, D.5646
	.loc 1 175 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	terminate_slice, .-terminate_slice
	.globl	encode_one_slice
	.type	encode_one_slice, @function
encode_one_slice:
.LFB5:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# SliceGroupId, SliceGroupId
	movq	%rsi, -80(%rbp)	# pic, pic
	.loc 1 187 0
	movl	$0, -52(%rbp)	#, end_of_slice
	.loc 1 190 0
	movl	$0, -44(%rbp)	#, NumberOfCodedMBs
	.loc 1 194 0
	movq	img(%rip), %rax	# img, img.17
	movl	$0, 120(%rax)	#, img.17_12->cod_counter
	.loc 1 196 0
	movl	-68(%rbp), %eax	# SliceGroupId, tmp206
	movl	%eax, %edi	# tmp206,
	call	FmoGetFirstMacroblockInSlice	#
	movl	%eax, -40(%rbp)	# tmp207, CurrentMbAddr
	.loc 1 199 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp208
	movl	%eax, %edi	# tmp208,
	call	init_slice	#
	.loc 1 200 0
	movq	img(%rip), %rax	# img, img.18
	movq	14160(%rax), %rax	# img.18_15->currentSlice, D.5652
	movq	24(%rax), %rax	# _16->partArr, D.5653
	movq	(%rax), %rax	# _17->bitstream, D.5654
	movl	(%rax), %eax	# _18->byte_pos, Bytes_After_Header.19
	movl	%eax, Bytes_After_Header(%rip)	# Bytes_After_Header.19, Bytes_After_Header
	.loc 1 202 0
	movq	input(%rip), %rax	# input, input.20
	movl	2356(%rax), %eax	# input.20_20->symbol_mode, D.5655
	cmpl	$1, %eax	#, D.5655
	jne	.L24	#,
	.loc 1 204 0
	movl	$0, %eax	#,
	call	SetCtxModelNumber	#
.L24:
	.loc 1 220 0
	movl	$0, %eax	#,
	call	start_slice	#
	movl	%eax, -36(%rbp)	# tmp209, len
	.loc 1 223 0
	movq	img(%rip), %rax	# img, img.21
	movq	img(%rip), %rdx	# img, img.22
	movl	72524(%rdx), %ecx	# img.22_24->NumberofHeaderBits, D.5655
	movl	-36(%rbp), %edx	# len, tmp210
	addl	%ecx, %edx	# D.5655, D.5655
	movl	%edx, 72524(%rax)	# D.5655, img.21_23->NumberofHeaderBits
	.loc 1 226 0
	movq	img(%rip), %rax	# img, img.23
	movl	72620(%rax), %edx	# img.23_27->BasicUnit, D.5655
	movq	img(%rip), %rax	# img, img.24
	movl	72608(%rax), %eax	# img.24_29->Frame_Total_Number_MB, D.5655
	cmpl	%eax, %edx	# D.5655, D.5655
	jge	.L25	#,
	.loc 1 227 0
	movq	img(%rip), %rax	# img, img.25
	movq	img(%rip), %rdx	# img, img.26
	movl	72532(%rdx), %ecx	# img.26_32->NumberofBasicUnitHeaderBits, D.5655
	movl	-36(%rbp), %edx	# len, tmp211
	addl	%ecx, %edx	# D.5655, D.5655
	movl	%edx, 72532(%rax)	# D.5655, img.25_31->NumberofBasicUnitHeaderBits
.L25:
	.loc 1 240 0
	movq	stats(%rip), %rax	# stats, stats.27
	movq	stats(%rip), %rdx	# stats, stats.28
	movl	24(%rdx), %ecx	# stats.28_36->bit_slice, D.5655
	movl	-36(%rbp), %edx	# len, tmp212
	addl	%ecx, %edx	# D.5655, D.5655
	movl	%edx, 24(%rax)	# D.5655, stats.27_35->bit_slice
	.loc 1 241 0
	movq	stats(%rip), %rax	# stats, stats.29
	movq	img(%rip), %rdx	# img, img.30
	movl	24(%rdx), %esi	# img.30_40->type, D.5655
	movq	stats(%rip), %rdx	# stats, stats.31
	movq	img(%rip), %rcx	# img, img.32
	movl	24(%rcx), %ecx	# img.32_43->type, D.5655
	movslq	%ecx, %rcx	# D.5655, tmp213
	addq	$340, %rcx	#, tmp214
	movl	8(%rdx,%rcx,4), %ecx	# stats.31_42->bit_use_header, D.5655
	movl	-36(%rbp), %edx	# len, tmp215
	addl	%edx, %ecx	# tmp215, D.5655
	movslq	%esi, %rdx	# D.5655, tmp216
	addq	$340, %rdx	#, tmp217
	movl	%ecx, 8(%rax,%rdx,4)	# D.5655, stats.29_39->bit_use_header
	.loc 1 244 0
	jmp	.L26	#
.L44:
	.loc 1 247 0
	movq	img(%rip), %rax	# img, img.33
	movl	72400(%rax), %eax	# img.33_50->MbaffFrameFlag, D.5655
	testl	%eax, %eax	# D.5655
	jne	.L27	#,
	.loc 1 249 0
	movl	$0, -48(%rbp)	#, recode_macroblock
	.loc 1 250 0
	movq	$rddata_top_frame_mb, rdopt(%rip)	#, rdopt
	.loc 1 252 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp218
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp218,
	call	start_macroblock	#
	.loc 1 253 0
	call	encode_one_macroblock	#
	.loc 1 254 0
	movl	$1, %edi	#,
	call	write_one_macroblock	#
	.loc 1 256 0
	leaq	-48(%rbp), %rdx	#, tmp219
	leaq	-52(%rbp), %rax	#, tmp220
	movq	%rdx, %rsi	# tmp219,
	movq	%rax, %rdi	# tmp220,
	call	terminate_macroblock	#
	.loc 1 262 0
	movl	-48(%rbp), %eax	# recode_macroblock, recode_macroblock.34
	testl	%eax, %eax	# recode_macroblock.34
	jne	.L28	#,
	.loc 1 264 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp221
	movl	%eax, %edi	# tmp221,
	call	FmoGetNextMBNr	#
	movl	%eax, -40(%rbp)	# tmp222, CurrentMbAddr
	.loc 1 265 0
	cmpl	$-1, -40(%rbp)	#, CurrentMbAddr
	jne	.L29	#,
	.loc 1 268 0
	movl	$1, -52(%rbp)	#, end_of_slice
.L29:
	.loc 1 270 0
	addl	$1, -44(%rbp)	#, NumberOfCodedMBs
	.loc 1 271 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp223
	movl	%eax, %edi	# tmp223,
	movl	$0, %eax	#,
	call	proceed2nextMacroblock	#
	jmp	.L26	#
.L28:
	.loc 1 276 0
	movq	img(%rip), %rbx	# img, img.35
	movq	img(%rip), %rax	# img, img.36
	movl	12(%rax), %eax	# img.36_56->current_mb_nr, D.5655
	movl	%eax, %edi	# D.5655,
	call	FmoGetPreviousMBNr	#
	movl	%eax, 12(%rbx)	# D.5655, img.35_55->current_mb_nr
	.loc 1 277 0
	movq	img(%rip), %rax	# img, img.37
	movl	12(%rax), %eax	# img.37_59->current_mb_nr, D.5655
	cmpl	$-1, %eax	#, D.5655
	jne	.L26	#,
	.loc 1 280 0
	movabsq	$7954799992687981125, %rax	#, tmp250
	movq	%rax, errortext(%rip)	# tmp250, MEM[(void *)&errortext]
	movabsq	$7358995515035643747, %rax	#, tmp251
	movq	%rax, errortext+8(%rip)	# tmp251, MEM[(void *)&errortext]
	movabsq	$2324505159464612457, %rax	#, tmp252
	movq	%rax, errortext+16(%rip)	# tmp252, MEM[(void *)&errortext]
	movabsq	$7165353590175066487, %rax	#, tmp253
	movq	%rax, errortext+24(%rip)	# tmp253, MEM[(void *)&errortext]
	movabsq	$7021147434640828009, %rax	#, tmp254
	movq	%rax, errortext+32(%rip)	# tmp254, MEM[(void *)&errortext]
	movabsq	$3202733835606122866, %rax	#, tmp255
	movq	%rax, errortext+40(%rip)	# tmp255, MEM[(void *)&errortext]
	movabsq	$7381153994529923616, %rax	#, tmp256
	movq	%rax, errortext+48(%rip)	# tmp256, MEM[(void *)&errortext]
	movabsq	$8389754698058785568, %rax	#, tmp257
	movq	%rax, errortext+56(%rip)	# tmp257, MEM[(void *)&errortext]
	movabsq	$2340008602716228896, %rax	#, tmp258
	movq	%rax, errortext+64(%rip)	# tmp258, MEM[(void *)&errortext]
	movabsq	$7070773939452011874, %rax	#, tmp259
	movq	%rax, errortext+72(%rip)	# tmp259, MEM[(void *)&errortext]
	movw	$26473, errortext+80(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+82(%rip)	#, MEM[(void *)&errortext]
	.loc 1 281 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	jmp	.L26	#
.L27:
	.loc 1 316 0
	movq	input(%rip), %rax	# input, input.38
	movl	2884(%rax), %eax	# input.38_61->MbInterlace, D.5655
	cmpl	$2, %eax	#, D.5655
	jne	.L31	#,
	.loc 1 320 0
	movl	$0, -48(%rbp)	#, recode_macroblock
	.loc 1 323 0
	movq	img(%rip), %rax	# img, img.39
	movl	$0, 72008(%rax)	#, img.39_63->field_mode
	.loc 1 324 0
	movq	img(%rip), %rax	# img, img.40
	movl	$0, 72012(%rax)	#, img.40_64->top_field
	.loc 1 327 0
	movq	img(%rip), %rax	# img, img.41
	movl	$0, 72624(%rax)	#, img.41_65->write_macroblock
	.loc 1 328 0
	movq	img(%rip), %rax	# img, img.42
	movl	$0, 72628(%rax)	#, img.42_66->bot_MB
	.loc 1 330 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp225
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp225,
	call	start_macroblock	#
	.loc 1 332 0
	movq	$rddata_top_frame_mb, rdopt(%rip)	#, rdopt
	.loc 1 333 0
	call	encode_one_macroblock	#
	.loc 1 334 0
	movq	rdopt(%rip), %rax	# rdopt, rdopt.43
	movq	(%rax), %rax	# rdopt.43_67->min_rdcost, tmp226
	movq	%rax, -32(%rbp)	# tmp226, FrameRDCost
	.loc 1 338 0
	movq	img(%rip), %rax	# img, img.44
	movl	$1, 72628(%rax)	#, img.44_69->bot_MB
	.loc 1 341 0
	movq	img(%rip), %rax	# img, img.45
	movl	$0, 72008(%rax)	#, img.45_70->field_mode
	.loc 1 343 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp227
	addl	$1, %eax	#, D.5655
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.5655,
	call	start_macroblock	#
	.loc 1 344 0
	movq	$rddata_bot_frame_mb, rdopt(%rip)	#, rdopt
	.loc 1 345 0
	call	encode_one_macroblock	#
	.loc 1 346 0
	movq	rdopt(%rip), %rax	# rdopt, rdopt.46
	movsd	(%rax), %xmm0	# rdopt.46_72->min_rdcost, D.5656
	movsd	-32(%rbp), %xmm1	# FrameRDCost, tmp229
	addsd	%xmm1, %xmm0	# tmp229, tmp228
	movsd	%xmm0, -32(%rbp)	# tmp228, FrameRDCost
.L31:
	.loc 1 351 0
	movq	input(%rip), %rax	# input, input.47
	movl	2884(%rax), %eax	# input.47_75->MbInterlace, D.5655
	cmpl	$2, %eax	#, D.5655
	je	.L32	#,
	.loc 1 351 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.48
	movl	2884(%rax), %eax	# input.48_77->MbInterlace, D.5655
	cmpl	$1, %eax	#, D.5655
	jne	.L33	#,
.L32:
	.loc 1 354 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.49
	movl	$0, 72628(%rax)	#, img.49_79->bot_MB
	.loc 1 358 0
	movq	img(%rip), %rax	# img, img.50
	movl	$1, 72008(%rax)	#, img.50_80->field_mode
	.loc 1 359 0
	movq	img(%rip), %rax	# img, img.51
	movl	$1, 72012(%rax)	#, img.51_81->top_field
	.loc 1 360 0
	movq	img(%rip), %rax	# img, img.52
	movq	img(%rip), %rdx	# img, img.53
	movl	72376(%rdx), %edx	# img.53_83->buf_cycle, D.5655
	addl	%edx, %edx	# D.5655
	movl	%edx, 72376(%rax)	# D.5655, img.52_82->buf_cycle
	.loc 1 361 0
	movq	input(%rip), %rax	# input, input.54
	movq	input(%rip), %rdx	# input, input.55
	movl	36(%rdx), %edx	# input.55_87->num_ref_frames, D.5655
	addl	%edx, %edx	# D.5655
	movl	%edx, 36(%rax)	# D.5655, input.54_86->num_ref_frames
	.loc 1 362 0
	movq	img(%rip), %rax	# img, img.56
	movq	img(%rip), %rdx	# img, img.57
	movl	72000(%rdx), %edx	# img.57_91->num_ref_idx_l0_active, D.5655
	addl	%edx, %edx	# D.5655
	movl	%edx, 72000(%rax)	# D.5655, img.56_90->num_ref_idx_l0_active
	.loc 1 363 0
	movq	img(%rip), %rax	# img, img.58
	movq	img(%rip), %rdx	# img, img.59
	movl	72000(%rdx), %edx	# img.59_95->num_ref_idx_l0_active, D.5655
	addl	$1, %edx	#, D.5655
	movl	%edx, 72000(%rax)	# D.5655, img.58_94->num_ref_idx_l0_active
	.loc 1 364 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp230
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp230,
	call	start_macroblock	#
	.loc 1 367 0
	movq	$rddata_top_field_mb, rdopt(%rip)	#, rdopt
	.loc 1 369 0
	call	encode_one_macroblock	#
	.loc 1 370 0
	movq	rdopt(%rip), %rax	# rdopt, rdopt.60
	movq	(%rax), %rax	# rdopt.60_98->min_rdcost, tmp231
	movq	%rax, -24(%rbp)	# tmp231, FieldRDCost
	.loc 1 373 0
	movq	img(%rip), %rax	# img, img.61
	movl	$1, 72628(%rax)	#, img.61_100->bot_MB
	.loc 1 375 0
	movq	img(%rip), %rax	# img, img.62
	movl	$0, 72012(%rax)	#, img.62_101->top_field
	.loc 1 376 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp232
	addl	$1, %eax	#, D.5655
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.5655,
	call	start_macroblock	#
	.loc 1 377 0
	movq	$rddata_bot_field_mb, rdopt(%rip)	#, rdopt
	.loc 1 378 0
	call	encode_one_macroblock	#
	.loc 1 379 0
	movq	rdopt(%rip), %rax	# rdopt, rdopt.63
	movsd	(%rax), %xmm0	# rdopt.63_103->min_rdcost, D.5656
	movsd	-24(%rbp), %xmm1	# FieldRDCost, tmp234
	addsd	%xmm1, %xmm0	# tmp234, tmp233
	movsd	%xmm0, -24(%rbp)	# tmp233, FieldRDCost
.L33:
	.loc 1 384 0
	movq	img(%rip), %rax	# img, img.64
	movl	$0, 72632(%rax)	#, img.64_106->write_macroblock_frame
	.loc 1 388 0
	movq	input(%rip), %rax	# input, input.65
	movl	2884(%rax), %eax	# input.65_107->MbInterlace, D.5655
	cmpl	$2, %eax	#, D.5655
	jne	.L34	#,
	.loc 1 388 0 is_stmt 0 discriminator 1
	movsd	-24(%rbp), %xmm0	# FieldRDCost, tmp235
	ucomisd	-32(%rbp), %xmm0	# FrameRDCost, tmp235
	jbe	.L34	#,
	.loc 1 390 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.66
	movl	$0, 72008(%rax)	#, img.66_109->field_mode
	.loc 1 391 0
	movq	img(%rip), %rax	# img, img.67
	movq	img(%rip), %rdx	# img, img.68
	movl	72376(%rdx), %edx	# img.68_111->buf_cycle, D.5655
	sarl	%edx	# D.5655
	movl	%edx, 72376(%rax)	# D.5655, img.67_110->buf_cycle
	.loc 1 392 0
	movq	input(%rip), %rax	# input, input.69
	movq	input(%rip), %rdx	# input, input.70
	movl	36(%rdx), %edx	# input.70_115->num_ref_frames, D.5655
	sarl	%edx	# D.5655
	movl	%edx, 36(%rax)	# D.5655, input.69_114->num_ref_frames
	.loc 1 393 0
	movl	$0, MBPairIsField(%rip)	#, MBPairIsField
	.loc 1 394 0
	movq	img(%rip), %rax	# img, img.71
	movq	img(%rip), %rdx	# img, img.72
	movl	72000(%rdx), %edx	# img.72_119->num_ref_idx_l0_active, D.5655
	subl	$1, %edx	#, D.5655
	movl	%edx, 72000(%rax)	# D.5655, img.71_118->num_ref_idx_l0_active
	.loc 1 395 0
	movq	img(%rip), %rax	# img, img.73
	movq	img(%rip), %rdx	# img, img.74
	movl	72000(%rdx), %edx	# img.74_123->num_ref_idx_l0_active, D.5655
	sarl	%edx	# D.5655
	movl	%edx, 72000(%rax)	# D.5655, img.73_122->num_ref_idx_l0_active
	.loc 1 398 0
	movq	img(%rip), %rax	# img, img.75
	movl	$1, 72632(%rax)	#, img.75_126->write_macroblock_frame
	jmp	.L36	#
.L34:
	.loc 1 402 0
	movq	img(%rip), %rax	# img, img.76
	movl	$1, 72008(%rax)	#, img.76_127->field_mode
	.loc 1 403 0
	movl	$1, MBPairIsField(%rip)	#, MBPairIsField
.L36:
	.loc 1 407 0
	movq	img(%rip), %rax	# img, img.77
	movl	$1, 72624(%rax)	#, img.77_128->write_macroblock
	.loc 1 409 0
	movl	MBPairIsField(%rip), %eax	# MBPairIsField, MBPairIsField.78
	testl	%eax, %eax	# MBPairIsField.78
	je	.L37	#,
	.loc 1 410 0
	movq	img(%rip), %rax	# img, img.79
	movl	$1, 72012(%rax)	#, img.79_130->top_field
	jmp	.L38	#
.L37:
	.loc 1 412 0
	movq	img(%rip), %rax	# img, img.80
	movl	$0, 72012(%rax)	#, img.80_131->top_field
.L38:
	.loc 1 415 0
	movq	img(%rip), %rax	# img, img.81
	movl	$0, 72628(%rax)	#, img.81_132->bot_MB
	.loc 1 418 0
	movq	img(%rip), %rax	# img, img.82
	movl	72008(%rax), %edx	# img.82_133->field_mode, D.5655
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp236
	movl	%edx, %esi	# D.5655,
	movl	%eax, %edi	# tmp236,
	call	start_macroblock	#
	.loc 1 420 0
	movq	img(%rip), %rax	# img, img.84
	movl	72008(%rax), %eax	# img.84_135->field_mode, D.5655
	testl	%eax, %eax	# D.5655
	je	.L39	#,
	.loc 1 420 0 is_stmt 0 discriminator 1
	movl	$rddata_top_field_mb, %eax	#, iftmp.83
	jmp	.L40	#
.L39:
	.loc 1 420 0 discriminator 2
	movl	$rddata_top_frame_mb, %eax	#, iftmp.83
.L40:
	.loc 1 420 0 discriminator 3
	movq	%rax, rdopt(%rip)	# iftmp.83, rdopt
	.loc 1 421 0 is_stmt 1 discriminator 3
	movl	$0, %edi	#,
	call	copy_rdopt_data	#
	.loc 1 422 0 discriminator 3
	movl	$1, %edi	#,
	call	write_one_macroblock	#
	.loc 1 423 0 discriminator 3
	addl	$1, -44(%rbp)	#, NumberOfCodedMBs
	.loc 1 424 0 discriminator 3
	leaq	-48(%rbp), %rdx	#, tmp237
	leaq	-52(%rbp), %rax	#, tmp238
	movq	%rdx, %rsi	# tmp237,
	movq	%rax, %rdi	# tmp238,
	call	terminate_macroblock	#
	.loc 1 425 0 discriminator 3
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp239
	movl	%eax, %edi	# tmp239,
	movl	$0, %eax	#,
	call	proceed2nextMacroblock	#
	.loc 1 428 0 discriminator 3
	movq	img(%rip), %rax	# img, img.85
	movl	$1, 72628(%rax)	#, img.85_140->bot_MB
	.loc 1 430 0 discriminator 3
	movq	img(%rip), %rax	# img, img.86
	movl	$0, 72012(%rax)	#, img.86_141->top_field
	.loc 1 431 0 discriminator 3
	movq	img(%rip), %rax	# img, img.87
	movl	72008(%rax), %eax	# img.87_142->field_mode, D.5655
	movl	-40(%rbp), %edx	# CurrentMbAddr, tmp240
	addl	$1, %edx	#, D.5655
	movl	%eax, %esi	# D.5655,
	movl	%edx, %edi	# D.5655,
	call	start_macroblock	#
	.loc 1 433 0 discriminator 3
	movq	img(%rip), %rax	# img, img.89
	movl	72008(%rax), %eax	# img.89_145->field_mode, D.5655
	testl	%eax, %eax	# D.5655
	je	.L41	#,
	.loc 1 433 0 is_stmt 0 discriminator 1
	movl	$rddata_bot_field_mb, %eax	#, iftmp.88
	jmp	.L42	#
.L41:
	.loc 1 433 0 discriminator 2
	movl	$rddata_bot_frame_mb, %eax	#, iftmp.88
.L42:
	.loc 1 433 0 discriminator 3
	movq	%rax, rdopt(%rip)	# iftmp.88, rdopt
	.loc 1 434 0 is_stmt 1 discriminator 3
	movl	$1, %edi	#,
	call	copy_rdopt_data	#
	.loc 1 436 0 discriminator 3
	movl	$0, %edi	#,
	call	write_one_macroblock	#
	.loc 1 437 0 discriminator 3
	addl	$1, -44(%rbp)	#, NumberOfCodedMBs
	.loc 1 438 0 discriminator 3
	leaq	-48(%rbp), %rdx	#, tmp241
	leaq	-52(%rbp), %rax	#, tmp242
	movq	%rdx, %rsi	# tmp241,
	movq	%rax, %rdi	# tmp242,
	call	terminate_macroblock	#
	.loc 1 439 0 discriminator 3
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp243
	movl	%eax, %edi	# tmp243,
	movl	$0, %eax	#,
	call	proceed2nextMacroblock	#
	.loc 1 441 0 discriminator 3
	movl	MBPairIsField(%rip), %eax	# MBPairIsField, MBPairIsField.90
	testl	%eax, %eax	# MBPairIsField.90
	je	.L43	#,
	.loc 1 443 0
	movq	img(%rip), %rax	# img, img.91
	movq	img(%rip), %rdx	# img, img.92
	movl	72376(%rdx), %edx	# img.92_152->buf_cycle, D.5655
	sarl	%edx	# D.5655
	movl	%edx, 72376(%rax)	# D.5655, img.91_151->buf_cycle
	.loc 1 444 0
	movq	input(%rip), %rax	# input, input.93
	movq	input(%rip), %rdx	# input, input.94
	movl	36(%rdx), %edx	# input.94_156->num_ref_frames, D.5655
	sarl	%edx	# D.5655
	movl	%edx, 36(%rax)	# D.5655, input.93_155->num_ref_frames
	.loc 1 445 0
	movq	img(%rip), %rax	# img, img.95
	movq	img(%rip), %rdx	# img, img.96
	movl	72000(%rdx), %edx	# img.96_160->num_ref_idx_l0_active, D.5655
	subl	$1, %edx	#, D.5655
	movl	%edx, 72000(%rax)	# D.5655, img.95_159->num_ref_idx_l0_active
	.loc 1 446 0
	movq	img(%rip), %rax	# img, img.97
	movq	img(%rip), %rdx	# img, img.98
	movl	72000(%rdx), %edx	# img.98_164->num_ref_idx_l0_active, D.5655
	sarl	%edx	# D.5655
	movl	%edx, 72000(%rax)	# D.5655, img.97_163->num_ref_idx_l0_active
.L43:
	.loc 1 448 0
	movq	img(%rip), %rdx	# img, img.99
	movq	img(%rip), %rax	# img, img.100
	movl	$0, 72012(%rax)	#, img.100_168->top_field
	movl	72012(%rax), %eax	# img.100_168->top_field, D.5655
	movl	%eax, 72008(%rdx)	# D.5655, img.99_167->field_mode
	.loc 1 452 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp244
	movl	%eax, %edi	# tmp244,
	call	FmoGetNextMBNr	#
	movl	%eax, -40(%rbp)	# tmp245, CurrentMbAddr
	.loc 1 453 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp246
	movl	%eax, %edi	# tmp246,
	call	FmoGetNextMBNr	#
	movl	%eax, -40(%rbp)	# tmp247, CurrentMbAddr
	.loc 1 455 0
	movl	-40(%rbp), %eax	# CurrentMbAddr, tmp248
	movl	%eax, %edi	# tmp248,
	call	FmoMB2SliceGroup	#
	movl	%eax, %edi	# D.5655,
	call	FmoGetLastCodedMBOfSliceGroup	#
	cmpl	-40(%rbp), %eax	# CurrentMbAddr, D.5655
	jne	.L26	#,
	.loc 1 456 0
	movl	$1, -52(%rbp)	#, end_of_slice
.L26:
	.loc 1 244 0 discriminator 1
	movl	-52(%rbp), %eax	# end_of_slice, end_of_slice.101
	testl	%eax, %eax	# end_of_slice.101
	je	.L44	#,
	.loc 1 468 0
	movl	$0, %eax	#,
	call	terminate_slice	#
	.loc 1 469 0
	movl	-44(%rbp), %eax	# NumberOfCodedMBs, D.5655
	.loc 1 470 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	encode_one_slice, .-encode_one_slice
	.section	.rodata
	.align 8
.LC0:
	.string	"Too many slices per picture, increase MAXLSICESPERPICTURE in global.h."
	.text
	.type	init_slice, @function
init_slice:
.LFB6:
	.loc 1 486 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# start_mb_addr, start_mb_addr
	.loc 1 488 0
	movq	img(%rip), %rax	# img, img.102
	movq	14152(%rax), %rax	# img.102_4->currentPicture, tmp248
	movq	%rax, -48(%rbp)	# tmp248, currPic
	.loc 1 493 0
	movq	img(%rip), %rax	# img, img.103
	movl	-68(%rbp), %edx	# start_mb_addr, tmp249
	movl	%edx, 12(%rax)	# tmp249, img.103_6->current_mb_nr
	.loc 1 497 0
	movq	-48(%rbp), %rax	# currPic, tmp250
	movl	(%rax), %eax	# currPic_5->no_slices, D.5657
	leal	1(%rax), %edx	#, D.5657
	movq	-48(%rbp), %rax	# currPic, tmp251
	movl	%edx, (%rax)	# D.5657, currPic_5->no_slices
	.loc 1 498 0
	movq	-48(%rbp), %rax	# currPic, tmp252
	movl	(%rax), %eax	# currPic_5->no_slices, D.5657
	cmpl	$99, %eax	#, D.5657
	jle	.L48	#,
	.loc 1 499 0
	movl	$-1, %esi	#,
	movl	$.LC0, %edi	#,
	call	error	#
.L48:
	.loc 1 501 0
	movq	-48(%rbp), %rax	# currPic, tmp253
	movl	(%rax), %eax	# currPic_5->no_slices, D.5657
	leal	-1(%rax), %ebx	#, D.5657
	movl	$0, %eax	#,
	call	malloc_slice	#
	movq	-48(%rbp), %rdx	# currPic, tmp254
	movslq	%ebx, %rcx	# D.5657, tmp255
	movq	%rax, 8(%rdx,%rcx,8)	# D.5658, currPic_5->slices
	.loc 1 502 0
	movq	-48(%rbp), %rax	# currPic, tmp256
	movl	(%rax), %eax	# currPic_5->no_slices, D.5657
	leal	-1(%rax), %edx	#, D.5657
	movq	-48(%rbp), %rax	# currPic, tmp257
	movslq	%edx, %rdx	# D.5657, tmp258
	movq	8(%rax,%rdx,8), %rax	# currPic_5->slices, tmp259
	movq	%rax, -40(%rbp)	# tmp259, currSlice
	.loc 1 504 0
	movq	img(%rip), %rax	# img, img.104
	movq	-40(%rbp), %rdx	# currSlice, tmp260
	movq	%rdx, 14160(%rax)	# tmp260, img.104_17->currentSlice
	.loc 1 506 0
	movq	img(%rip), %rax	# img, img.105
	movl	71792(%rax), %eax	# img.105_18->tr, D.5657
	cltd
	shrl	$24, %edx	#, tmp262
	addl	%edx, %eax	# tmp262, tmp263
	movzbl	%al, %eax	# tmp263, tmp264
	subl	%edx, %eax	# tmp262, tmp265
	movl	%eax, %edx	# tmp265, D.5657
	movq	-40(%rbp), %rax	# currSlice, tmp266
	movl	%edx, (%rax)	# D.5657, currSlice_16->picture_id
	.loc 1 507 0
	movq	img(%rip), %rax	# img, img.106
	movl	40(%rax), %edx	# img.106_21->qp, D.5657
	movq	-40(%rbp), %rax	# currSlice, tmp267
	movl	%edx, 4(%rax)	# D.5657, currSlice_16->qp
	.loc 1 508 0
	movq	-40(%rbp), %rax	# currSlice, tmp268
	movl	-68(%rbp), %edx	# start_mb_addr, tmp269
	movl	%edx, 12(%rax)	# tmp269, currSlice_16->start_mb_nr
	.loc 1 509 0
	movq	-40(%rbp), %rax	# currSlice, tmp270
	movq	$dummy_slice_too_big, 120(%rax)	#, currSlice_16->slice_too_big
	.loc 1 511 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L49	#
.L52:
	.loc 1 513 0
	movq	-40(%rbp), %rax	# currSlice, tmp271
	movq	24(%rax), %rdx	# currSlice_16->partArr, D.5659
	movl	-60(%rbp), %eax	# i, tmp272
	cltq
	salq	$3, %rax	#, tmp274
	movq	%rax, %rcx	# tmp273, tmp275
	salq	$4, %rcx	#, tmp275
	subq	%rax, %rcx	# tmp273, D.5660
	movq	%rcx, %rax	# D.5660, D.5660
	addq	%rdx, %rax	# D.5659, tmp276
	movq	%rax, -32(%rbp)	# tmp276, dataPart
	.loc 1 514 0
	movq	input(%rip), %rax	# input, input.107
	movl	2356(%rax), %eax	# input.107_29->symbol_mode, D.5657
	testl	%eax, %eax	# D.5657
	jne	.L50	#,
	.loc 1 515 0
	movq	-32(%rbp), %rax	# dataPart, tmp277
	movq	$writeSyntaxElement_UVLC, 112(%rax)	#, dataPart_28->writeSyntaxElement
	jmp	.L51	#
.L50:
	.loc 1 517 0
	movq	-32(%rbp), %rax	# dataPart, tmp278
	movq	$writeSyntaxElement_CABAC, 112(%rax)	#, dataPart_28->writeSyntaxElement
.L51:
	.loc 1 519 0
	movq	-32(%rbp), %rax	# dataPart, tmp279
	movq	(%rax), %rax	# dataPart_28->bitstream, tmp280
	movq	%rax, -24(%rbp)	# tmp280, currStream
	.loc 1 520 0
	movq	-24(%rbp), %rax	# currStream, tmp281
	movl	$8, 4(%rax)	#, currStream_31->bits_to_go
	.loc 1 521 0
	movq	-24(%rbp), %rax	# currStream, tmp282
	movl	$0, (%rax)	#, currStream_31->byte_pos
	.loc 1 522 0
	movq	-24(%rbp), %rax	# currStream, tmp283
	movb	$0, 8(%rax)	#, currStream_31->byte_buf
	.loc 1 511 0
	addl	$1, -60(%rbp)	#, i
.L49:
	.loc 1 511 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# currSlice, tmp284
	movl	16(%rax), %eax	# currSlice_16->max_part_nr, D.5657
	cmpl	-60(%rbp), %eax	# i, D.5657
	jg	.L52	#,
	.loc 1 528 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.108
	movq	active_pps(%rip), %rdx	# active_pps, active_pps.109
	movl	184(%rdx), %edx	# active_pps.109_34->num_ref_idx_l0_active_minus1, D.5657
	addl	$1, %edx	#, D.5657
	movl	%edx, 72000(%rax)	# D.5657, img.108_33->num_ref_idx_l0_active
	.loc 1 529 0
	movq	img(%rip), %rax	# img, img.110
	movq	active_pps(%rip), %rdx	# active_pps, active_pps.111
	movl	188(%rdx), %edx	# active_pps.111_38->num_ref_idx_l1_active_minus1, D.5657
	addl	$1, %edx	#, D.5657
	movl	%edx, 72004(%rax)	# D.5657, img.110_37->num_ref_idx_l1_active
	.loc 1 532 0
	movq	img(%rip), %rax	# img, img.112
	movl	28(%rax), %eax	# img.112_41->structure, D.5657
	movl	%eax, %edx	# D.5657, D.5661
	movq	img(%rip), %rax	# img, img.113
	movl	24(%rax), %eax	# img.113_44->type, D.5657
	movl	%edx, %esi	# D.5661,
	movl	%eax, %edi	# D.5657,
	call	init_lists	#
	.loc 1 535 0
	movq	img(%rip), %rax	# img, img.114
	movl	listXsize(%rip), %edx	# listXsize, D.5657
	movl	%edx, 72000(%rax)	# D.5657, img.114_46->num_ref_idx_l0_active
	.loc 1 536 0
	movq	img(%rip), %rax	# img, img.115
	movl	listXsize+4(%rip), %edx	# listXsize, D.5657
	movl	%edx, 72004(%rax)	# D.5657, img.115_48->num_ref_idx_l1_active
	.loc 1 540 0
	movq	img(%rip), %rax	# img, img.116
	movl	24(%rax), %eax	# img.116_50->type, D.5657
	testl	%eax, %eax	# D.5657
	je	.L53	#,
	.loc 1 540 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rax	# img, img.117
	movl	24(%rax), %eax	# img.117_52->type, D.5657
	cmpl	$3, %eax	#, D.5657
	jne	.L54	#,
.L53:
	.loc 1 540 0 discriminator 1
	movq	input(%rip), %rax	# input, input.118
	movl	40(%rax), %eax	# input.118_54->P_List0_refs, D.5657
	testl	%eax, %eax	# D.5657
	je	.L54	#,
	.loc 1 542 0 is_stmt 1
	movq	img(%rip), %rcx	# img, img.119
	movq	input(%rip), %rax	# input, input.120
	movl	40(%rax), %edx	# input.120_57->P_List0_refs, D.5657
	movq	img(%rip), %rax	# img, img.121
	movl	72000(%rax), %eax	# img.121_59->num_ref_idx_l0_active, D.5657
	cmpl	%eax, %edx	# D.5657, D.5657
	cmovle	%edx, %eax	# D.5657,, D.5657
	movl	%eax, 72000(%rcx)	# D.5657, img.119_56->num_ref_idx_l0_active
	.loc 1 543 0
	movq	input(%rip), %rax	# input, input.122
	movl	40(%rax), %edx	# input.122_62->P_List0_refs, D.5657
	movl	listXsize(%rip), %eax	# listXsize, D.5657
	cmpl	%eax, %edx	# D.5657, D.5657
	cmovle	%edx, %eax	# D.5657,, D.5657
	movl	%eax, listXsize(%rip)	# D.5657, listXsize
.L54:
	.loc 1 545 0
	movq	img(%rip), %rax	# img, img.123
	movl	24(%rax), %eax	# img.123_66->type, D.5657
	cmpl	$1, %eax	#, D.5657
	jne	.L55	#,
	.loc 1 548 0
	movq	input(%rip), %rax	# input, input.124
	movl	44(%rax), %eax	# input.124_68->B_List0_refs, D.5657
	testl	%eax, %eax	# D.5657
	je	.L56	#,
	.loc 1 550 0
	movq	img(%rip), %rcx	# img, img.125
	movq	input(%rip), %rax	# input, input.126
	movl	44(%rax), %edx	# input.126_71->B_List0_refs, D.5657
	movq	img(%rip), %rax	# img, img.127
	movl	72000(%rax), %eax	# img.127_73->num_ref_idx_l0_active, D.5657
	cmpl	%eax, %edx	# D.5657, D.5657
	cmovle	%edx, %eax	# D.5657,, D.5657
	movl	%eax, 72000(%rcx)	# D.5657, img.125_70->num_ref_idx_l0_active
	.loc 1 551 0
	movq	input(%rip), %rax	# input, input.128
	movl	44(%rax), %edx	# input.128_76->B_List0_refs, D.5657
	movl	listXsize(%rip), %eax	# listXsize, D.5657
	cmpl	%eax, %edx	# D.5657, D.5657
	cmovle	%edx, %eax	# D.5657,, D.5657
	movl	%eax, listXsize(%rip)	# D.5657, listXsize
.L56:
	.loc 1 553 0
	movq	input(%rip), %rax	# input, input.129
	movl	48(%rax), %eax	# input.129_80->B_List1_refs, D.5657
	testl	%eax, %eax	# D.5657
	je	.L55	#,
	.loc 1 556 0
	movq	img(%rip), %rcx	# img, img.130
	movq	input(%rip), %rax	# input, input.131
	movl	48(%rax), %edx	# input.131_83->B_List1_refs, D.5657
	movq	img(%rip), %rax	# img, img.132
	movl	72004(%rax), %eax	# img.132_85->num_ref_idx_l1_active, D.5657
	cmpl	%eax, %edx	# D.5657, D.5657
	cmovle	%edx, %eax	# D.5657,, D.5657
	movl	%eax, 72004(%rcx)	# D.5657, img.130_82->num_ref_idx_l1_active
	.loc 1 557 0
	movq	input(%rip), %rax	# input, input.133
	movl	48(%rax), %edx	# input.133_88->B_List1_refs, D.5657
	movl	listXsize+4(%rip), %eax	# listXsize, D.5657
	cmpl	%eax, %edx	# D.5657, D.5657
	cmovle	%edx, %eax	# D.5657,, D.5657
	movl	%eax, listXsize+4(%rip)	# D.5657, listXsize
.L55:
	.loc 1 563 0
	movq	img(%rip), %rax	# img, img.134
	movl	72496(%rax), %eax	# img.134_92->nal_reference_idc, D.5657
	testl	%eax, %eax	# D.5657
	je	.L57	#,
	.loc 1 563 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.135
	movl	1320(%rax), %eax	# input.135_94->PyramidCoding, D.5657
	testl	%eax, %eax	# D.5657
	je	.L57	#,
	movq	input(%rip), %rax	# input, input.136
	movl	2352(%rax), %eax	# input.136_96->PocMemoryManagement, D.5657
	testl	%eax, %eax	# D.5657
	je	.L57	#,
	movl	dpb+28(%rip), %edx	# dpb.used_size, D.5662
	movl	dpb+24(%rip), %eax	# dpb.size, D.5662
	cmpl	%eax, %edx	# D.5662, D.5662
	jne	.L57	#,
	.loc 1 565 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.137
	movl	72464(%rax), %eax	# img.137_100->frame_num, D.5662
	movl	%eax, %edi	# D.5657,
	call	poc_based_ref_management	#
.L57:
	.loc 1 568 0
	movl	$0, %eax	#,
	call	init_ref_pic_list_reordering	#
	.loc 1 571 0
	movq	img(%rip), %rax	# img, img.138
	movl	24(%rax), %eax	# img.138_103->type, D.5657
	testl	%eax, %eax	# D.5657
	jne	.L58	#,
	.loc 1 571 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.139
	movl	1320(%rax), %eax	# input.139_105->PyramidCoding, D.5657
	testl	%eax, %eax	# D.5657
	je	.L58	#,
	movq	input(%rip), %rax	# input, input.140
	movl	2348(%rax), %eax	# input.140_107->PyramidRefReorder, D.5657
	testl	%eax, %eax	# D.5657
	je	.L58	#,
.LBB2:
	.loc 1 576 0 is_stmt 1
	movq	-40(%rbp), %rax	# currSlice, tmp285
	movq	%rax, %rdi	# tmp285,
	call	alloc_ref_pic_list_reordering_buffer	#
	.loc 1 578 0
	movq	img(%rip), %rax	# img, img.141
	movl	24(%rax), %eax	# img.141_109->type, D.5657
	cmpl	$2, %eax	#, D.5657
	je	.L59	#,
	.loc 1 578 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.142
	movl	24(%rax), %eax	# img.142_111->type, D.5657
	cmpl	$4, %eax	#, D.5657
	je	.L59	#,
	.loc 1 580 0 is_stmt 1
	movl	$0, -56(%rbp)	#, i
	jmp	.L60	#
.L61:
	.loc 1 582 0 discriminator 2
	movq	-40(%rbp), %rax	# currSlice, tmp286
	movq	64(%rax), %rax	# currSlice_16->remapping_of_pic_nums_idc_l0, D.5663
	movl	-56(%rbp), %edx	# i, tmp287
	movslq	%edx, %rdx	# tmp287, D.5660
	salq	$2, %rdx	#, D.5660
	addq	%rdx, %rax	# D.5660, D.5663
	movl	$3, (%rax)	#, *_120
	.loc 1 583 0 discriminator 2
	movq	-40(%rbp), %rax	# currSlice, tmp288
	movq	72(%rax), %rax	# currSlice_16->abs_diff_pic_num_minus1_l0, D.5663
	movl	-56(%rbp), %edx	# i, tmp289
	movslq	%edx, %rdx	# tmp289, D.5660
	salq	$2, %rdx	#, D.5660
	addq	%rdx, %rax	# D.5660, D.5663
	movl	$0, (%rax)	#, *_124
	.loc 1 584 0 discriminator 2
	movq	-40(%rbp), %rax	# currSlice, tmp290
	movq	80(%rax), %rax	# currSlice_16->long_term_pic_idx_l0, D.5663
	movl	-56(%rbp), %edx	# i, tmp291
	movslq	%edx, %rdx	# tmp291, D.5660
	salq	$2, %rdx	#, D.5660
	addq	%rdx, %rax	# D.5660, D.5663
	movl	$0, (%rax)	#, *_128
	.loc 1 580 0 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L60:
	.loc 1 580 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.143
	movl	72000(%rax), %eax	# img.143_114->num_ref_idx_l0_active, D.5657
	addl	$1, %eax	#, D.5657
	cmpl	-56(%rbp), %eax	# i, D.5657
	jg	.L61	#,
	.loc 1 587 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.144
	movl	24(%rax), %eax	# img.144_130->type, D.5657
	cmpl	$1, %eax	#, D.5657
	jne	.L59	#,
	.loc 1 589 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L62	#
.L63:
	.loc 1 591 0 discriminator 2
	movq	-40(%rbp), %rax	# currSlice, tmp292
	movq	96(%rax), %rax	# currSlice_16->remapping_of_pic_nums_idc_l1, D.5663
	movl	-56(%rbp), %edx	# i, tmp293
	movslq	%edx, %rdx	# tmp293, D.5660
	salq	$2, %rdx	#, D.5660
	addq	%rdx, %rax	# D.5660, D.5663
	movl	$3, (%rax)	#, *_139
	.loc 1 592 0 discriminator 2
	movq	-40(%rbp), %rax	# currSlice, tmp294
	movq	104(%rax), %rax	# currSlice_16->abs_diff_pic_num_minus1_l1, D.5663
	movl	-56(%rbp), %edx	# i, tmp295
	movslq	%edx, %rdx	# tmp295, D.5660
	salq	$2, %rdx	#, D.5660
	addq	%rdx, %rax	# D.5660, D.5663
	movl	$0, (%rax)	#, *_143
	.loc 1 593 0 discriminator 2
	movq	-40(%rbp), %rax	# currSlice, tmp296
	movq	112(%rax), %rax	# currSlice_16->long_term_pic_idx_l1, D.5663
	movl	-56(%rbp), %edx	# i, tmp297
	movslq	%edx, %rdx	# tmp297, D.5660
	salq	$2, %rdx	#, D.5660
	addq	%rdx, %rax	# D.5660, D.5663
	movl	$0, (%rax)	#, *_147
	.loc 1 589 0 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L62:
	.loc 1 589 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.145
	movl	72004(%rax), %eax	# img.145_133->num_ref_idx_l1_active, D.5657
	addl	$1, %eax	#, D.5657
	cmpl	-56(%rbp), %eax	# i, D.5657
	jg	.L63	#,
.L59:
	.loc 1 598 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.146
	movl	24(%rax), %eax	# img.146_149->type, D.5657
	cmpl	$2, %eax	#, D.5657
	je	.L58	#,
	.loc 1 598 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.147
	movl	24(%rax), %eax	# img.147_151->type, D.5657
	cmpl	$4, %eax	#, D.5657
	je	.L58	#,
	.loc 1 600 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.148
	movl	72000(%rax), %eax	# img.148_153->num_ref_idx_l0_active, tmp298
	movl	%eax, -52(%rbp)	# tmp298, num_ref
	.loc 1 601 0
	movq	-40(%rbp), %rax	# currSlice, tmp299
	movq	80(%rax), %rdi	# currSlice_16->long_term_pic_idx_l0, D.5663
	movq	-40(%rbp), %rax	# currSlice, tmp300
	movq	72(%rax), %rcx	# currSlice_16->abs_diff_pic_num_minus1_l0, D.5663
	movq	-40(%rbp), %rax	# currSlice, tmp301
	movq	64(%rax), %rdx	# currSlice_16->remapping_of_pic_nums_idc_l0, D.5663
	movl	-52(%rbp), %esi	# num_ref, num_ref.149
	movq	listX(%rip), %rax	# listX, D.5664
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# D.5663,
	movq	%rax, %rdi	# D.5664,
	call	poc_ref_pic_reorder	#
	.loc 1 608 0
	movq	-40(%rbp), %rax	# currSlice, tmp302
	movq	80(%rax), %rdi	# currSlice_16->long_term_pic_idx_l0, D.5663
	movq	-40(%rbp), %rax	# currSlice, tmp303
	movq	72(%rax), %rcx	# currSlice_16->abs_diff_pic_num_minus1_l0, D.5663
	movq	-40(%rbp), %rax	# currSlice, tmp304
	movq	64(%rax), %rdx	# currSlice_16->remapping_of_pic_nums_idc_l0, D.5663
	.loc 1 609 0
	movq	img(%rip), %rax	# img, img.150
	movl	72000(%rax), %eax	# img.150_163->num_ref_idx_l0_active, D.5657
	.loc 1 608 0
	leal	-1(%rax), %esi	#, D.5657
	movq	listX(%rip), %rax	# listX, D.5664
	movq	%rdi, %r9	# D.5663,
	movq	%rcx, %r8	# D.5663,
	movq	%rdx, %rcx	# D.5663,
	movl	%esi, %edx	# D.5657,
	movl	$listXsize, %esi	#,
	movq	%rax, %rdi	# D.5664,
	call	reorder_ref_pic_list	#
	.loc 1 615 0
	movq	img(%rip), %rax	# img, img.151
	movl	24(%rax), %eax	# img.151_167->type, D.5657
	cmpl	$1, %eax	#, D.5657
	jne	.L58	#,
	.loc 1 617 0
	movq	img(%rip), %rax	# img, img.152
	movl	72004(%rax), %eax	# img.152_169->num_ref_idx_l1_active, tmp305
	movl	%eax, -52(%rbp)	# tmp305, num_ref
	.loc 1 618 0
	movq	-40(%rbp), %rax	# currSlice, tmp306
	movq	112(%rax), %rdi	# currSlice_16->long_term_pic_idx_l1, D.5663
	movq	-40(%rbp), %rax	# currSlice, tmp307
	movq	104(%rax), %rcx	# currSlice_16->abs_diff_pic_num_minus1_l1, D.5663
	movq	-40(%rbp), %rax	# currSlice, tmp308
	movq	96(%rax), %rdx	# currSlice_16->remapping_of_pic_nums_idc_l1, D.5663
	movl	-52(%rbp), %esi	# num_ref, num_ref.153
	movq	listX+8(%rip), %rax	# listX, D.5664
	movl	$1, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# D.5663,
	movq	%rax, %rdi	# D.5664,
	call	poc_ref_pic_reorder	#
	.loc 1 625 0
	movq	-40(%rbp), %rax	# currSlice, tmp309
	movq	112(%rax), %rdi	# currSlice_16->long_term_pic_idx_l1, D.5663
	movq	-40(%rbp), %rax	# currSlice, tmp310
	movq	104(%rax), %rcx	# currSlice_16->abs_diff_pic_num_minus1_l1, D.5663
	movq	-40(%rbp), %rax	# currSlice, tmp311
	movq	96(%rax), %rdx	# currSlice_16->remapping_of_pic_nums_idc_l1, D.5663
	.loc 1 626 0
	movq	img(%rip), %rax	# img, img.154
	movl	72004(%rax), %eax	# img.154_179->num_ref_idx_l1_active, D.5657
	.loc 1 625 0
	leal	-1(%rax), %esi	#, D.5657
	movq	listX+8(%rip), %rax	# listX, D.5664
	movq	%rdi, %r9	# D.5663,
	movq	%rcx, %r8	# D.5663,
	movq	%rdx, %rcx	# D.5663,
	movl	%esi, %edx	# D.5657,
	movl	$listXsize+4, %esi	#,
	movq	%rax, %rdi	# D.5664,
	call	reorder_ref_pic_list	#
.L58:
.LBE2:
	.loc 1 636 0
	movq	img(%rip), %rax	# img, img.155
	movl	28(%rax), %eax	# img.155_183->structure, D.5657
	testl	%eax, %eax	# D.5657
	jne	.L64	#,
	.loc 1 637 0
	movl	$0, %eax	#,
	call	init_mbaff_lists	#
.L64:
	.loc 1 639 0
	movq	img(%rip), %rax	# img, img.156
	movl	24(%rax), %eax	# img.156_185->type, D.5657
	cmpl	$2, %eax	#, D.5657
	je	.L65	#,
	.loc 1 639 0 is_stmt 0 discriminator 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.157
	movl	192(%rax), %eax	# active_pps.157_187->weighted_pred_flag, D.5665
	cmpl	$1, %eax	#, D.5665
	je	.L66	#,
	movq	active_pps(%rip), %rax	# active_pps, active_pps.158
	movl	196(%rax), %eax	# active_pps.158_189->weighted_bipred_idc, D.5662
	testl	%eax, %eax	# D.5662
	je	.L65	#,
	movq	img(%rip), %rax	# img, img.159
	movl	24(%rax), %eax	# img.159_191->type, D.5657
	cmpl	$1, %eax	#, D.5657
	jne	.L65	#,
.L66:
	.loc 1 641 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.160
	movl	24(%rax), %eax	# img.160_193->type, D.5657
	testl	%eax, %eax	# D.5657
	je	.L67	#,
	.loc 1 641 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.161
	movl	24(%rax), %eax	# img.161_195->type, D.5657
	cmpl	$3, %eax	#, D.5657
	jne	.L68	#,
.L67:
	.loc 1 643 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.162
	movl	60(%rax), %eax	# input.162_197->GenerateMultiplePPS, D.5657
	testl	%eax, %eax	# D.5657
	je	.L69	#,
	.loc 1 643 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.163
	movl	1296(%rax), %eax	# input.163_199->RDPictureDecision, D.5657
	testl	%eax, %eax	# D.5657
	je	.L69	#,
	.loc 1 645 0 is_stmt 1
	movq	enc_picture(%rip), %rdx	# enc_picture, enc_picture.164
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.165
	cmpq	%rax, %rdx	# enc_frame_picture2.165, enc_picture.164
	jne	.L70	#,
	.loc 1 646 0
	movl	$0, %edi	#,
	call	estimate_weighting_factor_P_slice	#
	.loc 1 645 0
	jmp	.L72	#
.L70:
	.loc 1 648 0
	movl	$1, %edi	#,
	call	estimate_weighting_factor_P_slice	#
	.loc 1 645 0
	jmp	.L72	#
.L69:
	.loc 1 651 0
	movl	$0, %edi	#,
	call	estimate_weighting_factor_P_slice	#
	.loc 1 643 0
	jmp	.L65	#
.L72:
	jmp	.L65	#
.L68:
	.loc 1 655 0
	movl	$0, %eax	#,
	call	estimate_weighting_factor_B_slice	#
.L65:
	.loc 1 658 0
	movl	$0, %eax	#,
	call	set_ref_pic_num	#
	.loc 1 660 0
	movq	img(%rip), %rax	# img, img.166
	movl	24(%rax), %eax	# img.166_203->type, D.5657
	cmpl	$1, %eax	#, D.5657
	jne	.L47	#,
	.loc 1 661 0
	movq	Co_located(%rip), %rax	# Co_located, Co_located.167
	movl	$listX, %esi	#,
	movq	%rax, %rdi	# Co_located.167,
	call	compute_colocated	#
.L47:
	.loc 1 663 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	init_slice, .-init_slice
	.section	.rodata
.LC1:
	.string	"malloc_slice: slice structure"
.LC2:
	.string	"malloc_slice: partArr"
.LC3:
	.string	"malloc_slice: Bitstream"
.LC4:
	.string	"malloc_slice: StreamBuffer"
	.text
	.type	malloc_slice, @function
malloc_slice:
.LFB7:
	.loc 1 675 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 679 0
	movq	img(%rip), %rax	# img, img.168
	movl	52(%rax), %edx	# img.168_3->width, D.5667
	movq	img(%rip), %rax	# img, img.169
	movl	60(%rax), %eax	# img.169_5->height, D.5667
	imull	%edx, %eax	# D.5667, D.5667
	sall	$2, %eax	#, tmp95
	movl	%eax, -36(%rbp)	# tmp95, buffer_size
	.loc 1 683 0
	movl	$152, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -32(%rbp)	# tmp96, slice
	cmpq	$0, -32(%rbp)	#, slice
	jne	.L75	#,
	.loc 1 683 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L75:
	.loc 1 685 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.170
	movl	2356(%rax), %eax	# input.170_10->symbol_mode, D.5667
	cmpl	$1, %eax	#, D.5667
	jne	.L76	#,
	.loc 1 688 0
	call	create_contexts_MotionInfo	#
	movq	-32(%rbp), %rdx	# slice, tmp97
	movq	%rax, 32(%rdx)	# D.5668, slice_9->mot_ctx
	.loc 1 689 0
	call	create_contexts_TextureInfo	#
	movq	-32(%rbp), %rdx	# slice, tmp98
	movq	%rax, 40(%rdx)	# D.5669, slice_9->tex_ctx
.L76:
	.loc 1 692 0
	movq	input(%rip), %rax	# input, input.172
	movl	2364(%rax), %eax	# input.172_14->partition_mode, D.5667
	testl	%eax, %eax	# D.5667
	jne	.L77	#,
	.loc 1 692 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.171
	jmp	.L78	#
.L77:
	.loc 1 692 0 discriminator 2
	movl	$3, %eax	#, iftmp.171
.L78:
	.loc 1 692 0 discriminator 3
	movq	-32(%rbp), %rdx	# slice, tmp99
	movl	%eax, 16(%rdx)	# iftmp.171, slice_9->max_part_nr
	.loc 1 695 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.173
	movq	14152(%rax), %rax	# img.173_18->currentPicture, D.5670
	movl	4(%rax), %eax	# _19->idr_flag, D.5667
	testl	%eax, %eax	# D.5667
	je	.L79	#,
	.loc 1 696 0
	movq	-32(%rbp), %rax	# slice, tmp100
	movl	$1, 16(%rax)	#, slice_9->max_part_nr
.L79:
	.loc 1 698 0
	movq	$assignSE2partition_NoDP, assignSE2partition(%rip)	#, assignSE2partition
	.loc 1 701 0
	movq	img(%rip), %rax	# img, img.174
	movq	14152(%rax), %rax	# img.174_21->currentPicture, D.5670
	movl	4(%rax), %eax	# _22->idr_flag, D.5667
	testl	%eax, %eax	# D.5667
	jne	.L80	#,
	.loc 1 701 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.175
	movl	2364(%rax), %eax	# input.175_24->partition_mode, D.5667
	cmpl	$1, %eax	#, D.5667
	jne	.L80	#,
	.loc 1 702 0 is_stmt 1
	movq	$assignSE2partition_DP, assignSE2partition+8(%rip)	#, assignSE2partition
	jmp	.L81	#
.L80:
	.loc 1 704 0
	movq	$assignSE2partition_NoDP, assignSE2partition+8(%rip)	#, assignSE2partition
.L81:
	.loc 1 708 0
	movq	-32(%rbp), %rax	# slice, tmp101
	movl	$0, 20(%rax)	#, slice_9->num_mb
	.loc 1 710 0
	movq	-32(%rbp), %rax	# slice, tmp102
	movl	16(%rax), %eax	# slice_9->max_part_nr, D.5667
	cltq
	movl	$120, %esi	#,
	movq	%rax, %rdi	# D.5671,
	call	calloc	#
	movq	%rax, %rdx	# tmp103, D.5672
	movq	-32(%rbp), %rax	# slice, tmp104
	movq	%rdx, 24(%rax)	# D.5672, slice_9->partArr
	movq	-32(%rbp), %rax	# slice, tmp105
	movq	24(%rax), %rax	# slice_9->partArr, D.5673
	testq	%rax, %rax	# D.5673
	jne	.L82	#,
	.loc 1 710 0 is_stmt 0 discriminator 1
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L82:
	.loc 1 711 0 is_stmt 1
	movl	$0, -40(%rbp)	#, i
	jmp	.L83	#
.L86:
	.loc 1 713 0
	movq	-32(%rbp), %rax	# slice, tmp106
	movq	24(%rax), %rdx	# slice_9->partArr, D.5673
	movl	-40(%rbp), %eax	# i, tmp107
	cltq
	salq	$3, %rax	#, tmp109
	movq	%rax, %rcx	# tmp108, tmp110
	salq	$4, %rcx	#, tmp110
	subq	%rax, %rcx	# tmp108, D.5671
	movq	%rcx, %rax	# D.5671, D.5671
	addq	%rdx, %rax	# D.5673, tmp111
	movq	%rax, -24(%rbp)	# tmp111, dataPart
	.loc 1 714 0
	movl	$48, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, %rdx	# tmp112, D.5672
	movq	-24(%rbp), %rax	# dataPart, tmp113
	movq	%rdx, (%rax)	# D.5672, dataPart_35->bitstream
	movq	-24(%rbp), %rax	# dataPart, tmp114
	movq	(%rax), %rax	# dataPart_35->bitstream, D.5674
	testq	%rax, %rax	# D.5674
	jne	.L84	#,
	.loc 1 714 0 is_stmt 0 discriminator 1
	movl	$.LC3, %edi	#,
	call	no_mem_exit	#
.L84:
	.loc 1 715 0 is_stmt 1
	movq	-24(%rbp), %rax	# dataPart, tmp115
	movq	(%rax), %rbx	# dataPart_35->bitstream, D.5674
	movl	-36(%rbp), %eax	# buffer_size, tmp116
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.5671,
	call	calloc	#
	movq	%rax, 32(%rbx)	# D.5672, _38->streamBuffer
	movq	32(%rbx), %rax	# _38->streamBuffer, D.5675
	testq	%rax, %rax	# D.5675
	jne	.L85	#,
	.loc 1 715 0 is_stmt 0 discriminator 1
	movl	$.LC4, %edi	#,
	call	no_mem_exit	#
.L85:
	.loc 1 711 0 is_stmt 1
	addl	$1, -40(%rbp)	#, i
.L83:
	.loc 1 711 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# slice, tmp118
	movl	16(%rax), %eax	# slice_9->max_part_nr, D.5667
	cmpl	-40(%rbp), %eax	# i, D.5667
	jg	.L86	#,
	.loc 1 718 0 is_stmt 1
	movq	-32(%rbp), %rax	# slice, D.5676
	.loc 1 719 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	malloc_slice, .-malloc_slice
	.globl	free_slice_list
	.type	free_slice_list, @function
free_slice_list:
.LFB8:
	.loc 1 732 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# currPic, currPic
	.loc 1 735 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L89	#
.L90:
	.loc 1 737 0 discriminator 2
	movq	-24(%rbp), %rax	# currPic, tmp61
	movl	-4(%rbp), %edx	# i, tmp63
	movslq	%edx, %rdx	# tmp63, tmp62
	movq	8(%rax,%rdx,8), %rax	# currPic_3(D)->slices, D.5682
	movq	%rax, %rdi	# D.5682,
	call	free_slice	#
	.loc 1 738 0 discriminator 2
	movq	-24(%rbp), %rax	# currPic, tmp64
	movl	-4(%rbp), %edx	# i, tmp66
	movslq	%edx, %rdx	# tmp66, tmp65
	movq	$0, 8(%rax,%rdx,8)	#, currPic_3(D)->slices
	.loc 1 735 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L89:
	.loc 1 735 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# currPic, tmp67
	movl	(%rax), %eax	# currPic_3(D)->no_slices, D.5681
	cmpl	-4(%rbp), %eax	# i, D.5681
	jg	.L90	#,
	.loc 1 740 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	free_slice_list, .-free_slice_list
	.type	free_slice, @function
free_slice:
.LFB9:
	.loc 1 753 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# slice, slice
	.loc 1 757 0
	cmpq	$0, -24(%rbp)	#, slice
	je	.L91	#,
	.loc 1 759 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L93	#
.L96:
	.loc 1 761 0
	movq	-24(%rbp), %rax	# slice, tmp75
	movq	24(%rax), %rdx	# slice_2(D)->partArr, D.5684
	movl	-12(%rbp), %eax	# i, tmp76
	cltq
	salq	$3, %rax	#, tmp78
	movq	%rax, %rcx	# tmp77, tmp79
	salq	$4, %rcx	#, tmp79
	subq	%rax, %rcx	# tmp77, D.5685
	movq	%rcx, %rax	# D.5685, D.5685
	addq	%rdx, %rax	# D.5684, tmp80
	movq	%rax, -8(%rbp)	# tmp80, dataPart
	.loc 1 762 0
	cmpq	$0, -8(%rbp)	#, dataPart
	je	.L94	#,
	.loc 1 764 0
	movq	-8(%rbp), %rax	# dataPart, tmp81
	movq	(%rax), %rax	# dataPart_8->bitstream, D.5686
	movq	32(%rax), %rax	# _9->streamBuffer, D.5687
	testq	%rax, %rax	# D.5687
	je	.L95	#,
	.loc 1 765 0
	movq	-8(%rbp), %rax	# dataPart, tmp82
	movq	(%rax), %rax	# dataPart_8->bitstream, D.5686
	movq	32(%rax), %rax	# _11->streamBuffer, D.5687
	movq	%rax, %rdi	# D.5687,
	call	free	#
.L95:
	.loc 1 766 0
	movq	-8(%rbp), %rax	# dataPart, tmp83
	movq	(%rax), %rax	# dataPart_8->bitstream, D.5686
	testq	%rax, %rax	# D.5686
	je	.L94	#,
	.loc 1 767 0
	movq	-8(%rbp), %rax	# dataPart, tmp84
	movq	(%rax), %rax	# dataPart_8->bitstream, D.5686
	movq	%rax, %rdi	# D.5686,
	call	free	#
.L94:
	.loc 1 759 0
	addl	$1, -12(%rbp)	#, i
.L93:
	.loc 1 759 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# slice, tmp85
	movl	16(%rax), %eax	# slice_2(D)->max_part_nr, D.5683
	cmpl	-12(%rbp), %eax	# i, D.5683
	jg	.L96	#,
	.loc 1 770 0 is_stmt 1
	movq	-24(%rbp), %rax	# slice, tmp86
	movq	24(%rax), %rax	# slice_2(D)->partArr, D.5684
	testq	%rax, %rax	# D.5684
	je	.L97	#,
	.loc 1 771 0
	movq	-24(%rbp), %rax	# slice, tmp87
	movq	24(%rax), %rax	# slice_2(D)->partArr, D.5684
	movq	%rax, %rdi	# D.5684,
	call	free	#
.L97:
	.loc 1 772 0
	movq	input(%rip), %rax	# input, input.176
	movl	2356(%rax), %eax	# input.176_18->symbol_mode, D.5683
	cmpl	$1, %eax	#, D.5683
	jne	.L98	#,
	.loc 1 774 0
	movq	-24(%rbp), %rax	# slice, tmp88
	movq	32(%rax), %rax	# slice_2(D)->mot_ctx, D.5688
	movq	%rax, %rdi	# D.5688,
	call	delete_contexts_MotionInfo	#
	.loc 1 775 0
	movq	-24(%rbp), %rax	# slice, tmp89
	movq	40(%rax), %rax	# slice_2(D)->tex_ctx, D.5689
	movq	%rax, %rdi	# D.5689,
	call	delete_contexts_TextureInfo	#
.L98:
	.loc 1 778 0
	movq	-24(%rbp), %rax	# slice, tmp90
	movq	%rax, %rdi	# tmp90,
	call	free	#
.L91:
	.loc 1 780 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	free_slice, .-free_slice
	.globl	modify_redundant_pic_cnt
	.type	modify_redundant_pic_cnt, @function
modify_redundant_pic_cnt:
.LFB10:
	.loc 1 790 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# buffer, buffer
	.loc 1 791 0
	movl	rpc_bits_to_go(%rip), %eax	# rpc_bits_to_go, rpc_bits_to_go.177
	subl	$1, %eax	#, D.5690
	movl	$1, %edx	#, tmp70
	movl	%eax, %ecx	# D.5690, tmp74
	sall	%cl, %edx	# tmp74, D.5690
	movl	%edx, %eax	# D.5690, D.5690
	movb	%al, -1(%rbp)	# D.5690, tmp
	.loc 1 792 0
	movl	rpc_bytes_to_go(%rip), %eax	# rpc_bytes_to_go, rpc_bytes_to_go.178
	movslq	%eax, %rdx	# rpc_bytes_to_go.178, D.5691
	movq	-24(%rbp), %rax	# buffer, tmp71
	addq	%rax, %rdx	# tmp71, D.5692
	movl	rpc_bytes_to_go(%rip), %eax	# rpc_bytes_to_go, rpc_bytes_to_go.179
	movslq	%eax, %rcx	# rpc_bytes_to_go.179, D.5691
	movq	-24(%rbp), %rax	# buffer, tmp72
	addq	%rcx, %rax	# D.5691, D.5692
	movzbl	(%rax), %eax	# *_11, D.5693
	orb	-1(%rbp), %al	# tmp, D.5693
	movb	%al, (%rdx)	# D.5693, *_8
	.loc 1 793 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	modify_redundant_pic_cnt, .-modify_redundant_pic_cnt
	.type	set_ref_pic_num, @function
set_ref_pic_num:
.LFB11:
	.loc 1 796 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 801 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L101	#
.L102:
	.loc 1 803 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.180
	movq	listX(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp204
	movslq	%ecx, %rcx	# tmp204, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_11, D.5697
	movl	4(%rdx), %edx	# _12->poc, D.5694
	leal	(%rdx,%rdx), %esi	#, D.5694
	movq	listX(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp205
	movslq	%ecx, %rcx	# tmp205, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_18, D.5697
	movl	(%rdx), %edx	# _19->structure, D.5698
	cmpl	$2, %edx	#, D.5698
	sete	%dl	#, D.5699
	movzbl	%dl, %edx	# D.5699, D.5694
	addl	%esi, %edx	# D.5694, D.5694
	movslq	%edx, %rdx	# D.5694, D.5700
	movl	-8(%rbp), %ecx	# i, tmp207
	movslq	%ecx, %rcx	# tmp207, tmp206
	addq	$2, %rcx	#, tmp208
	movq	%rdx, 8(%rax,%rcx,8)	# D.5700, enc_picture.180_7->ref_pic_num
	.loc 1 804 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.181
	movq	listX(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp209
	movslq	%ecx, %rcx	# tmp209, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_29, D.5697
	movl	16(%rdx), %edx	# _30->frame_poc, D.5694
	addl	%edx, %edx	# D.5694
	movslq	%edx, %rdx	# D.5694, D.5700
	movl	-8(%rbp), %ecx	# i, tmp211
	movslq	%ecx, %rcx	# tmp211, tmp210
	addq	$200, %rcx	#, tmp212
	movq	%rdx, 8(%rax,%rcx,8)	# D.5700, enc_picture.181_25->frm_ref_pic_num
	.loc 1 805 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.182
	movq	listX(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp213
	movslq	%ecx, %rcx	# tmp213, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_38, D.5697
	movl	8(%rdx), %edx	# _39->top_poc, D.5694
	addl	%edx, %edx	# D.5694
	movslq	%edx, %rdx	# D.5694, D.5700
	movl	-8(%rbp), %ecx	# i, tmp215
	movslq	%ecx, %rcx	# tmp215, tmp214
	addq	$398, %rcx	#, tmp216
	movq	%rdx, 8(%rax,%rcx,8)	# D.5700, enc_picture.182_34->top_ref_pic_num
	.loc 1 806 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.183
	movq	listX(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp217
	movslq	%ecx, %rcx	# tmp217, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_47, D.5697
	movl	12(%rdx), %edx	# _48->bottom_poc, D.5694
	addl	%edx, %edx	# D.5694
	addl	$1, %edx	#, D.5694
	movslq	%edx, %rdx	# D.5694, D.5700
	movl	-8(%rbp), %ecx	# i, tmp219
	movslq	%ecx, %rcx	# tmp219, tmp218
	addq	$596, %rcx	#, tmp220
	movq	%rdx, 8(%rax,%rcx,8)	# D.5700, enc_picture.183_43->bottom_ref_pic_num
	.loc 1 801 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L101:
	.loc 1 801 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.5694
	cmpl	-8(%rbp), %eax	# i, D.5694
	jg	.L102	#,
	.loc 1 809 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L103	#
.L104:
	.loc 1 811 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.184
	movq	listX+8(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp221
	movslq	%ecx, %rcx	# tmp221, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_60, D.5697
	movl	4(%rdx), %edx	# _61->poc, D.5694
	leal	(%rdx,%rdx), %esi	#, D.5694
	movq	listX+8(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp222
	movslq	%ecx, %rcx	# tmp222, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_67, D.5697
	movl	(%rdx), %edx	# _68->structure, D.5698
	cmpl	$2, %edx	#, D.5698
	sete	%dl	#, D.5699
	movzbl	%dl, %edx	# D.5699, D.5694
	addl	%esi, %edx	# D.5694, D.5694
	movslq	%edx, %rdx	# D.5694, D.5700
	movl	-8(%rbp), %ecx	# i, tmp224
	movslq	%ecx, %rcx	# tmp224, tmp223
	addq	$35, %rcx	#, tmp225
	movq	%rdx, 8(%rax,%rcx,8)	# D.5700, enc_picture.184_56->ref_pic_num
	.loc 1 812 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.185
	movq	listX+8(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp226
	movslq	%ecx, %rcx	# tmp226, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_78, D.5697
	movl	16(%rdx), %edx	# _79->frame_poc, D.5694
	addl	%edx, %edx	# D.5694
	movslq	%edx, %rdx	# D.5694, D.5700
	movl	-8(%rbp), %ecx	# i, tmp228
	movslq	%ecx, %rcx	# tmp228, tmp227
	addq	$233, %rcx	#, tmp229
	movq	%rdx, 8(%rax,%rcx,8)	# D.5700, enc_picture.185_74->frm_ref_pic_num
	.loc 1 813 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.186
	movq	listX+8(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp230
	movslq	%ecx, %rcx	# tmp230, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_87, D.5697
	movl	8(%rdx), %edx	# _88->top_poc, D.5694
	addl	%edx, %edx	# D.5694
	movslq	%edx, %rdx	# D.5694, D.5700
	movl	-8(%rbp), %ecx	# i, tmp232
	movslq	%ecx, %rcx	# tmp232, tmp231
	addq	$431, %rcx	#, tmp233
	movq	%rdx, 8(%rax,%rcx,8)	# D.5700, enc_picture.186_83->top_ref_pic_num
	.loc 1 814 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.187
	movq	listX+8(%rip), %rdx	# listX, D.5695
	movl	-8(%rbp), %ecx	# i, tmp234
	movslq	%ecx, %rcx	# tmp234, D.5696
	salq	$3, %rcx	#, D.5696
	addq	%rcx, %rdx	# D.5696, D.5695
	movq	(%rdx), %rdx	# *_96, D.5697
	movl	12(%rdx), %edx	# _97->bottom_poc, D.5694
	addl	%edx, %edx	# D.5694
	addl	$1, %edx	#, D.5694
	movslq	%edx, %rdx	# D.5694, D.5700
	movl	-8(%rbp), %ecx	# i, tmp236
	movslq	%ecx, %rcx	# tmp236, tmp235
	addq	$629, %rcx	#, tmp237
	movq	%rdx, 8(%rax,%rcx,8)	# D.5700, enc_picture.187_92->bottom_ref_pic_num
	.loc 1 809 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L103:
	.loc 1 809 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.5694
	cmpl	-8(%rbp), %eax	# i, D.5694
	jg	.L104	#,
	.loc 1 817 0 is_stmt 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.188
	movl	1148(%rax), %eax	# active_sps.188_103->frame_mbs_only_flag, D.5701
	testl	%eax, %eax	# D.5701
	jne	.L100	#,
	.loc 1 819 0
	movq	img(%rip), %rax	# img, img.189
	movl	28(%rax), %eax	# img.189_105->structure, D.5694
	testl	%eax, %eax	# D.5694
	jne	.L100	#,
	.loc 1 820 0
	movl	$2, -4(%rbp)	#, j
	jmp	.L106	#
.L109:
	.loc 1 821 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L107	#
.L108:
	.loc 1 823 0 discriminator 2
	movq	enc_picture(%rip), %rcx	# enc_picture, enc_picture.190
	movl	-4(%rbp), %eax	# j, tmp239
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.5695
	movl	-8(%rbp), %edx	# i, tmp240
	movslq	%edx, %rdx	# tmp240, D.5696
	salq	$3, %rdx	#, D.5696
	addq	%rdx, %rax	# D.5696, D.5695
	movq	(%rax), %rax	# *_114, D.5697
	movl	4(%rax), %eax	# _115->poc, D.5694
	leal	(%rax,%rax), %esi	#, D.5694
	movl	-4(%rbp), %eax	# j, tmp242
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.5695
	movl	-8(%rbp), %edx	# i, tmp243
	movslq	%edx, %rdx	# tmp243, D.5696
	salq	$3, %rdx	#, D.5696
	addq	%rdx, %rax	# D.5696, D.5695
	movq	(%rax), %rax	# *_121, D.5697
	movl	(%rax), %eax	# _122->structure, D.5698
	cmpl	$2, %eax	#, D.5698
	sete	%al	#, D.5699
	movzbl	%al, %eax	# D.5699, D.5694
	addl	%esi, %eax	# D.5694, D.5694
	movslq	%eax, %rsi	# D.5694, D.5700
	movl	-8(%rbp), %eax	# i, tmp245
	movslq	%eax, %rdi	# tmp245, tmp244
	movl	-4(%rbp), %eax	# j, tmp247
	movslq	%eax, %rdx	# tmp247, tmp246
	movq	%rdx, %rax	# tmp246, tmp248
	salq	$5, %rax	#, tmp249
	addq	%rdx, %rax	# tmp246, tmp248
	addq	%rdi, %rax	# tmp244, tmp250
	addq	$2, %rax	#, tmp251
	movq	%rsi, 8(%rcx,%rax,8)	# D.5700, enc_picture.190_110->ref_pic_num
	.loc 1 824 0 discriminator 2
	movq	enc_picture(%rip), %rcx	# enc_picture, enc_picture.191
	movl	-4(%rbp), %eax	# j, tmp253
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.5695
	movl	-8(%rbp), %edx	# i, tmp254
	movslq	%edx, %rdx	# tmp254, D.5696
	salq	$3, %rdx	#, D.5696
	addq	%rdx, %rax	# D.5696, D.5695
	movq	(%rax), %rax	# *_132, D.5697
	movl	16(%rax), %eax	# _133->frame_poc, D.5694
	addl	%eax, %eax	# D.5694
	movslq	%eax, %rsi	# D.5694, D.5700
	movl	-8(%rbp), %eax	# i, tmp256
	movslq	%eax, %rdi	# tmp256, tmp255
	movl	-4(%rbp), %eax	# j, tmp258
	movslq	%eax, %rdx	# tmp258, tmp257
	movq	%rdx, %rax	# tmp257, tmp259
	salq	$5, %rax	#, tmp260
	addq	%rdx, %rax	# tmp257, tmp259
	addq	%rdi, %rax	# tmp255, tmp261
	addq	$200, %rax	#, tmp262
	movq	%rsi, 8(%rcx,%rax,8)	# D.5700, enc_picture.191_128->frm_ref_pic_num
	.loc 1 825 0 discriminator 2
	movq	enc_picture(%rip), %rcx	# enc_picture, enc_picture.192
	movl	-4(%rbp), %eax	# j, tmp264
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.5695
	movl	-8(%rbp), %edx	# i, tmp265
	movslq	%edx, %rdx	# tmp265, D.5696
	salq	$3, %rdx	#, D.5696
	addq	%rdx, %rax	# D.5696, D.5695
	movq	(%rax), %rax	# *_141, D.5697
	movl	8(%rax), %eax	# _142->top_poc, D.5694
	addl	%eax, %eax	# D.5694
	movslq	%eax, %rsi	# D.5694, D.5700
	movl	-8(%rbp), %eax	# i, tmp267
	movslq	%eax, %rdi	# tmp267, tmp266
	movl	-4(%rbp), %eax	# j, tmp269
	movslq	%eax, %rdx	# tmp269, tmp268
	movq	%rdx, %rax	# tmp268, tmp270
	salq	$5, %rax	#, tmp271
	addq	%rdx, %rax	# tmp268, tmp270
	addq	%rdi, %rax	# tmp266, tmp272
	addq	$398, %rax	#, tmp273
	movq	%rsi, 8(%rcx,%rax,8)	# D.5700, enc_picture.192_137->top_ref_pic_num
	.loc 1 826 0 discriminator 2
	movq	enc_picture(%rip), %rcx	# enc_picture, enc_picture.193
	movl	-4(%rbp), %eax	# j, tmp275
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.5695
	movl	-8(%rbp), %edx	# i, tmp276
	movslq	%edx, %rdx	# tmp276, D.5696
	salq	$3, %rdx	#, D.5696
	addq	%rdx, %rax	# D.5696, D.5695
	movq	(%rax), %rax	# *_150, D.5697
	movl	12(%rax), %eax	# _151->bottom_poc, D.5694
	addl	%eax, %eax	# D.5694
	addl	$1, %eax	#, D.5694
	movslq	%eax, %rsi	# D.5694, D.5700
	movl	-8(%rbp), %eax	# i, tmp278
	movslq	%eax, %rdi	# tmp278, tmp277
	movl	-4(%rbp), %eax	# j, tmp280
	movslq	%eax, %rdx	# tmp280, tmp279
	movq	%rdx, %rax	# tmp279, tmp281
	salq	$5, %rax	#, tmp282
	addq	%rdx, %rax	# tmp279, tmp281
	addq	%rdi, %rax	# tmp277, tmp283
	addq	$596, %rax	#, tmp284
	movq	%rsi, 8(%rcx,%rax,8)	# D.5700, enc_picture.193_146->bottom_ref_pic_num
	.loc 1 821 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L107:
	.loc 1 821 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp286
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.5694
	cmpl	-8(%rbp), %eax	# i, D.5694
	jg	.L108	#,
	.loc 1 820 0 is_stmt 1
	addl	$1, -4(%rbp)	#, j
.L106:
	.loc 1 820 0 is_stmt 0 discriminator 1
	cmpl	$5, -4(%rbp)	#, j
	jle	.L109	#,
.L100:
	.loc 1 830 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	set_ref_pic_num, .-set_ref_pic_num
	.globl	poc_ref_pic_reorder
	.type	poc_ref_pic_reorder, @function
poc_ref_pic_reorder:
.LFB12:
	.loc 1 839 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$608, %rsp	#,
	movq	%rdi, -696(%rbp)	# list, list
	movl	%esi, -700(%rbp)	# num_ref_idx_lX_active, num_ref_idx_lX_active
	movq	%rdx, -712(%rbp)	# remapping_of_pic_nums_idc, remapping_of_pic_nums_idc
	movq	%rcx, -720(%rbp)	# abs_diff_pic_num_minus1, abs_diff_pic_num_minus1
	movq	%r8, -728(%rbp)	# long_term_pic_idx, long_term_pic_idx
	movl	%r9d, -704(%rbp)	# weighted_prediction, weighted_prediction
	.loc 1 853 0
	movl	log2_max_frame_num_minus4(%rip), %eax	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.194
	addl	$4, %eax	#, D.5702
	movl	$1, %edx	#, tmp185
	movl	%eax, %ecx	# D.5703, tmp277
	sall	%cl, %edx	# tmp277, tmp186
	movl	%edx, %eax	# tmp186, tmp186
	movl	%eax, -656(%rbp)	# tmp186, MaxFrameNum
	.loc 1 855 0
	movq	img(%rip), %rax	# img, img.195
	movl	28(%rax), %eax	# img.195_24->structure, D.5703
	testl	%eax, %eax	# D.5703
	jne	.L111	#,
	.loc 1 857 0
	movl	-656(%rbp), %eax	# MaxFrameNum, tmp187
	movl	%eax, -660(%rbp)	# tmp187, maxPicNum
	.loc 1 858 0
	movq	img(%rip), %rax	# img, img.196
	movl	72464(%rax), %eax	# img.196_27->frame_num, D.5702
	movl	%eax, -676(%rbp)	# D.5702, currPicNum
	jmp	.L112	#
.L111:
	.loc 1 862 0
	movl	-656(%rbp), %eax	# MaxFrameNum, tmp191
	addl	%eax, %eax	# tmp190
	movl	%eax, -660(%rbp)	# tmp190, maxPicNum
	.loc 1 863 0
	movq	img(%rip), %rax	# img, img.197
	movl	72464(%rax), %eax	# img.197_31->frame_num, D.5702
	addl	%eax, %eax	# D.5702
	addl	$1, %eax	#, D.5702
	movl	%eax, -676(%rbp)	# D.5702, currPicNum
.L112:
	.loc 1 866 0
	movl	-676(%rbp), %eax	# currPicNum, tmp192
	movl	%eax, -672(%rbp)	# tmp192, picNumLXPred
	.loc 1 869 0
	movl	$0, -688(%rbp)	#, i
	jmp	.L113	#
.L114:
	.loc 1 871 0 discriminator 2
	movl	-688(%rbp), %eax	# i, D.5704
	leaq	0(,%rax,8), %rdx	#, D.5704
	movq	-696(%rbp), %rax	# list, tmp193
	addq	%rdx, %rax	# D.5704, D.5705
	movq	(%rax), %rax	# *_42, D.5706
	movl	6364(%rax), %edx	# _43->pic_num, D.5703
	movl	-688(%rbp), %eax	# i, tmp194
	movl	%edx, -640(%rbp,%rax,4)	# D.5703, default_order
	.loc 1 869 0 discriminator 2
	addl	$1, -688(%rbp)	#, i
.L113:
	.loc 1 869 0 is_stmt 0 discriminator 1
	movl	-688(%rbp), %eax	# i, tmp195
	cmpl	-700(%rbp), %eax	# num_ref_idx_lX_active, tmp195
	jb	.L114	#,
	.loc 1 878 0 is_stmt 1
	movl	$0, -688(%rbp)	#, i
	jmp	.L115	#
.L121:
	.loc 1 880 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.5707
	movl	-688(%rbp), %edx	# i, D.5704
	salq	$3, %rdx	#, D.5704
	addq	%rdx, %rax	# D.5704, D.5707
	movq	(%rax), %rax	# *_51, D.5708
	movq	40(%rax), %rax	# _52->frame, D.5706
	movl	6364(%rax), %edx	# _53->pic_num, D.5703
	movl	-688(%rbp), %eax	# i, tmp196
	movl	%edx, -512(%rbp,%rax,4)	# D.5703, re_order
	.loc 1 882 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.5707
	movl	-688(%rbp), %edx	# i, D.5704
	salq	$3, %rdx	#, D.5704
	addq	%rdx, %rax	# D.5704, D.5707
	movq	(%rax), %rax	# *_58, D.5708
	movl	(%rax), %eax	# _59->is_used, D.5703
	cmpl	$3, %eax	#, D.5703
	jne	.L116	#,
	.loc 1 882 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.5707
	movl	-688(%rbp), %edx	# i, D.5704
	salq	$3, %rdx	#, D.5704
	addq	%rdx, %rax	# D.5704, D.5707
	movq	(%rax), %rax	# *_64, D.5708
	movq	40(%rax), %rax	# _65->frame, D.5706
	movl	6380(%rax), %eax	# _66->used_for_reference, D.5703
	testl	%eax, %eax	# D.5703
	je	.L116	#,
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.5707
	movl	-688(%rbp), %edx	# i, D.5704
	salq	$3, %rdx	#, D.5704
	addq	%rdx, %rax	# D.5704, D.5707
	movq	(%rax), %rax	# *_71, D.5708
	movq	40(%rax), %rax	# _72->frame, D.5706
	movl	6376(%rax), %eax	# _73->is_long_term, D.5703
	testl	%eax, %eax	# D.5703
	jne	.L116	#,
	.loc 1 884 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.5707
	movl	-688(%rbp), %edx	# i, D.5704
	salq	$3, %rdx	#, D.5704
	addq	%rdx, %rax	# D.5704, D.5707
	movq	(%rax), %rax	# *_78, D.5708
	movq	40(%rax), %rax	# _79->frame, D.5706
	movl	4(%rax), %edx	# _80->poc, D.5703
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.198
	movl	4(%rax), %eax	# enc_picture.198_82->poc, D.5703
	subl	%eax, %edx	# D.5703, D.5703
	movl	%edx, %eax	# D.5703, tmp197
	sarl	$31, %eax	#, tmp197
	xorl	%eax, %edx	# tmp197, tmp198
	movl	%edx, -652(%rbp)	# tmp198, abs_poc_dist
	subl	%eax, -652(%rbp)	# tmp197, abs_poc_dist
	.loc 1 885 0
	movl	-688(%rbp), %eax	# i, tmp199
	movl	-652(%rbp), %edx	# abs_poc_dist, tmp200
	movl	%edx, -128(%rbp,%rax,4)	# tmp200, poc_diff
	.loc 1 886 0
	cmpl	$0, 16(%rbp)	#, list_no
	jne	.L117	#,
	.loc 1 888 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.199
	movl	4(%rax), %edx	# enc_picture.199_87->poc, D.5703
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.5707
	movl	-688(%rbp), %ecx	# i, D.5704
	salq	$3, %rcx	#, D.5704
	addq	%rcx, %rax	# D.5704, D.5707
	movq	(%rax), %rax	# *_92, D.5708
	movq	40(%rax), %rax	# _93->frame, D.5706
	movl	4(%rax), %eax	# _94->poc, D.5703
	cmpl	%eax, %edx	# D.5703, D.5703
	jge	.L118	#,
	.loc 1 890 0
	movl	-688(%rbp), %eax	# i, tmp201
	movl	$1, -256(%rbp,%rax,4)	#, list_sign
	jmp	.L116	#
.L118:
	.loc 1 894 0
	movl	-688(%rbp), %eax	# i, tmp202
	movl	$-1, -256(%rbp,%rax,4)	#, list_sign
	jmp	.L116	#
.L117:
	.loc 1 899 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.200
	movl	4(%rax), %edx	# enc_picture.200_96->poc, D.5703
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.5707
	movl	-688(%rbp), %ecx	# i, D.5704
	salq	$3, %rcx	#, D.5704
	addq	%rcx, %rax	# D.5704, D.5707
	movq	(%rax), %rax	# *_101, D.5708
	movq	40(%rax), %rax	# _102->frame, D.5706
	movl	4(%rax), %eax	# _103->poc, D.5703
	cmpl	%eax, %edx	# D.5703, D.5703
	jle	.L120	#,
	.loc 1 901 0
	movl	-688(%rbp), %eax	# i, tmp203
	movl	$1, -256(%rbp,%rax,4)	#, list_sign
	jmp	.L116	#
.L120:
	.loc 1 905 0
	movl	-688(%rbp), %eax	# i, tmp204
	movl	$-1, -256(%rbp,%rax,4)	#, list_sign
.L116:
	.loc 1 878 0
	addl	$1, -688(%rbp)	#, i
.L115:
	.loc 1 878 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.5702
	cmpl	-688(%rbp), %eax	# i, D.5702
	ja	.L121	#,
	.loc 1 913 0 is_stmt 1
	movl	$0, -688(%rbp)	#, i
	jmp	.L122	#
.L127:
	.loc 1 915 0
	movl	-688(%rbp), %eax	# i, tmp208
	addl	$1, %eax	#, tmp207
	movl	%eax, -684(%rbp)	# tmp207, j
	jmp	.L123	#
.L126:
	.loc 1 918 0
	movl	-688(%rbp), %eax	# i, tmp209
	movl	-128(%rbp,%rax,4), %edx	# poc_diff, D.5703
	movl	-684(%rbp), %eax	# j, tmp210
	movl	-128(%rbp,%rax,4), %eax	# poc_diff, D.5703
	cmpl	%eax, %edx	# D.5703, D.5703
	jg	.L124	#,
	.loc 1 918 0 is_stmt 0 discriminator 1
	movl	-688(%rbp), %eax	# i, tmp211
	movl	-128(%rbp,%rax,4), %edx	# poc_diff, D.5703
	movl	-684(%rbp), %eax	# j, tmp212
	movl	-128(%rbp,%rax,4), %eax	# poc_diff, D.5703
	cmpl	%eax, %edx	# D.5703, D.5703
	jne	.L125	#,
	movl	-684(%rbp), %eax	# j, tmp213
	movl	-256(%rbp,%rax,4), %edx	# list_sign, D.5703
	movl	-688(%rbp), %eax	# i, tmp214
	movl	-256(%rbp,%rax,4), %eax	# list_sign, D.5703
	cmpl	%eax, %edx	# D.5703, D.5703
	jle	.L125	#,
.L124:
	.loc 1 921 0 is_stmt 1
	movl	-688(%rbp), %eax	# i, tmp215
	movl	-128(%rbp,%rax,4), %eax	# poc_diff, tmp216
	movl	%eax, -648(%rbp)	# tmp216, tmp_value
	.loc 1 922 0
	movl	-684(%rbp), %eax	# j, tmp217
	movl	-128(%rbp,%rax,4), %edx	# poc_diff, D.5703
	movl	-688(%rbp), %eax	# i, tmp218
	movl	%edx, -128(%rbp,%rax,4)	# D.5703, poc_diff
	.loc 1 923 0
	movl	-684(%rbp), %eax	# j, tmp219
	movl	-648(%rbp), %edx	# tmp_value, tmp220
	movl	%edx, -128(%rbp,%rax,4)	# tmp220, poc_diff
	.loc 1 924 0
	movl	-688(%rbp), %eax	# i, tmp221
	movl	-512(%rbp,%rax,4), %eax	# re_order, tmp222
	movl	%eax, -648(%rbp)	# tmp222, tmp_value
	.loc 1 925 0
	movl	-684(%rbp), %eax	# j, tmp223
	movl	-512(%rbp,%rax,4), %edx	# re_order, D.5703
	movl	-688(%rbp), %eax	# i, tmp224
	movl	%edx, -512(%rbp,%rax,4)	# D.5703, re_order
	.loc 1 926 0
	movl	-684(%rbp), %eax	# j, tmp225
	movl	-648(%rbp), %edx	# tmp_value, tmp226
	movl	%edx, -512(%rbp,%rax,4)	# tmp226, re_order
	.loc 1 927 0
	movl	-688(%rbp), %eax	# i, tmp227
	movl	-256(%rbp,%rax,4), %eax	# list_sign, tmp228
	movl	%eax, -648(%rbp)	# tmp228, tmp_value
	.loc 1 928 0
	movl	-684(%rbp), %eax	# j, tmp229
	movl	-256(%rbp,%rax,4), %edx	# list_sign, D.5703
	movl	-688(%rbp), %eax	# i, tmp230
	movl	%edx, -256(%rbp,%rax,4)	# D.5703, list_sign
	.loc 1 929 0
	movl	-684(%rbp), %eax	# j, tmp231
	movl	-648(%rbp), %edx	# tmp_value, tmp232
	movl	%edx, -256(%rbp,%rax,4)	# tmp232, list_sign
.L125:
	.loc 1 915 0
	addl	$1, -684(%rbp)	#, j
.L123:
	.loc 1 915 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.5702
	cmpl	-684(%rbp), %eax	# j, D.5702
	ja	.L126	#,
	.loc 1 913 0 is_stmt 1
	addl	$1, -688(%rbp)	#, i
.L122:
	.loc 1 913 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.5702
	subl	$1, %eax	#, D.5702
	cmpl	-688(%rbp), %eax	# i, D.5702
	ja	.L127	#,
	.loc 1 936 0 is_stmt 1
	movl	$1, -664(%rbp)	#, no_reorder
	.loc 1 937 0
	movl	$0, -688(%rbp)	#, i
	jmp	.L128	#
.L130:
	.loc 1 939 0
	movl	-688(%rbp), %eax	# i, tmp233
	movl	-640(%rbp,%rax,4), %edx	# default_order, D.5703
	movl	-688(%rbp), %eax	# i, tmp234
	movl	-512(%rbp,%rax,4), %eax	# re_order, D.5703
	cmpl	%eax, %edx	# D.5703, D.5703
	je	.L129	#,
	.loc 1 941 0
	movl	$0, -664(%rbp)	#, no_reorder
.L129:
	.loc 1 937 0
	addl	$1, -688(%rbp)	#, i
.L128:
	.loc 1 937 0 is_stmt 0 discriminator 1
	movl	-688(%rbp), %eax	# i, tmp235
	cmpl	-700(%rbp), %eax	# num_ref_idx_lX_active, tmp235
	jb	.L130	#,
	.loc 1 946 0 is_stmt 1
	cmpl	$0, -664(%rbp)	#, no_reorder
	jne	.L110	#,
	.loc 1 948 0
	movl	$0, -688(%rbp)	#, i
	jmp	.L132	#
.L147:
	.loc 1 950 0
	movl	-688(%rbp), %eax	# i, tmp236
	movl	-512(%rbp,%rax,4), %eax	# re_order, D.5703
	subl	-672(%rbp), %eax	# picNumLXPred, tmp238
	movl	%eax, -644(%rbp)	# tmp238, diff
	.loc 1 951 0
	cmpl	$0, -644(%rbp)	#, diff
	jg	.L133	#,
	.loc 1 953 0
	movl	-688(%rbp), %eax	# i, D.5704
	leaq	0(,%rax,4), %rdx	#, D.5704
	movq	-712(%rbp), %rax	# remapping_of_pic_nums_idc, tmp239
	addq	%rdx, %rax	# D.5704, D.5709
	movl	$0, (%rax)	#, *_137
	.loc 1 954 0
	movl	-688(%rbp), %eax	# i, D.5704
	leaq	0(,%rax,4), %rdx	#, D.5704
	movq	-720(%rbp), %rax	# abs_diff_pic_num_minus1, tmp240
	leaq	(%rdx,%rax), %rcx	#, D.5709
	movl	-644(%rbp), %eax	# diff, tmp242
	cltd
	movl	%edx, %eax	# tmp241, D.5703
	xorl	-644(%rbp), %eax	# diff, D.5703
	subl	%edx, %eax	# tmp241, D.5703
	subl	$1, %eax	#, D.5703
	movl	%eax, (%rcx)	# D.5703, *_141
	.loc 1 955 0
	movl	-688(%rbp), %eax	# i, D.5704
	leaq	0(,%rax,4), %rdx	#, D.5704
	movq	-720(%rbp), %rax	# abs_diff_pic_num_minus1, tmp243
	addq	%rdx, %rax	# D.5704, D.5709
	movl	(%rax), %eax	# *_146, D.5703
	testl	%eax, %eax	# D.5703
	jns	.L135	#,
	.loc 1 956 0
	movl	-688(%rbp), %eax	# i, D.5704
	leaq	0(,%rax,4), %rdx	#, D.5704
	movq	-720(%rbp), %rax	# abs_diff_pic_num_minus1, tmp244
	addq	%rdx, %rax	# D.5704, D.5709
	movl	-660(%rbp), %edx	# maxPicNum, tmp245
	subl	$1, %edx	#, D.5703
	movl	%edx, (%rax)	# D.5703, *_150
	jmp	.L135	#
.L133:
	.loc 1 960 0
	movl	-688(%rbp), %eax	# i, D.5704
	leaq	0(,%rax,4), %rdx	#, D.5704
	movq	-712(%rbp), %rax	# remapping_of_pic_nums_idc, tmp246
	addq	%rdx, %rax	# D.5704, D.5709
	movl	$1, (%rax)	#, *_154
	.loc 1 961 0
	movl	-688(%rbp), %eax	# i, D.5704
	leaq	0(,%rax,4), %rdx	#, D.5704
	movq	-720(%rbp), %rax	# abs_diff_pic_num_minus1, tmp247
	leaq	(%rdx,%rax), %rcx	#, D.5709
	movl	-644(%rbp), %eax	# diff, tmp249
	cltd
	movl	%edx, %eax	# tmp248, D.5703
	xorl	-644(%rbp), %eax	# diff, D.5703
	subl	%edx, %eax	# tmp248, D.5703
	subl	$1, %eax	#, D.5703
	movl	%eax, (%rcx)	# D.5703, *_157
.L135:
	.loc 1 963 0
	movl	-688(%rbp), %eax	# i, tmp250
	movl	-512(%rbp,%rax,4), %eax	# re_order, tmp251
	movl	%eax, -672(%rbp)	# tmp251, picNumLXPred
	.loc 1 965 0
	movl	-688(%rbp), %eax	# i, tmp252
	movl	-512(%rbp,%rax,4), %edx	# re_order, D.5703
	movl	-688(%rbp), %eax	# i, tmp253
	movl	%edx, -384(%rbp,%rax,4)	# D.5703, tmp_reorder
	.loc 1 967 0
	movl	-688(%rbp), %eax	# i, tmp254
	movl	%eax, -680(%rbp)	# tmp254, k
	.loc 1 968 0
	movl	-688(%rbp), %eax	# i, tmp255
	movl	%eax, -684(%rbp)	# tmp255, j
	jmp	.L136	#
.L138:
	.loc 1 970 0
	movl	-684(%rbp), %eax	# j, tmp256
	movl	-640(%rbp,%rax,4), %edx	# default_order, D.5703
	movl	-688(%rbp), %eax	# i, tmp257
	movl	-512(%rbp,%rax,4), %eax	# re_order, D.5703
	cmpl	%eax, %edx	# D.5703, D.5703
	je	.L137	#,
	.loc 1 972 0
	addl	$1, -680(%rbp)	#, k
	.loc 1 973 0
	movl	-684(%rbp), %eax	# j, tmp258
	movl	-640(%rbp,%rax,4), %edx	# default_order, D.5703
	movl	-680(%rbp), %eax	# k, tmp259
	movl	%edx, -384(%rbp,%rax,4)	# D.5703, tmp_reorder
.L137:
	.loc 1 968 0
	addl	$1, -684(%rbp)	#, j
.L136:
	.loc 1 968 0 is_stmt 0 discriminator 1
	movl	-684(%rbp), %eax	# j, tmp260
	cmpl	-700(%rbp), %eax	# num_ref_idx_lX_active, tmp260
	jb	.L138	#,
	.loc 1 976 0 is_stmt 1
	movl	$1, -668(%rbp)	#, reorder_stop
	.loc 1 977 0
	movl	-688(%rbp), %eax	# i, tmp264
	addl	$1, %eax	#, tmp263
	movl	%eax, -684(%rbp)	# tmp263, j
	jmp	.L139	#
.L142:
	.loc 1 979 0
	movl	-684(%rbp), %eax	# j, tmp265
	movl	-384(%rbp,%rax,4), %edx	# tmp_reorder, D.5703
	movl	-684(%rbp), %eax	# j, tmp266
	movl	-512(%rbp,%rax,4), %eax	# re_order, D.5703
	cmpl	%eax, %edx	# D.5703, D.5703
	je	.L140	#,
	.loc 1 981 0
	movl	$0, -668(%rbp)	#, reorder_stop
	.loc 1 982 0
	jmp	.L141	#
.L140:
	.loc 1 977 0
	addl	$1, -684(%rbp)	#, j
.L139:
	.loc 1 977 0 is_stmt 0 discriminator 1
	movl	-684(%rbp), %eax	# j, tmp267
	cmpl	-700(%rbp), %eax	# num_ref_idx_lX_active, tmp267
	jb	.L142	#,
.L141:
	.loc 1 986 0 is_stmt 1
	cmpl	$1, -668(%rbp)	#, reorder_stop
	jne	.L143	#,
	.loc 1 988 0
	addl	$1, -688(%rbp)	#, i
	.loc 1 989 0
	jmp	.L144	#
.L143:
	.loc 1 993 0
	movl	$0, -684(%rbp)	#, j
	jmp	.L145	#
.L146:
	.loc 1 995 0 discriminator 2
	movl	-684(%rbp), %eax	# j, tmp268
	movl	-384(%rbp,%rax,4), %edx	# tmp_reorder, D.5703
	movl	-684(%rbp), %eax	# j, tmp269
	movl	%edx, -640(%rbp,%rax,4)	# D.5703, default_order
	.loc 1 993 0 discriminator 2
	addl	$1, -684(%rbp)	#, j
.L145:
	.loc 1 993 0 is_stmt 0 discriminator 1
	movl	-684(%rbp), %eax	# j, tmp270
	cmpl	-700(%rbp), %eax	# num_ref_idx_lX_active, tmp270
	jb	.L146	#,
	.loc 1 948 0 is_stmt 1
	addl	$1, -688(%rbp)	#, i
.L132:
	.loc 1 948 0 is_stmt 0 discriminator 1
	movl	-688(%rbp), %eax	# i, tmp271
	cmpl	-700(%rbp), %eax	# num_ref_idx_lX_active, tmp271
	jb	.L147	#,
.L144:
	.loc 1 999 0 is_stmt 1
	movl	-688(%rbp), %eax	# i, D.5704
	leaq	0(,%rax,4), %rdx	#, D.5704
	movq	-712(%rbp), %rax	# remapping_of_pic_nums_idc, tmp272
	addq	%rdx, %rax	# D.5704, D.5709
	movl	$3, (%rax)	#, *_182
	.loc 1 1001 0
	movl	$0, -684(%rbp)	#, j
	jmp	.L148	#
.L149:
	.loc 1 1003 0 discriminator 2
	movl	-684(%rbp), %eax	# j, tmp273
	movl	-384(%rbp,%rax,4), %edx	# tmp_reorder, D.5703
	movl	-684(%rbp), %eax	# j, tmp274
	movl	%edx, -640(%rbp,%rax,4)	# D.5703, default_order
	.loc 1 1001 0 discriminator 2
	addl	$1, -684(%rbp)	#, j
.L148:
	.loc 1 1001 0 is_stmt 0 discriminator 1
	movl	-684(%rbp), %eax	# j, tmp275
	cmpl	-700(%rbp), %eax	# num_ref_idx_lX_active, tmp275
	jb	.L149	#,
	.loc 1 1006 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, list_no
	jne	.L150	#,
	.loc 1 1008 0
	movq	img(%rip), %rax	# img, img.201
	movq	14160(%rax), %rax	# img.201_186->currentSlice, D.5710
	movl	$1, 56(%rax)	#, _187->ref_pic_list_reordering_flag_l0
	jmp	.L110	#
.L150:
	.loc 1 1012 0
	movq	img(%rip), %rax	# img, img.202
	movq	14160(%rax), %rax	# img.202_188->currentSlice, D.5710
	movl	$1, 88(%rax)	#, _189->ref_pic_list_reordering_flag_l1
.L110:
	.loc 1 1015 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	poc_ref_pic_reorder, .-poc_ref_pic_reorder
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "mbuffer.h"
	.file 7 "image.h"
	.file 8 "elements.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3582
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF741
	.byte	0x1
	.long	.LASF742
	.long	.LASF743
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
	.byte	0x61
	.long	0x6b4
	.uleb128 0x9
	.long	.LASF127
	.sleb128 0
	.uleb128 0x9
	.long	.LASF128
	.sleb128 1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x70
	.long	0x6cf
	.uleb128 0x9
	.long	.LASF129
	.sleb128 0
	.uleb128 0x9
	.long	.LASF130
	.sleb128 1
	.uleb128 0x9
	.long	.LASF131
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xb3
	.long	0x6e4
	.uleb128 0x9
	.long	.LASF132
	.sleb128 0
	.uleb128 0x9
	.long	.LASF133
	.sleb128 1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.long	0x6ff
	.uleb128 0x9
	.long	.LASF134
	.sleb128 0
	.uleb128 0x9
	.long	.LASF135
	.sleb128 1
	.uleb128 0x9
	.long	.LASF136
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF137
	.byte	0x5
	.byte	0xbe
	.long	0x6e4
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x731
	.uleb128 0x9
	.long	.LASF138
	.sleb128 0
	.uleb128 0x9
	.long	.LASF139
	.sleb128 1
	.uleb128 0x9
	.long	.LASF140
	.sleb128 2
	.uleb128 0x9
	.long	.LASF141
	.sleb128 3
	.uleb128 0x9
	.long	.LASF142
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x821
	.uleb128 0xb
	.long	.LASF143
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF144
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF145
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF146
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF147
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF148
	.byte	0x5
	.byte	0xd5
	.long	0x4ac
	.byte	0x18
	.uleb128 0xb
	.long	.LASF149
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF150
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF151
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF152
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF153
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF154
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF155
	.byte	0x5
	.byte	0xdd
	.long	0x4ac
	.byte	0x40
	.uleb128 0xb
	.long	.LASF156
	.byte	0x5
	.byte	0xde
	.long	0x83
	.byte	0x48
	.uleb128 0xe
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF157
	.byte	0x5
	.byte	0xe2
	.long	0x731
	.uleb128 0x7
	.long	.LASF158
	.byte	0x5
	.byte	0xe4
	.long	0x837
	.uleb128 0x6
	.byte	0x8
	.long	0x821
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x86a
	.uleb128 0xb
	.long	.LASF159
	.byte	0x5
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xe
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xb
	.long	.LASF160
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF161
	.byte	0x5
	.byte	0xee
	.long	0x83d
	.uleb128 0xf
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x8e1
	.uleb128 0x10
	.long	.LASF162
	.byte	0x5
	.value	0x104
	.long	0x8e1
	.byte	0
	.uleb128 0x11
	.long	.LASF163
	.byte	0x5
	.value	0x105
	.long	0x8f7
	.value	0x210
	.uleb128 0x11
	.long	.LASF164
	.byte	0x5
	.value	0x106
	.long	0x90d
	.value	0x330
	.uleb128 0x11
	.long	.LASF165
	.byte	0x5
	.value	0x107
	.long	0x923
	.value	0x470
	.uleb128 0x11
	.long	.LASF166
	.byte	0x5
	.value	0x108
	.long	0x939
	.value	0x530
	.uleb128 0x11
	.long	.LASF167
	.byte	0x5
	.value	0x109
	.long	0x939
	.value	0x570
	.uleb128 0x11
	.long	.LASF168
	.byte	0x5
	.value	0x10a
	.long	0x949
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0x8f7
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0x90d
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0x923
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0x939
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0x949
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0x959
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF169
	.byte	0x5
	.value	0x10c
	.long	0x875
	.uleb128 0xf
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x9f9
	.uleb128 0x10
	.long	.LASF170
	.byte	0x5
	.value	0x11b
	.long	0x9f9
	.byte	0
	.uleb128 0x10
	.long	.LASF171
	.byte	0x5
	.value	0x11c
	.long	0x939
	.byte	0x20
	.uleb128 0x10
	.long	.LASF172
	.byte	0x5
	.value	0x11d
	.long	0xa09
	.byte	0x60
	.uleb128 0x11
	.long	.LASF173
	.byte	0x5
	.value	0x11e
	.long	0xa1f
	.value	0x120
	.uleb128 0x11
	.long	.LASF174
	.byte	0x5
	.value	0x11f
	.long	0xa35
	.value	0x3a0
	.uleb128 0x11
	.long	.LASF175
	.byte	0x5
	.value	0x120
	.long	0xa35
	.value	0xd00
	.uleb128 0x11
	.long	.LASF176
	.byte	0x5
	.value	0x121
	.long	0xa4b
	.value	0x1660
	.uleb128 0x11
	.long	.LASF177
	.byte	0x5
	.value	0x122
	.long	0xa4b
	.value	0x1980
	.uleb128 0x11
	.long	.LASF178
	.byte	0x5
	.value	0x123
	.long	0xa35
	.value	0x1ca0
	.uleb128 0x11
	.long	.LASF179
	.byte	0x5
	.value	0x124
	.long	0xa35
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0xa09
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0xa1f
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0xa35
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0xa4b
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x86a
	.long	0xa61
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF180
	.byte	0x5
	.value	0x125
	.long	0x965
	.uleb128 0x13
	.long	.LASF185
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0xaa2
	.uleb128 0x10
	.long	.LASF181
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF182
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF183
	.byte	0x5
	.value	0x138
	.long	0xaa2
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa6d
	.uleb128 0x12
	.long	.LASF184
	.byte	0x5
	.value	0x139
	.long	0xa6d
	.uleb128 0x13
	.long	.LASF186
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0xb10
	.uleb128 0x10
	.long	.LASF187
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF188
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF189
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0x10
	.long	.LASF190
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.long	.LASF191
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF183
	.byte	0x5
	.value	0x143
	.long	0xb10
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xab4
	.uleb128 0x12
	.long	.LASF192
	.byte	0x5
	.value	0x144
	.long	0xab4
	.uleb128 0x13
	.long	.LASF193
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0xbb0
	.uleb128 0x10
	.long	.LASF194
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF195
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF196
	.byte	0x5
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x14
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x14
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF197
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0x10
	.long	.LASF198
	.byte	0x5
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x14
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF199
	.byte	0x5
	.value	0x158
	.long	0xbca
	.byte	0x20
	.uleb128 0x10
	.long	.LASF200
	.byte	0x5
	.value	0x15a
	.long	0xbe6
	.byte	0x28
	.byte	0
	.uleb128 0x15
	.long	0xbca
	.uleb128 0x16
	.long	0x34
	.uleb128 0x16
	.long	0x34
	.uleb128 0x16
	.long	0x83
	.uleb128 0x16
	.long	0x83
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbb0
	.uleb128 0x15
	.long	0xbe0
	.uleb128 0x16
	.long	0xbe0
	.uleb128 0x16
	.long	0x82c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb22
	.uleb128 0x6
	.byte	0x8
	.long	0xbd0
	.uleb128 0x12
	.long	.LASF201
	.byte	0x5
	.value	0x15c
	.long	0xb22
	.uleb128 0x17
	.long	.LASF202
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0xe72
	.uleb128 0x10
	.long	.LASF203
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF204
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF205
	.byte	0x5
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x14
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.long	.LASF206
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF207
	.byte	0x5
	.value	0x166
	.long	0x48c
	.byte	0x14
	.uleb128 0x10
	.long	.LASF208
	.byte	0x5
	.value	0x168
	.long	0xe72
	.byte	0x38
	.uleb128 0x10
	.long	.LASF209
	.byte	0x5
	.value	0x169
	.long	0xe72
	.byte	0x40
	.uleb128 0x10
	.long	.LASF210
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x14
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0xe78
	.byte	0x4c
	.uleb128 0x11
	.long	.LASF211
	.byte	0x5
	.value	0x16d
	.long	0xe9a
	.value	0x14c
	.uleb128 0x11
	.long	.LASF212
	.byte	0x5
	.value	0x16e
	.long	0xe9a
	.value	0x18c
	.uleb128 0x18
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0x11
	.long	.LASF213
	.byte	0x5
	.value	0x170
	.long	0x694
	.value	0x1d0
	.uleb128 0x11
	.long	.LASF214
	.byte	0x5
	.value	0x171
	.long	0xeaa
	.value	0x1d8
	.uleb128 0x11
	.long	.LASF215
	.byte	0x5
	.value	0x172
	.long	0xeaa
	.value	0x1e8
	.uleb128 0x11
	.long	.LASF216
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0x11
	.long	.LASF217
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0x11
	.long	.LASF218
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0x11
	.long	.LASF219
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0x11
	.long	.LASF220
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0x11
	.long	.LASF221
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0x11
	.long	.LASF222
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0x11
	.long	.LASF223
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0x11
	.long	.LASF224
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0x11
	.long	.LASF225
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0x11
	.long	.LASF226
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0x11
	.long	.LASF227
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0x11
	.long	.LASF228
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0x11
	.long	.LASF229
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0x11
	.long	.LASF230
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0x11
	.long	.LASF231
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0x11
	.long	.LASF232
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0x11
	.long	.LASF233
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0x11
	.long	.LASF234
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0x11
	.long	.LASF235
	.byte	0x5
	.value	0x18a
	.long	0xeba
	.value	0x248
	.uleb128 0x11
	.long	.LASF236
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0x11
	.long	.LASF237
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0x11
	.long	.LASF238
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0x11
	.long	.LASF239
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0x11
	.long	.LASF240
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0x11
	.long	.LASF241
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0x11
	.long	.LASF242
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0x11
	.long	.LASF243
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0x11
	.long	.LASF244
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbf8
	.uleb128 0x4
	.long	0x34
	.long	0xe9a
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
	.long	0xeaa
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xeba
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF245
	.uleb128 0x12
	.long	.LASF246
	.byte	0x5
	.value	0x196
	.long	0xbf8
	.uleb128 0x19
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0xf66
	.uleb128 0x10
	.long	.LASF247
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF248
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF249
	.byte	0x5
	.value	0x19f
	.long	0xa2
	.byte	0x8
	.uleb128 0x10
	.long	.LASF250
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.long	.LASF251
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF252
	.byte	0x5
	.value	0x1a2
	.long	0xa2
	.byte	0x14
	.uleb128 0x10
	.long	.LASF253
	.byte	0x5
	.value	0x1a4
	.long	0xa2
	.byte	0x15
	.uleb128 0x10
	.long	.LASF254
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0x10
	.long	.LASF255
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF256
	.byte	0x5
	.value	0x1a8
	.long	0x4ac
	.byte	0x20
	.uleb128 0x10
	.long	.LASF257
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.long	.LASF258
	.byte	0x5
	.value	0x1ab
	.long	0xecd
	.uleb128 0x13
	.long	.LASF259
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xfa7
	.uleb128 0x10
	.long	.LASF260
	.byte	0x5
	.value	0x1b1
	.long	0xfa7
	.byte	0
	.uleb128 0x10
	.long	.LASF261
	.byte	0x5
	.value	0x1b2
	.long	0x821
	.byte	0x8
	.uleb128 0x10
	.long	.LASF262
	.byte	0x5
	.value	0x1b4
	.long	0xfcd
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf66
	.uleb128 0x1a
	.long	0x34
	.long	0xfc1
	.uleb128 0x16
	.long	0xfc1
	.uleb128 0x16
	.long	0xfc7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbec
	.uleb128 0x6
	.byte	0x8
	.long	0xf72
	.uleb128 0x6
	.byte	0x8
	.long	0xfad
	.uleb128 0x12
	.long	.LASF263
	.byte	0x5
	.value	0x1b8
	.long	0xf72
	.uleb128 0x19
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0x10ec
	.uleb128 0x10
	.long	.LASF264
	.byte	0x5
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x14
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF265
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0x10
	.long	.LASF266
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.long	.LASF267
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF268
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0x10
	.long	.LASF269
	.byte	0x5
	.value	0x1c3
	.long	0x10ec
	.byte	0x18
	.uleb128 0x10
	.long	.LASF270
	.byte	0x5
	.value	0x1c4
	.long	0x10f2
	.byte	0x20
	.uleb128 0x10
	.long	.LASF271
	.byte	0x5
	.value	0x1c5
	.long	0x10f8
	.byte	0x28
	.uleb128 0x10
	.long	.LASF272
	.byte	0x5
	.value	0x1c8
	.long	0x10fe
	.byte	0x30
	.uleb128 0x10
	.long	.LASF273
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0x10
	.long	.LASF274
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0x10
	.long	.LASF275
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0x10
	.long	.LASF276
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0x10
	.long	.LASF277
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0x10
	.long	.LASF278
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0x10
	.long	.LASF279
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0x10
	.long	.LASF280
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0x10
	.long	.LASF281
	.byte	0x5
	.value	0x1d3
	.long	0x1113
	.byte	0x78
	.uleb128 0x10
	.long	.LASF282
	.byte	0x5
	.value	0x1d5
	.long	0x1119
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfd3
	.uleb128 0x6
	.byte	0x8
	.long	0x959
	.uleb128 0x6
	.byte	0x8
	.long	0xa61
	.uleb128 0x6
	.byte	0x8
	.long	0xaa8
	.uleb128 0x1a
	.long	0xc2
	.long	0x1113
	.uleb128 0x16
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1104
	.uleb128 0x4
	.long	0x34
	.long	0x112f
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF283
	.byte	0x5
	.value	0x1d7
	.long	0xfdf
	.uleb128 0xf
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0x11a5
	.uleb128 0x10
	.long	.LASF284
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF285
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF286
	.byte	0x5
	.value	0x1df
	.long	0x11a5
	.byte	0x8
	.uleb128 0x11
	.long	.LASF287
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0x11
	.long	.LASF288
	.byte	0x5
	.value	0x1e1
	.long	0x11bb
	.value	0x32c
	.uleb128 0x11
	.long	.LASF289
	.byte	0x5
	.value	0x1e2
	.long	0x11bb
	.value	0x330
	.uleb128 0x11
	.long	.LASF290
	.byte	0x5
	.value	0x1e3
	.long	0x11bb
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0x11b5
	.long	0x11b5
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x112f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF291
	.uleb128 0x12
	.long	.LASF292
	.byte	0x5
	.value	0x1e4
	.long	0x113b
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0x11da
	.uleb128 0x6
	.byte	0x8
	.long	0x11e0
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x4ac
	.uleb128 0xf
	.value	0xe08
	.byte	0x5
	.value	0x295
	.long	0x19f4
	.uleb128 0x10
	.long	.LASF293
	.byte	0x5
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF294
	.byte	0x5
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF295
	.byte	0x5
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x14
	.string	"qp0"
	.byte	0x5
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x14
	.string	"qpN"
	.byte	0x5
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF296
	.byte	0x5
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0x10
	.long	.LASF297
	.byte	0x5
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0x10
	.long	.LASF298
	.byte	0x5
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF299
	.byte	0x5
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0x10
	.long	.LASF111
	.byte	0x5
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0x10
	.long	.LASF300
	.byte	0x5
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0x10
	.long	.LASF301
	.byte	0x5
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0x10
	.long	.LASF302
	.byte	0x5
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0x10
	.long	.LASF303
	.byte	0x5
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0x10
	.long	.LASF304
	.byte	0x5
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0x10
	.long	.LASF305
	.byte	0x5
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF306
	.byte	0x5
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0x10
	.long	.LASF307
	.byte	0x5
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0x10
	.long	.LASF308
	.byte	0x5
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0x10
	.long	.LASF309
	.byte	0x5
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0x10
	.long	.LASF310
	.byte	0x5
	.value	0x2b3
	.long	0x19f4
	.byte	0x50
	.uleb128 0x10
	.long	.LASF311
	.byte	0x5
	.value	0x2b4
	.long	0x19f4
	.byte	0x90
	.uleb128 0x10
	.long	.LASF312
	.byte	0x5
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF313
	.byte	0x5
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0x10
	.long	.LASF314
	.byte	0x5
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF315
	.byte	0x5
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0x10
	.long	.LASF316
	.byte	0x5
	.value	0x2b9
	.long	0x1a0a
	.byte	0xe0
	.uleb128 0x11
	.long	.LASF317
	.byte	0x5
	.value	0x2ba
	.long	0x1a0a
	.value	0x1a8
	.uleb128 0x11
	.long	.LASF318
	.byte	0x5
	.value	0x2bb
	.long	0x1a0a
	.value	0x270
	.uleb128 0x11
	.long	.LASF319
	.byte	0x5
	.value	0x2bc
	.long	0x1a0a
	.value	0x338
	.uleb128 0x11
	.long	.LASF320
	.byte	0x5
	.value	0x2bd
	.long	0x1a0a
	.value	0x400
	.uleb128 0x11
	.long	.LASF321
	.byte	0x5
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0x11
	.long	.LASF322
	.byte	0x5
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0x11
	.long	.LASF323
	.byte	0x5
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF324
	.byte	0x5
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x18
	.string	"qpB"
	.byte	0x5
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0x11
	.long	.LASF325
	.byte	0x5
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0x11
	.long	.LASF326
	.byte	0x5
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0x11
	.long	.LASF327
	.byte	0x5
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0x11
	.long	.LASF328
	.byte	0x5
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0x11
	.long	.LASF329
	.byte	0x5
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0x11
	.long	.LASF330
	.byte	0x5
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0x11
	.long	.LASF331
	.byte	0x5
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0x11
	.long	.LASF332
	.byte	0x5
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0x11
	.long	.LASF206
	.byte	0x5
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0x11
	.long	.LASF333
	.byte	0x5
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0x11
	.long	.LASF334
	.byte	0x5
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0x11
	.long	.LASF335
	.byte	0x5
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0x11
	.long	.LASF336
	.byte	0x5
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0x11
	.long	.LASF337
	.byte	0x5
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0x11
	.long	.LASF338
	.byte	0x5
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0x11
	.long	.LASF339
	.byte	0x5
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0x11
	.long	.LASF340
	.byte	0x5
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0x11
	.long	.LASF341
	.byte	0x5
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0x11
	.long	.LASF342
	.byte	0x5
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0x11
	.long	.LASF343
	.byte	0x5
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0x11
	.long	.LASF344
	.byte	0x5
	.value	0x2df
	.long	0x1a1a
	.value	0x52c
	.uleb128 0x11
	.long	.LASF345
	.byte	0x5
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0x11
	.long	.LASF346
	.byte	0x5
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0x11
	.long	.LASF347
	.byte	0x5
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0x11
	.long	.LASF348
	.byte	0x5
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0x11
	.long	.LASF349
	.byte	0x5
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0x11
	.long	.LASF350
	.byte	0x5
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0x11
	.long	.LASF351
	.byte	0x5
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0x11
	.long	.LASF352
	.byte	0x5
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0x11
	.long	.LASF353
	.byte	0x5
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0x11
	.long	.LASF354
	.byte	0x5
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0x11
	.long	.LASF355
	.byte	0x5
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0x11
	.long	.LASF356
	.byte	0x5
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0x11
	.long	.LASF357
	.byte	0x5
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0x11
	.long	.LASF358
	.byte	0x5
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0x11
	.long	.LASF359
	.byte	0x5
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0x11
	.long	.LASF360
	.byte	0x5
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0x11
	.long	.LASF361
	.byte	0x5
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0x11
	.long	.LASF362
	.byte	0x5
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0x11
	.long	.LASF363
	.byte	0x5
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0x11
	.long	.LASF364
	.byte	0x5
	.value	0x2f7
	.long	0xeba
	.value	0x978
	.uleb128 0x11
	.long	.LASF84
	.byte	0x5
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0x11
	.long	.LASF365
	.byte	0x5
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0x11
	.long	.LASF366
	.byte	0x5
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0x11
	.long	.LASF367
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0x11
	.long	.LASF368
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0x11
	.long	.LASF369
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0x11
	.long	.LASF370
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0x11
	.long	.LASF371
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0x11
	.long	.LASF372
	.byte	0x5
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0x11
	.long	.LASF373
	.byte	0x5
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0x11
	.long	.LASF374
	.byte	0x5
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0x11
	.long	.LASF375
	.byte	0x5
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0x11
	.long	.LASF376
	.byte	0x5
	.value	0x30a
	.long	0x1a0a
	.value	0x9b0
	.uleb128 0x11
	.long	.LASF377
	.byte	0x5
	.value	0x30b
	.long	0x1a0a
	.value	0xa78
	.uleb128 0x11
	.long	.LASF378
	.byte	0x5
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0x11
	.long	.LASF379
	.byte	0x5
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0x11
	.long	.LASF380
	.byte	0x5
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0x11
	.long	.LASF381
	.byte	0x5
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0x11
	.long	.LASF382
	.byte	0x5
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0x11
	.long	.LASF383
	.byte	0x5
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0x11
	.long	.LASF384
	.byte	0x5
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0x11
	.long	.LASF385
	.byte	0x5
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0x11
	.long	.LASF386
	.byte	0x5
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0x11
	.long	.LASF387
	.byte	0x5
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0x11
	.long	.LASF388
	.byte	0x5
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0x11
	.long	.LASF389
	.byte	0x5
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0x11
	.long	.LASF241
	.byte	0x5
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0x11
	.long	.LASF242
	.byte	0x5
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0x11
	.long	.LASF243
	.byte	0x5
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0x11
	.long	.LASF390
	.byte	0x5
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0x11
	.long	.LASF391
	.byte	0x5
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0x11
	.long	.LASF392
	.byte	0x5
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0x11
	.long	.LASF393
	.byte	0x5
	.value	0x327
	.long	0x1a0a
	.value	0xb88
	.uleb128 0x11
	.long	.LASF69
	.byte	0x5
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0x11
	.long	.LASF70
	.byte	0x5
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0x11
	.long	.LASF72
	.byte	0x5
	.value	0x32b
	.long	0x83
	.value	0xc58
	.uleb128 0x11
	.long	.LASF73
	.byte	0x5
	.value	0x32c
	.long	0x83
	.value	0xc60
	.uleb128 0x11
	.long	.LASF77
	.byte	0x5
	.value	0x32d
	.long	0x4ac
	.value	0xc68
	.uleb128 0x11
	.long	.LASF71
	.byte	0x5
	.value	0x32e
	.long	0x83
	.value	0xc70
	.uleb128 0x11
	.long	.LASF74
	.byte	0x5
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0x11
	.long	.LASF75
	.byte	0x5
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0x11
	.long	.LASF394
	.byte	0x5
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0x11
	.long	.LASF395
	.byte	0x5
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0x11
	.long	.LASF104
	.byte	0x5
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0x11
	.long	.LASF396
	.byte	0x5
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0x11
	.long	.LASF397
	.byte	0x5
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0x11
	.long	.LASF398
	.byte	0x5
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0x11
	.long	.LASF399
	.byte	0x5
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0x11
	.long	.LASF400
	.byte	0x5
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0x11
	.long	.LASF401
	.byte	0x5
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0x11
	.long	.LASF402
	.byte	0x5
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0x11
	.long	.LASF403
	.byte	0x5
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0x11
	.long	.LASF404
	.byte	0x5
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0x11
	.long	.LASF405
	.byte	0x5
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0x11
	.long	.LASF406
	.byte	0x5
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0x11
	.long	.LASF407
	.byte	0x5
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0x11
	.long	.LASF408
	.byte	0x5
	.value	0x346
	.long	0x48c
	.value	0xcbc
	.uleb128 0x11
	.long	.LASF409
	.byte	0x5
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0x11
	.long	.LASF410
	.byte	0x5
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0x11
	.long	.LASF411
	.byte	0x5
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0x11
	.long	.LASF412
	.byte	0x5
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0x11
	.long	.LASF413
	.byte	0x5
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0x11
	.long	.LASF414
	.byte	0x5
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0x11
	.long	.LASF85
	.byte	0x5
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0x11
	.long	.LASF86
	.byte	0x5
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0x11
	.long	.LASF415
	.byte	0x5
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0x11
	.long	.LASF416
	.byte	0x5
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0x11
	.long	.LASF417
	.byte	0x5
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0x11
	.long	.LASF418
	.byte	0x5
	.value	0x35c
	.long	0x1a2b
	.value	0xd08
	.uleb128 0x11
	.long	.LASF419
	.byte	0x5
	.value	0x35e
	.long	0x1a0a
	.value	0xd38
	.uleb128 0x11
	.long	.LASF420
	.byte	0x5
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1a0a
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x1a1a
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x1a2b
	.uleb128 0x1b
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0xeba
	.long	0x1a3b
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.long	.LASF421
	.byte	0x5
	.value	0x361
	.long	0x11ec
	.uleb128 0x1c
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x242c
	.uleb128 0x10
	.long	.LASF422
	.byte	0x5
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x14
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF423
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0x10
	.long	.LASF424
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.long	.LASF425
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF426
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0x10
	.long	.LASF194
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0x10
	.long	.LASF427
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF111
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0x10
	.long	.LASF428
	.byte	0x5
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x14
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0x10
	.long	.LASF206
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0x10
	.long	.LASF429
	.byte	0x5
	.value	0x372
	.long	0x11bb
	.byte	0x30
	.uleb128 0x10
	.long	.LASF430
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0x10
	.long	.LASF431
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0x10
	.long	.LASF432
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF433
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0x10
	.long	.LASF434
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0x10
	.long	.LASF435
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0x10
	.long	.LASF436
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0x10
	.long	.LASF437
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0x10
	.long	.LASF438
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0x10
	.long	.LASF439
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0x10
	.long	.LASF440
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0x10
	.long	.LASF441
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0x10
	.long	.LASF442
	.byte	0x5
	.value	0x37f
	.long	0x11ce
	.byte	0x68
	.uleb128 0x10
	.long	.LASF443
	.byte	0x5
	.value	0x380
	.long	0x11ce
	.byte	0x70
	.uleb128 0x10
	.long	.LASF444
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0x10
	.long	.LASF445
	.byte	0x5
	.value	0x383
	.long	0x242c
	.byte	0x80
	.uleb128 0x10
	.long	.LASF446
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0x10
	.long	.LASF447
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0x10
	.long	.LASF448
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0x10
	.long	.LASF449
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0x10
	.long	.LASF450
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0x10
	.long	.LASF451
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF452
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF453
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0x10
	.long	.LASF454
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF455
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0x10
	.long	.LASF456
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF457
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0x10
	.long	.LASF458
	.byte	0x5
	.value	0x395
	.long	0x2432
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF459
	.byte	0x5
	.value	0x397
	.long	0x244e
	.value	0x12b8
	.uleb128 0x11
	.long	.LASF460
	.byte	0x5
	.value	0x398
	.long	0x246a
	.value	0x1cb8
	.uleb128 0x11
	.long	.LASF461
	.byte	0x5
	.value	0x399
	.long	0x2486
	.value	0x2138
	.uleb128 0x18
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x24a8
	.value	0x3138
	.uleb128 0x18
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x24be
	.value	0x3338
	.uleb128 0x11
	.long	.LASF462
	.byte	0x5
	.value	0x39d
	.long	0x24d4
	.value	0x3738
	.uleb128 0x11
	.long	.LASF463
	.byte	0x5
	.value	0x39e
	.long	0x242c
	.value	0x3740
	.uleb128 0x11
	.long	.LASF464
	.byte	0x5
	.value	0x3a0
	.long	0x24da
	.value	0x3748
	.uleb128 0x11
	.long	.LASF465
	.byte	0x5
	.value	0x3a1
	.long	0x11b5
	.value	0x3750
	.uleb128 0x11
	.long	.LASF466
	.byte	0x5
	.value	0x3a2
	.long	0x24e0
	.value	0x3758
	.uleb128 0x11
	.long	.LASF467
	.byte	0x5
	.value	0x3a3
	.long	0x24e6
	.value	0x3760
	.uleb128 0x1d
	.long	.LASF468
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1d
	.long	.LASF469
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1e
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1d
	.long	.LASF470
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1d
	.long	.LASF471
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1d
	.long	.LASF472
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1d
	.long	.LASF473
	.byte	0x5
	.value	0x3ac
	.long	0x24f7
	.long	0x11880
	.uleb128 0x1d
	.long	.LASF474
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1d
	.long	.LASF475
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1d
	.long	.LASF476
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1d
	.long	.LASF477
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1d
	.long	.LASF478
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1d
	.long	.LASF479
	.byte	0x5
	.value	0x3b4
	.long	0xeba
	.long	0x118d8
	.uleb128 0x1d
	.long	.LASF480
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1d
	.long	.LASF481
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1d
	.long	.LASF482
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1d
	.long	.LASF483
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1d
	.long	.LASF484
	.byte	0x5
	.value	0x3ba
	.long	0x250d
	.long	0x118f0
	.uleb128 0x1d
	.long	.LASF485
	.byte	0x5
	.value	0x3bb
	.long	0x250d
	.long	0x118f8
	.uleb128 0x1d
	.long	.LASF486
	.byte	0x5
	.value	0x3bd
	.long	0x250d
	.long	0x11900
	.uleb128 0x1d
	.long	.LASF487
	.byte	0x5
	.value	0x3be
	.long	0x250d
	.long	0x11908
	.uleb128 0x1d
	.long	.LASF234
	.byte	0x5
	.value	0x3bf
	.long	0x2531
	.long	0x11910
	.uleb128 0x1d
	.long	.LASF241
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1d
	.long	.LASF242
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1d
	.long	.LASF243
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1d
	.long	.LASF326
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1d
	.long	.LASF488
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1d
	.long	.LASF489
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1d
	.long	.LASF490
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1d
	.long	.LASF491
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1d
	.long	.LASF492
	.byte	0x5
	.value	0x3ce
	.long	0x2541
	.long	0x11950
	.uleb128 0x1d
	.long	.LASF493
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1d
	.long	.LASF494
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1d
	.long	.LASF495
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1d
	.long	.LASF496
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1d
	.long	.LASF497
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1d
	.long	.LASF498
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1d
	.long	.LASF499
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1d
	.long	.LASF104
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1d
	.long	.LASF106
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1d
	.long	.LASF109
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1d
	.long	.LASF110
	.byte	0x5
	.value	0x3e4
	.long	0x2557
	.long	0x11ae8
	.uleb128 0x1d
	.long	.LASF500
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1d
	.long	.LASF501
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1d
	.long	.LASF502
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1d
	.long	.LASF503
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1d
	.long	.LASF504
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1d
	.long	.LASF505
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1d
	.long	.LASF506
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1d
	.long	.LASF507
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1d
	.long	.LASF508
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1d
	.long	.LASF509
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1d
	.long	.LASF510
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1d
	.long	.LASF511
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1d
	.long	.LASF512
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1d
	.long	.LASF513
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1d
	.long	.LASF514
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1d
	.long	.LASF68
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1d
	.long	.LASF515
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1d
	.long	.LASF516
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1d
	.long	.LASF517
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1d
	.long	.LASF518
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1d
	.long	.LASF519
	.byte	0x5
	.value	0x409
	.long	0x2567
	.long	0x11b40
	.uleb128 0x1d
	.long	.LASF397
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1d
	.long	.LASF520
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1d
	.long	.LASF521
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1d
	.long	.LASF522
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1d
	.long	.LASF523
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1d
	.long	.LASF524
	.byte	0x5
	.value	0x413
	.long	0xeba
	.long	0x11b60
	.uleb128 0x1d
	.long	.LASF525
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1d
	.long	.LASF526
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1d
	.long	.LASF527
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1d
	.long	.LASF528
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1d
	.long	.LASF529
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1d
	.long	.LASF530
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1d
	.long	.LASF531
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1d
	.long	.LASF532
	.byte	0x5
	.value	0x41b
	.long	0x256d
	.long	0x11b88
	.uleb128 0x1d
	.long	.LASF533
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1d
	.long	.LASF534
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1d
	.long	.LASF535
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1d
	.long	.LASF536
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1d
	.long	.LASF537
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1d
	.long	.LASF538
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1d
	.long	.LASF539
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1d
	.long	.LASF540
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1d
	.long	.LASF541
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1d
	.long	.LASF542
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1d
	.long	.LASF543
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1d
	.long	.LASF544
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1d
	.long	.LASF545
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1d
	.long	.LASF546
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1d
	.long	.LASF547
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1d
	.long	.LASF394
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1d
	.long	.LASF548
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1d
	.long	.LASF549
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1d
	.long	.LASF550
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1d
	.long	.LASF551
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1d
	.long	.LASF552
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1d
	.long	.LASF553
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1d
	.long	.LASF554
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1d
	.long	.LASF555
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1d
	.long	.LASF556
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1d
	.long	.LASF557
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1d
	.long	.LASF558
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1d
	.long	.LASF308
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1d
	.long	.LASF559
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1d
	.long	.LASF560
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1d
	.long	.LASF561
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1d
	.long	.LASF562
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1d
	.long	.LASF416
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1d
	.long	.LASF563
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1d
	.long	.LASF564
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11ce
	.uleb128 0x4
	.long	0x42
	.long	0x244e
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
	.long	0x246a
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
	.long	0x2486
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
	.long	0x24a8
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
	.long	0x24be
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x24d4
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x242c
	.uleb128 0x6
	.byte	0x8
	.long	0x11c2
	.uleb128 0x6
	.byte	0x8
	.long	0xec1
	.uleb128 0x4
	.long	0xbec
	.long	0x24f7
	.uleb128 0x1b
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x250d
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2513
	.uleb128 0x6
	.byte	0x8
	.long	0x2519
	.uleb128 0x6
	.byte	0x8
	.long	0x251f
	.uleb128 0x6
	.byte	0x8
	.long	0x2525
	.uleb128 0x6
	.byte	0x8
	.long	0x252b
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x2541
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2557
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2567
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb16
	.uleb128 0x6
	.byte	0x8
	.long	0xeba
	.uleb128 0x12
	.long	.LASF565
	.byte	0x5
	.value	0x449
	.long	0x1a47
	.uleb128 0xf
	.value	0x5d8
	.byte	0x5
	.value	0x44d
	.long	0x275c
	.uleb128 0x10
	.long	.LASF566
	.byte	0x5
	.value	0x44f
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF567
	.byte	0x5
	.value	0x450
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF568
	.byte	0x5
	.value	0x451
	.long	0x11bb
	.byte	0x8
	.uleb128 0x10
	.long	.LASF569
	.byte	0x5
	.value	0x452
	.long	0x11bb
	.byte	0xc
	.uleb128 0x10
	.long	.LASF570
	.byte	0x5
	.value	0x453
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF571
	.byte	0x5
	.value	0x454
	.long	0x34
	.byte	0x14
	.uleb128 0x10
	.long	.LASF572
	.byte	0x5
	.value	0x455
	.long	0x34
	.byte	0x18
	.uleb128 0x10
	.long	.LASF573
	.byte	0x5
	.value	0x456
	.long	0x34
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF574
	.byte	0x5
	.value	0x457
	.long	0x275c
	.byte	0x20
	.uleb128 0x10
	.long	.LASF575
	.byte	0x5
	.value	0x458
	.long	0x2772
	.byte	0x48
	.uleb128 0x11
	.long	.LASF576
	.byte	0x5
	.value	0x459
	.long	0x2772
	.value	0x174
	.uleb128 0x11
	.long	.LASF577
	.byte	0x5
	.value	0x45a
	.long	0xeaa
	.value	0x2a0
	.uleb128 0x11
	.long	.LASF578
	.byte	0x5
	.value	0x45d
	.long	0x83
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF579
	.byte	0x5
	.value	0x45e
	.long	0x83
	.value	0x2b8
	.uleb128 0x11
	.long	.LASF580
	.byte	0x5
	.value	0x45f
	.long	0x34
	.value	0x2c0
	.uleb128 0x11
	.long	.LASF581
	.byte	0x5
	.value	0x460
	.long	0x34
	.value	0x2c4
	.uleb128 0x11
	.long	.LASF582
	.byte	0x5
	.value	0x461
	.long	0x34
	.value	0x2c8
	.uleb128 0x11
	.long	.LASF583
	.byte	0x5
	.value	0x462
	.long	0x11bb
	.value	0x2cc
	.uleb128 0x11
	.long	.LASF584
	.byte	0x5
	.value	0x463
	.long	0x11bb
	.value	0x2d0
	.uleb128 0x11
	.long	.LASF585
	.byte	0x5
	.value	0x464
	.long	0x11bb
	.value	0x2d4
	.uleb128 0x11
	.long	.LASF586
	.byte	0x5
	.value	0x466
	.long	0x2772
	.value	0x2d8
	.uleb128 0x11
	.long	.LASF587
	.byte	0x5
	.value	0x467
	.long	0x2772
	.value	0x404
	.uleb128 0x11
	.long	.LASF588
	.byte	0x5
	.value	0x468
	.long	0x2788
	.value	0x530
	.uleb128 0x11
	.long	.LASF589
	.byte	0x5
	.value	0x469
	.long	0x2788
	.value	0x544
	.uleb128 0x11
	.long	.LASF590
	.byte	0x5
	.value	0x46a
	.long	0x2788
	.value	0x558
	.uleb128 0x11
	.long	.LASF591
	.byte	0x5
	.value	0x46b
	.long	0x2788
	.value	0x56c
	.uleb128 0x11
	.long	.LASF592
	.byte	0x5
	.value	0x46c
	.long	0x2788
	.value	0x580
	.uleb128 0x11
	.long	.LASF593
	.byte	0x5
	.value	0x46d
	.long	0x2788
	.value	0x594
	.uleb128 0x11
	.long	.LASF594
	.byte	0x5
	.value	0x46e
	.long	0x2788
	.value	0x5a8
	.uleb128 0x11
	.long	.LASF595
	.byte	0x5
	.value	0x470
	.long	0x34
	.value	0x5bc
	.uleb128 0x11
	.long	.LASF596
	.byte	0x5
	.value	0x471
	.long	0x34
	.value	0x5c0
	.uleb128 0x11
	.long	.LASF597
	.byte	0x5
	.value	0x472
	.long	0x83
	.value	0x5c8
	.uleb128 0x11
	.long	.LASF598
	.byte	0x5
	.value	0x473
	.long	0x34
	.value	0x5d0
	.uleb128 0x11
	.long	.LASF599
	.byte	0x5
	.value	0x474
	.long	0x34
	.value	0x5d4
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2772
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2788
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2798
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF600
	.byte	0x5
	.value	0x475
	.long	0x257f
	.uleb128 0xf
	.value	0xd20
	.byte	0x5
	.value	0x479
	.long	0x2926
	.uleb128 0x10
	.long	.LASF601
	.byte	0x5
	.value	0x47b
	.long	0xeba
	.byte	0
	.uleb128 0x10
	.long	.LASF602
	.byte	0x5
	.value	0x47d
	.long	0x24be
	.byte	0x8
	.uleb128 0x11
	.long	.LASF603
	.byte	0x5
	.value	0x47e
	.long	0x24be
	.value	0x408
	.uleb128 0x11
	.long	.LASF604
	.byte	0x5
	.value	0x47e
	.long	0x24be
	.value	0x808
	.uleb128 0x11
	.long	.LASF462
	.byte	0x5
	.value	0x47f
	.long	0x24d4
	.value	0xc08
	.uleb128 0x11
	.long	.LASF463
	.byte	0x5
	.value	0x480
	.long	0x242c
	.value	0xc10
	.uleb128 0x11
	.long	.LASF210
	.byte	0x5
	.value	0x481
	.long	0x34
	.value	0xc18
	.uleb128 0x11
	.long	.LASF234
	.byte	0x5
	.value	0x483
	.long	0x34
	.value	0xc1c
	.uleb128 0x11
	.long	.LASF214
	.byte	0x5
	.value	0x485
	.long	0xeaa
	.value	0xc20
	.uleb128 0x11
	.long	.LASF215
	.byte	0x5
	.value	0x485
	.long	0xeaa
	.value	0xc30
	.uleb128 0x11
	.long	.LASF442
	.byte	0x5
	.value	0x486
	.long	0x11ce
	.value	0xc40
	.uleb128 0x11
	.long	.LASF211
	.byte	0x5
	.value	0x487
	.long	0xe9a
	.value	0xc48
	.uleb128 0x18
	.string	"cbp"
	.byte	0x5
	.value	0x488
	.long	0x34
	.value	0xc88
	.uleb128 0x11
	.long	.LASF213
	.byte	0x5
	.value	0x489
	.long	0x694
	.value	0xc90
	.uleb128 0x11
	.long	.LASF605
	.byte	0x5
	.value	0x48a
	.long	0x34
	.value	0xc98
	.uleb128 0x11
	.long	.LASF484
	.byte	0x5
	.value	0x48b
	.long	0x250d
	.value	0xca0
	.uleb128 0x11
	.long	.LASF485
	.byte	0x5
	.value	0x48c
	.long	0x250d
	.value	0xca8
	.uleb128 0x11
	.long	.LASF486
	.byte	0x5
	.value	0x48d
	.long	0x250d
	.value	0xcb0
	.uleb128 0x11
	.long	.LASF487
	.byte	0x5
	.value	0x48e
	.long	0x250d
	.value	0xcb8
	.uleb128 0x11
	.long	.LASF606
	.byte	0x5
	.value	0x48f
	.long	0x2926
	.value	0xcc0
	.uleb128 0x11
	.long	.LASF494
	.byte	0x5
	.value	0x490
	.long	0x34
	.value	0xd00
	.uleb128 0x11
	.long	.LASF220
	.byte	0x5
	.value	0x491
	.long	0x34
	.value	0xd04
	.uleb128 0x11
	.long	.LASF232
	.byte	0x5
	.value	0x493
	.long	0x34
	.value	0xd08
	.uleb128 0x11
	.long	.LASF233
	.byte	0x5
	.value	0x494
	.long	0x34
	.value	0xd0c
	.uleb128 0x18
	.string	"qp"
	.byte	0x5
	.value	0x496
	.long	0x34
	.value	0xd10
	.uleb128 0x11
	.long	.LASF236
	.byte	0x5
	.value	0x497
	.long	0x34
	.value	0xd14
	.uleb128 0x11
	.long	.LASF237
	.byte	0x5
	.value	0x498
	.long	0x34
	.value	0xd18
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x2942
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
	.uleb128 0x12
	.long	.LASF607
	.byte	0x5
	.value	0x499
	.long	0x27a4
	.uleb128 0x1f
	.long	.LASF608
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x2bc4
	.uleb128 0xb
	.long	.LASF427
	.byte	0x6
	.byte	0x17
	.long	0x6ff
	.byte	0
	.uleb128 0xe
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF609
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF610
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF611
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF612
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xb
	.long	.LASF613
	.byte	0x6
	.byte	0x1e
	.long	0x2bc4
	.byte	0x18
	.uleb128 0xc
	.long	.LASF614
	.byte	0x6
	.byte	0x1f
	.long	0x2bc4
	.value	0x648
	.uleb128 0xc
	.long	.LASF615
	.byte	0x6
	.byte	0x20
	.long	0x2bc4
	.value	0xc78
	.uleb128 0xc
	.long	.LASF616
	.byte	0x6
	.byte	0x21
	.long	0x2bc4
	.value	0x12a8
	.uleb128 0xc
	.long	.LASF508
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0xc
	.long	.LASF617
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0xc
	.long	.LASF189
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0xc
	.long	.LASF190
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0xc
	.long	.LASF618
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0xc
	.long	.LASF619
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0xc
	.long	.LASF620
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0xc
	.long	.LASF621
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0xc
	.long	.LASF622
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0xc
	.long	.LASF623
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0xc
	.long	.LASF624
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0xc
	.long	.LASF625
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0xc
	.long	.LASF626
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0xc
	.long	.LASF627
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0xc
	.long	.LASF499
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0xc
	.long	.LASF628
	.byte	0x6
	.byte	0x31
	.long	0x11da
	.value	0x1918
	.uleb128 0xc
	.long	.LASF629
	.byte	0x6
	.byte	0x32
	.long	0x11e0
	.value	0x1920
	.uleb128 0xc
	.long	.LASF630
	.byte	0x6
	.byte	0x33
	.long	0x11e0
	.value	0x1928
	.uleb128 0xc
	.long	.LASF631
	.byte	0x6
	.byte	0x34
	.long	0x11da
	.value	0x1930
	.uleb128 0xc
	.long	.LASF632
	.byte	0x6
	.byte	0x35
	.long	0x11da
	.value	0x1938
	.uleb128 0xc
	.long	.LASF633
	.byte	0x6
	.byte	0x36
	.long	0x11d4
	.value	0x1940
	.uleb128 0xc
	.long	.LASF222
	.byte	0x6
	.byte	0x38
	.long	0x4ac
	.value	0x1948
	.uleb128 0xc
	.long	.LASF634
	.byte	0x6
	.byte	0x3a
	.long	0x251f
	.value	0x1950
	.uleb128 0xc
	.long	.LASF635
	.byte	0x6
	.byte	0x3c
	.long	0x2bda
	.value	0x1958
	.uleb128 0xc
	.long	.LASF636
	.byte	0x6
	.byte	0x3f
	.long	0x2bda
	.value	0x1960
	.uleb128 0x20
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x2519
	.value	0x1968
	.uleb128 0xc
	.long	.LASF637
	.byte	0x6
	.byte	0x44
	.long	0x11e6
	.value	0x1970
	.uleb128 0xc
	.long	.LASF638
	.byte	0x6
	.byte	0x45
	.long	0x11e6
	.value	0x1978
	.uleb128 0xc
	.long	.LASF491
	.byte	0x6
	.byte	0x47
	.long	0x2bec
	.value	0x1980
	.uleb128 0xc
	.long	.LASF639
	.byte	0x6
	.byte	0x48
	.long	0x2bec
	.value	0x1988
	.uleb128 0xc
	.long	.LASF640
	.byte	0x6
	.byte	0x49
	.long	0x2bec
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
	.long	0x2bda
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2be0
	.uleb128 0x6
	.byte	0x8
	.long	0x2be6
	.uleb128 0x6
	.byte	0x8
	.long	0x694
	.uleb128 0x6
	.byte	0x8
	.long	0x294e
	.uleb128 0x7
	.long	.LASF641
	.byte	0x6
	.byte	0x52
	.long	0x294e
	.uleb128 0x1f
	.long	.LASF642
	.value	0x1310
	.byte	0x6
	.byte	0x56
	.long	0x2d0a
	.uleb128 0xb
	.long	.LASF116
	.byte	0x6
	.byte	0x58
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF622
	.byte	0x6
	.byte	0x59
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF623
	.byte	0x6
	.byte	0x59
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF613
	.byte	0x6
	.byte	0x5b
	.long	0x2bc4
	.byte	0x10
	.uleb128 0xc
	.long	.LASF634
	.byte	0x6
	.byte	0x5d
	.long	0x251f
	.value	0x640
	.uleb128 0xc
	.long	.LASF635
	.byte	0x6
	.byte	0x5e
	.long	0x2bda
	.value	0x648
	.uleb128 0x20
	.string	"mv"
	.byte	0x6
	.byte	0x5f
	.long	0x2519
	.value	0x650
	.uleb128 0xc
	.long	.LASF637
	.byte	0x6
	.byte	0x60
	.long	0x11e6
	.value	0x658
	.uleb128 0xc
	.long	.LASF615
	.byte	0x6
	.byte	0x63
	.long	0x2bc4
	.value	0x660
	.uleb128 0xc
	.long	.LASF643
	.byte	0x6
	.byte	0x64
	.long	0x251f
	.value	0xc90
	.uleb128 0xc
	.long	.LASF644
	.byte	0x6
	.byte	0x65
	.long	0x2bda
	.value	0xc98
	.uleb128 0xc
	.long	.LASF645
	.byte	0x6
	.byte	0x66
	.long	0x2519
	.value	0xca0
	.uleb128 0xc
	.long	.LASF646
	.byte	0x6
	.byte	0x67
	.long	0x11e6
	.value	0xca8
	.uleb128 0xc
	.long	.LASF616
	.byte	0x6
	.byte	0x6a
	.long	0x2bc4
	.value	0xcb0
	.uleb128 0xc
	.long	.LASF647
	.byte	0x6
	.byte	0x6b
	.long	0x251f
	.value	0x12e0
	.uleb128 0xc
	.long	.LASF648
	.byte	0x6
	.byte	0x6c
	.long	0x2bda
	.value	0x12e8
	.uleb128 0xc
	.long	.LASF649
	.byte	0x6
	.byte	0x6d
	.long	0x2519
	.value	0x12f0
	.uleb128 0xc
	.long	.LASF650
	.byte	0x6
	.byte	0x6e
	.long	0x11e6
	.value	0x12f8
	.uleb128 0xc
	.long	.LASF618
	.byte	0x6
	.byte	0x70
	.long	0x34
	.value	0x1300
	.uleb128 0xc
	.long	.LASF638
	.byte	0x6
	.byte	0x71
	.long	0x11e6
	.value	0x1308
	.byte	0
	.uleb128 0x7
	.long	.LASF651
	.byte	0x6
	.byte	0x73
	.long	0x2bfd
	.uleb128 0x21
	.long	.LASF652
	.byte	0x40
	.byte	0x6
	.byte	0x76
	.long	0x2dbe
	.uleb128 0xb
	.long	.LASF653
	.byte	0x6
	.byte	0x78
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF654
	.byte	0x6
	.byte	0x79
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF618
	.byte	0x6
	.byte	0x7a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF655
	.byte	0x6
	.byte	0x7b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF656
	.byte	0x6
	.byte	0x7d
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF508
	.byte	0x6
	.byte	0x7f
	.long	0x49
	.byte	0x14
	.uleb128 0xb
	.long	.LASF657
	.byte	0x6
	.byte	0x80
	.long	0x34
	.byte	0x18
	.uleb128 0xb
	.long	.LASF190
	.byte	0x6
	.byte	0x81
	.long	0x34
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF620
	.byte	0x6
	.byte	0x82
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.string	"poc"
	.byte	0x6
	.byte	0x83
	.long	0x34
	.byte	0x24
	.uleb128 0xb
	.long	.LASF640
	.byte	0x6
	.byte	0x85
	.long	0x2dbe
	.byte	0x28
	.uleb128 0xb
	.long	.LASF491
	.byte	0x6
	.byte	0x86
	.long	0x2dbe
	.byte	0x30
	.uleb128 0xb
	.long	.LASF639
	.byte	0x6
	.byte	0x87
	.long	0x2dbe
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2bf2
	.uleb128 0x7
	.long	.LASF658
	.byte	0x6
	.byte	0x89
	.long	0x2d15
	.uleb128 0x21
	.long	.LASF659
	.byte	0x40
	.byte	0x6
	.byte	0x8d
	.long	0x2e5f
	.uleb128 0xe
	.string	"fs"
	.byte	0x6
	.byte	0x8f
	.long	0x2e5f
	.byte	0
	.uleb128 0xb
	.long	.LASF660
	.byte	0x6
	.byte	0x90
	.long	0x2e5f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF661
	.byte	0x6
	.byte	0x91
	.long	0x2e5f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF662
	.byte	0x6
	.byte	0x92
	.long	0x49
	.byte	0x18
	.uleb128 0xb
	.long	.LASF663
	.byte	0x6
	.byte	0x93
	.long	0x49
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF664
	.byte	0x6
	.byte	0x94
	.long	0x49
	.byte	0x20
	.uleb128 0xb
	.long	.LASF665
	.byte	0x6
	.byte	0x95
	.long	0x49
	.byte	0x24
	.uleb128 0xb
	.long	.LASF666
	.byte	0x6
	.byte	0x96
	.long	0x34
	.byte	0x28
	.uleb128 0xb
	.long	.LASF667
	.byte	0x6
	.byte	0x97
	.long	0x34
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF668
	.byte	0x6
	.byte	0x99
	.long	0x34
	.byte	0x30
	.uleb128 0xb
	.long	.LASF669
	.byte	0x6
	.byte	0x9b
	.long	0x2e65
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e65
	.uleb128 0x6
	.byte	0x8
	.long	0x2dc4
	.uleb128 0x7
	.long	.LASF670
	.byte	0x6
	.byte	0x9c
	.long	0x2dcf
	.uleb128 0x22
	.long	.LASF744
	.byte	0x1
	.byte	0x32
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ea2
	.uleb128 0x23
	.long	.LASF671
	.byte	0x1
	.byte	0x34
	.long	0x11b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF675
	.byte	0x1
	.byte	0x48
	.long	0x34
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f16
	.uleb128 0x25
	.string	"eep"
	.byte	0x1
	.byte	0x4a
	.long	0x82c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF671
	.byte	0x1
	.byte	0x4b
	.long	0x11b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF672
	.byte	0x1
	.byte	0x4c
	.long	0xfa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF673
	.byte	0x1
	.byte	0x4d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF674
	.byte	0x1
	.byte	0x4f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x24
	.long	.LASF676
	.byte	0x1
	.byte	0x86
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f8a
	.uleb128 0x23
	.long	.LASF677
	.byte	0x1
	.byte	0x88
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF672
	.byte	0x1
	.byte	0x89
	.long	0xfa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF671
	.byte	0x1
	.byte	0x8a
	.long	0x11b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"eep"
	.byte	0x1
	.byte	0x8b
	.long	0x82c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF678
	.byte	0x1
	.byte	0x8d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x26
	.long	.LASF745
	.byte	0x1
	.byte	0xb9
	.long	0x34
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x302d
	.uleb128 0x27
	.long	.LASF679
	.byte	0x1
	.byte	0xb9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.string	"pic"
	.byte	0x1
	.byte	0xb9
	.long	0x24da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.long	.LASF680
	.byte	0x1
	.byte	0xbb
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.long	.LASF681
	.byte	0x1
	.byte	0xbc
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.byte	0xbd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF682
	.byte	0x1
	.byte	0xbe
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.long	.LASF683
	.byte	0x1
	.byte	0xbf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF684
	.byte	0x1
	.byte	0xc0
	.long	0xeba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF685
	.byte	0x1
	.byte	0xc0
	.long	0xeba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF690
	.byte	0x1
	.value	0x1e5
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x30d6
	.uleb128 0x2a
	.long	.LASF686
	.byte	0x1
	.value	0x1e5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1e7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF687
	.byte	0x1
	.value	0x1e8
	.long	0x24da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF688
	.byte	0x1
	.value	0x1e9
	.long	0x10ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF672
	.byte	0x1
	.value	0x1ea
	.long	0xfa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF671
	.byte	0x1
	.value	0x1eb
	.long	0x11b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x23e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF689
	.byte	0x1
	.value	0x23e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF691
	.byte	0x1
	.value	0x2a2
	.long	0x11b5
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3133
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2a4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF688
	.byte	0x1
	.value	0x2a5
	.long	0x10ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF692
	.byte	0x1
	.value	0x2a6
	.long	0x11b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF693
	.byte	0x1
	.value	0x2a7
	.long	0x3133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2f
	.long	0x34
	.uleb128 0x30
	.long	.LASF694
	.byte	0x1
	.value	0x2db
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3173
	.uleb128 0x2a
	.long	.LASF687
	.byte	0x1
	.value	0x2db
	.long	0x24da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2dd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF695
	.byte	0x1
	.value	0x2f0
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x31bd
	.uleb128 0x2a
	.long	.LASF692
	.byte	0x1
	.value	0x2f0
	.long	0x11b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2f2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF688
	.byte	0x1
	.value	0x2f3
	.long	0x10ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF696
	.byte	0x1
	.value	0x315
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x31fa
	.uleb128 0x2a
	.long	.LASF697
	.byte	0x1
	.value	0x315
	.long	0x31fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x317
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3b
	.uleb128 0x32
	.long	.LASF746
	.byte	0x1
	.value	0x31b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3239
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x31d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x31d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF698
	.byte	0x1
	.value	0x346
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x33d1
	.uleb128 0x2a
	.long	.LASF699
	.byte	0x1
	.value	0x346
	.long	0x33d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x2a
	.long	.LASF700
	.byte	0x1
	.value	0x346
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -716
	.uleb128 0x2a
	.long	.LASF701
	.byte	0x1
	.value	0x346
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x2a
	.long	.LASF702
	.byte	0x1
	.value	0x346
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x2a
	.long	.LASF703
	.byte	0x1
	.value	0x346
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x2a
	.long	.LASF704
	.byte	0x1
	.value	0x346
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x2a
	.long	.LASF705
	.byte	0x1
	.value	0x346
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x348
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x348
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.value	0x348
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x2c
	.long	.LASF706
	.byte	0x1
	.value	0x34a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x2c
	.long	.LASF707
	.byte	0x1
	.value	0x34a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x2c
	.long	.LASF708
	.byte	0x1
	.value	0x34c
	.long	0x33d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2c
	.long	.LASF709
	.byte	0x1
	.value	0x34d
	.long	0x33d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2c
	.long	.LASF710
	.byte	0x1
	.value	0x34e
	.long	0x33d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2c
	.long	.LASF711
	.byte	0x1
	.value	0x34f
	.long	0x33d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2c
	.long	.LASF712
	.byte	0x1
	.value	0x350
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -684
	.uleb128 0x2c
	.long	.LASF713
	.byte	0x1
	.value	0x350
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x2c
	.long	.LASF714
	.byte	0x1
	.value	0x351
	.long	0x33d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF715
	.byte	0x1
	.value	0x352
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x2c
	.long	.LASF716
	.byte	0x1
	.value	0x352
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -660
	.uleb128 0x2c
	.long	.LASF717
	.byte	0x1
	.value	0x354
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -668
	.uleb128 0x2c
	.long	.LASF718
	.byte	0x1
	.value	0x355
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -676
	.uleb128 0x2c
	.long	.LASF719
	.byte	0x1
	.value	0x355
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2dbe
	.uleb128 0x4
	.long	0x34
	.long	0x33e7
	.uleb128 0x5
	.long	0x75
	.byte	0x1f
	.byte	0
	.uleb128 0x33
	.long	.LASF103
	.byte	0x5
	.value	0x1f2
	.long	0x49
	.uleb128 0x33
	.long	.LASF720
	.byte	0x5
	.value	0x1f6
	.long	0x33ff
	.uleb128 0x6
	.byte	0x8
	.long	0x4b2
	.uleb128 0x33
	.long	.LASF721
	.byte	0x5
	.value	0x1f7
	.long	0x3411
	.uleb128 0x6
	.byte	0x8
	.long	0x689
	.uleb128 0x33
	.long	.LASF722
	.byte	0x5
	.value	0x1fc
	.long	0x34
	.uleb128 0x4
	.long	0x7c
	.long	0x3434
	.uleb128 0x1b
	.long	0x75
	.value	0x12b
	.byte	0
	.uleb128 0x33
	.long	.LASF723
	.byte	0x5
	.value	0x222
	.long	0x3423
	.uleb128 0x33
	.long	.LASF372
	.byte	0x5
	.value	0x4ad
	.long	0x344c
	.uleb128 0x6
	.byte	0x8
	.long	0x2942
	.uleb128 0x33
	.long	.LASF724
	.byte	0x5
	.value	0x4ae
	.long	0x2942
	.uleb128 0x33
	.long	.LASF725
	.byte	0x5
	.value	0x4ae
	.long	0x2942
	.uleb128 0x33
	.long	.LASF726
	.byte	0x5
	.value	0x4af
	.long	0x2942
	.uleb128 0x33
	.long	.LASF727
	.byte	0x5
	.value	0x4af
	.long	0x2942
	.uleb128 0x33
	.long	.LASF728
	.byte	0x5
	.value	0x4b7
	.long	0x348e
	.uleb128 0x6
	.byte	0x8
	.long	0x1a3b
	.uleb128 0x34
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x34a0
	.uleb128 0x6
	.byte	0x8
	.long	0x2573
	.uleb128 0x33
	.long	.LASF729
	.byte	0x5
	.value	0x4b9
	.long	0x34b2
	.uleb128 0x6
	.byte	0x8
	.long	0x2798
	.uleb128 0x33
	.long	.LASF730
	.byte	0x5
	.value	0x5ae
	.long	0x34
	.uleb128 0x33
	.long	.LASF731
	.byte	0x5
	.value	0x5b6
	.long	0x34
	.uleb128 0x33
	.long	.LASF732
	.byte	0x5
	.value	0x5b7
	.long	0x34
	.uleb128 0x35
	.string	"dpb"
	.byte	0x6
	.byte	0x9f
	.long	0x2e6b
	.uleb128 0x4
	.long	0x33d1
	.long	0x34f7
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x36
	.long	.LASF733
	.byte	0x1
	.byte	0x29
	.long	0x34e7
	.uleb128 0x4
	.long	0x34
	.long	0x3512
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x36
	.long	.LASF734
	.byte	0x6
	.byte	0xa1
	.long	0x3502
	.uleb128 0x36
	.long	.LASF735
	.byte	0x7
	.byte	0x13
	.long	0x2dbe
	.uleb128 0x36
	.long	.LASF736
	.byte	0x7
	.byte	0x15
	.long	0x2dbe
	.uleb128 0x4
	.long	0x83
	.long	0x3543
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.long	.LASF737
	.byte	0x8
	.byte	0x68
	.long	0x3533
	.uleb128 0x4
	.long	0x34
	.long	0x355e
	.uleb128 0x5
	.long	0x75
	.byte	0x14
	.byte	0
	.uleb128 0x36
	.long	.LASF738
	.byte	0x8
	.byte	0x69
	.long	0x354e
	.uleb128 0x36
	.long	.LASF739
	.byte	0x8
	.byte	0x6a
	.long	0x354e
	.uleb128 0x36
	.long	.LASF740
	.byte	0x1
	.byte	0x28
	.long	0x357f
	.uleb128 0x6
	.byte	0x8
	.long	0x2d0a
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
	.uleb128 0x10
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
.LASF583:
	.string	"bitrate_I"
.LASF551:
	.string	"bitdepth_luma_qp_scale"
.LASF406:
	.string	"channel_type"
.LASF423:
	.string	"nb_references"
.LASF83:
	.string	"pic_init_qs_minus26"
.LASF641:
	.string	"StorablePicture"
.LASF552:
	.string	"bitdepth_chroma_qp_scale"
.LASF407:
	.string	"ScalingMatrixPresentFlag"
.LASF517:
	.string	"no_output_of_prior_pics_flag"
.LASF681:
	.string	"recode_macroblock"
.LASF489:
	.string	"num_ref_idx_l1_active"
.LASF500:
	.string	"pic_order_cnt_lsb"
.LASF541:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF54:
	.string	"max_bytes_per_pic_denom"
.LASF544:
	.string	"DeblockCall"
.LASF632:
	.string	"imgY_ups_w"
.LASF469:
	.string	"intra_block"
.LASF562:
	.string	"chroma_qp_offset"
.LASF431:
	.string	"width_cr"
.LASF513:
	.string	"PicSizeInMbs"
.LASF59:
	.string	"max_dec_frame_buffering"
.LASF658:
	.string	"FrameStore"
.LASF139:
	.string	"B_SLICE"
.LASF667:
	.string	"max_long_term_pic_idx"
.LASF467:
	.string	"MB_SyntaxElements"
.LASF630:
	.string	"imgY_11_w"
.LASF462:
	.string	"cofAC"
.LASF624:
	.string	"size_x_cr"
.LASF559:
	.string	"lossless_qpprime_flag"
.LASF346:
	.string	"PocMemoryManagement"
.LASF477:
	.string	"imgtr_next_P_fld"
.LASF299:
	.string	"search_range"
.LASF492:
	.string	"mvscale"
.LASF126:
	.string	"int64"
.LASF606:
	.string	"refar"
.LASF286:
	.string	"slices"
.LASF189:
	.string	"long_term_pic_num"
.LASF39:
	.string	"matrix_coefficients"
.LASF443:
	.string	"ipredmode8x8"
.LASF447:
	.string	"mb_y"
.LASF21:
	.string	"vbr_cbr_flag"
.LASF315:
	.string	"infile_header"
.LASF574:
	.string	"b8_mode_0_use"
.LASF365:
	.string	"full_search"
.LASF644:
	.string	"top_ref_pic_id"
.LASF731:
	.string	"rpc_bytes_to_go"
.LASF685:
	.string	"FieldRDCost"
.LASF191:
	.string	"max_long_term_frame_idx_plus1"
.LASF87:
	.string	"deblocking_filter_control_present_flag"
.LASF401:
	.string	"DisplayEncParams"
.LASF603:
	.string	"rec_mbU"
.LASF491:
	.string	"top_field"
.LASF88:
	.string	"constrained_intra_pred_flag"
.LASF602:
	.string	"rec_mbY"
.LASF159:
	.string	"state"
.LASF96:
	.string	"constrained_set3_flag"
.LASF361:
	.string	"Intra16x16ParDisable"
.LASF173:
	.string	"bcbp_contexts"
.LASF729:
	.string	"stats"
.LASF193:
	.string	"syntaxelement"
.LASF22:
	.string	"initial_cpb_removal_delay_length_minus1"
.LASF324:
	.string	"successive_Bframe"
.LASF31:
	.string	"overscan_info_present_flag"
.LASF334:
	.string	"WeightedPrediction"
.LASF194:
	.string	"type"
.LASF482:
	.string	"fw_mb_mode"
.LASF514:
	.string	"FrameSizeInMbs"
.LASF745:
	.string	"encode_one_slice"
.LASF636:
	.string	"ref_id"
.LASF45:
	.string	"time_scale"
.LASF241:
	.string	"LFDisableIdc"
.LASF626:
	.string	"chroma_vector_adjustment"
.LASF327:
	.string	"directInferenceFlag"
.LASF255:
	.string	"bits_to_go_skip"
.LASF484:
	.string	"pred_mv"
.LASF396:
	.string	"context_init_method"
.LASF398:
	.string	"AllowTransform8x8"
.LASF665:
	.string	"ltref_frames_in_buffer"
.LASF557:
	.string	"num_blk8x8_uv"
.LASF313:
	.string	"slice_argument"
.LASF272:
	.string	"rmpni_buffer"
.LASF354:
	.string	"InterSearch8x4"
.LASF222:
	.string	"mb_field"
.LASF353:
	.string	"InterSearch8x8"
.LASF386:
	.string	"NumFramesInELSubSeq"
.LASF190:
	.string	"long_term_frame_idx"
.LASF616:
	.string	"bottom_ref_pic_num"
.LASF442:
	.string	"ipredmode"
.LASF340:
	.string	"RDBSliceWeightOnly"
.LASF305:
	.string	"GenerateMultiplePPS"
.LASF214:
	.string	"b8mode"
.LASF591:
	.string	"tmp_bit_use_cbp"
.LASF601:
	.string	"min_rdcost"
.LASF650:
	.string	"bottom_moving_block"
.LASF238:
	.string	"prev_cbp"
.LASF459:
	.string	"mprr_2"
.LASF460:
	.string	"mprr_3"
.LASF604:
	.string	"rec_mbV"
.LASF607:
	.string	"RD_DATA"
.LASF248:
	.string	"bits_to_go"
.LASF186:
	.string	"DecRefPicMarking_s"
.LASF192:
	.string	"DecRefPicMarking_t"
.LASF23:
	.string	"cpb_removal_delay_length_minus1"
.LASF80:
	.string	"weighted_pred_flag"
.LASF97:
	.string	"level_idc"
.LASF542:
	.string	"bot_MB"
.LASF597:
	.string	"em_prev_bits"
.LASF654:
	.string	"is_reference"
.LASF540:
	.string	"BasicUnit"
.LASF111:
	.string	"num_ref_frames"
.LASF155:
	.string	"EcodestrmS"
.LASF29:
	.string	"sar_width"
.LASF403:
	.string	"bit_rate"
.LASF6:
	.string	"long int"
.LASF563:
	.string	"auto_crop_right"
.LASF50:
	.string	"vcl_hrd_parameters"
.LASF617:
	.string	"pic_num"
.LASF44:
	.string	"num_units_in_tick"
.LASF461:
	.string	"mprr_c"
.LASF231:
	.string	"all_blk_8x8"
.LASF374:
	.string	"nobskip"
.LASF515:
	.string	"nal_reference_idc"
.LASF506:
	.string	"framepoc"
.LASF671:
	.string	"currSlice"
.LASF664:
	.string	"ref_frames_in_buffer"
.LASF719:
	.string	"MaxFrameNum"
.LASF721:
	.string	"active_sps"
.LASF521:
	.string	"NumberofTextureBits"
.LASF577:
	.string	"intra_chroma_mode"
.LASF457:
	.string	"opix_c_y"
.LASF727:
	.string	"rddata_bot_field_mb"
.LASF103:
	.string	"log2_max_frame_num_minus4"
.LASF336:
	.string	"UseWeightedReferenceME"
.LASF619:
	.string	"used_for_reference"
.LASF388:
	.string	"RandomIntraMBRefresh"
.LASF543:
	.string	"write_macroblock_frame"
.LASF252:
	.string	"stored_byte_buf"
.LASF421:
	.string	"InputParameters"
.LASF28:
	.string	"aspect_ratio_idc"
.LASF510:
	.string	"PicHeightInMapUnits"
.LASF725:
	.string	"rddata_bot_frame_mb"
.LASF614:
	.string	"frm_ref_pic_num"
.LASF529:
	.string	"NumberofGOP"
.LASF549:
	.string	"bitdepth_luma"
.LASF30:
	.string	"sar_height"
.LASF456:
	.string	"opix_c_x"
.LASF145:
	.string	"Ebuffer"
.LASF316:
	.string	"infile"
.LASF706:
	.string	"currPicNum"
.LASF318:
	.string	"ReconFile"
.LASF144:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF429:
	.string	"framerate"
.LASF267:
	.string	"max_part_nr"
.LASF158:
	.string	"EncodingEnvironmentPtr"
.LASF649:
	.string	"bottom_mv"
.LASF106:
	.string	"delta_pic_order_always_zero_flag"
.LASF446:
	.string	"mb_x"
.LASF221:
	.string	"IntraChromaPredModeFlag"
.LASF198:
	.string	"context"
.LASF62:
	.string	"pic_parameter_set_id"
.LASF129:
	.string	"FRAME_CODING"
.LASF276:
	.string	"long_term_pic_idx_l0"
.LASF280:
	.string	"long_term_pic_idx_l1"
.LASF273:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF277:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF531:
	.string	"NumberofPPicture"
.LASF526:
	.string	"NumberofMBHeaderBits"
.LASF463:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF212:
	.string	"intra_pred_modes8x8"
.LASF67:
	.string	"pic_scaling_list_present_flag"
.LASF114:
	.string	"pic_height_in_map_units_minus1"
.LASF40:
	.string	"chroma_location_info_present_flag"
.LASF131:
	.string	"ADAPTIVE_CODING"
.LASF98:
	.string	"chroma_format_idc"
.LASF328:
	.string	"BiPredMotionEstimation"
.LASF486:
	.string	"bipred_mv1"
.LASF487:
	.string	"bipred_mv2"
.LASF175:
	.string	"last_contexts"
.LASF220:
	.string	"c_ipred_mode"
.LASF71:
	.string	"run_length_minus1"
.LASF556:
	.string	"max_imgpel_value_uv"
.LASF309:
	.string	"intra_upd"
.LASF274:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF278:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF643:
	.string	"top_ref_idx"
.LASF686:
	.string	"start_mb_addr"
.LASF275:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF279:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF392:
	.string	"SPPercentageThreshold"
.LASF249:
	.string	"byte_buf"
.LASF293:
	.string	"ProfileIDC"
.LASF234:
	.string	"bi_pred_me"
.LASF205:
	.string	"delta_qp"
.LASF84:
	.string	"chroma_qp_index_offset"
.LASF17:
	.string	"bit_rate_scale"
.LASF590:
	.string	"bit_use_header"
.LASF678:
	.string	"byte_pos_before_startcode_emu_prevention"
.LASF8:
	.string	"char"
.LASF441:
	.string	"block_c_x"
.LASF714:
	.string	"poc_diff"
.LASF701:
	.string	"remapping_of_pic_nums_idc"
.LASF168:
	.string	"transform_size_contexts"
.LASF716:
	.string	"diff"
.LASF518:
	.string	"long_term_reference_flag"
.LASF303:
	.string	"Log2MaxFrameNum"
.LASF437:
	.string	"is_intra_block"
.LASF266:
	.string	"start_mb_nr"
.LASF733:
	.string	"listX"
.LASF402:
	.string	"RCEnable"
.LASF338:
	.string	"RDPictureIntra"
.LASF302:
	.string	"B_List1_refs"
.LASF325:
	.string	"qpBRSOffset"
.LASF621:
	.string	"non_existing"
.LASF390:
	.string	"SparePictureOption"
.LASF367:
	.string	"qpN2"
.LASF321:
	.string	"intra_period"
.LASF208:
	.string	"mb_available_up"
.LASF502:
	.string	"delta_pic_order_cnt"
.LASF19:
	.string	"bit_rate_value"
.LASF356:
	.string	"InterSearch4x4"
.LASF355:
	.string	"InterSearch4x8"
.LASF738:
	.string	"assignSE2partition_NoDP"
.LASF743:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF629:
	.string	"imgY_11"
.LASF520:
	.string	"NumberofHeaderBits"
.LASF370:
	.string	"qp02"
.LASF52:
	.string	"bitstream_restriction_flag"
.LASF142:
	.string	"SI_SLICE"
.LASF167:
	.string	"mb_aff_contexts"
.LASF232:
	.string	"luma_transform_size_8x8_flag"
.LASF408:
	.string	"ScalingListPresentFlag"
.LASF449:
	.string	"block_y"
.LASF341:
	.string	"SkipIntraInInterSlices"
.LASF43:
	.string	"timing_info_present_flag"
.LASF464:
	.string	"currentPicture"
.LASF163:
	.string	"b8_type_contexts"
.LASF91:
	.string	"pic_parameter_set_rbsp_t"
.LASF73:
	.string	"bottom_right"
.LASF335:
	.string	"WeightedBiprediction"
.LASF480:
	.string	"p_interval"
.LASF292:
	.string	"Picture"
.LASF610:
	.string	"bottom_poc"
.LASF478:
	.string	"imgtr_last_P_fld"
.LASF702:
	.string	"abs_diff_pic_num_minus1"
.LASF660:
	.string	"fs_ref"
.LASF728:
	.string	"input"
.LASF377:
	.string	"LeakyBucketParamFile"
.LASF631:
	.string	"imgY_ups"
.LASF295:
	.string	"no_frames"
.LASF138:
	.string	"P_SLICE"
.LASF82:
	.string	"pic_init_qp_minus26"
.LASF306:
	.string	"img_width"
.LASF345:
	.string	"PyramidRefReorder"
.LASF438:
	.string	"is_v_block"
.LASF92:
	.string	"profile_idc"
.LASF312:
	.string	"slice_mode"
.LASF350:
	.string	"InterSearch16x16"
.LASF16:
	.string	"cpb_cnt"
.LASF744:
	.string	"init_ref_pic_list_reordering"
.LASF440:
	.string	"mb_y_intra"
.LASF162:
	.string	"mb_type_contexts"
.LASF72:
	.string	"top_left"
.LASF697:
	.string	"buffer"
.LASF256:
	.string	"streamBuffer"
.LASF153:
	.string	"Ebits_to_goS"
.LASF620:
	.string	"is_output"
.LASF351:
	.string	"InterSearch16x8"
.LASF389:
	.string	"LFSendParameters"
.LASF532:
	.string	"MADofMB"
.LASF736:
	.string	"enc_frame_picture2"
.LASF683:
	.string	"CurrentMbAddr"
.LASF488:
	.string	"num_ref_idx_l0_active"
.LASF397:
	.string	"model_number"
.LASF362:
	.string	"Intra16x16PlaneDisable"
.LASF140:
	.string	"I_SLICE"
.LASF253:
	.string	"byte_buf_skip"
.LASF330:
	.string	"BiPredMESearchRange"
.LASF202:
	.string	"macroblock"
.LASF504:
	.string	"toppoc"
.LASF499:
	.string	"MbaffFrameFlag"
.LASF143:
	.string	"Elow"
.LASF55:
	.string	"max_bits_per_mb_denom"
.LASF454:
	.string	"opix_x"
.LASF405:
	.string	"basicunit"
.LASF609:
	.string	"top_poc"
.LASF378:
	.string	"PicInterlace"
.LASF711:
	.string	"list_sign"
.LASF265:
	.string	"picture_type"
.LASF281:
	.string	"slice_too_big"
.LASF112:
	.string	"gaps_in_frame_num_value_allowed_flag"
.LASF512:
	.string	"PicHeightInMbs"
.LASF415:
	.string	"lossless_qpprime_y_zero_flag"
.LASF90:
	.string	"vui_pic_parameters_flag"
.LASF608:
	.string	"storable_picture"
.LASF320:
	.string	"QmatrixFile"
.LASF337:
	.string	"RDPictureDecision"
.LASF673:
	.string	"header_len"
.LASF712:
	.string	"reorder_stop"
.LASF51:
	.string	"low_delay_hrd_flag"
.LASF157:
	.string	"EncodingEnvironment"
.LASF262:
	.string	"writeSyntaxElement"
.LASF113:
	.string	"pic_width_in_mbs_minus1"
.LASF294:
	.string	"LevelIDC"
.LASF589:
	.string	"bit_use_mb_type"
.LASF0:
	.string	"long unsigned int"
.LASF171:
	.string	"cipr_contexts"
.LASF156:
	.string	"Ecodestrm_lenS"
.LASF57:
	.string	"log2_max_mv_length_horizontal"
.LASF41:
	.string	"chroma_location_frame"
.LASF125:
	.string	"seq_parameter_set_rbsp_t"
.LASF268:
	.string	"num_mb"
.LASF505:
	.string	"bottompoc"
.LASF593:
	.string	"bit_use_coeffC"
.LASF304:
	.string	"ResendPPS"
.LASF359:
	.string	"Intra4x4DiagDisable"
.LASF474:
	.string	"pstruct_next_P"
.LASF695:
	.string	"free_slice"
.LASF588:
	.string	"bit_use_stuffingBits"
.LASF218:
	.string	"lf_alpha_c0_offset"
.LASF564:
	.string	"auto_crop_bottom"
.LASF319:
	.string	"TraceFile"
.LASF700:
	.string	"num_ref_idx_lX_active"
.LASF730:
	.string	"Bytes_After_Header"
.LASF599:
	.string	"bit_ctr_parametersets_n"
.LASF314:
	.string	"UseConstrainedIntraPred"
.LASF533:
	.string	"BasicUnitQP"
.LASF24:
	.string	"dpb_output_delay_length_minus1"
.LASF525:
	.string	"NumberofMBTextureBits"
.LASF38:
	.string	"transfer_characteristics"
.LASF216:
	.string	"cbp_bits"
.LASF713:
	.string	"no_reorder"
.LASF95:
	.string	"constrained_set2_flag"
.LASF600:
	.string	"StatParameters"
.LASF687:
	.string	"currPic"
.LASF627:
	.string	"coded_frame"
.LASF611:
	.string	"frame_poc"
.LASF452:
	.string	"pix_c_x"
.LASF453:
	.string	"pix_c_y"
.LASF297:
	.string	"hadamard"
.LASF481:
	.string	"b_frame_to_code"
.LASF684:
	.string	"FrameRDCost"
.LASF287:
	.string	"bits_per_picture"
.LASF439:
	.string	"mb_y_upd"
.LASF676:
	.string	"terminate_slice"
.LASF420:
	.string	"OffsetMatrixPresentFlag"
.LASF384:
	.string	"NoOfDecoders"
.LASF181:
	.string	"RMPNI"
.LASF148:
	.string	"Ecodestrm"
.LASF136:
	.string	"BOTTOM_FIELD"
.LASF242:
	.string	"LFAlphaC0Offset"
.LASF219:
	.string	"lf_beta_offset"
.LASF703:
	.string	"long_term_pic_idx"
.LASF188:
	.string	"difference_of_pic_nums_minus1"
.LASF668:
	.string	"init_done"
.LASF387:
	.string	"NumFrameIn2ndIGOP"
.LASF133:
	.string	"CABAC"
.LASF503:
	.string	"field_picture"
.LASF579:
	.string	"bit_use_mode_Bframe"
.LASF322:
	.string	"idr_enable"
.LASF458:
	.string	"mprr"
.LASF323:
	.string	"start_frame"
.LASF628:
	.string	"imgY"
.LASF169:
	.string	"MotionInfoContexts"
.LASF558:
	.string	"num_cdc_coeff"
.LASF9:
	.string	"long long int"
.LASF78:
	.string	"num_ref_idx_l0_active_minus1"
.LASF479:
	.string	"b_interval"
.LASF146:
	.string	"Ebits_to_go"
.LASF471:
	.string	"fld_flag"
.LASF473:
	.string	"direct_intraP_ref"
.LASF708:
	.string	"default_order"
.LASF430:
	.string	"width"
.LASF61:
	.string	"Valid"
.LASF210:
	.string	"mb_type"
.LASF251:
	.string	"stored_bits_to_go"
.LASF561:
	.string	"mb_cr_size_y"
.LASF646:
	.string	"top_moving_block"
.LASF110:
	.string	"offset_for_ref_frame"
.LASF594:
	.string	"bit_use_delta_quant"
.LASF204:
	.string	"slice_nr"
.LASF746:
	.string	"set_ref_pic_num"
.LASF289:
	.string	"distortion_u"
.LASF290:
	.string	"distortion_v"
.LASF732:
	.string	"rpc_bits_to_go"
.LASF704:
	.string	"weighted_prediction"
.LASF288:
	.string	"distortion_y"
.LASF254:
	.string	"byte_pos_skip"
.LASF243:
	.string	"LFBetaOffset"
.LASF101:
	.string	"bit_depth_luma_minus8"
.LASF245:
	.string	"double"
.LASF94:
	.string	"constrained_set1_flag"
.LASF391:
	.string	"SPDetectionThreshold"
.LASF640:
	.string	"frame"
.LASF416:
	.string	"residue_transform_flag"
.LASF592:
	.string	"bit_use_coeffY"
.LASF476:
	.string	"imgtr_last_P_frm"
.LASF709:
	.string	"re_order"
.LASF648:
	.string	"bottom_ref_pic_id"
.LASF176:
	.string	"one_contexts"
.LASF625:
	.string	"size_y_cr"
.LASF379:
	.string	"MbInterlace"
.LASF674:
	.string	"NumberOfPartitions"
.LASF596:
	.string	"em_prev_bits_fld"
.LASF206:
	.string	"qpsp"
.LASF291:
	.string	"float"
.LASF237:
	.string	"prev_delta_qp"
.LASF400:
	.string	"ReportFrameStats"
.LASF343:
	.string	"PyramidCoding"
.LASF160:
	.string	"count"
.LASF117:
	.string	"direct_8x8_inference_flag"
.LASF347:
	.string	"symbol_mode"
.LASF161:
	.string	"BiContextType"
.LASF737:
	.string	"assignSE2partition"
.LASF56:
	.string	"log2_max_mv_length_vertical"
.LASF472:
	.string	"rd_pass"
.LASF468:
	.string	"quad"
.LASF519:
	.string	"dec_ref_pic_marking_buffer"
.LASF3:
	.string	"unsigned int"
.LASF573:
	.string	"bit_ctr_emulationprevention"
.LASF177:
	.string	"abs_contexts"
.LASF578:
	.string	"mode_use_Bframe"
.LASF147:
	.string	"Ebits_to_follow"
.LASF720:
	.string	"active_pps"
.LASF257:
	.string	"write_flag"
.LASF425:
	.string	"total_number_mb"
.LASF86:
	.string	"cr_qp_index_offset"
.LASF149:
	.string	"Ecodestrm_len"
.LASF271:
	.string	"tex_ctx"
.LASF332:
	.string	"sp_periodicity"
.LASF647:
	.string	"bottom_ref_idx"
.LASF105:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF717:
	.string	"abs_poc_dist"
.LASF530:
	.string	"TotalQpforPPicture"
.LASF209:
	.string	"mb_available_left"
.LASF185:
	.string	"RMPNIbuffer_s"
.LASF184:
	.string	"RMPNIbuffer_t"
.LASF394:
	.string	"slice_group_change_cycle"
.LASF418:
	.string	"LambdaWeight"
.LASF180:
	.string	"TextureInfoContexts"
.LASF639:
	.string	"bottom_field"
.LASF424:
	.string	"current_mb_nr"
.LASF568:
	.string	"bitr"
.LASF375:
	.string	"NumberLeakyBuckets"
.LASF613:
	.string	"ref_pic_num"
.LASF495:
	.string	"layer"
.LASF215:
	.string	"b8pdir"
.LASF284:
	.string	"no_slices"
.LASF669:
	.string	"last_picture"
.LASF108:
	.string	"offset_for_top_to_bottom_field"
.LASF675:
	.string	"start_slice"
.LASF122:
	.string	"frame_cropping_rect_bottom_offset"
.LASF475:
	.string	"imgtr_next_P_frm"
.LASF535:
	.string	"FieldControl"
.LASF527:
	.string	"NumberofCodedBFrame"
.LASF699:
	.string	"list"
.LASF494:
	.string	"i16offset"
.LASF33:
	.string	"video_signal_type_present_flag"
.LASF333:
	.string	"qpsp_pred"
.LASF575:
	.string	"mode_use_transform_8x8"
.LASF104:
	.string	"pic_order_cnt_type"
.LASF344:
	.string	"ExplicitPyramidFormat"
.LASF450:
	.string	"pix_x"
.LASF451:
	.string	"pix_y"
.LASF741:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF560:
	.string	"mb_cr_size_x"
.LASF565:
	.string	"ImageParameters"
.LASF261:
	.string	"ee_cabac"
.LASF663:
	.string	"used_size"
.LASF13:
	.string	"FALSE"
.LASF118:
	.string	"frame_cropping_flag"
.LASF638:
	.string	"field_frame"
.LASF130:
	.string	"FIELD_CODING"
.LASF298:
	.string	"hadamardqpel"
.LASF490:
	.string	"field_mode"
.LASF358:
	.string	"Intra4x4ParDisable"
.LASF571:
	.string	"bit_ctr_n"
.LASF448:
	.string	"block_x"
.LASF653:
	.string	"is_used"
.LASF376:
	.string	"LeakyBucketRateFile"
.LASF42:
	.string	"chroma_location_field"
.LASF662:
	.string	"size"
.LASF311:
	.string	"part_size"
.LASF349:
	.string	"partition_mode"
.LASF546:
	.string	"last_has_mmco_5"
.LASF100:
	.string	"seq_scaling_list_present_flag"
.LASF179:
	.string	"fld_last_contexts"
.LASF107:
	.string	"offset_for_non_ref_pic"
.LASF120:
	.string	"frame_cropping_rect_right_offset"
.LASF89:
	.string	"redundant_pic_cnt_present_flag"
.LASF244:
	.string	"skip_flag"
.LASF508:
	.string	"frame_num"
.LASF174:
	.string	"map_contexts"
.LASF393:
	.string	"SliceGroupConfigFileName"
.LASF141:
	.string	"SP_SLICE"
.LASF187:
	.string	"memory_management_control_operation"
.LASF380:
	.string	"IntraBottom"
.LASF582:
	.string	"bit_ctr_B"
.LASF258:
	.string	"Bitstream"
.LASF419:
	.string	"QOffsetMatrixFile"
.LASF301:
	.string	"B_List0_refs"
.LASF580:
	.string	"bit_ctr_I"
.LASF497:
	.string	"NoResidueDirect"
.LASF116:
	.string	"mb_adaptive_frame_field_flag"
.LASF581:
	.string	"bit_ctr_P"
.LASF666:
	.string	"last_output_poc"
.LASF539:
	.string	"NumberofCodedMacroBlocks"
.LASF49:
	.string	"vcl_hrd_parameters_present_flag"
.LASF64:
	.string	"entropy_coding_mode_flag"
.LASF197:
	.string	"bitpattern"
.LASF545:
	.string	"last_pic_bottom_field"
.LASF264:
	.string	"picture_id"
.LASF115:
	.string	"frame_mbs_only_flag"
.LASF470:
	.string	"fld_type"
.LASF26:
	.string	"hrd_parameters_t"
.LASF528:
	.string	"NumberofCodedPFrame"
.LASF79:
	.string	"num_ref_idx_l1_active_minus1"
.LASF411:
	.string	"BitDepthChroma"
.LASF10:
	.string	"long long unsigned int"
.LASF135:
	.string	"TOP_FIELD"
.LASF739:
	.string	"assignSE2partition_DP"
.LASF726:
	.string	"rddata_top_field_mb"
.LASF550:
	.string	"bitdepth_chroma"
.LASF329:
	.string	"BiPredMERefinements"
.LASF25:
	.string	"time_offset_length"
.LASF433:
	.string	"height_cr"
.LASF485:
	.string	"all_mv"
.LASF369:
	.string	"qp2start"
.LASF432:
	.string	"height"
.LASF724:
	.string	"rddata_top_frame_mb"
.LASF427:
	.string	"structure"
.LASF282:
	.string	"field_ctx"
.LASF696:
	.string	"modify_redundant_pic_cnt"
.LASF81:
	.string	"weighted_bipred_idc"
.LASF263:
	.string	"DataPartition"
.LASF466:
	.string	"mb_data"
.LASF121:
	.string	"frame_cropping_rect_top_offset"
.LASF404:
	.string	"SeinitialQP"
.LASF523:
	.string	"NumberofBasicUnitTextureBits"
.LASF109:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF283:
	.string	"Slice"
.LASF259:
	.string	"datapartition"
.LASF154:
	.string	"Ebits_to_followS"
.LASF53:
	.string	"motion_vectors_over_pic_boundaries_flag"
.LASF434:
	.string	"height_cr_frame"
.LASF537:
	.string	"Frame_Total_Number_MB"
.LASF195:
	.string	"value1"
.LASF196:
	.string	"value2"
.LASF211:
	.string	"intra_pred_modes"
.LASF598:
	.string	"bit_ctr_parametersets"
.LASF642:
	.string	"colocated_params"
.LASF595:
	.string	"em_prev_bits_frm"
.LASF119:
	.string	"frame_cropping_rect_left_offset"
.LASF414:
	.string	"rgb_input_flag"
.LASF260:
	.string	"bitstream"
.LASF300:
	.string	"P_List0_refs"
.LASF385:
	.string	"RestrictRef"
.LASF615:
	.string	"top_ref_pic_num"
.LASF688:
	.string	"dataPart"
.LASF150:
	.string	"ElowS"
.LASF570:
	.string	"bit_ctr"
.LASF705:
	.string	"list_no"
.LASF656:
	.string	"is_non_existent"
.LASF70:
	.string	"slice_group_map_type"
.LASF566:
	.string	"quant0"
.LASF567:
	.string	"quant1"
.LASF48:
	.string	"nal_hrd_parameters"
.LASF15:
	.string	"Boolean"
.LASF348:
	.string	"of_mode"
.LASF553:
	.string	"bitdepth_lambda_scale"
.LASF373:
	.string	"disthres"
.LASF496:
	.string	"old_layer"
.LASF422:
	.string	"number"
.LASF428:
	.string	"max_num_references"
.LASF27:
	.string	"aspect_ratio_info_present_flag"
.LASF371:
	.string	"qpBRS2Offset"
.LASF555:
	.string	"max_imgpel_value"
.LASF509:
	.string	"PicWidthInMbs"
.LASF63:
	.string	"seq_parameter_set_id"
.LASF381:
	.string	"LossRateA"
.LASF382:
	.string	"LossRateB"
.LASF383:
	.string	"LossRateC"
.LASF548:
	.string	"pic_unit_size_on_disk"
.LASF554:
	.string	"dc_pred_value"
.LASF339:
	.string	"RDPSliceWeightOnly"
.LASF413:
	.string	"img_width_cr"
.LASF36:
	.string	"colour_description_present_flag"
.LASF239:
	.string	"predict_qp"
.LASF102:
	.string	"bit_depth_chroma_minus8"
.LASF246:
	.string	"Macroblock"
.LASF165:
	.string	"ref_no_contexts"
.LASF740:
	.string	"Co_located"
.LASF310:
	.string	"blc_size"
.LASF127:
	.string	"PAR_DP_1"
.LASF134:
	.string	"FRAME"
.LASF128:
	.string	"PAR_DP_3"
.LASF516:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF250:
	.string	"stored_byte_pos"
.LASF672:
	.string	"currStream"
.LASF12:
	.string	"byte"
.LASF682:
	.string	"NumberOfCodedMBs"
.LASF183:
	.string	"Next"
.LASF342:
	.string	"BRefPictures"
.LASF182:
	.string	"Data"
.LASF534:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF612:
	.string	"order_num"
.LASF637:
	.string	"moving_block"
.LASF47:
	.string	"nal_hrd_parameters_present_flag"
.LASF455:
	.string	"opix_y"
.LASF308:
	.string	"yuv_format"
.LASF605:
	.string	"mode"
.LASF409:
	.string	"FMEnable"
.LASF498:
	.string	"redundant_pic_cnt"
.LASF58:
	.string	"max_dec_frame_reordering"
.LASF483:
	.string	"bw_mb_mode"
.LASF710:
	.string	"tmp_reorder"
.LASF652:
	.string	"frame_store"
.LASF395:
	.string	"redundant_slice_flag"
.LASF723:
	.string	"errortext"
.LASF692:
	.string	"slice"
.LASF410:
	.string	"BitDepthLuma"
.LASF14:
	.string	"TRUE"
.LASF372:
	.string	"rdopt"
.LASF661:
	.string	"fs_ltref"
.LASF124:
	.string	"vui_seq_parameters"
.LASF152:
	.string	"EbufferS"
.LASF670:
	.string	"DecodedPictureBuffer"
.LASF507:
	.string	"ThisPOC"
.LASF132:
	.string	"UVLC"
.LASF18:
	.string	"cpb_size_scale"
.LASF524:
	.string	"TotalMADBasicUnit"
.LASF236:
	.string	"prev_qp"
.LASF357:
	.string	"IntraDisableInterOnly"
.LASF164:
	.string	"mv_res_contexts"
.LASF691:
	.string	"malloc_slice"
.LASF352:
	.string	"InterSearch8x16"
.LASF735:
	.string	"enc_picture"
.LASF235:
	.string	"actj"
.LASF46:
	.string	"fixed_frame_rate_flag"
.LASF69:
	.string	"num_slice_groups_minus1"
.LASF501:
	.string	"delta_pic_order_cnt_bottom"
.LASF493:
	.string	"buf_cycle"
.LASF734:
	.string	"listXsize"
.LASF444:
	.string	"cod_counter"
.LASF659:
	.string	"decoded_picture_buffer"
.LASF707:
	.string	"picNumLXPred"
.LASF680:
	.string	"end_of_slice"
.LASF269:
	.string	"partArr"
.LASF247:
	.string	"byte_pos"
.LASF317:
	.string	"outfile"
.LASF170:
	.string	"ipr_contexts"
.LASF223:
	.string	"mbAddrA"
.LASF224:
	.string	"mbAddrB"
.LASF225:
	.string	"mbAddrC"
.LASF226:
	.string	"mbAddrD"
.LASF399:
	.string	"LowPassForIntra8x8"
.LASF445:
	.string	"nz_coeff"
.LASF166:
	.string	"delta_qp_contexts"
.LASF677:
	.string	"bytes_written"
.LASF20:
	.string	"cpb_size_value"
.LASF657:
	.string	"frame_num_wrap"
.LASF360:
	.string	"Intra4x4DirDisable"
.LASF645:
	.string	"top_mv"
.LASF522:
	.string	"NumberofBasicUnitHeaderBits"
.LASF690:
	.string	"init_slice"
.LASF201:
	.string	"SyntaxElement"
.LASF368:
	.string	"qpB2"
.LASF694:
	.string	"free_slice_list"
.LASF93:
	.string	"constrained_set0_flag"
.LASF538:
	.string	"IFLAG"
.LASF547:
	.string	"pre_frame_num"
.LASF32:
	.string	"overscan_appropriate_flag"
.LASF68:
	.string	"pic_order_present_flag"
.LASF217:
	.string	"lf_disable"
.LASF742:
	.string	"slice.c"
.LASF331:
	.string	"BiPredMESubPel"
.LASF37:
	.string	"colour_primaries"
.LASF622:
	.string	"size_x"
.LASF576:
	.string	"mode_use_transform_4x4"
.LASF623:
	.string	"size_y"
.LASF285:
	.string	"idr_flag"
.LASF698:
	.string	"poc_ref_pic_reorder"
.LASF655:
	.string	"is_orig_reference"
.LASF2:
	.string	"short unsigned int"
.LASF536:
	.string	"FieldFrame"
.LASF366:
	.string	"last_frame"
.LASF240:
	.string	"predict_error"
.LASF426:
	.string	"current_slice_nr"
.LASF585:
	.string	"bitrate_B"
.LASF326:
	.string	"direct_spatial_mv_pred_flag"
.LASF307:
	.string	"img_height"
.LASF296:
	.string	"jumpd"
.LASF569:
	.string	"bitrate"
.LASF60:
	.string	"vui_seq_parameters_t"
.LASF199:
	.string	"mapping"
.LASF634:
	.string	"ref_idx"
.LASF412:
	.string	"img_height_cr"
.LASF363:
	.string	"ChromaIntraDisable"
.LASF99:
	.string	"seq_scaling_matrix_present_flag"
.LASF633:
	.string	"imgUV"
.LASF75:
	.string	"slice_group_change_rate_minus1"
.LASF651:
	.string	"ColocatedParams"
.LASF635:
	.string	"ref_pic_id"
.LASF11:
	.string	"int64_t"
.LASF693:
	.string	"buffer_size"
.LASF200:
	.string	"writing"
.LASF77:
	.string	"slice_group_id"
.LASF178:
	.string	"fld_map_contexts"
.LASF35:
	.string	"video_full_range_flag"
.LASF74:
	.string	"slice_group_change_direction_flag"
.LASF66:
	.string	"pic_scaling_matrix_present_flag"
.LASF364:
	.string	"FrameRate"
.LASF123:
	.string	"vui_parameters_present_flag"
.LASF689:
	.string	"num_ref"
.LASF34:
	.string	"video_format"
.LASF172:
	.string	"cbp_contexts"
.LASF85:
	.string	"cb_qp_index_offset"
.LASF270:
	.string	"mot_ctx"
.LASF76:
	.string	"pic_size_in_map_units_minus1"
.LASF722:
	.string	"MBPairIsField"
.LASF586:
	.string	"mode_use"
.LASF233:
	.string	"NoMbPartLessThan8x8Flag"
.LASF435:
	.string	"subblock_x"
.LASF436:
	.string	"subblock_y"
.LASF618:
	.string	"is_long_term"
.LASF715:
	.string	"tmp_value"
.LASF65:
	.string	"transform_8x8_mode_flag"
.LASF417:
	.string	"UseExplicitLambdaParams"
.LASF203:
	.string	"currSEnr"
.LASF137:
	.string	"PictureStructure"
.LASF511:
	.string	"FrameHeightInMbs"
.LASF465:
	.string	"currentSlice"
.LASF207:
	.string	"bitcounter"
.LASF584:
	.string	"bitrate_P"
.LASF151:
	.string	"ErangeS"
.LASF227:
	.string	"mbAvailA"
.LASF228:
	.string	"mbAvailB"
.LASF229:
	.string	"mbAvailC"
.LASF230:
	.string	"mbAvailD"
.LASF587:
	.string	"bit_use_mode"
.LASF213:
	.string	"cbp_blk"
.LASF718:
	.string	"maxPicNum"
.LASF679:
	.string	"SliceGroupId"
.LASF572:
	.string	"bit_slice"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
