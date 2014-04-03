	.file	"parsetcommon.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 parsetcommon.c -mtune=generic -march=x86-64 -g
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
	.section	.rodata
.LC0:
	.string	"AllocPPS: PPS"
.LC1:
	.string	"AllocPPS: slice_group_id"
	.text
	.globl	AllocPPS
	.type	AllocPPS, @function
AllocPPS:
.LFB2:
	.file 1 "parsetcommon.c"
	.loc 1 32 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 35 0
	movl	$1, %esi	#,
	movl	$240, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp63, p
	cmpq	$0, -8(%rbp)	#, p
	jne	.L2	#,
	.loc 1 36 0
	movl	$.LC0, %edi	#,
	call	no_mem_exit	#
.L2:
	.loc 1 37 0
	movl	$1, %esi	#,
	movl	$60000, %edi	#,
	call	calloc	#
	movq	%rax, %rdx	# tmp64, D.4368
	movq	-8(%rbp), %rax	# p, tmp65
	movq	%rdx, 176(%rax)	# D.4368, p_1->slice_group_id
	movq	-8(%rbp), %rax	# p, tmp66
	movq	176(%rax), %rax	# p_1->slice_group_id, D.4369
	testq	%rax, %rax	# D.4369
	jne	.L3	#,
	.loc 1 38 0
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L3:
	.loc 1 39 0
	movq	-8(%rbp), %rax	# p, D.4370
	.loc 1 40 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	AllocPPS, .-AllocPPS
	.section	.rodata
.LC2:
	.string	"AllocSPS: SPS"
	.text
	.globl	AllocSPS
	.type	AllocSPS, @function
AllocSPS:
.LFB3:
	.loc 1 53 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 56 0
	movl	$1, %esi	#,
	movl	$2132, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp61, p
	cmpq	$0, -8(%rbp)	#, p
	jne	.L6	#,
	.loc 1 57 0
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L6:
	.loc 1 58 0
	movq	-8(%rbp), %rax	# p, D.4373
	.loc 1 59 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	AllocSPS, .-AllocSPS
	.globl	FreePPS
	.type	FreePPS, @function
FreePPS:
.LFB4:
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pps, pps
	.loc 1 78 0
	movq	-8(%rbp), %rax	# pps, tmp61
	movq	176(%rax), %rax	# pps_1(D)->slice_group_id, D.4375
	testq	%rax, %rax	# D.4375
	je	.L9	#,
	.loc 1 78 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pps, tmp62
	movq	176(%rax), %rax	# pps_1(D)->slice_group_id, D.4375
	movq	%rax, %rdi	# D.4375,
	call	free	#
.L9:
	.loc 1 79 0 is_stmt 1
	movq	-8(%rbp), %rax	# pps, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
	.loc 1 80 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	FreePPS, .-FreePPS
	.globl	FreeSPS
	.type	FreeSPS, @function
FreeSPS:
.LFB5:
	.loc 1 97 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sps, sps
	.loc 1 99 0
	movq	-8(%rbp), %rax	# sps, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	.loc 1 100 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	FreeSPS, .-FreeSPS
