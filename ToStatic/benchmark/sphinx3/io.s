	.file	"io.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 io.c
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
.LC0:
	.string	".Z"
.LC1:
	.string	".z"
.LC2:
	.string	".gz"
.LC3:
	.string	".GZ"
.LC4:
	.string	"r"
.LC5:
	.string	"gunzip -c %s"
.LC6:
	.string	"zcat %s"
.LC7:
	.string	"SYSTEM_ERROR"
.LC8:
	.string	"io.c"
.LC9:
	.string	"popen (%s,%s) failed\n"
.LC10:
	.string	"w"
.LC11:
	.string	"gzip > %s"
.LC12:
	.string	"compress -c > %s"
.LC13:
	.string	"ERROR"
	.align 8
.LC14:
	.string	"fopen_comp not implemented for mode = %s\n"
	.text
	.globl	fopen_comp
	.type	fopen_comp, @function
fopen_comp:
.LFB2:
	.file 1 "io.c"
	.loc 1 72 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16448, %rsp	#,
	movq	%rdi, -16424(%rbp)	# file, file
	movq	%rsi, -16432(%rbp)	# mode, mode
	movq	%rdx, -16440(%rbp)	# ispipe, ispipe
	.loc 1 72 0
	movq	%fs:40, %rax	#, tmp119
	movq	%rax, -8(%rbp)	# tmp119, D.3828
	xorl	%eax, %eax	# tmp119
	.loc 1 77 0
	movq	-16424(%rbp), %rax	# file, tmp81
	movq	%rax, %rdi	# tmp81,
	call	strlen	#
	movl	%eax, -16412(%rbp)	# D.3824, k
	.loc 1 84 0
	movq	-16440(%rbp), %rax	# ispipe, tmp82
	movl	$0, (%rax)	#, *ispipe_7(D)
	.loc 1 85 0
	movl	$0, -16416(%rbp)	#, isgz
	.loc 1 86 0
	cmpl	$2, -16412(%rbp)	#, k
	jle	.L2	#,
	.loc 1 86 0 is_stmt 0 discriminator 1
	movl	-16412(%rbp), %eax	# k, tmp83
	cltq
	leaq	-2(%rax), %rdx	#, D.3825
	movq	-16424(%rbp), %rax	# file, tmp84
	addq	%rdx, %rax	# D.3825, D.3826
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.3826,
	call	strcmp	#
	testl	%eax, %eax	# D.3827
	je	.L3	#,
	movl	-16412(%rbp), %eax	# k, tmp85
	cltq
	leaq	-2(%rax), %rdx	#, D.3825
	movq	-16424(%rbp), %rax	# file, tmp86
	addq	%rdx, %rax	# D.3825, D.3826
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.3826,
	call	strcmp	#
	testl	%eax, %eax	# D.3827
	jne	.L2	#,
.L3:
	.loc 1 87 0 is_stmt 1
	movq	-16440(%rbp), %rax	# ispipe, tmp87
	movl	$1, (%rax)	#, *ispipe_7(D)
	jmp	.L4	#
.L2:
	.loc 1 89 0
	cmpl	$3, -16412(%rbp)	#, k
	jle	.L4	#,
	.loc 1 90 0 discriminator 1
	movl	-16412(%rbp), %eax	# k, tmp88
	cltq
	leaq	-3(%rax), %rdx	#, D.3825
	movq	-16424(%rbp), %rax	# file, tmp89
	addq	%rdx, %rax	# D.3825, D.3826
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.3826,
	call	strcmp	#
	.loc 1 89 0 discriminator 1
	testl	%eax, %eax	# D.3827
	je	.L5	#,
	.loc 1 90 0
	movl	-16412(%rbp), %eax	# k, tmp90
	cltq
	leaq	-3(%rax), %rdx	#, D.3825
	movq	-16424(%rbp), %rax	# file, tmp91
	addq	%rdx, %rax	# D.3825, D.3826
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.3826,
	call	strcmp	#
	testl	%eax, %eax	# D.3827
	jne	.L4	#,
.L5:
	.loc 1 91 0
	movq	-16440(%rbp), %rax	# ispipe, tmp92
	movl	$1, (%rax)	#, *ispipe_7(D)
	.loc 1 92 0
	movl	$1, -16416(%rbp)	#, isgz
