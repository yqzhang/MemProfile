	.file	"Hostname.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 Hostname.c
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
	.section	.rodata
	.align 8
.LC0:
	.string	"Usage: Sys::Hostname::ghname()"
	.text
	.globl	XS_Sys__Hostname_ghname
	.type	XS_Sys__Hostname_ghname, @function
XS_Sys__Hostname_ghname:
.LFB2:
	.file 1 "Hostname.c"
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 38 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.3
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.3, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.2_5, D.10394
	cltq
	salq	$3, %rax	#, D.10395
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.4
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.5
	subq	%rax, %rdx	# PL_stack_base.6, D.10396
	movq	%rdx, %rax	# D.10396, D.10396
	sarq	$3, %rax	#, tmp98
	addl	$1, %eax	#, D.10397
	movl	%eax, -48(%rbp)	# D.10397, ax
	movq	%rbx, %rdx	# sp, sp.7
	movq	%r12, %rax	# mark, mark.8
	subq	%rax, %rdx	# mark.8, D.10396
	movq	%rdx, %rax	# D.10396, D.10396
	sarq	$3, %rax	#, tmp99
	movl	%eax, -44(%rbp)	# D.10396, items
	.loc 1 39 0
	cmpl	$0, -44(%rbp)	#, items
	je	.L6	#,
	.loc 1 40 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L6:
	.loc 1 42 0
	movl	-44(%rbp), %eax	# items, tmp100
	cltq
	salq	$3, %rax	#, D.10395
	negq	%rax	# D.10398
	addq	%rax, %rbx	# D.10398, sp
.LBB2:
	.loc 1 45 0
	movq	$-1, -40(%rbp)	#, retval
	.loc 1 46 0
	movq	$0, -32(%rbp)	#, sv
	.loc 1 49 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.9
	movq	%rax, %rdx	# PL_stack_max.9, PL_stack_max.10
	movq	%rbx, %rax	# sp, sp.11
	subq	%rax, %rdx	# sp.11, D.10396
	movq	%rdx, %rax	# D.10396, D.10396
	cmpq	$7, %rax	#, D.10396
	jg	.L3	#,
	.loc 1 49 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L3:
	.loc 1 91 0 is_stmt 1
	cmpq	$-1, -40(%rbp)	#, retval
	jne	.L4	#,
.LBB3:
	.loc 1 92 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.12
	movl	-48(%rbp), %edx	# ax, tmp101
	movslq	%edx, %rdx	# tmp101, D.10395
	salq	$3, %rdx	#, D.10395
	addq	%rdx, %rax	# D.10395, D.10399
	movq	$PL_sv_undef, (%rax)	#, *_38
.LBB4:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.13
	movl	-48(%rbp), %edx	# ax, tmp102
	movslq	%edx, %rcx	# tmp102, D.10398
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.14
	addq	%rcx, %rdx	# D.10398, D.10398
	salq	$3, %rdx	#, D.10398
	subq	$8, %rdx	#, D.10398
	addq	%rdx, %rax	# D.10398, PL_stack_sp.15
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.15, PL_stack_sp
	jmp	.L1	#
.L4:
.LBE4:
.LBE3:
	.loc 1 94 0
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# sv, tmp103
	movq	%rax, %rdi	# tmp103,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.10400, *sp_47
	.loc 1 96 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 97 0
	nop
.L1:
.LBE2:
	.loc 1 99 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	XS_Sys__Hostname_ghname, .-XS_Sys__Hostname_ghname
	.section	.rodata
.LC1:
	.string	"Hostname.c"
.LC2:
	.string	"Sys::Hostname::ghname"
	.text
	.globl	boot_Sys__Hostname
	.type	boot_Sys__Hostname, @function
boot_Sys__Hostname:
.LFB3:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 107 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.16
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.17
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.19
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.19, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.18_4, D.10402
	cltq
	salq	$3, %rax	#, D.10403
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.20
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.21
	subq	%rax, %rdx	# PL_stack_base.22, D.10404
	movq	%rdx, %rax	# D.10404, D.10404
	sarq	$3, %rax	#, tmp90
	addl	$1, %eax	#, D.10405
	movl	%eax, -40(%rbp)	# D.10405, ax
	movq	%r12, %rdx	# sp, sp.23
	movq	%rbx, %rax	# mark, mark.24
	subq	%rax, %rdx	# mark.24, D.10404
	movq	%rdx, %rax	# D.10404, D.10404
	sarq	$3, %rax	#, tmp91
	movl	%eax, -36(%rbp)	# D.10404, items
	.loc 1 108 0
	movq	$.LC1, -32(%rbp)	#, file
	.loc 1 112 0
	movq	-32(%rbp), %rax	# file, tmp92
	movq	%rax, %rdx	# tmp92,
	movl	$XS_Sys__Hostname_ghname, %esi	#,
	movl	$.LC2, %edi	#,
	call	Perl_newXS	#
