	.file	"clustal.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 clustal.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
.LC0:
	.string	"CLUSTAL"
.LC1:
	.string	"multiple sequence alignment"
.LC2:
	.string	" \t\n"
.LC3:
	.string	"\n"
.LC4:
	.string	".*:"
	.align 8
.LC5:
	.string	"Parse failed at line %d, file %s: possibly using spaces as gaps"
	.text
	.globl	ReadClustal
	.type	ReadClustal, @function
ReadClustal:
.LFB2:
	.file 1 "clustal.c"
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# afp, afp
	.loc 1 89 0
	movq	-72(%rbp), %rax	# afp, tmp93
	movq	(%rax), %rax	# afp_2(D)->f, D.5789
	movq	%rax, %rdi	# D.5789,
	call	feof	#
	testl	%eax, %eax	# D.5790
	je	.L2	#,
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5788
	jmp	.L14	#
.L2:
	.loc 1 93 0 is_stmt 1
	jmp	.L4	#
.L6:
	.loc 1 95 0
	movq	-56(%rbp), %rax	# s, s.0
	movl	$7, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# s.0,
	call	strncmp	#
	testl	%eax, %eax	# D.5790
	jne	.L4	#,
	.loc 1 96 0 discriminator 1
	movq	-56(%rbp), %rax	# s, s.1
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# s.1,
	call	strstr	#
	.loc 1 95 0 discriminator 1
	testq	%rax, %rax	# D.5791
	je	.L4	#,
	.loc 1 97 0
	jmp	.L5	#
.L4:
	.loc 1 93 0 discriminator 1
	movq	-72(%rbp), %rax	# afp, tmp94
	movq	%rax, %rdi	# tmp94,
	call	MSAFileGetLine	#
	movq	%rax, -56(%rbp)	# s.2, s
	movq	-56(%rbp), %rax	# s, s.3
	testq	%rax, %rax	# s.3
	jne	.L6	#,
.L5:
	.loc 1 99 0
	movq	-56(%rbp), %rax	# s, s.4
	testq	%rax, %rax	# s.4
	jne	.L7	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5788
	jmp	.L14	#
.L7:
	.loc 1 101 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$10, %edi	#,
	call	MSAAlloc	#
	movq	%rax, -48(%rbp)	# tmp95, msa
	.loc 1 108 0
	jmp	.L8	#
.L13:
	.loc 1 110 0
	leaq	-56(%rbp), %rax	#, tmp96
	movl	$0, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	sre_strtok	#
	movq	%rax, -40(%rbp)	# tmp97, name
	cmpq	$0, -40(%rbp)	#, name
	jne	.L9	#,
	.loc 1 110 0 is_stmt 0 discriminator 1
	jmp	.L8	#
.L9:
	.loc 1 111 0 is_stmt 1
	leaq	-64(%rbp), %rdx	#, tmp98
	leaq	-56(%rbp), %rax	#, tmp99
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	sre_strtok	#
	movq	%rax, -32(%rbp)	# tmp100, seq
	cmpq	$0, -32(%rbp)	#, seq
	jne	.L10	#,
	.loc 1 111 0 is_stmt 0 discriminator 1
	jmp	.L8	#
.L10:
	.loc 1 112 0 is_stmt 1
	leaq	-56(%rbp), %rax	#, tmp101
	movl	$0, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp102, s2
	.loc 1 116 0
	movq	-40(%rbp), %rax	# name, tmp103
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	strpbrk	#
	testq	%rax, %rax	# D.5791
	je	.L11	#,
	.loc 1 116 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# seq, tmp104
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	strpbrk	#
	testq	%rax, %rax	# D.5791
	je	.L11	#,
	.loc 1 117 0 is_stmt 1
	jmp	.L8	#
