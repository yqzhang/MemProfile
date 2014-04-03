	.file	"phylip.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 phylip.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	" \t\n"
	.align 8
.LC1:
	.string	"Failed to parse nseq/alen from first line of PHYLIP file %s\n"
	.align 8
.LC2:
	.string	"nseq and/or alen not an integer in first line of PHYLIP file %s\n"
	.align 8
.LC3:
	.string	"Failed to parse sequence at line %d of PHYLIP file %s\n"
	.text
	.globl	ReadPhylip
	.type	ReadPhylip, @function
ReadPhylip:
.LFB2:
	.file 1 "phylip.c"
	.loc 1 77 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# afp, afp
	.loc 1 77 0
	movq	%fs:40, %rax	#, tmp147
	movq	%rax, -24(%rbp)	# tmp147, D.5809
	xorl	%eax, %eax	# tmp147
	.loc 1 86 0
	movq	-120(%rbp), %rax	# afp, tmp107
	movq	(%rax), %rax	# afp_5(D)->f, D.5798
	movq	%rax, %rdi	# D.5798,
	call	feof	#
	testl	%eax, %eax	# D.5799
	je	.L2	#,
	.loc 1 86 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5797
	jmp	.L16	#
.L2:
	.loc 1 91 0 is_stmt 1
	movl	$0, -96(%rbp)	#, nseq
	movl	$0, -84(%rbp)	#, alen
	.loc 1 92 0
	jmp	.L4	#
.L10:
	.loc 1 94 0
	leaq	-80(%rbp), %rax	#, tmp108
	movl	$0, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	sre_strtok	#
	movq	%rax, -72(%rbp)	# tmp109, s1
	cmpq	$0, -72(%rbp)	#, s1
	jne	.L5	#,
	.loc 1 94 0 is_stmt 0 discriminator 1
	jmp	.L4	#
.L5:
	.loc 1 95 0 is_stmt 1
	leaq	-80(%rbp), %rax	#, tmp110
	movl	$0, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	sre_strtok	#
	movq	%rax, -64(%rbp)	# tmp111, s2
	cmpq	$0, -64(%rbp)	#, s2
	jne	.L6	#,
	.loc 1 96 0
	movq	-120(%rbp), %rax	# afp, tmp112
	movq	8(%rax), %rax	# afp_5(D)->fname, D.5800
	movq	%rax, %rsi	# D.5800,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L6:
	.loc 1 97 0
	movq	-72(%rbp), %rax	# s1, tmp113
	movq	%rax, %rdi	# tmp113,
	call	IsInt	#
	testl	%eax, %eax	# D.5799
	je	.L7	#,
	.loc 1 97 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# s2, tmp114
	movq	%rax, %rdi	# tmp114,
	call	IsInt	#
	testl	%eax, %eax	# D.5799
	jne	.L8	#,
.L7:
	.loc 1 98 0 is_stmt 1
	movq	-120(%rbp), %rax	# afp, tmp115
	movq	8(%rax), %rax	# afp_5(D)->fname, D.5800
	movq	%rax, %rsi	# D.5800,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L8:
	.loc 1 99 0
	movq	-72(%rbp), %rax	# s1, tmp116
	movq	%rax, %rdi	# tmp116,
	call	atoi	#
	movl	%eax, -96(%rbp)	# tmp117, nseq
	.loc 1 100 0
	movq	-64(%rbp), %rax	# s2, tmp118
	movq	%rax, %rdi	# tmp118,
	call	atoi	#
	movl	%eax, -84(%rbp)	# tmp119, alen
	.loc 1 101 0
	jmp	.L9	#
.L4:
	.loc 1 92 0 discriminator 1
	movq	-120(%rbp), %rax	# afp, tmp120
	movq	%rax, %rdi	# tmp120,
	call	MSAFileGetLine	#
	movq	%rax, -80(%rbp)	# s.0, s
	movq	-80(%rbp), %rax	# s, s.1
	testq	%rax, %rax	# s.1
	jne	.L10	#,
