	.file	"misc.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 misc.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"%s\n"
.LC1:
	.string	"May 2003"
.LC2:
	.string	"2.3"
.LC3:
	.string	"HMMER"
.LC4:
	.string	"%s %s (%s)\n"
	.align 8
.LC5:
	.string	"Copyright (C) 1992-2003 HHMI/Washington University School of Medicine"
	.align 8
.LC6:
	.string	"Freely distributed under the GNU General Public License (GPL)"
	.align 8
.LC7:
	.string	"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
	.text
	.globl	HMMERBanner
	.type	HMMERBanner, @function
HMMERBanner:
.LFB2:
	.file 1 "misc.c"
	.loc 1 56 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# banner, banner
	.loc 1 57 0
	movq	-16(%rbp), %rdx	# banner, tmp59
	movq	-8(%rbp), %rax	# fp, tmp60
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp60,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 58 0
	movq	-8(%rbp), %rax	# fp, tmp61
	movl	$.LC1, %r8d	#,
	movl	$.LC2, %ecx	#,
	movl	$.LC3, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp61,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 59 0
	movq	-8(%rbp), %rax	# fp, tmp62
	movl	$.LC5, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp62,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 60 0
	movq	-8(%rbp), %rax	# fp, tmp63
	movl	$.LC6, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp63,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 61 0
	movq	-8(%rbp), %rax	# fp, tmp64
	movq	%rax, %rcx	# tmp64,
	movl	$72, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC7, %edi	#,
	call	fwrite	#
	.loc 1 62 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	HMMERBanner, .-HMMERBanner
	.section	.rodata
.LC8:
	.string	" \t\n"
	.align 8
.LC9:
	.string	"Parse failed: expected string, got nothing"
	.align 8
.LC10:
	.string	"Parse failed: expected integer, got %s"
	.align 8
.LC11:
	.string	"Parse failed: expected real value, got %s"
	.text
	.globl	Getword
	.type	Getword, @function
Getword:
.LFB3:
	.loc 1 77 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movl	%esi, -12(%rbp)	# type, type
	.loc 1 81 0
	movq	sptr.5865(%rip), %rax	# sptr, sptr.0
	testq	%rax, %rax	# sptr.0
	je	.L3	#,
	.loc 1 81 0 is_stmt 0 discriminator 1
	movl	$.LC8, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, sptr.5865(%rip)	# sptr.1, sptr
	.loc 1 83 0 is_stmt 1 discriminator 1
	jmp	.L4	#
.L3:
	.loc 1 83 0 is_stmt 0
	jmp	.L4	#
.L8:
	.loc 1 85 0 is_stmt 1
	movq	-8(%rbp), %rax	# fp, tmp78
	movq	%rax, %rdx	# tmp78,
	movl	$512, %esi	#,
	movl	$buffer.5864, %edi	#,
	call	fgets	#
	movq	%rax, sptr.5865(%rip)	# sptr.2, sptr
	movq	sptr.5865(%rip), %rax	# sptr, sptr.3
	testq	%rax, %rax	# sptr.3
	jne	.L5	#,
	.loc 1 85 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5984
	jmp	.L6	#
.L5:
	.loc 1 86 0 is_stmt 1
	movl	$35, %esi	#,
	movl	$buffer.5864, %edi	#,
	call	strchr	#
	movq	%rax, sptr.5865(%rip)	# sptr.4, sptr
	movq	sptr.5865(%rip), %rax	# sptr, sptr.5
	testq	%rax, %rax	# sptr.5
	je	.L7	#,
	.loc 1 86 0 is_stmt 0 discriminator 1
	movq	sptr.5865(%rip), %rax	# sptr, sptr.6
	movb	$0, (%rax)	#, *sptr.6_11
.L7:
	.loc 1 87 0 is_stmt 1
	movl	$.LC8, %esi	#,
	movl	$buffer.5864, %edi	#,
	call	strtok	#
	movq	%rax, sptr.5865(%rip)	# sptr.7, sptr
.L4:
	.loc 1 83 0 discriminator 1
	movq	sptr.5865(%rip), %rax	# sptr, sptr.8
	testq	%rax, %rax	# sptr.8
	je	.L8	#,
	.loc 1 90 0
	movl	-12(%rbp), %eax	# type, type
	cmpl	$2, %eax	#, type
	je	.L10	#,
	cmpl	$4, %eax	#, type
	je	.L11	#,
	cmpl	$1, %eax	#, type
	je	.L12	#,
	jmp	.L9	#
