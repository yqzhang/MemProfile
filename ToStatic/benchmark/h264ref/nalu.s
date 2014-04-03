	.file	"nalu.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 nalu.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	WriteNALU,8,8
	.globl	RBSPtoNALU
	.type	RBSPtoNALU, @function
RBSPtoNALU:
.LFB0:
	.file 1 "nalu.c"
	.loc 1 54 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# rbsp, rbsp
	movq	%rsi, -32(%rbp)	# nalu, nalu
	movl	%edx, -36(%rbp)	# rbsp_size, rbsp_size
	movl	%ecx, -40(%rbp)	# nal_unit_type, nal_unit_type
	movl	%r8d, -44(%rbp)	# nal_reference_idc, nal_reference_idc
	movl	%r9d, -48(%rbp)	# min_num_bytes, min_num_bytes
	.loc 1 62 0
	movq	-32(%rbp), %rax	# nalu, tmp81
	movl	$0, 20(%rax)	#, nalu_2(D)->forbidden_bit
	.loc 1 63 0
	movq	-32(%rbp), %rax	# nalu, tmp82
	movl	-44(%rbp), %edx	# nal_reference_idc, tmp83
	movl	%edx, 16(%rax)	# tmp83, nalu_2(D)->nal_reference_idc
	.loc 1 64 0
	movq	-32(%rbp), %rax	# nalu, tmp84
	movl	-40(%rbp), %edx	# nal_unit_type, tmp85
	movl	%edx, 12(%rax)	# tmp85, nalu_2(D)->nal_unit_type
	.loc 1 65 0
	cmpl	$0, 16(%rbp)	#, UseAnnexbLongStartcode
	je	.L2	#,
	.loc 1 65 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.0
	jmp	.L3	#
.L2:
	.loc 1 65 0 discriminator 2
	movl	$3, %eax	#, iftmp.0
.L3:
	.loc 1 65 0 discriminator 3
	movq	-32(%rbp), %rdx	# nalu, tmp86
	movl	%eax, (%rdx)	# iftmp.0, nalu_2(D)->startcodeprefix_len
	.loc 1 66 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# nalu, tmp87
	movq	24(%rax), %rax	# nalu_2(D)->buf, D.3795
	.loc 1 67 0 discriminator 3
	movq	-32(%rbp), %rdx	# nalu, tmp88
	movl	20(%rdx), %edx	# nalu_2(D)->forbidden_bit, D.3796
	sall	$7, %edx	#, D.3796
	.loc 1 66 0 discriminator 3
	movl	%edx, %ecx	# D.3796, D.3797
	.loc 1 68 0 discriminator 3
	movq	-32(%rbp), %rdx	# nalu, tmp89
	movl	16(%rdx), %edx	# nalu_2(D)->nal_reference_idc, D.3796
	sall	$5, %edx	#, D.3796
	.loc 1 66 0 discriminator 3
	orl	%edx, %ecx	# D.3797, D.3797
	.loc 1 69 0 discriminator 3
	movq	-32(%rbp), %rdx	# nalu, tmp90
	movl	12(%rdx), %edx	# nalu_2(D)->nal_unit_type, D.3796
	.loc 1 66 0 discriminator 3
	orl	%ecx, %edx	# D.3797, D.3797
	movb	%dl, (%rax)	# D.3798, *_8
	.loc 1 71 0 discriminator 3
	movl	-36(%rbp), %eax	# rbsp_size, tmp91
	movslq	%eax, %rdx	# tmp91, D.3799
	movq	-32(%rbp), %rax	# nalu, tmp92
	movq	24(%rax), %rax	# nalu_2(D)->buf, D.3795
	leaq	1(%rax), %rcx	#, D.3795
	movq	-24(%rbp), %rax	# rbsp, tmp93
	movq	%rax, %rsi	# tmp93,
	movq	%rcx, %rdi	# D.3795,
	call	memcpy	#
	.loc 1 75 0 discriminator 3
	movq	-32(%rbp), %rax	# nalu, tmp94
	movq	24(%rax), %rax	# nalu_2(D)->buf, D.3795
	leaq	1(%rax), %rdi	#, D.3795
	movl	-48(%rbp), %edx	# min_num_bytes, tmp95
	movl	-36(%rbp), %eax	# rbsp_size, tmp96
	movl	%edx, %ecx	# tmp95,
	movl	%eax, %edx	# tmp96,
	movl	$0, %esi	#,
	call	RBSPtoEBSP	#
	addl	$1, %eax	#, tmp97
	movl	%eax, -4(%rbp)	# tmp97, len
	.loc 1 79 0 discriminator 3
	movl	-4(%rbp), %edx	# len, len.1
	movq	-32(%rbp), %rax	# nalu, tmp98
	movl	%edx, 4(%rax)	# len.1, nalu_2(D)->len
	.loc 1 81 0 discriminator 3
	movl	-4(%rbp), %eax	# len, D.3796
	.loc 1 82 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	RBSPtoNALU, .-RBSPtoNALU
