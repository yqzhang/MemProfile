	.file	"translate.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 translate.c -mtune=generic -march=x86-64 -g
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
	.string	"calloc failed"
	.text
	.globl	Translate
	.type	Translate, @function
Translate:
.LFB2:
	.file 1 "translate.c"
	.loc 1 49 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# seq, seq
	movq	%rsi, -48(%rbp)	# code, code
	.loc 1 55 0
	cmpq	$0, -40(%rbp)	#, seq
	jne	.L2	#,
	.loc 1 56 0
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.5626
	jmp	.L3	#
.L2:
	.loc 1 57 0
	movq	-40(%rbp), %rax	# seq, tmp81
	movq	%rax, %rdi	# tmp81,
	call	strlen	#
	addq	$1, %rax	#, D.5627
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.5627,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp82, aaseq
	cmpq	$0, -8(%rbp)	#, aaseq
	jne	.L4	#,
	.loc 1 58 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L4:
	.loc 1 60 0
	movq	-8(%rbp), %rax	# aaseq, tmp83
	movq	%rax, -16(%rbp)	# tmp83, aaptr
	.loc 1 61 0
	jmp	.L5	#
.L19:
	.loc 1 65 0
	movl	$0, -24(%rbp)	#, codon
	.loc 1 66 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L6	#
.L17:
	.loc 1 68 0
	sall	$2, -24(%rbp)	#, codon
	.loc 1 69 0
	movl	-20(%rbp), %eax	# i, tmp84
	movslq	%eax, %rdx	# tmp84, D.5629
	movq	-40(%rbp), %rax	# seq, tmp85
	addq	%rdx, %rax	# D.5629, D.5626
	movzbl	(%rax), %eax	# *_23, D.5628
	movsbl	%al, %eax	# D.5628, D.5630
	subl	$65, %eax	#, tmp86
	cmpl	$52, %eax	#, tmp86
	ja	.L7	#,
	movl	%eax, %eax	# tmp86, tmp87
	movq	.L9(,%rax,8), %rax	#, tmp88
	jmp	*%rax	# tmp88
	.section	.rodata
	.align 8
	.align 4
.L9:
	.quad	.L20
	.quad	.L7
	.quad	.L10
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L11
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L12
	.quad	.L13
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L20
	.quad	.L7
	.quad	.L10
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L11
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L7
	.quad	.L12
	.quad	.L13
	.text
.L10:
	.loc 1 71 0
	addl	$1, -24(%rbp)	#, codon
	jmp	.L14	#
.L11:
	.loc 1 72 0
	addl	$2, -24(%rbp)	#, codon
	jmp	.L14	#
.L12:
	.loc 1 73 0
	addl	$3, -24(%rbp)	#, codon
	jmp	.L14	#
.L13:
	.loc 1 74 0
	addl	$3, -24(%rbp)	#, codon
	jmp	.L14	#
.L7:
	.loc 1 75 0
	movl	$64, -24(%rbp)	#, codon
	jmp	.L14	#
.L20:
	.loc 1 70 0
	nop
.L14:
	.loc 1 77 0
	cmpl	$64, -24(%rbp)	#, codon
	jne	.L15	#,
	.loc 1 77 0 is_stmt 0 discriminator 1
	jmp	.L16	#
.L15:
	.loc 1 66 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L6:
	.loc 1 66 0 is_stmt 0 discriminator 1
	cmpl	$2, -20(%rbp)	#, i
	jle	.L17	#,
.L16:
	.loc 1 80 0 is_stmt 1
	movl	-24(%rbp), %eax	# codon, tmp89
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5627
	movq	-48(%rbp), %rax	# code, tmp90
	addq	%rdx, %rax	# D.5627, D.5631
	movq	(%rax), %rdx	# *_35, D.5626
	movq	-16(%rbp), %rax	# aaptr, tmp91
	movq	%rdx, %rsi	# D.5626,
	movq	%rax, %rdi	# tmp91,
	call	strcpy	#
	.loc 1 81 0
	movl	-24(%rbp), %eax	# codon, tmp92
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5627
	movq	-48(%rbp), %rax	# code, tmp93
	addq	%rdx, %rax	# D.5627, D.5631
	movq	(%rax), %rax	# *_39, D.5626
	movq	%rax, %rdi	# D.5626,
	call	strlen	#
	addq	%rax, -16(%rbp)	# D.5627, aaptr
	.loc 1 61 0
	addq	$3, -40(%rbp)	#, seq
.L5:
	.loc 1 61 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# seq, tmp94
	movzbl	(%rax), %eax	# *seq_1, D.5628
	testb	%al, %al	# D.5628
	je	.L18	#,
	.loc 1 61 0 discriminator 2
	movq	-40(%rbp), %rax	# seq, tmp95
	addq	$1, %rax	#, D.5626
	movzbl	(%rax), %eax	# *_15, D.5628
	testb	%al, %al	# D.5628
	je	.L18	#,
	.loc 1 61 0 discriminator 1
	movq	-40(%rbp), %rax	# seq, tmp96
	addq	$2, %rax	#, D.5626
	movzbl	(%rax), %eax	# *_17, D.5628
	testb	%al, %al	# D.5628
	jne	.L19	#,
.L18:
	.loc 1 83 0 is_stmt 1
	movq	-8(%rbp), %rax	# aaseq, D.5626
.L3:
	.loc 1 84 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Translate, .-Translate
.Letext0:
	.file 2 "squid.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x117
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF17
	.byte	0x1
	.long	.LASF18
	.long	.LASF19
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
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x5
	.long	.LASF20
	.byte	0x1
	.byte	0x30
	.long	0x6c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f
	.uleb128 0x6
	.string	"seq"
	.byte	0x1
	.byte	0x30
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x30
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0x32
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x33
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x34
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x35
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.byte	0x3b
	.long	0x57
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
	.uleb128 0x6
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
.LASF2:
	.string	"short unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF16:
	.string	"aaptr"
.LASF0:
	.string	"long unsigned int"
.LASF12:
	.string	"long long unsigned int"
.LASF15:
	.string	"aaseq"
.LASF21:
	.string	"squid_errno"
.LASF20:
	.string	"Translate"
.LASF8:
	.string	"char"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"codon"
.LASF6:
	.string	"long int"
.LASF17:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF10:
	.string	"double"
.LASF11:
	.string	"long long int"
.LASF13:
	.string	"code"
.LASF4:
	.string	"signed char"
.LASF19:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF9:
	.string	"float"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF18:
	.string	"translate.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