.LBB5:
	.loc 1 113 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.25
	movl	-40(%rbp), %edx	# ax, tmp93
	movslq	%edx, %rdx	# tmp93, D.10403
	salq	$3, %rdx	#, D.10403
	addq	%rdx, %rax	# D.10403, D.10406
	movq	$PL_sv_yes, (%rax)	#, *_27
.LBB6:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.26
	movl	-40(%rbp), %edx	# ax, tmp94
	movslq	%edx, %rcx	# tmp94, D.10407
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.27
	addq	%rcx, %rdx	# D.10407, D.10407
	salq	$3, %rdx	#, D.10407
	subq	$8, %rdx	#, D.10407
	addq	%rdx, %rax	# D.10407, PL_stack_sp.28
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.28, PL_stack_sp
	nop
.LBE6:
.LBE5:
	.loc 1 114 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	boot_Sys__Hostname, .-boot_Sys__Hostname
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "sv.h"
	.file 9 "regexp.h"
	.file 10 "gv.h"
	.file 11 "mg.h"
	.file 12 "av.h"
	.file 13 "hv.h"
	.file 14 "cv.h"
	.file 15 "handy.h"
	.file 16 "perlio.h"
	.file 17 "pad.h"
	.file 18 "intrpvar.h"
	.file 19 "thrdvar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf91
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF204
	.byte	0x1
	.long	.LASF205
	.long	.LASF206
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
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x6d
	.long	0x6e
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x7f
	.uleb128 0x8
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xc0
	.uleb128 0x9
	.long	.LASF171
	.uleb128 0xa
	.string	"IV"
	.byte	0x6
	.value	0x52b
	.long	0x5e
	.uleb128 0xa
	.string	"UV"
	.byte	0x6
	.value	0x52c
	.long	0x42
	.uleb128 0xa
	.string	"NV"
	.byte	0x6
	.value	0x5f3
	.long	0xe6
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0xb
	.long	.LASF15
	.byte	0x6
	.value	0x7d3
	.long	0x91
	.uleb128 0xa
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x104
	.uleb128 0xc
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x170
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xe3
	.long	0xc5e
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xc5e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xce2
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xccc
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xb39
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xb39
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xb2f
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xb2f
	.byte	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x7db
	.long	0x17c
	.uleb128 0xe
	.long	.LASF25
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x26a
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xc5e
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xc5e
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xce2
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xccc
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xb39
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xb39
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xb2f
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xb2f
	.byte	0x25
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0xff
	.long	0xc5e
	.byte	0x28
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.value	0x100
	.long	0xc5e
	.byte	0x30
	.uleb128 0xf
	.long	.LASF28
	.byte	0x7
	.value	0x101
	.long	0xc5e
	.byte	0x38
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.value	0x102
	.long	0xc5e
	.byte	0x40
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.value	0x103
	.long	0xce8
	.byte	0x48
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.value	0x107
	.long	0xcee
	.byte	0x50
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.value	0x109
	.long	0xb4f
	.byte	0x58
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.value	0x10a
	.long	0xb4f
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.value	0x10b
	.long	0xb2f
	.byte	0x60
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x10f
	.long	0xc46
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x7e1
	.long	0x276
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x291
	.uleb128 0xf
	.long	.LASF38
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x29c
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x8
	.byte	0x43
	.long	0x2cc
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x45
	.long	0xb4f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x46
	.long	0xb4f
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x2d7
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x8
	.byte	0x55
	.long	0x307
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x56
	.long	0xc2e
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x57
	.long	0xb4f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x58
	.long	0xb4f
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x312
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x8
	.byte	0x5b
	.long	0x342
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x5c
	.long	0xc34
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x5d
	.long	0xb4f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x5e
	.long	0xb4f
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x34d
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x8
	.byte	0x4f
	.long	0x37d
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x50
	.long	0xc28
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x51
	.long	0xb4f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x52
	.long	0xb4f
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.value	0x7ee
	.long	0x389
	.uleb128 0xe
	.long	.LASF43
	.byte	0x68
	.byte	0x9
	.byte	0x1f
	.long	0x462
	.uleb128 0xd
	.long	.LASF44
	.byte	0x9
	.byte	0x20
	.long	0xbea
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x9
	.byte	0x21
	.long	0xbea
	.byte	0x8
	.uleb128 0xd
	.long	.LASF46
	.byte	0x9
	.byte	0x22
	.long	0xbf0
	.byte	0x10
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x23
	.long	0xbfb
	.byte	0x18
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x25
	.long	0xc06
	.byte	0x28
	.uleb128 0xd
	.long	.LASF50
	.byte	0x9
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x28
	.long	0xc0c
	.byte	0x38
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x29
	.long	0xb44
	.byte	0x40
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x2a
	.long	0xb44
	.byte	0x44
	.uleb128 0xd
	.long	.LASF54
	.byte	0x9
	.byte	0x2b
	.long	0xb44
	.byte	0x48
	.uleb128 0xd
	.long	.LASF55
	.byte	0x9
	.byte	0x2c
	.long	0xb44
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF56
	.byte	0x9
	.byte	0x2d
	.long	0xb4f
	.byte	0x50
	.uleb128 0xd
	.long	.LASF57
	.byte	0x9
	.byte	0x2e
	.long	0xb4f
	.byte	0x54
	.uleb128 0xd
	.long	.LASF58
	.byte	0x9
	.byte	0x2f
	.long	0xb4f
	.byte	0x58
	.uleb128 0xd
	.long	.LASF59
	.byte	0x9
	.byte	0x30
	.long	0xb4f
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF60
	.byte	0x9
	.byte	0x32
	.long	0xc12
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x46d
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xa
	.byte	0xb
	.long	0x509
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0xc
	.long	0xb77
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0xd
	.long	0xb4f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0xe
	.long	0xcbb
	.byte	0x10
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0xf
	.long	0xc6f
	.byte	0x18
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x10
	.long	0xc81
	.byte	0x20
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x11
	.long	0xc46
	.byte	0x28
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x12
	.long	0xc7b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x13
	.long	0xc6f
	.byte	0x38
	.uleb128 0xd
	.long	.LASF69
	.byte	0xa
	.byte	0x14
	.long	0xb4f
	.byte	0x40
	.uleb128 0xd
	.long	.LASF70
	.byte	0xa
	.byte	0x15
	.long	0xb4f
	.byte	0x44
	.uleb128 0xd
	.long	.LASF71
	.byte	0xa
	.byte	0x16
	.long	0xb5a
	.byte	0x48
	.uleb128 0xd
	.long	.LASF72
	.byte	0xa
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x514
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x8
	.byte	0x49
	.long	0x544
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x4a
	.long	0xc22
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x4b
	.long	0xb4f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x4c
	.long	0xb4f
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x8
	.byte	0x61
	.long	0x574
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x62
	.long	0xc3a
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x63
	.long	0xb4f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x64
	.long	0xb4f
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF73
	.byte	0x6
	.value	0x7f5
	.long	0x580
	.uleb128 0xe
	.long	.LASF74
	.byte	0x30
	.byte	0xb
	.byte	0x1a
	.long	0x5ed
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x1b
	.long	0xc40
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x1c
	.long	0xdf9
	.byte	0x8
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x1d
	.long	0xb39
	.byte	0x10
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x1f
	.long	0xb2f
	.byte	0x13
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x20
	.long	0xb77
	.byte	0x18
	.uleb128 0xd
	.long	.LASF81
	.byte	0xb
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF82
	.byte	0xb
	.byte	0x22
	.long	0xb44
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.long	.LASF83
	.byte	0x6
	.value	0x7fd
	.long	0x5f9
	.uleb128 0xe
	.long	.LASF84
	.byte	0x50
	.byte	0xc
	.byte	0xb
	.long	0x67e
	.uleb128 0xd
	.long	.LASF85
	.byte	0xc
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF86
	.byte	0xc
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF87
	.byte	0xc
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF88
	.byte	0xc
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF89
	.byte	0xc
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF90
	.byte	0xc
	.byte	0x11
	.long	0xc40
	.byte	0x28
	.uleb128 0xd
	.long	.LASF91
	.byte	0xc
	.byte	0x12
	.long	0xc46
	.byte	0x30
	.uleb128 0xd
	.long	.LASF92
	.byte	0xc
	.byte	0x14
	.long	0xcf4
	.byte	0x38
	.uleb128 0xd
	.long	.LASF93
	.byte	0xc
	.byte	0x15
	.long	0xb77
	.byte	0x40
	.uleb128 0xd
	.long	.LASF94
	.byte	0xc
	.byte	0x16
	.long	0xb2f
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF95
	.byte	0x6
	.value	0x7fe
	.long	0x68a
	.uleb128 0xe
	.long	.LASF96
	.byte	0x58
	.byte	0xd
	.byte	0x22
	.long	0x71b
	.uleb128 0xd
	.long	.LASF97
	.byte	0xd
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF98
	.byte	0xd
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF99
	.byte	0xd
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF100
	.byte	0xd
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF89
	.byte	0xd
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF90
	.byte	0xd
	.byte	0x29
	.long	0xc40
	.byte	0x28
	.uleb128 0xd
	.long	.LASF91
	.byte	0xd
	.byte	0x2a
	.long	0xc46
	.byte	0x30
	.uleb128 0xd
	.long	.LASF101
	.byte	0xd
	.byte	0x2c
	.long	0xb44
	.byte	0x38
	.uleb128 0xd
	.long	.LASF102
	.byte	0xd
	.byte	0x2d
	.long	0xd70
	.byte	0x40
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0x2e
	.long	0xce8
	.byte	0x48
	.uleb128 0xd
	.long	.LASF104
	.byte	0xd
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF105
	.byte	0x6
	.value	0x7ff
	.long	0x727
	.uleb128 0x10
	.long	.LASF106
	.byte	0x60
	.byte	0x8
	.value	0x130
	.long	0x7d1
	.uleb128 0xf
	.long	.LASF107
	.byte	0x8
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF108
	.byte	0x8
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF109
	.byte	0x8
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x8
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF90
	.byte	0x8
	.value	0x136
	.long	0xc40
	.byte	0x28
	.uleb128 0xf
	.long	.LASF91
	.byte	0x8
	.value	0x137
	.long	0xc46
	.byte	0x30
	.uleb128 0xf
	.long	.LASF111
	.byte	0x8
	.value	0x139
	.long	0xc4c
	.byte	0x38
	.uleb128 0xf
	.long	.LASF112
	.byte	0x8
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF113
	.byte	0x8
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF114
	.byte	0x8
	.value	0x13c
	.long	0xc46
	.byte	0x50
	.uleb128 0xf
	.long	.LASF115
	.byte	0x8
	.value	0x13d
	.long	0xb2f
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF116
	.byte	0x6
	.value	0x800
	.long	0x7dd
	.uleb128 0xe
	.long	.LASF117
	.byte	0x90
	.byte	0xe
	.byte	0xe
	.long	0x8ce
	.uleb128 0xd
	.long	.LASF107
	.byte	0xe
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF108
	.byte	0xe
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF109
	.byte	0xe
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF88
	.byte	0xe
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF89
	.byte	0xe
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF90
	.byte	0xe
	.byte	0x14
	.long	0xc40
	.byte	0x28
	.uleb128 0xd
	.long	.LASF91
	.byte	0xe
	.byte	0x15
	.long	0xc46
	.byte	0x30
	.uleb128 0xd
	.long	.LASF118
	.byte	0xe
	.byte	0x17
	.long	0xc46
	.byte	0x38
	.uleb128 0xd
	.long	.LASF119
	.byte	0xe
	.byte	0x18
	.long	0xc5e
	.byte	0x40
	.uleb128 0xd
	.long	.LASF120
	.byte	0xe
	.byte	0x19
	.long	0xc5e
	.byte	0x48
	.uleb128 0xd
	.long	.LASF121
	.byte	0xe
	.byte	0x1a
	.long	0xc75
	.byte	0x50
	.uleb128 0xd
	.long	.LASF122
	.byte	0xe
	.byte	0x1b
	.long	0xa80
	.byte	0x58
	.uleb128 0xd
	.long	.LASF123
	.byte	0xe
	.byte	0x1c
	.long	0xc7b
	.byte	0x60
	.uleb128 0xd
	.long	.LASF124
	.byte	0xe
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.byte	0x1f
	.long	0xcd7
	.byte	0x78
	.uleb128 0xd
	.long	.LASF127
	.byte	0xe
	.byte	0x20
	.long	0xc6f
	.byte	0x80
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.byte	0x25
	.long	0xc52
	.byte	0x88
	.uleb128 0xd
	.long	.LASF129
	.byte	0xe
	.byte	0x26
	.long	0xb4f
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF130
	.byte	0x6
	.value	0x803
	.long	0x8da
	.uleb128 0x10
	.long	.LASF131
	.byte	0xa8
	.byte	0x8
	.value	0x170
	.long	0xa13
	.uleb128 0xf
	.long	.LASF107
	.byte	0x8
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF108
	.byte	0x8
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF109
	.byte	0x8
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF110
	.byte	0x8
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF90
	.byte	0x8
	.value	0x176
	.long	0xc40
	.byte	0x28
	.uleb128 0xf
	.long	.LASF91
	.byte	0x8
	.value	0x177
	.long	0xc46
	.byte	0x30
	.uleb128 0xf
	.long	.LASF132
	.byte	0x8
	.value	0x179
	.long	0xcaf
	.byte	0x38
	.uleb128 0xf
	.long	.LASF133
	.byte	0x8
	.value	0x17a
	.long	0xcaf
	.byte	0x40
	.uleb128 0xf
	.long	.LASF134
	.byte	0x8
	.value	0x187
	.long	0xc87
	.byte	0x48
	.uleb128 0xf
	.long	.LASF135
	.byte	0x8
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF136
	.byte	0x8
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF137
	.byte	0x8
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF138
	.byte	0x8
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF139
	.byte	0x8
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF140
	.byte	0x8
	.value	0x18d
	.long	0xc7b
	.byte	0x78
	.uleb128 0xf
	.long	.LASF141
	.byte	0x8
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.value	0x18f
	.long	0xc7b
	.byte	0x88
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF144
	.byte	0x8
	.value	0x191
	.long	0xc7b
	.byte	0x98
	.uleb128 0xf
	.long	.LASF145
	.byte	0x8
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF146
	.byte	0x8
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF147
	.byte	0x8
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF148
	.byte	0x6
	.value	0x804
	.long	0xa1f
	.uleb128 0xe
	.long	.LASF149
	.byte	0x38
	.byte	0xb
	.byte	0xe
	.long	0xa80
	.uleb128 0xd
	.long	.LASF150
	.byte	0xb
	.byte	0xf
	.long	0xd90
	.byte	0
	.uleb128 0xd
	.long	.LASF151
	.byte	0xb
	.byte	0x10
	.long	0xd90
	.byte	0x8
	.uleb128 0xd
	.long	.LASF152
	.byte	0xb
	.byte	0x11
	.long	0xdaa
	.byte	0x10
	.uleb128 0xd
	.long	.LASF153
	.byte	0xb
	.byte	0x12
	.long	0xd90
	.byte	0x18
	.uleb128 0xd
	.long	.LASF154
	.byte	0xb
	.byte	0x13
	.long	0xd90
	.byte	0x20
	.uleb128 0xd
	.long	.LASF155
	.byte	0xb
	.byte	0x14
	.long	0xdd3
	.byte	0x28
	.uleb128 0xd
	.long	.LASF156
	.byte	0xb
	.byte	0x16
	.long	0xdf3
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xa8c
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xaee
	.uleb128 0x12
	.long	.LASF157
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF158
	.byte	0x6
	.value	0x9f3
	.long	0xb44
	.uleb128 0x12
	.long	.LASF159
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF160
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF161
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF162
	.byte	0x6
	.value	0x9f7
	.long	0xb71
	.uleb128 0x12
	.long	.LASF163
	.byte	0x6
	.value	0x9f8
	.long	0xb71
	.byte	0
	.uleb128 0xb
	.long	.LASF164
	.byte	0x6
	.value	0x808
	.long	0xafa
	.uleb128 0x10
	.long	.LASF165
	.byte	0x18
	.byte	0x8
	.value	0x4ed
	.long	0xb2f
	.uleb128 0xf
	.long	.LASF166
	.byte	0x8
	.value	0x4ee
	.long	0xc81
	.byte	0
	.uleb128 0xf
	.long	.LASF167
	.byte	0x8
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF168
	.byte	0x8
	.value	0x4f0
	.long	0xcb5
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0xf
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"U16"
	.byte	0xf
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.string	"I32"
	.byte	0xf
	.byte	0x88
	.long	0x57
	.uleb128 0x8
	.string	"U32"
	.byte	0xf
	.byte	0x89
	.long	0x3b
	.uleb128 0xb
	.long	.LASF169
	.byte	0xf
	.value	0x209
	.long	0xb4f
	.uleb128 0x13
	.long	0xb71
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb66
	.uleb128 0x6
	.byte	0x8
	.long	0x291
	.uleb128 0x15
	.long	0x7f
	.long	0xb8d
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF170
	.byte	0x10
	.byte	0x63
	.long	0xb98
	.uleb128 0x9
	.long	.LASF172
	.uleb128 0x5
	.long	.LASF173
	.byte	0x10
	.byte	0x65
	.long	0xba8
	.uleb128 0x6
	.byte	0x8
	.long	0xb8d
	.uleb128 0xe
	.long	.LASF174
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0xbdf
	.uleb128 0xd
	.long	.LASF167
	.byte	0x9
	.byte	0x14
	.long	0xb2f
	.byte	0
	.uleb128 0xd
	.long	.LASF175
	.byte	0x9
	.byte	0x15
	.long	0xb2f
	.byte	0x1
	.uleb128 0xd
	.long	.LASF176
	.byte	0x9
	.byte	0x16
	.long	0xb39
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF174
	.byte	0x9
	.byte	0x19
	.long	0xbae
	.uleb128 0x6
	.byte	0x8
	.long	0xb44
	.uleb128 0x6
	.byte	0x8
	.long	0xbdf
	.uleb128 0x9
	.long	.LASF177
	.uleb128 0x6
	.byte	0x8
	.long	0xbf6
	.uleb128 0x9
	.long	.LASF178
	.uleb128 0x6
	.byte	0x8
	.long	0xc01
	.uleb128 0x6
	.byte	0x8
	.long	0xb4f
	.uleb128 0x15
	.long	0xbdf
	.long	0xc22
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x71b
	.uleb128 0x6
	.byte	0x8
	.long	0x7d1
	.uleb128 0x6
	.byte	0x8
	.long	0x5ed
	.uleb128 0x6
	.byte	0x8
	.long	0x67e
	.uleb128 0x6
	.byte	0x8
	.long	0x8ce
	.uleb128 0x6
	.byte	0x8
	.long	0x574
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x6
	.byte	0x8
	.long	0x462
	.uleb128 0xb
	.long	.LASF179
	.byte	0x8
	.value	0x150
	.long	0xb39
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xc6f
	.uleb128 0x14
	.long	0xc6f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x342
	.uleb128 0x6
	.byte	0x8
	.long	0xc64
	.uleb128 0x6
	.byte	0x8
	.long	0x509
	.uleb128 0x6
	.byte	0x8
	.long	0x2cc
	.uleb128 0x17
	.byte	0x8
	.byte	0x8
	.value	0x184
	.long	0xca9
	.uleb128 0x12
	.long	.LASF180
	.byte	0x8
	.value	0x185
	.long	0xca9
	.uleb128 0x12
	.long	.LASF181
	.byte	0x8
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xb9d
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0x5
	.long	.LASF182
	.byte	0x11
	.byte	0x13
	.long	0x2cc
	.uleb128 0x5
	.long	.LASF183
	.byte	0x11
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xcc1
	.uleb128 0x18
	.long	0xc5e
	.uleb128 0x6
	.byte	0x8
	.long	0xcdd
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0x6
	.byte	0x8
	.long	0xb77
	.uleb128 0x8
	.string	"HE"
	.byte	0xd
	.byte	0xc
	.long	0xd04
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xd
	.byte	0x10
	.long	0xd34
	.uleb128 0xd
	.long	.LASF184
	.byte	0xd
	.byte	0x11
	.long	0xd70
	.byte	0
	.uleb128 0xd
	.long	.LASF185
	.byte	0xd
	.byte	0x12
	.long	0xd76
	.byte	0x8
	.uleb128 0xd
	.long	.LASF186
	.byte	0xd
	.byte	0x13
	.long	0xb77
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xd
	.byte	0xd
	.long	0xd3f
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.long	0xd70
	.uleb128 0xd
	.long	.LASF187
	.byte	0xd
	.byte	0x18
	.long	0xb4f
	.byte	0
	.uleb128 0xd
	.long	.LASF188
	.byte	0xd
	.byte	0x19
	.long	0xb44
	.byte	0x4
	.uleb128 0xd
	.long	.LASF189
	.byte	0xd
	.byte	0x1a
	.long	0xb7d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcfa
	.uleb128 0x6
	.byte	0x8
	.long	0xd34
	.uleb128 0x19
	.long	0x57
	.long	0xd90
	.uleb128 0x14
	.long	0xb77
	.uleb128 0x14
	.long	0xc40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd7c
	.uleb128 0x19
	.long	0xb4f
	.long	0xdaa
	.uleb128 0x14
	.long	0xb77
	.uleb128 0x14
	.long	0xc40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd96
	.uleb128 0x19
	.long	0x57
	.long	0xdd3
	.uleb128 0x14
	.long	0xb77
	.uleb128 0x14
	.long	0xc40
	.uleb128 0x14
	.long	0xb77
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdb0
	.uleb128 0x19
	.long	0x57
	.long	0xded
	.uleb128 0x14
	.long	0xc40
	.uleb128 0x14
	.long	0xded
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xaee
	.uleb128 0x6
	.byte	0x8
	.long	0xdd9
	.uleb128 0x6
	.byte	0x8
	.long	0xa13
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF190
	.uleb128 0x1a
	.long	.LASF195
	.byte	0x1
	.byte	0x24
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xec2
	.uleb128 0x1b
	.string	"cv"
	.byte	0x1
	.byte	0x24
	.long	0xc6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.byte	0x26
	.long	0xcf4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.long	.LASF191
	.byte	0x1
	.byte	0x26
	.long	0xcf4
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1c
	.string	"ax"
	.byte	0x1
	.byte	0x26
	.long	0xb44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF192
	.byte	0x1
	.byte	0x26
	.long	0xb44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF207
	.byte	0x1
	.byte	0x59
	.quad	.L3
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1d
	.long	.LASF193
	.byte	0x1
	.byte	0x2d
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"sv"
	.byte	0x1
	.byte	0x2e
	.long	0xb77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1d
	.long	.LASF194
	.byte	0x1
	.byte	0x5c
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF196
	.byte	0x1
	.byte	0x69
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xf50
	.uleb128 0x1b
	.string	"cv"
	.byte	0x1
	.byte	0x69
	.long	0xc6f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.byte	0x6b
	.long	0xcf4
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1d
	.long	.LASF191
	.byte	0x1
	.byte	0x6b
	.long	0xcf4
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"ax"
	.byte	0x1
	.byte	0x6b
	.long	0xb44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF192
	.byte	0x1
	.byte	0x6b
	.long	0xb44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.long	.LASF197
	.byte	0x1
	.byte	0x6c
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1d
	.long	.LASF194
	.byte	0x1
	.byte	0x71
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF198
	.byte	0x12
	.value	0x125
	.long	0x291
	.uleb128 0x20
	.long	.LASF199
	.byte	0x12
	.value	0x127
	.long	0x291
	.uleb128 0x21
	.long	.LASF200
	.byte	0x13
	.byte	0x22
	.long	0xcf4
	.uleb128 0x21
	.long	.LASF201
	.byte	0x13
	.byte	0x2a
	.long	0xcf4
	.uleb128 0x21
	.long	.LASF202
	.byte	0x13
	.byte	0x2b
	.long	0xcf4
	.uleb128 0x21
	.long	.LASF203
	.byte	0x13
	.byte	0x3c
	.long	0xbea
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
.LASF112:
	.string	"xgv_name"
