	.file	"cabac.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cabac.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	last_dquant
	.bss
	.align 4
	.type	last_dquant, @object
	.size	last_dquant, 4
last_dquant:
	.zero	4
	.text
	.globl	cabac_new_slice
	.type	cabac_new_slice, @function
cabac_new_slice:
.LFB2:
	.file 1 "cabac.c"
	.loc 1 54 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 55 0
	movl	$0, last_dquant(%rip)	#, last_dquant
	.loc 1 56 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cabac_new_slice, .-cabac_new_slice
	.globl	CheckAvailabilityOfNeighborsCABAC
	.type	CheckAvailabilityOfNeighborsCABAC, @function
CheckAvailabilityOfNeighborsCABAC:
.LFB3:
	.loc 1 67 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	.loc 1 68 0
	movq	img(%rip), %rax	# img, img.0
	movq	14168(%rax), %rdx	# img.0_1->mb_data, D.6322
	movq	img(%rip), %rax	# img, img.1
	movl	12(%rax), %eax	# img.1_3->current_mb_nr, D.6323
	cltq
	imulq	$632, %rax, %rax	#, D.6324, D.6324
	addq	%rdx, %rax	# D.6322, tmp83
	movq	%rax, -72(%rbp)	# tmp83, currMB
	.loc 1 71 0
	movq	img(%rip), %rax	# img, img.2
	movl	12(%rax), %eax	# img.2_8->current_mb_nr, D.6323
	leaq	-32(%rbp), %rdx	#, tmp84
	movq	%rdx, %r8	# tmp84,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	$-1, %esi	#,
	movl	%eax, %edi	# D.6323,
	call	getNeighbour	#
	.loc 1 72 0
	movq	img(%rip), %rax	# img, img.3
	movl	12(%rax), %eax	# img.3_10->current_mb_nr, D.6323
	leaq	-64(%rbp), %rdx	#, tmp85
	movq	%rdx, %r8	# tmp85,
	movl	$1, %ecx	#,
	movl	$-1, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.6323,
	call	getNeighbour	#
	.loc 1 74 0
	movl	-64(%rbp), %eax	# up.available, D.6323
	testl	%eax, %eax	# D.6323
	je	.L3	#,
	.loc 1 75 0
	movq	img(%rip), %rax	# img, img.4
	movq	14168(%rax), %rdx	# img.4_13->mb_data, D.6322
	movl	-60(%rbp), %eax	# up.mb_addr, D.6323
	cltq
	imulq	$632, %rax, %rax	#, D.6324, D.6324
	addq	%rax, %rdx	# D.6324, D.6325
	movq	-72(%rbp), %rax	# currMB, tmp86
	movq	%rdx, 56(%rax)	# D.6325, currMB_7->mb_available_up
	jmp	.L4	#
.L3:
	.loc 1 77 0
	movq	-72(%rbp), %rax	# currMB, tmp87
	movq	$0, 56(%rax)	#, currMB_7->mb_available_up
.L4:
	.loc 1 79 0
	movl	-32(%rbp), %eax	# left.available, D.6323
	testl	%eax, %eax	# D.6323
	je	.L5	#,
	.loc 1 80 0
	movq	img(%rip), %rax	# img, img.5
	movq	14168(%rax), %rdx	# img.5_20->mb_data, D.6322
	movl	-28(%rbp), %eax	# left.mb_addr, D.6323
	cltq
	imulq	$632, %rax, %rax	#, D.6324, D.6324
	addq	%rax, %rdx	# D.6324, D.6325
	movq	-72(%rbp), %rax	# currMB, tmp88
	movq	%rdx, 64(%rax)	# D.6325, currMB_7->mb_available_left
	jmp	.L2	#
.L5:
	.loc 1 82 0
	movq	-72(%rbp), %rax	# currMB, tmp89
	movq	$0, 64(%rax)	#, currMB_7->mb_available_left
.L2:
	.loc 1 83 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	CheckAvailabilityOfNeighborsCABAC, .-CheckAvailabilityOfNeighborsCABAC
	.section	.rodata
	.align 8
.LC0:
	.string	"create_contexts_MotionInfo: enco_ctx"
	.text
	.globl	create_contexts_MotionInfo
	.type	create_contexts_MotionInfo, @function
create_contexts_MotionInfo:
.LFB4:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 96 0
	movl	$1504, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp61, enco_ctx
	.loc 1 97 0
	cmpq	$0, -8(%rbp)	#, enco_ctx
	jne	.L8	#,
	.loc 1 98 0
	movl	$.LC0, %edi	#,
	call	no_mem_exit	#
.L8:
	.loc 1 100 0
	movq	-8(%rbp), %rax	# enco_ctx, D.6326
	.loc 1 101 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	create_contexts_MotionInfo, .-create_contexts_MotionInfo
	.section	.rodata
	.align 8
.LC1:
	.string	"create_contexts_TextureInfo: enco_ctx"
	.text
	.globl	create_contexts_TextureInfo
	.type	create_contexts_TextureInfo, @function
create_contexts_TextureInfo:
.LFB5:
	.loc 1 112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 115 0
	movl	$12128, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp61, enco_ctx
	.loc 1 116 0
	cmpq	$0, -8(%rbp)	#, enco_ctx
	jne	.L11	#,
	.loc 1 117 0
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L11:
	.loc 1 119 0
	movq	-8(%rbp), %rax	# enco_ctx, D.6328
	.loc 1 120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	create_contexts_TextureInfo, .-create_contexts_TextureInfo
	.globl	delete_contexts_MotionInfo
	.type	delete_contexts_MotionInfo, @function
delete_contexts_MotionInfo:
.LFB6:
	.loc 1 133 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# enco_ctx, enco_ctx
	.loc 1 134 0
	cmpq	$0, -8(%rbp)	#, enco_ctx
	jne	.L14	#,
	.loc 1 135 0
	jmp	.L13	#
.L14:
	.loc 1 137 0
	movq	-8(%rbp), %rax	# enco_ctx, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	.loc 1 139 0
	nop
.L13:
	.loc 1 140 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	delete_contexts_MotionInfo, .-delete_contexts_MotionInfo
	.globl	delete_contexts_TextureInfo
	.type	delete_contexts_TextureInfo, @function
delete_contexts_TextureInfo:
.LFB7:
	.loc 1 150 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# enco_ctx, enco_ctx
	.loc 1 151 0
	cmpq	$0, -8(%rbp)	#, enco_ctx
	jne	.L17	#,
	.loc 1 152 0
	jmp	.L16	#
.L17:
	.loc 1 154 0
	movq	-8(%rbp), %rax	# enco_ctx, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	.loc 1 156 0
	nop
.L16:
	.loc 1 157 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	delete_contexts_TextureInfo, .-delete_contexts_TextureInfo
	.globl	writeSyntaxElement_CABAC
	.type	writeSyntaxElement_CABAC, @function
writeSyntaxElement_CABAC:
.LFB8:
	.loc 1 167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# this_dataPart, this_dataPart
	.loc 1 169 0
	movq	-32(%rbp), %rax	# this_dataPart, tmp69
	addq	$8, %rax	#, tmp68
	movq	%rax, -8(%rbp)	# tmp68, eep_dp
	.loc 1 171 0
	movq	-8(%rbp), %rax	# eep_dp, tmp70
	movq	%rax, %rdi	# tmp70,
	call	arienco_bits_written	#
	movl	%eax, -12(%rbp)	# tmp71, curr_len
	.loc 1 174 0
	movq	-24(%rbp), %rax	# se, tmp72
	movq	40(%rax), %rax	# se_4(D)->writing, D.6330
	movq	-8(%rbp), %rcx	# eep_dp, tmp73
	movq	-24(%rbp), %rdx	# se, tmp74
	movq	%rcx, %rsi	# tmp73,
	movq	%rdx, %rdi	# tmp74,
	call	*%rax	# D.6330
	.loc 1 176 0
	movq	-24(%rbp), %rax	# se, tmp75
	movl	(%rax), %eax	# se_4(D)->type, D.6331
	testl	%eax, %eax	# D.6331
	je	.L20	#,
	.loc 1 177 0
	movq	-32(%rbp), %rax	# this_dataPart, tmp76
	movq	(%rax), %rax	# this_dataPart_1(D)->bitstream, D.6332
	movl	$1, 40(%rax)	#, _7->write_flag
.L20:
	.loc 1 179 0
	movq	-8(%rbp), %rax	# eep_dp, tmp77
	movq	%rax, %rdi	# tmp77,
	call	arienco_bits_written	#
	subl	-12(%rbp), %eax	# curr_len, D.6331
	movl	%eax, %edx	# D.6331, D.6331
	movq	-24(%rbp), %rax	# se, tmp78
	movl	%edx, 12(%rax)	# D.6331, se_4(D)->len
	movq	-24(%rbp), %rax	# se, tmp79
	movl	12(%rax), %eax	# se_4(D)->len, D.6331
	.loc 1 180 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	writeSyntaxElement_CABAC, .-writeSyntaxElement_CABAC
	.globl	writeFieldModeInfo_CABAC
	.type	writeFieldModeInfo_CABAC, @function
writeFieldModeInfo_CABAC:
.LFB9:
	.loc 1 190 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# se, se
	movq	%rsi, -48(%rbp)	# eep_dp, eep_dp
	.loc 1 192 0
	movq	img(%rip), %rax	# img, img.6
	movq	14160(%rax), %rax	# img.6_3->currentSlice, D.6333
	movq	32(%rax), %rax	# _4->mot_ctx, tmp83
	movq	%rax, -16(%rbp)	# tmp83, ctx
	.loc 1 193 0
	movq	img(%rip), %rax	# img, img.7
	movq	14168(%rax), %rdx	# img.7_6->mb_data, D.6334
	movq	img(%rip), %rax	# img, img.8
	movl	12(%rax), %eax	# img.8_8->current_mb_nr, D.6335
	cltq
	imulq	$632, %rax, %rax	#, D.6336, D.6336
	addq	%rdx, %rax	# D.6334, tmp84
	movq	%rax, -8(%rbp)	# tmp84, currMB
	.loc 1 194 0
	movq	-40(%rbp), %rax	# se, tmp85
	movl	4(%rax), %eax	# se_13(D)->value1, tmp86
	movl	%eax, -24(%rbp)	# tmp86, mb_field
	.loc 1 196 0
	movq	-8(%rbp), %rax	# currMB, tmp87
	movl	552(%rax), %eax	# currMB_12->mbAvailA, D.6335
	testl	%eax, %eax	# D.6335
	je	.L23	#,
	.loc 1 197 0
	movq	img(%rip), %rax	# img, img.9
	movq	14168(%rax), %rdx	# img.9_16->mb_data, D.6334
	movq	-8(%rbp), %rax	# currMB, tmp88
	movl	536(%rax), %eax	# currMB_12->mbAddrA, D.6335
	cltq
	imulq	$632, %rax, %rax	#, D.6336, D.6336
	addq	%rdx, %rax	# D.6334, D.6334
	movl	532(%rax), %eax	# _21->mb_field, tmp89
	movl	%eax, -32(%rbp)	# tmp89, a
	jmp	.L24	#
.L23:
	.loc 1 199 0
	movl	$0, -32(%rbp)	#, a
.L24:
	.loc 1 200 0
	movq	-8(%rbp), %rax	# currMB, tmp90
	movl	556(%rax), %eax	# currMB_12->mbAvailB, D.6335
	testl	%eax, %eax	# D.6335
	je	.L25	#,
	.loc 1 201 0
	movq	img(%rip), %rax	# img, img.10
	movq	14168(%rax), %rdx	# img.10_25->mb_data, D.6334
	movq	-8(%rbp), %rax	# currMB, tmp91
	movl	540(%rax), %eax	# currMB_12->mbAddrB, D.6335
	cltq
	imulq	$632, %rax, %rax	#, D.6336, D.6336
	addq	%rdx, %rax	# D.6334, D.6334
	movl	532(%rax), %eax	# _30->mb_field, tmp92
	movl	%eax, -28(%rbp)	# tmp92, b
	jmp	.L26	#
.L25:
	.loc 1 203 0
	movl	$0, -28(%rbp)	#, b
.L26:
	.loc 1 205 0
	movl	-28(%rbp), %eax	# b, tmp97
	movl	-32(%rbp), %edx	# a, tmp98
	addl	%edx, %eax	# tmp98, tmp96
	movl	%eax, -20(%rbp)	# tmp96, act_ctx
	.loc 1 207 0
	cmpl	$0, -24(%rbp)	#, mb_field
	jne	.L27	#,
	.loc 1 208 0
	movl	-20(%rbp), %eax	# act_ctx, tmp100
	cltq
	addq	$87, %rax	#, tmp101
	salq	$4, %rax	#, tmp102
	movq	%rax, %rdx	# tmp102, tmp102
	movq	-16(%rbp), %rax	# ctx, tmp103
	addq	%rax, %rdx	# tmp103, D.6337
	movq	-48(%rbp), %rax	# eep_dp, tmp104
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	biari_encode_symbol	#
	jmp	.L28	#
.L27:
	.loc 1 210 0
	movl	-20(%rbp), %eax	# act_ctx, tmp106
	cltq
	addq	$87, %rax	#, tmp107
	salq	$4, %rax	#, tmp108
	movq	%rax, %rdx	# tmp108, tmp108
	movq	-16(%rbp), %rax	# ctx, tmp109
	addq	%rax, %rdx	# tmp109, D.6337
	movq	-48(%rbp), %rax	# eep_dp, tmp110
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	biari_encode_symbol	#
.L28:
	.loc 1 212 0
	movq	-40(%rbp), %rax	# se, tmp111
	movl	-20(%rbp), %edx	# act_ctx, tmp112
	movl	%edx, 24(%rax)	# tmp112, se_13(D)->context
	.loc 1 214 0
	nop
	.loc 1 215 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	writeFieldModeInfo_CABAC, .-writeFieldModeInfo_CABAC
	.globl	writeMB_skip_flagInfo_CABAC
	.type	writeMB_skip_flagInfo_CABAC, @function
writeMB_skip_flagInfo_CABAC:
.LFB10:
	.loc 1 224 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# se, se
	movq	%rsi, -64(%rbp)	# eep_dp, eep_dp
	.loc 1 226 0
	movq	img(%rip), %rax	# img, img.11
	movl	24(%rax), %eax	# img.11_7->type, D.6338
	cmpl	$1, %eax	#, D.6338
	sete	%al	#, D.6339
	movzbl	%al, %eax	# D.6339, tmp98
	movl	%eax, -24(%rbp)	# tmp98, bframe
	.loc 1 227 0
	movq	img(%rip), %rax	# img, img.12
	movq	14160(%rax), %rax	# img.12_11->currentSlice, D.6340
	movq	32(%rax), %rax	# _12->mot_ctx, tmp99
	movq	%rax, -16(%rbp)	# tmp99, ctx
	.loc 1 228 0
	movq	img(%rip), %rax	# img, img.13
	movq	14168(%rax), %rdx	# img.13_14->mb_data, D.6341
	movq	img(%rip), %rax	# img, img.14
	movl	12(%rax), %eax	# img.14_16->current_mb_nr, D.6338
	cltq
	imulq	$632, %rax, %rax	#, D.6342, D.6342
	addq	%rdx, %rax	# D.6341, tmp100
	movq	%rax, -8(%rbp)	# tmp100, currMB
	.loc 1 229 0
	movq	-56(%rbp), %rax	# se, tmp101
	movl	4(%rax), %eax	# se_21(D)->value1, tmp102
	movl	%eax, -20(%rbp)	# tmp102, curr_mb_type
	.loc 1 231 0
	cmpl	$0, -24(%rbp)	#, bframe
	je	.L31	#,
	.loc 1 233 0
	movq	-8(%rbp), %rax	# currMB, tmp103
	movq	56(%rax), %rax	# currMB_20->mb_available_up, D.6343
	testq	%rax, %rax	# D.6343
	jne	.L32	#,
	.loc 1 234 0
	movl	$0, -32(%rbp)	#, b
	jmp	.L33	#
.L32:
	.loc 1 236 0
	movq	-8(%rbp), %rax	# currMB, tmp104
	movq	56(%rax), %rax	# currMB_20->mb_available_up, D.6343
	movl	624(%rax), %eax	# _25->skip_flag, D.6338
	testl	%eax, %eax	# D.6338
	setne	%al	#, D.6339
	movzbl	%al, %eax	# D.6339, tmp105
	movl	%eax, -32(%rbp)	# tmp105, b
.L33:
	.loc 1 237 0
	movq	-8(%rbp), %rax	# currMB, tmp106
	movq	64(%rax), %rax	# currMB_20->mb_available_left, D.6343
	testq	%rax, %rax	# D.6343
	jne	.L34	#,
	.loc 1 238 0
	movl	$0, -36(%rbp)	#, a
	jmp	.L35	#
.L34:
	.loc 1 240 0
	movq	-8(%rbp), %rax	# currMB, tmp107
	movq	64(%rax), %rax	# currMB_20->mb_available_left, D.6343
	movl	624(%rax), %eax	# _31->skip_flag, D.6338
	testl	%eax, %eax	# D.6338
	setne	%al	#, D.6339
	movzbl	%al, %eax	# D.6339, tmp108
	movl	%eax, -36(%rbp)	# tmp108, a
.L35:
	.loc 1 242 0
	movl	-36(%rbp), %eax	# a, tmp109
	leal	7(%rax), %edx	#, D.6338
	movl	-32(%rbp), %eax	# b, tmp113
	addl	%edx, %eax	# D.6338, tmp112
	movl	%eax, -28(%rbp)	# tmp112, act_ctx
	.loc 1 244 0
	movq	-56(%rbp), %rax	# se, tmp114
	movl	4(%rax), %eax	# se_21(D)->value1, D.6338
	testl	%eax, %eax	# D.6338
	jne	.L36	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# se, tmp115
	movl	8(%rax), %eax	# se_21(D)->value2, D.6338
	testl	%eax, %eax	# D.6338
	jne	.L36	#,
	.loc 1 245 0 is_stmt 1
	movl	-28(%rbp), %eax	# act_ctx, tmp117
	cltq
	addq	$22, %rax	#, tmp118
	salq	$4, %rax	#, tmp119
	movq	%rax, %rdx	# tmp119, tmp119
	movq	-16(%rbp), %rax	# ctx, tmp120
	addq	%rax, %rdx	# tmp120, D.6344
	movq	-64(%rbp), %rax	# eep_dp, tmp121
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	biari_encode_symbol	#
	jmp	.L37	#
.L36:
	.loc 1 247 0
	movl	-28(%rbp), %eax	# act_ctx, tmp123
	cltq
	addq	$22, %rax	#, tmp124
	salq	$4, %rax	#, tmp125
	movq	%rax, %rdx	# tmp125, tmp125
	movq	-16(%rbp), %rax	# ctx, tmp126
	addq	%rax, %rdx	# tmp126, D.6344
	movq	-64(%rbp), %rax	# eep_dp, tmp127
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	biari_encode_symbol	#
.L37:
	.loc 1 249 0
	movq	-56(%rbp), %rax	# se, tmp128
	movl	4(%rax), %eax	# se_21(D)->value1, D.6338
	testl	%eax, %eax	# D.6338
	jne	.L38	#,
	.loc 1 249 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# se, tmp129
	movl	8(%rax), %eax	# se_21(D)->value2, D.6338
	testl	%eax, %eax	# D.6338
	je	.L39	#,
.L38:
	.loc 1 249 0 discriminator 1
	movl	$1, %eax	#, iftmp.15
	jmp	.L40	#
.L39:
	.loc 1 249 0 discriminator 3
	movl	$0, %eax	#, iftmp.15
.L40:
	.loc 1 249 0 discriminator 4
	movq	-8(%rbp), %rdx	# currMB, tmp130
	movl	%eax, 624(%rdx)	# iftmp.15, currMB_20->skip_flag
	jmp	.L41	#
.L31:
	.loc 1 253 0 is_stmt 1
	movq	-8(%rbp), %rax	# currMB, tmp131
	movq	56(%rax), %rax	# currMB_20->mb_available_up, D.6343
	testq	%rax, %rax	# D.6343
	jne	.L42	#,
	.loc 1 254 0
	movl	$0, -32(%rbp)	#, b
	jmp	.L43	#
.L42:
	.loc 1 256 0
	movq	-8(%rbp), %rax	# currMB, tmp132
	movq	56(%rax), %rax	# currMB_20->mb_available_up, D.6343
	movl	624(%rax), %eax	# _48->skip_flag, D.6338
	testl	%eax, %eax	# D.6338
	setne	%al	#, D.6339
	movzbl	%al, %eax	# D.6339, tmp133
	movl	%eax, -32(%rbp)	# tmp133, b
.L43:
	.loc 1 257 0
	movq	-8(%rbp), %rax	# currMB, tmp134
	movq	64(%rax), %rax	# currMB_20->mb_available_left, D.6343
	testq	%rax, %rax	# D.6343
	jne	.L44	#,
	.loc 1 258 0
	movl	$0, -36(%rbp)	#, a
	jmp	.L45	#
.L44:
	.loc 1 260 0
	movq	-8(%rbp), %rax	# currMB, tmp135
	movq	64(%rax), %rax	# currMB_20->mb_available_left, D.6343
	movl	624(%rax), %eax	# _54->skip_flag, D.6338
	testl	%eax, %eax	# D.6338
	setne	%al	#, D.6339
	movzbl	%al, %eax	# D.6339, tmp136
	movl	%eax, -36(%rbp)	# tmp136, a
.L45:
	.loc 1 262 0
	movl	-32(%rbp), %eax	# b, tmp141
	movl	-36(%rbp), %edx	# a, tmp142
	addl	%edx, %eax	# tmp142, tmp140
	movl	%eax, -28(%rbp)	# tmp140, act_ctx
	.loc 1 264 0
	cmpl	$0, -20(%rbp)	#, curr_mb_type
	jne	.L46	#,
	.loc 1 265 0
	movl	-28(%rbp), %eax	# act_ctx, tmp144
	cltq
	addq	$11, %rax	#, tmp145
	salq	$4, %rax	#, tmp146
	movq	%rax, %rdx	# tmp146, tmp146
	movq	-16(%rbp), %rax	# ctx, tmp147
	addq	%rax, %rdx	# tmp147, D.6344
	movq	-64(%rbp), %rax	# eep_dp, tmp148
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	biari_encode_symbol	#
	jmp	.L47	#
.L46:
	.loc 1 267 0
	movl	-28(%rbp), %eax	# act_ctx, tmp150
	cltq
	addq	$11, %rax	#, tmp151
	salq	$4, %rax	#, tmp152
	movq	%rax, %rdx	# tmp152, tmp152
	movq	-16(%rbp), %rax	# ctx, tmp153
	addq	%rax, %rdx	# tmp153, D.6344
	movq	-64(%rbp), %rax	# eep_dp, tmp154
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	biari_encode_symbol	#
.L47:
	.loc 1 269 0
	cmpl	$0, -20(%rbp)	#, curr_mb_type
	setne	%al	#, D.6339
	movzbl	%al, %edx	# D.6339, D.6338
	movq	-8(%rbp), %rax	# currMB, tmp155
	movl	%edx, 624(%rax)	# D.6338, currMB_20->skip_flag
.L41:
	.loc 1 271 0
	movq	-56(%rbp), %rax	# se, tmp156
	movl	-28(%rbp), %edx	# act_ctx, tmp157
	movl	%edx, 24(%rax)	# tmp157, se_21(D)->context
	.loc 1 273 0
	nop
	.loc 1 274 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	writeMB_skip_flagInfo_CABAC, .-writeMB_skip_flagInfo_CABAC
	.globl	writeMB_transform_size_CABAC
	.type	writeMB_transform_size_CABAC, @function
writeMB_transform_size_CABAC:
.LFB11:
	.loc 1 285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# se, se
	movq	%rsi, -48(%rbp)	# eep_dp, eep_dp
	.loc 1 287 0
	movl	$0, -24(%rbp)	#, act_ctx
	.loc 1 290 0
	movq	img(%rip), %rax	# img, img.16
	movq	14160(%rax), %rax	# img.16_4->currentSlice, D.6345
	movq	32(%rax), %rax	# _5->mot_ctx, tmp75
	movq	%rax, -16(%rbp)	# tmp75, ctx
	.loc 1 291 0
	movq	img(%rip), %rax	# img, img.17
	movq	14168(%rax), %rdx	# img.17_7->mb_data, D.6346
	movq	img(%rip), %rax	# img, img.18
	movl	12(%rax), %eax	# img.18_9->current_mb_nr, D.6347
	cltq
	imulq	$632, %rax, %rax	#, D.6348, D.6348
	addq	%rdx, %rax	# D.6346, tmp76
	movq	%rax, -8(%rbp)	# tmp76, currMB
	.loc 1 294 0
	movq	-8(%rbp), %rax	# currMB, tmp77
	movq	56(%rax), %rax	# currMB_13->mb_available_up, D.6349
	testq	%rax, %rax	# D.6349
	jne	.L50	#,
	.loc 1 295 0
	movl	$0, -28(%rbp)	#, b
	jmp	.L51	#
.L50:
	.loc 1 297 0
	movq	-8(%rbp), %rax	# currMB, tmp78
	movq	56(%rax), %rax	# currMB_13->mb_available_up, D.6349
	movl	572(%rax), %eax	# _16->luma_transform_size_8x8_flag, tmp79
	movl	%eax, -28(%rbp)	# tmp79, b
.L51:
	.loc 1 299 0
	movq	-8(%rbp), %rax	# currMB, tmp80
	movq	64(%rax), %rax	# currMB_13->mb_available_left, D.6349
	testq	%rax, %rax	# D.6349
	jne	.L52	#,
	.loc 1 300 0
	movl	$0, -32(%rbp)	#, a
	jmp	.L53	#
.L52:
	.loc 1 302 0
	movq	-8(%rbp), %rax	# currMB, tmp81
	movq	64(%rax), %rax	# currMB_13->mb_available_left, D.6349
	movl	572(%rax), %eax	# _20->luma_transform_size_8x8_flag, tmp82
	movl	%eax, -32(%rbp)	# tmp82, a
.L53:
	.loc 1 304 0
	movl	-28(%rbp), %eax	# b, tmp87
	movl	-32(%rbp), %edx	# a, tmp88
	addl	%edx, %eax	# tmp88, tmp86
	movl	%eax, -24(%rbp)	# tmp86, act_ctx
	.loc 1 305 0
	movq	-8(%rbp), %rax	# currMB, tmp89
	movl	572(%rax), %eax	# currMB_13->luma_transform_size_8x8_flag, tmp90
	movl	%eax, -20(%rbp)	# tmp90, act_sym
	.loc 1 306 0
	movq	-40(%rbp), %rax	# se, tmp91
	movl	-24(%rbp), %edx	# act_ctx, tmp92
	movl	%edx, 24(%rax)	# tmp92, se_24(D)->context
	.loc 1 307 0
	cmpl	$0, -20(%rbp)	#, act_sym
	jne	.L54	#,
	.loc 1 308 0
	movl	-24(%rbp), %eax	# act_ctx, tmp93
	cltq
	addq	$91, %rax	#, tmp94
	salq	$4, %rax	#, tmp95
	movq	%rax, %rdx	# tmp95, tmp95
	movq	-16(%rbp), %rax	# ctx, tmp96
	addq	%rax, %rdx	# tmp96, D.6351
	movq	-48(%rbp), %rax	# eep_dp, tmp97
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	biari_encode_symbol	#
	jmp	.L49	#
.L54:
	.loc 1 310 0
	movl	-24(%rbp), %eax	# act_ctx, tmp98
	cltq
	addq	$91, %rax	#, tmp99
	salq	$4, %rax	#, tmp100
	movq	%rax, %rdx	# tmp100, tmp100
	movq	-16(%rbp), %rax	# ctx, tmp101
	addq	%rax, %rdx	# tmp101, D.6351
	movq	-48(%rbp), %rax	# eep_dp, tmp102
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	biari_encode_symbol	#
.L49:
	.loc 1 312 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	writeMB_transform_size_CABAC, .-writeMB_transform_size_CABAC
	.section	.rodata
	.align 8
.LC2:
	.string	"Unsupported MB-MODE in writeMB_typeInfo_CABAC!"
	.text
	.globl	writeMB_typeInfo_CABAC
	.type	writeMB_typeInfo_CABAC, @function
writeMB_typeInfo_CABAC:
.LFB12:
	.loc 1 323 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# se, se
	movq	%rsi, -80(%rbp)	# eep_dp, eep_dp
	.loc 1 325 0
	movl	$0, -44(%rbp)	#, act_ctx
	.loc 1 328 0
	movq	img(%rip), %rax	# img, img.19
	movl	24(%rax), %eax	# img.19_14->type, D.6352
	cmpl	$1, %eax	#, D.6352
	sete	%al	#, D.6353
	movzbl	%al, %eax	# D.6353, tmp232
	movl	%eax, -32(%rbp)	# tmp232, bframe
	.loc 1 329 0
	movl	$0, -36(%rbp)	#, mode_sym
	.loc 1 333 0
	movq	img(%rip), %rax	# img, img.20
	movq	14160(%rax), %rax	# img.20_19->currentSlice, D.6354
	movq	32(%rax), %rax	# _20->mot_ctx, tmp233
	movq	%rax, -16(%rbp)	# tmp233, ctx
	.loc 1 334 0
	movq	img(%rip), %rax	# img, img.21
	movq	14168(%rax), %rdx	# img.21_22->mb_data, D.6355
	movq	img(%rip), %rax	# img, img.22
	movl	12(%rax), %eax	# img.22_24->current_mb_nr, D.6352
	cltq
	imulq	$632, %rax, %rax	#, D.6356, D.6356
	addq	%rdx, %rax	# D.6355, tmp234
	movq	%rax, -8(%rbp)	# tmp234, currMB
	.loc 1 335 0
	movq	-72(%rbp), %rax	# se, tmp235
	movl	4(%rax), %eax	# se_29(D)->value1, tmp236
	movl	%eax, -28(%rbp)	# tmp236, curr_mb_type
	.loc 1 337 0
	movq	img(%rip), %rax	# img, img.23
	movl	24(%rax), %eax	# img.23_31->type, D.6352
	cmpl	$2, %eax	#, D.6352
	jne	.L57	#,
	.loc 1 339 0
	movq	-8(%rbp), %rax	# currMB, tmp237
	movq	56(%rax), %rax	# currMB_28->mb_available_up, D.6357
	testq	%rax, %rax	# D.6357
	jne	.L58	#,
	.loc 1 340 0
	movl	$0, -48(%rbp)	#, b
	jmp	.L59	#
.L58:
	.loc 1 342 0
	movq	-8(%rbp), %rax	# currMB, tmp238
	movq	56(%rax), %rax	# currMB_28->mb_available_up, D.6357
	movl	72(%rax), %eax	# _35->mb_type, D.6352
	cmpl	$9, %eax	#, D.6352
	je	.L60	#,
	.loc 1 342 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp239
	movq	56(%rax), %rax	# currMB_28->mb_available_up, D.6357
	movl	72(%rax), %eax	# _37->mb_type, D.6352
	cmpl	$13, %eax	#, D.6352
	je	.L60	#,
	.loc 1 342 0 discriminator 3
	movl	$1, %eax	#, iftmp.24
	jmp	.L61	#
.L60:
	.loc 1 342 0 discriminator 2
	movl	$0, %eax	#, iftmp.24
.L61:
	.loc 1 342 0 discriminator 4
	movl	%eax, -48(%rbp)	# iftmp.24, b
.L59:
	.loc 1 344 0 is_stmt 1
	movq	-8(%rbp), %rax	# currMB, tmp240
	movq	64(%rax), %rax	# currMB_28->mb_available_left, D.6357
	testq	%rax, %rax	# D.6357
	jne	.L62	#,
	.loc 1 345 0
	movl	$0, -52(%rbp)	#, a
	jmp	.L63	#
.L62:
	.loc 1 347 0
	movq	-8(%rbp), %rax	# currMB, tmp241
	movq	64(%rax), %rax	# currMB_28->mb_available_left, D.6357
	movl	72(%rax), %eax	# _44->mb_type, D.6352
	cmpl	$9, %eax	#, D.6352
	je	.L64	#,
	.loc 1 347 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp242
	movq	64(%rax), %rax	# currMB_28->mb_available_left, D.6357
	movl	72(%rax), %eax	# _46->mb_type, D.6352
	cmpl	$13, %eax	#, D.6352
	je	.L64	#,
	.loc 1 347 0 discriminator 3
	movl	$1, %eax	#, iftmp.25
	jmp	.L65	#
.L64:
	.loc 1 347 0 discriminator 2
	movl	$0, %eax	#, iftmp.25
.L65:
	.loc 1 347 0 discriminator 4
	movl	%eax, -52(%rbp)	# iftmp.25, a
.L63:
	.loc 1 349 0 is_stmt 1
	movl	-48(%rbp), %eax	# b, tmp247
	movl	-52(%rbp), %edx	# a, tmp248
	addl	%edx, %eax	# tmp248, tmp246
	movl	%eax, -44(%rbp)	# tmp246, act_ctx
	.loc 1 350 0
	movl	-28(%rbp), %eax	# curr_mb_type, tmp249
	movl	%eax, -40(%rbp)	# tmp249, act_sym
	.loc 1 351 0
	movq	-72(%rbp), %rax	# se, tmp250
	movl	-44(%rbp), %edx	# act_ctx, tmp251
	movl	%edx, 24(%rax)	# tmp251, se_29(D)->context
	.loc 1 353 0
	cmpl	$0, -40(%rbp)	#, act_sym
	jne	.L66	#,
	.loc 1 355 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp252
	movslq	%edx, %rdx	# tmp252, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp253
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp253,
	call	biari_encode_symbol	#
	jmp	.L56	#
.L66:
	.loc 1 357 0
	cmpl	$25, -40(%rbp)	#, act_sym
	jne	.L68	#,
	.loc 1 359 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp254
	movslq	%edx, %rdx	# tmp254, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp255
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp255,
	call	biari_encode_symbol	#
	.loc 1 361 0
	movq	-80(%rbp), %rax	# eep_dp, tmp256
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp256,
	call	biari_encode_symbol_final	#
	jmp	.L56	#
.L68:
	.loc 1 365 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp257
	movslq	%edx, %rdx	# tmp257, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp258
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp258,
	call	biari_encode_symbol	#
	.loc 1 367 0
	movq	-80(%rbp), %rax	# eep_dp, tmp259
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp259,
	call	biari_encode_symbol_final	#
	.loc 1 369 0
	movl	-40(%rbp), %eax	# act_sym, tmp263
	subl	$1, %eax	#, tmp262
	movl	%eax, -36(%rbp)	# tmp262, mode_sym
	.loc 1 370 0
	movl	$4, -44(%rbp)	#, act_ctx
	.loc 1 371 0
	movl	-36(%rbp), %ecx	# mode_sym, tmp265
	movl	$715827883, %edx	#, tmp267
	movl	%ecx, %eax	# tmp265, tmp547
	imull	%edx	# tmp267
	sarl	%edx	# tmp268
	movl	%ecx, %eax	# tmp265, tmp269
	sarl	$31, %eax	#, tmp269
	subl	%eax, %edx	# tmp269, tmp264
	movl	%edx, %eax	# tmp264, tmp264
	movl	%eax, -40(%rbp)	# tmp264, act_sym
	.loc 1 372 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp270
	movslq	%edx, %rdx	# tmp270, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movl	-40(%rbp), %eax	# act_sym, tmp271
	movzbl	%al, %ecx	# D.6360, D.6352
	movq	-80(%rbp), %rax	# eep_dp, tmp272
	movl	%ecx, %esi	# D.6352,
	movq	%rax, %rdi	# tmp272,
	call	biari_encode_symbol	#
	.loc 1 373 0
	movl	-36(%rbp), %ecx	# mode_sym, tmp274
	movl	$715827883, %edx	#, tmp276
	movl	%ecx, %eax	# tmp274, tmp548
	imull	%edx	# tmp276
	sarl	%edx	# tmp277
	movl	%ecx, %eax	# tmp274, tmp278
	sarl	$31, %eax	#, tmp278
	subl	%eax, %edx	# tmp278, tmp273
	movl	%edx, %eax	# tmp273, tmp279
	addl	%eax, %eax	# tmp279
	addl	%edx, %eax	# tmp273, tmp279
	sall	$2, %eax	#, tmp280
	subl	%eax, %ecx	# tmp279, tmp281
	movl	%ecx, %eax	# tmp281, tmp281
	movl	%eax, -36(%rbp)	# tmp281, mode_sym
	.loc 1 374 0
	movl	-36(%rbp), %eax	# mode_sym, tmp283
	leal	3(%rax), %edx	#, tmp285
	testl	%eax, %eax	# tmp284
	cmovs	%edx, %eax	# tmp285,, tmp284
	sarl	$2, %eax	#, tmp286
	movl	%eax, -40(%rbp)	# tmp286, act_sym
	.loc 1 375 0
	movl	$5, -44(%rbp)	#, act_ctx
	.loc 1 376 0
	cmpl	$0, -40(%rbp)	#, act_sym
	jne	.L69	#,
	.loc 1 378 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp287
	movslq	%edx, %rdx	# tmp287, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp288
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp288,
	call	biari_encode_symbol	#
	jmp	.L70	#