.L9:
	.loc 1 104 0
	movl	-96(%rbp), %eax	# nseq, tmp121
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp121,
	call	MSAAlloc	#
	movq	%rax, -56(%rbp)	# tmp122, msa
	.loc 1 105 0
	movl	$0, -92(%rbp)	#, idx
	.loc 1 106 0
	movl	$0, -88(%rbp)	#, nblock
	.loc 1 107 0
	jmp	.L11	#
.L15:
	.loc 1 110 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_26, D.5802
	movq	-80(%rbp), %rax	# s, s.2
	movzbl	(%rax), %eax	# *s.2_28, D.5803
	movsbq	%al, %rax	# D.5803, D.5804
	addq	%rax, %rax	# D.5804
	addq	%rdx, %rax	# D.5802, D.5802
	movzwl	(%rax), %eax	# *_32, D.5805
	movzwl	%ax, %eax	# D.5805, D.5799
	andl	$8192, %eax	#, D.5799
	testl	%eax, %eax	# D.5799
	je	.L12	#,
	.loc 1 110 0 is_stmt 0 discriminator 1
	jmp	.L11	#
.L12:
	.loc 1 112 0 is_stmt 1
	cmpl	$0, -88(%rbp)	#, nblock
	jne	.L13	#,
	.loc 1 113 0
	movq	-80(%rbp), %rcx	# s, s.3
	leaq	-48(%rbp), %rax	#, tmp123
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# s.3,
	movq	%rax, %rdi	# tmp123,
	call	strncpy	#
	.loc 1 114 0
	movb	$0, -38(%rbp)	#, name
	.loc 1 115 0
	movq	-56(%rbp), %rax	# msa, tmp124
	movq	312(%rax), %rax	# msa_21->index, D.5806
	leaq	-48(%rbp), %rdx	#, tmp125
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# D.5806,
	call	GKIStoreKey	#
	.loc 1 116 0
	movq	-56(%rbp), %rax	# msa, tmp126
	movq	8(%rax), %rax	# msa_21->sqname, D.5807
	movl	-92(%rbp), %edx	# idx, tmp127
	movslq	%edx, %rdx	# tmp127, D.5804
	salq	$3, %rdx	#, D.5804
	leaq	(%rax,%rdx), %rbx	#, D.5807
	leaq	-48(%rbp), %rax	#, tmp128
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.5800, *_41
	.loc 1 117 0
	movq	-80(%rbp), %rax	# s, s.4
	addq	$10, %rax	#, s.5
	movq	%rax, -80(%rbp)	# s.5, s
.L13:
	.loc 1 120 0
	leaq	-100(%rbp), %rdx	#, tmp129
	leaq	-80(%rbp), %rax	#, tmp130
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	sre_strtok	#
	movq	%rax, -72(%rbp)	# tmp131, s1
	cmpq	$0, -72(%rbp)	#, s1
	jne	.L14	#,
	.loc 1 121 0
	movq	-120(%rbp), %rax	# afp, tmp132
	movq	8(%rax), %rdx	# afp_5(D)->fname, D.5800
	movq	-120(%rbp), %rax	# afp, tmp133
	movl	16(%rax), %eax	# afp_5(D)->linenumber, D.5799
	movl	%eax, %esi	# D.5799,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L14:
	.loc 1 123 0
	movq	-56(%rbp), %rax	# msa, tmp134
	movq	328(%rax), %rax	# msa_21->sqlen, D.5808
	movl	-92(%rbp), %edx	# idx, tmp135
	movslq	%edx, %rdx	# tmp135, D.5804
	salq	$2, %rdx	#, D.5804
	leaq	(%rax,%rdx), %rbx	#, D.5808
	movl	-100(%rbp), %ecx	# slen, slen.6
	movq	-56(%rbp), %rax	# msa, tmp136
	movq	328(%rax), %rax	# msa_21->sqlen, D.5808
	movl	-92(%rbp), %edx	# idx, tmp137
	movslq	%edx, %rdx	# tmp137, D.5804
	salq	$2, %rdx	#, D.5804
	addq	%rdx, %rax	# D.5804, D.5808
	movl	(%rax), %eax	# *_56, D.5799
	movq	-56(%rbp), %rdx	# msa, tmp138
	movq	(%rdx), %rdx	# msa_21->aseq, D.5807
	movl	-92(%rbp), %esi	# idx, tmp139
	movslq	%esi, %rsi	# tmp139, D.5804
	salq	$3, %rsi	#, D.5804
	leaq	(%rdx,%rsi), %rdi	#, D.5807
	movq	-72(%rbp), %rdx	# s1, tmp140
	movl	%eax, %esi	# D.5799,
	call	sre_strcat	#
	movl	%eax, (%rbx)	# D.5799, *_51
	.loc 1 125 0
	addl	$1, -92(%rbp)	#, idx
	.loc 1 126 0
	movl	-92(%rbp), %eax	# idx, tmp141
	cmpl	-96(%rbp), %eax	# nseq, tmp141
	jne	.L11	#,
	.loc 1 126 0 is_stmt 0 discriminator 1
	movl	$0, -92(%rbp)	#, idx
	addl	$1, -88(%rbp)	#, nblock
