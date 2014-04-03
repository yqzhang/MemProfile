	.file	"alloca.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 alloca.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	stack_dir
	.comm	stack_dir,4,4
	.type	find_stack_direction, @function
find_stack_direction:
.LFB2:
	.file 1 "alloca.c"
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 97 0
	movq	addr.4994(%rip), %rax	# addr, addr.0
	testq	%rax, %rax	# addr.0
	jne	.L2	#,
	.loc 1 99 0
	leaq	-1(%rbp), %rax	#, tmp61
	movq	%rax, addr.4994(%rip)	# tmp61, addr
	.loc 1 101 0
	movl	$0, %eax	#,
	call	find_stack_direction	#
	jmp	.L1	#
.L2:
	.loc 1 106 0
	movq	addr.4994(%rip), %rdx	# addr, addr.1
	leaq	-1(%rbp), %rax	#, tmp62
	cmpq	%rax, %rdx	# tmp62, addr.1
	jae	.L4	#,
	.loc 1 107 0
	movl	$1, stack_dir(%rip)	#, stack_dir
	jmp	.L1	#
.L4:
	.loc 1 109 0
	movl	$-1, stack_dir(%rip)	#, stack_dir
.L1:
	.loc 1 111 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	find_stack_direction, .-find_stack_direction
	.local	last_alloca_header
	.comm	last_alloca_header,8,8
	.globl	C_alloca
	.type	C_alloca, @function
C_alloca:
.LFB3:
	.loc 1 150 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)	# size, size
	.loc 1 152 0
	leaq	-33(%rbp), %r12	#, depth
	.loc 1 155 0
	movl	stack_dir(%rip), %eax	# stack_dir, stack_dir.2
	testl	%eax, %eax	# stack_dir.2
	jne	.L6	#,
	.loc 1 156 0
	movl	$0, %eax	#,
	call	find_stack_direction	#
.L6:
.LBB2:
	.loc 1 165 0
	movq	last_alloca_header(%rip), %rbx	# last_alloca_header, hp
	jmp	.L7	#
.L11:
	.loc 1 166 0
	movl	stack_dir(%rip), %eax	# stack_dir, stack_dir.3
	testl	%eax, %eax	# stack_dir.3
	jle	.L8	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movq	8(%rbx), %rax	# hp_1->h.deep, D.5047
	cmpq	%r12, %rax	# depth, D.5047
	ja	.L9	#,
.L8:
	.loc 1 167 0 is_stmt 1
	movl	stack_dir(%rip), %eax	# stack_dir, stack_dir.4
	testl	%eax, %eax	# stack_dir.4
	jns	.L10	#,
	.loc 1 167 0 is_stmt 0 discriminator 1
	movq	8(%rbx), %rax	# hp_1->h.deep, D.5047
	cmpq	%r12, %rax	# depth, D.5047
	jae	.L10	#,
.L9:
.LBB3:
	.loc 1 169 0 is_stmt 1
	movq	(%rbx), %r13	# hp_1->h.next, np
	.loc 1 171 0
	movq	%rbx, %rdi	# hp,
	call	free	#
	.loc 1 173 0
	movq	%r13, %rbx	# np, hp
.L7:
.LBE3:
	.loc 1 165 0 discriminator 1
	testq	%rbx, %rbx	# hp
	jne	.L11	#,
.L10:
	.loc 1 178 0
	movq	%rbx, last_alloca_header(%rip)	# hp, last_alloca_header
.LBE2:
	.loc 1 181 0
	cmpq	$0, -56(%rbp)	#, size
	jne	.L12	#,
	.loc 1 182 0
	movl	$0, %eax	#, D.5046
	jmp	.L15	#
.L12:
.LBB4:
	.loc 1 187 0
	movq	-56(%rbp), %rax	# size, tmp72
	addq	$16, %rax	#, D.5048
	movq	%rax, %rdi	# D.5048,
	call	xmalloc	#
	movq	%rax, %rbx	# tmp73, new
	.loc 1 190 0
	testq	%rbx, %rbx	# new
	jne	.L14	#,
	.loc 1 191 0
	call	abort	#
