	.file	"perlmain.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 perlmain.c
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
	.local	my_perl
	.comm	my_perl,8,8
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "perlmain.c"
	.loc 1 49 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# argc, argc
	movq	%rsi, -32(%rbp)	# argv, argv
	movq	%rdx, -40(%rbp)	# env, env
	.loc 1 52 0
	movl	$0, PL_use_safe_putenv(%rip)	#, PL_use_safe_putenv
	.loc 1 88 0
	movzbl	PL_do_undump(%rip), %eax	# PL_do_undump, PL_do_undump.0
	testb	%al, %al	# PL_do_undump.0
	jne	.L2	#,
	.loc 1 89 0
	call	perl_alloc	#
	movq	%rax, my_perl(%rip)	# my_perl.1, my_perl
	.loc 1 90 0
	movq	my_perl(%rip), %rax	# my_perl, my_perl.2
	testq	%rax, %rax	# my_perl.2
	jne	.L3	#,
	.loc 1 91 0
	movl	$1, %edi	#,
	call	exit	#
.L3:
	.loc 1 92 0
	movq	my_perl(%rip), %rax	# my_perl, my_perl.3
	movq	%rax, %rdi	# my_perl.3,
	call	perl_construct	#
	.loc 1 93 0
	movl	$0, PL_perl_destruct_level(%rip)	#, PL_perl_destruct_level
.L2:
	.loc 1 95 0
	movzbl	PL_exit_flags(%rip), %eax	# PL_exit_flags, PL_exit_flags.4
	orl	$2, %eax	#, PL_exit_flags.5
	movb	%al, PL_exit_flags(%rip)	# PL_exit_flags.5, PL_exit_flags
	.loc 1 96 0
	movq	my_perl(%rip), %rax	# my_perl, my_perl.6
	movq	-32(%rbp), %rcx	# argv, tmp70
	movl	-20(%rbp), %edx	# argc, tmp71
	movl	$0, %r8d	#,
	movl	$xs_init, %esi	#,
	movq	%rax, %rdi	# my_perl.6,
	call	perl_parse	#
	movl	%eax, -4(%rbp)	# tmp72, exitstatus
	.loc 1 97 0
	cmpl	$0, -4(%rbp)	#, exitstatus
	jne	.L4	#,
	.loc 1 98 0
	movq	my_perl(%rip), %rax	# my_perl, my_perl.7
	movq	%rax, %rdi	# my_perl.7,
	call	perl_run	#
.L4:
	.loc 1 100 0
	movq	my_perl(%rip), %rax	# my_perl, my_perl.8
	movq	%rax, %rdi	# my_perl.8,
	call	perl_destruct	#
	movl	%eax, -4(%rbp)	# tmp73, exitstatus
	.loc 1 102 0
	movq	my_perl(%rip), %rax	# my_perl, my_perl.9
	movq	%rax, %rdi	# my_perl.9,
	call	perl_free	#
	.loc 1 106 0
	movl	-4(%rbp), %eax	# exitstatus, tmp74
	movl	%eax, %edi	# tmp74,
	call	exit	#
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
.LC0:
	.string	"perlmain.c"
.LC1:
	.string	"DynaLoader::boot_DynaLoader"
.LC2:
	.string	"Cwd::bootstrap"
.LC3:
	.string	"Data::Dumper::bootstrap"
.LC4:
	.string	"Devel::Peek::bootstrap"
.LC5:
	.string	"Digest::MD5::bootstrap"
.LC6:
	.string	"IO::bootstrap"
.LC7:
	.string	"MIME::Base64::bootstrap"
.LC8:
	.string	"Sys::Hostname::bootstrap"
.LC9:
	.string	"Time::HiRes::bootstrap"
.LC10:
	.string	"attrs::bootstrap"
.LC11:
	.string	"Storable::bootstrap"
.LC12:
	.string	"HTML::Parser::bootstrap"
.LC13:
	.string	"Opcode::bootstrap"
	.text
	.type	xs_init, @function