.L4:
	.loc 1 97 0
	movq	-16440(%rbp), %rax	# ispipe, tmp93
	movl	(%rax), %eax	# *ispipe_7(D), D.3827
	testl	%eax, %eax	# D.3827
	je	.L6	#,
	.loc 1 110 0
	movq	-16432(%rbp), %rax	# mode, tmp94
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	strcmp	#
	testl	%eax, %eax	# D.3827
	jne	.L7	#,
	.loc 1 111 0
	cmpl	$0, -16416(%rbp)	#, isgz
	je	.L8	#,
	.loc 1 112 0
	movq	-16424(%rbp), %rdx	# file, tmp95
	leaq	-16400(%rbp), %rax	#, tmp96
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp96,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L9	#
.L8:
	.loc 1 114 0
	movq	-16424(%rbp), %rdx	# file, tmp97
	leaq	-16400(%rbp), %rax	#, tmp98
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	sprintf	#
.L9:
	.loc 1 116 0
	movq	-16432(%rbp), %rdx	# mode, tmp99
	leaq	-16400(%rbp), %rax	#, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	popen	#
	movq	%rax, -16408(%rbp)	# tmp101, fp
	cmpq	$0, -16408(%rbp)	#, fp
	jne	.L10	#,
	.loc 1 117 0
	movl	$.LC7, %edx	#,
	movl	$117, %esi	#,
	movl	$.LC8, %edi	#,
	call	_E__pr_header	#
	movq	-16432(%rbp), %rdx	# mode, tmp102
	leaq	-16400(%rbp), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__sys_error	#
	.loc 1 118 0
	movl	$0, %eax	#, D.3823
	jmp	.L15	#
.L7:
	.loc 1 120 0
	movq	-16432(%rbp), %rax	# mode, tmp104
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	strcmp	#
	testl	%eax, %eax	# D.3827
	jne	.L12	#,
	.loc 1 121 0
	cmpl	$0, -16416(%rbp)	#, isgz
	je	.L13	#,
	.loc 1 122 0
	movq	-16424(%rbp), %rdx	# file, tmp105
	leaq	-16400(%rbp), %rax	#, tmp106
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L14	#
.L13:
	.loc 1 124 0
	movq	-16424(%rbp), %rdx	# file, tmp107
	leaq	-16400(%rbp), %rax	#, tmp108
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	sprintf	#
.L14:
	.loc 1 126 0
	movq	-16432(%rbp), %rdx	# mode, tmp109
	leaq	-16400(%rbp), %rax	#, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	popen	#
	movq	%rax, -16408(%rbp)	# tmp111, fp
	cmpq	$0, -16408(%rbp)	#, fp
	jne	.L10	#,
	.loc 1 127 0
	movl	$.LC7, %edx	#,
	movl	$127, %esi	#,
	movl	$.LC8, %edi	#,
	call	_E__pr_header	#
	movq	-16432(%rbp), %rdx	# mode, tmp112
	leaq	-16400(%rbp), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__sys_error	#
	.loc 1 128 0
	movl	$0, %eax	#, D.3823
	jmp	.L15	#
.L12:
	.loc 1 131 0
	movl	$.LC13, %edx	#,
	movl	$131, %esi	#,
	movl	$.LC8, %edi	#,
	call	_E__pr_header	#
	movq	-16432(%rbp), %rax	# mode, tmp114
	movq	%rax, %rsi	# tmp114,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 132 0
	movl	$0, %eax	#, D.3823
	jmp	.L15	#
.L6:
	.loc 1 136 0
	movq	-16432(%rbp), %rdx	# mode, tmp115
	movq	-16424(%rbp), %rax	# file, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	fopen	#
	movq	%rax, -16408(%rbp)	# tmp117, fp
.L10:
	.loc 1 139 0
	movq	-16408(%rbp), %rax	# fp, D.3823
.L15:
	.loc 1 140 0
	movq	-8(%rbp), %rcx	# D.3828, tmp120
	xorq	%fs:40, %rcx	#, tmp120
	je	.L16	#,
	call	__stack_chk_fail	#
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fopen_comp, .-fopen_comp
	.globl	fclose_comp
	.type	fclose_comp, @function
fclose_comp:
.LFB3:
	.loc 1 144 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movl	%esi, -12(%rbp)	# ispipe, ispipe
	.loc 1 145 0
	cmpl	$0, -12(%rbp)	#, ispipe
	je	.L18	#,
	.loc 1 149 0
	movq	-8(%rbp), %rax	# fp, tmp59
	movq	%rax, %rdi	# tmp59,
	call	pclose	#
	jmp	.L17	#
.L18:
	.loc 1 152 0
	movq	-8(%rbp), %rax	# fp, tmp60
	movq	%rax, %rdi	# tmp60,
	call	fclose	#
.L17:
	.loc 1 153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fclose_comp, .-fclose_comp
	.section	.rodata
.LC15:
	.string	"stat(%s) failed\n"
.LC16:
	.string	"WARNING"
.LC17:
	.string	"Using %s instead of %s\n"
	.text
	.globl	fopen_compchk
	.type	fopen_compchk, @function