.Letext0:
	.file 2 "defines.h"
	.file 3 "parsetcommon.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x73a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF130
	.byte	0x1
	.long	.LASF131
	.long	.LASF132
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x1e
	.long	0x3b
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x2a
	.long	0xa1
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0x2d
	.long	0x8c
	.uleb128 0x7
	.value	0x19c
	.byte	0x3
	.byte	0x30
	.long	0x133
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0x32
	.long	0x49
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.byte	0x33
	.long	0x49
	.byte	0x4
	.uleb128 0x8
	.long	.LASF17
	.byte	0x3
	.byte	0x34
	.long	0x49
	.byte	0x8
	.uleb128 0x8
	.long	.LASF18
	.byte	0x3
	.byte	0x35
	.long	0x133
	.byte	0xc
	.uleb128 0x8
	.long	.LASF19
	.byte	0x3
	.byte	0x36
	.long	0x133
	.byte	0x8c
	.uleb128 0x9
	.long	.LASF20
	.byte	0x3
	.byte	0x37
	.long	0x133
	.value	0x10c
	.uleb128 0x9
	.long	.LASF21
	.byte	0x3
	.byte	0x38
	.long	0x49
	.value	0x18c
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3
	.byte	0x39
	.long	0x49
	.value	0x190
	.uleb128 0x9
	.long	.LASF23
	.byte	0x3
	.byte	0x3a
	.long	0x49
	.value	0x194
	.uleb128 0x9
	.long	.LASF24
	.byte	0x3
	.byte	0x3b
	.long	0x49
	.value	0x198
	.byte	0
	.uleb128 0xa
	.long	0x49
	.long	0x143
	.uleb128 0xb
	.long	0x65
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.long	.LASF25
	.byte	0x3
	.byte	0x3c
	.long	0xac
	.uleb128 0x7
	.value	0x3b4
	.byte	0x3
	.byte	0x3f
	.long	0x2ef
	.uleb128 0x8
	.long	.LASF26
	.byte	0x3
	.byte	0x41
	.long	0xa1
	.byte	0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x3
	.byte	0x42
	.long	0x49
	.byte	0x4
	.uleb128 0x8
	.long	.LASF28
	.byte	0x3
	.byte	0x43
	.long	0x49
	.byte	0x8
	.uleb128 0x8
	.long	.LASF29
	.byte	0x3
	.byte	0x44
	.long	0x49
	.byte	0xc
	.uleb128 0x8
	.long	.LASF30
	.byte	0x3
	.byte	0x45
	.long	0xa1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF31
	.byte	0x3
	.byte	0x46
	.long	0xa1
	.byte	0x14
	.uleb128 0x8
	.long	.LASF32
	.byte	0x3
	.byte	0x47
	.long	0xa1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF33
	.byte	0x3
	.byte	0x48
	.long	0x49
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF34
	.byte	0x3
	.byte	0x49
	.long	0xa1
	.byte	0x20
	.uleb128 0x8
	.long	.LASF35
	.byte	0x3
	.byte	0x4a
	.long	0xa1
	.byte	0x24
	.uleb128 0x8
	.long	.LASF36
	.byte	0x3
	.byte	0x4b
	.long	0x49
	.byte	0x28
	.uleb128 0x8
	.long	.LASF37
	.byte	0x3
	.byte	0x4c
	.long	0x49
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF38
	.byte	0x3
	.byte	0x4d
	.long	0x49
	.byte	0x30
	.uleb128 0x8
	.long	.LASF39
	.byte	0x3
	.byte	0x4e
	.long	0xa1
	.byte	0x34
	.uleb128 0x8
	.long	.LASF40
	.byte	0x3
	.byte	0x4f
	.long	0x49
	.byte	0x38
	.uleb128 0x8
	.long	.LASF41
	.byte	0x3
	.byte	0x50
	.long	0x49
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF42
	.byte	0x3
	.byte	0x51
	.long	0xa1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF43
	.byte	0x3
	.byte	0x52
	.long	0x49
	.byte	0x44
	.uleb128 0x8
	.long	.LASF44
	.byte	0x3
	.byte	0x53
	.long	0x49
	.byte	0x48
	.uleb128 0x8
	.long	.LASF45
	.byte	0x3
	.byte	0x54
	.long	0xa1
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF46
	.byte	0x3
	.byte	0x55
	.long	0xa1
	.byte	0x50
	.uleb128 0x8
	.long	.LASF47
	.byte	0x3
	.byte	0x56
	.long	0x143
	.byte	0x54
	.uleb128 0x9
	.long	.LASF48
	.byte	0x3
	.byte	0x57
	.long	0xa1
	.value	0x1f0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x3
	.byte	0x58
	.long	0x143
	.value	0x1f4
	.uleb128 0x9
	.long	.LASF50
	.byte	0x3
	.byte	0x5a
	.long	0xa1
	.value	0x390
	.uleb128 0x9
	.long	.LASF51
	.byte	0x3
	.byte	0x5b
	.long	0xa1
	.value	0x394
	.uleb128 0x9
	.long	.LASF52
	.byte	0x3
	.byte	0x5c
	.long	0xa1
	.value	0x398
	.uleb128 0x9
	.long	.LASF53
	.byte	0x3
	.byte	0x5d
	.long	0x49
	.value	0x39c
	.uleb128 0x9
	.long	.LASF54
	.byte	0x3
	.byte	0x5e
	.long	0x49
	.value	0x3a0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x3
	.byte	0x5f
	.long	0x49
	.value	0x3a4
	.uleb128 0x9
	.long	.LASF56
	.byte	0x3
	.byte	0x60
	.long	0x49
	.value	0x3a8
	.uleb128 0x9
	.long	.LASF57
	.byte	0x3
	.byte	0x61
	.long	0x49
	.value	0x3ac
	.uleb128 0x9
	.long	.LASF58
	.byte	0x3
	.byte	0x62
	.long	0x49
	.value	0x3b0
	.byte	0
	.uleb128 0x4
	.long	.LASF59
	.byte	0x3
	.byte	0x63
	.long	0x14e
	.uleb128 0xc
	.byte	0xf0
	.byte	0x3
	.byte	0x67
	.long	0x46b
	.uleb128 0x8
	.long	.LASF60
	.byte	0x3
	.byte	0x69
	.long	0xa1
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x3
	.byte	0x6a
	.long	0x49
	.byte	0x4
	.uleb128 0x8
	.long	.LASF62
	.byte	0x3
	.byte	0x6b
	.long	0x49
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x3
	.byte	0x6c
	.long	0xa1
	.byte	0xc
	.uleb128 0x8
	.long	.LASF64
	.byte	0x3
	.byte	0x6e
	.long	0xa1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF65
	.byte	0x3
	.byte	0x6f
	.long	0xa1
	.byte	0x14
	.uleb128 0x8
	.long	.LASF66
	.byte	0x3
	.byte	0x70
	.long	0x46b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF67
	.byte	0x3
	.byte	0x73
	.long	0xa1
	.byte	0x38
	.uleb128 0x8
	.long	.LASF68
	.byte	0x3
	.byte	0x74
	.long	0x49
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF69
	.byte	0x3
	.byte	0x75
	.long	0x49
	.byte	0x40
	.uleb128 0x8
	.long	.LASF70
	.byte	0x3
	.byte	0x77
	.long	0x47b
	.byte	0x44
	.uleb128 0x8
	.long	.LASF71
	.byte	0x3
	.byte	0x79
	.long	0x47b
	.byte	0x64
	.uleb128 0x8
	.long	.LASF72
	.byte	0x3
	.byte	0x7a
	.long	0x47b
	.byte	0x84
	.uleb128 0x8
	.long	.LASF73
	.byte	0x3
	.byte	0x7c
	.long	0xa1
	.byte	0xa4
	.uleb128 0x8
	.long	.LASF74
	.byte	0x3
	.byte	0x7d
	.long	0x49
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF75
	.byte	0x3
	.byte	0x7f
	.long	0x49
	.byte	0xac
	.uleb128 0x8
	.long	.LASF76
	.byte	0x3
	.byte	0x80
	.long	0x48b
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x3
	.byte	0x82
	.long	0x34
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF78
	.byte	0x3
	.byte	0x83
	.long	0x34
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF79
	.byte	0x3
	.byte	0x84
	.long	0xa1
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF80
	.byte	0x3
	.byte	0x85
	.long	0x49
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF81
	.byte	0x3
	.byte	0x86
	.long	0x34
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF82
	.byte	0x3
	.byte	0x87
	.long	0x34
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF83
	.byte	0x3
	.byte	0x88
	.long	0x34
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF84
	.byte	0x3
	.byte	0x8a
	.long	0x34
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF85
	.byte	0x3
	.byte	0x8b
	.long	0x34
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF86
	.byte	0x3
	.byte	0x8d
	.long	0xa1
	.byte	0xdc
	.uleb128 0x8
	.long	.LASF87
	.byte	0x3
	.byte	0x8e
	.long	0xa1
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF88
	.byte	0x3
	.byte	0x8f
	.long	0xa1
	.byte	0xe4
	.uleb128 0x8
	.long	.LASF89
	.byte	0x3
	.byte	0x90
	.long	0xa1
	.byte	0xe8
	.byte	0
	.uleb128 0xa
	.long	0x34
	.long	0x47b
	.uleb128 0xb
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.long	0x49
	.long	0x48b
	.uleb128 0xb
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x81
	.uleb128 0x4
	.long	.LASF90
	.byte	0x3
	.byte	0x91
	.long	0x2fa
	.uleb128 0x7
	.value	0x854
	.byte	0x3
	.byte	0x95
	.long	0x658
	.uleb128 0x8
	.long	.LASF60
	.byte	0x3
	.byte	0x97
	.long	0xa1
	.byte	0
	.uleb128 0x8
	.long	.LASF91
	.byte	0x3
	.byte	0x99
	.long	0x49
	.byte	0x4
	.uleb128 0x8
	.long	.LASF92
	.byte	0x3
	.byte	0x9a
	.long	0xa1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF93
	.byte	0x3
	.byte	0x9b
	.long	0xa1
	.byte	0xc
	.uleb128 0x8
	.long	.LASF94
	.byte	0x3
	.byte	0x9c
	.long	0xa1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF95
	.byte	0x3
	.byte	0x9d
	.long	0xa1
	.byte	0x14
	.uleb128 0x8
	.long	.LASF96
	.byte	0x3
	.byte	0x9e
	.long	0x49
	.byte	0x18
	.uleb128 0x8
	.long	.LASF62
	.byte	0x3
	.byte	0x9f
	.long	0x49
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF97
	.byte	0x3
	.byte	0xa0
	.long	0x49
	.byte	0x20
	.uleb128 0x8
	.long	.LASF98
	.byte	0x3
	.byte	0xa2
	.long	0xa1
	.byte	0x24
	.uleb128 0x8
	.long	.LASF99
	.byte	0x3
	.byte	0xa3
	.long	0x46b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF100
	.byte	0x3
	.byte	0xa5
	.long	0x49
	.byte	0x48
	.uleb128 0x8
	.long	.LASF101
	.byte	0x3
	.byte	0xa6
	.long	0x49
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF102
	.byte	0x3
	.byte	0xa7
	.long	0x49
	.byte	0x50
	.uleb128 0x8
	.long	.LASF103
	.byte	0x3
	.byte	0xa8
	.long	0x49
	.byte	0x54
	.uleb128 0x8
	.long	.LASF104
	.byte	0x3
	.byte	0xaa
	.long	0x49
	.byte	0x58
	.uleb128 0x8
	.long	.LASF105
	.byte	0x3
	.byte	0xac
	.long	0xa1
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF106
	.byte	0x3
	.byte	0xad
	.long	0x34
	.byte	0x60
	.uleb128 0x8
	.long	.LASF107
	.byte	0x3
	.byte	0xae
	.long	0x34
	.byte	0x64
	.uleb128 0x8
	.long	.LASF108
	.byte	0x3
	.byte	0xaf
	.long	0x49
	.byte	0x68
	.uleb128 0x8
	.long	.LASF109
	.byte	0x3
	.byte	0xb1
	.long	0x658
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF110
	.byte	0x3
	.byte	0xb2
	.long	0x49
	.value	0x46c
	.uleb128 0x9
	.long	.LASF111
	.byte	0x3
	.byte	0xb3
	.long	0xa1
	.value	0x470
	.uleb128 0x9
	.long	.LASF112
	.byte	0x3
	.byte	0xb4
	.long	0x49
	.value	0x474
	.uleb128 0x9
	.long	.LASF113
	.byte	0x3
	.byte	0xb5
	.long	0x49
	.value	0x478
	.uleb128 0x9
	.long	.LASF114
	.byte	0x3
	.byte	0xb6
	.long	0xa1
	.value	0x47c
	.uleb128 0x9
	.long	.LASF115
	.byte	0x3
	.byte	0xb8
	.long	0xa1
	.value	0x480
	.uleb128 0x9
	.long	.LASF116
	.byte	0x3
	.byte	0xb9
	.long	0xa1
	.value	0x484
	.uleb128 0x9
	.long	.LASF117
	.byte	0x3
	.byte	0xba
	.long	0xa1
	.value	0x488
	.uleb128 0x9
	.long	.LASF118
	.byte	0x3
	.byte	0xbb
	.long	0x49
	.value	0x48c
	.uleb128 0x9
	.long	.LASF119
	.byte	0x3
	.byte	0xbc
	.long	0x49
	.value	0x490
	.uleb128 0x9
	.long	.LASF120
	.byte	0x3
	.byte	0xbd
	.long	0x49
	.value	0x494
	.uleb128 0x9
	.long	.LASF121
	.byte	0x3
	.byte	0xbe
	.long	0x49
	.value	0x498
	.uleb128 0x9
	.long	.LASF122
	.byte	0x3
	.byte	0xbf
	.long	0xa1
	.value	0x49c
	.uleb128 0x9
	.long	.LASF123
	.byte	0x3
	.byte	0xc0
	.long	0x2ef
	.value	0x4a0
	.byte	0
	.uleb128 0xa
	.long	0x34
	.long	0x668
	.uleb128 0xb
	.long	0x65
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.long	.LASF124
	.byte	0x3
	.byte	0xc1
	.long	0x49c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF125
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF126
	.uleb128 0xe
	.long	.LASF127
	.byte	0x1
	.byte	0x1f
	.long	0x6af
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x6af
	.uleb128 0xf
	.string	"p"
	.byte	0x1
	.byte	0x21
	.long	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x491
	.uleb128 0xe
	.long	.LASF128
	.byte	0x1
	.byte	0x34
	.long	0x6e3
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e3
	.uleb128 0xf
	.string	"p"
	.byte	0x1
	.byte	0x36
	.long	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x668
	.uleb128 0x10
	.long	.LASF129
	.byte	0x1
	.byte	0x4b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x715
	.uleb128 0x11
	.string	"pps"
	.byte	0x1
	.byte	0x4b
	.long	0x6af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF133
	.byte	0x1
	.byte	0x60
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.string	"sps"
	.byte	0x1
	.byte	0x60
	.long	0x6e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