.L11:
	.loc 1 118 0
	cmpq	$0, -24(%rbp)	#, s2
	je	.L12	#,
	.loc 1 119 0
	movq	-72(%rbp), %rax	# afp, tmp105
	movq	8(%rax), %rdx	# afp_2(D)->fname, D.5791
	movq	-72(%rbp), %rax	# afp, tmp106
	movl	16(%rax), %eax	# afp_2(D)->linenumber, D.5790
	movl	%eax, %esi	# D.5790,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L12:
	.loc 1 124 0
	movq	-48(%rbp), %rax	# msa, tmp107
	movl	352(%rax), %eax	# msa_14->lastidx, D.5790
	leal	1(%rax), %edx	#, D.5790
	movq	-40(%rbp), %rcx	# name, tmp108
	movq	-48(%rbp), %rax	# msa, tmp109
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	MSAGetSeqidx	#
	movl	%eax, -60(%rbp)	# tmp110, sqidx
	.loc 1 125 0
	movq	-48(%rbp), %rax	# msa, tmp111
	movl	-60(%rbp), %edx	# sqidx, tmp112
	movl	%edx, 352(%rax)	# tmp112, msa_14->lastidx
	.loc 1 126 0
	movq	-48(%rbp), %rax	# msa, tmp113
	movq	328(%rax), %rax	# msa_14->sqlen, D.5792
	movl	-60(%rbp), %edx	# sqidx, tmp114
	movslq	%edx, %rdx	# tmp114, D.5793
	salq	$2, %rdx	#, D.5793
	leaq	(%rax,%rdx), %rbx	#, D.5792
	movl	-64(%rbp), %ecx	# slen, slen.5
	movq	-48(%rbp), %rax	# msa, tmp115
	movq	328(%rax), %rax	# msa_14->sqlen, D.5792
	movl	-60(%rbp), %edx	# sqidx, tmp116
	movslq	%edx, %rdx	# tmp116, D.5793
	salq	$2, %rdx	#, D.5793
	addq	%rdx, %rax	# D.5793, D.5792
	movl	(%rax), %eax	# *_35, D.5790
	movq	-48(%rbp), %rdx	# msa, tmp117
	movq	(%rdx), %rdx	# msa_14->aseq, D.5794
	movl	-60(%rbp), %esi	# sqidx, tmp118
	movslq	%esi, %rsi	# tmp118, D.5793
	salq	$3, %rsi	#, D.5793
	leaq	(%rdx,%rsi), %rdi	#, D.5794
	movq	-32(%rbp), %rdx	# seq, tmp119
	movl	%eax, %esi	# D.5790,
	call	sre_strcat	#
	movl	%eax, (%rbx)	# D.5790, *_30
.L8:
	.loc 1 108 0 discriminator 1
	movq	-72(%rbp), %rax	# afp, tmp120
	movq	%rax, %rdi	# tmp120,
	call	MSAFileGetLine	#
	movq	%rax, -56(%rbp)	# s.6, s
	movq	-56(%rbp), %rax	# s, s.7
	testq	%rax, %rax	# s.7
	jne	.L13	#,
	.loc 1 129 0
	movq	-48(%rbp), %rax	# msa, tmp121
	movq	%rax, %rdi	# tmp121,
	call	MSAVerifyParse	#
	.loc 1 130 0
	movq	-48(%rbp), %rax	# msa, D.5788
.L14:
	.loc 1 131 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ReadClustal, .-ReadClustal
	.section	.rodata
	.align 8
.LC6:
	.string	"CLUSTAL W(1.5) multiple sequence alignment\n"
.LC7:
	.string	"%*s %s\n"
	.text
	.globl	WriteClustal
	.type	WriteClustal, @function
WriteClustal:
.LFB3:
	.loc 1 146 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -120(%rbp)	# fp, fp
	movq	%rsi, -128(%rbp)	# msa, msa
	.loc 1 146 0
	movq	%fs:40, %rax	#, tmp103
	movq	%rax, -8(%rbp)	# tmp103, D.5806
	xorl	%eax, %eax	# tmp103
	.loc 1 152 0
	movl	$50, -88(%rbp)	#, cpl
	.loc 1 155 0
	movl	$0, -96(%rbp)	#, namelen
	.loc 1 156 0
	movl	$0, -100(%rbp)	#, idx
	jmp	.L16	#
