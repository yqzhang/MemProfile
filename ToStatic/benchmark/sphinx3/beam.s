	.file	"beam.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# beam.c -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
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
.LC0:
	.string	"beam.c"
	.text
	.globl	beam_init
	.type	beam_init, @function
beam_init:
.LFB2:
	.file 1 "beam.c"
	.loc 1 58 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movsd	%xmm0, -24(%rbp)	# svq, svq
	movsd	%xmm1, -32(%rbp)	# hmm, hmm
	movsd	%xmm2, -40(%rbp)	# ptr, ptr
	movsd	%xmm3, -48(%rbp)	# wd, wd
	.loc 1 61 0
	movl	$61, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$16, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp65, beam
	.loc 1 63 0
	movq	-24(%rbp), %rax	# svq, tmp66
	movq	%rax, -56(%rbp)	# tmp66, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movq	-8(%rbp), %rdx	# beam, tmp67
	movl	%eax, (%rdx)	# D.4939, beam_1->subvq
	.loc 1 64 0
	movq	-32(%rbp), %rax	# hmm, tmp68
	movq	%rax, -56(%rbp)	# tmp68, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movq	-8(%rbp), %rdx	# beam, tmp69
	movl	%eax, 4(%rdx)	# D.4939, beam_1->hmm
	.loc 1 65 0
	movq	-40(%rbp), %rax	# ptr, tmp70
	movq	%rax, -56(%rbp)	# tmp70, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movq	-8(%rbp), %rdx	# beam, tmp71
	movl	%eax, 8(%rdx)	# D.4939, beam_1->ptrans
	.loc 1 66 0
	movq	-48(%rbp), %rax	# wd, tmp72
	movq	%rax, -56(%rbp)	# tmp72, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movq	-8(%rbp), %rdx	# beam, tmp73
	movl	%eax, 12(%rdx)	# D.4939, beam_1->word
	.loc 1 68 0
	movq	-8(%rbp), %rax	# beam, D.4940
	.loc 1 69 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	beam_init, .-beam_init
.Letext0:
	.file 2 "./libutil/prim_type.h"
	.file 3 "beam.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x153
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF19
	.byte	0x1
	.long	.LASF20
	.long	.LASF21
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x46
	.long	0x88
	.uleb128 0x5
	.byte	0x10
	.byte	0x3
	.byte	0x40
	.long	0xde
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x41
	.long	0x8f
	.byte	0
	.uleb128 0x7
	.string	"hmm"
	.byte	0x3
	.byte	0x42
	.long	0x8f
	.byte	0x4
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x43
	.long	0x8f
	.byte	0x8
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0x44
	.long	0x8f
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF18
	.byte	0x3
	.byte	0x45
	.long	0xa5
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x39
	.long	0x150
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x150
	.uleb128 0x9
	.string	"svq"
	.byte	0x1
	.byte	0x39
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"hmm"
	.byte	0x1
	.byte	0x39
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"ptr"
	.byte	0x1
	.byte	0x39
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"wd"
	.byte	0x1
	.byte	0x39
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x3b
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0xde
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
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
.LASF9:
	.string	"long long int"
.LASF16:
	.string	"ptrans"
.LASF3:
	.string	"unsigned int"
.LASF23:
	.string	"beam"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"subvq"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF19:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF12:
	.string	"double"
.LASF7:
	.string	"sizetype"
.LASF2:
	.string	"short unsigned int"
.LASF14:
	.string	"float64"
.LASF20:
	.string	"beam.c"
.LASF11:
	.string	"float"
.LASF18:
	.string	"beam_t"
.LASF5:
	.string	"short int"
.LASF22:
	.string	"beam_init"
.LASF17:
	.string	"word"
.LASF13:
	.string	"int32"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