.LASF14:
	.string	"Boolean"
.LASF20:
	.string	"vbr_cbr_flag"
.LASF96:
	.string	"level_idc"
.LASF13:
	.string	"byte"
.LASF92:
	.string	"constrained_set0_flag"
.LASF132:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF18:
	.string	"bit_rate_value"
.LASF100:
	.string	"bit_depth_luma_minus8"
.LASF83:
	.string	"chroma_qp_index_offset"
.LASF77:
	.string	"num_ref_idx_l0_active_minus1"
.LASF10:
	.string	"long long unsigned int"
.LASF106:
	.string	"offset_for_non_ref_pic"
.LASF47:
	.string	"nal_hrd_parameters"
.LASF50:
	.string	"low_delay_hrd_flag"
.LASF93:
	.string	"constrained_set1_flag"
.LASF46:
	.string	"nal_hrd_parameters_present_flag"
.LASF37:
	.string	"transfer_characteristics"
.LASF118:
	.string	"frame_cropping_rect_left_offset"
.LASF117:
	.string	"frame_cropping_flag"
.LASF9:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF103:
	.string	"pic_order_cnt_type"
.LASF90:
	.string	"pic_parameter_set_rbsp_t"
.LASF57:
	.string	"max_dec_frame_reordering"
.LASF88:
	.string	"redundant_pic_cnt_present_flag"
