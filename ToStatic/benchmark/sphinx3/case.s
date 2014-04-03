	.file	"case.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# case.c -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
	.globl	lcase
	.type	lcase, @function
lcase:
.LFB0:
	.file 1 "case.c"
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, %rax	# cp, cp
	.loc 1 61 0
	jmp	.L2	#
.L5:
	.loc 1 62 0
	movzbl	(%rax), %edx	# *cp_1, D.1809
	cmpb	$64, %dl	#, D.1809
	jle	.L3	#,
	.loc 1 62 0 is_stmt 0 discriminator 1
	movzbl	(%rax), %edx	# *cp_1, D.1809
	cmpb	$90, %dl	#, D.1809
	jg	.L3	#,
	movzbl	(%rax), %edx	# *cp_1, D.1809
	addl	$32, %edx	#, D.1810
	jmp	.L4	#
.L3:
	.loc 1 62 0 discriminator 2
	movzbl	(%rax), %edx	# *cp_1, iftmp.0
.L4:
	.loc 1 62 0 discriminator 3
	movb	%dl, (%rax)	# iftmp.0, *cp_1
	.loc 1 61 0 is_stmt 1 discriminator 3
	addq	$1, %rax	#, cp
.L2:
	.loc 1 61 0 is_stmt 0 discriminator 1
	movzbl	(%rax), %edx	# *cp_1, D.1809
	testb	%dl, %dl	# D.1809
	jne	.L5	#,
	.loc 1 63 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	lcase, .-lcase
	.globl	ucase
	.type	ucase, @function
ucase:
.LFB1:
	.loc 1 67 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, %rax	# cp, cp
	.loc 1 68 0
	jmp	.L7	#
.L10:
	.loc 1 69 0
	movzbl	(%rax), %edx	# *cp_1, D.1811
	cmpb	$96, %dl	#, D.1811
	jle	.L8	#,
	.loc 1 69 0 is_stmt 0 discriminator 1
	movzbl	(%rax), %edx	# *cp_1, D.1811
	cmpb	$122, %dl	#, D.1811
	jg	.L8	#,
	movzbl	(%rax), %edx	# *cp_1, D.1811
	subl	$32, %edx	#, D.1812
	jmp	.L9	#
.L8:
	.loc 1 69 0 discriminator 2
	movzbl	(%rax), %edx	# *cp_1, iftmp.1
.L9:
	.loc 1 69 0 discriminator 3
	movb	%dl, (%rax)	# iftmp.1, *cp_1
	.loc 1 68 0 is_stmt 1 discriminator 3
	addq	$1, %rax	#, cp
.L7:
	.loc 1 68 0 is_stmt 0 discriminator 1
	movzbl	(%rax), %edx	# *cp_1, D.1811
	testb	%dl, %dl	# D.1811
	jne	.L10	#,
	.loc 1 70 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	ucase, .-ucase
	.globl	strcmp_nocase
	.type	strcmp_nocase, @function
strcmp_nocase:
.LFB2:
	.loc 1 74 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# str1, str1
	movq	%rsi, -32(%rbp)	# str2, str2
.L19:
	.loc 1 78 0
	movq	-24(%rbp), %rax	# str1, str1.2
	leaq	1(%rax), %rdx	#, tmp71
	movq	%rdx, -24(%rbp)	# tmp71, str1
	movzbl	(%rax), %eax	# *str1.2_8, tmp72
	movb	%al, -2(%rbp)	# tmp72, c1
	.loc 1 79 0
	cmpb	$96, -2(%rbp)	#, c1
	jle	.L12	#,
	.loc 1 79 0 is_stmt 0 discriminator 1
	cmpb	$122, -2(%rbp)	#, c1
	jg	.L12	#,
	movzbl	-2(%rbp), %eax	# c1, c1.4
	subl	$32, %eax	#, D.1814
	jmp	.L13	#
.L12:
	.loc 1 79 0 discriminator 2
	movzbl	-2(%rbp), %eax	# c1, iftmp.3
.L13:
	.loc 1 79 0 discriminator 3
	movb	%al, -2(%rbp)	# iftmp.3, c1
	.loc 1 80 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# str2, str2.5
	leaq	1(%rax), %rdx	#, tmp73
	movq	%rdx, -32(%rbp)	# tmp73, str2
	movzbl	(%rax), %eax	# *str2.5_16, tmp74
	movb	%al, -1(%rbp)	# tmp74, c2
	.loc 1 81 0 discriminator 3
	cmpb	$96, -1(%rbp)	#, c2
	jle	.L14	#,
	.loc 1 81 0 is_stmt 0 discriminator 1
	cmpb	$122, -1(%rbp)	#, c2
	jg	.L14	#,
	movzbl	-1(%rbp), %eax	# c2, c2.7
	subl	$32, %eax	#, D.1814
	jmp	.L15	#
.L14:
	.loc 1 81 0 discriminator 2
	movzbl	-1(%rbp), %eax	# c2, iftmp.6
.L15:
	.loc 1 81 0 discriminator 3
	movb	%al, -1(%rbp)	# iftmp.6, c2
	.loc 1 82 0 is_stmt 1 discriminator 3
	movzbl	-2(%rbp), %eax	# c1, tmp75
	cmpb	-1(%rbp), %al	# c2, tmp75
	je	.L16	#,
	.loc 1 83 0
	movsbl	-2(%rbp), %edx	# c1, D.1815
	movsbl	-1(%rbp), %eax	# c2, D.1815
	subl	%eax, %edx	# D.1815, D.1813
	movl	%edx, %eax	# D.1813, D.1813
	jmp	.L17	#
.L16:
	.loc 1 84 0
	cmpb	$0, -2(%rbp)	#, c1
	jne	.L18	#,
	.loc 1 85 0
	movl	$0, %eax	#, D.1813
	jmp	.L17	#
.L18:
	.loc 1 86 0
	jmp	.L19	#
.L17:
	.loc 1 87 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	strcmp_nocase, .-strcmp_nocase
.Letext0:
	.file 2 "libutil/prim_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF11
	.byte	0x1
	.long	.LASF12
	.long	.LASF13
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x2
	.byte	0x3f
	.long	0x38
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF7
	.byte	0x1
	.byte	0x3b
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a
	.uleb128 0x6
	.string	"cp"
	.byte	0x1
	.byte	0x3b
	.long	0x9a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x46
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x42
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xca
	.uleb128 0x6
	.string	"cp"
	.byte	0x1
	.byte	0x42
	.long	0x9a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x49
	.long	0x2d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x122
	.uleb128 0x9
	.long	.LASF9
	.byte	0x1
	.byte	0x49
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF10
	.byte	0x1
	.byte	0x49
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"c1"
	.byte	0x1
	.byte	0x4b
	.long	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xa
	.string	"c2"
	.byte	0x1
	.byte	0x4b
	.long	0x46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x128
	.uleb128 0xb
	.long	0x46
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
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
.LASF15:
	.string	"strcmp_nocase"
.LASF2:
	.string	"unsigned int"
.LASF12:
	.string	"case.c"
.LASF13:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF4:
	.string	"unsigned char"
.LASF1:
	.string	"char"
.LASF11:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF6:
	.string	"double"
.LASF7:
	.string	"lcase"
.LASF3:
	.string	"short unsigned int"
.LASF8:
	.string	"ucase"
.LASF5:
	.string	"float"
.LASF0:
	.string	"short int"
.LASF9:
	.string	"str1"
.LASF10:
	.string	"str2"
.LASF14:
	.string	"int32"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
