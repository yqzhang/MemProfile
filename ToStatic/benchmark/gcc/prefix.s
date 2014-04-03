	.file	"prefix.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 prefix.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"./"
	.data
	.align 8
	.type	std_prefix, @object
	.size	std_prefix, 8
std_prefix:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"_ROOT"
	.text
	.type	get_key_value, @function
get_key_value:
.LFB2:
	.file 1 "prefix.c"
	.loc 1 94 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# key, key
	.loc 1 95 0
	movq	$0, -16(%rbp)	#, prefix
	.loc 1 96 0
	movq	$0, -8(%rbp)	#, temp
	.loc 1 102 0
	cmpq	$0, -16(%rbp)	#, prefix
	jne	.L2	#,
	.loc 1 103 0
	movq	-24(%rbp), %rax	# key, tmp61
	movl	$0, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp61,
	movl	$0, %eax	#,
	call	concat	#
	movq	%rax, -8(%rbp)	# tmp62, temp
	movq	-8(%rbp), %rax	# temp, tmp63
	movq	%rax, %rdi	# tmp63,
	call	getenv	#
	movq	%rax, -16(%rbp)	# tmp64, prefix
.L2:
	.loc 1 105 0
	cmpq	$0, -16(%rbp)	#, prefix
	jne	.L3	#,
	.loc 1 106 0
	movq	std_prefix(%rip), %rax	# std_prefix, tmp65
	movq	%rax, -16(%rbp)	# tmp65, prefix
.L3:
	.loc 1 108 0
	cmpq	$0, -8(%rbp)	#, temp
	je	.L4	#,
	.loc 1 109 0
	movq	-8(%rbp), %rax	# temp, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free	#
.L4:
	.loc 1 111 0
	movq	-16(%rbp), %rax	# prefix, D.6784
	.loc 1 112 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	get_key_value, .-get_key_value
	.type	save_string, @function
save_string:
.LFB3:
	.loc 1 120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 121 0
	movl	-28(%rbp), %eax	# len, tmp66
	addl	$1, %eax	#, D.6786
	cltq
	movq	%rax, %rdi	# D.6787,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp67, result
	.loc 1 123 0
	movl	-28(%rbp), %eax	# len, tmp68
	movslq	%eax, %rdx	# tmp68, D.6787
	movq	-24(%rbp), %rcx	# s, tmp69
	movq	-8(%rbp), %rax	# result, tmp70
	movq	%rcx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	memcpy	#
	.loc 1 124 0
	movl	-28(%rbp), %eax	# len, tmp71
	movslq	%eax, %rdx	# tmp71, D.6788
	movq	-8(%rbp), %rax	# result, tmp72
	addq	%rdx, %rax	# D.6788, D.6789
	movb	$0, (%rax)	#, *_8
	.loc 1 125 0
	movq	-8(%rbp), %rax	# result, D.6789
	.loc 1 126 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	save_string, .-save_string
	.type	translate_name, @function
translate_name:
.LFB4:
	.loc 1 188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# name, name
.L18:
	.loc 1 196 0
	movq	-56(%rbp), %rax	# name, tmp78
	movzbl	(%rax), %eax	# *name_1, tmp79
	movb	%al, -45(%rbp)	# tmp79, code
	.loc 1 197 0
	cmpb	$64, -45(%rbp)	#, code
	je	.L9	#,
	.loc 1 197 0 is_stmt 0 discriminator 1
	cmpb	$36, -45(%rbp)	#, code
	je	.L9	#,
	.loc 1 198 0 is_stmt 1
	jmp	.L20	#
.L9:
	.loc 1 200 0
	movl	$0, -44(%rbp)	#, keylen
	jmp	.L11	#
.L13:
	.loc 1 202 0
	addl	$1, -44(%rbp)	#, keylen
