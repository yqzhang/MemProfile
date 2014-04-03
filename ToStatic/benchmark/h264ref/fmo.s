	.file	"fmo.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 fmo.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	FirstMBInSlice
	.comm	FirstMBInSlice,32,32
	.globl	MBAmap
	.bss
	.align 8
	.type	MBAmap, @object
	.size	MBAmap, 8
MBAmap:
	.zero	8
	.globl	MapUnitToSliceGroupMap
	.align 8
	.type	MapUnitToSliceGroupMap, @object
	.size	MapUnitToSliceGroupMap, 8
MapUnitToSliceGroupMap:
	.zero	8
	.comm	PicSizeInMapUnits,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6"
	.align 8
.LC1:
	.string	"cannot allocated %d bytes for MapUnitToSliceGroupMap, exit\n"
	.align 8
.LC2:
	.string	"Illegal slice_group_map_type %d , exit \n"
	.text
	.type	FmoGenerateMapUnitToSliceGroupMap, @function
FmoGenerateMapUnitToSliceGroupMap:
.LFB2:
	.file 1 "fmo.c"
	.loc 1 96 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# img, img
	movq	%rsi, -16(%rbp)	# pps, pps
	.loc 1 97 0
	movq	-8(%rbp), %rax	# img, tmp82
	movl	72472(%rax), %edx	# img_2(D)->PicHeightInMapUnits, D.4878
	movq	-8(%rbp), %rax	# img, tmp83
	movl	72468(%rax), %eax	# img_2(D)->PicWidthInMbs, D.4878
	imull	%edx, %eax	# D.4878, PicSizeInMapUnits.0
	movl	%eax, PicSizeInMapUnits(%rip)	# PicSizeInMapUnits.0, PicSizeInMapUnits
	.loc 1 100 0
	movq	-16(%rbp), %rax	# pps, tmp84
	movl	64(%rax), %eax	# pps_6(D)->slice_group_map_type, D.4878
	cmpl	$6, %eax	#, D.4878
	jne	.L2	#,
	.loc 1 102 0
	movq	-16(%rbp), %rax	# pps, tmp85
	movl	172(%rax), %eax	# pps_6(D)->pic_size_in_map_units_minus1, D.4878
	leal	1(%rax), %edx	#, D.4878
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.1
	cmpl	%eax, %edx	# PicSizeInMapUnits.1, D.4878
	je	.L2	#,
	.loc 1 104 0
	movl	$500, %esi	#,
	movl	$.LC0, %edi	#,
	call	error	#
.L2:
	.loc 1 109 0
	movq	MapUnitToSliceGroupMap(%rip), %rax	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.2
	testq	%rax, %rax	# MapUnitToSliceGroupMap.2
	je	.L3	#,
	.loc 1 110 0
	movq	MapUnitToSliceGroupMap(%rip), %rax	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.3
	movq	%rax, %rdi	# MapUnitToSliceGroupMap.3,
	call	free	#
.L3:
	.loc 1 112 0
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.4
	movl	%eax, %eax	# PicSizeInMapUnits.4, D.4879
	movq	%rax, %rdi	# D.4879,
	call	malloc	#
	movq	%rax, MapUnitToSliceGroupMap(%rip)	# MapUnitToSliceGroupMap.5, MapUnitToSliceGroupMap
	movq	MapUnitToSliceGroupMap(%rip), %rax	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.6
	testq	%rax, %rax	# MapUnitToSliceGroupMap.6
	jne	.L4	#,
	.loc 1 114 0
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.7
	movl	%eax, %eax	# PicSizeInMapUnits.7, D.4879
	movq	%rax, %rsi	# D.4879,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 115 0
	movl	$-1, %edi	#,
	call	exit	#
.L4:
	.loc 1 118 0
	movq	-16(%rbp), %rax	# pps, tmp87
	movl	60(%rax), %eax	# pps_6(D)->num_slice_groups_minus1, D.4878
	testl	%eax, %eax	# D.4878
	jne	.L5	#,
	.loc 1 120 0
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.8
	movl	%eax, %edx	# PicSizeInMapUnits.8, D.4879
	movq	MapUnitToSliceGroupMap(%rip), %rax	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.9
	movl	$0, %esi	#,
	movq	%rax, %rdi	# MapUnitToSliceGroupMap.9,
	call	memset	#
	.loc 1 121 0
	movl	$0, %eax	#, D.4877
	jmp	.L6	#
.L5:
	.loc 1 124 0
	movq	-16(%rbp), %rax	# pps, tmp88
	movl	64(%rax), %eax	# pps_6(D)->slice_group_map_type, D.4878
	cmpl	$6, %eax	#, D.4878
	ja	.L7	#,
	movl	%eax, %eax	# D.4878, tmp89
	movq	.L9(,%rax,8), %rax	#, tmp90
	jmp	*%rax	# tmp90
	.section	.rodata
	.align 8
	.align 4
.L9:
	.quad	.L8
	.quad	.L10
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.text
.L8:
	.loc 1 127 0
	movq	-16(%rbp), %rdx	# pps, tmp91
	movq	-8(%rbp), %rax	# img, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	FmoGenerateType0MapUnitMap	#
	.loc 1 128 0
	jmp	.L16	#
.L10:
	.loc 1 130 0
	movq	-16(%rbp), %rdx	# pps, tmp93
	movq	-8(%rbp), %rax	# img, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	FmoGenerateType1MapUnitMap	#
	.loc 1 131 0
	jmp	.L16	#
.L11:
	.loc 1 133 0
	movq	-16(%rbp), %rdx	# pps, tmp95
	movq	-8(%rbp), %rax	# img, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	FmoGenerateType2MapUnitMap	#
	.loc 1 134 0
	jmp	.L16	#
.L12:
	.loc 1 136 0
	movq	-16(%rbp), %rdx	# pps, tmp97
	movq	-8(%rbp), %rax	# img, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	FmoGenerateType3MapUnitMap	#
	.loc 1 137 0
	jmp	.L16	#
.L13:
	.loc 1 139 0
	movq	-16(%rbp), %rdx	# pps, tmp99
	movq	-8(%rbp), %rax	# img, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	FmoGenerateType4MapUnitMap	#
	.loc 1 140 0
	jmp	.L16	#
.L14:
	.loc 1 142 0
	movq	-16(%rbp), %rdx	# pps, tmp101
	movq	-8(%rbp), %rax	# img, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	FmoGenerateType5MapUnitMap	#
	.loc 1 143 0
	jmp	.L16	#
.L15:
	.loc 1 145 0
	movq	-16(%rbp), %rdx	# pps, tmp103
	movq	-8(%rbp), %rax	# img, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	FmoGenerateType6MapUnitMap	#
	.loc 1 146 0
	jmp	.L16	#
.L7:
	.loc 1 148 0
	movq	-16(%rbp), %rax	# pps, tmp105
	movl	64(%rax), %eax	# pps_6(D)->slice_group_map_type, D.4878
	movl	%eax, %esi	# D.4878,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 149 0
	movl	$-1, %edi	#,
	call	exit	#
.L16:
	.loc 1 151 0
	movl	$0, %eax	#, D.4877
.L6:
	.loc 1 152 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	FmoGenerateMapUnitToSliceGroupMap, .-FmoGenerateMapUnitToSliceGroupMap
	.section	.rodata
	.align 8
.LC3:
	.string	"cannot allocated %d bytes for MBAmap, exit\n"
	.text
	.type	FmoGenerateMBAmap, @function
FmoGenerateMBAmap:
.LFB3:
	.loc 1 168 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# img, img
	movq	%rsi, -48(%rbp)	# sps, sps
	.loc 1 172 0
	movq	MBAmap(%rip), %rax	# MBAmap, MBAmap.10
	testq	%rax, %rax	# MBAmap.10
	je	.L18	#,
	.loc 1 173 0
	movq	MBAmap(%rip), %rax	# MBAmap, MBAmap.11
	movq	%rax, %rdi	# MBAmap.11,
	call	free	#
.L18:
	.loc 1 176 0
	movq	-40(%rbp), %rax	# img, tmp106
	movl	72484(%rax), %eax	# img_6(D)->PicSizeInMbs, D.4883
	movl	%eax, %eax	# D.4883, D.4884
	movq	%rax, %rdi	# D.4884,
	call	malloc	#
	movq	%rax, MBAmap(%rip)	# MBAmap.12, MBAmap
	movq	MBAmap(%rip), %rax	# MBAmap, MBAmap.13
	testq	%rax, %rax	# MBAmap.13
	jne	.L19	#,
	.loc 1 178 0
	movq	-40(%rbp), %rax	# img, tmp108
	movl	72484(%rax), %eax	# img_6(D)->PicSizeInMbs, D.4883
	movl	%eax, %eax	# D.4883, D.4884
	movq	%rax, %rsi	# D.4884,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 179 0
	movl	$-1, %edi	#,
	call	exit	#
.L19:
	.loc 1 182 0
	movq	-48(%rbp), %rax	# sps, tmp109
	movl	1148(%rax), %eax	# sps_13(D)->frame_mbs_only_flag, D.4885
	testl	%eax, %eax	# D.4885
	jne	.L20	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# img, tmp110
	movl	72444(%rax), %eax	# img_6(D)->field_picture, D.4883
	testl	%eax, %eax	# D.4883
	je	.L21	#,
.L20:
	.loc 1 184 0 is_stmt 1
	movl	$0, -20(%rbp)	#, i
	jmp	.L22	#
.L23:
	.loc 1 186 0 discriminator 2
	movq	MBAmap(%rip), %rdx	# MBAmap, MBAmap.14
	movl	-20(%rbp), %eax	# i, D.4886
	addq	%rax, %rdx	# D.4886, D.4887
	movq	MapUnitToSliceGroupMap(%rip), %rcx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.15
	movl	-20(%rbp), %eax	# i, D.4886
	addq	%rcx, %rax	# MapUnitToSliceGroupMap.15, D.4887
	movzbl	(%rax), %eax	# *_54, D.4888
	movb	%al, (%rdx)	# D.4888, *_51
	.loc 1 184 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L22:
	.loc 1 184 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# img, tmp111
	movl	72484(%rax), %eax	# img_6(D)->PicSizeInMbs, D.4883
	cmpl	-20(%rbp), %eax	# i, D.4883
	ja	.L23	#,
	.loc 1 182 0 is_stmt 1
	jmp	.L24	#
.L21:
	.loc 1 190 0
	movq	-48(%rbp), %rax	# sps, tmp112
	movl	1152(%rax), %eax	# sps_13(D)->mb_adaptive_frame_field_flag, D.4885
	testl	%eax, %eax	# D.4885
	je	.L25	#,
	.loc 1 190 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# img, tmp113
	movl	72444(%rax), %eax	# img_6(D)->field_picture, D.4883
	testl	%eax, %eax	# D.4883
	jne	.L25	#,
	.loc 1 192 0 is_stmt 1
	movl	$0, -20(%rbp)	#, i
	jmp	.L26	#
.L27:
	.loc 1 194 0 discriminator 2
	movq	MBAmap(%rip), %rdx	# MBAmap, MBAmap.16
	movl	-20(%rbp), %eax	# i, D.4886
	addq	%rax, %rdx	# D.4886, D.4887
	movq	MapUnitToSliceGroupMap(%rip), %rcx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.17
	movl	-20(%rbp), %eax	# i, tmp114
	shrl	%eax	# D.4883
	movl	%eax, %eax	# D.4883, D.4886
	addq	%rcx, %rax	# MapUnitToSliceGroupMap.17, D.4887
	movzbl	(%rax), %eax	# *_26, D.4888
	movb	%al, (%rdx)	# D.4888, *_22
	.loc 1 192 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L26:
	.loc 1 192 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# img, tmp115
	movl	72484(%rax), %eax	# img_6(D)->PicSizeInMbs, D.4883
	cmpl	-20(%rbp), %eax	# i, D.4883
	ja	.L27	#,
	.loc 1 190 0 is_stmt 1
	jmp	.L24	#
.L25:
	.loc 1 199 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L28	#
.L29:
	.loc 1 201 0 discriminator 2
	movq	MBAmap(%rip), %rdx	# MBAmap, MBAmap.18
	movl	-20(%rbp), %eax	# i, D.4886
	leaq	(%rdx,%rax), %rcx	#, D.4887
	movq	MapUnitToSliceGroupMap(%rip), %rsi	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.19
	movq	-40(%rbp), %rax	# img, tmp116
	movl	72468(%rax), %eax	# img_6(D)->PicWidthInMbs, D.4883
	leal	(%rax,%rax), %ebx	#, D.4883
	movl	-20(%rbp), %eax	# i, tmp119
	movl	$0, %edx	#, tmp118
	divl	%ebx	# D.4883
	movl	%eax, %edx	# tmp117, D.4883
	movq	-40(%rbp), %rax	# img, tmp120
	movl	72468(%rax), %eax	# img_6(D)->PicWidthInMbs, D.4883
	movl	%edx, %edi	# D.4883, D.4883
	imull	%eax, %edi	# D.4883, D.4883
	movq	-40(%rbp), %rax	# img, tmp121
	movl	72468(%rax), %r8d	# img_6(D)->PicWidthInMbs, D.4883
	movl	-20(%rbp), %eax	# i, tmp122
	movl	$0, %edx	#, tmp123
	divl	%r8d	# D.4883
	movl	%edx, %eax	# tmp123, D.4883
	addl	%edi, %eax	# D.4883, D.4883
	movl	%eax, %eax	# D.4883, D.4886
	addq	%rsi, %rax	# MapUnitToSliceGroupMap.19, D.4887
	movzbl	(%rax), %eax	# *_44, D.4888
	movb	%al, (%rcx)	# D.4888, *_33
	.loc 1 199 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L28:
	.loc 1 199 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# img, tmp125
	movl	72484(%rax), %eax	# img_6(D)->PicSizeInMbs, D.4883
	cmpl	-20(%rbp), %eax	# i, D.4883
	ja	.L29	#,
.L24:
	.loc 1 204 0 is_stmt 1
	movl	$0, %eax	#, D.4889
	.loc 1 205 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	FmoGenerateMBAmap, .-FmoGenerateMBAmap
	.globl	FmoInit
	.type	FmoInit, @function
FmoInit:
.LFB4:
	.loc 1 222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# img, img
	movq	%rsi, -32(%rbp)	# pps, pps
	movq	%rdx, -40(%rbp)	# sps, sps
	.loc 1 230 0
	movl	$0, -4(%rbp)	#, k
	jmp	.L32	#