.L11:
	.loc 1 107 0 is_stmt 1 discriminator 1
	movq	-120(%rbp), %rax	# afp, tmp142
	movq	%rax, %rdi	# tmp142,
	call	MSAFileGetLine	#
	movq	%rax, -80(%rbp)	# s.7, s
	movq	-80(%rbp), %rax	# s, s.8
	testq	%rax, %rax	# s.8
	jne	.L15	#,
	.loc 1 128 0
	movq	-56(%rbp), %rax	# msa, tmp143
	movl	-96(%rbp), %edx	# nseq, tmp144
	movl	%edx, 28(%rax)	# tmp144, msa_21->nseq
	.loc 1 129 0
	movq	-56(%rbp), %rax	# msa, tmp145
	movq	%rax, %rdi	# tmp145,
	call	MSAVerifyParse	#
	.loc 1 130 0
	movq	-56(%rbp), %rax	# msa, D.5797
.L16:
	.loc 1 131 0
	movq	-24(%rbp), %rbx	# D.5809, tmp148
	xorq	%fs:40, %rbx	#, tmp148
	je	.L17	#,
	call	__stack_chk_fail	#
.L17:
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ReadPhylip, .-ReadPhylip
	.section	.rodata
.LC4:
	.string	" %d  %d\n"
.LC5:
	.string	"%s\n"
.LC6:
	.string	"%-10.10s%s\n"
	.text
	.globl	WritePhylip
	.type	WritePhylip, @function
WritePhylip:
.LFB3:
	.loc 1 147 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# fp, fp
	movq	%rsi, -96(%rbp)	# msa, msa
	.loc 1 147 0
	movq	%fs:40, %rax	#, tmp96
	movq	%rax, -8(%rbp)	# tmp96, D.5821
	xorl	%eax, %eax	# tmp96
	.loc 1 149 0
	movl	$50, -68(%rbp)	#, cpl
	.loc 1 155 0
	movq	-96(%rbp), %rax	# msa, tmp76
	movl	24(%rax), %ecx	# msa_4(D)->alen, D.5816
	movq	-96(%rbp), %rax	# msa, tmp77
	movl	28(%rax), %edx	# msa_4(D)->nseq, D.5816
	movq	-88(%rbp), %rax	# fp, tmp78
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp78,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 163 0
	movl	$0, -72(%rbp)	#, pos
	jmp	.L19	#
.L25:
	.loc 1 165 0
	cmpl	$0, -72(%rbp)	#, pos
	jle	.L20	#,
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fp, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$10, %edi	#,
	call	fputc	#
.L20:
	.loc 1 167 0 is_stmt 1
	movl	$0, -76(%rbp)	#, idx
	jmp	.L21	#