.L11:
	.loc 1 92 0
	movq	sptr.5865(%rip), %rax	# sptr, sptr.9
	movzbl	(%rax), %eax	# MEM[(const char *)sptr.9_14], D.5985
	testb	%al, %al	# D.5985
	jne	.L13	#,
	.loc 1 93 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
	.loc 1 94 0
	movq	$0, sptr.5865(%rip)	#, sptr
	.loc 1 96 0
	jmp	.L9	#
.L13:
	jmp	.L9	#
.L12:
	.loc 1 98 0
	movq	sptr.5865(%rip), %rax	# sptr, sptr.10
	movq	%rax, %rdi	# sptr.10,
	call	IsInt	#
	testl	%eax, %eax	# D.5986
	jne	.L14	#,
	.loc 1 99 0
	movq	sptr.5865(%rip), %rax	# sptr, sptr.11
	movq	%rax, %rsi	# sptr.11,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
	.loc 1 100 0
	movq	$0, sptr.5865(%rip)	#, sptr
	.loc 1 102 0
	jmp	.L9	#
.L14:
	jmp	.L9	#
.L10:
	.loc 1 104 0
	movq	sptr.5865(%rip), %rax	# sptr, sptr.12
	movq	%rax, %rdi	# sptr.12,
	call	IsReal	#
	testl	%eax, %eax	# D.5986
	jne	.L15	#,
	.loc 1 105 0
	movq	sptr.5865(%rip), %rax	# sptr, sptr.13
	movq	%rax, %rsi	# sptr.13,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
	.loc 1 106 0
	movq	$0, sptr.5865(%rip)	#, sptr
	.loc 1 108 0
	jmp	.L16	#
.L15:
.L16:
	nop
.L9:
	.loc 1 111 0
	movq	sptr.5865(%rip), %rax	# sptr, D.5984
.L6:
	.loc 1 112 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Getword, .-Getword
	.globl	Getline
	.type	Getline, @function
Getline:
.LFB4:
	.loc 1 130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movl	%esi, -28(%rbp)	# n, n
	movq	%rdx, -40(%rbp)	# fp, fp
.L22:
	.loc 1 134 0
	movq	-40(%rbp), %rdx	# fp, tmp73
	movl	-28(%rbp), %ecx	# n, tmp74
	movq	-24(%rbp), %rax	# s, tmp75
	movl	%ecx, %esi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	fgets	#
	testq	%rax, %rax	# D.5991
	jne	.L18	#,
	.loc 1 134 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5991
	jmp	.L19	#
.L18:
	.loc 1 135 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp76
	movq	%rax, -8(%rbp)	# tmp76, first
	jmp	.L20	#
.L21:
	.loc 1 135 0 is_stmt 0 discriminator 2
	addq	$1, -8(%rbp)	#, first
.L20:
	.loc 1 135 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_9, D.5993
	movq	-8(%rbp), %rax	# first, tmp77
	movzbl	(%rax), %eax	# *first_1, D.5994
	movsbq	%al, %rax	# D.5994, D.5995
	addq	%rax, %rax	# D.5995
	addq	%rdx, %rax	# D.5993, D.5993
	movzwl	(%rax), %eax	# *_14, D.5996
	movzwl	%ax, %eax	# D.5996, D.5997
	andl	$8192, %eax	#, D.5997
	testl	%eax, %eax	# D.5997
	jne	.L21	#,
	.loc 1 136 0 is_stmt 1
	movq	-8(%rbp), %rax	# first, tmp78
	movzbl	(%rax), %eax	# *first_1, D.5994
	cmpb	$35, %al	#, D.5994
	je	.L22	#,
	.loc 1 136 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# first, tmp79
	movzbl	(%rax), %eax	# *first_1, D.5994
	testb	%al, %al	# D.5994
	je	.L22	#,
	.loc 1 137 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, D.5991
.L19:
	.loc 1 138 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Getline, .-Getline
	.globl	SetAutocuts
	.type	SetAutocuts, @function