.L33:
	.loc 1 231 0 discriminator 2
	movl	-4(%rbp), %eax	# k, tmp62
	cltq
	movl	$-1, FirstMBInSlice(,%rax,4)	#, FirstMBInSlice
	.loc 1 230 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L32:
	.loc 1 230 0 is_stmt 0 discriminator 1
	cmpl	$7, -4(%rbp)	#, k
	jle	.L33	#,
	.loc 1 235 0 is_stmt 1
	movq	-32(%rbp), %rdx	# pps, tmp63
	movq	-24(%rbp), %rax	# img, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	FmoGenerateMapUnitToSliceGroupMap	#
	.loc 1 236 0
	movq	-40(%rbp), %rdx	# sps, tmp65
	movq	-24(%rbp), %rax	# img, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	FmoGenerateMBAmap	#
	.loc 1 284 0
	movl	$0, %eax	#, D.4891
	.loc 1 285 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	FmoInit, .-FmoInit
	.globl	FmoUninit
	.type	FmoUninit, @function
FmoUninit:
.LFB5:
	.loc 1 295 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 296 0
	movq	MBAmap(%rip), %rax	# MBAmap, MBAmap.20
	testq	%rax, %rax	# MBAmap.20
	je	.L36	#,
	.loc 1 298 0
	movq	MBAmap(%rip), %rax	# MBAmap, MBAmap.21
	movq	%rax, %rdi	# MBAmap.21,
	call	free	#
	.loc 1 299 0
	movq	$0, MBAmap(%rip)	#, MBAmap
.L36:
	.loc 1 301 0
	movq	MapUnitToSliceGroupMap(%rip), %rax	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.22
	testq	%rax, %rax	# MapUnitToSliceGroupMap.22
	je	.L35	#,
	.loc 1 303 0
	movq	MapUnitToSliceGroupMap(%rip), %rax	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.23
	movq	%rax, %rdi	# MapUnitToSliceGroupMap.23,
	call	free	#
	.loc 1 304 0
	movq	$0, MapUnitToSliceGroupMap(%rip)	#, MapUnitToSliceGroupMap
.L35:
	.loc 1 307 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	FmoUninit, .-FmoUninit
	.type	FmoGenerateType0MapUnitMap, @function
FmoGenerateType0MapUnitMap:
.LFB6:
	.loc 1 322 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# img, img
	movq	%rsi, -32(%rbp)	# pps, pps
	.loc 1 324 0
	movl	$0, -4(%rbp)	#, i
.L45:
	.loc 1 327 0
	movl	$0, -12(%rbp)	#, iGroup
	jmp	.L39	#
.L44:
	.loc 1 331 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L40	#
.L42:
	.loc 1 332 0 discriminator 1
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.24
	movl	-8(%rbp), %eax	# j, tmp73
	movl	-4(%rbp), %ecx	# i, tmp74
	addl	%ecx, %eax	# tmp74, D.4892
	movl	%eax, %eax	# D.4892, D.4893
	addq	%rax, %rdx	# D.4893, D.4894
	movl	-12(%rbp), %eax	# iGroup, tmp75
	movb	%al, (%rdx)	# D.4895, *_17
	.loc 1 331 0 discriminator 1
	addl	$1, -8(%rbp)	#, j
.L40:
	movq	-32(%rbp), %rax	# pps, tmp76
	movl	-12(%rbp), %edx	# iGroup, tmp77
	addq	$16, %rdx	#, tmp78
	movl	4(%rax,%rdx,4), %eax	# pps_7(D)->run_length_minus1, D.4892
	cmpl	-8(%rbp), %eax	# j, D.4892
	jb	.L41	#,
	.loc 1 331 0 is_stmt 0 discriminator 2
	movl	-8(%rbp), %eax	# j, tmp79
	movl	-4(%rbp), %edx	# i, tmp80
	addl	%eax, %edx	# tmp79, D.4892
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.25
	cmpl	%eax, %edx	# PicSizeInMapUnits.25, D.4892
	jb	.L42	#,
.L41:
	.loc 1 329 0 is_stmt 1
	movl	-12(%rbp), %eax	# iGroup, iGroup.26
	leal	1(%rax), %edx	#, tmp81
	movl	%edx, -12(%rbp)	# tmp81, iGroup
	movq	-32(%rbp), %rdx	# pps, tmp82
	movl	%eax, %eax	# iGroup.26, tmp83
	addq	$16, %rax	#, tmp84
	movl	4(%rdx,%rax,4), %edx	# pps_7(D)->run_length_minus1, D.4892
	movl	-4(%rbp), %eax	# i, tmp85
	addl	%edx, %eax	# D.4892, D.4892
	addl	$1, %eax	#, tmp86
	movl	%eax, -4(%rbp)	# tmp86, i
.L39:
	.loc 1 328 0 discriminator 1
	movq	-32(%rbp), %rax	# pps, tmp87
	movl	60(%rax), %eax	# pps_7(D)->num_slice_groups_minus1, D.4892
	.loc 1 327 0 discriminator 1
	cmpl	-12(%rbp), %eax	# iGroup, D.4892
	jb	.L43	#,
	.loc 1 328 0
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.27
	cmpl	%eax, -4(%rbp)	# PicSizeInMapUnits.27, i
	jb	.L44	#,
.L43:
	.loc 1 335 0
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.28
	cmpl	%eax, -4(%rbp)	# PicSizeInMapUnits.28, i
	jb	.L45	#,
	.loc 1 336 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	FmoGenerateType0MapUnitMap, .-FmoGenerateType0MapUnitMap
	.type	FmoGenerateType1MapUnitMap, @function
FmoGenerateType1MapUnitMap:
.LFB7:
	.loc 1 351 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)	# img, img
	movq	%rsi, -40(%rbp)	# pps, pps
	.loc 1 353 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L47	#
.L48:
	.loc 1 355 0 discriminator 2
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.29
	movl	-12(%rbp), %eax	# i, D.4896
	leaq	(%rdx,%rax), %rcx	#, D.4897
	movq	-32(%rbp), %rax	# img, tmp76
	movl	72468(%rax), %esi	# img_7(D)->PicWidthInMbs, D.4898
	movl	-12(%rbp), %eax	# i, tmp77
	movl	$0, %edx	#, tmp78
	divl	%esi	# D.4898
	movl	%edx, %esi	# tmp78, D.4898
	movq	-32(%rbp), %rax	# img, tmp80
	movl	72468(%rax), %ebx	# img_7(D)->PicWidthInMbs, D.4898
	movl	-12(%rbp), %eax	# i, tmp83
	movl	$0, %edx	#, tmp82
	divl	%ebx	# D.4898
	movl	%eax, %edx	# tmp81, D.4898
	movq	-40(%rbp), %rax	# pps, tmp84
	movl	60(%rax), %eax	# pps_12(D)->num_slice_groups_minus1, D.4898
	addl	$1, %eax	#, D.4898
	imull	%edx, %eax	# D.4898, D.4898
	shrl	%eax	# D.4898
	leal	(%rsi,%rax), %edx	#, D.4898
	.loc 1 356 0 discriminator 2
	movq	-40(%rbp), %rax	# pps, tmp85
	movl	60(%rax), %eax	# pps_12(D)->num_slice_groups_minus1, D.4898
	leal	1(%rax), %esi	#, D.4898
	movl	%edx, %eax	# D.4898, tmp87
	movl	$0, %edx	#, tmp86
	divl	%esi	# D.4898
	movl	%edx, %eax	# tmp86, D.4898
	.loc 1 355 0 discriminator 2
	movb	%al, (%rcx)	# D.4899, *_6
	.loc 1 353 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L47:
	.loc 1 353 0 is_stmt 0 discriminator 1
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.30
	cmpl	%eax, -12(%rbp)	# PicSizeInMapUnits.30, i
	jb	.L48	#,
	.loc 1 358 0 is_stmt 1
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	FmoGenerateType1MapUnitMap, .-FmoGenerateType1MapUnitMap
	.type	FmoGenerateType2MapUnitMap, @function
FmoGenerateType2MapUnitMap:
.LFB8:
	.loc 1 372 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)	# img, img
	movq	%rsi, -56(%rbp)	# pps, pps
	.loc 1 377 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L50	#
.L51:
	.loc 1 378 0 discriminator 2
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.31
	movl	-36(%rbp), %eax	# i, D.4900
	addq	%rax, %rdx	# D.4900, D.4901
	movq	-56(%rbp), %rax	# pps, tmp82
	movl	60(%rax), %eax	# pps_10(D)->num_slice_groups_minus1, D.4902
	movb	%al, (%rdx)	# D.4903, *_9
	.loc 1 377 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L50:
	.loc 1 377 0 is_stmt 0 discriminator 1
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.32
	cmpl	%eax, -36(%rbp)	# PicSizeInMapUnits.32, i
	jb	.L51	#,
	.loc 1 380 0 is_stmt 1
	movq	-56(%rbp), %rax	# pps, tmp83
	movl	60(%rax), %eax	# pps_10(D)->num_slice_groups_minus1, D.4902
	subl	$1, %eax	#, D.4902
	movl	%eax, -40(%rbp)	# D.4902, iGroup
	jmp	.L52	#
.L57:
	.loc 1 382 0
	movq	-56(%rbp), %rax	# pps, tmp84
	movl	-40(%rbp), %edx	# iGroup, tmp86
	movslq	%edx, %rdx	# tmp86, tmp85
	addq	$24, %rdx	#, tmp87
	movl	4(%rax,%rdx,4), %eax	# pps_10(D)->top_left, D.4902
	movq	-48(%rbp), %rdx	# img, tmp88
	movl	72468(%rdx), %ebx	# img_18(D)->PicWidthInMbs, D.4902
	movl	$0, %edx	#, tmp90
	divl	%ebx	# D.4902
	movl	%eax, -24(%rbp)	# tmp89, yTopLeft
	.loc 1 383 0
	movq	-56(%rbp), %rax	# pps, tmp91
	movl	-40(%rbp), %edx	# iGroup, tmp93
	movslq	%edx, %rdx	# tmp93, tmp92
	addq	$24, %rdx	#, tmp94
	movl	4(%rax,%rdx,4), %eax	# pps_10(D)->top_left, D.4902
	movq	-48(%rbp), %rdx	# img, tmp95
	movl	72468(%rdx), %ecx	# img_18(D)->PicWidthInMbs, D.4902
	movl	$0, %edx	#, tmp96
	divl	%ecx	# D.4902
	movl	%edx, -20(%rbp)	# tmp96, xTopLeft
	.loc 1 384 0
	movq	-56(%rbp), %rax	# pps, tmp98
	movl	-40(%rbp), %edx	# iGroup, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	addq	$32, %rdx	#, tmp101
	movl	4(%rax,%rdx,4), %eax	# pps_10(D)->bottom_right, D.4902
	movq	-48(%rbp), %rdx	# img, tmp102
	movl	72468(%rdx), %esi	# img_18(D)->PicWidthInMbs, D.4902
	movl	$0, %edx	#, tmp104
	divl	%esi	# D.4902
	movl	%eax, -16(%rbp)	# tmp103, yBottomRight
	.loc 1 385 0
	movq	-56(%rbp), %rax	# pps, tmp105
	movl	-40(%rbp), %edx	# iGroup, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	addq	$32, %rdx	#, tmp108
	movl	4(%rax,%rdx,4), %eax	# pps_10(D)->bottom_right, D.4902
	movq	-48(%rbp), %rdx	# img, tmp109
	movl	72468(%rdx), %ecx	# img_18(D)->PicWidthInMbs, D.4902
	movl	$0, %edx	#, tmp110
	divl	%ecx	# D.4902
	movl	%edx, -12(%rbp)	# tmp110, xBottomRight
	.loc 1 386 0
	movl	-24(%rbp), %eax	# yTopLeft, tmp112
	movl	%eax, -28(%rbp)	# tmp112, y
	jmp	.L53	#
.L56:
	.loc 1 387 0
	movl	-20(%rbp), %eax	# xTopLeft, tmp113
	movl	%eax, -32(%rbp)	# tmp113, x
	jmp	.L54	#
.L55:
	.loc 1 388 0 discriminator 2
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.33
	movq	-48(%rbp), %rax	# img, tmp114
	movl	72468(%rax), %eax	# img_18(D)->PicWidthInMbs, D.4902
	imull	-28(%rbp), %eax	# y, D.4902
	movl	%eax, %ecx	# D.4902, D.4902
	movl	-32(%rbp), %eax	# x, tmp115
	addl	%ecx, %eax	# D.4902, D.4902
	movl	%eax, %eax	# D.4902, D.4900
	addq	%rax, %rdx	# D.4900, D.4901
	movl	-40(%rbp), %eax	# iGroup, tmp116
	movb	%al, (%rdx)	# D.4903, *_37
	.loc 1 387 0 discriminator 2
	addl	$1, -32(%rbp)	#, x
.L54:
	.loc 1 387 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# x, tmp117
	cmpl	-12(%rbp), %eax	# xBottomRight, tmp117
	jbe	.L55	#,
	.loc 1 386 0 is_stmt 1
	addl	$1, -28(%rbp)	#, y
.L53:
	.loc 1 386 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# y, tmp118
	cmpl	-16(%rbp), %eax	# yBottomRight, tmp118
	jbe	.L56	#,
	.loc 1 380 0 is_stmt 1
	subl	$1, -40(%rbp)	#, iGroup
.L52:
	.loc 1 380 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, iGroup
	jns	.L57	#,
	.loc 1 390 0 is_stmt 1
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	FmoGenerateType2MapUnitMap, .-FmoGenerateType2MapUnitMap
	.type	FmoGenerateType3MapUnitMap, @function
FmoGenerateType3MapUnitMap:
.LFB9:
	.loc 1 405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# img, img
	movq	%rsi, -64(%rbp)	# pps, pps
	.loc 1 411 0
	movq	-64(%rbp), %rax	# pps, tmp124
	movl	168(%rax), %eax	# pps_19(D)->slice_group_change_rate_minus1, D.4904
	leal	1(%rax), %edx	#, D.4904
	movq	-56(%rbp), %rax	# img, tmp125
	movl	72652(%rax), %eax	# img_22(D)->slice_group_change_cycle, D.4905
	imull	%eax, %edx	# D.4904, D.4904
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.34
	cmpl	%eax, %edx	# PicSizeInMapUnits.34, D.4904
	cmovbe	%edx, %eax	# D.4904,, tmp126
	movl	%eax, -8(%rbp)	# tmp126, mapUnitsInSliceGroup0
	.loc 1 413 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L59	#