.L24:
	.loc 1 169 0
	movl	-68(%rbp), %eax	# cpl, tmp80
	movslq	%eax, %rdx	# tmp80, D.5817
	movq	-96(%rbp), %rax	# msa, tmp81
	movq	(%rax), %rax	# msa_4(D)->aseq, D.5818
	movl	-76(%rbp), %ecx	# idx, tmp82
	movslq	%ecx, %rcx	# tmp82, D.5817
	salq	$3, %rcx	#, D.5817
	addq	%rcx, %rax	# D.5817, D.5818
	movq	(%rax), %rcx	# *_16, D.5819
	movl	-72(%rbp), %eax	# pos, tmp83
	cltq
	addq	%rax, %rcx	# D.5820, D.5819
	leaq	-64(%rbp), %rax	#, tmp84
	movq	%rcx, %rsi	# D.5819,
	movq	%rax, %rdi	# tmp84,
	call	strncpy	#
	.loc 1 170 0
	movl	-68(%rbp), %eax	# cpl, tmp86
	cltq
	movb	$0, -64(%rbp,%rax)	#, buf
	.loc 1 171 0
	cmpl	$0, -72(%rbp)	#, pos
	jle	.L22	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	leaq	-64(%rbp), %rdx	#, tmp87
	movq	-88(%rbp), %rax	# fp, tmp88
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L23	#
.L22:
	.loc 1 172 0 is_stmt 1
	movq	-96(%rbp), %rax	# msa, tmp89
	movq	8(%rax), %rax	# msa_4(D)->sqname, D.5818
	movl	-76(%rbp), %edx	# idx, tmp90
	movslq	%edx, %rdx	# tmp90, D.5817
	salq	$3, %rdx	#, D.5817
	addq	%rdx, %rax	# D.5817, D.5818
	movq	(%rax), %rdx	# *_23, D.5819
	leaq	-64(%rbp), %rcx	#, tmp91
	movq	-88(%rbp), %rax	# fp, tmp92
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	fprintf	#
.L23:
	.loc 1 167 0
	addl	$1, -76(%rbp)	#, idx
.L21:
	.loc 1 167 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# msa, tmp93
	movl	28(%rax), %eax	# msa_4(D)->nseq, D.5816
	cmpl	-76(%rbp), %eax	# idx, D.5816
	jg	.L24	#,
	.loc 1 163 0 is_stmt 1
	movl	-68(%rbp), %eax	# cpl, tmp94
	addl	%eax, -72(%rbp)	# tmp94, pos
