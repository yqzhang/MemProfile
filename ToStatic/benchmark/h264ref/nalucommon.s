	.file	"nalucommon.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 nalucommon.c -mtune=generic -march=x86-64 -g
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
	.string	"AllocNALU: n"
.LC1:
	.string	"AllocNALU: n->buf"
	.text
	.globl	AllocNALU
	.type	AllocNALU, @function
AllocNALU:
.LFB2:
	.file 1 "nalucommon.c"
	.loc 1 36 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# buffersize, buffersize
	.loc 1 39 0
	movl	$32, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp65, n
	cmpq	$0, -8(%rbp)	#, n
	jne	.L2	#,
	.loc 1 39 0 is_stmt 0 discriminator 1
	movl	$.LC0, %edi	#,
	call	no_mem_exit	#
.L2:
	.loc 1 41 0 is_stmt 1
	movl	-20(%rbp), %edx	# buffersize, buffersize.0
	movq	-8(%rbp), %rax	# n, tmp66
	movl	%edx, 8(%rax)	# buffersize.0, n_1->max_size
	.loc 1 43 0
	movl	-20(%rbp), %eax	# buffersize, tmp67
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.4115,
	call	calloc	#
	movq	%rax, %rdx	# tmp68, D.4116
	movq	-8(%rbp), %rax	# n, tmp69
	movq	%rdx, 24(%rax)	# D.4116, n_1->buf
	movq	-8(%rbp), %rax	# n, tmp70
	movq	24(%rax), %rax	# n_1->buf, D.4117
	testq	%rax, %rax	# D.4117
	jne	.L3	#,
	.loc 1 43 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L3:
	.loc 1 45 0 is_stmt 1
	movq	-8(%rbp), %rax	# n, D.4118
	.loc 1 46 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	AllocNALU, .-AllocNALU
	.globl	FreeNALU
	.type	FreeNALU, @function
FreeNALU:
.LFB3:
	.loc 1 61 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# n, n
	.loc 1 62 0
	cmpq	$0, -8(%rbp)	#, n
	je	.L5	#,
	.loc 1 64 0
	movq	-8(%rbp), %rax	# n, tmp61
	movq	24(%rax), %rax	# n_1(D)->buf, D.4121
	testq	%rax, %rax	# D.4121
	je	.L7	#,
	.loc 1 66 0
	movq	-8(%rbp), %rax	# n, tmp62
	movq	24(%rax), %rax	# n_1(D)->buf, D.4121
	movq	%rax, %rdi	# D.4121,
	call	free	#
	.loc 1 67 0
	movq	-8(%rbp), %rax	# n, tmp63
	movq	$0, 24(%rax)	#, n_1(D)->buf
.L7:
	.loc 1 69 0
	movq	-8(%rbp), %rax	# n, tmp64
	movq	%rax, %rdi	# tmp64,
	call	free	#
.L5:
	.loc 1 71 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	FreeNALU, .-FreeNALU
.Letext0:
	.file 2 "nalucommon.h"
	.file 3 "defines.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF21
	.byte	0x1
	.long	.LASF22
	.long	.LASF23
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
	.long	.LASF18
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x5
	.byte	0x8
	.long	0x81
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x6
	.byte	0x20
	.byte	0x2
	.byte	0x28
	.long	0xfd
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x2a
	.long	0x34
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x2
	.byte	0x2b
	.long	0x49
	.byte	0x4
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.byte	0x2c
	.long	0x49
	.byte	0x8
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.byte	0x2d
	.long	0x34
	.byte	0xc
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0x2e
	.long	0x34
	.byte	0x10
	.uleb128 0x7
	.long	.LASF17
	.byte	0x2
	.byte	0x2f
	.long	0x34
	.byte	0x14
	.uleb128 0x8
	.string	"buf"
	.byte	0x2
	.byte	0x30
	.long	0x8c
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0x31
	.long	0xa0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x23
	.long	0x144
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x144
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0x23
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.string	"n"
	.byte	0x1
	.byte	0x25
	.long	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xfd
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0x3c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0x3c
	.long	0x144
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.string	"long long int"
.LASF3:
	.string	"unsigned int"
.LASF23:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF25:
	.string	"FreeNALU"
.LASF18:
	.string	"byte"
.LASF17:
	.string	"forbidden_bit"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"startcodeprefix_len"
.LASF16:
	.string	"nal_reference_idc"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF19:
	.string	"NALU_t"
.LASF6:
	.string	"long int"
.LASF21:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF0:
	.string	"long unsigned int"
.LASF11:
	.string	"double"
.LASF15:
	.string	"nal_unit_type"
.LASF20:
	.string	"buffersize"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF24:
	.string	"AllocNALU"
.LASF12:
	.string	"float"
.LASF5:
	.string	"short int"
.LASF22:
	.string	"nalucommon.c"
.LASF7:
	.string	"sizetype"
.LASF14:
	.string	"max_size"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