.LASF97:
	.string	"chroma_format_idc"
.LASF68:
	.string	"num_slice_groups_minus1"
.LASF6:
	.string	"long int"
.LASF84:
	.string	"cb_qp_index_offset"
.LASF49:
	.string	"vcl_hrd_parameters"
.LASF107:
	.string	"offset_for_top_to_bottom_field"
.LASF128:
	.string	"AllocSPS"
.LASF125:
	.string	"double"
.LASF44:
	.string	"time_scale"
.LASF115:
	.string	"mb_adaptive_frame_field_flag"
.LASF70:
	.string	"run_length_minus1"
.LASF51:
	.string	"bitstream_restriction_flag"
.LASF17:
	.string	"cpb_size_scale"
.LASF64:
	.string	"transform_8x8_mode_flag"
.LASF43:
	.string	"num_units_in_tick"
.LASF102:
	.string	"log2_max_frame_num_minus4"
.LASF82:
	.string	"pic_init_qs_minus26"
.LASF62:
	.string	"seq_parameter_set_id"
.LASF58:
	.string	"max_dec_frame_buffering"
.LASF60:
	.string	"Valid"
.LASF21:
	.string	"initial_cpb_removal_delay_length_minus1"
.LASF56:
	.string	"log2_max_mv_length_horizontal"