.L11:
	.loc 1 201 0 discriminator 1
	movl	-44(%rbp), %eax	# keylen, tmp80
	cltq
	leaq	1(%rax), %rdx	#, D.6791
	movq	-56(%rbp), %rax	# name, tmp81
	addq	%rdx, %rax	# D.6791, D.6790
	movzbl	(%rax), %eax	# *_12, D.6792
	.loc 1 200 0 discriminator 1
	testb	%al, %al	# D.6792
	je	.L12	#,
	.loc 1 201 0
	movl	-44(%rbp), %eax	# keylen, tmp82
	cltq
	leaq	1(%rax), %rdx	#, D.6791
	movq	-56(%rbp), %rax	# name, tmp83
	addq	%rdx, %rax	# D.6791, D.6790
	movzbl	(%rax), %eax	# *_16, D.6792
	cmpb	$47, %al	#, D.6792
	jne	.L13	#,
.L12:
	.loc 1 205 0
	movl	-44(%rbp), %eax	# keylen, tmp84
	addl	$1, %eax	#, D.6793
	cltq
	leaq	15(%rax), %rdx	#, tmp85
	movl	$16, %eax	#, tmp113
	subq	$1, %rax	#, tmp86
	addq	%rdx, %rax	# tmp85, tmp87
	movl	$16, %ebx	#, tmp114
	movl	$0, %edx	#, tmp90
	divq	%rbx	# tmp114
	imulq	$16, %rax, %rax	#, tmp89, tmp91
	subq	%rax, %rsp	# tmp91,
	movq	%rsp, %rax	#, tmp92
	addq	$15, %rax	#, tmp93
	shrq	$4, %rax	#, tmp94
	salq	$4, %rax	#, tmp95
	movq	%rax, -32(%rbp)	# tmp95, key
	.loc 1 206 0
	movl	-44(%rbp), %eax	# keylen, tmp96
	movslq	%eax, %rdx	# tmp96, D.6794
	movq	-56(%rbp), %rax	# name, tmp97
	leaq	1(%rax), %rcx	#, D.6790
	movq	-32(%rbp), %rax	# key, tmp98
	movq	%rcx, %rsi	# D.6790,
	movq	%rax, %rdi	# tmp98,
	call	strncpy	#
	.loc 1 207 0
	movl	-44(%rbp), %eax	# keylen, tmp99
	movslq	%eax, %rdx	# tmp99, D.6791
	movq	-32(%rbp), %rax	# key, tmp100
	addq	%rdx, %rax	# D.6791, D.6790
	movb	$0, (%rax)	#, *_25
	.loc 1 209 0
	cmpb	$64, -45(%rbp)	#, code
	jne	.L14	#,
	.loc 1 211 0
	movq	-32(%rbp), %rax	# key, tmp101
	movq	%rax, %rdi	# tmp101,
	call	get_key_value	#
	movq	%rax, -40(%rbp)	# tmp102, prefix
	.loc 1 212 0
	cmpq	$0, -40(%rbp)	#, prefix
	jne	.L16	#,
	.loc 1 213 0
	movq	std_prefix(%rip), %rax	# std_prefix, tmp103
	movq	%rax, -40(%rbp)	# tmp103, prefix
	jmp	.L16	#
.L14:
	.loc 1 216 0
	movq	-32(%rbp), %rax	# key, tmp104
	movq	%rax, %rdi	# tmp104,
	call	getenv	#
	movq	%rax, -40(%rbp)	# tmp105, prefix
.L16:
	.loc 1 218 0
	cmpq	$0, -40(%rbp)	#, prefix
	jne	.L17	#,
	.loc 1 219 0
	movq	$.LC0, -40(%rbp)	#, prefix
.L17:
	.loc 1 226 0
	movq	-56(%rbp), %rax	# name, tmp106
	movq	%rax, -24(%rbp)	# tmp106, old_name
	.loc 1 227 0
	movl	-44(%rbp), %eax	# keylen, tmp107
	cltq
	leaq	1(%rax), %rdx	#, D.6791
	movq	-56(%rbp), %rax	# name, tmp108
	leaq	(%rdx,%rax), %rcx	#, D.6790
	movq	-40(%rbp), %rax	# prefix, tmp109
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.6790,
	movq	%rax, %rdi	# tmp109,
	movl	$0, %eax	#,
	call	concat	#
	movq	%rax, -56(%rbp)	# tmp110, name
	.loc 1 228 0
	movq	-24(%rbp), %rax	# old_name, tmp111
	movq	%rax, %rdi	# tmp111,
	call	free	#
	.loc 1 229 0
	jmp	.L18	#