fopen_compchk:
.LFB4:
	.loc 1 157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16576, %rsp	#,
	movq	%rdi, -16568(%rbp)	# file, file
	movq	%rsi, -16576(%rbp)	# ispipe, ispipe
	.loc 1 157 0
	movq	%fs:40, %rax	#, tmp126
	movq	%rax, -8(%rbp)	# tmp126, D.3851
	xorl	%eax, %eax	# tmp126
	.loc 1 162 0
	movq	-16568(%rbp), %rax	# file, tmp89
	movq	%rax, %rdi	# tmp89,
	call	strlen	#
	movl	%eax, -16548(%rbp)	# D.3847, k
	.loc 1 169 0
	movq	-16576(%rbp), %rax	# ispipe, tmp90
	movl	$0, (%rax)	#, *ispipe_6(D)
	.loc 1 170 0
	movl	$0, -16552(%rbp)	#, isgz
	.loc 1 171 0
	cmpl	$2, -16548(%rbp)	#, k
	jle	.L21	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	movl	-16548(%rbp), %eax	# k, tmp91
	cltq
	leaq	-2(%rax), %rdx	#, D.3848
	movq	-16568(%rbp), %rax	# file, tmp92
	addq	%rdx, %rax	# D.3848, D.3849
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.3849,
	call	strcmp	#
	testl	%eax, %eax	# D.3850
	je	.L22	#,
	movl	-16548(%rbp), %eax	# k, tmp93
	cltq
	leaq	-2(%rax), %rdx	#, D.3848
	movq	-16568(%rbp), %rax	# file, tmp94
	addq	%rdx, %rax	# D.3848, D.3849
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.3849,
	call	strcmp	#
	testl	%eax, %eax	# D.3850
	jne	.L21	#,
.L22:
	.loc 1 172 0 is_stmt 1
	movq	-16576(%rbp), %rax	# ispipe, tmp95
	movl	$1, (%rax)	#, *ispipe_6(D)
	jmp	.L23	#
.L21:
	.loc 1 174 0
	cmpl	$3, -16548(%rbp)	#, k
	jle	.L23	#,
	.loc 1 175 0 discriminator 1
	movl	-16548(%rbp), %eax	# k, tmp96
	cltq
	leaq	-3(%rax), %rdx	#, D.3848
	movq	-16568(%rbp), %rax	# file, tmp97
	addq	%rdx, %rax	# D.3848, D.3849
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.3849,
	call	strcmp	#
	.loc 1 174 0 discriminator 1
	testl	%eax, %eax	# D.3850
	je	.L24	#,
	.loc 1 175 0
	movl	-16548(%rbp), %eax	# k, tmp98
	cltq
	leaq	-3(%rax), %rdx	#, D.3848
	movq	-16568(%rbp), %rax	# file, tmp99
	addq	%rdx, %rax	# D.3848, D.3849
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# D.3849,
	call	strcmp	#
	testl	%eax, %eax	# D.3850
	jne	.L23	#,
.L24:
	.loc 1 176 0
	movq	-16576(%rbp), %rax	# ispipe, tmp100
	movl	$1, (%rax)	#, *ispipe_6(D)
	.loc 1 177 0
	movl	$1, -16552(%rbp)	#, isgz
.L23:
	.loc 1 182 0
	movq	-16568(%rbp), %rdx	# file, tmp101
	leaq	-16400(%rbp), %rax	#, tmp102
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	strcpy	#
	.loc 1 183 0
	leaq	-16544(%rbp), %rdx	#, tmp103
	leaq	-16400(%rbp), %rax	#, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	stat	#
	testl	%eax, %eax	# D.3850
	je	.L25	#,
	.loc 1 185 0
	movl	$.LC7, %edx	#,
	movl	$185, %esi	#,
	movl	$.LC8, %edi	#,
	call	_E__pr_header	#
	leaq	-16400(%rbp), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__sys_error	#
	.loc 1 187 0
	movq	-16576(%rbp), %rax	# ispipe, tmp106
	movl	(%rax), %eax	# *ispipe_6(D), D.3850
	testl	%eax, %eax	# D.3850
	je	.L26	#,
	.loc 1 188 0
	cmpl	$0, -16552(%rbp)	#, isgz
	je	.L27	#,
	.loc 1 189 0
	movl	-16548(%rbp), %eax	# k, tmp107
	subl	$3, %eax	#, D.3850
	cltq
	movb	$0, -16400(%rbp,%rax)	#, tmpfile
	jmp	.L28	#
.L27:
	.loc 1 191 0
	movl	-16548(%rbp), %eax	# k, tmp109
	subl	$2, %eax	#, D.3850
	cltq
	movb	$0, -16400(%rbp,%rax)	#, tmpfile