.L60:
	.loc 1 414 0 discriminator 2
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.35
	movl	-48(%rbp), %eax	# i, D.4906
	addq	%rdx, %rax	# MapUnitToSliceGroupMap.35, D.4907
	movb	$2, (%rax)	#, *_32
	.loc 1 413 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L59:
	.loc 1 413 0 is_stmt 0 discriminator 1
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.36
	cmpl	%eax, -48(%rbp)	# PicSizeInMapUnits.36, i
	jb	.L60	#,
	.loc 1 416 0 is_stmt 1
	movq	-56(%rbp), %rax	# img, tmp127
	movl	72468(%rax), %edx	# img_22(D)->PicWidthInMbs, D.4904
	movq	-64(%rbp), %rax	# pps, tmp128
	movl	164(%rax), %eax	# pps_19(D)->slice_group_change_direction_flag, D.4908
	subl	%eax, %edx	# D.4908, D.4904
	movl	%edx, %eax	# D.4904, D.4904
	shrl	%eax	# D.4904
	movl	%eax, -24(%rbp)	# D.4904, x
	.loc 1 417 0
	movq	-56(%rbp), %rax	# img, tmp129
	movl	72472(%rax), %edx	# img_22(D)->PicHeightInMapUnits, D.4904
	movq	-64(%rbp), %rax	# pps, tmp130
	movl	164(%rax), %eax	# pps_19(D)->slice_group_change_direction_flag, D.4908
	subl	%eax, %edx	# D.4908, D.4904
	movl	%edx, %eax	# D.4904, D.4904
	shrl	%eax	# D.4904
	movl	%eax, -20(%rbp)	# D.4904, y
	.loc 1 419 0
	movl	-24(%rbp), %eax	# x, tmp131
	movl	%eax, -40(%rbp)	# tmp131, leftBound
	.loc 1 420 0
	movl	-20(%rbp), %eax	# y, tmp132
	movl	%eax, -36(%rbp)	# tmp132, topBound
	.loc 1 421 0
	movl	-24(%rbp), %eax	# x, tmp133
	movl	%eax, -32(%rbp)	# tmp133, rightBound
	.loc 1 422 0
	movl	-20(%rbp), %eax	# y, tmp134
	movl	%eax, -28(%rbp)	# tmp134, bottomBound
	.loc 1 424 0
	movq	-64(%rbp), %rax	# pps, tmp135
	movl	164(%rax), %eax	# pps_19(D)->slice_group_change_direction_flag, D.4908
	subl	$1, %eax	#, D.4904
	movl	%eax, -16(%rbp)	# D.4904, xDir
	.loc 1 425 0
	movq	-64(%rbp), %rax	# pps, tmp136
	movl	164(%rax), %eax	# pps_19(D)->slice_group_change_direction_flag, D.4908
	movl	%eax, -12(%rbp)	# D.4908, yDir
	.loc 1 427 0
	movl	$0, -44(%rbp)	#, k
	jmp	.L61	#
.L68:
	.loc 1 429 0
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.37
	movq	-56(%rbp), %rax	# img, tmp137
	movl	72468(%rax), %ecx	# img_22(D)->PicWidthInMbs, D.4904
	movl	-20(%rbp), %eax	# y, y.38
	imull	%eax, %ecx	# y.38, D.4904
	movl	-24(%rbp), %eax	# x, x.39
	addl	%ecx, %eax	# D.4904, D.4904
	movl	%eax, %eax	# D.4904, D.4906
	addq	%rdx, %rax	# MapUnitToSliceGroupMap.37, D.4907
	movzbl	(%rax), %eax	# *_62, D.4909
	cmpb	$2, %al	#, D.4909
	sete	%al	#, D.4910
	movzbl	%al, %eax	# D.4910, tmp138
	movl	%eax, -4(%rbp)	# tmp138, mapUnitVacant
	.loc 1 430 0
	cmpl	$0, -4(%rbp)	#, mapUnitVacant
	je	.L62	#,
	.loc 1 431 0
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.40
	movq	-56(%rbp), %rax	# img, tmp139
	movl	72468(%rax), %ecx	# img_22(D)->PicWidthInMbs, D.4904
	movl	-20(%rbp), %eax	# y, y.41
	imull	%eax, %ecx	# y.41, D.4904
	movl	-24(%rbp), %eax	# x, x.42
	addl	%ecx, %eax	# D.4904, D.4904
	movl	%eax, %eax	# D.4904, D.4906
	addq	%rax, %rdx	# D.4906, D.4907
	movl	-44(%rbp), %eax	# k, tmp140
	cmpl	-8(%rbp), %eax	# mapUnitsInSliceGroup0, tmp140
	setae	%al	#, D.4910
	movb	%al, (%rdx)	# D.4909, *_73
.L62:
	.loc 1 433 0
	cmpl	$-1, -16(%rbp)	#, xDir
	jne	.L63	#,
	.loc 1 433 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# x, tmp141
	cmpl	-40(%rbp), %eax	# leftBound, tmp141
	jne	.L63	#,
	.loc 1 435 0 is_stmt 1
	movl	-40(%rbp), %eax	# leftBound, tmp142
	subl	$1, %eax	#, D.4905
	movl	$0, %edx	#, tmp144
	testl	%eax, %eax	# D.4905
	cmovs	%edx, %eax	# D.4905,, tmp144, tmp143
	movl	%eax, -40(%rbp)	# tmp143, leftBound
	.loc 1 436 0
	movl	-40(%rbp), %eax	# leftBound, tmp145
	movl	%eax, -24(%rbp)	# tmp145, x
	.loc 1 437 0
	movl	$0, -16(%rbp)	#, xDir
	.loc 1 438 0
	movq	-64(%rbp), %rax	# pps, tmp146
	movl	164(%rax), %eax	# pps_19(D)->slice_group_change_direction_flag, D.4908
	addl	%eax, %eax	# D.4904
	subl	$1, %eax	#, D.4904
	movl	%eax, -12(%rbp)	# D.4904, yDir
	jmp	.L64	#
.L63:
	.loc 1 441 0
	cmpl	$1, -16(%rbp)	#, xDir
	jne	.L65	#,
	.loc 1 441 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# x, tmp147
	cmpl	-32(%rbp), %eax	# rightBound, tmp147
	jne	.L65	#,
	.loc 1 443 0 is_stmt 1
	movq	-56(%rbp), %rax	# img, tmp148
	movl	72468(%rax), %eax	# img_22(D)->PicWidthInMbs, D.4904
	leal	-1(%rax), %edx	#, D.4905
	movl	-32(%rbp), %eax	# rightBound, tmp149
	addl	$1, %eax	#, D.4905
	cmpl	%eax, %edx	# D.4905, D.4905
	cmovle	%edx, %eax	# D.4905,, tmp150
	movl	%eax, -32(%rbp)	# tmp150, rightBound
	.loc 1 444 0
	movl	-32(%rbp), %eax	# rightBound, tmp151
	movl	%eax, -24(%rbp)	# tmp151, x
	.loc 1 445 0
	movl	$0, -16(%rbp)	#, xDir
	.loc 1 446 0
	movq	-64(%rbp), %rax	# pps, tmp152
	movl	164(%rax), %eax	# pps_19(D)->slice_group_change_direction_flag, D.4908
	leal	(%rax,%rax), %edx	#, D.4904
	movl	$1, %eax	#, tmp153
	subl	%edx, %eax	# D.4904, D.4904
	movl	%eax, -12(%rbp)	# D.4904, yDir
	jmp	.L64	#
.L65:
	.loc 1 449 0
	cmpl	$-1, -12(%rbp)	#, yDir
	jne	.L66	#,
	.loc 1 449 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# y, tmp154
	cmpl	-36(%rbp), %eax	# topBound, tmp154
	jne	.L66	#,
	.loc 1 451 0 is_stmt 1
	movl	-36(%rbp), %eax	# topBound, tmp155
	subl	$1, %eax	#, D.4905
	movl	$0, %edx	#, tmp157
	testl	%eax, %eax	# D.4905
	cmovs	%edx, %eax	# D.4905,, tmp157, tmp156
	movl	%eax, -36(%rbp)	# tmp156, topBound
	.loc 1 452 0
	movl	-36(%rbp), %eax	# topBound, tmp158
	movl	%eax, -20(%rbp)	# tmp158, y
	.loc 1 453 0
	movq	-64(%rbp), %rax	# pps, tmp159
	movl	164(%rax), %eax	# pps_19(D)->slice_group_change_direction_flag, D.4908
	leal	(%rax,%rax), %edx	#, D.4904
	movl	$1, %eax	#, tmp160
	subl	%edx, %eax	# D.4904, D.4904
	movl	%eax, -16(%rbp)	# D.4904, xDir
	.loc 1 454 0
	movl	$0, -12(%rbp)	#, yDir
	jmp	.L64	#
.L66:
	.loc 1 457 0
	cmpl	$1, -12(%rbp)	#, yDir
	jne	.L67	#,
	.loc 1 457 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# y, tmp161
	cmpl	-28(%rbp), %eax	# bottomBound, tmp161
	jne	.L67	#,
	.loc 1 459 0 is_stmt 1
	movq	-56(%rbp), %rax	# img, tmp162
	movl	72472(%rax), %eax	# img_22(D)->PicHeightInMapUnits, D.4904
	leal	-1(%rax), %edx	#, D.4905
	movl	-28(%rbp), %eax	# bottomBound, tmp163
	addl	$1, %eax	#, D.4905
	cmpl	%eax, %edx	# D.4905, D.4905
	cmovle	%edx, %eax	# D.4905,, tmp164
	movl	%eax, -28(%rbp)	# tmp164, bottomBound
	.loc 1 460 0
	movl	-28(%rbp), %eax	# bottomBound, tmp165
	movl	%eax, -20(%rbp)	# tmp165, y
	.loc 1 461 0
	movq	-64(%rbp), %rax	# pps, tmp166
	movl	164(%rax), %eax	# pps_19(D)->slice_group_change_direction_flag, D.4908
	addl	%eax, %eax	# D.4904
	subl	$1, %eax	#, D.4904
	movl	%eax, -16(%rbp)	# D.4904, xDir
	.loc 1 462 0
	movl	$0, -12(%rbp)	#, yDir
	jmp	.L64	#
.L67:
	.loc 1 466 0
	movl	-16(%rbp), %eax	# xDir, tmp167
	addl	%eax, -24(%rbp)	# tmp167, x
	.loc 1 467 0
	movl	-12(%rbp), %eax	# yDir, tmp168
	addl	%eax, -20(%rbp)	# tmp168, y
.L64:
	.loc 1 427 0
	movl	-4(%rbp), %eax	# mapUnitVacant, mapUnitVacant.43
	addl	%eax, -44(%rbp)	# mapUnitVacant.43, k
.L61:
	.loc 1 427 0 is_stmt 0 discriminator 1
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.44
	cmpl	%eax, -44(%rbp)	# PicSizeInMapUnits.44, k
	jb	.L68	#,
	.loc 1 471 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	FmoGenerateType3MapUnitMap, .-FmoGenerateType3MapUnitMap
	.type	FmoGenerateType4MapUnitMap, @function
FmoGenerateType4MapUnitMap:
.LFB10:
	.loc 1 485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# img, img
	movq	%rsi, -32(%rbp)	# pps, pps
	.loc 1 487 0
	movq	-32(%rbp), %rax	# pps, tmp80
	movl	168(%rax), %eax	# pps_3(D)->slice_group_change_rate_minus1, D.4911
	leal	1(%rax), %edx	#, D.4911
	movq	-24(%rbp), %rax	# img, tmp81
	movl	72652(%rax), %eax	# img_6(D)->slice_group_change_cycle, D.4912
	imull	%eax, %edx	# D.4911, D.4911
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.45
	cmpl	%eax, %edx	# PicSizeInMapUnits.45, D.4911
	cmovbe	%edx, %eax	# D.4911,, tmp82
	movl	%eax, -8(%rbp)	# tmp82, mapUnitsInSliceGroup0
	.loc 1 488 0
	movq	-32(%rbp), %rax	# pps, tmp83
	movl	164(%rax), %eax	# pps_3(D)->slice_group_change_direction_flag, D.4913
	testl	%eax, %eax	# D.4913
	je	.L70	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.47
	subl	-8(%rbp), %eax	# mapUnitsInSliceGroup0, iftmp.46
	jmp	.L71	#
.L70:
	.loc 1 488 0 discriminator 2
	movl	-8(%rbp), %eax	# mapUnitsInSliceGroup0, iftmp.46
.L71:
	.loc 1 488 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.46, sizeOfUpperLeftGroup
	.loc 1 492 0 is_stmt 1 discriminator 3
	movl	$0, -12(%rbp)	#, i
	jmp	.L72	#
.L75:
	.loc 1 493 0
	movl	-12(%rbp), %eax	# i, tmp84
	cmpl	-4(%rbp), %eax	# sizeOfUpperLeftGroup, tmp84
	jae	.L73	#,
	.loc 1 494 0
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.48
	movl	-12(%rbp), %eax	# i, D.4914
	addq	%rax, %rdx	# D.4914, D.4915
	movq	-32(%rbp), %rax	# pps, tmp85
	movl	164(%rax), %eax	# pps_3(D)->slice_group_change_direction_flag, D.4913
	movb	%al, (%rdx)	# D.4916, *_21
	jmp	.L74	#
.L73:
	.loc 1 496 0
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.49
	movl	-12(%rbp), %eax	# i, D.4914
	addq	%rax, %rdx	# D.4914, D.4915
	movq	-32(%rbp), %rax	# pps, tmp86
	movl	164(%rax), %eax	# pps_3(D)->slice_group_change_direction_flag, D.4913
	movl	$1, %ecx	#, tmp87
	subl	%eax, %ecx	# D.4916, D.4916
	movl	%ecx, %eax	# D.4916, D.4916
	movb	%al, (%rdx)	# D.4916, *_26
.L74:
	.loc 1 492 0
	addl	$1, -12(%rbp)	#, i
.L72:
	.loc 1 492 0 is_stmt 0 discriminator 1
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.50
	cmpl	%eax, -12(%rbp)	# PicSizeInMapUnits.50, i
	jb	.L75	#,
	.loc 1 498 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	FmoGenerateType4MapUnitMap, .-FmoGenerateType4MapUnitMap
	.type	FmoGenerateType5MapUnitMap, @function