.Letext0:
	.file 2 "nalucommon.h"
	.file 3 "defines.h"
	.file 4 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1fe
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF32
	.byte	0x1
	.long	.LASF33
	.long	.LASF34
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x49
	.uleb128 0x5
	.long	.LASF25
	.byte	0x3
	.byte	0x1e
	.long	0x50
	.uleb128 0x4
	.byte	0x8
	.long	0x79
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x9b
	.long	0xc9
	.uleb128 0x7
	.long	.LASF9
	.sleb128 0
	.uleb128 0x7
	.long	.LASF10
	.sleb128 1
	.uleb128 0x7
	.long	.LASF11
	.sleb128 2
	.uleb128 0x7
	.long	.LASF12
	.sleb128 3
	.uleb128 0x7
	.long	.LASF13
	.sleb128 4
	.uleb128 0x7
	.long	.LASF14
	.sleb128 5
	.uleb128 0x7
	.long	.LASF15
	.sleb128 6
	.uleb128 0x7
	.long	.LASF16
	.sleb128 7
	.uleb128 0x7
	.long	.LASF17
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF19
	.uleb128 0x8
	.byte	0x20
	.byte	0x2
	.byte	0x28
	.long	0x134
	.uleb128 0x9
	.long	.LASF20
	.byte	0x2
	.byte	0x2a
	.long	0x42
	.byte	0
	.uleb128 0xa
	.string	"len"
	.byte	0x2
	.byte	0x2b
	.long	0x57
	.byte	0x4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.byte	0x2c
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF22
	.byte	0x2
	.byte	0x2d
	.long	0x42
	.byte	0xc
	.uleb128 0x9
	.long	.LASF23
	.byte	0x2
	.byte	0x2e
	.long	0x42
	.byte	0x10
	.uleb128 0x9
	.long	.LASF24
	.byte	0x2
	.byte	0x2f
	.long	0x42
	.byte	0x14
	.uleb128 0xa
	.string	"buf"
	.byte	0x2
	.byte	0x30
	.long	0x84
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0x2
	.byte	0x31
	.long	0xd7
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.byte	0x34
	.long	0x42
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d1
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x34
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0x34
	.long	0x1d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x34
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.byte	0x34
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.byte	0x34
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.byte	0x35
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.byte	0x35
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x37
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x134
	.uleb128 0xe
	.long	0x42
	.long	0x1e6
	.uleb128 0xf
	.long	0x1d1
	.byte	0
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.byte	0x16
	.long	0x1fb
	.uleb128 0x9
	.byte	0x3
	.quad	WriteNALU
	.uleb128 0x4
	.byte	0x8
	.long	0x1d7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
.LASF9:
	.string	"BITS_HEADER"
.LASF12:
	.string	"BITS_INTER_MB"
.LASF30:
	.string	"min_num_bytes"
.LASF27:
	.string	"rbsp"
.LASF19:
	.string	"float"
.LASF29:
	.string	"rbsp_size"
.LASF31:
	.string	"UseAnnexbLongStartcode"
.LASF20:
	.string	"startcodeprefix_len"
.LASF33:
	.string	"nalu.c"
.LASF18:
	.string	"double"
.LASF25:
	.string	"byte"
.LASF34:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF24:
	.string	"forbidden_bit"
.LASF4:
	.string	"unsigned char"
.LASF28:
	.string	"nalu"
.LASF26:
	.string	"NALU_t"
.LASF36:
	.string	"WriteNALU"
.LASF2:
	.string	"short unsigned int"
.LASF35:
	.string	"RBSPtoNALU"
.LASF13:
	.string	"BITS_CBP_MB"
.LASF21:
	.string	"max_size"
.LASF0:
	.string	"long unsigned int"
.LASF11:
	.string	"BITS_MB_MODE"
.LASF14:
	.string	"BITS_COEFF_Y_MB"
.LASF5:
	.string	"unsigned int"
.LASF23:
	.string	"nal_reference_idc"
.LASF3:
	.string	"char"
.LASF22:
	.string	"nal_unit_type"
.LASF16:
	.string	"BITS_DELTA_QUANT_MB"
.LASF1:
	.string	"sizetype"
.LASF10:
	.string	"BITS_TOTAL_MB"
.LASF32:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF6:
	.string	"signed char"
.LASF17:
	.string	"MAX_BITCOUNTER_MB"
.LASF15:
	.string	"BITS_COEFF_UV_MB"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