.LASF5:
	.string	"short int"
.LASF88:
	.string	"xof_off"
.LASF38:
	.string	"broiled"
.LASF172:
	.string	"_PerlIO"
.LASF165:
	.string	"clone_params"
.LASF11:
	.string	"size_t"
.LASF140:
	.string	"xio_top_gv"
.LASF95:
	.string	"XPVHV"
.LASF33:
	.string	"op_pmpermflags"
.LASF61:
	.string	"gp_sv"
.LASF150:
	.string	"svt_get"
.LASF123:
	.string	"xcv_gv"
.LASF10:
	.string	"ssize_t"
.LASF94:
	.string	"xav_flags"
.LASF175:
	.string	"type"
.LASF69:
	.string	"gp_cvgen"
.LASF98:
	.string	"xhv_fill"
.LASF194:
	.string	"tmpXSoff"
.LASF110:
	.string	"xiv_iv"
.LASF12:
	.string	"long long unsigned int"
.LASF124:
	.string	"xcv_file"
.LASF49:
	.string	"data"
.LASF44:
	.string	"startp"
.LASF155:
	.string	"svt_copy"
.LASF200:
	.string	"PL_stack_sp"
.LASF142:
	.string	"xio_fmt_gv"
.LASF189:
	.string	"hek_key"