FmoGenerateType5MapUnitMap:
.LFB11:
	.loc 1 512 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# img, img
	movq	%rsi, -48(%rbp)	# pps, pps
	.loc 1 514 0
	movq	-48(%rbp), %rax	# pps, tmp88
	movl	168(%rax), %eax	# pps_6(D)->slice_group_change_rate_minus1, D.4917
	leal	1(%rax), %edx	#, D.4917
	movq	-40(%rbp), %rax	# img, tmp89
	movl	72652(%rax), %eax	# img_9(D)->slice_group_change_cycle, D.4918
	imull	%eax, %edx	# D.4917, D.4917
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.51
	cmpl	%eax, %edx	# PicSizeInMapUnits.51, D.4917
	cmovbe	%edx, %eax	# D.4917,, tmp90
	movl	%eax, -8(%rbp)	# tmp90, mapUnitsInSliceGroup0
	.loc 1 515 0
	movq	-48(%rbp), %rax	# pps, tmp91
	movl	164(%rax), %eax	# pps_6(D)->slice_group_change_direction_flag, D.4919
	testl	%eax, %eax	# D.4919
	je	.L77	#,
	.loc 1 515 0 is_stmt 0 discriminator 1
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.53
	subl	-8(%rbp), %eax	# mapUnitsInSliceGroup0, iftmp.52
	jmp	.L78	#
.L77:
	.loc 1 515 0 discriminator 2
	movl	-8(%rbp), %eax	# mapUnitsInSliceGroup0, iftmp.52
.L78:
	.loc 1 515 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.52, sizeOfUpperLeftGroup
	.loc 1 517 0 is_stmt 1 discriminator 3
	movl	$0, -12(%rbp)	#, k
	.loc 1 519 0 discriminator 3
	movl	$0, -16(%rbp)	#, j
	jmp	.L79	#
.L84:
	.loc 1 520 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L80	#
.L83:
	.loc 1 521 0
	movl	-12(%rbp), %eax	# k, k.54
	leal	1(%rax), %edx	#, tmp92
	movl	%edx, -12(%rbp)	# tmp92, k
	cmpl	-4(%rbp), %eax	# sizeOfUpperLeftGroup, k.54
	jae	.L81	#,
	.loc 1 522 0
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.55
	movq	-40(%rbp), %rax	# img, tmp93
	movl	72468(%rax), %eax	# img_9(D)->PicWidthInMbs, D.4917
	imull	-20(%rbp), %eax	# i, D.4917
	movl	%eax, %ecx	# D.4917, D.4917
	movl	-16(%rbp), %eax	# j, tmp94
	addl	%ecx, %eax	# D.4917, D.4917
	movl	%eax, %eax	# D.4917, D.4920
	addq	%rax, %rdx	# D.4920, D.4921
	movq	-48(%rbp), %rax	# pps, tmp95
	movl	164(%rax), %eax	# pps_6(D)->slice_group_change_direction_flag, D.4919
	movl	$1, %ecx	#, tmp96
	subl	%eax, %ecx	# D.4922, D.4922
	movl	%ecx, %eax	# D.4922, D.4922
	movb	%al, (%rdx)	# D.4922, *_32
	jmp	.L82	#
.L81:
	.loc 1 524 0
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.56
	movq	-40(%rbp), %rax	# img, tmp97
	movl	72468(%rax), %eax	# img_9(D)->PicWidthInMbs, D.4917
	imull	-20(%rbp), %eax	# i, D.4917
	movl	%eax, %ecx	# D.4917, D.4917
	movl	-16(%rbp), %eax	# j, tmp98
	addl	%ecx, %eax	# D.4917, D.4917
	movl	%eax, %eax	# D.4917, D.4920
	addq	%rax, %rdx	# D.4920, D.4921
	movq	-48(%rbp), %rax	# pps, tmp99
	movl	164(%rax), %eax	# pps_6(D)->slice_group_change_direction_flag, D.4919
	movb	%al, (%rdx)	# D.4922, *_41
.L82:
	.loc 1 520 0
	addl	$1, -20(%rbp)	#, i
.L80:
	.loc 1 520 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# img, tmp100
	movl	72472(%rax), %eax	# img_9(D)->PicHeightInMapUnits, D.4917
	cmpl	-20(%rbp), %eax	# i, D.4917
	ja	.L83	#,
	.loc 1 519 0 is_stmt 1
	addl	$1, -16(%rbp)	#, j
.L79:
	.loc 1 519 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# img, tmp101
	movl	72468(%rax), %eax	# img_9(D)->PicWidthInMbs, D.4917
	cmpl	-16(%rbp), %eax	# j, D.4917
	ja	.L84	#,
	.loc 1 526 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	FmoGenerateType5MapUnitMap, .-FmoGenerateType5MapUnitMap
	.type	FmoGenerateType6MapUnitMap, @function
FmoGenerateType6MapUnitMap:
.LFB12:
	.loc 1 540 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# img, img
	movq	%rsi, -32(%rbp)	# pps, pps
	.loc 1 542 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L86	#
.L87:
	.loc 1 544 0 discriminator 2
	movq	MapUnitToSliceGroupMap(%rip), %rdx	# MapUnitToSliceGroupMap, MapUnitToSliceGroupMap.57
	movl	-4(%rbp), %eax	# i, D.4923
	addq	%rax, %rdx	# D.4923, D.4924
	movq	-32(%rbp), %rax	# pps, tmp67
	movq	176(%rax), %rcx	# pps_7(D)->slice_group_id, D.4924
	movl	-4(%rbp), %eax	# i, D.4923
	addq	%rcx, %rax	# D.4924, D.4924
	movzbl	(%rax), %eax	# *_10, D.4925
	movb	%al, (%rdx)	# D.4925, *_6
	.loc 1 542 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L86:
	.loc 1 542 0 is_stmt 0 discriminator 1
	movl	PicSizeInMapUnits(%rip), %eax	# PicSizeInMapUnits, PicSizeInMapUnits.58
	cmpl	%eax, -4(%rbp)	# PicSizeInMapUnits.58, i
	jb	.L87	#,
	.loc 1 546 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	FmoGenerateType6MapUnitMap, .-FmoGenerateType6MapUnitMap
	.globl	FmoStartPicture
	.type	FmoStartPicture, @function
FmoStartPicture:
.LFB13:
	.loc 1 558 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 563 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L89	#
.L90:
	.loc 1 564 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp62
	movl	%eax, %edi	# tmp62,
	call	FmoGetFirstMBOfSliceGroup	#
	movl	-4(%rbp), %edx	# i, tmp64
	movslq	%edx, %rdx	# tmp64, tmp63
	movl	%eax, FirstMBInSlice(,%rdx,4)	# D.4926, FirstMBInSlice
	.loc 1 563 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L89:
	.loc 1 563 0 is_stmt 0 discriminator 1
	cmpl	$7, -4(%rbp)	#, i
	jle	.L90	#,
	.loc 1 565 0 is_stmt 1
	movl	$0, %eax	#, D.4926
	.loc 1 566 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	FmoStartPicture, .-FmoStartPicture
	.globl	FmoEndPicture
	.type	FmoEndPicture, @function
FmoEndPicture:
.LFB14:
	.loc 1 581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 583 0
	movl	$0, %eax	#, D.4927
	.loc 1 584 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	FmoEndPicture, .-FmoEndPicture
	.globl	FmoMB2SliceGroup
	.type	FmoMB2SliceGroup, @function
FmoMB2SliceGroup:
.LFB15:
	.loc 1 597 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# mb, mb
	.loc 1 600 0
	movq	MBAmap(%rip), %rdx	# MBAmap, MBAmap.59
	movl	-4(%rbp), %eax	# mb, tmp65
	cltq
	addq	%rdx, %rax	# MBAmap.59, D.4929
	movzbl	(%rax), %eax	# *_4, D.4930
	movzbl	%al, %eax	# D.4930, D.4931
	.loc 1 601 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	FmoMB2SliceGroup, .-FmoMB2SliceGroup
	.globl	FmoGetNextMBNr
	.type	FmoGetNextMBNr, @function
FmoGetNextMBNr:
.LFB16:
	.loc 1 614 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# CurrentMbNr, CurrentMbNr
	.loc 1 616 0
	movl	-20(%rbp), %eax	# CurrentMbNr, tmp72
	movl	%eax, %edi	# tmp72,
	call	FmoMB2SliceGroup	#
	movl	%eax, -4(%rbp)	# tmp73, SliceGroupID
.L98:
	.loc 1 618 0 discriminator 1
	addl	$1, -20(%rbp)	#, CurrentMbNr
	movq	img(%rip), %rax	# img, img.60
	movl	72484(%rax), %eax	# img.60_6->PicSizeInMbs, D.4933
	cmpl	%eax, -20(%rbp)	# D.4932, CurrentMbNr
	jge	.L97	#,
	.loc 1 618 0 is_stmt 0 discriminator 2
	movq	MBAmap(%rip), %rdx	# MBAmap, MBAmap.61
	movl	-20(%rbp), %eax	# CurrentMbNr, tmp74
	cltq
	addq	%rdx, %rax	# MBAmap.61, D.4935
	movzbl	(%rax), %eax	# *_11, D.4936
	movzbl	%al, %eax	# D.4936, D.4932
	cmpl	-4(%rbp), %eax	# SliceGroupID, D.4932
	jne	.L98	#,
.L97:
	.loc 1 621 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.62
	movl	72484(%rax), %eax	# img.62_14->PicSizeInMbs, D.4933
	cmpl	-20(%rbp), %eax	# CurrentMbNr, D.4932
	jg	.L99	#,
	.loc 1 622 0
	movl	$-1, %eax	#, D.4932
	jmp	.L100	#
.L99:
	.loc 1 624 0
	movl	-20(%rbp), %eax	# CurrentMbNr, D.4932
.L100:
	.loc 1 625 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	FmoGetNextMBNr, .-FmoGetNextMBNr
	.globl	FmoGetPreviousMBNr
	.type	FmoGetPreviousMBNr, @function
FmoGetPreviousMBNr:
.LFB17:
	.loc 1 639 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# CurrentMbNr, CurrentMbNr
	.loc 1 641 0
	movl	-20(%rbp), %eax	# CurrentMbNr, tmp66
	movl	%eax, %edi	# tmp66,
	call	FmoMB2SliceGroup	#
	movl	%eax, -4(%rbp)	# tmp67, SliceGroupID
	.loc 1 642 0
	subl	$1, -20(%rbp)	#, CurrentMbNr
	.loc 1 643 0
	jmp	.L102	#
.L104:
	.loc 1 644 0
	subl	$1, -20(%rbp)	#, CurrentMbNr
.L102:
	.loc 1 643 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, CurrentMbNr
	js	.L103	#,
	.loc 1 643 0 is_stmt 0 discriminator 2
	movq	MBAmap(%rip), %rdx	# MBAmap, MBAmap.63
	movl	-20(%rbp), %eax	# CurrentMbNr, tmp68
	cltq
	addq	%rdx, %rax	# MBAmap.63, D.4939
	movzbl	(%rax), %eax	# *_8, D.4940
	movzbl	%al, %eax	# D.4940, D.4937
	cmpl	-4(%rbp), %eax	# SliceGroupID, D.4937
	jne	.L104	#,
.L103:
	.loc 1 646 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, CurrentMbNr
	jns	.L105	#,
	.loc 1 647 0
	movl	$-1, %eax	#, D.4937
	jmp	.L106	#
.L105:
	.loc 1 649 0
	movl	-20(%rbp), %eax	# CurrentMbNr, D.4937
.L106:
	.loc 1 650 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	FmoGetPreviousMBNr, .-FmoGetPreviousMBNr
	.globl	FmoGetFirstMBOfSliceGroup
	.type	FmoGetFirstMBOfSliceGroup, @function
FmoGetFirstMBOfSliceGroup:
.LFB18:
	.loc 1 664 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# SliceGroupID, SliceGroupID
	.loc 1 665 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 666 0
	jmp	.L108	#
.L110:
	.loc 1 667 0
	addl	$1, -4(%rbp)	#, i
.L108:
	.loc 1 666 0 discriminator 1
	movq	img(%rip), %rax	# img, img.64
	movl	72484(%rax), %eax	# img.64_4->PicSizeInMbs, D.4942
	cmpl	-4(%rbp), %eax	# i, D.4941
	jle	.L109	#,
	.loc 1 666 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp68
	movl	%eax, %edi	# tmp68,
	call	FmoMB2SliceGroup	#
	cmpl	-20(%rbp), %eax	# SliceGroupID, D.4941
	jne	.L110	#,
.L109:
	.loc 1 669 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.65
	movl	72484(%rax), %eax	# img.65_10->PicSizeInMbs, D.4942
	cmpl	-4(%rbp), %eax	# i, D.4941
	jle	.L111	#,
	.loc 1 670 0
	movl	-4(%rbp), %eax	# i, D.4941
	jmp	.L112	#
.L111:
	.loc 1 672 0
	movl	$-1, %eax	#, D.4941
.L112:
	.loc 1 673 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	FmoGetFirstMBOfSliceGroup, .-FmoGetFirstMBOfSliceGroup
	.globl	FmoGetLastCodedMBOfSliceGroup
	.type	FmoGetLastCodedMBOfSliceGroup, @function
FmoGetLastCodedMBOfSliceGroup:
.LFB19:
	.loc 1 690 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# SliceGroupID, SliceGroupID
	.loc 1 692 0
	movl	$-1, -4(%rbp)	#, LastMB
	.loc 1 694 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L114	#
.L116:
	.loc 1 695 0
	movl	-8(%rbp), %eax	# i, tmp65
	movl	%eax, %edi	# tmp65,
	call	FmoMB2SliceGroup	#
	cmpl	-20(%rbp), %eax	# SliceGroupID, D.4944
	jne	.L115	#,
	.loc 1 696 0
	movl	-8(%rbp), %eax	# i, tmp66
	movl	%eax, -4(%rbp)	# tmp66, LastMB
.L115:
	.loc 1 694 0
	addl	$1, -8(%rbp)	#, i
.L114:
	.loc 1 694 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.66
	movl	72484(%rax), %eax	# img.66_6->PicSizeInMbs, D.4943
	cmpl	-8(%rbp), %eax	# i, D.4944
	jg	.L116	#,
	.loc 1 697 0 is_stmt 1
	movl	-4(%rbp), %eax	# LastMB, D.4944
	.loc 1 698 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	FmoGetLastCodedMBOfSliceGroup, .-FmoGetLastCodedMBOfSliceGroup
	.globl	FmoSetLastMacroblockInSlice
	.type	FmoSetLastMacroblockInSlice, @function
