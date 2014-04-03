	.file	"draw.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 draw.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	is_draw
	.type	is_draw, @function
is_draw:
.LFB2:
	.file 1 "draw.c"
	.loc 1 15 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 16 0
	movl	$0, -12(%rbp)	#, repeats
	.loc 1 18 0
	movl	fifty(%rip), %eax	# fifty, fifty.0
	cmpl	$3, %eax	#, fifty.0
	jle	.L2	#,
	.loc 1 20 0
	movl	move_number(%rip), %edx	# move_number, move_number.1
	movl	ply(%rip), %eax	# ply, ply.2
	addl	%edx, %eax	# move_number.1, D.3937
	leal	-1(%rax), %edx	#, D.3937
	movl	fifty(%rip), %eax	# fifty, fifty.3
	subl	%eax, %edx	# fifty.3, D.3937
	movl	move_number(%rip), %eax	# move_number, move_number.4
	cmpl	%eax, %edx	# move_number.4, D.3937
	jle	.L3	#,
	.loc 1 22 0
	movl	move_number(%rip), %edx	# move_number, move_number.5
	movl	ply(%rip), %eax	# ply, ply.6
	addl	%edx, %eax	# move_number.5, D.3937
	leal	-1(%rax), %edx	#, D.3937
	movl	fifty(%rip), %eax	# fifty, fifty.7
	subl	%eax, %edx	# fifty.7, tmp91
	movl	%edx, %eax	# tmp91, tmp91
	movl	%eax, -8(%rbp)	# tmp91, end
	jmp	.L4	#
.L3:
	.loc 1 26 0
	movl	move_number(%rip), %eax	# move_number, tmp92
	movl	%eax, -8(%rbp)	# tmp92, end
.L4:
	.loc 1 28 0
	movl	move_number(%rip), %edx	# move_number, move_number.8
	movl	ply(%rip), %eax	# ply, ply.9
	addl	%edx, %eax	# move_number.8, D.3937
	subl	$3, %eax	#, tmp93
	movl	%eax, -16(%rbp)	# tmp93, i
	jmp	.L5	#
.L8:
	.loc 1 30 0
	movl	-16(%rbp), %eax	# i, tmp95
	cltq
	movl	hash_history(,%rax,4), %edx	# hash_history, D.3938
	movl	hash(%rip), %eax	# hash, hash.10
	cmpl	%eax, %edx	# hash.10, D.3938
	jne	.L6	#,
	.loc 1 32 0
	movl	$1, %eax	#, D.3936
	jmp	.L7	#
.L6:
	.loc 1 28 0
	subl	$2, -16(%rbp)	#, i
.L5:
	.loc 1 28 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, i
	js	.L2	#,
	.loc 1 28 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp96
	cmpl	-8(%rbp), %eax	# end, tmp96
	jge	.L8	#,
.L2:
	.loc 1 37 0 is_stmt 1
	movl	fifty(%rip), %eax	# fifty, fifty.11
	cmpl	$5, %eax	#, fifty.11
	jle	.L9	#,
	.loc 1 39 0
	movl	move_number(%rip), %eax	# move_number, move_number.12
	leal	-1(%rax), %ecx	#, D.3937
	movl	ply(%rip), %eax	# ply, ply.13
	cltd
	shrl	$31, %edx	#, tmp98
	addl	%edx, %eax	# tmp98, tmp99
	andl	$1, %eax	#, tmp100
	subl	%edx, %eax	# tmp98, tmp101
	subl	%eax, %ecx	# D.3937, tmp102
	movl	%ecx, %eax	# tmp102, tmp102
	movl	%eax, -4(%rbp)	# tmp102, start
	.loc 1 40 0
	movl	move_number(%rip), %edx	# move_number, move_number.14
	movl	ply(%rip), %eax	# ply, ply.15
	addl	%edx, %eax	# move_number.14, D.3937
	leal	-1(%rax), %edx	#, D.3937
	movl	fifty(%rip), %eax	# fifty, fifty.16
	subl	%eax, %edx	# fifty.16, tmp103
	movl	%edx, %eax	# tmp103, tmp103
	movl	%eax, -8(%rbp)	# tmp103, end
	.loc 1 42 0
	movl	-4(%rbp), %eax	# start, tmp104
	movl	%eax, -16(%rbp)	# tmp104, i
	jmp	.L10	#
.L13:
	.loc 1 44 0
	movl	-16(%rbp), %eax	# i, tmp106
	cltq
	movl	hash_history(,%rax,4), %edx	# hash_history, D.3938
	movl	hash(%rip), %eax	# hash, hash.17
	cmpl	%eax, %edx	# hash.17, D.3938
	jne	.L11	#,
	.loc 1 46 0
	addl	$1, -12(%rbp)	#, repeats
.L11:
	.loc 1 48 0
	cmpl	$1, -12(%rbp)	#, repeats
	jle	.L12	#,
	.loc 1 50 0
	movl	$1, %eax	#, D.3936
	jmp	.L7	#
.L12:
	.loc 1 42 0
	subl	$2, -16(%rbp)	#, i
.L10:
	.loc 1 42 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, i
	js	.L9	#,
	.loc 1 42 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp107
	cmpl	-8(%rbp), %eax	# end, tmp107
	jge	.L13	#,
.L9:
	.loc 1 55 0 is_stmt 1
	movl	$0, %eax	#, D.3936
.L7:
	.loc 1 57 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	is_draw, .-is_draw
.Letext0:
	.file 2 "extvars.h"
	.file 3 "sjeng.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x13e
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
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.long	0x42
	.uleb128 0x3
	.long	.LASF0
	.sleb128 0
	.uleb128 0x3
	.long	.LASF1
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF22
	.byte	0x3
	.byte	0xe
	.long	0x2d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0xe
	.long	0x42
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf9
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x10
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.byte	0x10
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"end"
	.byte	0x1
	.byte	0x10
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x10
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.string	"ply"
	.byte	0x2
	.byte	0xd
	.long	0x77
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.byte	0xe
	.long	0x77
	.uleb128 0xb
	.long	.LASF16
	.byte	0x2
	.byte	0x38
	.long	0x5b
	.uleb128 0xb
	.long	.LASF17
	.byte	0x2
	.byte	0x9f
	.long	0x77
	.uleb128 0xc
	.long	0x5b
	.long	0x136
	.uleb128 0xd
	.long	0x85
	.value	0x257
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x2
	.byte	0xa0
	.long	0x125
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x6
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
.LASF11:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF22:
	.string	"xbool"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"long long unsigned int"
.LASF17:
	.string	"move_number"
.LASF13:
	.string	"repeats"
.LASF2:
	.string	"unsigned char"
.LASF1:
	.string	"TRUE"
.LASF10:
	.string	"char"
.LASF18:
	.string	"hash_history"
.LASF21:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF8:
	.string	"long int"
.LASF7:
	.string	"short int"
.LASF19:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF16:
	.string	"hash"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF23:
	.string	"is_draw"
.LASF14:
	.string	"start"
.LASF15:
	.string	"fifty"
.LASF20:
	.string	"draw.c"
.LASF0:
	.string	"FALSE"
.LASF9:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