SetAutocuts:
.LFB5:
	.loc 1 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# thresh, thresh
	movq	%rsi, -16(%rbp)	# hmm, hmm
	.loc 1 160 0
	movq	-8(%rbp), %rax	# thresh, tmp79
	movl	32(%rax), %eax	# thresh_2(D)->autocut, D.5999
	cmpl	$1, %eax	#, D.5999
	jne	.L24	#,
	.loc 1 161 0
	movq	-16(%rbp), %rax	# hmm, tmp80
	movl	456(%rax), %eax	# hmm_4(D)->flags, D.5998
	andl	$1024, %eax	#, D.5998
	testl	%eax, %eax	# D.5998
	jne	.L25	#,
	.loc 1 161 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5998
	jmp	.L26	#
.L25:
	.loc 1 162 0 is_stmt 1
	movq	-16(%rbp), %rax	# hmm, tmp81
	movl	112(%rax), %eax	# hmm_4(D)->ga1, D.6000
	movq	-8(%rbp), %rdx	# thresh, tmp82
	movl	%eax, (%rdx)	# D.6000, thresh_2(D)->globT
	.loc 1 163 0
	movq	-16(%rbp), %rax	# hmm, tmp83
	movl	116(%rax), %eax	# hmm_4(D)->ga2, D.6000
	movq	-8(%rbp), %rdx	# thresh, tmp84
	movl	%eax, 16(%rdx)	# D.6000, thresh_2(D)->domT
	.loc 1 164 0
	movq	-8(%rbp), %rdx	# thresh, tmp85
	movabsq	$5183643170566569984, %rax	#, tmp86
	movq	%rax, 24(%rdx)	# tmp86, thresh_2(D)->domE
	movq	-8(%rbp), %rax	# thresh, tmp87
	movq	24(%rax), %rax	# thresh_2(D)->domE, D.6001
	movq	-8(%rbp), %rdx	# thresh, tmp88
	movq	%rax, 8(%rdx)	# D.6001, thresh_2(D)->globE
	jmp	.L27	#
.L24:
	.loc 1 165 0
	movq	-8(%rbp), %rax	# thresh, tmp89
	movl	32(%rax), %eax	# thresh_2(D)->autocut, D.5999
	cmpl	$2, %eax	#, D.5999
	jne	.L28	#,
	.loc 1 166 0
	movq	-16(%rbp), %rax	# hmm, tmp90
	movl	456(%rax), %eax	# hmm_4(D)->flags, D.5998
	andl	$4096, %eax	#, D.5998
	testl	%eax, %eax	# D.5998
	jne	.L29	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5998
	jmp	.L26	#
.L29:
	.loc 1 167 0 is_stmt 1
	movq	-16(%rbp), %rax	# hmm, tmp91
	movl	128(%rax), %eax	# hmm_4(D)->nc1, D.6000
	movq	-8(%rbp), %rdx	# thresh, tmp92
	movl	%eax, (%rdx)	# D.6000, thresh_2(D)->globT
	.loc 1 168 0
	movq	-16(%rbp), %rax	# hmm, tmp93
	movl	132(%rax), %eax	# hmm_4(D)->nc2, D.6000
	movq	-8(%rbp), %rdx	# thresh, tmp94
	movl	%eax, 16(%rdx)	# D.6000, thresh_2(D)->domT
	.loc 1 169 0
	movq	-8(%rbp), %rdx	# thresh, tmp95
	movabsq	$5183643170566569984, %rax	#, tmp96
	movq	%rax, 24(%rdx)	# tmp96, thresh_2(D)->domE
	movq	-8(%rbp), %rax	# thresh, tmp97
	movq	24(%rax), %rax	# thresh_2(D)->domE, D.6001
	movq	-8(%rbp), %rdx	# thresh, tmp98
	movq	%rax, 8(%rdx)	# D.6001, thresh_2(D)->globE
	jmp	.L27	#
.L28:
	.loc 1 170 0
	movq	-8(%rbp), %rax	# thresh, tmp99
	movl	32(%rax), %eax	# thresh_2(D)->autocut, D.5999
	cmpl	$3, %eax	#, D.5999
	jne	.L27	#,
	.loc 1 171 0
	movq	-16(%rbp), %rax	# hmm, tmp100
	movl	456(%rax), %eax	# hmm_4(D)->flags, D.5998
	andl	$2048, %eax	#, D.5998
	testl	%eax, %eax	# D.5998
	jne	.L30	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5998
	jmp	.L26	#