FmoSetLastMacroblockInSlice:
.LFB20:
	.loc 1 702 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# mb, mb
	.loc 1 707 0
	movl	-20(%rbp), %eax	# mb, tmp59
	movl	%eax, %edi	# tmp59,
	call	FmoMB2SliceGroup	#
	movl	%eax, -4(%rbp)	# tmp60, currSliceGroup
	.loc 1 709 0
	movl	-20(%rbp), %eax	# mb, tmp61
	movl	%eax, %edi	# tmp61,
	call	FmoGetNextMBNr	#
	movl	%eax, -20(%rbp)	# tmp62, mb
	.loc 1 710 0
	movl	-4(%rbp), %eax	# currSliceGroup, tmp64
	cltq
	movl	-20(%rbp), %edx	# mb, tmp65
	movl	%edx, FirstMBInSlice(,%rax,4)	# tmp65, FirstMBInSlice
	.loc 1 711 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	FmoSetLastMacroblockInSlice, .-FmoSetLastMacroblockInSlice
	.globl	FmoGetFirstMacroblockInSlice
	.type	FmoGetFirstMacroblockInSlice, @function
FmoGetFirstMacroblockInSlice:
.LFB21:
	.loc 1 714 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# SliceGroup, SliceGroup
	.loc 1 715 0
	movl	-4(%rbp), %eax	# SliceGroup, tmp62
	cltq
	movl	FirstMBInSlice(,%rax,4), %eax	# FirstMBInSlice, D.4945
	.loc 1 718 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	FmoGetFirstMacroblockInSlice, .-FmoGetFirstMacroblockInSlice
	.globl	FmoSliceGroupCompletelyCoded
	.type	FmoSliceGroupCompletelyCoded, @function
FmoSliceGroupCompletelyCoded:
.LFB22:
	.loc 1 722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movl	%edi, -4(%rbp)	# SliceGroupID, SliceGroupID
	.loc 1 723 0
	movl	-4(%rbp), %eax	# SliceGroupID, tmp62
	movl	%eax, %edi	# tmp62,
	call	FmoGetFirstMacroblockInSlice	#
	testl	%eax, %eax	# D.4946
	jns	.L122	#,
	.loc 1 724 0
	movl	$1, %eax	#, D.4946
	jmp	.L123	#
.L122:
	.loc 1 726 0
	movl	$0, %eax	#, D.4946