xs_init:
.LFB3:
	.loc 1 130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 131 0
	movq	$.LC0, -8(%rbp)	#, file
	.loc 1 133 0
	movq	-8(%rbp), %rax	# file, tmp59
	movq	%rax, %rdx	# tmp59,
	movl	$boot_DynaLoader, %esi	#,
	movl	$.LC1, %edi	#,
	call	Perl_newXS	#
	.loc 1 134 0
	movq	-8(%rbp), %rax	# file, tmp60
	movq	%rax, %rdx	# tmp60,
	movl	$boot_Cwd, %esi	#,
	movl	$.LC2, %edi	#,
	call	Perl_newXS	#
	.loc 1 135 0
	movq	-8(%rbp), %rax	# file, tmp61
	movq	%rax, %rdx	# tmp61,
	movl	$boot_Data__Dumper, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_newXS	#
	.loc 1 136 0
	movq	-8(%rbp), %rax	# file, tmp62
	movq	%rax, %rdx	# tmp62,
	movl	$boot_Devel__Peek, %esi	#,
	movl	$.LC4, %edi	#,
	call	Perl_newXS	#
	.loc 1 137 0
	movq	-8(%rbp), %rax	# file, tmp63
	movq	%rax, %rdx	# tmp63,
	movl	$boot_Digest__MD5, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_newXS	#
	.loc 1 138 0
	movq	-8(%rbp), %rax	# file, tmp64
	movq	%rax, %rdx	# tmp64,
	movl	$boot_IO, %esi	#,
	movl	$.LC6, %edi	#,
	call	Perl_newXS	#
	.loc 1 139 0
	movq	-8(%rbp), %rax	# file, tmp65
	movq	%rax, %rdx	# tmp65,
	movl	$boot_MIME__Base64, %esi	#,
	movl	$.LC7, %edi	#,
	call	Perl_newXS	#
	.loc 1 140 0
	movq	-8(%rbp), %rax	# file, tmp66
	movq	%rax, %rdx	# tmp66,
	movl	$boot_Sys__Hostname, %esi	#,
	movl	$.LC8, %edi	#,
	call	Perl_newXS	#
	.loc 1 141 0
	movq	-8(%rbp), %rax	# file, tmp67
	movq	%rax, %rdx	# tmp67,
	movl	$boot_Time__HiRes, %esi	#,
	movl	$.LC9, %edi	#,
	call	Perl_newXS	#
	.loc 1 142 0
	movq	-8(%rbp), %rax	# file, tmp68
	movq	%rax, %rdx	# tmp68,
	movl	$boot_attrs, %esi	#,
	movl	$.LC10, %edi	#,
	call	Perl_newXS	#
	.loc 1 143 0
	movq	-8(%rbp), %rax	# file, tmp69
	movq	%rax, %rdx	# tmp69,
	movl	$boot_Storable, %esi	#,
	movl	$.LC11, %edi	#,
	call	Perl_newXS	#
	.loc 1 144 0
	movq	-8(%rbp), %rax	# file, tmp70
	movq	%rax, %rdx	# tmp70,
	movl	$boot_HTML__Parser, %esi	#,
	movl	$.LC12, %edi	#,
	call	Perl_newXS	#
	.loc 1 145 0
	movq	-8(%rbp), %rax	# file, tmp71
	movq	%rax, %rdx	# tmp71,
	movl	$boot_MIME__Base64, %esi	#,
	movl	$.LC7, %edi	#,
	call	Perl_newXS	#
	.loc 1 146 0
	movq	-8(%rbp), %rax	# file, tmp72
	movq	%rax, %rdx	# tmp72,
	movl	$boot_Opcode, %esi	#,
	movl	$.LC13, %edi	#,
	call	Perl_newXS	#
	.loc 1 148 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	xs_init, .-xs_init