.LASF152:
	.string	"svt_len"
.LASF35:
	.string	"op_pmstash"
.LASF13:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF40:
	.string	"sv_refcnt"
.LASF191:
	.string	"mark"
.LASF60:
	.string	"program"
.LASF137:
	.string	"xio_page_len"
.LASF166:
	.string	"stashes"
.LASF62:
	.string	"gp_refcnt"
.LASF185:
	.string	"hent_hek"
.LASF81:
	.string	"mg_ptr"
.LASF188:
	.string	"hek_len"
.LASF6:
	.string	"long int"
.LASF18:
	.string	"op_ppaddr"
.LASF119:
	.string	"xcv_start"
.LASF9:
	.string	"__ssize_t"
.LASF176:
	.string	"next_off"
.LASF181:
	.string	"xiou_any"
.LASF193:
	.string	"retval"
.LASF86:
	.string	"xav_fill"
.LASF25:
	.string	"pmop"
.LASF14:
	.string	"double"
.LASF46:
	.string	"regstclass"
.LASF83:
	.string	"XPVAV"
.LASF102:
	.string	"xhv_eiter"
.LASF41:
	.string	"sv_flags"
.LASF164:
	.string	"CLONE_PARAMS"
.LASF163:
	.string	"any_dxptr"
.LASF78:
	.string	"mg_type"
