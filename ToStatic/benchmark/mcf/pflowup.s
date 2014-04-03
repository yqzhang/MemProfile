	.file	"pflowup.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 pflowup.c -mtune=generic
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
	.globl	primal_update_flow
	.type	primal_update_flow, @function
primal_update_flow:
.LFB2:
	.file 1 "pflowup.c"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# iplus, iplus
	movq	%rsi, -16(%rbp)	# jplus, jplus
	movq	%rdx, -24(%rbp)	# w, w
	.loc 1 40 0
	jmp	.L2	#
.L5:
	.loc 1 42 0
	movq	-8(%rbp), %rax	# iplus, tmp61
	movl	8(%rax), %eax	# iplus_1->orientation, D.4675
	testl	%eax, %eax	# D.4675
	je	.L3	#,
	.loc 1 43 0
	movq	-8(%rbp), %rax	# iplus, tmp62
	movq	$0, 80(%rax)	#, iplus_1->flow
	jmp	.L4	#
.L3:
	.loc 1 45 0
	movq	-8(%rbp), %rax	# iplus, tmp63
	movq	$1, 80(%rax)	#, iplus_1->flow
.L4:
	.loc 1 40 0
	movq	-8(%rbp), %rax	# iplus, tmp64
	movq	24(%rax), %rax	# iplus_1->pred, tmp65
	movq	%rax, -8(%rbp)	# tmp65, iplus
.L2:
	.loc 1 40 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# iplus, tmp66
	cmpq	-24(%rbp), %rax	# w, tmp66
	jne	.L5	#,
	.loc 1 48 0 is_stmt 1
	jmp	.L6	#
.L9:
	.loc 1 50 0
	movq	-16(%rbp), %rax	# jplus, tmp67
	movl	8(%rax), %eax	# jplus_2->orientation, D.4675
	testl	%eax, %eax	# D.4675
	je	.L7	#,
	.loc 1 51 0
	movq	-16(%rbp), %rax	# jplus, tmp68
	movq	$1, 80(%rax)	#, jplus_2->flow
	jmp	.L8	#
.L7:
	.loc 1 53 0
	movq	-16(%rbp), %rax	# jplus, tmp69
	movq	$0, 80(%rax)	#, jplus_2->flow
.L8:
	.loc 1 48 0
	movq	-16(%rbp), %rax	# jplus, tmp70
	movq	24(%rax), %rax	# jplus_2->pred, tmp71
	movq	%rax, -16(%rbp)	# tmp71, jplus
.L6:
	.loc 1 48 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# jplus, tmp72
	cmpq	-24(%rbp), %rax	# w, tmp72
	jne	.L9	#,
	.loc 1 55 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	primal_update_flow, .-primal_update_flow
