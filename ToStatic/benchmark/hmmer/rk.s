	.file	"rk.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 rk.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	rkcomp
	.type	rkcomp, @function
rkcomp:
.LFB2:
	.file 1 "rk.c"
	.loc 1 35 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# probe, probe
	.loc 1 35 0
	movq	%fs:40, %rax	#, tmp74
	movq	%rax, -8(%rbp)	# tmp74, D.5754
	xorl	%eax, %eax	# tmp74
	.loc 1 36 0
	movq	$0, -40(%rbp)	#, hashprobe
	.loc 1 41 0
	movq	-56(%rbp), %rax	# probe, tmp67
	movq	%rax, %rdi	# tmp67,
	call	strlen	#
	movl	%eax, -44(%rbp)	# D.5751, len
	movl	-44(%rbp), %eax	# len, len.0
	cmpl	$16, %eax	#, len.0
	jbe	.L2	#,
	.loc 1 41 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5750
	jmp	.L9	#
.L2:
	.loc 1 43 0 is_stmt 1
	movq	-56(%rbp), %rdx	# probe, tmp68
	leaq	-32(%rbp), %rax	#, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	seqencode	#
	testl	%eax, %eax	# D.5752
	jne	.L4	#,
	.loc 1 43 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5750
	jmp	.L9	#
.L4:
	.loc 1 45 0 is_stmt 1
	movl	$0, -48(%rbp)	#, i
	jmp	.L5	#
.L6:
	.loc 1 47 0 discriminator 2
	salq	$4, -40(%rbp)	#, hashprobe
	.loc 1 48 0 discriminator 2
	movl	-48(%rbp), %eax	# i, tmp71
	cltq
	movzbl	-32(%rbp,%rax), %eax	# coded, D.5753
	movsbq	%al, %rax	# D.5753, D.5751
	orq	%rax, -40(%rbp)	# D.5751, hashprobe
	.loc 1 45 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L5:
	.loc 1 45 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp72
	cmpl	-44(%rbp), %eax	# len, tmp72
	jl	.L6	#,
	.loc 1 51 0 is_stmt 1
	jmp	.L7	#
.L8:
	.loc 1 53 0 discriminator 2
	salq	$4, -40(%rbp)	#, hashprobe
	.loc 1 54 0 discriminator 2
	orq	$15, -40(%rbp)	#, hashprobe
	.loc 1 51 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L7:
	.loc 1 51 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, i.1
	cmpl	$15, %eax	#, i.1
	jbe	.L8	#,
	.loc 1 57 0 is_stmt 1
	movq	-40(%rbp), %rax	# hashprobe, D.5750
.L9:
	.loc 1 58 0
	movq	-8(%rbp), %rcx	# D.5754, tmp75
	xorq	%fs:40, %rcx	#, tmp75
	je	.L10	#,
	call	__stack_chk_fail	#
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	rkcomp, .-rkcomp
	.globl	rkseq
	.type	rkseq, @function
rkseq:
.LFB3:
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# hashprobe, hashprobe
	movq	%rsi, -48(%rbp)	# sequence, sequence
	.loc 1 65 0
	movq	$0, -16(%rbp)	#, pos
	.loc 1 66 0
	movq	$0, -8(%rbp)	#, target
	.loc 1 69 0
	movq	$0, -24(%rbp)	#, i
	jmp	.L12	#
.L15:
	.loc 1 71 0
	movq	-24(%rbp), %rdx	# i, i.2
	movq	-48(%rbp), %rax	# sequence, tmp81
	addq	%rdx, %rax	# i.2, D.5758
	movzbl	(%rax), %eax	# *_15, D.5759
	testb	%al, %al	# D.5759
	jne	.L13	#,
	.loc 1 72 0
	jmp	.L14	#
.L13:
	.loc 1 73 0
	salq	$4, -8(%rbp)	#, target
	.loc 1 74 0
	movq	-24(%rbp), %rdx	# i, i.3
	movq	-48(%rbp), %rax	# sequence, tmp82
	addq	%rdx, %rax	# i.3, D.5758
	movzbl	(%rax), %eax	# *_19, D.5759
	movsbq	%al, %rax	# D.5759, D.5760
	orq	%rax, -8(%rbp)	# D.5760, target
	.loc 1 69 0
	addq	$1, -24(%rbp)	#, i