.L18:
	.loc 1 157 0
	movq	-128(%rbp), %rax	# msa, tmp81
	movq	8(%rax), %rax	# msa_9(D)->sqname, D.5802
	movl	-100(%rbp), %edx	# idx, tmp82
	movslq	%edx, %rdx	# tmp82, D.5803
	salq	$3, %rdx	#, D.5803
	addq	%rdx, %rax	# D.5803, D.5802
	movq	(%rax), %rax	# *_14, D.5804
	movq	%rax, %rdi	# D.5804,
	call	strlen	#
	movl	%eax, -84(%rbp)	# D.5803, len
	movl	-84(%rbp), %eax	# len, tmp83
	cmpl	-96(%rbp), %eax	# namelen, tmp83
	jle	.L17	#,
	.loc 1 158 0
	movl	-84(%rbp), %eax	# len, tmp84
	movl	%eax, -96(%rbp)	# tmp84, namelen
.L17:
	.loc 1 156 0
	addl	$1, -100(%rbp)	#, idx
.L16:
	.loc 1 156 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# msa, tmp85
	movl	28(%rax), %eax	# msa_9(D)->nseq, D.5801
	cmpl	-100(%rbp), %eax	# idx, D.5801
	jg	.L18	#,
	.loc 1 160 0 is_stmt 1
	movq	-120(%rbp), %rax	# fp, tmp86
	movq	%rax, %rcx	# tmp86,
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	fwrite	#
	.loc 1 166 0
	movl	$0, -92(%rbp)	#, pos
	jmp	.L19	#
.L22:
	.loc 1 168 0
	movq	-120(%rbp), %rax	# fp, tmp87
	movq	%rax, %rsi	# tmp87,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 169 0
	movl	$0, -100(%rbp)	#, idx
	jmp	.L20	#
.L21:
	.loc 1 171 0 discriminator 2
	movl	-88(%rbp), %eax	# cpl, tmp88
	movslq	%eax, %rdx	# tmp88, D.5803
	movq	-128(%rbp), %rax	# msa, tmp89
	movq	(%rax), %rax	# msa_9(D)->aseq, D.5802
	movl	-100(%rbp), %ecx	# idx, tmp90
	movslq	%ecx, %rcx	# tmp90, D.5803
	salq	$3, %rcx	#, D.5803
	addq	%rcx, %rax	# D.5803, D.5802
	movq	(%rax), %rcx	# *_29, D.5804
	movl	-92(%rbp), %eax	# pos, tmp91
	cltq
	addq	%rax, %rcx	# D.5805, D.5804
	leaq	-80(%rbp), %rax	#, tmp92
	movq	%rcx, %rsi	# D.5804,
	movq	%rax, %rdi	# tmp92,
	call	strncpy	#
	.loc 1 172 0 discriminator 2
	movl	-88(%rbp), %eax	# cpl, tmp94
	cltq
	movb	$0, -80(%rbp,%rax)	#, buf
	.loc 1 173 0 discriminator 2
	movq	-128(%rbp), %rax	# msa, tmp95
	movq	8(%rax), %rax	# msa_9(D)->sqname, D.5802
	movl	-100(%rbp), %edx	# idx, tmp96
	movslq	%edx, %rdx	# tmp96, D.5803
	salq	$3, %rdx	#, D.5803
	addq	%rdx, %rax	# D.5803, D.5802
	movq	(%rax), %rcx	# *_36, D.5804
	leaq	-80(%rbp), %rsi	#, tmp97
	movl	-96(%rbp), %edx	# namelen, tmp98
	movq	-120(%rbp), %rax	# fp, tmp99
	movq	%rsi, %r8	# tmp97,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 169 0 discriminator 2
	addl	$1, -100(%rbp)	#, idx