.Letext0:
	.file 2 "defines.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x23d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF42
	.byte	0x1
	.long	.LASF43
	.long	.LASF44
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
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x44
	.long	0x5e
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x45
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x63
	.long	0xb0
	.uleb128 0x5
	.long	.LASF31
	.byte	0x68
	.byte	0x2
	.byte	0x6b
	.long	0x165
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0x6d
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0x6e
	.long	0x57
	.byte	0x8
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x6f
	.long	0x165
	.byte	0x10
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x70
	.long	0x165
	.byte	0x18
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x71
	.long	0x165
	.byte	0x20
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x72
	.long	0x165
	.byte	0x28
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x73
	.long	0x1e3
	.byte	0x30
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.byte	0x74
	.long	0x1e3
	.byte	0x38
	.uleb128 0x6
	.long	.LASF24
	.byte	0x2
	.byte	0x74
	.long	0x1e3
	.byte	0x40
	.uleb128 0x6
	.long	.LASF25
	.byte	0x2
	.byte	0x75
	.long	0x1e3
	.byte	0x48
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.byte	0x76
	.long	0x8f
	.byte	0x50
	.uleb128 0x6
	.long	.LASF27
	.byte	0x2
	.byte	0x77
	.long	0x5e
	.byte	0x58
	.uleb128 0x6
	.long	.LASF28
	.byte	0x2
	.byte	0x78
	.long	0x57
	.byte	0x60
	.uleb128 0x6
	.long	.LASF29
	.byte	0x2
	.byte	0x79
	.long	0x57
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.long	.LASF30
	.byte	0x2
	.byte	0x64
	.long	0x170
	.uleb128 0x7
	.byte	0x8
	.long	0xb0
	.uleb128 0x8
	.string	"arc"
	.byte	0x40
	.byte	0x2
	.byte	0x7e
	.long	0x1e3
	.uleb128 0x6
	.long	.LASF32
	.byte	0x2
	.byte	0x80
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	.LASF33
	.byte	0x2
	.byte	0x81
	.long	0x165
	.byte	0x8
	.uleb128 0x6
	.long	.LASF34
	.byte	0x2
	.byte	0x81
	.long	0x165
	.byte	0x10
	.uleb128 0x6
	.long	.LASF35
	.byte	0x2
	.byte	0x82
	.long	0x57
	.byte	0x18
	.uleb128 0x6
	.long	.LASF36
	.byte	0x2
	.byte	0x83
	.long	0x1e3
	.byte	0x20
	.uleb128 0x6
	.long	.LASF37
	.byte	0x2
	.byte	0x83
	.long	0x1e3
	.byte	0x28
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.byte	0x84
	.long	0x8f
	.byte	0x30
	.uleb128 0x6
	.long	.LASF38
	.byte	0x2
	.byte	0x85
	.long	0x9a
	.byte	0x38
	.byte	0
	.uleb128 0x4
	.long	.LASF39
	.byte	0x2
	.byte	0x67
	.long	0x1ee
	.uleb128 0x7
	.byte	0x8
	.long	0x176
	.uleb128 0x9
	.long	.LASF45
	.byte	0x1
	.byte	0x1d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x23a
	.uleb128 0xa
	.long	.LASF40
	.byte	0x1
	.byte	0x1e
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF41
	.byte	0x1
	.byte	0x1f
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"w"
	.byte	0x1
	.byte	0x20
	.long	0x23a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xa
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
	.uleb128 0xb
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
.LASF21:
	.string	"sibling_prev"
.LASF39:
	.string	"arc_p"
.LASF9:
	.string	"float"
.LASF24:
	.string	"firstin"
.LASF30:
	.string	"node_p"
.LASF14:
	.string	"cost_t"
.LASF15:
	.string	"node_t"
.LASF10:
	.string	"double"
.LASF43:
	.string	"pflowup.c"
.LASF13:
	.string	"flow_t"
.LASF18:
	.string	"child"
.LASF17:
	.string	"orientation"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"firstout"
.LASF22:
	.string	"basic_arc"
.LASF40:
	.string	"iplus"
.LASF2:
	.string	"short unsigned int"
.LASF37:
	.string	"nextin"
.LASF35:
	.string	"ident"
.LASF0:
	.string	"long unsigned int"
.LASF45:
	.string	"primal_update_flow"
.LASF16:
	.string	"potential"
.LASF34:
	.string	"head"
.LASF32:
	.string	"cost"
.LASF3:
	.string	"unsigned int"
.LASF20:
	.string	"sibling"
.LASF12:
	.string	"long long unsigned int"
.LASF25:
	.string	"arc_tmp"
.LASF29:
	.string	"time"
.LASF28:
	.string	"number"
.LASF38:
	.string	"org_cost"
.LASF26:
	.string	"flow"
.LASF41:
	.string	"jplus"
.LASF7:
	.string	"sizetype"
.LASF11:
	.string	"long long int"
.LASF27:
	.string	"depth"
.LASF8:
	.string	"char"
.LASF36:
	.string	"nextout"
.LASF42:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF19:
	.string	"pred"
.LASF33:
	.string	"tail"
.LASF31:
	.string	"node"
.LASF6:
	.string	"long int"
.LASF44:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF4:
	.string	"signed char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
