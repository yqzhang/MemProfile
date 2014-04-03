	.file	"locale.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 locale.c
# -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
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
	.globl	Perl_set_numeric_radix
	.type	Perl_set_numeric_radix, @function
Perl_set_numeric_radix:
.LFB2:
	.file 1 "locale.c"
	.loc 1 87 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 109 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_set_numeric_radix, .-Perl_set_numeric_radix
	.globl	Perl_new_numeric
	.type	Perl_new_numeric, @function
Perl_new_numeric:
.LFB3:
	.loc 1 116 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# newnum, newnum
	.loc 1 139 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_new_numeric, .-Perl_new_numeric
	.globl	Perl_set_numeric_standard
	.type	Perl_set_numeric_standard, @function
Perl_set_numeric_standard:
.LFB4:
	.loc 1 143 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 154 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_set_numeric_standard, .-Perl_set_numeric_standard
	.globl	Perl_set_numeric_local
	.type	Perl_set_numeric_local, @function
Perl_set_numeric_local:
.LFB5:
	.loc 1 158 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 169 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_set_numeric_local, .-Perl_set_numeric_local
	.globl	Perl_new_ctype
	.type	Perl_new_ctype, @function
Perl_new_ctype:
.LFB6:
	.loc 1 176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# newctype, newctype
	.loc 1 191 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_new_ctype, .-Perl_new_ctype
	.globl	Perl_new_collate
	.type	Perl_new_collate, @function
Perl_new_collate:
.LFB7:
	.loc 1 198 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# newcoll, newcoll
	.loc 1 236 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_new_collate, .-Perl_new_collate
	.section	.rodata
.LC0:
	.string	"UTF-8"
.LC1:
	.string	"UTF8"
.LC2:
	.string	"PERL_UNICODE"
	.text
	.globl	Perl_init_i18nl10n
	.type	Perl_init_i18nl10n, @function
Perl_init_i18nl10n:
.LFB8:
	.loc 1 243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# printwarn, printwarn
	.loc 1 244 0
	movl	$1, -20(%rbp)	#, ok
.LBB2:
	.loc 1 503 0
	movb	$0, -21(%rbp)	#, utf8locale
	.loc 1 504 0
	movq	$0, -8(%rbp)	#, codeset
	.loc 1 508 0
	cmpq	$0, -8(%rbp)	#, codeset
	je	.L8	#,
	.loc 1 509 0
	movq	-8(%rbp), %rax	# codeset, tmp67
	movl	$5, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	Perl_ibcmp	#
	testl	%eax, %eax	# D.10349
	je	.L9	#,
	.loc 1 510 0 discriminator 2
	movq	-8(%rbp), %rax	# codeset, tmp68
	movl	$4, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	Perl_ibcmp	#
	.loc 1 509 0 discriminator 2
	testl	%eax, %eax	# D.10349
	jne	.L10	#,
.L9:
	.loc 1 509 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.0
	jmp	.L11	#
.L10:
	.loc 1 509 0 discriminator 3
	movl	$0, %eax	#, iftmp.0
.L11:
	.loc 1 509 0 discriminator 4
	movb	%al, -21(%rbp)	# iftmp.0, utf8locale
.L8:
	.loc 1 528 0 is_stmt 1
	cmpb	$0, -21(%rbp)	#, utf8locale
	je	.L12	#,
	.loc 1 529 0
	movb	$1, PL_utf8locale(%rip)	#, PL_utf8locale
.L12:
.LBE2:
.LBB3:
	.loc 1 535 0
	movl	$.LC2, %edi	#,
	call	getenv	#
	movq	%rax, -16(%rbp)	# p.1, p
	.loc 1 536 0
	movq	-16(%rbp), %rax	# p, p.3
	testq	%rax, %rax	# p.3
	je	.L13	#,
	.loc 1 536 0 is_stmt 0 discriminator 1
	leaq	-16(%rbp), %rax	#, tmp69
	movq	%rax, %rdi	# tmp69,
	call	Perl_parse_unicode_opts	#
	jmp	.L14	#
.L13:
	.loc 1 536 0 discriminator 2
	movl	$0, %eax	#, iftmp.2
.L14:
	.loc 1 536 0 discriminator 3
	movl	%eax, PL_unicode(%rip)	# iftmp.2, PL_unicode
.LBE3:
	.loc 1 552 0 is_stmt 1 discriminator 3
	movl	-20(%rbp), %eax	# ok, D.10349
	.loc 1 553 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_init_i18nl10n, .-Perl_init_i18nl10n
	.globl	Perl_init_i18nl14n
	.type	Perl_init_i18nl14n, @function
Perl_init_i18nl14n:
.LFB9:
	.loc 1 558 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# printwarn, printwarn
	.loc 1 559 0
	movl	-4(%rbp), %eax	# printwarn, tmp61
	movl	%eax, %edi	# tmp61,
	call	Perl_init_i18nl10n	#
	.loc 1 560 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_init_i18nl14n, .-Perl_init_i18nl14n
.Letext0:
	.file 2 "intrpvar.h"
	.file 3 "handy.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x246
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF29
	.byte	0x1
	.long	.LASF30
	.long	.LASF31
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF11
	.uleb128 0x5
	.string	"U32"
	.byte	0x3
	.byte	0x89
	.long	0x3b
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x56
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x73
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.byte	0x73
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x8e
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x9d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0xaf
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x143
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.byte	0xaf
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0xc5
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x16f
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.byte	0xc5
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0xf2
	.long	0x57
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ff
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0xf2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.string	"ok"
	.byte	0x1
	.byte	0xf4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1df
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.value	0x1f7
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.value	0x1f8
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.value	0x217
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.value	0x22d
	.long	0x57
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x231
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.value	0x22d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	.LASF27
	.byte	0x2
	.value	0x20b
	.long	0x72
	.uleb128 0x11
	.long	.LASF28
	.byte	0x2
	.value	0x218
	.long	0x8e
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
	.uleb128 0x8
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
	.byte	0
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF14:
	.string	"Perl_set_numeric_standard"
.LASF21:
	.string	"newcoll"
.LASF27:
	.string	"PL_utf8locale"
.LASF12:
	.string	"float"
.LASF16:
	.string	"Perl_new_numeric"
.LASF9:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned char"
.LASF3:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF23:
	.string	"utf8locale"
.LASF11:
	.string	"double"
.LASF20:
	.string	"Perl_new_collate"
.LASF25:
	.string	"Perl_init_i18nl10n"
.LASF2:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF18:
	.string	"newnum"
.LASF28:
	.string	"PL_unicode"
.LASF7:
	.string	"sizetype"
.LASF15:
	.string	"Perl_set_numeric_local"
.LASF10:
	.string	"long long int"
.LASF24:
	.string	"codeset"
.LASF29:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF22:
	.string	"printwarn"
.LASF13:
	.string	"Perl_set_numeric_radix"
.LASF6:
	.string	"long int"
.LASF19:
	.string	"newctype"
.LASF30:
	.string	"locale.c"
.LASF4:
	.string	"signed char"
.LASF17:
	.string	"Perl_new_ctype"
.LASF26:
	.string	"Perl_init_i18nl14n"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