.LASF36:
	.string	"PerlInterpreter"
.LASF177:
	.string	"reg_substr_data"
.LASF24:
	.string	"PMOP"
.LASF20:
	.string	"op_type"
.LASF106:
	.string	"xpvgv"
.LASF118:
	.string	"xcv_stash"
.LASF15:
	.string	"STRLEN"
.LASF130:
	.string	"XPVIO"
.LASF147:
	.string	"xio_flags"
.LASF196:
	.string	"boot_Sys__Hostname"
.LASF85:
	.string	"xav_array"
.LASF3:
	.string	"long unsigned int"
.LASF99:
	.string	"xhv_max"
.LASF133:
	.string	"xio_ofp"
.LASF139:
	.string	"xio_top_name"
.LASF128:
	.string	"xcv_flags"
.LASF157:
	.string	"any_ptr"
.LASF116:
	.string	"XPVCV"
.LASF71:
	.string	"gp_line"
.LASF1:
	.string	"short unsigned int"
.LASF120:
	.string	"xcv_root"
.LASF114:
	.string	"xgv_stash"
.LASF122:
	.string	"xcv_xsubany"
.LASF113:
	.string	"xgv_namelen"
.LASF107:
	.string	"xpv_pv"
.LASF97:
	.string	"xhv_array"