.L28:
	.loc 1 193 0
	leaq	-16544(%rbp), %rdx	#, tmp111
	leaq	-16400(%rbp), %rax	#, tmp112
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	stat	#
	testl	%eax, %eax	# D.3850
	je	.L29	#,
	.loc 1 194 0
	movl	$0, %eax	#, D.3846
	jmp	.L31	#
.L26:
	.loc 1 196 0
	movl	-16548(%rbp), %eax	# k, tmp113
	cltq
	leaq	-16400(%rbp), %rdx	#, tmp114
	addq	%rdx, %rax	# tmp114, D.3849
	movl	$8021806, (%rax)	#, MEM[(void *)_32]
	.loc 1 197 0
	leaq	-16544(%rbp), %rdx	#, tmp115
	leaq	-16400(%rbp), %rax	#, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	stat	#
	testl	%eax, %eax	# D.3850
	je	.L29	#,
	.loc 1 199 0
	movl	-16548(%rbp), %eax	# k, tmp117
	cltq
	leaq	-16400(%rbp), %rdx	#, tmp118
	addq	%rdx, %rax	# tmp118, D.3849
	movw	$23086, (%rax)	#, MEM[(void *)_35]
	movb	$0, 2(%rax)	#, MEM[(void *)_35]
	.loc 1 200 0
	leaq	-16544(%rbp), %rdx	#, tmp119
	leaq	-16400(%rbp), %rax	#, tmp120
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	stat	#
	testl	%eax, %eax	# D.3850
	je	.L29	#,
	.loc 1 201 0
	movl	$0, %eax	#, D.3846
	jmp	.L31	#
.L29:
	.loc 1 208 0
	movl	$.LC16, %edx	#,
	movl	$208, %esi	#,
	movl	$.LC8, %edi	#,
	call	_E__pr_header	#
	movq	-16568(%rbp), %rdx	# file, tmp121
	leaq	-16400(%rbp), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L25:
	.loc 1 211 0
	movq	-16576(%rbp), %rdx	# ispipe, tmp123
	leaq	-16400(%rbp), %rax	#, tmp124
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	fopen_comp	#
.L31:
	.loc 1 212 0
	movq	-8(%rbp), %rcx	# D.3851, tmp127
	xorq	%fs:40, %rcx	#, tmp127
	je	.L32	#,
	call	__stack_chk_fail	#
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fopen_compchk, .-fopen_compchk
	.section	.rodata
.LC18:
	.string	"fread() failed; retrying...\n"
	.text
	.globl	fread_retry
	.type	fread_retry, @function
fread_retry:
.LFB5:
	.loc 1 218 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pointer, pointer
	movl	%esi, -44(%rbp)	# size, size
	movl	%edx, -48(%rbp)	# num_items, num_items
	movq	%rcx, -56(%rbp)	# stream, stream
	.loc 1 225 0
	movl	$60, -20(%rbp)	#, n_retry_rem
	.loc 1 227 0
	movq	-40(%rbp), %rax	# pointer, tmp70
	movq	%rax, -8(%rbp)	# tmp70, data
	.loc 1 228 0
	movl	$0, -16(%rbp)	#, loc
	.loc 1 229 0
	movl	-48(%rbp), %eax	# num_items, tmp71
	movl	%eax, -24(%rbp)	# tmp71, n_items_rem
.L38:
	.loc 1 232 0
	movl	-24(%rbp), %edx	# n_items_rem, D.3856
	movl	-44(%rbp), %eax	# size, tmp72
	cltq
	movl	-16(%rbp), %ecx	# loc, tmp73
	movslq	%ecx, %rsi	# tmp73, D.3857
	movq	-8(%rbp), %rcx	# data, tmp74
	leaq	(%rsi,%rcx), %rdi	#, D.3858
	movq	-56(%rbp), %rcx	# stream, tmp75
	movq	%rax, %rsi	# D.3856,
	call	fread	#
	movl	%eax, -12(%rbp)	# D.3856, n_items_read
	.loc 1 234 0
	movl	-12(%rbp), %eax	# n_items_read, tmp76
	subl	%eax, -24(%rbp)	# tmp76, n_items_rem
	.loc 1 236 0
	cmpl	$0, -24(%rbp)	#, n_items_rem
	je	.L34	#,
	.loc 1 239 0
	cmpl	$0, -20(%rbp)	#, n_retry_rem
	jne	.L35	#,
	.loc 1 240 0
	movl	$-1, %eax	#, D.3855
	jmp	.L36	#