.L12:
	.loc 1 69 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# i, i.4
	cmpq	$15, %rax	#, i.4
	jbe	.L15	#,
.L14:
	.loc 1 77 0 is_stmt 1
	jmp	.L16	#
.L19:
	.loc 1 88 0
	movq	-8(%rbp), %rax	# target, tmp83
	movq	-40(%rbp), %rdx	# hashprobe, tmp84
	andq	%rdx, %rax	# tmp84, D.5760
	cmpq	-8(%rbp), %rax	# target, D.5760
	jne	.L17	#,
	.loc 1 89 0
	movq	-16(%rbp), %rax	# pos, tmp85
	jmp	.L18	#
.L17:
	.loc 1 90 0
	salq	$4, -8(%rbp)	#, target
	.loc 1 91 0
	movq	-16(%rbp), %rax	# pos, pos.5
	leaq	16(%rax), %rdx	#, D.5761
	movq	-48(%rbp), %rax	# sequence, tmp86
	addq	%rdx, %rax	# D.5761, D.5758
	movzbl	(%rax), %eax	# *_34, D.5759
	movsbq	%al, %rax	# D.5759, D.5760
	orq	%rax, -8(%rbp)	# D.5760, target
	.loc 1 92 0
	addq	$1, -16(%rbp)	#, pos
.L16:
	.loc 1 77 0 discriminator 1
	movq	-16(%rbp), %rax	# pos, pos.6
	leaq	15(%rax), %rdx	#, D.5761
	movq	-48(%rbp), %rax	# sequence, tmp87
	addq	%rdx, %rax	# D.5761, D.5758
	movzbl	(%rax), %eax	# *_26, D.5759
	testb	%al, %al	# D.5759
	jne	.L19	#,
	.loc 1 95 0
	movq	$0, -24(%rbp)	#, i
	jmp	.L20	#
.L22:
	.loc 1 97 0
	orq	$15, -8(%rbp)	#, target
	.loc 1 98 0
	movq	-8(%rbp), %rax	# target, tmp88
	movq	-40(%rbp), %rdx	# hashprobe, tmp89
	andq	%rdx, %rax	# tmp89, D.5760
	cmpq	-8(%rbp), %rax	# target, D.5760
	jne	.L21	#,
	.loc 1 99 0
	movq	-16(%rbp), %rax	# pos, tmp90
	jmp	.L18	#
.L21:
	.loc 1 100 0
	salq	$4, -8(%rbp)	#, target
	.loc 1 101 0
	addq	$1, -16(%rbp)	#, pos
	.loc 1 95 0
	addq	$1, -24(%rbp)	#, i
.L20:
	.loc 1 95 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# i, i.7
	cmpq	$15, %rax	#, i.7
	jbe	.L22	#,
	.loc 1 104 0 is_stmt 1
	movl	$-1, %eax	#, D.5757
.L18:
	.loc 1 105 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	rkseq, .-rkseq
.Letext0:
	.file 2 "rk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x176
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF18
	.byte	0x1
	.long	.LASF19
	.long	.LASF20
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF21
	.byte	0x2
	.byte	0x19
	.long	0x2d
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x22
	.long	0x95
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x107
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x22
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.byte	0x24
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0x25
	.long	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x26
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xa
	.long	0x72
	.long	0x117
	.uleb128 0xb
	.long	0x65
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x3d
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x3e
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"pos"
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.byte	0x42
	.long	0x95
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
.LASF17:
	.string	"target"
.LASF3:
	.string	"unsigned int"
.LASF21:
	.string	"Hashseq"
.LASF19:
	.string	"rk.c"
.LASF12:
	.string	"long long unsigned int"
.LASF9:
	.string	"float"
.LASF15:
	.string	"probe"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF18:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF11:
	.string	"long long int"
.LASF16:
	.string	"sequence"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF20:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF13:
	.string	"hashprobe"
.LASF22:
	.string	"rkcomp"
.LASF5:
	.string	"short int"
.LASF23:
	.string	"rkseq"
.LASF7:
	.string	"sizetype"
.LASF14:
	.string	"coded"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
