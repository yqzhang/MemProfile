	.file	"revcomp.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 revcomp.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	revcomp
	.type	revcomp, @function
revcomp:
.LFB2:
	.file 1 "revcomp.c"
	.loc 1 36 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# comp, comp
	movq	%rsi, -32(%rbp)	# seq, seq
	.loc 1 40 0
	cmpq	$0, -24(%rbp)	#, comp
	jne	.L2	#,
	.loc 1 40 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5722
	jmp	.L3	#
.L2:
	.loc 1 41 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, seq
	jne	.L4	#,
	.loc 1 41 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5722
	jmp	.L3	#
.L4:
	.loc 1 43 0 is_stmt 1
	movq	-32(%rbp), %rdx	# seq, tmp76
	movq	-24(%rbp), %rax	# comp, tmp77
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	StrReverse	#
	.loc 1 44 0
	movq	-24(%rbp), %rax	# comp, tmp78
	movq	%rax, -8(%rbp)	# tmp78, s
	jmp	.L5	#
.L25:
	.loc 1 46 0
	movq	-8(%rbp), %rax	# s, tmp79
	movzbl	(%rax), %eax	# *s_1, tmp80
	movb	%al, -9(%rbp)	# tmp80, c
	.loc 1 47 0
	movsbl	-9(%rbp), %eax	# c, D.5724
	movl	%eax, %edi	# D.5724,
	call	sre_toupper	#
	movb	%al, -9(%rbp)	# D.5724, c
	.loc 1 48 0
	movsbl	-9(%rbp), %eax	# c, D.5724
	subl	$65, %eax	#, tmp81
	cmpl	$24, %eax	#, tmp81
	ja	.L26	#,
	movl	%eax, %eax	# tmp81, tmp82
	movq	.L8(,%rax,8), %rax	#, tmp83
	jmp	*%rax	# tmp83
	.section	.rodata
	.align 8
	.align 4
.L8:
	.quad	.L7
	.quad	.L9
	.quad	.L10
	.quad	.L11
	.quad	.L26
	.quad	.L26
	.quad	.L12
	.quad	.L13
	.quad	.L26
	.quad	.L26
	.quad	.L14
	.quad	.L26
	.quad	.L15
	.quad	.L26
	.quad	.L26
	.quad	.L26
	.quad	.L26
	.quad	.L16
	.quad	.L17
	.quad	.L18
	.quad	.L19
	.quad	.L20
	.quad	.L21
	.quad	.L26
	.quad	.L22
	.text
.L7:
	.loc 1 49 0
	movb	$84, -9(%rbp)	#, c
	jmp	.L23	#
.L10:
	.loc 1 50 0
	movb	$71, -9(%rbp)	#, c
	jmp	.L23	#
.L12:
	.loc 1 51 0
	movb	$67, -9(%rbp)	#, c
	jmp	.L23	#
.L18:
	.loc 1 52 0
	movb	$65, -9(%rbp)	#, c
	jmp	.L23	#
.L19:
	.loc 1 53 0
	movb	$65, -9(%rbp)	#, c
	jmp	.L23	#
.L16:
	.loc 1 54 0
	movb	$89, -9(%rbp)	#, c
	jmp	.L23	#
.L22:
	.loc 1 55 0
	movb	$82, -9(%rbp)	#, c
	jmp	.L23	#
.L15:
	.loc 1 56 0
	movb	$75, -9(%rbp)	#, c
	jmp	.L23	#
.L14:
	.loc 1 57 0
	movb	$77, -9(%rbp)	#, c
	jmp	.L23	#
.L17:
	.loc 1 58 0
	movb	$83, -9(%rbp)	#, c
	jmp	.L23	#
.L21:
	.loc 1 59 0
	movb	$87, -9(%rbp)	#, c
	jmp	.L23	#
.L13:
	.loc 1 60 0
	movb	$68, -9(%rbp)	#, c
	jmp	.L23	#
.L11:
	.loc 1 61 0
	movb	$72, -9(%rbp)	#, c
	jmp	.L23	#