.L123:
	.loc 1 727 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	FmoSliceGroupCompletelyCoded, .-FmoSliceGroupCompletelyCoded
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x23cf
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF477
	.byte	0x1
	.long	.LASF478
	.long	.LASF479
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
	.byte	0x9b
	.long	0x6de
	.uleb128 0x9
	.long	.LASF127
	.sleb128 0
	.uleb128 0x9
	.long	.LASF128
	.sleb128 1
	.uleb128 0x9
	.long	.LASF129
	.sleb128 2
	.uleb128 0x9
	.long	.LASF130
	.sleb128 3
	.uleb128 0x9
	.long	.LASF131
	.sleb128 4
	.uleb128 0x9
	.long	.LASF132
	.sleb128 5
	.uleb128 0x9
	.long	.LASF133
	.sleb128 6
	.uleb128 0x9
	.long	.LASF134
	.sleb128 7
	.uleb128 0x9
	.long	.LASF135
	.sleb128 8
	.byte	0
	.uleb128 0xd
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x7ce
	.uleb128 0xb
	.long	.LASF136
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF137
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF138
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF139
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF140
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF141
	.byte	0x5
	.byte	0xd5
	.long	0x4ac
	.byte	0x18
	.uleb128 0xb
	.long	.LASF142
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF143
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF144
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF145
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF146
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF147
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF148
	.byte	0x5
	.byte	0xdd
	.long	0x4ac
	.byte	0x40
	.uleb128 0xb
	.long	.LASF149
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
	.long	.LASF150
	.byte	0x5
	.byte	0xe2
	.long	0x6de
	.uleb128 0x7
	.long	.LASF151
	.byte	0x5
	.byte	0xe4
	.long	0x7e4
	.uleb128 0x6
	.byte	0x8
	.long	0x7ce
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x817
	.uleb128 0xb
	.long	.LASF152
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
	.long	.LASF153
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF154
	.byte	0x5
	.byte	0xee
	.long	0x7ea
	.uleb128 0xf
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x88e
	.uleb128 0x10
	.long	.LASF155
	.byte	0x5
	.value	0x104
	.long	0x88e
	.byte	0
	.uleb128 0x11
	.long	.LASF156
	.byte	0x5
	.value	0x105
	.long	0x8a4
	.value	0x210
	.uleb128 0x11
	.long	.LASF157
	.byte	0x5
	.value	0x106
	.long	0x8ba
	.value	0x330
	.uleb128 0x11
	.long	.LASF158
	.byte	0x5
	.value	0x107
	.long	0x8d0
	.value	0x470
	.uleb128 0x11
	.long	.LASF159
	.byte	0x5
	.value	0x108
	.long	0x8e6
	.value	0x530
	.uleb128 0x11
	.long	.LASF160
	.byte	0x5
	.value	0x109
	.long	0x8e6
	.value	0x570
	.uleb128 0x11
	.long	.LASF161
	.byte	0x5
	.value	0x10a
	.long	0x8f6
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x8a4
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x8ba
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x8d0
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x8e6
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x8f6
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x906
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF162
	.byte	0x5
	.value	0x10c
	.long	0x822
	.uleb128 0xf
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x9a6
	.uleb128 0x10
	.long	.LASF163
	.byte	0x5
	.value	0x11b
	.long	0x9a6
	.byte	0
	.uleb128 0x10
	.long	.LASF164
	.byte	0x5
	.value	0x11c
	.long	0x8e6
	.byte	0x20
	.uleb128 0x10
	.long	.LASF165
	.byte	0x5
	.value	0x11d
	.long	0x9b6
	.byte	0x60
	.uleb128 0x11
	.long	.LASF166
	.byte	0x5
	.value	0x11e
	.long	0x9cc
	.value	0x120
	.uleb128 0x11
	.long	.LASF167
	.byte	0x5
	.value	0x11f
	.long	0x9e2
	.value	0x3a0
	.uleb128 0x11
	.long	.LASF168
	.byte	0x5
	.value	0x120
	.long	0x9e2
	.value	0xd00
	.uleb128 0x11
	.long	.LASF169
	.byte	0x5
	.value	0x121
	.long	0x9f8
	.value	0x1660
	.uleb128 0x11
	.long	.LASF170
	.byte	0x5
	.value	0x122
	.long	0x9f8
	.value	0x1980
	.uleb128 0x11
	.long	.LASF171
	.byte	0x5
	.value	0x123
	.long	0x9e2
	.value	0x1ca0
	.uleb128 0x11
	.long	.LASF172
	.byte	0x5
	.value	0x124
	.long	0x9e2
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x9b6
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x9cc
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x9e2
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0x9f8
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x817
	.long	0xa0e
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF173
	.byte	0x5
	.value	0x125
	.long	0x912
	.uleb128 0x13
	.long	.LASF178
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0xa4f
	.uleb128 0x10
	.long	.LASF174
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF175
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF176
	.byte	0x5
	.value	0x138
	.long	0xa4f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa1a
	.uleb128 0x12
	.long	.LASF177
	.byte	0x5
	.value	0x139
	.long	0xa1a
	.uleb128 0x13
	.long	.LASF179
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0xabd
	.uleb128 0x10
	.long	.LASF180
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF181
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF182
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0x10
	.long	.LASF183
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.long	.LASF184
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF176
	.byte	0x5
	.value	0x143
	.long	0xabd
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa61
	.uleb128 0x12
	.long	.LASF185
	.byte	0x5
	.value	0x144
	.long	0xa61
	.uleb128 0x13
	.long	.LASF186
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0xb5d
	.uleb128 0x10
	.long	.LASF187
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF188
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF189
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
	.long	.LASF190
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0x10
	.long	.LASF191
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
	.long	.LASF192
	.byte	0x5
	.value	0x158
	.long	0xb77
	.byte	0x20
	.uleb128 0x10
	.long	.LASF193
	.byte	0x5
	.value	0x15a
	.long	0xb93
	.byte	0x28
	.byte	0
	.uleb128 0x15
	.long	0xb77
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
	.long	0xb5d
	.uleb128 0x15
	.long	0xb8d
	.uleb128 0x16
	.long	0xb8d
	.uleb128 0x16
	.long	0x7d9
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xacf
	.uleb128 0x6
	.byte	0x8
	.long	0xb7d
	.uleb128 0x12
	.long	.LASF194
	.byte	0x5
	.value	0x15c
	.long	0xacf
	.uleb128 0x17
	.long	.LASF195
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0xe1f
	.uleb128 0x10
	.long	.LASF196
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF197
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF198
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
	.long	.LASF199
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF200
	.byte	0x5
	.value	0x166
	.long	0x48c
	.byte	0x14
	.uleb128 0x10
	.long	.LASF201
	.byte	0x5
	.value	0x168
	.long	0xe1f
	.byte	0x38
	.uleb128 0x10
	.long	.LASF202
	.byte	0x5
	.value	0x169
	.long	0xe1f
	.byte	0x40
	.uleb128 0x10
	.long	.LASF203
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x14
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0xe25
	.byte	0x4c
	.uleb128 0x11
	.long	.LASF204
	.byte	0x5
	.value	0x16d
	.long	0xe47
	.value	0x14c
	.uleb128 0x11
	.long	.LASF205
	.byte	0x5
	.value	0x16e
	.long	0xe47
	.value	0x18c
	.uleb128 0x18
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0x11
	.long	.LASF206
	.byte	0x5
	.value	0x170
	.long	0x694
	.value	0x1d0
	.uleb128 0x11
	.long	.LASF207
	.byte	0x5
	.value	0x171
	.long	0xe57
	.value	0x1d8
	.uleb128 0x11
	.long	.LASF208
	.byte	0x5
	.value	0x172
	.long	0xe57
	.value	0x1e8
	.uleb128 0x11
	.long	.LASF209
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0x11
	.long	.LASF210
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0x11
	.long	.LASF211
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0x11
	.long	.LASF212
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0x11
	.long	.LASF213
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0x11
	.long	.LASF214
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0x11
	.long	.LASF215
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0x11
	.long	.LASF216
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0x11
	.long	.LASF217
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0x11
	.long	.LASF218
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0x11
	.long	.LASF219
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0x11
	.long	.LASF220
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0x11
	.long	.LASF221
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0x11
	.long	.LASF222
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0x11
	.long	.LASF223
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0x11
	.long	.LASF224
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0x11
	.long	.LASF225
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0x11
	.long	.LASF226
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0x11
	.long	.LASF227
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0x11
	.long	.LASF228
	.byte	0x5
	.value	0x18a
	.long	0xe67
	.value	0x248
	.uleb128 0x11
	.long	.LASF229
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0x11
	.long	.LASF230
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0x11
	.long	.LASF231
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0x11
	.long	.LASF232
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0x11
	.long	.LASF233
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0x11
	.long	.LASF234
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0x11
	.long	.LASF235
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0x11
	.long	.LASF236
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0x11
	.long	.LASF237
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xba5
	.uleb128 0x4
	.long	0x34
	.long	0xe47
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
	.long	0xe57
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xe67
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF238
	.uleb128 0x12
	.long	.LASF239
	.byte	0x5
	.value	0x196
	.long	0xba5
	.uleb128 0x19
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0xf13
	.uleb128 0x10
	.long	.LASF240
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF241
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF242
	.byte	0x5
	.value	0x19f
	.long	0xa2
	.byte	0x8
	.uleb128 0x10
	.long	.LASF243
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.long	.LASF244
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF245
	.byte	0x5
	.value	0x1a2
	.long	0xa2
	.byte	0x14
	.uleb128 0x10
	.long	.LASF246
	.byte	0x5
	.value	0x1a4
	.long	0xa2
	.byte	0x15
	.uleb128 0x10
	.long	.LASF247
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0x10
	.long	.LASF248
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF249
	.byte	0x5
	.value	0x1a8
	.long	0x4ac
	.byte	0x20
	.uleb128 0x10
	.long	.LASF250
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x12
	.long	.LASF251
	.byte	0x5
	.value	0x1ab
	.long	0xe7a
	.uleb128 0x13
	.long	.LASF252
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xf54
	.uleb128 0x10
	.long	.LASF253
	.byte	0x5
	.value	0x1b1
	.long	0xf54
	.byte	0
	.uleb128 0x10
	.long	.LASF254
	.byte	0x5
	.value	0x1b2
	.long	0x7ce
	.byte	0x8
	.uleb128 0x10
	.long	.LASF255
	.byte	0x5
	.value	0x1b4
	.long	0xf7a
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf13
	.uleb128 0x1a
	.long	0x34
	.long	0xf6e
	.uleb128 0x16
	.long	0xf6e
	.uleb128 0x16
	.long	0xf74
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb99
	.uleb128 0x6
	.byte	0x8
	.long	0xf1f
	.uleb128 0x6
	.byte	0x8
	.long	0xf5a
	.uleb128 0x12
	.long	.LASF256
	.byte	0x5
	.value	0x1b8
	.long	0xf1f
	.uleb128 0x19
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0x1099
	.uleb128 0x10
	.long	.LASF257
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
	.long	.LASF258
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0x10
	.long	.LASF259
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.long	.LASF260
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF261
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0x10
	.long	.LASF262
	.byte	0x5
	.value	0x1c3
	.long	0x1099
	.byte	0x18
	.uleb128 0x10
	.long	.LASF263
	.byte	0x5
	.value	0x1c4
	.long	0x109f
	.byte	0x20
	.uleb128 0x10
	.long	.LASF264
	.byte	0x5
	.value	0x1c5
	.long	0x10a5
	.byte	0x28
	.uleb128 0x10
	.long	.LASF265
	.byte	0x5
	.value	0x1c8
	.long	0x10ab
	.byte	0x30
	.uleb128 0x10
	.long	.LASF266
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0x10
	.long	.LASF267
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0x10
	.long	.LASF268
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0x10
	.long	.LASF269
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0x10
	.long	.LASF270
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0x10
	.long	.LASF271
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0x10
	.long	.LASF272
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0x10
	.long	.LASF273
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0x10
	.long	.LASF274
	.byte	0x5
	.value	0x1d3
	.long	0x10c0
	.byte	0x78
	.uleb128 0x10
	.long	.LASF275
	.byte	0x5
	.value	0x1d5
	.long	0x10c6
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf80
	.uleb128 0x6
	.byte	0x8
	.long	0x906
	.uleb128 0x6
	.byte	0x8
	.long	0xa0e
	.uleb128 0x6
	.byte	0x8
	.long	0xa55
	.uleb128 0x1a
	.long	0xc2
	.long	0x10c0
	.uleb128 0x16
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10b1
	.uleb128 0x4
	.long	0x34
	.long	0x10dc
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF276
	.byte	0x5
	.value	0x1d7
	.long	0xf8c
	.uleb128 0xf
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0x1152
	.uleb128 0x10
	.long	.LASF277
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0x10
	.long	.LASF278
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0x10
	.long	.LASF279
	.byte	0x5
	.value	0x1df
	.long	0x1152
	.byte	0x8
	.uleb128 0x11
	.long	.LASF280
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0x11
	.long	.LASF281
	.byte	0x5
	.value	0x1e1
	.long	0x1168
	.value	0x32c
	.uleb128 0x11
	.long	.LASF282
	.byte	0x5
	.value	0x1e2
	.long	0x1168
	.value	0x330
	.uleb128 0x11
	.long	.LASF283
	.byte	0x5
	.value	0x1e3
	.long	0x1168
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0x1162
	.long	0x1162
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10dc
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF284
	.uleb128 0x12
	.long	.LASF285
	.byte	0x5
	.value	0x1e4
	.long	0x10e8
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x1b
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x1b66
	.uleb128 0x10
	.long	.LASF286
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
	.long	.LASF287
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0x10
	.long	.LASF288
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0x10
	.long	.LASF289
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0x10
	.long	.LASF290
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0x10
	.long	.LASF187
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0x10
	.long	.LASF291
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
	.long	.LASF292
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
	.long	.LASF199
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0x10
	.long	.LASF293
	.byte	0x5
	.value	0x372
	.long	0x1168
	.byte	0x30
	.uleb128 0x10
	.long	.LASF294
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0x10
	.long	.LASF295
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0x10
	.long	.LASF296
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF297
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0x10
	.long	.LASF298
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0x10
	.long	.LASF299
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0x10
	.long	.LASF300
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0x10
	.long	.LASF301
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0x10
	.long	.LASF302
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0x10
	.long	.LASF303
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0x10
	.long	.LASF304
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0x10
	.long	.LASF305
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0x10
	.long	.LASF306
	.byte	0x5
	.value	0x37f
	.long	0x117b
	.byte	0x68
	.uleb128 0x10
	.long	.LASF307
	.byte	0x5
	.value	0x380
	.long	0x117b
	.byte	0x70
	.uleb128 0x10
	.long	.LASF308
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0x10
	.long	.LASF309
	.byte	0x5
	.value	0x383
	.long	0x1b66
	.byte	0x80
	.uleb128 0x10
	.long	.LASF310
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0x10
	.long	.LASF311
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0x10
	.long	.LASF312
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0x10
	.long	.LASF313
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0x10
	.long	.LASF314
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0x10
	.long	.LASF315
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0x10
	.long	.LASF316
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF317
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0x10
	.long	.LASF318
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF319
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0x10
	.long	.LASF320
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF321
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0x10
	.long	.LASF322
	.byte	0x5
	.value	0x395
	.long	0x1b6c
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF323
	.byte	0x5
	.value	0x397
	.long	0x1b88
	.value	0x12b8
	.uleb128 0x11
	.long	.LASF324
	.byte	0x5
	.value	0x398
	.long	0x1ba4
	.value	0x1cb8
	.uleb128 0x11
	.long	.LASF325
	.byte	0x5
	.value	0x399
	.long	0x1bc0
	.value	0x2138
	.uleb128 0x18
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x1be2
	.value	0x3138
	.uleb128 0x18
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x1bf8
	.value	0x3338
	.uleb128 0x11
	.long	.LASF326
	.byte	0x5
	.value	0x39d
	.long	0x1c0e
	.value	0x3738
	.uleb128 0x11
	.long	.LASF327
	.byte	0x5
	.value	0x39e
	.long	0x1b66
	.value	0x3740
	.uleb128 0x11
	.long	.LASF328
	.byte	0x5
	.value	0x3a0
	.long	0x1c14
	.value	0x3748
	.uleb128 0x11
	.long	.LASF329
	.byte	0x5
	.value	0x3a1
	.long	0x1162
	.value	0x3750
	.uleb128 0x11
	.long	.LASF330
	.byte	0x5
	.value	0x3a2
	.long	0x1c1a
	.value	0x3758
	.uleb128 0x11
	.long	.LASF331
	.byte	0x5
	.value	0x3a3
	.long	0x1c20
	.value	0x3760
	.uleb128 0x1c
	.long	.LASF332
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1c
	.long	.LASF333
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1d
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1c
	.long	.LASF334
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1c
	.long	.LASF335
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1c
	.long	.LASF336
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1c
	.long	.LASF337
	.byte	0x5
	.value	0x3ac
	.long	0x1c31
	.long	0x11880
	.uleb128 0x1c
	.long	.LASF338
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1c
	.long	.LASF339
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1c
	.long	.LASF340
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1c
	.long	.LASF341
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1c
	.long	.LASF342
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1c
	.long	.LASF343
	.byte	0x5
	.value	0x3b4
	.long	0xe67
	.long	0x118d8
	.uleb128 0x1c
	.long	.LASF344
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1c
	.long	.LASF345
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1c
	.long	.LASF346
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1c
	.long	.LASF347
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1c
	.long	.LASF348
	.byte	0x5
	.value	0x3ba
	.long	0x1c47
	.long	0x118f0
	.uleb128 0x1c
	.long	.LASF349
	.byte	0x5
	.value	0x3bb
	.long	0x1c47
	.long	0x118f8
	.uleb128 0x1c
	.long	.LASF350
	.byte	0x5
	.value	0x3bd
	.long	0x1c47
	.long	0x11900
	.uleb128 0x1c
	.long	.LASF351
	.byte	0x5
	.value	0x3be
	.long	0x1c47
	.long	0x11908
	.uleb128 0x1c
	.long	.LASF227
	.byte	0x5
	.value	0x3bf
	.long	0x1c6b
	.long	0x11910
	.uleb128 0x1c
	.long	.LASF234
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1c
	.long	.LASF235
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1c
	.long	.LASF236
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1c
	.long	.LASF352
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1c
	.long	.LASF353
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1c
	.long	.LASF354
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1c
	.long	.LASF355
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1c
	.long	.LASF356
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1c
	.long	.LASF357
	.byte	0x5
	.value	0x3ce
	.long	0x1c7b
	.long	0x11950
	.uleb128 0x1c
	.long	.LASF358
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1c
	.long	.LASF359
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1c
	.long	.LASF360
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1c
	.long	.LASF361
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1c
	.long	.LASF362
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1c
	.long	.LASF363
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1c
	.long	.LASF364
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1c
	.long	.LASF104
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1c
	.long	.LASF106
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1c
	.long	.LASF108
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x5
	.value	0x3e4
	.long	0x1c91
	.long	0x11ae8
	.uleb128 0x1c
	.long	.LASF365
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1c
	.long	.LASF366
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1c
	.long	.LASF367
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1c
	.long	.LASF368
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1c
	.long	.LASF369
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1c
	.long	.LASF370
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1c
	.long	.LASF371
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1c
	.long	.LASF372
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1c
	.long	.LASF373
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1c
	.long	.LASF374
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1c
	.long	.LASF375
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1c
	.long	.LASF376
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1c
	.long	.LASF377
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1c
	.long	.LASF378
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1c
	.long	.LASF379
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1c
	.long	.LASF380
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1c
	.long	.LASF381
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1c
	.long	.LASF382
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1c
	.long	.LASF383
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1c
	.long	.LASF384
	.byte	0x5
	.value	0x409
	.long	0x1ca1
	.long	0x11b40
	.uleb128 0x1c
	.long	.LASF385
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1c
	.long	.LASF386
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1c
	.long	.LASF387
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1c
	.long	.LASF388
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1c
	.long	.LASF389
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1c
	.long	.LASF390
	.byte	0x5
	.value	0x413
	.long	0xe67
	.long	0x11b60
	.uleb128 0x1c
	.long	.LASF391
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1c
	.long	.LASF392
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1c
	.long	.LASF393
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1c
	.long	.LASF394
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1c
	.long	.LASF395
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1c
	.long	.LASF396
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1c
	.long	.LASF397
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1c
	.long	.LASF398
	.byte	0x5
	.value	0x41b
	.long	0x1ca7
	.long	0x11b88
	.uleb128 0x1c
	.long	.LASF399
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1c
	.long	.LASF400
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1c
	.long	.LASF401
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1c
	.long	.LASF402
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1c
	.long	.LASF403
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1c
	.long	.LASF404
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1c
	.long	.LASF405
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1c
	.long	.LASF406
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1c
	.long	.LASF407
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1c
	.long	.LASF408
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1c
	.long	.LASF409
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1c
	.long	.LASF410
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1c
	.long	.LASF411
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1c
	.long	.LASF412
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1c
	.long	.LASF413
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1c
	.long	.LASF414
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1c
	.long	.LASF415
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1c
	.long	.LASF416
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1c
	.long	.LASF417
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1c
	.long	.LASF418
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1c
	.long	.LASF419
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1c
	.long	.LASF420
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1c
	.long	.LASF421
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1c
	.long	.LASF422
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1c
	.long	.LASF423
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1c
	.long	.LASF424
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1c
	.long	.LASF425
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1c
	.long	.LASF426
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1c
	.long	.LASF427
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1c
	.long	.LASF428
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1c
	.long	.LASF429
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1c
	.long	.LASF430
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1c
	.long	.LASF431
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1c
	.long	.LASF432
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1c
	.long	.LASF433
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x117b
	.uleb128 0x4
	.long	0x42
	.long	0x1b88
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
	.long	0x1ba4
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
	.long	0x1bc0
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
	.long	0x1be2
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
	.long	0x1bf8
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1c0e
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b66
	.uleb128 0x6
	.byte	0x8
	.long	0x116f
	.uleb128 0x6
	.byte	0x8
	.long	0xe6e
	.uleb128 0x4
	.long	0xb99
	.long	0x1c31
	.uleb128 0x1e
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1c47
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1c4d
	.uleb128 0x6
	.byte	0x8
	.long	0x1c53
	.uleb128 0x6
	.byte	0x8
	.long	0x1c59
	.uleb128 0x6
	.byte	0x8
	.long	0x1c5f
	.uleb128 0x6
	.byte	0x8
	.long	0x1c65
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x1c7b
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1c91
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1ca1
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xac3
	.uleb128 0x6
	.byte	0x8
	.long	0xe67
	.uleb128 0x12
	.long	.LASF434
	.byte	0x5
	.value	0x449
	.long	0x1181
	.uleb128 0x1f
	.long	.LASF435
	.byte	0x1
	.byte	0x5f
	.long	0x34
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cf7
	.uleb128 0x20
	.string	"img"
	.byte	0x1
	.byte	0x5f
	.long	0x1cf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"pps"
	.byte	0x1
	.byte	0x5f
	.long	0x1cfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1cad
	.uleb128 0x6
	.byte	0x8
	.long	0x4b2
	.uleb128 0x1f
	.long	.LASF436
	.byte	0x1
	.byte	0xa7
	.long	0x34
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d4d
	.uleb128 0x20
	.string	"img"
	.byte	0x1
	.byte	0xa7
	.long	0x1cf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"sps"
	.byte	0x1
	.byte	0xa7
	.long	0x1d4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x689
	.uleb128 0x22
	.long	.LASF458
	.byte	0x1
	.byte	0xdd
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dab
	.uleb128 0x20
	.string	"img"
	.byte	0x1
	.byte	0xdd
	.long	0x1cf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.string	"pps"
	.byte	0x1
	.byte	0xdd
	.long	0x1cfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"sps"
	.byte	0x1
	.byte	0xdd
	.long	0x1d4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.byte	0xe5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF480
	.byte	0x1
	.value	0x126
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.long	.LASF438
	.byte	0x1
	.value	0x141
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e2b
	.uleb128 0x25
	.string	"img"
	.byte	0x1
	.value	0x141
	.long	0x1cf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"pps"
	.byte	0x1
	.value	0x141
	.long	0x1cfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF437
	.byte	0x1
	.value	0x143
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x143
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x144
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF439
	.byte	0x1
	.value	0x15e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e75
	.uleb128 0x25
	.string	"img"
	.byte	0x1
	.value	0x15e
	.long	0x1cf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"pps"
	.byte	0x1
	.value	0x15e
	.long	0x1cfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x160
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF440
	.byte	0x1
	.value	0x173
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f25
	.uleb128 0x25
	.string	"img"
	.byte	0x1
	.value	0x173
	.long	0x1cf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"pps"
	.byte	0x1
	.value	0x173
	.long	0x1cfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF437
	.byte	0x1
	.value	0x175
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x176
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x176
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"y"
	.byte	0x1
	.value	0x176
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF441
	.byte	0x1
	.value	0x177
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF442
	.byte	0x1
	.value	0x177
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF443
	.byte	0x1
	.value	0x177
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF444
	.byte	0x1
	.value	0x177
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF445
	.byte	0x1
	.value	0x194
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2010
	.uleb128 0x25
	.string	"img"
	.byte	0x1
	.value	0x194
	.long	0x1cf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"pps"
	.byte	0x1
	.value	0x194
	.long	0x1cfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x196
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.value	0x196
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF446
	.byte	0x1
	.value	0x197
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF447
	.byte	0x1
	.value	0x197
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF448
	.byte	0x1
	.value	0x197
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF449
	.byte	0x1
	.value	0x197
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x198
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"y"
	.byte	0x1
	.value	0x198
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF450
	.byte	0x1
	.value	0x198
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF451
	.byte	0x1
	.value	0x198
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF452
	.byte	0x1
	.value	0x199
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF453
	.byte	0x1
	.value	0x19b
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF454
	.byte	0x1
	.value	0x1e4
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2078
	.uleb128 0x25
	.string	"img"
	.byte	0x1
	.value	0x1e4
	.long	0x1cf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"pps"
	.byte	0x1
	.value	0x1e4
	.long	0x1cfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF453
	.byte	0x1
	.value	0x1e7
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF455
	.byte	0x1
	.value	0x1e8
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1ea
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF456
	.byte	0x1
	.value	0x1ff
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x20fa
	.uleb128 0x25
	.string	"img"
	.byte	0x1
	.value	0x1ff
	.long	0x1cf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"pps"
	.byte	0x1
	.value	0x1ff
	.long	0x1cfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF453
	.byte	0x1
	.value	0x202
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF455
	.byte	0x1
	.value	0x203
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x205
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.value	0x205
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.string	"k"
	.byte	0x1
	.value	0x205
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x24
	.long	.LASF457
	.byte	0x1
	.value	0x21b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2144
	.uleb128 0x25
	.string	"img"
	.byte	0x1
	.value	0x21b
	.long	0x1cf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"pps"
	.byte	0x1
	.value	0x21b
	.long	0x1cfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x21d
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF467
	.byte	0x1
	.value	0x22d
	.long	0x34
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2174
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x22f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF481
	.byte	0x1
	.value	0x244
	.long	0x34
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.long	.LASF459
	.byte	0x1
	.value	0x254
	.long	0x34
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x21c3
	.uleb128 0x25
	.string	"mb"
	.byte	0x1
	.value	0x254
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF460
	.byte	0x1
	.value	0x265
	.long	0x34
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2204
	.uleb128 0x2c
	.long	.LASF461
	.byte	0x1
	.value	0x265
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF462
	.byte	0x1
	.value	0x268
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF463
	.byte	0x1
	.value	0x27e
	.long	0x34
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2245
	.uleb128 0x2c
	.long	.LASF461
	.byte	0x1
	.value	0x27e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF462
	.byte	0x1
	.value	0x281
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF464
	.byte	0x1
	.value	0x297
	.long	0x34
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2284
	.uleb128 0x2c
	.long	.LASF462
	.byte	0x1
	.value	0x297
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x299
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF465
	.byte	0x1
	.value	0x2b1
	.long	0x34
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x22d2
	.uleb128 0x2c
	.long	.LASF462
	.byte	0x1
	.value	0x2b1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x2b3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF466
	.byte	0x1
	.value	0x2b4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF468
	.byte	0x1
	.value	0x2bd
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x230e
	.uleb128 0x25
	.string	"mb"
	.byte	0x1
	.value	0x2bd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF469
	.byte	0x1
	.value	0x2c3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF470
	.byte	0x1
	.value	0x2c9
	.long	0x34
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2340
	.uleb128 0x2c
	.long	.LASF471
	.byte	0x1
	.value	0x2c9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF472
	.byte	0x1
	.value	0x2d1
	.long	0x34
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2372
	.uleb128 0x2c
	.long	.LASF462
	.byte	0x1
	.value	0x2d1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF473
	.byte	0x1
	.byte	0x3f
	.long	0x48c
	.uleb128 0x9
	.byte	0x3
	.quad	FirstMBInSlice
	.uleb128 0x2f
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x1cf7
	.uleb128 0x30
	.long	.LASF474
	.byte	0x1
	.byte	0x41
	.long	0x4ac
	.uleb128 0x9
	.byte	0x3
	.quad	MBAmap
	.uleb128 0x30
	.long	.LASF475
	.byte	0x1
	.byte	0x42
	.long	0x4ac
	.uleb128 0x9
	.byte	0x3
	.quad	MapUnitToSliceGroupMap
	.uleb128 0x30
	.long	.LASF476
	.byte	0x1
	.byte	0x43
	.long	0x49
	.uleb128 0x9
	.byte	0x3
	.quad	PicSizeInMapUnits
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
	.uleb128 0x1c
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
	.uleb128 0x6
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x29
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
.LASF418:
	.string	"bitdepth_luma_qp_scale"