.L69:
	.loc 1 382 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp289
	movslq	%edx, %rdx	# tmp289, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp290
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp290,
	call	biari_encode_symbol	#
	.loc 1 383 0
	movl	$6, -44(%rbp)	#, act_ctx
	.loc 1 384 0
	cmpl	$1, -40(%rbp)	#, act_sym
	jne	.L71	#,
	.loc 1 386 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp291
	movslq	%edx, %rdx	# tmp291, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp292
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp292,
	call	biari_encode_symbol	#
	jmp	.L70	#
.L71:
	.loc 1 390 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp293
	movslq	%edx, %rdx	# tmp293, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp294
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp294,
	call	biari_encode_symbol	#
.L70:
	.loc 1 393 0
	movl	-36(%rbp), %eax	# mode_sym, tmp296
	cltd
	shrl	$30, %edx	#, tmp298
	addl	%edx, %eax	# tmp298, tmp299
	andl	$3, %eax	#, tmp300
	subl	%edx, %eax	# tmp298, tmp301
	movl	%eax, -36(%rbp)	# tmp301, mode_sym
	.loc 1 394 0
	movl	-36(%rbp), %eax	# mode_sym, tmp303
	movl	%eax, %edx	# tmp303, tmp304
	shrl	$31, %edx	#, tmp304
	addl	%edx, %eax	# tmp304, tmp305
	sarl	%eax	# tmp306
	movl	%eax, -40(%rbp)	# tmp306, act_sym
	.loc 1 395 0
	movl	$7, -44(%rbp)	#, act_ctx
	.loc 1 396 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp307
	movslq	%edx, %rdx	# tmp307, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movl	-40(%rbp), %eax	# act_sym, tmp308
	movzbl	%al, %ecx	# D.6360, D.6352
	movq	-80(%rbp), %rax	# eep_dp, tmp309
	movl	%ecx, %esi	# D.6352,
	movq	%rax, %rdi	# tmp309,
	call	biari_encode_symbol	#
	.loc 1 397 0
	movl	$8, -44(%rbp)	#, act_ctx
	.loc 1 398 0
	movl	-36(%rbp), %eax	# mode_sym, tmp311
	cltd
	shrl	$31, %edx	#, tmp313
	addl	%edx, %eax	# tmp313, tmp314
	andl	$1, %eax	#, tmp315
	subl	%edx, %eax	# tmp313, tmp316
	movl	%eax, -40(%rbp)	# tmp316, act_sym
	.loc 1 399 0
	movq	-16(%rbp), %rax	# ctx, D.6358
	movl	-44(%rbp), %edx	# act_ctx, tmp317
	movslq	%edx, %rdx	# tmp317, D.6356
	salq	$4, %rdx	#, D.6356
	addq	%rax, %rdx	# D.6358, D.6359
	movl	-40(%rbp), %eax	# act_sym, tmp318
	movzbl	%al, %ecx	# D.6360, D.6352
	movq	-80(%rbp), %rax	# eep_dp, tmp319
	movl	%ecx, %esi	# D.6352,
	movq	%rax, %rdi	# tmp319,
	call	biari_encode_symbol	#
	jmp	.L56	#
.L57:
	.loc 1 405 0
	cmpl	$0, -32(%rbp)	#, bframe
	je	.L73	#,
	.loc 1 407 0
	movq	-8(%rbp), %rax	# currMB, tmp320
	movq	56(%rax), %rax	# currMB_28->mb_available_up, D.6357
	testq	%rax, %rax	# D.6357
	jne	.L74	#,
	.loc 1 408 0
	movl	$0, -48(%rbp)	#, b
	jmp	.L75	#
.L74:
	.loc 1 410 0
	movq	-8(%rbp), %rax	# currMB, tmp321
	movq	56(%rax), %rax	# currMB_28->mb_available_up, D.6357
	movl	72(%rax), %eax	# _114->mb_type, D.6352
	testl	%eax, %eax	# D.6352
	setne	%al	#, D.6353
	movzbl	%al, %eax	# D.6353, tmp322
	movl	%eax, -48(%rbp)	# tmp322, b
.L75:
	.loc 1 411 0
	movq	-8(%rbp), %rax	# currMB, tmp323
	movq	64(%rax), %rax	# currMB_28->mb_available_left, D.6357
	testq	%rax, %rax	# D.6357
	jne	.L76	#,
	.loc 1 412 0
	movl	$0, -52(%rbp)	#, a
	jmp	.L77	#
.L76:
	.loc 1 414 0
	movq	-8(%rbp), %rax	# currMB, tmp324
	movq	64(%rax), %rax	# currMB_28->mb_available_left, D.6357
	movl	72(%rax), %eax	# _120->mb_type, D.6352
	testl	%eax, %eax	# D.6352
	setne	%al	#, D.6353
	movzbl	%al, %eax	# D.6353, tmp325
	movl	%eax, -52(%rbp)	# tmp325, a
.L77:
	.loc 1 415 0
	movl	-48(%rbp), %eax	# b, tmp330
	movl	-52(%rbp), %edx	# a, tmp331
	addl	%edx, %eax	# tmp331, tmp329
	movl	%eax, -44(%rbp)	# tmp329, act_ctx
	.loc 1 416 0
	movq	-72(%rbp), %rax	# se, tmp332
	movl	-44(%rbp), %edx	# act_ctx, tmp333
	movl	%edx, 24(%rax)	# tmp333, se_29(D)->context
.L73:
	.loc 1 418 0
	movl	-28(%rbp), %eax	# curr_mb_type, tmp334
	movl	%eax, -40(%rbp)	# tmp334, act_sym
	.loc 1 420 0
	cmpl	$0, -32(%rbp)	#, bframe
	je	.L78	#,
	.loc 1 420 0 is_stmt 0 discriminator 1
	movl	$24, %eax	#, iftmp.26
	jmp	.L79	#
.L78:
	.loc 1 420 0 discriminator 2
	movl	$7, %eax	#, iftmp.26
.L79:
	.loc 1 420 0 discriminator 3
	movl	%eax, -24(%rbp)	# iftmp.26, mode16x16
	movl	-24(%rbp), %eax	# mode16x16, tmp335
	cmpl	-40(%rbp), %eax	# act_sym, tmp335
	jg	.L80	#,
	.loc 1 422 0 is_stmt 1
	movl	-24(%rbp), %eax	# mode16x16, tmp340
	movl	-40(%rbp), %edx	# act_sym, tmp341
	subl	%eax, %edx	# tmp340, tmp339
	movl	%edx, %eax	# tmp339, tmp339
	movl	%eax, -36(%rbp)	# tmp339, mode_sym
	.loc 1 423 0
	movl	-24(%rbp), %eax	# mode16x16, tmp342
	movl	%eax, -40(%rbp)	# tmp342, act_sym
.L80:
	.loc 1 428 0
	cmpl	$0, -32(%rbp)	#, bframe
	jne	.L81	#,
	.loc 1 430 0
	cmpl	$7, -40(%rbp)	#, act_sym
	ja	.L82	#,
	movl	-40(%rbp), %eax	# act_sym, tmp343
	movq	.L84(,%rax,8), %rax	#, tmp344
	jmp	*%rax	# tmp344
	.section	.rodata
	.align 8
	.align 4
.L84:
	.quad	.L121
	.quad	.L85
	.quad	.L86
	.quad	.L87
	.quad	.L88
	.quad	.L88
	.quad	.L89
	.quad	.L90
	.text