.L14:
	.loc 1 193 0
	movq	last_alloca_header(%rip), %rax	# last_alloca_header, last_alloca_header.5
	movq	%rax, (%rbx)	# last_alloca_header.5, MEM[(union header *)new_15].h.next
	.loc 1 194 0
	movq	%r12, 8(%rbx)	# depth, MEM[(union header *)new_15].h.deep
	.loc 1 196 0
	movq	%rbx, last_alloca_header(%rip)	# new, last_alloca_header
	.loc 1 200 0
	leaq	16(%rbx), %rax	#, D.5046
.L15:
.LBE4:
	.loc 1 202 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	C_alloca, .-C_alloca
	.local	addr.4994
	.comm	addr.4994,8,8
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x210
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF22
	.byte	0x1
	.long	.LASF23
	.long	.LASF24
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
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0xd4
	.long	0x4d
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.byte	0x8
	.long	0x64
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.long	0x64
	.long	0xa4
	.uleb128 0x8
	.long	0x34
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x1
	.byte	0x81
	.long	0xc5
	.uleb128 0xa
	.long	.LASF11
	.byte	0x1
	.byte	0x83
	.long	0xe6
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x84
	.long	0x80
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"hdr"
	.byte	0x10
	.byte	0x1
	.byte	0x7e
	.long	0xe6
	.uleb128 0xc
	.long	.LASF13
	.byte	0x1
	.byte	0x80
	.long	0x94
	.uleb128 0xd
	.string	"h"
	.byte	0x1
	.byte	0x85
	.long	0xa4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc5
	.uleb128 0x4
	.long	.LASF15
	.byte	0x1
	.byte	0x86
	.long	0xc5
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.byte	0x5c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x138
	.uleb128 0xf
	.long	.LASF16
	.byte	0x1
	.byte	0x5e
	.long	0x80
	.uleb128 0x9
	.byte	0x3
	.quad	addr.4994
	.uleb128 0xf
	.long	.LASF17
	.byte	0x1
	.byte	0x5f
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x10
	.long	.LASF26
	.byte	0x1
	.byte	0x94
	.long	0x5b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e3
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.byte	0x95
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF18
	.byte	0x1
	.byte	0x97
	.long	0x64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0xf
	.long	.LASF19
	.byte	0x1
	.byte	0x98
	.long	0x80
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x12
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1c3
	.uleb128 0x13
	.string	"hp"
	.byte	0x1
	.byte	0xa3
	.long	0x1e3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x13
	.string	"np"
	.byte	0x1
	.byte	0xa9
	.long	0x1e3
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.uleb128 0x14
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x13
	.string	"new"
	.byte	0x1
	.byte	0xbb
	.long	0x5b
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xec
	.uleb128 0xf
	.long	.LASF20
	.byte	0x1
	.byte	0x58
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	stack_dir
	.uleb128 0xf
	.long	.LASF21
	.byte	0x1
	.byte	0x88
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	last_alloca_header
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x17
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
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
.LASF15:
	.string	"header"
.LASF14:
	.string	"size_t"
.LASF11:
	.string	"next"
.LASF13:
	.string	"align"
.LASF16:
	.string	"addr"
.LASF4:
	.string	"short unsigned int"
.LASF21:
	.string	"last_alloca_header"
.LASF23:
	.string	"alloca.c"
.LASF27:
	.string	"size"
.LASF2:
	.string	"long unsigned int"
.LASF17:
	.string	"dummy"
.LASF18:
	.string	"probe"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"short int"
.LASF20:
	.string	"stack_dir"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF26:
	.string	"C_alloca"
.LASF25:
	.string	"find_stack_direction"
.LASF0:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF19:
	.string	"depth"
.LASF5:
	.string	"char"
.LASF22:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF12:
	.string	"deep"
.LASF1:
	.string	"long int"
.LASF7:
	.string	"signed char"
.LASF24:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
