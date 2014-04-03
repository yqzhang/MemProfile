	.file	"byterevn.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# byterevn.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	byterevn
	.type	byterevn, @function
byterevn:
.LFB0:
	.file 1 "byterevn.c"
	.loc 1 12 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# w, w
	movl	%esi, -44(%rbp)	# n, n
	.loc 1 18 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L2	#
.L3:
	.loc 1 20 0 discriminator 2
	movl	-20(%rbp), %eax	# j, tmp77
	cltq
	leaq	0(,%rax,4), %rdx	#, D.1748
	movq	-40(%rbp), %rax	# w, tmp78
	addq	%rdx, %rax	# D.1748, D.1749
	movl	(%rax), %r12d	# *_7, old
	.loc 1 21 0 discriminator 2
	movl	%r12d, %eax	# old, old.0
	shrl	$24, %eax	#, D.1750
	movl	%eax, %ebx	# D.1750, newv
	.loc 1 22 0 discriminator 2
	movl	%r12d, %eax	# old, D.1751
	sarl	$8, %eax	#, D.1751
	andl	$65280, %eax	#, D.1751
	orl	%eax, %ebx	# D.1751, newv
	.loc 1 23 0 discriminator 2
	movl	%r12d, %eax	# old, D.1751
	sall	$8, %eax	#, D.1751
	andl	$16711680, %eax	#, D.1751
	orl	%eax, %ebx	# D.1751, newv
	.loc 1 24 0 discriminator 2
	movl	%r12d, %eax	# old, D.1751
	sall	$24, %eax	#, D.1751
	movl	%eax, %edx	# D.1751, D.1752
	movl	%ebx, %eax	# newv, newv.1
	orl	%edx, %eax	# D.1752, D.1752
	movl	%eax, %ebx	# D.1752, newv
	.loc 1 25 0 discriminator 2
	movl	-20(%rbp), %eax	# j, tmp79
	cltq
	leaq	0(,%rax,4), %rdx	#, D.1748
	movq	-40(%rbp), %rax	# w, tmp80
	addq	%rdx, %rax	# D.1748, D.1749
	movl	%ebx, (%rax)	# newv, *_25
	.loc 1 18 0 discriminator 2
	addl	$1, -20(%rbp)	#, j
.L2:
	.loc 1 18 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# j, tmp81
	cmpl	-44(%rbp), %eax	# n, tmp81
	jl	.L3	#,
	.loc 1 27 0 is_stmt 1
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	byterevn, .-byterevn
.Letext0:
	.file 2 "int32type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF2
	.byte	0x1
	.long	.LASF3
	.long	.LASF4
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF5
	.byte	0x2
	.byte	0x1f
	.long	0x38
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x1
	.byte	0xb
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2
	.uleb128 0x6
	.string	"w"
	.byte	0x1
	.byte	0xb
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"n"
	.byte	0x1
	.byte	0xb
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.string	"old"
	.byte	0x1
	.byte	0xd
	.long	0x2d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF1
	.byte	0x1
	.byte	0xd
	.long	0x2d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.string	"j"
	.byte	0x1
	.byte	0xe
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x2d
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
.LASF0:
	.string	"unsigned int"
.LASF2:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"byterevn.c"
.LASF5:
	.string	"int32type"
.LASF1:
	.string	"newv"
.LASF6:
	.string	"byterevn"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