.L20:
	.loc 1 169 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# msa, tmp100
	movl	28(%rax), %eax	# msa_9(D)->nseq, D.5801
	cmpl	-100(%rbp), %eax	# idx, D.5801
	jg	.L21	#,
	.loc 1 166 0 is_stmt 1
	movl	-88(%rbp), %eax	# cpl, tmp101
	addl	%eax, -92(%rbp)	# tmp101, pos
.L19:
	.loc 1 166 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# msa, tmp102
	movl	24(%rax), %eax	# msa_9(D)->alen, D.5801
	cmpl	-92(%rbp), %eax	# pos, D.5801
	jg	.L22	#,
	.loc 1 177 0 is_stmt 1
	nop
	.loc 1 178 0
	movq	-8(%rbp), %rax	# D.5806, tmp104
	xorq	%fs:40, %rax	#, tmp104
	je	.L24	#,
	call	__stack_chk_fail	#
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	WriteClustal, .-WriteClustal
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "gki.h"
	.file 8 "ssi.h"
	.file 9 "msa.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x908
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF124
	.byte	0x1
	.long	.LASF125
	.long	.LASF126
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF127
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x2a
	.long	0x29f
	.uleb128 0xb
	.long	0x95
	.long	0x2e5
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.long	.LASF54
	.byte	0x18
	.byte	0x7
	.byte	0x1a
	.long	0x316
	.uleb128 0xd
	.string	"key"
	.byte	0x7
	.byte	0x1b
	.long	0x8f
	.byte	0
	.uleb128 0xd
	.string	"idx"
	.byte	0x7
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0xd
	.string	"nxt"
	.byte	0x7
	.byte	0x1d
	.long	0x316
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e5
	.uleb128 0xe
	.byte	0x18
	.byte	0x7
	.byte	0x24
	.long	0x355
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x25
	.long	0x355
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x316
	.uleb128 0xf
	.string	"GKI"
	.byte	0x7
	.byte	0x2a
	.long	0x31c
	.uleb128 0x10
	.byte	0x8
	.byte	0x8
	.byte	0x25
	.long	0x385
	.uleb128 0x11
	.string	"i32"
	.byte	0x8
	.byte	0x26
	.long	0x2bf
	.uleb128 0x11
	.string	"i64"
	.byte	0x8
	.byte	0x27
	.long	0x2ca
	.byte	0
	.uleb128 0x7
	.long	.LASF59
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.long	0x3aa
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0x24
	.long	0x95
	.byte	0
	.uleb128 0xd
	.string	"off"
	.byte	0x8
	.byte	0x28
	.long	0x366
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x8
	.byte	0x2a
	.long	0x385
	.uleb128 0x7
	.long	.LASF62
	.byte	0x90
	.byte	0x8
	.byte	0x31
	.long	0x4bd
	.uleb128 0xd
	.string	"fp"
	.byte	0x8
	.byte	0x32
	.long	0x4bd
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x33
	.long	0x2bf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x34
	.long	0x2b4
	.byte	0xc
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x35
	.long	0x2bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x36
	.long	0x2bf
	.byte	0x14
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x37
	.long	0x2bf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x38
	.long	0x2bf
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x39
	.long	0x2bf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0x3a
	.long	0x2bf
	.byte	0x24
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x3b
	.long	0x2bf
	.byte	0x28
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x3c
	.long	0x2bf
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0x3d
	.long	0x3aa
	.byte	0x30
	.uleb128 0x8
	.long	.LASF74
	.byte	0x8
	.byte	0x3e
	.long	0x3aa
	.byte	0x40
	.uleb128 0x8
	.long	.LASF75
	.byte	0x8
	.byte	0x3f
	.long	0x3aa
	.byte	0x50
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0x41
	.long	0x95
	.byte	0x60
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0x42
	.long	0x95
	.byte	0x61
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0x46
	.long	0x4c3
	.byte	0x68
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0x47
	.long	0x4c9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.byte	0x48
	.long	0x4c9
	.byte	0x78
	.uleb128 0xd
	.string	"bpl"
	.byte	0x8
	.byte	0x49
	.long	0x4c9
	.byte	0x80
	.uleb128 0xd
	.string	"rpl"
	.byte	0x8
	.byte	0x4a
	.long	0x4c9
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x2bf
	.uleb128 0x2
	.long	.LASF81
	.byte	0x8
	.byte	0x4c
	.long	0x3b5
	.uleb128 0x6
	.byte	0x8
	.long	0x2a6
	.uleb128 0x12
	.long	.LASF82
	.value	0x168
	.byte	0x9
	.byte	0x70
	.long	0x71c
	.uleb128 0x8
	.long	.LASF83
	.byte	0x9
	.byte	0x73
	.long	0x4c3
	.byte	0
	.uleb128 0x8
	.long	.LASF84
	.byte	0x9
	.byte	0x74
	.long	0x4c3
	.byte	0x8
	.uleb128 0xd
	.string	"wgt"
	.byte	0x9
	.byte	0x75
	.long	0x4da
	.byte	0x10
	.uleb128 0x8
	.long	.LASF85
	.byte	0x9
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF86
	.byte	0x9
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF63
	.byte	0x9
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF88
	.byte	0x9
	.byte	0x7d
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF89
	.byte	0x9
	.byte	0x7e
	.long	0x8f
	.byte	0x30
	.uleb128 0xd
	.string	"acc"
	.byte	0x9
	.byte	0x7f
	.long	0x8f
	.byte	0x38
	.uleb128 0xd
	.string	"au"
	.byte	0x9
	.byte	0x80
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x81
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x82
	.long	0x8f
	.byte	0x50
	.uleb128 0xd
	.string	"rf"
	.byte	0x9
	.byte	0x83
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x84
	.long	0x4c3
	.byte	0x60
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0x85
	.long	0x4c3
	.byte	0x68
	.uleb128 0xd
	.string	"ss"
	.byte	0x9
	.byte	0x86
	.long	0x4c3
	.byte	0x70
	.uleb128 0xd
	.string	"sa"
	.byte	0x9
	.byte	0x87
	.long	0x4c3
	.byte	0x78
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0x88
	.long	0x71c
	.byte	0x80
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x89
	.long	0x72c
	.byte	0x98
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x90
	.long	0x4c3
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x94
	.long	0x4c3
	.byte	0xc0
	.uleb128 0xd
	.string	"gf"
	.byte	0x9
	.byte	0x95
	.long	0x4c3
	.byte	0xc8
	.uleb128 0xd
	.string	"ngf"
	.byte	0x9
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0x99
	.long	0x4c3
	.byte	0xd8
	.uleb128 0xd
	.string	"gs"
	.byte	0x9
	.byte	0x9a
	.long	0x73c
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0x9b
	.long	0x742
	.byte	0xe8
	.uleb128 0xd
	.string	"ngs"
	.byte	0x9
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x9e
	.long	0x4c3
	.byte	0xf8
	.uleb128 0x13
	.string	"gc"
	.byte	0x9
	.byte	0x9f
	.long	0x4c3
	.value	0x100
	.uleb128 0x14
	.long	.LASF104
	.byte	0x9
	.byte	0xa0
	.long	0x742
	.value	0x108
	.uleb128 0x13
	.string	"ngc"
	.byte	0x9
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x14
	.long	.LASF105
	.byte	0x9
	.byte	0xa3
	.long	0x4c3
	.value	0x118
	.uleb128 0x13
	.string	"gr"
	.byte	0x9
	.byte	0xa4
	.long	0x73c
	.value	0x120
	.uleb128 0x14
	.long	.LASF106
	.byte	0x9
	.byte	0xa5
	.long	0x742
	.value	0x128
	.uleb128 0x13
	.string	"ngr"
	.byte	0x9
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x14
	.long	.LASF107
	.byte	0x9
	.byte	0xaa
	.long	0x742
	.value	0x138
	.uleb128 0x14
	.long	.LASF108
	.byte	0x9
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x14
	.long	.LASF109
	.byte	0x9
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x14
	.long	.LASF110
	.byte	0x9
	.byte	0xad
	.long	0x292
	.value	0x148
	.uleb128 0x14
	.long	.LASF111
	.byte	0x9
	.byte	0xae
	.long	0x292
	.value	0x150
	.uleb128 0x14
	.long	.LASF112
	.byte	0x9
	.byte	0xaf
	.long	0x292
	.value	0x158
	.uleb128 0x14
	.long	.LASF113
	.byte	0x9
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0x72c
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x73c
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c3
	.uleb128 0x6
	.byte	0x8
	.long	0x35b
	.uleb128 0xf
	.string	"MSA"
	.byte	0x9
	.byte	0xb1
	.long	0x4e0
	.uleb128 0x7
	.long	.LASF114
	.byte	0x40
	.byte	0x9
	.byte	0xba
	.long	0x7ca
	.uleb128 0xd
	.string	"f"
	.byte	0x9
	.byte	0xbb
	.long	0x4bd
	.byte	0
	.uleb128 0x8
	.long	.LASF115
	.byte	0x9
	.byte	0xbc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF116
	.byte	0x9
	.byte	0xbd
	.long	0x62
	.byte	0x10
	.uleb128 0xd
	.string	"buf"
	.byte	0x9
	.byte	0xbf
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF117
	.byte	0x9
	.byte	0xc0
	.long	0x62
	.byte	0x20
	.uleb128 0xd
	.string	"ssi"
	.byte	0x9
	.byte	0xc2
	.long	0x7ca
	.byte	0x28
	.uleb128 0x8
	.long	.LASF118
	.byte	0x9
	.byte	0xc4
	.long	0x62
	.byte	0x30
	.uleb128 0x8
	.long	.LASF119
	.byte	0x9
	.byte	0xc5
	.long	0x62
	.byte	0x34
	.uleb128 0x8
	.long	.LASF120
	.byte	0x9
	.byte	0xc6
	.long	0x62
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4cf
	.uleb128 0x2
	.long	.LASF121
	.byte	0x9
	.byte	0xc7
	.long	0x753
	.uleb128 0x6
	.byte	0x8
	.long	0x748
	.uleb128 0x6
	.byte	0x8
	.long	0x7d0
	.uleb128 0x15
	.long	.LASF128
	.byte	0x1
	.byte	0x4f
	.long	0x7db
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x87a
	.uleb128 0x16
	.string	"afp"
	.byte	0x1
	.byte	0x4f
	.long	0x7e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"msa"
	.byte	0x1
	.byte	0x51
	.long	0x7db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x52
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x53
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.long	.LASF122
	.byte	0x1
	.byte	0x54
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.long	.LASF88
	.byte	0x1
	.byte	0x55
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"seq"
	.byte	0x1
	.byte	0x56
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"s2"
	.byte	0x1
	.byte	0x57
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x19
	.long	.LASF129
	.byte	0x1
	.byte	0x91
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.byte	0x91
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x16
	.string	"msa"
	.byte	0x1
	.byte	0x91
	.long	0x7db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.byte	0x93
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0x94
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.long	.LASF123
	.byte	0x1
	.byte	0x95
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.string	"pos"
	.byte	0x1
	.byte	0x96
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x97
	.long	0x2d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"cpl"
	.byte	0x1
	.byte	0x98
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
.LASF8:
	.string	"__off_t"