.L19:
	.loc 1 163 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# msa, tmp95
	movl	24(%rax), %eax	# msa_4(D)->alen, D.5816
	cmpl	-72(%rbp), %eax	# pos, D.5816
	jg	.L25	#,
	.loc 1 175 0 is_stmt 1
	nop
	.loc 1 176 0
	movq	-8(%rbp), %rax	# D.5821, tmp97
	xorq	%fs:40, %rax	#, tmp97
	je	.L27	#,
	call	__stack_chk_fail	#
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	WritePhylip, .-WritePhylip
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "gki.h"
	.file 8 "ssi.h"
	.file 9 "msa.h"
	.file 10 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x985
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF135
	.byte	0x1
	.long	.LASF136
	.long	.LASF137
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
	.long	.LASF138
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
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.byte	0x30
	.long	0x302
	.uleb128 0xe
	.long	.LASF49
	.sleb128 256
	.uleb128 0xe
	.long	.LASF50
	.sleb128 512
	.uleb128 0xe
	.long	.LASF51
	.sleb128 1024
	.uleb128 0xe
	.long	.LASF52
	.sleb128 2048
	.uleb128 0xe
	.long	.LASF53
	.sleb128 4096
	.uleb128 0xe
	.long	.LASF54
	.sleb128 8192
	.uleb128 0xe
	.long	.LASF55
	.sleb128 16384
	.uleb128 0xe
	.long	.LASF56
	.sleb128 32768
	.uleb128 0xe
	.long	.LASF57
	.sleb128 1
	.uleb128 0xe
	.long	.LASF58
	.sleb128 2
	.uleb128 0xe
	.long	.LASF59
	.sleb128 4
	.uleb128 0xe
	.long	.LASF60
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF62
	.uleb128 0x2
	.long	.LASF63
	.byte	0x6
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF64
	.byte	0x6
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.long	.LASF65
	.byte	0x6
	.byte	0x2a
	.long	0x29f
	.uleb128 0x7
	.long	.LASF66
	.byte	0x18
	.byte	0x7
	.byte	0x1a
	.long	0x362
	.uleb128 0xf
	.string	"key"
	.byte	0x7
	.byte	0x1b
	.long	0x8f
	.byte	0
	.uleb128 0xf
	.string	"idx"
	.byte	0x7
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0xf
	.string	"nxt"
	.byte	0x7
	.byte	0x1d
	.long	0x362
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x331
	.uleb128 0x10
	.byte	0x18
	.byte	0x7
	.byte	0x24
	.long	0x3a1
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.byte	0x25
	.long	0x3a1
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x7
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF69
	.byte	0x7
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF70
	.byte	0x7
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x362
	.uleb128 0x11
	.string	"GKI"
	.byte	0x7
	.byte	0x2a
	.long	0x368
	.uleb128 0x12
	.byte	0x8
	.byte	0x8
	.byte	0x25
	.long	0x3d1
	.uleb128 0x13
	.string	"i32"
	.byte	0x8
	.byte	0x26
	.long	0x31b
	.uleb128 0x13
	.string	"i64"
	.byte	0x8
	.byte	0x27
	.long	0x326
	.byte	0
	.uleb128 0x7
	.long	.LASF71
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.long	0x3f6
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x24
	.long	0x95
	.byte	0
	.uleb128 0xf
	.string	"off"
	.byte	0x8
	.byte	0x28
	.long	0x3b2
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x8
	.byte	0x2a
	.long	0x3d1
	.uleb128 0x7
	.long	.LASF74
	.byte	0x90
	.byte	0x8
	.byte	0x31
	.long	0x509
	.uleb128 0xf
	.string	"fp"
	.byte	0x8
	.byte	0x32
	.long	0x509
	.byte	0
	.uleb128 0x8
	.long	.LASF75
	.byte	0x8
	.byte	0x33
	.long	0x31b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0x34
	.long	0x310
	.byte	0xc
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0x35
	.long	0x31b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0x36
	.long	0x31b
	.byte	0x14
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0x37
	.long	0x31b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.byte	0x38
	.long	0x31b
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.byte	0x39
	.long	0x31b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF82
	.byte	0x8
	.byte	0x3a
	.long	0x31b
	.byte	0x24
	.uleb128 0x8
	.long	.LASF83
	.byte	0x8
	.byte	0x3b
	.long	0x31b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF84
	.byte	0x8
	.byte	0x3c
	.long	0x31b
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.byte	0x3d
	.long	0x3f6
	.byte	0x30
	.uleb128 0x8
	.long	.LASF86
	.byte	0x8
	.byte	0x3e
	.long	0x3f6
	.byte	0x40
	.uleb128 0x8
	.long	.LASF87
	.byte	0x8
	.byte	0x3f
	.long	0x3f6
	.byte	0x50
	.uleb128 0x8
	.long	.LASF88
	.byte	0x8
	.byte	0x41
	.long	0x95
	.byte	0x60
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.byte	0x42
	.long	0x95
	.byte	0x61
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.byte	0x46
	.long	0x50f
	.byte	0x68
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.byte	0x47
	.long	0x515
	.byte	0x70
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.byte	0x48
	.long	0x515
	.byte	0x78
	.uleb128 0xf
	.string	"bpl"
	.byte	0x8
	.byte	0x49
	.long	0x515
	.byte	0x80
	.uleb128 0xf
	.string	"rpl"
	.byte	0x8
	.byte	0x4a
	.long	0x515
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
	.long	0x31b
	.uleb128 0x2
	.long	.LASF93
	.byte	0x8
	.byte	0x4c
	.long	0x401
	.uleb128 0x6
	.byte	0x8
	.long	0x302
	.uleb128 0x14
	.long	.LASF94
	.value	0x168
	.byte	0x9
	.byte	0x70
	.long	0x768
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x73
	.long	0x50f
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x74
	.long	0x50f
	.byte	0x8
	.uleb128 0xf
	.string	"wgt"
	.byte	0x9
	.byte	0x75
	.long	0x526
	.byte	0x10
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x7d
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0x7e
	.long	0x8f
	.byte	0x30
	.uleb128 0xf
	.string	"acc"
	.byte	0x9
	.byte	0x7f
	.long	0x8f
	.byte	0x38
	.uleb128 0xf
	.string	"au"
	.byte	0x9
	.byte	0x80
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0x81
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x82
	.long	0x8f
	.byte	0x50
	.uleb128 0xf
	.string	"rf"
	.byte	0x9
	.byte	0x83
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF104
	.byte	0x9
	.byte	0x84
	.long	0x50f
	.byte	0x60
	.uleb128 0x8
	.long	.LASF105
	.byte	0x9
	.byte	0x85
	.long	0x50f
	.byte	0x68
	.uleb128 0xf
	.string	"ss"
	.byte	0x9
	.byte	0x86
	.long	0x50f
	.byte	0x70
	.uleb128 0xf
	.string	"sa"
	.byte	0x9
	.byte	0x87
	.long	0x50f
	.byte	0x78
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0x88
	.long	0x768
	.byte	0x80
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0x89
	.long	0x778
	.byte	0x98
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0x90
	.long	0x50f
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF109
	.byte	0x9
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF110
	.byte	0x9
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF111
	.byte	0x9
	.byte	0x94
	.long	0x50f
	.byte	0xc0
	.uleb128 0xf
	.string	"gf"
	.byte	0x9
	.byte	0x95
	.long	0x50f
	.byte	0xc8
	.uleb128 0xf
	.string	"ngf"
	.byte	0x9
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF112
	.byte	0x9
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF113
	.byte	0x9
	.byte	0x99
	.long	0x50f
	.byte	0xd8
	.uleb128 0xf
	.string	"gs"
	.byte	0x9
	.byte	0x9a
	.long	0x788
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF114
	.byte	0x9
	.byte	0x9b
	.long	0x78e
	.byte	0xe8
	.uleb128 0xf
	.string	"ngs"
	.byte	0x9
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF115
	.byte	0x9
	.byte	0x9e
	.long	0x50f
	.byte	0xf8
	.uleb128 0x15
	.string	"gc"
	.byte	0x9
	.byte	0x9f
	.long	0x50f
	.value	0x100
	.uleb128 0x16
	.long	.LASF116
	.byte	0x9
	.byte	0xa0
	.long	0x78e
	.value	0x108
	.uleb128 0x15
	.string	"ngc"
	.byte	0x9
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x16
	.long	.LASF117
	.byte	0x9
	.byte	0xa3
	.long	0x50f
	.value	0x118
	.uleb128 0x15
	.string	"gr"
	.byte	0x9
	.byte	0xa4
	.long	0x788
	.value	0x120
	.uleb128 0x16
	.long	.LASF118
	.byte	0x9
	.byte	0xa5
	.long	0x78e
	.value	0x128
	.uleb128 0x15
	.string	"ngr"
	.byte	0x9
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x16
	.long	.LASF119
	.byte	0x9
	.byte	0xaa
	.long	0x78e
	.value	0x138
	.uleb128 0x16
	.long	.LASF120
	.byte	0x9
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x16
	.long	.LASF121
	.byte	0x9
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x16
	.long	.LASF122
	.byte	0x9
	.byte	0xad
	.long	0x292
	.value	0x148
	.uleb128 0x16
	.long	.LASF123
	.byte	0x9
	.byte	0xae
	.long	0x292
	.value	0x150
	.uleb128 0x16
	.long	.LASF124
	.byte	0x9
	.byte	0xaf
	.long	0x292
	.value	0x158
	.uleb128 0x16
	.long	.LASF125
	.byte	0x9
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x302
	.long	0x778
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x788
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x50f
	.uleb128 0x6
	.byte	0x8
	.long	0x3a7
	.uleb128 0x11
	.string	"MSA"
	.byte	0x9
	.byte	0xb1
	.long	0x52c
	.uleb128 0x7
	.long	.LASF126
	.byte	0x40
	.byte	0x9
	.byte	0xba
	.long	0x816
	.uleb128 0xf
	.string	"f"
	.byte	0x9
	.byte	0xbb
	.long	0x509
	.byte	0
	.uleb128 0x8
	.long	.LASF127
	.byte	0x9
	.byte	0xbc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF128
	.byte	0x9
	.byte	0xbd
	.long	0x62
	.byte	0x10
	.uleb128 0xf
	.string	"buf"
	.byte	0x9
	.byte	0xbf
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF129
	.byte	0x9
	.byte	0xc0
	.long	0x62
	.byte	0x20
	.uleb128 0xf
	.string	"ssi"
	.byte	0x9
	.byte	0xc2
	.long	0x816
	.byte	0x28
	.uleb128 0x8
	.long	.LASF130
	.byte	0x9
	.byte	0xc4
	.long	0x62
	.byte	0x30
	.uleb128 0x8
	.long	.LASF131
	.byte	0x9
	.byte	0xc5
	.long	0x62
	.byte	0x34
	.uleb128 0x8
	.long	.LASF132
	.byte	0x9
	.byte	0xc6
	.long	0x62
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x51b
	.uleb128 0x2
	.long	.LASF133
	.byte	0x9
	.byte	0xc7
	.long	0x79f
	.uleb128 0x6
	.byte	0x8
	.long	0x794
	.uleb128 0x6
	.byte	0x8
	.long	0x81c
	.uleb128 0x17
	.long	.LASF139
	.byte	0x1
	.byte	0x4c
	.long	0x827
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f5
	.uleb128 0x18
	.string	"afp"
	.byte	0x1
	.byte	0x4c
	.long	0x82d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x19
	.string	"msa"
	.byte	0x1
	.byte	0x4e
	.long	0x827
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x4f
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.string	"s1"
	.byte	0x1
	.byte	0x4f
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.string	"s2"
	.byte	0x1
	.byte	0x4f
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.byte	0x50
	.long	0x8f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF98
	.byte	0x1
	.byte	0x51
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.byte	0x51
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x19
	.string	"idx"
	.byte	0x1
	.byte	0x52
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.byte	0x53
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x1
	.byte	0x54
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x905
	.uleb128 0xc
	.long	0x86
	.byte	0xa
	.byte	0
	.uleb128 0x1b
	.long	.LASF140
	.byte	0x1
	.byte	0x92
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x97c
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.byte	0x92
	.long	0x509
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x18
	.string	"msa"
	.byte	0x1
	.byte	0x92
	.long	0x827
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.string	"idx"
	.byte	0x1
	.byte	0x94
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x19
	.string	"cpl"
	.byte	0x1
	.byte	0x95
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x96
	.long	0x97c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"pos"
	.byte	0x1
	.byte	0x97
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x1c
	.long	0x95
	.uleb128 0xc
	.long	0x86
	.byte	0x32
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
.LASF56:
	.string	"_ISgraph"