.L35:
	.loc 1 242 0
	cmpl	$60, -20(%rbp)	#, n_retry_rem
	jne	.L37	#,
	.loc 1 243 0
	movl	$.LC7, %edx	#,
	movl	$243, %esi	#,
	movl	$.LC8, %edi	#,
	call	_E__pr_header	#
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__sys_error	#
.L37:
	.loc 1 246 0
	subl	$1, -20(%rbp)	#, n_retry_rem
	.loc 1 248 0
	movl	-44(%rbp), %eax	# size, size.0
	imull	-12(%rbp), %eax	# n_items_read, D.3859
	movl	%eax, %edx	# D.3859, D.3859
	movl	-16(%rbp), %eax	# loc, loc.1
	addl	%edx, %eax	# D.3859, D.3859
	movl	%eax, -16(%rbp)	# D.3859, loc
	.loc 1 250 0
	movl	$1, %edi	#,
	call	sleep	#
.L34:
	.loc 1 253 0
	cmpl	$0, -24(%rbp)	#, n_items_rem
	jne	.L38	#,
	.loc 1 255 0
	movl	-48(%rbp), %eax	# num_items, D.3855
.L36:
	.loc 1 256 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fread_retry, .-fread_retry
	.section	.rodata
.LC19:
	.string	"stat(%s) failed; retrying...\n"
	.text
	.globl	stat_retry
	.type	stat_retry, @function
stat_retry:
.LFB6:
	.loc 1 262 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movq	%rsi, -32(%rbp)	# statbuf, statbuf
	.loc 1 265 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L40	#
.L44:
	.loc 1 266 0
	movq	-32(%rbp), %rdx	# statbuf, tmp62
	movq	-24(%rbp), %rax	# file, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	stat	#
	testl	%eax, %eax	# D.3862
	jne	.L41	#,
	.loc 1 267 0
	movl	$0, %eax	#, D.3861
	jmp	.L42	#
.L41:
	.loc 1 269 0
	cmpl	$0, -4(%rbp)	#, i
	jne	.L43	#,
	.loc 1 270 0
	movl	$.LC7, %edx	#,
	movl	$270, %esi	#,
	movl	$.LC8, %edi	#,
	call	_E__pr_header	#
	movq	-24(%rbp), %rax	# file, tmp64
	movq	%rax, %rsi	# tmp64,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__sys_error	#
.L43:
	.loc 1 273 0
	movl	$10, %edi	#,
	call	sleep	#
	.loc 1 265 0
	addl	$1, -4(%rbp)	#, i
.L40:
	.loc 1 265 0 is_stmt 0 discriminator 1
	cmpl	$9, -4(%rbp)	#, i
	jle	.L44	#,
	.loc 1 277 0 is_stmt 1
	movl	$-1, %eax	#, D.3861
.L42:
	.loc 1 278 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	stat_retry, .-stat_retry
	.globl	stat_mtime
	.type	stat_mtime, @function
stat_mtime:
.LFB7:
	.loc 1 282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -152(%rbp)	# file, file
	.loc 1 285 0
	leaq	-144(%rbp), %rdx	#, tmp63
	movq	-152(%rbp), %rax	# file, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	stat	#
	testl	%eax, %eax	# D.3865
	je	.L46	#,
	.loc 1 286 0
	movl	$-1, %eax	#, D.3864
	jmp	.L48	#
.L46:
	.loc 1 288 0
	movq	-56(%rbp), %rax	# statbuf.st_mtim.tv_sec, D.3866
.L48:
	.loc 1 289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	stat_mtime, .-stat_mtime
	.section	.rodata
	.align 8
.LC20:
	.string	"FATAL_ERROR: \"%s\", line %d: fopen(%s,%s) failed; "
.LC21:
	.string	""
	.text
	.globl	_myfopen
	.type	_myfopen, @function
_myfopen:
.LFB8:
	.loc 1 293 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movq	%rsi, -32(%rbp)	# mode, mode
	movq	%rdx, -40(%rbp)	# pgm, pgm
	movl	%ecx, -44(%rbp)	# line, line
	.loc 1 296 0
	movq	-32(%rbp), %rdx	# mode, tmp66
	movq	-24(%rbp), %rax	# file, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	fopen	#
	movq	%rax, -8(%rbp)	# tmp68, fp
	cmpq	$0, -8(%rbp)	#, fp
	jne	.L50	#,
	.loc 1 297 0
	movq	stdout(%rip), %rax	# stdout, stdout.2
	movq	%rax, %rdi	# stdout.2,
	call	fflush	#
	.loc 1 298 0
	movq	stderr(%rip), %rax	# stderr, stderr.3
	movq	-32(%rbp), %rdi	# mode, tmp69
	movq	-24(%rbp), %rsi	# file, tmp70
	movl	-44(%rbp), %ecx	# line, tmp71
	movq	-40(%rbp), %rdx	# pgm, tmp72
	movq	%rdi, %r9	# tmp69,
	movq	%rsi, %r8	# tmp70,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# stderr.3,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 300 0
	movl	$.LC21, %edi	#,
	call	perror	#
	.loc 1 301 0
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movq	%rax, %rdi	# stderr.4,
	call	fflush	#
	.loc 1 303 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_9, D.3868
	movl	%eax, %edi	# D.3868,
	call	exit	#