.LASF122:
	.string	"sqidx"
.LASF14:
	.string	"_IO_read_ptr"
.LASF121:
	.string	"MSAFILE"
.LASF26:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"sqd_uint32"
.LASF75:
	.string	"soffset"
.LASF32:
	.string	"_shortbuf"
.LASF95:
	.string	"cutoff_is_set"
.LASF87:
	.string	"type"
.LASF93:
	.string	"sqdesc"
.LASF103:
	.string	"gc_tag"
.LASF100:
	.string	"alloc_ngf"
.LASF86:
	.string	"nseq"
.LASF48:
	.string	"long long unsigned int"
.LASF69:
	.string	"slen"
.LASF68:
	.string	"plen"
.LASF81:
	.string	"SSIFILE"
.LASF101:
	.string	"gs_tag"
.LASF66:
	.string	"nsecondary"
.LASF4:
	.string	"signed char"
.LASF70:
	.string	"frecsize"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF127:
	.string	"_IO_lock_t"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF98:
	.string	"alloc_ncomment"
.LASF56:
	.string	"primelevel"
.LASF47:
	.string	"long long int"
.LASF50:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF109:
	.string	"nseqlump"
.LASF92:
	.string	"sqacc"
.LASF74:
	.string	"poffset"
.LASF82:
	.string	"msa_struct"