.LASF133:
	.string	"MSAFILE"
.LASF26:
	.string	"_chain"
.LASF136:
	.string	"phylip.c"
.LASF7:
	.string	"size_t"
.LASF64:
	.string	"sqd_uint32"
.LASF87:
	.string	"soffset"
.LASF32:
	.string	"_shortbuf"
.LASF107:
	.string	"cutoff_is_set"
.LASF54:
	.string	"_ISspace"
.LASF99:
	.string	"type"
.LASF105:
	.string	"sqdesc"
.LASF71:
	.string	"ssioffset_s"
.LASF115:
	.string	"gc_tag"
.LASF112:
	.string	"alloc_ngf"
.LASF98:
	.string	"nseq"
.LASF48:
	.string	"long long unsigned int"
.LASF21:
	.string	"_IO_buf_end"
.LASF81:
	.string	"slen"
.LASF51:
	.string	"_ISalpha"
.LASF80:
	.string	"plen"
.LASF93:
	.string	"SSIFILE"
.LASF52:
	.string	"_ISdigit"
.LASF113:
	.string	"gs_tag"
.LASF78:
	.string	"nsecondary"
.LASF4:
	.string	"signed char"
.LASF82:
	.string	"frecsize"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF138:
	.string	"_IO_lock_t"
.LASF94:
	.string	"msa_struct"