.L9:
	.loc 1 62 0
	movb	$86, -9(%rbp)	#, c
	jmp	.L23	#
.L20:
	.loc 1 63 0
	movb	$66, -9(%rbp)	#, c
	jmp	.L23	#
.L26:
	.loc 1 64 0
	nop
.L23:
	.loc 1 66 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_31, D.5726
	movq	-8(%rbp), %rax	# s, tmp84
	movzbl	(%rax), %eax	# *s_1, D.5723
	movsbq	%al, %rax	# D.5723, D.5727
	addq	%rax, %rax	# D.5727
	addq	%rdx, %rax	# D.5726, D.5726
	movzwl	(%rax), %eax	# *_36, D.5728
	movzwl	%ax, %eax	# D.5728, D.5724
	andl	$512, %eax	#, D.5724
	testl	%eax, %eax	# D.5724
	je	.L24	#,
	.loc 1 66 0 is_stmt 0 discriminator 1
	movsbl	-9(%rbp), %eax	# c, D.5724
	movl	%eax, %edi	# D.5724,
	call	sre_tolower	#
	movb	%al, -9(%rbp)	# D.5724, c
.L24:
	.loc 1 67 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp85
	movzbl	-9(%rbp), %edx	# c, tmp86
	movb	%dl, (%rax)	# tmp86, *s_1
	.loc 1 44 0
	addq	$1, -8(%rbp)	#, s
.L5:
	.loc 1 44 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp87
	movzbl	(%rax), %eax	# *s_1, D.5723
	testb	%al, %al	# D.5723
	jne	.L25	#,
	.loc 1 69 0 is_stmt 1
	movq	-24(%rbp), %rax	# comp, D.5722
.L3:
	.loc 1 70 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	revcomp, .-revcomp
.Letext0:
	.file 2 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x140
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF26
	.byte	0x1
	.long	.LASF27
	.long	.LASF28
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x30
	.long	0xd5
	.uleb128 0x6
	.long	.LASF9
	.sleb128 256
	.uleb128 0x6
	.long	.LASF10
	.sleb128 512
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1024
	.uleb128 0x6
	.long	.LASF12
	.sleb128 2048
	.uleb128 0x6
	.long	.LASF13
	.sleb128 4096
	.uleb128 0x6
	.long	.LASF14
	.sleb128 8192
	.uleb128 0x6
	.long	.LASF15
	.sleb128 16384
	.uleb128 0x6
	.long	.LASF16
	.sleb128 32768
	.uleb128 0x6
	.long	.LASF17
	.sleb128 1
	.uleb128 0x6
	.long	.LASF18
	.sleb128 2
	.uleb128 0x6
	.long	.LASF19
	.sleb128 4
	.uleb128 0x6
	.long	.LASF20
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF22
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF23
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x7
	.long	.LASF29
	.byte	0x1
	.byte	0x23
	.long	0x6c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x23
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"seq"
	.byte	0x1
	.byte	0x23
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"s"
	.byte	0x1
	.byte	0x25
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x26
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
.LASF12:
	.string	"_ISdigit"
.LASF18:
	.string	"_IScntrl"
.LASF16:
	.string	"_ISgraph"
.LASF15:
	.string	"_ISprint"
.LASF29:
	.string	"revcomp"
.LASF21:
	.string	"float"
.LASF24:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"comp"
.LASF0:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF11:
	.string	"_ISalpha"
.LASF22:
	.string	"double"
.LASF5:
	.string	"short int"
.LASF28:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF27:
	.string	"revcomp.c"
.LASF8:
	.string	"char"
.LASF20:
	.string	"_ISalnum"
.LASF7:
	.string	"sizetype"
.LASF17:
	.string	"_ISblank"
.LASF10:
	.string	"_ISlower"
.LASF23:
	.string	"long long int"
.LASF13:
	.string	"_ISxdigit"
.LASF26:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF19:
	.string	"_ISpunct"
.LASF14:
	.string	"_ISspace"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF9:
	.string	"_ISupper"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
