	.file	"getpwd.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 getpwd.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"PWD"
.LC1:
	.string	"."
	.text
	.globl	getpwd
	.type	getpwd, @function
getpwd:
.LFB2:
	.file 1 "getpwd.c"
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$320, %rsp	#,
	.loc 1 70 0
	movq	pwd.5622(%rip), %rax	# pwd, tmp75
	movq	%rax, -304(%rbp)	# tmp75, p
	.loc 1 74 0
	cmpq	$0, -304(%rbp)	#, p
	jne	.L2	#,
	.loc 1 74 0 is_stmt 0 discriminator 1
	call	__errno_location	#
	movl	failure_errno.5623(%rip), %edx	# failure_errno, failure_errno.0
	movl	%edx, (%rax)	# failure_errno.0, *_5
	movl	(%rax), %eax	# *_5, D.5664
	testl	%eax, %eax	# D.5664
	jne	.L2	#,
	.loc 1 76 0 is_stmt 1
	movl	$.LC0, %edi	#,
	call	getenv	#
	movq	%rax, -304(%rbp)	# tmp76, p
	cmpq	$0, -304(%rbp)	#, p
	je	.L3	#,
	.loc 1 77 0
	movq	-304(%rbp), %rax	# p, tmp77
	movzbl	(%rax), %eax	# *p_8, D.5665
	cmpb	$47, %al	#, D.5665
	jne	.L3	#,
	.loc 1 78 0
	leaq	-144(%rbp), %rdx	#, tmp78
	movq	-304(%rbp), %rax	# p, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	stat	#
	testl	%eax, %eax	# D.5664
	jne	.L3	#,
	.loc 1 79 0
	leaq	-288(%rbp), %rax	#, tmp80
	movq	%rax, %rsi	# tmp80,
	movl	$.LC1, %edi	#,
	call	stat	#
	testl	%eax, %eax	# D.5664
	jne	.L3	#,
	.loc 1 80 0
	movq	-280(%rbp), %rdx	# dotstat.st_ino, D.5666
	movq	-136(%rbp), %rax	# pwdstat.st_ino, D.5666
	cmpq	%rax, %rdx	# D.5666, D.5666
	jne	.L3	#,
	.loc 1 81 0
	movq	-288(%rbp), %rdx	# dotstat.st_dev, D.5666
	movq	-144(%rbp), %rax	# pwdstat.st_dev, D.5666
	.loc 1 76 0
	cmpq	%rax, %rdx	# D.5666, D.5666
	je	.L4	#,
.L3:
	.loc 1 84 0
	movq	$100, -296(%rbp)	#, s
	jmp	.L5	#
.L7:
.LBB2:
	.loc 1 86 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_19, tmp81
	movl	%eax, -308(%rbp)	# tmp81, e
	.loc 1 87 0
	movq	-304(%rbp), %rax	# p, tmp82
	movq	%rax, %rdi	# tmp82,
	call	free	#
	.loc 1 89 0
	cmpl	$34, -308(%rbp)	#, e
	je	.L6	#,
	.loc 1 92 0
	call	__errno_location	#
	movl	-308(%rbp), %edx	# e, tmp83
	movl	%edx, failure_errno.5623(%rip)	# tmp83, failure_errno
	movl	failure_errno.5623(%rip), %edx	# failure_errno, failure_errno.1
	movl	%edx, (%rax)	# failure_errno.1, *_21
	.loc 1 93 0
	movq	$0, -304(%rbp)	#, p
	.loc 1 94 0
	jmp	.L4	#
.L6:
.LBE2:
	.loc 1 84 0
	salq	-296(%rbp)	# s
.L5:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rax	# s, tmp84
	movq	%rax, %rdi	# tmp84,
	call	xmalloc	#
	movq	%rax, -304(%rbp)	# tmp85, p
	movq	-296(%rbp), %rdx	# s, tmp86
	movq	-304(%rbp), %rax	# p, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	getcwd	#
	testq	%rax, %rax	# D.5667
	je	.L7	#,
.L4:
	.loc 1 100 0 is_stmt 1
	movq	-304(%rbp), %rax	# p, tmp88
	movq	%rax, pwd.5622(%rip)	# tmp88, pwd