.LASF6:
	.string	"long int"
.LASF139:
	.string	"ReadPhylip"
.LASF13:
	.string	"_flags"
.LASF110:
	.string	"alloc_ncomment"
.LASF68:
	.string	"primelevel"
.LASF47:
	.string	"long long int"
.LASF62:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF121:
	.string	"nseqlump"
.LASF57:
	.string	"_ISblank"
.LASF104:
	.string	"sqacc"
.LASF86:
	.string	"poffset"
.LASF59:
	.string	"_ISpunct"
.LASF43:
	.string	"_IO_marker"
.LASF89:
	.string	"smode"
.LASF3:
	.string	"unsigned int"
.LASF124:
	.string	"salen"
.LASF125:
	.string	"lastidx"
.LASF74:
	.string	"ssifile_s"
.LASF0:
	.string	"long unsigned int"
.LASF123:
	.string	"sslen"
.LASF18:
	.string	"_IO_write_ptr"
.LASF100:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF126:
	.string	"msafile_struct"
.LASF2:
	.string	"short unsigned int"
.LASF46:
	.string	"_pos"
.LASF22:
	.string	"_IO_save_base"
.LASF79:
	.string	"flen"
.LASF65:
	.string	"sqd_uint64"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF127:
	.string	"fname"
.LASF102:
	.string	"ss_cons"