.L50:
	.loc 1 306 0
	movq	-8(%rbp), %rax	# fp, D.3869
	.loc 1 307 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	_myfopen, .-_myfopen
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 8 "libutil/prim_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x745
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF106
	.byte	0x1
	.long	.LASF107
	.long	.LASF108
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
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
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x85
	.long	0x38
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x86
	.long	0x4d
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x87
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x88
	.long	0x38
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x8a
	.long	0x4d
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x8b
	.long	0x38
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x94
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF18
	.byte	0x3
	.byte	0xa2
	.long	0x69
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3
	.byte	0xa7
	.long	0x69
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.byte	0xb8
	.long	0x69
	.uleb128 0x6
	.byte	0x8
	.long	0x103
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0x30
	.long	0x115
	.uleb128 0x7
	.long	.LASF52
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x296
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.byte	0xfc
	.long	0xfd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.byte	0xfd
	.long	0xfd
	.byte	0x10
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
	.byte	0xfe
	.long	0xfd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.byte	0xff
	.long	0xfd
	.byte	0x20
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x100
	.long	0xfd
	.byte	0x28
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x101
	.long	0xfd
	.byte	0x30
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x102
	.long	0xfd
	.byte	0x38
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x103
	.long	0xfd
	.byte	0x40
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x105
	.long	0xfd
	.byte	0x48
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x106
	.long	0xfd
	.byte	0x50
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x107
	.long	0xfd
	.byte	0x58
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x109
	.long	0x2ce
	.byte	0x60
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x10b
	.long	0x2d4
	.byte	0x68
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x113
	.long	0xb2
	.byte	0x78
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x119
	.long	0x2da
	.byte	0x83
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x11d
	.long	0x2ea
	.byte	0x88
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.value	0x126
	.long	0xbd
	.byte	0x90
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.value	0x12f
	.long	0xda
	.byte	0x98
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.value	0x130
	.long	0xda
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x5
	.value	0x131
	.long	0xda
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF48
	.byte	0x5
	.value	0x132
	.long	0xda
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF50
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x5
	.value	0x137
	.long	0x2f0
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF109
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF53
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x2ce
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0xa2
	.long	0x2ce
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0xa3
	.long	0x2d4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29d
	.uleb128 0x6
	.byte	0x8
	.long	0x115
	.uleb128 0xb
	.long	0x103
	.long	0x2ea
	.uleb128 0xc
	.long	0xc8
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x296
	.uleb128 0xb
	.long	0x103
	.long	0x300
	.uleb128 0xc
	.long	0xc8
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF57
	.uleb128 0x7
	.long	.LASF58
	.byte	0x10
	.byte	0x6
	.byte	0x78
	.long	0x32c
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x7a
	.long	0xcf
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x7b
	.long	0xf2
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF61
	.uleb128 0x7
	.long	.LASF62
	.byte	0x90
	.byte	0x7
	.byte	0x2e
	.long	0x3f4
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x30
	.long	0x70
	.byte	0
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x35
	.long	0x91
	.byte	0x8
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x3d
	.long	0xa7
	.byte	0x10
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x3e
	.long	0x9c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.byte	0x40
	.long	0x7b
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF68
	.byte	0x7
	.byte	0x41
	.long	0x86
	.byte	0x20
	.uleb128 0x8
	.long	.LASF69
	.byte	0x7
	.byte	0x43
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF70
	.byte	0x7
	.byte	0x45
	.long	0x70
	.byte	0x28
	.uleb128 0x8
	.long	.LASF71
	.byte	0x7
	.byte	0x4a
	.long	0xb2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF72
	.byte	0x7
	.byte	0x4e
	.long	0xdc
	.byte	0x38
	.uleb128 0x8
	.long	.LASF73
	.byte	0x7
	.byte	0x50
	.long	0xe7
	.byte	0x40
	.uleb128 0x8
	.long	.LASF74
	.byte	0x7
	.byte	0x5b
	.long	0x307
	.byte	0x48
	.uleb128 0x8
	.long	.LASF75
	.byte	0x7
	.byte	0x5c
	.long	0x307
	.byte	0x58
	.uleb128 0x8
	.long	.LASF76
	.byte	0x7
	.byte	0x5d
	.long	0x307
	.byte	0x68
	.uleb128 0x8
	.long	.LASF77
	.byte	0x7
	.byte	0x6a
	.long	0x3f4
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.long	0xf2
	.long	0x404
	.uleb128 0xc
	.long	0xc8
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x8
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF79
	.byte	0x8
	.byte	0x42
	.long	0x4d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF80
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF81
	.uleb128 0xd
	.long	.LASF87
	.byte	0x1
	.byte	0x47
	.long	0x4b7
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b7
	.uleb128 0xe
	.long	.LASF82
	.byte	0x1
	.byte	0x47
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16440
	.uleb128 0xe
	.long	.LASF83
	.byte	0x1
	.byte	0x47
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.uleb128 0xe
	.long	.LASF84
	.byte	0x1
	.byte	0x47
	.long	0x4bd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.uleb128 0xf
	.long	.LASF85
	.byte	0x1
	.byte	0x49
	.long	0x4c3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16416
	.uleb128 0x10
	.string	"fp"
	.byte	0x1
	.byte	0x4a
	.long	0x4b7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16424
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x4b
	.long	0x404
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16428
	.uleb128 0xf
	.long	.LASF86
	.byte	0x1
	.byte	0x4b
	.long	0x404
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10a
	.uleb128 0x6
	.byte	0x8
	.long	0x404
	.uleb128 0xb
	.long	0x103
	.long	0x4d4
	.uleb128 0x11
	.long	0xc8
	.value	0x3fff
	.byte	0
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1
	.byte	0x8f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x50d
	.uleb128 0x13
	.string	"fp"
	.byte	0x1
	.byte	0x8f
	.long	0x4b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF84
	.byte	0x1
	.byte	0x8f
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	.LASF88
	.byte	0x1
	.byte	0x9c
	.long	0x4b7
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x58d
	.uleb128 0xe
	.long	.LASF82
	.byte	0x1
	.byte	0x9c
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16584
	.uleb128 0xe
	.long	.LASF84
	.byte	0x1
	.byte	0x9c
	.long	0x4bd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16592
	.uleb128 0xf
	.long	.LASF89
	.byte	0x1
	.byte	0x9e
	.long	0x4c3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16416
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x9f
	.long	0x404
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16564
	.uleb128 0xf
	.long	.LASF86
	.byte	0x1
	.byte	0x9f
	.long	0x404
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16568
	.uleb128 0xf
	.long	.LASF90
	.byte	0x1
	.byte	0xa0
	.long	0x333
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16560
	.byte	0
	.uleb128 0xd
	.long	.LASF91
	.byte	0x1
	.byte	0xd9
	.long	0x404
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x62e
	.uleb128 0xe
	.long	.LASF92
	.byte	0x1
	.byte	0xd9
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF93
	.byte	0x1
	.byte	0xd9
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.long	.LASF94
	.byte	0x1
	.byte	0xd9
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.long	.LASF95
	.byte	0x1
	.byte	0xd9
	.long	0x4b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF96
	.byte	0x1
	.byte	0xdb
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF97
	.byte	0x1
	.byte	0xdc
	.long	0x40f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.long	.LASF98
	.byte	0x1
	.byte	0xdd
	.long	0x40f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF99
	.byte	0x1
	.byte	0xde
	.long	0x40f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"loc"
	.byte	0x1
	.byte	0xdf
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	.LASF100
	.byte	0x1
	.value	0x105
	.long	0x404
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x67c
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.value	0x105
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF90
	.byte	0x1
	.value	0x105
	.long	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.value	0x107
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x333
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.value	0x119
	.long	0x404
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c5
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.value	0x119
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.value	0x11b
	.long	0x333
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x14
	.long	.LASF102
	.byte	0x1
	.value	0x124
	.long	0x4b7
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x732
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.value	0x124
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF83
	.byte	0x1
	.value	0x124
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"pgm"
	.byte	0x1
	.value	0x124
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF103
	.byte	0x1
	.value	0x124
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.value	0x126
	.long	0x4b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF104
	.byte	0x4
	.byte	0xa9
	.long	0x2d4
	.uleb128 0x19
	.long	.LASF105
	.byte	0x4
	.byte	0xaa
	.long	0x2d4
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
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
.LASF70:
	.string	"st_rdev"