.LASF87:
	.string	"constrained_intra_pred_flag"
.LASF3:
	.string	"unsigned int"
.LASF40:
	.string	"chroma_location_frame"
.LASF0:
	.string	"long unsigned int"
.LASF72:
	.string	"bottom_right"
.LASF33:
	.string	"video_format"
.LASF23:
	.string	"dpb_output_delay_length_minus1"
.LASF99:
	.string	"seq_scaling_list_present_flag"
.LASF2:
	.string	"short unsigned int"
.LASF89:
	.string	"vui_pic_parameters_flag"
.LASF38:
	.string	"matrix_coefficients"
.LASF29:
	.string	"sar_height"
.LASF129:
	.string	"FreePPS"
.LASF28:
	.string	"sar_width"
.LASF74:
	.string	"slice_group_change_rate_minus1"
.LASF120:
	.string	"frame_cropping_rect_top_offset"
.LASF130:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF41:
	.string	"chroma_location_field"
.LASF63:
	.string	"entropy_coding_mode_flag"
.LASF32:
	.string	"video_signal_type_present_flag"
.LASF7:
	.string	"sizetype"
.LASF26:
	.string	"aspect_ratio_info_present_flag"
.LASF67:
	.string	"pic_order_present_flag"
.LASF114:
	.string	"frame_mbs_only_flag"