.L30:
	.loc 1 172 0 is_stmt 1
	movq	-16(%rbp), %rax	# hmm, tmp101
	movl	120(%rax), %eax	# hmm_4(D)->tc1, D.6000
	movq	-8(%rbp), %rdx	# thresh, tmp102
	movl	%eax, (%rdx)	# D.6000, thresh_2(D)->globT
	.loc 1 173 0
	movq	-16(%rbp), %rax	# hmm, tmp103
	movl	124(%rax), %eax	# hmm_4(D)->tc2, D.6000
	movq	-8(%rbp), %rdx	# thresh, tmp104
	movl	%eax, 16(%rdx)	# D.6000, thresh_2(D)->domT
	.loc 1 174 0
	movq	-8(%rbp), %rdx	# thresh, tmp105
	movabsq	$5183643170566569984, %rax	#, tmp106
	movq	%rax, 24(%rdx)	# tmp106, thresh_2(D)->domE
	movq	-8(%rbp), %rax	# thresh, tmp107
	movq	24(%rax), %rax	# thresh_2(D)->domE, D.6001
	movq	-8(%rbp), %rdx	# thresh, tmp108
	movq	%rax, 8(%rdx)	# D.6001, thresh_2(D)->globE
.L27:
	.loc 1 176 0
	movl	$1, %eax	#, D.5998
.L26:
	.loc 1 177 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SetAutocuts, .-SetAutocuts
	.local	sptr.5865
	.comm	sptr.5865,8,8
	.local	buffer.5864
	.comm	buffer.5864,512,32
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "structs.h"
	.file 7 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x784
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF106
	.byte	0x1
	.long	.LASF107
	.long	.LASF108
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
	.long	.LASF109
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
	.byte	0x7
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
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x302
	.uleb128 0xf
	.long	.LASF63
	.value	0x1d0
	.byte	0x6
	.byte	0x65
	.long	0x573
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x71
	.long	0x8f
	.byte	0
	.uleb128 0x10
	.string	"acc"
	.byte	0x6
	.byte	0x72
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x73
	.long	0x8f
	.byte	0x10
	.uleb128 0x10
	.string	"rf"
	.byte	0x6
	.byte	0x74
	.long	0x8f
	.byte	0x18
	.uleb128 0x10
	.string	"cs"
	.byte	0x6
	.byte	0x75
	.long	0x8f
	.byte	0x20
	.uleb128 0x10
	.string	"ca"
	.byte	0x6
	.byte	0x76
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x77
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0x78
	.long	0x62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0x79
	.long	0x8f
	.byte	0x40
	.uleb128 0x10
	.string	"map"
	.byte	0x6
	.byte	0x7a
	.long	0x292
	.byte	0x48
	.uleb128 0x8
	.long	.LASF69
	.byte	0x6
	.byte	0x7b
	.long	0x62
	.byte	0x50
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.byte	0x86
	.long	0x292
	.byte	0x58
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0x87
	.long	0x292
	.byte	0x60
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0x88
	.long	0x292
	.byte	0x68
	.uleb128 0x10
	.string	"ga1"
	.byte	0x6
	.byte	0x90
	.long	0x302
	.byte	0x70
	.uleb128 0x10
	.string	"ga2"
	.byte	0x6
	.byte	0x90
	.long	0x302
	.byte	0x74
	.uleb128 0x10
	.string	"tc1"
	.byte	0x6
	.byte	0x91
	.long	0x302
	.byte	0x78
	.uleb128 0x10
	.string	"tc2"
	.byte	0x6
	.byte	0x91
	.long	0x302
	.byte	0x7c
	.uleb128 0x10
	.string	"nc1"
	.byte	0x6
	.byte	0x92
	.long	0x302
	.byte	0x80
	.uleb128 0x10
	.string	"nc2"
	.byte	0x6
	.byte	0x92
	.long	0x302
	.byte	0x84
	.uleb128 0x10
	.string	"M"
	.byte	0x6
	.byte	0x9b
	.long	0x62
	.byte	0x88
	.uleb128 0x10
	.string	"t"
	.byte	0x6
	.byte	0x9c
	.long	0x573
	.byte	0x90
	.uleb128 0x10
	.string	"mat"
	.byte	0x6
	.byte	0x9d
	.long	0x573
	.byte	0x98
	.uleb128 0x10
	.string	"ins"
	.byte	0x6
	.byte	0x9e
	.long	0x573
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0x9f
	.long	0x302
	.byte	0xa8
	.uleb128 0x10
	.string	"xt"
	.byte	0x6
	.byte	0xa8
	.long	0x579
	.byte	0xac
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0xa9
	.long	0x316
	.byte	0xd0
	.uleb128 0x10
	.string	"end"
	.byte	0x6
	.byte	0xaa
	.long	0x316
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0xae
	.long	0x58f
	.byte	0xe0
	.uleb128 0x11
	.string	"p1"
	.byte	0x6
	.byte	0xaf
	.long	0x302
	.value	0x130
	.uleb128 0x11
	.string	"tsc"
	.byte	0x6
	.byte	0xc5
	.long	0x59f
	.value	0x138
	.uleb128 0x11
	.string	"msc"
	.byte	0x6
	.byte	0xc6
	.long	0x59f
	.value	0x140
	.uleb128 0x11
	.string	"isc"
	.byte	0x6
	.byte	0xc7
	.long	0x59f
	.value	0x148
	.uleb128 0x11
	.string	"xsc"
	.byte	0x6
	.byte	0xc8
	.long	0x5a5
	.value	0x150
	.uleb128 0x11
	.string	"bsc"
	.byte	0x6
	.byte	0xc9
	.long	0x292
	.value	0x170
	.uleb128 0x11
	.string	"esc"
	.byte	0x6
	.byte	0xca
	.long	0x292
	.value	0x178
	.uleb128 0x12
	.long	.LASF76
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x180
	.uleb128 0x12
	.long	.LASF77
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x188
	.uleb128 0x12
	.long	.LASF78
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x190
	.uleb128 0x12
	.long	.LASF79
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x198
	.uleb128 0x12
	.long	.LASF80
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x1a0
	.uleb128 0x12
	.long	.LASF81
	.byte	0x6
	.byte	0xd6
	.long	0x59f
	.value	0x1a8
	.uleb128 0x12
	.long	.LASF82
	.byte	0x6
	.byte	0xd7
	.long	0x59f
	.value	0x1b0
	.uleb128 0x12
	.long	.LASF83
	.byte	0x6
	.byte	0xd8
	.long	0x62
	.value	0x1b8
	.uleb128 0x12
	.long	.LASF84
	.byte	0x6
	.byte	0xd9
	.long	0x62
	.value	0x1bc
	.uleb128 0x11
	.string	"mu"
	.byte	0x6
	.byte	0xde
	.long	0x302
	.value	0x1c0
	.uleb128 0x12
	.long	.LASF85
	.byte	0x6
	.byte	0xdf
	.long	0x302
	.value	0x1c4
	.uleb128 0x12
	.long	.LASF86
	.byte	0x6
	.byte	0xe1
	.long	0x62
	.value	0x1c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x316
	.uleb128 0xb
	.long	0x302
	.long	0x58f
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x302
	.long	0x59f
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0xb
	.long	0x62
	.long	0x5bb
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x31c
	.uleb128 0x13
	.byte	0x4
	.byte	0x6
	.value	0x20c
	.long	0x5e3
	.uleb128 0xe
	.long	.LASF87
	.sleb128 0
	.uleb128 0xe
	.long	.LASF88
	.sleb128 1
	.uleb128 0xe
	.long	.LASF89
	.sleb128 2
	.uleb128 0xe
	.long	.LASF90
	.sleb128 3
	.byte	0
	.uleb128 0x14
	.long	.LASF91
	.byte	0x28
	.byte	0x6
	.value	0x206
	.long	0x63d
	.uleb128 0x9
	.long	.LASF92
	.byte	0x6
	.value	0x207
	.long	0x302
	.byte	0
	.uleb128 0x9
	.long	.LASF93
	.byte	0x6
	.value	0x208
	.long	0x309
	.byte	0x8
	.uleb128 0x9
	.long	.LASF94
	.byte	0x6
	.value	0x209
	.long	0x302
	.byte	0x10
	.uleb128 0x9
	.long	.LASF95
	.byte	0x6
	.value	0x20a
	.long	0x309
	.byte	0x18
	.uleb128 0x9
	.long	.LASF96
	.byte	0x6
	.value	0x20c
	.long	0x5c1
	.byte	0x20
	.uleb128 0x15
	.string	"Z"
	.byte	0x6
	.value	0x20d
	.long	0x62
	.byte	0x24
	.byte	0
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.byte	0x37
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x676
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0x37
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF97
	.byte	0x1
	.byte	0x37
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.byte	0x4c
	.long	0x8f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6dd
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0x4c
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF98
	.byte	0x1
	.byte	0x4c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.byte	0x4e
	.long	0x6dd
	.uleb128 0x9
	.byte	0x3
	.quad	buffer.5864
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.byte	0x4f
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	sptr.5865
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x6ee
	.uleb128 0x1b
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.byte	0x81
	.long	0x8f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x743
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x81
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x81
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0x81
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.byte	0x83
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF104
	.byte	0x1
	.byte	0x9e
	.long	0x62
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x781
	.uleb128 0x18
	.long	.LASF105
	.byte	0x1
	.byte	0x9e
	.long	0x781
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"hmm"
	.byte	0x1
	.byte	0x9e
	.long	0x5bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5e3
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
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x4
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1
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
.LASF105:
	.string	"thresh"
.LASF26:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF69:
	.string	"checksum"
.LASF32:
	.string	"_shortbuf"
.LASF54:
	.string	"_ISspace"
.LASF14:
	.string	"_IO_read_ptr"
.LASF98:
	.string	"type"
.LASF88:
	.string	"CUT_GA"
.LASF80:
	.string	"esc_mem"
.LASF67:
	.string	"nseq"
.LASF48:
	.string	"long long unsigned int"
.LASF76:
	.string	"tsc_mem"
.LASF51:
	.string	"_ISalpha"
.LASF52:
	.string	"_ISdigit"
.LASF85:
	.string	"lambda"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF90:
	.string	"CUT_TC"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF60:
	.string	"_ISalnum"
.LASF30:
	.string	"_cur_column"
.LASF62:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF93:
	.string	"globE"
.LASF102:
	.string	"Getline"
.LASF57:
	.string	"_ISblank"
.LASF92:
	.string	"globT"
.LASF59:
	.string	"_ISpunct"
.LASF110:
	.string	"HMMERBanner"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF74:
	.string	"begin"
.LASF107:
	.string	"misc.c"
.LASF0:
	.string	"long unsigned int"
.LASF100:
	.string	"sptr"
.LASF18:
	.string	"_IO_write_ptr"
.LASF64:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF91:
	.string	"threshold_s"
.LASF89:
	.string	"CUT_NC"
.LASF22:
	.string	"_IO_save_base"
.LASF96:
	.string	"autocut"
.LASF71:
	.string	"mpri"
.LASF33:
	.string	"_lock"
.LASF40:
	.string	"_mode"
.LASF68:
	.string	"ctime"
.LASF101:
	.string	"Getword"
.LASF77:
	.string	"msc_mem"
.LASF10:
	.string	"sizetype"
.LASF65:
	.string	"desc"
.LASF79:
	.string	"bsc_mem"
.LASF73:
	.string	"tbd1"
.LASF82:
	.string	"dnai"
.LASF81:
	.string	"dnam"
.LASF109:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF66:
	.string	"comlog"
.LASF61:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF75:
	.string	"null"
.LASF1:
	.string	"unsigned char"
.LASF21:
	.string	"_IO_buf_end"
.LASF83:
	.string	"dna2"
.LASF63:
	.string	"plan7_s"
.LASF5:
	.string	"short int"
.LASF28:
	.string	"_flags2"
.LASF78:
	.string	"isc_mem"
.LASF12:
	.string	"FILE"
.LASF103:
	.string	"first"
.LASF11:
	.string	"char"
.LASF58:
	.string	"_IScntrl"
.LASF53:
	.string	"_ISxdigit"
.LASF50:
	.string	"_ISlower"
.LASF99:
	.string	"buffer"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF87:
	.string	"CUT_NONE"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
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
.LASF41:
	.string	"_unused2"
.LASF72:
	.string	"ipri"
.LASF95:
	.string	"domE"
.LASF84:
	.string	"dna4"
.LASF49:
	.string	"_ISupper"
.LASF97:
	.string	"banner"
.LASF106:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF94:
	.string	"domT"
.LASF86:
	.string	"flags"
.LASF31:
	.string	"_vtable_offset"
.LASF104:
	.string	"SetAutocuts"
.LASF108:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF70:
	.string	"tpri"
.LASF17:
	.string	"_IO_write_base"
.LASF20:
	.string	"_IO_buf_base"
.LASF55:
	.string	"_ISprint"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