.Letext0:
	.file 2 "intrpvar.h"
	.file 3 "perlvars.h"
	.file 4 "perl.h"
	.file 5 "handy.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x335
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF90
	.byte	0x1
	.long	.LASF91
	.long	.LASF92
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
	.long	.LASF12
	.byte	0x4
	.value	0x7e1
	.long	0x9a
	.uleb128 0x6
	.long	.LASF93
	.byte	0x1
	.byte	0x4
	.value	0xea7
	.long	0xb5
	.uleb128 0x7
	.long	.LASF94
	.byte	0x4
	.value	0xea8
	.long	0x72
	.byte	0
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0x5
	.byte	0x85
	.long	0x2d
	.uleb128 0x4
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.value	0xfb1
	.long	0x26b
	.uleb128 0xa
	.long	.LASF14
	.sleb128 0
	.uleb128 0xa
	.long	.LASF15
	.sleb128 1
	.uleb128 0xa
	.long	.LASF16
	.sleb128 2
	.uleb128 0xa
	.long	.LASF17
	.sleb128 3
	.uleb128 0xa
	.long	.LASF18
	.sleb128 4
	.uleb128 0xa
	.long	.LASF19
	.sleb128 5
	.uleb128 0xa
	.long	.LASF20
	.sleb128 6
	.uleb128 0xa
	.long	.LASF21
	.sleb128 7
	.uleb128 0xa
	.long	.LASF22
	.sleb128 8
	.uleb128 0xa
	.long	.LASF23
	.sleb128 9
	.uleb128 0xa
	.long	.LASF24
	.sleb128 10
	.uleb128 0xa
	.long	.LASF25
	.sleb128 11
	.uleb128 0xa
	.long	.LASF26
	.sleb128 12
	.uleb128 0xa
	.long	.LASF27
	.sleb128 13
	.uleb128 0xa
	.long	.LASF28
	.sleb128 14
	.uleb128 0xa
	.long	.LASF29
	.sleb128 15
	.uleb128 0xa
	.long	.LASF30
	.sleb128 16
	.uleb128 0xa
	.long	.LASF31
	.sleb128 17
	.uleb128 0xa
	.long	.LASF32
	.sleb128 18
	.uleb128 0xa
	.long	.LASF33
	.sleb128 19
	.uleb128 0xa
	.long	.LASF34
	.sleb128 20
	.uleb128 0xa
	.long	.LASF35
	.sleb128 21
	.uleb128 0xa
	.long	.LASF36
	.sleb128 22
	.uleb128 0xa
	.long	.LASF37
	.sleb128 23
	.uleb128 0xa
	.long	.LASF38
	.sleb128 24
	.uleb128 0xa
	.long	.LASF39
	.sleb128 25
	.uleb128 0xa
	.long	.LASF40
	.sleb128 26
	.uleb128 0xa
	.long	.LASF41
	.sleb128 27
	.uleb128 0xa
	.long	.LASF42
	.sleb128 28
	.uleb128 0xa
	.long	.LASF43
	.sleb128 29
	.uleb128 0xa
	.long	.LASF44
	.sleb128 30
	.uleb128 0xa
	.long	.LASF45
	.sleb128 31
	.uleb128 0xa
	.long	.LASF46
	.sleb128 32
	.uleb128 0xa
	.long	.LASF47
	.sleb128 33
	.uleb128 0xa
	.long	.LASF48
	.sleb128 34
	.uleb128 0xa
	.long	.LASF49
	.sleb128 35
	.uleb128 0xa
	.long	.LASF50
	.sleb128 36
	.uleb128 0xa
	.long	.LASF51
	.sleb128 37
	.uleb128 0xa
	.long	.LASF52
	.sleb128 38
	.uleb128 0xa
	.long	.LASF53
	.sleb128 39
	.uleb128 0xa
	.long	.LASF54
	.sleb128 40
	.uleb128 0xa
	.long	.LASF55
	.sleb128 41
	.uleb128 0xa
	.long	.LASF56
	.sleb128 42
	.uleb128 0xa
	.long	.LASF57
	.sleb128 43
	.uleb128 0xa
	.long	.LASF58
	.sleb128 44
	.uleb128 0xa
	.long	.LASF59
	.sleb128 45
	.uleb128 0xa
	.long	.LASF60
	.sleb128 46
	.uleb128 0xa
	.long	.LASF61
	.sleb128 47
	.uleb128 0xa
	.long	.LASF62
	.sleb128 48
	.uleb128 0xa
	.long	.LASF63
	.sleb128 49
	.uleb128 0xa
	.long	.LASF64
	.sleb128 50
	.uleb128 0xa
	.long	.LASF65
	.sleb128 51
	.uleb128 0xa
	.long	.LASF66
	.sleb128 52
	.uleb128 0xa
	.long	.LASF67
	.sleb128 53
	.uleb128 0xa
	.long	.LASF68
	.sleb128 54
	.uleb128 0xa
	.long	.LASF69
	.sleb128 55
	.uleb128 0xa
	.long	.LASF70
	.sleb128 56
	.uleb128 0xa
	.long	.LASF71
	.sleb128 57
	.uleb128 0xa
	.long	.LASF72
	.sleb128 58
	.uleb128 0xa
	.long	.LASF73
	.sleb128 59
	.uleb128 0xa
	.long	.LASF74
	.sleb128 60
	.uleb128 0xa
	.long	.LASF75
	.sleb128 61
	.uleb128 0xa
	.long	.LASF76
	.sleb128 62
	.uleb128 0xa
	.long	.LASF77
	.sleb128 63
	.uleb128 0xa
	.long	.LASF78
	.sleb128 64
	.uleb128 0xa
	.long	.LASF79
	.sleb128 65
	.uleb128 0xa
	.long	.LASF80
	.sleb128 66
	.byte	0
	.uleb128 0xb
	.long	.LASF95
	.byte	0x1
	.byte	0x30
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c5
	.uleb128 0xc
	.long	.LASF81
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF82
	.byte	0x1
	.byte	0x30
	.long	0x2c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"env"
	.byte	0x1
	.byte	0x30
	.long	0x2c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF83
	.byte	0x1
	.byte	0x32
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0xf
	.long	.LASF96
	.byte	0x1
	.byte	0x81
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f7
	.uleb128 0xe
	.long	.LASF84
	.byte	0x1
	.byte	0x83
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF85
	.byte	0x1
	.byte	0x27
	.long	0xbf
	.uleb128 0x9
	.byte	0x3
	.quad	my_perl
	.uleb128 0x10
	.long	.LASF86
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x10
	.long	.LASF87
	.byte	0x2
	.byte	0x4a
	.long	0xb5
	.uleb128 0x10
	.long	.LASF88
	.byte	0x3
	.byte	0x29
	.long	0x72
	.uleb128 0x10
	.long	.LASF89
	.byte	0x3
	.byte	0x49
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x10
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
.LASF18:
	.string	"string_amg"
