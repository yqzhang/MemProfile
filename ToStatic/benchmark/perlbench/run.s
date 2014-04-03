	.file	"run.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 run.c -mtune=generic
# -march=x86-64 -g -fverbose-asm -fno-strict-aliasing -fstack-protector
# -Wformat -Wformat-security
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
	.globl	Perl_runops_standard
	.type	Perl_runops_standard, @function
Perl_runops_standard:
.LFB2:
	.file 1 "run.c"
	.loc 1 36 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 37 0
	jmp	.L2	#
.L3:
	.loc 1 38 0
	movl	PL_sig_pending(%rip), %eax	# PL_sig_pending, PL_sig_pending.0
	testl	%eax, %eax	# PL_sig_pending.0
	je	.L2	#,
	.loc 1 38 0 is_stmt 0 discriminator 1
	call	Perl_despatch_signals	#
.L2:
	.loc 1 37 0 is_stmt 1 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1
	movq	16(%rax), %rax	# PL_op.1_1->op_ppaddr, D.10308
	call	*%rax	# D.10308
	movq	%rax, PL_op(%rip)	# PL_op.2, PL_op
	movq	PL_op(%rip), %rax	# PL_op, PL_op.3
	testq	%rax, %rax	# PL_op.3
	jne	.L3	#,
	.loc 1 41 0
	movb	$0, PL_tainted(%rip)	#, PL_tainted
	.loc 1 42 0
	movl	$0, %eax	#, D.10309
	.loc 1 43 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_runops_standard, .-Perl_runops_standard
.Letext0:
	.file 2 "op.h"
	.file 3 "perl.h"
	.file 4 "handy.h"
	.file 5 "intrpvar.h"
	.file 6 "thrdvar.h"
	.file 7 "pad.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x173
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF25
	.byte	0x1
	.long	.LASF26
	.long	.LASF27
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
	.uleb128 0x4
	.string	"OP"
	.byte	0x3
	.value	0x7d5
	.long	0x93
	.uleb128 0x5
	.string	"op"
	.byte	0x28
	.byte	0x2
	.byte	0xe2
	.long	0xff
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0xe3
	.long	0x114
	.byte	0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0xe3
	.long	0x114
	.byte	0x8
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0xe3
	.long	0x12a
	.byte	0x10
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0xe3
	.long	0x11a
	.byte	0x18
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0xe3
	.long	0x109
	.byte	0x20
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0xe3
	.long	0x109
	.byte	0x22
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0xe3
	.long	0xff
	.byte	0x24
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0xe3
	.long	0xff
	.byte	0x25
	.byte	0
	.uleb128 0x7
	.string	"U8"
	.byte	0x4
	.byte	0x85
	.long	0x2d
	.uleb128 0x7
	.string	"U16"
	.byte	0x4
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.byte	0x8
	.long	0x88
	.uleb128 0x9
	.long	.LASF20
	.byte	0x7
	.byte	0x1d
	.long	0x42
	.uleb128 0xa
	.long	0x114
	.uleb128 0x8
	.byte	0x8
	.long	0x125
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x23
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.long	.LASF22
	.byte	0x5
	.value	0x1e2
	.long	0x57
	.uleb128 0xd
	.long	.LASF23
	.byte	0x6
	.byte	0x26
	.long	0x114
	.uleb128 0xd
	.long	.LASF24
	.byte	0x6
	.byte	0x5f
	.long	0x6c
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
.LASF27:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF24:
	.string	"PL_tainted"
.LASF28:
	.string	"Perl_runops_standard"
.LASF12:
	.string	"op_next"
.LASF18:
	.string	"op_flags"
.LASF26:
	.string	"run.c"
.LASF21:
	.string	"float"
.LASF9:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned char"
.LASF14:
	.string	"op_ppaddr"
.LASF20:
	.string	"PADOFFSET"
.LASF3:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"PL_sig_pending"
.LASF11:
	.string	"double"
.LASF2:
	.string	"unsigned int"
.LASF19:
	.string	"op_private"
.LASF7:
	.string	"sizetype"
.LASF17:
	.string	"op_seq"
.LASF10:
	.string	"long long int"
.LASF15:
	.string	"op_targ"
.LASF8:
	.string	"char"
.LASF25:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF13:
	.string	"op_sibling"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF16:
	.string	"op_type"
.LASF23:
	.string	"PL_op"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