.LASF73:
	.string	"slice_group_change_direction_flag"
.LASF105:
	.string	"delta_pic_order_always_zero_flag"
.LASF131:
	.string	"parsetcommon.c"
.LASF45:
	.string	"fixed_frame_rate_flag"
.LASF42:
	.string	"timing_info_present_flag"
.LASF19:
	.string	"cpb_size_value"
.LASF55:
	.string	"log2_max_mv_length_vertical"
.LASF78:
	.string	"num_ref_idx_l1_active_minus1"
.LASF126:
	.string	"float"
.LASF121:
	.string	"frame_cropping_rect_bottom_offset"
.LASF71:
	.string	"top_left"
.LASF94:
	.string	"constrained_set2_flag"
.LASF16:
	.string	"bit_rate_scale"
.LASF116:
	.string	"direct_8x8_inference_flag"
.LASF122:
	.string	"vui_parameters_present_flag"
.LASF53:
	.string	"max_bytes_per_pic_denom"
.LASF101:
	.string	"bit_depth_chroma_minus8"
.LASF61:
	.string	"pic_parameter_set_id"
.LASF59:
	.string	"vui_seq_parameters_t"
.LASF1:
	.string	"unsigned char"
.LASF119:
	.string	"frame_cropping_rect_right_offset"
.LASF5:
	.string	"short int"
.LASF109:
	.string	"offset_for_ref_frame"
.LASF123:
	.string	"vui_seq_parameters"
.LASF110:
	.string	"num_ref_frames"
.LASF24:
	.string	"time_offset_length"
.LASF31:
	.string	"overscan_appropriate_flag"
.LASF104:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF12:
	.string	"TRUE"
.LASF95:
	.string	"constrained_set3_flag"
.LASF30:
	.string	"overscan_info_present_flag"
.LASF36:
	.string	"colour_primaries"
.LASF27:
	.string	"aspect_ratio_idc"
.LASF15:
	.string	"cpb_cnt"
.LASF8:
	.string	"char"
.LASF127:
	.string	"AllocPPS"
.LASF34:
	.string	"video_full_range_flag"
.LASF91:
	.string	"profile_idc"
.LASF11:
	.string	"FALSE"
.LASF86:
	.string	"deblocking_filter_control_present_flag"
.LASF76:
	.string	"slice_group_id"
.LASF66:
	.string	"pic_scaling_list_present_flag"
.LASF108:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF81:
	.string	"pic_init_qp_minus26"
.LASF124:
	.string	"seq_parameter_set_rbsp_t"
.LASF133:
	.string	"FreeSPS"
.LASF98:
	.string	"seq_scaling_matrix_present_flag"
.LASF111:
	.string	"gaps_in_frame_num_value_allowed_flag"
.LASF112:
	.string	"pic_width_in_mbs_minus1"
.LASF35:
	.string	"colour_description_present_flag"
.LASF85:
	.string	"cr_qp_index_offset"
.LASF75:
	.string	"pic_size_in_map_units_minus1"
.LASF80:
	.string	"weighted_bipred_idc"
.LASF113:
	.string	"pic_height_in_map_units_minus1"
.LASF65:
	.string	"pic_scaling_matrix_present_flag"
.LASF25:
	.string	"hrd_parameters_t"
.LASF79:
	.string	"weighted_pred_flag"
.LASF48:
	.string	"vcl_hrd_parameters_present_flag"
.LASF69:
	.string	"slice_group_map_type"
.LASF52:
	.string	"motion_vectors_over_pic_boundaries_flag"
.LASF39:
	.string	"chroma_location_info_present_flag"
.LASF54:
	.string	"max_bits_per_mb_denom"
.LASF22:
	.string	"cpb_removal_delay_length_minus1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