.LASF70:
	.string	"gp_flags"
.LASF187:
	.string	"hek_hash"
.LASF101:
	.string	"xhv_riter"
.LASF205:
	.string	"Hostname.c"
.LASF96:
	.string	"xpvhv"
.LASF48:
	.string	"precomp"
.LASF153:
	.string	"svt_clear"
.LASF132:
	.string	"xio_ifp"
.LASF195:
	.string	"XS_Sys__Hostname_ghname"
.LASF160:
	.string	"any_long"
.LASF80:
	.string	"mg_obj"
.LASF76:
	.string	"mg_virtual"
.LASF178:
	.string	"reg_data"
.LASF204:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF26:
	.string	"op_first"
.LASF37:
	.string	"interpreter"
.LASF58:
	.string	"lastcloseparen"
.LASF7:
	.string	"sizetype"
.LASF75:
	.string	"mg_moremagic"
.LASF183:
	.string	"PADOFFSET"
.LASF174:
	.string	"regnode"
.LASF104:
	.string	"xhv_name"
.LASF50:
	.string	"subbeg"
.LASF54:
	.string	"minlen"
.LASF134:
	.string	"xio_dirpu"
.LASF148:
	.string	"MGVTBL"
.LASF201:
	.string	"PL_stack_base"
.LASF149:
	.string	"mgvtbl"