.LASF77:
	.string	"__unused"
.LASF80:
	.string	"float"
.LASF41:
	.string	"_vtable_offset"
.LASF71:
	.string	"st_size"
.LASF81:
	.string	"double"
.LASF52:
	.string	"_IO_FILE"
.LASF59:
	.string	"tv_sec"
.LASF76:
	.string	"st_ctim"
.LASF34:
	.string	"_IO_save_end"
.LASF12:
	.string	"__mode_t"
.LASF7:
	.string	"size_t"
.LASF102:
	.string	"_myfopen"
.LASF44:
	.string	"_offset"
.LASF16:
	.string	"sizetype"
.LASF28:
	.string	"_IO_write_ptr"
.LASF23:
	.string	"_flags"
.LASF96:
	.string	"data"
.LASF83:
	.string	"mode"
.LASF63:
	.string	"st_dev"
.LASF30:
	.string	"_IO_buf_base"
.LASF82:
	.string	"file"
.LASF5:
	.string	"short int"
.LASF35:
	.string	"_markers"
.LASF25:
	.string	"_IO_read_end"
.LASF49:
	.string	"__pad5"
.LASF103:
	.string	"line"
.LASF72:
	.string	"st_blksize"
.LASF105:
	.string	"stderr"
.LASF53:
	.string	"_IO_marker"