.L20:
	.loc 1 231 0
	movq	-56(%rbp), %rax	# name, D.6790
	.loc 1 232 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	translate_name, .-translate_name
	.type	tr, @function
tr:
.LFB5:
	.loc 1 239 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# string, string
	movl	%esi, -12(%rbp)	# c1, c1
	movl	%edx, -16(%rbp)	# c2, c2
.L23:
	.loc 1 242 0
	movq	-8(%rbp), %rax	# string, tmp64
	movzbl	(%rax), %eax	# *string_1, D.6796
	movsbl	%al, %eax	# D.6796, D.6797
	cmpl	-12(%rbp), %eax	# c1, D.6797
	jne	.L22	#,
	.loc 1 243 0
	movl	-16(%rbp), %eax	# c2, tmp65
	movl	%eax, %edx	# tmp65, D.6796
	movq	-8(%rbp), %rax	# string, tmp66
	movb	%dl, (%rax)	# D.6796, *string_1
.L22:
	.loc 1 245 0
	movq	-8(%rbp), %rax	# string, string.0
	leaq	1(%rax), %rdx	#, tmp67
	movq	%rdx, -8(%rbp)	# tmp67, string
	movzbl	(%rax), %eax	# *string.0_8, D.6796
	testb	%al, %al	# D.6796
	jne	.L23	#,
	.loc 1 246 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	tr, .-tr
	.section	.rodata
.LC2:
	.string	"@"
	.text
	.globl	update_path
	.type	update_path, @function
update_path:
.LFB6:
	.loc 1 256 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# path, path
	movq	%rsi, -32(%rbp)	# key, key
	.loc 1 259 0
	movq	std_prefix(%rip), %rax	# std_prefix, std_prefix.1
	movq	%rax, %rdi	# std_prefix.1,
	call	strlen	#
	movq	%rax, %rdx	#, D.6798
	movq	std_prefix(%rip), %rcx	# std_prefix, std_prefix.2
	movq	-24(%rbp), %rax	# path, tmp69
	movq	%rcx, %rsi	# std_prefix.2,
	movq	%rax, %rdi	# tmp69,
	call	strncmp	#
	testl	%eax, %eax	# D.6799
	jne	.L25	#,
	.loc 1 259 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, key
	je	.L25	#,
.LBB2:
	.loc 1 261 0 is_stmt 1
	movb	$0, -9(%rbp)	#, free_key
	.loc 1 263 0
	movq	-32(%rbp), %rax	# key, tmp70
	movzbl	(%rax), %eax	# *key_9(D), D.6800
	cmpb	$36, %al	#, D.6800
	je	.L26	#,
	.loc 1 265 0
	movq	-32(%rbp), %rax	# key, tmp71
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp71,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	concat	#
	movq	%rax, -32(%rbp)	# tmp72, key
	.loc 1 266 0
	movb	$1, -9(%rbp)	#, free_key
.L26:
	.loc 1 269 0
	movq	std_prefix(%rip), %rax	# std_prefix, std_prefix.3
	movq	%rax, %rdi	# std_prefix.3,
	call	strlen	#
	movq	-24(%rbp), %rdx	# path, tmp73
	leaq	(%rax,%rdx), %rcx	#, D.6801
	movq	-32(%rbp), %rax	# key, tmp74
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.6801,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	concat	#
	movq	%rax, -8(%rbp)	# tmp75, result
	.loc 1 270 0
	cmpb	$0, -9(%rbp)	#, free_key
	je	.L27	#,
	.loc 1 271 0
	movq	-32(%rbp), %rax	# key, tmp76
	movq	%rax, %rdi	# tmp76,
	call	free	#