.L85:
	.loc 1 435 0
	movq	-16(%rbp), %rax	# ctx, tmp345
	leaq	240(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp346
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp346,
	call	biari_encode_symbol	#
	.loc 1 436 0
	movq	-16(%rbp), %rax	# ctx, tmp347
	leaq	256(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp348
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp348,
	call	biari_encode_symbol	#
	.loc 1 437 0
	movq	-16(%rbp), %rax	# ctx, tmp349
	leaq	272(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp350
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp350,
	call	biari_encode_symbol	#
	.loc 1 438 0
	jmp	.L91	#
.L86:
	.loc 1 440 0
	movq	-16(%rbp), %rax	# ctx, tmp351
	leaq	240(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp352
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp352,
	call	biari_encode_symbol	#
	.loc 1 441 0
	movq	-16(%rbp), %rax	# ctx, tmp353
	leaq	256(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp354
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp354,
	call	biari_encode_symbol	#
	.loc 1 442 0
	movq	-16(%rbp), %rax	# ctx, tmp355
	leaq	288(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp356
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp356,
	call	biari_encode_symbol	#
	.loc 1 443 0
	jmp	.L91	#
.L87:
	.loc 1 445 0
	movq	-16(%rbp), %rax	# ctx, tmp357
	leaq	240(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp358
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp358,
	call	biari_encode_symbol	#
	.loc 1 446 0
	movq	-16(%rbp), %rax	# ctx, tmp359
	leaq	256(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp360
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp360,
	call	biari_encode_symbol	#
	.loc 1 447 0
	movq	-16(%rbp), %rax	# ctx, tmp361
	leaq	288(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp362
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp362,
	call	biari_encode_symbol	#
	.loc 1 448 0
	jmp	.L91	#
.L88:
	.loc 1 451 0
	movq	-16(%rbp), %rax	# ctx, tmp363
	leaq	240(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp364
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp364,
	call	biari_encode_symbol	#
	.loc 1 452 0
	movq	-16(%rbp), %rax	# ctx, tmp365
	leaq	256(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp366
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp366,
	call	biari_encode_symbol	#
	.loc 1 453 0
	movq	-16(%rbp), %rax	# ctx, tmp367
	leaq	272(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp368
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp368,
	call	biari_encode_symbol	#
	.loc 1 454 0
	jmp	.L91	#
.L89:
	.loc 1 456 0
	movq	-16(%rbp), %rax	# ctx, tmp369
	leaq	240(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp370
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp370,
	call	biari_encode_symbol	#
	.loc 1 457 0
	movq	-16(%rbp), %rax	# ctx, tmp371
	leaq	288(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp372
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp372,
	call	biari_encode_symbol	#
	.loc 1 458 0
	jmp	.L91	#
.L90:
	.loc 1 460 0
	movq	-16(%rbp), %rax	# ctx, tmp373
	leaq	240(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp374
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp374,
	call	biari_encode_symbol	#
	.loc 1 461 0
	movq	-16(%rbp), %rax	# ctx, tmp375
	leaq	288(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp376
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp376,
	call	biari_encode_symbol	#
	.loc 1 462 0
	jmp	.L91	#
.L82:
	.loc 1 464 0
	movl	$.LC2, %edi	#,
	call	puts	#
	.loc 1 465 0
	movl	$1, %edi	#,
	call	exit	#
.L121:
	.loc 1 433 0
	nop
.L91:
	jmp	.L92	#
.L81:
	.loc 1 470 0
	cmpl	$0, -40(%rbp)	#, act_sym
	jne	.L93	#,
	.loc 1 472 0
	movl	-44(%rbp), %eax	# act_ctx, tmp378
	cltq
	addq	$22, %rax	#, tmp379
	salq	$4, %rax	#, tmp380
	movq	%rax, %rdx	# tmp380, tmp380
	movq	-16(%rbp), %rax	# ctx, tmp381
	addq	%rax, %rdx	# tmp381, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp382
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp382,
	call	biari_encode_symbol	#
	jmp	.L92	#
.L93:
	.loc 1 474 0
	cmpl	$2, -40(%rbp)	#, act_sym
	jg	.L94	#,
	.loc 1 476 0
	movl	-44(%rbp), %eax	# act_ctx, tmp384
	cltq
	addq	$22, %rax	#, tmp385
	salq	$4, %rax	#, tmp386
	movq	%rax, %rdx	# tmp386, tmp386
	movq	-16(%rbp), %rax	# ctx, tmp387
	addq	%rax, %rdx	# tmp387, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp388
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp388,
	call	biari_encode_symbol	#
	.loc 1 477 0
	movq	-16(%rbp), %rax	# ctx, tmp389
	leaq	416(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp390
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp390,
	call	biari_encode_symbol	#
	.loc 1 478 0
	movl	-40(%rbp), %eax	# act_sym, tmp394
	subl	$1, %eax	#, tmp393
	movl	%eax, -20(%rbp)	# tmp393, csym
	.loc 1 479 0
	cmpl	$0, -20(%rbp)	#, csym
	je	.L95	#,
	.loc 1 479 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctx, tmp395
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp396
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp396,
	call	biari_encode_symbol	#
	jmp	.L92	#
.L95:
	.loc 1 480 0 is_stmt 1
	movq	-16(%rbp), %rax	# ctx, tmp397
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp398
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp398,
	call	biari_encode_symbol	#
	jmp	.L92	#
.L94:
	.loc 1 482 0
	cmpl	$10, -40(%rbp)	#, act_sym
	jg	.L97	#,
	.loc 1 484 0
	movl	-44(%rbp), %eax	# act_ctx, tmp400
	cltq
	addq	$22, %rax	#, tmp401
	salq	$4, %rax	#, tmp402
	movq	%rax, %rdx	# tmp402, tmp402
	movq	-16(%rbp), %rax	# ctx, tmp403
	addq	%rax, %rdx	# tmp403, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp404
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp404,
	call	biari_encode_symbol	#
	.loc 1 485 0
	movq	-16(%rbp), %rax	# ctx, tmp405
	leaq	416(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp406
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp406,
	call	biari_encode_symbol	#
	.loc 1 486 0
	movq	-16(%rbp), %rax	# ctx, tmp407
	leaq	432(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp408
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp408,
	call	biari_encode_symbol	#
	.loc 1 487 0
	movl	-40(%rbp), %eax	# act_sym, tmp409
	subl	$3, %eax	#, D.6352
	sarl	$2, %eax	#, D.6352
	andl	$1, %eax	#, tmp410
	movl	%eax, -20(%rbp)	# tmp410, csym
	.loc 1 488 0
	cmpl	$0, -20(%rbp)	#, csym
	je	.L98	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctx, tmp411
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp412
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp412,
	call	biari_encode_symbol	#
	jmp	.L99	#
.L98:
	.loc 1 489 0 is_stmt 1
	movq	-16(%rbp), %rax	# ctx, tmp413
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp414
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp414,
	call	biari_encode_symbol	#
.L99:
	.loc 1 490 0
	movl	-40(%rbp), %eax	# act_sym, tmp415
	subl	$3, %eax	#, D.6352
	sarl	%eax	# D.6352
	andl	$1, %eax	#, tmp416
	movl	%eax, -20(%rbp)	# tmp416, csym
	.loc 1 491 0
	cmpl	$0, -20(%rbp)	#, csym
	je	.L100	#,
	.loc 1 491 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctx, tmp417
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp418
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp418,
	call	biari_encode_symbol	#
	jmp	.L101	#
.L100:
	.loc 1 492 0 is_stmt 1
	movq	-16(%rbp), %rax	# ctx, tmp419
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp420
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp420,
	call	biari_encode_symbol	#
.L101:
	.loc 1 493 0
	movl	-40(%rbp), %eax	# act_sym, tmp421
	subl	$3, %eax	#, D.6352
	andl	$1, %eax	#, tmp422
	movl	%eax, -20(%rbp)	# tmp422, csym
	.loc 1 494 0
	cmpl	$0, -20(%rbp)	#, csym
	je	.L102	#,
	.loc 1 494 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctx, tmp423
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp424
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp424,
	call	biari_encode_symbol	#
	jmp	.L92	#
.L102:
	.loc 1 495 0 is_stmt 1
	movq	-16(%rbp), %rax	# ctx, tmp425
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp426
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp426,
	call	biari_encode_symbol	#
	jmp	.L92	#
.L97:
	.loc 1 497 0
	cmpl	$11, -40(%rbp)	#, act_sym
	je	.L104	#,
	.loc 1 497 0 is_stmt 0 discriminator 1
	cmpl	$22, -40(%rbp)	#, act_sym
	jne	.L105	#,
.L104:
	.loc 1 499 0 is_stmt 1
	movl	-44(%rbp), %eax	# act_ctx, tmp428
	cltq
	addq	$22, %rax	#, tmp429
	salq	$4, %rax	#, tmp430
	movq	%rax, %rdx	# tmp430, tmp430
	movq	-16(%rbp), %rax	# ctx, tmp431
	addq	%rax, %rdx	# tmp431, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp432
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp432,
	call	biari_encode_symbol	#
	.loc 1 500 0
	movq	-16(%rbp), %rax	# ctx, tmp433
	leaq	416(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp434
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp434,
	call	biari_encode_symbol	#
	.loc 1 501 0
	movq	-16(%rbp), %rax	# ctx, tmp435
	leaq	432(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp436
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp436,
	call	biari_encode_symbol	#
	.loc 1 502 0
	movq	-16(%rbp), %rax	# ctx, tmp437
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp438
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp438,
	call	biari_encode_symbol	#
	.loc 1 503 0
	movq	-16(%rbp), %rax	# ctx, tmp439
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp440
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp440,
	call	biari_encode_symbol	#
	.loc 1 504 0
	cmpl	$11, -40(%rbp)	#, act_sym
	jne	.L106	#,
	.loc 1 504 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctx, tmp441
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp442
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp442,
	call	biari_encode_symbol	#
	jmp	.L92	#
.L106:
	.loc 1 505 0 is_stmt 1
	movq	-16(%rbp), %rax	# ctx, tmp443
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp444
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp444,
	call	biari_encode_symbol	#
	.loc 1 504 0
	jmp	.L92	#
.L105:
	.loc 1 509 0
	cmpl	$22, -40(%rbp)	#, act_sym
	jle	.L108	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	subl	$1, -40(%rbp)	#, act_sym
.L108:
	.loc 1 510 0 is_stmt 1
	movl	-44(%rbp), %eax	# act_ctx, tmp446
	cltq
	addq	$22, %rax	#, tmp447
	salq	$4, %rax	#, tmp448
	movq	%rax, %rdx	# tmp448, tmp448
	movq	-16(%rbp), %rax	# ctx, tmp449
	addq	%rax, %rdx	# tmp449, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp450
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp450,
	call	biari_encode_symbol	#
	.loc 1 511 0
	movq	-16(%rbp), %rax	# ctx, tmp451
	leaq	416(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp452
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp452,
	call	biari_encode_symbol	#
	.loc 1 512 0
	movq	-16(%rbp), %rax	# ctx, tmp453
	leaq	432(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp454
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp454,
	call	biari_encode_symbol	#
	.loc 1 513 0
	movl	-40(%rbp), %eax	# act_sym, tmp455
	subl	$12, %eax	#, D.6352
	sarl	$3, %eax	#, D.6352
	andl	$1, %eax	#, tmp456
	movl	%eax, -20(%rbp)	# tmp456, csym
	.loc 1 514 0
	cmpl	$0, -20(%rbp)	#, csym
	je	.L109	#,
	.loc 1 514 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctx, tmp457
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp458
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp458,
	call	biari_encode_symbol	#
	jmp	.L110	#
.L109:
	.loc 1 515 0 is_stmt 1
	movq	-16(%rbp), %rax	# ctx, tmp459
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp460
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp460,
	call	biari_encode_symbol	#
.L110:
	.loc 1 516 0
	movl	-40(%rbp), %eax	# act_sym, tmp461
	subl	$12, %eax	#, D.6352
	sarl	$2, %eax	#, D.6352
	andl	$1, %eax	#, tmp462
	movl	%eax, -20(%rbp)	# tmp462, csym
	.loc 1 517 0
	cmpl	$0, -20(%rbp)	#, csym
	je	.L111	#,
	.loc 1 517 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctx, tmp463
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp464
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp464,
	call	biari_encode_symbol	#
	jmp	.L112	#
.L111:
	.loc 1 518 0 is_stmt 1
	movq	-16(%rbp), %rax	# ctx, tmp465
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp466
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp466,
	call	biari_encode_symbol	#
.L112:
	.loc 1 519 0
	movl	-40(%rbp), %eax	# act_sym, tmp467
	subl	$12, %eax	#, D.6352
	sarl	%eax	# D.6352
	andl	$1, %eax	#, tmp468
	movl	%eax, -20(%rbp)	# tmp468, csym
	.loc 1 520 0
	cmpl	$0, -20(%rbp)	#, csym
	je	.L113	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctx, tmp469
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp470
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp470,
	call	biari_encode_symbol	#
	jmp	.L114	#
.L113:
	.loc 1 521 0 is_stmt 1
	movq	-16(%rbp), %rax	# ctx, tmp471
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp472
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp472,
	call	biari_encode_symbol	#
.L114:
	.loc 1 522 0
	movl	-40(%rbp), %eax	# act_sym, tmp476
	andl	$1, %eax	#, tmp475
	movl	%eax, -20(%rbp)	# tmp475, csym
	.loc 1 523 0
	cmpl	$0, -20(%rbp)	#, csym
	je	.L115	#,
	.loc 1 523 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# ctx, tmp477
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp478
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp478,
	call	biari_encode_symbol	#
	jmp	.L116	#
.L115:
	.loc 1 524 0 is_stmt 1
	movq	-16(%rbp), %rax	# ctx, tmp479
	leaq	448(%rax), %rdx	#, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp480
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp480,
	call	biari_encode_symbol	#
.L116:
	.loc 1 525 0
	cmpl	$21, -40(%rbp)	#, act_sym
	jle	.L92	#,
	.loc 1 525 0 is_stmt 0 discriminator 1
	addl	$1, -40(%rbp)	#, act_sym
.L92:
	.loc 1 529 0 is_stmt 1
	movl	-40(%rbp), %eax	# act_sym, tmp481
	cmpl	-24(%rbp), %eax	# mode16x16, tmp481
	jne	.L56	#,
	.loc 1 531 0
	cmpl	$25, -36(%rbp)	#, mode_sym
	jne	.L117	#,
	.loc 1 533 0
	movq	-80(%rbp), %rax	# eep_dp, tmp482
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp482,
	call	biari_encode_symbol_final	#
	.loc 1 534 0
	jmp	.L56	#
.L117:
	.loc 1 536 0
	movq	-80(%rbp), %rax	# eep_dp, tmp483
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp483,
	call	biari_encode_symbol_final	#
	.loc 1 538 0
	movl	$8, -44(%rbp)	#, act_ctx
	.loc 1 539 0
	movl	-36(%rbp), %ecx	# mode_sym, tmp485
	movl	$715827883, %edx	#, tmp487
	movl	%ecx, %eax	# tmp485, tmp549
	imull	%edx	# tmp487
	sarl	%edx	# tmp488
	movl	%ecx, %eax	# tmp485, tmp489
	sarl	$31, %eax	#, tmp489
	subl	%eax, %edx	# tmp489, tmp484
	movl	%edx, %eax	# tmp484, tmp484
	movl	%eax, -40(%rbp)	# tmp484, act_sym
	.loc 1 540 0
	movq	-16(%rbp), %rax	# ctx, tmp490
	leaq	176(%rax), %rdx	#, D.6358
	movl	-44(%rbp), %eax	# act_ctx, tmp491
	cltq
	salq	$4, %rax	#, D.6356
	addq	%rax, %rdx	# D.6356, D.6359
	movl	-40(%rbp), %eax	# act_sym, tmp492
	movzbl	%al, %ecx	# D.6360, D.6352
	movq	-80(%rbp), %rax	# eep_dp, tmp493
	movl	%ecx, %esi	# D.6352,
	movq	%rax, %rdi	# tmp493,
	call	biari_encode_symbol	#
	.loc 1 541 0
	movl	-36(%rbp), %ecx	# mode_sym, tmp495
	movl	$715827883, %edx	#, tmp497
	movl	%ecx, %eax	# tmp495, tmp550
	imull	%edx	# tmp497
	sarl	%edx	# tmp498
	movl	%ecx, %eax	# tmp495, tmp499
	sarl	$31, %eax	#, tmp499
	subl	%eax, %edx	# tmp499, tmp494
	movl	%edx, %eax	# tmp494, tmp500
	addl	%eax, %eax	# tmp500
	addl	%edx, %eax	# tmp494, tmp500
	sall	$2, %eax	#, tmp501
	subl	%eax, %ecx	# tmp500, tmp502
	movl	%ecx, %eax	# tmp502, tmp502
	movl	%eax, -36(%rbp)	# tmp502, mode_sym
	.loc 1 543 0
	movl	-36(%rbp), %eax	# mode_sym, tmp504
	leal	3(%rax), %edx	#, tmp506
	testl	%eax, %eax	# tmp505
	cmovs	%edx, %eax	# tmp506,, tmp505
	sarl	$2, %eax	#, tmp507
	movl	%eax, -40(%rbp)	# tmp507, act_sym
	.loc 1 544 0
	movl	$9, -44(%rbp)	#, act_ctx
	.loc 1 545 0
	cmpl	$0, -40(%rbp)	#, act_sym
	jne	.L118	#,
	.loc 1 547 0
	movq	-16(%rbp), %rax	# ctx, tmp508
	leaq	176(%rax), %rdx	#, D.6358
	movl	-44(%rbp), %eax	# act_ctx, tmp509
	cltq
	salq	$4, %rax	#, D.6356
	addq	%rax, %rdx	# D.6356, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp510
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp510,
	call	biari_encode_symbol	#
	jmp	.L119	#
.L118:
	.loc 1 551 0
	movq	-16(%rbp), %rax	# ctx, tmp511
	leaq	176(%rax), %rdx	#, D.6358
	movl	-44(%rbp), %eax	# act_ctx, tmp512
	cltq
	salq	$4, %rax	#, D.6356
	addq	%rax, %rdx	# D.6356, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp513
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp513,
	call	biari_encode_symbol	#
	.loc 1 552 0
	cmpl	$1, -40(%rbp)	#, act_sym
	jne	.L120	#,
	.loc 1 554 0
	movq	-16(%rbp), %rax	# ctx, tmp514
	leaq	176(%rax), %rdx	#, D.6358
	movl	-44(%rbp), %eax	# act_ctx, tmp515
	cltq
	salq	$4, %rax	#, D.6356
	addq	%rax, %rdx	# D.6356, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp516
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp516,
	call	biari_encode_symbol	#
	jmp	.L119	#
.L120:
	.loc 1 558 0
	movq	-16(%rbp), %rax	# ctx, tmp517
	leaq	176(%rax), %rdx	#, D.6358
	movl	-44(%rbp), %eax	# act_ctx, tmp518
	cltq
	salq	$4, %rax	#, D.6356
	addq	%rax, %rdx	# D.6356, D.6359
	movq	-80(%rbp), %rax	# eep_dp, tmp519
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp519,
	call	biari_encode_symbol	#
.L119:
	.loc 1 562 0
	movl	-36(%rbp), %eax	# mode_sym, tmp521
	cltd
	shrl	$30, %edx	#, tmp523
	addl	%edx, %eax	# tmp523, tmp524
	andl	$3, %eax	#, tmp525
	subl	%edx, %eax	# tmp523, tmp526
	movl	%eax, -36(%rbp)	# tmp526, mode_sym
	.loc 1 563 0
	movl	$10, -44(%rbp)	#, act_ctx
	.loc 1 564 0
	movl	-36(%rbp), %eax	# mode_sym, tmp528
	movl	%eax, %edx	# tmp528, tmp529
	shrl	$31, %edx	#, tmp529
	addl	%edx, %eax	# tmp529, tmp530
	sarl	%eax	# tmp531
	movl	%eax, -40(%rbp)	# tmp531, act_sym
	.loc 1 565 0
	movq	-16(%rbp), %rax	# ctx, tmp532
	leaq	176(%rax), %rdx	#, D.6358
	movl	-44(%rbp), %eax	# act_ctx, tmp533
	cltq
	salq	$4, %rax	#, D.6356
	addq	%rax, %rdx	# D.6356, D.6359
	movl	-40(%rbp), %eax	# act_sym, tmp534
	movzbl	%al, %ecx	# D.6360, D.6352
	movq	-80(%rbp), %rax	# eep_dp, tmp535
	movl	%ecx, %esi	# D.6352,
	movq	%rax, %rdi	# tmp535,
	call	biari_encode_symbol	#
	.loc 1 566 0
	movl	-36(%rbp), %eax	# mode_sym, tmp537
	cltd
	shrl	$31, %edx	#, tmp539
	addl	%edx, %eax	# tmp539, tmp540
	andl	$1, %eax	#, tmp541
	subl	%edx, %eax	# tmp539, tmp542
	movl	%eax, -40(%rbp)	# tmp542, act_sym
	.loc 1 567 0
	movq	-16(%rbp), %rax	# ctx, tmp543
	leaq	176(%rax), %rdx	#, D.6358
	movl	-44(%rbp), %eax	# act_ctx, tmp544
	cltq
	salq	$4, %rax	#, D.6356
	addq	%rax, %rdx	# D.6356, D.6359
	movl	-40(%rbp), %eax	# act_sym, tmp545
	movzbl	%al, %ecx	# D.6360, D.6352
	movq	-80(%rbp), %rax	# eep_dp, tmp546
	movl	%ecx, %esi	# D.6352,
	movq	%rax, %rdi	# tmp546,
	call	biari_encode_symbol	#
.L56:
	.loc 1 570 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	writeMB_typeInfo_CABAC, .-writeMB_typeInfo_CABAC
	.globl	writeB8_typeInfo_CABAC
	.type	writeB8_typeInfo_CABAC, @function
writeB8_typeInfo_CABAC:
.LFB13:
	.loc 1 581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# se, se
	movq	%rsi, -48(%rbp)	# eep_dp, eep_dp
	.loc 1 584 0
	movq	img(%rip), %rax	# img, img.27
	movl	24(%rax), %eax	# img.27_1->type, D.6362
	cmpl	$1, %eax	#, D.6362
	sete	%al	#, D.6363
	movzbl	%al, %eax	# D.6363, tmp100
	movl	%eax, -24(%rbp)	# tmp100, bframe
	.loc 1 586 0
	movq	img(%rip), %rax	# img, img.28
	movq	14160(%rax), %rax	# img.28_5->currentSlice, D.6364
	movq	32(%rax), %rax	# _6->mot_ctx, tmp101
	movq	%rax, -8(%rbp)	# tmp101, ctx
	.loc 1 588 0
	movq	-40(%rbp), %rax	# se, tmp102
	movl	4(%rax), %eax	# se_8(D)->value1, tmp103
	movl	%eax, -20(%rbp)	# tmp103, act_sym
	.loc 1 589 0
	movl	$0, -16(%rbp)	#, act_ctx
	.loc 1 591 0
	cmpl	$0, -24(%rbp)	#, bframe
	jne	.L123	#,
	.loc 1 593 0
	movl	-20(%rbp), %eax	# act_sym, act_sym
	cmpl	$1, %eax	#, act_sym
	je	.L125	#,
	cmpl	$1, %eax	#, act_sym
	jg	.L126	#,
	testl	%eax, %eax	# act_sym
	je	.L127	#,
	jmp	.L122	#
.L126:
	cmpl	$2, %eax	#, act_sym
	je	.L128	#,
	cmpl	$3, %eax	#, act_sym
	je	.L129	#,
	jmp	.L122	#
.L127:
	.loc 1 596 0
	movq	-8(%rbp), %rax	# ctx, tmp105
	leaq	544(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp106
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	biari_encode_symbol	#
	.loc 1 597 0
	jmp	.L124	#
.L125:
	.loc 1 599 0
	movq	-8(%rbp), %rax	# ctx, tmp107
	leaq	544(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp108
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	biari_encode_symbol	#
	.loc 1 600 0
	movq	-8(%rbp), %rax	# ctx, tmp109
	leaq	576(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp110
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	biari_encode_symbol	#
	.loc 1 601 0
	jmp	.L124	#
.L128:
	.loc 1 603 0
	movq	-8(%rbp), %rax	# ctx, tmp111
	leaq	544(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp112
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	biari_encode_symbol	#
	.loc 1 604 0
	movq	-8(%rbp), %rax	# ctx, tmp113
	leaq	576(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp114
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	biari_encode_symbol	#
	.loc 1 605 0
	movq	-8(%rbp), %rax	# ctx, tmp115
	leaq	592(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp116
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	biari_encode_symbol	#
	.loc 1 606 0
	jmp	.L124	#
.L129:
	.loc 1 608 0
	movq	-8(%rbp), %rax	# ctx, tmp117
	leaq	544(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp118
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	biari_encode_symbol	#
	.loc 1 609 0
	movq	-8(%rbp), %rax	# ctx, tmp119
	leaq	576(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp120
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	biari_encode_symbol	#
	.loc 1 610 0
	movq	-8(%rbp), %rax	# ctx, tmp121
	leaq	592(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp122
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	biari_encode_symbol	#
	.loc 1 611 0
	nop
.L124:
	jmp	.L122	#
.L123:
	.loc 1 616 0
	cmpl	$0, -20(%rbp)	#, act_sym
	jne	.L131	#,
	.loc 1 618 0
	movq	-8(%rbp), %rax	# ctx, tmp123
	leaq	672(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp124
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	biari_encode_symbol	#
	.loc 1 619 0
	jmp	.L122	#
.L131:
	.loc 1 623 0
	movq	-8(%rbp), %rax	# ctx, tmp125
	leaq	672(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp126
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	biari_encode_symbol	#
	.loc 1 624 0
	subl	$1, -20(%rbp)	#, act_sym
	.loc 1 626 0
	cmpl	$1, -20(%rbp)	#, act_sym
	jg	.L132	#,
	.loc 1 628 0
	movq	-8(%rbp), %rax	# ctx, tmp127
	leaq	688(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp128
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	biari_encode_symbol	#
	.loc 1 629 0
	cmpl	$0, -20(%rbp)	#, act_sym
	jne	.L133	#,
	.loc 1 629 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ctx, tmp129
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp130
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	biari_encode_symbol	#
	jmp	.L122	#
.L133:
	.loc 1 630 0 is_stmt 1
	movq	-8(%rbp), %rax	# ctx, tmp131
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp132
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	biari_encode_symbol	#
	jmp	.L122	#
.L132:
	.loc 1 632 0
	cmpl	$5, -20(%rbp)	#, act_sym
	jg	.L135	#,
	.loc 1 634 0
	movq	-8(%rbp), %rax	# ctx, tmp133
	leaq	688(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp134
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	biari_encode_symbol	#
	.loc 1 635 0
	movq	-8(%rbp), %rax	# ctx, tmp135
	leaq	704(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp136
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	biari_encode_symbol	#
	.loc 1 636 0
	movl	-20(%rbp), %eax	# act_sym, tmp137
	subl	$2, %eax	#, D.6362
	sarl	%eax	# D.6362
	andl	$1, %eax	#, tmp138
	movl	%eax, -12(%rbp)	# tmp138, csym
	.loc 1 637 0
	cmpl	$0, -12(%rbp)	#, csym
	je	.L136	#,
	.loc 1 637 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ctx, tmp139
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp140
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	biari_encode_symbol	#
	jmp	.L137	#
.L136:
	.loc 1 638 0 is_stmt 1
	movq	-8(%rbp), %rax	# ctx, tmp141
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp142
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	biari_encode_symbol	#
.L137:
	.loc 1 639 0
	movl	-20(%rbp), %eax	# act_sym, tmp146
	andl	$1, %eax	#, tmp145
	movl	%eax, -12(%rbp)	# tmp145, csym
	.loc 1 640 0
	cmpl	$0, -12(%rbp)	#, csym
	je	.L138	#,
	.loc 1 640 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ctx, tmp147
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp148
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	biari_encode_symbol	#
	jmp	.L122	#
.L138:
	.loc 1 641 0 is_stmt 1
	movq	-8(%rbp), %rax	# ctx, tmp149
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp150
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	biari_encode_symbol	#
	jmp	.L122	#
.L135:
	.loc 1 645 0
	movq	-8(%rbp), %rax	# ctx, tmp151
	leaq	688(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp152
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	biari_encode_symbol	#
	.loc 1 646 0
	movq	-8(%rbp), %rax	# ctx, tmp153
	leaq	704(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp154
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	biari_encode_symbol	#
	.loc 1 647 0
	movl	-20(%rbp), %eax	# act_sym, tmp155
	subl	$6, %eax	#, D.6362
	sarl	$2, %eax	#, D.6362
	andl	$1, %eax	#, tmp156
	movl	%eax, -12(%rbp)	# tmp156, csym
	.loc 1 648 0
	cmpl	$0, -12(%rbp)	#, csym
	je	.L140	#,
	.loc 1 650 0
	movq	-8(%rbp), %rax	# ctx, tmp157
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp158
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	biari_encode_symbol	#
	.loc 1 651 0
	movl	-20(%rbp), %eax	# act_sym, tmp162
	andl	$1, %eax	#, tmp161
	movl	%eax, -12(%rbp)	# tmp161, csym
	.loc 1 652 0
	cmpl	$0, -12(%rbp)	#, csym
	je	.L141	#,
	.loc 1 652 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ctx, tmp163
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp164
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	biari_encode_symbol	#
	jmp	.L122	#
.L141:
	.loc 1 653 0 is_stmt 1
	movq	-8(%rbp), %rax	# ctx, tmp165
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp166
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp166,
	call	biari_encode_symbol	#
	jmp	.L122	#
.L140:
	.loc 1 657 0
	movq	-8(%rbp), %rax	# ctx, tmp167
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp168
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	biari_encode_symbol	#
	.loc 1 658 0
	movl	-20(%rbp), %eax	# act_sym, tmp169
	subl	$6, %eax	#, D.6362
	sarl	%eax	# D.6362
	andl	$1, %eax	#, tmp170
	movl	%eax, -12(%rbp)	# tmp170, csym
	.loc 1 659 0
	cmpl	$0, -12(%rbp)	#, csym
	je	.L143	#,
	.loc 1 659 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ctx, tmp171
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp172
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp172,
	call	biari_encode_symbol	#
	jmp	.L144	#
.L143:
	.loc 1 660 0 is_stmt 1
	movq	-8(%rbp), %rax	# ctx, tmp173
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp174
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	biari_encode_symbol	#
.L144:
	.loc 1 661 0
	movl	-20(%rbp), %eax	# act_sym, tmp178
	andl	$1, %eax	#, tmp177
	movl	%eax, -12(%rbp)	# tmp177, csym
	.loc 1 662 0
	cmpl	$0, -12(%rbp)	#, csym
	je	.L145	#,
	.loc 1 662 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ctx, tmp179
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp180
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp180,
	call	biari_encode_symbol	#
	jmp	.L122	#
.L145:
	.loc 1 663 0 is_stmt 1
	movq	-8(%rbp), %rax	# ctx, tmp181
	leaq	720(%rax), %rdx	#, D.6365
	movq	-48(%rbp), %rax	# eep_dp, tmp182
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp182,
	call	biari_encode_symbol	#
.L122:
	.loc 1 667 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	writeB8_typeInfo_CABAC, .-writeB8_typeInfo_CABAC
	.globl	writeIntraPredMode_CABAC
	.type	writeIntraPredMode_CABAC, @function
writeIntraPredMode_CABAC:
.LFB14:
	.loc 1 678 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# eep_dp, eep_dp
	.loc 1 679 0
	movq	img(%rip), %rax	# img, img.29
	movq	14160(%rax), %rax	# img.29_1->currentSlice, D.6367
	movq	40(%rax), %rax	# _2->tex_ctx, tmp81
	movq	%rax, -8(%rbp)	# tmp81, ctx
	.loc 1 682 0
	movq	-24(%rbp), %rax	# se, tmp82
	movl	4(%rax), %eax	# se_4(D)->value1, D.6368
	cmpl	$-1, %eax	#, D.6368
	jne	.L147	#,
	.loc 1 683 0
	movq	-8(%rbp), %rdx	# ctx, D.6369
	movq	-32(%rbp), %rax	# eep_dp, tmp83
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	biari_encode_symbol	#
	jmp	.L146	#
.L147:
	.loc 1 686 0
	movq	-8(%rbp), %rdx	# ctx, D.6369
	movq	-32(%rbp), %rax	# eep_dp, tmp84
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	biari_encode_symbol	#
	.loc 1 689 0
	movq	-8(%rbp), %rax	# ctx, tmp85
	leaq	16(%rax), %rdx	#, D.6370
	movq	-24(%rbp), %rax	# se, tmp86
	movl	4(%rax), %eax	# se_4(D)->value1, D.6368
	cwtl
	andl	$1, %eax	#, D.6368
	movl	%eax, %ecx	# D.6368, D.6368
	movq	-32(%rbp), %rax	# eep_dp, tmp87
	movl	%ecx, %esi	# D.6368,
	movq	%rax, %rdi	# tmp87,
	call	biari_encode_symbol	#
	.loc 1 690 0
	movq	-8(%rbp), %rax	# ctx, tmp88
	leaq	16(%rax), %rdx	#, D.6370
	movq	-24(%rbp), %rax	# se, tmp89
	movl	4(%rax), %eax	# se_4(D)->value1, D.6368
	andl	$2, %eax	#, D.6368
	sarl	%eax	# D.6368
	movswl	%ax, %ecx	# D.6371, D.6368
	movq	-32(%rbp), %rax	# eep_dp, tmp90
	movl	%ecx, %esi	# D.6368,
	movq	%rax, %rdi	# tmp90,
	call	biari_encode_symbol	#
	.loc 1 691 0
	movq	-8(%rbp), %rax	# ctx, tmp91
	leaq	16(%rax), %rdx	#, D.6370
	movq	-24(%rbp), %rax	# se, tmp92
	movl	4(%rax), %eax	# se_4(D)->value1, D.6368
	andl	$4, %eax	#, D.6368
	sarl	$2, %eax	#, D.6368
	movswl	%ax, %ecx	# D.6371, D.6368
	movq	-32(%rbp), %rax	# eep_dp, tmp93
	movl	%ecx, %esi	# D.6368,
	movq	%rax, %rdi	# tmp93,
	call	biari_encode_symbol	#
.L146:
	.loc 1 693 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	writeIntraPredMode_CABAC, .-writeIntraPredMode_CABAC
	.globl	writeRefFrame_CABAC
	.type	writeRefFrame_CABAC, @function
writeRefFrame_CABAC:
.LFB15:
	.loc 1 702 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -136(%rbp)	# se, se
	movq	%rsi, -144(%rbp)	# eep_dp, eep_dp
	.loc 1 703 0
	movq	img(%rip), %rax	# img, img.30
	movq	14160(%rax), %rax	# img.30_3->currentSlice, D.6372
	movq	32(%rax), %rax	# _4->mot_ctx, tmp214
	movq	%rax, -88(%rbp)	# tmp214, ctx
	.loc 1 704 0
	movq	img(%rip), %rax	# img, img.31
	movq	14168(%rax), %rdx	# img.31_6->mb_data, D.6373
	movq	img(%rip), %rax	# img, img.32
	movl	12(%rax), %eax	# img.32_8->current_mb_nr, D.6374
	cltq
	imulq	$632, %rax, %rax	#, D.6375, D.6375
	addq	%rdx, %rax	# D.6373, tmp215
	movq	%rax, -80(%rbp)	# tmp215, currMB
	.loc 1 705 0
	movl	$0, -112(%rbp)	#, addctx
	.loc 1 710 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.33
	movq	6480(%rax), %rdx	# enc_picture.33_14->ref_idx, D.6376
	movq	-136(%rbp), %rax	# se, tmp216
	movl	8(%rax), %eax	# se_16(D)->value2, D.6374
	cltq
	salq	$3, %rax	#, D.6375
	addq	%rdx, %rax	# D.6376, D.6376
	movq	(%rax), %rax	# *_20, tmp217
	movq	%rax, -72(%rbp)	# tmp217, refframe_array
	.loc 1 712 0
	movq	img(%rip), %rax	# img, img.34
	movl	24(%rax), %eax	# img.34_22->type, D.6374
	cmpl	$1, %eax	#, D.6374
	sete	%al	#, D.6377
	movzbl	%al, %eax	# D.6377, tmp218
	movl	%eax, -108(%rbp)	# tmp218, bslice
	.loc 1 718 0
	movq	img(%rip), %rax	# img, img.35
	movl	76(%rax), %edx	# img.35_26->subblock_y, D.6374
	movq	img(%rip), %rax	# img, img.36
	movl	72(%rax), %esi	# img.36_28->subblock_x, D.6374
	movq	img(%rip), %rax	# img, img.37
	movl	12(%rax), %eax	# img.37_30->current_mb_nr, D.6374
	leaq	-64(%rbp), %rcx	#, tmp219
	movq	%rcx, %r9	# tmp219,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	%eax, %edi	# D.6374,
	call	getLuma4x4Neighbour	#
	.loc 1 719 0
	movq	img(%rip), %rax	# img, img.38
	movl	76(%rax), %edx	# img.38_32->subblock_y, D.6374
	movq	img(%rip), %rax	# img, img.39
	movl	72(%rax), %esi	# img.39_34->subblock_x, D.6374
	movq	img(%rip), %rax	# img, img.40
	movl	12(%rax), %eax	# img.40_36->current_mb_nr, D.6374
	leaq	-32(%rbp), %rcx	#, tmp220
	movq	%rcx, %r9	# tmp220,
	movl	$-1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6374,
	call	getLuma4x4Neighbour	#
	.loc 1 721 0
	movl	-56(%rbp), %eax	# block_a.x, D.6374
	movl	%eax, %edx	# D.6374, tmp221
	shrl	$31, %edx	#, tmp221
	addl	%edx, %eax	# tmp221, tmp222
	sarl	%eax	# tmp223
	cltd
	shrl	$31, %edx	#, tmp225
	addl	%edx, %eax	# tmp225, tmp226
	andl	$1, %eax	#, tmp227
	subl	%edx, %eax	# tmp225, tmp228
	movl	%eax, %ecx	# tmp228, D.6374
	movl	-52(%rbp), %eax	# block_a.y, D.6374
	movl	%eax, %edx	# D.6374, tmp229
	shrl	$31, %edx	#, tmp229
	addl	%edx, %eax	# tmp229, tmp230
	sarl	%eax	# tmp231
	cltd
	shrl	$31, %edx	#, tmp233
	addl	%edx, %eax	# tmp233, tmp234
	andl	$1, %eax	#, tmp235
	subl	%edx, %eax	# tmp233, tmp236
	addl	%eax, %eax	# D.6374
	addl	%ecx, %eax	# D.6374, tmp237
	movl	%eax, -104(%rbp)	# tmp237, b8a
	.loc 1 722 0
	movl	-24(%rbp), %eax	# block_b.x, D.6374
	movl	%eax, %edx	# D.6374, tmp238
	shrl	$31, %edx	#, tmp238
	addl	%edx, %eax	# tmp238, tmp239
	sarl	%eax	# tmp240
	cltd
	shrl	$31, %edx	#, tmp242
	addl	%edx, %eax	# tmp242, tmp243
	andl	$1, %eax	#, tmp244
	subl	%edx, %eax	# tmp242, tmp245
	movl	%eax, %ecx	# tmp245, D.6374
	movl	-20(%rbp), %eax	# block_b.y, D.6374
	movl	%eax, %edx	# D.6374, tmp246
	shrl	$31, %edx	#, tmp246
	addl	%edx, %eax	# tmp246, tmp247
	sarl	%eax	# tmp248
	cltd
	shrl	$31, %edx	#, tmp250
	addl	%edx, %eax	# tmp250, tmp251
	andl	$1, %eax	#, tmp252
	subl	%edx, %eax	# tmp250, tmp253
	addl	%eax, %eax	# D.6374
	addl	%ecx, %eax	# D.6374, tmp254
	movl	%eax, -100(%rbp)	# tmp254, b8b
	.loc 1 725 0
	movl	-32(%rbp), %eax	# block_b.available, D.6374
	testl	%eax, %eax	# D.6374
	jne	.L150	#,
	.loc 1 726 0
	movl	$0, -116(%rbp)	#, b
	jmp	.L151	#
.L150:
	.loc 1 727 0
	movq	img(%rip), %rax	# img, img.41
	movq	14168(%rax), %rdx	# img.41_56->mb_data, D.6373
	movl	-28(%rbp), %eax	# block_b.mb_addr, D.6374
	cltq
	imulq	$632, %rax, %rax	#, D.6375, D.6375
	addq	%rdx, %rax	# D.6373, D.6373
	movl	72(%rax), %eax	# _61->mb_type, D.6374
	testl	%eax, %eax	# D.6374
	jne	.L152	#,
	.loc 1 727 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.42
	movl	24(%rax), %eax	# img.42_63->type, D.6374
	cmpl	$1, %eax	#, D.6374
	je	.L153	#,
.L152:
	.loc 1 727 0 discriminator 2
	movq	img(%rip), %rax	# img, img.43
	movq	14168(%rax), %rdx	# img.43_65->mb_data, D.6373
	movl	-28(%rbp), %eax	# block_b.mb_addr, D.6374
	cltq
	imulq	$632, %rax, %rax	#, D.6375, D.6375
	addq	%rdx, %rax	# D.6373, D.6373
	movl	-100(%rbp), %edx	# b8b, tmp256
	movslq	%edx, %rdx	# tmp256, tmp255
	addq	$116, %rdx	#, tmp257
	movl	8(%rax,%rdx,4), %eax	# _70->b8mode, D.6374
	testl	%eax, %eax	# D.6374
	jne	.L154	#,
	.loc 1 727 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, bslice
	je	.L154	#,
.L153:
	.loc 1 728 0 is_stmt 1
	movl	$0, -116(%rbp)	#, b
	jmp	.L151	#
.L154:
	.loc 1 731 0
	movq	img(%rip), %rax	# img, img.44
	movl	72400(%rax), %eax	# img.44_72->MbaffFrameFlag, D.6374
	testl	%eax, %eax	# D.6374
	je	.L155	#,
	.loc 1 731 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# currMB, tmp258
	movl	532(%rax), %eax	# currMB_12->mb_field, D.6374
	testl	%eax, %eax	# D.6374
	jne	.L155	#,
	movq	img(%rip), %rax	# img, img.45
	movq	14168(%rax), %rdx	# img.45_75->mb_data, D.6373
	movl	-28(%rbp), %eax	# block_b.mb_addr, D.6374
	cltq
	imulq	$632, %rax, %rax	#, D.6375, D.6375
	addq	%rdx, %rax	# D.6373, D.6373
	movl	532(%rax), %eax	# _80->mb_field, D.6374
	cmpl	$1, %eax	#, D.6374
	jne	.L155	#,
	.loc 1 732 0 is_stmt 1
	movl	-16(%rbp), %eax	# block_b.pos_x, D.6374
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6375
	movq	-72(%rbp), %rax	# refframe_array, tmp259
	addq	%rdx, %rax	# D.6375, D.6378
	movq	(%rax), %rax	# *_85, D.6379
	movl	-12(%rbp), %edx	# block_b.pos_y, D.6374
	movslq	%edx, %rdx	# D.6374, D.6375
	addq	%rdx, %rdx	# D.6375
	addq	%rdx, %rax	# D.6375, D.6379
	movzwl	(%rax), %eax	# *_90, D.6380
	cmpw	$1, %ax	#, D.6380
	setg	%al	#, D.6377
	movzbl	%al, %eax	# D.6377, tmp260
	movl	%eax, -116(%rbp)	# tmp260, b
	jmp	.L151	#
.L155:
	.loc 1 734 0
	movl	-16(%rbp), %eax	# block_b.pos_x, D.6374
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6375
	movq	-72(%rbp), %rax	# refframe_array, tmp261
	addq	%rdx, %rax	# D.6375, D.6378
	movq	(%rax), %rax	# *_97, D.6379
	movl	-12(%rbp), %edx	# block_b.pos_y, D.6374
	movslq	%edx, %rdx	# D.6374, D.6375
	addq	%rdx, %rdx	# D.6375
	addq	%rdx, %rax	# D.6375, D.6379
	movzwl	(%rax), %eax	# *_102, D.6380
	testw	%ax, %ax	# D.6380
	setg	%al	#, D.6377
	movzbl	%al, %eax	# D.6377, tmp262
	movl	%eax, -116(%rbp)	# tmp262, b
.L151:
	.loc 1 737 0
	movl	-64(%rbp), %eax	# block_a.available, D.6374
	testl	%eax, %eax	# D.6374
	jne	.L156	#,
	.loc 1 738 0
	movl	$0, -120(%rbp)	#, a
	jmp	.L157	#
.L156:
	.loc 1 739 0
	movq	img(%rip), %rax	# img, img.46
	movq	14168(%rax), %rdx	# img.46_109->mb_data, D.6373
	movl	-60(%rbp), %eax	# block_a.mb_addr, D.6374
	cltq
	imulq	$632, %rax, %rax	#, D.6375, D.6375
	addq	%rdx, %rax	# D.6373, D.6373
	movl	72(%rax), %eax	# _114->mb_type, D.6374
	testl	%eax, %eax	# D.6374
	jne	.L158	#,
	.loc 1 739 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.47
	movl	24(%rax), %eax	# img.47_116->type, D.6374
	cmpl	$1, %eax	#, D.6374
	je	.L159	#,
.L158:
	.loc 1 739 0 discriminator 2
	movq	img(%rip), %rax	# img, img.48
	movq	14168(%rax), %rdx	# img.48_118->mb_data, D.6373
	movl	-60(%rbp), %eax	# block_a.mb_addr, D.6374
	cltq
	imulq	$632, %rax, %rax	#, D.6375, D.6375
	addq	%rdx, %rax	# D.6373, D.6373
	movl	-104(%rbp), %edx	# b8a, tmp264
	movslq	%edx, %rdx	# tmp264, tmp263
	addq	$116, %rdx	#, tmp265
	movl	8(%rax,%rdx,4), %eax	# _123->b8mode, D.6374
	testl	%eax, %eax	# D.6374
	jne	.L160	#,
	.loc 1 739 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, bslice
	je	.L160	#,
.L159:
	.loc 1 740 0 is_stmt 1
	movl	$0, -120(%rbp)	#, a
	jmp	.L157	#
.L160:
	.loc 1 743 0
	movq	img(%rip), %rax	# img, img.49
	movl	72400(%rax), %eax	# img.49_125->MbaffFrameFlag, D.6374
	testl	%eax, %eax	# D.6374
	je	.L161	#,
	.loc 1 743 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# currMB, tmp266
	movl	532(%rax), %eax	# currMB_12->mb_field, D.6374
	testl	%eax, %eax	# D.6374
	jne	.L161	#,
	movq	img(%rip), %rax	# img, img.50
	movq	14168(%rax), %rdx	# img.50_128->mb_data, D.6373
	movl	-60(%rbp), %eax	# block_a.mb_addr, D.6374
	cltq
	imulq	$632, %rax, %rax	#, D.6375, D.6375
	addq	%rdx, %rax	# D.6373, D.6373
	movl	532(%rax), %eax	# _133->mb_field, D.6374
	cmpl	$1, %eax	#, D.6374
	jne	.L161	#,
	.loc 1 744 0 is_stmt 1
	movl	-48(%rbp), %eax	# block_a.pos_x, D.6374
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6375
	movq	-72(%rbp), %rax	# refframe_array, tmp267
	addq	%rdx, %rax	# D.6375, D.6378
	movq	(%rax), %rax	# *_138, D.6379
	movl	-44(%rbp), %edx	# block_a.pos_y, D.6374
	movslq	%edx, %rdx	# D.6374, D.6375
	addq	%rdx, %rdx	# D.6375
	addq	%rdx, %rax	# D.6375, D.6379
	movzwl	(%rax), %eax	# *_143, D.6380
	cmpw	$1, %ax	#, D.6380
	setg	%al	#, D.6377
	movzbl	%al, %eax	# D.6377, tmp268
	movl	%eax, -120(%rbp)	# tmp268, a
	jmp	.L157	#
.L161:
	.loc 1 746 0
	movl	-48(%rbp), %eax	# block_a.pos_x, D.6374
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6375
	movq	-72(%rbp), %rax	# refframe_array, tmp269
	addq	%rdx, %rax	# D.6375, D.6378
	movq	(%rax), %rax	# *_150, D.6379
	movl	-44(%rbp), %edx	# block_a.pos_y, D.6374
	movslq	%edx, %rdx	# D.6374, D.6375
	addq	%rdx, %rdx	# D.6375
	addq	%rdx, %rax	# D.6375, D.6379
	movzwl	(%rax), %eax	# *_155, D.6380
	testw	%ax, %ax	# D.6380
	setg	%al	#, D.6377
	movzbl	%al, %eax	# D.6377, tmp270
	movl	%eax, -120(%rbp)	# tmp270, a
.L157:
	.loc 1 749 0
	movl	-116(%rbp), %eax	# b, tmp271
	leal	(%rax,%rax), %edx	#, D.6374
	movl	-120(%rbp), %eax	# a, tmp275
	addl	%edx, %eax	# D.6374, tmp274
	movl	%eax, -96(%rbp)	# tmp274, act_ctx
	.loc 1 750 0
	movq	-136(%rbp), %rax	# se, tmp276
	movl	-96(%rbp), %edx	# act_ctx, tmp277
	movl	%edx, 24(%rax)	# tmp277, se_16(D)->context
	.loc 1 751 0
	movq	-136(%rbp), %rax	# se, tmp278
	movl	4(%rax), %eax	# se_16(D)->value1, tmp279
	movl	%eax, -92(%rbp)	# tmp279, act_sym
	.loc 1 753 0
	cmpl	$0, -92(%rbp)	#, act_sym
	jne	.L162	#,
	.loc 1 755 0
	movl	-112(%rbp), %eax	# addctx, tmp281
	movslq	%eax, %rdx	# tmp281, tmp280
	movq	%rdx, %rax	# tmp280, tmp282
	addq	%rax, %rax	# tmp282
	addq	%rdx, %rax	# tmp280, tmp282
	salq	$5, %rax	#, tmp283
	leaq	1136(%rax), %rdx	#, tmp284
	movq	-88(%rbp), %rax	# ctx, tmp285
	addq	%rax, %rdx	# tmp285, D.6381
	movl	-96(%rbp), %eax	# act_ctx, tmp286
	cltq
	salq	$4, %rax	#, D.6375
	addq	%rax, %rdx	# D.6375, D.6382
	movq	-144(%rbp), %rax	# eep_dp, tmp287
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp287,
	call	biari_encode_symbol	#
	jmp	.L149	#
.L162:
	.loc 1 759 0
	movl	-112(%rbp), %eax	# addctx, tmp289
	movslq	%eax, %rdx	# tmp289, tmp288
	movq	%rdx, %rax	# tmp288, tmp290
	addq	%rax, %rax	# tmp290
	addq	%rdx, %rax	# tmp288, tmp290
	salq	$5, %rax	#, tmp291
	leaq	1136(%rax), %rdx	#, tmp292
	movq	-88(%rbp), %rax	# ctx, tmp293
	addq	%rax, %rdx	# tmp293, D.6381
	movl	-96(%rbp), %eax	# act_ctx, tmp294
	cltq
	salq	$4, %rax	#, D.6375
	addq	%rax, %rdx	# D.6375, D.6382
	movq	-144(%rbp), %rax	# eep_dp, tmp295
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp295,
	call	biari_encode_symbol	#
	.loc 1 760 0
	subl	$1, -92(%rbp)	#, act_sym
	.loc 1 761 0
	movl	$4, -96(%rbp)	#, act_ctx
	.loc 1 762 0
	movl	-112(%rbp), %eax	# addctx, tmp297
	movslq	%eax, %rdx	# tmp297, tmp296
	movq	%rdx, %rax	# tmp296, tmp298
	addq	%rax, %rax	# tmp298
	addq	%rdx, %rax	# tmp296, tmp298
	salq	$5, %rax	#, tmp299
	leaq	1136(%rax), %rdx	#, tmp300
	movq	-88(%rbp), %rax	# ctx, tmp301
	addq	%rax, %rdx	# tmp301, D.6381
	movl	-96(%rbp), %eax	# act_ctx, tmp302
	cltq
	salq	$4, %rax	#, D.6375
	addq	%rax, %rdx	# D.6375, D.6382
	movl	-92(%rbp), %esi	# act_sym, act_sym.51
	movq	-144(%rbp), %rax	# eep_dp, tmp303
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp303,
	call	unary_bin_encode	#
.L149:
	.loc 1 764 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	writeRefFrame_CABAC, .-writeRefFrame_CABAC
	.globl	writeDquant_CABAC
	.type	writeDquant_CABAC, @function
writeDquant_CABAC:
.LFB16:
	.loc 1 774 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# se, se
	movq	%rsi, -48(%rbp)	# eep_dp, eep_dp
	.loc 1 775 0
	movq	img(%rip), %rax	# img, img.52
	movq	14160(%rax), %rax	# img.52_2->currentSlice, D.6383
	movq	32(%rax), %rax	# _3->mot_ctx, tmp78
	movq	%rax, -16(%rbp)	# tmp78, ctx
	.loc 1 779 0
	movq	-40(%rbp), %rax	# se, tmp79
	movl	4(%rax), %eax	# se_5(D)->value1, tmp80
	movl	%eax, -28(%rbp)	# tmp80, dquant
	.loc 1 780 0
	movl	$0, -32(%rbp)	#, sign
	.loc 1 782 0
	movq	img(%rip), %rax	# img, img.53
	movq	14168(%rax), %rdx	# img.53_8->mb_data, D.6384
	movq	img(%rip), %rax	# img, img.54
	movl	12(%rax), %eax	# img.54_10->current_mb_nr, D.6385
	cltq
	imulq	$632, %rax, %rax	#, D.6386, D.6386
	addq	%rdx, %rax	# D.6384, tmp81
	movq	%rax, -8(%rbp)	# tmp81, currMB
	.loc 1 784 0
	movq	-8(%rbp), %rax	# currMB, tmp82
	movl	596(%rax), %eax	# currMB_14->prev_delta_qp, last_dquant.55
	movl	%eax, last_dquant(%rip)	# last_dquant.55, last_dquant
	.loc 1 786 0
	cmpl	$0, -28(%rbp)	#, dquant
	jg	.L165	#,
	.loc 1 787 0
	movl	$1, -32(%rbp)	#, sign
.L165:
	.loc 1 788 0
	movl	-28(%rbp), %eax	# dquant, tmp84
	cltd
	movl	%edx, %eax	# tmp83, D.6385
	xorl	-28(%rbp), %eax	# dquant, D.6385
	subl	%edx, %eax	# tmp83, D.6385
	addl	%eax, %eax	# tmp85
	movl	%eax, -24(%rbp)	# tmp85, act_sym
	.loc 1 790 0
	movl	-32(%rbp), %eax	# sign, tmp86
	addl	%eax, -24(%rbp)	# tmp86, act_sym
	.loc 1 791 0
	subl	$1, -24(%rbp)	#, act_sym
	.loc 1 793 0
	movl	last_dquant(%rip), %eax	# last_dquant, last_dquant.56
	testl	%eax, %eax	# last_dquant.56
	setne	%al	#, D.6387
	movzbl	%al, %eax	# D.6387, tmp87
	movl	%eax, -20(%rbp)	# tmp87, act_ctx
	.loc 1 795 0
	cmpl	$0, -24(%rbp)	#, act_sym
	jne	.L166	#,
	.loc 1 797 0
	movl	-20(%rbp), %eax	# act_ctx, tmp88
	cltq
	addq	$83, %rax	#, tmp89
	salq	$4, %rax	#, tmp90
	movq	%rax, %rdx	# tmp90, tmp90
	movq	-16(%rbp), %rax	# ctx, tmp91
	addq	%rax, %rdx	# tmp91, D.6389
	movq	-48(%rbp), %rax	# eep_dp, tmp92
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	biari_encode_symbol	#
	jmp	.L164	#
.L166:
	.loc 1 801 0
	movl	-20(%rbp), %eax	# act_ctx, tmp93
	cltq
	addq	$83, %rax	#, tmp94
	salq	$4, %rax	#, tmp95
	movq	%rax, %rdx	# tmp95, tmp95
	movq	-16(%rbp), %rax	# ctx, tmp96
	addq	%rax, %rdx	# tmp96, D.6389
	movq	-48(%rbp), %rax	# eep_dp, tmp97
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	biari_encode_symbol	#
	.loc 1 802 0
	movl	$2, -20(%rbp)	#, act_ctx
	.loc 1 803 0
	subl	$1, -24(%rbp)	#, act_sym
	.loc 1 804 0
	movl	-20(%rbp), %eax	# act_ctx, tmp98
	cltq
	addq	$83, %rax	#, tmp99
	salq	$4, %rax	#, tmp100
	movq	%rax, %rdx	# tmp100, tmp100
	movq	-16(%rbp), %rax	# ctx, tmp101
	addq	%rax, %rdx	# tmp101, D.6389
	movl	-24(%rbp), %esi	# act_sym, act_sym.57
	movq	-48(%rbp), %rax	# eep_dp, tmp102
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp102,
	call	unary_bin_encode	#
.L164:
	.loc 1 806 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	writeDquant_CABAC, .-writeDquant_CABAC
	.globl	writeMVD_CABAC
	.type	writeMVD_CABAC, @function
writeMVD_CABAC:
.LFB17:
	.loc 1 816 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -136(%rbp)	# se, se
	movq	%rsi, -144(%rbp)	# eep_dp, eep_dp
	.loc 1 817 0
	movq	img(%rip), %rax	# img, img.58
	movl	72(%rax), %eax	# img.58_6->subblock_x, tmp143
	movl	%eax, -112(%rbp)	# tmp143, i
	.loc 1 818 0
	movq	img(%rip), %rax	# img, img.59
	movl	76(%rax), %eax	# img.59_8->subblock_y, tmp144
	movl	%eax, -108(%rbp)	# tmp144, j
	.loc 1 825 0
	movq	-136(%rbp), %rax	# se, tmp145
	movl	8(%rax), %eax	# se_10(D)->value2, D.6390
	andl	$1, %eax	#, tmp146
	movl	%eax, -104(%rbp)	# tmp146, list_idx
	.loc 1 826 0
	movq	-136(%rbp), %rax	# se, tmp147
	movl	8(%rax), %eax	# se_10(D)->value2, D.6390
	sarl	%eax	# tmp148
	movl	%eax, -100(%rbp)	# tmp148, k
	.loc 1 830 0
	movq	img(%rip), %rax	# img, img.60
	movq	14160(%rax), %rax	# img.60_15->currentSlice, D.6391
	movq	32(%rax), %rax	# _16->mot_ctx, tmp149
	movq	%rax, -80(%rbp)	# tmp149, ctx
	.loc 1 831 0
	movq	img(%rip), %rax	# img, img.61
	movq	14168(%rax), %rdx	# img.61_18->mb_data, D.6392
	movq	img(%rip), %rax	# img, img.62
	movl	12(%rax), %eax	# img.62_20->current_mb_nr, D.6390
	cltq
	imulq	$632, %rax, %rax	#, D.6393, D.6393
	addq	%rdx, %rax	# D.6392, tmp150
	movq	%rax, -72(%rbp)	# tmp150, currMB
	.loc 1 833 0
	movq	img(%rip), %rax	# img, img.63
	movl	12(%rax), %eax	# img.63_25->current_mb_nr, D.6390
	leaq	-64(%rbp), %rcx	#, tmp151
	movl	-108(%rbp), %edx	# j, tmp152
	movl	-112(%rbp), %esi	# i, tmp153
	movq	%rcx, %r9	# tmp151,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	%eax, %edi	# D.6390,
	call	getLuma4x4Neighbour	#
	.loc 1 834 0
	movq	img(%rip), %rax	# img, img.64
	movl	12(%rax), %eax	# img.64_27->current_mb_nr, D.6390
	leaq	-32(%rbp), %rcx	#, tmp154
	movl	-108(%rbp), %edx	# j, tmp155
	movl	-112(%rbp), %esi	# i, tmp156
	movq	%rcx, %r9	# tmp154,
	movl	$-1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6390,
	call	getLuma4x4Neighbour	#
	.loc 1 836 0
	movl	-32(%rbp), %eax	# block_b.available, D.6390
	testl	%eax, %eax	# D.6390
	je	.L169	#,
	.loc 1 838 0
	movq	img(%rip), %rax	# img, img.65
	movq	14168(%rax), %rdx	# img.65_30->mb_data, D.6392
	movl	-28(%rbp), %eax	# block_b.mb_addr, D.6390
	cltq
	imulq	$632, %rax, %rax	#, D.6393, D.6393
	addq	%rdx, %rax	# D.6392, D.6392
	movl	-20(%rbp), %esi	# block_b.y, D.6390
	movl	-24(%rbp), %ecx	# block_b.x, D.6390
	movl	-100(%rbp), %edx	# k, tmp158
	movslq	%edx, %rdx	# tmp158, tmp157
	movslq	%esi, %rsi	# D.6390, tmp159
	movl	-104(%rbp), %edi	# list_idx, tmp161
	movslq	%edi, %rdi	# tmp161, tmp160
	salq	$2, %rdi	#, tmp162
	addq	%rdi, %rsi	# tmp162, tmp163
	movslq	%ecx, %rcx	# D.6390, tmp164
	salq	$2, %rsi	#, tmp165
	addq	%rsi, %rcx	# tmp165, tmp166
	addq	%rcx, %rcx	# tmp167
	addq	%rcx, %rdx	# tmp167, tmp168
	addq	$16, %rdx	#, tmp169
	movl	12(%rax,%rdx,4), %edx	# _35->mvd, D.6390
	movl	%edx, %eax	# D.6390, tmp170
	sarl	$31, %eax	#, tmp170
	xorl	%eax, %edx	# tmp170, tmp171
	movl	%edx, -120(%rbp)	# tmp171, b
	subl	%eax, -120(%rbp)	# tmp170, b
	.loc 1 839 0
	movq	img(%rip), %rax	# img, img.66
	movl	72400(%rax), %eax	# img.66_40->MbaffFrameFlag, D.6390
	testl	%eax, %eax	# D.6390
	je	.L172	#,
	.loc 1 839 0 is_stmt 0 discriminator 1
	cmpl	$1, -100(%rbp)	#, k
	jne	.L172	#,
	.loc 1 841 0 is_stmt 1
	movq	-72(%rbp), %rax	# currMB, tmp172
	movl	532(%rax), %eax	# currMB_24->mb_field, D.6390
	testl	%eax, %eax	# D.6390
	jne	.L171	#,
	.loc 1 841 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.67
	movq	14168(%rax), %rdx	# img.67_43->mb_data, D.6392
	movl	-28(%rbp), %eax	# block_b.mb_addr, D.6390
	cltq
	imulq	$632, %rax, %rax	#, D.6393, D.6393
	addq	%rdx, %rax	# D.6392, D.6392
	movl	532(%rax), %eax	# _48->mb_field, D.6390
	cmpl	$1, %eax	#, D.6390
	jne	.L171	#,
	.loc 1 842 0 is_stmt 1
	sall	-120(%rbp)	# b
	jmp	.L172	#
.L171:
	.loc 1 843 0
	movq	-72(%rbp), %rax	# currMB, tmp173
	movl	532(%rax), %eax	# currMB_24->mb_field, D.6390
	cmpl	$1, %eax	#, D.6390
	jne	.L172	#,
	.loc 1 843 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.68
	movq	14168(%rax), %rdx	# img.68_52->mb_data, D.6392
	movl	-28(%rbp), %eax	# block_b.mb_addr, D.6390
	cltq
	imulq	$632, %rax, %rax	#, D.6393, D.6393
	addq	%rdx, %rax	# D.6392, D.6392
	movl	532(%rax), %eax	# _57->mb_field, D.6390
	testl	%eax, %eax	# D.6390
	jne	.L172	#,
	.loc 1 844 0 is_stmt 1
	movl	-120(%rbp), %eax	# b, tmp175
	movl	%eax, %edx	# tmp175, tmp176
	shrl	$31, %edx	#, tmp176
	addl	%edx, %eax	# tmp176, tmp177
	sarl	%eax	# tmp178
	movl	%eax, -120(%rbp)	# tmp178, b
	jmp	.L172	#
.L169:
	.loc 1 848 0
	movl	$0, -120(%rbp)	#, b
.L172:
	.loc 1 850 0
	movl	-64(%rbp), %eax	# block_a.available, D.6390
	testl	%eax, %eax	# D.6390
	je	.L173	#,
	.loc 1 852 0
	movq	img(%rip), %rax	# img, img.69
	movq	14168(%rax), %rdx	# img.69_62->mb_data, D.6392
	movl	-60(%rbp), %eax	# block_a.mb_addr, D.6390
	cltq
	imulq	$632, %rax, %rax	#, D.6393, D.6393
	addq	%rdx, %rax	# D.6392, D.6392
	movl	-52(%rbp), %esi	# block_a.y, D.6390
	movl	-56(%rbp), %ecx	# block_a.x, D.6390
	movl	-100(%rbp), %edx	# k, tmp180
	movslq	%edx, %rdx	# tmp180, tmp179
	movslq	%esi, %rsi	# D.6390, tmp181
	movl	-104(%rbp), %edi	# list_idx, tmp183
	movslq	%edi, %rdi	# tmp183, tmp182
	salq	$2, %rdi	#, tmp184
	addq	%rdi, %rsi	# tmp184, tmp185
	movslq	%ecx, %rcx	# D.6390, tmp186
	salq	$2, %rsi	#, tmp187
	addq	%rsi, %rcx	# tmp187, tmp188
	addq	%rcx, %rcx	# tmp189
	addq	%rcx, %rdx	# tmp189, tmp190
	addq	$16, %rdx	#, tmp191
	movl	12(%rax,%rdx,4), %edx	# _67->mvd, D.6390
	movl	%edx, %eax	# D.6390, tmp192
	sarl	$31, %eax	#, tmp192
	xorl	%eax, %edx	# tmp192, tmp193
	movl	%edx, -124(%rbp)	# tmp193, a
	subl	%eax, -124(%rbp)	# tmp192, a
	.loc 1 853 0
	movq	img(%rip), %rax	# img, img.70
	movl	72400(%rax), %eax	# img.70_72->MbaffFrameFlag, D.6390
	testl	%eax, %eax	# D.6390
	je	.L176	#,
	.loc 1 853 0 is_stmt 0 discriminator 1
	cmpl	$1, -100(%rbp)	#, k
	jne	.L176	#,
	.loc 1 855 0 is_stmt 1
	movq	-72(%rbp), %rax	# currMB, tmp194
	movl	532(%rax), %eax	# currMB_24->mb_field, D.6390
	testl	%eax, %eax	# D.6390
	jne	.L175	#,
	.loc 1 855 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.71
	movq	14168(%rax), %rdx	# img.71_75->mb_data, D.6392
	movl	-60(%rbp), %eax	# block_a.mb_addr, D.6390
	cltq
	imulq	$632, %rax, %rax	#, D.6393, D.6393
	addq	%rdx, %rax	# D.6392, D.6392
	movl	532(%rax), %eax	# _80->mb_field, D.6390
	cmpl	$1, %eax	#, D.6390
	jne	.L175	#,
	.loc 1 856 0 is_stmt 1
	sall	-124(%rbp)	# a
	jmp	.L176	#
.L175:
	.loc 1 857 0
	movq	-72(%rbp), %rax	# currMB, tmp195
	movl	532(%rax), %eax	# currMB_24->mb_field, D.6390
	cmpl	$1, %eax	#, D.6390
	jne	.L176	#,
	.loc 1 857 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.72
	movq	14168(%rax), %rdx	# img.72_84->mb_data, D.6392
	movl	-60(%rbp), %eax	# block_a.mb_addr, D.6390
	cltq
	imulq	$632, %rax, %rax	#, D.6393, D.6393
	addq	%rdx, %rax	# D.6392, D.6392
	movl	532(%rax), %eax	# _89->mb_field, D.6390
	testl	%eax, %eax	# D.6390
	jne	.L176	#,
	.loc 1 858 0 is_stmt 1
	movl	-124(%rbp), %eax	# a, tmp197
	movl	%eax, %edx	# tmp197, tmp198
	shrl	$31, %edx	#, tmp198
	addl	%edx, %eax	# tmp198, tmp199
	sarl	%eax	# tmp200
	movl	%eax, -124(%rbp)	# tmp200, a
	jmp	.L176	#
.L173:
	.loc 1 862 0
	movl	$0, -124(%rbp)	#, a
.L176:
	.loc 1 864 0
	movl	-120(%rbp), %eax	# b, tmp205
	movl	-124(%rbp), %edx	# a, tmp206
	addl	%edx, %eax	# tmp206, tmp204
	movl	%eax, -96(%rbp)	# tmp204, mv_local_err
	cmpl	$2, -96(%rbp)	#, mv_local_err
	jg	.L177	#,
	.loc 1 865 0
	movl	-100(%rbp), %edx	# k, tmp207
	movl	%edx, %eax	# tmp207, tmp208
	sall	$2, %eax	#, tmp208
	addl	%edx, %eax	# tmp207, tmp209
	movl	%eax, -116(%rbp)	# tmp209, act_ctx
	jmp	.L178	#
.L177:
	.loc 1 868 0
	cmpl	$32, -96(%rbp)	#, mv_local_err
	jle	.L179	#,
	.loc 1 869 0
	movl	-100(%rbp), %edx	# k, tmp210
	movl	%edx, %eax	# tmp210, tmp211
	sall	$2, %eax	#, tmp211
	addl	%edx, %eax	# tmp210, D.6390
	addl	$3, %eax	#, tmp212
	movl	%eax, -116(%rbp)	# tmp212, act_ctx
	jmp	.L178	#
.L179:
	.loc 1 871 0
	movl	-100(%rbp), %edx	# k, tmp213
	movl	%edx, %eax	# tmp213, tmp214
	sall	$2, %eax	#, tmp214
	addl	%edx, %eax	# tmp213, D.6390
	addl	$2, %eax	#, tmp215
	movl	%eax, -116(%rbp)	# tmp215, act_ctx
.L178:
	.loc 1 873 0
	movq	-136(%rbp), %rax	# se, tmp216
	movl	4(%rax), %eax	# se_10(D)->value1, tmp217
	movl	%eax, -92(%rbp)	# tmp217, mv_pred_res
	.loc 1 874 0
	movq	-136(%rbp), %rax	# se, tmp218
	movl	-116(%rbp), %edx	# act_ctx, tmp219
	movl	%edx, 24(%rax)	# tmp219, se_10(D)->context
	.loc 1 876 0
	movl	-92(%rbp), %eax	# mv_pred_res, tmp221
	sarl	$31, %eax	#, tmp220
	movl	%eax, %edx	# tmp220, tmp223
	xorl	-92(%rbp), %edx	# mv_pred_res, tmp223
	subl	%eax, %edx	# tmp220, tmp224
	movl	%edx, %eax	# tmp224, tmp224
	movl	%eax, -88(%rbp)	# tmp224, act_sym
	.loc 1 878 0
	cmpl	$0, -88(%rbp)	#, act_sym
	jne	.L180	#,
	.loc 1 879 0
	movl	-116(%rbp), %eax	# act_ctx, tmp226
	cltq
	addq	$51, %rax	#, tmp227
	salq	$4, %rax	#, tmp228
	movq	%rax, %rdx	# tmp228, tmp228
	movq	-80(%rbp), %rax	# ctx, tmp229
	addq	%rax, %rdx	# tmp229, D.6394
	movq	-144(%rbp), %rax	# eep_dp, tmp230
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	biari_encode_symbol	#
	jmp	.L168	#
.L180:
	.loc 1 882 0
	movl	-116(%rbp), %eax	# act_ctx, tmp232
	cltq
	addq	$51, %rax	#, tmp233
	salq	$4, %rax	#, tmp234
	movq	%rax, %rdx	# tmp234, tmp234
	movq	-80(%rbp), %rax	# ctx, tmp235
	addq	%rax, %rdx	# tmp235, D.6394
	movq	-144(%rbp), %rax	# eep_dp, tmp236
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp236,
	call	biari_encode_symbol	#
	.loc 1 883 0
	subl	$1, -88(%rbp)	#, act_sym
	.loc 1 884 0
	movl	-100(%rbp), %edx	# k, tmp237
	movl	%edx, %eax	# tmp237, tmp238
	sall	$2, %eax	#, tmp238
	addl	%edx, %eax	# tmp237, tmp239
	movl	%eax, -116(%rbp)	# tmp239, act_ctx
	.loc 1 885 0
	movq	-80(%rbp), %rax	# ctx, tmp240
	leaq	976(%rax), %rdx	#, D.6395
	movl	-116(%rbp), %eax	# act_ctx, tmp241
	cltq
	salq	$4, %rax	#, D.6393
	addq	%rax, %rdx	# D.6393, D.6394
	movl	-88(%rbp), %esi	# act_sym, act_sym.73
	movq	-144(%rbp), %rax	# eep_dp, tmp242
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp242,
	call	unary_exp_golomb_mv_encode	#
	.loc 1 886 0
	movl	-92(%rbp), %eax	# mv_pred_res, tmp244
	shrl	$31, %eax	#, tmp243
	movzbl	%al, %eax	# D.6396, tmp245
	movl	%eax, -84(%rbp)	# tmp245, mv_sign
	.loc 1 887 0
	movl	-84(%rbp), %eax	# mv_sign, tmp246
	movzbl	%al, %edx	# D.6397, D.6390
	movq	-144(%rbp), %rax	# eep_dp, tmp247
	movl	%edx, %esi	# D.6390,
	movq	%rax, %rdi	# tmp247,
	call	biari_encode_symbol_eq_prob	#
.L168:
	.loc 1 889 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	writeMVD_CABAC, .-writeMVD_CABAC
	.globl	writeCIPredMode_CABAC
	.type	writeCIPredMode_CABAC, @function
writeCIPredMode_CABAC:
.LFB18:
	.loc 1 900 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# se, se
	movq	%rsi, -48(%rbp)	# eep_dp, eep_dp
	.loc 1 901 0
	movq	img(%rip), %rax	# img, img.74
	movq	14160(%rax), %rax	# img.74_3->currentSlice, D.6398
	movq	40(%rax), %rax	# _4->tex_ctx, tmp82
	movq	%rax, -16(%rbp)	# tmp82, ctx
	.loc 1 902 0
	movq	img(%rip), %rax	# img, img.75
	movq	14168(%rax), %rdx	# img.75_6->mb_data, D.6399
	movq	img(%rip), %rax	# img, img.76
	movl	12(%rax), %eax	# img.76_8->current_mb_nr, D.6400
	cltq
	imulq	$632, %rax, %rax	#, D.6401, D.6401
	addq	%rdx, %rax	# D.6399, tmp83
	movq	%rax, -8(%rbp)	# tmp83, currMB
	.loc 1 904 0
	movq	-40(%rbp), %rax	# se, tmp84
	movl	4(%rax), %eax	# se_13(D)->value1, tmp85
	movl	%eax, -24(%rbp)	# tmp85, act_sym
	.loc 1 906 0
	movq	-8(%rbp), %rax	# currMB, tmp86
	movq	56(%rax), %rax	# currMB_12->mb_available_up, D.6402
	testq	%rax, %rax	# D.6402
	jne	.L183	#,
	.loc 1 906 0 is_stmt 0 discriminator 1
	movl	$0, -28(%rbp)	#, b
	jmp	.L184	#
.L183:
	.loc 1 907 0 is_stmt 1
	movq	-8(%rbp), %rax	# currMB, tmp87
	movq	56(%rax), %rax	# currMB_12->mb_available_up, D.6402
	movl	524(%rax), %eax	# _17->c_ipred_mode, D.6400
	testl	%eax, %eax	# D.6400
	setne	%al	#, D.6403
	movzbl	%al, %eax	# D.6403, tmp88
	movl	%eax, -28(%rbp)	# tmp88, b
.L184:
	.loc 1 909 0
	movq	-8(%rbp), %rax	# currMB, tmp89
	movq	64(%rax), %rax	# currMB_12->mb_available_left, D.6402
	testq	%rax, %rax	# D.6402
	jne	.L185	#,
	.loc 1 909 0 is_stmt 0 discriminator 1
	movl	$0, -32(%rbp)	#, a
	jmp	.L186	#
.L185:
	.loc 1 910 0 is_stmt 1
	movq	-8(%rbp), %rax	# currMB, tmp90
	movq	64(%rax), %rax	# currMB_12->mb_available_left, D.6402
	movl	524(%rax), %eax	# _23->c_ipred_mode, D.6400
	testl	%eax, %eax	# D.6400
	setne	%al	#, D.6403
	movzbl	%al, %eax	# D.6403, tmp91
	movl	%eax, -32(%rbp)	# tmp91, a
.L186:
	.loc 1 912 0
	movl	-28(%rbp), %eax	# b, tmp96
	movl	-32(%rbp), %edx	# a, tmp97
	addl	%edx, %eax	# tmp97, tmp95
	movl	%eax, -20(%rbp)	# tmp95, act_ctx
	.loc 1 914 0
	cmpl	$0, -24(%rbp)	#, act_sym
	jne	.L187	#,
	.loc 1 914 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# act_ctx, tmp98
	cltq
	addq	$2, %rax	#, tmp99
	salq	$4, %rax	#, tmp100
	movq	%rax, %rdx	# tmp100, tmp100
	movq	-16(%rbp), %rax	# ctx, tmp101
	addq	%rax, %rdx	# tmp101, D.6405
	movq	-48(%rbp), %rax	# eep_dp, tmp102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	biari_encode_symbol	#
	jmp	.L182	#
.L187:
	.loc 1 917 0 is_stmt 1
	movl	-20(%rbp), %eax	# act_ctx, tmp103
	cltq
	addq	$2, %rax	#, tmp104
	salq	$4, %rax	#, tmp105
	movq	%rax, %rdx	# tmp105, tmp105
	movq	-16(%rbp), %rax	# ctx, tmp106
	addq	%rax, %rdx	# tmp106, D.6405
	movq	-48(%rbp), %rax	# eep_dp, tmp107
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	biari_encode_symbol	#
	.loc 1 918 0
	movq	-16(%rbp), %rax	# ctx, tmp108
	leaq	80(%rax), %rdx	#, D.6405
	movl	-24(%rbp), %eax	# act_sym, tmp109
	subl	$1, %eax	#, D.6400
	movl	%eax, %esi	# D.6400, D.6406
	movq	-48(%rbp), %rax	# eep_dp, tmp110
	movl	$2, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp110,
	call	unary_bin_max_encode	#
.L182:
	.loc 1 920 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	writeCIPredMode_CABAC, .-writeCIPredMode_CABAC
	.globl	writeCBP_BIT_CABAC
	.type	writeCBP_BIT_CABAC, @function
writeCBP_BIT_CABAC:
.LFB19:
	.loc 1 931 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# b8, b8
	movl	%esi, -56(%rbp)	# bit, bit
	movl	%edx, -60(%rbp)	# cbp, cbp
	movq	%rcx, -72(%rbp)	# currMB, currMB
	movl	%r8d, -64(%rbp)	# inter, inter
	movq	%r9, -80(%rbp)	# eep_dp, eep_dp
	.loc 1 935 0
	movl	-52(%rbp), %eax	# b8, tmp114
	cltd
	shrl	$31, %edx	#, tmp116
	addl	%edx, %eax	# tmp116, tmp117
	andl	$1, %eax	#, tmp118
	subl	%edx, %eax	# tmp116, tmp119
	addl	%eax, %eax	# tmp120
	movl	%eax, -40(%rbp)	# tmp120, mb_x
	.loc 1 936 0
	movl	-52(%rbp), %eax	# b8, tmp121
	movl	%eax, %edx	# tmp121, tmp122
	shrl	$31, %edx	#, tmp122
	addl	%edx, %eax	# tmp122, tmp123
	sarl	%eax	# tmp124
	addl	%eax, %eax	# tmp125
	movl	%eax, -36(%rbp)	# tmp125, mb_y
	.loc 1 938 0
	cmpl	$0, -36(%rbp)	#, mb_y
	jne	.L190	#,
	.loc 1 940 0
	movq	-72(%rbp), %rax	# currMB, tmp126
	movq	56(%rax), %rax	# currMB_11(D)->mb_available_up, D.6408
	testq	%rax, %rax	# D.6408
	jne	.L191	#,
	.loc 1 941 0
	movl	$0, -44(%rbp)	#, b
	jmp	.L194	#
.L191:
	.loc 1 944 0
	movq	-72(%rbp), %rax	# currMB, tmp127
	movq	56(%rax), %rax	# currMB_11(D)->mb_available_up, D.6408
	movl	72(%rax), %eax	# _14->mb_type, D.6407
	cmpl	$14, %eax	#, D.6407
	jne	.L193	#,
	.loc 1 945 0
	movl	$0, -44(%rbp)	#, b
	jmp	.L194	#
.L193:
	.loc 1 947 0
	movq	-72(%rbp), %rax	# currMB, tmp128
	movq	56(%rax), %rax	# currMB_11(D)->mb_available_up, D.6408
	movl	460(%rax), %edx	# _17->cbp, D.6407
	movl	-40(%rbp), %eax	# mb_x, tmp129
	movl	%eax, %ecx	# tmp129, tmp130
	shrl	$31, %ecx	#, tmp130
	addl	%ecx, %eax	# tmp130, tmp131
	sarl	%eax	# tmp132
	addl	$2, %eax	#, D.6407
	movl	%eax, %ecx	# D.6407, tmp157
	sarl	%cl, %edx	# tmp157, D.6407
	movl	%edx, %eax	# D.6407, D.6407
	andl	$1, %eax	#, D.6407
	testl	%eax, %eax	# D.6407
	sete	%al	#, D.6409
	movzbl	%al, %eax	# D.6409, tmp133
	movl	%eax, -44(%rbp)	# tmp133, b
	jmp	.L194	#
.L190:
	.loc 1 952 0
	movl	-40(%rbp), %eax	# mb_x, tmp134
	movl	%eax, %edx	# tmp134, tmp135
	shrl	$31, %edx	#, tmp135
	addl	%edx, %eax	# tmp135, tmp136
	sarl	%eax	# tmp137
	movl	-60(%rbp), %edx	# cbp, tmp138
	movl	%eax, %ecx	# D.6407, tmp160
	sarl	%cl, %edx	# tmp160, D.6407
	movl	%edx, %eax	# D.6407, D.6407
	andl	$1, %eax	#, D.6407
	testl	%eax, %eax	# D.6407
	sete	%al	#, D.6409
	movzbl	%al, %eax	# D.6409, tmp139
	movl	%eax, -44(%rbp)	# tmp139, b
.L194:
	.loc 1 954 0
	cmpl	$0, -40(%rbp)	#, mb_x
	jne	.L195	#,
	.loc 1 956 0
	movq	img(%rip), %rax	# img, img.77
	movl	12(%rax), %eax	# img.77_31->current_mb_nr, D.6407
	leaq	-32(%rbp), %rcx	#, tmp140
	movl	-36(%rbp), %edx	# mb_y, tmp141
	movl	-40(%rbp), %esi	# mb_x, tmp142
	movq	%rcx, %r9	# tmp140,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	%eax, %edi	# D.6407,
	call	getLuma4x4Neighbour	#
	.loc 1 957 0
	movl	-32(%rbp), %eax	# block_a.available, D.6407
	testl	%eax, %eax	# D.6407
	je	.L196	#,
	.loc 1 960 0
	movq	img(%rip), %rax	# img, img.78
	movq	14168(%rax), %rdx	# img.78_34->mb_data, D.6410
	movl	-28(%rbp), %eax	# block_a.mb_addr, D.6407
	cltq
	imulq	$632, %rax, %rax	#, D.6411, D.6411
	addq	%rdx, %rax	# D.6410, D.6410
	movl	72(%rax), %eax	# _39->mb_type, D.6407
	cmpl	$14, %eax	#, D.6407
	jne	.L197	#,
	.loc 1 961 0
	movl	$0, -48(%rbp)	#, a
	jmp	.L200	#
.L197:
	.loc 1 963 0
	movq	img(%rip), %rax	# img, img.79
	movq	14168(%rax), %rdx	# img.79_42->mb_data, D.6410
	movl	-28(%rbp), %eax	# block_a.mb_addr, D.6407
	cltq
	imulq	$632, %rax, %rax	#, D.6411, D.6411
	addq	%rdx, %rax	# D.6410, D.6410
	movl	460(%rax), %edx	# _47->cbp, D.6407
	movl	-20(%rbp), %eax	# block_a.y, D.6407
	movl	%eax, %ecx	# D.6407, tmp143
	shrl	$31, %ecx	#, tmp143
	addl	%ecx, %eax	# tmp143, tmp144
	sarl	%eax	# tmp145
	addl	%eax, %eax	# D.6407
	addl	$1, %eax	#, D.6407
	movl	%eax, %ecx	# D.6407, tmp163
	sarl	%cl, %edx	# tmp163, D.6407
	movl	%edx, %eax	# D.6407, D.6407
	andl	$1, %eax	#, D.6407
	testl	%eax, %eax	# D.6407
	sete	%al	#, D.6409
	movzbl	%al, %eax	# D.6409, tmp146
	movl	%eax, -48(%rbp)	# tmp146, a
	jmp	.L200	#
.L196:
	.loc 1 968 0
	movl	$0, -48(%rbp)	#, a
	jmp	.L200	#
.L195:
	.loc 1 971 0
	movl	-36(%rbp), %eax	# mb_y, tmp147
	movl	-60(%rbp), %edx	# cbp, tmp148
	movl	%eax, %ecx	# tmp147, tmp165
	sarl	%cl, %edx	# tmp165, D.6407
	movl	%edx, %eax	# D.6407, D.6407
	andl	$1, %eax	#, D.6407
	testl	%eax, %eax	# D.6407
	sete	%al	#, D.6409
	movzbl	%al, %eax	# D.6409, tmp149
	movl	%eax, -48(%rbp)	# tmp149, a
.L200:
	.loc 1 975 0
	movq	img(%rip), %rax	# img, img.80
	movq	14160(%rax), %rax	# img.80_62->currentSlice, D.6412
	movq	40(%rax), %rax	# _63->tex_ctx, D.6413
	leaq	96(%rax), %rcx	#, D.6414
	movl	-48(%rbp), %eax	# a, tmp150
	movslq	%eax, %rdx	# tmp150, D.6415
	movl	-44(%rbp), %eax	# b, tmp151
	addl	%eax, %eax	# D.6407
	cltq
	addq	%rdx, %rax	# D.6415, D.6415
	salq	$4, %rax	#, D.6415
	.loc 1 974 0
	leaq	(%rcx,%rax), %rdx	#, D.6416
	movl	-56(%rbp), %eax	# bit, tmp152
	movzbl	%al, %ecx	# D.6417, D.6407
	movq	-80(%rbp), %rax	# eep_dp, tmp153
	movl	%ecx, %esi	# D.6407,
	movq	%rax, %rdi	# tmp153,
	call	biari_encode_symbol	#
	.loc 1 976 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	writeCBP_BIT_CABAC, .-writeCBP_BIT_CABAC
	.globl	writeCBP_CABAC
	.type	writeCBP_CABAC, @function
writeCBP_CABAC:
.LFB20:
	.loc 1 986 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# se, se
	movq	%rsi, -64(%rbp)	# eep_dp, eep_dp
	.loc 1 987 0
	movq	img(%rip), %rax	# img, img.81
	movq	14160(%rax), %rax	# img.81_6->currentSlice, D.6418
	movq	40(%rax), %rax	# _7->tex_ctx, tmp120
	movq	%rax, -16(%rbp)	# tmp120, ctx
	.loc 1 988 0
	movq	img(%rip), %rax	# img, img.82
	movq	14168(%rax), %rdx	# img.82_9->mb_data, D.6419
	movq	img(%rip), %rax	# img, img.83
	movl	12(%rax), %eax	# img.83_11->current_mb_nr, D.6420
	cltq
	imulq	$632, %rax, %rax	#, D.6421, D.6421
	addq	%rdx, %rax	# D.6419, tmp121
	movq	%rax, -8(%rbp)	# tmp121, currMB
	.loc 1 992 0
	movq	-56(%rbp), %rax	# se, tmp122
	movl	4(%rax), %eax	# se_16(D)->value1, tmp123
	movl	%eax, -32(%rbp)	# tmp123, cbp
	.loc 1 996 0
	movl	$0, -36(%rbp)	#, b8
	jmp	.L202	#
.L203:
	.loc 1 998 0 discriminator 2
	movq	-8(%rbp), %rax	# currMB, tmp124
	movl	-36(%rbp), %edx	# b8, tmp126
	movslq	%edx, %rdx	# tmp126, tmp125
	addq	$116, %rdx	#, tmp127
	movl	8(%rax,%rdx,4), %eax	# currMB_15->b8mode, D.6420
	cmpl	$11, %eax	#, D.6420
	setne	%al	#, D.6422
	movzbl	%al, %eax	# D.6422, tmp128
	movl	%eax, -28(%rbp)	# tmp128, curr_cbp_idx
	.loc 1 999 0 discriminator 2
	movl	-36(%rbp), %eax	# b8, tmp129
	movl	$1, %edx	#, tmp130
	movl	%eax, %ecx	# tmp129, tmp176
	sall	%cl, %edx	# tmp176, D.6420
	movl	%edx, %eax	# D.6420, D.6420
	andl	-32(%rbp), %eax	# cbp, D.6420
	movl	%eax, %esi	# D.6420, D.6420
	movq	-64(%rbp), %r8	# eep_dp, tmp131
	movl	-28(%rbp), %edi	# curr_cbp_idx, tmp132
	movq	-8(%rbp), %rcx	# currMB, tmp133
	movl	-32(%rbp), %edx	# cbp, tmp134
	movl	-36(%rbp), %eax	# b8, tmp135
	movq	%r8, %r9	# tmp131,
	movl	%edi, %r8d	# tmp132,
	movl	%eax, %edi	# tmp135,
	call	writeCBP_BIT_CABAC	#
	.loc 1 996 0 discriminator 2
	addl	$1, -36(%rbp)	#, b8
.L202:
	.loc 1 996 0 is_stmt 0 discriminator 1
	cmpl	$3, -36(%rbp)	#, b8
	jle	.L203	#,
	.loc 1 1002 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.84
	movl	72700(%rax), %eax	# img.84_26->yuv_format, D.6420
	testl	%eax, %eax	# D.6420
	je	.L201	#,
	.loc 1 1005 0
	movl	$0, -40(%rbp)	#, b
	.loc 1 1006 0
	movq	-8(%rbp), %rax	# currMB, tmp136
	movq	56(%rax), %rax	# currMB_15->mb_available_up, D.6423
	testq	%rax, %rax	# D.6423
	je	.L205	#,
	.loc 1 1008 0
	movq	-8(%rbp), %rax	# currMB, tmp137
	movq	56(%rax), %rax	# currMB_15->mb_available_up, D.6423
	movl	72(%rax), %eax	# _30->mb_type, D.6420
	cmpl	$14, %eax	#, D.6420
	jne	.L206	#,
	.loc 1 1009 0
	movl	$1, -40(%rbp)	#, b
	jmp	.L205	#
.L206:
	.loc 1 1011 0
	movq	-8(%rbp), %rax	# currMB, tmp138
	movq	56(%rax), %rax	# currMB_15->mb_available_up, D.6423
	movl	460(%rax), %eax	# _33->cbp, D.6420
	cmpl	$15, %eax	#, D.6420
	setg	%al	#, D.6422
	movzbl	%al, %eax	# D.6422, tmp139
	movl	%eax, -40(%rbp)	# tmp139, b
.L205:
	.loc 1 1015 0
	movl	$0, -44(%rbp)	#, a
	.loc 1 1016 0
	movq	-8(%rbp), %rax	# currMB, tmp140
	movq	64(%rax), %rax	# currMB_15->mb_available_left, D.6423
	testq	%rax, %rax	# D.6423
	je	.L207	#,
	.loc 1 1018 0
	movq	-8(%rbp), %rax	# currMB, tmp141
	movq	64(%rax), %rax	# currMB_15->mb_available_left, D.6423
	movl	72(%rax), %eax	# _39->mb_type, D.6420
	cmpl	$14, %eax	#, D.6420
	jne	.L208	#,
	.loc 1 1019 0
	movl	$1, -44(%rbp)	#, a
	jmp	.L207	#
.L208:
	.loc 1 1021 0
	movq	-8(%rbp), %rax	# currMB, tmp142
	movq	64(%rax), %rax	# currMB_15->mb_available_left, D.6423
	movl	460(%rax), %eax	# _42->cbp, D.6420
	cmpl	$15, %eax	#, D.6420
	setg	%al	#, D.6422
	movzbl	%al, %eax	# D.6422, tmp143
	movl	%eax, -44(%rbp)	# tmp143, a
.L207:
	.loc 1 1024 0
	movl	-40(%rbp), %eax	# b, tmp144
	leal	(%rax,%rax), %edx	#, D.6420
	movl	-44(%rbp), %eax	# a, tmp148
	addl	%edx, %eax	# D.6420, tmp147
	movl	%eax, -24(%rbp)	# tmp147, curr_cbp_ctx
	.loc 1 1025 0
	cmpl	$15, -32(%rbp)	#, cbp
	setg	%al	#, D.6422
	movzbl	%al, %eax	# D.6422, tmp149
	movl	%eax, -20(%rbp)	# tmp149, cbp_bit
	.loc 1 1026 0
	movq	-16(%rbp), %rax	# ctx, tmp150
	leaq	160(%rax), %rdx	#, D.6424
	movl	-24(%rbp), %eax	# curr_cbp_ctx, tmp151
	cltq
	salq	$4, %rax	#, D.6421
	addq	%rax, %rdx	# D.6421, D.6425
	movl	-20(%rbp), %eax	# cbp_bit, tmp152
	movzbl	%al, %ecx	# D.6426, D.6420
	movq	-64(%rbp), %rax	# eep_dp, tmp153
	movl	%ecx, %esi	# D.6420,
	movq	%rax, %rdi	# tmp153,
	call	biari_encode_symbol	#
	.loc 1 1028 0
	cmpl	$15, -32(%rbp)	#, cbp
	jle	.L201	#,
	.loc 1 1030 0
	movl	$0, -40(%rbp)	#, b
	.loc 1 1031 0
	movq	-8(%rbp), %rax	# currMB, tmp154
	movq	56(%rax), %rax	# currMB_15->mb_available_up, D.6423
	testq	%rax, %rax	# D.6423
	je	.L209	#,
	.loc 1 1033 0
	movq	-8(%rbp), %rax	# currMB, tmp155
	movq	56(%rax), %rax	# currMB_15->mb_available_up, D.6423
	movl	72(%rax), %eax	# _58->mb_type, D.6420
	cmpl	$14, %eax	#, D.6420
	jne	.L210	#,
	.loc 1 1034 0
	movl	$1, -40(%rbp)	#, b
	jmp	.L209	#
.L210:
	.loc 1 1036 0
	movq	-8(%rbp), %rax	# currMB, tmp156
	movq	56(%rax), %rax	# currMB_15->mb_available_up, D.6423
	movl	460(%rax), %eax	# _61->cbp, D.6420
	cmpl	$15, %eax	#, D.6420
	jle	.L209	#,
	.loc 1 1037 0
	movq	-8(%rbp), %rax	# currMB, tmp157
	movq	56(%rax), %rax	# currMB_15->mb_available_up, D.6423
	movl	460(%rax), %eax	# _63->cbp, D.6420
	sarl	$4, %eax	#, D.6420
	cmpl	$2, %eax	#, D.6420
	sete	%al	#, D.6422
	movzbl	%al, %eax	# D.6422, tmp158
	movl	%eax, -40(%rbp)	# tmp158, b
.L209:
	.loc 1 1041 0
	movl	$0, -44(%rbp)	#, a
	.loc 1 1042 0
	movq	-8(%rbp), %rax	# currMB, tmp159
	movq	64(%rax), %rax	# currMB_15->mb_available_left, D.6423
	testq	%rax, %rax	# D.6423
	je	.L211	#,
	.loc 1 1044 0
	movq	-8(%rbp), %rax	# currMB, tmp160
	movq	64(%rax), %rax	# currMB_15->mb_available_left, D.6423
	movl	72(%rax), %eax	# _70->mb_type, D.6420
	cmpl	$14, %eax	#, D.6420
	jne	.L212	#,
	.loc 1 1045 0
	movl	$1, -44(%rbp)	#, a
	jmp	.L211	#
.L212:
	.loc 1 1047 0
	movq	-8(%rbp), %rax	# currMB, tmp161
	movq	64(%rax), %rax	# currMB_15->mb_available_left, D.6423
	movl	460(%rax), %eax	# _73->cbp, D.6420
	cmpl	$15, %eax	#, D.6420
	jle	.L211	#,
	.loc 1 1048 0
	movq	-8(%rbp), %rax	# currMB, tmp162
	movq	64(%rax), %rax	# currMB_15->mb_available_left, D.6423
	movl	460(%rax), %eax	# _75->cbp, D.6420
	sarl	$4, %eax	#, D.6420
	cmpl	$2, %eax	#, D.6420
	sete	%al	#, D.6422
	movzbl	%al, %eax	# D.6422, tmp163
	movl	%eax, -44(%rbp)	# tmp163, a
.L211:
	.loc 1 1051 0
	movl	-40(%rbp), %eax	# b, tmp164
	leal	(%rax,%rax), %edx	#, D.6420
	movl	-44(%rbp), %eax	# a, tmp168
	addl	%edx, %eax	# D.6420, tmp167
	movl	%eax, -24(%rbp)	# tmp167, curr_cbp_ctx
	.loc 1 1052 0
	movl	-32(%rbp), %eax	# cbp, tmp169
	sarl	$4, %eax	#, D.6420
	cmpl	$2, %eax	#, D.6420
	sete	%al	#, D.6422
	movzbl	%al, %eax	# D.6422, tmp170
	movl	%eax, -20(%rbp)	# tmp170, cbp_bit
	.loc 1 1053 0
	movq	-16(%rbp), %rax	# ctx, tmp171
	leaq	224(%rax), %rdx	#, D.6424
	movl	-24(%rbp), %eax	# curr_cbp_ctx, tmp172
	cltq
	salq	$4, %rax	#, D.6421
	addq	%rax, %rdx	# D.6421, D.6425
	movl	-20(%rbp), %eax	# cbp_bit, tmp173
	movzbl	%al, %ecx	# D.6426, D.6420
	movq	-64(%rbp), %rax	# eep_dp, tmp174
	movl	%ecx, %esi	# D.6420,
	movq	%rax, %rdi	# tmp174,
	call	biari_encode_symbol	#
.L201:
	.loc 1 1056 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	writeCBP_CABAC, .-writeCBP_CABAC
	.section	.rodata
	.align 32
	.type	maxpos, @object
	.size	maxpos, 40
maxpos:
	.long	16
	.long	15
	.long	64
	.long	32
	.long	32
	.long	16
	.long	4
	.long	15
	.long	8
	.long	16
	.align 32
	.type	c1isdc, @object
	.size	c1isdc, 40
c1isdc:
	.long	1
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1
	.align 32
	.type	type2ctx_bcbp, @object
	.size	type2ctx_bcbp, 40
type2ctx_bcbp:
	.long	0
	.long	1
	.long	2
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	5
	.long	5
	.align 32
	.type	type2ctx_map, @object
	.size	type2ctx_map, 40
type2ctx_map:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	6
	.long	6
	.align 32
	.type	type2ctx_last, @object
	.size	type2ctx_last, 40
type2ctx_last:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	6
	.long	6
	.align 32
	.type	type2ctx_one, @object
	.size	type2ctx_one, 40
type2ctx_one:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	3
	.long	4
	.long	5
	.long	6
	.long	5
	.long	5
	.align 32
	.type	type2ctx_abs, @object
	.size	type2ctx_abs, 40
type2ctx_abs:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	3
	.long	4
	.long	5
	.long	6
	.long	5
	.long	5
	.align 32
	.type	max_c2, @object
	.size	max_c2, 40
max_c2:
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	3
	.long	4
	.long	3
	.long	3
	.text
	.globl	write_and_store_CBP_block_bit
	.type	write_and_store_CBP_block_bit, @function
write_and_store_CBP_block_bit:
.LFB21:
	.loc 1 1077 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -136(%rbp)	# currMB, currMB
	movq	%rsi, -144(%rbp)	# eep_dp, eep_dp
	movl	%edx, -148(%rbp)	# type, type
	movl	%ecx, -152(%rbp)	# cbp_bit, cbp_bit
	.loc 1 1080 0
	cmpl	$1, -148(%rbp)	#, type
	je	.L214	#,
	.loc 1 1080 0 is_stmt 0 discriminator 2
	cmpl	$2, -148(%rbp)	#, type
	je	.L214	#,
	.loc 1 1080 0 discriminator 1
	cmpl	$3, -148(%rbp)	#, type
	je	.L214	#,
	cmpl	$4, -148(%rbp)	#, type
	je	.L214	#,
	cmpl	$5, -148(%rbp)	#, type
	jne	.L215	#,
.L214:
	movl	$1, %eax	#, iftmp.85
	jmp	.L216	#
.L215:
	.loc 1 1080 0 discriminator 3
	movl	$0, %eax	#, iftmp.85
.L216:
	.loc 1 1080 0 discriminator 4
	movl	%eax, -112(%rbp)	# iftmp.85, y_ac
	.loc 1 1081 0 is_stmt 1 discriminator 4
	cmpl	$0, -148(%rbp)	#, type
	sete	%al	#, D.6427
	movzbl	%al, %eax	# D.6427, tmp220
	movl	%eax, -108(%rbp)	# tmp220, y_dc
	.loc 1 1082 0 discriminator 4
	cmpl	$7, -148(%rbp)	#, type
	jne	.L217	#,
	.loc 1 1082 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.87
	movl	84(%rax), %eax	# img.87_38->is_v_block, D.6428
	testl	%eax, %eax	# D.6428
	jne	.L217	#,
	.loc 1 1082 0 discriminator 3
	movl	$1, %eax	#, iftmp.86
	jmp	.L218	#
.L217:
	.loc 1 1082 0 discriminator 2
	movl	$0, %eax	#, iftmp.86
.L218:
	.loc 1 1082 0 discriminator 4
	movl	%eax, -104(%rbp)	# iftmp.86, u_ac
	.loc 1 1083 0 is_stmt 1 discriminator 4
	cmpl	$7, -148(%rbp)	#, type
	jne	.L219	#,
	.loc 1 1083 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.89
	movl	84(%rax), %eax	# img.89_43->is_v_block, D.6428
	testl	%eax, %eax	# D.6428
	je	.L219	#,
	.loc 1 1083 0 discriminator 3
	movl	$1, %eax	#, iftmp.88
	jmp	.L220	#
.L219:
	.loc 1 1083 0 discriminator 2
	movl	$0, %eax	#, iftmp.88
.L220:
	.loc 1 1083 0 discriminator 4
	movl	%eax, -100(%rbp)	# iftmp.88, v_ac
	.loc 1 1084 0 is_stmt 1 discriminator 4
	cmpl	$6, -148(%rbp)	#, type
	je	.L221	#,
	.loc 1 1084 0 is_stmt 0 discriminator 2
	cmpl	$8, -148(%rbp)	#, type
	je	.L221	#,
	.loc 1 1084 0 discriminator 1
	cmpl	$9, -148(%rbp)	#, type
	jne	.L222	#,
.L221:
	movl	$1, %eax	#, iftmp.90
	jmp	.L223	#
.L222:
	.loc 1 1084 0 discriminator 3
	movl	$0, %eax	#, iftmp.90
.L223:
	.loc 1 1084 0 discriminator 4
	movl	%eax, -96(%rbp)	# iftmp.90, chroma_dc
	.loc 1 1085 0 is_stmt 1 discriminator 4
	cmpl	$0, -96(%rbp)	#, chroma_dc
	je	.L224	#,
	.loc 1 1085 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.92
	movl	84(%rax), %eax	# img.92_51->is_v_block, D.6428
	testl	%eax, %eax	# D.6428
	jne	.L224	#,
	.loc 1 1085 0 discriminator 3
	movl	$1, %eax	#, iftmp.91
	jmp	.L225	#
.L224:
	.loc 1 1085 0 discriminator 2
	movl	$0, %eax	#, iftmp.91
.L225:
	.loc 1 1085 0 discriminator 4
	movl	%eax, -92(%rbp)	# iftmp.91, u_dc
	.loc 1 1086 0 is_stmt 1 discriminator 4
	cmpl	$0, -96(%rbp)	#, chroma_dc
	je	.L226	#,
	.loc 1 1086 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.94
	movl	84(%rax), %eax	# img.94_56->is_v_block, D.6428
	testl	%eax, %eax	# D.6428
	je	.L226	#,
	.loc 1 1086 0 discriminator 3
	movl	$1, %eax	#, iftmp.93
	jmp	.L227	#
.L226:
	.loc 1 1086 0 discriminator 2
	movl	$0, %eax	#, iftmp.93
.L227:
	.loc 1 1086 0 discriminator 4
	movl	%eax, -88(%rbp)	# iftmp.93, v_dc
	.loc 1 1087 0 is_stmt 1 discriminator 4
	cmpl	$0, -112(%rbp)	#, y_ac
	jne	.L228	#,
	.loc 1 1087 0 is_stmt 0 discriminator 2
	cmpl	$0, -104(%rbp)	#, u_ac
	jne	.L228	#,
	.loc 1 1087 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, v_ac
	je	.L229	#,
.L228:
	movq	img(%rip), %rax	# img, img.96
	movl	76(%rax), %eax	# img.96_62->subblock_y, iftmp.95
	jmp	.L230	#
.L229:
	movl	$0, %eax	#, iftmp.95
.L230:
	.loc 1 1087 0 discriminator 3
	movl	%eax, -84(%rbp)	# iftmp.95, j
	.loc 1 1088 0 is_stmt 1 discriminator 3
	cmpl	$0, -112(%rbp)	#, y_ac
	jne	.L231	#,
	.loc 1 1088 0 is_stmt 0 discriminator 2
	cmpl	$0, -104(%rbp)	#, u_ac
	jne	.L231	#,
	.loc 1 1088 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, v_ac
	je	.L232	#,
.L231:
	movq	img(%rip), %rax	# img, img.98
	movl	72(%rax), %eax	# img.98_66->subblock_x, iftmp.97
	jmp	.L233	#
.L232:
	movl	$0, %eax	#, iftmp.97
.L233:
	.loc 1 1088 0 discriminator 3
	movl	%eax, -80(%rbp)	# iftmp.97, i
	.loc 1 1089 0 is_stmt 1 discriminator 3
	cmpl	$0, -108(%rbp)	#, y_dc
	jne	.L234	#,
	.loc 1 1089 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, y_ac
	jne	.L235	#,
	cmpl	$0, -92(%rbp)	#, u_dc
	jne	.L236	#,
	cmpl	$0, -88(%rbp)	#, v_dc
	jne	.L237	#,
	cmpl	$0, -104(%rbp)	#, u_ac
	je	.L238	#,
	movl	$19, %eax	#, iftmp.103
	jmp	.L243	#
.L238:
	.loc 1 1089 0 discriminator 2
	movl	$23, %eax	#, iftmp.103
	jmp	.L243	#
.L237:
	movl	$18, %eax	#, iftmp.102
	jmp	.L243	#
.L236:
	movl	$17, %eax	#, iftmp.101
	jmp	.L243	#
.L235:
	movl	$1, %eax	#, iftmp.100
	jmp	.L243	#
.L234:
	movl	$0, %eax	#, iftmp.99
.L243:
	.loc 1 1089 0 discriminator 3
	movl	%eax, -76(%rbp)	# iftmp.99, bit
	.loc 1 1090 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.104
	movl	80(%rax), %eax	# img.104_80->is_intra_block, D.6428
	testl	%eax, %eax	# D.6428
	setne	%al	#, D.6427
	movzbl	%al, %eax	# D.6427, tmp221
	movl	%eax, -72(%rbp)	# tmp221, default_bit
	.loc 1 1091 0 discriminator 3
	movl	-72(%rbp), %eax	# default_bit, tmp222
	movl	%eax, -128(%rbp)	# tmp222, upper_bit
	.loc 1 1092 0 discriminator 3
	movl	-72(%rbp), %eax	# default_bit, tmp223
	movl	%eax, -124(%rbp)	# tmp223, left_bit
	.loc 1 1095 0 discriminator 3
	movl	$0, -120(%rbp)	#, bit_pos_a
	.loc 1 1096 0 discriminator 3
	movl	$0, -116(%rbp)	#, bit_pos_b
	.loc 1 1099 0 discriminator 3
	cmpl	$0, -112(%rbp)	#, y_ac
	jne	.L244	#,
	.loc 1 1099 0 is_stmt 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, y_dc
	je	.L245	#,
.L244:
	.loc 1 1101 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.105
	movl	12(%rax), %eax	# img.105_102->current_mb_nr, D.6428
	leaq	-64(%rbp), %rcx	#, tmp224
	movl	-84(%rbp), %edx	# j, tmp225
	movl	-80(%rbp), %esi	# i, tmp226
	movq	%rcx, %r9	# tmp224,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	%eax, %edi	# D.6428,
	call	getLuma4x4Neighbour	#
	.loc 1 1102 0
	movq	img(%rip), %rax	# img, img.106
	movl	12(%rax), %eax	# img.106_104->current_mb_nr, D.6428
	leaq	-32(%rbp), %rcx	#, tmp227
	movl	-84(%rbp), %edx	# j, tmp228
	movl	-80(%rbp), %esi	# i, tmp229
	movq	%rcx, %r9	# tmp227,
	movl	$-1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6428,
	call	getLuma4x4Neighbour	#
	.loc 1 1103 0
	cmpl	$0, -112(%rbp)	#, y_ac
	je	.L246	#,
	.loc 1 1105 0
	movl	-64(%rbp), %eax	# block_a.available, D.6428
	testl	%eax, %eax	# D.6428
	je	.L247	#,
	.loc 1 1106 0
	movl	-52(%rbp), %eax	# block_a.y, D.6428
	leal	0(,%rax,4), %edx	#, D.6428
	movl	-56(%rbp), %eax	# block_a.x, D.6428
	addl	%edx, %eax	# D.6428, tmp230
	movl	%eax, -120(%rbp)	# tmp230, bit_pos_a
.L247:
	.loc 1 1107 0
	movl	-32(%rbp), %eax	# block_b.available, D.6428
	testl	%eax, %eax	# D.6428
	je	.L246	#,
	.loc 1 1108 0
	movl	-20(%rbp), %eax	# block_b.y, D.6428
	leal	0(,%rax,4), %edx	#, D.6428
	movl	-24(%rbp), %eax	# block_b.x, D.6428
	addl	%edx, %eax	# D.6428, tmp231
	movl	%eax, -116(%rbp)	# tmp231, bit_pos_b
	.loc 1 1103 0
	jmp	.L248	#
.L246:
	.loc 1 1103 0 is_stmt 0 discriminator 1
	jmp	.L248	#
.L245:
	.loc 1 1113 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.107
	movl	12(%rax), %eax	# img.107_88->current_mb_nr, D.6428
	leaq	-64(%rbp), %rcx	#, tmp232
	movl	-84(%rbp), %edx	# j, tmp233
	movl	-80(%rbp), %esi	# i, tmp234
	movq	%rcx, %r9	# tmp232,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	%eax, %edi	# D.6428,
	call	getChroma4x4Neighbour	#
	.loc 1 1114 0
	movq	img(%rip), %rax	# img, img.108
	movl	12(%rax), %eax	# img.108_90->current_mb_nr, D.6428
	leaq	-32(%rbp), %rcx	#, tmp235
	movl	-84(%rbp), %edx	# j, tmp236
	movl	-80(%rbp), %esi	# i, tmp237
	movq	%rcx, %r9	# tmp235,
	movl	$-1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.6428,
	call	getChroma4x4Neighbour	#
	.loc 1 1115 0
	cmpl	$0, -104(%rbp)	#, u_ac
	jne	.L249	#,
	.loc 1 1115 0 is_stmt 0 discriminator 1
	cmpl	$0, -100(%rbp)	#, v_ac
	je	.L248	#,
.L249:
	.loc 1 1117 0 is_stmt 1
	movl	-64(%rbp), %eax	# block_a.available, D.6428
	testl	%eax, %eax	# D.6428
	je	.L250	#,
	.loc 1 1118 0
	movl	-52(%rbp), %eax	# block_a.y, D.6428
	leal	(%rax,%rax), %edx	#, D.6428
	movl	-56(%rbp), %eax	# block_a.x, D.6428
	addl	%edx, %eax	# D.6428, tmp238
	movl	%eax, -120(%rbp)	# tmp238, bit_pos_a
.L250:
	.loc 1 1119 0
	movl	-32(%rbp), %eax	# block_b.available, D.6428
	testl	%eax, %eax	# D.6428
	je	.L248	#,
	.loc 1 1120 0
	movl	-20(%rbp), %eax	# block_b.y, D.6428
	leal	(%rax,%rax), %edx	#, D.6428
	movl	-24(%rbp), %eax	# block_b.x, D.6428
	addl	%edx, %eax	# D.6428, tmp239
	movl	%eax, -116(%rbp)	# tmp239, bit_pos_b
.L248:
	.loc 1 1124 0
	cmpl	$0, -108(%rbp)	#, y_dc
	jne	.L251	#,
	.loc 1 1124 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, y_ac
	je	.L252	#,
	movl	-84(%rbp), %eax	# j, tmp240
	sall	$2, %eax	#, D.6428
	leal	1(%rax), %edx	#, D.6428
	movl	-80(%rbp), %eax	# i, tmp241
	addl	%edx, %eax	# D.6428, iftmp.110
	jmp	.L260	#
.L252:
	.loc 1 1124 0 discriminator 2
	cmpl	$0, -92(%rbp)	#, u_dc
	jne	.L254	#,
	.loc 1 1124 0 discriminator 1
	cmpl	$0, -88(%rbp)	#, v_dc
	jne	.L255	#,
	cmpl	$0, -104(%rbp)	#, u_ac
	je	.L256	#,
	movl	-84(%rbp), %eax	# j, tmp242
	addl	%eax, %eax	# D.6428
	leal	19(%rax), %edx	#, D.6428
	movl	-80(%rbp), %eax	# i, tmp243
	addl	%edx, %eax	# D.6428, iftmp.113
	jmp	.L260	#
.L256:
	.loc 1 1124 0 discriminator 2
	movl	-84(%rbp), %eax	# j, tmp244
	addl	%eax, %eax	# D.6428
	leal	23(%rax), %edx	#, D.6428
	movl	-80(%rbp), %eax	# i, tmp245
	addl	%edx, %eax	# D.6428, iftmp.113
	jmp	.L260	#
.L255:
	movl	$18, %eax	#, iftmp.112
	jmp	.L260	#
.L254:
	movl	$17, %eax	#, iftmp.111
	jmp	.L260	#
.L251:
	movl	$0, %eax	#, iftmp.109
.L260:
	.loc 1 1124 0 discriminator 3
	movl	%eax, -76(%rbp)	# iftmp.109, bit
	.loc 1 1126 0 is_stmt 1 discriminator 3
	cmpl	$0, -152(%rbp)	#, cbp_bit
	je	.L261	#,
	.loc 1 1128 0
	cmpl	$2, -148(%rbp)	#, type
	jne	.L262	#,
	.loc 1 1130 0
	movq	-136(%rbp), %rax	# currMB, tmp246
	movq	504(%rax), %rdx	# currMB_134(D)->cbp_bits, D.6429
	movl	-76(%rbp), %eax	# bit, tmp247
	movl	$1, %esi	#, tmp248
	movl	%eax, %ecx	# tmp247, tmp306
	sall	%cl, %esi	# tmp306, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	orq	%rax, %rdx	# D.6429, D.6429
	movq	-136(%rbp), %rax	# currMB, tmp249
	movq	%rdx, 504(%rax)	# D.6429, currMB_134(D)->cbp_bits
	.loc 1 1131 0
	movq	-136(%rbp), %rax	# currMB, tmp250
	movq	504(%rax), %rdx	# currMB_134(D)->cbp_bits, D.6429
	movl	-76(%rbp), %eax	# bit, tmp251
	addl	$1, %eax	#, D.6428
	movl	$1, %esi	#, tmp252
	movl	%eax, %ecx	# D.6428, tmp308
	sall	%cl, %esi	# tmp308, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	orq	%rax, %rdx	# D.6429, D.6429
	movq	-136(%rbp), %rax	# currMB, tmp253
	movq	%rdx, 504(%rax)	# D.6429, currMB_134(D)->cbp_bits
	.loc 1 1132 0
	movq	-136(%rbp), %rax	# currMB, tmp254
	movq	504(%rax), %rdx	# currMB_134(D)->cbp_bits, D.6429
	movl	-76(%rbp), %eax	# bit, tmp255
	addl	$4, %eax	#, D.6428
	movl	$1, %esi	#, tmp256
	movl	%eax, %ecx	# D.6428, tmp310
	sall	%cl, %esi	# tmp310, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	orq	%rax, %rdx	# D.6429, D.6429
	movq	-136(%rbp), %rax	# currMB, tmp257
	movq	%rdx, 504(%rax)	# D.6429, currMB_134(D)->cbp_bits
	.loc 1 1133 0
	movq	-136(%rbp), %rax	# currMB, tmp258
	movq	504(%rax), %rdx	# currMB_134(D)->cbp_bits, D.6429
	movl	-76(%rbp), %eax	# bit, tmp259
	addl	$5, %eax	#, D.6428
	movl	$1, %esi	#, tmp260
	movl	%eax, %ecx	# D.6428, tmp312
	sall	%cl, %esi	# tmp312, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	orq	%rax, %rdx	# D.6429, D.6429
	movq	-136(%rbp), %rax	# currMB, tmp261
	movq	%rdx, 504(%rax)	# D.6429, currMB_134(D)->cbp_bits
	jmp	.L261	#
.L262:
	.loc 1 1135 0
	cmpl	$3, -148(%rbp)	#, type
	jne	.L263	#,
	.loc 1 1137 0
	movq	-136(%rbp), %rax	# currMB, tmp262
	movq	504(%rax), %rdx	# currMB_134(D)->cbp_bits, D.6429
	movl	-76(%rbp), %eax	# bit, tmp263
	movl	$1, %esi	#, tmp264
	movl	%eax, %ecx	# tmp263, tmp314
	sall	%cl, %esi	# tmp314, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	orq	%rax, %rdx	# D.6429, D.6429
	movq	-136(%rbp), %rax	# currMB, tmp265
	movq	%rdx, 504(%rax)	# D.6429, currMB_134(D)->cbp_bits
	.loc 1 1138 0
	movq	-136(%rbp), %rax	# currMB, tmp266
	movq	504(%rax), %rdx	# currMB_134(D)->cbp_bits, D.6429
	movl	-76(%rbp), %eax	# bit, tmp267
	addl	$1, %eax	#, D.6428
	movl	$1, %esi	#, tmp268
	movl	%eax, %ecx	# D.6428, tmp316
	sall	%cl, %esi	# tmp316, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	orq	%rax, %rdx	# D.6429, D.6429
	movq	-136(%rbp), %rax	# currMB, tmp269
	movq	%rdx, 504(%rax)	# D.6429, currMB_134(D)->cbp_bits
	jmp	.L261	#
.L263:
	.loc 1 1140 0
	cmpl	$4, -148(%rbp)	#, type
	jne	.L264	#,
	.loc 1 1142 0
	movq	-136(%rbp), %rax	# currMB, tmp270
	movq	504(%rax), %rdx	# currMB_134(D)->cbp_bits, D.6429
	movl	-76(%rbp), %eax	# bit, tmp271
	movl	$1, %esi	#, tmp272
	movl	%eax, %ecx	# tmp271, tmp318
	sall	%cl, %esi	# tmp318, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	orq	%rax, %rdx	# D.6429, D.6429
	movq	-136(%rbp), %rax	# currMB, tmp273
	movq	%rdx, 504(%rax)	# D.6429, currMB_134(D)->cbp_bits
	.loc 1 1143 0
	movq	-136(%rbp), %rax	# currMB, tmp274
	movq	504(%rax), %rdx	# currMB_134(D)->cbp_bits, D.6429
	movl	-76(%rbp), %eax	# bit, tmp275
	addl	$4, %eax	#, D.6428
	movl	$1, %esi	#, tmp276
	movl	%eax, %ecx	# D.6428, tmp320
	sall	%cl, %esi	# tmp320, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	orq	%rax, %rdx	# D.6429, D.6429
	movq	-136(%rbp), %rax	# currMB, tmp277
	movq	%rdx, 504(%rax)	# D.6429, currMB_134(D)->cbp_bits
	jmp	.L261	#
.L264:
	.loc 1 1147 0
	movq	-136(%rbp), %rax	# currMB, tmp278
	movq	504(%rax), %rdx	# currMB_134(D)->cbp_bits, D.6429
	movl	-76(%rbp), %eax	# bit, tmp279
	movl	$1, %esi	#, tmp280
	movl	%eax, %ecx	# tmp279, tmp322
	sall	%cl, %esi	# tmp322, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	orq	%rax, %rdx	# D.6429, D.6429
	movq	-136(%rbp), %rax	# currMB, tmp281
	movq	%rdx, 504(%rax)	# D.6429, currMB_134(D)->cbp_bits
.L261:
	.loc 1 1151 0
	cmpl	$0, -108(%rbp)	#, y_dc
	jne	.L265	#,
	.loc 1 1151 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, y_ac
	jne	.L266	#,
	cmpl	$0, -92(%rbp)	#, u_dc
	jne	.L267	#,
	cmpl	$0, -88(%rbp)	#, v_dc
	jne	.L268	#,
	cmpl	$0, -104(%rbp)	#, u_ac
	je	.L269	#,
	movl	$19, %eax	#, iftmp.118
	jmp	.L274	#
.L269:
	.loc 1 1151 0 discriminator 2
	movl	$23, %eax	#, iftmp.118
	jmp	.L274	#
.L268:
	movl	$18, %eax	#, iftmp.117
	jmp	.L274	#
.L267:
	movl	$17, %eax	#, iftmp.116
	jmp	.L274	#
.L266:
	movl	$1, %eax	#, iftmp.115
	jmp	.L274	#
.L265:
	movl	$0, %eax	#, iftmp.114
.L274:
	.loc 1 1151 0 discriminator 3
	movl	%eax, -76(%rbp)	# iftmp.114, bit
	.loc 1 1152 0 is_stmt 1 discriminator 3
	cmpl	$2, -148(%rbp)	#, type
	je	.L213	#,
	.loc 1 1154 0
	movl	-32(%rbp), %eax	# block_b.available, D.6428
	testl	%eax, %eax	# D.6428
	je	.L276	#,
	.loc 1 1156 0
	movq	img(%rip), %rax	# img, img.119
	movq	14168(%rax), %rdx	# img.119_188->mb_data, D.6430
	movl	-28(%rbp), %eax	# block_b.mb_addr, D.6428
	cltq
	imulq	$632, %rax, %rax	#, D.6429, D.6429
	addq	%rdx, %rax	# D.6430, D.6430
	movl	72(%rax), %eax	# _193->mb_type, D.6428
	cmpl	$14, %eax	#, D.6428
	jne	.L277	#,
	.loc 1 1157 0
	movl	$1, -128(%rbp)	#, upper_bit
	jmp	.L276	#
.L277:
	.loc 1 1159 0
	movq	img(%rip), %rax	# img, img.120
	movq	14168(%rax), %rdx	# img.120_196->mb_data, D.6430
	movl	-28(%rbp), %eax	# block_b.mb_addr, D.6428
	cltq
	imulq	$632, %rax, %rax	#, D.6429, D.6429
	addq	%rdx, %rax	# D.6430, D.6430
	movq	504(%rax), %rdx	# _201->cbp_bits, D.6429
	movl	-116(%rbp), %eax	# bit_pos_b, tmp282
	movl	-76(%rbp), %ecx	# bit, tmp283
	addl	%ecx, %eax	# tmp283, D.6428
	movl	$1, %esi	#, tmp284
	movl	%eax, %ecx	# D.6428, tmp324
	sall	%cl, %esi	# tmp324, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	movq	%rdx, %rsi	# D.6429, D.6429
	andq	%rax, %rsi	# D.6429, D.6429
	movl	-116(%rbp), %eax	# bit_pos_b, tmp285
	movl	-76(%rbp), %edx	# bit, tmp286
	addl	%edx, %eax	# tmp286, D.6428
	movl	%eax, %ecx	# D.6428, tmp327
	shrq	%cl, %rsi	# tmp327, D.6429
	movq	%rsi, %rax	# D.6429, D.6429
	movl	%eax, -128(%rbp)	# D.6429, upper_bit
.L276:
	.loc 1 1163 0
	movl	-64(%rbp), %eax	# block_a.available, D.6428
	testl	%eax, %eax	# D.6428
	je	.L278	#,
	.loc 1 1165 0
	movq	img(%rip), %rax	# img, img.121
	movq	14168(%rax), %rdx	# img.121_211->mb_data, D.6430
	movl	-60(%rbp), %eax	# block_a.mb_addr, D.6428
	cltq
	imulq	$632, %rax, %rax	#, D.6429, D.6429
	addq	%rdx, %rax	# D.6430, D.6430
	movl	72(%rax), %eax	# _216->mb_type, D.6428
	cmpl	$14, %eax	#, D.6428
	jne	.L279	#,
	.loc 1 1166 0
	movl	$1, -124(%rbp)	#, left_bit
	jmp	.L278	#
.L279:
	.loc 1 1168 0
	movq	img(%rip), %rax	# img, img.122
	movq	14168(%rax), %rdx	# img.122_219->mb_data, D.6430
	movl	-60(%rbp), %eax	# block_a.mb_addr, D.6428
	cltq
	imulq	$632, %rax, %rax	#, D.6429, D.6429
	addq	%rdx, %rax	# D.6430, D.6430
	movq	504(%rax), %rdx	# _224->cbp_bits, D.6429
	movl	-120(%rbp), %eax	# bit_pos_a, tmp287
	movl	-76(%rbp), %ecx	# bit, tmp288
	addl	%ecx, %eax	# tmp288, D.6428
	movl	$1, %esi	#, tmp289
	movl	%eax, %ecx	# D.6428, tmp329
	sall	%cl, %esi	# tmp329, D.6428
	movl	%esi, %eax	# D.6428, D.6428
	cltq
	movq	%rdx, %rsi	# D.6429, D.6429
	andq	%rax, %rsi	# D.6429, D.6429
	movl	-120(%rbp), %eax	# bit_pos_a, tmp290
	movl	-76(%rbp), %edx	# bit, tmp291
	addl	%edx, %eax	# tmp291, D.6428
	movl	%eax, %ecx	# D.6428, tmp332
	shrq	%cl, %rsi	# tmp332, D.6429
	movq	%rsi, %rax	# D.6429, D.6429
	movl	%eax, -124(%rbp)	# D.6429, left_bit
.L278:
	.loc 1 1171 0
	movl	-128(%rbp), %eax	# upper_bit, tmp292
	leal	(%rax,%rax), %edx	#, D.6428
	movl	-124(%rbp), %eax	# left_bit, tmp296
	addl	%edx, %eax	# D.6428, tmp295
	movl	%eax, -68(%rbp)	# tmp295, ctx
	.loc 1 1174 0
	movq	img(%rip), %rax	# img, img.123
	movq	14160(%rax), %rax	# img.123_235->currentSlice, D.6431
	movq	40(%rax), %rdx	# _236->tex_ctx, D.6432
	movl	-148(%rbp), %eax	# type, tmp298
	cltq
	movl	type2ctx_bcbp(,%rax,4), %eax	# type2ctx_bcbp, D.6428
	cltq
	salq	$6, %rax	#, tmp300
	addq	$288, %rax	#, tmp301
	addq	%rax, %rdx	# tmp301, D.6433
	movl	-68(%rbp), %eax	# ctx, tmp302
	cltq
	salq	$4, %rax	#, D.6429
	addq	%rax, %rdx	# D.6429, D.6434
	movl	-152(%rbp), %eax	# cbp_bit, tmp303
	movswl	%ax, %ecx	# D.6435, D.6428
	movq	-144(%rbp), %rax	# eep_dp, tmp304
	movl	%ecx, %esi	# D.6428,
	movq	%rax, %rdi	# tmp304,
	call	biari_encode_symbol	#
.L213:
	.loc 1 1176 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	write_and_store_CBP_block_bit, .-write_and_store_CBP_block_bit
	.section	.rodata
	.align 32
	.type	pos2ctx_map8x8, @object
	.size	pos2ctx_map8x8, 256
pos2ctx_map8x8:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	5
	.long	4
	.long	4
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	4
	.long	4
	.long	4
	.long	4
	.long	3
	.long	3
	.long	6
	.long	7
	.long	7
	.long	7
	.long	8
	.long	9
	.long	10
	.long	9
	.long	8
	.long	7
	.long	7
	.long	6
	.long	11
	.long	12
	.long	13
	.long	11
	.long	6
	.long	7
	.long	8
	.long	9
	.long	14
	.long	10
	.long	9
	.long	8
	.long	6
	.long	11
	.long	12
	.long	13
	.long	11
	.long	6
	.long	9
	.long	14
	.long	10
	.long	9
	.long	11
	.long	12
	.long	13
	.long	11
	.long	14
	.long	10
	.long	12
	.long	14
	.align 32
	.type	pos2ctx_map8x4, @object
	.size	pos2ctx_map8x4, 128
pos2ctx_map8x4:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	9
	.long	8
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	9
	.long	8
	.long	6
	.long	12
	.long	8
	.long	9
	.long	10
	.long	11
	.long	9
	.long	13
	.long	13
	.long	14
	.long	14
	.align 32
	.type	pos2ctx_map4x4, @object
	.size	pos2ctx_map4x4, 64
pos2ctx_map4x4:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	14
	.align 32
	.type	pos2ctx_map2x4c, @object
	.size	pos2ctx_map2x4c, 64
pos2ctx_map2x4c:
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.align 32
	.type	pos2ctx_map4x4c, @object
	.size	pos2ctx_map4x4c, 64
pos2ctx_map4x4c:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.data
	.align 32
	.type	pos2ctx_map, @object
	.size	pos2ctx_map, 80
pos2ctx_map:
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map8x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map2x4c
	.quad	pos2ctx_map4x4c
	.section	.rodata
	.align 32
	.type	pos2ctx_map8x8i, @object
	.size	pos2ctx_map8x8i, 256
pos2ctx_map8x8i:
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	7
	.long	7
	.long	8
	.long	4
	.long	5
	.long	6
	.long	9
	.long	10
	.long	10
	.long	8
	.long	11
	.long	12
	.long	11
	.long	9
	.long	9
	.long	10
	.long	10
	.long	8
	.long	11
	.long	12
	.long	11
	.long	9
	.long	9
	.long	10
	.long	10
	.long	8
	.long	11
	.long	12
	.long	11
	.long	9
	.long	9
	.long	10
	.long	10
	.long	8
	.long	13
	.long	13
	.long	9
	.long	9
	.long	10
	.long	10
	.long	8
	.long	13
	.long	13
	.long	9
	.long	9
	.long	10
	.long	10
	.long	14
	.long	14
	.long	14
	.long	14
	.long	14
	.long	14
	.align 32
	.type	pos2ctx_map8x4i, @object
	.size	pos2ctx_map8x4i, 128
pos2ctx_map8x4i:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	3
	.long	4
	.long	5
	.long	6
	.long	3
	.long	4
	.long	7
	.long	6
	.long	8
	.long	9
	.long	7
	.long	6
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	12
	.long	10
	.long	11
	.long	13
	.long	13
	.long	14
	.long	14
	.long	14
	.align 32
	.type	pos2ctx_map4x8i, @object
	.size	pos2ctx_map4x8i, 128
pos2ctx_map4x8i:
	.long	0
	.long	1
	.long	1
	.long	1
	.long	2
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	5
	.long	6
	.long	2
	.long	7
	.long	7
	.long	8
	.long	8
	.long	8
	.long	5
	.long	6
	.long	9
	.long	10
	.long	10
	.long	11
	.long	11
	.long	11
	.long	12
	.long	13
	.long	13
	.long	14
	.long	14
	.long	14
	.data
	.align 32
	.type	pos2ctx_map_int, @object
	.size	pos2ctx_map_int, 80
pos2ctx_map_int:
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map8x8i
	.quad	pos2ctx_map8x4i
	.quad	pos2ctx_map4x8i
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map4x4
	.quad	pos2ctx_map2x4c
	.quad	pos2ctx_map4x4c
	.section	.rodata
	.align 32
	.type	pos2ctx_last8x8, @object
	.size	pos2ctx_last8x8, 256
pos2ctx_last8x8:
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	5
	.long	5
	.long	6
	.long	6
	.long	6
	.long	6
	.long	7
	.long	7
	.long	7
	.long	7
	.long	8
	.long	8
	.long	8
	.long	8
	.align 32
	.type	pos2ctx_last8x4, @object
	.size	pos2ctx_last8x4, 128
pos2ctx_last8x4:
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
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
	.long	7
	.long	7
	.long	8
	.long	8
	.align 32
	.type	pos2ctx_last4x4, @object
	.size	pos2ctx_last4x4, 64
pos2ctx_last4x4:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.align 32
	.type	pos2ctx_last2x4c, @object
	.size	pos2ctx_last2x4c, 64
pos2ctx_last2x4c:
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.align 32
	.type	pos2ctx_last4x4c, @object
	.size	pos2ctx_last4x4c, 64
pos2ctx_last4x4c:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.data
	.align 32
	.type	pos2ctx_last, @object
	.size	pos2ctx_last, 80
pos2ctx_last:
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last8x8
	.quad	pos2ctx_last8x4
	.quad	pos2ctx_last8x4
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last4x4
	.quad	pos2ctx_last2x4c
	.quad	pos2ctx_last4x4c
	.text
	.globl	write_significance_map
	.type	write_significance_map, @function
write_significance_map:
.LFB22:
	.loc 1 1236 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# currMB, currMB
	movq	%rsi, -64(%rbp)	# eep_dp, eep_dp
	movl	%edx, -68(%rbp)	# type, type
	movq	%rcx, -80(%rbp)	# coeff, coeff
	movl	%r8d, -72(%rbp)	# coeff_ctr, coeff_ctr
	.loc 1 1238 0
	movl	$0, -28(%rbp)	#, k0
	.loc 1 1239 0
	movl	-68(%rbp), %eax	# type, tmp122
	cltq
	movl	maxpos(,%rax,4), %eax	# maxpos, D.6436
	subl	$1, %eax	#, tmp123
	movl	%eax, -24(%rbp)	# tmp123, k1
	.loc 1 1241 0
	movq	img(%rip), %rax	# img, img.125
	movl	28(%rax), %eax	# img.125_14->structure, D.6436
	testl	%eax, %eax	# D.6436
	jne	.L281	#,
	.loc 1 1241 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# currMB, tmp124
	movl	532(%rax), %eax	# currMB_16(D)->mb_field, D.6436
	testl	%eax, %eax	# D.6436
	je	.L282	#,
.L281:
	.loc 1 1241 0 discriminator 1
	movl	$1, %eax	#, iftmp.124
	jmp	.L283	#
.L282:
	.loc 1 1241 0 discriminator 3
	movl	$0, %eax	#, iftmp.124
.L283:
	.loc 1 1241 0 discriminator 4
	movl	%eax, -20(%rbp)	# iftmp.124, fld
	.loc 1 1243 0 is_stmt 1 discriminator 4
	cmpl	$0, -20(%rbp)	#, fld
	je	.L284	#,
	.loc 1 1242 0
	movq	img(%rip), %rax	# img, img.127
	movq	14160(%rax), %rax	# img.127_21->currentSlice, D.6437
	movq	40(%rax), %rcx	# _22->tex_ctx, D.6438
	movl	-68(%rbp), %eax	# type, tmp126
	cltq
	movl	type2ctx_map(,%rax,4), %eax	# type2ctx_map, D.6436
	.loc 1 1243 0
	cltq
	salq	$4, %rax	#, tmp129
	movq	%rax, %rdx	# tmp128, tmp130
	salq	$4, %rdx	#, tmp130
	subq	%rax, %rdx	# tmp128, tmp130
	leaq	7328(%rdx), %rax	#, tmp131
	addq	%rcx, %rax	# D.6438, iftmp.126
	jmp	.L285	#
.L284:
	.loc 1 1243 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.128
	movq	14160(%rax), %rax	# img.128_26->currentSlice, D.6437
	movq	40(%rax), %rcx	# _27->tex_ctx, D.6438
	movl	-68(%rbp), %eax	# type, tmp133
	cltq
	movl	type2ctx_map(,%rax,4), %eax	# type2ctx_map, D.6436
	cltq
	salq	$4, %rax	#, tmp136
	movq	%rax, %rdx	# tmp135, tmp137
	salq	$4, %rdx	#, tmp137
	subq	%rax, %rdx	# tmp135, tmp137
	leaq	928(%rdx), %rax	#, tmp138
	addq	%rcx, %rax	# D.6438, iftmp.126
.L285:
	.loc 1 1242 0 is_stmt 1
	movq	%rax, -16(%rbp)	# iftmp.126, map_ctx
	.loc 1 1245 0
	cmpl	$0, -20(%rbp)	#, fld
	je	.L286	#,
	.loc 1 1244 0
	movq	img(%rip), %rax	# img, img.130
	movq	14160(%rax), %rax	# img.130_32->currentSlice, D.6437
	movq	40(%rax), %rcx	# _33->tex_ctx, D.6438
	movl	-68(%rbp), %eax	# type, tmp140
	cltq
	movl	type2ctx_last(,%rax,4), %eax	# type2ctx_last, D.6436
	.loc 1 1245 0
	cltq
	salq	$4, %rax	#, tmp143
	movq	%rax, %rdx	# tmp142, tmp144
	salq	$4, %rdx	#, tmp144
	subq	%rax, %rdx	# tmp142, tmp144
	leaq	9728(%rdx), %rax	#, tmp145
	addq	%rcx, %rax	# D.6438, iftmp.129
	jmp	.L287	#
.L286:
	.loc 1 1245 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.131
	movq	14160(%rax), %rax	# img.131_37->currentSlice, D.6437
	movq	40(%rax), %rcx	# _38->tex_ctx, D.6438
	movl	-68(%rbp), %eax	# type, tmp147
	cltq
	movl	type2ctx_last(,%rax,4), %eax	# type2ctx_last, D.6436
	cltq
	salq	$4, %rax	#, tmp150
	movq	%rax, %rdx	# tmp149, tmp151
	salq	$4, %rdx	#, tmp151
	subq	%rax, %rdx	# tmp149, tmp151
	leaq	3328(%rdx), %rax	#, tmp152
	addq	%rcx, %rax	# D.6438, iftmp.129
.L287:
	.loc 1 1244 0 is_stmt 1
	movq	%rax, -8(%rbp)	# iftmp.129, last_ctx
	.loc 1 1247 0
	movl	-68(%rbp), %eax	# type, tmp154
	cltq
	movl	c1isdc(,%rax,4), %eax	# c1isdc, D.6436
	testl	%eax, %eax	# D.6436
	jne	.L288	#,
	.loc 1 1249 0
	addl	$1, -28(%rbp)	#, k0
	addl	$1, -24(%rbp)	#, k1
	subq	$4, -80(%rbp)	#, coeff
.L288:
	.loc 1 1252 0
	movl	-28(%rbp), %eax	# k0, tmp155
	movw	%ax, -34(%rbp)	# tmp155, k
	jmp	.L289	#
.L295:
	.loc 1 1254 0
	movswq	-34(%rbp), %rax	# k, D.6439
	leaq	0(,%rax,4), %rdx	#, D.6439
	movq	-80(%rbp), %rax	# coeff, tmp156
	addq	%rdx, %rax	# D.6439, D.6440
	movl	(%rax), %eax	# *_53, D.6436
	testl	%eax, %eax	# D.6436
	setne	%al	#, D.6441
	movzbl	%al, %eax	# D.6441, tmp157
	movw	%ax, -32(%rbp)	# tmp157, sig
	.loc 1 1256 0
	movq	img(%rip), %rax	# img, img.132
	movl	28(%rax), %eax	# img.132_57->structure, D.6436
	testl	%eax, %eax	# D.6436
	jne	.L290	#,
	.loc 1 1256 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# currMB, tmp158
	movl	532(%rax), %eax	# currMB_16(D)->mb_field, D.6436
	testl	%eax, %eax	# D.6436
	je	.L291	#,
.L290:
	.loc 1 1257 0 is_stmt 1
	movl	-68(%rbp), %eax	# type, tmp160
	cltq
	movq	pos2ctx_map_int(,%rax,8), %rax	# pos2ctx_map_int, D.6442
	movswq	-34(%rbp), %rdx	# k, D.6439
	salq	$2, %rdx	#, D.6439
	addq	%rdx, %rax	# D.6439, D.6442
	movl	(%rax), %eax	# *_73, D.6436
	cltq
	salq	$4, %rax	#, D.6439
	movq	%rax, %rdx	# D.6439, D.6439
	movq	-16(%rbp), %rax	# map_ctx, tmp161
	addq	%rax, %rdx	# tmp161, D.6443
	movswl	-32(%rbp), %ecx	# sig, D.6436
	movq	-64(%rbp), %rax	# eep_dp, tmp162
	movl	%ecx, %esi	# D.6436,
	movq	%rax, %rdi	# tmp162,
	call	biari_encode_symbol	#
	jmp	.L292	#
.L291:
	.loc 1 1259 0
	movl	-68(%rbp), %eax	# type, tmp164
	cltq
	movq	pos2ctx_map(,%rax,8), %rax	# pos2ctx_map, D.6442
	movswq	-34(%rbp), %rdx	# k, D.6439
	salq	$2, %rdx	#, D.6439
	addq	%rdx, %rax	# D.6439, D.6442
	movl	(%rax), %eax	# *_63, D.6436
	cltq
	salq	$4, %rax	#, D.6439
	movq	%rax, %rdx	# D.6439, D.6439
	movq	-16(%rbp), %rax	# map_ctx, tmp165
	addq	%rax, %rdx	# tmp165, D.6443
	movswl	-32(%rbp), %ecx	# sig, D.6436
	movq	-64(%rbp), %rax	# eep_dp, tmp166
	movl	%ecx, %esi	# D.6436,
	movq	%rax, %rdi	# tmp166,
	call	biari_encode_symbol	#
.L292:
	.loc 1 1260 0
	cmpw	$0, -32(%rbp)	#, sig
	je	.L293	#,
	.loc 1 1262 0
	subl	$1, -72(%rbp)	#, coeff_ctr
	cmpl	$0, -72(%rbp)	#, coeff_ctr
	sete	%al	#, D.6441
	movzbl	%al, %eax	# D.6441, tmp167
	movw	%ax, -30(%rbp)	# tmp167, last
	.loc 1 1264 0
	movl	-68(%rbp), %eax	# type, tmp169
	cltq
	movq	pos2ctx_last(,%rax,8), %rax	# pos2ctx_last, D.6442
	movswq	-34(%rbp), %rdx	# k, D.6439
	salq	$2, %rdx	#, D.6439
	addq	%rdx, %rax	# D.6439, D.6442
	movl	(%rax), %eax	# *_85, D.6436
	cltq
	salq	$4, %rax	#, D.6439
	movq	%rax, %rdx	# D.6439, D.6439
	movq	-8(%rbp), %rax	# last_ctx, tmp170
	addq	%rax, %rdx	# tmp170, D.6443
	movswl	-30(%rbp), %ecx	# last, D.6436
	movq	-64(%rbp), %rax	# eep_dp, tmp171
	movl	%ecx, %esi	# D.6436,
	movq	%rax, %rdi	# tmp171,
	call	biari_encode_symbol	#
	.loc 1 1265 0
	cmpw	$0, -30(%rbp)	#, last
	je	.L293	#,
	.loc 1 1267 0
	jmp	.L280	#
.L293:
	.loc 1 1252 0
	movzwl	-34(%rbp), %eax	# k, k.133
	addl	$1, %eax	#, tmp172
	movw	%ax, -34(%rbp)	# tmp172, k
.L289:
	.loc 1 1252 0 is_stmt 0 discriminator 1
	movswl	-34(%rbp), %eax	# k, D.6436
	cmpl	-24(%rbp), %eax	# k1, D.6436
	jl	.L295	#,
.L280:
	.loc 1 1271 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	write_significance_map, .-write_significance_map
	.globl	write_significant_coefficients
	.type	write_significant_coefficients, @function
write_significant_coefficients:
.LFB23:
	.loc 1 1281 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# currMB, currMB
	movq	%rsi, -48(%rbp)	# eep_dp, eep_dp
	movl	%edx, -52(%rbp)	# type, type
	movq	%rcx, -64(%rbp)	# coeff, coeff
	.loc 1 1287 0
	movl	$1, -12(%rbp)	#, c1
	.loc 1 1288 0
	movl	$0, -8(%rbp)	#, c2
	.loc 1 1290 0
	movl	-52(%rbp), %eax	# type, tmp98
	cltq
	movl	maxpos(,%rax,4), %eax	# maxpos, D.6444
	subl	$1, %eax	#, tmp99
	movl	%eax, -20(%rbp)	# tmp99, i
	jmp	.L297	#
.L303:
	.loc 1 1292 0
	movl	-20(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6445
	movq	-64(%rbp), %rax	# coeff, tmp101
	addq	%rdx, %rax	# D.6445, D.6446
	movl	(%rax), %eax	# *_18, D.6444
	testl	%eax, %eax	# D.6444
	je	.L298	#,
	.loc 1 1294 0
	movl	-20(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6445
	movq	-64(%rbp), %rax	# coeff, tmp103
	addq	%rdx, %rax	# D.6445, D.6446
	movl	(%rax), %eax	# *_22, D.6444
	testl	%eax, %eax	# D.6444
	jle	.L299	#,
	.loc 1 1294 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp104
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6445
	movq	-64(%rbp), %rax	# coeff, tmp105
	addq	%rdx, %rax	# D.6445, D.6446
	movl	(%rax), %eax	# *_26, tmp106
	movl	%eax, -16(%rbp)	# tmp106, absLevel
	movw	$0, -24(%rbp)	#, sign
	jmp	.L300	#
.L299:
	.loc 1 1295 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6445
	movq	-64(%rbp), %rax	# coeff, tmp108
	addq	%rdx, %rax	# D.6445, D.6446
	movl	(%rax), %eax	# *_31, D.6444
	negl	%eax	# tmp109
	movl	%eax, -16(%rbp)	# tmp109, absLevel
	movw	$1, -24(%rbp)	#, sign
.L300:
	.loc 1 1297 0
	cmpl	$1, -16(%rbp)	#, absLevel
	setg	%al	#, D.6447
	movzbl	%al, %eax	# D.6447, tmp110
	movw	%ax, -22(%rbp)	# tmp110, greater_one
	.loc 1 1300 0
	movl	$4, %eax	#, tmp112
	cmpl	$4, -12(%rbp)	#, c1
	cmovle	-12(%rbp), %eax	# c1,, tmp111
	movl	%eax, -4(%rbp)	# tmp111, ctx
	.loc 1 1301 0
	movq	img(%rip), %rax	# img, img.134
	movq	14160(%rax), %rax	# img.134_38->currentSlice, D.6448
	movq	40(%rax), %rcx	# _39->tex_ctx, D.6449
	movl	-52(%rbp), %eax	# type, tmp114
	cltq
	movl	type2ctx_one(,%rax,4), %eax	# type2ctx_one, D.6444
	movslq	%eax, %rdx	# D.6444, tmp115
	movq	%rdx, %rax	# tmp115, tmp116
	salq	$2, %rax	#, tmp116
	addq	%rdx, %rax	# tmp115, tmp116
	salq	$4, %rax	#, tmp117
	addq	$5728, %rax	#, tmp118
	leaq	(%rcx,%rax), %rdx	#, D.6450
	movl	-4(%rbp), %eax	# ctx, tmp119
	cltq
	salq	$4, %rax	#, D.6445
	addq	%rax, %rdx	# D.6445, D.6451
	movswl	-22(%rbp), %ecx	# greater_one, D.6444
	movq	-48(%rbp), %rax	# eep_dp, tmp120
	movl	%ecx, %esi	# D.6444,
	movq	%rax, %rdi	# tmp120,
	call	biari_encode_symbol	#
	.loc 1 1303 0
	cmpw	$0, -22(%rbp)	#, greater_one
	je	.L301	#,
	.loc 1 1305 0
	movl	-52(%rbp), %eax	# type, tmp122
	cltq
	movl	max_c2(,%rax,4), %edx	# max_c2, D.6444
	movl	-8(%rbp), %eax	# c2, tmp124
	cmpl	%eax, %edx	# tmp124, D.6444
	cmovle	%edx, %eax	# D.6444,, tmp123
	movl	%eax, -4(%rbp)	# tmp123, ctx
	.loc 1 1306 0
	movq	img(%rip), %rax	# img, img.135
	movq	14160(%rax), %rax	# img.135_50->currentSlice, D.6448
	movq	40(%rax), %rcx	# _51->tex_ctx, D.6449
	movl	-52(%rbp), %eax	# type, tmp126
	cltq
	movl	type2ctx_abs(,%rax,4), %eax	# type2ctx_abs, D.6444
	movslq	%eax, %rdx	# D.6444, tmp127
	movq	%rdx, %rax	# tmp127, tmp128
	salq	$2, %rax	#, tmp128
	addq	%rdx, %rax	# tmp127, tmp128
	salq	$4, %rax	#, tmp129
	addq	$6528, %rax	#, tmp130
	leaq	(%rcx,%rax), %rdx	#, D.6450
	movl	-4(%rbp), %eax	# ctx, tmp131
	cltq
	salq	$4, %rax	#, D.6445
	addq	%rax, %rdx	# D.6445, D.6451
	movl	-16(%rbp), %eax	# absLevel, tmp132
	subl	$2, %eax	#, D.6444
	movl	%eax, %ecx	# D.6444, D.6452
	movq	-48(%rbp), %rax	# eep_dp, tmp133
	movl	%ecx, %esi	# D.6452,
	movq	%rax, %rdi	# tmp133,
	call	unary_exp_golomb_level_encode	#
	.loc 1 1307 0
	movl	$0, -12(%rbp)	#, c1
	.loc 1 1308 0
	addl	$1, -8(%rbp)	#, c2
	jmp	.L302	#
.L301:
	.loc 1 1310 0
	cmpl	$0, -12(%rbp)	#, c1
	je	.L302	#,
	.loc 1 1312 0
	addl	$1, -12(%rbp)	#, c1
.L302:
	.loc 1 1314 0
	movswl	-24(%rbp), %edx	# sign, D.6444
	movq	-48(%rbp), %rax	# eep_dp, tmp134
	movl	%edx, %esi	# D.6444,
	movq	%rax, %rdi	# tmp134,
	call	biari_encode_symbol_eq_prob	#
.L298:
	.loc 1 1290 0
	subl	$1, -20(%rbp)	#, i
.L297:
	.loc 1 1290 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L303	#,
	.loc 1 1317 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	write_significant_coefficients, .-write_significant_coefficients
	.globl	writeRunLevel_CABAC
	.type	writeRunLevel_CABAC, @function
writeRunLevel_CABAC:
.LFB24:
	.loc 1 1328 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# se, se
	movq	%rsi, -32(%rbp)	# eep_dp, eep_dp
	.loc 1 1333 0
	movq	img(%rip), %rax	# img, img.136
	movq	14168(%rax), %rdx	# img.136_2->mb_data, D.6453
	movq	img(%rip), %rax	# img, img.137
	movl	12(%rax), %eax	# img.137_4->current_mb_nr, D.6454
	cltq
	imulq	$632, %rax, %rax	#, D.6455, D.6455
	addq	%rdx, %rax	# D.6453, tmp89
	movq	%rax, -8(%rbp)	# tmp89, currMB
	.loc 1 1337 0
	movq	-24(%rbp), %rax	# se, tmp90
	movl	4(%rax), %eax	# se_9(D)->value1, D.6454
	testl	%eax, %eax	# D.6454
	je	.L305	#,
	.loc 1 1339 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L306	#
.L307:
	.loc 1 1339 0 is_stmt 0 discriminator 2
	movl	pos.4653(%rip), %eax	# pos, pos.138
	leal	1(%rax), %edx	#, pos.140
	movl	%edx, pos.4653(%rip)	# pos.140, pos
	cltq
	movl	$0, coeff.4651(,%rax,4)	#, coeff
	addl	$1, -12(%rbp)	#, i
.L306:
	.loc 1 1339 0 discriminator 1
	movq	-24(%rbp), %rax	# se, tmp92
	movl	8(%rax), %eax	# se_9(D)->value2, D.6454
	cmpl	-12(%rbp), %eax	# i, D.6454
	jg	.L307	#,
	.loc 1 1339 0 discriminator 3
	movl	pos.4653(%rip), %eax	# pos, pos.141
	leal	1(%rax), %edx	#, pos.143
	movl	%edx, pos.4653(%rip)	# pos.143, pos
	movq	-24(%rbp), %rdx	# se, tmp93
	movl	4(%rdx), %edx	# se_9(D)->value1, D.6454
	cltq
	movl	%edx, coeff.4651(,%rax,4)	# D.6454, coeff
	movl	coeff_ctr.4652(%rip), %eax	# coeff_ctr, coeff_ctr.144
	addl	$1, %eax	#, coeff_ctr.145
	movl	%eax, coeff_ctr.4652(%rip)	# coeff_ctr.145, coeff_ctr
	.loc 1 1340 0 is_stmt 1 discriminator 3
	jmp	.L304	#
.L305:
	.loc 1 1344 0
	jmp	.L309	#
.L310:
	.loc 1 1344 0 is_stmt 0 discriminator 2
	movl	pos.4653(%rip), %eax	# pos, pos.146
	cltq
	movl	$0, coeff.4651(,%rax,4)	#, coeff
	movl	pos.4653(%rip), %eax	# pos, pos.147
	addl	$1, %eax	#, pos.148
	movl	%eax, pos.4653(%rip)	# pos.148, pos
.L309:
	.loc 1 1344 0 discriminator 1
	movl	pos.4653(%rip), %eax	# pos, pos.149
	cmpl	$63, %eax	#, pos.149
	jle	.L310	#,
	.loc 1 1350 0 is_stmt 1
	movl	coeff_ctr.4652(%rip), %eax	# coeff_ctr, coeff_ctr.150
	testl	%eax, %eax	# coeff_ctr.150
	setg	%al	#, D.6456
	movzbl	%al, %ecx	# D.6456, D.6454
	movq	-24(%rbp), %rax	# se, tmp96
	movl	24(%rax), %edx	# se_9(D)->context, D.6454
	movq	-32(%rbp), %rsi	# eep_dp, tmp97
	movq	-8(%rbp), %rax	# currMB, tmp98
	movq	%rax, %rdi	# tmp98,
	call	write_and_store_CBP_block_bit	#
	.loc 1 1352 0
	movl	coeff_ctr.4652(%rip), %eax	# coeff_ctr, coeff_ctr.151
	testl	%eax, %eax	# coeff_ctr.151
	jle	.L311	#,
	.loc 1 1355 0
	movl	coeff_ctr.4652(%rip), %ecx	# coeff_ctr, coeff_ctr.152
	movq	-24(%rbp), %rax	# se, tmp99
	movl	24(%rax), %edx	# se_9(D)->context, D.6454
	movq	-32(%rbp), %rsi	# eep_dp, tmp100
	movq	-8(%rbp), %rax	# currMB, tmp101
	movl	%ecx, %r8d	# coeff_ctr.152,
	movl	$coeff.4651, %ecx	#,
	movq	%rax, %rdi	# tmp101,
	call	write_significance_map	#
	.loc 1 1358 0
	movq	-24(%rbp), %rax	# se, tmp102
	movl	24(%rax), %edx	# se_9(D)->context, D.6454
	movq	-32(%rbp), %rsi	# eep_dp, tmp103
	movq	-8(%rbp), %rax	# currMB, tmp104
	movl	$coeff.4651, %ecx	#,
	movq	%rax, %rdi	# tmp104,
	call	write_significant_coefficients	#
.L311:
	.loc 1 1362 0
	movl	$0, coeff_ctr.4652(%rip)	#, coeff_ctr
	movl	coeff_ctr.4652(%rip), %eax	# coeff_ctr, coeff_ctr.153
	movl	%eax, pos.4653(%rip)	# coeff_ctr.153, pos
.L304:
	.loc 1 1363 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	writeRunLevel_CABAC, .-writeRunLevel_CABAC
	.globl	unary_bin_encode
	.type	unary_bin_encode, @function
unary_bin_encode:
.LFB25:
	.loc 1 1380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# eep_dp, eep_dp
	movl	%esi, -28(%rbp)	# symbol, symbol
	movq	%rdx, -40(%rbp)	# ctx, ctx
	movl	%ecx, -32(%rbp)	# ctx_offset, ctx_offset
	.loc 1 1384 0
	cmpl	$0, -28(%rbp)	#, symbol
	jne	.L313	#,
	.loc 1 1386 0
	movq	-40(%rbp), %rdx	# ctx, tmp61
	movq	-24(%rbp), %rax	# eep_dp, tmp62
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	biari_encode_symbol	#
	.loc 1 1387 0
	jmp	.L312	#
.L313:
	.loc 1 1391 0
	movq	-40(%rbp), %rdx	# ctx, tmp63
	movq	-24(%rbp), %rax	# eep_dp, tmp64
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	biari_encode_symbol	#
	.loc 1 1392 0
	movl	-28(%rbp), %eax	# symbol, tmp65
	movl	%eax, -12(%rbp)	# tmp65, l
	.loc 1 1393 0
	movl	-32(%rbp), %eax	# ctx_offset, tmp66
	cltq
	salq	$4, %rax	#, D.6457
	movq	%rax, %rdx	# D.6457, D.6457
	movq	-40(%rbp), %rax	# ctx, tmp70
	addq	%rdx, %rax	# D.6457, tmp69
	movq	%rax, -8(%rbp)	# tmp69, ictx
	.loc 1 1394 0
	jmp	.L315	#
.L316:
	.loc 1 1395 0
	movq	-8(%rbp), %rdx	# ictx, tmp71
	movq	-24(%rbp), %rax	# eep_dp, tmp72
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	biari_encode_symbol	#
.L315:
	.loc 1 1394 0 discriminator 1
	subl	$1, -12(%rbp)	#, l
	cmpl	$0, -12(%rbp)	#, l
	jne	.L316	#,
	.loc 1 1396 0
	movq	-8(%rbp), %rdx	# ictx, tmp73
	movq	-24(%rbp), %rax	# eep_dp, tmp74
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	biari_encode_symbol	#
	.loc 1 1398 0
	nop
.L312:
	.loc 1 1399 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	unary_bin_encode, .-unary_bin_encode
	.globl	unary_bin_max_encode
	.type	unary_bin_max_encode, @function
unary_bin_max_encode:
.LFB26:
	.loc 1 1415 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# eep_dp, eep_dp
	movl	%esi, -28(%rbp)	# symbol, symbol
	movq	%rdx, -40(%rbp)	# ctx, ctx
	movl	%ecx, -32(%rbp)	# ctx_offset, ctx_offset
	movl	%r8d, -44(%rbp)	# max_symbol, max_symbol
	.loc 1 1419 0
	cmpl	$0, -28(%rbp)	#, symbol
	jne	.L318	#,
	.loc 1 1421 0
	movq	-40(%rbp), %rdx	# ctx, tmp61
	movq	-24(%rbp), %rax	# eep_dp, tmp62
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	biari_encode_symbol	#
	.loc 1 1422 0
	jmp	.L317	#
.L318:
	.loc 1 1426 0
	movq	-40(%rbp), %rdx	# ctx, tmp63
	movq	-24(%rbp), %rax	# eep_dp, tmp64
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	biari_encode_symbol	#
	.loc 1 1427 0
	movl	-28(%rbp), %eax	# symbol, tmp65
	movl	%eax, -12(%rbp)	# tmp65, l
	.loc 1 1428 0
	movl	-32(%rbp), %eax	# ctx_offset, tmp66
	cltq
	salq	$4, %rax	#, D.6458
	movq	%rax, %rdx	# D.6458, D.6458
	movq	-40(%rbp), %rax	# ctx, tmp70
	addq	%rdx, %rax	# D.6458, tmp69
	movq	%rax, -8(%rbp)	# tmp69, ictx
	.loc 1 1429 0
	jmp	.L320	#
.L321:
	.loc 1 1430 0
	movq	-8(%rbp), %rdx	# ictx, tmp71
	movq	-24(%rbp), %rax	# eep_dp, tmp72
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	biari_encode_symbol	#
.L320:
	.loc 1 1429 0 discriminator 1
	subl	$1, -12(%rbp)	#, l
	cmpl	$0, -12(%rbp)	#, l
	jne	.L321	#,
	.loc 1 1431 0
	movl	-28(%rbp), %eax	# symbol, tmp73
	cmpl	-44(%rbp), %eax	# max_symbol, tmp73
	jae	.L322	#,
	.loc 1 1432 0
	movq	-8(%rbp), %rdx	# ictx, tmp74
	movq	-24(%rbp), %rax	# eep_dp, tmp75
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	biari_encode_symbol	#
.L322:
	.loc 1 1434 0
	nop
.L317:
	.loc 1 1435 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	unary_bin_max_encode, .-unary_bin_max_encode
	.globl	exp_golomb_encode_eq_prob
	.type	exp_golomb_encode_eq_prob, @function
exp_golomb_encode_eq_prob:
.LFB27:
	.loc 1 1448 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# eep_dp, eep_dp
	movl	%esi, -12(%rbp)	# symbol, symbol
	movl	%edx, -16(%rbp)	# k, k
.L329:
	.loc 1 1451 0
	movl	-16(%rbp), %eax	# k, tmp68
	movl	$1, %edx	#, tmp69
	movl	%eax, %ecx	# tmp68, tmp79
	sall	%cl, %edx	# tmp79, D.6459
	movl	%edx, %eax	# D.6459, D.6459
	cmpl	-12(%rbp), %eax	# symbol, D.6460
	ja	.L324	#,
	.loc 1 1453 0
	movq	-8(%rbp), %rax	# eep_dp, tmp70
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	biari_encode_symbol_eq_prob	#
	.loc 1 1454 0
	movl	-16(%rbp), %eax	# k, tmp71
	movl	$1, %edx	#, tmp72
	movl	%eax, %ecx	# tmp71, tmp81
	sall	%cl, %edx	# tmp81, D.6459
	movl	%edx, %eax	# D.6459, D.6459
	subl	%eax, -12(%rbp)	# D.6460, symbol
	.loc 1 1455 0
	addl	$1, -16(%rbp)	#, k
	.loc 1 1464 0
	jmp	.L329	#
.L324:
	.loc 1 1459 0
	movq	-8(%rbp), %rax	# eep_dp, tmp73
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	biari_encode_symbol_eq_prob	#
	.loc 1 1460 0
	jmp	.L326	#
.L327:
	.loc 1 1461 0
	movl	-16(%rbp), %eax	# k, tmp74
	movl	-12(%rbp), %edx	# symbol, tmp75
	movl	%eax, %ecx	# tmp74, tmp83
	shrl	%cl, %edx	# tmp83, D.6460
	movl	%edx, %eax	# D.6460, D.6460
	movzbl	%al, %eax	# D.6461, D.6459
	andl	$1, %eax	#, D.6459
	movl	%eax, %edx	# D.6459, D.6459
	movq	-8(%rbp), %rax	# eep_dp, tmp76
	movl	%edx, %esi	# D.6459,
	movq	%rax, %rdi	# tmp76,
	call	biari_encode_symbol_eq_prob	#
.L326:
	.loc 1 1460 0 discriminator 1
	movl	-16(%rbp), %eax	# k, k.154
	leal	-1(%rax), %edx	#, tmp77
	movl	%edx, -16(%rbp)	# tmp77, k
	testl	%eax, %eax	# k.154
	jne	.L327	#,
	.loc 1 1462 0
	nop
	.loc 1 1466 0
	nop
	.loc 1 1467 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	exp_golomb_encode_eq_prob, .-exp_golomb_encode_eq_prob
	.globl	unary_exp_golomb_level_encode
	.type	unary_exp_golomb_level_encode, @function
unary_exp_golomb_level_encode:
.LFB28:
	.loc 1 1478 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# eep_dp, eep_dp
	movl	%esi, -28(%rbp)	# symbol, symbol
	movq	%rdx, -40(%rbp)	# ctx, ctx
	.loc 1 1480 0
	movl	$13, -4(%rbp)	#, exp_start
	.loc 1 1482 0
	cmpl	$0, -28(%rbp)	#, symbol
	jne	.L332	#,
	.loc 1 1484 0
	movq	-40(%rbp), %rdx	# ctx, tmp60
	movq	-24(%rbp), %rax	# eep_dp, tmp61
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	biari_encode_symbol	#
	.loc 1 1485 0
	jmp	.L331	#
.L332:
	.loc 1 1489 0
	movq	-40(%rbp), %rdx	# ctx, tmp62
	movq	-24(%rbp), %rax	# eep_dp, tmp63
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	biari_encode_symbol	#
	.loc 1 1490 0
	movl	-28(%rbp), %eax	# symbol, tmp64
	movl	%eax, -12(%rbp)	# tmp64, l
	.loc 1 1491 0
	movl	$1, -8(%rbp)	#, k
	.loc 1 1492 0
	jmp	.L334	#
.L336:
	.loc 1 1493 0
	movq	-40(%rbp), %rdx	# ctx, tmp65
	movq	-24(%rbp), %rax	# eep_dp, tmp66
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	biari_encode_symbol	#
.L334:
	.loc 1 1492 0 discriminator 1
	subl	$1, -12(%rbp)	#, l
	cmpl	$0, -12(%rbp)	#, l
	je	.L335	#,
	.loc 1 1492 0 is_stmt 0 discriminator 2
	addl	$1, -8(%rbp)	#, k
	movl	-8(%rbp), %eax	# k, tmp67
	cmpl	-4(%rbp), %eax	# exp_start, tmp67
	jbe	.L336	#,
.L335:
	.loc 1 1494 0 is_stmt 1
	movl	-28(%rbp), %eax	# symbol, tmp68
	cmpl	-4(%rbp), %eax	# exp_start, tmp68
	jae	.L337	#,
	.loc 1 1494 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# ctx, tmp69
	movq	-24(%rbp), %rax	# eep_dp, tmp70
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	biari_encode_symbol	#
	jmp	.L338	#
.L337:
	.loc 1 1495 0 is_stmt 1
	movl	-4(%rbp), %eax	# exp_start, tmp71
	movl	-28(%rbp), %edx	# symbol, tmp72
	movl	%edx, %ecx	# tmp72, D.6462
	subl	%eax, %ecx	# tmp71, D.6462
	movq	-24(%rbp), %rax	# eep_dp, tmp73
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.6462,
	movq	%rax, %rdi	# tmp73,
	call	exp_golomb_encode_eq_prob	#
.L338:
	.loc 1 1497 0
	nop
.L331:
	.loc 1 1498 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	unary_exp_golomb_level_encode, .-unary_exp_golomb_level_encode
	.globl	unary_exp_golomb_mv_encode
	.type	unary_exp_golomb_mv_encode, @function
unary_exp_golomb_mv_encode:
.LFB29:
	.loc 1 1512 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# eep_dp, eep_dp
	movl	%esi, -44(%rbp)	# symbol, symbol
	movq	%rdx, -56(%rbp)	# ctx, ctx
	movl	%ecx, -48(%rbp)	# max_bin, max_bin
	.loc 1 1514 0
	movl	$1, -16(%rbp)	#, bin
	.loc 1 1515 0
	movq	-56(%rbp), %rax	# ctx, tmp60
	movq	%rax, -8(%rbp)	# tmp60, ictx
	.loc 1 1516 0
	movl	$8, -12(%rbp)	#, exp_start
	.loc 1 1518 0
	cmpl	$0, -44(%rbp)	#, symbol
	jne	.L340	#,
	.loc 1 1520 0
	movq	-8(%rbp), %rdx	# ictx, tmp61
	movq	-40(%rbp), %rax	# eep_dp, tmp62
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	biari_encode_symbol	#
	.loc 1 1521 0
	jmp	.L339	#
.L340:
	.loc 1 1525 0
	movq	-8(%rbp), %rdx	# ictx, tmp63
	movq	-40(%rbp), %rax	# eep_dp, tmp64
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	biari_encode_symbol	#
	.loc 1 1526 0
	movl	-44(%rbp), %eax	# symbol, tmp65
	movl	%eax, -24(%rbp)	# tmp65, l
	.loc 1 1527 0
	movl	$1, -20(%rbp)	#, k
	.loc 1 1528 0
	addq	$16, -8(%rbp)	#, ictx
	.loc 1 1529 0
	jmp	.L342	#
.L345:
	.loc 1 1531 0
	movq	-8(%rbp), %rdx	# ictx, tmp66
	movq	-40(%rbp), %rax	# eep_dp, tmp67
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	biari_encode_symbol	#
	.loc 1 1532 0
	addl	$1, -16(%rbp)	#, bin
	cmpl	$2, -16(%rbp)	#, bin
	jne	.L343	#,
	.loc 1 1532 0 is_stmt 0 discriminator 1
	addq	$16, -8(%rbp)	#, ictx
.L343:
	.loc 1 1533 0 is_stmt 1
	movl	-16(%rbp), %eax	# bin, tmp68
	cmpl	-48(%rbp), %eax	# max_bin, tmp68
	jne	.L342	#,
	.loc 1 1533 0 is_stmt 0 discriminator 1
	addq	$16, -8(%rbp)	#, ictx
.L342:
	.loc 1 1529 0 is_stmt 1 discriminator 1
	subl	$1, -24(%rbp)	#, l
	cmpl	$0, -24(%rbp)	#, l
	je	.L344	#,
	.loc 1 1529 0 is_stmt 0 discriminator 2
	addl	$1, -20(%rbp)	#, k
	movl	-20(%rbp), %eax	# k, tmp69
	cmpl	-12(%rbp), %eax	# exp_start, tmp69
	jbe	.L345	#,
.L344:
	.loc 1 1535 0 is_stmt 1
	movl	-44(%rbp), %eax	# symbol, tmp70
	cmpl	-12(%rbp), %eax	# exp_start, tmp70
	jae	.L346	#,
	.loc 1 1535 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx	# ictx, tmp71
	movq	-40(%rbp), %rax	# eep_dp, tmp72
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	biari_encode_symbol	#
	jmp	.L347	#
.L346:
	.loc 1 1536 0 is_stmt 1
	movl	-12(%rbp), %eax	# exp_start, tmp73
	movl	-44(%rbp), %edx	# symbol, tmp74
	movl	%edx, %ecx	# tmp74, D.6463
	subl	%eax, %ecx	# tmp73, D.6463
	movq	-40(%rbp), %rax	# eep_dp, tmp75
	movl	$3, %edx	#,
	movl	%ecx, %esi	# D.6463,
	movq	%rax, %rdi	# tmp75,
	call	exp_golomb_encode_eq_prob	#
.L347:
	.loc 1 1538 0
	nop
.L339:
	.loc 1 1539 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	unary_exp_golomb_mv_encode, .-unary_exp_golomb_mv_encode
	.local	pos.4653
	.comm	pos.4653,4,4
	.local	coeff.4651
	.comm	coeff.4651,256,32
	.local	coeff_ctr.4652
	.comm	coeff_ctr.4652,4,4
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "mbuffer.h"
	.file 7 "image.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2de1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF517
	.byte	0x1
	.long	.LASF518
	.long	.LASF519
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
	.byte	0x78
	.long	0x17b
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
	.long	0x1ba
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
	.byte	0xba
	.long	0x1d5
	.uleb128 0x9
	.long	.LASF48
	.sleb128 0
	.uleb128 0x9
	.long	.LASF49
	.sleb128 1
	.uleb128 0x9
	.long	.LASF50
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF51
	.byte	0x5
	.byte	0xbe
	.long	0x1ba
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x207
	.uleb128 0x9
	.long	.LASF52
	.sleb128 0
	.uleb128 0x9
	.long	.LASF53
	.sleb128 1
	.uleb128 0x9
	.long	.LASF54
	.sleb128 2
	.uleb128 0x9
	.long	.LASF55
	.sleb128 3
	.uleb128 0x9
	.long	.LASF56
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x2f7
	.uleb128 0xb
	.long	.LASF57
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF58
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF59
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF60
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF61
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF62
	.byte	0x5
	.byte	0xd5
	.long	0xdd
	.byte	0x18
	.uleb128 0xb
	.long	.LASF63
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF64
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF65
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF66
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF67
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF68
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF69
	.byte	0x5
	.byte	0xdd
	.long	0xdd
	.byte	0x40
	.uleb128 0xb
	.long	.LASF70
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
	.long	.LASF71
	.byte	0x5
	.byte	0xe2
	.long	0x207
	.uleb128 0x7
	.long	.LASF72
	.byte	0x5
	.byte	0xe4
	.long	0x30d
	.uleb128 0x6
	.byte	0x8
	.long	0x2f7
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x340
	.uleb128 0xb
	.long	.LASF73
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
	.long	.LASF74
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF75
	.byte	0x5
	.byte	0xee
	.long	0x313
	.uleb128 0x7
	.long	.LASF76
	.byte	0x5
	.byte	0xf0
	.long	0x356
	.uleb128 0x6
	.byte	0x8
	.long	0x340
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x3c8
	.uleb128 0xe
	.long	.LASF77
	.byte	0x5
	.value	0x104
	.long	0x3c8
	.byte	0
	.uleb128 0xf
	.long	.LASF78
	.byte	0x5
	.value	0x105
	.long	0x3de
	.value	0x210
	.uleb128 0xf
	.long	.LASF79
	.byte	0x5
	.value	0x106
	.long	0x3f4
	.value	0x330
	.uleb128 0xf
	.long	.LASF80
	.byte	0x5
	.value	0x107
	.long	0x40a
	.value	0x470
	.uleb128 0xf
	.long	.LASF81
	.byte	0x5
	.value	0x108
	.long	0x420
	.value	0x530
	.uleb128 0xf
	.long	.LASF82
	.byte	0x5
	.value	0x109
	.long	0x420
	.value	0x570
	.uleb128 0xf
	.long	.LASF83
	.byte	0x5
	.value	0x10a
	.long	0x430
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x3de
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x3f4
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x40a
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x420
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x430
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x440
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x5
	.value	0x10c
	.long	0x35c
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x4e0
	.uleb128 0xe
	.long	.LASF85
	.byte	0x5
	.value	0x11b
	.long	0x4e0
	.byte	0
	.uleb128 0xe
	.long	.LASF86
	.byte	0x5
	.value	0x11c
	.long	0x420
	.byte	0x20
	.uleb128 0xe
	.long	.LASF87
	.byte	0x5
	.value	0x11d
	.long	0x4f0
	.byte	0x60
	.uleb128 0xf
	.long	.LASF88
	.byte	0x5
	.value	0x11e
	.long	0x506
	.value	0x120
	.uleb128 0xf
	.long	.LASF89
	.byte	0x5
	.value	0x11f
	.long	0x51c
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF90
	.byte	0x5
	.value	0x120
	.long	0x51c
	.value	0xd00
	.uleb128 0xf
	.long	.LASF91
	.byte	0x5
	.value	0x121
	.long	0x532
	.value	0x1660
	.uleb128 0xf
	.long	.LASF92
	.byte	0x5
	.value	0x122
	.long	0x532
	.value	0x1980
	.uleb128 0xf
	.long	.LASF93
	.byte	0x5
	.value	0x123
	.long	0x51c
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF94
	.byte	0x5
	.value	0x124
	.long	0x51c
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x4f0
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x506
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x51c
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x532
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x340
	.long	0x548
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF95
	.byte	0x5
	.value	0x125
	.long	0x44c
	.uleb128 0x11
	.long	.LASF101
	.byte	0x18
	.byte	0x5
	.value	0x129
	.long	0x5ac
	.uleb128 0xe
	.long	.LASF96
	.byte	0x5
	.value	0x12b
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF97
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
	.long	.LASF98
	.byte	0x5
	.value	0x12f
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF99
	.byte	0x5
	.value	0x130
	.long	0x34
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	.LASF100
	.byte	0x5
	.value	0x131
	.long	0x554
	.uleb128 0x11
	.long	.LASF102
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x5ed
	.uleb128 0xe
	.long	.LASF103
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF104
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF105
	.byte	0x5
	.value	0x138
	.long	0x5ed
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b8
	.uleb128 0x10
	.long	.LASF106
	.byte	0x5
	.value	0x139
	.long	0x5b8
	.uleb128 0x11
	.long	.LASF107
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x65b
	.uleb128 0xe
	.long	.LASF108
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF109
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF110
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF111
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF112
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF105
	.byte	0x5
	.value	0x143
	.long	0x65b
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5ff
	.uleb128 0x10
	.long	.LASF113
	.byte	0x5
	.value	0x144
	.long	0x5ff
	.uleb128 0x11
	.long	.LASF114
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x6fb
	.uleb128 0xe
	.long	.LASF115
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF116
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF117
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
	.long	.LASF118
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xe
	.long	.LASF119
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
	.long	.LASF120
	.byte	0x5
	.value	0x158
	.long	0x715
	.byte	0x20
	.uleb128 0xe
	.long	.LASF121
	.byte	0x5
	.value	0x15a
	.long	0x731
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x715
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
	.long	0x6fb
	.uleb128 0x13
	.long	0x72b
	.uleb128 0x14
	.long	0x72b
	.uleb128 0x14
	.long	0x302
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x66d
	.uleb128 0x6
	.byte	0x8
	.long	0x71b
	.uleb128 0x10
	.long	.LASF122
	.byte	0x5
	.value	0x15c
	.long	0x66d
	.uleb128 0x15
	.long	.LASF123
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x9bd
	.uleb128 0xe
	.long	.LASF124
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF125
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF126
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
	.long	.LASF127
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF128
	.byte	0x5
	.value	0x166
	.long	0xcd
	.byte	0x14
	.uleb128 0xe
	.long	.LASF129
	.byte	0x5
	.value	0x168
	.long	0x9bd
	.byte	0x38
	.uleb128 0xe
	.long	.LASF130
	.byte	0x5
	.value	0x169
	.long	0x9bd
	.byte	0x40
	.uleb128 0xe
	.long	.LASF131
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0x9c3
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF132
	.byte	0x5
	.value	0x16d
	.long	0x9e5
	.value	0x14c
	.uleb128 0xf
	.long	.LASF133
	.byte	0x5
	.value	0x16e
	.long	0x9e5
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF134
	.byte	0x5
	.value	0x170
	.long	0xe3
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF135
	.byte	0x5
	.value	0x171
	.long	0x9f5
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF136
	.byte	0x5
	.value	0x172
	.long	0x9f5
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF137
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF138
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0xf
	.long	.LASF139
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0xf
	.long	.LASF140
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0xf
	.long	.LASF141
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0xf
	.long	.LASF142
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0xf
	.long	.LASF143
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0xf
	.long	.LASF144
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0xf
	.long	.LASF145
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0xf
	.long	.LASF146
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0xf
	.long	.LASF147
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0xf
	.long	.LASF148
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0xf
	.long	.LASF149
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0xf
	.long	.LASF150
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0xf
	.long	.LASF151
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0xf
	.long	.LASF152
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0xf
	.long	.LASF153
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0xf
	.long	.LASF154
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0xf
	.long	.LASF155
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0xf
	.long	.LASF156
	.byte	0x5
	.value	0x18a
	.long	0xa05
	.value	0x248
	.uleb128 0xf
	.long	.LASF157
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0xf
	.long	.LASF158
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0xf
	.long	.LASF159
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0xf
	.long	.LASF160
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0xf
	.long	.LASF161
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0xf
	.long	.LASF162
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0xf
	.long	.LASF163
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0xf
	.long	.LASF164
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0xf
	.long	.LASF165
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x743
	.uleb128 0x4
	.long	0x34
	.long	0x9e5
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
	.long	0x9f5
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xa05
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF166
	.uleb128 0x10
	.long	.LASF167
	.byte	0x5
	.value	0x196
	.long	0x743
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0xab1
	.uleb128 0xe
	.long	.LASF168
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF169
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF170
	.byte	0x5
	.value	0x19f
	.long	0xa2
	.byte	0x8
	.uleb128 0xe
	.long	.LASF171
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF172
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF173
	.byte	0x5
	.value	0x1a2
	.long	0xa2
	.byte	0x14
	.uleb128 0xe
	.long	.LASF174
	.byte	0x5
	.value	0x1a4
	.long	0xa2
	.byte	0x15
	.uleb128 0xe
	.long	.LASF175
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF176
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF177
	.byte	0x5
	.value	0x1a8
	.long	0xdd
	.byte	0x20
	.uleb128 0xe
	.long	.LASF178
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF179
	.byte	0x5
	.value	0x1ab
	.long	0xa18
	.uleb128 0x11
	.long	.LASF180
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xaf2
	.uleb128 0xe
	.long	.LASF181
	.byte	0x5
	.value	0x1b1
	.long	0xaf2
	.byte	0
	.uleb128 0xe
	.long	.LASF182
	.byte	0x5
	.value	0x1b2
	.long	0x2f7
	.byte	0x8
	.uleb128 0xe
	.long	.LASF183
	.byte	0x5
	.value	0x1b4
	.long	0xb18
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xab1
	.uleb128 0x18
	.long	0x34
	.long	0xb0c
	.uleb128 0x14
	.long	0xb0c
	.uleb128 0x14
	.long	0xb12
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x737
	.uleb128 0x6
	.byte	0x8
	.long	0xabd
	.uleb128 0x6
	.byte	0x8
	.long	0xaf8
	.uleb128 0x10
	.long	.LASF184
	.byte	0x5
	.value	0x1b8
	.long	0xabd
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xc37
	.uleb128 0xe
	.long	.LASF185
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
	.long	.LASF186
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF187
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF188
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF189
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF190
	.byte	0x5
	.value	0x1c3
	.long	0xc37
	.byte	0x18
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x1c4
	.long	0xc3d
	.byte	0x20
	.uleb128 0xe
	.long	.LASF192
	.byte	0x5
	.value	0x1c5
	.long	0xc43
	.byte	0x28
	.uleb128 0xe
	.long	.LASF193
	.byte	0x5
	.value	0x1c8
	.long	0xc49
	.byte	0x30
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0xe
	.long	.LASF196
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0xe
	.long	.LASF197
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0xe
	.long	.LASF198
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF199
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0xe
	.long	.LASF200
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0xe
	.long	.LASF201
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0xe
	.long	.LASF202
	.byte	0x5
	.value	0x1d3
	.long	0xc5e
	.byte	0x78
	.uleb128 0xe
	.long	.LASF203
	.byte	0x5
	.value	0x1d5
	.long	0xc64
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb1e
	.uleb128 0x6
	.byte	0x8
	.long	0x440
	.uleb128 0x6
	.byte	0x8
	.long	0x548
	.uleb128 0x6
	.byte	0x8
	.long	0x5f3
	.uleb128 0x18
	.long	0xc2
	.long	0xc5e
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc4f
	.uleb128 0x4
	.long	0x34
	.long	0xc7a
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF204
	.byte	0x5
	.value	0x1d7
	.long	0xb2a
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xcf0
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF206
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF207
	.byte	0x5
	.value	0x1df
	.long	0xcf0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF208
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF209
	.byte	0x5
	.value	0x1e1
	.long	0xd06
	.value	0x32c
	.uleb128 0xf
	.long	.LASF210
	.byte	0x5
	.value	0x1e2
	.long	0xd06
	.value	0x330
	.uleb128 0xf
	.long	.LASF211
	.byte	0x5
	.value	0x1e3
	.long	0xd06
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xd00
	.long	0xd00
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc7a
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF212
	.uleb128 0x10
	.long	.LASF213
	.byte	0x5
	.value	0x1e4
	.long	0xc86
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0xd25
	.uleb128 0x6
	.byte	0x8
	.long	0xd2b
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
	.long	0x171c
	.uleb128 0xe
	.long	.LASF214
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
	.long	.LASF215
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF216
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF217
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF218
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF115
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF219
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF220
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF221
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
	.long	.LASF127
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF222
	.byte	0x5
	.value	0x372
	.long	0xd06
	.byte	0x30
	.uleb128 0xe
	.long	.LASF223
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF224
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF225
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF226
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF227
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF228
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF229
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF230
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF231
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF232
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF233
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF234
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF235
	.byte	0x5
	.value	0x37f
	.long	0xd19
	.byte	0x68
	.uleb128 0xe
	.long	.LASF236
	.byte	0x5
	.value	0x380
	.long	0xd19
	.byte	0x70
	.uleb128 0xe
	.long	.LASF237
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF238
	.byte	0x5
	.value	0x383
	.long	0x171c
	.byte	0x80
	.uleb128 0xe
	.long	.LASF239
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF240
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF241
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF242
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF243
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF244
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF245
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF246
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF247
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF248
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF249
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF250
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF251
	.byte	0x5
	.value	0x395
	.long	0x1722
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF252
	.byte	0x5
	.value	0x397
	.long	0x173e
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF253
	.byte	0x5
	.value	0x398
	.long	0x175a
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF254
	.byte	0x5
	.value	0x399
	.long	0x1776
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x1798
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x17ae
	.value	0x3338
	.uleb128 0xf
	.long	.LASF255
	.byte	0x5
	.value	0x39d
	.long	0x17c4
	.value	0x3738
	.uleb128 0xf
	.long	.LASF256
	.byte	0x5
	.value	0x39e
	.long	0x171c
	.value	0x3740
	.uleb128 0xf
	.long	.LASF257
	.byte	0x5
	.value	0x3a0
	.long	0x17ca
	.value	0x3748
	.uleb128 0xf
	.long	.LASF258
	.byte	0x5
	.value	0x3a1
	.long	0xd00
	.value	0x3750
	.uleb128 0xf
	.long	.LASF259
	.byte	0x5
	.value	0x3a2
	.long	0x17d0
	.value	0x3758
	.uleb128 0xf
	.long	.LASF260
	.byte	0x5
	.value	0x3a3
	.long	0x17d6
	.value	0x3760
	.uleb128 0x1a
	.long	.LASF261
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1a
	.long	.LASF262
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
	.long	.LASF263
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1a
	.long	.LASF264
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1a
	.long	.LASF265
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1a
	.long	.LASF266
	.byte	0x5
	.value	0x3ac
	.long	0x17e7
	.long	0x11880
	.uleb128 0x1a
	.long	.LASF267
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1a
	.long	.LASF268
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1a
	.long	.LASF269
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1a
	.long	.LASF270
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1a
	.long	.LASF271
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1a
	.long	.LASF272
	.byte	0x5
	.value	0x3b4
	.long	0xa05
	.long	0x118d8
	.uleb128 0x1a
	.long	.LASF273
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1a
	.long	.LASF274
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1a
	.long	.LASF275
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1a
	.long	.LASF276
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1a
	.long	.LASF277
	.byte	0x5
	.value	0x3ba
	.long	0x17fd
	.long	0x118f0
	.uleb128 0x1a
	.long	.LASF278
	.byte	0x5
	.value	0x3bb
	.long	0x17fd
	.long	0x118f8
	.uleb128 0x1a
	.long	.LASF279
	.byte	0x5
	.value	0x3bd
	.long	0x17fd
	.long	0x11900
	.uleb128 0x1a
	.long	.LASF280
	.byte	0x5
	.value	0x3be
	.long	0x17fd
	.long	0x11908
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x5
	.value	0x3bf
	.long	0x1821
	.long	0x11910
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1a
	.long	.LASF163
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1a
	.long	.LASF164
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1a
	.long	.LASF281
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1a
	.long	.LASF282
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1a
	.long	.LASF283
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1a
	.long	.LASF284
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1a
	.long	.LASF285
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1a
	.long	.LASF286
	.byte	0x5
	.value	0x3ce
	.long	0x1831
	.long	0x11950
	.uleb128 0x1a
	.long	.LASF287
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1a
	.long	.LASF288
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1a
	.long	.LASF289
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1a
	.long	.LASF290
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1a
	.long	.LASF291
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1a
	.long	.LASF292
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1a
	.long	.LASF293
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1a
	.long	.LASF294
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1a
	.long	.LASF295
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1a
	.long	.LASF296
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1a
	.long	.LASF297
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1a
	.long	.LASF298
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1a
	.long	.LASF299
	.byte	0x5
	.value	0x3e4
	.long	0x1847
	.long	0x11ae8
	.uleb128 0x1a
	.long	.LASF300
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1a
	.long	.LASF301
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1a
	.long	.LASF302
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1a
	.long	.LASF303
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1a
	.long	.LASF304
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1a
	.long	.LASF305
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1a
	.long	.LASF306
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1a
	.long	.LASF307
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1a
	.long	.LASF308
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1a
	.long	.LASF309
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1a
	.long	.LASF310
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1a
	.long	.LASF311
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1a
	.long	.LASF312
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1a
	.long	.LASF313
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1a
	.long	.LASF314
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1a
	.long	.LASF316
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1a
	.long	.LASF317
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1a
	.long	.LASF318
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1a
	.long	.LASF319
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1a
	.long	.LASF320
	.byte	0x5
	.value	0x409
	.long	0x1857
	.long	0x11b40
	.uleb128 0x1a
	.long	.LASF321
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1a
	.long	.LASF322
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1a
	.long	.LASF325
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1a
	.long	.LASF326
	.byte	0x5
	.value	0x413
	.long	0xa05
	.long	0x11b60
	.uleb128 0x1a
	.long	.LASF327
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1a
	.long	.LASF328
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1a
	.long	.LASF329
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1a
	.long	.LASF330
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1a
	.long	.LASF331
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1a
	.long	.LASF332
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1a
	.long	.LASF333
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1a
	.long	.LASF334
	.byte	0x5
	.value	0x41b
	.long	0x185d
	.long	0x11b88
	.uleb128 0x1a
	.long	.LASF335
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1a
	.long	.LASF336
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1a
	.long	.LASF337
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1a
	.long	.LASF338
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1a
	.long	.LASF339
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1a
	.long	.LASF340
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1a
	.long	.LASF341
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1a
	.long	.LASF342
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1a
	.long	.LASF343
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1a
	.long	.LASF344
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1a
	.long	.LASF345
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1a
	.long	.LASF346
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1a
	.long	.LASF347
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1a
	.long	.LASF348
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1a
	.long	.LASF349
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1a
	.long	.LASF350
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1a
	.long	.LASF351
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1a
	.long	.LASF352
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1a
	.long	.LASF353
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1a
	.long	.LASF354
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1a
	.long	.LASF355
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1a
	.long	.LASF356
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1a
	.long	.LASF357
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1a
	.long	.LASF358
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1a
	.long	.LASF359
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1a
	.long	.LASF360
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1a
	.long	.LASF361
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1a
	.long	.LASF362
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1a
	.long	.LASF363
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1a
	.long	.LASF364
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1a
	.long	.LASF365
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1a
	.long	.LASF366
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1a
	.long	.LASF367
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1a
	.long	.LASF368
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1a
	.long	.LASF369
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd19
	.uleb128 0x4
	.long	0x42
	.long	0x173e
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
	.long	0x175a
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
	.long	0x1776
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
	.long	0x1798
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
	.long	0x17ae
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x17c4
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x171c
	.uleb128 0x6
	.byte	0x8
	.long	0xd0d
	.uleb128 0x6
	.byte	0x8
	.long	0xa0c
	.uleb128 0x4
	.long	0x737
	.long	0x17e7
	.uleb128 0x1c
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x17fd
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1803
	.uleb128 0x6
	.byte	0x8
	.long	0x1809
	.uleb128 0x6
	.byte	0x8
	.long	0x180f
	.uleb128 0x6
	.byte	0x8
	.long	0x1815
	.uleb128 0x6
	.byte	0x8
	.long	0x181b
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x1831
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1847
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1857
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x661
	.uleb128 0x6
	.byte	0x8
	.long	0xa05
	.uleb128 0x10
	.long	.LASF370
	.byte	0x5
	.value	0x449
	.long	0xd37
	.uleb128 0x1d
	.long	.LASF371
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x1ae5
	.uleb128 0xb
	.long	.LASF219
	.byte	0x6
	.byte	0x17
	.long	0x1d5
	.byte	0
	.uleb128 0xc
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF372
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF373
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF374
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF375
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xb
	.long	.LASF376
	.byte	0x6
	.byte	0x1e
	.long	0x1ae5
	.byte	0x18
	.uleb128 0x1e
	.long	.LASF377
	.byte	0x6
	.byte	0x1f
	.long	0x1ae5
	.value	0x648
	.uleb128 0x1e
	.long	.LASF378
	.byte	0x6
	.byte	0x20
	.long	0x1ae5
	.value	0xc78
	.uleb128 0x1e
	.long	.LASF379
	.byte	0x6
	.byte	0x21
	.long	0x1ae5
	.value	0x12a8
	.uleb128 0x1e
	.long	.LASF308
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0x1e
	.long	.LASF380
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0x1e
	.long	.LASF110
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0x1e
	.long	.LASF111
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0x1e
	.long	.LASF381
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0x1e
	.long	.LASF382
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0x1e
	.long	.LASF383
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0x1e
	.long	.LASF384
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0x1e
	.long	.LASF385
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0x1e
	.long	.LASF386
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0x1e
	.long	.LASF387
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0x1e
	.long	.LASF388
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0x1e
	.long	.LASF389
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0x1e
	.long	.LASF390
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0x1e
	.long	.LASF293
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0x1e
	.long	.LASF391
	.byte	0x6
	.byte	0x31
	.long	0xd25
	.value	0x1918
	.uleb128 0x1e
	.long	.LASF392
	.byte	0x6
	.byte	0x32
	.long	0xd2b
	.value	0x1920
	.uleb128 0x1e
	.long	.LASF393
	.byte	0x6
	.byte	0x33
	.long	0xd2b
	.value	0x1928
	.uleb128 0x1e
	.long	.LASF394
	.byte	0x6
	.byte	0x34
	.long	0xd25
	.value	0x1930
	.uleb128 0x1e
	.long	.LASF395
	.byte	0x6
	.byte	0x35
	.long	0xd25
	.value	0x1938
	.uleb128 0x1e
	.long	.LASF396
	.byte	0x6
	.byte	0x36
	.long	0xd1f
	.value	0x1940
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x6
	.byte	0x38
	.long	0xdd
	.value	0x1948
	.uleb128 0x1e
	.long	.LASF397
	.byte	0x6
	.byte	0x3a
	.long	0x180f
	.value	0x1950
	.uleb128 0x1e
	.long	.LASF398
	.byte	0x6
	.byte	0x3c
	.long	0x1afb
	.value	0x1958
	.uleb128 0x1e
	.long	.LASF399
	.byte	0x6
	.byte	0x3f
	.long	0x1afb
	.value	0x1960
	.uleb128 0x1f
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x1809
	.value	0x1968
	.uleb128 0x1e
	.long	.LASF400
	.byte	0x6
	.byte	0x44
	.long	0xd31
	.value	0x1970
	.uleb128 0x1e
	.long	.LASF401
	.byte	0x6
	.byte	0x45
	.long	0xd31
	.value	0x1978
	.uleb128 0x1e
	.long	.LASF285
	.byte	0x6
	.byte	0x47
	.long	0x1b0d
	.value	0x1980
	.uleb128 0x1e
	.long	.LASF402
	.byte	0x6
	.byte	0x48
	.long	0x1b0d
	.value	0x1988
	.uleb128 0x1e
	.long	.LASF403
	.byte	0x6
	.byte	0x49
	.long	0x1b0d
	.value	0x1990
	.uleb128 0x1e
	.long	.LASF404
	.byte	0x6
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0x1e
	.long	.LASF405
	.byte	0x6
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0x1e
	.long	.LASF406
	.byte	0x6
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0x1e
	.long	.LASF407
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0x1e
	.long	.LASF408
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0x1e
	.long	.LASF409
	.byte	0x6
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0x1e
	.long	.LASF410
	.byte	0x6
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0xe3
	.long	0x1afb
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b01
	.uleb128 0x6
	.byte	0x8
	.long	0x1b07
	.uleb128 0x6
	.byte	0x8
	.long	0xe3
	.uleb128 0x6
	.byte	0x8
	.long	0x186f
	.uleb128 0x7
	.long	.LASF411
	.byte	0x6
	.byte	0x52
	.long	0x186f
	.uleb128 0x6
	.byte	0x8
	.long	0x1b13
	.uleb128 0x20
	.long	.LASF520
	.byte	0x1
	.byte	0x35
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF521
	.byte	0x1
	.byte	0x42
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b86
	.uleb128 0x22
	.long	.LASF412
	.byte	0x1
	.byte	0x44
	.long	0x17d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"up"
	.byte	0x1
	.byte	0x45
	.long	0x5ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF413
	.byte	0x1
	.byte	0x45
	.long	0x5ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.long	.LASF415
	.byte	0x1
	.byte	0x5c
	.long	0xc3d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb6
	.uleb128 0x22
	.long	.LASF414
	.byte	0x1
	.byte	0x5e
	.long	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF416
	.byte	0x1
	.byte	0x6f
	.long	0xc43
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1be6
	.uleb128 0x22
	.long	.LASF414
	.byte	0x1
	.byte	0x71
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF417
	.byte	0x1
	.byte	0x84
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c12
	.uleb128 0x26
	.long	.LASF414
	.byte	0x1
	.byte	0x84
	.long	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF418
	.byte	0x1
	.byte	0x95
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3e
	.uleb128 0x26
	.long	.LASF414
	.byte	0x1
	.byte	0x95
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF419
	.byte	0x1
	.byte	0xa6
	.long	0x34
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c97
	.uleb128 0x27
	.string	"se"
	.byte	0x1
	.byte	0xa6
	.long	0xb0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF420
	.byte	0x1
	.byte	0xa6
	.long	0xc37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF421
	.byte	0x1
	.byte	0xa8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF422
	.byte	0x1
	.byte	0xa9
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF423
	.byte	0x1
	.byte	0xbd
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d20
	.uleb128 0x27
	.string	"se"
	.byte	0x1
	.byte	0xbd
	.long	0xb0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF422
	.byte	0x1
	.byte	0xbd
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"a"
	.byte	0x1
	.byte	0xbf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.byte	0xbf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF424
	.byte	0x1
	.byte	0xbf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0xc0
	.long	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF412
	.byte	0x1
	.byte	0xc1
	.long	0x17d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF143
	.byte	0x1
	.byte	0xc2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF425
	.byte	0x1
	.byte	0xdf
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1db9
	.uleb128 0x27
	.string	"se"
	.byte	0x1
	.byte	0xdf
	.long	0xb0c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF422
	.byte	0x1
	.byte	0xdf
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"a"
	.byte	0x1
	.byte	0xe1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.byte	0xe1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF424
	.byte	0x1
	.byte	0xe1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF426
	.byte	0x1
	.byte	0xe2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0xe3
	.long	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF412
	.byte	0x1
	.byte	0xe4
	.long	0x17d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF427
	.byte	0x1
	.byte	0xe5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x28
	.long	.LASF428
	.byte	0x1
	.value	0x11c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e4b
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x11c
	.long	0xb0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x11c
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x11e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x11e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF424
	.byte	0x1
	.value	0x11f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF429
	.byte	0x1
	.value	0x120
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x122
	.long	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF412
	.byte	0x1
	.value	0x123
	.long	0x17d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF430
	.byte	0x1
	.value	0x142
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f2b
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x142
	.long	0xb0c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x142
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x144
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x144
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF424
	.byte	0x1
	.value	0x145
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF429
	.byte	0x1
	.value	0x146
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF431
	.byte	0x1
	.value	0x147
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF426
	.byte	0x1
	.value	0x148
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF432
	.byte	0x1
	.value	0x149
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF433
	.byte	0x1
	.value	0x14a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x14d
	.long	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF412
	.byte	0x1
	.value	0x14e
	.long	0x17d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF427
	.byte	0x1
	.value	0x14f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x28
	.long	.LASF434
	.byte	0x1
	.value	0x244
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fb2
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x244
	.long	0xb0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x244
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF424
	.byte	0x1
	.value	0x246
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF429
	.byte	0x1
	.value	0x247
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF431
	.byte	0x1
	.value	0x247
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF426
	.byte	0x1
	.value	0x248
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x24a
	.long	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF435
	.byte	0x1
	.value	0x2a5
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ffd
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x2a5
	.long	0xb0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x2a5
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x2a7
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF436
	.byte	0x1
	.value	0x2bd
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2106
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x2bd
	.long	0xb0c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x2bd
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x2bf
	.long	0xc3d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF412
	.byte	0x1
	.value	0x2c0
	.long	0x17d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF437
	.byte	0x1
	.value	0x2c1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x2c3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x2c3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF424
	.byte	0x1
	.value	0x2c4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF429
	.byte	0x1
	.value	0x2c5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF438
	.byte	0x1
	.value	0x2c6
	.long	0x1815
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF439
	.byte	0x1
	.value	0x2c8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"b8a"
	.byte	0x1
	.value	0x2ca
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"b8b"
	.byte	0x1
	.value	0x2ca
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF440
	.byte	0x1
	.value	0x2cc
	.long	0x5ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF441
	.byte	0x1
	.value	0x2cc
	.long	0x5ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.long	.LASF442
	.byte	0x1
	.value	0x305
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x219c
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x305
	.long	0xb0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x305
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x307
	.long	0xc3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF424
	.byte	0x1
	.value	0x309
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF429
	.byte	0x1
	.value	0x30a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF443
	.byte	0x1
	.value	0x30b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF444
	.byte	0x1
	.value	0x30c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF412
	.byte	0x1
	.value	0x30e
	.long	0x17d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF445
	.byte	0x1
	.value	0x32f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x22bf
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x32f
	.long	0xb0c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x32f
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x331
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x332
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x333
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x333
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.long	.LASF424
	.byte	0x1
	.value	0x334
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF429
	.byte	0x1
	.value	0x335
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF446
	.byte	0x1
	.value	0x336
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF447
	.byte	0x1
	.value	0x337
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF448
	.byte	0x1
	.value	0x338
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF449
	.byte	0x1
	.value	0x339
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.value	0x33a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF440
	.byte	0x1
	.value	0x33c
	.long	0x5ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF441
	.byte	0x1
	.value	0x33c
	.long	0x5ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x33e
	.long	0xc3d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF412
	.byte	0x1
	.value	0x33f
	.long	0x17d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x28
	.long	.LASF450
	.byte	0x1
	.value	0x383
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2351
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x383
	.long	0xb0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x383
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x385
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF412
	.byte	0x1
	.value	0x386
	.long	0x17d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF424
	.byte	0x1
	.value	0x387
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x387
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x387
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF429
	.byte	0x1
	.value	0x388
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.long	.LASF451
	.byte	0x1
	.value	0x3a2
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2416
	.uleb128 0x29
	.string	"b8"
	.byte	0x1
	.value	0x3a2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.string	"bit"
	.byte	0x1
	.value	0x3a2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"cbp"
	.byte	0x1
	.value	0x3a2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF412
	.byte	0x1
	.value	0x3a2
	.long	0x17d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF452
	.byte	0x1
	.value	0x3a2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x3a2
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF440
	.byte	0x1
	.value	0x3a4
	.long	0x5ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x3a5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x3a5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF239
	.byte	0x1
	.value	0x3a7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF240
	.byte	0x1
	.value	0x3a8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x28
	.long	.LASF453
	.byte	0x1
	.value	0x3d9
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x24d6
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x3d9
	.long	0xb0c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x3d9
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x3db
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF412
	.byte	0x1
	.value	0x3dc
	.long	0x17d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x3de
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x3de
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF454
	.byte	0x1
	.value	0x3df
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF455
	.byte	0x1
	.value	0x3df
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"cbp"
	.byte	0x1
	.value	0x3e0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF456
	.byte	0x1
	.value	0x3e1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"b8"
	.byte	0x1
	.value	0x3e2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x28
	.long	.LASF457
	.byte	0x1
	.value	0x434
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2650
	.uleb128 0x2a
	.long	.LASF412
	.byte	0x1
	.value	0x434
	.long	0x17d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x434
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF115
	.byte	0x1
	.value	0x434
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2a
	.long	.LASF456
	.byte	0x1
	.value	0x434
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2c
	.long	.LASF458
	.byte	0x1
	.value	0x438
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF459
	.byte	0x1
	.value	0x439
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.long	.LASF460
	.byte	0x1
	.value	0x43a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF461
	.byte	0x1
	.value	0x43b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF462
	.byte	0x1
	.value	0x43c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF463
	.byte	0x1
	.value	0x43d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF464
	.byte	0x1
	.value	0x43e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x43f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x440
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"bit"
	.byte	0x1
	.value	0x441
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF465
	.byte	0x1
	.value	0x442
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF466
	.byte	0x1
	.value	0x443
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF467
	.byte	0x1
	.value	0x444
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x445
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF468
	.byte	0x1
	.value	0x447
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.long	.LASF469
	.byte	0x1
	.value	0x448
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF440
	.byte	0x1
	.value	0x44a
	.long	0x5ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF441
	.byte	0x1
	.value	0x44a
	.long	0x5ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.long	.LASF470
	.byte	0x1
	.value	0x4d3
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2733
	.uleb128 0x2a
	.long	.LASF412
	.byte	0x1
	.value	0x4d3
	.long	0x17d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x4d3
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF115
	.byte	0x1
	.value	0x4d3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF471
	.byte	0x1
	.value	0x4d3
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF472
	.byte	0x1
	.value	0x4d3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.value	0x4d5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x2b
	.string	"sig"
	.byte	0x1
	.value	0x4d5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF473
	.byte	0x1
	.value	0x4d5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x2b
	.string	"k0"
	.byte	0x1
	.value	0x4d6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"k1"
	.byte	0x1
	.value	0x4d7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"fld"
	.byte	0x1
	.value	0x4d9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF474
	.byte	0x1
	.value	0x4da
	.long	0x34b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF475
	.byte	0x1
	.value	0x4dc
	.long	0x34b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF476
	.byte	0x1
	.value	0x500
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f5
	.uleb128 0x2a
	.long	.LASF412
	.byte	0x1
	.value	0x500
	.long	0x17d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x500
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF115
	.byte	0x1
	.value	0x500
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF471
	.byte	0x1
	.value	0x500
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x502
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF477
	.byte	0x1
	.value	0x503
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"ctx"
	.byte	0x1
	.value	0x504
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.long	.LASF444
	.byte	0x1
	.value	0x505
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF478
	.byte	0x1
	.value	0x506
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x2b
	.string	"c1"
	.byte	0x1
	.value	0x507
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"c2"
	.byte	0x1
	.value	0x508
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF479
	.byte	0x1
	.value	0x52f
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x288f
	.uleb128 0x29
	.string	"se"
	.byte	0x1
	.value	0x52f
	.long	0xb0c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x52f
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF471
	.byte	0x1
	.value	0x531
	.long	0x288f
	.uleb128 0x9
	.byte	0x3
	.quad	coeff.4651
	.uleb128 0x2c
	.long	.LASF472
	.byte	0x1
	.value	0x532
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	coeff_ctr.4652
	.uleb128 0x2b
	.string	"pos"
	.byte	0x1
	.value	0x533
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	pos.4653
	.uleb128 0x2c
	.long	.LASF412
	.byte	0x1
	.value	0x535
	.long	0x17d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x536
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x289f
	.uleb128 0x5
	.long	0x75
	.byte	0x3f
	.byte	0
	.uleb128 0x28
	.long	.LASF480
	.byte	0x1
	.value	0x560
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2916
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x560
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x561
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"ctx"
	.byte	0x1
	.value	0x562
	.long	0x34b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x563
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x565
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF483
	.byte	0x1
	.value	0x566
	.long	0x34b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF484
	.byte	0x1
	.value	0x582
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x299c
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x582
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x583
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"ctx"
	.byte	0x1
	.value	0x584
	.long	0x34b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF482
	.byte	0x1
	.value	0x585
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF485
	.byte	0x1
	.value	0x586
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x588
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.long	.LASF483
	.byte	0x1
	.value	0x589
	.long	0x34b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF486
	.byte	0x1
	.value	0x5a5
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x29e6
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x5a5
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x5a6
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x5a7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x28
	.long	.LASF487
	.byte	0x1
	.value	0x5c3
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a5b
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x5c3
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x5c4
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"ctx"
	.byte	0x1
	.value	0x5c5
	.long	0x34b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x5c7
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.value	0x5c7
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF488
	.byte	0x1
	.value	0x5c8
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF489
	.byte	0x1
	.value	0x5e4
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x2afe
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x1
	.value	0x5e4
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x1
	.value	0x5e5
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"ctx"
	.byte	0x1
	.value	0x5e6
	.long	0x34b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF490
	.byte	0x1
	.value	0x5e7
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"l"
	.byte	0x1
	.value	0x5e9
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.value	0x5e9
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"bin"
	.byte	0x1
	.value	0x5ea
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF483
	.byte	0x1
	.value	0x5eb
	.long	0x34b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF488
	.byte	0x1
	.value	0x5ec
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2b0e
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x2c
	.long	.LASF491
	.byte	0x1
	.value	0x422
	.long	0x2b24
	.uleb128 0x9
	.byte	0x3
	.quad	maxpos
	.uleb128 0x2d
	.long	0x2afe
	.uleb128 0x2c
	.long	.LASF492
	.byte	0x1
	.value	0x423
	.long	0x2b3f
	.uleb128 0x9
	.byte	0x3
	.quad	c1isdc
	.uleb128 0x2d
	.long	0x2afe
	.uleb128 0x2c
	.long	.LASF493
	.byte	0x1
	.value	0x425
	.long	0x2b5a
	.uleb128 0x9
	.byte	0x3
	.quad	type2ctx_bcbp
	.uleb128 0x2d
	.long	0x2afe
	.uleb128 0x2c
	.long	.LASF494
	.byte	0x1
	.value	0x426
	.long	0x2b75
	.uleb128 0x9
	.byte	0x3
	.quad	type2ctx_map
	.uleb128 0x2d
	.long	0x2afe
	.uleb128 0x2c
	.long	.LASF495
	.byte	0x1
	.value	0x427
	.long	0x2b90
	.uleb128 0x9
	.byte	0x3
	.quad	type2ctx_last
	.uleb128 0x2d
	.long	0x2afe
	.uleb128 0x2c
	.long	.LASF496
	.byte	0x1
	.value	0x428
	.long	0x2bab
	.uleb128 0x9
	.byte	0x3
	.quad	type2ctx_one
	.uleb128 0x2d
	.long	0x2afe
	.uleb128 0x2c
	.long	.LASF497
	.byte	0x1
	.value	0x429
	.long	0x2bc6
	.uleb128 0x9
	.byte	0x3
	.quad	type2ctx_abs
	.uleb128 0x2d
	.long	0x2afe
	.uleb128 0x2c
	.long	.LASF498
	.byte	0x1
	.value	0x42a
	.long	0x2be1
	.uleb128 0x9
	.byte	0x3
	.quad	max_c2
	.uleb128 0x2d
	.long	0x2afe
	.uleb128 0x2c
	.long	.LASF499
	.byte	0x1
	.value	0x49f
	.long	0x2bfc
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map8x8
	.uleb128 0x2d
	.long	0x288f
	.uleb128 0x4
	.long	0x34
	.long	0x2c11
	.uleb128 0x5
	.long	0x75
	.byte	0x1f
	.byte	0
	.uleb128 0x2c
	.long	.LASF500
	.byte	0x1
	.value	0x4a3
	.long	0x2c27
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map8x4
	.uleb128 0x2d
	.long	0x2c01
	.uleb128 0x2c
	.long	.LASF501
	.byte	0x1
	.value	0x4a5
	.long	0x2c42
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map4x4
	.uleb128 0x2d
	.long	0x9e5
	.uleb128 0x2c
	.long	.LASF502
	.byte	0x1
	.value	0x4a6
	.long	0x2c5d
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map2x4c
	.uleb128 0x2d
	.long	0x9e5
	.uleb128 0x2c
	.long	.LASF503
	.byte	0x1
	.value	0x4a7
	.long	0x2c78
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map4x4c
	.uleb128 0x2d
	.long	0x9e5
	.uleb128 0x4
	.long	0x2c8d
	.long	0x2c8d
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c93
	.uleb128 0x2d
	.long	0x34
	.uleb128 0x2c
	.long	.LASF504
	.byte	0x1
	.value	0x4a8
	.long	0x2c7d
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map
	.uleb128 0x2c
	.long	.LASF505
	.byte	0x1
	.value	0x4ae
	.long	0x2cc4
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map8x8i
	.uleb128 0x2d
	.long	0x288f
	.uleb128 0x2c
	.long	.LASF506
	.byte	0x1
	.value	0x4b3
	.long	0x2cdf
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map8x4i
	.uleb128 0x2d
	.long	0x2c01
	.uleb128 0x2c
	.long	.LASF507
	.byte	0x1
	.value	0x4b5
	.long	0x2cfa
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map4x8i
	.uleb128 0x2d
	.long	0x2c01
	.uleb128 0x2c
	.long	.LASF508
	.byte	0x1
	.value	0x4b7
	.long	0x2c7d
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_map_int
	.uleb128 0x2c
	.long	.LASF509
	.byte	0x1
	.value	0x4bd
	.long	0x2d2b
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_last8x8
	.uleb128 0x2d
	.long	0x288f
	.uleb128 0x2c
	.long	.LASF510
	.byte	0x1
	.value	0x4c1
	.long	0x2d46
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_last8x4
	.uleb128 0x2d
	.long	0x2c01
	.uleb128 0x2c
	.long	.LASF511
	.byte	0x1
	.value	0x4c3
	.long	0x2d61
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_last4x4
	.uleb128 0x2d
	.long	0x9e5
	.uleb128 0x2c
	.long	.LASF512
	.byte	0x1
	.value	0x4c4
	.long	0x2d7c
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_last2x4c
	.uleb128 0x2d
	.long	0x9e5
	.uleb128 0x2c
	.long	.LASF513
	.byte	0x1
	.value	0x4c5
	.long	0x2d97
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_last4x4c
	.uleb128 0x2d
	.long	0x9e5
	.uleb128 0x2c
	.long	.LASF514
	.byte	0x1
	.value	0x4c6
	.long	0x2c7d
	.uleb128 0x9
	.byte	0x3
	.quad	pos2ctx_last
	.uleb128 0x2e
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x2dbe
	.uleb128 0x6
	.byte	0x8
	.long	0x1863
	.uleb128 0x2f
	.long	.LASF515
	.byte	0x7
	.byte	0x13
	.long	0x1b1e
	.uleb128 0x30
	.long	.LASF516
	.byte	0x1
	.byte	0x18
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	last_dquant
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x29
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2f
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
.LASF494:
	.string	"type2ctx_map"
.LASF354:
	.string	"bitdepth_luma_qp_scale"
.LASF357:
	.string	"dc_pred_value"
.LASF355:
	.string	"bitdepth_chroma_qp_scale"
.LASF29:
	.string	"SE_LUM_DC_INTER"
.LASF318:
	.string	"no_output_of_prior_pics_flag"
.LASF42:
	.string	"BITS_INTER_MB"
.LASF283:
	.string	"num_ref_idx_l1_active"
.LASF300:
	.string	"pic_order_cnt_lsb"
.LASF343:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF446:
	.string	"mv_pred_res"
.LASF346:
	.string	"DeblockCall"
.LASF395:
	.string	"imgY_ups_w"
.LASF47:
	.string	"MAX_BITCOUNTER_MB"
.LASF36:
	.string	"SE_EOS"
.LASF27:
	.string	"SE_CHR_AC_INTRA"
.LASF224:
	.string	"width_cr"
.LASF313:
	.string	"PicSizeInMbs"
.LASF53:
	.string	"B_SLICE"
.LASF260:
	.string	"MB_SyntaxElements"
.LASF393:
	.string	"imgY_11_w"
.LASF255:
	.string	"cofAC"
.LASF387:
	.string	"size_x_cr"
.LASF363:
	.string	"lossless_qpprime_flag"
.LASF270:
	.string	"imgtr_next_P_fld"
.LASF16:
	.string	"int64"
.LASF470:
	.string	"write_significance_map"
.LASF207:
	.string	"slices"
.LASF110:
	.string	"long_term_pic_num"
.LASF52:
	.string	"P_SLICE"
.LASF236:
	.string	"ipredmode8x8"
.LASF240:
	.string	"mb_y"
.LASF320:
	.string	"dec_ref_pic_marking_buffer"
.LASF471:
	.string	"coeff"
.LASF511:
	.string	"pos2ctx_last4x4"
.LASF450:
	.string	"writeCIPredMode_CABAC"
.LASF112:
	.string	"max_long_term_frame_idx_plus1"
.LASF448:
	.string	"mv_sign"
.LASF364:
	.string	"mb_cr_size_x"
.LASF488:
	.string	"exp_start"
.LASF444:
	.string	"sign"
.LASF285:
	.string	"top_field"
.LASF73:
	.string	"state"
.LASF443:
	.string	"dquant"
.LASF88:
	.string	"bcbp_contexts"
.LASF114:
	.string	"syntaxelement"
.LASF115:
	.string	"type"
.LASF275:
	.string	"fw_mb_mode"
.LASF314:
	.string	"FrameSizeInMbs"
.LASF399:
	.string	"ref_id"
.LASF162:
	.string	"LFDisableIdc"
.LASF389:
	.string	"chroma_vector_adjustment"
.LASF340:
	.string	"IFLAG"
.LASF176:
	.string	"bits_to_go_skip"
.LASF277:
	.string	"pred_mv"
.LASF477:
	.string	"absLevel"
.LASF360:
	.string	"num_blk8x8_uv"
.LASF193:
	.string	"rmpni_buffer"
.LASF28:
	.string	"SE_CBP_INTER"
.LASF143:
	.string	"mb_field"
.LASF476:
	.string	"write_significant_coefficients"
.LASF111:
	.string	"long_term_frame_idx"
.LASF379:
	.string	"bottom_ref_pic_num"
.LASF235:
	.string	"ipredmode"
.LASF135:
	.string	"b8mode"
.LASF457:
	.string	"write_and_store_CBP_block_bit"
.LASF202:
	.string	"slice_too_big"
.LASF34:
	.string	"SE_DELTA_QUANT_INTRA"
.LASF253:
	.string	"mprr_3"
.LASF169:
	.string	"bits_to_go"
.LASF107:
	.string	"DecRefPicMarking_s"
.LASF113:
	.string	"DecRefPicMarking_t"
.LASF453:
	.string	"writeCBP_CABAC"
.LASF344:
	.string	"bot_MB"
.LASF342:
	.string	"BasicUnit"
.LASF220:
	.string	"num_ref_frames"
.LASF69:
	.string	"EcodestrmS"
.LASF262:
	.string	"intra_block"
.LASF46:
	.string	"BITS_DELTA_QUANT_MB"
.LASF413:
	.string	"left"
.LASF6:
	.string	"long int"
.LASF368:
	.string	"auto_crop_right"
.LASF380:
	.string	"pic_num"
.LASF254:
	.string	"mprr_c"
.LASF152:
	.string	"all_blk_8x8"
.LASF316:
	.string	"nal_reference_idc"
.LASF306:
	.string	"framepoc"
.LASF323:
	.string	"NumberofTextureBits"
.LASF249:
	.string	"opix_c_x"
.LASF250:
	.string	"opix_c_y"
.LASF19:
	.string	"SE_MBTYPE"
.LASF382:
	.string	"used_for_reference"
.LASF345:
	.string	"write_macroblock_frame"
.LASF173:
	.string	"stored_byte_buf"
.LASF39:
	.string	"BITS_HEADER"
.LASF310:
	.string	"PicHeightInMapUnits"
.LASF377:
	.string	"frm_ref_pic_num"
.LASF331:
	.string	"NumberofGOP"
.LASF352:
	.string	"bitdepth_luma"
.LASF516:
	.string	"last_dquant"
.LASF43:
	.string	"BITS_CBP_MB"
.LASF26:
	.string	"SE_LUM_AC_INTRA"
.LASF59:
	.string	"Ebuffer"
.LASF58:
	.string	"Erange"
.LASF38:
	.string	"SE_MAX_ELEMENTS"
.LASF4:
	.string	"signed char"
.LASF222:
	.string	"framerate"
.LASF188:
	.string	"max_part_nr"
.LASF72:
	.string	"EncodingEnvironmentPtr"
.LASF295:
	.string	"delta_pic_order_always_zero_flag"
.LASF142:
	.string	"IntraChromaPredModeFlag"
.LASF496:
	.string	"type2ctx_one"
.LASF119:
	.string	"context"
.LASF197:
	.string	"long_term_pic_idx_l0"
.LASF201:
	.string	"long_term_pic_idx_l1"
.LASF194:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF198:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF333:
	.string	"NumberofPPicture"
.LASF328:
	.string	"NumberofMBHeaderBits"
.LASF256:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF133:
	.string	"intra_pred_modes8x8"
.LASF434:
	.string	"writeB8_typeInfo_CABAC"
.LASF439:
	.string	"bslice"
.LASF347:
	.string	"last_pic_bottom_field"
.LASF279:
	.string	"bipred_mv1"
.LASF280:
	.string	"bipred_mv2"
.LASF90:
	.string	"last_contexts"
.LASF141:
	.string	"c_ipred_mode"
.LASF359:
	.string	"max_imgpel_value_uv"
.LASF195:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF199:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF196:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF200:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF170:
	.string	"byte_buf"
.LASF155:
	.string	"bi_pred_me"
.LASF451:
	.string	"writeCBP_BIT_CABAC"
.LASF126:
	.string	"delta_qp"
.LASF412:
	.string	"currMB"
.LASF433:
	.string	"mode16x16"
.LASF221:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF234:
	.string	"block_c_x"
.LASF431:
	.string	"csym"
.LASF83:
	.string	"transform_size_contexts"
.LASF261:
	.string	"quad"
.LASF230:
	.string	"is_intra_block"
.LASF187:
	.string	"start_mb_nr"
.LASF426:
	.string	"bframe"
.LASF478:
	.string	"greater_one"
.LASF97:
	.string	"mb_addr"
.LASF384:
	.string	"non_existing"
.LASF40:
	.string	"BITS_TOTAL_MB"
.LASF512:
	.string	"pos2ctx_last2x4c"
.LASF129:
	.string	"mb_available_up"
.LASF302:
	.string	"delta_pic_order_cnt"
.LASF519:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF392:
	.string	"imgY_11"
.LASF322:
	.string	"NumberofHeaderBits"
.LASF513:
	.string	"pos2ctx_last4x4c"
.LASF215:
	.string	"nb_references"
.LASF118:
	.string	"bitpattern"
.LASF404:
	.string	"chroma_format_idc"
.LASF56:
	.string	"SI_SLICE"
.LASF82:
	.string	"mb_aff_contexts"
.LASF153:
	.string	"luma_transform_size_8x8_flag"
.LASF242:
	.string	"block_y"
.LASF452:
	.string	"inter"
.LASF257:
	.string	"currentPicture"
.LASF78:
	.string	"b8_type_contexts"
.LASF273:
	.string	"p_interval"
.LASF213:
	.string	"Picture"
.LASF271:
	.string	"imgtr_last_P_fld"
.LASF394:
	.string	"imgY_ups"
.LASF158:
	.string	"prev_delta_qp"
.LASF468:
	.string	"bit_pos_a"
.LASF469:
	.string	"bit_pos_b"
.LASF419:
	.string	"writeSyntaxElement_CABAC"
.LASF231:
	.string	"is_v_block"
.LASF508:
	.string	"pos2ctx_map_int"
.LASF474:
	.string	"map_ctx"
.LASF233:
	.string	"mb_y_intra"
.LASF77:
	.string	"mb_type_contexts"
.LASF177:
	.string	"streamBuffer"
.LASF67:
	.string	"Ebits_to_goS"
.LASF424:
	.string	"act_ctx"
.LASF461:
	.string	"v_ac"
.LASF504:
	.string	"pos2ctx_map"
.LASF334:
	.string	"MADofMB"
.LASF282:
	.string	"num_ref_idx_l0_active"
.LASF321:
	.string	"model_number"
.LASF54:
	.string	"I_SLICE"
.LASF123:
	.string	"macroblock"
.LASF473:
	.string	"last"
.LASF304:
	.string	"toppoc"
.LASF293:
	.string	"MbaffFrameFlag"
.LASF57:
	.string	"Elow"
.LASF418:
	.string	"delete_contexts_TextureInfo"
.LASF247:
	.string	"opix_x"
.LASF248:
	.string	"opix_y"
.LASF372:
	.string	"top_poc"
.LASF186:
	.string	"picture_type"
.LASF366:
	.string	"chroma_qp_offset"
.LASF312:
	.string	"PicHeightInMbs"
.LASF371:
	.string	"storable_picture"
.LASF299:
	.string	"offset_for_ref_frame"
.LASF284:
	.string	"field_mode"
.LASF76:
	.string	"BiContextTypePtr"
.LASF71:
	.string	"EncodingEnvironment"
.LASF183:
	.string	"writeSyntaxElement"
.LASF493:
	.string	"type2ctx_bcbp"
.LASF37:
	.string	"SE_TRANSFORM_SIZE_FLAG"
.LASF0:
	.string	"long unsigned int"
.LASF86:
	.string	"cipr_contexts"
.LASF70:
	.string	"Ecodestrm_lenS"
.LASF189:
	.string	"num_mb"
.LASF305:
	.string	"bottompoc"
.LASF24:
	.string	"SE_LUM_DC_INTRA"
.LASF286:
	.string	"mvscale"
.LASF489:
	.string	"unary_exp_golomb_mv_encode"
.LASF267:
	.string	"pstruct_next_P"
.LASF435:
	.string	"writeIntraPredMode_CABAC"
.LASF139:
	.string	"lf_alpha_c0_offset"
.LASF369:
	.string	"auto_crop_bottom"
.LASF521:
	.string	"CheckAvailabilityOfNeighborsCABAC"
.LASF96:
	.string	"available"
.LASF335:
	.string	"BasicUnitQP"
.LASF327:
	.string	"NumberofMBTextureBits"
.LASF137:
	.string	"cbp_bits"
.LASF464:
	.string	"v_dc"
.LASF390:
	.string	"coded_frame"
.LASF374:
	.string	"frame_poc"
.LASF245:
	.string	"pix_c_x"
.LASF246:
	.string	"pix_c_y"
.LASF274:
	.string	"b_frame_to_code"
.LASF208:
	.string	"bits_per_picture"
.LASF232:
	.string	"mb_y_upd"
.LASF103:
	.string	"RMPNI"
.LASF50:
	.string	"BOTTOM_FIELD"
.LASF163:
	.string	"LFAlphaC0Offset"
.LASF140:
	.string	"lf_beta_offset"
.LASF109:
	.string	"difference_of_pic_nums_minus1"
.LASF251:
	.string	"mprr"
.LASF391:
	.string	"imgY"
.LASF84:
	.string	"MotionInfoContexts"
.LASF432:
	.string	"mode_sym"
.LASF9:
	.string	"long long int"
.LASF520:
	.string	"cabac_new_slice"
.LASF272:
	.string	"b_interval"
.LASF60:
	.string	"Ebits_to_go"
.LASF264:
	.string	"fld_flag"
.LASF266:
	.string	"direct_intraP_ref"
.LASF223:
	.string	"width"
.LASF131:
	.string	"mb_type"
.LASF172:
	.string	"stored_bits_to_go"
.LASF365:
	.string	"mb_cr_size_y"
.LASF252:
	.string	"mprr_2"
.LASF125:
	.string	"slice_nr"
.LASF30:
	.string	"SE_CHR_DC_INTER"
.LASF211:
	.string	"distortion_v"
.LASF209:
	.string	"distortion_y"
.LASF175:
	.string	"byte_pos_skip"
.LASF164:
	.string	"LFBetaOffset"
.LASF425:
	.string	"writeMB_skip_flagInfo_CABAC"
.LASF166:
	.string	"double"
.LASF487:
	.string	"unary_exp_golomb_level_encode"
.LASF437:
	.string	"addctx"
.LASF403:
	.string	"frame"
.LASF497:
	.string	"type2ctx_abs"
.LASF171:
	.string	"stored_byte_pos"
.LASF367:
	.string	"residue_transform_flag"
.LASF23:
	.string	"SE_CBP_INTRA"
.LASF472:
	.string	"coeff_ctr"
.LASF416:
	.string	"create_contexts_TextureInfo"
.LASF269:
	.string	"imgtr_last_P_frm"
.LASF423:
	.string	"writeFieldModeInfo_CABAC"
.LASF35:
	.string	"SE_BFRAME"
.LASF91:
	.string	"one_contexts"
.LASF388:
	.string	"size_y_cr"
.LASF127:
	.string	"qpsp"
.LASF212:
	.string	"float"
.LASF490:
	.string	"max_bin"
.LASF480:
	.string	"unary_bin_encode"
.LASF74:
	.string	"count"
.LASF159:
	.string	"prev_cbp"
.LASF75:
	.string	"BiContextType"
.LASF383:
	.string	"is_output"
.LASF265:
	.string	"rd_pass"
.LASF3:
	.string	"unsigned int"
.LASF100:
	.string	"PixelPos"
.LASF92:
	.string	"abs_contexts"
.LASF61:
	.string	"Ebits_to_follow"
.LASF178:
	.string	"write_flag"
.LASF217:
	.string	"total_number_mb"
.LASF63:
	.string	"Ecodestrm_len"
.LASF192:
	.string	"tex_ctx"
.LASF454:
	.string	"curr_cbp_ctx"
.LASF430:
	.string	"writeMB_typeInfo_CABAC"
.LASF332:
	.string	"TotalQpforPPicture"
.LASF130:
	.string	"mb_available_left"
.LASF102:
	.string	"RMPNIbuffer_s"
.LASF106:
	.string	"RMPNIbuffer_t"
.LASF21:
	.string	"SE_INTRAPREDMODE"
.LASF350:
	.string	"slice_group_change_cycle"
.LASF95:
	.string	"TextureInfoContexts"
.LASF402:
	.string	"bottom_field"
.LASF442:
	.string	"writeDquant_CABAC"
.LASF376:
	.string	"ref_pic_num"
.LASF289:
	.string	"layer"
.LASF136:
	.string	"b8pdir"
.LASF205:
	.string	"no_slices"
.LASF297:
	.string	"offset_for_top_to_bottom_field"
.LASF32:
	.string	"SE_CHR_AC_INTER"
.LASF436:
	.string	"writeRefFrame_CABAC"
.LASF410:
	.string	"frame_cropping_rect_bottom_offset"
.LASF268:
	.string	"imgtr_next_P_frm"
.LASF337:
	.string	"FieldControl"
.LASF329:
	.string	"NumberofCodedBFrame"
.LASF288:
	.string	"i16offset"
.LASF492:
	.string	"c1isdc"
.LASF101:
	.string	"pix_pos"
.LASF216:
	.string	"current_mb_nr"
.LASF210:
	.string	"distortion_u"
.LASF243:
	.string	"pix_x"
.LASF244:
	.string	"pix_y"
.LASF517:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF495:
	.string	"type2ctx_last"
.LASF485:
	.string	"max_symbol"
.LASF370:
	.string	"ImageParameters"
.LASF428:
	.string	"writeMB_transform_size_CABAC"
.LASF182:
	.string	"ee_cabac"
.LASF239:
	.string	"mb_x"
.LASF13:
	.string	"FALSE"
.LASF160:
	.string	"predict_qp"
.LASF440:
	.string	"block_a"
.LASF441:
	.string	"block_b"
.LASF98:
	.string	"pos_x"
.LASF99:
	.string	"pos_y"
.LASF491:
	.string	"maxpos"
.LASF241:
	.string	"block_x"
.LASF475:
	.string	"last_ctx"
.LASF348:
	.string	"last_has_mmco_5"
.LASF294:
	.string	"pic_order_cnt_type"
.LASF94:
	.string	"fld_last_contexts"
.LASF296:
	.string	"offset_for_non_ref_pic"
.LASF165:
	.string	"skip_flag"
.LASF308:
	.string	"frame_num"
.LASF89:
	.string	"map_contexts"
.LASF55:
	.string	"SP_SLICE"
.LASF108:
	.string	"memory_management_control_operation"
.LASF373:
	.string	"bottom_poc"
.LASF179:
	.string	"Bitstream"
.LASF291:
	.string	"NoResidueDirect"
.LASF341:
	.string	"NumberofCodedMacroBlocks"
.LASF185:
	.string	"picture_id"
.LASF405:
	.string	"frame_mbs_only_flag"
.LASF484:
	.string	"unary_bin_max_encode"
.LASF263:
	.string	"fld_type"
.LASF330:
	.string	"NumberofCodedPFrame"
.LASF482:
	.string	"ctx_offset"
.LASF415:
	.string	"create_contexts_MotionInfo"
.LASF10:
	.string	"long long unsigned int"
.LASF41:
	.string	"BITS_MB_MODE"
.LASF421:
	.string	"curr_len"
.LASF132:
	.string	"intra_pred_modes"
.LASF226:
	.string	"height_cr"
.LASF278:
	.string	"all_mv"
.LASF411:
	.string	"StorablePicture"
.LASF225:
	.string	"height"
.LASF219:
	.string	"structure"
.LASF203:
	.string	"field_ctx"
.LASF500:
	.string	"pos2ctx_map8x4"
.LASF401:
	.string	"field_frame"
.LASF499:
	.string	"pos2ctx_map8x8"
.LASF184:
	.string	"DataPartition"
.LASF33:
	.string	"SE_DELTA_QUANT_INTER"
.LASF259:
	.string	"mb_data"
.LASF409:
	.string	"frame_cropping_rect_top_offset"
.LASF325:
	.string	"NumberofBasicUnitTextureBits"
.LASF422:
	.string	"eep_dp"
.LASF518:
	.string	"cabac.c"
.LASF204:
	.string	"Slice"
.LASF502:
	.string	"pos2ctx_map2x4c"
.LASF180:
	.string	"datapartition"
.LASF68:
	.string	"Ebits_to_followS"
.LASF227:
	.string	"height_cr_frame"
.LASF417:
	.string	"delete_contexts_MotionInfo"
.LASF449:
	.string	"list_idx"
.LASF339:
	.string	"Frame_Total_Number_MB"
.LASF503:
	.string	"pos2ctx_map4x4c"
.LASF116:
	.string	"value1"
.LASF117:
	.string	"value2"
.LASF438:
	.string	"refframe_array"
.LASF407:
	.string	"frame_cropping_rect_left_offset"
.LASF181:
	.string	"bitstream"
.LASF303:
	.string	"field_picture"
.LASF429:
	.string	"act_sym"
.LASF378:
	.string	"top_ref_pic_num"
.LASF64:
	.string	"ElowS"
.LASF506:
	.string	"pos2ctx_map8x4i"
.LASF15:
	.string	"Boolean"
.LASF292:
	.string	"redundant_pic_cnt"
.LASF356:
	.string	"bitdepth_lambda_scale"
.LASF290:
	.string	"old_layer"
.LASF214:
	.string	"number"
.LASF31:
	.string	"SE_LUM_AC_INTER"
.LASF358:
	.string	"max_imgpel_value"
.LASF309:
	.string	"PicWidthInMbs"
.LASF351:
	.string	"pic_unit_size_on_disk"
.LASF498:
	.string	"max_c2"
.LASF361:
	.string	"num_cdc_coeff"
.LASF17:
	.string	"SE_HEADER"
.LASF167:
	.string	"Macroblock"
.LASF80:
	.string	"ref_no_contexts"
.LASF445:
	.string	"writeMVD_CABAC"
.LASF48:
	.string	"FRAME"
.LASF317:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF45:
	.string	"BITS_COEFF_UV_MB"
.LASF12:
	.string	"byte"
.LASF105:
	.string	"Next"
.LASF104:
	.string	"Data"
.LASF447:
	.string	"mv_local_err"
.LASF336:
	.string	"TopFieldFlag"
.LASF479:
	.string	"writeRunLevel_CABAC"
.LASF5:
	.string	"short int"
.LASF375:
	.string	"order_num"
.LASF400:
	.string	"moving_block"
.LASF62:
	.string	"Ecodestrm"
.LASF362:
	.string	"yuv_format"
.LASF462:
	.string	"chroma_dc"
.LASF276:
	.string	"bw_mb_mode"
.LASF414:
	.string	"enco_ctx"
.LASF14:
	.string	"TRUE"
.LASF66:
	.string	"EbufferS"
.LASF298:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF465:
	.string	"default_bit"
.LASF307:
	.string	"ThisPOC"
.LASF22:
	.string	"SE_MVD"
.LASF326:
	.string	"TotalMADBasicUnit"
.LASF157:
	.string	"prev_qp"
.LASF460:
	.string	"u_ac"
.LASF510:
	.string	"pos2ctx_last8x4"
.LASF509:
	.string	"pos2ctx_last8x8"
.LASF79:
	.string	"mv_res_contexts"
.LASF515:
	.string	"enc_picture"
.LASF156:
	.string	"actj"
.LASF507:
	.string	"pos2ctx_map4x8i"
.LASF301:
	.string	"delta_pic_order_cnt_bottom"
.LASF287:
	.string	"buf_cycle"
.LASF44:
	.string	"BITS_COEFF_Y_MB"
.LASF237:
	.string	"cod_counter"
.LASF20:
	.string	"SE_REFFRAME"
.LASF190:
	.string	"partArr"
.LASF458:
	.string	"y_ac"
.LASF168:
	.string	"byte_pos"
.LASF481:
	.string	"symbol"
.LASF85:
	.string	"ipr_contexts"
.LASF144:
	.string	"mbAddrA"
.LASF145:
	.string	"mbAddrB"
.LASF146:
	.string	"mbAddrC"
.LASF147:
	.string	"mbAddrD"
.LASF238:
	.string	"nz_coeff"
.LASF505:
	.string	"pos2ctx_map8x8i"
.LASF81:
	.string	"delta_qp_contexts"
.LASF324:
	.string	"NumberofBasicUnitHeaderBits"
.LASF122:
	.string	"SyntaxElement"
.LASF456:
	.string	"cbp_bit"
.LASF501:
	.string	"pos2ctx_map4x4"
.LASF455:
	.string	"curr_cbp_idx"
.LASF349:
	.string	"pre_frame_num"
.LASF315:
	.string	"pic_order_present_flag"
.LASF138:
	.string	"lf_disable"
.LASF483:
	.string	"ictx"
.LASF49:
	.string	"TOP_FIELD"
.LASF385:
	.string	"size_x"
.LASF386:
	.string	"size_y"
.LASF206:
	.string	"idr_flag"
.LASF25:
	.string	"SE_CHR_DC_INTRA"
.LASF2:
	.string	"short unsigned int"
.LASF338:
	.string	"FieldFrame"
.LASF408:
	.string	"frame_cropping_rect_right_offset"
.LASF161:
	.string	"predict_error"
.LASF218:
	.string	"current_slice_nr"
.LASF420:
	.string	"this_dataPart"
.LASF281:
	.string	"direct_spatial_mv_pred_flag"
.LASF353:
	.string	"bitdepth_chroma"
.LASF120:
	.string	"mapping"
.LASF397:
	.string	"ref_idx"
.LASF406:
	.string	"frame_cropping_flag"
.LASF396:
	.string	"imgUV"
.LASF18:
	.string	"SE_PTYPE"
.LASF398:
	.string	"ref_pic_id"
.LASF11:
	.string	"int64_t"
.LASF121:
	.string	"writing"
.LASF93:
	.string	"fld_map_contexts"
.LASF463:
	.string	"u_dc"
.LASF174:
	.string	"byte_buf_skip"
.LASF319:
	.string	"long_term_reference_flag"
.LASF87:
	.string	"cbp_contexts"
.LASF191:
	.string	"mot_ctx"
.LASF514:
	.string	"pos2ctx_last"
.LASF427:
	.string	"curr_mb_type"
.LASF154:
	.string	"NoMbPartLessThan8x8Flag"
.LASF228:
	.string	"subblock_x"
.LASF229:
	.string	"subblock_y"
.LASF486:
	.string	"exp_golomb_encode_eq_prob"
.LASF459:
	.string	"y_dc"
.LASF381:
	.string	"is_long_term"
.LASF466:
	.string	"upper_bit"
.LASF124:
	.string	"currSEnr"
.LASF467:
	.string	"left_bit"
.LASF51:
	.string	"PictureStructure"
.LASF311:
	.string	"FrameHeightInMbs"
.LASF258:
	.string	"currentSlice"
.LASF128:
	.string	"bitcounter"
.LASF65:
	.string	"ErangeS"
.LASF148:
	.string	"mbAvailA"
.LASF149:
	.string	"mbAvailB"
.LASF150:
	.string	"mbAvailC"
.LASF151:
	.string	"mbAvailD"
.LASF134:
	.string	"cbp_blk"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