.L2:
	.loc 1 102 0
	movq	-304(%rbp), %rax	# p, D.5667
	.loc 1 103 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	getpwd, .-getpwd
	.local	pwd.5622
	.comm	pwd.5622,8,8
	.local	failure_errno.5623
	.comm	failure_errno.5623,4,4
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x29d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x1
	.long	.LASF46
	.long	.LASF47
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x85
	.long	0x50
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x86
	.long	0x49
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x87
	.long	0x49
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x88
	.long	0x50
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x8a
	.long	0x49
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x8b
	.long	0x50
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x8c
	.long	0x65
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x94
	.long	0x65
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0xa2
	.long	0x65
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0xa7
	.long	0x65
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0xb8
	.long	0x65
	.uleb128 0x5
	.byte	0x8
	.long	0xeb
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x4
	.long	.LASF20
	.byte	0x3
	.byte	0xd4
	.long	0x50
	.uleb128 0x6
	.long	.LASF25
	.byte	0x10
	.byte	0x4
	.byte	0x78
	.long	0x122
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.byte	0x7a
	.long	0xb9
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x4
	.byte	0x7b
	.long	0xda
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF23
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF24
	.uleb128 0x6
	.long	.LASF26
	.byte	0x90
	.byte	0x5
	.byte	0x2e
	.long	0x1f1
	.uleb128 0x7
	.long	.LASF27
	.byte	0x5
	.byte	0x30
	.long	0x6c
	.byte	0
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0x35
	.long	0x8d
	.byte	0x8
	.uleb128 0x7
	.long	.LASF29
	.byte	0x5
	.byte	0x3d
	.long	0xa3
	.byte	0x10
	.uleb128 0x7
	.long	.LASF30
	.byte	0x5
	.byte	0x3e
	.long	0x98
	.byte	0x18
	.uleb128 0x7
	.long	.LASF31
	.byte	0x5
	.byte	0x40
	.long	0x77
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF32
	.byte	0x5
	.byte	0x41
	.long	0x82
	.byte	0x20
	.uleb128 0x7
	.long	.LASF33
	.byte	0x5
	.byte	0x43
	.long	0x2d
	.byte	0x24
	.uleb128 0x7
	.long	.LASF34
	.byte	0x5
	.byte	0x45
	.long	0x6c
	.byte	0x28
	.uleb128 0x7
	.long	.LASF35
	.byte	0x5
	.byte	0x4a
	.long	0xae
	.byte	0x30
	.uleb128 0x7
	.long	.LASF36
	.byte	0x5
	.byte	0x4e
	.long	0xc4
	.byte	0x38
	.uleb128 0x7
	.long	.LASF37
	.byte	0x5
	.byte	0x50
	.long	0xcf
	.byte	0x40
	.uleb128 0x7
	.long	.LASF38
	.byte	0x5
	.byte	0x5b
	.long	0xfd
	.byte	0x48
	.uleb128 0x7
	.long	.LASF39
	.byte	0x5
	.byte	0x5c
	.long	0xfd
	.byte	0x58
	.uleb128 0x7
	.long	.LASF40
	.byte	0x5
	.byte	0x5d
	.long	0xfd
	.byte	0x68
	.uleb128 0x7
	.long	.LASF41
	.byte	0x5
	.byte	0x6a
	.long	0x1f1
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0xda
	.long	0x201
	.uleb128 0x9
	.long	0x34
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x1
	.byte	0x41
	.long	0xe5
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.string	"pwd"
	.byte	0x1
	.byte	0x43
	.long	0xe5
	.uleb128 0x9
	.byte	0x3
	.quad	pwd.5622
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.byte	0x44
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	failure_errno.5623
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.byte	0x46
	.long	0xe5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0xb
	.string	"s"
	.byte	0x1
	.byte	0x47
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.byte	0x48
	.long	0x130
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0xc
	.long	.LASF44
	.byte	0x1
	.byte	0x48
	.long	0x130
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xd
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xb
	.string	"e"
	.byte	0x1
	.byte	0x56
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF20:
	.string	"size_t"
.LASF26:
	.string	"stat"
.LASF43:
	.string	"dotstat"
.LASF9:
	.string	"__uid_t"
.LASF29:
	.string	"st_nlink"
.LASF22:
	.string	"tv_nsec"
.LASF35:
	.string	"st_size"
.LASF28:
	.string	"st_ino"
.LASF36:
	.string	"st_blksize"
.LASF25:
	.string	"timespec"
.LASF34:
	.string	"st_rdev"
.LASF23:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF8:
	.string	"__dev_t"
.LASF37:
	.string	"st_blocks"
.LASF4:
	.string	"long unsigned int"
.LASF30:
	.string	"st_mode"
.LASF2:
	.string	"short unsigned int"
.LASF48:
	.string	"getpwd"
.LASF42:
	.string	"failure_errno"
.LASF15:
	.string	"__time_t"
.LASF11:
	.string	"__ino_t"
.LASF21:
	.string	"tv_sec"
.LASF38:
	.string	"st_atim"
.LASF3:
	.string	"unsigned int"
.LASF46:
	.string	"getpwd.c"
.LASF41:
	.string	"__unused"
.LASF19:
	.string	"char"
.LASF16:
	.string	"__blksize_t"
.LASF17:
	.string	"__blkcnt_t"
.LASF40:
	.string	"st_ctim"
.LASF31:
	.string	"st_uid"
.LASF10:
	.string	"__gid_t"
.LASF0:
	.string	"sizetype"
.LASF13:
	.string	"__nlink_t"
.LASF24:
	.string	"long long int"
.LASF12:
	.string	"__mode_t"
.LASF44:
	.string	"pwdstat"
.LASF39:
	.string	"st_mtim"
.LASF6:
	.string	"short int"
.LASF27:
	.string	"st_dev"
.LASF32:
	.string	"st_gid"
.LASF33:
	.string	"__pad0"
.LASF7:
	.string	"long int"
.LASF14:
	.string	"__off_t"
.LASF5:
	.string	"signed char"
.LASF47:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF18:
	.string	"__syscall_slong_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