.LASF56:
	.string	"not_amg"
.LASF75:
	.string	"to_gv_amg"
.LASF39:
	.string	"bor_ass_amg"
.LASF40:
	.string	"bxor_amg"
.LASF73:
	.string	"to_av_amg"
.LASF7:
	.string	"sizetype"
.LASF27:
	.string	"div_ass_amg"
.LASF87:
	.string	"PL_exit_flags"
.LASF95:
	.string	"main"
.LASF46:
	.string	"eq_amg"
.LASF63:
	.string	"exp_amg"
.LASF84:
	.string	"file"
.LASF44:
	.string	"gt_amg"
.LASF61:
	.string	"cos_amg"
.LASF36:
	.string	"band_amg"
.LASF14:
	.string	"fallback_amg"
.LASF86:
	.string	"PL_perl_destruct_level"
.LASF80:
	.string	"max_amg_code"
.LASF54:
	.string	"seq_amg"
.LASF23:
	.string	"subtr_ass_amg"
.LASF30:
	.string	"pow_amg"
.LASF32:
	.string	"lshift_amg"
.LASF52:
	.string	"sgt_amg"
.LASF60:
	.string	"atan2_amg"
.LASF93:
	.string	"interpreter"
.LASF79:
	.string	"DESTROY_amg"
.LASF82:
	.string	"argv"
.LASF78:
	.string	"int_amg"
.LASF13:
	.string	"float"
.LASF21:
	.string	"add_ass_amg"
.LASF88:
	.string	"PL_do_undump"
.LASF92:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF10:
	.string	"long long int"
.LASF58:
	.string	"inc_amg"
.LASF67:
	.string	"repeat_ass_amg"
.LASF66:
	.string	"repeat_amg"
.LASF6:
	.string	"long int"
.LASF64:
	.string	"log_amg"
.LASF47:
	.string	"ne_amg"
.LASF5:
	.string	"short int"
.LASF43:
	.string	"le_amg"
.LASF17:
	.string	"nomethod_amg"
.LASF20:
	.string	"add_amg"
.LASF28:
	.string	"modulo_amg"
.LASF35:
	.string	"rshift_ass_amg"
.LASF24:
	.string	"mult_amg"
.LASF16:
	.string	"bool__amg"
.LASF0:
	.string	"unsigned char"
.LASF81:
	.string	"argc"
.LASF90:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF71:
	.string	"neg_amg"
.LASF4:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF29:
	.string	"modulo_ass_amg"
.LASF74:
	.string	"to_hv_amg"
.LASF91:
	.string	"perlmain.c"
.LASF2:
	.string	"unsigned int"
.LASF76:
	.string	"to_cv_amg"
.LASF19:
	.string	"numer_amg"
.LASF1:
	.string	"short unsigned int"
.LASF96:
	.string	"xs_init"
.LASF48:
	.string	"ncmp_amg"
.LASF22:
	.string	"subtr_amg"
.LASF8:
	.string	"char"
.LASF42:
	.string	"lt_amg"
.LASF53:
	.string	"sge_amg"
.LASF38:
	.string	"bor_amg"
.LASF59:
	.string	"dec_amg"
.LASF15:
	.string	"abs_amg"
.LASF89:
	.string	"PL_use_safe_putenv"
.LASF34:
	.string	"rshift_amg"
.LASF50:
	.string	"slt_amg"
.LASF3:
	.string	"long unsigned int"
.LASF37:
	.string	"band_ass_amg"
.LASF11:
	.string	"double"
.LASF94:
	.string	"broiled"
.LASF51:
	.string	"sle_amg"
.LASF12:
	.string	"PerlInterpreter"
.LASF33:
	.string	"lshift_ass_amg"
.LASF62:
	.string	"sin_amg"
.LASF26:
	.string	"div_amg"
.LASF69:
	.string	"concat_ass_amg"
.LASF85:
	.string	"my_perl"
.LASF72:
	.string	"to_sv_amg"
.LASF49:
	.string	"scmp_amg"
.LASF65:
	.string	"sqrt_amg"
.LASF77:
	.string	"iter_amg"
.LASF31:
	.string	"pow_ass_amg"
.LASF68:
	.string	"concat_amg"
.LASF83:
	.string	"exitstatus"
.LASF45:
	.string	"ge_amg"
.LASF41:
	.string	"bxor_ass_amg"
.LASF25:
	.string	"mult_ass_amg"
.LASF57:
	.string	"compl_amg"
.LASF55:
	.string	"sne_amg"
.LASF70:
	.string	"copy_amg"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