.LASF57:
	.string	"long long int"
.LASF101:
	.string	"stat_mtime"
.LASF90:
	.string	"statbuf"
.LASF100:
	.string	"stat_retry"
.LASF43:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF97:
	.string	"n_items_read"
.LASF13:
	.string	"__nlink_t"
.LASF40:
	.string	"_cur_column"
.LASF56:
	.string	"_pos"
.LASF88:
	.string	"fopen_compchk"
.LASF1:
	.string	"unsigned char"
.LASF69:
	.string	"__pad0"
.LASF39:
	.string	"_old_offset"
.LASF20:
	.string	"__syscall_slong_t"
.LASF64:
	.string	"st_ino"
.LASF94:
	.string	"num_items"
.LASF60:
	.string	"tv_nsec"
.LASF4:
	.string	"signed char"
.LASF86:
	.string	"isgz"
.LASF61:
	.string	"long long unsigned int"
.LASF99:
	.string	"n_retry_rem"
.LASF3:
	.string	"unsigned int"
.LASF65:
	.string	"st_nlink"
.LASF42:
	.string	"_shortbuf"
.LASF66:
	.string	"st_mode"
.LASF15:
	.string	"__off64_t"
.LASF95:
	.string	"stream"
.LASF27:
	.string	"_IO_write_base"
.LASF51:
	.string	"_unused2"
.LASF24:
	.string	"_IO_read_ptr"
.LASF18:
	.string	"__blksize_t"
.LASF84:
	.string	"ispipe"
.LASF31:
	.string	"_IO_buf_end"
.LASF21:
	.string	"char"
.LASF89:
	.string	"tmpfile"
.LASF54:
	.string	"_next"
.LASF45:
	.string	"__pad1"
.LASF46:
	.string	"__pad2"
.LASF47:
	.string	"__pad3"
.LASF48:
	.string	"__pad4"
.LASF73:
	.string	"st_blocks"
.LASF107:
	.string	"io.c"
.LASF11:
	.string	"__ino_t"
.LASF74:
	.string	"st_atim"
.LASF67:
	.string	"st_uid"
.LASF2:
	.string	"short unsigned int"
.LASF79:
	.string	"uint32"
.LASF110:
	.string	"fclose_comp"
.LASF0:
	.string	"long unsigned int"
.LASF78:
	.string	"int32"
.LASF29:
	.string	"_IO_write_end"
.LASF17:
	.string	"__time_t"
.LASF98:
	.string	"n_items_rem"
.LASF37:
	.string	"_fileno"
.LASF36:
	.string	"_chain"
.LASF93:
	.string	"size"
.LASF14:
	.string	"__off_t"
.LASF108:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF8:
	.string	"__dev_t"
.LASF33:
	.string	"_IO_backup_base"
.LASF92:
	.string	"pointer"
.LASF38:
	.string	"_flags2"
.LASF50:
	.string	"_mode"
.LASF26:
	.string	"_IO_read_base"
.LASF91:
	.string	"fread_retry"
.LASF75:
	.string	"st_mtim"
.LASF58:
	.string	"timespec"
.LASF9:
	.string	"__uid_t"
.LASF87:
	.string	"fopen_comp"
.LASF32:
	.string	"_IO_save_base"
.LASF68:
	.string	"st_gid"
.LASF62:
	.string	"stat"
.LASF22:
	.string	"FILE"
.LASF55:
	.string	"_sbuf"
.LASF106:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF19:
	.string	"__blkcnt_t"
.LASF85:
	.string	"command"
.LASF104:
	.string	"stdout"
.LASF109:
	.string	"_IO_lock_t"
.LASF10:
	.string	"__gid_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