.LASF43:
	.string	"_IO_marker"
.LASF77:
	.string	"smode"
.LASF3:
	.string	"unsigned int"
.LASF112:
	.string	"salen"
.LASF113:
	.string	"lastidx"
.LASF129:
	.string	"WriteClustal"
.LASF62:
	.string	"ssifile_s"
.LASF0:
	.string	"long unsigned int"
.LASF111:
	.string	"sslen"
.LASF18:
	.string	"_IO_write_ptr"
.LASF88:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF114:
	.string	"msafile_struct"
.LASF2:
	.string	"short unsigned int"
.LASF46:
	.string	"_pos"
.LASF22:
	.string	"_IO_save_base"
.LASF67:
	.string	"flen"
.LASF128:
	.string	"ReadClustal"
.LASF125:
	.string	"clustal.c"
.LASF53:
	.string	"sqd_uint64"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF115:
	.string	"fname"
.LASF90:
	.string	"ss_cons"
.LASF104:
	.string	"gc_idx"
.LASF10:
	.string	"sizetype"
.LASF119:
	.string	"do_stdin"
.LASF105:
	.string	"gr_tag"
.LASF83:
	.string	"aseq"
.LASF78:
	.string	"filename"
.LASF89:
	.string	"desc"
.LASF19:
	.string	"_IO_write_end"