.LASF2:
	.string	"unsigned int"
.LASF115:
	.string	"xgv_flags"
.LASF131:
	.string	"xpvio"
.LASF57:
	.string	"lastparen"
.LASF129:
	.string	"xcv_outside_seq"
.LASF111:
	.string	"xgv_gp"
.LASF136:
	.string	"xio_page"
.LASF173:
	.string	"PerlIO"
.LASF31:
	.string	"op_pmregexp"
.LASF73:
	.string	"MAGIC"
.LASF143:
	.string	"xio_bottom_name"
.LASF206:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF190:
	.string	"float"
.LASF66:
	.string	"gp_hv"
.LASF202:
	.string	"PL_stack_max"
.LASF84:
	.string	"xpvav"
.LASF180:
	.string	"xiou_dirp"
.LASF77:
	.string	"mg_private"
.LASF29:
	.string	"op_pmreplstart"
.LASF121:
	.string	"xcv_xsub"
.LASF56:
	.string	"nparens"
.LASF0:
	.string	"unsigned char"
.LASF34:
	.string	"op_pmdynflags"
.LASF171:
	.string	"__dirstream"
.LASF16:
	.string	"op_next"
.LASF103:
	.string	"xhv_pmroot"
.LASF170:
	.string	"PerlIOl"