.LASF116:
	.string	"gc_idx"
.LASF10:
	.string	"sizetype"
.LASF131:
	.string	"do_stdin"
.LASF117:
	.string	"gr_tag"
.LASF95:
	.string	"aseq"
.LASF90:
	.string	"filename"
.LASF101:
	.string	"desc"
.LASF14:
	.string	"_IO_read_ptr"
.LASF85:
	.string	"foffset"
.LASF114:
	.string	"gs_idx"
.LASF42:
	.string	"_IO_FILE"
.LASF92:
	.string	"fileflags"
.LASF120:
	.string	"nseqalloc"
.LASF122:
	.string	"sqlen"
.LASF61:
	.string	"float"
.LASF130:
	.string	"do_gzip"
.LASF25:
	.string	"_markers"
.LASF140:
	.string	"WritePhylip"
.LASF76:
	.string	"nfiles"
.LASF128:
	.string	"linenumber"
.LASF1:
	.string	"unsigned char"
.LASF108:
	.string	"comment"
.LASF134:
	.string	"nblock"
.LASF77:
	.string	"nprimary"
.LASF5:
	.string	"short int"
.LASF70:
	.string	"nkeys"
.LASF67:
	.string	"table"
.LASF31:
	.string	"_vtable_offset"
.LASF63:
	.string	"sqd_uint16"
.LASF12:
	.string	"FILE"
.LASF129:
	.string	"buflen"
.LASF132:
	.string	"format"
.LASF83:
	.string	"precsize"
.LASF88:
	.string	"imode"
.LASF11:
	.string	"char"
.LASF103:
	.string	"sa_cons"
.LASF72:
	.string	"mode"
.LASF66:
	.string	"gki_elem"
.LASF58:
	.string	"_IScntrl"
.LASF97:
	.string	"alen"
.LASF53:
	.string	"_ISxdigit"
.LASF119:
	.string	"index"
.LASF50:
	.string	"_ISlower"
.LASF91:
	.string	"fileformat"
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
.LASF84:
	.string	"srecsize"
.LASF109:
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
.LASF19:
	.string	"_IO_write_end"
.LASF106:
	.string	"cutoff"
.LASF41:
	.string	"_unused2"
.LASF60:
	.string	"_ISalnum"
.LASF49:
	.string	"_ISupper"
.LASF135:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF75:
	.string	"flags"
.LASF96:
	.string	"sqname"
.LASF118:
	.string	"gr_idx"
.LASF69:
	.string	"nhash"
.LASF137:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF111:
	.string	"gf_tag"
.LASF17:
	.string	"_IO_write_base"
.LASF20:
	.string	"_IO_buf_base"
.LASF55:
	.string	"_ISprint"
.LASF73:
	.string	"SSIOFFSET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