.LASF421:
	.string	"dc_pred_value"
.LASF287:
	.string	"nb_references"
.LASF83:
	.string	"pic_init_qs_minus26"
.LASF419:
	.string	"bitdepth_chroma_qp_scale"
.LASF382:
	.string	"no_output_of_prior_pics_flag"
.LASF130:
	.string	"BITS_INTER_MB"
.LASF354:
	.string	"num_ref_idx_l1_active"
.LASF365:
	.string	"pic_order_cnt_lsb"
.LASF465:
	.string	"FmoGetLastCodedMBOfSliceGroup"
.LASF407:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF54:
	.string	"max_bytes_per_pic_denom"
.LASF410:
	.string	"DeblockCall"
.LASF135:
	.string	"MAX_BITCOUNTER_MB"
.LASF436:
	.string	"FmoGenerateMBAmap"
.LASF333:
	.string	"intra_block"
.LASF430:
	.string	"chroma_qp_offset"
.LASF295:
	.string	"width_cr"
.LASF378:
	.string	"PicSizeInMbs"
.LASF59:
	.string	"max_dec_frame_buffering"
.LASF331:
	.string	"MB_SyntaxElements"
.LASF326:
	.string	"cofAC"
.LASF427:
	.string	"lossless_qpprime_flag"
.LASF341:
	.string	"imgtr_next_P_fld"
.LASF126:
	.string	"int64"
.LASF279:
	.string	"slices"
.LASF182:
	.string	"long_term_pic_num"
.LASF39:
	.string	"matrix_coefficients"
.LASF307:
	.string	"ipredmode8x8"
.LASF311:
	.string	"mb_y"
.LASF21:
	.string	"vbr_cbr_flag"
.LASF184:
	.string	"max_long_term_frame_idx_plus1"
.LASF87:
	.string	"deblocking_filter_control_present_flag"
.LASF356:
	.string	"top_field"
.LASF463:
	.string	"FmoGetPreviousMBNr"
.LASF88:
	.string	"constrained_intra_pred_flag"
.LASF152:
	.string	"state"
.LASF96:
	.string	"constrained_set3_flag"
.LASF166:
	.string	"bcbp_contexts"
.LASF186:
	.string	"syntaxelement"
.LASF22:
	.string	"initial_cpb_removal_delay_length_minus1"
.LASF31:
	.string	"overscan_info_present_flag"
.LASF187:
	.string	"type"
.LASF346:
	.string	"fw_mb_mode"
.LASF379:
	.string	"FrameSizeInMbs"
.LASF45:
	.string	"time_scale"
.LASF234:
	.string	"LFDisableIdc"
.LASF404:
	.string	"IFLAG"
.LASF248:
	.string	"bits_to_go_skip"
.LASF348:
	.string	"pred_mv"
.LASF424:
	.string	"num_blk8x8_uv"
.LASF265:
	.string	"rmpni_buffer"
.LASF215:
	.string	"mb_field"
.LASF183:
	.string	"long_term_frame_idx"
.LASF472:
	.string	"FmoSliceGroupCompletelyCoded"
.LASF306:
	.string	"ipredmode"
.LASF207:
	.string	"b8mode"
.LASF231:
	.string	"prev_cbp"
.LASF323:
	.string	"mprr_2"
.LASF324:
	.string	"mprr_3"
.LASF241:
	.string	"bits_to_go"
.LASF179:
	.string	"DecRefPicMarking_s"
.LASF185:
	.string	"DecRefPicMarking_t"
.LASF23:
	.string	"cpb_removal_delay_length_minus1"
.LASF80:
	.string	"weighted_pred_flag"
.LASF97:
	.string	"level_idc"
.LASF408:
	.string	"bot_MB"
.LASF406:
	.string	"BasicUnit"
.LASF111:
	.string	"num_ref_frames"
.LASF148:
	.string	"EcodestrmS"
.LASF29:
	.string	"sar_width"
.LASF134:
	.string	"BITS_DELTA_QUANT_MB"
.LASF6:
	.string	"long int"
.LASF432:
	.string	"auto_crop_right"
.LASF50:
	.string	"vcl_hrd_parameters"
.LASF44:
	.string	"num_units_in_tick"
.LASF325:
	.string	"mprr_c"
.LASF224:
	.string	"all_blk_8x8"
.LASF380:
	.string	"nal_reference_idc"
.LASF371:
	.string	"framepoc"
.LASF387:
	.string	"NumberofTextureBits"
.LASF321:
	.string	"opix_c_y"
.LASF103:
	.string	"log2_max_frame_num_minus4"
.LASF409:
	.string	"write_macroblock_frame"
.LASF245:
	.string	"stored_byte_buf"
.LASF127:
	.string	"BITS_HEADER"
.LASF28:
	.string	"aspect_ratio_idc"
.LASF375:
	.string	"PicHeightInMapUnits"
.LASF395:
	.string	"NumberofGOP"
.LASF416:
	.string	"bitdepth_luma"
.LASF30:
	.string	"sar_height"
.LASF131:
	.string	"BITS_CBP_MB"
.LASF320:
	.string	"opix_c_x"
.LASF138:
	.string	"Ebuffer"
.LASF137:
	.string	"Erange"
.LASF450:
	.string	"xDir"
.LASF4:
	.string	"signed char"
.LASF438:
	.string	"FmoGenerateType0MapUnitMap"
.LASF293:
	.string	"framerate"
.LASF260:
	.string	"max_part_nr"
.LASF151:
	.string	"EncodingEnvironmentPtr"
.LASF106:
	.string	"delta_pic_order_always_zero_flag"
.LASF214:
	.string	"IntraChromaPredModeFlag"
.LASF191:
	.string	"context"
.LASF62:
	.string	"pic_parameter_set_id"
.LASF269:
	.string	"long_term_pic_idx_l0"
.LASF273:
	.string	"long_term_pic_idx_l1"
.LASF266:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF270:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF397:
	.string	"NumberofPPicture"
.LASF466:
	.string	"LastMB"
.LASF392:
	.string	"NumberofMBHeaderBits"
.LASF327:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF205:
	.string	"intra_pred_modes8x8"
.LASF67:
	.string	"pic_scaling_list_present_flag"
.LASF114:
	.string	"pic_height_in_map_units_minus1"
.LASF40:
	.string	"chroma_location_info_present_flag"
.LASF98:
	.string	"chroma_format_idc"
.LASF350:
	.string	"bipred_mv1"
.LASF351:
	.string	"bipred_mv2"
.LASF168:
	.string	"last_contexts"
.LASF213:
	.string	"c_ipred_mode"
.LASF71:
	.string	"run_length_minus1"
.LASF423:
	.string	"max_imgpel_value_uv"
.LASF267:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF271:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF268:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF272:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF242:
	.string	"byte_buf"
.LASF227:
	.string	"bi_pred_me"
.LASF475:
	.string	"MapUnitToSliceGroupMap"
.LASF198:
	.string	"delta_qp"
.LASF84:
	.string	"chroma_qp_index_offset"
.LASF17:
	.string	"bit_rate_scale"
.LASF8:
	.string	"char"
.LASF305:
	.string	"block_c_x"
.LASF161:
	.string	"transform_size_contexts"
.LASF383:
	.string	"long_term_reference_flag"
.LASF332:
	.string	"quad"
.LASF301:
	.string	"is_intra_block"
.LASF259:
	.string	"start_mb_nr"
.LASF464:
	.string	"FmoGetFirstMBOfSliceGroup"
.LASF128:
	.string	"BITS_TOTAL_MB"
.LASF201:
	.string	"mb_available_up"
.LASF367:
	.string	"delta_pic_order_cnt"
.LASF19:
	.string	"bit_rate_value"
.LASF461:
	.string	"CurrentMbNr"
.LASF479:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF386:
	.string	"NumberofHeaderBits"
.LASF52:
	.string	"bitstream_restriction_flag"
.LASF160:
	.string	"mb_aff_contexts"
.LASF225:
	.string	"luma_transform_size_8x8_flag"
.LASF313:
	.string	"block_y"
.LASF43:
	.string	"timing_info_present_flag"
.LASF328:
	.string	"currentPicture"
.LASF156:
	.string	"b8_type_contexts"
.LASF91:
	.string	"pic_parameter_set_rbsp_t"
.LASF73:
	.string	"bottom_right"
.LASF344:
	.string	"p_interval"
.LASF285:
	.string	"Picture"
.LASF342:
	.string	"imgtr_last_P_fld"
.LASF458:
	.string	"FmoInit"
.LASF230:
	.string	"prev_delta_qp"
.LASF82:
	.string	"pic_init_qp_minus26"
.LASF467:
	.string	"FmoStartPicture"
.LASF302:
	.string	"is_v_block"
.LASF92:
	.string	"profile_idc"
.LASF16:
	.string	"cpb_cnt"
.LASF304:
	.string	"mb_y_intra"
.LASF155:
	.string	"mb_type_contexts"
.LASF72:
	.string	"top_left"
.LASF249:
	.string	"streamBuffer"
.LASF146:
	.string	"Ebits_to_goS"
.LASF398:
	.string	"MADofMB"
.LASF468:
	.string	"FmoSetLastMacroblockInSlice"
.LASF353:
	.string	"num_ref_idx_l0_active"
.LASF385:
	.string	"model_number"
.LASF246:
	.string	"byte_buf_skip"
.LASF195:
	.string	"macroblock"
.LASF369:
	.string	"toppoc"
.LASF364:
	.string	"MbaffFrameFlag"
.LASF136:
	.string	"Elow"
.LASF55:
	.string	"max_bits_per_mb_denom"
.LASF318:
	.string	"opix_x"
.LASF319:
	.string	"opix_y"
.LASF258:
	.string	"picture_type"
.LASF274:
	.string	"slice_too_big"
.LASF112:
	.string	"gaps_in_frame_num_value_allowed_flag"
.LASF377:
	.string	"PicHeightInMbs"
.LASF90:
	.string	"vui_pic_parameters_flag"
.LASF452:
	.string	"mapUnitVacant"
.LASF51:
	.string	"low_delay_hrd_flag"
.LASF150:
	.string	"EncodingEnvironment"
.LASF255:
	.string	"writeSyntaxElement"
.LASF113:
	.string	"pic_width_in_mbs_minus1"
.LASF443:
	.string	"yBottomRight"
.LASF0:
	.string	"long unsigned int"
.LASF164:
	.string	"cipr_contexts"
.LASF448:
	.string	"rightBound"
.LASF149:
	.string	"Ecodestrm_lenS"
.LASF57:
	.string	"log2_max_mv_length_horizontal"
.LASF41:
	.string	"chroma_location_frame"
.LASF125:
	.string	"seq_parameter_set_rbsp_t"
.LASF261:
	.string	"num_mb"
.LASF370:
	.string	"bottompoc"
.LASF357:
	.string	"mvscale"
.LASF476:
	.string	"PicSizeInMapUnits"
.LASF338:
	.string	"pstruct_next_P"