.LASF73:
	.string	"foffset"
.LASF102:
	.string	"gs_idx"
.LASF42:
	.string	"_IO_FILE"
.LASF80:
	.string	"fileflags"
.LASF108:
	.string	"nseqalloc"
.LASF110:
	.string	"sqlen"
.LASF49:
	.string	"float"
.LASF118:
	.string	"do_gzip"
.LASF25:
	.string	"_markers"
.LASF64:
	.string	"nfiles"
.LASF116:
	.string	"linenumber"
.LASF1:
	.string	"unsigned char"
.LASF96:
	.string	"comment"
.LASF21:
	.string	"_IO_buf_end"
.LASF65:
	.string	"nprimary"
.LASF5:
	.string	"short int"
.LASF58:
	.string	"nkeys"
.LASF55:
	.string	"table"
.LASF31:
	.string	"_vtable_offset"
.LASF51:
	.string	"sqd_uint16"
.LASF12:
	.string	"FILE"
.LASF117:
	.string	"buflen"
.LASF120:
	.string	"format"
.LASF71:
	.string	"precsize"
.LASF76:
	.string	"imode"
.LASF11:
	.string	"char"
.LASF91:
	.string	"sa_cons"
.LASF60:
	.string	"mode"
.LASF54:
	.string	"gki_elem"
.LASF59:
	.string	"ssioffset_s"
.LASF85:
	.string	"alen"
.LASF107:
	.string	"index"
.LASF79:
	.string	"fileformat"
.LASF123:
	.string	"namelen"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF30:
	.string	"_cur_column"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF72:
	.string	"srecsize"
.LASF97:
	.string	"ncomment"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF94:
	.string	"cutoff"
.LASF41:
	.string	"_unused2"
.LASF124:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF63:
	.string	"flags"
.LASF84:
	.string	"sqname"
.LASF106:
	.string	"gr_idx"
.LASF57:
	.string	"nhash"
.LASF126:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF99:
	.string	"gf_tag"
.LASF17:
	.string	"_IO_write_base"
.LASF20:
	.string	"_IO_buf_base"
.LASF61:
	.string	"SSIOFFSET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
