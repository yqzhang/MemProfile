	.file	"qft.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX qft.c -mtune=generic -march=x86-64 -g
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
	.globl	quantum_qft
	.type	quantum_qft, @function
quantum_qft:
.LFB5:
	.file 1 "qft.c"
	.loc 1 32 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# width, width
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 1 35 0
	movl	-20(%rbp), %eax	# width, tmp62
	subl	$1, %eax	#, tmp61
	movl	%eax, -8(%rbp)	# tmp61, i
	jmp	.L2	#
.L5:
	.loc 1 37 0
	movl	-20(%rbp), %eax	# width, tmp66
	subl	$1, %eax	#, tmp65
	movl	%eax, -4(%rbp)	# tmp65, j
	jmp	.L3	#
.L4:
	.loc 1 38 0 discriminator 2
	movq	-32(%rbp), %rdx	# reg, tmp67
	movl	-8(%rbp), %ecx	# i, tmp68
	movl	-4(%rbp), %eax	# j, tmp69
	movl	%ecx, %esi	# tmp68,
	movl	%eax, %edi	# tmp69,
	call	quantum_cond_phase	#
	.loc 1 37 0 discriminator 2
	subl	$1, -4(%rbp)	#, j
.L3:
	.loc 1 37 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp70
	cmpl	-8(%rbp), %eax	# i, tmp70
	jg	.L4	#,
	.loc 1 40 0 is_stmt 1
	movq	-32(%rbp), %rdx	# reg, tmp71
	movl	-8(%rbp), %eax	# i, tmp72
	movq	%rdx, %rsi	# tmp71,
	movl	%eax, %edi	# tmp72,
	call	quantum_hadamard	#
	.loc 1 35 0
	subl	$1, -8(%rbp)	#, i
.L2:
	.loc 1 35 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, i
	jns	.L5	#,
	.loc 1 43 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quantum_qft, .-quantum_qft
	.globl	quantum_qft_inv
	.type	quantum_qft_inv, @function
quantum_qft_inv:
.LFB6:
	.loc 1 47 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# width, width
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 1 50 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L7	#
.L10:
	.loc 1 52 0
	movq	-32(%rbp), %rdx	# reg, tmp59
	movl	-8(%rbp), %eax	# i, tmp60
	movq	%rdx, %rsi	# tmp59,
	movl	%eax, %edi	# tmp60,
	call	quantum_hadamard	#
	.loc 1 54 0
	movl	-8(%rbp), %eax	# i, tmp64
	addl	$1, %eax	#, tmp63
	movl	%eax, -4(%rbp)	# tmp63, j
	jmp	.L8	#
.L9:
	.loc 1 55 0 discriminator 2
	movq	-32(%rbp), %rdx	# reg, tmp65
	movl	-8(%rbp), %ecx	# i, tmp66
	movl	-4(%rbp), %eax	# j, tmp67
	movl	%ecx, %esi	# tmp66,
	movl	%eax, %edi	# tmp67,
	call	quantum_cond_phase_inv	#
	.loc 1 54 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L8:
	.loc 1 54 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp68
	cmpl	-20(%rbp), %eax	# width, tmp68
	jl	.L9	#,
	.loc 1 50 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L7:
	.loc 1 50 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp69
	cmpl	-20(%rbp), %eax	# width, tmp69
	jl	.L10	#,
	.loc 1 59 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	quantum_qft_inv, .-quantum_qft_inv
.Letext0:
	.file 2 "qureg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1bb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF23
	.byte	0x1
	.long	.LASF24
	.long	.LASF25
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x3
	.long	.LASF0
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
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF14
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.long	0xad
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x25
	.long	0x34
	.byte	0
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x26
	.long	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x29
	.long	0x88
	.uleb128 0x4
	.long	.LASF15
	.byte	0x20
	.byte	0x2
	.byte	0x2d
	.long	0x101
	.uleb128 0x5
	.long	.LASF16
	.byte	0x2
	.byte	0x2f
	.long	0x2d
	.byte	0
	.uleb128 0x5
	.long	.LASF17
	.byte	0x2
	.byte	0x30
	.long	0x2d
	.byte	0x4
	.uleb128 0x5
	.long	.LASF18
	.byte	0x2
	.byte	0x31
	.long	0x2d
	.byte	0x8
	.uleb128 0x5
	.long	.LASF19
	.byte	0x2
	.byte	0x32
	.long	0x101
	.byte	0x10
	.uleb128 0x5
	.long	.LASF20
	.byte	0x2
	.byte	0x33
	.long	0x107
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xad
	.uleb128 0x7
	.byte	0x8
	.long	0x2d
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x36
	.long	0xb8
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0x1f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x16a
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x1f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0x1f
	.long	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x21
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0x21
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x10d
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x2e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x2e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0x2e
	.long	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x30
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0x30
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x8
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
.LASF13:
	.string	"state"
.LASF12:
	.string	"amplitude"
.LASF15:
	.string	"quantum_reg_struct"
.LASF21:
	.string	"quantum_reg_node"
.LASF0:
	.string	"complex float"
.LASF25:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF24:
	.string	"qft.c"
.LASF17:
	.string	"size"
.LASF4:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"quantum_qft_inv"
.LASF18:
	.string	"hashw"
.LASF3:
	.string	"unsigned int"
.LASF14:
	.string	"quantum_reg_node_struct"
.LASF22:
	.string	"quantum_reg"
.LASF10:
	.string	"long long unsigned int"
.LASF20:
	.string	"hash"
.LASF8:
	.string	"sizetype"
.LASF11:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF16:
	.string	"width"
.LASF23:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF6:
	.string	"short int"
.LASF19:
	.string	"node"
.LASF26:
	.string	"quantum_qft"
.LASF7:
	.string	"long int"
.LASF5:
	.string	"signed char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits