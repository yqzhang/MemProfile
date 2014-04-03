	.file	"dayhoff.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 dayhoff.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.align 8
.LC1:
	.string	"BLOSUM Clustered Scoring Matrix"
.LC3:
	.string	"substitution matrix,"
.LC4:
	.string	" \t\n"
.LC5:
	.string	"calloc failed"
	.align 8
.LC6:
	.string	"Failed to parse PAM matrix scale factor. Defaulting to ln(2)/2!"
	.text
	.globl	ParsePAMFile
	.type	ParsePAMFile, @function
ParsePAMFile:
.LFB2:
	.file 1 "dayhoff.c"
	.loc 1 65 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$728, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -712(%rbp)	# fp, fp
	movq	%rsi, -720(%rbp)	# ret_pam, ret_pam
	movq	%rdx, -728(%rbp)	# ret_scale, ret_scale
	.loc 1 65 0
	movq	%fs:40, %rax	#, tmp163
	movq	%rax, -24(%rbp)	# tmp163, D.5803
	xorl	%eax, %eax	# tmp163
	.loc 1 74 0
	movl	$0, -680(%rbp)	#, gotscale
	.loc 1 76 0
	movl	.LC0(%rip), %eax	#, tmp109
	movl	%eax, -684(%rbp)	# tmp109, scale
	.loc 1 77 0
	cmpq	$0, -712(%rbp)	#, fp
	jne	.L2	#,
	.loc 1 77 0 is_stmt 0 discriminator 1
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.5792
	jmp	.L29	#
.L2:
	.loc 1 84 0 is_stmt 1
	movq	-712(%rbp), %rdx	# fp, tmp110
	leaq	-544(%rbp), %rax	#, tmp111
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	fgets	#
	testq	%rax, %rax	# D.5793
	jne	.L4	#,
	.loc 1 85 0
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.5792
	jmp	.L29	#
.L4:
	.loc 1 96 0
	leaq	-544(%rbp), %rax	#, tmp112
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	strstr	#
	testq	%rax, %rax	# D.5793
	je	.L5	#,
	.loc 1 96 0 is_stmt 0 discriminator 1
	leaq	-544(%rbp), %rax	#, tmp113
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	strchr	#
	movq	%rax, -672(%rbp)	# tmp114, sptr
	cmpq	$0, -672(%rbp)	#, sptr
	je	.L5	#,
	.loc 1 99 0 is_stmt 1
	addq	$1, -672(%rbp)	#, sptr
	.loc 1 100 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_22, D.5795
	movq	-672(%rbp), %rax	# sptr, tmp115
	movzbl	(%rax), %eax	# *sptr_21, D.5796
	movsbq	%al, %rax	# D.5796, D.5797
	addq	%rax, %rax	# D.5797
	addq	%rdx, %rax	# D.5795, D.5795
	movzwl	(%rax), %eax	# *_27, D.5798
	movzwl	%ax, %eax	# D.5798, D.5792
	andl	$2048, %eax	#, D.5792
	testl	%eax, %eax	# D.5792
	jne	.L6	#,
	.loc 1 100 0 is_stmt 0 discriminator 1
	movl	$5, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.5792
	jmp	.L29	#
.L6:
	.loc 1 101 0 is_stmt 1
	movq	-672(%rbp), %rax	# sptr, tmp116
	movq	%rax, %rdi	# tmp116,
	call	atof	#
	movsd	.LC2(%rip), %xmm1	#, tmp117
	divsd	%xmm0, %xmm1	# D.5799, D.5799
	movapd	%xmm1, %xmm0	# D.5799, D.5799
	unpcklpd	%xmm0, %xmm0	# D.5799
	cvtpd2ps	%xmm0, %xmm2	# D.5799, tmp166
	movss	%xmm2, -684(%rbp)	# tmp166, scale
	.loc 1 102 0
	movl	$1, -680(%rbp)	#, gotscale
	jmp	.L7	#
.L5:
	.loc 1 104 0
	leaq	-544(%rbp), %rax	#, tmp118
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	strstr	#
	testq	%rax, %rax	# D.5793
	je	.L7	#,
	.loc 1 106 0
	jmp	.L8	#
.L9:
	.loc 1 107 0
	addq	$2, -672(%rbp)	#, sptr
	.loc 1 108 0
	movq	-672(%rbp), %rax	# sptr, tmp119
	movq	%rax, %rdi	# tmp119,
	call	IsReal	#
	testl	%eax, %eax	# D.5792
	je	.L8	#,
	.loc 1 109 0
	movq	-672(%rbp), %rax	# sptr, tmp120
	movq	%rax, %rdi	# tmp120,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.5799
	cvtpd2ps	%xmm0, %xmm3	# D.5799, tmp167
	movss	%xmm3, -684(%rbp)	# tmp167, scale
	.loc 1 110 0
	movl	$1, -680(%rbp)	#, gotscale
	.loc 1 111 0
	jmp	.L7	#
.L8:
	.loc 1 106 0 discriminator 1
	leaq	-544(%rbp), %rax	#, tmp121
	movl	$61, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	strrchr	#
	movq	%rax, -672(%rbp)	# tmp122, sptr
	cmpq	$0, -672(%rbp)	#, sptr
	jne	.L9	#,
.L7:
	.loc 1 115 0
	leaq	-544(%rbp), %rax	#, tmp123
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	strtok	#
	movq	%rax, -672(%rbp)	# tmp124, sptr
	cmpq	$0, -672(%rbp)	#, sptr
	je	.L2	#,
	.loc 1 115 0 is_stmt 0 discriminator 1
	movq	-672(%rbp), %rax	# sptr, tmp125
	movzbl	(%rax), %eax	# *sptr_43, D.5796
	cmpb	$35, %al	#, D.5796
	je	.L2	#,
	.loc 1 117 0 is_stmt 1
	movl	$0, -696(%rbp)	#, idx
.L12:
	.loc 1 119 0
	movq	-672(%rbp), %rax	# sptr, tmp126
	movzbl	(%rax), %eax	# *sptr_1, D.5796
	movsbl	%al, %eax	# D.5796, D.5792
	leal	-65(%rax), %edx	#, D.5792
	movl	-696(%rbp), %eax	# idx, tmp128
	cltq
	movl	%edx, -656(%rbp,%rax,4)	# D.5792, order
	.loc 1 120 0
	movl	-696(%rbp), %eax	# idx, tmp130
	cltq
	movl	-656(%rbp,%rax,4), %eax	# order, D.5792
	testl	%eax, %eax	# D.5792
	js	.L10	#,
	.loc 1 120 0 is_stmt 0 discriminator 2
	movl	-696(%rbp), %eax	# idx, tmp132
	cltq
	movl	-656(%rbp,%rax,4), %eax	# order, D.5792
	cmpl	$25, %eax	#, D.5792
	jle	.L11	#,
.L10:
	.loc 1 120 0 discriminator 1
	movl	-696(%rbp), %eax	# idx, tmp134
	cltq
	movl	$26, -656(%rbp,%rax,4)	#, order
.L11:
	.loc 1 121 0 is_stmt 1
	addl	$1, -696(%rbp)	#, idx
	.loc 1 122 0
	movl	$.LC4, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -672(%rbp)	# tmp135, sptr
	cmpq	$0, -672(%rbp)	#, sptr
	jne	.L12	#,
	.loc 1 123 0
	movl	-696(%rbp), %eax	# idx, tmp136
	movl	%eax, -676(%rbp)	# tmp136, nsymbols
	.loc 1 130 0
	movl	$8, %esi	#,
	movl	$27, %edi	#,
	call	calloc	#
	movq	%rax, -664(%rbp)	# tmp137, pam
	cmpq	$0, -664(%rbp)	#, pam
	jne	.L13	#,
	.loc 1 131 0
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L13:
	.loc 1 132 0
	movl	$0, -696(%rbp)	#, idx
	jmp	.L14	#
.L16:
	.loc 1 133 0
	movl	-696(%rbp), %eax	# idx, tmp138
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5797
	movq	-664(%rbp), %rax	# pam, tmp139
	leaq	(%rdx,%rax), %rbx	#, D.5800
	movl	$4, %esi	#,
	movl	$27, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.5801, *_58
	movq	(%rbx), %rax	# *_58, D.5802
	testq	%rax, %rax	# D.5802
	jne	.L15	#,
	.loc 1 134 0
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L15:
	.loc 1 132 0
	addl	$1, -696(%rbp)	#, idx
.L14:
	.loc 1 132 0 is_stmt 0 discriminator 1
	cmpl	$26, -696(%rbp)	#, idx
	jle	.L16	#,
	.loc 1 138 0 is_stmt 1
	movl	$0, -692(%rbp)	#, row
	jmp	.L17	#
.L26:
	.loc 1 140 0
	movq	-712(%rbp), %rdx	# fp, tmp141
	leaq	-544(%rbp), %rax	#, tmp142
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	fgets	#
	testq	%rax, %rax	# D.5793
	jne	.L18	#,
	.loc 1 141 0
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.5792
	jmp	.L29	#
.L18:
	.loc 1 143 0
	leaq	-544(%rbp), %rax	#, tmp143
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	strtok	#
	movq	%rax, -672(%rbp)	# tmp144, sptr
	cmpq	$0, -672(%rbp)	#, sptr
	jne	.L19	#,
	.loc 1 144 0
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.5792
	jmp	.L29	#
.L19:
	.loc 1 145 0
	movl	$0, -688(%rbp)	#, col
	jmp	.L20	#
.L25:
	.loc 1 147 0
	cmpq	$0, -672(%rbp)	#, sptr
	jne	.L21	#,
	.loc 1 147 0 is_stmt 0 discriminator 1
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.5792
	jmp	.L29	#
.L21:
	.loc 1 151 0 is_stmt 1
	movq	-672(%rbp), %rax	# sptr, tmp145
	movzbl	(%rax), %eax	# *sptr_2, D.5796
	cmpb	$42, %al	#, D.5796
	je	.L22	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_70, D.5795
	movq	-672(%rbp), %rax	# sptr, tmp146
	movzbl	(%rax), %eax	# *sptr_2, D.5796
	movsbq	%al, %rax	# D.5796, D.5797
	addq	%rax, %rax	# D.5797
	addq	%rdx, %rax	# D.5795, D.5795
	movzwl	(%rax), %eax	# *_75, D.5798
	movzwl	%ax, %eax	# D.5798, D.5792
	andl	$1024, %eax	#, D.5792
	testl	%eax, %eax	# D.5792
	je	.L23	#,
.L22:
	.loc 1 152 0 is_stmt 1
	subl	$1, -688(%rbp)	#, col
	jmp	.L24	#
.L23:
	.loc 1 154 0
	movl	-692(%rbp), %eax	# row, tmp148
	cltq
	movl	-656(%rbp,%rax,4), %eax	# order, D.5792
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5797
	movq	-664(%rbp), %rax	# pam, tmp149
	addq	%rdx, %rax	# D.5797, D.5800
	movq	(%rax), %rdx	# *_82, D.5802
	movl	-688(%rbp), %eax	# col, tmp151
	cltq
	movl	-656(%rbp,%rax,4), %eax	# order, D.5792
	cltq
	salq	$2, %rax	#, D.5797
	leaq	(%rdx,%rax), %rbx	#, D.5802
	movq	-672(%rbp), %rax	# sptr, tmp152
	movq	%rax, %rdi	# tmp152,
	call	atoi	#
	movl	%eax, (%rbx)	# D.5792, *_87
.L24:
	.loc 1 156 0
	movl	$.LC4, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -672(%rbp)	# tmp153, sptr
	.loc 1 145 0
	addl	$1, -688(%rbp)	#, col
.L20:
	.loc 1 145 0 is_stmt 0 discriminator 1
	movl	-688(%rbp), %eax	# col, tmp154
	cmpl	-676(%rbp), %eax	# nsymbols, tmp154
	jl	.L25	#,
	.loc 1 138 0 is_stmt 1
	addl	$1, -692(%rbp)	#, row
.L17:
	.loc 1 138 0 is_stmt 0 discriminator 1
	movl	-692(%rbp), %eax	# row, tmp155
	cmpl	-676(%rbp), %eax	# nsymbols, tmp155
	jl	.L26	#,
	.loc 1 162 0 is_stmt 1
	cmpq	$0, -728(%rbp)	#, ret_scale
	je	.L27	#,
	.loc 1 164 0
	cmpl	$0, -680(%rbp)	#, gotscale
	je	.L28	#,
	.loc 1 164 0 is_stmt 0 discriminator 1
	movq	-728(%rbp), %rdx	# ret_scale, tmp156
	movl	-684(%rbp), %eax	# scale, tmp157
	movl	%eax, (%rdx)	# tmp157, *ret_scale_93(D)
	jmp	.L27	#
.L28:
	.loc 1 167 0 is_stmt 1
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
	.loc 1 168 0
	movq	-728(%rbp), %rdx	# ret_scale, tmp158
	movl	.LC7(%rip), %eax	#, tmp159
	movl	%eax, (%rdx)	# tmp159, *ret_scale_93(D)
.L27:
	.loc 1 171 0
	movq	-720(%rbp), %rax	# ret_pam, tmp160
	movq	-664(%rbp), %rdx	# pam, tmp161
	movq	%rdx, (%rax)	# tmp161, *ret_pam_94(D)
	.loc 1 172 0
	movl	$1, %eax	#, D.5792
.L29:
	.loc 1 173 0
	movq	-24(%rbp), %rcx	# D.5803, tmp164
	xorq	%fs:40, %rcx	#, tmp164
	je	.L30	#,
	call	__stack_chk_fail	#
.L30:
	addq	$728, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ParsePAMFile, .-ParsePAMFile
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.align 8
.LC2:
	.long	4277811695
	.long	1072049730
	.align 4
.LC7:
	.long	1051816472
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/ctype.h"
	.file 7 "squid.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x435
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF71
	.byte	0x1
	.long	.LASF72
	.long	.LASF73
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x6
	.byte	0x8
	.long	0x3f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0xbb
	.uleb128 0x7
	.long	.LASF44
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x23c
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x109
	.long	0x274
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x10b
	.long	0x27a
	.byte	0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x119
	.long	0x280
	.byte	0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x11d
	.long	0x290
	.byte	0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x137
	.long	0x296
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF74
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF45
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x274
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa2
	.long	0x274
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa3
	.long	0x27a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x243
	.uleb128 0x6
	.byte	0x8
	.long	0xbb
	.uleb128 0xb
	.long	0x95
	.long	0x290
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23c
	.uleb128 0xb
	.long	0x95
	.long	0x2a6
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.byte	0x30
	.long	0x310
	.uleb128 0xe
	.long	.LASF51
	.sleb128 256
	.uleb128 0xe
	.long	.LASF52
	.sleb128 512
	.uleb128 0xe
	.long	.LASF53
	.sleb128 1024
	.uleb128 0xe
	.long	.LASF54
	.sleb128 2048
	.uleb128 0xe
	.long	.LASF55
	.sleb128 4096
	.uleb128 0xe
	.long	.LASF56
	.sleb128 8192
	.uleb128 0xe
	.long	.LASF57
	.sleb128 16384
	.uleb128 0xe
	.long	.LASF58
	.sleb128 32768
	.uleb128 0xe
	.long	.LASF59
	.sleb128 1
	.uleb128 0xe
	.long	.LASF60
	.sleb128 2
	.uleb128 0xe
	.long	.LASF61
	.sleb128 4
	.uleb128 0xe
	.long	.LASF62
	.sleb128 8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a6
	.uleb128 0xf
	.long	.LASF75
	.byte	0x1
	.byte	0x40
	.long	0x3f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x400
	.uleb128 0x10
	.string	"fp"
	.byte	0x1
	.byte	0x40
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x11
	.long	.LASF63
	.byte	0x1
	.byte	0x40
	.long	0x400
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.byte	0x40
	.long	0x316
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x12
	.string	"pam"
	.byte	0x1
	.byte	0x42
	.long	0x406
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.byte	0x43
	.long	0x40c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x44
	.long	0x41d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x45
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x46
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x12
	.string	"idx"
	.byte	0x1
	.byte	0x47
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x12
	.string	"row"
	.byte	0x1
	.byte	0x48
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x12
	.string	"col"
	.byte	0x1
	.byte	0x48
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0x49
	.long	0x2a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0x4a
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x406
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x41d
	.uleb128 0x14
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0xb
	.long	0x3f
	.long	0x42d
	.uleb128 0xc
	.long	0x86
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.long	.LASF76
	.byte	0x7
	.byte	0x3b
	.long	0x3f
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
.LASF31:
	.string	"_old_offset"
.LASF60:
	.string	"_IScntrl"
.LASF26:
	.string	"_IO_save_end"
.LASF21:
	.string	"_IO_write_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF58:
	.string	"_ISgraph"
.LASF10:
	.string	"sizetype"
.LASF61:
	.string	"_ISpunct"
.LASF36:
	.string	"_offset"
.LASF20:
	.string	"_IO_write_ptr"
.LASF15:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_base"
.LASF27:
	.string	"_markers"
.LASF72:
	.string	"dayhoff.c"
.LASF54:
	.string	"_ISdigit"
.LASF59:
	.string	"_ISblank"
.LASF62:
	.string	"_ISalnum"
.LASF49:
	.string	"float"
.LASF56:
	.string	"_ISspace"
.LASF73:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF12:
	.string	"long long int"
.LASF66:
	.string	"order"
.LASF35:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF32:
	.string	"_cur_column"
.LASF48:
	.string	"_pos"
.LASF68:
	.string	"sptr"
.LASF47:
	.string	"_sbuf"
.LASF44:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF71:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF69:
	.string	"scale"
.LASF45:
	.string	"_IO_marker"
.LASF34:
	.string	"_shortbuf"
.LASF17:
	.string	"_IO_read_end"
.LASF38:
	.string	"__pad2"
.LASF19:
	.string	"_IO_write_base"
.LASF43:
	.string	"_unused2"
.LASF16:
	.string	"_IO_read_ptr"
.LASF23:
	.string	"_IO_buf_end"
.LASF67:
	.string	"nsymbols"
.LASF11:
	.string	"char"
.LASF52:
	.string	"_ISlower"
.LASF46:
	.string	"_next"
.LASF37:
	.string	"__pad1"
.LASF55:
	.string	"_ISxdigit"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF64:
	.string	"ret_scale"
.LASF65:
	.string	"buffer"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF50:
	.string	"double"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF28:
	.string	"_chain"
.LASF25:
	.string	"_IO_backup_base"
.LASF63:
	.string	"ret_pam"
.LASF30:
	.string	"_flags2"
.LASF57:
	.string	"_ISprint"
.LASF42:
	.string	"_mode"
.LASF18:
	.string	"_IO_read_base"
.LASF51:
	.string	"_ISupper"
.LASF33:
	.string	"_vtable_offset"
.LASF76:
	.string	"squid_errno"
.LASF24:
	.string	"_IO_save_base"
.LASF29:
	.string	"_fileno"
.LASF14:
	.string	"FILE"
.LASF3:
	.string	"unsigned int"
.LASF53:
	.string	"_ISalpha"
.LASF75:
	.string	"ParsePAMFile"
.LASF74:
	.string	"_IO_lock_t"
.LASF70:
	.string	"gotscale"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
