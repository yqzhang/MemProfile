	.file	"lencod.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 lencod.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	top_pic,8,8
	.comm	bottom_pic,8,8
	.comm	frame_pic,8,8
	.comm	frame_pic2,8,8
	.comm	frame_pic3,8,8
	.comm	imgY_org,8,8
	.comm	imgUV_org,8,8
	.comm	img4Y_tmp,8,8
	.comm	log2_max_frame_num_minus4,4,4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.comm	me_tot_time,4,4
	.comm	me_time,4,4
	.comm	active_pps,8,8
	.comm	active_sps,8,8
	.comm	mb_adaptive,4,4
	.comm	MBPairIsField,4,4
	.comm	wp_weight,8,8
	.comm	wp_offset,8,8
	.comm	wbp_weight,8,8
	.comm	luma_log_weight_denom,4,4
	.comm	chroma_log_weight_denom,4,4
	.comm	wp_luma_round,4,4
	.comm	wp_chroma_round,4,4
	.comm	imgY_org_top,8,8
	.comm	imgY_org_bot,8,8
	.comm	imgUV_org_top,8,8
	.comm	imgUV_org_bot,8,8
	.comm	imgY_org_frm,8,8
	.comm	imgUV_org_frm,8,8
	.comm	imgY_com,8,8
	.comm	imgUV_com,8,8
	.comm	direct_ref_idx,8,8
	.comm	direct_pdir,8,8
	.comm	pixel_map,8,8
	.comm	refresh_map,8,8
	.comm	intras,4,4
	.comm	Iframe_ctr,4,4
	.comm	Pframe_ctr,4,4
	.comm	Bframe_ctr,4,4
	.comm	frame_no,4,4
	.comm	nextP_tr_fld,4,4
	.comm	nextP_tr_frm,4,4
	.comm	tot_time,4,4
	.comm	errortext,300,32
	.comm	resTrans_R,1024,32
	.comm	resTrans_G,1024,32
	.comm	resTrans_B,1024,32
	.comm	rec_resR,1024,32
	.comm	rec_resG,1024,32
	.comm	rec_resB,1024,32
	.comm	mprRGB,3072,32
	.comm	dc_level,128,32
	.comm	dc_level_temp,128,32
	.comm	cbp_chroma_block,128,32
	.comm	cbp_chroma_block_temp,128,32
	.comm	b8_ipredmode8x8,64,32
	.comm	b8_intra_pred_modes8x8,64,32
	.comm	Bytes_After_Header,4,4
	.comm	QP,4,4
	.comm	QP2,4,4
	.comm	gop_structure,8,8
	.comm	rdopt,8,8
	.comm	rddata_top_frame_mb,3360,32
	.comm	rddata_bot_frame_mb,3360,32
	.comm	rddata_top_field_mb,3360,32
	.comm	rddata_bot_field_mb,3360,32
	.comm	p_stat,8,8
	.comm	p_log,8,8
	.comm	p_trace,8,8
	.comm	p_in,4,4
	.comm	p_dec,4,4
	.comm	glob_remapping_of_pic_nums_idc_l0,80,32
	.comm	glob_abs_diff_pic_num_minus1_l0,80,32
	.comm	glob_long_term_pic_idx_l0,80,32
	.comm	glob_remapping_of_pic_nums_idc_l1,80,32
	.comm	glob_abs_diff_pic_num_minus1_l1,80,32
	.comm	glob_long_term_pic_idx_l1,80,32
	.comm	rpc_bytes_to_go,4,4
	.comm	rpc_bits_to_go,4,4
	.comm	inputs,3592,32
	.globl	input
	.data
	.align 8
	.type	input, @object
	.size	input, 8
input:
	.quad	inputs
	.comm	images,72736,32
	.globl	img
	.align 8
	.type	img, @object
	.size	img, 8
img:
	.quad	images
	.comm	statistics,1496,32
	.globl	stats
	.align 8
	.type	stats, @object
	.size	stats, 8
stats:
	.quad	statistics
	.comm	snrs,72,32
	.globl	snr
	.align 8
	.type	snr, @object
	.size	snr, 8
snr:
	.quad	snrs
	.comm	decoders,56,32
	.globl	decs
	.align 8
	.type	decs, @object
	.size	decs, 8
decs:
	.quad	decoders
	.globl	initial_Bframes
	.bss
	.align 4
	.type	initial_Bframes, @object
	.size	initial_Bframes, 4
initial_Bframes:
	.zero	4
	.globl	In2ndIGOP
	.align 4
	.type	In2ndIGOP, @object
	.size	In2ndIGOP, 4
In2ndIGOP:
	.zero	4
	.globl	start_frame_no_in_this_IGOP
	.align 4
	.type	start_frame_no_in_this_IGOP, @object
	.size	start_frame_no_in_this_IGOP, 4
start_frame_no_in_this_IGOP:
	.zero	4
	.globl	start_tr_in_this_IGOP
	.align 4
	.type	start_tr_in_this_IGOP, @object
	.size	start_tr_in_this_IGOP, 4
start_tr_in_this_IGOP:
	.zero	4
	.globl	FirstFrameIn2ndIGOP
	.align 4
	.type	FirstFrameIn2ndIGOP, @object
	.size	FirstFrameIn2ndIGOP, 4
FirstFrameIn2ndIGOP:
	.zero	4
	.globl	cabac_encoding
	.align 4
	.type	cabac_encoding, @object
	.size	cabac_encoding, 4
cabac_encoding:
	.zero	4
	.comm	frame_statistic_start,4,4
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "lencod.c"
	.loc 1 213 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# argc, argc
	movq	%rsi, -64(%rbp)	# argv, argv
	.loc 1 216 0
	movl	$-1, p_in(%rip)	#, p_in
	movl	p_in(%rip), %eax	# p_in, p_in.0
	movl	%eax, p_dec(%rip)	# p_in.0, p_dec
	.loc 1 218 0
	movq	$0, p_trace(%rip)	#, p_trace
	movq	p_trace(%rip), %rax	# p_trace, p_trace.1
	movq	%rax, p_log(%rip)	# p_trace.1, p_log
	movq	p_log(%rip), %rax	# p_log, p_log.2
	movq	%rax, p_stat(%rip)	# p_log.2, p_stat
	.loc 1 220 0
	movl	$1, frame_statistic_start(%rip)	#, frame_statistic_start
	.loc 1 222 0
	movq	-64(%rbp), %rdx	# argv, tmp387
	movl	-52(%rbp), %eax	# argc, tmp388
	movq	%rdx, %rsi	# tmp387,
	movl	%eax, %edi	# tmp388,
	call	Configure	#
	.loc 1 224 0
	call	Init_QMatrix	#
	.loc 1 226 0
	movl	$0, %eax	#,
	call	Init_QOffsetMatrix	#
	.loc 1 228 0
	movl	$0, %eax	#,
	call	AllocNalPayloadBuffer	#
	.loc 1 230 0
	movl	$0, %eax	#,
	call	init_poc	#
	.loc 1 231 0
	movl	$0, %eax	#,
	call	GenerateParameterSets	#
	.loc 1 233 0
	movl	$0, %eax	#,
	call	init_img	#
	.loc 1 235 0
	movl	$0, %eax	#,
	call	malloc_picture	#
	movq	%rax, frame_pic(%rip)	# frame_pic.3, frame_pic
	.loc 1 237 0
	movq	input(%rip), %rax	# input, input.4
	movl	1296(%rax), %eax	# input.4_14->RDPictureDecision, D.8829
	testl	%eax, %eax	# D.8829
	je	.L2	#,
	.loc 1 239 0
	movl	$0, %eax	#,
	call	malloc_picture	#
	movq	%rax, frame_pic2(%rip)	# frame_pic2.5, frame_pic2
	.loc 1 240 0
	movl	$0, %eax	#,
	call	malloc_picture	#
	movq	%rax, frame_pic3(%rip)	# frame_pic3.6, frame_pic3
.L2:
	.loc 1 243 0
	movq	input(%rip), %rax	# input, input.7
	movl	2880(%rax), %eax	# input.7_18->PicInterlace, D.8829
	testl	%eax, %eax	# D.8829
	je	.L3	#,
	.loc 1 245 0
	movl	$0, %eax	#,
	call	malloc_picture	#
	movq	%rax, top_pic(%rip)	# top_pic.8, top_pic
	.loc 1 246 0
	movl	$0, %eax	#,
	call	malloc_picture	#
	movq	%rax, bottom_pic(%rip)	# bottom_pic.9, bottom_pic
.L3:
	.loc 1 248 0
	movl	$0, %eax	#,
	call	init_rdopt	#
	.loc 1 250 0
	movq	input(%rip), %rax	# input, input.10
	movl	1320(%rax), %eax	# input.10_22->PyramidCoding, D.8829
	testl	%eax, %eax	# D.8829
	je	.L4	#,
	.loc 1 252 0
	movl	$0, %eax	#,
	call	init_gop_structure	#
	.loc 1 253 0
	movq	input(%rip), %rax	# input, input.11
	movl	1320(%rax), %eax	# input.11_24->PyramidCoding, D.8829
	cmpl	$3, %eax	#, D.8829
	jne	.L5	#,
	.loc 1 255 0
	movl	$0, %eax	#,
	call	interpret_gop_structure	#
	jmp	.L4	#
.L5:
	.loc 1 259 0
	movl	$0, %eax	#,
	call	create_pyramid	#
.L4:
	.loc 1 263 0
	movq	input(%rip), %rax	# input, input.12
	movq	%rax, %rdi	# input.12,
	movl	$0, %eax	#,
	call	init_dpb	#
	.loc 1 264 0
	movl	$0, %eax	#,
	call	init_out_buffer	#
	.loc 1 266 0
	movq	$0, enc_bottom_picture(%rip)	#, enc_bottom_picture
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.13
	movq	%rax, enc_top_picture(%rip)	# enc_bottom_picture.13, enc_top_picture
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.14
	movq	%rax, enc_frame_picture(%rip)	# enc_top_picture.14, enc_frame_picture
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.15
	movq	%rax, enc_picture(%rip)	# enc_frame_picture.15, enc_picture
	.loc 1 268 0
	movl	$0, %eax	#,
	call	init_global_buffers	#
	.loc 1 270 0
	movl	$0, %eax	#,
	call	create_context_memory	#
	.loc 1 272 0
	movl	$0, %eax	#,
	call	Init_Motion_Search_Module	#
	.loc 1 274 0
	movl	$0, %eax	#,
	call	information_init	#
	.loc 1 277 0
	movq	input(%rip), %rax	# input, input.16
	movl	3236(%rax), %eax	# input.16_30->RCEnable, D.8829
	testl	%eax, %eax	# D.8829
	je	.L6	#,
	.loc 1 278 0
	movl	$0, %eax	#,
	call	rc_init_seq	#
.L6:
	.loc 1 280 0
	movq	input(%rip), %rax	# input, input.17
	movl	3292(%rax), %eax	# input.17_32->FMEnable, D.8829
	testl	%eax, %eax	# D.8829
	je	.L7	#,
	.loc 1 281 0
	movl	$0, %eax	#,
	call	DefineThreshold	#
.L7:
	.loc 1 284 0
	movl	$0, Iframe_ctr(%rip)	#, Iframe_ctr
	.loc 1 285 0
	movl	$0, Pframe_ctr(%rip)	#, Pframe_ctr
	.loc 1 288 0
	movl	$0, Bframe_ctr(%rip)	#, Bframe_ctr
	.loc 1 289 0
	movl	$0, tot_time(%rip)	#, tot_time
	.loc 1 292 0
	movq	input(%rip), %rax	# input, input.18
	movl	2440(%rax), %eax	# input.18_34->last_frame, D.8829
	testl	%eax, %eax	# D.8829
	jle	.L8	#,
	.loc 1 293 0
	movq	input(%rip), %rcx	# input, input.19
	movq	input(%rip), %rax	# input, input.20
	movl	2440(%rax), %edx	# input.20_37->last_frame, D.8829
	movq	input(%rip), %rax	# input, input.21
	movl	20(%rax), %eax	# input.21_39->jumpd, D.8829
	addl	%eax, %edx	# D.8829, D.8829
	movq	input(%rip), %rax	# input, input.22
	movl	20(%rax), %eax	# input.22_42->jumpd, D.8829
	leal	1(%rax), %esi	#, D.8829
	movl	%edx, %eax	# D.8829, tmp389
	cltd
	idivl	%esi	# D.8829
	addl	$1, %eax	#, D.8829
	movl	%eax, 8(%rcx)	# D.8829, input.19_36->no_frames
.L8:
	.loc 1 294 0
	movq	input(%rip), %rax	# input, input.23
	movl	1236(%rax), %eax	# input.23_47->successive_Bframe, initial_Bframes.24
	movl	%eax, initial_Bframes(%rip)	# initial_Bframes.24, initial_Bframes
	.loc 1 297 0
	movl	$0, %eax	#,
	call	PatchInputNoFrames	#
	.loc 1 300 0
	movq	stats(%rip), %rax	# stats, stats.25
	movl	$0, 1488(%rax)	#, stats.25_49->bit_ctr_parametersets
	.loc 1 301 0
	movq	stats(%rip), %rbx	# stats, stats.26
	movl	$0, %eax	#,
	call	start_sequence	#
	movl	%eax, 24(%rbx)	# D.8829, stats.26_50->bit_slice
	.loc 1 302 0
	movq	stats(%rip), %rax	# stats, stats.27
	movq	stats(%rip), %rdx	# stats, stats.28
	movl	1488(%rdx), %ecx	# stats.28_53->bit_ctr_parametersets, D.8829
	movq	stats(%rip), %rdx	# stats, stats.29
	movl	1492(%rdx), %edx	# stats.29_55->bit_ctr_parametersets_n, D.8829
	addl	%ecx, %edx	# D.8829, D.8829
	movl	%edx, 1488(%rax)	# D.8829, stats.27_52->bit_ctr_parametersets
	.loc 1 303 0
	movl	$0, start_frame_no_in_this_IGOP(%rip)	#, start_frame_no_in_this_IGOP
	.loc 1 305 0
	movq	img(%rip), %rax	# img, img.30
	movl	$0, (%rax)	#, img.30_58->number
	jmp	.L9	#
.L35:
	.loc 1 307 0
	movq	img(%rip), %rax	# img, img.31
	movl	$1, 72496(%rax)	#, img.31_63->nal_reference_idc
	.loc 1 311 0
	movq	img(%rip), %rcx	# img, img.32
	movq	input(%rip), %rax	# input, input.34
	movl	1224(%rax), %eax	# input.34_65->intra_period, D.8829
	testl	%eax, %eax	# D.8829
	je	.L10	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.35
	movl	1228(%rax), %eax	# input.35_67->idr_enable, D.8829
	testl	%eax, %eax	# D.8829
	je	.L10	#,
	movq	img(%rip), %rax	# img, img.36
	movl	(%rax), %edx	# img.36_69->number, D.8829
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.37
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.37, D.8829
	movq	input(%rip), %rax	# input, input.38
	movl	1224(%rax), %esi	# input.38_73->intra_period, D.8829
	movl	%edx, %eax	# D.8829, tmp392
	cltd
	idivl	%esi	# D.8829
	movl	%edx, %eax	# tmp391, iftmp.33
	jmp	.L11	#
.L10:
	.loc 1 311 0 discriminator 2
	movq	img(%rip), %rax	# img, img.39
	movl	(%rax), %edx	# img.39_76->number, D.8829
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.40
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.40, iftmp.33
	movl	%edx, %eax	# iftmp.33, iftmp.33
.L11:
	.loc 1 311 0 discriminator 3
	movq	input(%rip), %rdx	# input, input.41
	movl	20(%rdx), %edx	# input.41_80->jumpd, D.8829
	addl	$1, %edx	#, D.8829
	addl	%edx, %edx	# D.8829
	imull	%edx, %eax	# D.8829, D.8829
	movl	%eax, 72448(%rcx)	# D.8829, img.32_64->toppoc
	.loc 1 313 0 is_stmt 1 discriminator 3
	movq	input(%rip), %rax	# input, input.42
	movl	2880(%rax), %eax	# input.42_85->PicInterlace, D.8829
	testl	%eax, %eax	# D.8829
	jne	.L12	#,
	.loc 1 313 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.43
	movl	2884(%rax), %eax	# input.43_87->MbInterlace, D.8829
	testl	%eax, %eax	# D.8829
	jne	.L12	#,
	.loc 1 314 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.44
	movq	img(%rip), %rdx	# img, img.45
	movl	72448(%rdx), %edx	# img.45_90->toppoc, D.8829
	movl	%edx, 72452(%rax)	# D.8829, img.44_89->bottompoc
	jmp	.L13	#
.L12:
	.loc 1 316 0
	movq	img(%rip), %rax	# img, img.46
	movq	img(%rip), %rdx	# img, img.47
	movl	72448(%rdx), %edx	# img.47_93->toppoc, D.8829
	addl	$1, %edx	#, D.8829
	movl	%edx, 72452(%rax)	# D.8829, img.46_92->bottompoc
.L13:
	.loc 1 318 0
	movq	img(%rip), %rcx	# img, img.48
	movq	img(%rip), %rax	# img, img.49
	movl	72452(%rax), %edx	# img.49_97->bottompoc, D.8829
	movq	img(%rip), %rax	# img, img.50
	movl	72448(%rax), %eax	# img.50_99->toppoc, D.8829
	cmpl	%eax, %edx	# D.8829, D.8829
	cmovle	%edx, %eax	# D.8829,, D.8829
	movl	%eax, 72456(%rcx)	# D.8829, img.48_96->framepoc
	.loc 1 322 0
	movq	input(%rip), %rax	# input, input.51
	movl	1316(%rax), %eax	# input.51_102->BRefPictures, D.8829
	testl	%eax, %eax	# D.8829
	jne	.L14	#,
	.loc 1 322 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.52
	movl	1320(%rax), %eax	# input.52_104->PyramidCoding, D.8829
	testl	%eax, %eax	# D.8829
	je	.L15	#,
.L14:
	.loc 1 322 0 discriminator 2
	movq	input(%rip), %rax	# input, input.53
	movl	1236(%rax), %eax	# input.53_106->successive_Bframe, D.8829
	testl	%eax, %eax	# D.8829
	je	.L15	#,
	.loc 1 322 0 discriminator 1
	movq	img(%rip), %rax	# img, img.54
	movl	(%rax), %eax	# img.54_108->number, D.8829
	cmpl	$1, %eax	#, D.8829
	jg	.L16	#,
.L15:
	.loc 1 323 0 is_stmt 1
	movq	img(%rip), %rsi	# img, img.55
	movq	input(%rip), %rax	# input, input.57
	movl	1224(%rax), %eax	# input.57_134->intra_period, D.8829
	testl	%eax, %eax	# D.8829
	je	.L17	#,
	.loc 1 323 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.58
	movl	1228(%rax), %eax	# input.58_136->idr_enable, D.8829
	testl	%eax, %eax	# D.8829
	je	.L17	#,
	movq	img(%rip), %rax	# img, img.59
	movl	(%rax), %edx	# img.59_138->number, D.8829
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.60
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.60, D.8829
	movq	input(%rip), %rax	# input, input.61
	movl	1224(%rax), %ecx	# input.61_142->intra_period, D.8829
	movl	%edx, %eax	# D.8829, tmp394
	cltd
	idivl	%ecx	# D.8829
	movl	%edx, %eax	# tmp393, iftmp.56
	jmp	.L18	#
.L17:
	.loc 1 323 0 discriminator 2
	movq	img(%rip), %rax	# img, img.62
	movl	(%rax), %edx	# img.62_145->number, D.8829
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.63
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.63, iftmp.56
	movl	%edx, %eax	# iftmp.56, iftmp.56
.L18:
	.loc 1 323 0 discriminator 3
	movl	log2_max_frame_num_minus4(%rip), %edx	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.64
	addl	$4, %edx	#, D.8830
	movl	$1, %edi	#, tmp395
	movl	%edx, %ecx	# D.8829, tmp443
	sall	%cl, %edi	# tmp443, D.8829
	movl	%edi, %ecx	# D.8829, D.8829
	cltd
	idivl	%ecx	# D.8829
	movl	%edx, %eax	# tmp396, D.8829
	movl	%eax, 72464(%rsi)	# D.8830, img.55_133->frame_num
	jmp	.L19	#
.L16:
	.loc 1 326 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.65
	movl	72464(%rax), %edx	# img.65_110->frame_num, D.8830
	addl	$1, %edx	#, D.8830
	movl	%edx, 72464(%rax)	# D.8830, img.65_110->frame_num
	.loc 1 327 0
	movq	input(%rip), %rax	# input, input.66
	movl	1224(%rax), %eax	# input.66_113->intra_period, D.8829
	testl	%eax, %eax	# D.8829
	je	.L20	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.67
	movl	1228(%rax), %eax	# input.67_115->idr_enable, D.8829
	testl	%eax, %eax	# D.8829
	je	.L20	#,
	.loc 1 329 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.68
	movl	(%rax), %eax	# img.68_117->number, D.8829
	movq	input(%rip), %rdx	# input, input.69
	movl	1224(%rdx), %ecx	# input.69_119->intra_period, D.8829
	cltd
	idivl	%ecx	# D.8829
	movl	%edx, %eax	# tmp398, D.8829
	testl	%eax, %eax	# D.8829
	jne	.L20	#,
	.loc 1 331 0
	movq	img(%rip), %rax	# img, img.70
	movl	$0, 72464(%rax)	#, img.70_122->frame_num
.L20:
	.loc 1 334 0
	movq	img(%rip), %rax	# img, img.71
	movq	img(%rip), %rdx	# img, img.72
	movl	72464(%rdx), %esi	# img.72_124->frame_num, D.8830
	movl	log2_max_frame_num_minus4(%rip), %edx	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.73
	addl	$4, %edx	#, D.8830
	movl	$1, %edi	#, tmp400
	movl	%edx, %ecx	# D.8829, tmp445
	sall	%cl, %edi	# tmp445, D.8829
	movl	%edi, %edx	# D.8829, D.8829
	subl	$1, %edx	#, D.8829
	andl	%esi, %edx	# D.8830, D.8830
	movl	%edx, 72464(%rax)	# D.8830, img.71_123->frame_num
.L19:
	.loc 1 338 0
	movq	img(%rip), %rax	# img, img.74
	movl	$0, 72436(%rax)	#, img.74_155->delta_pic_order_cnt
	.loc 1 340 0
	movq	input(%rip), %rax	# input, input.75
	movl	1316(%rax), %eax	# input.75_156->BRefPictures, D.8829
	testl	%eax, %eax	# D.8829
	je	.L21	#,
	.loc 1 342 0
	movq	img(%rip), %rax	# img, img.76
	movl	(%rax), %eax	# img.76_158->number, D.8829
	testl	%eax, %eax	# D.8829
	je	.L21	#,
	.loc 1 344 0
	movq	img(%rip), %rax	# img, img.77
	movq	input(%rip), %rdx	# input, input.78
	movl	1236(%rdx), %edx	# input.78_161->successive_Bframe, D.8829
	addl	%edx, %edx	# D.8829
	movl	%edx, 72436(%rax)	# D.8829, img.77_160->delta_pic_order_cnt
.L21:
	.loc 1 348 0
	movl	$0, %eax	#,
	call	SetImgType	#
	.loc 1 351 0
	movq	input(%rip), %rax	# input, input.79
	movl	1236(%rax), %eax	# input.79_164->successive_Bframe, D.8829
	testl	%eax, %eax	# D.8829
	je	.L22	#,
	.loc 1 351 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.80
	movl	2440(%rax), %eax	# input.80_166->last_frame, D.8829
	testl	%eax, %eax	# D.8829
	je	.L22	#,
	movq	img(%rip), %rax	# img, img.81
	movl	(%rax), %edx	# img.81_168->number, D.8829
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.82
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.82, D.8829
	movl	%edx, %eax	# D.8829, D.8829
	leal	1(%rax), %edx	#, D.8829
	movq	input(%rip), %rax	# input, input.83
	movl	8(%rax), %eax	# input.83_173->no_frames, D.8829
	cmpl	%eax, %edx	# D.8829, D.8829
	jne	.L22	#,
.LBB2:
	.loc 1 353 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.84
	movl	20(%rax), %eax	# input.84_175->jumpd, D.8829
	addl	$1, %eax	#, D.8829
	cvtsi2ss	%eax, %xmm0	# D.8829, D.8831
	unpcklps	%xmm0, %xmm0	# D.8831, D.8831
	cvtps2pd	%xmm0, %xmm0	# D.8831, D.8832
	movq	input(%rip), %rax	# input, input.85
	movl	1236(%rax), %eax	# input.85_180->successive_Bframe, D.8829
	cvtsi2sd	%eax, %xmm1	# D.8829, D.8832
	movsd	.LC0(%rip), %xmm2	#, tmp401
	addsd	%xmm2, %xmm1	# tmp401, D.8832
	divsd	%xmm1, %xmm0	# D.8832, D.8832
	movsd	.LC1(%rip), %xmm1	#, tmp402
	addsd	%xmm1, %xmm0	# tmp402, D.8832
	cvttsd2si	%xmm0, %eax	# D.8832, tmp403
	movl	%eax, -28(%rbp)	# tmp403, bi
	.loc 1 355 0
	movq	input(%rip), %rcx	# input, input.86
	movq	input(%rip), %rax	# input, input.87
	movl	2440(%rax), %edx	# input.87_188->last_frame, D.8829
	movq	img(%rip), %rax	# img, img.88
	movl	(%rax), %eax	# img.88_190->number, D.8829
	leal	-1(%rax), %esi	#, D.8829
	movq	input(%rip), %rax	# input, input.89
	movl	20(%rax), %eax	# input.89_193->jumpd, D.8829
	notl	%eax	# D.8829
	imull	%esi, %eax	# D.8829, D.8829
	addl	%edx, %eax	# D.8829, D.8829
	cltd
	idivl	-28(%rbp)	# bi
	subl	$1, %eax	#, D.8829
	movl	%eax, 1236(%rcx)	# D.8829, input.86_187->successive_Bframe
	.loc 1 358 0
	movq	img(%rip), %rax	# img, img.90
	movq	input(%rip), %rdx	# input, input.91
	movl	1236(%rdx), %ecx	# input.91_201->successive_Bframe, D.8829
	movl	initial_Bframes(%rip), %edx	# initial_Bframes, initial_Bframes.92
	subl	%edx, %ecx	# initial_Bframes.92, D.8829
	movl	%ecx, %edx	# D.8829, D.8829
	addl	%edx, %edx	# D.8829
	movl	%edx, 72436(%rax)	# D.8829, img.90_200->delta_pic_order_cnt
	.loc 1 359 0
	movq	img(%rip), %rax	# img, img.93
	movq	img(%rip), %rdx	# img, img.94
	movl	72448(%rdx), %ecx	# img.94_207->toppoc, D.8829
	movq	img(%rip), %rdx	# img, img.95
	movl	72436(%rdx), %edx	# img.95_209->delta_pic_order_cnt, D.8829
	addl	%ecx, %edx	# D.8829, D.8829
	movl	%edx, 72448(%rax)	# D.8829, img.93_206->toppoc
	.loc 1 360 0
	movq	img(%rip), %rax	# img, img.96
	movq	img(%rip), %rdx	# img, img.97
	movl	72452(%rdx), %ecx	# img.97_213->bottompoc, D.8829
	movq	img(%rip), %rdx	# img, img.98
	movl	72436(%rdx), %edx	# img.98_215->delta_pic_order_cnt, D.8829
	addl	%ecx, %edx	# D.8829, D.8829
	movl	%edx, 72452(%rax)	# D.8829, img.96_212->bottompoc
.L22:
.LBE2:
	.loc 1 365 0
	movq	img(%rip), %rax	# img, img.99
	movl	24(%rax), %eax	# img.99_218->type, D.8829
	cmpl	$2, %eax	#, D.8829
	jne	.L23	#,
	.loc 1 367 0
	movq	input(%rip), %rax	# input, input.100
	movl	3236(%rax), %eax	# input.100_220->RCEnable, D.8829
	testl	%eax, %eax	# D.8829
	je	.L23	#,
	.loc 1 369 0
	movq	input(%rip), %rax	# input, input.101
	movl	1224(%rax), %eax	# input.101_222->intra_period, D.8829
	testl	%eax, %eax	# D.8829
	jne	.L24	#,
	.loc 1 371 0
	movq	input(%rip), %rax	# input, input.102
	movl	8(%rax), %edx	# input.102_224->no_frames, D.8829
	movq	input(%rip), %rax	# input, input.103
	movl	8(%rax), %eax	# input.103_226->no_frames, D.8829
	leal	-1(%rax), %ecx	#, D.8829
	movq	input(%rip), %rax	# input, input.104
	movl	1236(%rax), %eax	# input.104_229->successive_Bframe, D.8829
	imull	%ecx, %eax	# D.8829, D.8829
	addl	%edx, %eax	# D.8829, tmp406
	movl	%eax, -40(%rbp)	# tmp406, n
	.loc 1 374 0
	movq	input(%rip), %rax	# input, input.105
	movl	8(%rax), %eax	# input.105_233->no_frames, D.8829
	subl	$1, %eax	#, tmp407
	movl	%eax, -36(%rbp)	# tmp407, np
	.loc 1 377 0
	movq	input(%rip), %rax	# input, input.106
	movl	8(%rax), %eax	# input.106_236->no_frames, D.8829
	leal	-1(%rax), %edx	#, D.8829
	movq	input(%rip), %rax	# input, input.107
	movl	1236(%rax), %eax	# input.107_239->successive_Bframe, D.8829
	imull	%edx, %eax	# D.8829, tmp408
	movl	%eax, -32(%rbp)	# tmp408, nb
	jmp	.L25	#
.L24:
	.loc 1 380 0
	movq	input(%rip), %rax	# input, input.108
	movl	1224(%rax), %edx	# input.108_242->intra_period, D.8829
	movq	input(%rip), %rax	# input, input.109
	movl	1236(%rax), %eax	# input.109_244->successive_Bframe, D.8829
	addl	$1, %eax	#, D.8829
	imull	%edx, %eax	# D.8829, tmp409
	movl	%eax, -24(%rbp)	# tmp409, N
	.loc 1 381 0
	movq	input(%rip), %rax	# input, input.110
	movl	1236(%rax), %eax	# input.110_248->successive_Bframe, D.8829
	addl	$1, %eax	#, tmp410
	movl	%eax, -20(%rbp)	# tmp410, M
	.loc 1 382 0
	movq	img(%rip), %rax	# img, img.112
	movl	(%rax), %eax	# img.112_251->number, D.8829
	testl	%eax, %eax	# D.8829
	jne	.L26	#,
	.loc 1 382 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, tmp411
	subl	-20(%rbp), %eax	# M, D.8829
	movl	%eax, %edx	# D.8829, D.8829
	movl	-24(%rbp), %eax	# N, tmp412
	addl	%edx, %eax	# D.8829, iftmp.111
	jmp	.L27	#
.L26:
	.loc 1 382 0 discriminator 2
	movl	-24(%rbp), %eax	# N, iftmp.111
.L27:
	.loc 1 382 0 discriminator 3
	movl	%eax, -40(%rbp)	# iftmp.111, n
	.loc 1 385 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.113
	movl	(%rax), %eax	# img.113_257->number, D.8829
	movq	input(%rip), %rdx	# input, input.114
	movl	1224(%rdx), %ebx	# input.114_259->intra_period, D.8829
	cltd
	idivl	%ebx	# D.8829
	movl	%eax, %ecx	# tmp413, D.8829
	movq	input(%rip), %rax	# input, input.115
	movl	8(%rax), %eax	# input.115_262->no_frames, D.8829
	movq	input(%rip), %rdx	# input, input.116
	movl	1224(%rdx), %ebx	# input.116_264->intra_period, D.8829
	cltd
	idivl	%ebx	# D.8829
	cmpl	%eax, %ecx	# D.8829, D.8829
	jl	.L28	#,
	.loc 1 387 0
	movq	img(%rip), %rax	# img, img.117
	movl	(%rax), %eax	# img.117_267->number, D.8829
	testl	%eax, %eax	# D.8829
	je	.L29	#,
	.loc 1 388 0
	movq	input(%rip), %rax	# input, input.118
	movl	8(%rax), %edx	# input.118_269->no_frames, D.8829
	movq	img(%rip), %rax	# img, img.119
	movl	(%rax), %eax	# img.119_271->number, D.8829
	movl	%edx, %ecx	# D.8829, D.8829
	subl	%eax, %ecx	# D.8829, D.8829
	movq	input(%rip), %rax	# input, input.120
	movl	8(%rax), %edx	# input.120_274->no_frames, D.8829
	movq	img(%rip), %rax	# img, img.121
	movl	(%rax), %eax	# img.121_276->number, D.8829
	subl	%eax, %edx	# D.8829, D.8829
	movl	%edx, %eax	# D.8829, D.8829
	leal	-1(%rax), %edx	#, D.8829
	movq	input(%rip), %rax	# input, input.122
	movl	1236(%rax), %eax	# input.122_280->successive_Bframe, D.8829
	imull	%edx, %eax	# D.8829, D.8829
	leal	(%rcx,%rax), %edx	#, D.8829
	movq	input(%rip), %rax	# input, input.123
	movl	1236(%rax), %eax	# input.123_284->successive_Bframe, D.8829
	addl	%edx, %eax	# D.8829, tmp417
	movl	%eax, -40(%rbp)	# tmp417, n
	jmp	.L28	#
.L29:
	.loc 1 390 0
	movq	input(%rip), %rax	# input, input.124
	movl	8(%rax), %edx	# input.124_287->no_frames, D.8829
	movq	input(%rip), %rax	# input, input.125
	movl	8(%rax), %eax	# input.125_289->no_frames, D.8829
	leal	-1(%rax), %ecx	#, D.8829
	movq	input(%rip), %rax	# input, input.126
	movl	1236(%rax), %eax	# input.126_292->successive_Bframe, D.8829
	imull	%ecx, %eax	# D.8829, D.8829
	addl	%edx, %eax	# D.8829, tmp418
	movl	%eax, -40(%rbp)	# tmp418, n
.L28:
	.loc 1 394 0
	movq	img(%rip), %rax	# img, img.127
	movl	(%rax), %eax	# img.127_296->number, D.8829
	testl	%eax, %eax	# D.8829
	jne	.L30	#,
	.loc 1 395 0
	movl	-20(%rbp), %eax	# M, tmp419
	subl	$1, %eax	#, D.8829
	leal	(%rax,%rax), %edx	#, D.8829
	movl	-40(%rbp), %eax	# n, tmp420
	addl	%edx, %eax	# D.8829, D.8829
	cltd
	idivl	-20(%rbp)	# M
	subl	$1, %eax	#, tmp423
	movl	%eax, -36(%rbp)	# tmp423, np
	jmp	.L31	#
.L30:
	.loc 1 397 0
	movl	-20(%rbp), %eax	# M, tmp424
	leal	-1(%rax), %edx	#, D.8829
	movl	-40(%rbp), %eax	# n, tmp425
	addl	%edx, %eax	# D.8829, D.8829
	cltd
	idivl	-20(%rbp)	# M
	subl	$1, %eax	#, tmp428
	movl	%eax, -36(%rbp)	# tmp428, np
.L31:
	.loc 1 400 0
	movl	-36(%rbp), %eax	# np, tmp429
	movl	-40(%rbp), %edx	# n, tmp430
	subl	%eax, %edx	# tmp429, D.8829
	movl	%edx, %eax	# D.8829, D.8829
	subl	$1, %eax	#, tmp431
	movl	%eax, -32(%rbp)	# tmp431, nb
.L25:
	.loc 1 402 0
	movl	-32(%rbp), %edx	# nb, tmp432
	movl	-36(%rbp), %eax	# np, tmp433
	movl	%edx, %esi	# tmp432,
	movl	%eax, %edi	# tmp433,
	call	rc_init_GOP	#
.L23:
	.loc 1 408 0
	movq	img(%rip), %rax	# img, img.128
	movl	(%rax), %edx	# img.128_309->number, D.8829
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.129
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.129, D.8829
	movq	input(%rip), %rax	# input, input.130
	movl	2912(%rax), %eax	# input.130_313->NumFramesInELSubSeq, D.8829
	leal	1(%rax), %ecx	#, D.8829
	movl	%edx, %eax	# D.8829, tmp435
	cltd
	idivl	%ecx	# D.8829
	movl	%edx, %eax	# tmp434, D.8829
	testl	%eax, %eax	# D.8829
	jne	.L32	#,
	.loc 1 409 0
	movq	img(%rip), %rax	# img, img.131
	movl	$0, 72384(%rax)	#, img.131_317->layer
	jmp	.L33	#
.L32:
	.loc 1 411 0
	movq	img(%rip), %rax	# img, img.132
	movl	$1, 72384(%rax)	#, img.132_318->layer
.L33:
	.loc 1 413 0
	movl	$0, %eax	#,
	call	encode_one_frame	#
	.loc 1 415 0
	movq	input(%rip), %rax	# input, input.133
	movl	3228(%rax), %eax	# input.133_319->ReportFrameStats, D.8829
	testl	%eax, %eax	# D.8829
	je	.L34	#,
	.loc 1 416 0
	movl	$0, %eax	#,
	call	report_frame_statistic	#
.L34:
	.loc 1 418 0
	movq	img(%rip), %rax	# img, img.134
	movq	img(%rip), %rdx	# img, img.135
	movl	8(%rdx), %edx	# img.135_322->nb_references, D.8829
	addl	$1, %edx	#, D.8829
	movl	%edx, 8(%rax)	# D.8829, img.134_321->nb_references
	.loc 1 419 0
	movq	img(%rip), %rcx	# img, img.136
	movq	img(%rip), %rax	# img, img.137
	movl	72376(%rax), %edx	# img.137_326->buf_cycle, D.8829
	movq	img(%rip), %rax	# img, img.138
	movl	8(%rax), %eax	# img.138_328->nb_references, D.8829
	cmpl	%eax, %edx	# D.8829, D.8829
	cmovle	%edx, %eax	# D.8829,, D.8829
	movl	%eax, 8(%rcx)	# D.8829, img.136_325->nb_references
	.loc 1 421 0
	movl	$0, %eax	#,
	call	encode_enhancement_layer	#
	.loc 1 423 0
	movl	$0, %eax	#,
	call	process_2nd_IGOP	#
	.loc 1 305 0
	movq	img(%rip), %rax	# img, img.139
	movl	(%rax), %edx	# img.139_331->number, D.8829
	addl	$1, %edx	#, D.8829
	movl	%edx, (%rax)	# D.8829, img.139_331->number
.L9:
	.loc 1 305 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.140
	movl	(%rax), %edx	# img.140_59->number, D.8829
	movq	input(%rip), %rax	# input, input.141
	movl	8(%rax), %eax	# input.141_61->no_frames, D.8829
	cmpl	%eax, %edx	# D.8829, D.8829
	jl	.L35	#,
	.loc 1 426 0 is_stmt 1
	movl	$0, %eax	#,
	call	terminate_sequence	#
	.loc 1 428 0
	movl	$0, %eax	#,
	call	flush_dpb	#
	.loc 1 430 0
	movl	p_in(%rip), %eax	# p_in, p_in.142
	movl	%eax, %edi	# p_in.142,
	call	close	#
	.loc 1 431 0
	movl	p_dec(%rip), %eax	# p_dec, p_dec.143
	cmpl	$-1, %eax	#, p_dec.143
	je	.L36	#,
	.loc 1 432 0
	movl	p_dec(%rip), %eax	# p_dec, p_dec.144
	movl	%eax, %edi	# p_dec.144,
	call	close	#
.L36:
	.loc 1 433 0
	movq	p_trace(%rip), %rax	# p_trace, p_trace.145
	testq	%rax, %rax	# p_trace.145
	je	.L37	#,
	.loc 1 434 0
	movq	p_trace(%rip), %rax	# p_trace, p_trace.146
	movq	%rax, %rdi	# p_trace.146,
	call	fclose	#
.L37:
	.loc 1 436 0
	movl	$0, %eax	#,
	call	Clear_Motion_Search_Module	#
	.loc 1 438 0
	movl	$0, %eax	#,
	call	RandomIntraUninit	#
	.loc 1 439 0
	movl	$0, %eax	#,
	call	FmoUninit	#
	.loc 1 441 0
	movq	input(%rip), %rax	# input, input.147
	movl	1320(%rax), %eax	# input.147_339->PyramidCoding, D.8829
	testl	%eax, %eax	# D.8829
	je	.L38	#,
	.loc 1 442 0
	movl	$0, %eax	#,
	call	clear_gop_structure	#
.L38:
	.loc 1 445 0
	movl	$0, %eax	#,
	call	clear_rdopt	#
	.loc 1 448 0
	movl	$0, %eax	#,
	call	calc_buffer	#
	.loc 1 452 0
	movl	$0, %eax	#,
	call	report	#
	.loc 1 454 0
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.148
	movq	%rax, %rdi	# frame_pic.148,
	call	free_picture	#
	.loc 1 456 0
	movq	input(%rip), %rax	# input, input.149
	movl	1296(%rax), %eax	# input.149_342->RDPictureDecision, D.8829
	testl	%eax, %eax	# D.8829
	je	.L39	#,
	.loc 1 458 0
	movq	frame_pic2(%rip), %rax	# frame_pic2, frame_pic2.150
	movq	%rax, %rdi	# frame_pic2.150,
	call	free_picture	#
	.loc 1 459 0
	movq	frame_pic3(%rip), %rax	# frame_pic3, frame_pic3.151
	movq	%rax, %rdi	# frame_pic3.151,
	call	free_picture	#
.L39:
	.loc 1 462 0
	movq	top_pic(%rip), %rax	# top_pic, top_pic.152
	testq	%rax, %rax	# top_pic.152
	je	.L40	#,
	.loc 1 463 0
	movq	top_pic(%rip), %rax	# top_pic, top_pic.153
	movq	%rax, %rdi	# top_pic.153,
	call	free_picture	#
.L40:
	.loc 1 464 0
	movq	bottom_pic(%rip), %rax	# bottom_pic, bottom_pic.154
	testq	%rax, %rax	# bottom_pic.154
	je	.L41	#,
	.loc 1 465 0
	movq	bottom_pic(%rip), %rax	# bottom_pic, bottom_pic.155
	movq	%rax, %rdi	# bottom_pic.155,
	call	free_picture	#
.L41:
	.loc 1 467 0
	movl	$0, %eax	#,
	call	free_dpb	#
	.loc 1 468 0
	movq	Co_located(%rip), %rax	# Co_located, Co_located.156
	movq	%rax, %rdi	# Co_located.156,
	call	free_colocated	#
	.loc 1 469 0
	movl	$0, %eax	#,
	call	uninit_out_buffer	#
	.loc 1 471 0
	movl	$0, %eax	#,
	call	free_global_buffers	#
	.loc 1 474 0
	movl	$0, %eax	#,
	call	free_img	#
	.loc 1 475 0
	movl	$0, %eax	#,
	call	free_context_memory	#
	.loc 1 476 0
	movl	$0, %eax	#,
	call	FreeNalPayloadBuffer	#
	.loc 1 477 0
	movl	$0, %eax	#,
	call	FreeParameterSets	#
	.loc 1 478 0
	movl	$0, %eax	#, D.8829
	.loc 1 479 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.globl	report_stats_on_error
	.type	report_stats_on_error, @function
report_stats_on_error:
.LFB3:
	.loc 1 488 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 489 0
	movq	input(%rip), %rax	# input, input.157
	movq	img(%rip), %rdx	# img, img.158
	movl	(%rdx), %edx	# img.158_2->number, D.8833
	subl	$1, %edx	#, D.8833
	movl	%edx, 8(%rax)	# D.8833, input.157_1->no_frames
	.loc 1 490 0
	movl	$0, %eax	#,
	call	terminate_sequence	#
	.loc 1 492 0
	movl	$0, %eax	#,
	call	flush_dpb	#
	.loc 1 494 0
	movl	p_in(%rip), %eax	# p_in, p_in.159
	movl	%eax, %edi	# p_in.159,
	call	close	#
	.loc 1 495 0
	movl	p_dec(%rip), %eax	# p_dec, p_dec.160
	cmpl	$-1, %eax	#, p_dec.160
	je	.L44	#,
	.loc 1 496 0
	movl	p_dec(%rip), %eax	# p_dec, p_dec.161
	movl	%eax, %edi	# p_dec.161,
	call	close	#
.L44:
	.loc 1 498 0
	movq	p_trace(%rip), %rax	# p_trace, p_trace.162
	testq	%rax, %rax	# p_trace.162
	je	.L45	#,
	.loc 1 499 0
	movq	p_trace(%rip), %rax	# p_trace, p_trace.163
	movq	%rax, %rdi	# p_trace.163,
	call	fclose	#
.L45:
	.loc 1 501 0
	movl	$0, %eax	#,
	call	Clear_Motion_Search_Module	#
	.loc 1 503 0
	movl	$0, %eax	#,
	call	RandomIntraUninit	#
	.loc 1 504 0
	movl	$0, %eax	#,
	call	FmoUninit	#
	.loc 1 506 0
	movq	input(%rip), %rax	# input, input.164
	movl	1320(%rax), %eax	# input.164_10->PyramidCoding, D.8833
	testl	%eax, %eax	# D.8833
	je	.L46	#,
	.loc 1 507 0
	movl	$0, %eax	#,
	call	clear_gop_structure	#
.L46:
	.loc 1 510 0
	movl	$0, %eax	#,
	call	clear_rdopt	#
	.loc 1 513 0
	movl	$0, %eax	#,
	call	calc_buffer	#
	.loc 1 516 0
	movq	input(%rip), %rax	# input, input.165
	movl	3228(%rax), %eax	# input.165_12->ReportFrameStats, D.8833
	testl	%eax, %eax	# D.8833
	je	.L47	#,
	.loc 1 517 0
	movl	$0, %eax	#,
	call	report_frame_statistic	#
.L47:
	.loc 1 520 0
	movl	$0, %eax	#,
	call	report	#
	.loc 1 522 0
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.166
	movq	%rax, %rdi	# frame_pic.166,
	call	free_picture	#
	.loc 1 523 0
	movq	top_pic(%rip), %rax	# top_pic, top_pic.167
	testq	%rax, %rax	# top_pic.167
	je	.L48	#,
	.loc 1 524 0
	movq	top_pic(%rip), %rax	# top_pic, top_pic.168
	movq	%rax, %rdi	# top_pic.168,
	call	free_picture	#
.L48:
	.loc 1 525 0
	movq	bottom_pic(%rip), %rax	# bottom_pic, bottom_pic.169
	testq	%rax, %rax	# bottom_pic.169
	je	.L49	#,
	.loc 1 526 0
	movq	bottom_pic(%rip), %rax	# bottom_pic, bottom_pic.170
	movq	%rax, %rdi	# bottom_pic.170,
	call	free_picture	#
.L49:
	.loc 1 528 0
	movl	$0, %eax	#,
	call	free_dpb	#
	.loc 1 529 0
	movq	Co_located(%rip), %rax	# Co_located, Co_located.171
	movq	%rax, %rdi	# Co_located.171,
	call	free_colocated	#
	.loc 1 530 0
	movl	$0, %eax	#,
	call	uninit_out_buffer	#
	.loc 1 532 0
	movl	$0, %eax	#,
	call	free_global_buffers	#
	.loc 1 535 0
	movl	$0, %eax	#,
	call	free_img	#
	.loc 1 536 0
	movl	$0, %eax	#,
	call	free_context_memory	#
	.loc 1 537 0
	movl	$0, %eax	#,
	call	FreeNalPayloadBuffer	#
	.loc 1 538 0
	movl	$0, %eax	#,
	call	FreeParameterSets	#
	.loc 1 539 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	report_stats_on_error, .-report_stats_on_error
	.globl	init_poc
	.type	init_poc, @function
init_poc:
.LFB4:
	.loc 1 549 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 553 0
	movq	img(%rip), %rax	# img, img.172
	movq	input(%rip), %rdx	# input, input.173
	movl	3208(%rdx), %edx	# input.173_2->pic_order_cnt_type, D.8834
	movl	%edx, 72404(%rax)	# D.8835, img.172_1->pic_order_cnt_type
	.loc 1 555 0
	movq	img(%rip), %rax	# img, img.174
	movl	$0, 72408(%rax)	#, img.174_5->delta_pic_order_always_zero_flag
	.loc 1 556 0
	movq	img(%rip), %rax	# img, img.175
	movl	$1, 72420(%rax)	#, img.175_6->num_ref_frames_in_pic_order_cnt_cycle
	.loc 1 558 0
	movq	input(%rip), %rax	# input, input.176
	movl	1316(%rax), %eax	# input.176_7->BRefPictures, D.8834
	testl	%eax, %eax	# D.8834
	je	.L51	#,
	.loc 1 560 0
	movq	img(%rip), %rax	# img, img.177
	movl	$0, 72412(%rax)	#, img.177_9->offset_for_non_ref_pic
	.loc 1 561 0
	movq	img(%rip), %rax	# img, img.178
	movl	$2, 72424(%rax)	#, img.178_10->offset_for_ref_frame
	jmp	.L52	#
.L51:
	.loc 1 565 0
	movq	img(%rip), %rdx	# img, img.179
	movq	input(%rip), %rax	# input, input.180
	movl	1236(%rax), %ecx	# input.180_12->successive_Bframe, D.8834
	movl	$0, %eax	#, tmp92
	subl	%ecx, %eax	# D.8834, tmp92
	addl	%eax, %eax	# tmp93
	movl	%eax, 72412(%rdx)	# D.8834, img.179_11->offset_for_non_ref_pic
	.loc 1 566 0
	movq	img(%rip), %rax	# img, img.181
	movq	input(%rip), %rdx	# input, input.182
	movl	1236(%rdx), %edx	# input.182_16->successive_Bframe, D.8834
	addl	$1, %edx	#, D.8834
	addl	%edx, %edx	# D.8834
	movl	%edx, 72424(%rax)	# D.8834, img.181_15->offset_for_ref_frame
.L52:
	.loc 1 569 0
	movq	input(%rip), %rax	# input, input.183
	movl	2880(%rax), %eax	# input.183_20->PicInterlace, D.8834
	testl	%eax, %eax	# D.8834
	jne	.L53	#,
	.loc 1 569 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.184
	movl	2884(%rax), %eax	# input.184_22->MbInterlace, D.8834
	testl	%eax, %eax	# D.8834
	jne	.L53	#,
	.loc 1 570 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.185
	movl	$0, 72416(%rax)	#, img.185_24->offset_for_top_to_bottom_field
	jmp	.L54	#
.L53:
	.loc 1 572 0
	movq	img(%rip), %rax	# img, img.186
	movl	$1, 72416(%rax)	#, img.186_25->offset_for_top_to_bottom_field
.L54:
	.loc 1 574 0
	movq	input(%rip), %rax	# input, input.187
	movl	2880(%rax), %eax	# input.187_26->PicInterlace, D.8834
	testl	%eax, %eax	# D.8834
	jne	.L55	#,
	.loc 1 574 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.188
	movl	2884(%rax), %eax	# input.188_28->MbInterlace, D.8834
	testl	%eax, %eax	# D.8834
	jne	.L55	#,
	.loc 1 576 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.189
	movl	$0, 72492(%rax)	#, img.189_30->pic_order_present_flag
	.loc 1 577 0
	movq	img(%rip), %rax	# img, img.190
	movl	$0, 72432(%rax)	#, img.190_31->delta_pic_order_cnt_bottom
	jmp	.L50	#
.L55:
	.loc 1 581 0
	movq	img(%rip), %rax	# img, img.191
	movl	$1, 72492(%rax)	#, img.191_32->pic_order_present_flag
	.loc 1 582 0
	movq	img(%rip), %rax	# img, img.192
	movl	$1, 72432(%rax)	#, img.192_33->delta_pic_order_cnt_bottom
.L50:
	.loc 1 584 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	init_poc, .-init_poc
	.globl	CAVLC_init
	.type	CAVLC_init, @function
CAVLC_init:
.LFB5:
	.loc 1 600 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 603 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L58	#
.L63:
	.loc 1 604 0
	movl	$0, -8(%rbp)	#, k
	jmp	.L59	#
.L62:
	.loc 1 605 0
	movl	$0, -4(%rbp)	#, l
	jmp	.L60	#
.L61:
	.loc 1 606 0 discriminator 2
	movq	img(%rip), %rax	# img, img.193
	movq	128(%rax), %rax	# img.193_13->nz_coeff, D.8838
	movl	-12(%rbp), %edx	# i, D.8839
	salq	$3, %rdx	#, D.8839
	addq	%rdx, %rax	# D.8839, D.8838
	movq	(%rax), %rax	# *_17, D.8840
	movl	-8(%rbp), %edx	# k, D.8839
	salq	$3, %rdx	#, D.8839
	addq	%rdx, %rax	# D.8839, D.8840
	movq	(%rax), %rax	# *_21, D.8841
	movl	-4(%rbp), %edx	# l, D.8839
	salq	$2, %rdx	#, D.8839
	addq	%rdx, %rax	# D.8839, D.8841
	movl	$0, (%rax)	#, *_25
	.loc 1 605 0 discriminator 2
	addl	$1, -4(%rbp)	#, l
.L60:
	.loc 1 605 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.194
	movl	72692(%rax), %eax	# img.194_9->num_blk8x8_uv, D.8837
	addl	$4, %eax	#, D.8836
	cmpl	-4(%rbp), %eax	# l, D.8836
	ja	.L61	#,
	.loc 1 604 0 is_stmt 1
	addl	$1, -8(%rbp)	#, k
.L59:
	.loc 1 604 0 is_stmt 0 discriminator 1
	cmpl	$3, -8(%rbp)	#, k
	jbe	.L62	#,
	.loc 1 603 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L58:
	.loc 1 603 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.195
	movl	72484(%rax), %eax	# img.195_5->PicSizeInMbs, D.8836
	cmpl	-12(%rbp), %eax	# i, D.8836
	ja	.L63	#,
	.loc 1 609 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	CAVLC_init, .-CAVLC_init
	.section	.rodata
.LC2:
	.string	"init_img: img->quad"
.LC3:
	.string	"init_img: img->mb_data"
.LC4:
	.string	"init_img: img->intra_block"
	.text
	.globl	init_img
	.type	init_img, @function
init_img:
.LFB6:
	.loc 1 623 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 630 0
	movq	img(%rip), %rax	# img, img.196
	movq	input(%rip), %rdx	# input, input.197
	movl	72(%rdx), %edx	# input.197_12->yuv_format, D.8842
	movl	%edx, 72700(%rax)	# D.8842, img.196_11->yuv_format
	.loc 1 633 0
	movq	img(%rip), %rax	# img, img.198
	movq	input(%rip), %rdx	# input, input.199
	movl	3296(%rdx), %edx	# input.199_15->BitDepthLuma, D.8842
	movl	%edx, 72660(%rax)	# D.8842, img.198_14->bitdepth_luma
	.loc 1 635 0
	movq	img(%rip), %rax	# img, img.200
	movl	72660(%rax), %edx	# img.200_17->bitdepth_luma, D.8842
	movq	img(%rip), %rax	# img, img.201
	movl	72664(%rax), %eax	# img.201_19->bitdepth_chroma, D.8842
	cmpl	%eax, %edx	# D.8842, D.8842
	jg	.L65	#,
	.loc 1 635 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.202
	movl	72700(%rax), %eax	# img.202_21->yuv_format, D.8842
	testl	%eax, %eax	# D.8842
	jne	.L66	#,
.L65:
	.loc 1 636 0 is_stmt 1
	movq	img(%rip), %rdx	# img, img.203
	movq	img(%rip), %rax	# img, img.205
	movl	72660(%rax), %eax	# img.205_29->bitdepth_luma, D.8842
	cmpl	$8, %eax	#, D.8842
	jle	.L67	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, iftmp.204
	jmp	.L68	#
.L67:
	.loc 1 636 0 discriminator 2
	movl	$8, %eax	#, iftmp.204
.L68:
	.loc 1 636 0 discriminator 3
	movl	%eax, 72656(%rdx)	# iftmp.204, img.203_28->pic_unit_size_on_disk
	jmp	.L69	#
.L66:
	.loc 1 638 0 is_stmt 1
	movq	img(%rip), %rdx	# img, img.206
	movq	img(%rip), %rax	# img, img.208
	movl	72664(%rax), %eax	# img.208_24->bitdepth_chroma, D.8842
	cmpl	$8, %eax	#, D.8842
	jle	.L70	#,
	.loc 1 638 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, iftmp.207
	jmp	.L71	#
.L70:
	.loc 1 638 0 discriminator 2
	movl	$8, %eax	#, iftmp.207
.L71:
	.loc 1 638 0 discriminator 3
	movl	%eax, 72656(%rdx)	# iftmp.207, img.206_23->pic_unit_size_on_disk
.L69:
	.loc 1 640 0 is_stmt 1
	movq	img(%rip), %rcx	# img, img.209
	movq	img(%rip), %rax	# img, img.210
	movl	72660(%rax), %eax	# img.210_34->bitdepth_luma, D.8842
	leal	-8(%rax), %edx	#, D.8842
	movl	%edx, %eax	# D.8842, tmp424
	addl	%eax, %eax	# tmp424
	addl	%edx, %eax	# D.8842, tmp424
	addl	%eax, %eax	# tmp425
	movl	%eax, 72668(%rcx)	# D.8842, img.209_33->bitdepth_luma_qp_scale
	.loc 1 641 0
	movq	img(%rip), %rax	# img, img.211
	movq	img(%rip), %rdx	# img, img.212
	movl	72660(%rdx), %edx	# img.212_39->bitdepth_luma, D.8842
	subl	$8, %edx	#, D.8842
	addl	%edx, %edx	# D.8842
	movl	%edx, 72676(%rax)	# D.8842, img.211_38->bitdepth_lambda_scale
	.loc 1 643 0
	movq	img(%rip), %rax	# img, img.213
	movq	img(%rip), %rdx	# img, img.214
	movl	72660(%rdx), %edx	# img.214_44->bitdepth_luma, D.8842
	subl	$1, %edx	#, D.8842
	movl	$1, %esi	#, tmp426
	movl	%edx, %ecx	# D.8842, tmp532
	sall	%cl, %esi	# tmp532, D.8842
	movl	%esi, %edx	# D.8842, D.8842
	movl	%edx, 72680(%rax)	# D.8843, img.213_43->dc_pred_value
	.loc 1 644 0
	movq	img(%rip), %rax	# img, img.215
	movq	img(%rip), %rdx	# img, img.216
	movl	72660(%rdx), %edx	# img.216_50->bitdepth_luma, D.8842
	movl	$1, %esi	#, tmp427
	movl	%edx, %ecx	# D.8842, tmp534
	sall	%cl, %esi	# tmp534, D.8842
	movl	%esi, %edx	# D.8842, D.8842
	subl	$1, %edx	#, D.8842
	movl	%edx, 72684(%rax)	# D.8842, img.215_49->max_imgpel_value
	.loc 1 646 0
	movq	img(%rip), %rax	# img, img.217
	movl	72700(%rax), %eax	# img.217_54->yuv_format, D.8842
	testl	%eax, %eax	# D.8842
	je	.L72	#,
	.loc 1 648 0
	movq	img(%rip), %rax	# img, img.218
	movq	input(%rip), %rdx	# input, input.219
	movl	3300(%rdx), %edx	# input.219_57->BitDepthChroma, D.8842
	movl	%edx, 72664(%rax)	# D.8842, img.218_56->bitdepth_chroma
	.loc 1 649 0
	movq	img(%rip), %rax	# img, img.220
	movq	img(%rip), %rdx	# img, img.221
	movl	72664(%rdx), %edx	# img.221_60->bitdepth_chroma, D.8842
	movl	$1, %esi	#, tmp428
	movl	%edx, %ecx	# D.8842, tmp536
	sall	%cl, %esi	# tmp536, D.8842
	movl	%esi, %edx	# D.8842, D.8842
	subl	$1, %edx	#, D.8842
	movl	%edx, 72688(%rax)	# D.8842, img.220_59->max_imgpel_value_uv
	.loc 1 650 0
	movq	img(%rip), %rax	# img, img.222
	movq	img(%rip), %rdx	# img, img.223
	movl	72700(%rdx), %edx	# img.223_65->yuv_format, D.8842
	movl	$1, %esi	#, tmp429
	movl	%edx, %ecx	# D.8842, tmp538
	sall	%cl, %esi	# tmp538, D.8842
	movl	%esi, %edx	# D.8842, D.8842
	andl	$-2, %edx	#, D.8842
	movl	%edx, 72692(%rax)	# D.8842, img.222_64->num_blk8x8_uv
	.loc 1 651 0
	movq	img(%rip), %rax	# img, img.224
	movq	img(%rip), %rdx	# img, img.225
	movl	72692(%rdx), %edx	# img.225_70->num_blk8x8_uv, D.8842
	addl	%edx, %edx	# D.8842
	movl	%edx, 72696(%rax)	# D.8842, img.224_69->num_cdc_coeff
	.loc 1 652 0
	movq	img(%rip), %rdx	# img, img.226
	movq	img(%rip), %rax	# img, img.228
	movl	72700(%rax), %eax	# img.228_74->yuv_format, D.8842
	cmpl	$1, %eax	#, D.8842
	je	.L73	#,
	.loc 1 652 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rax	# img, img.229
	movl	72700(%rax), %eax	# img.229_76->yuv_format, D.8842
	cmpl	$2, %eax	#, D.8842
	jne	.L74	#,
.L73:
	.loc 1 652 0 discriminator 1
	movl	$8, %eax	#, iftmp.227
	jmp	.L75	#
.L74:
	movl	$16, %eax	#, iftmp.227
.L75:
	.loc 1 652 0 discriminator 3
	movl	%eax, 72708(%rdx)	# iftmp.227, img.226_73->mb_cr_size_x
	.loc 1 653 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rdx	# img, img.230
	movq	img(%rip), %rax	# img, img.232
	movl	72700(%rax), %eax	# img.232_81->yuv_format, D.8842
	cmpl	$3, %eax	#, D.8842
	je	.L76	#,
	.loc 1 653 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rax	# img, img.233
	movl	72700(%rax), %eax	# img.233_83->yuv_format, D.8842
	cmpl	$2, %eax	#, D.8842
	jne	.L77	#,
.L76:
	.loc 1 653 0 discriminator 1
	movl	$16, %eax	#, iftmp.231
	jmp	.L78	#
.L77:
	movl	$8, %eax	#, iftmp.231
.L78:
	.loc 1 653 0 discriminator 3
	movl	%eax, 72712(%rdx)	# iftmp.231, img.230_80->mb_cr_size_y
	.loc 1 655 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rcx	# img, img.234
	movq	img(%rip), %rax	# img, img.235
	movl	72664(%rax), %eax	# img.235_88->bitdepth_chroma, D.8842
	leal	-8(%rax), %edx	#, D.8842
	movl	%edx, %eax	# D.8842, tmp430
	addl	%eax, %eax	# tmp430
	addl	%edx, %eax	# D.8842, tmp430
	addl	%eax, %eax	# tmp431
	movl	%eax, 72672(%rcx)	# D.8842, img.234_87->bitdepth_chroma_qp_scale
	.loc 1 656 0 discriminator 3
	movq	img(%rip), %rax	# img, img.236
	movl	72724(%rax), %eax	# img.236_92->residue_transform_flag, D.8842
	testl	%eax, %eax	# D.8842
	je	.L79	#,
	.loc 1 657 0
	movq	img(%rip), %rax	# img, img.237
	movq	img(%rip), %rdx	# img, img.238
	movl	72672(%rdx), %edx	# img.238_95->bitdepth_chroma_qp_scale, D.8842
	addl	$6, %edx	#, D.8842
	movl	%edx, 72672(%rax)	# D.8842, img.237_94->bitdepth_chroma_qp_scale
.L79:
	.loc 1 659 0
	movq	img(%rip), %rax	# img, img.239
	movq	active_pps(%rip), %rdx	# active_pps, active_pps.240
	movl	212(%rdx), %edx	# active_pps.240_99->cb_qp_index_offset, D.8842
	movl	%edx, 72716(%rax)	# D.8842, img.239_98->chroma_qp_offset
	.loc 1 660 0
	movq	img(%rip), %rax	# img, img.241
	movq	active_pps(%rip), %rdx	# active_pps, active_pps.242
	movl	216(%rdx), %edx	# active_pps.242_102->cr_qp_index_offset, D.8842
	movl	%edx, 72720(%rax)	# D.8842, img.241_101->chroma_qp_offset
	jmp	.L80	#
.L72:
	.loc 1 664 0
	movq	img(%rip), %rax	# img, img.243
	movl	$0, 72664(%rax)	#, img.243_104->bitdepth_chroma
	.loc 1 665 0
	movq	img(%rip), %rax	# img, img.244
	movl	$0, 72688(%rax)	#, img.244_105->max_imgpel_value_uv
	.loc 1 666 0
	movq	img(%rip), %rax	# img, img.245
	movl	$0, 72692(%rax)	#, img.245_106->num_blk8x8_uv
	.loc 1 667 0
	movq	img(%rip), %rax	# img, img.246
	movl	$0, 72696(%rax)	#, img.246_107->num_cdc_coeff
	.loc 1 668 0
	movq	img(%rip), %rax	# img, img.247
	movl	$0, 72708(%rax)	#, img.247_108->mb_cr_size_x
	.loc 1 669 0
	movq	img(%rip), %rax	# img, img.248
	movl	$0, 72712(%rax)	#, img.248_109->mb_cr_size_y
	.loc 1 671 0
	movq	img(%rip), %rax	# img, img.249
	movl	$0, 72672(%rax)	#, img.249_110->bitdepth_chroma_qp_scale
	.loc 1 672 0
	movq	img(%rip), %rax	# img, img.250
	movl	$0, 72672(%rax)	#, img.250_111->bitdepth_chroma_qp_scale
	.loc 1 674 0
	movq	img(%rip), %rax	# img, img.251
	movl	$0, 72716(%rax)	#, img.251_112->chroma_qp_offset
	.loc 1 675 0
	movq	img(%rip), %rax	# img, img.252
	movl	$0, 72720(%rax)	#, img.252_113->chroma_qp_offset
.L80:
	.loc 1 678 0
	movq	img(%rip), %rax	# img, img.253
	movq	active_sps(%rip), %rdx	# active_sps, active_sps.254
	movl	1132(%rdx), %edx	# active_sps.254_115->num_ref_frames, D.8843
	movl	%edx, 32(%rax)	# D.8842, img.253_114->num_ref_frames
	.loc 1 679 0
	movq	img(%rip), %rdx	# img, img.255
	movq	active_sps(%rip), %rax	# active_sps, active_sps.257
	movl	1148(%rax), %eax	# active_sps.257_119->frame_mbs_only_flag, D.8844
	testl	%eax, %eax	# D.8844
	je	.L81	#,
	.loc 1 679 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.258
	movl	1132(%rax), %eax	# active_sps.258_121->num_ref_frames, D.8843
	jmp	.L82	#
.L81:
	.loc 1 679 0 discriminator 2
	movq	active_sps(%rip), %rax	# active_sps, active_sps.259
	movl	1132(%rax), %eax	# active_sps.259_124->num_ref_frames, D.8843
	addl	%eax, %eax	# D.8843
.L82:
	.loc 1 679 0 discriminator 3
	movl	%eax, 36(%rdx)	# iftmp.256, img.255_118->max_num_references
	.loc 1 682 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.260
	movq	input(%rip), %rdx	# input, input.261
	movl	36(%rdx), %edx	# input.261_129->num_ref_frames, D.8842
	movl	%edx, 72376(%rax)	# D.8842, img.260_128->buf_cycle
	.loc 1 684 0 discriminator 3
	movq	img(%rip), %rax	# img, img.262
	movl	$0, 72636(%rax)	#, img.262_131->DeblockCall
	.loc 1 687 0 discriminator 3
	movq	img(%rip), %rax	# img, img.263
	movq	input(%rip), %rdx	# input, input.264
	movsd	2424(%rdx), %xmm0	# input.264_133->FrameRate, D.8845
	unpcklpd	%xmm0, %xmm0	# D.8845
	cvtpd2ps	%xmm0, %xmm0	# D.8845, D.8846
	movss	%xmm0, 48(%rax)	# D.8846, img.263_132->framerate
	.loc 1 690 0 discriminator 3
	movq	img(%rip), %rax	# img, img.265
	addq	$71920, %rax	#, D.8847
	movq	%rax, %rdi	# D.8847,
	call	get_mem_mv	#
	.loc 1 691 0 discriminator 3
	movq	img(%rip), %rax	# img, img.266
	addq	$71928, %rax	#, D.8847
	movq	%rax, %rdi	# D.8847,
	call	get_mem_mv	#
	.loc 1 694 0 discriminator 3
	movq	input(%rip), %rax	# input, input.267
	movl	1256(%rax), %eax	# input.267_140->BiPredMotionEstimation, D.8842
	testl	%eax, %eax	# D.8842
	je	.L83	#,
	.loc 1 696 0
	movq	img(%rip), %rax	# img, img.268
	addq	$71936, %rax	#, D.8847
	movq	%rax, %rdi	# D.8847,
	call	get_mem_mv	#
	.loc 1 697 0
	movq	img(%rip), %rax	# img, img.269
	addq	$71944, %rax	#, D.8847
	movq	%rax, %rdi	# D.8847,
	call	get_mem_mv	#
.L83:
	.loc 1 701 0
	movq	img(%rip), %rax	# img, img.270
	addq	$14136, %rax	#, D.8848
	movq	%rax, %rdi	# D.8848,
	call	get_mem_ACcoeff	#
	.loc 1 702 0
	movq	img(%rip), %rax	# img, img.271
	addq	$14144, %rax	#, D.8849
	movq	%rax, %rdi	# D.8849,
	call	get_mem_DCcoeff	#
	.loc 1 705 0
	movq	input(%rip), %rax	# input, input.272
	movl	2884(%rax), %eax	# input.272_150->MbInterlace, D.8842
	testl	%eax, %eax	# D.8842
	je	.L84	#,
	.loc 1 707 0
	movl	$rddata_top_frame_mb+3232, %edi	#,
	call	get_mem_mv	#
	.loc 1 708 0
	movl	$rddata_top_frame_mb+3240, %edi	#,
	call	get_mem_mv	#
	.loc 1 710 0
	movl	$rddata_bot_frame_mb+3232, %edi	#,
	call	get_mem_mv	#
	.loc 1 711 0
	movl	$rddata_bot_frame_mb+3240, %edi	#,
	call	get_mem_mv	#
	.loc 1 713 0
	movl	$rddata_top_field_mb+3232, %edi	#,
	call	get_mem_mv	#
	.loc 1 714 0
	movl	$rddata_top_field_mb+3240, %edi	#,
	call	get_mem_mv	#
	.loc 1 716 0
	movl	$rddata_bot_field_mb+3232, %edi	#,
	call	get_mem_mv	#
	.loc 1 717 0
	movl	$rddata_bot_field_mb+3240, %edi	#,
	call	get_mem_mv	#
	.loc 1 719 0
	movq	input(%rip), %rax	# input, input.273
	movl	1256(%rax), %eax	# input.273_152->BiPredMotionEstimation, D.8842
	testl	%eax, %eax	# D.8842
	je	.L85	#,
	.loc 1 721 0
	movl	$rddata_top_frame_mb+3248, %edi	#,
	call	get_mem_mv	#
	.loc 1 722 0
	movl	$rddata_top_frame_mb+3256, %edi	#,
	call	get_mem_mv	#
	.loc 1 723 0
	movl	$rddata_bot_frame_mb+3248, %edi	#,
	call	get_mem_mv	#
	.loc 1 724 0
	movl	$rddata_bot_frame_mb+3256, %edi	#,
	call	get_mem_mv	#
	.loc 1 725 0
	movl	$rddata_top_field_mb+3248, %edi	#,
	call	get_mem_mv	#
	.loc 1 726 0
	movl	$rddata_top_field_mb+3256, %edi	#,
	call	get_mem_mv	#
	.loc 1 727 0
	movl	$rddata_bot_field_mb+3248, %edi	#,
	call	get_mem_mv	#
	.loc 1 728 0
	movl	$rddata_bot_field_mb+3256, %edi	#,
	call	get_mem_mv	#
.L85:
	.loc 1 732 0
	movl	$rddata_top_frame_mb+3080, %edi	#,
	call	get_mem_ACcoeff	#
	.loc 1 733 0
	movl	$rddata_top_frame_mb+3088, %edi	#,
	call	get_mem_DCcoeff	#
	.loc 1 735 0
	movl	$rddata_bot_frame_mb+3080, %edi	#,
	call	get_mem_ACcoeff	#
	.loc 1 736 0
	movl	$rddata_bot_frame_mb+3088, %edi	#,
	call	get_mem_DCcoeff	#
	.loc 1 738 0
	movl	$rddata_top_field_mb+3080, %edi	#,
	call	get_mem_ACcoeff	#
	.loc 1 739 0
	movl	$rddata_top_field_mb+3088, %edi	#,
	call	get_mem_DCcoeff	#
	.loc 1 741 0
	movl	$rddata_bot_field_mb+3080, %edi	#,
	call	get_mem_ACcoeff	#
	.loc 1 742 0
	movl	$rddata_bot_field_mb+3088, %edi	#,
	call	get_mem_DCcoeff	#
.L84:
	.loc 1 745 0
	movq	img(%rip), %rax	# img, img.274
	movl	72684(%rax), %edx	# img.274_154->max_imgpel_value, D.8842
	movq	img(%rip), %rax	# img, img.275
	movl	72688(%rax), %eax	# img.275_156->max_imgpel_value_uv, D.8842
	cmpl	%eax, %edx	# D.8842, D.8842
	jle	.L86	#,
	.loc 1 746 0
	movq	img(%rip), %rax	# img, img.276
	movl	72684(%rax), %eax	# img.276_158->max_imgpel_value, D.8842
	addl	$1, %eax	#, D.8842
	addl	%eax, %eax	# tmp432
	movl	%eax, -20(%rbp)	# tmp432, byte_abs_range
	jmp	.L87	#
.L86:
	.loc 1 748 0
	movq	img(%rip), %rax	# img, img.277
	movl	72688(%rax), %eax	# img.277_162->max_imgpel_value_uv, D.8842
	addl	$1, %eax	#, D.8842
	addl	%eax, %eax	# tmp433
	movl	%eax, -20(%rbp)	# tmp433, byte_abs_range
.L87:
	.loc 1 750 0
	movq	img(%rip), %rbx	# img, img.278
	movl	-20(%rbp), %eax	# byte_abs_range, tmp434
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.8850,
	call	calloc	#
	movq	%rax, 71776(%rbx)	# D.8851, img.278_166->quad
	movq	71776(%rbx), %rax	# img.278_166->quad, D.8852
	testq	%rax, %rax	# D.8852
	jne	.L88	#,
	.loc 1 751 0
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L88:
	.loc 1 752 0
	movq	img(%rip), %rdx	# img, img.279
	movq	img(%rip), %rax	# img, img.280
	movq	71776(%rax), %rcx	# img.280_171->quad, D.8852
	movl	-20(%rbp), %eax	# byte_abs_range, tmp436
	movl	%eax, %esi	# tmp436, tmp437
	shrl	$31, %esi	#, tmp437
	addl	%esi, %eax	# tmp437, tmp438
	sarl	%eax	# tmp439
	cltq
	salq	$2, %rax	#, D.8850
	addq	%rcx, %rax	# D.8852, D.8852
	movq	%rax, 71776(%rdx)	# D.8852, img.279_170->quad
	.loc 1 753 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L89	#
.L90:
	.loc 1 755 0 discriminator 2
	movq	img(%rip), %rax	# img, img.281
	movq	71776(%rax), %rax	# img.281_179->quad, D.8852
	movl	-28(%rbp), %edx	# i, tmp440
	movslq	%edx, %rdx	# tmp440, D.8850
	salq	$2, %rdx	#, D.8850
	leaq	(%rax,%rdx), %rcx	#, D.8852
	movq	img(%rip), %rax	# img, img.282
	movq	71776(%rax), %rax	# img.282_184->quad, D.8852
	movl	-28(%rbp), %edx	# i, tmp441
	negl	%edx	# D.8842
	movslq	%edx, %rdx	# D.8842, D.8850
	salq	$2, %rdx	#, D.8850
	addq	%rdx, %rax	# D.8850, D.8852
	movl	-28(%rbp), %edx	# i, tmp442
	imull	-28(%rbp), %edx	# i, D.8842
	movl	%edx, (%rax)	# D.8842, *_189
	movl	(%rax), %eax	# *_189, D.8842
	movl	%eax, (%rcx)	# D.8842, *_183
	.loc 1 753 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L89:
	.loc 1 753 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# byte_abs_range, tmp443
	movl	%eax, %edx	# tmp443, tmp444
	shrl	$31, %edx	#, tmp444
	addl	%edx, %eax	# tmp444, tmp445
	sarl	%eax	# tmp446
	cmpl	-28(%rbp), %eax	# i, D.8842
	jg	.L90	#,
	.loc 1 758 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.283
	movq	input(%rip), %rdx	# input, input.284
	movl	64(%rdx), %ecx	# input.284_194->img_width, D.8842
	movq	img(%rip), %rdx	# img, img.285
	movl	72728(%rdx), %edx	# img.285_196->auto_crop_right, D.8842
	addl	%ecx, %edx	# D.8842, D.8842
	movl	%edx, 52(%rax)	# D.8842, img.283_193->width
	.loc 1 759 0
	movq	img(%rip), %rax	# img, img.286
	movq	input(%rip), %rdx	# input, input.287
	movl	68(%rdx), %ecx	# input.287_200->img_height, D.8842
	movq	img(%rip), %rdx	# img, img.288
	movl	72732(%rdx), %edx	# img.288_202->auto_crop_bottom, D.8842
	addl	%ecx, %edx	# D.8842, D.8842
	movl	%edx, 60(%rax)	# D.8842, img.286_199->height
	.loc 1 760 0
	movq	img(%rip), %rax	# img, img.289
	movl	72700(%rax), %eax	# img.289_205->yuv_format, D.8842
	testl	%eax, %eax	# D.8842
	je	.L91	#,
	.loc 1 762 0
	movq	img(%rip), %rcx	# img, img.290
	movq	img(%rip), %rax	# img, img.291
	movl	52(%rax), %esi	# img.291_208->width, D.8842
	movq	img(%rip), %rax	# img, img.292
	movl	72700(%rax), %eax	# img.292_210->yuv_format, D.8842
	cltq
	movl	mb_width_cr.5897(,%rax,4), %ebx	# mb_width_cr, D.8842
	movl	$16, %eax	#, tmp450
	cltd
	idivl	%ebx	# D.8842
	movl	%eax, %ebx	# tmp448, D.8842
	movl	%esi, %eax	# D.8842, tmp451
	cltd
	idivl	%ebx	# D.8842
	movl	%eax, 56(%rcx)	# D.8842, img.290_207->width_cr
	.loc 1 763 0
	movq	img(%rip), %rcx	# img, img.293
	movq	img(%rip), %rax	# img, img.294
	movl	60(%rax), %esi	# img.294_216->height, D.8842
	movq	img(%rip), %rax	# img, img.295
	movl	72700(%rax), %eax	# img.295_218->yuv_format, D.8842
	cltq
	movl	mb_height_cr.5898(,%rax,4), %ebx	# mb_height_cr, D.8842
	movl	$16, %eax	#, tmp456
	cltd
	idivl	%ebx	# D.8842
	movl	%eax, %ebx	# tmp454, D.8842
	movl	%esi, %eax	# D.8842, tmp457
	cltd
	idivl	%ebx	# D.8842
	movl	%eax, 64(%rcx)	# D.8842, img.293_215->height_cr
	.loc 1 765 0
	movq	input(%rip), %rcx	# input, input.296
	movq	input(%rip), %rax	# input, input.297
	movl	64(%rax), %esi	# input.297_224->img_width, D.8842
	movq	img(%rip), %rax	# img, img.298
	movl	72700(%rax), %eax	# img.298_226->yuv_format, D.8842
	cltq
	movl	mb_width_cr.5897(,%rax,4), %ebx	# mb_width_cr, D.8842
	movl	$16, %eax	#, tmp462
	cltd
	idivl	%ebx	# D.8842
	movl	%eax, %ebx	# tmp460, D.8842
	movl	%esi, %eax	# D.8842, tmp463
	cltd
	idivl	%ebx	# D.8842
	movl	%eax, 3308(%rcx)	# D.8842, input.296_223->img_width_cr
	.loc 1 766 0
	movq	input(%rip), %rcx	# input, input.299
	movq	input(%rip), %rax	# input, input.300
	movl	68(%rax), %esi	# input.300_232->img_height, D.8842
	movq	img(%rip), %rax	# img, img.301
	movl	72700(%rax), %eax	# img.301_234->yuv_format, D.8842
	cltq
	movl	mb_height_cr.5898(,%rax,4), %ebx	# mb_height_cr, D.8842
	movl	$16, %eax	#, tmp468
	cltd
	idivl	%ebx	# D.8842
	movl	%eax, %ebx	# tmp466, D.8842
	movl	%esi, %eax	# D.8842, tmp469
	cltd
	idivl	%ebx	# D.8842
	movl	%eax, 3304(%rcx)	# D.8842, input.299_231->img_height_cr
	jmp	.L92	#
.L91:
	.loc 1 770 0
	movq	img(%rip), %rax	# img, img.302
	movl	$0, 56(%rax)	#, img.302_239->width_cr
	.loc 1 771 0
	movq	img(%rip), %rax	# img, img.303
	movl	$0, 64(%rax)	#, img.303_240->height_cr
	.loc 1 773 0
	movq	input(%rip), %rax	# input, input.304
	movl	$0, 3308(%rax)	#, input.304_241->img_width_cr
	.loc 1 774 0
	movq	input(%rip), %rax	# input, input.305
	movl	$0, 3304(%rax)	#, input.305_242->img_height_cr
.L92:
	.loc 1 776 0
	movq	img(%rip), %rax	# img, img.306
	movq	img(%rip), %rdx	# img, img.307
	movl	64(%rdx), %edx	# img.307_244->height_cr, D.8842
	movl	%edx, 68(%rax)	# D.8842, img.306_243->height_cr_frame
	.loc 1 778 0
	movq	img(%rip), %rdx	# img, img.308
	movq	input(%rip), %rax	# input, input.309
	movl	64(%rax), %ecx	# input.309_247->img_width, D.8842
	movq	img(%rip), %rax	# img, img.310
	movl	72728(%rax), %eax	# img.310_249->auto_crop_right, D.8842
	addl	%ecx, %eax	# D.8842, D.8842
	leal	15(%rax), %ecx	#, tmp472
	testl	%eax, %eax	# tmp471
	cmovs	%ecx, %eax	# tmp472,, tmp471
	sarl	$4, %eax	#, tmp473
	movl	%eax, 72468(%rdx)	# D.8843, img.308_246->PicWidthInMbs
	.loc 1 779 0
	movq	img(%rip), %rdx	# img, img.311
	movq	input(%rip), %rax	# input, input.312
	movl	68(%rax), %ecx	# input.312_255->img_height, D.8842
	movq	img(%rip), %rax	# img, img.313
	movl	72732(%rax), %eax	# img.313_257->auto_crop_bottom, D.8842
	addl	%ecx, %eax	# D.8842, D.8842
	leal	15(%rax), %ecx	#, tmp475
	testl	%eax, %eax	# tmp474
	cmovs	%ecx, %eax	# tmp475,, tmp474
	sarl	$4, %eax	#, tmp476
	movl	%eax, 72476(%rdx)	# D.8843, img.311_254->FrameHeightInMbs
	.loc 1 780 0
	movq	img(%rip), %rax	# img, img.314
	movq	img(%rip), %rdx	# img, img.315
	movl	72468(%rdx), %ecx	# img.315_263->PicWidthInMbs, D.8843
	movq	img(%rip), %rdx	# img, img.316
	movl	72476(%rdx), %edx	# img.316_265->FrameHeightInMbs, D.8843
	imull	%ecx, %edx	# D.8843, D.8843
	movl	%edx, 72488(%rax)	# D.8843, img.314_262->FrameSizeInMbs
	.loc 1 782 0
	movq	img(%rip), %rdx	# img, img.317
	movq	active_sps(%rip), %rax	# active_sps, active_sps.319
	movl	1148(%rax), %eax	# active_sps.319_269->frame_mbs_only_flag, D.8844
	testl	%eax, %eax	# D.8844
	je	.L93	#,
	.loc 1 782 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.320
	movl	72476(%rax), %eax	# img.320_271->FrameHeightInMbs, iftmp.318
	jmp	.L94	#
.L93:
	.loc 1 782 0 discriminator 2
	movq	img(%rip), %rax	# img, img.321
	movl	72476(%rax), %eax	# img.321_273->FrameHeightInMbs, D.8843
	shrl	%eax	# iftmp.318
.L94:
	.loc 1 782 0 discriminator 3
	movl	%eax, 72472(%rdx)	# iftmp.318, img.317_268->PicHeightInMapUnits
	.loc 1 784 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rbx	# img, img.322
	movq	img(%rip), %rax	# img, img.323
	movl	72488(%rax), %eax	# img.323_277->FrameSizeInMbs, D.8843
	movl	%eax, %eax	# D.8843, D.8850
	movl	$632, %esi	#,
	movq	%rax, %rdi	# D.8850,
	call	calloc	#
	movq	%rax, 14168(%rbx)	# D.8851, img.322_276->mb_data
	movq	14168(%rbx), %rax	# img.322_276->mb_data, D.8853
	testq	%rax, %rax	# D.8853
	jne	.L95	#,
	.loc 1 785 0
	movl	$.LC3, %edi	#,
	call	no_mem_exit	#
.L95:
	.loc 1 787 0
	movq	input(%rip), %rax	# input, input.324
	movl	216(%rax), %eax	# input.324_282->UseConstrainedIntraPred, D.8842
	testl	%eax, %eax	# D.8842
	je	.L96	#,
	.loc 1 789 0
	movq	img(%rip), %rbx	# img, img.325
	movq	img(%rip), %rax	# img, img.326
	movl	72488(%rax), %eax	# img.326_285->FrameSizeInMbs, D.8843
	movl	%eax, %eax	# D.8843, D.8850
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.8850,
	call	calloc	#
	movq	%rax, 71784(%rbx)	# D.8851, img.325_284->intra_block
	movq	71784(%rbx), %rax	# img.325_284->intra_block, D.8852
	testq	%rax, %rax	# D.8852
	jne	.L96	#,
	.loc 1 790 0
	movl	$.LC4, %edi	#,
	call	no_mem_exit	#
.L96:
	.loc 1 793 0
	movq	img(%rip), %rax	# img, img.327
	movl	60(%rax), %eax	# img.327_290->height, D.8842
	leal	3(%rax), %edx	#, tmp480
	testl	%eax, %eax	# tmp479
	cmovs	%edx, %eax	# tmp480,, tmp479
	sarl	$2, %eax	#, tmp481
	movl	%eax, %edx	# tmp481, D.8842
	movq	img(%rip), %rax	# img, img.328
	movl	52(%rax), %eax	# img.328_293->width, D.8842
	leal	3(%rax), %ecx	#, tmp483
	testl	%eax, %eax	# tmp482
	cmovs	%ecx, %eax	# tmp483,, tmp482
	sarl	$2, %eax	#, tmp484
	movq	img(%rip), %rcx	# img, img.329
	addq	$104, %rcx	#, D.8854
	movl	%eax, %esi	# D.8842,
	movq	%rcx, %rdi	# D.8854,
	call	get_mem2Dint	#
	.loc 1 794 0
	movq	img(%rip), %rax	# img, img.330
	movl	60(%rax), %eax	# img.330_298->height, D.8842
	leal	3(%rax), %edx	#, tmp486
	testl	%eax, %eax	# tmp485
	cmovs	%edx, %eax	# tmp486,, tmp485
	sarl	$2, %eax	#, tmp487
	movl	%eax, %edx	# tmp487, D.8842
	movq	img(%rip), %rax	# img, img.331
	movl	52(%rax), %eax	# img.331_301->width, D.8842
	leal	3(%rax), %ecx	#, tmp489
	testl	%eax, %eax	# tmp488
	cmovs	%ecx, %eax	# tmp489,, tmp488
	sarl	$2, %eax	#, tmp490
	movq	img(%rip), %rcx	# img, img.332
	addq	$112, %rcx	#, D.8854
	movl	%eax, %esi	# D.8842,
	movq	%rcx, %rdi	# D.8854,
	call	get_mem2Dint	#
	.loc 1 796 0
	movq	img(%rip), %rax	# img, img.333
	movl	60(%rax), %eax	# img.333_306->height, D.8842
	leal	3(%rax), %edx	#, tmp492
	testl	%eax, %eax	# tmp491
	cmovs	%edx, %eax	# tmp492,, tmp491
	sarl	$2, %eax	#, tmp493
	movl	%eax, %edx	# tmp493, D.8842
	movq	img(%rip), %rax	# img, img.334
	movl	52(%rax), %eax	# img.334_309->width, D.8842
	leal	3(%rax), %ecx	#, tmp495
	testl	%eax, %eax	# tmp494
	cmovs	%ecx, %eax	# tmp495,, tmp494
	sarl	$2, %eax	#, tmp496
	movl	%eax, %esi	# D.8842,
	movl	$rddata_top_frame_mb+3136, %edi	#,
	call	get_mem2Dint	#
	.loc 1 798 0
	movq	input(%rip), %rax	# input, input.335
	movl	2884(%rax), %eax	# input.335_312->MbInterlace, D.8842
	testl	%eax, %eax	# D.8842
	je	.L97	#,
	.loc 1 800 0
	movq	img(%rip), %rax	# img, img.336
	movl	60(%rax), %eax	# img.336_314->height, D.8842
	leal	3(%rax), %edx	#, tmp498
	testl	%eax, %eax	# tmp497
	cmovs	%edx, %eax	# tmp498,, tmp497
	sarl	$2, %eax	#, tmp499
	movl	%eax, %edx	# tmp499, D.8842
	movq	img(%rip), %rax	# img, img.337
	movl	52(%rax), %eax	# img.337_317->width, D.8842
	leal	3(%rax), %ecx	#, tmp501
	testl	%eax, %eax	# tmp500
	cmovs	%ecx, %eax	# tmp501,, tmp500
	sarl	$2, %eax	#, tmp502
	movl	%eax, %esi	# D.8842,
	movl	$rddata_bot_frame_mb+3136, %edi	#,
	call	get_mem2Dint	#
	.loc 1 801 0
	movq	img(%rip), %rax	# img, img.338
	movl	60(%rax), %eax	# img.338_320->height, D.8842
	leal	3(%rax), %edx	#, tmp504
	testl	%eax, %eax	# tmp503
	cmovs	%edx, %eax	# tmp504,, tmp503
	sarl	$2, %eax	#, tmp505
	movl	%eax, %edx	# tmp505, D.8842
	movq	img(%rip), %rax	# img, img.339
	movl	52(%rax), %eax	# img.339_323->width, D.8842
	leal	3(%rax), %ecx	#, tmp507
	testl	%eax, %eax	# tmp506
	cmovs	%ecx, %eax	# tmp507,, tmp506
	sarl	$2, %eax	#, tmp508
	movl	%eax, %esi	# D.8842,
	movl	$rddata_top_field_mb+3136, %edi	#,
	call	get_mem2Dint	#
	.loc 1 802 0
	movq	img(%rip), %rax	# img, img.340
	movl	60(%rax), %eax	# img.340_326->height, D.8842
	leal	3(%rax), %edx	#, tmp510
	testl	%eax, %eax	# tmp509
	cmovs	%edx, %eax	# tmp510,, tmp509
	sarl	$2, %eax	#, tmp511
	movl	%eax, %edx	# tmp511, D.8842
	movq	img(%rip), %rax	# img, img.341
	movl	52(%rax), %eax	# img.341_329->width, D.8842
	leal	3(%rax), %ecx	#, tmp513
	testl	%eax, %eax	# tmp512
	cmovs	%ecx, %eax	# tmp513,, tmp512
	sarl	$2, %eax	#, tmp514
	movl	%eax, %esi	# D.8842,
	movl	$rddata_bot_field_mb+3136, %edi	#,
	call	get_mem2Dint	#
.L97:
	.loc 1 805 0
	movq	img(%rip), %rax	# img, img.342
	movl	72692(%rax), %eax	# img.342_332->num_blk8x8_uv, D.8842
	leal	4(%rax), %edx	#, D.8842
	movq	img(%rip), %rax	# img, img.343
	movl	72488(%rax), %eax	# img.343_335->FrameSizeInMbs, D.8843
	movq	img(%rip), %rcx	# img, img.344
	leaq	128(%rcx), %rdi	#, D.8849
	movl	%edx, %ecx	# D.8842,
	movl	$4, %edx	#,
	movl	%eax, %esi	# D.8842,
	call	get_mem3Dint	#
	.loc 1 807 0
	movl	$0, %eax	#,
	call	CAVLC_init	#
	.loc 1 809 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L98	#
.L101:
	.loc 1 810 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L99	#
.L100:
	.loc 1 812 0 discriminator 2
	movq	img(%rip), %rax	# img, img.345
	movq	104(%rax), %rax	# img.345_348->ipredmode, D.8855
	movl	-28(%rbp), %edx	# i, tmp515
	movslq	%edx, %rdx	# tmp515, D.8850
	salq	$3, %rdx	#, D.8850
	addq	%rdx, %rax	# D.8850, D.8855
	movq	(%rax), %rax	# *_352, D.8852
	movl	-24(%rbp), %edx	# j, tmp516
	movslq	%edx, %rdx	# tmp516, D.8850
	salq	$2, %rdx	#, D.8850
	addq	%rdx, %rax	# D.8850, D.8852
	movl	$-1, (%rax)	#, *_356
	.loc 1 813 0 discriminator 2
	movq	img(%rip), %rax	# img, img.346
	movq	112(%rax), %rax	# img.346_357->ipredmode8x8, D.8855
	movl	-28(%rbp), %edx	# i, tmp517
	movslq	%edx, %rdx	# tmp517, D.8850
	salq	$3, %rdx	#, D.8850
	addq	%rdx, %rax	# D.8850, D.8855
	movq	(%rax), %rax	# *_361, D.8852
	movl	-24(%rbp), %edx	# j, tmp518
	movslq	%edx, %rdx	# tmp518, D.8850
	salq	$2, %rdx	#, D.8850
	addq	%rdx, %rax	# D.8850, D.8852
	movl	$-1, (%rax)	#, *_365
	.loc 1 810 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L99:
	.loc 1 810 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.347
	movl	60(%rax), %eax	# img.347_345->height, D.8842
	leal	3(%rax), %edx	#, tmp520
	testl	%eax, %eax	# tmp519
	cmovs	%edx, %eax	# tmp520,, tmp519
	sarl	$2, %eax	#, tmp521
	cmpl	-24(%rbp), %eax	# j, D.8842
	jg	.L100	#,
	.loc 1 809 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L98:
	.loc 1 809 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.348
	movl	52(%rax), %eax	# img.348_341->width, D.8842
	leal	3(%rax), %edx	#, tmp523
	testl	%eax, %eax	# tmp522
	cmovs	%edx, %eax	# tmp523,, tmp522
	sarl	$2, %eax	#, tmp524
	cmpl	-28(%rbp), %eax	# i, D.8842
	jg	.L101	#,
	.loc 1 816 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.349
	movl	$0, 88(%rax)	#, img.349_368->mb_y_upd
	.loc 1 818 0
	movq	input(%rip), %rax	# input, input.350
	movl	2920(%rax), %edx	# input.350_369->RandomIntraMBRefresh, D.8842
	movq	img(%rip), %rax	# img, img.351
	movl	60(%rax), %eax	# img.351_371->height, D.8842
	leal	15(%rax), %ecx	#, tmp526
	testl	%eax, %eax	# tmp525
	cmovs	%ecx, %eax	# tmp526,, tmp525
	sarl	$4, %eax	#, tmp527
	movl	%eax, %ecx	# tmp527, D.8842
	movq	img(%rip), %rax	# img, img.352
	movl	52(%rax), %eax	# img.352_374->width, D.8842
	leal	15(%rax), %esi	#, tmp529
	testl	%eax, %eax	# tmp528
	cmovs	%esi, %eax	# tmp529,, tmp528
	sarl	$4, %eax	#, tmp530
	movl	%ecx, %esi	# D.8842,
	movl	%eax, %edi	# D.8842,
	call	RandomIntraInit	#
	.loc 1 820 0
	movl	$0, %eax	#,
	call	InitSEIMessages	#
	.loc 1 825 0
	movq	input(%rip), %rax	# input, input.353
	movl	2924(%rax), %eax	# input.353_377->LFSendParameters, D.8842
	testl	%eax, %eax	# D.8842
	je	.L102	#,
	.loc 1 827 0
	movq	input(%rip), %rax	# input, input.354
	movq	input(%rip), %rdx	# input, input.355
	movl	2932(%rdx), %edx	# input.355_380->LFAlphaC0Offset, D.8842
	addl	%edx, %edx	# D.8842
	movl	%edx, 2932(%rax)	# D.8842, input.354_379->LFAlphaC0Offset
	.loc 1 828 0
	movq	input(%rip), %rax	# input, input.356
	movq	input(%rip), %rdx	# input, input.357
	movl	2936(%rdx), %edx	# input.357_384->LFBetaOffset, D.8842
	addl	%edx, %edx	# D.8842
	movl	%edx, 2936(%rax)	# D.8842, input.356_383->LFBetaOffset
	jmp	.L64	#
.L102:
	.loc 1 832 0
	movq	input(%rip), %rax	# input, input.358
	movl	$0, 2928(%rax)	#, input.358_387->LFDisableIdc
	.loc 1 833 0
	movq	input(%rip), %rax	# input, input.359
	movl	$0, 2932(%rax)	#, input.359_388->LFAlphaC0Offset
	.loc 1 834 0
	movq	input(%rip), %rax	# input, input.360
	movl	$0, 2936(%rax)	#, input.360_389->LFBetaOffset
.L64:
	.loc 1 836 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	init_img, .-init_img
	.globl	free_img
	.type	free_img, @function
free_img:
.LFB7:
	.loc 1 847 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 848 0
	movl	$0, %eax	#,
	call	CloseSEIMessages	#
	.loc 1 849 0
	movq	img(%rip), %rax	# img, img.361
	movq	71920(%rax), %rax	# img.361_1->pred_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 850 0
	movq	img(%rip), %rax	# img, img.362
	movq	71928(%rax), %rax	# img.362_3->all_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 853 0
	movq	input(%rip), %rax	# input, input.363
	movl	1256(%rax), %eax	# input.363_5->BiPredMotionEstimation, D.8860
	testl	%eax, %eax	# D.8860
	je	.L105	#,
	.loc 1 855 0
	movq	img(%rip), %rax	# img, img.364
	movq	71936(%rax), %rax	# img.364_7->bipred_mv1, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 856 0
	movq	img(%rip), %rax	# img, img.365
	movq	71944(%rax), %rax	# img.365_9->bipred_mv2, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
.L105:
	.loc 1 860 0
	movq	img(%rip), %rax	# img, img.366
	movq	14136(%rax), %rax	# img.366_11->cofAC, D.8861
	movq	%rax, %rdi	# D.8861,
	call	free_mem_ACcoeff	#
	.loc 1 861 0
	movq	img(%rip), %rax	# img, img.367
	movq	14144(%rax), %rax	# img.367_13->cofDC, D.8862
	movq	%rax, %rdi	# D.8862,
	call	free_mem_DCcoeff	#
	.loc 1 863 0
	movq	input(%rip), %rax	# input, input.368
	movl	2884(%rax), %eax	# input.368_15->MbInterlace, D.8860
	testl	%eax, %eax	# D.8860
	je	.L106	#,
	.loc 1 865 0
	movq	rddata_top_frame_mb+3232(%rip), %rax	# rddata_top_frame_mb.pred_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 866 0
	movq	rddata_top_frame_mb+3240(%rip), %rax	# rddata_top_frame_mb.all_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 868 0
	movq	rddata_bot_frame_mb+3232(%rip), %rax	# rddata_bot_frame_mb.pred_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 869 0
	movq	rddata_bot_frame_mb+3240(%rip), %rax	# rddata_bot_frame_mb.all_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 871 0
	movq	rddata_top_field_mb+3232(%rip), %rax	# rddata_top_field_mb.pred_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 872 0
	movq	rddata_top_field_mb+3240(%rip), %rax	# rddata_top_field_mb.all_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 874 0
	movq	rddata_bot_field_mb+3232(%rip), %rax	# rddata_bot_field_mb.pred_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 875 0
	movq	rddata_bot_field_mb+3240(%rip), %rax	# rddata_bot_field_mb.all_mv, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 878 0
	movq	input(%rip), %rax	# input, input.369
	movl	1256(%rax), %eax	# input.369_25->BiPredMotionEstimation, D.8860
	testl	%eax, %eax	# D.8860
	je	.L107	#,
	.loc 1 880 0
	movq	rddata_top_frame_mb+3248(%rip), %rax	# rddata_top_frame_mb.bipred_mv1, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 881 0
	movq	rddata_top_frame_mb+3256(%rip), %rax	# rddata_top_frame_mb.bipred_mv2, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 882 0
	movq	rddata_bot_frame_mb+3248(%rip), %rax	# rddata_bot_frame_mb.bipred_mv1, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 883 0
	movq	rddata_bot_frame_mb+3256(%rip), %rax	# rddata_bot_frame_mb.bipred_mv2, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 884 0
	movq	rddata_top_field_mb+3248(%rip), %rax	# rddata_top_field_mb.bipred_mv1, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 885 0
	movq	rddata_top_field_mb+3256(%rip), %rax	# rddata_top_field_mb.bipred_mv2, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 886 0
	movq	rddata_bot_field_mb+3248(%rip), %rax	# rddata_bot_field_mb.bipred_mv1, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
	.loc 1 887 0
	movq	rddata_bot_field_mb+3256(%rip), %rax	# rddata_bot_field_mb.bipred_mv2, D.8859
	movq	%rax, %rdi	# D.8859,
	call	free_mem_mv	#
.L107:
	.loc 1 891 0
	movq	rddata_top_frame_mb+3080(%rip), %rax	# rddata_top_frame_mb.cofAC, D.8861
	movq	%rax, %rdi	# D.8861,
	call	free_mem_ACcoeff	#
	.loc 1 892 0
	movq	rddata_top_frame_mb+3088(%rip), %rax	# rddata_top_frame_mb.cofDC, D.8862
	movq	%rax, %rdi	# D.8862,
	call	free_mem_DCcoeff	#
	.loc 1 894 0
	movq	rddata_bot_frame_mb+3080(%rip), %rax	# rddata_bot_frame_mb.cofAC, D.8861
	movq	%rax, %rdi	# D.8861,
	call	free_mem_ACcoeff	#
	.loc 1 895 0
	movq	rddata_bot_frame_mb+3088(%rip), %rax	# rddata_bot_frame_mb.cofDC, D.8862
	movq	%rax, %rdi	# D.8862,
	call	free_mem_DCcoeff	#
	.loc 1 897 0
	movq	rddata_top_field_mb+3080(%rip), %rax	# rddata_top_field_mb.cofAC, D.8861
	movq	%rax, %rdi	# D.8861,
	call	free_mem_ACcoeff	#
	.loc 1 898 0
	movq	rddata_top_field_mb+3088(%rip), %rax	# rddata_top_field_mb.cofDC, D.8862
	movq	%rax, %rdi	# D.8862,
	call	free_mem_DCcoeff	#
	.loc 1 900 0
	movq	rddata_bot_field_mb+3080(%rip), %rax	# rddata_bot_field_mb.cofAC, D.8861
	movq	%rax, %rdi	# D.8861,
	call	free_mem_ACcoeff	#
	.loc 1 901 0
	movq	rddata_bot_field_mb+3088(%rip), %rax	# rddata_bot_field_mb.cofDC, D.8862
	movq	%rax, %rdi	# D.8862,
	call	free_mem_DCcoeff	#
.L106:
	.loc 1 904 0
	movq	img(%rip), %rax	# img, img.370
	movl	72684(%rax), %edx	# img.370_43->max_imgpel_value, D.8860
	movq	img(%rip), %rax	# img, img.371
	movl	72688(%rax), %eax	# img.371_45->max_imgpel_value_uv, D.8860
	cmpl	%eax, %edx	# D.8860, D.8860
	jle	.L108	#,
	.loc 1 905 0
	movq	img(%rip), %rax	# img, img.372
	movq	71776(%rax), %rdx	# img.372_47->quad, D.8863
	movq	img(%rip), %rax	# img, img.373
	movl	72684(%rax), %eax	# img.373_49->max_imgpel_value, D.8860
	cltq
	leaq	0(,%rax,4), %rcx	#, D.8864
	movq	$-4, %rax	#, tmp126
	subq	%rcx, %rax	# D.8864, D.8865
	addq	%rdx, %rax	# D.8863, D.8863
	movq	%rax, %rdi	# D.8863,
	call	free	#
	jmp	.L109	#
.L108:
	.loc 1 907 0
	movq	img(%rip), %rax	# img, img.374
	movq	71776(%rax), %rdx	# img.374_55->quad, D.8863
	movq	img(%rip), %rax	# img, img.375
	movl	72688(%rax), %eax	# img.375_57->max_imgpel_value_uv, D.8860
	cltq
	leaq	0(,%rax,4), %rcx	#, D.8864
	movq	$-4, %rax	#, tmp127
	subq	%rcx, %rax	# D.8864, D.8865
	addq	%rdx, %rax	# D.8863, D.8863
	movq	%rax, %rdi	# D.8863,
	call	free	#
.L109:
	.loc 1 909 0
	movq	input(%rip), %rax	# input, input.376
	movl	2884(%rax), %eax	# input.376_63->MbInterlace, D.8860
	testl	%eax, %eax	# D.8860
	je	.L104	#,
	.loc 1 911 0
	movq	rddata_bot_frame_mb+3136(%rip), %rax	# rddata_bot_frame_mb.ipredmode, D.8866
	movq	%rax, %rdi	# D.8866,
	call	free_mem2Dint	#
	.loc 1 912 0
	movq	rddata_top_field_mb+3136(%rip), %rax	# rddata_top_field_mb.ipredmode, D.8866
	movq	%rax, %rdi	# D.8866,
	call	free_mem2Dint	#
	.loc 1 913 0
	movq	rddata_bot_field_mb+3136(%rip), %rax	# rddata_bot_field_mb.ipredmode, D.8866
	movq	%rax, %rdi	# D.8866,
	call	free_mem2Dint	#
.L104:
	.loc 1 916 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	free_img, .-free_img
	.section	.rodata
	.align 8
.LC5:
	.string	"malloc_picture: Picture structure"
	.text
	.globl	malloc_picture
	.type	malloc_picture, @function
malloc_picture:
.LFB8:
	.loc 1 931 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 933 0
	movl	$824, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp61, pic
	cmpq	$0, -8(%rbp)	#, pic
	jne	.L112	#,
	.loc 1 933 0 is_stmt 0 discriminator 1
	movl	$.LC5, %edi	#,
	call	no_mem_exit	#
.L112:
	.loc 1 935 0 is_stmt 1
	movq	-8(%rbp), %rax	# pic, D.8867
	.loc 1 936 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	malloc_picture, .-malloc_picture
	.globl	free_picture
	.type	free_picture, @function
free_picture:
.LFB9:
	.loc 1 949 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pic, pic
	.loc 1 950 0
	cmpq	$0, -8(%rbp)	#, pic
	je	.L114	#,
	.loc 1 952 0
	movq	-8(%rbp), %rax	# pic, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free_slice_list	#
	.loc 1 953 0
	movq	-8(%rbp), %rax	# pic, tmp60
	movq	%rax, %rdi	# tmp60,
	call	free	#
.L114:
	.loc 1 955 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	free_picture, .-free_picture
	.section	.rodata
.LC6:
	.string	"r"
.LC7:
	.string	"stat_frame.dat"
.LC8:
	.string	"a"
.LC9:
	.string	"stat_frame.dat.dat"
.LC10:
	.string	"Error open file %s  \n"
	.align 8
.LC11:
	.ascii	" -----------------------------------------------------------"
	.ascii	"------------------------------------------------------------"
	.ascii	"------------------------------------------------------------"
	.ascii	"--------------------------------"
	.string	"-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \n"
	.align 8
.LC12:
	.ascii	"|            Encoder statistics. This file is generated duri"
	.ascii	"ng first encoding session, new sessions will be appended    "
	.ascii	"                                                            "
	.ascii	"                                "
	.string	"                                                                                                                                                                                                                                                              |\n"
	.align 8
.LC13:
	.ascii	"|  ver   | Date  | Time  |    Sequence        |Frm | QP |P/M"
	.ascii	"bInt|   Bits   |  SNRY  |  SNRU  |  SNRV  |  I4  |  I8  | I1"
	.ascii	"6  | IC0  | IC1  | IC2  | IC3  | PI4  | PI8  | PI16 |  P0  |"
	.ascii	"  P1  |  P2  |  P3  | P1*8*| P1*"
	.string	"4*| P2*8*| P2*4*| P3*8*| P3*4*|  P8  | P8:4 | P4*8*| P4*4*| P8:5 | P8:6 | P8:7 | BI4  | BI8  | BI16 |  B0  |  B1  |  B2  |  B3  | B0*8*| B0*4*| B1*8*| B1*4*| B2*8*| B2*4*| B3*8*| B3*4*|  B8  | B8:0 |B80*8*|B80*4*| B8:4 | B4*8*| B4*4*| B8:5 | B8:6 | B8:7 |\n"
.LC14:
	.string	"(FRExt)"
.LC15:
	.string	"9.3"
.LC16:
	.string	"|%4s/%s"
.LC17:
	.string	"%d-%b-%Y"
.LC18:
	.string	"| %1.5s |"
.LC19:
	.string	"%H:%M:%S"
.LC20:
	.string	" %1.5s |"
.LC21:
	.string	"%20.20s|"
.LC22:
	.string	"%3d |"
.LC23:
	.string	"  %d/%d  |"
.LC24:
	.string	" %9d|"
.LC25:
	.string	" %2.4f| %2.4f| %2.4f|"
.LC26:
	.string	" %5d|"
	.text
	.globl	report_frame_statistic
	.type	report_frame_statistic, @function
report_frame_statistic:
.LFB10:
	.loc 1 965 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1080, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 965 0
	movq	%fs:40, %rax	#, tmp414
	movq	%rax, -24(%rbp)	# tmp414, D.8877
	xorl	%eax, %eax	# tmp414
	.loc 1 966 0
	movq	$0, -1072(%rbp)	#, p_stat_frm
	.loc 1 985 0
	movl	$.LC6, %esi	#,
	movl	$.LC7, %edi	#,
	call	fopen	#
	movq	%rax, -1072(%rbp)	# tmp297, p_stat_frm
	cmpq	$0, -1072(%rbp)	#, p_stat_frm
	jne	.L117	#,
	.loc 1 987 0
	movl	$.LC8, %esi	#,
	movl	$.LC7, %edi	#,
	call	fopen	#
	movq	%rax, -1072(%rbp)	# tmp298, p_stat_frm
	cmpq	$0, -1072(%rbp)	#, p_stat_frm
	jne	.L118	#,
	.loc 1 989 0
	movl	$.LC9, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 990 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	jmp	.L120	#
.L118:
	.loc 1 994 0
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp299
	movq	%rax, %rcx	# tmp299,
	movl	$468, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 995 0
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp300
	movq	%rax, %rcx	# tmp300,
	movl	$468, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	fwrite	#
	.loc 1 996 0
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp301
	movq	%rax, %rcx	# tmp301,
	movl	$468, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	jmp	.L120	#
.L117:
	.loc 1 1001 0
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp302
	movq	%rax, %rdi	# tmp302,
	call	fclose	#
	.loc 1 1002 0
	movl	$.LC8, %esi	#,
	movl	$.LC7, %edi	#,
	call	fopen	#
	movq	%rax, -1072(%rbp)	# tmp303, p_stat_frm
	cmpq	$0, -1072(%rbp)	#, p_stat_frm
	jne	.L120	#,
	.loc 1 1004 0
	movl	$.LC9, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 1005 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L120:
	.loc 1 1009 0
	movl	frame_statistic_start(%rip), %eax	# frame_statistic_start, frame_statistic_start.377
	testl	%eax, %eax	# frame_statistic_start.377
	je	.L121	#,
	.loc 1 1011 0
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp304
	movq	%rax, %rcx	# tmp304,
	movl	$468, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
	.loc 1 1012 0
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp305
	movq	%rax, %rcx	# tmp305,
	movl	$468, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
.L121:
	.loc 1 1017 0
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp306
	movl	$.LC14, %ecx	#,
	movl	$.LC15, %edx	#,
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp306,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1026 0
	movl	$0, %edi	#,
	call	time	#
	movq	%rax, -1080(%rbp)	# now.378, now
	.loc 1 1027 0
	leaq	-1080(%rbp), %rax	#, tmp307
	movq	%rax, %rdi	# tmp307,
	call	time	#
	.loc 1 1028 0
	leaq	-1080(%rbp), %rax	#, tmp308
	movq	%rax, %rdi	# tmp308,
	call	localtime	#
	movq	%rax, -1064(%rbp)	# tmp309, l_time
	.loc 1 1029 0
	movq	-1064(%rbp), %rdx	# l_time, tmp310
	leaq	-1024(%rbp), %rax	#, tmp311
	movq	%rdx, %rcx	# tmp310,
	movl	$.LC17, %edx	#,
	movl	$1000, %esi	#,
	movq	%rax, %rdi	# tmp311,
	call	strftime	#
	.loc 1 1030 0
	leaq	-1024(%rbp), %rdx	#, tmp312
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp313
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp313,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1032 0
	movq	-1064(%rbp), %rdx	# l_time, tmp314
	leaq	-1024(%rbp), %rax	#, tmp315
	movq	%rdx, %rcx	# tmp314,
	movl	$.LC19, %edx	#,
	movl	$1000, %esi	#,
	movq	%rax, %rdi	# tmp315,
	call	strftime	#
	.loc 1 1033 0
	leaq	-1024(%rbp), %rdx	#, tmp316
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp317
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp317,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1036 0
	movl	$0, -1088(%rbp)	#, i
	jmp	.L122	#
.L125:
	.loc 1 1037 0
	movq	input(%rip), %rbx	# input, input.379
	movq	input(%rip), %rax	# input, input.381
	addq	$224, %rax	#, D.8869
	movq	%rax, %rdi	# D.8869,
	call	strlen	#
	subl	$20, %eax	#, D.8871
	testl	%eax, %eax	# D.8872
	js	.L123	#,
	.loc 1 1037 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.382
	addq	$224, %rax	#, D.8869
	movq	%rax, %rdi	# D.8869,
	call	strlen	#
	subl	$20, %eax	#, D.8871
	jmp	.L124	#
.L123:
	.loc 1 1037 0 discriminator 2
	movl	$0, %eax	#, iftmp.380
.L124:
	.loc 1 1037 0 discriminator 3
	movl	-1088(%rbp), %edx	# i, tmp318
	addl	%edx, %eax	# tmp318, D.8872
	cltq
	movzbl	224(%rbx,%rax), %edx	# input.379_15->infile, D.8873
	movl	-1088(%rbp), %eax	# i, tmp321
	cltq
	movb	%dl, -1056(%rbp,%rax)	# D.8873, name
	.loc 1 1036 0 is_stmt 1 discriminator 3
	addl	$1, -1088(%rbp)	#, i
.L122:
	.loc 1 1036 0 is_stmt 0 discriminator 1
	cmpl	$19, -1088(%rbp)	#, i
	jle	.L125	#,
	.loc 1 1038 0 is_stmt 1
	leaq	-1056(%rbp), %rdx	#, tmp322
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp323
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp323,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1040 0
	movl	frame_no(%rip), %edx	# frame_no, frame_no.383
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp324
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp324,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1042 0
	movq	img(%rip), %rax	# img, img.384
	movl	40(%rax), %edx	# img.384_33->qp, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp325
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp325,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1044 0
	movq	input(%rip), %rax	# input, input.385
	movl	2884(%rax), %ecx	# input.385_35->MbInterlace, D.8872
	movq	input(%rip), %rax	# input, input.386
	movl	2880(%rax), %edx	# input.386_37->PicInterlace, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp326
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp326,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1047 0
	movq	img(%rip), %rax	# img, img.387
	movl	72464(%rax), %eax	# img.387_39->frame_num, D.8874
	testl	%eax, %eax	# D.8874
	jne	.L126	#,
	.loc 1 1049 0
	movq	stats(%rip), %rax	# stats, stats.388
	movl	704(%rax), %eax	# stats.388_41->bit_ctr_I, tmp327
	movl	%eax, -1084(%rbp)	# tmp327, bitcounter
	jmp	.L127	#
.L126:
	.loc 1 1053 0
	movq	stats(%rip), %rax	# stats, stats.389
	movl	20(%rax), %edx	# stats.389_43->bit_ctr_n, D.8872
	movl	last_bit_ctr_n.5922(%rip), %eax	# last_bit_ctr_n, last_bit_ctr_n.390
	subl	%eax, %edx	# last_bit_ctr_n.390, tmp328
	movl	%edx, %eax	# tmp328, tmp328
	movl	%eax, -1084(%rbp)	# tmp328, bitcounter
	.loc 1 1054 0
	movq	stats(%rip), %rax	# stats, stats.391
	movl	20(%rax), %eax	# stats.391_47->bit_ctr_n, last_bit_ctr_n.392
	movl	%eax, last_bit_ctr_n.5922(%rip)	# last_bit_ctr_n.392, last_bit_ctr_n
.L127:
	.loc 1 1059 0
	movl	-1084(%rbp), %edx	# bitcounter, tmp329
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp330
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp330,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1062 0
	movq	snr(%rip), %rax	# snr, snr.393
	movss	8(%rax), %xmm0	# snr.393_49->snr_v, D.8875
	unpcklps	%xmm0, %xmm0	# D.8875, D.8875
	cvtps2pd	%xmm0, %xmm2	# D.8875, D.8876
	movq	snr(%rip), %rax	# snr, snr.394
	movss	4(%rax), %xmm0	# snr.394_52->snr_u, D.8875
	unpcklps	%xmm0, %xmm0	# D.8875, D.8875
	cvtps2pd	%xmm0, %xmm1	# D.8875, D.8876
	movq	snr(%rip), %rax	# snr, snr.395
	movss	(%rax), %xmm0	# snr.395_55->snr_y, D.8875
	unpcklps	%xmm0, %xmm0	# D.8875, D.8875
	cvtps2pd	%xmm0, %xmm0	# D.8875, D.8876
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp331
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp331,
	movl	$3, %eax	#,
	call	fprintf	#
	.loc 1 1066 0
	movq	stats(%rip), %rax	# stats, stats.396
	movl	884(%rax), %edx	# stats.396_58->mode_use, D.8872
	movl	last_mode_use.5919+156(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp332
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp332,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1067 0
	movq	stats(%rip), %rax	# stats, stats.397
	movl	900(%rax), %edx	# stats.397_62->mode_use, D.8872
	movl	last_mode_use.5919+172(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp333
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp333,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1068 0
	movq	stats(%rip), %rax	# stats, stats.398
	movl	888(%rax), %edx	# stats.398_66->mode_use, D.8872
	movl	last_mode_use.5919+160(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp334
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp334,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1071 0
	movq	stats(%rip), %rax	# stats, stats.399
	movl	672(%rax), %edx	# stats.399_70->intra_chroma_mode, D.8872
	movl	last_mode_chroma_use.5921(%rip), %eax	# last_mode_chroma_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp335
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp335,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1072 0
	movq	stats(%rip), %rax	# stats, stats.400
	movl	676(%rax), %edx	# stats.400_74->intra_chroma_mode, D.8872
	movl	last_mode_chroma_use.5921+4(%rip), %eax	# last_mode_chroma_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp336
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp336,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1073 0
	movq	stats(%rip), %rax	# stats, stats.401
	movl	680(%rax), %edx	# stats.401_78->intra_chroma_mode, D.8872
	movl	last_mode_chroma_use.5921+8(%rip), %eax	# last_mode_chroma_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp337
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp337,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1074 0
	movq	stats(%rip), %rax	# stats, stats.402
	movl	684(%rax), %edx	# stats.402_82->intra_chroma_mode, D.8872
	movl	last_mode_chroma_use.5921+12(%rip), %eax	# last_mode_chroma_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp338
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp338,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1077 0
	movq	stats(%rip), %rax	# stats, stats.403
	movl	764(%rax), %edx	# stats.403_86->mode_use, D.8872
	movl	last_mode_use.5919+36(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp339
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp339,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1078 0
	movq	stats(%rip), %rax	# stats, stats.404
	movl	780(%rax), %edx	# stats.404_90->mode_use, D.8872
	movl	last_mode_use.5919+52(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp340
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp340,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1079 0
	movq	stats(%rip), %rax	# stats, stats.405
	movl	768(%rax), %edx	# stats.405_94->mode_use, D.8872
	movl	last_mode_use.5919+40(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp341
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp341,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1080 0
	movq	stats(%rip), %rax	# stats, stats.406
	movl	728(%rax), %edx	# stats.406_98->mode_use, D.8872
	movl	last_mode_use.5919(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp342
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp342,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1082 0
	movq	stats(%rip), %rax	# stats, stats.407
	movl	732(%rax), %edx	# stats.407_102->mode_use, D.8872
	movl	last_mode_use.5919+4(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp343
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp343,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1083 0
	movq	stats(%rip), %rax	# stats, stats.408
	movl	736(%rax), %edx	# stats.408_106->mode_use, D.8872
	movl	last_mode_use.5919+8(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp344
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp344,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1084 0
	movq	stats(%rip), %rax	# stats, stats.409
	movl	740(%rax), %edx	# stats.409_110->mode_use, D.8872
	movl	last_mode_use.5919+12(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp345
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp345,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1085 0
	movq	stats(%rip), %rax	# stats, stats.410
	movl	76(%rax), %edx	# stats.410_114->mode_use_transform_8x8, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp346
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp346,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1086 0
	movq	stats(%rip), %rax	# stats, stats.411
	movl	376(%rax), %edx	# stats.411_116->mode_use_transform_4x4, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp347
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp347,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1087 0
	movq	stats(%rip), %rax	# stats, stats.412
	movl	80(%rax), %edx	# stats.412_118->mode_use_transform_8x8, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp348
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp348,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1088 0
	movq	stats(%rip), %rax	# stats, stats.413
	movl	380(%rax), %edx	# stats.413_120->mode_use_transform_4x4, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp349
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp349,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1089 0
	movq	stats(%rip), %rax	# stats, stats.414
	movl	84(%rax), %edx	# stats.414_122->mode_use_transform_8x8, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp350
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp350,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1090 0
	movq	stats(%rip), %rax	# stats, stats.415
	movl	384(%rax), %edx	# stats.415_124->mode_use_transform_4x4, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp351
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp351,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1092 0
	movq	stats(%rip), %rax	# stats, stats.416
	movl	760(%rax), %edx	# stats.416_126->mode_use, D.8872
	movl	last_mode_use.5919+32(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp352
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp352,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1094 0
	movq	stats(%rip), %rax	# stats, stats.417
	movl	744(%rax), %edx	# stats.417_130->mode_use, D.8872
	movl	last_mode_use.5919+16(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp353
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp353,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1095 0
	movq	stats(%rip), %rax	# stats, stats.418
	movl	88(%rax), %edx	# stats.418_134->mode_use_transform_8x8, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp354
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp354,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1096 0
	movq	stats(%rip), %rax	# stats, stats.419
	movl	388(%rax), %edx	# stats.419_136->mode_use_transform_4x4, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp355
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp355,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1097 0
	movq	stats(%rip), %rax	# stats, stats.420
	movl	748(%rax), %edx	# stats.420_138->mode_use, D.8872
	movl	last_mode_use.5919+20(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp356
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp356,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1098 0
	movq	stats(%rip), %rax	# stats, stats.421
	movl	752(%rax), %edx	# stats.421_142->mode_use, D.8872
	movl	last_mode_use.5919+24(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp357
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp357,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1099 0
	movq	stats(%rip), %rax	# stats, stats.422
	movl	756(%rax), %edx	# stats.422_146->mode_use, D.8872
	movl	last_mode_use.5919+28(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp358
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp358,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1102 0
	movq	stats(%rip), %rax	# stats, stats.423
	movl	824(%rax), %edx	# stats.423_150->mode_use, D.8872
	movl	last_mode_use.5919+96(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp359
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp359,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1103 0
	movq	stats(%rip), %rax	# stats, stats.424
	movl	840(%rax), %edx	# stats.424_154->mode_use, D.8872
	movl	last_mode_use.5919+112(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp360
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp360,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1104 0
	movq	stats(%rip), %rax	# stats, stats.425
	movl	828(%rax), %edx	# stats.425_158->mode_use, D.8872
	movl	last_mode_use.5919+100(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp361
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp361,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1105 0
	movq	stats(%rip), %rax	# stats, stats.426
	movl	788(%rax), %edx	# stats.426_162->mode_use, D.8872
	movl	last_mode_use.5919+60(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp362
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp362,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1111 0
	movq	stats(%rip), %rax	# stats, stats.427
	movl	792(%rax), %edx	# stats.427_166->mode_use, D.8872
	movl	last_mode_use.5919+64(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp363
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp363,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1112 0
	movq	stats(%rip), %rax	# stats, stats.428
	movl	796(%rax), %edx	# stats.428_170->mode_use, D.8872
	movl	last_mode_use.5919+68(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp364
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp364,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1113 0
	movq	stats(%rip), %rax	# stats, stats.429
	movl	800(%rax), %edx	# stats.429_174->mode_use, D.8872
	movl	last_mode_use.5919+72(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp365
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp365,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1114 0
	movq	stats(%rip), %rax	# stats, stats.430
	movl	132(%rax), %edx	# stats.430_178->mode_use_transform_8x8, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp366
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp366,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1115 0
	movq	stats(%rip), %rax	# stats, stats.431
	movl	432(%rax), %edx	# stats.431_180->mode_use_transform_4x4, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp367
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp367,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1116 0
	movq	stats(%rip), %rax	# stats, stats.432
	movl	136(%rax), %edx	# stats.432_182->mode_use_transform_8x8, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp368
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp368,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1117 0
	movq	stats(%rip), %rax	# stats, stats.433
	movl	436(%rax), %edx	# stats.433_184->mode_use_transform_4x4, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp369
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp369,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1118 0
	movq	stats(%rip), %rax	# stats, stats.434
	movl	140(%rax), %edx	# stats.434_186->mode_use_transform_8x8, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp370
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp370,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1119 0
	movq	stats(%rip), %rax	# stats, stats.435
	movl	440(%rax), %edx	# stats.435_188->mode_use_transform_4x4, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp371
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp371,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1120 0
	movq	stats(%rip), %rax	# stats, stats.436
	movl	144(%rax), %edx	# stats.436_190->mode_use_transform_8x8, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp372
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp372,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1121 0
	movq	stats(%rip), %rax	# stats, stats.437
	movl	444(%rax), %edx	# stats.437_192->mode_use_transform_4x4, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp373
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp373,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1123 0
	movq	stats(%rip), %rax	# stats, stats.438
	movl	820(%rax), %edx	# stats.438_194->mode_use, D.8872
	movl	last_mode_use.5919+92(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp374
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp374,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1124 0
	movq	stats(%rip), %rax	# stats, stats.439
	movl	40(%rax), %edx	# stats.439_198->b8_mode_0_use, D.8872
	movq	stats(%rip), %rax	# stats, stats.440
	movl	44(%rax), %eax	# stats.440_200->b8_mode_0_use, D.8872
	leal	(%rdx,%rax), %ecx	#, D.8872
	movl	last_b8_mode_0.5920+8(%rip), %edx	# last_b8_mode_0, D.8872
	movl	last_b8_mode_0.5920+12(%rip), %eax	# last_b8_mode_0, D.8872
	addl	%edx, %eax	# D.8872, D.8872
	subl	%eax, %ecx	# D.8872, D.8872
	movl	%ecx, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp375
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp375,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1125 0
	movq	stats(%rip), %rax	# stats, stats.441
	movl	44(%rax), %edx	# stats.441_207->b8_mode_0_use, D.8872
	movl	last_b8_mode_0.5920+12(%rip), %eax	# last_b8_mode_0, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp376
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp376,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1126 0
	movq	stats(%rip), %rax	# stats, stats.442
	movl	40(%rax), %edx	# stats.442_211->b8_mode_0_use, D.8872
	movl	last_b8_mode_0.5920+8(%rip), %eax	# last_b8_mode_0, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp377
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp377,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1127 0
	movq	stats(%rip), %rax	# stats, stats.443
	movl	804(%rax), %edx	# stats.443_215->mode_use, D.8872
	movl	last_mode_use.5919+76(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp378
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp378,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1128 0
	movq	stats(%rip), %rax	# stats, stats.444
	movl	148(%rax), %edx	# stats.444_219->mode_use_transform_8x8, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp379
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp379,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1129 0
	movq	stats(%rip), %rax	# stats, stats.445
	movl	448(%rax), %edx	# stats.445_221->mode_use_transform_4x4, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp380
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp380,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1130 0
	movq	stats(%rip), %rax	# stats, stats.446
	movl	808(%rax), %edx	# stats.446_223->mode_use, D.8872
	movl	last_mode_use.5919+80(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp381
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp381,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1131 0
	movq	stats(%rip), %rax	# stats, stats.447
	movl	812(%rax), %edx	# stats.447_227->mode_use, D.8872
	movl	last_mode_use.5919+84(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp382
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp382,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1132 0
	movq	stats(%rip), %rax	# stats, stats.448
	movl	816(%rax), %edx	# stats.448_231->mode_use, D.8872
	movl	last_mode_use.5919+88(%rip), %eax	# last_mode_use, D.8872
	subl	%eax, %edx	# D.8872, D.8872
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp383
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp383,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1134 0
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp384
	movq	%rax, %rsi	# tmp384,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1137 0
	movq	stats(%rip), %rax	# stats, stats.449
	movl	884(%rax), %eax	# stats.449_235->mode_use, D.8872
	movl	%eax, last_mode_use.5919+156(%rip)	# D.8872, last_mode_use
	.loc 1 1138 0
	movq	stats(%rip), %rax	# stats, stats.450
	movl	900(%rax), %eax	# stats.450_237->mode_use, D.8872
	movl	%eax, last_mode_use.5919+172(%rip)	# D.8872, last_mode_use
	.loc 1 1139 0
	movq	stats(%rip), %rax	# stats, stats.451
	movl	888(%rax), %eax	# stats.451_239->mode_use, D.8872
	movl	%eax, last_mode_use.5919+160(%rip)	# D.8872, last_mode_use
	.loc 1 1140 0
	movl	$0, -1088(%rbp)	#, i
	jmp	.L128	#
.L129:
	.loc 1 1142 0 discriminator 2
	movq	stats(%rip), %rax	# stats, stats.452
	movl	-1088(%rbp), %edx	# i, tmp386
	movslq	%edx, %rdx	# tmp386, tmp385
	addq	$180, %rdx	#, tmp387
	movl	8(%rax,%rdx,4), %edx	# stats.452_242->mode_use, D.8872
	movl	-1088(%rbp), %eax	# i, tmp389
	cltq
	movl	%edx, last_mode_use.5919(,%rax,4)	# D.8872, last_mode_use
	.loc 1 1143 0 discriminator 2
	movq	stats(%rip), %rax	# stats, stats.453
	movl	-1088(%rbp), %edx	# i, tmp391
	movslq	%edx, %rdx	# tmp391, tmp390
	addq	$195, %rdx	#, tmp392
	movl	8(%rax,%rdx,4), %eax	# stats.453_244->mode_use, D.8872
	movl	-1088(%rbp), %edx	# i, tmp394
	movslq	%edx, %rdx	# tmp394, tmp393
	addq	$15, %rdx	#, tmp395
	movl	%eax, last_mode_use.5919(,%rdx,4)	# D.8872, last_mode_use
	.loc 1 1144 0 discriminator 2
	movq	stats(%rip), %rax	# stats, stats.454
	movl	-1088(%rbp), %edx	# i, tmp397
	movslq	%edx, %rdx	# tmp397, tmp396
	addq	$16, %rdx	#, tmp398
	movl	$0, 8(%rax,%rdx,4)	#, stats.454_246->mode_use_transform_8x8
	.loc 1 1145 0 discriminator 2
	movq	stats(%rip), %rax	# stats, stats.455
	movl	-1088(%rbp), %edx	# i, tmp400
	movslq	%edx, %rdx	# tmp400, tmp399
	addq	$31, %rdx	#, tmp401
	movl	$0, 8(%rax,%rdx,4)	#, stats.455_247->mode_use_transform_8x8
	.loc 1 1146 0 discriminator 2
	movq	stats(%rip), %rax	# stats, stats.456
	movl	-1088(%rbp), %edx	# i, tmp403
	movslq	%edx, %rdx	# tmp403, tmp402
	addq	$92, %rdx	#, tmp404
	movl	$0, 4(%rax,%rdx,4)	#, stats.456_248->mode_use_transform_4x4
	.loc 1 1147 0 discriminator 2
	movq	stats(%rip), %rax	# stats, stats.457
	movl	-1088(%rbp), %edx	# i, tmp406
	movslq	%edx, %rdx	# tmp406, tmp405
	addq	$107, %rdx	#, tmp407
	movl	$0, 4(%rax,%rdx,4)	#, stats.457_249->mode_use_transform_4x4
	.loc 1 1140 0 discriminator 2
	addl	$1, -1088(%rbp)	#, i
.L128:
	.loc 1 1140 0 is_stmt 0 discriminator 1
	cmpl	$14, -1088(%rbp)	#, i
	jle	.L129	#,
	.loc 1 1150 0 is_stmt 1
	movq	stats(%rip), %rax	# stats, stats.458
	movl	40(%rax), %eax	# stats.458_251->b8_mode_0_use, D.8872
	movl	%eax, last_b8_mode_0.5920+8(%rip)	# D.8872, last_b8_mode_0
	.loc 1 1151 0
	movq	stats(%rip), %rax	# stats, stats.459
	movl	44(%rax), %eax	# stats.459_253->b8_mode_0_use, D.8872
	movl	%eax, last_b8_mode_0.5920+12(%rip)	# D.8872, last_b8_mode_0
	.loc 1 1153 0
	movl	$0, -1088(%rbp)	#, i
	jmp	.L130	#
.L131:
	.loc 1 1154 0 discriminator 2
	movq	stats(%rip), %rax	# stats, stats.460
	movl	-1088(%rbp), %edx	# i, tmp409
	movslq	%edx, %rdx	# tmp409, tmp408
	addq	$168, %rdx	#, tmp410
	movl	(%rax,%rdx,4), %edx	# stats.460_256->intra_chroma_mode, D.8872
	movl	-1088(%rbp), %eax	# i, tmp412
	cltq
	movl	%edx, last_mode_chroma_use.5921(,%rax,4)	# D.8872, last_mode_chroma_use
	.loc 1 1153 0 discriminator 2
	addl	$1, -1088(%rbp)	#, i
.L130:
	.loc 1 1153 0 is_stmt 0 discriminator 1
	cmpl	$3, -1088(%rbp)	#, i
	jle	.L131	#,
	.loc 1 1156 0 is_stmt 1
	movl	$0, frame_statistic_start(%rip)	#, frame_statistic_start
	.loc 1 1157 0
	movq	-1072(%rbp), %rax	# p_stat_frm, tmp413
	movq	%rax, %rdi	# tmp413,
	call	fclose	#
	.loc 1 1158 0
	movq	-24(%rbp), %rax	# D.8877, tmp415
	xorq	%fs:40, %rax	#, tmp415
	je	.L132	#,
	call	__stack_chk_fail	#
.L132:
	addq	$1080, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	report_frame_statistic, .-report_frame_statistic
	.section	.rodata
	.align 8
.LC27:
	.string	"-------------------------------------------------------------------------------\n"
	.align 8
.LC28:
	.string	" Freq. for encoded bitstream       : %1.0f\n"
	.align 8
.LC29:
	.string	" Hadamard transform                : Used for QPel\n"
	.align 8
.LC30:
	.string	" Hadamard transform                : Used\n"
	.align 8
.LC31:
	.string	" Hadamard transform                : Not used\n"
	.align 8
.LC32:
	.string	" Image format                      : %dx%d\n"
	.align 8
.LC33:
	.string	" Error robustness                  : On\n"
	.align 8
.LC34:
	.string	" Error robustness                  : Off\n"
	.align 8
.LC35:
	.string	" Search range                      : %d\n"
	.align 8
.LC36:
	.string	" Total number of references        : %d\n"
	.align 8
.LC37:
	.string	" References for P slices           : %d\n"
	.align 8
.LC38:
	.string	" List0 references for B slices     : %d\n"
	.align 8
.LC39:
	.string	" List1 references for B slices     : %d\n"
	.align 8
.LC41:
	.string	" Total encoding time for the seq.  : %.3f sec \n"
	.align 8
.LC42:
	.string	" Total ME time for sequence        : %.3f sec \n"
	.align 8
.LC43:
	.string	" Sequence type                     :"
	.align 8
.LC44:
	.string	" Pyramid (QP: I %d, P %d, B %d) \n"
.LC45:
	.string	"-RB"
.LC46:
	.string	"-B"
.LC47:
	.string	"-P"
.LC48:
	.string	" %s (QP: I %d, P %d, RB %d) \n"
.LC49:
	.string	" %s (QP: I %d, P %d, B %d) \n"
.LC50:
	.string	" IPPP (QP: I %d, P %d) \n"
	.align 8
.LC51:
	.string	" I-P-P-SP-P (QP: I %d, P %d, SP (%d, %d)) \n"
	.align 8
.LC52:
	.string	" Entropy coding method             : CAVLC\n"
	.align 8
.LC53:
	.string	" Entropy coding method             : CABAC\n"
	.align 8
.LC54:
	.string	" Profile/Level IDC                 : (%d,%d)\n"
	.align 8
.LC55:
	.string	" Search range restrictions         : none\n"
	.align 8
.LC56:
	.string	" Search range restrictions         : older reference frames\n"
	.align 8
.LC57:
	.string	" Search range restrictions         : smaller blocks and older reference frames\n"
	.align 8
.LC58:
	.string	" RD-optimized mode decision        : used\n"
	.align 8
.LC59:
	.string	" RD-optimized mode decision        : not used\n"
	.align 8
.LC60:
	.string	" Data Partitioning Mode            : 1 partition \n"
	.align 8
.LC61:
	.string	" Data Partitioning Mode            : 3 partitions \n"
	.align 8
.LC62:
	.string	" Data Partitioning Mode            : not supported\n"
	.align 8
.LC63:
	.string	" Output File Format                : H.264 Bit Stream File Format \n"
	.align 8
.LC64:
	.string	" Output File Format                : RTP Packet File Format \n"
	.align 8
.LC65:
	.string	" Output File Format                : not supported\n"
	.align 8
.LC66:
	.string	" Residue Color Transform           : used\n"
	.align 8
.LC67:
	.string	" Residue Color Transform           : not used\n"
	.align 8
.LC68:
	.string	"------------------ Average data all frames  -----------------------------------\n"
	.align 8
.LC69:
	.string	" SNR Y(dB)                         : %5.2f\n"
	.align 8
.LC70:
	.string	" SNR U(dB)                         : %5.2f\n"
	.align 8
.LC71:
	.string	" SNR V(dB)                         : %5.2f\n"
	.align 8
.LC72:
	.string	" Total bits                        : %d (I %5d, P %5d, B %d NVB %d) \n"
	.align 8
.LC74:
	.string	" Bit rate (kbit/s)  @ %2.2f Hz     : %5.2f\n"
	.align 8
.LC75:
	.string	" Total bits                        : %d (I %5d, P %5d, NVB %d) \n"
	.align 8
.LC76:
	.string	" Bits to avoid Startcode Emulation : %d \n"
	.align 8
.LC77:
	.string	" Bits for parameter sets           : %d \n"
.LC78:
	.string	"9 (FRExt)"
.LC79:
	.string	"Exit JM %s encoder ver %s "
	.text
	.globl	report
	.type	report, @function
report:
.LFB11:
	.loc 1 1176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1104, %rsp	#,
	.loc 1 1176 0
	movq	%fs:40, %rax	#, tmp561
	movq	%rax, -8(%rbp)	# tmp561, D.8907
	xorl	%eax, %eax	# tmp561
	.loc 1 1191 0
	movl	Iframe_ctr(%rip), %eax	# Iframe_ctr, Iframe_ctr.461
	movl	%eax, -1040(%rbp)	# Iframe_ctr.461, bit_use
	.loc 1 1192 0
	movl	Pframe_ctr(%rip), %eax	# Pframe_ctr, Pframe_ctr.462
	movl	$1, %edx	#, tmp463
	testl	%eax, %eax	# Pframe_ctr.462
	cmovle	%edx, %eax	# Pframe_ctr.462,, tmp463, D.8901
	movl	%eax, -1056(%rbp)	# D.8901, bit_use
	.loc 1 1193 0
	movl	Bframe_ctr(%rip), %eax	# Bframe_ctr, Bframe_ctr.463
	movl	%eax, -1048(%rbp)	# Bframe_ctr.463, bit_use
	.loc 1 1196 0
	movl	$0, -1076(%rbp)	#, j
	jmp	.L134	#
.L135:
	.loc 1 1198 0 discriminator 2
	movl	-1076(%rbp), %eax	# j, tmp465
	cltq
	movl	$0, -1052(%rbp,%rax,8)	#, bit_use
	.loc 1 1196 0 discriminator 2
	addl	$1, -1076(%rbp)	#, j
.L134:
	.loc 1 1196 0 is_stmt 0 discriminator 1
	cmpl	$4, -1076(%rbp)	#, j
	jle	.L135	#,
	.loc 1 1201 0 is_stmt 1
	movl	$0, -1076(%rbp)	#, j
	jmp	.L136	#
.L139:
	.loc 1 1203 0
	movl	$0, -1080(%rbp)	#, i
	jmp	.L137	#
.L138:
	.loc 1 1204 0 discriminator 2
	movl	-1076(%rbp), %eax	# j, tmp467
	cltq
	movl	-1052(%rbp,%rax,8), %esi	# bit_use, D.8901
	movq	stats(%rip), %rcx	# stats, stats.464
	movl	-1080(%rbp), %eax	# i, tmp469
	movslq	%eax, %rdi	# tmp469, tmp468
	movl	-1076(%rbp), %eax	# j, tmp471
	movslq	%eax, %rdx	# tmp471, tmp470
	movq	%rdx, %rax	# tmp470, tmp472
	salq	$4, %rax	#, tmp473
	subq	%rdx, %rax	# tmp470, tmp472
	addq	%rdi, %rax	# tmp468, tmp474
	addq	$256, %rax	#, tmp475
	movl	4(%rcx,%rax,4), %eax	# stats.464_22->bit_use_mode, D.8901
	leal	(%rsi,%rax), %edx	#, D.8901
	movl	-1076(%rbp), %eax	# j, tmp477
	cltq
	movl	%edx, -1052(%rbp,%rax,8)	# D.8901, bit_use
	.loc 1 1203 0 discriminator 2
	addl	$1, -1080(%rbp)	#, i
.L137:
	.loc 1 1203 0 is_stmt 0 discriminator 1
	cmpl	$14, -1080(%rbp)	#, i
	jle	.L138	#,
	.loc 1 1206 0 is_stmt 1
	movl	-1076(%rbp), %eax	# j, tmp479
	cltq
	movl	-1052(%rbp,%rax,8), %edx	# bit_use, D.8901
	movq	stats(%rip), %rax	# stats, stats.465
	movl	-1076(%rbp), %ecx	# j, tmp481
	movslq	%ecx, %rcx	# tmp481, tmp480
	addq	$340, %rcx	#, tmp482
	movl	8(%rax,%rcx,4), %eax	# stats.465_27->bit_use_header, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movl	-1076(%rbp), %eax	# j, tmp484
	cltq
	movl	%edx, -1052(%rbp,%rax,8)	# D.8901, bit_use
	.loc 1 1207 0
	movl	-1076(%rbp), %eax	# j, tmp486
	cltq
	movl	-1052(%rbp,%rax,8), %edx	# bit_use, D.8901
	movq	stats(%rip), %rax	# stats, stats.466
	movl	-1076(%rbp), %ecx	# j, tmp488
	movslq	%ecx, %rcx	# tmp488, tmp487
	addq	$336, %rcx	#, tmp489
	movl	4(%rax,%rcx,4), %eax	# stats.466_31->bit_use_mb_type, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movl	-1076(%rbp), %eax	# j, tmp491
	cltq
	movl	%edx, -1052(%rbp,%rax,8)	# D.8901, bit_use
	.loc 1 1208 0
	movl	-1076(%rbp), %eax	# j, tmp493
	cltq
	movl	-1052(%rbp,%rax,8), %edx	# bit_use, D.8901
	movq	stats(%rip), %rax	# stats, stats.467
	movl	-1076(%rbp), %ecx	# j, tmp495
	movslq	%ecx, %rcx	# tmp495, tmp494
	addq	$344, %rcx	#, tmp496
	movl	12(%rax,%rcx,4), %eax	# stats.467_35->tmp_bit_use_cbp, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movl	-1076(%rbp), %eax	# j, tmp498
	cltq
	movl	%edx, -1052(%rbp,%rax,8)	# D.8901, bit_use
	.loc 1 1209 0
	movl	-1076(%rbp), %eax	# j, tmp500
	cltq
	movl	-1052(%rbp,%rax,8), %edx	# bit_use, D.8901
	movq	stats(%rip), %rax	# stats, stats.468
	movl	-1076(%rbp), %ecx	# j, tmp502
	movslq	%ecx, %rcx	# tmp502, tmp501
	addq	$352, %rcx	#, tmp503
	movl	(%rax,%rcx,4), %eax	# stats.468_39->bit_use_coeffY, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movl	-1076(%rbp), %eax	# j, tmp505
	cltq
	movl	%edx, -1052(%rbp,%rax,8)	# D.8901, bit_use
	.loc 1 1210 0
	movl	-1076(%rbp), %eax	# j, tmp507
	cltq
	movl	-1052(%rbp,%rax,8), %edx	# bit_use, D.8901
	movq	stats(%rip), %rax	# stats, stats.469
	movl	-1076(%rbp), %ecx	# j, tmp509
	movslq	%ecx, %rcx	# tmp509, tmp508
	addq	$356, %rcx	#, tmp510
	movl	4(%rax,%rcx,4), %eax	# stats.469_43->bit_use_coeffC, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movl	-1076(%rbp), %eax	# j, tmp512
	cltq
	movl	%edx, -1052(%rbp,%rax,8)	# D.8901, bit_use
	.loc 1 1211 0
	movl	-1076(%rbp), %eax	# j, tmp514
	cltq
	movl	-1052(%rbp,%rax,8), %edx	# bit_use, D.8901
	movq	stats(%rip), %rax	# stats, stats.470
	movl	-1076(%rbp), %ecx	# j, tmp516
	movslq	%ecx, %rcx	# tmp516, tmp515
	addq	$360, %rcx	#, tmp517
	movl	8(%rax,%rcx,4), %eax	# stats.470_47->bit_use_delta_quant, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movl	-1076(%rbp), %eax	# j, tmp519
	cltq
	movl	%edx, -1052(%rbp,%rax,8)	# D.8901, bit_use
	.loc 1 1212 0
	movl	-1076(%rbp), %eax	# j, tmp521
	cltq
	movl	-1052(%rbp,%rax,8), %edx	# bit_use, D.8901
	movq	stats(%rip), %rax	# stats, stats.471
	movl	-1076(%rbp), %ecx	# j, tmp523
	movslq	%ecx, %rcx	# tmp523, tmp522
	addq	$332, %rcx	#, tmp524
	movl	(%rax,%rcx,4), %eax	# stats.471_51->bit_use_stuffingBits, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movl	-1076(%rbp), %eax	# j, tmp526
	cltq
	movl	%edx, -1052(%rbp,%rax,8)	# D.8901, bit_use
	.loc 1 1201 0
	addl	$1, -1076(%rbp)	#, j
.L136:
	.loc 1 1201 0 is_stmt 0 discriminator 1
	cmpl	$4, -1076(%rbp)	#, j
	jle	.L139	#,
	.loc 1 1215 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.472
	movss	48(%rax), %xmm1	# img.472_55->framerate, D.8902
	movq	input(%rip), %rax	# input, input.473
	movl	1236(%rax), %eax	# input.473_57->successive_Bframe, D.8901
	addl	$1, %eax	#, D.8901
	cvtsi2ss	%eax, %xmm0	# D.8901, D.8902
	mulss	%xmm1, %xmm0	# D.8902, D.8902
	movq	input(%rip), %rax	# input, input.474
	movl	20(%rax), %eax	# input.474_62->jumpd, D.8901
	addl	$1, %eax	#, D.8901
	cvtsi2ss	%eax, %xmm1	# D.8901, D.8902
	divss	%xmm1, %xmm0	# D.8902, tmp527
	movss	%xmm0, -1064(%rbp)	# tmp527, frame_rate
	.loc 1 1218 0
	movq	stats(%rip), %rax	# stats, stats.475
	movq	stats(%rip), %rdx	# stats, stats.476
	movl	704(%rdx), %edx	# stats.476_68->bit_ctr_I, D.8901
	cvtsi2ss	%edx, %xmm0	# D.8901, D.8902
	mulss	-1064(%rbp), %xmm0	# frame_rate, D.8902
	movq	input(%rip), %rdx	# input, input.477
	movl	8(%rdx), %ecx	# input.477_72->no_frames, D.8901
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.478
	addl	%ecx, %edx	# D.8901, D.8901
	cvtsi2ss	%edx, %xmm1	# D.8901, D.8902
	divss	%xmm1, %xmm0	# D.8902, D.8902
	movss	%xmm0, 716(%rax)	# D.8902, stats.475_67->bitrate_I
	.loc 1 1219 0
	movq	stats(%rip), %rax	# stats, stats.479
	movq	stats(%rip), %rdx	# stats, stats.480
	movl	708(%rdx), %edx	# stats.480_79->bit_ctr_P, D.8901
	cvtsi2ss	%edx, %xmm0	# D.8901, D.8902
	mulss	-1064(%rbp), %xmm0	# frame_rate, D.8902
	movq	input(%rip), %rdx	# input, input.481
	movl	8(%rdx), %ecx	# input.481_83->no_frames, D.8901
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.482
	addl	%ecx, %edx	# D.8901, D.8901
	cvtsi2ss	%edx, %xmm1	# D.8901, D.8902
	divss	%xmm1, %xmm0	# D.8902, D.8902
	movss	%xmm0, 720(%rax)	# D.8902, stats.479_78->bitrate_P
	.loc 1 1220 0
	movq	stats(%rip), %rax	# stats, stats.483
	movq	stats(%rip), %rdx	# stats, stats.484
	movl	712(%rdx), %edx	# stats.484_90->bit_ctr_B, D.8901
	cvtsi2ss	%edx, %xmm0	# D.8901, D.8902
	mulss	-1064(%rbp), %xmm0	# frame_rate, D.8902
	movq	input(%rip), %rdx	# input, input.485
	movl	8(%rdx), %ecx	# input.485_94->no_frames, D.8901
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.486
	addl	%ecx, %edx	# D.8901, D.8901
	cvtsi2ss	%edx, %xmm1	# D.8901, D.8902
	divss	%xmm1, %xmm0	# D.8902, D.8902
	movss	%xmm0, 724(%rax)	# D.8902, stats.483_89->bitrate_B
	.loc 1 1222 0
	movq	stdout(%rip), %rax	# stdout, stdout.487
	movq	%rax, %rcx	# stdout.487,
	movl	$80, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC27, %edi	#,
	call	fwrite	#
	.loc 1 1223 0
	movq	img(%rip), %rax	# img, img.488
	movss	48(%rax), %xmm1	# img.488_101->framerate, D.8902
	movq	input(%rip), %rax	# input, input.489
	movl	20(%rax), %eax	# input.489_103->jumpd, D.8901
	addl	$1, %eax	#, D.8901
	cvtsi2ss	%eax, %xmm0	# D.8901, D.8902
	divss	%xmm0, %xmm1	# D.8902, D.8902
	movaps	%xmm1, %xmm0	# D.8902, D.8902
	unpcklps	%xmm0, %xmm0	# D.8902, D.8902
	cvtps2pd	%xmm0, %xmm0	# D.8902, D.8903
	movq	stdout(%rip), %rax	# stdout, stdout.490
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# stdout.490,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 1224 0
	movq	input(%rip), %rax	# input, input.491
	movl	24(%rax), %eax	# input.491_110->hadamard, D.8901
	testl	%eax, %eax	# D.8901
	je	.L140	#,
	.loc 1 1226 0
	movq	input(%rip), %rax	# input, input.492
	movl	28(%rax), %eax	# input.492_112->hadamardqpel, D.8901
	testl	%eax, %eax	# D.8901
	je	.L141	#,
	.loc 1 1227 0
	movq	stdout(%rip), %rax	# stdout, stdout.493
	movq	%rax, %rcx	# stdout.493,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
	jmp	.L143	#
.L141:
	.loc 1 1229 0
	movq	stdout(%rip), %rax	# stdout, stdout.494
	movq	%rax, %rcx	# stdout.494,
	movl	$42, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC30, %edi	#,
	call	fwrite	#
	jmp	.L143	#
.L140:
	.loc 1 1232 0
	movq	stdout(%rip), %rax	# stdout, stdout.495
	movq	%rax, %rcx	# stdout.495,
	movl	$46, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC31, %edi	#,
	call	fwrite	#
.L143:
	.loc 1 1234 0
	movq	input(%rip), %rax	# input, input.496
	movl	68(%rax), %ecx	# input.496_117->img_height, D.8901
	movq	input(%rip), %rax	# input, input.497
	movl	64(%rax), %edx	# input.497_119->img_width, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.498
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# stdout.498,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1236 0
	movq	input(%rip), %rax	# input, input.499
	movl	76(%rax), %eax	# input.499_122->intra_upd, D.8901
	testl	%eax, %eax	# D.8901
	je	.L144	#,
	.loc 1 1237 0
	movq	stdout(%rip), %rax	# stdout, stdout.500
	movq	%rax, %rcx	# stdout.500,
	movl	$40, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC33, %edi	#,
	call	fwrite	#
	jmp	.L145	#
.L144:
	.loc 1 1239 0
	movq	stdout(%rip), %rax	# stdout, stdout.501
	movq	%rax, %rcx	# stdout.501,
	movl	$41, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC34, %edi	#,
	call	fwrite	#
.L145:
	.loc 1 1240 0
	movq	input(%rip), %rax	# input, input.502
	movl	32(%rax), %edx	# input.502_126->search_range, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.503
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# stdout.503,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1242 0
	movq	input(%rip), %rax	# input, input.504
	movl	36(%rax), %edx	# input.504_129->num_ref_frames, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.505
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# stdout.505,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1243 0
	movq	input(%rip), %rax	# input, input.507
	movl	40(%rax), %eax	# input.507_132->P_List0_refs, D.8901
	testl	%eax, %eax	# D.8901
	je	.L146	#,
	.loc 1 1243 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.508
	movl	40(%rax), %eax	# input.508_134->P_List0_refs, iftmp.506
	jmp	.L147	#
.L146:
	.loc 1 1243 0 discriminator 2
	movq	input(%rip), %rax	# input, input.509
	movl	36(%rax), %eax	# input.509_136->num_ref_frames, iftmp.506
.L147:
	.loc 1 1243 0 discriminator 3
	movq	stdout(%rip), %rcx	# stdout, stdout.510
	movl	%eax, %edx	# iftmp.506,
	movl	$.LC37, %esi	#,
	movq	%rcx, %rdi	# stdout.510,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1244 0 is_stmt 1 discriminator 3
	movq	input(%rip), %rax	# input, input.511
	movl	1236(%rax), %eax	# input.511_139->successive_Bframe, D.8901
	testl	%eax, %eax	# D.8901
	je	.L148	#,
	.loc 1 1246 0
	movq	input(%rip), %rax	# input, input.513
	movl	44(%rax), %eax	# input.513_141->B_List0_refs, D.8901
	testl	%eax, %eax	# D.8901
	je	.L149	#,
	.loc 1 1246 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.514
	movl	44(%rax), %eax	# input.514_143->B_List0_refs, iftmp.512
	jmp	.L150	#
.L149:
	.loc 1 1246 0 discriminator 2
	movq	input(%rip), %rax	# input, input.515
	movl	36(%rax), %eax	# input.515_145->num_ref_frames, iftmp.512
.L150:
	.loc 1 1246 0 discriminator 3
	movq	stdout(%rip), %rcx	# stdout, stdout.516
	movl	%eax, %edx	# iftmp.512,
	movl	$.LC38, %esi	#,
	movq	%rcx, %rdi	# stdout.516,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1247 0 is_stmt 1 discriminator 3
	movq	input(%rip), %rax	# input, input.518
	movl	48(%rax), %eax	# input.518_148->B_List1_refs, D.8901
	testl	%eax, %eax	# D.8901
	je	.L151	#,
	.loc 1 1247 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.519
	movl	48(%rax), %eax	# input.519_150->B_List1_refs, iftmp.517
	jmp	.L152	#
.L151:
	.loc 1 1247 0 discriminator 2
	movq	input(%rip), %rax	# input, input.520
	movl	36(%rax), %eax	# input.520_152->num_ref_frames, iftmp.517
.L152:
	.loc 1 1247 0 discriminator 3
	movq	stdout(%rip), %rcx	# stdout, stdout.521
	movl	%eax, %edx	# iftmp.517,
	movl	$.LC39, %esi	#,
	movq	%rcx, %rdi	# stdout.521,
	movl	$0, %eax	#,
	call	fprintf	#
.L148:
	.loc 1 1250 0 is_stmt 1
	movl	tot_time(%rip), %eax	# tot_time, tot_time.522
	cvtsi2sd	%eax, %xmm0	# tot_time.522, D.8903
	movsd	.LC40(%rip), %xmm1	#, tmp528
	mulsd	%xmm1, %xmm0	# tmp528, D.8903
	movq	stdout(%rip), %rax	# stdout, stdout.523
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# stdout.523,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 1251 0
	movl	me_tot_time(%rip), %eax	# me_tot_time, me_tot_time.524
	cvtsi2sd	%eax, %xmm0	# me_tot_time.524, D.8903
	movsd	.LC40(%rip), %xmm1	#, tmp529
	mulsd	%xmm1, %xmm0	# tmp529, D.8903
	movq	stdout(%rip), %rax	# stdout, stdout.525
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# stdout.525,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 1254 0
	movq	stdout(%rip), %rax	# stdout, stdout.526
	movq	%rax, %rcx	# stdout.526,
	movl	$36, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC43, %edi	#,
	call	fwrite	#
	.loc 1 1256 0
	movq	input(%rip), %rax	# input, input.527
	movl	1236(%rax), %eax	# input.527_164->successive_Bframe, D.8901
	testl	%eax, %eax	# D.8901
	jle	.L153	#,
	.loc 1 1256 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.528
	movl	1320(%rax), %eax	# input.528_166->PyramidCoding, D.8901
	testl	%eax, %eax	# D.8901
	je	.L153	#,
	.loc 1 1259 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.529
	.loc 1 1258 0
	movl	1240(%rax), %esi	# input.529_168->qpB, D.8901
	.loc 1 1259 0
	movq	input(%rip), %rax	# input, input.530
	.loc 1 1258 0
	movl	16(%rax), %ecx	# input.530_170->qpN, D.8901
	.loc 1 1259 0
	movq	input(%rip), %rax	# input, input.531
	.loc 1 1258 0
	movl	12(%rax), %edx	# input.531_172->qp0, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.532
	movl	%esi, %r8d	# D.8901,
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# stdout.532,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L154	#
.L153:
	.loc 1 1261 0
	movq	input(%rip), %rax	# input, input.533
	movl	1236(%rax), %eax	# input.533_175->successive_Bframe, D.8901
	testl	%eax, %eax	# D.8901
	jle	.L155	#,
.LBB3:
	.loc 1 1266 0
	leaq	-1008(%rbp), %rax	#, tmp530
	movw	$73, (%rax)	#, MEM[(void *)&seqtype]
	.loc 1 1268 0
	movl	$0, -1068(%rbp)	#, j
	jmp	.L156	#
.L167:
	.loc 1 1270 0
	movl	$0, -1072(%rbp)	#, i
	jmp	.L157	#
.L164:
	.loc 1 1272 0
	movq	input(%rip), %rax	# input, input.534
	movl	1316(%rax), %eax	# input.534_181->BRefPictures, D.8901
	testl	%eax, %eax	# D.8901
	je	.L158	#,
	.loc 1 1273 0
	leaq	-1008(%rbp), %rax	#, tmp531
	movq	%rax, %rdi	# tmp531,
	call	strlen	#
	movl	$79, %edx	#, tmp532
	subl	%eax, %edx	# D.8905, D.8905
	movl	%edx, %eax	# D.8905, D.8905
	testl	%eax, %eax	# D.8901
	js	.L159	#,
	.loc 1 1273 0 is_stmt 0 discriminator 1
	leaq	-1008(%rbp), %rax	#, tmp533
	movq	%rax, %rdi	# tmp533,
	call	strlen	#
	movl	$79, %edx	#, tmp534
	subl	%eax, %edx	# D.8905, D.8905
	movl	%edx, %eax	# D.8905, D.8905
	cltq
	jmp	.L160	#
.L159:
	.loc 1 1273 0 discriminator 2
	movl	$0, %eax	#, iftmp.535
.L160:
	.loc 1 1273 0 discriminator 1
	leaq	-1008(%rbp), %rcx	#, tmp535
	movq	%rax, %rdx	# iftmp.535,
	movl	$.LC45, %esi	#,
	movq	%rcx, %rdi	# tmp535,
	call	strncat	#
	jmp	.L161	#
.L158:
	.loc 1 1275 0 is_stmt 1
	leaq	-1008(%rbp), %rax	#, tmp536
	movq	%rax, %rdi	# tmp536,
	call	strlen	#
	movl	$79, %edx	#, tmp537
	subl	%eax, %edx	# D.8905, D.8905
	movl	%edx, %eax	# D.8905, D.8905
	testl	%eax, %eax	# D.8901
	js	.L162	#,
	.loc 1 1275 0 is_stmt 0 discriminator 1
	leaq	-1008(%rbp), %rax	#, tmp538
	movq	%rax, %rdi	# tmp538,
	call	strlen	#
	movl	$79, %edx	#, tmp539
	subl	%eax, %edx	# D.8905, D.8905
	movl	%edx, %eax	# D.8905, D.8905
	cltq
	jmp	.L163	#
.L162:
	.loc 1 1275 0 discriminator 2
	movl	$0, %eax	#, iftmp.536
.L163:
	.loc 1 1275 0 discriminator 3
	leaq	-1008(%rbp), %rcx	#, tmp540
	movq	%rax, %rdx	# iftmp.536,
	movl	$.LC46, %esi	#,
	movq	%rcx, %rdi	# tmp540,
	call	strncat	#
.L161:
	.loc 1 1270 0 is_stmt 1
	addl	$1, -1072(%rbp)	#, i
.L157:
	.loc 1 1270 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.537
	movl	1236(%rax), %eax	# input.537_179->successive_Bframe, D.8901
	cmpl	-1072(%rbp), %eax	# i, D.8901
	jg	.L164	#,
	.loc 1 1277 0 is_stmt 1
	leaq	-1008(%rbp), %rax	#, tmp541
	movq	%rax, %rdi	# tmp541,
	call	strlen	#
	movl	$79, %edx	#, tmp542
	subl	%eax, %edx	# D.8905, D.8905
	movl	%edx, %eax	# D.8905, D.8905
	testl	%eax, %eax	# D.8901
	js	.L165	#,
	.loc 1 1277 0 is_stmt 0 discriminator 1
	leaq	-1008(%rbp), %rax	#, tmp543
	movq	%rax, %rdi	# tmp543,
	call	strlen	#
	movl	$79, %edx	#, tmp544
	subl	%eax, %edx	# D.8905, D.8905
	movl	%edx, %eax	# D.8905, D.8905
	cltq
	jmp	.L166	#
.L165:
	.loc 1 1277 0 discriminator 2
	movl	$0, %eax	#, iftmp.538
.L166:
	.loc 1 1277 0 discriminator 3
	leaq	-1008(%rbp), %rcx	#, tmp545
	movq	%rax, %rdx	# iftmp.538,
	movl	$.LC47, %esi	#,
	movq	%rcx, %rdi	# tmp545,
	call	strncat	#
	.loc 1 1268 0 is_stmt 1 discriminator 3
	addl	$1, -1068(%rbp)	#, j
.L156:
	.loc 1 1268 0 is_stmt 0 discriminator 1
	cmpl	$1, -1068(%rbp)	#, j
	jle	.L167	#,
	.loc 1 1279 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.539
	movl	1316(%rax), %eax	# input.539_215->BRefPictures, D.8901
	testl	%eax, %eax	# D.8901
	je	.L168	#,
	.loc 1 1280 0
	movq	input(%rip), %rax	# input, input.541
	movl	1240(%rax), %edx	# input.541_217->qpB, D.8901
	movq	input(%rip), %rax	# input, input.542
	movl	1244(%rax), %eax	# input.542_219->qpBRSOffset, D.8901
	addl	%edx, %eax	# D.8901, D.8901
	testl	%eax, %eax	# D.8901
	js	.L169	#,
	.loc 1 1280 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.543
	movl	1240(%rax), %edx	# input.543_222->qpB, D.8901
	movq	input(%rip), %rax	# input, input.544
	movl	1244(%rax), %eax	# input.544_224->qpBRSOffset, D.8901
	addl	%edx, %eax	# D.8901, D.8901
	movl	$51, %edx	#, tmp546
	cmpl	$51, %eax	#, D.8901
	cmovg	%edx, %eax	# D.8901,, tmp546, iftmp.540
	jmp	.L170	#
.L169:
	.loc 1 1280 0 discriminator 2
	movl	$0, %eax	#, iftmp.540
.L170:
	movq	input(%rip), %rdx	# input, input.545
	movl	16(%rdx), %esi	# input.545_229->qpN, D.8901
	movq	input(%rip), %rdx	# input, input.546
	movl	12(%rdx), %ecx	# input.546_231->qp0, D.8901
	movq	stdout(%rip), %rdi	# stdout, stdout.547
	leaq	-1008(%rbp), %rdx	#, tmp547
	movl	%eax, %r9d	# iftmp.540,
	movl	%esi, %r8d	# D.8901,
	movl	$.LC48, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L154	#
.L168:
	.loc 1 1282 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.548
	movl	1240(%rax), %edi	# input.548_234->qpB, D.8901
	movq	input(%rip), %rax	# input, input.549
	movl	16(%rax), %esi	# input.549_236->qpN, D.8901
	movq	input(%rip), %rax	# input, input.550
	movl	12(%rax), %ecx	# input.550_238->qp0, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.551
	leaq	-1008(%rbp), %rdx	#, tmp548
	movl	%edi, %r9d	# D.8901,
	movl	%esi, %r8d	# D.8901,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# stdout.551,
	movl	$0, %eax	#,
	call	fprintf	#
.LBE3:
	jmp	.L154	#
.L155:
	.loc 1 1284 0
	movq	input(%rip), %rax	# input, input.552
	movl	1236(%rax), %eax	# input.552_241->successive_Bframe, D.8901
	testl	%eax, %eax	# D.8901
	jne	.L172	#,
	.loc 1 1284 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.553
	movl	1272(%rax), %eax	# input.553_243->sp_periodicity, D.8901
	testl	%eax, %eax	# D.8901
	jne	.L172	#,
	movq	input(%rip), %rax	# input, input.554
	movl	16(%rax), %ecx	# input.554_245->qpN, D.8901
	movq	input(%rip), %rax	# input, input.555
	movl	12(%rax), %edx	# input.555_247->qp0, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.556
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# stdout.556,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L154	#
.L172:
	.loc 1 1286 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.557
	movl	1280(%rax), %edi	# input.557_250->qpsp_pred, D.8901
	movq	input(%rip), %rax	# input, input.558
	movl	1276(%rax), %esi	# input.558_252->qpsp, D.8901
	movq	input(%rip), %rax	# input, input.559
	movl	16(%rax), %ecx	# input.559_254->qpN, D.8901
	movq	input(%rip), %rax	# input, input.560
	movl	12(%rax), %edx	# input.560_256->qp0, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.561
	movl	%edi, %r9d	# D.8901,
	movl	%esi, %r8d	# D.8901,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# stdout.561,
	movl	$0, %eax	#,
	call	fprintf	#
.L154:
	.loc 1 1289 0
	movq	input(%rip), %rax	# input, input.562
	movl	2356(%rax), %eax	# input.562_259->symbol_mode, D.8901
	testl	%eax, %eax	# D.8901
	jne	.L173	#,
	.loc 1 1290 0
	movq	stdout(%rip), %rax	# stdout, stdout.563
	movq	%rax, %rcx	# stdout.563,
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC52, %edi	#,
	call	fwrite	#
	jmp	.L174	#
.L173:
	.loc 1 1292 0
	movq	stdout(%rip), %rax	# stdout, stdout.564
	movq	%rax, %rcx	# stdout.564,
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	fwrite	#
.L174:
	.loc 1 1294 0
	movq	input(%rip), %rax	# input, input.565
	movl	4(%rax), %ecx	# input.565_263->LevelIDC, D.8901
	movq	input(%rip), %rax	# input, input.566
	movl	(%rax), %edx	# input.566_265->ProfileIDC, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.567
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# stdout.567,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1296 0
	movq	input(%rip), %rax	# input, input.568
	movl	2436(%rax), %eax	# input.568_268->full_search, D.8901
	cmpl	$2, %eax	#, D.8901
	jne	.L175	#,
	.loc 1 1297 0
	movq	stdout(%rip), %rax	# stdout, stdout.569
	movq	%rax, %rcx	# stdout.569,
	movl	$42, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC55, %edi	#,
	call	fwrite	#
	jmp	.L176	#
.L175:
	.loc 1 1298 0
	movq	input(%rip), %rax	# input, input.570
	movl	2436(%rax), %eax	# input.570_271->full_search, D.8901
	cmpl	$1, %eax	#, D.8901
	jne	.L177	#,
	.loc 1 1299 0
	movq	stdout(%rip), %rax	# stdout, stdout.571
	movq	%rax, %rcx	# stdout.571,
	movl	$60, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC56, %edi	#,
	call	fwrite	#
	jmp	.L176	#
.L177:
	.loc 1 1301 0
	movq	stdout(%rip), %rax	# stdout, stdout.572
	movq	%rax, %rcx	# stdout.572,
	movl	$79, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC57, %edi	#,
	call	fwrite	#
.L176:
	.loc 1 1304 0
	movq	input(%rip), %rax	# input, input.573
	movl	2464(%rax), %eax	# input.573_275->rdopt, D.8901
	testl	%eax, %eax	# D.8901
	je	.L178	#,
	.loc 1 1305 0
	movq	stdout(%rip), %rax	# stdout, stdout.574
	movq	%rax, %rcx	# stdout.574,
	movl	$42, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC58, %edi	#,
	call	fwrite	#
	jmp	.L179	#
.L178:
	.loc 1 1307 0
	movq	stdout(%rip), %rax	# stdout, stdout.575
	movq	%rax, %rcx	# stdout.575,
	movl	$46, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC59, %edi	#,
	call	fwrite	#
.L179:
	.loc 1 1309 0
	movq	input(%rip), %rax	# input, input.576
	movl	2364(%rax), %eax	# input.576_279->partition_mode, D.8901
	testl	%eax, %eax	# D.8901
	je	.L181	#,
	cmpl	$1, %eax	#, D.8901
	je	.L182	#,
	jmp	.L196	#
.L181:
	.loc 1 1312 0
	movq	stdout(%rip), %rax	# stdout, stdout.577
	movq	%rax, %rcx	# stdout.577,
	movl	$50, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC60, %edi	#,
	call	fwrite	#
	.loc 1 1313 0
	jmp	.L183	#
.L182:
	.loc 1 1315 0
	movq	stdout(%rip), %rax	# stdout, stdout.578
	movq	%rax, %rcx	# stdout.578,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC61, %edi	#,
	call	fwrite	#
	.loc 1 1316 0
	jmp	.L183	#
.L196:
	.loc 1 1318 0
	movq	stdout(%rip), %rax	# stdout, stdout.579
	movq	%rax, %rcx	# stdout.579,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC62, %edi	#,
	call	fwrite	#
	.loc 1 1319 0
	nop
.L183:
	.loc 1 1322 0
	movq	input(%rip), %rax	# input, input.580
	movl	2360(%rax), %eax	# input.580_284->of_mode, D.8901
	testl	%eax, %eax	# D.8901
	je	.L185	#,
	cmpl	$1, %eax	#, D.8901
	je	.L186	#,
	jmp	.L197	#
.L185:
	.loc 1 1325 0
	movq	stdout(%rip), %rax	# stdout, stdout.581
	movq	%rax, %rcx	# stdout.581,
	movl	$67, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC63, %edi	#,
	call	fwrite	#
	.loc 1 1326 0
	jmp	.L187	#
.L186:
	.loc 1 1328 0
	movq	stdout(%rip), %rax	# stdout, stdout.582
	movq	%rax, %rcx	# stdout.582,
	movl	$61, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC64, %edi	#,
	call	fwrite	#
	.loc 1 1329 0
	jmp	.L187	#
.L197:
	.loc 1 1331 0
	movq	stdout(%rip), %rax	# stdout, stdout.583
	movq	%rax, %rcx	# stdout.583,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC65, %edi	#,
	call	fwrite	#
	.loc 1 1332 0
	nop
.L187:
	.loc 1 1335 0
	movq	input(%rip), %rax	# input, input.584
	movl	3328(%rax), %eax	# input.584_289->residue_transform_flag, D.8901
	testl	%eax, %eax	# D.8901
	je	.L188	#,
	.loc 1 1336 0
	movq	stdout(%rip), %rax	# stdout, stdout.585
	movq	%rax, %rcx	# stdout.585,
	movl	$42, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC66, %edi	#,
	call	fwrite	#
	jmp	.L189	#
.L188:
	.loc 1 1338 0
	movq	stdout(%rip), %rax	# stdout, stdout.586
	movq	%rax, %rcx	# stdout.586,
	movl	$46, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC67, %edi	#,
	call	fwrite	#
.L189:
	.loc 1 1341 0
	movq	stdout(%rip), %rax	# stdout, stdout.587
	movq	%rax, %rcx	# stdout.587,
	movl	$80, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC68, %edi	#,
	call	fwrite	#
	.loc 1 1342 0
	movq	snr(%rip), %rax	# snr, snr.588
	movss	60(%rax), %xmm0	# snr.588_294->snr_ya, D.8902
	unpcklps	%xmm0, %xmm0	# D.8902, D.8902
	cvtps2pd	%xmm0, %xmm0	# D.8902, D.8903
	movq	stdout(%rip), %rax	# stdout, stdout.589
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# stdout.589,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 1343 0
	movq	snr(%rip), %rax	# snr, snr.590
	movss	64(%rax), %xmm0	# snr.590_298->snr_ua, D.8902
	unpcklps	%xmm0, %xmm0	# D.8902, D.8902
	cvtps2pd	%xmm0, %xmm0	# D.8902, D.8903
	movq	stdout(%rip), %rax	# stdout, stdout.591
	movl	$.LC70, %esi	#,
	movq	%rax, %rdi	# stdout.591,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 1344 0
	movq	snr(%rip), %rax	# snr, snr.592
	movss	68(%rax), %xmm0	# snr.592_302->snr_va, D.8902
	unpcklps	%xmm0, %xmm0	# D.8902, D.8902
	cvtps2pd	%xmm0, %xmm0	# D.8902, D.8903
	movq	stdout(%rip), %rax	# stdout, stdout.593
	movl	$.LC71, %esi	#,
	movq	%rax, %rdi	# stdout.593,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 1346 0
	movl	Bframe_ctr(%rip), %eax	# Bframe_ctr, Bframe_ctr.594
	testl	%eax, %eax	# Bframe_ctr.594
	je	.L190	#,
	.loc 1 1349 0
	movq	stats(%rip), %rax	# stats, stats.595
	.loc 1 1348 0
	movl	1488(%rax), %esi	# stats.595_307->bit_ctr_parametersets, D.8901
	.loc 1 1349 0
	movq	stats(%rip), %rax	# stats, stats.596
	.loc 1 1348 0
	movl	712(%rax), %r8d	# stats.596_309->bit_ctr_B, D.8901
	.loc 1 1349 0
	movq	stats(%rip), %rax	# stats, stats.597
	.loc 1 1348 0
	movl	708(%rax), %edi	# stats.597_311->bit_ctr_P, D.8901
	.loc 1 1349 0
	movq	stats(%rip), %rax	# stats, stats.598
	.loc 1 1348 0
	movl	704(%rax), %ecx	# stats.598_313->bit_ctr_I, D.8901
	.loc 1 1349 0
	movq	stats(%rip), %rax	# stats, stats.599
	movl	708(%rax), %edx	# stats.599_315->bit_ctr_P, D.8901
	movq	stats(%rip), %rax	# stats, stats.600
	movl	704(%rax), %eax	# stats.600_317->bit_ctr_I, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movq	stats(%rip), %rax	# stats, stats.601
	movl	712(%rax), %eax	# stats.601_320->bit_ctr_B, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movq	stats(%rip), %rax	# stats, stats.602
	movl	1488(%rax), %eax	# stats.602_323->bit_ctr_parametersets, D.8901
	.loc 1 1348 0
	addl	%edx, %eax	# D.8901, tmp549
	movl	%eax, -1060(%rbp)	# tmp549, total_bits
	movq	stdout(%rip), %rax	# stdout, stdout.603
	movl	-1060(%rbp), %edx	# total_bits, tmp550
	movl	%esi, (%rsp)	# D.8901,
	movl	%r8d, %r9d	# D.8901,
	movl	%edi, %r8d	# D.8901,
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# stdout.603,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1351 0
	movq	img(%rip), %rax	# img, img.604
	movss	48(%rax), %xmm1	# img.604_327->framerate, D.8902
	movq	input(%rip), %rax	# input, input.605
	movl	1236(%rax), %eax	# input.605_329->successive_Bframe, D.8901
	addl	$1, %eax	#, D.8901
	cvtsi2ss	%eax, %xmm0	# D.8901, D.8902
	mulss	%xmm1, %xmm0	# D.8902, D.8902
	movq	input(%rip), %rax	# input, input.606
	movl	20(%rax), %eax	# input.606_334->jumpd, D.8901
	addl	$1, %eax	#, D.8901
	cvtsi2ss	%eax, %xmm1	# D.8901, D.8902
	divss	%xmm1, %xmm0	# D.8902, tmp551
	movss	%xmm0, -1064(%rbp)	# tmp551, frame_rate
	.loc 1 1352 0
	movq	stats(%rip), %rax	# stats, stats.607
	cvtsi2ss	-1060(%rbp), %xmm0	# total_bits, D.8902
	mulss	-1064(%rbp), %xmm0	# frame_rate, D.8902
	movq	input(%rip), %rdx	# input, input.608
	movl	8(%rdx), %ecx	# input.608_342->no_frames, D.8901
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.609
	addl	%ecx, %edx	# D.8901, D.8901
	cvtsi2ss	%edx, %xmm1	# D.8901, D.8902
	divss	%xmm1, %xmm0	# D.8902, D.8902
	movss	%xmm0, 12(%rax)	# D.8902, stats.607_339->bitrate
	.loc 1 1354 0
	movq	stats(%rip), %rax	# stats, stats.610
	movss	12(%rax), %xmm0	# stats.610_348->bitrate, D.8902
	movss	.LC73(%rip), %xmm1	#, tmp552
	divss	%xmm1, %xmm0	# tmp552, D.8902
	unpcklps	%xmm0, %xmm0	# D.8902, D.8902
	cvtps2pd	%xmm0, %xmm1	# D.8902, D.8903
	movss	-1064(%rbp), %xmm0	# frame_rate, D.8903
	cvtps2pd	%xmm0, %xmm0	# D.8903, D.8903
	movq	stdout(%rip), %rax	# stdout, stdout.611
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# stdout.611,
	movl	$2, %eax	#,
	call	fprintf	#
	jmp	.L191	#
.L190:
	.loc 1 1357 0
	movq	input(%rip), %rax	# input, input.612
	movl	1272(%rax), %eax	# input.612_354->sp_periodicity, D.8901
	testl	%eax, %eax	# D.8901
	jne	.L192	#,
	.loc 1 1360 0
	movq	stats(%rip), %rax	# stats, stats.613
	.loc 1 1359 0
	movl	1488(%rax), %edi	# stats.613_356->bit_ctr_parametersets, D.8901
	.loc 1 1360 0
	movq	stats(%rip), %rax	# stats, stats.614
	.loc 1 1359 0
	movl	708(%rax), %esi	# stats.614_358->bit_ctr_P, D.8901
	.loc 1 1360 0
	movq	stats(%rip), %rax	# stats, stats.615
	.loc 1 1359 0
	movl	704(%rax), %ecx	# stats.615_360->bit_ctr_I, D.8901
	.loc 1 1360 0
	movq	stats(%rip), %rax	# stats, stats.616
	movl	708(%rax), %edx	# stats.616_362->bit_ctr_P, D.8901
	movq	stats(%rip), %rax	# stats, stats.617
	movl	704(%rax), %eax	# stats.617_364->bit_ctr_I, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movq	stats(%rip), %rax	# stats, stats.618
	movl	1488(%rax), %eax	# stats.618_367->bit_ctr_parametersets, D.8901
	.loc 1 1359 0
	addl	%edx, %eax	# D.8901, tmp553
	movl	%eax, -1060(%rbp)	# tmp553, total_bits
	movq	stdout(%rip), %rax	# stdout, stdout.619
	movl	-1060(%rbp), %edx	# total_bits, tmp554
	movl	%edi, %r9d	# D.8901,
	movl	%esi, %r8d	# D.8901,
	movl	$.LC75, %esi	#,
	movq	%rax, %rdi	# stdout.619,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1363 0
	movq	img(%rip), %rax	# img, img.620
	movss	48(%rax), %xmm1	# img.620_371->framerate, D.8902
	movq	input(%rip), %rax	# input, input.621
	movl	20(%rax), %eax	# input.621_373->jumpd, D.8901
	addl	$1, %eax	#, D.8901
	cvtsi2ss	%eax, %xmm0	# D.8901, D.8902
	divss	%xmm0, %xmm1	# D.8902, tmp555
	movaps	%xmm1, %xmm0	# tmp555, tmp555
	movss	%xmm0, -1064(%rbp)	# tmp555, frame_rate
	.loc 1 1364 0
	movq	stats(%rip), %rax	# stats, stats.622
	cvtsi2ss	-1060(%rbp), %xmm0	# total_bits, D.8902
	mulss	-1064(%rbp), %xmm0	# frame_rate, D.8902
	movq	input(%rip), %rdx	# input, input.623
	movl	8(%rdx), %edx	# input.623_381->no_frames, D.8901
	cvtsi2ss	%edx, %xmm1	# D.8901, D.8902
	divss	%xmm1, %xmm0	# D.8902, D.8902
	movss	%xmm0, 12(%rax)	# D.8902, stats.622_378->bitrate
	.loc 1 1366 0
	movq	stats(%rip), %rax	# stats, stats.624
	movss	12(%rax), %xmm0	# stats.624_385->bitrate, D.8902
	movss	.LC73(%rip), %xmm1	#, tmp556
	divss	%xmm1, %xmm0	# tmp556, D.8902
	unpcklps	%xmm0, %xmm0	# D.8902, D.8902
	cvtps2pd	%xmm0, %xmm1	# D.8902, D.8903
	movss	-1064(%rbp), %xmm0	# frame_rate, D.8903
	cvtps2pd	%xmm0, %xmm0	# D.8903, D.8903
	movq	stdout(%rip), %rax	# stdout, stdout.625
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# stdout.625,
	movl	$2, %eax	#,
	call	fprintf	#
	jmp	.L191	#
.L192:
	.loc 1 1371 0
	movq	stats(%rip), %rax	# stats, stats.626
	.loc 1 1370 0
	movl	1488(%rax), %edi	# stats.626_391->bit_ctr_parametersets, D.8901
	.loc 1 1371 0
	movq	stats(%rip), %rax	# stats, stats.627
	.loc 1 1370 0
	movl	708(%rax), %esi	# stats.627_393->bit_ctr_P, D.8901
	.loc 1 1371 0
	movq	stats(%rip), %rax	# stats, stats.628
	.loc 1 1370 0
	movl	704(%rax), %ecx	# stats.628_395->bit_ctr_I, D.8901
	.loc 1 1371 0
	movq	stats(%rip), %rax	# stats, stats.629
	movl	708(%rax), %edx	# stats.629_397->bit_ctr_P, D.8901
	movq	stats(%rip), %rax	# stats, stats.630
	movl	704(%rax), %eax	# stats.630_399->bit_ctr_I, D.8901
	addl	%eax, %edx	# D.8901, D.8901
	movq	stats(%rip), %rax	# stats, stats.631
	movl	1488(%rax), %eax	# stats.631_402->bit_ctr_parametersets, D.8901
	.loc 1 1370 0
	addl	%edx, %eax	# D.8901, tmp557
	movl	%eax, -1060(%rbp)	# tmp557, total_bits
	movq	stdout(%rip), %rax	# stdout, stdout.632
	movl	-1060(%rbp), %edx	# total_bits, tmp558
	movl	%edi, %r9d	# D.8901,
	movl	%esi, %r8d	# D.8901,
	movl	$.LC75, %esi	#,
	movq	%rax, %rdi	# stdout.632,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1374 0
	movq	img(%rip), %rax	# img, img.633
	movss	48(%rax), %xmm1	# img.633_406->framerate, D.8902
	movq	input(%rip), %rax	# input, input.634
	movl	20(%rax), %eax	# input.634_408->jumpd, D.8901
	addl	$1, %eax	#, D.8901
	cvtsi2ss	%eax, %xmm0	# D.8901, D.8902
	divss	%xmm0, %xmm1	# D.8902, tmp559
	movaps	%xmm1, %xmm0	# tmp559, tmp559
	movss	%xmm0, -1064(%rbp)	# tmp559, frame_rate
	.loc 1 1375 0
	movq	stats(%rip), %rax	# stats, stats.635
	cvtsi2ss	-1060(%rbp), %xmm0	# total_bits, D.8902
	mulss	-1064(%rbp), %xmm0	# frame_rate, D.8902
	movq	input(%rip), %rdx	# input, input.636
	movl	8(%rdx), %edx	# input.636_416->no_frames, D.8901
	cvtsi2ss	%edx, %xmm1	# D.8901, D.8902
	divss	%xmm1, %xmm0	# D.8902, D.8902
	movss	%xmm0, 12(%rax)	# D.8902, stats.635_413->bitrate
	.loc 1 1377 0
	movq	stats(%rip), %rax	# stats, stats.637
	movss	12(%rax), %xmm0	# stats.637_420->bitrate, D.8902
	movss	.LC73(%rip), %xmm1	#, tmp560
	divss	%xmm1, %xmm0	# tmp560, D.8902
	unpcklps	%xmm0, %xmm0	# D.8902, D.8902
	cvtps2pd	%xmm0, %xmm1	# D.8902, D.8903
	movss	-1064(%rbp), %xmm0	# frame_rate, D.8903
	cvtps2pd	%xmm0, %xmm0	# D.8903, D.8903
	movq	stdout(%rip), %rax	# stdout, stdout.638
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# stdout.638,
	movl	$2, %eax	#,
	call	fprintf	#
.L191:
	.loc 1 1380 0
	movq	stats(%rip), %rax	# stats, stats.639
	movl	28(%rax), %edx	# stats.639_426->bit_ctr_emulationprevention, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.640
	movl	$.LC76, %esi	#,
	movq	%rax, %rdi	# stdout.640,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1381 0
	movq	stats(%rip), %rax	# stats, stats.641
	movl	1488(%rax), %edx	# stats.641_429->bit_ctr_parametersets, D.8901
	movq	stdout(%rip), %rax	# stdout, stdout.642
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# stdout.642,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1383 0
	movq	stdout(%rip), %rax	# stdout, stdout.643
	movq	%rax, %rcx	# stdout.643,
	movl	$80, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC27, %edi	#,
	call	fwrite	#
	.loc 1 1384 0
	movq	stdout(%rip), %rax	# stdout, stdout.644
	movl	$.LC15, %ecx	#,
	movl	$.LC78, %edx	#,
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# stdout.644,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1385 0
	movq	stdout(%rip), %rax	# stdout, stdout.645
	movq	%rax, %rsi	# stdout.645,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1777 0
	movq	input(%rip), %rax	# input, input.646
	movl	3228(%rax), %eax	# input.646_435->ReportFrameStats, D.8901
	testl	%eax, %eax	# D.8901
	je	.L133	#,
	.loc 1 1779 0
	movl	$.LC8, %esi	#,
	movl	$.LC7, %edi	#,
	call	fopen	#
	movq	%rax, p_log(%rip)	# p_log.647, p_log
	movq	p_log(%rip), %rax	# p_log, p_log.648
	testq	%rax, %rax	# p_log.648
	jne	.L194	#,
	.loc 1 1781 0
	movl	$.LC9, %ecx	#,
	movl	$.LC10, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	jmp	.L133	#
.L194:
	.loc 1 1786 0
	movq	p_log(%rip), %rax	# p_log, p_log.649
	movq	%rax, %rcx	# p_log.649,
	movl	$468, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 1787 0
	movq	p_log(%rip), %rax	# p_log, p_log.650
	movq	%rax, %rdi	# p_log.650,
	call	fclose	#
.L133:
	.loc 1 1790 0
	movq	-8(%rbp), %rax	# D.8907, tmp562
	xorq	%fs:40, %rax	#, tmp562
	je	.L195	#,
	call	__stack_chk_fail	#
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	report, .-report
	.section	.rodata
	.align 8
.LC80:
	.string	"------------------------------- JM %s %s --------------------------------\n"
	.align 8
.LC81:
	.string	" Input YUV file                    : %s \n"
	.align 8
.LC82:
	.string	" Output H.264 bitstream            : %s \n"
	.align 8
.LC83:
	.string	" Output YUV file                   : %s \n"
	.align 8
.LC84:
	.string	" YUV Format                        : %s \n"
	.align 8
.LC85:
	.string	" Frames to be encoded I-P/B        : %d/%d\n"
	.align 8
.LC86:
	.string	" PicInterlace / MbInterlace        : %d/%d\n"
	.align 8
.LC87:
	.string	" Transform8x8Mode                  : %d\n"
	.align 8
.LC88:
	.string	"-------------------------------------------------------------------------------"
	.align 8
.LC89:
	.string	"  Frame  Bit/pic WP QP   SnrY    SnrU    SnrV    Time(ms) MET(ms) Frm/Fld   I D"
	.text
	.globl	information_init
	.type	information_init, @function
information_init:
.LFB12:
	.loc 1 1804 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 1805 0
	movabsq	$4192915248637171033, %rax	#, tmp87
	movq	%rax, -48(%rbp)	# tmp87, yuv_types
	movw	$48, -40(%rbp)	#, yuv_types
	movabsq	$4193478198590592345, %rax	#, tmp88
	movq	%rax, -38(%rbp)	# tmp88, yuv_types
	movw	$48, -30(%rbp)	#, yuv_types
	movabsq	$4193478198590592345, %rax	#, tmp89
	movq	%rax, -28(%rbp)	# tmp89, yuv_types
	movw	$50, -20(%rbp)	#, yuv_types
	movabsq	$4194041148544013657, %rax	#, tmp90
	movq	%rax, -18(%rbp)	# tmp90, yuv_types
	movw	$52, -10(%rbp)	#, yuv_types
	.loc 1 1807 0
	movl	$.LC14, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$.LC80, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1808 0
	movq	input(%rip), %rax	# input, input.651
	addq	$224, %rax	#, D.8959
	movq	%rax, %rsi	# D.8959,
	movl	$.LC81, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1809 0
	movq	input(%rip), %rax	# input, input.652
	addq	$424, %rax	#, D.8959
	movq	%rax, %rsi	# D.8959,
	movl	$.LC82, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1810 0
	movl	p_dec(%rip), %eax	# p_dec, p_dec.653
	cmpl	$-1, %eax	#, p_dec.653
	je	.L199	#,
	.loc 1 1811 0
	movq	input(%rip), %rax	# input, input.654
	addq	$624, %rax	#, D.8959
	movq	%rax, %rsi	# D.8959,
	movl	$.LC83, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L199:
	.loc 1 1812 0
	movq	img(%rip), %rax	# img, img.655
	movl	72700(%rax), %eax	# img.655_8->yuv_format, D.8960
	leaq	-48(%rbp), %rcx	#, tmp83
	movslq	%eax, %rdx	# D.8960, tmp84
	movq	%rdx, %rax	# tmp84, tmp85
	salq	$2, %rax	#, tmp85
	addq	%rdx, %rax	# tmp84, tmp85
	addq	%rax, %rax	# tmp86
	addq	%rcx, %rax	# tmp83, D.8961
	movq	%rax, %rsi	# D.8961,
	movl	$.LC84, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1813 0
	movq	input(%rip), %rax	# input, input.656
	movl	1236(%rax), %edx	# input.656_11->successive_Bframe, D.8960
	movq	input(%rip), %rax	# input, input.657
	movl	8(%rax), %eax	# input.657_13->no_frames, D.8960
	subl	$1, %eax	#, D.8960
	imull	%eax, %edx	# D.8960, D.8960
	movq	input(%rip), %rax	# input, input.658
	movl	8(%rax), %eax	# input.658_17->no_frames, D.8960
	movl	%eax, %esi	# D.8960,
	movl	$.LC85, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1814 0
	movq	input(%rip), %rax	# input, input.659
	movl	2884(%rax), %edx	# input.659_19->MbInterlace, D.8960
	movq	input(%rip), %rax	# input, input.660
	movl	2880(%rax), %eax	# input.660_21->PicInterlace, D.8960
	movl	%eax, %esi	# D.8960,
	movl	$.LC86, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1815 0
	movq	input(%rip), %rax	# input, input.661
	movl	3220(%rax), %eax	# input.661_23->AllowTransform8x8, D.8960
	movl	%eax, %esi	# D.8960,
	movl	$.LC87, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 1816 0
	movl	$.LC88, %edi	#,
	call	puts	#
	.loc 1 1817 0
	movl	$.LC89, %edi	#,
	call	puts	#
	.loc 1 1818 0
	movl	$.LC88, %edi	#,
	call	puts	#
	.loc 1 1819 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	information_init, .-information_init
	.section	.rodata
	.align 8
.LC90:
	.string	"init_global_buffers: imgUV_org_top"
	.align 8
.LC91:
	.string	"init_global_buffers: imgUV_org_bot"
	.text
	.globl	init_orig_buffers
	.type	init_orig_buffers, @function
init_orig_buffers:
.LFB13:
	.loc 1 1828 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1829 0
	movl	$0, -4(%rbp)	#, memory_size
	.loc 1 1832 0
	movq	img(%rip), %rax	# img, img.662
	movl	52(%rax), %edx	# img.662_4->width, D.8972
	movq	img(%rip), %rax	# img, img.663
	movl	60(%rax), %eax	# img.663_6->height, D.8972
	movl	%eax, %esi	# D.8972,
	movl	$imgY_org_frm, %edi	#,
	call	get_mem2Dpel	#
	addl	%eax, -4(%rbp)	# D.8972, memory_size
	.loc 1 1834 0
	movq	img(%rip), %rax	# img, img.664
	movl	72700(%rax), %eax	# img.664_10->yuv_format, D.8972
	testl	%eax, %eax	# D.8972
	je	.L201	#,
	.loc 1 1835 0
	movq	img(%rip), %rax	# img, img.665
	movl	56(%rax), %edx	# img.665_12->width_cr, D.8972
	movq	img(%rip), %rax	# img, img.666
	movl	64(%rax), %eax	# img.666_14->height_cr, D.8972
	movl	%edx, %ecx	# D.8972,
	movl	%eax, %edx	# D.8972,
	movl	$2, %esi	#,
	movl	$imgUV_org_frm, %edi	#,
	call	get_mem3Dpel	#
	addl	%eax, -4(%rbp)	# D.8972, memory_size
.L201:
	.loc 1 1838 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.667
	movl	1148(%rax), %eax	# active_sps.667_18->frame_mbs_only_flag, D.8973
	testl	%eax, %eax	# D.8973
	jne	.L202	#,
	.loc 1 1841 0
	movq	img(%rip), %rax	# img, img.668
	movl	52(%rax), %edx	# img.668_20->width, D.8972
	movq	img(%rip), %rax	# img, img.669
	movl	60(%rax), %esi	# img.669_22->height, D.8972
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.670
	movl	$imgY_org_bot, %r8d	#,
	movl	$imgY_org_top, %ecx	#,
	movq	%rax, %rdi	# imgY_org_frm.670,
	call	init_top_bot_planes	#
	.loc 1 1843 0
	movq	img(%rip), %rax	# img, img.671
	movl	72700(%rax), %eax	# img.671_25->yuv_format, D.8972
	testl	%eax, %eax	# D.8972
	je	.L202	#,
	.loc 1 1845 0
	movl	$8, %esi	#,
	movl	$2, %edi	#,
	call	calloc	#
	movq	%rax, imgUV_org_top(%rip)	# imgUV_org_top.672, imgUV_org_top
	movq	imgUV_org_top(%rip), %rax	# imgUV_org_top, imgUV_org_top.673
	testq	%rax, %rax	# imgUV_org_top.673
	jne	.L203	#,
	.loc 1 1846 0
	movl	$.LC90, %edi	#,
	call	no_mem_exit	#
.L203:
	.loc 1 1847 0
	movl	$8, %esi	#,
	movl	$2, %edi	#,
	call	calloc	#
	movq	%rax, imgUV_org_bot(%rip)	# imgUV_org_bot.674, imgUV_org_bot
	movq	imgUV_org_bot(%rip), %rax	# imgUV_org_bot, imgUV_org_bot.675
	testq	%rax, %rax	# imgUV_org_bot.675
	jne	.L204	#,
	.loc 1 1848 0
	movl	$.LC91, %edi	#,
	call	no_mem_exit	#
.L204:
	.loc 1 1850 0
	movl	-4(%rbp), %eax	# memory_size, memory_size.676
	addl	$32, %eax	#, D.8974
	movl	%eax, -4(%rbp)	# D.8974, memory_size
	.loc 1 1852 0
	movq	imgUV_org_bot(%rip), %rdi	# imgUV_org_bot, imgUV_org_bot.677
	movq	imgUV_org_top(%rip), %rcx	# imgUV_org_top, imgUV_org_top.678
	movq	img(%rip), %rax	# img, img.679
	movl	56(%rax), %edx	# img.679_36->width_cr, D.8972
	movq	img(%rip), %rax	# img, img.680
	movl	64(%rax), %esi	# img.680_38->height_cr, D.8972
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.681
	movq	(%rax), %rax	# *imgUV_org_frm.681_40, D.8975
	movq	%rdi, %r8	# imgUV_org_bot.677,
	movq	%rax, %rdi	# D.8975,
	call	init_top_bot_planes	#
	addl	%eax, -4(%rbp)	# D.8972, memory_size
	.loc 1 1853 0
	movq	imgUV_org_bot(%rip), %rax	# imgUV_org_bot, imgUV_org_bot.682
	leaq	8(%rax), %rdi	#, D.8976
	movq	imgUV_org_top(%rip), %rax	# imgUV_org_top, imgUV_org_top.683
	leaq	8(%rax), %rcx	#, D.8976
	movq	img(%rip), %rax	# img, img.684
	movl	56(%rax), %edx	# img.684_48->width_cr, D.8972
	movq	img(%rip), %rax	# img, img.685
	movl	64(%rax), %esi	# img.685_50->height_cr, D.8972
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.686
	addq	$8, %rax	#, D.8976
	movq	(%rax), %rax	# *_53, D.8975
	movq	%rdi, %r8	# D.8976,
	movq	%rax, %rdi	# D.8975,
	call	init_top_bot_planes	#
	addl	%eax, -4(%rbp)	# D.8972, memory_size
.L202:
	.loc 1 1856 0
	movl	-4(%rbp), %eax	# memory_size, D.8972
	.loc 1 1857 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	init_orig_buffers, .-init_orig_buffers
	.section	.rodata
	.align 8
.LC92:
	.string	"init_global_buffers: last_P_no"
.LC93:
	.string	"init_global_buffers: decref"
	.text
	.globl	init_global_buffers
	.type	init_global_buffers, @function
init_global_buffers:
.LFB14:
	.loc 1 1872 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1873 0
	movl	$0, -20(%rbp)	#, memory_size
	.loc 1 1878 0
	movq	img(%rip), %rax	# img, img.687
	movl	36(%rax), %eax	# img.687_10->max_num_references, D.8979
	cltq
	salq	$3, %rax	#, D.8980
	movq	%rax, %rdi	# D.8980,
	call	malloc	#
	movq	%rax, last_P_no_frm(%rip)	# last_P_no_frm.688, last_P_no_frm
	movq	last_P_no_frm(%rip), %rax	# last_P_no_frm, last_P_no_frm.689
	testq	%rax, %rax	# last_P_no_frm.689
	jne	.L207	#,
	.loc 1 1879 0
	movl	$.LC92, %edi	#,
	call	no_mem_exit	#
.L207:
	.loc 1 1880 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.690
	movl	1148(%rax), %eax	# active_sps.690_16->frame_mbs_only_flag, D.8981
	testl	%eax, %eax	# D.8981
	jne	.L208	#,
	.loc 1 1881 0
	movq	img(%rip), %rax	# img, img.691
	movl	36(%rax), %eax	# img.691_18->max_num_references, D.8979
	cltq
	salq	$4, %rax	#, D.8980
	movq	%rax, %rdi	# D.8980,
	call	malloc	#
	movq	%rax, last_P_no_fld(%rip)	# last_P_no_fld.692, last_P_no_fld
	movq	last_P_no_fld(%rip), %rax	# last_P_no_fld, last_P_no_fld.693
	testq	%rax, %rax	# last_P_no_fld.693
	jne	.L208	#,
	.loc 1 1882 0
	movl	$.LC92, %edi	#,
	call	no_mem_exit	#
.L208:
	.loc 1 1885 0
	movl	$0, %eax	#,
	call	init_orig_buffers	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1888 0
	movq	input(%rip), %rax	# input, input.694
	movl	1284(%rax), %eax	# input.694_26->WeightedPrediction, D.8979
	testl	%eax, %eax	# D.8979
	jne	.L209	#,
	.loc 1 1888 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.695
	movl	1288(%rax), %eax	# input.695_28->WeightedBiprediction, D.8979
	testl	%eax, %eax	# D.8979
	jne	.L209	#,
	movq	input(%rip), %rax	# input, input.696
	movl	60(%rax), %eax	# input.696_30->GenerateMultiplePPS, D.8979
	testl	%eax, %eax	# D.8979
	je	.L210	#,
.L209:
	.loc 1 1891 0 is_stmt 1
	movl	$3, %ecx	#,
	movl	$15, %edx	#,
	movl	$6, %esi	#,
	movl	$wp_weight, %edi	#,
	call	get_mem3Dint	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1892 0
	movl	$3, %ecx	#,
	movl	$15, %edx	#,
	movl	$6, %esi	#,
	movl	$wp_offset, %edi	#,
	call	get_mem3Dint	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1894 0
	movl	$3, %r8d	#,
	movl	$15, %ecx	#,
	movl	$15, %edx	#,
	movl	$6, %esi	#,
	movl	$wbp_weight, %edi	#,
	call	get_mem4Dint	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
.L210:
	.loc 1 1899 0
	movq	input(%rip), %rax	# input, input.697
	movl	1236(%rax), %eax	# input.697_38->successive_Bframe, D.8979
	testl	%eax, %eax	# D.8979
	jne	.L211	#,
	.loc 1 1899 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.698
	movl	1316(%rax), %eax	# input.698_40->BRefPictures, D.8979
	testl	%eax, %eax	# D.8979
	jle	.L212	#,
.L211:
	.loc 1 1901 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.699
	movl	60(%rax), %eax	# img.699_42->height, D.8979
	leal	3(%rax), %edx	#, tmp212
	testl	%eax, %eax	# tmp211
	cmovs	%edx, %eax	# tmp212,, tmp211
	sarl	$2, %eax	#, tmp213
	movl	%eax, %edx	# tmp213, D.8979
	movq	img(%rip), %rax	# img, img.700
	movl	52(%rax), %eax	# img.700_45->width, D.8979
	leal	3(%rax), %ecx	#, tmp215
	testl	%eax, %eax	# tmp214
	cmovs	%ecx, %eax	# tmp215,, tmp214
	sarl	$2, %eax	#, tmp216
	movl	%edx, %ecx	# D.8979,
	movl	%eax, %edx	# D.8979,
	movl	$2, %esi	#,
	movl	$direct_ref_idx, %edi	#,
	call	get_mem3Dshort	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1902 0
	movq	img(%rip), %rax	# img, img.701
	movl	60(%rax), %eax	# img.701_50->height, D.8979
	leal	3(%rax), %edx	#, tmp218
	testl	%eax, %eax	# tmp217
	cmovs	%edx, %eax	# tmp218,, tmp217
	sarl	$2, %eax	#, tmp219
	movl	%eax, %edx	# tmp219, D.8979
	movq	img(%rip), %rax	# img, img.702
	movl	52(%rax), %eax	# img.702_53->width, D.8979
	leal	3(%rax), %ecx	#, tmp221
	testl	%eax, %eax	# tmp220
	cmovs	%ecx, %eax	# tmp221,, tmp220
	sarl	$2, %eax	#, tmp222
	movl	%eax, %esi	# D.8979,
	movl	$direct_pdir, %edi	#,
	call	get_mem2Dshort	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
.L212:
	.loc 1 1907 0
	movq	img(%rip), %rax	# img, img.703
	movl	52(%rax), %eax	# img.703_58->width, D.8979
	addl	$8, %eax	#, D.8979
	leal	0(,%rax,4), %edx	#, D.8979
	movq	img(%rip), %rax	# img, img.704
	movl	60(%rax), %eax	# img.704_62->height, D.8979
	addl	$8, %eax	#, D.8979
	movl	%eax, %esi	# D.8979,
	movl	$img4Y_tmp, %edi	#,
	call	get_mem2Dint	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1909 0
	movq	input(%rip), %rax	# input, input.705
	movl	2464(%rax), %eax	# input.705_67->rdopt, D.8979
	cmpl	$2, %eax	#, D.8979
	jne	.L213	#,
	.loc 1 1911 0
	movq	decs(%rip), %rax	# decs, decs.706
	movl	$16, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.8982,
	call	get_mem2Dint	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1912 0
	movq	decs(%rip), %rbx	# decs, decs.707
	movq	input(%rip), %rax	# input, input.708
	movl	2904(%rax), %eax	# input.708_74->NoOfDecoders, D.8979
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.8980,
	call	calloc	#
	movq	%rax, 16(%rbx)	# D.8983, decs.707_73->decref
	movq	16(%rbx), %rax	# decs.707_73->decref, D.8984
	testq	%rax, %rax	# D.8984
	jne	.L214	#,
	.loc 1 1913 0
	movl	$.LC93, %edi	#,
	call	no_mem_exit	#
.L214:
	.loc 1 1914 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L215	#
.L216:
	.loc 1 1916 0 discriminator 2
	movq	img(%rip), %rax	# img, img.709
	movl	52(%rax), %edx	# img.709_82->width, D.8979
	movq	img(%rip), %rax	# img, img.710
	movl	60(%rax), %eax	# img.710_84->height, D.8979
	movq	img(%rip), %rcx	# img, img.711
	movl	36(%rcx), %ecx	# img.711_86->max_num_references, D.8979
	leal	1(%rcx), %esi	#, D.8979
	movq	decs(%rip), %rcx	# decs, decs.712
	movq	16(%rcx), %rcx	# decs.712_89->decref, D.8984
	movl	-24(%rbp), %edi	# j, tmp224
	movslq	%edi, %rdi	# tmp224, D.8980
	salq	$3, %rdi	#, D.8980
	addq	%rcx, %rdi	# D.8984, D.8984
	movl	%edx, %ecx	# D.8979,
	movl	%eax, %edx	# D.8979,
	call	get_mem3Dpel	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1914 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L215:
	.loc 1 1914 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.713
	movl	2904(%rax), %eax	# input.713_80->NoOfDecoders, D.8979
	cmpl	-24(%rbp), %eax	# j, D.8979
	jg	.L216	#,
	.loc 1 1918 0 is_stmt 1
	movq	decs(%rip), %rax	# decs, decs.714
	addq	$32, %rax	#, D.8985
	movl	$4, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.8985,
	call	get_mem2Dpel	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1919 0
	movq	img(%rip), %rax	# img, img.715
	movl	52(%rax), %ecx	# img.715_101->width, D.8979
	movq	img(%rip), %rax	# img, img.716
	movl	60(%rax), %edx	# img.716_103->height, D.8979
	movq	input(%rip), %rax	# input, input.717
	movl	2904(%rax), %eax	# input.717_105->NoOfDecoders, D.8979
	movq	decs(%rip), %rsi	# decs, decs.718
	leaq	8(%rsi), %rdi	#, D.8984
	movl	%eax, %esi	# D.8979,
	call	get_mem3Dpel	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1920 0
	movq	img(%rip), %rax	# img, img.719
	movl	52(%rax), %ecx	# img.719_111->width, D.8979
	movq	img(%rip), %rax	# img, img.720
	movl	60(%rax), %edx	# img.720_113->height, D.8979
	movq	input(%rip), %rax	# input, input.721
	movl	2904(%rax), %eax	# input.721_115->NoOfDecoders, D.8979
	movq	decs(%rip), %rsi	# decs, decs.722
	leaq	24(%rsi), %rdi	#, D.8984
	movl	%eax, %esi	# D.8979,
	call	get_mem3Dpel	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1921 0
	movq	img(%rip), %rax	# img, img.723
	movl	52(%rax), %eax	# img.723_121->width, D.8979
	leal	15(%rax), %edx	#, tmp226
	testl	%eax, %eax	# tmp225
	cmovs	%edx, %eax	# tmp226,, tmp225
	sarl	$4, %eax	#, tmp227
	movl	%eax, %edx	# tmp227, D.8979
	movq	img(%rip), %rax	# img, img.724
	movl	60(%rax), %eax	# img.724_124->height, D.8979
	leal	15(%rax), %ecx	#, tmp229
	testl	%eax, %eax	# tmp228
	cmovs	%ecx, %eax	# tmp229,, tmp228
	sarl	$4, %eax	#, tmp230
	movq	decs(%rip), %rcx	# decs, decs.725
	addq	$40, %rcx	#, D.8986
	movl	%eax, %esi	# D.8979,
	movq	%rcx, %rdi	# D.8986,
	call	get_mem2D	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1922 0
	movq	img(%rip), %rax	# img, img.726
	movl	60(%rax), %eax	# img.726_131->height, D.8979
	leal	15(%rax), %edx	#, tmp232
	testl	%eax, %eax	# tmp231
	cmovs	%edx, %eax	# tmp232,, tmp231
	sarl	$4, %eax	#, tmp233
	movl	%eax, %edx	# tmp233, D.8979
	movq	img(%rip), %rax	# img, img.727
	movl	52(%rax), %eax	# img.727_134->width, D.8979
	leal	15(%rax), %ecx	#, tmp235
	testl	%eax, %eax	# tmp234
	cmovs	%ecx, %eax	# tmp235,, tmp234
	sarl	$4, %eax	#, tmp236
	movq	decs(%rip), %rcx	# decs, decs.728
	addq	$48, %rcx	#, D.8986
	movl	%eax, %esi	# D.8979,
	movq	%rcx, %rdi	# D.8986,
	call	get_mem2D	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
.L213:
	.loc 1 1924 0
	movq	input(%rip), %rax	# input, input.729
	movl	2908(%rax), %eax	# input.729_141->RestrictRef, D.8979
	testl	%eax, %eax	# D.8979
	je	.L217	#,
	.loc 1 1926 0
	movq	img(%rip), %rax	# img, img.730
	movl	52(%rax), %edx	# img.730_143->width, D.8979
	movq	img(%rip), %rax	# img, img.731
	movl	60(%rax), %eax	# img.731_145->height, D.8979
	movl	%eax, %esi	# D.8979,
	movl	$pixel_map, %edi	#,
	call	get_mem2D	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1927 0
	movq	img(%rip), %rax	# img, img.732
	movl	52(%rax), %eax	# img.732_149->width, D.8979
	leal	7(%rax), %edx	#, tmp238
	testl	%eax, %eax	# tmp237
	cmovs	%edx, %eax	# tmp238,, tmp237
	sarl	$3, %eax	#, tmp239
	movl	%eax, %edx	# tmp239, D.8979
	movq	img(%rip), %rax	# img, img.733
	movl	60(%rax), %eax	# img.733_152->height, D.8979
	leal	7(%rax), %ecx	#, tmp241
	testl	%eax, %eax	# tmp240
	cmovs	%ecx, %eax	# tmp241,, tmp240
	sarl	$3, %eax	#, tmp242
	movl	%eax, %esi	# D.8979,
	movl	$refresh_map, %edi	#,
	call	get_mem2D	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
.L217:
	.loc 1 1930 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.734
	movl	1148(%rax), %eax	# active_sps.734_157->frame_mbs_only_flag, D.8981
	testl	%eax, %eax	# D.8981
	jne	.L218	#,
	.loc 1 1932 0
	movq	img(%rip), %rax	# img, img.735
	movl	52(%rax), %edx	# img.735_159->width, D.8979
	movq	img(%rip), %rax	# img, img.736
	movl	60(%rax), %eax	# img.736_161->height, D.8979
	movl	%eax, %esi	# D.8979,
	movl	$imgY_com, %edi	#,
	call	get_mem2Dpel	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
	.loc 1 1934 0
	movq	img(%rip), %rax	# img, img.737
	movl	72700(%rax), %eax	# img.737_165->yuv_format, D.8979
	testl	%eax, %eax	# D.8979
	je	.L218	#,
	.loc 1 1936 0
	movq	img(%rip), %rax	# img, img.738
	movl	56(%rax), %edx	# img.738_167->width_cr, D.8979
	movq	img(%rip), %rax	# img, img.739
	movl	64(%rax), %eax	# img.739_169->height_cr, D.8979
	movl	%edx, %ecx	# D.8979,
	movl	%eax, %edx	# D.8979,
	movl	$2, %esi	#,
	movl	$imgUV_com, %edi	#,
	call	get_mem3Dpel	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
.L218:
	.loc 1 1940 0
	movq	input(%rip), %rax	# input, input.740
	movl	3292(%rax), %eax	# input.740_173->FMEnable, D.8979
	testl	%eax, %eax	# D.8979
	je	.L219	#,
	.loc 1 1941 0
	movl	$0, %eax	#,
	call	get_mem_FME	#
	addl	%eax, -20(%rbp)	# D.8979, memory_size
.L219:
	.loc 1 1943 0
	movq	input(%rip), %rax	# input, input.741
	movl	3236(%rax), %eax	# input.741_177->RCEnable, D.8979
	testl	%eax, %eax	# D.8979
	je	.L220	#,
	.loc 1 1945 0
	movl	$0, %eax	#,
	call	rc_alloc	#
.L220:
	.loc 1 1948 0
	movl	-20(%rbp), %eax	# memory_size, D.8979
	.loc 1 1949 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	init_global_buffers, .-init_global_buffers
	.globl	free_orig_planes
	.type	free_orig_planes, @function
free_orig_planes:
.LFB15:
	.loc 1 1959 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1960 0
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.742
	movq	%rax, %rdi	# imgY_org_frm.742,
	call	free_mem2Dpel	#
	.loc 1 1962 0
	movq	img(%rip), %rax	# img, img.743
	movl	72700(%rax), %eax	# img.743_2->yuv_format, D.8989
	testl	%eax, %eax	# D.8989
	je	.L223	#,
	.loc 1 1963 0
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.744
	movl	$2, %esi	#,
	movq	%rax, %rdi	# imgUV_org_frm.744,
	call	free_mem3Dpel	#
.L223:
	.loc 1 1966 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.745
	movl	1148(%rax), %eax	# active_sps.745_5->frame_mbs_only_flag, D.8990
	testl	%eax, %eax	# D.8990
	jne	.L222	#,
	.loc 1 1968 0
	movq	imgY_org_bot(%rip), %rdx	# imgY_org_bot, imgY_org_bot.746
	movq	imgY_org_top(%rip), %rax	# imgY_org_top, imgY_org_top.747
	movq	%rdx, %rsi	# imgY_org_bot.746,
	movq	%rax, %rdi	# imgY_org_top.747,
	call	free_top_bot_planes	#
	.loc 1 1970 0
	movq	img(%rip), %rax	# img, img.748
	movl	72700(%rax), %eax	# img.748_9->yuv_format, D.8989
	testl	%eax, %eax	# D.8989
	je	.L222	#,
	.loc 1 1972 0
	movq	imgUV_org_bot(%rip), %rax	# imgUV_org_bot, imgUV_org_bot.749
	movq	(%rax), %rdx	# *imgUV_org_bot.749_11, D.8991
	movq	imgUV_org_top(%rip), %rax	# imgUV_org_top, imgUV_org_top.750
	movq	(%rax), %rax	# *imgUV_org_top.750_13, D.8991
	movq	%rdx, %rsi	# D.8991,
	movq	%rax, %rdi	# D.8991,
	call	free_top_bot_planes	#
	.loc 1 1973 0
	movq	imgUV_org_bot(%rip), %rax	# imgUV_org_bot, imgUV_org_bot.751
	addq	$8, %rax	#, D.8992
	movq	(%rax), %rdx	# *_16, D.8991
	movq	imgUV_org_top(%rip), %rax	# imgUV_org_top, imgUV_org_top.752
	addq	$8, %rax	#, D.8992
	movq	(%rax), %rax	# *_19, D.8991
	movq	%rdx, %rsi	# D.8991,
	movq	%rax, %rdi	# D.8991,
	call	free_top_bot_planes	#
	.loc 1 1974 0
	movq	imgUV_org_top(%rip), %rax	# imgUV_org_top, imgUV_org_top.753
	movq	%rax, %rdi	# imgUV_org_top.753,
	call	free	#
	.loc 1 1975 0
	movq	imgUV_org_bot(%rip), %rax	# imgUV_org_bot, imgUV_org_bot.754
	movq	%rax, %rdi	# imgUV_org_bot.754,
	call	free	#
.L222:
	.loc 1 1978 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	free_orig_planes, .-free_orig_planes
	.globl	free_global_buffers
	.type	free_global_buffers, @function
free_global_buffers:
.LFB16:
	.loc 1 1995 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2001 0
	movq	last_P_no_frm(%rip), %rax	# last_P_no_frm, last_P_no_frm.755
	movq	%rax, %rdi	# last_P_no_frm.755,
	call	free	#
	.loc 1 2002 0
	movq	last_P_no_fld(%rip), %rax	# last_P_no_fld, last_P_no_fld.756
	movq	%rax, %rdi	# last_P_no_fld.756,
	call	free	#
	.loc 1 2005 0
	movl	$0, %eax	#,
	call	free_orig_planes	#
	.loc 1 2007 0
	movq	input(%rip), %rax	# input, input.757
	movl	1284(%rax), %eax	# input.757_5->WeightedPrediction, D.8993
	testl	%eax, %eax	# D.8993
	jne	.L226	#,
	.loc 1 2007 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.758
	movl	1288(%rax), %eax	# input.758_7->WeightedBiprediction, D.8993
	testl	%eax, %eax	# D.8993
	jne	.L226	#,
	movq	input(%rip), %rax	# input, input.759
	movl	60(%rax), %eax	# input.759_9->GenerateMultiplePPS, D.8993
	testl	%eax, %eax	# D.8993
	je	.L227	#,
.L226:
	.loc 1 2009 0 is_stmt 1
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.760
	movl	$6, %esi	#,
	movq	%rax, %rdi	# wp_weight.760,
	call	free_mem3Dint	#
	.loc 1 2010 0
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.761
	movl	$6, %esi	#,
	movq	%rax, %rdi	# wp_offset.761,
	call	free_mem3Dint	#
	.loc 1 2011 0
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.762
	movl	$15, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# wbp_weight.762,
	call	free_mem4Dint	#
.L227:
	.loc 1 2014 0
	movq	input(%rip), %rax	# input, input.763
	movl	1236(%rax), %eax	# input.763_14->successive_Bframe, D.8993
	testl	%eax, %eax	# D.8993
	jne	.L228	#,
	.loc 1 2014 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.764
	movl	1316(%rax), %eax	# input.764_16->BRefPictures, D.8993
	testl	%eax, %eax	# D.8993
	jle	.L229	#,
.L228:
	.loc 1 2016 0 is_stmt 1
	movq	direct_ref_idx(%rip), %rax	# direct_ref_idx, direct_ref_idx.765
	movl	$2, %esi	#,
	movq	%rax, %rdi	# direct_ref_idx.765,
	call	free_mem3Dshort	#
	.loc 1 2017 0
	movq	direct_pdir(%rip), %rax	# direct_pdir, direct_pdir.766
	movq	%rax, %rdi	# direct_pdir.766,
	call	free_mem2Dshort	#
.L229:
	.loc 1 2021 0
	movq	img4Y_tmp(%rip), %rax	# img4Y_tmp, img4Y_tmp.767
	movq	%rax, %rdi	# img4Y_tmp.767,
	call	free_mem2Dint	#
	.loc 1 2025 0
	movq	img(%rip), %rax	# img, img.768
	movq	104(%rax), %rax	# img.768_21->ipredmode, D.8994
	movq	%rax, %rdi	# D.8994,
	call	free_mem2Dint	#
	.loc 1 2026 0
	movq	img(%rip), %rax	# img, img.769
	movq	112(%rax), %rax	# img.769_23->ipredmode8x8, D.8994
	movq	%rax, %rdi	# D.8994,
	call	free_mem2Dint	#
	.loc 1 2027 0
	movq	img(%rip), %rax	# img, img.770
	movq	14168(%rax), %rax	# img.770_25->mb_data, D.8995
	movq	%rax, %rdi	# D.8995,
	call	free	#
	.loc 1 2029 0
	movq	rddata_top_frame_mb+3136(%rip), %rax	# rddata_top_frame_mb.ipredmode, D.8994
	movq	%rax, %rdi	# D.8994,
	call	free_mem2Dint	#
	.loc 1 2031 0
	movq	input(%rip), %rax	# input, input.771
	movl	216(%rax), %eax	# input.771_28->UseConstrainedIntraPred, D.8993
	testl	%eax, %eax	# D.8993
	je	.L230	#,
	.loc 1 2033 0
	movq	img(%rip), %rax	# img, img.772
	movq	71784(%rax), %rax	# img.772_30->intra_block, D.8996
	movq	%rax, %rdi	# D.8996,
	call	free	#
.L230:
	.loc 1 2036 0
	movq	input(%rip), %rax	# input, input.773
	movl	2464(%rax), %eax	# input.773_32->rdopt, D.8993
	cmpl	$2, %eax	#, D.8993
	jne	.L231	#,
	.loc 1 2038 0
	movq	decs(%rip), %rax	# decs, decs.774
	movq	(%rax), %rax	# decs.774_34->resY, D.8994
	movq	(%rax), %rax	# *_35, D.8996
	movq	%rax, %rdi	# D.8996,
	call	free	#
	.loc 1 2039 0
	movq	decs(%rip), %rax	# decs, decs.775
	movq	(%rax), %rax	# decs.775_37->resY, D.8994
	movq	%rax, %rdi	# D.8994,
	call	free	#
	.loc 1 2040 0
	movq	decs(%rip), %rax	# decs, decs.776
	movq	32(%rax), %rax	# decs.776_39->RefBlock, D.8997
	movq	(%rax), %rax	# *_40, D.8998
	movq	%rax, %rdi	# D.8998,
	call	free	#
	.loc 1 2041 0
	movq	decs(%rip), %rax	# decs, decs.777
	movq	32(%rax), %rax	# decs.777_42->RefBlock, D.8997
	movq	%rax, %rdi	# D.8997,
	call	free	#
	.loc 1 2042 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L232	#
.L235:
	.loc 1 2044 0
	movq	decs(%rip), %rax	# decs, decs.778
	movq	8(%rax), %rax	# decs.778_47->decY, D.8999
	movl	-4(%rbp), %edx	# j, tmp197
	movslq	%edx, %rdx	# tmp197, D.9000
	salq	$3, %rdx	#, D.9000
	addq	%rdx, %rax	# D.9000, D.8999
	movq	(%rax), %rax	# *_51, D.8997
	movq	(%rax), %rax	# *_52, D.8998
	movq	%rax, %rdi	# D.8998,
	call	free	#
	.loc 1 2045 0
	movq	decs(%rip), %rax	# decs, decs.779
	movq	8(%rax), %rax	# decs.779_54->decY, D.8999
	movl	-4(%rbp), %edx	# j, tmp198
	movslq	%edx, %rdx	# tmp198, D.9000
	salq	$3, %rdx	#, D.9000
	addq	%rdx, %rax	# D.9000, D.8999
	movq	(%rax), %rax	# *_58, D.8997
	movq	%rax, %rdi	# D.8997,
	call	free	#
	.loc 1 2046 0
	movq	decs(%rip), %rax	# decs, decs.780
	movq	24(%rax), %rax	# decs.780_60->decY_best, D.8999
	movl	-4(%rbp), %edx	# j, tmp199
	movslq	%edx, %rdx	# tmp199, D.9000
	salq	$3, %rdx	#, D.9000
	addq	%rdx, %rax	# D.9000, D.8999
	movq	(%rax), %rax	# *_64, D.8997
	movq	(%rax), %rax	# *_65, D.8998
	movq	%rax, %rdi	# D.8998,
	call	free	#
	.loc 1 2047 0
	movq	decs(%rip), %rax	# decs, decs.781
	movq	24(%rax), %rax	# decs.781_67->decY_best, D.8999
	movl	-4(%rbp), %edx	# j, tmp200
	movslq	%edx, %rdx	# tmp200, D.9000
	salq	$3, %rdx	#, D.9000
	addq	%rdx, %rax	# D.9000, D.8999
	movq	(%rax), %rax	# *_71, D.8997
	movq	%rax, %rdi	# D.8997,
	call	free	#
	.loc 1 2048 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L233	#
.L234:
	.loc 1 2050 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.782
	movq	16(%rax), %rax	# decs.782_77->decref, D.9001
	movl	-4(%rbp), %edx	# j, tmp201
	movslq	%edx, %rdx	# tmp201, D.9000
	salq	$3, %rdx	#, D.9000
	addq	%rdx, %rax	# D.9000, D.9001
	movq	(%rax), %rax	# *_81, D.8999
	movl	-8(%rbp), %edx	# i, tmp202
	movslq	%edx, %rdx	# tmp202, D.9000
	salq	$3, %rdx	#, D.9000
	addq	%rdx, %rax	# D.9000, D.8999
	movq	(%rax), %rax	# *_85, D.8997
	movq	(%rax), %rax	# *_86, D.8998
	movq	%rax, %rdi	# D.8998,
	call	free	#
	.loc 1 2051 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.783
	movq	16(%rax), %rax	# decs.783_88->decref, D.9001
	movl	-4(%rbp), %edx	# j, tmp203
	movslq	%edx, %rdx	# tmp203, D.9000
	salq	$3, %rdx	#, D.9000
	addq	%rdx, %rax	# D.9000, D.9001
	movq	(%rax), %rax	# *_92, D.8999
	movl	-8(%rbp), %edx	# i, tmp204
	movslq	%edx, %rdx	# tmp204, D.9000
	salq	$3, %rdx	#, D.9000
	addq	%rdx, %rax	# D.9000, D.8999
	movq	(%rax), %rax	# *_96, D.8997
	movq	%rax, %rdi	# D.8997,
	call	free	#
	.loc 1 2048 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L233:
	.loc 1 2048 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.784
	movl	36(%rax), %eax	# img.784_74->max_num_references, D.8993
	addl	$1, %eax	#, D.8993
	cmpl	-8(%rbp), %eax	# i, D.8993
	jg	.L234	#,
	.loc 1 2053 0 is_stmt 1
	movq	decs(%rip), %rax	# decs, decs.785
	movq	16(%rax), %rax	# decs.785_99->decref, D.9001
	movl	-4(%rbp), %edx	# j, tmp205
	movslq	%edx, %rdx	# tmp205, D.9000
	salq	$3, %rdx	#, D.9000
	addq	%rdx, %rax	# D.9000, D.9001
	movq	(%rax), %rax	# *_103, D.8999
	movq	%rax, %rdi	# D.8999,
	call	free	#
	.loc 1 2042 0
	addl	$1, -4(%rbp)	#, j
.L232:
	.loc 1 2042 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.786
	movl	2904(%rax), %eax	# input.786_45->NoOfDecoders, D.8993
	cmpl	-4(%rbp), %eax	# j, D.8993
	jg	.L235	#,
	.loc 1 2055 0 is_stmt 1
	movq	decs(%rip), %rax	# decs, decs.787
	movq	8(%rax), %rax	# decs.787_106->decY, D.8999
	movq	%rax, %rdi	# D.8999,
	call	free	#
	.loc 1 2056 0
	movq	decs(%rip), %rax	# decs, decs.788
	movq	24(%rax), %rax	# decs.788_108->decY_best, D.8999
	movq	%rax, %rdi	# D.8999,
	call	free	#
	.loc 1 2057 0
	movq	decs(%rip), %rax	# decs, decs.789
	movq	16(%rax), %rax	# decs.789_110->decref, D.9001
	movq	%rax, %rdi	# D.9001,
	call	free	#
	.loc 1 2058 0
	movq	decs(%rip), %rax	# decs, decs.790
	movq	40(%rax), %rax	# decs.790_112->status_map, D.9002
	movq	(%rax), %rax	# *_113, D.9003
	movq	%rax, %rdi	# D.9003,
	call	free	#
	.loc 1 2059 0
	movq	decs(%rip), %rax	# decs, decs.791
	movq	40(%rax), %rax	# decs.791_115->status_map, D.9002
	movq	%rax, %rdi	# D.9002,
	call	free	#
	.loc 1 2060 0
	movq	decs(%rip), %rax	# decs, decs.792
	movq	48(%rax), %rax	# decs.792_117->dec_mb_mode, D.9002
	movq	(%rax), %rax	# *_118, D.9003
	movq	%rax, %rdi	# D.9003,
	call	free	#
	.loc 1 2061 0
	movq	decs(%rip), %rax	# decs, decs.793
	movq	48(%rax), %rax	# decs.793_120->dec_mb_mode, D.9002
	movq	%rax, %rdi	# D.9002,
	call	free	#
.L231:
	.loc 1 2063 0
	movq	input(%rip), %rax	# input, input.794
	movl	2908(%rax), %eax	# input.794_122->RestrictRef, D.8993
	testl	%eax, %eax	# D.8993
	je	.L236	#,
	.loc 1 2065 0
	movq	pixel_map(%rip), %rax	# pixel_map, pixel_map.795
	movq	(%rax), %rax	# *pixel_map.795_124, D.9003
	movq	%rax, %rdi	# D.9003,
	call	free	#
	.loc 1 2066 0
	movq	pixel_map(%rip), %rax	# pixel_map, pixel_map.796
	movq	%rax, %rdi	# pixel_map.796,
	call	free	#
	.loc 1 2067 0
	movq	refresh_map(%rip), %rax	# refresh_map, refresh_map.797
	movq	(%rax), %rax	# *refresh_map.797_127, D.9003
	movq	%rax, %rdi	# D.9003,
	call	free	#
	.loc 1 2068 0
	movq	refresh_map(%rip), %rax	# refresh_map, refresh_map.798
	movq	%rax, %rdi	# refresh_map.798,
	call	free	#
.L236:
	.loc 1 2071 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.799
	movl	1148(%rax), %eax	# active_sps.799_130->frame_mbs_only_flag, D.9004
	testl	%eax, %eax	# D.9004
	jne	.L237	#,
	.loc 1 2073 0
	movq	imgY_com(%rip), %rax	# imgY_com, imgY_com.800
	movq	%rax, %rdi	# imgY_com.800,
	call	free_mem2Dpel	#
	.loc 1 2074 0
	movq	img(%rip), %rax	# img, img.801
	movl	72700(%rax), %eax	# img.801_133->yuv_format, D.8993
	testl	%eax, %eax	# D.8993
	je	.L237	#,
	.loc 1 2076 0
	movq	imgUV_com(%rip), %rax	# imgUV_com, imgUV_com.802
	movl	$2, %esi	#,
	movq	%rax, %rdi	# imgUV_com.802,
	call	free_mem3Dpel	#
.L237:
	.loc 1 2080 0
	movq	img(%rip), %rax	# img, img.803
	movl	72488(%rax), %eax	# img.803_136->FrameSizeInMbs, D.9005
	movl	%eax, %edx	# D.9005, D.8993
	movq	img(%rip), %rax	# img, img.804
	movq	128(%rax), %rax	# img.804_139->nz_coeff, D.9006
	movl	%edx, %esi	# D.8993,
	movq	%rax, %rdi	# D.9006,
	call	free_mem3Dint	#
	.loc 1 2082 0
	movq	input(%rip), %rax	# input, input.805
	movl	3292(%rax), %eax	# input.805_141->FMEnable, D.8993
	testl	%eax, %eax	# D.8993
	je	.L238	#,
	.loc 1 2084 0
	movl	$0, %eax	#,
	call	free_mem_FME	#
.L238:
	.loc 1 2087 0
	movq	input(%rip), %rax	# input, input.806
	movl	3236(%rax), %eax	# input.806_143->RCEnable, D.8993
	testl	%eax, %eax	# D.8993
	je	.L225	#,
	.loc 1 2089 0
	movl	$0, %eax	#,
	call	rc_free	#
.L225:
	.loc 1 2092 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	free_global_buffers, .-free_global_buffers
	.section	.rodata
.LC94:
	.string	"get_mem_mv: mv"
	.text
	.globl	get_mem_mv
	.type	get_mem_mv, @function
get_mem_mv:
.LFB17:
	.loc 1 2105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# mv, mv
	.loc 1 2108 0
	movl	$8, %esi	#,
	movl	$4, %edi	#,
	call	calloc	#
	movq	%rax, %rdx	# tmp142, D.9007
	movq	-56(%rbp), %rax	# mv, tmp143
	movq	%rdx, (%rax)	# D.9007, *mv_7(D)
	movq	-56(%rbp), %rax	# mv, tmp144
	movq	(%rax), %rax	# *mv_7(D), D.9008
	testq	%rax, %rax	# D.9008
	jne	.L241	#,
	.loc 1 2109 0
	movl	$.LC94, %edi	#,
	call	no_mem_exit	#
.L241:
	.loc 1 2110 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L242	#
.L256:
	.loc 1 2112 0
	movq	-56(%rbp), %rax	# mv, tmp145
	movq	(%rax), %rax	# *mv_7(D), D.9008
	movl	-36(%rbp), %edx	# i, tmp146
	movslq	%edx, %rdx	# tmp146, D.9009
	salq	$3, %rdx	#, D.9009
	leaq	(%rax,%rdx), %rbx	#, D.9008
	movl	$8, %esi	#,
	movl	$4, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9007, *_13
	movq	(%rbx), %rax	# *_13, D.9010
	testq	%rax, %rax	# D.9010
	jne	.L243	#,
	.loc 1 2113 0
	movl	$.LC94, %edi	#,
	call	no_mem_exit	#
.L243:
	.loc 1 2114 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L244	#
.L255:
	.loc 1 2116 0
	movq	-56(%rbp), %rax	# mv, tmp148
	movq	(%rax), %rax	# *mv_7(D), D.9008
	movl	-36(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9008
	movq	(%rax), %rax	# *_20, D.9010
	movl	-32(%rbp), %edx	# j, tmp150
	movslq	%edx, %rdx	# tmp150, D.9009
	salq	$3, %rdx	#, D.9009
	leaq	(%rax,%rdx), %rbx	#, D.9010
	movl	$8, %esi	#,
	movl	$2, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9007, *_24
	movq	(%rbx), %rax	# *_24, D.9011
	testq	%rax, %rax	# D.9011
	jne	.L245	#,
	.loc 1 2117 0
	movl	$.LC94, %edi	#,
	call	no_mem_exit	#
.L245:
	.loc 1 2118 0
	movl	$0, -28(%rbp)	#, k
	jmp	.L246	#
.L254:
	.loc 1 2120 0
	movq	-56(%rbp), %rax	# mv, tmp152
	movq	(%rax), %rax	# *mv_7(D), D.9008
	movl	-36(%rbp), %edx	# i, tmp153
	movslq	%edx, %rdx	# tmp153, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9008
	movq	(%rax), %rax	# *_31, D.9010
	movl	-32(%rbp), %edx	# j, tmp154
	movslq	%edx, %rdx	# tmp154, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9010
	movq	(%rax), %rax	# *_35, D.9011
	movl	-28(%rbp), %edx	# k, tmp155
	movslq	%edx, %rdx	# tmp155, D.9009
	salq	$3, %rdx	#, D.9009
	leaq	(%rax,%rdx), %rbx	#, D.9011
	movq	img(%rip), %rax	# img, img.807
	movl	36(%rax), %eax	# img.807_40->max_num_references, D.9012
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.9009,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9007, *_39
	movq	(%rbx), %rax	# *_39, D.9013
	testq	%rax, %rax	# D.9013
	jne	.L247	#,
	.loc 1 2121 0
	movl	$.LC94, %edi	#,
	call	no_mem_exit	#
.L247:
	.loc 1 2122 0
	movl	$0, -24(%rbp)	#, l
	jmp	.L248	#
.L253:
	.loc 1 2124 0
	movq	-56(%rbp), %rax	# mv, tmp157
	movq	(%rax), %rax	# *mv_7(D), D.9008
	movl	-36(%rbp), %edx	# i, tmp158
	movslq	%edx, %rdx	# tmp158, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9008
	movq	(%rax), %rax	# *_51, D.9010
	movl	-32(%rbp), %edx	# j, tmp159
	movslq	%edx, %rdx	# tmp159, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9010
	movq	(%rax), %rax	# *_55, D.9011
	movl	-28(%rbp), %edx	# k, tmp160
	movslq	%edx, %rdx	# tmp160, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9011
	movq	(%rax), %rax	# *_59, D.9013
	movl	-24(%rbp), %edx	# l, tmp161
	movslq	%edx, %rdx	# tmp161, D.9009
	salq	$3, %rdx	#, D.9009
	leaq	(%rax,%rdx), %rbx	#, D.9013
	movl	$8, %esi	#,
	movl	$9, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9007, *_63
	movq	(%rbx), %rax	# *_63, D.9014
	testq	%rax, %rax	# D.9014
	jne	.L249	#,
	.loc 1 2125 0
	movl	$.LC94, %edi	#,
	call	no_mem_exit	#
.L249:
	.loc 1 2126 0
	movl	$0, -20(%rbp)	#, m
	jmp	.L250	#
.L252:
	.loc 1 2127 0
	movq	-56(%rbp), %rax	# mv, tmp163
	movq	(%rax), %rax	# *mv_7(D), D.9008
	movl	-36(%rbp), %edx	# i, tmp164
	movslq	%edx, %rdx	# tmp164, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9008
	movq	(%rax), %rax	# *_70, D.9010
	movl	-32(%rbp), %edx	# j, tmp165
	movslq	%edx, %rdx	# tmp165, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9010
	movq	(%rax), %rax	# *_74, D.9011
	movl	-28(%rbp), %edx	# k, tmp166
	movslq	%edx, %rdx	# tmp166, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9011
	movq	(%rax), %rax	# *_78, D.9013
	movl	-24(%rbp), %edx	# l, tmp167
	movslq	%edx, %rdx	# tmp167, D.9009
	salq	$3, %rdx	#, D.9009
	addq	%rdx, %rax	# D.9009, D.9013
	movq	(%rax), %rax	# *_82, D.9014
	movl	-20(%rbp), %edx	# m, tmp168
	movslq	%edx, %rdx	# tmp168, D.9009
	salq	$3, %rdx	#, D.9009
	leaq	(%rax,%rdx), %rbx	#, D.9014
	movl	$2, %esi	#,
	movl	$2, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9007, *_86
	movq	(%rbx), %rax	# *_86, D.9015
	testq	%rax, %rax	# D.9015
	jne	.L251	#,
	.loc 1 2128 0
	movl	$.LC94, %edi	#,
	call	no_mem_exit	#
.L251:
	.loc 1 2126 0
	addl	$1, -20(%rbp)	#, m
.L250:
	.loc 1 2126 0 is_stmt 0 discriminator 1
	cmpl	$8, -20(%rbp)	#, m
	jle	.L252	#,
	.loc 1 2122 0 is_stmt 1
	addl	$1, -24(%rbp)	#, l
.L248:
	.loc 1 2122 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.808
	movl	36(%rax), %eax	# img.808_46->max_num_references, D.9012
	cmpl	-24(%rbp), %eax	# l, D.9012
	jg	.L253	#,
	.loc 1 2118 0 is_stmt 1
	addl	$1, -28(%rbp)	#, k
.L246:
	.loc 1 2118 0 is_stmt 0 discriminator 1
	cmpl	$1, -28(%rbp)	#, k
	jle	.L254	#,
	.loc 1 2114 0 is_stmt 1
	addl	$1, -32(%rbp)	#, j
.L244:
	.loc 1 2114 0 is_stmt 0 discriminator 1
	cmpl	$3, -32(%rbp)	#, j
	jle	.L255	#,
	.loc 1 2110 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L242:
	.loc 1 2110 0 is_stmt 0 discriminator 1
	cmpl	$3, -36(%rbp)	#, i
	jle	.L256	#,
	.loc 1 2133 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.809
	movl	36(%rax), %eax	# img.809_94->max_num_references, D.9012
	movl	%eax, %edx	# D.9012, D.9016
	movl	%edx, %eax	# D.9016, tmp170
	sall	$3, %eax	#, tmp170
	addl	%edx, %eax	# D.9016, tmp170
	sall	$6, %eax	#, tmp171
	.loc 1 2134 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	get_mem_mv, .-get_mem_mv
	.globl	free_mem_mv
	.type	free_mem_mv, @function
free_mem_mv:
.LFB18:
	.loc 1 2146 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mv, mv
	.loc 1 2149 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L259	#
.L268:
	.loc 1 2151 0
	movl	$0, -16(%rbp)	#, j
	jmp	.L260	#
.L267:
	.loc 1 2153 0
	movl	$0, -12(%rbp)	#, k
	jmp	.L261	#
.L266:
	.loc 1 2155 0
	movl	$0, -8(%rbp)	#, l
	jmp	.L262	#
.L265:
	.loc 1 2157 0
	movl	$0, -4(%rbp)	#, m
	jmp	.L263	#
.L264:
	.loc 1 2159 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp121
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9019
	movq	-40(%rbp), %rax	# mv, tmp122
	addq	%rdx, %rax	# D.9019, D.9020
	movq	(%rax), %rax	# *_16, D.9021
	movl	-16(%rbp), %edx	# j, tmp123
	movslq	%edx, %rdx	# tmp123, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9021
	movq	(%rax), %rax	# *_20, D.9022
	movl	-12(%rbp), %edx	# k, tmp124
	movslq	%edx, %rdx	# tmp124, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9022
	movq	(%rax), %rax	# *_24, D.9023
	movl	-8(%rbp), %edx	# l, tmp125
	movslq	%edx, %rdx	# tmp125, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9023
	movq	(%rax), %rax	# *_28, D.9024
	movl	-4(%rbp), %edx	# m, tmp126
	movslq	%edx, %rdx	# tmp126, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9024
	movq	(%rax), %rax	# *_32, D.9025
	movq	%rax, %rdi	# D.9025,
	call	free	#
	.loc 1 2157 0 discriminator 2
	addl	$1, -4(%rbp)	#, m
.L263:
	.loc 1 2157 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, m
	jle	.L264	#,
	.loc 1 2161 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9019
	movq	-40(%rbp), %rax	# mv, tmp128
	addq	%rdx, %rax	# D.9019, D.9020
	movq	(%rax), %rax	# *_37, D.9021
	movl	-16(%rbp), %edx	# j, tmp129
	movslq	%edx, %rdx	# tmp129, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9021
	movq	(%rax), %rax	# *_41, D.9022
	movl	-12(%rbp), %edx	# k, tmp130
	movslq	%edx, %rdx	# tmp130, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9022
	movq	(%rax), %rax	# *_45, D.9023
	movl	-8(%rbp), %edx	# l, tmp131
	movslq	%edx, %rdx	# tmp131, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9023
	movq	(%rax), %rax	# *_49, D.9024
	movq	%rax, %rdi	# D.9024,
	call	free	#
	.loc 1 2155 0
	addl	$1, -8(%rbp)	#, l
.L262:
	.loc 1 2155 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.810
	movl	36(%rax), %eax	# img.810_10->max_num_references, D.9018
	cmpl	-8(%rbp), %eax	# l, D.9018
	jg	.L265	#,
	.loc 1 2163 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp132
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9019
	movq	-40(%rbp), %rax	# mv, tmp133
	addq	%rdx, %rax	# D.9019, D.9020
	movq	(%rax), %rax	# *_54, D.9021
	movl	-16(%rbp), %edx	# j, tmp134
	movslq	%edx, %rdx	# tmp134, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9021
	movq	(%rax), %rax	# *_58, D.9022
	movl	-12(%rbp), %edx	# k, tmp135
	movslq	%edx, %rdx	# tmp135, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9022
	movq	(%rax), %rax	# *_62, D.9023
	movq	%rax, %rdi	# D.9023,
	call	free	#
	.loc 1 2153 0
	addl	$1, -12(%rbp)	#, k
.L261:
	.loc 1 2153 0 is_stmt 0 discriminator 1
	cmpl	$1, -12(%rbp)	#, k
	jle	.L266	#,
	.loc 1 2165 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp136
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9019
	movq	-40(%rbp), %rax	# mv, tmp137
	addq	%rdx, %rax	# D.9019, D.9020
	movq	(%rax), %rax	# *_67, D.9021
	movl	-16(%rbp), %edx	# j, tmp138
	movslq	%edx, %rdx	# tmp138, D.9019
	salq	$3, %rdx	#, D.9019
	addq	%rdx, %rax	# D.9019, D.9021
	movq	(%rax), %rax	# *_71, D.9022
	movq	%rax, %rdi	# D.9022,
	call	free	#
	.loc 1 2151 0
	addl	$1, -16(%rbp)	#, j
.L260:
	.loc 1 2151 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%rbp)	#, j
	jle	.L267	#,
	.loc 1 2167 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp139
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9019
	movq	-40(%rbp), %rax	# mv, tmp140
	addq	%rdx, %rax	# D.9019, D.9020
	movq	(%rax), %rax	# *_76, D.9021
	movq	%rax, %rdi	# D.9021,
	call	free	#
	.loc 1 2149 0
	addl	$1, -20(%rbp)	#, i
.L259:
	.loc 1 2149 0 is_stmt 0 discriminator 1
	cmpl	$3, -20(%rbp)	#, i
	jle	.L268	#,
	.loc 1 2169 0 is_stmt 1
	movq	-40(%rbp), %rax	# mv, tmp141
	movq	%rax, %rdi	# tmp141,
	call	free	#
	.loc 1 2170 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	free_mem_mv, .-free_mem_mv
	.section	.rodata
.LC95:
	.string	"get_mem_ACcoeff: cofAC"
	.text
	.globl	get_mem_ACcoeff
	.type	get_mem_ACcoeff, @function
get_mem_ACcoeff:
.LFB19:
	.loc 1 2183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# cofAC, cofAC
	.loc 1 2185 0
	movq	img(%rip), %rax	# img, img.811
	movl	72692(%rax), %eax	# img.811_4->num_blk8x8_uv, D.9026
	addl	$4, %eax	#, tmp98
	movl	%eax, -20(%rbp)	# tmp98, num_blk8x8
	.loc 1 2187 0
	movl	-20(%rbp), %eax	# num_blk8x8, tmp99
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.9027,
	call	calloc	#
	movq	%rax, %rdx	# tmp100, D.9028
	movq	-40(%rbp), %rax	# cofAC, tmp101
	movq	%rdx, (%rax)	# D.9028, *cofAC_9(D)
	movq	-40(%rbp), %rax	# cofAC, tmp102
	movq	(%rax), %rax	# *cofAC_9(D), D.9029
	testq	%rax, %rax	# D.9029
	jne	.L270	#,
	.loc 1 2187 0 is_stmt 0 discriminator 1
	movl	$.LC95, %edi	#,
	call	no_mem_exit	#
.L270:
	.loc 1 2188 0 is_stmt 1
	movl	$0, -24(%rbp)	#, k
	jmp	.L271	#
.L279:
	.loc 1 2190 0
	movq	-40(%rbp), %rax	# cofAC, tmp103
	movq	(%rax), %rax	# *cofAC_9(D), D.9029
	movl	-24(%rbp), %edx	# k, tmp104
	movslq	%edx, %rdx	# tmp104, D.9027
	salq	$3, %rdx	#, D.9027
	leaq	(%rax,%rdx), %rbx	#, D.9029
	movl	$8, %esi	#,
	movl	$4, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9028, *_15
	movq	(%rbx), %rax	# *_15, D.9030
	testq	%rax, %rax	# D.9030
	jne	.L272	#,
	.loc 1 2190 0 is_stmt 0 discriminator 1
	movl	$.LC95, %edi	#,
	call	no_mem_exit	#
.L272:
	.loc 1 2191 0 is_stmt 1
	movl	$0, -28(%rbp)	#, j
	jmp	.L273	#
.L278:
	.loc 1 2193 0
	movq	-40(%rbp), %rax	# cofAC, tmp106
	movq	(%rax), %rax	# *cofAC_9(D), D.9029
	movl	-24(%rbp), %edx	# k, tmp107
	movslq	%edx, %rdx	# tmp107, D.9027
	salq	$3, %rdx	#, D.9027
	addq	%rdx, %rax	# D.9027, D.9029
	movq	(%rax), %rax	# *_22, D.9030
	movl	-28(%rbp), %edx	# j, tmp108
	movslq	%edx, %rdx	# tmp108, D.9027
	salq	$3, %rdx	#, D.9027
	leaq	(%rax,%rdx), %rbx	#, D.9030
	movl	$8, %esi	#,
	movl	$2, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9028, *_26
	movq	(%rbx), %rax	# *_26, D.9031
	testq	%rax, %rax	# D.9031
	jne	.L274	#,
	.loc 1 2193 0 is_stmt 0 discriminator 1
	movl	$.LC95, %edi	#,
	call	no_mem_exit	#
.L274:
	.loc 1 2194 0 is_stmt 1
	movl	$0, -32(%rbp)	#, i
	jmp	.L275	#
.L277:
	.loc 1 2196 0
	movq	-40(%rbp), %rax	# cofAC, tmp110
	movq	(%rax), %rax	# *cofAC_9(D), D.9029
	movl	-24(%rbp), %edx	# k, tmp111
	movslq	%edx, %rdx	# tmp111, D.9027
	salq	$3, %rdx	#, D.9027
	addq	%rdx, %rax	# D.9027, D.9029
	movq	(%rax), %rax	# *_33, D.9030
	movl	-28(%rbp), %edx	# j, tmp112
	movslq	%edx, %rdx	# tmp112, D.9027
	salq	$3, %rdx	#, D.9027
	addq	%rdx, %rax	# D.9027, D.9030
	movq	(%rax), %rax	# *_37, D.9031
	movl	-32(%rbp), %edx	# i, tmp113
	movslq	%edx, %rdx	# tmp113, D.9027
	salq	$3, %rdx	#, D.9027
	leaq	(%rax,%rdx), %rbx	#, D.9031
	movl	$4, %esi	#,
	movl	$65, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9028, *_41
	movq	(%rbx), %rax	# *_41, D.9032
	testq	%rax, %rax	# D.9032
	jne	.L276	#,
	.loc 1 2196 0 is_stmt 0 discriminator 1
	movl	$.LC95, %edi	#,
	call	no_mem_exit	#
.L276:
	.loc 1 2194 0 is_stmt 1
	addl	$1, -32(%rbp)	#, i
.L275:
	.loc 1 2194 0 is_stmt 0 discriminator 1
	cmpl	$1, -32(%rbp)	#, i
	jle	.L277	#,
	.loc 1 2191 0 is_stmt 1
	addl	$1, -28(%rbp)	#, j
.L273:
	.loc 1 2191 0 is_stmt 0 discriminator 1
	cmpl	$3, -28(%rbp)	#, j
	jle	.L278	#,
	.loc 1 2188 0 is_stmt 1
	addl	$1, -24(%rbp)	#, k
.L271:
	.loc 1 2188 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# k, tmp115
	cmpl	-20(%rbp), %eax	# num_blk8x8, tmp115
	jl	.L279	#,
	.loc 1 2200 0 is_stmt 1
	movl	-20(%rbp), %eax	# num_blk8x8, num_blk8x8.812
	sall	$5, %eax	#, tmp117
	movl	%eax, %edx	# tmp116, tmp118
	sall	$6, %edx	#, tmp118
	addl	%edx, %eax	# tmp118, D.9033
	.loc 1 2201 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	get_mem_ACcoeff, .-get_mem_ACcoeff
	.section	.rodata
.LC96:
	.string	"get_mem_DCcoeff: cofDC"
	.text
	.globl	get_mem_DCcoeff
	.type	get_mem_DCcoeff, @function
get_mem_DCcoeff:
.LFB20:
	.loc 1 2210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# cofDC, cofDC
	.loc 1 2213 0
	movl	$8, %esi	#,
	movl	$3, %edi	#,
	call	calloc	#
	movq	%rax, %rdx	# tmp79, D.9035
	movq	-40(%rbp), %rax	# cofDC, tmp80
	movq	%rdx, (%rax)	# D.9035, *cofDC_4(D)
	movq	-40(%rbp), %rax	# cofDC, tmp81
	movq	(%rax), %rax	# *cofDC_4(D), D.9036
	testq	%rax, %rax	# D.9036
	jne	.L282	#,
	.loc 1 2213 0 is_stmt 0 discriminator 1
	movl	$.LC96, %edi	#,
	call	no_mem_exit	#
.L282:
	.loc 1 2214 0 is_stmt 1
	movl	$0, -20(%rbp)	#, k
	jmp	.L283	#
.L288:
	.loc 1 2216 0
	movq	-40(%rbp), %rax	# cofDC, tmp82
	movq	(%rax), %rax	# *cofDC_4(D), D.9036
	movl	-20(%rbp), %edx	# k, tmp83
	movslq	%edx, %rdx	# tmp83, D.9037
	salq	$3, %rdx	#, D.9037
	leaq	(%rax,%rdx), %rbx	#, D.9036
	movl	$8, %esi	#,
	movl	$2, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9035, *_10
	movq	(%rbx), %rax	# *_10, D.9038
	testq	%rax, %rax	# D.9038
	jne	.L284	#,
	.loc 1 2216 0 is_stmt 0 discriminator 1
	movl	$.LC96, %edi	#,
	call	no_mem_exit	#
.L284:
	.loc 1 2217 0 is_stmt 1
	movl	$0, -24(%rbp)	#, j
	jmp	.L285	#
.L287:
	.loc 1 2219 0
	movq	-40(%rbp), %rax	# cofDC, tmp85
	movq	(%rax), %rax	# *cofDC_4(D), D.9036
	movl	-20(%rbp), %edx	# k, tmp86
	movslq	%edx, %rdx	# tmp86, D.9037
	salq	$3, %rdx	#, D.9037
	addq	%rdx, %rax	# D.9037, D.9036
	movq	(%rax), %rax	# *_17, D.9038
	movl	-24(%rbp), %edx	# j, tmp87
	movslq	%edx, %rdx	# tmp87, D.9037
	salq	$3, %rdx	#, D.9037
	leaq	(%rax,%rdx), %rbx	#, D.9038
	movl	$4, %esi	#,
	movl	$65, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.9035, *_21
	movq	(%rbx), %rax	# *_21, D.9039
	testq	%rax, %rax	# D.9039
	jne	.L286	#,
	.loc 1 2219 0 is_stmt 0 discriminator 1
	movl	$.LC96, %edi	#,
	call	no_mem_exit	#
.L286:
	.loc 1 2217 0 is_stmt 1
	addl	$1, -24(%rbp)	#, j
.L285:
	.loc 1 2217 0 is_stmt 0 discriminator 1
	cmpl	$1, -24(%rbp)	#, j
	jle	.L287	#,
	.loc 1 2214 0 is_stmt 1
	addl	$1, -20(%rbp)	#, k
.L283:
	.loc 1 2214 0 is_stmt 0 discriminator 1
	cmpl	$2, -20(%rbp)	#, k
	jle	.L288	#,
	.loc 1 2222 0 is_stmt 1
	movl	$1560, %eax	#, D.9040
	.loc 1 2223 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	get_mem_DCcoeff, .-get_mem_DCcoeff
	.globl	free_mem_ACcoeff
	.type	free_mem_ACcoeff, @function
free_mem_ACcoeff:
.LFB21:
	.loc 1 2233 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# cofAC, cofAC
	.loc 1 2236 0
	movl	$0, -4(%rbp)	#, k
	jmp	.L291	#
.L296:
	.loc 1 2238 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L292	#
.L295:
	.loc 1 2240 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L293	#
.L294:
	.loc 1 2242 0 discriminator 2
	movl	-4(%rbp), %eax	# k, tmp86
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9043
	movq	-24(%rbp), %rax	# cofAC, tmp87
	addq	%rdx, %rax	# D.9043, D.9044
	movq	(%rax), %rax	# *_13, D.9045
	movl	-12(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, D.9043
	salq	$3, %rdx	#, D.9043
	addq	%rdx, %rax	# D.9043, D.9045
	movq	(%rax), %rax	# *_17, D.9046
	movl	-8(%rbp), %edx	# j, tmp89
	movslq	%edx, %rdx	# tmp89, D.9043
	salq	$3, %rdx	#, D.9043
	addq	%rdx, %rax	# D.9043, D.9046
	movq	(%rax), %rax	# *_21, D.9047
	movq	%rax, %rdi	# D.9047,
	call	free	#
	.loc 1 2240 0 discriminator 2
	addl	$1, -8(%rbp)	#, j
.L293:
	.loc 1 2240 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)	#, j
	jle	.L294	#,
	.loc 1 2244 0 is_stmt 1
	movl	-4(%rbp), %eax	# k, tmp90
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9043
	movq	-24(%rbp), %rax	# cofAC, tmp91
	addq	%rdx, %rax	# D.9043, D.9044
	movq	(%rax), %rax	# *_26, D.9045
	movl	-12(%rbp), %edx	# i, tmp92
	movslq	%edx, %rdx	# tmp92, D.9043
	salq	$3, %rdx	#, D.9043
	addq	%rdx, %rax	# D.9043, D.9045
	movq	(%rax), %rax	# *_30, D.9046
	movq	%rax, %rdi	# D.9046,
	call	free	#
	.loc 1 2238 0
	addl	$1, -12(%rbp)	#, i
.L292:
	.loc 1 2238 0 is_stmt 0 discriminator 1
	cmpl	$3, -12(%rbp)	#, i
	jle	.L295	#,
	.loc 1 2246 0 is_stmt 1
	movl	-4(%rbp), %eax	# k, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9043
	movq	-24(%rbp), %rax	# cofAC, tmp94
	addq	%rdx, %rax	# D.9043, D.9044
	movq	(%rax), %rax	# *_35, D.9045
	movq	%rax, %rdi	# D.9045,
	call	free	#
	.loc 1 2236 0
	addl	$1, -4(%rbp)	#, k
.L291:
	.loc 1 2236 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.813
	movl	72692(%rax), %eax	# img.813_5->num_blk8x8_uv, D.9042
	addl	$4, %eax	#, D.9042
	cmpl	-4(%rbp), %eax	# k, D.9042
	jg	.L296	#,
	.loc 1 2248 0 is_stmt 1
	movq	-24(%rbp), %rax	# cofAC, tmp95
	movq	%rax, %rdi	# tmp95,
	call	free	#
	.loc 1 2249 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	free_mem_ACcoeff, .-free_mem_ACcoeff
	.globl	free_mem_DCcoeff
	.type	free_mem_DCcoeff, @function
free_mem_DCcoeff:
.LFB22:
	.loc 1 2258 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# cofDC, cofDC
	.loc 1 2261 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L298	#
.L301:
	.loc 1 2263 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L299	#
.L300:
	.loc 1 2265 0 discriminator 2
	movl	-4(%rbp), %eax	# j, tmp71
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9048
	movq	-24(%rbp), %rax	# cofDC, tmp72
	addq	%rdx, %rax	# D.9048, D.9049
	movq	(%rax), %rax	# *_8, D.9050
	movl	-8(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, D.9048
	salq	$3, %rdx	#, D.9048
	addq	%rdx, %rax	# D.9048, D.9050
	movq	(%rax), %rax	# *_12, D.9051
	movq	%rax, %rdi	# D.9051,
	call	free	#
	.loc 1 2263 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L299:
	.loc 1 2263 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)	#, i
	jle	.L300	#,
	.loc 1 2267 0 is_stmt 1
	movl	-4(%rbp), %eax	# j, tmp74
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9048
	movq	-24(%rbp), %rax	# cofDC, tmp75
	addq	%rdx, %rax	# D.9048, D.9049
	movq	(%rax), %rax	# *_17, D.9050
	movq	%rax, %rdi	# D.9050,
	call	free	#
	.loc 1 2261 0
	addl	$1, -4(%rbp)	#, j
.L298:
	.loc 1 2261 0 is_stmt 0 discriminator 1
	cmpl	$2, -4(%rbp)	#, j
	jle	.L301	#,
	.loc 1 2269 0 is_stmt 1
	movq	-24(%rbp), %rax	# cofDC, tmp76
	movq	%rax, %rdi	# tmp76,
	call	free	#
	.loc 1 2270 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	free_mem_DCcoeff, .-free_mem_DCcoeff
	.globl	combine_field
	.type	combine_field, @function
combine_field:
.LFB23:
	.loc 1 2280 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2283 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L303	#
.L304:
	.loc 1 2285 0 discriminator 2
	movq	img(%rip), %rax	# img, img.814
	movl	52(%rax), %eax	# img.814_7->width, D.9052
	cltq
	leaq	(%rax,%rax), %rdx	#, D.9053
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.815
	movq	6424(%rax), %rax	# enc_top_picture.815_11->imgY, D.9054
	movl	-4(%rbp), %ecx	# i, tmp172
	movslq	%ecx, %rcx	# tmp172, D.9053
	salq	$3, %rcx	#, D.9053
	addq	%rcx, %rax	# D.9053, D.9054
	movq	(%rax), %rcx	# *_15, D.9055
	movq	imgY_com(%rip), %rax	# imgY_com, imgY_com.816
	movl	-4(%rbp), %esi	# i, tmp173
	movslq	%esi, %rsi	# tmp173, D.9053
	salq	$4, %rsi	#, D.9053
	addq	%rsi, %rax	# D.9053, D.9054
	movq	(%rax), %rax	# *_20, D.9055
	movq	%rcx, %rsi	# D.9055,
	movq	%rax, %rdi	# D.9055,
	call	memcpy	#
	.loc 1 2286 0 discriminator 2
	movq	img(%rip), %rax	# img, img.817
	movl	52(%rax), %eax	# img.817_22->width, D.9052
	cltq
	leaq	(%rax,%rax), %rdx	#, D.9053
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.818
	movq	6424(%rax), %rax	# enc_bottom_picture.818_26->imgY, D.9054
	movl	-4(%rbp), %ecx	# i, tmp174
	movslq	%ecx, %rcx	# tmp174, D.9053
	salq	$3, %rcx	#, D.9053
	addq	%rcx, %rax	# D.9053, D.9054
	movq	(%rax), %rcx	# *_30, D.9055
	movq	imgY_com(%rip), %rax	# imgY_com, imgY_com.819
	movl	-4(%rbp), %esi	# i, tmp175
	movslq	%esi, %rsi	# tmp175, D.9056
	salq	$4, %rsi	#, D.9056
	addq	$8, %rsi	#, D.9056
	addq	%rsi, %rax	# D.9056, D.9054
	movq	(%rax), %rax	# *_36, D.9055
	movq	%rcx, %rsi	# D.9055,
	movq	%rax, %rdi	# D.9055,
	call	memcpy	#
	.loc 1 2283 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L303:
	.loc 1 2283 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.820
	movl	60(%rax), %eax	# img.820_4->height, D.9052
	movl	%eax, %edx	# D.9052, tmp176
	shrl	$31, %edx	#, tmp176
	addl	%edx, %eax	# tmp176, tmp177
	sarl	%eax	# tmp178
	cmpl	-4(%rbp), %eax	# i, D.9052
	jg	.L304	#,
	.loc 1 2289 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.821
	movl	72700(%rax), %eax	# img.821_39->yuv_format, D.9052
	testl	%eax, %eax	# D.9052
	je	.L302	#,
	.loc 1 2291 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L306	#
.L307:
	.loc 1 2293 0 discriminator 2
	movq	img(%rip), %rax	# img, img.822
	movl	56(%rax), %eax	# img.822_45->width_cr, D.9052
	cltq
	leaq	(%rax,%rax), %rdx	#, D.9053
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.823
	movq	6464(%rax), %rax	# enc_top_picture.823_49->imgUV, D.9057
	movq	(%rax), %rax	# *_50, D.9054
	movl	-4(%rbp), %ecx	# i, tmp179
	movslq	%ecx, %rcx	# tmp179, D.9053
	salq	$3, %rcx	#, D.9053
	addq	%rcx, %rax	# D.9053, D.9054
	movq	(%rax), %rcx	# *_54, D.9055
	movq	imgUV_com(%rip), %rax	# imgUV_com, imgUV_com.824
	movq	(%rax), %rax	# *imgUV_com.824_56, D.9054
	movl	-4(%rbp), %esi	# i, tmp180
	movslq	%esi, %rsi	# tmp180, D.9053
	salq	$4, %rsi	#, D.9053
	addq	%rsi, %rax	# D.9053, D.9054
	movq	(%rax), %rax	# *_60, D.9055
	movq	%rcx, %rsi	# D.9055,
	movq	%rax, %rdi	# D.9055,
	call	memcpy	#
	.loc 1 2294 0 discriminator 2
	movq	img(%rip), %rax	# img, img.825
	movl	56(%rax), %eax	# img.825_62->width_cr, D.9052
	cltq
	leaq	(%rax,%rax), %rdx	#, D.9053
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.826
	movq	6464(%rax), %rax	# enc_bottom_picture.826_66->imgUV, D.9057
	movq	(%rax), %rax	# *_67, D.9054
	movl	-4(%rbp), %ecx	# i, tmp181
	movslq	%ecx, %rcx	# tmp181, D.9053
	salq	$3, %rcx	#, D.9053
	addq	%rcx, %rax	# D.9053, D.9054
	movq	(%rax), %rcx	# *_71, D.9055
	movq	imgUV_com(%rip), %rax	# imgUV_com, imgUV_com.827
	movq	(%rax), %rax	# *imgUV_com.827_73, D.9054
	movl	-4(%rbp), %esi	# i, tmp182
	movslq	%esi, %rsi	# tmp182, D.9056
	salq	$4, %rsi	#, D.9056
	addq	$8, %rsi	#, D.9056
	addq	%rsi, %rax	# D.9056, D.9054
	movq	(%rax), %rax	# *_78, D.9055
	movq	%rcx, %rsi	# D.9055,
	movq	%rax, %rdi	# D.9055,
	call	memcpy	#
	.loc 1 2295 0 discriminator 2
	movq	img(%rip), %rax	# img, img.828
	movl	56(%rax), %eax	# img.828_80->width_cr, D.9052
	cltq
	leaq	(%rax,%rax), %rdx	#, D.9053
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.829
	movq	6464(%rax), %rax	# enc_top_picture.829_84->imgUV, D.9057
	addq	$8, %rax	#, D.9057
	movq	(%rax), %rax	# *_86, D.9054
	movl	-4(%rbp), %ecx	# i, tmp183
	movslq	%ecx, %rcx	# tmp183, D.9053
	salq	$3, %rcx	#, D.9053
	addq	%rcx, %rax	# D.9053, D.9054
	movq	(%rax), %rcx	# *_90, D.9055
	movq	imgUV_com(%rip), %rax	# imgUV_com, imgUV_com.830
	addq	$8, %rax	#, D.9057
	movq	(%rax), %rax	# *_93, D.9054
	movl	-4(%rbp), %esi	# i, tmp184
	movslq	%esi, %rsi	# tmp184, D.9053
	salq	$4, %rsi	#, D.9053
	addq	%rsi, %rax	# D.9053, D.9054
	movq	(%rax), %rax	# *_97, D.9055
	movq	%rcx, %rsi	# D.9055,
	movq	%rax, %rdi	# D.9055,
	call	memcpy	#
	.loc 1 2296 0 discriminator 2
	movq	img(%rip), %rax	# img, img.831
	movl	56(%rax), %eax	# img.831_99->width_cr, D.9052
	cltq
	leaq	(%rax,%rax), %rdx	#, D.9053
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.832
	movq	6464(%rax), %rax	# enc_bottom_picture.832_103->imgUV, D.9057
	addq	$8, %rax	#, D.9057
	movq	(%rax), %rax	# *_105, D.9054
	movl	-4(%rbp), %ecx	# i, tmp185
	movslq	%ecx, %rcx	# tmp185, D.9053
	salq	$3, %rcx	#, D.9053
	addq	%rcx, %rax	# D.9053, D.9054
	movq	(%rax), %rcx	# *_109, D.9055
	movq	imgUV_com(%rip), %rax	# imgUV_com, imgUV_com.833
	addq	$8, %rax	#, D.9057
	movq	(%rax), %rax	# *_112, D.9054
	movl	-4(%rbp), %esi	# i, tmp186
	movslq	%esi, %rsi	# tmp186, D.9056
	salq	$4, %rsi	#, D.9056
	addq	$8, %rsi	#, D.9056
	addq	%rsi, %rax	# D.9056, D.9054
	movq	(%rax), %rax	# *_117, D.9055
	movq	%rcx, %rsi	# D.9055,
	movq	%rax, %rdi	# D.9055,
	call	memcpy	#
	.loc 1 2291 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L306:
	.loc 1 2291 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.834
	movl	64(%rax), %eax	# img.834_42->height_cr, D.9052
	movl	%eax, %edx	# D.9052, tmp187
	shrl	$31, %edx	#, tmp187
	addl	%edx, %eax	# tmp187, tmp188
	sarl	%eax	# tmp189
	cmpl	-4(%rbp), %eax	# i, D.9052
	jg	.L307	#,
.L302:
	.loc 1 2299 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	combine_field, .-combine_field
	.globl	decide_fld_frame
	.type	decide_fld_frame, @function
decide_fld_frame:
.LFB24:
	.loc 1 2308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -20(%rbp)	# snr_frame_Y, snr_frame_Y
	movss	%xmm1, -24(%rbp)	# snr_field_Y, snr_field_Y
	movl	%edi, -28(%rbp)	# bit_field, bit_field
	movl	%esi, -32(%rbp)	# bit_frame, bit_frame
	movsd	%xmm2, -40(%rbp)	# lambda_picture, lambda_picture
	.loc 1 2311 0
	cvtsi2sd	-32(%rbp), %xmm0	# bit_frame, D.9059
	movapd	%xmm0, %xmm1	# D.9059, D.9059
	mulsd	-40(%rbp), %xmm1	# lambda_picture, D.9059
	movss	-20(%rbp), %xmm0	# snr_frame_Y, D.9059
	cvtps2pd	%xmm0, %xmm0	# D.9059, D.9059
	addsd	%xmm1, %xmm0	# D.9059, tmp67
	movsd	%xmm0, -16(%rbp)	# tmp67, cost_frame
	.loc 1 2312 0
	cvtsi2sd	-28(%rbp), %xmm0	# bit_field, D.9059
	movapd	%xmm0, %xmm1	# D.9059, D.9059
	mulsd	-40(%rbp), %xmm1	# lambda_picture, D.9059
	movss	-24(%rbp), %xmm0	# snr_field_Y, D.9059
	cvtps2pd	%xmm0, %xmm0	# D.9059, D.9059
	addsd	%xmm1, %xmm0	# D.9059, tmp68
	movsd	%xmm0, -8(%rbp)	# tmp68, cost_field
	.loc 1 2314 0
	movsd	-8(%rbp), %xmm0	# cost_field, tmp69
	ucomisd	-16(%rbp), %xmm0	# cost_frame, tmp69
	jbe	.L313	#,
	.loc 1 2315 0
	movl	$0, %eax	#, D.9058
	jmp	.L311	#
.L313:
	.loc 1 2317 0
	movl	$1, %eax	#, D.9058
.L311:
	.loc 1 2318 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	decide_fld_frame, .-decide_fld_frame
	.globl	process_2nd_IGOP
	.type	process_2nd_IGOP, @function
process_2nd_IGOP:
.LFB25:
	.loc 1 2327 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2328 0
	movl	$0, -4(%rbp)	#, FirstIGOPFinished
	.loc 1 2329 0
	movq	img(%rip), %rax	# img, img.835
	movl	(%rax), %edx	# img.835_3->number, D.9060
	movq	input(%rip), %rax	# input, input.836
	movl	8(%rax), %eax	# input.836_5->no_frames, D.9060
	subl	$1, %eax	#, D.9060
	cmpl	%eax, %edx	# D.9060, D.9060
	jne	.L315	#,
	.loc 1 2330 0
	movl	$1, -4(%rbp)	#, FirstIGOPFinished
.L315:
	.loc 1 2331 0
	movq	input(%rip), %rax	# input, input.837
	movl	2916(%rax), %eax	# input.837_9->NumFrameIn2ndIGOP, D.9060
	testl	%eax, %eax	# D.9060
	jne	.L316	#,
	.loc 1 2331 0 is_stmt 0 discriminator 1
	jmp	.L314	#
.L316:
	.loc 1 2332 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, FirstIGOPFinished
	je	.L318	#,
	.loc 1 2332 0 is_stmt 0 discriminator 2
	movl	In2ndIGOP(%rip), %eax	# In2ndIGOP, In2ndIGOP.838
	testl	%eax, %eax	# In2ndIGOP.838
	je	.L319	#,
.L318:
	.loc 1 2332 0 discriminator 1
	jmp	.L314	#
.L319:
	.loc 1 2333 0 is_stmt 1
	movl	$1, In2ndIGOP(%rip)	#, In2ndIGOP
	.loc 1 2336 0
	movq	input(%rip), %rax	# input, input.839
	movl	8(%rax), %eax	# input.839_12->no_frames, start_frame_no_in_this_IGOP.840
	movl	%eax, start_frame_no_in_this_IGOP(%rip)	# start_frame_no_in_this_IGOP.840, start_frame_no_in_this_IGOP
	.loc 1 2337 0
	movq	input(%rip), %rax	# input, input.841
	movl	8(%rax), %eax	# input.841_14->no_frames, D.9060
	leal	-1(%rax), %edx	#, D.9060
	movq	input(%rip), %rax	# input, input.842
	movl	20(%rax), %eax	# input.842_17->jumpd, D.9060
	addl	$1, %eax	#, D.9060
	imull	%edx, %eax	# D.9060, D.9060
	addl	$1, %eax	#, start_tr_in_this_IGOP.843
	movl	%eax, start_tr_in_this_IGOP(%rip)	# start_tr_in_this_IGOP.843, start_tr_in_this_IGOP
	.loc 1 2338 0
	movq	input(%rip), %rax	# input, input.844
	movq	input(%rip), %rdx	# input, input.845
	movl	8(%rdx), %ecx	# input.845_23->no_frames, D.9060
	movq	input(%rip), %rdx	# input, input.846
	movl	2916(%rdx), %edx	# input.846_25->NumFrameIn2ndIGOP, D.9060
	addl	%ecx, %edx	# D.9060, D.9060
	movl	%edx, 8(%rax)	# D.9060, input.844_22->no_frames
	.loc 1 2346 0
	movq	img(%rip), %rax	# img, img.847
	movl	$0, 8(%rax)	#, img.847_28->nb_references
.L314:
	.loc 1 2347 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	process_2nd_IGOP, .-process_2nd_IGOP
	.globl	SetImgType
	.type	SetImgType, @function
SetImgType:
.LFB26:
	.loc 1 2357 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2358 0
	movq	input(%rip), %rax	# input, input.848
	movl	1224(%rax), %eax	# input.848_1->intra_period, D.9061
	testl	%eax, %eax	# D.9061
	jne	.L321	#,
	.loc 1 2360 0
	movq	img(%rip), %rax	# img, img.849
	movl	(%rax), %edx	# img.849_3->number, D.9061
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.850
	cmpl	%eax, %edx	# start_frame_no_in_this_IGOP.850, D.9061
	jne	.L322	#,
	.loc 1 2362 0
	movq	img(%rip), %rax	# img, img.851
	movl	$2, 24(%rax)	#, img.851_6->type
	jmp	.L320	#
.L322:
	.loc 1 2366 0
	movq	img(%rip), %rax	# img, img.852
	movl	$0, 24(%rax)	#, img.852_7->type
	.loc 1 2368 0
	movq	input(%rip), %rax	# input, input.853
	movl	1272(%rax), %eax	# input.853_8->sp_periodicity, D.9061
	testl	%eax, %eax	# D.9061
	je	.L320	#,
	.loc 1 2370 0
	movq	img(%rip), %rax	# img, img.854
	movl	(%rax), %edx	# img.854_10->number, D.9061
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.855
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.855, D.9061
	movq	input(%rip), %rax	# input, input.856
	movl	1272(%rax), %ecx	# input.856_14->sp_periodicity, D.9061
	movl	%edx, %eax	# D.9061, tmp96
	cltd
	idivl	%ecx	# D.9061
	movl	%edx, %eax	# tmp95, D.9061
	testl	%eax, %eax	# D.9061
	jne	.L320	#,
	.loc 1 2372 0
	movq	img(%rip), %rax	# img, img.857
	movl	$3, 24(%rax)	#, img.857_17->type
	jmp	.L320	#
.L321:
	.loc 1 2379 0
	movq	img(%rip), %rax	# img, img.858
	movl	(%rax), %edx	# img.858_18->number, D.9061
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.859
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.859, D.9061
	movq	input(%rip), %rax	# input, input.860
	movl	1224(%rax), %ecx	# input.860_22->intra_period, D.9061
	movl	%edx, %eax	# D.9061, tmp98
	cltd
	idivl	%ecx	# D.9061
	movl	%edx, %eax	# tmp97, D.9061
	testl	%eax, %eax	# D.9061
	jne	.L325	#,
	.loc 1 2381 0
	movq	img(%rip), %rax	# img, img.861
	movl	$2, 24(%rax)	#, img.861_25->type
	jmp	.L320	#
.L325:
	.loc 1 2385 0
	movq	img(%rip), %rax	# img, img.862
	movl	$0, 24(%rax)	#, img.862_26->type
	.loc 1 2386 0
	movq	input(%rip), %rax	# input, input.863
	movl	1272(%rax), %eax	# input.863_27->sp_periodicity, D.9061
	testl	%eax, %eax	# D.9061
	je	.L320	#,
	.loc 1 2388 0
	movq	img(%rip), %rax	# img, img.864
	movl	(%rax), %edx	# img.864_29->number, D.9061
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.865
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.865, D.9061
	movq	input(%rip), %rax	# input, input.866
	movl	1272(%rax), %ecx	# input.866_33->sp_periodicity, D.9061
	movl	%edx, %eax	# D.9061, tmp100
	cltd
	idivl	%ecx	# D.9061
	movl	%edx, %eax	# tmp99, D.9061
	testl	%eax, %eax	# D.9061
	jne	.L320	#,
	.loc 1 2389 0
	movq	img(%rip), %rax	# img, img.867
	movl	$3, 24(%rax)	#, img.867_36->type
.L320:
	.loc 1 2393 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	SetImgType, .-SetImgType
	.data
	.align 16
	.type	mb_width_cr.5897, @object
	.size	mb_width_cr.5897, 16
mb_width_cr.5897:
	.long	0
	.long	8
	.long	8
	.long	16
	.align 16
	.type	mb_height_cr.5898, @object
	.size	mb_height_cr.5898, 16
mb_height_cr.5898:
	.long	0
	.long	8
	.long	16
	.long	16
	.local	last_bit_ctr_n.5922
	.comm	last_bit_ctr_n.5922,4,4
	.local	last_mode_use.5919
	.comm	last_mode_use.5919,300,32
	.local	last_mode_chroma_use.5921
	.comm	last_mode_chroma_use.5921,16,16
	.local	last_b8_mode_0.5920
	.comm	last_b8_mode_0.5920,40,32
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	3460437971
	.long	1071644667
	.align 8
.LC40:
	.long	3539053052
	.long	1062232653
	.align 4
.LC73:
	.long	1148846080
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "defines.h"
	.file 9 "parsetcommon.h"
	.file 10 "global.h"
	.file 11 "mbuffer.h"
	.file 12 "image.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x433c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF893
	.byte	0x1
	.long	.LASF894
	.long	.LASF895
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
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x94
	.long	0x69
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.long	0xb0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.byte	0x8
	.long	0x3f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x4b
	.long	0x9d
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.byte	0xc5
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x8
	.byte	0x8
	.long	0xe7
	.uleb128 0x9
	.long	0xb0
	.uleb128 0xa
	.string	"tm"
	.byte	0x38
	.byte	0x4
	.byte	0x85
	.long	0x17c
	.uleb128 0xb
	.long	.LASF17
	.byte	0x4
	.byte	0x87
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x4
	.byte	0x88
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF19
	.byte	0x4
	.byte	0x89
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF20
	.byte	0x4
	.byte	0x8a
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF21
	.byte	0x4
	.byte	0x8b
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF22
	.byte	0x4
	.byte	0x8c
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF23
	.byte	0x4
	.byte	0x8d
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF24
	.byte	0x4
	.byte	0x8e
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF25
	.byte	0x4
	.byte	0x8f
	.long	0x3f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF26
	.byte	0x4
	.byte	0x92
	.long	0x69
	.byte	0x28
	.uleb128 0xb
	.long	.LASF27
	.byte	0x4
	.byte	0x93
	.long	0xe1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.byte	0x30
	.long	0x187
	.uleb128 0xc
	.long	.LASF29
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x308
	.uleb128 0xb
	.long	.LASF30
	.byte	0x7
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF31
	.byte	0x7
	.byte	0xfc
	.long	0xaa
	.byte	0x8
	.uleb128 0xb
	.long	.LASF32
	.byte	0x7
	.byte	0xfd
	.long	0xaa
	.byte	0x10
	.uleb128 0xb
	.long	.LASF33
	.byte	0x7
	.byte	0xfe
	.long	0xaa
	.byte	0x18
	.uleb128 0xb
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xaa
	.byte	0x20
	.uleb128 0xd
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xaa
	.byte	0x28
	.uleb128 0xd
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xaa
	.byte	0x30
	.uleb128 0xd
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xaa
	.byte	0x38
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0xaa
	.byte	0x40
	.uleb128 0xd
	.long	.LASF39
	.byte	0x7
	.value	0x105
	.long	0xaa
	.byte	0x48
	.uleb128 0xd
	.long	.LASF40
	.byte	0x7
	.value	0x106
	.long	0xaa
	.byte	0x50
	.uleb128 0xd
	.long	.LASF41
	.byte	0x7
	.value	0x107
	.long	0xaa
	.byte	0x58
	.uleb128 0xd
	.long	.LASF42
	.byte	0x7
	.value	0x109
	.long	0x340
	.byte	0x60
	.uleb128 0xd
	.long	.LASF43
	.byte	0x7
	.value	0x10b
	.long	0x346
	.byte	0x68
	.uleb128 0xd
	.long	.LASF44
	.byte	0x7
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0xd
	.long	.LASF45
	.byte	0x7
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0xd
	.long	.LASF46
	.byte	0x7
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0xd
	.long	.LASF47
	.byte	0x7
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0xd
	.long	.LASF48
	.byte	0x7
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0xd
	.long	.LASF49
	.byte	0x7
	.value	0x119
	.long	0x34c
	.byte	0x83
	.uleb128 0xd
	.long	.LASF50
	.byte	0x7
	.value	0x11d
	.long	0x35c
	.byte	0x88
	.uleb128 0xd
	.long	.LASF51
	.byte	0x7
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0xd
	.long	.LASF52
	.byte	0x7
	.value	0x12f
	.long	0xa8
	.byte	0x98
	.uleb128 0xd
	.long	.LASF53
	.byte	0x7
	.value	0x130
	.long	0xa8
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x7
	.value	0x131
	.long	0xa8
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF55
	.byte	0x7
	.value	0x132
	.long	0xa8
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF56
	.byte	0x7
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF57
	.byte	0x7
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x7
	.value	0x137
	.long	0x362
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	.LASF896
	.byte	0x7
	.byte	0x9b
	.uleb128 0xc
	.long	.LASF59
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x340
	.uleb128 0xb
	.long	.LASF60
	.byte	0x7
	.byte	0xa2
	.long	0x340
	.byte	0
	.uleb128 0xb
	.long	.LASF61
	.byte	0x7
	.byte	0xa3
	.long	0x346
	.byte	0x8
	.uleb128 0xb
	.long	.LASF62
	.byte	0x7
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x30f
	.uleb128 0x8
	.byte	0x8
	.long	0x187
	.uleb128 0x5
	.long	0xb0
	.long	0x35c
	.uleb128 0x6
	.long	0x96
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x308
	.uleb128 0x5
	.long	0xb0
	.long	0x372
	.uleb128 0x6
	.long	0x96
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.byte	0x1e
	.long	0x46
	.uleb128 0xf
	.byte	0x4
	.byte	0x9
	.byte	0x2a
	.long	0x392
	.uleb128 0x10
	.long	.LASF64
	.sleb128 0
	.uleb128 0x10
	.long	.LASF65
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x9
	.byte	0x2d
	.long	0x37d
	.uleb128 0x11
	.value	0x19c
	.byte	0x9
	.byte	0x30
	.long	0x424
	.uleb128 0xb
	.long	.LASF67
	.byte	0x9
	.byte	0x32
	.long	0x54
	.byte	0
	.uleb128 0xb
	.long	.LASF68
	.byte	0x9
	.byte	0x33
	.long	0x54
	.byte	0x4
	.uleb128 0xb
	.long	.LASF69
	.byte	0x9
	.byte	0x34
	.long	0x54
	.byte	0x8
	.uleb128 0xb
	.long	.LASF70
	.byte	0x9
	.byte	0x35
	.long	0x424
	.byte	0xc
	.uleb128 0xb
	.long	.LASF71
	.byte	0x9
	.byte	0x36
	.long	0x424
	.byte	0x8c
	.uleb128 0x12
	.long	.LASF72
	.byte	0x9
	.byte	0x37
	.long	0x424
	.value	0x10c
	.uleb128 0x12
	.long	.LASF73
	.byte	0x9
	.byte	0x38
	.long	0x54
	.value	0x18c
	.uleb128 0x12
	.long	.LASF74
	.byte	0x9
	.byte	0x39
	.long	0x54
	.value	0x190
	.uleb128 0x12
	.long	.LASF75
	.byte	0x9
	.byte	0x3a
	.long	0x54
	.value	0x194
	.uleb128 0x12
	.long	.LASF76
	.byte	0x9
	.byte	0x3b
	.long	0x54
	.value	0x198
	.byte	0
	.uleb128 0x5
	.long	0x54
	.long	0x434
	.uleb128 0x6
	.long	0x96
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x9
	.byte	0x3c
	.long	0x39d
	.uleb128 0x11
	.value	0x3b4
	.byte	0x9
	.byte	0x3f
	.long	0x5e0
	.uleb128 0xb
	.long	.LASF78
	.byte	0x9
	.byte	0x41
	.long	0x392
	.byte	0
	.uleb128 0xb
	.long	.LASF79
	.byte	0x9
	.byte	0x42
	.long	0x54
	.byte	0x4
	.uleb128 0xb
	.long	.LASF80
	.byte	0x9
	.byte	0x43
	.long	0x54
	.byte	0x8
	.uleb128 0xb
	.long	.LASF81
	.byte	0x9
	.byte	0x44
	.long	0x54
	.byte	0xc
	.uleb128 0xb
	.long	.LASF82
	.byte	0x9
	.byte	0x45
	.long	0x392
	.byte	0x10
	.uleb128 0xb
	.long	.LASF83
	.byte	0x9
	.byte	0x46
	.long	0x392
	.byte	0x14
	.uleb128 0xb
	.long	.LASF84
	.byte	0x9
	.byte	0x47
	.long	0x392
	.byte	0x18
	.uleb128 0xb
	.long	.LASF85
	.byte	0x9
	.byte	0x48
	.long	0x54
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF86
	.byte	0x9
	.byte	0x49
	.long	0x392
	.byte	0x20
	.uleb128 0xb
	.long	.LASF87
	.byte	0x9
	.byte	0x4a
	.long	0x392
	.byte	0x24
	.uleb128 0xb
	.long	.LASF88
	.byte	0x9
	.byte	0x4b
	.long	0x54
	.byte	0x28
	.uleb128 0xb
	.long	.LASF89
	.byte	0x9
	.byte	0x4c
	.long	0x54
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF90
	.byte	0x9
	.byte	0x4d
	.long	0x54
	.byte	0x30
	.uleb128 0xb
	.long	.LASF91
	.byte	0x9
	.byte	0x4e
	.long	0x392
	.byte	0x34
	.uleb128 0xb
	.long	.LASF92
	.byte	0x9
	.byte	0x4f
	.long	0x54
	.byte	0x38
	.uleb128 0xb
	.long	.LASF93
	.byte	0x9
	.byte	0x50
	.long	0x54
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF94
	.byte	0x9
	.byte	0x51
	.long	0x392
	.byte	0x40
	.uleb128 0xb
	.long	.LASF95
	.byte	0x9
	.byte	0x52
	.long	0x54
	.byte	0x44
	.uleb128 0xb
	.long	.LASF96
	.byte	0x9
	.byte	0x53
	.long	0x54
	.byte	0x48
	.uleb128 0xb
	.long	.LASF97
	.byte	0x9
	.byte	0x54
	.long	0x392
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF98
	.byte	0x9
	.byte	0x55
	.long	0x392
	.byte	0x50
	.uleb128 0xb
	.long	.LASF99
	.byte	0x9
	.byte	0x56
	.long	0x434
	.byte	0x54
	.uleb128 0x12
	.long	.LASF100
	.byte	0x9
	.byte	0x57
	.long	0x392
	.value	0x1f0
	.uleb128 0x12
	.long	.LASF101
	.byte	0x9
	.byte	0x58
	.long	0x434
	.value	0x1f4
	.uleb128 0x12
	.long	.LASF102
	.byte	0x9
	.byte	0x5a
	.long	0x392
	.value	0x390
	.uleb128 0x12
	.long	.LASF103
	.byte	0x9
	.byte	0x5b
	.long	0x392
	.value	0x394
	.uleb128 0x12
	.long	.LASF104
	.byte	0x9
	.byte	0x5c
	.long	0x392
	.value	0x398
	.uleb128 0x12
	.long	.LASF105
	.byte	0x9
	.byte	0x5d
	.long	0x54
	.value	0x39c
	.uleb128 0x12
	.long	.LASF106
	.byte	0x9
	.byte	0x5e
	.long	0x54
	.value	0x3a0
	.uleb128 0x12
	.long	.LASF107
	.byte	0x9
	.byte	0x5f
	.long	0x54
	.value	0x3a4
	.uleb128 0x12
	.long	.LASF108
	.byte	0x9
	.byte	0x60
	.long	0x54
	.value	0x3a8
	.uleb128 0x12
	.long	.LASF109
	.byte	0x9
	.byte	0x61
	.long	0x54
	.value	0x3ac
	.uleb128 0x12
	.long	.LASF110
	.byte	0x9
	.byte	0x62
	.long	0x54
	.value	0x3b0
	.byte	0
	.uleb128 0x2
	.long	.LASF111
	.byte	0x9
	.byte	0x63
	.long	0x43f
	.uleb128 0x13
	.byte	0xf0
	.byte	0x9
	.byte	0x67
	.long	0x75c
	.uleb128 0xb
	.long	.LASF112
	.byte	0x9
	.byte	0x69
	.long	0x392
	.byte	0
	.uleb128 0xb
	.long	.LASF113
	.byte	0x9
	.byte	0x6a
	.long	0x54
	.byte	0x4
	.uleb128 0xb
	.long	.LASF114
	.byte	0x9
	.byte	0x6b
	.long	0x54
	.byte	0x8
	.uleb128 0xb
	.long	.LASF115
	.byte	0x9
	.byte	0x6c
	.long	0x392
	.byte	0xc
	.uleb128 0xb
	.long	.LASF116
	.byte	0x9
	.byte	0x6e
	.long	0x392
	.byte	0x10
	.uleb128 0xb
	.long	.LASF117
	.byte	0x9
	.byte	0x6f
	.long	0x392
	.byte	0x14
	.uleb128 0xb
	.long	.LASF118
	.byte	0x9
	.byte	0x70
	.long	0x75c
	.byte	0x18
	.uleb128 0xb
	.long	.LASF119
	.byte	0x9
	.byte	0x73
	.long	0x392
	.byte	0x38
	.uleb128 0xb
	.long	.LASF120
	.byte	0x9
	.byte	0x74
	.long	0x54
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF121
	.byte	0x9
	.byte	0x75
	.long	0x54
	.byte	0x40
	.uleb128 0xb
	.long	.LASF122
	.byte	0x9
	.byte	0x77
	.long	0x76c
	.byte	0x44
	.uleb128 0xb
	.long	.LASF123
	.byte	0x9
	.byte	0x79
	.long	0x76c
	.byte	0x64
	.uleb128 0xb
	.long	.LASF124
	.byte	0x9
	.byte	0x7a
	.long	0x76c
	.byte	0x84
	.uleb128 0xb
	.long	.LASF125
	.byte	0x9
	.byte	0x7c
	.long	0x392
	.byte	0xa4
	.uleb128 0xb
	.long	.LASF126
	.byte	0x9
	.byte	0x7d
	.long	0x54
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF127
	.byte	0x9
	.byte	0x7f
	.long	0x54
	.byte	0xac
	.uleb128 0xb
	.long	.LASF128
	.byte	0x9
	.byte	0x80
	.long	0x77c
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF129
	.byte	0x9
	.byte	0x82
	.long	0x3f
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF130
	.byte	0x9
	.byte	0x83
	.long	0x3f
	.byte	0xbc
	.uleb128 0xb
	.long	.LASF131
	.byte	0x9
	.byte	0x84
	.long	0x392
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF132
	.byte	0x9
	.byte	0x85
	.long	0x54
	.byte	0xc4
	.uleb128 0xb
	.long	.LASF133
	.byte	0x9
	.byte	0x86
	.long	0x3f
	.byte	0xc8
	.uleb128 0xb
	.long	.LASF134
	.byte	0x9
	.byte	0x87
	.long	0x3f
	.byte	0xcc
	.uleb128 0xb
	.long	.LASF135
	.byte	0x9
	.byte	0x88
	.long	0x3f
	.byte	0xd0
	.uleb128 0xb
	.long	.LASF136
	.byte	0x9
	.byte	0x8a
	.long	0x3f
	.byte	0xd4
	.uleb128 0xb
	.long	.LASF137
	.byte	0x9
	.byte	0x8b
	.long	0x3f
	.byte	0xd8
	.uleb128 0xb
	.long	.LASF138
	.byte	0x9
	.byte	0x8d
	.long	0x392
	.byte	0xdc
	.uleb128 0xb
	.long	.LASF139
	.byte	0x9
	.byte	0x8e
	.long	0x392
	.byte	0xe0
	.uleb128 0xb
	.long	.LASF140
	.byte	0x9
	.byte	0x8f
	.long	0x392
	.byte	0xe4
	.uleb128 0xb
	.long	.LASF141
	.byte	0x9
	.byte	0x90
	.long	0x392
	.byte	0xe8
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x76c
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x54
	.long	0x77c
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x372
	.uleb128 0x2
	.long	.LASF142
	.byte	0x9
	.byte	0x91
	.long	0x5eb
	.uleb128 0x11
	.value	0x854
	.byte	0x9
	.byte	0x95
	.long	0x949
	.uleb128 0xb
	.long	.LASF112
	.byte	0x9
	.byte	0x97
	.long	0x392
	.byte	0
	.uleb128 0xb
	.long	.LASF143
	.byte	0x9
	.byte	0x99
	.long	0x54
	.byte	0x4
	.uleb128 0xb
	.long	.LASF144
	.byte	0x9
	.byte	0x9a
	.long	0x392
	.byte	0x8
	.uleb128 0xb
	.long	.LASF145
	.byte	0x9
	.byte	0x9b
	.long	0x392
	.byte	0xc
	.uleb128 0xb
	.long	.LASF146
	.byte	0x9
	.byte	0x9c
	.long	0x392
	.byte	0x10
	.uleb128 0xb
	.long	.LASF147
	.byte	0x9
	.byte	0x9d
	.long	0x392
	.byte	0x14
	.uleb128 0xb
	.long	.LASF148
	.byte	0x9
	.byte	0x9e
	.long	0x54
	.byte	0x18
	.uleb128 0xb
	.long	.LASF114
	.byte	0x9
	.byte	0x9f
	.long	0x54
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF149
	.byte	0x9
	.byte	0xa0
	.long	0x54
	.byte	0x20
	.uleb128 0xb
	.long	.LASF150
	.byte	0x9
	.byte	0xa2
	.long	0x392
	.byte	0x24
	.uleb128 0xb
	.long	.LASF151
	.byte	0x9
	.byte	0xa3
	.long	0x75c
	.byte	0x28
	.uleb128 0xb
	.long	.LASF152
	.byte	0x9
	.byte	0xa5
	.long	0x54
	.byte	0x48
	.uleb128 0xb
	.long	.LASF153
	.byte	0x9
	.byte	0xa6
	.long	0x54
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF154
	.byte	0x9
	.byte	0xa7
	.long	0x54
	.byte	0x50
	.uleb128 0xb
	.long	.LASF155
	.byte	0x9
	.byte	0xa8
	.long	0x54
	.byte	0x54
	.uleb128 0xb
	.long	.LASF156
	.byte	0x9
	.byte	0xaa
	.long	0x54
	.byte	0x58
	.uleb128 0xb
	.long	.LASF157
	.byte	0x9
	.byte	0xac
	.long	0x392
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF158
	.byte	0x9
	.byte	0xad
	.long	0x3f
	.byte	0x60
	.uleb128 0xb
	.long	.LASF159
	.byte	0x9
	.byte	0xae
	.long	0x3f
	.byte	0x64
	.uleb128 0xb
	.long	.LASF160
	.byte	0x9
	.byte	0xaf
	.long	0x54
	.byte	0x68
	.uleb128 0xb
	.long	.LASF161
	.byte	0x9
	.byte	0xb1
	.long	0x949
	.byte	0x6c
	.uleb128 0x12
	.long	.LASF162
	.byte	0x9
	.byte	0xb2
	.long	0x54
	.value	0x46c
	.uleb128 0x12
	.long	.LASF163
	.byte	0x9
	.byte	0xb3
	.long	0x392
	.value	0x470
	.uleb128 0x12
	.long	.LASF164
	.byte	0x9
	.byte	0xb4
	.long	0x54
	.value	0x474
	.uleb128 0x12
	.long	.LASF165
	.byte	0x9
	.byte	0xb5
	.long	0x54
	.value	0x478
	.uleb128 0x12
	.long	.LASF166
	.byte	0x9
	.byte	0xb6
	.long	0x392
	.value	0x47c
	.uleb128 0x12
	.long	.LASF167
	.byte	0x9
	.byte	0xb8
	.long	0x392
	.value	0x480
	.uleb128 0x12
	.long	.LASF168
	.byte	0x9
	.byte	0xb9
	.long	0x392
	.value	0x484
	.uleb128 0x12
	.long	.LASF169
	.byte	0x9
	.byte	0xba
	.long	0x392
	.value	0x488
	.uleb128 0x12
	.long	.LASF170
	.byte	0x9
	.byte	0xbb
	.long	0x54
	.value	0x48c
	.uleb128 0x12
	.long	.LASF171
	.byte	0x9
	.byte	0xbc
	.long	0x54
	.value	0x490
	.uleb128 0x12
	.long	.LASF172
	.byte	0x9
	.byte	0xbd
	.long	0x54
	.value	0x494
	.uleb128 0x12
	.long	.LASF173
	.byte	0x9
	.byte	0xbe
	.long	0x54
	.value	0x498
	.uleb128 0x12
	.long	.LASF174
	.byte	0x9
	.byte	0xbf
	.long	0x392
	.value	0x49c
	.uleb128 0x12
	.long	.LASF175
	.byte	0x9
	.byte	0xc0
	.long	0x5e0
	.value	0x4a0
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x959
	.uleb128 0x6
	.long	0x96
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.long	.LASF176
	.byte	0x9
	.byte	0xc1
	.long	0x78d
	.uleb128 0x2
	.long	.LASF177
	.byte	0xa
	.byte	0x3e
	.long	0xcf
	.uleb128 0xf
	.byte	0x4
	.byte	0xa
	.byte	0x61
	.long	0x984
	.uleb128 0x10
	.long	.LASF178
	.sleb128 0
	.uleb128 0x10
	.long	.LASF179
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xa
	.byte	0x69
	.long	0x999
	.uleb128 0x10
	.long	.LASF180
	.sleb128 0
	.uleb128 0x10
	.long	.LASF181
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xa
	.byte	0x70
	.long	0x9b4
	.uleb128 0x10
	.long	.LASF182
	.sleb128 0
	.uleb128 0x10
	.long	.LASF183
	.sleb128 1
	.uleb128 0x10
	.long	.LASF184
	.sleb128 2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xa
	.byte	0x9b
	.long	0x9f3
	.uleb128 0x10
	.long	.LASF185
	.sleb128 0
	.uleb128 0x10
	.long	.LASF186
	.sleb128 1
	.uleb128 0x10
	.long	.LASF187
	.sleb128 2
	.uleb128 0x10
	.long	.LASF188
	.sleb128 3
	.uleb128 0x10
	.long	.LASF189
	.sleb128 4
	.uleb128 0x10
	.long	.LASF190
	.sleb128 5
	.uleb128 0x10
	.long	.LASF191
	.sleb128 6
	.uleb128 0x10
	.long	.LASF192
	.sleb128 7
	.uleb128 0x10
	.long	.LASF193
	.sleb128 8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xa
	.byte	0xb3
	.long	0xa08
	.uleb128 0x10
	.long	.LASF194
	.sleb128 0
	.uleb128 0x10
	.long	.LASF195
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xa
	.byte	0xba
	.long	0xa23
	.uleb128 0x10
	.long	.LASF196
	.sleb128 0
	.uleb128 0x10
	.long	.LASF197
	.sleb128 1
	.uleb128 0x10
	.long	.LASF198
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF199
	.byte	0xa
	.byte	0xbe
	.long	0xa08
	.uleb128 0xf
	.byte	0x4
	.byte	0xa
	.byte	0xc1
	.long	0xa55
	.uleb128 0x10
	.long	.LASF200
	.sleb128 0
	.uleb128 0x10
	.long	.LASF201
	.sleb128 1
	.uleb128 0x10
	.long	.LASF202
	.sleb128 2
	.uleb128 0x10
	.long	.LASF203
	.sleb128 3
	.uleb128 0x10
	.long	.LASF204
	.sleb128 4
	.byte	0
	.uleb128 0x13
	.byte	0x68
	.byte	0xa
	.byte	0xcf
	.long	0xb45
	.uleb128 0xb
	.long	.LASF205
	.byte	0xa
	.byte	0xd1
	.long	0x54
	.byte	0
	.uleb128 0xb
	.long	.LASF206
	.byte	0xa
	.byte	0xd1
	.long	0x54
	.byte	0x4
	.uleb128 0xb
	.long	.LASF207
	.byte	0xa
	.byte	0xd2
	.long	0x54
	.byte	0x8
	.uleb128 0xb
	.long	.LASF208
	.byte	0xa
	.byte	0xd3
	.long	0x54
	.byte	0xc
	.uleb128 0xb
	.long	.LASF209
	.byte	0xa
	.byte	0xd4
	.long	0x54
	.byte	0x10
	.uleb128 0xb
	.long	.LASF210
	.byte	0xa
	.byte	0xd5
	.long	0x77c
	.byte	0x18
	.uleb128 0xb
	.long	.LASF211
	.byte	0xa
	.byte	0xd6
	.long	0xb7
	.byte	0x20
	.uleb128 0xb
	.long	.LASF212
	.byte	0xa
	.byte	0xd9
	.long	0x54
	.byte	0x28
	.uleb128 0xb
	.long	.LASF213
	.byte	0xa
	.byte	0xd9
	.long	0x54
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF214
	.byte	0xa
	.byte	0xda
	.long	0x54
	.byte	0x30
	.uleb128 0xb
	.long	.LASF215
	.byte	0xa
	.byte	0xdb
	.long	0x54
	.byte	0x34
	.uleb128 0xb
	.long	.LASF216
	.byte	0xa
	.byte	0xdc
	.long	0x54
	.byte	0x38
	.uleb128 0xb
	.long	.LASF217
	.byte	0xa
	.byte	0xdd
	.long	0x77c
	.byte	0x40
	.uleb128 0xb
	.long	.LASF218
	.byte	0xa
	.byte	0xde
	.long	0xb7
	.byte	0x48
	.uleb128 0x14
	.string	"C"
	.byte	0xa
	.byte	0xdf
	.long	0x3f
	.byte	0x50
	.uleb128 0x14
	.string	"CS"
	.byte	0xa
	.byte	0xdf
	.long	0x3f
	.byte	0x54
	.uleb128 0x14
	.string	"E"
	.byte	0xa
	.byte	0xe0
	.long	0x3f
	.byte	0x58
	.uleb128 0x14
	.string	"ES"
	.byte	0xa
	.byte	0xe0
	.long	0x3f
	.byte	0x5c
	.uleb128 0x14
	.string	"B"
	.byte	0xa
	.byte	0xe1
	.long	0x3f
	.byte	0x60
	.uleb128 0x14
	.string	"BS"
	.byte	0xa
	.byte	0xe1
	.long	0x3f
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.long	.LASF219
	.byte	0xa
	.byte	0xe2
	.long	0xa55
	.uleb128 0x2
	.long	.LASF220
	.byte	0xa
	.byte	0xe4
	.long	0xb5b
	.uleb128 0x8
	.byte	0x8
	.long	0xb45
	.uleb128 0x13
	.byte	0x10
	.byte	0xa
	.byte	0xe7
	.long	0xb8e
	.uleb128 0xb
	.long	.LASF221
	.byte	0xa
	.byte	0xe9
	.long	0x4d
	.byte	0
	.uleb128 0x14
	.string	"MPS"
	.byte	0xa
	.byte	0xea
	.long	0x46
	.byte	0x2
	.uleb128 0xb
	.long	.LASF222
	.byte	0xa
	.byte	0xec
	.long	0x38
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF223
	.byte	0xa
	.byte	0xee
	.long	0xb61
	.uleb128 0x15
	.value	0x5e0
	.byte	0xa
	.value	0x102
	.long	0xc05
	.uleb128 0xd
	.long	.LASF224
	.byte	0xa
	.value	0x104
	.long	0xc05
	.byte	0
	.uleb128 0x16
	.long	.LASF225
	.byte	0xa
	.value	0x105
	.long	0xc1b
	.value	0x210
	.uleb128 0x16
	.long	.LASF226
	.byte	0xa
	.value	0x106
	.long	0xc31
	.value	0x330
	.uleb128 0x16
	.long	.LASF227
	.byte	0xa
	.value	0x107
	.long	0xc47
	.value	0x470
	.uleb128 0x16
	.long	.LASF228
	.byte	0xa
	.value	0x108
	.long	0xc5d
	.value	0x530
	.uleb128 0x16
	.long	.LASF229
	.byte	0xa
	.value	0x109
	.long	0xc5d
	.value	0x570
	.uleb128 0x16
	.long	.LASF230
	.byte	0xa
	.value	0x10a
	.long	0xc6d
	.value	0x5b0
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xc1b
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xc31
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xc47
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xc5d
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xc6d
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xc7d
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.long	.LASF231
	.byte	0xa
	.value	0x10c
	.long	0xb99
	.uleb128 0x15
	.value	0x2f60
	.byte	0xa
	.value	0x119
	.long	0xd1d
	.uleb128 0xd
	.long	.LASF232
	.byte	0xa
	.value	0x11b
	.long	0xd1d
	.byte	0
	.uleb128 0xd
	.long	.LASF233
	.byte	0xa
	.value	0x11c
	.long	0xc5d
	.byte	0x20
	.uleb128 0xd
	.long	.LASF234
	.byte	0xa
	.value	0x11d
	.long	0xd2d
	.byte	0x60
	.uleb128 0x16
	.long	.LASF235
	.byte	0xa
	.value	0x11e
	.long	0xd43
	.value	0x120
	.uleb128 0x16
	.long	.LASF236
	.byte	0xa
	.value	0x11f
	.long	0xd59
	.value	0x3a0
	.uleb128 0x16
	.long	.LASF237
	.byte	0xa
	.value	0x120
	.long	0xd59
	.value	0xd00
	.uleb128 0x16
	.long	.LASF238
	.byte	0xa
	.value	0x121
	.long	0xd6f
	.value	0x1660
	.uleb128 0x16
	.long	.LASF239
	.byte	0xa
	.value	0x122
	.long	0xd6f
	.value	0x1980
	.uleb128 0x16
	.long	.LASF240
	.byte	0xa
	.value	0x123
	.long	0xd59
	.value	0x1ca0
	.uleb128 0x16
	.long	.LASF241
	.byte	0xa
	.value	0x124
	.long	0xd59
	.value	0x2600
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xd2d
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xd43
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xd59
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xd6f
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0xb8e
	.long	0xd85
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	.LASF242
	.byte	0xa
	.value	0x125
	.long	0xc89
	.uleb128 0x18
	.long	.LASF243
	.byte	0x10
	.byte	0xa
	.value	0x134
	.long	0xdc6
	.uleb128 0xd
	.long	.LASF244
	.byte	0xa
	.value	0x136
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF245
	.byte	0xa
	.value	0x137
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF246
	.byte	0xa
	.value	0x138
	.long	0xdc6
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd91
	.uleb128 0x17
	.long	.LASF247
	.byte	0xa
	.value	0x139
	.long	0xd91
	.uleb128 0x18
	.long	.LASF248
	.byte	0x20
	.byte	0xa
	.value	0x13c
	.long	0xe34
	.uleb128 0xd
	.long	.LASF249
	.byte	0xa
	.value	0x13e
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF250
	.byte	0xa
	.value	0x13f
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF251
	.byte	0xa
	.value	0x140
	.long	0x3f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF252
	.byte	0xa
	.value	0x141
	.long	0x3f
	.byte	0xc
	.uleb128 0xd
	.long	.LASF253
	.byte	0xa
	.value	0x142
	.long	0x3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF246
	.byte	0xa
	.value	0x143
	.long	0xe34
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xdd8
	.uleb128 0x17
	.long	.LASF254
	.byte	0xa
	.value	0x144
	.long	0xdd8
	.uleb128 0x18
	.long	.LASF255
	.byte	0x30
	.byte	0xa
	.value	0x147
	.long	0xed4
	.uleb128 0xd
	.long	.LASF256
	.byte	0xa
	.value	0x149
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF257
	.byte	0xa
	.value	0x14a
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF258
	.byte	0xa
	.value	0x14b
	.long	0x3f
	.byte	0x8
	.uleb128 0x19
	.string	"len"
	.byte	0xa
	.value	0x14c
	.long	0x3f
	.byte	0xc
	.uleb128 0x19
	.string	"inf"
	.byte	0xa
	.value	0x14d
	.long	0x3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF259
	.byte	0xa
	.value	0x14e
	.long	0x54
	.byte	0x14
	.uleb128 0xd
	.long	.LASF260
	.byte	0xa
	.value	0x14f
	.long	0x3f
	.byte	0x18
	.uleb128 0x19
	.string	"k"
	.byte	0xa
	.value	0x150
	.long	0x3f
	.byte	0x1c
	.uleb128 0xd
	.long	.LASF261
	.byte	0xa
	.value	0x158
	.long	0xeee
	.byte	0x20
	.uleb128 0xd
	.long	.LASF262
	.byte	0xa
	.value	0x15a
	.long	0xf0a
	.byte	0x28
	.byte	0
	.uleb128 0x1a
	.long	0xeee
	.uleb128 0x1b
	.long	0x3f
	.uleb128 0x1b
	.long	0x3f
	.uleb128 0x1b
	.long	0xb7
	.uleb128 0x1b
	.long	0xb7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xed4
	.uleb128 0x1a
	.long	0xf04
	.uleb128 0x1b
	.long	0xf04
	.uleb128 0x1b
	.long	0xb50
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe46
	.uleb128 0x8
	.byte	0x8
	.long	0xef4
	.uleb128 0x17
	.long	.LASF263
	.byte	0xa
	.value	0x15c
	.long	0xe46
	.uleb128 0x1c
	.long	.LASF264
	.value	0x278
	.byte	0xa
	.value	0x15f
	.long	0x1196
	.uleb128 0xd
	.long	.LASF265
	.byte	0xa
	.value	0x161
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF266
	.byte	0xa
	.value	0x162
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF267
	.byte	0xa
	.value	0x163
	.long	0x3f
	.byte	0x8
	.uleb128 0x19
	.string	"qp"
	.byte	0xa
	.value	0x164
	.long	0x3f
	.byte	0xc
	.uleb128 0xd
	.long	.LASF268
	.byte	0xa
	.value	0x165
	.long	0x3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF269
	.byte	0xa
	.value	0x166
	.long	0x75c
	.byte	0x14
	.uleb128 0xd
	.long	.LASF270
	.byte	0xa
	.value	0x168
	.long	0x1196
	.byte	0x38
	.uleb128 0xd
	.long	.LASF271
	.byte	0xa
	.value	0x169
	.long	0x1196
	.byte	0x40
	.uleb128 0xd
	.long	.LASF272
	.byte	0xa
	.value	0x16b
	.long	0x3f
	.byte	0x48
	.uleb128 0x19
	.string	"mvd"
	.byte	0xa
	.value	0x16c
	.long	0x119c
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF273
	.byte	0xa
	.value	0x16d
	.long	0x11be
	.value	0x14c
	.uleb128 0x16
	.long	.LASF274
	.byte	0xa
	.value	0x16e
	.long	0x11be
	.value	0x18c
	.uleb128 0x1d
	.string	"cbp"
	.byte	0xa
	.value	0x16f
	.long	0x3f
	.value	0x1cc
	.uleb128 0x16
	.long	.LASF275
	.byte	0xa
	.value	0x170
	.long	0x964
	.value	0x1d0
	.uleb128 0x16
	.long	.LASF276
	.byte	0xa
	.value	0x171
	.long	0x11ce
	.value	0x1d8
	.uleb128 0x16
	.long	.LASF277
	.byte	0xa
	.value	0x172
	.long	0x11ce
	.value	0x1e8
	.uleb128 0x16
	.long	.LASF278
	.byte	0xa
	.value	0x173
	.long	0x38
	.value	0x1f8
	.uleb128 0x16
	.long	.LASF279
	.byte	0xa
	.value	0x175
	.long	0x3f
	.value	0x200
	.uleb128 0x16
	.long	.LASF280
	.byte	0xa
	.value	0x176
	.long	0x3f
	.value	0x204
	.uleb128 0x16
	.long	.LASF281
	.byte	0xa
	.value	0x177
	.long	0x3f
	.value	0x208
	.uleb128 0x16
	.long	.LASF282
	.byte	0xa
	.value	0x179
	.long	0x3f
	.value	0x20c
	.uleb128 0x16
	.long	.LASF283
	.byte	0xa
	.value	0x17a
	.long	0x3f
	.value	0x210
	.uleb128 0x16
	.long	.LASF284
	.byte	0xa
	.value	0x17c
	.long	0x3f
	.value	0x214
	.uleb128 0x16
	.long	.LASF285
	.byte	0xa
	.value	0x17e
	.long	0x3f
	.value	0x218
	.uleb128 0x16
	.long	.LASF286
	.byte	0xa
	.value	0x17e
	.long	0x3f
	.value	0x21c
	.uleb128 0x16
	.long	.LASF287
	.byte	0xa
	.value	0x17e
	.long	0x3f
	.value	0x220
	.uleb128 0x16
	.long	.LASF288
	.byte	0xa
	.value	0x17e
	.long	0x3f
	.value	0x224
	.uleb128 0x16
	.long	.LASF289
	.byte	0xa
	.value	0x17f
	.long	0x3f
	.value	0x228
	.uleb128 0x16
	.long	.LASF290
	.byte	0xa
	.value	0x17f
	.long	0x3f
	.value	0x22c
	.uleb128 0x16
	.long	.LASF291
	.byte	0xa
	.value	0x17f
	.long	0x3f
	.value	0x230
	.uleb128 0x16
	.long	.LASF292
	.byte	0xa
	.value	0x17f
	.long	0x3f
	.value	0x234
	.uleb128 0x16
	.long	.LASF293
	.byte	0xa
	.value	0x181
	.long	0x3f
	.value	0x238
	.uleb128 0x16
	.long	.LASF294
	.byte	0xa
	.value	0x182
	.long	0x3f
	.value	0x23c
	.uleb128 0x16
	.long	.LASF295
	.byte	0xa
	.value	0x183
	.long	0x3f
	.value	0x240
	.uleb128 0x16
	.long	.LASF296
	.byte	0xa
	.value	0x186
	.long	0x3f
	.value	0x244
	.uleb128 0x16
	.long	.LASF297
	.byte	0xa
	.value	0x18a
	.long	0x11de
	.value	0x248
	.uleb128 0x16
	.long	.LASF298
	.byte	0xa
	.value	0x18b
	.long	0x3f
	.value	0x250
	.uleb128 0x16
	.long	.LASF299
	.byte	0xa
	.value	0x18c
	.long	0x3f
	.value	0x254
	.uleb128 0x16
	.long	.LASF300
	.byte	0xa
	.value	0x18d
	.long	0x3f
	.value	0x258
	.uleb128 0x16
	.long	.LASF301
	.byte	0xa
	.value	0x18e
	.long	0x3f
	.value	0x25c
	.uleb128 0x16
	.long	.LASF302
	.byte	0xa
	.value	0x18f
	.long	0x3f
	.value	0x260
	.uleb128 0x16
	.long	.LASF303
	.byte	0xa
	.value	0x191
	.long	0x3f
	.value	0x264
	.uleb128 0x16
	.long	.LASF304
	.byte	0xa
	.value	0x192
	.long	0x3f
	.value	0x268
	.uleb128 0x16
	.long	.LASF305
	.byte	0xa
	.value	0x193
	.long	0x3f
	.value	0x26c
	.uleb128 0x16
	.long	.LASF306
	.byte	0xa
	.value	0x195
	.long	0x3f
	.value	0x270
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xf1c
	.uleb128 0x5
	.long	0x3f
	.long	0x11be
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
	.long	0x11ce
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x11de
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF307
	.uleb128 0x17
	.long	.LASF308
	.byte	0xa
	.value	0x196
	.long	0xf1c
	.uleb128 0x1e
	.byte	0x30
	.byte	0xa
	.value	0x19b
	.long	0x128a
	.uleb128 0xd
	.long	.LASF309
	.byte	0xa
	.value	0x19d
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF310
	.byte	0xa
	.value	0x19e
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF311
	.byte	0xa
	.value	0x19f
	.long	0x372
	.byte	0x8
	.uleb128 0xd
	.long	.LASF312
	.byte	0xa
	.value	0x1a0
	.long	0x3f
	.byte	0xc
	.uleb128 0xd
	.long	.LASF313
	.byte	0xa
	.value	0x1a1
	.long	0x3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF314
	.byte	0xa
	.value	0x1a2
	.long	0x372
	.byte	0x14
	.uleb128 0xd
	.long	.LASF315
	.byte	0xa
	.value	0x1a4
	.long	0x372
	.byte	0x15
	.uleb128 0xd
	.long	.LASF316
	.byte	0xa
	.value	0x1a5
	.long	0x3f
	.byte	0x18
	.uleb128 0xd
	.long	.LASF317
	.byte	0xa
	.value	0x1a6
	.long	0x3f
	.byte	0x1c
	.uleb128 0xd
	.long	.LASF318
	.byte	0xa
	.value	0x1a8
	.long	0x77c
	.byte	0x20
	.uleb128 0xd
	.long	.LASF319
	.byte	0xa
	.value	0x1a9
	.long	0x3f
	.byte	0x28
	.byte	0
	.uleb128 0x17
	.long	.LASF320
	.byte	0xa
	.value	0x1ab
	.long	0x11f1
	.uleb128 0x18
	.long	.LASF321
	.byte	0x78
	.byte	0xa
	.value	0x1ae
	.long	0x12cb
	.uleb128 0xd
	.long	.LASF322
	.byte	0xa
	.value	0x1b1
	.long	0x12cb
	.byte	0
	.uleb128 0xd
	.long	.LASF323
	.byte	0xa
	.value	0x1b2
	.long	0xb45
	.byte	0x8
	.uleb128 0xd
	.long	.LASF324
	.byte	0xa
	.value	0x1b4
	.long	0x12f1
	.byte	0x70
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x128a
	.uleb128 0x1f
	.long	0x3f
	.long	0x12e5
	.uleb128 0x1b
	.long	0x12e5
	.uleb128 0x1b
	.long	0x12eb
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xf10
	.uleb128 0x8
	.byte	0x8
	.long	0x1296
	.uleb128 0x8
	.byte	0x8
	.long	0x12d1
	.uleb128 0x17
	.long	.LASF325
	.byte	0xa
	.value	0x1b8
	.long	0x1296
	.uleb128 0x1e
	.byte	0x98
	.byte	0xa
	.value	0x1bb
	.long	0x1410
	.uleb128 0xd
	.long	.LASF326
	.byte	0xa
	.value	0x1bd
	.long	0x3f
	.byte	0
	.uleb128 0x19
	.string	"qp"
	.byte	0xa
	.value	0x1be
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF327
	.byte	0xa
	.value	0x1bf
	.long	0x3f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF328
	.byte	0xa
	.value	0x1c0
	.long	0x3f
	.byte	0xc
	.uleb128 0xd
	.long	.LASF329
	.byte	0xa
	.value	0x1c1
	.long	0x3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF330
	.byte	0xa
	.value	0x1c2
	.long	0x3f
	.byte	0x14
	.uleb128 0xd
	.long	.LASF331
	.byte	0xa
	.value	0x1c3
	.long	0x1410
	.byte	0x18
	.uleb128 0xd
	.long	.LASF332
	.byte	0xa
	.value	0x1c4
	.long	0x1416
	.byte	0x20
	.uleb128 0xd
	.long	.LASF333
	.byte	0xa
	.value	0x1c5
	.long	0x141c
	.byte	0x28
	.uleb128 0xd
	.long	.LASF334
	.byte	0xa
	.value	0x1c8
	.long	0x1422
	.byte	0x30
	.uleb128 0xd
	.long	.LASF335
	.byte	0xa
	.value	0x1ca
	.long	0x3f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF336
	.byte	0xa
	.value	0x1cb
	.long	0xb7
	.byte	0x40
	.uleb128 0xd
	.long	.LASF337
	.byte	0xa
	.value	0x1cc
	.long	0xb7
	.byte	0x48
	.uleb128 0xd
	.long	.LASF338
	.byte	0xa
	.value	0x1cd
	.long	0xb7
	.byte	0x50
	.uleb128 0xd
	.long	.LASF339
	.byte	0xa
	.value	0x1ce
	.long	0x3f
	.byte	0x58
	.uleb128 0xd
	.long	.LASF340
	.byte	0xa
	.value	0x1cf
	.long	0xb7
	.byte	0x60
	.uleb128 0xd
	.long	.LASF341
	.byte	0xa
	.value	0x1d0
	.long	0xb7
	.byte	0x68
	.uleb128 0xd
	.long	.LASF342
	.byte	0xa
	.value	0x1d1
	.long	0xb7
	.byte	0x70
	.uleb128 0xd
	.long	.LASF343
	.byte	0xa
	.value	0x1d3
	.long	0x1437
	.byte	0x78
	.uleb128 0xd
	.long	.LASF344
	.byte	0xa
	.value	0x1d5
	.long	0x143d
	.byte	0x80
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x12f7
	.uleb128 0x8
	.byte	0x8
	.long	0xc7d
	.uleb128 0x8
	.byte	0x8
	.long	0xd85
	.uleb128 0x8
	.byte	0x8
	.long	0xdcc
	.uleb128 0x1f
	.long	0x392
	.long	0x1437
	.uleb128 0x1b
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1428
	.uleb128 0x5
	.long	0x3f
	.long	0x1453
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.long	.LASF345
	.byte	0xa
	.value	0x1d7
	.long	0x1303
	.uleb128 0x15
	.value	0x338
	.byte	0xa
	.value	0x1db
	.long	0x14c9
	.uleb128 0xd
	.long	.LASF346
	.byte	0xa
	.value	0x1dd
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF347
	.byte	0xa
	.value	0x1de
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF348
	.byte	0xa
	.value	0x1df
	.long	0x14c9
	.byte	0x8
	.uleb128 0x16
	.long	.LASF349
	.byte	0xa
	.value	0x1e0
	.long	0x3f
	.value	0x328
	.uleb128 0x16
	.long	.LASF350
	.byte	0xa
	.value	0x1e1
	.long	0x14df
	.value	0x32c
	.uleb128 0x16
	.long	.LASF351
	.byte	0xa
	.value	0x1e2
	.long	0x14df
	.value	0x330
	.uleb128 0x16
	.long	.LASF352
	.byte	0xa
	.value	0x1e3
	.long	0x14df
	.value	0x334
	.byte	0
	.uleb128 0x5
	.long	0x14d9
	.long	0x14d9
	.uleb128 0x6
	.long	0x96
	.byte	0x63
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1453
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF353
	.uleb128 0x17
	.long	.LASF354
	.byte	0xa
	.value	0x1e4
	.long	0x145f
	.uleb128 0x1e
	.byte	0x38
	.byte	0xa
	.value	0x276
	.long	0x1557
	.uleb128 0xd
	.long	.LASF355
	.byte	0xa
	.value	0x278
	.long	0x1557
	.byte	0
	.uleb128 0xd
	.long	.LASF356
	.byte	0xa
	.value	0x279
	.long	0x155d
	.byte	0x8
	.uleb128 0xd
	.long	.LASF357
	.byte	0xa
	.value	0x27a
	.long	0x156f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF358
	.byte	0xa
	.value	0x27b
	.long	0x155d
	.byte	0x18
	.uleb128 0xd
	.long	.LASF359
	.byte	0xa
	.value	0x27c
	.long	0x1563
	.byte	0x20
	.uleb128 0xd
	.long	.LASF360
	.byte	0xa
	.value	0x27d
	.long	0x1575
	.byte	0x28
	.uleb128 0xd
	.long	.LASF361
	.byte	0xa
	.value	0x27e
	.long	0x1575
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb7
	.uleb128 0x8
	.byte	0x8
	.long	0x1563
	.uleb128 0x8
	.byte	0x8
	.long	0x1569
	.uleb128 0x8
	.byte	0x8
	.long	0x4d
	.uleb128 0x8
	.byte	0x8
	.long	0x155d
	.uleb128 0x8
	.byte	0x8
	.long	0x77c
	.uleb128 0x17
	.long	.LASF362
	.byte	0xa
	.value	0x27f
	.long	0x14f2
	.uleb128 0x1e
	.byte	0x48
	.byte	0xa
	.value	0x283
	.long	0x162d
	.uleb128 0xd
	.long	.LASF363
	.byte	0xa
	.value	0x285
	.long	0x14df
	.byte	0
	.uleb128 0xd
	.long	.LASF364
	.byte	0xa
	.value	0x286
	.long	0x14df
	.byte	0x4
	.uleb128 0xd
	.long	.LASF365
	.byte	0xa
	.value	0x287
	.long	0x14df
	.byte	0x8
	.uleb128 0xd
	.long	.LASF366
	.byte	0xa
	.value	0x288
	.long	0x14df
	.byte	0xc
	.uleb128 0xd
	.long	.LASF367
	.byte	0xa
	.value	0x289
	.long	0x14df
	.byte	0x10
	.uleb128 0xd
	.long	.LASF368
	.byte	0xa
	.value	0x28a
	.long	0x14df
	.byte	0x14
	.uleb128 0xd
	.long	.LASF369
	.byte	0xa
	.value	0x28b
	.long	0x162d
	.byte	0x18
	.uleb128 0xd
	.long	.LASF370
	.byte	0xa
	.value	0x28c
	.long	0x162d
	.byte	0x24
	.uleb128 0xd
	.long	.LASF371
	.byte	0xa
	.value	0x28d
	.long	0x162d
	.byte	0x30
	.uleb128 0xd
	.long	.LASF372
	.byte	0xa
	.value	0x28e
	.long	0x14df
	.byte	0x3c
	.uleb128 0xd
	.long	.LASF373
	.byte	0xa
	.value	0x28f
	.long	0x14df
	.byte	0x40
	.uleb128 0xd
	.long	.LASF374
	.byte	0xa
	.value	0x290
	.long	0x14df
	.byte	0x44
	.byte	0
	.uleb128 0x5
	.long	0x14df
	.long	0x163d
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.long	.LASF375
	.byte	0xa
	.value	0x291
	.long	0x1587
	.uleb128 0x15
	.value	0xe08
	.byte	0xa
	.value	0x295
	.long	0x1e51
	.uleb128 0xd
	.long	.LASF376
	.byte	0xa
	.value	0x297
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF377
	.byte	0xa
	.value	0x298
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF378
	.byte	0xa
	.value	0x29a
	.long	0x3f
	.byte	0x8
	.uleb128 0x19
	.string	"qp0"
	.byte	0xa
	.value	0x29b
	.long	0x3f
	.byte	0xc
	.uleb128 0x19
	.string	"qpN"
	.byte	0xa
	.value	0x29c
	.long	0x3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF379
	.byte	0xa
	.value	0x29d
	.long	0x3f
	.byte	0x14
	.uleb128 0xd
	.long	.LASF380
	.byte	0xa
	.value	0x29e
	.long	0x3f
	.byte	0x18
	.uleb128 0xd
	.long	.LASF381
	.byte	0xa
	.value	0x2a0
	.long	0x3f
	.byte	0x1c
	.uleb128 0xd
	.long	.LASF382
	.byte	0xa
	.value	0x2a1
	.long	0x3f
	.byte	0x20
	.uleb128 0xd
	.long	.LASF162
	.byte	0xa
	.value	0x2a4
	.long	0x3f
	.byte	0x24
	.uleb128 0xd
	.long	.LASF383
	.byte	0xa
	.value	0x2a5
	.long	0x3f
	.byte	0x28
	.uleb128 0xd
	.long	.LASF384
	.byte	0xa
	.value	0x2a6
	.long	0x3f
	.byte	0x2c
	.uleb128 0xd
	.long	.LASF385
	.byte	0xa
	.value	0x2a7
	.long	0x3f
	.byte	0x30
	.uleb128 0xd
	.long	.LASF386
	.byte	0xa
	.value	0x2a8
	.long	0x3f
	.byte	0x34
	.uleb128 0xd
	.long	.LASF387
	.byte	0xa
	.value	0x2a9
	.long	0x3f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF388
	.byte	0xa
	.value	0x2aa
	.long	0x3f
	.byte	0x3c
	.uleb128 0xd
	.long	.LASF389
	.byte	0xa
	.value	0x2ac
	.long	0x3f
	.byte	0x40
	.uleb128 0xd
	.long	.LASF390
	.byte	0xa
	.value	0x2ad
	.long	0x3f
	.byte	0x44
	.uleb128 0xd
	.long	.LASF391
	.byte	0xa
	.value	0x2ae
	.long	0x3f
	.byte	0x48
	.uleb128 0xd
	.long	.LASF392
	.byte	0xa
	.value	0x2af
	.long	0x3f
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF393
	.byte	0xa
	.value	0x2b3
	.long	0x1e51
	.byte	0x50
	.uleb128 0xd
	.long	.LASF394
	.byte	0xa
	.value	0x2b4
	.long	0x1e51
	.byte	0x90
	.uleb128 0xd
	.long	.LASF395
	.byte	0xa
	.value	0x2b5
	.long	0x3f
	.byte	0xd0
	.uleb128 0xd
	.long	.LASF396
	.byte	0xa
	.value	0x2b6
	.long	0x3f
	.byte	0xd4
	.uleb128 0xd
	.long	.LASF397
	.byte	0xa
	.value	0x2b7
	.long	0x3f
	.byte	0xd8
	.uleb128 0xd
	.long	.LASF398
	.byte	0xa
	.value	0x2b8
	.long	0x3f
	.byte	0xdc
	.uleb128 0xd
	.long	.LASF399
	.byte	0xa
	.value	0x2b9
	.long	0x1e67
	.byte	0xe0
	.uleb128 0x16
	.long	.LASF400
	.byte	0xa
	.value	0x2ba
	.long	0x1e67
	.value	0x1a8
	.uleb128 0x16
	.long	.LASF401
	.byte	0xa
	.value	0x2bb
	.long	0x1e67
	.value	0x270
	.uleb128 0x16
	.long	.LASF402
	.byte	0xa
	.value	0x2bc
	.long	0x1e67
	.value	0x338
	.uleb128 0x16
	.long	.LASF403
	.byte	0xa
	.value	0x2bd
	.long	0x1e67
	.value	0x400
	.uleb128 0x16
	.long	.LASF404
	.byte	0xa
	.value	0x2be
	.long	0x3f
	.value	0x4c8
	.uleb128 0x16
	.long	.LASF405
	.byte	0xa
	.value	0x2c0
	.long	0x3f
	.value	0x4cc
	.uleb128 0x16
	.long	.LASF406
	.byte	0xa
	.value	0x2c1
	.long	0x3f
	.value	0x4d0
	.uleb128 0x16
	.long	.LASF407
	.byte	0xa
	.value	0x2c4
	.long	0x3f
	.value	0x4d4
	.uleb128 0x1d
	.string	"qpB"
	.byte	0xa
	.value	0x2c5
	.long	0x3f
	.value	0x4d8
	.uleb128 0x16
	.long	.LASF408
	.byte	0xa
	.value	0x2c6
	.long	0x3f
	.value	0x4dc
	.uleb128 0x16
	.long	.LASF409
	.byte	0xa
	.value	0x2c7
	.long	0x3f
	.value	0x4e0
	.uleb128 0x16
	.long	.LASF410
	.byte	0xa
	.value	0x2c8
	.long	0x3f
	.value	0x4e4
	.uleb128 0x16
	.long	.LASF411
	.byte	0xa
	.value	0x2ca
	.long	0x3f
	.value	0x4e8
	.uleb128 0x16
	.long	.LASF412
	.byte	0xa
	.value	0x2cb
	.long	0x3f
	.value	0x4ec
	.uleb128 0x16
	.long	.LASF413
	.byte	0xa
	.value	0x2cc
	.long	0x3f
	.value	0x4f0
	.uleb128 0x16
	.long	.LASF414
	.byte	0xa
	.value	0x2cd
	.long	0x3f
	.value	0x4f4
	.uleb128 0x16
	.long	.LASF415
	.byte	0xa
	.value	0x2d1
	.long	0x3f
	.value	0x4f8
	.uleb128 0x16
	.long	.LASF268
	.byte	0xa
	.value	0x2d2
	.long	0x3f
	.value	0x4fc
	.uleb128 0x16
	.long	.LASF416
	.byte	0xa
	.value	0x2d3
	.long	0x3f
	.value	0x500
	.uleb128 0x16
	.long	.LASF417
	.byte	0xa
	.value	0x2d5
	.long	0x3f
	.value	0x504
	.uleb128 0x16
	.long	.LASF418
	.byte	0xa
	.value	0x2d6
	.long	0x3f
	.value	0x508
	.uleb128 0x16
	.long	.LASF419
	.byte	0xa
	.value	0x2d7
	.long	0x3f
	.value	0x50c
	.uleb128 0x16
	.long	.LASF420
	.byte	0xa
	.value	0x2d8
	.long	0x3f
	.value	0x510
	.uleb128 0x16
	.long	.LASF421
	.byte	0xa
	.value	0x2d9
	.long	0x3f
	.value	0x514
	.uleb128 0x16
	.long	.LASF422
	.byte	0xa
	.value	0x2da
	.long	0x3f
	.value	0x518
	.uleb128 0x16
	.long	.LASF423
	.byte	0xa
	.value	0x2db
	.long	0x3f
	.value	0x51c
	.uleb128 0x16
	.long	.LASF424
	.byte	0xa
	.value	0x2dc
	.long	0x3f
	.value	0x520
	.uleb128 0x16
	.long	.LASF425
	.byte	0xa
	.value	0x2dd
	.long	0x3f
	.value	0x524
	.uleb128 0x16
	.long	.LASF426
	.byte	0xa
	.value	0x2de
	.long	0x3f
	.value	0x528
	.uleb128 0x16
	.long	.LASF427
	.byte	0xa
	.value	0x2df
	.long	0x1e77
	.value	0x52c
	.uleb128 0x16
	.long	.LASF428
	.byte	0xa
	.value	0x2e0
	.long	0x3f
	.value	0x92c
	.uleb128 0x16
	.long	.LASF429
	.byte	0xa
	.value	0x2e1
	.long	0x3f
	.value	0x930
	.uleb128 0x16
	.long	.LASF430
	.byte	0xa
	.value	0x2e3
	.long	0x3f
	.value	0x934
	.uleb128 0x16
	.long	.LASF431
	.byte	0xa
	.value	0x2e4
	.long	0x3f
	.value	0x938
	.uleb128 0x16
	.long	.LASF432
	.byte	0xa
	.value	0x2e5
	.long	0x3f
	.value	0x93c
	.uleb128 0x16
	.long	.LASF433
	.byte	0xa
	.value	0x2e7
	.long	0x3f
	.value	0x940
	.uleb128 0x16
	.long	.LASF434
	.byte	0xa
	.value	0x2e8
	.long	0x3f
	.value	0x944
	.uleb128 0x16
	.long	.LASF435
	.byte	0xa
	.value	0x2e9
	.long	0x3f
	.value	0x948
	.uleb128 0x16
	.long	.LASF436
	.byte	0xa
	.value	0x2ea
	.long	0x3f
	.value	0x94c
	.uleb128 0x16
	.long	.LASF437
	.byte	0xa
	.value	0x2eb
	.long	0x3f
	.value	0x950
	.uleb128 0x16
	.long	.LASF438
	.byte	0xa
	.value	0x2ec
	.long	0x3f
	.value	0x954
	.uleb128 0x16
	.long	.LASF439
	.byte	0xa
	.value	0x2ed
	.long	0x3f
	.value	0x958
	.uleb128 0x16
	.long	.LASF440
	.byte	0xa
	.value	0x2ef
	.long	0x3f
	.value	0x95c
	.uleb128 0x16
	.long	.LASF441
	.byte	0xa
	.value	0x2f0
	.long	0x3f
	.value	0x960
	.uleb128 0x16
	.long	.LASF442
	.byte	0xa
	.value	0x2f1
	.long	0x3f
	.value	0x964
	.uleb128 0x16
	.long	.LASF443
	.byte	0xa
	.value	0x2f2
	.long	0x3f
	.value	0x968
	.uleb128 0x16
	.long	.LASF444
	.byte	0xa
	.value	0x2f3
	.long	0x3f
	.value	0x96c
	.uleb128 0x16
	.long	.LASF445
	.byte	0xa
	.value	0x2f4
	.long	0x3f
	.value	0x970
	.uleb128 0x16
	.long	.LASF446
	.byte	0xa
	.value	0x2f5
	.long	0x3f
	.value	0x974
	.uleb128 0x16
	.long	.LASF447
	.byte	0xa
	.value	0x2f7
	.long	0x11de
	.value	0x978
	.uleb128 0x16
	.long	.LASF135
	.byte	0xa
	.value	0x2f9
	.long	0x3f
	.value	0x980
	.uleb128 0x16
	.long	.LASF448
	.byte	0xa
	.value	0x2fb
	.long	0x3f
	.value	0x984
	.uleb128 0x16
	.long	.LASF449
	.byte	0xa
	.value	0x2fe
	.long	0x3f
	.value	0x988
	.uleb128 0x16
	.long	.LASF450
	.byte	0xa
	.value	0x301
	.long	0x3f
	.value	0x98c
	.uleb128 0x16
	.long	.LASF451
	.byte	0xa
	.value	0x301
	.long	0x3f
	.value	0x990
	.uleb128 0x16
	.long	.LASF452
	.byte	0xa
	.value	0x301
	.long	0x3f
	.value	0x994
	.uleb128 0x16
	.long	.LASF453
	.byte	0xa
	.value	0x302
	.long	0x3f
	.value	0x998
	.uleb128 0x16
	.long	.LASF454
	.byte	0xa
	.value	0x302
	.long	0x3f
	.value	0x99c
	.uleb128 0x16
	.long	.LASF455
	.byte	0xa
	.value	0x304
	.long	0x3f
	.value	0x9a0
	.uleb128 0x16
	.long	.LASF456
	.byte	0xa
	.value	0x305
	.long	0x3f
	.value	0x9a4
	.uleb128 0x16
	.long	.LASF457
	.byte	0xa
	.value	0x306
	.long	0x3f
	.value	0x9a8
	.uleb128 0x16
	.long	.LASF458
	.byte	0xa
	.value	0x309
	.long	0x3f
	.value	0x9ac
	.uleb128 0x16
	.long	.LASF459
	.byte	0xa
	.value	0x30a
	.long	0x1e67
	.value	0x9b0
	.uleb128 0x16
	.long	.LASF460
	.byte	0xa
	.value	0x30b
	.long	0x1e67
	.value	0xa78
	.uleb128 0x16
	.long	.LASF461
	.byte	0xa
	.value	0x30e
	.long	0x3f
	.value	0xb40
	.uleb128 0x16
	.long	.LASF462
	.byte	0xa
	.value	0x30f
	.long	0x3f
	.value	0xb44
	.uleb128 0x16
	.long	.LASF463
	.byte	0xa
	.value	0x311
	.long	0x3f
	.value	0xb48
	.uleb128 0x16
	.long	.LASF464
	.byte	0xa
	.value	0x313
	.long	0x3f
	.value	0xb4c
	.uleb128 0x16
	.long	.LASF465
	.byte	0xa
	.value	0x314
	.long	0x3f
	.value	0xb50
	.uleb128 0x16
	.long	.LASF466
	.byte	0xa
	.value	0x315
	.long	0x3f
	.value	0xb54
	.uleb128 0x16
	.long	.LASF467
	.byte	0xa
	.value	0x316
	.long	0x3f
	.value	0xb58
	.uleb128 0x16
	.long	.LASF468
	.byte	0xa
	.value	0x317
	.long	0x3f
	.value	0xb5c
	.uleb128 0x16
	.long	.LASF469
	.byte	0xa
	.value	0x318
	.long	0x3f
	.value	0xb60
	.uleb128 0x16
	.long	.LASF470
	.byte	0xa
	.value	0x319
	.long	0x3f
	.value	0xb64
	.uleb128 0x16
	.long	.LASF471
	.byte	0xa
	.value	0x31b
	.long	0x3f
	.value	0xb68
	.uleb128 0x16
	.long	.LASF472
	.byte	0xa
	.value	0x31d
	.long	0x3f
	.value	0xb6c
	.uleb128 0x16
	.long	.LASF303
	.byte	0xa
	.value	0x31e
	.long	0x3f
	.value	0xb70
	.uleb128 0x16
	.long	.LASF304
	.byte	0xa
	.value	0x31f
	.long	0x3f
	.value	0xb74
	.uleb128 0x16
	.long	.LASF305
	.byte	0xa
	.value	0x320
	.long	0x3f
	.value	0xb78
	.uleb128 0x16
	.long	.LASF473
	.byte	0xa
	.value	0x322
	.long	0x3f
	.value	0xb7c
	.uleb128 0x16
	.long	.LASF474
	.byte	0xa
	.value	0x323
	.long	0x3f
	.value	0xb80
	.uleb128 0x16
	.long	.LASF475
	.byte	0xa
	.value	0x324
	.long	0x3f
	.value	0xb84
	.uleb128 0x16
	.long	.LASF476
	.byte	0xa
	.value	0x327
	.long	0x1e67
	.value	0xb88
	.uleb128 0x16
	.long	.LASF120
	.byte	0xa
	.value	0x328
	.long	0x3f
	.value	0xc50
	.uleb128 0x16
	.long	.LASF121
	.byte	0xa
	.value	0x329
	.long	0x3f
	.value	0xc54
	.uleb128 0x16
	.long	.LASF123
	.byte	0xa
	.value	0x32b
	.long	0xb7
	.value	0xc58
	.uleb128 0x16
	.long	.LASF124
	.byte	0xa
	.value	0x32c
	.long	0xb7
	.value	0xc60
	.uleb128 0x16
	.long	.LASF128
	.byte	0xa
	.value	0x32d
	.long	0x77c
	.value	0xc68
	.uleb128 0x16
	.long	.LASF122
	.byte	0xa
	.value	0x32e
	.long	0xb7
	.value	0xc70
	.uleb128 0x16
	.long	.LASF125
	.byte	0xa
	.value	0x330
	.long	0x3f
	.value	0xc78
	.uleb128 0x16
	.long	.LASF126
	.byte	0xa
	.value	0x331
	.long	0x3f
	.value	0xc7c
	.uleb128 0x16
	.long	.LASF477
	.byte	0xa
	.value	0x332
	.long	0x3f
	.value	0xc80
	.uleb128 0x16
	.long	.LASF478
	.byte	0xa
	.value	0x334
	.long	0x3f
	.value	0xc84
	.uleb128 0x16
	.long	.LASF155
	.byte	0xa
	.value	0x335
	.long	0x3f
	.value	0xc88
	.uleb128 0x16
	.long	.LASF479
	.byte	0xa
	.value	0x337
	.long	0x3f
	.value	0xc8c
	.uleb128 0x16
	.long	.LASF480
	.byte	0xa
	.value	0x338
	.long	0x3f
	.value	0xc90
	.uleb128 0x16
	.long	.LASF481
	.byte	0xa
	.value	0x339
	.long	0x3f
	.value	0xc94
	.uleb128 0x16
	.long	.LASF482
	.byte	0xa
	.value	0x33a
	.long	0x3f
	.value	0xc98
	.uleb128 0x16
	.long	.LASF483
	.byte	0xa
	.value	0x33b
	.long	0x3f
	.value	0xc9c
	.uleb128 0x16
	.long	.LASF484
	.byte	0xa
	.value	0x33c
	.long	0x3f
	.value	0xca0
	.uleb128 0x16
	.long	.LASF485
	.byte	0xa
	.value	0x33f
	.long	0x3f
	.value	0xca4
	.uleb128 0x16
	.long	.LASF486
	.byte	0xa
	.value	0x340
	.long	0x3f
	.value	0xca8
	.uleb128 0x16
	.long	.LASF487
	.byte	0xa
	.value	0x341
	.long	0x3f
	.value	0xcac
	.uleb128 0x16
	.long	.LASF488
	.byte	0xa
	.value	0x342
	.long	0x3f
	.value	0xcb0
	.uleb128 0x16
	.long	.LASF489
	.byte	0xa
	.value	0x343
	.long	0x3f
	.value	0xcb4
	.uleb128 0x16
	.long	.LASF490
	.byte	0xa
	.value	0x345
	.long	0x3f
	.value	0xcb8
	.uleb128 0x16
	.long	.LASF491
	.byte	0xa
	.value	0x346
	.long	0x75c
	.value	0xcbc
	.uleb128 0x16
	.long	.LASF492
	.byte	0xa
	.value	0x349
	.long	0x3f
	.value	0xcdc
	.uleb128 0x16
	.long	.LASF493
	.byte	0xa
	.value	0x34c
	.long	0x3f
	.value	0xce0
	.uleb128 0x16
	.long	.LASF494
	.byte	0xa
	.value	0x34d
	.long	0x3f
	.value	0xce4
	.uleb128 0x16
	.long	.LASF495
	.byte	0xa
	.value	0x34e
	.long	0x3f
	.value	0xce8
	.uleb128 0x16
	.long	.LASF496
	.byte	0xa
	.value	0x34f
	.long	0x3f
	.value	0xcec
	.uleb128 0x16
	.long	.LASF497
	.byte	0xa
	.value	0x350
	.long	0x3f
	.value	0xcf0
	.uleb128 0x16
	.long	.LASF136
	.byte	0xa
	.value	0x351
	.long	0x3f
	.value	0xcf4
	.uleb128 0x16
	.long	.LASF137
	.byte	0xa
	.value	0x352
	.long	0x3f
	.value	0xcf8
	.uleb128 0x16
	.long	.LASF498
	.byte	0xa
	.value	0x355
	.long	0x3f
	.value	0xcfc
	.uleb128 0x16
	.long	.LASF499
	.byte	0xa
	.value	0x358
	.long	0x3f
	.value	0xd00
	.uleb128 0x16
	.long	.LASF500
	.byte	0xa
	.value	0x35b
	.long	0x3f
	.value	0xd04
	.uleb128 0x16
	.long	.LASF501
	.byte	0xa
	.value	0x35c
	.long	0x1e88
	.value	0xd08
	.uleb128 0x16
	.long	.LASF502
	.byte	0xa
	.value	0x35e
	.long	0x1e67
	.value	0xd38
	.uleb128 0x16
	.long	.LASF503
	.byte	0xa
	.value	0x35f
	.long	0x3f
	.value	0xe00
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x1e67
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0xb0
	.long	0x1e77
	.uleb128 0x6
	.long	0x96
	.byte	0xc7
	.byte	0
	.uleb128 0x5
	.long	0xb0
	.long	0x1e88
	.uleb128 0x20
	.long	0x96
	.value	0x3ff
	.byte	0
	.uleb128 0x5
	.long	0x11de
	.long	0x1e98
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.byte	0
	.uleb128 0x17
	.long	.LASF504
	.byte	0xa
	.value	0x361
	.long	0x1649
	.uleb128 0x21
	.long	0x11c20
	.byte	0xa
	.value	0x364
	.long	0x2889
	.uleb128 0xd
	.long	.LASF505
	.byte	0xa
	.value	0x366
	.long	0x3f
	.byte	0
	.uleb128 0x19
	.string	"pn"
	.byte	0xa
	.value	0x367
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF506
	.byte	0xa
	.value	0x368
	.long	0x3f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF507
	.byte	0xa
	.value	0x369
	.long	0x3f
	.byte	0xc
	.uleb128 0xd
	.long	.LASF508
	.byte	0xa
	.value	0x36a
	.long	0x3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF509
	.byte	0xa
	.value	0x36b
	.long	0x3f
	.byte	0x14
	.uleb128 0xd
	.long	.LASF256
	.byte	0xa
	.value	0x36c
	.long	0x3f
	.byte	0x18
	.uleb128 0xd
	.long	.LASF510
	.byte	0xa
	.value	0x36d
	.long	0x3f
	.byte	0x1c
	.uleb128 0xd
	.long	.LASF162
	.byte	0xa
	.value	0x36e
	.long	0x3f
	.byte	0x20
	.uleb128 0xd
	.long	.LASF511
	.byte	0xa
	.value	0x36f
	.long	0x3f
	.byte	0x24
	.uleb128 0x19
	.string	"qp"
	.byte	0xa
	.value	0x370
	.long	0x3f
	.byte	0x28
	.uleb128 0xd
	.long	.LASF268
	.byte	0xa
	.value	0x371
	.long	0x3f
	.byte	0x2c
	.uleb128 0xd
	.long	.LASF512
	.byte	0xa
	.value	0x372
	.long	0x14df
	.byte	0x30
	.uleb128 0xd
	.long	.LASF513
	.byte	0xa
	.value	0x373
	.long	0x3f
	.byte	0x34
	.uleb128 0xd
	.long	.LASF514
	.byte	0xa
	.value	0x374
	.long	0x3f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF515
	.byte	0xa
	.value	0x375
	.long	0x3f
	.byte	0x3c
	.uleb128 0xd
	.long	.LASF516
	.byte	0xa
	.value	0x376
	.long	0x3f
	.byte	0x40
	.uleb128 0xd
	.long	.LASF517
	.byte	0xa
	.value	0x377
	.long	0x3f
	.byte	0x44
	.uleb128 0xd
	.long	.LASF518
	.byte	0xa
	.value	0x378
	.long	0x3f
	.byte	0x48
	.uleb128 0xd
	.long	.LASF519
	.byte	0xa
	.value	0x379
	.long	0x3f
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF520
	.byte	0xa
	.value	0x37a
	.long	0x3f
	.byte	0x50
	.uleb128 0xd
	.long	.LASF521
	.byte	0xa
	.value	0x37b
	.long	0x3f
	.byte	0x54
	.uleb128 0xd
	.long	.LASF522
	.byte	0xa
	.value	0x37c
	.long	0x3f
	.byte	0x58
	.uleb128 0xd
	.long	.LASF523
	.byte	0xa
	.value	0x37d
	.long	0x3f
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF524
	.byte	0xa
	.value	0x37e
	.long	0x3f
	.byte	0x60
	.uleb128 0xd
	.long	.LASF525
	.byte	0xa
	.value	0x37f
	.long	0x1557
	.byte	0x68
	.uleb128 0xd
	.long	.LASF526
	.byte	0xa
	.value	0x380
	.long	0x1557
	.byte	0x70
	.uleb128 0xd
	.long	.LASF527
	.byte	0xa
	.value	0x382
	.long	0x3f
	.byte	0x78
	.uleb128 0xd
	.long	.LASF528
	.byte	0xa
	.value	0x383
	.long	0x2889
	.byte	0x80
	.uleb128 0xd
	.long	.LASF529
	.byte	0xa
	.value	0x385
	.long	0x3f
	.byte	0x88
	.uleb128 0xd
	.long	.LASF530
	.byte	0xa
	.value	0x386
	.long	0x3f
	.byte	0x8c
	.uleb128 0xd
	.long	.LASF531
	.byte	0xa
	.value	0x387
	.long	0x3f
	.byte	0x90
	.uleb128 0xd
	.long	.LASF532
	.byte	0xa
	.value	0x388
	.long	0x3f
	.byte	0x94
	.uleb128 0xd
	.long	.LASF533
	.byte	0xa
	.value	0x389
	.long	0x3f
	.byte	0x98
	.uleb128 0xd
	.long	.LASF534
	.byte	0xa
	.value	0x38a
	.long	0x3f
	.byte	0x9c
	.uleb128 0xd
	.long	.LASF535
	.byte	0xa
	.value	0x38b
	.long	0x3f
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF536
	.byte	0xa
	.value	0x38c
	.long	0x3f
	.byte	0xa4
	.uleb128 0xd
	.long	.LASF537
	.byte	0xa
	.value	0x38e
	.long	0x3f
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF538
	.byte	0xa
	.value	0x38f
	.long	0x3f
	.byte	0xac
	.uleb128 0xd
	.long	.LASF539
	.byte	0xa
	.value	0x390
	.long	0x3f
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF540
	.byte	0xa
	.value	0x391
	.long	0x3f
	.byte	0xb4
	.uleb128 0xd
	.long	.LASF541
	.byte	0xa
	.value	0x395
	.long	0x288f
	.byte	0xb8
	.uleb128 0x16
	.long	.LASF542
	.byte	0xa
	.value	0x397
	.long	0x28ab
	.value	0x12b8
	.uleb128 0x16
	.long	.LASF543
	.byte	0xa
	.value	0x398
	.long	0x28c7
	.value	0x1cb8
	.uleb128 0x16
	.long	.LASF544
	.byte	0xa
	.value	0x399
	.long	0x28e3
	.value	0x2138
	.uleb128 0x1d
	.string	"mpr"
	.byte	0xa
	.value	0x39a
	.long	0x2905
	.value	0x3138
	.uleb128 0x1d
	.string	"m7"
	.byte	0xa
	.value	0x39b
	.long	0x291b
	.value	0x3338
	.uleb128 0x16
	.long	.LASF545
	.byte	0xa
	.value	0x39d
	.long	0x2931
	.value	0x3738
	.uleb128 0x16
	.long	.LASF546
	.byte	0xa
	.value	0x39e
	.long	0x2889
	.value	0x3740
	.uleb128 0x16
	.long	.LASF547
	.byte	0xa
	.value	0x3a0
	.long	0x2937
	.value	0x3748
	.uleb128 0x16
	.long	.LASF548
	.byte	0xa
	.value	0x3a1
	.long	0x14d9
	.value	0x3750
	.uleb128 0x16
	.long	.LASF549
	.byte	0xa
	.value	0x3a2
	.long	0x293d
	.value	0x3758
	.uleb128 0x16
	.long	.LASF550
	.byte	0xa
	.value	0x3a3
	.long	0x2943
	.value	0x3760
	.uleb128 0x22
	.long	.LASF551
	.byte	0xa
	.value	0x3a5
	.long	0xb7
	.long	0x11860
	.uleb128 0x22
	.long	.LASF552
	.byte	0xa
	.value	0x3a6
	.long	0xb7
	.long	0x11868
	.uleb128 0x23
	.string	"tr"
	.byte	0xa
	.value	0x3a8
	.long	0x3f
	.long	0x11870
	.uleb128 0x22
	.long	.LASF553
	.byte	0xa
	.value	0x3a9
	.long	0x3f
	.long	0x11874
	.uleb128 0x22
	.long	.LASF554
	.byte	0xa
	.value	0x3aa
	.long	0x54
	.long	0x11878
	.uleb128 0x22
	.long	.LASF555
	.byte	0xa
	.value	0x3ab
	.long	0x54
	.long	0x1187c
	.uleb128 0x22
	.long	.LASF556
	.byte	0xa
	.value	0x3ac
	.long	0x2954
	.long	0x11880
	.uleb128 0x22
	.long	.LASF557
	.byte	0xa
	.value	0x3ad
	.long	0x3f
	.long	0x118c0
	.uleb128 0x22
	.long	.LASF558
	.byte	0xa
	.value	0x3ae
	.long	0x3f
	.long	0x118c4
	.uleb128 0x22
	.long	.LASF559
	.byte	0xa
	.value	0x3af
	.long	0x3f
	.long	0x118c8
	.uleb128 0x22
	.long	.LASF560
	.byte	0xa
	.value	0x3b0
	.long	0x3f
	.long	0x118cc
	.uleb128 0x22
	.long	.LASF561
	.byte	0xa
	.value	0x3b1
	.long	0x3f
	.long	0x118d0
	.uleb128 0x22
	.long	.LASF562
	.byte	0xa
	.value	0x3b4
	.long	0x11de
	.long	0x118d8
	.uleb128 0x22
	.long	.LASF563
	.byte	0xa
	.value	0x3b5
	.long	0x3f
	.long	0x118e0
	.uleb128 0x22
	.long	.LASF564
	.byte	0xa
	.value	0x3b6
	.long	0x3f
	.long	0x118e4
	.uleb128 0x22
	.long	.LASF565
	.byte	0xa
	.value	0x3b7
	.long	0x3f
	.long	0x118e8
	.uleb128 0x22
	.long	.LASF566
	.byte	0xa
	.value	0x3b8
	.long	0x3f
	.long	0x118ec
	.uleb128 0x22
	.long	.LASF567
	.byte	0xa
	.value	0x3ba
	.long	0x296a
	.long	0x118f0
	.uleb128 0x22
	.long	.LASF568
	.byte	0xa
	.value	0x3bb
	.long	0x296a
	.long	0x118f8
	.uleb128 0x22
	.long	.LASF569
	.byte	0xa
	.value	0x3bd
	.long	0x296a
	.long	0x11900
	.uleb128 0x22
	.long	.LASF570
	.byte	0xa
	.value	0x3be
	.long	0x296a
	.long	0x11908
	.uleb128 0x22
	.long	.LASF296
	.byte	0xa
	.value	0x3bf
	.long	0x298e
	.long	0x11910
	.uleb128 0x22
	.long	.LASF303
	.byte	0xa
	.value	0x3c3
	.long	0x3f
	.long	0x11930
	.uleb128 0x22
	.long	.LASF304
	.byte	0xa
	.value	0x3c4
	.long	0x3f
	.long	0x11934
	.uleb128 0x22
	.long	.LASF305
	.byte	0xa
	.value	0x3c5
	.long	0x3f
	.long	0x11938
	.uleb128 0x22
	.long	.LASF409
	.byte	0xa
	.value	0x3c7
	.long	0x3f
	.long	0x1193c
	.uleb128 0x22
	.long	.LASF571
	.byte	0xa
	.value	0x3c9
	.long	0x3f
	.long	0x11940
	.uleb128 0x22
	.long	.LASF572
	.byte	0xa
	.value	0x3ca
	.long	0x3f
	.long	0x11944
	.uleb128 0x22
	.long	.LASF573
	.byte	0xa
	.value	0x3cc
	.long	0x3f
	.long	0x11948
	.uleb128 0x22
	.long	.LASF574
	.byte	0xa
	.value	0x3cd
	.long	0x3f
	.long	0x1194c
	.uleb128 0x22
	.long	.LASF575
	.byte	0xa
	.value	0x3ce
	.long	0x299e
	.long	0x11950
	.uleb128 0x22
	.long	.LASF576
	.byte	0xa
	.value	0x3cf
	.long	0x3f
	.long	0x11ab8
	.uleb128 0x22
	.long	.LASF577
	.byte	0xa
	.value	0x3d0
	.long	0x3f
	.long	0x11abc
	.uleb128 0x22
	.long	.LASF578
	.byte	0xa
	.value	0x3d2
	.long	0x3f
	.long	0x11ac0
	.uleb128 0x22
	.long	.LASF579
	.byte	0xa
	.value	0x3d3
	.long	0x3f
	.long	0x11ac4
	.uleb128 0x22
	.long	.LASF580
	.byte	0xa
	.value	0x3d4
	.long	0x3f
	.long	0x11ac8
	.uleb128 0x22
	.long	.LASF581
	.byte	0xa
	.value	0x3d6
	.long	0x3f
	.long	0x11acc
	.uleb128 0x22
	.long	.LASF582
	.byte	0xa
	.value	0x3d8
	.long	0x3f
	.long	0x11ad0
	.uleb128 0x22
	.long	.LASF155
	.byte	0xa
	.value	0x3dc
	.long	0x54
	.long	0x11ad4
	.uleb128 0x22
	.long	.LASF157
	.byte	0xa
	.value	0x3e0
	.long	0x54
	.long	0x11ad8
	.uleb128 0x22
	.long	.LASF158
	.byte	0xa
	.value	0x3e1
	.long	0x3f
	.long	0x11adc
	.uleb128 0x22
	.long	.LASF159
	.byte	0xa
	.value	0x3e2
	.long	0x3f
	.long	0x11ae0
	.uleb128 0x22
	.long	.LASF160
	.byte	0xa
	.value	0x3e3
	.long	0x54
	.long	0x11ae4
	.uleb128 0x22
	.long	.LASF161
	.byte	0xa
	.value	0x3e4
	.long	0x29b4
	.long	0x11ae8
	.uleb128 0x22
	.long	.LASF583
	.byte	0xa
	.value	0x3e9
	.long	0x54
	.long	0x11aec
	.uleb128 0x22
	.long	.LASF584
	.byte	0xa
	.value	0x3ea
	.long	0x3f
	.long	0x11af0
	.uleb128 0x22
	.long	.LASF585
	.byte	0xa
	.value	0x3ec
	.long	0x86
	.long	0x11af4
	.uleb128 0x22
	.long	.LASF586
	.byte	0xa
	.value	0x3f0
	.long	0x54
	.long	0x11afc
	.uleb128 0x22
	.long	.LASF587
	.byte	0xa
	.value	0x3f1
	.long	0x3f
	.long	0x11b00
	.uleb128 0x22
	.long	.LASF588
	.byte	0xa
	.value	0x3f2
	.long	0x3f
	.long	0x11b04
	.uleb128 0x22
	.long	.LASF589
	.byte	0xa
	.value	0x3f3
	.long	0x3f
	.long	0x11b08
	.uleb128 0x22
	.long	.LASF590
	.byte	0xa
	.value	0x3f4
	.long	0x3f
	.long	0x11b0c
	.uleb128 0x22
	.long	.LASF591
	.byte	0xa
	.value	0x3f5
	.long	0x54
	.long	0x11b10
	.uleb128 0x22
	.long	.LASF592
	.byte	0xa
	.value	0x3f7
	.long	0x54
	.long	0x11b14
	.uleb128 0x22
	.long	.LASF593
	.byte	0xa
	.value	0x3f8
	.long	0x54
	.long	0x11b18
	.uleb128 0x22
	.long	.LASF594
	.byte	0xa
	.value	0x3f9
	.long	0x54
	.long	0x11b1c
	.uleb128 0x22
	.long	.LASF595
	.byte	0xa
	.value	0x3fa
	.long	0x54
	.long	0x11b20
	.uleb128 0x22
	.long	.LASF596
	.byte	0xa
	.value	0x3fb
	.long	0x54
	.long	0x11b24
	.uleb128 0x22
	.long	.LASF597
	.byte	0xa
	.value	0x3fc
	.long	0x54
	.long	0x11b28
	.uleb128 0x22
	.long	.LASF119
	.byte	0xa
	.value	0x3ff
	.long	0x54
	.long	0x11b2c
	.uleb128 0x22
	.long	.LASF598
	.byte	0xa
	.value	0x403
	.long	0x3f
	.long	0x11b30
	.uleb128 0x22
	.long	.LASF599
	.byte	0xa
	.value	0x405
	.long	0x3f
	.long	0x11b34
	.uleb128 0x22
	.long	.LASF600
	.byte	0xa
	.value	0x406
	.long	0x3f
	.long	0x11b38
	.uleb128 0x22
	.long	.LASF601
	.byte	0xa
	.value	0x407
	.long	0x3f
	.long	0x11b3c
	.uleb128 0x22
	.long	.LASF602
	.byte	0xa
	.value	0x409
	.long	0x29c4
	.long	0x11b40
	.uleb128 0x22
	.long	.LASF480
	.byte	0xa
	.value	0x40b
	.long	0x3f
	.long	0x11b48
	.uleb128 0x22
	.long	.LASF603
	.byte	0xa
	.value	0x40f
	.long	0x3f
	.long	0x11b4c
	.uleb128 0x22
	.long	.LASF604
	.byte	0xa
	.value	0x410
	.long	0x3f
	.long	0x11b50
	.uleb128 0x22
	.long	.LASF605
	.byte	0xa
	.value	0x411
	.long	0x3f
	.long	0x11b54
	.uleb128 0x22
	.long	.LASF606
	.byte	0xa
	.value	0x412
	.long	0x3f
	.long	0x11b58
	.uleb128 0x22
	.long	.LASF607
	.byte	0xa
	.value	0x413
	.long	0x11de
	.long	0x11b60
	.uleb128 0x22
	.long	.LASF608
	.byte	0xa
	.value	0x414
	.long	0x3f
	.long	0x11b68
	.uleb128 0x22
	.long	.LASF609
	.byte	0xa
	.value	0x415
	.long	0x3f
	.long	0x11b6c
	.uleb128 0x22
	.long	.LASF610
	.byte	0xa
	.value	0x416
	.long	0x3f
	.long	0x11b70
	.uleb128 0x22
	.long	.LASF611
	.byte	0xa
	.value	0x417
	.long	0x3f
	.long	0x11b74
	.uleb128 0x22
	.long	.LASF612
	.byte	0xa
	.value	0x418
	.long	0x3f
	.long	0x11b78
	.uleb128 0x22
	.long	.LASF613
	.byte	0xa
	.value	0x419
	.long	0x3f
	.long	0x11b7c
	.uleb128 0x22
	.long	.LASF614
	.byte	0xa
	.value	0x41a
	.long	0x3f
	.long	0x11b80
	.uleb128 0x22
	.long	.LASF615
	.byte	0xa
	.value	0x41b
	.long	0x29ca
	.long	0x11b88
	.uleb128 0x22
	.long	.LASF616
	.byte	0xa
	.value	0x41c
	.long	0x3f
	.long	0x11b90
	.uleb128 0x22
	.long	.LASF617
	.byte	0xa
	.value	0x41d
	.long	0x3f
	.long	0x11b94
	.uleb128 0x22
	.long	.LASF618
	.byte	0xa
	.value	0x41e
	.long	0x3f
	.long	0x11b98
	.uleb128 0x22
	.long	.LASF619
	.byte	0xa
	.value	0x41f
	.long	0x3f
	.long	0x11b9c
	.uleb128 0x22
	.long	.LASF620
	.byte	0xa
	.value	0x420
	.long	0x3f
	.long	0x11ba0
	.uleb128 0x22
	.long	.LASF621
	.byte	0xa
	.value	0x421
	.long	0x3f
	.long	0x11ba4
	.uleb128 0x22
	.long	.LASF622
	.byte	0xa
	.value	0x422
	.long	0x3f
	.long	0x11ba8
	.uleb128 0x22
	.long	.LASF623
	.byte	0xa
	.value	0x423
	.long	0x3f
	.long	0x11bac
	.uleb128 0x22
	.long	.LASF624
	.byte	0xa
	.value	0x424
	.long	0x3f
	.long	0x11bb0
	.uleb128 0x22
	.long	.LASF625
	.byte	0xa
	.value	0x425
	.long	0x3f
	.long	0x11bb4
	.uleb128 0x22
	.long	.LASF626
	.byte	0xa
	.value	0x426
	.long	0x3f
	.long	0x11bb8
	.uleb128 0x22
	.long	.LASF627
	.byte	0xa
	.value	0x428
	.long	0x3f
	.long	0x11bbc
	.uleb128 0x22
	.long	.LASF628
	.byte	0xa
	.value	0x42a
	.long	0x3f
	.long	0x11bc0
	.uleb128 0x22
	.long	.LASF629
	.byte	0xa
	.value	0x42b
	.long	0x3f
	.long	0x11bc4
	.uleb128 0x22
	.long	.LASF630
	.byte	0xa
	.value	0x42c
	.long	0x3f
	.long	0x11bc8
	.uleb128 0x22
	.long	.LASF477
	.byte	0xa
	.value	0x42e
	.long	0x3f
	.long	0x11bcc
	.uleb128 0x22
	.long	.LASF631
	.byte	0xa
	.value	0x430
	.long	0x3f
	.long	0x11bd0
	.uleb128 0x22
	.long	.LASF632
	.byte	0xa
	.value	0x431
	.long	0x3f
	.long	0x11bd4
	.uleb128 0x22
	.long	.LASF633
	.byte	0xa
	.value	0x432
	.long	0x3f
	.long	0x11bd8
	.uleb128 0x22
	.long	.LASF634
	.byte	0xa
	.value	0x433
	.long	0x3f
	.long	0x11bdc
	.uleb128 0x22
	.long	.LASF635
	.byte	0xa
	.value	0x434
	.long	0x3f
	.long	0x11be0
	.uleb128 0x22
	.long	.LASF636
	.byte	0xa
	.value	0x435
	.long	0x3f
	.long	0x11be4
	.uleb128 0x22
	.long	.LASF637
	.byte	0xa
	.value	0x436
	.long	0x54
	.long	0x11be8
	.uleb128 0x22
	.long	.LASF638
	.byte	0xa
	.value	0x437
	.long	0x3f
	.long	0x11bec
	.uleb128 0x22
	.long	.LASF639
	.byte	0xa
	.value	0x438
	.long	0x3f
	.long	0x11bf0
	.uleb128 0x22
	.long	.LASF640
	.byte	0xa
	.value	0x43a
	.long	0x3f
	.long	0x11bf4
	.uleb128 0x22
	.long	.LASF641
	.byte	0xa
	.value	0x43b
	.long	0x3f
	.long	0x11bf8
	.uleb128 0x22
	.long	.LASF391
	.byte	0xa
	.value	0x43c
	.long	0x3f
	.long	0x11bfc
	.uleb128 0x22
	.long	.LASF642
	.byte	0xa
	.value	0x43d
	.long	0x3f
	.long	0x11c00
	.uleb128 0x22
	.long	.LASF643
	.byte	0xa
	.value	0x43e
	.long	0x3f
	.long	0x11c04
	.uleb128 0x22
	.long	.LASF644
	.byte	0xa
	.value	0x43f
	.long	0x3f
	.long	0x11c08
	.uleb128 0x22
	.long	.LASF645
	.byte	0xa
	.value	0x441
	.long	0x86
	.long	0x11c0c
	.uleb128 0x22
	.long	.LASF499
	.byte	0xa
	.value	0x444
	.long	0x3f
	.long	0x11c14
	.uleb128 0x22
	.long	.LASF646
	.byte	0xa
	.value	0x446
	.long	0x3f
	.long	0x11c18
	.uleb128 0x22
	.long	.LASF647
	.byte	0xa
	.value	0x447
	.long	0x3f
	.long	0x11c1c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x1557
	.uleb128 0x5
	.long	0x4d
	.long	0x28ab
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
	.long	0x28c7
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
	.long	0x28e3
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
	.long	0x2905
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
	.long	0x291b
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x2931
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2889
	.uleb128 0x8
	.byte	0x8
	.long	0x14e6
	.uleb128 0x8
	.byte	0x8
	.long	0x11e5
	.uleb128 0x5
	.long	0xf10
	.long	0x2954
	.uleb128 0x20
	.long	0x96
	.value	0x4af
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x296a
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2970
	.uleb128 0x8
	.byte	0x8
	.long	0x2976
	.uleb128 0x8
	.byte	0x8
	.long	0x297c
	.uleb128 0x8
	.byte	0x8
	.long	0x2982
	.uleb128 0x8
	.byte	0x8
	.long	0x2988
	.uleb128 0x8
	.byte	0x8
	.long	0x62
	.uleb128 0x5
	.long	0x62
	.long	0x299e
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x29b4
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x29c4
	.uleb128 0x6
	.long	0x96
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe3a
	.uleb128 0x8
	.byte	0x8
	.long	0x11de
	.uleb128 0x17
	.long	.LASF648
	.byte	0xa
	.value	0x449
	.long	0x1ea4
	.uleb128 0x15
	.value	0x5d8
	.byte	0xa
	.value	0x44d
	.long	0x2bb9
	.uleb128 0xd
	.long	.LASF649
	.byte	0xa
	.value	0x44f
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF650
	.byte	0xa
	.value	0x450
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF651
	.byte	0xa
	.value	0x451
	.long	0x14df
	.byte	0x8
	.uleb128 0xd
	.long	.LASF652
	.byte	0xa
	.value	0x452
	.long	0x14df
	.byte	0xc
	.uleb128 0xd
	.long	.LASF653
	.byte	0xa
	.value	0x453
	.long	0x3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF654
	.byte	0xa
	.value	0x454
	.long	0x3f
	.byte	0x14
	.uleb128 0xd
	.long	.LASF655
	.byte	0xa
	.value	0x455
	.long	0x3f
	.byte	0x18
	.uleb128 0xd
	.long	.LASF656
	.byte	0xa
	.value	0x456
	.long	0x3f
	.byte	0x1c
	.uleb128 0xd
	.long	.LASF657
	.byte	0xa
	.value	0x457
	.long	0x2bb9
	.byte	0x20
	.uleb128 0xd
	.long	.LASF658
	.byte	0xa
	.value	0x458
	.long	0x2bcf
	.byte	0x48
	.uleb128 0x16
	.long	.LASF659
	.byte	0xa
	.value	0x459
	.long	0x2bcf
	.value	0x174
	.uleb128 0x16
	.long	.LASF660
	.byte	0xa
	.value	0x45a
	.long	0x11ce
	.value	0x2a0
	.uleb128 0x16
	.long	.LASF661
	.byte	0xa
	.value	0x45d
	.long	0xb7
	.value	0x2b0
	.uleb128 0x16
	.long	.LASF662
	.byte	0xa
	.value	0x45e
	.long	0xb7
	.value	0x2b8
	.uleb128 0x16
	.long	.LASF663
	.byte	0xa
	.value	0x45f
	.long	0x3f
	.value	0x2c0
	.uleb128 0x16
	.long	.LASF664
	.byte	0xa
	.value	0x460
	.long	0x3f
	.value	0x2c4
	.uleb128 0x16
	.long	.LASF665
	.byte	0xa
	.value	0x461
	.long	0x3f
	.value	0x2c8
	.uleb128 0x16
	.long	.LASF666
	.byte	0xa
	.value	0x462
	.long	0x14df
	.value	0x2cc
	.uleb128 0x16
	.long	.LASF667
	.byte	0xa
	.value	0x463
	.long	0x14df
	.value	0x2d0
	.uleb128 0x16
	.long	.LASF668
	.byte	0xa
	.value	0x464
	.long	0x14df
	.value	0x2d4
	.uleb128 0x16
	.long	.LASF669
	.byte	0xa
	.value	0x466
	.long	0x2bcf
	.value	0x2d8
	.uleb128 0x16
	.long	.LASF670
	.byte	0xa
	.value	0x467
	.long	0x2bcf
	.value	0x404
	.uleb128 0x16
	.long	.LASF671
	.byte	0xa
	.value	0x468
	.long	0x2be5
	.value	0x530
	.uleb128 0x16
	.long	.LASF672
	.byte	0xa
	.value	0x469
	.long	0x2be5
	.value	0x544
	.uleb128 0x16
	.long	.LASF673
	.byte	0xa
	.value	0x46a
	.long	0x2be5
	.value	0x558
	.uleb128 0x16
	.long	.LASF674
	.byte	0xa
	.value	0x46b
	.long	0x2be5
	.value	0x56c
	.uleb128 0x16
	.long	.LASF675
	.byte	0xa
	.value	0x46c
	.long	0x2be5
	.value	0x580
	.uleb128 0x16
	.long	.LASF676
	.byte	0xa
	.value	0x46d
	.long	0x2be5
	.value	0x594
	.uleb128 0x16
	.long	.LASF677
	.byte	0xa
	.value	0x46e
	.long	0x2be5
	.value	0x5a8
	.uleb128 0x16
	.long	.LASF678
	.byte	0xa
	.value	0x470
	.long	0x3f
	.value	0x5bc
	.uleb128 0x16
	.long	.LASF679
	.byte	0xa
	.value	0x471
	.long	0x3f
	.value	0x5c0
	.uleb128 0x16
	.long	.LASF680
	.byte	0xa
	.value	0x472
	.long	0xb7
	.value	0x5c8
	.uleb128 0x16
	.long	.LASF681
	.byte	0xa
	.value	0x473
	.long	0x3f
	.value	0x5d0
	.uleb128 0x16
	.long	.LASF682
	.byte	0xa
	.value	0x474
	.long	0x3f
	.value	0x5d4
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x2bcf
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x2be5
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x2bf5
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.long	.LASF683
	.byte	0xa
	.value	0x475
	.long	0x29dc
	.uleb128 0x15
	.value	0xd20
	.byte	0xa
	.value	0x479
	.long	0x2d83
	.uleb128 0xd
	.long	.LASF684
	.byte	0xa
	.value	0x47b
	.long	0x11de
	.byte	0
	.uleb128 0xd
	.long	.LASF685
	.byte	0xa
	.value	0x47d
	.long	0x291b
	.byte	0x8
	.uleb128 0x16
	.long	.LASF686
	.byte	0xa
	.value	0x47e
	.long	0x291b
	.value	0x408
	.uleb128 0x16
	.long	.LASF687
	.byte	0xa
	.value	0x47e
	.long	0x291b
	.value	0x808
	.uleb128 0x16
	.long	.LASF545
	.byte	0xa
	.value	0x47f
	.long	0x2931
	.value	0xc08
	.uleb128 0x16
	.long	.LASF546
	.byte	0xa
	.value	0x480
	.long	0x2889
	.value	0xc10
	.uleb128 0x16
	.long	.LASF272
	.byte	0xa
	.value	0x481
	.long	0x3f
	.value	0xc18
	.uleb128 0x16
	.long	.LASF296
	.byte	0xa
	.value	0x483
	.long	0x3f
	.value	0xc1c
	.uleb128 0x16
	.long	.LASF276
	.byte	0xa
	.value	0x485
	.long	0x11ce
	.value	0xc20
	.uleb128 0x16
	.long	.LASF277
	.byte	0xa
	.value	0x485
	.long	0x11ce
	.value	0xc30
	.uleb128 0x16
	.long	.LASF525
	.byte	0xa
	.value	0x486
	.long	0x1557
	.value	0xc40
	.uleb128 0x16
	.long	.LASF273
	.byte	0xa
	.value	0x487
	.long	0x11be
	.value	0xc48
	.uleb128 0x1d
	.string	"cbp"
	.byte	0xa
	.value	0x488
	.long	0x3f
	.value	0xc88
	.uleb128 0x16
	.long	.LASF275
	.byte	0xa
	.value	0x489
	.long	0x964
	.value	0xc90
	.uleb128 0x16
	.long	.LASF688
	.byte	0xa
	.value	0x48a
	.long	0x3f
	.value	0xc98
	.uleb128 0x16
	.long	.LASF567
	.byte	0xa
	.value	0x48b
	.long	0x296a
	.value	0xca0
	.uleb128 0x16
	.long	.LASF568
	.byte	0xa
	.value	0x48c
	.long	0x296a
	.value	0xca8
	.uleb128 0x16
	.long	.LASF569
	.byte	0xa
	.value	0x48d
	.long	0x296a
	.value	0xcb0
	.uleb128 0x16
	.long	.LASF570
	.byte	0xa
	.value	0x48e
	.long	0x296a
	.value	0xcb8
	.uleb128 0x16
	.long	.LASF689
	.byte	0xa
	.value	0x48f
	.long	0x2d83
	.value	0xcc0
	.uleb128 0x16
	.long	.LASF577
	.byte	0xa
	.value	0x490
	.long	0x3f
	.value	0xd00
	.uleb128 0x16
	.long	.LASF282
	.byte	0xa
	.value	0x491
	.long	0x3f
	.value	0xd04
	.uleb128 0x16
	.long	.LASF294
	.byte	0xa
	.value	0x493
	.long	0x3f
	.value	0xd08
	.uleb128 0x16
	.long	.LASF295
	.byte	0xa
	.value	0x494
	.long	0x3f
	.value	0xd0c
	.uleb128 0x1d
	.string	"qp"
	.byte	0xa
	.value	0x496
	.long	0x3f
	.value	0xd10
	.uleb128 0x16
	.long	.LASF298
	.byte	0xa
	.value	0x497
	.long	0x3f
	.value	0xd14
	.uleb128 0x16
	.long	.LASF299
	.byte	0xa
	.value	0x498
	.long	0x3f
	.value	0xd18
	.byte	0
	.uleb128 0x5
	.long	0x62
	.long	0x2d9f
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF690
	.byte	0xa
	.value	0x499
	.long	0x2c01
	.uleb128 0x1e
	.byte	0x18
	.byte	0xa
	.value	0x49e
	.long	0x2e03
	.uleb128 0xd
	.long	.LASF691
	.byte	0xa
	.value	0x4a0
	.long	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF692
	.byte	0xa
	.value	0x4a1
	.long	0x3f
	.byte	0x4
	.uleb128 0xd
	.long	.LASF693
	.byte	0xa
	.value	0x4a2
	.long	0x3f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF694
	.byte	0xa
	.value	0x4a3
	.long	0x3f
	.byte	0xc
	.uleb128 0xd
	.long	.LASF695
	.byte	0xa
	.value	0x4a4
	.long	0x3f
	.byte	0x10
	.uleb128 0xd
	.long	.LASF696
	.byte	0xa
	.value	0x4a5
	.long	0x3f
	.byte	0x14
	.byte	0
	.uleb128 0x17
	.long	.LASF697
	.byte	0xa
	.value	0x4a6
	.long	0x2dab
	.uleb128 0x24
	.long	.LASF698
	.value	0x19b8
	.byte	0xb
	.byte	0x15
	.long	0x3085
	.uleb128 0xb
	.long	.LASF510
	.byte	0xb
	.byte	0x17
	.long	0xa23
	.byte	0
	.uleb128 0x14
	.string	"poc"
	.byte	0xb
	.byte	0x19
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF699
	.byte	0xb
	.byte	0x1a
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF700
	.byte	0xb
	.byte	0x1b
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF701
	.byte	0xb
	.byte	0x1c
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF702
	.byte	0xb
	.byte	0x1d
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF703
	.byte	0xb
	.byte	0x1e
	.long	0x3085
	.byte	0x18
	.uleb128 0x12
	.long	.LASF704
	.byte	0xb
	.byte	0x1f
	.long	0x3085
	.value	0x648
	.uleb128 0x12
	.long	.LASF705
	.byte	0xb
	.byte	0x20
	.long	0x3085
	.value	0xc78
	.uleb128 0x12
	.long	.LASF706
	.byte	0xb
	.byte	0x21
	.long	0x3085
	.value	0x12a8
	.uleb128 0x12
	.long	.LASF591
	.byte	0xb
	.byte	0x22
	.long	0x54
	.value	0x18d8
	.uleb128 0x12
	.long	.LASF707
	.byte	0xb
	.byte	0x23
	.long	0x3f
	.value	0x18dc
	.uleb128 0x12
	.long	.LASF251
	.byte	0xb
	.byte	0x24
	.long	0x3f
	.value	0x18e0
	.uleb128 0x12
	.long	.LASF252
	.byte	0xb
	.byte	0x25
	.long	0x3f
	.value	0x18e4
	.uleb128 0x12
	.long	.LASF708
	.byte	0xb
	.byte	0x27
	.long	0x3f
	.value	0x18e8
	.uleb128 0x12
	.long	.LASF709
	.byte	0xb
	.byte	0x28
	.long	0x3f
	.value	0x18ec
	.uleb128 0x12
	.long	.LASF710
	.byte	0xb
	.byte	0x29
	.long	0x3f
	.value	0x18f0
	.uleb128 0x12
	.long	.LASF711
	.byte	0xb
	.byte	0x2a
	.long	0x3f
	.value	0x18f4
	.uleb128 0x12
	.long	.LASF712
	.byte	0xb
	.byte	0x2c
	.long	0x3f
	.value	0x18f8
	.uleb128 0x12
	.long	.LASF713
	.byte	0xb
	.byte	0x2c
	.long	0x3f
	.value	0x18fc
	.uleb128 0x12
	.long	.LASF714
	.byte	0xb
	.byte	0x2c
	.long	0x3f
	.value	0x1900
	.uleb128 0x12
	.long	.LASF715
	.byte	0xb
	.byte	0x2c
	.long	0x3f
	.value	0x1904
	.uleb128 0x12
	.long	.LASF716
	.byte	0xb
	.byte	0x2d
	.long	0x3f
	.value	0x1908
	.uleb128 0x12
	.long	.LASF717
	.byte	0xb
	.byte	0x2e
	.long	0x3f
	.value	0x190c
	.uleb128 0x12
	.long	.LASF582
	.byte	0xb
	.byte	0x2f
	.long	0x3f
	.value	0x1910
	.uleb128 0x12
	.long	.LASF718
	.byte	0xb
	.byte	0x31
	.long	0x1563
	.value	0x1918
	.uleb128 0x12
	.long	.LASF719
	.byte	0xb
	.byte	0x32
	.long	0x1569
	.value	0x1920
	.uleb128 0x12
	.long	.LASF720
	.byte	0xb
	.byte	0x33
	.long	0x1569
	.value	0x1928
	.uleb128 0x12
	.long	.LASF721
	.byte	0xb
	.byte	0x34
	.long	0x1563
	.value	0x1930
	.uleb128 0x12
	.long	.LASF722
	.byte	0xb
	.byte	0x35
	.long	0x1563
	.value	0x1938
	.uleb128 0x12
	.long	.LASF723
	.byte	0xb
	.byte	0x36
	.long	0x155d
	.value	0x1940
	.uleb128 0x12
	.long	.LASF284
	.byte	0xb
	.byte	0x38
	.long	0x77c
	.value	0x1948
	.uleb128 0x12
	.long	.LASF724
	.byte	0xb
	.byte	0x3a
	.long	0x297c
	.value	0x1950
	.uleb128 0x12
	.long	.LASF725
	.byte	0xb
	.byte	0x3c
	.long	0x309b
	.value	0x1958
	.uleb128 0x12
	.long	.LASF726
	.byte	0xb
	.byte	0x3f
	.long	0x309b
	.value	0x1960
	.uleb128 0x25
	.string	"mv"
	.byte	0xb
	.byte	0x42
	.long	0x2976
	.value	0x1968
	.uleb128 0x12
	.long	.LASF727
	.byte	0xb
	.byte	0x44
	.long	0x1575
	.value	0x1970
	.uleb128 0x12
	.long	.LASF728
	.byte	0xb
	.byte	0x45
	.long	0x1575
	.value	0x1978
	.uleb128 0x12
	.long	.LASF574
	.byte	0xb
	.byte	0x47
	.long	0x30ad
	.value	0x1980
	.uleb128 0x12
	.long	.LASF729
	.byte	0xb
	.byte	0x48
	.long	0x30ad
	.value	0x1988
	.uleb128 0x12
	.long	.LASF730
	.byte	0xb
	.byte	0x49
	.long	0x30ad
	.value	0x1990
	.uleb128 0x12
	.long	.LASF149
	.byte	0xb
	.byte	0x4b
	.long	0x3f
	.value	0x1998
	.uleb128 0x12
	.long	.LASF166
	.byte	0xb
	.byte	0x4c
	.long	0x3f
	.value	0x199c
	.uleb128 0x12
	.long	.LASF169
	.byte	0xb
	.byte	0x4d
	.long	0x3f
	.value	0x19a0
	.uleb128 0x12
	.long	.LASF170
	.byte	0xb
	.byte	0x4e
	.long	0x3f
	.value	0x19a4
	.uleb128 0x12
	.long	.LASF171
	.byte	0xb
	.byte	0x4f
	.long	0x3f
	.value	0x19a8
	.uleb128 0x12
	.long	.LASF172
	.byte	0xb
	.byte	0x50
	.long	0x3f
	.value	0x19ac
	.uleb128 0x12
	.long	.LASF173
	.byte	0xb
	.byte	0x51
	.long	0x3f
	.value	0x19b0
	.byte	0
	.uleb128 0x5
	.long	0x964
	.long	0x309b
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.uleb128 0x6
	.long	0x96
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x30a1
	.uleb128 0x8
	.byte	0x8
	.long	0x30a7
	.uleb128 0x8
	.byte	0x8
	.long	0x964
	.uleb128 0x8
	.byte	0x8
	.long	0x2e0f
	.uleb128 0x2
	.long	.LASF731
	.byte	0xb
	.byte	0x52
	.long	0x2e0f
	.uleb128 0x24
	.long	.LASF732
	.value	0x1310
	.byte	0xb
	.byte	0x56
	.long	0x31cb
	.uleb128 0xb
	.long	.LASF167
	.byte	0xb
	.byte	0x58
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF712
	.byte	0xb
	.byte	0x59
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF713
	.byte	0xb
	.byte	0x59
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF703
	.byte	0xb
	.byte	0x5b
	.long	0x3085
	.byte	0x10
	.uleb128 0x12
	.long	.LASF724
	.byte	0xb
	.byte	0x5d
	.long	0x297c
	.value	0x640
	.uleb128 0x12
	.long	.LASF725
	.byte	0xb
	.byte	0x5e
	.long	0x309b
	.value	0x648
	.uleb128 0x25
	.string	"mv"
	.byte	0xb
	.byte	0x5f
	.long	0x2976
	.value	0x650
	.uleb128 0x12
	.long	.LASF727
	.byte	0xb
	.byte	0x60
	.long	0x1575
	.value	0x658
	.uleb128 0x12
	.long	.LASF705
	.byte	0xb
	.byte	0x63
	.long	0x3085
	.value	0x660
	.uleb128 0x12
	.long	.LASF733
	.byte	0xb
	.byte	0x64
	.long	0x297c
	.value	0xc90
	.uleb128 0x12
	.long	.LASF734
	.byte	0xb
	.byte	0x65
	.long	0x309b
	.value	0xc98
	.uleb128 0x12
	.long	.LASF735
	.byte	0xb
	.byte	0x66
	.long	0x2976
	.value	0xca0
	.uleb128 0x12
	.long	.LASF736
	.byte	0xb
	.byte	0x67
	.long	0x1575
	.value	0xca8
	.uleb128 0x12
	.long	.LASF706
	.byte	0xb
	.byte	0x6a
	.long	0x3085
	.value	0xcb0
	.uleb128 0x12
	.long	.LASF737
	.byte	0xb
	.byte	0x6b
	.long	0x297c
	.value	0x12e0
	.uleb128 0x12
	.long	.LASF738
	.byte	0xb
	.byte	0x6c
	.long	0x309b
	.value	0x12e8
	.uleb128 0x12
	.long	.LASF739
	.byte	0xb
	.byte	0x6d
	.long	0x2976
	.value	0x12f0
	.uleb128 0x12
	.long	.LASF740
	.byte	0xb
	.byte	0x6e
	.long	0x1575
	.value	0x12f8
	.uleb128 0x12
	.long	.LASF708
	.byte	0xb
	.byte	0x70
	.long	0x3f
	.value	0x1300
	.uleb128 0x12
	.long	.LASF728
	.byte	0xb
	.byte	0x71
	.long	0x1575
	.value	0x1308
	.byte	0
	.uleb128 0x2
	.long	.LASF741
	.byte	0xb
	.byte	0x73
	.long	0x30be
	.uleb128 0x8
	.byte	0x8
	.long	0x30b3
	.uleb128 0x26
	.long	.LASF778
	.byte	0x1
	.byte	0xd4
	.long	0x3f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x327a
	.uleb128 0x27
	.long	.LASF742
	.byte	0x1
	.byte	0xd4
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF743
	.byte	0x1
	.byte	0xd4
	.long	0x327a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.string	"M"
	.byte	0x1
	.byte	0xd6
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"N"
	.byte	0x1
	.byte	0xd6
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.byte	0xd6
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"np"
	.byte	0x1
	.byte	0xd6
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"nb"
	.byte	0x1
	.byte	0xd6
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2a
	.string	"bi"
	.byte	0x1
	.value	0x161
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xaa
	.uleb128 0x2b
	.long	.LASF744
	.byte	0x1
	.value	0x1e7
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF745
	.byte	0x1
	.value	0x224
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF746
	.byte	0x1
	.value	0x257
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x32fa
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x259
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"k"
	.byte	0x1
	.value	0x259
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"l"
	.byte	0x1
	.value	0x259
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF747
	.byte	0x1
	.value	0x26e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x336e
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x270
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x270
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF748
	.byte	0x1
	.value	0x271
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF749
	.byte	0x1
	.value	0x273
	.long	0x11ce
	.uleb128 0x9
	.byte	0x3
	.quad	mb_width_cr.5897
	.uleb128 0x2f
	.long	.LASF750
	.byte	0x1
	.value	0x274
	.long	0x11ce
	.uleb128 0x9
	.byte	0x3
	.quad	mb_height_cr.5898
	.byte	0
	.uleb128 0x2b
	.long	.LASF751
	.byte	0x1
	.value	0x34e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF752
	.byte	0x1
	.value	0x3a2
	.long	0x2937
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x33ba
	.uleb128 0x2a
	.string	"pic"
	.byte	0x1
	.value	0x3a4
	.long	0x2937
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF753
	.byte	0x1
	.value	0x3b4
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x33e8
	.uleb128 0x32
	.string	"pic"
	.byte	0x1
	.value	0x3b4
	.long	0x2937
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF754
	.byte	0x1
	.value	0x3c4
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x34cd
	.uleb128 0x2f
	.long	.LASF755
	.byte	0x1
	.value	0x3c6
	.long	0x34cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x2f
	.long	.LASF756
	.byte	0x1
	.value	0x3c7
	.long	0x2bcf
	.uleb128 0x9
	.byte	0x3
	.quad	last_mode_use.5919
	.uleb128 0x2f
	.long	.LASF757
	.byte	0x1
	.value	0x3c8
	.long	0x2bb9
	.uleb128 0x9
	.byte	0x3
	.quad	last_b8_mode_0.5920
	.uleb128 0x2f
	.long	.LASF758
	.byte	0x1
	.value	0x3c9
	.long	0x11ce
	.uleb128 0x9
	.byte	0x3
	.quad	last_mode_chroma_use.5921
	.uleb128 0x2f
	.long	.LASF759
	.byte	0x1
	.value	0x3ca
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	last_bit_ctr_n.5922
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x3cb
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x2f
	.long	.LASF760
	.byte	0x1
	.value	0x3cc
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x2f
	.long	.LASF269
	.byte	0x1
	.value	0x3cd
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x2a
	.string	"now"
	.byte	0x1
	.value	0x3d0
	.long	0xc4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x2f
	.long	.LASF761
	.byte	0x1
	.value	0x3d1
	.long	0x34d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x2f
	.long	.LASF762
	.byte	0x1
	.value	0x3d2
	.long	0x34d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x17c
	.uleb128 0x8
	.byte	0x8
	.long	0xec
	.uleb128 0x5
	.long	0xb0
	.long	0x34ea
	.uleb128 0x20
	.long	0x96
	.value	0x3e7
	.byte	0
	.uleb128 0x2e
	.long	.LASF763
	.byte	0x1
	.value	0x497
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x35db
	.uleb128 0x2f
	.long	.LASF764
	.byte	0x1
	.value	0x499
	.long	0x2bb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x49a
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x49a
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x2f
	.long	.LASF760
	.byte	0x1
	.value	0x49b
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x2f
	.long	.LASF765
	.byte	0x1
	.value	0x49c
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0x2f
	.long	.LASF766
	.byte	0x1
	.value	0x49d
	.long	0x14df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x2f
	.long	.LASF767
	.byte	0x1
	.value	0x49e
	.long	0x35db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x33
	.string	"now"
	.byte	0x1
	.value	0x4a1
	.long	0xc4
	.uleb128 0x34
	.long	.LASF761
	.byte	0x1
	.value	0x4a2
	.long	0x34d3
	.uleb128 0x2f
	.long	.LASF762
	.byte	0x1
	.value	0x4a3
	.long	0x34d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.long	.LASF768
	.byte	0x1
	.value	0x4ef
	.long	0x35eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x4f0
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x4f0
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1084
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x14df
	.long	0x35eb
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0xb0
	.long	0x35fb
	.uleb128 0x6
	.long	0x96
	.byte	0x4f
	.byte	0
	.uleb128 0x2e
	.long	.LASF769
	.byte	0x1
	.value	0x70b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3629
	.uleb128 0x2f
	.long	.LASF770
	.byte	0x1
	.value	0x70d
	.long	0x3629
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x5
	.long	0xb0
	.long	0x363f
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.byte	0
	.uleb128 0x30
	.long	.LASF771
	.byte	0x1
	.value	0x723
	.long	0x3f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3671
	.uleb128 0x2f
	.long	.LASF772
	.byte	0x1
	.value	0x725
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF773
	.byte	0x1
	.value	0x74f
	.long	0x3f
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x36c8
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x751
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF772
	.byte	0x1
	.value	0x751
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF774
	.byte	0x1
	.value	0x753
	.long	0xb7
	.uleb128 0x35
	.long	.LASF775
	.byte	0x1
	.value	0x754
	.long	0xb7
	.byte	0
	.uleb128 0x2b
	.long	.LASF776
	.byte	0x1
	.value	0x7a6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF777
	.byte	0x1
	.value	0x7ca
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3733
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x7cc
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x7cc
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x35
	.long	.LASF774
	.byte	0x1
	.value	0x7cf
	.long	0xb7
	.uleb128 0x35
	.long	.LASF775
	.byte	0x1
	.value	0x7d0
	.long	0xb7
	.byte	0
	.uleb128 0x36
	.long	.LASF779
	.byte	0x1
	.value	0x838
	.long	0x3f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x37a6
	.uleb128 0x32
	.string	"mv"
	.byte	0x1
	.value	0x838
	.long	0x37a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x83a
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x83a
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"k"
	.byte	0x1
	.value	0x83a
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.string	"l"
	.byte	0x1
	.value	0x83a
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"m"
	.byte	0x1
	.value	0x83a
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x296a
	.uleb128 0x31
	.long	.LASF780
	.byte	0x1
	.value	0x861
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x381a
	.uleb128 0x32
	.string	"mv"
	.byte	0x1
	.value	0x861
	.long	0x296a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x863
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x863
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"k"
	.byte	0x1
	.value	0x863
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"l"
	.byte	0x1
	.value	0x863
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"m"
	.byte	0x1
	.value	0x863
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x36
	.long	.LASF781
	.byte	0x1
	.value	0x886
	.long	0x3f
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3882
	.uleb128 0x37
	.long	.LASF545
	.byte	0x1
	.value	0x886
	.long	0x3882
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x888
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x888
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.string	"k"
	.byte	0x1
	.value	0x888
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF782
	.byte	0x1
	.value	0x889
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2931
	.uleb128 0x36
	.long	.LASF783
	.byte	0x1
	.value	0x8a1
	.long	0x3f
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x38d4
	.uleb128 0x37
	.long	.LASF546
	.byte	0x1
	.value	0x8a1
	.long	0x2931
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x8a3
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"k"
	.byte	0x1
	.value	0x8a3
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x31
	.long	.LASF784
	.byte	0x1
	.value	0x8b8
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3929
	.uleb128 0x37
	.long	.LASF545
	.byte	0x1
	.value	0x8b8
	.long	0x2931
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x8ba
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x8ba
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"k"
	.byte	0x1
	.value	0x8ba
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF785
	.byte	0x1
	.value	0x8d1
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3971
	.uleb128 0x37
	.long	.LASF546
	.byte	0x1
	.value	0x8d1
	.long	0x2889
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x8d3
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x8d3
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF786
	.byte	0x1
	.value	0x8e7
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x399d
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x8e9
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.long	.LASF787
	.byte	0x1
	.value	0x903
	.long	0x3f
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a29
	.uleb128 0x37
	.long	.LASF788
	.byte	0x1
	.value	0x903
	.long	0x14df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.long	.LASF789
	.byte	0x1
	.value	0x903
	.long	0x14df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.long	.LASF790
	.byte	0x1
	.value	0x903
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.long	.LASF791
	.byte	0x1
	.value	0x903
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.long	.LASF792
	.byte	0x1
	.value	0x903
	.long	0x11de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF793
	.byte	0x1
	.value	0x905
	.long	0x11de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF794
	.byte	0x1
	.value	0x905
	.long	0x11de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF795
	.byte	0x1
	.value	0x916
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a57
	.uleb128 0x2f
	.long	.LASF796
	.byte	0x1
	.value	0x918
	.long	0x392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF797
	.byte	0x1
	.value	0x934
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.long	.LASF798
	.byte	0x6
	.byte	0xa9
	.long	0x346
	.uleb128 0x3a
	.long	.LASF799
	.byte	0x1
	.byte	0x49
	.long	0x2937
	.uleb128 0x9
	.byte	0x3
	.quad	top_pic
	.uleb128 0x3a
	.long	.LASF800
	.byte	0x1
	.byte	0x4a
	.long	0x2937
	.uleb128 0x9
	.byte	0x3
	.quad	bottom_pic
	.uleb128 0x3a
	.long	.LASF801
	.byte	0x1
	.byte	0x4b
	.long	0x2937
	.uleb128 0x9
	.byte	0x3
	.quad	frame_pic
	.uleb128 0x3a
	.long	.LASF802
	.byte	0x1
	.byte	0x4c
	.long	0x2937
	.uleb128 0x9
	.byte	0x3
	.quad	frame_pic2
	.uleb128 0x3a
	.long	.LASF803
	.byte	0x1
	.byte	0x4d
	.long	0x2937
	.uleb128 0x9
	.byte	0x3
	.quad	frame_pic3
	.uleb128 0x3a
	.long	.LASF804
	.byte	0x1
	.byte	0x50
	.long	0x1563
	.uleb128 0x9
	.byte	0x3
	.quad	imgY_org
	.uleb128 0x3a
	.long	.LASF805
	.byte	0x1
	.byte	0x51
	.long	0x155d
	.uleb128 0x9
	.byte	0x3
	.quad	imgUV_org
	.uleb128 0x3a
	.long	.LASF806
	.byte	0x1
	.byte	0x52
	.long	0x1557
	.uleb128 0x9
	.byte	0x3
	.quad	img4Y_tmp
	.uleb128 0x3a
	.long	.LASF154
	.byte	0x1
	.byte	0x54
	.long	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	log2_max_frame_num_minus4
	.uleb128 0x3a
	.long	.LASF156
	.byte	0x1
	.byte	0x55
	.long	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	log2_max_pic_order_cnt_lsb_minus4
	.uleb128 0x3a
	.long	.LASF807
	.byte	0x1
	.byte	0x57
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	me_tot_time
	.uleb128 0x3a
	.long	.LASF808
	.byte	0x1
	.byte	0x57
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	me_time
	.uleb128 0x3a
	.long	.LASF809
	.byte	0x1
	.byte	0x58
	.long	0x3b8d
	.uleb128 0x9
	.byte	0x3
	.quad	active_pps
	.uleb128 0x8
	.byte	0x8
	.long	0x782
	.uleb128 0x3a
	.long	.LASF810
	.byte	0x1
	.byte	0x59
	.long	0x3ba8
	.uleb128 0x9
	.byte	0x3
	.quad	active_sps
	.uleb128 0x8
	.byte	0x8
	.long	0x959
	.uleb128 0x3a
	.long	.LASF811
	.byte	0x1
	.byte	0x5d
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	mb_adaptive
	.uleb128 0x3a
	.long	.LASF812
	.byte	0x1
	.byte	0x5e
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	MBPairIsField
	.uleb128 0x3a
	.long	.LASF813
	.byte	0x1
	.byte	0x62
	.long	0x2889
	.uleb128 0x9
	.byte	0x3
	.quad	wp_weight
	.uleb128 0x3a
	.long	.LASF814
	.byte	0x1
	.byte	0x63
	.long	0x2889
	.uleb128 0x9
	.byte	0x3
	.quad	wp_offset
	.uleb128 0x3a
	.long	.LASF815
	.byte	0x1
	.byte	0x64
	.long	0x2931
	.uleb128 0x9
	.byte	0x3
	.quad	wbp_weight
	.uleb128 0x3a
	.long	.LASF816
	.byte	0x1
	.byte	0x65
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	luma_log_weight_denom
	.uleb128 0x3a
	.long	.LASF817
	.byte	0x1
	.byte	0x66
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	chroma_log_weight_denom
	.uleb128 0x3a
	.long	.LASF818
	.byte	0x1
	.byte	0x67
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	wp_luma_round
	.uleb128 0x3a
	.long	.LASF819
	.byte	0x1
	.byte	0x68
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	wp_chroma_round
	.uleb128 0x3a
	.long	.LASF820
	.byte	0x1
	.byte	0x6c
	.long	0x1563
	.uleb128 0x9
	.byte	0x3
	.quad	imgY_org_top
	.uleb128 0x3a
	.long	.LASF821
	.byte	0x1
	.byte	0x6d
	.long	0x1563
	.uleb128 0x9
	.byte	0x3
	.quad	imgY_org_bot
	.uleb128 0x3a
	.long	.LASF822
	.byte	0x1
	.byte	0x6f
	.long	0x155d
	.uleb128 0x9
	.byte	0x3
	.quad	imgUV_org_top
	.uleb128 0x3a
	.long	.LASF823
	.byte	0x1
	.byte	0x70
	.long	0x155d
	.uleb128 0x9
	.byte	0x3
	.quad	imgUV_org_bot
	.uleb128 0x3a
	.long	.LASF824
	.byte	0x1
	.byte	0x72
	.long	0x1563
	.uleb128 0x9
	.byte	0x3
	.quad	imgY_org_frm
	.uleb128 0x3a
	.long	.LASF825
	.byte	0x1
	.byte	0x73
	.long	0x155d
	.uleb128 0x9
	.byte	0x3
	.quad	imgUV_org_frm
	.uleb128 0x3a
	.long	.LASF826
	.byte	0x1
	.byte	0x75
	.long	0x1563
	.uleb128 0x9
	.byte	0x3
	.quad	imgY_com
	.uleb128 0x3a
	.long	.LASF827
	.byte	0x1
	.byte	0x76
	.long	0x155d
	.uleb128 0x9
	.byte	0x3
	.quad	imgUV_com
	.uleb128 0x3a
	.long	.LASF828
	.byte	0x1
	.byte	0x78
	.long	0x297c
	.uleb128 0x9
	.byte	0x3
	.quad	direct_ref_idx
	.uleb128 0x3a
	.long	.LASF829
	.byte	0x1
	.byte	0x79
	.long	0x2982
	.uleb128 0x9
	.byte	0x3
	.quad	direct_pdir
	.uleb128 0x3a
	.long	.LASF830
	.byte	0x1
	.byte	0x7c
	.long	0x1575
	.uleb128 0x9
	.byte	0x3
	.quad	pixel_map
	.uleb128 0x3a
	.long	.LASF831
	.byte	0x1
	.byte	0x7d
	.long	0x1575
	.uleb128 0x9
	.byte	0x3
	.quad	refresh_map
	.uleb128 0x3a
	.long	.LASF832
	.byte	0x1
	.byte	0x7e
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	intras
	.uleb128 0x3a
	.long	.LASF833
	.byte	0x1
	.byte	0x80
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Iframe_ctr
	.uleb128 0x3a
	.long	.LASF834
	.byte	0x1
	.byte	0x80
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Pframe_ctr
	.uleb128 0x3a
	.long	.LASF835
	.byte	0x1
	.byte	0x80
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Bframe_ctr
	.uleb128 0x3a
	.long	.LASF836
	.byte	0x1
	.byte	0x81
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	frame_no
	.uleb128 0x3a
	.long	.LASF837
	.byte	0x1
	.byte	0x81
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	nextP_tr_fld
	.uleb128 0x3a
	.long	.LASF838
	.byte	0x1
	.byte	0x81
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	nextP_tr_frm
	.uleb128 0x3a
	.long	.LASF839
	.byte	0x1
	.byte	0x82
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	tot_time
	.uleb128 0x5
	.long	0xb0
	.long	0x3e20
	.uleb128 0x20
	.long	0x96
	.value	0x12b
	.byte	0
	.uleb128 0x3a
	.long	.LASF840
	.byte	0x1
	.byte	0x84
	.long	0x3e0f
	.uleb128 0x9
	.byte	0x3
	.quad	errortext
	.uleb128 0x3a
	.long	.LASF841
	.byte	0x1
	.byte	0x87
	.long	0x291b
	.uleb128 0x9
	.byte	0x3
	.quad	resTrans_R
	.uleb128 0x3a
	.long	.LASF842
	.byte	0x1
	.byte	0x87
	.long	0x291b
	.uleb128 0x9
	.byte	0x3
	.quad	resTrans_G
	.uleb128 0x3a
	.long	.LASF843
	.byte	0x1
	.byte	0x87
	.long	0x291b
	.uleb128 0x9
	.byte	0x3
	.quad	resTrans_B
	.uleb128 0x3a
	.long	.LASF844
	.byte	0x1
	.byte	0x88
	.long	0x291b
	.uleb128 0x9
	.byte	0x3
	.quad	rec_resR
	.uleb128 0x3a
	.long	.LASF845
	.byte	0x1
	.byte	0x88
	.long	0x291b
	.uleb128 0x9
	.byte	0x3
	.quad	rec_resG
	.uleb128 0x3a
	.long	.LASF846
	.byte	0x1
	.byte	0x88
	.long	0x291b
	.uleb128 0x9
	.byte	0x3
	.quad	rec_resB
	.uleb128 0x5
	.long	0x3f
	.long	0x3ecf
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x3a
	.long	.LASF847
	.byte	0x1
	.byte	0x89
	.long	0x3eb3
	.uleb128 0x9
	.byte	0x3
	.quad	mprRGB
	.uleb128 0x5
	.long	0x3f
	.long	0x3f00
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x3a
	.long	.LASF848
	.byte	0x1
	.byte	0x8a
	.long	0x3ee4
	.uleb128 0x9
	.byte	0x3
	.quad	dc_level
	.uleb128 0x3a
	.long	.LASF849
	.byte	0x1
	.byte	0x8a
	.long	0x3ee4
	.uleb128 0x9
	.byte	0x3
	.quad	dc_level_temp
	.uleb128 0x3a
	.long	.LASF850
	.byte	0x1
	.byte	0x8b
	.long	0x3ee4
	.uleb128 0x9
	.byte	0x3
	.quad	cbp_chroma_block
	.uleb128 0x3a
	.long	.LASF851
	.byte	0x1
	.byte	0x8b
	.long	0x3ee4
	.uleb128 0x9
	.byte	0x3
	.quad	cbp_chroma_block_temp
	.uleb128 0x3a
	.long	.LASF852
	.byte	0x1
	.byte	0x8c
	.long	0x2954
	.uleb128 0x9
	.byte	0x3
	.quad	b8_ipredmode8x8
	.uleb128 0x3a
	.long	.LASF853
	.byte	0x1
	.byte	0x8c
	.long	0x11be
	.uleb128 0x9
	.byte	0x3
	.quad	b8_intra_pred_modes8x8
	.uleb128 0x3a
	.long	.LASF854
	.byte	0x1
	.byte	0xb5
	.long	0x3f93
	.uleb128 0x9
	.byte	0x3
	.quad	decs
	.uleb128 0x8
	.byte	0x8
	.long	0x157b
	.uleb128 0x3b
	.string	"QP"
	.byte	0x1
	.byte	0x95
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	QP
	.uleb128 0x3b
	.string	"QP2"
	.byte	0x1
	.byte	0x95
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	QP2
	.uleb128 0x3a
	.long	.LASF855
	.byte	0x1
	.byte	0x97
	.long	0x3fd7
	.uleb128 0x9
	.byte	0x3
	.quad	gop_structure
	.uleb128 0x8
	.byte	0x8
	.long	0x2e03
	.uleb128 0x3a
	.long	.LASF455
	.byte	0x1
	.byte	0x98
	.long	0x3ff2
	.uleb128 0x9
	.byte	0x3
	.quad	rdopt
	.uleb128 0x8
	.byte	0x8
	.long	0x2d9f
	.uleb128 0x3a
	.long	.LASF856
	.byte	0x1
	.byte	0x99
	.long	0x2d9f
	.uleb128 0x9
	.byte	0x3
	.quad	rddata_top_frame_mb
	.uleb128 0x3a
	.long	.LASF857
	.byte	0x1
	.byte	0x99
	.long	0x2d9f
	.uleb128 0x9
	.byte	0x3
	.quad	rddata_bot_frame_mb
	.uleb128 0x3a
	.long	.LASF858
	.byte	0x1
	.byte	0x9a
	.long	0x2d9f
	.uleb128 0x9
	.byte	0x3
	.quad	rddata_top_field_mb
	.uleb128 0x3a
	.long	.LASF859
	.byte	0x1
	.byte	0x9a
	.long	0x2d9f
	.uleb128 0x9
	.byte	0x3
	.quad	rddata_bot_field_mb
	.uleb128 0x3a
	.long	.LASF860
	.byte	0x1
	.byte	0xb1
	.long	0x4061
	.uleb128 0x9
	.byte	0x3
	.quad	input
	.uleb128 0x8
	.byte	0x8
	.long	0x1e98
	.uleb128 0x3b
	.string	"img"
	.byte	0x1
	.byte	0xb2
	.long	0x407c
	.uleb128 0x9
	.byte	0x3
	.quad	img
	.uleb128 0x8
	.byte	0x8
	.long	0x29d0
	.uleb128 0x3a
	.long	.LASF861
	.byte	0x1
	.byte	0xb3
	.long	0x4097
	.uleb128 0x9
	.byte	0x3
	.quad	stats
	.uleb128 0x8
	.byte	0x8
	.long	0x2bf5
	.uleb128 0x3b
	.string	"snr"
	.byte	0x1
	.byte	0xb4
	.long	0x40b2
	.uleb128 0x9
	.byte	0x3
	.quad	snr
	.uleb128 0x8
	.byte	0x8
	.long	0x163d
	.uleb128 0x3a
	.long	.LASF862
	.byte	0x1
	.byte	0x9f
	.long	0x34cd
	.uleb128 0x9
	.byte	0x3
	.quad	p_stat
	.uleb128 0x3a
	.long	.LASF863
	.byte	0x1
	.byte	0xa0
	.long	0x34cd
	.uleb128 0x9
	.byte	0x3
	.quad	p_log
	.uleb128 0x3a
	.long	.LASF864
	.byte	0x1
	.byte	0xa1
	.long	0x34cd
	.uleb128 0x9
	.byte	0x3
	.quad	p_trace
	.uleb128 0x3a
	.long	.LASF865
	.byte	0x1
	.byte	0xa2
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	p_in
	.uleb128 0x3a
	.long	.LASF866
	.byte	0x1
	.byte	0xa3
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	p_dec
	.uleb128 0x5
	.long	0x3f
	.long	0x4131
	.uleb128 0x6
	.long	0x96
	.byte	0x13
	.byte	0
	.uleb128 0x3a
	.long	.LASF867
	.byte	0x1
	.byte	0xa6
	.long	0x4121
	.uleb128 0x9
	.byte	0x3
	.quad	glob_remapping_of_pic_nums_idc_l0
	.uleb128 0x3a
	.long	.LASF868
	.byte	0x1
	.byte	0xa7
	.long	0x4121
	.uleb128 0x9
	.byte	0x3
	.quad	glob_abs_diff_pic_num_minus1_l0
	.uleb128 0x3a
	.long	.LASF869
	.byte	0x1
	.byte	0xa8
	.long	0x4121
	.uleb128 0x9
	.byte	0x3
	.quad	glob_long_term_pic_idx_l0
	.uleb128 0x3a
	.long	.LASF870
	.byte	0x1
	.byte	0xa9
	.long	0x4121
	.uleb128 0x9
	.byte	0x3
	.quad	glob_remapping_of_pic_nums_idc_l1
	.uleb128 0x3a
	.long	.LASF871
	.byte	0x1
	.byte	0xaa
	.long	0x4121
	.uleb128 0x9
	.byte	0x3
	.quad	glob_abs_diff_pic_num_minus1_l1
	.uleb128 0x3a
	.long	.LASF872
	.byte	0x1
	.byte	0xab
	.long	0x4121
	.uleb128 0x9
	.byte	0x3
	.quad	glob_long_term_pic_idx_l1
	.uleb128 0x3a
	.long	.LASF873
	.byte	0x1
	.byte	0xbc
	.long	0x392
	.uleb128 0x9
	.byte	0x3
	.quad	In2ndIGOP
	.uleb128 0x3a
	.long	.LASF874
	.byte	0x1
	.byte	0xbd
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	start_frame_no_in_this_IGOP
	.uleb128 0x3a
	.long	.LASF875
	.byte	0x1
	.byte	0xbe
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	start_tr_in_this_IGOP
	.uleb128 0x3a
	.long	.LASF876
	.byte	0x1
	.byte	0xbf
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	FirstFrameIn2ndIGOP
	.uleb128 0x3a
	.long	.LASF877
	.byte	0x1
	.byte	0x91
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	Bytes_After_Header
	.uleb128 0x3a
	.long	.LASF878
	.byte	0x1
	.byte	0xad
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	rpc_bytes_to_go
	.uleb128 0x3a
	.long	.LASF879
	.byte	0x1
	.byte	0xae
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	rpc_bits_to_go
	.uleb128 0x39
	.long	.LASF880
	.byte	0xc
	.byte	0x13
	.long	0x31d6
	.uleb128 0x39
	.long	.LASF881
	.byte	0xc
	.byte	0x14
	.long	0x31d6
	.uleb128 0x39
	.long	.LASF882
	.byte	0xc
	.byte	0x17
	.long	0x31d6
	.uleb128 0x39
	.long	.LASF883
	.byte	0xc
	.byte	0x18
	.long	0x31d6
	.uleb128 0x3a
	.long	.LASF884
	.byte	0x1
	.byte	0xb1
	.long	0x1e98
	.uleb128 0x9
	.byte	0x3
	.quad	inputs
	.uleb128 0x3a
	.long	.LASF885
	.byte	0x1
	.byte	0xb2
	.long	0x29d0
	.uleb128 0x9
	.byte	0x3
	.quad	images
	.uleb128 0x3a
	.long	.LASF886
	.byte	0x1
	.byte	0xb3
	.long	0x2bf5
	.uleb128 0x9
	.byte	0x3
	.quad	statistics
	.uleb128 0x3a
	.long	.LASF887
	.byte	0x1
	.byte	0xb4
	.long	0x163d
	.uleb128 0x9
	.byte	0x3
	.quad	snrs
	.uleb128 0x3a
	.long	.LASF888
	.byte	0x1
	.byte	0xb5
	.long	0x157b
	.uleb128 0x9
	.byte	0x3
	.quad	decoders
	.uleb128 0x3a
	.long	.LASF889
	.byte	0x1
	.byte	0xb9
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	initial_Bframes
	.uleb128 0x3a
	.long	.LASF890
	.byte	0x1
	.byte	0xc0
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	cabac_encoding
	.uleb128 0x3a
	.long	.LASF891
	.byte	0x1
	.byte	0xc1
	.long	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	frame_statistic_start
	.uleb128 0x39
	.long	.LASF892
	.byte	0x1
	.byte	0xc2
	.long	0x4321
	.uleb128 0x8
	.byte	0x8
	.long	0x31cb
	.uleb128 0x35
	.long	.LASF774
	.byte	0x1
	.value	0x7cf
	.long	0xb7
	.uleb128 0x35
	.long	.LASF775
	.byte	0x1
	.value	0x7d0
	.long	0xb7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2c
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
	.uleb128 0x2116
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
.LASF199:
	.string	"PictureStructure"
.LASF577:
	.string	"i16offset"
.LASF839:
	.string	"tot_time"
.LASF741:
	.string	"ColocatedParams"
.LASF377:
	.string	"LevelIDC"
.LASF773:
	.string	"init_global_buffers"
.LASF561:
	.string	"imgtr_last_P_fld"
.LASF617:
	.string	"TopFieldFlag"
.LASF799:
	.string	"top_pic"
.LASF370:
	.string	"snr_ut"
.LASF58:
	.string	"_unused2"
.LASF837:
	.string	"nextP_tr_fld"
.LASF44:
	.string	"_fileno"
.LASF437:
	.string	"InterSearch8x4"
.LASF710:
	.string	"is_output"
.LASF436:
	.string	"InterSearch8x8"
.LASF429:
	.string	"PocMemoryManagement"
.LASF506:
	.string	"nb_references"
.LASF787:
	.string	"decide_fld_frame"
.LASF17:
	.string	"tm_sec"
.LASF824:
	.string	"imgY_org_frm"
.LASF211:
	.string	"Ecodestrm_len"
.LASF230:
	.string	"transform_size_contexts"
.LASF484:
	.string	"DisplayEncParams"
.LASF758:
	.string	"last_mode_chroma_use"
.LASF441:
	.string	"Intra4x4ParDisable"
.LASF207:
	.string	"Ebuffer"
.LASF301:
	.string	"predict_qp"
.LASF805:
	.string	"imgUV_org"
.LASF462:
	.string	"MbInterlace"
.LASF881:
	.string	"enc_frame_picture"
.LASF99:
	.string	"nal_hrd_parameters"
.LASF791:
	.string	"bit_frame"
.LASF90:
	.string	"matrix_coefficients"
.LASF711:
	.string	"non_existing"
.LASF380:
	.string	"hadamard"
.LASF735:
	.string	"top_mv"
.LASF49:
	.string	"_shortbuf"
.LASF419:
	.string	"UseWeightedReferenceME"
.LASF102:
	.string	"low_delay_hrd_flag"
.LASF726:
	.string	"ref_id"
.LASF423:
	.string	"RDBSliceWeightOnly"
.LASF848:
	.string	"dc_level"
.LASF97:
	.string	"fixed_frame_rate_flag"
.LASF483:
	.string	"ReportFrameStats"
.LASF863:
	.string	"p_log"
.LASF768:
	.string	"seqtype"
.LASF167:
	.string	"mb_adaptive_frame_field_flag"
.LASF706:
	.string	"bottom_ref_pic_num"
.LASF594:
	.string	"FrameHeightInMbs"
.LASF131:
	.string	"weighted_pred_flag"
.LASF311:
	.string	"byte_buf"
.LASF725:
	.string	"ref_pic_id"
.LASF231:
	.string	"MotionInfoContexts"
.LASF638:
	.string	"max_imgpel_value"
.LASF388:
	.string	"GenerateMultiplePPS"
.LASF428:
	.string	"PyramidRefReorder"
.LASF861:
	.string	"stats"
.LASF864:
	.string	"p_trace"
.LASF14:
	.string	"time_t"
.LASF68:
	.string	"bit_rate_scale"
.LASF394:
	.string	"part_size"
.LASF695:
	.string	"pyramid_layer"
.LASF30:
	.string	"_flags"
.LASF790:
	.string	"bit_field"
.LASF663:
	.string	"bit_ctr_I"
.LASF705:
	.string	"top_ref_pic_num"
.LASF205:
	.string	"Elow"
.LASF599:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF616:
	.string	"BasicUnitQP"
.LASF8:
	.string	"__off_t"
.LASF812:
	.string	"MBPairIsField"
.LASF448:
	.string	"full_search"
.LASF662:
	.string	"bit_use_mode_Bframe"
.LASF312:
	.string	"stored_byte_pos"
.LASF491:
	.string	"ScalingListPresentFlag"
.LASF488:
	.string	"basicunit"
.LASF95:
	.string	"num_units_in_tick"
.LASF275:
	.string	"cbp_blk"
.LASF547:
	.string	"currentPicture"
.LASF184:
	.string	"ADAPTIVE_CODING"
.LASF25:
	.string	"tm_isdst"
.LASF515:
	.string	"height"
.LASF523:
	.string	"mb_y_intra"
.LASF50:
	.string	"_lock"
.LASF779:
	.string	"get_mem_mv"
.LASF652:
	.string	"bitrate"
.LASF482:
	.string	"LowPassForIntra8x8"
.LASF375:
	.string	"SNRParameters"
.LASF728:
	.string	"field_frame"
.LASF454:
	.string	"qpBRS2Offset"
.LASF459:
	.string	"LeakyBucketRateFile"
.LASF378:
	.string	"no_frames"
.LASF721:
	.string	"imgY_ups"
.LASF406:
	.string	"start_frame"
.LASF808:
	.string	"me_time"
.LASF699:
	.string	"top_poc"
.LASF91:
	.string	"chroma_location_info_present_flag"
.LASF559:
	.string	"imgtr_last_P_frm"
.LASF605:
	.string	"NumberofBasicUnitHeaderBits"
.LASF65:
	.string	"TRUE"
.LASF470:
	.string	"NumFrameIn2ndIGOP"
.LASF866:
	.string	"p_dec"
.LASF593:
	.string	"PicHeightInMapUnits"
.LASF119:
	.string	"pic_order_present_flag"
.LASF84:
	.string	"video_signal_type_present_flag"
.LASF349:
	.string	"bits_per_picture"
.LASF709:
	.string	"used_for_reference"
.LASF257:
	.string	"value1"
.LASF258:
	.string	"value2"
.LASF323:
	.string	"ee_cabac"
.LASF852:
	.string	"b8_ipredmode8x8"
.LASF330:
	.string	"num_mb"
.LASF496:
	.string	"img_width_cr"
.LASF305:
	.string	"LFBetaOffset"
.LASF335:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF339:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF653:
	.string	"bit_ctr"
.LASF642:
	.string	"lossless_qpprime_flag"
.LASF159:
	.string	"offset_for_top_to_bottom_field"
.LASF313:
	.string	"stored_bits_to_go"
.LASF510:
	.string	"structure"
.LASF250:
	.string	"difference_of_pic_nums_minus1"
.LASF166:
	.string	"frame_mbs_only_flag"
.LASF556:
	.string	"direct_intraP_ref"
.LASF833:
	.string	"Iframe_ctr"
.LASF303:
	.string	"LFDisableIdc"
.LASF660:
	.string	"intra_chroma_mode"
.LASF261:
	.string	"mapping"
.LASF475:
	.string	"SPPercentageThreshold"
.LASF776:
	.string	"free_orig_planes"
.LASF224:
	.string	"mb_type_contexts"
.LASF281:
	.string	"lf_beta_offset"
.LASF542:
	.string	"mprr_2"
.LASF543:
	.string	"mprr_3"
.LASF36:
	.string	"_IO_write_end"
.LASF690:
	.string	"RD_DATA"
.LASF175:
	.string	"vui_seq_parameters"
.LASF168:
	.string	"direct_8x8_inference_flag"
.LASF293:
	.string	"all_blk_8x8"
.LASF435:
	.string	"InterSearch8x16"
.LASF832:
	.string	"intras"
.LASF142:
	.string	"pic_parameter_set_rbsp_t"
.LASF880:
	.string	"enc_picture"
.LASF718:
	.string	"imgY"
.LASF63:
	.string	"byte"
.LASF739:
	.string	"bottom_mv"
.LASF544:
	.string	"mprr_c"
.LASF679:
	.string	"em_prev_bits_fld"
.LASF667:
	.string	"bitrate_P"
.LASF598:
	.string	"nal_reference_idc"
.LASF180:
	.string	"PAR_OF_ANNEXB"
.LASF432:
	.string	"partition_mode"
.LASF890:
	.string	"cabac_encoding"
.LASF761:
	.string	"l_time"
.LASF76:
	.string	"time_offset_length"
.LASF784:
	.string	"free_mem_ACcoeff"
.LASF734:
	.string	"top_ref_pic_id"
.LASF795:
	.string	"process_2nd_IGOP"
.LASF682:
	.string	"bit_ctr_parametersets_n"
.LASF579:
	.string	"old_layer"
.LASF825:
	.string	"imgUV_org_frm"
.LASF619:
	.string	"FieldFrame"
.LASF673:
	.string	"bit_use_header"
.LASF516:
	.string	"height_cr"
.LASF571:
	.string	"num_ref_idx_l0_active"
.LASF867:
	.string	"glob_remapping_of_pic_nums_idc_l0"
.LASF525:
	.string	"ipredmode"
.LASF870:
	.string	"glob_remapping_of_pic_nums_idc_l1"
.LASF285:
	.string	"mbAddrA"
.LASF286:
	.string	"mbAddrB"
.LASF287:
	.string	"mbAddrC"
.LASF288:
	.string	"mbAddrD"
.LASF818:
	.string	"wp_luma_round"
.LASF265:
	.string	"currSEnr"
.LASF634:
	.string	"bitdepth_luma_qp_scale"
.LASF164:
	.string	"pic_width_in_mbs_minus1"
.LASF492:
	.string	"FMEnable"
.LASF325:
	.string	"DataPartition"
.LASF273:
	.string	"intra_pred_modes"
.LASF242:
	.string	"TextureInfoContexts"
.LASF122:
	.string	"run_length_minus1"
.LASF133:
	.string	"pic_init_qp_minus26"
.LASF422:
	.string	"RDPSliceWeightOnly"
.LASF689:
	.string	"refar"
.LASF631:
	.string	"pic_unit_size_on_disk"
.LASF256:
	.string	"type"
.LASF134:
	.string	"pic_init_qs_minus26"
.LASF572:
	.string	"num_ref_idx_l1_active"
.LASF178:
	.string	"PAR_DP_1"
.LASF179:
	.string	"PAR_DP_3"
.LASF639:
	.string	"max_imgpel_value_uv"
.LASF294:
	.string	"luma_transform_size_8x8_flag"
.LASF816:
	.string	"luma_log_weight_denom"
.LASF392:
	.string	"intra_upd"
.LASF595:
	.string	"PicHeightInMbs"
.LASF210:
	.string	"Ecodestrm"
.LASF409:
	.string	"direct_spatial_mv_pred_flag"
.LASF729:
	.string	"bottom_field"
.LASF802:
	.string	"frame_pic2"
.LASF803:
	.string	"frame_pic3"
.LASF493:
	.string	"BitDepthLuma"
.LASF337:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF341:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF508:
	.string	"total_number_mb"
.LASF643:
	.string	"mb_cr_size_x"
.LASF644:
	.string	"mb_cr_size_y"
.LASF72:
	.string	"vbr_cbr_flag"
.LASF192:
	.string	"BITS_DELTA_QUANT_MB"
.LASF633:
	.string	"bitdepth_chroma"
.LASF43:
	.string	"_chain"
.LASF324:
	.string	"writeSyntaxElement"
.LASF628:
	.string	"last_pic_bottom_field"
.LASF361:
	.string	"dec_mb_mode"
.LASF751:
	.string	"free_img"
.LASF449:
	.string	"last_frame"
.LASF630:
	.string	"pre_frame_num"
.LASF720:
	.string	"imgY_11_w"
.LASF115:
	.string	"entropy_coding_mode_flag"
.LASF608:
	.string	"NumberofMBTextureBits"
.LASF427:
	.string	"ExplicitPyramidFormat"
.LASF110:
	.string	"max_dec_frame_buffering"
.LASF1:
	.string	"unsigned char"
.LASF526:
	.string	"ipredmode8x8"
.LASF551:
	.string	"quad"
.LASF592:
	.string	"PicWidthInMbs"
.LASF896:
	.string	"_IO_lock_t"
.LASF353:
	.string	"float"
.LASF780:
	.string	"free_mem_mv"
.LASF411:
	.string	"BiPredMotionEstimation"
.LASF263:
	.string	"SyntaxElement"
.LASF678:
	.string	"em_prev_bits_frm"
.LASF70:
	.string	"bit_rate_value"
.LASF569:
	.string	"bipred_mv1"
.LASF570:
	.string	"bipred_mv2"
.LASF150:
	.string	"seq_scaling_matrix_present_flag"
.LASF558:
	.string	"imgtr_next_P_frm"
.LASF892:
	.string	"Co_located"
.LASF677:
	.string	"bit_use_delta_quant"
.LASF757:
	.string	"last_b8_mode_0"
.LASF212:
	.string	"ElowS"
.LASF517:
	.string	"height_cr_frame"
.LASF333:
	.string	"tex_ctx"
.LASF271:
	.string	"mb_available_left"
.LASF509:
	.string	"current_slice_nr"
.LASF326:
	.string	"picture_id"
.LASF646:
	.string	"auto_crop_right"
.LASF649:
	.string	"quant0"
.LASF650:
	.string	"quant1"
.LASF27:
	.string	"tm_zone"
.LASF433:
	.string	"InterSearch16x16"
.LASF807:
	.string	"me_tot_time"
.LASF190:
	.string	"BITS_COEFF_Y_MB"
.LASF505:
	.string	"number"
.LASF613:
	.string	"TotalQpforPPicture"
.LASF239:
	.string	"abs_contexts"
.LASF235:
	.string	"bcbp_contexts"
.LASF7:
	.string	"size_t"
.LASF137:
	.string	"cr_qp_index_offset"
.LASF712:
	.string	"size_x"
.LASF154:
	.string	"log2_max_frame_num_minus4"
.LASF611:
	.string	"NumberofCodedPFrame"
.LASF269:
	.string	"bitcounter"
.LASF846:
	.string	"rec_resB"
.LASF234:
	.string	"cbp_contexts"
.LASF691:
	.string	"slice_type"
.LASF707:
	.string	"pic_num"
.LASF849:
	.string	"dc_level_temp"
.LASF800:
	.string	"bottom_pic"
.LASF844:
	.string	"rec_resR"
.LASF472:
	.string	"LFSendParameters"
.LASF272:
	.string	"mb_type"
.LASF836:
	.string	"frame_no"
.LASF688:
	.string	"mode"
.LASF321:
	.string	"datapartition"
.LASF277:
	.string	"b8pdir"
.LASF788:
	.string	"snr_frame_Y"
.LASF35:
	.string	"_IO_write_ptr"
.LASF520:
	.string	"is_intra_block"
.LASF299:
	.string	"prev_delta_qp"
.LASF531:
	.string	"block_x"
.LASF532:
	.string	"block_y"
.LASF243:
	.string	"RMPNIbuffer_s"
.LASF500:
	.string	"UseExplicitLambdaParams"
.LASF309:
	.string	"byte_pos"
.LASF857:
	.string	"rddata_bot_frame_mb"
.LASF295:
	.string	"NoMbPartLessThan8x8Flag"
.LASF141:
	.string	"vui_pic_parameters_flag"
.LASF443:
	.string	"Intra4x4DirDisable"
.LASF116:
	.string	"transform_8x8_mode_flag"
.LASF549:
	.string	"mb_data"
.LASF732:
	.string	"colocated_params"
.LASF69:
	.string	"cpb_size_scale"
.LASF82:
	.string	"overscan_info_present_flag"
.LASF471:
	.string	"RandomIntraMBRefresh"
.LASF28:
	.string	"FILE"
.LASF101:
	.string	"vcl_hrd_parameters"
.LASF552:
	.string	"intra_block"
.LASF574:
	.string	"top_field"
.LASF826:
	.string	"imgY_com"
.LASF889:
	.string	"initial_Bframes"
.LASF750:
	.string	"mb_height_cr"
.LASF813:
	.string	"wp_weight"
.LASF585:
	.string	"delta_pic_order_cnt"
.LASF398:
	.string	"infile_header"
.LASF659:
	.string	"mode_use_transform_4x4"
.LASF355:
	.string	"resY"
.LASF893:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF185:
	.string	"BITS_HEADER"
.LASF545:
	.string	"cofAC"
.LASF713:
	.string	"size_y"
.LASF128:
	.string	"slice_group_id"
.LASF412:
	.string	"BiPredMERefinements"
.LASF692:
	.string	"display_no"
.LASF862:
	.string	"p_stat"
.LASF894:
	.string	"lencod.c"
.LASF737:
	.string	"bottom_ref_idx"
.LASF135:
	.string	"chroma_qp_index_offset"
.LASF245:
	.string	"Data"
.LASF765:
	.string	"total_bits"
.LASF618:
	.string	"FieldControl"
.LASF588:
	.string	"bottompoc"
.LASF354:
	.string	"Picture"
.LASF727:
	.string	"moving_block"
.LASF815:
	.string	"wbp_weight"
.LASF656:
	.string	"bit_ctr_emulationprevention"
.LASF296:
	.string	"bi_pred_me"
.LASF865:
	.string	"p_in"
.LASF39:
	.string	"_IO_save_base"
.LASF67:
	.string	"cpb_cnt"
.LASF253:
	.string	"max_long_term_frame_idx_plus1"
.LASF756:
	.string	"last_mode_use"
.LASF282:
	.string	"c_ipred_mode"
.LASF576:
	.string	"buf_cycle"
.LASF107:
	.string	"log2_max_mv_length_vertical"
.LASF376:
	.string	"ProfileIDC"
.LASF717:
	.string	"coded_frame"
.LASF262:
	.string	"writing"
.LASF414:
	.string	"BiPredMESubPel"
.LASF385:
	.string	"B_List1_refs"
.LASF136:
	.string	"cb_qp_index_offset"
.LASF486:
	.string	"bit_rate"
.LASF453:
	.string	"qp02"
.LASF584:
	.string	"delta_pic_order_cnt_bottom"
.LASF280:
	.string	"lf_alpha_c0_offset"
.LASF174:
	.string	"vui_parameters_present_flag"
.LASF357:
	.string	"decref"
.LASF714:
	.string	"size_x_cr"
.LASF460:
	.string	"LeakyBucketParamFile"
.LASF797:
	.string	"SetImgType"
.LASF145:
	.string	"constrained_set1_flag"
.LASF92:
	.string	"chroma_location_frame"
.LASF384:
	.string	"B_List0_refs"
.LASF78:
	.string	"aspect_ratio_info_present_flag"
.LASF126:
	.string	"slice_group_change_rate_minus1"
.LASF683:
	.string	"StatParameters"
.LASF820:
	.string	"imgY_org_top"
.LASF875:
	.string	"start_tr_in_this_IGOP"
.LASF700:
	.string	"bottom_poc"
.LASF170:
	.string	"frame_cropping_rect_left_offset"
.LASF830:
	.string	"pixel_map"
.LASF53:
	.string	"__pad2"
.LASF546:
	.string	"cofDC"
.LASF602:
	.string	"dec_ref_pic_marking_buffer"
.LASF319:
	.string	"write_flag"
.LASF144:
	.string	"constrained_set0_flag"
.LASF806:
	.string	"img4Y_tmp"
.LASF539:
	.string	"opix_c_x"
.LASF540:
	.string	"opix_c_y"
.LASF240:
	.string	"fld_map_contexts"
.LASF88:
	.string	"colour_primaries"
.LASF120:
	.string	"num_slice_groups_minus1"
.LASF746:
	.string	"CAVLC_init"
.LASF359:
	.string	"RefBlock"
.LASF563:
	.string	"p_interval"
.LASF182:
	.string	"FRAME_CODING"
.LASF874:
	.string	"start_frame_no_in_this_IGOP"
.LASF93:
	.string	"chroma_location_field"
.LASF476:
	.string	"SliceGroupConfigFileName"
.LASF489:
	.string	"channel_type"
.LASF600:
	.string	"no_output_of_prior_pics_flag"
.LASF615:
	.string	"MADofMB"
.LASF251:
	.string	"long_term_pic_num"
.LASF80:
	.string	"sar_width"
.LASF60:
	.string	"_next"
.LASF104:
	.string	"motion_vectors_over_pic_boundaries_flag"
.LASF550:
	.string	"MB_SyntaxElements"
.LASF637:
	.string	"dc_pred_value"
.LASF203:
	.string	"SP_SLICE"
.LASF393:
	.string	"blc_size"
.LASF201:
	.string	"B_SLICE"
.LASF445:
	.string	"Intra16x16PlaneDisable"
.LASF187:
	.string	"BITS_MB_MODE"
.LASF228:
	.string	"delta_qp_contexts"
.LASF316:
	.string	"byte_pos_skip"
.LASF219:
	.string	"EncodingEnvironment"
.LASF360:
	.string	"status_map"
.LASF418:
	.string	"WeightedBiprediction"
.LASF535:
	.string	"pix_c_x"
.LASF113:
	.string	"pic_parameter_set_id"
.LASF329:
	.string	"max_part_nr"
.LASF344:
	.string	"field_ctx"
.LASF156:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF397:
	.string	"UseConstrainedIntraPred"
.LASF669:
	.string	"mode_use"
.LASF590:
	.string	"ThisPOC"
.LASF781:
	.string	"get_mem_ACcoeff"
.LASF527:
	.string	"cod_counter"
.LASF106:
	.string	"max_bits_per_mb_denom"
.LASF278:
	.string	"cbp_bits"
.LASF536:
	.string	"pix_c_y"
.LASF347:
	.string	"idr_flag"
.LASF665:
	.string	"bit_ctr_B"
.LASF291:
	.string	"mbAvailC"
.LASF518:
	.string	"subblock_x"
.LASF519:
	.string	"subblock_y"
.LASF664:
	.string	"bit_ctr_P"
.LASF822:
	.string	"imgUV_org_top"
.LASF763:
	.string	"report"
.LASF176:
	.string	"seq_parameter_set_rbsp_t"
.LASF586:
	.string	"field_picture"
.LASF160:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF654:
	.string	"bit_ctr_n"
.LASF629:
	.string	"last_has_mmco_5"
.LASF607:
	.string	"TotalMADBasicUnit"
.LASF218:
	.string	"Ecodestrm_lenS"
.LASF661:
	.string	"mode_use_Bframe"
.LASF560:
	.string	"imgtr_next_P_fld"
.LASF191:
	.string	"BITS_COEFF_UV_MB"
.LASF851:
	.string	"cbp_chroma_block_temp"
.LASF426:
	.string	"PyramidCoding"
.LASF452:
	.string	"qp2start"
.LASF581:
	.string	"redundant_pic_cnt"
.LASF514:
	.string	"width_cr"
.LASF268:
	.string	"qpsp"
.LASF760:
	.string	"name"
.LASF61:
	.string	"_sbuf"
.LASF827:
	.string	"imgUV_com"
.LASF163:
	.string	"gaps_in_frame_num_value_allowed_flag"
.LASF41:
	.string	"_IO_save_end"
.LASF18:
	.string	"tm_min"
.LASF407:
	.string	"successive_Bframe"
.LASF672:
	.string	"bit_use_mb_type"
.LASF457:
	.string	"nobskip"
.LASF405:
	.string	"idr_enable"
.LASF197:
	.string	"TOP_FIELD"
.LASF625:
	.string	"bot_MB"
.LASF840:
	.string	"errortext"
.LASF162:
	.string	"num_ref_frames"
.LASF798:
	.string	"stdout"
.LASF819:
	.string	"wp_chroma_round"
.LASF468:
	.string	"RestrictRef"
.LASF11:
	.string	"__time_t"
.LASF853:
	.string	"b8_intra_pred_modes8x8"
.LASF71:
	.string	"cpb_size_value"
.LASF241:
	.string	"fld_last_contexts"
.LASF24:
	.string	"tm_yday"
.LASF724:
	.string	"ref_idx"
.LASF811:
	.string	"mb_adaptive"
.LASF888:
	.string	"decoders"
.LASF331:
	.string	"partArr"
.LASF10:
	.string	"sizetype"
.LASF582:
	.string	"MbaffFrameFlag"
.LASF148:
	.string	"level_idc"
.LASF155:
	.string	"pic_order_cnt_type"
.LASF606:
	.string	"NumberofBasicUnitTextureBits"
.LASF490:
	.string	"ScalingMatrixPresentFlag"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF297:
	.string	"actj"
.LASF480:
	.string	"model_number"
.LASF304:
	.string	"LFAlphaC0Offset"
.LASF158:
	.string	"offset_for_non_ref_pic"
.LASF434:
	.string	"InterSearch16x8"
.LASF804:
	.string	"imgY_org"
.LASF222:
	.string	"count"
.LASF512:
	.string	"framerate"
.LASF541:
	.string	"mprr"
.LASF77:
	.string	"hrd_parameters_t"
.LASF708:
	.string	"is_long_term"
.LASF843:
	.string	"resTrans_B"
.LASF842:
	.string	"resTrans_G"
.LASF777:
	.string	"free_global_buffers"
.LASF841:
	.string	"resTrans_R"
.LASF74:
	.string	"cpb_removal_delay_length_minus1"
.LASF623:
	.string	"BasicUnit"
.LASF23:
	.string	"tm_wday"
.LASF9:
	.string	"__off64_t"
.LASF554:
	.string	"fld_flag"
.LASF447:
	.string	"FrameRate"
.LASF33:
	.string	"_IO_read_base"
.LASF51:
	.string	"_offset"
.LASF762:
	.string	"string"
.LASF209:
	.string	"Ebits_to_follow"
.LASF467:
	.string	"NoOfDecoders"
.LASF221:
	.string	"state"
.LASF38:
	.string	"_IO_buf_end"
.LASF785:
	.string	"free_mem_DCcoeff"
.LASF181:
	.string	"PAR_OF_RTP"
.LASF461:
	.string	"PicInterlace"
.LASF504:
	.string	"InputParameters"
.LASF89:
	.string	"transfer_characteristics"
.LASF494:
	.string	"BitDepthChroma"
.LASF317:
	.string	"bits_to_go_skip"
.LASF487:
	.string	"SeinitialQP"
.LASF233:
	.string	"cipr_contexts"
.LASF860:
	.string	"input"
.LASF555:
	.string	"rd_pass"
.LASF609:
	.string	"NumberofMBHeaderBits"
.LASF189:
	.string	"BITS_CBP_MB"
.LASF627:
	.string	"DeblockCall"
.LASF431:
	.string	"of_mode"
.LASF57:
	.string	"_mode"
.LASF507:
	.string	"current_mb_nr"
.LASF34:
	.string	"_IO_write_base"
.LASF704:
	.string	"frm_ref_pic_num"
.LASF821:
	.string	"imgY_org_bot"
.LASF248:
	.string	"DecRefPicMarking_s"
.LASF254:
	.string	"DecRefPicMarking_t"
.LASF622:
	.string	"NumberofCodedMacroBlocks"
.LASF105:
	.string	"max_bytes_per_pic_denom"
.LASF94:
	.string	"timing_info_present_flag"
.LASF789:
	.string	"snr_field_Y"
.LASF456:
	.string	"disthres"
.LASF310:
	.string	"bits_to_go"
.LASF21:
	.string	"tm_mon"
.LASF651:
	.string	"bitr"
.LASF716:
	.string	"chroma_vector_adjustment"
.LASF455:
	.string	"rdopt"
.LASF641:
	.string	"num_cdc_coeff"
.LASF6:
	.string	"long int"
.LASF306:
	.string	"skip_flag"
.LASF59:
	.string	"_IO_marker"
.LASF22:
	.string	"tm_year"
.LASF217:
	.string	"EcodestrmS"
.LASF338:
	.string	"long_term_pic_idx_l0"
.LASF342:
	.string	"long_term_pic_idx_l1"
.LASF439:
	.string	"InterSearch4x4"
.LASF138:
	.string	"deblocking_filter_control_present_flag"
.LASF438:
	.string	"InterSearch4x8"
.LASF783:
	.string	"get_mem_DCcoeff"
.LASF529:
	.string	"mb_x"
.LASF792:
	.string	"lambda_picture"
.LASF657:
	.string	"b8_mode_0_use"
.LASF260:
	.string	"context"
.LASF676:
	.string	"bit_use_coeffC"
.LASF583:
	.string	"pic_order_cnt_lsb"
.LASF283:
	.string	"IntraChromaPredModeFlag"
.LASF246:
	.string	"Next"
.LASF614:
	.string	"NumberofPPicture"
.LASF675:
	.string	"bit_use_coeffY"
.LASF702:
	.string	"order_num"
.LASF446:
	.string	"ChromaIntraDisable"
.LASF722:
	.string	"imgY_ups_w"
.LASF274:
	.string	"intra_pred_modes8x8"
.LASF733:
	.string	"top_ref_idx"
.LASF886:
	.string	"statistics"
.LASF548:
	.string	"currentSlice"
.LASF477:
	.string	"slice_group_change_cycle"
.LASF731:
	.string	"StorablePicture"
.LASF793:
	.string	"cost_frame"
.LASF198:
	.string	"BOTTOM_FIELD"
.LASF478:
	.string	"redundant_slice_flag"
.LASF847:
	.string	"mprRGB"
.LASF206:
	.string	"Erange"
.LASF227:
	.string	"ref_no_contexts"
.LASF882:
	.string	"enc_top_picture"
.LASF769:
	.string	"information_init"
.LASF801:
	.string	"frame_pic"
.LASF0:
	.string	"long unsigned int"
.LASF195:
	.string	"CABAC"
.LASF172:
	.string	"frame_cropping_rect_top_offset"
.LASF612:
	.string	"NumberofGOP"
.LASF767:
	.string	"mean_motion_info_bit_use"
.LASF591:
	.string	"frame_num"
.LASF522:
	.string	"mb_y_upd"
.LASF214:
	.string	"EbufferS"
.LASF213:
	.string	"ErangeS"
.LASF151:
	.string	"seq_scaling_list_present_flag"
.LASF885:
	.string	"images"
.LASF346:
	.string	"no_slices"
.LASF745:
	.string	"init_poc"
.LASF387:
	.string	"ResendPPS"
.LASF143:
	.string	"profile_idc"
.LASF343:
	.string	"slice_too_big"
.LASF566:
	.string	"bw_mb_mode"
.LASF850:
	.string	"cbp_chroma_block"
.LASF473:
	.string	"SparePictureOption"
.LASF12:
	.string	"char"
.LASF701:
	.string	"frame_poc"
.LASF451:
	.string	"qpB2"
.LASF794:
	.string	"cost_field"
.LASF298:
	.string	"prev_qp"
.LASF772:
	.string	"memory_size"
.LASF358:
	.string	"decY_best"
.LASF573:
	.string	"field_mode"
.LASF37:
	.string	"_IO_buf_base"
.LASF502:
	.string	"QOffsetMatrixFile"
.LASF887:
	.string	"snrs"
.LASF417:
	.string	"WeightedPrediction"
.LASF109:
	.string	"max_dec_frame_reordering"
.LASF444:
	.string	"Intra16x16ParDisable"
.LASF809:
	.string	"active_pps"
.LASF332:
	.string	"mot_ctx"
.LASF645:
	.string	"chroma_qp_offset"
.LASF723:
	.string	"imgUV"
.LASF75:
	.string	"dpb_output_delay_length_minus1"
.LASF173:
	.string	"frame_cropping_rect_bottom_offset"
.LASF83:
	.string	"overscan_appropriate_flag"
.LASF32:
	.string	"_IO_read_end"
.LASF399:
	.string	"infile"
.LASF86:
	.string	"video_full_range_flag"
.LASF249:
	.string	"memory_management_control_operation"
.LASF390:
	.string	"img_height"
.LASF73:
	.string	"initial_cpb_removal_delay_length_minus1"
.LASF766:
	.string	"frame_rate"
.LASF759:
	.string	"last_bit_ctr_n"
.LASF498:
	.string	"lossless_qpprime_y_zero_flag"
.LASF114:
	.string	"seq_parameter_set_id"
.LASF188:
	.string	"BITS_INTER_MB"
.LASF503:
	.string	"OffsetMatrixPresentFlag"
.LASF29:
	.string	"_IO_FILE"
.LASF703:
	.string	"ref_pic_num"
.LASF100:
	.string	"vcl_hrd_parameters_present_flag"
.LASF755:
	.string	"p_stat_frm"
.LASF624:
	.string	"write_macroblock"
.LASF775:
	.string	"last_P_no_fld"
.LASF693:
	.string	"reference_idc"
.LASF587:
	.string	"toppoc"
.LASF244:
	.string	"RMPNI"
.LASF604:
	.string	"NumberofTextureBits"
.LASF19:
	.string	"tm_hour"
.LASF838:
	.string	"nextP_tr_frm"
.LASF81:
	.string	"sar_height"
.LASF125:
	.string	"slice_group_change_direction_flag"
.LASF754:
	.string	"report_frame_statistic"
.LASF236:
	.string	"map_contexts"
.LASF400:
	.string	"outfile"
.LASF382:
	.string	"search_range"
.LASF481:
	.string	"AllowTransform8x8"
.LASF425:
	.string	"BRefPictures"
.LASF603:
	.string	"NumberofHeaderBits"
.LASF557:
	.string	"pstruct_next_P"
.LASF658:
	.string	"mode_use_transform_8x8"
.LASF823:
	.string	"imgUV_org_bot"
.LASF879:
	.string	"rpc_bits_to_go"
.LASF20:
	.string	"tm_mday"
.LASF670:
	.string	"bit_use_mode"
.LASF225:
	.string	"b8_type_contexts"
.LASF52:
	.string	"__pad1"
.LASF54:
	.string	"__pad3"
.LASF55:
	.string	"__pad4"
.LASF56:
	.string	"__pad5"
.LASF564:
	.string	"b_frame_to_code"
.LASF610:
	.string	"NumberofCodedBFrame"
.LASF318:
	.string	"streamBuffer"
.LASF345:
	.string	"Slice"
.LASF130:
	.string	"num_ref_idx_l1_active_minus1"
.LASF845:
	.string	"rec_resG"
.LASF42:
	.string	"_markers"
.LASF62:
	.string	"_pos"
.LASF15:
	.string	"int64_t"
.LASF575:
	.string	"mvscale"
.LASF264:
	.string	"macroblock"
.LASF416:
	.string	"qpsp_pred"
.LASF395:
	.string	"slice_mode"
.LASF402:
	.string	"TraceFile"
.LASF632:
	.string	"bitdepth_luma"
.LASF279:
	.string	"lf_disable"
.LASF485:
	.string	"RCEnable"
.LASF786:
	.string	"combine_field"
.LASF389:
	.string	"img_width"
.LASF307:
	.string	"double"
.LASF562:
	.string	"b_interval"
.LASF891:
	.string	"frame_statistic_start"
.LASF112:
	.string	"Valid"
.LASF336:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF340:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF334:
	.string	"rmpni_buffer"
.LASF533:
	.string	"pix_x"
.LASF534:
	.string	"pix_y"
.LASF796:
	.string	"FirstIGOPFinished"
.LASF828:
	.string	"direct_ref_idx"
.LASF743:
	.string	"argv"
.LASF237:
	.string	"last_contexts"
.LASF362:
	.string	"Decoders"
.LASF238:
	.string	"one_contexts"
.LASF327:
	.string	"picture_type"
.LASF524:
	.string	"block_c_x"
.LASF771:
	.string	"init_orig_buffers"
.LASF528:
	.string	"nz_coeff"
.LASF103:
	.string	"bitstream_restriction_flag"
.LASF208:
	.string	"Ebits_to_go"
.LASF410:
	.string	"directInferenceFlag"
.LASF87:
	.string	"colour_description_present_flag"
.LASF147:
	.string	"constrained_set3_flag"
.LASF232:
	.string	"ipr_contexts"
.LASF680:
	.string	"em_prev_bits"
.LASF883:
	.string	"enc_bottom_picture"
.LASF386:
	.string	"Log2MaxFrameNum"
.LASF537:
	.string	"opix_x"
.LASF538:
	.string	"opix_y"
.LASF66:
	.string	"Boolean"
.LASF495:
	.string	"img_height_cr"
.LASF479:
	.string	"context_init_method"
.LASF513:
	.string	"width"
.LASF753:
	.string	"free_picture"
.LASF511:
	.string	"max_num_references"
.LASF146:
	.string	"constrained_set2_flag"
.LASF553:
	.string	"fld_type"
.LASF424:
	.string	"SkipIntraInInterSlices"
.LASF770:
	.string	"yuv_types"
.LASF458:
	.string	"NumberLeakyBuckets"
.LASF884:
	.string	"inputs"
.LASF314:
	.string	"stored_byte_buf"
.LASF193:
	.string	"MAX_BITCOUNTER_MB"
.LASF367:
	.string	"snr_u1"
.LASF568:
	.string	"all_mv"
.LASF183:
	.string	"FIELD_CODING"
.LASF635:
	.string	"bitdepth_chroma_qp_scale"
.LASF655:
	.string	"bit_slice"
.LASF782:
	.string	"num_blk8x8"
.LASF123:
	.string	"top_left"
.LASF194:
	.string	"UVLC"
.LASF829:
	.string	"direct_pdir"
.LASF873:
	.string	"In2ndIGOP"
.LASF351:
	.string	"distortion_u"
.LASF352:
	.string	"distortion_v"
.LASF373:
	.string	"snr_ua"
.LASF350:
	.string	"distortion_y"
.LASF856:
	.string	"rddata_top_frame_mb"
.LASF817:
	.string	"chroma_log_weight_denom"
.LASF16:
	.string	"long long unsigned int"
.LASF368:
	.string	"snr_v1"
.LASF328:
	.string	"start_mb_nr"
.LASF276:
	.string	"b8mode"
.LASF139:
	.string	"constrained_intra_pred_flag"
.LASF216:
	.string	"Ebits_to_followS"
.LASF47:
	.string	"_cur_column"
.LASF736:
	.string	"top_moving_block"
.LASF229:
	.string	"mb_aff_contexts"
.LASF597:
	.string	"FrameSizeInMbs"
.LASF401:
	.string	"ReconFile"
.LASF814:
	.string	"wp_offset"
.LASF396:
	.string	"slice_argument"
.LASF764:
	.string	"bit_use"
.LASF403:
	.string	"QmatrixFile"
.LASF79:
	.string	"aspect_ratio_idc"
.LASF374:
	.string	"snr_va"
.LASF220:
	.string	"EncodingEnvironmentPtr"
.LASF855:
	.string	"gop_structure"
.LASF744:
	.string	"report_stats_on_error"
.LASF165:
	.string	"pic_height_in_map_units_minus1"
.LASF371:
	.string	"snr_vt"
.LASF259:
	.string	"bitpattern"
.LASF200:
	.string	"P_SLICE"
.LASF578:
	.string	"layer"
.LASF26:
	.string	"tm_gmtoff"
.LASF469:
	.string	"NumFramesInELSubSeq"
.LASF64:
	.string	"FALSE"
.LASF497:
	.string	"rgb_input_flag"
.LASF40:
	.string	"_IO_backup_base"
.LASF681:
	.string	"bit_ctr_parametersets"
.LASF320:
	.string	"Bitstream"
.LASF171:
	.string	"frame_cropping_rect_right_offset"
.LASF474:
	.string	"SPDetectionThreshold"
.LASF31:
	.string	"_IO_read_ptr"
.LASF877:
	.string	"Bytes_After_Header"
.LASF308:
	.string	"Macroblock"
.LASF413:
	.string	"BiPredMESearchRange"
.LASF694:
	.string	"slice_qp"
.LASF752:
	.string	"malloc_picture"
.LASF835:
	.string	"Bframe_ctr"
.LASF96:
	.string	"time_scale"
.LASF450:
	.string	"qpN2"
.LASF748:
	.string	"byte_abs_range"
.LASF620:
	.string	"Frame_Total_Number_MB"
.LASF738:
	.string	"bottom_ref_pic_id"
.LASF302:
	.string	"predict_error"
.LASF366:
	.string	"snr_y1"
.LASF580:
	.string	"NoResidueDirect"
.LASF442:
	.string	"Intra4x4DiagDisable"
.LASF404:
	.string	"intra_period"
.LASF530:
	.string	"mb_y"
.LASF215:
	.string	"Ebits_to_goS"
.LASF46:
	.string	"_old_offset"
.LASF868:
	.string	"glob_abs_diff_pic_num_minus1_l0"
.LASF871:
	.string	"glob_abs_diff_pic_num_minus1_l1"
.LASF521:
	.string	"is_v_block"
.LASF379:
	.string	"jumpd"
.LASF186:
	.string	"BITS_TOTAL_MB"
.LASF698:
	.string	"storable_picture"
.LASF356:
	.string	"decY"
.LASF430:
	.string	"symbol_mode"
.LASF372:
	.string	"snr_ya"
.LASF196:
	.string	"FRAME"
.LASF300:
	.string	"prev_cbp"
.LASF674:
	.string	"tmp_bit_use_cbp"
.LASF858:
	.string	"rddata_top_field_mb"
.LASF13:
	.string	"long long int"
.LASF671:
	.string	"bit_use_stuffingBits"
.LASF740:
	.string	"bottom_moving_block"
.LASF854:
	.string	"decs"
.LASF369:
	.string	"snr_yt"
.LASF45:
	.string	"_flags2"
.LASF121:
	.string	"slice_group_map_type"
.LASF140:
	.string	"redundant_pic_cnt_present_flag"
.LASF464:
	.string	"LossRateA"
.LASF465:
	.string	"LossRateB"
.LASF466:
	.string	"LossRateC"
.LASF391:
	.string	"yuv_format"
.LASF601:
	.string	"long_term_reference_flag"
.LASF408:
	.string	"qpBRSOffset"
.LASF696:
	.string	"pyramidPocDelta"
.LASF129:
	.string	"num_ref_idx_l0_active_minus1"
.LASF132:
	.string	"weighted_bipred_idc"
.LASF177:
	.string	"int64"
.LASF621:
	.string	"IFLAG"
.LASF684:
	.string	"min_rdcost"
.LASF876:
	.string	"FirstFrameIn2ndIGOP"
.LASF648:
	.string	"ImageParameters"
.LASF878:
	.string	"rpc_bytes_to_go"
.LASF284:
	.string	"mb_field"
.LASF463:
	.string	"IntraBottom"
.LASF111:
	.string	"vui_seq_parameters_t"
.LASF383:
	.string	"P_List0_refs"
.LASF686:
	.string	"rec_mbU"
.LASF687:
	.string	"rec_mbV"
.LASF685:
	.string	"rec_mbY"
.LASF636:
	.string	"bitdepth_lambda_scale"
.LASF252:
	.string	"long_term_frame_idx"
.LASF153:
	.string	"bit_depth_chroma_minus8"
.LASF226:
	.string	"mv_res_contexts"
.LASF668:
	.string	"bitrate_B"
.LASF666:
	.string	"bitrate_I"
.LASF567:
	.string	"pred_mv"
.LASF152:
	.string	"bit_depth_luma_minus8"
.LASF247:
	.string	"RMPNIbuffer_t"
.LASF266:
	.string	"slice_nr"
.LASF108:
	.string	"log2_max_mv_length_horizontal"
.LASF596:
	.string	"PicSizeInMbs"
.LASF204:
	.string	"SI_SLICE"
.LASF117:
	.string	"pic_scaling_matrix_present_flag"
.LASF149:
	.string	"chroma_format_idc"
.LASF381:
	.string	"hadamardqpel"
.LASF697:
	.string	"GOP_DATA"
.LASF223:
	.string	"BiContextType"
.LASF202:
	.string	"I_SLICE"
.LASF322:
	.string	"bitstream"
.LASF501:
	.string	"LambdaWeight"
.LASF778:
	.string	"main"
.LASF834:
	.string	"Pframe_ctr"
.LASF98:
	.string	"nal_hrd_parameters_present_flag"
.LASF267:
	.string	"delta_qp"
.LASF85:
	.string	"video_format"
.LASF169:
	.string	"frame_cropping_flag"
.LASF289:
	.string	"mbAvailA"
.LASF290:
	.string	"mbAvailB"
.LASF270:
	.string	"mb_available_up"
.LASF292:
	.string	"mbAvailD"
.LASF565:
	.string	"fw_mb_mode"
.LASF499:
	.string	"residue_transform_flag"
.LASF774:
	.string	"last_P_no_frm"
.LASF589:
	.string	"framepoc"
.LASF161:
	.string	"offset_for_ref_frame"
.LASF747:
	.string	"init_img"
.LASF3:
	.string	"unsigned int"
.LASF640:
	.string	"num_blk8x8_uv"
.LASF127:
	.string	"pic_size_in_map_units_minus1"
.LASF719:
	.string	"imgY_11"
.LASF440:
	.string	"IntraDisableInterOnly"
.LASF157:
	.string	"delta_pic_order_always_zero_flag"
.LASF315:
	.string	"byte_buf_skip"
.LASF255:
	.string	"syntaxelement"
.LASF831:
	.string	"refresh_map"
.LASF869:
	.string	"glob_long_term_pic_idx_l0"
.LASF872:
	.string	"glob_long_term_pic_idx_l1"
.LASF118:
	.string	"pic_scaling_list_present_flag"
.LASF5:
	.string	"short int"
.LASF742:
	.string	"argc"
.LASF895:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF715:
	.string	"size_y_cr"
.LASF749:
	.string	"mb_width_cr"
.LASF48:
	.string	"_vtable_offset"
.LASF364:
	.string	"snr_u"
.LASF365:
	.string	"snr_v"
.LASF730:
	.string	"frame"
.LASF363:
	.string	"snr_y"
.LASF810:
	.string	"active_sps"
.LASF647:
	.string	"auto_crop_bottom"
.LASF859:
	.string	"rddata_bot_field_mb"
.LASF415:
	.string	"sp_periodicity"
.LASF421:
	.string	"RDPictureIntra"
.LASF626:
	.string	"write_macroblock_frame"
.LASF420:
	.string	"RDPictureDecision"
.LASF348:
	.string	"slices"
.LASF124:
	.string	"bottom_right"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