.LASF108:
	.string	"xpv_cur"
.LASF74:
	.string	"magic"
.LASF197:
	.string	"file"
.LASF65:
	.string	"gp_av"
.LASF159:
	.string	"any_iv"
.LASF156:
	.string	"svt_dup"
.LASF28:
	.string	"op_pmreplroot"
.LASF126:
	.string	"xcv_padlist"
.LASF161:
	.string	"any_bool"
.LASF127:
	.string	"xcv_outside"
.LASF63:
	.string	"gp_io"
.LASF182:
	.string	"PADLIST"
.LASF52:
	.string	"sublen"
.LASF100:
	.string	"xhv_keys"
.LASF207:
	.string	"check_out"
.LASF154:
	.string	"svt_free"
.LASF8:
	.string	"char"
.LASF42:
	.string	"REGEXP"
.LASF141:
	.string	"xio_fmt_name"
.LASF144:
	.string	"xio_bottom_gv"
.LASF47:
	.string	"substrs"
.LASF43:
	.string	"regexp"
.LASF64:
	.string	"gp_form"
.LASF117:
	.string	"xpvcv"
.LASF72:
	.string	"gp_file"
.LASF67:
	.string	"gp_egv"
.LASF21:
	.string	"op_seq"
.LASF109:
	.string	"xpv_len"
.LASF186:
	.string	"hent_val"
.LASF135:
	.string	"xio_lines"
.LASF168:
	.string	"proto_perl"
.LASF199:
	.string	"PL_sv_yes"
.LASF68:
	.string	"gp_cv"
.LASF55:
	.string	"prelen"
.LASF45:
	.string	"endp"
.LASF138:
	.string	"xio_lines_left"
.LASF51:
	.string	"offsets"
.LASF203:
	.string	"PL_markstack_ptr"
.LASF93:
	.string	"xav_arylen"
.LASF91:
	.string	"xmg_stash"
.LASF151:
	.string	"svt_set"
.LASF39:
	.string	"sv_any"
.LASF198:
	.string	"PL_sv_undef"
.LASF89:
	.string	"xnv_nv"
.LASF169:
	.string	"line_t"
.LASF87:
	.string	"xav_max"
.LASF19:
	.string	"op_targ"
.LASF105:
	.string	"XPVGV"
.LASF167:
	.string	"flags"
.LASF32:
	.string	"op_pmflags"
.LASF184:
	.string	"hent_next"
.LASF82:
	.string	"mg_len"
.LASF30:
	.string	"op_pmnext"
.LASF53:
	.string	"refcnt"
.LASF27:
	.string	"op_last"
.LASF125:
	.string	"xcv_depth"
.LASF92:
	.string	"xav_alloc"
.LASF162:
	.string	"any_dptr"
.LASF158:
	.string	"any_i32"
.LASF79:
	.string	"mg_flags"
.LASF146:
	.string	"xio_type"
.LASF179:
	.string	"cv_flags_t"
.LASF23:
	.string	"op_private"
.LASF17:
	.string	"op_sibling"
.LASF192:
	.string	"items"
.LASF90:
	.string	"xmg_magic"
.LASF145:
	.string	"xio_subprocess"
.LASF22:
	.string	"op_flags"
.LASF59:
	.string	"reganch"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