.L27:
	.loc 1 272 0
	movq	-8(%rbp), %rax	# result, tmp77
	movq	%rax, %rdi	# tmp77,
	call	translate_name	#
	movq	%rax, -8(%rbp)	# tmp78, result
.LBE2:
	.loc 1 260 0
	jmp	.L28	#
.L25:
	.loc 1 275 0
	movq	-24(%rbp), %rax	# path, tmp79
	movq	%rax, %rdi	# tmp79,
	call	xstrdup	#
	movq	%rax, -8(%rbp)	# tmp80, result
.L28:
	.loc 1 293 0
	movq	-8(%rbp), %rax	# result, D.6802
	.loc 1 294 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	update_path, .-update_path
	.globl	set_std_prefix
	.type	set_std_prefix, @function
set_std_prefix:
.LFB7:
	.loc 1 301 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# prefix, prefix
	movl	%esi, -12(%rbp)	# len, len
	.loc 1 302 0
	movl	-12(%rbp), %edx	# len, tmp60
	movq	-8(%rbp), %rax	# prefix, tmp61
	movl	%edx, %esi	# tmp60,
	movq	%rax, %rdi	# tmp61,
	call	save_string	#
	movq	%rax, std_prefix(%rip)	# std_prefix.4, std_prefix
	.loc 1 303 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	set_std_prefix, .-set_std_prefix
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2a8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF26
	.byte	0x1
	.long	.LASF27
	.long	.LASF28
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
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x7f
	.uleb128 0x5
	.long	0x72
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x5c
	.long	0x79
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xde
	.uleb128 0x7
	.string	"key"
	.byte	0x1
	.byte	0x5d
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF11
	.byte	0x1
	.byte	0x5f
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF12
	.byte	0x1
	.byte	0x60
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x75
	.long	0x6c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x128
	.uleb128 0x7
	.string	"s"
	.byte	0x1
	.byte	0x76
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x77
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x79
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0xba
	.long	0x6c
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x19f
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0xbb
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.byte	0xbd
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0xbe
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.byte	0xbe
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF11
	.byte	0x1
	.byte	0xbf
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.byte	0xc0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0xb
	.string	"tr"
	.byte	0x1
	.byte	0xec
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0xed
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.string	"c1"
	.byte	0x1
	.byte	0xee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.string	"c2"
	.byte	0x1
	.byte	0xee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0xfd
	.long	0x6c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x252
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0xfe
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"key"
	.byte	0x1
	.byte	0xff
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.value	0x101
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.value	0x105
	.long	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF24
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.value	0x12a
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x296
	.uleb128 0x10
	.long	.LASF11
	.byte	0x1
	.value	0x12b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.value	0x12c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x4d
	.long	0x79
	.uleb128 0x9
	.byte	0x3
	.quad	std_prefix
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x5
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
.LASF26:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF30:
	.string	"set_std_prefix"
.LASF27:
	.string	"prefix.c"
.LASF19:
	.string	"old_name"
.LASF21:
	.string	"string"
.LASF25:
	.string	"std_prefix"
.LASF9:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF3:
	.string	"long unsigned int"
.LASF12:
	.string	"temp"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"save_string"
.LASF23:
	.string	"free_key"
.LASF11:
	.string	"prefix"
.LASF18:
	.string	"code"
.LASF1:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF15:
	.string	"result"
.LASF13:
	.string	"get_key_value"
.LASF16:
	.string	"translate_name"
.LASF0:
	.string	"sizetype"
.LASF10:
	.string	"long long int"
.LASF17:
	.string	"name"
.LASF7:
	.string	"short int"
.LASF20:
	.string	"keylen"
.LASF29:
	.string	"update_path"
.LASF2:
	.string	"long int"
.LASF22:
	.string	"path"
.LASF6:
	.string	"signed char"
.LASF28:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF24:
	.string	"_Bool"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