.LASF211:
	.string	"lf_alpha_c0_offset"
.LASF433:
	.string	"auto_crop_bottom"
.LASF455:
	.string	"sizeOfUpperLeftGroup"
.LASF399:
	.string	"BasicUnitQP"
.LASF24:
	.string	"dpb_output_delay_length_minus1"
.LASF441:
	.string	"yTopLeft"
.LASF391:
	.string	"NumberofMBTextureBits"
.LASF38:
	.string	"transfer_characteristics"
.LASF209:
	.string	"cbp_bits"
.LASF481:
	.string	"FmoEndPicture"
.LASF95:
	.string	"constrained_set2_flag"
.LASF316:
	.string	"pix_c_x"
.LASF317:
	.string	"pix_c_y"
.LASF469:
	.string	"currSliceGroup"
.LASF345:
	.string	"b_frame_to_code"
.LASF280:
	.string	"bits_per_picture"
.LASF303:
	.string	"mb_y_upd"
.LASF174:
	.string	"RMPNI"
.LASF141:
	.string	"Ecodestrm"
.LASF235:
	.string	"LFAlphaC0Offset"
.LASF212:
	.string	"lf_beta_offset"
.LASF181:
	.string	"difference_of_pic_nums_minus1"
.LASF440:
	.string	"FmoGenerateType2MapUnitMap"
.LASF462:
	.string	"SliceGroupID"
.LASF322:
	.string	"mprr"
.LASF162:
	.string	"MotionInfoContexts"
.LASF9:
	.string	"long long int"
.LASF473:
	.string	"FirstMBInSlice"
.LASF78:
	.string	"num_ref_idx_l0_active_minus1"
.LASF343:
	.string	"b_interval"
.LASF139:
	.string	"Ebits_to_go"
.LASF335:
	.string	"fld_flag"
.LASF337:
	.string	"direct_intraP_ref"
.LASF294:
	.string	"width"
.LASF61:
	.string	"Valid"
.LASF203:
	.string	"mb_type"
.LASF244:
	.string	"stored_bits_to_go"
.LASF429:
	.string	"mb_cr_size_y"
.LASF439:
	.string	"FmoGenerateType1MapUnitMap"
.LASF110:
	.string	"offset_for_ref_frame"
.LASF197:
	.string	"slice_nr"
.LASF282:
	.string	"distortion_u"
.LASF283:
	.string	"distortion_v"
.LASF281:
	.string	"distortion_y"
.LASF247:
	.string	"byte_pos_skip"
.LASF236:
	.string	"LFBetaOffset"
.LASF101:
	.string	"bit_depth_luma_minus8"
.LASF238:
	.string	"double"
.LASF94:
	.string	"constrained_set1_flag"
.LASF243:
	.string	"stored_byte_pos"
.LASF431:
	.string	"residue_transform_flag"
.LASF340:
	.string	"imgtr_last_P_frm"
.LASF460:
	.string	"FmoGetNextMBNr"
.LASF169:
	.string	"one_contexts"
.LASF199:
	.string	"qpsp"
.LASF284:
	.string	"float"
.LASF435:
	.string	"FmoGenerateMapUnitToSliceGroupMap"
.LASF153:
	.string	"count"
.LASF117:
	.string	"direct_8x8_inference_flag"
.LASF154:
	.string	"BiContextType"
.LASF56:
	.string	"log2_max_mv_length_vertical"
.LASF336:
	.string	"rd_pass"
.LASF3:
	.string	"unsigned int"
.LASF170:
	.string	"abs_contexts"
.LASF140:
	.string	"Ebits_to_follow"
.LASF250:
	.string	"write_flag"
.LASF289:
	.string	"total_number_mb"
.LASF86:
	.string	"cr_qp_index_offset"
.LASF142:
	.string	"Ecodestrm_len"
.LASF264:
	.string	"tex_ctx"
.LASF471:
	.string	"SliceGroup"
.LASF105:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF396:
	.string	"TotalQpforPPicture"
.LASF202:
	.string	"mb_available_left"
.LASF178:
	.string	"RMPNIbuffer_s"
.LASF177:
	.string	"RMPNIbuffer_t"
.LASF414:
	.string	"slice_group_change_cycle"
.LASF173:
	.string	"TextureInfoContexts"
.LASF288:
	.string	"current_mb_nr"
.LASF360:
	.string	"layer"
.LASF208:
	.string	"b8pdir"
.LASF277:
	.string	"no_slices"
.LASF108:
	.string	"offset_for_top_to_bottom_field"
.LASF122:
	.string	"frame_cropping_rect_bottom_offset"
.LASF339:
	.string	"imgtr_next_P_frm"
.LASF401:
	.string	"FieldControl"
.LASF393:
	.string	"NumberofCodedBFrame"
.LASF359:
	.string	"i16offset"
.LASF33:
	.string	"video_signal_type_present_flag"
.LASF445:
	.string	"FmoGenerateType3MapUnitMap"
.LASF104:
	.string	"pic_order_cnt_type"
.LASF314:
	.string	"pix_x"
.LASF315:
	.string	"pix_y"
.LASF477:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF428:
	.string	"mb_cr_size_x"
.LASF434:
	.string	"ImageParameters"
.LASF254:
	.string	"ee_cabac"
.LASF310:
	.string	"mb_x"
.LASF474:
	.string	"MBAmap"
.LASF13:
	.string	"FALSE"
.LASF118:
	.string	"frame_cropping_flag"
.LASF446:
	.string	"leftBound"
.LASF355:
	.string	"field_mode"
.LASF312:
	.string	"block_x"
.LASF42:
	.string	"chroma_location_field"
.LASF412:
	.string	"last_has_mmco_5"
.LASF100:
	.string	"seq_scaling_list_present_flag"
.LASF172:
	.string	"fld_last_contexts"
.LASF107:
	.string	"offset_for_non_ref_pic"
.LASF120:
	.string	"frame_cropping_rect_right_offset"
.LASF89:
	.string	"redundant_pic_cnt_present_flag"
.LASF237:
	.string	"skip_flag"
.LASF373:
	.string	"frame_num"
.LASF167:
	.string	"map_contexts"
.LASF180:
	.string	"memory_management_control_operation"
.LASF251:
	.string	"Bitstream"
.LASF362:
	.string	"NoResidueDirect"
.LASF116:
	.string	"mb_adaptive_frame_field_flag"
.LASF405:
	.string	"NumberofCodedMacroBlocks"
.LASF49:
	.string	"vcl_hrd_parameters_present_flag"
.LASF64:
	.string	"entropy_coding_mode_flag"
.LASF190:
	.string	"bitpattern"
.LASF411:
	.string	"last_pic_bottom_field"
.LASF257:
	.string	"picture_id"
.LASF115:
	.string	"frame_mbs_only_flag"
.LASF334:
	.string	"fld_type"
.LASF26:
	.string	"hrd_parameters_t"
.LASF394:
	.string	"NumberofCodedPFrame"
.LASF79:
	.string	"num_ref_idx_l1_active_minus1"
.LASF10:
	.string	"long long unsigned int"
.LASF129:
	.string	"BITS_MB_MODE"
.LASF417:
	.string	"bitdepth_chroma"
.LASF25:
	.string	"time_offset_length"
.LASF297:
	.string	"height_cr"
.LASF349:
	.string	"all_mv"
.LASF296:
	.string	"height"
.LASF291:
	.string	"structure"
.LASF451:
	.string	"yDir"
.LASF275:
	.string	"field_ctx"
.LASF449:
	.string	"bottomBound"
.LASF81:
	.string	"weighted_bipred_idc"
.LASF256:
	.string	"DataPartition"
.LASF470:
	.string	"FmoGetFirstMacroblockInSlice"
.LASF330:
	.string	"mb_data"
.LASF121:
	.string	"frame_cropping_rect_top_offset"
.LASF459:
	.string	"FmoMB2SliceGroup"
.LASF389:
	.string	"NumberofBasicUnitTextureBits"
.LASF109:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF276:
	.string	"Slice"
.LASF252:
	.string	"datapartition"
.LASF147:
	.string	"Ebits_to_followS"
.LASF53:
	.string	"motion_vectors_over_pic_boundaries_flag"
.LASF298:
	.string	"height_cr_frame"
.LASF457:
	.string	"FmoGenerateType6MapUnitMap"
.LASF403:
	.string	"Frame_Total_Number_MB"
.LASF188:
	.string	"value1"
.LASF189:
	.string	"value2"
.LASF204:
	.string	"intra_pred_modes"
.LASF119:
	.string	"frame_cropping_rect_left_offset"
.LASF253:
	.string	"bitstream"
.LASF368:
	.string	"field_picture"
.LASF456:
	.string	"FmoGenerateType5MapUnitMap"
.LASF437:
	.string	"iGroup"
.LASF478:
	.string	"fmo.c"
.LASF70:
	.string	"slice_group_map_type"
.LASF48:
	.string	"nal_hrd_parameters"
.LASF15:
	.string	"Boolean"
.LASF363:
	.string	"redundant_pic_cnt"
.LASF420:
	.string	"bitdepth_lambda_scale"
.LASF361:
	.string	"old_layer"
.LASF286:
	.string	"number"
.LASF292:
	.string	"max_num_references"
.LASF27:
	.string	"aspect_ratio_info_present_flag"
.LASF422:
	.string	"max_imgpel_value"
.LASF447:
	.string	"topBound"
.LASF374:
	.string	"PicWidthInMbs"
.LASF63:
	.string	"seq_parameter_set_id"
.LASF415:
	.string	"pic_unit_size_on_disk"
.LASF425:
	.string	"num_cdc_coeff"
.LASF36:
	.string	"colour_description_present_flag"
.LASF232:
	.string	"predict_qp"
.LASF102:
	.string	"bit_depth_chroma_minus8"
.LASF239:
	.string	"Macroblock"
.LASF158:
	.string	"ref_no_contexts"
.LASF384:
	.string	"dec_ref_pic_marking_buffer"
.LASF381:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF133:
	.string	"BITS_COEFF_UV_MB"
.LASF12:
	.string	"byte"
.LASF176:
	.string	"Next"
.LASF175:
	.string	"Data"
.LASF400:
	.string	"TopFieldFlag"
.LASF442:
	.string	"xTopLeft"
.LASF5:
	.string	"short int"
.LASF47:
	.string	"nal_hrd_parameters_present_flag"
.LASF426:
	.string	"yuv_format"
.LASF58:
	.string	"max_dec_frame_reordering"
.LASF347:
	.string	"bw_mb_mode"
.LASF453:
	.string	"mapUnitsInSliceGroup0"
.LASF14:
	.string	"TRUE"
.LASF124:
	.string	"vui_seq_parameters"
.LASF145:
	.string	"EbufferS"
.LASF372:
	.string	"ThisPOC"
.LASF18:
	.string	"cpb_size_scale"
.LASF390:
	.string	"TotalMADBasicUnit"
.LASF229:
	.string	"prev_qp"
.LASF157:
	.string	"mv_res_contexts"
.LASF228:
	.string	"actj"
.LASF46:
	.string	"fixed_frame_rate_flag"
.LASF69:
	.string	"num_slice_groups_minus1"
.LASF366:
	.string	"delta_pic_order_cnt_bottom"
.LASF358:
	.string	"buf_cycle"
.LASF132:
	.string	"BITS_COEFF_Y_MB"
.LASF308:
	.string	"cod_counter"
.LASF262:
	.string	"partArr"
.LASF240:
	.string	"byte_pos"
.LASF163:
	.string	"ipr_contexts"
.LASF216:
	.string	"mbAddrA"
.LASF217:
	.string	"mbAddrB"
.LASF218:
	.string	"mbAddrC"
.LASF219:
	.string	"mbAddrD"
.LASF309:
	.string	"nz_coeff"
.LASF159:
	.string	"delta_qp_contexts"
.LASF20:
	.string	"cpb_size_value"
.LASF388:
	.string	"NumberofBasicUnitHeaderBits"
.LASF194:
	.string	"SyntaxElement"
.LASF93:
	.string	"constrained_set0_flag"
.LASF413:
	.string	"pre_frame_num"
.LASF32:
	.string	"overscan_appropriate_flag"
.LASF68:
	.string	"pic_order_present_flag"
.LASF210:
	.string	"lf_disable"
.LASF37:
	.string	"colour_primaries"
.LASF278:
	.string	"idr_flag"
.LASF480:
	.string	"FmoUninit"
.LASF2:
	.string	"short unsigned int"
.LASF402:
	.string	"FieldFrame"
.LASF454:
	.string	"FmoGenerateType4MapUnitMap"
.LASF233:
	.string	"predict_error"
.LASF290:
	.string	"current_slice_nr"
.LASF352:
	.string	"direct_spatial_mv_pred_flag"
.LASF60:
	.string	"vui_seq_parameters_t"
.LASF192:
	.string	"mapping"
.LASF99:
	.string	"seq_scaling_matrix_present_flag"
.LASF75:
	.string	"slice_group_change_rate_minus1"
.LASF11:
	.string	"int64_t"
.LASF193:
	.string	"writing"
.LASF77:
	.string	"slice_group_id"
.LASF171:
	.string	"fld_map_contexts"
.LASF35:
	.string	"video_full_range_flag"
.LASF74:
	.string	"slice_group_change_direction_flag"
.LASF66:
	.string	"pic_scaling_matrix_present_flag"
.LASF123:
	.string	"vui_parameters_present_flag"
.LASF34:
	.string	"video_format"
.LASF165:
	.string	"cbp_contexts"
.LASF85:
	.string	"cb_qp_index_offset"
.LASF263:
	.string	"mot_ctx"
.LASF76:
	.string	"pic_size_in_map_units_minus1"
.LASF226:
	.string	"NoMbPartLessThan8x8Flag"
.LASF143:
	.string	"ElowS"
.LASF299:
	.string	"subblock_x"
.LASF300:
	.string	"subblock_y"
.LASF444:
	.string	"xBottomRight"
.LASF65:
	.string	"transform_8x8_mode_flag"
.LASF196:
	.string	"currSEnr"
.LASF376:
	.string	"FrameHeightInMbs"
.LASF329:
	.string	"currentSlice"
.LASF200:
	.string	"bitcounter"
.LASF144:
	.string	"ErangeS"
.LASF220:
	.string	"mbAvailA"
.LASF221:
	.string	"mbAvailB"
.LASF222:
	.string	"mbAvailC"
.LASF223:
	.string	"mbAvailD"
.LASF206:
	.string	"cbp_blk"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
